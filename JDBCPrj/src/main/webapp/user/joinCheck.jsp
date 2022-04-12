<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");  // 한글 깨짐 방지
String joinId = request.getParameter("joinId");
String joinPw = request.getParameter("joinPw");
String joinName = request.getParameter("joinName");
String joinEmail = request.getParameter("joinEmail");

UserDAO dao = UserDAO.getInstance();
dao.joinCheck(joinId, joinPw, joinName, joinEmail);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>가입을 축하합니다.</h3>
<a href="userLoginForm.jsp">로그인하러가기</a>
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
	String sql = "INSERT INTO userinfo VALUES(?,?,?,?)";  
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, joinId);
	pstmt.setString(2, joinPw);
	pstmt.setString(3, joinName);
	pstmt.setString(4, joinEmail);
	pstmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
}

*/


%>