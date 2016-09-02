
function CheckAvailability(){
	var uname = $(this).val();  
    if(uname.length >= 3){  
       
  	  $(".status").html("<font color=gray> Checking availability...</font>");  
         $.ajax({  
            type: "POST",  
            url: "check",  
            data: "uname="+ uname,  
            success: function(msg){  
          	       	  $(".status").html(msg);
                }  
        });   
    }  
    else{  
       $(".status").html("<font color=red>Username should be <b>8</b> character long.</font>");  
    }  
 }; 



function validate_username_password(){
	removevalidationall();
//	var error_password=""; 
	var password=$("#userPassword").val(); 
	var repassword=$("#rePassword").val(); 
	var username= $("#username").val(); 
	
	if (username==""){
		$("#username").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	    $("#username").parent().append("<td id='error'>Enter your Username.</td>").css({'color':'red'});
	   	error_password="true"; 
	}
	
	
	if (password==""||repassword==""||(password!=repassword) ){
		$("#userPassword, #rePassword ").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	    $("#userPassword").parent().append("<td id='error'>Your Password is not Matching.</td>").css({'color':'red'});
	   	error_password="true"; 
	}
	
	return error_password
}

function removevalidation (){
	   $(this).closest("tr").find("#error").remove();
	   $(this).closest("input").css({"border":"", "background-color":""});
	   	 }

function removevalidationall (){
	   $("tr").find("#error").remove();
	   $("*").css({"border":"", "background-color":""});
	 }
