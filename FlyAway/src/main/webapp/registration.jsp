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
<h1>Enter Personal Details:</h1>
	<form action="Confirmation?flightId=${flight_id}" method="post">
	<c:forEach var="i" begin="0" end="${noOfSeats-1}">
		<h3>Enter Details of Passenger ${i+1}</h3>
		<table>
				<tr>
					<td>FirstName : </td>
					<td><input type="text" name="fname${i}" required="required"/></td>
				</tr>
				<tr>
					<td>LastName : </td>
					<td><input type="text" name="lname${i}" required="required"/></td>
				</tr>
				<tr>
					<td>Email : </td>
					<td><input type="email" name="email${i}" required="required"/></td>
				</tr>
				<tr>
					<td>MobileNo : </td>
					<td><input type="text" name="mobileNo${i}" required="required"/></td>
				</tr>
				<tr>
					<td>City : </td>
					<td><input type="text" name="city${i}" required="required"/></td>
				</tr>
				<tr>
					<td>State : </td>
					<td><input type="text" name="state${i}" required="required"/></td>
				</tr>
			<tr>
				<td>Pincode : </td>
				<td><input type="text" name="pincode${i}" required="required"/></td>
			</tr>
		</table>
	</c:forEach>
			<input type="submit" value="submit"/>
	</form>
	<br/>
	<a href="userHome.html">Home</a>
</body>
</body>
</html>