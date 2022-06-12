<?php
	include_once 'config.php';


?>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../css/style.css">

	<script type="text/javascript"></script>
	<script src="../js/script.js"></script>	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Unique Fashions</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/cartStyles.css">
	<style>
		body{
				background-image: url('../images/backgroundimage.jpg');
				background-size: cover;
		}
	</style>
</head>
<body>
<nav class="menu">
	<img src ="../images/logo.jpeg" width="200px" height="200px">
	<img class="loginimg"src="../images/login.png" width="100px" height="100px" align="right" align="top" >


		<ul>
			<li><a href="../html/index.html">Home</a></li>
			<li><a href="../html/Women.html">Women</a></li>
			<li><a href="../html/Men.html">Men</a></li>
			<li><a href="../html/cart.html">Cart</a></li>
			<li><a href="../html/wishlist.html">Wishlist</a></li>
			<li><a href="../html/About us.html">About Us</a></li>
			<li><a href="../html/cn.html">Contact Us</a></li>
		</ul>
		<a href="../html/login.html"><button class="loginbt">Login</button></a>


<form class="search-form">
	<input type="text" placeholder="Search">
	<button>Search</button>
</form>
</nav>

<div class="content">

	<center><h1>Customer Payment Details</h1></center>
<br>


<table border="1px" width="100%" id="tbl1" style="border:1px solid black">
	<tr>
		<th class="col1">Customer ID</th>
		<th class="col2">Name On Card</th>
		<th class="col3">Card Number</th>
		<th class="col4" >Expire Month</th>
		<th class="col5">Expire Year</th>
		<th class="col6">CVV Number</th>
	</tr>

<?php
	$sql = "select * from payment";
	$result = $conn->query($sql);

	if($result->num_rows>0){
		while($row = $result->fetch_assoc()){
			echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["card_no"]."</td><td>".$row["Exp_month"]."</td><td>".$row["Exp_year"]."</td><td>".$row["cvv"]."</td></tr>";
		}

	}
	else{
		echo " No Data";
	}
	echo "</table>";
	$conn->close();

?>




</div>



<div class="footer">
	<p align="center"><font color="7897A2">&copy Copyright @2020 All Rights Reserved</font></p>
	<center>
		<p style="font-style: sans-serif; font-size:20px;">About Us</p><br>
		Unique Fashion is a Global platform with millions of users.<br>Our ecommerce site offers many different styles that “combine heritage with modernity, simplicity<br> with playfulness, and street style with understated elegance

	</center>

<P style="margin-left:10px; "align="left">
	<i style="font-size:20px; margin-bottom: 2px;" class="fa">&#xf095;</i> 123-456-789<br>
	<i style="font-size:20px; margin-bottom: 2px;" class="fa">&#xf0e0;</i>info@uniquefashions.com
<br>

<img src="../images/payment.png" align="left" width="250px" height="50px" class="paymentImg" >
<a href="https://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a>
<a href="https://www.google.com/account/about/" class="fa fa-google"></a>
<a href="https://www.instagram.com/?hl=en" class="fa fa-instagram"></a>
	
</P>


	
</div>


</body>
</html>