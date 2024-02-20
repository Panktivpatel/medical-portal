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
using System.Windows.Forms;
using System.Drawing;

namespace Medical.Admin
{
    public partial class add_doctors : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO add_doctor(FullName,FirstName,LastName,Email,UserName,Password,DateOfBirth,City,Phone,Address,Doc_Image,Gender,Status,img_path,Department)Values(@FullName,@FirstName,@LastName,@Email,@UserName,@Password,@DateOfBirth,@City,@Phone,@Address,@Doc_Image,@Gender,@Status,@img_path,@Department)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@FirstName", fname.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@FullName", fname.Text+' '+ lname.Text);
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
                Response.Write("No file Selected"); return;
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
            Response.Write("Data has been Added");
            cmd.Dispose();
            conn.Close();

            
        }
    }
        

}