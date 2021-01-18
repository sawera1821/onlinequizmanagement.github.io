<%@ Page Title="Beginners Quiz" Language="C#" MasterPageFile="~/quizmaster.Master" AutoEventWireup="true" CodeBehind="beginnersquiz.aspx.cs" Inherits="Wpltheoryfinalproject.beginnersquiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
 
    <style type="text/css">
    .auto-style3 {
        height: -12px;
    }
</style>
   
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr class="auto-style3" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="quesno" runat="server" Text="Label" Font-Size="X-Large" ForeColor="Black"></asp:Label> &nbsp;:
    <asp:Label ID="ques" runat="server" Text="Label" Font-Size="X-Large" ForeColor="Black"></asp:Label>
    <hr /><br />
    &nbsp;
    <asp:RadioButton ID="ans1" runat="server" OnCheckedChanged="ans1_CheckedChanged" Font-Size="X-Large" />
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="ans2" runat="server" OnCheckedChanged="ans2_CheckedChanged" Font-Size="X-Large" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="ans3" runat="server" OnCheckedChanged="ans3_CheckedChanged" Font-Size="X-Large" />

    <br /> <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="next" runat="server" Text="Next" OnClick="next_click" class="btn btn-dark" Height="40px" Width="73px" BackColor="Black" CssClass="auto-style1" Font-Bold="True" Font-Size="Large" ForeColor="White"/>
    &nbsp;&nbsp;
    <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="Submit" class="btn btn-dark" Height="40px" Width="76px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%--<asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%--<asp:Label ID="timelabel" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" BackColor="Black"></asp:Label>--%>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text=""></asp:Label>
&nbsp;&nbsp;
    <asp:Label ID="scoree" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="checkans" runat="server" Text="Check Answers" CssClass="auto-style3" OnClick="checkans_Click" class="btn btn-dark" Height="40px" Width="144px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" />
        <asp:Button ID="back" runat="server" Text="Back" CssClass="auto-style3"  class="btn btn-dark" Height="40px" Width="144px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="back_Click" />
    <br />
    <div id="showans">
<asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="108px" OnSelectedIndexChanged="grid1_SelectedIndexChanged"  >  
     <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="Question Number">  
             <ItemTemplate>  
                 <asp:Label ID="quesno" runat="server" Text='<%#Bind("quesno") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Question">  
             <ItemTemplate>  
                 <asp:Label ID="question" runat="server" Text='<%#Bind("question") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Selected Answer">  
             <ItemTemplate>  
                 <asp:Label ID="selans" runat="server" Text='<%#Bind("ans") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Correct Answer">  
             <ItemTemplate>  
                 <asp:Label ID="corrans" runat="server" Text='<%#Bind("correctans") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  
     <EditRowStyle BackColor="#2461BF" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
 </asp:GridView> 

    </div>
  
    </asp:Content>


