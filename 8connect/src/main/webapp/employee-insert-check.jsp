<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>従業員登録確認画面</title>
</head>
<body>
	<main>
	<div class="check">
		<%request.setCharacterEncoding("UTF-8");%>
		<h2>-- 以下の内容を登録してもよろしいですか？ --</h2>
		<form action="employee-insert-pass" method="POST">
		従業員コード:<%=request.getParameter("code") %><br>
		名前：<%=request.getParameter("name") %><br>
		ふりがな：<%=request.getParameter("kanaName") %><br>
		部署コード：<%=request.getParameter("sectionCode") %><br>
		性別：<%=request.getParameter("gender") %><br>
		生年月日：<%=request.getParameter("birthDay") %><br>
		入社日：<%=request.getParameter("hireDate") %><br>
	</div>
		<div class="normal">
			<input type="submit" value="確定" class="normal-button">
		</div>
		</form>
			<form action="employee-insert" method="POST">
				<div class="back">
				<input type="submit" value="戻る" class="back-button">
				</div>
			</form>
	</main>
</body>
</html>
