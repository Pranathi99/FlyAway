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
<h3>List of Source and Destination Locations</h3>
	<table border="2">
			<tr>
				<th>Source</th>
				<th>Destination</th>
			</tr>
			<c:forEach var="locations" items="${Loc_list}">
				<tr>
					<td>${locations[0]}</td>
					<td>${locations[1]}</td>
				</tr>
			</c:forEach>
		</table>
		<br/>
	<a href="adminHome.html">Back</a>
</body>
</html>