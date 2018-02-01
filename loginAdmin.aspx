<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
    .button {
      border-style: none;
          border-color: inherit;
          border-width: medium;
          border-radius: 4px;
          background-color: #666;
          color: dodgerblue;
          text-align: center;
          font-size: 15px;
          padding: 20px;
          width: 200px;
          transition: all 0.5s;
          cursor: pointer;
 
    }

        .button:hover {
        background-color: #999;
    }

    .align_center{
        width:500px;
        margin:0 auto;
        text-align:center;
        border:1px solid black;
        border-radius:5px;
        background-color:#ccdbe5;
        padding-top:50px;
        padding-bottom:50px;
       
    }

    .margin{
        margin:30px;
    }

    .margin h2 {
        color: #0099FF;
        Font-Bold="True";
        Font-Size="14pt";
    }

</style>
</asp:Content>


    

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

    <div class="margin">
    <div class="align_center">

        <h2> LOGIN ADMINISTRATOR</h2>
        <br />
        <br />
    <p>
       
        <asp:Label ID="LblUsername" runat="server" ForeColor="#3399FF" Text="Admin Username" Font-Bold="True" Font-Size="14pt"></asp:Label>
    </p>
<p>
        <asp:TextBox ID="txtUserId" runat="server" ForeColor="#003300" style= BorderColor="#0099FF" BorderStyle="Double" Height="40px"  Width="350px"></asp:TextBox>
    </p>
    <p>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId" ErrorMessage="Admin Username Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>

        <asp:Label ID="lblPass" runat="server" ForeColor="#0099FF" Text="Password :" Font-Bold="True" Font-Size="14pt"></asp:Label>
    </p>

        <asp:TextBox ID="txtPassword" runat="server" style= BorderColor="#0099FF" BorderStyle="Double" Height="40px" Width="350px" TextMode="Password"></asp:TextBox>
<p>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
<p>
        <asp:Button ID="btnLogIn" runat="server" Text="Log In"  CssClass="button" Font-Bold="True" Font-Size="14pt" Height="70px" Width="250px" OnClick="btnLogIn_Click" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
  
</div>
        </div>
</asp:Content>

