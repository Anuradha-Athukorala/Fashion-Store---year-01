function checkPassword(){
	if(document.getElementById("password").value != document.getElementById("cpassword").value){
		alert("Password not matched");
		return false;
	}
	else{
		alert("Registering successful");
		return true;
	}
}
function enablebutton(){
	if(document.getElementById("checkbtn").checked){
		document.getElementById("regbtn").disabled = false;
	}
	else{
		document.getElementById("regbtn").disabled = true;
	}
}