using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Austipic.pages
{
    public class StoryManager
    {

        public CurrentStoryViewModel GetStory()
        {
            var scene = new Scene
                {
                    Background = "~/img/prev.png",
                    Sequence = 1,
                    Text = "Bubba, it's time to go to the Walmart!",
                    Zone1 = "~/img/prev.png",
                    Zone2 = "~/img/prev.png",
                    Zone3 = "~/img/prev.png"
                };
            var scene2 = new Scene
                {
                    Background = "~/img/prev.png",
                    Sequence = 1,
                    Text = "Bubba puts on his best pair of cutoffs!",
                    Zone1 = "~/img/prev.png",
                    Zone2 = "~/img/prev.png",
                    Zone3 = "~/img/prev.png"
                };
            var scene3 = new Scene
                {
                    Background = "~/img/prev.png",
                    Sequence = 1,
                    Text = "Bubba looks at toys at the Walmart!",
                    Zone1 = "~/img/prev.png",
                    Zone2 = "~/img/prev.png",
                    Zone3 = "~/img/prev.png"
                };


            var scenes = new Scene[3];
            scenes[0] = scene;
            scenes[1] = scene2;
            scenes[2] = scene3;
            var story = new CurrentStoryViewModel
                {
                    Keywords = "Bubba goes to walmart",
                    StoryId = "12345",
                    Title = "Bubba goes to walmart",
                    Scenes = scenes
                };

            return story;
        }
    }
}