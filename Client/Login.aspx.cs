using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Text;

public partial class Client_Login : System.Web.UI.Page
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

        lblerror.Visible = false;
        if (con.State == ConnectionState.Open)
        {
            con.Close();

        }
     
    }


    protected void login_Click(object sender, EventArgs e)
    {
        string p = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text,"SHA1");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_UserDetails where Email='" + username.Text + "' and Password='" + p + "'", con);

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        con.Close();
        if (dt.Rows.Count != 0)
        {
            Session["Type"] = dt.Rows[0]["Type"];
            Session["username"] = dt.Rows[0]["Name"];
            Session["BlockNo"] = dt.Rows[0]["BlockNo"];
            Session["StreetName"] = dt.Rows[0]["StreetName"];
            Session["Country"] = dt.Rows[0]["Country"];
            Session["State"] = dt.Rows[0]["State"];
            Session["City"] = dt.Rows[0]["City"];
            Session["Pincode"] = dt.Rows[0]["Pincode"];
            Session["Email"] = dt.Rows[0]["Email"];
            Session["Password"] = dt.Rows[0]["Password"];
            Session["ContactNo"] = dt.Rows[0]["ContactNo"];
            Session["booking"] = null;
            Session["userid"] = dt.Rows[0]["User_Id"];
            if (Session["Type"].ToString() == "customer")
                
            {
                sendemail();
                Response.Redirect("Index.aspx");

            }
            else if (Session["Type"].ToString() == "admin")
            {
                Response.Redirect("../Admin/Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Enter Valid UserName Or Password')</script>");
            }
        }
        else
        {
            con.Open();
            
            SqlCommand c = new SqlCommand("select * from tbl_staff where email='" + username.Text + "' and password='" + p+ "'", con);

            
            DataTable d = new DataTable();
            SqlDataAdapter a = new SqlDataAdapter(c);
            a.Fill(d);
            con.Close();
            try{
                Session["username"] = d.Rows[0]["fname"];
            Session["userid"] = d.Rows[0]["id"];
            if (d.Rows[0]["Type"].ToString() == "manager")
            {
                Response.Redirect("../Manager/Default.aspx");
            }
            }
           catch
            {
                Response.Write("<script>alert('Enter Valid UserName Or Password')</script>");
            }
        }
    }

    private void sendemail()
    {
        SqlDataAdapter a = new SqlDataAdapter("select b.*,u.*,c.* from tbl_Booking AS b INNER JOIN tbl_UserDetails AS u ON b.User_Id=u.User_Id INNER JOIN tbl_CarDetails AS c ON b.Car_Id=c.Car_Id where c.Car_Id=b.Car_Id and b.Booking_Status='" + "Booked" + "' and u.User_Id='" + Session["userid"] + "'", con);
        DataTable dt = new DataTable();
        a.Fill(dt);
        int count = dt.Rows.Count;

        SqlDataAdapter ad6 = new SqlDataAdapter("select * from tbl_Booking where User_Id='"+Session["userid"]+"'",con);
        DataTable dt6 = new DataTable();
        ad6.Fill(dt6);
        
        if (dt.Rows.Count > 0)
        {
            //SqlDataAdapter ad = new SqlDataAdapter("select * from tbl_UserDetails where User_Id='" + Session["userid"] + "'", con);
            //DataTable d = new DataTable();
            //ad.Fill(d);

            //SqlDataAdapter add = new SqlDataAdapter("select * from tbl_CarDetails where Car_Id='" + dt.Rows[0]["Car_Id"] + "'", con);
            //DataTable d1 = new DataTable();
            //add.Fill(d1);
            
            Session["ema"] = dt.Rows[0]["Email"];
            string name1 = dt.Rows[0]["Name"] + "";
            
            while (count > 0)
            {
        //        DateTime secondDate = DateTime.Now;
        //        var firstDate = dt.Rows[count - 1]["Booking_Date"];
                //        var firstDate = new DateTime(dt.Rows[count - 1]["Booking_Date"]);
                //var secondDate = DateTime.Now;
                //        var diff2 = secondDate - firstDate;
        //        DateTime diff = secondDate.Subtract(firstDate);

                if (email.sendEmail(Session["ema"].ToString(), dt.Rows[count - 1]["Car_Name"].ToString(), Session["username"].ToString(), dt.Rows[count - 1]["Booking_Date"].ToString()))
                {

                }
                else
                {

                }
                count -= 1;
            }
        }

    }

}