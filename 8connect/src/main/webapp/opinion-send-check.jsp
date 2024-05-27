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
	<%@ include file="header.jsp" %>
	
	<% OpinionBean opinion = new OpinionBean(); %>
	以下の内容で送信しますか？<br>
	
	従業員コード：<%= session.getAttribute("code") %><br>
	意見内容：<%= session.getAttribute("opinionText") %><br>
	
	

	<form action="opinion-send-pass" method="POST">
		<input type="submit" value="送信">
	</form>

	<form action="opinion-send" method="POST">
		<input type="submit" value="戻る">
	</form>
</body>
</html>