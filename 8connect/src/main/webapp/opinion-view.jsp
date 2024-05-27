<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.OpinionBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱一覧</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		List<OpinionBean> opinionList = (List) request.getAttribute("opinionList");
	%>
	
		<%
			for (OpinionBean opinion : opinionList) {
		%>
			<%=opinion.getName()%>　<%= opinion.getSendDatetime() %><br>
			<%=opinion.getOpinionText()%><br><hr>
		<%
			}
		
		%>
		<form action="menu" method="POST">
			<input type="submit" value="戻る">
		</form>
		
</body>
</html>