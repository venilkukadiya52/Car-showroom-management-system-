<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Client_payment_getway_payment" %>

<!DOCTYPE html>
<html>
    <title>
        Bharat University | Login Page
    </title>
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
<link rel="stylesheet" href="login.css" type="text/css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent">
    
    <center><h2 class="active"> Payment Get Way </h2></center>
    

   
    

   
    <form runat=server>
   <div id="formFooter2">
      <a class="underlineHover" href="#">CarDeal</a><br />
      <a class="underlineHover" href="#">25000</a><br />
<a class="underlineHover" href="#">2526 6XXX XXXX XXXX</a>
    
    </div>
    <br />
      <input type="text" id="credit-card" autocomplete="off" class="fadeIn second" name="login" placeholder="2526 2XXX XXXX XXXX ">
      <input type="text" id="Text1" class="fadeIn third" name="amount"  placeholder="Card Holder Name">
      <input type="month" id="Text2" class="fadeIn third" min="2022-03" style="width:250px" name="amount"  placeholder="Expiry Date">
      <input type="password" id="Text3" maxlength="3" style="width:120px" class="fadeIn third" name="amount"  placeholder="CVV">
     <asp:Button ID="Button1" class="fadeIn fourth" runat="server"
Text="Pay" ></asp:Button>
    </form>

    <div id="formFooter">
      <a class="" href="#">Your Token Amount Pay To CarDeal</a>
    </div>

  </div>
</div>

<script>
    $('#credit-card').on('keypress change blur', function () {
        $(this).val(function (index, value) {
            return value.replace(/[^a-z0-9]+/gi, '').replace(/(.{4})/g, '$1 ');
        });
    });

    $('#credit-card').on('copy cut paste', function () {
        setTimeout(function () {
            $('#credit-card').trigger("change");
        });
    });
    var navLinks = document.getElementById("navLinks");

    function showmenu() {
        navLinks.style.right = "0";
    }
    function hidemenu() {
        navLinks.style.right = "-200px";
    }
</script>
</body>
</html>