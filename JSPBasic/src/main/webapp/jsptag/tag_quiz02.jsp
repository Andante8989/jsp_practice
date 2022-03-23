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
 int total = 0;
 
%>
<%
 total++;
 int ran = (int)((Math.random() * 8) + 2);
%>
페이지 누적 요청 수 : <%= total %> <br/>
매 10번째 방문자에게는 기프티콘을 드립니다. <br/>
<% if (total % 10 == 0) { %>
    "당첨되셨습니다"
<%}%>
<hr/>

<h2>랜덤 구구단(<%= ran%>단)</h2>
이번에 나온 구구단은 <%= ran%>단 입니다.

<% for(int i = 1; i < 10; i++) { %><br/>
	<%=ran %> X <%= i %> = <%= ran * i %>
<% } %>

</body>
</html>