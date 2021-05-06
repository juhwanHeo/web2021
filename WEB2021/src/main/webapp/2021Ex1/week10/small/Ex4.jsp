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
	<h2>새션 주요 정보 조회</h2>
	새션 ID (유일한 식별자) : <%=session.getId() %><br>
	새션 MaxInactiveInterval (기본 새션 유지 시간): <%=session.getMaxInactiveInterval() %><br>
	<% 
		long mseconds = session.getCreationTime();
		Date time = new Date(mseconds);
	%>

	새션 CreationTime (1970년 1월 1일 0시 이후 지난 밀리세컨드): <%=mseconds %><br>
	새션 CreationTime (시각으로 다시 계산) : <%=time.toLocaleString()%> <br>
	
</body>
</html>