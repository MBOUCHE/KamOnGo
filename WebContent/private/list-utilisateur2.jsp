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
				                                <strong style="font-size: 22px; color: white" class="card-title">GESTION DES UTILISATEURS (CHAUFFEUR)</strong>
				                                <a href="#ajouter" style="float: right; "><button type="button" class="btn btn-warning" style="color: blue; font-size: 17px"><i class="fa fa-plus-circle"></i> Ajouter une station</button></a>
				                            </div>
				                            <div class="card-body">
				                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered table-dark">
				                                    <thead>
				                                        <tr>
				                                            <th>Nom et Prénom(s)</th>
				                                            <th>Contact</th>
				                                            <th>Email</th>
				                                            <th>Profession</th>
				                                            <th>Quartier actuel</th>
				                                            <th>Actions</th>
				                                        </tr>
				                                    </thead>
				                                    <tbody>
				                                        <tr>
				                                            <td>Ashton Cox</td>
				                                            <td>Junior Technical Author</td>
				                                            <td>San Francisco</td>
				                                            <td>$86,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Cedric Kelly</td>
				                                            <td>Senior Javascript Developer</td>
				                                            <td>Edinburgh</td>
				                                            <td>$433,060</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Airi Satou</td>
				                                            <td>Accountant</td>
				                                            <td>Tokyo</td>
				                                            <td>$162,700</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Brielle Williamson</td>
				                                            <td>Integration Specialist</td>
				                                            <td>New York</td>
				                                            <td>$372,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Herrod Chandler</td>
				                                            <td>Sales Assistant</td>
				                                            <td>San Francisco</td>
				                                            <td>$137,500</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Rhona Davidson</td>
				                                            <td>Integration Specialist</td>
				                                            <td>Tokyo</td>
				                                            <td>$327,900</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Colleen Hurst</td>
				                                            <td>Javascript Developer</td>
				                                            <td>San Francisco</td>
				                                            <td>$205,500</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Brenden Wagner</td>
				                                            <td>Software Engineer</td>
				                                            <td>San Francisco</td>
				                                            <td>$206,850</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Fiona Green</td>
				                                            <td>Chief Operating Officer (COO)</td>
				                                            <td>San Francisco</td>
				                                            <td>$850,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Suki Burks</td>
				                                            <td>Developer</td>
				                                            <td>London</td>
				                                            <td>$114,500</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Prescott Bartlett</td>
				                                            <td>Technical Author</td>
				                                            <td>London</td>
				                                            <td>$145,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Gavin Cortez</td>
				                                            <td>Team Leader</td>
				                                            <td>San Francisco</td>
				                                            <td>$235,500</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Shad Decker</td>
				                                            <td>Regional Director</td>
				                                            <td>Edinburgh</td>
				                                            <td>$183,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Michael Bruce</td>
				                                            <td>Javascript Developer</td>
				                                            <td>Singapore</td>
				                                            <td>$183,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                        <tr>
				                                            <td>Donna Snider</td>
				                                            <td>Customer Support</td>
				                                            <td>New York</td>
				                                            <td>$112,000</td>
				                                            <td>@Logos1</td>
				                                           	<td>
				                                           		<button type="button" class="btn btn-danger"><i class="fa  fa-times"></i></button><p><br></p>
				                                           		<button type="button" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
				                                           	</td>
				                                        </tr>
				                                    </tbody>
				                                </table>
				                            </div>
				                        </div>
				                    </div>
                    
									<div class="col-lg-12">
						
	                     		<div class="card">
	                         		<div class="card-header bg-dark" style="color: white;">
	                             		<strong style=" font-size: 17px">CONSULTATION / MODIFICATION DE COMPTE - CHAUFFEUR</strong> 
	                         		</div>
			                         <div class="card-body card-block">
			                             <form method="post" action="list-stations" enctype="multipart/form-data" class="form-horizontal">
			                                 <div class="col-lg-6">
												<div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="text-input" class=" form-control-label">Lieu * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9">
				                                     	<input type="text" id="text-input" name="nom_dest" placeholder="Saisir le nom du lieu correspondant à la zone" class="form-control" value="${param.nom_dest}">
				                                     	<span style="color: red;">${erreurs['nom_dest']}</span>
				                                     </div>
				                                 </div>
				                                 <div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="email-input" class=" form-control-label">Couleur * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9"><input type="color" name="color" placeholder="La couche de la bande de station" class="form-control">
				                                 </div>
				                                 </div>
				                                 <div class="row form-group">
				                                     <div class="col col-md-3">
				                                     	<label for="password-input" class=" form-control-label">Code commune * : </label>
				                                     </div>
				                                     <div class="col-12 col-md-9">
				                                     	<input type="text" name="code_commune" placeholder="Aggrémentation délivrée par la commune" class="form-control" value="${param.code_commune}" pattern="[1-9]{2}-[A-Z-0-9]{4}">
				                                     	<span style="color: red;">${erreurs['code_commune']}</span>
				                                     </div>
				                                 </div>
					                                 
				                                 <div class="row form-group">
				                                     <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Image des lieux *  : </label></div>
				                                     <div class="col-12 col-md-9"><input type="file" style="height: 71px" name="image_station" rows="9" placeholder=" < 1 Mo, JPG, PNG, JPEG" class="form-control"></div>
				                                 </div>
											 </div>
			                                 
											<div class="col-lg-6">
												<div class="row form-group">
			                                         <div class="col col-md-3">
			                                         	<label for="select" class=" form-control-label">Responsable: </label>
			                                         </div>
			                                         <div class="col-12 col-md-9">
			                                             <select name="responsable" class="form-control">
			                                                 <option value="0">Veillez selectionner un responsable enregistré...</option>
			                                                 <option value="1">Option #1</option>
			                                                 <option value="2">Option #2</option>
			                                                 <option value="3">Option #3</option>
			                                             </select>
			                                         </div>
			                                         <span style="color: red;">${erreurs['responsable']}</span>
			                                     </div>
			                                     <div class="row form-group">
			                                         <div class="col col-md-3"><label for="selectLg" class=" form-control-label">Longitude * :</label></div>
			                                         <div class="col-12 col-md-9">
					                                    <input type="text" name="xcoord" placeholder="XX.XXXX" class="form-control" value="${param.xcoord}" pattern="[1-9]{2}.[1-9]{4}">
					                                 </div>
					                                 <span style="color: red;">${erreurs['xcoord']}</span>
			                                     </div>
			                                     <div class="row form-group">
			                                         <div class="col col-md-3"><label for="selectSm" class=" form-control-label">Latitude * : </label></div>
			                                         <div class="col-12 col-md-9">
					                                    <input type="text" id="password-input" name="ycoord" placeholder="YY.YYYY" class="form-control" value="${param.ycoord}" >
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
					                                 <i class="fa fa-ban"></i> Effarcer
					                             </button>
					                             <c:forEach var="item" items="${stations}">
													<c:out value="${item.nom_dest}"/>
												 </c:forEach>
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
