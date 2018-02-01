<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>

    body {
           background-image: url("image/background.jpg");
        }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="Prod_Name" HeaderText="Product Name" ReadOnly="True" />
            <asp:BoundField DataField="Prod_Price" HeaderText="Price" ReadOnly="True" />
            <asp:BoundField DataField="Qty" HeaderText="Quantity" />
            <asp:ImageField DataImageUrlField="Prod_Img" DataImageUrlFormatString="~\Image\{0}" HeaderText="Image" ReadOnly="True">
            </asp:ImageField>
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("Prod_Price").ToString())*Int32.Parse(Eval("Qty").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label2" runat="server" visible="false" Text="Label"></asp:Label>
</asp:Content>

