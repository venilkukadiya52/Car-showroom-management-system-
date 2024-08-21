using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Client_Service : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    string lbl = null;
    Label l, price;
    float p;
    int count;
    float total;
    int t;
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

        if (!IsPostBack)
        {
            total = 0;
            ser1.Visible = true;
            ser2.Visible = true;
            btn.Visible = false;
        }
    }

    protected void ser1_Click(object sender, EventArgs e)
    {
        ser1.Visible = false;
        ser2.Visible = false;
        btn.Visible = true;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_ServiceCetagory where Service_Type='" + "INTERIM SERVICE" + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        count = dt.Rows.Count;
        while (count > 0)
        {
            t = t + Convert.ToInt32(dt.Rows[count-1]["Service_Price"]);
            count = count - 1;
        }
        Session["tprice"] = t.ToString();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        Session["service"] = "INTERIM SERVICE";
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("service_date.aspx");
    }
   
   

    protected void ser2_Click(object sender, EventArgs e)
    {
        ser1.Visible = false;
        ser2.Visible = false;
        btn.Visible = true;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_ServiceCetagory where Service_Type='" + "FULL SERVICE" + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        int count = dt.Rows.Count;
        while (count > 0)
        {
            t = t + Convert.ToInt32(dt.Rows[count - 1]["Service_Price"]);
            count = count - 1;
        }
        Session["tprice"] = t.ToString();
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        Session["service"] = "FULL SERVICE";
    }
}