using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
public partial class Manager_chnagepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
    }
    protected void btnchnage_Click(object sender, EventArgs e)
    {
        string p = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpass.Text, "SHA1");
        if (txtpass.Text == txtconpass.Text)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update tbl_Staff set password='" + p + "' where id='" + Session["userid"] + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language='javascript'>window.alert('Password Changed');window.location='../Client/login.aspx';</script>");
        }
        else {
            Response.Write("<script language='javascript'>window.alert('Enter Valid Password And Confirm Password Both Are Must Be Same');</script>");
        }
    }
}