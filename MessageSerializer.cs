using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Serialization;

namespace Easy.Messaging
{
    
    public static class MessageSerializer
    {
        private static JsonSerializerSettings _serializerSettings;

        
        static MessageSerializer()
        {
            _serializerSettings = new JsonSerializerSettings()
            {
                DateFormatHandling = DateFormatHandling.IsoDateFormat
            };
            _serializerSettings.Converters.Add(new StringEnumConverter 
            { 
                NamingStrategy = new CamelCaseNamingStrategy()
            });
        }

        
        public static string Serialize(object value)
        {
            return JsonConvert.SerializeObject(value, _serializerSettings);
        }

        
        public static JObject Deserialize(string value)
        {
            return JsonConvert.DeserializeObject<JObject>(value, _serializerSettings);
        }
    }
}