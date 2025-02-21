﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Manager_approvedtestdrive : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("select u.*,c.*,t.* FROM tbl_TestDrive AS t INNER JOIN tbl_UserDetails AS u ON t.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON t.Car_Id = c.Car_Id where t.TestDrive_Status='" + "Approve" + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        con.Close();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}