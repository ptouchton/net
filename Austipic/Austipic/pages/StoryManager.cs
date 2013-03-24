using System.IO;
using System.Net;
using System.Web.Script.Serialization;


namespace Austipic.pages
{
    public class StoryManager
    {

        private string testJason = "";
        private string jsonData = "";
        public CurrentStoryViewModel GetStory(string readerId)
        {
            var url = "http://api.austipic.org/mystory?story=514f5af9ef39841ce4934c25&reader=" + readerId;
            var request = WebRequest.Create(url);
            var js = new JavaScriptSerializer();

            //get response-stream, and use a streamReader to read the content
            using (var s = request.GetResponse().GetResponseStream())
            {
                using (var sr = new StreamReader(s))
                {
                    jsonData = sr.ReadToEnd();
                    
                }
            }

            //decode jsonData with javascript serializer
            var jsonStory = js.Deserialize<CurrentStoryViewModel>(jsonData);

            return jsonStory;
        }
    }
}