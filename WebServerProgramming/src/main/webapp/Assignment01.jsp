<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
String name = "��â��";
String number = "010-9463-1585";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Assignment01</title>
</head>
<body>
	<h2>�ȳ��ϼ���. <%= name %> �Դϴ�.</h2>
	<p>
	<%
	out.println("����ó : " + number);
	%>
	</p>
</body>
</html>