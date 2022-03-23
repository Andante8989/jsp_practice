<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	// int randomNumber() 메서드를 선언해주세요
	// 정수 1~10까지의 난수를 발생시켜 리턴해줍니다
	int randomNumber() {
	return (int)((Math.random() * 10) + 1);
	}

	String randomColor() {
		// 난수를 발생시켜서 33% 확률로 "빨강"
		// 33% 확률로 "노랑"
		// 약 33% 확률로 "파랑"을 리턴하는 메서드를 선언해주세요.
		
		double d = Math.random();
		if(d >= 0.66) {
			return "빨강";
		} else if (d >= 0.33) {
			return "노랑";
		} else {
			return "파랑";
		}
	}

		// 선언부(Declaration)에 선언한 변수는 딱 한 번만 실행되는 static 속성을 가지게 됩니다
		int total = 0;

%>
<%
	// 스크립트릿에 선언한 변수는 새로고침 할 때마다 새롭게 선언됩니다.
	int each = 0;
	total++;
	each++;
%>
<h3>오늘의 행운의 숫자</h3>
행운의숫자 : <%= randomNumber() %><br/>
행운의색깔 : <%= randomColor() %><br/>
누적 요청수 : <%= total %><br/>
개별 요청수 : <%= each %><br/>
</body>
</html>