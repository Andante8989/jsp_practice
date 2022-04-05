<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%

String id = (String)session.getAttribute("s_id");

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
	pstmt.setString(1, id);
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
<%  if(rs.next()) {%>    	
	<h1><%= rs.getString(1) %>유저의 정보입니다</h1>
	비번 : <%= rs.getString(2) %><a href="userUpdate.jsp" class="btn btn-primary btn-sm" tabindex="-1" role="button" aria-disabled="true">수정</a><br/>
	이름 : <%= rs.getString(3) %><button type="button" class="btn btn-primary btn-sm">수정</button><br/>
	이메일 : <%= rs.getString(4) %><button type="button" class="btn btn-primary btn-sm">수정</button><br/>
	<%  } %>
	
</body>
</html>