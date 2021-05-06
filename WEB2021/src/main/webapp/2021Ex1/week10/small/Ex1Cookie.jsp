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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1234")){
			Cookie cookie_id = new Cookie("userID", id);
			Cookie cookie_pw = new Cookie("userPW", pw);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("쿠키 생성이 성공했습니다 <br>");
			out.println(id + "님 환영합니다");
		}
		else {
			out.println("쿠키 생성이 실패했습니다 ");
		}
	%>


</body>
</html>