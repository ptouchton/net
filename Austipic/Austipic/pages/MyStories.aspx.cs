using System;
using Austipic;

namespace Austipic.pages
{

    public partial class MyStories : System.Web.UI.Page
    {
        private const string storyViewStateKey = "storyViewStateKey";

        private CurrentStoryViewModel StoryView
        {
            get { return (CurrentStoryViewModel)this.ViewState[storyViewStateKey]; }

            set { this.ViewState[storyViewStateKey] = value; }
        }
    
    protected
        void Page_Load 
        (object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.StoryView = new StoryManager().GetStory();

                //set first story board
                this.storyTitle.InnerText = StoryView.Title;
                this.storyText.Text = StoryView.Scenes[0].Text;
                this.prevButton.Visible = false;

            }

        }

    

    }
    }