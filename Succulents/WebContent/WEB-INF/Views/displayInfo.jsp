<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About your Succulent</title>
</head>
<body>

//ugly el
<div class="row">
<div class="col-sm-4">
      <p><a href="succulent.do?id=${succulent.id}">${succulent.commonName}</a></p>
      <img src="${succulent.imgUrl}" width="275" height="250" alt="${succulent.commonName}">
    </div>
</div>
<h3>Edit this Succulent</h3>


<h3>Delete this Succulent</h3>

<h3>Would you like more info about this succulent?</h3>

</body>
</html>
//spring form goes in here