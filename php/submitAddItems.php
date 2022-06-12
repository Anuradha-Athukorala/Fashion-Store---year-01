<?php
	include_once 'config.php';


?>
<?php
	$name = $_POST["field1"];
	$code = $_POST["field2"];
	$price = $_POST["field3"];
	$size = $_POST["field4"];
	$qty = $_POST["field5"];
	$des = $_POST["field6"];


	$sql ="insert into item(Item_id,Item_code,Item_name,Item_description,Item_size,Price,Quantity)values ('','$code','$name','$des','$size','$price','$qty')";
	if (mysqli_query($conn,$sql)){
		//redirect ot home page
		echo "<script>alert('Record inserted successfully!!!')</script>";
		header("Location:viewItems.php");
	}
	else{
		echo "<script>alert('Error while inserting Records!!!')</script>";
	}
	mysqli_close($conn);

?>