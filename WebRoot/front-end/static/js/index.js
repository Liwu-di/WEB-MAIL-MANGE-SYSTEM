
function regclick(){ 
    //alert("1");
    var p1=document.getElementById("reg1").value;//获取密码框的值
    var p2=document.getElementById("reg2").value;//获取重新输入的密码值
    var p3=document.getElementById("reg3").value;
    if((p1.length<6 || p1.length>16)||(p2.length<6 || p2.length>16) )
    {
        alert("密码或者账号应该在6-16位之间");
        return false;
    }
    
    else{
       // document.getElementById("regbtn").removeAttr("disabled");//密码一致，可以继续下一步操作
       alert("Right");
       return true;
    }
}
function check(it)
{
    if (it.value == '') {
        it.value = "请填写此项";
    }

}
