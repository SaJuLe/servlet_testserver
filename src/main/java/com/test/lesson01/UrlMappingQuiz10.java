package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class UrlMappingQuiz10 extends HttpServlet {
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "superjun02");
	        put("password", "courtois02@");
	        put("name", "이상준");
	    }
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		//수정
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		out.print("<html><head><title>정보</title></head><body>");
		if (!(userMap.get("id").equals(userId))) {
			out.print("id가 일치하지 않습니다");
		} else if (!(userMap.get("password").equals(password))) {
			out.print("password가 일치하지 않습니다");
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		out.print("</body></html>");
	}
}