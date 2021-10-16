using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pid = Request.QueryString["Product"];
            string option = RadioButtonList1.SelectedValue;
            if(option == "Gpay")
            {
                Response.Redirect("~/Gpay.aspx?Product=" + pid);
            }
            else if(option == "Credit/Debit")
            {
                Response.Redirect("~/Credit.aspx?Product="+pid);
            }
        }
    }
}