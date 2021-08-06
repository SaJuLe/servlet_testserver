package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03") 
public class UrlMappingQuiz03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("기사 입력 시간 yyyy/MM/dd HH:mm:ss초");
		
		out.print("<html><head><title>기사</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print(sdf.format(now) + "<br>");
		out.print("<hr>");
		out.print("끝");
		out.print("</body></html>");
	}
}
