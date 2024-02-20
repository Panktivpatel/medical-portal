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
    public partial class edit_patient : System.Web.UI.Page
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
            SqlCommand com = new SqlCommand("SELECT * FROM patients", conn);
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
            string qry = "SELECT * FROM patients WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            fname.Text = dt.Rows[0]["FirstName"].ToString();
            lname.Text = dt.Rows[0]["LastName"].ToString();
            email.Text = dt.Rows[0]["Email"].ToString();
            dob.Text =Convert.ToDateTime(dt.Rows[0]["DateOfBirth"]).ToString("dd/MM/yyyy").Trim();
            department.SelectedItem.Text = dt.Rows[0]["Department"].ToString();
            symptoms.Text = dt.Rows[0]["Symptoms"].ToString();
            address.Text = dt.Rows[0]["Address"].ToString();
            phone.Text = dt.Rows[0]["Phone"].ToString();
            doa.Text = dt.Rows[0]["doa"].ToString();
            code.Text = dt.Rows[0]["PostalCode"].ToString();
            city.SelectedItem.Text = dt.Rows[0]["City"].ToString();

            if(dt.Rows[0]["Gender"].ToString() == "Male")
            {
                male.Checked = true;
            }
            else
            {
                female.Checked = true;
            }

            if (male.Checked)
            {
                string male1 = "Male";
                male1 = dt.Rows[0]["Gender"].ToString();
            }
            else
            {
                string female1 = "Female";
                female1 = dt.Rows[0]["Gender"].ToString();
            }

            if (dt.Rows[0]["Status"].ToString() == "Active")
            {
                patient_active.Checked = true;
            }
            else
            {
                patient_inactive.Checked = true;
            }
            if (patient_active.Checked)
            {
                string active1 = "Active";
                active1 = dt.Rows[0]["Status"].ToString();
            }
            else
            {
                string inactive1 = "Inactive";
                inactive1 = dt.Rows[0]["Status"].ToString();
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            int Id = Convert.ToInt32(Request.QueryString["ID"]);
            BindGridView();

            SqlCommand cmd = new SqlCommand("UPDATE patients SET FirstName=@FirstName, LastName=@LastName, Email=@Email, DateOfBirth=@DateOfBirth, City=@City, Phone=@Phone, Address=@Address, Status=@Status, Gender=@Gender, Symptoms=@Symptoms, Department=@Department, doa=@doa, PostalCode=@PostalCode where id =" + Id, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@DateOfBirth", dob.Text);
            cmd.Parameters.AddWithValue("@City", city.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Address", address.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Symptoms", symptoms.Text);
            cmd.Parameters.AddWithValue("@doa", doa.Text);
            cmd.Parameters.AddWithValue("@PostalCode", code.Text);
            if (male.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", "Male");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Gender", "Female");
            }

            if (patient_active.Checked)
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
