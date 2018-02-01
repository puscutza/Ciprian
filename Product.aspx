<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("Prod_Img") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Prod_Price") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prod_Desc") %>'></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text =" Buy Now" OnClick="Button1_Click"/>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

