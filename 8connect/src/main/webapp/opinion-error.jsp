<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>意見箱エラー画面</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main>
	<div class="error">
		<h2>処理に失敗しました</h2>
		<form action="menu" method="post">
		<div class="com">
		<input type ="submit" value="メニューへ戻る"class="back-button">
		</div>
		</div>
	</main>
</form>
</body>
</html>