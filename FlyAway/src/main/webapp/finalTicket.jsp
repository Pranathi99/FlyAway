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
<span style="color:green;font-size: 3rem">Tickets Booked Successfully!</span>
<h2>Flight Details:</h2>
		<table border="2">
			<tr>
				<th>Airline ID</th>
				<th>Airline Name</th>
				<th>Source Location</th>
				<th>Destination Location</th>
				<th>No.of Seats</th>
				<th>Date of Travel</th>
				<th>Total Price</th>
			</tr>
			<tr>
				<td>${applicationScope.Flight_details.flight.airlineId }</td>
				<td>${applicationScope.Flight_details.flight.airlineName }</td>
				<td>${applicationScope.Flight_details.flight.source }</td>
				<td>${applicationScope.Flight_details.flight.destination }</td>
				<td>${applicationScope.Flight_details.noOfSeats }</td>
				<td>${applicationScope.Flight_details.flight.availabilityDate }</td>
			<c:set var="priceStr" value="${applicationScope.Flight_details.flight.price}" />
			<c:set var="price" value="${Integer.parseInt(priceStr)}" />
			<c:set var="seatsStr" value="${applicationScope.Flight_details.noOfSeats}"/>
			<c:set var="seats" value="${Integer.parseInt(seatsStr)}" />
				<td>${price*seats}</td>
			</tr>
		</table>
		<br/>
		<h2>Passenger Details:</h2>
			<table border="2">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>EmailId</th>
					<th>MobileNo.</th>
					<th>City</th>
					<th>State</th>
					<th>Pincode</th>
				</tr>
				<c:forEach var="passenger" items="${applicationScope.Passenger_details}">
				<tr>
					<td>${passenger.firstName }</td>
					<td>${passenger.lastName }</td>
					<td>${passenger.email }</td>
					<td>${passenger.mobileNo }</td>
					<td>${passenger.address.city }</td>
					<td>${passenger.address.state }</td>
					<td>${passenger.address.pincode }</td>
				</tr>
				</c:forEach>
			</table>
<h3><a href="index.html"/>Go to Home</h3>
</body>
</html>