<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 抗力</title>
</head>
<body>
	<h1>货记 抗力</h1>
	<hr>
	<h2>货记 父甸扁</h2>
	<%
		session.setAttribute("id", "javajsp");
		session.setAttribute("pwd", "jdktomcat");
	%>
	
	<hr>
	<h2>货记 炼雀</h2>	
	货记 ID (蜡老茄 侥喊磊) : <%=session.getId() %><br>
	货记 CreationTime : <%=new Date(session.getCreationTime()) %><br><br>
	<% 
		Enumeration<String> e = session.getAttributeNames();
		
		while( e.hasMoreElements() ) {
			String name = e.nextElement();
			String value = (String) session.getAttribute(name);
			
			out.println("货记name : " + name + ", ");
			out.println("货记value : " + value + "<br>");
		}
	%>

	<br> 货记 Invalidate : <% session.invalidate(); %>
	
</body>
</html>