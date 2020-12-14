function userValid() {
    var Name, ID, address, EmailId, Account,Phone, Type;
    Name = document.getElementById("TextBox1").value;
    EmailId = document.getElementById("TextBox2").value;
    address = document.getElementById("TextBox3").value;
    ID = document.getElementById("TextBox4").value;
    Account = document.getElementById("TextBox5").value;
    Phone = document.getElementById("TextBox6").value;
    Type = document.getElementById("TextBox7").value;


    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id    
    if (Name == '' && ID == 0 && address == '' && password == '' && EmailId == '') {
        alert("Enter All Fields");
        return false;
    }
    if (Name == '') {
        alert("Please Enter your Name");
        return false;
    }
    if (ID == 0) {
        alert("Please enter ID");
        return false;
    }
    if (address == '') {
        alert("Please Enter your address");
        return false;
    }
    if (password == '') {
        alert("Please Enter the Mandatory field");
        return false;
    }
    if (password != '' && cnfpass == '') {
        alert("Please Confirm password");
        return false;
    }
    if (password != cnfpass) {
        alert("Password Not Matched");
        return false;
    }
    if (EmailId == '') {
        alert("Email Id Is Required");
        return false;
    }
    if (EmailId != '') {
        if (!EmailId.match(emailExp))   
    {
            alert("Invalid Email Id");
            return false;
        }
    }
    if (Account == '') {
        alert("Please enter account number");
        return false;
    }
    if (Phone == '') {
        alert("Please enter phone number");
        return false;
    }
    if (Type == '') {
        alert("Please enter valid account type");
        return false;
    }

    return true;
}