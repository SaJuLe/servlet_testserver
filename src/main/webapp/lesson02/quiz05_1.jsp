<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>길이 변환</title>
</head>
<style>
	.text1 {
		font-weight: bold;
		font-size: 42px;
	}
	.text2 {
		font-size: 26px;
	}
	.text3 {
		font-size: 34px;
	}
</style>
<body>
<%	
	String str = "0";
	String[] units = {"in", "yd", "ft", "m"};
	double[] unitsSol = {0.3937, 0.01093613, 0.03280839, 0.01};
	
	str = request.getParameter("cm");
	double cm = Double.valueOf(str);

	String[] unitArr = request.getParameterValues("unit");
%>
	<div class="container">
		<div class="text1">길이 변환 결과</div>
		<div class="text2 mt-2"><%= cm %>cm</div>
		<hr>
		<div class="text3">
		<%
			for (int i = 0; i < units.length; i++) {
				if (Arrays.asList(unitArr).contains(units[i])) {
					double result = cm * unitsSol[i];
					
					out.print(result + " " + units[i] + "<br>");
				}
			}
		%>
		</div>
	</div>
</body>
</html>