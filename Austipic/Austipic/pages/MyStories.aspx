<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyStories.aspx.cs" Inherits="Austipic.pages.MyStories" %>
<script language="C#" runat="server">

      void LinkBalloons_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = true;
          this.trainsList.Visible = false;
          this.stage.Visible = false;
      }

      void Linktrains_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = false;
          this.trainsList.Visible = true;
          this.stage.Visible = false;

      }

      void LinkMyStories_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = false;
          this.trainsList.Visible = false;
          this.stage.Visible = true;

      }

   </script>
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        div.stage
        {
            height: 400px;
            width: 600px;  
        }
        
        .myStoriesLink
        {
            padding-bottom: 25px;    
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div id="main">
    <div id="left" style="float: Left; width: 20%">
        <asp:Image runat="server" ImageUrl="../pics/jake.jpg" Height="75px"/>       <asp:LinkButton CssClass="myStoriesLink" runat="server" ID="linkMyStories" OnClick="LinkMyStories_Click">My Stories</asp:LinkButton>

        <p>My Name is</p>
        <asp:Literal runat="server" ID="readerName">Jacob</asp:Literal>
        <p>I Like</p>
        <div style="margin-left: 5px">
         <asp:LinkButton runat="server" ID="linkBalloons" OnClick="LinkBalloons_Click" >HotAir Balloons</asp:LinkButton>
         <br/>
         <asp:LinkButton runat="server" ID="linkTrains" OnClick="Linktrains_Click">Trains</asp:LinkButton>
         <br/>
         <asp:LinkButton runat="server" ID="linkBoats">Fishing Boats</asp:LinkButton>
       </div>
    </div>
    <div id="content" runat="server">
       <div id="balloonsList" runat="server" Visible="False">
        <asp:LinkButton runat="server" OnClientClick="javascript:window.open('http://www.youtube.com/watch?v=QqAJWCb74Uo')">2011 Gulf Coast Hot Air Balloon Festival Official Video</asp:LinkButton></br>
        <asp:LinkButton runat="server" OnClientClick="javascript:window.open('https://www.google.com/search?q=pictures+of+hot+air+balloons&hl=en&tbm=isch&tbo=u&source=univ&sa=X&ei=A0pOUcSgCKTC2QXyiIC4Bw&ved=0CC4QsAQ&biw=1280&bih=687')">Balloon pictures</asp:LinkButton>
       </div>
       <div id="trainsList" runat="server" Visible="False">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="javascript:window.open('http://www.youtube.com/watch?v=FKTHDrCnyzI')">Kids Love Trains Video</asp:LinkButton></br>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="javascript:window.open('https://www.google.com/search?q=train+pictures&hl=en&tbm=isch&tbo=u&source=univ&sa=X&ei=Qk5OUeuMKYjqqAH-mYC4DA&ved=0CDEQsAQ&biw=1280&bih=687')">Train pictures</asp:LinkButton>
       </div>
       <div id="stage" runat="server" Visible="False" class="stage">
           test
       </div>
    </div>
</div> 
</asp:Content>

