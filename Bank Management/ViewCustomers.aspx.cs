using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Bank_Management
{
    public partial class ViewCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GeneralInquiry();
        }

        public void GeneralInquiry()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-ROB2GJS;Initial Catalog=SBI_Bank;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
                {
                    string sql = "SELECT * FROM New_Customer where ID='"+TextBox1.Text+"'";
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                         DataTable dt = new DataTable();
                         sda.Fill(dt);
                         cmd.ExecuteNonQuery();
                         GridView1.DataSource = dt;
                         GridView1.DataBind();
                   // GridView1.BackColor = "green";
                    
                    con.Close();
                    TextBox1.Text = "";
                    }
                }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowUpdating(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ClosedAccount();
        }

        public void ClosedAccount()
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-ROB2GJS;Initial Catalog=SBI_Bank;Integrated Security=True");
            con.Open();
            //SqlCommand cmd = new SqlCommand();
            SqlCommand objcmd = new SqlCommand("Delete from New_Customer Where ID='" +TextBox1.Text + "'", con);
            objcmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(objcmd);
            {
                DataTable dt = new DataTable();
                //sda.Fill(dt);
                objcmd.ExecuteNonQuery();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
                TextBox1.Text = "";
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
           GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
           /// ChangeDetails();
        }

        private void ChangeDetails()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-ROB2GJS;Initial Catalog=SBI_Bank;Integrated Security=True");
            con.Open();

           string sql= "UPDATE [New_Customer] SET [Name] = @Name, [Address] = @Address, [Email] = @Email, [Phone_No] = @Phone_No WHERE [ID] ='" + TextBox1.Text + "' ";
           
            string ss = "Update New_Customer  where ID='" + TextBox1.Text + "'";
            SqlCommand objcmd = new SqlCommand(ss, con);
            objcmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(objcmd);
            {
                DataTable dt = new DataTable();
                //sda.Fill(dt);
                objcmd.ExecuteNonQuery();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Page.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_Registration.aspx");
        }
    }
}