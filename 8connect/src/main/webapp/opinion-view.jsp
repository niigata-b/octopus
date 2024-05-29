<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.OpinionBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>意見箱一覧</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
		<%
			List<OpinionBean> opinionList = (List) request.getAttribute("opinionList");
		%>
		
		<div class="container">
			<%
				for (OpinionBean opinion : opinionList) {
			%>
				<%=opinion.getName()%>　<%= opinion.getSendDatetime() %><br>
				<%=opinion.getOpinionText()%><br><hr>
			<%
				}
			
			%>
		</div>
		<form action="menu" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>	
</body>
</html>