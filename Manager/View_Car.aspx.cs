using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Manager_View_Car : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }

        Repeater3.Visible = false;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_CarDetails where Car_Status = '" + "Active" + "'", con);
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        SqlCommand c = new SqlCommand("select * from tbl_CarDetails where Car_Status = '" + "Deactive" + "'", con);
        SqlDataAdapter ad = new SqlDataAdapter(c);
        DataTable d = new DataTable();
        ad.Fill(d);
        Repeater2.DataSource = d;
        Repeater2.DataBind();
        FileUpload1.Visible = false;
        FileUpload2.Visible = false;
        FileUpload3.Visible = false;
        FileUpload4.Visible = false;
        FileUpload5.Visible = false;
        FileUpload6.Visible = false;
        FileUpload7.Visible = false;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;
        int id = Convert.ToInt32(b.CommandArgument);

        

        string carname = null;
        string model = null;
        float price = 0;
        string length = null;
        string height = null;
        string width = null;
        string capacity = null;
        string engine = null;
        string fule = null;
        string mileage = null;
        string transmission = null;
        string gear = null;
        string airbox = null;
        string colour =null;
        string tyreheight = null;
       
        foreach (RepeaterItem item in Repeater3.Items)
        {
            TextBox txtName = (TextBox)item.FindControl("txtcarname");
            carname = txtName.Text;

            TextBox txtmodel = (TextBox)item.FindControl("txtcarmodel");
            model = txtmodel.Text;

            TextBox txtprice = (TextBox)item.FindControl("txtcarprice");
            price = float.Parse( txtprice.Text);

            TextBox txtlength = (TextBox)item.FindControl("txtcarlength");
            length = txtlength.Text;

            TextBox txtheight = (TextBox)item.FindControl("txtcarheigth");
            height = txtheight.Text;

            TextBox txtwidth = (TextBox)item.FindControl("txtcarwidth");
            width = txtwidth.Text;

            DropDownList txtcapacity = (DropDownList)item.FindControl("txtcarcapacity");
            capacity = txtcapacity.Text;

            TextBox txtengine = (TextBox)item.FindControl("txtcarengine");
            engine = txtengine.Text;

            DropDownList txtfule = (DropDownList)item.FindControl("txtcarfuletype");
            fule = txtfule.Text;

            TextBox txtmileage = (TextBox)item.FindControl("txtcarmileage");
            mileage = txtmileage.Text;

            DropDownList txttrans = (DropDownList)item.FindControl("txtcartransmissiontype");
            transmission = txttrans.Text;

            DropDownList txtgear = (DropDownList)item.FindControl("txtcargear");
            gear = txtgear.Text;

            DropDownList txtairbag = (DropDownList)item.FindControl("txtcarairbag");
            airbox = txtairbag.Text;

            TextBox txtclolour = (TextBox)item.FindControl("txtcarcolour");
            colour = txtclolour.Text;

            TextBox txttyreheight = (TextBox)item.FindControl("txtcartyreheight");
            tyreheight = txttyreheight.Text;

           
        }
        if (FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile && FileUpload4.HasFile && FileUpload5.HasFile && FileUpload6.HasFile && FileUpload7.HasFile)
        {

            string imgfile = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("../Images/" + imgfile));

            string imgfile2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("../Images/" + imgfile2));

            string imgfile3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            FileUpload3.SaveAs(Server.MapPath("../Images/" + imgfile3));

            string imgfile4 = Path.GetFileName(FileUpload4.PostedFile.FileName);
            FileUpload4.SaveAs(Server.MapPath("../Images/" + imgfile4));

            string imgfile5 = Path.GetFileName(FileUpload5.PostedFile.FileName);
            FileUpload5.SaveAs(Server.MapPath("../Images/" + imgfile5));

            string imgfile6 = Path.GetFileName(FileUpload6.PostedFile.FileName);
            FileUpload6.SaveAs(Server.MapPath("../Images/" + imgfile6));

            string imgfile7 = Path.GetFileName(FileUpload7.PostedFile.FileName);
            FileUpload7.SaveAs(Server.MapPath("../Images/" + imgfile7));

            // SqlCommand cmd = new SqlCommand);
            SqlDataAdapter adt = new SqlDataAdapter("update tbl_CarDetails set Car_Image1='" + "../Images/" + imgfile + "',Car_Image2='" + "../Images/" + imgfile2 + "',Car_Image3='" + "../Images/" + imgfile3 + "',Car_Image4='" + "../Images/" + imgfile4 + "',Car_Image5='" + "../Images/" + imgfile5 + "',Car_Image6='" + "../Images/" + imgfile6 + "',Car_Image7='" + "../Images/" + imgfile7 + "',Car_Name='" + carname + "',Car_Model='" + model + "',Car_Price='" + price + "',Car_Length='" + float.Parse(length) + "',Car_Width='" + float.Parse(width) + "',Car_Height='" + float.Parse(height) + "',Car_Capacity='" + Convert.ToInt32(capacity) + "',Car_Engine='" + engine + "',Car_Fule_Type='" + fule + "',Car_Mileage='" + float.Parse(mileage) + "',Car_Transmission_Type='" + transmission + "',Car_Gear='" + Convert.ToInt32(gear) + "',Car_Airbag='" + Convert.ToInt32(airbox) + "',Car_Colour='" + colour + "',Car_Tyre_Height='" + float.Parse(tyreheight) + "' where Car_Id='" + id + "'", con);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater3.DataSource = dt;
            Repeater3.DataBind();
            Response.Redirect("View_Car.aspx");
        }
        else {
            SqlDataAdapter a = new SqlDataAdapter("select * from tbl_CarDetails where Car_Id = '"+id+"'",con);
            DataTable d = new DataTable();
            a.Fill(d);

            string imgfile = d.Rows[0]["Car_Image1"].ToString();
            string imgfile2 = d.Rows[0]["Car_Image2"].ToString();
            string imgfile3= d.Rows[0]["Car_Image3"].ToString();
            string imgfile4 = d.Rows[0]["Car_Image4"].ToString();
            string imgfile5 = d.Rows[0]["Car_Image5"].ToString();
            string imgfile6 = d.Rows[0]["Car_Image6"].ToString();
            string imgfile7 = d.Rows[0]["Car_Image7"].ToString();
            SqlDataAdapter adt = new SqlDataAdapter("update tbl_CarDetails set Car_Image1='" + "../Images/" + imgfile + "',Car_Image2='" + "../Images/" + imgfile2 + "',Car_Image3='" + "../Images/" + imgfile3 + "',Car_Image4='" + "../Images/" + imgfile4 + "',Car_Image5='" + "../Images/" + imgfile5 + "',Car_Image6='" + "../Images/" + imgfile6 + "',Car_Image7='" + "../Images/" + imgfile7 + "',Car_Name='" + carname + "',Car_Model='" + model + "',Car_Price='" + price + "',Car_Length='" + float.Parse(length) + "',Car_Width='" + float.Parse(width) + "',Car_Height='" + float.Parse(height) + "',Car_Capacity='" + Convert.ToInt32(capacity) + "',Car_Engine='" + engine + "',Car_Fule_Type='" + fule + "',Car_Mileage='" + float.Parse(mileage) + "',Car_Transmission_Type='" + transmission + "',Car_Gear='" + Convert.ToInt32(gear) + "',Car_Airbag='" + Convert.ToInt32(airbox) + "',Car_Colour='" + colour + "',Car_Tyre_Height='" + float.Parse(tyreheight) + "' where Car_Id='" + id + "'", con);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            Repeater3.DataSource = dt;
            Repeater3.DataBind();
            Response.Redirect("View_Car.aspx");
        }


        
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        FileUpload2.Visible = true;
        FileUpload3.Visible = true;
        FileUpload4.Visible = true;
        FileUpload5.Visible = true;
        FileUpload6.Visible = true;
        FileUpload7.Visible = true;
        Repeater3.Visible = true;
        LinkButton b = (LinkButton)sender;
        int id = Convert.ToInt32(b.CommandArgument);
        SqlCommand cmd = new SqlCommand("Select c.*,ca.* from tbl_CarDetails AS c INNER JOIN tbl_Category AS ca ON c.Category_Id=ca.Category_Id where c.Car_Id='" + id + "'", con);

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        Repeater3.DataSource = dt;
        Repeater3.DataBind();
    }

    protected void deactive_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;
        int id = Convert.ToInt32(b.CommandArgument);
        SqlCommand cmd = new SqlCommand("update tbl_CarDetails set Car_Status='" + "Deactive" + "' , Car_Deactive_Date='" + DateTime.Today.Date + "' where Car_Id='" + id + "'", con);

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        Response.Redirect("View_Car.aspx");
    }
    protected void active_Click(object sender, EventArgs e)
    {
        LinkButton b = (LinkButton)sender;
        int id = Convert.ToInt32(b.CommandArgument);
        SqlCommand cmd = new SqlCommand("update tbl_CarDetails set Car_Status='" + "Active" + "', Car_Active_Date='" + DateTime.Today.Date + "' where Car_Id='" + id + "'", con);

        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        Repeater2.DataSource = dt;
        Repeater2.DataBind();
        Response.Redirect("View_Car.aspx");
    }


}