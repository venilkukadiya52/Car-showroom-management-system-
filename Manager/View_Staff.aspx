﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Staff.aspx.cs" Inherits="Admin_View_Staff" %>

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
      <h1>View Staff</h1>
      
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row" >
      <form runat="server">
            <!-- Recent Sales -->
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Staff Details<span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Staff First Name</th>
                        <th scope="col">Staff Middle Name</th>
                        <th scope="col">Staff Last Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Email</th>
                        <th scope="col">Date Of join</th>
                       
                      </tr>
                    </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tbody>


                      <tr>
                        <th scope="row"><a href="#"><%# Eval("id") %></a></th>
                        <td><%# Eval("fname") %></td>
                        <td><%# Eval("mname") %></td>
                        <td><%# Eval("lname") %></td>
                        <td><%# Eval("address") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("doj") %></td>
                        <td><a href="deactivestaff.aspx?<%# Eval("id") %>" >Deactive</a></td>
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