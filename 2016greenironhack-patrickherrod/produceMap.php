<?php
  include_once 'site_includes/db_connect.php';
  $sql = "SELECT * from fruits_and_nuts";
  $result = $mysqli->query($sql);

?>
<!DOCTYPE html>
<html>
  <head>
    <title>Produce Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>
    <link href="bootstrap.min.css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="jquery-2.1.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
  </head>
  <body>
  <?php
/*  if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Jan</th><th>Feb</th><th>Mar</th><th>Apr</th><th>May</th><th>Jun</th><th>Jul</th><th>Aug</th><th>Sep</th><th>Oct</th><th>Nov</th><th>Dec</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["food_id"]."</td><td>".$row["food_name"]."</td><td>".$row["jan"]."</td><td>".$row["feb"]."</td></tr>";
    }
    echo "</table>";
  } else {
    echo "0 results";
  }
  $mysqli->close();
*/
?>
<!--    <div id="map"></div> -->
	<h1>hello world</h1>
        <div id="div1"><h2>Let jQuery AJAX Change This Text</h2></div>
	<div id="div2"></div> 
	<div class="btn-group" data-toggle="buttons-radio">
	  <button type="button" class="btn btn-primary" value="fruits">Fruits</button>
	  <button type="button" class="btn btn-primary" value="veggies">Vegetables</button>
	</div>
	<br />
	<select id="selector" class="form-control"/>
<script id="source" language="javascript" type="text/javascript">
	$(function()
	{
	  $.ajax({                                      
            url: "api.php",                  //the script to call to get data          
	    type: 'post',
	    datatype: "json",
	    data : {"column":"*",
		"table": $('.btn-group').val()},
	    success: function(data)          //on recieve of reply
      	    {
	      var id;
	      var fname;
	      for (x = 0; x < data.length; x++) {
		fname = data[x]['food_name'];
		$('#selector').append($('<option />').val(data[x]['food_name']).text(data[x]['food_name']));
	      }
	      $('#div1').html("<b>id: </b>"+id+"<b> name: </b>"+fname);
	    }
	  });

	});

	
</script>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 40.425399, lng: -86.905450},
          zoom: 13
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5wLhnIZX1forTvrYIw3NXrG6yyt0uHSE&callback=initMap"
    async defer></script>
  </body>
</html>

