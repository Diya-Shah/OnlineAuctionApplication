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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            int val = (int)Session["login"];
            if (val == 1)
            {
                Label1.Text = "Admin";
            }
            else if (val == 2)
            {
                Label1.Text = "Seller";
            }
            else
            {
                Label1.Text = "Bidder";
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int val = (int)Session["login"];

            SqlConnection myconn = new SqlConnection(strcon);

            if (val == 1)
            {
                string command = "Select count(*) from Admin where " +
                "Email = '" + email.Text + "'" + " AND " + "Password = '" + passwd.Text + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                myconn.Open();
                int fetch = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                myconn.Close();
                if (fetch == 1)
                {
                    Response.Redirect("AdminPanel.aspx");
                }
                else
                {
                    Label4.Text = "Invalid Email/Password.";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }

            }
            else if (val == 2)
            {
                string command = "Select count(*) from Seller where " +
                "Email = '" + email.Text + "'" + " AND " + "Password = '" + passwd.Text + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                myconn.Open();
                int fetch = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                myconn.Close();
                if (fetch == 1)
                {
                    string select = "Select SId from Seller where " +
                "Email = '" + email.Text + "'" + " AND " + "Password = '" + passwd.Text + "'";
                    SqlCommand slt = new SqlCommand(select, myconn);
                    myconn.Open();
                    int result = Convert.ToInt32(slt.ExecuteScalar().ToString());
                    Session["Sid"] = Convert.ToInt32(result);
                    myconn.Close();
                    Response.Redirect("SellerPanel.aspx");

                }
                else
                {
                    Label4.Text = "Invalid Email/Password.";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                string command = "Select count(*) from Bidder where " +
                    "Email = '" + email.Text + "'" + " AND " + "Password = '" + passwd.Text + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                myconn.Open();
                int fetch = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                myconn.Close();
                if (fetch == 1)
                {
                    string select = "Select BId from Bidder where " +
                "Email = '" + email.Text + "'" + " AND " + "Password = '" + passwd.Text + "'";
                    SqlCommand slt = new SqlCommand(select, myconn);
                    myconn.Open();
                    int result = Convert.ToInt32(slt.ExecuteScalar().ToString());
                    Session["Bid"] = result;
                    myconn.Close();
                    Response.Redirect("BidderPanel.aspx");

                }
                else
                {
                    Label4.Text = "Invalid Email/Password.";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}