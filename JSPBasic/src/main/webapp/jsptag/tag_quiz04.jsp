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
<%!
	List<String> party = new ArrayList<>();
%>
<%
	String[] jobs = {"전사", "도적", "사냥꾼", "마법사", "사제"};
	int ran = (int)(Math.random() * jobs.length);
	String job = jobs[ran];
	
	//파티에 같은 직업이 몇명이 있는지 찾는 작업
	int cnt = 0;
	for(String player : party) {
		if(job.equals(player)) {
			cnt++;
		}
	}
	
%>
<h2>당신의 역할</h2>
<p>당신에게 부여된 역할은 [<%= job %>] 입니다.<br/> 
현재 파티에 당신과 같은 역할을 가진 플레이어는 <%=cnt %> 명입니다.
</p>
현재 파티 구성 <br/>
<% party.add(job); %>
<%= party %> (<%= party.size() %> 명 참가중)

<%
	if (party.size() == 10) {
		party.clear();
	}
%>
</body>
</html>