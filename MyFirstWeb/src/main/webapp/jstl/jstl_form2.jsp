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
	<!--  jstl_choose.jsp로 목적지를 잡고 
	사용 언어를 입력할 수 있는 input 태그를 이용해 lang을 넘기면 됩니다. -->
	<form action="jstl_choose.jsp" method="post">
		<input type="text" name="lang"><br/>
		<input type="submit" value="제출" class="btn btn-primary btn-sm">
	</form>
</body>
</html>