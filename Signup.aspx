<%@ Page Title="Signup" Language="C#" MasterPageFile="~/loginandsignup.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Wpltheoryfinalproject.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="form-group">
         <table class="table table-striped table-bordered table-hover table-condensed">

             <tr>
                 <td colspan="3">
                     <asp:Label ID="Heading" runat="server" Text="Sign Up Your Details"></asp:Label>
                 </td>
                 
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
                 </td>
                 <td>
                      <asp:TextBox ID="namext" runat="server" class="form-control"></asp:TextBox>
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Oh You Forgot Your Name :(" ControlToValidate="namext" EnableClientScript="False" EnableViewState="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                      <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
                 </td>
                 <td>

        <asp:TextBox ID="passtxt" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Some Tricky Password :-)" ControlToValidate="passtxt" EnableClientScript="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                 <td>
                     <asp:Label ID="cpass" runat="server" Text="Confirm Password"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="cpasstxt" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                     
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Oops Password didn't Matched :')" ControlToValidate="cpasstxt" EnableClientScript="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="fname" runat="server" Text="Father Name"></asp:Label>
                 </td>

                 <td>
                       <asp:TextBox ID="fnametxt" runat="server" class="form-control"></asp:TextBox>
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Father Name" ControlToValidate="fnametxt" EnableClientScript="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                 <td>
                       <asp:Label ID="dob" runat="server" Text="Date Of Birth"></asp:Label>
                 </td>
                 <td>
                       <asp:TextBox ID="dobtxt" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter Date Of Birth" ControlToValidate="dobtxt" EnableViewState="False" EnableClientScript="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                 <td>
                      <asp:Label ID="education" runat="server" Text="Education Level"></asp:Label>
                 </td>

                 <td>
                     
          <asp:TextBox ID="edutxt" runat="server" class="form-control"></asp:TextBox>
                 </td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Education Level" ControlToValidate="edutxt" EnableClientScript="False"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                 <td colspan="2">
                     
        <asp:Button ID="signupbutton" class="btn btn-dark" runat="server" Text="Signup" OnClick="signupbutton_Click" Height="45px" Width="117px"/>
                 </td>
                 <td class="auto-style1">
                     
        <asp:Button ID="back" class="btn btn-dark" runat="server" Text="Back" Height="45px" Width="117px" OnClick="back_Click"/>
                 </td>
             </tr>
         </table>
</div>
     
  
</asp:Content>
