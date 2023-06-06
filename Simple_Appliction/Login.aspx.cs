using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class Success : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            if (String.IsNullOrEmpty(password.Text) && String.IsNullOrEmpty(Username.Text) || (String.IsNullOrEmpty(Username.Text) || string.IsNullOrEmpty(password.Text)))
            {
                if (String.IsNullOrEmpty(password.Text) && String.IsNullOrEmpty(Username.Text))
                {
                    user.Text = "Invalid username ";
                    this.user.ForeColor = Color.Red;
                    pass.Text = "Invalid  password";
                    this.pass.ForeColor = Color.Red;
                }
                else
                {
                    if(String.IsNullOrEmpty(password.Text))
                    {
                        Label1.Text = "";
                       user.Text = " ";
                        pass.Text = "Enter  password";
                        this.pass.ForeColor = Color.Red;
                    }
                    else
                    {
                        pass.Text = "";
                        Label1.Text = "";
                       user.Text = "Enter username ";
                        this.user.ForeColor = Color.Red;
                    }
                }


            }
            else
            {
                string uid = Username.Text;
                string passs = password.Text;
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Register where Name='" + uid + "' and Password='" + passs + "'", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                try
                {
                    if (sdr.Read())
                    {

                        Server.Transfer("WebForm2.aspx");
                    }
                    else
                    {
                        pass.Text = "";
                        Label1.Text = "Invalid username or password";
                        this.Label1.ForeColor = Color.Red;

                    }
                }
                catch(Exception ex)
                {
                    password.Text += ex.Message;
                }
               

            }
            con.Close();
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Username.Text = "";
            password.Text = "";
        }

       
       
    }
}