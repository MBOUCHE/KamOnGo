<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="head.jsp" %>

	<body id="page1">
		<div class="extra">
			<div class="main">

	<%@ include file="header.jsp" %>
	
<!--==============================content================================-->
				<section id="content">
					<div class="wrapper">
						<article class="col-1" style="width: 50%">
							<div class="indent-left">
								<h4 class="p1">COMMENTAIRES | DECLARATIONS</h4>
								<form id="contact-form" method="post" enctype="multipart/form-data" action="contacts">
									<fieldset>
										<label><span class="text-form">Nom :</span><input type="text" name="nom_utl" value="${utilisateur.nom_utl }"/></label>
										<label><span class="text-form">E-mail:</span><input type="email" name="email_utl" value="${utilisateur.email_utl }"/></label>
										<label><span class="text-form">Téléphone:</span><input name="telephone" type="text" value="${utilisateur.telephone }" placeholder="6xx xxx xxx" pattern="[6][0-9]{2}[0-9]{3}[0-9]{3}"/></label>
										<div class="wrapper">
											<div class="text-form">Message : </div>
											<div class="extra-wrap">
												<textarea name="message" style="height: 103px; width: 67%"></textarea>
											</div>
											<br>
											<a class="button-2"  style="float: right; width: 17%; height: 31px; margin-right: 22%" href="#"><input style="margin-right: 10px; width: 100%; height: 31px; font-size: 17px;"  type="submit" value="Envoyer" name="button"></a>

											<a class="button-2"  style="float: right; width: 17%; height: 31px; margin-right: 8%" href="#" onClick="document.getElementById('contact-form').reset()"><input style="margin-right: 10px; width: 100%; height: 31px; font-size: 17px;"  type="submit" value="Effacer" name="button"></a>																					</div>	
									</fieldset>
								</form>
							</div>
						</article>
						
						<article class="col-2"  style="width: 25%; float: right;">
							<h3 class="p1">Nos contacts</h3>
							<h6>Ngaoundere 1er</h6>
								<dt>Mbideng (1)</dt>
								<dd><span>Telephone:</span><strong>+237 659 603 603</strong></dd>
								<dd><span>Email:</span><strong><a href="#">mail@thomsander.com</a></strong></dd>
							
							<h6>Ngaoundere 2ieme</h6>
								<dt>8901 Marmora Road, Glasgow, D04</dt>
								<dd><span>Telephone:</span><strong>+237 658 603 635</strong></dd>
								<dd><span>Email:</span><strong><a href="#">mail@thomsander.com</a></strong></dd>
							
							<h6>Ngaoundere 3ieme</h6>
								<dt>8901 Marmora Road, Glasgow, D04</dt>
								<dd><span>Telephone:</span><strong>+237 676 635 603</strong></dd>
								<dd><span>Email:</span><strong><a href="#">mail@thomsander.com</a></strong></dd>
							
						</article>
						
						<article class="col-2" style="width: 25%; float: left; margin-left: -10%">
							<h4 class="p1">DECLARATIONS</h4>
							
							<c:forEach var="declartion" items="${declartions}" >
								<h6><c:out value="${declartion.img_utl}"/></h6>
								<dt><c:out value="${declartion.nom_utl}"/></dt>
								<dd><c:out value="${declartion.telephone}"/></dd>
								<dd><c:out value="${declartion.messages}"/></dd>
								<dd><span>le </span><strong>le <c:out value="${declartion.date_msg}"/></strong></dd>
							</c:forEach>
							
							
							<h6>Ngaoundere 2ieme</h6>
								<dt>8901 Marmora Road, Glasgow, D04</dt>
								<dd><span>Telephone:</span><strong>+237 658 603 635</strong></dd>
								<dd><span>Email:</span><strong><a href="#">mail@thomsander.com</a></strong></dd>
							
							<h6>Ngaoundere 3ieme</h6>
								<dt>8901 Marmora Road, Glasgow, D04</dt>
								<dd><span>Telephone:</span><strong>+237 676 635 603</strong></dd>
								<dd><span>Email:</span><strong><a href="#">mail@thomsander.com</a></strong></dd>
							
						</article>
					</div>
					<div class="block"></div>
				</section>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>
		
	</body>
</html>