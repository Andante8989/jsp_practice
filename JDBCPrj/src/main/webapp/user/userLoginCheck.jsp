<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");

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

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% 
 if(rs.next()) {
    	String Id = rs.getString(1);
    	String Pw = rs.getString(2);
    	if(Id.equals(userId)) {
    		if(Pw.equals(userPw)) {
	    		session.setAttribute("s_id", userId);
	    		response.sendRedirect("loginWelcome.jsp");
    		} else {
    			response.sendRedirect("userPwFail.jsp");
    		}
    	} 
    } else {
    	response.sendRedirect("userIdFail.jsp");
    }

 %>
</body>
</html>