<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員完了画面</title>
</head>
<body>
<main>
	<%@ include file="header.jsp"%>
	<h2>処理が完了しました</h2>
	<form action="employee-list" method="post">
	<input type ="submit" value="従業員一覧へ戻る">
</main>
</form>
</body>
</html>