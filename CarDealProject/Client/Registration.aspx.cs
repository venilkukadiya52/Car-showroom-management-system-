using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;



public partial class Client_Registration : System.Web.UI.Page
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
        password.Visible = false;
        register.Visible = false;
        l.Visible = false;
        entercap.Visible = false;
        txtotp.Visible = false;
        btnotp.Visible = false;
        if (!IsPostBack)
        {
            Random rand = new Random();
            int noc = rand.Next(6, 10);
            string cap = "";
            int tot = 0;
            do
            {
                int ch = rand.Next(48, 123);
                if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
                {
                    cap = cap + (char)ch;
                    tot++;
                    if (tot == noc)
                        break;
                }
            } while (true);
            l.Text = cap;
            l.CssClass = "bgImage";
        }

    }
    public void register_Click(object sender, EventArgs e)
    {
        if (l.Text == entercap.Text)
        {
            con.Open();
            int status = 1;
            string type = "customer";

            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "SHA1");

            string query = "insert into tbl_UserDetails (Name,Email,Password,Date,Status,Type) values ('" + name.Text + "','" + email.Text + "','" + pass + "','" + DateTime.Today.ToString() + "' ,'" + status + "','" + type + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Login.aspx");
        }
        else {
            l.Visible = true;
            entercap.Visible = true;
            password.Visible = true;
            register.Visible = true;
            Response.Write("<script>alert('Enter Valid Captcha')</script>");
        }
        
    }


    protected void btnotp_Click(object sender, EventArgs e)
    {
        

        if (Session["OTP"].ToString() == txtotp.Text.ToString())
        {
            password.Visible = true;
            register.Visible = true;
            l.Visible = true;
            entercap.Visible = true;
        }
        else
        {

            Response.Write("<script>alert('Enter Valid OTP!!')</script>");
        }

    }

    protected void sendotp_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_UserDetails where Email='" + email.Text + "'", con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        try
        {
            Session["x"] = dt.Rows[0]["Email"];
            
            
                Response.Write("<script>alert('Enter Valid Email ID This Email Id Us Already Exist')</script>");
            

        }
        catch
        {
            txtotp.Visible = true;
            btnotp.Visible = true;



            Random rand = new Random();
            Session["Email"] = email.Text;
            int OTP = rand.Next(111111, 999999);
            Session["OTP"] = OTP;
            string name1 = name.Text;
            if (login_otp.SendOTP(Session["Email"].ToString(), OTP, name1))
            {

                txtotp.Visible = true;
                btnotp.Visible = true;
                sendotp.Visible = false;





            }
            else
            {
                Error.Visible = true;
                Error.Text = "OTP cannot be Sent.! Check Your Internet Connectivity.";
            }
        }
        
    }
}