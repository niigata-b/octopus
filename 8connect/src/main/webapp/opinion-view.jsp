<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.OpinionBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱一覧</title>
</head>
<body>
	<%
		List<OpinionBean> opinionList = (List<OpinionBean>) request.getAttribute("opinionList");
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
			<td>
				<form action="/opinion-view" method="POST">
					<input type="hidden" name="code" value="<%=opinion.getCode()%>">
					<input type="text" name="opinionText" value="<%=opinion.getOpinionText()%>">
					<input type="submit" value="戻る">
				</form>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>