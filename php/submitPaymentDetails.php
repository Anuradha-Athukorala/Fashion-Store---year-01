<?php
	include_once 'config.php';


?>
<?php
	$name = $_POST["nameOnCard"];
	$cardNo = $_POST["cardNumber"];
	$ExpMonth = $_POST["expMonth"];
	$ExpYear = $_POST["expYear"];
	$cvv = $_POST["cvvNumber"];
	

	$sql ="insert into payment(id ,name,card_no,Exp_month,Exp_year,cvv)values ('','$name','$cardNo','$ExpMonth','$ExpYear','$cvv')";
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