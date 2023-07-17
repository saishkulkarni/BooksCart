<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select payment</title>
<style>

body{
	background-image: url("https://images.unsplash.com/photo-1571715268998-d6e79bed5fc9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80");
    background-repeat: no-repeat;
	background-size: 100% 100vh;
}
 label{
        font-weight: bolder;
        font-size: 30px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    button{
        height: 30px;
        width: 100px;
        font-weight: bold;
        border-radius: 5px;
        box-shadow: 2px 2px 5px black;
        transition: all 1s linear;

    }
    button:hover{
        transform: scale(1.2,1.2);
    }
    form{
        position: relative;
        left: 4%;
        top:200px;
    }

</style>
</head>
<body>

 <h1 id="successMessage" style="color:green">${pass}</h1>
<h1 id="failMessage" style="color:red">${fail}</h1>

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


<form action="/customer/billing" method="post">
<label>Payment mode</label><br><br>
<br>
<input type="radio" name="payment" value="Paytm">Paytm <br><br>
<br>
<input type="radio" name="payment" value="card">Card <br><br>
<br>
<input type="radio" name="payment" value="cod">Cash On Delivery  <br><br>
<br>
<button type="submit">Submit</button>
</form>
</body>
</html>