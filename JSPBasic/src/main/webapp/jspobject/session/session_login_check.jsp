<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println("유저의 아이디 : " + id);
	System.out.println("유저의 비밀번호 : " + pw);
	
	
	// 세션 로그인처리를 해보겠습니다
	// 세션 로그인 처리는 쿠키 로그인 처리와는 달리 모든 세션목록을 반복문으로 뒤질 필요가 없어서 효율적입니다.
	// 아이디 : "abc1234", 비밀번호 : "1111"
	// 위 고정 문자열을 아이디, 비밀번호로 사용하여
	
	// 아이디가 있는 경우와 없는경우
	if(id.equals("abc1234")) {
		// 비밀번호가 맞는경우와 틀린경우
		// 를 나눠서 성공시 세션을 발급하고
		if(pw.equals("1111")) {
			// 세션 발급 후 session_login_ok.jsp로 보내주세요
			// 세션명은 "s_id"
			session.setAttribute("s_id", id);
			response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/session/session_login_ok.jsp");
		} else {
			// session_pw_fail.jsp로 보내주세요.
			response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/session/session_pw_fail.jsp");
		}
	} else {
		// session_id_fail.jsp로 보내주세요
		response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/session/session_id_fail.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>