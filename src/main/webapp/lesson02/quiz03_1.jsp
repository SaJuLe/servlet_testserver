<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>BMI 계산</title>
</head>
<style>
	.text1 {
		font-size: 38px;
	}
	.text2 {
		font-size: 50px;
	}
</style>
<body>
<%
	int height = Integer.valueOf(request.getParameter("height"));
	int weight = Integer.valueOf(request.getParameter("weight"));
	
	double a = (double)height / 100.0;
	double bmi = (double)weight / (a * a);
	
	String result = "";
	
	if (bmi >= 31) {
		result = "비만";
	} else if (bmi > 26) {
		result = "과체중";
	} else if (bmi > 21) {
		result = "정상";
	} else {
		result = "저체중";
	}
%>
	<div class="container">
		<div class="text1">BMI 측정 결과</div>
		<div class="text2">당신은 <span class="text-info"><%= result %></span> 입니다</div>
		<div class="text3">BMI 수치 : <%= bmi %></div>
	</div>
</body>
</html>