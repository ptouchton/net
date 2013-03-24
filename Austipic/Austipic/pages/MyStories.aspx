<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyStories.aspx.cs" Inherits="Austipic.pages.MyStories" %>
<script language="C#" runat="server">

      void LinkBalloons_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = true;
          this.trainsList.Visible = false;
          this.storyContent.Visible = false;
      }

      void Linktrains_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = false;
          this.trainsList.Visible = true;
          this.storyContent.Visible = false;

      }

      void LinkMyStories_Click(Object sender, EventArgs e)
      {
          this.balloonsList.Visible = false;
          this.trainsList.Visible = false;
          this.storyContent.Visible = true;

      }

   </script>
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        div.stage
        {
            height: 400px;
            width: 600px;  
            
        }
        div.zone
        {
            width: 200px;
            
        }
        .myStoriesLink
        {
            padding-bottom: 25px;    
        }
        .cropped
        {
            position: absolute;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div id="main">
    <div id="left" style="float: Left; width: 20%">
        <asp:Image runat="server" ImageUrl="../pics/jake.jpg" Height="75px"/><asp:LinkButton CssClass="myStoriesLink" runat="server" ID="linkMyStories" OnClick="LinkMyStories_Click">My Stories</asp:LinkButton>

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
    <div id="content" style="float: left" runat="server">
       <div id="balloonsList" runat="server" Visible="False">
        <asp:LinkButton runat="server" OnClientClick="javascript:window.open('http://www.youtube.com/watch?v=QqAJWCb74Uo')">2011 Gulf Coast Hot Air Balloon Festival Official Video</asp:LinkButton></br>
        <asp:LinkButton runat="server" OnClientClick="javascript:window.open('https://www.google.com/search?q=pictures+of+hot+air+balloons&hl=en&tbm=isch&tbo=u&source=univ&sa=X&ei=A0pOUcSgCKTC2QXyiIC4Bw&ved=0CC4QsAQ&biw=1280&bih=687')">Balloon pictures</asp:LinkButton>
       </div>
       <div id="trainsList" runat="server" Visible="False">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="javascript:window.open('http://www.youtube.com/watch?v=FKTHDrCnyzI')">Kids Love Trains Video</asp:LinkButton></br>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="javascript:window.open('https://www.google.com/search?q=train+pictures&hl=en&tbm=isch&tbo=u&source=univ&sa=X&ei=Qk5OUeuMKYjqqAH-mYC4DA&ved=0CDEQsAQ&biw=1280&bih=687')">Train pictures</asp:LinkButton>
       </div> 
       <div id="storyContent" runat="server" Visible="False" style="width: 730px;">
        <span runat="server" id="storyTitle" style="font-weight: bold; color: #034af3"></span>   
        <div style="width: 50px; height: 400px; float: left;position: relative;margin-left: auto;margin-right: auto;overflow: hidden;">
            <asp:ImageButton CssClass="cropped" Height="50px" ID="prevButton" ImageUrl="../img/prev.png" runat="server" Width="50px"/>       
        </div>   
        <div id="stage" runat="server" class="stage" style="float: left">
               <div id="zone1" class="stage zone" style="float: left; background-color: blue">1</div>
               <div id="zone2" class="stage zone" style="float: left; background-color: greenyellow">2</div>
               <div id="zone3" class="stage zone" style="float: left; background-color: rosybrown">3</div>
        </div>
        <div style="width: 50px; height: 400px; float: left;position: relative;margin-left: auto;margin-right: auto;overflow: hidden;">
            <asp:ImageButton runat="server" ID="nextButton"  ImageUrl="../img/next.png"  OnClick="nextButton_Onclick" CssClass="cropped" Height="50px" Width="50px"/>
        </div>
         <div runat="server" style="float: left; position: relative; margin-left: 65px; padding-top: 20px; font-size: 2em">
            <asp:Literal runat="server" id="storyText" ></asp:Literal>   
         </div>
       </div>
   </div> 
</asp:Content>

