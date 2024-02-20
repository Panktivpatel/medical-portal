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
    public partial class edit_holiday : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                if (Request.QueryString["ID"] != null)
                {
                    fillEdit(Convert.ToInt32(Request.QueryString["ID"]));

                }
            }
        }
        public void BindGridView()
        {
            SqlCommand com = new SqlCommand("SELECT * FROM holiday", conn);
            conn.Open();
            com.CommandType = CommandType.Text;
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            conn.Close();
        }
        public void fillEdit(int ID)
        {

            ID = Convert.ToInt32(Request.QueryString["ID"]);
            string qry = "SELECT * FROM holiday WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            name.Text = dt.Rows[0]["Name"].ToString();
            date.Text = dt.Rows[0]["Date"].ToString();
            day.SelectedItem.Text = dt.Rows[0]["Day"].ToString();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["ID"]);
            BindGridView();
            SqlCommand cmd = new SqlCommand("UPDATE employees SET  where id =" + Id, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Date", date.Text);
            cmd.Parameters.AddWithValue("@Day", day.SelectedItem.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}