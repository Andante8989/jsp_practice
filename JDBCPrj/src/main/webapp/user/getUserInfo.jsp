<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 1. userId 라는 이름으로 전달되는 데이터를 받으면(request.get???)
    String userId = request.getParameter("userId");
    // 2. DB연동 후
    String dbType = "com.mysql.cj.jdbc.Driver";
	String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	String connectId = "root";
	String connectPw = "mysql";
	ResultSet rs = null;
	try {
		
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(connectUrl,connectId, connectPw);
		String sql = "SELECT * FROM userinfo WHERE user_id=?";  
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
	 
    // 3. 해당 아이디의 정보만 ResultSet에 받아와서
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 4. body 내부에 xx 유저의 정보입니다 라는 문장과 함께 전체 정보가 나오도록 코드를 짜주세요
		rs.next();
	    // 5. 폼에서 전달한 아이디를 처리할 수 있도록 getUserInfoForm.jsp를 추가해주세요.
	%>
	
	<%= userId %> 유저의 정보입니다.
		
</body>
</html>