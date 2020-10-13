û	
<C:\Users\Mohamed\Desktop\projects\infra-messaging\Command.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

class 
Command 
: 
Message "
{ 
public 
Command 
( 
) 
{		 	
}

 	
public 
Command 
( 
Guid 
	messageId %
)% &
:' (
base) -
(- .
	messageId. 7
)7 8
{ 	
} 	
public 
Command 
( 
string 
messageType )
)) *
:+ ,
base- 1
(1 2
messageType2 =
)= >
{ 	
} 	
public 
Command 
( 
Guid 
	messageId %
,% &
string' -
messageType. 9
)9 :
:; <
base= A
(A B
	messageIdB K
,K L
messageTypeM X
)X Y
{ 	
} 	
} 
} ›W
PC:\Users\Mohamed\Desktop\projects\infra-messaging\Configuration\Configuration.cs
	namespace 	
Easy
 
. 
	Messaging 
. 
Configuration &
{ 
public 

static 
class 
Configuration %
{		 
private

 
const

 
int

 
DEFAULT_PORT

 &
=

' (
$num

) -
;

- .
private 
static 
string 
_host #
;# $
private 
static 
string 
	_userName '
;' (
private 
static 
string 
	_password '
;' (
private 
static 
string 
	_exchange '
;' (
private 
static 
string 
_queue $
;$ %
private 
static 
string 
_routingKey )
;) *
private 
static 
int 
_port  
;  !
private 
static 
List 
< 
string "
>" #
_errors$ +
;+ ,
private 
static 
bool 
_isValid $
;$ %
public 
static 
void %
UseRabbitMQMessageHandler 4
(4 5
this5 9
IServiceCollection: L
servicesM U
,U V
IConfigurationW e
configf l
)l m
{ 	
GetRabbitMQSettings 
(  
config  &
,& '
$str( 9
)9 :
;: ;
services 
. 
AddTransient !
<! "
IMessageHandler" 1
>1 2
(2 3
_3 4
=>5 7
new8 ;"
RabbitMQMessageHandler< R
(R S
_host 
, 
	_userName  
,  !
	_password" +
,+ ,
	_exchange- 6
,6 7
_queue8 >
,> ?
_routingKey@ K
,K L
_portM R
)R S
)S T
;T U
} 	
public 
static 
void '
UseRabbitMQMessagePublisher 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
,W X
IConfigurationY g
configh n
)n o
{ 	
GetRabbitMQSettings 
(  
config  &
,& '
$str( ;
); <
;< =
services 
. 
AddTransient !
<! "
IMessagePublisher" 3
>3 4
(4 5
_5 6
=>7 9
new: =$
RabbitMQMessagePublisher> V
(V W
_host   
,   
	_userName    
,    !
	_password  " +
,  + ,
	_exchange  - 6
,  6 7
_port  8 =
)  = >
)  > ?
;  ? @
}!! 	
private## 
static## 
void## 
GetRabbitMQSettings## /
(##/ 0
IConfiguration##0 >
config##? E
,##E F
string##G M
sectionName##N Y
)##Y Z
{$$ 	
_isValid%% 
=%% 
true%% 
;%% 
_errors&& 
=&& 
new&& 
List&& 
<&& 
string&& %
>&&% &
(&&& '
)&&' (
;&&( )
var(( 
configSection(( 
=(( 
config((  &
.((& '

GetSection((' 1
(((1 2
sectionName((2 =
)((= >
;((> ?
if)) 
()) 
!)) 
configSection)) 
.)) 
Exists)) %
())% &
)))& '
)))' (
{** 
throw++ 
new++ )
InvalidConfigurationException++ 7
(++7 8
$"++8 :%
Required config-section '++: S
{++S T
sectionName++T _
}++_ `
' not found.++` l
"++l m
)++m n
;++n o
},, 
DetermineHost// 
(// 
configSection// '
)//' (
;//( )
DeterminePort00 
(00 
configSection00 '
)00' (
;00( )
DetermineUsername11 
(11 
configSection11 +
)11+ ,
;11, -
DeterminePassword22 
(22 
configSection22 +
)22+ ,
;22, -
DetermineExchange33 
(33 
configSection33 +
)33+ ,
;33, -
if44 
(44 
sectionName44 
==44 
$str44 0
)440 1
{55 
DetermineQueue66 
(66 
configSection66 ,
)66, -
;66- .
DetermineRoutingKey77 #
(77# $
configSection77$ 1
)771 2
;772 3
}88 
if;; 
(;; 
!;; 
_isValid;; 
);; 
{<< 
var== 
errorMessage==  
===! "
new==# &
StringBuilder==' 4
(==4 5
$str==5 V
)==V W
;==W X
_errors>> 
.>> 
ForEach>> 
(>>  
e>>  !
=>>>" $
errorMessage>>% 1
.>>1 2

AppendLine>>2 <
(>>< =
e>>= >
)>>> ?
)>>? @
;>>@ A
throw?? 
new?? )
InvalidConfigurationException?? 7
(??7 8
errorMessage??8 D
.??D E
ToString??E M
(??M N
)??N O
)??O P
;??P Q
}@@ 
}AA 	
privateCC 
staticCC 
voidCC 
DetermineHostCC )
(CC) *!
IConfigurationSectionCC* ?
configSectionCC@ M
)CCM N
{DD 	
_hostEE 
=EE 
configSectionEE !
[EE! "
$strEE" (
]EE( )
;EE) *
ifFF 
(FF 
stringFF 
.FF 
IsNullOrEmptyFF $
(FF$ %
_hostFF% *
)FF* +
)FF+ ,
{GG 
_errorsHH 
.HH 
AddHH 
(HH 
$strHH G
)HHG H
;HHH I
_isValidII 
=II 
falseII  
;II  !
}JJ 
}KK 	
privateMM 
staticMM 
voidMM 
DeterminePortMM )
(MM) *!
IConfigurationSectionMM* ?
configSectionMM@ M
)MMM N
{NN 	
stringOO 
portSettingOO 
=OO  
configSectionOO! .
[OO. /
$strOO/ 5
]OO5 6
;OO6 7
ifPP 
(PP 
stringPP 
.PP 
IsNullOrEmptyPP $
(PP$ %
portSettingPP% 0
)PP0 1
)PP1 2
{QQ 
_portRR 
=RR 
DEFAULT_PORTRR $
;RR$ %
}SS 
elseTT 
{UU 
ifVV 
(VV 
intVV 
.VV 
TryParseVV  
(VV  !
portSettingVV! ,
,VV, -
outVV. 1
intVV2 5
resultVV6 <
)VV< =
)VV= >
{WW 
_portXX 
=XX 
resultXX "
;XX" #
}YY 
elseZZ 
{[[ 
_isValid\\ 
=\\ 
false\\ $
;\\$ %
_errors]] 
.]] 
Add]] 
(]]  
$str]]  X
)]]X Y
;]]Y Z
}^^ 
}__ 
}`` 	
privateaa 
staticaa 
voidaa 
DetermineUsernameaa -
(aa- .!
IConfigurationSectionaa. C
configSectionaaD Q
)aaQ R
{bb 	
	_userNamecc 
=cc 
configSectioncc %
[cc% &
$strcc& 0
]cc0 1
;cc1 2
ifdd 
(dd 
stringdd 
.dd 
IsNullOrEmptydd $
(dd$ %
	_userNamedd% .
)dd. /
)dd/ 0
{ee 
_isValidff 
=ff 
falseff  
;ff  !
_errorsgg 
.gg 
Addgg 
(gg 
$strgg K
)ggK L
;ggL M
}hh 
}ii 	
privatekk 
statickk 
voidkk 
DeterminePasswordkk -
(kk- .!
IConfigurationSectionkk. C
configSectionkkD Q
)kkQ R
{ll 	
	_passwordmm 
=mm 
configSectionmm %
[mm% &
$strmm& 0
]mm0 1
;mm1 2
ifnn 
(nn 
stringnn 
.nn 
IsNullOrEmptynn $
(nn$ %
	_passwordnn% .
)nn. /
)nn/ 0
{oo 
_isValidpp 
=pp 
falsepp  
;pp  !
_errorsqq 
.qq 
Addqq 
(qq 
$strqq K
)qqK L
;qqL M
}rr 
}ss 	
privateuu 
staticuu 
voiduu 
DetermineExchangeuu -
(uu- .!
IConfigurationSectionuu. C
configSectionuuD Q
)uuQ R
{vv 	
	_exchangeww 
=ww 
configSectionww %
[ww% &
$strww& 0
]ww0 1
;ww1 2
ifxx 
(xx 
stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %
	_exchangexx% .
)xx. /
)xx/ 0
{yy 
_isValidzz 
=zz 
falsezz  
;zz  !
_errors{{ 
.{{ 
Add{{ 
({{ 
$str{{ K
){{K L
;{{L M
}|| 
}}} 	
private 
static 
void 
DetermineQueue *
(* +!
IConfigurationSection+ @
configSectionA N
)N O
{
ÄÄ 	
_queue
ÅÅ 
=
ÅÅ 
configSection
ÅÅ "
[
ÅÅ" #
$str
ÅÅ# *
]
ÅÅ* +
;
ÅÅ+ ,
if
ÇÇ 
(
ÇÇ 
string
ÇÇ 
.
ÇÇ 
IsNullOrEmpty
ÇÇ $
(
ÇÇ$ %
_queue
ÇÇ% +
)
ÇÇ+ ,
)
ÇÇ, -
{
ÉÉ 
_isValid
ÑÑ 
=
ÑÑ 
false
ÑÑ  
;
ÑÑ  !
_errors
ÖÖ 
.
ÖÖ 
Add
ÖÖ 
(
ÖÖ 
$str
ÖÖ H
)
ÖÖH I
;
ÖÖI J
}
ÜÜ 
}
áá 	
private
ââ 
static
ââ 
void
ââ !
DetermineRoutingKey
ââ /
(
ââ/ 0#
IConfigurationSection
ââ0 E
configSection
ââF S
)
ââS T
{
ää 	
_routingKey
ãã 
=
ãã 
configSection
ãã '
[
ãã' (
$str
ãã( 4
]
ãã4 5
??
ãã6 8
$str
ãã9 ;
;
ãã; <
}
åå 	
}
çç 
}éé «
`C:\Users\Mohamed\Desktop\projects\infra-messaging\Configuration\InvalidConfigurationException.cs
	namespace 	
Easy
 
. 
	Messaging 
. 
Configuration &
{ 
public 

class )
InvalidConfigurationException .
:/ 0
	Exception1 :
{ 
public )
InvalidConfigurationException ,
(, -
)- .
{		 	
}

 	
public )
InvalidConfigurationException ,
(, -
string- 3
message4 ;
); <
:= >
base? C
(C D
messageD K
)K L
{ 	
} 	
public )
InvalidConfigurationException ,
(, -
string- 3
message4 ;
,; <
	Exception= F
innerExceptionG U
)U V
:W X
baseY ]
(] ^
message^ e
,e f
innerExceptiong u
)u v
{ 	
} 	
	protected )
InvalidConfigurationException /
(/ 0
SerializationInfo0 A
infoB F
,F G
StreamingContextH X
contextY `
)` a
:b c
based h
(h i
infoi m
,m n
contexto v
)v w
{ 	
} 	
} 
} í	
:C:\Users\Mohamed\Desktop\projects\infra-messaging\Event.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

class 
Event 
: 
Message  
{ 
public		 
Event		 
(		 
)		 
{

 	
} 	
public 
Event 
( 
Guid 
	messageId #
)# $
:% &
base' +
(+ ,
	messageId, 5
)5 6
{ 	
} 	
public 
Event 
( 
string 
messageType '
)' (
:) *
base+ /
(/ 0
messageType0 ;
); <
{ 	
} 	
public 
Event 
( 
Guid 
	messageId #
,# $
string% +
messageType, 7
)7 8
:9 :
base; ?
(? @
	messageId@ I
,I J
messageTypeK V
)V W
{ 	
} 	
} 
} Ò
DC:\Users\Mohamed\Desktop\projects\infra-messaging\IMessageHandler.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

	interface 
IMessageHandler $
{ 
void 
Start 
( #
IMessageHandlerCallback *
callback+ 3
)3 4
;4 5
void 
Stop 
( 
) 
; 
} 
} ó
LC:\Users\Mohamed\Desktop\projects\infra-messaging\IMessageHandlerCallback.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

	interface #
IMessageHandlerCallback ,
{ 
Task 
< 
bool 
> 
HandleMessageAsync %
(% &
string& ,
messageType- 8
,8 9
string: @
messageA H
)H I
;I J
} 
}		 ó
FC:\Users\Mohamed\Desktop\projects\infra-messaging\IMessagePublisher.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

	interface 
IMessagePublisher &
{ 
Task 
PublishMessageAsync  
(  !
string! '
messageType( 3
,3 4
object5 ;
message< C
,C D
stringE K

routingKeyL V
)V W
;W X
} 
} †
<C:\Users\Mohamed\Desktop\projects\infra-messaging\Message.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public 

class 
Message 
{ 
public 
readonly 
Guid 
	MessageId &
;& '
public 
readonly 
string 
MessageType *
;* +
public

 
Message

 
(

 
)

 
:

 
this

 
(

  
Guid

  $
.

$ %
NewGuid

% ,
(

, -
)

- .
)

. /
{ 	
} 	
public 
Message 
( 
Guid 
	messageId %
)% &
{ 	
	MessageId 
= 
	messageId !
;! "
MessageType 
= 
this 
. 
GetType &
(& '
)' (
.( )
Name) -
;- .
} 	
public 
Message 
( 
string 
messageType )
)) *
:+ ,
this- 1
(1 2
Guid2 6
.6 7
NewGuid7 >
(> ?
)? @
)@ A
{ 	
MessageType 
= 
messageType %
;% &
} 	
public 
Message 
( 
Guid 
	messageId %
,% &
string' -
messageType. 9
)9 :
{ 	
	MessageId 
= 
	messageId !
;! "
MessageType 
= 
messageType %
;% &
} 	
} 
} ÷
FC:\Users\Mohamed\Desktop\projects\infra-messaging\MessageSerializer.cs
	namespace 	
Easy
 
. 
	Messaging 
{ 
public		 

static		 
class		 
MessageSerializer		 )
{

 
private 
static "
JsonSerializerSettings -
_serializerSettings. A
;A B
static 
MessageSerializer  
(  !
)! "
{ 	
_serializerSettings 
=  !
new" %"
JsonSerializerSettings& <
(< =
)= >
{ 
DateFormatHandling "
=# $
DateFormatHandling% 7
.7 8
IsoDateFormat8 E
} 
; 
_serializerSettings 
.  

Converters  *
.* +
Add+ .
(. /
new/ 2
StringEnumConverter3 F
{ 
NamingStrategy 
=  
new! $#
CamelCaseNamingStrategy% <
(< =
)= >
} 
) 
; 
} 	
public 
static 
string 
	Serialize &
(& '
object' -
value. 3
)3 4
{ 	
return 
JsonConvert 
. 
SerializeObject .
(. /
value/ 4
,4 5
_serializerSettings6 I
)I J
;J K
} 	
public!! 
static!! 
JObject!! 
Deserialize!! )
(!!) *
string!!* 0
value!!1 6
)!!6 7
{"" 	
return## 
JsonConvert## 
.## 
DeserializeObject## 0
<##0 1
JObject##1 8
>##8 9
(##9 :
value##: ?
,##? @
_serializerSettings##A T
)##T U
;##U V
}$$ 	
}%% 
}&& ÿf
KC:\Users\Mohamed\Desktop\projects\infra-messaging\RabbitMQMessageHandler.cs
	namespace

 	
Easy


 
.

 
	Messaging

 
{ 
public 

class "
RabbitMQMessageHandler '
:( )
IMessageHandler* 9
{ 
private 
const 
int 
DEFAULT_PORT &
=' (
$num) -
;- .
private 
readonly 
List 
< 
string $
>$ %
_hosts& ,
;, -
private 
readonly 
string 
	_username  )
;) *
private 
readonly 
string 
	_password  )
;) *
private 
readonly 
string 
	_exchange  )
;) *
private 
readonly 
string 

_queuename  *
;* +
private 
readonly 
string 
_routingKey  +
;+ ,
private 
readonly 
int 
_port "
;" #
private 
IConnection 
_connection '
;' (
private 
IModel 
_model 
; 
private &
AsyncEventingBasicConsumer *
	_consumer+ 4
;4 5
private 
string 
_consumerTag #
;# $
private #
IMessageHandlerCallback '
	_callback( 1
;1 2
public "
RabbitMQMessageHandler %
(% &
string& ,
host- 1
,1 2
string3 9
username: B
,B C
stringD J
passwordK S
,S T
stringU [
exchange\ d
,d e
stringf l
	queuenamem v
,v w
stringx ~

routingKey	 â
)
â ä
: 
this 
( 
host 
, 
username !
,! "
password# +
,+ ,
exchange- 5
,5 6
	queuename7 @
,@ A

routingKeyB L
,L M
DEFAULT_PORTN Z
)Z [
{ 	
} 	
public!! "
RabbitMQMessageHandler!! %
(!!% &
string!!& ,
host!!- 1
,!!1 2
string!!3 9
username!!: B
,!!B C
string!!D J
password!!K S
,!!S T
string!!U [
exchange!!\ d
,!!d e
string!!f l
	queuename!!m v
,!!v w
string!!x ~

routingKey	!! â
,
!!â ä
int
!!ã é
port
!!è ì
)
!!ì î
:"" 
this"" 
("" 
new"" 
List"" 
<"" 
string"" "
>""" #
(""# $
)""$ %
{""& '
host""( ,
}""- .
,"". /
username""0 8
,""8 9
password"": B
,""B C
exchange""D L
,""L M
	queuename""N W
,""W X

routingKey""Y c
,""c d
port""e i
)""i j
{## 	
}$$ 	
public&& "
RabbitMQMessageHandler&& %
(&&% &
IEnumerable&&& 1
<&&1 2
string&&2 8
>&&8 9
hosts&&: ?
,&&? @
string&&A G
username&&H P
,&&P Q
string&&R X
password&&Y a
,&&a b
string&&c i
exchange&&j r
,&&r s
string&&t z
	queuename	&&{ Ñ
,
&&Ñ Ö
string
&&Ü å

routingKey
&&ç ó
)
&&ó ò
:'' 
this'' 
('' 
hosts'' 
,'' 
username'' "
,''" #
password''$ ,
,'', -
exchange''. 6
,''6 7
	queuename''8 A
,''A B

routingKey''C M
,''M N
DEFAULT_PORT''O [
)''[ \
{(( 	
})) 	
public++ "
RabbitMQMessageHandler++ %
(++% &
IEnumerable++& 1
<++1 2
string++2 8
>++8 9
hosts++: ?
,++? @
string++A G
username++H P
,++P Q
string++R X
password++Y a
,++a b
string++c i
exchange++j r
,++r s
string++t z
	queuename	++{ Ñ
,
++Ñ Ö
string
++Ü å

routingKey
++ç ó
,
++ó ò
int
++ô ú
port
++ù °
)
++° ¢
{,, 	
_hosts-- 
=-- 
new-- 
List-- 
<-- 
string-- $
>--$ %
(--% &
hosts--& +
)--+ ,
;--, -
_port.. 
=.. 
port.. 
;.. 
	_username// 
=// 
username//  
;//  !
	_password00 
=00 
password00  
;00  !
	_exchange11 
=11 
exchange11  
;11  !

_queuename22 
=22 
	queuename22 "
;22" #
_routingKey33 
=33 

routingKey33 $
;33$ %
var55 

logMessage55 
=55 
new55  
StringBuilder55! .
(55. /
)55/ 0
;550 1

logMessage66 
.66 

AppendLine66 !
(66! "
$str66" Z
)66Z [
;66[ \

logMessage77 
.77 

AppendLine77 !
(77! "
$"77" $

 - Hosts: 77$ .
{77. /
string77/ 5
.775 6
Join776 :
(77: ;
$str77; >
,77> ?
_hosts77@ F
.77F G
ToArray77G N
(77N O
)77O P
)77P Q
}77Q R
"77R S
)77S T
;77T U

logMessage88 
.88 

AppendLine88 !
(88! "
$"88" $
	 - Port: 88$ -
{88- .
_port88. 3
}883 4
"884 5
)885 6
;886 7

logMessage99 
.99 

AppendLine99 !
(99! "
$"99" $
 - UserName: 99$ 1
{991 2
	_username992 ;
}99; <
"99< =
)99= >
;99> ?

logMessage:: 
.:: 

AppendLine:: !
(::! "
$"::" $
 - Password: ::$ 1
{::1 2
new::2 5
string::6 <
(::< =
$char::= @
,::@ A
	_password::B K
.::K L
Length::L R
)::R S
}::S T
"::T U
)::U V
;::V W

logMessage;; 
.;; 

AppendLine;; !
(;;! "
$";;" $
 - Exchange: ;;$ 1
{;;1 2
	_exchange;;2 ;
};;; <
";;< =
);;= >
;;;> ?

logMessage<< 
.<< 

AppendLine<< !
(<<! "
$"<<" $

 - Queue: <<$ .
{<<. /

_queuename<</ 9
}<<9 :
"<<: ;
)<<; <
;<<< =

logMessage== 
.== 
Append== 
(== 
$"==  
 - RoutingKey: ==  /
{==/ 0
_routingKey==0 ;
}==; <
"==< =
)=== >
;==> ?
Log>> 
.>> 
Information>> 
(>> 

logMessage>> &
.>>& '
ToString>>' /
(>>/ 0
)>>0 1
)>>1 2
;>>2 3
}?? 	
publicAA 
voidAA 
StartAA 
(AA #
IMessageHandlerCallbackAA 1
callbackAA2 :
)AA: ;
{BB 	
	_callbackCC 
=CC 
callbackCC  
;CC  !
PolicyEE 
.FF 
HandleFF 
<FF 
	ExceptionFF !
>FF! "
(FF" #
)FF# $
.GG 
WaitAndRetryGG 
(GG 
$numGG 
,GG  
rGG! "
=>GG# %
TimeSpanGG& .
.GG. /
FromSecondsGG/ :
(GG: ;
$numGG; <
)GG< =
,GG= >
(GG? @
exGG@ B
,GGB C
tsGGD F
)GGF G
=>GGH J
{GGK L
LogGGM P
.GGP Q
ErrorGGQ V
(GGV W
$str	GGW â
)
GGâ ä
;
GGä ã
}
GGå ç
)
GGç é
.HH 
ExecuteHH 
(HH 
(HH 
)HH 
=>HH 
{II 
varJJ 
factoryJJ 
=JJ  !
newJJ" %
ConnectionFactoryJJ& 7
(JJ7 8
)JJ8 9
{JJ: ;
UserNameJJ< D
=JJE F
	_usernameJJG P
,JJP Q
PasswordJJR Z
=JJ[ \
	_passwordJJ] f
,JJf g"
DispatchConsumersAsyncJJh ~
=	JJ Ä
true
JJÅ Ö
,
JJÖ Ü
Port
JJá ã
=
JJå ç
_port
JJé ì
}
JJî ï
;
JJï ñ
_connectionKK 
=KK  !
factoryKK" )
.KK) *
CreateConnectionKK* :
(KK: ;
_hostsKK; A
)KKA B
;KKB C
_modelLL 
=LL 
_connectionLL (
.LL( )
CreateModelLL) 4
(LL4 5
)LL5 6
;LL6 7
_modelMM 
.MM 
ExchangeDeclareMM *
(MM* +
	_exchangeMM+ 4
,MM4 5
$strMM6 >
,MM> ?
durableMM@ G
:MMG H
trueMMI M
,MMM N

autoDeleteMMO Y
:MMY Z
falseMM[ `
)MM` a
;MMa b
_modelNN 
.NN 
QueueDeclareNN '
(NN' (

_queuenameNN( 2
,NN2 3
durableNN4 ;
:NN; <
trueNN= A
,NNA B

autoDeleteNNC M
:NNM N
falseNNO T
,NNT U
	exclusiveNNV _
:NN_ `
falseNNa f
)NNf g
;NNg h
_modelOO 
.OO 
	QueueBindOO $
(OO$ %

_queuenameOO% /
,OO/ 0
	_exchangeOO1 :
,OO: ;
_routingKeyOO< G
)OOG H
;OOH I
	_consumerPP 
=PP 
newPP  #&
AsyncEventingBasicConsumerPP$ >
(PP> ?
_modelPP? E
)PPE F
;PPF G
	_consumerQQ 
.QQ 
ReceivedQQ &
+=QQ' )
Consumer_ReceivedQQ* ;
;QQ; <
_consumerTagRR  
=RR! "
_modelRR# )
.RR) *
BasicConsumeRR* 6
(RR6 7

_queuenameRR7 A
,RRA B
falseRRC H
,RRH I
	_consumerRRJ S
)RRS T
;RRT U
}SS 
)SS 
;SS 
}TT 	
publicVV 
voidVV 
StopVV 
(VV 
)VV 
{WW 	
_modelXX 
.XX 
BasicCancelXX 
(XX 
_consumerTagXX +
)XX+ ,
;XX, -
_modelYY 
.YY 
CloseYY 
(YY 
$numYY 
,YY 
$strYY '
)YY' (
;YY( )
_connectionZZ 
.ZZ 
CloseZZ 
(ZZ 
)ZZ 
;ZZ  
}[[ 	
private]] 
async]] 
Task]] 
Consumer_Received]] ,
(]], -
object]]- 3
sender]]4 :
,]]: ;!
BasicDeliverEventArgs]]< Q
ea]]R T
)]]T U
{^^ 	
if__ 
(__ 
await__ 
HandleEvent__ !
(__! "
ea__" $
)__$ %
)__% &
{`` 
_modelaa 
.aa 
BasicAckaa 
(aa  
eaaa  "
.aa" #
DeliveryTagaa# .
,aa. /
falseaa0 5
)aa5 6
;aa6 7
}bb 
}cc 	
privateee 
Taskee 
<ee 
boolee 
>ee 
HandleEventee &
(ee& '!
BasicDeliverEventArgsee' <
eaee= ?
)ee? @
{ff 	
stringhh 
messageTypehh 
=hh  
Encodinghh! )
.hh) *
UTF8hh* .
.hh. /
	GetStringhh/ 8
(hh8 9
(hh9 :
bytehh: >
[hh> ?
]hh? @
)hh@ A
eahhA C
.hhC D
BasicPropertieshhD S
.hhS T
HeadershhT [
[hh[ \
$strhh\ i
]hhi j
)hhj k
;hhk l
stringkk 
bodykk 
=kk 
Encodingkk "
.kk" #
UTF8kk# '
.kk' (
	GetStringkk( 1
(kk1 2
eakk2 4
.kk4 5
Bodykk5 9
.kk9 :
ToArraykk: A
(kkA B
)kkB C
)kkC D
;kkD E
returnnn 
	_callbacknn 
.nn 
HandleMessageAsyncnn /
(nn/ 0
messageTypenn0 ;
,nn; <
bodynn= A
)nnA B
;nnB C
}oo 	
}pp 
}qq ˜Q
MC:\Users\Mohamed\Desktop\projects\infra-messaging\RabbitMQMessagePublisher.cs
	namespace		 	
Easy		
 
.		 
	Messaging		 
{

 
public 

sealed 
class $
RabbitMQMessagePublisher 0
:1 2
IMessagePublisher3 D
,D E
IDisposableF Q
{ 
private 
const 
int 
DEFAULT_PORT &
=' (
$num) -
;- .
private 
readonly 
List 
< 
string $
>$ %
_hosts& ,
;, -
private 
readonly 
int 
_port "
;" #
private 
readonly 
string 
	_username  )
;) *
private 
readonly 
string 
	_password  )
;) *
private 
readonly 
string 
	_exchange  )
;) *
private 
IConnection 
_connection '
;' (
private 
IModel 
_model 
; 
public $
RabbitMQMessagePublisher '
(' (
string( .
host/ 3
,3 4
string5 ;
username< D
,D E
stringF L
passwordM U
,U V
stringW ]
exchange^ f
)f g
: 
this 
( 
new 
List 
< 
string "
>" #
(# $
)$ %
{& '
host( ,
}- .
,. /
username0 8
,8 9
password: B
,B C
exchangeD L
,L M
DEFAULT_PORTN Z
)Z [
{ 	
} 	
public $
RabbitMQMessagePublisher '
(' (
string( .
host/ 3
,3 4
string5 ;
username< D
,D E
stringF L
passwordM U
,U V
stringW ]
exchange^ f
,f g
inth k
portl p
)p q
: 
this 
( 
new 
List 
< 
string "
>" #
(# $
)$ %
{& '
host( ,
}- .
,. /
username0 8
,8 9
password: B
,B C
exchangeD L
,L M
portN R
)R S
{   	
}!! 	
public## $
RabbitMQMessagePublisher## '
(##' (
IEnumerable##( 3
<##3 4
string##4 :
>##: ;
hosts##< A
,##A B
string##C I
username##J R
,##R S
string##T Z
password##[ c
,##c d
string##e k
exchange##l t
)##t u
:$$ 
this$$ 
($$ 
hosts$$ 
,$$ 
username$$ "
,$$" #
password$$$ ,
,$$, -
exchange$$. 6
,$$6 7
DEFAULT_PORT$$8 D
)$$D E
{%% 	
}&& 	
public(( $
RabbitMQMessagePublisher(( '
(((' (
IEnumerable((( 3
<((3 4
string((4 :
>((: ;
hosts((< A
,((A B
string((C I
username((J R
,((R S
string((T Z
password(([ c
,((c d
string((e k
exchange((l t
,((t u
int((v y
port((z ~
)((~ 
{)) 	
_hosts** 
=** 
new** 
List** 
<** 
string** $
>**$ %
(**% &
hosts**& +
)**+ ,
;**, -
_port++ 
=++ 
port++ 
;++ 
	_username,, 
=,, 
username,,  
;,,  !
	_password-- 
=-- 
password--  
;--  !
	_exchange.. 
=.. 
exchange..  
;..  !
var00 

logMessage00 
=00 
new00  
StringBuilder00! .
(00. /
)00/ 0
;000 1

logMessage11 
.11 

AppendLine11 !
(11! "
$str11" \
)11\ ]
;11] ^

logMessage22 
.22 

AppendLine22 !
(22! "
$"22" $

 - Hosts: 22$ .
{22. /
string22/ 5
.225 6
Join226 :
(22: ;
$str22; >
,22> ?
_hosts22@ F
.22F G
ToArray22G N
(22N O
)22O P
)22P Q
}22Q R
"22R S
)22S T
;22T U

logMessage33 
.33 

AppendLine33 !
(33! "
$"33" $
	 - Port: 33$ -
{33- .
_port33. 3
}333 4
"334 5
)335 6
;336 7

logMessage44 
.44 

AppendLine44 !
(44! "
$"44" $
 - UserName: 44$ 1
{441 2
	_username442 ;
}44; <
"44< =
)44= >
;44> ?

logMessage55 
.55 

AppendLine55 !
(55! "
$"55" $
 - Password: 55$ 1
{551 2
new552 5
string556 <
(55< =
$char55= @
,55@ A
	_password55B K
.55K L
Length55L R
)55R S
}55S T
"55T U
)55U V
;55V W

logMessage66 
.66 
Append66 
(66 
$"66  
 - Exchange: 66  -
{66- .
	_exchange66. 7
}667 8
"668 9
)669 :
;66: ;
Log77 
.77 
Information77 
(77 

logMessage77 &
.77& '
ToString77' /
(77/ 0
)770 1
)771 2
;772 3
Connect99 
(99 
)99 
;99 
}:: 	
publicBB 
TaskBB 
PublishMessageAsyncBB '
(BB' (
stringBB( .
messageTypeBB/ :
,BB: ;
objectBB< B
messageBBC J
,BBJ K
stringBBL R

routingKeyBBS ]
)BB] ^
{CC 	
returnDD 
TaskDD 
.DD 
RunDD 
(DD 
(DD 
)DD 
=>DD !
{EE 
stringFF 
dataFF 
=FF  !
MessageSerializerFF" 3
.FF3 4
	SerializeFF4 =
(FF= >
messageFF> E
)FFE F
;FFF G
varGG 
bodyGG 
=GG 
EncodingGG '
.GG' (
UTF8GG( ,
.GG, -
GetBytesGG- 5
(GG5 6
dataGG6 :
)GG: ;
;GG; <
IBasicPropertiesHH $

propertiesHH% /
=HH0 1
_modelHH2 8
.HH8 9!
CreateBasicPropertiesHH9 N
(HHN O
)HHO P
;HHP Q

propertiesII 
.II 
HeadersII &
=II' (
newII) ,

DictionaryII- 7
<II7 8
stringII8 >
,II> ?
objectII@ F
>IIF G
{IIH I
{IIJ K
$strIIL Y
,IIY Z
messageTypeII[ f
}IIg h
}IIi j
;IIj k
_modelJJ 
.JJ 
BasicPublishJJ '
(JJ' (
	_exchangeJJ( 1
,JJ1 2

routingKeyJJ3 =
,JJ= >

propertiesJJ? I
,JJI J
bodyJJK O
)JJO P
;JJP Q
}KK 
)KK 
;KK 
}LL 	
privateNN 
voidNN 
ConnectNN 
(NN 
)NN 
{OO 	
PolicyPP 
.QQ 
HandleQQ 
<QQ 
	ExceptionQQ !
>QQ! "
(QQ" #
)QQ# $
.RR 
WaitAndRetryRR 
(RR 
$numRR 
,RR  
rRR! "
=>RR# %
TimeSpanRR& .
.RR. /
FromSecondsRR/ :
(RR: ;
$numRR; <
)RR< =
,RR= >
(RR? @
exRR@ B
,RRB C
tsRRD F
)RRF G
=>RRH J
{RRK L
LogRRM P
.RRP Q
ErrorRRQ V
(RRV W
$str	RRW â
)
RRâ ä
;
RRä ã
}
RRå ç
)
RRç é
.SS 
ExecuteSS 
(SS 
(SS 
)SS 
=>SS 
{TT 
varUU 
factoryUU 
=UU  !
newUU" %
ConnectionFactoryUU& 7
(UU7 8
)UU8 9
{UU: ;
UserNameUU< D
=UUE F
	_usernameUUG P
,UUP Q
PasswordUUR Z
=UU[ \
	_passwordUU] f
,UUf g
PortUUh l
=UUm n
_portUUo t
}UUu v
;UUv w
factoryVV 
.VV $
AutomaticRecoveryEnabledVV 4
=VV5 6
trueVV7 ;
;VV; <
_connectionWW 
=WW  !
factoryWW" )
.WW) *
CreateConnectionWW* :
(WW: ;
_hostsWW; A
)WWA B
;WWB C
_modelXX 
=XX 
_connectionXX (
.XX( )
CreateModelXX) 4
(XX4 5
)XX5 6
;XX6 7
_modelYY 
.YY 
ExchangeDeclareYY *
(YY* +
	_exchangeYY+ 4
,YY4 5
$strYY6 >
,YY> ?
durableYY@ G
:YYG H
trueYYI M
,YYM N

autoDeleteYYO Y
:YYY Z
falseYY[ `
)YY` a
;YYa b
}ZZ 
)ZZ 
;ZZ 
}[[ 	
public]] 
void]] 
Dispose]] 
(]] 
)]] 
{^^ 	
_model__ 
?__ 
.__ 
Dispose__ 
(__ 
)__ 
;__ 
_model`` 
=`` 
null`` 
;`` 
_connectionaa 
?aa 
.aa 
Disposeaa  
(aa  !
)aa! "
;aa" #
_connectionbb 
=bb 
nullbb 
;bb 
}cc 	
~ee 	$
RabbitMQMessagePublisheree	 !
(ee! "
)ee" #
{ff 	
Disposegg 
(gg 
)gg 
;gg 
}hh 	
}ii 
}jj 