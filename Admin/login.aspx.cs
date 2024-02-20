using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical.Admin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) FROM register WHERE UserName='" + uname.Text + "' and Password='" + password.Text + "'");
            cmd.Connection = conn;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {

                Session["UserName"] = uname.Text;
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid username or password";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();
        }
    }
}