using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class Company : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Country");
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Company(Id,CompanyName) values('" + TextBox2.Text + "','" + TextBox1.Text + "') ", con);
            con.Open();
            if (String.IsNullOrEmpty(TextBox1.Text))
            {

            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Server.TransferRequest(Request.Url.AbsolutePath, false);


                }
                catch (Exception ex)
                {

                }

            }
            con.Close();
        }

       

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
             con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Company where Id = '" +e.NewEditIndex + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt= new DataTable();
                da.Fill(dt);
                con.Close();
                   TextBox2.Text = dt.Rows[0]["Id"].ToString();
                    TextBox1.Text = dt.Rows[0]["CompanyName"].ToString();
              
        }
    }
}