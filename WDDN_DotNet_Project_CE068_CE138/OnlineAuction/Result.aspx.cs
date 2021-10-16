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
    public partial class WebForm13 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string name = null;
            string find = "Select Name,BId From Bidder where BId=" + Session["Bid"] + "";
            SqlCommand cmd = new SqlCommand(find, myconn);
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                name = rdr["Name"].ToString();
            }
            rdr.Close();
            string select = "SELECT Product.PId,Image,Name,Details,Bid_price,BidderName,BidAmount FROM Product,Result WHERE Result.BidderName ='" + name + "' AND Result.Payment='0' AND Product.PId = Result.PId ";
            SqlCommand cmd1 = new SqlCommand(select, myconn);
            SqlDataReader rdr1 = cmd1.ExecuteReader();
            GridView1.DataSource = rdr1;
            GridView1.DataBind();
            rdr1.Close();
            myconn.Close();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            if (e.CommandName == "pay")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                var temp = (HiddenField)GridView1.Rows[count].FindControl("HiddenField1");
                string Pid = temp.Value;
                Response.Redirect("~/Payment.aspx?Product=" + Pid);
            }
        }
    }
}