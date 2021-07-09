<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<section class="contents">
<%
		// db 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "select A.*, B.*"
				+" from seller AS A"
				+" inner join used_goods AS B"
				+" on A.id= B.sellerId";
		ResultSet result = mysqlService.select(query);
	%>
	<div class="container">
		<div class="row mt-4">
			<%
				while(result.next()){
			%>
			<div class="col-4 p-3 itembox" style="border:2px solid #ff8b60">
				<%
					if(result.getString("picture") == null || result.getString("picture").replace(" ","") == null){
				%>		
						<div class="d-flex justify-content-center align-items-center" style="max-width: 100%; height:200px;">
							<h3 class="text-secondary">이미지 없음</h3>
						</div>
						
				<% 
					} else{
				%>
						<img src="<%= result.getString("picture") %>" alt="물품 사진" style="max-width: 100%; height:200px;"><br>
				<%		
					}
				%>
				
				<strong><%= result.getString("title")%></strong><br>
				<span class="text-secondary"><%=result.getInt("price") %>원</span><br>
				<span class="name-color"><%= result.getString("nickname") %></span>
			</div>
			<%
				}
			%>
		</div>
	</div>
</section>