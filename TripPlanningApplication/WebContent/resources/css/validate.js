$(document).ready(function(){ 
	 
              $("#submit").change(CheckCredentials);  
                    
              
          });


function CheckCredentials(){
	var usernameC = $(".usernameC").val(); 
    var passwordC = $(".passwordC").val(); 
 
    if(usernameC.length >= 3){  
        //$(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");  
         $(".status").html("<font color=gray> Checking availability...</font>");  
  	  
  	  $.ajax({  
            type: "POST",  
            url: "checkCre",
//            data: {"usernameC=": usernameC}, 
            
            data: {usernameC: usernameC, passwordC: passwordC},
            
            success: function(msg){  
          	  usernameC,
          	  $(".status").html(msg);
            
//                 $(".status").ajaxComplete(function(event, request, settings){  
                       
//                     $(".status").html(msg);  

//                 });  
            }  
        });   
    }  
    else{  
           
        $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
    }  
     
}; 

function emailvalidate(){
	removevalidationall();
	var email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	
	if (!emailA.match(email_regex) || emailA.length == 0) {
	    $("#emailAddress").css({"border":"1px solid red", "background-color":"#ffb3b3"});
	    $("#emailAddress").parent().append("<td id='error'>Please enter your valid email address.</td>").css({'color':'red'});
	    error_field="true";
	    }
	return error_field;
}



function removevalidation (){
	   $(this).closest("tr").find("#error").remove();
	   $(this).closest("input").css({"border":"", "background-color":""});
	 }
	 
	function removevalidationall (){
		   $("#GlobalError").children("#error").remove();
		   $("tr").find("#error").remove();
		   $("*").css({"border":"", "background-color":""});	

		 }