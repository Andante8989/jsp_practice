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
 String photo = request.getParameter("photo");
%>

선택은: <%= photo %> <br/>

<%
if (photo.equals("강아지")) { 
	out.println("<img src='01.png'>"); 
 } else if(photo.equals("풍차")) {
    out.println("<img src='02.png'>");
    } 
%>
</body>
</html>