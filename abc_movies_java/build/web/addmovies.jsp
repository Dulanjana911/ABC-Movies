<%-- 
    Document   : addmovies
    Created on : 14-Jan-2023, 15:40:20
    Author     : dulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Movies</title>
    <!-- Bootstrap-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Custom CSS Styles -->
    <link rel="stylesheet" href="assets/css/addmovies.css">
   <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
  <div class="container">
    <form method="post" action="movies">
    <h2 class="mt-5 mb-5"><center>Movies Dashboard</center></h2>
      <div class="mb-5">
      <div class="row">
      <div class="form-group col-md-6 mb-3">
          <label for="name">Name</label>
          <input autocomplete="off" type="text" name="name" class="form-control" id="name" placeholder="Enter Name"/>
      </div>
          <div class="form-group col-md-6 mb-3">
          <label for="name">Category</label>
          <input type="text" name="category" class="form-control" id="category" placeholder="Enter Category"/>
      </div>
          <div class="form-group col-md-6 mb-3">
          <label for="name">Tickets</label>
          <input type="text" name="tickets" class="form-control" id="tickets" placeholder="Enter Quantity"/>
      </div>
          <div class="form-group col-md-6 mb-3">
          <label for="name">Price (Rs.)</label>
          <input type="text" name="price" class="form-control" id="price" placeholder="Enter Amount"/>
      </div>
          <div class="col-lg-12 mt-5">
          <button class="btn btn-success" id="Submit"  onclick="AddData()">Add Data</button>
          
          </div>
      </div>
      </div>
      <hr>
    </form>
  </div>
 <span>${error}</span>
</body>
</html>
