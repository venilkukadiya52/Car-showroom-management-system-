<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inner.aspx.cs" Inherits="Client_inner" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <title>Car_deal</title>
  <link href="../Images/cardeal1.png" rel="icon">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
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
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
         <a href="Index.aspx"><img id="Img1" runat=server src="~/Client/assets/images/cardeal1.png" style="height:55px" /></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item ">
                <a class="nav-link" href="Index.aspx">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item active">
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
    <%--<div class="services">
        <div class="container">
            <form action="#" runat="server" id="contact">
            <div class="row">
                
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Label10" runat="server">
                            Model :</label>
                        <asp:DropDownList ID="model" class="form-control" runat="server" onselectedindexchanged="model_SelectedIndexChanged" 
                            >
                        </asp:DropDownList>
                    </div>
                </div>
                
            </div>
            <div class="col-sm-4 offset-sm-4">
                <div class="main-button text-center">
                   <asp:LinkButton ID="search" OnCommand="search_Click" class="filled-button" runat="server">Search</asp:LinkButton>

                </div>
            </div>
        </div>
    </div>--%>
    
   <div class="services">
        <div class="container">
            <form action="#" runat="server" id="contact">
            <div class="row">
                
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <asp:LinkButton ID="LinkButton1" OnCommand="viewmodel" class="form-control" CommandArgument='<%# Eval("id") %>' runat="server"><%# Eval("Model_Name") %></asp:LinkButton>
   </ItemTemplate>
    </asp:Repeater> 
                    </div>
                </div>
                
            </div>
            
        </div>
    </div>                         
                                        
                           
    <asp:Repeater ID="car" runat="server">
        <ItemTemplate>
            <div class="services">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-md-7">
                            <div>
                                <img src="<%# Eval("Car_Image1") %>" alt="" class="img-fluid wc-image">
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src='<%# Eval("Car_Image2") %>' alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image3") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image4") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image5") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image6") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image7") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                            </div>
                            <br>
                        </div>
                        <div class="col-md-5">
                            <ul class="list-group list-group-flush">
                           
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Name</span> <strong class="pull-right">
                                            <%# Eval("Car_Name") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Type</span> <strong class="pull-right">
                                            <%# Eval("Category_Name") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Model</span> <strong class="pull-right">
                                            <%# Eval("Car_Model") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Price</span> <strong class="pull-right">
                                            <%# Eval("Car_Price") %> - <%# Eval("Car_To_Price") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Length</span> <strong class="pull-right">
                                            <%# Eval("Car_Length") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Height</span> <strong class="pull-right">
                                            <%# Eval("Car_Height") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Capacity</span> <strong class="pull-right">
                                            <%# Eval("Car_Capacity") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Engine</span> <strong class="pull-right">
                                            <%# Eval("Car_Engine") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Fule Type</span> <strong class="pull-right">
                                            <%# Eval("Car_Fule_Type") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Mileage</span> <strong class="pull-right">
                                            <%# Eval("Car_Mileage") %>km</strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Fuel</span> <strong class="pull-right">
                                            <%# Eval("Car_Transmission_Type") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Gear</span> <strong class="pull-right">
                                            <%# Eval("Car_Gear") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Air Bag</span> <strong class="pull-right">
                                            <%# Eval("Car_Airbag") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Color</span> <strong class="pull-right">
                                            <%# Eval("Car_Colour") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Tyre Height</span> <strong class="pull-right">
                                            <%# Eval("Car_Tyre_Height") %></strong>
                                    </div>
                                </li>
                            </ul>
                            <br>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="tabs-content">
                                <h4>
                                    Vehicle Description</h4>
                                <p>
                                    <b>
                                        <%# Eval("Car_Discription") %></b></p>
                                <br>
                            </div>
                            <br>
                        </div>
                    </div>
                    <center>
                        
                            <asp:LinkButton ID="book" runat="server" OnCommand="book_Click"
                            CommandArgument='<%# Eval("Car_Id") %>' Text="Book" class="filled-button">
                        </asp:LinkButton>
                             <a href="booking.aspx?id=<%# Eval("Car_Id") %>&userid=<%# Session["userid"] %>"
                                class="filled-button">Test Drive</a>
                        <asp:LinkButton ID="btnviewquatation" runat="server" OnCommand="btnviewquatation_Click"
                            CommandArgument='<%# Eval("Car_Id") %>' Text="View Quatation" class="filled-button">
                        </asp:LinkButton>
                    </center>
                    <br>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    
    <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
            <div class="services">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-md-7">
                            <div>
                                <img src="<%# Eval("Car_Image1") %>" alt="" class="img-fluid wc-image">
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src='<%# Eval("Car_Image2") %>' alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image3") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image4") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image5") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image6") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image7") %>" alt="" class="img-fluid">
                                    </div>
                                    <br>
                                </div>
                            </div>
                            <br>
                        </div>
                        <div class="col-md-5">
                            <ul class="list-group list-group-flush">
                           
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Name</span> <strong class="pull-right">
                                            <%# Eval("Car_Name") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Type</span> <strong class="pull-right">
                                            <%# Eval("Category_Name") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Model</span> <strong class="pull-right">
                                            <%# Eval("Model_Name") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Price</span> <strong class="pull-right">
                                            <%# Eval("price") %> <%--- <%# Eval("Car_To_Price") %>--%></strong>
                                    </div>
                                </li>
                               <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Length</span> <strong class="pull-right">
                                            <%# Eval("Car_Length") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Height</span> <strong class="pull-right">
                                            <%# Eval("Car_Height") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Capacity</span> <strong class="pull-right">
                                            <%# Eval("car_capacity") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Engine</span> <strong class="pull-right">
                                            <%# Eval("Car_Engine") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Fule Type</span> <strong class="pull-right">
                                            <%# Eval("Car_Fule_Type") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Mileage</span> <strong class="pull-right">
                                            <%# Eval("Car_Mileage") %>km</strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Fuel</span> <strong class="pull-right">
                                            <%# Eval("Car_Transmission_Type") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Gear</span> <strong class="pull-right">
                                            <%# Eval("Car_Gear") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Air Bag</span> <strong class="pull-right">
                                            <%# Eval("car_airbag") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Color</span> <strong class="pull-right">
                                            <%# Eval("Car_Colour") %></strong>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <span class="pull-left">Tyre Height</span> <strong class="pull-right">
                                            <%# Eval("Car_Tyre_Height") %></strong>
                                    </div>
                                </li>
                            </ul>
                            <br>
                        </div>
                   </div>
                    <br>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="tabs-content">
                                <h4>
                                    Vehicle Description</h4>
                                <p>
                                    <b>
                                        <%# Eval("car_discription") %></b></p>
                                <br>
                            </div>
                        </div>
                    </div>
                    <center>
                        
                            <asp:LinkButton ID="book" runat="server" OnCommand="book_Click"
                            CommandArgument='<%# Eval("car_id") %>' Text="Book" class="filled-button">
                        </asp:LinkButton>
                             <a href="booking.aspx?id=<%# Eval("car_id") %>&userid=<%# Session["userid"] %>"
                                class="filled-button">Test Drive</a>
                        <asp:LinkButton ID="btnviewquatation" runat="server" OnCommand="btnviewquatation2_Click"
                            CommandArgument='<%# Eval("id") %>' Text="View Quatation" class="filled-button">
                        </asp:LinkButton>
                    </center>
                    <br>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </form>
      <!-- Footer Starts Here -->
    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>
                        Copyright © 2020 Company Name - Template by: <a href="https://www.phpjabbers.com/">PHPJabbers.com</a>
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
