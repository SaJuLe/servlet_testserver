package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Lesson04Quiz03Servlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String url = request.getParameter("url");
		
		mysqlService.connection();
		
		String insertQuery = "";
		
		if (url == "") {
			insertQuery = "insert into `used_goods` (sellerId, title, price, description)"
					+ "values ('" + nickname + "', '" + title + "', '" + price + "', '" + description + "')";
		} else {
			insertQuery = "insert into `used_goods` (sellerId, title, price, description, picture)"
					+ "values ('" + nickname + "', '" + title + "', '" + price + "', '" + description + "', '" + url + "')";
		}
		
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
