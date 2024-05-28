<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意見箱送信画面</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<h2>意見箱</h2>
	ここでは<span class="text">社長</span>に直接意見を送ることが出来ます。<br>
	直接言えないことや、困っていることを送りませんか?<br>
	例) ~~制度の見直し、空気清浄機の設置 など<br><hr>
	<h2>意見内容</h2>
	
	
	
	<form action="opinion-send-check" method="post">
		<textarea name="opinionText" cols="80" rows="5" required="required"></textarea> <br>
	<input type ="submit" value="送信">
	</form>
	<form action="menu" method="post">
		<div class="back">
		<input type="submit" value="戻る">
		</div>
	</form>
	<form action="opinion-list" method="post">
		<input type ="submit" value="今までの履歴">
	</form>
	
	<hr>
</body>
</html>