<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminSoldProducts.aspx.cs" Inherits="OnlineAuction.WebForm20" %>
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
     <br />
     <br />
     <br />
     <br />
    <strong class="text">SellerDetails</strong><br /><br />
     <asp:GridView cssClass="gridview" ID="GridView2" runat="server" AutoGenerateColumns="False">
          <Columns>
            <asp:BoundField DataField="SId" HeaderText="Seller ID" />
            <asp:BoundField DataField="Name" HeaderText="Seller Name" />
              </Columns>
     </asp:GridView>
     <br />
     <br />
     <br />
     <strong class="text">Sold Product Details</strong><br /><br />
    
    <asp:GridView cssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="200px" Width="250px" />
                    </asp:ImageField>
            <asp:BoundField DataField="Name" HeaderText="Product Name" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
            <asp:BoundField DataField="Bid_price" HeaderText="Bid Amount" />
        </Columns>
    </asp:GridView>
     <br />
    <br /><br />
</asp:Content>
