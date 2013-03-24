using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Austipic.pages
{
    [Serializable]
    public class CurrentStoryViewModel
    {

        public string BaseUrl { get; set; }

        public ID Id { get; set; }

        public string Title { get; set; }

        public string Keywords { get; set; }

        public int Version { get; set; }

        public int[] Levels { get; set; }

        public Scene[] Scenes { get; set; }

        

    }

   
}
