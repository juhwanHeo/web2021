<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
<h2> page 지시자의 import 속성 </h2>
	<%@ page import="java.util.Date" %>
	
	현재 시각: <%= new Date().toLocaleString() %>
</body>
</html>