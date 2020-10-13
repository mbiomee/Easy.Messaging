// Skipping function Start(none), it contains poisonous unsupported syntaxes

func @_Easy.Messaging.RabbitMQMessageHandler.Stop$$() -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :85 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :87 :12) // Not a variable of known type: _model
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :87 :31) // Not a variable of known type: _consumerTag
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :87 :12) // _model.BasicCancel(_consumerTag) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :88 :12) // Not a variable of known type: _model
%4 = constant 200 : i32 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :88 :25)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :88 :30) // "Goodbye" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :88 :12) // _model.Close(200, "Goodbye") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :89 :12) // Not a variable of known type: _connection
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :89 :12) // _connection.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Consumer_Received(none, none), it contains poisonous unsupported syntaxes

func @_Easy.Messaging.RabbitMQMessageHandler.HandleEvent$RabbitMQ.Client.Events.BasicDeliverEventArgs$(none) -> none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :100 :8) {
^entry (%_ea : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :100 :39)
cbde.store %_ea, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :100 :39)
br ^0

^0: // JumpBlock
// Entity from another assembly: Encoding
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :33) // Encoding.UTF8 (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :65) // Not a variable of known type: ea
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :65) // ea.BasicProperties (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :65) // ea.BasicProperties.Headers (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :92) // "MessageType" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :65) // ea.BasicProperties.Headers["MessageType"] (ElementAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :57) // (byte[])ea.BasicProperties.Headers["MessageType"] (CastExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :103 :33) // Encoding.UTF8.GetString((byte[])ea.BasicProperties.Headers["MessageType"]) (InvocationExpression)
// Entity from another assembly: Encoding
%10 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :106 :26) // Encoding.UTF8 (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :106 :50) // Not a variable of known type: ea
%12 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :106 :50) // ea.Body (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :106 :50) // ea.Body.ToArray() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :106 :26) // Encoding.UTF8.GetString(ea.Body.ToArray()) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :109 :19) // Not a variable of known type: _callback
%17 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :109 :48) // Not a variable of known type: messageType
%18 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :109 :61) // Not a variable of known type: body
%19 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :109 :19) // _callback.HandleMessageAsync(messageType, body) (InvocationExpression)
return %19 : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\RabbitMQMessageHandler.cs" :109 :12)

^1: // ExitBlock
cbde.unreachable

}
