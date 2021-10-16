using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Web;


namespace OnlineAuction
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["datetime"]!=null)
            {
                string dateTime = Session["datetime"].ToString();
                string script = "alert(\"Current session starts at " + dateTime + " !!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                Session["datetime"] = null;
            }
            SqlConnection myconn = new SqlConnection(strcon);
            myconn.Open();
            string command = "Select PId from Participants where BId = '"+Session["Bid"]+"'";
            SqlCommand cmd = new SqlCommand(command, myconn);
            SqlDataReader reader = cmd.ExecuteReader();
            List<object> productID = new List<object>();

            while (reader.Read())
            {
                productID.Add(reader["PId"]);
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                var temp = (HiddenField)row.FindControl("HiddenField1");
                string Pid = temp.Value;
                foreach (object pid in productID)
                {
                    if(Pid == pid.ToString())
                    {
                       
                        Button temp1 = (Button)row.Cells[6].Controls[0];
                        temp1.Text = "Join Session";
                        temp1.CommandName = "Join";
                        break;
                    }
                }
            }
            myconn.Close();
                
        }
       

     
      protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);
            if (e.CommandName == "Select")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                var temp = (HiddenField)GridView1.Rows[count].FindControl("HiddenField1");
                string Pid = temp.Value;
                Response.Redirect("~/BidRegistration.aspx?Product=" + Pid);

            }
            if(e.CommandName=="Join")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                var temp = (HiddenField)GridView1.Rows[count].FindControl("HiddenField1");
                string Pid = temp.Value;
               // Session["Timer"] = null;
                Response.Redirect("~/JoinSession.aspx?Product=" + Pid);
            }
        
        }

    }
}