<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<h2>List of Flights</h2>
<table border="2">
			<tr>
				<th>AirlineId</th>
				<th>Airline</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Availability Date</th>
				<th>Seats Available</th>
				<th>Price</th>
			</tr>
			<c:forEach var="flight" items="${Flights_list}">
				<tr>
					<td><a href="LoadFlight?flightId=${flight.airlineId}"/>${flight.airlineId}</td>
					<td>${flight.airlineName}</td>
					<td>${flight.source}</td>
					<td>${flight.destination}</td>
					<td>${flight.availabilityDate}</td>
					<td>${flight.totalAvailableSeats}</td>
					<td>${flight.price}</td>
					<td><a href="DeleteFlight?flightId=${flight.airlineId}"/>Delete</td>
				</tr>
			</c:forEach>
		</table>
		<br/>
	<a href="adminHome.html">Back</a>
</body>
</html>