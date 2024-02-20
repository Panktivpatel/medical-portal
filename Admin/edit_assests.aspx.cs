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
    public partial class edit_assests : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDisplayUser();
                BindGridView();
                if (Request.QueryString["ID"] != null)
                {
                    fillEdit(Convert.ToInt32(Request.QueryString["ID"]));

                }
            }
        }
        public void BindGridView()
        {
            SqlCommand com = new SqlCommand("SELECT * FROM assests", conn);
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
            string qry = "SELECT * FROM assests WHERE ID = " + ID;
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter da = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            name.Text = dt.Rows[0]["Name"].ToString();
            assest_id.Text = dt.Rows[0]["Assest_id"].ToString();
            date.Text = dt.Rows[0]["date"].ToString();
            purchase_from.Text = dt.Rows[0]["purchaseFrom"].ToString();
            manufacturer.Text = dt.Rows[0]["manufacturer"].ToString();
            model.Text = dt.Rows[0]["Model"].ToString();
            serial_no.Text = dt.Rows[0]["SerialNumber"].ToString();
            supplier.Text = dt.Rows[0]["Supplier"].ToString();
            condition.Text = dt.Rows[0]["Condition"].ToString();
            warranty.Text = dt.Rows[0]["Warranty"].ToString();
            price.Text = dt.Rows[0]["Price"].ToString();
            user.SelectedItem.Text = dt.Rows[0]["AssetUser"].ToString();
            description.Text = dt.Rows[0]["Description"].ToString();
            status.SelectedItem.Text = dt.Rows[0]["Status"].ToString();

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

        protected void edit_Click1(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["ID"]);
            BindGridView();

            SqlCommand cmd = new SqlCommand("UPDATE assests SET Name=@Name, Assest_id=@Assest_id, date=@date, purchaseFrom=@purchaseFrom, manufacturer=@manufacturer, Model=@Model, SerialNumber=@SerialNumber, Supplier=@Supplier, Condition=@Condition, Warranty=@Warranty, Price=@Price, AssetUser=@AssetUser, Description=@Description, Status=@Status where id =" + Id, conn);
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