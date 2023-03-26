<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<h3>Update Flight Details</h3>
	<form action="UpdateFlight" method="post">
		<table>
		<tr>
				<td>AirlineId</td>
				<td><input type="text" name="airlineId" value="${FLIGHT.airlineId}"/></td>
			</tr>
			<tr>
				<td>AirlineName</td>
				<td><input name="airlineName" value="${FLIGHT.airlineName}"/></td>
			</tr>
			<tr>
				<td>Source</td>
				<td><input name="src" value="${FLIGHT.source}"/></td>
			</tr>
			<tr>
				<td>Destination</td>
				<td><input name="dest" value="${FLIGHT.destination}"/></td>
			</tr>
			<tr>
				<td>AvailabilityDate</td>
				<td><input name="date" value="${FLIGHT.availabilityDate}"/></td>
			</tr>
			<tr>
				<td>TotalAvailableSeats</td>
				<td><input name="seats" value="${FLIGHT.totalAvailableSeats}"/></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input name="price" value="${FLIGHT.price}"/></td>
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