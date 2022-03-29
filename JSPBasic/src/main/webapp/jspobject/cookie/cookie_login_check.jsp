<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // cookie_login.jsp에서 보내준 id, pw를 받아주세요
  // post방식임을 감안해주세요
  
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  
	// 로그인 처리를 해보겠습니다
	// 로그인 아이디는 "abc1234"인 경우만 허용
	// 비밀번호는 "1111"인 경우만 허용하겠습니다.(추후 DB데이터로 로그인처리하는법 배울것임)
	// 조건문을 이용해주시면 되는데
	// 로그인의 경우 크게 3가지로 나뉩니다.
	// 1. 아이디가 없는 경우
	// 2. 아이디는 있으나 비번이 틀린경우
	// 3. 아이디와 비밀번호가 모두일치하는 경우
	// 1인 경우 콘솔에 "아이디가 없습니다. -> login_id_fail.jsp
	// 2인 경우 콘솔에 "비밀번호가 틀렷습니다 -> login_pw_fail.jsp
	// 3의 경우 콘솔에 로그인하셨습니다. 환영합니다 -> login_ok.jsp
	// 라고 찍히도록 조건문을 작성해보세요. -> 로 리다이렉트 시켜주시고 콘솔대신 body에 문장을 찍으세요.
	
	
	/*if (!id.equals("abc1234")) {
		System.out.println("아이디가 없습니다.");
	} else if (id.equals("abc1234")) {
		if (!pw.equals("1111")) {
			System.out.println("비밀번호가 틀렸습니다");
		} else if (pw.equals("1111")) {
			System.out.println("로그인하셨습니다. 환영합니다.");
		}
	}*/
	
	if (id.equals("abc1234")) {
		if(pw.equals("1111")) {
			// 로그인 성공시 쿠키를 생성하고, 로그인 완료 페이지에서는 해당 쿠키를 확인하게 만들어서 로그인 여부를 감지합니다.
			Cookie loginOk = new Cookie("login_id", "abc1234");
			loginOk.setMaxAge(1800);
			response.addCookie(loginOk);
			System.out.println("로그인하셨습니다. 환영합니다.");
			response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/cookie/login_ok.jsp");
		} else {
			System.out.println("비밀번호가 틀렸습니다");
			response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/cookie/login_pw_fail.jsp");
		}
	} else {
		System.out.println("아이디가 없습니다.");
		response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/cookie/login_id_fail.jsp");
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