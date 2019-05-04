<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<form:form action="display" method="post" modelAttribute="SoapBean">
		<p>
		<h2>Select what type of Soap you would like to have ...?</h2>
		</p>
		<p>
			Please select the characteristics of the soap from the list : <br>
			<select name="category">
				<option>--Select--</option>
				<option value="Beauty">Beauty</option>
				<option value="Herbal">Herbal</option>
				<option value="Health">Health</option>
			</select>
		</p>
		<br>
		<p>
			<input type="hidden" name="listSoaps">
			<input type="submit" value="Get list of Soaps">
		</p>
	</form:form>
</body>
</html>