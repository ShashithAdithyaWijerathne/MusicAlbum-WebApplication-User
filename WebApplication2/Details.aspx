<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication2.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Album Details </h1>
            <p>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="AlbumID" DataSourceID="SqlDataSource1" Width="323px">
                    <ItemTemplate>
                        AlbumID:
                        <asp:Label ID="AlbumIDLabel" runat="server" Text='<%# Eval("AlbumID") %>' />
                        <br />
                        AlbumName:
                        <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Eval("AlbumName") %>' />
                        <br />
                        Artist:
                        <asp:Label ID="ArtistLabel" runat="server" Text='<%# Eval("Artist") %>' />
                        <br />
                        Genre:
                        <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        Rating:
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="254px" ImageUrl='<%# Eval("Image","\\Img\\{0}") %>' Width="246px" />
                        <br />
                        <br />
                        Quantity:
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Add to cart</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Cart.aspx">View Cart</asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlbumDBConnectionString %>" ProviderName="<%$ ConnectionStrings:AlbumDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [AlbumTable] WHERE ([AlbumID] = ?)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="AlbumID" QueryStringField="id" Type="Int16" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
