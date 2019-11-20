using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Biomee.Infra.Messaging
{
    public interface IMessageHandlerCallback
    {
        Task<bool> HandleMessageAsync(string messageType, string message);
    }
}