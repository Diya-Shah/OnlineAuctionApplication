using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace OnlineAuction
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "select")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                string name = GridView1.Rows[count].Cells[0].Text;
                Session["selectedCat"] = name;
                Response.Redirect("~/ProductPanel.aspx?Category=" + name);

            }
        }
    }
}