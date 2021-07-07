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

@WebServlet("/db/quiz01")
public class quiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "	select *"
				+ "		 	from real_estate"
				+ "			order by id desc"
				+ "			limit 10";
				
		
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlService.select(query);
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area =  resultSet.getInt("area");
				String type = resultSet.getString("type"); 
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnect();	// DB 연결해제
	}
}
