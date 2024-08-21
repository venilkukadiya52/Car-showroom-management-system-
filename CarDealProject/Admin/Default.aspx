<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin</title>
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
        <span class="d-none d-lg-block">NiceAdmin</span>
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
      <h1>Dashboard</h1>
      
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

               <div class="card-body">
                  <h5 class="card-title">Total <span>| Product</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fas fa-car"></i>
                    </div>
                    <div class="ps-3">
                      <h6><asp:Label ID="l1" runat=server></asp:Label></h6>
                      <span class="text-success small pt-1 fw-bold">Available Car</span>
                    </div>
                  </div>
                </div>

              </div>
            </div>

          
             <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

               <div class="card-body">
                  <h5 class="card-title">Total <span>| Buy</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fas fa-car"></i>
                    </div>
                    <div class="ps-3">
                      <h6><asp:Label ID="l2" runat=server></asp:Label></h6>
                      <span class="text-success small pt-1 fw-bold">Buy Car</span>
                    </div>
                  </div>
                </div>

              </div>
            </div>

            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

               <div class="card-body">
                  <h5 class="card-title">Total <span>| Booking</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fas fa-car"></i>
                    </div>
                    <div class="ps-3">
                      <h6><asp:Label ID="l3" runat=server></asp:Label></h6>
                      <span class="text-success small pt-1 fw-bold">Booked Car</span>
                    </div>
                  </div>
                </div>

              </div>
            </div>

             <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

               <div class="card-body">
                  <h5 class="card-title">Total <span>| TestDrive</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fas fa-car"></i>
                    </div>
                    <div class="ps-3">
                      <h6><asp:Label ID="l4" runat=server></asp:Label></h6>
                      <span class="text-success small pt-1 fw-bold">Test Drive</span>
                    </div>
                  </div>
                </div>

              </div>
            </div>
                <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">
                <div class="card-body">
                  <h5 class="card-title">Total <span>| Users</span></h5>
<asp:Repeater ID="Repeater1" runat="server">
<HeaderTemplate>
                  <table class="table table-borderless ">
                    <thead>
                      <tr>
                        <th scope="col">id</th>
                        <th scope="col">User Name</th>
                        <th scope="col">Email Id</th>
                        <th scope="col">City</th>
                      </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                      <tr>
                        <th scope="row"><%# Eval("User_Id") %></th>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Email") %></td>
                        <td><%# Eval("City") %></td>
                      </tr>
                      
                    </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                  </table>
                  </FooterTemplate>
                  </asp:Repeater>
                </div>

              </div>
            </div><!-- End Recent Sales -->

            <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">
                <div class="card-body pb-0">
                  <h5 class="card-title">Available <span>| Car</span></h5>
<asp:Repeater ID="Repeater2" runat="server">
<HeaderTemplate>
                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col">Car Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Model</th>
                        <th scope="col">Fule Type</th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#"><img src='<%# Eval("Car_Image1") %>' alt=""></a></th>
                        <td><%# Eval("Car_Name") %></td>
                        <td><%# Eval("Car_Price") %></td>
                        <td class="fw-bold"><%# Eval("Car_Model") %></td>
                        <td><%# Eval("Car_Fule_Type") %></td>
                      </tr>
                    </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                  </table>
                  </FooterTemplate>
                  </asp:Repeater>
                </div>

              </div>
            </div><!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">
        
          <div class="card-body">
              <h5 class="card-title">Review<span> | Customer</span></h5>
<asp:Repeater ID="Repeater3" runat="server">
<ItemTemplate>
              <div class="activity">

                <div class="activity-item d-flex">
                  <div class="activite-label"><%# Eval("Name") %></div>
                  <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    <%# Eval("feedback") %>
                  </div>
                    </div><!-- End activity item-->
                </div>
                </ItemTemplate>
                </asp:Repeater>
            </div>
          </div><!-- End Recent Activity -->

          <!-- Budget Report -->
          <!-- End Budget Report -->

          <!-- Website Traffic -->
          <!-- End Website Traffic -->

          <!-- News & Updates Traffic -->
          <div class="card">
           

            <div class="card-body pb-0">
              <h5 class="card-title">News &amp; Updates <span>| Today</span></h5>
<asp:Repeater ID="Repeater4" runat="server">
<ItemTemplate>
              <div class="news">
                <div class="post-item clearfix">
                  <img id="Img1" src='<%# Eval("Car_Image1") %>' runat="server" alt="">
                  <h4><a href="#"><%# Eval("Car_Name") %></a></h4>
                  <p><%# Eval("Car_Price") %></p>
                </div>

                
              </div><!-- End sidebar recent posts-->
              </ItemTemplate>
              </asp:Repeater>
            </div>
          </div><!-- End News & Updates -->

        </div><!-- End Right side columns -->

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