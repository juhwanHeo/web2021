<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><%@page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.project.vo.StationVO"%>
<%@ page import="java.sql.*"%>
<%@ include file="DBConn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
	ResultSet rs = null;
	Statement stmt = null;
	try {
		String sql = "SELECT count(*) as cnt FROM station WHERE address LIKE '%" + search + "%'" 
					+ "OR charge_name LIKE '%" + search + "%'" 
					+ "OR cido LIKE '%" + search + "%'" 
					+ "OR road_address LIKE '%" + search + "%'"
					+ "OR num_address LIKE '%" + search + "%'" ;
		
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		Map<String, Object> map = new HashMap<>();
		int cnt = 0;
		while (rs.next()) {
			cnt = rs.getInt("cnt");
		}
		map.put("cnt", cnt);
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
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
%>
