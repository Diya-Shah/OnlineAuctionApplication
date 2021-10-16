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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            int val = (int)Session["login"];

            SqlConnection myconn = new SqlConnection(strcon);
            if (val == 2)
            {
                string ins = "Insert into Seller (Name,Gender,Email,Password,Contact_no) " +
                    "values('" + name.Text + "','" + RadioButtonList1.SelectedValue + "' , '" + email.Text + "','" + passwd.Text + "' , '" + contact.Text + "')";
                SqlCommand cmd = new SqlCommand(ins, myconn);
                myconn.Open();
                int a = cmd.ExecuteNonQuery();
                if (a != 0)
                {
                    Response.Redirect("login.aspx");
                }
                myconn.Close();
            }
            else if (val == 3)
            {
                string ins = "Insert into Bidder (Name,Gender,Email,Password,Contact_no) " +
                    "values('" + name.Text + "','" + RadioButtonList1.SelectedValue + "' , '" + email.Text + "','" + passwd.Text + "' , '" + contact.Text + "')";
                SqlCommand cmd = new SqlCommand(ins, myconn);
                myconn.Open();
                int a = cmd.ExecuteNonQuery();
                if (a != 0)
                {
                    Response.Redirect("login.aspx");
                }
                myconn.Close();
            }

        }
    }
}