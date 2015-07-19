<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            width: 306px;
        }
        .auto-style3 {
            height: 33px;
            width: 306px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: darkkhaki">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="SignUp Now!" ForeColor="White"></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" ForeColor="White" Text="All fields Required!"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table style="border-style: none; border-color: inherit; border-width: thin; width: 400px; height: 324px;">
        <tr style ="height:33px">
            <td style="width:195px">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="White" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp; &nbsp;
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" Display="Dynamic" ErrorMessage="Email Required!" ForeColor="White" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="not a valid Email address!" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="White" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPass" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Password Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="White" Text="First Name:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtFName" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="First Name Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="White" Text="Last Name:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtLName" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="Last Name Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="White" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtAddress" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="White" Text="City:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtCity" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City Required!" ForeColor="White">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="White" Text="State:"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="S_NAME" DataValueField="S_ABBREVIATION" ForeColor="#DB6F26">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" ForeColor="White" Text="Zip Code:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtZip" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorZip" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Zip Code Required!" ForeColor="White">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorZip" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Not a valid Zip Code!" ForeColor="White" ValidationExpression="\d{5}?">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" ForeColor="White" Text="Phone Number:"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPhone" runat="server" BorderStyle="None" ForeColor="#DB6F26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone Number Required!" ForeColor="White">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Not a valid Phone Number! Include dashes!" ForeColor="White" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnSignup" runat="server" Text="SignUp!" BackColor="#DB6F26" BorderStyle="Outset" ForeColor="White" Width="120px" OnClick="btnSignup_Click" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErMessage" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [States]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
</asp:Content>

