using System;

namespace Bank_Management
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string pass = TextBox2.Text;
            if (uname == "Admin" && pass == "12345")
            {
                Response.Redirect("Main_Page.aspx");
            }
            else
            {
                Response.Redirect("Please Enter the Correct Username or Password");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
    
}