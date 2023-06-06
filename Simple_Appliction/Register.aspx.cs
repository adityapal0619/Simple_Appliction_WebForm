using System;
using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Simple_Appliction
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1O208CS;Initial Catalog=Account;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            
       
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Home.aspx");
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Register(Name,Password) values('" + Username.Text + "','" + Password.Text + "') ", con);
            con.Open();
           if(String.IsNullOrEmpty(Password.Text) && String.IsNullOrEmpty(Username.Text) || (String.IsNullOrEmpty(Username.Text) || string.IsNullOrEmpty(Password.Text)))
            {
                
            }
            else
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Server.Transfer("Login.aspx");

                }
                catch(Exception ex) { 
                    
                }
               
            }
            
           
            con.Close();
        }

        
    }
}