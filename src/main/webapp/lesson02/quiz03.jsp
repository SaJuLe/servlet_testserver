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
<title>체격 조건</title>
</head>
<style>
	.title {
		font-size: 40px;
	}
</style>
<body>
	<div class="container">
		<div class="title">
			체격 조건 입력
		</div>
		<form method="post" action="/lesson02/quiz03_1.jsp">
			<div class="form-group d-flex">
				<input type="text" class="form-control col-2" name="height">
				<div class="cm pt-3 pl-2 pr-2">
				 cm
				</div>
				<input type="text" class="form-control col-2" name="weight">
				<div class="kg pt-3 pl-2 pr-2">
				 kg
				</div>
				<button type="submit" class="form-control btn-info col-1">계산</button>
			</div>
		</form>	
	</div>
</body>
</html>