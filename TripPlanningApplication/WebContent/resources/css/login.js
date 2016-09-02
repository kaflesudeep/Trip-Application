
$(document).ready(function() {
	
// function to add "*" in front of all the label that has "required" id.	
	$("<span aria-hidden='true'>*</span><span class='hidden'>Required Field</span>").css({"color": "red"}).appendTo(".required");

	
// for calender date picker id="datepicker"
	$(".datepicker").datepicker({
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
		   dateFormat: 'dd-mm-yyyy'
		});
		
	
});


