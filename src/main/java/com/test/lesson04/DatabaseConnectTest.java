package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/test")
public class DatabaseConnectTest extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();	// DB 연결
		
		String query = "select * from used_goods";
		
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlService.select(query);
			while(resultSet.next()) {
				out.println("id : " + resultSet.getInt("id"));
				out.println("sellerId : " + resultSet.getInt("sellerId"));
				out.println("title : " + resultSet.getString("title"));
				out.println("description : "+ resultSet.getString("description"));
				out.println("price + " + resultSet.getInt("price"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();	// DB 연결해제
	}
}
