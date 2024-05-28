<%@page import="model.entity.OpinionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱送信確認画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
		<% OpinionBean opinion = new OpinionBean(); %>
		<h2>-- 以下の内容で送信しますか？--</h2>
		
		従業員コード：<%= session.getAttribute("code") %><br>
		意見内容：<%= session.getAttribute("opinionText") %><br>
		
		
	
		<form action="opinion-send-pass" method="POST">
			<input type="submit" value="送信">
		</form>
	
		<form action="opinion-send" method="POST">
			<div class="back">
			<input type="submit" value="戻る">
			</div>
		</form>
	</main>
</body>
</html>