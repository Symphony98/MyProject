<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:OPTIONS,POST,GET');
header('Access-Control-Allow-Headers:Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin');
header('Access-Control-Expose-Headers:Content-Length,Content-Range');
// 用户信息，数据库自动递增id
$user_name = $_POST["user_name"];
$user_pwd = $_POST["user_pwd"];
$user_phone = $_POST["user_phone"];

$db = new mysqli("127.0.0.1","root","root","products");

$sql = "INSERT INTO user(user_name,user_pwd,user_phone) VALUES('{$user_name}','{$user_pwd}','{$user_phone}')";

$flag = $db->query($sql);

if( $flag ){
	echo '{"ok":true}';
}else{
	echo '{"ok":false}';
}
?>