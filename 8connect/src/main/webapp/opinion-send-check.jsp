<%@page import="model.entity.OpinionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>意見箱送信確認画面</title>
</head>
<body>
	<main>
		<% OpinionBean opinion = new OpinionBean(); %>
		<div class="check">
		<h2>-- 以下の内容で送信しますか？--</h2>
		
		従業員コード：<%= session.getAttribute("code") %><br>
		意見内容：<%= session.getAttribute("opinionText") %><br>
		
		
		</div>
		<form action="opinion-send-pass" method="POST">
			<div class="normal">
				<input type="submit" value="確定" class="normal-button">
			</div>
		</form>
	
		<form action="opinion-send" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>