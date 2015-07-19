<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Maintenence_Categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF9900" BorderColor="#FF9933" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" >
                <HeaderStyle BackColor="#F46D11" />
                <ItemStyle BackColor="#F46D11" ForeColor="White" />
                </asp:CommandField>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" >
                <HeaderStyle BackColor="#F46D11" />
                <ItemStyle ForeColor="#F46D11" />
                </asp:BoundField>
                <asp:BoundField DataField="ShortName" HeaderText="ShortName" SortExpression="ShortName" >
                <HeaderStyle BackColor="#F46D11" />
                <ItemStyle ForeColor="#F46D11" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CategoryID" DataSourceID="SqlDataSource2" Height="50px" Width="300px" OnItemInserted="DetailsView1_ItemInserted">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCatIns" runat="server" ErrorMessage="Category ID Required!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShortName" SortExpression="ShortName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ShortName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSNEdit" runat="server" ErrorMessage="Short Name required!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txtSnIns" runat="server" Text='<%# Bind("ShortName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSNIns" runat="server" ErrorMessage="Short Name required!" ControlToValidate="txtSnIns" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ShortName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LongName" SortExpression="LongName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LongName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLNEdit" runat="server" ErrorMessage="Long Name required!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LongName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLNIns" runat="server" ErrorMessage="Long Name required!" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("LongName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PageTitle" SortExpression="PageTitle">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PageTitle") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPTEdit" runat="server" ErrorMessage="Page Title required!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PageTitle") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPTIns" runat="server" ErrorMessage="Page Title required!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("PageTitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="#F46D11"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="#F46D11"></asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>

        <asp:Label ID="lblGood" runat="server" ForeColor="#339933"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [CategoryID], [ShortName] FROM [Categories]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Categories] WHERE (([CategoryID] = ?) AND ([CategoryID] = ?))" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = ?" InsertCommand="INSERT INTO [Categories] ([CategoryID], [ShortName], [LongName], [PageTitle]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [Categories] SET [ShortName] = ?, [LongName] = ?, [PageTitle] = ? WHERE [CategoryID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="CategoryID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ShortName" Type="String" />
                <asp:Parameter Name="LongName" Type="String" />
                <asp:Parameter Name="PageTitle" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID2" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ShortName" Type="String" />
                <asp:Parameter Name="LongName" Type="String" />
                <asp:Parameter Name="PageTitle" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
