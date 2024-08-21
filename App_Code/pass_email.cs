using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for pass_email
/// </summary>
public class pass_email
{
    public string EmailID { get; set; }

    public static bool sendPassword(string EmailID, string pass, string name)
    {
        String To, From, Password, Mail;
        To = EmailID;
        From = "19bmiit072@gmail.com";
        Password = "venil5002@";

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(From);
        msg.To.Add(To);
        msg.Subject = "Car Deal - Manager password!!";
        msg.Body = "<h2>Dear "+ name +"</h2><br><h3>Your Account Password Is : <b><mark>" + pass + "</mark></b></h3>";
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

    public static bool SendPassword(string p, string OTP, string name)
    {
        throw new NotImplementedException();
    }
}