<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<%@ include file="head.jsp" %>

	<%@ include file="left-panel.jsp" %>

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

       <%@ include file="header.jsp" %>

        <%@ include file="breadcrumbs.jsp" %>

        <div class="content mt-3">
            <div class="col-lg-3 col-md-6">
                <div class="social-box facebook">
                    <i class="fa fa-users"></i>
                    <ul>
                        <li>
                            <span class="count">1</span> Connecté(s)
                            <span></span>
                        </li>
                        <li>
                            <span class="count">3</span>
                            <span>UTILISATEURS ENREGISTRés</span>
                        </li>
                        <li><button type="button" class="btn btn-primary">Gérér</button></li>
                    </ul>
                </div>
                <!--/social-box-->
            </div>
            <!--/.col-->


            <div class="col-lg-3 col-md-6">
                <div class="social-box twitter">
                    <i class="fa fa-bus"></i>
                    <ul>
                        <li>
                            <span class="count">30</span> 
                            <span>places (s)</span>
                        </li>
                        <li>
                            <span class="count">4</span>
                            <span>Agences enregistrées</span>
                        </li>
                        <li><button type="button" class="btn btn-info">Gérér</button></li>
                    </ul>
                </div>
                <!--/social-box-->
            </div>
            <!--/.col-->


            <div class="col-lg-3 col-md-6"">
                <div class="social-box" style="background-color:">
                    <i class="fa fa-car" style="color: orange"></i>
                    <ul>
                        <li>
                            <span class="count">00</span> Connectés
                            <span></span>
                        </li>
                        <li>
                            <span class="count">25</span>
                            <span>Véhicules enregistrés</span>
                        </li>
                        <li><button type="button" class="btn btn-warning">Gérér</button></li>
                    </ul>
                </div>
                <!--/social-box-->
            </div>
            <!--/.col-->


            <div class="col-lg-3 col-md-6">
                <div class="social-box google-plus">
                    <i class="fa fa-map"></i>
                    <ul>
                        <li>
                            <span class="">94</span>
                            <span>Routes</span>
                        </li>
                        <li>
                            <span class="count">Pour </span>
                            <span>12 destinations</span>
                        </li>
                        <li><button type="button" class="btn btn-danger">Gérér</button></li>
                    </ul>
                </div>
                <!--/social-box-->
            </div>
            <!--/.col-->


            <div class="col-xl-3 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="ti-bell text-success border-success"></i>
                            	<button type="button" class="btn btn-success">Gérér</button>
                            </div>
                            <div class="stat-content dib">
                                <div class="stat-text">Communications</div>
                                <div class="stat-digit">00 publiées</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-xl-3 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="ti-target text-primary border-primary"></i>
                            	<button type="button" class="btn btn-success">Gérér</button>
                            </div>
                            <div class="stat-content dib">
                                <div class="stat-text">Voyages programmés</div>
                                <div class="stat-digit">00 en cours</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-one">
                            <div class="stat-icon dib"><i class="ti-fullscreen text-warning border-warning"></i>
                            	<button type="button" class="btn btn-success">Gérér</button>
                            </div>
                            <div class="stat-content dib">
                                <div class="stat-text">Recherche sur les Maps</div>
                            </div>
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
