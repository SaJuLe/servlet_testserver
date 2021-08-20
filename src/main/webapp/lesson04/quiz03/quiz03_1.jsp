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
<script type="text/javascript">
	$(document).ready(function() {

		$('#submit').on('click', function(event) {

			var nickname = $("#nickname").val();
			var title = $("#title").val();
			var price = $("#price").val();
			var description = $("#description").val();
			var url = $("#url").val();

			if (!($.isNumeric(price))) {
				alert("가격에는 숫자만 입력하세요");
				return false;
			}
			if (nickname == 'choose' || title == '제목' || price == '가격' || description == '') {
				alert("입력안한 정보가 있습니다");
				return false;
			}
			$('#frm').attr('action', '/lesson04/quiz03_insert').submit();
		});
	})
</script>
<body>
	<div class="container">
		<div class="top">
			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="nav.jsp"></jsp:include>
		</div>
		<jsp:include page="upload.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>