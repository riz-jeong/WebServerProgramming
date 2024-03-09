<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
String name = "정창형";
String number = "010-9463-1585";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Assignment01</title>
</head>
<body>
	<h2>안녕하세요. <%= name %> 입니다.</h2>
	<p>
	<%
	out.println("연락처 : " + number);
	%>
	</p>
</body>
</html>