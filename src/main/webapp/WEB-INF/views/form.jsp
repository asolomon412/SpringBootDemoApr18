<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form Demo</title>
<!-- You can add CSS here or inline -->

<!-- Here are the things you need to get started using bootstrap -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>Form Examples</h1>
		</div>
		<h3>Simple Form Example</h3>
		<hr>
		<form action="form1">
			First Name: <input type="text" name="fName" required> <!-- required means a user has to enter info to use the submit button -->
			Last Name: <input type="text" name="lName" required> 
			<input type="submit" value="Submit">

		</form>
		<br> <br>
		<h3>Checkbox Example</h3>
		<hr>
		<h5>If more than one box is checked the values will come in as a
			string of values separated by, all of the names for the input
			checkboxes must be the same</h5>
		<form action="form2">
			<input type="checkbox" name="vehicle" value="Bike" checked>
			Bike <br>
			<!-- The checked value is to check on of the boxes by default -->
			<input type="checkbox" name="vehicle" value="Car"> Car <br>
			<input type="checkbox" name="vehicle" value="Motorcycle">
			Motorcycle<br> <input type="submit" value="Submit">
		</form>

		<br> <br>
		<h3>Dropdown Example</h3>
		<hr>
		<h5>The dropdown only needs a name in the select opening tag to
			work</h5>
		<form action="form3">
			<select name="form3">
				<option value="volvo">Volvo</option>
				<option value="saab">Saab</option>
				<option value="mercedes">Mercedes</option>
				<option value="audi">Audi</option>
			</select> <input type="submit" value="Submit">
		</form>
		<br> <br>
		<h3>Radio Button Example</h3>
		<hr>
		<form action="form4">
			<input type="radio" name="gender" value="male" checked> Male<br>
			<!-- The checked option is used to have a value set by default -->
			<input type="radio" name="gender" value="female"> Female<br>
			<input type="radio" name="gender" value="other"> Other <br>
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>