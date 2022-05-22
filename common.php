<?php
include 'db.php';

function connectDb (){

    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = 'password';
    $dbname = 'form_builder';
    
    return new db($dbhost, $dbuser, $dbpass, $dbname);

}

function vd($value){
    echo "<pre>";
    var_dump($value);
}

/**
 * string(118) "[{"name":"c_name_zero","value":"check_zero","checked":false},{"name":"c_name_one","value":"check_one","checked":true}]"
 */
function arrayToJson($array){
    return json_encode($array,JSON_UNESCAPED_UNICODE);
}

/**
 * array(2) {
 *   [0]=>
 *   array(3) {
 *     ["name"]=>
 *     string(11) "c_name_zero"
 *     ["value"]=>
 *     string(10) "check_zero"
 *     ["checked"]=>
 *     bool(false)
 *   }
 *   [1]=>
 *   array(3) {
 *     ["name"]=>
 *     string(10) "c_name_one"
 *     ["value"]=>
 *     string(9) "check_one"
 *     ["checked"]=>
 *     bool(true)
 *   }
 * }
 */
function jsonToArray($json){
    return json_decode($json , true);
}




?>