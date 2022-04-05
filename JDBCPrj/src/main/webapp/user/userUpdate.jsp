<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("s_id");
String upPw = request.getParameter("upPw");



String dbType = "com.mysql.cj.jdbc.Driver";
String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
String connectId = "root";
String connectPw = "mysql";
ResultSet rs = null;
try {
	
	Class.forName(dbType);
	Connection con = DriverManager.getConnection(connectUrl,connectId, connectPw);
	String sql = "UPDATE userinfo SET user_pw=? WHERE user_id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, upPw);
	pstmt.setString(2, id);

	pstmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>수정할 정보를 입력하세요.</h2>
<form action="userUpdate.jsp" method="post">
	<input type="password" name="upPw" placeholder="수정할 비밀번호를 입력하세요"><br/>
	<input type="text" name="upName" placeholder="수정할 이름을 입력하세요"><br/>
	<input type="text" name="upEmail" placeholder="수정할 이메일을 입력하세요"><br/>
	<input type="submit" value="제출">
</form>
<h3><%= id %> 님 정보 수정이 완료되었습니다
다시 로그인을 부탁드립니다.</h3>
<a href="userLoginForm.jsp">로그인 하러 가기</a>
</body>
</html>