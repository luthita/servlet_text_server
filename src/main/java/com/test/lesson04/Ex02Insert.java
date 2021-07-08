package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class Ex02Insert extends HttpServlet {
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB연결
		
		// insert query 수행
		String query = "insert into `user` (`name`, `yyyymmdd`, `email`, `introduce`) values"
					+ "('" + name + "', '" + yyyymmdd + "', '" + email + "', '"+ introduce +"')";
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();	// DB 연결 해제
		
		// 목록 화면 이동 => 리다이렉트(redirect)
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}
}
