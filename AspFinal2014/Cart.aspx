<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
         DataKeyNames="CartNumber,ProductID" DataSourceID="SqlDataSource1" GridLines="None" ShowFooter="True" Width="647px" BackColor="#DB6F26" ForeColor="White" onrowdatabound="GridView1_RowDataBound" CellPadding="4">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="White"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="White"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" ForeColor="White"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" onclientclick="return confirm('Are you sure you wish to Remove this item?');" ForeColor="White"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle VerticalAlign="Top" />
            </asp:TemplateField>
          
            <asp:TemplateField HeaderText="Product" SortExpression="ImageFile">
                    <EditItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="100px" Width="85px" imageurl='<%# Eval("ImageFile","Images/Products/{0}") %>'/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="100px" Width="85px" imageurl='<%# Eval("ImageFile","Images/Products/{0}") %>'/>
                    </ItemTemplate>
                    <ItemStyle VerticalAlign="Top" />
                </asp:TemplateField>

            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" Visible="False" />

            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" SortExpression="UnitPrice" ReadOnly="True" DataFormatString="{0:c}" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
            </asp:BoundField>

            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                 <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>' Width="52px" MaxLength="99"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Quantity must be between 1 and 99" MaximumValue="99" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Quantity is required"></asp:RequiredFieldValidator>
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                 </ItemTemplate>
                 <FooterTemplate>
                    Total:
                 </FooterTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Item Total" SortExpression="extension">
                 <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("extension", "{0:c}") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("extension", "{0:c}") %>'></asp:Label>
                 </ItemTemplate>
                 <FooterTemplate>
                    <asp:Label ID="lblTotalPrice" runat="server" Text="0"></asp:Label>
                 </FooterTemplate>
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" />
                    <FooterStyle HorizontalAlign="Right" />
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCheckout" runat="server" Text="Checkout" BackColor="#DB6F26" BorderStyle="Outset" Font-Size="Medium" ForeColor="White" Height="30px" PostBackUrl="~/Members/Checkout.aspx" Width="110px" />
    &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>"  
                        DeleteCommand="DELETE FROM Cart_LineItems WHERE (CartNumber = ?) AND (ProductID = ?)" 
                        SelectCommand="SELECT * FROM [Cart_view02] WHERE ([CartNumber] = ?)"
                        UpdateCommand="UPDATE Cart_LineItems SET [Quantity] = ? 
                                        WHERE ([CartNumber] = ?) AND ([ProductID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="CartNumber" SessionField="cartid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="CartNumber" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="CartNumber" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AcmeShoppeConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AcmeShoppeConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Cart_view01] WHERE ([CartNumber] = ?)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="100" Name="CartNumber" SessionField="cartid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        
    </asp:Content>

