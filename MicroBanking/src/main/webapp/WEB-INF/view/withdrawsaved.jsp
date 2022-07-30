<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>


<title> Creating Account Success</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css" >
		.error{color:Red;}
		.navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }

</style>
	
	</head>
<body>


<h1> Withdraw amount </h1>
<h1> ${transaction}</h1>

	<div><input type="button" value="Back" onclick="goToBackWelcome()" style="color: red;"></div>
	
	
	<script type="text/javascript">
		function goToBackWelcome(){
			window.location.href="/welcome";
		}
	</script>
    
   
</body>
<ul class="nav navbar-nav navbar-right">
     <!--<li class="active"><a href="/login?logout"> LOGOUT</a></li>  -->   
        </ul>   
        

  

</html>
