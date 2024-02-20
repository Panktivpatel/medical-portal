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
    public partial class add_employees : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT into employees(FirstName, LastName, FullName, UserName, Email, Role, Phone, Password, Status, JoiningDate, Employee_Id)VALUES(@FirstName, @LastName, @FullName, @UserName, @Email, @Role, @Phone, @Password, @Status, @JoiningDate, @Employee_Id)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@FullName", fname.Text + ' ' + lname.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@UserName", uname.Text);
            cmd.Parameters.AddWithValue("@Password", password.Text);
            cmd.Parameters.AddWithValue("@Role", role.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Employee_Id", employee_id.Text);
            cmd.Parameters.AddWithValue("@JoiningDate", date.Text);


            if (employee_active.Checked)
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