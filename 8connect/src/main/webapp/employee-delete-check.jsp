<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除画面</title>
</head>
<body>
<h1>従業員削除確認</h1>
<h3>以下の内容を削除してもよろしいですか?</h3>
	
	<%
		EmployeeBean employee = (EmployeeBean)session.getAttribute("employee");
		String code = (String) request.getAttribute("code");
		System.out.println("deletecheckjsp" + code);
		
	%>
	従業員コード：<%=employee.getCode() %><br>
	名前：<%=employee.getName() %><br>
	ふりがな: <%=employee.getKanaName() %><br><br>
	部署名：<%=employee.getSectionName() %><br>
	性別：<%=employee.getGender() %><br>
	生年月日：<%=employee.getBirthDay() %><br>
	入社日：<%=employee.getHireDate() %><br>
	
	<form action="employee-delete-pass" method="post">
		<input type="hidden" name="code" value="<%=code %>">
		<input type="submit" value="確定">
	</form>
	
	<form action="employee-detail" method="post">
		<input type="hidden" name="code" value="<%=code %>">
		<input type="submit" value="戻る">
	</form>
	
	</form>
</body>
</html>