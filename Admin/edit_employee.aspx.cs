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
    public partial class edit_employee : System.Web.UI.Page
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
            SqlCommand com = new SqlCommand("SELECT * FROM employees", conn);
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
            string qry = "SELECT * FROM employees WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            fname.Text = dt.Rows[0]["FirstName"].ToString();
            lname.Text = dt.Rows[0]["LastName"].ToString(); 
            email.Text = dt.Rows[0]["Email"].ToString();
            uname.Text = dt.Rows[0]["UserName"].ToString();
            role.SelectedItem.Text = dt.Rows[0]["Role"].ToString();
            employee_id.Text = dt.Rows[0]["Employee_Id"].ToString();
            password.Text = dt.Rows[0]["Password"].ToString();
            cpassword.Text = dt.Rows[0]["Password"].ToString();
            phone.Text = dt.Rows[0]["Phone"].ToString();
            date.Text = dt.Rows[0]["JoiningDate"].ToString();


            if (dt.Rows[0]["Status"].ToString() == "Active")
            {
                employee_active.Checked = true;
            }
            else
            {
                employee_inactive.Checked = true;
            }
            if (employee_active.Checked)
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

        protected void edit_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["ID"]);
            BindGridView();

            SqlCommand cmd = new SqlCommand("UPDATE employees SET FirstName=@FirstName, FullName=@FullName, UserName=@UserName, Status=@Status, LastName=@LastName, Email=@Email, Password=@Password, Role=@Role, Phone=@Phone, Employee_Id=@Employee_Id, JoiningDate=@JoiningDate where id =" + Id, conn);
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