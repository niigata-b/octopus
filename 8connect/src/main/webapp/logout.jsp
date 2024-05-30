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
	<div class="logout-field">
		<h2><%= session.getAttribute("name") %>さんログアウトしますか?</h2>
	
		
		<form action="logout" method="post">
		<div id="logout">
		<input type ="submit" value="ログアウト" class="login-button">
	</div>
	</div>
	<form action="menu" method="post">
		<div class="back">
			<input type="submit" value="戻る" class="back-button">
		</div>
	</form>
</body>
</html>