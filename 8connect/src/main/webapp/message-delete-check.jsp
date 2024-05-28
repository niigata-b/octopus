<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板削除確認画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h2>以下の内容を削除してもよろしいですか？</h2>
	<form action="message-delete-pass" method="POST">
		<input type="submit" value="確定">
	</form>
	<% MessageBean message = (MessageBean) session.getAttribute("message"); %>
	<% session.setAttribute("message", message); %>
	
	名前：<%= message.getName() %><br>
	タイトル：<%= message.getTitle() %><br>
	掲示板内容：<%= message.getMessageText()%><br>
	
	<% System.out.println("削除jsp：" + message.getPostDatetime()); %>
	
	<form action="message-detail" method="POST">
		<div class="back">
		<input type="submit" value="戻る">
		</div>
	</form>
</body>
</html>