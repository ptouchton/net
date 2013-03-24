<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Austipic._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:ImageButton runat="server"  Height="100px" Width="100px" ImageUrl="pics/jake.jpg" ID="readerJake" PostBackUrl="pages/JacobStories.aspx"></asp:ImageButton>
        &nbsp;&nbsp;
        <asp:ImageButton runat="server"  Height="100px" Width="100px" ImageUrl="pics/david.jpg" ID="readerDavid" PostBackUrl="pages/DavidStories.aspx"></asp:ImageButton>
    </div>
</asp:Content>
