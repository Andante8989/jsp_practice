<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% System.out.println("콘솔에 메세지를 찍을때는 System.out.println()을 씁니다.");
	out.println("콘솔이 아닌 브라우저 화면에 메시지를 찍을때는 out.println()을 씁니다.");  %>
	<h2>구구단 2단</h2><hr/>
	<% 
		// 구구단 2단을 브라우저에 출력해주세요.
		for(int i = 1; i < 10; i++) {
			out.println("2 * " + i + " = " + 2 * i + "<br/>");
		}
	%>
	<hr/>
	<!-- 반복문과 조건문을 이용하여 구구단 홀수단 (3, 5, 7, 9)을 화면에 출력해주세요 -->
	<%
		for(int a = 2; a < 10; a++) {
			if(a % 2 != 0) {
				out.println("<h2>" + a + "단 출력하기</h2>");
				for(int b = 1; b < 10; b++) {
					out.println(a + " * " + b + " = " + a*b + "<br/>");
				}
				out.println("<hr/>");
			}
		}
	
	%>
</body>
</html>