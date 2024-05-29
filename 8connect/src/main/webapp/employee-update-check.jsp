<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List, java.sql.Date, model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
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
		ふりがな: <%=kanaName%><br>
		部署：<%=sectionCode%><br>
		性別：<%=gender%><br>
		生年月日：<%=birthDay%><br>
		入社日：<%=hireDate%><br>
	
		<form action="employee-update-pass" method="post">
		<input type="hidden" name="code" value="<%=code%>">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="kanaName" value="<%=kanaName%>">
		<input type="hidden" name=sectionCode value="<%=sectionCode%>">
		<input type="hidden" name=gender value="<%=gender%>">
		<input type="hidden" name="birthDay" value="<%=birthDay%>">
		<input type="hidden" name="hireDate" value="<%=hireDate%>">
		<div class="decision">
			<input type="submit" value="確定" class="nomal-button">
		</div>
	</form>
	
	<form action="employee-update" method="post">
		<input type="hidden" name="code" value="<%=code%>">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="kanaName" value="<%=kanaName%>">
		<input type="hidden" name=sectionCode value="<%=sectionCode%>">
		<input type="hidden" name=gender value="<%=gender%>">
		<input type="hidden" name="birthDay" value="<%=birthDay%>">
		<input type="hidden" name="hireDate" value="<%=hireDate%>">
		<div class="back">
			<input type="submit" value="戻る" class="back-button">
		</div>
	</form>
	
</body>
</html>