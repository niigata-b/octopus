<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員一覧</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	
	<main>
	<%
		List<EmployeeBean> employeeList = (List) request.getAttribute("employeeList");
	%>
	
	<h1>従業員一覧</h1>

	
	<form action="employee-list" method="POST">
		<select name="search">
			<option value="全て">全て</option>
			<option value="管理部">管理部</option>
			<option value="開発部">開発部</option>
			<option value="営業部">営業部</option>
		</select>
		<input type="submit" value="検索する" />
	</form>
	<!--登録画面へ-->
	<% int roleId = (int)(session.getAttribute("roleId")); %>
	<% if ((roleId == 1) || (roleId == 2) ) { %>
	<form action="employee-insert" method="post">
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
	<span id="detailtext">＊従業員コードをクリックすると詳細画面へ飛びます<br></span>
	<div class="container">	
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
	</div>
	
	
	
	<!--メニュー画面へ-->
	<form action="menu" method="post">
		<div class="back">
		<input type="submit" value="戻る">
		</div>
	</form>
	</main>
</body>
</html>