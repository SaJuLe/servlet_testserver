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
<title>즐겨찾기</title>
</head>
<body>
	<%
	MysqlService mysqlService = MysqlService.getInstance();

	mysqlService.connection();

	String selectQuery = "select * from bookmark";
	ResultSet result = mysqlService.select(selectQuery);
	%>
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="col-3 text-center">사이트</th>
					<th class="col-7 text-center">사이트 주소</th>
					<th class="col-2 text-center">삭제</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%
						while (result.next()) {	
					%>
				
				<tr>
					<td class="text-center"><%= result.getString("name") %></td>
					<td class="text-center text-primary"><a href="<%= result.getString("url") %>"><%= result.getString("url") %></a></td>
					<td class="text-center text-primary"><a href="/lesson04/quiz02_delete?id=<%= result.getInt("id") %>">삭제하기</a></td>
				</tr>
				<%
					}
				%>
				</tr>
			</tbody>
		</table>
		<div>
			<button type="submit" class="form-control btn-success mt-3" onclick="location.href='/lesson04/quiz02_1.jsp'">링크 추가하기</button>
		</div>
	</div>
</body>
</html>