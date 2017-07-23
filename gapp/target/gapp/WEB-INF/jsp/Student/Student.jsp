<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<title>Student</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

</head>
<body>

  <%-- This code makes Navigation bar in your page --%>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
         <a class="navbar-brand" href="#" >GAPP</a>
          </div>
         <div align="right">
         <a class="well" href="/springmvc/" >Logout</a>
   </div>
   
  </div>
  </nav>


  <form class="form-default" method="post">
		<div class=form-group>
<h1 align="center">List of application</h1>
			<table class="table table-striped">

<%-- <table border=3> --%>
<tr>
<th>Date</th><th>Department Name</th><th>Term</th><th>Application Status</th><th>Program Name</th>
<th>Details</th><th>Edit</th>
</tr>
<c:forEach items="${applications}" var="application">
<tr>

<td><c:set var="string2" value="${fn:substring(application.date, 0, 11)}" />${string2}</td>
<td>${application.program.dept.department_name }</td>
<td>${application.term_name }</td>

<td>
<c:choose>
<c:when test="${application.saveorsubmit}">
Saved
</c:when>
<c:otherwise>
${application.app_status.app_status}
</c:otherwise>
</c:choose>

</td>
<td>${application.program.program_name }</td>
<td><a href="viewApplication.html?appId=${application.id }" class="btn btn-primary">view Application</a></td>
<c:if test="${application.saveorsubmit}">
<td><a href="Edit_Application.html?appId=${application.id }&studentId=${param.sid} " class="btn btn-primary">Edit</a></td>
</c:if>
<!-- <br /> -->

</tr>
</c:forEach>
</table>
</div>
</form>
<p align="center">
<a href="../Student/stu_application.html?student_id=${param.sid}" class="btn btn-primary">Apply New Application</a>
</p>
</body>
</html>
