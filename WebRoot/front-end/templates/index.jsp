<%@ page language="java" contentType="text/html; charset=utf-8" errorPage="./error.jsp"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>LLmail</title>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<script src="../js/jquery.js" type="text/javascript"></script>

</head>

	<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="admin_top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset cols="200,*"  rows="960,*" id="frame">
	<frame src="left.html" id="1" name="leftFrame" noresize="noresize"  marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="right.html" rows="800" id="2" name="main"  marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
</frameset>
	<noframes>
  <body></body>
    </noframes>


</html>