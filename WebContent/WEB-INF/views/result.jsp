<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.5.0/css/all.css'
	integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU'
	crossorigin='anonymous'>


<link rel="stylesheet" href="styleFile.css">
<title>List of Soaps</title>
</head>

<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#" style="color: white;"><i
			class='fas fa-book-reader' style='font-size: 20px; color: white'></i>
			Soaps</a>
	</div>
	</nav>
	<br>
	<div class="container" style="width: 300px; text-align: center;">
		<table class="table table-dark">
			<thead>
				<tr>
					<th>${name}</th>
				</tr>
			</thead>
			<tbody>
			<% int i=0; %>
				<% while(i<3) { %>
					<tr>
						<td>${type.get(i)}</td>
					</tr>
				<% i++; } %>
			</tbody>

		</table>
	</div>

</body>

</html>