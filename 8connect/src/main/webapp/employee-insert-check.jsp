<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員登録確認画面</title>
</head>
<body>
<%@ include file="header.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>
・以下の内容を登録してもよろしいですか？<br>
<form action="employee-insert-pass" method="POST">
従業員コード:<%=request.getParameter("code") %><br>
名前：<%=request.getParameter("name") %><br>
ふりがな：<%=request.getParameter("kanaName") %><br>
部署コード：<%=request.getParameter("sectionCode") %><br>
性別：<%=request.getParameter("gender") %><br>
生年月日：<%=request.getParameter("birthDay") %><br>
入社日：<%=request.getParameter("hireDate") %><br>
<input type="submit"value="確定">
</form>
<form action="employee-insert" method="POST">
	<input type="submit"value="戻る">
	</form>

</body>
</html>
