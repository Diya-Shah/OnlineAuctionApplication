<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="OnlineAuction.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            font-size:x-large;
            color:black;
        }
        .gridview{
            margin-left:50px;
           width:1200px;
            
           
        }
        .text{
            margin-left:600px; 
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <br /><BR /><center>Products Requested :</center><br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>" SelectCommand="SELECT [Name], [Details], [Image], [Bid_price], [CId], [SId], [date], [time] FROM [Product] WHERE ([Accepted] = @Accepted)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Accepted" Type="Byte" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand">
                <Columns>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="Bid_price" HeaderText="Bid_price" SortExpression="Bid_price" />
                    <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" />
                    <asp:BoundField DataField="SId" HeaderText="SId" SortExpression="SId" />
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                    <asp:ButtonField ButtonType="Button" CommandName="accept" HeaderText="Action" Text="Accept" />
                    <asp:ButtonField ButtonType="Button" CommandName="decline" Text="Decline" HeaderText="Action" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
        <center>     
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminSoldProducts.aspx">Sold Products</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminBidList.aspx">Bids</asp:HyperLink>
        <br /><br />
             </center>
        </div>
</asp:Content>
