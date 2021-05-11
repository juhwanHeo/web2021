<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login_out.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr"); 
		Cookie[] cookies = request.getCookies();
		for(int i=0; i < cookies.length; i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}

		out.println("<script>alert('로그아웃되었습니다.'); location.href='login.jsp';</script>");
	%>
</body>
</html>