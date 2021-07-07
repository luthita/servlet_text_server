<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// db 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "select * from `user`";
		ResultSet result = mysqlService.select(query);
	%>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
				while(result.next()) {
					
				
			%>
			<tr>
				<td><%= result.getInt("id") %></td>
				<td><%= result.getString("name") %></td>
				<td><%= result.getString("yyyymmdd") %></td>
				<td><%= result.getString("email") %></td>
				<td><%= result.getString("introduce") %></td>
				<td><a href="/lesson04/ex02_delete?id=<%= result.getInt("id") %>">삭제하기</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<%
		// db 연결해제
		mysqlService.disconnect();
	%>
</body>
</html>