using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Add_Staff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
    }
    protected void btnaddstaff_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_staff (fname,mname,lname,address,email,doj,status) values ('"+txtfname.Text+"','"+txtmname.Text+"','"+txtlname.Text+"','"+txtaddress.Text+"','"+txtemail.Text+"','"+DateTime.Today+"','"+1+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Staff Added Successfully')</script>");
    }
}