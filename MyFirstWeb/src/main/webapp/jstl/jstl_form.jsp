<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jstl_if.jsp를 목적지로 하는 폼을 만들어서
	이름(name속성도 name) 전달하도록 폼 코드를 작성해주세요
	submit 버튼을 눌러서 제출합니다 
	jstl_if.jsp에서 c:set을 이용해 변수를 저장할 때 저장할 수 있는 요소를 하나 더 추가해주세요.
	name 속성은 자율입니다.
	jstl_if.jsp에서 해당 전송 데이터를 받아서 c:set으로 저장해주신다음 해당 변수를 c:out으로 출력해주세요-->
<form action="jstl_if.jsp">
	<input type="text" name="name" placeholder="이름을 입력하세요"></br>
	<input type="text" name="job" placeholder="직업을 입력하세요"></br>
	<input type="submit" value="제출" class="btn btn-primary btn-sm">
</form>
</body>
</html>