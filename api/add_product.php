<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:OPTIONS,POST,GET');
header('Access-Control-Allow-Headers:Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin');
header('Access-Control-Expose-Headers:Content-Length,Content-Range');
// 创建商品的时候，id是数据库里面自动添加的
	$product_name = $_POST["product_name"];
	$product_price = $_POST["product_price"];
	$product_num = $_POST["product_num"];
	$product_img_path = $_POST["product_img_path"];
	$product_category = $_POST["product_category"];

	$db = new mysqli("127.0.0.1","root","root","products");
// 插入数据库语句
	$sql = "INSERT INTO product(product_name,product_price,product_num,product_img_path,product_category) VALUES('{$product_name}',$product_price,${product_num},'${product_img_path}','${product_category}')";

	$flag = $db->query($sql);

	if( $flag ){
		echo '{"ok":true}';
	}else{
		echo '{"ok":false}';
	}
?>