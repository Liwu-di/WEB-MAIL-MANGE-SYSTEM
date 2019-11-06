<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#textarea1 {resize:none;}
	#send {height : 45px; width:90px}
	#cao {height : 45px; width:90px}
</style>
</head>
<body>
<%
 //把b放到session里，命名为a，
String from = session.getAttribute("from").toString(); 
String to = session.getAttribute("to").toString(); 
String subject = session.getAttribute("subject").toString(); 
String context = session.getAttribute("context").toString(); 
%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="image/mail_leftbg.gif"><img src="image/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="image/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">读邮件</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="image/mail_rightbg.gif"><img src="image/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="image/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="left_txt">当前位置：读邮件</td>
          </tr>
          <tr>
            <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
              <tr>
                <td></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="10%" height="55" valign="middle"><img src="image/title.gif" width="54" height="55"></td>
                <td width="90%" valign="top"><span class="left_txt2">在这里，您可以查看您的邮件</span><span class="left_txt3"></span><span class="left_txt2">！</span><br>
                          
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;邮件内容</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
			<form name="form1" method="POST" action="send">
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">收件人邮箱地址：</td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"><p><%=from %> </p></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">自己的邮箱地址</td>
              </tr>
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">发件人邮箱地址：</td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"><p><%=to %> </p></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">对方的邮箱地址</td>
              </tr>
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt"></td>
              </tr>
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">邮件主题：</td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"><p ><%=subject %></p></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt"></td>
              </tr>
              <tr>
                <!-- --> <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="57%" height="30" bgcolor="#f2f2f2">
                	<!--  <input name="addition" type="text" id="title" size="30" />-->
                	
				

                </td>
               <td width="20%" height="30" bgcolor="#f2f2f2" class="left_txt"></td>
              </tr>
              <tr>
                <td padding="0" width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">邮件正文：</td>
                <td padding="0" width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td padding="0" width="32%" height="460" bgcolor="#f2f2f2"><p><%=context %></p></td>
                <td padding="0" width="45%" height="30" bgcolor="#f2f2f2" class="left_txt"></td>
              </tr>
              
              </form>
              </table>
              
  
</body>
</html>