using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["login"] = 1;
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["login"] = 2;
            Response.Redirect("login.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["login"] = 3;
            Response.Redirect("login.aspx");
        }
    }
}