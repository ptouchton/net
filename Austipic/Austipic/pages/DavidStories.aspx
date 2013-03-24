<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DavidStories.aspx.cs" Inherits="Austipic.pages.DavidStories" %>
<script language="C#" runat="server">

      void LinkMyStories_Click(Object sender, EventArgs e)
      {
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
            margin-left: 5px;    
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
        .zone
        {
            overflow: hidden;
            vertical-align: bottom; 
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div id="main">
    <div id="left" style="float: Left; width: 20%">
        <asp:Image runat="server" ImageUrl="../pics/david.jpg" Height="75px"/>
        <p>My Name is</p>
        <asp:Literal runat="server" ID="readerName">David</asp:Literal>
        
        <p>My Stories</p>
          <asp:LinkButton CssClass="myStoriesLink" runat="server" ID="linkMyStories" OnClick="LinkMyStories_Click">Going to The mall</asp:LinkButton>
        <p>I Like</p>
        <div style="margin-left: 5px">
       </div>
    </div>
    <div id="content" style="float: left" runat="server">
       <div id="storyContent" runat="server" Visible="False" style="width: 730px;">
        <span runat="server" id="storyTitle" style="font-weight: bold; color: #034af3"></span>   
        <div style="width: 50px; height: 400px; float: left;position: relative;margin-left: auto;margin-right: auto;overflow: hidden;">
            <asp:ImageButton CssClass="cropped" Height="50px" ID="prevButton" OnClick="prevButton_OnClick" ImageUrl="../img/prev.png" runat="server" Width="50px"/>       
        </div>   
        <div id="stage" runat="server" class="stage" style="float: left;">
               <div id="zone1" class="stage zone" style="float: left;" ><asp:Image CssClass="zone" runat="server" ID="zone1Img"/></div>
               <div id="zone2" class="stage zone" style="float: left;"><asp:Image CssClass="zone" runat="server" ID="zone2Img"/></div>
               <div id="zone3" class="stage zone" style="float: left;"><asp:Image CssClass="zone" runat="server" ID="zone3Img"/></div>
        </div>
        <div style="width: 50px; height: 400px; float: left;position: relative;margin-left: auto;margin-right: auto;overflow: hidden;">
            <asp:ImageButton runat="server" ID="nextButton"  ImageUrl="../img/next.png"  OnClick="nextButton_OnClick" CssClass="cropped" Height="50px" Width="50px"/>
        </div>
         <div runat="server" style="float: left; position: relative; margin-left: 65px; padding-top: 20px; font-size: 2em">
            <asp:Literal runat="server" id="storyText" ></asp:Literal>   
         </div>
       </div>
   </div> 
</asp:Content>

