<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/loginandsignup.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Wpltheoryfinalproject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


      
        #dvmidlogin{
             width:100%;
            height:335px;
            background-color:white;
            border-radius:4px;
            padding-left : 5px;
            
        }


     

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    

    <div id="dvmidlogin">

          <br />

          <br />
        <asp:Label ID="name" runat="server" Text="Name" class="label label-default" Width="159px" Height="27px" Font-Bold="True" Font-Size="Large"></asp:Label> 
          <br />
      <br />
        <asp:TextBox ID="namext" runat="server" Width="266px" class="form-control" Height="30px"></asp:TextBox> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="namext" EnableClientScript="False" ErrorMessage="*Enter Your Name" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC99"></asp:RequiredFieldValidator>
          <br />
        <br />
        <asp:Label ID="pass" runat="server" Text="Password" class="label label-default" Width="161px" Height="27px" Font-Bold="True" Font-Size="Large"></asp:Label>
       
       
          <br />
       
          <br />
       

        <asp:TextBox ID="passtxt" runat="server" TextMode="Password" class="form-control" Width="265px" Height="30px"></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" EnableClientScript="False" ErrorMessage="*Enter Your Password" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC99"></asp:RequiredFieldValidator>
       
          <br />
        <br />
        <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="Button1_Click"  class="btn btn-dark" Height="44px" Width="91px"/>
        &nbsp;
        <asp:Button ID="signupbutton" runat="server" Text="Signup" OnClick="signupbutton_Click"   class="btn btn-dark" Height="44px" Width="91px" />
</div>
    <br />
    </asp:Content>

