<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("euc-kr"); 
		Cookie[] cookies = request.getCookies();
		
		for(int i=0; i < cookies.length; i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		
		response.sendRedirect("Ex2.jsp");
	%>
</body>
</html>