<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員登録画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<main>
		<h1>従業員情報登録</h1>
		<form action="employee-insert-check" method="POST">
			<span id="requisite">*</span>従業員コード：<input type="number" min="0" name="code" required="required"><br> 
			<span id="requisite">*</span>名前：<input type="text" name="name" required="required" ><br> 
			ふりがな：<input type="text"name="kanaName" ><br> 
			<span id="requisite">*</span>部署コード：<select name="sectionCode">
			<option value="k001">管理部</option>
			<option value="k002">開発部</option>
			<option value="k003">営業部</option>
			</select><br> 
			性別：
			男<input type="radio"name="gender"value="男">
			女<input type="radio"name="gender"value="女"><br> 
			<span id="requisite">*</span>生年月日：<input type="date"name="birthDay" required="required"><br>
			<span id="requisite">*</span>入社日：<input type="date"name="hireDate" required="required"><br>
			<input type="submit"value="登録">
		</form>
		
		<form action="employee-list" method="POST">
			<div class="back">
			<input type="submit" value="戻る">
			</div>
		</form>
	</main>
</body>
</html>