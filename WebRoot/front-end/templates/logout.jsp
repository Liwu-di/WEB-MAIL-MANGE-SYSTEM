<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="./error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=(String)session.getAttribute("username");
		session.invalidate();
		
	%>
	<%=name %>bye-bye
	<a href="./login-regist-forgetPass.jsp"> login</a>
</body>
</html>