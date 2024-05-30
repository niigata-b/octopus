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
		<h2>意見箱閲覧</h2>
		<div class="container">
			<div class="opinion-view">
				
				<%
					for (OpinionBean opinion : opinionList) {
				%>
				<div class="opinion-view-text">
						<%=opinion.getName()%>　<%= opinion.getSendDatetime() %><br>
				</div>
					<%=opinion.getOpinionText()%><br><hr class="opinion-view-hr">
				<%
					}
				
				%>
			</div>
		</div>
		<form action="menu" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>	
</body>
</html>