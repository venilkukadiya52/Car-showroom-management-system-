using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_View_BookingRequest : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("select b.*,c.*,u.* from tbl_Booking AS b INNER JOIN tbl_CarDetails AS c ON b.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON b.User_Id=u.User_Id where b.Booking_Status='" + "Booked" + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);

        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        con.Close();

    }
}