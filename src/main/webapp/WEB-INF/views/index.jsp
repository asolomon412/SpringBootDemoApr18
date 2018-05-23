<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<!-- You can add CSS here or inline -->

<!-- Here are the things you need to get started using bootstrap -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- You can also add external style sheets 
add any external css or js files here in the project structure: src/resources/static -->
  <link rel="stylesheet" type="text/css" href="css/test.css">
</head>
<body>
<div class="container">
	<h1>This is a test</h1>
	
<!-- 	This is an Expression Language (EL) tag 
	We use this to take data from the backend java and pass it to the front end -->
	${test}
	
	<br>
<!-- 	This is a link to a new page based off of the associated @RequestMapping that lives in the 
	Controller class -->
	<p>
	<a href="test" class="btn-sm btn-primary">Go to test page</a>
	</p>
	<p>
	<a href="form" class="btn-sm btn-danger">Go to form page</a>

	</p>
	<p>
	<a href="list" class="btn-sm btn-warning">Go to list page</a>

	</p>
	</div>
	<!-- Add any javascript at the end of your file -->
<script src="js/testing.js"></script> 
</body>
</html>