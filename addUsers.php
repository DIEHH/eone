<?php
	/* 连接数据库 */
	$conn = mysql_connect("localhost:3306","root","");
	if (!$conn) {
		die ("error : " . mysql_error());
	}

	/* 指定连接的具体数据库名称 */
	mysql_select_db("eone", $conn);

	/* 设置向数据库读写数据时的编码 */
	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");
	/* 保存用户信息到数据库 */
	$nickname = $_POST["nickname"];
	$username = $_POST["username"];
	$password = $_POST["password"];
	$phone = $_POST["phone"];
	$email = $_POST["email"];
	// 构建SQL语句
	$sql = "INSERT INTO user VALUES(NULL, '$nickname', '$username', '$password', '$phone', '$email')";
	// 执行SQL语句
	$result = mysql_query($sql, $conn);
	if ($result)
		echo '{"status":1, "message":"success"}';
	else 
		echo '{"status":0, "message":"failed"}';

		echo json_encode($arr);

	/* 关闭连接 */
	mysql_close($conn);
?>