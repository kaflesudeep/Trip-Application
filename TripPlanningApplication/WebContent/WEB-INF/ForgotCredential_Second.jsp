<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
$(document).ready(function(){
	
	 var modelAttribute_userpassword = '${usernamepassword}';
	 var modelAttributeValue_userid = '${userId}';
	 var modelAttributeValue_email = '${email}';
	 
	$('#usernamepassword').val(modelAttribute_userpassword); 
	$('#userId').val(modelAttributeValue_userid); 
	$('#email').val(modelAttributeValue_email); 
	

	
});

</script>


</head>
<body>
 take date of birth and question answer from the user
<div class="button-section">
<form  method="post" action="forgotCredential3">
<input type="submit" id="submit1" class= "disabled" value="forgotCredential" />





 

<input type="hidden" name="usernamepassword" id="usernamepassword">
<input type="hidden" name="userId" id="userId">
<input type="hidden" name="email" id="email">
 
<div class="section"><span>2</span>Security Questions</div>
    <div class="inner-wrap">
  <table width="75%">	

    <tr>
      <td><label id="label" class="required"> Choose your First Security Question </label> </td>
		<td>
		   <select id="label" name = "securityQuestion1" id="question1">
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
 
 
 
</form>
</div>

</body>
</html>