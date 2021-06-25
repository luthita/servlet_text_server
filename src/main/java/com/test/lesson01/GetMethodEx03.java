package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		//JSON(Javascript Object Notation) 으로 response를 구성하기
		// {"키" : {"키" : "밸류"}}
		// {"user_id": "luthita", "name" : "Yoon", "age" : "25"}
		response.setContentType("text/json");
		out.print("{\"user_id\" : \"" + userId 
				+"\", \"name\" : \"" + name 
				+ "\",\"age\" : "+ Integer.valueOf(age) + "}");
	}
}
