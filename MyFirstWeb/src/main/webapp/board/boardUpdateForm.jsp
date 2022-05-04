<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.s_id ne board.writer}">
	<% response.sendRedirect("http://localhost:8181/MyFirstWeb/boardList.do"); %>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${board } <hr/>
	<form action="http://localhost:8181/MyFirstWeb/boardUpdate.do" method="post">
		제목 : <input type="text" name="title" value="${board.title }" >
		글쓴이 : <input type="text" name="writer" value="${board.writer }" readonly><br/>
		본문 : <textarea cols="50" rows="15" name="content">${board.content }</textarea><br/>	
		<input type="hidden" name="boardNum" value="${board.boardNum }">
		<input type="submit" value="수정하기">
	</form>
</body>
</html>