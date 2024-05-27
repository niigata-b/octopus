<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱-送信確認</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	以下の内容で送信しますか？<br>
	<jsp:useBean id="opinion" scope="session" class="model.entity.OpinionBean" />
	
	<jsp:setProperty name="opinion" property="code" param="code" />
	<jsp:setProperty name="opinion" property="opinionText" param="opinionText" />
	
	従業員コード：<jsp:getProperty name="opinion" property="code" /><br>
	意見内容：<jsp:getProperty name="opinion" property="opinionText" /><br>

	<form action="opinion-send-servlet" method="POST">
		<input type="submit" value="送信">
	</form>

	<form action="opinion-send-check-servlet" method="POST">
		<input type="submit" value="戻る">
	</form>
</body>
</html>