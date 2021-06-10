<%@page import="com.project.vo.StationVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.project.vo.UserVO"%>
<%@ page import="java.sql.*"%>
<%@ include file="DBConn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String charge_name = request.getParameter("charge_name");
	String address = request.getParameter("address");
	String cido = request.getParameter("cido");
	String close_dt = request.getParameter("close_dt");
	String available_st_time = request.getParameter("available_st_time");
	String available_ed_time = request.getParameter("available_ed_time");
	String slow_charge_yn = request.getParameter("slow_charge_yn");
	String quick_charge_yn = request.getParameter("quick_charge_yn");
	String quick_charge_type = request.getParameter("quick_charge_type");
	String slow_charge_cnt = request.getParameter("slow_charge_cnt");
	String quick_charge_cnt = request.getParameter("quick_charge_cnt");
	String parking_fee_yn = request.getParameter("parking_fee_yn");
	String road_address = request.getParameter("road_address");
	String num_address = request.getParameter("num_address");
	String manage_com = request.getParameter("manage_com");
	String tel = request.getParameter("tel");
	String latitude = request.getParameter("latitude");
	String longitude = request.getParameter("longitude");
	
	StationVO stationVO = new StationVO();
	stationVO.setCharge_name(charge_name);
	stationVO.setAddress(address);
	stationVO.setCido(cido);
	stationVO.setClose_dt(close_dt);
	stationVO.setAvailable_st_time(available_st_time);
	stationVO.setAvailable_ed_time(available_ed_time);
	stationVO.setSlow_charge_yn(slow_charge_yn);
	stationVO.setQuick_charge_yn(quick_charge_yn);
	stationVO.setQuick_charge_type(quick_charge_type);
	stationVO.setSlow_charge_cnt(Integer.parseInt(slow_charge_cnt));
	stationVO.setQuick_charge_cnt(Integer.parseInt(quick_charge_cnt));
	stationVO.setParking_fee_yn(parking_fee_yn);
	stationVO.setRoad_address(road_address);
	stationVO.setNum_address(num_address);
	stationVO.setManage_com(manage_com);
	stationVO.setTel(tel);
	stationVO.setLatitude(latitude);
	stationVO.setLongitude(longitude);
	System.out.println("stationVO: " + stationVO);	
	PreparedStatement pstmt = null;
	try {
		String sql = "insert into station (charge_name, address, cido, close_dt, available_st_time, available_ed_time, slow_charge_yn, quick_charge_yn, quick_charge_type, slow_charge_cnt, quick_charge_cnt, parking_fee_yn, road_address, num_address, manage_com, tel, latitude, longitude, data_dt)" +
					"values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, date_format(sysdate(), '%Y-%m-%d'))";
		pstmt = conn.prepareStatement(sql);  
		pstmt.setString(1, stationVO.getCharge_name());
		pstmt.setString(2, stationVO.getAddress());
		pstmt.setString(3, stationVO.getCido());
		pstmt.setString(4, stationVO.getClose_dt());
		pstmt.setString(5, stationVO.getAvailable_st_time());
		pstmt.setString(6, stationVO.getAvailable_ed_time());
		pstmt.setString(7, stationVO.getSlow_charge_yn());
		pstmt.setString(8, stationVO.getQuick_charge_yn());
		pstmt.setString(9, stationVO.getQuick_charge_type());
		pstmt.setInt(10, stationVO.getSlow_charge_cnt());
		pstmt.setInt(11, stationVO.getQuick_charge_cnt());
		pstmt.setString(12, stationVO.getParking_fee_yn());
		pstmt.setString(13, stationVO.getRoad_address());
		pstmt.setString(14, stationVO.getNum_address());
		pstmt.setString(15, stationVO.getManage_com());
		pstmt.setString(16, stationVO.getTel());
		pstmt.setString(17, stationVO.getLatitude());
		pstmt.setString(18, stationVO.getLongitude());
		pstmt.executeUpdate();
		UserVO userVO = new UserVO();

		out.println("<script>alert('추가 완료'); history.back();</script>");
		/* if(userVO.getId() != null) {
			session.setAttribute("userVO", userVO);
			response.sendRedirect("/WEB2021/2021Ex1/project/jsp/index.jsp");
		}
		else {
			out.println("<script>alert('아이디와 패스워드가 다릅니다.'); history.back();</script>");
		} */
		
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
