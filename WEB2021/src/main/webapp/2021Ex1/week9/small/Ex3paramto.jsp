<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% 
	request.setCharacterEncoding("euc-kr"); 
%>
<%
	String ko = request.getParameter("ko");
	String am = request.getParameter("am");
	out.println("문서의 처리 결과입니다.<br>");
	
	out.println("전송된 ko는" + ko + "입니다. <br>");
	out.println("전송된 am은" + am + "입니다. <br>");
	
%>

	
