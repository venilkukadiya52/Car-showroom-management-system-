<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" CodeBehind="Profile.aspx.cs" Inherits="Client_Profile" %>

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

   
      
    <div class="callback-form">
      <div class="container">
        <div class="row">
          
          <div class="col-md-7">
            <div class="contact-form">
              <form id="contact" runat="server" method="post">
                <div class="row">
                <div class="col-lg-12">
                    <fieldset>
                      <asp:TextBox  class="form-control" Enabled="false" ID="email" runat="server" TextMode="SingleLine"  required=""></asp:TextBox>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                        
                      <asp:TextBox  class="form-control"  ID="name" TextMode="SingleLine" runat="server" placeholder="Enter User Name" required=""></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="name" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  
                  
                  <div class="col-lg-4">
                    <fieldset>
                      <asp:TextBox  class="form-control" ID="blockno" runat="server" TextMode="SingleLine" placeholder="Block no" required=""></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="blockno" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  <div class="col-lg-8">
                    <fieldset>
                      <asp:TextBox  class="form-control"  ID="streetname" runat="server" TextMode="SingleLine" placeholder="Street Name" required="" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="streetname" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  <div class="col-lg-4">
                    <fieldset>
                      <asp:TextBox  class="form-control" ID="country" runat="server" TextMode="SingleLine" placeholder="Country Name" required="" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="country" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  <div class="col-lg-4">
                    <fieldset>
                      <asp:TextBox  class="form-control"  ID="state" runat="server" TextMode="SingleLine" placeholder="State Name" required="" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="state" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                   </fieldset>
                  </div>
                  <div class="col-lg-4">
                    <fieldset>
                      <asp:TextBox  class="form-control"  ID="city" runat="server" TextMode="SingleLine" placeholder="City Name" required="" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="city" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  <br /><br /><br />
                  <div class="col-lg-8">
                    <fieldset>
                      <asp:TextBox class="form-control"  ID="pincode" TextMode="SingleLine" runat="server" placeholder="Pincode" required="" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="pincode" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                   <div class="col-lg-12">
                    <fieldset>

                      <asp:TextBox  class="form-control"  ID="contactno" runat="server" TextMode="SingleLine" placeholder="Enter Contact No" required=""></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="contactno" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="White" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                    
                      <asp:Button ID="update" Text="Update" runat="server" class="border-button" onclick="update_Click1" 
                            ></asp:Button>
                    </fieldset>
                  </div>
                  <div class="col-lg-8">
                    <fieldset>
                        <asp:Label ID="Error" runat="server" Text=""></asp:Label>
                    </fieldset>
                 
                  </div>
                  
                </div>
              </form>
            </div>
          </div>
        </div>

        <br />
        <br />
        <br />
        <br />
      </div>
    </div>

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