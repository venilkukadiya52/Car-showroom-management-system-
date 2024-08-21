using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\OneDrive\Desktop\CarDealProject\App_Data\CarDealDB.mdf;Integrated Security=True;Connect Timeout=30");
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("Login.aspx");
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

        if(!IsPostBack)
           updatemethod();
        
    }

    private void updatemethod()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_UserDetails where User_Id = '" + Session["userid"] + "'", con);
        
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adt.Fill(dt);

        name.Text = dt.Rows[0]["Name"].ToString();
        blockno.Text = dt.Rows[0]["BlockNo"].ToString();
        streetname.Text = dt.Rows[0]["StreetName"].ToString();
        country.Text = dt.Rows[0]["Country"].ToString();
        state.Text = dt.Rows[0]["State"].ToString();
        city.Text = dt.Rows[0]["City"].ToString();
        pincode.Text = dt.Rows[0]["Pincode"].ToString();
        email.Text = dt.Rows[0]["Email"].ToString();
        contactno.Text = dt.Rows[0]["ContactNo"].ToString();

        con.Close();
    }
 
    protected void update_Click1(object sender, EventArgs e)
    {
        Session["username"] = name.Text;
        Session["Email"] = email.Text;
      
        int id;
        id=Convert.ToInt32(Session["userid"]);
        
        con.Open();
        int status = 1;
        string type = "customer";
        
       SqlCommand cmd = new SqlCommand("update tbl_UserDetails set Name='"+name.Text+"',BlockNo='"+blockno.Text+"',StreetName='"+streetname.Text+"',Country='"+country.Text+"',State='"+state.Text+"',City='"+city.Text+"',Pincode='"+pincode.Text+"',Email='"+email.Text+"',ContactNo='"+contactno.Text+"' where User_Id='"+id+"'",con);
     
       
        
        //SqlCommand cmd = new SqlCommand("insert into tbl_UserDetails (Name,BlockNo,StreetName,Country,State,City,Pincode,Email,ContactNo,Date,Status,Type) values ('" + name.Text + "','" + blockno.Text + "','" + streetname.Text + "','" + country.Text + "','" + state.Text + "','" + city.Text + "','" + pincode.Text + "','" + email.Text + "','" + contactno.Text + "','" + DateTime.Today.ToString() + "' ," + status + ",'" + type + "') where User_Id ='"+uid.Text+"' ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Profile Updated Successfully')</script>");
       
    }


 
}