<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About your Succulent</title>
</head>
<body>


<table>
	<tr>
    	<td>
    		<p>${succulent.commonName}</p>
		<img src="${succulent.imgUrl}" width="275" height="250" alt="${succulent.commonName}">
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
 





<h3>Edit this Succulent</h3>
<form action="update.do" method="POST">
		<input type="hidden" name="id" value="${succulent.id}">
		<label for="commonName">Common Name</label>
		<input type="text" value="${succulent.commonName}" min="1" max="30" name="commonName"> <br>
		
		<label for="scientificName">Scientific Name</label>
		<input type="text" value="${succulent.scientificName}" min="1" max="100" name="scientificName"> <br>
		
		<label for="Origin">Origin</label>
		<input type="text" value="${succulent.origin}" min="1" max="30" name="origin"> <br>

		<label for="height">Height</label>
		<input type="text" value="${succulent.height}" min="1" max="30" name="height"> <br>

		<label for="diameter">Diameter</label>
		<input type="text" value="${succulent.diameter}"  min="1" max="30" name="diameter"> <br>

		<label for="coldHardiness">Cold Hardiness</label>
			<select name="coldHardiness">
			<option value="Yes">Yes</option>
			<option value="No">No</option>
			</select> <br>
			
		<label for="sunExposure">Sun Exposure</label>
			<select name="sunExposure">
			<option value="Full">Full</option>
			<option value="Partial">Partial</option>
			<option value="Full/Partial">Full/Partial</option>
			</select> <br>
			
		<%-- <label for="careInstructionsUrl">Enter a URL to this succulent's Care Instructions</label>
		<input type="text" value="${succulent.careInstructionsUrl}"  min="1" max="45" name="careInstructions"> <br>
		 <br>
		
		<label for="imgUrl">Enter a URL to an image of this succulent</label>
		<input type="text" value="${succulent.imgUrl}" min="1" max="45" name="img"> <br>
		 <br> --%>
		
		
		<input type="submit" value="Submit">
	</form>
	
<p><h3>Delete this Succulent</h3>
<form name="delete" method="post" action="delete.do">
					<input type="hidden" name="id" value="${succulent.id}">
					<input type="submit" name="delete" value="Delete Succulent">
				</form>
</p>

<a href="home.do">Return home</a>
</body>
</html>

<!-- <h3>Would you like more info about this succulent?</h3>
 -->



