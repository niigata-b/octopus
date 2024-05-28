<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.OpinionBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>意見箱履歴画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h2>意見箱履歴</h2>
	<%
		List<OpinionBean> opinionList = (List) request.getAttribute("opinionList");
		boolean sw = (boolean) request.getAttribute("sw");
		System.out.println(sw);
	%>
	
	<div class="container">
	<% if (sw) { %>
		まだ履歴がありません。
	<% } else { %>
	
		<%
			for (OpinionBean opinion : opinionList) {
		%>
			<%= opinion.getSendDatetime() %><br>
			<%=opinion.getOpinionText()%><br><hr>
		<%
			}
		
		%>
	<% } %>
	</div>
		<form action="opinion-send" method="POST">
			<input type="submit" value="戻る">
		</form>
</body>
</html>