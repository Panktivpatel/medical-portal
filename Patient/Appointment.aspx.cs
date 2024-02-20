using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem.Patient
{
    public partial class Appointment : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
            DisplayDepartment();
        }
        public void BindGridView()
        {
            int id;
            string query = "select * from [TimeSlot]";
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
            timeSlot.DataTextField = ds.Tables[0].Columns["TimeSlot"].ToString();
            // text field name of table dispalyed in dropdown       
            timeSlot.DataValueField = ds.Tables[0].Columns["ID"].ToString();
            // to retrive specific  textfield name   
            timeSlot.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            timeSlot.DataBind();  //binding dropdownlist
            timeSlot.DataBind();  //binding dropdownlist
        }
        public void DisplayDepartment()
        {
            int id;
            string query = "select * from [departments] WHERE Status = 'Active'";
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
            department.DataTextField = ds.Tables[0].Columns["name"].ToString();
            // text field name of table dispalyed in dropdown       
            department.DataValueField = ds.Tables[0].Columns["Id"].ToString();
            // to retrive specific  textfield name   
            department.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            department.DataBind();  //binding dropdownlist
        }

        protected void book_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO appointment(Name,Email,Department,Symptoms,Phone,TimeSlot,Message)Values(@Name,@Email,@Department,@Symptoms,@Phone,@TimeSlot,@Message)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Symptoms", symptoms.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Message", message.Text);

            string booktime = timeSlot.SelectedItem.Text;
            if(booktime != null)
            {
                cmd.Parameters.AddWithValue("@TimeSlot", booktime);
            }
            

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}