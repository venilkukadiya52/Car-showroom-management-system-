using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Forgotpassword : System.Web.UI.Page
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

       
    }
    protected void forgot_Click(object sender, EventArgs e)
    {
        
        
        string name;
        

        SqlCommand cmd = new SqlCommand("select * from tbl_UserDetails where Email='" + email.Text + "'", con);

        
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        try
        {
            Session["Password"] = dt.Rows[0]["Password"];
            Session["n"] = dt.Rows[0]["Name"];
        }
        catch
        {
            Response.Write("<script>alert('Enter Valid UserName Or Password')</script>");
        }

        name = Session["n"].ToString();
        Random rand = new Random();
        Session["Email"] = email.Text;
        int OTP = rand.Next(111111, 999999);
        Session["OTP"] = OTP;
        if (login_otp.SendOTP(Session["Email"].ToString(), OTP, name))
        {
            Response.Redirect("enterotp.aspx");
        }
        else
        {
            Response.Write("Something Is Wrong! OTP is not send!! Try Again");
        }
       
    }

   
    
}