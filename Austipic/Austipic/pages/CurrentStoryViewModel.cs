using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Austipic.pages
{
    [Serializable]
    public class CurrentStoryViewModel
    {
        public string StoryId { get; set; }

        public string Title { get; set; }

        public string Keywords { get; set; }

        public Scene[] Scenes { get; set; }

    }

 }
