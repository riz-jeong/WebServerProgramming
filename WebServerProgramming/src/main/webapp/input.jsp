<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>명함 관리 - 입력</title>
	<%
		// 입력값 변수
		String id = request.getParameter("txtId");
		String name = request.getParameter("txtName");
		String telNo = request.getParameter("txtTelNo");
		String email = request.getParameter("txtEmail");

		// OracleXE 연결 정보
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="1234";

		Connection conn = null;
		Statement stmt = null;
	%>
</head>
<body>
	<%
	if (id != null && !id.isEmpty()) {
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// DB 연결
			conn = DriverManager.getConnection(url, user, password);

			// SQL 쿼리

			String sql="INSERT INTO namecard VALUES('" + id + "','" + name + "','" + telNo + "','" + email + "')";

			// Statement 객체 생성 및 SQL 쿼리 실행
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);

			// 성공 메시지
			%>
			<script>
				alert("저장되었습니다!");
			</script>
			<%
		} catch (Exception e) {
			// 에러 처리
			e.printStackTrace();

			// 에러 메시지
			%>
			<script>
				alert("저장 오류 발생! 관리자에게 문의하세요!");
			</script>
			<%
		} finally {
			// DB 연결 종료
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}
	%>
	<h1>명함 입력</h1>
	<form action="<%= request.getRequestURI() %>" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="number" name="txtId" value="" required></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="txtName" value="" required></td>
			</tr>
			<tr>
				<td>폰번호</td>
				<td><input type="text" name="txtTelNo" value="" required></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="txtEmail" value="" required></td>
			</tr>
		</table>
		<br/>
		<input type="submit" value="입력"/>
	</form>
	<nav>
		<ul>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
</body>
</html>
