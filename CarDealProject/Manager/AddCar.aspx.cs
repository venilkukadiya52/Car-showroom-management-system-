using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class Admin_AddCar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\CarDealDB.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../Client/login.aspx");
        }
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Category", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Category_Id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0,"Select");
            con.Close();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
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

            int val = Convert.ToInt32(DropDownList1.SelectedValue);
            if (txtcarcapacity.SelectedValue != "0" || txtcartransmissiontype.SelectedValue != "0" || txtcarfuletype.SelectedValue != "0" || txtcargear.SelectedValue != "0" || txtcarairbag.SelectedValue != "0")
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_CarDetails (Car_Name,Car_Date,Car_Active_Date,Car_Model,Category_Id,Car_Image1,Car_Image2,Car_Image3,Car_Image4,Car_Image5,Car_Image6,Car_Image7,Car_Price,Car_To_Price,Car_Length,Car_Width,Car_Height,Car_Capacity,Car_Engine,Car_Fule_Type,Car_Mileage,Car_Transmission_Type,Car_Gear,Car_Airbag,Car_Colour,Car_Tyre_Height,Car_Status,count,viewcount,Car_Safety) values ('" + txtcarname.Text + "','" + DateTime.Today + "','" + DateTime.Today + "','" + txtcarmodel.Text + "','" + val + "','" + "../images/" + imgfile + "','" + "../images/" + imgfile2 + "','" + "../images/" + imgfile3 + "','" + "../images/" + imgfile4 + "','" + "../images/" + imgfile5 + "','" + "../images/" + imgfile6 + "','" + "../images/" + imgfile7 + "','" + txtcarprice.Text + "','" + txtcartoprice.Text + "','" + txtcarlength.Text + "','" + txtcarwidth.Text + "','" + txtcarheigth.Text + "','" + txtcarcapacity.SelectedValue + "','" + txtcarengine.Text + "','" + txtcarfuletype.SelectedValue + "','" + txtcarmileage.Text + "','" + txtcartransmissiontype.SelectedValue + "','" + txtcargear.SelectedValue + "','" + txtcarairbag.SelectedValue + "','" + txtcarcolour.Text + "','" + txtcartyreheight.Text + "','" + "Active" + "','" + 0 + "','"+0+"','"+safety.SelectedValue+"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Car Added Successfully')</script>");
                Response.Write("<script>window.location.assign('AddCar.aspx')</script>");
            }

            else
            {
                Response.Write("<script>alert('Enter Valid Input')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Select All Image')</script>");
        }
    }
}