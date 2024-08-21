using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for login_otp
/// </summary>
public class Offer_otp
{
  
    public string EmailID { get; set; }

    public static bool SendOTP(string EmailID, int OTP,string name,string cname)
    {
        String To, From, Password, Mail;
        To = EmailID;
        From = "19bmiit072@gmail.com";
        Password = "venil5002@";

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(From);
        msg.To.Add(To);
        msg.Subject = "Offer!!";
        msg.Body = "<center><table style='background-color:#d4d6d9;border-color:#114496;width:300px;' ><b><tr><th><h2>Coupan Code</h2></th></tr><br><tr><td>Dear " + name + "</td></tr> <tr><td><br>Coupon Code : <mark>" + OTP + "</mark> for " + cname + " </td></tr></b></table></center><br><br><br>*T&C<br>-This Coupan Code Is Applicable For 3 Times Only<br>-Using This Code You Can Take Service For Free";
        msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(From, Password);

        try
        {
            smtp.Send(msg);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }
}