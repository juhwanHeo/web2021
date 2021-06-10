<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전기차 충전소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/station-add.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"rel="stylesheet">

</head>
<body>
	<form action="api/StationAddAction.jsp" method="post" class="stationForm">
		<h2>충전소 추가</h2>
		<div class="textForm">
			<label for="charge_name">충전소 명</label>
			<input type="text" id="charge_name" class="input_text" name="charge_name" placeholder="xxx 충전소" required>
		</div>
		<div class="textForm">
			<label for="address">주소</label>
			<input type="text" id="address" class="input_text" name="address" placeholder="xx시 xx읍 ...">
		</div>
		<div class="textForm">
			<label for="cido">시도</label>  
			<select name="cido" id="cido">
				<option value="강원도">강원도</option>
				<option value="경기도">경기도</option>
				<option value="경상남도">경상남도</option>
				<option value="경상북도">경상북도</option>
				<option value="광주광역시">광주광역시</option>
				<option value="대구광역시">대구광역시</option>
				<option value="서울특별시">서울특별시</option>
				<option value="울산광역시">울산광역시</option>
				<option value="인천광역시">인천광역시</option>
				<option value="전라남도">전라남도</option>
				<option value="전라북도">전라북도</option>
				<option value="제주특별자치도">제주특별자치도</option>
				<option value="충청남도">충청남도</option>
				<option value="충청북도">충청북도</option>
			</select>
			
		</div>
		<div class="textForm">
			<label for="close_dt">쉬는날</label>
			<input type="text" id="close_dt" class="input_text" name="close_dt" placeholder="연중무휴 or 없음 OR 매주 월...">
		</div>
		
		<div class="textForm">
			<label for="available_st_time">이용가능 시작시간</label>
			<input type="time" id="available_st_time" class="input_text" name="available_st_time">
		</div>
		
		<div class="textForm">
			<label for="available_ed_time">이용가능 종료 시간</label>
			<input type="time" id="available_ed_time" class="input_text" name="available_ed_time">
		</div>
		
		<div class="textForm">
			<label for="slow_charge_yn">완속충전 여부</label><br>
			<input type="radio" id="slow_charge_yn" name="slow_charge_yn" value="Y" checked> Y <br>
			<input type="radio" id="slow_charge_yn" name="slow_charge_yn" value="N"> N
		</div>
		
		<div class="textForm">
			<label for="quick_charge_yn">고속충전 여부</label><br>
			<input type="radio" id="quick_charge_yn" name="quick_charge_yn" value="Y" checked> Y <br>
			<input type="radio" id="quick_charge_yn" name="quick_charge_yn" value="N"> N
		</div>
		
		<div class="textForm">
			<label for="quick_charge_type">고속충전기 타입</label>
			<input type="text" id="quick_charge_type" class="input_text" name="quick_charge_type" placeholder="AC3상,DC...">
		</div>
		
		<div class="textForm">
			<label for="slow_charge_cnt">완속 충전기 개수</label>
			<input type="number" min="0" id="slow_charge_cnt" class="input_text" name="slow_charge_cnt" value="0" required>
		</div>
		
		<div class="textForm">
			<label for="quick_charge_cnt">고속 충전기 개수</label>
			<input type="number" min="0" id="quick_charge_cnt" class="input_text" name="quick_charge_cnt" value="0" required>
		</div>
		
		<div class="textForm">
			<label for="parking_fee_yn">주차 요금 여부</label><br>
			<input type="radio" id="parking_fee_yn" name="parking_fee_yn" value="Y" checked> Y <br>
			<input type="radio" id="parking_fee_yn" name="parking_fee_yn" value="N"> N
		</div>
		
		<div class="textForm">
			<label for="road_address">도로명 주소</label>
			<input type="text" id="road_address" class="input_text" name="road_address" placeholder="xx도 xx시 xxx로">
		</div>
		<div class="textForm">
			<label for="num_address">지번 주소</label>
			<input type="text" id="num_address" class="input_text" name="num_address" placeholder="xx도 xx시 xx구 xx동 123-123">
		</div>
		<div class="textForm">
			<label for="manage_com">관리업체명</label>
			<input type="text" id="manage_com" class="input_text" name="manage_com" placeholder="환경부">
		</div>
		<div class="textForm">
			<label for="tel">관리업체 전화번호</label>
			<input type="tel" id="tel" class="input_text" name="tel" placeholder="1234-5678">
		</div>
		<div class="textForm">
			<label for="latitude">위도</label>
			<input type="text" id="latitude" class="input_text" name="latitude" placeholder="37.123456" required>
		</div>
		<div class="textForm">
			<label for="longitude">경도</label>
			<input type="text" id="longitude" class="input_text" name="longitude" placeholder="127.123456" required>
		</div>
		<div class="bottom">
			<button type="submit" class="btn">추가</button>
			<div class="bottomText">
				<a href="index.jsp"><i class="fa fa-home fa-2x"></i> 홈으로</a>
			</div>
		</div>
	</form>
</body>
</html>