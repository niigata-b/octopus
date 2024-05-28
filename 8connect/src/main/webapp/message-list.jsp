<%@page import="model.entity.MessageBean, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>掲示板一覧画面</title>
 
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
		<% List<MessageBean> messageList = (List) request.getAttribute("messageList"); %>
		<h1>掲示板一覧</h1>
		<form action="message-post" method="post">
			<input type="submit" value="＋">
		</form>
		<div class="container">
		<% for (MessageBean message : messageList) { %>
			<%= message.getName() %>　<%= message.getPostDatetime() %><br>
			<%=message.getTitle()%>
			<form action="message-detail" method="POST">
				<input type="hidden" name="messageId" value="<%=message.getMessageId()%>">
				<input type="submit" value="もっと見る">
			</form><br><hr><br>
			
		<% } %>
		</div>
		<form action="menu" method="post">
			<div class="back">
			<input type="submit" value="戻る">
			</div>
		</form>
	</main>
</body>
</html>