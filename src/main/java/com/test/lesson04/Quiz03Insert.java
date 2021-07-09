package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz03_insert")
public class Quiz03Insert extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		Integer price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		
		
		MysqlService mysqlService = MysqlService.getInstance(); // DB 연결을 위한 객체 생성(싱글턴이라 한개만 생성됨)
		mysqlService.connection(); // DB 연결
		
		//-- 쿼리 수행
		String insertQuery = "insert into `used_goods`(`sellerId`,`title`, `price`, `description`, `picture`)"
				+ "values ('" + sellerId + "', '" + title + "', '" + price + "', '" + description + "', '" + picture + "');";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mysqlService.disconnect(); // DB 해제
		
		// 목록 화면 이동
		response.sendRedirect("/lesson04/quiz03/list_template.jsp");
	}
}