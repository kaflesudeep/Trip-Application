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



<script>
$(document).ready(function(){
	var error_password=""; 	
	$('form').submit(function () {
		var error_password= validate_username_password();
	    
         // Check if there are error fielsd of not
	    if (error_password.toLowerCase()  ===  "true") {
	   
	        return false;
	    }
	});
	
	$(".uname").change(CheckAvailability);
	$("#userPassword, #rePassword, #username").change(removevalidation); 
	
}); 

</script>

        
        
</head>
<body>

<div class="form-style-10">
<h1>Login In!<span>Plan Your Perfect Trip  Using this Site! First Name: ${userRegisterInformation.firstName}</span></h1>

Your Account Id is : ${userIdNum}
 Welcome to Easy Trip : ${userRegisterInformation.firstName}<br>


<div>
<form method="Post" action="registerCredential">  
 <div class="section"><span>1</span>Credentials</div>
    <div class="inner-wrap">
 
 
 
 
<table>
<!-- <span class="status"></span> -->
<tr> 
			<td><label id="label" class="required"> Please Choose c Your User Name: </label> </td>
			<td><input type="text" name= "userId" class="uname" id="username" > <span class="status"></span>  </td>
		</tr>
		
		<tr id="passw"> 
			<td><label id="label" class="required"> Please Enter Your Password: </label> </td>
			<td><input type="text" name= "userPassword" id="userPassword" >   </td>
		</tr>
		<tr id="passw"> 
			<td><label id="label" class="required"> Please re enter your Password: </label> </td>
			<td><input type="text" name= "rePassword" id="rePassword" >  </td>
		</tr>
		
</table>
</div>

<div>

<div class="section"><span>2</span>Security Questions</div>
    <div class="inner-wrap">
  <table width="75%">	

    <tr>
      <td><label id="label" class="required"> Choose your First Security Question </label> </td>
		<td>
		   <select id="label" name = "securityQuestion1">
             <option value="What is your Mother's Middle Name?">What is your Mother's Middle Name?</option>
             <option value="What is your first pet Name?">What is your first pet Name?</option>
             <option value="What is your first Car Make?">What is your first Car Make?</option>
             <option value="What is your Best Friend Name?">What is your Best Friend Name?</option>
             <option value="Where were you born?">Where were you born?</option>
             <option value="Where did you gratuated from?">Where did you gratuated from?</option>
             <option value="What was your dream job?">What was your dream job?</option>
          </select>
       </td>
     </tr>
     <tr>
        <td><label id="label" class="required">Answer</label> </td>
	    <td><input type="text" name= "securityAnswer1"  id="">   </td>
    </tr>

    <tr>  
       <td><label id="label" class="required"> Choose your Second Security Question </label> </td>
	   <td>
	      <select id="label" name = "securityQuestion2" class="required">
            <option value="What is your Mother's Middle Name?">What is your Mother's Middle Name?</option>
             <option value="What is your first pet Name?">What is your first pet Name?</option>
             <option value="What is your first Car Make?">What is your first Car Make?</option>
             <option value="What is your Best Friend Name?">What is your Best Friend Name?</option>
             <option value="Where were you born?">Where were you born?</option>
             <option value="Where did you gratuated from?">Where did you gratuated from?</option>
             <optiotion value="What was your dream job?">What is your first pet Name?</option>
           </select> </td>
         </tr>
         <tr>
         <td><label id="label" class="required">Answer</label> </td>
		 <td><input type="text" name= "securityAnswer2"  id="">   </td>
    </tr>


<tr>

</tr>

</table>




</div>
 
 <input type="submit" id = "submit_button" value="Register">
  </form>
<div>
</body>
</html>