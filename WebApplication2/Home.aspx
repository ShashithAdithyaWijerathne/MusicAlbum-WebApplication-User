<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Album</h1>
            <p>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="AlbumID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="334px">
                    <ItemTemplate>
                        AlbumID:
                        <asp:Label ID="AlbumIDLabel" runat="server" Text='<%# Eval("AlbumID") %>' />
                        <br />
                        AlbumName:
                        <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Eval("AlbumName") %>' />
                        <br />
                        Genre:
                        <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="280px" ImageUrl='<%# Eval("Image","~\\Img\\{0}") %>' PostBackUrl='<%# Eval("AlbumID", "~\\Details.aspx?id={0}") %>' Width="315px" />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlbumDBConnectionString %>" ProviderName="<%$ ConnectionStrings:AlbumDBConnectionString.ProviderName %>" SelectCommand="SELECT [AlbumID], [AlbumName], [Artist], [Genre], [Price], [Rating], [Image] FROM [AlbumTable]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
