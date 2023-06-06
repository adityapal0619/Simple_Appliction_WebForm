using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simple_Appliction
{
    public partial class Dash : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void List_Click(object sender, EventArgs e)
        {
            Server.Transfer("Gridbox.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }
    }
}