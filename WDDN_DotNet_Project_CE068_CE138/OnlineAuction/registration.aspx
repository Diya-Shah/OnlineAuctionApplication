<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="OnlineAuction.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

        .auto-style1 {
            width: 100%;
            margin-left:200px;
        }
        .auto-style2 {
             width: 209px;
         }
        .auto-style3 {
             width: 209px;
             height: 31px;
         }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
             width: 309px;
         }
        .auto-style6 {
             height: 31px;
             width: 309px;
         }
        .label1{
            margin-left:600px;
        }
        .main_content{
            background-image:url(background_4.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            font-size:x-large;
        }
        .back{
            margin-left:600px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <asp:Label ID="Label1" cssClass="label1" runat="server" Font-Bold="True" ForeColor="White" Text="Registration"></asp:Label>
        <br />
        <br />
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                &nbsp;
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="email" ErrorMessage="Please enter a valid email address !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    :</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="X-Large">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                &nbsp;&nbsp;
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="passwd" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="passwd" ErrorMessage="Password must be of 8-10 characters&lt;br/&gt; in length and these characters can be uppercase, &lt;br/&gt;lowercase, numeric, or underscores." ForeColor="Red" ValidationExpression="[A-Za-z0-9_]{7,11}" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="cpasswd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cpasswd" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="passwd" ControlToValidate="cpasswd" ErrorMessage="Password and Confirm Password must match !" ForeColor="Red" Font-Bold="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Contact number:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="contact" ErrorMessage="*" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="contact" ErrorMessage="Please enter a valid contact-no !" ForeColor="Red" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$" Font-Bold="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="register" runat="server" OnClick="register_Click" Text="Register" />
                </td>
            </tr>
        </table>
        <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" NavigateUrl="~/login.aspx">Back</asp:HyperLink>
    <br /><br />
</asp:Content>
