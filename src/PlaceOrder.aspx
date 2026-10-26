<%@ Page Language="vb" AutoEventWireup="false" CodeFile="PlaceOrder.aspx.vb" Inherits="PlaceOrder" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Place Order</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Place Order</h2>

        <form id="formPlaceOrder" runat="server">
            <div>
                <label for="ddlCustomer">Select Customer:</label>
                <asp:DropDownList ID="ddlCustomer" runat="server" AutoPostBack="false" CssClass="dropdown" 
                    AppendDataBoundItems="True">
                    <asp:ListItem Text="-- Select Customer --" Value="" />
                </asp:DropDownList>
            </div>

            <div>
                <label for="ddlProduct">Select Product:</label>
                <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="false" CssClass="dropdown" 
                    AppendDataBoundItems="True">
                    <asp:ListItem Text="-- Select Product --" Value="" />
                </asp:DropDownList>
            </div>

            <div>
                <label for="txtQuantity">Quantity:</label>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="textbox" />
            </div>

            <div>
                <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
            </div>

            <div>
                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
