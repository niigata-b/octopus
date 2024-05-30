<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>掲示板詳細画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	
	<main>
	
	
	
	<div class="message-field">
	
	<% String loginCode = (String) session.getAttribute("code");
	   String detailCode = (String) request.getAttribute("code");
	   System.out.println(loginCode);
	   System.out.println(detailCode);%>
	
		<% MessageBean message = (MessageBean) session.getAttribute("message"); %>
		<% session.setAttribute("message", message); %>
		
		<span id="postdate"><%= message.getPostDatetime() %></span><br>
		<span id="title"><%= message.getTitle() %></span><br>
		<span id="message-text"><%= message.getMessageText() %></span><br>
		<span id="message-name"><%= message.getName() %></span><br>
		<% System.out.println("詳細jsp：" + message.getPostDatetime()); %>
	
	</div>
	
	<% if (loginCode.equals(detailCode)) { %>
	<div class="message-delete">
		<form action="message-delete-check" method="POST">
		
			<input type="submit" value="削除" class="delete-button">
		
		</form>
	</div>
	<% } %>
		<form action="message-list" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>