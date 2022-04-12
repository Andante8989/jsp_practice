<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
int a = 50;
%>
	
	<%= 10 %></br>
	<%= 3.14 %></br>
	<%= "Hello" %></br>
	<%= true %></br>
	<hr/>
	${10 }</br>
	${3.14 }</br>
	${"Hello" }</br>
	${true }</br>
	${a + 20 }</br>
	<hr/>
	${a}</br>
	${a < 10 }</br>
	${(a == 15) ? "a는 15와 같다."  : "a는 15와 다르다"}</br>
	${(a > 10) || (a != 15) }</br>
	<hr/>
	
</body>
</html>