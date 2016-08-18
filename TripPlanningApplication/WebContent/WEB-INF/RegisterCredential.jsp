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

<style><%@ include file="/resources/css/main.css"%>
		<%@ include file="/resources/css/screen_reader.css"%>
</style>


<script><%@ include file="/resources/css/login.js"%>
        <%@ include file="/resources/css/validate.js"%>
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