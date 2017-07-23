<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Application</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#deptSelect').change(
					function() {
						$.ajax({
							url : "ajax.html",
							type : "GET",

							cache : false,
							data : {
								"deptId" : $(this).val()
							},
							success : function(data) {
								$('#programSelect').empty();
								
								
								 for (var i = 0; i < data.length; ++i) {
									var program = data[i];
									console.log(" Program "
											+ program.program_name);
									$('#programSelect').append(
											"<option value=\"" + program.id + "\">"
													+ program.program_name
													+ "</option>");
								}
							}
						});

					});
			$("#addDegree")
					.click(
							function() {
								console.log("add degree");
								$('#degreeInfo')
										.append(
												"<div class='well' style='margin-left:-45%'><table class='table table-striped'><tr><th>Name Of College:</th><td style='margin-left: -21%'><input type='text' name='college' style='margin-left:-15%'/></td></tr>"
														+ "<tr><th>Starting Year:</th><td style='margin-left: -21%'><input type='text' name='start_year' style='margin-left:-15%'/></td></tr>"
														+ "<tr><th>Ending Year:</th><td style='margin-left: -21%'><input type='text' name='end_year' style='margin-left:-15%'/></td></tr>"
														+ "<tr><th>Name of Degree:</th><td style='margin-left: -21%'><select name='degree' style='margin-left:-15%'> "
														+ "<option value='B.E'>Bachelor</option>"
														+ "<option value='M.E'>Masters</option>"
														+ "</select></td></tr>"
														+ "<tr><th>Major:</th><td style='margin-left: -21%'><input type='text' name='major' style='margin-left:-15%'/></td></tr></table>"
														+ "<input type='button' name='removeDegree' id='removeDegree' value='Remove Degree' class='btn btn-danger' /></div>")

							});

		});
		$(document).on("click", "#degreeInfo div #removeDegree", function() {
			$(this).parent().remove();

		});
	</script>
</head>

<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">GAPP</a>
		</div>
	</div>
	</nav>



	<form method="post" enctype="multipart/form-data" class="form-default">
		<div class="form-group">
			<h1 align="center">Application Form</h1>
			<table class="table table-striped">

				<tr>

					<th>Department:</th>

					<td><select id="deptSelect" name="dept" required>
							<option value=""></option>
							<c:forEach items="${dept}" var="q">
								<option value="${q.id}">${q.department_name}</option>
							</c:forEach>

					</select></td>
					<!-- <br /> -->
				</tr>
					<tr>
						<th>Program:</th>
						<td>
						<select id="programSelect" name="prog">

						</select>
						</td>
					</tr>
					<tr>
						<td><div id="Otherfield"></div></td>
					</tr>
					
					
					<!-- <br /> --> 
					<tr>
					<th>First Name:</th>
					<td><input type="text" name="f_name" /></td> 
					</tr><!-- <br/> -->
					
					<tr>
					<th>Last Name:</th>
					<td><input type="text" name="l_name" /></td> 
					</tr><!-- <br/> -->
					
					<tr>
					<th>Upload Transcript:</th>
					<td><input type="file" name="file1" /></td>
					</tr><!-- <br/> --> 
					
					<tr>
					<th>Citizenship:</th>
					<td><input type="text" name="citizenship" /></td> 
					</tr><!-- <br /> -->
					
					<tr> 
					<th>Name Of College:</th>
					<td><input type="text" name="college" /></td>
					</tr><!-- <br /> -->
					 
					 <tr>
					<th>Starting Year:</th>
					<td><input type="text" name="start_year" /></td>
					</tr><!-- <br /> --> 
					
					<tr>
					<th>Ending Year:</th>
					<td><input type="text" name="end_year" /></td>
					</tr><!-- <br />  -->
					
					<tr>
					<th>Name of Degree:</th>
					<td><select name="degree">
						<option value="B.E">Bachelor</option>
						<option value="M.E">Masters</option>
					</select></td>
					</tr><!-- <br /> --> 
					
					<tr>
					<th>Major:</th>
					<td><input type="text" name="major" /><br />
					
					<div id="degreeInfo"></div>
					<input type="button" name="addDegree" id="addDegree"
						value="Add Degree" class="btn btn-default" /><br /></td>
					</tr>
					
					<!-- <br /> -->
					
					
					
					 
					<!-- <br/> -->	
					<tr>
					<th>CIN:</th>
					<td><input type="text" name="cin" /></td>
					</tr><!-- <br /> --> 
					
					<tr>
					<th>Phone Number:</th>
					<td><input type="text" name="phone" /></td>
					</tr><!-- <br />  -->
					
					<tr>
					<th>Date:</th>
					<td><input type="text" name="b_date" /></td>
					</tr><!-- <br /> --> 
					
					<tr>
					<th>GRE:</th>
					<td><input type="text" name="gre" /></td>
					</tr><!-- <br />  -->
					
					<tr>
					<th>GPA:</th>
					<td><input type="text" name="gpa" /></td>
					</tr><!-- <br />  -->
					
					<tr>
					<th>Gender:</th>
					<td><select name="gender">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select></td>
					</tr><!-- <br />  -->
					
					<tr>
					<th>Term:</th>
					<td><select name="term">
						<option value="Spring 2016">Spring 2016</option>
						<option value="Summer 2016">Summer 2016</option>
						<option value="Fall 2016">Fall 2016</option>
						<option value="Winter 2017">Winter 2017</option>
						<option value="Spring 2017">Spring 2017</option>
					</select></td>
					</tr><!-- <br /> -->
						
					<tr>
					<td align="center" colspan="2">
					<input type="submit" name="add" value="Save" class="btn btn-primary" />
					<input type="submit" name="submit" value="Submit" class="btn btn-primary" />
					<input type="reset" class="btn btn-danger" value="Reset" />
					</td>
					</tr>
			</table>
		</div>
	</form>


</body>
</html>
