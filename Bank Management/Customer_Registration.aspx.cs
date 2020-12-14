using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace Bank_Management
{
    public partial class Customer_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Page.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            OpenAccount();
        }

        private void OpenAccount()
        {
            int loan = 0;
            string type = "Null";
            string atm = "Not Issued";
            int balance = 0;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-ROB2GJS;Initial Catalog=SBI_Bank;Integrated Security=True");
            string insert = "insert into New_Customer (ID,Name,Address,Email,Account_No,Phone_No,Balance,Loan_Amount,Account_Type,ATM_Card) values ('" + TextBox4.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + balance + "','" + loan + "','" + TextBox7.Text + "','" + atm + "')";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(insert, con);
                int m = cmd.ExecuteNonQuery();
                if (m > 0)
                    MessageBox.Show("Row inserted!!");

            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR:  !!" + ex.Message);
            }
            con.Close();
            Clear();
        }

        private void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}