<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomers.aspx.cs" Inherits="Bank_Management.ViewCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Customer</title>     
<link href="ViewCustomer.css" rel="stylesheet" />
    <style type="text/css">
        .txtstyle {}
    </style>
</head>
<body>
     <center><h1  style="color:powderblue">Customers Inquiry</h1></center>
   
    <form id="form1" runat="server">
        <div>
             <asp:TextBox ID="TextBox1" CssClass="txt1 txtstyle" placeholder="ID" runat="server" Height="16px" Width="216px"></asp:TextBox>
              <br />         
            <asp:Button ID="Button3" CssClass="btn1 btnstyle" runat="server" Text="Search" OnClick="Button3_Click" />
             <asp:Button ID="Button4" CssClass="btn2 btnstyle" runat="server" Text="Edit" OnClick="Button4_Click" CommandName="Edit"/>
             <asp:Button ID="Button5" CssClass="btn2 btnstyle" runat="server" Text="Delete" OnClick="Button5_Click" />
            
             <asp:Button ID="Button7" CssClass="btn2 btnstyle" runat="server" Text="Add New" OnClick="Button7_Click" />
             <asp:Button ID="Button6" CssClass="btn2 btnstyle" runat="server" Text="Back" OnClick="Button6_Click" /><br /><br />

             <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FFF1D4" />
                 <SortedAscendingHeaderStyle BackColor="#B95C30" />
                 <SortedDescendingCellStyle BackColor="#F1E5CE" />
                 <SortedDescendingHeaderStyle BackColor="#93451F" />
             </asp:GridView>
             <br /><br />

        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Account_No" HeaderText="Account_No" ReadOnly="True" SortExpression="Account_No" />
                <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" ReadOnly="True" SortExpression="Balance" />
                <asp:BoundField DataField="Loan_Amount" HeaderText="Loan_Amount" ReadOnly="True" SortExpression="Loan_Amount" />
                <asp:BoundField DataField="Account_Type" HeaderText="Account_Type" ReadOnly="True" SortExpression="Account_Type" />
                <asp:BoundField DataField="ATM_Card" HeaderText="ATM_Card" ReadOnly="True" SortExpression="ATM_Card" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SBI_BankConnectionString %>" DeleteCommand="DELETE FROM [New_Customer] WHERE [ID] = @ID" SelectCommand="SELECT * FROM [New_Customer]" UpdateCommand="UPDATE [New_Customer] SET [Name] = @Name, [Address] = @Address, [Email] = @Email, [Phone_No] = @Phone_No WHERE [ID] = @ID">
          
        </asp:SqlDataSource>
    </form>
</body>
</html>
