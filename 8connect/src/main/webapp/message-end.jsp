<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>掲示板完了画面</title>
</head>
<body>
<main>
	<%@ include file="header.jsp"%>
	<div class="end">
	<h2>処理が完了しました</h2>
	<form action="message-list" method="post">
	<input type ="submit" value="掲示板へ戻る" class="back-button">
	</form>
	</div>
</main>
</body>
</html>