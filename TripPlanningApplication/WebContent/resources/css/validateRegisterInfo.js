function validateAll_RegisterInfo(){
 
	
	removevalidationall();
	var error_field=""; 
	var fname= $("#firstName").val();
	var lname= $("#lastName").val();
	var dob = new Date($("#datepicker").datepicker("getDate"));
	var emailA= $("#emailAddress").val();
	var phonenum= $("#phoneNumber").val();
	var housenum= $("#houseNumber").val();
	var st1address= $("#streetAddressLine1").val();
	var cityname= $("#cityName").val();
	var statename= $("#stateName").val();
	var zipcode= $("#zipCode").val();
	var country= $("#countryName").val();
	
	
	var name_regex = /^[a-zA-Z]+$/;
	var email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	var add_regex = /^[0-9a-zA-Z]+$/;
	var zip_regex = /^[0-9]+$/;
	var numberic_regex = /^[0-9]+$/;






if (!fname.match(name_regex) || fname.length == 0) {
     $("#firstName").css({"border":"1px solid red", "background-color":"#ffb3b3"});
     $("#firstName").parent().append("<td id='error'>Please enter your valid first name.</td>").css({'color':'red'});
     error_field="true"; 
	}
 
 
 
if (!lname.match(name_regex) || lname.length == 0) {
     $("#lastName").css({"border":"1px solid red", "background-color":"#ffb3b3"});
     $("#lastName").parent().append("<td id='error'>Please enter your valid last name.</td>").css({'color':'red'});
     error_field="true";
    }
 
 
 
var now = new Date();
var CurrentyearVar= now.getFullYear()*10000+(now.getMonth()+1)*100+now.getDate();

var date = dob.getFullYear()*10000+(dob.getMonth()+1)*100+dob.getDate();
var age= Math.floor((CurrentyearVar-date)/(10000));
 
if (date=="") {
     $("#datepicker").css({"border":"1px solid red", "background-color":"#ffb3b3"});
     $("#datepicker").parent().append("<td id='error'>Please enter the date of birth.</td>").css({'color':'red'});
}else if (age<21) {
     $("#datepicker").css({"border":"1px solid red", "background-color":"#ffb3b3"});
     $("#datepicker").parent().append("<td id='error'>Minimum age requirement is 21 years. </td>").css({'color':'red'});
error_field="true";
}
 
if (!emailA.match(email_regex) || emailA.length == 0) {
    $("#emailAddress").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#emailAddress").parent().append("<td id='error'>Please enter your valid email address.</td>").css({'color':'red'});
    error_field="true";
    }
if (!phonenum.match(numberic_regex) || phonenum.length !== 10) {
    $("#phoneNumber").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#phoneNumber").parent().append("<td id='error'>Please enter your valid phone number.</td>").css({'color':'red'});
    error_field="true";
    }
if (!housenum.match(add_regex) || housenum.length == 0) {
    $("#houseNumber").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#houseNumber").parent().append("<td id='error'>Please enter your valid house number.</td>").css({'color':'red'});
    error_field="true";
    }
if (!st1address.match(add_regex) || st1address.length == 0) {
    $("#streetAddressLine1").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#streetAddressLine1").parent().append("<td id='error'>Please enter valid Street address.</td>").css({'color':'red'});
    error_field="true";
    }
if (!cityname.match(name_regex) || cityname.length == 0) {
    $("#cityName").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#cityName").parent().append("<td id='error'>Please enter your valid City Name.</td>").css({'color':'red'});
    error_field="true";
    }

if (!statename.match(name_regex) || statename.length == 0) {
    $("#stateName").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#stateName").parent().append("<td id='error'>Please enter your valid State Name.</td>").css({'color':'red'});
    error_field="true";
    }
if (!zipcode.match(zip_regex) || zipcode.length == 0) {
    $("#zipCode").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#zipCode").parent().append("<td id='error'>Please enter your Valid Zip Code.</td>").css({'color':'red'});
    error_field="true";
    }
if (!country.match(name_regex) || country.length == 0) {
    $("#countryName").css({"border":"1px solid red", "background-color":"#ffb3b3"});
    $("#countryName").parent().append("<td id='error'>Please enter your valid Country Name.</td>").css({'color':'red'});
    error_field="true";
    }
 if(error_field.toLowerCase()  ===  "true"){
	 $("#GlobalError").append("<p id='error'>There is error in your page. Enter correct information before submition. </p>").css({'color':'red'});
}

return error_field; 
}
 
function removevalidation (){
	
   $(this).closest("tr").find("#error").remove();
   $(this).closest("input").css({"border":"", "background-color":""});
 }
 
function removevalidationall (){
	   $("#GlobalError").children("#error").remove();
	   $("tr").find("#error").remove();
	   $("*").css({"border":"", "background-color":""});
	 }
