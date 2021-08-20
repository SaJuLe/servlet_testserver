<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>물건 정보</title>
</head>
<style>
.top {
	height: 180px;
	background-color: #E97341;
}

header {
	height: 60%;
	font-size: 50px;
}

nav {
	height: 40%;
}

.nav-item {
	font-size: 20px;
}

.contents {
	height: 65%;
}

.info {
	height: 309px;
}

.text {
	color: #E97341;
	font-size: 20px;
}

.text2 {
	font-size: 24px;
}

footer {
	height: 150px;
}

#submit {
	background-color: #E97341;
}

.noImage {
	width: 1400px;
	height: 480px;
	font-size: 60px;
}
</style>
<body>
	<div class="container">
		<div class="top">
			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="nav.jsp"></jsp:include>
		</div>
		<jsp:include page="info.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>