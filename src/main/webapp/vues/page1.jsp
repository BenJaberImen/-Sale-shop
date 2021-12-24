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
            <li class="nav-item ">  <a class="nav-link" href="#">Home</a>     </li>
            <li class="nav-item">   <a class="nav-link" href="#">Promotions</a>   </li>
            <li class="nav-item">   <a class="nav-link" href="#">Ventes Flash</a>   </li>
            <li class="nav-item">   <a class="nav-link" href="#">Déstockages</a>   </li>
        </ul>

        <button class="btn btn-info  " type="submit">Se Connecter </button>

    </div>
    </div>
</nav>


<div class="container">
 <div class="row" style="margin-top: 20px;">
 <div class="col-3">

           <div class="list-group">
               <a href="${cxt}/home" class="list-group-item list-group-item-action ">
                   Tous les Produits
                   <c:forEach items="${cats}" var="c">
                        <a href="${cxt}/produits/${c.id }" class="list-group-item list-group-item-action "> ${c.description}</a>
              </c:forEach>
           </div>
       </div>
    <div class="col-9">

            <div class="row">
            <c:forEach items="${prods }" var="p">
                <div class="col-4">
                  <div class="card bg-light" style="width: 18rem;">
                    <img src="${img}/${p.id }.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"> ${p.description}</h5>
                        <p class="card-text">Intel Core I5-2620m - 2.5Ghz - 4Go DDR3 - 250GO - 14.1" </p>
                        <a href="${cxt}/addPanier/${p.id}" class="card-link btn btn-primary">Acheter</a>
                        <a href="#" class="card-link btn btn-danger">  ${p.prix}  </a>
                     
                    </div>
                   
                </div>
                </div>
               
    </c:forEach>

        </div>

    </div>

</div>


</body>

</body>
</html>