using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class Client_passandconpass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["username"] != null)
        {
            namelbl.Text = "" + Session["username"];
            loginlbl.Visible = false;
            logoutlbl.Visible = true;
            namelbl.Visible = true;
            A4.Visible = true;
            A5.Visible = true;
            A6.Visible = true;




        }
        else
        {
            loginlbl.Visible = true;
            logoutlbl.Visible = false;
            namelbl.Visible = false;
            A4.Visible = false;
            A5.Visible = false;
            A6.Visible = false;


        }
    }

   
    protected void btnupdate_Click1(object sender, EventArgs e)
    {
        if (txtpass.Text == txtconpass.Text)
        {
            Response.Write("<script>alert('Password Updated Successfully')</script>");
            con.Open();
            string p = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpass.Text, "SHA1");
       
            SqlCommand cmd = new SqlCommand("update tbl_UserDetails set Password='" + p + "' where Email='" + Session["Email"] + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("<script>alert('Enter Valid Password, Password And Confirm Password Must be Same')</script>");
        }
    }
}