<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Client_Cars" %>

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
    <div class="services">
        <div class="container">
            <form action="#" runat="server" id="contact">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="lbl1" runat="server">
                            Vehicle Type:</label>
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <%--<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Label10" runat="server">
                            Model :</label>
                        <asp:DropDownList ID="model" class="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>--%>
                 <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Label1" runat="server">
                            Min Price:</label>
                        <asp:TextBox ID="minprice" placeholder="Min Price" Text="0" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label2" runat="server">
                            Max Price:</label>
                        <asp:TextBox ID="maxprice" placeholder="Max Price" Text="0" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Label3" runat="server">
                            Capacity:</label>
                        <asp:DropDownList ID="capacity" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Label4" runat="server">
                            Fule Type:</label>
                        <asp:DropDownList ID="fuletype" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Petrol">Petrol</asp:ListItem>
                            <asp:ListItem Value="Diesel">Diesel</asp:ListItem>
                            <asp:ListItem Value="CNG">CNG</asp:ListItem>
                            <asp:ListItem Value="Electric">Electric</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label5" runat="server">
                            Mileage:</label>
                        <asp:DropDownList ID="mileage" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="1"> < 10</asp:ListItem>
                            <asp:ListItem Value="2">11 - 20</asp:ListItem>
                            <asp:ListItem Value="3">21 - 30</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label6" runat="server">
                            Engine Size(CC):</label>
                        <asp:TextBox ID="engine" placeholder="Max Engine Size" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label7" runat="server">
                            Transmission Type:</label>
                        <asp:DropDownList ID="transmissiontype" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Auto">Auto</asp:ListItem>
                            <asp:ListItem Value="Manual">Manual</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label8" runat="server">
                            Gear:</label>
                        <asp:DropDownList ID="gear" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label id="Lable10" runat="server">
                            Air Bag:</label>
                        <asp:DropDownList ID="airbag" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="form-group">
                         <label id="Label9" runat="server">
                            Colour:</label>
                        <asp:DropDownList ID="colour" class="form-control" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Black">Black</asp:ListItem>
                            <asp:ListItem Value="Red">Red</asp:ListItem>
                             <asp:ListItem Value="White">White</asp:ListItem>
                            <asp:ListItem Value="Blue">Blue</asp:ListItem>
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
    </div>
    <div class="services">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="service-item">
                                <img src='<%# Eval("Car_Image1") %>' alt="">
                                <div class="down-content">
                                    <h4>
                                        <%# Eval("Car_Name") %></h4>
                                    <div style="margin-bottom: 10px;">
                                        <span><del><sup></sup></del>&nbsp; <sup></sup>
                                            <%# Eval("Car_Price") %> - <%# Eval("Car_To_Price") %>
                                        </span>
                                    </div>
                                    <p>
                                        <i class="fa fa-dashboard"></i>
                                        <%# Eval("Car_Mileage") %>km &nbsp;&nbsp;&nbsp; <i class="fa fa-cube"></i>
                                        <%# Eval("Car_Engine") %>
                                        cc &nbsp;&nbsp;&nbsp; <i class="fa fa-cog"></i>
                                        <%# Eval("Car_Transmission_Type") %>
                                        &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <asp:LinkButton ID="btnviewmore" runat="server" OnCommand="btnviewmore_Click" CommandArgument='<%# Eval("Car_Id") %>'
                                        Text="View More" class="filled-button">
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <br>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
     
                                    
                                        
                                    
     <%--                          <asp:DropDownList ID="model" AutoPostBack=true runat="server" 
        onselectedindexchanged="model_SelectedIndexChanged">
                                        </asp:DropDownList>
    <asp:Repeater ID="car" runat="server">
        <ItemTemplate>
            <div class="services" style="margin-top:-160px">
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
            <div class="services" style="margin-top:-160px">
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
                                            <%# Eval("price") %> - <%# Eval("Car_To_Price") %></strong>
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
                        <asp:LinkButton ID="btnviewquatation" runat="server" OnCommand="btnviewquatation2_Click"
                            CommandArgument='<%# Eval("Car_Id") %>' Text="View Quatation" class="filled-button">
                        </asp:LinkButton>
                    </center>
                    <br>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>--%>
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
