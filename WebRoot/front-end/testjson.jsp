<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	var XHR=false;
		function CreateXHR(){
			
			try{
				XHR=new ActiveXObject("mxsm12.XMLHTTP");
			}catch(e1){
				try{
					XHR=new ActiveXObject("mircosoft.XHLHTTP");
				}catch(e2){
					try{
						XHR=new XMLHttpRequest();
					}catch(e3){
						XHR=false;
					}
				}
			}
		}
		function sendRequest(){
			CreateXHR();
			
			if(XHR){
				
				XHR.open("GET","userJson",true);
				
				XHR.onreadystatechange=resultHandle;
				
				XHR.send(null);
			}
			
		}
		function resultHandle(){
			if(XHR.readyState==4 && XHR.status== 200){
				console.log(XHR.responseText);
				var userObj=JSON.parse(XHR.responseText);
			
				console.log(userObj.CONTACT);
				
				var userStr ="<table border=0>";
				userStr +=('<tr><td><b>name</b></td><td>' + userObj.CONTACT[0].name+'</td></tr>');
				userStr +=('<tr><td><b>pass</b></td><td>' + userObj.CONTACT[0].address+'</td></tr>');
				userStr +="</table>";
				document.getElementById('jsonDiv').innerHTML=userStr;
			}
		}
		
	</script>
	<div id="jsonDiv"></div>
	<input type="button" value="ok" onclick="sendRequest();"/> 
</body>
</html>