<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/add.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Have a Succulent you would like to add to the library?</title>
</head>
<body background="images/woodenslats.jpg" >
<div class = "container">
<div class= "row justify-content-start">
<div class= "col-sm-2"></div>
<div class = "col-sm-8" >
	<form action="add.do" method="POST">
		<label for="commonName">Common Name</label>
		<input type="text" value="${succulent.commonName}" min="1" max="30" name="commonName"> <br>
<br>		
		<label for="scientificName">Scientific Name</label>
		<input type="text" value="${succulent.scientificName}" min="1" max="100" name="scientificName"> <br>
<br>		
		<label for="Origin">Origin</label>
		<input type="text" value="${succulent.origin}" min="1" max="30" name="origin"> <br>
<br>
		<label for="height">Height</label>
		<input type="text" value="${succulent.height}" min="1" max="30" name="height"> <br>
<br>
		<label for="diameter">Diameter</label>
		<input type="text" value="${succulent.diameter}"  min="1" max="30" name="diameter"> <br>
<br>
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
		 <br> --%>
		
		<%-- <label for="imgUrl">Enter a URL to an image of this succulent</label>
		<input type="text" value="${succulent.imgUrl}" min="1" max="45" name="img"> <br>
		 <br>
		 --%>
		
		<input type="submit" value="Add">
	</form>
	
<p><h3>Delete this Succulent</h3>
<form name="delete" method="post" action="delete.do">
					<input type="hidden" name="id" value="${succulent.id}">
					<input type="submit" name="delete" value="Delete">
				</form>
</p>

<a href="home.do">Return home</a>
	</form>
	</div>
	</div>
	</div>
</body>
</html>