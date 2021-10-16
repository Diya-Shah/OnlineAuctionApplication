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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Auction"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //   GridView1.DataSource = SqlDataSource1;
              GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection myconn = new SqlConnection(strcon);

            if (e.CommandName == "accept")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                string name = GridView1.Rows[count].Cells[1].Text;
                string cid = GridView1.Rows[count].Cells[4].Text;

                string command = "Update Product SET Accepted = '1' where " +
                "Name = '" + name + "'" + " AND " + "CId = '" + cid + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                myconn.Open();
                int a = cmd.ExecuteNonQuery();
                myconn.Close();

                if (a != 0)
                {
                    string script = "alert(\"Product request Accepted !!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                GridView1.DataBind();

            }
            if (e.CommandName == "decline")
            {
                int count = Convert.ToInt32(e.CommandArgument.ToString());
                string name = GridView1.Rows[count].Cells[1].Text;
                string cid = GridView1.Rows[count].Cells[4].Text;

                string command = "Delete From Product where " +
                "Name = '" + name + "'" + " AND " + "CId = '" + cid + "'";
                SqlCommand cmd = new SqlCommand(command, myconn);
                myconn.Open();
                int a = cmd.ExecuteNonQuery();
                myconn.Close();

                if (a != 0)
                {
                    string script = "alert(\"Product request Declined !!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                GridView1.DataBind();

            }
        }

    }
}