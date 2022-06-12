<?php
	include_once 'config.php';

?>
<?php

	$username = $_POST['username'];
	$Password = $_POST['password'];
	
	$Password = password_hash($Password, PASSWORD_BCRYPT);


	$sql ="insert into loggeduser(id,userNameOrEmail,Password)values ('','$username','$Password')";
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