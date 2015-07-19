<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Members_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 648px;
            height: 150px;
            background-color: #F46D11;
        }
        .auto-style4 {
            width: 648px;
            height: 120px;
            background-color: #F46D11;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Order Information" Font-Size="X-Large" ForeColor="#DB6F26"></asp:Label>
    <table class="auto-style2">
        <tr >
            <td style="width:124px">
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="First Name:"></asp:Label>
            </td>
            <td style="width:200px">
                <asp:Label ID="lblFName" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td style="width:124px">
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Last Name:"></asp:Label>
            </td>
            <td style="width:200px">
                <asp:Label ID="lblLName" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Shipping:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblShipping" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Order Subtotal:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSubtotal" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Sales Tax:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTax" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Total Amount:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotal" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" BorderStyle="None" ForeColor="#DB6F26" MaxLength="30" Width="161px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddr" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" ForeColor="White" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" BorderStyle="None" ForeColor="#DB6F26" MaxLength="20" Width="156px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Zip Code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtZip" runat="server" BorderStyle="None" ForeColor="#DB6F26" MaxLength="5" Width="40px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorZip" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Zip Code Required!" ForeColor="White">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorZip" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Not a Valid Zip Code!" ForeColor="White" ValidationExpression="\d{5}?">*</asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" ForeColor="White" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#DB6F26" DataSourceID="SqlDataSource1" DataTextField="S_NAME" DataValueField="S_ABBREVIATION">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Billing Information" Font-Size="X-Large" ForeColor="#DB6F26"></asp:Label>
    <br />
    <table class="auto-style4">
        <tr>
            <td style="width:135px">
                <asp:Label ID="Label13" runat="server" ForeColor="White" Text="Ship via:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblShip" runat="server" RepeatDirection="Horizontal" ForeColor="White">
                    <asp:ListItem Text="UPS" Value="UPS" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="USPS" Value="USPS"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Credit Card Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCcard" runat="server" BorderStyle="None" ForeColor="#DB6F26" MaxLength="19" Width="135px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCreditCard" runat="server" ControlToValidate="txtCcard" Display="Dynamic" ErrorMessage="Credit Card Required!" ForeColor="White">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCreditCard" runat="server" ControlToValidate="txtCcard" Display="Dynamic" ErrorMessage="Not a Valid Credit Card!" ForeColor="White" ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}?">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" ForeColor="White" Text="Card Type:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblCardType" runat="server" ForeColor="White" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Visa</asp:ListItem>
                    <asp:ListItem>Mastercard</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Expiration Date:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Month" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlMonth" runat="server" ForeColor="#F46D11">
                    <asp:ListItem Text="Jan" Value="1" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Mar" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Apr" Value="4"></asp:ListItem>
                    <asp:ListItem Text="May" Value="5"></asp:ListItem>
                    <asp:ListItem Text="June" Value="6"></asp:ListItem>
                    <asp:ListItem Text="July" Value="7"></asp:ListItem>
                    <asp:ListItem Text="Aug" Value="8"></asp:ListItem>
                    <asp:ListItem Text="Sept" Value="9"></asp:ListItem>
                    <asp:ListItem Text="Oct" Value="10"></asp:ListItem>
                    <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
                    <asp:ListItem Text="Dec" Value="12"></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Text="Year" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlYear" runat="server" ForeColor="#F46D11">
                    <asp:ListItem Text="2015" Value="2015" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                    <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
                    <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                    <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                    <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                    <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                    <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                    <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                    <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label17" runat="server" Text="Items in Cart" Font-Size="X-Large" ForeColor="#DB6F26"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="648px" BackColor="#DB6F26" ForeColor="White" GridLines="None">
        <Columns>
            <asp:BoundField DataField="CartNumber" HeaderText="CartNumber" SortExpression="CartNumber" Visible="False" />
            <asp:TemplateField HeaderText="Product" SortExpression="ImageFile">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="85px" imageurl='<%# Eval("ImageFile","~/Images/Products/{0}") %>'/>  
                </ItemTemplate>
                <ItemStyle VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" SortExpression="UnitPrice" ReadOnly="True" DataFormatString="{0:c}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Total" SortExpression="extension">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("extension", "{0:c}") %>'></asp:Label>
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblerr" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCart" runat="server" Text="Back to Cart" BackColor="#DB6F26" BorderStyle="Outset" CausesValidation="False" Font-Size="Medium" ForeColor="White" Height="35px" PostBackUrl="~/Cart.aspx" Width="110px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnConfirm" runat="server" BackColor="#DB6F26" BorderStyle="Outset" Font-Size="Medium" ForeColor="White" Height="35px" Text="Proceed with order" Width="144px" OnClick="btnConfirm_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [States]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [CartNumber], [Name], [UnitPrice], [Quantity], [extension], [ImageFile] FROM [Cart_view02] WHERE ([CartNumber] = 100)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="100" Name="CartNumber" SessionField="cartid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
</asp:Content>

