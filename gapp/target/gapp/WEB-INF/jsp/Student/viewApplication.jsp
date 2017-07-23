<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<title>View Application</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

</head>
<body>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
         <a class="navbar-brand" href="#" >GAPP</a>
       </div>
    <ul class="nav navbar-nav navbar-right">
      <li><h4>View Application</h4></li>

  </div>
  </nav>

  <form class="form-default" method="post">
		<div class=form-group>
      <%-- <h1 align="center">Application View</h1> --%>
      			<table class="table table-striped">

<tr>
<th> Department: </th>
<td> ${app.department.department_name} </td>
</tr>

<tr>
<th>Program:</th>
<td> ${app.program.program_name} </td>
</tr>

<tr>
<th>First Name:</th>
<td>${app.first_name}</td>
</tr>

<tr>
<th>Last Name:</th>
<td>${app.last_name}</td>
</tr>

<tr>
<th>Uploaded File</th>
<td><a href="fileDownload.html?fileName=${app.file}">Uploaded File</a></td>
</tr>

<tr>
<th>Degree of University:</th>

<td>
<c:forEach items="${app.degree_uni}" var="univ">
<div class="well">
<b>Name Of College:</b>${univ.name_of_college}<br/>

<b>Starting Year:</b>${univ.starting_year }<br />

<b>Ending Year:</b>${univ.end_year}<br />

<b>Name of Degree:</b>${univ.name_of_degree }<br />
</div>
</c:forEach>
</td>
</tr>

<tr>
<th>CIN:</th>
<td>${app.CIN}</td>
</tr>

<tr>
<th>Phone Number:</th>
<td>${app.phone_number}</td>
</tr>

<tr>
<th>D.O.B:</th>
<td>${app.birth_date}</td>
</tr>

<tr>
<th>GRE:</th>
<td>${app.gre}</td>
</tr>

<tr>
<th>GPA:</th>
<td>${app.gpa}</td>
</tr>

<tr>
<th>Gender:</th>
<td>${app.gender}</td>
</tr>

<tr>
<th>Term:</th>
<td>${app.term_name}</td>
</tr>



<p align="right">
<a href="Student.html?sid=${app.members.id}" class="btn btn-primary">Back</a>
</p>

</table>
</div>
</form>

</body>
</html>
