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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registration</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">GAPP</a>
		</div>
	</div>
	</nav>




	<form class="form-default" method="post">
		<div class=form-group>
			<h1 align="center">Registration Page</h1>
			<table class="table table-striped">
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="f_name" required /></td>
					<!-- <br /> -->
				</tr>

				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="l_name" required /></td>
					<!-- <br /> -->
				</tr>

				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" required /></td>
					<!-- <br /> -->
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="password" name="pass" required /></td>
					<!-- <br /> -->
				</tr>

				<tr>
					<td align="center" colspan="2">
					<input type="submit" class="btn btn-primary" value="Submit" />
					<input type="reset" class="btn btn-danger" value="Reset" />
					</td>
			</table>
		</div>
	</form>
</body>
</html>
