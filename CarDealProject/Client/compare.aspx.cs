using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_compare : System.Web.UI.Page
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
        tbl.Visible = false;
        if(!IsPostBack){
        SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_CarDetails where Car_Status='"+"Active"+"'",con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        first.DataSource = dt;
        first.DataTextField = "Car_Name";
        first.DataValueField = "Car_Id";
        first.DataBind();
        first.Items.Insert(0,"Select");
    }
        
    }
    protected void first_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbl.Visible = false;
        SqlDataAdapter adt1 = new SqlDataAdapter("select * from tbl_CarDetails where Car_Status='" + "Active" + "' and Car_Id not in (select Car_Id from tbl_CarDetails where Car_Id='" + first.SelectedValue + "')", con);
        DataTable dt1 = new DataTable();
        adt1.Fill(dt1);
        second.DataSource = dt1;

        second.DataTextField = "Car_Name";
        second.DataValueField = "Car_Id";
        second.DataBind();
        second.Items.Insert(0, "Select");
    }
    protected void second_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbl.Visible = true;
        SqlDataAdapter adt1 = new SqlDataAdapter("select top(1) * from tbl_CarDetails where Car_Id ='" + first.SelectedValue + "' or Car_Id ='" + second.SelectedValue + "' ", con);
        DataTable dt1 = new DataTable();
        adt1.Fill(dt1);
        SqlDataAdapter kl = new SqlDataAdapter("select * from tbl_Category where Category_Id='"+dt1.Rows[0]["Category_Id"]+"'",con);
        DataTable kl1 = new DataTable();
        kl.Fill(kl1);
        name.Text = dt1.Rows[0]["Car_Name"].ToString();
        price.Text = "₹ " + dt1.Rows[0]["Car_Price"].ToString()+"/-";
        height.Text = dt1.Rows[0]["Car_Height"].ToString();
        width.Text = dt1.Rows[0]["Car_Width"].ToString();
        capacity.Text = dt1.Rows[0]["Car_Capacity"].ToString();
        engine.Text = dt1.Rows[0]["Car_Engine"].ToString();
        fule.Text = dt1.Rows[0]["Car_Fule_Type"].ToString();
        mileage.Text = dt1.Rows[0]["Car_Mileage"].ToString();
        model.Text = dt1.Rows[0]["Car_Model"].ToString();
        category.Text = kl1.Rows[0]["Category_Name"].ToString();
        fule.Text = dt1.Rows[0]["Car_Fule_Type"].ToString();
        transmission.Text = dt1.Rows[0]["Car_Transmission_Type"].ToString();
        gear.Text = dt1.Rows[0]["Car_Gear"].ToString();
        airbag.Text = dt1.Rows[0]["Car_Airbag"].ToString();
        colour.Text = dt1.Rows[0]["Car_Colour"].ToString();


        if (dt1.Rows[0]["Car_Safety"].ToString() == "1")
        {
            tank.Text = "<i class='fa fa-check' style='font-size:20px'></i>";
        }
        else
        {
            tank.Text = "<i class='fa fa-close' style='font-size:20px'></i>";
        }

        SqlDataAdapter adt = new SqlDataAdapter("select top(1) * from tbl_CarDetails where Car_Id ='" + first.SelectedValue + "' or Car_Id ='" + second.SelectedValue + "' order by Car_Id DESC ", con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        SqlDataAdapter kl3 = new SqlDataAdapter("select * from tbl_Category where Category_Id='" + dt.Rows[0]["Category_Id"] + "'", con);
        DataTable kl2 = new DataTable();
        kl3.Fill(kl2);
        name1.Text = dt.Rows[0]["Car_Name"].ToString();
        price1.Text = "₹ " + dt.Rows[0]["Car_Price"].ToString() + "/-";
        height1.Text = dt.Rows[0]["Car_Height"].ToString();
        width1.Text = dt.Rows[0]["Car_Width"].ToString();
        capacity1.Text = dt.Rows[0]["Car_Capacity"].ToString();
        engine1.Text = dt.Rows[0]["Car_Engine"].ToString();
        fule1.Text = dt.Rows[0]["Car_Fule_Type"].ToString();
        mileage1.Text = dt.Rows[0]["Car_Mileage"].ToString();
        model1.Text = dt.Rows[0]["Car_Model"].ToString();
        category1.Text = kl2.Rows[0]["Category_Name"].ToString();
        fule1.Text = dt.Rows[0]["Car_Fule_Type"].ToString();
        transmission1.Text = dt.Rows[0]["Car_Transmission_Type"].ToString();
        gear1.Text = dt.Rows[0]["Car_Gear"].ToString();
        airbag1.Text = dt.Rows[0]["Car_Airbag"].ToString();
        colour1.Text = dt.Rows[0]["Car_Colour"].ToString();



        if (dt.Rows[0]["Car_Safety"].ToString() == "1")
        {
            tank1.Text = "<i class='fa fa-check' style='font-size:20px'></i>";
        }
        else
        {
            tank1.Text = "<i class='fa fa-close' style='font-size:20px'></i>";
        }
        }
}