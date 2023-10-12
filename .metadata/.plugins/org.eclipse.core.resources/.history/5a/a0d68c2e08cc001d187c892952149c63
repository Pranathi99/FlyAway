<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway App</title>
</head>
<body>
<h1>Confirm the below Details:</h1>
	<form action="payment.jsp" method="post">
		<h3>Flight Details:</h3>
			<table border="2">
				<tr>
					<th>Airline ID</th>
					<th>Airline Name</th>
					<th>Source Location</th>
					<th>Destination Location</th>
					<th>No of Seats</th>
					<th>Date of Travel</th>
					<th>Total Price</th>
				</tr>
				<tr>
					<td><h4>${Flight_details.flight.airlineId }</h4></td>
					<td><h4>${Flight_details.flight.airlineName }</h4></td>
					<td><h4>${Flight_details.flight.source }</h4></td>
					<td><h4>${Flight_details.flight.destination }</h4></td>
					<td><h4>${Flight_details.noOfSeats }</h4></td>
					<td><h4>${Flight_details.flight.availabilityDate }</h4></td>
				<c:set var="priceStr" value="${Flight_details.flight.price}" />
				<c:set var="price" value="${Integer.parseInt(priceStr)}" />
				<c:set var="seatsStr" value="${Flight_details.noOfSeats}"/>
				<c:set var="seats" value="${Integer.parseInt(seatsStr)}" />
					<td><h4>${price*seats}</h4></td>
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
				<c:forEach var="passenger" items="${Passenger_details}">
				<tr>
					<td><h4>${passenger.firstName }</h4></td>
					<td><h4>${passenger.lastName }</h4></td>
					<td><h4>${passenger.email }</h4></td>
					<td><h4>${passenger.mobileNo }</h4></td>
					<td><h4>${passenger.address.city }</h4></td>
					<td><h4>${passenger.address.state }</h4></td>
					<td><h4>${passenger.address.pincode }</h4></td>
				</tr>
				</c:forEach>
			</table>
		<br/>
		<span style="align:center"><input type="submit" value="Proceed to Payment"></span>
	</form>
</body>
</html>