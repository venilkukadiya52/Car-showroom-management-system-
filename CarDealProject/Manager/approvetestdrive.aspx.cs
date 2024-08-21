using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_approvetestdrive : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("update tbl_TestDrive set TestDrive_Status='" + "Approve" + "' where TestDrive_Id='" + Request.QueryString[0] + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        testdrive_otp.SendOTP(Request.QueryString[1].ToString(),Request.QueryString[3].ToString(),Request.QueryString[2].ToString());
        Response.Redirect("View_TestDriveRequest.aspx");
        Response.Write("<script>alert('TestDrive Approved Successfully')</script>");
    }
}