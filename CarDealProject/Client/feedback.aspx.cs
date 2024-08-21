using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
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

        if (Session["userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        SqlCommand cm = new SqlCommand("select u.*,f.* from tbl_Feedback AS f INNER JOIN tbl_UserDetails AS u ON f.User_Id=u.User_Id", con);
        SqlDataAdapter ad = new SqlDataAdapter(cm);
        DataTable d = new DataTable();
        ad.Fill(d);
        Repeater2.DataSource = d;
        Repeater2.DataBind();

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tbl_Feedback (feedback,User_Id) values ('" + message.Text + "','" + Session["userid"] + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Feedback Send Successfully')</script>");
    }
}