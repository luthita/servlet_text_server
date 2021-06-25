package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		Integer num1 = Integer.valueOf(number1);
		Integer num2 = Integer.valueOf(number2);

		//JSON(Javascript Object Notation) 으로 response를 구성하기
		// {"키" : {"키" : "밸류"}}
		// {"user_id": "luthita", "name" : "Yoon", "age" : "25"}
		response.setContentType("text/json");
		out.print("{\"addition\" : "+ (num1+num2) + 
				", \"subtraction\" : "+ (num1-num2) +
				", \"multiplication\" : "+ (num1*num2)+
				", \"divistion\" : "+(num1/num2) + "}");
		
	}
}