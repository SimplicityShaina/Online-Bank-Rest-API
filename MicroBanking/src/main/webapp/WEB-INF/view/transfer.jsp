<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>

<html>
<head>
<title>TRANSFER</title>
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
	<br>Transfer Money<br>
	<!-- <a href="/login?logout"> Logout</a>  -->
	<form:form action="savetrans" method="post" modelAttribute="transaction">
	<table>

	<tr><td> ID <form:input path="id"/> </td>
	<td><form:errors path="id"/> </td></tr>
	
	<tr><td> Account from <form:input path="fromAccount"/> </td>
	<td><form:errors path="fromAccount"/> </td></tr>
	
	<tr><td> Account to  <form:input path="toAccount"/> </td>
	<td><form:errors path="toAccount"/> </td></tr>
	
	
	<tr><td>  Date <form:input   path="txdate"/> </td>
	<td><form:errors path="txdate"/> </td></tr>
	
	<tr><td> Comments <form:input path="comments"/> </td>
	<td><form:errors path="comments"/> </td></tr>
	
		
	<tr><td> amount transfer <form:input path="amounttx"/> </td>
	<td><form:errors path="amounttx"/> </td></tr>
	
	
	
	<tr><td colspan=2><input type="submit" value="save"> </td></tr>
	<tr><td >
				<a href="/welcome" class="btn">Back</a></td>
				</tr>
	</table>
	
	</form:form>
	
	
	</body>


</html>
