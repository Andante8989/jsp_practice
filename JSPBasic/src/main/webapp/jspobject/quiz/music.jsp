<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8181/JSPBasic/jspobject/quiz/music_result.jsp" method="post">
	<table border="1">
		<thead>
			<tr>
				<th>가수</th>
				<th>노래 제목</th>
				<th>선택</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>스윗소로우</td>
				<td>멀어져</td>
				<td><input type="radio" name="song" value="스윗소로우"></td>
			</tr>
			<tr>
				<td>소설</td>
				<td>두근두근 뛰는가슴 사랑이 온건지</td>
				<td><input type="radio" name="song" value="소설"></td>
			</tr>
			<tr>
				<td>김정운</td>
				<td>so in love</td>
				<td><input type="radio" name="song" value="김정운"></td>
			</tr>
		</tbody>
	</table>
	<input type="submit" value="확인">
</form>
</body>
</html>