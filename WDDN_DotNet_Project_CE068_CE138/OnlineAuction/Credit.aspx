<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Credit.aspx.cs" Inherits="OnlineAuction.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            font-size:x-large;
            color:black;
        }
        .text{
            margin-left:500px; 
            color:black;
        }
        .auto-style1 {
            width: 100%;
            margin-left:400px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            width: 347px;
        }
        .auto-style6 {
            height: 36px;
            width: 347px;
        }
        .auto-style7 {
            width: 310px;
        }
        .auto-style8 {
            height: 36px;
            width: 310px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
     <strong class="text">Payment With Credit/Debit Card</strong><br /><br /><br />
     
    
     <table class="auto-style1">
         <tr>
             <td colspan="3">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label4" runat="server"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style7">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">
                 <asp:Label ID="Label1" runat="server" Text="Enter Name :"></asp:Label>
             </td>
             <td class="auto-style6">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
             <td class="auto-style4">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style7">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7">
                 <asp:Label ID="Label2" runat="server" Text="Enter Card-No :"></asp:Label>
             </td>
             <td class="auto-style5">
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Card number must of maximum 12 digits !" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{0,12}"></asp:RegularExpressionValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style7">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7">
                 <asp:Label ID="Label3" runat="server" Text="Enter CVV :"></asp:Label>
             </td>
             <td class="auto-style5">
                 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
             </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="CVV must be of maximum 4 digits !" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style7">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td colspan="3">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay" Width="134px"/>
             </td>
         </tr>
         <tr>
             <td class="auto-style7">&nbsp;</td>
             <td class="auto-style5">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     
    
     <br />
     <br />
     
    
</asp:Content>
