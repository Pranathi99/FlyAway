<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="finalTicket.jsp" method="post">
		<h1>Enter Payment Details:</h1>
		<table>
			<tr>
				<td>Name on Card : </td>
				<td><input type="text" name="cardname" placeholder="ABC"></td>
		    </tr>
		    <tr>
		    	<td>Credit card number : </td>
		    	<td><input type="text" name="cardnumber" placeholder="1111-2222-3333-4444"></td>
		    </tr>
		    <tr>
		    	<td>Exp Date : </td>
		    	<td><input type="text" name="expdate" placeholder="01/01"></td>
		    </tr>
		    <tr>
		    	<td>CVV : </td>
		    	<td><input type="text" name="cvv" placeholder="352"></td>
		    </tr>
		    <tr>
		    	<td></td>
		    	<td><input type="submit" value="Submit"/></td>
		    </tr>
	    </table>
    </form>
</body>
</html>