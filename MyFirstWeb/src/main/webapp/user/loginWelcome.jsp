<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("s_id");
if(id == null) {
	response.sendRedirect("userLoginForm.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3><%= id %>님 로그인을 환영합니다.</h3>
   <a href="userLogout.jsp">로그아웃하기</a>
<form action="userOutCheck.jsp" method="post">
<input type="submit" value="회원탈퇴하기">
</form>
<form action="userUpdateForm.jsp" method="post">
<input type="submit" value="회원정보수정하기">
	
</form>
<a href="/MyFirstWeb/boardList.do"><button>게시판 보러가기</button></a>
</body>
</html>