<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${board }
	<h1>${board.boardNum }번 글 조회중입니다</h1><br/>
	제목 : <input type="text" value="${board.title }" >조회수 : ${board.hit }<br/>
	본문 : <textarea clas="40" rows="10">${board.content }</textarea><br/>
	글쓴이 : <input type="text" value="${board.writer }"><br/>
	쓴날짜 : ${board.bdate }
	마지막 쓴날짜 : ${board.mdate }
	<hr/>
	<!--  삭제번호를 서블릿 boardDelete로 보내야함 -->
	<form action="http://localhost:8181/MyFirstWeb/boardDelete" method="post">
		<input type="hidden" name="boardNum" value="${board.boardNum }">
		<input type="submit" value="삭제">
	</form>
	<a href="http://localhost:8181/MyFirstWeb/boardList"><button>목록으로 돌아가기</button></a>
	<form action="http://localhost:8181/MyFirstWeb/boardUpdateForm" method="post">
		<input type="hidden" name="boardNum" value="${board.boardNum }">
		<input type="submit" value="수정하기">
	</form>
</body>
</html>