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
<title>길이 변환</title>
</head>
<style>
	.title {
		font-size: 40px;
	}
</style>
<body>
	<div class="container">
		<div class="title">
			길이 변환
		</div>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="form-group">
				<div class="d-flex">
					<input type="text" class="form-control col-2 mr-2" name="cm">
					<div class="pt-3">cm</div>
				</div>
				<div class="pt-2">
					<label for="inch">인치</label>
					<input type="checkbox" name="unit" id="inch" value="in">
					
					<label for="yard">야드</label>
					<input type="checkbox" name="unit" id="yard" value="yd">
					
					<label for="feet">피트</label>
					<input type="checkbox" name="unit" id="feet" value="ft">
					
					<label for="meter">미터</label>
					<input type="checkbox" name="unit" id="meter" value="m">
				</div>
				<button type="submit" class="form-control btn-success col-1">변환하기</button>
			</div>
		</form>	
	</div>		
</body>
</html>