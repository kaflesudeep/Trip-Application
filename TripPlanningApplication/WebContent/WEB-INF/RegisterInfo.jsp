<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<style><%@ include file="/resources/css/main.css"%>
		<%@ include file="/resources/css/screen_reader.css"%>
</style>


<script><%@ include file="/resources/css/login.js"%>
<%@ include file="/resources/css/validateRegisterInfo.js"%></script>

<script>
$(document).ready(function(){
	$('form').submit(function () {
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
<h1>Login In!<span>Plan Your Perfect Trip Using this Site!</span></h1>

 

<div>
	<form method="post" action="registerInfo" >
		<h2> Welcome to the .... Site </h2>
        <span id="GlobalError" > </span>

<div class="section"><span>1</span> Name &amp; Date of Birth</div>
    <div class="inner-wrap">

	<table   width="75%">
 		<tr> 
			<td><label id="label" class="required"> First Name:  </label> </td>
			<td><input id="firstName" type="text" name= "firstName" > </td>
			
		</tr>
		
		<tr> 
			<td><label id="label"> Middle Name: </label> </td>
			<td><input id="inputfield" type="text" name= middleName  >  </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required" > Last Name: </label> </td>
			<td><input type="text" name= "lastName"  id ="lastName">   </td>
		</tr>
	
<!-- 		id="datepicker" -->
		
		<tr> 
			<td><label id="label" class="required"> Date of Birth: </label> </td>
			<td><input type="text" name= "dateofBirth" id="datepicker" >   </td>
		</tr>
</table>

</div>
<div>

<div class="section"><span>2</span>Contact Information</div>
    <div class="inner-wrap">
<table width="75%">		
				
		<tr> 
			<td><label id="label" class="required"> Email Address: </label> </td>
			<td><input type="text" name= "emailAddress" id="emailAddress" >   </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Phone Number: </label> </td>
			<td><input type="text" name= "phoneNumber" id="phoneNumber" >  </td>
		</tr>
		<tr> 

</table>

</div>
</div>

<div class="section"><span>3</span>Mailing Address</div>
    <div class="inner-wrap">
<table width="75%">
			<td><label id="label" class="required"> House Number: </label> </td>
			<td><input type="text" name= "houseNumber" id="houseNumber" >   </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required"> St. Add Line 1: </label> </td>
			<td><input type="text" name= "streetAddressLine1" id="streetAddressLine1" >  </td>
		</tr>
		<tr> 
			<td><label id="label" > St. Add Line 2: </label> </td>
			<td><input type="text" name= "streetAddressLine2"  >    </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required"> City: </label> </td>
			<td><input type="text" name= "cityName" id="cityName"  >     </td>
		</tr>
		<tr>
		
		<tr> 
			<td><label id="label" class="required"> State Name: </label> </td>
			<td><input type="text" name= "stateName" id="stateName"  >     </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Zip Code: </label> </td>
			<td><input type="text" name= "zipCode" id="zipCode" >    </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Country: </label> </td>
			<td><input type="text" name= "countryName"  id="countryName" >    </td>
		</tr>
		
		


		
	</table>
	</div>
</div>

 <div class="button-section">
	<input type="submit" id = "submit_button" value="Next" />	
	</form>
</div>
</div>
</body>

</html>