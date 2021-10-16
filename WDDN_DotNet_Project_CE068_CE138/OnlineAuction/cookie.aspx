<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cookie.aspx.cs" Inherits="OnlineAuction.WebForm14" %>
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
        .back{
            margin-left: 600px;
        }
        
        .auto-style1 {
            width: 70%;
            margin-left: 200px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <strong class="text">Cookie Policy</strong><br />

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>COOKIES</b>&nbsp;
A cookie is a simple text file that is stored on your computer or mobile device by a website’s server and only that server will be able to collect or read the contents of that cookie. Each cookie is unique to your web browser. It will contain some anonymous information such as a unique identifier and the site name and some digits and numbers. It allows a website to learn things like your preferences or what’s in your shopping cart. Using our website will result in us placing cookies on your computer in the 4 categories set out below.
          <ul>
              <li>Strictly necessary: These cookies are essential to enable you to move around the website and use its features, such as accessing secure areas of the website; many of the functions on our website will not work properly, or at all, if you do not allow these cookies to be used. We may therefore be unable to provide many of the services you may wish to request unless you accept the use of these cookies.</li>
              <li>Performance: These cookies collect information about how our users use a website, for example which pages users go to most often. These cookies do not collect information that identifies a user: all information these cookies collect is accumulated and is therefore anonymous. The information is only used to improve how the website works.</li>
              <li>Functionality: These cookies allow the website to remember preferences you make (such as your language, user name, or the region you are in) and provide enhanced, more personalized characteristics (for instance, remembering changes you have made to text size and fonts).</li>
              <li>Advertising or Targeting: We sometimes partner with third parties to deliver more relevant advertisements and to gather web statistics. These third parties may use cookies and other tracking technology to monitor your visits to both Luxeford’s and other websites. They monitor your online behavior and identify website usage, helping advertisers to provide you advertising and content that is more relevant to you.</li>
          </ul>
          Some examples of what Advertising and Targeting Cookies do:
          <ul>
              <li>Provide advertisers with information about your visit to our websites so they can provide you advertising that is relevant to you.</li>
              <li>Limit the number of times you see an advertisement.</li>
              <li>Help measure the effectiveness of an advertising campaign.</li>
          </ul>
           
           Please note - none of these cookies store personally identifiable information and we only use trusted advertising partners. Just so you know, these third parties will have their own privacy policies and they may be different from ours.&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="back" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
            <br />
            <br />
</asp:Content>
