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
	String strAge = request.getParameter("age");
    System.out.println(strAge); // 콘솔에서 확인
    out.println(strAge + "이므로 <br/>" );
    // 대소비교를 하기 위해 정수로 바꿔줍니다
	int age = Integer.parseInt(strAge); 
	
%>
당신은 
 <%  if(age >= 20) { 
     response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/response/res_adult.jsp"); // 네이버로 강제 이동 
  } else if (age < 20) {
      response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/response/res_kids.jsp"); // 다음으로 강제 이동
    } 
 %>
</body>
</html>