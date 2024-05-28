<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List, java.sql.Date, model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員更新確認画面</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<h1>従業員更新確認</h1>
	<h2>以下の内容を更新してもよろしいですか？</h2>

		<%
			EmployeeBean employee = (EmployeeBean)session.getAttribute("employee");
			String code = (String)request.getAttribute("code");
			String name = (String)request.getAttribute("name");
			String kanaName = (String)request.getAttribute("kanaName");
			String sectionCode = (String)request.getAttribute("sectionCode");
			String gender = (String)request.getAttribute("gender");
			Date birthDay = (Date)request.getAttribute("birthDay");
			Date hireDate = (Date)request.getAttribute("hireDate");	
		%>
	
		従業員コード：<%=code%><br>
		名前：<%=name%><br>
		ふりがな: <%=kanaName%><br><br>
		部署名：<%=sectionCode%><br>
		性別：<%=gender%><br>
		生年月日：<%=birthDay%><br>
		入社日：<%=hireDate%><br>
	
		<form action="employee-update-pass" method="post">
		<input type="hidden" name="code" value="<%=code%>">
		<input type="submit" value="確定">
	</form>
	
	<form action="employee-update" method="post">
	
		<input type="hidden" name="code" value="<%=code%>">
		<input type="submit" value="戻る">
	</form>
	
</body>
</html>