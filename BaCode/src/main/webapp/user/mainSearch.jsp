<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
	#header {
		text-align : right;
		height : 250px;
	}
	.empty {
		height : 300px;
	}
	.final {
		text-align : center;
	}
	a {
		text-decoration-line : none;
		color : grey;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="header">헤더
<a href="boardInsert.jsp"><button>상품등록하기</button></a>
<a href="mypage.jsp"><button>내정보</button></a>
</div>
<div id="container">
	<div class="row">
		<div class="col-md-3">.col-md-3</div>
		<div class="col-md-6">
			<form action="/BaCode/searchWhat" method="post">
			<input type="text" name="search_name" style="width:750px;height:40px;" placeholder="검색어를 입력하세요" onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}"/>
			</form>
		</div>
		<div class="col-md-3">.col-md-3</div>
	</div>
	<div class="row empty"></div>
</div>
<div id="footer">
	<p> 서울시 신촌역 7번출구 ict학원 </p>
	<hr/>
	<div class="final">
		<a href="intro.jsp">회사소개</a>
		<a href="help.jsp">고객센터</a>
		<a href="help.jsp">이용약관</a>
	</div>
</div>
</body>
</html>