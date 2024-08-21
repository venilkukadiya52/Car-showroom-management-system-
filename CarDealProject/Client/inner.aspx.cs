using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Text;


public partial class Client_inner : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
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
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter nj = new SqlDataAdapter("select m.*,c.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.Car_Id where m.Car_Id='" + Session["p"] + "'", con);
            DataTable jk = new DataTable();
            nj.Fill(jk);
            Repeater1.DataSource = jk;
            Repeater1.DataBind();
            //model.DataSource = jk;
            //model.DataTextField = "Model_Name";
            //model.DataValueField = "car_id";
            //model.DataBind();
            //model.Items.Insert(0, "Select");

            SqlDataAdapter n = new SqlDataAdapter("select * from tbl_CarDetails where Car_Id='" + Session["p"] + "'", con);
            DataTable l = new DataTable();
            n.Fill(l);
            int c = Convert.ToInt32(l.Rows[0]["viewcount"]) + 1;
            SqlCommand mk = new SqlCommand("update tbl_CarDetails set viewcount='" + c + "' where Car_Id='" + Session["p"] + "'", con);
            mk.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand("select c.*,ca.* from tbl_CarDetails c INNER JOIN tbl_Category ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + Session["p"] + "'", con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);

            car.DataSource = dt;
            //car.DataSource = d;
            car.DataBind();
            con.Close();

            car.Visible = true;
        }
    }

    protected void btnviewquatation2_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);

        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        string companyName = "Car Deal";
        string orderNo = "Client";
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[2] {
                            new DataColumn("Details ", typeof(string)),
                            new DataColumn(" Amount ", typeof(string))
                            
                            
    });

        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

        // SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\GUI\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("select * from tbl_Model where id='" + id + "'", con);
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable d = new DataTable();
        ad.Fill(d);

        int i = d.Rows.Count;

        int price = Convert.ToInt32(d.Rows[0]["price"]);
        //int.TryParse(d.Rows[0]["Car_Price"], out price);

        int gst = price * 18 / 100;

        Session["gst"] = "(18%)GST : " + gst.ToString();
        string s1 = " D:/6 sem/CarDealProject/Client/assets/images/cardeal1.png";
        Session["lblinsurance"] = "(100%)Insurance of your car : " + price;
        int insurance = price * 16 / 100;
        int insurance2 = price * 16 / 100 / 24;
        Session["emai"] = "Emi / Month : " + insurance;
        int total = price + gst + insurance;
        int total2 = price + gst;
        Session["total"] = "On Road Price : " + total.ToString();


        //dt.Rows.Add(d.Rows[0]["Car_Name"], d.Rows[0]["Car_Price"]);

        con.Close();

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td><img src='");
                sb.Append(s1);
                sb.Append("'  width=70 height=70 /></td><td align='center' style='background-color: #18B5F0' colspan = '2'><h2><b>Car Quatation</b></h2></td></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Company Name:</b>");
                sb.Append(companyName);
                sb.Append("</td><td align = 'right'><b>Date : </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Use For : </b>");
                sb.Append(orderNo);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '1'>");
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<b><th align = 'center' style = 'background-color: #D20B0C;color:black'></b>");
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




                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Car Name</td>");
                sb.Append("<td>");
                sb.Append(d.Rows[0]["Model_Name"]);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Car price</td>");
                sb.Append("<td>");
                sb.Append(d.Rows[0]["price"]);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>GST(18% )</td>");
                sb.Append("<td>");
                sb.Append(gst);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Insurance total amount for 24 month</td>");
                sb.Append("<td>");
                sb.Append(insurance);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'> Insurance per month price</td>");
                sb.Append("<td>");
                sb.Append(insurance2);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>On Road Price without insurance</td>");
                sb.Append("<td>");
                sb.Append(total2);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>");
                sb.Append("<td>");
                sb.Append("");
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>On Road Price with insurance</td>");
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
                Response.AddHeader("content-disposition", "attachment;filename=Quatation_" + d.Rows[0]["Model_Name"] + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }
    }
    protected void viewmodel(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int ii = Convert.ToInt32(btn.CommandArgument);

        SqlDataAdapter adt = new SqlDataAdapter("select * from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON ca.Category_Id=c.Category_Id where m.id='" + ii + "'", con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        car.Visible = false;
        Repeater2.DataSource = dt;

        Repeater2.DataBind();
    }


    //protected void search_Click(object sender, EventArgs e)
    //{
    //    SqlDataAdapter adt = new SqlDataAdapter("select c.*,m.*,ca.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where m.car_id='" + model.SelectedValue + "'", con);
    //    DataTable dt = new DataTable();
    //    adt.Fill(dt);
    //    car.Visible = false;
    //    Repeater2.DataSource = dt;

    //    Repeater2.DataBind();
    //}

    protected void book_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        Session["x"] = id;
        Session["booking"] = 1;
        Response.Redirect("paymentgetway/payment.aspx");
    }

    //protected void model_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlDataAdapter adt = new SqlDataAdapter("select c.*,m.*,ca.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + model.SelectedValue + "'", con);
    //    DataTable dt = new DataTable();
    //    adt.Fill(dt);
    //    car.Visible = false;

    //    Repeater2.DataSource = dt;

    //    Repeater2.DataBind();
    //}

    protected void btnviewquatation_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        int id = Convert.ToInt32(btn.CommandArgument);

        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        string companyName = "Car Deal";
        string orderNo = "Client";
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[2] {
                            new DataColumn("Details ", typeof(string)),
                            new DataColumn(" Amount ", typeof(string))
                            
                            
    });

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

        // SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\GUI\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("select c.*,ca.* from tbl_CarDetails c INNER JOIN tbl_Category ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + id + "'", con);
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable d = new DataTable();
        ad.Fill(d);

        int i = d.Rows.Count;

        int price = Convert.ToInt32(d.Rows[0]["Car_Price"]);
        //int.TryParse(d.Rows[0]["Car_Price"], out price);

        int gst = price * 18 / 100;

        Session["gst"] = "(18%)GST : " + gst.ToString();
        string s1 = " D:/6 sem/CarDealProject/Client/assets/images/cardeal1.png";
        Session["lblinsurance"] = "(100%)Insurance of your car : " + price;
        int insurance = price * 16 / 100;
        int insurance2 = price * 16 / 100 / 24;
        Session["emai"] = "Emi / Month : " + insurance;
        int total = price + gst + insurance;
        int total2 = price + gst;
        Session["total"] = "On Road Price : " + total.ToString();


        //dt.Rows.Add(d.Rows[0]["Car_Name"], d.Rows[0]["Car_Price"]);

        con.Close();

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td><img src='");
                sb.Append(s1);
                sb.Append("'  width=70 height=70 /></td><td align='center' style='background-color: #18B5F0' colspan = '2'><h2><b>Car Quatation</b></h2></td></tr>");
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Company Name:</b>");
                sb.Append(companyName);
                sb.Append("</td><td align = 'right'><b>Date : </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Use For : </b>");
                sb.Append(orderNo);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '1'>");
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<b><th align = 'center' style = 'background-color: #D20B0C;color:black'></b>");
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




                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Car Name</td>");
                sb.Append("<td>");
                sb.Append(d.Rows[0]["Car_Name"]);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Car price</td>");
                sb.Append("<td>");
                sb.Append(d.Rows[0]["Car_Price"] + " - " + d.Rows[0]["Car_To_Price"]);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>GST(18% )</td>");
                sb.Append("<td>");
                sb.Append(gst);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Insurance total amount for 24 month</td>");
                sb.Append("<td>");
                sb.Append(insurance);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'> Insurance per month price</td>");
                sb.Append("<td>");
                sb.Append(insurance2);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>On Road Price without insurance</td>");
                sb.Append("<td>");
                sb.Append(total2);
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>");
                sb.Append("<td>");
                sb.Append("");
                sb.Append("</td>");
                sb.Append("</tr>");

                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>On Road Price with insurance</td>");
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
                Response.AddHeader("content-disposition", "attachment;filename=Quatation_" + d.Rows[0]["Car_Name"] + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }
    }
    //protected void model_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlDataAdapter adt = new SqlDataAdapter("select c.*,m.*,ca.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + model.SelectedValue + "'", con);
    //    DataTable dt = new DataTable();
    //    adt.Fill(dt);
    //    car.Visible = false;
    //    Repeater2.DataSource = dt;

    //    Repeater2.DataBind();
    //}
    //protected void model_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    SqlDataAdapter adt = new SqlDataAdapter("select c.*,m.*,ca.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + model.SelectedValue + "'", con);
    //    DataTable dt = new DataTable();
    //    adt.Fill(dt);
    //    car.Visible = false;
    //    Repeater2.DataSource = dt;

    //    Repeater2.DataBind();
    //}
    //protected void model_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlDataAdapter adt = new SqlDataAdapter("select c.*,m.*,ca.* from tbl_Model AS m INNER JOIN tbl_CarDetails AS c ON c.Car_Id=m.car_id INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where m.id='" + model.SelectedValue + "'", con);
    //    DataTable dt = new DataTable();
    //    adt.Fill(dt);
    //    car.Visible = false;
    //    Repeater2.DataSource = dt;

    //    Repeater2.DataBind();
    //}
}