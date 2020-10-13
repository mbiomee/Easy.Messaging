func @_Easy.Messaging.MessageSerializer.Serialize$object$(none) -> none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :26 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :26 :39)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :26 :39)
br ^0

^0: // JumpBlock
// Entity from another assembly: JsonConvert
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :28 :47) // Not a variable of known type: value
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :28 :54) // Not a variable of known type: _serializerSettings
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :28 :19) // JsonConvert.SerializeObject(value, _serializerSettings) (InvocationExpression)
return %3 : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Easy.Messaging.MessageSerializer.Deserialize$string$(none) -> none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :32 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :32 :42)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :32 :42)
br ^0

^0: // JumpBlock
// Entity from another assembly: JsonConvert
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :34 :58) // Not a variable of known type: value
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :34 :65) // Not a variable of known type: _serializerSettings
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :34 :19) // JsonConvert.DeserializeObject<JObject>(value, _serializerSettings) (InvocationExpression)
return %3 : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\MessageSerializer.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
