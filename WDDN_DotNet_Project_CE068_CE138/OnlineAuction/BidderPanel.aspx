<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BidderPanel.aspx.cs" Inherits="OnlineAuction.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            font-size:x-large;
            height:400px;
            color:black;
        }
        .gridview{
            margin-left:350px;
           width:600px;
           
        }
        .back{
            margin-left:600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
            <strong style="margin-left:600px;color:black;">Categories</strong><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>" SelectCommand="SELECT [Name], [CId] FROM [Category]"></asp:SqlDataSource>
            <br />
            <asp:GridView cssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CId" DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="CId" HeaderText="CId" InsertVisible="False" ReadOnly="True" SortExpression="CId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="Action" ShowHeader="True" Text="View Products" />
                </Columns>
            </asp:GridView>
    
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/login.aspx">Back</asp:HyperLink>
    <br /><br />
</asp:Content>
