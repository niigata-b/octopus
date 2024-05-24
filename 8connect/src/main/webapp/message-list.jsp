<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板一覧画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<% List<MessageBean> messageList = (List) request.getAttribute("messageList"); %>
	<h1>掲示板一覧</h1>
	<% for (MessageBean message : messageList) { %>
		<%= message.getName() %>　<%= message.getPostDatetime() %><br>
		<%= message.getTitle() %>
		
	<% } %>
	<a href="menu">メニューに戻る</a>
	<%@ include file="footer.jsp" %>
</body>
</html>