<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	
<!--==============================content================================-->
				<section id="content">
					<div class="indent-left">
						<div class="wrapper">
							<article>
							<h4>AGENCES - VOYANGES (HEURE + DESTINATION) - PLACES RESTANTES</h4><span stype="margin-top: 10px">Aujoud'hui</span><br>
							<div class="wrapper indent-bot">
                             <c:forEach var="station" items="${stations}">
                             	<c:if test='${station.type_dest == "agence"}'>
                             	<c:forEach var="conduite" items="${conduites}">
								 	<c:if test='${conduite.id_agent == station.id_enregistreur}'>
									<h4><a class="link color-2" href="#"><c:out value="${station.nom_dest}"/></a></h4>
									<figure class="img-indent">
										<img style="width: 305px; height: 202px; border-radius: 8%" alt="${station.image_station}" src="../../private/images/destinations/${station.image_station}" />
									</figure>
									<div class="extra-wrap text-1">
										<div class="margin-top">
											
											<table>
											  <tr>
											    <th>DESTINATION</th>
											    <th>DEPART </th>
											    <th>TYPE</th>
											    <th>PLACES</th>
											    <th>Choisissez</th>
											  </tr>
												<c:forEach var="station" items="${stations}">
													<c:if test='${conduite.id_dest == station.id_interne}'>
						                             	<tr>
															<td><c:out value="${station.nom_dest}"></c:out></td>
															<td><c:out value="${conduite.date_dprt_cdt}"></c:out></td>
															<td><c:out value="${conduite.type_conduite}"></c:out></td>
															<td><c:out value="${conduite.plc_libre_cdt}"></c:out></td>
				                                           	<td>
																<a style="font-size: 14px; margin-top: 1%; margin-right: 4px; float: right;" class="button-2" href="../../public/site/resev.jsp">
																	RESVERVER
																</a>
				                                           	</td>
				                                         </tr>
														</c:if>
													</c:forEach>
													</table>
												</div>
											</div>
										</div><hr><br>
										</c:if>
									</c:forEach>
                                  </c:if>
							 </c:forEach>
							 
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/page1-img2.jpg" alt="" style="width: 202px; height: 202px; border-radius: 8%"/></figure>
								<div class="extra-wrap text-1">
									<div class="margin-top">
										<h6><a class="link color-2" href="#">MBOUCHE ULRICH</a></h6>
										Lorem ipsum dolor sitmet consectetur adipisicing elit sed do eiusmod.
									</div>
								</div>
							</div><hr><br>
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/page1-img3.jpg" alt="" style="width: 202px; height: 202px; border-radius: 8%"/></figure>
								<div class="extra-wrap text-1">
									<div class="margin-top">
										<h6><a class="link color-2" href="#">MBOUCHE ULRICH</a></h6>
										Lorem ipsum dolor sitmet consectetur adipisicing elit sed do eiusmod.
									</div>
								</div>
							</div><hr><br>
						</article>
						</div>
					</div>
				</section>

	<%@ include file="footer.jsp" %>
	
	</body>
</html>