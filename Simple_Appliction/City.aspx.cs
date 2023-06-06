using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class City : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from City",con);
            con.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();
            con.Close();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into City(CityName) values('" + TextBox1.Text + "') ", con);
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
    }
}