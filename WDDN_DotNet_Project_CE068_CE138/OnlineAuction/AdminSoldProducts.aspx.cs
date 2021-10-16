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
    public partial class WebForm20 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string find1 = "Select SId,Name From Seller";

            SqlCommand cmd1 = new SqlCommand(find1, myconn);
            SqlDataReader rdr1;
            rdr1= cmd1.ExecuteReader();
            GridView2.DataSource = rdr1;
            GridView2.DataBind();
            rdr1.Close();
            string find = "Select Image,Product.Name,Details,Bid_price From Product where Sold = " + 1;
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