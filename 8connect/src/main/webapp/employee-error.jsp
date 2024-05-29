<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員エラー画面</title>
</head>
<body>
<main>
	<%@ include file="header.jsp"%>
	
	<h2>処理に失敗しました</h2>
	<form action="employee-list" method="post">
	<div class="com">
		<input type ="submit" value="従業員一覧へ戻る" class="back-button">
	</div>
	</form>
</main>
</body>
</html>