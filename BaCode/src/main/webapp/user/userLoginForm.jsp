<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>
<head>
<style>
	#header {
		height : 200px;
	}
	.login {
		text-align : center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>	
<body>
<div id="header">헤더</div>
<div id="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 login">
			<form action="/BaCode/userLoginCheck" method="post">
				<input type="text" name="userId" placeholder="아이디를 입력하세요"><br/><br/>
				<input type="password" name="userPw" placeholder="비밀번호를 입력하세요"><br/><br/>
				<input type="submit" value="로그인">
			</form>
			<br/>
			<a href="/BaCode/dvCheck"><button>회원가입</button></a>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
</body>	
</html>