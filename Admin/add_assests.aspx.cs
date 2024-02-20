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
    public partial class add_assests : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDisplayUser();
        }
        public void BindDisplayUser()
        {
            int id;
            string query = "select * from [employees]";
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
            user.DataTextField = ds.Tables[0].Columns["FullName"].ToString(); 
            // text field name of table dispalyed in dropdown       
            user.DataValueField = ds.Tables[0].Columns["Id"].ToString();
            // to retrive specific  textfield name   
            user.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            user.DataBind();  //binding dropdownlist
        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT into assests(Assest_id,Name,date,purchaseFrom,manufacturer,Model,SerialNumber,Supplier,Condition,Warranty,Price,AssetUser,Description,Status)VALUES(@Assest_id,@Name,@date,@purchaseFrom,@manufacturer,@Model,@SerialNumber,@Supplier,@Condition,@Warranty,@Price,@AssetUser,@Description,@Status)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Assest_id", assest_id.Text);
            cmd.Parameters.AddWithValue("@date", date.Text);
            cmd.Parameters.AddWithValue("@purchaseFrom", purchase_from.Text);
            cmd.Parameters.AddWithValue("@manufacturer", manufacturer.Text);
            cmd.Parameters.AddWithValue("@Model", model.Text);
            cmd.Parameters.AddWithValue("@SerialNumber", serial_no.Text);
            cmd.Parameters.AddWithValue("@Supplier", supplier.Text);
            cmd.Parameters.AddWithValue("@Condition", condition.Text);
            cmd.Parameters.AddWithValue("@Warranty", warranty.Text);
            cmd.Parameters.AddWithValue("@Price", price.Text);
            cmd.Parameters.AddWithValue("@AssetUser", user.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Description", description.Text);
            cmd.Parameters.AddWithValue("@Status", status.SelectedItem.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}