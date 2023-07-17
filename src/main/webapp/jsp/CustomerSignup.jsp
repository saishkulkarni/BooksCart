<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    body{
    margin: 0;
    overflow: hidden;
    }
#nav_bar{
    width: 100vw;
    height: 3em;
    background-color:rgb(209, 42, 42);
    display: flex;
    justify-content: end;
    align-items: center;

}
.cart{
    color: white;
    font-size: 1em;
    position: relative;
     left: -5em;

}
/* img:hover{
    background-color: red;
} */
.admin:hover{
    color: red;
}
*{
    margin: 0;
    padding: 0;
}
.admin{
    color: white;
    font-size: 1em;
    position: relative;
     left: -3em; 
}
#nav_main{
    width: 100ew;
    height: 4em;
    background-color:rgb(0, 0, 0);
    display: flex;
    justify-content: center;
    align-items: center;
}
#nav_child1{
    width: 30%;
    text-align: center;
}
#nav_child2{
    width: 50%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 1.3em;
    font-family: 'Times New Roman', Times, serif;
    
}
.nav_child:hover{
    color: red;
}
#nav_child3{
    width: 20%;
    display: flex;
    justify-content: end;
}


#headt{
    font-size: 50px;
    font-family:'Times New Roman', Times, serif;
    font-weight: lighter;
}

        .form1{
        margin:-50px;
            background-image: url(../images/login.avif);
	height: 640px;
	display: flex;
	justify-content: center;
	align-items: center;
        }
        form{
            border: 2px solid;
            /* position: relative;
            left: 27em;
            top: 5em; */
            width: 25em;
            height: 33em;
            /* display: flex;
            justify-content: center;
            align-items: center; */
            border-radius: 1em;
            background-color: bisque;

        }
        h1{
            height: 2em;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: -20.3px;
            border-radius: 10px;
        
            
            background-color: rgb(210, 50, 50);
            /* text-align: center;
            border-top-right-radius: 0.5em;
            border-top-left-radius: 0.5em; */
            
        }

        .td1{
            text-align: right;
            position: relative;
            /* left: -1em; */
        }

        .cancel{
            background-color: red;
             position: relative; 
             left: -4em; top: 1.5em;
              border: white; height: 2em;
              width: 7em; border-radius: 1em;
              
        }

        .reg{
            position: relative;
             left: 2em;
              background-color:cornflowerblue;
               border: white;
                height: 2em; width: 7em; 
                top: 1em;
                 border-radius: 1em;
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
			<a style="text-decoration: none" href="/"><h1
					style="font-style: oblique;">BOOKS CART</h1></a>
	</section>
	
    
    <br><br>    
    <div class="form1">
    
    <form action="/customer/signup" method="post">
        <h1 style="color: white;">SignUp</h1>
        <table cellspacing="20em">
            <tr>
                <td class="td1"><label for="name"><strong>First Name :</strong></label></td>
                <td><input type="text" name="fname" id="name" required="required"></td>
            </tr>
            <tr>
                <td class="td1"><label for="lname"><strong>Last Name :</strong></label></td>
                <td><input type="text" name="lname" id="lname" required="required"></td>
            </tr>
            <tr>
                <td class="td1"><label for="mno"><strong>Mobile No :</strong></label></td>
                <td><input type="text" name="mno" id="mno" required="required"></td>
            </tr>
            <tr>
                <td class="td1"><label for="email"><strong> Email-Id :</strong></label></td>
                <td><input type="email" name="email" id="email" required="required"></td>
            </tr>
            <tr>
                <td class="td1"><label for="pwd"><strong>Password :</strong></label></td>
                <td><input type="password" name="pwd" id="pwd" required="required"></td>
            </tr>
            <tr>
                <td class="td1"><label for="cpwd"><strong> Confirm <br>
                    Password </strong>:</label></td>
                <td><input type="password" name="" id="cpwd" required="required"></td>
            </tr>
            
            <tr>
            
                <td><button class="reg" ><strong><a href="/"style="text-decoration: none; color: white;">Home</strong></a></button>
                </td>
                <td><button class="reg"><strong>Register</strong></a></button>
                </td>
                <!-- <a href="" >Forgot pasword?</a> -->
                <td><button type="reset" class="cancel"><strong><a href="" style="text-decoration: none;color: white;">Cancel</a></strong></button>
                 <a href="" style="position: relative; top: 3em; left: -1em; text-decoration: none;font-size: 15px;color: black;">help?</a></td>
            
        </table>
    </form>
    <script>
		setTimeout(function() {
			var element = document.getElementById('content');
			element.style.display = 'none';
		}, 1500);
	</script>
</div>
</body>
</html>