<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>ログアウト画面</title>
</head>
<body>
<main>
	<h1><%= session.getAttribute("name") %>さんログアウトしますか?</h1>
	<form action="menu" method="post">
		<div class="back">
			<input type="submit" value="戻る">
		</div>
	</form>
	<form action="logout" method="post">
	<input type ="submit" value="ログアウト">
</main>
</body>
</html>