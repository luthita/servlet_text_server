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
public class PostMethodQuiz10 extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		PrintWriter out = response.getWriter();
		
		// 아이디, 패스워드를 입력안했을때 
		if(userId.isEmpty()) {
			out.println("<script>alert('아이디를 입력하세요');location.href='http://localhost:8080/lesson01/quiz10.html';</script>");
		}
		if(password.isEmpty()) {
			out.println("<script>alert('비밀번호를 입력하세요');location.href='http://localhost:8080/lesson01/quiz10.html';</script>");
		}
		
		// 아이디, 패스워드를 틀렸을때,
		if(userId.equals(userMap.get("id"))== false) {
			out.println("<script>alert('아이디가 틀렸습니다');location.href='http://localhost:8080/lesson01/quiz10.html';</script>");
		}
		if(password.equals(userMap.get("password"))== false) {
			out.println("<script>alert('비밀번호가 틀렸습니다.');location.href='http://localhost:8080/lesson01/quiz10.html';</script>");
		}
		
		// 아이디, 패스워드가 일치했을때
		if(userId.equals(userMap.get("id"))&&password.equals(userMap.get("password"))) {
			// html로 출력
			out.print("<html><head><title>로그인 성공</title></head><body>");
			out.print("<b>" + userMap.get("name") + "</b>님 환영합니다!");
			out.print("</body></html>");
		}
		
	}
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "luthita");
	        put("password", "1234");
	        put("name", "함석윤");
	    }
	};
}