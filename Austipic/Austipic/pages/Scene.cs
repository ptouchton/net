using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Austipic.pages
{
    [Serializable]
    public class Scene
    {
        public int Sequence { get; set; }

        public string Text { get; set; }

        public string Background { get; set; }

        public string Zone1 { get; set; }

        public string Zone2 { get; set; }

        public string Zone3 { get; set; }
    }
}
