<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bank_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Style.css" rel="stylesheet" />
    <style="Style.css">
</style>
</head>
<body>
    <center><h1  style="color:powderblue">Welcome to SBI</h1></center>
     <form id="form1" runat="server">
        <section class="cover">
            <div>
                <asp:Image ID="Image1" ImageUrl="~/Images/Plant-Money.jpg" runat="server" />
                <div class="elements">
                    <div class="intro">
                        <asp:Label ID="Label1" runat="server" Text="login"></asp:Label>
 
                        <asp:TextBox ID="TextBox1" CssClass="txt2 txtstyle" placeholder="username" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                        
                        <asp:Button ID="Button1" CssClass="btn1 btnstyle" runat="server" Text="Login" OnClick = "Button1_Click1"/>
                        <asp:Button ID="Button2" CssClass="btn2 btnstyle" runat="server" Text="Registration" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
