<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報-更新確認</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	・以下の内容を更新してもよろしいですか？<br>
	
	<jsp:useBean id="employee" scope="session" class="model.entity.EmployeeBean" />
	
	<jsp:setProperty name="employee" property="code" param="code" />
	<jsp:setProperty name="employee" property="name" param="name" />
	<jsp:setProperty name="employee" property="kanaName" param="kanaName" />
	<jsp:setProperty name="employee" property="sectionCode" param="sectionCode" />
	<jsp:setProperty name="employee" property="gender" param="gender" />
	<jsp:setProperty name="employee" property="birthDay" param="birthDay" />
	<jsp:setProperty name="employee" property="hireDate" param="hireDate" />
	
	
	従業員：<jsp:getProperty name="employee" property="code" /><br>
	名前：<jsp:getProperty name="employee" property="name" /><br>
	ふりがな：<jsp:getProperty name="employee" property="kanaName" /><br>
	部署：<jsp:getProperty name="employee" property="sectionCode" /><br>
	性別：<jsp:getProperty name="employee" property="gender" /><br>
	生年月日：<jsp:getProperty name="employee" property="birthDay" /><br>
	入社日：<jsp:getProperty name="employee" property="hireDate" /><br>

	<form action="employee-list" method="POST">
		<input type="submit" value="確定">
	</form>

	<form action="employee-update" method="POST">
		<input type="submit" value="戻る">
	</form>
</body>
</html>