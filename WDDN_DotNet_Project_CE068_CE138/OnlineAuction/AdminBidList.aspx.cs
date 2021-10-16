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
    public partial class WebForm21 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string find = "Select BidderName,BidAmount,Product.Name,Details,Image,Bid_price From Result,Product where Product.PId= Result.PId";
            SqlCommand cmd = new SqlCommand(find, myconn);
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            rdr.Close();
            myconn.Close();
        }
    }
}