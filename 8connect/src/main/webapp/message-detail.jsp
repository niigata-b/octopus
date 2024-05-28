<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板詳細画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	
	<main>
	
	<% String loginCode = (String) session.getAttribute("code");
	   String detailCode = (String) request.getAttribute("code");
	   System.out.println(loginCode);
	   System.out.println(detailCode);%>
	<% if (loginCode.equals(detailCode)) { %>
		<form action="message-delete-check" method="POST">
			<input type="submit" value="削除">
		</form>
	<% } %>
		<% MessageBean message = (MessageBean) session.getAttribute("message"); %>
		<% session.setAttribute("message", message); %>
		
		<%= message.getPostDatetime() %><br>
		<%= message.getTitle() %><br><br>
		<%= message.getMessageText() %><br>
		<%= message.getName() %><br>
		<% System.out.println("詳細jsp：" + message.getPostDatetime()); %>
		
		<form action="message-list" method="POST">
			<div class="back">
			<input type="submit" value="戻る">
			</div>
		</form>
	</main>
</body>
</html>