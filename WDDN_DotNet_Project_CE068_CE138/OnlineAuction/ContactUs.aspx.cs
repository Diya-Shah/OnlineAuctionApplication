using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Please Enter Your Query OR Suggestions Here!!!";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (name.Text != null && email.Text != null && query.Text != null)
            {
                Label1.Text = "Your Query OR Suggestion Is Considered!!!";
            }
     
        }
    }
}