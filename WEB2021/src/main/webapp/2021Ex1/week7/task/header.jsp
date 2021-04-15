<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Directives Tag</title>
</head>
<body>
	<%! int count = 0; %>
	
	<%
		String scount = (String) application.getAttribute("count");
	
		if(scount != null)
			count = Integer.parseInt(scount);
		else
			count = 0;
		
		application.setAttribute("count", Integer.toString(++count));
	%>
	<p>이 사이트 방문은 <%=count %>번째 입니다.</p>
</body>
</html>
