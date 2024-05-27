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
	<form action="message-post" method="post">
		<input type="submit" value="＋">
	</form>
	<% for (MessageBean message : messageList) { %>
		<%= message.getName() %>　<%= message.getPostDatetime() %><br>
		<%=message.getTitle()%>
		<form action="message-detail" method="POST">
			<input type="hidden" name="messageId" value="<%=message.getMessageId()%>">
			<input type="submit" value="もっと見る">
		</form><br><hr><br>
		
	<% } %>
	<form action="menu" method="post">
		<input type="submit" value="戻る">
	</form>
	
</body>
</html>