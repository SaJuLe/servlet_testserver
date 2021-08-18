package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01Servlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();

		String selectQuery = "select * from real_estate order by `id` DESC limit 10";

		PrintWriter out = response.getWriter();
		try {
			ResultSet result = mysqlService.select(selectQuery);
			while (result.next()) {
				out.print("매물 주소: " + result.getString("address") + ", ");
				out.print("면적: " + result.getInt("area") + ", ");
				out.print("타입: " + result.getString("type"));
				out.println();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
	}
}
