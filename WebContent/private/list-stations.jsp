<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<%@ include file="head.jsp" %>

	<%@ include file="left-panel.jsp" %>

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

       <%@ include file="header.jsp" %>

        <%@ include file="breadcrumbs.jsp" %>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-lg-12">
                    
 						<div class="content mt-3">
			            	<div class="animated fadeIn">
			                	<div class="row">
				                    <div class="col-md-12" style="margin-top: -26px;">
				                        <div class="card">
				                            <div class="card-header bg-dark">
				                                <strong style="font-size: 22px; color: white" class="card-title">GESTION DES STATIONS DE TAXIS</strong>
				                                <a href="#ajouter" style="float: right; "><button type="button" class="btn btn-warning" style="color: white; font-size: 17px"><i class="fa fa-plus-circle"></i> Ajouter une station</button></a>
				                            </div>
				                            <c:if test="${stations == null}">
				                             	
												<div class="col-lg-9 sufee-alert alert with-close alert-danger alert-dismissible fade show" style="float: right">
						                        	<span class="badge badge-pill badge-danger">Attention</span>
						                        	Aucune station n'a encore été enregistrée !
						                        	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						                                <span aria-hidden="true">&times;</span>
						                            </button>
						                    	</div>
											 </c:if>
											 
											<c:if test="${erreurs != null}">
				                             	<div class="col-lg-9 sufee-alert alert with-close alert-danger alert-dismissible fade show" style="float: right">
			                                        <span class="badge badge-pill badge-danger">Attention</span>
			                                        Vous avez commi une ou plusieurs erreurs dans le formulaire d'ajout.
			                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                                                <span aria-hidden="true">&times;</span>
		                                            </button>
		                                    	</div>
											</c:if>
											
				                            <div class="card-body">
				                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered table-dark">
				                                    <thead>
				                                        <tr>
				                                            <th>Lieu de stationnement</th>
				                                            <th>Responsable</th>
				                                            <th>Code de la commune</th>
				                                            <th>Description</th>
				                                            <th>Image du lieu</th>
				                                            <th>Actions</th>
				                                        </tr>
				                                    </thead>
				                                    <tbody>
				                                    
						                             <c:forEach var="station" items="${stations}">
						                             	<c:if test="${station.type_dest.equals('station')}">
						                             	<tr>
															<td><c:out value="${station.nom_dest}"/></td>
															<td><c:out value="${station.responsable}"/></td>
															<td><c:out value="${station.code_commune}"/></td>
															<td><c:out value="${station.description}"/></td>
															<td>
																<img style="width: 400px;  height: 100px; border-radius: 8px" src="images/destinations/${station.image_station}">
															</td>
				                                           	<td>
				                                           		<button style="width: 40%; padding: 4px; border-radius: 4px" type="button" class="btn btn-danger" name="delete" value="${station.id_dest}"><i class="fa  fa-times"></i></button>
				                                           		
				                                           		<button style="width: 40%; padding: 4px; border-radius: 4px" type="button" class="btn btn-warning" name="modify" value="${station.id_dest}"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                         </tr>
				                                         </c:if>
													 </c:forEach>
				                                        
				                                    </tbody>
				                                </table>
				                            </div>
				                        </div>
				                    </div>
                    
									<div class="col-lg-12">
						
	                     		<div class="card">
	                         		<div class=" card-header bg-dark" style="color: white;">
	                             		<strong>CONFIGUATIONS - STATION</strong> : 
	                         		</div>
			                         <div class="card-body card-block">
			                         	<div class="col-lg-9 sufee-alert alert with-close alert-danger alert-dismissible fade show" style="float: right">
	                                        <span class="badge badge-pill badge-danger">Attention</span>
	                                        Créer d'abord l'utilisateur de l'agence si celui ne l'est pas encore
	                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <a href="#ajouter" style="float: right; ">
                                            	<a href="list-utilisateur">
                                            		<button type="button" class="btn btn-warning" style="color: white; font-size: 17px">
                                            			<i class="ti ti-user"></i> Ajouter !
                                            		</button>
                                            	</a>
                                            </a>
                                    	 </div>
			                             <form method="POST" action="list-stations" enctype="multipart/form-data" class="form-horizontal">
			                                 <div class="col-lg-6">
												<div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="text-input" class=" form-control-label">Lieu * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9">
				                                     	<input type="text" id="text-input" name="nom_dest" placeholder="Saisir le nom du lieu correspondant à la zone" class="form-control" value="${param.nom_dest}" required>
				                                     	<span style="color: red;">${erreurs['nom_dest']}</span>
				                                     </div>
				                                 </div>
				                                 <div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="email-input" class=" form-control-label">Couleur * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9"><input type="color" name="color" placeholder="La couche de la bande de station" class="form-control" required>
				                                 </div>
				                                 </div>
				                                 <div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="password-input" class=" form-control-label">Code commune * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9">
				                                     	<input type="text" name="code_commune" placeholder="Aggrémentation délivrée par la commune" class="form-control" value="${param.code_commune}" pattern="[1-9]{2}-[A-Z-0-9]{4}" required>
				                                     	<span style="color: red;">${erreurs['code_commune']}</span>
				                                     </div>
				                                 </div>
					                                 
				                                 <div class="row form-group">
				                                     <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Image des lieux *  : </label></div>
				                                     <div class="col-12 col-md-9"><input type="file" style="height: 71px" name="image_station" rows="9" placeholder=" < 1 Mo, JPG, PNG, JPEG" class="form-control" required></div>
				                                 </div>
											 </div>
			                                 
											<div class="col-lg-6">
												<div class="row form-group">
			                                         <div class="col col-md-3">
			                                         	<label for="select" class=" form-control-label">Responsable: </label>
			                                         </div>
			                                         
			                                         <div class="col-12 col-md-9">
			                                             <select name="responsable" class="form-control" required>
			                                             <option value="0">Veillez selectionner un responsable enregistré...</option>
			                                             
			                                         <c:forEach var="user" items="${users}">
														<c:if test='${user.getNum_guichet().equals(null)}'>
			                                                 <option value="${user.getIdUtl()}">
			                                                 	<c:out value="${user.getNomutl()}"></c:out>
			                                                 </option>
														</c:if>
													</c:forEach>
															<option value="100000">A</option>
			                                             </select>
			                                         </div>
			                                         <span style="color: red;">${erreurs['responsable']}</span>
			                                     </div>
			                                     <div class="row form-group">
			                                         <div class="col col-md-3"><label for="selectLg" class=" form-control-label">Longitude * :</label></div>
			                                         <div class="col-12 col-md-9">
					                                    <input type="text" name="xcoord" placeholder="XX.XXXXXXXX" class="form-control" value="${param.xcoord}" pattern="[0-9]{2}.[1-9]{6}" required>
					                                 </div>
					                                 <span style="color: red;">${erreurs['xcoord']}</span>
			                                     </div>
			                                     <div class="row form-group">
			                                         <div class="col col-md-3"><label for="selectSm" class=" form-control-label">Latitude * : </label></div>
			                                         <div class="col-12 col-md-9">
					                                    <input type="text" id="password-input" name="ycoord" placeholder="YY.YYYYYYYY" class="form-control" value="${param.ycoord}" pattern="[0-9]{2}.[1-9]{6}" required>
					                                 </div>
					                                 <span style="color: red;">${erreurs['ycoord']}</span>
			                                     </div>
				                                 <div class="row form-group">
				                                     <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Description : </label></div>
				                                     <div class="col-12 col-md-9"><textarea value="${param.description}" style="height: 103px" name="description" rows="9" placeholder="Brève description physique des lieux" class="form-control"></textarea></div>
				                                 </div>
											</div>
			                                   <hr>
					                         <div class="">
					                             <button id="ajouter" style="float: right; height: 44px" type="submit" class="btn btn-primary btn-sm">
					                                 <i class="fa fa-dot-circle-o"></i> Enregistrer
					                             </button>
					                             <button style="float: right; margin-right: 4%; height: 44px" type="reset" class="btn btn-danger btn-sm">
					                                 <i class="fa fa-ban"></i> Effacer
					                             </button>
					                         </div>
			                             </form>
			                         </div>
	                     		</div>
                			</div>
            			</div><!-- .animated -->
        			</div><!-- .content -->
        
	<%@ include file="javascript.jsp" %>

    </div>

</body>

</html>
