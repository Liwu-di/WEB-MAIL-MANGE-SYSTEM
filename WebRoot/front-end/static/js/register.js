
function myFunction()
{
    
    if(document.getElementsByName("rule")[0].checked)
    { 
        document.getElementsByName("submit")[0].disabled=false; 
            
    } 
    else
    { 
        document.getElementsByName("submit")[0].disabled=true; 
        alert("please check the rule checkbox");
    } 
        
}


