�
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\ProjectGeneration\ProjectGenerationFlag.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{		 
[

 
Flags

 
]

 
public 
enum !
ProjectGenerationFlag
{ 
None
=
$num

,
 
Embedded 

= 
$num
, 
Local 
= 	
$num
 
, 
Registry 

= 
$num
, 
Git 
= 
$num 	
,	 

BuiltIn 	
=
 
$num 
, 
Unknown 	
=
 
$num 
, 
PlayerAssemblies 
= 
$num 
, 
LocalTarBall 
= 
$num 
, 
} 
} �e
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\VisualStudioIntegration.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
[ 
InitializeOnLoad 
] 
internal 	
class
 #
VisualStudioIntegration '
{ 
private 	
static
 
Messager 
	_messager #
;# $
private 	
static
 
readonly 
Queue 
<  
Message  '
>' (
Incoming) 1
=2 3
new4 7
Queue8 =
<= >
Message> E
>E F
(F G
)G H
;H I
private 	
static
 
readonly 
object  
IncomingLock! -
=. /
new0 3
object4 :
(: ;
); <
;< =
static #
VisualStudioIntegration	  
(  !
)! "
{ 
if 
( 
! 
VisualStudioEditor 
. 
	IsEnabled $
)$ %
return 

;
 
RunOnceOnUpdate 
( 
( 
) 
=> 
{ 
var## 

=## 

(##% &
)##& '
;##' (
try%% 
{&& 
	_messager'' 
='' 
Messager'' 
.'' 
BindTo''  
(''  !

)''. /
;''/ 0
	_messager(( 
.(( 
ReceiveMessage(( 
+=((  
ReceiveMessage((! /
;((/ 0
})) 
catch** 	
(**
 
SocketException** 
)** 
{++ 
Debug-- 

.--
 

LogWarning-- 
(-- 
$"-- #
Unable to use UDP port -- /
{--/ 0

}--= >�
� for VS/Unity messaging. You should check if another process is already bound to this port or if your firewall settings are compatible.	--> �
"
--� �
)
--� �
;
--� �
}.. 

(00 
Shutdown00 
)00 
;00 
}11 
)11 
;11 
EditorApplication33 
.33 
update33 
+=33 
OnUpdate33 '
;33' (
}44 
private66 	
static66
 
void66 
RunOnceOnUpdate66 %
(66% &
Action66& ,
action66- 3
)663 4
{77 
var88 
callback88 
=88 
null88 
as88 
EditorApplication88 +
.88+ ,
CallbackFunction88, <
;88< =
callback:: 
=:: 
(:: 
):: 
=>:: 
{;; 
EditorApplication<< 
.<< 
update<< 
-=<< 
callback<<  (
;<<( )
action== 

(==
 
)== 
;== 
}>> 
;>> 
EditorApplication@@ 
.@@ 
update@@ 
+=@@ 
callback@@ '
;@@' (
}AA 
privateCC 	
staticCC
 
voidCC 

(CC# $
ActionCC$ *
actionCC+ 1
)CC1 2
{DD 
ifFF 
(FF 
!FF 
VisualStudioEditorFF 
.FF 
	IsWindowsFF $
)FF$ %
returnGG 

;GG
 
	AppDomainII 
.II 

.II 
DomainUnloadII '
+=II( *
(II+ ,
_II, -
,II- .
__II/ 1
)II1 2
=>II3 5
actionII6 <
(II< =
)II= >
;II> ?
}JJ 
privateLL 	
staticLL
 
intLL 

(LL" #
)LL# $
{MM 
returnNN 	
$numNN
 
+NN 
(NN 
SystemNN 
.NN 
DiagnosticsNN %
.NN% &
ProcessNN& -
.NN- .
GetCurrentProcessNN. ?
(NN? @
)NN@ A
.NNA B
IdNNB D
%NNE F
$numNNG K
)NNK L
;NNL M
}OO 
privateQQ 	
staticQQ
 
intQQ 

(QQ" #
)QQ# $
{RR 
returnSS 	

 
(SS 
)SS 
+SS 
$numSS 
;SS 
}TT 
privateVV 	
staticVV
 
voidVV 
ReceiveMessageVV $
(VV$ %
objectVV% +
senderVV, 2
,VV2 3
MessageEventArgsVV4 D
argsVVE I
)VVI J
{WW 
	OnMessageXX 
(XX 
argsXX
.XX 
MessageXX 
)XX 
;XX 
}YY 
private[[ 	
static[[
 
void[[ 
OnUpdate[[ 
([[ 
)[[  
{\\ 
lock]] 
(]] 	
IncomingLock]]	 
)]] 
{^^ 
while__ 	
(__
 
Incoming__ 
.__ 
Count__ 
>__ 
$num__ 
)__ 
{`` 
ProcessIncomingaa 
(aa 
Incomingaa 
.aa 
Dequeueaa %
(aa% &
)aa& '
)aa' (
;aa( )
}bb 
}cc 
}dd 
privateff 	
staticff
 
voidff 

AddMessageff  
(ff  !
Messageff! (
messageff) 0
)ff0 1
{gg 
lockhh 
(hh 	
IncomingLockhh	 
)hh 
{ii 
Incomingjj 
.jj 
Enqueuejj
(jj 
messagejj 
)jj 
;jj 
}kk 
}ll 
privatenn 	
staticnn
 
voidnn 
ProcessIncomingnn %
(nn% &
Messagenn& -
messagenn. 5
)nn5 6
{oo 
switchpp 	
(pp
 
messagepp 
.pp 
Typepp 
)pp 
{qq 
caserr 
MessageTyperr	 
.rr 
Pingrr 
:rr 
Answerss 
(ss 
messagess 
,ss 
MessageTypess  
.ss  !
Pongss! %
)ss% &
;ss& '
breaktt 

;tt
 
caseuu 
MessageTypeuu	 
.uu 
Playuu 
:uu 
Shutdownvv 
(vv
)vv 
;vv 
EditorApplicationww 
.ww 
	isPlayingww  
=ww! "
trueww# '
;ww' (
breakxx 

;xx
 
caseyy 
MessageTypeyy	 
.yy 
Stopyy 
:yy 
EditorApplicationzz 
.zz 
	isPlayingzz  
=zz! "
falsezz# (
;zz( )
break{{ 

;{{
 
case|| 
MessageType||	 
.|| 
Pause|| 
:|| 
EditorApplication}} 
.}} 
isPaused}} 
=}}  !
true}}" &
;}}& '
break~~ 

;~~
 
case 
MessageType	 
. 
Unpause 
: 
EditorApplication
�� 
.
�� 
isPaused
�� 
=
��  !
false
��" '
;
��' (
break
�� 

;
��
 
case
�� 
MessageType
��	 
.
�� 
Build
�� 
:
�� 
break
�� 

;
��
 
case
�� 
MessageType
��	 
.
�� 
Refresh
�� 
:
�� 
Refresh
�� 
(
�� 
)
��
;
�� 
break
�� 

;
��
 
case
�� 
MessageType
��	 
.
�� 
Version
�� 
:
�� 
Answer
�� 
(
�� 
message
�� 
,
�� 
MessageType
��  
.
��  !
Version
��! (
,
��( )
PackageVersion
��* 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
break
�� 

;
��
 
case
�� 
MessageType
��	 
.
�� 

�� "
:
��" #
break
�� 

;
��
 
case
�� 
MessageType
��	 
.
�� 
ProjectPath
��  
:
��  !
Answer
�� 
(
�� 
message
�� 
,
�� 
MessageType
��  
.
��  !
ProjectPath
��! ,
,
��, -
Path
��. 2
.
��2 3
GetFullPath
��3 >
(
��> ?
Path
��? C
.
��C D
Combine
��D K
(
��K L
Application
��L W
.
��W X
dataPath
��X `
,
��` a
$str
��b f
)
��f g
)
��g h
)
��h i
;
��i j
break
�� 

;
��
 
}
�� 
}
�� 
internal
�� 

static
�� 
string
�� 
PackageVersion
�� '
(
��' (
)
��( )
{
�� 
var
�� 
package
�� 
=
�� 
UnityEditor
�� 
.
�� 
PackageManager
�� +
.
��+ ,
PackageInfo
��, 7
.
��7 8
FindForAssembly
��8 G
(
��G H
typeof
��H N
(
��N O%
VisualStudioIntegration
��O f
)
��f g
.
��g h
Assembly
��h p
)
��p q
;
��q r
return
�� 	
package
��
 
.
�� 
version
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
void
�� 
Refresh
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
EditorPrefs
�� 
.
�� 
GetBool
�� 
(
�� 
$str
�� *
,
��* +
true
��, 0
)
��0 1
)
��1 2
return
�� 

;
��
 
RunOnceOnUpdate
�� 
(
�� 

��  
.
��  !
Refresh
��! (
)
��( )
;
��) *
}
�� 
private
�� 	
static
��
 
void
�� 
	OnMessage
�� 
(
��  
Message
��  '
message
��( /
)
��/ 0
{
�� 

AddMessage
�� 
(
��
message
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
void
�� 
Answer
�� 
(
�� 
Message
�� $
message
��% ,
,
��, -
MessageType
��. 9

answerType
��: D
,
��D E
string
��F L
answerValue
��M X
=
��Y Z
$str
��[ ]
)
��] ^
{
�� 
var
�� 
targetEndPoint
�� 
=
�� 
message
�� 
.
��  
Origin
��  &
;
��& '
Answer
�� 	
(
��	 

targetEndPoint
�� 
,
�� 

answerType
�� 
,
�� 
answerValue
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
void
�� 
Answer
�� 
(
�� 

IPEndPoint
�� '
targetEndPoint
��( 6
,
��6 7
MessageType
��8 C

answerType
��D N
,
��N O
string
��P V
answerValue
��W b
)
��b c
{
�� 
	_messager
�� 
?
�� 
.
��
SendMessage
�� 
(
�� 
targetEndPoint
�� (
,
��( )

answerType
��* 4
,
��4 5
answerValue
��6 A
)
��A B
;
��B C
}
�� 
private
�� 	
static
��
 
void
�� 
Shutdown
�� 
(
�� 
)
��  
{
�� 
if
�� 
(
�� 
	_messager
�� 
==
�� 
null
�� 
)
�� 
return
�� 

;
��
 
	_messager
�� 
.
�� 
ReceiveMessage
��
-=
�� 
ReceiveMessage
�� -
;
��- .
	_messager
�� 
.
�� 
Dispose
��
(
�� 
)
�� 
;
�� 
	_messager
�� 
=
��
null
�� 
;
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\ExceptionEventArgs.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{ 
internal		 	
class		
 
ExceptionEventArgs		 "
{

 
public 
	Exception	 
	Exception 
{ 
get "
;" #
}$ %
public
ExceptionEventArgs
(
	Exception
	exception
)
{ 
	Exception 
=
	exception 
; 
} 
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\UdpSocket.cs
	namespace		 	
	Microsoft		
 
.		 
Unity		 
.		 
VisualStudio		 &
.		& '
Editor		' -
.		- .
	Messaging		. 7
{

 
internal 	
class
 
	UdpSocket 
: 
Socket "
{ 
public
const
int

BufferSize
=
$num
*
$num
;
internal 

	UdpSocket 
( 
) 
: 
base 	
(	 


 
. 
InterNetwork $
,$ %

SocketType& 0
.0 1
Dgram1 6
,6 7
ProtocolType8 D
.D E
UdpE H
)H I
{ 
SetIOControl 
( 
) 
; 
} 
public 
void	 
Bind 
( 
	IPAddress 
address $
,$ %
int& )
port* .
=/ 0
$num1 2
)2 3
{ 
Bind 
( 
new 

IPEndPoint 
( 
address 
?? !
	IPAddress" +
.+ ,
Any, /
,/ 0
port1 5
)5 6
)6 7
;7 8
} 
private 	
void
 
SetIOControl 
( 
) 
{ 
if 
( 
! 
VisualStudioEditor 
. 
	IsWindows $
)$ %
return 

;
 
try 
{   
const!! 	
int!!
 
SIO_UDP_CONNRESET!! 
=!!  !
-!!" #
$num!!# -
;!!- .
	IOControl## 
(##
SIO_UDP_CONNRESET## 
,##  
new##! $
byte##% )
[##) *
]##* +
{##, -
$num##. /
}##0 1
,##1 2
new##3 6
byte##7 ;
[##; <
$num##< =
]##= >
)##> ?
;##? @
}$$ 
catch%% 
{&& 
}(( 
})) 
public++ 
static++	 
byte++ 
[++ 
]++ 
	BufferFor++  
(++  !
IAsyncResult++! -
result++. 4
)++4 5
{,, 
return-- 	
(--
 
byte-- 
[-- 
]-- 
)-- 
result-- 
.-- 

AsyncState-- #
;--# $
}.. 
public00 
static00	 
EndPoint00 
Any00 
(00 
)00 
{11 
return22 	
new22
 

IPEndPoint22 
(22 
	IPAddress22 "
.22" #
Any22# &
,22& '
$num22( )
)22) *
;22* +
}33 
}44 
}55 �X
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\VisualStudioInstallation.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
internal
	interface
 %
IVisualStudioInstallation
{ 
string 
Path	 
{ 
get 
; 
} 
bool 
SupportsAnalyzers 
{ 
get 
; 
}  !
bool 
SupportsCSharp8 
{ 
get 
; 
} 
string 
[ 	
]	 

GetAnalyzers 
( 
) 
; 

CodeEditor 
. 
Installation
ToCodeEditorInstallation 2
(2 3
)3 4
;4 5
} 
internal 	
class
 $
VisualStudioInstallation (
:) *%
IVisualStudioInstallation+ D
{ 
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
public 
string	 
Path 
{ 
get 
; 
set 
;  
}! "
public 
Version	 
Version 
{ 
get 
; 
set  #
;# $
}% &
public 
bool	 
IsPrerelease 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool	 
SupportsAnalyzers 
{ 
get 
{   
if!! 
(!! 
VisualStudioEditor!! 
.!! 
	IsWindows!! $
)!!$ %
return"" 
Version"" 
>="" 
new"" 
Version"" "
(""" #
$num""# %
,""% &
$num""' (
)""( )
;"") *
if$$ 
($$ 
VisualStudioEditor$$ 
.$$ 
IsOSX$$  
)$$  !
return%% 
Version%% 
>=%% 
new%% 
Version%% "
(%%" #
$num%%# $
,%%$ %
$num%%& '
)%%' (
;%%( )
return'' 

false'' 
;'' 
}(( 
})) 
public++ 
bool++	 
SupportsCSharp8++ 
{,, 
get-- 
{.. 
if// 
(// 
VisualStudioEditor// 
.// 
	IsWindows// $
)//$ %
return00 
Version00 
>=00 
new00 
Version00 "
(00" #
$num00# %
,00% &
$num00' (
)00( )
;00) *
if22 
(22 
VisualStudioEditor22 
.22 
IsOSX22  
)22  !
return33 
Version33 
>=33 
new33 
Version33 "
(33" #
$num33# $
,33$ %
$num33& '
)33' (
;33( )
return55 

false55 
;55 
}66 
}77 
private99 	
static99
 
string99 
ReadRegistry99 $
(99$ %
RegistryKey99% 0
hive991 5
,995 6
string997 =
keyName99> E
,99E F
string99G M
	valueName99N W
)99W X
{:: 
try;; 
{<< 
var== 
unitykey== 
=== 
hive== 
.== 

OpenSubKey== "
(==" #
keyName==# *
)==* +
;==+ ,
var?? 
result?? 
=?? 
(?? 
string?? 
)?? 
unitykey?? !
???! "
.??" #
GetValue??# +
(??+ ,
	valueName??, 5
)??5 6
;??6 7
return@@ 

result@@ 
;@@ 
}AA 
catchBB 
(BB	 

	ExceptionBB
 
)BB 
{CC 
returnDD 

nullDD 
;DD 
}EE 
}FF 
privateII 	
stringII
 
GetBridgeLocationII "
(II" #
)II# $
{JJ 
ifKK 
(KK 
VisualStudioEditorKK 
.KK 
	IsWindowsKK #
)KK# $
{LL 
varNN 
keyNameNN 
=NN 
$"NN 9
-Software\\Microsoft\\Microsoft Visual Studio NN A
{NNA B
VersionNNB I
.NNI J
MajorNNJ O
}NNO P
.0 Tools for UnityNNP b
"NNb c
;NNc d
constOO 	
stringOO
 
	valueNameOO 
=OO 
$strOO 1
;OO1 2
varQQ 
bridgeQQ 
=QQ 
ReadRegistryQQ 
(QQ 
RegistryQQ &
.QQ& '
CurrentUserQQ' 2
,QQ2 3
keyNameQQ4 ;
,QQ; <
	valueNameQQ= F
)QQF G
;QQG H
ifRR 
(RR 
stringRR 
.RR 

(RR 
bridgeRR #
)RR# $
)RR$ %
bridgeSS 
=SS 
ReadRegistrySS 
(SS 
RegistrySS #
.SS# $
LocalMachineSS$ 0
,SS0 1
keyNameSS2 9
,SS9 :
	valueNameSS; D
)SSD E
;SSE F
returnUU 

bridgeUU 
;UU 
}VV 
ifXX 
(XX 
VisualStudioEditorXX 
.XX 
IsOSXXX 
)XX  
{YY 
var[[ 
bridge[[ 
=[[ 
Environment[[ 
.[[ "
GetEnvironmentVariable[[ 3
([[3 4
$str[[4 B
)[[B C
;[[C D
if\\ 
(\\ 
!\\ 	
string\\	 
.\\ 

(\\ 
bridge\\ $
)\\$ %
&&\\& (
File\\) -
.\\- .
Exists\\. 4
(\\4 5
bridge\\5 ;
)\\; <
)\\< =
return]] 
bridge]] 
;]] 
const__ 	
string__
 
addinBridge__ 
=__ 
$str__ P
;__P Q
const`` 	
string``
 
	addinName`` 
=`` 
$str`` 0
;``0 1
varcc 
localAddinscc 
=cc 
IOPathcc 
.cc 
Combinecc $
(cc$ %
Environmentdd 
.dd 

(dd 
Environmentdd *
.dd* +

.dd8 9
Personaldd9 A
)ddA B
,ddB C
$"ee 6
*Library/Application Support/VisualStudio/$ee 1
{ee1 2
Versionee2 9
.ee9 :
Majoree: ?
}ee? @
.0ee@ B
"eeB C
+eeD E
$streeF \
)ee\ ]
;ee] ^
ifjj 
(jj 
	Directoryjj 
.jj 
Existsjj 
(jj 
localAddinsjj $
)jj$ %
)jj% &
{kk 
foreachll 
(ll
varll 
folderll 
inll 
	Directoryll %
.ll% &
GetDirectoriesll& 4
(ll4 5
localAddinsll5 @
,ll@ A
	addinNamellB K
+llL M
$strllN Q
,llQ R
SearchOptionllS _
.ll_ `
TopDirectoryOnlyll` p
)llp q
)llq r
{mm 
bridgenn 
=nn
IOPathnn 
.nn 
Combinenn 
(nn 
foldernn $
,nn$ %
addinBridgenn& 1
)nn1 2
;nn2 3
ifoo 
(oo	 

Fileoo
 
.oo 
Existsoo 
(oo 
bridgeoo 
)oo 
)oo 
returnpp 
bridgepp 
;pp 
}qq 
}rr 
bridgevv 

=vv 
IOPathvv
.vv 
Combinevv 
(vv 
Pathvv  
,vv  !
$"vv" $6
*Contents/Resources/lib/monodevelop/AddIns/vv$ N
{vvN O
	addinNamevvO X
}vvX Y
/vvY Z
{vvZ [
addinBridgevv[ f
}vvf g
"vvg h
)vvh i
;vvi j
ifww 
(ww 
Fileww 
.ww 
Existsww
(ww 
bridgeww 
)ww 
)ww 
returnxx 
bridgexx 
;xx 
}yy 
return{{ 	
null{{
 
;{{ 
}|| 
public~~ 
string~~	 
[~~ 
]~~ 
GetAnalyzers~~ 
(~~ 
)~~  
{ 
var
�� 
bridge
�� 
=
�� 
GetBridgeLocation
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 

�� 
(
�� 
bridge
�� #
)
��# $
)
��$ %
{
�� 
var
�� 
baseLocation
�� 
=
�� 
IOPath
�� 
.
�� 
Combine
�� %
(
��% &
IOPath
��& ,
.
��, -
GetDirectoryName
��- =
(
��= >
bridge
��> D
)
��D E
,
��E F
$str
��G K
)
��K L
;
��L M
var
�� 
analyzerLocation
�� 
=
�� 
IOPath
�� !
.
��! "
GetFullPath
��" -
(
��- .
IOPath
��. 4
.
��4 5
Combine
��5 <
(
��< =
baseLocation
��= I
,
��I J
$str
��K V
)
��V W
)
��W X
;
��X Y
if
�� 
(
�� 
	Directory
�� 
.
�� 
Exists
�� 
(
�� 
analyzerLocation
�� )
)
��) *
)
��* +
return
�� 
	Directory
�� 
.
�� 
GetFiles
�� 
(
�� 
analyzerLocation
�� /
,
��/ 0
$str
��1 A
,
��A B
SearchOption
��C O
.
��O P
AllDirectories
��P ^
)
��^ _
;
��_ `
}
�� 
return
�� 	
Array
��
 
.
�� 
Empty
�� 
<
�� 
string
�� 
>
�� 
(
�� 
)
�� 
;
��  
}
�� 
public
�� 

CodeEditor
��	 
.
�� 
Installation
��  &
ToCodeEditorInstallation
��! 9
(
��9 :
)
��: ;
{
�� 
return
�� 	
new
��
 

CodeEditor
�� 
.
�� 
Installation
�� %
(
��% &
)
��& '
{
��( )
Name
��* .
=
��/ 0
Name
��1 5
,
��5 6
Path
��7 ;
=
��< =
Path
��> B
}
��C D
;
��D E
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Symbols.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{		 
internal

 	
static


 
class

 
Symbols

 
{ 
public 
static	 
bool  
IsPortableSymbolFile )
() *
string* 0
pdbFile1 8
)8 9
{
try 
{ 
using 	
(
 
var 
stream 
= 
File 
. 
OpenRead %
(% &
pdbFile& -
)- .
). /
{ 
return 
stream 
. 
ReadByte 
( 
) 
==  
$char! $
&&	 
stream 
. 
ReadByte 
( 
) 
==  
$char! $
&&	 
stream 
. 
ReadByte 
( 
) 
==  
$char! $
&&	 
stream 
. 
ReadByte 
( 
) 
==  
$char! $
;$ %
} 
} 
catch 
(	 

	Exception
 
) 
{ 
return 

false 
; 
} 
} 
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\SolutionProperties.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
internal		 	
class		
 
SolutionProperties		 "
{

 
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
public 
IList	 
< 
KeyValuePair 
< 
string "
," #
string$ *
>* +
>+ ,
Entries- 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public
string
Type
{
get
;
set
;
}
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo
 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :�=
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\SolutionParser.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{		 
internal

 	
static


 
class

 
SolutionParser

 %
{ 
private
static
 
readonly
Regex
ProjectDeclaration
=
new
Regex
(
$str	
,

RegexOptions

.


Singleline

|

RegexOptions

.

ExplicitCapture

)

;

private 	
static
 
readonly 
Regex !
PropertiesDeclaration  5
=6 7
new8 ;
Regex< A
(A B
$str	B �
,
� �
RegexOptions
� �
.
� �

Singleline
� �
|
� �
RegexOptions
� �
.
� �
ExplicitCapture
� �
)
� �
;
� �
private 	
static
 
readonly 
Regex &
PropertiesEntryDeclaration  :
=; <
new= @
RegexA F
(F G
$strG h
,h i
RegexOptionsj v
.v w
	Multiline	w �
|
� �
RegexOptions
� �
.
� �
ExplicitCapture
� �
)
� �
;
� �
public 
static	 
Solution 
ParseSolutionFile *
(* +
string+ 1
filename2 :
,: ;
IFileIO< C
fileIOD J
)J K
{ 
return 	 
ParseSolutionContent
 
( 
fileIO %
.% &
ReadAllText& 1
(1 2
filename2 :
): ;
); <
;< =
} 
public 
static	 
Solution  
ParseSolutionContent -
(- .
string. 4
content5 <
)< =
{ 
return 	
new
 
Solution 
{ 
Projects 
=
ParseSolutionProjects $
($ %
content% ,
), -
,- .

Properties 
= #
ParseSolutionProperties (
(( )
content) 0
)0 1
} 
; 
} 
private 	
static
  
SolutionProjectEntry %
[% &
]& '!
ParseSolutionProjects( =
(= >
string> D
contentE L
)L M
{   
var!! 
projects!! 
=!! 
new!! 
List!! 
<!!  
SolutionProjectEntry!! /
>!!/ 0
(!!0 1
)!!1 2
;!!2 3
var"" 
mc"" 	
=""
 
ProjectDeclaration"" 
."" 
Matches"" &
(""& '
content""' .
)"". /
;""/ 0
foreach$$ 

($$ 
Match$$ 
match$$ 
in$$ 
mc$$ 
)$$ 
{%% 
projects&& 
.&& 
Add&&
(&& 
new&&  
SolutionProjectEntry&& )
{'' 
ProjectFactoryGuid(( 
=(( 
match(( 
.((  
Groups((  &
[((& '
$str((' ;
]((; <
.((< =
Value((= B
,((B C
Name)) 	
=))
 
match)) 
.)) 
Groups)) 
[)) 
$str)) 
]))  
.))  !
Value))! &
,))& '
FileName** 
=** 
match** 
.** 
Groups** 
[** 
$str** '
]**' (
.**( )
Value**) .
,**. /
ProjectGuid++ 
=++ 
match++ 
.++ 
Groups++ 
[++  
$str++  -
]++- .
.++. /
Value++/ 4
,++4 5
Metadata,, 
=,, 
match,, 
.,, 
Groups,, 
[,, 
$str,, '
],,' (
.,,( )
Value,,) .
}-- 
)-- 
;-- 
}.. 
return00 	
projects00
 
.00 
ToArray00 
(00 
)00 
;00 
}11 
private33 	
static33
 
SolutionProperties33 #
[33# $
]33$ %#
ParseSolutionProperties33& =
(33= >
string33> D
content33E L
)33L M
{44 
var55 

properties55 
=55 
new55 
List55 
<55 
SolutionProperties55 /
>55/ 0
(550 1
)551 2
;552 3
var66 
mc66 	
=66
 !
PropertiesDeclaration66 !
.66! "
Matches66" )
(66) *
content66* 1
)661 2
;662 3
foreach88 

(88 
Match88 
match88 
in88 
mc88 
)88 
{99 
var:: 
sp:: 

=:: 
new::
SolutionProperties:: #
{;; 
Entries<< 
=<<
new<< 
List<< 
<<< 
KeyValuePair<< $
<<<$ %
string<<% +
,<<+ ,
string<<- 3
><<3 4
><<4 5
(<<5 6
)<<6 7
,<<7 8
Name== 	
===
 
match== 
.== 
Groups== 
[== 
$str== 
]==  
.==  !
Value==! &
,==& '
Type>> 	
=>>
 
match>> 
.>> 
Groups>> 
[>> 
$str>> 
]>>  
.>>  !
Value>>! &
}?? 
;?? 
varAA 
entriesAA 
=AA 
matchAA 
.AA 
GroupsAA 
[AA 
$strAA (
]AA( )
.AA) *
ValueAA* /
;AA/ 0
varBB 
mecBB 
=BB 
PropertiesEntryDeclarationBB (
.BB( )
MatchesBB) 0
(BB0 1
entriesBB1 8
)BB8 9
;BB9 :
foreachCC 
(CC 
MatchCC
entryCC 
inCC 
mecCC 
)CC  
{DD 
varEE 
keyEE	 
=EE
entryEE 
.EE 
GroupsEE 
[EE 
$strEE !
]EE! "
.EE" #
ValueEE# (
.EE( )
TrimEE) -
(EE- .
)EE. /
;EE/ 0
varFF 
valueFF	 
=FF 
entryFF 
.FF 
GroupsFF 
[FF 
$strFF %
]FF% &
.FF& '
ValueFF' ,
.FF, -
TrimFF- 1
(FF1 2
)FF2 3
;FF3 4
spGG 
.GG 
EntriesGG 
.GG 
AddGG 
(GG 
newGG 
KeyValuePairGG $
<GG$ %
stringGG% +
,GG+ ,
stringGG- 3
>GG3 4
(GG4 5
keyGG5 8
,GG8 9
valueGG: ?
)GG? @
)GG@ A
;GGA B
}HH 

propertiesJJ 
.JJ 
AddJJ 
(JJ 
spJJ 
)JJ 
;JJ 
}KK 
returnMM 	

propertiesMM
 
.MM 
ToArrayMM 
(MM 
)MM 
;MM 
}NN 
}OO 
}PP �e
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\Messenger.cs
	namespace		 	
	Microsoft		
 
.		 
Unity		 
.		 
VisualStudio		 &
.		& '
Editor		' -
.		- .
	Messaging		. 7
{

 
internal 	
class
 
Messager 
: 
IDisposable &
{ 
public
event
EventHandler
<
MessageEventArgs
>
ReceiveMessage
;
public 
event	 
EventHandler 
< 
ExceptionEventArgs .
>. /
MessagerException0 A
;A B
private 	
readonly
 
	UdpSocket 
_socket $
;$ %
private 	
readonly
 
object 
_disposeLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 	
bool
 
	_disposed 
; 
	protected 
Messager 
( 
int 
port 
) 
{ 
_socket 

= 
new
	UdpSocket 
( 
) 
; 
_socket 

.
 
SetSocketOption 
( 
SocketOptionLevel ,
., -
Socket- 3
,3 4
SocketOptionName5 E
.E F
ExclusiveAddressUseF Y
,Y Z
false[ `
)` a
;a b
_socket 

.
 
SetSocketOption 
( 
SocketOptionLevel ,
., -
Socket- 3
,3 4
SocketOptionName5 E
.E F
ReuseAddressF R
,R S
trueT X
)X Y
;Y Z
_socket 

.
 
Bind 
( 
	IPAddress 
. 
Any 
, 
port #
)# $
;$ %
BeginReceiveMessage 
( 
) 
; 
} 
private 	
void
 
BeginReceiveMessage "
(" #
)# $
{ 
var   
buffer   
=   
new   
byte   
[   
	UdpSocket   "
.  " #

BufferSize  # -
]  - .
;  . /
var!! 
any!! 

=!! 
	UdpSocket!!
.!! 
Any!! 
(!! 
)!! 
;!! 
try## 
{$$ 
lock%% 
(%%	 

_disposeLock%%
 
)%% 
{&& 
if'' 
('' 	
	_disposed''	 
)'' 
return(( 
;(( 
_socket** 
.** 
BeginReceiveFrom**
(** 
buffer** $
,**$ %
$num**& '
,**' (
buffer**) /
.**/ 0
Length**0 6
,**6 7
SocketFlags**8 C
.**C D
None**D H
,**H I
ref**J M
any**N Q
,**Q R"
ReceiveMessageCallback**S i
,**i j
buffer**k q
)**q r
;**r s
}++ 
},, 
catch-- 
(--	 

SocketException--
 
se-- 
)-- 
{.. 
MessagerException// 
?// 
.// 
Invoke// 
(// 
this// "
,//" #
new//$ '
ExceptionEventArgs//( :
(//: ;
se//; =
)//= >
)//> ?
;//? @
BeginReceiveMessage11 
(11 
)11 
;11 
}22 
catch33 
(33	 
#
ObjectDisposedException33
 !
)33! "
{44 
}55 
}66 
private88 	
void88
 "
ReceiveMessageCallback88 %
(88% &
IAsyncResult88& 2
result883 9
)889 :
{99 
try:: 
{;; 
var<< 
endPoint<< 
=<< 
	UdpSocket<< 
.<< 
Any<<  
(<<  !
)<<! "
;<<" #
lock>> 
(>>	 

_disposeLock>>
 
)>> 
{?? 
if@@ 
(@@ 	
	_disposed@@	 
)@@ 
returnAA 
;AA 
_socketCC 
.CC 
EndReceiveFromCC
(CC 
resultCC "
,CC" #
refCC$ '
endPointCC( 0
)CC0 1
;CC1 2
}DD 
varFF 
messageFF 
=FF 
DeserializeMessageFF $
(FF$ %
	UdpSocketFF% .
.FF. /
	BufferForFF/ 8
(FF8 9
resultFF9 ?
)FF? @
)FF@ A
;FFA B
ifGG 
(GG 
messageGG 
!=GG 
nullGG 
)GG 
{HH 
messageII 
.II 
OriginII
=II 
(II 

IPEndPointII !
)II! "
endPointII" *
;II* +
ReceiveMessageJJ 
?JJ 
.JJ 
InvokeJJ 
(JJ 
thisJJ  
,JJ  !
newJJ" %
MessageEventArgsJJ& 6
(JJ6 7
messageJJ7 >
)JJ> ?
)JJ? @
;JJ@ A
}KK 
}LL 
catchMM 
(MM	 
#
ObjectDisposedExceptionMM
 !
)MM! "
{NN 
returnOO 

;OO
 
}PP 
catchQQ 
(QQ	 

	ExceptionQQ
 
eQQ 
)QQ 
{RR "
RaiseMessagerExceptionSS 
(SS 
eSS 
)SS 
;SS 
}TT 
BeginReceiveMessageVV 
(VV 
)VV 
;VV 
}WW 
privateYY 	
voidYY
 "
RaiseMessagerExceptionYY %
(YY% &
	ExceptionYY& /
eYY0 1
)YY1 2
{ZZ 
MessagerException[[ 
?[[ 
.[[ 
Invoke[[ 
([[ 
this[[ !
,[[! "
new[[# &
ExceptionEventArgs[[' 9
([[9 :
e[[: ;
)[[; <
)[[< =
;[[= >
}\\ 
private^^ 	
static^^
 
Message^^ 

MessageFor^^ #
(^^# $
MessageType^^$ /
type^^0 4
,^^4 5
string^^6 <
value^^= B
)^^B C
{__ 
return`` 	
new``
 
Message`` 
{`` 
Type`` 
=`` 
type`` #
,``# $
Value``% *
=``+ ,
value``- 2
}``3 4
;``4 5
}aa 
publiccc 
voidcc	 
SendMessagecc 
(cc 

IPEndPointcc $
targetcc% +
,cc+ ,
MessageTypecc- 8
typecc9 =
,cc= >
stringcc? E
valueccF K
=ccL M
$strccN P
)ccP Q
{dd 
varee 
messageee 
=ee 

MessageForee 
(ee 
typeee  
,ee  !
valueee" '
)ee' (
;ee( )
varff 
bufferff 
=ff 
SerializeMessageff  
(ff  !
messageff! (
)ff( )
;ff) *
tryhh 
{ii 
lockjj 
(jj	 

_disposeLockjj
 
)jj 
{kk 
ifll 
(ll 	
	_disposedll	 
)ll 
returnmm 
;mm 
_socketoo 
.oo 
BeginSendTooo
(oo 
bufferoo 
,oo  
$numoo! "
,oo" #
Mathoo$ (
.oo( )
Minoo) ,
(oo, -
bufferoo- 3
.oo3 4
Lengthoo4 :
,oo: ;
	UdpSocketoo< E
.ooE F

BufferSizeooF P
)ooP Q
,ooQ R
SocketFlagsooS ^
.oo^ _
Noneoo_ c
,ooc d
targetooe k
,ook l 
SendMessageCallback	oom �
,
oo� �
null
oo� �
)
oo� �
;
oo� �
}pp 
}qq 
catchrr 
(rr	 

SocketExceptionrr
 
serr 
)rr 
{ss 
MessagerExceptiontt 
?tt 
.tt 
Invokett 
(tt 
thistt "
,tt" #
newtt$ '
ExceptionEventArgstt( :
(tt: ;
sett; =
)tt= >
)tt> ?
;tt? @
}uu 
}vv 
privatexx 	
voidxx
 
SendMessageCallbackxx "
(xx" #
IAsyncResultxx# /
resultxx0 6
)xx6 7
{yy 
tryzz 
{{{ 
lock|| 
(||	 

_disposeLock||
 
)|| 
{}} 
if~~ 
(~~ 	
	_disposed~~	 
)~~ 
return 
; 
_socket
�� 
.
�� 
	EndSendTo
��
(
�� 
result
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
��	 

SocketException
��
 
se
�� 
)
�� 
{
�� 
MessagerException
�� 
?
�� 
.
�� 
Invoke
�� 
(
�� 
this
�� "
,
��" #
new
��$ ' 
ExceptionEventArgs
��( :
(
��: ;
se
��; =
)
��= >
)
��> ?
;
��? @
}
�� 
catch
�� 
(
��	 
%
ObjectDisposedException
��
 !
)
��! "
{
�� 
}
�� 
}
�� 
private
�� 	
static
��
 
byte
�� 
[
�� 
]
�� 
SerializeMessage
�� (
(
��( )
Message
��) 0
message
��1 8
)
��8 9
{
�� 
var
�� 

serializer
�� 
=
�� 
new
�� 

Serializer
�� "
(
��" #
)
��# $
;
��$ %

serializer
�� 
.
��

WriteInt32
�� 
(
�� 
(
�� 
int
�� 
)
�� 
message
�� %
.
��% &
Type
��& *
)
��* +
;
��+ ,

serializer
�� 
.
��
WriteString
�� 
(
�� 
message
�� !
.
��! "
Value
��" '
)
��' (
;
��( )
return
�� 	

serializer
��
 
.
�� 
Buffer
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
Message
��  
DeserializeMessage
�� +
(
��+ ,
byte
��, 0
[
��0 1
]
��1 2
buffer
��3 9
)
��9 :
{
�� 
if
�� 
(
�� 
buffer
�� 
.
��
Length
�� 
<
�� 
$num
�� 
)
�� 
return
�� 

null
�� 
;
�� 
var
�� 
deserializer
�� 
=
�� 
new
�� 
Deserializer
�� &
(
��& '
buffer
��' -
)
��- .
;
��. /
var
�� 
type
�� 
=
�� 
(
�� 
MessageType
�� 
)
�� 
deserializer
�� '
.
��' (
	ReadInt32
��( 1
(
��1 2
)
��2 3
;
��3 4
var
�� 
value
�� 
=
��
deserializer
�� 
.
�� 

ReadString
�� &
(
��& '
)
��' (
;
��( )
return
�� 	
new
��
 
Message
�� 
{
�� 
Type
�� 
=
�� 
type
�� #
,
��# $
Value
��% *
=
��+ ,
value
��- 2
}
��3 4
;
��4 5
}
�� 
public
�� 
static
��	 
Messager
�� 
BindTo
�� 
(
��  
int
��  #
port
��$ (
)
��( )
{
�� 
return
�� 	
new
��
 
Messager
�� 
(
�� 
port
�� 
)
�� 
;
�� 
}
�� 
public
�� 
void
��	 
Dispose
�� 
(
�� 
)
�� 
{
�� 
lock
�� 
(
�� 	
_disposeLock
��	 
)
�� 
{
�� 
	_disposed
�� 
=
�� 
true
�� 
;
�� 
_socket
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\Serializer.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{		 
internal

 	
class


 

Serializer

 
{ 
private 	
readonly
 
MemoryStream 
_stream  '
;' (
private
readonly
 
BinaryWriter
_writer
;
public 

Serializer	 
( 
) 
{ 
_stream 

= 
new
MemoryStream 
( 
) 
;  
_writer 

= 
new
BinaryWriter 
( 
_stream %
)% &
;& '
} 
public 
void	 

WriteInt32 
( 
int 
i 
) 
{ 
_writer 

.
 
Write 
( 
i 
) 
; 
} 
public 
void	 
WriteString 
( 
string  
s! "
)" #
{ 
var 
bytes 
=
Encoding 
. 
UTF8 
. 
GetBytes %
(% &
s& '
??( *
$str+ -
)- .
;. /
if 
( 
bytes 
. 
Length
> 
$num 
) 
{ 
_writer 
. 
Write 
( 
bytes 
. 
Length 
) 
;  
_writer   
.   
Write   
(   
bytes   
)   
;   
}!! 
else"" 
_writer## 
.## 
Write## 
(## 
$num## 
)## 
;## 
}$$ 
public&& 
byte&&	 
[&&
]&& 
Buffer&& 
(&& 
)&& 
{'' 
return(( 	
_stream((
 
.(( 
ToArray(( 
((( 
)(( 
;(( 
})) 
}** 
}++ �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\ProjectGeneration\FileIOProvider.cs
	namespace		 	
	Microsoft		
 
.		 
Unity		 
.		 
VisualStudio		 &
.		& '
Editor		' -
{

 
public 
	interface 
IFileIO 
{ 
bool
Exists
(
string
fileName
)
;
string 
ReadAllText	 
( 
string 
fileName $
)$ %
;% &
void 
WriteAllText 
( 
string 
fileName #
,# $
string% +
content, 3
)3 4
;4 5
} 
class 
FileIOProvider 
: 
IFileIO 
{ 
public 
bool	 
Exists 
( 
string 
fileName $
)$ %
{ 
return 	
File
 
. 
Exists 
( 
fileName 
) 
;  
} 
public 
string	 
ReadAllText 
( 
string "
fileName# +
)+ ,
{ 
return 	
File
 
. 
ReadAllText 
( 
fileName #
)# $
;$ %
} 
public 
void	 
WriteAllText 
( 
string !
fileName" *
,* +
string, 2
content3 :
): ;
{   
File!! 
.!! 
WriteAllText!! 
(!! 
fileName!! 
,!! 
content!! &
,!!& '
Encoding!!( 0
.!!0 1
UTF8!!1 5
)!!5 6
;!!6 7
}"" 
}## 
}$$ �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\Deserializer.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{		 
internal

 	
class


 
Deserializer

 
{ 
private 	
readonly
 
BinaryReader 
_reader  '
;' (
private 	
const
 
int 
MaxStringLength #
=$ %
$num& +
;+ ,
public 
Deserializer	 
( 
byte 
[ 
] 
buffer #
)# $
{ 
_reader 

= 
new
BinaryReader 
( 
new !
MemoryStream" .
(. /
buffer/ 5
)5 6
)6 7
;7 8
} 
public 
int	 
	ReadInt32
( 
) 
{ 
return 	
_reader
 
. 
	ReadInt32 
( 
) 
; 
} 
public 
string	 

ReadString 
( 
) 
{ 
var 
length 
= 
	ReadInt32 
( 
) 
; 
return 	
length
 
> 
$num 
&& 
length 
<= !
MaxStringLength" 1
? 
Encoding 
. 
UTF8 
. 
	GetString 
( 
_reader %
.% &
	ReadBytes& /
(/ 0
length0 6
)6 7
)7 8
:   
$str   
;   	
}!! 
public## 
bool##	 
CanReadMore## 
(## 
)## 
{$$ 
return%% 	
_reader%%
 
.%% 

BaseStream%% 
.%% 
Position%% %
<%%& '
_reader%%( /
.%%/ 0

BaseStream%%0 :
.%%: ;
Length%%; A
;%%A B
}&& 
}'' 
}(( �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\ProjectGeneration\ProjectGeneration.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
public 
enum 
ScriptingLanguage
{ 
None 
, 
CSharp 
} 
public 
	interface 

IGenerator 
{ 
bool 
SyncIfNeeded 
( 
IEnumerable 
<  
string  &
>& '

,5 6
IEnumerable7 B
<B C
stringC I
>I J
reimportedFilesK Z
)Z [
;[ \
void   
Sync   
(   
)   
;  
bool!! $
HasSolutionBeenGenerated!! 
(!!  
)!!  !
;!!! "
bool"" 
IsSupportedFile"" 
("" 
string"" 
path"" "
)""" #
;""# $
string## 
SolutionFile##	 
(## 
)## 
;## 
string$$ 
ProjectDirectory$$	 
{$$ 
get$$ 
;$$  
}$$! "!
IAssemblyNameProvider%%  
AssemblyNameProvider%% ,
{%%- .
get%%/ 2
;%%2 3
}%%4 5
}&& 
public(( 
class(( 
ProjectGeneration(( 
:((  !

IGenerator((" ,
{)) 
public** 
static**	 
readonly** 
string** 
MSBuildNamespaceUri**  3
=**4 5
$str**6 k
;**k l
public++ !
IAssemblyNameProvider++	  
AssemblyNameProvider++ 3
=>++4 6"
m_AssemblyNameProvider++7 M
;++M N
public,, 
string,,	 
ProjectDirectory,,  
{,,! "
get,,# &
;,,& '
},,( )
const.. 
string.. 
k_WindowsNewline.. 
=..  !
$str.." (
;..( )
string00 *
m_SolutionProjectEntryTemplate00	 '
=00( )
$str00* n
;00n o
string22 2
&m_SolutionProjectConfigurationTemplate22	 /
=220 1
string222 8
.228 9
Join229 =
(22= >
$str22> D
,22D E
$str33 =
,33= >
$str44 ;
,44; <
$str55 A
,55A B
$str66 ?
)66? @
.66@ A
Replace66A H
(66H I
$str66I O
,66O P
$str66Q U
)66U V
;66V W
static88 
readonly88	 
string88 
[88 
]88 $
k_ReimportSyncExtensions88 3
=884 5
{886 7
$str888 >
,88> ?
$str88@ I
}88J K
;88K L
static:: 
readonly::	 
Regex:: '
k_ScriptReferenceExpression:: 3
=::4 5
new::6 9
Regex::: ?
(::? @
$str;; @
,;;@ A
RegexOptions<< 
.<< 
Compiled<< 
|<< 
RegexOptions<< '
.<<' (

IgnoreCase<<( 2
)<<2 3
;<<3 4
string>> 
[>> 	
]>>	 
(
m_ProjectSupportedExtensions>> '
=>>( )
Array>>* /
.>>/ 0
Empty>>0 5
<>>5 6
string>>6 <
>>>< =
(>>= >
)>>> ?
;>>? @
string?? 
[?? 	
]??	 
(
m_BuiltinSupportedExtensions?? '
=??( )
Array??* /
.??/ 0
Empty??0 5
<??5 6
string??6 <
>??< =
(??= >
)??> ?
;??? @
readonlyAA 

stringAA 

;AA  
readonlyBB 
!
IAssemblyNameProviderBB  "
m_AssemblyNameProviderBB! 7
;BB7 8
readonlyCC 

IFileIOCC 
m_FileIOProviderCC #
;CC# $
readonlyDD 

IGUIDGeneratorDD 
m_GUIDGeneratorDD )
;DD) *
boolEE 
m_ShouldGenerateAllEE 
;EE %
IVisualStudioInstallationFF !
m_CurrentInstallationFF 1
;FF1 2
publicHH 
ProjectGenerationHH	 
(HH 
)HH 
:HH 
thisHH #
(HH# $
	DirectoryHH$ -
.HH- .
	GetParentHH. 7
(HH7 8
ApplicationHH8 C
.HHC D
dataPathHHD L
)HHL M
.HHM N
FullNameHHN V
)HHV W
{II 
}JJ 
publicLL 
ProjectGenerationLL	 
(LL 
stringLL !

)LL/ 0
:LL1 2
thisLL3 7
(LL7 8

,LLE F
newLLG J 
AssemblyNameProviderLLK _
(LL_ `
)LL` a
,LLa b
newLLc f
FileIOProviderLLg u
(LLu v
)LLv w
,LLw x
newLLy |
GUIDProvider	LL} �
(
LL� �
)
LL� �
)
LL� �
{MM 
}NN 
publicPP 
ProjectGenerationPP	 
(PP 
stringPP !

,PP/ 0!
IAssemblyNameProviderPP1 F 
assemblyNameProviderPPG [
,PP[ \
IFileIOPP] d
fileIoProviderPPe s
,PPs t
IGUIDGenerator	PPu �

PP� �
)
PP� �
{QQ 
ProjectDirectoryRR 
=RR 
FileUtilityRR !
.RR! ""
NormalizeWindowsToUnixRR" 8
(RR8 9

)RRF G
;RRG H

=SS 
PathSS 
.SS 
GetFileNameSS #
(SS# $
ProjectDirectorySS$ 4
)SS4 5
;SS5 6"
m_AssemblyNameProviderTT 
=TT  
assemblyNameProviderTT 0
;TT0 1
m_FileIOProviderUU 
=UU 
fileIoProviderUU $
;UU$ %
m_GUIDGeneratorVV 
=VV 

;VV" #+
SetupProjectSupportedExtensionsXX "
(XX" #
)XX# $
;XX$ %
}YY 
publicgg 
boolgg	 
SyncIfNeededgg 
(gg 
IEnumerablegg &
<gg& '
stringgg' -
>gg- .

,gg< =
IEnumerablegg> I
<ggI J
stringggJ P
>ggP Q
reimportedFilesggR a
)gga b
{hh +
SetupProjectSupportedExtensionsii "
(ii" #
)ii# $
;ii$ %$
CreateVsConfigIfNotFoundmm 
(mm 
)mm 
;mm 
ifpp 
(pp $
HasSolutionBeenGeneratedpp 
(pp  
)pp  !
&&pp" $ 
HasFilesBeenModifiedpp% 9
(pp9 :

,ppG H
reimportedFilesppI X
)ppX Y
)ppY Z
{qq 
Syncrr 
(rr 	
)rr	 

;rr
 
returnss 

truess 
;ss 
}tt 
returnuu 	
falseuu
 
;uu 
}vv 
privatexx 	
voidxx
 $
CreateVsConfigIfNotFoundxx '
(xx' (
)xx( )
{yy 
tryzz 
{{{ 
var|| 
vsConfigFile|| 
=|| 
VsConfigFile|| #
(||# $
)||$ %
;||% &
if}} 
(}} 
m_FileIOProvider}} 
.}} 
Exists}} 
(}}  
vsConfigFile}}  ,
)}}, -
)}}- .
return~~ 
;~~ 
var
�� 
content
�� 
=
�� 
$@"
�� D
6{{
  ""version"": ""1.0"",
  ""components"": [ 
    ""
�� 
{
�� 
	Discovery
�� 
.
�� 
ManagedWorkload
��  
}
��  !
""
  ]
}} 
��!
"�� 
;
�� 
m_FileIOProvider
�� 
.
�� 
WriteAllText
�� !
(
��! "
vsConfigFile
��" .
,
��. /
content
��0 7
)
��7 8
;
��8 9
}
�� 
catch
�� 
(
��	 

IOException
��
 
)
�� 
{
�� 
}
�� 
}
�� 
private
�� 	
bool
��
 "
HasFilesBeenModified
�� #
(
��# $
IEnumerable
��$ /
<
��/ 0
string
��0 6
>
��6 7

��8 E
,
��E F
IEnumerable
��G R
<
��R S
string
��S Y
>
��Y Z
reimportedFiles
��[ j
)
��j k
{
�� 
return
�� 	

��
 
.
�� 
Any
�� 
(
�� (
ShouldFileBePartOfSolution
�� 6
)
��6 7
||
��8 :
reimportedFiles
��; J
.
��J K
Any
��K N
(
��N O)
ShouldSyncOnReimportedAsset
��O j
)
��j k
;
��k l
}
�� 
private
�� 	
static
��
 
bool
�� )
ShouldSyncOnReimportedAsset
�� 1
(
��1 2
string
��2 8
asset
��9 >
)
��> ?
{
�� 
return
�� 	&
k_ReimportSyncExtensions
��
 "
.
��" #
Contains
��# +
(
��+ ,
new
��, /
FileInfo
��0 8
(
��8 9
asset
��9 >
)
��> ?
.
��? @
	Extension
��@ I
)
��I J
;
��J K
}
�� 
private
�� 	
void
��
 (
RefreshCurrentInstallation
�� )
(
��) *
)
��* +
{
�� 
var
�� 
editor
�� 
=
�� 

CodeEditor
�� 
.
�� 

�� (
as
��) + 
VisualStudioEditor
��, >
;
��> ?
editor
�� 	
?
��	 

.
��
 3
%TryGetVisualStudioInstallationForPath
�� 0
(
��0 1

CodeEditor
��1 ;
.
��; <'
CurrentEditorInstallation
��< U
,
��U V
out
��W Z#
m_CurrentInstallation
��[ p
)
��p q
;
��q r
}
�� 
public
�� 
void
��	 
Sync
�� 
(
�� 
)
�� 
{
�� (
RefreshCurrentInstallation
�� 
(
�� 
)
�� 
;
��  -
SetupProjectSupportedExtensions
�� "
(
��" #
)
��# $
;
��$ %
var
�� 2
$externalCodeAlreadyGeneratedProjects
�� +
=
��, -+
OnPreGeneratingCSProjectFiles
��. K
(
��K L
)
��L M
;
��M N
if
�� 
(
�� 
!
�� 2
$externalCodeAlreadyGeneratedProjects
�� ,
)
��, -
{
�� 1
#GenerateAndWriteSolutionAndProjects
�� '
(
��' (
)
��( )
;
��) *
}
�� '
OnGeneratedCSProjectFiles
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 
bool
��	 
HasSolutionBeenGenerated
�� &
(
��& '
)
��' (
{
�� 
return
�� 	
m_FileIOProvider
��
 
.
�� 
Exists
�� !
(
��! "
SolutionFile
��" .
(
��. /
)
��/ 0
)
��0 1
;
��1 2
}
�� 
private
�� 	
void
��
 -
SetupProjectSupportedExtensions
�� .
(
��. /
)
��/ 0
{
�� *
m_ProjectSupportedExtensions
�� 
=
��  !$
m_AssemblyNameProvider
��" 8
.
��8 9(
ProjectSupportedExtensions
��9 S
;
��S T*
m_BuiltinSupportedExtensions
�� 
=
��  !
EditorSettings
��" 0
.
��0 10
"projectGenerationBuiltinExtensions
��1 S
;
��S T
}
�� 
private
�� 	
bool
��
 (
ShouldFileBePartOfSolution
�� )
(
��) *
string
��* 0
file
��1 5
)
��5 6
{
�� 
if
�� 
(
�� $
m_AssemblyNameProvider
�� 
.
�� '
IsInternalizedPackagePath
�� 7
(
��7 8
file
��8 <
)
��< =
)
��= >
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
return
�� 	
IsSupportedFile
��
 
(
�� 
file
�� 
)
�� 
;
��  
}
�� 
private
�� 	
static
��
 
string
�� $
GetExtensionWithoutDot
�� .
(
��. /
string
��/ 5
path
��6 :
)
��: ;
{
�� 
if
�� 
(
�� 
!
�� 
Path
�� 
.
�� 
HasExtension
��
(
�� 
path
�� 
)
�� 
)
��  
return
�� 

path
�� 
;
�� 
return
�� 	
Path
��
 
.
�� 
GetExtension
�� 
(
�� 
path
�� 
)
�� 
.
�� 
	TrimStart
�� 
(
�� 
$char
�� 
)
�� 
.
�� 
ToLower
�� 
(
�� 
)
��
;
�� 
}
�� 
public
�� 
bool
��	 
IsSupportedFile
�� 
(
�� 
string
�� $
path
��% )
)
��) *
{
�� 
var
�� 
	extension
�� 
=
�� $
GetExtensionWithoutDot
�� )
(
��) *
path
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
	extension
�� 
==
�� 
$str
�� 
)
�� 
return
�� 

true
�� 
;
�� 
if
�� 
(
�� 
	extension
�� 
==
�� 
$str
�� 
)
�� 
return
�� 

true
�� 
;
�� 
if
�� 
(
�� *
m_BuiltinSupportedExtensions
�� #
.
��# $
Contains
��$ ,
(
��, -
	extension
��- 6
)
��6 7
)
��7 8
return
�� 

true
�� 
;
�� 
if
�� 
(
�� *
m_ProjectSupportedExtensions
�� #
.
��# $
Contains
��$ ,
(
��, -
	extension
��- 6
)
��6 7
)
��7 8
return
�� 

true
�� 
;
�� 
return
�� 	
false
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
ScriptingLanguage
�� ""
ScriptingLanguageFor
��# 7
(
��7 8
Assembly
��8 @
assembly
��A I
)
��I J
{
�� 
var
�� 
files
�� 
=
��
assembly
�� 
.
�� 
sourceFiles
�� #
;
��# $
if
�� 
(
�� 
files
�� 
.
�� 
Length
��
==
�� 
$num
�� 
)
�� 
return
�� 

ScriptingLanguage
�� 
.
�� 
None
�� !
;
��! "
return
�� 	"
ScriptingLanguageFor
��
 
(
�� 
files
�� $
[
��$ %
$num
��% &
]
��& '
)
��' (
;
��( )
}
�� 
internal
�� 

static
�� 
ScriptingLanguage
�� #"
ScriptingLanguageFor
��$ 8
(
��8 9
string
��9 ?
path
��@ D
)
��D E
{
�� 
return
�� 	$
GetExtensionWithoutDot
��
  
(
��  !
path
��! %
)
��% &
==
��' )
$str
��* .
?
��/ 0
ScriptingLanguage
��1 B
.
��B C
CSharp
��C I
:
��J K
ScriptingLanguage
��L ]
.
��] ^
None
��^ b
;
��b c
}
�� 
public
�� 
void
��	 
#GenerateAndWriteSolutionAndProjects
�� 1
(
��1 2
)
��2 3
{
�� 
var
�� 

assemblies
�� 
=
�� $
m_AssemblyNameProvider
�� *
.
��* +

��+ 8
(
��8 9(
ShouldFileBePartOfSolution
��9 S
)
��S T
;
��T U
var
�� "
allAssetProjectParts
�� 
=
�� *
GenerateAllAssetProjectParts
�� :
(
��: ;
)
��; <
;
��< =
var
�� 
assemblyList
�� 
=
�� 

assemblies
��  
.
��  !
ToList
��! '
(
��' (
)
��( )
;
��) *
SyncSolution
�� 
(
�� 
assemblyList
�� 
)
�� 
;
�� 
var
�� "
allProjectAssemblies
�� 
=
�� '
RelevantAssembliesForMode
�� 7
(
��7 8
assemblyList
��8 D
)
��D E
.
��E F
ToList
��F L
(
��L M
)
��M N
;
��N O
foreach
�� 

(
�� 
Assembly
�� 
assembly
�� 
in
��  "
allProjectAssemblies
��! 5
)
��5 6
{
�� 
SyncProject
�� 
(
�� 
assembly
�� 
,
�� "
allAssetProjectParts
�� 
,
�� 
responseFilesData
�� 
:
�� #
ParseResponseFileData
�� -
(
��- .
assembly
��. 6
)
��6 7
,
��7 8"
allProjectAssemblies
�� 
,
�� 
assembly
�� 
.
�� 
compilerOptions
�� &
.
��& '$
RoslynAnalyzerDllPaths
��' =
)
��= >
;
��> ?
}
�� 
}
�� 
private
�� 	
IEnumerable
��
 
<
�� 
ResponseFileData
�� &
>
��& '#
ParseResponseFileData
��( =
(
��= >
Assembly
��> F
assembly
��G O
)
��O P
{
�� 
var
�� (
systemReferenceDirectories
�� !
=
��" #!
CompilationPipeline
��$ 7
.
��7 8*
GetSystemAssemblyDirectories
��8 T
(
��T U
assembly
��U ]
.
��] ^
compilerOptions
��^ m
.
��m n$
ApiCompatibilityLevel��n �
)��� �
;��� �

Dictionary
�� 
<
��
string
�� 
,
�� 
ResponseFileData
�� &
>
��& '
responseFilesData
��( 9
=
��: ;
assembly
��< D
.
��D E
compilerOptions
��E T
.
��T U

��U b
.
��b c
ToDictionary
��c o
(
��o p
x
��p q
=>
��r t
x
��u v
,
��v w
x
��x y
=>
��z |%
m_AssemblyNameProvider��} �
.��� �!
ParseResponseFile��� �
(��� �
x
�� 
,
�� 
ProjectDirectory
�� 
,
�� (
systemReferenceDirectories
�� 
)
�� 
)
�� 
;
�� 

Dictionary
�� 
<
��
string
�� 
,
�� 
ResponseFileData
�� &
>
��& '%
responseFilesWithErrors
��( ?
=
��@ A
responseFilesData
��B S
.
��S T
Where
��T Y
(
��Y Z
x
��Z [
=>
��\ ^
x
��_ `
.
��` a
Value
��a f
.
��f g
Errors
��g m
.
��m n
Any
��n q
(
��q r
)
��r s
)
��s t
.
�� 
ToDictionary
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Key
�� 
,
�� 
x
�� 
=>
��  "
x
��# $
.
��$ %
Value
��% *
)
��* +
;
��+ ,
if
�� 
(
�� %
responseFilesWithErrors
�� 
.
�� 
Any
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
foreach
�� 
(
�� 
var
��
error
�� 
in
�� %
responseFilesWithErrors
�� 1
)
��1 2
foreach
�� 
(
��
var
�� 

valueError
�� 
in
�� 
error
��  %
.
��% &
Value
��& +
.
��+ ,
Errors
��, 2
)
��2 3
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� 
{
�� 
error
�� 
.
�� 
Key
�� !
}
��! "
 Parse Error : 
��" 1
{
��1 2

valueError
��2 <
}
��< =
"
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
return
�� 	
responseFilesData
��
 
.
�� 
Select
�� "
(
��" #
x
��# $
=>
��% '
x
��( )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
private
�� 	

Dictionary
��
 
<
�� 
string
�� 
,
�� 
string
�� #
>
��# $*
GenerateAllAssetProjectParts
��% A
(
��A B
)
��B C
{
�� 

Dictionary
�� 
<
��
string
�� 
,
�� 

�� #
>
��# $
stringBuilders
��% 3
=
��4 5
new
��6 9

Dictionary
��: D
<
��D E
string
��E K
,
��K L

��M Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
foreach
�� 

(
�� 
string
�� 
asset
�� 
in
�� $
m_AssemblyNameProvider
�� 2
.
��2 3
GetAllAssetPaths
��3 C
(
��C D
)
��D E
)
��E F
{
�� 
if
�� 
(
�� $
m_AssemblyNameProvider
�� 
.
�� '
IsInternalizedPackagePath
�� 8
(
��8 9
asset
��9 >
)
��> ?
)
��? @
{
�� 
continue
�� 
;
��
}
�� 
if
�� 
(
�� 
IsSupportedFile
�� 
(
�� 
asset
�� 
)
�� 
&&
�� !
ScriptingLanguage
��" 3
.
��3 4
None
��4 8
==
��9 ;"
ScriptingLanguageFor
��< P
(
��P Q
asset
��Q V
)
��V W
)
��W X
{
�� 
var
�� 
assemblyName
��	 
=
�� $
m_AssemblyNameProvider
�� .
.
��. /+
GetAssemblyNameFromScriptPath
��/ L
(
��L M
asset
��M R
+
��S T
$str
��U Z
)
��Z [
;
��[ \
if
�� 
(
�� 	
string
��	 
.
�� 

�� 
(
�� 
assemblyName
�� *
)
��* +
)
��+ ,
{
�� 
continue
�� 
;
�� 
}
�� 
assemblyName
�� 
=
�� 
Path
�� 
.
�� )
GetFileNameWithoutExtension
�� 4
(
��4 5
assemblyName
��5 A
)
��A B
;
��B C
if
�� 
(
�� 	
!
��	 

stringBuilders
��
 
.
�� 
TryGetValue
�� $
(
��$ %
assemblyName
��% 1
,
��1 2
out
��3 6
var
��7 :
projectBuilder
��; I
)
��I J
)
��J K
{
�� 
projectBuilder
�� 
=
�� 
new
�� 

�� (
(
��( )
)
��) *
;
��* +
stringBuilders
�� 
[
�� 
assemblyName
�� !
]
��! "
=
��# $
projectBuilder
��% 3
;
��3 4
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 2
)
��2 3
.
��3 4
Append
��4 :
(
��: ;$
EscapedRelativePathFor
��; Q
(
��Q R
asset
��R W
)
��W X
)
��X Y
.
��Y Z
Append
��Z `
(
��` a
$str
��a h
)
��h i
.
��i j
Append
��j p
(
��p q
k_WindowsNewline��q �
)��� �
;��� �
}
�� 
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 

Dictionary
�� 
<
�� 
string
�� %
,
��% &
string
��' -
>
��- .
(
��. /
)
��/ 0
;
��0 1
foreach
�� 

(
�� 
var
�� 
entry
�� 
in
�� 
stringBuilders
�� '
)
��' (
result
�� 

[
��
 
entry
�� 
.
�� 
Key
�� 
]
�� 
=
�� 
entry
�� 
.
�� 
Value
�� #
.
��# $
ToString
��$ ,
(
��, -
)
��- .
;
��. /
return
�� 	
result
��
 
;
�� 
}
�� 
private
�� 	
void
��
 
SyncProject
�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 

Dictionary
�� 
<
��
string
�� 
,
�� 
string
�� 
>
�� #
allAssetsProjectParts
�� 3
,
��3 4
IEnumerable
�� 
<
�� 
ResponseFileData
�� 
>
��  
responseFilesData
��! 2
,
��2 3
List
�� 
<
�� 
Assembly
�� 
>
�� "
allProjectAssemblies
�� &
,
��& '
string
�� 	
[
��	 

]
��
 $
roslynAnalyzerDllPaths
�� "
)
��" #
{
�� )
SyncProjectFileIfNotChanged
�� 
(
�� 
ProjectFile
�� 
(
�� 
assembly
�� 
)
�� 
,
�� 
ProjectText
�� 
(
�� 
assembly
�� 
,
�� #
allAssetsProjectParts
�� /
,
��/ 0
responseFilesData
��1 B
,
��B C"
allProjectAssemblies
��D X
,
��X Y$
roslynAnalyzerDllPaths
��Z p
)
��p q
)
��q r
;
��r s
}
�� 
private
�� 	
void
��
 )
SyncProjectFileIfNotChanged
�� *
(
��* +
string
��+ 1
path
��2 6
,
��6 7
string
��8 >
newContents
��? J
)
��J K
{
�� 
if
�� 
(
�� 
Path
�� 
.
�� 
GetExtension
�� 
(
�� 
path
�� 
)
�� 
==
�� !
$str
��" +
)
��+ ,
{
�� 
newContents
�� 
=
�� "
OnGeneratedCSProject
�� &
(
��& '
path
��' +
,
��+ ,
newContents
��- 8
)
��8 9
;
��9 :
}
�� "
SyncFileIfNotChanged
�� 
(
�� 
path
�� 
,
�� 
newContents
�� )
)
��) *
;
��* +
}
�� 
private
�� 	
void
��
 *
SyncSolutionFileIfNotChanged
�� +
(
��+ ,
string
��, 2
path
��3 7
,
��7 8
string
��9 ?
newContents
��@ K
)
��K L
{
�� 
newContents
�� 
=
�� $
OnGeneratedSlnSolution
�� '
(
��' (
path
��( ,
,
��, -
newContents
��. 9
)
��9 :
;
��: ;"
SyncFileIfNotChanged
�� 
(
�� 
path
�� 
,
�� 
newContents
�� )
)
��) *
;
��* +
}
�� 
private
�� 	
static
��
 
IEnumerable
�� 
<
�� 
SR
�� 
.
��  

MethodInfo
��  *
>
��* +'
GetPostProcessorCallbacks
��, E
(
��E F
string
��F L
name
��M Q
)
��Q R
{
�� 
return
�� 	
	TypeCache
��
 
.
�� !
GetTypesDerivedFrom
�� 
<
��  
AssetPostprocessor
�� +
>
��+ ,
(
��, -
)
��- .
.
�� 
Select
�� 
(
�� 
t
�� 
=>
�� 
t
�� 
.
�� 
	GetMethod
�� 
(
�� 
name
�� !
,
��! "
SR
��# %
.
��% &
BindingFlags
��& 2
.
��2 3
Public
��3 9
|
��: ;
SR
��< >
.
��> ?
BindingFlags
��? K
.
��K L
	NonPublic
��L U
|
��V W
SR
��X Z
.
��Z [
BindingFlags
��[ g
.
��g h
Static
��h n
)
��n o
)
��o p
.
�� 
Where
�� 

(
��
 
m
�� 
=>
��
m
�� 
!=
�� 
null
�� 
)
�� 
;
�� 
}
�� 
static
�� 
void
��	 
OnGeneratedCSProjectFiles
�� '
(
��' (
)
��( )
{
�� 
foreach
�� 

(
�� 
var
�� 
method
�� 
in
�� '
GetPostProcessorCallbacks
�� 3
(
��3 4
nameof
��4 :
(
��: ;'
OnGeneratedCSProjectFiles
��; T
)
��T U
)
��U V
)
��V W
{
�� 
method
�� 

.
��
 
Invoke
�� 
(
�� 
null
�� 
,
�� 
Array
�� 
.
�� 
Empty
�� #
<
��# $
object
��$ *
>
��* +
(
��+ ,
)
��, -
)
��- .
;
��. /
}
�� 
}
�� 
private
�� 	
static
��
 
bool
�� +
OnPreGeneratingCSProjectFiles
�� 3
(
��3 4
)
��4 5
{
�� 
bool
�� 
result
�� 
=
�� 
false
�� 
;
�� 
foreach
�� 

(
�� 
var
�� 
method
�� 
in
�� '
GetPostProcessorCallbacks
�� 3
(
��3 4
nameof
��4 :
(
��: ;+
OnPreGeneratingCSProjectFiles
��; X
)
��X Y
)
��Y Z
)
��Z [
{
�� 
var
�� 
retValue
�� 
=
�� 
method
�� 
.
�� 
Invoke
��  
(
��  !
null
��! %
,
��% &
Array
��' ,
.
��, -
Empty
��- 2
<
��2 3
object
��3 9
>
��9 :
(
��: ;
)
��; <
)
��< =
;
��= >
if
�� 
(
�� 
method
�� 
.
�� 

ReturnType
�� 
==
�� 
typeof
�� #
(
��# $
bool
��$ (
)
��( )
)
��) *
{
�� 
result
�� 
|=
�� 
(
�� 
bool
�� 
)
�� 
retValue
�� 
;
�� 
}
�� 
}
�� 
return
�� 	
result
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 9
+InvokeAssetPostProcessorGenerationCallbacks
�� C
(
��C D
string
��D J
name
��K O
,
��O P
string
��Q W
path
��X \
,
��\ ]
string
��^ d
content
��e l
)
��l m
{
�� 
foreach
�� 

(
�� 
var
�� 
method
�� 
in
�� '
GetPostProcessorCallbacks
�� 3
(
��3 4
name
��4 8
)
��8 9
)
��9 :
{
�� 
var
�� 
args
�� 
=
��
new
�� 
[
�� 
]
�� 
{
�� 
path
�� 
,
�� 
content
�� $
}
��% &
;
��& '
var
�� 
returnValue
�� 
=
�� 
method
�� 
.
�� 
Invoke
�� #
(
��# $
null
��$ (
,
��( )
args
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
method
�� 
.
�� 

ReturnType
�� 
==
�� 
typeof
�� #
(
��# $
string
��$ *
)
��* +
)
��+ ,
{
�� 
content
�� 
=
��
(
�� 
string
�� 
)
�� 
returnValue
�� "
;
��" #
}
�� 
}
�� 
return
�� 	
content
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� "
OnGeneratedCSProject
�� ,
(
��, -
string
��- 3
path
��4 8
,
��8 9
string
��: @
content
��A H
)
��H I
{
�� 
return
�� 	9
+InvokeAssetPostProcessorGenerationCallbacks
��
 5
(
��5 6
nameof
��6 <
(
��< ="
OnGeneratedCSProject
��= Q
)
��Q R
,
��R S
path
��T X
,
��X Y
content
��Z a
)
��a b
;
��b c
}
�� 
private
�� 	
static
��
 
string
�� $
OnGeneratedSlnSolution
�� .
(
��. /
string
��/ 5
path
��6 :
,
��: ;
string
��< B
content
��C J
)
��J K
{
�� 
return
�� 	9
+InvokeAssetPostProcessorGenerationCallbacks
��
 5
(
��5 6
nameof
��6 <
(
��< =$
OnGeneratedSlnSolution
��= S
)
��S T
,
��T U
path
��V Z
,
��Z [
content
��\ c
)
��c d
;
��d e
}
�� 
private
�� 	
void
��
 "
SyncFileIfNotChanged
�� #
(
��# $
string
��$ *
filename
��+ 3
,
��3 4
string
��5 ;
newContents
��< G
)
��G H
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
m_FileIOProvider
�� 
.
�� 
Exists
�� 
(
��  
filename
��  (
)
��( )
&&
��* ,
newContents
��- 8
==
��9 ;
m_FileIOProvider
��< L
.
��L M
ReadAllText
��M X
(
��X Y
filename
��Y a
)
��a b
)
��b c
{
�� 
return
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
��	 

	Exception
��
 
	exception
�� 
)
�� 
{
�� 
Debug
�� 	
.
��	 

LogException
��
 
(
�� 
	exception
��  
)
��  !
;
��! "
}
�� 
m_FileIOProvider
�� 
.
�� 
WriteAllText
��  
(
��  !
filename
��! )
,
��) *
newContents
��+ 6
)
��6 7
;
��7 8
}
�� 
private
�� 	
string
��
 
ProjectText
�� 
(
�� 
Assembly
�� %
assembly
��& .
,
��. /

Dictionary
�� 
<
��
string
�� 
,
�� 
string
�� 
>
�� #
allAssetsProjectParts
�� 3
,
��3 4
IEnumerable
�� 
<
�� 
ResponseFileData
�� 
>
��  
responseFilesData
��! 2
,
��2 3
List
�� 
<
�� 
Assembly
�� 
>
�� "
allProjectAssemblies
�� &
,
��& '
string
�� 	
[
��	 

]
��
 $
roslynAnalyzerDllPaths
�� "
)
��" #
{
�� 
var
�� 
projectBuilder
�� 
=
�� 
new
�� 

�� )
(
��) *

��* 7
(
��7 8
assembly
��8 @
,
��@ A
responseFilesData
��B S
,
��S T$
roslynAnalyzerDllPaths
��U k
)
��k l
)
��l m
;
��m n
var
�� 

references
�� 
=
�� 
new
�� 
List
�� 
<
�� 
string
�� #
>
��# $
(
��$ %
)
��% &
;
��& '
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� )
)
��) *
.
��* +
Append
��+ 1
(
��1 2
k_WindowsNewline
��2 B
)
��B C
;
��C D
foreach
�� 

(
�� 
string
�� 
file
�� 
in
�� 
assembly
�� #
.
��# $
sourceFiles
��$ /
)
��/ 0
{
�� 
if
�� 
(
�� 
!
�� 	
IsSupportedFile
��	 
(
�� 
file
�� 
)
�� 
)
�� 
continue
�� 
;
��
var
�� 
	extension
�� 
=
�� 
Path
�� 
.
�� 
GetExtension
�� %
(
��% &
file
��& *
)
��* +
.
��+ ,
ToLower
��, 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
fullFile
�� 
=
�� $
EscapedRelativePathFor
�� )
(
��) *
file
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
$str
�� 
!=
�� 
	extension
�� 
)
�� 
{
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 4
)
��4 5
.
��5 6
Append
��6 <
(
��< =
fullFile
��= E
)
��E F
.
��F G
Append
��G M
(
��M N
$str
��N U
)
��U V
.
��V W
Append
��W ]
(
��] ^
k_WindowsNewline
��^ n
)
��n o
;
��o p
}
�� 
else
�� 
{
�� 

references
�� 
.
�� 
Add
�� 
(
�� 
fullFile
�� 
)
�� 
;
�� 
}
�� 
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� *
)
��* +
.
��+ ,
Append
��, 2
(
��2 3
k_WindowsNewline
��3 C
)
��C D
;
��D E
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� )
)
��) *
.
��* +
Append
��+ 1
(
��1 2
k_WindowsNewline
��2 B
)
��B C
;
��C D
if
�� 
(
�� #
allAssetsProjectParts
�� 
.
�� 
TryGetValue
�� (
(
��( )
assembly
��) 1
.
��1 2
name
��2 6
,
��6 7
out
��8 ;
var
��< ?(
additionalAssetsForProject
��@ Z
)
��Z [
)
��[ \
projectBuilder
�� 
.
�� 
Append
�� 
(
�� (
additionalAssetsForProject
�� 4
)
��4 5
;
��5 6
var
�� 
responseRefs
�� 
=
�� 
responseFilesData
�� '
.
��' (

SelectMany
��( 2
(
��2 3
x
��3 4
=>
��5 7
x
��8 9
.
��9 : 
FullPathReferences
��: L
.
��L M
Select
��M S
(
��S T
r
��T U
=>
��V X
r
��Y Z
)
��Z [
)
��[ \
;
��\ ]
var
�� (
internalAssemblyReferences
�� !
=
��" #
assembly
��$ ,
.
��, - 
assemblyReferences
��- ?
.
�� 
Where
�� 
(
�� 
i
�� 
=>
�� 
!
�� 
i
�� 
.
�� 
sourceFiles
�� 
.
��  
Any
��  #
(
��# $(
ShouldFileBePartOfSolution
��$ >
)
��> ?
)
��? @
.
��@ A
Select
��A G
(
��G H
i
��H I
=>
��J L
i
��M N
.
��N O

outputPath
��O Y
)
��Y Z
;
��Z [
var
�� 

�� 
=
�� 
assembly
�� 
.
��
compiledAssemblyReferences
�� (
.
�� 
Union
�� 

(
��
 
responseRefs
�� 
)
�� 
.
�� 
Union
�� 

(
��
 

references
�� 
)
�� 
.
�� 
Union
�� 

(
��
 (
internalAssemblyReferences
�� %
)
��% &
;
��& '
foreach
�� 

(
�� 
var
�� 
	reference
�� 
in
�� 

�� *
)
��* +
{
�� 
string
�� 


�� 
=
�� 
Path
�� 
.
��  
IsPathRooted
��  ,
(
��, -
	reference
��- 6
)
��6 7
?
��8 9
	reference
��: C
:
��D E
Path
��F J
.
��J K
Combine
��K R
(
��R S
ProjectDirectory
��S c
,
��c d
	reference
��e n
)
��n o
;
��o p
AppendReference
�� 
(
�� 

�� !
,
��! "
projectBuilder
��# 1
)
��1 2
;
��2 3
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� *
)
��* +
.
��+ ,
Append
��, 2
(
��2 3
k_WindowsNewline
��3 C
)
��C D
;
��D E
if
�� 
(
�� 
$num
�� 
<
��	 

assembly
�� 
.
��  
assemblyReferences
�� &
.
��& '
Length
��' -
)
��- .
{
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� )
)
��) *
.
��* +
Append
��+ 1
(
��1 2
k_WindowsNewline
��2 B
)
��B C
;
��C D
foreach
�� 
(
�� 
Assembly
��
	reference
�� 
in
��  "
assembly
��# +
.
��+ , 
assemblyReferences
��, >
.
��> ?
Where
��? D
(
��D E
i
��E F
=>
��G I
i
��J K
.
��K L
sourceFiles
��L W
.
��W X
Any
��X [
(
��[ \(
ShouldFileBePartOfSolution
��\ v
)
��v w
)
��w x
)
��x y
{
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� =
)
��= >
.
��> ?
Append
��? E
(
��E F
	reference
��F O
.
��O P
name
��P T
)
��T U
.
��U V
Append
��V \
(
��\ ]!
GetProjectExtension
��] p
(
��p q
)
��q r
)
��r s
.
��s t
Append
��t z
(
��z {
$str��{ �
)��� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� -
)
��- .
.
��. /
Append
��/ 5
(
��5 6
ProjectGuid
��6 A
(
��A B
	reference
��B K
)
��K L
)
��L M
.
��M N
Append
��N T
(
��T U
$str
��U b
)
��b c
.
��c d
Append
��d j
(
��j k
k_WindowsNewline
��k {
)
��{ |
;
��| }
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� )
)
��) *
.
��* +
Append
��+ 1
(
��1 2
	reference
��2 ;
.
��; <
name
��< @
)
��@ A
.
��A B
Append
��B H
(
��H I
$str
��I R
)
��R S
.
��S T
Append
��T Z
(
��Z [
k_WindowsNewline
��[ k
)
��k l
;
��l m
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 4
)
��4 5
.
��5 6
Append
��6 <
(
��< =
k_WindowsNewline
��= M
)
��M N
;
��N O
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� +
)
��+ ,
.
��, -
Append
��- 3
(
��3 4
k_WindowsNewline
��4 D
)
��D E
;
��E F
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 

�� &
(
��& '
)
��' (
)
��( )
;
��) *
return
�� 	
projectBuilder
��
 
.
�� 
ToString
�� !
(
��! "
)
��" #
;
��# $
}
�� 
private
�� 	
static
��
 
string
�� 
XmlFilename
�� #
(
��# $
string
��$ *
path
��+ /
)
��/ 0
{
�� 
if
�� 
(
�� 
string
�� 
.
��

�� 
(
�� 
path
��  
)
��  !
)
��! "
return
�� 

path
�� 
;
�� 
path
�� 
=
�� 	
path
��
 
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
$str
�� "
)
��" #
;
��# $
path
�� 
=
�� 	
path
��
 
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
$str
�� "
)
��" #
;
��# $
return
�� 	
	XmlEscape
��
 
(
�� 
path
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 
	XmlEscape
�� !
(
��! "
string
��" (
s
��) *
)
��* +
{
�� 
return
�� 	
SecurityElement
��
 
.
�� 
Escape
��  
(
��  !
s
��! "
)
��" #
;
��# $
}
�� 
private
�� 	
void
��
 
AppendReference
�� 
(
�� 
string
�� %

��& 3
,
��3 4

��5 B
projectBuilder
��C Q
)
��Q R
{
�� 
var
�� 
escapedFullPath
�� 
=
�� $
EscapedRelativePathFor
�� /
(
��/ 0

��0 =
)
��= >
;
��> ?
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 4
)
��4 5
.
��5 6
Append
��6 <
(
��< =
Path
��= A
.
��A B)
GetFileNameWithoutExtension
��B ]
(
��] ^
escapedFullPath
��^ m
)
��m n
)
��n o
.
��o p
Append
��p v
(
��v w
$str
��w |
)
��| }
.
��} ~
Append��~ �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� +
)
��+ ,
.
��, -
Append
��- 3
(
��3 4
escapedFullPath
��4 C
)
��C D
.
��D E
Append
��E K
(
��K L
$str
��L Y
)
��Y Z
.
��Z [
Append
��[ a
(
��a b
k_WindowsNewline
��b r
)
��r s
;
��s t
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� +
)
��+ ,
.
��, -
Append
��- 3
(
��3 4
k_WindowsNewline
��4 D
)
��D E
;
��E F
}
�� 
public
�� 
string
��	 
ProjectFile
�� 
(
�� 
Assembly
�� $
assembly
��% -
)
��- .
{
�� 
return
�� 	
Path
��
 
.
�� 
Combine
�� 
(
�� 
ProjectDirectory
�� '
,
��' (
$"
��) +
{
��+ ,$
m_AssemblyNameProvider
��, B
.
��B C
GetAssemblyName
��C R
(
��R S
assembly
��S [
.
��[ \

outputPath
��\ f
,
��f g
assembly
��h p
.
��p q
name
��q u
)
��u v
}
��v w
.csproj
��w ~
"
��~ 
)�� �
;��� �
}
�� 
private
�� 	
static
��
 
readonly
�� 
Regex
�� +
InvalidCharactersRegexPattern
��  =
=
��> ?
new
��@ C
Regex
��D I
(
��I J
$str
��J g
+
��h i
(
��j k 
VisualStudioEditor
��k }
.
��} ~
	IsWindows��~ �
?��� �
$str��� �
:��� �
$str��� �
)��� �
)��� �
;��� �
public
�� 
string
��	 
SolutionFile
�� 
(
�� 
)
�� 
{
�� 
return
�� 	
Path
��
 
.
�� 
Combine
�� 
(
�� 
FileUtility
�� "
.
��" #
	Normalize
��# ,
(
��, -
ProjectDirectory
��- =
)
��= >
,
��> ?
$"
��@ B
{
��B C+
InvalidCharactersRegexPattern
��C `
.
��` a
Replace
��a h
(
��h i

��i v
,
��v w
$str
��x {
)
��{ |
}
��| }
.sln��} �
"��� �
)��� �
;��� �
}
�� 
internal
�� 

string
�� 
VsConfigFile
�� 
(
�� 
)
��  
{
�� 
return
�� 	
Path
��
 
.
�� 
Combine
�� 
(
�� 
FileUtility
�� "
.
��" #
	Normalize
��# ,
(
��, -
ProjectDirectory
��- =
)
��= >
,
��> ?
$str
��@ K
)
��K L
;
��L M
}
�� 
private
�� 	
string
��
 

�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 
IEnumerable
�� 
<
�� 
ResponseFileData
�� 
>
��  
responseFilesData
��! 2
,
��2 3
string
�� 	
[
��	 

]
��
 $
roslynAnalyzerDllPaths
�� "
)
�� 
{
�� 
var
�� 
toolsVersion
�� 
=
�� 
$str
�� 
;
�� 
var
�� 
productVersion
�� 
=
�� 
$str
�� $
;
��$ %
const
�� 
string
��	 

�� 
=
�� 
$str
��  #
;
��# $
var
�� $
targetFrameworkVersion
�� 
=
�� 
$str
��  (
;
��( )
var
�� #
targetLanguageVersion
�� 
=
�� 
$str
�� '
;
��' (
if
�� 
(
�� #
m_CurrentInstallation
�� 
!=
�� 
null
��  $
&&
��% '#
m_CurrentInstallation
��( =
.
��= >
SupportsCSharp8
��> M
)
��M N
{
�� 
}
�� 
var
�� 
projectType
�� 
=
�� 

�� "
(
��" #
assembly
��# +
.
��+ ,
name
��, 0
)
��0 1
;
��1 2
var
�� 
	arguments
�� 
=
�� 
new
�� 
object
�� 
[
�� 
]
�� 
{
�� 
toolsVersion
�� 
,
�� 
productVersion
�� 
,
�� 
ProjectGuid
�� 
(
�� 
assembly
�� 
)
�� 
,
�� 
XmlFilename
�� 
(
�� 
FileUtility
�� 
.
�� 
	Normalize
�� %
(
��% &#
InternalEditorUtility
��& ;
.
��; <#
GetEngineAssemblyPath
��< Q
(
��Q R
)
��R S
)
��S T
)
��T U
,
��U V
XmlFilename
�� 
(
�� 
FileUtility
�� 
.
�� 
	Normalize
�� %
(
��% &#
InternalEditorUtility
��& ;
.
��; <#
GetEditorAssemblyPath
��< Q
(
��Q R
)
��R S
)
��S T
)
��T U
,
��U V
string
�� 

.
��
 
Join
�� 
(
�� 
$str
�� 
,
�� 
assembly
�� 
.
�� 
defines
�� %
.
��% &
Concat
��& ,
(
��, -
responseFilesData
��- >
.
��> ?

SelectMany
��? I
(
��I J
x
��J K
=>
��L N
x
��O P
.
��P Q
Defines
��Q X
)
��X Y
)
��Y Z
.
��Z [
Distinct
��[ c
(
��c d
)
��d e
.
��e f
ToArray
��f m
(
��m n
)
��n o
)
��o p
,
��p q!
MSBuildNamespaceUri
�� 
,
�� 
assembly
�� 
.
�� 
name
��
,
�� 
assembly
�� 
.
�� 

outputPath
��
,
�� 
GetRootNamespace
�� 
(
�� 
assembly
�� 
)
�� 
,
�� $
targetFrameworkVersion
�� 
,
�� #
targetLanguageVersion
�� 
,
�� 

�� 
,
�� 
assembly
�� 
.
�� 
compilerOptions
��
.
�� 
AllowUnsafeCode
�� ,
|
��- .
responseFilesData
��/ @
.
��@ A
Any
��A D
(
��D E
x
��E F
=>
��G I
x
��J K
.
��K L
Unsafe
��L R
)
��R S
,
��S T
projectType
�� 
+
�� 
$str
�� !
+
��" #
(
��$ %
int
��% (
)
��( )
projectType
��) 4
,
��4 5%
EditorUserBuildSettings
�� 
.
�� 
activeBuildTarget
�� -
+
��. /
$str
��0 3
+
��4 5
(
��6 7
int
��7 :
)
��: ;%
EditorUserBuildSettings
��; R
.
��R S
activeBuildTarget
��S d
,
��d e
Application
�� 
.
�� 
unityVersion
�� 
,
�� %
VisualStudioIntegration
�� 
.
�� 
PackageVersion
�� *
(
��* +
)
��+ ,
}
�� 
;
�� 
try
�� 
{
�� 
return
�� 
string
�� 
.
�� 
Format
�� $
(
��$ %&
GetProjectHeaderTemplate
��% =
(
��= >$
roslynAnalyzerDllPaths
��> T
,
��T U
assembly
��V ^
.
��^ _
compilerOptions
��_ n
.
��n o(
RoslynAnalyzerRulesetPath��o �
)��� �
,��� �
	arguments��� �
)��� �
;��� �
}
�� 
catch
�� 
(
��	 

	Exception
��
 
)
�� 
{
�� 
throw
�� 	
new
��
 
NotSupportedException
�� #
(
��# $
$str��$ �
+��� �
	arguments��� �
.��� �
Length��� �
)��� �
;��� �
}
�� 
}
�� 
private
�� 	
enum
��
 
ProjectType
�� 
{
�� 
GamePlugins
�� 
=
�� 
$num
�� 
,
�� 
Game
�� 
=
�� 	
$num
��
 
,
�� 

�� 
=
�� 
$num
�� 
,
�� 
Editor
�� 	
=
��
 
$num
�� 
,
��
}
�� 
private
�� 	
static
��
 
ProjectType
�� 

�� *
(
��* +
string
��+ 1
fileName
��2 :
)
��: ;
{
�� 
var
�� 
plugins
�� 
=
�� 
fileName
�� 
.
�� 
Contains
�� "
(
��" #
$str
��# .
)
��. /
;
��/ 0
var
�� 
editor
�� 
=
�� 
fileName
�� 
.
�� 
Contains
�� !
(
��! "
$str
��" *
)
��* +
;
��+ ,
if
�� 
(
�� 
plugins
�� 
&&
�� 
editor
�� 
)
�� 
return
�� 

ProjectType
�� 
.
�� 

�� $
;
��$ %
if
�� 
(
�� 
plugins
�� 
)
�� 
return
�� 

ProjectType
�� 
.
�� 
GamePlugins
�� "
;
��" #
if
�� 
(
�� 
editor
�� 
)
��
return
�� 

ProjectType
�� 
.
�� 
Editor
�� 
;
�� 
return
�� 	
ProjectType
��
 
.
�� 
Game
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 
GetSolutionText
�� '
(
��' (
)
��( )
{
�� 
return
�� 	
string
��
 
.
�� 
Join
�� 
(
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� ?
,
��? @
$str
�� 
,
�� 
$str
�� 	
,
��	 

$str
�� 
,
�� 
$str
�� E
,
��E F
$str
�� +
,
��+ ,
$str
�� /
,
��/ 0
$str
�� 
,
�� 
$str
�� E
,
��E F
$str
�� 	
,
��	 

$str
�� 
,
�� 
$str
�� 	
,
��	 

$str
�� 
,
�� 
$str
�� 
)
�� 
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
$str
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� &
GetProjectFooterTemplate
�� 0
(
��0 1
)
��1 2
{
�� 
return
�� 	
string
��
 
.
�� 
Join
�� 
(
�� 
$str
�� 
,
�� 
$str
�� K
,
��K L
$str
�� C
,
��C D
$str
�� j
,
��j k
$str
�� P
,
��P Q
$str
�� %
,
��% &
$str
�� 
,
�� 
$str
�� $
,
��$ %
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
string
��
 &
GetProjectHeaderTemplate
�� )
(
��) *
string
��* 0
[
��0 1
]
��1 2$
roslynAnalyzerDllPaths
��3 I
,
��I J
string
��K Q'
roslynAnalyzerRulesetPath
��R k
)
��k l
{
�� 
var
�� 
header
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
$str
�� 1
,
��1 2
$str
�� L
,
��L M
$str
�� 
,
�� 
$str
�� *
,
��* +
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� X
,
��X Y
$str
�� J
,
��J K
$str
�� /
,
��/ 0
$str
�� -
,
��- .
$str
�� -
,
��- .
$str
�� -
,
��- .
$str
�� +
,
��+ ,
$str
�� <
,
��< =
$str
�� +
,
��+ ,
$str
�� @
,
��@ A
$str
�� -
,
��- .
$str
�� .
,
��. /
$str
�� 
,
�� 
$str
�� Y
,
��Y Z
$str
�� ,
,
��, -
$str
�� &
,
��& '
$str
�� %
,
��% &
$str
�� '
,
��' (
$str
�� 1
,
��1 2
$str
�� ,
,
��, -
$str
�� )
,
��) *
$str
��  
,
��  !
$str
�� 6
,
��6 7
$str
�� 
,
�� 
$str
�� [
,
��[ \
$str
�� )
,
��) *
$str
�� $
,
��$ %
$str
�� 5
,
��5 6
$str
�� ,
,
��, -
$str
�� )
,
��) *
$str
��  
,
��  !
$str
�� 6
,
��6 7
$str
�� 
}
�� 
;
�� 
var
�� %
forceExplicitReferences
�� 
=
��  
new
��! $
[
��$ %
]
��% &
{
�� 
$str
�� 
,
�� 
$str
�� $
,
��$ %
$str
�� $
,
��$ %
$str
�� c
,
��c d
$str
�� Y
,
��Y Z
$str
�� W
,
��W X
$str
�� 
}
�� 
;
�� 
var
�� 
	flavoring
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
$str
�� 
,
�� 
$str�� �
,��� �
$str
�� A
,
��A B
$str
�� L
,
��L M
$str
�� 4
,
��4 5
$str
�� 4
,
��4 5
$str
�� ,
,
��, -
$str
�� 
}
�� 
;
�� 
var
�� 
footer
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
$str
�� 
}
�� 
;
�� 
var
�� 
lines
�� 
=
��
header
�� 
.
�� 
Concat
�� 
(
�� %
forceExplicitReferences
�� 4
)
��4 5
.
��5 6
Concat
��6 <
(
��< =
	flavoring
��= F
)
��F G
.
��G H
ToList
��H N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� #
m_CurrentInstallation
�� 
!=
�� 
null
��  $
&&
��% '#
m_CurrentInstallation
��( =
.
��= >
SupportsAnalyzers
��> O
)
��O P
{
�� 
if
�� 
(
�� '
roslynAnalyzerRulesetPath
�� -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
lines
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
lines
�� 
.
�� 
Add
�� 
(
�� 
$"
��  '
    <CodeAnalysisRuleSet>
��  9
{
��9 :'
roslynAnalyzerRulesetPath
��: S
}
��S T$
</CodeAnalysisRuleSet>
��T j
"
��j k
)
��k l
;
��l m
lines
�� 
.
�� 
Add
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
}
�� 
string
�� 

[
��
 
]
�� 
	analyzers
��
=
�� #
m_CurrentInstallation
�� .
.
��. /
GetAnalyzers
��/ ;
(
��; <
)
��< =
;
��= >
string
�� 

[
��
 
]
�� 
allAnalyzers
��
=
�� 
	analyzers
�� %
!=
��& (
null
��) -
?
��. /
	analyzers
��0 9
.
��9 :
Concat
��: @
(
��@ A$
roslynAnalyzerDllPaths
��A W
)
��W X
.
��X Y
ToArray
��Y `
(
��` a
)
��a b
:
��c d$
roslynAnalyzerDllPaths
��e {
;
��{ |
if
�� 
(
�� 
allAnalyzers
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
lines
�� 

.
��
 
Add
�� 
(
�� 
$str
�� 
)
��  
;
��  !
foreach
�� 
(
��
var
�� 
analyzer
�� 
in
�� 
allAnalyzers
�� *
)
��* +
{
�� 
lines
�� 
.
�� 
Add
�� 
(
�� 
$@"
�� &
    <Analyzer Include=""
�� +
{
��+ ,$
EscapedRelativePathFor
��, B
(
��B C
analyzer
��C K
)
��K L
}
��L M
"" />
��M R
"
��R S
)
��S T
;
��T U
}
�� 
lines
�� 

.
��
 
Add
�� 
(
�� 
$str
��  
)
��  !
;
��! "
}
�� 
}
�� 
return
�� 	
string
��
 
.
�� 
Join
�� 
(
�� 
$str
�� 
,
�� 
lines
�� #
.
��# $
Concat
��$ *
(
��* +
footer
��+ 1
)
��1 2
)
��2 3
;
��3 4
}
�� 
private
�� 	
void
��
 
SyncSolution
�� 
(
�� 
IEnumerable
�� '
<
��' (
Assembly
��( 0
>
��0 1

assemblies
��2 <
)
��< =
{
�� 
if
�� 
(
�� +
InvalidCharactersRegexPattern
�� $
.
��$ %
IsMatch
��% ,
(
��, -
ProjectDirectory
��- =
)
��= >
)
��> ?
Debug
�� 	
.
��	 


LogWarning
��
 
(
�� 
$str
�� q
)
��q r
;
��r s
var
�� 
solutionFile
�� 
=
�� 
SolutionFile
�� "
(
��" #
)
��# $
;
��$ %
var
�� 
previousSolution
�� 
=
�� 
m_FileIOProvider
�� *
.
��* +
Exists
��+ 1
(
��1 2
solutionFile
��2 >
)
��> ?
?
��@ A
SolutionParser
��B P
.
��P Q
ParseSolutionFile
��Q b
(
��b c
solutionFile
��c o
,
��o p
m_FileIOProvider��q �
)��� �
:��� �
null��� �
;��� �*
SyncSolutionFileIfNotChanged
�� 
(
��  
solutionFile
��  ,
,
��, -
SolutionText
��. :
(
��: ;

assemblies
��; E
,
��E F
previousSolution
��G W
)
��W X
)
��X Y
;
��Y Z
}
�� 
private
�� 	
string
��
 
SolutionText
�� 
(
�� 
IEnumerable
�� )
<
��) *
Assembly
��* 2
>
��2 3

assemblies
��4 >
,
��> ?
Solution
��@ H
previousSolution
��I Y
=
��Z [
null
��\ `
)
��` a
{
�� 
const
�� 
string
��	 
fileversion
�� 
=
�� 
$str
�� %
;
��% &
const
�� 
string
��	 
	vsversion
�� 
=
�� 
$str
��  
;
��  !
var
��  
relevantAssemblies
�� 
=
�� '
RelevantAssembliesForMode
�� 5
(
��5 6

assemblies
��6 @
)
��@ A
;
��A B
var
�� 
generatedProjects
�� 
=
�� 
ToProjectEntries
�� +
(
��+ , 
relevantAssemblies
��, >
)
��> ?
.
��? @
ToList
��@ F
(
��F G
)
��G H
;
��H I 
SolutionProperties
�� 
[
�� 
]
�� 

properties
�� "
=
��# $
null
��% )
;
��) *
var
�� 
projects
�� 
=
�� 
new
�� 
List
�� 
<
�� "
SolutionProjectEntry
�� /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
projects
�� 
.
�� 
AddRange
�� 
(
�� 
generatedProjects
�� &
)
��& '
;
��' (
if
�� 
(
�� 
previousSolution
�� 
!=
�� 
null
�� 
)
��  
{
�� 
var
�� 
externalProjects
�� 
=
�� 
previousSolution
�� +
.
��+ ,
Projects
��, 4
.
�� 
Where
�� 
(
�� 
p
�� 
=>
�� 
p
�� 
.
�� ,
IsSolutionFolderProjectFactory
�� 1
(
��1 2
)
��2 3
||
��4 6
!
��7 8
FileUtility
��8 C
.
��C D&
IsFileInProjectDirectory
��D \
(
��\ ]
p
��] ^
.
��^ _
FileName
��_ g
)
��g h
)
��h i
.
�� 
Where
�� 
(
�� 
p
�� 
=>
�� 
generatedProjects
�� "
.
��" #
All
��# &
(
��& '
gp
��' )
=>
��* ,
gp
��- /
.
��/ 0
FileName
��0 8
!=
��9 ;
p
��< =
.
��= >
FileName
��> F
)
��F G
)
��G H
;
��H I
projects
�� 
.
�� 
AddRange
��
(
�� 
externalProjects
�� &
)
��& '
;
��' (

properties
�� 
=
�� 
previousSolution
�� !
.
��! "

Properties
��" ,
;
��, -
}
�� 
string
�� 	
propertiesText
��
 
=
�� 
GetPropertiesText
�� ,
(
��, -

properties
��- 7
)
��7 8
;
��8 9
string
�� 	 
projectEntriesText
��
 
=
�� #
GetProjectEntriesText
�� 4
(
��4 5
projects
��5 =
)
��= >
;
��> ?
var
�� "
configurableProjects
�� 
=
�� 
projects
�� &
.
��& '
Where
��' ,
(
��, -
p
��- .
=>
��/ 1
!
��2 3
p
��3 4
.
��4 5,
IsSolutionFolderProjectFactory
��5 S
(
��S T
)
��T U
)
��U V
;
��V W
string
�� 	'
projectConfigurationsText
��
 #
=
��$ %
string
��& ,
.
��, -
Join
��- 1
(
��1 2
k_WindowsNewline
��2 B
,
��B C"
configurableProjects
��D X
.
��X Y
Select
��Y _
(
��_ `
p
��` a
=>
��b d-
GetProjectActiveConfigurations��e �
(��� �
p��� �
.��� �
ProjectGuid��� �
)��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
)��� �
;��� �
return
�� 	
string
��
 
.
�� 
Format
�� 
(
�� 
GetSolutionText
�� '
(
��' (
)
��( )
,
��) *
fileversion
��+ 6
,
��6 7
	vsversion
��8 A
,
��A B 
projectEntriesText
��C U
,
��U V'
projectConfigurationsText
��W p
,
��p q
propertiesText��r �
)��� �
;��� �
}
�� 
private
�� 	
static
��
 
IEnumerable
�� 
<
�� 
Assembly
�� %
>
��% &'
RelevantAssembliesForMode
��' @
(
��@ A
IEnumerable
��A L
<
��L M
Assembly
��M U
>
��U V

assemblies
��W a
)
��a b
{
�� 
return
�� 	

assemblies
��
 
.
�� 
Where
�� 
(
�� 
i
�� 
=>
�� 
ScriptingLanguage
��  1
.
��1 2
CSharp
��2 8
==
��9 ;"
ScriptingLanguageFor
��< P
(
��P Q
i
��Q R
)
��R S
)
��S T
;
��T U
}
�� 
private
�� 	
static
��
 
string
�� 
GetPropertiesText
�� )
(
��) * 
SolutionProperties
��* <
[
��< =
]
��= >
array
��? D
)
��D E
{
�� 
if
�� 
(
�� 
array
�� 
==
��
null
�� 
||
�� 
array
�� 
.
�� 
Length
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
array
�� 	
=
��
 
new
��  
SolutionProperties
�� "
[
��" #
]
��# $
{
��% &
new
��  
SolutionProperties
��	 
(
�� 
)
�� 
{
�� 
Name
�� 

=
�� 
$str
��
,
��! "
Type
�� 

=
�� 
$str
��
,
�� 
Entries
�� 
=
�� 
new
�� 
List
�� 
<
�� 
KeyValuePair
�� %
<
��% &
string
��& ,
,
��, -
string
��- 3
>
��3 4
>
��4 5
(
��5 6
)
��6 7
{
��8 9
new
��: =
KeyValuePair
��> J
<
��J K
string
��K Q
,
��Q R
string
��S Y
>
��Y Z
(
��[ \
$str
��\ n
,
��n o
$str
��p w
)
��w x
}
��y z
}
�� 
}
�� 
;
�� 
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 

�� !
(
��! "
)
��" #
;
��# $
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
array
�� 
.
�� 
Length
�� #
;
��# $
i
��% &
++
��& (
)
��( )
{
�� 
if
�� 
(
�� 
i
�� 	
>
��
 
$num
�� 
)
��
result
�� 
.
�� 
Append
�� 
(
�� 
k_WindowsNewline
�� #
)
��# $
;
��$ %
var
�� 

properties
�� 
=
�� 
array
�� 
[
�� 
i
�� 
]
�� 
;
�� 
result
�� 

.
��
 
Append
�� 
(
�� 
$"
�� 
\tGlobalSection(
�� $
{
��$ %

properties
��% /
.
��/ 0
Name
��0 4
}
��4 5
) = 
��5 9
{
��9 :

properties
��: D
.
��D E
Type
��E I
}
��I J
"
��J K
)
��K L
;
��L M
result
�� 

.
��
 
Append
�� 
(
�� 
k_WindowsNewline
�� "
)
��" #
;
��# $
foreach
�� 
(
�� 
var
��
entry
�� 
in
�� 

properties
�� $
.
��$ %
Entries
��% ,
)
��, -
{
�� 
result
�� 
.
�� 
Append
�� 
(
�� 
$"
�� 
\t\t
�� 
{
�� 
entry
�� 
.
��  
Key
��  #
}
��# $
 = 
��$ '
{
��' (
entry
��( -
.
��- .
Value
��. 3
}
��3 4
"
��4 5
)
��5 6
;
��6 7
result
�� 
.
�� 
Append
�� 
(
�� 
k_WindowsNewline
�� #
)
��# $
;
��$ %
}
�� 
result
�� 

.
��
 
Append
�� 
(
�� 
$str
�� &
)
��& '
;
��' (
}
�� 
return
�� 	
result
��
 
.
�� 
ToString
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
string
��
 #
GetProjectEntriesText
�� &
(
��& '
IEnumerable
��' 2
<
��2 3"
SolutionProjectEntry
��3 G
>
��G H
entries
��I P
)
��P Q
{
�� 
var
�� 
projectEntries
�� 
=
�� 
entries
�� 
.
��  
Select
��  &
(
��& '
entry
��' ,
=>
��- /
string
��0 6
.
��6 7
Format
��7 =
(
��= >,
m_SolutionProjectEntryTemplate
�� "
,
��" #
entry
�� 	
.
��	 
 
ProjectFactoryGuid
��
 
,
�� 
entry
�� #
.
��# $
Name
��$ (
,
��( )
entry
��* /
.
��/ 0
FileName
��0 8
,
��8 9
entry
��: ?
.
��? @
ProjectGuid
��@ K
,
��K L
entry
��M R
.
��R S
Metadata
��S [
)
�� 
)
�� 
;
�� 
return
�� 	
string
��
 
.
�� 
Join
�� 
(
�� 
k_WindowsNewline
�� &
,
��& '
projectEntries
��( 6
.
��6 7
ToArray
��7 >
(
��> ?
)
��? @
)
��@ A
;
��A B
}
�� 
private
�� 	
IEnumerable
��
 
<
�� "
SolutionProjectEntry
�� *
>
��* +
ToProjectEntries
��, <
(
��< =
IEnumerable
��= H
<
��H I
Assembly
��I Q
>
��Q R

assemblies
��S ]
)
��] ^
{
�� 
foreach
�� 

(
�� 
var
�� 
assembly
�� 
in
�� 

assemblies
�� &
)
��& '
yield
�� 	
return
��
 
new
�� "
SolutionProjectEntry
�� )
(
��) *
)
��* +
{
��  
ProjectFactoryGuid
�� 
=
�� 
SolutionGuid
�� &
(
��& '
assembly
��' /
)
��/ 0
,
��0 1
Name
�� 	
=
��
 
assembly
�� 
.
�� 
name
�� 
,
�� 
FileName
�� 
=
�� 
Path
�� 
.
�� 
GetFileName
��  
(
��  !
ProjectFile
��! ,
(
��, -
assembly
��- 5
)
��5 6
)
��6 7
,
��7 8
ProjectGuid
�� 
=
�� 
ProjectGuid
�� 
(
�� 
assembly
�� '
)
��' (
,
��( )
Metadata
�� 
=
�� 
k_WindowsNewline
��  
}
�� 
;
�� 
}
�� 
private
�� 	
string
��
 ,
GetProjectActiveConfigurations
�� /
(
��/ 0
string
��0 6
projectGuid
��7 B
)
��B C
{
�� 
return
�� 	
string
��
 
.
�� 
Format
�� 
(
�� 4
&m_SolutionProjectConfigurationTemplate
�� *
,
��* +
projectGuid
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
string
��
 $
EscapedRelativePathFor
�� '
(
��' (
string
��( .
file
��/ 3
)
��3 4
{
�� 
var
�� 

projectDir
�� 
=
�� 
FileUtility
�� 
.
��  
	Normalize
��  )
(
��) *
ProjectDirectory
��* :
)
��: ;
;
��; <
file
�� 
=
�� 	
FileUtility
��
 
.
�� 
	Normalize
�� 
(
��  
file
��  $
)
��$ %
;
��% &
var
�� 
path
�� 
=
�� 
SkipPathPrefix
�� 
(
�� 
file
�� !
,
��! "

projectDir
��# -
)
��- .
;
��. /
var
�� 
packageInfo
�� 
=
�� $
m_AssemblyNameProvider
�� +
.
��+ ,
FindForAssetPath
��, <
(
��< =
path
��= A
.
��A B
Replace
��B I
(
��I J
$char
��J N
,
��N O
$char
��P S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
packageInfo
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 
absolutePath
�� 
=
�� 
Path
�� 
.
�� 
GetFullPath
�� '
(
��' (
FileUtility
��( 3
.
��3 4
	Normalize
��4 =
(
��= >
path
��> B
)
��B C
)
��C D
;
��D E
path
�� 
=
��	 

SkipPathPrefix
�� 
(
�� 
absolutePath
�� &
,
��& '

projectDir
��( 2
)
��2 3
;
��3 4
}
�� 
return
�� 	
XmlFilename
��
 
(
�� 
path
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 
SkipPathPrefix
�� &
(
��& '
string
��' -
path
��. 2
,
��2 3
string
��4 :
prefix
��; A
)
��A B
{
�� 
if
�� 
(
�� 
path
�� 
.
�� 

StartsWith
�� 
(
�� 
$"
�� 
{
�� 
prefix
��  
}
��  !
{
��! "
Path
��" &
.
��& '$
DirectorySeparatorChar
��' =
}
��= >
"
��> ?
)
��? @
&&
��A C
(
��D E
path
��E I
.
��I J
Length
��J P
>
��Q R
prefix
��S Y
.
��Y Z
Length
��Z `
)
��` a
)
��a b
return
�� 

path
�� 
.
�� 
	Substring
�� 
(
�� 
prefix
��  
.
��  !
Length
��! '
+
��( )
$num
��* +
)
��+ ,
;
��, -
return
�� 	
path
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 

�� %
(
��% &
)
��& '
{
�� 
return
�� 	&
GetProjectFooterTemplate
��
 "
(
��" #
)
��# $
;
��$ %
}
�� 
static
�� 
string
��	 !
GetProjectExtension
�� #
(
��# $
)
��$ %
{
�� 
return
�� 	
$str
��
 
;
�� 
}
�� 
private
�� 	
string
��
 
ProjectGuid
�� 
(
�� 
Assembly
�� %
assembly
��& .
)
��. /
{
�� 
return
�� 	
m_GUIDGenerator
��
 
.
�� 
ProjectGuid
�� %
(
��% &

�� 
,
�� $
m_AssemblyNameProvider
�� 
.
�� 
GetAssemblyName
�� *
(
��* +
assembly
��+ 3
.
��3 4

outputPath
��4 >
,
��> ?
assembly
��@ H
.
��H I
name
��I M
)
��M N
)
��N O
;
��O P
}
�� 
private
�� 	
string
��
 
SolutionGuid
�� 
(
�� 
Assembly
�� &
assembly
��' /
)
��/ 0
{
�� 
return
�� 	
m_GUIDGenerator
��
 
.
�� 
SolutionGuid
�� &
(
��& '

��' 4
,
��4 5"
ScriptingLanguageFor
��6 J
(
��J K
assembly
��K S
)
��S T
)
��T U
;
��U V
}
�� 
private
�� 	
static
��
 
string
�� 
GetRootNamespace
�� (
(
��( )
Assembly
��) 1
assembly
��2 :
)
��: ;
{
�� 
return
�� 
assembly
�� 
.
�� 

�� )
;
��) *
}
�� 
}
�� 
public
�� 
static
�� 
class
�� #
SolutionGuidGenerator
�� *
{
�� 
public
�� 
static
��	 
string
�� 
GuidForProject
�� %
(
��% &
string
��& ,
projectName
��- 8
)
��8 9
{
�� 
return
�� 	 
ComputeGuidHashFor
��
 
(
�� 
projectName
�� (
+
��) *
$str
��+ 1
)
��1 2
;
��2 3
}
�� 
public
�� 
static
��	 
string
�� 
GuidForSolution
�� &
(
��& '
string
��' -
projectName
��. 9
,
��9 :
ScriptingLanguage
��; L
language
��M U
)
��U V
{
�� 
if
�� 
(
�� 
language
�� 
==
�� 
ScriptingLanguage
�� $
.
��$ %
CSharp
��% +
)
��+ ,
{
�� 
return
�� 

$str
�� 1
;
��1 2
}
�� 
return
�� 	 
ComputeGuidHashFor
��
 
(
�� 
projectName
�� (
)
��( )
;
��) *
}
�� 
private
�� 	
static
��
 
string
��  
ComputeGuidHashFor
�� *
(
��* +
string
��+ 1
input
��2 7
)
��7 8
{
�� 
var
�� 
hash
�� 
=
�� 
MD5
�� 
.
�� 
Create
�� 
(
�� 
)
�� 
.
�� 
ComputeHash
�� &
(
��& '
Encoding
��' /
.
��/ 0
Default
��0 7
.
��7 8
GetBytes
��8 @
(
��@ A
input
��A F
)
��F G
)
��G H
;
��H I
return
�� 	

HashAsGuid
��
 
(
�� 
HashToString
�� !
(
��! "
hash
��" &
)
��& '
)
��' (
;
��( )
}
�� 
private
�� 	
static
��
 
string
�� 

HashAsGuid
�� "
(
��" #
string
��# )
hash
��* .
)
��. /
{
�� 
var
�� 
guid
�� 
=
�� 
hash
�� 
.
�� 
	Substring
�� 
(
�� 
$num
�� 
,
�� 
$num
��  !
)
��! "
+
��# $
$str
��% (
+
��) *
hash
��+ /
.
��/ 0
	Substring
��0 9
(
��9 :
$num
��: ;
,
��; <
$num
��= >
)
��> ?
+
��@ A
$str
��B E
+
��F G
hash
��H L
.
��L M
	Substring
��M V
(
��V W
$num
��W Y
,
��Y Z
$num
��[ \
)
��\ ]
+
��^ _
$str
��` c
+
��d e
hash
��f j
.
��j k
	Substring
��k t
(
��t u
$num
��u w
,
��w x
$num
��y z
)
��z {
+
��| }
$str��~ �
+��� �
hash��� �
.��� �
	Substring��� �
(��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
return
�� 	
guid
��
 
.
�� 
ToUpper
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 
HashToString
�� $
(
��$ %
byte
��% )
[
��) *
]
��* +
bs
��, .
)
��. /
{
�� 
var
�� 
sb
�� 	
=
��
 
new
�� 

�� 
(
�� 
)
�� 
;
��  
foreach
�� 

(
�� 
byte
�� 
b
�� 
in
�� 
bs
�� 
)
�� 
sb
�� 
.
�� 
Append
�� 
(
��
b
�� 
.
�� 
ToString
�� 
(
�� 
$str
�� 
)
�� 
)
�� 
;
��  
return
�� 	
sb
��
 
.
�� 
ToString
��
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\SolutionProjectEntry.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
internal		 	
class		
  
SolutionProjectEntry		 $
{

 
public 
string	 
ProjectFactoryGuid "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
public
string
FileName
{
get
;
set
;
}
public 
string	 
ProjectGuid 
{ 
get !
;! "
set# &
;& '
}( )
public 
string	 
Metadata 
{ 
get 
; 
set  #
;# $
}% &
public 
bool	 
IsSolutionFolderProjectFactory ,
(, -
)- .
{ 
return 	
ProjectFactoryGuid
 
!= 
null  $
&&% '
ProjectFactoryGuid( :
.: ;
Equals; A
(A B
$strB h
,h i
StringComparisonj z
.z {
OrdinalIgnoreCase	{ �
)
� �
;
� �
} 
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\MessageEventArgs.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{ 
internal 	
class
 
MessageEventArgs  
{ 
public		 
Message			 
Message		 
{

 
get 
; 
} 
public 
MessageEventArgs	 
( 
Message !
message" )
)) *
{ 
Message 

= 
message
; 
} 
} 
} ߊ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\VisualStudioEditor.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
[ 
InitializeOnLoad 
] 
public 
class 
VisualStudioEditor  
:! "
IExternalCodeEditor# 6
{ 
private 	
static
 
readonly %
IVisualStudioInstallation 3
[3 4
]4 5
_installations6 D
;D E
internal 

static 
bool 
IsOSX 
=> 
Application  +
.+ ,
platform, 4
==5 7
RuntimePlatform8 G
.G H
	OSXEditorH Q
;Q R
internal 

static 
bool 
	IsWindows  
=>! #
!$ %
IsOSX% *
&&+ -
Path. 2
.2 3"
DirectorySeparatorChar3 I
==J L
FileUtilityM X
.X Y
WinSeparatorY e
&&f h
Environmenti t
.t u
NewLineu |
==} 
$str
� �
;
� �

CodeEditor 
. 
Installation
[ 
] 
IExternalCodeEditor /
./ 0

=>> @
_installationsA O
. 
Select 

(
 
i 
=>
i 
. $
ToCodeEditorInstallation *
(* +
)+ ,
), -
. 
ToArray 
( 
) 
;
private 	
readonly
 

IGenerator 

_generator (
=) *
new+ .
ProjectGeneration/ @
(@ A
)A B
;B C
static 
VisualStudioEditor	 
( 
) 
{   
try!! 
{"" 
_installations## 
=## 
	Discovery## 
.$$ (
GetVisualStudioInstallations$$ "
($$" #
)$$# $
.%% 
ToArray%% 
(%%
)%% 
;%% 
}&& 
catch'' 
(''	 

	Exception''
 
ex'' 
)'' 
{(( 
UnityEngine)) 
.)) 
Debug)) 
.)) 
LogError)) 
()) 
$")) !9
-Error detecting Visual Studio installations: ))! N
{))N O
ex))O Q
}))Q R
"))R S
)))S T
;))T U
_installations** 
=** 
Array** 
.** 
Empty**  
<**  !$
VisualStudioInstallation**! 9
>**9 :
(**: ;
)**; <
;**< =
}++ 

CodeEditor-- 
.--
Register-- 
(-- 
new-- 
VisualStudioEditor-- -
(--- .
)--. /
)--/ 0
;--0 1
}.. 
internal00 

static00 
bool00 
	IsEnabled00  
{11 
get22 
{33 
return44 


CodeEditor44 
.44 

is44$ &
VisualStudioEditor44' 9
;449 :
}55 
}66 
public88 
void88	 
CreateIfDoesntExist88 !
(88! "
)88" #
{99 
if:: 
(:: 
!:: 

_generator:: 
.:: $
HasSolutionBeenGenerated:: +
(::+ ,
)::, -
)::- .

_generator;; 
.;; 
Sync;; 
(;; 
);; 
;;; 
}<< 
public>> 
void>>	 

Initialize>> 
(>> 
string>> "
editorInstallationPath>>  6
)>>6 7
{?? 
}@@ 
internalBB 

virtualBB 
boolBB 1
%TryGetVisualStudioInstallationForPathBB =
(BB= >
stringBB> D

editorPathBBE O
,BBO P
outBBQ T%
IVisualStudioInstallationBBU n
installationBBo {
)BB{ |
{CC 
foreachEE 

(EE 
varEE 
	candidateEE 
inEE 
_installationsEE +
)EE+ ,
{FF 
ifGG 
(GG 
!GG 	
stringGG	 
.GG 
EqualsGG 
(GG 
PathGG 
.GG 
GetFullPathGG '
(GG' (

editorPathGG( 2
)GG2 3
,GG3 4
PathGG5 9
.GG9 :
GetFullPathGG: E
(GGE F
	candidateGGF O
.GGO P
PathGGP T
)GGT U
,GGU V
StringComparisonGGW g
.GGg h
OrdinalIgnoreCaseGGh y
)GGy z
)GGz {
continueHH 
;HH
installationJJ 
=JJ 
	candidateJJ 
;JJ 
returnKK 

trueKK 
;KK 
}LL 
returnNN 	
	DiscoveryNN
 
.NN #
TryDiscoverInstallationNN +
(NN+ ,

editorPathNN, 6
,NN6 7
outNN8 ;
installationNN< H
)NNH I
;NNI J
}OO 
publicQQ 
virtualQQ	 
boolQQ %
TryGetInstallationForPathQQ /
(QQ/ 0
stringQQ0 6

editorPathQQ7 A
,QQA B
outQQC F

CodeEditorQQG Q
.QQQ R
InstallationQQR ^
installationQQ_ k
)QQk l
{RR 
varSS 
resultSS 
=SS 1
%TryGetVisualStudioInstallationForPathSS 5
(SS5 6

editorPathSS6 @
,SS@ A
outSSB E
varSSF I
vsiSSJ M
)SSM N
;SSN O
installationTT 
=TT 
vsiTT 
==TT 
nullTT 
?TT 
defaultTT  '
:TT( )
vsiTT* -
.TT- .$
ToCodeEditorInstallationTT. F
(TTF G
)TTG H
;TTH I
returnUU 	
resultUU
 
;UU 
}VV 
publicXX 
voidXX	 
OnGUIXX 
(XX 
)XX 
{YY 
	GUILayoutZZ 
.ZZ 
BeginHorizontalZZ
(ZZ 
)ZZ 
;ZZ 
	GUILayout[[ 
.[[ 

([[ 
)[[ 
;[[ 
var]] 
package]] 
=]] 
UnityEditor]] 
.]] 
PackageManager]] +
.]]+ ,
PackageInfo]], 7
.]]7 8
FindForAssembly]]8 G
(]]G H
GetType]]H O
(]]O P
)]]P Q
.]]Q R
Assembly]]R Z
)]]Z [
;]][ \
var__ 
style__ 
=__
new__ 
GUIStyle__ 
{`` 
richTextaa 
=aa
trueaa 
,aa 
marginbb 

=bb 
newbb

RectOffsetbb 
(bb 
$numbb 
,bb 
$numbb  
,bb  !
$numbb" #
,bb# $
$numbb% &
)bb& '
}cc 
;cc 
	GUILayoutee 
.ee 
Labelee
(ee 
$"ee !
<size=10><color=grey>ee *
{ee* +
packageee+ 2
.ee2 3
displayNameee3 >
}ee> ?
 vee? A
{eeA B
packageeeB I
.eeI J
versioneeJ Q
}eeQ R#
 enabled</color></size>eeR i
"eei j
,eej k
styleeel q
)eeq r
;eer s
	GUILayoutff 
.ff 

(ff 
)ff 
;ff 
EditorGUILayouthh 
.hh 

LabelFieldhh 
(hh 
$strhh ;
)hh; <
;hh< =
	EditorGUIii 
.ii 
indentLevelii
++ii 
;ii 
SettingsButtonjj 
(jj !
ProjectGenerationFlagjj '
.jj' (
Embeddedjj( 0
,jj0 1
$strjj2 E
,jjE F
$strjjG I
)jjI J
;jjJ K
SettingsButtonkk 
(kk !
ProjectGenerationFlagkk '
.kk' (
Localkk( -
,kk- .
$strkk/ ?
,kk? @
$strkkA C
)kkC D
;kkD E
SettingsButtonll 
(ll !
ProjectGenerationFlagll '
.ll' (
Registryll( 0
,ll0 1
$strll2 E
,llE F
$strllG I
)llI J
;llJ K
SettingsButtonmm 
(mm !
ProjectGenerationFlagmm '
.mm' (
Gitmm( +
,mm+ ,
$strmm- ;
,mm; <
$strmm= ?
)mm? @
;mm@ A
SettingsButtonnn 
(nn !
ProjectGenerationFlagnn '
.nn' (
BuiltInnn( /
,nn/ 0
$strnn1 D
,nnD E
$strnnF H
)nnH I
;nnI J
SettingsButtonoo 
(oo !
ProjectGenerationFlagoo '
.oo' (
LocalTarBalloo( 4
,oo4 5
$stroo6 E
,ooE F
$strooG I
)ooI J
;ooJ K
SettingsButtonpp 
(pp !
ProjectGenerationFlagpp '
.pp' (
Unknownpp( /
,pp/ 0
$strpp1 P
,ppP Q
$strppR T
)ppT U
;ppU V
SettingsButtonqq 
(qq !
ProjectGenerationFlagqq '
.qq' (
PlayerAssembliesqq( 8
,qq8 9
$strqq: K
,qqK L
$str	qqM �
)
qq� �
;
qq� �"
RegenerateProjectFilesrr 
(rr 
)rr 
;rr 
	EditorGUIss 
.ss 
indentLevelss
--ss 
;ss 
}tt 
voidvv "
RegenerateProjectFilesvv 
(vv 
)vv 
{ww 
varxx 
rectxx 
=xx 
	EditorGUIxx 
.xx 
IndentedRectxx $
(xx$ %
EditorGUILayoutxx% 4
.xx4 5
GetControlRectxx5 C
(xxC D
newxxD G
GUILayoutOptionxxH W
[xxW X
]xxX Y
{xxZ [
}xx\ ]
)xx] ^
)xx^ _
;xx_ `
rectyy 
.yy 
widthyy 
=yy 
$numyy 
;yy 
ifzz 
(zz 
GUIzz 

.zz
 
Buttonzz 
(zz 
rectzz 
,zz 
$strzz 2
)zz2 3
)zz3 4
{{{ 

_generator|| 
.|| 
Sync|| 
(|| 
)|| 
;|| 
}}} 
}~~ 
void
�� 
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� +

preference
��, 6
,
��6 7
string
��8 >

guiMessage
��? I
,
��I J
string
��K Q
toolTip
��R Y
)
��Y Z
{
�� 
var
�� 
	prevValue
�� 
=
�� 

_generator
�� 
.
�� "
AssemblyNameProvider
�� 2
.
��2 3#
ProjectGenerationFlag
��3 H
.
��H I
HasFlag
��I P
(
��P Q

preference
��Q [
)
��[ \
;
��\ ]
var
�� 
newValue
�� 
=
�� 
EditorGUILayout
�� !
.
��! "
Toggle
��" (
(
��( )
new
��) ,

GUIContent
��- 7
(
��7 8

guiMessage
��8 B
,
��B C
toolTip
��D K
)
��K L
,
��L M
	prevValue
��N W
)
��W X
;
��X Y
if
�� 
(
�� 
newValue
�� 
!=
�� 
	prevValue
�� 
)
�� 
{
�� 

_generator
�� 
.
�� "
AssemblyNameProvider
�� #
.
��# $%
ToggleProjectGeneration
��$ ;
(
��; <

preference
��< F
)
��F G
;
��G H
}
�� 
}
�� 
public
�� 
void
��	 
SyncIfNeeded
�� 
(
�� 
string
�� !
[
��! "
]
��" #

addedFiles
��$ .
,
��. /
string
��0 6
[
��6 7
]
��7 8
deletedFiles
��9 E
,
��E F
string
��G M
[
��M N
]
��N O

movedFiles
��P Z
,
��Z [
string
��\ b
[
��b c
]
��c d
movedFromFiles
��e s
,
��s t
string
��u {
[
��{ |
]
��| }

)��� �
{
�� 

_generator
�� 
.
��
SyncIfNeeded
�� 
(
�� 

addedFiles
�� %
.
��% &
Union
��& +
(
��+ ,
deletedFiles
��, 8
)
��8 9
.
��9 :
Union
��: ?
(
��? @

movedFiles
��@ J
)
��J K
.
��K L
Union
��L Q
(
��Q R
movedFromFiles
��R `
)
��` a
,
��a b

��c p
)
��p q
;
��q r
foreach
�� 

(
�� 
var
�� 
file
�� 
in
�� 

�� %
.
��% &
Where
��& +
(
��+ ,
a
��, -
=>
��. 0
Path
��1 5
.
��5 6
GetExtension
��6 B
(
��B C
a
��C D
)
��D E
==
��F H
$str
��I O
)
��O P
)
��P Q
{
�� 
var
�� 
pdbFile
�� 
=
�� 
FileUtility
�� 
.
�� 
GetAssetFullPath
�� .
(
��. /
file
��/ 3
)
��3 4
;
��4 5
if
�� 
(
�� 
pdbFile
�� 
.
�� 
IndexOf
�� 
(
�� 
$"
�� 
{
�� 
Path
�� 
.
��  $
DirectorySeparatorChar
��  6
}
��6 7

com.unity.
��7 A
"
��A B
,
��B C
StringComparison
��D T
.
��T U
OrdinalIgnoreCase
��U f
)
��f g
>
��h i
$num
��j k
)
��k l
continue
�� 
;
��
var
�� 
asmFile
�� 
=
�� 
Path
�� 
.
�� 
ChangeExtension
�� &
(
��& '
pdbFile
��' .
,
��. /
$str
��0 6
)
��6 7
;
��7 8
if
�� 
(
�� 
!
�� 	
File
��	 
.
��
Exists
�� 
(
�� 
asmFile
�� 
)
�� 
||
��  
!
��! "
Image
��" '
.
��' (

IsAssembly
��( 2
(
��2 3
asmFile
��3 :
)
��: ;
)
��; <
continue
�� 
;
��
if
�� 
(
�� 
Symbols
�� 
.
�� "
IsPortableSymbolFile
�� $
(
��$ %
pdbFile
��% ,
)
��, -
)
��- .
continue
�� 
;
��
UnityEngine
�� 
.
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$"
��! #F
8Unity is only able to load mdb or portable-pdb symbols. 
��# [
{
��[ \
file
��\ `
}
��` a,
 is using a legacy pdb format.
��a 
"�� �
)��� �
;��� �
}
�� 
}
�� 
public
�� 
void
��	 
SyncAll
�� 
(
�� 
)
�� 
{
�� 

�� 
.
�� 
Refresh
�� 
(
�� 
)
�� 
;
�� 

_generator
�� 
.
��
Sync
�� 
(
�� 
)
�� 
;
�� 
}
�� 
bool
�� 
IsSupportedPath
�� 
(
�� 
string
�� 
path
�� "
)
��" #
{
�� 
if
�� 
(
�� 
string
�� 
.
��

�� 
(
�� 
path
��  
)
��  !
)
��! "
return
�� 

true
�� 
;
�� 
if
�� 
(
�� 

_generator
�� 
.
�� 
IsSupportedFile
�� !
(
��! "
path
��" &
)
��& '
)
��' (
return
�� 

true
�� 
;
�� 
return
�� 	
false
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
void
�� ,
CheckCurrentEditorInstallation
�� 4
(
��4 5
)
��5 6
{
�� 
var
�� 

editorPath
�� 
=
�� 

CodeEditor
�� 
.
�� '
CurrentEditorInstallation
�� 8
;
��8 9
try
�� 
{
�� 
if
�� 
(
�� 
	Discovery
�� 
.
�� %
TryDiscoverInstallation
�� )
(
��) *

editorPath
��* 4
,
��4 5
out
��6 9
_
��: ;
)
��; <
)
��< =
return
�� 
;
�� 
}
�� 
catch
�� 
(
��	 

IOException
��
 
)
�� 
{
�� 
}
�� 
UnityEngine
�� 
.
�� 
Debug
�� 
.
�� 

LogWarning
�� 
(
��  
$"
��  "'
Visual Studio executable 
��" ;
{
��; <

editorPath
��< F
}
��F Ga
R is not found. Please change your settings in Edit > Preferences > External Tools.��G �
"��� �
)��� �
;��� �
}
�� 
public
�� 
bool
��	 
OpenProject
�� 
(
�� 
string
��  
path
��! %
,
��% &
int
��' *
line
��+ /
,
��/ 0
int
��1 4
column
��5 ;
)
��; <
{
�� ,
CheckCurrentEditorInstallation
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
!
�� 
IsSupportedPath
�� 
(
�� 
path
�� 
)
�� 
)
�� 
return
�� 

false
�� 
;
�� 
if
�� 
(
�� 
!
�� #
IsProjectGeneratedFor
�� 
(
�� 
path
�� "
,
��" #
out
��$ '
var
��( +
missingFlag
��, 7
)
��7 8
)
��8 9
UnityEngine
�� 
.
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$"
��! #%
You are trying to open 
��# :
{
��: ;
path
��; ?
}
��? @�
� outside a generated project. This might cause problems with IntelliSense and debugging. To avoid this, you can change your .csproj preferences in Edit > Preferences > External Tools and enable ��@ �
{��� �3
#GetProjectGenerationFlagDescription��� �
(��� �
missingFlag��� �
)��� �
}��� �
 generation.��� �
"��� �
)��� �
;��� �
if
�� 
(
�� 
IsOSX
�� 
)
�� 
return
�� 


OpenOSXApp
�� 
(
�� 
path
�� 
,
�� 
line
��  
,
��  !
column
��" (
)
��( )
;
��) *
if
�� 
(
�� 
	IsWindows
�� 
)
�� 
return
�� 

OpenWindowsApp
�� 
(
�� 
path
�� 
,
�� 
line
��  $
)
��$ %
;
��% &
return
�� 	
false
��
 
;
�� 
}
�� 
private
�� 	
static
��
 
string
�� 1
#GetProjectGenerationFlagDescription
�� ;
(
��; <#
ProjectGenerationFlag
��< Q
flag
��R V
)
��V W
{
�� 
switch
�� 	
(
��
 
flag
�� 
)
�� 
{
�� 
case
�� #
ProjectGenerationFlag
��	 
.
�� 
BuiltIn
�� &
:
��& '
return
�� 
$str
�� 
;
��  
case
�� #
ProjectGenerationFlag
��	 
.
�� 
Embedded
�� '
:
��' (
return
�� 
$str
�� 
;
��  
case
�� #
ProjectGenerationFlag
��	 
.
�� 
Git
�� "
:
��" #
return
�� 
$str
�� 
;
�� 
case
�� #
ProjectGenerationFlag
��	 
.
�� 
Local
�� $
:
��$ %
return
�� 
$str
�� 
;
�� 
case
�� #
ProjectGenerationFlag
��	 
.
�� 
LocalTarBall
�� +
:
��+ ,
return
�� 
$str
�� 
;
�� 
case
�� #
ProjectGenerationFlag
��	 
.
�� 
PlayerAssemblies
�� /
:
��/ 0
return
�� 
$str
�� 
;
�� 
case
�� #
ProjectGenerationFlag
��	 
.
�� 
Registry
�� '
:
��' (
return
�� 
$str
�� 
;
��  
case
�� #
ProjectGenerationFlag
��	 
.
�� 
Unknown
�� &
:
��& '
return
�� 
$str
�� +
;
��+ ,
case
�� #
ProjectGenerationFlag
��	 
.
�� 
None
�� #
:
��# $
default
�� 
:
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
}
�� 
}
�� 
private
�� 	
bool
��
 #
IsProjectGeneratedFor
�� $
(
��$ %
string
��% +
path
��, 0
,
��0 1
out
��2 5#
ProjectGenerationFlag
��6 K
missingFlag
��L W
)
��W X
{
�� 
missingFlag
�� 
=
�� #
ProjectGenerationFlag
�� &
.
��& '
None
��' +
;
��+ ,
if
�� 
(
�� 
string
�� 
.
��

�� 
(
�� 
path
��  
)
��  !
)
��! "
return
�� 

true
�� 
;
�� 
if
�� 
(
�� 
ProjectGeneration
�� 
.
�� "
ScriptingLanguageFor
�� -
(
��- .
path
��. 2
)
��2 3
!=
��4 6
ScriptingLanguage
��7 H
.
��H I
CSharp
��I O
)
��O P
return
�� 

true
�� 
;
�� 
var
�� 
basePath
�� 
=
�� 

_generator
�� 
.
�� 
ProjectDirectory
�� -
;
��- .
var
�� 
relativePath
�� 
=
�� 
FileUtility
�� !
.
�� $
NormalizeWindowsToUnix
�� 
(
�� 
path
��  
)
��  !
.
�� 
Replace
�� 
(
�� 
basePath
��
,
�� 
string
�� 
.
�� 
Empty
�� #
)
��# $
.
�� 
Trim
�� 	
(
��	 

FileUtility
��
 
.
�� 

�� #
)
��# $
;
��$ %
var
�� 
packageInfo
�� 
=
�� 
UnityEditor
��  
.
��  !
PackageManager
��! /
.
��/ 0
PackageInfo
��0 ;
.
��; <
FindForAssetPath
��< L
(
��L M
relativePath
��M Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
packageInfo
�� 
==
�� 
null
�� 
)
�� 
return
�� 

true
�� 
;
�� 
var
�� 
source
�� 
=
�� 
packageInfo
�� 
.
�� 
source
�� "
;
��" #
if
�� 
(
�� 
!
�� 
Enum
�� 
.
�� 
TryParse
��
<
�� #
ProjectGenerationFlag
�� +
>
��+ ,
(
��, -
source
��- 3
.
��3 4
ToString
��4 <
(
��< =
)
��= >
,
��> ?
out
��@ C
var
��D G
flag
��H L
)
��L M
)
��M N
return
�� 

true
�� 
;
�� 
if
�� 
(
�� 

_generator
�� 
.
�� "
AssemblyNameProvider
�� &
.
��& '#
ProjectGenerationFlag
��' <
.
��< =
HasFlag
��= D
(
��D E
flag
��E I
)
��I J
)
��J K
return
�� 

true
�� 
;
�� 
missingFlag
�� 
=
�� 
flag
�� 
;
�� 
return
�� 	
false
��
 
;
�� 
}
�� 
private
�� 	
bool
��
 
OpenWindowsApp
�� 
(
�� 
string
�� $
path
��% )
,
��) *
int
��+ .
line
��/ 3
)
��3 4
{
�� 
var
�� 
progpath
�� 
=
�� 
FileUtility
�� 
.
�� &
FindPackageAssetFullPath
�� 
(
�� 
$str
�� 9
,
��9 :
$str
��; O
)
��O P
.
�� 
FirstOrDefault
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
string
�� 
.
��
IsNullOrWhiteSpace
��  
(
��  !
progpath
��! )
)
��) *
)
��* +
return
�� 

false
�� 
;
�� 
string
�� 	
absolutePath
��
 
=
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
path
��" &
)
��& '
)
��' (
{
�� 
absolutePath
�� 
=
�� 
Path
�� 
.
�� 
GetFullPath
�� #
(
��# $
path
��$ (
)
��( )
;
��) *
}
�� 
var
�� 
solution
�� 
=
�� '
GetOrGenerateSolutionFile
�� +
(
��+ ,
path
��, 0
)
��0 1
;
��1 2
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
solution
��" *
)
��* +
)
��+ ,
{
�� 
solution
�� 
=
��
$"
�� 
\"
�� 
{
�� 
solution
�� 
}
�� 
\"
�� 
"
��  
;
��  !
solution
�� 
=
��
solution
�� 
.
�� 
Replace
�� 
(
��  
$str
��  #
,
��# $
$str
��% )
)
��) *
;
��* +
}
�� 
var
�� 
process
�� 
=
�� 
new
�� 
Process
�� 
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
�� $
{
�� 
FileName
�� 
=
�� 
progpath
�� 
,
�� 
	Arguments
�� 
=
�� 
$"
�� 
\"
�� 
{
�� 

CodeEditor
��  
.
��  !'
CurrentEditorInstallation
��! :
}
��: ;
\" \"
��; @
{
��@ A
absolutePath
��A M
}
��M N
\" 
��N Q
{
��Q R
solution
��R Z
}
��Z [
{
��\ ]
line
��] a
}
��a b
"
��b c
,
��c d
CreateNoWindow
�� 
=
�� 
true
�� 
,
�� 
UseShellExecute
�� 
=
�� 
false
�� 
,
�� $
RedirectStandardOutput
�� 
=
�� 
true
�� "
,
��" ##
RedirectStandardError
�� 
=
�� 
true
�� !
,
��! "
}
�� 
}
�� 
;
�� 
var
�� 
result
�� 
=
�� 
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
��  
while
�� 
(
��	 

!
��
 
process
�� 
.
�� 
StandardOutput
�� !
.
��! "
EndOfStream
��" -
)
��- .
{
�� 
var
�� 

outputLine
�� 
=
�� 
process
�� 
.
�� 
StandardOutput
�� +
.
��+ ,
ReadLine
��, 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 

outputLine
�� 
==
�� 
$str
�� *
)
��* +
{
�� 

�� 
.
��  
DisplayProgressBar
�� %
(
��% &
$str
��& =
,
��= >
$str
��? v
,
��v w
$num
��x {
)
��{ |
;
��| }
}
�� 
if
�� 
(
�� 

outputLine
�� 
==
�� 
$str
�� (
)
��( )
{
�� 

�� 
.
�� 
ClearProgressBar
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 
var
�� 
errorOutput
�� 
=
�� 
process
�� 
.
�� 

�� *
.
��* +
	ReadToEnd
��+ 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 

�� 
(
�� 
errorOutput
�� (
)
��( )
)
��) *
{
�� 
Console
�� 
.
�� 
	WriteLine
�� 
(
�� 
$str
�� !
+
��" #
errorOutput
��$ /
)
��/ 0
;
��0 1
}
�� 
process
�� 

.
��
 
WaitForExit
�� 
(
�� 
)
�� 
;
�� 
return
�� 	
result
��
 
;
�� 
}
�� 
[
�� 
	DllImport
�� 
(
�� 
$str
��
)
��$ %
]
��% &
static
�� 
extern
��	 
bool
�� 
OpenVisualStudio
�� %
(
��% &
string
��& ,
appPath
��- 4
,
��4 5
string
��6 <
solutionPath
��= I
,
��I J
string
��K Q
filePath
��R Z
,
��Z [
int
��\ _
line
��` d
)
��d e
;
��e f
bool
�� 

OpenOSXApp
�� 
(
�� 
string
�� 
path
�� 
,
�� 
int
�� "
line
��# '
,
��' (
int
��) ,
column
��- 3
)
��3 4
{
�� 
string
�� 	
absolutePath
��
 
=
�� 
$str
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� !
(
��! "
path
��" &
)
��& '
)
��' (
{
�� 
absolutePath
�� 
=
�� 
Path
�� 
.
�� 
GetFullPath
�� #
(
��# $
path
��$ (
)
��( )
;
��) *
}
�� 
string
�� 	
solution
��
 
=
�� '
GetOrGenerateSolutionFile
�� .
(
��. /
path
��/ 3
)
��3 4
;
��4 5
return
�� 	
OpenVisualStudio
��
 
(
�� 

CodeEditor
�� %
.
��% &'
CurrentEditorInstallation
��& ?
,
��? @
solution
��A I
,
��I J
absolutePath
��K W
,
��W X
line
��Y ]
)
��] ^
;
��^ _
}
�� 
private
�� 	
string
��
 '
GetOrGenerateSolutionFile
�� *
(
��* +
string
��+ 1
path
��2 6
)
��6 7
{
�� 
var
�� 
solution
�� 
=
�� 
GetSolutionFile
�� !
(
��! "
path
��" &
)
��& '
;
��' (
if
�� 
(
�� 
solution
�� 
==
�� 
$str
�� 
)
�� 
{
�� 

_generator
�� 
.
�� 
Sync
�� 
(
�� 
)
�� 
;
�� 
solution
�� 
=
��
GetSolutionFile
�� 
(
�� 
path
�� #
)
��# $
;
��$ %
}
�� 
return
�� 	
solution
��
 
;
�� 
}
�� 
string
�� 
GetSolutionFile
��	 
(
�� 
string
�� 
path
��  $
)
��$ %
{
�� 
var
�� 
solutionFile
�� 
=
�� 

_generator
��  
.
��  !
SolutionFile
��! -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
solutionFile
�� 
)
��  
)
��  !
{
�� 
return
�� 

solutionFile
�� 
;
�� 
}
�� 
return
�� 	
$str
��
 
;
�� 
}
�� 
}
�� 
}�� �3
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\FileUtility.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{
internal 	
static
 
class 
FileUtility "
{ 
public 
const	 
char 
WinSeparator  
=! "
$char# '
;' (
public 
const	 
char 

=" #
$char$ '
;' (
public 
static	 
string 
[ 
] $
FindPackageAssetFullPath 1
(1 2
string2 8
assetfilter9 D
,D E
stringF L

filefilterM W
)W X
{ 
return 	

 
. 

FindAssets "
(" #
assetfilter# .
). /
. 
Select 
( 

. 
GUIDToAssetPath )
)) *
. 
Where 

(
 
	assetPath 
=> 
	assetPath !
.! "
Contains" *
(* +

filefilter+ 5
)5 6
)6 7
. 
Select 
( 
asset 
=> 
{ 
var 	
packageInfo
 
= 
UnityEditor #
.# $
PackageManager$ 2
.2 3
PackageInfo3 >
.> ?
FindForAssetPath? O
(O P
assetP U
)U V
;V W
return 
	Normalize
( 
packageInfo "
." #
resolvedPath# /
+0 1
asset2 7
.7 8
	Substring8 A
(A B
packageInfoB M
.M N
	assetPathN W
.W X
LengthX ^
)^ _
)_ `
;` a
} 
) 
. 
ToArray 
( 
)
; 
} 
public!! 
static!!	 
string!! 
GetAssetFullPath!! '
(!!' (
string!!( .
asset!!/ 4
)!!4 5
{"" 
var## 
basePath## 
=## 
Path## 
.## 
GetFullPath## "
(##" #
Path### '
.##' (
Combine##( /
(##/ 0
Application##0 ;
.##; <
dataPath##< D
,##D E
$str##F J
)##J K
)##K L
;##L M
return$$ 	
Path$$
 
.$$ 
GetFullPath$$ 
($$ 
Path$$ 
.$$  
Combine$$  '
($$' (
basePath$$( 0
,$$0 1
	Normalize$$2 ;
($$; <
asset$$< A
)$$A B
)$$B C
)$$C D
;$$D E
}%% 
public'' 
static''	 
string'' 
	Normalize''  
(''  !
string''! '
path''( ,
)'', -
{(( 
if)) 
()) 
string)) 
.))

()) 
path))  
)))  !
)))! "
return** 

path** 
;** 
if,, 
(,, 
Path,, 
.,, "
DirectorySeparatorChar,, "
==,,# %
WinSeparator,,& 2
),,2 3
path-- 
=--	 

path-- 
.-- 
Replace-- 
(-- 

,--% &
WinSeparator--' 3
)--3 4
;--4 5
if.. 
(.. 
Path.. 
... "
DirectorySeparatorChar.. "
==..# %

)..3 4
path// 
=//	 

path// 
.// 
Replace// 
(// 
WinSeparator// $
,//$ %

)//3 4
;//4 5
return11 	
path11
 
.11 
Replace11 
(11 
string11 
.11 
Concat11 $
(11$ %
WinSeparator11% 1
,111 2
WinSeparator113 ?
)11? @
,11@ A
WinSeparator11B N
.11N O
ToString11O W
(11W X
)11X Y
)11Y Z
;11Z [
}22 
public44 
static44	 
string44 "
NormalizeWindowsToUnix44 -
(44- .
string44. 4
path445 9
)449 :
{55 
if66 
(66 
string66 
.66

(66 
path66  
)66  !
)66! "
return77 

path77 
;77 
return99 	
path99
 
.99 
Replace99 
(99 
WinSeparator99 #
,99# $

)992 3
;993 4
}:: 
internal<< 

static<< 
bool<< $
IsFileInProjectDirectory<< /
(<</ 0
string<<0 6
fileName<<7 ?
)<<? @
{== 
var>> 
basePath>> 
=>> 
Path>> 
.>> 
GetFullPath>> "
(>>" #
Path>># '
.>>' (
Combine>>( /
(>>/ 0
Application>>0 ;
.>>; <
dataPath>>< D
,>>D E
$str>>F J
)>>J K
)>>K L
;>>L M
fileName?? 
=?? 
	Normalize?? 
(?? 
fileName??  
)??  !
;??! "
ifAA 
(AA 
!AA 
PathAA 
.AA 
IsPathRootedAA
(AA 
fileNameAA "
)AA" #
)AA# $
fileNameBB 
=BB
PathBB 
.BB 
CombineBB 
(BB 
basePathBB $
,BB$ %
fileNameBB& .
)BB. /
;BB/ 0
returnDD 	
stringDD
 
.DD 
EqualsDD 
(DD 
PathDD 
.DD 
GetDirectoryNameDD -
(DD- .
fileNameDD. 6
)DD6 7
,DD7 8
basePathDD9 A
,DDA B
StringComparisonDDC S
.DDS T
OrdinalIgnoreCaseDDT e
)DDe f
;DDf g
}EE 
}FF 
}GG ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\ProjectGeneration\AssemblyNameProvider.cs
	namespace
	Microsoft
 
.
Unity
.
VisualStudio
.
Editor
{ 
public 
	interface !
IAssemblyNameProvider '
{ 
string 
[ 	
]	 
&
ProjectSupportedExtensions %
{& '
get( +
;+ ,
}- .
string *
ProjectGenerationRootNamespace	 '
{( )
get* -
;- .
}/ 0!
ProjectGenerationFlag !
ProjectGenerationFlag -
{. /
get0 3
;3 4
}5 6
string )
GetAssemblyNameFromScriptPath	 &
(& '
string' -
path. 2
)2 3
;3 4
string 
GetAssemblyName	 
( 
string 
assemblyOutputPath  2
,2 3
string4 :
assemblyName; G
)G H
;H I
bool %
IsInternalizedPackagePath  
(  !
string! '
path( ,
), -
;- .
IEnumerable 
<
Assembly 
> 

(% &
Func& *
<* +
string+ 1
,1 2
bool3 7
>7 8&
shouldFileBePartOfSolution9 S
)S T
;T U
IEnumerable 
<
string 
> 
GetAllAssetPaths &
(& '
)' (
;( )
UnityEditor 
.
PackageManager 
. 
PackageInfo (
FindForAssetPath) 9
(9 :
string: @
	assetPathA J
)J K
;K L
ResponseFileData 
ParseResponseFile $
($ %
string% +
responseFilePath, <
,< =
string> D
projectDirectoryE U
,U V
stringW ]
[] ^
]^ _&
systemReferenceDirectories` z
)z {
;{ |
void #
ToggleProjectGeneration 
( !
ProjectGenerationFlag 4

preference5 ?
)? @
;@ A
} 
public 
class 
AssemblyNameProvider "
:# $!
IAssemblyNameProvider% :
{   !
ProjectGenerationFlag!! #
m_ProjectGenerationFlag!! /
=!!0 1
(!!2 3!
ProjectGenerationFlag!!3 H
)!!H I
EditorPrefs!!I T
.!!T U
GetInt!!U [
(!![ \
$str"" "
,""" #
(## 
int## 
)## 
(## 	!
ProjectGenerationFlag##	 
.## 
Local## $
|##% &!
ProjectGenerationFlag##' <
.##< =
Embedded##= E
)##E F
)##F G
;##G H
public%% 
string%%	 
[%% 
]%% &
ProjectSupportedExtensions%% ,
=>%%- /
EditorSettings%%0 >
.%%> ?+
projectGenerationUserExtensions%%? ^
;%%^ _
public'' 
string''	 *
ProjectGenerationRootNamespace'' .
=>''/ 1
EditorSettings''2 @
.''@ A*
projectGenerationRootNamespace''A _
;''_ `
public)) !
ProjectGenerationFlag))	 !
ProjectGenerationFlag)) 4
{** 
get++ 
=>++ 	#
m_ProjectGenerationFlag++
 !
;++! "
private,, 

set,, 
{-- 
EditorPrefs.. 
... 
SetInt.. 
(.. 
$str.. 6
,..6 7
(..8 9
int..9 <
)..< =
value..= B
)..B C
;..C D#
m_ProjectGenerationFlag// 
=// 
value// #
;//# $
}00 
}11 
public33 
string33	 )
GetAssemblyNameFromScriptPath33 -
(33- .
string33. 4
path335 9
)339 :
{44 
return55 	
CompilationPipeline55
 
.55 )
GetAssemblyNameFromScriptPath55 ;
(55; <
path55< @
)55@ A
;55A B
}66 
public88 
IEnumerable88	 
<88 
Assembly88 
>88 

(88, -
Func88- 1
<881 2
string882 8
,888 9
bool88: >
>88> ?&
shouldFileBePartOfSolution88@ Z
)88Z [
{99 
foreach:: 

(:: 
var:: 
assembly:: 
in:: 
CompilationPipeline:: /
.::/ 0

(::= >
)::> ?
)::? @
{;; 
if<< 
(<< 
assembly<< 
.<< 
sourceFiles<< 
.<< 
Any<<  
(<<  !&
shouldFileBePartOfSolution<<! ;
)<<; <
)<<< =
{== 
var>> 
options>>	 
=>> 
new>> !
ScriptCompilerOptions>> ,
{?? 

=@@ 
assembly@@ 
.@@ 
compilerOptions@@ .
.@@. /

,@@< =
AllowUnsafeCodeAA 
=AA 
assemblyAA  
.AA  !
compilerOptionsAA! 0
.AA0 1
AllowUnsafeCodeAA1 @
,AA@ A!
ApiCompatibilityLevelBB 
=BB 
assemblyBB &
.BB& '
compilerOptionsBB' 6
.BB6 7!
ApiCompatibilityLevelBB7 L
}CC 
;CC 
yieldEE 

returnEE 
newEE 
AssemblyEE 
(EE 
assemblyEE '
.EE' (
nameEE( ,
,EE, -
$strEE. @
,EE@ A
assemblyFF 
.FF 
sourceFilesFF 
,FF 
newFF 
[FF  
]FF  !
{FF" #
$strFF$ +
,FF+ ,
$strFF- 4
}FF5 6
.FF6 7
ConcatFF7 =
(FF= >
assemblyFF> F
.FFF G
definesFFG N
)FFN O
.FFO P
ConcatFFP V
(FFV W#
EditorUserBuildSettingsFFW n
.FFn o+
activeScriptCompilationDefines	FFo �
)
FF� �
.
FF� �
ToArray
FF� �
(
FF� �
)
FF� �
,
FF� �
assemblyGG 
.GG 
assemblyReferencesGG !
,GG! "
assemblyHH 
.HH &
compiledAssemblyReferencesHH )
,HH) *
assemblyII 
.II 
flagsII 
,II 
optionsKK 
,KK  
assemblyLL  
.LL  !

)LL. /
;LL/ 0
}PP 
}QQ 
ifSS 
(SS !
ProjectGenerationFlagSS 
.SS 
HasFlagSS $
(SS$ %!
ProjectGenerationFlagSS% :
.SS: ;
PlayerAssembliesSS; K
)SSK L
)SSL M
{TT 
foreachUU 
(UU 
varUU
assemblyUU 
inUU 
CompilationPipelineUU 0
.UU0 1

(UU> ?
AssembliesTypeUU? M
.UUM N
PlayerUUN T
)UUT U
.UUU V
WhereUUV [
(UU[ \
assemblyUU\ d
=>UUe g
assemblyUUh p
.UUp q
sourceFilesUUq |
.UU| }
Any	UU} �
(
UU� �(
shouldFileBePartOfSolution
UU� �
)
UU� �
)
UU� �
)
UU� �
{VV 
varWW 
optionsWW	 
=WW 
newWW !
ScriptCompilerOptionsWW ,
{XX 

=YY 
assemblyYY 
.YY 
compilerOptionsYY .
.YY. /

,YY< =
AllowUnsafeCodeZZ 
=ZZ 
assemblyZZ  
.ZZ  !
compilerOptionsZZ! 0
.ZZ0 1
AllowUnsafeCodeZZ1 @
,ZZ@ A!
ApiCompatibilityLevel[[ 
=[[ 
assembly[[ &
.[[& '
compilerOptions[[' 6
.[[6 7!
ApiCompatibilityLevel[[7 L
}\\ 
;\\ 
yield^^ 

return^^ 
new__ 	
Assembly__
 
(__ 
assembly__ 
.__ 
name__  
,__  !
$str__" ;
,__; <
assembly`` 
.`` 
sourceFiles`` 
,`` 
newaa 

[aa
 
]aa 
{aa
$straa 
,aa 
$straa 
}aa  !
.aa! "
Concataa" (
(aa( )
assemblyaa) 1
.aa1 2
definesaa2 9
)aa9 :
.aa: ;
ToArrayaa; B
(aaB C
)aaC D
,aaD E
assemblybb 
.bb 
assemblyReferencesbb "
,bb" #
assemblycc 
.cc &
compiledAssemblyReferencescc *
,cc* +
assemblydd 
.dd 
flagsdd 
,dd 
optionsff #
,ff# $
assemblygg $
.gg$ %

)gg2 3
;gg3 4
}kk 
}ll 
}mm 
publicoo 
stringoo	  
GetCompileOutputPathoo $
(oo$ %
stringoo% +
assemblyNameoo, 8
)oo8 9
{pp 
returnqq 	
assemblyNameqq
 
.qq 
EndsWithqq 
(qq  
$strqq  )
,qq) *
StringComparisonqq+ ;
.qq; <
Ordinalqq< C
)qqC D
?qqE F
$strqqG `
:qqa b
$strqqc u
;qqu v
}rr 
publictt 
IEnumerablett	 
<tt 
stringtt 
>tt 
GetAllAssetPathstt -
(tt- .
)tt. /
{uu 
returnvv 	

 
.vv 
GetAllAssetPathsvv (
(vv( )
)vv) *
;vv* +
}ww 
publicyy 
UnityEditoryy	 
.yy 
PackageManageryy #
.yy# $
PackageInfoyy$ /
FindForAssetPathyy0 @
(yy@ A
stringyyA G
	assetPathyyH Q
)yyQ R
{zz 
return{{ 	
UnityEditor{{
 
.{{ 
PackageManager{{ $
.{{$ %
PackageInfo{{% 0
.{{0 1
FindForAssetPath{{1 A
({{A B
	assetPath{{B K
){{K L
;{{L M
}|| 
public~~ 
bool~~	 
IsInternalizedPackagePath~~ '
(~~' (
string~~( .
path~~/ 3
)~~3 4
{ 
if
�� 
(
�� 
string
�� 
.
��

�� 
(
�� 
path
��  
.
��  !
Trim
��! %
(
��% &
)
��& '
)
��' (
)
��( )
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
var
�� 
packageInfo
�� 
=
�� 
FindForAssetPath
�� %
(
��% &
path
��& *
)
��* +
;
��+ ,
if
�� 
(
�� 
packageInfo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 

false
�� 
;
�� 
}
�� 
var
�� 

�� 
=
�� 
packageInfo
�� "
.
��" #
source
��# )
;
��) *
switch
�� 	
(
��
 

�� 
)
�� 
{
�� 
case
�� 

��	 
.
�� 
Embedded
�� 
:
��  
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
Embedded
��A I
)
��I J
;
��J K
case
�� 

��	 
.
�� 
Registry
�� 
:
��  
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
Registry
��A I
)
��I J
;
��J K
case
�� 

��	 
.
�� 
BuiltIn
�� 
:
�� 
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
BuiltIn
��A H
)
��H I
;
��I J
case
�� 

��	 
.
�� 
Unknown
�� 
:
�� 
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
Unknown
��A H
)
��H I
;
��I J
case
�� 

��	 
.
�� 
Local
�� 
:
�� 
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
Local
��A F
)
��F G
;
��G H
case
�� 

��	 
.
�� 
Git
�� 
:
�� 
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
Git
��A D
)
��D E
;
��E F
case
�� 

��	 
.
�� 
LocalTarball
�� #
:
��# $
return
�� 
!
�� 
ProjectGenerationFlag
��
.
��" #
HasFlag
��# *
(
��* +#
ProjectGenerationFlag
��+ @
.
��@ A
LocalTarBall
��A M
)
��M N
;
��N O
}
�� 
return
�� 	
false
��
 
;
�� 
}
�� 
public
�� 
ResponseFileData
��	 
ParseResponseFile
�� +
(
��+ ,
string
��, 2
responseFilePath
��3 C
,
��C D
string
��E K
projectDirectory
��L \
,
��\ ]
string
��^ d
[
��d e
]
��e f)
systemReferenceDirectories��g �
)��� �
{
�� 
return
�� 	!
CompilationPipeline
��
 
.
�� 
ParseResponseFile
�� /
(
��/ 0
responseFilePath
�� 
,
�� 
projectDirectory
�� 
,
�� (
systemReferenceDirectories
�� 
)
�� 
;
�� 
}
�� 
public
�� 
void
��	 
ToggleProjectGeneration
�� %
(
��% &#
ProjectGenerationFlag
��& ;

preference
��< F
)
��F G
{
�� 
if
�� 
(
�� #
ProjectGenerationFlag
�� 
.
�� 
HasFlag
�� $
(
��$ %

preference
��% /
)
��/ 0
)
��0 1
{
�� #
ProjectGenerationFlag
�� 
^=
�� 

preference
�� '
;
��' (
}
�� 
else
�� 
{
�� #
ProjectGenerationFlag
�� 
|=
�� 

preference
�� '
;
��' (
}
�� 
}
�� 
public
�� 
void
��	 
ResetProjectGenerationFlag
�� (
(
��( )
)
��) *
{
�� #
ProjectGenerationFlag
�� 
=
�� #
ProjectGenerationFlag
�� 0
.
��0 1
None
��1 5
;
��5 6
}
�� 
public
�� 
string
��	 
GetAssemblyName
�� 
(
��  
string
��  & 
assemblyOutputPath
��' 9
,
��9 :
string
��; A
assemblyName
��B N
)
��N O
{
�� 
return
�� 	 
assemblyOutputPath
��
 
.
�� 
EndsWith
�� %
(
��% &
$str
��& 1
,
��1 2
StringComparison
��3 C
.
��C D
Ordinal
��D K
)
��K L
?
��M N
assemblyName
��O [
+
��\ ]
$str
��^ g
:
��h i
assemblyName
��j v
;
��v w
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\MessageType.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{ 
internal 	
enum
 
MessageType 
{ 
None		 
=		 
$num			 

,		
 
Ping 
, 
Pong 
, 
Play 
, 
Stop 
, 
Pause 
, 
Unpause 	
,	 

Build 
, 
Refresh 	
,	 

Info 
, 
Error 
, 
Warning 	
,	 

Open 
, 
Opened 
, 	
Version 	
,	 


, 
ProjectPath   
,  
}!! 
}"" �<
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Image.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{		 
public

 
sealed

 
class

 
Image

 
:

 
IDisposable

 (
{ 
long
position
;
Stream 
stream	 
; 
Image 
( 
Stream 
stream 
) 
{ 
this 
. 
stream 
= 
stream 
; 
this 
. 
position 
= 
stream 
. 
Position "
;" #
this 
. 
stream 
. 
Position 
= 
$num 
; 
} 
bool 
Advance 
( 
int 
length 
) 
{ 
if 
( 
stream 
.
Position 
+ 
length 
>=  "
stream# )
.) *
Length* 0
)0 1
return 

false 
; 
stream 	
.	 

Seek
 
( 
length 
, 

SeekOrigin !
.! "
Current" )
)) *
;* +
return 	
true
 
; 
} 
bool   
MoveTo   
(  
uint   
position   
)   
{!! 
if"" 
("" 
position"" 
>="" 
stream"" 
."" 
Length""  
)""  !
return## 

false## 
;## 
stream%% 	
.%%	 

Position%%
 
=%% 
position%% 
;%% 
return&& 	
true&&
 
;&& 
}'' 
void)) 
IDisposable)) 
.)) 
Dispose)) 
()) 
))) 
{** 
stream++ 	
.++	 

Position++
 
=++ 
position++ 
;++ 
},, 
ushort.. 

ReadUInt16..	 
(.. 
).. 
{// 
return00 	
(00
 
ushort00 
)00 
(00 
stream00 
.00 
ReadByte00 "
(00" #
)00# $
|11 
(11 
stream11 
.11
ReadByte11 
(11 
)11 
<<11 
$num11 
)11 
)11 
;11  
}22 
uint44 

ReadUInt3244 
(44 
)44 
{55 
return66 	
(66
 
uint66 
)66 
(66 
stream66 
.66 
ReadByte66  
(66  !
)66! "
|77 
(77 
stream77 
.77
ReadByte77 
(77 
)77 
<<77 
$num77 
)77 
|88 
(88 
stream88 
.88
ReadByte88 
(88 
)88 
<<88 
$num88 
)88 
|99 
(99 
stream99 
.99
ReadByte99 
(99 
)99 
<<99 
$num99 
)99 
)99  
;99  !
}:: 
bool<< 
IsManagedAssembly<< 
(<< 
)<< 
{== 
if>> 
(>> 
stream>> 
.>>
Length>> 
<>> 
$num>> 
)>> 
return?? 

false?? 
;?? 
if@@ 
(@@ 

ReadUInt16@@ 
(@@ 
)@@ 
!=@@ 
$num@@ 
)@@ 
returnAA 

falseAA 
;AA 
ifBB 
(BB 
!BB 
AdvanceBB 
(BB 
$numBB 
)BB 
)BB 
returnCC 

falseCC 
;CC 
ifDD 
(DD 
!DD 
MoveToDD 
(DD 

ReadUInt32DD 
(DD 
)DD 
)DD 
)DD 
returnEE 

falseEE 
;EE 
ifFF 
(FF 

ReadUInt32FF 
(FF 
)FF 
!=FF 
$numFF !
)FF! "
returnGG 

falseGG 
;GG 
ifHH 
(HH 
!HH 
AdvanceHH 
(HH 
$numHH 
)HH 
)HH 
returnII 

falseII 
;II 
ifJJ 
(JJ 
!JJ 
AdvanceJJ 
(JJ 

ReadUInt16JJ 
(JJ 
)JJ 
==JJ 
$numJJ  %
?JJ& '
$numJJ( +
:JJ, -
$numJJ. 1
)JJ1 2
)JJ2 3
returnKK 

falseKK 
;KK 
returnMM 	

ReadUInt32MM
 
(MM 
)MM 
!=MM 
$numMM 
;MM 
}NN 
publicPP 
staticPP	 
boolPP 

IsAssemblyPP 
(PP  
stringPP  &
filePP' +
)PP+ ,
{QQ 
ifRR 
(RR 
fileRR 
==RR 
nullRR 
)RR 
throwSS 	
newSS
 
ArgumentNullExceptionSS #
(SS# $
$strSS$ *
)SS* +
;SS+ ,
usingUU 
(UU	 

varUU
 
streamUU 
=UU 
newUU 

FileStreamUU %
(UU% &
fileUU& *
,UU* +
FileModeUU, 4
.UU4 5
OpenUU5 9
,UU9 :

FileAccessUU; E
.UUE F
ReadUUF J
,UUJ K
	FileShareUUL U
.UUU V
ReadUUV Z
)UUZ [
)UU[ \
returnVV 


IsAssemblyVV 
(VV 
streamVV 
)VV 
;VV 
}WW 
publicYY 
staticYY	 
boolYY 

IsAssemblyYY 
(YY  
StreamYY  &
streamYY' -
)YY- .
{ZZ 
if[[ 
([[ 
stream[[ 
==[[ 
null[[ 
)[[ 
throw\\ 	
new\\
 
ArgumentNullException\\ #
(\\# $
nameof\\$ *
(\\* +
stream\\+ 1
)\\1 2
)\\2 3
;\\3 4
if]] 
(]] 
!]] 
stream]] 
.]] 
CanRead]] 
)]] 
throw^^ 	
new^^
 
ArgumentException^^ 
(^^  
nameof^^  &
(^^& '
stream^^' -
)^^- .
)^^. /
;^^/ 0
if__ 
(__ 
!__ 
stream__ 
.__ 
CanSeek__ 
)__ 
throw`` 	
new``
 
ArgumentException`` 
(``  
nameof``  &
(``& '
stream``' -
)``- .
)``. /
;``/ 0
usingbb 
(bb	 

varbb
 
imagebb 
=bb 
newbb 
Imagebb 
(bb  
streambb  &
)bb& '
)bb' (
returncc 

imagecc 
.cc 
IsManagedAssemblycc "
(cc" #
)cc# $
;cc$ %
}dd 
}ee 
}ff �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Solution.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
internal 	
class
 
Solution 
{ 
public		  
SolutionProjectEntry			 
[		 
]		 
Projects		  (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
SolutionProperties

	 
[

 
]

 

Properties

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\ProjectGeneration\GUIDProvider.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
public 
	interface 
IGUIDGenerator  
{		 
string

 
ProjectGuid

	 
(

 
string

 
projectName

 '
,

' (
string

) /
assemblyName

0 <
)

< =
;

= >
string 
SolutionGuid	 
( 
string 
projectName (
,( )
ScriptingLanguage* ;
scriptingLanguage< M
)M N
;N O
} 
class 
GUIDProvider 
: 
IGUIDGenerator $
{ 
public 
string	 
ProjectGuid 
( 
string "
projectName# .
,. /
string0 6
assemblyName7 C
)C D
{ 
return 	!
SolutionGuidGenerator
 
.  
GuidForProject  .
(. /
projectName/ :
+; <
assemblyName= I
)I J
;J K
} 
public 
string	 
SolutionGuid 
( 
string #
projectName$ /
,/ 0
ScriptingLanguage1 B
scriptingLanguageC T
)T U
{ 
return 	!
SolutionGuidGenerator
 
.  
GuidForSolution  /
(/ 0
projectName0 ;
,; <
scriptingLanguage= N
)N O
;O P
} 
} 
} �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Messaging\Message.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
.- .
	Messaging. 7
{		 
internal

 	
class


 
Message

 
{ 
public 
MessageType	 
Type 
{ 
get 
;  
set! $
;$ %
}& '
public 
string	 
Value 
{ 
get 
; 
set  
;  !
}" #
public 

IPEndPoint	 
Origin 
{ 
get  
;  !
set" %
;% &
}' (
public 
override	 
string 
ToString !
(! "
)" #
{ 
return 	
string
 
. 
Format 
( 
CultureInfo #
.# $
InvariantCulture$ 4
,4 5
$str6 T
,T U
TypeV Z
,Z [
Value\ a
)a b
;b c
} 
} 
} �d
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.visualstudio@2.0.5\Editor\Discovery.cs
	namespace 	
	Microsoft
 
. 
Unity 
. 
VisualStudio &
.& '
Editor' -
{ 
internal 	
static
 
class 
	Discovery  
{ 
internal 

const 
string 
ManagedWorkload '
=( )
$str* W
;W X
public 
static	 
IEnumerable 
< %
IVisualStudioInstallation 5
>5 6(
GetVisualStudioInstallations7 S
(S T
)T U
{ 
if 
( 
VisualStudioEditor 
. 
	IsWindows #
)# $
{ 
foreach 
( 
var
installation 
in  
QueryVsWhere! -
(- .
). /
)/ 0
yield 

return 
installation 
; 
} 
if 
( 
VisualStudioEditor 
. 
IsOSX 
)  
{ 
var 

candidates 
= 
	Directory 
.  
EnumerateDirectories 3
(3 4
$str4 C
,C D
$strE L
)L M
;M N
foreach   
(   
var  
	candidate   
in   

candidates   (
)  ( )
{!! 
if"" 
("" 	#
TryDiscoverInstallation""	  
(""  !
	candidate""! *
,""* +
out"", /
var""0 3
installation""4 @
)""@ A
)""A B
yield## 
return## 
installation## 
;##  
}$$ 
}%% 
}&& 
private(( 	
static((
 
bool(( "
IsCandidateToDiscovery(( ,
(((, -
string((- 3
path((4 8
)((8 9
{)) 
if** 
(** 
File** 
.** 
Exists** 
(** 
path** 
)** 
&&** 
VisualStudioEditor** .
.**. /
	IsWindows**/ 8
&&**9 ;
Regex**< A
.**A B
IsMatch**B I
(**I J
path**J N
,**N O
$str**P ]
,**] ^
RegexOptions**_ k
.**k l

IgnoreCase**l v
)**v w
)**w x
return++ 

true++ 
;++ 
if-- 
(-- 
	Directory-- 
.-- 
Exists-- 
(-- 
path-- 
)-- 
&&--  
VisualStudioEditor--! 3
.--3 4
IsOSX--4 9
&&--: <
Regex--= B
.--B C
IsMatch--C J
(--J K
path--K O
,--O P
$str--Q v
,--v w
RegexOptions	--x �
.
--� �

IgnoreCase
--� �
)
--� �
)
--� �
return.. 

true.. 
;.. 
return00 	
false00
 
;00 
}11 
public33 
static33	 
bool33 #
TryDiscoverInstallation33 ,
(33, -
string33- 3

editorPath334 >
,33> ?
out33@ C%
IVisualStudioInstallation33D ]
installation33^ j
)33j k
{44 
installation55 
=55 
null55 
;55 
if77 
(77 
string77 
.77

(77 

editorPath77 &
)77& '
)77' (
return88 

false88 
;88 
if:: 
(:: 
!:: "
IsCandidateToDiscovery:: 
(:: 

editorPath:: )
)::) *
)::* +
return;; 

false;; 
;;; 
var>> 
fvi>> 

=>> 

editorPath>>
;>> 
ifAA 
(AA 
VisualStudioEditorAA 
.AA 
IsOSXAA 
)AA  
fviBB 
=BB 	
PathBB
 
.BB 
CombineBB 
(BB 

editorPathBB !
,BB! "
$strBB# -
,BB- .
$strBB/ :
,BB: ;
$strBB< A
,BBA B
$strBBC P
,BBP Q
$strBBR W
,BBW X
$strBBY k
)BBk l
;BBl m
ifDD 
(DD 
!DD 
FileDD 
.DD 
ExistsDD
(DD 
fviDD 
)DD 
)DD 
returnEE 

falseEE 
;EE 
varII 
viII 	
=II
 
FileVersionInfoII 
.II 
GetVersionInfoII *
(II* +
fviII+ .
)II. /
;II/ 0
varJJ 
versionJJ 
=JJ 
newJJ 
VersionJJ 
(JJ 
viJJ 
.JJ  
ProductVersionJJ  .
)JJ. /
;JJ/ 0
varKK 
isPrereleaseKK 
=KK 
viKK 
.KK 
IsPreReleaseKK %
||KK& (
stringKK) /
.KK/ 0
ConcatKK0 6
(KK6 7

editorPathKK7 A
,KKA B
$strKKC F
+KKG H
viKKI K
.KKK L
FileDescriptionKKL [
)KK[ \
.KK\ ]
ToLowerKK] d
(KKd e
)KKe f
.KKf g
ContainsKKg o
(KKo p
$strKKp y
)KKy z
;KKz {
installationMM 
=MM 
newMM $
VisualStudioInstallationMM .
(MM. /
)MM/ 0
{NN 
IsPrereleaseOO 
=OO 
isPrereleaseOO 
,OO  
NamePP 
=PP	 

$"PP 
{PP
viPP 
.PP 
FileDescriptionPP  
}PP  !
{PP! "
(PP" #
isPrereleasePP# /
&&PP0 2
VisualStudioEditorPP3 E
.PPE F
IsOSXPPF K
?PPL M
$strPPN X
:PPY Z
stringPP[ a
.PPa b
EmptyPPb g
)PPg h
}PPh i
 [PPi k
{PPk l
versionPPl s
.PPs t
ToStringPPt |
(PP| }
$numPP} ~
)PP~ 
}	PP �
]
PP� �
"
PP� �
,
PP� �
PathQQ 
=QQ	 


editorPathQQ 
,QQ 
VersionRR 
=RR 
versionRR 
}SS 
;SS 
returnTT 	
trueTT
 
;TT 
}UU 
[YY 
SerializableYY 
]YY 
internalZZ 

classZZ 

{[[ 
public\\ 	
VsWhereEntry\\
 
[\\ 
]\\ 
entries\\  
;\\  !
public^^ 	
static^^
 

FromJson^^ '
(^^' (
string^^( .
json^^/ 3
)^^3 4
{__ 
return`` 

JsonUtility`` 
.`` 
FromJson`` 
<``  

>``- .
(``. /
$str``/ 5
+``6 7
nameof``8 >
(``> ?

.``L M
entries``M T
)``T U
+``V W
$str``X ^
+``_ `
json``a e
+``f g
$str``h l
)``l m
;``m n
}aa 
publiccc 	
IEnumerablecc
 
<cc $
VisualStudioInstallationcc .
>cc. /'
ToVisualStudioInstallationscc0 K
(ccK L
)ccL M
{dd 
foreachee 
(ee 
varee
entryee 
inee 
entriesee !
)ee! "
{ff 
yieldgg 

returngg 
newgg $
VisualStudioInstallationgg .
(gg. /
)gg/ 0
{hh 
Nameii 

=ii 
$"ii
{ii 
entryii 
.ii 
displayNameii !
}ii! "
 [ii" $
{ii$ %
entryii% *
.ii* +
catalogii+ 2
.ii2 3!
productDisplayVersionii3 H
}iiH I
]iiI J
"iiJ K
,iiK L
Pathjj 

=jj 
entryjj
.jj 
productPathjj 
,jj 
IsPrereleasekk 
=kk 
entrykk 
.kk 
isPrereleasekk '
,kk' (
Versionll 
=ll 
Versionll 
.ll 
Parsell 
(ll 
entryll #
.ll# $
catalogll$ +
.ll+ ,
buildVersionll, 8
)ll8 9
}mm 
;mm 
}nn 
}oo 
}pp 
[rr 
Serializablerr 
]rr 
internalss 

classss 
VsWhereEntryss 
{tt 
publicuu 	
stringuu
 
displayNameuu 
;uu 
publicvv 	
boolvv
 
isPrereleasevv 
;vv 
publicww 	
stringww
 
productPathww 
;ww 
publicxx 	
VsWhereCatalogxx
 
catalogxx  
;xx  !
}yy 
[{{ 
Serializable{{ 
]{{ 
internal|| 

class|| 
VsWhereCatalog|| 
{}} 
public~~ 	
string~~
 !
productDisplayVersion~~ &
;~~& '
public 	
string
 
buildVersion 
; 
}
�� 
private
�� 	
static
��
 
IEnumerable
�� 
<
�� &
VisualStudioInstallation
�� 5
>
��5 6
QueryVsWhere
��7 C
(
��C D
)
��D E
{
�� 
var
�� 
progpath
�� 
=
�� 
FileUtility
�� 
.
�� &
FindPackageAssetFullPath
�� 
(
�� 
$str
�� 2
,
��2 3
$str
��4 A
)
��A B
.
�� 
FirstOrDefault
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
string
�� 
.
��
IsNullOrWhiteSpace
��  
(
��  !
progpath
��! )
)
��) *
)
��* +
return
�� 


Enumerable
�� 
.
�� 
Empty
�� 
<
�� &
VisualStudioInstallation
�� 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
var
�� 
process
�� 
=
�� 
new
�� 
Process
�� 
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
�� $
{
�� 
FileName
�� 
=
�� 
progpath
�� 
,
�� 
	Arguments
�� 
=
�� 
$str
�� 1
,
��1 2
UseShellExecute
�� 
=
�� 
false
�� 
,
�� 
CreateNoWindow
�� 
=
�� 
true
�� 
,
�� $
RedirectStandardOutput
�� 
=
�� 
true
�� "
,
��" ##
RedirectStandardError
�� 
=
�� 
true
�� !
,
��! "
}
�� 
}
�� 
;
�� 
using
�� 
(
��	 

process
��
 
)
�� 
{
�� 
var
�� 
json
�� 
=
��
string
�� 
.
�� 
Empty
�� 
;
�� 
process
�� 
.
��  
OutputDataReceived
�� 
+=
�� !
(
��" #
o
��# $
,
��$ %
e
��& '
)
��' (
=>
��) +
json
��, 0
+=
��1 3
e
��4 5
.
��5 6
Data
��6 :
;
��: ;
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
process
�� 
.
�� !
BeginOutputReadLine
�� 
(
��  
)
��  !
;
��! "
process
�� 
.
�� 
WaitForExit
�� 
(
�� 
)
�� 
;
�� 
var
�� 
result
�� 
=
�� 

�� 
.
�� 
FromJson
�� '
(
��' (
json
��( ,
)
��, -
;
��- .
return
�� 

result
�� 
.
�� )
ToVisualStudioInstallations
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 
}�� 