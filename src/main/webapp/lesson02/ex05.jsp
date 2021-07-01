<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		out.println(today);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		// Calendar  -> Date 객체로 변환 후 format 적용
		out.println("오늘 날짜 : " + sdf.format(today.getTime())+ "<br>");
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		// 어제 날짜 구하기
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1);
		out.println("어제 날짜 : " + sdf2.format(yesterday.getTime()) + "<br>");
		
		yesterday.add(Calendar.MONTH, -1); // 한달 전
		out.println("한달전 : " + sdf2.format(yesterday.getTime()) + "<br>");
		
		yesterday.add(Calendar.YEAR, -1); // 일년 전
		out.println("1년 전 : " + sdf2.format(yesterday.getTime())+ "<br>");
		
		// 두 날짜의 비교
		// compareTo 	"2021-06-10" 	"2021-07-11"	1 0 -1
		int result = today.compareTo(yesterday);			// 기준값(today)가 큰 경우, 1
															// 값이 같은 경우, 0
															// 기준값(today)가 작은 경우 -1
		if(result > 0){
			out.print("today가 더 크다.");
		} else if(result == 0){
			out.print("두 날짜는 같다");
		} else{
			out.print("yesterday가 더 크다.");
		}
	%>
</body>
</html>