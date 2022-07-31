
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  	  <meta name="csrf-param" content="authenticity_token" />
      <meta name="csrf-token" content="Mn+ohv46xsr0GK3z/0d82DcWyT4jV22gaEpLHAJL4yOukhdLt/K5eHLdoBCF8gYPWyOrpPV8AvI1xxIVFcoO7Q==" />
  
    <title>REGISTER</title>
 	<link rel="icon" href="https://pngimg.com/uploads/bank/bank_PNG26.png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
   
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}

.Font{
	font-family: 'Poppins',sans-serif;
    color: #ffffff;
}
.space{
	width: 325px;
}

.redError{
	font-family: 'Poppins',sans-serif;
    color: red;
}
.error{
	color:Red;
}
	
    </style>
</head>
<body>

	<div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>  
    	<form:form action="register" method="get" modelAttribute="user">
		<table>
			<tr>
				<th><h1>Register</h1></th>
			</tr>

			<tr><td> UserName: <form:input class= "space" path="username"/> </td></tr>
				<td colspan="5"><form:errors path="username" class= "redError" cssClass="error"/> </td>
		
			<tr><td> Password:  <form:input class= "space" path="password"/> </td> </tr>
				<td><form:errors path="password"/> </td>
		
			<tr><td colspan=2><input type="submit" value="submit"> </td></tr>
		</table>
			<form:errors path="*" class= "redError" cssClass="error"></form:errors>
		</form:form >
		
	
	</body>


</html>