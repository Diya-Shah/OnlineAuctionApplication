<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="OnlineAuction.WebForm19" %>
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
        .text1{
            margin-left:200px; 
            color:black;
        }
        .text2{
            margin-left:400px; 
            color:black;
        }
        .links{
            margin-left:450px;
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
     <strong class="text">Congratulations !!</strong><br /><br />
     <strong class="text1">Your Payment has completed  sucessfully !! 
          Your Item will be dispached within 24 hours !!
         <br /><br />
         </strong>
             <p class="text2">
         ThankYou For Visiting !!
         Have a Great Day :))

     </p><br /><br />
   <div class="links">
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Result.aspx" Font-Size="X-Large" ForeColor="Black">View Other Results</asp:HyperLink>
       &emsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Index.aspx" Font-Size="X-Large" ForeColor="Black">Home</asp:HyperLink>
       </div>
     <br /><br />
</asp:Content>
