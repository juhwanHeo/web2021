<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 예제</title>
</head>
<body>
	<p><h4>---- 새션을 삭제하기 전 ----</h4>
	
	<%
		String id = (String) session.getAttribute("userID");
		String pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + id + "<br>");
		out.println("설정된 세션 값 userPW : " + pw + "<br>");
		
		session.removeAttribute("userID");
	%>
	
	<p><h4>---- 새션을 삭제한 후 ----</h4>
	
	<%
		id = (String) session.getAttribute("userID");
		pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + id + "<br>");
		out.println("설정된 세션 값 userPW : " + pw + "<br>");
	%>
	
</body>
</html>