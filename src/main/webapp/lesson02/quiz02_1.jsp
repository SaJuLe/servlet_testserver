<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<style>
.box {
	text-align: center;
	font-size: 54px;
}
</style>
<body>
<%
	SimpleDateFormat format = new SimpleDateFormat ("yyyy년 MM월dd일 / HH시 mm분 ss초");
	Date time = new Date();
	
	String type = request.getParameter("type");
	
	String nowTime = format.format(time);
	
	String[] dateArray = nowTime.split("/");
	
	String result = "";
	if (type.equals("time")) {
		result = "시간은 ".concat(dateArray[1]);
	} else if (type.equals("date")) {
		result = "날짜는 ".concat(dateArray[0]);
	}
%>
	<div class="box">
	현재 <%= result %> 입니다.
	</div>
</body>
</html>