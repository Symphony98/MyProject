<?php	
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:OPTIONS,POST,GET');
header('Access-Control-Allow-Headers:Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin');
header('Access-Control-Expose-Headers:Content-Length,Content-Range');	

$db = new mysqli("127.0.0.1","root","root","products");
// 获取所有的用户信息
$sql = "SELECT * FROM user";

$result = $db->query($sql);

$arr = [];
while( $row = $result->fetch_array(MYSQLI_ASSOC) ){
	array_push($arr,$row);
}
$json = json_encode($arr);
echo $json;
?>