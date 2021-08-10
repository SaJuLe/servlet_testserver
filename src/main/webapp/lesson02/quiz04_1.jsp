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
<title>계산기</title>
</head>
<style>
	.text1 {
		font-size: 36px;
	}
	.text2 {
		font-size: 50px;
	}
</style>
<body>
<%
	String number1 = request.getParameter("num1");
	String number2 = request.getParameter("num2");
	String alpha = request.getParameter("alpha");
	
	String front = number1.concat(" " + alpha + " ").concat(number2);
	double result = 0;
	
	double num1 = Integer.valueOf(number1);
	double num2 = Integer.valueOf(number2);
	
	if (alpha.equals("+")) {
		result = num1 + num2;
	} else if (alpha.equals("-")) {
		result = num1 - num2;
	} else if (alpha.equals("*")) {
		result = num1 * num2;
	} else if (alpha.equals("/")){
		result = num1 / num2;
	}
	
%>
	<div class="container">
		<div class="text1">계산 결과</div>
		<div class="text2"><%= front %> = <span class="text-info"><%= result %></span></div>
	</div>
</body>
</html>