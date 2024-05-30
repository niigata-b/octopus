<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>意見箱送信画面</title>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	
	<main>
	
		<img src="img/send.png" width="90px" height="90px" class="opinion-img">
		<div class="opinion-text">
		<h2>意見箱</h2>
		
			ここでは<span class="top-text">社長</span>に直接意見を送ることが出来ます。<br>
			直接言えないことや、困っていることを送りませんか?<br>
			例) ~~制度の見直し、空気清浄機の設置 など<br><hr class="opinion-hr">
		</div>
		<h2>意見内容</h2>
		
		<span class="caption">　　　　　　　　*400文字以内</span>
		<form action="opinion-send-check" method="post">
			
			<textarea name="opinionText" cols="80" rows="10" required="required"></textarea> <br>
		<div class="send-btn">
		<input type ="submit" value="送信" class="normal-button">
		</div>
		</form>
		<form action="menu" method="post">
			<div class="back">
			<input type="submit" value="戻る" class="back-button">
			</div>
		</form>
		<form action="opinion-list" method="post">
			<div class="rireki">
				<input type ="submit" value="送信履歴" class="rireki-button">
			</div>
		</form>
	
	</main>
</body>
</html>