<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<h1>Admin Login</h1>
<form action="Admin" method="post">
	<table>
		<tr>
			<td>Username : </td>
			<td><input type="text" name="username" required="required"/></td>
		</tr>
		<tr>
			<td>Password : </td>
			<td><input type="password" name="password" required="required"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Login"/></td>
		</tr>
	</table>
</form>
</body>
</html>