<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<% 
	request.setCharacterEncoding("euc-kr"); 
%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	out.println("전송된 아이디 : " + id + "<br>");
	out.println("전송된 패스워드 : " + pw + "<br>");
	
%>
