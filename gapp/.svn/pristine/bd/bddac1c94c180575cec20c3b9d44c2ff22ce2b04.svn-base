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
<title>Edit Application</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#addDegree").click( function() {
		console.log("add degree");
		$('#degreeInfo').append("<div class='well'><table class='table table-striped'><tr><th>Name Of College:</th><td ><input type='text' name='college' style='margin-left:-15%'/></td>" +
									"<tr><th>Starting Year:</th><td><input type='text' name='start_year' style='margin-left:-15%'/></td>" +
									"<tr><th>Ending Year:</th><td><input type='text' name='end_year' style='margin-left:-15%'/></td>" +
									"<tr><th>Name of Degree:</th><td><select name='degree' style='margin-left:-15%'> "+
														"<option value='B.E'>Bachelor</option>"+
														"<option value='M.E'>Masters</option>"+
													"</select> <br />" +
									"<tr><th>Major:</th><td><input type='text' name='major' style='margin-left:-15%'/></td>"+
									"</tr></table><input type='button' name='removeDegree' id='removeDegree' value='Remove Degree' class='btn btn-danger'></div>")

    });

});
$(document).on("click", "#degreeInfo div #removeDegree", function(){
	console.log($("#degId").val());
	if ($("#degId").val()) {

		$.ajax({
			url : "removeDegree.html",
			type:"GET",
			cache:false,
			data : {"degId" : $("#degId").val() },
            success: function(data){

            }
		});
	}
	$(this).parent().remove();

});

</script>
</head>
<body>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
         <a class="navbar-brand" href="#" >GAPP</a>
       </div>
    <ul class="nav navbar-nav navbar-right">
      <li><h4>Edit Application</h4></li>

  </div>
  </nav>

<%-- <h4>Application Form</h4> --%>

<form method="post"  enctype="multipart/form-data" class="form-default">
  <div class=form-group>
          <table class="table table-striped">

<tr>
<th>Department:</th>
<td>  ${app.department.department_name}</td>
</tr>

<tr>
<th>Program:</th>
<td><select id="programSelect" name="prog">
<c:forEach items="${app.department.program}" var="pro">
<c:choose>
<c:when test="${pro.id eq app.program.id}">
<option value="${pro.id}" selected>${pro.program_name}</option>
</c:when>
<c:otherwise>
<option value="${pro.id}">${pro.program_name}</option>
</c:otherwise>
</c:choose>
</c:forEach>
</select></td><br />
</tr>

<tr>
<th>First Name:</th>
<td><input type="text" name="f_name" value="${app.first_name }"/></td>
</tr>

<tr>
<th>Last Name:</th>
<td><input type="text" name="l_name" value="${app.last_name }"/></td>
</tr>

<tr>
<th>Upload Transcript:</th>
<td><input  type="file" name="file1" /><!-- <br /> --></td>
</tr>

<tr>
<th>Citizenship:</th>
<td><input type="text" name="citizenship" value="${app.citizenship}" />
</tr>


<tr>
<td colspan="2">
<div id="degreeInfo">

<c:forEach items="${app.degree_uni}" var="univ">

<div class="well">

Name Of College:${univ.name_of_college}</br>

Starting Year:<c:if test="${univ.starting_year > 0 }">${univ.starting_year }</c:if><br />

Ending Year:<c:if test="${univ.end_year > 0 }">${univ.end_year}</c:if><br />
Name of Degree:${univ.name_of_degree }<br />
Major:${univ.major}<br />
<input type="hidden" id="degId" value="${univ.id }" />
<input type='button' name='removeDegree' id='removeDegree' value='Remove Degree' />
</div>
</c:forEach>

</div>
</td>
</tr>

<tr>
<th colspan="2"><input type="button" name="addDegree" id="addDegree" value="Add Degree" /></th>
</tr>
<tr>
<th>CIN:</th>
<c:if test="${app.CIN > 0 }">
<td><input type="text" name="cin" value="${app.CIN}"/></td>
</c:if>
<c:if test="${app.CIN eq 0 }">
<td><input type="text" name="cin" /></td>
</c:if>
</tr>

<tr>
<th>Phone Number:</th>
<c:if test="${app.phone_number > 0 }">
<td><input type="text" name="phone" value="${app.phone_number}"/></td>
</c:if>
<c:if test="${app.phone_number eq 0 }">
<td><input type="text" name="phone" /></td>
</c:if>
</tr>

<tr>
<th>Date:</th>
<td><input type="text" name="b_date" value="${app.birth_date}"/></td>
</tr>

<tr>
<th>GRE:</th>
<c:if test="${app.gre > 0 }">
<td><input type="text" name="gre" value="${app.gre}"/></td>
</c:if>
<c:if test="${app.gre eq 0 }">
<td><input type="text" name="gre" /></td>
</c:if>
</tr>

<tr>
<th>GPA:</th>
<c:if test="${app.gpa > 0 }">
<td><input type="text" name="gpa" value="${app.gpa}"/></td>
</c:if>
<c:if test="${app.gpa eq 0 }">
<td><input type="text" name="gpa" /></td>
</c:if>
</tr>

<tr>
<th>Gender:</th>
<td><select name="gender" >
<c:choose>
<c:when test="${app.gender eq 'Male'}">
<option value="Male" selected>Male</option>
<option value="Female">Female</option>
</c:when>
<c:otherwise>
<option value="Male">Male</option>
<option value="Female" selected>Female</option>
</c:otherwise>
</c:choose>

     </select></td>
</tr>

<tr>
<th>Term:</th>
<td><select name="term">
	<c:if test="${app.term_name eq 'Spring 2016'}">
       <option value="Spring 2016" selected>Spring 2016</option>
       <option value="Summer 2016">Summer 2016</option>
       <option value="Fall 2016">Fall 2016</option>
     	<option value="Winter 2017">Winter 2017</option>
     	<option value="Spring 2017">Spring 2017</option>
      </c:if>
      <c:if test="${app.term_name eq 'Summer 2016'}">
      <option value="Spring 2016">Spring 2016</option>
       <option value="Summer 2016" selected>Summer 2016</option>
       <option value="Fall 2016">Fall 2016</option>
     	<option value="Winter 2017">Winter 2017</option>
     	<option value="Spring 2017">Spring 2017</option>
      </c:if>
      <c:if test="${app.term_name eq 'Fall 2016'}">
      <option value="Spring 2016">Spring 2016</option>
       <option value="Summer 2016">Summer 2016</option>
       <option value="Fall 2016" selected>Fall 2016</option>
     	<option value="Winter 2017">Winter 2017</option>
     	<option value="Spring 2017">Spring 2017</option>
      </c:if>
      <c:if test="${app.term_name eq 'Winter 2017'}">
      <option value="Spring 2016">Spring 2016</option>
       <option value="Summer 2016">Summer 2016</option>
       <option value="Fall 2016">Fall 2016</option>
     	<option value="Winter 2017" selected>Winter 2017</option>
     	<option value="Spring 2017">Spring 2017</option>
      </c:if>
      <c:if test="${app.term_name eq 'Spring 2017'}">
      <option value="Spring 2016">Spring 2016</option>
       <option value="Summer 2016">Summer 2016</option>
       <option value="Fall 2016">Fall 2016</option>
     	<option value="Winter 2017">Winter 2017</option>
     	<option value="Spring 2017" selected>Spring 2017</option>
      </c:if>
     </select></td>
     
     </tr>

<tr>
<td align="center" colspan="2">
<input type ="submit" name="add" value="Save" class="btn btn-primary"/>
<input type ="submit" name="submit" value="Submit" class="btn btn-primary"/>
</td>
</tr>

</table>
</div>
</form>
</body>
</html>
