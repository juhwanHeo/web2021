<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting tag</title>
</head>
<body>
	<%!
		public String makeltLower(String str) {
			return str.toLowerCase();
		}
	%>
	<%
		out.println(makeltLower("Hello Word")+"<br>");
		out.println("Hello World".toUpperCase());
	%>
	<p>
</body>
</html>