<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./pro2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<style>
a {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

h1 {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
}

#nav_bar {
	width: 100%;
	height: 3em;
	background-color: rgb(204, 40, 40);
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
	background-color: black;;
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

.container-fluid {
	background-image: url(../images/login.avif);
	height: 605px;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

.tab {
	border: 2px solid black;
	background-color: white;
	/* background-image: linear-gradient(blue,red,orange,green); */
	/* border-radius: 10px; */
	/* display: flex; */
	/* justify-content: center; */
	padding: 60px;
	width: 100px;
	height: 100px;
}

input[id="user"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
	border-style: solid;
}

input[id="pass"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
	border-style: solid;
}

input[value="Submit"] {
	border-color: blue;
	border-width: 1px;
	border-radius: 3px;
	color: black;
}
</style>
</head>
<body>
	<div id="nav_bar">
		<div class="cart"></div>
		<div class="admin">
			<a href="/admin/login" class="admin" style="text-decoration: none;"><img
				height="45px" width="50px" alt="" src="../images/adminlogo.png"></a>
		</div>
	</div>
	<section id="nav_main">
		<div id="nav_child1">
			<a style="text-decoration: none" href="/"><h1
					style="font-style: oblique;color: white">BOOKS CART</h1></a>
		</div>


	</section>
	



	<!-- <section id="nav_main">
            <div id="nav_child1">
               <h1 style="color:white;">BOOKS CART</h1>
          </div>
            <div id="nav_child2">
                <div class="nav_child">
                    <a href="/" style="text-decoration: none; color: white;">Home</a>
                </div>
                <div>
                    <a href="/jsp/about.jsp" style="text-decoration: none; color: white;">About us</About></a>
                    
                </div>
                <div>
                    <a href="/jsp/product.jsp" style="text-decoration: none; color: white;">Books</a>
                    
                </div>
                <div>
                    <a href="/jsp/userlogin.jsp" style="text-decoration: none; color: white;">Login</a>
                    
                </div>
                <div>
                    <a href="/jsp/usersignup.jsp" style="text-decoration: none; color: white;">SignUp</a>
                    
                </div>

            </div>
            <div id="nav_child3">
                <a href="cart1.html" class="cart"><img src="https://static.vecteezy.com/system/resources/thumbnails/009/157/893/small/shopping-cart-set-of-shopping-cart-icon-on-white-background-shopping-cart-icon-shopping-cart-design-shopping-cart-icon-sign-shopping-cart-icon-isolated-shopping-cart-symbol-free-vector.jpg" alt="cart" width="30em" height="30em" style="border-radius: 5em;">
                </a>   
            </div>
            
        </section> -->
	<div class="container-fluid">
		<form action="/customer/login" method="post">
			<table class="tab"
				style="height: 300px; width: 300px; border-radius: 10px;">
				<tr>

				<tr>
					<th id="content" style="color: red">${fail}</th>
				</tr></tr>


				<tr>
					<th
						style="font-size: 20px; font-style: normal; text-align: center;">
						USER LOGIN</th>
				</tr>
				<tr>

					<td><input type="text" name="user" id="user"
						placeholder="Enter email/mobile"
						style="width: 200px; height: 25px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>

				</tr>
				<tr>

					<td><input type="password" name="password" id="pass"
						placeholder="Password"
						style="width: 200px; height: 25px; font-size: 12px;"></td>

				</tr>

				<tr>
					<td>
						<button
							style="width: 50px; height: 30px; font-size: 18px; background-color: orange; border-style: none; width: 200px; border-radius: 2px;">Login</button>
					</td>

				</tr>
				<tr></tr>
				<tr>
					<th><a href="/customer/signup" style="font-size: 10px">New? Click here to Create Account</a></th>
				</tr>
			</table>
		</form>

	</div>

	<script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
</body>
</html>