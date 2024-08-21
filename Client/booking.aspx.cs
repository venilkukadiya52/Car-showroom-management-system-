using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_booking : System.Web.UI.Page
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
        
        if (Session["userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
   
    protected void booking_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand c = new SqlCommand("select * from tbl_TestDrive where Car_Id = '" + Request.QueryString[0] + "' and User_Id='" + Request.QueryString[1] + "' and TestDrive_Status = '"+"Requested"+"'", con);
       //int i =  c.ExecuteNonQuery();
        SqlDataAdapter adt = new SqlDataAdapter(c);
        DataTable dt = new DataTable();
        adt.Fill(dt);

        if (dt.Rows.Count == 0)
        {

            SqlCommand cmd = new SqlCommand("insert into tbl_TestDrive (Car_Id,User_Id,TestDrive_Status,TestDrive_Date,TestDrive_Time)values('" + Request.QueryString[0] + "','" + Request.QueryString[1] + "','" + "Requested" + "','" + date.Text + "','" + time.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Testdrive Successfully')</script>");
       }
        else {
            Response.Write("<script>alert('Testdrive Already booked')</script>");
        }
    }
}