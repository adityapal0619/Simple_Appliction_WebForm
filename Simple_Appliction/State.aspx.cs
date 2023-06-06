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
    public partial class Country : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into State(StateName) values('" + TextBox1.Text + "') ", con);
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

       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Select * from State");
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

      
    }

}