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
    public partial class appointment : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewTime();
            //ViewDoctor();
            BindGridView();
            BindDepartment();
            if (Request.QueryString["ID"] != null)
            {
                fillEdit(Convert.ToInt32(Request.QueryString["ID"]));

            }
        }

        public void addAppointment()
        {
            SqlCommand cmd = new SqlCommand("INSERT into patients(FullName, Email, Phone, Doctor, Gender, Symptoms, Department, doa, Message, TimeSlot)VALUES(@FullName, @Email, @Phone, @Doctor, @Gender, @Symptoms, @Department, @doa, @Message, @TimeSlot)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FullName", name.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Gender", gender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Symptoms", symptoms.Text);
            cmd.Parameters.AddWithValue("@doa", doa.Text);
            cmd.Parameters.AddWithValue("@Message", message.Text);
            cmd.Parameters.AddWithValue("@TimeSlot", time.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Doctor", doctor.SelectedItem.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void BindGridView()
        {
            SqlCommand com = new SqlCommand("SELECT * FROM appointment", conn);
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
            string qry = "SELECT * FROM appointment WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            name.Text = dt.Rows[0]["Name"].ToString();
            email.Text = dt.Rows[0]["Email"].ToString();
            department.SelectedItem.Text = dt.Rows[0]["Department"].ToString();

            string departmentName = department.SelectedItem.Text;
            bind_Doctor(departmentName);

            phone.Text = dt.Rows[0]["Phone"].ToString();
            symptoms.Text = dt.Rows[0]["Symptoms"].ToString();
            message.Text = dt.Rows[0]["Message"].ToString();
            time.SelectedItem.Text = dt.Rows[0]["TimeSLot"].ToString();
        }

        public void bind_Doctor(string Department)
        {
            string query = "SELECT * FROM add_doctor WHERE Department='"+Department+"'";
            SqlCommand cmd = new SqlCommand(query, conn);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);  
            doctor.DataTextField = ds.Tables[0].Columns["FullName"].ToString();     
            doctor.DataValueField = ds.Tables[0].Columns["ID"].ToString();  
            doctor.DataSource = ds.Tables[0];   
            doctor.DataBind();
        }

        public void ViewTime()
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
            time.DataTextField = ds.Tables[0].Columns["TimeSlot"].ToString();
            // text field name of table dispalyed in dropdown       
            time.DataValueField = ds.Tables[0].Columns["ID"].ToString();
            // to retrive specific  textfield name   
            time.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            time.DataBind();  //binding dropdownlist
            time.DataBind();  //binding dropdownlist
        }
        
        protected void book_Click(object sender, EventArgs e)
        {
            addAppointment();
            
        }


        public void BindDepartment()
        {
            string query = "select * from Departments where status ='Active'";
            SqlCommand cmd = new SqlCommand(query, conn);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset 
            department.DataTextField = ds.Tables[0].Columns["name"].ToString();
            // text field name of table dispalyed in dropdown       
            department.DataValueField = ds.Tables[0].Columns["ID"].ToString();
            // to retrive specific  textfield name   
            department.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            department.DataBind();  //binding dropdownlist
            //time.DataBind();  //binding dropdownlist
        }

        protected void department_SelectedIndexChanged(object sender, EventArgs e)
        {
            string DepartmentName = Convert.ToString(department.SelectedItem.Text);
            SqlCommand cmd = new SqlCommand("SELECT * FROM add_doctor WHERE Department ='" +DepartmentName+"'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset 
            doctor.DataTextField = ds.Tables[0].Columns["FullName"].ToString();
            // text field name of table dispalyed in dropdown       
            doctor.DataValueField = ds.Tables[0].Columns["ID"].ToString();
            // to retrive specific  textfield name   
            doctor.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            doctor.DataBind();
        }
    }
}