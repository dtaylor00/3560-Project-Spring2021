�g
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\EditorPluginInterop.cs
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
�� 
version
�� 
=
�� #
RiderScriptEditorData
�� +
.
��+ ,
instance
��, 4
.
��4 5
editorBuildNumber
��5 F
;
��F G
if
�� 

(
�� 
version
�� 
!=
�� 
null
�� 
)
�� 
{
�� 	
if
��
 
(
�� 
version
�� 
.
�� 
Major
�� 
<
�� 
$num
�� !
)
��! "-
DisableSyncSolutionOnceCallBack
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 	
else
�� -
DisableSyncSolutionOnceCallBack
�� +
(
��+ ,
)
��, -
;
��- .
var
�� 
type
�� 
=
�� 
assembly
�� 
.
�� 
GetType
�� #
(
��# $
$str
��$ Z
)
��Z [
;
��[ \
if
�� 

(
�� 
type
�� 
==
�� 
null
�� 
)
�� 
type
��
 
=
�� 
assembly
�� 
.
�� 
GetType
�� !
(
��! "
$str
��" W
)
��W X
;
��X Y
RuntimeHelpers
�� 
.
�� !
RunClassConstructor
�� *
(
��* +
type
��+ /
.
��/ 0

TypeHandle
��0 :
)
��: ;
;
��; <
}
�� 
catch
�� 
(
�� )
TypeInitializationException
�� (
ex
��) +
)
��+ ,
{
�� 
Debug
�� 
.
�� 
LogException
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
if
�� 

(
�� 
ex
�� 
.
�� 
InnerException
�� 
!=
��  
null
��! %
)
��% &
Debug
��
 
.
�� 
LogException
�� 
(
�� 
ex
�� 
.
��  
InnerException
��  .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\TestEvent.cs
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
string	| �
parentID
� �
)
� �
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
}%% �T
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\TestsCallback.cs
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
NUnit	   �
.
  � �
	Framework
  � �
.
  � �

Interfaces
  � �
.
  � �

TestStatus
  � �
.
  � �
Passed
  � �
,
  � �
result
  � �
.
  � �
ParentFullName
  � �
)
  � �
)
  � �
;
  � �
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
Name	))} �
,
))� �
ExtractOutput
))� �
(
))� �
result
))� �
)
))� �
,
))� �
(
))� �
result
))� �
.
))� �
EndTime
))� �
-
))� �
result
))� �
.
))� �
	StartTime
))� �
)
))� �
.
))� �
Milliseconds
))� �
,
))� �
ParseTestStatus
))� �
(
))� �
result
))� �
.
))� �

TestStatus
))� �
)
))� �
,
))� �
result
))� �
.
))� �
Test
))� �
.
))� �
ParentFullName
))� �
)
))� �
)
))� �
;
))� �
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
ToString	??} �
(
??� �
)
??� �
)
??� �
;
??� �
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
}^^ �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\GUIDProvider.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderFileSystemWatcher.cs
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
})) �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\LibcNativeInterop.cs
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
} �m
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\SyncTestRunEventsHandler.cs
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
�� %
=
��& '
type
��( ,
.
��, -
	GetMethod
��- 6
(
��6 7
$str
��7 J
,
��J K
BindingFlags
��L X
.
��X Y
Instance
��Y a
|
��b c
BindingFlags
��d p
.
��p q
Public
��q w
)
��w x
;
��x y
if
�� 

(
�� +
m_OnSessionFinishedMethodInfo
�� )
==
��* ,
null
��- 1
)
��1 2
Debug
��
 
.
�� 
LogError
�� 
(
�� 
$"
�� M
?Rider Test Runner: OnSessionFinished method not found in type='
�� Z
{
��Z [
type
��[ _
.
��_ `#
AssemblyQualifiedName
��` u
}
��u v
'
��v w
"
��w x
)
��x y
;
��y z
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogException
�� 
(
�� 
e
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
void
�� 
CleanUp
�� 
(
�� 
)
�� 
{
�� 
	m_Handler
�� 
=
�� 
null
�� 
;
�� *
m_OnSessionStartedMethodInfo
�� "
=
��# $
null
��% )
;
��) *+
m_OnSessionFinishedMethodInfo
�� #
=
��$ %
null
��& *
;
��* +'
m_OnTestStartedMethodInfo
�� 
=
��  !
null
��" &
;
��& '(
m_OnTestFinishedMethodInfo
��  
=
��! "
null
��# '
;
��' (
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\CallbackData.cs
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
}"" ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderScriptEditor.cs
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
�� 
commandlineParser
�� 
=
�� 
new
��  #
CommandLineParser
��$ 5
(
��5 6
args
��6 :
)
��: ;
;
��; <
if
�� 

(
�� 
commandlineParser
�� 
.
�� 
Options
�� %
.
��% &
ContainsKey
��& 1
(
��1 2
$str
��2 >
)
��> ?
)
��? @
{
�� 	
var
��
 
originRiderPath
�� 
=
�� 
commandlineParser
��  1
.
��1 2
Options
��2 9
[
��9 :
$str
��: F
]
��F G
;
��G H
var
��
 
originRealPath
�� 
=
�� 
GetEditorRealPath
�� 0
(
��0 1
originRiderPath
��1 @
)
��@ A
;
��A B
var
��
 
originVersion
�� 
=
�� 
RiderPathLocator
�� .
.
��. /
GetBuildNumber
��/ =
(
��= >
originRealPath
��> L
)
��L M
;
��M N
var
��
 
version
�� 
=
�� 
RiderPathLocator
�� (
.
��( )
GetBuildNumber
��) 7
(
��7 8
path
��8 <
)
��< =
;
��= >
if
��
 
(
�� 
originVersion
�� 
!=
�� 
null
�� #
&&
��$ &
originVersion
��' 4
!=
��5 7
version
��8 ?
)
��? @
{
��
 
Debug
�� 
.
�� 

LogWarning
�� 
(
�� 
$str�� �
)��� �
;��� �
Debug
�� 
.
�� 
Log
�� 
(
�� 
$"
�� )
Unity was started by Rider 
�� 3
{
��3 4
originVersion
��4 A
}
��A B/
!, but external editor is set to: 
��B c
{
��c d
path
��d h
}
��h i
"
��i j
)
��j k
;
��k l
}
��
 
}
�� 	
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogException
�� 
(
�� 
e
�� 
)
�� 
;
�� 
}
�� 
}
�� 
internal
�� 
static
�� 
string
�� 
GetEditorRealPath
�� ,
(
��, -
string
��- 3
path
��4 8
)
��8 9
{
�� 
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
path
�� #
)
��# $
)
��$ %
{
�� 
return
�� 
path
�� 
;
�� 
}
�� 
if
�� 
(
��	 

!
��
 
FileSystemUtil
�� 
.
�� 
EditorPathExists
�� *
(
��* +
path
��+ /
)
��/ 0
)
��0 1
return
�� 
path
�� 
;
�� 
if
�� 
(
��	 


SystemInfo
��
 
.
�� #
operatingSystemFamily
�� *
!=
��+ -#
OperatingSystemFamily
��. C
.
��C D
Windows
��D K
)
��K L
{
�� 
var
�� 
realPath
�� 
=
�� 
FileSystemUtil
�� %
.
��% &
GetFinalPathName
��& 6
(
��6 7
path
��7 ;
)
��; <
;
��< =
if
�� 

(
�� 

SystemInfo
�� 
.
�� #
operatingSystemFamily
�� ,
==
��- /#
OperatingSystemFamily
��0 E
.
��E F
Linux
��F K
)
��K L
{
�� 	
if
��
 
(
�� 
new
�� 
FileInfo
�� 
(
�� 
path
�� 
)
��  
.
��  !
Name
��! %
.
��% &
ToLowerInvariant
��& 6
(
��6 7
)
��7 8
==
��9 ;
$str
��< C
&&
��D F
new
�� 
FileInfo
�� 
(
�� 
realPath
�� #
)
��# $
.
��$ %
Name
��% )
.
��) *
ToLowerInvariant
��* :
(
��: ;
)
��; <
==
��= ?
$str
��@ F
)
��F G
{
��
 
var
�� 
snapInstallPath
�� 
=
��  !
$str
��" D
;
��D E
if
�� 
(
�� 
new
�� 
FileInfo
�� 
(
�� 
snapInstallPath
�� ,
)
��, -
.
��- .
Exists
��. 4
)
��4 5
return
�� 
snapInstallPath
�� $
;
��$ %
}
��
 
}
�� 	
return
�� 
realPath
�� 
;
�� 
}
�� 
return
�� 
path
�� 
;
�� 
}
�� 
public
�� 

RiderScriptEditor
�� 
(
�� 

IDiscovery
�� '
	discovery
��( 1
,
��1 2

IGenerator
��3 =
projectGeneration
��> O
)
��O P
{
�� 
m_Discoverability
�� 
=
�� 
	discovery
�� #
;
��# $!
m_ProjectGeneration
�� 
=
�� 
projectGeneration
�� -
;
��- .
}
�� 
private
�� 
static
�� 
string
�� 
[
�� 
]
�� 
defaultExtensions
�� -
{
�� 
get
�� 	
{
�� 
var
�� 
customExtensions
�� 
=
�� 
new
�� "
[
��" #
]
��# $
{
��% &
$str
��& ,
,
��, -
$str
��. 6
,
��6 7
$str
��8 =
,
��= >
$str
��? E
}
��E F
;
��F G
return
�� 
EditorSettings
�� 
.
�� 0
"projectGenerationBuiltinExtensions
�� @
.
��@ A
Concat
��A G
(
��G H
EditorSettings
��H V
.
��V W-
projectGenerationUserExtensions
��W v
)
��v w
.
��
 
Concat
�� 
(
�� 
customExtensions
�� "
)
��" #
.
��# $
Distinct
��$ ,
(
��, -
)
��- .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 
private
�� 
static
�� 
string
�� 
[
�� 
]
�� 
HandledExtensions
�� -
{
�� 
get
�� 	
{
�� 
return
�� %
HandledExtensionsString
�� &
.
��& '
Split
��' ,
(
��, -
new
��- 0
[
��0 1
]
��1 2
{
��3 4
$char
��4 7
}
��7 8
,
��8 9 
StringSplitOptions
��: L
.
��L M 
RemoveEmptyEntries
��M _
)
��_ `
.
��` a
Select
��a g
(
��g h
s
��h i
=>
��j l
s
��m n
.
��n o
	TrimStart
��o x
(
��x y
$char
��y |
,
��| }
$char��~ �
)��� �
)��� �
.
��
 
ToArray
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
static
�� 
string
�� %
HandledExtensionsString
�� 1
{
�� 
get
�� 	
{
��
 
return
�� 
EditorPrefs
�� 
.
�� 
	GetString
�� (
(
��( )
$str
��) ?
,
��? @
string
��A G
.
��G H
Join
��H L
(
��L M
$str
��M P
,
��P Q
defaultExtensions
��R c
)
��c d
)
��d e
;
��e f
}
��f g
set
�� 	
{
��
 
EditorPrefs
�� 
.
�� 
	SetString
�� !
(
��! "
$str
��" 8
,
��8 9
value
��: ?
)
��? @
;
��@ A
}
��B C
}
�� 
private
�� 
static
�� 
bool
�� 
SupportsExtension
�� )
(
��) *
string
��* 0
path
��1 5
)
��5 6
{
�� 
var
�� 	
	extension
��
 
=
�� 
Path
�� 
.
�� 
GetExtension
�� '
(
��' (
path
��( ,
)
��, -
;
��- .
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
	extension
�� (
)
��( )
)
��) *
return
�� 
false
�� 
;
�� 
return
�� 
	extension
�� 
==
�� 
$str
�� 
||
��  "
HandledExtensions
��# 4
.
��4 5
Contains
��5 =
(
��= >
	extension
��> G
.
��G H
	TrimStart
��H Q
(
��Q R
$char
��R U
)
��U V
)
��V W
;
��W X
}
�� 
public
�� 

void
�� 
OnGUI
�� 
(
�� 
)
�� 
{
�� 
if
�� 
(
��	 
#
RiderScriptEditorData
��
 
.
��  
instance
��  (
.
��( )$
shouldLoadEditorPlugin
��) ?
)
��? @
{
�� %
HandledExtensionsString
�� 
=
��  !
EditorGUILayout
��" 1
.
��1 2
	TextField
��2 ;
(
��; <
new
��< ?

GUIContent
��@ J
(
��J K
$str
��K a
)
��a b
,
��b c%
HandledExtensionsString
��d {
)
��{ |
;
��| }
}
�� 
EditorGUILayout
�� 
.
�� 

LabelField
��  
(
��  !
$str
��! >
)
��> ?
;
��? @
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
Embedded
��+ 3
,
��3 4
$str
��5 H
,
��H I
$str
��J L
)
��L M
;
��M N
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
Local
��+ 0
,
��0 1
$str
��2 B
,
��B C
$str
��D F
)
��F G
;
��G H
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
Registry
��+ 3
,
��3 4
$str
��5 H
,
��H I
$str
��J L
)
��L M
;
��M N
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
Git
��+ .
,
��. /
$str
��0 >
,
��> ?
$str
��@ B
)
��B C
;
��C D
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
BuiltIn
��+ 2
,
��2 3
$str
��4 G
,
��G H
$str
��I K
)
��K L
;
��L M
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
LocalTarBall
��+ 7
,
��7 8
$str
��9 H
,
��H I
$str
��J L
)
��L M
;
��M N
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
Unknown
��+ 2
,
��2 3
$str
��4 S
,
��S T
$str
��U W
)
��W X
;
��X Y
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� *
.
��* +
PlayerAssemblies
��+ ;
,
��; <
$str
��= N
,
��N O
$str��P �
)��� �
;��� �$
RegenerateProjectFiles
�� 
(
�� 
)
�� 
;
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
}
�� 
void
�� $
RegenerateProjectFiles
��	 
(
��  
)
��  !
{
�� 
var
�� 	
rect
��
 
=
�� 
	EditorGUI
�� 
.
�� 
IndentedRect
�� '
(
��' (
EditorGUILayout
��( 7
.
��7 8
GetControlRect
��8 F
(
��F G
new
��G J
GUILayoutOption
��K Z
[
��Z [
]
��[ \
{
��] ^
}
��^ _
)
��_ `
)
��` a
;
��a b
rect
�� 

.
��
 
width
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
��	 

GUI
��
 
.
�� 
Button
�� 
(
�� 
rect
�� 
,
�� 
$str
�� 5
)
��5 6
)
��6 7
{
�� !
m_ProjectGeneration
�� 
.
�� 
Sync
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 
void
�� 
SettingsButton
��	 
(
�� #
ProjectGenerationFlag
�� -

preference
��. 8
,
��8 9
string
��: @

guiMessage
��A K
,
��K L
string
��M S
toolTip
��T [
)
��[ \
{
�� 
var
�� 	
	prevValue
��
 
=
�� !
m_ProjectGeneration
�� )
.
��) *"
AssemblyNameProvider
��* >
.
��> ?#
ProjectGenerationFlag
��? T
.
��T U
HasFlag
��U \
(
��\ ]

preference
��] g
)
��g h
;
��h i
var
�� 	
newValue
��
 
=
�� 
EditorGUILayout
�� $
.
��$ %
Toggle
��% +
(
��+ ,
new
��, /

GUIContent
��0 :
(
��: ;

guiMessage
��; E
,
��E F
toolTip
��G N
)
��N O
,
��O P
	prevValue
��Q Z
)
��Z [
;
��[ \
if
�� 
(
��	 

newValue
��
 
!=
�� 
	prevValue
�� 
)
��  
{
�� !
m_ProjectGeneration
�� 
.
�� "
AssemblyNameProvider
�� 0
.
��0 1%
ToggleProjectGeneration
��1 H
(
��H I

preference
��I S
)
��S T
;
��T U
}
�� 
}
�� 
public
�� 

void
�� 
SyncIfNeeded
�� 
(
�� 
string
�� #
[
��# $
]
��$ %

addedFiles
��& 0
,
��0 1
string
��2 8
[
��8 9
]
��9 :
deletedFiles
��; G
,
��G H
string
��I O
[
��O P
]
��P Q

movedFiles
��R \
,
��\ ]
string
��^ d
[
��d e
]
��e f
movedFromFiles
��g u
,
��u v
string
�� 
[
�� 
]
�� 
importedFiles
�� 
)
�� 
{
�� !
m_ProjectGeneration
�� 
.
�� 
SyncIfNeeded
�� &
(
��& '

addedFiles
��' 1
.
��1 2
Union
��2 7
(
��7 8
deletedFiles
��8 D
)
��D E
.
��E F
Union
��F K
(
��K L

movedFiles
��L V
)
��V W
.
��W X
Union
��X ]
(
��] ^
movedFromFiles
��^ l
)
��l m
,
��m n
importedFiles
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
SyncAll
�� 
(
�� 
)
�� 
{
�� 
AssetDatabase
�� 
.
�� 
Refresh
�� 
(
�� 
)
�� 
;
�� !
m_ProjectGeneration
�� 
.
�� 
SyncIfNeeded
�� &
(
��& '
new
��' *
string
��+ 1
[
��1 2
]
��2 3
{
��4 5
}
��6 7
,
��7 8
new
��9 <
string
��= C
[
��C D
]
��D E
{
��F G
}
��H I
)
��I J
;
��J K
}
�� 
public
�� 

void
�� 

Initialize
�� 
(
�� 
string
�� !$
editorInstallationPath
��" 8
)
��8 9
{
�� #
RiderScriptEditorData
�� 
.
�� 
instance
�� $
.
��$ %

Invalidate
��% /
(
��/ 0$
editorInstallationPath
��0 F
)
��F G
;
��G H!
m_ProjectGeneration
�� 
.
�� 
Sync
�� 
(
�� 
)
��  
;
��  !
}
�� 
public
�� 

bool
�� 
OpenProject
�� 
(
�� 
string
�� "
path
��# '
,
��' (
int
��) ,
line
��- 1
,
��1 2
int
��3 6
column
��7 =
)
��= >
{
�� 
if
�� 
(
��	 

path
��
 
!=
�� 
$str
�� 
&&
�� 
!
�� 
SupportsExtension
�� *
(
��* +
path
��+ /
)
��/ 0
)
��0 1
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
��	 

path
��
 
==
�� 
$str
�� 
&&
�� 

SystemInfo
�� "
.
��" ##
operatingSystemFamily
��# 8
==
��9 ;#
OperatingSystemFamily
��< Q
.
��Q R
MacOSX
��R X
)
��X Y
{
�� 
return
�� 

OpenOSXApp
�� 
(
�� 
path
�� 
,
�� 
line
��  $
,
��$ %
column
��& ,
)
��, -
;
��- .
}
�� 
if
�� 
(
��	 

!
��
 
IsUnityScript
�� 
(
�� 
path
�� 
)
�� 
)
�� 
{
�� !
m_ProjectGeneration
�� 
.
�� 
SyncIfNeeded
�� (
(
��( )
affectedFiles
��) 6
:
��6 7
new
��8 ;
string
��< B
[
��B C
]
��C D
{
��E F
}
��G H
,
��H I
new
��J M
string
��N T
[
��T U
]
��U V
{
��W X
}
��Y Z
)
��Z [
;
��[ \
var
�� 
fastOpenResult
�� 
=
�� !
EditorPluginInterop
�� 0
.
��0 1'
OpenFileDllImplementation
��1 J
(
��J K
path
��K O
,
��O P
line
��Q U
,
��U V
column
��W ]
)
��] ^
;
��^ _
if
�� 

(
�� 
fastOpenResult
�� 
)
�� 
return
��
 
true
�� 
;
�� 
}
�� 
if
�� 
(
��	 


SystemInfo
��
 
.
�� #
operatingSystemFamily
�� *
==
��+ -#
OperatingSystemFamily
��. C
.
��C D
MacOSX
��D J
)
��J K
{
�� 
return
�� 

OpenOSXApp
�� 
(
�� 
path
�� 
,
�� 
line
��  $
,
��$ %
column
��& ,
)
��, -
;
��- .
}
�� 
var
�� 	
solution
��
 
=
�� 
GetSolutionFile
�� $
(
��$ %
path
��% )
)
��) *
;
��* +
solution
�� 
=
�� 
solution
�� 
==
�� 
$str
�� 
?
��  !
$str
��" $
:
��% &
$"
��' )
\"
��) +
{
��+ ,
solution
��, 4
}
��4 5
\"
��5 7
"
��7 8
;
��8 9
var
�� 	
process
��
 
=
�� 
new
�� 
Process
�� 
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
�� (
{
�� 	
FileName
��
 
=
�� 

CodeEditor
�� 
.
��  '
CurrentEditorInstallation
��  9
,
��9 :
	Arguments
��
 
=
�� 
$"
�� 
{
�� 
solution
�� !
}
��! "
 -l 
��" &
{
��& '
line
��' +
}
��+ ,
 \"
��, /
{
��/ 0
path
��0 4
}
��4 5
\"
��5 7
"
��7 8
,
��8 9
UseShellExecute
��
 
=
�� 
true
��  
,
��  !
}
�� 	
}
�� 
;
�� 
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 
private
�� 
bool
�� 

OpenOSXApp
�� 
(
�� 
string
�� "
path
��# '
,
��' (
int
��) ,
line
��- 1
,
��1 2
int
��3 6
column
��7 =
)
��= >
{
�� 
var
�� 	
solution
��
 
=
�� 
GetSolutionFile
�� $
(
��$ %
path
��% )
)
��) *
;
��* +
solution
�� 
=
�� 
solution
�� 
==
�� 
$str
�� 
?
��  !
$str
��" $
:
��% &
$"
��' )
\"
��) +
{
��+ ,
solution
��, 4
}
��4 5
\"
��5 7
"
��7 8
;
��8 9
var
�� 	
pathArguments
��
 
=
�� 
path
�� 
==
�� !
$str
��" $
?
��% &
$str
��' )
:
��* +
$"
��, .
-l 
��. 1
{
��1 2
line
��2 6
}
��6 7
 \"
��7 :
{
��: ;
path
��; ?
}
��? @
\"
��@ B
"
��B C
;
��C D
var
�� 	
process
��
 
=
�� 
new
�� 
Process
�� 
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
�� (
{
�� 	
FileName
��
 
=
�� 
$str
�� 
,
�� 
	Arguments
��
 
=
�� 
$"
�� 
-n -j \"
��  
{
��  !

CodeEditor
��! +
.
��+ ,'
CurrentEditorInstallation
��, E
}
��E F

\" --args 
��F P
{
��P Q
solution
��Q Y
}
��Y Z
{
��[ \
pathArguments
��\ i
}
��i j
"
��j k
,
��k l
CreateNoWindow
��
 
=
�� 
true
�� 
,
��  
UseShellExecute
��
 
=
�� 
true
��  
,
��  !
}
�� 	
}
�� 
;
�� 
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 
private
�� 
string
�� 
GetSolutionFile
�� "
(
��" #
string
��# )
path
��* .
)
��. /
{
�� 
if
�� 
(
��	 

IsUnityScript
��
 
(
�� 
path
�� 
)
�� 
)
�� 
{
�� 
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
�� )
GetBaseUnityDeveloperFolder
�� 7
(
��7 8
)
��8 9
,
��9 :
$str
��; i
)
��i j
;
��j k
}
�� 
var
�� 	
solutionFile
��
 
=
�� !
m_ProjectGeneration
�� ,
.
��, -
SolutionFile
��- 9
(
��9 :
)
��: ;
;
��; <
if
�� 
(
��	 

File
��
 
.
�� 
Exists
�� 
(
�� 
solutionFile
�� "
)
��" #
)
��# $
{
�� 
return
�� 
solutionFile
�� 
;
�� 
}
�� 
return
�� 
$str
�� 
;
�� 
}
�� 
static
�� 

bool
�� 
IsUnityScript
�� 
(
�� 
string
�� $
path
��% )
)
��) *
{
�� 
if
�� 
(
��	 

UnityEditor
��
 
.
�� 
Unsupported
�� !
.
��! "
IsDeveloperBuild
��" 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
var
�� 

baseFolder
�� 
=
�� )
GetBaseUnityDeveloperFolder
�� 4
(
��4 5
)
��5 6
.
��6 7
Replace
��7 >
(
��> ?
$str
��? C
,
��C D
$str
��E H
)
��H I
;
��I J
var
�� 
	lowerPath
�� 
=
�� 
path
�� 
.
�� 
ToLowerInvariant
�� -
(
��- .
)
��. /
.
��/ 0
Replace
��0 7
(
��7 8
$str
��8 <
,
��< =
$str
��> A
)
��A B
;
��B C
if
�� 

(
�� 
	lowerPath
�� 
.
�� 
Contains
�� 
(
�� 
(
��  

baseFolder
��  *
+
��+ ,
$str
��- 7
)
��7 8
.
��8 9
ToLowerInvariant
��9 I
(
��I J
)
��J K
)
��K L
||
��
 
	lowerPath
�� 
.
�� 
Contains
�� 
(
��  
(
��  !

baseFolder
��! +
+
��, -
$str
��. 7
)
��7 8
.
��8 9
ToLowerInvariant
��9 I
(
��I J
)
��J K
)
��K L
)
��L M
{
�� 	
return
��
 
true
�� 
;
�� 
}
�� 	
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
static
�� 

string
�� )
GetBaseUnityDeveloperFolder
�� -
(
��- .
)
��. /
{
�� 
return
�� 
	Directory
�� 
.
�� 
	GetParent
��  
(
��  !
EditorApplication
��! 2
.
��2 3
applicationPath
��3 B
)
��B C
.
��C D
Parent
��D J
.
��J K
Parent
��K Q
.
��Q R
FullName
��R Z
;
��Z [
}
�� 
public
�� 

bool
�� '
TryGetInstallationForPath
�� )
(
��) *
string
��* 0

editorPath
��1 ;
,
��; <
out
��= @

CodeEditor
��A K
.
��K L
Installation
��L X
installation
��Y e
)
��e f
{
�� 
if
�� 
(
��	 

FileSystemUtil
��
 
.
�� 
EditorPathExists
�� )
(
��) *

editorPath
��* 4
)
��4 5
&&
��6 8!
IsRiderInstallation
��9 L
(
��L M

editorPath
��M W
)
��W X
)
��X Y
{
�� 
var
�� 
info
�� 
=
�� 
new
�� 
RiderPathLocator
�� '
.
��' (
	RiderInfo
��( 1
(
��1 2

editorPath
��2 <
,
��< =
false
��> C
)
��C D
;
��D E
installation
�� 
=
�� 
new
�� 

CodeEditor
�� %
.
��% &
Installation
��& 2
{
�� 	
Name
��
 
=
�� 
info
�� 
.
�� 
Presentation
�� "
,
��" #
Path
��
 
=
�� 
info
�� 
.
�� 
Path
�� 
}
�� 	
;
��	 

return
�� 
true
�� 
;
�� 
}
�� 
installation
�� 
=
�� 
default
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
public
�� 

static
�� 
bool
�� !
IsRiderInstallation
�� *
(
��* +
string
��+ 1
path
��2 6
)
��6 7
{
�� 
if
�� 
(
��	 
(
IsAssetImportWorkerProcess
��
 $
(
��$ %
)
��% &
)
��& '
return
�� 
false
�� 
;
�� 
if
�� 
(
��	 

string
��
 
.
�� 
IsNullOrEmpty
�� 
(
�� 
path
�� #
)
��# $
)
��$ %
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 	
fileInfo
��
 
=
�� 
new
�� 
FileInfo
�� !
(
��! "
path
��" &
)
��& '
;
��' (
var
�� 	
filename
��
 
=
�� 
fileInfo
�� 
.
�� 
Name
�� "
.
��" #
ToLowerInvariant
��# 3
(
��3 4
)
��4 5
;
��5 6
return
�� 
filename
�� 
.
�� 

StartsWith
��  
(
��  !
$str
��! (
,
��( )
StringComparison
��* :
.
��: ;
Ordinal
��; B
)
��B C
;
��C D
}
�� 
private
�� 
static
�� 
bool
�� (
IsAssetImportWorkerProcess
�� 2
(
��2 3
)
��3 4
{
�� 
return
�� 
UnityEditor
�� 
.
�� 
AssetDatabase
�� &
.
��& '(
IsAssetImportWorkerProcess
��' A
(
��A B
)
��B C
;
��C D
}
�� 
public
�� 

static
�� 
string
�� 
CurrentEditor
�� &
=>
�� 
EditorPrefs
��	 
.
�� 
	GetString
�� 
(
�� 
$str
�� 3
)
��3 4
;
��4 5
public
�� 


CodeEditor
�� 
.
�� 
Installation
�� "
[
��" #
]
��# $
Installations
��% 2
=>
��3 5
m_Discoverability
��6 G
.
��G H
PathCallback
��H T
(
��T U
)
��U V
;
��V W
private
�� 
void
�� )
CreateSolutionIfDoesntExist
�� ,
(
��, -
)
��- .
{
�� 
if
�� 
(
��	 

!
��
 !
m_ProjectGeneration
�� 
.
�� &
HasSolutionBeenGenerated
�� 7
(
��7 8
)
��8 9
)
��9 :
{
�� !
m_ProjectGeneration
�� 
.
�� 
Sync
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\FileIOProvider.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\SolutionGuidGenerator.cs
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
}   �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IGenerator.cs
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
} �'
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\RiderTestRunner.cs
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
callbacksHandlerDependencies	,,o �
)
,,� �
;
,,� �
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

groupNames	;;{ �
,
;;� �
int
;;� �
?
;;� �
buildTarget
;;� �
)
;;� �
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
}[[ �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderScriptEditorData.cs
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
}## �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\SyncTestRunCallback.cs
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
}!! �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\ProjectGenerationFlag.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\CommandLineParser.cs
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
}$$ �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Properties\AssemblyInfo.cs
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
# $�"
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\RiderInitializer.cs
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
}; <�
�. Unity 2019.2+ loads it directly from Rider installation. To disable this, open Rider's settings, search and uncheck 'Automatically install and update Rider's Unity editor plugin'.	< �
"
� �
)
� �
;
� �
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
}// �'
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\FileSystemUtil.cs
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
}BB �t
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\AssemblyNameProvider.cs
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
$num	 �
)
� �
;
� �
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
ToArray	00 �
(
00� �
)
00� �
,
00� �
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
sourceFiles	??u �
.
??� �
Any
??� �
(
??� �(
shouldFileBePartOfSolution
??� �
)
??� �
)
??� �
)
??� �
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
�� 
PackageSource
�� 
.
�� 
Git
�� 
:
�� 
return
��
 
!
�� #
ProjectGenerationFlag
�� '
.
��' (
HasFlag
��( /
(
��/ 0#
ProjectGenerationFlag
��0 E
.
��E F
Git
��F I
)
��I J
;
��J K
case
�� 
PackageSource
�� 
.
�� 
LocalTarball
�� '
:
��' (
return
��
 
!
�� #
ProjectGenerationFlag
�� '
.
��' (
HasFlag
��( /
(
��/ 0#
ProjectGenerationFlag
��0 E
.
��E F
LocalTarBall
��F R
)
��R S
;
��S T
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
public
�� 

ResponseFileData
�� 
ParseResponseFile
�� -
(
��- .
string
��. 4
responseFilePath
��5 E
,
��E F
string
��G M
projectDirectory
��N ^
,
��^ _
string
��` f
[
��f g
]
��g h)
systemReferenceDirectories��i �
)��� �
{
�� 
return
�� !
CompilationPipeline
��  
.
��  !
ParseResponseFile
��! 2
(
��2 3
responseFilePath
�� 
,
�� 
projectDirectory
�� 
,
�� (
systemReferenceDirectories
�� "
)
�� 
;
�� 
}
�� 
public
�� 

IEnumerable
�� 
<
�� 
string
�� 
>
�� $
GetRoslynAnalyzerPaths
�� 5
(
��5 6
)
��6 7
{
�� 
return
�� 
PluginImporter
�� 
.
�� 
GetAllImporters
�� +
(
��+ ,
)
��, -
.
�� 	
Where
��	 
(
�� 
i
�� 
=>
�� 
!
�� 
i
�� 
.
�� 
isNativePlugin
�� %
&&
��& (
AssetDatabase
��) 6
.
��6 7
	GetLabels
��7 @
(
��@ A
i
��A B
)
��B C
.
��C D
SingleOrDefault
��D S
(
��S T
l
��T U
=>
��V X
l
��Y Z
==
��[ ]
$str
��^ n
)
��n o
!=
��p r
null
��s w
)
��w x
.
�� 	
Select
��	 
(
�� 
i
�� 
=>
�� 
i
�� 
.
�� 
	assetPath
��  
)
��  !
;
��! "
}
�� 
public
�� 

void
�� %
ToggleProjectGeneration
�� '
(
��' (#
ProjectGenerationFlag
��( =

preference
��> H
)
��H I
{
�� 
if
�� 
(
��	 
#
ProjectGenerationFlag
��
 
.
��  
HasFlag
��  '
(
��' (

preference
��( 2
)
��2 3
)
��3 4
{
�� #
ProjectGenerationFlag
�� 
^=
��  

preference
��! +
;
��+ ,
}
�� 
else
�� 

{
�� #
ProjectGenerationFlag
�� 
|=
��  

preference
��! +
;
��+ ,
}
�� 
}
�� 
public
�� 

void
�� (
ResetProjectGenerationFlag
�� *
(
��* +
)
��+ ,
{
�� #
ProjectGenerationFlag
�� 
=
�� #
ProjectGenerationFlag
�� 3
.
��3 4
None
��4 8
;
��8 9
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IFileIO.cs
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
 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Discovery.cs
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
�� 
;
�� 
if
�� 
(
�� 
installInfos
�� 
.
�� 
Any
��  
(
��  !
a
��! "
=>
��# %
a
��& '
.
��' (
Path
��( ,
==
��- /
path
��0 4
)
��4 5
)
��5 6
continue
�� 
;
�� 
installInfos
�� 
.
�� 
Add
�� 
(
�� 
new
��  
	RiderInfo
��! *
(
��* +
path
��+ /
,
��/ 0
false
��1 6
)
��6 7
)
��7 8
;
��8 9
}
��
 
}
�� 	
}
�� 
var
�� 	
snapInstallPath
��
 
=
�� 
$str
�� >
;
��> ?
if
�� 
(
��	 

new
��
 
FileInfo
�� 
(
�� 
snapInstallPath
�� &
)
��& '
.
��' (
Exists
��( .
)
��. /
installInfos
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
	RiderInfo
�� &
(
��& '
snapInstallPath
��' 6
,
��6 7
false
��8 =
)
��= >
)
��> ?
;
��? @
return
�� 
installInfos
�� 
.
�� 
ToArray
�� !
(
��! "
)
��" #
;
��# $
}
�� 
private
�� 
static
�� 
	RiderInfo
�� 
[
�� 
]
�� "
CollectRiderInfosMac
�� 3
(
��3 4
)
��4 5
{
�� 
var
�� 	
installInfos
��
 
=
�� 
new
�� 
List
�� !
<
��! "
	RiderInfo
��" +
>
��+ ,
(
��, -
)
��- .
;
��. /
var
�� 	
folder
��
 
=
�� 
new
�� 
DirectoryInfo
�� $
(
��$ %
$str
��% 4
)
��4 5
;
��5 6
if
�� 
(
��	 

folder
��
 
.
�� 
Exists
�� 
)
�� 
{
�� 
installInfos
�� 
.
�� 
AddRange
�� 
(
�� 
folder
�� $
.
��$ %
GetDirectories
��% 3
(
��3 4
$str
��4 A
)
��A B
.
��
 
Select
�� 
(
�� 
a
�� 
=>
�� 
new
�� 
	RiderInfo
�� $
(
��$ %
a
��% &
.
��& '
FullName
��' /
,
��/ 0
false
��1 6
)
��6 7
)
��7 8
.
��
 
ToList
�� 
(
�� 
)
�� 
)
�� 
;
�� 
}
�� 
var
�� 	"
toolboxRiderRootPath
��
 
=
��  
GetToolboxBaseDir
��! 2
(
��2 3
)
��3 4
;
��4 5
var
�� 	
paths
��
 
=
�� %
CollectPathsFromToolbox
�� )
(
��) *"
toolboxRiderRootPath
��* >
,
��> ?
$str
��@ B
,
��B C
$str
��D P
,
��P Q
true
��R V
)
��V W
.
�� 	
Select
��	 
(
�� 
a
�� 
=>
�� 
new
�� 
	RiderInfo
�� "
(
��" #
a
��# $
,
��$ %
true
��& *
)
��* +
)
��+ ,
;
��, -
installInfos
�� 
.
�� 
AddRange
�� 
(
�� 
paths
�� !
)
��! "
;
��" #
return
�� 
installInfos
�� 
.
�� 
ToArray
�� !
(
��! "
)
��" #
;
��# $
}
�� 
private
�� 
static
�� 
	RiderInfo
�� 
[
�� 
]
�� &
CollectRiderInfosWindows
�� 7
(
��7 8
)
��8 9
{
�� 
var
�� 	
installInfos
��
 
=
�� 
new
�� 
List
�� !
<
��! "
	RiderInfo
��" +
>
��+ ,
(
��, -
)
��- .
;
��. /
var
�� 	"
toolboxRiderRootPath
��
 
=
��  
GetToolboxBaseDir
��! 2
(
��2 3
)
��3 4
;
��4 5
var
�� 	!
installPathsToolbox
��
 
=
�� %
CollectPathsFromToolbox
��  7
(
��7 8"
toolboxRiderRootPath
��8 L
,
��L M
$str
��N S
,
��S T
$str
��U b
,
��b c
false
��d i
)
��i j
.
��j k
ToList
��k q
(
��q r
)
��r s
;
��s t
installInfos
�� 
.
�� 
AddRange
�� 
(
�� !
installPathsToolbox
�� /
.
��/ 0
Select
��0 6
(
��6 7
a
��7 8
=>
��9 ;
new
��< ?
	RiderInfo
��@ I
(
��I J
a
��J K
,
��K L
true
��M Q
)
��Q R
)
��R S
.
��S T
ToList
��T Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
var
�� 	
installPaths
��
 
=
�� 
new
�� 
List
�� !
<
��! "
string
��" (
>
��( )
(
��) *
)
��* +
;
��+ ,
const
�� 
string
�� 
registryKey
�� 
=
��  
$str
��! W
;
��W X&
CollectPathsFromRegistry
�� 
(
�� 
registryKey
�� *
,
��* +
installPaths
��, 8
)
��8 9
;
��9 :
const
�� 
string
�� 
wowRegistryKey
�� !
=
��" #
$str
��$ f
;
��f g&
CollectPathsFromRegistry
�� 
(
�� 
wowRegistryKey
�� -
,
��- .
installPaths
��/ ;
)
��; <
;
��< =
installInfos
�� 
.
�� 
AddRange
�� 
(
�� 
installPaths
�� (
.
��( )
Select
��) /
(
��/ 0
a
��0 1
=>
��2 4
new
��5 8
	RiderInfo
��9 B
(
��B C
a
��C D
,
��D E
false
��F K
)
��K L
)
��L M
.
��M N
ToList
��N T
(
��T U
)
��U V
)
��V W
;
��W X
return
�� 
installInfos
�� 
.
�� 
ToArray
�� !
(
��! "
)
��" #
;
��# $
}
�� 
private
�� 
static
�� 
string
�� 
GetToolboxBaseDir
�� +
(
��+ ,
)
��, -
{
�� 
switch
�� 
(
�� 

SystemInfo
�� 
.
�� #
operatingSystemFamily
�� .
)
��. /
{
�� 
case
�� #
OperatingSystemFamily
�� "
.
��" #
Windows
��# *
:
��* +
{
�� 	
var
��
 
localAppData
�� 
=
�� 
Environment
�� (
.
��( )
GetFolderPath
��) 6
(
��6 7
Environment
��7 B
.
��B C
SpecialFolder
��C P
.
��P Q"
LocalApplicationData
��Q e
)
��e f
;
��f g
return
��
 %
GetToolboxRiderRootPath
�� (
(
��( )
localAppData
��) 5
)
��5 6
;
��6 7
}
�� 	
case
�� #
OperatingSystemFamily
�� "
.
��" #
MacOSX
��# )
:
��) *
{
�� 	
var
��
 
home
�� 
=
�� 
Environment
��  
.
��  !$
GetEnvironmentVariable
��! 7
(
��7 8
$str
��8 >
)
��> ?
;
��? @
if
��
 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� #
(
��# $
home
��$ (
)
��( )
)
��) *
{
��
 
var
�� 
localAppData
�� 
=
�� 
Path
�� #
.
��# $
Combine
��$ +
(
��+ ,
home
��, 0
,
��0 1
$str
��2 P
)
��P Q
;
��Q R
return
�� %
GetToolboxRiderRootPath
�� +
(
��+ ,
localAppData
��, 8
)
��8 9
;
��9 :
}
��
 
break
��
 
;
�� 
}
�� 	
case
�� #
OperatingSystemFamily
�� "
.
��" #
Linux
��# (
:
��( )
{
�� 	
var
��
 
home
�� 
=
�� 
Environment
��  
.
��  !$
GetEnvironmentVariable
��! 7
(
��7 8
$str
��8 >
)
��> ?
;
��? @
if
��
 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� #
(
��# $
home
��$ (
)
��( )
)
��) *
{
��
 
var
�� 
localAppData
�� 
=
�� 
Path
�� #
.
��# $
Combine
��$ +
(
��+ ,
home
��, 0
,
��0 1
$str
��2 A
)
��A B
;
��B C
return
�� %
GetToolboxRiderRootPath
�� *
(
��* +
localAppData
��+ 7
)
��7 8
;
��8 9
}
��
 
break
��
 
;
�� 
}
�� 	
}
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
}
�� 
private
�� 
static
�� 
string
�� %
GetToolboxRiderRootPath
�� 1
(
��1 2
string
��2 8
localAppData
��9 E
)
��E F
{
�� 
var
�� 	
toolboxPath
��
 
=
�� 
Path
�� 
.
�� 
Combine
�� $
(
��$ %
localAppData
��% 1
,
��1 2
$str
��3 G
)
��G H
;
��H I
var
�� 	
settingsJson
��
 
=
�� 
Path
�� 
.
�� 
Combine
�� %
(
��% &
toolboxPath
��& 1
,
��1 2
$str
��3 C
)
��C D
;
��D E
if
�� 
(
��	 

File
��
 
.
�� 
Exists
�� 
(
�� 
settingsJson
�� "
)
��" #
)
��# $
{
�� 
var
�� 
path
�� 
=
�� 
SettingsJson
�� 
.
��  (
GetInstallLocationFromJson
��  :
(
��: ;
File
��; ?
.
��? @
ReadAllText
��@ K
(
��K L
settingsJson
��L X
)
��X Y
)
��Y Z
;
��Z [
if
�� 

(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� !
(
��! "
path
��" &
)
��& '
)
��' (
toolboxPath
��
 
=
�� 
path
�� 
;
�� 
}
�� 
var
�� 	"
toolboxRiderRootPath
��
 
=
��  
Path
��! %
.
��% &
Combine
��& -
(
��- .
toolboxPath
��. 9
,
��9 :
$str
��; H
)
��H I
;
��I J
return
�� "
toolboxRiderRootPath
�� !
;
��! "
}
�� 
internal
�� 
static
�� 
ProductInfo
�� 
GetBuildVersion
��  /
(
��/ 0
string
��0 6
path
��7 ;
)
��; <
{
�� 
var
�� 	
buildTxtFileInfo
��
 
=
�� 
new
��  
FileInfo
��! )
(
��) *
Path
��* .
.
��. /
Combine
��/ 6
(
��6 7
path
��7 ;
,
��; <'
GetRelativePathToBuildTxt
��= V
(
��V W
)
��W X
)
��X Y
)
��Y Z
;
��Z [
var
�� 	
dir
��
 
=
�� 
buildTxtFileInfo
��  
.
��  !
DirectoryName
��! .
;
��. /
if
�� 
(
��	 

!
��
 
	Directory
�� 
.
�� 
Exists
�� 
(
�� 
dir
�� 
)
��  
)
��  !
return
�� 
null
�� 
;
�� 
var
�� 	
buildVersionFile
��
 
=
�� 
new
��  
FileInfo
��! )
(
��) *
Path
��* .
.
��. /
Combine
��/ 6
(
��6 7
dir
��7 :
,
��: ;
$str
��< O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
��	 

!
��
 
buildVersionFile
�� 
.
�� 
Exists
�� "
)
��" #
return
�� 
null
�� 
;
�� 
var
�� 	
json
��
 
=
�� 
File
�� 
.
�� 
ReadAllText
�� !
(
��! "
buildVersionFile
��" 2
.
��2 3
FullName
��3 ;
)
��; <
;
��< =
return
�� 
ProductInfo
�� 
.
�� 
GetProductInfo
�� '
(
��' (
json
��( ,
)
��, -
;
��- .
}
�� 
internal
�� 
static
�� 
Version
�� 
GetBuildNumber
�� *
(
��* +
string
��+ 1
path
��2 6
)
��6 7
{
�� 
var
�� 	
file
��
 
=
�� 
new
�� 
FileInfo
�� 
(
�� 
Path
�� "
.
��" #
Combine
��# *
(
��* +
path
��+ /
,
��/ 0'
GetRelativePathToBuildTxt
��1 J
(
��J K
)
��K L
)
��L M
)
��M N
;
��N O
if
�� 
(
��	 

!
��
 
file
�� 
.
�� 
Exists
�� 
)
�� 
return
�� 
null
�� 
;
�� 
var
�� 	
text
��
 
=
�� 
File
�� 
.
�� 
ReadAllText
�� !
(
��! "
file
��" &
.
��& '
FullName
��' /
)
��/ 0
;
��0 1
if
�� 
(
��	 

text
��
 
.
�� 
Length
�� 
<=
�� 
$num
�� 
)
�� 
return
�� 
null
�� 
;
�� 
var
�� 	
versionText
��
 
=
�� 
text
�� 
.
�� 
	Substring
�� &
(
��& '
$num
��' (
)
��( )
;
��) *
return
�� 
Version
�� 
.
�� 
TryParse
�� 
(
�� 
versionText
�� )
,
��) *
out
��+ .
var
��/ 2
v
��3 4
)
��4 5
?
��6 7
v
��8 9
:
��: ;
null
��< @
;
��@ A
}
�� 
internal
�� 
static
�� 
bool
�� 
GetIsToolbox
�� %
(
��% &
string
��& ,
path
��- 1
)
��1 2
{
�� 
return
�� 
path
�� 
.
�� 

StartsWith
�� 
(
�� 
GetToolboxBaseDir
�� .
(
��. /
)
��/ 0
)
��0 1
;
��1 2
}
�� 
private
�� 
static
�� 
string
�� '
GetRelativePathToBuildTxt
�� 3
(
��3 4
)
��4 5
{
�� 
switch
�� 
(
�� 

SystemInfo
�� 
.
�� #
operatingSystemFamily
�� .
)
��. /
{
�� 
case
�� #
OperatingSystemFamily
�� "
.
��" #
Windows
��# *
:
��* +
case
�� #
OperatingSystemFamily
�� "
.
��" #
Linux
��# (
:
��( )
return
��
 
$str
�� "
;
��" #
case
�� #
OperatingSystemFamily
�� "
.
��" #
MacOSX
��# )
:
��) *
return
��
 
$str
�� /
;
��/ 0
}
�� 
throw
�� 
new
�� 
	Exception
�� 
(
�� 
$str
�� &
)
��& '
;
��' (
}
�� 
private
�� 
static
�� 
void
�� &
CollectPathsFromRegistry
�� 0
(
��0 1
string
��1 7
registryKey
��8 C
,
��C D
List
��E I
<
��I J
string
��J P
>
��P Q
installPaths
��R ^
)
��^ _
{
�� 
using
�� 
(
�� 
var
�� 
key
�� 
=
�� 
Registry
�� 
.
��  
CurrentUser
��  +
.
��+ ,

OpenSubKey
��, 6
(
��6 7
registryKey
��7 B
)
��B C
)
��C D
{
�� &
CollectPathsFromRegistry
��  
(
��  !
installPaths
��! -
,
��- .
key
��/ 2
)
��2 3
;
��3 4
}
�� 
using
�� 
(
�� 
var
�� 
key
�� 
=
�� 
Registry
�� 
.
��  
LocalMachine
��  ,
.
��, -

OpenSubKey
��- 7
(
��7 8
registryKey
��8 C
)
��C D
)
��D E
{
�� &
CollectPathsFromRegistry
��  
(
��  !
installPaths
��! -
,
��- .
key
��/ 2
)
��2 3
;
��3 4
}
�� 
}
�� 
private
�� 
static
�� 
void
�� &
CollectPathsFromRegistry
�� 0
(
��0 1
List
��1 5
<
��5 6
string
��6 <
>
��< =
installPaths
��> J
,
��J K
RegistryKey
��L W
key
��X [
)
��[ \
{
�� 
if
�� 
(
��	 

key
��
 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 

subkeyName
�� 
in
��  
key
��! $
.
��$ %
GetSubKeyNames
��% 3
(
��3 4
)
��4 5
.
��5 6
Where
��6 ;
(
��; <
a
��< =
=>
��> @
a
��A B
.
��B C
Contains
��C K
(
��K L
$str
��L S
)
��S T
)
��T U
)
��U V
{
�� 
using
�� 
(
�� 
var
�� 
subkey
�� 
=
�� 
key
�� 
.
��  

OpenSubKey
��  *
(
��* +

subkeyName
��+ 5
)
��5 6
)
��6 7
{
�� 	
var
��
 
folderObject
�� 
=
�� 
subkey
�� #
?
��# $
.
��$ %
GetValue
��% -
(
��- .
$str
��. ?
)
��? @
;
��@ A
if
��
 
(
�� 
folderObject
�� 
==
�� 
null
�� "
)
��" #
continue
��$ ,
;
��, -
var
��
 
folder
�� 
=
�� 
folderObject
�� #
.
��# $
ToString
��$ ,
(
��, -
)
��- .
;
��. /
var
��
 
possiblePath
�� 
=
�� 
Path
�� !
.
��! "
Combine
��" )
(
��) *
folder
��* 0
,
��0 1
$str
��2 D
)
��D E
;
��E F
if
��
 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
possiblePath
�� &
)
��& '
)
��' (
installPaths
�� 
.
�� 
Add
�� 
(
�� 
possiblePath
�� )
)
��) *
;
��* +
}
�� 	
}
�� 
}
�� 
private
�� 
static
�� 
string
�� 
[
�� 
]
�� %
CollectPathsFromToolbox
�� 3
(
��3 4
string
��4 :"
toolboxRiderRootPath
��; O
,
��O P
string
��Q W
dirName
��X _
,
��_ `
string
��a g
searchPattern
��h u
,
��u v
bool
�� 

isMac
�� 
)
�� 
{
�� 
if
�� 
(
��	 

!
��
 
	Directory
�� 
.
�� 
Exists
�� 
(
�� "
toolboxRiderRootPath
�� 0
)
��0 1
)
��1 2
return
�� 
new
�� 
string
�� 
[
�� 
$num
�� 
]
�� 
;
�� 
var
�� 	
channelDirs
��
 
=
�� 
	Directory
�� !
.
��! "
GetDirectories
��" 0
(
��0 1"
toolboxRiderRootPath
��1 E
)
��E F
;
��F G
var
�� 	
paths
��
 
=
�� 
channelDirs
�� 
.
�� 

SelectMany
�� (
(
��( )

channelDir
��) 3
=>
��4 6
{
�� 	
try
��
 
{
��
 
var
�� 
historyFile
�� 
=
�� 
Path
�� "
.
��" #
Combine
��# *
(
��* +

channelDir
��+ 5
,
��5 6
$str
��7 F
)
��F G
;
��G H
if
�� 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
historyFile
�� '
)
��' (
)
��( )
{
�� 
var
�� 
json
�� 
=
�� 
File
�� 
.
�� 
ReadAllText
�� )
(
��) *
historyFile
��* 5
)
��5 6
;
��6 7
var
�� 
build
�� 
=
�� 
ToolboxHistory
�� (
.
��( )$
GetLatestBuildFromJson
��) ?
(
��? @
json
��@ D
)
��D E
;
��E F
if
�� 
(
�� 
build
�� 
!=
�� 
null
�� 
)
��  
{
�� 
var
�� 
buildDir
�� 
=
�� 
Path
�� #
.
��# $
Combine
��$ +
(
��+ ,

channelDir
��, 6
,
��6 7
build
��8 =
)
��= >
;
��> ?
var
�� 
executablePaths
�� #
=
��$ % 
GetExecutablePaths
��& 8
(
��8 9
dirName
��9 @
,
��@ A
searchPattern
��B O
,
��O P
isMac
��Q V
,
��V W
buildDir
��X `
)
��` a
;
��a b
if
�� 
(
�� 
executablePaths
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
return
�� 
executablePaths
�� (
;
��( )
}
�� 
}
�� 
var
�� 
channelFile
�� 
=
�� 
Path
�� "
.
��" #
Combine
��# *
(
��* +

channelDir
��+ 5
,
��5 6
$str
��7 O
)
��O P
;
��P Q
if
�� 
(
�� 
File
�� 
.
�� 
Exists
�� 
(
�� 
channelFile
�� '
)
��' (
)
��( )
{
�� 
var
�� 
json
�� 
=
�� 
File
�� 
.
�� 
ReadAllText
�� )
(
��) *
channelFile
��* 5
)
��5 6
.
��6 7
Replace
��7 >
(
��> ?
$str
��? S
,
��S T
$str
��U i
)
��i j
;
��j k
var
�� 
build
�� 
=
��  
ToolboxInstallData
�� ,
.
��, -$
GetLatestBuildFromJson
��- C
(
��C D
json
��D H
)
��H I
;
��I J
if
�� 
(
�� 
build
�� 
!=
�� 
null
�� 
)
��  
{
�� 
var
�� 
buildDir
�� 
=
�� 
Path
�� #
.
��# $
Combine
��$ +
(
��+ ,

channelDir
��, 6
,
��6 7
build
��8 =
)
��= >
;
��> ?
var
�� 
executablePaths
�� #
=
��$ % 
GetExecutablePaths
��& 8
(
��8 9
dirName
��9 @
,
��@ A
searchPattern
��B O
,
��O P
isMac
��Q V
,
��V W
buildDir
��X `
)
��` a
;
��a b
if
�� 
(
�� 
executablePaths
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
return
�� 
executablePaths
�� (
;
��( )
}
�� 
}
�� 
return
�� 
	Directory
�� 
.
�� 
GetDirectories
�� +
(
��+ ,

channelDir
��, 6
)
��6 7
.
�� 

SelectMany
�� 
(
�� 
buildDir
�� "
=>
��# % 
GetExecutablePaths
��& 8
(
��8 9
dirName
��9 @
,
��@ A
searchPattern
��B O
,
��O P
isMac
��Q V
,
��V W
buildDir
��X `
)
��` a
)
��a b
;
��b c
}
��
 
catch
��
 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
��
 
Logger
�� 
.
�� 
Warn
�� 
(
�� 
$"
�� +
Failed to get RiderPath from 
�� 7
{
��7 8

channelDir
��8 B
}
��B C
"
��C D
,
��D E
e
��F G
)
��G H
;
��H I
}
��
 
return
��
 
new
�� 
string
�� 
[
�� 
$num
�� 
]
�� 
;
�� 
}
�� 	
)
��	 

.
�� 	
Where
��	 
(
�� 
c
�� 
=>
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
c
��* +
)
��+ ,
)
��, -
.
�� 	
ToArray
��	 
(
�� 
)
�� 
;
�� 
return
�� 
paths
�� 
;
�� 
}
�� 
private
�� 
static
�� 
string
�� 
[
�� 
]
��  
GetExecutablePaths
�� .
(
��. /
string
��/ 5
dirName
��6 =
,
��= >
string
��? E
searchPattern
��F S
,
��S T
bool
��U Y
isMac
��Z _
,
��_ `
string
��a g
buildDir
��h p
)
��p q
{
�� 
var
�� 	
folder
��
 
=
�� 
new
�� 
DirectoryInfo
�� $
(
��$ %
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
buildDir
��2 :
,
��: ;
dirName
��< C
)
��C D
)
��D E
;
��E F
if
�� 
(
��	 

!
��
 
folder
�� 
.
�� 
Exists
�� 
)
�� 
return
�� 
new
�� 
string
�� 
[
�� 
$num
�� 
]
�� 
;
�� 
if
�� 
(
��	 

!
��
 
isMac
�� 
)
�� 
return
�� 
new
�� 
[
�� 
]
�� 
{
�� 
Path
�� 
.
�� 
Combine
�� "
(
��" #
folder
��# )
.
��) *
FullName
��* 2
,
��2 3
searchPattern
��4 A
)
��A B
}
��B C
.
��C D
Where
��D I
(
��I J
File
��J N
.
��N O
Exists
��O U
)
��U V
.
��V W
ToArray
��W ^
(
��^ _
)
��_ `
;
��` a
return
�� 
folder
�� 
.
�� 
GetDirectories
�� "
(
��" #
searchPattern
��# 0
)
��0 1
.
��1 2
Select
��2 8
(
��8 9
f
��9 :
=>
��; =
f
��> ?
.
��? @
FullName
��@ H
)
��H I
.
�� 	
Where
��	 
(
�� 
	Directory
�� 
.
�� 
Exists
�� 
)
��  
.
��  !
ToArray
��! (
(
��( )
)
��) *
;
��* +
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	
SettingsJson
��
 
{
�� 
public
�� 
string
�� 
install_location
�� $
;
��$ %
[
�� 
	CanBeNull
�� 
]
�� 
public
�� 
static
�� 
string
�� (
GetInstallLocationFromJson
�� 5
(
��5 6
string
��6 <
json
��= A
)
��A B
{
�� 
try
�� 
{
�� 	
return
��
 
JsonUtility
�� 
.
�� 
FromJson
�� %
<
��% &
SettingsJson
��& 2
>
��2 3
(
��3 4
json
��4 8
)
��8 9
.
��9 :
install_location
��: J
;
��J K
}
�� 	
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 	
Logger
��
 
.
�� 
Warn
�� 
(
�� 
$"
�� 7
)Failed to get install_location from json 
�� A
{
��A B
json
��B F
}
��F G
"
��G H
)
��H I
;
��I J
}
�� 	
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	
ToolboxHistory
��
 
{
�� 
public
�� 
List
�� 
<
�� 
ItemNode
�� 
>
�� 
history
�� #
;
��# $
[
�� 
	CanBeNull
�� 
]
�� 
public
�� 
static
�� 
string
�� $
GetLatestBuildFromJson
�� 1
(
��1 2
string
��2 8
json
��9 =
)
��= >
{
�� 
try
�� 
{
�� 	
return
��
 
JsonUtility
�� 
.
�� 
FromJson
�� %
<
��% &
ToolboxHistory
��& 4
>
��4 5
(
��5 6
json
��6 :
)
��: ;
.
��; <
history
��< C
.
��C D
LastOrDefault
��D Q
(
��Q R
)
��R S
?
��S T
.
��T U
item
��U Y
.
��Y Z
build
��Z _
;
��_ `
}
�� 	
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 	
Logger
��
 
.
�� 
Warn
�� 
(
�� 
$"
�� 3
%Failed to get latest build from json 
�� =
{
��= >
json
��> B
}
��B C
"
��C D
)
��D E
;
��E F
}
�� 	
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	
ItemNode
��
 
{
�� 
public
�� 
	BuildNode
�� 
item
�� 
;
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	
	BuildNode
��
 
{
�� 
public
�� 
string
�� 
build
�� 
;
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
internal
�� 
class
�� 
ProductInfo
�� 
{
�� 
public
�� 
string
�� 
version
�� 
;
�� 
public
�� 
string
�� 
versionSuffix
�� !
;
��! "
[
�� 
	CanBeNull
�� 
]
�� 
internal
�� 
static
�� 
ProductInfo
�� !
GetProductInfo
��" 0
(
��0 1
string
��1 7
json
��8 <
)
��< =
{
�� 
try
�� 
{
�� 	
var
��
 
productInfo
�� 
=
�� 
JsonUtility
�� '
.
��' (
FromJson
��( 0
<
��0 1
ProductInfo
��1 <
>
��< =
(
��= >
json
��> B
)
��B C
;
��C D
return
��
 
productInfo
�� 
;
�� 
}
�� 	
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 	
Logger
��
 
.
�� 
Warn
�� 
(
�� 
$"
�� .
 Failed to get version from json 
�� 8
{
��8 9
json
��9 =
}
��= >
"
��> ?
)
��? @
;
��@ A
}
�� 	
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	 
ToolboxInstallData
��
 
{
�� 
public
�� 
ActiveApplication
��  
active_application
�� 1
;
��1 2
[
�� 
	CanBeNull
�� 
]
�� 
public
�� 
static
�� 
string
�� $
GetLatestBuildFromJson
�� 1
(
��1 2
string
��2 8
json
��9 =
)
��= >
{
�� 
try
�� 
{
�� 	
var
��
 
toolbox
�� 
=
�� 
JsonUtility
�� #
.
��# $
FromJson
��$ ,
<
��, - 
ToolboxInstallData
��- ?
>
��? @
(
��@ A
json
��A E
)
��E F
;
��F G
var
��
 
builds
�� 
=
�� 
toolbox
�� 
.
��  
active_application
�� 1
.
��1 2
builds
��2 8
;
��8 9
if
��
 
(
�� 
builds
�� 
!=
�� 
null
�� 
&&
�� 
builds
��  &
.
��& '
Any
��' *
(
��* +
)
��+ ,
)
��, -
return
�� 
builds
�� 
.
�� 
First
�� 
(
��  
)
��  !
;
��! "
}
�� 	
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 	
Logger
��
 
.
�� 
Warn
�� 
(
�� 
$"
�� 3
%Failed to get latest build from json 
�� =
{
��= >
json
��> B
}
��B C
"
��C D
)
��D E
;
��E F
}
�� 	
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 
[
�� 
Serializable
�� 
]
�� 
class
�� 	
ActiveApplication
��
 
{
�� 
public
�� 
List
�� 
<
�� 
string
�� 
>
�� 
builds
��  
;
��  !
}
�� 
internal
�� 
struct
�� 
	RiderInfo
�� 
{
�� 
public
�� 
bool
�� 
	IsToolbox
�� 
;
�� 
public
�� 
string
�� 
Presentation
��  
;
��  !
public
�� 
Version
�� 
BuildNumber
��  
;
��  !
public
�� 
ProductInfo
�� 
ProductInfo
�� $
;
��$ %
public
�� 
string
�� 
Path
�� 
;
�� 
public
�� 
	RiderInfo
�� 
(
�� 
string
�� 
path
�� "
,
��" #
bool
��$ (
	isToolbox
��) 2
)
��2 3
{
�� 
if
�� 

(
�� 
path
�� 
==
�� 
RiderScriptEditor
�� %
.
��% &
CurrentEditor
��& 3
)
��3 4
{
�� 	#
RiderScriptEditorData
��
 
.
��  
instance
��  (
.
��( )
Init
��) -
(
��- .
)
��. /
;
��/ 0
BuildNumber
��
 
=
�� #
RiderScriptEditorData
�� -
.
��- .
instance
��. 6
.
��6 7
editorBuildNumber
��7 H
.
��H I
	ToVersion
��I R
(
��R S
)
��S T
;
��T U
ProductInfo
��
 
=
�� #
RiderScriptEditorData
�� -
.
��- .
instance
��. 6
.
��6 7
productInfo
��7 B
;
��B C
}
�� 	
else
�� 
{
�� 	
BuildNumber
��
 
=
�� 
GetBuildNumber
�� &
(
��& '
path
��' +
)
��+ ,
;
��, -
ProductInfo
��
 
=
�� 
GetBuildVersion
�� '
(
��' (
path
��( ,
)
��, -
;
��- .
}
�� 	
Path
�� 
=
�� 
new
�� 
FileInfo
�� 
(
�� 
path
��  
)
��  !
.
��! "
FullName
��" *
;
��* +
var
�� 
presentation
�� 
=
�� 
$"
�� 
Rider 
�� #
{
��# $
BuildNumber
��$ /
}
��/ 0
"
��0 1
;
��1 2
if
�� 

(
�� 
ProductInfo
�� 
!=
�� 
null
�� 
&&
��  "
!
��# $
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9
ProductInfo
��9 D
.
��D E
version
��E L
)
��L M
)
��M N
{
�� 	
var
��
 
suffix
�� 
=
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� +
(
��+ ,
ProductInfo
��, 7
.
��7 8
versionSuffix
��8 E
)
��E F
?
��G H
$str
��I K
:
��L M
$"
��N P
{
��Q R
ProductInfo
��R ]
.
��] ^
versionSuffix
��^ k
}
��k l
"
��l m
;
��m n
presentation
��
 
=
�� 
$"
�� 
Rider 
�� !
{
��! "
ProductInfo
��" -
.
��- .
version
��. 5
}
��5 6
{
��6 7
suffix
��7 =
}
��= >
"
��> ?
;
��? @
}
�� 	
if
�� 

(
�� 
	isToolbox
�� 
)
�� 
presentation
��
 
+=
�� 
$str
�� 0
;
��0 1
Presentation
�� 
=
�� 
presentation
�� #
;
��# $
	IsToolbox
�� 
=
�� 
	isToolbox
�� 
;
�� 
}
�� 
}
�� 
private
�� 
static
�� 
class
�� 
Logger
�� 
{
�� 
internal
�� 
static
�� 
void
�� 
Warn
�� 
(
��  
string
��  &
message
��' .
,
��. /
	Exception
��0 9
e
��: ;
=
��< =
null
��> B
)
��B C
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
message
�� 
)
�� 
;
��  
if
�� 

(
�� 
e
�� 
!=
�� 
null
�� 
)
�� 
Debug
��
 
.
�� 
LogException
�� 
(
�� 
e
�� 
)
�� 
;
��  
}
�� 
}
�� 
}
�� 
}�� �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\UnitTesting\CallbackInitializer.cs
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
;	 �
} 
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\SerializableVersion.cs
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
}33 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IGUIDGenerator.cs
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
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\ProjectGeneration.cs
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
IGUIDGenerator	^^w �
guidGenerator
^^� �
)
^^� �
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
�� "
HasFilesBeenModified
��	 
(
�� 
IEnumerable
�� )
<
��) *
string
��* 0
>
��0 1
affectedFiles
��2 ?
,
��? @
IEnumerable
��A L
<
��L M
string
��M S
>
��S T
reimportedFiles
��U d
)
��d e
{
�� 
return
�� 
affectedFiles
�� 
.
�� 
Any
�� 
(
�� (
ShouldFileBePartOfSolution
�� 9
)
��9 :
||
��; =
reimportedFiles
��> M
.
��M N
Any
��N Q
(
��Q R)
ShouldSyncOnReimportedAsset
��R m
)
��m n
;
��n o
}
�� 
static
�� 

bool
�� )
ShouldSyncOnReimportedAsset
�� +
(
��+ ,
string
��, 2
asset
��3 8
)
��8 9
{
�� 
return
�� &
k_ReimportSyncExtensions
�� %
.
��% &
Contains
��& .
(
��. /
Path
��/ 3
.
��3 4
GetExtension
��4 @
(
��@ A
asset
��A F
)
��F G
)
��G H
||
��I K
Path
��L P
.
��P Q
GetFileName
��Q \
(
��\ ]
asset
��] b
)
��b c
==
��d f
$str
��g p
;
��p q
}
�� 
public
�� 

void
�� 
Sync
�� 
(
�� 
)
�� 
{
�� -
SetupProjectSupportedExtensions
�� %
(
��% &
)
��& '
;
��' (
var
�� 	
types
��
 
=
�� (
GetAssetPostprocessorTypes
�� ,
(
��, -
)
��- .
;
��. /&
isRiderProjectGeneration
�� 
=
��  
true
��! %
;
��% &
bool
�� 
2
$externalCodeAlreadyGeneratedProjects
�� /
=
��0 1+
OnPreGeneratingCSProjectFiles
��2 O
(
��O P
types
��P U
)
��U V
;
��V W&
isRiderProjectGeneration
�� 
=
��  
false
��! &
;
��& '
if
�� 
(
��	 

!
��
 2
$externalCodeAlreadyGeneratedProjects
�� /
)
��/ 0
{
�� 1
#GenerateAndWriteSolutionAndProjects
�� +
(
��+ ,
types
��, 1
)
��1 2
;
��2 3
}
�� '
OnGeneratedCSProjectFiles
�� 
(
��  
types
��  %
)
��% &
;
��& '
}
�� 
public
�� 

bool
�� &
HasSolutionBeenGenerated
�� (
(
��( )
)
��) *
{
�� 
return
�� 
m_FileIOProvider
�� 
.
�� 
Exists
�� $
(
��$ %
SolutionFile
��% 1
(
��1 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
void
�� -
SetupProjectSupportedExtensions
��	 (
(
��( )
)
��) *
{
�� *
m_ProjectSupportedExtensions
�� "
=
��# $$
m_AssemblyNameProvider
��% ;
.
��; <(
ProjectSupportedExtensions
��< V
;
��V W
}
�� 
bool
�� (
ShouldFileBePartOfSolution
��	 #
(
��# $
string
��$ *
file
��+ /
)
��/ 0
{
�� 
if
�� 
(
��	 
$
m_AssemblyNameProvider
��
  
.
��  !'
IsInternalizedPackagePath
��! :
(
��: ;
file
��; ?
)
��? @
)
��@ A
{
�� 
return
��
 
false
�� 
;
�� 
}
�� 
return
�� 
HasValidExtension
�� 
(
�� 
file
�� #
)
��# $
;
��$ %
}
�� 
bool
�� 
HasValidExtension
��	 
(
�� 
string
�� !
file
��" &
)
��& '
{
�� 
string
�� 
	extension
�� 
=
�� 
Path
�� 
.
�� 
GetExtension
�� *
(
��* +
file
��+ /
)
��/ 0
;
��0 1
if
�� 
(
��	 

	extension
��
 
==
�� 
$str
�� 
)
�� 
return
��
 
true
�� 
;
�� 
if
�� 
(
��	 

file
��
 
.
�� 
ToLower
�� 
(
�� 
)
�� 
.
�� 
EndsWith
�� !
(
��! "
$str
��" +
)
��+ ,
)
��, -
return
��
 
true
�� 
;
�� 
return
�� "
IsSupportedExtension
�� !
(
��! "
	extension
��" +
)
��+ ,
;
��, -
}
�� 
bool
�� "
IsSupportedExtension
��	 
(
�� 
string
�� $
	extension
��% .
)
��. /
{
�� 
	extension
�� 
=
�� 
	extension
�� 
.
�� 
	TrimStart
�� %
(
��% &
$char
��& )
)
��) *
;
��* +
return
�� *
k_BuiltinSupportedExtensions
�� )
.
��) *
ContainsKey
��* 5
(
��5 6
	extension
��6 ?
)
��? @
||
��A C*
m_ProjectSupportedExtensions
��D `
.
��` a
Contains
��a i
(
��i j
	extension
��j s
)
��s t
;
��t u
}
�� 
static
�� 

ScriptingLanguage
�� "
ScriptingLanguageFor
�� 1
(
��1 2
Assembly
��2 :
island
��; A
)
��A B
{
�� 
return
�� "
ScriptingLanguageFor
�� !
(
��! "'
GetExtensionOfSourceFiles
��" ;
(
��; <
island
��< B
.
��B C
sourceFiles
��C N
)
��N O
)
��O P
;
��P Q
}
�� 
static
�� 

string
�� '
GetExtensionOfSourceFiles
�� +
(
��+ ,
string
��, 2
[
��2 3
]
��3 4
files
��5 :
)
��: ;
{
�� 
return
�� 
files
�� 
.
�� 
Length
�� 
>
�� 
$num
�� 
?
�� &
GetExtensionOfSourceFile
��  8
(
��8 9
files
��9 >
[
��> ?
$num
��? @
]
��@ A
)
��A B
:
��C D
$str
��E I
;
��I J
}
�� 
static
�� 

string
�� &
GetExtensionOfSourceFile
�� *
(
��* +
string
��+ 1
file
��2 6
)
��6 7
{
�� 
var
�� 	
ext
��
 
=
�� 
Path
�� 
.
�� 
GetExtension
�� !
(
��! "
file
��" &
)
��& '
.
��' (
ToLower
��( /
(
��/ 0
)
��0 1
;
��1 2
ext
�� 	
=
��
 
ext
�� 
.
�� 
	Substring
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
return
�� 
ext
�� 
;
�� 
}
�� 
static
�� 

ScriptingLanguage
�� "
ScriptingLanguageFor
�� 1
(
��1 2
string
��2 8
	extension
��9 B
)
��B C
{
�� 
return
�� *
k_BuiltinSupportedExtensions
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
	extension
��6 ?
.
��? @
	TrimStart
��@ I
(
��I J
$char
��J M
)
��M N
,
��N O
out
��P S
var
��T W
result
��X ^
)
��^ _
?
�� 	
result
��
 
:
�� 	
ScriptingLanguage
��
 
.
�� 
None
��  
;
��  !
}
�� 
public
�� 

void
�� 1
#GenerateAndWriteSolutionAndProjects
�� 3
(
��3 4
Type
��4 8
[
��8 9
]
��9 :
types
��; @
)
��@ A
{
�� 
var
�� 	

assemblies
��
 
=
�� $
m_AssemblyNameProvider
�� -
.
��- .
GetAssemblies
��. ;
(
��; <(
ShouldFileBePartOfSolution
��< V
)
��V W
;
��W X
var
�� 	"
allAssetProjectParts
��
 
=
��  *
GenerateAllAssetProjectParts
��! =
(
��= >
)
��> ?
;
��? @
var
�� 	
monoIslands
��
 
=
�� 

assemblies
�� "
.
��" #
ToList
��# )
(
��) *
)
��* +
;
��+ ,
SyncSolution
�� 
(
�� 
monoIslands
�� 
,
�� 
types
��  %
)
��% &
;
��& '
var
�� 	
allProjectIslands
��
 
=
�� $
RelevantIslandsForMode
�� 4
(
��4 5
monoIslands
��5 @
)
��@ A
.
��A B
ToList
��B H
(
��H I
)
��I J
;
��J K
foreach
�� 
(
�� 
Assembly
�� 
assembly
��  
in
��! #
allProjectIslands
��$ 5
)
��5 6
{
�� 
var
�� 
responseFileData
�� 
=
�� #
ParseResponseFileData
�� 4
(
��4 5
assembly
��5 =
)
��= >
;
��> ?
SyncProject
�� 
(
�� 
assembly
�� 
,
�� "
allAssetProjectParts
�� 2
,
��2 3
responseFileData
��4 D
,
��D E
types
��F K
,
��K L'
GetAllRoslynAnalyzerPaths
��M f
(
��f g
)
��g h
.
��h i
ToArray
��i p
(
��p q
)
��q r
)
��r s
;
��s t
}
�� 
}
�� 
IEnumerable
�� 
<
�� 
ResponseFileData
��  
>
��  !#
ParseResponseFileData
��" 7
(
��7 8
Assembly
��8 @
assembly
��A I
)
��I J
{
�� 
var
�� 	(
systemReferenceDirectories
��
 $
=
��% &!
CompilationPipeline
�� 
.
�� *
GetSystemAssemblyDirectories
�� 8
(
��8 9
assembly
��9 A
.
��A B
compilerOptions
��B Q
.
��Q R#
ApiCompatibilityLevel
��R g
)
��g h
;
��h i

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ResponseFileData
�� )
>
��) *
responseFilesData
��+ <
=
��= >
assembly
��? G
.
��G H
compilerOptions
��H W
.
��W X
ResponseFiles
��X e
.
��e f
ToDictionary
��f r
(
��r s
x
�� 	
=>
��
 
x
�� 
,
�� 
x
�� 
=>
�� $
m_AssemblyNameProvider
�� +
.
��+ ,
ParseResponseFile
��, =
(
��= >
x
��
 
,
�� 
ProjectDirectory
��
 
,
�� (
systemReferenceDirectories
��
 $
)
�� 	
)
��	 

;
��
 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ResponseFileData
�� )
>
��) *%
responseFilesWithErrors
��+ B
=
��C D
responseFilesData
��E V
.
��V W
Where
��W \
(
��\ ]
x
��] ^
=>
��_ a
x
��b c
.
��c d
Value
��d i
.
��i j
Errors
��j p
.
��p q
Any
��q t
(
��t u
)
��u v
)
��v w
.
�� 	
ToDictionary
��	 
(
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Key
��  
,
��  !
x
��" #
=>
��$ &
x
��' (
.
��( )
Value
��) .
)
��. /
;
��/ 0
if
�� 
(
��	 
%
responseFilesWithErrors
��
 !
.
��! "
Any
��" %
(
��% &
)
��& '
)
��' (
{
�� 
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� %
responseFilesWithErrors
�� 5
)
��5 6
foreach
�� 
(
�� 
var
�� 

valueError
�� 
in
��  "
error
��# (
.
��( )
Value
��) .
.
��. /
Errors
��/ 5
)
��5 6
{
�� 	
Debug
��
 
.
�� 
LogError
�� 
(
�� 
$"
�� 
{
�� 
error
�� !
.
��! "
Key
��" %
}
��% &
 Parse Error : 
��& 5
{
��5 6

valueError
��6 @
}
��@ A
"
��A B
)
��B C
;
��C D
}
�� 	
}
�� 
return
�� 
responseFilesData
�� 
.
�� 
Select
�� %
(
��% &
x
��& '
=>
��( *
x
��+ ,
.
��, -
Value
��- 2
)
��2 3
;
��3 4
}
�� 
private
�� 
IEnumerable
�� 
<
�� 
string
�� 
>
�� '
GetAllRoslynAnalyzerPaths
��  9
(
��9 :
)
��: ;
{
�� 
return
�� $
m_AssemblyNameProvider
�� #
.
��# $$
GetRoslynAnalyzerPaths
��$ :
(
��: ;
)
��; <
;
��< =
}
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� 
>
�� *
GenerateAllAssetProjectParts
�� ;
(
��; <
)
��< =
{
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
StringBuilder
�� &
>
��& '
stringBuilders
��( 6
=
��7 8
new
��9 <

Dictionary
��= G
<
��G H
string
��H N
,
��N O
StringBuilder
��P ]
>
��] ^
(
��^ _
)
��_ `
;
��` a
foreach
�� 
(
�� 
string
�� 
asset
�� 
in
�� $
m_AssemblyNameProvider
�� 5
.
��5 6
GetAllAssetPaths
��6 F
(
��F G
)
��G H
)
��H I
{
�� 
if
�� 

(
�� $
m_AssemblyNameProvider
�� "
.
��" #'
IsInternalizedPackagePath
��# <
(
��< =
asset
��= B
)
��B C
)
��C D
{
�� 	
continue
��
 
;
�� 
}
�� 	
string
�� 
	extension
�� 
=
�� 
Path
�� 
.
��  
GetExtension
��  ,
(
��, -
asset
��- 2
)
��2 3
;
��3 4
if
�� 

(
�� "
IsSupportedExtension
��  
(
��  !
	extension
��! *
)
��* +
&&
��, .
ScriptingLanguage
��/ @
.
��@ A
None
��A E
==
��F H"
ScriptingLanguageFor
��I ]
(
��] ^
	extension
��^ g
)
��g h
)
��h i
{
�� 	
var
��
 
assemblyName
�� 
=
�� $
m_AssemblyNameProvider
�� 3
.
��3 4+
GetAssemblyNameFromScriptPath
��4 Q
(
��Q R
asset
��R W
+
��X Y
$str
��Z _
)
��_ `
;
��` a
if
��
 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� "
(
��" #
assemblyName
��# /
)
��/ 0
)
��0 1
{
��
 
continue
�� 
;
�� 
}
��
 
assemblyName
��
 
=
�� 
FileSystemUtil
�� '
.
��' (&
FileNameWithoutExtension
��( @
(
��@ A
assemblyName
��A M
)
��M N
;
��N O
if
��
 
(
�� 
!
�� 
stringBuilders
�� 
.
�� 
TryGetValue
�� )
(
��) *
assemblyName
��* 6
,
��6 7
out
��8 ;
var
��< ?
projectBuilder
��@ N
)
��N O
)
��O P
{
��
 
projectBuilder
�� 
=
�� 
new
��  
StringBuilder
��! .
(
��. /
)
��/ 0
;
��0 1
stringBuilders
�� 
[
�� 
assemblyName
�� '
]
��' (
=
��) *
projectBuilder
��+ 9
;
��9 :
}
��
 
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  7
)
��7 8
.
��8 9
Append
��9 ?
(
��? @$
EscapedRelativePathFor
��@ V
(
��V W
asset
��W \
)
��\ ]
)
��] ^
.
��^ _
Append
��_ e
(
��e f
$str
��f m
)
��m n
.
�� 
Append
�� 
(
�� 
Environment
�� 
.
��  
NewLine
��  '
)
��' (
;
��( )
}
�� 	
}
�� 
var
�� 	
result
��
 
=
�� 
new
�� 

Dictionary
�� !
<
��! "
string
��" (
,
��( )
string
��* 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
foreach
�� 
(
�� 
var
�� 
entry
�� 
in
�� 
stringBuilders
�� *
)
��* +
result
�� 
[
�� 
entry
�� 
.
�� 
Key
�� 
]
�� 
=
�� 
entry
�� !
.
��! "
Value
��" '
.
��' (
ToString
��( 0
(
��0 1
)
��1 2
;
��2 3
return
�� 
result
�� 
;
�� 
}
�� 
void
�� 
SyncProject
��	 
(
�� 
Assembly
�� 
island
�� 
,
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� 
>
��  #
allAssetsProjectParts
��! 6
,
��6 7
IEnumerable
�� 
<
�� 
ResponseFileData
�� "
>
��" #
responseFilesData
��$ 5
,
��5 6
Type
�� 

[
��
 
]
�� 
types
�� 
,
�� 
string
�� 
[
�� 
]
�� $
roslynAnalyzerDllPaths
�� %
)
��% &
{
�� )
SyncProjectFileIfNotChanged
�� !
(
��! "
ProjectFile
�� 
(
�� 
island
�� 
)
�� 
,
�� 
ProjectText
�� 
(
�� 
island
�� 
,
�� #
allAssetsProjectParts
�� 1
,
��1 2
responseFilesData
��3 D
.
��D E
ToList
��E K
(
��K L
)
��L M
,
��M N$
roslynAnalyzerDllPaths
��O e
)
��e f
,
��f g
types
�� 
)
�� 
;
�� 
}
�� 
void
�� )
SyncProjectFileIfNotChanged
��	 $
(
��$ %
string
��% +
path
��, 0
,
��0 1
string
��2 8
newContents
��9 D
,
��D E
Type
��F J
[
��J K
]
��K L
types
��M R
)
��R S
{
�� 
if
�� 
(
��	 

Path
��
 
.
�� 
GetExtension
�� 
(
�� 
path
��  
)
��  !
==
��" $
$str
��% .
)
��. /
{
�� 
newContents
�� 
=
�� "
OnGeneratedCSProject
�� *
(
��* +
path
��+ /
,
��/ 0
newContents
��1 <
,
��< =
types
��> C
)
��C D
;
��D E
}
�� "
SyncFileIfNotChanged
�� 
(
�� 
path
�� 
,
��  
newContents
��! ,
)
��, -
;
��- .
}
�� 
void
�� *
SyncSolutionFileIfNotChanged
��	 %
(
��% &
string
��& ,
path
��- 1
,
��1 2
string
��3 9
newContents
��: E
,
��E F
Type
��G K
[
��K L
]
��L M
types
��N S
)
��S T
{
�� 
newContents
�� 
=
�� $
OnGeneratedSlnSolution
�� *
(
��* +
path
��+ /
,
��/ 0
newContents
��1 <
,
��< =
types
��> C
)
��C D
;
��D E"
SyncFileIfNotChanged
�� 
(
�� 
path
�� 
,
��  
newContents
��! ,
)
��, -
;
��- .
}
�� 
static
�� 

List
�� 
<
�� 
Type
�� 
>
�� 
SafeGetTypes
�� "
(
��" #
System
��# )
.
��) *

Reflection
��* 4
.
��4 5
Assembly
��5 =
a
��> ?
)
��? @
{
�� 
List
�� 

<
��
 
Type
�� 
>
�� 
ret
�� 
;
�� 
try
�� 	
{
�� 
ret
�� 
=
�� 
a
�� 
.
�� 
GetTypes
�� 
(
�� 
)
�� 
.
�� 
ToList
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 

Reflection
�� 
.
�� )
ReflectionTypeLoadException
�� :
rtl
��; >
)
��> ?
{
�� 
ret
�� 
=
�� 
rtl
�� 
.
�� 
Types
�� 
.
�� 
ToList
�� 
(
�� 
)
��  
;
��  !
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 
new
�� 
List
�� 
<
�� 
Type
�� 
>
�� 
(
�� 
)
�� 
;
��  
}
�� 
return
�� 
ret
�� 
.
�� 
Where
�� 
(
�� 
r
�� 
=>
�� 
r
�� 
!=
��  
null
��! %
)
��% &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
}
�� 
static
�� 

void
�� '
OnGeneratedCSProjectFiles
�� )
(
��) *
Type
��* .
[
��. /
]
��/ 0
types
��1 6
)
��6 7
{
�� 
var
�� 	
args
��
 
=
�� 
new
�� 
object
�� 
[
�� 
$num
�� 
]
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
type
�� 
in
�� 
types
��  
)
��  !
{
�� 
var
�� 
method
�� 
=
�� 
type
�� 
.
�� 
	GetMethod
�� #
(
��# $
$str
��$ ?
,
��? @
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Public
��) /
|
��0 1
System
��2 8
.
��8 9

Reflection
��9 C
.
��C D
BindingFlags
��D P
.
��P Q
	NonPublic
��Q Z
|
��[ \
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Static
��) /
)
��/ 0
;
��0 1
if
�� 

(
�� 
method
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
continue
��
 
;
�� 
}
�� 	
method
�� 
.
�� 
Invoke
�� 
(
�� 
null
�� 
,
�� 
args
��  
)
��  !
;
��! "
}
�� 
}
�� 
public
�� 

static
�� 
Type
�� 
[
�� 
]
�� (
GetAssetPostprocessorTypes
�� 3
(
��3 4
)
��4 5
{
�� 
return
�� 
	TypeCache
�� 
.
�� !
GetTypesDerivedFrom
�� *
<
��* + 
AssetPostprocessor
��+ =
>
��= >
(
��> ?
)
��? @
.
��@ A
ToArray
��A H
(
��H I
)
��I J
;
��J K
}
�� 
static
�� 

bool
�� +
OnPreGeneratingCSProjectFiles
�� -
(
��- .
Type
��. 2
[
��2 3
]
��3 4
types
��5 :
)
��: ;
{
�� 
bool
�� 

result
�� 
=
�� 
false
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
type
�� 
in
�� 
types
��  
)
��  !
{
�� 
var
�� 
args
�� 
=
�� 
new
�� 
object
�� 
[
�� 
$num
�� 
]
��  
;
��  !
var
�� 
method
�� 
=
�� 
type
�� 
.
�� 
	GetMethod
�� #
(
��# $
$str
��$ C
,
��C D
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Public
��) /
|
��0 1
System
��2 8
.
��8 9

Reflection
��9 C
.
��C D
BindingFlags
��D P
.
��P Q
	NonPublic
��Q Z
|
��[ \
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Static
��) /
)
��/ 0
;
��0 1
if
�� 

(
�� 
method
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
continue
��
 
;
�� 
}
�� 	
var
�� 
returnValue
�� 
=
�� 
method
��  
.
��  !
Invoke
��! '
(
��' (
null
��( ,
,
��, -
args
��. 2
)
��2 3
;
��3 4
if
�� 

(
�� 
method
�� 
.
�� 

ReturnType
�� 
==
��  
typeof
��! '
(
��' (
bool
��( ,
)
��, -
)
��- .
{
�� 	
result
��
 
|=
�� 
(
�� 
bool
�� 
)
�� 
returnValue
�� %
;
��% &
}
�� 	
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 
static
�� 

string
�� "
OnGeneratedCSProject
�� &
(
��& '
string
��' -
path
��. 2
,
��2 3
string
��4 :
content
��; B
,
��B C
Type
��D H
[
��H I
]
��I J
types
��K P
)
��P Q
{
�� 
foreach
�� 
(
�� 
var
�� 
type
�� 
in
�� 
types
��  
)
��  !
{
�� 
var
�� 
args
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
path
�� 
,
��  
content
��! (
}
��) *
;
��* +
var
�� 
method
�� 
=
�� 
type
�� 
.
�� 
	GetMethod
�� #
(
��# $
$str
��$ :
,
��: ;
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Public
��) /
|
��0 1
System
��2 8
.
��8 9

Reflection
��9 C
.
��C D
BindingFlags
��D P
.
��P Q
	NonPublic
��Q Z
|
��[ \
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Static
��) /
)
��/ 0
;
��0 1
if
�� 

(
�� 
method
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
continue
��
 
;
�� 
}
�� 	
var
�� 
returnValue
�� 
=
�� 
method
��  
.
��  !
Invoke
��! '
(
��' (
null
��( ,
,
��, -
args
��. 2
)
��2 3
;
��3 4
if
�� 

(
�� 
method
�� 
.
�� 

ReturnType
�� 
==
��  
typeof
��! '
(
��' (
string
��( .
)
��. /
)
��/ 0
{
�� 	
content
��
 
=
�� 
(
�� 
string
�� 
)
�� 
returnValue
�� '
;
��' (
}
�� 	
}
�� 
return
�� 
content
�� 
;
�� 
}
�� 
static
�� 

string
�� $
OnGeneratedSlnSolution
�� (
(
��( )
string
��) /
path
��0 4
,
��4 5
string
��6 <
content
��= D
,
��D E
Type
��F J
[
��J K
]
��K L
types
��M R
)
��R S
{
�� 
foreach
�� 
(
�� 
var
�� 
type
�� 
in
�� 
types
��  
)
��  !
{
�� 
var
�� 
args
�� 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
path
�� 
,
��  
content
��! (
}
��) *
;
��* +
var
�� 
method
�� 
=
�� 
type
�� 
.
�� 
	GetMethod
�� #
(
��# $
$str
��$ <
,
��< =
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Public
��) /
|
��0 1
System
��2 8
.
��8 9

Reflection
��9 C
.
��C D
BindingFlags
��D P
.
��P Q
	NonPublic
��Q Z
|
��[ \
System
��
 
.
�� 

Reflection
�� 
.
�� 
BindingFlags
�� (
.
��( )
Static
��) /
)
��/ 0
;
��0 1
if
�� 

(
�� 
method
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
continue
��
 
;
�� 
}
�� 	
var
�� 
returnValue
�� 
=
�� 
method
��  
.
��  !
Invoke
��! '
(
��' (
null
��( ,
,
��, -
args
��. 2
)
��2 3
;
��3 4
if
�� 

(
�� 
method
�� 
.
�� 

ReturnType
�� 
==
��  
typeof
��! '
(
��' (
string
��( .
)
��. /
)
��/ 0
{
�� 	
content
��
 
=
�� 
(
�� 
string
�� 
)
�� 
returnValue
�� '
;
��' (
}
�� 	
}
�� 
return
�� 
content
�� 
;
�� 
}
�� 
void
�� "
SyncFileIfNotChanged
��	 
(
�� 
string
�� $
filename
��% -
,
��- .
string
��/ 5
newContents
��6 A
)
��A B
{
�� 
try
�� 	
{
�� 
if
�� 

(
�� 
m_FileIOProvider
�� 
.
�� 
Exists
�� #
(
��# $
filename
��$ ,
)
��, -
&&
��. 0
newContents
��1 <
==
��= ?
m_FileIOProvider
��@ P
.
��P Q
ReadAllText
��Q \
(
��\ ]
filename
��] e
)
��e f
)
��f g
{
�� 	
return
��
 
;
�� 
}
�� 	
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
��  
)
��  !
{
�� 
Debug
�� 
.
�� 
LogException
�� 
(
�� 
	exception
�� $
)
��$ %
;
��% &
}
�� 
m_FileIOProvider
�� 
.
�� 
WriteAllText
�� #
(
��# $
filename
��$ ,
,
��, -
newContents
��. 9
)
��9 :
;
��: ;
}
�� 
string
�� 

ProjectText
�� 
(
�� 
Assembly
�� 
assembly
��  (
,
��( )

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� 
>
��  #
allAssetsProjectParts
��! 6
,
��6 7
List
�� 

<
��
 
ResponseFileData
�� 
>
�� 
responseFilesData
�� .
,
��. /
string
�� 
[
�� 
]
�� $
roslynAnalyzerDllPaths
�� %
)
��% &
{
�� 
var
�� 	
projectBuilder
��
 
=
�� 
new
�� 
StringBuilder
�� ,
(
��, -
ProjectHeader
��- :
(
��: ;
assembly
��; C
,
��C D
responseFilesData
��E V
,
��V W$
roslynAnalyzerDllPaths
��X n
)
��n o
)
��o p
;
��p q
var
�� 	

references
��
 
=
�� 
new
�� 
List
�� 
<
��  
string
��  &
>
��& '
(
��' (
)
��( )
;
��) *
foreach
�� 
(
�� 
string
�� 
file
�� 
in
�� 
assembly
�� &
.
��& '
sourceFiles
��' 2
)
��2 3
{
�� 
if
�� 

(
�� 
!
�� 
HasValidExtension
�� 
(
�� 
file
�� #
)
��# $
)
��$ %
continue
��
 
;
�� 
var
�� 
	extension
�� 
=
�� 
Path
�� 
.
�� 
GetExtension
�� )
(
��) *
file
��* .
)
��. /
.
��/ 0
ToLower
��0 7
(
��7 8
)
��8 9
;
��9 :
var
�� 
fullFile
�� 
=
�� $
EscapedRelativePathFor
�� -
(
��- .
file
��. 2
)
��2 3
;
��3 4
if
�� 

(
�� 
$str
�� 
!=
�� 
	extension
�� 
)
��  
{
�� 	
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  :
)
��: ;
.
��; <
Append
��< B
(
��B C
fullFile
��C K
)
��K L
.
��L M
Append
��M S
(
��S T
$str
��T [
)
��[ \
.
��\ ]
Append
��] c
(
��c d
Environment
��d o
.
��o p
NewLine
��p w
)
��w x
;
��x y
}
�� 	
else
�� 
{
�� 	

references
��
 
.
�� 
Add
�� 
(
�� 
fullFile
�� !
)
��! "
;
��" #
}
�� 	
}
�� 
if
�� 
(
��	 
#
allAssetsProjectParts
��
 
.
��  
TryGetValue
��  +
(
��+ ,
assembly
��, 4
.
��4 5
name
��5 9
,
��9 :
out
��; >
var
��? B(
additionalAssetsForProject
��C ]
)
��] ^
)
��^ _
projectBuilder
�� 
.
�� 
Append
�� 
(
�� (
additionalAssetsForProject
�� 8
)
��8 9
;
��9 :
var
�� 	
responseRefs
��
 
=
�� 
responseFilesData
�� *
.
��* +

SelectMany
��+ 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< = 
FullPathReferences
��= O
.
��O P
Select
��P V
(
��V W
r
��W X
=>
��Y [
r
��\ ]
)
��] ^
)
��^ _
;
��_ `
var
�� 	(
internalAssemblyReferences
��
 $
=
��% &
assembly
��' /
.
��/ 0 
assemblyReferences
��0 B
.
�� 	
Where
��	 
(
�� 
i
�� 
=>
�� 
!
�� 
i
�� 
.
�� 
sourceFiles
�� "
.
��" #
Any
��# &
(
��& '(
ShouldFileBePartOfSolution
��' A
)
��A B
)
��B C
.
��C D
Select
��D J
(
��J K
i
��K L
=>
��M O
i
��P Q
.
��Q R

outputPath
��R \
)
��\ ]
;
��] ^
var
�� 	
allReferences
��
 
=
�� 
assembly
�� 
.
�� (
compiledAssemblyReferences
�� +
.
��
 
Union
�� 
(
�� 
responseRefs
�� 
)
�� 
.
��
 
Union
�� 
(
�� 

references
�� 
)
�� 
.
��
 
Union
�� 
(
�� (
internalAssemblyReferences
�� +
)
��+ ,
.
��
 
Except
�� 
(
�� $
roslynAnalyzerDllPaths
�� (
)
��( )
;
��) *
foreach
�� 
(
�� 
var
�� 
	reference
�� 
in
�� 
allReferences
��  -
)
��- .
{
�� 
string
�� 
fullReference
�� 
=
�� 
Path
�� #
.
��# $
IsPathRooted
��$ 0
(
��0 1
	reference
��1 :
)
��: ;
?
��< =
	reference
��> G
:
��H I
Path
��J N
.
��N O
Combine
��O V
(
��V W
ProjectDirectory
��W g
,
��g h
	reference
��i r
)
��r s
;
��s t
AppendReference
�� 
(
�� 
fullReference
�� %
,
��% &
projectBuilder
��' 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
��	 

$num
��
 
<
�� 
assembly
�� 
.
��  
assemblyReferences
�� )
.
��) *
Length
��* 0
)
��0 1
{
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� .
)
��. /
.
��/ 0
Append
��0 6
(
��6 7
Environment
��7 B
.
��B C
NewLine
��C J
)
��J K
;
��K L
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� -
)
��- .
.
��. /
Append
��/ 5
(
��5 6
Environment
��6 A
.
��A B
NewLine
��B I
)
��I J
;
��J K
foreach
�� 
(
�� 
Assembly
�� 
	reference
�� #
in
��$ &
assembly
��' /
.
��/ 0 
assemblyReferences
��0 B
.
��B C
Where
��C H
(
��H I
i
��I J
=>
��K M
i
��N O
.
��O P
sourceFiles
��P [
.
��[ \
Any
��\ _
(
��_ `(
ShouldFileBePartOfSolution
��` z
)
��z {
)
��{ |
)
��| }
{
�� 	
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  B
)
��B C
.
��C D
Append
��D J
(
��J K
	reference
��K T
.
��T U
name
��U Y
)
��Y Z
.
��Z [
Append
��[ a
(
��a b!
GetProjectExtension
��b u
(
��u v
)
��v w
)
��w x
.
��x y
Append
��y 
(�� �
$str��� �
)��� �
.��� �
Append��� �
(��� �
Environment��� �
.��� �
NewLine��� �
)��� �
;��� �
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  2
)
��2 3
.
��3 4
Append
��4 :
(
��: ;
ProjectGuid
��; F
(
��F G
	reference
��G P
)
��P Q
)
��Q R
.
��R S
Append
��S Y
(
��Y Z
$str
��Z g
)
��g h
.
��h i
Append
��i o
(
��o p
Environment
��p {
.
��{ |
NewLine��| �
)��� �
;��� �
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  .
)
��. /
.
��/ 0
Append
��0 6
(
��6 7
	reference
��7 @
.
��@ A
name
��A E
)
��E F
.
��F G
Append
��G M
(
��M N
$str
��N W
)
��W X
.
��X Y
Append
��Y _
(
��_ `
Environment
��` k
.
��k l
NewLine
��l s
)
��s t
;
��t u
projectBuilder
��
 
.
�� 
Append
�� 
(
��  
$str
��  9
)
��9 :
.
��: ;
Append
��; A
(
��A B
Environment
��B M
.
��M N
NewLine
��N U
)
��U V
;
��V W
}
�� 	
}
�� 
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
ProjectFooter
�� )
(
��) *
)
��* +
)
��+ ,
;
��, -
return
�� 
projectBuilder
�� 
.
�� 
ToString
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
static
�� 

void
�� 
AppendReference
�� 
(
��  
string
��  &
fullReference
��' 4
,
��4 5
StringBuilder
��6 C
projectBuilder
��D R
)
��R S
{
�� 
var
�� 	
escapedFullPath
��
 
=
�� 
SecurityElement
�� +
.
��+ ,
Escape
��, 2
(
��2 3
fullReference
��3 @
)
��@ A
;
��A B
escapedFullPath
�� 
=
�� 
escapedFullPath
�� '
.
��' (
Replace
��( /
(
��/ 0
$str
��0 6
,
��6 7
$str
��8 ;
)
��; <
.
��< =
Replace
��= D
(
��D E
$str
��E I
,
��I J
$str
��K N
)
��N O
;
��O P
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 4
)
��4 5
.
��5 6
Append
��6 <
(
��< =
FileSystemUtil
��= K
.
��K L&
FileNameWithoutExtension
��L d
(
��d e
escapedFullPath
��e t
)
��t u
)
��u v
.
�� 	
Append
��	 
(
�� 
$str
�� 
)
�� 
.
�� 
Append
�� 
(
�� 
Environment
�� )
.
��) *
NewLine
��* 1
)
��1 2
;
��2 3
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� )
)
��) *
.
��* +
Append
��+ 1
(
��1 2
escapedFullPath
��2 A
)
��A B
.
��B C
Append
��C I
(
��I J
$str
��J W
)
��W X
.
��X Y
Append
��Y _
(
��_ `
Environment
��` k
.
��k l
NewLine
��l s
)
��s t
;
��t u
projectBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� +
)
��+ ,
.
��, -
Append
��- 3
(
��3 4
Environment
��4 ?
.
��? @
NewLine
��@ G
)
��G H
;
��H I
}
�� 
public
�� 

string
�� 
ProjectFile
�� 
(
�� 
Assembly
�� &
assembly
��' /
)
��/ 0
{
�� 
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
�� 
ProjectDirectory
�� *
,
��* +
$"
��, .
{
��. /$
m_AssemblyNameProvider
��/ E
.
��E F
GetProjectName
��F T
(
��T U
assembly
��U ]
.
��] ^

outputPath
��^ h
,
��h i
assembly
��j r
.
��r s
name
��s w
)
��w x
}
��x y
.csproj��y �
"��� �
)��� �
;��� �
}
�� 
public
�� 

string
�� 
SolutionFile
�� 
(
�� 
)
��  
{
�� 
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
�� 
ProjectDirectory
�� *
,
��* +
$"
��, .
{
��. /
m_ProjectName
��/ <
}
��< =
.sln
��= A
"
��A B
)
��B C
;
��C D
}
�� 
string
�� 

ProjectHeader
�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 
List
�� 

<
��
 
ResponseFileData
�� 
>
�� 
responseFilesData
�� .
,
��. /
string
�� 
[
�� 
]
�� $
roslynAnalyzerDllPaths
�� %
)
�� 
{
�� 
var
�� 	$
otherResponseFilesData
��
  
=
��! "4
&GetOtherArgumentsFromResponseFilesData
��# I
(
��I J
responseFilesData
��J [
)
��[ \
;
��\ ]
var
�� 	
	arguments
��
 
=
�� 
new
�� 
object
��  
[
��  !
]
��! "
{
�� 
k_ToolsVersion
�� 
,
�� 
k_ProductVersion
�� 
,
�� 
ProjectGuid
�� 
(
�� 
assembly
�� 
)
�� 
,
�� #
InternalEditorUtility
�� 
.
�� #
GetEngineAssemblyPath
�� 3
(
��3 4
)
��4 5
,
��5 6#
InternalEditorUtility
�� 
.
�� #
GetEditorAssemblyPath
�� 3
(
��3 4
)
��4 5
,
��5 6
string
�� 
.
�� 
Join
�� 
(
�� 
$str
�� 
,
�� 
assembly
�� !
.
��! "
defines
��" )
.
��) *
Concat
��* 0
(
��0 1
responseFilesData
��1 B
.
��B C

SelectMany
��C M
(
��M N
x
��N O
=>
��P R
x
��S T
.
��T U
Defines
��U \
)
��\ ]
)
��] ^
.
��^ _
Distinct
��_ g
(
��g h
)
��h i
.
��i j
ToArray
��j q
(
��q r
)
��r s
)
��s t
,
��t u!
MSBuildNamespaceUri
�� 
,
�� 
assembly
�� 
.
�� 
name
�� 
,
�� 
assembly
�� 
.
�� 

outputPath
�� 
,
�� 
GetRootNamespace
�� 
(
�� 
assembly
�� !
)
��! "
,
��" #&
k_TargetFrameworkVersion
��  
,
��  !!
GenerateLangVersion
�� 
(
�� $
otherResponseFilesData
�� 2
[
��2 3
$str
��3 @
]
��@ A
)
��A B
,
��B C
k_BaseDirectory
�� 
,
�� 
assembly
�� 
.
�� 
compilerOptions
��  
.
��  !
AllowUnsafeCode
��! 0
|
��1 2
responseFilesData
��3 D
.
��D E
Any
��E H
(
��H I
x
��I J
=>
��K M
x
��N O
.
��O P
Unsafe
��P V
)
��V W
,
��W X
GenerateNoWarn
�� 
(
�� $
otherResponseFilesData
�� -
[
��- .
$str
��. 6
]
��6 7
.
��7 8
Distinct
��8 @
(
��@ A
)
��A B
.
��B C
ToArray
��C J
(
��J K
)
��K L
)
��L M
,
��M N'
GenerateAnalyserItemGroup
�� !
(
��! "$
otherResponseFilesData
��
  
[
��  !
$str
��! +
]
��+ ,
.
��, -
Concat
��- 3
(
��3 4$
otherResponseFilesData
��4 J
[
��J K
$str
��K N
]
��N O
)
��O P
.
��2 3

SelectMany
��3 =
(
��= >
x
��> ?
=>
��? A
x
��A B
.
��B C
Split
��C H
(
��H I
$char
��I L
)
��L M
)
��M N
.
��2 3
Concat
��3 9
(
��9 :$
roslynAnalyzerDllPaths
��: P
)
��P Q
.
��2 3
Distinct
��3 ;
(
��; <
)
��< =
.
��2 3
ToArray
��3 :
(
��: ;
)
��; <
)
��< =
,
��= >-
GenerateAnalyserAdditionalFiles
�� '
(
��' ($
otherResponseFilesData
��( >
[
��> ?
$str
��? O
]
��O P
.
��P Q

SelectMany
��Q [
(
��[ \
x
��\ ]
=>
��] _
x
��_ `
.
��` a
Split
��a f
(
��f g
$char
��g j
)
��j k
)
��k l
.
��l m
Distinct
��m u
(
��u v
)
��v w
.
��w x
ToArray
��x 
(�� �
)��� �
)��� �
,��� �%
GenerateAnalyserRuleSet
�� 
(
��  $
otherResponseFilesData
��  6
[
��6 7
$str
��7 @
]
��@ A
.
��A B
Append
��B H
(
��H I
assembly
��I Q
.
��Q R
compilerOptions
��R a
.
��a b'
RoslynAnalyzerRulesetPath
��b {
)
��{ |
.
��| }
Distinct��} �
(��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
)��� �
,��� �"
GenerateWarningLevel
�� 
(
�� $
otherResponseFilesData
�� 3
[
��3 4
$str
��4 :
]
��: ;
.
��; <
Concat
��< B
(
��B C$
otherResponseFilesData
��C Y
[
��Y Z
$str
��Z ]
]
��] ^
)
��^ _
.
��_ `
Distinct
��` h
(
��h i
)
��i j
)
��j k
,
��k l$
GenerateWarningAsError
�� 
(
�� $
otherResponseFilesData
�� 5
[
��5 6
$str
��6 C
]
��C D
)
��D E
,
��E F'
GenerateDocumentationFile
�� !
(
��! "$
otherResponseFilesData
��" 8
[
��8 9
$str
��9 >
]
��> ?
)
��? @
}
�� 
;
�� 
try
�� 	
{
�� 
return
�� 
string
�� 
.
�� 
Format
�� 
(
�� &
GetProjectHeaderTemplate
�� 5
(
��5 6
)
��6 7
,
��7 8
	arguments
��9 B
)
��B C
;
��C D
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� '
(
��' (
$str
��
 |
+
��} ~
	arguments
��
 
.
�� 
Length
�� 
)
�� 
;
�� 
}
�� 
}
�� 
private
�� 
static
�� 
string
�� '
GenerateDocumentationFile
�� 3
(
��3 4
IEnumerable
��4 ?
<
��? @
string
��@ F
>
��F G
paths
��H M
)
��M N
{
�� 
if
�� 
(
��	 

!
��
 
paths
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
String
�� 
.
�� 
Empty
�� 
;
�� 
return
�� 
$"
�� 
{
�� 
Environment
�� 
.
�� 
NewLine
�� #
}
��# $
{
��$ %
string
��% +
.
��+ ,
Join
��, 0
(
��0 1
Environment
��1 <
.
��< =
NewLine
��= D
,
��D E
paths
��F K
.
��K L
Select
��L R
(
��R S
a
��S T
=>
��U W
$"
��X Z#
  <DocumentationFile>
��Z o
{
��o p
a
��p q
}
��q r#
</DocumentationFile>��r �
"��� �
)��� �
)��� �
}��� �
"��� �
;��� �
}
�� 
private
�� 
static
�� 
string
�� $
GenerateWarningAsError
�� 0
(
��0 1
IEnumerable
��1 <
<
��< =
string
��= C
>
��C D

enumerable
��E O
)
��O P
{
�� 
string
�� 
returnValue
�� 
=
�� 
String
�� !
.
��! "
Empty
��" '
;
��' (
bool
�� 
!
allWarningsAsErrors
�� 
=
��  
false
��! &
;
��& '
List
�� 

<
��
 
string
�� 
>
�� 

warningIds
�� 
=
�� 
new
��  #
List
��$ (
<
��( )
string
��) /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
foreach
�� 
(
�� 
string
�� 
s
�� 
in
�� 

enumerable
�� %
)
��% &
{
�� 
if
�� 

(
�� 
s
�� 
==
�� 
$str
�� 
)
�� !
allWarningsAsErrors
�� )
=
��* +
true
��, 0
;
��0 1
else
�� 
if
�� 
(
�� 
s
�� 
==
�� 
$str
�� 
)
�� !
allWarningsAsErrors
�� .
=
��/ 0
false
��1 6
;
��6 7
else
�� 
{
�� 	

warningIds
��
 
.
�� 
Add
�� 
(
�� 
s
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
returnValue
�� 
+=
�� 
$@"
�� )
    <TreatWarningsAsErrors>
�� 3
{
��3 4!
allWarningsAsErrors
��4 G
}
��G H&
</TreatWarningsAsErrors>
��H `
"
��` a
;
��a b
if
�� 
(
��	 


warningIds
��
 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
returnValue
�� 
+=
�� 
$"
�� 
{
�� 
Environment
�� %
.
��% &
NewLine
��& -
}
��- .$
    <WarningsAsErrors>
��. D
{
��D E
string
��E K
.
��K L
Join
��L P
(
��P Q
$str
��Q T
,
��T U

warningIds
��V `
)
��` a
}
��a b!
</WarningsAsErrors>
��b u
"
��u v
;
��v w
}
�� 
return
�� 
$"
�� 
{
�� 
Environment
�� 
.
�� 
NewLine
�� #
}
��# $
{
��$ %
returnValue
��% 0
}
��0 1
"
��1 2
;
��2 3
}
�� 
private
�� 
static
�� 
string
�� "
GenerateWarningLevel
�� .
(
��. /
IEnumerable
��/ :
<
��: ;
string
��; A
>
��A B
warningLevel
��C O
)
��O P
{
�� 
var
�� 	
level
��
 
=
�� 
warningLevel
�� 
.
�� 
FirstOrDefault
�� -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
��	 

!
��
 
string
�� 
.
��  
IsNullOrWhiteSpace
�� $
(
��$ %
level
��% *
)
��* +
)
��+ ,
return
�� 
level
�� 
;
�� 
return
�� 
$num
�� 
.
�� 
ToString
�� 
(
�� 
)
�� 
;
�� 
}
�� 
static
�� 

string
�� 
GetSolutionText
�� !
(
��! "
)
��" #
{
�� 
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
Environment
�� $
.
��$ %
NewLine
��% ,
,
��, -
$str
�� 
,
�� 
$str
�� D
,
��D E
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� J
,
��J K
$str
�� 0
,
��0 1
$str
�� 4
,
��4 5
$str
�� 
,
��  
$str
�� J
,
��J K
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� >
,
��> ?
$str
�� +
,
��+ ,
$str
�� 
,
��  
$str
�� 
,
�� 
$str
�� 
)
�� 
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
$str
�� !
)
��! "
;
��" #
}
�� 
static
�� 

string
�� &
GetProjectFooterTemplate
�� *
(
��* +
)
��+ ,
{
�� 
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
Environment
�� $
.
��$ %
NewLine
��% ,
,
��, -
$str
�� 
,
�� 
$str
�� P
,
��P Q
$str
�� o
,
��o p
$str
�� U
,
��U V
$str
�� *
,
��* +
$str
�� 
,
�� 
$str
�� )
,
��) *
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
)
�� 
;
�� 
}
�� 
static
�� 

string
�� &
GetProjectHeaderTemplate
�� *
(
��* +
)
��+ ,
{
�� 
var
�� 	
header
��
 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
$str
�� 5
,
��5 6
$str
�� P
,
��P Q
$str
�� 
,
�� 
$str
�� .
,
��. /
$str
�� y
,
��y z
$str�� �
,��� �
$str
�� ^
,
��^ _
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� \
,
��\ ]
$str
�� N
,
��N O
$str
�� 3
,
��3 4
$str
�� 1
,
��1 2
$str
�� 1
,
��1 2
$str
�� 1
,
��1 2
$str�� �
,��� �
$str
�� /
,
��/ 0
$str
�� @
,
��@ A
$str
�� /
,
��/ 0
$str
�� D
,
��D E
$str
�� 1
,
��1 2
$str
�� 2
,
��2 3
$str
�� 
,
�� 
$str
�� ]
,
��] ^
$str
�� 0
,
��0 1
$str
�� *
,
��* +
$str
�� )
,
��) *
$str
�� +
,
��+ ,
$str
�� 5
,
��5 6
$str
�� 0
,
��0 1
$str
�� 0
,
��0 1
$str
�� $
,
��$ %
$str
�� B
,
��B C
$str
�� 
,
�� 
$str
�� _
,
��_ `
$str
�� -
,
��- .
$str
�� (
,
��( )
$str
�� 9
,
��9 :
$str
�� 0
,
��0 1
$str
�� 0
,
��0 1
$str
�� $
,
��$ %
$str
�� B
,
��B C
$str
�� 
}
�� 
;
�� 
var
�� 	%
forceExplicitReferences
��
 !
=
��" #
new
��$ '
[
��' (
]
��( )
{
�� 
$str
�� 
,
�� 
$str
�� (
,
��( )
$str
�� (
,
��( )
$str
�� g
,
��g h
$str
�� ]
,
��] ^
$str
�� [
,
��[ \
$str
�� 
}
�� 
;
�� 
var
�� 	
footer
��
 
=
�� 
new
�� 
[
�� 
]
�� 
{
�� 
$str
��  
,
��  !
$str
�� 
}
�� 
;
�� 
var
�� 	
pieces
��
 
=
�� 
header
�� 
.
�� 
Concat
��  
(
��  !%
forceExplicitReferences
��! 8
)
��8 9
.
��9 :
Concat
��: @
(
��@ A
footer
��A G
)
��G H
.
��H I
ToArray
��I P
(
��P Q
)
��Q R
;
��R S
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
Environment
�� $
.
��$ %
NewLine
��% ,
,
��, -
pieces
��. 4
)
��4 5
;
��5 6
}
�� 
void
�� 
SyncSolution
��	 
(
�� 
IEnumerable
�� !
<
��! "
Assembly
��" *
>
��* +
islands
��, 3
,
��3 4
Type
��5 9
[
��9 :
]
��: ;
types
��< A
)
��A B
{
�� *
SyncSolutionFileIfNotChanged
�� "
(
��" #
SolutionFile
��# /
(
��/ 0
)
��0 1
,
��1 2
SolutionText
��3 ?
(
��? @
islands
��@ G
)
��G H
,
��H I
types
��J O
)
��O P
;
��P Q
}
�� 
string
�� 

SolutionText
�� 
(
�� 
IEnumerable
�� #
<
��# $
Assembly
��$ ,
>
��, -
islands
��. 5
)
��5 6
{
�� 
var
�� 	
fileversion
��
 
=
�� 
$str
�� 
;
��  
var
�� 	
	vsversion
��
 
=
�� 
$str
�� 
;
�� 
var
�� 	
relevantIslands
��
 
=
�� $
RelevantIslandsForMode
�� 2
(
��2 3
islands
��3 :
)
��: ;
;
��; <
string
�� 
projectEntries
�� 
=
�� 
GetProjectEntries
�� /
(
��/ 0
relevantIslands
��0 ?
)
��? @
;
��@ A
string
�� #
projectConfigurations
�� "
=
��# $
string
��% +
.
��+ ,
Join
��, 0
(
��0 1
Environment
��1 <
.
��< =
NewLine
��= D
,
��D E
relevantIslands
�� 
.
�� 
Select
�� 
(
�� 
i
��  
=>
��! #,
GetProjectActiveConfigurations
��$ B
(
��B C
ProjectGuid
��C N
(
��N O
i
��O P
)
��P Q
)
��Q R
)
��R S
.
��S T
ToArray
��T [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
return
�� 
string
�� 
.
�� 
Format
�� 
(
�� 
GetSolutionText
�� *
(
��* +
)
��+ ,
,
��, -
fileversion
��. 9
,
��9 :
	vsversion
��; D
,
��D E
projectEntries
��F T
,
��T U#
projectConfigurations
��V k
)
��k l
;
��l m
}
�� 
private
�� 
static
�� 
string
�� '
GenerateAnalyserItemGroup
�� 3
(
��3 4
string
��4 :
[
��: ;
]
��; <
paths
��= B
)
��B C
{
�� 
if
�� 
(
��	 

!
��
 
paths
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
var
�� 	
analyserBuilder
��
 
=
�� 
new
�� 
StringBuilder
��  -
(
��- .
)
��. /
;
��/ 0
analyserBuilder
�� 
.
�� 

AppendLine
��  
(
��  !
$str
��! 0
)
��0 1
;
��1 2
foreach
�� 
(
�� 
var
�� 
path
�� 
in
�� 
paths
��  
)
��  !
{
�� 
analyserBuilder
�� 
.
�� 

AppendLine
�� "
(
��" #
$"
��# %&
    <Analyzer Include=\"
��% =
{
��= >
path
��> B
}
��B C
\" />
��C H
"
��H I
)
��I J
;
��J K
}
�� 
analyserBuilder
�� 
.
�� 

AppendLine
��  
(
��  !
$str
��! 1
)
��1 2
;
��2 3
return
�� 
analyserBuilder
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
private
�� 
static
�� 
ILookup
�� 
<
�� 
string
�� !
,
��! "
string
��# )
>
��) *4
&GetOtherArgumentsFromResponseFilesData
��+ Q
(
��Q R
List
��R V
<
��V W
ResponseFileData
��W g
>
��g h
responseFilesData
��i z
)
��z {
{
�� 
var
�� 	
paths
��
 
=
�� 
responseFilesData
�� #
.
��# $

SelectMany
��$ .
(
��. /
x
��/ 0
=>
��1 3
{
�� 	
return
��
 
x
�� 
.
�� 
OtherArguments
�� !
.
�� 
Where
�� 
(
�� 
a
�� 
=>
�� 
a
�� 
.
�� 

StartsWith
�� $
(
��$ %
$str
��% (
)
��( )
||
��* ,
a
��- .
.
��. /

StartsWith
��/ 9
(
��9 :
$str
��: =
)
��= >
)
��> ?
.
�� 
Select
�� 
(
�� 
b
�� 
=>
�� 
{
�� 
var
�� 
index
�� 
=
�� 
b
�� 
.
�� 
IndexOf
�� #
(
��# $
$str
��$ '
,
��' (
StringComparison
��) 9
.
��9 :
Ordinal
��: A
)
��A B
;
��B C
if
�� 
(
�� 
index
�� 
>
�� 
$num
�� 
&&
�� 
b
��  
.
��  !
Length
��! '
>
��( )
index
��* /
)
��/ 0
{
�� 
var
�� 
key
�� 
=
�� 
b
�� 
.
�� 
	Substring
�� %
(
��% &
$num
��& '
,
��' (
index
��) .
-
��/ 0
$num
��1 2
)
��2 3
;
��3 4
return
�� 
new
�� 
KeyValuePair
�� '
<
��' (
string
��( .
,
��. /
string
��0 6
>
��6 7
(
��7 8
key
��8 ;
,
��; <
b
��= >
.
��> ?
	Substring
��? H
(
��H I
index
��I N
+
��O P
$num
��Q R
)
��R S
)
��S T
;
��T U
}
�� 
const
�� 
string
�� 
warnaserror
�� &
=
��' (
$str
��) 6
;
��6 7
if
�� 
(
�� 
b
�� 
.
�� 
	Substring
�� 
(
�� 
$num
�� 
)
��  
.
��  !

StartsWith
��! +
(
��+ ,
warnaserror
��, 7
)
��7 8
)
��8 9
{
�� 
return
�� 
new
�� 
KeyValuePair
�� '
<
��' (
string
��( .
,
��. /
string
��0 6
>
��6 7
(
��7 8
warnaserror
��8 C
,
��C D
b
��E F
.
��F G
	Substring
��G P
(
��P Q
warnaserror
��Q \
.
��\ ]
Length
��] c
+
��d e
$num
��f g
)
��g h
)
��h i
;
��i j
}
�� 
return
�� 
default
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
)
��	 

.
�� 	
Distinct
��	 
(
�� 
)
�� 
.
�� 	
ToLookup
��	 
(
�� 
o
�� 
=>
�� 
o
�� 
.
�� 
Key
�� 
,
�� 
pair
�� "
=>
��# %
pair
��& *
.
��* +
Value
��+ 0
)
��0 1
;
��1 2
return
�� 
paths
�� 
;
�� 
}
�� 
private
�� 
string
�� !
GenerateLangVersion
�� &
(
��& '
IEnumerable
��' 2
<
��2 3
string
��3 9
>
��9 :
langVersionList
��; J
)
��J K
{
�� 
var
�� 	
langVersion
��
 
=
�� 
langVersionList
�� '
.
��' (
FirstOrDefault
��( 6
(
��6 7
)
��7 8
;
��8 9
if
�� 
(
��	 

!
��
 
string
�� 
.
��  
IsNullOrWhiteSpace
�� $
(
��$ %
langVersion
��% 0
)
��0 1
)
��1 2
return
�� 
langVersion
�� 
;
�� 
return
�� %
k_TargetLanguageVersion
�� $
;
��$ %
}
�� 
private
�� 
static
�� 
string
�� %
GenerateAnalyserRuleSet
�� 1
(
��1 2
string
��2 8
[
��8 9
]
��9 :
paths
��; @
)
��@ A
{
�� 
if
�� 
(
��	 

!
��
 
paths
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
return
�� 
$"
�� 
{
�� 
Environment
�� 
.
�� 
NewLine
�� #
}
��# $
{
��$ %
string
��% +
.
��+ ,
Join
��, 0
(
��0 1
Environment
��1 <
.
��< =
NewLine
��= D
,
��D E
paths
��F K
.
��K L
Select
��L R
(
��R S
a
��S T
=>
��U W
$"
��X Z%
  <CodeAnalysisRuleSet>
��Z q
{
��q r
a
��r s
}
��s t%
</CodeAnalysisRuleSet>��t �
"��� �
)��� �
)��� �
}��� �
"��� �
;��� �
}
�� 
private
�� 
static
�� 
string
�� -
GenerateAnalyserAdditionalFiles
�� 9
(
��9 :
string
��: @
[
��@ A
]
��A B
paths
��C H
)
��H I
{
�� 
if
�� 
(
��	 

!
��
 
paths
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
var
�� 	
analyserBuilder
��
 
=
�� 
new
�� 
StringBuilder
��  -
(
��- .
)
��. /
;
��/ 0
analyserBuilder
�� 
.
�� 

AppendLine
��  
(
��  !
$str
��! 0
)
��0 1
;
��1 2
foreach
�� 
(
�� 
var
�� 
path
�� 
in
�� 
paths
��  
)
��  !
{
�� 
analyserBuilder
�� 
.
�� 

AppendLine
�� "
(
��" #
$"
��# %-
    <AdditionalFiles Include=\"
��% D
{
��D E
path
��E I
}
��I J
\" />
��J O
"
��O P
)
��P Q
;
��Q R
}
�� 
analyserBuilder
�� 
.
�� 

AppendLine
��  
(
��  !
$str
��! 1
)
��1 2
;
��2 3
return
�� 
analyserBuilder
�� 
.
�� 
ToString
�� %
(
��% &
)
��& '
;
��' (
}
�� 
private
�� 
static
�� 
string
�� 
GenerateNoWarn
�� (
(
��( )
string
��) /
[
��/ 0
]
��0 1
codes
��2 7
)
��7 8
{
�� 
if
�� 
(
��	 

!
��
 
codes
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
return
�� 
$"
�� 
,
�� 
{
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
$str
��  
,
��  !
codes
��" '
)
��' (
}
��( )
"
��) *
;
��* +
}
�� 
static
�� 

IEnumerable
�� 
<
�� 
Assembly
�� 
>
��  $
RelevantIslandsForMode
��! 7
(
��7 8
IEnumerable
��8 C
<
��C D
Assembly
��D L
>
��L M
islands
��N U
)
��U V
{
�� 
IEnumerable
�� 
<
�� 
Assembly
�� 
>
�� 
relevantIslands
�� +
=
��, -
islands
��. 5
.
��5 6
Where
��6 ;
(
��; <
i
��< =
=>
��> @
ScriptingLanguage
��A R
.
��R S
CSharp
��S Y
==
��Z \"
ScriptingLanguageFor
��] q
(
��q r
i
��r s
)
��s t
)
��t u
;
��u v
return
�� 
relevantIslands
�� 
;
�� 
}
�� 
string
�� 

GetProjectEntries
�� 
(
�� 
IEnumerable
�� (
<
��( )
Assembly
��) 1
>
��1 2
islands
��3 :
)
��: ;
{
�� 
var
�� 	
projectEntries
��
 
=
�� 
islands
�� "
.
��" #
Select
��# )
(
��) *
i
��* +
=>
��, .
string
��/ 5
.
��5 6
Format
��6 <
(
��< =,
m_SolutionProjectEntryTemplate
�� &
,
��& '
m_GUIDGenerator
�� 
.
�� 
SolutionGuid
�� $
(
��$ %
m_ProjectName
��% 2
,
��2 3'
GetExtensionOfSourceFiles
��4 M
(
��M N
i
��N O
.
��O P
sourceFiles
��P [
)
��[ \
)
��\ ]
,
��] ^
i
�� 	
.
��	 

name
��
 
,
�� 
Path
�� 
.
�� 
GetFileName
�� 
(
�� 
ProjectFile
�� $
(
��$ %
i
��% &
)
��& '
)
��' (
,
��( )
ProjectGuid
�� 
(
�� 
i
�� 
)
�� 
)
�� 
)
�� 
;
�� 	
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
Environment
�� $
.
��$ %
NewLine
��% ,
,
��, -
projectEntries
��. <
.
��< =
ToArray
��= D
(
��D E
)
��E F
)
��F G
;
��G H
}
�� 
string
�� 
,
GetProjectActiveConfigurations
�� )
(
��) *
string
��* 0
projectGuid
��1 <
)
��< =
{
�� 
return
�� 
string
�� 
.
�� 
Format
�� 
(
�� 4
&m_SolutionProjectConfigurationTemplate
�� .
,
��. /
projectGuid
�� 
)
�� 
;
�� 
}
�� 
string
�� 
$
EscapedRelativePathFor
�� !
(
��! "
string
��" (
file
��) -
)
��- .
{
�� 
var
�� 	

projectDir
��
 
=
�� 
ProjectDirectory
�� '
.
��' (
Replace
��( /
(
��/ 0
$char
��0 3
,
��3 4
$char
��5 9
)
��9 :
;
��: ;
file
�� 

=
�� 
file
�� 
.
�� 
Replace
�� 
(
�� 
$char
�� 
,
�� 
$char
�� #
)
��# $
;
��$ %
var
�� 	
path
��
 
=
�� 
SkipPathPrefix
�� 
(
��  
file
��  $
,
��$ %

projectDir
��& 0
)
��0 1
;
��1 2
var
�� 	
packageInfo
��
 
=
�� $
m_AssemblyNameProvider
�� .
.
��. /
FindForAssetPath
��/ ?
(
��? @
path
��@ D
.
��D E
Replace
��E L
(
��L M
$char
��M Q
,
��Q R
$char
��S V
)
��V W
)
��W X
;
��X Y
if
�� 
(
��	 

packageInfo
��
 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 
absolutePath
�� 
=
�� 
Path
�� 
.
��  
GetFullPath
��  +
(
��+ ,
NormalizePath
��, 9
(
��9 :
path
��: >
)
��> ?
)
��? @
.
��@ A
Replace
��A H
(
��H I
$char
��I L
,
��L M
$char
��N R
)
��R S
;
��S T
path
�� 
=
�� 
SkipPathPrefix
�� 
(
�� 
absolutePath
�� *
,
��* +

projectDir
��, 6
)
��6 7
;
��7 8
}
�� 
return
�� 
SecurityElement
�� 
.
�� 
Escape
�� #
(
��# $
path
��$ (
)
��( )
;
��) *
}
�� 
static
�� 

string
�� 
SkipPathPrefix
��  
(
��  !
string
��! '
path
��( ,
,
��, -
string
��. 4
prefix
��5 ;
)
��; <
{
�� 
if
�� 
(
��	 

path
��
 
.
�� 

StartsWith
�� 
(
�� 
$@"
�� 
{
�� 
prefix
�� $
}
��$ %
\
��% &
"
��& '
)
��' (
)
��( )
return
�� 
path
�� 
.
�� 
	Substring
�� 
(
�� 
prefix
�� $
.
��$ %
Length
��% +
+
��, -
$num
��. /
)
��/ 0
;
��0 1
return
�� 
path
�� 
;
�� 
}
�� 
static
�� 

string
�� 
NormalizePath
�� 
(
��  
string
��  &
path
��' +
)
��+ ,
{
�� 
if
�� 
(
��	 

Path
��
 
.
�� $
DirectorySeparatorChar
�� %
==
��& (
$char
��) -
)
��- .
return
�� 
path
�� 
.
�� 
Replace
�� 
(
�� 
$char
�� 
,
��  
Path
��! %
.
��% &$
DirectorySeparatorChar
��& <
)
��< =
;
��= >
return
�� 
path
�� 
.
�� 
Replace
�� 
(
�� 
$char
�� 
,
�� 
Path
��  $
.
��$ %$
DirectorySeparatorChar
��% ;
)
��; <
;
��< =
}
�� 
static
�� 

string
�� 
ProjectFooter
�� 
(
��  
)
��  !
{
�� 
return
�� &
GetProjectFooterTemplate
�� %
(
��% &
)
��& '
;
��' (
}
�� 
static
�� 

string
�� !
GetProjectExtension
�� %
(
��% &
)
��& '
{
�� 
return
�� 
$str
�� 
;
�� 
}
�� 
string
�� 

ProjectGuid
�� 
(
�� 
Assembly
�� 
assembly
��  (
)
��( )
{
�� 
return
�� 
m_GUIDGenerator
�� 
.
�� 
ProjectGuid
�� (
(
��( )
m_ProjectName
�� 
,
�� $
m_AssemblyNameProvider
�� 
.
�� 
GetProjectName
�� -
(
��- .
assembly
��. 6
.
��6 7

outputPath
��7 A
,
��A B
assembly
��C K
.
��K L
name
��L P
)
��P Q
)
��Q R
;
��R S
}
�� 
static
�� 

string
�� 
GetRootNamespace
�� "
(
��" #
Assembly
��# +
assembly
��, 4
)
��4 5
{
�� 
return
�� 
assembly
�� 
.
�� 
rootNamespace
�� #
;
��# $
}
�� 
}�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\ProjectGeneration\IAssemblyNameProvider.cs
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
} �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\Util\RiderMenu.cs
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
}   �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\LoggingLevel.cs
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
} �L
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\PluginSettings.cs
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
$str	RR �
;
RR� � 
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
}}} �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.rider@2.0.7\Rider\Editor\PostProcessors\RiderAssetPostprocessor.cs
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