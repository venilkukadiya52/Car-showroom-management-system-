using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Write("<script language='javascript'>window.alert('You Successfully Logout');window.location='../Client/login.aspx';</script>");

    }
}