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
	<!-- 목적지가 el_obj_ok.jsp인 폼을 만들어주세요
	이름(name)과 별명(nick)을 넘겨주면 됩니다
	제출버튼을 눌러 넘어가게 해 주세요 -->
	<form action="el_obj_ok.jsp">
		이름 : <input type="text" name="name"></br>
		별명 : <input type="text" name="nick"></br>
		<input type="submit" value="제출" class="btn btn-primary btn-sm">
	</form>
</body>
</html>