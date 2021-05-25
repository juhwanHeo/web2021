<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Database SQL</title>
</head>
<body>
	<%@ include file="Ex1DBConn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	
		Statement stmt = null;
	
		try {
			String sql = "INSERT INTO MEMBER(id, passwd, name) VALUES('" + id + "', '" + passwd + "', '" + name + "')";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			out.println("Member 테이블 삽입이 성공했습니다.");
		} catch (SQLException e) {
			out.println("Member 테이블 삽입이 실패했습니다. <br>");
			out.println("SQLException: " + e.getMessage());
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	%>
</body>
</html>