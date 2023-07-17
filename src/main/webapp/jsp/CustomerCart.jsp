<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.protech.bookscart.dto.Customer"%>
<%@page import="com.protech.bookscart.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">

<style>
body{
background-image: url("../images/cart.avif");
overflow-x:hidden;
}
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

#nav_bar {
	width: 100%;
	height: 3em;
	background-color: black;
	display: flex;
	justify-content: end;
	align-items: center;
}

.cart {
	color: white;
	font-size: 1em;
	position: relative;
	left: -5em;
}
/* img:hover{
    background-color: red;
} */
.admin:hover {
	color: red;
}

* {
	margin: 0;
	padding: 0;
}

.admin {
	color: white;
	font-size: 1em;
	position: relative;
	left: -3em;
}

#nav_main {
	width: 100ew;
	height: 6em;
	background-color: rgb(204, 40, 40);
	display: flex;
	justify-content: center;
	align-items: center;
}

#nav_child1 {
	width: 30%;
	position: relative;
	left: 700px;
}

#nav_child2 {
	width: 50%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 1.3em;
	font-family: 'Times New Roman', Times, serif;
}

.nav_child:hover {
	color: red;
}

#nav_child3 {
	width: 20%;
	display: flex;
	justify-content: end;
}

#headt {
	font-size: 50px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: lighter;
}

#main_body {
	width: 100vw;
	height: 50vw;
	background-color: aqua;
}

#cart_imagehead {
	height: 5em;
	width: 120%;
	background-color:white;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	position: relative;
	top: 15px;
	right: 190px;
}

#cart_table {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	font-size: medium;
	border-collapse: collapse;
	position: relative;
	top: 2em;
}

.cart_quantity {
	width: 3em;
	text-align: center;
}

#cart_head {
	background-image: linear-gradient(to top, gray, white);
}

#cart_total {
	position: relative;
	left: 65em;
	top: 50px;
	border-spacing: 2em;
}

td {
	text-align: left;
	border-bottom: -1em solid;
}

#cart_image {
	width: 250px;
	height: 200px;
	text-align: center;
}
</style>
</head>
<body>
	<div id="nav_bar">
		<div class="admin">
			<a href="/admin/login" class="admin" style="text-decoration: none;"><img
				height="45px" width="50px" alt="" src="../images/adminlogo.png"></a>
		</div>

	</div>

	<div id="nav_child1">
		<a href="/" class="admin" style="text-decoration: none; color: black;"><h1>BOOKSCART</h1></a>
	</div>
	<%
	List<Item> list = (List<Item>) request.getAttribute("list");
	%>
	</div>
	</section>
	<div id="cart_imagehead">
		<h1>Cart Page</h1>
	</div>
	<center>
		<table style="text-align: center;" id="cart_table" cellspacing="5em"
			cellpadding="50em" border="2em">
			<tr id="cart_head">
				<td style="text-align: center; padding: 20px;"><h3>Product
						Image</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Product</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Price</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Quantity</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Total</h3></td>
				<td style="text-align: center; padding: 20px;"><h3>Remove</h3></td>
			</tr>

			<%
			for (Item prod : list) {
			%>
			<tr>
				<td id="cart_image">
					<%
					String base64 = Base64.encodeBase64String(prod.getImage());
					%> <img height="300" width="300" alt="unknown"
					src="data:image/jpeg;base64,<%=base64%>">
				</td>
				<td style="text-align: center;">
					<h3><%=prod.getName()%></h3>
				</td>
				<td style="text-align: center;"><h3><%=(prod.getPrice() / prod.getQuantity())%></h3></td>
				<td style="text-align: center;"><h3><%=prod.getQuantity()%></td>
				<td style="text-align: center;"><%=prod.getPrice()%></td>
				<td style="text-align: center;"><a
					href="/customer/<%=prod.getName()%>"><button
							style="padding: 5px; font-size: 15px;">Delete</button></a></td>
			</tr>


			<%
			}
			%>



		</table>


	</center>

	<a href="/jsp/CusomerBill.jsp"><button type="submit">Place
			Order</button></a>
	<script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
</body>
</html>