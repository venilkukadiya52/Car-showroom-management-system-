using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class Client_service_date : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
    int total;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            down.Visible = false;

        }
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
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

    }
    protected void booking_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Service1 where Date='" + date.Text  + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);

        SqlCommand cmd1 = new SqlCommand("select * from tbl_Service1 where Service_Type='"+Session["service"]+"' and Car_Id='" + Session["cid"] + "' and Date='"+date.Text+"'", con);
        SqlDataAdapter aadt = new SqlDataAdapter(cmd1);
        DataTable dta = new DataTable();
        aadt.Fill(dta);
        if (dt.Rows.Count <  3)
        {

            if (dta.Rows.Count == 0)
            {
                Session["datebook"] = date.Text;
                Response.Redirect("Car-InnerPage.aspx");
            }
            else {
                Response.Write("<script>alert('You Already Booked Service For Your Car')</script>");
            
            }
        }
        else
        {
            // Response.Write("<script>window.alert('On This Date You Can't Take Sevice ,Please Choose Another One!!')</script>");
            Response.Write("<script>window.alert('this date is already booked please change date')</script>");
        }
    }

    protected void down_Click(object sender, EventArgs e)
    {



        string companyName = "Car Deal";
        int orderNo = 1;
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[2] {
                           
                          
                           
                            new DataColumn("Service_Name", typeof(string)),
                             new DataColumn("Service_Price", typeof(string))
    });

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

        //  SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\GUI\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("select s.*,c.* from tbl_Service1 AS s INNER JOIN tbl_CarDetails AS c ON s.Car_Id=c.Car_Id where s.User_Id='" + Session["userid"] + "' and s.Car_Id='" + Session["cid"] + "' and s.Service_Type='" + Session["service"] + "'", con);
        SqlCommand cmd1 = new SqlCommand("select * from tbl_ServiceCetagory where Service_Type='" + Session["service"] + "'", con);
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable d = new DataTable();
        ad.Fill(d);
        int i = d.Rows.Count;

        SqlDataAdapter ad1 = new SqlDataAdapter(cmd1);
        DataTable d1 = new DataTable();
        ad1.Fill(d1);
        int i1 = d.Rows.Count;

        string image = "D:/6 sem/CarDealProject/Images/superbmain.jpg";
        string user = Session["username"] + "";
        string cname = d.Rows[0]["Car_Name"] + "";
        string cprice = "" + d.Rows[0]["Car_Price"];
        string stype = "" + Session["service"];

        int s = d1.Rows.Count;
        while (s > 0)
        {
            dt.Rows.Add(d1.Rows[s - 1][1], d1.Rows[s - 1][2]);
            total += Convert.ToInt32(d1.Rows[s - 1][2]);
            s = s - 1;
        }
        con.Close();

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><h2><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Car Service Bill</b></td></h2></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                //sb.Append("<tr><td><img src='");
                //sb.Append(image);
                //sb.Append("' style='height:100px;' /></td></tr>");
                //sb.Append("<div class=col-sm-4 col-6> <div><img src='");
                //sb.Append(image);
                //    sb.Append("' alt='' class='img-fluid'></div><br></div>");
                sb.Append("<td><b>Order No: </b>");
                sb.Append(orderNo);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                sb.Append(companyName);
                sb.Append("</td></tr>");
                sb.Append("<tr><td colspan = '2'><b>User Name: </b>");
                sb.Append(user);
                sb.Append("</td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Car Name: </b>");
                sb.Append(cname);
                sb.Append("</td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Car Price: </b>");
                sb.Append(cprice);
                sb.Append("</td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Service Type: </b>");
                sb.Append(stype);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '1'>");
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<b><th style = 'background-color: #f06f06;color:black'></b>");
                    sb.Append(column.ColumnName);
                    sb.Append("</th>");
                }
                sb.Append("</tr>");
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<td>");
                        sb.Append(row[column]);
                        sb.Append("</td>");
                    }
                    sb.Append("</tr>");
                }
                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Total Amount</td>");
                sb.Append("<td>");
                sb.Append(total);
                sb.Append("</td>");
                sb.Append("</tr></table>");

                //Export HTML String as PDF.
                StringReader sr = new StringReader(sb.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Service_" + d.Rows[0]["Car_Name"] + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }

    }
}