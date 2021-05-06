<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ex1reqto.jsp</title>
</head>
<body>

	<% 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String sex = request.getParameter("sex");
		String country = request.getParameter("country");
	%>
	<h3> 학생 정보 입력 결과 </h3>
	성명 : <%= name %> <br><br>
	학번 : <%= id %> <br><br>
	성별 : <%= sex %> <br><br>
	국적 : <%= country %> <br>
</body>
</html>