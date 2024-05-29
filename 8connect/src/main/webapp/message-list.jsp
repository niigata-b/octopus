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
		<img src="img/chat.png" width="90px" height="90px"><h1>掲示板一覧</h1><br>
		<form action="message-post" method="post">
			<div id="post-btn">
				<input type="submit" value="＋" class="post-button">
			</div>
		</form>
		<div class="container">
		<% for (MessageBean message : messageList) { %>
		<div id="message-date">
			<%= message.getName() %>　<%= message.getPostDatetime() %><br>
		</div>
		<div id="message-title">
			<%=message.getTitle()%>
		</div>
			<form action="message-detail" method="POST">
				<input type="hidden" name="messageId" value="<%=message.getMessageId()%>">
				<div id="view">
					<input type="submit" value="もっと見る" class="view-button">
				</div>
			</form><br><hr class="messagehr"><br>
			
		<% } %>
		</div>
		<form action="menu" method="post">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>