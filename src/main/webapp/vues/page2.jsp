<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

           
            <div class="card text-white ">
                <div class="card-header  bg-info ">Mon panier </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead class="thead-light">
                        <tr> <th>#</th>
                            <th>D&eacute;signation de vos articles</th>
                            <th width="15%">P.UT</th>
                            <th>Quantit&eacute;</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach varStatus="i" items="${sessionScope.monpanier.lignes}" var="li">
                        <tr>
                            <th scope="row">${i.count}</th>
                            <td>
                                <img src="${img}/${li.prod.id}.jpg" width="10%"> ${li.prod.description}
                            </td>
                            <td>${li.prod.prix * li.quantite}</td>
                            <td>${li.quantite}</td>
                            <td>3000</td>
                            <td><a class="btn btn-danger " href="">Suppimer </a></td>
                        </tr>
                      </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>

    </div>

</div>




</body>
</html>