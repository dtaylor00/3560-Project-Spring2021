нg
УD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\EditorPluginInterop.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{		 
internal

 

static

 
class

 
EditorPluginInterop

 +
{ 
private 
static 
string *
EditorPluginAssemblyNamePrefix 8
=9 :
$str; a
;a b
public 

static 
readonly 
string !$
EditorPluginAssemblyName" :
=; <
$"= ?
{? @*
EditorPluginAssemblyNamePrefix@ ^
}^ _
Net46.Repacked_ m
"m n
;n o
public 

static 
readonly 
string !,
 EditorPluginAssemblyNameFallback" B
=C D
$"E G
{G H*
EditorPluginAssemblyNamePrefixH f
}f g
Full.Repackedg t
"t u
;u v
private 
static 
string !
ourEntryPointTypeName /
=0 1
$str2 a
;a b
private 
static 
Assembly #
ourEditorPluginAssembly 3
;3 4
public 

static 
Assembly  
EditorPluginAssembly /
{ 
get 	
{ 
if 

( #
ourEditorPluginAssembly #
!=$ &
null' +
)+ ,
return
 #
ourEditorPluginAssembly (
;( )
var 

assemblies 
= 
	AppDomain "
." #
CurrentDomain# 0
.0 1
GetAssemblies1 >
(> ?
)? @
;@ A#
ourEditorPluginAssembly 
=  !

assemblies" ,
., -
FirstOrDefault- ;
(; <
a< =
=>> @
{ 	
try
 
{
 
return 
a 
. 
GetName 
( 
) 
. 
Name #
.# $

StartsWith$ .
(. /*
EditorPluginAssemblyNamePrefix/ M
)M N
;N O
}
 
catch  
 
(   
	Exception   
)   
{!!
 
}""
 
return$$
 
default$$ 
;$$ 
}%% 	
)%%	 

;%%
 
return&& #
ourEditorPluginAssembly&& &
;&&& '
}'' 
}(( 
private** 
static** 
void** +
DisableSyncSolutionOnceCallBack** 7
(**7 8
)**8 9
{++ 
var.. 	
assembly..
 
=..  
EditorPluginAssembly.. )
;..) *
if// 
(//	 

assembly//
 
==// 
null// 
)// 
return// "
;//" #
var00 	
type00
 
=00 
assembly00 
.00 
GetType00 !
(00! "
$str00" _
)00_ `
;00` a
if11 
(11	 

type11
 
==11 
null11 
)11 
return11 
;11 
var22 	
baseType22
 
=22 
type22 
.22 
BaseType22 "
;22" #
if33 
(33	 

baseType33
 
==33 
null33 
)33 
return33 "
;33" #
var44 	
instance44
 
=44 
baseType44 
.44 
GetProperty44 )
(44) *
$str44* 4
)444 5
;445 6
if55 
(55	 

instance55
 
==55 
null55 
)55 
return55 "
;55" #
var66 	
instanceVal66
 
=66 
instance66  
.66  !
GetValue66! )
(66) *
null66* .
)66. /
;66/ 0
var77 	
member77
 
=77 
type77 
.77 
GetProperty77 #
(77# $
$str77$ 9
)779 :
;77: ;
if88 
(88	 

member88
 
==88 
null88 
)88 
return88 
;88 
member99 
.99 
SetValue99 
(99 
instanceVal99 !
,99! "
true99# '
)99' (
;99( )
}:: 
public<< 

static<< 
string<< 
LogPath<<  
{== 
get>> 	
{?? 
try@@ 
{AA 	
varBB
 
assemblyBB 
=BB  
EditorPluginAssemblyBB -
;BB- .
ifCC
 
(CC 
assemblyCC 
==CC 
nullCC 
)CC 
returnCC  &
nullCC' +
;CC+ ,
varDD
 
typeDD 
=DD 
assemblyDD 
.DD 
GetTypeDD %
(DD% &!
ourEntryPointTypeNameDD& ;
)DD; <
;DD< =
ifEE
 
(EE 
typeEE 
==EE 
nullEE 
)EE 
returnEE "
nullEE# '
;EE' (
varFF
 
fieldFF 
=FF 
typeFF 
.FF 
GetFieldFF #
(FF# $
$strFF$ -
,FF- .
BindingFlagsFF/ ;
.FF; <
	NonPublicFF< E
|FFF G
BindingFlagsFFH T
.FFT U
StaticFFU [
)FF[ \
;FF\ ]
ifGG
 
(GG 
fieldGG 
==GG 
nullGG 
)GG 
returnGG #
nullGG$ (
;GG( )
returnHH
 
fieldHH 
.HH 
GetValueHH 
(HH  
nullHH  $
)HH$ %
asHH& (
stringHH) /
;HH/ 0
}II 	
catchJJ 
(JJ 
	ExceptionJJ 
)JJ 
{KK 	
DebugLL
 
.LL 
LogLL 
(LL 
$strLL n
)LLn o
;LLo p
}MM 	
returnOO 
nullOO 
;OO 
}PP 
}QQ 
publicSS 

staticSS 
boolSS %
OpenFileDllImplementationSS 0
(SS0 1
stringSS1 7
pathSS8 <
,SS< =
intSS> A
lineSSB F
,SSF G
intSSH K
columnSSL R
)SSR S
{TT 
varUU 	

openResultUU
 
=UU 
falseUU 
;UU 
tryWW 	
{XX 
varYY 
assemblyYY 
=YY  
EditorPluginAssemblyYY +
;YY+ ,
ifZZ 

(ZZ 
assemblyZZ 
==ZZ 
nullZZ 
)ZZ 
returnZZ $
falseZZ% *
;ZZ* +
var[[ 
type[[ 
=[[ 
assembly[[ 
.[[ 
GetType[[ #
([[# $!
ourEntryPointTypeName[[$ 9
)[[9 :
;[[: ;
if\\ 

(\\ 
type\\ 
==\\ 
null\\ 
)\\ 
return\\  
false\\! &
;\\& '
var]] 
field]] 
=]] 
type]] 
.]] 
GetField]] !
(]]! "
$str]]" 4
,]]4 5
BindingFlags]]6 B
.]]B C
	NonPublic]]C L
|]]M N
BindingFlags]]O [
.]][ \
Static]]\ b
)]]b c
;]]c d
if^^ 

(^^ 
field^^ 
==^^ 
null^^ 
)^^ 
return^^ !
false^^" '
;^^' (
var__ 
handlerInstance__ 
=__ 
field__ #
.__# $
GetValue__$ ,
(__, -
null__- 1
)__1 2
;__2 3
var`` 
method`` 
=`` 
handlerInstance`` $
.``$ %
GetType``% ,
(``, -
)``- .
.aa
 
	GetMethodaa 
(aa 
$straa $
,aa$ %
newaa& )
[aa) *
]aa* +
{aa, -
typeofaa- 3
(aa3 4
stringaa4 :
)aa: ;
,aa; <
typeofaa= C
(aaC D
intaaD G
)aaG H
,aaH I
typeofaaJ P
(aaP Q
intaaQ T
)aaT U
}aaU V
)aaV W
;aaW X
ifbb 

(bb 
methodbb 
==bb 
nullbb 
)bb 
returnbb "
falsebb# (
;bb( )
varcc 
assetFilePathcc 
=cc 
pathcc  
;cc  !
ifdd 

(dd 
!dd 
stringdd 
.dd 
IsNullOrEmptydd !
(dd! "
pathdd" &
)dd& '
)dd' (
assetFilePathee
 
=ee 
Pathee 
.ee 
GetFullPathee *
(ee* +
pathee+ /
)ee/ 0
;ee0 1

openResultgg 
=gg 
(gg 
boolgg 
)gg 
methodgg "
.gg" #
Invokegg# )
(gg) *
handlerInstancegg* 9
,gg9 :
newgg; >
objectgg? E
[ggE F
]ggF G
{ggH I
assetFilePathggI V
,ggV W
lineggX \
,gg\ ]
columngg^ d
}ggd e
)gge f
;ggf g
}hh 
catchii 
(ii 
	Exceptionii 
eii 
)ii 
{jj 
Debugkk 
.kk 
Logkk 
(kk 
$strkk l
)kkl m
;kkm n
Debugll 
.ll 
LogExceptionll 
(ll 
ell 
)ll 
;ll 
}mm 
returnoo 

openResultoo 
;oo 
}pp 
publicrr 

staticrr 
boolrr *
EditorPluginIsLoadedFromAssetsrr 5
(rr5 6
Assemblyrr6 >
assemblyrr? G
)rrG H
{ss 
iftt 
(tt	 

assemblytt
 
==tt 
nulltt 
)tt 
returnuu 
falseuu 
;uu 
varvv 	
locationvv
 
=vv 
assemblyvv 
.vv 
Locationvv &
;vv& '
varww 	

currentDirww
 
=ww 
	Directoryww  
.ww  !
GetCurrentDirectoryww! 4
(ww4 5
)ww5 6
;ww6 7
returnxx 
locationxx 
.xx 

StartsWithxx  
(xx  !

currentDirxx! +
,xx+ ,
StringComparisonxx- =
.xx= >&
InvariantCultureIgnoreCasexx> X
)xxX Y
;xxY Z
}yy 
internal|| 
static|| 
void|| 
InitEntryPoint|| '
(||' (
Assembly||( 0
assembly||1 9
)||9 :
{}} 
try~~ 	
{ 
var
АА 
version
АА 
=
АА #
RiderScriptEditorData
АА +
.
АА+ ,
instance
АА, 4
.
АА4 5
editorBuildNumber
АА5 F
;
ААF G
if
ББ 

(
ББ 
version
ББ 
!=
ББ 
null
ББ 
)
ББ 
{
ВВ 	
if
ГГ
 
(
ГГ 
version
ГГ 
.
ГГ 
Major
ГГ 
<
ГГ 
$num
ГГ !
)
ГГ! "-
DisableSyncSolutionOnceCallBack
ДД +
(
ДД+ ,
)
ДД, -
;
ДД- .
}
ЕЕ 	
else
ЖЖ -
DisableSyncSolutionOnceCallBack
ЗЗ +
(
ЗЗ+ ,
)
ЗЗ, -
;
ЗЗ- .
var
ЙЙ 
type
ЙЙ 
=
ЙЙ 
assembly
ЙЙ 
.
ЙЙ 
GetType
ЙЙ #
(
ЙЙ# $
$str
ЙЙ$ Z
)
ЙЙZ [
;
ЙЙ[ \
if
КК 

(
КК 
type
КК 
==
КК 
null
КК 
)
КК 
type
ЛЛ
 
=
ЛЛ 
assembly
ЛЛ 
.
ЛЛ 
GetType
ЛЛ !
(
ЛЛ! "
$str
ЛЛ" W
)
ЛЛW X
;
ЛЛX Y
RuntimeHelpers
ММ 
.
ММ !
RunClassConstructor
ММ *
(
ММ* +
type
ММ+ /
.
ММ/ 0

TypeHandle
ММ0 :
)
ММ: ;
;
ММ; <
}
НН 
catch
ОО 
(
ОО )
TypeInitializationException
ОО (
ex
ОО) +
)
ОО+ ,
{
ПП 
Debug
РР 
.
РР 
LogException
РР 
(
РР 
ex
РР 
)
РР 
;
РР 
if
СС 

(
СС 
ex
СС 
.
СС 
InnerException
СС 
!=
СС  
null
СС! %
)
СС% &
Debug
ТТ
 
.
ТТ 
LogException
ТТ 
(
ТТ 
ex
ТТ 
.
ТТ  
InnerException
ТТ  .
)
ТТ. /
;
ТТ/ 0
}
УУ 
}
ФФ 
}
ХХ 
}ЦЦ ╦
ХD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\TestEvent.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{ 
[		 
Serializable		 
]		 
public

 
enum

	 
	EventType

 
{

 
TestStarted

 %
,

% &
TestFinished

' 3
,

3 4
RunFinished

5 @
,

@ A

RunStarted

B L
}

M N
[ 
Serializable 
] 
public 
class	 
	TestEvent 
{ 
public 

	EventType 
type 
; 
public 

string 
id 
; 
public 

string 
assemblyName 
; 
public 

string 
output 
; 
public 


TestStatus 

testStatus  
;  !
public 

double 
duration 
; 
public 

string 
parentId 
; 
public 

	TestEvent 
( 
	EventType 
type #
,# $
string% +
id, .
,. /
string0 6
assemblyName7 C
,C D
stringE K
outputL R
,R S
doubleT Z
duration[ c
,c d

TestStatuse o

testStatusp z
,z {
string	| В
parentID
Г Л
)
Л М
{ 
this 

.
 
type 
= 
type 
; 
this 

.
 
id 
= 
id 
; 
this 

.
 
assemblyName 
= 
assemblyName &
;& '
this 

.
 
output 
= 
output 
; 
this   

.  
 

testStatus   
=   

testStatus   "
;  " #
this!! 

.!!
 
duration!! 
=!! 
duration!! 
;!! 
parentId"" 
="" 
parentID"" 
;"" 
}## 
}$$ 
}%% АT
ЩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\TestsCallback.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{ 
public		 
class			 
TestsCallback		 
:		 
ScriptableObject		 /
,		/ 0
IErrorCallbacks		1 @
{

 
public 
void 
RunFinished 
(  
ITestResultAdaptor  2
result3 9
)9 :
{ 	
CallbackData
 
. 
instance 
.  
isRider  '
=( )
false* /
;/ 0
CallbackData
 
. 
instance 
.  
events  &
.& '
Add' *
(* +
new 
	TestEvent 
( 
	EventType #
.# $
RunFinished$ /
,/ 0
$str1 3
,3 4
$str5 7
,7 8
$str8 :
,: ;
$num< =
,= >
ParseTestStatus? N
(N O
resultO U
.U V

TestStatusV `
)` a
,a b
$strc e
)e f
)f g
;g h
CallbackData
 
. 
instance 
.  
RaiseChangedEvent  1
(1 2
)2 3
;3 4
} 	
public 
void 

RunStarted 
( 
ITestAdaptor +

testsToRun, 6
)6 7
{ 	
CallbackData
 
. 
instance 
.  
events  &
.& '
Add' *
(* +
new 
	TestEvent 
( 
	EventType #
.# $

RunStarted$ .
,. /
$str0 2
,2 3
$str4 6
,6 7
$str7 9
,9 :
$num; <
,< =
NUnit> C
.C D
	FrameworkD M
.M N

InterfacesN X
.X Y

TestStatusY c
.c d
Passedd j
,j k
$strl n
)n o
)o p
;p q
CallbackData
 
. 
instance 
.  
RaiseChangedEvent  1
(1 2
)2 3
;3 4
} 	
public 
void 
TestStarted 
(  
ITestAdaptor  ,
result- 3
)3 4
{ 	
if
 
( 
result 
. 
Method 
== 
null #
)# $
return% +
;+ ,
CallbackData
 
. 
instance 
.  
events  &
.& '
Add' *
(* +
new   
	TestEvent   
(   
	EventType   #
.  # $
TestStarted  $ /
,  / 0
GetUniqueName  1 >
(  > ?
result  ? E
)  E F
,  F G
result  H N
.  N O
Method  O U
.  U V
TypeInfo  V ^
.  ^ _
Assembly  _ g
.  g h
GetName  h o
(  o p
)  p q
.  q r
Name  r v
,  v w
$str  x z
,  z {
$num  | }
,  } ~
NUnit	   Д
.
  Д Е
	Framework
  Е О
.
  О П

Interfaces
  П Щ
.
  Щ Ъ

TestStatus
  Ъ д
.
  д е
Passed
  е л
,
  л м
result
  н │
.
  │ ┤
ParentFullName
  ┤ ┬
)
  ┬ ├
)
  ├ ─
;
  ─ ┼
CallbackData!!
 
.!! 
instance!! 
.!!  
RaiseChangedEvent!!  1
(!!1 2
)!!2 3
;!!3 4
}"" 	
public$$ 
void$$ 
TestFinished$$  
($$  !
ITestResultAdaptor$$! 3
result$$4 :
)$$: ;
{%% 	
if&&
 
(&& 
result&& 
.&& 
Test&& 
.&& 
Method&&  
==&&! #
null&&$ (
)&&( )
return&&* 0
;&&0 1
CallbackData((
 
.(( 
instance(( 
.((  
events((  &
.((& '
Add((' *
(((* +
new)) 
	TestEvent)) 
()) 
	EventType)) #
.))# $
TestFinished))$ 0
,))0 1
GetUniqueName))2 ?
())? @
result))@ F
.))F G
Test))G K
)))K L
,))L M
result))N T
.))T U
Test))U Y
.))Y Z
Method))Z `
.))` a
TypeInfo))a i
.))i j
Assembly))j r
.))r s
GetName))s z
())z {
))){ |
.))| }
Name	))} Б
,
))Б В
ExtractOutput
))Г Р
(
))Р С
result
))С Ч
)
))Ч Ш
,
))Ш Щ
(
))Ъ Ы
result
))Ы б
.
))б в
EndTime
))в й
-
))й к
result
))к ░
.
))░ ▒
	StartTime
))▒ ║
)
))║ ╗
.
))╗ ╝
Milliseconds
))╝ ╚
,
))╚ ╔
ParseTestStatus
))╩ ┘
(
))┘ ┌
result
))┌ р
.
))р с

TestStatus
))с ы
)
))ы ь
,
))ь э
result
))ю Ї
.
))Ї ї
Test
))ї ∙
.
))∙ ·
ParentFullName
))· И
)
))И Й
)
))Й К
;
))К Л
CallbackData**
 
.** 
instance** 
.**  
RaiseChangedEvent**  1
(**1 2
)**2 3
;**3 4
}++ 	
public-- 
void-- 
OnError-- 
(-- 
string-- "
message--# *
)--* +
{.. 	
CallbackData//
 
.// 
instance// 
.//  
isRider//  '
=//( )
false//* /
;/// 0
CallbackData11
 
.11 
instance11 
.11  
events11  &
.11& '
Add11' *
(11* +
new22 
	TestEvent22 
(22 
	EventType22 #
.22# $
RunFinished22$ /
,22/ 0
$str221 3
,223 4
$str225 7
,227 8
message228 ?
,22? @
$num22A B
,22B C
NUnit22D I
.22I J
	Framework22J S
.22S T

Interfaces22T ^
.22^ _

TestStatus22_ i
.22i j
Failed22j p
,22p q
$str22r t
)22t u
)22u v
;22v w
CallbackData33
 
.33 
instance33 
.33  
RaiseChangedEvent33  1
(331 2
)332 3
;333 4
}44 	
private77 
static77 
string77 
GetUniqueName77 +
(77+ ,
ITestAdaptor77, 8
test779 =
)77= >
{88 	
string99
 
str99 
=99 
test99 
.99 
FullName99 $
;99$ %
return::
 
str:: 
;:: 
};; 	
private== 
static== 
NUnit== 
.== 
	Framework== &
.==& '

Interfaces==' 1
.==1 2

TestStatus==2 <
ParseTestStatus=== L
(==L M

TestStatus==M W

testStatus==X b
)==b c
{>> 	
return??
 
(?? 
NUnit?? 
.?? 
	Framework?? !
.??! "

Interfaces??" ,
.??, -

TestStatus??- 7
)??7 8
Enum??8 <
.??< =
Parse??= B
(??B C
typeof??C I
(??I J
NUnit??J O
.??O P
	Framework??P Y
.??Y Z

Interfaces??Z d
.??d e

TestStatus??e o
)??o p
,??p q

testStatus??r |
.??| }
ToString	??} Е
(
??Е Ж
)
??Ж З
)
??З И
;
??И Й
}@@ 	
privateBB 
staticBB 
stringBB 
ExtractOutputBB +
(BB+ ,
ITestResultAdaptorBB, >

testResultBB? I
)BBI J
{CC 	
varDD
 
stringBuilderDD 
=DD 
newDD !
StringBuilderDD" /
(DD/ 0
)DD0 1
;DD1 2
ifEE
 
(EE 

testResultEE 
.EE 
MessageEE  
!=EE! #
nullEE$ (
)EE( )
{FF
 
stringBuilderGG 
.GG 

AppendLineGG $
(GG$ %
$strGG% 0
)GG0 1
;GG1 2
stringBuilderHH 
.HH 

AppendLineHH $
(HH$ %

testResultHH% /
.HH/ 0
MessageHH0 7
)HH7 8
;HH8 9
}II
 
ifKK
 
(KK 
!KK 
stringKK 
.KK 
IsNullOrEmptyKK #
(KK# $

testResultKK$ .
.KK. /
OutputKK/ 5
)KK5 6
)KK6 7
{LL
 
stringBuilderMM 
.MM 

AppendLineMM $
(MM$ %
$strMM% /
)MM/ 0
;MM0 1
stringBuilderNN 
.NN 

AppendLineNN $
(NN$ %

testResultNN% /
.NN/ 0
OutputNN0 6
)NN6 7
;NN7 8
}OO
 
ifQQ
 
(QQ 
!QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ #
(QQ# $

testResultQQ$ .
.QQ. /

StackTraceQQ/ 9
)QQ9 :
)QQ: ;
{RR
 
stringBuilderSS 
.SS 

AppendLineSS $
(SS$ %
$strSS% 3
)SS3 4
;SS4 5
stringBuilderTT 
.TT 

AppendLineTT $
(TT$ %

testResultTT% /
.TT/ 0

StackTraceTT0 :
)TT: ;
;TT; <
}UU
 
varWW
 
resultWW 
=WW 
stringBuilderWW $
.WW$ %
ToStringWW% -
(WW- .
)WW. /
;WW/ 0
ifXX
 
(XX 
resultXX 
.XX 
LengthXX 
>XX 
$numXX 
)XX  
returnYY 
resultYY 
;YY 
return[[
 

testResult[[ 
.[[ 
Output[[ "
??[[# %
string[[& ,
.[[, -
Empty[[- 2
;[[2 3
}\\ 	
}]] 
}^^ ╜

ЮD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\GUIDProvider.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{2 3
class 
GUIDProvider 
: 
IGUIDGenerator %
{ 
public 

string 
ProjectGuid 
( 
string $
projectName% 0
,0 1
string2 8
assemblyName9 E
)E F
{ 
return !
SolutionGuidGenerator "
." #
GuidForProject# 1
(1 2
projectName2 =
+> ?
assemblyName@ L
)L M
;M N
} 
public		 

string		 
SolutionGuid		 
(		 
string		 %
projectName		& 1
,		1 2
string		3 9
	extension		: C
)		C D
{

 
return !
SolutionGuidGenerator "
." #
GuidForSolution# 2
(2 3
projectName3 >
,> ?
	extension@ I
)I J
;J K
} 
} 
} А
ЦD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderFileSystemWatcher.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 

static 
class "
RiderFileSystemWatcher .
{		 
public

 

static

 
void

 
InitWatcher

 "
(

" #
string

# )
watchDirectory

* 8
,

8 9
string 
filter 
, "
FileSystemEventHandler +
	onChanged, 5
)5 6
{ 
Task 

.
 
Run 
( 
( 
) 
=> 
{ 
var 
watcher 
= 
new 
FileSystemWatcher +
(+ ,
), -
;- .
watcher 
. 
Path 
= 
watchDirectory %
;% &
watcher 
. 
NotifyFilter 
= 
NotifyFilters ,
., -
	LastWrite- 6
;6 7
watcher 
. 
Filter 
= 
filter 
;  
watcher 
. 
Changed 
+= 
	onChanged $
;$ %
watcher 
. 
Deleted 
+= 
	onChanged $
;$ %
watcher 
. 
EnableRaisingEvents #
=$ %
true& *
;* +
return 
watcher 
; 
} 
) 
. 	
ContinueWith	 
( 
task 
=> 
{ 
try 
{ 	
var
 
watcher 
= 
task 
. 
Result #
;# $
	AppDomain
 
. 
CurrentDomain !
.! "
DomainUnload" .
+=/ 1
(2 3
EventHandler3 ?
)? @
(A B
(B C
_C D
,D E
__F H
)H I
=>J L
{
 
watcher 
. 
Dispose 
( 
) 
; 
}  
 
)   
;   
}!! 	
catch"" 
("" 
	Exception"" 
ex"" 
)"" 
{## 	
Debug$$
 
.$$ 
LogError$$ 
($$ 
ex$$ 
)$$ 
;$$ 
}%% 	
}&& 
,&& 
TaskScheduler&&	 
.&& -
!FromCurrentSynchronizationContext&& 8
(&&8 9
)&&9 :
)&&: ;
;&&; <
}'' 
}(( 
})) ы
ЦD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\LibcNativeInterop.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
Util  $
{ 
internal 

static 
class 
LibcNativeInterop )
{ 
[		 
	DllImport		 
(		 
$str		 
,		 
SetLastError		 #
=		$ %
true		& *
)		* +
]		+ ,
public

 

static

 
extern

 
IntPtr

 
realpath

  (
(

( )
string

) /
path

0 4
,

4 5
StringBuilder

6 C
resolved_path

D Q
)

Q R
;

R S
} 
} №m
дD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\SyncTestRunEventsHandler.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{ 
internal		 

class		 $
SyncTestRunEventsHandler		 )
:		* +
ScriptableSingleton		, ?
<		? @$
SyncTestRunEventsHandler		@ X
>		X Y
{

 
[ 
SerializeField 
] 
private 
string #
m_SessionId$ /
;/ 0
[ 
SerializeField 
] 
private 
string #
m_HandlerCodeBase$ 5
;5 6
[ 
SerializeField 
] 
private 
string #
m_HandlerTypeName$ 5
;5 6
[ 
SerializeField 
] 
private 
string #
[# $
]$ %!
m_HandlerDependencies& ;
;; <
[ 
SerializeField 
] 
private 
bool !
m_RunInitialized" 2
;2 3
private 
object 
	m_Handler 
; 
private 

MethodInfo (
m_OnSessionStartedMethodInfo 3
;3 4
private 

MethodInfo %
m_OnTestStartedMethodInfo 0
;0 1
private 

MethodInfo &
m_OnTestFinishedMethodInfo 1
;1 2
private 

MethodInfo )
m_OnSessionFinishedMethodInfo 4
;4 5
internal 
void 
InitRun 
( 
string  
	sessionId! *
,* +
string, 2
handlerCodeBase3 B
,B C
stringD J
handlerTypeNameK Z
,Z [
string\ b
[b c
]c d
handlerDependenciese x
)x y
{ 
if 
(	 

PluginSettings
 
.  
SelectedLoggingLevel -
>=. 0
LoggingLevel1 =
.= >
TRACE> C
)C D
Debug 
. 
Log 
( 
$str L
+M N
$" 

sessionId= 
{ 
	sessionId (
}( )
, ) +
"+ ,
+- .
$" 
	codeBase= 
{ 
handlerCodeBase -
}- .
, . 0
"0 1
+2 3
$" 
	typeName= 
{ 
handlerTypeName -
}- .
, . 0
"0 1
+2 3
$" 
dependencies= !
{! "
(" #
handlerDependencies# 6
==7 9
null: >
?? @
$strA C
:D E
stringF L
.L M
JoinM Q
(Q R
$strR V
,V W
handlerDependenciesX k
)k l
)l m
}m n
"n o
)o p
;p q
m_SessionId   
=   
	sessionId   
;   
m_HandlerCodeBase!! 
=!! 
handlerCodeBase!! )
;!!) *
m_HandlerTypeName"" 
="" 
handlerTypeName"" )
;"") *!
m_HandlerDependencies## 
=## 
handlerDependencies## 1
;##1 2
m_RunInitialized$$ 
=$$ 
true$$ 
;$$ !
CreateHandlerInstance&& 
(&& 
)&& 
;&& #
SafeInvokeHandlerMethod'' 
('' (
m_OnSessionStartedMethodInfo'' :
,'': ;
Array''< A
.''A B
Empty''B G
<''G H
object''H N
>''N O
(''O P
)''P Q
)''Q R
;''R S
}(( 
private** 
void** 
OnEnable** 
(** 
)** 
{++ 
if,, 
(,,	 

m_RunInitialized,,
 
),, !
CreateHandlerInstance-- 
(-- 
)-- 
;--  
}.. 
internal00 
void00 
OnTestStarted00 
(00  
string00  &
testId00' -
)00- .
{11 
if22 
(22	 

m_RunInitialized22
 
)22 #
SafeInvokeHandlerMethod33 
(33  %
m_OnTestStartedMethodInfo33  9
,339 :
new33; >
object33? E
[33E F
]33F G
{33H I
testId33I O
}33O P
)33P Q
;33Q R
}44 
internal66 
void66 
OnTestFinished66  
(66  !
)66! "
{77 
if88 
(88	 

m_RunInitialized88
 
)88 #
SafeInvokeHandlerMethod99 
(99  &
m_OnTestFinishedMethodInfo99  :
,99: ;
Array99< A
.99A B
Empty99B G
<99G H
object99H N
>99N O
(99O P
)99P Q
)99Q R
;99R S
}:: 
internal<< 
void<< 
OnRunFinished<< 
(<<  
)<<  !
{== 
if>> 
(>>	 

!>>
 
m_RunInitialized>> 
)>> 
return?? 
;?? #
SafeInvokeHandlerMethodAA 
(AA )
m_OnSessionFinishedMethodInfoAA ;
,AA; <
ArrayAA= B
.AAB C
EmptyAAC H
<AAH I
objectAAI O
>AAO P
(AAP Q
)AAQ R
)AAR S
;AAS T
CleanUpBB 
(BB 
)BB 
;BB 
m_RunInitializedCC 
=CC 
falseCC 
;CC 
}DD 
privateFF 
voidFF #
SafeInvokeHandlerMethodFF (
(FF( )

MethodInfoFF) 3

methodInfoFF4 >
,FF> ?
objectFF@ F
[FFF G
]FFG H
argsFFI M
)FFM N
{GG 
tryHH 	
{II 

methodInfoJJ 
?JJ 
.JJ 
InvokeJJ 
(JJ 
	m_HandlerJJ $
,JJ$ %
argsJJ& *
)JJ* +
;JJ+ ,
}KK 
catchLL 
(LL 
	ExceptionLL 
eLL 
)LL 
{MM 
DebugNN 
.NN 
LogExceptionNN 
(NN 
eNN 
)NN 
;NN 
}OO 
}PP 
privateRR 
voidRR !
CreateHandlerInstanceRR &
(RR& '
)RR' (
{SS 
tryTT 	
{UU 
ifVV 

(VV !
m_HandlerDependenciesVV !
!=VV" $
nullVV% )
)VV) *
foreachWW
 
(WW 
varWW 

dependencyWW !
inWW" $!
m_HandlerDependenciesWW% :
)WW: ;
{XX
 
ifYY 
(YY 
PluginSettingsYY 
.YY  
SelectedLoggingLevelYY 3
>=YY4 6
LoggingLevelYY7 C
.YYC D
TRACEYYD I
)YYI J
DebugZZ 
.ZZ 
LogZZ 
(ZZ 
$"ZZ 5
)Rider Test Runner: loading assembly from ZZ C
{ZZC D

dependencyZZD N
}ZZN O
"ZZO P
)ZZP Q
;ZZQ R
Assembly[[ 
.[[ 
LoadFrom[[ 
([[ 

dependency[[ (
)[[( )
;[[) *
}\\
 
if]] 

(]] 
PluginSettings]] 
.]]  
SelectedLoggingLevel]] /
>=]]0 2
LoggingLevel]]3 ?
.]]? @
TRACE]]@ E
)]]E F
Debug^^
 
.^^ 
Log^^ 
(^^ 
$"^^ 5
)Rider Test Runner: loading assembly from ^^ ?
{^^? @
m_HandlerCodeBase^^@ Q
}^^Q R
"^^R S
)^^S T
;^^T U
var__ 
assembly__ 
=__ 
Assembly__ 
.__  
LoadFrom__  (
(__( )
m_HandlerCodeBase__) :
)__: ;
;__; <
var`` 
type`` 
=`` 
assembly`` 
.`` 
GetType`` #
(``# $
m_HandlerTypeName``$ 5
)``5 6
;``6 7
ifaa 

(aa 
typeaa 
==aa 
nullaa 
)aa 
{bb 	
Debugcc
 
.cc 
LogErrorcc 
(cc 
$"cc %
Rider Test Runner: type 'cc 4
{cc4 5
m_HandlerTypeNamecc5 F
}ccF G%
' not found in assembly 'ccG `
{cc` a
assemblycca i
.cci j
FullNameccj r
}ccr s
'ccs t
"cct u
)ccu v
;ccv w
returndd
 
;dd 
}ee 	
ifgg 

(gg 
PluginSettingsgg 
.gg  
SelectedLoggingLevelgg /
>=gg0 2
LoggingLevelgg3 ?
.gg? @
TRACEgg@ E
)ggE F
Debughh
 
.hh 
Loghh 
(hh 
$"hh :
.Rider Test Runner: creating instance of type 'hh D
{hhD E
typehhE I
.hhI J!
AssemblyQualifiedNamehhJ _
}hh_ `
'hh` a
"hha b
)hhb c
;hhc d
	m_Handlerii 
=ii 
	Activatorii 
.ii 
CreateInstanceii ,
(ii, -
typeii- 1
,ii1 2
m_SessionIdii3 >
)ii> ?
;ii? @(
m_OnSessionStartedMethodInfokk $
=kk% &
typekk' +
.kk+ ,
	GetMethodkk, 5
(kk5 6
$strkk6 H
,kkH I
BindingFlagskkJ V
.kkV W
InstancekkW _
|kk` a
BindingFlagskkb n
.kkn o
Publickko u
)kku v
;kkv w
ifll 

(ll (
m_OnSessionStartedMethodInfoll (
==ll) +
nullll, 0
)ll0 1
{mm 	
Debugnn
 
.nn 
LogErrornn 
(nn 
$"nn J
>Rider Test Runner: OnSessionStarted method not found in type='nn Y
{nnY Z
typennZ ^
.nn^ _!
AssemblyQualifiedNamenn_ t
}nnt u
'nnu v
"nnv w
)nnw x
;nnx y
returnoo
 
;oo 
}pp 	%
m_OnTestStartedMethodInforr !
=rr" #
typerr$ (
.rr( )
	GetMethodrr) 2
(rr2 3
$strrr3 B
,rrB C
BindingFlagsrrD P
.rrP Q
InstancerrQ Y
|rrZ [
BindingFlagsrr\ h
.rrh i
Publicrri o
)rro p
;rrp q
ifss 

(ss %
m_OnTestStartedMethodInfoss %
==ss& (
nullss) -
)ss- .
{tt 	
Debuguu
 
.uu 
LogErroruu 
(uu 
$"uu G
;Rider Test Runner: OnTestStarted method not found in type='uu V
{uuV W
typeuuW [
.uu[ \!
AssemblyQualifiedNameuu\ q
}uuq r
'uur s
"uus t
)uut u
;uuu v
returnvv
 
;vv 
}ww 	&
m_OnTestFinishedMethodInfoyy "
=yy# $
typeyy% )
.yy) *
	GetMethodyy* 3
(yy3 4
$stryy4 D
,yyD E
BindingFlagsyyF R
.yyR S
InstanceyyS [
|yy\ ]
BindingFlagsyy^ j
.yyj k
Publicyyk q
)yyq r
;yyr s
ifzz 

(zz &
m_OnTestFinishedMethodInfozz &
==zz' )
nullzz* .
)zz. /
{{{ 	
Debug||
 
.|| 
LogError|| 
(|| 
$"|| H
<Rider Test Runner: OnTestFinished method not found in type='|| W
{||W X
type||X \
.||\ ]!
AssemblyQualifiedName||] r
}||r s
'||s t
"||t u
)||u v
;||v w
return}}
 
;}} 
}~~ 	+
m_OnSessionFinishedMethodInfo
АА %
=
АА& '
type
АА( ,
.
АА, -
	GetMethod
АА- 6
(
АА6 7
$str
АА7 J
,
ААJ K
BindingFlags
ААL X
.
ААX Y
Instance
ААY a
|
ААb c
BindingFlags
ААd p
.
ААp q
Public
ААq w
)
ААw x
;
ААx y
if
ББ 

(
ББ +
m_OnSessionFinishedMethodInfo
ББ )
==
ББ* ,
null
ББ- 1
)
ББ1 2
Debug
ВВ
 
.
ВВ 
LogError
ВВ 
(
ВВ 
$"
ВВ M
?Rider Test Runner: OnSessionFinished method not found in type='
ВВ Z
{
ВВZ [
type
ВВ[ _
.
ВВ_ `#
AssemblyQualifiedName
ВВ` u
}
ВВu v
'
ВВv w
"
ВВw x
)
ВВx y
;
ВВy z
}
ГГ 
catch
ДД 
(
ДД 
	Exception
ДД 
e
ДД 
)
ДД 
{
ЕЕ 
Debug
ЖЖ 
.
ЖЖ 
LogException
ЖЖ 
(
ЖЖ 
e
ЖЖ 
)
ЖЖ 
;
ЖЖ 
}
ЗЗ 
}
ИИ 
private
КК 
void
КК 
CleanUp
КК 
(
КК 
)
КК 
{
ЛЛ 
	m_Handler
ММ 
=
ММ 
null
ММ 
;
ММ *
m_OnSessionStartedMethodInfo
НН "
=
НН# $
null
НН% )
;
НН) *+
m_OnSessionFinishedMethodInfo
ОО #
=
ОО$ %
null
ОО& *
;
ОО* +'
m_OnTestStartedMethodInfo
ПП 
=
ПП  !
null
ПП" &
;
ПП& '(
m_OnTestFinishedMethodInfo
РР  
=
РР! "
null
РР# '
;
РР' (
}
СС 
}
ТТ 
}УУ П
ШD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\CallbackData.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{ 
[ 
UsedImplicitly 
] 
public 
class	 
CallbackData 
: 
ScriptableSingleton 1
<1 2
CallbackData2 >
>> ?
{ 
public 

bool 
isRider 
; 
[ 
UsedImplicitly 
] 
public 
static "
event# (
EventHandler) 5
Changed6 =
=> ?
(@ A
senderA G
,G H
argsI M
)M N
=>O Q
{R S
}T U
;U V
internal 
void 
RaiseChangedEvent #
(# $
)$ %
{ 
Changed 
( 
null 
, 
	EventArgs 
. 
Empty #
)# $
;$ %
} 
public 

List 
< 
	TestEvent 
> 
events !
=" #
new$ '
List( ,
<, -
	TestEvent- 6
>6 7
(7 8
)8 9
;9 :
[ 
UsedImplicitly 
] 
public 

void 
Clear 
( 
) 
{ 
events 
. 
Clear 
( 
) 
; 
}   
}!! 
}"" ┬├
СD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderScriptEditor.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
[ 
InitializeOnLoad 
] 
internal 

class 
RiderScriptEditor "
:# $
IExternalCodeEditor% 8
{ 

IDiscovery 
m_Discoverability  
;  !

IGenerator 
m_ProjectGeneration "
;" #
RiderInitializer 
m_Initiliazer "
=# $
new% (
RiderInitializer) 9
(9 :
): ;
;; <
static 

RiderScriptEditor 
( 
) 
{ 
try 	
{ 
var 
projectGeneration 
= 
new  #
ProjectGeneration$ 5
.5 6
ProjectGeneration6 G
(G H
)H I
;I J
var 
editor 
= 
new 
RiderScriptEditor *
(* +
new+ .
	Discovery/ 8
(8 9
)9 :
,: ;
projectGeneration< M
)M N
;N O

CodeEditor 
. 
Register 
( 
editor "
)" #
;# $
var 
path 
= 
GetEditorRealPath $
($ %
CurrentEditor% 2
)2 3
;3 4
if!! 

(!! 
IsRiderInstallation!! 
(!!  
path!!  $
)!!$ %
)!!% &
{"" 	
RiderPathLocator##
 
.## 
	RiderInfo## $
[##$ %
]##% &
installations##' 4
=##5 6
null##7 ;
;##; <
if%%
 
(%% 
!%% !
RiderScriptEditorData%% $
.%%$ %
instance%%% -
.%%- .
initializedOnce%%. =
)%%= >
{&&
 
installations'' 
='' 
RiderPathLocator'' ,
.'', -
GetAllRiderPaths''- =
(''= >
)''> ?
.''? @
OrderBy''@ G
(''G H
a''H I
=>''J L
a''M N
.''N O
BuildNumber''O Z
)''Z [
.''[ \
ToArray''\ c
(''c d
)''d e
;''e f
if)) 
()) 
installations)) 
.)) 
Any)) !
())! "
)))" #
&&))$ &
installations))' 4
.))4 5
All))5 8
())8 9
a))9 :
=>)); =
GetEditorRealPath))> O
())O P
a))P Q
.))Q R
Path))R V
)))V W
!=))X Z
path))[ _
)))_ `
)))` a
{** 
if++ 
(++ 
RiderPathLocator++ "
.++" #
GetIsToolbox++# /
(++/ 0
path++0 4
)++4 5
)++5 6
{,, 
var--  
toolboxInstallations-- (
=--) *
installations--+ 8
.--8 9
Where--9 >
(--> ?
a--? @
=>--A C
a--D E
.--E F
	IsToolbox--F O
)--O P
.--P Q
ToArray--Q X
(--X Y
)--Y Z
;--Z [
if.. 
(..  
toolboxInstallations.. (
...( )
Any..) ,
(.., -
)..- .
)... /
{// 
var00 
	newEditor00 
=00  ! 
toolboxInstallations00" 6
.006 7
Last007 ;
(00; <
)00< =
.00= >
Path00> B
;00B C

CodeEditor11 
.11 #
SetExternalScriptEditor11 4
(114 5
	newEditor115 >
)11> ?
;11? @
path22 
=22 
	newEditor22 "
;22" #
}33 
else44 
{55 
var66 
	newEditor66 
=66  !
installations66" /
.66/ 0
Last660 4
(664 5
)665 6
.666 7
Path667 ;
;66; <

CodeEditor77 
.77 #
SetExternalScriptEditor77 4
(774 5
	newEditor775 >
)77> ?
;77? @
path88 
=88 
	newEditor88 "
;88" #
}99 
}:: 
else;; 
{<< 
var== 
newEditorName== !
===" #
installations==$ 1
.==1 2
Last==2 6
(==6 7
)==7 8
.==8 9
Presentation==9 E
;==E F
Debug>> 
.>> 

LogWarning>>  
(>>  !
$">>! #@
4Consider updating External Editor in Unity to Rider >># W
{>>W X
newEditorName>>X e
}>>e f
.>>f g
">>g h
)>>h i
;>>i j
}?? 
}@@ /
#ShowWarningOnUnexpectedScriptEditorBB /
(BB/ 0
pathBB0 4
)BB4 5
;BB5 6!
RiderScriptEditorDataCC !
.CC! "
instanceCC" *
.CC* +
initializedOnceCC+ :
=CC; <
trueCC= A
;CCA B
}DD
 
ifFF
 
(FF 
!FF 
FileSystemUtilFF 
.FF 
EditorPathExistsFF .
(FF. /
pathFF/ 3
)FF3 4
)FF4 5
{GG
 
ifHH 
(HH 
installationsHH 
==HH  
nullHH! %
)HH% &
installationsII 
=II 
RiderPathLocatorII .
.II. /
GetAllRiderPathsII/ ?
(II? @
)II@ A
.IIA B
OrderByIIB I
(III J
aIIJ K
=>IIL N
aIIO P
.IIP Q
BuildNumberIIQ \
)II\ ]
.II] ^
ToArrayII^ e
(IIe f
)IIf g
;IIg h
ifJJ 
(JJ 
installationsJJ 
.JJ 
AnyJJ !
(JJ! "
)JJ" #
)JJ# $
{KK 
varLL 
	newEditorLL 
=LL 
installationsLL +
.LL+ ,
LastLL, 0
(LL0 1
)LL1 2
.LL2 3
PathLL3 7
;LL7 8

CodeEditorMM 
.MM #
SetExternalScriptEditorMM 0
(MM0 1
	newEditorMM1 :
)MM: ;
;MM; <
pathNN 
=NN 
	newEditorNN 
;NN 
}OO 
}PP
 !
RiderScriptEditorDataRR
 
.RR  
instanceRR  (
.RR( )
InitRR) -
(RR- .
)RR. /
;RR/ 0
editorTT
 
.TT '
CreateSolutionIfDoesntExistTT ,
(TT, -
)TT- .
;TT. /
ifUU
 
(UU !
RiderScriptEditorDataUU #
.UU# $
instanceUU$ ,
.UU, -"
shouldLoadEditorPluginUU- C
)UUC D
{VV
 
editorWW 
.WW 
m_InitiliazerWW  
.WW  !

InitializeWW! +
(WW+ ,
pathWW, 0
)WW0 1
;WW1 2
}XX
 "
RiderFileSystemWatcherZZ
  
.ZZ  !
InitWatcherZZ! ,
(ZZ, -
	Directory[[ 
.[[ 
GetCurrentDirectory[[ )
([[) *
)[[* +
,[[+ ,
$str[[- 2
,[[2 3
([[4 5
sender[[5 ;
,[[; <
args[[= A
)[[A B
=>[[C E
{\\ 
var]] 
	extension]] 
=]] 
Path]] "
.]]" #
GetExtension]]# /
(]]/ 0
args]]0 4
.]]4 5
Name]]5 9
)]]9 :
;]]: ;
if^^ 
(^^ 
	extension^^ 
==^^ 
$str^^ %
||^^& (
	extension^^) 2
==^^3 5
$str^^6 ?
)^^? @!
RiderScriptEditorData__ %
.__% &
instance__& .
.__. /

hasChanges__/ 9
=__: ;
true__< @
;__@ A
}`` 
)`` 
;`` "
RiderFileSystemWatcherbb
  
.bb  !
InitWatcherbb! ,
(bb, -
Pathcc 
.cc 
Combinecc 
(cc 
	Directorycc "
.cc" #
GetCurrentDirectorycc# 6
(cc6 7
)cc7 8
,cc8 9
$strcc: C
)ccC D
,ccD E
$strdd 2
,dd2 3
(ee 
senderee 
,ee 
argsee 
)ee 
=>ee 
{ee !
RiderScriptEditorDataee  5
.ee5 6
instanceee6 >
.ee> ?

hasChangesee? I
=eeJ K
trueeeL P
;eeP Q
}eeR S
)eeS T
;eeT U"
RiderFileSystemWatchergg
  
.gg  !
InitWatchergg! ,
(gg, -
Pathhh 
.hh 
Combinehh 
(hh 
	Directoryhh "
.hh" #
GetCurrentDirectoryhh# 6
(hh6 7
)hh7 8
,hh8 9
$strhh: D
)hhD E
,hhE F
$strii 
,ii 
(ii 
senderii $
,ii$ %
argsii& *
)ii* +
=>ii, .
{ii/ 0!
RiderScriptEditorDataii1 F
.iiF G
instanceiiG O
.iiO P

hasChangesiiP Z
=ii[ \
trueii] a
;iia b
}iic d
)iid e
;iie f#
EditorUserBuildSettingsmm
 !
.mm! "$
activeBuildTargetChangedmm" :
+=mm; =
(mm> ?
)mm? @
=>mmA C
{oo
 !
RiderScriptEditorDatapp !
.pp! "
instancepp" *
.pp* +

hasChangespp+ 5
=pp6 7
truepp8 <
;pp< =
}qq
 
;qq 
}rr 	
}ss 
catchtt 
(tt 
	Exceptiontt 
ett 
)tt 
{uu 
Debugvv 
.vv 
LogExceptionvv 
(vv 
evv 
)vv 
;vv 
}ww 
}xx 
privatezz 
staticzz 
voidzz /
#ShowWarningOnUnexpectedScriptEditorzz ;
(zz; <
stringzz< B
pathzzC G
)zzG H
{{{ 
try}} 	
{~~ 
var 
args 
= 
Environment 
. 
GetCommandLineArgs 1
(1 2
)2 3
;3 4
var
АА 
commandlineParser
АА 
=
АА 
new
АА  #
CommandLineParser
АА$ 5
(
АА5 6
args
АА6 :
)
АА: ;
;
АА; <
if
ББ 

(
ББ 
commandlineParser
ББ 
.
ББ 
Options
ББ %
.
ББ% &
ContainsKey
ББ& 1
(
ББ1 2
$str
ББ2 >
)
ББ> ?
)
ББ? @
{
ВВ 	
var
ГГ
 
originRiderPath
ГГ 
=
ГГ 
commandlineParser
ГГ  1
.
ГГ1 2
Options
ГГ2 9
[
ГГ9 :
$str
ГГ: F
]
ГГF G
;
ГГG H
var
ДД
 
originRealPath
ДД 
=
ДД 
GetEditorRealPath
ДД 0
(
ДД0 1
originRiderPath
ДД1 @
)
ДД@ A
;
ДДA B
var
ЕЕ
 
originVersion
ЕЕ 
=
ЕЕ 
RiderPathLocator
ЕЕ .
.
ЕЕ. /
GetBuildNumber
ЕЕ/ =
(
ЕЕ= >
originRealPath
ЕЕ> L
)
ЕЕL M
;
ЕЕM N
var
ЖЖ
 
version
ЖЖ 
=
ЖЖ 
RiderPathLocator
ЖЖ (
.
ЖЖ( )
GetBuildNumber
ЖЖ) 7
(
ЖЖ7 8
path
ЖЖ8 <
)
ЖЖ< =
;
ЖЖ= >
if
ЗЗ
 
(
ЗЗ 
originVersion
ЗЗ 
!=
ЗЗ 
null
ЗЗ #
&&
ЗЗ$ &
originVersion
ЗЗ' 4
!=
ЗЗ5 7
version
ЗЗ8 ?
)
ЗЗ? @
{
ИИ
 
Debug
ЙЙ 
.
ЙЙ 

LogWarning
ЙЙ 
(
ЙЙ 
$strЙЙ и
)ЙЙи й
;ЙЙй к
Debug
КК 
.
КК 
Log
КК 
(
КК 
$"
КК )
Unity was started by Rider 
КК 3
{
КК3 4
originVersion
КК4 A
}
ККA B/
!, but external editor is set to: 
ККB c
{
ККc d
path
ККd h
}
ККh i
"
ККi j
)
ККj k
;
ККk l
}
ЛЛ
 
}
ММ 	
}
НН 
catch
ОО 
(
ОО 
	Exception
ОО 
e
ОО 
)
ОО 
{
ПП 
Debug
РР 
.
РР 
LogException
РР 
(
РР 
e
РР 
)
РР 
;
РР 
}
СС 
}
ТТ 
internal
ФФ 
static
ФФ 
string
ФФ 
GetEditorRealPath
ФФ ,
(
ФФ, -
string
ФФ- 3
path
ФФ4 8
)
ФФ8 9
{
ХХ 
if
ЦЦ 
(
ЦЦ	 

string
ЦЦ
 
.
ЦЦ 
IsNullOrEmpty
ЦЦ 
(
ЦЦ 
path
ЦЦ #
)
ЦЦ# $
)
ЦЦ$ %
{
ЧЧ 
return
ШШ 
path
ШШ 
;
ШШ 
}
ЩЩ 
if
ЫЫ 
(
ЫЫ	 

!
ЫЫ
 
FileSystemUtil
ЫЫ 
.
ЫЫ 
EditorPathExists
ЫЫ *
(
ЫЫ* +
path
ЫЫ+ /
)
ЫЫ/ 0
)
ЫЫ0 1
return
ЬЬ 
path
ЬЬ 
;
ЬЬ 
if
ЮЮ 
(
ЮЮ	 


SystemInfo
ЮЮ
 
.
ЮЮ #
operatingSystemFamily
ЮЮ *
!=
ЮЮ+ -#
OperatingSystemFamily
ЮЮ. C
.
ЮЮC D
Windows
ЮЮD K
)
ЮЮK L
{
ЯЯ 
var
аа 
realPath
аа 
=
аа 
FileSystemUtil
аа %
.
аа% &
GetFinalPathName
аа& 6
(
аа6 7
path
аа7 ;
)
аа; <
;
аа< =
if
гг 

(
гг 

SystemInfo
гг 
.
гг #
operatingSystemFamily
гг ,
==
гг- /#
OperatingSystemFamily
гг0 E
.
ггE F
Linux
ггF K
)
ггK L
{
дд 	
if
ее
 
(
ее 
new
ее 
FileInfo
ее 
(
ее 
path
ее 
)
ее  
.
ее  !
Name
ее! %
.
ее% &
ToLowerInvariant
ее& 6
(
ее6 7
)
ее7 8
==
ее9 ;
$str
ее< C
&&
ееD F
new
жж 
FileInfo
жж 
(
жж 
realPath
жж #
)
жж# $
.
жж$ %
Name
жж% )
.
жж) *
ToLowerInvariant
жж* :
(
жж: ;
)
жж; <
==
жж= ?
$str
жж@ F
)
жжF G
{
зз
 
var
ии 
snapInstallPath
ии 
=
ии  !
$str
ии" D
;
ииD E
if
йй 
(
йй 
new
йй 
FileInfo
йй 
(
йй 
snapInstallPath
йй ,
)
йй, -
.
йй- .
Exists
йй. 4
)
йй4 5
return
кк 
snapInstallPath
кк $
;
кк$ %
}
лл
 
}
мм 	
return
пп 
realPath
пп 
;
пп 
}
░░ 
return
▓▓ 
path
▓▓ 
;
▓▓ 
}
││ 
public
╡╡ 

RiderScriptEditor
╡╡ 
(
╡╡ 

IDiscovery
╡╡ '
	discovery
╡╡( 1
,
╡╡1 2

IGenerator
╡╡3 =
projectGeneration
╡╡> O
)
╡╡O P
{
╢╢ 
m_Discoverability
╖╖ 
=
╖╖ 
	discovery
╖╖ #
;
╖╖# $!
m_ProjectGeneration
╕╕ 
=
╕╕ 
projectGeneration
╕╕ -
;
╕╕- .
}
╣╣ 
private
╗╗ 
static
╗╗ 
string
╗╗ 
[
╗╗ 
]
╗╗ 
defaultExtensions
╗╗ -
{
╝╝ 
get
╜╜ 	
{
╛╛ 
var
┐┐ 
customExtensions
┐┐ 
=
┐┐ 
new
┐┐ "
[
┐┐" #
]
┐┐# $
{
┐┐% &
$str
┐┐& ,
,
┐┐, -
$str
┐┐. 6
,
┐┐6 7
$str
┐┐8 =
,
┐┐= >
$str
┐┐? E
}
┐┐E F
;
┐┐F G
return
└└ 
EditorSettings
└└ 
.
└└ 0
"projectGenerationBuiltinExtensions
└└ @
.
└└@ A
Concat
└└A G
(
└└G H
EditorSettings
└└H V
.
└└V W-
projectGenerationUserExtensions
└└W v
)
└└v w
.
┴┴
 
Concat
┴┴ 
(
┴┴ 
customExtensions
┴┴ "
)
┴┴" #
.
┴┴# $
Distinct
┴┴$ ,
(
┴┴, -
)
┴┴- .
.
┴┴. /
ToArray
┴┴/ 6
(
┴┴6 7
)
┴┴7 8
;
┴┴8 9
}
┬┬ 
}
├├ 
private
┼┼ 
static
┼┼ 
string
┼┼ 
[
┼┼ 
]
┼┼ 
HandledExtensions
┼┼ -
{
╞╞ 
get
╟╟ 	
{
╚╚ 
return
╔╔ %
HandledExtensionsString
╔╔ &
.
╔╔& '
Split
╔╔' ,
(
╔╔, -
new
╔╔- 0
[
╔╔0 1
]
╔╔1 2
{
╔╔3 4
$char
╔╔4 7
}
╔╔7 8
,
╔╔8 9 
StringSplitOptions
╔╔: L
.
╔╔L M 
RemoveEmptyEntries
╔╔M _
)
╔╔_ `
.
╔╔` a
Select
╔╔a g
(
╔╔g h
s
╔╔h i
=>
╔╔j l
s
╔╔m n
.
╔╔n o
	TrimStart
╔╔o x
(
╔╔x y
$char
╔╔y |
,
╔╔| }
$char╔╔~ Б
)╔╔Б В
)╔╔В Г
.
╩╩
 
ToArray
╩╩ 
(
╩╩ 
)
╩╩ 
;
╩╩ 
}
╦╦ 
}
╠╠ 
private
╬╬ 
static
╬╬ 
string
╬╬ %
HandledExtensionsString
╬╬ 1
{
╧╧ 
get
╨╨ 	
{
╨╨
 
return
╨╨ 
EditorPrefs
╨╨ 
.
╨╨ 
	GetString
╨╨ (
(
╨╨( )
$str
╨╨) ?
,
╨╨? @
string
╨╨A G
.
╨╨G H
Join
╨╨H L
(
╨╨L M
$str
╨╨M P
,
╨╨P Q
defaultExtensions
╨╨R c
)
╨╨c d
)
╨╨d e
;
╨╨e f
}
╨╨f g
set
╤╤ 	
{
╤╤
 
EditorPrefs
╤╤ 
.
╤╤ 
	SetString
╤╤ !
(
╤╤! "
$str
╤╤" 8
,
╤╤8 9
value
╤╤: ?
)
╤╤? @
;
╤╤@ A
}
╤╤B C
}
╥╥ 
private
╘╘ 
static
╘╘ 
bool
╘╘ 
SupportsExtension
╘╘ )
(
╘╘) *
string
╘╘* 0
path
╘╘1 5
)
╘╘5 6
{
╒╒ 
var
╓╓ 	
	extension
╓╓
 
=
╓╓ 
Path
╓╓ 
.
╓╓ 
GetExtension
╓╓ '
(
╓╓' (
path
╓╓( ,
)
╓╓, -
;
╓╓- .
if
╫╫ 
(
╫╫	 

string
╫╫
 
.
╫╫ 
IsNullOrEmpty
╫╫ 
(
╫╫ 
	extension
╫╫ (
)
╫╫( )
)
╫╫) *
return
╪╪ 
false
╪╪ 
;
╪╪ 
return
┌┌ 
	extension
┌┌ 
==
┌┌ 
$str
┌┌ 
||
┌┌  "
HandledExtensions
┌┌# 4
.
┌┌4 5
Contains
┌┌5 =
(
┌┌= >
	extension
┌┌> G
.
┌┌G H
	TrimStart
┌┌H Q
(
┌┌Q R
$char
┌┌R U
)
┌┌U V
)
┌┌V W
;
┌┌W X
}
██ 
public
▌▌ 

void
▌▌ 
OnGUI
▌▌ 
(
▌▌ 
)
▌▌ 
{
▐▐ 
if
▀▀ 
(
▀▀	 
#
RiderScriptEditorData
▀▀
 
.
▀▀  
instance
▀▀  (
.
▀▀( )$
shouldLoadEditorPlugin
▀▀) ?
)
▀▀? @
{
рр %
HandledExtensionsString
сс 
=
сс  !
EditorGUILayout
сс" 1
.
сс1 2
	TextField
сс2 ;
(
сс; <
new
сс< ?

GUIContent
сс@ J
(
ссJ K
$str
ссK a
)
ссa b
,
ссb c%
HandledExtensionsString
ссd {
)
сс{ |
;
сс| }
}
тт 
EditorGUILayout
фф 
.
фф 

LabelField
фф  
(
фф  !
$str
фф! >
)
фф> ?
;
фф? @
	EditorGUI
хх 
.
хх 
indentLevel
хх 
++
хх 
;
хх 
SettingsButton
цц 
(
цц #
ProjectGenerationFlag
цц *
.
цц* +
Embedded
цц+ 3
,
цц3 4
$str
цц5 H
,
ццH I
$str
ццJ L
)
ццL M
;
ццM N
SettingsButton
чч 
(
чч #
ProjectGenerationFlag
чч *
.
чч* +
Local
чч+ 0
,
чч0 1
$str
чч2 B
,
ччB C
$str
ччD F
)
ччF G
;
ччG H
SettingsButton
шш 
(
шш #
ProjectGenerationFlag
шш *
.
шш* +
Registry
шш+ 3
,
шш3 4
$str
шш5 H
,
шшH I
$str
шшJ L
)
шшL M
;
шшM N
SettingsButton
щщ 
(
щщ #
ProjectGenerationFlag
щщ *
.
щщ* +
Git
щщ+ .
,
щщ. /
$str
щщ0 >
,
щщ> ?
$str
щщ@ B
)
щщB C
;
щщC D
SettingsButton
ъъ 
(
ъъ #
ProjectGenerationFlag
ъъ *
.
ъъ* +
BuiltIn
ъъ+ 2
,
ъъ2 3
$str
ъъ4 G
,
ъъG H
$str
ъъI K
)
ъъK L
;
ъъL M
SettingsButton
ьь 
(
ьь #
ProjectGenerationFlag
ьь *
.
ьь* +
LocalTarBall
ьь+ 7
,
ьь7 8
$str
ьь9 H
,
ььH I
$str
ььJ L
)
ььL M
;
ььM N
SettingsButton
юю 
(
юю #
ProjectGenerationFlag
юю *
.
юю* +
Unknown
юю+ 2
,
юю2 3
$str
юю4 S
,
ююS T
$str
ююU W
)
ююW X
;
ююX Y
SettingsButton
яя 
(
яя #
ProjectGenerationFlag
яя *
.
яя* +
PlayerAssemblies
яя+ ;
,
яя; <
$str
яя= N
,
яяN O
$strяяP н
)яян о
;яяо п$
RegenerateProjectFiles
ЁЁ 
(
ЁЁ 
)
ЁЁ 
;
ЁЁ 
	EditorGUI
ёё 
.
ёё 
indentLevel
ёё 
--
ёё 
;
ёё 
}
ЄЄ 
void
ЇЇ $
RegenerateProjectFiles
ЇЇ	 
(
ЇЇ  
)
ЇЇ  !
{
її 
var
ЎЎ 	
rect
ЎЎ
 
=
ЎЎ 
	EditorGUI
ЎЎ 
.
ЎЎ 
IndentedRect
ЎЎ '
(
ЎЎ' (
EditorGUILayout
ЎЎ( 7
.
ЎЎ7 8
GetControlRect
ЎЎ8 F
(
ЎЎF G
new
ЎЎG J
GUILayoutOption
ЎЎK Z
[
ЎЎZ [
]
ЎЎ[ \
{
ЎЎ] ^
}
ЎЎ^ _
)
ЎЎ_ `
)
ЎЎ` a
;
ЎЎa b
rect
ўў 

.
ўў
 
width
ўў 
=
ўў 
$num
ўў 
;
ўў 
if
°° 
(
°°	 

GUI
°°
 
.
°° 
Button
°° 
(
°° 
rect
°° 
,
°° 
$str
°° 5
)
°°5 6
)
°°6 7
{
∙∙ !
m_ProjectGeneration
·· 
.
·· 
Sync
··  
(
··  !
)
··! "
;
··" #
}
√√ 
}
№№ 
void
■■ 
SettingsButton
■■	 
(
■■ #
ProjectGenerationFlag
■■ -

preference
■■. 8
,
■■8 9
string
■■: @

guiMessage
■■A K
,
■■K L
string
■■M S
toolTip
■■T [
)
■■[ \
{
   
var
АА 	
	prevValue
АА
 
=
АА !
m_ProjectGeneration
АА )
.
АА) *"
AssemblyNameProvider
АА* >
.
АА> ?#
ProjectGenerationFlag
АА? T
.
ААT U
HasFlag
ААU \
(
АА\ ]

preference
АА] g
)
ААg h
;
ААh i
var
ББ 	
newValue
ББ
 
=
ББ 
EditorGUILayout
ББ $
.
ББ$ %
Toggle
ББ% +
(
ББ+ ,
new
ББ, /

GUIContent
ББ0 :
(
ББ: ;

guiMessage
ББ; E
,
ББE F
toolTip
ББG N
)
ББN O
,
ББO P
	prevValue
ББQ Z
)
ББZ [
;
ББ[ \
if
ВВ 
(
ВВ	 

newValue
ВВ
 
!=
ВВ 
	prevValue
ВВ 
)
ВВ  
{
ГГ !
m_ProjectGeneration
ДД 
.
ДД "
AssemblyNameProvider
ДД 0
.
ДД0 1%
ToggleProjectGeneration
ДД1 H
(
ДДH I

preference
ДДI S
)
ДДS T
;
ДДT U
}
ЕЕ 
}
ЖЖ 
public
ИИ 

void
ИИ 
SyncIfNeeded
ИИ 
(
ИИ 
string
ИИ #
[
ИИ# $
]
ИИ$ %

addedFiles
ИИ& 0
,
ИИ0 1
string
ИИ2 8
[
ИИ8 9
]
ИИ9 :
deletedFiles
ИИ; G
,
ИИG H
string
ИИI O
[
ИИO P
]
ИИP Q

movedFiles
ИИR \
,
ИИ\ ]
string
ИИ^ d
[
ИИd e
]
ИИe f
movedFromFiles
ИИg u
,
ИИu v
string
ЙЙ 
[
ЙЙ 
]
ЙЙ 
importedFiles
ЙЙ 
)
ЙЙ 
{
КК !
m_ProjectGeneration
ЛЛ 
.
ЛЛ 
SyncIfNeeded
ЛЛ &
(
ЛЛ& '

addedFiles
ЛЛ' 1
.
ЛЛ1 2
Union
ЛЛ2 7
(
ЛЛ7 8
deletedFiles
ЛЛ8 D
)
ЛЛD E
.
ЛЛE F
Union
ЛЛF K
(
ЛЛK L

movedFiles
ЛЛL V
)
ЛЛV W
.
ЛЛW X
Union
ЛЛX ]
(
ЛЛ] ^
movedFromFiles
ЛЛ^ l
)
ЛЛl m
,
ЛЛm n
importedFiles
ММ 
)
ММ 
;
ММ 
}
НН 
public
ПП 

void
ПП 
SyncAll
ПП 
(
ПП 
)
ПП 
{
РР 
AssetDatabase
СС 
.
СС 
Refresh
СС 
(
СС 
)
СС 
;
СС !
m_ProjectGeneration
ТТ 
.
ТТ 
SyncIfNeeded
ТТ &
(
ТТ& '
new
ТТ' *
string
ТТ+ 1
[
ТТ1 2
]
ТТ2 3
{
ТТ4 5
}
ТТ6 7
,
ТТ7 8
new
ТТ9 <
string
ТТ= C
[
ТТC D
]
ТТD E
{
ТТF G
}
ТТH I
)
ТТI J
;
ТТJ K
}
УУ 
public
ХХ 

void
ХХ 

Initialize
ХХ 
(
ХХ 
string
ХХ !$
editorInstallationPath
ХХ" 8
)
ХХ8 9
{
ЦЦ #
RiderScriptEditorData
ЧЧ 
.
ЧЧ 
instance
ЧЧ $
.
ЧЧ$ %

Invalidate
ЧЧ% /
(
ЧЧ/ 0$
editorInstallationPath
ЧЧ0 F
)
ЧЧF G
;
ЧЧG H!
m_ProjectGeneration
ШШ 
.
ШШ 
Sync
ШШ 
(
ШШ 
)
ШШ  
;
ШШ  !
}
ЩЩ 
public
ЫЫ 

bool
ЫЫ 
OpenProject
ЫЫ 
(
ЫЫ 
string
ЫЫ "
path
ЫЫ# '
,
ЫЫ' (
int
ЫЫ) ,
line
ЫЫ- 1
,
ЫЫ1 2
int
ЫЫ3 6
column
ЫЫ7 =
)
ЫЫ= >
{
ЬЬ 
if
ЭЭ 
(
ЭЭ	 

path
ЭЭ
 
!=
ЭЭ 
$str
ЭЭ 
&&
ЭЭ 
!
ЭЭ 
SupportsExtension
ЭЭ *
(
ЭЭ* +
path
ЭЭ+ /
)
ЭЭ/ 0
)
ЭЭ0 1
{
ЮЮ 
return
ЯЯ 
false
ЯЯ 
;
ЯЯ 
}
аа 
if
вв 
(
вв	 

path
вв
 
==
вв 
$str
вв 
&&
вв 

SystemInfo
вв "
.
вв" ##
operatingSystemFamily
вв# 8
==
вв9 ;#
OperatingSystemFamily
вв< Q
.
ввQ R
MacOSX
ввR X
)
ввX Y
{
гг 
return
ее 

OpenOSXApp
ее 
(
ее 
path
ее 
,
ее 
line
ее  $
,
ее$ %
column
ее& ,
)
ее, -
;
ее- .
}
жж 
if
ии 
(
ии	 

!
ии
 
IsUnityScript
ии 
(
ии 
path
ии 
)
ии 
)
ии 
{
йй !
m_ProjectGeneration
кк 
.
кк 
SyncIfNeeded
кк (
(
кк( )
affectedFiles
кк) 6
:
кк6 7
new
кк8 ;
string
кк< B
[
ккB C
]
ккC D
{
ккE F
}
ккG H
,
ккH I
new
ккJ M
string
ккN T
[
ккT U
]
ккU V
{
ккW X
}
ккY Z
)
ккZ [
;
кк[ \
var
лл 
fastOpenResult
лл 
=
лл !
EditorPluginInterop
лл 0
.
лл0 1'
OpenFileDllImplementation
лл1 J
(
ллJ K
path
ллK O
,
ллO P
line
ллQ U
,
ллU V
column
ллW ]
)
лл] ^
;
лл^ _
if
мм 

(
мм 
fastOpenResult
мм 
)
мм 
return
нн
 
true
нн 
;
нн 
}
оо 
if
░░ 
(
░░	 


SystemInfo
░░
 
.
░░ #
operatingSystemFamily
░░ *
==
░░+ -#
OperatingSystemFamily
░░. C
.
░░C D
MacOSX
░░D J
)
░░J K
{
▒▒ 
return
▓▓ 

OpenOSXApp
▓▓ 
(
▓▓ 
path
▓▓ 
,
▓▓ 
line
▓▓  $
,
▓▓$ %
column
▓▓& ,
)
▓▓, -
;
▓▓- .
}
││ 
var
╡╡ 	
solution
╡╡
 
=
╡╡ 
GetSolutionFile
╡╡ $
(
╡╡$ %
path
╡╡% )
)
╡╡) *
;
╡╡* +
solution
╢╢ 
=
╢╢ 
solution
╢╢ 
==
╢╢ 
$str
╢╢ 
?
╢╢  !
$str
╢╢" $
:
╢╢% &
$"
╢╢' )
\"
╢╢) +
{
╢╢+ ,
solution
╢╢, 4
}
╢╢4 5
\"
╢╢5 7
"
╢╢7 8
;
╢╢8 9
var
╖╖ 	
process
╖╖
 
=
╖╖ 
new
╖╖ 
Process
╖╖ 
{
╕╕ 
	StartInfo
╣╣ 
=
╣╣ 
new
╣╣ 
ProcessStartInfo
╣╣ (
{
║║ 	
FileName
╗╗
 
=
╗╗ 

CodeEditor
╗╗ 
.
╗╗  '
CurrentEditorInstallation
╗╗  9
,
╗╗9 :
	Arguments
╝╝
 
=
╝╝ 
$"
╝╝ 
{
╝╝ 
solution
╝╝ !
}
╝╝! "
 -l 
╝╝" &
{
╝╝& '
line
╝╝' +
}
╝╝+ ,
 \"
╝╝, /
{
╝╝/ 0
path
╝╝0 4
}
╝╝4 5
\"
╝╝5 7
"
╝╝7 8
,
╝╝8 9
UseShellExecute
╜╜
 
=
╜╜ 
true
╜╜  
,
╜╜  !
}
╛╛ 	
}
┐┐ 
;
┐┐ 
process
┴┴ 
.
┴┴ 
Start
┴┴ 
(
┴┴ 
)
┴┴ 
;
┴┴ 
return
├├ 
true
├├ 
;
├├ 
}
── 
private
╞╞ 
bool
╞╞ 

OpenOSXApp
╞╞ 
(
╞╞ 
string
╞╞ "
path
╞╞# '
,
╞╞' (
int
╞╞) ,
line
╞╞- 1
,
╞╞1 2
int
╞╞3 6
column
╞╞7 =
)
╞╞= >
{
╟╟ 
var
╚╚ 	
solution
╚╚
 
=
╚╚ 
GetSolutionFile
╚╚ $
(
╚╚$ %
path
╚╚% )
)
╚╚) *
;
╚╚* +
solution
╔╔ 
=
╔╔ 
solution
╔╔ 
==
╔╔ 
$str
╔╔ 
?
╔╔  !
$str
╔╔" $
:
╔╔% &
$"
╔╔' )
\"
╔╔) +
{
╔╔+ ,
solution
╔╔, 4
}
╔╔4 5
\"
╔╔5 7
"
╔╔7 8
;
╔╔8 9
var
╩╩ 	
pathArguments
╩╩
 
=
╩╩ 
path
╩╩ 
==
╩╩ !
$str
╩╩" $
?
╩╩% &
$str
╩╩' )
:
╩╩* +
$"
╩╩, .
-l 
╩╩. 1
{
╩╩1 2
line
╩╩2 6
}
╩╩6 7
 \"
╩╩7 :
{
╩╩: ;
path
╩╩; ?
}
╩╩? @
\"
╩╩@ B
"
╩╩B C
;
╩╩C D
var
╦╦ 	
process
╦╦
 
=
╦╦ 
new
╦╦ 
Process
╦╦ 
{
╠╠ 
	StartInfo
══ 
=
══ 
new
══ 
ProcessStartInfo
══ (
{
╬╬ 	
FileName
╧╧
 
=
╧╧ 
$str
╧╧ 
,
╧╧ 
	Arguments
╨╨
 
=
╨╨ 
$"
╨╨ 
-n -j \"
╨╨  
{
╨╨  !

CodeEditor
╨╨! +
.
╨╨+ ,'
CurrentEditorInstallation
╨╨, E
}
╨╨E F

\" --args 
╨╨F P
{
╨╨P Q
solution
╨╨Q Y
}
╨╨Y Z
{
╨╨[ \
pathArguments
╨╨\ i
}
╨╨i j
"
╨╨j k
,
╨╨k l
CreateNoWindow
╤╤
 
=
╤╤ 
true
╤╤ 
,
╤╤  
UseShellExecute
╥╥
 
=
╥╥ 
true
╥╥  
,
╥╥  !
}
╙╙ 	
}
╘╘ 
;
╘╘ 
process
╓╓ 
.
╓╓ 
Start
╓╓ 
(
╓╓ 
)
╓╓ 
;
╓╓ 
return
╪╪ 
true
╪╪ 
;
╪╪ 
}
┘┘ 
private
██ 
string
██ 
GetSolutionFile
██ "
(
██" #
string
██# )
path
██* .
)
██. /
{
▄▄ 
if
▌▌ 
(
▌▌	 

IsUnityScript
▌▌
 
(
▌▌ 
path
▌▌ 
)
▌▌ 
)
▌▌ 
{
▐▐ 
return
▀▀ 
Path
▀▀ 
.
▀▀ 
Combine
▀▀ 
(
▀▀ )
GetBaseUnityDeveloperFolder
▀▀ 7
(
▀▀7 8
)
▀▀8 9
,
▀▀9 :
$str
▀▀; i
)
▀▀i j
;
▀▀j k
}
рр 
var
тт 	
solutionFile
тт
 
=
тт !
m_ProjectGeneration
тт ,
.
тт, -
SolutionFile
тт- 9
(
тт9 :
)
тт: ;
;
тт; <
if
уу 
(
уу	 

File
уу
 
.
уу 
Exists
уу 
(
уу 
solutionFile
уу "
)
уу" #
)
уу# $
{
фф 
return
хх 
solutionFile
хх 
;
хх 
}
цц 
return
шш 
$str
шш 
;
шш 
}
щщ 
static
ыы 

bool
ыы 
IsUnityScript
ыы 
(
ыы 
string
ыы $
path
ыы% )
)
ыы) *
{
ьь 
if
ээ 
(
ээ	 

UnityEditor
ээ
 
.
ээ 
Unsupported
ээ !
.
ээ! "
IsDeveloperBuild
ээ" 2
(
ээ2 3
)
ээ3 4
)
ээ4 5
{
юю 
var
яя 

baseFolder
яя 
=
яя )
GetBaseUnityDeveloperFolder
яя 4
(
яя4 5
)
яя5 6
.
яя6 7
Replace
яя7 >
(
яя> ?
$str
яя? C
,
яяC D
$str
яяE H
)
яяH I
;
яяI J
var
ЁЁ 
	lowerPath
ЁЁ 
=
ЁЁ 
path
ЁЁ 
.
ЁЁ 
ToLowerInvariant
ЁЁ -
(
ЁЁ- .
)
ЁЁ. /
.
ЁЁ/ 0
Replace
ЁЁ0 7
(
ЁЁ7 8
$str
ЁЁ8 <
,
ЁЁ< =
$str
ЁЁ> A
)
ЁЁA B
;
ЁЁB C
if
ЄЄ 

(
ЄЄ 
	lowerPath
ЄЄ 
.
ЄЄ 
Contains
ЄЄ 
(
ЄЄ 
(
ЄЄ  

baseFolder
ЄЄ  *
+
ЄЄ+ ,
$str
ЄЄ- 7
)
ЄЄ7 8
.
ЄЄ8 9
ToLowerInvariant
ЄЄ9 I
(
ЄЄI J
)
ЄЄJ K
)
ЄЄK L
||
єє
 
	lowerPath
єє 
.
єє 
Contains
єє 
(
єє  
(
єє  !

baseFolder
єє! +
+
єє, -
$str
єє. 7
)
єє7 8
.
єє8 9
ToLowerInvariant
єє9 I
(
єєI J
)
єєJ K
)
єєK L
)
єєL M
{
ЇЇ 	
return
її
 
true
її 
;
її 
}
ЎЎ 	
}
ўў 
return
∙∙ 
false
∙∙ 
;
∙∙ 
}
·· 
static
№№ 

string
№№ )
GetBaseUnityDeveloperFolder
№№ -
(
№№- .
)
№№. /
{
¤¤ 
return
■■ 
	Directory
■■ 
.
■■ 
	GetParent
■■  
(
■■  !
EditorApplication
■■! 2
.
■■2 3
applicationPath
■■3 B
)
■■B C
.
■■C D
Parent
■■D J
.
■■J K
Parent
■■K Q
.
■■Q R
FullName
■■R Z
;
■■Z [
}
   
public
ББ 

bool
ББ '
TryGetInstallationForPath
ББ )
(
ББ) *
string
ББ* 0

editorPath
ББ1 ;
,
ББ; <
out
ББ= @

CodeEditor
ББA K
.
ББK L
Installation
ББL X
installation
ББY e
)
ББe f
{
ВВ 
if
ГГ 
(
ГГ	 

FileSystemUtil
ГГ
 
.
ГГ 
EditorPathExists
ГГ )
(
ГГ) *

editorPath
ГГ* 4
)
ГГ4 5
&&
ГГ6 8!
IsRiderInstallation
ГГ9 L
(
ГГL M

editorPath
ГГM W
)
ГГW X
)
ГГX Y
{
ДД 
var
ЕЕ 
info
ЕЕ 
=
ЕЕ 
new
ЕЕ 
RiderPathLocator
ЕЕ '
.
ЕЕ' (
	RiderInfo
ЕЕ( 1
(
ЕЕ1 2

editorPath
ЕЕ2 <
,
ЕЕ< =
false
ЕЕ> C
)
ЕЕC D
;
ЕЕD E
installation
ЖЖ 
=
ЖЖ 
new
ЖЖ 

CodeEditor
ЖЖ %
.
ЖЖ% &
Installation
ЖЖ& 2
{
ЗЗ 	
Name
ИИ
 
=
ИИ 
info
ИИ 
.
ИИ 
Presentation
ИИ "
,
ИИ" #
Path
ЙЙ
 
=
ЙЙ 
info
ЙЙ 
.
ЙЙ 
Path
ЙЙ 
}
КК 	
;
КК	 

return
ЛЛ 
true
ЛЛ 
;
ЛЛ 
}
ММ 
installation
ОО 
=
ОО 
default
ОО 
;
ОО 
return
ПП 
false
ПП 
;
ПП 
}
РР 
public
ТТ 

static
ТТ 
bool
ТТ !
IsRiderInstallation
ТТ *
(
ТТ* +
string
ТТ+ 1
path
ТТ2 6
)
ТТ6 7
{
УУ 
if
ФФ 
(
ФФ	 
(
IsAssetImportWorkerProcess
ФФ
 $
(
ФФ$ %
)
ФФ% &
)
ФФ& '
return
ХХ 
false
ХХ 
;
ХХ 
if
ЧЧ 
(
ЧЧ	 

string
ЧЧ
 
.
ЧЧ 
IsNullOrEmpty
ЧЧ 
(
ЧЧ 
path
ЧЧ #
)
ЧЧ# $
)
ЧЧ$ %
{
ШШ 
return
ЩЩ 
false
ЩЩ 
;
ЩЩ 
}
ЪЪ 
var
ЬЬ 	
fileInfo
ЬЬ
 
=
ЬЬ 
new
ЬЬ 
FileInfo
ЬЬ !
(
ЬЬ! "
path
ЬЬ" &
)
ЬЬ& '
;
ЬЬ' (
var
ЭЭ 	
filename
ЭЭ
 
=
ЭЭ 
fileInfo
ЭЭ 
.
ЭЭ 
Name
ЭЭ "
.
ЭЭ" #
ToLowerInvariant
ЭЭ# 3
(
ЭЭ3 4
)
ЭЭ4 5
;
ЭЭ5 6
return
ЮЮ 
filename
ЮЮ 
.
ЮЮ 

StartsWith
ЮЮ  
(
ЮЮ  !
$str
ЮЮ! (
,
ЮЮ( )
StringComparison
ЮЮ* :
.
ЮЮ: ;
Ordinal
ЮЮ; B
)
ЮЮB C
;
ЮЮC D
}
ЯЯ 
private
бб 
static
бб 
bool
бб (
IsAssetImportWorkerProcess
бб 2
(
бб2 3
)
бб3 4
{
вв 
return
дд 
UnityEditor
дд 
.
дд 
AssetDatabase
дд &
.
дд& '(
IsAssetImportWorkerProcess
дд' A
(
ддA B
)
ддB C
;
ддC D
}
кк 
public
мм 

static
мм 
string
мм 
CurrentEditor
мм &
=>
нн 
EditorPrefs
нн	 
.
нн 
	GetString
нн 
(
нн 
$str
нн 3
)
нн3 4
;
нн4 5
public
пп 


CodeEditor
пп 
.
пп 
Installation
пп "
[
пп" #
]
пп# $
Installations
пп% 2
=>
пп3 5
m_Discoverability
пп6 G
.
ппG H
PathCallback
ппH T
(
ппT U
)
ппU V
;
ппV W
private
▒▒ 
void
▒▒ )
CreateSolutionIfDoesntExist
▒▒ ,
(
▒▒, -
)
▒▒- .
{
▓▓ 
if
││ 
(
││	 

!
││
 !
m_ProjectGeneration
││ 
.
││ &
HasSolutionBeenGenerated
││ 7
(
││7 8
)
││8 9
)
││9 :
{
┤┤ !
m_ProjectGeneration
╡╡ 
.
╡╡ 
Sync
╡╡  
(
╡╡  !
)
╡╡! "
;
╡╡" #
}
╢╢ 
}
╖╖ 
}
╕╕ 
}╣╣ °
аD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\FileIOProvider.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{2 3
class 
FileIOProvider 
: 
IFileIO  
{ 
public 

bool 
Exists 
( 
string 
fileName &
)& '
{ 
return		 
File		 
.		 
Exists		 
(		 
fileName		 !
)		! "
;		" #
}

 
public 

string 
ReadAllText 
( 
string $
fileName% -
)- .
{ 
return 
File 
. 
ReadAllText 
( 
fileName &
)& '
;' (
} 
public 

void 
WriteAllText 
( 
string #
fileName$ ,
,, -
string. 4
content5 <
)< =
{ 
File 

.
 
WriteAllText 
( 
fileName  
,  !
content" )
,) *
Encoding+ 3
.3 4
UTF84 8
)8 9
;9 :
} 
} 
} В
зD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\SolutionGuidGenerator.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

static 
class !
SolutionGuidGenerator -
{ 
public		 

static		 
string		 
GuidForProject		 '
(		' (
string		( .
projectName		/ :
)		: ;
{

 
return 
ComputeGuidHashFor 
(  
projectName  +
+, -
$str. 4
)4 5
;5 6
} 
public 

static 
string 
GuidForSolution (
(( )
string) /
projectName0 ;
,; <
string= C
sourceFileExtensionD W
)W X
{ 
if 
(	 

sourceFileExtension
 
. 
ToLower %
(% &
)& '
==( *
$str+ /
)/ 0
return 
$str 5
;5 6
return 
ComputeGuidHashFor 
(  
projectName  +
)+ ,
;, -
} 
static 

string 
ComputeGuidHashFor $
($ %
string% +
input, 1
)1 2
{ 
using 
( 
var 
md5 
= 
MD5 
. 
Create !
(! "
)" #
)# $
{ 
var 
hash 
= 
md5 
. 
ComputeHash "
(" #
Encoding# +
.+ ,
Default, 3
.3 4
GetBytes4 <
(< =
input= B
)B C
)C D
;D E
return 
new 
Guid 
( 
hash 
) 
. 
ToString &
(& '
)' (
;( )
} 
} 
} 
}   Д	
ЬD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IGenerator.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

	interface 

IGenerator 
{ 
bool 
SyncIfNeeded	 
( 
IEnumerable !
<! "
string" (
>( )
affectedFiles* 7
,7 8
IEnumerable9 D
<D E
stringE K
>K L
reimportedFilesM \
)\ ]
;] ^
void 
Sync	 
( 
) 
; 
bool		 $
HasSolutionBeenGenerated			 !
(		! "
)		" #
;		# $
string

 

SolutionFile

 
(

 
)

 
;

 !
IAssemblyNameProvider  
AssemblyNameProvider .
{/ 0
get1 4
;4 5
}6 7
} 
} ╧'
ЫD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\RiderTestRunner.cs
	namespace

 	
Packages


 
.

 
Rider

 
.

 
Editor

 
.

  
UnitTesting

  +
{ 
[ 
UsedImplicitly 
] 
public 
static	 
class 
RiderTestRunner %
{ 
private 
static 
readonly 
TestsCallback )
Callback* 2
=3 4
ScriptableObject5 E
.E F
CreateInstanceF T
<T U
TestsCallbackU b
>b c
(c d
)d e
;e f
[## 
UsedImplicitly## 
]## 
public$$ 

static$$ 
void$$ %
RunTestsWithSyncCallbacks$$ 0
($$0 1
string$$1 7
	sessionId$$8 A
,$$A B
int$$C F
testMode$$G O
,$$O P
string$$Q W
[$$W X
]$$X Y
assemblyNames$$Z g
,$$g h
string%% 
[%% 
]%% 
	testNames%% 
,%% 
string%%  
[%%  !
]%%! "
categoryNames%%# 0
,%%0 1
string%%2 8
[%%8 9
]%%9 :

groupNames%%; E
,%%E F
int%%G J
?%%J K
buildTarget%%L W
,%%W X
string&& $
callbacksHandlerCodeBase&& %
,&&% &
string&&' -$
callbacksHandlerTypeName&&. F
,&&F G
string&&H N
[&&N O
]&&O P(
callbacksHandlerDependencies&&Q m
)&&m n
{'' $
SyncTestRunEventsHandler,, 
.,, 
instance,, '
.,,' (
InitRun,,( /
(,,/ 0
	sessionId,,0 9
,,,9 :$
callbacksHandlerCodeBase,,; S
,,,S T$
callbacksHandlerTypeName,,U m
,,,m n)
callbacksHandlerDependencies	,,o Л
)
,,Л М
;
,,М Н
RunTests-- 
(-- 
testMode-- 
,-- 
assemblyNames-- &
,--& '
	testNames--( 1
,--1 2
categoryNames--3 @
,--@ A

groupNames--B L
,--L M
buildTarget--N Y
)--Y Z
;--Z [
}// 
[:: 
UsedImplicitly:: 
]:: 
public;; 

static;; 
void;; 
RunTests;; 
(;;  
int;;  #
testMode;;$ ,
,;;, -
string;;. 4
[;;4 5
];;5 6
assemblyNames;;7 D
,;;D E
string;;F L
[;;L M
];;M N
	testNames;;O X
,;;X Y
string;;Z `
[;;` a
];;a b
categoryNames;;c p
,;;p q
string;;r x
[;;x y
];;y z

groupNames	;;{ Е
,
;;Е Ж
int
;;З К
?
;;К Л
buildTarget
;;М Ч
)
;;Ч Ш
{<< 
CallbackDataAA 
.AA 
instanceAA 
.AA 
isRiderAA #
=AA$ %
trueAA& *
;AA* +
varCC 	
apiCC
 
=CC 
ScriptableObjectCC  
.CC  !
CreateInstanceCC! /
<CC/ 0
TestRunnerApiCC0 =
>CC= >
(CC> ?
)CC? @
;CC@ A
varDD 	
settingsDD
 
=DD 
newDD 
ExecutionSettingsDD *
(DD* +
)DD+ ,
;DD, -
varEE 	
filterEE
 
=EE 
newEE 
FilterEE 
{FF 
assemblyNamesGG 
=GG 
assemblyNamesGG %
,GG% &
	testNamesHH 
=HH 
	testNamesHH 
,HH 
categoryNamesII 
=II 
categoryNamesII %
,II% &

groupNamesJJ 
=JJ 

groupNamesJJ 
,JJ  
targetPlatformKK 
=KK 
(KK 
BuildTargetKK %
?KK% &
)KK& '
buildTargetKK( 3
}LL 
;LL 
ifNN 
(NN	 

testModeNN
 
>NN 
$numNN 
)NN 
filterOO 
.OO 
testModeOO 
=OO 
(OO 
TestModeOO #
)OO# $
testModeOO% -
;OO- .
settingsQQ 
.QQ 
filtersQQ 
=QQ 
newQQ 
[QQ 
]QQ 
{QQ  
filterRR 
}SS 
;SS 
apiTT 	
.TT	 

ExecuteTT
 
(TT 
settingsTT 
)TT 
;TT 
apiVV 	
.VV	 

UnregisterCallbacksVV
 
(VV 
CallbackVV &
)VV& '
;VV' (
apiWW 	
.WW	 

RegisterCallbacksWW
 
(WW 
CallbackWW $
)WW$ %
;WW% &
}YY 
}ZZ 
}[[ ╖
ХD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderScriptEditorData.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 

class !
RiderScriptEditorData &
:' (
ScriptableSingleton) <
<< =!
RiderScriptEditorData= R
>R S
{		 
[

 
SerializeField

 
]

 
internal

 
bool

 "

hasChanges

# -
=

. /
true

0 4
;

4 5
[ 
SerializeField 
] 
internal 
bool ""
shouldLoadEditorPlugin# 9
;9 :
[ 
SerializeField 
] 
internal 
bool "
initializedOnce# 2
;2 3
[ 
SerializeField 
] 
internal 
SerializableVersion 1
editorBuildNumber2 C
;C D
[ 
SerializeField 
] 
internal 
RiderPathLocator .
.. /
ProductInfo/ :
productInfo; F
;F G
public 

void 
Init 
( 
) 
{ 
if 
(	 

editorBuildNumber
 
== 
null #
)# $
{ 

Invalidate 
( 
RiderScriptEditor $
.$ %
CurrentEditor% 2
)2 3
;3 4
} 
} 
public 

void 

Invalidate 
( 
string !"
editorInstallationPath" 8
)8 9
{ 
var 	
riderBuildNumber
 
= 
RiderPathLocator -
.- .
GetBuildNumber. <
(< ="
editorInstallationPath= S
)S T
;T U
editorBuildNumber 
= 
riderBuildNumber *
.* +!
ToSerializableVersion+ @
(@ A
)A B
;B C
productInfo 
= 
RiderPathLocator $
.$ %
GetBuildVersion% 4
(4 5"
editorInstallationPath5 K
)K L
;L M
if 
(	 

riderBuildNumber
 
== 
null "
)" #"
shouldLoadEditorPlugin 
=  
false! &
;& '"
shouldLoadEditorPlugin   
=   
riderBuildNumber   /
>=  0 2
new  3 6
Version  7 >
(  > ?
$str  ? M
)  M N
;  N O
}!! 
}"" 
}## °
ЯD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\SyncTestRunCallback.cs
[ 
assembly 	
:	 

TestRunCallback 
( 
typeof !
(! "
SyncTestRunCallback" 5
)5 6
)6 7
]7 8
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{		 
public

 
class

	 
SyncTestRunCallback

 "
:

# $
ITestRunCallback

% 5
{ 
public 

void 

RunStarted 
( 
ITest  

testsToRun! +
)+ ,
{ 
} 
public 

void 
RunFinished 
( 
ITestResult '
testResults( 3
)3 4
{ $
SyncTestRunEventsHandler 
. 
instance '
.' (
OnRunFinished( 5
(5 6
)6 7
;7 8
} 
public 

void 
TestStarted 
( 
ITest !
test" &
)& '
{ 
if 
(	 

!
 
test 
. 
IsSuite 
) $
SyncTestRunEventsHandler  
.  !
instance! )
.) *
OnTestStarted* 7
(7 8
test8 <
.< =
FullName= E
)E F
;F G
} 
public 

void 
TestFinished 
( 
ITestResult (
result) /
)/ 0
{ 
if 
(	 

!
 
result 
. 
Test 
. 
IsSuite 
) $
SyncTestRunEventsHandler  
.  !
instance! )
.) *
OnTestFinished* 8
(8 9
)9 :
;: ;
} 
}   
}!! ┌
зD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\ProjectGenerationFlag.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
[ 
Flags 
] 	
enum !
ProjectGenerationFlag 
{ 
None 
=	 

$num 
, 
Embedded		 
=		 
$num		 
,		 
Local

 	
=


 
$num

 
,

 
Registry 
= 
$num 
, 
Git 
= 	
$num
 
, 
BuiltIn 
= 
$num 
, 
Unknown 
= 
$num 
, 
PlayerAssemblies 
= 
$num 
, 
LocalTarBall 
= 
$num 
, 
} 
} И
ЦD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\CommandLineParser.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
Util  $
{ 
internal 

class 
CommandLineParser "
{ 
public 


Dictionary 
< 
string 
, 
string $
>$ %
Options& -
=. /
new0 3

Dictionary4 >
<> ?
string? E
,E F
stringG M
>M N
(N O
)O P
;P Q
public		 

CommandLineParser		 
(		 
string		 #
[		# $
]		$ %
args		& *
)		* +
{

 
var 	
i
 
= 
$num 
; 
while 
( 
i 
< 
args 
. 
Length 
) 
{ 
var 
arg 
= 
args 
[ 
i 
] 
; 
if 

( 
! 
arg 
. 

StartsWith 
( 
$str 
)  
)  !
{ 	
i
 
++ 
; 
continue
 
; 
} 	
string 
value 
= 
null 
; 
if 

( 
i 
+ 
$num 
< 
args 
. 
Length 
&&  "
!# $
args$ (
[( )
i) *
++ ,
$num- .
]. /
./ 0

StartsWith0 :
(: ;
$str; >
)> ?
)? @
{ 	
value
 
= 
args 
[ 
i 
+ 
$num 
] 
; 
i
 
++ 
; 
} 	
if 

( 
! 
( 
Options 
. 
ContainsKey !
(! "
arg" %
)% &
)& '
)' (
{ 	
Options
 
. 
Add 
( 
arg 
, 
value  
)  !
;! "
} 	
i   	
++  	 
;   
}!! 
}"" 
}## 
}$$ °
ЧD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str -
)- .
]. /
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[

 
assembly

 	
:

	 

AssemblyVersion

 
(

 
$str

 "
)

" #
]

# $┬"
РD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderInitializer.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 
class 
RiderInitializer #
{		 
public

 
void

 

Initialize

 
(

 
string

 #

editorPath

$ .
)

. /
{ 
var 
assembly 
= 
EditorPluginInterop *
.* + 
EditorPluginAssembly+ ?
;? @
if 

( 
EditorPluginInterop 
.  *
EditorPluginIsLoadedFromAssets  >
(> ?
assembly? G
)G H
)H I
{ 	
Debug
 
. 
LogError 
( 
$" 
Please delete  )
{) *
assembly* 2
.2 3
Location3 ;
}; <├
╡. Unity 2019.2+ loads it directly from Rider installation. To disable this, open Rider's settings, search and uncheck 'Automatically install and update Rider's Unity editor plugin'.	< ё
"
ё Є
)
Є є
;
є Ї
return
 
; 
} 	
var 
relPath 
= 
$str >
;> ?
if 

( 

SystemInfo 
. !
operatingSystemFamily ,
==- /!
OperatingSystemFamily0 E
.E F
MacOSXF L
)L M
relPath
 
= 
$str ?
;? @
var 
baseDir 
= 
Path 
. 
Combine "
(" #

editorPath# -
,- .
relPath/ 6
)6 7
;7 8
var 
dllFile 
= 
new 
FileInfo "
(" #
Path# '
.' (
Combine( /
(/ 0
baseDir0 7
,7 8
$"9 ;
{; <
EditorPluginInterop< O
.O P$
EditorPluginAssemblyNameP h
}h i
.dlli m
"m n
)n o
)o p
;p q
if 

( 
! 
dllFile 
. 
Exists 
) 
dllFile
 
= 
new 
FileInfo  
(  !
Path! %
.% &
Combine& -
(- .
baseDir. 5
,5 6
$"7 9
{9 :
EditorPluginInterop: M
.M N,
 EditorPluginAssemblyNameFallbackN n
}n o
.dllo s
"s t
)t u
)u v
;v w
if 

( 
dllFile 
. 
Exists 
) 
{   	
var!!
 
bytes!! 
=!! 
File!! 
.!! 
ReadAllBytes!! '
(!!' (
dllFile!!( /
.!!/ 0
FullName!!0 8
)!!8 9
;!!9 :
assembly""
 
="" 
	AppDomain"" 
."" 
CurrentDomain"" ,
."", -
Load""- 1
(""1 2
bytes""2 7
)""7 8
;""8 9
if$$
 
($$ 
PluginSettings$$ 
.$$  
SelectedLoggingLevel$$ 1
>=$$2 4
LoggingLevel$$5 A
.$$A B
TRACE$$B G
)$$G H
Debug%% 
.%% 
Log%% 
(%% 
$"%% +
Rider EditorPlugin loaded from %% 7
{%%7 8
dllFile%%8 ?
.%%? @
FullName%%@ H
}%%H I
"%%I J
)%%J K
;%%K L
EditorPluginInterop''
 
.'' 
InitEntryPoint'' ,
('', -
assembly''- 5
)''5 6
;''6 7
}(( 	
else)) 
{** 	
Debug++
 
.++ 
Log++ 
(++ 
$"++ .
"Unable to find Rider EditorPlugin ++ 8
{++8 9
dllFile++9 @
.++@ A
FullName++A I
}++I J
 for Unity ++J U
"++U V
)++V W
;++W X
},, 	
}-- 
}.. 
}// ╟'
УD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\FileSystemUtil.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
Util  $
{		 
internal

 

static

 
class

 
FileSystemUtil

 &
{ 
[ 
NotNull 
] 
public 

static 
string 
GetFinalPathName )
() *
[* +
NotNull+ 2
]2 3
string4 :
path; ?
)? @
{ 
if 
(	 

path
 
== 
null 
) 
throw 
new !!
ArgumentNullException" 7
(7 8
$str8 >
)> ?
;? @
var 	
sb
 
= 
new 
StringBuilder  
(  !
$num! %
)% &
;& '
var 	
result
 
= 
LibcNativeInterop $
.$ %
realpath% -
(- .
path. 2
,2 3
sb4 6
)6 7
;7 8
if 
(	 

result
 
== 
IntPtr 
. 
Zero 
)  
{ 
throw 
new 
Win32Exception  
(  !
$"! #
{# $
path$ (
}( )
 was not resolved.) ;
"; <
)< =
;= >
} 
return 
new 
FileInfo 
( 
sb 
. 
ToString %
(% &
)& '
)' (
.( )
FullName) 1
;1 2
} 
public 

static 
string $
FileNameWithoutExtension 1
(1 2
string2 8
path9 =
)= >
{ 
if 
(	 

string
 
. 
IsNullOrEmpty 
( 
path #
)# $
)$ %
{   
return!! 
$str!! 
;!! 
}"" 
var$$ 	

indexOfDot$$
 
=$$ 
-$$ 
$num$$ 
;$$ 
var%% 	
indexOfSlash%%
 
=%% 
$num%% 
;%% 
for&& 	
(&&
 
var&& 
i&& 
=&& 
path&& 
.&& 
Length&& 
-&&  
$num&&! "
;&&" #
i&&$ %
>=&&& (
$num&&) *
;&&* +
i&&, -
--&&- /
)&&/ 0
{'' 
if(( 

((( 

indexOfDot(( 
==(( 
-(( 
$num(( 
&&(( 
path((  $
[(($ %
i((% &
]((& '
==((( *
$char((+ .
)((. /
{)) 	

indexOfDot**
 
=** 
i** 
;** 
}++ 	
if-- 

(-- 
indexOfSlash-- 
==-- 
$num-- 
&&--  
path--! %
[--% &
i--& '
]--' (
==--) +
$char--, /
||--0 2
path--3 7
[--7 8
i--8 9
]--9 :
==--; =
$char--> B
)--B C
{.. 	
indexOfSlash//
 
=// 
i// 
+// 
$num// 
;// 
break00
 
;00 
}11 	
}22 
if44 
(44	 


indexOfDot44
 
==44 
-44 
$num44 
)44 
{55 

indexOfDot66 
=66 
path66 
.66 
Length66  
;66  !
}77 
return99 
path99 
.99 
	Substring99 
(99 
indexOfSlash99 (
,99( )

indexOfDot99* 4
-995 6
indexOfSlash997 C
)99C D
;99D E
}:: 
public<< 

static<< 
bool<< 
EditorPathExists<< '
(<<' (
string<<( .

editorPath<</ 9
)<<9 :
{== 
return>> 

SystemInfo>> 
.>> !
operatingSystemFamily>> -
==>>. 0!
OperatingSystemFamily>>1 F
.>>F G
MacOSX>>G M
&&>>N P
new>>Q T
DirectoryInfo>>U b
(>>b c

editorPath>>c m
)>>m n
.>>n o
Exists>>o u
||?? 

SystemInfo?? 
.?? !
operatingSystemFamily?? 0
!=??1 3!
OperatingSystemFamily??4 I
.??I J
MacOSX??J P
&&??Q S
new??T W
FileInfo??X `
(??` a

editorPath??a k
)??k l
.??l m
Exists??m s
;??s t
}@@ 
}AA 
}BB жt
жD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\AssemblyNameProvider.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{		 
internal

 

class

  
AssemblyNameProvider

 %
:

& '!
IAssemblyNameProvider

( =
{ !
ProjectGenerationFlag #
m_ProjectGenerationFlag 1
=2 3
(4 5!
ProjectGenerationFlag5 J
)J K
EditorPrefsK V
.V W
GetIntW ]
(] ^
$str^ }
,} ~
$num	 А
)
А Б
;
Б В
public 

string 
[ 
] &
ProjectSupportedExtensions .
=>/ 1
EditorSettings2 @
.@ A+
projectGenerationUserExtensionsA `
;` a
public 

string *
ProjectGenerationRootNamespace 0
=>1 3
EditorSettings4 B
.B C*
projectGenerationRootNamespaceC a
;a b
public 
!
ProjectGenerationFlag  !
ProjectGenerationFlag! 6
{ 
get 	
=>
 #
m_ProjectGenerationFlag $
;$ %
private 
set 
{ 
EditorPrefs 
. 
SetInt 
( 
$str :
,: ;
(< =
int= @
)@ A
valueA F
)F G
;G H#
m_ProjectGenerationFlag 
=  !
value" '
;' (
} 
} 
public 

string )
GetAssemblyNameFromScriptPath /
(/ 0
string0 6
path7 ;
); <
{ 
return 
CompilationPipeline  
.  !)
GetAssemblyNameFromScriptPath! >
(> ?
path? C
)C D
;D E
} 
public!! 

IEnumerable!! 
<!! 
Assembly!! 
>!!  
GetAssemblies!!! .
(!!. /
Func!!/ 3
<!!3 4
string!!4 :
,!!: ;
bool!!< @
>!!@ A&
shouldFileBePartOfSolution!!B \
)!!\ ]
{"" 
foreach## 
(## 
var## 
assembly## 
in## 
CompilationPipeline## 2
.##2 3
GetAssemblies##3 @
(##@ A
)##A B
)##B C
{$$ 
if%% 

(%% 
assembly%% 
.%% 
sourceFiles%%  
.%%  !
Any%%! $
(%%$ %&
shouldFileBePartOfSolution%%% ?
)%%? @
)%%@ A
{&& 	
var''
 
options'' 
='' 
new'' !
ScriptCompilerOptions'' 1
(''1 2
)''2 3
{((
 
ResponseFiles)) 
=)) 
assembly)) $
.))$ %
compilerOptions))% 4
.))4 5
ResponseFiles))5 B
,))B C
AllowUnsafeCode** 
=** 
assembly** &
.**& '
compilerOptions**' 6
.**6 7
AllowUnsafeCode**7 F
,**F G!
ApiCompatibilityLevel++ !
=++" #
assembly++$ ,
.++, -
compilerOptions++- <
.++< =!
ApiCompatibilityLevel++= R
},,
 
;,, 
yield..
 
return.. 
new.. 
Assembly.. #
(..# $
assembly..$ ,
..., -
name..- 1
,..1 2
$str..3 G
,..G H
assembly// 
.// 
sourceFiles//  
,//  !
new00 
[00 
]00 
{00 
$str00 
,00 
$str00 $
}00% &
.00& '
Concat00' -
(00- .
assembly00. 6
.006 7
defines007 >
)00> ?
.00? @
Concat00@ F
(00F G#
EditorUserBuildSettings00G ^
.00^ _*
activeScriptCompilationDefines00_ }
)00} ~
.00~ 
ToArray	00 Ж
(
00Ж З
)
00З И
,
00И Й
assembly11 
.11 
assemblyReferences11 '
,11' (
assembly22 
.22 &
compiledAssemblyReferences22 /
,22/ 0
assembly33 
.33 
flags33 
,33 
options55 
,55 
assembly66 
.66 
rootNamespace66 "
)66" #
;66# $
}:: 	
};; 
if== 
(==	 
!
ProjectGenerationFlag==
 
.==  
HasFlag==  '
(==' (!
ProjectGenerationFlag==( =
.=== >
PlayerAssemblies==> N
)==N O
)==O P
{>> 
foreach?? 
(?? 
var?? 
assembly?? 
in??  
CompilationPipeline??! 4
.??4 5
GetAssemblies??5 B
(??B C
AssembliesType??C Q
.??Q R
Player??R X
)??X Y
.??Y Z
Where??Z _
(??_ `
assembly??` h
=>??i k
assembly??l t
.??t u
sourceFiles	??u А
.
??А Б
Any
??Б Д
(
??Д Е(
shouldFileBePartOfSolution
??Е Я
)
??Я а
)
??а б
)
??б в
{@@ 	
varAA
 
optionsAA 
=AA 
newAA !
ScriptCompilerOptionsAA 1
(AA1 2
)AA2 3
{BB
 
ResponseFilesCC 
=CC 
assemblyCC $
.CC$ %
compilerOptionsCC% 4
.CC4 5
ResponseFilesCC5 B
,CCB C
AllowUnsafeCodeDD 
=DD 
assemblyDD &
.DD& '
compilerOptionsDD' 6
.DD6 7
AllowUnsafeCodeDD7 F
,DDF G!
ApiCompatibilityLevelEE !
=EE" #
assemblyEE$ ,
.EE, -
compilerOptionsEE- <
.EE< =!
ApiCompatibilityLevelEE= R
}FF
 
;FF 
yieldHH
 
returnHH 
newHH 
AssemblyHH #
(HH# $
assemblyHH$ ,
.HH, -
nameHH- 1
,HH1 2
$strHH3 O
,HHO P
assemblyHHQ Y
.HHY Z
sourceFilesHHZ e
,HHe f
newII 
[II 
]II 
{II 
$strII 
,II 
$strII $
}II% &
.II& '
ConcatII' -
(II- .
assemblyII. 6
.II6 7
definesII7 >
)II> ?
.II? @
ToArrayII@ G
(IIG H
)IIH I
,III J
assemblyJJ 
.JJ 
assemblyReferencesJJ '
,JJ' (
assemblyKK 
.KK &
compiledAssemblyReferencesKK /
,KK/ 0
assemblyLL 
.LL 
flagsLL 
,LL 
optionsNN 
,NN 
assemblyOO 
.OO 
rootNamespaceOO "
)OO" #
;OO# $
}SS 	
}TT 
}UU 
publicWW 

stringWW 
GetProjectNameWW  
(WW  !
stringWW! '
assemblyOutputPathWW( :
,WW: ;
stringWW< B
assemblyNameWWC O
)WWO P
{XX 
returnYY 
assemblyOutputPathYY 
.YY  
EndsWithYY  (
(YY( )
$strYY) 5
,YY5 6
StringComparisonYY7 G
.YYG H
OrdinalYYH O
)YYO P
?YYQ R
assemblyNameYYS _
+YY` a
$strYYb k
:YYl m
assemblyNameYYn z
;YYz {
}ZZ 
public\\ 

IEnumerable\\ 
<\\ 
string\\ 
>\\ 
GetAllAssetPaths\\ /
(\\/ 0
)\\0 1
{]] 
return^^ 
AssetDatabase^^ 
.^^ 
GetAllAssetPaths^^ +
(^^+ ,
)^^, -
;^^- .
}__ 
publicaa 

UnityEditoraa 
.aa 
PackageManageraa %
.aa% &
PackageInfoaa& 1
FindForAssetPathaa2 B
(aaB C
stringaaC I
	assetPathaaJ S
)aaS T
{bb 
returncc 
UnityEditorcc 
.cc 
PackageManagercc '
.cc' (
PackageInfocc( 3
.cc3 4
FindForAssetPathcc4 D
(ccD E
	assetPathccE N
)ccN O
;ccO P
}dd 
publicff 

boolff %
IsInternalizedPackagePathff )
(ff) *
stringff* 0
pathff1 5
)ff5 6
{gg 
ifhh 
(hh	 

stringhh
 
.hh 
IsNullOrEmptyhh 
(hh 
pathhh #
.hh# $
Trimhh$ (
(hh( )
)hh) *
)hh* +
)hh+ ,
{ii 
returnjj 
falsejj 
;jj 
}kk 
varmm 	
packageInfomm
 
=mm 
FindForAssetPathmm (
(mm( )
pathmm) -
)mm- .
;mm. /
ifnn 
(nn	 

packageInfonn
 
==nn 
nullnn 
)nn 
{oo 
returnpp 
falsepp 
;pp 
}qq 
varss 	
packageSourcess
 
=ss 
packageInfoss %
.ss% &
sourcess& ,
;ss, -
switchtt 
(tt 
packageSourcett 
)tt 
{uu 
casevv 
PackageSourcevv 
.vv 
Embeddedvv #
:vv# $
returnww
 
!ww !
ProjectGenerationFlagww '
.ww' (
HasFlagww( /
(ww/ 0!
ProjectGenerationFlagww0 E
.wwE F
EmbeddedwwF N
)wwN O
;wwO P
casexx 
PackageSourcexx 
.xx 
Registryxx #
:xx# $
returnyy
 
!yy !
ProjectGenerationFlagyy '
.yy' (
HasFlagyy( /
(yy/ 0!
ProjectGenerationFlagyy0 E
.yyE F
RegistryyyF N
)yyN O
;yyO P
casezz 
PackageSourcezz 
.zz 
BuiltInzz "
:zz" #
return{{
 
!{{ !
ProjectGenerationFlag{{ '
.{{' (
HasFlag{{( /
({{/ 0!
ProjectGenerationFlag{{0 E
.{{E F
BuiltIn{{F M
){{M N
;{{N O
case|| 
PackageSource|| 
.|| 
Unknown|| "
:||" #
return}}
 
!}} !
ProjectGenerationFlag}} '
.}}' (
HasFlag}}( /
(}}/ 0!
ProjectGenerationFlag}}0 E
.}}E F
Unknown}}F M
)}}M N
;}}N O
case~~ 
PackageSource~~ 
.~~ 
Local~~  
:~~  !
return
 
! !
ProjectGenerationFlag '
.' (
HasFlag( /
(/ 0!
ProjectGenerationFlag0 E
.E F
LocalF K
)K L
;L M
case
АА 
PackageSource
АА 
.
АА 
Git
АА 
:
АА 
return
ББ
 
!
ББ #
ProjectGenerationFlag
ББ '
.
ББ' (
HasFlag
ББ( /
(
ББ/ 0#
ProjectGenerationFlag
ББ0 E
.
ББE F
Git
ББF I
)
ББI J
;
ББJ K
case
ГГ 
PackageSource
ГГ 
.
ГГ 
LocalTarball
ГГ '
:
ГГ' (
return
ДД
 
!
ДД #
ProjectGenerationFlag
ДД '
.
ДД' (
HasFlag
ДД( /
(
ДД/ 0#
ProjectGenerationFlag
ДД0 E
.
ДДE F
LocalTarBall
ДДF R
)
ДДR S
;
ДДS T
}
ЖЖ 
return
ИИ 
false
ИИ 
;
ИИ 
}
ЙЙ 
public
ЛЛ 

ResponseFileData
ЛЛ 
ParseResponseFile
ЛЛ -
(
ЛЛ- .
string
ЛЛ. 4
responseFilePath
ЛЛ5 E
,
ЛЛE F
string
ЛЛG M
projectDirectory
ЛЛN ^
,
ЛЛ^ _
string
ЛЛ` f
[
ЛЛf g
]
ЛЛg h)
systemReferenceDirectoriesЛЛi Г
)ЛЛГ Д
{
ММ 
return
НН !
CompilationPipeline
НН  
.
НН  !
ParseResponseFile
НН! 2
(
НН2 3
responseFilePath
ОО 
,
ОО 
projectDirectory
ПП 
,
ПП (
systemReferenceDirectories
РР "
)
СС 
;
СС 
}
ТТ 
public
ФФ 

IEnumerable
ФФ 
<
ФФ 
string
ФФ 
>
ФФ $
GetRoslynAnalyzerPaths
ФФ 5
(
ФФ5 6
)
ФФ6 7
{
ХХ 
return
ЦЦ 
PluginImporter
ЦЦ 
.
ЦЦ 
GetAllImporters
ЦЦ +
(
ЦЦ+ ,
)
ЦЦ, -
.
ЧЧ 	
Where
ЧЧ	 
(
ЧЧ 
i
ЧЧ 
=>
ЧЧ 
!
ЧЧ 
i
ЧЧ 
.
ЧЧ 
isNativePlugin
ЧЧ %
&&
ЧЧ& (
AssetDatabase
ЧЧ) 6
.
ЧЧ6 7
	GetLabels
ЧЧ7 @
(
ЧЧ@ A
i
ЧЧA B
)
ЧЧB C
.
ЧЧC D
SingleOrDefault
ЧЧD S
(
ЧЧS T
l
ЧЧT U
=>
ЧЧV X
l
ЧЧY Z
==
ЧЧ[ ]
$str
ЧЧ^ n
)
ЧЧn o
!=
ЧЧp r
null
ЧЧs w
)
ЧЧw x
.
ШШ 	
Select
ШШ	 
(
ШШ 
i
ШШ 
=>
ШШ 
i
ШШ 
.
ШШ 
	assetPath
ШШ  
)
ШШ  !
;
ШШ! "
}
ЩЩ 
public
ЫЫ 

void
ЫЫ %
ToggleProjectGeneration
ЫЫ '
(
ЫЫ' (#
ProjectGenerationFlag
ЫЫ( =

preference
ЫЫ> H
)
ЫЫH I
{
ЬЬ 
if
ЭЭ 
(
ЭЭ	 
#
ProjectGenerationFlag
ЭЭ
 
.
ЭЭ  
HasFlag
ЭЭ  '
(
ЭЭ' (

preference
ЭЭ( 2
)
ЭЭ2 3
)
ЭЭ3 4
{
ЮЮ #
ProjectGenerationFlag
ЯЯ 
^=
ЯЯ  

preference
ЯЯ! +
;
ЯЯ+ ,
}
аа 
else
бб 

{
вв #
ProjectGenerationFlag
гг 
|=
гг  

preference
гг! +
;
гг+ ,
}
дд 
}
ее 
public
зз 

void
зз (
ResetProjectGenerationFlag
зз *
(
зз* +
)
зз+ ,
{
ии #
ProjectGenerationFlag
йй 
=
йй #
ProjectGenerationFlag
йй 3
.
йй3 4
None
йй4 8
;
йй8 9
}
кк 
}
лл 
}мм Ё
ЩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IFileIO.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

	interface 
IFileIO 
{ 
bool 
Exists	 
( 
string 
fileName 
)  
;  !
string 

ReadAllText 
( 
string 
fileName &
)& '
;' (
void 
WriteAllText	 
( 
string 
fileName %
,% &
string' -
content. 5
)5 6
;6 7
}		 
}

 йч
ЙD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Discovery.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 

	interface 

IDiscovery 
{ 

CodeEditor 
. 
Installation 
[ 
] 
PathCallback *
(* +
)+ ,
;, -
} 
internal 

class 
	Discovery 
: 

IDiscovery '
{ 
public 


CodeEditor 
. 
Installation "
[" #
]# $
PathCallback% 1
(1 2
)2 3
{ 
return 
RiderPathLocator 
. 
GetAllRiderPaths .
(. /
)/ 0
. 	
Select	 
( 
	riderInfo 
=> 
new  

CodeEditor! +
.+ ,
Installation, 8
{ 	
Path
 
= 
	riderInfo 
. 
Path 
,  
Name
 
= 
	riderInfo 
. 
Presentation '
} 	
)	 

. 	
OrderBy	 
( 
a 
=> 
a 
. 
Name 
) 
. 	
ToArray	 
( 
) 
; 
} 
} 
internal%% 

static%% 
class%% 
RiderPathLocator%% (
{&& 
public(( 

static(( 
	RiderInfo(( 
[(( 
](( 
GetAllRiderPaths(( .
(((. /
)((/ 0
{)) 
try** 	
{++ 
switch,, 
(,, 

SystemInfo,, 
.,, !
operatingSystemFamily,, 0
),,0 1
{-- 	
case..
 !
OperatingSystemFamily.. $
...$ %
Windows..% ,
:.., -
{//
 
return00 $
CollectRiderInfosWindows00 +
(00+ ,
)00, -
;00- .
}11
 
case33
 !
OperatingSystemFamily33 $
.33$ %
MacOSX33% +
:33+ ,
{44
 
return55  
CollectRiderInfosMac55 '
(55' (
)55( )
;55) *
}66
 
case88
 !
OperatingSystemFamily88 $
.88$ %
Linux88% *
:88* +
{99
 
return:: %
CollectAllRiderPathsLinux:: ,
(::, -
)::- .
;::. /
};;
 
}<< 	
}== 
catch>> 
(>> 
	Exception>> 
e>> 
)>> 
{?? 
Debug@@ 
.@@ 
LogException@@ 
(@@ 
e@@ 
)@@ 
;@@ 
}AA 
returnCC 
newCC 
	RiderInfoCC 
[CC 
$numCC 
]CC 
;CC 
}DD 
privatejj 
staticjj 
	RiderInfojj 
[jj 
]jj %
CollectAllRiderPathsLinuxjj 8
(jj8 9
)jj9 :
{kk 
varll 	
installInfosll
 
=ll 
newll 
Listll !
<ll! "
	RiderInfoll" +
>ll+ ,
(ll, -
)ll- .
;ll. /
varmm 	
homemm
 
=mm 
Environmentmm 
.mm "
GetEnvironmentVariablemm 3
(mm3 4
$strmm4 :
)mm: ;
;mm; <
ifnn 
(nn	 

!nn
 
stringnn 
.nn 
IsNullOrEmptynn 
(nn  
homenn  $
)nn$ %
)nn% &
{oo 
varpp  
toolboxRiderRootPathpp  
=pp! "
GetToolboxBaseDirpp# 4
(pp4 5
)pp5 6
;pp6 7
installInfosqq 
.qq 
AddRangeqq 
(qq #
CollectPathsFromToolboxqq 5
(qq5 6 
toolboxRiderRootPathqq6 J
,qqJ K
$strqqL Q
,qqQ R
$strqqS ]
,qq] ^
falseqq_ d
)qqd e
.rr
 
Selectrr 
(rr 
arr 
=>rr 
newrr 
	RiderInforr $
(rr$ %
arr% &
,rr& '
truerr( ,
)rr, -
)rr- .
.rr. /
ToListrr/ 5
(rr5 6
)rr6 7
)rr7 8
;rr8 9
varuu 
shortcutuu 
=uu 
newuu 
FileInfouu #
(uu# $
Pathuu$ (
.uu( )
Combineuu) 0
(uu0 1
homeuu1 5
,uu5 6
$struu7 k
)uuk l
)uul m
;uum n
ifww 

(ww 
shortcutww 
.ww 
Existsww 
)ww 
{xx 	
varyy
 
linesyy 
=yy 
Fileyy 
.yy 
ReadAllLinesyy '
(yy' (
shortcutyy( 0
.yy0 1
FullNameyy1 9
)yy9 :
;yy: ;
foreachzz
 
(zz 
varzz 
linezz 
inzz 
lineszz $
)zz$ %
{{{
 
if|| 
(|| 
!|| 
line|| 
.|| 

StartsWith||  
(||  !
$str||! *
)||* +
)||+ ,
continue}} 
;}} 
var~~ 
path~~ 
=~~ 
line~~ 
.~~ 
Split~~ !
(~~! "
$char~~" %
)~~% &
.~~& '
Where~~' ,
(~~, -
(~~- .
item~~. 2
,~~2 3
index~~4 9
)~~9 :
=>~~; =
index~~> C
==~~D F
$num~~G H
)~~H I
.~~I J
SingleOrDefault~~J Y
(~~Y Z
)~~Z [
;~~[ \
if 
( 
string 
. 
IsNullOrEmpty $
($ %
path% )
)) *
)* +
continue
АА 
;
АА 
if
ВВ 
(
ВВ 
installInfos
ВВ 
.
ВВ 
Any
ВВ  
(
ВВ  !
a
ВВ! "
=>
ВВ# %
a
ВВ& '
.
ВВ' (
Path
ВВ( ,
==
ВВ- /
path
ВВ0 4
)
ВВ4 5
)
ВВ5 6
continue
ГГ 
;
ГГ 
installInfos
ДД 
.
ДД 
Add
ДД 
(
ДД 
new
ДД  
	RiderInfo
ДД! *
(
ДД* +
path
ДД+ /
,
ДД/ 0
false
ДД1 6
)
ДД6 7
)
ДД7 8
;
ДД8 9
}
ЕЕ
 
}
ЖЖ 	
}
ЗЗ 
var
КК 	
snapInstallPath
КК
 
=
КК 
$str
КК >
;
КК> ?
if
ЛЛ 
(
ЛЛ	 

new
ЛЛ
 
FileInfo
ЛЛ 
(
ЛЛ 
snapInstallPath
ЛЛ &
)
ЛЛ& '
.
ЛЛ' (
Exists
ЛЛ( .
)
ЛЛ. /
installInfos
ММ 
.
ММ 
Add
ММ 
(
ММ 
new
ММ 
	RiderInfo
ММ &
(
ММ& '
snapInstallPath
ММ' 6
,
ММ6 7
false
ММ8 =
)
ММ= >
)
ММ> ?
;
ММ? @
return
ОО 
installInfos
ОО 
.
ОО 
ToArray
ОО !
(
ОО! "
)
ОО" #
;
ОО# $
}
ПП 
private
СС 
static
СС 
	RiderInfo
СС 
[
СС 
]
СС "
CollectRiderInfosMac
СС 3
(
СС3 4
)
СС4 5
{
ТТ 
var
УУ 	
installInfos
УУ
 
=
УУ 
new
УУ 
List
УУ !
<
УУ! "
	RiderInfo
УУ" +
>
УУ+ ,
(
УУ, -
)
УУ- .
;
УУ. /
var
ХХ 	
folder
ХХ
 
=
ХХ 
new
ХХ 
DirectoryInfo
ХХ $
(
ХХ$ %
$str
ХХ% 4
)
ХХ4 5
;
ХХ5 6
if
ЦЦ 
(
ЦЦ	 

folder
ЦЦ
 
.
ЦЦ 
Exists
ЦЦ 
)
ЦЦ 
{
ЧЧ 
installInfos
ШШ 
.
ШШ 
AddRange
ШШ 
(
ШШ 
folder
ШШ $
.
ШШ$ %
GetDirectories
ШШ% 3
(
ШШ3 4
$str
ШШ4 A
)
ШШA B
.
ЩЩ
 
Select
ЩЩ 
(
ЩЩ 
a
ЩЩ 
=>
ЩЩ 
new
ЩЩ 
	RiderInfo
ЩЩ $
(
ЩЩ$ %
a
ЩЩ% &
.
ЩЩ& '
FullName
ЩЩ' /
,
ЩЩ/ 0
false
ЩЩ1 6
)
ЩЩ6 7
)
ЩЩ7 8
.
ЪЪ
 
ToList
ЪЪ 
(
ЪЪ 
)
ЪЪ 
)
ЪЪ 
;
ЪЪ 
}
ЫЫ 
var
ЮЮ 	"
toolboxRiderRootPath
ЮЮ
 
=
ЮЮ  
GetToolboxBaseDir
ЮЮ! 2
(
ЮЮ2 3
)
ЮЮ3 4
;
ЮЮ4 5
var
ЯЯ 	
paths
ЯЯ
 
=
ЯЯ %
CollectPathsFromToolbox
ЯЯ )
(
ЯЯ) *"
toolboxRiderRootPath
ЯЯ* >
,
ЯЯ> ?
$str
ЯЯ@ B
,
ЯЯB C
$str
ЯЯD P
,
ЯЯP Q
true
ЯЯR V
)
ЯЯV W
.
аа 	
Select
аа	 
(
аа 
a
аа 
=>
аа 
new
аа 
	RiderInfo
аа "
(
аа" #
a
аа# $
,
аа$ %
true
аа& *
)
аа* +
)
аа+ ,
;
аа, -
installInfos
бб 
.
бб 
AddRange
бб 
(
бб 
paths
бб !
)
бб! "
;
бб" #
return
гг 
installInfos
гг 
.
гг 
ToArray
гг !
(
гг! "
)
гг" #
;
гг# $
}
дд 
private
жж 
static
жж 
	RiderInfo
жж 
[
жж 
]
жж &
CollectRiderInfosWindows
жж 7
(
жж7 8
)
жж8 9
{
зз 
var
ии 	
installInfos
ии
 
=
ии 
new
ии 
List
ии !
<
ии! "
	RiderInfo
ии" +
>
ии+ ,
(
ии, -
)
ии- .
;
ии. /
var
йй 	"
toolboxRiderRootPath
йй
 
=
йй  
GetToolboxBaseDir
йй! 2
(
йй2 3
)
йй3 4
;
йй4 5
var
кк 	!
installPathsToolbox
кк
 
=
кк %
CollectPathsFromToolbox
кк  7
(
кк7 8"
toolboxRiderRootPath
кк8 L
,
ккL M
$str
ккN S
,
ккS T
$str
ккU b
,
ккb c
false
ккd i
)
ккi j
.
ккj k
ToList
ккk q
(
ккq r
)
ккr s
;
ккs t
installInfos
лл 
.
лл 
AddRange
лл 
(
лл !
installPathsToolbox
лл /
.
лл/ 0
Select
лл0 6
(
лл6 7
a
лл7 8
=>
лл9 ;
new
лл< ?
	RiderInfo
лл@ I
(
ллI J
a
ллJ K
,
ллK L
true
ллM Q
)
ллQ R
)
ллR S
.
ллS T
ToList
ллT Z
(
ллZ [
)
лл[ \
)
лл\ ]
;
лл] ^
var
нн 	
installPaths
нн
 
=
нн 
new
нн 
List
нн !
<
нн! "
string
нн" (
>
нн( )
(
нн) *
)
нн* +
;
нн+ ,
const
оо 
string
оо 
registryKey
оо 
=
оо  
$str
оо! W
;
ооW X&
CollectPathsFromRegistry
пп 
(
пп 
registryKey
пп *
,
пп* +
installPaths
пп, 8
)
пп8 9
;
пп9 :
const
░░ 
string
░░ 
wowRegistryKey
░░ !
=
░░" #
$str
░░$ f
;
░░f g&
CollectPathsFromRegistry
▒▒ 
(
▒▒ 
wowRegistryKey
▒▒ -
,
▒▒- .
installPaths
▒▒/ ;
)
▒▒; <
;
▒▒< =
installInfos
││ 
.
││ 
AddRange
││ 
(
││ 
installPaths
││ (
.
││( )
Select
││) /
(
││/ 0
a
││0 1
=>
││2 4
new
││5 8
	RiderInfo
││9 B
(
││B C
a
││C D
,
││D E
false
││F K
)
││K L
)
││L M
.
││M N
ToList
││N T
(
││T U
)
││U V
)
││V W
;
││W X
return
╡╡ 
installInfos
╡╡ 
.
╡╡ 
ToArray
╡╡ !
(
╡╡! "
)
╡╡" #
;
╡╡# $
}
╢╢ 
private
╕╕ 
static
╕╕ 
string
╕╕ 
GetToolboxBaseDir
╕╕ +
(
╕╕+ ,
)
╕╕, -
{
╣╣ 
switch
║║ 
(
║║ 

SystemInfo
║║ 
.
║║ #
operatingSystemFamily
║║ .
)
║║. /
{
╗╗ 
case
╝╝ #
OperatingSystemFamily
╝╝ "
.
╝╝" #
Windows
╝╝# *
:
╝╝* +
{
╜╜ 	
var
╛╛
 
localAppData
╛╛ 
=
╛╛ 
Environment
╛╛ (
.
╛╛( )
GetFolderPath
╛╛) 6
(
╛╛6 7
Environment
╛╛7 B
.
╛╛B C
SpecialFolder
╛╛C P
.
╛╛P Q"
LocalApplicationData
╛╛Q e
)
╛╛e f
;
╛╛f g
return
┐┐
 %
GetToolboxRiderRootPath
┐┐ (
(
┐┐( )
localAppData
┐┐) 5
)
┐┐5 6
;
┐┐6 7
}
└└ 	
case
┬┬ #
OperatingSystemFamily
┬┬ "
.
┬┬" #
MacOSX
┬┬# )
:
┬┬) *
{
├├ 	
var
──
 
home
── 
=
── 
Environment
──  
.
──  !$
GetEnvironmentVariable
──! 7
(
──7 8
$str
──8 >
)
──> ?
;
──? @
if
┼┼
 
(
┼┼ 
!
┼┼ 
string
┼┼ 
.
┼┼ 
IsNullOrEmpty
┼┼ #
(
┼┼# $
home
┼┼$ (
)
┼┼( )
)
┼┼) *
{
╞╞
 
var
╟╟ 
localAppData
╟╟ 
=
╟╟ 
Path
╟╟ #
.
╟╟# $
Combine
╟╟$ +
(
╟╟+ ,
home
╟╟, 0
,
╟╟0 1
$str
╟╟2 P
)
╟╟P Q
;
╟╟Q R
return
╚╚ %
GetToolboxRiderRootPath
╚╚ +
(
╚╚+ ,
localAppData
╚╚, 8
)
╚╚8 9
;
╚╚9 :
}
╔╔
 
break
╩╩
 
;
╩╩ 
}
╦╦ 	
case
══ #
OperatingSystemFamily
══ "
.
══" #
Linux
══# (
:
══( )
{
╬╬ 	
var
╧╧
 
home
╧╧ 
=
╧╧ 
Environment
╧╧  
.
╧╧  !$
GetEnvironmentVariable
╧╧! 7
(
╧╧7 8
$str
╧╧8 >
)
╧╧> ?
;
╧╧? @
if
╨╨
 
(
╨╨ 
!
╨╨ 
string
╨╨ 
.
╨╨ 
IsNullOrEmpty
╨╨ #
(
╨╨# $
home
╨╨$ (
)
╨╨( )
)
╨╨) *
{
╤╤
 
var
╥╥ 
localAppData
╥╥ 
=
╥╥ 
Path
╥╥ #
.
╥╥# $
Combine
╥╥$ +
(
╥╥+ ,
home
╥╥, 0
,
╥╥0 1
$str
╥╥2 A
)
╥╥A B
;
╥╥B C
return
╙╙ %
GetToolboxRiderRootPath
╙╙ *
(
╙╙* +
localAppData
╙╙+ 7
)
╙╙7 8
;
╙╙8 9
}
╘╘
 
break
╒╒
 
;
╒╒ 
}
╓╓ 	
}
╫╫ 
return
╪╪ 
string
╪╪ 
.
╪╪ 
Empty
╪╪ 
;
╪╪ 
}
┘┘ 
private
▄▄ 
static
▄▄ 
string
▄▄ %
GetToolboxRiderRootPath
▄▄ 1
(
▄▄1 2
string
▄▄2 8
localAppData
▄▄9 E
)
▄▄E F
{
▌▌ 
var
▐▐ 	
toolboxPath
▐▐
 
=
▐▐ 
Path
▐▐ 
.
▐▐ 
Combine
▐▐ $
(
▐▐$ %
localAppData
▐▐% 1
,
▐▐1 2
$str
▐▐3 G
)
▐▐G H
;
▐▐H I
var
▀▀ 	
settingsJson
▀▀
 
=
▀▀ 
Path
▀▀ 
.
▀▀ 
Combine
▀▀ %
(
▀▀% &
toolboxPath
▀▀& 1
,
▀▀1 2
$str
▀▀3 C
)
▀▀C D
;
▀▀D E
if
сс 
(
сс	 

File
сс
 
.
сс 
Exists
сс 
(
сс 
settingsJson
сс "
)
сс" #
)
сс# $
{
тт 
var
уу 
path
уу 
=
уу 
SettingsJson
уу 
.
уу  (
GetInstallLocationFromJson
уу  :
(
уу: ;
File
уу; ?
.
уу? @
ReadAllText
уу@ K
(
ууK L
settingsJson
ууL X
)
ууX Y
)
ууY Z
;
ууZ [
if
фф 

(
фф 
!
фф 
string
фф 
.
фф 
IsNullOrEmpty
фф !
(
фф! "
path
фф" &
)
фф& '
)
фф' (
toolboxPath
хх
 
=
хх 
path
хх 
;
хх 
}
цц 
var
шш 	"
toolboxRiderRootPath
шш
 
=
шш  
Path
шш! %
.
шш% &
Combine
шш& -
(
шш- .
toolboxPath
шш. 9
,
шш9 :
$str
шш; H
)
шшH I
;
шшI J
return
щщ "
toolboxRiderRootPath
щщ !
;
щщ! "
}
ъъ 
internal
ьь 
static
ьь 
ProductInfo
ьь 
GetBuildVersion
ьь  /
(
ьь/ 0
string
ьь0 6
path
ьь7 ;
)
ьь; <
{
ээ 
var
юю 	
buildTxtFileInfo
юю
 
=
юю 
new
юю  
FileInfo
юю! )
(
юю) *
Path
юю* .
.
юю. /
Combine
юю/ 6
(
юю6 7
path
юю7 ;
,
юю; <'
GetRelativePathToBuildTxt
юю= V
(
ююV W
)
ююW X
)
ююX Y
)
ююY Z
;
ююZ [
var
яя 	
dir
яя
 
=
яя 
buildTxtFileInfo
яя  
.
яя  !
DirectoryName
яя! .
;
яя. /
if
ЁЁ 
(
ЁЁ	 

!
ЁЁ
 
	Directory
ЁЁ 
.
ЁЁ 
Exists
ЁЁ 
(
ЁЁ 
dir
ЁЁ 
)
ЁЁ  
)
ЁЁ  !
return
ёё 
null
ёё 
;
ёё 
var
ЄЄ 	
buildVersionFile
ЄЄ
 
=
ЄЄ 
new
ЄЄ  
FileInfo
ЄЄ! )
(
ЄЄ) *
Path
ЄЄ* .
.
ЄЄ. /
Combine
ЄЄ/ 6
(
ЄЄ6 7
dir
ЄЄ7 :
,
ЄЄ: ;
$str
ЄЄ< O
)
ЄЄO P
)
ЄЄP Q
;
ЄЄQ R
if
єє 
(
єє	 

!
єє
 
buildVersionFile
єє 
.
єє 
Exists
єє "
)
єє" #
return
ЇЇ 
null
ЇЇ 
;
ЇЇ 
var
її 	
json
її
 
=
її 
File
її 
.
її 
ReadAllText
її !
(
її! "
buildVersionFile
її" 2
.
її2 3
FullName
її3 ;
)
її; <
;
її< =
return
ЎЎ 
ProductInfo
ЎЎ 
.
ЎЎ 
GetProductInfo
ЎЎ '
(
ЎЎ' (
json
ЎЎ( ,
)
ЎЎ, -
;
ЎЎ- .
}
ўў 
internal
∙∙ 
static
∙∙ 
Version
∙∙ 
GetBuildNumber
∙∙ *
(
∙∙* +
string
∙∙+ 1
path
∙∙2 6
)
∙∙6 7
{
·· 
var
√√ 	
file
√√
 
=
√√ 
new
√√ 
FileInfo
√√ 
(
√√ 
Path
√√ "
.
√√" #
Combine
√√# *
(
√√* +
path
√√+ /
,
√√/ 0'
GetRelativePathToBuildTxt
√√1 J
(
√√J K
)
√√K L
)
√√L M
)
√√M N
;
√√N O
if
№№ 
(
№№	 

!
№№
 
file
№№ 
.
№№ 
Exists
№№ 
)
№№ 
return
¤¤ 
null
¤¤ 
;
¤¤ 
var
■■ 	
text
■■
 
=
■■ 
File
■■ 
.
■■ 
ReadAllText
■■ !
(
■■! "
file
■■" &
.
■■& '
FullName
■■' /
)
■■/ 0
;
■■0 1
if
   
(
  	 

text
  
 
.
   
Length
   
<=
   
$num
   
)
   
return
АА 
null
АА 
;
АА 
var
ВВ 	
versionText
ВВ
 
=
ВВ 
text
ВВ 
.
ВВ 
	Substring
ВВ &
(
ВВ& '
$num
ВВ' (
)
ВВ( )
;
ВВ) *
return
ГГ 
Version
ГГ 
.
ГГ 
TryParse
ГГ 
(
ГГ 
versionText
ГГ )
,
ГГ) *
out
ГГ+ .
var
ГГ/ 2
v
ГГ3 4
)
ГГ4 5
?
ГГ6 7
v
ГГ8 9
:
ГГ: ;
null
ГГ< @
;
ГГ@ A
}
ДД 
internal
ЖЖ 
static
ЖЖ 
bool
ЖЖ 
GetIsToolbox
ЖЖ %
(
ЖЖ% &
string
ЖЖ& ,
path
ЖЖ- 1
)
ЖЖ1 2
{
ЗЗ 
return
ИИ 
path
ИИ 
.
ИИ 

StartsWith
ИИ 
(
ИИ 
GetToolboxBaseDir
ИИ .
(
ИИ. /
)
ИИ/ 0
)
ИИ0 1
;
ИИ1 2
}
ЙЙ 
private
ЛЛ 
static
ЛЛ 
string
ЛЛ '
GetRelativePathToBuildTxt
ЛЛ 3
(
ЛЛ3 4
)
ЛЛ4 5
{
ММ 
switch
НН 
(
НН 

SystemInfo
НН 
.
НН #
operatingSystemFamily
НН .
)
НН. /
{
ОО 
case
ПП #
OperatingSystemFamily
ПП "
.
ПП" #
Windows
ПП# *
:
ПП* +
case
РР #
OperatingSystemFamily
РР "
.
РР" #
Linux
РР# (
:
РР( )
return
СС
 
$str
СС "
;
СС" #
case
ТТ #
OperatingSystemFamily
ТТ "
.
ТТ" #
MacOSX
ТТ# )
:
ТТ) *
return
УУ
 
$str
УУ /
;
УУ/ 0
}
ФФ 
throw
ХХ 
new
ХХ 
	Exception
ХХ 
(
ХХ 
$str
ХХ &
)
ХХ& '
;
ХХ' (
}
ЦЦ 
private
ЧЧ 
static
ЧЧ 
void
ЧЧ &
CollectPathsFromRegistry
ЧЧ 0
(
ЧЧ0 1
string
ЧЧ1 7
registryKey
ЧЧ8 C
,
ЧЧC D
List
ЧЧE I
<
ЧЧI J
string
ЧЧJ P
>
ЧЧP Q
installPaths
ЧЧR ^
)
ЧЧ^ _
{
ШШ 
using
ЩЩ 
(
ЩЩ 
var
ЩЩ 
key
ЩЩ 
=
ЩЩ 
Registry
ЩЩ 
.
ЩЩ  
CurrentUser
ЩЩ  +
.
ЩЩ+ ,

OpenSubKey
ЩЩ, 6
(
ЩЩ6 7
registryKey
ЩЩ7 B
)
ЩЩB C
)
ЩЩC D
{
ЪЪ &
CollectPathsFromRegistry
ЫЫ  
(
ЫЫ  !
installPaths
ЫЫ! -
,
ЫЫ- .
key
ЫЫ/ 2
)
ЫЫ2 3
;
ЫЫ3 4
}
ЬЬ 
using
ЭЭ 
(
ЭЭ 
var
ЭЭ 
key
ЭЭ 
=
ЭЭ 
Registry
ЭЭ 
.
ЭЭ  
LocalMachine
ЭЭ  ,
.
ЭЭ, -

OpenSubKey
ЭЭ- 7
(
ЭЭ7 8
registryKey
ЭЭ8 C
)
ЭЭC D
)
ЭЭD E
{
ЮЮ &
CollectPathsFromRegistry
ЯЯ  
(
ЯЯ  !
installPaths
ЯЯ! -
,
ЯЯ- .
key
ЯЯ/ 2
)
ЯЯ2 3
;
ЯЯ3 4
}
аа 
}
бб 
private
гг 
static
гг 
void
гг &
CollectPathsFromRegistry
гг 0
(
гг0 1
List
гг1 5
<
гг5 6
string
гг6 <
>
гг< =
installPaths
гг> J
,
ггJ K
RegistryKey
ггL W
key
ггX [
)
гг[ \
{
дд 
if
ее 
(
ее	 

key
ее
 
==
ее 
null
ее 
)
ее 
return
ее 
;
ее 
foreach
жж 
(
жж 
var
жж 

subkeyName
жж 
in
жж  
key
жж! $
.
жж$ %
GetSubKeyNames
жж% 3
(
жж3 4
)
жж4 5
.
жж5 6
Where
жж6 ;
(
жж; <
a
жж< =
=>
жж> @
a
жжA B
.
жжB C
Contains
жжC K
(
жжK L
$str
жжL S
)
жжS T
)
жжT U
)
жжU V
{
зз 
using
ии 
(
ии 
var
ии 
subkey
ии 
=
ии 
key
ии 
.
ии  

OpenSubKey
ии  *
(
ии* +

subkeyName
ии+ 5
)
ии5 6
)
ии6 7
{
йй 	
var
кк
 
folderObject
кк 
=
кк 
subkey
кк #
?
кк# $
.
кк$ %
GetValue
кк% -
(
кк- .
$str
кк. ?
)
кк? @
;
кк@ A
if
лл
 
(
лл 
folderObject
лл 
==
лл 
null
лл "
)
лл" #
continue
лл$ ,
;
лл, -
var
мм
 
folder
мм 
=
мм 
folderObject
мм #
.
мм# $
ToString
мм$ ,
(
мм, -
)
мм- .
;
мм. /
var
нн
 
possiblePath
нн 
=
нн 
Path
нн !
.
нн! "
Combine
нн" )
(
нн) *
folder
нн* 0
,
нн0 1
$str
нн2 D
)
ннD E
;
ннE F
if
оо
 
(
оо 
File
оо 
.
оо 
Exists
оо 
(
оо 
possiblePath
оо &
)
оо& '
)
оо' (
installPaths
пп 
.
пп 
Add
пп 
(
пп 
possiblePath
пп )
)
пп) *
;
пп* +
}
░░ 	
}
▒▒ 
}
▓▓ 
private
┤┤ 
static
┤┤ 
string
┤┤ 
[
┤┤ 
]
┤┤ %
CollectPathsFromToolbox
┤┤ 3
(
┤┤3 4
string
┤┤4 :"
toolboxRiderRootPath
┤┤; O
,
┤┤O P
string
┤┤Q W
dirName
┤┤X _
,
┤┤_ `
string
┤┤a g
searchPattern
┤┤h u
,
┤┤u v
bool
╡╡ 

isMac
╡╡ 
)
╡╡ 
{
╢╢ 
if
╖╖ 
(
╖╖	 

!
╖╖
 
	Directory
╖╖ 
.
╖╖ 
Exists
╖╖ 
(
╖╖ "
toolboxRiderRootPath
╖╖ 0
)
╖╖0 1
)
╖╖1 2
return
╕╕ 
new
╕╕ 
string
╕╕ 
[
╕╕ 
$num
╕╕ 
]
╕╕ 
;
╕╕ 
var
║║ 	
channelDirs
║║
 
=
║║ 
	Directory
║║ !
.
║║! "
GetDirectories
║║" 0
(
║║0 1"
toolboxRiderRootPath
║║1 E
)
║║E F
;
║║F G
var
╗╗ 	
paths
╗╗
 
=
╗╗ 
channelDirs
╗╗ 
.
╗╗ 

SelectMany
╗╗ (
(
╗╗( )

channelDir
╗╗) 3
=>
╗╗4 6
{
╝╝ 	
try
╜╜
 
{
╛╛
 
var
└└ 
historyFile
└└ 
=
└└ 
Path
└└ "
.
└└" #
Combine
└└# *
(
└└* +

channelDir
└└+ 5
,
└└5 6
$str
└└7 F
)
└└F G
;
└└G H
if
┴┴ 
(
┴┴ 
File
┴┴ 
.
┴┴ 
Exists
┴┴ 
(
┴┴ 
historyFile
┴┴ '
)
┴┴' (
)
┴┴( )
{
┬┬ 
var
├├ 
json
├├ 
=
├├ 
File
├├ 
.
├├ 
ReadAllText
├├ )
(
├├) *
historyFile
├├* 5
)
├├5 6
;
├├6 7
var
── 
build
── 
=
── 
ToolboxHistory
── (
.
──( )$
GetLatestBuildFromJson
──) ?
(
──? @
json
──@ D
)
──D E
;
──E F
if
┼┼ 
(
┼┼ 
build
┼┼ 
!=
┼┼ 
null
┼┼ 
)
┼┼  
{
╞╞ 
var
╟╟ 
buildDir
╟╟ 
=
╟╟ 
Path
╟╟ #
.
╟╟# $
Combine
╟╟$ +
(
╟╟+ ,

channelDir
╟╟, 6
,
╟╟6 7
build
╟╟8 =
)
╟╟= >
;
╟╟> ?
var
╚╚ 
executablePaths
╚╚ #
=
╚╚$ % 
GetExecutablePaths
╚╚& 8
(
╚╚8 9
dirName
╚╚9 @
,
╚╚@ A
searchPattern
╚╚B O
,
╚╚O P
isMac
╚╚Q V
,
╚╚V W
buildDir
╚╚X `
)
╚╚` a
;
╚╚a b
if
╔╔ 
(
╔╔ 
executablePaths
╔╔ #
.
╔╔# $
Any
╔╔$ '
(
╔╔' (
)
╔╔( )
)
╔╔) *
return
╩╩ 
executablePaths
╩╩ (
;
╩╩( )
}
╦╦ 
}
╠╠ 
var
╬╬ 
channelFile
╬╬ 
=
╬╬ 
Path
╬╬ "
.
╬╬" #
Combine
╬╬# *
(
╬╬* +

channelDir
╬╬+ 5
,
╬╬5 6
$str
╬╬7 O
)
╬╬O P
;
╬╬P Q
if
╧╧ 
(
╧╧ 
File
╧╧ 
.
╧╧ 
Exists
╧╧ 
(
╧╧ 
channelFile
╧╧ '
)
╧╧' (
)
╧╧( )
{
╨╨ 
var
╤╤ 
json
╤╤ 
=
╤╤ 
File
╤╤ 
.
╤╤ 
ReadAllText
╤╤ )
(
╤╤) *
channelFile
╤╤* 5
)
╤╤5 6
.
╤╤6 7
Replace
╤╤7 >
(
╤╤> ?
$str
╤╤? S
,
╤╤S T
$str
╤╤U i
)
╤╤i j
;
╤╤j k
var
╥╥ 
build
╥╥ 
=
╥╥  
ToolboxInstallData
╥╥ ,
.
╥╥, -$
GetLatestBuildFromJson
╥╥- C
(
╥╥C D
json
╥╥D H
)
╥╥H I
;
╥╥I J
if
╙╙ 
(
╙╙ 
build
╙╙ 
!=
╙╙ 
null
╙╙ 
)
╙╙  
{
╘╘ 
var
╒╒ 
buildDir
╒╒ 
=
╒╒ 
Path
╒╒ #
.
╒╒# $
Combine
╒╒$ +
(
╒╒+ ,

channelDir
╒╒, 6
,
╒╒6 7
build
╒╒8 =
)
╒╒= >
;
╒╒> ?
var
╓╓ 
executablePaths
╓╓ #
=
╓╓$ % 
GetExecutablePaths
╓╓& 8
(
╓╓8 9
dirName
╓╓9 @
,
╓╓@ A
searchPattern
╓╓B O
,
╓╓O P
isMac
╓╓Q V
,
╓╓V W
buildDir
╓╓X `
)
╓╓` a
;
╓╓a b
if
╫╫ 
(
╫╫ 
executablePaths
╫╫ #
.
╫╫# $
Any
╫╫$ '
(
╫╫' (
)
╫╫( )
)
╫╫) *
return
╪╪ 
executablePaths
╪╪ (
;
╪╪( )
}
┘┘ 
}
┌┌ 
return
▌▌ 
	Directory
▌▌ 
.
▌▌ 
GetDirectories
▌▌ +
(
▌▌+ ,

channelDir
▌▌, 6
)
▌▌6 7
.
▐▐ 

SelectMany
▐▐ 
(
▐▐ 
buildDir
▐▐ "
=>
▐▐# % 
GetExecutablePaths
▐▐& 8
(
▐▐8 9
dirName
▐▐9 @
,
▐▐@ A
searchPattern
▐▐B O
,
▐▐O P
isMac
▐▐Q V
,
▐▐V W
buildDir
▐▐X `
)
▐▐` a
)
▐▐a b
;
▐▐b c
}
▀▀
 
catch
рр
 
(
рр 
	Exception
рр 
e
рр 
)
рр 
{
сс
 
Logger
уу 
.
уу 
Warn
уу 
(
уу 
$"
уу +
Failed to get RiderPath from 
уу 7
{
уу7 8

channelDir
уу8 B
}
ууB C
"
ууC D
,
ууD E
e
ууF G
)
ууG H
;
ууH I
}
фф
 
return
цц
 
new
цц 
string
цц 
[
цц 
$num
цц 
]
цц 
;
цц 
}
чч 	
)
чч	 

.
шш 	
Where
шш	 
(
шш 
c
шш 
=>
шш 
!
шш 
string
шш 
.
шш 
IsNullOrEmpty
шш )
(
шш) *
c
шш* +
)
шш+ ,
)
шш, -
.
щщ 	
ToArray
щщ	 
(
щщ 
)
щщ 
;
щщ 
return
ъъ 
paths
ъъ 
;
ъъ 
}
ыы 
private
ээ 
static
ээ 
string
ээ 
[
ээ 
]
ээ  
GetExecutablePaths
ээ .
(
ээ. /
string
ээ/ 5
dirName
ээ6 =
,
ээ= >
string
ээ? E
searchPattern
ээF S
,
ээS T
bool
ээU Y
isMac
ээZ _
,
ээ_ `
string
ээa g
buildDir
ээh p
)
ээp q
{
юю 
var
яя 	
folder
яя
 
=
яя 
new
яя 
DirectoryInfo
яя $
(
яя$ %
Path
яя% )
.
яя) *
Combine
яя* 1
(
яя1 2
buildDir
яя2 :
,
яя: ;
dirName
яя< C
)
яяC D
)
яяD E
;
яяE F
if
ЁЁ 
(
ЁЁ	 

!
ЁЁ
 
folder
ЁЁ 
.
ЁЁ 
Exists
ЁЁ 
)
ЁЁ 
return
ёё 
new
ёё 
string
ёё 
[
ёё 
$num
ёё 
]
ёё 
;
ёё 
if
єє 
(
єє	 

!
єє
 
isMac
єє 
)
єє 
return
ЇЇ 
new
ЇЇ 
[
ЇЇ 
]
ЇЇ 
{
ЇЇ 
Path
ЇЇ 
.
ЇЇ 
Combine
ЇЇ "
(
ЇЇ" #
folder
ЇЇ# )
.
ЇЇ) *
FullName
ЇЇ* 2
,
ЇЇ2 3
searchPattern
ЇЇ4 A
)
ЇЇA B
}
ЇЇB C
.
ЇЇC D
Where
ЇЇD I
(
ЇЇI J
File
ЇЇJ N
.
ЇЇN O
Exists
ЇЇO U
)
ЇЇU V
.
ЇЇV W
ToArray
ЇЇW ^
(
ЇЇ^ _
)
ЇЇ_ `
;
ЇЇ` a
return
її 
folder
її 
.
її 
GetDirectories
її "
(
її" #
searchPattern
її# 0
)
її0 1
.
її1 2
Select
її2 8
(
її8 9
f
її9 :
=>
її; =
f
її> ?
.
її? @
FullName
її@ H
)
їїH I
.
ЎЎ 	
Where
ЎЎ	 
(
ЎЎ 
	Directory
ЎЎ 
.
ЎЎ 
Exists
ЎЎ 
)
ЎЎ  
.
ЎЎ  !
ToArray
ЎЎ! (
(
ЎЎ( )
)
ЎЎ) *
;
ЎЎ* +
}
ўў 
[
¤¤ 
Serializable
¤¤ 
]
¤¤ 
class
■■ 	
SettingsJson
■■
 
{
   
public
ББ 
string
ББ 
install_location
ББ $
;
ББ$ %
[
ГГ 
	CanBeNull
ГГ 
]
ГГ 
public
ДД 
static
ДД 
string
ДД (
GetInstallLocationFromJson
ДД 5
(
ДД5 6
string
ДД6 <
json
ДД= A
)
ДДA B
{
ЕЕ 
try
ЖЖ 
{
ЗЗ 	
return
ЛЛ
 
JsonUtility
ЛЛ 
.
ЛЛ 
FromJson
ЛЛ %
<
ЛЛ% &
SettingsJson
ЛЛ& 2
>
ЛЛ2 3
(
ЛЛ3 4
json
ЛЛ4 8
)
ЛЛ8 9
.
ЛЛ9 :
install_location
ЛЛ: J
;
ЛЛJ K
}
НН 	
catch
ОО 
(
ОО 
	Exception
ОО 
)
ОО 
{
ПП 	
Logger
РР
 
.
РР 
Warn
РР 
(
РР 
$"
РР 7
)Failed to get install_location from json 
РР A
{
РРA B
json
РРB F
}
РРF G
"
РРG H
)
РРH I
;
РРI J
}
СС 	
return
УУ 
null
УУ 
;
УУ 
}
ФФ 
}
ХХ 
[
ЧЧ 
Serializable
ЧЧ 
]
ЧЧ 
class
ШШ 	
ToolboxHistory
ШШ
 
{
ЩЩ 
public
ЪЪ 
List
ЪЪ 
<
ЪЪ 
ItemNode
ЪЪ 
>
ЪЪ 
history
ЪЪ #
;
ЪЪ# $
[
ЬЬ 
	CanBeNull
ЬЬ 
]
ЬЬ 
public
ЭЭ 
static
ЭЭ 
string
ЭЭ $
GetLatestBuildFromJson
ЭЭ 1
(
ЭЭ1 2
string
ЭЭ2 8
json
ЭЭ9 =
)
ЭЭ= >
{
ЮЮ 
try
ЯЯ 
{
аа 	
return
дд
 
JsonUtility
дд 
.
дд 
FromJson
дд %
<
дд% &
ToolboxHistory
дд& 4
>
дд4 5
(
дд5 6
json
дд6 :
)
дд: ;
.
дд; <
history
дд< C
.
ддC D
LastOrDefault
ддD Q
(
ддQ R
)
ддR S
?
ддS T
.
ддT U
item
ддU Y
.
ддY Z
build
ддZ _
;
дд_ `
}
жж 	
catch
зз 
(
зз 
	Exception
зз 
)
зз 
{
ии 	
Logger
йй
 
.
йй 
Warn
йй 
(
йй 
$"
йй 3
%Failed to get latest build from json 
йй =
{
йй= >
json
йй> B
}
ййB C
"
ййC D
)
ййD E
;
ййE F
}
кк 	
return
мм 
null
мм 
;
мм 
}
нн 
}
оо 
[
░░ 
Serializable
░░ 
]
░░ 
class
▒▒ 	
ItemNode
▒▒
 
{
▓▓ 
public
││ 
	BuildNode
││ 
item
││ 
;
││ 
}
┤┤ 
[
╢╢ 
Serializable
╢╢ 
]
╢╢ 
class
╖╖ 	
	BuildNode
╖╖
 
{
╕╕ 
public
╣╣ 
string
╣╣ 
build
╣╣ 
;
╣╣ 
}
║║ 
[
╝╝ 
Serializable
╝╝ 
]
╝╝ 
internal
╜╜ 
class
╜╜ 
ProductInfo
╜╜ 
{
╛╛ 
public
┐┐ 
string
┐┐ 
version
┐┐ 
;
┐┐ 
public
└└ 
string
└└ 
versionSuffix
└└ !
;
└└! "
[
┬┬ 
	CanBeNull
┬┬ 
]
┬┬ 
internal
├├ 
static
├├ 
ProductInfo
├├ !
GetProductInfo
├├" 0
(
├├0 1
string
├├1 7
json
├├8 <
)
├├< =
{
── 
try
┼┼ 
{
╞╞ 	
var
╟╟
 
productInfo
╟╟ 
=
╟╟ 
JsonUtility
╟╟ '
.
╟╟' (
FromJson
╟╟( 0
<
╟╟0 1
ProductInfo
╟╟1 <
>
╟╟< =
(
╟╟= >
json
╟╟> B
)
╟╟B C
;
╟╟C D
return
╚╚
 
productInfo
╚╚ 
;
╚╚ 
}
╔╔ 	
catch
╩╩ 
(
╩╩ 
	Exception
╩╩ 
)
╩╩ 
{
╦╦ 	
Logger
╠╠
 
.
╠╠ 
Warn
╠╠ 
(
╠╠ 
$"
╠╠ .
 Failed to get version from json 
╠╠ 8
{
╠╠8 9
json
╠╠9 =
}
╠╠= >
"
╠╠> ?
)
╠╠? @
;
╠╠@ A
}
══ 	
return
╧╧ 
null
╧╧ 
;
╧╧ 
}
╨╨ 
}
╤╤ 
[
╘╘ 
Serializable
╘╘ 
]
╘╘ 
class
╒╒ 	 
ToolboxInstallData
╒╒
 
{
╓╓ 
public
╪╪ 
ActiveApplication
╪╪  
active_application
╪╪ 1
;
╪╪1 2
[
┌┌ 
	CanBeNull
┌┌ 
]
┌┌ 
public
██ 
static
██ 
string
██ $
GetLatestBuildFromJson
██ 1
(
██1 2
string
██2 8
json
██9 =
)
██= >
{
▄▄ 
try
▌▌ 
{
▐▐ 	
var
тт
 
toolbox
тт 
=
тт 
JsonUtility
тт #
.
тт# $
FromJson
тт$ ,
<
тт, - 
ToolboxInstallData
тт- ?
>
тт? @
(
тт@ A
json
ттA E
)
ттE F
;
ттF G
var
фф
 
builds
фф 
=
фф 
toolbox
фф 
.
фф  
active_application
фф 1
.
фф1 2
builds
фф2 8
;
фф8 9
if
хх
 
(
хх 
builds
хх 
!=
хх 
null
хх 
&&
хх 
builds
хх  &
.
хх& '
Any
хх' *
(
хх* +
)
хх+ ,
)
хх, -
return
цц 
builds
цц 
.
цц 
First
цц 
(
цц  
)
цц  !
;
цц! "
}
чч 	
catch
шш 
(
шш 
	Exception
шш 
)
шш 
{
щщ 	
Logger
ъъ
 
.
ъъ 
Warn
ъъ 
(
ъъ 
$"
ъъ 3
%Failed to get latest build from json 
ъъ =
{
ъъ= >
json
ъъ> B
}
ъъB C
"
ъъC D
)
ъъD E
;
ъъE F
}
ыы 	
return
ээ 
null
ээ 
;
ээ 
}
юю 
}
яя 
[
ёё 
Serializable
ёё 
]
ёё 
class
ЄЄ 	
ActiveApplication
ЄЄ
 
{
єє 
public
її 
List
її 
<
її 
string
її 
>
її 
builds
її  
;
її  !
}
ЎЎ 
internal
·· 
struct
·· 
	RiderInfo
·· 
{
√√ 
public
№№ 
bool
№№ 
	IsToolbox
№№ 
;
№№ 
public
¤¤ 
string
¤¤ 
Presentation
¤¤  
;
¤¤  !
public
■■ 
Version
■■ 
BuildNumber
■■  
;
■■  !
public
   
ProductInfo
   
ProductInfo
   $
;
  $ %
public
АА 
string
АА 
Path
АА 
;
АА 
public
ВВ 
	RiderInfo
ВВ 
(
ВВ 
string
ВВ 
path
ВВ "
,
ВВ" #
bool
ВВ$ (
	isToolbox
ВВ) 2
)
ВВ2 3
{
ГГ 
if
ДД 

(
ДД 
path
ДД 
==
ДД 
RiderScriptEditor
ДД %
.
ДД% &
CurrentEditor
ДД& 3
)
ДД3 4
{
ЕЕ 	#
RiderScriptEditorData
ЖЖ
 
.
ЖЖ  
instance
ЖЖ  (
.
ЖЖ( )
Init
ЖЖ) -
(
ЖЖ- .
)
ЖЖ. /
;
ЖЖ/ 0
BuildNumber
ЗЗ
 
=
ЗЗ #
RiderScriptEditorData
ЗЗ -
.
ЗЗ- .
instance
ЗЗ. 6
.
ЗЗ6 7
editorBuildNumber
ЗЗ7 H
.
ЗЗH I
	ToVersion
ЗЗI R
(
ЗЗR S
)
ЗЗS T
;
ЗЗT U
ProductInfo
ИИ
 
=
ИИ #
RiderScriptEditorData
ИИ -
.
ИИ- .
instance
ИИ. 6
.
ИИ6 7
productInfo
ИИ7 B
;
ИИB C
}
ЙЙ 	
else
КК 
{
ЛЛ 	
BuildNumber
ММ
 
=
ММ 
GetBuildNumber
ММ &
(
ММ& '
path
ММ' +
)
ММ+ ,
;
ММ, -
ProductInfo
НН
 
=
НН 
GetBuildVersion
НН '
(
НН' (
path
НН( ,
)
НН, -
;
НН- .
}
ОО 	
Path
ПП 
=
ПП 
new
ПП 
FileInfo
ПП 
(
ПП 
path
ПП  
)
ПП  !
.
ПП! "
FullName
ПП" *
;
ПП* +
var
РР 
presentation
РР 
=
РР 
$"
РР 
Rider 
РР #
{
РР# $
BuildNumber
РР$ /
}
РР/ 0
"
РР0 1
;
РР1 2
if
ТТ 

(
ТТ 
ProductInfo
ТТ 
!=
ТТ 
null
ТТ 
&&
ТТ  "
!
ТТ# $
string
ТТ$ *
.
ТТ* +
IsNullOrEmpty
ТТ+ 8
(
ТТ8 9
ProductInfo
ТТ9 D
.
ТТD E
version
ТТE L
)
ТТL M
)
ТТM N
{
УУ 	
var
ФФ
 
suffix
ФФ 
=
ФФ 
string
ФФ 
.
ФФ 
IsNullOrEmpty
ФФ +
(
ФФ+ ,
ProductInfo
ФФ, 7
.
ФФ7 8
versionSuffix
ФФ8 E
)
ФФE F
?
ФФG H
$str
ФФI K
:
ФФL M
$"
ФФN P
{
ФФQ R
ProductInfo
ФФR ]
.
ФФ] ^
versionSuffix
ФФ^ k
}
ФФk l
"
ФФl m
;
ФФm n
presentation
ХХ
 
=
ХХ 
$"
ХХ 
Rider 
ХХ !
{
ХХ! "
ProductInfo
ХХ" -
.
ХХ- .
version
ХХ. 5
}
ХХ5 6
{
ХХ6 7
suffix
ХХ7 =
}
ХХ= >
"
ХХ> ?
;
ХХ? @
}
ЦЦ 	
if
ШШ 

(
ШШ 
	isToolbox
ШШ 
)
ШШ 
presentation
ЩЩ
 
+=
ЩЩ 
$str
ЩЩ 0
;
ЩЩ0 1
Presentation
ЫЫ 
=
ЫЫ 
presentation
ЫЫ #
;
ЫЫ# $
	IsToolbox
ЬЬ 
=
ЬЬ 
	isToolbox
ЬЬ 
;
ЬЬ 
}
ЭЭ 
}
ЮЮ 
private
аа 
static
аа 
class
аа 
Logger
аа 
{
бб 
internal
вв 
static
вв 
void
вв 
Warn
вв 
(
вв  
string
вв  &
message
вв' .
,
вв. /
	Exception
вв0 9
e
вв: ;
=
вв< =
null
вв> B
)
ввB C
{
гг 
Debug
йй 
.
йй 
LogError
йй 
(
йй 
message
йй 
)
йй 
;
йй  
if
кк 

(
кк 
e
кк 
!=
кк 
null
кк 
)
кк 
Debug
лл
 
.
лл 
LogException
лл 
(
лл 
e
лл 
)
лл 
;
лл  
}
нн 
}
оо 
}
пп 
}░░ ╦	
ЯD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\CallbackInitializer.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
UnitTesting  +
{ 
[ 
InitializeOnLoad 
] 
internal		 

static		 
class		 
CallbackInitializer		 +
{

 
static 

CallbackInitializer 
( 
)  
{ 
if 
(	 

CallbackData
 
. 
instance 
.  
isRider  '
)' (
ScriptableObject 
. 
CreateInstance '
<' (
TestRunnerApi( 5
>5 6
(6 7
)7 8
.8 9
RegisterCallbacks9 J
(J K
ScriptableObjectK [
.[ \
CreateInstance\ j
<j k
TestsCallbackk x
>x y
(y z
)z {
,{ |
$num} ~
)~ 
;	 А
} 
} 
} Г
ШD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\SerializableVersion.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
Util  $
{ 
[ 
Serializable 
] 
internal 

class 
SerializableVersion $
{ 
public 

SerializableVersion 
( 
Version &
version' .
). /
{		 
Major 
= 
version 
. 
Major 
; 
Minor 
= 
version 
. 
Minor 
; 
if 
(	 

version
 
. 
Build 
>= 
$num 
) 
Build 
= 
version 
. 
Build 
; 
if 
(	 

version
 
. 
Revision 
>= 
$num 
)  
Revision 
= 
version 
. 
Revision #
;# $
} 
public 

int 
Build 
; 
public 

int 
Major 
; 
public 

int 
Minor 
; 
public 

int 
Revision 
; 
} 
internal 

static 
class 
VersionExtension (
{ 
public 

static 
SerializableVersion %!
ToSerializableVersion& ;
(; <
this< @
VersionA H
versionI P
)P Q
{ 
if 
(	 

version
 
== 
null 
) 
return 
null 
; 
return   
new   
SerializableVersion   $
(  $ %
version  % ,
)  , -
;  - .
}!! 
public## 

static## 
Version## 
	ToVersion## #
(### $
this##$ (
SerializableVersion##) <
serializableVersion##= P
)##P Q
{$$ 
if%% 
(%%	 

serializableVersion%%
 
==%%  
null%%! %
)%%% &
return&& 
null&& 
;&& 
var(( 	
build((
 
=(( 
serializableVersion(( %
.((% &
Build((& +
;((+ ,
if)) 
())	 

build))
 
<)) 
$num)) 
))) 
build**
 
=** 
$num** 
;** 
var++ 	
revision++
 
=++ 
serializableVersion++ (
.++( )
Revision++) 1
;++1 2
if,, 
(,,	 

revision,,
 
<,, 
$num,, 
),, 
revision--
 
=-- 
$num-- 
;-- 
return// 
new// 
Version// 
(// 
serializableVersion// ,
.//, -
Major//- 2
,//2 3
serializableVersion//4 G
.//G H
Minor//H M
,//M N
build//O T
,//T U
revision00
 
)00 
;00 
}11 
}22 
}33 ╚
аD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IGUIDGenerator.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

	interface 
IGUIDGenerator #
{ 
string 

ProjectGuid 
( 
string 
projectName )
,) *
string+ 1
assemblyName2 >
)> ?
;? @
string 

SolutionGuid 
( 
string 
projectName *
,* +
string, 2
	extension3 <
)< =
;= >
} 
} д├
гD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\ProjectGeneration.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

class 
ProjectGeneration "
:# $

IGenerator% /
{ 
enum 
ScriptingLanguage	 
{ 
None 

,
 
CSharp 
} 
public 

static 
readonly 
string !
MSBuildNamespaceUri" 5
=6 7
$str8 m
;m n
static 

readonly 

Dictionary 
< 
string %
,% &
ScriptingLanguage' 8
>8 9(
k_BuiltinSupportedExtensions: V
=W X
new 	

Dictionary
 
< 
string 
, 
ScriptingLanguage .
>. /
{   
{!! 	
$str!!
 
,!! 
ScriptingLanguage!! !
.!!! "
CSharp!!" (
}!!) *
,!!* +
{"" 	
$str""
 
,"" 
ScriptingLanguage"" #
.""# $
None""$ (
}"") *
,""* +
{## 	
$str##
 
,## 
ScriptingLanguage## "
.##" #
None### '
}##( )
,##) *
{$$ 	
$str$$
 
,$$ 
ScriptingLanguage$$ %
.$$% &
None$$& *
}$$+ ,
,$$, -
{%% 	
$str%%
 
,%% 
ScriptingLanguage%% &
.%%& '
None%%' +
}%%, -
,%%- .
{&& 	
$str&&
 
,&& 
ScriptingLanguage&& $
.&&$ %
None&&% )
}&&* +
,&&+ ,
{'' 	
$str''
 
,'' 
ScriptingLanguage'' #
.''# $
None''$ (
}'') *
,''* +
{(( 	
$str((
 
,(( 
ScriptingLanguage(( &
.((& '
None((' +
}((, -
,((- .
{)) 	
$str))
 
,)) 
ScriptingLanguage)) '
.))' (
None))( ,
}))- .
,)). /
{** 	
$str**
 
,** 
ScriptingLanguage** '
.**' (
None**( ,
}**- .
}++ 
;++ 
string-- 
*
m_SolutionProjectEntryTemplate-- )
=--* +
string--, 2
.--2 3
Join--3 7
(--7 8
Environment--8 C
.--C D
NewLine--D K
,--K L
$str.. =
,..= >
$str// 
)// 
.// 
Replace// 
(// 
$str// #
,//# $
$str//% )
)//) *
;//* +
string11 
2
&m_SolutionProjectConfigurationTemplate11 1
=112 3
string114 :
.11: ;
Join11; ?
(11? @
Environment11@ K
.11K L
NewLine11L S
,11S T
$str22 @
,22@ A
$str33 >
,33> ?
$str44 D
,44D E
$str55 B
)55B C
.55C D
Replace55D K
(55K L
$str55L R
,55R S
$str55T X
)55X Y
;55Y Z
static77 

readonly77 
string77 
[77 
]77 $
k_ReimportSyncExtensions77 5
=776 7
{778 9
$str77: @
,77@ A
$str77B K
}77L M
;77M N
staticAA 

readonlyAA 
RegexAA '
k_ScriptReferenceExpressionAA 5
=AA6 7
newAA8 ;
RegexAA< A
(AAA B
$strBB C
,BBC D
RegexOptionsCC 
.CC 
CompiledCC 
|CC 
RegexOptionsCC *
.CC* +

IgnoreCaseCC+ 5
)CC5 6
;CC6 7
stringEE 

[EE
 
]EE (
m_ProjectSupportedExtensionsEE )
=EE* +
newEE, /
stringEE0 6
[EE6 7
$numEE7 8
]EE8 9
;EE9 :
publicGG 

stringGG 
ProjectDirectoryGG "
{GG# $
getGG% (
;GG( )
}GG* +
readonlyII 
stringII 
m_ProjectNameII !
;II! "
readonlyJJ !
IAssemblyNameProviderJJ ""
m_AssemblyNameProviderJJ# 9
;JJ9 :
readonlyKK 
IFileIOKK 
m_FileIOProviderKK %
;KK% &
readonlyLL 
IGUIDGeneratorLL 
m_GUIDGeneratorLL +
;LL+ ,
internalNN 
staticNN 
boolNN $
isRiderProjectGenerationNN 1
;NN1 2
constPP 	
stringPP
 
k_ToolsVersionPP 
=PP  !
$strPP" '
;PP' (
constQQ 	
stringQQ
 
k_ProductVersionQQ !
=QQ" #
$strQQ$ 0
;QQ0 1
constRR 	
stringRR
 
k_BaseDirectoryRR  
=RR! "
$strRR# &
;RR& '
constSS 	
stringSS
 $
k_TargetFrameworkVersionSS )
=SS* +
$strSS, 4
;SS4 5
constTT 	
stringTT
 #
k_TargetLanguageVersionTT (
=TT) *
$strTT+ 3
;TT3 4!
IAssemblyNameProviderVV 

IGeneratorVV $
.VV$ % 
AssemblyNameProviderVV% 9
=>VV: <"
m_AssemblyNameProviderVV= S
;VVS T
publicXX 

ProjectGenerationXX 
(XX 
)XX 
:YY 
thisYY 
(YY 
	DirectoryYY 
.YY 
	GetParentYY  
(YY  !
ApplicationYY! ,
.YY, -
dataPathYY- 5
)YY5 6
.YY6 7
FullNameYY7 ?
)YY? @
{YYA B
}YYC D
public[[ 

ProjectGeneration[[ 
([[ 
string[[ #
tempDirectory[[$ 1
)[[1 2
:\\ 
this\\ 
(\\ 
tempDirectory\\ 
,\\ 
new\\  
AssemblyNameProvider\\  4
(\\4 5
)\\5 6
,\\6 7
new\\8 ;
FileIOProvider\\< J
(\\J K
)\\K L
,\\L M
new\\N Q
GUIDProvider\\R ^
(\\^ _
)\\_ `
)\\` a
{\\b c
}\\d e
public^^ 

ProjectGeneration^^ 
(^^ 
string^^ #
tempDirectory^^$ 1
,^^1 2!
IAssemblyNameProvider^^3 H 
assemblyNameProvider^^I ]
,^^] ^
IFileIO^^_ f
fileIoProvider^^g u
,^^u v
IGUIDGenerator	^^w Е
guidGenerator
^^Ж У
)
^^У Ф
{__ 
ProjectDirectory`` 
=`` 
tempDirectory`` &
.``& '
Replace``' .
(``. /
$char``/ 3
,``3 4
$char``5 8
)``8 9
;``9 :
m_ProjectNameaa 
=aa 
Pathaa 
.aa 
GetFileNameaa &
(aa& '
ProjectDirectoryaa' 7
)aa7 8
;aa8 9"
m_AssemblyNameProviderbb 
=bb  
assemblyNameProviderbb 3
;bb3 4
m_FileIOProvidercc 
=cc 
fileIoProvidercc '
;cc' (
m_GUIDGeneratordd 
=dd 
guidGeneratordd %
;dd% &
}ee 
publicss 

boolss 
SyncIfNeededss 
(ss 
IEnumerabless (
<ss( )
stringss) /
>ss/ 0
affectedFilesss1 >
,ss> ?
IEnumerabless@ K
<ssK L
stringssL R
>ssR S
reimportedFilesssT c
)ssc d
{tt +
SetupProjectSupportedExtensionsuu %
(uu% &
)uu& '
;uu' (
ifww 
(ww	 
 
HasFilesBeenModifiedww
 
(ww 
affectedFilesww ,
,ww, -
reimportedFilesww. =
)ww= >
||ww? A!
RiderScriptEditorDatawwB W
.wwW X
instancewwX `
.ww` a

hasChangeswwa k
)wwk l
{xx 
Syncyy 
(yy 
)yy 
;yy !
RiderScriptEditorDatazz 
.zz 
instancezz &
.zz& '

hasChangeszz' 1
=zz2 3
falsezz4 9
;zz9 :
return{{ 
true{{ 
;{{ 
}|| 
return~~ 
false~~ 
;~~ 
} 
bool
ББ "
HasFilesBeenModified
ББ	 
(
ББ 
IEnumerable
ББ )
<
ББ) *
string
ББ* 0
>
ББ0 1
affectedFiles
ББ2 ?
,
ББ? @
IEnumerable
ББA L
<
ББL M
string
ББM S
>
ББS T
reimportedFiles
ББU d
)
ББd e
{
ВВ 
return
ГГ 
affectedFiles
ГГ 
.
ГГ 
Any
ГГ 
(
ГГ (
ShouldFileBePartOfSolution
ГГ 9
)
ГГ9 :
||
ГГ; =
reimportedFiles
ГГ> M
.
ГГM N
Any
ГГN Q
(
ГГQ R)
ShouldSyncOnReimportedAsset
ГГR m
)
ГГm n
;
ГГn o
}
ДД 
static
ЖЖ 

bool
ЖЖ )
ShouldSyncOnReimportedAsset
ЖЖ +
(
ЖЖ+ ,
string
ЖЖ, 2
asset
ЖЖ3 8
)
ЖЖ8 9
{
ЗЗ 
return
ИИ &
k_ReimportSyncExtensions
ИИ %
.
ИИ% &
Contains
ИИ& .
(
ИИ. /
Path
ИИ/ 3
.
ИИ3 4
GetExtension
ИИ4 @
(
ИИ@ A
asset
ИИA F
)
ИИF G
)
ИИG H
||
ИИI K
Path
ИИL P
.
ИИP Q
GetFileName
ИИQ \
(
ИИ\ ]
asset
ИИ] b
)
ИИb c
==
ИИd f
$str
ИИg p
;
ИИp q
}
ЙЙ 
public
ЛЛ 

void
ЛЛ 
Sync
ЛЛ 
(
ЛЛ 
)
ЛЛ 
{
ММ -
SetupProjectSupportedExtensions
НН %
(
НН% &
)
НН& '
;
НН' (
var
ОО 	
types
ОО
 
=
ОО (
GetAssetPostprocessorTypes
ОО ,
(
ОО, -
)
ОО- .
;
ОО. /&
isRiderProjectGeneration
ПП 
=
ПП  
true
ПП! %
;
ПП% &
bool
РР 
2
$externalCodeAlreadyGeneratedProjects
РР /
=
РР0 1+
OnPreGeneratingCSProjectFiles
РР2 O
(
РРO P
types
РРP U
)
РРU V
;
РРV W&
isRiderProjectGeneration
СС 
=
СС  
false
СС! &
;
СС& '
if
ТТ 
(
ТТ	 

!
ТТ
 2
$externalCodeAlreadyGeneratedProjects
ТТ /
)
ТТ/ 0
{
УУ 1
#GenerateAndWriteSolutionAndProjects
ФФ +
(
ФФ+ ,
types
ФФ, 1
)
ФФ1 2
;
ФФ2 3
}
ХХ '
OnGeneratedCSProjectFiles
ЧЧ 
(
ЧЧ  
types
ЧЧ  %
)
ЧЧ% &
;
ЧЧ& '
}
ШШ 
public
ЪЪ 

bool
ЪЪ &
HasSolutionBeenGenerated
ЪЪ (
(
ЪЪ( )
)
ЪЪ) *
{
ЫЫ 
return
ЬЬ 
m_FileIOProvider
ЬЬ 
.
ЬЬ 
Exists
ЬЬ $
(
ЬЬ$ %
SolutionFile
ЬЬ% 1
(
ЬЬ1 2
)
ЬЬ2 3
)
ЬЬ3 4
;
ЬЬ4 5
}
ЭЭ 
void
ЯЯ -
SetupProjectSupportedExtensions
ЯЯ	 (
(
ЯЯ( )
)
ЯЯ) *
{
аа *
m_ProjectSupportedExtensions
бб "
=
бб# $$
m_AssemblyNameProvider
бб% ;
.
бб; <(
ProjectSupportedExtensions
бб< V
;
ббV W
}
вв 
bool
дд (
ShouldFileBePartOfSolution
дд	 #
(
дд# $
string
дд$ *
file
дд+ /
)
дд/ 0
{
ее 
if
зз 
(
зз	 
$
m_AssemblyNameProvider
зз
  
.
зз  !'
IsInternalizedPackagePath
зз! :
(
зз: ;
file
зз; ?
)
зз? @
)
зз@ A
{
ии 
return
йй
 
false
йй 
;
йй 
}
кк 
return
лл 
HasValidExtension
лл 
(
лл 
file
лл #
)
лл# $
;
лл$ %
}
мм 
bool
оо 
HasValidExtension
оо	 
(
оо 
string
оо !
file
оо" &
)
оо& '
{
пп 
string
░░ 
	extension
░░ 
=
░░ 
Path
░░ 
.
░░ 
GetExtension
░░ *
(
░░* +
file
░░+ /
)
░░/ 0
;
░░0 1
if
││ 
(
││	 

	extension
││
 
==
││ 
$str
││ 
)
││ 
return
┤┤
 
true
┤┤ 
;
┤┤ 
if
╢╢ 
(
╢╢	 

file
╢╢
 
.
╢╢ 
ToLower
╢╢ 
(
╢╢ 
)
╢╢ 
.
╢╢ 
EndsWith
╢╢ !
(
╢╢! "
$str
╢╢" +
)
╢╢+ ,
)
╢╢, -
return
╖╖
 
true
╖╖ 
;
╖╖ 
return
╣╣ "
IsSupportedExtension
╣╣ !
(
╣╣! "
	extension
╣╣" +
)
╣╣+ ,
;
╣╣, -
}
║║ 
bool
╝╝ "
IsSupportedExtension
╝╝	 
(
╝╝ 
string
╝╝ $
	extension
╝╝% .
)
╝╝. /
{
╜╜ 
	extension
╛╛ 
=
╛╛ 
	extension
╛╛ 
.
╛╛ 
	TrimStart
╛╛ %
(
╛╛% &
$char
╛╛& )
)
╛╛) *
;
╛╛* +
return
┐┐ *
k_BuiltinSupportedExtensions
┐┐ )
.
┐┐) *
ContainsKey
┐┐* 5
(
┐┐5 6
	extension
┐┐6 ?
)
┐┐? @
||
┐┐A C*
m_ProjectSupportedExtensions
┐┐D `
.
┐┐` a
Contains
┐┐a i
(
┐┐i j
	extension
┐┐j s
)
┐┐s t
;
┐┐t u
}
└└ 
static
┬┬ 

ScriptingLanguage
┬┬ "
ScriptingLanguageFor
┬┬ 1
(
┬┬1 2
Assembly
┬┬2 :
island
┬┬; A
)
┬┬A B
{
├├ 
return
── "
ScriptingLanguageFor
── !
(
──! "'
GetExtensionOfSourceFiles
──" ;
(
──; <
island
──< B
.
──B C
sourceFiles
──C N
)
──N O
)
──O P
;
──P Q
}
┼┼ 
static
╟╟ 

string
╟╟ '
GetExtensionOfSourceFiles
╟╟ +
(
╟╟+ ,
string
╟╟, 2
[
╟╟2 3
]
╟╟3 4
files
╟╟5 :
)
╟╟: ;
{
╚╚ 
return
╔╔ 
files
╔╔ 
.
╔╔ 
Length
╔╔ 
>
╔╔ 
$num
╔╔ 
?
╔╔ &
GetExtensionOfSourceFile
╔╔  8
(
╔╔8 9
files
╔╔9 >
[
╔╔> ?
$num
╔╔? @
]
╔╔@ A
)
╔╔A B
:
╔╔C D
$str
╔╔E I
;
╔╔I J
}
╩╩ 
static
╠╠ 

string
╠╠ &
GetExtensionOfSourceFile
╠╠ *
(
╠╠* +
string
╠╠+ 1
file
╠╠2 6
)
╠╠6 7
{
══ 
var
╬╬ 	
ext
╬╬
 
=
╬╬ 
Path
╬╬ 
.
╬╬ 
GetExtension
╬╬ !
(
╬╬! "
file
╬╬" &
)
╬╬& '
.
╬╬' (
ToLower
╬╬( /
(
╬╬/ 0
)
╬╬0 1
;
╬╬1 2
ext
╧╧ 	
=
╧╧
 
ext
╧╧ 
.
╧╧ 
	Substring
╧╧ 
(
╧╧ 
$num
╧╧ 
)
╧╧ 
;
╧╧ 
return
╨╨ 
ext
╨╨ 
;
╨╨ 
}
╤╤ 
static
╙╙ 

ScriptingLanguage
╙╙ "
ScriptingLanguageFor
╙╙ 1
(
╙╙1 2
string
╙╙2 8
	extension
╙╙9 B
)
╙╙B C
{
╘╘ 
return
╒╒ *
k_BuiltinSupportedExtensions
╒╒ )
.
╒╒) *
TryGetValue
╒╒* 5
(
╒╒5 6
	extension
╒╒6 ?
.
╒╒? @
	TrimStart
╒╒@ I
(
╒╒I J
$char
╒╒J M
)
╒╒M N
,
╒╒N O
out
╒╒P S
var
╒╒T W
result
╒╒X ^
)
╒╒^ _
?
╓╓ 	
result
╓╓
 
:
╫╫ 	
ScriptingLanguage
╫╫
 
.
╫╫ 
None
╫╫  
;
╫╫  !
}
╪╪ 
public
┌┌ 

void
┌┌ 1
#GenerateAndWriteSolutionAndProjects
┌┌ 3
(
┌┌3 4
Type
┌┌4 8
[
┌┌8 9
]
┌┌9 :
types
┌┌; @
)
┌┌@ A
{
██ 
var
▐▐ 	

assemblies
▐▐
 
=
▐▐ $
m_AssemblyNameProvider
▐▐ -
.
▐▐- .
GetAssemblies
▐▐. ;
(
▐▐; <(
ShouldFileBePartOfSolution
▐▐< V
)
▐▐V W
;
▐▐W X
var
рр 	"
allAssetProjectParts
рр
 
=
рр  *
GenerateAllAssetProjectParts
рр! =
(
рр= >
)
рр> ?
;
рр? @
var
тт 	
monoIslands
тт
 
=
тт 

assemblies
тт "
.
тт" #
ToList
тт# )
(
тт) *
)
тт* +
;
тт+ ,
SyncSolution
фф 
(
фф 
monoIslands
фф 
,
фф 
types
фф  %
)
фф% &
;
фф& '
var
хх 	
allProjectIslands
хх
 
=
хх $
RelevantIslandsForMode
хх 4
(
хх4 5
monoIslands
хх5 @
)
хх@ A
.
ххA B
ToList
ххB H
(
ххH I
)
ххI J
;
ххJ K
foreach
цц 
(
цц 
Assembly
цц 
assembly
цц  
in
цц! #
allProjectIslands
цц$ 5
)
цц5 6
{
чч 
var
шш 
responseFileData
шш 
=
шш #
ParseResponseFileData
шш 4
(
шш4 5
assembly
шш5 =
)
шш= >
;
шш> ?
SyncProject
щщ 
(
щщ 
assembly
щщ 
,
щщ "
allAssetProjectParts
щщ 2
,
щщ2 3
responseFileData
щщ4 D
,
щщD E
types
щщF K
,
щщK L'
GetAllRoslynAnalyzerPaths
щщM f
(
щщf g
)
щщg h
.
щщh i
ToArray
щщi p
(
щщp q
)
щщq r
)
щщr s
;
щщs t
}
ъъ 
}
ыы 
IEnumerable
ээ 
<
ээ 
ResponseFileData
ээ  
>
ээ  !#
ParseResponseFileData
ээ" 7
(
ээ7 8
Assembly
ээ8 @
assembly
ээA I
)
ээI J
{
юю 
var
яя 	(
systemReferenceDirectories
яя
 $
=
яя% &!
CompilationPipeline
ЁЁ 
.
ЁЁ *
GetSystemAssemblyDirectories
ЁЁ 8
(
ЁЁ8 9
assembly
ЁЁ9 A
.
ЁЁA B
compilerOptions
ЁЁB Q
.
ЁЁQ R#
ApiCompatibilityLevel
ЁЁR g
)
ЁЁg h
;
ЁЁh i

Dictionary
ЄЄ 
<
ЄЄ 
string
ЄЄ 
,
ЄЄ 
ResponseFileData
ЄЄ )
>
ЄЄ) *
responseFilesData
ЄЄ+ <
=
ЄЄ= >
assembly
ЄЄ? G
.
ЄЄG H
compilerOptions
ЄЄH W
.
ЄЄW X
ResponseFiles
ЄЄX e
.
ЄЄe f
ToDictionary
ЄЄf r
(
ЄЄr s
x
єє 	
=>
єє
 
x
єє 
,
єє 
x
єє 
=>
єє $
m_AssemblyNameProvider
єє +
.
єє+ ,
ParseResponseFile
єє, =
(
єє= >
x
ЇЇ
 
,
ЇЇ 
ProjectDirectory
її
 
,
її (
systemReferenceDirectories
ЎЎ
 $
)
ўў 	
)
ўў	 

;
ўў
 

Dictionary
∙∙ 
<
∙∙ 
string
∙∙ 
,
∙∙ 
ResponseFileData
∙∙ )
>
∙∙) *%
responseFilesWithErrors
∙∙+ B
=
∙∙C D
responseFilesData
∙∙E V
.
∙∙V W
Where
∙∙W \
(
∙∙\ ]
x
∙∙] ^
=>
∙∙_ a
x
∙∙b c
.
∙∙c d
Value
∙∙d i
.
∙∙i j
Errors
∙∙j p
.
∙∙p q
Any
∙∙q t
(
∙∙t u
)
∙∙u v
)
∙∙v w
.
·· 	
ToDictionary
··	 
(
·· 
x
·· 
=>
·· 
x
·· 
.
·· 
Key
··  
,
··  !
x
··" #
=>
··$ &
x
··' (
.
··( )
Value
··) .
)
··. /
;
··/ 0
if
№№ 
(
№№	 
%
responseFilesWithErrors
№№
 !
.
№№! "
Any
№№" %
(
№№% &
)
№№& '
)
№№' (
{
¤¤ 
foreach
■■ 
(
■■ 
var
■■ 
error
■■ 
in
■■ %
responseFilesWithErrors
■■ 5
)
■■5 6
foreach
   
(
   
var
   

valueError
   
in
    "
error
  # (
.
  ( )
Value
  ) .
.
  . /
Errors
  / 5
)
  5 6
{
АА 	
Debug
ББ
 
.
ББ 
LogError
ББ 
(
ББ 
$"
ББ 
{
ББ 
error
ББ !
.
ББ! "
Key
ББ" %
}
ББ% &
 Parse Error : 
ББ& 5
{
ББ5 6

valueError
ББ6 @
}
ББ@ A
"
ББA B
)
ББB C
;
ББC D
}
ВВ 	
}
ГГ 
return
ЕЕ 
responseFilesData
ЕЕ 
.
ЕЕ 
Select
ЕЕ %
(
ЕЕ% &
x
ЕЕ& '
=>
ЕЕ( *
x
ЕЕ+ ,
.
ЕЕ, -
Value
ЕЕ- 2
)
ЕЕ2 3
;
ЕЕ3 4
}
ЖЖ 
private
ИИ 
IEnumerable
ИИ 
<
ИИ 
string
ИИ 
>
ИИ '
GetAllRoslynAnalyzerPaths
ИИ  9
(
ИИ9 :
)
ИИ: ;
{
ЙЙ 
return
КК $
m_AssemblyNameProvider
КК #
.
КК# $$
GetRoslynAnalyzerPaths
КК$ :
(
КК: ;
)
КК; <
;
КК< =
}
ЛЛ 

Dictionary
НН 
<
НН 
string
НН 
,
НН 
string
НН 
>
НН *
GenerateAllAssetProjectParts
НН ;
(
НН; <
)
НН< =
{
ОО 

Dictionary
ПП 
<
ПП 
string
ПП 
,
ПП 
StringBuilder
ПП &
>
ПП& '
stringBuilders
ПП( 6
=
ПП7 8
new
ПП9 <

Dictionary
ПП= G
<
ППG H
string
ППH N
,
ППN O
StringBuilder
ППP ]
>
ПП] ^
(
ПП^ _
)
ПП_ `
;
ПП` a
foreach
СС 
(
СС 
string
СС 
asset
СС 
in
СС $
m_AssemblyNameProvider
СС 5
.
СС5 6
GetAllAssetPaths
СС6 F
(
ССF G
)
ССG H
)
ССH I
{
ТТ 
if
ФФ 

(
ФФ $
m_AssemblyNameProvider
ФФ "
.
ФФ" #'
IsInternalizedPackagePath
ФФ# <
(
ФФ< =
asset
ФФ= B
)
ФФB C
)
ФФC D
{
ХХ 	
continue
ЦЦ
 
;
ЦЦ 
}
ЧЧ 	
string
ЩЩ 
	extension
ЩЩ 
=
ЩЩ 
Path
ЩЩ 
.
ЩЩ  
GetExtension
ЩЩ  ,
(
ЩЩ, -
asset
ЩЩ- 2
)
ЩЩ2 3
;
ЩЩ3 4
if
ЪЪ 

(
ЪЪ "
IsSupportedExtension
ЪЪ  
(
ЪЪ  !
	extension
ЪЪ! *
)
ЪЪ* +
&&
ЪЪ, .
ScriptingLanguage
ЪЪ/ @
.
ЪЪ@ A
None
ЪЪA E
==
ЪЪF H"
ScriptingLanguageFor
ЪЪI ]
(
ЪЪ] ^
	extension
ЪЪ^ g
)
ЪЪg h
)
ЪЪh i
{
ЫЫ 	
var
ЭЭ
 
assemblyName
ЭЭ 
=
ЭЭ $
m_AssemblyNameProvider
ЭЭ 3
.
ЭЭ3 4+
GetAssemblyNameFromScriptPath
ЭЭ4 Q
(
ЭЭQ R
asset
ЭЭR W
+
ЭЭX Y
$str
ЭЭZ _
)
ЭЭ_ `
;
ЭЭ` a
if
ЯЯ
 
(
ЯЯ 
string
ЯЯ 
.
ЯЯ 
IsNullOrEmpty
ЯЯ "
(
ЯЯ" #
assemblyName
ЯЯ# /
)
ЯЯ/ 0
)
ЯЯ0 1
{
аа
 
continue
бб 
;
бб 
}
вв
 
assemblyName
дд
 
=
дд 
FileSystemUtil
дд '
.
дд' (&
FileNameWithoutExtension
дд( @
(
дд@ A
assemblyName
ддA M
)
ддM N
;
ддN O
if
жж
 
(
жж 
!
жж 
stringBuilders
жж 
.
жж 
TryGetValue
жж )
(
жж) *
assemblyName
жж* 6
,
жж6 7
out
жж8 ;
var
жж< ?
projectBuilder
жж@ N
)
жжN O
)
жжO P
{
зз
 
projectBuilder
ии 
=
ии 
new
ии  
StringBuilder
ии! .
(
ии. /
)
ии/ 0
;
ии0 1
stringBuilders
йй 
[
йй 
assemblyName
йй '
]
йй' (
=
йй) *
projectBuilder
йй+ 9
;
йй9 :
}
кк
 
projectBuilder
мм
 
.
мм 
Append
мм 
(
мм  
$str
мм  7
)
мм7 8
.
мм8 9
Append
мм9 ?
(
мм? @$
EscapedRelativePathFor
мм@ V
(
ммV W
asset
ммW \
)
мм\ ]
)
мм] ^
.
мм^ _
Append
мм_ e
(
ммe f
$str
ммf m
)
ммm n
.
нн 
Append
нн 
(
нн 
Environment
нн 
.
нн  
NewLine
нн  '
)
нн' (
;
нн( )
}
оо 	
}
пп 
var
▒▒ 	
result
▒▒
 
=
▒▒ 
new
▒▒ 

Dictionary
▒▒ !
<
▒▒! "
string
▒▒" (
,
▒▒( )
string
▒▒* 0
>
▒▒0 1
(
▒▒1 2
)
▒▒2 3
;
▒▒3 4
foreach
││ 
(
││ 
var
││ 
entry
││ 
in
││ 
stringBuilders
││ *
)
││* +
result
┤┤ 
[
┤┤ 
entry
┤┤ 
.
┤┤ 
Key
┤┤ 
]
┤┤ 
=
┤┤ 
entry
┤┤ !
.
┤┤! "
Value
┤┤" '
.
┤┤' (
ToString
┤┤( 0
(
┤┤0 1
)
┤┤1 2
;
┤┤2 3
return
╢╢ 
result
╢╢ 
;
╢╢ 
}
╖╖ 
void
╣╣ 
SyncProject
╣╣	 
(
╣╣ 
Assembly
║║ 
island
║║ 
,
║║ 

Dictionary
╗╗ 
<
╗╗ 
string
╗╗ 
,
╗╗ 
string
╗╗ 
>
╗╗  #
allAssetsProjectParts
╗╗! 6
,
╗╗6 7
IEnumerable
╝╝ 
<
╝╝ 
ResponseFileData
╝╝ "
>
╝╝" #
responseFilesData
╝╝$ 5
,
╝╝5 6
Type
╜╜ 

[
╜╜
 
]
╜╜ 
types
╜╜ 
,
╜╜ 
string
╛╛ 
[
╛╛ 
]
╛╛ $
roslynAnalyzerDllPaths
╛╛ %
)
╛╛% &
{
┐┐ )
SyncProjectFileIfNotChanged
└└ !
(
└└! "
ProjectFile
┴┴ 
(
┴┴ 
island
┴┴ 
)
┴┴ 
,
┴┴ 
ProjectText
┬┬ 
(
┬┬ 
island
┬┬ 
,
┬┬ #
allAssetsProjectParts
┬┬ 1
,
┬┬1 2
responseFilesData
┬┬3 D
.
┬┬D E
ToList
┬┬E K
(
┬┬K L
)
┬┬L M
,
┬┬M N$
roslynAnalyzerDllPaths
┬┬O e
)
┬┬e f
,
┬┬f g
types
├├ 
)
├├ 
;
├├ 
}
── 
void
╞╞ )
SyncProjectFileIfNotChanged
╞╞	 $
(
╞╞$ %
string
╞╞% +
path
╞╞, 0
,
╞╞0 1
string
╞╞2 8
newContents
╞╞9 D
,
╞╞D E
Type
╞╞F J
[
╞╞J K
]
╞╞K L
types
╞╞M R
)
╞╞R S
{
╟╟ 
if
╚╚ 
(
╚╚	 

Path
╚╚
 
.
╚╚ 
GetExtension
╚╚ 
(
╚╚ 
path
╚╚  
)
╚╚  !
==
╚╚" $
$str
╚╚% .
)
╚╚. /
{
╔╔ 
newContents
╩╩ 
=
╩╩ "
OnGeneratedCSProject
╩╩ *
(
╩╩* +
path
╩╩+ /
,
╩╩/ 0
newContents
╩╩1 <
,
╩╩< =
types
╩╩> C
)
╩╩C D
;
╩╩D E
}
╦╦ "
SyncFileIfNotChanged
══ 
(
══ 
path
══ 
,
══  
newContents
══! ,
)
══, -
;
══- .
}
╬╬ 
void
╨╨ *
SyncSolutionFileIfNotChanged
╨╨	 %
(
╨╨% &
string
╨╨& ,
path
╨╨- 1
,
╨╨1 2
string
╨╨3 9
newContents
╨╨: E
,
╨╨E F
Type
╨╨G K
[
╨╨K L
]
╨╨L M
types
╨╨N S
)
╨╨S T
{
╤╤ 
newContents
╥╥ 
=
╥╥ $
OnGeneratedSlnSolution
╥╥ *
(
╥╥* +
path
╥╥+ /
,
╥╥/ 0
newContents
╥╥1 <
,
╥╥< =
types
╥╥> C
)
╥╥C D
;
╥╥D E"
SyncFileIfNotChanged
╘╘ 
(
╘╘ 
path
╘╘ 
,
╘╘  
newContents
╘╘! ,
)
╘╘, -
;
╘╘- .
}
╒╒ 
static
╫╫ 

List
╫╫ 
<
╫╫ 
Type
╫╫ 
>
╫╫ 
SafeGetTypes
╫╫ "
(
╫╫" #
System
╫╫# )
.
╫╫) *

Reflection
╫╫* 4
.
╫╫4 5
Assembly
╫╫5 =
a
╫╫> ?
)
╫╫? @
{
╪╪ 
List
┘┘ 

<
┘┘
 
Type
┘┘ 
>
┘┘ 
ret
┘┘ 
;
┘┘ 
try
██ 	
{
▄▄ 
ret
▌▌ 
=
▌▌ 
a
▌▌ 
.
▌▌ 
GetTypes
▌▌ 
(
▌▌ 
)
▌▌ 
.
▌▌ 
ToList
▌▌ !
(
▌▌! "
)
▌▌" #
;
▌▌# $
}
▐▐ 
catch
▀▀ 
(
▀▀ 
System
▀▀ 
.
▀▀ 

Reflection
▀▀ 
.
▀▀ )
ReflectionTypeLoadException
▀▀ :
rtl
▀▀; >
)
▀▀> ?
{
рр 
ret
сс 
=
сс 
rtl
сс 
.
сс 
Types
сс 
.
сс 
ToList
сс 
(
сс 
)
сс  
;
сс  !
}
тт 
catch
уу 
(
уу 
	Exception
уу 
)
уу 
{
фф 
return
хх 
new
хх 
List
хх 
<
хх 
Type
хх 
>
хх 
(
хх 
)
хх 
;
хх  
}
цц 
return
шш 
ret
шш 
.
шш 
Where
шш 
(
шш 
r
шш 
=>
шш 
r
шш 
!=
шш  
null
шш! %
)
шш% &
.
шш& '
ToList
шш' -
(
шш- .
)
шш. /
;
шш/ 0
}
щщ 
static
ыы 

void
ыы '
OnGeneratedCSProjectFiles
ыы )
(
ыы) *
Type
ыы* .
[
ыы. /
]
ыы/ 0
types
ыы1 6
)
ыы6 7
{
ьь 
var
ээ 	
args
ээ
 
=
ээ 
new
ээ 
object
ээ 
[
ээ 
$num
ээ 
]
ээ 
;
ээ 
foreach
юю 
(
юю 
var
юю 
type
юю 
in
юю 
types
юю  
)
юю  !
{
яя 
var
ЁЁ 
method
ЁЁ 
=
ЁЁ 
type
ЁЁ 
.
ЁЁ 
	GetMethod
ЁЁ #
(
ЁЁ# $
$str
ЁЁ$ ?
,
ЁЁ? @
System
ёё
 
.
ёё 

Reflection
ёё 
.
ёё 
BindingFlags
ёё (
.
ёё( )
Public
ёё) /
|
ёё0 1
System
ёё2 8
.
ёё8 9

Reflection
ёё9 C
.
ёёC D
BindingFlags
ёёD P
.
ёёP Q
	NonPublic
ёёQ Z
|
ёё[ \
System
ЄЄ
 
.
ЄЄ 

Reflection
ЄЄ 
.
ЄЄ 
BindingFlags
ЄЄ (
.
ЄЄ( )
Static
ЄЄ) /
)
ЄЄ/ 0
;
ЄЄ0 1
if
єє 

(
єє 
method
єє 
==
єє 
null
єє 
)
єє 
{
ЇЇ 	
continue
її
 
;
її 
}
ЎЎ 	
method
°° 
.
°° 
Invoke
°° 
(
°° 
null
°° 
,
°° 
args
°°  
)
°°  !
;
°°! "
}
∙∙ 
}
·· 
public
№№ 

static
№№ 
Type
№№ 
[
№№ 
]
№№ (
GetAssetPostprocessorTypes
№№ 3
(
№№3 4
)
№№4 5
{
¤¤ 
return
■■ 
	TypeCache
■■ 
.
■■ !
GetTypesDerivedFrom
■■ *
<
■■* + 
AssetPostprocessor
■■+ =
>
■■= >
(
■■> ?
)
■■? @
.
■■@ A
ToArray
■■A H
(
■■H I
)
■■I J
;
■■J K
}
   
static
ББ 

bool
ББ +
OnPreGeneratingCSProjectFiles
ББ -
(
ББ- .
Type
ББ. 2
[
ББ2 3
]
ББ3 4
types
ББ5 :
)
ББ: ;
{
ВВ 
bool
ГГ 

result
ГГ 
=
ГГ 
false
ГГ 
;
ГГ 
foreach
ДД 
(
ДД 
var
ДД 
type
ДД 
in
ДД 
types
ДД  
)
ДД  !
{
ЕЕ 
var
ЖЖ 
args
ЖЖ 
=
ЖЖ 
new
ЖЖ 
object
ЖЖ 
[
ЖЖ 
$num
ЖЖ 
]
ЖЖ  
;
ЖЖ  !
var
ЗЗ 
method
ЗЗ 
=
ЗЗ 
type
ЗЗ 
.
ЗЗ 
	GetMethod
ЗЗ #
(
ЗЗ# $
$str
ЗЗ$ C
,
ЗЗC D
System
ИИ
 
.
ИИ 

Reflection
ИИ 
.
ИИ 
BindingFlags
ИИ (
.
ИИ( )
Public
ИИ) /
|
ИИ0 1
System
ИИ2 8
.
ИИ8 9

Reflection
ИИ9 C
.
ИИC D
BindingFlags
ИИD P
.
ИИP Q
	NonPublic
ИИQ Z
|
ИИ[ \
System
ЙЙ
 
.
ЙЙ 

Reflection
ЙЙ 
.
ЙЙ 
BindingFlags
ЙЙ (
.
ЙЙ( )
Static
ЙЙ) /
)
ЙЙ/ 0
;
ЙЙ0 1
if
КК 

(
КК 
method
КК 
==
КК 
null
КК 
)
КК 
{
ЛЛ 	
continue
ММ
 
;
ММ 
}
НН 	
var
ПП 
returnValue
ПП 
=
ПП 
method
ПП  
.
ПП  !
Invoke
ПП! '
(
ПП' (
null
ПП( ,
,
ПП, -
args
ПП. 2
)
ПП2 3
;
ПП3 4
if
РР 

(
РР 
method
РР 
.
РР 

ReturnType
РР 
==
РР  
typeof
РР! '
(
РР' (
bool
РР( ,
)
РР, -
)
РР- .
{
СС 	
result
ТТ
 
|=
ТТ 
(
ТТ 
bool
ТТ 
)
ТТ 
returnValue
ТТ %
;
ТТ% &
}
УУ 	
}
ФФ 
return
ЦЦ 
result
ЦЦ 
;
ЦЦ 
}
ЧЧ 
static
ЩЩ 

string
ЩЩ "
OnGeneratedCSProject
ЩЩ &
(
ЩЩ& '
string
ЩЩ' -
path
ЩЩ. 2
,
ЩЩ2 3
string
ЩЩ4 :
content
ЩЩ; B
,
ЩЩB C
Type
ЩЩD H
[
ЩЩH I
]
ЩЩI J
types
ЩЩK P
)
ЩЩP Q
{
ЪЪ 
foreach
ЫЫ 
(
ЫЫ 
var
ЫЫ 
type
ЫЫ 
in
ЫЫ 
types
ЫЫ  
)
ЫЫ  !
{
ЬЬ 
var
ЭЭ 
args
ЭЭ 
=
ЭЭ 
new
ЭЭ 
[
ЭЭ 
]
ЭЭ 
{
ЭЭ 
path
ЭЭ 
,
ЭЭ  
content
ЭЭ! (
}
ЭЭ) *
;
ЭЭ* +
var
ЮЮ 
method
ЮЮ 
=
ЮЮ 
type
ЮЮ 
.
ЮЮ 
	GetMethod
ЮЮ #
(
ЮЮ# $
$str
ЮЮ$ :
,
ЮЮ: ;
System
ЯЯ
 
.
ЯЯ 

Reflection
ЯЯ 
.
ЯЯ 
BindingFlags
ЯЯ (
.
ЯЯ( )
Public
ЯЯ) /
|
ЯЯ0 1
System
ЯЯ2 8
.
ЯЯ8 9

Reflection
ЯЯ9 C
.
ЯЯC D
BindingFlags
ЯЯD P
.
ЯЯP Q
	NonPublic
ЯЯQ Z
|
ЯЯ[ \
System
аа
 
.
аа 

Reflection
аа 
.
аа 
BindingFlags
аа (
.
аа( )
Static
аа) /
)
аа/ 0
;
аа0 1
if
бб 

(
бб 
method
бб 
==
бб 
null
бб 
)
бб 
{
вв 	
continue
гг
 
;
гг 
}
дд 	
var
жж 
returnValue
жж 
=
жж 
method
жж  
.
жж  !
Invoke
жж! '
(
жж' (
null
жж( ,
,
жж, -
args
жж. 2
)
жж2 3
;
жж3 4
if
зз 

(
зз 
method
зз 
.
зз 

ReturnType
зз 
==
зз  
typeof
зз! '
(
зз' (
string
зз( .
)
зз. /
)
зз/ 0
{
ии 	
content
йй
 
=
йй 
(
йй 
string
йй 
)
йй 
returnValue
йй '
;
йй' (
}
кк 	
}
лл 
return
нн 
content
нн 
;
нн 
}
оо 
static
░░ 

string
░░ $
OnGeneratedSlnSolution
░░ (
(
░░( )
string
░░) /
path
░░0 4
,
░░4 5
string
░░6 <
content
░░= D
,
░░D E
Type
░░F J
[
░░J K
]
░░K L
types
░░M R
)
░░R S
{
▒▒ 
foreach
▓▓ 
(
▓▓ 
var
▓▓ 
type
▓▓ 
in
▓▓ 
types
▓▓  
)
▓▓  !
{
││ 
var
┤┤ 
args
┤┤ 
=
┤┤ 
new
┤┤ 
[
┤┤ 
]
┤┤ 
{
┤┤ 
path
┤┤ 
,
┤┤  
content
┤┤! (
}
┤┤) *
;
┤┤* +
var
╡╡ 
method
╡╡ 
=
╡╡ 
type
╡╡ 
.
╡╡ 
	GetMethod
╡╡ #
(
╡╡# $
$str
╡╡$ <
,
╡╡< =
System
╢╢
 
.
╢╢ 

Reflection
╢╢ 
.
╢╢ 
BindingFlags
╢╢ (
.
╢╢( )
Public
╢╢) /
|
╢╢0 1
System
╢╢2 8
.
╢╢8 9

Reflection
╢╢9 C
.
╢╢C D
BindingFlags
╢╢D P
.
╢╢P Q
	NonPublic
╢╢Q Z
|
╢╢[ \
System
╖╖
 
.
╖╖ 

Reflection
╖╖ 
.
╖╖ 
BindingFlags
╖╖ (
.
╖╖( )
Static
╖╖) /
)
╖╖/ 0
;
╖╖0 1
if
╕╕ 

(
╕╕ 
method
╕╕ 
==
╕╕ 
null
╕╕ 
)
╕╕ 
{
╣╣ 	
continue
║║
 
;
║║ 
}
╗╗ 	
var
╜╜ 
returnValue
╜╜ 
=
╜╜ 
method
╜╜  
.
╜╜  !
Invoke
╜╜! '
(
╜╜' (
null
╜╜( ,
,
╜╜, -
args
╜╜. 2
)
╜╜2 3
;
╜╜3 4
if
╛╛ 

(
╛╛ 
method
╛╛ 
.
╛╛ 

ReturnType
╛╛ 
==
╛╛  
typeof
╛╛! '
(
╛╛' (
string
╛╛( .
)
╛╛. /
)
╛╛/ 0
{
┐┐ 	
content
└└
 
=
└└ 
(
└└ 
string
└└ 
)
└└ 
returnValue
└└ '
;
└└' (
}
┴┴ 	
}
┬┬ 
return
── 
content
── 
;
── 
}
┼┼ 
void
╟╟ "
SyncFileIfNotChanged
╟╟	 
(
╟╟ 
string
╟╟ $
filename
╟╟% -
,
╟╟- .
string
╟╟/ 5
newContents
╟╟6 A
)
╟╟A B
{
╚╚ 
try
╔╔ 	
{
╩╩ 
if
╦╦ 

(
╦╦ 
m_FileIOProvider
╦╦ 
.
╦╦ 
Exists
╦╦ #
(
╦╦# $
filename
╦╦$ ,
)
╦╦, -
&&
╦╦. 0
newContents
╦╦1 <
==
╦╦= ?
m_FileIOProvider
╦╦@ P
.
╦╦P Q
ReadAllText
╦╦Q \
(
╦╦\ ]
filename
╦╦] e
)
╦╦e f
)
╦╦f g
{
╠╠ 	
return
══
 
;
══ 
}
╬╬ 	
}
╧╧ 
catch
╨╨ 
(
╨╨ 
	Exception
╨╨ 
	exception
╨╨  
)
╨╨  !
{
╤╤ 
Debug
╥╥ 
.
╥╥ 
LogException
╥╥ 
(
╥╥ 
	exception
╥╥ $
)
╥╥$ %
;
╥╥% &
}
╙╙ 
m_FileIOProvider
╒╒ 
.
╒╒ 
WriteAllText
╒╒ #
(
╒╒# $
filename
╒╒$ ,
,
╒╒, -
newContents
╒╒. 9
)
╒╒9 :
;
╒╒: ;
}
╓╓ 
string
╪╪ 

ProjectText
╪╪ 
(
╪╪ 
Assembly
╪╪ 
assembly
╪╪  (
,
╪╪( )

Dictionary
┘┘ 
<
┘┘ 
string
┘┘ 
,
┘┘ 
string
┘┘ 
>
┘┘  #
allAssetsProjectParts
┘┘! 6
,
┘┘6 7
List
┌┌ 

<
┌┌
 
ResponseFileData
┌┌ 
>
┌┌ 
responseFilesData
┌┌ .
,
┌┌. /
string
██ 
[
██ 
]
██ $
roslynAnalyzerDllPaths
██ %
)
██% &
{
▄▄ 
var
▌▌ 	
projectBuilder
▌▌
 
=
▌▌ 
new
▌▌ 
StringBuilder
▌▌ ,
(
▌▌, -
ProjectHeader
▌▌- :
(
▌▌: ;
assembly
▌▌; C
,
▌▌C D
responseFilesData
▌▌E V
,
▌▌V W$
roslynAnalyzerDllPaths
▌▌X n
)
▌▌n o
)
▌▌o p
;
▌▌p q
var
▐▐ 	

references
▐▐
 
=
▐▐ 
new
▐▐ 
List
▐▐ 
<
▐▐  
string
▐▐  &
>
▐▐& '
(
▐▐' (
)
▐▐( )
;
▐▐) *
foreach
рр 
(
рр 
string
рр 
file
рр 
in
рр 
assembly
рр &
.
рр& '
sourceFiles
рр' 2
)
рр2 3
{
сс 
if
тт 

(
тт 
!
тт 
HasValidExtension
тт 
(
тт 
file
тт #
)
тт# $
)
тт$ %
continue
уу
 
;
уу 
var
хх 
	extension
хх 
=
хх 
Path
хх 
.
хх 
GetExtension
хх )
(
хх) *
file
хх* .
)
хх. /
.
хх/ 0
ToLower
хх0 7
(
хх7 8
)
хх8 9
;
хх9 :
var
цц 
fullFile
цц 
=
цц $
EscapedRelativePathFor
цц -
(
цц- .
file
цц. 2
)
цц2 3
;
цц3 4
if
чч 

(
чч 
$str
чч 
!=
чч 
	extension
чч 
)
чч  
{
шш 	
projectBuilder
щщ
 
.
щщ 
Append
щщ 
(
щщ  
$str
щщ  :
)
щщ: ;
.
щщ; <
Append
щщ< B
(
щщB C
fullFile
щщC K
)
щщK L
.
щщL M
Append
щщM S
(
щщS T
$str
щщT [
)
щщ[ \
.
щщ\ ]
Append
щщ] c
(
щщc d
Environment
щщd o
.
щщo p
NewLine
щщp w
)
щщw x
;
щщx y
}
ъъ 	
else
ыы 
{
ьь 	

references
ээ
 
.
ээ 
Add
ээ 
(
ээ 
fullFile
ээ !
)
ээ! "
;
ээ" #
}
юю 	
}
яя 
if
ЄЄ 
(
ЄЄ	 
#
allAssetsProjectParts
ЄЄ
 
.
ЄЄ  
TryGetValue
ЄЄ  +
(
ЄЄ+ ,
assembly
ЄЄ, 4
.
ЄЄ4 5
name
ЄЄ5 9
,
ЄЄ9 :
out
ЄЄ; >
var
ЄЄ? B(
additionalAssetsForProject
ЄЄC ]
)
ЄЄ] ^
)
ЄЄ^ _
projectBuilder
єє 
.
єє 
Append
єє 
(
єє (
additionalAssetsForProject
єє 8
)
єє8 9
;
єє9 :
var
її 	
responseRefs
її
 
=
її 
responseFilesData
її *
.
її* +

SelectMany
її+ 5
(
її5 6
x
її6 7
=>
її8 :
x
її; <
.
її< = 
FullPathReferences
її= O
.
їїO P
Select
їїP V
(
їїV W
r
їїW X
=>
їїY [
r
її\ ]
)
її] ^
)
її^ _
;
її_ `
var
ЎЎ 	(
internalAssemblyReferences
ЎЎ
 $
=
ЎЎ% &
assembly
ЎЎ' /
.
ЎЎ/ 0 
assemblyReferences
ЎЎ0 B
.
ўў 	
Where
ўў	 
(
ўў 
i
ўў 
=>
ўў 
!
ўў 
i
ўў 
.
ўў 
sourceFiles
ўў "
.
ўў" #
Any
ўў# &
(
ўў& '(
ShouldFileBePartOfSolution
ўў' A
)
ўўA B
)
ўўB C
.
ўўC D
Select
ўўD J
(
ўўJ K
i
ўўK L
=>
ўўM O
i
ўўP Q
.
ўўQ R

outputPath
ўўR \
)
ўў\ ]
;
ўў] ^
var
°° 	
allReferences
°°
 
=
°° 
assembly
∙∙ 
.
∙∙ (
compiledAssemblyReferences
∙∙ +
.
··
 
Union
·· 
(
·· 
responseRefs
·· 
)
·· 
.
√√
 
Union
√√ 
(
√√ 

references
√√ 
)
√√ 
.
№№
 
Union
№№ 
(
№№ (
internalAssemblyReferences
№№ +
)
№№+ ,
.
¤¤
 
Except
¤¤ 
(
¤¤ $
roslynAnalyzerDllPaths
¤¤ (
)
¤¤( )
;
¤¤) *
foreach
   
(
   
var
   
	reference
   
in
   
allReferences
    -
)
  - .
{
АА 
string
ББ 
fullReference
ББ 
=
ББ 
Path
ББ #
.
ББ# $
IsPathRooted
ББ$ 0
(
ББ0 1
	reference
ББ1 :
)
ББ: ;
?
ББ< =
	reference
ББ> G
:
ББH I
Path
ББJ N
.
ББN O
Combine
ББO V
(
ББV W
ProjectDirectory
ББW g
,
ББg h
	reference
ББi r
)
ББr s
;
ББs t
AppendReference
ВВ 
(
ВВ 
fullReference
ВВ %
,
ВВ% &
projectBuilder
ВВ' 5
)
ВВ5 6
;
ВВ6 7
}
ГГ 
if
ЕЕ 
(
ЕЕ	 

$num
ЕЕ
 
<
ЕЕ 
assembly
ЕЕ 
.
ЕЕ  
assemblyReferences
ЕЕ )
.
ЕЕ) *
Length
ЕЕ* 0
)
ЕЕ0 1
{
ЖЖ 
projectBuilder
ЗЗ 
.
ЗЗ 
Append
ЗЗ 
(
ЗЗ 
$str
ЗЗ .
)
ЗЗ. /
.
ЗЗ/ 0
Append
ЗЗ0 6
(
ЗЗ6 7
Environment
ЗЗ7 B
.
ЗЗB C
NewLine
ЗЗC J
)
ЗЗJ K
;
ЗЗK L
projectBuilder
ИИ 
.
ИИ 
Append
ИИ 
(
ИИ 
$str
ИИ -
)
ИИ- .
.
ИИ. /
Append
ИИ/ 5
(
ИИ5 6
Environment
ИИ6 A
.
ИИA B
NewLine
ИИB I
)
ИИI J
;
ИИJ K
foreach
ЙЙ 
(
ЙЙ 
Assembly
ЙЙ 
	reference
ЙЙ #
in
ЙЙ$ &
assembly
ЙЙ' /
.
ЙЙ/ 0 
assemblyReferences
ЙЙ0 B
.
ЙЙB C
Where
ЙЙC H
(
ЙЙH I
i
ЙЙI J
=>
ЙЙK M
i
ЙЙN O
.
ЙЙO P
sourceFiles
ЙЙP [
.
ЙЙ[ \
Any
ЙЙ\ _
(
ЙЙ_ `(
ShouldFileBePartOfSolution
ЙЙ` z
)
ЙЙz {
)
ЙЙ{ |
)
ЙЙ| }
{
КК 	
projectBuilder
ЛЛ
 
.
ЛЛ 
Append
ЛЛ 
(
ЛЛ  
$str
ЛЛ  B
)
ЛЛB C
.
ЛЛC D
Append
ЛЛD J
(
ЛЛJ K
	reference
ЛЛK T
.
ЛЛT U
name
ЛЛU Y
)
ЛЛY Z
.
ЛЛZ [
Append
ЛЛ[ a
(
ЛЛa b!
GetProjectExtension
ЛЛb u
(
ЛЛu v
)
ЛЛv w
)
ЛЛw x
.
ЛЛx y
Append
ЛЛy 
(ЛЛ А
$strЛЛА Е
)ЛЛЕ Ж
.ЛЛЖ З
AppendЛЛЗ Н
(ЛЛН О
EnvironmentЛЛО Щ
.ЛЛЩ Ъ
NewLineЛЛЪ б
)ЛЛб в
;ЛЛв г
projectBuilder
ММ
 
.
ММ 
Append
ММ 
(
ММ  
$str
ММ  2
)
ММ2 3
.
ММ3 4
Append
ММ4 :
(
ММ: ;
ProjectGuid
ММ; F
(
ММF G
	reference
ММG P
)
ММP Q
)
ММQ R
.
ММR S
Append
ММS Y
(
ММY Z
$str
ММZ g
)
ММg h
.
ММh i
Append
ММi o
(
ММo p
Environment
ММp {
.
ММ{ |
NewLineММ| Г
)ММГ Д
;ММД Е
projectBuilder
НН
 
.
НН 
Append
НН 
(
НН  
$str
НН  .
)
НН. /
.
НН/ 0
Append
НН0 6
(
НН6 7
	reference
НН7 @
.
НН@ A
name
ННA E
)
ННE F
.
ННF G
Append
ННG M
(
ННM N
$str
ННN W
)
ННW X
.
ННX Y
Append
ННY _
(
НН_ `
Environment
НН` k
.
ННk l
NewLine
ННl s
)
ННs t
;
ННt u
projectBuilder
ОО
 
.
ОО 
Append
ОО 
(
ОО  
$str
ОО  9
)
ОО9 :
.
ОО: ;
Append
ОО; A
(
ООA B
Environment
ООB M
.
ООM N
NewLine
ООN U
)
ООU V
;
ООV W
}
ПП 	
}
РР 
projectBuilder
ТТ 
.
ТТ 
Append
ТТ 
(
ТТ 
ProjectFooter
ТТ )
(
ТТ) *
)
ТТ* +
)
ТТ+ ,
;
ТТ, -
return
УУ 
projectBuilder
УУ 
.
УУ 
ToString
УУ $
(
УУ$ %
)
УУ% &
;
УУ& '
}
ФФ 
static
ЦЦ 

void
ЦЦ 
AppendReference
ЦЦ 
(
ЦЦ  
string
ЦЦ  &
fullReference
ЦЦ' 4
,
ЦЦ4 5
StringBuilder
ЦЦ6 C
projectBuilder
ЦЦD R
)
ЦЦR S
{
ЧЧ 
var
ЩЩ 	
escapedFullPath
ЩЩ
 
=
ЩЩ 
SecurityElement
ЩЩ +
.
ЩЩ+ ,
Escape
ЩЩ, 2
(
ЩЩ2 3
fullReference
ЩЩ3 @
)
ЩЩ@ A
;
ЩЩA B
escapedFullPath
ЪЪ 
=
ЪЪ 
escapedFullPath
ЪЪ '
.
ЪЪ' (
Replace
ЪЪ( /
(
ЪЪ/ 0
$str
ЪЪ0 6
,
ЪЪ6 7
$str
ЪЪ8 ;
)
ЪЪ; <
.
ЪЪ< =
Replace
ЪЪ= D
(
ЪЪD E
$str
ЪЪE I
,
ЪЪI J
$str
ЪЪK N
)
ЪЪN O
;
ЪЪO P
projectBuilder
ЫЫ 
.
ЫЫ 
Append
ЫЫ 
(
ЫЫ 
$str
ЫЫ 4
)
ЫЫ4 5
.
ЫЫ5 6
Append
ЫЫ6 <
(
ЫЫ< =
FileSystemUtil
ЫЫ= K
.
ЫЫK L&
FileNameWithoutExtension
ЫЫL d
(
ЫЫd e
escapedFullPath
ЫЫe t
)
ЫЫt u
)
ЫЫu v
.
ЬЬ 	
Append
ЬЬ	 
(
ЬЬ 
$str
ЬЬ 
)
ЬЬ 
.
ЬЬ 
Append
ЬЬ 
(
ЬЬ 
Environment
ЬЬ )
.
ЬЬ) *
NewLine
ЬЬ* 1
)
ЬЬ1 2
;
ЬЬ2 3
projectBuilder
ЭЭ 
.
ЭЭ 
Append
ЭЭ 
(
ЭЭ 
$str
ЭЭ )
)
ЭЭ) *
.
ЭЭ* +
Append
ЭЭ+ 1
(
ЭЭ1 2
escapedFullPath
ЭЭ2 A
)
ЭЭA B
.
ЭЭB C
Append
ЭЭC I
(
ЭЭI J
$str
ЭЭJ W
)
ЭЭW X
.
ЭЭX Y
Append
ЭЭY _
(
ЭЭ_ `
Environment
ЭЭ` k
.
ЭЭk l
NewLine
ЭЭl s
)
ЭЭs t
;
ЭЭt u
projectBuilder
ЮЮ 
.
ЮЮ 
Append
ЮЮ 
(
ЮЮ 
$str
ЮЮ +
)
ЮЮ+ ,
.
ЮЮ, -
Append
ЮЮ- 3
(
ЮЮ3 4
Environment
ЮЮ4 ?
.
ЮЮ? @
NewLine
ЮЮ@ G
)
ЮЮG H
;
ЮЮH I
}
ЯЯ 
public
бб 

string
бб 
ProjectFile
бб 
(
бб 
Assembly
бб &
assembly
бб' /
)
бб/ 0
{
вв 
return
гг 
Path
гг 
.
гг 
Combine
гг 
(
гг 
ProjectDirectory
гг *
,
гг* +
$"
гг, .
{
гг. /$
m_AssemblyNameProvider
гг/ E
.
ггE F
GetProjectName
ггF T
(
ггT U
assembly
ггU ]
.
гг] ^

outputPath
гг^ h
,
ггh i
assembly
ггj r
.
ггr s
name
ггs w
)
ггw x
}
ггx y
.csprojггy А
"ггА Б
)ггБ В
;ггВ Г
}
дд 
public
жж 

string
жж 
SolutionFile
жж 
(
жж 
)
жж  
{
зз 
return
ии 
Path
ии 
.
ии 
Combine
ии 
(
ии 
ProjectDirectory
ии *
,
ии* +
$"
ии, .
{
ии. /
m_ProjectName
ии/ <
}
ии< =
.sln
ии= A
"
ииA B
)
ииB C
;
ииC D
}
йй 
string
лл 

ProjectHeader
лл 
(
лл 
Assembly
мм 
assembly
мм 
,
мм 
List
нн 

<
нн
 
ResponseFileData
нн 
>
нн 
responseFilesData
нн .
,
нн. /
string
оо 
[
оо 
]
оо $
roslynAnalyzerDllPaths
оо %
)
пп 
{
░░ 
var
▒▒ 	$
otherResponseFilesData
▒▒
  
=
▒▒! "4
&GetOtherArgumentsFromResponseFilesData
▒▒# I
(
▒▒I J
responseFilesData
▒▒J [
)
▒▒[ \
;
▒▒\ ]
var
▓▓ 	
	arguments
▓▓
 
=
▓▓ 
new
▓▓ 
object
▓▓  
[
▓▓  !
]
▓▓! "
{
││ 
k_ToolsVersion
┤┤ 
,
┤┤ 
k_ProductVersion
╡╡ 
,
╡╡ 
ProjectGuid
╢╢ 
(
╢╢ 
assembly
╢╢ 
)
╢╢ 
,
╢╢ #
InternalEditorUtility
╖╖ 
.
╖╖ #
GetEngineAssemblyPath
╖╖ 3
(
╖╖3 4
)
╖╖4 5
,
╖╖5 6#
InternalEditorUtility
╕╕ 
.
╕╕ #
GetEditorAssemblyPath
╕╕ 3
(
╕╕3 4
)
╕╕4 5
,
╕╕5 6
string
╣╣ 
.
╣╣ 
Join
╣╣ 
(
╣╣ 
$str
╣╣ 
,
╣╣ 
assembly
╣╣ !
.
╣╣! "
defines
╣╣" )
.
╣╣) *
Concat
╣╣* 0
(
╣╣0 1
responseFilesData
╣╣1 B
.
╣╣B C

SelectMany
╣╣C M
(
╣╣M N
x
╣╣N O
=>
╣╣P R
x
╣╣S T
.
╣╣T U
Defines
╣╣U \
)
╣╣\ ]
)
╣╣] ^
.
╣╣^ _
Distinct
╣╣_ g
(
╣╣g h
)
╣╣h i
.
╣╣i j
ToArray
╣╣j q
(
╣╣q r
)
╣╣r s
)
╣╣s t
,
╣╣t u!
MSBuildNamespaceUri
║║ 
,
║║ 
assembly
╗╗ 
.
╗╗ 
name
╗╗ 
,
╗╗ 
assembly
╝╝ 
.
╝╝ 

outputPath
╝╝ 
,
╝╝ 
GetRootNamespace
╜╜ 
(
╜╜ 
assembly
╜╜ !
)
╜╜! "
,
╜╜" #&
k_TargetFrameworkVersion
╛╛  
,
╛╛  !!
GenerateLangVersion
┐┐ 
(
┐┐ $
otherResponseFilesData
┐┐ 2
[
┐┐2 3
$str
┐┐3 @
]
┐┐@ A
)
┐┐A B
,
┐┐B C
k_BaseDirectory
└└ 
,
└└ 
assembly
┴┴ 
.
┴┴ 
compilerOptions
┴┴  
.
┴┴  !
AllowUnsafeCode
┴┴! 0
|
┴┴1 2
responseFilesData
┴┴3 D
.
┴┴D E
Any
┴┴E H
(
┴┴H I
x
┴┴I J
=>
┴┴K M
x
┴┴N O
.
┴┴O P
Unsafe
┴┴P V
)
┴┴V W
,
┴┴W X
GenerateNoWarn
┬┬ 
(
┬┬ $
otherResponseFilesData
┬┬ -
[
┬┬- .
$str
┬┬. 6
]
┬┬6 7
.
┬┬7 8
Distinct
┬┬8 @
(
┬┬@ A
)
┬┬A B
.
┬┬B C
ToArray
┬┬C J
(
┬┬J K
)
┬┬K L
)
┬┬L M
,
┬┬M N'
GenerateAnalyserItemGroup
├├ !
(
├├! "$
otherResponseFilesData
──
  
[
──  !
$str
──! +
]
──+ ,
.
──, -
Concat
──- 3
(
──3 4$
otherResponseFilesData
──4 J
[
──J K
$str
──K N
]
──N O
)
──O P
.
┼┼2 3

SelectMany
┼┼3 =
(
┼┼= >
x
┼┼> ?
=>
┼┼? A
x
┼┼A B
.
┼┼B C
Split
┼┼C H
(
┼┼H I
$char
┼┼I L
)
┼┼L M
)
┼┼M N
.
╞╞2 3
Concat
╞╞3 9
(
╞╞9 :$
roslynAnalyzerDllPaths
╞╞: P
)
╞╞P Q
.
╟╟2 3
Distinct
╟╟3 ;
(
╟╟; <
)
╟╟< =
.
╚╚2 3
ToArray
╚╚3 :
(
╚╚: ;
)
╚╚; <
)
╚╚< =
,
╚╚= >-
GenerateAnalyserAdditionalFiles
╔╔ '
(
╔╔' ($
otherResponseFilesData
╔╔( >
[
╔╔> ?
$str
╔╔? O
]
╔╔O P
.
╔╔P Q

SelectMany
╔╔Q [
(
╔╔[ \
x
╔╔\ ]
=>
╔╔] _
x
╔╔_ `
.
╔╔` a
Split
╔╔a f
(
╔╔f g
$char
╔╔g j
)
╔╔j k
)
╔╔k l
.
╔╔l m
Distinct
╔╔m u
(
╔╔u v
)
╔╔v w
.
╔╔w x
ToArray
╔╔x 
(╔╔ А
)╔╔А Б
)╔╔Б В
,╔╔В Г%
GenerateAnalyserRuleSet
╦╦ 
(
╦╦  $
otherResponseFilesData
╦╦  6
[
╦╦6 7
$str
╦╦7 @
]
╦╦@ A
.
╦╦A B
Append
╦╦B H
(
╦╦H I
assembly
╦╦I Q
.
╦╦Q R
compilerOptions
╦╦R a
.
╦╦a b'
RoslynAnalyzerRulesetPath
╦╦b {
)
╦╦{ |
.
╦╦| }
Distinct╦╦} Е
(╦╦Е Ж
)╦╦Ж З
.╦╦З И
ToArray╦╦И П
(╦╦П Р
)╦╦Р С
)╦╦С Т
,╦╦Т У"
GenerateWarningLevel
╧╧ 
(
╧╧ $
otherResponseFilesData
╧╧ 3
[
╧╧3 4
$str
╧╧4 :
]
╧╧: ;
.
╧╧; <
Concat
╧╧< B
(
╧╧B C$
otherResponseFilesData
╧╧C Y
[
╧╧Y Z
$str
╧╧Z ]
]
╧╧] ^
)
╧╧^ _
.
╧╧_ `
Distinct
╧╧` h
(
╧╧h i
)
╧╧i j
)
╧╧j k
,
╧╧k l$
GenerateWarningAsError
╨╨ 
(
╨╨ $
otherResponseFilesData
╨╨ 5
[
╨╨5 6
$str
╨╨6 C
]
╨╨C D
)
╨╨D E
,
╨╨E F'
GenerateDocumentationFile
╤╤ !
(
╤╤! "$
otherResponseFilesData
╤╤" 8
[
╤╤8 9
$str
╤╤9 >
]
╤╤> ?
)
╤╤? @
}
╥╥ 
;
╥╥ 
try
╘╘ 	
{
╒╒ 
return
╓╓ 
string
╓╓ 
.
╓╓ 
Format
╓╓ 
(
╓╓ &
GetProjectHeaderTemplate
╓╓ 5
(
╓╓5 6
)
╓╓6 7
,
╓╓7 8
	arguments
╓╓9 B
)
╓╓B C
;
╓╓C D
}
╫╫ 
catch
╪╪ 
(
╪╪ 
	Exception
╪╪ 
)
╪╪ 
{
┘┘ 
throw
┌┌ 
new
┌┌ #
NotSupportedException
┌┌ '
(
┌┌' (
$str
██
 |
+
██} ~
	arguments
▄▄
 
.
▄▄ 
Length
▄▄ 
)
▄▄ 
;
▄▄ 
}
▌▌ 
}
▐▐ 
private
рр 
static
рр 
string
рр '
GenerateDocumentationFile
рр 3
(
рр3 4
IEnumerable
рр4 ?
<
рр? @
string
рр@ F
>
ррF G
paths
ррH M
)
ррM N
{
сс 
if
тт 
(
тт	 

!
тт
 
paths
тт 
.
тт 
Any
тт 
(
тт 
)
тт 
)
тт 
return
уу 
String
уу 
.
уу 
Empty
уу 
;
уу 
return
хх 
$"
хх 
{
хх 
Environment
хх 
.
хх 
NewLine
хх #
}
хх# $
{
хх$ %
string
хх% +
.
хх+ ,
Join
хх, 0
(
хх0 1
Environment
хх1 <
.
хх< =
NewLine
хх= D
,
ххD E
paths
ххF K
.
ххK L
Select
ххL R
(
ххR S
a
ххS T
=>
ххU W
$"
ххX Z#
  <DocumentationFile>
ххZ o
{
ххo p
a
ххp q
}
ххq r#
</DocumentationFile>ххr Ж
"ххЖ З
)ххЗ И
)ххИ Й
}ххЙ К
"ххК Л
;ххЛ М
}
цц 
private
шш 
static
шш 
string
шш $
GenerateWarningAsError
шш 0
(
шш0 1
IEnumerable
шш1 <
<
шш< =
string
шш= C
>
шшC D

enumerable
шшE O
)
шшO P
{
щщ 
string
ъъ 
returnValue
ъъ 
=
ъъ 
String
ъъ !
.
ъъ! "
Empty
ъъ" '
;
ъъ' (
bool
ыы 
!
allWarningsAsErrors
ыы 
=
ыы  
false
ыы! &
;
ыы& '
List
ьь 

<
ьь
 
string
ьь 
>
ьь 

warningIds
ьь 
=
ьь 
new
ьь  #
List
ьь$ (
<
ьь( )
string
ьь) /
>
ьь/ 0
(
ьь0 1
)
ьь1 2
;
ьь2 3
foreach
юю 
(
юю 
string
юю 
s
юю 
in
юю 

enumerable
юю %
)
юю% &
{
яя 
if
ЁЁ 

(
ЁЁ 
s
ЁЁ 
==
ЁЁ 
$str
ЁЁ 
)
ЁЁ !
allWarningsAsErrors
ЁЁ )
=
ЁЁ* +
true
ЁЁ, 0
;
ЁЁ0 1
else
ёё 
if
ёё 
(
ёё 
s
ёё 
==
ёё 
$str
ёё 
)
ёё !
allWarningsAsErrors
ёё .
=
ёё/ 0
false
ёё1 6
;
ёё6 7
else
ЄЄ 
{
єє 	

warningIds
ЇЇ
 
.
ЇЇ 
Add
ЇЇ 
(
ЇЇ 
s
ЇЇ 
)
ЇЇ 
;
ЇЇ 
}
її 	
}
ЎЎ 
returnValue
°° 
+=
°° 
$@"
°° )
    <TreatWarningsAsErrors>
°° 3
{
°°3 4!
allWarningsAsErrors
°°4 G
}
°°G H&
</TreatWarningsAsErrors>
°°H `
"
°°` a
;
°°a b
if
∙∙ 
(
∙∙	 


warningIds
∙∙
 
.
∙∙ 
Any
∙∙ 
(
∙∙ 
)
∙∙ 
)
∙∙ 
{
·· 
returnValue
√√ 
+=
√√ 
$"
√√ 
{
√√ 
Environment
√√ %
.
√√% &
NewLine
√√& -
}
√√- .$
    <WarningsAsErrors>
√√. D
{
√√D E
string
√√E K
.
√√K L
Join
√√L P
(
√√P Q
$str
√√Q T
,
√√T U

warningIds
√√V `
)
√√` a
}
√√a b!
</WarningsAsErrors>
√√b u
"
√√u v
;
√√v w
}
№№ 
return
■■ 
$"
■■ 
{
■■ 
Environment
■■ 
.
■■ 
NewLine
■■ #
}
■■# $
{
■■$ %
returnValue
■■% 0
}
■■0 1
"
■■1 2
;
■■2 3
}
   
private
ББ 
static
ББ 
string
ББ "
GenerateWarningLevel
ББ .
(
ББ. /
IEnumerable
ББ/ :
<
ББ: ;
string
ББ; A
>
ББA B
warningLevel
ББC O
)
ББO P
{
ВВ 
var
ГГ 	
level
ГГ
 
=
ГГ 
warningLevel
ГГ 
.
ГГ 
FirstOrDefault
ГГ -
(
ГГ- .
)
ГГ. /
;
ГГ/ 0
if
ДД 
(
ДД	 

!
ДД
 
string
ДД 
.
ДД  
IsNullOrWhiteSpace
ДД $
(
ДД$ %
level
ДД% *
)
ДД* +
)
ДД+ ,
return
ЕЕ 
level
ЕЕ 
;
ЕЕ 
return
ЗЗ 
$num
ЗЗ 
.
ЗЗ 
ToString
ЗЗ 
(
ЗЗ 
)
ЗЗ 
;
ЗЗ 
}
ИИ 
static
КК 

string
КК 
GetSolutionText
КК !
(
КК! "
)
КК" #
{
ЛЛ 
return
ММ 
string
ММ 
.
ММ 
Join
ММ 
(
ММ 
Environment
ММ $
.
ММ$ %
NewLine
ММ% ,
,
ММ, -
$str
НН 
,
НН 
$str
ОО D
,
ООD E
$str
ПП 
,
ПП 
$str
РР 
,
РР 
$str
СС 
,
СС 
$str
ТТ J
,
ТТJ K
$str
УУ 0
,
УУ0 1
$str
ФФ 4
,
ФФ4 5
$str
ХХ 
,
ХХ  
$str
ЦЦ J
,
ЦЦJ K
$str
ЧЧ 
,
ЧЧ 
$str
ШШ 
,
ШШ  
$str
ЩЩ >
,
ЩЩ> ?
$str
ЪЪ +
,
ЪЪ+ ,
$str
ЫЫ 
,
ЫЫ  
$str
ЬЬ 
,
ЬЬ 
$str
ЭЭ 
)
ЭЭ 
.
ЭЭ 
Replace
ЭЭ 
(
ЭЭ 
$str
ЭЭ 
,
ЭЭ 
$str
ЭЭ !
)
ЭЭ! "
;
ЭЭ" #
}
ЮЮ 
static
аа 

string
аа &
GetProjectFooterTemplate
аа *
(
аа* +
)
аа+ ,
{
бб 
return
вв 
string
вв 
.
вв 
Join
вв 
(
вв 
Environment
вв $
.
вв$ %
NewLine
вв% ,
,
вв, -
$str
гг 
,
гг 
$str
дд P
,
ддP Q
$str
ее o
,
ееo p
$str
жж U
,
жжU V
$str
зз *
,
зз* +
$str
ии 
,
ии 
$str
йй )
,
йй) *
$str
кк 
,
кк 
$str
лл 
,
лл 
$str
мм 
,
мм 
$str
нн 
)
нн 
;
нн 
}
оо 
static
░░ 

string
░░ &
GetProjectHeaderTemplate
░░ *
(
░░* +
)
░░+ ,
{
▒▒ 
var
▓▓ 	
header
▓▓
 
=
▓▓ 
new
▓▓ 
[
▓▓ 
]
▓▓ 
{
││ 
$str
┤┤ 5
,
┤┤5 6
$str
╡╡ P
,
╡╡P Q
$str
╢╢ 
,
╢╢ 
$str
╖╖ .
,
╖╖. /
$str
╕╕ y
,
╕╕y z
$str╣╣ Л
,╣╣Л М
$str
║║ ^
,
║║^ _
$str
╗╗ 
,
╗╗ 
$str
╝╝ 
,
╝╝ 
$str
╜╜ \
,
╜╜\ ]
$str
╛╛ N
,
╛╛N O
$str
┐┐ 3
,
┐┐3 4
$str
└└ 1
,
└└1 2
$str
┴┴ 1
,
┴┴1 2
$str
┬┬ 1
,
┬┬1 2
$str├├ Е
,├├Е Ж
$str
── /
,
──/ 0
$str
┼┼ @
,
┼┼@ A
$str
╞╞ /
,
╞╞/ 0
$str
╟╟ D
,
╟╟D E
$str
╚╚ 1
,
╚╚1 2
$str
╔╔ 2
,
╔╔2 3
$str
╩╩ 
,
╩╩ 
$str
╦╦ ]
,
╦╦] ^
$str
╠╠ 0
,
╠╠0 1
$str
══ *
,
══* +
$str
╬╬ )
,
╬╬) *
$str
╧╧ +
,
╧╧+ ,
$str
╨╨ 5
,
╨╨5 6
$str
╤╤ 0
,
╤╤0 1
$str
╥╥ 0
,
╥╥0 1
$str
╙╙ $
,
╙╙$ %
$str
╘╘ B
,
╘╘B C
$str
╒╒ 
,
╒╒ 
$str
╓╓ _
,
╓╓_ `
$str
╫╫ -
,
╫╫- .
$str
╪╪ (
,
╪╪( )
$str
┘┘ 9
,
┘┘9 :
$str
┌┌ 0
,
┌┌0 1
$str
██ 0
,
██0 1
$str
▄▄ $
,
▄▄$ %
$str
▌▌ B
,
▌▌B C
$str
▐▐ 
}
▀▀ 
;
▀▀ 
var
сс 	%
forceExplicitReferences
сс
 !
=
сс" #
new
сс$ '
[
сс' (
]
сс( )
{
тт 
$str
уу 
,
уу 
$str
фф (
,
фф( )
$str
хх (
,
хх( )
$str
цц g
,
ццg h
$str
чч ]
,
чч] ^
$str
шш [
,
шш[ \
$str
щщ 
}
ъъ 
;
ъъ 
var
ьь 	
footer
ьь
 
=
ьь 
new
ьь 
[
ьь 
]
ьь 
{
ээ 
$str
юю  
,
юю  !
$str
яя 
}
ЁЁ 
;
ЁЁ 
var
ЄЄ 	
pieces
ЄЄ
 
=
ЄЄ 
header
ЄЄ 
.
ЄЄ 
Concat
ЄЄ  
(
ЄЄ  !%
forceExplicitReferences
ЄЄ! 8
)
ЄЄ8 9
.
ЄЄ9 :
Concat
ЄЄ: @
(
ЄЄ@ A
footer
ЄЄA G
)
ЄЄG H
.
ЄЄH I
ToArray
ЄЄI P
(
ЄЄP Q
)
ЄЄQ R
;
ЄЄR S
return
єє 
string
єє 
.
єє 
Join
єє 
(
єє 
Environment
єє $
.
єє$ %
NewLine
єє% ,
,
єє, -
pieces
єє. 4
)
єє4 5
;
єє5 6
}
ЇЇ 
void
ЎЎ 
SyncSolution
ЎЎ	 
(
ЎЎ 
IEnumerable
ЎЎ !
<
ЎЎ! "
Assembly
ЎЎ" *
>
ЎЎ* +
islands
ЎЎ, 3
,
ЎЎ3 4
Type
ЎЎ5 9
[
ЎЎ9 :
]
ЎЎ: ;
types
ЎЎ< A
)
ЎЎA B
{
ўў *
SyncSolutionFileIfNotChanged
°° "
(
°°" #
SolutionFile
°°# /
(
°°/ 0
)
°°0 1
,
°°1 2
SolutionText
°°3 ?
(
°°? @
islands
°°@ G
)
°°G H
,
°°H I
types
°°J O
)
°°O P
;
°°P Q
}
∙∙ 
string
√√ 

SolutionText
√√ 
(
√√ 
IEnumerable
√√ #
<
√√# $
Assembly
√√$ ,
>
√√, -
islands
√√. 5
)
√√5 6
{
№№ 
var
¤¤ 	
fileversion
¤¤
 
=
¤¤ 
$str
¤¤ 
;
¤¤  
var
■■ 	
	vsversion
■■
 
=
■■ 
$str
■■ 
;
■■ 
var
АА 	
relevantIslands
АА
 
=
АА $
RelevantIslandsForMode
АА 2
(
АА2 3
islands
АА3 :
)
АА: ;
;
АА; <
string
ББ 
projectEntries
ББ 
=
ББ 
GetProjectEntries
ББ /
(
ББ/ 0
relevantIslands
ББ0 ?
)
ББ? @
;
ББ@ A
string
ВВ #
projectConfigurations
ВВ "
=
ВВ# $
string
ВВ% +
.
ВВ+ ,
Join
ВВ, 0
(
ВВ0 1
Environment
ВВ1 <
.
ВВ< =
NewLine
ВВ= D
,
ВВD E
relevantIslands
ГГ 
.
ГГ 
Select
ГГ 
(
ГГ 
i
ГГ  
=>
ГГ! #,
GetProjectActiveConfigurations
ГГ$ B
(
ГГB C
ProjectGuid
ГГC N
(
ГГN O
i
ГГO P
)
ГГP Q
)
ГГQ R
)
ГГR S
.
ГГS T
ToArray
ГГT [
(
ГГ[ \
)
ГГ\ ]
)
ГГ] ^
;
ГГ^ _
return
ДД 
string
ДД 
.
ДД 
Format
ДД 
(
ДД 
GetSolutionText
ДД *
(
ДД* +
)
ДД+ ,
,
ДД, -
fileversion
ДД. 9
,
ДД9 :
	vsversion
ДД; D
,
ДДD E
projectEntries
ДДF T
,
ДДT U#
projectConfigurations
ДДV k
)
ДДk l
;
ДДl m
}
ЕЕ 
private
ЗЗ 
static
ЗЗ 
string
ЗЗ '
GenerateAnalyserItemGroup
ЗЗ 3
(
ЗЗ3 4
string
ЗЗ4 :
[
ЗЗ: ;
]
ЗЗ; <
paths
ЗЗ= B
)
ЗЗB C
{
ИИ 
if
НН 
(
НН	 

!
НН
 
paths
НН 
.
НН 
Any
НН 
(
НН 
)
НН 
)
НН 
return
ОО 
string
ОО 
.
ОО 
Empty
ОО 
;
ОО 
var
РР 	
analyserBuilder
РР
 
=
РР 
new
РР 
StringBuilder
РР  -
(
РР- .
)
РР. /
;
РР/ 0
analyserBuilder
СС 
.
СС 

AppendLine
СС  
(
СС  !
$str
СС! 0
)
СС0 1
;
СС1 2
foreach
ТТ 
(
ТТ 
var
ТТ 
path
ТТ 
in
ТТ 
paths
ТТ  
)
ТТ  !
{
УУ 
analyserBuilder
ФФ 
.
ФФ 

AppendLine
ФФ "
(
ФФ" #
$"
ФФ# %&
    <Analyzer Include=\"
ФФ% =
{
ФФ= >
path
ФФ> B
}
ФФB C
\" />
ФФC H
"
ФФH I
)
ФФI J
;
ФФJ K
}
ХХ 
analyserBuilder
ЧЧ 
.
ЧЧ 

AppendLine
ЧЧ  
(
ЧЧ  !
$str
ЧЧ! 1
)
ЧЧ1 2
;
ЧЧ2 3
return
ШШ 
analyserBuilder
ШШ 
.
ШШ 
ToString
ШШ %
(
ШШ% &
)
ШШ& '
;
ШШ' (
}
ЩЩ 
private
ЫЫ 
static
ЫЫ 
ILookup
ЫЫ 
<
ЫЫ 
string
ЫЫ !
,
ЫЫ! "
string
ЫЫ# )
>
ЫЫ) *4
&GetOtherArgumentsFromResponseFilesData
ЫЫ+ Q
(
ЫЫQ R
List
ЫЫR V
<
ЫЫV W
ResponseFileData
ЫЫW g
>
ЫЫg h
responseFilesData
ЫЫi z
)
ЫЫz {
{
ЬЬ 
var
ЭЭ 	
paths
ЭЭ
 
=
ЭЭ 
responseFilesData
ЭЭ #
.
ЭЭ# $

SelectMany
ЭЭ$ .
(
ЭЭ. /
x
ЭЭ/ 0
=>
ЭЭ1 3
{
ЮЮ 	
return
ЯЯ
 
x
ЯЯ 
.
ЯЯ 
OtherArguments
ЯЯ !
.
аа 
Where
аа 
(
аа 
a
аа 
=>
аа 
a
аа 
.
аа 

StartsWith
аа $
(
аа$ %
$str
аа% (
)
аа( )
||
аа* ,
a
аа- .
.
аа. /

StartsWith
аа/ 9
(
аа9 :
$str
аа: =
)
аа= >
)
аа> ?
.
бб 
Select
бб 
(
бб 
b
бб 
=>
бб 
{
вв 
var
гг 
index
гг 
=
гг 
b
гг 
.
гг 
IndexOf
гг #
(
гг# $
$str
гг$ '
,
гг' (
StringComparison
гг) 9
.
гг9 :
Ordinal
гг: A
)
ггA B
;
ггB C
if
дд 
(
дд 
index
дд 
>
дд 
$num
дд 
&&
дд 
b
дд  
.
дд  !
Length
дд! '
>
дд( )
index
дд* /
)
дд/ 0
{
ее 
var
жж 
key
жж 
=
жж 
b
жж 
.
жж 
	Substring
жж %
(
жж% &
$num
жж& '
,
жж' (
index
жж) .
-
жж/ 0
$num
жж1 2
)
жж2 3
;
жж3 4
return
зз 
new
зз 
KeyValuePair
зз '
<
зз' (
string
зз( .
,
зз. /
string
зз0 6
>
зз6 7
(
зз7 8
key
зз8 ;
,
зз; <
b
зз= >
.
зз> ?
	Substring
зз? H
(
ззH I
index
ззI N
+
ззO P
$num
ззQ R
)
ззR S
)
ззS T
;
ззT U
}
ии 
const
кк 
string
кк 
warnaserror
кк &
=
кк' (
$str
кк) 6
;
кк6 7
if
лл 
(
лл 
b
лл 
.
лл 
	Substring
лл 
(
лл 
$num
лл 
)
лл  
.
лл  !

StartsWith
лл! +
(
лл+ ,
warnaserror
лл, 7
)
лл7 8
)
лл8 9
{
мм 
return
нн 
new
нн 
KeyValuePair
нн '
<
нн' (
string
нн( .
,
нн. /
string
нн0 6
>
нн6 7
(
нн7 8
warnaserror
нн8 C
,
ннC D
b
ннE F
.
ннF G
	Substring
ннG P
(
ннP Q
warnaserror
ннQ \
.
нн\ ]
Length
нн] c
+
ннd e
$num
ннf g
)
ннg h
)
ннh i
;
ннi j
}
оо 
return
░░ 
default
░░ 
;
░░ 
}
▒▒ 
)
▒▒ 
;
▒▒ 
}
▓▓ 	
)
▓▓	 

.
││ 	
Distinct
││	 
(
││ 
)
││ 
.
┤┤ 	
ToLookup
┤┤	 
(
┤┤ 
o
┤┤ 
=>
┤┤ 
o
┤┤ 
.
┤┤ 
Key
┤┤ 
,
┤┤ 
pair
┤┤ "
=>
┤┤# %
pair
┤┤& *
.
┤┤* +
Value
┤┤+ 0
)
┤┤0 1
;
┤┤1 2
return
╡╡ 
paths
╡╡ 
;
╡╡ 
}
╢╢ 
private
╕╕ 
string
╕╕ !
GenerateLangVersion
╕╕ &
(
╕╕& '
IEnumerable
╕╕' 2
<
╕╕2 3
string
╕╕3 9
>
╕╕9 :
langVersionList
╕╕; J
)
╕╕J K
{
╣╣ 
var
║║ 	
langVersion
║║
 
=
║║ 
langVersionList
║║ '
.
║║' (
FirstOrDefault
║║( 6
(
║║6 7
)
║║7 8
;
║║8 9
if
╗╗ 
(
╗╗	 

!
╗╗
 
string
╗╗ 
.
╗╗  
IsNullOrWhiteSpace
╗╗ $
(
╗╗$ %
langVersion
╗╗% 0
)
╗╗0 1
)
╗╗1 2
return
╝╝ 
langVersion
╝╝ 
;
╝╝ 
return
╜╜ %
k_TargetLanguageVersion
╜╜ $
;
╜╜$ %
}
╛╛ 
private
└└ 
static
└└ 
string
└└ %
GenerateAnalyserRuleSet
└└ 1
(
└└1 2
string
└└2 8
[
└└8 9
]
└└9 :
paths
└└; @
)
└└@ A
{
┴┴ 
if
├├ 
(
├├	 

!
├├
 
paths
├├ 
.
├├ 
Any
├├ 
(
├├ 
)
├├ 
)
├├ 
return
── 
string
── 
.
── 
Empty
── 
;
── 
return
╞╞ 
$"
╞╞ 
{
╞╞ 
Environment
╞╞ 
.
╞╞ 
NewLine
╞╞ #
}
╞╞# $
{
╞╞$ %
string
╞╞% +
.
╞╞+ ,
Join
╞╞, 0
(
╞╞0 1
Environment
╞╞1 <
.
╞╞< =
NewLine
╞╞= D
,
╞╞D E
paths
╞╞F K
.
╞╞K L
Select
╞╞L R
(
╞╞R S
a
╞╞S T
=>
╞╞U W
$"
╞╞X Z%
  <CodeAnalysisRuleSet>
╞╞Z q
{
╞╞q r
a
╞╞r s
}
╞╞s t%
</CodeAnalysisRuleSet>╞╞t К
"╞╞К Л
)╞╞Л М
)╞╞М Н
}╞╞Н О
"╞╞О П
;╞╞П Р
}
╟╟ 
private
╔╔ 
static
╔╔ 
string
╔╔ -
GenerateAnalyserAdditionalFiles
╔╔ 9
(
╔╔9 :
string
╔╔: @
[
╔╔@ A
]
╔╔A B
paths
╔╔C H
)
╔╔H I
{
╩╩ 
if
╦╦ 
(
╦╦	 

!
╦╦
 
paths
╦╦ 
.
╦╦ 
Any
╦╦ 
(
╦╦ 
)
╦╦ 
)
╦╦ 
return
╠╠ 
string
╠╠ 
.
╠╠ 
Empty
╠╠ 
;
╠╠ 
var
╬╬ 	
analyserBuilder
╬╬
 
=
╬╬ 
new
╬╬ 
StringBuilder
╬╬  -
(
╬╬- .
)
╬╬. /
;
╬╬/ 0
analyserBuilder
╧╧ 
.
╧╧ 

AppendLine
╧╧  
(
╧╧  !
$str
╧╧! 0
)
╧╧0 1
;
╧╧1 2
foreach
╨╨ 
(
╨╨ 
var
╨╨ 
path
╨╨ 
in
╨╨ 
paths
╨╨  
)
╨╨  !
{
╤╤ 
analyserBuilder
╥╥ 
.
╥╥ 

AppendLine
╥╥ "
(
╥╥" #
$"
╥╥# %-
    <AdditionalFiles Include=\"
╥╥% D
{
╥╥D E
path
╥╥E I
}
╥╥I J
\" />
╥╥J O
"
╥╥O P
)
╥╥P Q
;
╥╥Q R
}
╙╙ 
analyserBuilder
╒╒ 
.
╒╒ 

AppendLine
╒╒  
(
╒╒  !
$str
╒╒! 1
)
╒╒1 2
;
╒╒2 3
return
╓╓ 
analyserBuilder
╓╓ 
.
╓╓ 
ToString
╓╓ %
(
╓╓% &
)
╓╓& '
;
╓╓' (
}
╫╫ 
private
┘┘ 
static
┘┘ 
string
┘┘ 
GenerateNoWarn
┘┘ (
(
┘┘( )
string
┘┘) /
[
┘┘/ 0
]
┘┘0 1
codes
┘┘2 7
)
┘┘7 8
{
┌┌ 
if
██ 
(
██	 

!
██
 
codes
██ 
.
██ 
Any
██ 
(
██ 
)
██ 
)
██ 
return
▄▄ 
string
▄▄ 
.
▄▄ 
Empty
▄▄ 
;
▄▄ 
return
▐▐ 
$"
▐▐ 
,
▐▐ 
{
▐▐ 
string
▐▐ 
.
▐▐ 
Join
▐▐ 
(
▐▐ 
$str
▐▐  
,
▐▐  !
codes
▐▐" '
)
▐▐' (
}
▐▐( )
"
▐▐) *
;
▐▐* +
}
▀▀ 
static
сс 

IEnumerable
сс 
<
сс 
Assembly
сс 
>
сс  $
RelevantIslandsForMode
сс! 7
(
сс7 8
IEnumerable
сс8 C
<
ссC D
Assembly
ссD L
>
ссL M
islands
ссN U
)
ссU V
{
тт 
IEnumerable
уу 
<
уу 
Assembly
уу 
>
уу 
relevantIslands
уу +
=
уу, -
islands
уу. 5
.
уу5 6
Where
уу6 ;
(
уу; <
i
уу< =
=>
уу> @
ScriptingLanguage
ууA R
.
ууR S
CSharp
ууS Y
==
ууZ \"
ScriptingLanguageFor
уу] q
(
ууq r
i
ууr s
)
ууs t
)
ууt u
;
ууu v
return
фф 
relevantIslands
фф 
;
фф 
}
хх 
string
ыы 

GetProjectEntries
ыы 
(
ыы 
IEnumerable
ыы (
<
ыы( )
Assembly
ыы) 1
>
ыы1 2
islands
ыы3 :
)
ыы: ;
{
ьь 
var
ээ 	
projectEntries
ээ
 
=
ээ 
islands
ээ "
.
ээ" #
Select
ээ# )
(
ээ) *
i
ээ* +
=>
ээ, .
string
ээ/ 5
.
ээ5 6
Format
ээ6 <
(
ээ< =,
m_SolutionProjectEntryTemplate
юю &
,
юю& '
m_GUIDGenerator
яя 
.
яя 
SolutionGuid
яя $
(
яя$ %
m_ProjectName
яя% 2
,
яя2 3'
GetExtensionOfSourceFiles
яя4 M
(
яяM N
i
яяN O
.
яяO P
sourceFiles
яяP [
)
яя[ \
)
яя\ ]
,
яя] ^
i
ЁЁ 	
.
ЁЁ	 

name
ЁЁ
 
,
ЁЁ 
Path
ёё 
.
ёё 
GetFileName
ёё 
(
ёё 
ProjectFile
ёё $
(
ёё$ %
i
ёё% &
)
ёё& '
)
ёё' (
,
ёё( )
ProjectGuid
ЄЄ 
(
ЄЄ 
i
ЄЄ 
)
ЄЄ 
)
єє 
)
єє 
;
єє 	
return
її 
string
її 
.
її 
Join
її 
(
її 
Environment
її $
.
її$ %
NewLine
її% ,
,
її, -
projectEntries
її. <
.
її< =
ToArray
її= D
(
їїD E
)
їїE F
)
їїF G
;
їїG H
}
ЎЎ 
string
√√ 
,
GetProjectActiveConfigurations
√√ )
(
√√) *
string
√√* 0
projectGuid
√√1 <
)
√√< =
{
№№ 
return
¤¤ 
string
¤¤ 
.
¤¤ 
Format
¤¤ 
(
¤¤ 4
&m_SolutionProjectConfigurationTemplate
■■ .
,
■■. /
projectGuid
   
)
   
;
   
}
АА 
string
ВВ 
$
EscapedRelativePathFor
ВВ !
(
ВВ! "
string
ВВ" (
file
ВВ) -
)
ВВ- .
{
ГГ 
var
ДД 	

projectDir
ДД
 
=
ДД 
ProjectDirectory
ДД '
.
ДД' (
Replace
ДД( /
(
ДД/ 0
$char
ДД0 3
,
ДД3 4
$char
ДД5 9
)
ДД9 :
;
ДД: ;
file
ЕЕ 

=
ЕЕ 
file
ЕЕ 
.
ЕЕ 
Replace
ЕЕ 
(
ЕЕ 
$char
ЕЕ 
,
ЕЕ 
$char
ЕЕ #
)
ЕЕ# $
;
ЕЕ$ %
var
ЖЖ 	
path
ЖЖ
 
=
ЖЖ 
SkipPathPrefix
ЖЖ 
(
ЖЖ  
file
ЖЖ  $
,
ЖЖ$ %

projectDir
ЖЖ& 0
)
ЖЖ0 1
;
ЖЖ1 2
var
ИИ 	
packageInfo
ИИ
 
=
ИИ $
m_AssemblyNameProvider
ИИ .
.
ИИ. /
FindForAssetPath
ИИ/ ?
(
ИИ? @
path
ИИ@ D
.
ИИD E
Replace
ИИE L
(
ИИL M
$char
ИИM Q
,
ИИQ R
$char
ИИS V
)
ИИV W
)
ИИW X
;
ИИX Y
if
ЙЙ 
(
ЙЙ	 

packageInfo
ЙЙ
 
!=
ЙЙ 
null
ЙЙ 
)
ЙЙ 
{
КК 
var
НН 
absolutePath
НН 
=
НН 
Path
НН 
.
НН  
GetFullPath
НН  +
(
НН+ ,
NormalizePath
НН, 9
(
НН9 :
path
НН: >
)
НН> ?
)
НН? @
.
НН@ A
Replace
ННA H
(
ННH I
$char
ННI L
,
ННL M
$char
ННN R
)
ННR S
;
ННS T
path
ОО 
=
ОО 
SkipPathPrefix
ОО 
(
ОО 
absolutePath
ОО *
,
ОО* +

projectDir
ОО, 6
)
ОО6 7
;
ОО7 8
}
ПП 
return
СС 
SecurityElement
СС 
.
СС 
Escape
СС #
(
СС# $
path
СС$ (
)
СС( )
;
СС) *
}
ТТ 
static
ФФ 

string
ФФ 
SkipPathPrefix
ФФ  
(
ФФ  !
string
ФФ! '
path
ФФ( ,
,
ФФ, -
string
ФФ. 4
prefix
ФФ5 ;
)
ФФ; <
{
ХХ 
if
ЦЦ 
(
ЦЦ	 

path
ЦЦ
 
.
ЦЦ 

StartsWith
ЦЦ 
(
ЦЦ 
$@"
ЦЦ 
{
ЦЦ 
prefix
ЦЦ $
}
ЦЦ$ %
\
ЦЦ% &
"
ЦЦ& '
)
ЦЦ' (
)
ЦЦ( )
return
ЧЧ 
path
ЧЧ 
.
ЧЧ 
	Substring
ЧЧ 
(
ЧЧ 
prefix
ЧЧ $
.
ЧЧ$ %
Length
ЧЧ% +
+
ЧЧ, -
$num
ЧЧ. /
)
ЧЧ/ 0
;
ЧЧ0 1
return
ШШ 
path
ШШ 
;
ШШ 
}
ЩЩ 
static
ЫЫ 

string
ЫЫ 
NormalizePath
ЫЫ 
(
ЫЫ  
string
ЫЫ  &
path
ЫЫ' +
)
ЫЫ+ ,
{
ЬЬ 
if
ЭЭ 
(
ЭЭ	 

Path
ЭЭ
 
.
ЭЭ $
DirectorySeparatorChar
ЭЭ %
==
ЭЭ& (
$char
ЭЭ) -
)
ЭЭ- .
return
ЮЮ 
path
ЮЮ 
.
ЮЮ 
Replace
ЮЮ 
(
ЮЮ 
$char
ЮЮ 
,
ЮЮ  
Path
ЮЮ! %
.
ЮЮ% &$
DirectorySeparatorChar
ЮЮ& <
)
ЮЮ< =
;
ЮЮ= >
return
ЯЯ 
path
ЯЯ 
.
ЯЯ 
Replace
ЯЯ 
(
ЯЯ 
$char
ЯЯ 
,
ЯЯ 
Path
ЯЯ  $
.
ЯЯ$ %$
DirectorySeparatorChar
ЯЯ% ;
)
ЯЯ; <
;
ЯЯ< =
}
аа 
static
вв 

string
вв 
ProjectFooter
вв 
(
вв  
)
вв  !
{
гг 
return
дд &
GetProjectFooterTemplate
дд %
(
дд% &
)
дд& '
;
дд' (
}
ее 
static
зз 

string
зз !
GetProjectExtension
зз %
(
зз% &
)
зз& '
{
ии 
return
йй 
$str
йй 
;
йй 
}
кк 
string
мм 

ProjectGuid
мм 
(
мм 
Assembly
мм 
assembly
мм  (
)
мм( )
{
нн 
return
оо 
m_GUIDGenerator
оо 
.
оо 
ProjectGuid
оо (
(
оо( )
m_ProjectName
пп 
,
пп $
m_AssemblyNameProvider
░░ 
.
░░ 
GetProjectName
░░ -
(
░░- .
assembly
░░. 6
.
░░6 7

outputPath
░░7 A
,
░░A B
assembly
░░C K
.
░░K L
name
░░L P
)
░░P Q
)
░░Q R
;
░░R S
}
▒▒ 
static
││ 

string
││ 
GetRootNamespace
││ "
(
││" #
Assembly
││# +
assembly
││, 4
)
││4 5
{
┤┤ 
return
╢╢ 
assembly
╢╢ 
.
╢╢ 
rootNamespace
╢╢ #
;
╢╢# $
}
║║ 
}╗╗ 
}╝╝ ё
зD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IAssemblyNameProvider.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
ProjectGeneration  1
{ 
internal 

	interface !
IAssemblyNameProvider *
{ 
string		 

[		
 
]		 &
ProjectSupportedExtensions		 '
{		( )
get		* -
;		- .
}		/ 0
string

 
*
ProjectGenerationRootNamespace

 )
{

* +
get

, /
;

/ 0
}

1 2!
ProjectGenerationFlag !
ProjectGenerationFlag /
{0 1
get2 5
;5 6
}7 8
string 
)
GetAssemblyNameFromScriptPath (
(( )
string) /
path0 4
)4 5
;5 6
string 

GetProjectName 
( 
string  
assemblyOutputPath! 3
,3 4
string5 ;
assemblyName< H
)H I
;I J
bool %
IsInternalizedPackagePath	 "
(" #
string# )
path* .
). /
;/ 0
IEnumerable 
< 
Assembly 
> 
GetAssemblies '
(' (
Func( ,
<, -
string- 3
,3 4
bool5 9
>9 :&
shouldFileBePartOfSolution; U
)U V
;V W
IEnumerable 
< 
string 
> 
GetAllAssetPaths (
(( )
)) *
;* +
UnityEditor 
. 
PackageManager 
. 
PackageInfo *
FindForAssetPath+ ;
(; <
string< B
	assetPathC L
)L M
;M N
ResponseFileData 
ParseResponseFile &
(& '
string' -
responseFilePath. >
,> ?
string@ F
projectDirectoryG W
,W X
stringY _
[_ `
]` a&
systemReferenceDirectoriesb |
)| }
;} ~
IEnumerable 
< 
string 
> "
GetRoslynAnalyzerPaths .
(. /
)/ 0
;0 1
void #
ToggleProjectGeneration	  
(  !!
ProjectGenerationFlag! 6

preference7 A
)A B
;B C
} 
} с	
ОD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\RiderMenu.cs
	namespace 	
	JetBrains
 
. 
Rider 
. 
Unity 
.  
Editor  &
{		 
[ 
UsedImplicitly 
] 
public 
static	 
class 
	RiderMenu 
{ 
[ 
UsedImplicitly 
] 
public 

static 
void 
MenuOpenProject &
(& '
)' (
{ 
if 
(	 

RiderScriptEditor
 
. 
IsRiderInstallation /
(/ 0
RiderScriptEditor0 A
.A B
CurrentEditorB O
)O P
)P Q
{ 

CodeEditor 
. 
CurrentEditor  
.  !
SyncAll! (
(( )
)) *
;* +

CodeEditor 
. 
CurrentEditor  
.  !
OpenProject! ,
(, -
)- .
;. /
} 
} 
} 
}   х
МD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\LoggingLevel.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 

enum 
LoggingLevel 
{ 
OFF 
, 
FATAL

 	
,

	 

ERROR 	
,	 

WARN 
, 	
INFO 
, 	
VERBOSE 
, 
TRACE 	
,	 

} 
} шL
ОD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\PluginSettings.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
{ 
internal 

class 
PluginSettings 
{ 
public		 

static		 
LoggingLevel		  
SelectedLoggingLevel		 3
{

 
get 	
=>
 
( 
LoggingLevel 
) 
EditorPrefs '
.' (
GetInt( .
(. /
$str/ K
,K L
$numM N
)N O
;O P
set 	
{ 
EditorPrefs 
. 
SetInt 
( 
$str 7
,7 8
(9 :
int: =
)= >
value? D
)D E
;E F
} 
} 
public 

static 
bool %
LogEventsCollectorEnabled 0
{ 
get 	
{
 
return 
EditorPrefs 
. 
GetBool &
(& '
$str' H
,H I
trueJ N
)N O
;O P
}Q R
private 
set 
{ 
EditorPrefs 
.  
SetBool  '
(' (
$str( I
,I J
valueK P
)P Q
;Q R
}S T
} 
private 
static 
GUIStyle 
ourVersionInfoStyle /
=0 1
new2 5
GUIStyle6 >
(> ?
)? @
{ 
normal 
= 
new 
GUIStyleState  
(  !
)! "
{ 
	textColor 
= 
new 
Color 
( 
$num 
,  
$num! "
," #
$num$ %
,% &
$num' *
)* +
,+ ,
} 
, 
margin 
= 
new 

RectOffset 
( 
$num 
,  
$num! "
," #
$num$ %
,% &
$num' (
)( )
,) *
}   
;   
[(( 
SettingsProvider(( 
](( 
private)) 
static)) 
SettingsProvider)) # 
RiderPreferencesItem))$ 8
())8 9
)))9 :
{** 
if++ 
(++	 

!++
 
RiderScriptEditor++ 
.++ 
IsRiderInstallation++ 0
(++0 1
RiderScriptEditor++1 B
.++B C
CurrentEditor++C P
)++P Q
)++Q R
return,, 
null,, 
;,, 
if-- 
(--	 

!--
 !
RiderScriptEditorData--  
.--  !
instance--! )
.--) *"
shouldLoadEditorPlugin--* @
)--@ A
return.. 
null.. 
;.. 
var// 	
provider//
 
=// 
new// 
SettingsProvider// )
(//) *
$str//* =
,//= >
SettingsScope//? L
.//L M
User//M Q
)//Q R
{00 
label11 
=11 
$str11 
,11 
keywords22 
=22 
new22 
[22 
]22 
{22 
$str22 "
}22# $
,22$ %

guiHandler33 
=33 
(33 
searchContext33 #
)33# $
=>33% '
{44 	
EditorGUIUtility55
 
.55 

labelWidth55 %
=55& '
$num55( ,
;55, -
EditorGUILayout66
 
.66 
BeginVertical66 '
(66' (
)66( )
;66) *
	GUILayout88
 
.88 
BeginVertical88 !
(88! "
)88" #
;88# $%
LogEventsCollectorEnabled99
 #
=99$ %
EditorGUILayout:: 
.:: 
Toggle:: "
(::" #
new::# &

GUIContent::' 1
(::1 2
$str::2 J
)::J K
,::K L%
LogEventsCollectorEnabled::M f
)::f g
;::g h
	GUILayout<<
 
.<< 
EndVertical<< 
(<<  
)<<  !
;<<! "
	GUILayout==
 
.== 
Label== 
(== 
$str== 
)== 
;== 
if??
 
(?? 
!?? 
string?? 
.?? 
IsNullOrEmpty?? #
(??# $
EditorPluginInterop??$ 7
.??7 8
LogPath??8 ?
)??? @
)??@ A
{@@
 
EditorGUILayoutAA 
.AA 
BeginHorizontalAA +
(AA+ ,
)AA, -
;AA- .
EditorGUILayoutBB 
.BB 
PrefixLabelBB '
(BB' (
$strBB( 3
)BB3 4
;BB4 5
varCC 
previousCC 
=CC 
GUICC 
.CC 
enabledCC &
;CC& '
GUIDD 
.DD 
enabledDD 
=DD 
previousDD "
&&DD# % 
SelectedLoggingLevelDD& :
!=DD; =
LoggingLevelDD> J
.DDJ K
OFFDDK N
;DDN O
varEE 
buttonEE 
=EE 
	GUILayoutEE "
.EE" #
ButtonEE# )
(EE) *
newEE* -

GUIContentEE. 8
(EE8 9
$strEE9 C
)EEC D
)EED E
;EEE F
ifFF 
(FF 
buttonFF 
)FF 
{GG 

CodeEditorJJ 
.JJ 
CurrentEditorJJ &
.JJ& '
OpenProjectJJ' 2
(JJ2 3
EditorPluginInteropJJ3 F
.JJF G
LogPathJJG N
,JJN O
$numJJP Q
,JJQ R
$numJJS T
)JJT U
;JJU V
}KK 
GUIMM 
.MM 
enabledMM 
=MM 
previousMM "
;MM" #
	GUILayoutNN 
.NN 
EndHorizontalNN #
(NN# $
)NN$ %
;NN% &
}OO
 
varQQ
 

loggingMsgQQ 
=QQ 
$str	RR м
;
RRм н 
SelectedLoggingLevelSS
 
=SS  
(TT 
LoggingLevelTT 
)TT 
EditorGUILayoutTT *
.TT* +
	EnumPopupTT+ 4
(TT4 5
newTT5 8

GUIContentTT9 C
(TTC D
$strTTD T
,TTT U

loggingMsgTTV `
)TT` a
,TTa b 
SelectedLoggingLevelUU "
)UU" #
;UU# $
EditorGUILayoutXX
 
.XX 
HelpBoxXX !
(XX! "

loggingMsgXX" ,
,XX, -
MessageTypeXX. 9
.XX9 :
NoneXX: >
)XX> ?
;XX? @

LinkButtonZZ
 
(ZZ 
$strZZ C
)ZZC D
;ZZD E
	GUILayout\\
 
.\\ 
FlexibleSpace\\ !
(\\! "
)\\" #
;\\# $
	GUILayout]]
 
.]] 
BeginHorizontal]] #
(]]# $
)]]$ %
;]]% &
	GUILayout__
 
.__ 
FlexibleSpace__ !
(__! "
)__" #
;__# $
var``
 
assembly`` 
=`` 
EditorPluginInterop`` ,
.``, - 
EditorPluginAssembly``- A
;``A B
ifaa
 
(aa 
assemblyaa 
!=aa 
nullaa 
)aa 
{bb
 
varcc 
versioncc 
=cc 
assemblycc "
.cc" #
GetNamecc# *
(cc* +
)cc+ ,
.cc, -
Versioncc- 4
;cc4 5
	GUILayoutdd 
.dd 
Labeldd 
(dd 
$strdd .
+dd/ 0
versiondd1 8
,dd8 9
ourVersionInfoStyledd: M
)ddM N
;ddN O
}ee
 
	GUILayoutgg
 
.gg 
EndHorizontalgg !
(gg! "
)gg" #
;gg# $
EditorGUILayoutii
 
.ii 
EndVerticalii %
(ii% &
)ii& '
;ii' (
}jj 	
}kk 
;kk 
returnll 
providerll 
;ll 
}mm 
privateoo 
staticoo 
voidoo 

LinkButtonoo "
(oo" #
stringoo# )
urloo* -
)oo- .
{pp 
varqq 	
styleqq
 
=qq 
EditorStylesqq 
.qq 
	linkLabelqq (
;qq( )
varss 	
bClickedss
 
=ss 
	GUILayoutss 
.ss 
Buttonss %
(ss% &
urlss& )
,ss) *
styless+ 0
)ss0 1
;ss1 2
varuu 	
rectuu
 
=uu 
GUILayoutUtilityuu !
.uu! "
GetLastRectuu" -
(uu- .
)uu. /
;uu/ 0
rectvv 

.vv
 
widthvv 
=vv 
stylevv 
.vv 
CalcSizevv !
(vv! "
newvv" %

GUIContentvv& 0
(vv0 1
urlvv1 4
)vv4 5
)vv5 6
.vv6 7
xvv7 8
;vv8 9
EditorGUIUtilityww 
.ww 
AddCursorRectww $
(ww$ %
rectww% )
,ww) *
MouseCursorww+ 6
.ww6 7
Linkww7 ;
)ww; <
;ww< =
ifyy 
(yy	 

bClickedyy
 
)yy 
Applicationzz 
.zz 
OpenURLzz 
(zz 
urlzz 
)zz  
;zz  !
}{{ 
}|| 
}}} л

жD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\PostProcessors\RiderAssetPostprocessor.cs
	namespace 	
Packages
 
. 
Rider 
. 
Editor 
.  
PostProcessors  .
{ 
internal 

class #
RiderAssetPostprocessor (
:( )
AssetPostprocessor* <
{ 
public 

static 
bool )
OnPreGeneratingCSProjectFiles 4
(4 5
)5 6
{		 
var

 	
path


 
=

 
RiderScriptEditor

 "
.

" #
GetEditorRealPath

# 4
(

4 5

CodeEditor

5 ?
.

? @%
CurrentEditorInstallation

@ Y
)

Y Z
;

Z [
if 
(	 

RiderScriptEditor
 
. 
IsRiderInstallation /
(/ 0
path0 4
)4 5
)5 6
return 
! 
ProjectGeneration !
.! "
ProjectGeneration" 3
.3 4$
isRiderProjectGeneration4 L
;L M
return 
false 
; 
} 
} 
} 