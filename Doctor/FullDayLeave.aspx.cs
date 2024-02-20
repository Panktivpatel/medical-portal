using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical.Doctor
{
    public partial class FullDayLeave : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void addData()
        {
            SqlCommand cmd = new SqlCommand("INSERT into FullDayLeave(Name, DateTo, Department, Reason, DateFrom)VALUES(@Name, @DateTo, @Department, @Reason, @DateFrom)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Reason", reason.Text);
            cmd.Parameters.AddWithValue("@DateTo", to.Text);
            cmd.Parameters.AddWithValue("@DateFrom", from.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            addData();
        }
    }
}