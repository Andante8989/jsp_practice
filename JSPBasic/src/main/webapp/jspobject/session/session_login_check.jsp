<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println("id");
	System.out.println("pw");
	
	if(id.equals("abc1234")) {
		if(pw.equals("1111")) {
			session.setAttribute("session_id", "abc1234");
		}
	} else {
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>