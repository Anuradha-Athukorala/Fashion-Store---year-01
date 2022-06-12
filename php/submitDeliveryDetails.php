<?php
	include_once 'config.php';


?>
<?php
	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$mobile = $_POST["mobilenumber"];
	$email = $_POST["email"];
	$address = $_POST["address"];
	$city = $_POST["city"];
	$postalcode = $_POST["postalcode"];
	$Country = $_POST["country"];
	

	$sql ="insert into delivery(id ,first_name,last_name,mobile,email,address,city,postalcode,country)values ('','$fname','$lname','$mobile','$email','$address','$city','$postalcode','$Country')";
	if (mysqli_query($conn,$sql)){
		//redirect ot home page
		echo "<script>alert('Record inserted successfully!!!')</script>";
		header("Location:../html/index.html");
	}
	else{
		echo "<script>alert('Error while inserting Records!!!')</script>";
	}
	mysqli_close($conn);

?>