<?php	
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:OPTIONS,POST,GET');
header('Access-Control-Allow-Headers:Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin');
header('Access-Control-Expose-Headers:Content-Length,Content-Range');

$db = new mysqli("127.0.0.1","root","root","products");
// 类别是前端发送过来的category，根据类别在product表中查询相关数据
$product_category = $_GET["product_category"];

$sql = "SELECT * FROM product WHERE product_category='${product_category}'";

$result = $db->query($sql);
// 把相关数据放入数组，返回给前端
$arr = [];
while( $row = $result->fetch_array(MYSQLI_ASSOC) ){
	array_push($arr,$row);
}
$json = json_encode($arr);
echo $json;
?>