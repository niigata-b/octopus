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
	<div class="field">
	<h1>従業員更新</h1>
	<div class="hissu">* は必須項目です。</div>
	
	<form action="employee-update-check" method="POST">
		
		<table>
			<tr><th>従業員コード</th><td><%=employee.getCode() %></td></tr> 
			<tr><th><span id="requisite">*</span>名前</th><td><input type="text" name="name" value=" <%=employee.getName()%>" required="required" class="nyuryoku"></td></tr> 
			<tr><th>ふりがな</th><td><input type="text"name="kanaName" value="<%=employee.getKanaName()%>" class="nyuryoku"></td></tr> 
			<tr><th>部署</th><td><select name="sectionCode" value="<%=employee.getSectionName()%>" class="nyuryoku">
				<option value="K001">管理部</option>
				<option value="K002">開発部</option>
				<option value="K003">営業部</option>
			</select></td></tr>
			<tr><th><span id="requisite">*</span>性別</th>
			<td><%if(employee.getGender().equals("男")){ %>
			男<input type="radio"name="gender"value="男" checked required="required">
			女<input type="radio"name="gender"value="女" required="required"><br> 
			<%}else{ %>
			男<input type="radio"name="gender"value="男" required="required">
			女<input type="radio"name="gender"value="女" checked required="required"><br>
			<%} %></td></tr>
			<tr><th><span id="requisite">*</span>生年月日</th><td><input type="date"name="birthDay" value="<%= employee.getBirthDay()%>" required="required" class="nyuryoku"></td></tr>
			<tr><th><span id="requisite">*</span>入社日</th><td><input type="date"name="hireDate" value="<%= employee.getHireDate()%>" required="required" class="nyuryoku"></td></tr>
			
		</table>
		
		<div class="field">
		<input type="hidden" name="code" value="<%=code %>">
		<div class="normal">
			<input type="submit"value="更新" class="normal-button">
	</div>
	</form>
	
	<form action="employee-detail" method="POST">
	
	<input type="hidden" name="code" value="<%=code %>">
	<div class="back">
		<input type="submit" value="戻る" class="back-button">
	</div>
	
	</form>
</body>
</html>