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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            HyperLink4.NavigateUrl = "~/ProductPanel.aspx?Category=" + Session["selectedCat"];
            GridView1.DataBind();
            int productId = Convert.ToInt32(Request.QueryString["Product"]);
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string select = "Select Name,Details,Image,date,time from Product where PId= '" + productId + "'";
            SqlCommand cmd = new SqlCommand(select, myconn);
            SqlDataReader reader = cmd.ExecuteReader();
            string bidDate = null , bidTime = null, name = null, details = null, image = null;
            while (reader.Read()) 
            {
                bidDate = reader["date"].ToString();
                bidTime = reader["time"].ToString();
                name = reader["Name"].ToString();
                details = reader["Details"].ToString();
                image = reader["Image"].ToString();
            }
            Image1.ImageUrl = image;
            Label2.Text = name;
            Label3.Text = details;
            string dateTime = bidDate + " " + bidTime;
            myconn.Close();


            if (DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") != dateTime)
            {
                Label5.Text = "Current session starts at " + dateTime;
                
                Session["datetime"] = dateTime;
                Response.Redirect("~/ProductPanel.aspx?Category=" + Session["selectedCat"]);

            }
        }
        public void makeChange()
        {
            Button1.Visible = false;
            
            string biddername = GridView1.Rows[0].Cells[0].Text;
            int bidamount = Convert.ToInt32(GridView1.Rows[0].Cells[1].Text);
            Label4.Text = "Congratulations " + biddername + "!! You win this bid by an amount of " + bidamount + ".";

            SqlConnection myconn = new SqlConnection(strcon);
            int productId = Convert.ToInt32(Request.QueryString["Product"]);
            myconn.Open();
            string insert = "Insert into Result(BidderName,BidAmount,PId) values ('" + biddername + "','" + bidamount + "','" + productId + "')";
            SqlCommand ins = new SqlCommand(insert, myconn);
            int a = ins.ExecuteNonQuery();

            string command = "Update Product SET Sold= '1' where PId= '" + productId + "'";
            SqlCommand cmd1 = new SqlCommand(command, myconn);
            int b = cmd1.ExecuteNonQuery();
            myconn.Close();
            

        }
        static int timelimit = 50;
        protected void timer1_tick(object sen, EventArgs e)
        {
           
            timelimit--;
            if(timelimit<=0)
            {
                timer1.Enabled = false;
                Label5.Text = "Time expired";
                string script = "document.getElementById(\"Label1\").remove();document.getElementById(\"TextBox1\").remove();document.getElementById(\"Button1\").remove();</script>";
                ScriptManager.RegisterStartupScript(this, GetType() ,"ServerControlScript", script, true);
                makeChange();
                

            }
            else
            {
                Label5.Text = "Time Left: " + timelimit + " Seconds";
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (timelimit > 0)
                {
                SqlConnection myconn = new SqlConnection(strcon);
                myconn.Open();
                int bidamount = Convert.ToInt32(TextBox1.Text);
                int productId = Convert.ToInt32(Request.QueryString["Product"]);
                string command = "Update Participants SET BidAmount=" + bidamount + "where PId= '" + productId + "'" + " AND " + "BId = '" + Session["Bid"] + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                int a = cmd.ExecuteNonQuery();
                myconn.Close();

                if (a != 0)
                {
                    GridView1.DataBind();
                }
            }
            
        }
    }
}