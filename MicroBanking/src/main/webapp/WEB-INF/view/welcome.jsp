<!DOCTYPE html>
<html>
<head>
<title>WELCOME</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="https://pngimg.com/uploads/bank/bank_PNG26.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="http://example.com/favicon.png%22%3E">
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
<script type="text/javascript">
		
		$('.message a').click(function(){
			   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
			});
		
	</script>

</head>
<body class="w3-black">

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <a href="/createaccount" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>Create Account</p>
  </a>
  
  
  <a href="/depositform" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-user w3-xxlarge"></i>
    <p>Deposit</p>
  </a>
  <a href="/transamt" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>Transfer</p>
  </a>
  <a href="/withdrawform" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>Withdraw</p>
  </a>
    <a href="/listAccount" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>Account Records</p>
      </a>
    <a href="/listTransaction" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>Transaction Records</p>
  </a>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="/set-myaccount" class="w3-bar-item w3-button" style="width:25% !important">My Account</a>
    <a href="/depositform" class="w3-bar-item w3-button" style="width:25% !important">Deposit</a>
    <a href="/transamt" class="w3-bar-item w3-button" style="width:25% !important">Transfer</a>
    <a href="/withdrawform" class="w3-bar-item w3-button" style="width:25% !important">Withdraw</a>
    <a href="/transactionlog" class="w3-bar-item w3-button" style="width:25% !important">Transaction Logs</a>
  </div>
</div>

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small">Welcome</span> ${user.username} to Online Bank</h1>
    <p>Inspiring you to create a better tomorrow.</p>
    <img src="https://cdn.pixabay.com/photo/2021/06/27/14/42/money-6369029_1280.png" alt="boy" class="w3-image" width="992" height="1108">
  </header>
  </div>

   <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Me</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
      <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Carmona, Philippines</p>
      <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone: (+63) 955-699-3031</p>
      <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"> </i> Email: maulionshainamae@mail.com</p>
    </div><br>
    
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <p class="w3-medium">Powered by <a href="https://www.yourtango.com/sites/default/files/styles/header_slider/public/image_blog/unnamed_44.png?itok=2DmZHceM" target="_blank" class="w3-hover-text-green">Shaina Maulion</a></p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>