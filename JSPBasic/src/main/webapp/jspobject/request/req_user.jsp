<%@page import="java.util.Arrays"%>
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
request.setCharacterEncoding("utf-8");
String name = request.getParameter("uname");
	String id = request.getParameter("uid");
	String pw = request.getParameter("upw");
	String[] hobby = request.getParameterValues("hobby");// 체크박스는 같은 명칭으로 데이터가 여런 넘어오므로 배열처리
	String blood = request.getParameter("blood");
	String area = request.getParameter("region");
%>

가입이름 : <%= name %><br/>
가입아이디 : <%= id %><br/>
가입 비밀번호 : <%= pw %><br/>
취미 : <%= Arrays.toString(hobby) %><br/><%-- 배열의 경우 Arrays.toString(출력배열)로 나열할수 있다. --%>
혈액형 : <%= blood %><br/>
사는지역 : <%= area %><br/>
</body>
</html>