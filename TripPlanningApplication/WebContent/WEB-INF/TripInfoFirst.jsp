<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Displaying text directions with <code>setPanel()</code></title>
   
   
   
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!--     function to add row -->
    <script type="text/javascript">
    var rowCount = 1;
    function addMoreRows(frm) { 
    rowCount ++;
    var recRow = '<tr><td> blank </td> <td><input id="Address" type="text" maxlength="120"/></td><td><input id="Arrivaltime" type="text" maxlength="120"/></td><td><input id="Departuretime" type="text" maxlength="120"/></td> <td><span style="font:normal 12px agency, arial; color:green; text-decoration:underline; cursor:pointer;" onclick="R&Rinfo(this.form);"> R&R </span></td><td><span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="saveRows(this.form);"> save </span></td><td><span style="font:normal 12px agency, arial; color:grey; text-decoration:underline; cursor:pointer;" onclick="addMoreRows(this.form);"> Add </span></td></tr> <a href="javascript:void(0);" onclick="removeRow('+rowCount+');">Delete</a>'; 
    jQuery('#addedRows').append(recRow); }
    function removeRow(removeNum) 
    { jQuery('#rowCount'+removeNum).remove(); }
    
    </script>
   
   <style type="text/css">
table {
    border: 1px solid black;
    
	height: 100%;
	width: 100%;
}

html, body
{
  height: 100%;
}

 .usinfo{
    width: 50%;
    height: 100%;
    background-color: #d9d9d9;
  
}

 .googlemap{
    width: 100%;
    height: 50%;
    background-color: #b3b3ff;
   
}

 .extrainfo{
    width: 100%;
    height: 50%;
    background-color: #e6ccff;
    
}
</style>
   
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
      #right-panel {
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }

      #right-panel select, #right-panel input {
        font-size: 15px;
      }

      #right-panel select {
        width: 100%;
      }

      #right-panel i {
        font-size: 12px;
      }
      #right-panel {
        height: 100%;
        float: right;
        width: 390px;
        overflow: auto;
      }
      #map {
        margin-right: 400px;
        height: 400px;
     
        width: 400px;
      }
      #floating-panel {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }
      @media print {
        #map {
          height: 500px;
          margin: 0;
        }
        #right-panel {
          float: none;
          width: auto;
        }
      }
    </style>
  </head>
  <body>
    <div id="floating-panel">
      <strong>Start:</strong>
      <select id="start">
        <option value="5262 b wynnewood rd, harrisburg, pa, 17209">Chicago</option>
        <option value="st louis, mo">St Louis</option>
        <option value="joplin, mo">Joplin, MO</option>
        <option value="oklahoma city, ok">Oklahoma City</option>
        <option value="amarillo, tx">Amarillo</option>
        <option value="gallup, nm">Gallup, NM</option>
        <option value="flagstaff, az">Flagstaff, AZ</option>
        <option value="winona, az">Winona</option>
        <option value="kingman, az">Kingman</option>
        <option value="barstow, ca">Barstow</option>
        <option value="san bernardino, ca">San Bernardino</option>
        <option value="los angeles, ca">Los Angeles</option>
      </select>
      <br>
      <strong>End:</strong>
      <select id="end">
        <option value="chicago, il">harrisburg</option>
        <option value="st louis, mo">St Louis</option>
        <option value="joplin, mo">Joplin, MO</option>
        <option value="oklahoma city, ok">Oklahoma City</option>
        <option value="amarillo, tx">Amarillo</option>
        <option value="gallup, nm">Gallup, NM</option>
        <option value="flagstaff, az">Flagstaff, AZ</option>
        <option value="winona, az">Winona</option>
        <option value="kingman, az">Kingman</option>
        <option value="barstow, ca">Barstow</option>
        <option value="san bernardino, ca">San Bernardino</option>
        <option value="los angeles, ca">Los Angeles</option>
      </select>
    </div>
<!--     <div id="right-panel"></div> -->
<!--     <div id="map"></div> -->
    
    
    
    
 <table>
<tr>
  <td rowspan="2" class= "usinfo">
  
  	<div >
  
  <table id= "heading" style="booder:1px">
	  <tr>
		  <th> 
		  	Position
		  </th>
		   <th> 
		 	 address
		  </th>
		
		   <th> 
		    Arrival Date& Time
		  </th>
		   <th> 
		    Departure Date& Time
		  </th>
		   <th> 
		  Delete1
		  </th>
		   <th> 
		  R&R info
		  </th>
		   <th> 
		  <span style="font:normal 12px agency, arial; color:blue; text-decoration:underline; cursor:pointer;" onclick="addMoreRows(this.form);"> Add More </span>  
		  </th>
	 <tr>
	<tr id="rowId">
		<td>
		Start
		</td>

		<td><input type="text" id= "Address" value="starting add" >   </td>
		
		
		<td><input type="text" name= "Arrivaltime" value="arrival time" >   </td>
		<td><input type="text" name= "Departuretime" value="depart time" >   </td>
		
		<td>
			Add button
		</td>
		<td>
			No R&R
		</td>
		<td>
			Save button
		</td>
	</tr>

  </table>
  <div>
  <table id="addedRows">
  
  </table> </div> 
  
 	 </div>
  </td>
  
  <td class="googlemap">
 	 <div >
		  <div id="map"></div>
<!--   			<div id="right-panel"></div> -->
  	</div>
  </td>
</tr>
<tr>
  <td class="extrainfo">
  
  	<div >
  		this will have<br>his info<br>his info<br>his info<br>his info the weather/news/...
  		have<br>his info<br>his info<br>his info<br>his info the weather/ne
  
  
  	</div>
  
  </td>
</tr>
</table>
    
    
    <script>
      function initMap() {
        var directionsDisplay = new google.maps.DirectionsRenderer;
        
        var directionsService = new google.maps.DirectionsService;
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
          center: {lat: 41.85, lng: -87.65}
        });
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('right-panel'));

        var control = document.getElementById('floating-panel');
        control.style.display = 'block';
        map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);

        var onChangeHandler = function() {
             
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        };
        document.getElementById('Address').addEventListener('change', onChangeHandler);
        document.getElementById('end').addEventListener('change', onChangeHandler);
      }


      function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var table = document.getElementById('addedRows');
        var start = document.getElementById('Address').value;
   
        var end = table.rows[table.rows.length-1].cells[1].firstChild.value;
        var waypts=[]; 
        for (var r = 0, n = table.rows.length; r < (n-1); r++) {
                 waypts.push({
        		location:table.rows[r].cells[1].firstChild.value,
        		stopover:true 
        	         });
        	
         }
        
        
        directionsService.route({
          origin: start,
          destination: end,
          // create a array and pass that array to this waypoints.
          waypoints:waypts,
          
          travelMode: google.maps.TravelMode.DRIVING
        }, function(response, status) {
          if (status === google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
            distance = "The distance between the two points on the chosen route is: "+response.routes[0].legs[0].distance.text;
            durationTakes = "The aproximative driving time is: "+response.routes[0].legs[0].duration.text;
//             document.getElementById("distance_road").innerHTML = distance;
         
            window.alert('diste is ' + 2 + "fdfdf"+time);
          
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtyYJq6me3gTqlFEWpR6TX9bdZNUQroiI&callback=initMap">
    </script>
  </body>
</html>