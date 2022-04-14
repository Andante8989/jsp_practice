<%@page import="kr.co.ict.domain.UserVO"%>
<%@page import="kr.co.ict.domain.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 1. userId 라는 이름으로 전달되는 데이터를 받으면(request.get???)
    String userId = request.getParameter("userId");
    
	// - DAO생성(MySQL을 쓴다고 지정)
     UserDAO dao = UserDAO.getInstance();// 생성과 동시에 Class.forName(디비타입) 까지 호출
  
	// - DAO 내부 메서드인 getUserInfo(유저명) 호출
    UserVO user = dao.getUserInfo(userId); 
	System.out.println("유저 정보 확인 : " + user);
	out.println(user + "<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table border="1">
      <thead>
         <th>아이디</th>
         <th>비밀번호</th>
         <th>이름</th>
         <th>이메일</th>
      </thead>
      <tbody>
		<!-- 유저 정보를 여기에 작성해주세요 -->
			<tr>
      			  <td><%= user.getUserId() %></td>
      			  <td><%= user.getUserPw() %></td>
      			  <td><%= user.getUserName() %></td>
      			  <td><%= user.getEmail() %></td>
      		</tr>
		</tbody>
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
		String sql = "SELECT * FROM userinfo WHERE user_id=?";  
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
	*/ %>