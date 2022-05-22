<?php
include 'common.php';

$db = connectDb();

define("TBL_QUESTIONS", "questions");
define("TBL_FIELDS", "fields");
define("TBL_ANSWERS", "answers");


$question_id = 1; // 質問ID（ページIDとして使用）
// $question_id = "";
// if ($_SERVER['REQUEST_METHOD'] == 'GET') {
//     if(isset($_GET["page"]) && $_GET["page"] !== ""){
//         $question_id = $_GET["page"]; // 質問ID（ページIDとして使用）
//     }
// }
// if($question_id == ""){
//     echo "ページIDが指定されていません。";
//     echo "</br>";
//     echo "（例：/form.php?page=1）";
//     exit;
// }

// 質問レコード取得
$where    = " WHERE ". TBL_QUESTIONS. ".id = {$question_id}";
$sql      = "SELECT * FROM ". TBL_QUESTIONS. $where;
$question = $db->query($sql)->fetchArray();
$question_id    = $question["id"];
$question_title = $question["title"];

// フィールドレコード取得
$where  = " WHERE ". TBL_FIELDS. ".question_id = {$question_id}";
$order  = " ORDER BY ". TBL_FIELDS. ".num ASC, ". TBL_FIELDS. ".id ASC";
$sql    = "SELECT * FROM ". TBL_FIELDS. " {$where} {$order}";
$fields = $db->query($sql)->fetchAll();

// hidden
$hidden = array();
$hidden["default_value"] = $question_id;
$hidden["type"]          = "hidden";
$hidden["name"]          = "question_id";
$fields[] = $hidden;

// 回答フォームのタグ情報
$form_tags = getFieldElements($fields);

// 登録処理
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $req = $_POST;

    if(isset($req["question_id"]) && $req["question_id"] !== ""){
        $question_id = (int)$req["question_id"];
    }

    // トランザクション開始
    $db->bg_transaction();

try {
    
    // 既存回答を削除
    $u_q = "UPDATE ". TBL_ANSWERS. " SET del_flg = (?) WHERE ". TBL_ANSWERS. ".question_id = {$question_id}";
    $params = array(1);
    $update = $db->query($u_q, $params);

    // throw new Exception("テスト！！");//Exceptionオブジェクトを投げる

    foreach($req as $name => $value){

        // 除外項目はスキップ
        if(checkSkipVal($name) !== FALSE){ continue; }

        // フィールドテーブルIDを取得
        $sql = "SELECT * FROM ". TBL_FIELDS. " WHERE ". TBL_FIELDS. ".question_id = {$question_id} AND ". TBL_FIELDS. ".name = '{$name}'";
        $fields = $db->query($sql)->fetchArray();
        $field_id = $fields["id"];

        // 回答情報を登録
        $i_q = "INSERT INTO ". TBL_ANSWERS. " (question_id,field_id,name,value) VALUES (?,?,?,?)";
        $params = array($question_id, $field_id, $name, $value);
        $insert = $db->query($i_q, $params);
    }

} catch( Exception $e ){
    echo $e->getMessage();//

	// エラーが起きたらロールバック
	$db->bg_rollback();
}

// 正常に終了したらコミット
$db->bg_commit();

}


?>






<html>
<head>
  <meta charset="utf-8">
  <title></title>
</head>
<body>
  <form method="post" action="">

  <h1><?php echo $question_title; ?></h1>

    <?php foreach($form_tags as $k => $element): ?>
    
    <?php echo $element["paragraph"];?>
    <?php echo $element["label"];?>
    <?php echo $element["input"];?>

    <?php endforeach;?>


  </form>
</body>
</html>








<?php



/**
 * フォーム要素を定義
 * 配列形式で返却
 */
function getFieldElements($fields){

    $result = array();

    foreach($fields as $k => $f){

        // 変数定義
        $spin     = $k + 1;
        $type     = isset($f["type"])          ? $f["type"]     : "" ;
        $value    = isset($f["default_value"]) ? $f["default_value"]    : "" ;
        $name     = isset($f["name"])          ? $f["name"]     : "" ;
        $field_id = isset($f["field_id"])      ? $f["field_id"] : "" ;
        $class    = isset($f["class"])         ? $f["class"]    : "" ;
        $option   = isset($f["option"])        ? $f["option"]    : "" ;
        
        $setting = makeSetting($type, $value, $name, $field_id, $class);

        $form_tags = array();

        switch ($type) {
            case 'textarea':
                $input = "<textarea ";
                $input .= $setting;
                $input .= "rows=4 cols=40 ";
                $input .= "></textarea>";
                break;
            
            case 'checkbox':
            case 'radio':
                $input = "";
                foreach(jsonToArray($option) as $k => $val){

                    $update_field_id = "{$field_id}_{$k}";

                    $input .= "<input ";
                    $input .= $setting = makeSetting($type, $val["value"], $name, $update_field_id, $class); // 上書き
                    $input .= (isset($val["checked"]) && $val["checked"] == true) ? "checked" : "" ;
                    $input .= " >";
                    $input .= "<label for={$update_field_id} >". $val["name"]. "</labe>";
                }
                break;
        
            case 'selectbox':
                    $input = "";
                    $input .= "<select name={$name}>";
                    foreach(jsonToArray($option) as $k => $val){
                        $value    = isset($val["value"]) ? $val["value"] : "" ;
                        $name     = isset($val["name"]) ? $val["name"] : "" ;
                        $selected = (isset($val["checked"]) && $val["checked"] == true) ? "selected" : "" ;
                        $input .= "<option value={$value} {$selected}>{$name}</option>";
                        $input .= "<label for={$update_field_id} >". $val["name"]. "</labe>";
                    }
                    $input .= "</select>";
                    break;
        
            
            default:
                $input = "<input ";
                $input .= $setting;
                $input .= " >";
                break;
        }
        $form_tags["input"] = $input;


        $text      = isset($f["text"]) ? $f["text"] : "" ;
        $paragraph = "</br>";
        if($text !== ""){
            $paragraph = "<p>Q{$spin}. {$text}</p>";
        }
        $form_tags["paragraph"] = $paragraph;

        $label     = isset($f["label"]) ? $f["label"] : "" ;
        $label_tag = "<label for='{$field_id}' >";
        $label_tag .= $label;
        $label_tag .= "</label>";
        $form_tags["label"] = $label_tag;

        $result[] = $form_tags;

    }

    return $result;

}

/**
 * フォーム設定
 */
function makeSetting($type, $value, $name, $field_id, $class){

    $setting = "";
    $type     != "" ? $setting .= "type={$type} " : "" ;
    $value    != "" ? $setting .= "value={$value} " : "" ;
    $name     != "" ? $setting .= "name={$name} "   : "" ;
    $field_id != "" ? $setting .= "id={$field_id} "    : "" ;
    $class    != "" ? $setting .= "class={$class} " : "" ;
    return $setting;

}




function checkSkipVal($name){
    $un_targets = array(
        "question_id",
        "submit"
    );
    foreach($un_targets as $target){
        if(strpos($name,$target) !== false){
            return TRUE;
        }
    }
    return FALSE;
}





// <p>性別：
// <input type="radio">男性
// <input type="radio">女性
// </p>

?>