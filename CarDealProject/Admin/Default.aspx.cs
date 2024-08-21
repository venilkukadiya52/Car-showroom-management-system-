using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }

        SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_CarDetails where Car_Status='" + "Active" + "'", con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        int car = Convert.ToInt32(dt.Rows.Count);
        l1.Text = car + "";

        SqlDataAdapter adt1 = new SqlDataAdapter("select * from tbl_Booking where Booking_Status='" + "Buy" + "'", con);
        DataTable dt1 = new DataTable();
        adt1.Fill(dt1);
        int buy = Convert.ToInt32(dt1.Rows.Count);
        l2.Text = buy + "";

        SqlDataAdapter adt2 = new SqlDataAdapter("select * from tbl_Booking where Booking_Status='" + "Booked" + "'", con);
        DataTable dt2 = new DataTable();
        adt2.Fill(dt2);
        int booked = Convert.ToInt32(dt2.Rows.Count);
        l3.Text = booked + "";

        SqlDataAdapter adt3 = new SqlDataAdapter("select * from tbl_TestDrive", con);
        DataTable dt3 = new DataTable();
        adt3.Fill(dt3);
        int testdrive = Convert.ToInt32(dt3.Rows.Count);
        l4.Text = testdrive + "";

        SqlDataAdapter ad = new SqlDataAdapter("select * from tbl_UserDetails", con);
        DataTable g = new DataTable();
        ad.Fill(g);
        Repeater1.DataSource = g;
        Repeater1.DataBind();

        SqlDataAdapter a = new SqlDataAdapter("select * from tbl_CarDetails", con);
        DataTable gg = new DataTable();
        a.Fill(gg);
        Repeater2.DataSource = gg;
        Repeater2.DataBind();

        SqlDataAdapter ag = new SqlDataAdapter("select f.*,u.* from tbl_Feedback AS f INNER JOIN tbl_UserDetails AS u ON u.User_Id=f.User_Id", con);
        DataTable gh = new DataTable();
        ag.Fill(gh);
        Repeater3.DataSource = gh;
        Repeater3.DataBind();

        SqlCommand cmd = new SqlCommand("select  Top(3) Car_Image1,Car_Name,Car_Price from tbl_CarDetails ORDER BY count DESC", con);
        DataTable bh = new DataTable();
        SqlDataAdapter adr = new SqlDataAdapter(cmd);
        adr.Fill(bh);
        Repeater4.DataSource = bh;
        Repeater4.DataBind();
    }
}