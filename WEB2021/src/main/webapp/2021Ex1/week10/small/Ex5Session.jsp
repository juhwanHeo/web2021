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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1234")){
			session.setAttribute("userID", id);			
			session.setAttribute("userPW", pw);		
			out.println("새션 생성이 성공했습니다 <br>");
			out.println(id + "님 환영합니다");
		}
		else {
			out.println("새션 생성이 실패했습니다 ");
		}
	%>
</body>
</html>