<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <spring:url value="/ressources/bootstrap4" var ="bootstrap"></spring:url>
       <spring:url value="/ressources/images" var ="img"/>
  
    <link rel="stylesheet" href=" ${bootstrap}/css/bootstrap.min.css">
    <c:set var="cxt" value="${pageContext.request.contextPath}" />
  
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
    <a class="navbar-brand" href="#">ESSAT Boutique</a>

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">  <a class="nav-link" href="#">Home</a>     </li>
            <li class="nav-item">   <a class="nav-link" href="#">Promotions</a>   </li>
            <li class="nav-item">   <a class="nav-link" href="#">Ventes Flash</a>   </li>
            <li class="nav-item">   <a class="nav-link" href="#">DĂ©stockages</a>   </li>
        </ul>

        <button class="btn btn-info  " type="submit">Se Connecter </button>

    </div>
    </div>
</nav>


<div class="container">

 
    <div class="row" style="margin-top: 20px;">

 <div class="col-6">
            <div class="panel panel-info">
                <div class="panel-body">
					
					
				<form class="form-horizontal">
				 <h4 align="center">Vous Avez Déjà Un Compte E-Boutique ?<br>
  				 Connectez-Vous !
				 </h4>
				 <br>
				  <div class="form-group">
					<label class="col-md-4 control-label">Email</label>
					<div class="col-md-8">
					  <input type="email" class="form-control" placeholder="Email">
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-md-4 control-label">Mot de passe</label>
					<div class="col-md-8">
					  <input type="password" class="form-control" placeholder="Password">
					</div>
				  </div>
				  
				  <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
					  <button type="submit" class="btn btn-info">Se Connecter</button>
					</div>
				  </div>
				</form>
					
                </div>
            </div>
        </div>
		<div class="col-6" style="margin-left:-20px;">
            <div class="panel panel-info">
              <div class="panel-body">
				<form class="form-horizontal">
				  <h4 align="center">Je Suis Un Nouveau Client </h4>
				  <br />
				  <h5>Créer un nouveau compte client</h5>
				  <br />				
				  <div class="form-group">
					<label class="col-md-4 control-label">Nom</label>
					<div class="col-md-8">
					  <input type="text" class="form-control" placeholder="Nom">
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-md-4 control-label">Prénom</label>
					<div class="col-md-8">
					  <input type="text" class="form-control" placeholder="Prenom">
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-md-4 control-label">Adresse</label>
					<div class="col-md-8">
					  <input type="text" class="form-control" placeholder="Adresse">
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-md-4 control-label">Email</label>
					<div class="col-md-8">
					  <input type="email" class="form-control" placeholder="Email">
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-md-4 control-label">Mot de passe</label>
					<div class="col-md-8">
					  <input type="password" class="form-control" placeholder="Password">
					</div>
				  </div>
				  <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
					  <button type="submit" class="btn btn-info">S'inscrire</button>
					</div>
				  </div>
				</form>
					
                </div>
            </div>
        </div>
		




    </div>

</div>
</body>

</body>
</html>