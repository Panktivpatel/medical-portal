using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical.Admin
{
    public partial class edit_dooctor : System.Web.UI.Page
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
            SqlCommand com = new SqlCommand("SELECT * FROM add_doctor", conn);
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
            string qry = "SELECT * FROM add_doctor WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            fname.Text = dt.Rows[0]["FirstName"].ToString();
            lname.Text = dt.Rows[0]["LastName"].ToString();
            email.Text = dt.Rows[0]["Email"].ToString();
            uname.Text = dt.Rows[0]["UserName"].ToString();
            department.SelectedItem.Text = dt.Rows[0]["Department"].ToString();
            dob.Text = Convert.ToDateTime(dt.Rows[0]["DateOfBirth"]).ToString("dd/MM/yyyy").Trim();
            pass.Text = dt.Rows[0]["Password"].ToString();
            cpass.Text = dt.Rows[0]["Password"].ToString();
            phone.Text = dt.Rows[0]["Phone"].ToString();
            city.SelectedItem.Text = dt.Rows[0]["City"].ToString();
            address.Text = dt.Rows[0]["Address"].ToString();

            if (dt.Rows[0]["Gender"].ToString() == "Male")
            {
                male.Checked = true;
            }
            else
            {
                female.Checked = true;
            }
            if (male.Checked)
            {
                string active1 = "Male";
                active1 = dt.Rows[0]["Gender"].ToString();
            }
            else
            {
                string inactive1 = "Female";
                inactive1 = dt.Rows[0]["Gender"].ToString();
            }

            if (dt.Rows[0]["Status"].ToString() == "Active")
            {
                doctor_active.Checked = true;
            }
            else
            {
                doctor_inactive.Checked = true;
            }
            if (doctor_active.Checked)
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

            SqlCommand cmd = new SqlCommand("UPDATE add_doctor SET FirstName=@FirstName, FullName=@FullName, UserName=@UserName, Status=@Status, LastName=@LastName, Email=@Email, Password=@Password, Doc_image=@Doc_image, Department=@Department, Phone=@Phone, img_path=@img_path, City=@City, Address=@Address where id =" + Id, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@FullName", fname.Text + ' ' + lname.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@UserName", uname.Text);
            cmd.Parameters.AddWithValue("@Password", pass.Text);
            cmd.Parameters.AddWithValue("@DateOfBirth", dob.Text);
            cmd.Parameters.AddWithValue("@Department", department.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", city.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Address", address.Text);

            if (male.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", "Male");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Gender", "Female");
            }

            if (doctor_active.Checked)
            {
                cmd.Parameters.AddWithValue("@Status", "Active");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Status", "Inactive");
            }

            if (!Img.HasFile) //Validation  
            {
                Response.Write("No file Selected");
            }
            else
            {
                string filename = Img.PostedFile.FileName;
                var path = Path.Combine(Server.MapPath("~/Admin/Doc_Image/"), filename);
                Img.SaveAs(path);


                cmd.Parameters.Add("@Doc_image", filename);
                //cmd.Parameters["@image"].Value = imageByte;
                cmd.Parameters.Add("@img_path", path);
                //cmd.Parameters["@Rollno"].Value = txtrollno.Text;

            }
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}