$(document).ready(function(){  
              $(".uname").change(function(){  
                  var uname = $(this).val();  
                  if(uname.length >= 3){  
                      //$(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");  

                	  $(".status").html("<font color=gray> Checking availability...</font>");  
                       $.ajax({  
                          type: "POST",  
                          url: "check",  
                          data: "uname="+ uname,  
                          success: function(msg){  
                        	  
                        	  $(".status").html(msg);
                          
//                               $(".status").ajaxComplete(function(event, request, settings){  
                                     
//                                   $(".status").html(msg);  
  
//                               });  
                          }  
                      });   
                  }  
                  else{  
                         
                      $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
                  }  
                    
              });
              
             
              
          });