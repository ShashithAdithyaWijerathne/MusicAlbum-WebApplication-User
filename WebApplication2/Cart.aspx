<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Shopping Cart</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="AlbumID" HeaderText="AlbumID" />
                        <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" />
                        <asp:ImageField DataImageUrlField="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/OrderConfirmation.aspx">Order</asp:LinkButton>
    </form>
</body>
</html>
