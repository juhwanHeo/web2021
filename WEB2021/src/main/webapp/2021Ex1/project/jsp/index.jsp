<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.project.vo.UserVO"%>
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

	<jsp:useBean id="user" class="com.project.vo.UserVO" scope="page"/> 
	<!-- loading https://icons8.com/preloaders/ -->
	<div class="wrap-loading display-none"><img src="${pageContext.request.contextPath}/img/loading3.gif" /></div> 
	<div class="header">
		<div class="login-box">
			<%
				UserVO userVO = (UserVO) session.getAttribute("userVO");
				if(userVO == null) {
			%>
				<a href="Login.jsp" class="no-login">로그인</a>
			<% } else { %>
				<jsp:setProperty name="user" property="name"  value="<%= userVO.getName() %>"/>
				<div class="login">
					<span><jsp:getProperty name="user" property="name" />님 환영합니다!!</span> <br>
					<a href="StationAddForm.jsp" style="border-right: 2px solid black; padding-right:4px;">관리자 페이지</a>  
					<a href="api/LogoutAction.jsp">로그아웃</a>
				</div> 
			<% } %>
		</div>
		<div class="search-box">
			<input type="text" name="search" id="search" placeholder="search...">
			<button class="icon" onclick="searchStation();"><i class="fa fa-search"></i></button>
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
	
	function searchStation() {
		var search = $("#search").val();
		//search = !!search ? search : 'all'  
    	window.location = "SearchMap.jsp?addr=" + search;
	}
	
	var geocoder = new kakao.maps.services.Geocoder();
	function success(pos) {
		var crd = pos.coords;
		lat = crd.latitude;
		lon = crd.longitude;
		getLocation(lat, lon, function (result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var addr = result[0].address.region_2depth_name
				addr = !!addr ? addr : '';
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
    	window.location = "SearchMap.jsp?addr=";
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
                if(!search) {
	        		$('.card-title-local-name').html('정보 없음 지역');
	        		$('.card-title-local-cnt').html('정보 없음 개 등록');
                }
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
			console.log('ERROR(' + err.code + '): ' + err.message);
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