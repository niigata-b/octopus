<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>掲示板削除確認画面</title>
</head>
<body>
	<main>
	
		<h2>-- 以下の内容を削除してもよろしいですか？ --</h2>
	<div class="message-delete-check">	
		<% MessageBean message = (MessageBean) session.getAttribute("message"); %>
		<% session.setAttribute("message", message); %>
		
		<span class="message-bold">名前　　　：</span><%= message.getName() %><br>
		<span class="message-bold">タイトル　：</span><%= message.getTitle() %><br>
		<span class="message-bold">掲示板内容：</span><%= message.getMessageText()%><br>
		
	</div>
		
		<form action="message-delete-pass" method="POST">
			<div class="check-btn">
				<input type="submit" value="確定" class="normal-button">
			</div>
		</form>
		
		<form action="message-detail" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>