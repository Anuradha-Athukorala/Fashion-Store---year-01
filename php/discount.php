<?php

$sever="localhost";
$user="root";
$password="";
$database="unique fashion";

$con=mysqli_connect($server,$user,$password,$database);

$x=$_POST["email"];
$y=$_POST["mobile"];

$sql="insert into unique fashion (email,mobile)values('$x','$y');
$result=mysqli_query($con,$sql);


?>
