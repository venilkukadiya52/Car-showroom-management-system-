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

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select u.Name,b.Booking_Id,b.Booking_Status,b.Booking_Date,c.Car_Name FROM tbl_UserDetails AS u INNER JOIN tbl_Booking AS b ON u.User_Id=b.User_Id INNER JOIN tbl_CarDetails c ON b.Car_Id = c.Car_Id", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);

        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        con.Close();

    }
}