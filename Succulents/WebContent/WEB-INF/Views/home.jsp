<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Succulents</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container-fluid bg-1 text-center">
<h1>Welcome to the Succulent library</h1>
<hr>
    <img src="images/pink.jpeg"class="img-circle" alt="pink succulent">
<h2>${message}</h2>
  </div>

<head>
  <style>
  .bg-1 { 
       background-color: #1abc9c; /* Green */
        color: #ffffff;
    }
  </style>
  <nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">Have something to add?</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Look up by Common name</a></li>
        <li><a href="#">Look up by Id#</a></li>
        <li><a href="#">Display all</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid bg-3 text-center"> 
  <h3>Succulents</h3>
  
<c:forEach items="${list}" var="plant">
<div class="row">
<div class="col-sm-4">
      <p><a href="succulent.do?id=${plant.id}">${plant.commonName}</a></p>
      <img src="${plant.imgUrl}" width="275" height="250" alt="${plant.commonName}">
    </div>
</div>
</c:forEach>





 <!--  <div class="row">
    <div class="col-sm-4">
      <p>Crinkle Leaf Plant</p>
      <img src="images/crinkleleafplant.jpg" width="275" height="250" alt="Crinkle Leaf Plant">
    </div>
    <div class="col-sm-4">
      <p>Fizzle Sizzle</p>
      <img src="images/fizzlesizzle.jpg" width="275" height="250" alt="fizzlesizzle">
    </div>
    <div class="col-sm-4"> 
      <p>Panda Ear</p>
      <img src="images/pandaear.jpg" width="275" height="250" alt="pandaear succulent">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-4">
      <a href="Zebra Plant"></a>
      <img src="images/zebraplant.jpg" width="275" height="250" alt="zebraplant">
    </div>
    <div class="col-sm-4">
      <p>Split Rock</p>
      <img src="images/splitrock.jpg" width="275" height="250" alt="splitrock succulent">
    </div>
    <div class="col-sm-4"> 
      <p>Rose Succulent</p>
      <img src="images/rosesucculent.jpg" width="275" height="250" alt="rosesucculent">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-4">
      <p>String of Pearls</p>
      <img src="images/stringofpearls.jpg" width="275" height="250" alt="stringofpearls succulent">
    </div>
    <div class="col-sm-4">
      <p>Hens and Chicks</p>
      <img src="images/hensandchicks.jpg" width="275" height="250" alt="hensandchicks succulent">
    </div>
    <div class="col-sm-4"> 
      <p>Echeveria</p>
      <img src="images/Echeveria.jpg" width="275" height="250" alt="Echeveria succulent">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-4">
      <p>Baby Toes</p>
      <img src="images/babytoes.jpg" width="275" height="250" alt="babytoes succulent">
    </div>
    <div class="col-sm-4">
      <p>Jelly Bean</p>
      <img src="images/jellybean.jpg" width="275" height="250" alt="jellybean succulent">
    </div>
    <div class="col-sm-4"> 
      <p>Bunny Ears</p>
      <img src="images/bunnyears.jpg" width="275" height="250" alt="bunnyears succulent">
    </div>
  </div>
</div>
 -->
<style>
.bg-4 { 
    background-color: #2f2f2f;
    color: #ffffff;
}
</style>

<footer class="container-fluid bg-4 text-center">
  <p>Thanks for visiting!! </p> 
</footer>





   






















</body>
</html>






