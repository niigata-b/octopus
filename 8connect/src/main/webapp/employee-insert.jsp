<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
	従業員情報登録<br>
	<form action="employee-insert-check" method="POST">
		従業員コード：<input type="text" name="code"><br> 
		名前：<input type="text" name="name"><br> 
		ふりがな：<input type="text"name="kananame"><br> 
		部署コード：<select name="sectioncode">
		<option value="管理部">管理部</option>
		<option value="開発部">開発部</option>
		<option value="営業部">営業部</option>
		</select><br> 
		性別
		男：<input type="radio"name="gender"value="男">
		女：<input type="radio"name="gender"value="女"><br> 
		生年月日：<input type="date"name="birthday"><br>
		入社日：<input type="date"name="hireday"><br>
		<input type="submit"value="登録">
	</form>
	
	<form action="Employee-list" method="POST">
	<input type="submit"value="戻る">
	</form>
</body>
</html>