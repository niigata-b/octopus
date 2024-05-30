<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員登録画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<main>
	<div class="field">
		<h1>従業員情報登録</h1>
		<div class="hissu">* は必須項目です。</div>
		<form action="employee-insert-check" method="POST">
		<table>
			<tr><th><span id="requisite">*</span>従業員コード</th><td><input type="number" min="0" name="code" required="required" class="nyuryoku" maxlength="5"></td></tr> 
			<tr><th><span id="requisite">*</span>名前　　　　</th><td><input type="text" name="name" required="required" class="nyuryoku" maxlength="20"></td></tr> 
			<tr><th>ふりがな　　</th><td><input type="text"name="kanaName" class="nyuryoku" maxlength="30"></td></tr> 
			<tr><th><span id="requisite">*</span>部署コード　</th><td><select name="sectionCode" class="nyuryoku">
			<option value="k001">管理部</option>
			<option value="k002">開発部</option>
			<option value="k003">営業部</option>
			</select>
			</td></tr>
			<tr><th> 
			<span id="requisite">*</span>性別　　　　</th>
			<td>男<input type="radio"name="gender"value="男" required="required">
			女<input type="radio"name="gender"value="女" required="required"></td></tr> 
			<tr><th><span id="requisite">*</span>生年月日　　</th><td><input type="date"name="birthDay" required="required" class="nyuryoku"></td></tr>
			<tr><th><span id="requisite">*</span>入社日　　　</th><td><input type="date"name="hireDate" required="required" class="nyuryoku"></td></tr>
		</table>
			<div class="normal">
				<input type="submit"value="登録" class="normal-button">
			</div>
		</form>
	</div>	
		
		<form action="employee-list" method="POST">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
	</main>
</body>
</html>