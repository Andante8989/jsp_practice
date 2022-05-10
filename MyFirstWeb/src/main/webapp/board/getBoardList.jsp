<%@page import="kr.co.ict.GetBoardList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.ict.domain.BoardVO"%>
<%@page import="kr.co.ict.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 포워딩으로 먼저 넘어온 다음 리다이렉트를 이어서 실행하도록 해야 
포워딩 / 리다이렉트 호출이 겹쳐서 에러가 나는걸 막을 수 있으므로
이 경우만 예외적으로 스크립트릿을 이용한 리다이렉트를 사용합니다 -->
세션값 : ${sessionScope.s_id }<br/>
<c:if test="${sessionScope.s_id eq null }">
	<!-- <script>location.href="http://localhost:8181/MyFirstWeb/"</script>  -->
	<%-- response.sendRedirect("http://localhost:8181/MyFirstWeb/"); --%>
</c:if>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
	button {
			border-radius : 10px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
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
						<td><a href="http://localhost:8181/MyFirstWeb/boardDetail.do	?board_num=${board.boardNum }"> ${board.title }</a></td>
						<td>${board.writer }</td>
						<td>${board.bdate }</td>
						<td>${board.mdate }</td>
						<td>${board.hit }</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	${buttons }</br>
	<!-- foreach문의 start, end속성을 이용해 숫자를 알맞게 깔아주세요 -->
		
	<nav aria-label="Page navigation example">
  		<ul class="pagination justify-content-center">
  			<li class="page-item">
	  			<c:if test="${buttons.startPage ne 1}">
					<a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${buttons.startPage - 1}">이전</a>
				</c:if>
			</li>
			<c:forEach begin="${buttons.startPage }" end="${buttons.endPage }" step="1" var="pageNum">
				<li class="page-item  ${buttons.currentPage eq pageNum ? 'active' : '' }" aria-current="page">
					<a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageNum }">${pageNum}</a>
				</li>
			</c:forEach>
			<li class="page-item">
		  		<c:if test="${buttons.endPage ne buttons.totalPages }">
					<a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${buttons.endPage + 1}">다음</a>
				</c:if></br>
			</li>
	  	</ul>
	</nav>
	
	<c:if test="${sessionScope.s_id ne null}">
		<a href="http://localhost:8181/MyFirstWeb/boardInsertForm.do"><button>글쓰기</button></a>
	</c:if>
	</div>
	</div>
</body>
</html>