using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string command = "Select Image,Name,Details,Bid_price,BidderName,BidAmount from Product,Result where Product.SId = '" + Session["Sid"] + "'" + " AND " + "Product.PId = Result.PId" + "" + " AND " + "Product.Sold = '" + 1+"'";
            SqlCommand cmd = new SqlCommand(command, myconn);
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            rdr.Close();
            myconn.Close();
        }
    }
}