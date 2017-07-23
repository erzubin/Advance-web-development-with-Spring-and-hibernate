<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
form {
margin: 0 auto;
width: 600px;
}

input[type="submit"] {
font-size: 20px;
margin: 0 auto;
width: 140px;
text-align: center;
}
</style>

<title>Welcome to Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>

  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
         <a class="navbar-brand" href="#" >GAPP</a>
    </div>
  </div>
</nav>


	<form class="form-default" method="post">
		<div class=form-group>
<h1 align="center">Welcome To Login Page</h1>
			<table class="table table-striped">

        <tr><td>
<label for="name">Username: </lable></td>
<td>
<input type="text" class="from-control" name="username" required />
</td></tr>

<br />
<tr><td>

<label for="password">Password: </lable></td>
<td>
				<input type="password" name="pass" required />
</td></tr>

<tr><td colspan="2" align="center">
      	<br />
	
        <input type="submit" class="btn btn-primary" value="Login" /> <br/>
	<a href="Registration/reg_form.html">Sign In (if your a new user?)</a>

</td>
</tr>
      </table>
		</div>
	</form>

  <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>


</body>
</html>
