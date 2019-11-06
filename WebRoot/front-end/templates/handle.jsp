<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="./error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 处理登录-->
	<% 
		String  username1=request.getParameter("username");
		String  password=request.getParameter("password");
		if(username1!=null){
			session.setAttribute("username",username1);
		}
		if (username1.equals(password)){
			
			response.sendRedirect("./index.jsp");//这里可以使用数据库查询等等完成验证
		}
		else{
			
			out.println("密码或账户错误");
			response.sendRedirect("./login-regist-forgetPass.jsp");
		}
		
	%>
	<!-- 登录人数 -->
	<%
		String count=(String)application.getAttribute("count");
		if(count==null){
			count="1";
		}
		else{
			count=Integer.parseInt(count)+1+"";
		}
	
	%>
</body>
</html>