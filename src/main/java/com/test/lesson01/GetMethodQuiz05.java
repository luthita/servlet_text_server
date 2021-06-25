package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String number = request.getParameter("number");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		out.print("<html><head></head><body>");
		for(int i= 1; i <=9; i++) {
			out.println("<li>" + Integer.valueOf(number) + " X " + i + " = " + Integer.valueOf(number)*i + "</li>");
		}
		out.print("</body></html>");
	}
}