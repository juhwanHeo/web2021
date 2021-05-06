<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ex2reqto.jsp</title>
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
	
	<jsp:include page="Ex2hader.jsp">
		<jsp:param value="나관리" name="admin"/>
	</jsp:include>
	<div>-------------------------------</div>
	<div> 학생 정보 입력 결과 </div><br>
	성명 : <%= name %> <br>
	학번 : <%= id %> <br>
	성별 : <%= sex %> <br>
	국적 : <%= country %> <br>
	<div>-------------------------------</div>
	<jsp:include page="Ex2footer.jsp"/>
</body>
</html>