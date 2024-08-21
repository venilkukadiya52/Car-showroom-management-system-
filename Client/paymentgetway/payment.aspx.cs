using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Paytm;

public partial class Client_payment_getway_payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");
    int hgf;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] == null)
        {
            Response.Redirect("../Login.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('you have to login first')", true);
        }
        string merchantKey = "rKFy9v9vGjp7ajt5";  //Change this constant's value with Merchant key
        Random rand = new Random();
        hgf = rand.Next(111111, 999999);
        Dictionary<string, string> parameters = new Dictionary<string, string>();

        parameters.Add("MID", "TYmwCE61492093834199");
        parameters.Add("CHANNEL_ID", "WEB");
        parameters.Add("INDUSTRY_TYPE_ID", "Retail");
        parameters.Add("WEBSITE", "WEBSTAGING");
        //parameters.Add("EMAIL", txtemailid.Text);
        //parameters.Add("MOBILE_NO", txtcontactno.Text);
        parameters.Add("CUST_ID", "vk123");
        parameters.Add("ORDER_ID", hgf.ToString());
        parameters.Add("TXN_AMOUNT", "25000");
        parameters.Add("CALLBACK_URL", "http://localhost:20466/CarDealProject/Client/paytm/PaytmResponse.aspx");


        string checksum = Paytm.Checksum.generateSignature(parameters, merchantKey);

        //bool verifySignature = Paytm.Checksum.verifySignature(parameters, merchantKey, checksum);
        //Response.Write(checksum + "<br>");
        //Response.Write(verifySignature+"<br>");

        //if (verifySignature.ToString() == "True" )
        //{
        string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";
        string outputHTML = "<html>";
        outputHTML += "<head>";
        outputHTML += "<title>Merchant check out page</title>";
        outputHTML += "</head>";
        outputHTML += "<body>";
        outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
        outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
        outputHTML += "<table border='1'>";
        outputHTML += "<tbody>";
        foreach (string Key in parameters.Keys)
        {
            outputHTML += "<input type='hidden' name='" + Key + "' value='" + parameters[Key] + "'>";
        }
        outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
        outputHTML += "</tbody>";
        outputHTML += "</table>";
        outputHTML += "<script type='text/javascript'>";
        outputHTML += "document.f1.submit();";
        outputHTML += "</script>";
        outputHTML += "</form>";
        outputHTML += "</body>";
        outputHTML += "</html>";
        Response.Write(outputHTML);

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //    con.Open();

        //    SqlCommand c = new SqlCommand("select * from tbl_Booking where Car_Id = '" + Request.QueryString[0] + "' and User_Id='" + Request.QueryString[1] + "'", con);
        //    //int i =  c.ExecuteNonQuery();
        //    SqlDataAdapter adt = new SqlDataAdapter(c);
        //    DataTable dt = new DataTable();
        //    adt.Fill(dt);



        //    if (dt.Rows.Count == 0)
        //    {

        //        SqlCommand cmd = new SqlCommand("insert into tbl_Booking (Car_Id,User_Id,Booking_Status,Booking_Date,Booking_Amount,Payment_Mode)values('" + Request.QueryString[0] + "','" + Request.QueryString[1] + "','" + "Booked" + "','" + DateTime.Today + "','"+25000+"','"+"Online"+"')", con);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        Response.Write("<script>alert('Car Booked Successfully')</script>");

        //        //Response.Redirect("../Cars.aspx");
        //        //ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERT", "alert('heeloo');", true);
        //        Response.Write("<script language='javascript'>window.alert('Car Booked Successfully');window.location='../Cars.aspx';</script>");
        //    }
        //    else
        //    {
        //        //Response.Write("<script>alert('Car mBooked Successfully')</script>");
        //        //Response.Redirect("../Cars.aspx");
        //        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('This Car Already Booked');window.open('../Cars.aspx');", true);
        //        Response.Write("<script language='javascript'>window.alert('This Car Was Already Booked By you');window.location='../Cars.aspx';</script>");
        //    }
        //   }
    }
}
