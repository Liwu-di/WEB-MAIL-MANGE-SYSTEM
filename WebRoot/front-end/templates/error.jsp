<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintStream"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=exception.getMessage() %><br>
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>