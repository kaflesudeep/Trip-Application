<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<spring:url value="/resources/theme1/css/style.css" var="main" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${main}" rel="stylesheet" />



<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>


<style>
     <%@ include file="/resources/css/main.css"%>
</style>



<!-- need to include this jQuery/javascript into new external file name time.js -->
<script type="text/javascript">
$(function() {
	$("#datepicker").datepicker({
	   //showOn: both - datepicker will appear clicking the input box as well as the calendar icon
	   //showOn: button - datepicker will appear only on clicking the calendar icon
	   showOn: 'button',
	   //you can use your local path also eg. buttonImage: 'images/x_office_calendar.png'
	   buttonImage: 'http://theonlytutorials.com/demo/x_office_calendar.png',
	   buttonImageOnly: true,
	   changeMonth: true,
	   changeYear: true,
	   showAnim: 'slideDown',
	   duration: 'fast',
	   dateFormat: 'dd-mm-yy'
	
	});
});

</script>





<script src="jquery.js" type="text/javascript"></script>  
 <script type="text/javascript"> 


$(document).ready(function() {
	$("<span>*</span>").insertAfter(".required").css({
		color: 'red'
	});
	
// 	$(".required").append("<span>*</span>").css({
// 		color: 'red'
// 	});

});
</script>
</script>
</head>

<body>
 
<div class="form-style-10">
<h1>Login In!<span>Plan Your Perfect Trip Using this Site!</span></h1>

 

<div>
	<form method="post" action="registerInfo" >
		<h1> Welcome to the .... Site </h1>


<div class="section"><span>1</span> Name &amp; Date of Birth</div>
    <div class="inner-wrap">

	<table   width="75%">
 		<tr> 
			<td><label id="label" class="required"> First Name:  </label> </td>
			<td><input id="inputfield"  type="text" name= "firstName" > </td>
		
		
		
		
		</tr>
		
		<tr> 
			<td><label id="label"> Middle Name: </label> </td>
			<td><input id="inputfield" type="text" name= middleName  >  </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required" > Last Name: </label> </td>
			<td><input type="text" name= "lastName" >   </td>
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
			<td><input type="text" name= "emailAddress"  >   </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Phone Number: </label> </td>
			<td><input type="text" name= "phoneNumber"  >  </td>
		</tr>
		<tr> 

</table>

</div>
</div>

<div class="section"><span>3</span>Mailing Address</div>
    <div class="inner-wrap">
<table width="75%">
			<td><label id="label" class="required"> House Number: </label> </td>
			<td><input type="text" name= "houseNumber"  >   </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required"> St. Add Line 1: </label> </td>
			<td><input type="text" name= "streetAddressLine1"  >  </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> St. Add Line 2: </label> </td>
			<td><input type="text" name= "streetAddressLine2"  >    </td>
		</tr>
		
		<tr> 
			<td><label id="label" class="required"> City: </label> </td>
			<td><input type="text" name= "cityName"   >     </td>
		</tr>
		<tr>
		
		<tr> 
			<td><label id="label" class="required"> State Name: </label> </td>
			<td><input type="text" name= "stateName"   >     </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Zip Code: </label> </td>
			<td><input type="text" name= "zipCode"  >    </td>
		</tr>
		<tr> 
			<td><label id="label" class="required"> Country: </label> </td>
			<td><input type="text" name= "countryName"   >    </td>
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