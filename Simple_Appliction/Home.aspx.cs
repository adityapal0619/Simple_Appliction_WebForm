using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }
    }
}