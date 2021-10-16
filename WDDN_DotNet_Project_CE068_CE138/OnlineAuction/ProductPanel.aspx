<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductPanel.aspx.cs" Inherits="OnlineAuction.WebForm6" %>
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
            margin-left:150px;
            width:1000px;
           
        }
        .back{
            margin-left: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <br />
            <strong style="margin-left:600px;color:black;">Products</strong><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>" SelectCommand="SELECT * FROM [Product] WHERE (([CId] = @CId) AND ([Accepted] = @Accepted) AND ([Sold] = @Sold))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CId" QueryStringField="Category" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="Accepted" Type="Byte" />
                    <asp:Parameter DefaultValue="0" Name="Sold" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView cssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  onrowcommand="GridView1_RowCommand" OnSelectionChanged="reg_SelectionChanged">
                <Columns>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Width="100" ControlStyle-Height = "100">
                        
<ControlStyle Height="200px" Width="250px"></ControlStyle>
                        
                    </asp:ImageField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details">
                    </asp:BoundField>
                    <asp:BoundField DataField="Bid_price" HeaderText="Bid_price" SortExpression="Bid_price" />
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="Bid_price" />
                    <asp:BoundField DataField="time" HeaderText="Time" SortExpression="Bid_price" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Participate" ShowHeader="True" Text="Register Here"  />
                    <asp:TemplateField>
                        <ItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("PId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
       
            <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/BidderPanel.aspx">Back</asp:HyperLink>
       
            <br />
            <br />
            <br />
       
</asp:Content>
