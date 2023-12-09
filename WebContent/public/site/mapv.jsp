
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <meta http-equiv="X-UA-Compatible" content="IE=9"/>
<%@ include file="head.jsp" %>

<style>
table {

  width: 100%;
  padding: 13px;
  font-family: 'Gabriola';
  border-bottom: 4px solid #ddd;
}

td {
  text-align: center;
  font-size: 31px;
  height: 40px;
}

tr:nth-child(even){
	background-color: gray;
  border-bottom: 4px solid #ddd;
}

th {
  background-color: orange;
  color: white;
  text-align: left;
  padding: 13px;
  font-size: 31px;
  height: 22px;
  border-bottom: 4px solid #ddd;
}
span{
	margin-top: 6%;
}
</style>
	<body id="page1">
		<div class="extra">
			<div class="main">

	<%@ include file="header.jsp" %>
	
<body>
<p id="demo">Click sur le boutton pour voir vos coordonées:</p>
<button onclick="getLocation()">Montrer moi</button>
<script>
var x=document.getElementById("demo");
function getLocation()
  {
  if (navigator.geolocation)
    {
    navigator.geolocation.getCurrentPosition(showPosition);
    }
  else{x.innerHTML="Geolocation nest pas prise en charge par ce navigateur.";}
  }
function showPosition(position)
  {
  x.innerHTML="Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude;    
  }
</script>
</body>
</html>