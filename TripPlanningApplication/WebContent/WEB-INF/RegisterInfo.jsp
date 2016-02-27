<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="css/try.css">
<script type="text/javascript" src="js/time.js"></script>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<!-- css related  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />


<!-- <script language="javascript" type="text/javascript" src="jquery-1.8.2.js"></script> -->
<!-- <script language="javascript" type="text/javascript" src="js/time.js"> </script> -->




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

<!-- // CSS styling -->

<style>
#ui-datepicker-div { font-size: 12px; } 
#datepicker{float:left; height:18px;}
h1{font-size: 15px;}
</style>


</head>
<body>
 

 

<div>
	<form method="post" action="registerInfo" >
		<h1> Welcome to the .... Site </h1>

	<table  align="center" width="75%">
 		<tr> 
			<td  width="25%"><label id="label"> First Name: </label> </td>
			<td  width="25"><input id="inputfield" type="text" name= "firstName" > </td>
		
		
		
			<td width="25%"><label id="label"> Middle Name: </label> </td>
			<td width="25%"><input id="inputfield" type="text" name= middleName  >  </td>
		
		</tr>
		
		<tr> 
			<td><label id="label"> Middle Name: </label> </td>
			<td><input id="inputfield" type="text" name= middleName  >  </td>
		</tr>
		
		<tr> 
			<td><label id="label" > Last Name: </label> </td>
			<td><input type="text" name= "lastName" >   </td>
		</tr>
		
		<tr> 
			<td><label id="label"> Date of Birth: </label> </td>
			<td><input type="text" name= "dateofBirth" id="datepicker"  value="2016-02-24 20:40:54">   </td>
		</tr>
		
		<tr> 
			<td><label id="label"> Email Address: </label> </td>
			<td><input type="text" name= "emailAddress" >   </td>
		</tr>
		<tr> 
			<td><label id="label"> Phone Number: </label> </td>
			<td><input type="text" name= "phoneNumber" >  </td>
		</tr>
		<tr> 
			<td><label id="label"> House Number: </label> </td>
			<td><input type="text" name= "houseNumber" >   </td>
		</tr>
		
		<tr> 
			<td><label id="label"> St. Add Line 1: </label> </td>
			<td><input type="text" name= "streetAddressLine1" >  </td>
		</tr>
		<tr> 
			<td><label id="label"> St. Add Line 2: </label> </td>
			<td><input type="text" name= "streetAddressLine2" >    </td>
		</tr>
		
		<tr> 
			<td><label id="label"> State Name: </label> </td>
			<td><input type="text" name= "stateName" >     </td>
		</tr>
		<tr> 
			<td><label id="label"> Zip Code: </label> </td>
			<td><input type="text" name= "zipCode" >    </td>
		</tr>
		<tr> 
			<td><label id="label"> Country: </label> </td>
			<td><input type="text" name= "countryName" >    </td>
		</tr>
		
		
		
	</table>
	
	<input type="submit" value="Next" />	
	</form>
</div>
</body>
</html>


