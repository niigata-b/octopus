<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h1>メニュー</h1>
	<form action="employee-list" method="post">
		<input type="submit" value="従業員管理">
	</form>
	<form action="message-list" method="post">
		<input type="submit" value="掲示板">
	</form>
	
	<% int roleId = (int)(session.getAttribute("roleId")); %>
	<% if (roleId != 1) { %>
		<form action="opinion-send" method="post">
			<input type="submit" value="意見箱送信">
		</form>
	<% } %>
	
	<% if (roleId == 1) { %>
	<form action="opinion-view" method="post">
		<input type="submit" value="意見箱閲覧">
	</form>
	<% } %>
	
</body>
</html>