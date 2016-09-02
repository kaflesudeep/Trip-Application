$(document).ready(function(){ 
	
             
              $("#submit").change(CheckCredentials);  
                       
              
          });





function CheckCredentials(){
	
	 
    var usernameC = $(".usernameC").val(); 
    var passwordC = $(".passwordC").val(); 
 
    
   
    if(usernameC.length >= 3){  
        //$(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");  
        alert("the uname is "+ usernameC);
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