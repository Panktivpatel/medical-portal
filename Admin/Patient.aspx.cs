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
    public partial class Patient : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null && Request.QueryString["p"] == "delete")
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                string p = Request.QueryString["p"].ToString();
                delete_data(id, p);
            }
            BindGridView();
        }
        public void BindGridView()
        {
            SqlCommand com = new SqlCommand("SELECT Id,FullName,Email,Symptoms,Department,doa,Gender,Address,Phone,City,DateOfBirth FROM patients where 1=1", conn);
            conn.Open();
            com.CommandType = CommandType.Text;
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.EmptyDataText = "No Data Available";
            }
            conn.Close();
        }
        public void delete_data(int Id, string p)
        {
            Id = Convert.ToInt32(Request.QueryString["Id"]);
            p = Request.QueryString["p"];
            string qry = "DELETE FROM patients WHERE ID= " + Id;
            SqlCommand cmd = new SqlCommand(qry, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            // SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            BindGridView();
        }
    }
}