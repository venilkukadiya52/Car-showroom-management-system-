using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Reporting.WebForms;

public partial class Admin_Report : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    DataTable f = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void GetBookingData()
    {
        SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select Car_Id,User_Id,Payment_Mode,Booking_Status from tbl_Booking", con);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();
        con.Close();
    }

    private void GetTestDriveData()
    {

        ReportViewer2.Visible = true;
        SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
        con.Open();
        cmd.ExecuteNonQuery();

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        ReportViewer2.ProcessingMode = ProcessingMode.Local;
        ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
        ReportViewer2.LocalReport.DataSources.Clear();
        ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
        ReportViewer2.LocalReport.Refresh();
        con.Close();
    }

    private void GetBookingandTestDrive()
    {
        SqlCommand cmd = new SqlCommand("select b.*,t.*,c.*,u.* from tbl_Booking AS b INNER JOIN tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_TestDrive AS t ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id where b.Car_Id = t.Car_Id", con);

        con.Open();
        cmd.ExecuteNonQuery();

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        ReportViewer3.ProcessingMode = ProcessingMode.Local;
        ReportViewer3.LocalReport.ReportPath = Server.MapPath("Report3.rdlc");
        ReportViewer3.LocalReport.DataSources.Clear();
        ReportViewer3.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", dt));
        ReportViewer3.LocalReport.Refresh();
        con.Close();
    }

    private void GetTestDriveWithoutBooking()
    {
        SqlCommand cmd = new SqlCommand("select b.*,t.*,c.*,u.* from tbl_Booking AS b INNER JOIN" +
            " tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_TestDrive AS t "
            + "ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id " +
            "where t.Car_Id not in (select Car_Id from tbl_Booking) and t.User_Id not in (select User_Id from tbl_Booking)", con);
        con.Open();
        cmd.ExecuteNonQuery();

        

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        //SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_Booking",con);
        //SqlDataAdapter adt2 = new SqlDataAdapter("select * from tbl_TestDrive", con);
        //    DataTable dt = new DataTable();
        //    DataTable dt2 = new DataTable();
        //    adt.Fill(dt);
        //    adt2.Fill(dt2);
        //    int c = Convert.ToInt32(dt.Rows.Count) - 1 ;
        //    int cc = Convert.ToInt32(dt2.Rows.Count) - 1;
            
        //    if (dt.Rows[c]["User_Id"] == dt2.Rows[cc - 1]["User_Id"] && dt.Rows[c]["Car_Id"] == dt2.Rows[cc - 1]["Car_Id"])
        //    {
        //        SqlDataAdapter a = new SqlDataAdapter("select c.*,u.*,t.* from tbl_CarDetails AS c INNER JOIN tbl_TestDrive AS t ON c.Car_Id=t.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id INNER JOIN tbl_Booking AS b ON b.Car_Id=c.Car_Id where c.Car_Id='"+dt2.Rows[cc - 1]["Car_Id"]+"' and u.User_Id='"+dt2.Rows[cc - 1]["User_Id"]+"'",con);
        //         f = new DataTable();
        //        a.Fill(f);
        //        c = c - 1;
        //        cc = cc - 1;
        //    }
            ReportViewer4.ProcessingMode = ProcessingMode.Local;
            ReportViewer4.LocalReport.ReportPath = Server.MapPath("Report4.rdlc");
            ReportViewer4.LocalReport.DataSources.Clear();
            ReportViewer4.LocalReport.DataSources.Add(new ReportDataSource("DataSet4", dt));
            ReportViewer4.LocalReport.Refresh();
            con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "booking")
        {
            ReportViewer1.Visible = true;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            GetBookingData();
        }
        else if (DropDownList1.SelectedItem.ToString() == "testdrive")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = true;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            GetTestDriveData();
        }
        else if (DropDownList1.SelectedItem.ToString() == "booking & testdrive")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = true;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            GetBookingandTestDrive();
        }
        else if (DropDownList1.SelectedItem.ToString() == "testdrive without booking")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = true;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            GetTestDriveWithoutBooking();
        }
        else if (DropDownList1.SelectedItem.ToString() == "booking but not buy")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = true;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            ReportViewer1.Visible = false;

            ReportViewer2.Visible = true;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer5.ProcessingMode = ProcessingMode.Local;
            ReportViewer5.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer5.LocalReport.DataSources.Clear();
            ReportViewer5.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer5.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without booking")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = true;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = false;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer6.ProcessingMode = ProcessingMode.Local;
            ReportViewer6.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer6.LocalReport.DataSources.Clear();
            ReportViewer6.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer6.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive")
        {
            ReportViewer1.Visible = false;

            ReportViewer2.Visible = true;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer7.ProcessingMode = ProcessingMode.Local;
            ReportViewer7.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer7.LocalReport.DataSources.Clear();
            ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer7.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive & booking")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = true;
            ReportViewer7.Visible = false;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer2.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy with testdrive & booking")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = false;
            ReportViewer7.Visible = true;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer2.LocalReport.Refresh();
            con.Close();

        }
        else if (DropDownList1.SelectedItem.ToString() == "pending testdrive")
        {
            ReportViewer1.Visible = false;
            ReportViewer2.Visible = false;
            ReportViewer3.Visible = false;
            ReportViewer4.Visible = false;
            ReportViewer5.Visible = false;
            ReportViewer6.Visible = true;
            ReportViewer7.Visible = false;

            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer2.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "done testdrive")
        {
            ReportViewer1.Visible = false;

            ReportViewer2.Visible = true;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer2.LocalReport.Refresh();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.ToString() == "buy without testdrive & booking")
        {
            ReportViewer1.Visible = false;

            ReportViewer2.Visible = true;
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select c.*,u.*,t.* from tbl_TestDrive AS t INNER JOIN tbl_CarDetails AS c ON t.Car_Id=c.Car_Id INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id", con);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer2.LocalReport.Refresh();
            con.Close();
        }
    }
}