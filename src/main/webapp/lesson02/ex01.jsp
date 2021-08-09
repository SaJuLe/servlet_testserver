<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- html 주석: F12(소스보기)로 볼 수 있음 -->
	<%-- jsp 주석: F12(소스보기)로 볼 수 없음 --%>
	
<% 
	// 자바 주석 자바 문법 시작
	// scriptlet
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum = sum + i;
	}
%>

	<strong>합계: </strong>
	<input type="text" value="<%= sum %>">
	<br>
	
<%! 
	// field
	private int num = 100;
	
	// method
	public String getHelloWorld() {
		return "Hello World!!!";
	}
%>

<%= getHelloWorld() %>
<br>
<%= num + 200 %>


</body>
</html>