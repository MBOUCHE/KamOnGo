<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<%@ include file="head.jsp" %>

	<%@ include file="left-panel.jsp" %>

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

       <%@ include file="header.jsp" %>

        <%@ include file="breadcrumbs.jsp" %>
		
		<div class="col-lg-4">
            <div class="card" style="width: 103%">
                <div class="card-body">
                    <div class="custom-tab">

                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="notifications" data-toggle="tab" href="#custom-nav-home" role="tab" aria-controls="custom-nav-home" aria-selected="true">
                                	<i class="fa fa-envelope-o"></i> Mails | <i class="fa fa-bell-o"></i> Notifications
                                </a>
                                <a class="nav-item nav-link" id="activites" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">
                                	 <i class="fa fa-tasks"></i> Activité ressente
                               	</a>
                                <a class="nav-item nav-link" id="custom-nav-contact-tab" data-toggle="tab" href="#custom-nav-contact" role="tab" aria-controls="custom-nav-contact" aria-selected="false">
                                	<i class="fa fa-user"></i> Modifier votre profile
                                </a>
                            </div>
                        </nav>
                        <div class="tab-content pl-3 pt-2" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
                                    butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, irure terry richardson ex sd. Alip placeat salvia cillum iphone. Seitan alip s cardigan american apparel, butcher voluptate nisi .</p>
                            </div>
                            <div class="tab-pane fade" id="custom-nav-profile" role="tabpanel" aria-labelledby="custom-nav-profile-tab">
							 	<div class="card">
					              <div class="card-header">
					                  <strong class="card-title">Vos dernières actions sur la plateforme</strong>
					              </div>
				                  <table class="table">
				                      <thead class="thead-dark">
				                          <tr>
				                              <th scope="col">N°</th>
				                              <th scope="col">Action</th>
				                              <th scope="col">Date et heure</th>
				                              <th scope="col">Table(s) en BD</th>
				                          </tr>
				                      </thead>
				                      <tbody>
				                          <tr>
				                              <th scope="row">1</th>
				                              <td>Mark</td>
				                              <td>Otto</td>
				                              <td>@mdo</td>
				                          </tr>
				                          <tr>
				                              <th scope="row">2</th>
				                              <td>Jacob</td>
				                              <td>Thornton</td>
				                              <td>@fat</td>
				                          </tr>
				                          <tr>
				                              <th scope="row">3</th>
				                              <td>Larry</td>
				                              <td>the Bird</td>
				                              <td>@twitter</td>
				                          </tr>
				                      </tbody>
				                  </table>
					          	</div>
                            </div>
                            <div class="tab-pane fade" id="custom-nav-contact" role="tabpanel" aria-labelledby="custom-nav-contact-tab">
                              	Informations personnelles
                              		<form action="" method="post">
                                       <div class="form-group">
                                           <div class="input-group">
                                               <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                               <input type="text" id="username" name="username" placeholder="Username" class="form-control">
                                           </div>
                                       </div>
                                       <div class="form-group">
                                           <div class="input-group">
                                               <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                                               <input type="email" id="email" name="email" placeholder="Email" class="form-control">
                                           </div>
                                       </div>
                                       <div class="form-group">
                                           <div class="input-group">
                                               <div class="input-group-addon"><i class="fa fa-asterisk"></i></div>
                                               <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                                           </div>
                                       </div>
                              	Informations sur le compte
                              		<div class="form-group">
                                           <div class="input-group">
                                               <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                               <input type="text" id="username" name="username" placeholder="Username" class="form-control">
                                           </div>
                                       </div>
                                       <div class="form-group">
                                           <div class="input-group">
                                               <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                                               <input type="email" id="email" name="email" placeholder="Email" class="form-control">
                                           </div>
                                       </div>
                                       <div class="form-group">
                                       		<div class="input-group">
                                               <div  style="height: 44px" class="input-group-addon"><i class="fa fa-map-marker"></i></div>
                                               <div class="card-body" style="margin-top: -4px">
					                                <select data-placeholder="Quatier de résidence actuelle" 
					                                	class="form-control standardSelect" tabindex="1" style="width: 107%;">
					                                    <option value=""></option>
					                                    <option value="United States">United States</option>
					                                    <option value="United Kingdom">United Kingdom</option>
					                                    <option value="Afghanistan">Afghanistan</option>
					                                    <option value="Aland Islands">Aland Islands</option>
					                                    <option value="Albania">Albania</option>
					                                    <option value="Algeria">Algeria</option>
					                                    <option value="American Samoa">American Samoa</option>
					                                    <option value="Andorra">Andorra</option>
					                                    <option value="Angola">Angola</option>
					                                    <option value="Anguilla">Anguilla</option>
					                                    <option value="Antarctica">Antarctica</option>
					                                </select>
					                        	</div>
                                           	</div>
					                    		
                                       </div>
                                       <div class="form-actions form-group"><button type="submit" class="btn btn-success btn-sm">Modifier</button></div>
                                   </form>
                            </div>
                            
                            
                        </div>

                    </div>
                </div>
            </div>
            
        </div>
           
 		<div class="col-md-4">
             <aside class="profile-nav alt">
                 <section class="card">
                     <div class="card-header user-header alt bg-dark">
                         <div class="media">
                             <a href="#">
                                 <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="images/admin.jpg">
                             </a>
                             <div class="media-body">
                                 <h2 class="text-light display-6">MBOUCHE BOMDA</h2>
                                 <p>Administreur</p>
                             </div>
                         </div>
                     </div>
					<span style="margin-left: 8px"> Répertoire de contacts </span>
					<table class="table">
                      <thead class="thead-dark">
                          <tr>
                              <th scope="col">#</th>
                              <th scope="col">Nom et prénom</th>
                              <th scope="col">Téléphone</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr>
                              <th scope="row">1</th>
                              <td>Mark</td>
                              <td>Otto</td>
                          </tr>
                          <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                          </tr>
                          <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                          </tr>
                      </tbody>
                  </table>

                 </section>
             </aside>
         </div>


         
					<div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-user"></i><strong class="card-title pl-2">Photo de profile</strong>
                            </div>
                            <div class="card-body">
                                <div class="mx-auto d-block">
                                    <img class="rounded-circle mx-auto d-block" src="images/admin.jpg" alt="Card image cap">
                                    <h5 class="text-sm-center mt-2 mb-1">MBOUCHE BOMDA</h5>
                                    <div class="location text-sm-center"><i class="fa fa-map-marker"></i> Ngaoundéré, Université </div>
                                </div>
                                <hr>
                                <div class="card-text text-sm-center">
                                    <a href="#"><i class="fa fa-facebook pr-1"></i></a>
                                    <a href="#"><i class="fa fa-twitter pr-1"></i></a>
                                    <a href="#"><i class="fa fa-linkedin pr-1"></i></a>
                                    <a href="#"><i class="fa fa-pinterest pr-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

	<%@ include file="javascript.jsp" %>

</body>

</html>