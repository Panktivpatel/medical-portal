using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) FROM pharmacy_r WHERE Name='" + userid.Text + "' and Password='" + pass.Text + "'");
            cmd.Connection = conn;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                Response.Redirect("HTMLPage1.html");
            }
            else
            {
                lblmsg.Text = "Invalid username or password";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}