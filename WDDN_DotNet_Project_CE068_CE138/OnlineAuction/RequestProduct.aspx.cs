using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAuction
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
        }

        protected void Request_Product_Click(object sender, EventArgs e)
        {
            int val = (int)Session["Sid"];
            Console.WriteLine(val);
            SqlConnection myconn = new SqlConnection(strcon);
            string link = "";
            if (!string.IsNullOrEmpty(img.FileName))
            {
                link = "Images/Item/" + Path.GetFileName(img.FileName);
                img.SaveAs(Server.MapPath("~/" + link));
            }
            else if (!string.IsNullOrEmpty(ImgTextBox.Text))
            {
                link = ImgTextBox.Text;
            }
            //string date = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            string ins = "Insert into Product (Name,Details,Image,Bid_price,CId,SId,date,time) " +
                    "values('" + name.Text + "','" + detail.Text + "' , '" + link + "','" + bid_price.Text + "' , '" + DropDownList1.SelectedValue + "' , '" + val + "' , '" + bidDate.Text + "' , '" + time.Text + "')";
            SqlCommand insert = new SqlCommand(ins, myconn);
            myconn.Open();
            int a = insert.ExecuteNonQuery();
            myconn.Close();
            if (a != 0)
            {
                string script = "alert(\"Product request sent to Admin !!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (img.FileName != null)
            {
                string link = "Images/Item/" + Path.GetFileName(img.FileName);
                img.SaveAs(Server.MapPath("~/" + link));
                ImgTextBox.Text = link;
            }
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("Style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            bidDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.WhiteSmoke;
            }
        }
    }
}