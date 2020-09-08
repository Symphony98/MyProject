<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:OPTIONS,POST,GET');
header('Access-Control-Allow-Headers:Content-Type,Content-Length,Accept-Encoding,X-Requested-with, Origin');
header('Access-Control-Expose-Headers:Content-Length,Content-Range');
// 这个id是商品自带的id
	$product_id = $_POST["product_id"];
	$product_name = $_POST["product_name"];
	$product_price = $_POST["product_price"];
	$product_num = $_POST["product_num"];
	$product_img_path = $_POST["product_img_path"];
    $product_category = $_POST["product_category"];
    $product_number= $_POST["product_number"];

	$db = new mysqli("127.0.0.1","root","root","products");
// 插入到数据库的id也是商品自带的id
	$sql = "INSERT INTO shopping_cart(product_id,product_name,product_price,product_num,product_img_path,product_category,product_number) VALUES(${product_id},'{$product_name}',$product_price,${product_num},'${product_img_path}','${product_category}',$product_number)";

	$flag = $db->query($sql);

	if( $flag ){
		echo '{"ok":true}';
	}else{
		echo '{"ok":false}';
	}
?>