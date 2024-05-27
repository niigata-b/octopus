<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報-更新フォーム</title>
</head>
<body>
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session"/>
	<form action="employee-update-check" method="POST">
	
		従業員コード：<input type="text" name="code" value="<jsp:getProperty name="employee" property="code" />"><br>
		名前：<input type="text" name="name" value="<jsp:getProperty name="employee" property="name" />"><br>
		ふりがな：<input type="text" name="kanaName" value="<jsp:getProperty name="employee" property="kanaName" />"><br>
		部署：<input type="text" name="sectionCode" value="<jsp:getProperty name="employee" property="sectionCode" />"><br>
		性別：<input type="text" name="gender" value="<jsp:getProperty name="employee" property="gender" />"><br>
		生年月日：<input type="text" name="birthDay" value="<jsp:getProperty name="employee" property="birthDay" />"><br>
		入社日：<input type="text" name="hireDate" value="<jsp:getProperty name="employee" property="hireDate" />"><br>
		
		<input type="submit" value="更新">
	</form>

	<form action="employee-detail" method="POST">
		<input type="hidden" name="code" value="<%=employee.getCode()%>">
		<input type="submit" value="戻る">
	</form>
</body>
</html>