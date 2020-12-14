<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Registration.aspx.cs" Inherits="Bank_Management.Customer_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Registration</title>
<link href="Style.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" rel="stylesheet" />
<style="Style.css">
</style>
    <script src="Validation.js" type="text/javascript">    
</script>
</head>
<body>
    <center><h1  style="color:powderblue">New Customer Registration</h1></center>
     <form id="form1" runat="server">
        <section class="registration">
            <div>
                <asp:Image ID="Image2" ImageUrl="~/Images/SBI_Building.jpg" runat="server" />
                <div class="register_1">
                    <div class="register">
                        <asp:Label ID="Label3" runat="server" Text="Register"></asp:Label>
 
                        <asp:TextBox ID="TextBox1" CssClass="txt1 txtstyle" placeholder="Full Name" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt1 txtstyle" placeholder="Email ID" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" CssClass="txt1 txtstyle" placeholder="Address" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" CssClass="txt1 txtstyle" placeholder="ID" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" CssClass="txt1 txtstyle" placeholder="Account_No" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" CssClass="txt1 txtstyle" placeholder="Phone_No" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox7" CssClass="txt1 txtstyle" placeholder="Account_Type" runat="server"></asp:TextBox>
                                                
                        <asp:Button ID="Button3" CssClass="btn1 btnstyle" runat="server" Text="Register"  OnClientClick="return userValid();" OnClick="Button3_Click" />
                         <asp:Button ID="Button4" CssClass="btn2 btnstyle" runat="server" Text="Reset" OnClick="Button4_Click" />
                        <asp:Button ID="Button5" CssClass="btn2 btnstyle" runat="server" Text="Cancel" OnClick="Button5_Click" />

                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
