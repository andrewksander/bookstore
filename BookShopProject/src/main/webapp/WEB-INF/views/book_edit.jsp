<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<h3>Edit Book</h3><br>
<body>
<c:forEach items="${b}" var="book">
<div class-"container">
<form action="updateBookRecord" method="post" >
<%-- <div class="form-group">
<label for="bookname">ID:</label>
<input type="text" name="id" value="${book.id}" readonly required/> <br>
</div> --%>
<div class="form-group">
<label for="bookname">Book Name:</label>
<input type="text" name="bookname" value="${book.bookname}" required/> <br>
</div>
<div class="form-group">
<label for="author"> Author:</label>
<input type="text" name="author" value="${book.author}" required/> <br>
</div>
<div class="form-group">
<label for="genre">Genre:</label>
<input type="text" name="genre" value="${book.genre}" required/> <br>
</div>
<div class="form-group">
<label for="overview">Overview:</label>
<input type="text" name="overview" value="${book.overview}" required/> <br>
</div>
<div class="form-group">
<label for="price">Price:</label>
<input type="text" name="price" value="${book.price}" required/> <br>
</div>
<button type="submit" class="btn btn-primary">Edit</button>
</form>
</div>
</c:forEach>

<%--
<div class="container">
<table class="table table-hover">

  <tr>
    <th>ID</th>
    <th>Book Name</th> 
    <th>Author</th>
    <th>Genre</th>
    <th>Overview</th>
    <th>Price</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
<c:forEach items="${b}" var="book">
	<tr>
	<td>${book.id}</td>
    <td>${book.bookname}</td> 
    <td>${book.author}</td>
    <td>${book.genre}</td>
    <td>${book.overview}</td>
    <td>${book.price}</td>
    <td><a href="<c:url value='/removebook/${book.id}'/>">Delete</a></td>
    <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
    </tr>
</c:forEach>
</table>
</div> --%>

</body>
</html>

