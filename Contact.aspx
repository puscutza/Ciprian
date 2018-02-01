<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" %>

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
  margin: 5px 5px 5px 241px;
      }
     #map {
          height: 400px;
          width: 40%;
          border-radius: 3%;
          padding: 25px 0px 5px 25px;
          float:right;
       }

     .contact {
    float: left;
    width:50%;
   
    
    }

     .main {
         width:90%;
         margin: 0 auto;
         height:600px;
     }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" src="Image/contact.jpg" width="100%" runat="server" />
        <p>

            <asp:Label runat="server" ID="lblDisplay" Text="" Visible="False" Font-Bold="True" Font-Size="14pt" ForeColor="#3399FF"></asp:Label>

        </p>
    <div class="main">
        <div class="contact">
        <p>
            &nbsp;<asp:Label ID="lblName" runat="server" ForeColor="#0099FF" Text="Name" AssociatedControlID="txtName" BorderColor="Black" Font-Bold="True" Font-Size="14pt"></asp:Label>
            &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="reqValName" runat="server" ControlToValidate="txtName" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" Style="margin-left: 28px" OnTextChanged="txtName_TextChanged" BorderColor="#0099FF" BorderStyle="Double" Height="41px" Width="513px"></asp:TextBox>

        </p>
        <p>
            &nbsp;<asp:Label ID="lblSurname" runat="server" ForeColor="#0099FF" Text="Surname" AssociatedControlID="txtSurname" Font-Bold="True" Font-Size="14pt"></asp:Label>
            <asp:RequiredFieldValidator ID="reqValSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:TextBox ID="txtSurname" runat="server" Style="margin-left: 23px" BorderColor="#0099FF" BorderStyle="Double" Height="41px" Width="513px"></asp:TextBox>
        </p>
        <p>
            &nbsp;<asp:Label ID="lblEmail" runat="server" ForeColor="#0099FF" Text="E-mail" AssociatedControlID="txtEmail" Font-Bold="True" Font-Size="14pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" Style="margin-left: 22px" BorderColor="#0099FF" BorderStyle="Double" CssClass="active" Height="41px" Width="513px"></asp:TextBox>
        </p>
        <asp:RegularExpressionValidator ID="regexValEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="save">Example of a E-mail : username@gmail.com</asp:RegularExpressionValidator>
        <p>
            <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" ForeColor="#3399FF" Text="Subject" Font-Bold="True" Font-Size="14pt"></asp:Label>
            <asp:RequiredFieldValidator ID="reqValSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:TextBox ID="txtSubject" runat="server" Style="margin-left: 40px; margin-top: 0px;" BorderColor="#0099FF" BorderStyle="Double" Height="41px" Width="513px"></asp:TextBox>
        </p>
        <p>
            &nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="#0099FF" Text="Message" AssociatedControlID="txtMessage" Font-Bold="True" Font-Size="14pt"></asp:Label>
            &nbsp;
    <asp:RequiredFieldValidator ID="reqValMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
    <asp:TextBox ID="txtMessage" runat="server" Height="128px" Width="512px" Style="margin-top: 0px; margin-left: 16px;" BorderColor="#0099FF" BorderStyle="Double"></asp:TextBox>
        </p>
        <p>
            &nbsp;
        </p>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" ValidationGroup="save" Font-Bold="True" Font-Size="14pt" Height="70px" Width="250px" />
    </div>



        <div id="map"></div>
    
    <script>
      function initMap() {
        var uluru = {lat: 51.584193, lng: 0.456607};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15
            ,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBcv3DPrbaK3yqS30itoqieDCOrnjtIopM &callback=initMap">
    </script>
        </div>
    </asp:Content>

