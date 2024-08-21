<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Client_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

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
</head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
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
    <form runat="server">

    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a href="Index.aspx"><img runat=server src="~/Client/assets/images/cardeal1.png" style="height:55px" /></a>
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
    <!-- Banner Starts Here -->
    <div class="main-banner header-text" id="top">
        <div class="Modern-Slider">
          <!-- Item -->
          <div class="item item-1">
            <div class="img-fill">
              <div class="text-content">
                  
                  <h4>Kia Seltos</h4>
                  <p>Kia Seltos is a 5 seater SUV available in a price range of Rs. 10.19 - 18.45 Lakh*. It is available in 17 variants, 3 engine options that are BS6 compliant.</p>
                  <h4>₹9.95 lakhs - ₹18.2 lakhs</h4>
                 
                  <asp:LinkButton ID="btnviewmore" runat="server" OnCommand="btnviewmore_Click" CommandArgument="30"
                                        Text="Explore Now" class="filled-button">
                                    </asp:LinkButton>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-2">
            <div class="img-fill">
                <div class="text-content">
                  
                  <h4>Fortuner</h4>
                  <p>Toyota Fortuner is a 7 seater SUV available in a price range of Rs. 31.79 - 44.63 Lakh*. It is available in 8 variants, 2 engine options that are BS6 compliant.</p>
                  <h4>₹31.4 lakhs - ₹43.4 lakhs</h4>
                 
                  <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="Click1" CommandArgument="33"
                                        Text="Explore Now" class="filled-button">
                                    </asp:LinkButton>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-3">
            <div class="img-fill">
                <div class="text-content">
                 
                  <h4>Alcazer</h4>
                  <p>Hyundai Alcazar is a 6 seater SUV available in a price range of Rs. 16.34 - 20.14 Lakh*. It is available in 20 variants, 2 engine options that are BS6 compliant.</p>
                  <h4>₹16.3 lakhs - ₹20 lakhs</h4>
                 
                  <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="Click2" CommandArgument="34"
                                        Text="Explore Now" class="filled-button">
                                    </asp:LinkButton>
                </div>
            </div>
          </div>
          <!-- // Item -->
        </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="request-form">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <h4>Compare Cars</h4>
            <span>We Are Here To Give You Best Choice.</span>
          </div>
          <div class="col-md-4">
            <a href="compare.aspx" class="border-button">Click Here</a>
          </div>
        </div>
      </div>
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
   

    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Top Selling <em>Cars</em></h2>
              <span>Take Your Deal With Car Deal</span>
            </div>
          </div>
           

            <asp:Repeater ID="Repeater1" runat="server">
         
         <ItemTemplate>
          <div class="col-md-4">
            <div class="service-item">
              <img src='<%# Eval("Car_Image1") %>' alt="">
              <div class="down-content">
                <h4><%# Eval("Car_Name") %></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup></sup></del> &nbsp; <sup></sup><%# Eval("Car_Price") %> - <%# Eval("Car_To_Price") %>
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i><%# Eval("Car_Mileage") %>km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> <%# Eval("Car_Engine") %> cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> <%# Eval("Car_Transmission_Type") %> &nbsp;&nbsp;&nbsp;
                </p>
                <!-- <asp:LinkButton ID="view" CommandArgument='<%# Eval("Car_Id") %>' class="filled-button" runat="server">View More</asp:LinkButton>-->
              </div>
            </div>
            
            <br>
          </div>
          </ItemTemplate>
         
             </asp:Repeater>
             </div>
      </div>
    </div>

    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Latest <em>Cars</em></h2>
              <span>Take Your Deal With Car Deal</span>
            </div>
          </div>
           

            <asp:Repeater ID="latest" runat="server">
         
         <ItemTemplate>
          <div class="col-md-4">
            <div class="service-item">
              <img src='<%# Eval("Car_Image1") %>' alt="">
              <div class="down-content">
                <h4><%# Eval("Car_Name") %></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup></sup></del> &nbsp; <sup></sup><%# Eval("Car_Price") %> - <%# Eval("Car_To_Price") %>
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i><%# Eval("Car_Mileage") %>km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> <%# Eval("Car_Engine") %> cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> <%# Eval("Car_Transmission_Type") %> &nbsp;&nbsp;&nbsp;
                </p>
                <!-- <asp:LinkButton ID="view" CommandArgument='<%# Eval("Car_Id") %>' class="filled-button" runat="server">View More</asp:LinkButton>-->
              </div>
            </div>
            
            <br>
          </div>
          </ItemTemplate>
         
             </asp:Repeater>
             </div>
      </div>
    </div>

    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Most Viewed <em>Cars</em></h2>
             
            </div>
          </div>
           

            <asp:Repeater ID="searched" runat="server">
         
         <ItemTemplate>
          <div class="col-md-4">
            <div class="service-item">
              <img src='<%# Eval("Car_Image1") %>' alt="">
              <div class="down-content">
                <h4><%# Eval("Car_Name") %></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup></sup></del> &nbsp; <sup></sup><%# Eval("Car_Price") %> - <%# Eval("Car_To_Price") %>
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i><%# Eval("Car_Mileage") %>km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> <%# Eval("Car_Engine") %> cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> <%# Eval("Car_Transmission_Type") %> &nbsp;&nbsp;&nbsp;
                </p>
                <!-- <asp:LinkButton ID="view" CommandArgument='<%# Eval("Car_Id") %>' class="filled-button" runat="server">View More</asp:LinkButton>-->
              </div>
            </div>
            
            <br>
          </div>
          </ItemTemplate>
         
             </asp:Repeater>
             </div>
      </div>
    </div>

    <div class="fun-facts">
      <div class="container">
        <div class="more-info-content">
          <div class="row">
            <div class="col-md-6">
              <div class="left-image">
                <img src="assets/images/cardeal1.png" class="img-fluid" alt="">
              </div>
            </div>
            <div class="col-md-6 align-self-center">
              <div class="right-content">
                <span>Who we are</span>
                <h2><em></em></h2>
                <p>Car Deal Here To Give You Comfert In Buying Your Cars.</p>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<div class="testimonials">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>What Clients say <em>about us</em></h2>
              <span>Response from our greatest clients</span>
            </div>
          </div>

            <asp:Repeater ID="Repeater2" runat="server">
         <HeaderTemplate>
          <div class="col-md-12">
            <div class="owl-testimonials owl-carousel">
            </HeaderTemplate>
               <ItemTemplate>
              <div class="testimonial-item">
                <div class="inner-content">
                  <h4><%# Eval("Name") %></h4>
                  <span><%# Eval("City") %></span>
                  <p>"<%# Eval("feedback") %>"</p>
                </div>
                
              </div>
               </ItemTemplate>
               <FooterTemplate>
            </div>
          </div>
         </FooterTemplate>
            </asp:Repeater>
        </div>
      </div>
    </div>

  

  </form>

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

    <script language = "text/Javascript"> 
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