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
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
 body{
    background-color: white;
    background-image: url(../images/bookpage.avif);
	/* width: 10em; */
	overflow: hidden;
	background-repeat: no-repeat;
background-size: 100% 100vh;	
   
}
.main{
     width: 70em;
     position: relative;
     left: 5em;
}
 nav{

    /* width: 100%; */
    background-color: white;
 }
 .container{
    display: flex;
    column-gap: 3em;
    position: relative;
    left: 3em;
    top: 1em;
    /* background-color: aqua; */
    width: 50em;
    height: 3em;


}








#cart_imagehead
{
   height: 5em;
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   background-image: radial-gradient(skyblue,white);
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
   position: relative;
   top: 15px;
}
#cart_table
{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    font-size: medium;
    border-collapse: collapse;
    position: relative;
    top: 2em;
}
.cart_quantity
{
    width: 3em;
    text-align: center;
}
#cart_head
{
    background-image: linear-gradient(to top,  gray , white);
    
    
}
#cart_total
{
    position: relative;
    left: 65em;
    top: 50px;
    border-spacing: 2em;
}
td{
    text-align: left;
    border-bottom: -1em solid;
}
#cart_image{
    width: 250px;
    height: 200px;
    text-align: center;
}
    </style>
</head>
<body>
<body>

	<%
	List<Product> list = (List<Product>) request.getAttribute("list");
	%>

	<div class="main">
		<nav>
			<div class="container">
				<div><a href="/admin/home" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
			</div>
		</nav>



		<div id="cart_imagehead">
			<h1>Admin Cart Table</h1>
		</div>
    <center>
      <table style="text-align: center;" id="cart_table" cellspacing="5em" cellpadding="50em" border="2em">
        
        <tr id="cart_head">
            <td style="text-align: center;padding: 20px;"><h3>Book id</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Book Image</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Book Name </h3></td>
             <td style="text-align: center;padding: 20px;"><h3>Author name</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Price</h3></td>
           
        </tr>
        <% for(Product prod:list){%>
        
        <tr>
            <td style="text-align: center;"><%=prod.getId()%></td>
            <td style="text-align: center;">
            <%
	String base64 = Base64.encodeBase64String(prod.getImage());
	%>
	<img height="200" width="200" alt="unknown"
		src="data:image/jpeg;base64,<%=base64%>">
            </td>
            <td style="text-align: center;"><%=prod.getName()%></td>
                  <td style="text-align: center;"><%=prod.getAuthorName()%></td>
            <td style="text-align: center;"><%=prod.getPrice()%></td>
        </tr>
       <% } %> 
    </table>
</center>
<script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
</body>
</html>