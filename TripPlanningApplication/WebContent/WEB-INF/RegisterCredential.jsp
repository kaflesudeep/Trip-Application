<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="Post" action="registerCredential">  
<p>This is the place where you need to get user 
name and password credential and save to the database
 and redirect user to the success page. <p>
 
 
 
 First Name: ${userRegisterInformation.firstName}<br>
Last Name : ${userRegisterInformation.lastName}<br>
Date Of Birth: ${userRegisterInformation.dateofBirth}<br>




<dir>



<p> Some General Information ......</p>
</dir>

<dir>

<table>

<tr> 
			<td><label id="label"> Please Enter Your User Name: </label> </td>
			<td><input type="text" name= "userName" >   </td>
		</tr>
		
		<tr> 
			<td><label id="label"> Please Enter Your Password: </label> </td>
			<td><input type="text" name= "userPassword" >   </td>
		</tr>
		<tr> 
			<td><label id="label"> Please re enter your Password: </label> </td>
			<td><input type="text" name= "rePassword" >  </td>
		</tr>
		
</table>


<table>

<tr> 
			<td><label id="label"> securityQuestion1  </label> </td>
			<td><input type="text" name= "securityAnswer1" >   </td>
		
		
		</tr>

<tr>
<td><label id="label"> securityQuestion2  </label> </td>
			<td><input type="text" name= "securityAnswer2" >   </td>
		
	

</tr>
</table>

</dir>
 
 <input type="submit" value="Register">
  </form>
</body>
</html>