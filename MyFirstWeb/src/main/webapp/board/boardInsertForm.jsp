<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 을 만들어주세요
	form 은 글쓴이 writer, 글제목 title, 본문content 정보를 전송합니다
	목적지는 /boardInsert 로 하겠습니다 -->
	<form action="/MyFirstWeb/boardInsert" method="post">
		제목 : <input type="text" name="title" >
		글쓴이 : <input type="text" name="writer" ><br/>
		본문 : <textarea cols="50" rows="15" name="content"></textarea><br/>	
		<input type="submit" value="글쓰기">
		<input type="reset" value="초기화">
	</form>
</body>
</html>