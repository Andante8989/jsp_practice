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
	String song = request.getParameter("song");
	
 	if (song.equals("스윗소로우")) {
 		response.sendRedirect("https://www.youtube.com/watch?v=07KCpdHfTUw");
 	} else if (song.equals("소설")) {
 		response.sendRedirect("https://www.youtube.com/watch?v=W-n6QpfDCi4");
 	} else if (song.equals("김정운")) {
 		response.sendRedirect("https://www.youtube.com/watch?v=agICwU67em4");
 	}
%>
</body>
</html>