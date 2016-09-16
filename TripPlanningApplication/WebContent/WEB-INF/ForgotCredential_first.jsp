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
<script><%@ include file="/resources/css/validate.js"%></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

     <script>
     $(document).ready(function(){
    		$('form').submit(function () {
    			alert("zxczx")
    		
    		    var error_field= validateAll_RegisterInfo(); 
    	         // Check if there are error fielsd of not
    		    if (error_field.toLowerCase()  ===  "true") {
    		   
    		        return false;
    		    }
    		});
    		// remove validation if the any text is entered.
    		$("input").on("keypress", removevalidation); 
    		
    	}); 

     
     </script>
        
</head>
<body>

<div class="form-style-10">
<h1>Login In!<span>Plan Your Perfect Trip  Using this Site! First Name: ${userRegisterInformation.firstName}</span></h1>


<div>
<form method="Post" action="forgotCredential2">  
 <div class="section"><span>1</span>Credentials</div>
    <div class="inner-wrap">
 
 
 <h1>Generating your Credentials</h1>
 
<table>
<!-- <span class="status"></span> -->
      <tr> 
			<td><label id="label" class="required"> : </label> </td>
			<td> <select id="label" name = "usernamepassword">
             <option value="Username">Username</option>
             <option value="Password">Password</option>
             	
			</td>
		</tr>
		
		<tr id="userId_section"> 
			<td><label id="label" class="required">Enter your Username:</label> </td>
			<td><input type="text" name= "userId" id="userId" >   </td>
		</tr>
			
		<tr> 
			<td><label id="label" class="required"> Email Address You have used:</label> </td>
			<td><input type="text" name= "email" id="emailAddress" >   </td>
		</tr>
			
</table>
</div>





</div>
 
 <input type="submit" id = "submit_button" value="Register">
  </form>
<div>
</body>
</html>