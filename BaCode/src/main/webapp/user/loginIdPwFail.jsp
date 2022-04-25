<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/BaCode/userLoginCheck" method="post">
		<input type="text" name="userId" placeholder="아이디를 입력하세요"><br/>
		<input type="password" name="userPw" placeholder="비밀번호를 입력하세요"><br/>
		<input type="submit" value="로그인">
		<h2>아이디 또는 비밀번호가 틀렸습니다. 다시 로그인해주세요</h2>
	</form>
</body>
</html>