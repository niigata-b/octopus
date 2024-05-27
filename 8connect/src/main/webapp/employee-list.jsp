<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員一覧</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%
		List<EmployeeBean> employeeList = (List) request.getAttribute("employeeList");
	%>
	
	<h1>従業員一覧</h1>
	
	＊従業員コードをクリックすると詳細画面へ飛びます<br>
	<table border="1">
		<!-- テーブル見出し -->
		<tr>
			<th>従業員コード</th>
			<th>名前</th>
			<th>ふりがな</th>
			<th>部署名</th>
			<th>入社日</th>
		</tr>
		<!-- 従業員一覧 -->
		<%
			for(EmployeeBean employee : employeeList){
		%>
		<tr>
			<td><form action="employee-detail" method="post">
					<input type="hidden" name="code" value="<%=employee.getCode() %>">
					<input type="submit" value="<%=employee.getCode() %>">
				</form>
			</td>
			<td><%=employee.getName() %></td>
			<td><%=employee.getKanaName() %></td>
			<td><%=employee.getSectionName() %></td>
			<td><%=employee.getHireDate() %></td>
		</tr>
		<%
			}
		%>
	</table>
	
	
	<!--登録画面へ-->
	<% int roleId = (int)(session.getAttribute("roleId")); %>
	<% if ((roleId == 1) || (roleId == 2) ) { %>
	<form action="employee-insert" method="post">
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
	<!--メニュー画面へ-->
	<form action="menu" method="post">
		<input type="submit" value="戻る">
	</form>
</body>
</html>