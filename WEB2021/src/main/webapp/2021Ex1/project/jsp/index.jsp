<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전기차 충전소</title>
	<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	
</head>
<body id="index">
	<!-- loading https://icons8.com/preloaders/ -->
	<div class="wrap-loading display-none"><img src="${pageContext.request.contextPath}/img/loading3.gif" /></div> 
	<div class="header">
		<div class="login-box">
			<a href="#">로그인</a>
		</div>
		<div class="search-box">
			<input type="text" name="search" id="search" placeholder="search...">
			<button class="icon" onclick=""><i class="fa fa-search"></i></button>
		</div>
	</div>
	<div class="main-container">
		<div class="card-container">
		    <div class="cards">
		        <div class="card card-all">
		            <div class="card-info">
		                <span class="card-category">전기차</span>
		                <h3 class="card-title">전체 </h3>
		                <hr>
		                <span class="card-title card-title-all">로딩중</span>
		            </div>
		        </div>
		        <div class="card card-local">
		            <div class="card-info">
		                <span class="card-category">전기차</span>
		                <h3 class="card-title card-title-local-name">로딩중</h3>
		                <hr>
		                <span class="card-title card-title-local-cnt">로딩중</span>
		            </div>
		        </div>
		        
		    </div>
		</div>
		<hr>
		<div>
		
		
		</div>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51514afad23b808dd3f78f3965d57b28&libraries=services"></script>
	<script>
	var geocoder = new kakao.maps.services.Geocoder();
	function success(pos) {
		var crd = pos.coords;
		console.log('위도 : ' + crd.latitude);
		console.log('경도 : ' + crd.longitude);
		lat = crd.latitude;
		lon = crd.longitude;
		getLocation(lat, lon, function (result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var addr = result[0].address.region_2depth_name
	        	console.log('result[0].road_address: ' + result[0].road_address);
	        	console.log('result[0].road_address: ' + result[0].address.address_name);
	        	console.log('result[0]: ' + JSON.stringify(result[0]));
	        	window.location = "SearchMap.jsp?addr=" + addr;
			}   
		});
	};

	function error(err) {
		console.warn('ERROR(' + err.code + '): ' + err.message);
	};
	
	function getLocation(lat, lon, callback) {
		geocoder.coord2Address(lon, lat, callback);
	}
	
	$(".card-local").click(function() {
		navigator.geolocation.getCurrentPosition(success, error);
	})
	
	$(".card-all").click(function() {
    	window.location = "SearchMap.jsp?addr=all";
	})
	
	function getCnt(search) {
		$.ajax({
            type : "GET",
			data : { search },
            url : "api/GetStationCnt.jsp",
            dataType : "json",
            success : function(data){
            	setTimeout(function() {
		        	console.log("data: " + JSON.stringify(data)); 
		        	if(!search) {
		        		$('.card-title-all').html('총 ' + data.cnt + '개 등록');
		        	}
		        	else {
		        		$('.card-title-local-name').html(search + ' 지역');
		        		$('.card-title-local-cnt').html('총 ' + data.cnt + '개 등록');
		        	}
            	}, 1000);
            },
			beforeSend : function() {
				var width = 0;
				var height = 0;
				var left = 0;
				var top = 0;
				width = 256;
				height = 256;
				top = ($(window).height() - width) / 2
						+ $(window).scrollTop();
				left = ($(window).width() - height) / 2
						+ $(window).scrollLeft();
				if ($(".wrap-loading").length != 0) {
					$(".wrap-loading").css({
						"top" : top + "px",
						"left" : left + "px"
					});
					$('.wrap-loading').removeClass('display-none');
				}
			},
            complete : function() {
            	setTimeout(function() {
					$('.wrap-loading').addClass('display-none');
            	}, 1000);
				
			},
            error : function(){
                alert("통신실패!!!!");
				$('.wrap-loading').addClass('display-none');
            }
             
        });
	}
	$(document).ready(function(){
		function success(pos) {
			var crd = pos.coords;
			lat = crd.latitude;
			lon = crd.longitude;
			getLocation(lat, lon, function (result, status) {
				if (status === kakao.maps.services.Status.OK) {
					var addr = result[0].address.region_2depth_name
		        	getCnt(addr);
				}   
			});
		};

		function error(err) {
			console.warn('ERROR(' + err.code + '): ' + err.message);
		};
		
		function getLocation(lat, lon, callback) {
			geocoder.coord2Address(lon, lat, callback);
		}
		navigator.geolocation.getCurrentPosition(success, error);
		
		getCnt('');
	});
	</script>
</body>
</html>