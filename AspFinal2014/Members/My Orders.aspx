<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="My Orders.aspx.cs" Inherits="Members_My_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DB6F26" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource1" ForeColor="White" Width="648px">
        <Columns>
            <asp:CommandField SelectText="View Order" ShowSelectButton="True" />
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" ReadOnly="True" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="324px" AutoGenerateRows="False" BorderColor="#DB6F26" BorderStyle="Double" BorderWidth="5px" DataKeyNames="InvoiceNumber,ProductID" DataSourceID="SqlDataSource2" ForeColor="#DB6F26">
        <Fields>
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" ReadOnly="True" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Extension" HeaderText="Extension" SortExpression="Extension" />
        </Fields>
    </asp:DetailsView>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="525px" AutoGenerateRows="False" BorderColor="#DB6F26" BorderStyle="Double" BorderWidth="5px" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource3" ForeColor="#DB6F26">
        <Fields>
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" ReadOnly="True" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="CustNumber" HeaderText="CustNumber" SortExpression="CustNumber" />
            <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
            <asp:BoundField DataField="ShipMethod" HeaderText="ShipMethod" SortExpression="ShipMethod" />
            <asp:BoundField DataField="Shipping" HeaderText="Shipping" SortExpression="Shipping" />
            <asp:BoundField DataField="SalesTax" HeaderText="SalesTax" SortExpression="SalesTax" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="CreditCardType" HeaderText="CreditCardType" SortExpression="CreditCardType" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
            <asp:BoundField DataField="ExpirationMonth" HeaderText="ExpirationMonth" SortExpression="ExpirationMonth" />
            <asp:BoundField DataField="ExpirationYear" HeaderText="ExpirationYear" SortExpression="ExpirationYear" />
            <asp:BoundField DataField="ShipDate" HeaderText="ShipDate" SortExpression="ShipDate" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [InvoiceNumber], [OrderDate], [Total] FROM [Invoices] WHERE ([CustNumber] = ?)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="136" Name="CustNumber" SessionField="custid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [LineItems] WHERE ([InvoiceNumber] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="InvoiceNumber" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Invoices] WHERE ([InvoiceNumber] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="InvoiceNumber" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

