<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 membervar.jsp</title>
</head>
<body>


	<% int i = 0; %>
	[지역변수] i = <%= ++i %>  <!-- 서블릿에 지역 변수로  -->
	
	<p>
	[소속변수] memi = <%= ++memi %>
	<%! int memi = 0; %> <!-- 서블릿에 맴버 변수로 -->

</body>
</html>