<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellerPanel.aspx.cs" Inherits="OnlineAuction.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main_content{
            background-image:url(request_bg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
         }
        .gridview{
           margin-left:150px;
           width:1000px;
           color:black;
        }
        .links{
            margin-left:450px;
        }
        .back{
            margin-left:230px;
        }
    </style>
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
          <br /><br />
            <strong style="margin-left:625px;font-size:x-large;color:black;">My Products <br />
            </strong>
          <br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Auction %>" SelectCommand="SELECT [Image], [Name], [Details], [Bid_price], [CId] FROM [Product] WHERE (([Accepted] = @Accepted) AND ([SId] = @SId))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Accepted" Type="Byte" />
                    <asp:SessionParameter Name="SId" SessionField="Sid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView cssClass="gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Size="X-Large">
                <Columns>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="200px" Width="250px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Bid_price" HeaderText="Bid_price" SortExpression="Bid_price" >
                    </asp:BoundField>
                    <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" >
                    </asp:BoundField>
                    
                </Columns>
                
            </asp:GridView>
            <br />
            <br />
            <div class="links">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RequestProduct.aspx" Font-Size="X-Large" ForeColor="Black">Request Product</asp:HyperLink>
            &emsp;&emsp;&emsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SoldProducts.aspx" Font-Size="X-Large" ForeColor="Black">Sold Products</asp:HyperLink>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/login.aspx">Back</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
      
</asp:Content>
