<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">
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
    <form id="Form1" runat="server">
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">NiceAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    

  </header>
    <!-- End Header -->
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

  </aside>
    <!-- End Sidebar-->
    <main id="main" class="main">

    <div class="pagetitle">
      <h1>Reports</h1>
     
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">
  
    <div>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="35%" class="form-control">
                    <asp:ListItem>- Select -</asp:ListItem>
                    
                    <asp:ListItem>booking</asp:ListItem>
                    <asp:ListItem>testdrive</asp:ListItem>
                    <asp:ListItem>booking & testdrive</asp:ListItem>
                    <asp:ListItem>testdrive without booking</asp:ListItem>
                    <asp:ListItem>booking but not buy</asp:ListItem>
                    <asp:ListItem>buy without testdrive</asp:ListItem>
                    <asp:ListItem>buy with testdrive & booking</asp:ListItem>
                    <asp:ListItem>pending testdrive</asp:ListItem>
                    <asp:ListItem>done testdrive</asp:ListItem>
                    
           </asp:DropDownList>
       <asp:Button ID="Button1" runat="server" Text="View" onclick="Button1_Click"></asp:Button>
    </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
    <rsweb:ReportViewer ID="ReportViewer2" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
      <rsweb:ReportViewer ID="ReportViewer3" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
      <rsweb:ReportViewer ID="ReportViewer4" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
      <rsweb:ReportViewer ID="ReportViewer5" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
      <rsweb:ReportViewer ID="ReportViewer6" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
      <rsweb:ReportViewer ID="ReportViewer7" runat="server" 
        Width="100%">
    </rsweb:ReportViewer>
            
          </div>
          </section>
    </form>
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
  </footer>
    <!-- End Footer -->
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>
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
