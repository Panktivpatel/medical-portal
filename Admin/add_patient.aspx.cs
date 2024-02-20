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
    public partial class add_patient : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT into patients(FirstName, LastName, Email, DateOfBirth, City, Phone, Address, Status, Gender, Symptoms, Department, doa, PostalCode)VALUES(@FirstName, @LastName, @Email, @DateOfBirth, @City, @Phone, @Address, @Status, @Gender, @Symptoms, @Department, @doa, @PostalCode)", conn);
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