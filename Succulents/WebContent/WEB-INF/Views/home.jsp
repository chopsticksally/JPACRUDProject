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
      <a class="navbar-brand" href="add.do">Have something to add?</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       <!--  <li><a href="#">Look up by Common name</a></li> -->
        <li>Look up by ID#<form action="succulent.do" method="GET">
		 <input type="text" name="id" size="4" />
			<input type="submit" value="submit" />
			</form></li>
        
       
        <li><a href="succulents.do">Display all</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid bg-3 text-center"> 
  <h3>Succulents</h3>
<c:set var="count" value="0" scope="page"/>  
<div class="row">
<c:forEach items="${list}" var="plant" >
	<c:if test="${count % 3 == 0}">
		</div>
		<div class="row">
		<div class="col-sm-4">

		<p><a href="succulent.do?id=${plant.id}">${plant.commonName}</a></p>
		<img src="${plant.imgUrl}" width="275" height="250" alt="${plant.commonName}">
		</div>
	</c:if>
	<c:if test="${count % 3 != 0}">
		<div class="col-sm-4">
		
		<p><a href="succulent.do?id=${plant.id}">${plant.commonName}</a></p>
		<img src="${plant.imgUrl}" width="275" height="250" alt="${plant.commonName}">
		</div>
	</c:if>
	<c:set var="count" value="${count + 1}" scope="page"/>
</c:forEach>
</div>


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






