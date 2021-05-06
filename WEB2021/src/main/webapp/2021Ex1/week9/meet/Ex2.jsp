<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ex2.jsp</title>
</head>
<body>

	<% 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("나관리") && pw.equals("1234")) {
	%>
		이름 : <%= id %> <br>
		클라이언트 IP: <%= request.getRemoteAddr() %> <br>
		요청 정보 길이: <%= request.getContentLength() %> <br>
		요청 정보 전송방식: <%= request.getMethod() %> <br>
		요청 URI: <%= request.getRequestURI() %> <br>
		서버 이름: <%= request.getServerName() %> <br>
		서버 포트: <%= request.getServerPort() %> <br>
	<% 
		} else { 
			out.println("[" + id + "]님은 관리자가 아닙니다.");
		}
	%>

</body>
</html>