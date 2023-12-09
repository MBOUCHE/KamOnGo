<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<%@ include file="head.jsp" %>

<body class="bg-warning">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form" style="border-radius: 13px;">
                    <form>
                        <div class="form-group">
                            <label>Email | Login</label>
                            <input type="email" class="form-control" placeholder="Email ou Login de connexion à système système">
                        </div>
                        
                        <div class="col-lg-12">
                         	<div class="col-lg-6">
                         		<a href="../public/site/" class="btn btn-dark btn-flat m-b-30 m-t-30" style="float: left">Annuler</a>
                         	</div>
                         	<div class="col-lg-6">
                         		<button type="submit" class="btn btn-primary btn-flat m-b-15" style="float: rigth">Connexion</button>
                         	</div>
                         </div>
                         <br><br>

                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="javascript.jsp" %>

</body>

</html>
