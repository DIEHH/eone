<?php
	
	// 获取当前执行动作：add(添加)、update(修改)、search(查找), delete(删除)
	$action = $_GET["action"];

	/* 连接数据库 */
	$conn = mysql_connect("localhost:3306","root","");
	if (!$conn) {
		die ("error : " . mysql_error());
	}

	/* 指定连接的具体数据库名称 */
	mysql_select_db("products", $conn);

	/* 设置向数据库读写数据时的编码 */
	mysql_query("set character set 'utf8'");
	mysql_query("set names 'utf8'");

	if ($action == "add") { /* 保存购物车到数据库 */
		// 获取添加到购物的用户名
		$src = $_GET["src"];
		$name = $_GET["name"];
		$price = $_GET["price"];
		$amount = $_GET["amount"];
		// 构建SQL语句
		$sql = "INSERT INTO cart VALUES(NULL, '$src', '$name', '$price', '$amount')";
		// 执行SQL语句
		$result = mysql_query($sql, $conn);
		if ($result)
			echo '{"status":1, "message":"success"}';
		else 
			echo '{"status":0, "message":"failed"}';
	} else if ($action == "update") { /* 修改购物车商品数量 */
		$pid = $_GET["pid"];
		$name = $_GET["name"];
		$amount = $_GET["amount"];
		$sql = "UPDATE cart SET amount=$amount WHERE prod_id=$pid AND username='$username'";
		// 执行SQL语句
		$result = mysql_query($sql, $conn);
		if ($result)
			echo '{"status":1, "message":"success"}';
		else 
			echo '{"status":0, "message":"failed"}';
	} else if ($action == "delete") { /* 删除购物车商品 */
		$id = $_GET["id"];
		$sql = "DELETE FROM cart WHERE id=$id";
		// 执行SQL语句
		$result = mysql_query($sql, $conn);
		if ($result)
			echo '{"status":1, "message":"success"}';
		else 
			echo '{"status":0, "message":"failed"}';
	} else if ($action == "search") {
		/* 数据查询 */
		$username = $_GET["username"];
		$sql = "SELECT * FROM cart WHERE username = '$username'";
		$result = mysql_query($sql, $conn); // 执行SQL语句，获取查询结果集
		$arr = array();
		while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
			$arr[] = $row; // 将当前行数据保存到数组中
		}

		echo json_encode($arr);
	}

	/* 关闭连接 */
	mysql_close($conn);



?>