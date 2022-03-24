<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 태그는 action="목적지" method="전달방식"(get, post)를 기입해 데이터를 전달하는 태그입니다.
		여닫는 부분 사이에 input 태그를 이용해 보낼 데이터 양식을 지정할 수 있습니다.  -->
	<form action="http://localhost:8181/JSPBasic/jspobject/request/req_param.jsp" method="post">
		<!-- input태그는 text(단순문자), password(비밀번호), submit(전송버튼) 등을 많이 사용합니다. -->
		사과 : <input type="text" name="apple" /><br/>
		바나나 : <input type="text" name="banana" /><br/>
		웹툰 : <input type="text" name="weptoon" /><br/>
		호러전파상 : <input type="text" name="horror" /><br/>
		테러맨 : <input type="text" name="terrorman" /><br/>
		<input type="submit">
	</form>
</body>
</html>