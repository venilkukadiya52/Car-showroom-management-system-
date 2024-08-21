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

    }
    protected void btnaddstaff_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_staff (fname,mname,lname,address,email,doj,status,password,Type,Designation) values ('" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + DateTime.Today.Date + "','" + "Active" + "','" + "password" + "','" + "manager" + "','" + "manager" + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Staff Added Successfully')</script>");
        Random rand = new Random();
        Session["Email"] = txtemail.Text;
        int OTP = rand.Next(111111, 999999);
        Session["OTP"] = OTP;
        string name1 = txtfname.Text;
        string pass = "password";

        if (pass_email.sendPassword(Session["Email"].ToString(), pass, name1))
        {

        }
        else
        {
           
        }
    }
}