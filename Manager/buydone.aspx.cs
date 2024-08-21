 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Manager_buydone : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        Random rand = new Random();
        int OTP = rand.Next(111111, 999999);
        Session["OTP"] = OTP;
        Offer_otp.SendOTP(Request.QueryString["email"].ToString(), OTP, Request.QueryString["name"].ToString(),Request.QueryString["cname"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("update tbl_Booking set coupan_code='"+OTP+"',count='"+0+"',Booking_Status='" + "Buy" + "' where Booking_Id='" + Request.QueryString[0] + "'", con);
        cmd.ExecuteNonQuery();
        
        SqlDataAdapter h = new SqlDataAdapter("select * from tbl_CarDetails where Car_Id='"+Request.QueryString["user"]+"'",con);
        DataTable dt = new DataTable();
        h.Fill(dt);
        int c = Convert.ToInt32(dt.Rows[0]["count"].ToString());
        int cc = c + 1;

        SqlCommand cm = new SqlCommand("update tbl_CarDetails set count='" + cc + "' where Car_Id='" + Request.QueryString["user"] + "'", con);
        cm.ExecuteNonQuery();
        con.Close();

        Response.Write("<script>window.location.assign('View_BookingRequest.aspx')</script>");
    }
}