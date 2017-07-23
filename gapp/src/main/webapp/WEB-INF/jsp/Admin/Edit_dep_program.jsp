<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Edit/Add</title>
</head>
<body>
<h3>Name of Department</h3>
${dept.department_name}<br />

<form method="post">
<h3>Add Program</h3>
<input type="text" name="progName" />
<input type="submit" value="Add Program" />
</form><br />

<h3>Available Programs:</h3><br />

<table>

<c:forEach items="${dept.program}" var="program">
<tr><td>	${program.program_name}</td>
 <td><a href="Delete_prog.html?progid=${program.id}&deptid=${dept.id}">delete</a></td>
</tr>
 </c:forEach>
 </table>
 <h3>Add Other Feilds</h3>

<form method="post">
Other Field Name : <input type="text" name="OtherFeildName" /><br />
Other Field type :<br /> <input type="radio" name="OtherFeildType" value="String" />String<br />
                   <input type="radio" name="OtherFeildType" value="File" />File<br />
                   <input type="radio" name="OtherFeildType" value="Int" />Integer<br />
                   
Required/Optional : <br />
<input type="radio" name="RequiredOrNot" value="required" />Required<br />
<input type="radio" name="RequiredOrNot" value="optional" />optional<br />

<table>
<tr><th>
Available Other Fields:<br />
</th>
</tr>
<tr>
<td>Name</td><td>Type</td><td>RequiredOrNot</td>
</tr>


<c:forEach items="${dept.otherField}" var="program">
<tr>
<td>	${program.namefield}<br /></td>
<td>	${program.typefield}<br /></td>
<td>	${program.required}<br /></td>
 <td><a href="Delete_Otherfield.html?otherfield=${program.id}&deptid=${dept.id}">delete</a></td>
</tr>
</c:forEach>


</table>
<input type="submit" name="Add_Program" value="Add_Other_Feild" />
</form>
<a href="Admin_dep.html">Finish editing</a>
</body>
</html>