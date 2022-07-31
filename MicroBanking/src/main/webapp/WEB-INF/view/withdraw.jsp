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
	<br>How much do you want to withdraw?<br>
	<form:form action="savewithdrawform" method="post" modelAttribute="transaction">
	<table>

	
	<tr><td>  From Account<form:input path="fromAccount"/> </td>
	<td><form:errors path="fromAccount"/> </td></tr>
	
				
	<tr><td> withdraw amount: <form:input path="withdrawamt"/> </td>
	<td><form:errors path="withdrawamt"/> </td></tr>
	<tr><td colspan=2><input type="submit" value="save"> </td></tr>
		<tr><td >
				<a href="/welcome" class="btn">Back</a></td>
				</tr>
	</table>
	
	</form:form>
	
	
	</body>


</html>
