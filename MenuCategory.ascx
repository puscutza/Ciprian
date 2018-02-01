<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MenuCategory.ascx.cs" Inherits="MenuCategory" %>
<asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" RepeatDirection="Horizontal" CssClass="cat">
    <ItemTemplate>
        <div class="category">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default.aspx?Cat_ID="+Eval("Cat_ID") %>' Text='<%# Eval("Cat_Name") %>' ImageUrl='<%# "Image/"+Eval("Cat_Image") %>'></asp:HyperLink>
    
      </div>   
    </ItemTemplate>
</asp:DataList>

