<%-- 
    Document   : admin_dashboard
    Created on : Dec 3, 2022, 11:10:15 AM
    Author     : Deelaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Dashboard</title>
    <link rel="stylesheet" href="assets/css/admindash.css">   
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<!--body css style-->
	<style>
body {
  background-image: url("assets/images/admin_bg.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
	
	<!--Admin Dashboard-->
	<div class = "Dashboard">
		<img src="assets/images/Admin.png" class="Admin" alt="Admin.png">
		<h1 style="color:black"><center>Admin Account</center></h1>
		
	
		<button class="button button1" onclick="alert('Connect users ticket purchasing for revenue calculation!')">Tickets</button>
        <button class="button button2" onclick="location.href='addmovies.jsp'">Movies</button>
	    <button class="button button3" onclick="location.href='rivews.jsp'">Reviews</button>
            <button class="button button4" ><a href="index.jsp" style="text-decoration: none;">Sign out</a></button>
</div>
</body>
</html>
