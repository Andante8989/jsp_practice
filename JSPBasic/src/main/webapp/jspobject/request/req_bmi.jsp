<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	* 폼에서 보내는 데이터 받기
	1. 목적지를 req_bmi.jsp로 해주세요(서버 실행후 브라우저창 주소 복붙하면 됨)
	2. 스크립트릿을 이용해 req_bmi_form.jsp에서 보내는 데이터를 받아 자바 데이터로 저장해주세요.
	3. 받아온 값을 화면에 출력해주세요.
	
	* bmi 지수 계산 공식 [체중(kg) / 신장(m) * 신장(m)]
	  bmi지수가 23을 초과한다면 "당신은 과체중입니다."를 출력,
	  18.5 미만이라면 "당신은 저체중입니다."를 출력,
	  나머지는 :당신은 정상체중입니다."를 출력하세요
	  
	  * 문자열 내부에 들어있는 데이터를 기본데이터 타입으로 변환하는 방법
	  포장 클래스에들어있는 parse+기본타입이름()메서드 활용
	  ex ) String -> int
	  		Integer.parseInt(문자열);
	  		String -> double
	  		Double.parseDouble(문자열);
 -->
 <%
 	String strCm = request.getParameter("cm");
	String strKg = request.getParameter("kg");

	double m = Double.parseDouble(strCm)/100;
	double kk = Double.parseDouble(strKg);
	double bmi = kk / (m * m);
	
 %>
 
 키 : <%= strCm %><br/>
 체중 : <%= strKg %><br/>
 bmi지수 : <%= bmi %><br>
 <%-- 조건문을 이용한 출력(태그 내 문자 활용) --%>
 <hr>
 <% if (bmi > 23) { %>
		당신은 과체중입니다.<br/>
 <% } else if (bmi < 18.5 ) {%>
	  당신은 저체중입니다.<br/>
 <% } else {%>
	  당신은 정상체중입니다.<br/>
 <%  }%>
</body>
</html>