using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical.Admin
{
    public partial class add_department : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT into departments(name, Status)VALUES(@name, @Status)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            if (active.Checked)
            {
                cmd.Parameters.AddWithValue("@Status", "Active");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Status", "Inactive");
            }
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}