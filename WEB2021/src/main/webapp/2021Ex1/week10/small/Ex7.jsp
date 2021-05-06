<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 예제</title>
</head>
<body>
	<h1>새션 예제</h1>
	<hr>
	<h2>새션 만들기</h2>
	<%
		session.setAttribute("id", "javajsp");
		session.setAttribute("pwd", "jdktomcat");
	%>
	
	<hr>
	<h2>새션 조회</h2>	
	새션 ID (유일한 식별자) : <%=session.getId() %><br>
	새션 CreationTime : <%=new Date(session.getCreationTime()) %><br><br>
	<% 
		Enumeration<String> e = session.getAttributeNames();
		
		while( e.hasMoreElements() ) {
			String name = e.nextElement();
			String value = (String) session.getAttribute(name);
			
			out.println("새션name : " + name + ", ");
			out.println("새션value : " + value + "<br>");
		}
	%>

	<br> 새션 Invalidate : <% session.invalidate(); %>
	
</body>
</html>