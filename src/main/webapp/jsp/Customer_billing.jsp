<%@page import="com.protech.bookscart.dto.Item"%>
<%@page import="com.protech.bookscart.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: linear-gradient(to right, #F1F6F9, #394867);
}

table {
	color: rgb(9, 9, 9);
	position: relative;
	left: 30%;
	top: 70px;
}

h1 {
	position: relative;
	top: 70px;
	left: 27%;
}

button {
	position: relative;
	left: 42%;
	top: 70px;
	height: 30px;
	width: 100px;
	outline: 4px double black;
	font-size: 20px;
	font-weight: 700;
	border-radius: 5px;
}

h3 {
	font-size: 20px;
}
</style>
</head>
<body>
	<h1 id="successMessage" style="color: green">${pass}</h1>
	<h1 id="failMessage" style="color: red">${fail}</h1>

	<script>
		// Get the success and fail message elements
		var successMessage = document.getElementById("successMessage");
		var failMessage = document.getElementById("failMessage");

		// Check if the success message exists and display it as a pop-up alert
		if (successMessage.innerText !== "") {
			window.alert(successMessage.innerText);
			successMessage.style.display = "none"; // Hide the success message element
		}

		// Check if the fail message exists and display it as a pop-up alert
		if (failMessage.innerText !== "") {
			window.alert(failMessage.innerText);
			failMessage.style.display = "none"; // Hide the fail message element
		}
	</script>



	<%
	Customer customer = (Customer) request.getAttribute("customer");
	String payment = (String) request.getAttribute("payment");
	double price = (double) request.getAttribute("price");
	%>

	<marquee behavior="" direction="right" scrollamount="10">
		<h3>
			Your Order is Ready To Dispatch!
			</h1>
	</marquee>

	<table border="2px" cellpadding="20px">
		<tr
			style="font-weight: 700; font-size: 25px; background-image: linear-gradient(to bottom right, white, rgb(60, 59, 59));">
			<th>Name</th>
			<th>Medicine name</th>
			<th>Quantity</th>
			<th>Price</th>
		</tr>

		<%
		for (Item item : customer.getCart().getItems()) {
		%>

		<tr>
			<td><%=customer.getFname() + " " + customer.getLname()%></td>
			<td><%=item.getName()%></td>
			<td><%=item.getQuantity()%></td>
			<td><%=item.getPrice()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h1>Total Price is : ${price} payment done through ${payment }</h1>
	<button onclick="window.print()">print</button>
</body>
</html>