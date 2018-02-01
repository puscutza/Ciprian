<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Administrator.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button2" runat="server" Text="LogOut" OnClick="Button2_Click" />
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" InsertVisible="False" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
                <asp:BoundField DataField="Prod_Img" HeaderText="Prod_Img" SortExpression="Prod_Img" />
                <asp:BoundField DataField="Prod_Price" HeaderText="Prod_Price" SortExpression="Prod_Price" />
                <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
                <asp:BoundField DataField="Cat_ID" HeaderText="Cat_ID" SortExpression="Cat_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Prod_ID] = @Prod_ID" InsertCommand="INSERT INTO [Product] ([Prod_Name], [Prod_Img], [Prod_Price], [Prod_Desc], [Cat_ID]) VALUES (@Prod_Name, @Prod_Img, @Prod_Price, @Prod_Desc, @Cat_ID)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Prod_Name] = @Prod_Name, [Prod_Img] = @Prod_Img, [Prod_Price] = @Prod_Price, [Prod_Desc] = @Prod_Desc, [Cat_ID] = @Cat_ID WHERE [Prod_ID] = @Prod_ID">
            <DeleteParameters>
                <asp:Parameter Name="Prod_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Img" Type="String" />
                <asp:Parameter Name="Prod_Price" Type="Decimal" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
                <asp:Parameter Name="Cat_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Img" Type="String" />
                <asp:Parameter Name="Prod_Price" Type="Decimal" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
                <asp:Parameter Name="Cat_ID" Type="Int32" />
                <asp:Parameter Name="Prod_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  Product Name
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Product Name Required" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
    <br />
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> Product Price
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Product Price Required" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
    </p>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> Product Description
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Product Description Required" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
    <br />
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Cat_Name" DataValueField="Cat_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </p>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="File Upload Required" ForeColor="Red" ValidationGroup="Save"></asp:RequiredFieldValidator>
    <br />
    <p>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" ValidationGroup="Save"/>
    </p>

    <br />

  
</asp:Content>

