using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Register");
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void update1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[Register] Set[Name]='" + Username.Text + "',[Password]='" + password.Text + "'where [Id]='" + TextBox1.Text  + "'", con);
            con.Open();
            if (string.IsNullOrEmpty(Username.Text) && string.IsNullOrEmpty(password.Text) || (String.IsNullOrEmpty(Username.Text) || string.IsNullOrEmpty(password.Text)))
            { }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();

                    Label1.Text = "Succesfully";
                    this.Label1.ForeColor = Color.Red;
                    Server.TransferRequest(Request.Url.AbsolutePath, false);

                }
                catch (SqlException ex)
                {



                }
               
            }
            con.Close();
        }
    }
}