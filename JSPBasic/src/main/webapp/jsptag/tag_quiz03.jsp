<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 
 <%
  List<Integer> lotto = new ArrayList<>();
  while(true) {
	  int ran = (int)(Math.random() * 45) + 1;
	  // contains() : 리스트 내부에 해당 객체가 존재하면 true 를 리턴
	  if (!lotto.contains(ran)) {
		  lotto.add(ran);
	  } 
	  if (lotto.size() == 6) {
		  break;
	  }
  }
	  //리스트 오름차순 정렬
	  Collections.sort(lotto);
 %>
 <h2>로또번호 생성 결과</h2>
 
 이번주 로또는 이 번호다!!<br/>

 <%
      for(Integer num : lotto) {
    	  out.println(num + "&nbsp;");
    	  Thread.sleep(700); // CPU를 잠시 멈추는 메서드
    	  out.flush(); // 브라우저의 출력 버퍼를 비우는 메서드 
      }
  %>
</body>
</html>