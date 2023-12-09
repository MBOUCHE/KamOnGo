<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
	                <label style="margin-left: 35%; font-size: 22px; margin-top: -20%">CONNEXION</label>
	                
		                		
		                		<%-- <c:forEach var="utl" items="${utilisateurs}">
		                			<td><c:out value="${utl.getEmailUtl()}"/></td>
		                			<td><c:out value="${utl.getMDPUtl()}"/></td>
		                		</c:forEach> --%>
	                
                    <form action="page-login" method="POST">
                        <div class="form-group">
                        
                        	<input type="email" id="email" name="email" class="form-control" size="20" maxlength="60" placeholder="Email" value="${empty email ? '' : email}" required/>
                        	<span class="erreur">${form.erreurs['email']}</span>
                        	<span class="erreur">${n_erreur}</span>
                        	
                        </div>
                            <div class="form-group">
                                <input type="password" id="mdp" class="form-control" placeholder="Mot de passe du compte utilisateur" name="mdp" size="40" maxlength="22" required>
                                <span class="erreur">${form.erreurs['mdp']}</span>
                        </div>
                        <div class="checkbox">
                             <label>
                                <input type="checkbox"> Se souvenir de Moi
                            </label>
	                            
                            <label class="pull-right">
                                <a href="pages-forget.jsp">Mot de passe oublie ?</a>
                                <c:if test="${!empty form.resultat}">
		                			<c:out value="${form.resultat}"></c:out>
		                		</c:if>
                            </label>
<p class="erreur">${empty form.erreurs ? 'YEP' :'Erreur'}</p>

                         </div>
                         <br>
                         <div class="col-lg-12">
                         	<div class="col-lg-6">
                         		<a href="../public/site/" class="btn btn-dark btn-flat m-b-30 m-t-30" style="float: left">Annuler</a>
                         	</div>
                         	<div class="col-lg-6">
                         		<button type="submit" name="submit" value="sign" class="btn btn-success btn-flat m-b-30 m-t-30" style="float: rigth">Connexion</button>
                         	</div>
                         </div>
                         <div class="register-link m-t-15 text-center">
                             <p>Vous n'avez pas de compte ? <a href="page-register"> Creez en un ici</a></p>
                         </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

	<%@ include file="javascript.jsp" %>


</body>

</html>
