<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/WEB2021";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);

%>