<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.project.vo.UserVO"%>
<%@ page import="java.sql.*"%>
<%@ include file="DBConn.jsp" %>
<%
	UserVO userVO = (UserVO) session.getAttribute("userVO");
	if(userVO!= null) {
		session.invalidate();
		out.println("<script>alert('로그아웃 되었습니다.'); window.location.href='/WEB2021/2021Ex1/project/jsp/index.jsp';</script>");
	}
	else {
		out.println("<script>alert('로그인 새션이 없습니다!!.'); window.location.href='/WEB2021/2021Ex1/project/jsp/index.jsp';</script>");
	}
%>
