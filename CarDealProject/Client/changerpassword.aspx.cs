using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Client_changerpassword : System.Web.UI.Page
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
     
        
    }
    protected void update_Click(object sender, EventArgs e)
    {
        if (pass.Text == conpass.Text)
        {
            con.Open();
            string p = FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Text, "SHA1");
            SqlCommand cmd = new SqlCommand("update tbl_UserDetails set Password='" +p + "' where User_Id='" + Session["userid"] + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Password Changed Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Enter Valid Password')</script>");
        }
    }
}