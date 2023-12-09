<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<%@ include file="head.jsp" %>


<!-- <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true&language=french&region=cameroon"></script> -->

  
	<%@ include file="left-panel.jsp" %>

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

       <%@ include file="header.jsp" %>

		<%@ include file="breadcrumbs.jsp" %>

        <div class="content mt-3">
            <div class="animated fadeIn">

                <div class="row">
                    <div class="col-lg-10">
                        <div class="card">
                            <div class="card-header bg-dark" style="color: white">
                                <h3>
                                <img alt="" src="images/RechercheLocalisation.JPG" style="border-radius: 10%; height: 53px; width: 53px">
                                	RECHERCHE DE TAXIS A PROXIMITE
	                                <form class="navbar-form navbar-left col-lg-4" action="maps-gmap.jsp" style="float: right; margin-top: 0%; margin-right: -2%">
								      	<div class="input-group">
											<input type="text" class="form-control" placeholder="Search">
										    <div class="input-group-btn" style="margin-top: -1%;">
										    	<button class="btn btn-warning" type="submit">
										    		<i class="fa fa-search"></i>
										      	</button>
										    </div>
										  </div>
								    </form>
                                </h3>
                                
                            </div>
                            <div class="card-body" style="height: 503px">
                                <!-- <div class="map" id="map-8"></div> -->
                                <div id="map_canvas" style="width: 100%; height: 100%"></div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <div class="col-lg-2">
                        <div class="card" style="width:114%; margin-left: -12%">
                            <div class="card-header bg-dark">
                                <h4 style="color:white">
                                	<img alt="" src="images/images.png" style="border-radius: 10%; height: 53px; width: 53px">
                                	COORDS
                                </h4>
                            </div>
                            <div class="card-body">
                                
                                Latitude :<br /> <span id="latitude"></span><br />
						        Longitude :<br /> <span id="longitude"></span><br /> 
						        Précision :<br /> <span id="accuracy"></span> mètres<br /> 
						        Altitude :<br /> <span id="altitude"></span><br />
						        Précision de l'altitude :<br /> <span id="altitudeaccuracy"></span> mètres<br /> 
						        Direction :<br /> <span id="heading"></span> degrés<br />
						        Vitesse :<br /> <span id="speed"></span> m/s<br />
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->



            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->

	<%@ include file="javascript.jsp" %>

 <!-- Gmaps -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?v=3&sensor=true"></script> -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYg4jOznyzkLTqek0tRAc3npK19MyQ0zw"></script> -->	
    
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYg4jOznyzkLTqek0tRAc3npK19MyQ0zw&signed_in=true&callback=initMap"></script>
	<script type="text/javascript">
	
	
		var previousPosition = null;
		
		function initialize() {

			
			if (navigator.geolocation)
			  var watchId = navigator.geolocation.watchPosition(successCallback, null, {enableHighAccuracy:true});
			else
			  alert("Votre navigateur ne prend pas en compte la géolocalisation définie (HTML5)");
			
		  map = new google.maps.Map(document.getElementById("map_canvas"), {
		        zoom: 19,
		        center: new google.maps.LatLng(7.41252, 13.54851),
		        mapTypeId: google.maps.MapTypeId.ROADMAP
		      });
		}

		function successCallback(position){
		  map.panTo(new google.maps.LatLng(position.coords.latitude, position.coords.longitude));
		  var marker = new google.maps.Marker({
		    position: new google.maps.LatLng(position.coords.latitude, position.coords.longitude),
		    map: map
		  });
		  if (previousPosition){
		    var newLineCoordinates =
		    [
		      new google.maps.LatLng(previousPosition.coords.latitude, previousPosition.coords.longitude),
		      new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
		    ];

		    var newLine = new google.maps.Polyline({
		      path: newLineCoordinates,
		      strokeColor: "#FF0000",
		      strokeOpacity: 1.0,
		      strokeWeight: 2
		    });
		    newLine.setMap(map);
		  }
		  previousPosition = position;
		}
		
	</script>

	
 
 
<script type="text/javascript">
if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(objPosition) {
        document.getElementById("latitude").innerHTML = objPosition.coords.latitude;
        document.getElementById("longitude").innerHTML = objPosition.coords.longitude;
        document.getElementById("accuracy").innerHTML = objPosition.coords.accuracy;
        document.getElementById("altitude").innerHTML = objPosition.coords.altitude;
        document.getElementById("altitudeaccuracy").innerHTML = objPosition.coords.altitudeAccuracy;
        document.getElementById("heading").innerHTML = objPosition.coords.heading;
        document.getElementById("speed").innerHTML = objPosition.coords.speed;
    }, function(objErreur) {
        var strErreur = '';
        switch(objErreur.code) {
            case objErreur.PERMISSION_DENIED:
                strErreur = "Vous n'avez pas donné la permission de déterminer votre position."
                break;
            case objErreur.TIMEOUT:
            case objErreur.POSITION_UNAVAILABLE:
                strErreur = "Votre position n'a pas pu être déterminée."
                break;
            default:
                strErreur = "Erreur inconnue."
                break;
        };
        alert(strErreur);
    }, {
        timeout: 20,
        enableHighAccuracy: true,
        maximumAge: 0
    });
}
</script>

</body>

</html>