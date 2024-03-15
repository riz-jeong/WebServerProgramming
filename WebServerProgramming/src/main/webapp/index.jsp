<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%!
String str1 = "정창형";
String str2 = "안녕하세요";
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>정창형</h1>
	<h4>010-9463-1585</h4>
	<nav>
		<ul>
			<li><a href="input.jsp">명함입력</a></li>
			<li><a href="search.jsp">명함검색</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	<h2><%= str1 %></h2>
		<p>
			<%
			out.println(str2 + str1 + "입니다.");
			%>
		</p>
</body>
</html>