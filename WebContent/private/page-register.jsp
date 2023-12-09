<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	<%@ include file="head.jsp" %>

<body class="bg-warning">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container" style="margin-top: -3%;">
            <div class="login-content">
                 <div class="login-form" style="border-radius: 13px;">
                    <div class="login-logo">
	                    <a href="index.jsp">
	                        <img class="align-content" src="../public/site/images/logov.png" alt="" style="margin-top: -3.5%; height: 242px; width: 242px; background-color: #2b2b2b; border-radius: 13%;">
	                    </a>
	                </div>
	                <label style="margin-left: 17%; font-size: 22px; margin-top: -20%">CREER UN COMPTE UTILISATEUR</label>
	                <c:if test="${ !empty fichier }">
	                	<p><c:out value="Le fichier ${fichier} } a été uploadé"></c:out></p>
	                </c:if>
                    <form method="post" action="page-register" enctype="multipart/form-data">
                    	<hr><label style="color: red">Informations personnelles sur le  compte</label> <hr>
                        <div class="form-group col-lg-6">
                        	Nom * :
                            <input type="text" class="form-control" placeholder="Entrez votre Nom d'utilisateur" name="nom_utl">
                        </div>
                        <div class="form-group col-lg-6">
                        	Prénom * :
                            <input type="text" class="form-control" placeholder="Entrez votre Prénom" name="prenom">
                        </div>
                            <div class="form-group col-lg-6">
                            	Email * : 
                                <input type="email" class="form-control" placeholder="Entrez Votre Email" name="email">
                        </div>
                        <div class="form-group col-lg-6">
                        	Téléphone * : 
                            <input type="number" class="form-control" placeholder="Tél : +237 xxx xxx xxx" name="telephone">
                        </div>
                        <div class="form-group col-lg-6">
                        	Mot de passe * :
                             <input type="password" class="form-control" placeholder="Entrez un Votre mot de passe Utilisateur" name="mdp">
                        </div>
                        
                       	<div class="form-group col-lg-6">
                       		Confirmer le mot de passe :
                             <input type="password" class="form-control" placeholder="Confirmer le mot de passe saisie" name="cmdp">
                        </div>
                        
                        <div class="form-group col-lg-6">
                        	 Photo de profile * :
                             <input type="file" class="form-control" placeholder="Selection une photo de profile " name="fichier">
                        </div>
                        <div class="checkbox col-lg-6" style="margin-top: 1.3%">
                        	Genre * : 
                         	<br><label >Femme : <input style="margin-left" type="radio" name="sexe" value="0" required></label>
                         	<label style="margin-left: 17%">Homme : <input style="margin-left" type="radio" name="sexe" value="1" ></label>
                        </div>
                       	<div class="form-group col-lg-6" style="margin-top: 1.7%">
                       		Profession * :
                           	<select class="form-control"  name="profession" style="width:100%">
                           		<option value="">Votre profession</option>
                           		<option value="CHAUFFEUR">CHAUFFEUR</option>
                           		<option value="ETUDIANT">ETUDIANT(E)</option>
                           		<option value="ENSEIGNANT">ENSEIGNANT(E)</option>
                           		<option value="MEDECIN">MEDECIN</option>
                           		<option value="AVOCAT">AVOCAT</option>
                           		<option value="COMMERCANT">COMMERCANT(E)</option>
                           		<option value="BENSKINEUR">BENSKINEUR</option>
                           		<option value="autre">AUTRE</option>
                           	</select>
                       	</div>
                       	<div class="form-group col-lg-6" style="margin-top: -8.7%">
                       		Quartier : 
                           	<select class="form-control"  name="quartier" style="width:100%">
                           		<option value="">Votre quartier actuel</option>
                           		<option value="BALADJI">BALADJI 1</option>
                           		<option value="BALADJI">BALADJI 2</option>
                           		<option value="CHAMP">CHAMP DE P.</option>
                           		<option value="DJALINGO">DJALINGO</option>
                           		<option value="BINI">BINI - DANG</option>
                           		<option value="chauffeur">BAMNYANGA</option>
                           		<option value="chauffeur">BURKINA</option>
                           		<option value="chauffeur">MBIDENG</option>
                           		<option value="chauffeur">ONAREF</option>
                           		<option value="chauffeur">SABONGARI</option>
                           		<option value="chauffeur">SOMINO</option>
                           		<option value="chauffeur">RESIDENTIEL</option>
                           		<option value="autre">AUTRE</option>
                           	</select>
                       	</div>
                         
                         <div class=" col-lg-">
                            	<hr><label style="color: red">Informations nessecaires à la récupération du compte</label> <hr>
                             <div class="form-group col-lg-6">
	                        	Question :
	                            <input type="text" class="form-control" placeholder="Voulez-vous entrez une question de votre choix ?" name="question">
	                        </div>
	                            <div class="form-group col-lg-6">
	                            	Réponse : 
	                                <input type="text" class="form-control" placeholder="Donner une réponse à la question" name="reponse">
	                                <input type="hidden"  name="id_agence" value="0">
	                                <input type="hidden"  name="id_station" value="0">
	                                <input type="hidden"  name="num_permi" value="0000">
	                                <input type="hidden"  name="num_guichet" value="0000">
	                                <input type="hidden"  name="adresse_ip" value="0.0.0.0">
	                        </div>
                        </div>
                       
                        <div class="form-group col-lg-12">
                        	Numéro de CNI : 
                            <input type="number" class="form-control" placeholder="Exemple: 20180061816310115" name="num_cni">
                        </div>
                         <div class="col-lg-12" style="margin-top: 4%">
                         	<div class="col-lg-6">
                         		<a href="../public/site/" class="btn btn-dark btn-flat m-b-30 m-t-30" style="float: left">Annuler</a>
                         	</div>
                         	<div class="col-lg-6">
                         		<button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" style="float: rigth">Créer</button>
                         	</div>
                         </div>
                             
                         <div class="register-link m-t-15 text-center">
                             <p>Vous avez dejà un compte ? <a href="page-login.jsp"> Connectez-vous</a></p>
                         </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>


    <%@ include file="javascript.jsp" %>


</body>

</html>
