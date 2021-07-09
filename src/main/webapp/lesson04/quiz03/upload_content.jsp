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
	<form method="post" action="/db/quiz03_insert">
	<div>
		<br>
		<h1>물건 올리기</h1>
		<br>
		<div class="d-flex justify-content-between mb-3">
			<select name="sellerId" class="custom-select w-25 mr-5">
				<%
					while(result.next()){
						int sellerId = Integer.valueOf(result.getInt("sellerId"));
				%>
			    <option value="<%= sellerId %>"><%= result.getString("nickname") %></option>
			    <%
					}
			    %>
			</select>
			<input type="text" name="title" class="form-control w-50 ml-3 mr-3" placeholder="제목">
				<div class="input-group ml-3 mr-3 w-25">
					  <input type="text" class="form-control" placeholder="가격" name="price" >
					  	<div class="input-group-append">
					    	<span class="input-group-text">원</span>
						</div>
				</div>
		</div>
		<div class="mb-3">
			<textarea class="form-control" name="description" rows="10"></textarea>
		</div>
		<div>
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text">이미지 Url</span>
			  </div>
			  <input type="text" class="form-control" name="picture">
			</div>
		</div>
		<button type="submit" class="btn btn-secondary w-100">저장</button>
	</div>
	</form>
</section>