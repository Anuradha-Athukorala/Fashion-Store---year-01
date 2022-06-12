function validateForm(){

	var a = document.forms["CheckoutForm"]["fname"].value;
	var b = document.forms["CheckoutForm"]["lname"].value;
	var c = document.forms["CheckoutForm"]["mobilenumber"].value;
	var d = document.forms["CheckoutForm"]["email"].value;
	var e = document.forms["CheckoutForm"]["address"].value;
	var f = document.forms["CheckoutForm"]["city"].value;
	var g = document.forms["CheckoutForm"]["postalcode"].value;
	var h = document.forms["CheckoutForm"]["country"].value;

	if (a == "" || a == null || b == "" || b == null || c =="" || c == null || d =="" || d == null ||
	 e == "" || e == null || f == "" || f == null || g == "" || g == null || h == "----------------------------------------------------Select-------------------------------------------------------" ||
	  h == null) {

		alert("Some fields are empty");
    	return false;

	}
}

function checkDetails(){

	var in1 = document.forms["paymentForm"]["nameOnCard"].value;
	var in2 = document.forms["paymentForm"]["cardNumber"].value;
	var in3 = document.forms["paymentForm"]["expMonth"].value;
	var in4 = document.forms["paymentForm"]["cvvNumber"].value;

	if (in1 == "" || in1 == null || in2 == "" || in2 == null || in3 =="" || in3 == null || in4 =="" || in4 == null ) {

		alert("Some fields are empty");
    	return false;

	}
}

function confirmAlert(){
	var response = confirm("Do you want to confirm payment details");
}

