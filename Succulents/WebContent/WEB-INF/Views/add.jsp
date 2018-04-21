<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
    
    
    
    
 <!--NEED TO FIGURE OUT WHERE LINK GOES TO CSS  -->   
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/add.css"> --%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Have a Succulent you would like to add to the library?</title>
</head>
<body>

	<form action="add.do" method="POST">
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
			<option value="1">Yes</option>
			<option value="2">No</option>
			</select> <br>
			
		<label for="sunExposure">Sun Exposure</label>
			<select name="sunExposure">
			<option value="1">Full</option>
			<option value="2">Partial</option>
			<option value="3">Full/Partial</option>
			</select> <br>
			
		<label for="careInstructionsUrl">Enter a URL to this succulent's Care Instructions</label>
		<input type="text" value="${succulent.careInstructionsUrl}"  min="1" max="45" name="careInstructions"> <br>
		 <br>
		
		<label for="imgUrl">Enter a URL to an image of this succulent</label>
		<input type="text" value="${succulent.imgUrl}" min="1" max="45" name="img"> <br>
		 <br>
		
		
		<input type="submit" value="Add Succulent">
	</form>
	
<p><h3>Delete this Succulent</h3>
<form name="delete" method="post" action="delete.do">
					<input type="hidden" name="id" value="${succulent.id}">
					<input type="submit" name="delete" value="Delete Succulent">
				</form>
</p>

<a href="home.do">Return home</a>
	</form>
</body>
</html>