<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("s_id");

if(id != null) {
	response.sendRedirect("loginWelcome.jsp");
}

%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="userLoginCheck.jsp" method="post">
	<h3>로그인을 해주세요.</h3>
	<input type="text" name="userId" placeholder="아이디를 입력하세요"><br/>
	<input type="password" name="userPw" placeholder="비밀번호를 입력하세요"><br/>
	<input type="submit" value="로그인하기">
</form>
<form action="userJoin.jsp" method="post">
<input type="submit" value="회원가입하기">
</form>
</body>
</html>