<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");

String dbId = null;
String dbPw = null;

String dbType = "com.mysql.cj.jdbc.Driver";
String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
String connectId = "root";
String connectPw = "mysql";
ResultSet rs = null;
// ResultSet의 데이터를 자바 클래스로 교체할 수 있도록 UserVO를 생성
UserVO user = new UserVO();
// 생성된 UserVO에 Setter를 이용해 변수명에 맞는 자료 입력

try {
	
	Class.forName(dbType);
	Connection con = DriverManager.getConnection(connectUrl,connectId, connectPw);
	String sql = "SELECT * FROM userinfo WHERE user_id=?";  
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, userId);
	rs = pstmt.executeQuery();
	if (rs.next()) { // 메모리 회수를 위해 바로 조회
		
		user.setUserId(rs.getString(1));
		user.setUserPw(rs.getString(2));
		user.setUserName(rs.getString(3));
		user.setEmail(rs.getString(4));
		System.out.println(user.getUserId());
		System.out.println(user.getUserPw());
		System.out.println(user.getUserName());
		System.out.println(user.getEmail());
	} else {
		response.sendRedirect("userIdFail.jsp");
	}
	rs.close();  // ResultSet, Connection, PreparedStatement는 .close()로 닫을수 있음.
} catch (Exception e) {
	e.printStackTrace();
}
dbPw = user.getUserPw();

if(userPw.equals(dbPw)) {
	session.setAttribute("s_id", userId);
	response.sendRedirect("loginWelcome.jsp");
} else {
	// 아이디는 있으나 비번이 일치하지 않으면 비밀번호가 틀린것
	response.sendRedirect("userPwFail.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% 

    	// 아이디는 db데이터 조회 시점에 이미 유무 판단이 끝나 필요없음
    	
    
    	
    

 %>
</body>
</html>