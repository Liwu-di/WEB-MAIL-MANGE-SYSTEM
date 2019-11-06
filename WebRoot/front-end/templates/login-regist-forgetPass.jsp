<%@ page language="java" contentType="text/html; charset=utf-8" errorPage="./error.jsp"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
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
<link href="../static/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="refresh" content="300"><!-- <link rel="stylesheet" href="../static/css/bootstrap.min.css">
<script src="../static/js/jquery.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>-->
<script src="../static/js/index.js"></script> 

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0);  }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>登录</title>
    <style>
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(images/backgroud.png) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 550px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(images/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { width: 288px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #username { background: url(images/emil.png) 20px 14px no-repeat; }
        #password { background: url(images/password.png) 23px 11px no-repeat; }
        .tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
        .reg-bar { width: 360px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
        .reg-bar a { color: #fff; text-decoration: none; }
        .reg-bar a:hover { text-decoration: underline; }
        .reg-bar .reg { float: left; }
        .reg-bar .forget { float: right; }
        .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}

        @media screen and (max-width: 500px) {
            * { box-sizing: border-box; }
            .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
            .logo { margin: 50px auto; }
            .form-item { width: auto; }
            .form-item input, .form-item button, .reg-bar { width: 100%; }
        }
    </style>
<!--<link href="../static/css/style.css" rel='stylesheet' type='text/css' />  -->
</head>
<body>
	
		
			
		 <%--<div class="line"><span></span></div>
			<div class="location"><img src="../static/location.png" class="img-responsive" alt="" ></div>
			<form method="POST">
				<input type="text" class="text" value="Account" name="username" id="reg00" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Account';}" >
				<input type="password" value="PASSWORD" name="password" id="reg01" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				<div class="submit"><input type="submit" name="submit" onclick="myFunction()" value="Sign in" ></div>
				<div class="clear"></div>
				<div class="new">
					<h3><a href="./forget_password.html" name="forget">Forgot password ?</a></h3>
					<h4><a href="./register.html" name="register"  data-toggle="modal" data-target="#myModal">New here ? Sign Up</a></h4>
					<div class="clear"></div>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<form method="POST">
									<div class="modal-header">
									<h4 class="modal-title" id="myModalLabel">
										Regist
									</h4>
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										
									</button>
									
								</div>
								<div class="modal-body">
									<div class="regdiv"><label class="lab" > <span class="red"><strong>Password</strong></span></label> <input  type="password" id="reg1" value="PASSWORD" id="pass1" name="reg_password1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
									<div class="regdiv"><label class="lab" > <span class="blue"><strong>Reassure</strong></span></label> <input type="password" id="reg2" value="PASSWORD" id="pass2" name="reg_password2" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
									<div class="regdiv"><label class="lab" > <span class="green"><strong>Identify</strong></span></label> <input type="text" id="reg3" value="Set a ID for reclaim pass"  onfocus="this.value = '';" onblur="check(this)" id="pass3" name="reg_id" ></div>
									<div class="regdiv"><label id="lab4" > <span class="red"><strong>Password and ID should longer than 5 an shorter than 17</strong></span></label></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" data-dismiss="modal" > 
										Close
									</button>
									<button type="submit" class="btn btn-primary"  id="reg_btn" onclick=" return regclick()">
										Regist
									</button>
								</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</form>
		</div> --%>
		
	<%
		String name="";
		if(session.isNew()){
			name="";
		}
		else if((String)session.getAttribute("username")!=null){
			name=(String)session.getAttribute("username");
		}
		else{
			name="账号";
		}
	%>
	
	

    <div class="dowebok">
        <div class="logo"></div>
        <form action="login" method="post">
        	<div class="form-item">
            	<input id="username" type="text" autocomplete="off" placeholder="账号" name="username" value=<%=name %>>
            	<p class="tip">请输入合法的账户</p>
        	</div>
        	<div class="form-item">
            	<input id="password" type="password" autocomplete="off" placeholder="密码" name="password">
            	<p class="tip">账户或密码不正确</p>
        	</div>
        	<div class="form-item"><input type="submit" id="submit" value="提交"></div>
        
        </form>
  
        <div class="reg-bar">
            <a href="" class="reg"  data-toggle="modal" data-target="#myModal">注册</a> 
           
					<div class="clear"></div>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<form action="UserRegist" method="POST">
									<div class="modal-header">
										<h4 class="modal-title" id="myModalLabel">
											注册
										</h4>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										
										</button>
									
									</div>
									<div class="modal-body">
										<div class="regdiv"><label class="lab" > <span class="red"><strong>账号</strong></span></label> <input  type="text" id="reg1" value="" id="pass1" name="useraccount" onfocus="this.value = '请填写此项';" onblur="if (this.value == '') {this.value = '';}"></div>
										<div class="regdiv"><label class="lab" > <span class="blue"><strong>密码</strong></span></label> <input type="password" id="reg2" value="PASSWORD" id="pass2" name="userpassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
										<div class="regdiv"><label class="lab" > <span class="green"><strong>姓名</strong></span></label> <input type="text" id="reg3" value=""  onfocus="this.value = '';" onblur="check(this)" id="pass3" name="username" ></div>
										<div class="regdiv"><label class="lab" > <span class="red"><strong>电话</strong></span></label> <input type="text" id="reg4" value=""  onfocus="this.value = '';" onblur="check(this)" id="pass4" name="usertel" ></div>
										<div class="regdiv"><label id="lab4" > <span class="red"><strong>密码账号必修在6-16位之间</strong></span></label></div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary" data-dismiss="modal" > 
											Close
										</button>
										<button type="submit" class="btn btn-primary"  id="reg_btn" onclick=" return regclick()">
											Regist
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
            <a class="forget" href="./forget_password.jsp">忘记密码</a>
       </div>
  </div>
    <script src="images/jquery.min.js"></script>
    

<div style="text-align:center;">

</div>


		<noscript>

			<p><strong>本页面需要浏览器支持（启用）javascript脚本。</strong></p>
			
		</noscript>
</body>
</html>