<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%--
		Flow
		
		유저 추가 ) ex02.jsp ( input 폼) -> ex02_insert(서블릿, insert 쿼리) -> ex02_1.jsp(유저 목록, select 쿼리)
	
	 --%>
	<form method="post" action="lesson04/ex02_insert">
		<p>
			<strong>이름</strong>
			<input type="text" name="name">
		</p>
		<p>
			<strong>생년월일</strong>
			<input type="text" name="birth">
		</p>
		<p>
			<strong>이메일</strong>
			<input type="text" name="email">
		</p>
		<p>
			<strong>자기소개</strong><br>
			<textarea name="introduce" rows="5" cols="50"></textarea>
		</p>
		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>