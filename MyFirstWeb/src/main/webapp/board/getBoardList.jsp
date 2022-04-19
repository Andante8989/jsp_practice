<%@page import="kr.co.ict.GetBoardList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.ict.domain.BoardVO"%>
<%@page import="kr.co.ict.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/boardList 임시 페이지</h1>
	<div class="col-md-8">
	<table class="table table-hover table-info table-responsive">
		<thead class="table-primary">
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>글쓴이</th>
				<th>쓴날짜</th>
				<th>수정날짜</th>
				<th>조회수</th>
			<tr>
		</thead>
			<!-- c:forEach와 ${boardList}를 활용하면 됩니다
			 전체 글 정보를 테이블 형식으로 보여주세요. -->
		<tbody>
				<c:forEach var="board" items="${boardList }">
					<tr>
						<td>${board.boardNum }</td>
						<td><a href="http://localhost:8181/MyFirstWeb/boardDetail">${board.title }</a></td>
						<td>${board.writer }</td>
						<td>${board.bdate }</td>
						<td>${board.mdate }</td>
						<td>${board.hit }</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>