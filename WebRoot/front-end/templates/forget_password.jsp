<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="./error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<title>Reclaim Pass</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="teachers,tree,Login ,Sign up ,Registration "/>
<meta name="description" content="this is teached-tree system login performence">
<meta name="robots" content="none">
<!-- mobile devices surport-->
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
<meta name="handheldfriendly" content="true">
<!--per 300 seconds refresh the web-->
<meta http-equiv="refresh" content="300">
<link rel="stylesheet" href="../static/css/bootstrap.min.css">
<script src="../static/js/jquery.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>
<script src="../static/js/index.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0);  }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../static/css/forget_password.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<h1>Reclaim Pass</h1>
		<div class="app-location">
			<h2>Reclaim Pass</h2>
			<div class="line"><span></span></div>
			<!--<div class="location"><img src="../static/location.png" class="img-responsive" alt="" ></div>-->
			<form action="forget" method="POST">
             
                <div class="forget"><label class="lab"><strong><span class="red">账户</span></strong></label><input type="text" class="text" value="Account" name="useraccount" id="reg00" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Account';}" ></div>
				<div class="forget"><label class="lab"><strong><span class="green">姓名</span></strong></label><input type="password" value="PASSWORD" name="username" id="reg01" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
				<div class="forget"><label class="lab"><strong><span class="green">修改密码</span></strong></label><input type="password" value="PASSWORD" name="userpassword1" id="reg01" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
				<div class="forget"><label class="lab"><strong><span class="green">重复密码</span></strong></label><input type="password" value="PASSWORD" name="userpassword2" id="reg01" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
				<div class="submit"><input type="submit" name="submit" onclick="myFunction()" value="Reassure" ></div>
				<div class="clear"></div>
				<div class="new">
				</div>	
			</form>
        </div>
        <noscript>

            <p><strong>本页面需要浏览器支持（启用）javascript脚本。</strong></p>
            
        </noscript>
</body>
</html>