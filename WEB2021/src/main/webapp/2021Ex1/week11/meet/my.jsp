<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>my.jsp</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<%
		Cookie[] cookies = request.getCookies();
		String userID = null;
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("userID"))
				userID = cookie.getName();
		}
		
		if(userID != null) {
			out.println("관리자의 페이지에 오신걸 환영합니다.<br><br>");
			out.println("<a href='logout.jsp'>로그아웃합니다.</a> <br>");
		}
		else {
			out.println("<script>alert('쿠기가 존재하지 않습니다.'); location.href='login.jsp';</script>");
		}
	%>
	
</body>
</html>

