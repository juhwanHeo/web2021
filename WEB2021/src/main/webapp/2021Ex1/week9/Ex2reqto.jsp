<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
%>
<%
	String pw = request.getParameter("pw");
	out.println("전송된 패스워드 : " + pw + "<br>");
%>
