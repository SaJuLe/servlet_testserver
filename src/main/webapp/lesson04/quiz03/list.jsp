<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="contents d-flex justify-content-between flex-wrap">
	<%
	MysqlService mysqlService = MysqlService.getInstance();

	mysqlService.connection();

	String selectQuery1 = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId order by B.id DESC";
	ResultSet result = mysqlService.select(selectQuery1);

	while (result.next()) {
	%>
	<div class="side mt-3"
		OnClick="location.href='/lesson04//quiz03/quiz03_2.jsp?id=<%=result.getInt("B.id")%>'">
		<div class="video m-2">
			<%
			if (result.getString("picture") == (null)) {
			%>
			<div
				class="noImage text-secondary d-flex justify-content-center align-items-center">이미지
				없음</div>
			<%
			} else {
			%>
			<img src="<%=result.getString("picture")%>" alt="사진" width="320"
				height="240"><br>
			<%
			}
			%>
			<div class="mt-2">
				<b><%=result.getString("title")%></b><br> <small><%=result.getInt("price")%></small><br>
				<b class="text"><%=result.getString("nickname")%></b>
			</div>
		</div>
	</div>
	<%
	}
	mysqlService.disconnect();
	%>
</div>