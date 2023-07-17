<%@page import="com.protech.bookscart.dto.Customer"%>
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.protech.bookscart.dto.Product"%>
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
<link rel="stylesheet" href="./pro.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

#nav_bar {
	width: 100vw;
	height: 3em;
	background-color: rgb(209, 42, 42);
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
	background-color: black;
	display: flex;
	justify-content: center;
	align-items: center;
}

#nav_child1 {
	width: 30%;
	text-align: center;
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

h1 {
	font-size: 50px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: lighter;
}

#main_body {
	width: 100vw;
	height: 50vw;
	background-color: aqua;
}

.product_container {
	width: 100%;
	height: 500px;
}

.child_product_container {
	width: 90%;
	margin: auto;
	display: flex;
	justify-content: space-evenly;
}

.child_product_container1 {
	width: 20%;
	border: 1px solid black;
	border-style: none;
	text-align: center;
	padding: 10px;
}

.img1 {
	width: 220px;
	height: 280px;
}

.container {
	display: flex;
	justify-content: space-around;
	position: relative;
	top: 2em;
}

.footer_image {
	display: inline-grid;
	grid-template-columns: auto auto auto auto;
	column-gap: 0.5em;
}

.head {
	font-size: 1.8em;
	position: relative;
}
</style>
</head>
<body>
	<%
	List<Product> list = (List<Product>) request.getAttribute("list");
	%>

	<div id="nav_bar">
		<div class="admin">
			<a href="/admin/login" class="admin" style="text-decoration: none;"><img
				height="45px" width="50px" alt="" src="../images/adminlogo.png"></a>
		</div>

	</div>

	<section id="nav_main">
		<div id="content">
			<h1 style="color: green">${pass}</h1>
			<h1 style="color: red">${fail}</h1>
		</div>
		<div id="nav_child1">
			<a href="/" class="admin"
				style="text-decoration: none; color: white;"><h1>BOOKSCART</h1></a>
		</div>
		<div id="nav_child2">
			<div class="nav_child">
				<a href="/" style="text-decoration: none; color: white;">Home</a>
			</div>
			<div>
				<a href="/aboutus" style="text-decoration: none; color: white;">About
					us</a>
			</div>
			<div>
				<a href="/customer/products"
					style="text-decoration: none; color: white;">Books</a>
			</div>
			<%
			Customer customer = (Customer) session.getAttribute("customer");
			if (customer == null) {
			%>

			<div>
				<a href="/customer/signup"
					style="text-decoration: none; color: white;">SignUp</a>
			</div>
			<div>
				<a href="/customer/login"
					style="text-decoration: none; color: white;">Login</a>
			</div>
			<%
			} else {
			%>
			<div id="child3">
				<a href="/customer/cart" class="cart"
					style="text-decoration: none; color: white;"><img
					src="../images/cart.jpeg" alt="Cart" width="30em" height="30em"
					style="border-radius: 5em;"> </a>
			</div>
			<div>
				<a href="/logout" style="text-decoration: none; color: white;">Logout</a>
			</div>
			<%
			}
			%>
		</div>
	</section>

	<!-- carousel -->
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://hips.hearstapps.com/hmg-prod/images/true-crime-books-1650542460.jpg"
					class="d-block w-100" alt="..." height="500em">
			</div>
			<div class="carousel-item">
				<img
					src="https://hips.hearstapps.com/hmg-prod/images/fantasy-books-1646944171.jpeg"
					class="d-block w-100" alt="..." height="500em">
			</div>
			<div class="carousel-item">
				<img
					src="https://hips.hearstapps.com/hmg-prod/images/psychological-thrillers-1635509649.jpg"
					class="d-block w-100" alt="..." height="500em">
			</div>
		</div>
	</div>
	<!-- products -->
	<!-- <div><marquee behavior="alternate" direction="right" style="font-size: 50px;font-style: italic;">Collection</marquee></div> -->
	<div
		style="font-size: 50px; font-style: italic; position: relative; left: 50px;">Books</div>

	<div class="product_container" style="background-image: url(../images/library.avif);background-repeat: no-repeat;background-size: 100% 100vh">

		<div class="child_product_container">

			<%
			for (Product prod : list) {
			%>

			<div class="child_product_container1">
				<%
				String base64 = Base64.encodeBase64String(prod.getImage());
				%>
				<img height="300" width="250" alt="unknown"
					src="data:image/jpeg;base64,<%=base64%>">
				<h5 style="position: relative; top: 5px;">
					<%=prod.getName()%>
				</h5>
				<h5 style="position: relative; top: 5px;">
					(<%=prod.getAuthorName()%>)
				</h5>
				<h3 style="color: black;font-weight:bolder ;position: relative; top: 5px;">
					<%=prod.getPrice()%>
				</h3>
				<a href="/customer/addtocart?id=<%=prod.getId()%>"><button
						style="background-color: goldenrod; font-size: 15px; padding: 10px; border-style: none; position: relative; top: 5px;">Add
						to cart</button></a>
			</div>

			<%
			}
			%>

		</div>
	</div>
	<!-- footer -->
	<footer>
		<div class="container">
			<div class="item1">
				<div style="font-size: 1.8em;">BOOKZ VEND</div>
				<p style="line-height: 2em;">
					We would love to serve you and let enjoy <br> your culinary
					expirience. Excepteure sint <br> occaecat cupidatat non
					proident.
				</p>
				<p style="line-height: 2em;">
					Copyright @2023 All rights reserved | This <br> template is
					made with &#128151 by Colorbil
				</p>
			</div>
			<div class="item2">
				<div class="head">Opening Times</div>
				<p>Monday-Friday:10.00-23.00</p>
				<p>Saturday:10.00-19.00</p>

				<div class="footer_image">
					<img src="../images/facebook.png" alt="" height="30px" width="30px"
						class="footer_image1"> <img src="../images/instagram.jpeg"
						alt="" height="30px" width="30px" class="footer_image2"> <img
						src="../images/twitter.jpeg" alt="" height="30px" width="30px"
						class="footer_image3"> <img src="../images/g+.png" alt=""
						height="30px" width="30px" class="footer_image4">
				</div>

			</div>
			<div class="item3">
				<div class="head">Contact Us</div>
				<p>tel:************</p>
				<P>Email:Hello.colorbil@gmail.com</P>
				<p>Adress:Iris Waston, P.O.Box 283 8562 Fusce Rd,Ny</p>
			</div>

		</div>
	</footer>



	<script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>