<%@page import="com.ict.domain.UserVO"%>
<%@page import="com.ict.domain.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("s_id");

if (id == null) {
	response.sendRedirect("userLoginForm.jsp");
}
UserDAO dao = UserDAO.getInstance(); 
UserVO user = dao.getUserInfo(id);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
	<h1><%=user.getUserId()%>님의 정보를 수정합니다.</h1>
	<form>
	아이디 : <input type="text" value="<%=id %>"><br/>
	비밀번호 : <input type="text" value="<%=user.getUserPw()%>"><br/>
	이름 : <input type="text" value="<%=user.getUserName()%>"><br/>
	이메일 : <input type="text" value="<%=user.getEmail()%>"><br/>
	
	
	</form>
<form action="userUpdateCheck.jsp" method="post">
	<input type="password" name="chPw" placeholder="수정할 비밀번호를 입력하세요"><br/>
	<input type="text" name="chName" placeholder="수정할 이름을 입력하세요"><br/>
	<input type="text" name="chEmail" placeholder="수정할 이메일을 입력하세요"><br/>
	<input type="submit" value="제출" class="btn btn-primary btn-sm">
</form>
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
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
} catch (Exception e) {
	e.printStackTrace();
	
}
*/
%>