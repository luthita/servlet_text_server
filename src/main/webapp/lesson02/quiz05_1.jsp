<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int length = Integer.valueOf(request.getParameter("length"));
		String unitArr[] = request.getParameterValues("unit");	
	
		double inch = length * 0.393701;
		double yard = length * 0.010936;
		double fit = length * 0.032808;
		double meter = length * 0.01;
	
	%>
	
	<h1>길이 변환 결과</h1>
	<h3><%= length %>cm</h3>
	<hr>
	<h3>
		<%
			if(unitArr != null){
				String result = "";
				for(String unit : unitArr){
					if(unit.equals("inch")){
						out.print(inch + "in <br>");
					} else if(unit.equals("yard")){
						out.print(yard + "yd <br>");
					} else if(unit.equals("fit")){
						out.print(fit + "ft <br>");
					} else if(unit.equals("meter")){
						out.print(meter + "m <br>");
					}
				}
			}
		%>
		
	</h3>
</body>
</html>