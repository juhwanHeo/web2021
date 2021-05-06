<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting tag</title>
</head>
<body>
	<%
		for(int i = 2; i<=20; i+=2) 
			out.print(i + " ");
	%>
</body>
</html>