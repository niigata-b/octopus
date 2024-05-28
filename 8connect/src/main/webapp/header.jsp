<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/header.css">
</head>
	<header>
		<span id="account"><img src="img/account.png" width="60" heigth="60"></span>
		<span id="logo"><img src="img/logo.png" width="356" height="70"></span> 
		<span id="name"><%= session.getAttribute("name") %>　さん</span>
		
		<div id="logout"><a href="logout.jsp">ログアウト</a></div>
		<hr>	
	</header>

</html>