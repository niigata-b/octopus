<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EmployeeBean, java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員更新</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<%
		EmployeeBean employee = (EmployeeBean)session.getAttribute("employee");
		String code = (String)request.getAttribute("code");
	%>
	
	<h1>従業員更新</h1><br>
	
	<form action="employee-update-check" method="POST">
	
		従業員コード：<%=employee.getCode() %><br> 
		<span id="requisite">*</span>名前：<input type="text" name="name" value=" <%=employee.getName()%>" required="required" ><br> 
		ふりがな：<input type="text"name="kanaName" value="<%=employee.getKanaName()%>"><br> 
		部署：<select name="sectionCode" value="<%=employee.getSectionName()%>">
			<option value="K001">管理部</option>
			<option value="K002">開発部</option>
			<option value="K003">営業部</option>
		</select><br> 
		性別：
		<%if(employee.getGender().equals("男")){ %>
		男<input type="radio"name="gender"value="男" checked>
		女<input type="radio"name="gender"value="女"><br> 
		<%}else{ %>
		男<input type="radio"name="gender"value="男">
		女<input type="radio"name="gender"value="女" checked><br>
		<%} %>
		<span id="requisite">*</span>生年月日：<input type="date"name="birthDay" value="<%= employee.getBirthDay()%>" required="required" ><br>
		<span id="requisite">*</span>入社日：<input type="date"name="hireDate" value="<%= employee.getHireDate()%>" required="required" ><br>
		
		<input type="hidden" name="code" value="<%=code %>">
		<input type="submit"value="更新">
		
	</form>
	
	<form action="employee-list" method="POST">
	
	<input type="hidden" name="code" value="<%=code %>">
	<div class="back">
		<input type="submit" value="戻る" class="back-button">
	</div>
	
	</form>
</body>
</html>