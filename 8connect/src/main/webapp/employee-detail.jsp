<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "model.entity.EmployeeBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員詳細</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%
		EmployeeBean employee = (EmployeeBean)session.getAttribute("employee");
		String code = (String) request.getAttribute("code");
		System.out.println("detaijsp" + code);
	%>
	
	<h1>従業員詳細</h1>
	
	従業員コード：<%=employee.getCode() %><br>
				  <%=employee.getKanaName() %><br>
	名前：<%=employee.getName() %><br>
	部署名：<%=employee.getSectionName() %><br>
	性別：<%=employee.getGender() %><br>
	生年月日：<%=employee.getBirthDay() %><br>
	入社日：<%=employee.getHireDate() %><br>
	
	
	<!--（社長とシステム管理者のみ）更新と削除画面へ-->
	<% int roleId = (int)(session.getAttribute("roleId")); %>
	<% if ((roleId == 1) || (roleId == 2) ) { %>
	<form action="employee-update" method="post">
		<input type="hidden" name="code" value="<%=code %>">
		<input type="submit" value="更新">
	</form>
	
	<form action="empoloyee-delete-check" method="post">
		<input type="hidden" name="code" value="<%=code %>">
		<input type="submit" value="削除">
	</form>
	<% 
		}
	%>
	<!--メニュー画面へ-->
	<form action="employee-list" method="post">
		<input type="submit" value="戻る">
	</form>
</body>
</html>