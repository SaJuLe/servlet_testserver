<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="contents d-flex mt-3">
	<%
	String number = request.getParameter("id");
	MysqlService mysqlService = MysqlService.getInstance();

	mysqlService.connection();

	String selectQuery1 = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId where B.id = "
			+ number;
	ResultSet result = mysqlService.select(selectQuery1);

	while (result.next()) {
		if (result.getString("picture") == (null)) {
	%>
	<div
		class="noImage text-secondary d-flex justify-content-center align-items-center">이미지
		없음</div>
	<%
	} else {
	%>
	<div>
		<img src="<%=result.getString("picture")%>" alt="사진" width="640"
			height="480">
	</div>
	<%
	}
	%>
	<div class="ml-3 w-100 h-100">
		<div>
			<h2><%=result.getString("title")%></h2>
		</div>
		<div>
			<h3 class="text-secondary"><%=result.getInt("price")%>원
			</h3>
		</div>
		<div>
			<p class="text"><%=result.getString("nickname")%></p>
		</div>
		<div class="info">
			<p class="text2"><%=result.getString("description")%></p>
		</div>
		<form method="post" action="/lesson04/quiz03_delete?id=<%=number%>">
			<button type="submit" id="submit"
				class="form-control input-group-text d-flex justify-content-center align-items-end">
				삭제하기
			</button>
		</form>
	</div>
	<%
	}
	mysqlService.disconnect();
	%>
</div>