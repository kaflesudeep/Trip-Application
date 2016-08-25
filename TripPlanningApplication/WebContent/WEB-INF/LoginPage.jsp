<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trip Planner:Login Page</title>



<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<style><%@ include file="/resources/css/main.css"%>
		<%@ include file="/resources/css/screen_reader.css"%>
</style>


<script><%@ include file="/resources/css/login.js"%>
<%@ include file="/resources/css/validate.js"%>
<%@ include file="/resources/css/commonFunction.js"%>

</script>

<script>


function checkBokChecked(){
	$("#submit, #submit1").removeAttr('disabled');
		if($(this).is(":checked")){
       		$("#submit, #submit1").removeAttr('disabled').css({'background':'#2A88AD'});
         }
    else if($(this).is(":not(:checked)")){
        	$("#submit, #submit1").attr('disabled', 'true').css({'background':'#c9ccce'});
       
    }
}; 

$(document).ready(function(){
	$("#submit,#submit1").attr('disabled', 'true');
    $('input[id="check_id"]').on("click", checkBokChecked );
    $('#username, #password' ).on("keyup", removeErrorMessage );
});

</script>



</head>
<body>
<div class="form-style-10">
<h1>Login In!<span>Plan Your Perfect Trip Using this Site!</span></h1>

<p class="test" aria-hidden="true"> this is the test for the screen reader css file</p>


<% 
String error = (String)request.getAttribute("StateMessage");
if(error!=null && error.toLowerCase().trim()=="faliure" ) {%>

   <div id="errormessage"> Please enter a correct Username or Password.  </div> 
   
<%
 }
%>

#c9ccce

<div id="div"> </div>
<div class="section">


<!-- <form  method="post" action="distance"> -->
<form  method="post" action="loginUser">
<label>User Name :</label>
<input type="text" name="username" class="usernameC"  id="username"/> <span class="status"></span>
<label>Password :</label>
<input type="password" name="password"  class="passwordC" id="password"/>
<br>
    <span class="privacy-policy">
     <input type="checkbox" id = "check_id" name="field7" >You agree to our Terms and Policy. 
     </span>
     
  <br>   
<input type="submit" id="submit" class ="disabled" value="loginUser" />
</form>
</div>


<div class="button-section">
<form  method="post" action="registerUser">
<input type="submit" id="submit1" class= "disabled" value="registerUser" />


</form>
</div>


</div>
</div>
</body>
</html>
