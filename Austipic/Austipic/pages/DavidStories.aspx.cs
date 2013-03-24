using System;
using System.Web.Script.Serialization;
using System.Web.UI;
using Austipic;
using Austipic.pages;

namespace Austipic.pages
{

    public partial class DavidStories : System.Web.UI.Page
    {
        private const string storyViewStateKey = "storyViewStateKey";

        private const string currentSceneStateKey = "currentSceneStateKey";

        private const string nextSceneStateKey = "nextSceneStateKey";

        private CurrentStoryViewModel StoryView
        {
            get { return (CurrentStoryViewModel)this.ViewState[storyViewStateKey]; }

            set { this.ViewState[storyViewStateKey] = value; }
        }

        private int CurrentScene
        {
            get { return (int) this.ViewState[currentSceneStateKey]; }

            set { this.ViewState[currentSceneStateKey] = value; }
        }

        private int NextScene
        {
            get { return (int)this.ViewState[nextSceneStateKey]; }

            set { this.ViewState[nextSceneStateKey] = value; }
        }

        protected
        void Page_Load 
        (object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                StoryView = new StoryManager().GetStory("514f4bfeef39841ce4934c22");

                //set story background
                var backgroundUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[0].Background);
                this.stage.Style.Add("BACKGROUND-IMAGE",backgroundUrl.ToString());
                //set first story board
                this.storyTitle.InnerText = StoryView.Title;
                this.storyText.Text = StoryView.Scenes[0].Text;
                this.prevButton.Visible = false;
                this.CurrentScene = StoryView.Scenes[0].SequenceNumber;
                this.NextScene = StoryView.Scenes[0].SequenceNumber + 1;

                //images
                this.zone1Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[0].Zone[0]).ToString();
                this.zone2Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[0].Zone[1]).ToString(); ;
                this.zone3Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[0].Zone[2]).ToString(); ;

            }

        }

    protected void nextButton_OnClick(object sender, ImageClickEventArgs e)
    {
        //get the next scene and display
        var myStoryView = StoryView;
        this.storyText.Text = myStoryView.Scenes[this.NextScene].Text;
        this.prevButton.Visible = true;
        this.nextButton.Visible = true;
        this.CurrentScene = myStoryView.Scenes[this.NextScene].SequenceNumber;


        //images
        this.zone1Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.NextScene].Zone[0]).ToString();
        this.zone2Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.NextScene].Zone[1]).ToString();
        this.zone3Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.NextScene].Zone[2]).ToString();

        this.NextScene = myStoryView.Scenes[this.NextScene].SequenceNumber + 1;

        StoryView = myStoryView;

    }

        protected void prevButton_OnClick(object sender, ImageClickEventArgs e)
    {
        
        //get the previous scene and display
        var myStoryView = StoryView;
        this.storyText.Text = myStoryView.Scenes[this.CurrentScene - 1].Text;
        this.prevButton.Visible = true;
        this.nextButton.Visible = true;
        this.CurrentScene = myStoryView.Scenes[this.CurrentScene].SequenceNumber - 1;

        //images
        this.zone1Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.CurrentScene - 1].Zone[0]).ToString();
        this.zone2Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.CurrentScene - 1].Zone[1]).ToString(); ;
        this.zone3Img.ImageUrl = new Uri(StoryView.BaseUrl + "/" + StoryView.Scenes[this.CurrentScene - 1].Zone[2]).ToString(); ;

        this.NextScene = myStoryView.Scenes[this.CurrentScene].SequenceNumber - 1;

       StoryView = myStoryView;


    }
    }
    }