<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SoldProducts.aspx.cs" Inherits="OnlineAuction.WebForm11" %>
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
        .back{
            margin-left: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <strong class="text">Sold Products</strong><br /><br />
    <asp:GridView cssClass="gridview" ID="GridView1"  runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="200px" Width="250px" />
                    </asp:ImageField>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
            <asp:BoundField DataField="Bid_price" HeaderText="Minimum Bid Amount" />
            <asp:BoundField DataField="BidderName" HeaderText="BidderName" />
            <asp:BoundField DataField="BidAmount" HeaderText="Maximum Bid Amount" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/SellerPanel.aspx">Back</asp:HyperLink>
            <br />
            <br />
</asp:Content>
