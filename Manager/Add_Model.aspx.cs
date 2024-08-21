using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Manager_Add_Model : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_CarDetails where Car_Status='" + "Active" + "'", con);
            DataTable dt = new DataTable();
            adt.Fill(dt);

            mname.DataSource = dt;
            mname.DataValueField = "Car_Id";
            mname.DataTextField = "Car_Name";
            mname.DataBind();
            mname.Items.Insert(0, "Select");

            con.Close();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        int f = Convert.ToInt32(mname.SelectedValue);
        SqlCommand cmd1 = new SqlCommand("insert into tbl_Model (car_id,price,Model_Name) values ('"+f+"','"+mprice.Text+"','"+modelname.Text+"')",con);
        cmd1.ExecuteNonQuery();
        con.Close();
    }
}