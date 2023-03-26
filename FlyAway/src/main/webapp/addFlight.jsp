<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<h3>Add Flight Details</h3>
<form action="AddFlight" method="post">
		<table>
		<tr>
				<td>AirlineId</td>
				<td><input type="text" name="airlineId" /></td>
			</tr>
			<tr>
				<td>AirlineName</td>
				<td><input name="airlineName" /></td>
			</tr>
			<tr>
				<td>Source</td>
				<td><input name="src" /></td>
			</tr>
			<tr>
				<td>Destination</td>
				<td><input name="dest" /></td>
			</tr>
			<tr>
				<td>AvailabilityDate</td>
				<td><input name="date" type="date" /></td>
			</tr>
			<tr>
				<td>TotalAvailableSeats</td>
				<td><input name="seats" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input name="price" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"/></td>
			</tr>
		</table>
	</form>
	<a href="adminHome.html">Home</a>
</body>
</html>