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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Product"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            string productId = Request.QueryString["Product"];
            myconn.Open();
            string select = "Select Bid_price From Product where PId =" + productId;
            SqlCommand cmd = new SqlCommand(select, myconn);
            SqlDataReader reader = cmd.ExecuteReader();
            string bidPrice = null;
            while (reader.Read())
            {
                bidPrice = reader["Bid_price"].ToString();
            }
            myconn.Close();

            string bidderName = name.Text;
            string ins = "Insert into Participants (BId,PId,BidderName,BidAmount) " +
                    "values('" + Session["Bid"] + "','" + productId +"' , '" + bidderName +"' , '" + bidPrice +"')";
            SqlCommand cmd1 = new SqlCommand(ins, myconn);
            myconn.Open();
            int a = cmd1.ExecuteNonQuery();
            myconn.Close();
            if (a != 0)
            {
                Session["BidReg"] = "yes";
                Response.Redirect("~/ProductPanel.aspx?Category=" + Session["selectedCat"]);
            }
        }
    }
}