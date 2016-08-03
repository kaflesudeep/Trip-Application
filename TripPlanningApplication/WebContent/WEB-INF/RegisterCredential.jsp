<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.text.SimpleDateFormat"%>
   <%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!-- css related  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />


<style type="text/css">
.form-style-10{
    width:450px;
    padding:30px;
    margin:40px auto;
    background: #FFF;
    border-radius: 10px;
    -webkit-border-radius:10px;
    -moz-border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
    -moz-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
    -webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.13);
}
.form-style-10 .inner-wrap{
    padding: 30px;
    background: #F8F8F8;
    border-radius: 6px;
    margin-bottom: 15px;
}
.form-style-10 h2{
    background: #2A88AD;
    padding: 20px 30px 15px 30px;
    margin: -30px -30px 30px -30px;
    border-radius: 10px 10px 0 0;
    -webkit-border-radius: 10px 10px 0 0;
    -moz-border-radius: 10px 10px 0 0;
    color: #fff;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.12);
    font: normal 30px 'Bitter', serif;
    -moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    -webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    border: 1px solid #257C9E;
}
.form-style-10 h2> span{
    display: block;
    margin-top: 2px;
    font: 13px Arial, Helvetica, sans-serif;
}
.form-style-10 label{
    display: block;
    font: 13px Arial, Helvetica, sans-serif;
    color: #888;
    margin-bottom: 15px;
}
.form-style-10 input[type="text"],
.form-style-10 input[type="date"],
.form-style-10 input[type="datetime"],
.form-style-10 input[type="email"],
.form-style-10 input[type="number"],
.form-style-10 input[type="search"],
.form-style-10 input[type="time"],
.form-style-10 input[type="url"],
.form-style-10 input[type="password"],
.form-style-10 textarea,
.form-style-10 select {
    display: block;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    width: 100%;
    padding: 8px;
    border-radius: 6px;
    -webkit-border-radius:6px;
    -moz-border-radius:6px;
    border: 2px solid #fff;
    box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
    -moz-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
    -webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.33);
}

.form-style-10 .section{
    font: normal 20px 'Bitter', serif;
    color: #2A88AD;
    margin-bottom: 5px;
}
.form-style-10 .section span {
    background: #2A88AD;
    padding: 5px 10px 5px 10px;
    position: absolute;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border: 4px solid #fff;
    font-size: 14px;
    margin-left: -45px;
    color: #fff;
    margin-top: -3px;
}
.form-style-10 input[type="button"], 
.form-style-10 input[type="submit"]{
    background: #2A88AD;
    padding: 8px 20px 8px 20px;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    color: #fff;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.12);
    font: normal 30px 'Bitter', serif;
    -moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    -webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.17);
    border: 1px solid #257C9E;
    font-size: 15px;
}
.form-style-10 input[type="button"]:hover, 
.form-style-10 input[type="submit"]:hover{
    background: #2A6881;
    -moz-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
    -webkit-box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
    box-shadow: inset 0px 2px 2px 0px rgba(255, 255, 255, 0.28);
}
.form-style-10 .privacy-policy{
    float: right;
    width: 250px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #4D4D4D;
    margin-top: 10px;
    text-align: right;
}
</style>

<style type="text/css">  
.flable {  
 color: gray;  
}  
  
.status {  
 font-family: verdana;  
 font-size: 12px;  
}  
  
.uname {  
 color: blue;  
}  
</style>

<!-- Jquery Code to check if the user credential is available or not, used ajax to check -->
<!-- modified : CheckAvialibility.java, Web.xml -->

<script src="jquery.js" type="text/javascript"></script>  
 <script type="text/javascript">  
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
              
              $("<span>*</span>").insertAfter(".required").css({
          		color: 'red'
          	}); 
              
          });  
        </script>  
        
        
</head>
<body>

<div class="form-style-10">
<h2>Login In!<span>Plan Your Perfect Trip  Using this Site! First Name: ${userRegisterInformation.firstName}</span></h2>

Your Account Id is : ${userIdNum}
 Welcome to Easy Trip : ${userRegisterInformation.firstName}<br>


<div>
<form method="Post" action="registerCredential">  
 <div class="section"><span>1</span>Credentials</div>
    <div class="inner-wrap">
 
 
 
 
<table>

<tr> 
			<td><label id="label" class="required"> Please Choose c Your User Name: </label> </td>
			<td><input type="text" name= "userId" class="uname" > <span class="status"></span>  </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required"> Please Enter Your Password: </label> </td>
			<td><input type="text" name= "userPassword" >   </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Please re enter your Password: </label> </td>
			<td><input type="text" name= "rePassword" >  </td>
		</tr>
		
</table>
</div>

<div>

<div class="section"><span>2</span>Security Questions</div>
    <div class="inner-wrap">
<table width="75%">	

<tr> 
			<td><label id="label" name = "securityQuestion1" class="required"> securityQuestion1  </label> </td>
			<td><input type="text" name= "securityAnswer1" >   </td>
		
		
		</tr>

<tr>
<td><label id="label" name= "securityQuestion2" class="required"> securityQuestion2  </label> </td>
			<td><input type="text" name= "securityAnswer2" >   </td>
		
	

</tr>

<tr>

<td><label id="label"> user Id:  </label> </td>
			<td><input type="text" name= "userIdNumber"  value=${userIdNum}>   </td>
		
	

</tr>

</table>




</dir>
 
 <input type="submit" value="Register">
  </form>
<div>
</body>
</html>