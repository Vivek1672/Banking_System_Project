<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="Bank_Management.Main_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBI Bank</title>
    <link href="Main_Page.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" rel="stylesheet" />

</head>
<body>  
    <center><h1 style="color:blue">State Bank Of India</h1></center>
    <form id="form1" runat="server">
        <section class="cover"> 
             
              <div class="elements">
                 <div class="intro">
                    <h1><center><b><i>Customer Application</i></b></h1>
                     <p><i>SBI will provide you great and satisfactory services. You always will be happy after being SBI happy customer.<br /><br />
                        We provide you better and best services in market.<br />
                        Please click below button to fill the SBI customer form.</i></p><br /><br /><br /><br />
                    <h2> <center><asp:HyperLink ID="HyperLink5" BackColor="yellow" runat="server" Text="Registration" NavigateUrl="~/Customer_Registration.aspx" >
                     </asp:HyperLink></center></h2> 
                 </div>
                  
                 <div class="intro">
                    
                 </div>
                  
                 <div class="intro">
                    <h1><center><b><i>View Customers</i></b></h1>
                     <p><i>You can now view all SBI Customers by one go.<br /><br />
                         You can update information, Closed the Account, Read the Data.<br /><br />
                        </i></p><br /><br /><br /><br />
                      <br/><br /> <br/> <h2><center><asp:HyperLink ID="HyperLink2" BackColor="yellow" runat="server" Text="Customers" NavigateUrl="~/ViewCustomers.aspx" >
                     </asp:HyperLink></center></h2> 
                 </div>
                  
                 <div class="intro">
                 </div>
                  
                 <div class="intro">
                    
                    <h1><center><b><i>Other Assistance</i></b></h1>
                     <p><i>You can register your Complaint here. SBI staff will provide you best service in the market.</i></p><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                     <h2><center><asp:HyperLink ID="HyperLink4" runat="server" BackColor="yellow" Text="Compaint" NavigateUrl="~/Subject_Registration.aspx" >
                     </asp:HyperLink></center></h2> 
                 </div>
              </div>     
        </section>
        
        <div id="middle">
                <div id="middle1" style="border:1px solid aqua">
                    <h1><center><b><i>Teller</i></b></h1>
                    <h3><p><i><b>Deposit Money, take any kind of Loan, Inquiry and collect information.<br />
                        State Bank of India have many more for you.
                              </b></i></p></h3> 
                    
                      <br/><br /> <br/> <h2><center><asp:HyperLink ID="HyperLink6" BackColor="yellow" runat="server" Text="Everything_4_You" NavigateUrl="~/Teller.aspx" >
                     </asp:HyperLink></center></h2> 
               </div>
            
                <div id="middle2">
                    <h1><center><b><i>Loan</i></b></h1> 
                    <h3><p><i><b> Home Loan Balance Transfer calculator allows you to calculate benefit of transferring your home loan from any bank to SBI.<br /><br />
                        Using this calculator, you can calculate your EMIs after switching the bank, amount that you save after switching the home loan to SBI and the amount you get after investing in recurring deposit after the balance transfer.
                        </b></i></p></h3> 
                    
                      <br/><br /> <br/> <h2><center><asp:HyperLink ID="HyperLink8" BackColor="yellow" runat="server" Text="Loan_Calculator" NavigateUrl="https://homeloans.sbi/calculators" >
                     </asp:HyperLink></center></h2> 
               </div>
         </div>
       
           <div id="term">
         <div id="term1">
<table>
<font color="white">
<h1>TERM AND SERVICES</h1>
<tr>
<h2>About Online School Policies</h2>
   <ul>
      <li>About Us</li><li>Culture</li><li>Blog</li><li>Careers</li><li>Contact</li>
   </ul></tr>
<tr>
 <h2>For Admission</h2>
  <ul>
     <li>New Admission</li><li>Claim your Seat</li><li>Business App</li><li>Business Owner Guidelines</li><li>Business Blog</li><li>Products for Businesses</li><li>Canteen Widgets</li>
  </ul>
</tr>
<tr>
 <h2>For Students</h2>
   <ul>
     <li>Code of Conduct</li><li>Community</li><li>Verified Users</li><li>Blogger Help</li><li>Developers</li><li>Mobile Apps</li>
   </ul>
 </tr>
   
  
</font>
</table>
 </div>
 <br><br><br><br>
   <div id="term2">
     <table>
     <font color="white">
        <tr>
 <h2>Countries</h2>
  <ul>
     <li>Australia</li><li>Brazil</li><li>India</li><li>South Africa</li><li>Italy</li><li>United States</li><li>United Kingdom</li>
  </ul>
</tr>
<br><br><br><br><br><br><br>
<h1>Privacy  Terms  API Policy  CSR  Security  SiteMap</h1>
<p>By continuing past this page, you agree to our Terms of Service, Cookie Policy, Privacy Policy and Content Policies.
    All trademarks are properties of their respective owners. © 2008-2018 - School Management™ Media Pvt Ltd. All rights reserved.
</p>
</font>
	</div>
</div>
    </form>
</body>
</html>
