<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>

<html>
<head>
<title>CREATE ACCOUNT</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="https://pngimg.com/uploads/bank/bank_PNG26.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
</head>
<body class="w3-black">
	<h3>Add account:<h3>
   	<form:form action="/saveaccount" method="post" modelAttribute="account">
	<table>
	
	<!-- Insert Username and Password here -->
	 <tr>
		<td >UserName: <form:input path="username"/>
			<form:errors path="username" cssClass="error"/></td>
	</tr>
	<tr>
		<td >Password: <form:input path="password"/></td>
		<td><form:errors path="password" cssClass="error"/></td>
	</tr>
	 
	
	<tr><td> Account Number <form:input path="accno"/> </td>
	<td><form:errors path="accno" cssClass="error"/> </td></tr>

	<tr><td> Account Type <form:input path="accType"/> </td>
	<td><form:errors path="accType"/> 
	
	<select name="accType">
	<option>Saving Account</option>
	<option>Current Account</option>
	<option>IRA Account</option>
	</select>
	</td></tr>

	<tr><td> Account Holder Name <form:input path="accholdername"/> </td>
	<td><form:errors path="accholdername" cssClass="error" /> </td></tr>
	

	<%Date currentDate=new Date();
		SimpleDateFormat simple=new SimpleDateFormat("dd/MM/yyyy");
		%>
	<tr><td> Account OpenDate <form:input   path="opendate" value="<%=simple.format(currentDate)%>" disabled="true"/> </td>
	<td><form:errors path="opendate" cssClass="error" /> </td></tr>
	
	<tr><td> Account Balance <form:input path="accBalance"/> </td>
	<td><form:errors path="accBalance" cssClass="error"/> </td></tr>
	
		<tr><td> Mobile <form:input path="mobile" /> </td>
	<td><form:errors path="mobile" cssClass="error" /> </td></tr>


	
	<tr><td colspan=2><input type="submit" value="save"> </td></tr>
	
		<tr><td >
				<a href="/welcome" class="btn">Back</a></td>
				</tr>
	</table>
	<form:errors path="*" cssClass="error"></form:errors>
	</form:form >
  <!-- End Contact Section -->


<!-- END PAGE CONTENT -->


</body>
</html>