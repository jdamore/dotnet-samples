using System.ServiceModel;

namespace FirstWcfApp
{
    [ServiceContract]
    public interface IFirstService
    {
        [OperationContract]
        string Get(string id);
    }
}
