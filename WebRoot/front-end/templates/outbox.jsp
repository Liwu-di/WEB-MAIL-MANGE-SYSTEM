<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#close{height:600px;width:100%;overflow:auto}
	body{ height:850px}
	
	html{padding:0px;}
</style>
<title>Insert title here</title>
<script src="jquery.min.js" type="text/javascript"></script>
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
	var tb = document.getElementById('mail');
    var rowNum=tb.rows.length;
    for (i=1;i<rowNum;i++)
    {
        tb.deleteRow(i);
        rowNum=rowNum-1;
        i=i-1;
    }
	if(XHR){
		
		XHR.open("POST","outboxJson",true);
		
		XHR.onreadystatechange=resultHandle;
		
		XHR.send(null);
	}
	
}
function resultHandle(){
	if(XHR.readyState==4 && XHR.status== 200){
		console.log(XHR.responseText);
		var userObj=JSON.parse(XHR.responseText);
		console.log(userObj.CONTACT);
		var tab=document.getElementById("mail");
		 var row=tab.insertRow(tab.rows.length);
		var i=0;
		while(userObj.CONTACT[i].id!=null){
			var row=tab.insertRow(tab.rows.length);
	 		 console.log(userObj.CONTACT[i]);
	 		var formCell=row.insertCell(row.cells.length);
	 		formCell.style.width="60%";
	 		formCell.style.height="30";
	 		formCell.style.align="left";
	 		formCell.style.bgcolor="#f2f2f2";
	 		var form1=document.createElement("form");
	 		form1.setAttribute("action","read");
	 		form1.style.width="30%";
	 		formCell.appendChild(form1);
			         //var idCell=row.insertCell(row.cells.length);
			 		 //idCell.style.width="50%";
			 		 //idCell.style.height="30";
			 		 //idCell.style.align="left";
			 		 //idCell.style.bgcolor="#f2f2f2";
			 		 var inp=document.createElement("input");
					 //inp.setAttribute("type","button");//高度
					 inp.setAttribute("value",userObj.CONTACT[i].id);
					 inp.style.width = "50";//宽度
					 inp.style.height = "30";
					 //inp.style.value=userObj.CONTACT[i].id;
					 inp.innerHTML = userObj.CONTACT[i].id;
					 inp.setAttribute("name","id");
					 
					 //butt.id = i;
					 //idCell.appendChild(inp);
			 		 //idCell.innerHTML=userObj.CONTACT[i].id;
					 //var buttonCell=row.insertCell(row.cells.length);
					 //buttonCell.style.width="50%";
					 //buttonCell.style.bgcolor="#f2f2f2";
			         var butt=document.createElement("button");
					 butt.style.height = "30";//高度
					 butt.style.width = "50";//宽度
					 butt.innerHTML = "查看";
					 butt.setAttribute("type","submit");
					 //butt.setAttribute("onclick","send();");
					 //butt.id = i;
					 //buttonCell.appendChild(butt);
					 form1.appendChild(inp);
					 form1.appendChild(butt);
			 		 var addressCell=row.insertCell(row.cells.length);
					 addressCell.style.width="32%";
					 addressCell.style.height="30";
					 addressCell.style.bgcolor="#f2f2f2";
					 addressCell.innerHTML=userObj.CONTACT[i].from;
			 		 var subjectCell=row.insertCell(row.cells.length);
			 		 subjectCell.style.width="45%";
			 		 subjectCell.style.height="30";
			 		 subjectCell.style.bgcolor="#f2f2f2";
			 		 subjectCell.innerHTML=userObj.CONTACT[i].subject;
			         
			         ++i;

			         
		
		}
	}
}
function useTestFun() {
			 
			 var tab=document.getElementById("mail");
			 var row=tab.insertRow(tab.rows.length);
			for(var i=0;i<100;++i){
				var row=tab.insertRow(tab.rows.length);
		 		 
				         var idCell=row.insertCell(row.cells.length);
				 		 idCell.style.width="20%";
				 		 idCell.style.height="30";
				 		 idCell.style.align="left";
				 		 idCell.style.bgcolor="#f2f2f2";
				 		 idCell.innerHTML="1";
						 var buttonCell=row.insertCell(row.cells.length);
						 buttonCell.style.width="3%";
						 buttonCell.style.bgcolor="#f2f2f2";
				         var addressCell=row.insertCell(row.cells.length);
						 addressCell.style.width="32%";
						 addressCell.style.height="30";
						 addressCell.style.bgcolor="#f2f2f2";
				 		 var subjectCell=row.insertCell(row.cells.length);
				 		 subjectCell.style.width="45%";
				 		 subjectCell.style.height="30";
				 		 subjectCell.style.bgcolor="#f2f2f2";
				         
				         

				         
			}
			
// 			$(function(){
// 				sendRequest();
// 			})
}

</script>

</head>
<body onload="sendRequest();">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="image/mail_leftbg.gif"><img src="image/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="image/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">发件箱</div></td>
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
            <td class="left_txt">当前位置：发件箱</td>
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
                <td width="90%" valign="top"><span class="left_txt2">在这里，您可以查看发送的邮件</span><span class="left_txt3"></span><span class="left_txt2">！</span><br>
                          
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;发件箱</td><td><button onclick="sendRequest();">刷新</button></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div id="close"><table id="mail" width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
		            <td width="10%" height="30" align="left" bgcolor="#f2f2f2" class="left_txt2">邮件id</td>
		            
		            <td width="32%" height="30" bgcolor="#f2f2f2">收件人</td>
		            <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">主题</td>
		          </tr>
              
              
              
               
              
              
              </table></div>
</body>
</html>