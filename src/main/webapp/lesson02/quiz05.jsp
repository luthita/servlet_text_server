<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
	<form method="post" action="/lesson02/quiz05_1.jsp">
		<h1>길이 변환</h1>
		<div class="d-flex">
			<input type="text" class="form-control w-50" name="length">
			<span class="ml-2 mt-3">cm</span>
		</div><br>
		<label for="inch" >인치</label><input type="checkbox" name="unit" value="inch" id="inch">
		<label for="yard">야드</label><input type="checkbox" name="unit" value="yard" id="yard">
		<label for="fit">피트</label><input type="checkbox" name="unit" value="fit" id="fit" >
		<label for="meter">미터</label><input type="checkbox" name="unit" value="meter" id="meter">

		<br>
		<button type="submit" class="btn btn-success">변환하기</button>
	</form>
</div>
</body>
</html>