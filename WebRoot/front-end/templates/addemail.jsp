<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="image/mail_leftbg.gif"><img src="image/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="image/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">添加邮箱</div></td>
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
            <td class="left_txt">当前位置：添加邮箱</td>
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
                <td width="90%" valign="top"><span class="left_txt2">在这里，您可以根据您的要求，添加邮箱</span><span class="left_txt3"></span><span class="left_txt2">！</span><br>
                          
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;添加</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
			<form name="form1" method="POST" action="mailbox">
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">邮箱地址：</td>
                <td width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td width="32%" height="30" bgcolor="#f2f2f2"><input name="address" type="text" id="title" size="30" /></td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">邮箱地址</td>
              </tr>
              <tr>
                <td height="30" align="right" class="left_txt2">密码：</td>
                <td>&nbsp;</td>
                <td height="30"><input type="text" name="pass" size="30" /></td>
                <td height="30" class="left_txt">密码</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">验证码：</td>
                <td bgcolor="#f2f2f2">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2"><input type="text" name="pass2" size="25" /></td>
                <td height="30" bgcolor="#f2f2f2" class="left_txt">验证码（必要，比如QQ，163等等邮箱需要此项登录）</td>
              </tr>
              <tr>
                <td height="30" align="right" class="left_txt2">POP3地址： </td>
                <td>&nbsp;</td>
                <td height="30"><input type="text" name="pop3" size="30" /></td>
                <td height="30" class="left_txt">POP3协议来收邮件</td>
              </tr>
              <tr>
                <td height="30" align="right" class="left_txt2">POP3端口号： </td>
                <td>&nbsp;</td>
                <td height="30"><input type="text" name="pop3port" size="30" /></td>
                <td height="30" class="left_txt">POP3服务器的端口号</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">SMTP地址：</td>
                <td bgcolor="#f2f2f2">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2"><input type="text" name="smtp" size="30" /></td>
                <td height="30" bgcolor="#f2f2f2" class="left_txt">SMTP协议来发送邮件</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">SMTP端口号：</td>
                <td bgcolor="#f2f2f2">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2"><input type="text" name="smtpport" size="30" /></td>
                <td height="30" bgcolor="#f2f2f2" class="left_txt">SMTP服务器端口号</td>
              </tr>
               <tr>
              	<td padding="0" width="20%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2"></td>
                <td padding="0" width="3%" bgcolor="#f2f2f2">&nbsp;</td>
                <td padding="0" width="32%" height="60" bgcolor="#f2f2f2"><input id="send" height="60" type="submit" value="提交"> </td>
                <td padding="0" width="45%" height="30" bgcolor="#f2f2f2" class="left_txt"></td>
              </tr>
              
              </form>
              </table>
  
       
</body>
</html>