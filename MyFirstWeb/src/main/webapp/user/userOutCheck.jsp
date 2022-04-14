<%@page import="kr.co.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

String id = (String)session.getAttribute("s_id");
// 로그인 안했다면 redirect로 로그인창으로 보내기
if(id == null) {
	response.sendRedirect("userLoginForm.jsp");
}
session.invalidate();
// 로그인 된 유저라면 해당 유저의 세셧ㄴ에 있던 아이디를 이용해 회원탈퇴 로직 실행

// DAO 생성
 UserDAO dao = UserDAO.getInstance();
// deleteUser(유저명) 호출
dao.userOutCheck(id);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>다음에 또 만나요ㅠ</h3>
<img src="C\eclipse\workspace2\JDBCPrj\src\main\webapp\user\00.jpg">
<a href="userLoginForm.jsp">로그인창으로 이동</a>
</body>
</html>

<%
/*
String dbType = "com.mysql.cj.jdbc.Driver";
String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
String connectId = "root";
String connectPw = "mysql";
ResultSet rs = null;
try {
	
	Class.forName(dbType);
	Connection con = DriverManager.getConnection(connectUrl,connectId, connectPw);
	String sql = "DELETE FROM userinfo WHERE user_id=?"; 
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
}
*/
%>