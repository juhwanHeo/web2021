<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/exTask5.css">
</head>
<body>

<nav class="nav">
	<a class="link" href="./ExTask5.jsp"> Home </a>
</nav>

	<%! 
		String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to Web Market!";
	%>
	
	<h1> <%= greeting %> </h1>
	<h3> <%= tagline %> </h3>	
	
	<footer class="footer">
	<p> &copy; WebMarket </p>
	</footer>
</body>
</html>