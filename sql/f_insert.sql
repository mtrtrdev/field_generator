/*
-- Query: SELECT * FROM form_builder.fields
LIMIT 0, 1000

-- Date: 2022-05-22 20:18
*/
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (1,1,'text','お名前は？',1,'a','test_text','test_text_id','text_class','名前',NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (2,1,'number','年齢は？',3,'0','test_number','test_number_id','number_class','年齢',NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (3,1,'phone','電話番号は？',2,'0','test_phone','test_phone_id','phone_class','電話番号',NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (4,1,'email','メールアドレスは？',4,'test@gmail.com','test_email','test_email_id','email_class','メールアドレス',NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (5,1,'submit',NULL,10,'登録します','test_submit','test_submit_id','submit_class',NULL,NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (7,2,'text','名前は？',1,'a','test_text','test_text_id','text_class','名前',NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (8,2,'submit',NULL,5,'登録します','test_submit','test_submit_id','submit_class',NULL,NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (9,1,'textarea','コメント',5,NULL,'test_textarea','test_text_id','textarea_class',NULL,NULL,0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (10,1,'radio','性別は？',6,NULL,'test_radio','test_radio_id','radio_class','性別','[{\"name\":\"男性\",\"value\":\"1\",\"checked\":false},{\"name\":\"女性\",\"value\":\"2\",\"checked\":false},{\"name\":\"その他\",\"value\":\"3\",\"checked\":true}]',0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (11,1,'checkbox','送付先は？',7,NULL,'test_checkbox','test_checkbox_id','chekbox_class','送付先','[{\"name\":\"自宅\",\"value\":\"1\",\"checked\":false},{\"name\":\"勤務先\",\"value\":\"2\",\"checked\":true},{\"name\":\"その他\",\"value\":\"3\",\"checked\":false}]',0);
INSERT INTO `` (`id`,`question_id`,`type`,`text`,`num`,`default_value`,`name`,`field_id`,`class`,`label`,`option`,`require_flg`) VALUES (12,1,'selectbox','血液型は？',8,NULL,'test_select','test_select_id','select_class','血液型','[{\"name\":\"A型\",\"value\":\"1\",\"selected\":false},{\"name\":\"B型\",\"value\":\"2\",\"selected\":false},{\"name\":\"AB型\",\"value\":\"3\",\"selected\":true},{\"name\":\"O型\",\"value\":\"4\",\"selected\":false},{\"name\":\"A型\",\"value\":\"1\",\"selected\":false}]',0);
