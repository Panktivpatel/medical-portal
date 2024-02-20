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
    public partial class assests : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

            BindDisplayUser();
            if (Request.QueryString["Id"] != null && Request.QueryString["p"] == "delete")
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                string p = Request.QueryString["p"].ToString();
                delete_data(id, p);
            }
            BindGridView();
        }
        public void BindDisplayUser()
        {
            int id;
            string query = "select * from [employees]";
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                query += " Where Id = " + id;
            }
            SqlCommand cmd = new SqlCommand(query, conn);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            user.DataTextField = ds.Tables[0].Columns["FullName"].ToString();
            // text field name of table dispalyed in dropdown       
            user.DataValueField = ds.Tables[0].Columns["Id"].ToString();
            // to retrive specific  textfield name   
            user.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            user.DataBind();  //binding dropdownlist
        }
        public void BindGridView()
        {
            int id;
            string query = "select * from [assests]";
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                query += " Where Id = " + id;
            }
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(cmd);
            sdr.Fill(dt);
            display_data.DataSource = dt;
            display_data.DataBind();
        }
        public void delete_data(int Id, string p)
        {
            Id = Convert.ToInt32(Request.QueryString["Id"]);
            p = Request.QueryString["p"];
            string qry = "DELETE FROM assests WHERE ID= " + Id;
            SqlCommand cmd = new SqlCommand(qry, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            // SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            BindGridView();
        }
    }
}