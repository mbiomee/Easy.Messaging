// Skipping function UseRabbitMQMessageHandler(none, none), it contains poisonous unsupported syntaxes

// Skipping function UseRabbitMQMessagePublisher(none, none), it contains poisonous unsupported syntaxes

// Skipping function GetRabbitMQSettings(none, none), it contains poisonous unsupported syntaxes

func @_Easy.Messaging.Configuration.Configuration.DetermineHost$Microsoft.Extensions.Configuration.IConfigurationSection$(none) -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :66 :8) {
^entry (%_configSection : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :66 :42)
cbde.store %_configSection, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :66 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :68 :20) // Not a variable of known type: configSection
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :68 :34) // "Host" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :68 :20) // configSection["Host"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :69 :16) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :69 :37) // Not a variable of known type: _host
%6 = cbde.unknown : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :69 :16) // string.IsNullOrEmpty(_host) (InvocationExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :69 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :71 :16) // Not a variable of known type: _errors
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :71 :28) // "Required config-setting 'Host' not found." (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :71 :16) // _errors.Add("Required config-setting 'Host' not found.") (InvocationExpression)
%10 = constant 0 : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :72 :27) // false
br ^2

^2: // ExitBlock
return

}
// Skipping function DeterminePort(none), it contains poisonous unsupported syntaxes

func @_Easy.Messaging.Configuration.Configuration.DetermineUsername$Microsoft.Extensions.Configuration.IConfigurationSection$(none) -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :96 :8) {
^entry (%_configSection : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :96 :46)
cbde.store %_configSection, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :96 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :98 :24) // Not a variable of known type: configSection
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :98 :38) // "UserName" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :98 :24) // configSection["UserName"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :99 :16) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :99 :37) // Not a variable of known type: _userName
%6 = cbde.unknown : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :99 :16) // string.IsNullOrEmpty(_userName) (InvocationExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :99 :16)

^1: // SimpleBlock
%7 = constant 0 : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :101 :27) // false
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :102 :16) // Not a variable of known type: _errors
%9 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :102 :28) // "Required config-setting 'UserName' not found." (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :102 :16) // _errors.Add("Required config-setting 'UserName' not found.") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Easy.Messaging.Configuration.Configuration.DeterminePassword$Microsoft.Extensions.Configuration.IConfigurationSection$(none) -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :106 :8) {
^entry (%_configSection : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :106 :46)
cbde.store %_configSection, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :106 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :108 :24) // Not a variable of known type: configSection
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :108 :38) // "Password" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :108 :24) // configSection["Password"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :109 :16) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :109 :37) // Not a variable of known type: _password
%6 = cbde.unknown : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :109 :16) // string.IsNullOrEmpty(_password) (InvocationExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :109 :16)

^1: // SimpleBlock
%7 = constant 0 : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :111 :27) // false
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :112 :16) // Not a variable of known type: _errors
%9 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :112 :28) // "Required config-setting 'Password' not found." (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :112 :16) // _errors.Add("Required config-setting 'Password' not found.") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Easy.Messaging.Configuration.Configuration.DetermineExchange$Microsoft.Extensions.Configuration.IConfigurationSection$(none) -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :116 :8) {
^entry (%_configSection : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :116 :46)
cbde.store %_configSection, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :116 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :118 :24) // Not a variable of known type: configSection
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :118 :38) // "Exchange" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :118 :24) // configSection["Exchange"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :119 :16) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :119 :37) // Not a variable of known type: _exchange
%6 = cbde.unknown : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :119 :16) // string.IsNullOrEmpty(_exchange) (InvocationExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :119 :16)

^1: // SimpleBlock
%7 = constant 0 : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :121 :27) // false
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :122 :16) // Not a variable of known type: _errors
%9 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :122 :28) // "Required config-setting 'Exchange' not found." (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :122 :16) // _errors.Add("Required config-setting 'Exchange' not found.") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Easy.Messaging.Configuration.Configuration.DetermineQueue$Microsoft.Extensions.Configuration.IConfigurationSection$(none) -> () loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :126 :8) {
^entry (%_configSection : none):
%0 = cbde.alloca none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :126 :43)
cbde.store %_configSection, %0 : memref<none> loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :126 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :128 :21) // Not a variable of known type: configSection
%2 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :128 :35) // "Queue" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :128 :21) // configSection["Queue"] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :129 :16) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :129 :37) // Not a variable of known type: _queue
%6 = cbde.unknown : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :129 :16) // string.IsNullOrEmpty(_queue) (InvocationExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :129 :16)

^1: // SimpleBlock
%7 = constant 0 : i1 loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :131 :27) // false
%8 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :132 :16) // Not a variable of known type: _errors
%9 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :132 :28) // "Required config-setting 'Queue' not found." (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Mohamed\\Desktop\\projects\\infra-messaging\\Configuration\\Configuration.cs" :132 :16) // _errors.Add("Required config-setting 'Queue' not found.") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function DetermineRoutingKey(none), it contains poisonous unsupported syntaxes

