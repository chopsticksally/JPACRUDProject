<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Succulents</title>
</head>
<body>
<h1>Succulent Library</h1>

<div class="container-fluid bg-3 text-center"> 
  <h3>Succulents</h3>
<!-- <div class="row"> -->
<c:forEach items="${succulents}" var="succulent" >
		<!-- </div>
		<div class="row">
		<div class="col-sm-4"> -->
<table>
	<tr>
    	<td>
		<p>${succulent.id}: ${succulent.commonName}</a></p>
		<img src="${succulent.imgUrl}" width="275" height="250" alt="${succulent.commonName}">
		<!--  </div>-->
		
		</td>
		<td>
		<p><h2>About this succulent:</h2></p>
		<table>
			<tr>
				<td>Scientific name:</td>
				<td>${succulent.scientificName}</td>
			</tr>
			<tr>
				<td>Origin:</td>
				<td>${succulent.origin}</td>
			</tr>
			<tr>
				<td>Height:</td>
				<td>${succulent.height}</td>
			</tr>
			<tr>
				<td>Diameter:</td>
				<td>${succulent.diameter}</td>
			</tr>
			<tr>
				<td>Cold Hardiness:</td>
				<td>${succulent.coldHardiness}</td>
			</tr>
			<tr>
				<td>Sun Exposure:</td>
				<td>${succulent.sunExposure}</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
	
</c:forEach>
</div><br>


	<a href="home.do">Return home</a>

</body>
</html>
