<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー画面</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
	<div class="menu-text">
		- menu -
	</div>
		<form action="employee-list" method="post">
			<div id="employee-btn">
				<input type="submit" value="従業員管理" class="menu-button">
			</div>
		</form>
		<form action="message-list" method="post">
			<div id="message-btn">
				<input type="submit" value="　掲示板　" class="menu-button">
			</div>
		</form>
		
		<% int roleId = (int)(session.getAttribute("roleId")); %>
		<% if (roleId != 1) { %>
			<form action="opinion-send" method="post">
				<div class="opinion-btn">
					<input type="submit" value="意見箱送信" class="menu-button">
				</div>
			</form>
		<% } %>
		
		<% if (roleId == 1) { %>
		<form action="opinion-view" method="post">
			<div class="opinion-btn">
				<input type="submit" value="意見箱閲覧" class="syatyou-button">
			</div>
		</form>
		<% } %>
	</main>
</body>
</html>