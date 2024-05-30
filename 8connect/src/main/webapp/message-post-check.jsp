<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.entity.MessageBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>投稿確認画面</title>
</head>
<body>
	<main>
	<h2>-- 以下の内容で投稿しますか？ --</h2>
	<div class="message-delete-check">
		
	
		タイトル：<%= session.getAttribute("title") %>
		<br>
		 投稿内容：<%= session.getAttribute("messageText") %>
		 <br>
	</div>
		<form action="message-post-pass" method="POST">
			<div class="check-btn">
				<input type="submit" value="確定" class="normal-button">
			</div>
		</form>
	
		<form action="message-post" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>