
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.project.vo.StationVO"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/WEB2021";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%>
<%
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		
		System.out.println("search: " + search);
		if(search == null) search = "춘천시";
		ResultSet rs = null;
		Statement stmt = null;
		List<StationVO> stationList = null;
		StationVO stationVO = null;
		try {
			String sql = "SELECT * FROM station WHERE address LIKE '%" + search + "%'" 
						+ "OR charge_name LIKE '%" + search + "%'" 
						+ "OR cido LIKE '%" + search + "%'" 
						+ "OR road_address LIKE '%" + search + "%'"
						+ "OR num_address LIKE '%" + search + "%'" ;
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			stationList = new ArrayList<>();
			JSONArray jsonArray = new JSONArray();
			JSONObject jsonObj = new JSONObject();
			
			while (rs.next()) {
				stationVO = new StationVO();
				stationVO.setCharge_name(rs.getString("charge_name"));
				stationVO.setAddress(rs.getString("address"));
				stationVO.setCido(rs.getString("cido"));
				stationVO.setClose_dt(rs.getString("close_dt"));
				stationVO.setAvailable_st_time(rs.getString("available_st_time"));
				stationVO.setAvailable_ed_time(rs.getString("available_ed_time"));
				stationVO.setSlow_charge_yn(rs.getString("slow_charge_yn"));
				stationVO.setQuick_charge_yn(rs.getString("quick_charge_yn"));
				stationVO.setQuick_charge_type(rs.getString("quick_charge_type"));
				stationVO.setSlow_charhe_cnt(rs.getInt("slow_charhe_cnt"));
				stationVO.setQuick_charge_cnt(rs.getInt("quick_charge_cnt"));
				stationVO.setParking_fee_yn(rs.getString("parking_fee_yn"));
				stationVO.setRoad_address(rs.getString("road_address"));
				stationVO.setNum_address(rs.getString("num_address"));
				stationVO.setManage_com(rs.getString("manage_com"));
				stationVO.setTel(rs.getString("tel"));
				stationVO.setLatitude(rs.getString("latitude"));
				stationVO.setLongitude(rs.getString("longitude"));
				stationVO.setData_dt(rs.getDate("data_dt"));
				stationList.add(stationVO);
			}
			String json = new Gson().toJson(stationList);
			System.out.println("size: " + stationList.size());
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
