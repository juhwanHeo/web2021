<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<div class="top-bar">
		<div class="login-box">
			<a href="#">로그인</a>
		</div>
		<div class="search-box">
			<input type="text" name="search" id="search" placeholder="search...">
			<button class="icon" onclick="getCharge"><i class="fa fa-search"></i></button>
		</div>
	</div>
	<div class="left-bar">
	</div>
	
	<!-- 
	<ul class="navi">
        <li>menu01</li>
        <li>menu02</li>
        <li>menu03</li>
        <li>menu04</li>
    </ul>
	 -->
	 <div class="container">
		<div id="map">
		</div>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51514afad23b808dd3f78f3965d57b28"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51514afad23b808dd3f78f3965d57b28&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51514afad23b808dd3f78f3965d57b28&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51514afad23b808dd3f78f3965d57b28&libraries=services,clusterer,drawing"></script>
	<script>
		var positions = [
		    {
		        content: '<div>의암빙상장</div>', 
		        latlng: new kakao.maps.LatLng(37.8537615, 127.6870611)
		    },
		    {
		        content: '<div>공지천공영주차장</div>', 
		        latlng: new kakao.maps.LatLng(37.87546431, 127.7124393)
		    },
		    {
		        content: '<div>소양강공영주차장</div>', 
		        latlng: new kakao.maps.LatLng(37.88989801, 127.7207345)
		    },
		    {
		        content: '<div>애니메이션박물관</div>',
		        latlng: new kakao.maps.LatLng(37.89364529, 127.6902046)
		    }
		];
		
		function setMap(pos) {
			var latitude = pos.coords.latitude;
			var longitude = pos.coords.longitude;
			var options = {
					// center: new kakao.maps.LatLng(latitude, longitude),
					center: new kakao.maps.LatLng(37.8537615, 127.6870611),
					level: 5
				};

			var container = document.getElementById('map');
			var map = new kakao.maps.Map(container, options);
			
			// 마커
			for (var i = 0; i < positions.length; i ++) {
			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng // 마커의 위치
			    });

			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });

			    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
			    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    (function(marker, infowindow) {
			        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
			        kakao.maps.event.addListener(marker, 'mouseover', function() {
			            infowindow.open(map, marker);
			        });

			        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
			        kakao.maps.event.addListener(marker, 'mouseout', function() {
			            infowindow.close();
			        });
			    })(marker, infowindow);
			}
		}
		
		function error() {
			var options = {
					center: new kakao.maps.LatLng(33.450701, 126.570667),
					level: 3
				};
			var container = document.getElementById('map');
			var map = new kakao.maps.Map(container, options);
			alert("현재 위치 동의를 해주세요!!");
		}
		
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(setMap, error);
		} 
		
		function getCharge() {
			var search = $("#search").value;
			$.ajax({
	            type : "GET", //전송방식을 지정한다 (POST,GET)
				data : { search },
	            url : "GetCharge.jsp", //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
	            dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
	            success : function(data){
	                alert("통신 데이터 값 : " + data);
	            },
	            error : function(){
	                alert("통신실패!!!!");
	            }
	             
	        });
		}
	</script>
</body>
</html>