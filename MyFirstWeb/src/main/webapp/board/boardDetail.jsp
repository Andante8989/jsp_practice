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
</body>
</html>