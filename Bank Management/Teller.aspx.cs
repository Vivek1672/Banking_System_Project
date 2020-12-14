using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace Bank_Management
{
    public partial class Teller : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        ViewCustomers vc = new ViewCustomers();

        protected void Page_Load(object sender, EventArgs e)
        {

             con = new SqlConnection("Data Source=DESKTOP-ROB2GJS;Initial Catalog=SBI_Bank;Integrated Security=True");
             cmd = new SqlCommand();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand objcmd = new SqlCommand("UPDATE New_Customer SET Balance = CASE WHEN Balance IS NULL OR Balance = 0 THEN '" + TextBox2.Text + "' ELSE Balance + '" + TextBox2.Text + "' END WHERE ID ='" + TextBox1.Text + "'", con);
            objcmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(objcmd);
            TextBox1.Text = "";
            TextBox2.Text = "";
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_Registration.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand objcmd = new SqlCommand("DeleteRecord", con);
            objcmd.CommandText = "DeleteRecord";
            objcmd.CommandType = CommandType.StoredProcedure;
            objcmd.Parameters.AddWithValue("@ID", Convert.ToInt32(TextBox1.Text));
            SqlDataAdapter sda = new SqlDataAdapter(objcmd);
            {
                DataTable dt = new DataTable();
                objcmd.ExecuteNonQuery();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                TextBox1.Text = "";
                con.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Loan_Amount from New_customer where ID= '" + TextBox1.Text + "'", con);

            int result = cmd.ExecuteNonQuery();
           
            
                SqlCommand objcmd = new SqlCommand("UPDATE New_Customer SET Loan_Amount = CASE WHEN Loan_Amount IS NULL OR Loan_Amount = 0 THEN '" + TextBox2.Text + "' ELSE Loan_Amount END WHERE ID ='" + TextBox1.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(objcmd);
                objcmd.ExecuteNonQuery();
                ///MessageBox.Show("Loan Approved!!");
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            con.Close();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            {
                SqlCommand objcmd = new SqlCommand("SearchInfo", con);
               objcmd.CommandText = "SearchInfo";
                objcmd.CommandType = CommandType.StoredProcedure;
                objcmd.Parameters.AddWithValue("@ID",Convert.ToInt32(TextBox1.Text));
                objcmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(objcmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    objcmd.ExecuteNonQuery();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                    TextBox1.Text = "";
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand objcmd = new SqlCommand("UPDATE New_Customer SET ATM_Card = CASE WHEN ATM_Card IS NULL OR ATM_Card = 'Not Issued' THEN '" + TextBox2.Text + "' ELSE 'Issued' END WHERE ID= '" + TextBox1.Text + "'", con);
            objcmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            {
                SqlCommand objcmd = new SqlCommand("SELECT * from New_Customer", con);
                using (SqlDataAdapter sda = new SqlDataAdapter(objcmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    objcmd.ExecuteNonQuery();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    con.Close();
                }
            }
            }
        }
}