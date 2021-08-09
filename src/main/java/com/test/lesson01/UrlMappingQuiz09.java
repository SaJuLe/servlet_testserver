package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class UrlMappingQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String contents = request.getParameter("contents");
		
		out.print("<html><head><title>입사지원서</title></head><body>");
		out.print("<p><b>" + name + "</b>님 지원이 완료 되었습니다</p>");
		out.print("<h2><b>지원 내용</b></h2>");
		out.print(contents);
		out.print("</body></html>");
		
		
		out.print(""); // 이슈를 위한 불필요한 코드
	}
}
