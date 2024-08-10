<%-- 
    Document   : admin
    Created on : Dec 1, 2022, 6:32:13 PM
    Author     : Deelaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Login | ABC Movies</title>
	<link rel="stylesheet" type="text/css" href="assets/css/admin.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body style="background-image: url(assets/images/cover.png)">
	
	<!--Admin loginbox-->
	<div class = "loginbox">
		<img src="assets/images/Admin.png" class="Admin" alt="Admin.png">
		<h1>Administration Login</h1>
		
                <form class="login form" action="admin" method="post">
		<p>Username</p>
		<input autocomplete="off" type="text" name="txtadmin" placeholder="Enter username here." id="username">
		<p>Password</p>
		<input type="password" name="txtpass" placeholder="Enter password." id="password">
		<input type="submit" class="btn" value="Login">
                <span>${error}</span>
		<br>	
		
		</form>
	</div>
                
                <script>
                    function validate()
{
var username=document.getElementById("username").value;
var password=document.getElementById("password").value;	
if(username=="Admin@ABC.com"&& password=="ABC123")
	{
	    alert("Login Successfully!");  
		window.open("Admin_Dashboard.html");
	    return false;

	}
	else
	{
	    alert("Login Failed!");
		
	}
}

                </script>    
	
</body>
</html>
