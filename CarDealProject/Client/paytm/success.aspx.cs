using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_paytm_success : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
    int hgf;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string OID = string.Empty;

        if (Session["ORDER_ID"] != null)
        {
            OID = Session["ORDER_ID"].ToString();
            Session.Remove("ORDER_ID");
        }
        lblOrderID.Text = OID;
         con.Open();

        SqlCommand c = new SqlCommand("select * from tbl_Booking where Car_Id = '" + Session["x"] + "' and User_Id='" + Session["userid"] + "' and Booking_Status='"+"Booked"+"'", con);
        //int i =  c.ExecuteNonQuery();
        SqlDataAdapter adt = new SqlDataAdapter(c);
        DataTable dt = new DataTable();
        adt.Fill(dt);


        if (Session["booking"] != null)
        {
            if (dt.Rows.Count == 0)
            {
               
                SqlCommand cmd = new SqlCommand("insert into tbl_Booking (Car_Id,User_Id,Booking_Status,Booking_Date,Booking_Amount,Payment_Mode)values('" + Session["x"] + "','" + Session["userid"] + "','" + "Booked" + "','" + DateTime.Now + "','" + 25000 + "','" + "Online" + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('This car was already booked by you');window.location='../Cars.aspx';</script>");
            }

        }
        else {
            SqlCommand cm = new SqlCommand("insert into tbl_Service1 (User_Id,Service_Type,Car_Id,total,Date,Payment_Mode) values('" + Session["userid"] + "','" + Session["service"] + "','" + Convert.ToInt32(Session["cid"]) + "','" + Session["tprice"] + "','" + Session["datebook"] + "','"+"Online"+"')", con);
            cm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Service Booked Successfully')</script>");
           
        }

        

        Response.Redirect("../Cars.aspx");

    }
        

        
    
}