<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gpay.aspx.cs" Inherits="OnlineAuction.WebForm17" %>
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
            margin-left:600px; 
            color:black;
        }
        .auto-style1 {
            width: 100%;
            margin-left: 400px;
        }
        .auto-style2 {
            width: 285px;
        }
        .auto-style3 {
            width: 285px;
            height: 36px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            height: 52px;
        }
        .auto-style6 {
            width: 487px;
            height: 36px;
        }
        .auto-style7 {
            width: 487px;
        }
        .auto-style8 {
            width: 285px;
            height: 42px;
        }
        .auto-style9 {
            width: 487px;
            height: 42px;
        }
        .auto-style10 {
            height: 42px;
        }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
     <strong class="text">Payment With Gpay</strong><br /><br /><br />
     
    
      <table class="auto-style1">
          <tr>
              <td colspan="3">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style3"></td>
              <td class="auto-style6">&nbsp;</td>
              <td class="auto-style4"></td>
          </tr>
          <tr>
              <td class="auto-style8">
                  <asp:Label ID="Label1" runat="server" Text="Enter Name :"></asp:Label>
              </td>
              <td class="auto-style9">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              </td>
              <td class="auto-style10">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style2">
                  <asp:Label ID="Label2" runat="server" Text="Enter UPI Pin :"></asp:Label>
              </td>
              <td class="auto-style7">
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="UPI Pin must be of maximum 4 digits !" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style5" colspan="3">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay" Width="134px" />
              </td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          
      </table>
     <br /><br />
    
</asp:Content>
