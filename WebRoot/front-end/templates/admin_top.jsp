<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>邮件系统</title>
<script language=JavaScript>
function logout(){
	if (confirm("您确定要退出系统吗？")){
		
		
		window.parent.location.href = "login-regist-forgetPass.jsp";
	}
		
	return false;
}
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<meta http-equiv="refresh" content="60">
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="image/skin.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#btn{
	width:46px;
 	height:20px; 
 	border:0;
	background:url(./image/out.gif);
	}
</style>
</head>
<body leftmargin="0" topmargin="0">
<%
	String name=(String)session.getAttribute("username");
%>
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="image/logo.gif" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">管理员<%=name %>： 您好,感谢登陆使用！</td>
        <td width="22%">
	       <!--   <a href="#" target="_self" onClick="logout();">
	        	<img src="image/out.gif" alt="安全退出" width="46" height="20" border="0">
	        </a>-->
	        <!-- <form action="logout" method="post">
        		 <img src="image/out.gif" alt="安全退出" width="46" height="20" border="0"> 
        		<button type="submit" id="btn"></button>
        	</form> -->
        	<button  id="btn" onclick="logout();"></button>
        </td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
