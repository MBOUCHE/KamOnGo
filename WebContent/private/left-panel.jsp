<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="../public/site/"><img src="../public/site/images/logov.png" alt="Logo" style="width: 242px; height: 202px; border-radius: 8%"></a>
                <a class="navbar-brand hidden" href="../public/site/">KamOnGo</a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse" style="color: white;">
                <ul class="nav navbar-nav">
                    <li class="active bg-success" style="border-radius: 17%">
                        <a href="index.jsp"> <i class="menu-icon fa fa-dashboard"></i>Tableau de bord </a>
                    </li>
                    <h3 class="menu-title">Administration</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown"  style="background-color: black;">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	<i class="menu-icon fa fa-users"></i>Utilisateurs
                        </a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti ti-user"></i><a href="list-utilisateur">Clients</a></li>
                            <li><i class="ti ti-user"></i><a href="list-utilisateur2.jsp">Chauffeurs</a></li>
                            <li><i class="ti ti-user"></i><a href="list-utilisateur3.jsp">Agents de voyage</a></li>
                            <li><i class="ti ti-user"></i><a href="list-utilisateur4.jsp">Chefs de station</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown" style="background-color: black;margin-top: 1%">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	<i class="menu-icon ti ti-image"></i><label style="margin-left: 0">Destinations</label>
                        </a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="list-agences.jsp">Agences</a></li>
                            <li><i class="fa fa-table"></i><a href="list-stations">Stations et Arrêts</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown" style="background-color: black;margin-top: 1%">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti ti-map-alt"></i> Trajets</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon ti ti-location-pin"></i><a href="forms-basic.jsp"> Quartiers </a></li>
                            <li><i class="menu-icon ti ti-location-pin"></i><a href="forms-advanced.jsp"> Chemins</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown" style="background-color: black;margin-top: 1%">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	<i class="menu-icon ti ti-package"></i> Autres en comm.
                        </a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon ti ti-announcement"></i><a href="forms-basic.jsp"> Annonces </a></li>
                            <li><i class="menu-icon ti ti-comment-alt"></i><a href="forms-advanced.jsp"> Témoignages</a></li>
                            <li><i class="menu-icon ti ti-truck"></i><a href="forms-advanced.jsp"> Réserver Transp.</a></li>
                            <li><i class="menu-icon fa fa-search"></i><a href="maps-gmap.jsp">Recherche Map</a></li>
                        </ul>
                    </li>

                    <h3 class="menu-title">RESP.-station adm</h3>

                    <li style="background-color: black;">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-users"></i>Gérer Chaufeurs</a>
                    </li>
                    <li style="background-color: black; margin-top: 1%">
                        <a class="dropdown-toggle" aria-haspopup="true" aria-expanded="false" href="widgets.jsp"> <i class="ti ti-truck"></i><label style="margin-left: 4%">Réserver Transport</label></a>
                    </li>

                    <li style="background-color: black;margin-top: 1%">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti ti-car"></i>Gérer Véhicules</a>
                    </li>
                    <h3 class="menu-title">AGT. voyages adm</h3>

                    <li style="background-color: black;">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Réservations</a>
                    </li>
                    <li style="background-color: black;margin-top: 1%">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="widgets.jsp"> <i class="fa fa-bus"></i><label style="margin-left: 4%">Gérer Voyages</label></a>
                    </li>

                    <li style="background-color: black; margin-top: 1%">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-map-o"></i>Gérer Chauffeurs</a>
                    </li>
                    <h3 class="menu-title">CHAUFFEURS</h3>

                    <li style="background: black;">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	<i class="menu-icon fa fa-tasks"></i>Chauffeur Taxi
                        </a>
                    </li>
                    <li style="background: black; margin-top: 1%">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="widgets.jsp">
                        	<i class="fa fa-bus"></i><label style="margin-left: 4%">Chauffeur Bus</label>
                        </a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->