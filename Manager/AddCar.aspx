<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="Admin_AddCar" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - Nice Manager</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Nice Manager</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="Default.aspx">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <%--<li class="nav-item">
        <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Product</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="Ul1" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="AddCar.aspx" class="">
              <span>Add Car</span>
            </a>
          </li>
          <li>
            <a href="AddCategory.aspx">
              <span>Add Category</span>
            </a>
          </li>
          <li>
            <a href="View_Car.aspx">
             </i><span>View Car</span>
            </a>
          </li>
          
        </ul>
      </li>--%>

            <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class=""></i><span>Product</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="AddCar.aspx" class="">
              <span>Add Car</span>
            </a>
          </li>
          <li>
            <a href="AddCategory.aspx">
              <span>Add Category</span>
            </a>
          </li>
          <li>
            <a href="View_Car.aspx">
             </i><span>View Car</span>
            </a>
          </li>
        </ul>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class=""></i><span>Staff</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
           <li>
            <a href="Add_Staff.aspx" class="">
              <i class="bi bi-circle"></i><span>Add Staff</span>
            </a>
          </li>
          
          <li>
            <a href="View_Staff.aspx">
              <i class="bi bi-circle"></i><span>View Staff</span>
            </a>
          </li>
        </ul>
      </li>
      <%--<li class="nav-item">
        <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Staff</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="Add_Staff.aspx" class="">
              <i class="bi bi-circle"></i><span>Add Staff</span>
            </a>
          </li>
          
          <li>
            <a href="View_Staff.aspx">
              <i class="bi bi-circle"></i><span>View Staff</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Forms Nav -->--%>


      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class=""></i><span>TestDrive</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li class="nav-item">
        <a class="nav-link collapsed" href="View_TestDriveRequest.aspx">
          <i class="fas fa-car-alt"></i>
          <span>Test-Drive request</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="approvedtestdrive.aspx">
          <i class="fas fa-car-alt"></i>
          <span>Approved Test-Drive</span>
        </a>
      </li>
        </ul>
      </li>

   
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="View_BookingRequest.aspx">
          <i class="fas fa-btn-outline-light"></i>
          <span>Product Booking</span>
        </a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-"></i><span>Service</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li class="nav-item">
        <a class="nav-link collapsed" href="AddService.aspx">
          <i class="bi bi-person"></i>
          <span>Add Service</span>
        </a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link collapsed" href="View_Service.aspx">
          <i class="bi bi-person"></i>
          <span>View Service</span>
        </a>
      </li>
        </ul>
      </li>
      
      <%--<li class="nav-heading">INFO</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="AddService.aspx">
          <i class="bi bi-person"></i>
          <span>Add Service</span>
        </a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link collapsed" href="View_Service.aspx">
          <i class="bi bi-person"></i>
          <span>View Service</span>
        </a>
      </li>--%>
      
      <!-- End Profile Page Nav -->
       <li class="nav-item">
        <a class="nav-link collapsed" href="chnagepassword.aspx">
          <i class=""></i>
          <span>Change Password</span>
        </a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="logout.aspx">
          <i class="bi bi-box-arrow-in-left"></i>
          <span>Logout</span>
        </a>
      </li><!-- End Login Page Nav -->

      
    </ul>

  </aside>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Category Details</h1>
      
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Product</h5>

              <!-- General Form Elements -->
              <form runat="server" enctype="multipart/form-data">
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID="txtcarname" required="" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtcarname" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Model</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarmodel" required="" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtcarmodel" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Category Type</label>
                  <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList1"  class="form-control" runat="server">
                       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="DropDownList1" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>
                
                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">From Price</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarprice" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtcarprice" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">To Price</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcartoprice" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtcartoprice" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Length</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarlength" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtcarlength" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Width</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarwidth" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtcarwidth" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Height</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarheigth" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcarheigth" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Seating Capacity</label>
                  <div class="col-sm-10">
                   <asp:DropDownList ID="txtcarcapacity" class="form-control" runat="server">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                   </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
            ControlToValidate="txtcarcapacity" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Engine</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarengine" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtcarengine" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Fule Type</label>
                  <div class="col-sm-10">
                   <asp:DropDownList ID="txtcarfuletype" class="form-control" runat="server">
                   <asp:ListItem >Select</asp:ListItem>
                        <asp:ListItem Value="Petrol">Petrol</asp:ListItem>
                        <asp:ListItem Value="Diesel">Diesel</asp:ListItem>
                        <asp:ListItem Value="CNG">CNG</asp:ListItem>
                        <asp:ListItem Value="Electric">Electric</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ControlToValidate="txtcarfuletype" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Mileage</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarmileage" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtcarmileage" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Transmission Type</label>
                  <div class="col-sm-10">
                  <asp:DropDownList ID="txtcartransmissiontype" class="form-control" runat="server">
                  
                  <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="Auto">Auto</asp:ListItem>
                        <asp:ListItem Value="Manual">Manual</asp:ListItem>
                      
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ControlToValidate="txtcartransmissiontype" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Gear</label>
                  <div class="col-sm-10">
                    <asp:DropDownList ID="txtcargear" class="form-control" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                          <asp:ListItem Value="7">7</asp:ListItem>
                       <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                          <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="11">11</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ControlToValidate="txtcargear" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Air Bag</label>
                  <div class="col-sm-10">
                  <asp:DropDownList ID="txtcarairbag" class="form-control" runat="server">
                <asp:ListItem Value="0">Select</asp:ListItem>
                       <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                       <asp:ListItem Value="6">6</asp:ListItem>
                      
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ControlToValidate="txtcarairbag" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" InitialValue="Select" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                 
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Colour</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarcolour" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtcarcolour" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Safety</label>
                  <div class="col-sm-10">
                 <asp:RadioButtonList ID="safety" runat="server">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                 </asp:RadioButtonList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="safety" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Hight Of tyre</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcartyreheight" required="" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtcartyreheight" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*Rquired</asp:RequiredFieldValidator>
                  </div>
                </div>

                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Main Image</label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image</label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image </label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload3" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image</label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload4" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image</label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload5" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image </label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload6" runat="server"></asp:FileUpload>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Sub Image </label>
                  <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload7" runat="server"></asp:FileUpload>
                  </div>
                </div>

               

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Submit Button</label>
                  <div class="col-sm-10">
                  
                    <asp:Button ID="btnsave" class="btn btn-primary" runat="server" Text="Save" 
                          onclick="btnsave_Click"></asp:Button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>

        
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>