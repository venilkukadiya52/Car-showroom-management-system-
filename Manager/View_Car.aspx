<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Car.aspx.cs" Inherits="Manager_View_Car" %>

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
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Nice Manager</span>
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
    <!-- End Sidebar-->
    <main id="main" class="main">

    <div class="pagetitle">
      <h1>Cars Details</h1>
     
    </div><!-- End Page Title -->

<section class="section dashboard">
      <div class="row">
      <form id="Form1" runat=server>
         <asp:Repeater ID="Repeater1" runat="server">
               <HeaderTemplate>
        <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

               
           
                <div class="card-body pb-0">
                  <h5 class="card-title"><span>Active Cars</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                      <th></th>
                   
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Model</th>
                        <th scope="col">Fule Type</th>
                        <th>Active Date</th>
                        <th></th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                     <ItemTemplate>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#"><img src='<%# Eval("Car_Image1") %>' alt=""></a></th>
                 
                        <td><b><font color="blue"><%# Eval("Car_Name") %></b></font></td>
                        <td><b><%# Eval("Car_Price") %> - <<%# Eval("Car_To_Price") %></b></td>
                        <td class="fw-bold"><%# Eval("Car_Model") %></td>
                        <td class="fw-bold"><%# Eval("Car_Fule_Type") %></td>
                        <td class="fw-bold"><%# Eval("Car_Active_Date") %></td>
                        <td><asp:LinkButton ID="deactive" runat="server" OnCommand="deactive_Click" CommandArgument='<%# Eval("Car_Id") %>' >Deactive</asp:LinkButton></td>
<td><asp:LinkButton ID="edit" runat="server" OnCommand="edit_Click" CommandArgument='<%# Eval("Car_Id") %>' >EDIT</asp:LinkButton></td>     
                  
                        

                      </tr>
                      
                    </tbody>
                     </ItemTemplate>
                     <FooterTemplate>
                  </table>

                </div>
               

              </div>
             
            </div><!-- End Top Selling -->
             </FooterTemplate>
                </asp:Repeater>
         
        <asp:Repeater ID="Repeater2" runat="server">
               <HeaderTemplate>
        <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

               
           
                <div class="card-body pb-0">
                  <h5 class="card-title"><span>Deactive Car</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                      <th></th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Model</th>
                        <th scope="col">Fule</th>
                        <th>Deactive Date</th>
                        <th></th>
                      </tr>
                    </thead>
                    </HeaderTemplate>
                     <ItemTemplate>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#"><img src='<%# Eval("Car_Image1") %>' alt=""></a></th>
                     
                        <td><b><font color="blue"><%# Eval("Car_Name") %></b></font></td>
                        <td><b><%# Eval("Car_Price") %></b></td>
                        <td class="fw-bold"><%# Eval("Car_Model") %></td>
                        <td class="fw-bold"><%# Eval("Car_Fule_Type") %></td>
                        <td class="fw-bold"><%# Eval("Car_Deactive_Date") %></td>
                        <td><asp:LinkButton ID="active" runat="server" OnCommand="active_Click" CommandArgument='<%# Eval("Car_Id") %>' >Active</asp:LinkButton></td>
                       

                      </tr>
                      
                    </tbody>
                     </ItemTemplate>
                     <FooterTemplate>
                  </table>

                </div>
               

              </div>
             
            </div><!-- End Top Selling -->
             </FooterTemplate>
                </asp:Repeater>
      
        <asp:Repeater ID="Repeater3" runat="server">
        <ItemTemplate>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                  <div class="col-sm-10">
                    <asp:TextBox ID="txtcarname" required="" Text='<%# Eval("Car_Name") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Model</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarmodel" required="" Text='<%# Eval("Car_Model") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
    <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Price</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarprice" required="" Text='<%# Eval("Car_Price") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Length</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarlength" required="" Text='<%# Eval("Car_Length") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Width</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarwidth" required="" Text='<%# Eval("Car_Width") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Height</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarheigth" required="" Text='<%# Eval("Car_Height") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Seating Capacity</label>
                  <div class="col-sm-10">
                   <asp:DropDownList ID="txtcarcapacity" Text='<%# Eval("Car_Capacity") %>' class="form-control" runat="server">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                   </asp:DropDownList>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Engine</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarengine" required="" Text='<%# Eval("Car_Engine") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Fule Type</label>
                  <div class="col-sm-10">
                   <asp:DropDownList ID="txtcarfuletype" Text='<%# Eval("Car_Fule_Type") %>' class="form-control" runat="server">
                   <asp:ListItem >Select</asp:ListItem>
                        <asp:ListItem Value="Petrol">Petrol</asp:ListItem>
                        <asp:ListItem Value="Diesel">Diesel</asp:ListItem>
                        <asp:ListItem Value="CNG">CNG</asp:ListItem>
                        <asp:ListItem Value="Electric">Electric</asp:ListItem>
                   </asp:DropDownList>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Mileage</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarmileage" required="" Text='<%# Eval("Car_Mileage") %>' class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Transmission Type</label>
                  <div class="col-sm-10">
                  <asp:DropDownList ID="txtcartransmissiontype" Text='<%# Eval("Car_Transmission_Type") %>' class="form-control" runat="server">
                  
                  <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="Auto">Auto</asp:ListItem>
                        <asp:ListItem Value="Manual">Manual</asp:ListItem>
                      
                   </asp:DropDownList>
                  
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Gear</label>
                  <div class="col-sm-10">
                    <asp:DropDownList ID="txtcargear" Text='<%# Eval("Car_Gear") %>' class="form-control" runat="server">
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

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Air Bag</label>
                  <div class="col-sm-10">
                  <asp:DropDownList ID="txtcarairbag" Text='<%# Eval("Car_Airbag") %>' class="form-control" runat="server">
                <asp:ListItem Value="0">Select</asp:ListItem>
                       <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                       <asp:ListItem Value="6">6</asp:ListItem>
                      
                   </asp:DropDownList>
                 
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Colour</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcarcolour" Text='<%# Eval("Car_Colour") %>' required="" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">Hight Of tyre</label>
                  <div class="col-sm-10">
                   <asp:TextBox ID="txtcartyreheight" Text='<%# Eval("Car_Tyre_Height") %>' required="" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image1") %>" alt="" class="img-fluid">

                                    </div>
                                 
                                    <br>
                                </div>
                
                <div class="col-sm-4 col-6">
                                    <div>
                                        <img src="<%# Eval("Car_Image2") %>" alt="" class="img-fluid">

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

               

                <div class="row mb-3">
                <asp:LinkButton ID="save" OnCommand="save_Click" class="form-control" Width="8%" CommandArgument='<%# Eval("Car_Id") %>' runat="server">UPDATE</asp:LinkButton>
                  <div class="col-sm-10">
                  
                    
                  </div>
                </div>
                </ItemTemplate>
                </asp:Repeater>
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
               
                <asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload>
                <asp:FileUpload ID="FileUpload3" runat="server"></asp:FileUpload>
                <asp:FileUpload ID="FileUpload4" runat="server"></asp:FileUpload>
                <asp:FileUpload ID="FileUpload5" runat="server"></asp:FileUpload>
                <asp:FileUpload ID="FileUpload6" runat="server"></asp:FileUpload>
                <asp:FileUpload ID="FileUpload7" runat="server"></asp:FileUpload>
              </form>
      </div>
      
    </section>

  </main>
    <!-- End #main -->
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
