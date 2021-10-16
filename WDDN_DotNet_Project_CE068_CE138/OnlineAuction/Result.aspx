<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="OnlineAuction.WebForm13" %>
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
     <strong class="text">My Bids</strong><br /><br />
    
    <asp:GridView onrowcommand="GridView1_RowCommand" cssClass="gridview" ID="GridView1"  runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                        <ItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("PId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="200px" Width="250px" />
                    </asp:ImageField>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
            <asp:BoundField DataField="Bid_price" HeaderText="Bid Amount" />
            <asp:BoundField DataField="BidAmount" HeaderText="Sold Bid Amount" />
            <asp:ButtonField ButtonType="Button" CommandName="pay" HeaderText="Payment" ShowHeader="True" Text="Make Payment"  />
        </Columns>
    </asp:GridView>
    <br /><br />

</asp:Content>

