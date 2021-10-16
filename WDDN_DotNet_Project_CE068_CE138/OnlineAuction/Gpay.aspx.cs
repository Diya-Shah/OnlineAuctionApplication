using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = Request.QueryString["Product"];
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string select = "Select BidAmount From Result where PId ='" + pid+"'";
            SqlCommand cmd = new SqlCommand(select, myconn);
            SqlDataReader reader = cmd.ExecuteReader();
            string amount = null;
            while (reader.Read())
            {
                amount = reader["BidAmount"].ToString();
            }
            myconn.Close();
            Label3.Text = "Amount : " + amount + " ₹";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pid = Request.QueryString["Product"];
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string command = "Update Result SET Payment= '1' where PId= '" + pid + "'";
            SqlCommand cmd1 = new SqlCommand(command, myconn);
            int b = cmd1.ExecuteNonQuery();
            myconn.Close();
            Response.Redirect("~/PaymentSuccess.aspx");

        }
    }
}