using System;

namespace FirstWcfApp
{
    public class FirstService : IFirstService
    {
        public string Get(string id)
        {
            return string.Format("You entered ID: {0}", id);
        }
    }
}
