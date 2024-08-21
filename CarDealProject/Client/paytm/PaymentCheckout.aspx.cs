using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Paytm;

public partial class Client_paytm_PaymentCheckout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncheckout_Click(object sender, EventArgs e)
    {
        string merchantKey = "_PCA7C2GSZgp#3Bg";  //Change this constant's value with Merchant key

        Dictionary<string, string> parameters = new Dictionary<string, string>();

        parameters.Add("MID", "ZFEmpP44145925215951");
        parameters.Add("CHANNEL_ID", "WEB");
        parameters.Add("INDUSTRY_TYPE_ID", "Retail");
        parameters.Add("WEBSITE", "WEBSTAGING");
        //parameters.Add("EMAIL", txtemailid.Text);
        //parameters.Add("MOBILE_NO", txtcontactno.Text);
        parameters.Add("CUST_ID", txtcustomerid.Text);
        parameters.Add("ORDER_ID", txtorderid.Text);
        parameters.Add("TXN_AMOUNT", txtamount.Text);
        parameters.Add("CALLBACK_URL", "https://localhost:44361/PaytmResponse.aspx");


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
    }
}