<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログアウト画面</title>
</head>
<body>
<h1><%= session.getAttribute("name") %>さんログアウトしますか?</h1>
<form action="menu" method="post">
<input type ="submit" value="戻る">
</form>
<form action="logout" method="post">
<input type ="submit" value="ログアウト">
</body>
</html>