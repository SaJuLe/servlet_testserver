package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06") 
public class UrlMappingQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		Integer num1 = Integer.valueOf(request.getParameter("number1"));
		Integer num2 = Integer.valueOf(request.getParameter("number2"));
		
		int addition = num1 + num2;
		int subtraction = num1 - num2;
		int multiplication = num1 * num2;
		int division = num1 / num2;
		
		out.print("{\"addition\": " + addition + ", \"subtraction\": " + subtraction
				+ ", \"multiplication\": " + multiplication + ", \"division\": " + division + "}");
	}
}
