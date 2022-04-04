<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 스크립트릿 내부에 전체 회원정보를 가져오도록 코드륵 작성해서
	// ResultSet 변수에 저장까지만 해 주세요
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
		String connectId = "root";
		String connectPw = "mysql";
		
		
		// try 블럭이 닫히는 순간, 내부에서 최초로 선언된 변수들도 다 사라짐
		// 그래서 body태그에 출력해야하는 필수요소는 try 진입 전 선언해놔야함
		ResultSet rs = null;
		try {
			
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(connectUrl,connectId, connectPw);
			String sql = "SELECT * FROM userinfo";  
			PreparedStatement pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
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
<form>
   <table border="1">
      <thead>
         <th>아이디</th>
         <th>비밀번호</th>
         <th>이름</th>
         <th>이메일</th>
      </thead>
      <tbody>
	<%--  // ResultSet에 든 정보를 여기에 out.println()이나
	// 표현식 으로 표현해보세요.--%>
<%	while(rs.next()) {  %>
        <tr>
          <td>	<%= rs.getString(1)  %></td>
	      <td>  <%= rs.getString(2)  %></td>
	      <td>  <%= rs.getString(3)  %></td>
	      <td>  <%= rs.getString(4)  %></td><br/>
	    </tr>
    <%}%>
      </tbody>
   </table>
</form>

</body>
</html>