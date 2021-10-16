<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestProduct.aspx.cs" Inherits="OnlineAuction.WebForm8" %>
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
        .auto-style1{
            margin-left:400px;
        }
        .back{
            margin-left:600px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>"  SelectCommand="SELECT [Name], [SId], [CId] FROM [Category] WHERE ([SId] = @SId)">
        <SelectParameters>
            <asp:SessionParameter Name="SId" SessionField="Sid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
      <div>
            <strong class="text">Request Product</strong><br /><br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="name" runat="server" Width="168px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Details :</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="detail" runat="server" Height="45px" TextMode="MultiLine" Width="406px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="detail" ErrorMessage="*" Font-Bold="True" Font-Italic="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Image :</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="img" runat="server" />
                        <asp:TextBox ID="ImgTextBox" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Minimum Bid-Price :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="bid_price" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="bid_price" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Category :</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="CId">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Time:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="time" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="time" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Date:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="bidDate" runat="server"></asp:TextBox>
                        <!--<a href="#" onclick="$('#Calendar1').show()"><img src="~/CalImg.png"/></a>-->
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/CalImg.png" Width="34px" ImageAlign ="AbsBottom" OnClick ="ImageButton1_Click"/>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#999999" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Request_Product" runat="server" OnClick="Request_Product_Click" Text="Request_Product" CssClass="auto-style2" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </div>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/SellerPanel.aspx">Back</asp:HyperLink>
    <br />
    <br />
    </asp:Content>
