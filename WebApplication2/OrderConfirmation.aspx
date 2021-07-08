<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="WebApplication2.OrderConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Order Confirmation</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="AlbumID" HeaderText="AlbumID" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">Place Order</asp:LinkButton>
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server">New Order</asp:LinkButton>
        </div>
    </form>
</body>
</html>
