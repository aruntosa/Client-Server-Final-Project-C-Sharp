<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ProductID" BackColor="#DB6F26" OnItemCommand="FormView1_ItemCommand">
        
        <ItemTemplate>
            <table style="width:600px">
                 <tr>
                     <td style="width:330px; color:white">
                        <%--Name:--%>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' ForeColor="White" />
                                <br />
                                <br />
                         <%--Short Description:--%>
                            <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Bind("ShortDescription") %>' ForeColor="White" />
                                <br />
                                <br />
                         <%--Long Description:--%>
                            <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Bind("LongDescription") %>' ForeColor="White" />
                                <br />
                                <br />
                         Unit Price:
                            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' ForeColor="White" />
                                <br />
                                <br />
                        Quantity:
                            <asp:TextBox ID="txtQty" runat="server" MaxLength="99" Width="25px" BorderStyle="None">1</asp:TextBox>
                                <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorQty" runat="server" ControlToValidate="txtQty" Display="None" ErrorMessage="Quantity requires data!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <br />
                         <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CommandName="Add to Cart" BackColor="#DB6F26" BorderStyle="Groove" ForeColor="White" />
                         <asp:RangeValidator ID="RangeValidatorQty" runat="server" ControlToValidate="txtQty" Display="None" ErrorMessage="Quantity must be between 1 and 99!" MaximumValue="99" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                         <br />
                         <br />
                         <asp:Button ID="btnBack" runat="server" BackColor="#DB6F26" BorderStyle="Groove" ForeColor="White" OnClientClick="JavaScript:window.history.back(1);return false;" Text="Go Back" Width="100px" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="btnCart" runat="server" BackColor="#DB6F26" BorderStyle="Groove" ForeColor="White" Text="Go to Cart" Width="100px" OnClick="btnCart_Click" />
                      </td>
                     <td style="width:270px">
                            <asp:Image runat="server" ID="image1" width="263px" height="300px" imageurl='<%# Eval("ImageFile","Images/Products/{0}") %>' />
                     </td>
                 </tr>
             </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:Label ID="lblErMessage" runat="server" ForeColor="Red"></asp:Label>
    <asp:Label ID="lblAdMessage" runat="server" ForeColor="#009933"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1"  runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="val"/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [ProductID], [ShortDescription], [LongDescription], [ImageFile], [UnitPrice] FROM [Products] WHERE ([ProductID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="prod" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>

