using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Manager_AddService : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_ServiceCetagory(Service_Name,Service_price,Service_Des,Service_Type,Service_Date) values ('" + Sname.Text + "','" + float.Parse(Sprice.Text) + "','" + Sdes.Text + "','" + DropDownList1.SelectedItem + "','" + DateTime.Now.Date + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> window.alert('Service Added Successfully') </script>");
    }
}