<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입을 환영합니다.</h3>
<form action="joinCheck.jsp">
	<input type="text" name="joinId" placeholder="가입할 아이디를 입력하세요"><br/>
	<input type="password" name="joinPw" placeholder="가입할 비밀번호를 입력하세요"><br/>
	<input type="text" name="joinName" placeholder="가입할 이름을 입력하세요"><br/>
	<input type="text" name="joinEmail" placeholder="가입할 이메일을 입력하세요"><br/>
	<input type="submit" value="가입하기"><br/>
</form>
</body>
</html>