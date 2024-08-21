<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaymentCheckout.aspx.cs" Inherits="Client_paytm_PaymentCheckout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <table>
                <tr>
                    <td>
                    Checkout now
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtorderid" placeholder="ORDRE ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtcustomerid" placeholder="Customer ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtname" placeholder="NAME"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtemailid" placeholder="EMAIL ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtcontactno" placeholder="CONTACT NO"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtamount" placeholder="AMOUNT"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btncheckout"  runat="server" Text="CHECKOUT" OnClick="btncheckout_Click" /> </td>
                </tr>
            </table>
    </form>
</body>
</html>
