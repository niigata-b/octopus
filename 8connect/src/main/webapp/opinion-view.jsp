<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱一覧</title>
</head>
<body>
	<%
		List<OpinionBean> opinionList = (List) request.getAttribute("opinionList");
	%>
	<table>
		<tr>
			<th>従業員コード</th>
			<th>意見内容</th>
		</tr>
		<%
			for (OpinionBean opinion : opinionList) {
		%>
		<tr>
			<td><%=opinion.getCode()%></td>
			<td><%=opinion.getOpinionText()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>