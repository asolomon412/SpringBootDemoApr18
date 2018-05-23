<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person List</title>
<!-- You can add CSS here or inline -->

<!-- Here are the things you need to get started using bootstrap -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h3>This is an example using JSTL</h3>


	<table border="1">

		<c:forEach items="${test}" var="p">
			<tr>
				<td>${p.firstName}</td>
				<td>${p.lastName}</td>
			</tr>

		</c:forEach>

	</table>
</div>
</body>
</html>