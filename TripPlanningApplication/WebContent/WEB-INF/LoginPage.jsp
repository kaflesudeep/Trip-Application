<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trip Planner WebSite: Login Page</title>


// need to implement JS and css file for formating the page. 
<%-- <link href="<c:url value="/Resources/CSS/style.css" rel="stylesheet"   type="text/css" /> --%>
 
<!--  <link rel="stylesheet" href="/Resources/CSS/style.css" /> -->
   



</head>
<body>
<div class="container">
<div class="main">
<h2>Welcome to Our Site</h2>


<form  method="post" action="loginUser">
<label>User Name :</label>
<input type="text" name="username" id="username"/>
<label>Password :</label>
<input type="password" name="password" id="password"/>
<input type="submit" value="loginUser" />
</form>

<form  method="post" action="registerUser">

<input type="submit" value="registerUser" />
</form>



</div>
</div>
</body>
</html>