<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineAuction.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 400px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 168px;
        }
        .auto-style5 {
            height: 30px;
            width: 168px;
        }
        .auto-style6 {
            height: 29px;
            width: 168px;
        }
        .label{
            margin-left:400px;
        }
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            font-size:x-large;
            color:black;
        }
        .back{
            margin-left: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <strong><asp:Label cssClass="label" ID="Label1" runat="server"></asp:Label></strong>



    <br />
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server" Text="Suggestion/Query:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="query" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
    <br />
    <br />



</asp:Content>
