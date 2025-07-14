<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립틀릿 연습</h1>
	<p>스트립틀릿으로 if문 작성하기</p>
	<%
	String name = "홍길동";
	int kor = 10;
	int eng = 10;
	int math = 10;
	
	%>
	
	<h3>학생 성적정보</h3>
	<p>이름: <%= name %></p>
	<p>국어: <%= kor %></p>
	<p>영어: <%= eng %></p>
	<p>수학: <%= math %></p>
	<p>총점: <%= kor+eng+math %></p>
	<p>평균: <%= (kor+eng+math)/3 %></p>
	
	<%
		if((kor+eng+math)/3 >= 60) {
			
		
	%>
		<p>합격입니다.</p>
	<%
		} else {
	%>
		<p>불합격입니다.</p>
	<%
		}
	%>

</body>
</html>