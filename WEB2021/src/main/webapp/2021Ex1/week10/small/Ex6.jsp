<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("euc-kr"); 
		String id = (String) session.getAttribute("userID");
		String pw = (String) session.getAttribute("userPW");
		
		out.println("汲沥等 技记狼 加己 蔼[1] : " + id + "<br>");
		out.println("汲沥等 技记狼 加己 蔼[2] : " + pw);
		
	%>
</body>
</html>