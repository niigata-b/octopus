<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板投稿画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<form action="message-post-check" method="post">
		タイトル<br>
		<input type="text" size="50" name="title" required="required"><br>

		投稿内容<br>
		<textarea name="messageText" cols="50" rows="4" required="required"></textarea><br>
		
		<input type="submit" value="投稿"><br>		
	</form>
	
	<form action="message-list" method="post">
		<input type="submit" value="戻る">
	</form>
</body>
</html>