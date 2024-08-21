using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_viwebuycar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }

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
        lblError.Visible = false;
        Button2.Visible = false;
        Button1.Visible = true;
        Repeater2.Visible = false;
        con.Open();
        SqlCommand cmd = new SqlCommand("select c.*, b.* from tbl_Booking AS b INNER JOIN tbl_CarDetails AS c ON b.Car_Id=c.Car_Id where b.Booking_Status='" + "Buy" + "' and b.User_Id='" + Session["userid"] + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        con.Close();
        Repeater1.Visible = true;
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        
       


    }

    protected void service(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        Session["cid"] = id;
        Response.Redirect("Service.aspx");



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select c.*, t.* from tbl_Booking AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id where t.Booking_Status='" + "Booked" + "' and t.User_Id='" + Session["userid"] + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        con.Close();
        if (dt.Rows.Count == 0)
        {
            lblError.Visible = true;
            lblError.Text = "No Record Found!";
            Repeater1.Visible = false;
            Repeater2.Visible = true;
            Button2.Visible = true;
            Button1.Visible = false;
        }
        else
        {
            Repeater1.Visible = false;
            Repeater2.Visible = true;
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            Button2.Visible = true;
            Button1.Visible = false;

        }
    }

    

   
    
}