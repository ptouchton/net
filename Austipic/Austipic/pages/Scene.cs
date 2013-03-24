using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Austipic.pages
{
    [Serializable]
    public class Scene
    {
        public string Text { get; set; }

        public int SequenceNumber { get; set; }

        public string Background { get; set; }

        public string[] Zone { get; set; }

    }
}
