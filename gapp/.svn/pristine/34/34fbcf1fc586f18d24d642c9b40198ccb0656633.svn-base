<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

</head>
<body>


<h3>Name of the Department :</h3></b><br/> ${Department.department_name}

<h3>Name of the Department Programs :</h3><br/>
<c:forEach items="${Department.program}" var="name">
${name.program_name}<br/>

</c:forEach>

<h3>Name of the Department Other Field :</h3><br/>
<table border=1>
<tr>
<td>Name</td><td>Type</td><td>RequiredOrNot</td>
</tr>
<c:forEach items="${Department.otherField}" var="name">
<tr>

<td>	${name.namefield}<br /></td>
<td>	${name.typefield}<br /></td>
<td>	${name.required}<br /></td>
</tr>
</c:forEach>
</table>

<a href="Admin_dep.html">back</a>
</body>
</html>