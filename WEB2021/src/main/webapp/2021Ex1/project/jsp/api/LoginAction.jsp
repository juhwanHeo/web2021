<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.project.vo.UserVO"%>
<%@ page import="java.sql.*"%>
<%@ include file="DBConn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("pw");
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	try {
		String sql = "SELECT id, name FROM user WHERE id = ? AND passwd = ?";
		pstmt = conn.prepareStatement(sql);  
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		rs = pstmt.executeQuery();
		UserVO userVO = new UserVO();
		
		while (rs.next()) {
			userVO.setId(rs.getString("id"));
			userVO.setName(rs.getString("name"));
		}
		
		if(userVO.getId() != null) {
			session.setAttribute("userVO", userVO);
			response.sendRedirect("/WEB2021/2021Ex1/project/jsp/index.jsp");
		}
		else {
			out.println("<script>alert('아이디와 패스워드가 다릅니다.'); history.back();</script>");
		}
		
	}
	catch (SQLException e) {
		out.println("SQLException: " + e.getMessage());
	} 
	catch (Exception e) {
		out.println("Exception: " + e.getMessage());
	}
	finally { 
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>
