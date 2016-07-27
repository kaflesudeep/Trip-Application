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
    <p> Google map</p>
  </div>
  <table>
    <tr>
      <td rowspan="2" class="usinfo">

        <div>

          <table id="heading" style="booder:1px">
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

                  <td><input type="text" id="Address" value="starting add"> </td>


                  <td><input type="datetime-local" id="departureTime" value="2014-11-16T15:25:33"> </td>
                  <td><input type="text" name="Departuretime" value="depart time"> </td>

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

            </table>
          </div>

        </div>
      </td>

      <td class="googlemap">
        <div>
          <div id="map"></div>
          <!--   			<div id="right-panel"></div> -->
        </div>
      </td>
      </tr>
      <tr>
        <td class="extrainfo">

          <div>
            this will have<br>his info<br>his info<br>his info<br>his info the weather/news/... have
            <br>his info<br>his info<br>his info<br>his info the weather/ne


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
//             distance = "The distance between the two points on the chosen route is: "+response.routes[0].legs[0].distance.text;
//             durationTakes = "The aproximative driving time is: "+response.routes[0].legs[0].duration.text;
//             document.getElementById("distance_road").innerHTML = distance;
         
            var route = response.routes[0]; 
            var total_Distance = 0; 
      var total_Duration = 0; 

                                                         
             var Cum_Distance = []; 
             var Cum_Duration = [];
                                                         
            for (var i = 0; i<route.legs.length; i++){

             total_Distance  += route.legs[i].distance.value; 
             total_Duration  += route.legs[i].duration.value; 
          Cum_Distance[i]= total_Distance; 
          Cum_Duration[i]= total_Duration;
              
    
    }
    alert("Cum_Distance[i] " +Cum_Duration[0] );    
    changeContent(Cum_Distance, Cum_Duration );  
            
            
          
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }
    
    
    
function changeContent(distance, time){
   
   // var time = []; var extraStay=[];
// stay times are in hrs and cumulative hrs time.
//time = [1, 2, 3, 4];
extraStay=[1, 3, 5, 7, 10]
    var arrayOFTable=document.getElementById('addedRows').rows;
    var departure_First_Time = document.getElementById("departureTime").value;
var hrstoMillises = 3600*1000;
 
 
var date1 = new Date(departure_First_Time );
var timeinNumber_first = Math.abs(date1.getTime());
 
var addedTravelTime_inMillisec =0 ;
 
for(var i = 0; i <arrayOFTable.length; i++){
 
var New_location_Arrival_Time = timeinNumber_first -7*hrstoMillises + time[i]*1000  + extraStay[i]*hrstoMillises;
     alert("extraStay[i]*hrstoMillises     --" + extraStay[i]*hrstoMillises)                       
 
var New_location_Departure_Time = New_location_Arrival_Time  + extraStay[i]*hrstoMillises;
 
var a= new Date(New_location_Arrival_Time);
var d= new Date(New_location_Departure_Time);
 
 
var date_New_Location_arrival = ("0" + a.getDate()).slice(-2) + "-" + ("0"+(a.getMonth()+1)).slice(-2) + "-" +
    a.getFullYear() + " " + ("0" + a.getHours()).slice(-2) + ":" + ("0" + a.getMinutes()).slice(-2);
 
var date_New_Location_departure = ("0" + d.getDate()).slice(-2) + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +
    d.getFullYear() + " " + ("0" + d.getHours()).slice(-2) + ":" + ("0" + d.getMinutes()).slice(-2);
 
var y=arrayOFTable[i].cells
    y[2].innerHTML=date_New_Location_arrival
 
y[3].innerHTML=date_New_Location_departure
 
 
}
 
  
}
    
    
    
  </script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtyYJq6me3gTqlFEWpR6TX9bdZNUQroiI&callback=initMap">
  </script>
</body>

</html>