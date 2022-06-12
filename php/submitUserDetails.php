<?php
	include_once 'config.php';


?>
<?php
	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$gender = $_POST["Gender"];
	$mobile = $_POST["mobile"];
	$email = $_POST["mail"];
	$pwd = $_POST["password"];
	$addressln1 = $_POST["line1"];
	$postalCode = $_POST["Postal"];
	$District = $_POST["District"];
	$Country = $_POST["country"];
	
	$pwd = password_hash($pwd, PASSWORD_BCRYPT);


	$sql ="insert into customer(customer_id,first_name,last_name,gender,mobile,email,password,line_1,postal_code,district,country)values ('','$fname','$lname','$gender','$mobile','$email','$pwd','$addressln1','$postalCode','$District','$Country')";
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