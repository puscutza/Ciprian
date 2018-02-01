<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/MenuCategory.ascx" TagPrefix="uc1" TagName="MenuCategory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        
        .category{
            padding:10px 100px 10px 30px;
            width:60%;
            margin:0 auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:MenuCategory runat="server" ID="MenuCategory" />
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("Prod_Img") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
            <br />
            £<asp:Label ID="Label2" runat="server" Text='<%# Eval("Prod_Price") %>'></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Product.aspx?Prod_ID="+Eval("Prod_ID") %>' Text="View Detailes"></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>

