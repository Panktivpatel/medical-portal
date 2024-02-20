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
    public partial class DentistsAttendence : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDisplayName();
        }
        public void BindDisplayName()
        {
            int id;
            string query = "select * from [add_doctor] WHERE Department = 'Dentistry'";
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
            name.DataTextField = ds.Tables[0].Columns["FullName"].ToString();
            // text field name of table dispalyed in dropdown       
            name.DataValueField = ds.Tables[0].Columns["Id"].ToString();
            // to retrive specific  textfield name   
            name.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            name.DataBind();  //binding dropdownlist
        }
    }
}