<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login_pro.jsp</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if(id.equals("kim") && pw.equals("1234")){
			Cookie cookie_id = new Cookie("userID", id);
			Cookie cookie_pw = new Cookie("userPW", pw);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("[" + id + "]님 반갑습니다.<br><br>");
			out.println("<a href='my.jsp'>" + id + "님의 관리 페이지로 이동합니다.</a> <br>");
			out.println("<a href='logout.jsp'>로그아웃합니다.</a> <br>");
		}
		else {
			out.println("<script>alert('아이디와 패스워드가 다릅니다.'); history.back();</script>");
		}
	%>
	
</body>
</html>