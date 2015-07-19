<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Images_Maintenence_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="150px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="700px" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" OnItemInserted="DetailsView1_ItemInserted">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:TemplateField HeaderText="ProductID" SortExpression="ProductID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPIDIns" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Product ID Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNameEdit" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNameIns" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShortDescription" SortExpression="ShortDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ShortDescription") %>' Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorShortEdit" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Short Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ShortDescription") %>' Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorShortIns" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Short Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LongDescription" SortExpression="LongDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LongDescription") %>' Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLongEdit" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Long Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LongDescription") %>' Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLongIns" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Long Name Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCatEdit" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Category ID Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCatIns" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Category ID Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorImgEdit" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Image File Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorImgIns" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Image File Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ImageFile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPriceEdit" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Unit Price Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorPriceEdit" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Not a Valid Price!" ForeColor="Red" MaximumValue="1000.00" MinimumValue="0.01" Type="Double">*</asp:RangeValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPriceIns" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Unit Price Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorPriceIns" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Not a Valid Price!" ForeColor="Red" MaximumValue="1000.00" MinimumValue="0.01" Type="Double">*</asp:RangeValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OnHand" SortExpression="OnHand">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("OnHand") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHandEdit" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="On Hand Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorHandEdit" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="On Hand not Valid!" ForeColor="Red" MaximumValue="99" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("OnHand") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHandIns" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="On Hand Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorHandIns" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="On Hand not Valid!" ForeColor="Red" MaximumValue="99" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("OnHand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblGood" runat="server" ForeColor="#009933"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT [ProductID], [Name] FROM [Products]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = ?)" UpdateCommand="UPDATE [Products] SET [Name] = ?, [ShortDescription] = ?, [LongDescription] = ?, [CategoryID] = ?, [ImageFile] = ?, [UnitPrice] = ?, [OnHand] = ? WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ProductID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
                <asp:Parameter Name="ProductID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
