<%@page import="com.protech.bookscart.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BOOKS CART</title>
<link rel="icon" href="../images/favicon.ico">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
#nav_bar {
	width: 100%;
	height: 3em;
	background-color: rgb(209, 42, 42);
	display: flex;
	justify-content: end;
	align-items: center;
	position: sticky;
	top: 0px;
	z-index: 2;
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
	width: 100%;
	height: 6em;
	background-color: rgb(12, 12, 11);
	display: flex;
	justify-content: center;
	align-items: center;
	position: sticky;
	top: 3em;
	z-index: 2;
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

.container {
	display: flex;
	justify-content: space-around;
}

.footer_image {
	display: grid;
	grid-template-columns: repeat(4, auto);
	column-gap: 0.5em;
}

.head {
	font-size: 1.8em;
	position: relative;
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
			
			<%Customer customer=(Customer)session.getAttribute("customer");
			if(customer==null){
			%>
			
			<div>
				<a href="/customer/signup"
					style="text-decoration: none; color: white;">SignUp</a>
			</div>
			<div>
				<a href="/customer/login"
					style="text-decoration: none; color: white;">Login</a>
			</div>
			<%}else{%>
				<div id="child3">
					<a href="/customer/cart" class="cart" style="text-decoration: none; color: white;"><img src="../images/cart.jpeg" alt="Cart" width="30em" height="30em" style="border-radius: 5em;">
					</a>   
				</div>
				<div>
					<a href="/logout"
						style="text-decoration: none; color: white;">Logout</a>
				</div>
				<%}%>
			
		</div>
	</section>

	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://hips.hearstapps.com/hmg-prod/images/fantasy-books-1646944171.jpeg"
					class="d-block w-100" alt="..." height="500">
			</div>
			<div class="carousel-item">
				<img
					src="https://hips.hearstapps.com/hmg-prod/images/fantasy-books-1646944171.jpeg"
					class="d-block w-100" alt="..." height="500">
			</div>
			<div class="carousel-item">
				<img
					src="https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_640.jpg"
					class="d-block w-100" alt="..." height="500">
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer>
		<div class="container">
			<div class="item1">
				<div style="font-size: 1.8em;">BOOKZ VEND</div>
				<p style="line-height: 2em;">We would love to serve you and let
					you enjoy your culinary experience. Excepteur sint occaecat
					cupidatat non proident.</p>
				<p style="line-height: 2em;">&copy; 2023 All rights reserved</p>
			</div>
			<div class="item2">
				<div class="head">Opening Times</div>
				<p>Monday-Friday: 10.00-23.00</p>
				<p>Saturday: 10.00-19.00</p>

				<div class="footer_image">
					<img src="../images/facebook.png" alt="" height="30px" width="30px">
					<img src="../images/instagram.jpeg" alt="" height="30px"
						width="30px"> <img src="../images/twitter.jpeg" alt=""
						height="30px" width="30px"> <img src="../images/g+.png"
						alt="" height="30px" width="30px">
				</div>
			</div>
			<div class="item3">
				<div class="head">Contact Us</div>
				<p>tel: ************</p>
				<p>Email: Hello.colorbil@gmail.com</p>
				<p>Address: Iris Waston, P.O.Box 283 8562 Fusce Rd, NY</p>
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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
