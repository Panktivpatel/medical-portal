using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical.Reception
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
            BindViewPatients();
        }
        public void BindGridView()
        {
            SqlCommand com = new SqlCommand("SELECT FullName,Department,doa,TimeSlot FROM patients where 1=1", conn);
            conn.Open();
            com.CommandType = CommandType.Text;
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                display_data.DataSource = dt;
                display_data.DataBind();
            }
            else
            {
                display_data.DataSource = null;
            }
            conn.Close();
        }
        public void BindViewPatients()
        {
            SqlCommand com = new SqlCommand("SELECT * FROM appointment where 1=1", conn);
            conn.Open();
            com.CommandType = CommandType.Text;
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                confrimpatients.DataSource = dt;
                confrimpatients.DataBind();
            }
            else
            {
                confrimpatients.DataSource = null;
            }
            conn.Close();
        }
    }
}