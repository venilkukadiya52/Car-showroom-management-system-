using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class Client_Index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
    SqlCommand c = new SqlCommand();
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



        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        //SqlCommand cmd = new SqlCommand("select  Top(3) Car_Id from tbl_Booking GROUP BY Car_Id ORDER BY count(Car_Id) DESC", con);
        //DataTable bh = new DataTable();
        //SqlDataAdapter adr = new SqlDataAdapter(cmd);
        //adr.Fill(bh);

        SqlCommand cmd = new SqlCommand("select  Top(3) * from tbl_CarDetails ORDER BY count DESC", con);
        DataTable bh = new DataTable();
        SqlDataAdapter adr = new SqlDataAdapter(cmd);
        adr.Fill(bh);
        Repeater1.DataSource = bh;
           Repeater1.DataBind();

           SqlCommand cmd4 = new SqlCommand("select  Top(3) * from tbl_CarDetails ORDER BY Car_Id DESC", con);
           DataTable bha = new DataTable();
           SqlDataAdapter adrr = new SqlDataAdapter(cmd4);
           adrr.Fill(bha);
           latest.DataSource = bha;
           latest.DataBind();

           SqlCommand cmd5 = new SqlCommand("select  Top(3) * from tbl_CarDetails ORDER BY viewcount DESC", con);
           DataTable bhar = new DataTable();
           SqlDataAdapter adrrr = new SqlDataAdapter(cmd5);
           adrrr.Fill(bhar);
           searched.DataSource = bhar;
           searched.DataBind();

        // SqlCommand cmd1 = new SqlCommand("select Car_Id from (select count(Car_Id),Car_Id from tbl_Booking GROUP BY Car_Id ORDER BY count(Car_Id) DESC) limit 1,1", con);
        //int a = (int)cmd1.ExecuteScalar();
       
        //Label1.Text = g + "";
        //for (int i = 0; i < g; i++ )
        //{
        //    SqlCommand c = new SqlCommand("select * from tbl_CarDetails where Car_Id='" + bh.Rows[i]["Car_Id"] + "'", con);
        //    SqlDataAdapter adt = new SqlDataAdapter(c);
        //    DataTable dt = new DataTable();
        //    adt.Fill(dt);
        //    Repeater1.DataSource = dt;
        //    Repeater1.DataBind();

            
        //}

        SqlCommand cm = new SqlCommand("select u.*,f.* from tbl_Feedback AS f INNER JOIN tbl_UserDetails AS u ON f.User_Id=u.User_Id", con);
        SqlDataAdapter ad = new SqlDataAdapter(cm);
        DataTable d = new DataTable();
        ad.Fill(d);
        Repeater2.DataSource = d;
        Repeater2.DataBind();
    }



    /*protected void view_Click(object sender, EventArgs e)
    {
        LinkButton j = (LinkButton)sender;
        int i = Convert.ToInt32(j.CommandArgument);
        Session["i"] = "" + i;
        Response.Redirect("Cars.aspx");
    }*/

    protected void btnviewmore_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);

        Session["p"] = id;
        Response.Redirect("inner.aspx");
    }
    protected void Click1(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);

        Session["p"] = id;
        Response.Redirect("inner.aspx");
    }
    protected void Click2(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);

        Session["p"] = id;
        Response.Redirect("inner.aspx");
    }
}