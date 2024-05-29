<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>掲示板投稿画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
		<form action="message-post-check" method="post">
			<span id="requisite">*</span>タイトル（50文字以内）<br>
			<input type="text" size="50" name="title" required="required"><br>
	
			<span id="requisite">*</span>投稿内容（200文字以内）<br>
			<textarea name="messageText" cols="50" rows="4" required="required"></textarea><br>
			
			<input type="submit" value="投稿"><br>		
		</form>
		
		<form action="message-list" method="post">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
	</main>
</body>
</html>