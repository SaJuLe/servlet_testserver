<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>물건 올리기</title>
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
	height: 420px;
	margin-left: 7%;
	margin-right: 7%;
	margin-top: 5%;
}

.text {
	font-size: 50px;
}

footer {
	height: 150px;
}
</style>
<body>
	<div class="container">
		<div class="top">
			<header
				class="text-weight-bold text-white d-flex justify-content-center align-items-center">
				HONG당무마켓 </header>
			<nav>
				<ul
					class="nav nav-fill w-100 h-100  d-flex justify-content-center align-self-center">
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="/lesson04/quiz03.jsp"
						class="nav-link font-weight-bold text-white w-100">리스트</a></li>
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="/lesson04/quiz03_2.jsp"
						class="nav-link font-weight-bold text-white w-100">물건 올리기</a></li>
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="#" class="nav-link font-weight-bold text-white w-100">마이
							페이지</a></li>
				</ul>
			</nav>
		</div>
		<div class="contents">
			<div class="text">물건 올리기</div>
			<div class="pt-3">
				<form method="get" action="/lesson04/quiz03_insert">
					<div class="d-flex w-100 justify-content-between">
						<select class="form-control col-3" name="nickname">
							<option>-아이디 선택-</option>
							<option>마로비</option>
							<option>최준</option>
							<option>아메리카노</option>
							<option>하구루</option>
							<option>빠다</option>
						</select> 
						
						<div class="col-7 d-flex justify-content-center">
							<input type="text" name="title" class="form-control w-75" value="제목">
						</div>
						
						<input type="text" class="form-control" name="price" value="가격">
						<div class="input-group-append">
							<span class="input-group-text" id="price">원</span>
						</div>

					</div>
					<div class="pt-3">
						<textarea rows="6" cols="100" class="form-control"></textarea>
					</div>

					<div class="input-group-prepend pt-3">
						<span class="input-group-text" id="url">이미지 url</span> <input
							type="text" class="form-control" name="url">
					</div>
					
					<div class="pt-3">
						<button type="submit" class="form-control input-group-text d-flex justify-content-center">저장</button>
					</div>
				</form>
			</div>
		</div>
		<footer class="d-flex justify-content-center align-items-center">
			<address class="text-secondary">
				<small>Copyright 2021. HONG All Rights Reserved.</small>
			</address>
		</footer>
	</div>
</body>
</html>