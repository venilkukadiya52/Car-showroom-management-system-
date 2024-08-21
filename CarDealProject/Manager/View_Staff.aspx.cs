using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_View_Staff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Staff where status='"+1+"'",con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}