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
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<main>
		<h2>意見箱履歴</h2>
		<div class="container">
			<div class="opinion-view">
				<%
					List<OpinionBean> opinionList = (List) request.getAttribute("opinionList");
					boolean sw = (boolean) request.getAttribute("sw");
					System.out.println(sw);
				%>
				
				<% if (sw) { %>
					<div class="message-no-rireki">まだ履歴がありません。</div>
				<% } else { %>
				
					<%
						for (OpinionBean opinion : opinionList) {
					%>
					<div class="opinion-view-text">
						<%= opinion.getSendDatetime() %><br>
					</div>
						<%=opinion.getOpinionText()%><br><hr>
					<%
						}
					
					%>
				<% } %>
			</div>
		</div>
		
		<form action="opinion-send" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>