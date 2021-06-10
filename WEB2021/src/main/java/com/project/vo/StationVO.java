package com.project.vo;

import java.sql.Date;

public class StationVO {
	private String station_id;
	private String charge_name;
	private String address;
	private String cido;
	private String close_dt;
	private String available_st_time;
	private String available_ed_time;
	private String slow_charge_yn;
	private String quick_charge_yn;
	private String quick_charge_type;
	private int slow_charge_cnt;
	private int quick_charge_cnt;
	private String parking_fee_yn;
	private String road_address;
	private String num_address;
	private String manage_com;
	private String tel;
	private String latitude;
	private String longitude;
	private Date data_dt;

	public String getStation_id() {
		return station_id;
	}

	public void setStation_id(String station_id) {
		this.station_id = station_id;
	}

	public String getCharge_name() {
		return charge_name;
	}

	public void setCharge_name(String charge_name) {
		this.charge_name = charge_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCido() {
		return cido;
	}

	public void setCido(String cido) {
		this.cido = cido;
	}

	public String getClose_dt() {
		return close_dt;
	}

	public void setClose_dt(String close_dt) {
		this.close_dt = close_dt;
	}

	public String getAvailable_st_time() {
		return available_st_time;
	}

	public void setAvailable_st_time(String available_st_time) {
		this.available_st_time = available_st_time;
	}

	public String getAvailable_ed_time() {
		return available_ed_time;
	}

	public void setAvailable_ed_time(String available_ed_time) {
		this.available_ed_time = available_ed_time;
	}

	public String getSlow_charge_yn() {
		return slow_charge_yn;
	}

	public void setSlow_charge_yn(String slow_charge_yn) {
		this.slow_charge_yn = slow_charge_yn;
	}

	public String getQuick_charge_yn() {
		return quick_charge_yn;
	}

	public void setQuick_charge_yn(String quick_charge_yn) {
		this.quick_charge_yn = quick_charge_yn;
	}

	public String getQuick_charge_type() {
		return quick_charge_type;
	}

	public void setQuick_charge_type(String quick_charge_type) {
		this.quick_charge_type = quick_charge_type;
	}

	public int getSlow_charge_cnt() {
		return slow_charge_cnt;
	}

	public void setSlow_charge_cnt(int slow_charge_cnt) {
		this.slow_charge_cnt = slow_charge_cnt;
	}

	public int getQuick_charge_cnt() {
		return quick_charge_cnt;
	}

	public void setQuick_charge_cnt(int quick_charge_cnt) {
		this.quick_charge_cnt = quick_charge_cnt;
	}

	public String getParking_fee_yn() {
		return parking_fee_yn;
	}

	public void setParking_fee_yn(String parking_fee_yn) {
		this.parking_fee_yn = parking_fee_yn;
	}

	public String getRoad_address() {
		return road_address;
	}

	public void setRoad_address(String road_address) {
		this.road_address = road_address;
	}

	public String getNum_address() {
		return num_address;
	}

	public void setNum_address(String num_address) {
		this.num_address = num_address;
	}

	public String getManage_com() {
		return manage_com;
	}

	public void setManage_com(String manage_com) {
		this.manage_com = manage_com;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public Date getData_dt() {
		return data_dt;
	}

	public void setData_dt(Date data_dt) {
		this.data_dt = data_dt;
	}

	@Override
	public String toString() {
		return "StationVO [charge_name=" + charge_name + ", address=" + address + ", cido=" + cido + ", close_dt="
				+ close_dt + ", available_st_time=" + available_st_time + ", available_ed_time=" + available_ed_time
				+ ", slow_charge_yn=" + slow_charge_yn + ", quick_charge_yn=" + quick_charge_yn + ", quick_charge_type="
				+ quick_charge_type + ", slow_charge_cnt=" + slow_charge_cnt + ", quick_charge_cnt=" + quick_charge_cnt
				+ ", parking_fee_yn=" + parking_fee_yn + ", road_address=" + road_address + ", num_address="
				+ num_address + ", manage_com=" + manage_com + ", tel=" + tel + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", data_dt=" + data_dt + "]";
	}

}
