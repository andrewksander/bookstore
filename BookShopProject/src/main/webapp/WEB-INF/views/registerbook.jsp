<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Add Book</title>
<h1 align="center">Book Store</h1><br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Books</a>
    </div>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="#" onclick="window.location.href='/admin_page'"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
      <li><a href="#" onclick="window.location.href='/customer_page'"><span class="glyphicon glyphicon-user"></span> Customer</a></li>
    </ul>
    <form class="navbar-form navbar-right">
     
    </form>
  </div>
</nav>
</head>
<h3>Add Book</h3><br>
<body>
<div class-"container">
<form action="addbook" method="post">
<div class="form-group">
<label for="bookname">Book Name:</label>
<input type="text" name="bookname" required/> <br>
</div>
<div class="form-group">
<label for="author">Author:</label>
<input type="text" name="author" required/> <br>
</div>
<div class="form-group">
<label for="genre">Genre:</label>
<input type="text" name="genre" required/> <br>
</div>
<div class="form-group">
<label for="overview">Overview:</label>
<input type="text" name="overview" required/> <br>
</div>
<div class="form-group">
<label for="price">Price:</label>
<input type="text" name="price" required/> <br>
</div>
<button type="submit" class="btn btn-primary">Add</button>
</form>
</div>
</body>
</html>

