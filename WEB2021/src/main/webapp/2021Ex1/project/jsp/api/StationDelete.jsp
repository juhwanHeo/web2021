<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.project.vo.StationVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.project.vo.UserVO"%>
<%@ page import="java.sql.*"%>
<%@ include file="DBConn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String station_id = request.getParameter("station_id");
	
	PreparedStatement pstmt = null;
	try {
		String sql = "DELETE FROM station WHERE station_id = ?";
		pstmt = conn.prepareStatement(sql);  
		pstmt.setString(1, station_id);
		pstmt.executeUpdate();
		
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "ol");
		JSONObject jsonObj = new JSONObject(map);
		String json = jsonObj.toJSONString();
		out.println(json);  
	}
	catch (SQLException e) {
		out.println("SQLException: " + e.getMessage());
	} 
	catch (Exception e) {
		out.println("Exception: " + e.getMessage());
	}
	finally { 
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	} 
%>
