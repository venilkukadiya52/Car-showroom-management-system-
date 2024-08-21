using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_enterotp : System.Web.UI.Page
{
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
    protected void btnverify_Click(object sender, EventArgs e)
    {
        if (Session["OTP"].ToString() == txtotp.Text)
        {
            Response.Redirect("passandconpass.aspx");
        }
        else
        {
            Response.Write("<script>alert('Enter Valid OTP')</script>");
           
        }
    }
}