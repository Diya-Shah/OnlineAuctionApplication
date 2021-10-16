<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JoinSession.aspx.cs" Inherits="OnlineAuction.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            font-size:x-large;
            color:black;
            
        }
        .auto-style1 {
            width: 100%;
            margin-left:100px;
        }
        .auto-style5 {
            height: 102px;
        }
        .auto-style6 {
            width: 446px;
        }
        .auto-style7 {
            height: 102px;
            width: 446px;
        }
        .auto-style8 {
            width: 80%;
            height: 220px;
        }
        .back{
            margin-left:600px;
        }
        .timer{
            color:red;
            font-size:xx-large;
        }
        .result{
            color:red;
            font-size:x-large;
        }
        .details{
            height:150px;
            width:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!-- <script type="text/javascript">
        function myfunction() {
            document.getElementById("Label1").remove();
            document.getElementById("TextBox1").remove();
            document.getElementById("Button1").remove();
        } 
    </script> -->
    <asp:ScriptManager ID="sp" runat="server"></asp:ScriptManager>
    <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick"></asp:Timer>
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" CssClass="timer" Font-Bold="True"></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
        </Triggers>
    </asp:UpdatePanel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>" SelectCommand="SELECT [BidderName], [BidAmount] FROM [Participants] WHERE ([PId] = @PId) ORDER BY [BidAmount] DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="PId" QueryStringField="Product" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    <table class="auto-style1">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="true" CssClass="result"></asp:Label>
            </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
        </Triggers>
    </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
            <asp:Image ID="Image1" runat="server" Height="227px" Width="306px" />
            </td>
            <td class="auto-style5" colspan="2">
                <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="true"></asp:Label>
                <br />
                <br />
                <div class="details">
            <asp:Label ID="Label3" runat="server"></asp:Label>
                    </div>
                <br />
                <br />
                <br />
                <br />
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="244px" Width="386px">
                <Columns>
                    <asp:BoundField DataField="BidderName" HeaderText="BidderName" SortExpression="BidderName" />
                    <asp:BoundField DataField="BidAmount" HeaderText="BidAmount" SortExpression="BidAmount" />
                </Columns>
            </asp:GridView>
            </td>
            <td colspan="2"><table class="auto-style8">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Bid Amount:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ToolTip="Please enter your bid amount!"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table></td>
        </tr>
    </table>
                 
    <br />
                 
    <asp:HyperLink ID="HyperLink4" cssClass="back" runat="server" Font-Size="X-Large" ForeColor="Black">Back</asp:HyperLink>

    

   
    <br />
    <br />

    

   
</asp:Content>
