<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineAuction.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left:380px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style4 {
            height: 29px;
            width: 250px;
        }
        .auto-style5 {
            height: 29px;
            width: 183px;
        }
        .footer{
            margin-top:0px;
        }
        .label1{
            margin-left:600px;
        }
        .main_content{
            background-image:url(background_4.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        
        .auto-style6 {
            height: 29px;
            margin-left: 120px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        </div>
    <br />
        <asp:Label ID="Label1" runat="server" CssClass="label1" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Login !"></asp:Label>
    &nbsp;
    <br />
    <br />
    <br />
    <br />
   <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Email:" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server" Height="35px" Width="239px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email"  Font-Bold="True" Font-Size="X-Large" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"  Font-Bold="True" Font-Size="X-Large" ErrorMessage="Please enter a valid email address !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Password:" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="passwd" runat="server" TextMode="Password" Height="36px" Width="238px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;
                    &nbsp;
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwd" Font-Size="X-Large" ErrorMessage="*"  Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="passwd"   Font-Bold="True" Font-Size="X-Large"  ErrorMessage="Password must be of 8-10 characters&lt;br/&gt; in length and these characters can be&lt;br/&gt; uppercase, lowercase, numeric, &lt;br/&gt;or underscores." ForeColor="Red" ValidationExpression="[A-Za-z0-9_]{7,11}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Font-Size="X-Large" Height="50px" Width="118px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Don't have an account?" Font-Size="X-Large"></asp:Label>
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx" Font-Size="X-Large">Register</asp:HyperLink>
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="here" Font-Size="X-Large"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" NavigateUrl="~/Index.aspx">Back</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>    
</asp:Content>
