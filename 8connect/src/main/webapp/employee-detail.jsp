<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "model.entity.EmployeeBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員詳細</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	
	<main>
		<%
			EmployeeBean employee = (EmployeeBean)session.getAttribute("employee");
			String code = (String) request.getAttribute("code");
			System.out.println("detaijsp" + code);
		%>
		
		<div class="field">
			<h1>従業員詳細</h1>
			<table>
			<tr>
			<th>従業員コード</th><td><%=employee.getCode() %></td>
			</tr>	
			<tr>
			<th>ふりがな</th><td><%=employee.getKanaName() %></td>
			</tr>
			<tr>
			<th>名前</th><td><%=employee.getName() %></td>
			</tr>
			<tr>
			<th>部署名</th><td><%=employee.getSectionName() %></td>
			</tr>
			<tr>
			<th>性別</th><td><%=employee.getGender() %></td>
			</tr>
			<tr>
			<th>生年月日</th><td><%=employee.getBirthDay() %></td>
			</tr>
			<tr>
			<th>入社日</th><td><%=employee.getHireDate() %></td>
			</tr>
			</table>
		</div>
		<!--（社長とシステム管理者のみ）更新と削除画面へ-->
		<% int roleId = (int)(session.getAttribute("roleId")); %>
		<% if ((roleId == 1) || (roleId == 2) ) { %>
		<form action="employee-update" method="post">
			<input type="hidden" name="code" value="<%=code %>">
			<div class="normal">
				<input type="submit" value="更新" class="normal-button">
			</div>
		</form>
		
		<form action="empoloyee-delete-check" method="post">
			<input type="hidden" name="code" value="<%=code %>">
			<div class="delete">
				<input type="submit" value="削除" class="delete-button">
			</div>
		</form>
		<% 
			}
		%>
		<!--メニュー画面へ-->
		<form action="employee-list" method="post">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>