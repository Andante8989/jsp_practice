<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("s_id");
String chId = request.getParameter("chId");
String chPw = request.getParameter("chPw");
String chName= request.getParameter("chName");
String chEmail = request.getParameter("chEmail");

session.invalidate();

UserDAO dao = UserDAO.getInstance();
dao.userUpdateCheck(chPw, chName, chEmail, id);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>수정이 완료되었습니다</h2>
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
	String sql = "UPDATE userinfo SET user_pw=?, user_name=?, email=? WHERE user_id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, chPw);
	pstmt.setString(2, chName);
	pstmt.setString(3, chEmail);
	pstmt.setString(4, id);

	pstmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
}
*/


%>