<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [ProductID], [Name], [ImageFile], [CategoryID] FROM [Products] WHERE ([CategoryID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CategoryID" QueryStringField="cat" Type="String" DefaultValue="costumes" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#DB6F26" Text="Click on the name above the image for more details!" Font-Bold="True"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" BorderColor="#DB6F26" BorderStyle="Ridge">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="20px" Font-Underline="True" ForeColor="#DB6F26" NavigateUrl='<%# "Order.aspx?prod=" + Eval("ProductID") %>'>
                <%# Eval("Name") %>
            </asp:HyperLink>
            <asp:Image ID="Image1" runat="server" style="width:200px; height:275px" ImageUrl='<%# Eval("ImageFile","Images/Products/{0}") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

