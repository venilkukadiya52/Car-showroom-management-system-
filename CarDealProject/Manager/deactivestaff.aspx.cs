using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_deactivestaff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("update tbl_Staff set status='" + 0 + "' where id='" + Request.QueryString[0] + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
     
   Response.Redirect("View_Staff.aspx");
   Response.Write("<script>alert('Staff Deleted Successfully')</script>");
    }
}