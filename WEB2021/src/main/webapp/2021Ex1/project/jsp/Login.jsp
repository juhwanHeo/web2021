<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전기차 충전소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"rel="stylesheet">

</head>
<body>
	<form action="api/LoginAction.jsp" method="post" class="loginForm">
		<h2>로그인</h2>
		<div class="idForm">
			<input type="text" class="id" name="id" placeholder="ID">
		</div>
		<div class="passForm">
			<input type="password" class="pw" name="pw" placeholder="PW">
		</div>
		<button type="submit" class="btn">LOG IN</button>
		<div class="bottomText">
			<a href="index.jsp"><i class="fa fa-home fa-2x"></i> 홈으로</a>
		</div>
	</form>
</body>
</html>