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
<h2>List of Available Airlines</h2>
	<table border="2">
			<tr>
				<th>Airlines</th>
			</tr>
			<c:forEach var="airline" items="${Airlines_list}">
				<tr>
					<td>${airline}</td>
				</tr>
			</c:forEach>
		</table>
		<br/>
	<a href="adminHome.html">Back</a>
</body>
</html>