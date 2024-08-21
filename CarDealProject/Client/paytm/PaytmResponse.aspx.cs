using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_paytm_PaytmResponse : System.Web.UI.Page
{
     
    string merchantKey = "rKFy9v9vGjp7ajt5";  //Change this constant's value with Merchant key
    Dictionary<string, string> paramList = new Dictionary<string, string>();
    protected void Page_Load(object sender, EventArgs e)
    {
       Response.Redirect("success.aspx");
        Response.Write("<script>window.location.assign('success.aspx')</script>");
        string paytmChecksum = string.Empty;
        foreach (string key in Request.Form.Keys)
        {
            if (key.Equals("CHECKSUMHASH"))
            {
                paytmChecksum = Request.Form[key];
            }
            else
            {
                paramList.Add(key.Trim(), Request.Form[key].Trim());
            }
        }
        bool isValidChecksum = Paytm.Checksum.verifySignature(paramList, merchantKey, paytmChecksum);
        //string TXNID = paramList["TXNID"];
        Session["ORDER_ID"] = paramList["ORDERID"];

        if (isValidChecksum)
        {
            if (paramList["STATUS"].Equals("TXN_SUCCESS"))
            {
                Response.Redirect("success.aspx");
            }
        }
        else
        {
            Response.Redirect("success.aspx");
            //Send Order
            Response.Redirect("<script>window.location.assign('success.aspx')</script>");
        }
    }
}