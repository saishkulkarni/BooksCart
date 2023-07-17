<%@page import="com.protech.bookscart.dto.Customer"%>
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
#nav_bar {
	width: 100%;
	height: 3em;
	background-color: rgb(209, 42, 42);
	display: flex;
	justify-content: end;
	align-items: center;
}

a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
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
	font-weight: bolder;
}

.about_container {
	width: 100%;
	justify-content: space-around;
	align-items: center;
	padding-top: 40px;
}

#about_page {
	width: 60%;
	height: 50%;
	position: relative;
	top: 2em;
	left: 370px;
}

#about_page1 {
	width: 60%;
	position: relative;
	top: 5em;
	left: 370px;
}

#about_page4 {
	width: 60%;
	height: 50%;
	position: relative;
	top: 5em;
	left: 370px;
}

#about_page2 {
	width: 60%;
	position: relative;
	top: 6em;
	left: 370px;
}

.container {
	display: flex;
	justify-content: space-around;
}

.footer_image {
	display: inline-grid;
	grid-template-columns: auto auto auto auto;
	column-gap: 1em;
}

.head {
	font-size: 1.8em;
	position: relative;
}

#about_bgimg {
	background-image: linear-gradient(45deg, rgb(204, 37, 37) 40%,
		rgb(204, 40, 40));
	text-align: center;
	height: 70px;
	position: relative;
	top: 20px;
	/* background-image: url("../image/st.jpg");
    height: 20em;
    width: 100%;
        background-size: contain;
        background-position: 0px;
         object-fit: contain; 
    background-repeat: no-repeat; */
	display: flex;
	justify-content: center;
	align-items: center;
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
	<section id="about_bgimg">
		<h2
			style="font-size: 50px; font-family: cursive; font-weight: bolder; text-shadow: 0.5px 0.5px 1px black;">About
			Us</h2>
	</section>
	<section class="about_container">
		<div id="about_page">

			<img
				src="https://cdn.pixabay.com/photo/2019/05/14/21/50/storytelling-4203628_640.jpg"
				alt="" height="5%" width="90%">

		</div>
		<div id="about_page1">
			<h1 style="font-size: 1.5em;">Our Story</h1>
			<p
				style="line-height: 30PX; font-size: 1.2EM; position: relative; top: 10px;">Developing
				good habits at an early age can help to pave the way for a bright
				and successful future. There are a lot of things that we do on a day
				to day basis but only a few of them stay with us as we grow. Reading
				is one such habit that we should all develop as this not only adds
				to our knowledge and enlightens our mind, but also helps to polish
				our language skills and vocabulary. Reading books that you like can
				help you to release stress and relax. Whether you are reading a
				school textbook or a novel, books expand your horizon and open your
				door to a vast ocean of knowledge. It is due to this very reason
				that teachers from the best school in Greater Noida lay emphasis on
				the importance of reading.</p>

		</div>


	</section>

	<section class="about_container">
		<div id="about_page4">
			<img
				src="https://cdn.pixabay.com/photo/2015/12/04/09/13/leaves-1076307_640.jpg"
				alt="" height="90%" width="90%">
		</div>

		<div id="about_page2">


			<h1 style="font-size: 1.5em;">Our Mission</h1>
			<p
				style="line-height: 30PX; font-size: 1.2EM; position: relative; top: 10px;">
				Our mission is to provide quality but affordable books for
				education, entertainment, self-development and self-fulfillment; to
				all when the need arises by: Providing a wide range of books to
				satisfy our clients Exceeding our customers’ expectation in their
				book requirements Making our books accessible in the market. Acting
				as agents for both customers and publishers and working for their
				interest; enriching our client’s life in their quest for educational
				and entertaining books and advancing the cause of our publishers.
		</div>

	</section>

	<!-- footer -->
	<footer style="position: relative; top: 20em">
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
				<p style="line-height: 2em;">Monday-Friday:10.00-23.00</p>
				<p style="line-height: 2em;">Saturday:10.00-19.00</p>

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
				<p style="line-height: 2em;">tel:************</p>
				<P style="line-height: 2em;">Email:Hello.colorbil@gmail.com</P>
				<p style="line-height: 2em;">Adress:Iris Waston, P.O.Box 283
					8562 Fusce Rd,Ny</p>
			</div>
		</div>
	</footer>
	</div>
	<script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
</body>
</html>