<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="Client_compare" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <title>Car Deal</title>
    <link href="../Images/cardeal1.png" rel="icon">
    <!-- Bootstrap core CSS -->
   
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <script language="javascript" type="text/javascript">
// <![CDATA[

function form-submit_onclick() {

}

// ]]>
    </script>
    <style>
        table
        {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        
        td, th
        {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        
        tr:nth-child(even)
        {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div>
            </div>
            <div>
            </div>
            <div>
            </div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->
    <!-- Header -->
    <div class="sub-header">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12">
                    <ul class="left-info">
                        <li><a href="#"><i class="fa fa-envelope"></i>cardeal@gmail.com</a></li>
                        <li><a href="#"><i class="fa fa-phone"></i>814-0550-002</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="right-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <form id="Form1" runat="server">
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a href="Index.aspx"><img id="Img1" runat=server src="~/Client/assets/images/cardeal1.png" style="height:55px" /></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="Index.aspx">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Cars.aspx">Cars</a>
              </li>
             <li class="nav-item">
                <a class="nav-link" href="Contact.aspx">Contact</a>
               
              </li> 
               <li class="nav-item">
                <a class="nav-link" id="A4" runat="server" href="viwebuycar.aspx">Booking</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" id="A5" runat="server" href="viewtestdrive.aspx">TestDrive</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" id="A6" runat="server" href="viewservice.aspx">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="loginlbl" runat="server" href="Login.aspx">Login</a>
              </li>


                <li class="nav-item dropdown">
                <asp:Label ID="namelbl" runat="server" ForeColor="YellowGreen"  class="dropdown-toggle nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:Label>
                <div class="dropdown-menu">
                    

                    <a class="dropdown-item" id="logoutlbl" runat="server" href="Logout.aspx">Logout</a>
                    <a class="dropdown-item" id="profile" runat="server" href="Profile.aspx">Profile</a>
                    <a class="dropdown-item" id="feedback" runat="server" href="feedback.aspx">Review</a>
                    <a class="dropdown-item" id="A2" runat="server" href="changerpassword.aspx">Change Password</a>
                </div>
              </li>



             
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <!-- Page Content -->
    <div class="request-form">
        <div class="container">
        </div>
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <div class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>
                            Compare <em>Cars</em></h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item">
                        <asp:DropDownList ID="first" class="form-control" AutoPostBack="true" runat="server"
                            OnSelectedIndexChanged="first_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div>
                        <asp:DropDownList ID="second" class="form-control" AutoPostBack="true" runat="server"
                            OnSelectedIndexChanged="second_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <table id="tbl" runat="server">
        <tr>
           <td><h4><b>  Car Details</b></h4></td>
        </tr>
        <tr>
            <td>
                Car Name
            </td>
            <td>
                <asp:Label ID="name" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="name1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Price
            </td>
            <td>
                <asp:Label ID="price" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="price1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Model
            </td>
            <td>
                <asp:Label ID="model" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="model1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Category
            </td>
            <td>
                <asp:Label ID="category" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="category1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Transmission Type
            </td>
            <td>
                <asp:Label ID="transmission" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="transmission1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Gear
            </td>
            <td>
                <asp:Label ID="gear" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="gear1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Airbag
            </td>
            <td>
                <asp:Label ID="airbag" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="airbag1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Colour
            </td>
            <td>
                <asp:Label ID="colour" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="colour1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Tyre Height
            </td>
            <td>
                <asp:Label ID="tyre" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tyre1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Height
            </td>
            <td>
                <asp:Label ID="height" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="height1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Car Width
            </td>
            <td>
                <asp:Label ID="width" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="width1" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                Car Capacity
            </td>
            <td>
                <asp:Label ID="capacity" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="capacity1" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
             <h4><b>  Engine</b></h4>
            </td>
           
        </tr>
        <tr>
            <td>
               Engine
            </td>
            <td>
                <asp:Label ID="engine" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="engine1" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
             <h4><b>   Fuel & Performance</b></h4>
            </td>
           
        </tr>
        <tr>
            <td>
               Fule Type
            </td>
            <td>
                <asp:Label ID="fule" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="fule1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
               Mileage
            </td>
            <td>
                <asp:Label ID="mileage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="mileage1" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
             <h4><b>  Safety</b></h4>
            </td>
           
        </tr>
         <tr>
            <td>
               Safety
            </td>
            <td>
                <asp:Label ID="tank" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tank1" runat="server"></asp:Label>
            </td>
        </tr>
    </table><br />
    
    <%--<td>Car Name
       

    <asp:Label ID="name" class=" col-md-4 form-control" runat="server"></asp:Label>
   
   <asp:Label ID="name1" class="col-md-4 form-control" runat="server"></asp:Label></td><br />
    <td>Car Price 
    <asp:Label ID="price" class="col-md-4 form-control" runat="server"></asp:Label>
    <asp:Label ID="price1" runat="server" class="col-md-4 form-control"></asp:Label></td>
    --%>
    </form>
    <br /><br />
    <!-- Footer Starts Here -->
    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>
                        Copyright © 2022 Car Deal
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script language="text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>
</body>
</html>
