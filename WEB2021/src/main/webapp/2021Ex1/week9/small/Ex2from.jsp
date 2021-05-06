<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<% 
	request.setCharacterEncoding("euc-kr"); 
String id = request.getParameter("id");
out.println("전송된 아이디 : " + id + "<br>");
%>

<jsp:include page="Ex2reqto.jsp" flush="false"/>

<%
	String uname = request.getParameter("uname");
	
	out.println("전송된 아이디 : " + uname + "<br>");
	
%>
