using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;

public partial class Admin_View_Reports : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   


    protected void show_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "booking & testdrive")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select b.*,t.*,c.*,u.* from tbl_Booking AS b INNER JOIN tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_TestDrive AS t ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id where b.Car_Id = t.Car_Id", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
            Repeater1.Visible = true;
            Repeater8.Visible = false;
            Repeater2.Visible = false;
        }
        else if (DropDownList1.SelectedItem.ToString() == "testdrive without booking")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select b.*,t.*,c.*,u.* from tbl_Booking AS b INNER JOIN" +
                " tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_TestDrive AS t "
                + "ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id " +
                "where t.Car_Id not in (select Car_Id from tbl_Booking)", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            con.Close();
            Repeater1.Visible = false;
            Repeater8.Visible = false;
            Repeater2.Visible = true;
        }
        else if (DropDownList1.SelectedItem.ToString() == "booking but not buy")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without booking")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive & booking")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy with testdrive & booking")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();

        }
        else if (DropDownList1.SelectedItem.ToString() == "pending testdrive")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select b.*,t.*,c.*,u.* from tbl_Booking AS b INNER JOIN tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_TestDrive AS t ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id where t.TestDrive_Status = '" + "Approve" + "'", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater8.DataSource = dt;
            Repeater8.DataBind();
            con.Close();
            Repeater1.Visible = false;
            Repeater2.Visible = false;
            Repeater8.Visible = true;
        }
        else if (DropDownList1.SelectedItem.ToString() == "done testdrive")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive & booking")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Staff", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
    }

}
