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
		String sql = "SELECT count(*) as all_cnt "
					+ ",count(case when cido like '%" + search + "%' "
					+ "or road_address like '%" + search + "%' "
					+ "or num_address like '%" + search + "%' then 1 end) as local_cnt "
					+ "FROM station ";
		System.out.println("sql : " + sql);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		Map<String, Object> map = new HashMap<>();
		int all_cnt = 0;
		int local_cnt = 0;
		while (rs.next()) {
			all_cnt = rs.getInt("all_cnt");
			local_cnt = rs.getInt("local_cnt");
		}
		map.put("all_cnt", all_cnt);
		map.put("local_cnt", local_cnt);
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
