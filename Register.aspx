<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .button {
      border-style: none;
          border-color: #737373;
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
          margin-bottom: 50px;
        }
  
        body {
           background-image: url("image/background.jpg");
        }
  
        .register {
            width:60%;
            text-align:center;
            border:1px solid black;
              margin: 0 auto;
              background-color:#ccdbe5;
              border-radius:10px;

        }

        .register h2 {
            color:#0099FF;
            Font-Bold="True";
            Font-Size="14pt";
        }

        .register table {
            width:100%;
          
            padding:20px;
        }


        .maindiv{
            margin: 30px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" ForeColor="#3399FF" Font-Size="14"></asp:Label>

    <br />
       <br />
    <div class="maindiv">
    <div class="register">
        <h2> CREATE ACCOUNT</h2>
    <table>
    <tr>
        <td>
<asp:Label ID="lblEmail" runat="server" ForeColor="#3399FF" Text="E-Mail" Font-Bold="True" Font-Size="14pt" Height="20px" style= Width="300px"></asp:Label>
</td>
        <td>
<asp:TextBox ID="txtEmail" runat="server" style= BorderColor="#0099FF" BorderStyle="Double" Height="50px" Width="550px"></asp:TextBox>
</td>
        <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-Mail Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
     </td>
            </tr>


        <tr>
            <td>
<asp:Label ID="lblConfEmail" runat="server" ForeColor="#3399FF" Text="Confirm E-Mail" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Height="20px" style= Width="300px"></asp:Label>
</td>
            <td>
<asp:TextBox ID="txtConfEmail" runat="server" style= BorderColor="#0099FF" BorderStyle="Double" Height="50px" Width="550px"></asp:TextBox>
</td>
            <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2"  display="Dynamic"  runat="server" ControlToValidate="txtConfEmail" ErrorMessage="Confirm E-mail Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>

<asp:CompareValidator ID="CompareValidator1" runat="server"  display="Dynamic"  ControlToCompare="txtEmail" ControlToValidate="txtConfEmail" ErrorMessage="CompareValidator" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:CompareValidator>
  </td>
                </tr>

        <tr>
            <td>
<asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="#3399FF" Font-Bold="True" Font-Size="14pt" Height="20px" style= Width="300px"></asp:Label>
</td>
            <td>
<asp:TextBox ID="txtPassword" runat="server" style= BorderColor="#0099FF" BorderStyle="Double" Height="50px" Width="550px" TextMode="Password"></asp:TextBox>
</td>
            <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
                </tr>

        <tr>
            <td>
<asp:Label ID="lblConfPassword" runat="server" Text="Confirm Password" ForeColor="#3399FF" Font-Bold="True" Font-Italic="False" Font-Size="14pt" Height="20px" style= Width="300px"></asp:Label>
</td>
            <td>
<asp:TextBox ID="txtComfPass" runat="server" style= BorderColor="#0099FF" BorderStyle="Double" Height="50px" Width="550px" TextMode="Password"></asp:TextBox>
</td>
            <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtComfPass"  display="Dynamic"  ErrorMessage="Comfirm Password Required" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtComfPass"  display="Dynamic"  ErrorMessage="CompareValidator" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:CompareValidator>
  </td>
                </tr>

    </table>
<asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" CssClass="button" Font-Bold="True" Font-Size="14pt" Height="70px" Width="250px" OnClick="btnCreateAccount_Click"  />
</div>
</div>
</asp:Content>

