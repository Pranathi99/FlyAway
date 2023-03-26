<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
	<c:if test="${fn:length(flight_list)>0}">
		<h3>List of Available Flights</h3>
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
			<c:forEach var="flight" items="${flight_list}">
				<tr>
					<td>${flight.airlineId}</td>
					<td>${flight.airlineName}</td>
					<td>${flight.source}</td>
					<td>${flight.destination}</td>
					<td>${flight.availabilityDate}</td>
					<td>${flight.totalAvailableSeats}</td>
					<td>${flight.price}</td>
					<td><a href="Register?flightId=${flight.airlineId}&noOfSeats=${noOfSeats}"/>Select</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<c:if test="${fn:length(flight_list)<=0}">
		<h3>Sorry, No flights available for selected date</h3>
		<a href="userHome.html">Check for another date</a>
	</c:if>
	<br/><br/>
	<a href="index.html">Home</a>
</body>
</html>