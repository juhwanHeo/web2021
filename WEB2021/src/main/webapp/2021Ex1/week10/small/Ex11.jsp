<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 예제</title>
</head>
<body>
	<p>
	<h4>---- 새션 유효 시간 변경 전 ----</h4>

	<%
		int time = session.getMaxInactiveInterval() / 60;
		out.println("새션 유효 시간 : " + time + "분<br>");
	%>

	<p>
	<h4>---- 새션 유효 시간 변경 후 ----</h4>

	<%
		session.setMaxInactiveInterval(60*60);
		time = session.getMaxInactiveInterval() / 60;

		out.println("새션 유효 시간 : " + time + "분<br>");
	%>

</body>
</html>