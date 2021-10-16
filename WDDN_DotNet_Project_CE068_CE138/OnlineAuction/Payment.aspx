<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="OnlineAuction.WebForm16" %>
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
        .radio,.button{
            margin-left:600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
     <strong class="text">Payment Modes</strong><br /><br />
    
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="160px" Width="277px" CssClass="radio">
        <asp:ListItem>Gpay</asp:ListItem>
        <asp:ListItem>Credit/Debit</asp:ListItem>
    </asp:RadioButtonList>
        <br />
        <asp:Button cssClass="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    <br /><br />
</asp:Content>
