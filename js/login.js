function validateForm()
    {
    var a = document.forms["checkbox"]["user"].value;
    var b = document.forms["checkbox"]["password"].value;
    if (a==null || a==""|| b==null || b=="")
      {
      alert("Please Fill All Required Field");
      return false;
      }
    }