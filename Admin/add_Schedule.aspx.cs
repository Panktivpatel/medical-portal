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
    public partial class add_Schedule : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT into Schedule_doc(Name, Admin_ID, Department, Status, Departure, Arrivial, Days)VALUES(@Name, @Admin_ID, @Department, @Status, @Departure, @Arrivial, @Days)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Arrivial", ArrivalHH.Text + ":" + ArrivalMM.Text + " " + time.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Departure", departHH.Text + ":" + departMM.Text + " " + departD.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Admin_ID", admin_id.Text);
            string s1 = string.Empty;
            foreach (ListItem item in avail_days.Items)
            {
                if (item.Selected)
                {
                    s1 += item + ",";
                }
            }
            
            cmd.Parameters.AddWithValue("@Days", s1);
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