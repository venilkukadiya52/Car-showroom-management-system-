using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for pass_email
/// </summary>
public class email
{
    public string EmailID { get; set; }

    public static bool sendEmail(string EmailID, string pass, string name,string date)
    {
        String To, From, Password, Mail;
        To = EmailID;
        From = "19bmiit072@gmail.com";
        Password = "venil5002@";

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(From);
        msg.To.Add(To);
        msg.Subject = "Car Deal - Your Booked Car!!";
        //msg.Body = "<h2>Dear "+ name +"</h2><br><h3>Car Name : <b>" + pass + "</b></h3><br><p>Your are Booked This Cars on "+date+". Please Buy Your Dream Car </p><br><br>Thank You!<br>Car Deal";
        msg.Body = "<center><table style='background-color:#072654;border-color:#114496;width:300px;color:white' ><b><tr><th>Dear " + name + "<h2>Car Name : " + pass + "</h2></th></tr><tr><td><br>Your are Booked This Cars on " + date + ". Please Buy Your Dream Car</td></tr></b><br><tr><td>Thank You!<br>Car Deal</td></tr></table></center>";
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