<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reviews.aspx.cs" Inherits="Wpltheoryfinalproject.reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reviews</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
       <style type="text/css">
          #dvtop
          {
              width:100%;
              height: 120px;
              background-color:khaki;
             text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            color: black;
            font-size: xx-large;
          }

          #dvleft
          {
              width:33%;
              height: 500px;
              background-color: white;
              float : left;
          }

          #dvmain
          {
              width:33%;
              height: 550px;
              float : left;
              background-color: white;
          }

          #dvright
          {
              width:33%;
              height: 500px;
              background-color: white;
              float : left;


          }

          #dvbottom{
            width: 100%;
            height:50px;
            float:left;
            background-color:khaki;
             text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            color: black;
            font-size: larger;
        }
</style>
</head>
<body>
       <div id="dvtop">
            <br />
            Python Programming
            </div>
         <div id="dvleft">
          
        </div>
       
        
        <div id="dvmain">
          <form id="reviewform" runat="server">
               <asp:Label CssClass="form-control" ID="Heading" runat="server" Text="Please Share Your Experience"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="namext" EnableClientScript="False" ErrorMessage="Oh no You Forgot Your Name!!!"></asp:RequiredFieldValidator>
              <asp:Label ID="name" runat="server" Text="Name" CssClass="form-control"></asp:Label>
               <asp:TextBox ID="namext" runat="server" class="form-control"></asp:TextBox>

              <asp:Label ID="Age" runat="server" Text="Age" CssClass="form-control"></asp:Label>
               <asp:TextBox ID="Agetxt" runat="server" class="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="edutxt" EnableClientScript="False" ErrorMessage="What About Your Education?"></asp:RequiredFieldValidator>
              <asp:Label ID="education" runat="server" Text="Education" CssClass="form-control"></asp:Label>
               <asp:TextBox ID="edutxt" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="thoughtstxt" EnableClientScript="False" ErrorMessage="Please Share Anything :)"></asp:RequiredFieldValidator>
              <asp:Label ID="thoughts" runat="server" Text="Share Your Thoughts" CssClass="form-control"></asp:Label>
               <asp:TextBox ID="thoughtstxt" runat="server" class="form-control"></asp:TextBox>
              
              <asp:Button ID="submit" runat="server" Text="Share It " CssClass="btn-danger" OnClick="submit_Click" />
          </form>
        </div>
       
        <div id="dvright">
            <img src="logo3.png" class="auto-style2" />
        </div>
        <div id="dvbottom" style="border-width: thin; border-style: inset">
            
            Group Memebers:&nbsp; Fatima&nbsp;&nbsp; |&nbsp; Sawera |&nbsp; Salman | Ummat-ul-Karaim></div>

    
</body>
</html>
