﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for login_otp
/// </summary>
public class testdrive_otp
{
  
    public string EmailID { get; set; }

    public static bool SendOTP(string EmailID, string OTP,string name)
    {
        String To, From, Password, Mail;
        To = EmailID;
        From = "19bmiit072@gmail.com";
        Password = "venil5002@";

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(From);
        msg.To.Add(To);
        msg.Subject = "Confirmation!";
        msg.Body = "<center><table style='background-color:#072654;border-color:#114496;width:300px;color:white' ><b><tr><th><h2>Confirmation Test Drive</h2></th></tr><br><tr><td>Dear " + name + "</td></tr> <tr><td><br>Your TestDrive Request Approved for " + OTP + " </td></tr></b></table></center>";
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