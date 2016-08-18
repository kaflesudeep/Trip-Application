<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Auto Complete Input box</title>
<link rel="stylesheet" type="text/css" href="jquery/jquery.autocomplete.css" />
<script type="text/javascript" src="jquery/lib/jquery.js"></script>
<script type="text/javascript" src="jquery/jquery.autocomplete.js"></script>
<script>
 
  var itemCount = 0;
  
 $(document).ready(function(){
  
    var objs=[];
    var temp_objs=[];
     
    $( "#add_button" ).click(function() {   
         
        var html = "";
         
        var obj={
            "ROW_ID" : itemCount,
            "ITEM_NAME" :  $("#item_name").val(),
            "ITEM_PRICE" : $("#item_price").val(),
            "ITEM_QUANTITY" : $("#item_quantity").val()
        }   
     
        // add object
        objs.push(obj);
                     
        itemCount++;
        // dynamically create rows in the table
        html = "<tr id='tr"+ itemCount + "'><td>"+ obj['ITEM_NAME'] + "</td> <td>" +  obj['ITEM_PRICE'] + " </td> <td>" +  obj['ITEM_QUANTITY'] + " </td><td><input type='button'  id='" + itemCount + "' value='remove'></td> </tr>";            
         
        //add to the table
        $("#bill_table").append(html)
         
        // The remove button click
        $("#"+itemCount).click(function() {
            var buttonId = $(this).attr("id");
            //write the logic for removing from the array
            $("#tr"+ buttonId).remove();            
        });
         
    });
     
 });
  
     
</script>
</head>
<body>
<table border='0' width='50%' align='center'  style="border-collapse:collapse " cellspacing='3' cellpadding='5'>
<th colspan="7" bgcolor="#0099FF">Billing</th>
<tr>
 
    <td> Item Name : </td>
    <td><input name="item_name" type="text" id="item_name" size="20"/></td>
     
    <td> Price : </td>
    <td><input name="item_price" type="text" id="item_price" size="20"/></td>
     
    <td> Quantity : </td>
    <td><input name="item_quantity" type="text" id="item_quantity" size="20"/></td>
     
    <td><input name="add_button" type="button" id="add_button" size="20" value="Add" /></td>
 
 
</table>
 
 
<div id="billing_items_div"> 
 
<table border='1' id='bill_table'  width='50%' align='center'  style='border-collapse:collapse' cellspacing='3' cellpadding='5'>
 
</table>
</div>
 
</body>
</html>