using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for login_otp
/// </summary>
public class login_otp
{
  
    public string EmailID { get; set; }

    public static bool SendOTP(string EmailID, int OTP,string name)
    {
        String To, From, Password, Mail;
        To = EmailID;
        From = "19bmiit072@gmail.com";
        Password = "venil5002@";

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(From);
        msg.To.Add(To);
        msg.Subject = "Email Verification";
        msg.Body = "<h2>Dear " + name + "</h2> Welcome to Car Deal<br>OTP For Your Account Email Verification : " + OTP + "</h2>";
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