<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메롱</title>
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
</head>
<style>
header {
	height: 10%;
}

nav {
	height: 6%;
}

.contents1 {
	height: 25%;
}

.contents2 {
	height: 50%;
}

footer {
	height: 9%;
}
</style>
<body>
	<div class="container">
		<header class="w-50 d-flex">
			<div
				class="text-success w-25 d-flex justify-content-center align-items-center"
				onClick="location.href='/lesson03/quiz02/main.jsp'">
				<h2>Melong</h2>
			</div>
			<div class="d-flex align-items-center">
				<jsp:include page="search.jsp"></jsp:include>
			</div>
		</header>
		<nav>
			<ul class="nav nav-fill w-50 d-flex justify-content-end">
				<li class="nav-item"><a href="#"
					class="nav-link font-weight-bold text-dark">멜롱챠트</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link font-weight-bold text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link font-weight-bold text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link font-weight-bold text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link font-weight-bold text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
			<jsp:include page="sort.jsp"></jsp:include>
		<footer>
			<hr>
			<address class="text-secondary ml-3">
				<small>Copyright 2021. melong All Rights Reserved.</small>
			</address>
		</footer>
	</div>
</body>
</html>