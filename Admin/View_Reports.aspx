<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Reports.aspx.cs" Inherits="Admin_View_Reports" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin</title>
    <script src="jsfiles/pdfmake.min.js" type="text/javascript"></script>
    <script src="jsfiles/html2canvas.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function Export() {
            
            html2canvas(document.getElementById('admitcard'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("AdmitCard.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>
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
<form runat=server>
 
    

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">NiceAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    

  </header><!-- End Header -->

  
  <!-- ======= Sidebar ======= -->
  <!-- ======= Sidebar ======= -->
 <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="Default.aspx">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      

      <li class="nav-item">
        <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Master Forms</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="View_Staff.aspx">
              <i class="bi bi-circle"></i><span>View Staff</span>
            </a>
          </li>
          <li>
            <a href="Add_Staff.aspx">
              <i class="bi bi-circle"></i><span>Add Staff</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-heading">Requests </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="View_TestDriveRequest.aspx">
          <i class="bi bi-person"></i>
          <span>Test-drive request</span>
        </a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="View_BookingRequest.aspx">
          <i class="bi bi-person"></i>
          <span>Car Bookings</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="Report.aspx">
          <i class="bi bi-person"></i>
          <span>Reports</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="logout.aspx">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Logout</span>
        </a>
      </li><!-- End Login Page Nav -->

      
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Reports</h1>
     
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

             <div class="col-xxl-2 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title"> <span></span></h5>
                    <div class="d-flex align-items-center">
                    <div class="ps-2">
                      <h6>Booking</h6>
                    </div>
                  </div>
                </div>

              </div>
            </div>         
            <div class="col-xxl-2 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title"> <span></span></h5>
                    <div class="d-flex align-items-center">
                    <div class="ps-2">
                      <h6>TestDrive</h6>
                    </div>
                  </div>
                </div>

              </div>
            </div>         
            
                
                <br />
            </div>   
           <asp:DropDownList ID="DropDownList1" runat="server" Width="35%" class="form-control">
             <asp:ListItem>- Select -</asp:ListItem>
                    <asp:ListItem>booking & testdrive</asp:ListItem>
                    <asp:ListItem>testdrive without booking</asp:ListItem>
                    <asp:ListItem>booking but not buy</asp:ListItem>
                    <asp:ListItem>buy without booking</asp:ListItem>
                    <asp:ListItem>buy without testdrive</asp:ListItem>
                    <asp:ListItem>buy without testdrive & booking</asp:ListItem>
                    <asp:ListItem>buy with testdrive & booking</asp:ListItem>
                    <asp:ListItem>pending testdrive</asp:ListItem>
                    <asp:ListItem>done testdrive</asp:ListItem>
                    <asp:ListItem>buy without testdrive & booking</asp:ListItem>
           </asp:DropDownList>
<asp:Button ID="show" class="form-control" runat="server" Width="10%" Text="View" 
                onclick="show_Click"></asp:Button>
            

<section class="section dashboard">
      <div class="row" >
            
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Booking And TestDrive<span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">User Contact No</th>
                        <th scope="col">TestDrive Date</th>
                        <th scope="col">Booking Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                       
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("ContactNo") %></td>
                        <td><%# Eval("TestDrive_Date") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
           
            </FooterTemplate>
             </asp:Repeater>
       </table>
       
      </div>
    </section>

    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater2" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">TestDrive Without Booking<span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">User Contact No</th>
                        <th scope="col">TestDrive Date</th>
                        <th scope="col">Booking Status</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                      
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("ContactNo") %></td>
                        <td><%# Eval("TestDrive_Date") %></td>
                       <td><%# Eval("Booking_Status") %></td>
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater3" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Car Booking Details <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("Booking_Id") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Booking_Status") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater4" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Car Booking Details <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("Booking_Id") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Booking_Status") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater5" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Car Booking Details <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("Booking_Id") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Booking_Status") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater6" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Car Booking Details <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("Booking_Id") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Booking_Status") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater7" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Car Booking Details <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Date</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("Booking_Id") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Booking_Status") %></td>
                        <td><%# Eval("Booking_Date") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>
    <section class="section dashboard">
      <div class="row" >
      
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater8" runat="server">
            <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Pending TestDrives <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">TestDrive_Date</th>
                        <th scope="col">Car Name</th>
                        <th scope="col">User Name</th>
                        <th scope="col">ContactNo</th>
                       
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                        <tr>
                        <th scope="row"><a href="#"><%# Eval("TestDrive_Date") %></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("ContactNo") %></td>
                       
                      </tr>
                    </tbody>
                    </Itemtemplate>
                    <FooterTemplate>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            </FooterTemplate>
            </asp:Repeater>
      
      </div>
    </section>


</form>
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