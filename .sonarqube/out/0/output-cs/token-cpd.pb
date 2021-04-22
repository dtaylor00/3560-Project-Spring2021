Ù
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\TestListenerWrapper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
TestListenerWrapper &
:' (
ITestListener) 6
{ 
private 
readonly 
TestFinishedEvent *
m_TestFinishedEvent+ >
;> ?
private 
readonly 
TestStartedEvent )
m_TestStartedEvent* <
;< =
public

 
TestListenerWrapper

 "
(

" #
TestStartedEvent

# 3
testStartedEvent

4 D
,

D E
TestFinishedEvent

F W
testFinishedEvent

X i
)

i j
{ 	
m_TestStartedEvent 
=  
testStartedEvent! 1
;1 2
m_TestFinishedEvent 
=  !
testFinishedEvent" 3
;3 4
} 	
public 
void 
TestStarted 
(  
ITest  %
test& *
)* +
{ 	
m_TestStartedEvent 
. 
Invoke %
(% &
test& *
)* +
;+ ,
} 	
public 
void 
TestFinished  
(  !
ITestResult! ,
result- 3
)3 4
{ 	
m_TestFinishedEvent 
.  
Invoke  &
(& '
result' -
)- .
;. /
} 	
public 
void 

TestOutput 
( 

TestOutput )
output* 0
)0 1
{ 	
} 	
} 
} §
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\ITestAssemblyProvider.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
	interface !
ITestAssemblyProvider ,
{ 
ITest 
GetTestsWithNUnit 
(  
)  !
;! "
IAssemblyWrapper 
[ 
] 
GetUserAssemblies ,
(, -
)- .
;. /
}		 
}

 ¿
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\IScriptingRuntimeProxy.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
	interface "
IScriptingRuntimeProxy -
{ 
string 
[ 
]  
GetAllUserAssemblies %
(% &
)& '
;' (
} 
} ÑK
¿D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\UnityTestExecutionContext.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class %
UnityTestExecutionContext ,
:- .!
ITestExecutionContext/ D
{ 
private 
readonly %
UnityTestExecutionContext 2
_priorContext3 @
;@ A
private 

TestResult 
_currentResult )
;) *
private 
int 
_assertCount  
;  !
public 
static %
UnityTestExecutionContext /
CurrentContext0 >
{? @
getA D
;D E
setF I
;I J
}K L
public %
UnityTestExecutionContext (
Context) 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public 
Test 
CurrentTest 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
	StartTime !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 

StartTicks 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

TestResult 
CurrentResult '
{ 	
get 
{ 
return 
_currentResult '
;' (
}) *
set 
{ 
_currentResult   
=    
value  ! &
;  & '
if!! 
(!! 
value!! 
!=!! 
null!! !
)!!! "
	OutWriter"" 
="" 
value""  %
.""% &
	OutWriter""& /
;""/ 0
}## 
}$$ 	
public&& 
object&& 

TestObject&&  
{&&! "
get&&# &
;&&& '
set&&( +
;&&+ ,
}&&- .
public'' 
string'' 
WorkDirectory'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
private** 
TestExecutionStatus** #
_executionStatus**$ 4
;**4 5
public++ 
TestExecutionStatus++ "
ExecutionStatus++# 2
{,, 	
get-- 
{.. 
if11 
(11 
_executionStatus11 $
==11% '
TestExecutionStatus11( ;
.11; <
Running11< C
&&11D F
_priorContext11G T
!=11U W
null11X \
)11\ ]
_executionStatus22 $
=22% &
_priorContext22' 4
.224 5
ExecutionStatus225 D
;22D E
return44 
_executionStatus44 '
;44' (
}55 
set66 
{77 
_executionStatus88  
=88! "
value88# (
;88( )
if;; 
(;; 
_priorContext;; !
!=;;" $
null;;% )
);;) *
_priorContext<< !
.<<! "
ExecutionStatus<<" 1
=<<2 3
value<<4 9
;<<9 :
}== 
}>> 	
public@@ 
List@@ 
<@@ 
ITestAction@@ 
>@@  
UpstreamActions@@! 0
{@@1 2
get@@3 6
;@@6 7
private@@8 ?
set@@@ C
;@@C D
}@@E F
publicAA 
intAA 
TestCaseTimeoutAA "
{AA# $
getAA% (
;AA( )
setAA* -
;AA- .
}AA/ 0
publicBB 
CultureInfoBB 
CurrentCultureBB )
{BB* +
getBB, /
;BB/ 0
setBB1 4
;BB4 5
}BB6 7
publicCC 
CultureInfoCC 
CurrentUICultureCC +
{CC, -
getCC. 1
;CC1 2
setCC3 6
;CC6 7
}CC8 9
publicDD 
ITestListenerDD 
ListenerDD %
{DD& '
getDD( +
;DD+ ,
setDD- 0
;DD0 1
}DD2 3
publicFF %
UnityTestExecutionContextFF (
(FF( )
)FF) *
{GG 	
UpstreamActionsHH 
=HH 
newHH !
ListHH" &
<HH& '
ITestActionHH' 2
>HH2 3
(HH3 4
)HH4 5
;HH5 6
CurrentContextII 
=II 
thisII !
;II! "
}JJ 	
publicLL %
UnityTestExecutionContextLL (
(LL( )%
UnityTestExecutionContextLL) B
otherLLC H
)LLH I
{MM 	
_priorContextNN 
=NN 
otherNN !
;NN! "
CurrentTestPP 
=PP 
otherPP 
.PP  
CurrentTestPP  +
;PP+ ,
CurrentResultQQ 
=QQ 
otherQQ !
.QQ! "
CurrentResultQQ" /
;QQ/ 0

TestObjectRR 
=RR 
otherRR 
.RR 

TestObjectRR )
;RR) *
WorkDirectorySS 
=SS 
otherSS !
.SS! "
WorkDirectorySS" /
;SS/ 0
ListenerTT 
=TT 
otherTT 
.TT 
ListenerTT %
;TT% &
TestCaseTimeoutUU 
=UU 
otherUU #
.UU# $
TestCaseTimeoutUU$ 3
;UU3 4
UpstreamActionsVV 
=VV 
newVV !
ListVV" &
<VV& '
ITestActionVV' 2
>VV2 3
(VV3 4
otherVV4 9
.VV9 :
UpstreamActionsVV: I
)VVI J
;VVJ K
SetUpTearDownStateWW 
=WW  
otherWW! &
.WW& '
SetUpTearDownStateWW' 9
;WW9 :%
OuterUnityTestActionStateXX %
=XX& '
otherXX( -
.XX- .%
OuterUnityTestActionStateXX. G
;XXG H
EnumerableTestStateYY 
=YY  !
otherYY" '
.YY' (
EnumerableTestStateYY( ;
;YY; <
TestContext[[ 
.[[ '
CurrentTestExecutionContext[[ 3
=[[4 5
this[[6 :
;[[: ;
CurrentCulture]] 
=]] 
other]] "
.]]" #
CurrentCulture]]# 1
;]]1 2
CurrentUICulture^^ 
=^^ 
other^^ $
.^^$ %
CurrentUICulture^^% 5
;^^5 6
CurrentContext__ 
=__ 
this__ !
;__! "
}`` 	
publicbb 

TextWriterbb 
	OutWriterbb #
{bb$ %
getbb& )
;bb) *
privatebb+ 2
setbb3 6
;bb6 7
}bb8 9
publiccc 
boolcc 
StopOnErrorcc 
{cc  !
getcc" %
;cc% &
setcc' *
;cc* +
}cc, -
publicee 
IWorkItemDispatcheree "

Dispatcheree# -
{ee. /
getee0 3
;ee3 4
setee5 8
;ee8 9
}ee: ;
publicgg 
ParallelScopegg 
ParallelScopegg *
{gg+ ,
getgg- 0
;gg0 1
setgg2 5
;gg5 6
}gg7 8
publichh 
stringhh 
WorkerIdhh 
{hh  
gethh! $
;hh$ %
privatehh& -
sethh. 1
;hh1 2
}hh3 4
publicii 

Randomizerii 
RandomGeneratorii )
{ii* +
getii, /
;ii/ 0
privateii1 8
setii9 <
;ii< =
}ii> ?
publicjj 
ValueFormatterjj !
CurrentValueFormatterjj 3
{jj4 5
getjj6 9
;jj9 :
privatejj; B
setjjC F
;jjF G
}jjH I
publickk 
boolkk 
IsSingleThreadedkk $
{kk% &
getkk' *
;kk* +
setkk, /
;kk/ 0
}kk1 2
publicll '
BeforeAfterTestCommandStatell *
SetUpTearDownStatell+ =
{ll> ?
getll@ C
;llC D
setllE H
;llH I
}llJ K
publicmm '
BeforeAfterTestCommandStatemm *%
OuterUnityTestActionStatemm+ D
{mmE F
getmmG J
;mmJ K
setmmL O
;mmO P
}mmQ R
publicnn 
EnumerableTestStatenn "
EnumerableTestStatenn# 6
{nn7 8
getnn9 <
;nn< =
setnn> A
;nnA B
}nnC D
internalpp 
intpp 
AssertCountpp  
{qq 	
getrr 
{ss 
returntt 
_assertCounttt #
;tt# $
}uu 
}vv 	
publicxx 
voidxx  
IncrementAssertCountxx (
(xx( )
)xx) *
{yy 	
_assertCountzz 
+=zz 
$numzz 
;zz 
}{{ 	
public}} 
void}} 
AddFormatter}}  
(}}  !!
ValueFormatterFactory}}! 6
formatterFactory}}7 G
)}}G H
{~~ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ˘$
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\RemoteTestResultData.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
[ 
Serializable 
] 
internal		 
class		  
RemoteTestResultData		 '
{

 
public 
string 
testId 
; 
public 
string 
name 
; 
public 
string 
fullName 
; 
public 
string 
resultState !
;! "
public 

TestStatus 

testStatus $
;$ %
public 
double 
duration 
; 
public 
DateTime 
	startTime !
;! "
public 
DateTime 
endTime 
;  
public 
string 
message 
; 
public 
string 

stackTrace  
;  !
public 
int 
assertCount 
; 
public 
int 
	failCount 
; 
public 
int 
	passCount 
; 
public 
int 
	skipCount 
; 
public 
int 
inconclusiveCount $
;$ %
public 
bool 
hasChildren 
;  
public 
string 
output 
; 
public 
string 
xml 
; 
public 
string 
[ 
] 
childrenIds #
;# $
internal  
RemoteTestResultData %
(% &
ITestResult& 1
result2 8
)8 9
{   	
testId!! 
=!! 
result!! 
.!! 
Test!!  
.!!  !
Id!!! #
;!!# $
name"" 
="" 
result"" 
."" 
Name"" 
;"" 
fullName## 
=## 
result## 
.## 
FullName## &
;##& '
resultState$$ 
=$$ 
result$$  
.$$  !
ResultState$$! ,
.$$, -
ToString$$- 5
($$5 6
)$$6 7
;$$7 8

testStatus%% 
=%% 
result%% 
.%%  
ResultState%%  +
.%%+ ,
Status%%, 2
;%%2 3
duration&& 
=&& 
result&& 
.&& 
Duration&& &
;&&& '
	startTime'' 
='' 
result'' 
.'' 
	StartTime'' (
;''( )
endTime(( 
=(( 
result(( 
.(( 
EndTime(( $
;(($ %
message)) 
=)) 
result)) 
.)) 
Message)) $
;))$ %

stackTrace** 
=** 
result** 
.**  

StackTrace**  *
;*** +
assertCount++ 
=++ 
result++  
.++  !
AssertCount++! ,
;++, -
	failCount,, 
=,, 
result,, 
.,, 
	FailCount,, (
;,,( )
	passCount-- 
=-- 
result-- 
.-- 
	PassCount-- (
;--( )
	skipCount.. 
=.. 
result.. 
... 
	SkipCount.. (
;..( )
inconclusiveCount// 
=// 
result//  &
.//& '
InconclusiveCount//' 8
;//8 9
hasChildren00 
=00 
result00  
.00  !
HasChildren00! ,
;00, -
output11 
=11 
result11 
.11 
Output11 "
;11" #
xml22 
=22 
result22 
.22 
ToXml22 
(22 
true22 #
)22# $
.22$ %
OuterXml22% -
;22- .
childrenIds33 
=33 
result33  
.33  !
Children33! )
.33) *
Select33* 0
(330 1
child331 6
=>337 9
child33: ?
.33? @
Test33@ D
.33D E
Id33E G
)33G H
.33H I
ToArray33I P
(33P Q
)33Q R
;33R S
}44 	
}55 
}66 ¢
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector4ComparerWithEqualsOperator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class -
!Vector4ComparerWithEqualsOperator 2
:3 4
IEqualityComparer5 F
<F G
Vector4G N
>N O
{		 
private

 
static

 
readonly

 -
!Vector4ComparerWithEqualsOperator

  A

m_Instance

B L
=

M N
new

O R-
!Vector4ComparerWithEqualsOperator

S t
(

t u
)

u v
;

v w
public 
static -
!Vector4ComparerWithEqualsOperator 7
Instance8 @
{A B
getC F
{G H
returnI O

m_InstanceP Z
;Z [
}\ ]
}^ _
private -
!Vector4ComparerWithEqualsOperator 1
(1 2
)2 3
{4 5
}5 6
public'' 
bool'' 
Equals'' 
('' 
Vector4'' "
expected''# +
,''+ ,
Vector4''- 4
actual''5 ;
)''; <
{(( 	
return)) 
expected)) 
==)) 
actual)) %
;))% &
}** 	
public00 
int00 
GetHashCode00 
(00 
Vector400 &
vec400' +
)00+ ,
{11 	
return22 
$num22 
;22 
}33 	
}44 
}55 ó
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\PlaymodeTestsControllerSettings.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{		 
[

 
Serializable

 
]

 
internal 
class +
PlaymodeTestsControllerSettings 2
{ 
[ 	
SerializeField	 
] 
public #
RuntimeTestRunnerFilter &
[& '
]' (
filters) 0
;0 1
public 
bool 

sceneBased 
; 
public 
string 
originalScene #
;# $
public 
string 
bootstrapScene $
;$ %
public 
static +
PlaymodeTestsControllerSettings 5 
CreateRunnerSettings6 J
(J K#
RuntimeTestRunnerFilterK b
[b c
]c d
filterse l
)l m
{ 	
var 
settings 
= 
new +
PlaymodeTestsControllerSettings >
{ 
filters 
= 
filters !
,! "

sceneBased 
= 
false "
," #
originalScene 
= 
SceneManager  ,
., -
GetActiveScene- ;
(; <
)< =
.= >
path> B
,B C
bootstrapScene 
=  
null! %
} 
; 
return 
settings 
; 
} 	
internal 
ITestFilter 
BuildNUnitFilter -
(- .
). /
{   	
return!! 
new!! 
OrFilter!! 
(!!  
filters!!  '
.!!' (
Select!!( .
(!!. /
f!!/ 0
=>!!1 3
f!!4 5
.!!5 6
BuildNUnitFilter!!6 F
(!!F G
)!!G H
)!!H I
.!!I J
ToArray!!J Q
(!!Q R
)!!R S
)!!S T
;!!T U
}"" 	
}## 
}$$ ¢
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector4EqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class #
Vector4EqualityComparer (
:) *
IEqualityComparer+ <
<< =
Vector4= D
>D E
{		 
private

 
const

 
float

 
k_DefaultError

 *
=

+ ,
$num

- 4
;

4 5
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly #
Vector4EqualityComparer  7

m_Instance8 B
=C D
newE H#
Vector4EqualityComparerI `
(` a
)a b
;b c
public 
static #
Vector4EqualityComparer -
Instance. 6
{7 8
get9 <
{= >
return? E

m_InstanceF P
;P Q
}R S
}T U
private #
Vector4EqualityComparer '
(' (
)( )
:* +
this, 0
(0 1
k_DefaultError1 ?
)? @
{A B
}B C
public #
Vector4EqualityComparer &
(& '
float' ,
allowedError- 9
)9 :
{ 	
this 
. 
AllowedError 
= 
allowedError  ,
;, -
} 	
public;; 
bool;; 
Equals;; 
(;; 
Vector4;; "
expected;;# +
,;;+ ,
Vector4;;- 4
actual;;5 ;
);;; <
{<< 	
return== 
Utils== 
.== 
AreFloatsEqual== '
(==' (
expected==( 0
.==0 1
x==1 2
,==2 3
actual==4 :
.==: ;
x==; <
,==< =
AllowedError==> J
)==J K
&&==L N
Utils>> 
.>> 
AreFloatsEqual>> $
(>>$ %
expected>>% -
.>>- .
y>>. /
,>>/ 0
actual>>1 7
.>>7 8
y>>8 9
,>>9 :
AllowedError>>; G
)>>G H
&&>>I K
Utils?? 
.?? 
AreFloatsEqual?? $
(??$ %
expected??% -
.??- .
z??. /
,??/ 0
actual??1 7
.??7 8
z??8 9
,??9 :
AllowedError??; G
)??G H
&&??I K
Utils@@ 
.@@ 
AreFloatsEqual@@ $
(@@$ %
expected@@% -
.@@- .
w@@. /
,@@/ 0
actual@@1 7
.@@7 8
w@@8 9
,@@9 :
AllowedError@@; G
)@@G H
;@@H I
}AA 	
publicHH 
intHH 
GetHashCodeHH 
(HH 
Vector4HH &
vec4HH' +
)HH+ ,
{II 	
returnJJ 
$numJJ 
;JJ 
}KK 	
}LL 
}MM é
√D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\ImmediateEnumerableCommand.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal		 
class		 &
ImmediateEnumerableCommand		 -
:		. /!
DelegatingTestCommand		0 E
{

 
public &
ImmediateEnumerableCommand )
() *
TestCommand* 5
innerCommand6 B
)B C
: 
base 
( 
innerCommand 
)  
{! "
}# $
public 
override 

TestResult "
Execute# *
(* +!
ITestExecutionContext+ @
contextA H
)H I
{ 	
if 
( 
innerCommand 
is (
IEnumerableTestMethodCommand  <
)< =
{ 
var 
executeEnumerable %
=& '
(( )
() *(
IEnumerableTestMethodCommand* F
)F G
innerCommandG S
)S T
.T U
ExecuteEnumerableU f
(f g
contextg n
)n o
;o p
foreach 
( 
var 
iterator %
in& (
executeEnumerable) :
): ;
{ 
if 
( 
iterator  
!=! #
null$ (
)( )
{ 
throw 
new !
	Exception" +
(+ ,
$str, U
)U V
;V W
} 
} 
return 
context 
. 
CurrentResult ,
;, -
} 
return 
innerCommand 
.  
Execute  '
(' (
context( /
)/ 0
;0 1
} 	
} 
}   æ+
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\UnityPlatformAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{		 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
|. /
AttributeTargets0 @
.@ A
ClassA F
|G H
AttributeTargetsI Y
.Y Z
MethodZ `
,` a
AllowMultipleb o
=p q
truer v
,v w
	Inherited	x Å
=
Ç É
false
Ñ â
)
â ä
]
ä ã
public 

class "
UnityPlatformAttribute '
:( )
NUnitAttribute* 8
,8 9
IApplyToTest: F
{ 
public 
RuntimePlatform 
[ 
]  
include! (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
RuntimePlatform 
[ 
]  
exclude! (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
private 
string 
m_skippedReason &
;& '
public$$ "
UnityPlatformAttribute$$ %
($$% &
)$$& '
{%% 	
include&& 
=&& 
new&& 
List&& 
<&& 
RuntimePlatform&& .
>&&. /
(&&/ 0
)&&0 1
.&&1 2
ToArray&&2 9
(&&9 :
)&&: ;
;&&; <
exclude'' 
='' 
new'' 
List'' 
<'' 
RuntimePlatform'' .
>''. /
(''/ 0
)''0 1
.''1 2
ToArray''2 9
(''9 :
)'': ;
;''; <
}(( 	
public.. "
UnityPlatformAttribute.. %
(..% &
params..& ,
RuntimePlatform..- <
[..< =
]..= >
include..? F
)..F G
:// 
this// 
(// 
)// 
{00 	
this11 
.11 
include11 
=11 
include11 "
;11" #
}22 	
public88 
void88 
ApplyToTest88 
(88  
Test88  $
test88% )
)88) *
{99 	
if:: 
(:: 
test:: 
.:: 
RunState:: 
==::  
RunState::! )
.::) *
NotRunnable::* 5
||::6 8
test::9 =
.::= >
RunState::> F
==::G I
RunState::J R
.::R S
Ignored::S Z
||::[ ]
IsPlatformSupported::^ q
(::q r
Application::r }
.::} ~
platform	::~ Ü
)
::Ü á
)
::á à
{;; 
return<< 
;<< 
}== 
test>> 
.>> 
RunState>> 
=>> 
RunState>> $
.>>$ %
Skipped>>% ,
;>>, -
test?? 
.?? 

Properties?? 
.?? 
Add?? 
(??  
$str??  -
,??- .
m_skippedReason??/ >
)??> ?
;??? @
}@@ 	
internalBB 
boolBB 
IsPlatformSupportedBB )
(BB) *
RuntimePlatformBB* 9
testTargetPlatformBB: L
)BBL M
{CC 	
ifDD 
(DD 
includeDD 
.DD 
AnyDD 
(DD 
)DD 
&&DD  
!DD! "
includeDD" )
.DD) *
AnyDD* -
(DD- .
xDD. /
=>DD0 2
xDD3 4
==DD5 7
testTargetPlatformDD8 J
)DDJ K
)DDK L
{EE 
m_skippedReasonFF 
=FF  !
stringFF" (
.FF( )
FormatFF) /
(FF/ 0
$strFF0 G
,FFG H
stringFFI O
.FFO P
JoinFFP T
(FFT U
$strFFU Y
,FFY Z
includeFF[ b
.FFb c
SelectFFc i
(FFi j
xFFj k
=>FFl n
xFFo p
.FFp q
ToStringFFq y
(FFy z
)FFz {
)FF{ |
.FF| }
ToArray	FF} Ñ
(
FFÑ Ö
)
FFÖ Ü
)
FFÜ á
)
FFá à
;
FFà â
returnGG 
falseGG 
;GG 
}HH 
ifJJ 
(JJ 
excludeJJ 
.JJ 
AnyJJ 
(JJ 
xJJ 
=>JJ  
xJJ! "
==JJ# %
testTargetPlatformJJ& 8
)JJ8 9
)JJ9 :
{KK 
m_skippedReasonLL 
=LL  !
stringLL" (
.LL( )
FormatLL) /
(LL/ 0
$strLL0 G
,LLG H
stringLLI O
.LLO P
JoinLLP T
(LLT U
$strLLU Y
,LLY Z
includeLL[ b
.LLb c
SelectLLc i
(LLi j
xLLj k
=>LLl n
xLLo p
.LLp q
ToStringLLq y
(LLy z
)LLz {
)LL{ |
.LL| }
ToArray	LL} Ñ
(
LLÑ Ö
)
LLÖ Ü
)
LLÜ á
)
LLá à
;
LLà â
returnMM 
falseMM 
;MM 
}NN 
returnOO 
trueOO 
;OO 
}PP 	
}QQ 
}RR É
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\TestCommandPcHelper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class 
TestCommandPcHelper &
{ 
public 
virtual 
void 
SetEnumeratorPC +
(+ ,
IEnumerator, 7

enumerator8 B
,B C
intD G
pcH J
)J K
{		 	
} 	
public 
virtual 
int 
GetEnumeratorPC *
(* +
IEnumerator+ 6

enumerator7 A
)A B
{ 	
return 
$num 
; 
} 	
} 
} À
≈D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\ConditionalIgnoreAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

class &
ConditionalIgnoreAttribute +
:, -
NUnitAttribute. <
,< =
IApplyToTest> J
{ 
string 
m_ConditionKey 
; 
string 
m_IgnoreReason 
; 
public &
ConditionalIgnoreAttribute )
() *
string* 0
conditionKey1 =
,= >
string? E
ignoreReasonF R
)R S
{ 	
m_ConditionKey 
= 
conditionKey )
;) *
m_IgnoreReason 
= 
ignoreReason )
;) *
} 	
public 
void 
ApplyToTest 
(  
Test  $
test% )
)) *
{   	
var!! 
key!! 
=!! 
m_ConditionKey!! $
.!!$ %
ToLowerInvariant!!% 5
(!!5 6
)!!6 7
;!!7 8
if"" 
("" 
m_ConditionMap"" 
."" 
ContainsKey"" *
(""* +
key""+ .
)"". /
&&""0 2
m_ConditionMap""3 A
[""A B
key""B E
]""E F
)""F G
{## 
test$$ 
.$$ 
RunState$$ 
=$$ 
RunState$$  (
.$$( )
Ignored$$) 0
;$$0 1
string%% 

skipReason%% !
=%%" #
string%%$ *
.%%* +
Format%%+ 1
(%%1 2
m_IgnoreReason%%2 @
)%%@ A
;%%A B
test&& 
.&& 

Properties&& 
.&&  
Add&&  #
(&&# $
PropertyNames&&$ 1
.&&1 2

SkipReason&&2 <
,&&< =

skipReason&&> H
)&&H I
;&&I J
}'' 
}(( 	
static** 

Dictionary** 
<** 
string**  
,**  !
bool**" &
>**& '
m_ConditionMap**( 6
=**7 8
new**9 <

Dictionary**= G
<**G H
string**H N
,**N O
bool**P T
>**T U
(**U V
)**V W
;**W X
publicPP 
staticPP 
voidPP '
AddConditionalIgnoreMappingPP 6
(PP6 7
stringPP7 =
keyPP> A
,PPA B
boolPPC G
valuePPH M
)PPM N
{QQ 	
m_ConditionMapRR 
.RR 
AddRR 
(RR 
keyRR "
.RR" #
ToLowerInvariantRR# 3
(RR3 4
)RR4 5
,RR5 6
valueRR7 <
)RR< =
;RR= >
}SS 	
}TT 
}UU é
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\StacktraceFilter.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
static 
class 
StackTraceFilter *
{ 
private 
static 
readonly 
string  &
[& '
]' (!
s_FilteredLogMessages) >
=? @
{		 	
$str

 7
,

7 8
$str .
,. /
$str %
,% &
$str  
} 	
;	 

private 
static 
readonly 
string  &
[& '
]' (
s_LastMessages) 7
=8 9
{ 	
$str X
,X Y
$str N
} 	
;	 

public 
static 
string 
Filter #
(# $
string$ *
inputStackTrace+ :
): ;
{ 	
int 
idx 
; 
foreach 
( 
var 
lastMessage $
in% '
s_LastMessages( 6
)6 7
{ 
idx 
= 
inputStackTrace %
.% &
IndexOf& -
(- .
lastMessage. 9
)9 :
;: ;
if 
( 
idx 
!= 
- 
$num 
) 
inputStackTrace #
=$ %
inputStackTrace& 5
.5 6
	Substring6 ?
(? @
$num@ A
,A B
idxC F
)F G
;G H
} 
var    
inputStackTraceLines   $
=  % &
inputStackTrace  ' 6
.  6 7
Split  7 <
(  < =
$char  = A
)  A B
;  B C
var!! 
result!! 
=!! 
new!! 
StringBuilder!! *
(!!* +
)!!+ ,
;!!, -
foreach"" 
("" 
var"" 
line"" 
in""   
inputStackTraceLines""! 5
)""5 6
{## 
if$$ 
($$ !
s_FilteredLogMessages$$ )
.$$) *
Any$$* -
($$- .
s$$. /
=>$$0 2
line$$3 7
.$$7 8

StartsWith$$8 B
($$B C
s$$C D
)$$D E
)$$E F
)$$F G
continue%% 
;%% 
result&& 
.&& 

AppendLine&& !
(&&! "
line&&" &
)&&& '
;&&' (
}'' 
return(( 
result(( 
.(( 
ToString(( "
(((" #
)((# $
;(($ %
})) 	
}** 
}++ ¡H
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\PlaymodeTestsController.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
[ 
Serializable 
] 
[ 
AddComponentMenu 
( 
$str 
) 
] 
internal 
class #
PlaymodeTestsController *
:+ ,
MonoBehaviour- :
{ 
private 
IEnumerator 
m_TestSteps '
;' (
[ 	
SerializeField	 
] 
private 
List 
< 
string 
> !
m_AssembliesWithTests 2
;2 3
public 
List 
< 
string 
> 
AssembliesWithTests /
{ 	
get 
{ 
return !
m_AssembliesWithTests ,
;, -
} 
set 
{ !
m_AssembliesWithTests %
=& '
value( -
;- .
} 
} 	
[!! 	
SerializeField!!	 
]!! 
internal"" 
TestStartedEvent"" !
testStartedEvent""" 2
=""3 4
new""5 8
TestStartedEvent""9 I
(""I J
)""J K
;""K L
[## 	
SerializeField##	 
]## 
internal$$ 
TestFinishedEvent$$ "
testFinishedEvent$$# 4
=$$5 6
new$$7 :
TestFinishedEvent$$; L
($$L M
)$$M N
;$$N O
[%% 	
SerializeField%%	 
]%% 
internal&& 
RunStartedEvent&&  
runStartedEvent&&! 0
=&&1 2
new&&3 6
RunStartedEvent&&7 F
(&&F G
)&&G H
;&&H I
['' 	
SerializeField''	 
]'' 
internal(( 
RunFinishedEvent(( !
runFinishedEvent((" 2
=((3 4
new((5 8
RunFinishedEvent((9 I
(((I J
)((J K
;((K L
internal** 
const** 
string** '
kPlaymodeTestControllerName** 9
=**: ;
$str**< U
;**U V
[,, 	
SerializeField,,	 
],, 
public-- +
PlaymodeTestsControllerSettings-- .
settings--/ 7
=--8 9
new--: =+
PlaymodeTestsControllerSettings--> ]
(--] ^
)--^ _
;--_ `
internal// #
UnityTestAssemblyRunner// (
m_Runner//) 1
;//1 2
public11 
IEnumerator11 
Start11  
(11  !
)11! "
{22 	
yield44 
return44 
null44 
;44 
yield55 
return55 
null55 
;55 
StartCoroutine66 
(66 
Run66 
(66 
)66  
)66  !
;66! "
}77 	
internal99 
static99 
bool99 
IsControllerOnScene99 0
(990 1
)991 2
{:: 	
return;; 

GameObject;; 
.;; 
Find;; "
(;;" #'
kPlaymodeTestControllerName;;# >
);;> ?
!=;;@ B
null;;C G
;;;G H
}<< 	
internal>> 
static>> #
PlaymodeTestsController>> /
GetController>>0 =
(>>= >
)>>> ?
{?? 	
return@@ 

GameObject@@ 
.@@ 
Find@@ "
(@@" #'
kPlaymodeTestControllerName@@# >
)@@> ?
.@@? @
GetComponent@@@ L
<@@L M#
PlaymodeTestsController@@M d
>@@d e
(@@e f
)@@f g
;@@g h
}AA 	
publicCC 
IEnumeratorCC 
TestRunnerCoroutineCC .
(CC. /
)CC/ 0
{DD 	
whileEE 
(EE 
m_TestStepsEE 
.EE 
MoveNextEE '
(EE' (
)EE( )
)EE) *
{FF 
yieldGG 
returnGG 
m_TestStepsGG (
.GG( )
CurrentGG) 0
;GG0 1
}HH 
ifJJ 
(JJ 
m_RunnerJJ 
.JJ 
IsTestCompleteJJ '
)JJ' (
{KK 
runFinishedEventLL  
.LL  !
InvokeLL! '
(LL' (
m_RunnerLL( 0
.LL0 1
ResultLL1 7
)LL7 8
;LL8 9
CleanupMM 
(MM 
)MM 
;MM 
yieldOO 
returnOO 
nullOO !
;OO! "
}PP 
}QQ 	
publicSS 
IEnumeratorSS 
RunSS 
(SS 
)SS  
{TT 	!
CoroutineTestWorkItemUU !
.UU! "(
monoBehaviourCoroutineRunnerUU" >
=UU? @
thisUUA E
;UUE F

gameObjectVV 
.VV 
	hideFlagsVV  
|=VV! #
	HideFlagsVV$ -
.VV- .
DontSaveVV. 6
;VV6 7
ifXX 
(XX 
settingsXX 
.XX 

sceneBasedXX #
)XX# $
{YY 
SceneManagerZZ 
.ZZ 
	LoadSceneZZ &
(ZZ& '
$numZZ' (
,ZZ( )
LoadSceneModeZZ* 7
.ZZ7 8
AdditiveZZ8 @
)ZZ@ A
;ZZA B
yield[[ 
return[[ 
null[[ !
;[[! "
}\\ 
var^^ 
testListUtil^^ 
=^^ 
new^^ "&
PlayerTestAssemblyProvider^^# =
(^^= >
new^^> A
AssemblyLoadProxy^^B S
(^^S T
)^^T U
,^^U V!
m_AssembliesWithTests^^W l
)^^l m
;^^m n
m_Runner__ 
=__ 
new__ #
UnityTestAssemblyRunner__ 2
(__2 3
new__3 6$
UnityTestAssemblyBuilder__7 O
(__O P
)__P Q
,__Q R
new__S V#
PlaymodeWorkItemFactory__W n
(__n o
)__o p
)__p q
;__q r
varaa 
loadedTestsaa 
=aa 
m_Runneraa &
.aa& '
Loadaa' +
(aa+ ,
testListUtilaa, 8
.aa8 9
GetUserAssembliesaa9 J
(aaJ K
)aaK L
.aaL M
SelectaaM S
(aaS T
aaaT U
=>aaV X
aaaY Z
.aaZ [
Assemblyaa[ c
)aac d
.aad e
ToArrayaae l
(aal m
)aam n
,aan o
TestPlatformaap |
.aa| }
PlayMode	aa} Ö
,
aaÖ Ü&
UnityTestAssemblyBuilder
aaá ü
.
aaü †)
GetNUnitTestBuilderSettings
aa† ª
(
aaª º
TestPlatform
aaº »
.
aa» …
PlayMode
aa… —
)
aa— “
)
aa“ ”
;
aa” ‘
loadedTestsbb 
.bb "
ParseForNameDuplicatesbb .
(bb. /
)bb/ 0
;bb0 1
runStartedEventcc 
.cc 
Invokecc "
(cc" #
m_Runnercc# +
.cc+ ,

LoadedTestcc, 6
)cc6 7
;cc7 8
varee 
testListenerWrapperee #
=ee$ %
newee& )
TestListenerWrapperee* =
(ee= >
testStartedEventee> N
,eeN O
testFinishedEventeeP a
)eea b
;eeb c
m_TestStepsff 
=ff 
m_Runnerff "
.ff" #
Runff# &
(ff& '
testListenerWrapperff' :
,ff: ;
settingsff< D
.ffD E
BuildNUnitFilterffE U
(ffU V
)ffV W
)ffW X
.ffX Y
GetEnumeratorffY f
(fff g
)ffg h
;ffh i
yieldhh 
returnhh 
TestRunnerCoroutinehh ,
(hh, -
)hh- .
;hh. /
}ii 	
publickk 
voidkk 
Cleanupkk 
(kk 
)kk 
{ll 	
ifmm 
(mm 
m_Runnermm 
!=mm 
nullmm  
)mm  !
{nn 
m_Runneroo 
.oo 
StopRunoo  
(oo  !
)oo! "
;oo" #
m_Runnerpp 
=pp 
nullpp 
;pp  
}qq 
ifrr 
(rr 
Applicationrr 
.rr 
isEditorrr $
)rr$ %
{ss 
Destroytt 
(tt 

gameObjecttt "
)tt" #
;tt# $
}uu 
}vv 	
publicxx 
staticxx 
voidxx 

TryCleanupxx %
(xx% &
)xx& '
{yy 	
varzz 

controllerzz 
=zz 
GetControllerzz *
(zz* +
)zz+ ,
;zz, -
if{{ 
({{ 

controller{{ 
!={{ 
null{{ "
){{" #
{|| 

controller}} 
.}} 
Cleanup}} "
(}}" #
)}}# $
;}}$ %
}~~ 
} 	
}
ÄÄ 
}ÅÅ ˝
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\PlaymodeWorkItemFactory.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class #
PlaymodeWorkItemFactory *
:+ ,
WorkItemFactory- <
{ 
	protected 
override 
UnityWorkItem (
Create) /
(/ 0

TestMethod0 :
method; A
,A B
ITestFilterC N
filterO U
,U V
ITestW \

loadedTest] g
)g h
{		 	
return

 
new

 !
CoroutineTestWorkItem

 ,
(

, -
method

- 3
,

3 4
filter

5 ;
)

; <
;

< =
} 	
} 
} à%
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\PlayerTestAssemblyProvider.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal		 
class		 &
PlayerTestAssemblyProvider		 -
{

 
private 
IAssemblyLoadProxy "
m_AssemblyLoadProxy# 6
;6 7
private 
readonly 
List 
< 
string $
>$ %
m_AssembliesToLoad& 8
;8 9
private 
static 
List 
< 
IAssemblyWrapper ,
>, -
m_LoadedAssemblies. @
;@ A
internal &
PlayerTestAssemblyProvider +
(+ ,
IAssemblyLoadProxy, >
assemblyLoadProxy? P
,P Q
ListR V
<V W
stringW ]
>] ^
assembliesToLoad_ o
)o p
{ 	
m_AssemblyLoadProxy 
=  !
assemblyLoadProxy" 3
;3 4
m_AssembliesToLoad 
=  
assembliesToLoad! 1
;1 2
LoadAssemblies 
( 
) 
; 
} 	
public 
ITest 
GetTestsWithNUnit &
(& '
)' (
{ 	
return 

BuildTests 
( 
TestPlatform *
.* +
PlayMode+ 3
,3 4
m_LoadedAssemblies5 G
.G H
ToArrayH O
(O P
)P Q
)Q R
;R S
} 	
public 
List 
< 
IAssemblyWrapper $
>$ %
GetUserAssemblies& 7
(7 8
)8 9
{ 	
return 
m_LoadedAssemblies %
;% &
}   	
	protected"" 
static"" 
ITest"" 

BuildTests"" )
("") *
TestPlatform""* 6
testPlatform""7 C
,""C D
IAssemblyWrapper""E U
[""U V
]""V W

assemblies""X b
)""b c
{## 	
var$$ 
settings$$ 
=$$ $
UnityTestAssemblyBuilder$$ 3
.$$3 4'
GetNUnitTestBuilderSettings$$4 O
($$O P
testPlatform$$P \
)$$\ ]
;$$] ^
var%% 
builder%% 
=%% 
new%% $
UnityTestAssemblyBuilder%% 6
(%%6 7
)%%7 8
;%%8 9
return&& 
builder&& 
.&& 
Build&&  
(&&  !

assemblies&&! +
.&&+ ,
Select&&, 2
(&&2 3
a&&3 4
=>&&5 7
a&&8 9
.&&9 :
Assembly&&: B
)&&B C
.&&C D
ToArray&&D K
(&&K L
)&&L M
,&&M N

Enumerable&&O Y
.&&Y Z
Repeat&&Z `
(&&` a
testPlatform&&a m
,&&m n

assemblies&&o y
.&&y z
Length	&&z Ä
)
&&Ä Å
.
&&Å Ç
ToArray
&&Ç â
(
&&â ä
)
&&ä ã
,
&&ã å
settings
&&ç ï
)
&&ï ñ
;
&&ñ ó
}'' 	
private)) 
void)) 
LoadAssemblies)) #
())# $
)))$ %
{** 	
if++ 
(++ 
m_LoadedAssemblies++ "
!=++# %
null++& *
)++* +
{,, 
return-- 
;-- 
}.. 
m_LoadedAssemblies00 
=00  
new00! $
List00% )
<00) *
IAssemblyWrapper00* :
>00: ;
(00; <
)00< =
;00= >
foreach22 
(22 
var22 
userAssembly22 %
in22& (
m_AssembliesToLoad22) ;
)22; <
{33 
IAssemblyWrapper44  
a44! "
;44" #
try55 
{66 
a77 
=77 
m_AssemblyLoadProxy77 +
.77+ ,
Load77, 0
(770 1
userAssembly771 =
)77= >
;77> ?
}88 
catch99 
(99 !
FileNotFoundException99 ,
)99, -
{:: 
continue;; 
;;; 
}<< 
if== 
(== 
a== 
!=== 
null== 
)== 
m_LoadedAssemblies>> &
.>>& '
Add>>' *
(>>* +
a>>+ ,
)>>, -
;>>- .
}?? 
}@@ 	
}AA 
}BB ˜
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\LogScope\LogScope.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Logging  '
{ 
sealed 

class 
LogScope 
: 
	ILogScope %
{		 
static

 
List

 
<

 
LogScope

 
>

 
s_ActiveScopes

 ,
=

- .
new

/ 2
List

3 7
<

7 8
LogScope

8 @
>

@ A
(

A B
)

B C
;

C D
readonly 
object 
m_Lock 
=  
new! $
object% +
(+ ,
), -
;- .
bool 

m_Disposed 
; 
bool 
m_NeedToProcessLogs  
;  !
public 
Queue 
< 
LogMatch 
> 
ExpectedLogs +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
List 
< 
LogEvent 
> 
AllLogs %
{& '
get( +
;+ ,
}- .
public 
List 
< 
LogEvent 
> 
FailingLogs )
{* +
get, /
;/ 0
}1 2
public 
bool !
IgnoreFailingMessages )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
IsNUnitException $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
bool #
IsNUnitSuccessException +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
bool (
IsNUnitInconclusiveException 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public 
bool "
IsNUnitIgnoreException *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
string !
NUnitExceptionMessage +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
static 
LogScope 
Current &
{ 	
get 
{ 
if 
( 
s_ActiveScopes "
." #
Count# (
==) +
$num, -
)- .
throw 
new %
InvalidOperationException 7
(7 8
$str8 S
)S T
;T U
return   
s_ActiveScopes   %
[  % &
$num  & '
]  ' (
;  ( )
}!! 
}"" 	
public$$ 
static$$ 
bool$$ 
HasCurrentLogScope$$ -
($$- .
)$$. /
{%% 	
return&& 
s_ActiveScopes&& !
.&&! "
Count&&" '
>&&( )
$num&&* +
;&&+ ,
}'' 	
public)) 
LogScope)) 
()) 
))) 
{** 	
AllLogs++ 
=++ 
new++ 
List++ 
<++ 
LogEvent++ '
>++' (
(++( )
)++) *
;++* +
FailingLogs,, 
=,, 
new,, 
List,, "
<,," #
LogEvent,,# +
>,,+ ,
(,,, -
),,- .
;,,. /
ExpectedLogs-- 
=-- 
new-- 
Queue-- $
<--$ %
LogMatch--% -
>--- .
(--. /
)--/ 0
;--0 1!
IgnoreFailingMessages.. !
=.." #
false..$ )
;..) *
Activate// 
(// 
)// 
;// 
}00 	
void22 
Activate22 
(22 
)22 
{33 	
s_ActiveScopes44 
.44 
Insert44 !
(44! "
$num44" #
,44# $
this44% )
)44) *
;44* +
RegisterScope55 
(55 
this55 
)55 
;55  
Application66 
.66 &
logMessageReceivedThreaded66 2
-=663 5
AddLog666 <
;66< =
Application77 
.77 &
logMessageReceivedThreaded77 2
+=773 5
AddLog776 <
;77< =
}88 	
void:: 

Deactivate:: 
(:: 
):: 
{;; 	
Application<< 
.<< &
logMessageReceivedThreaded<< 2
-=<<3 5
AddLog<<6 <
;<<< =
s_ActiveScopes== 
.== 
Remove== !
(==! "
this==" &
)==& '
;==' (
UnregisterScope>> 
(>> 
this>>  
)>>  !
;>>! "
}?? 	
staticAA 
voidAA 
RegisterScopeAA !
(AA! "
LogScopeAA" *
logScopeAA+ 3
)AA3 4
{BB 	
ApplicationCC 
.CC &
logMessageReceivedThreadedCC 2
+=CC3 5
logScopeCC6 >
.CC> ?
AddLogCC? E
;CCE F
}DD 	
staticFF 
voidFF 
UnregisterScopeFF #
(FF# $
LogScopeFF$ ,
logScopeFF- 5
)FF5 6
{GG 	
ApplicationHH 
.HH &
logMessageReceivedThreadedHH 2
-=HH3 5
logScopeHH6 >
.HH> ?
AddLogHH? E
;HHE F
}II 	
publicKK 
voidKK 
AddLogKK 
(KK 
stringKK !
messageKK" )
,KK) *
stringKK+ 1

stacktraceKK2 <
,KK< =
LogTypeKK> E
typeKKF J
)KKJ K
{LL 	
lockMM 
(MM 
m_LockMM 
)MM 
{NN 
m_NeedToProcessLogsOO #
=OO$ %
trueOO& *
;OO* +
varPP 
logPP 
=PP 
newPP 
LogEventPP &
{QQ 
LogTypeRR 
=RR 
typeRR "
,RR" #
MessageSS 
=SS 
messageSS %
,SS% &

StackTraceTT 
=TT  

stacktraceTT! +
,TT+ ,
}UU 
;UU 
AllLogsWW 
.WW 
AddWW 
(WW 
logWW 
)WW  
;WW  !
ifYY 
(YY '
IsNUnitResultStateExceptionYY /
(YY/ 0

stacktraceYY0 :
,YY: ;
typeYY< @
)YY@ A
)YYA B
{ZZ 
if[[ 
([[ 
message[[ 
.[[  

StartsWith[[  *
([[* +
$str[[+ =
)[[= >
)[[> ?
{\\ 
IsNUnitException]] (
=]]) *
true]]+ /
;]]/ 0#
IsNUnitSuccessException^^ /
=^^0 1
true^^2 6
;^^6 7
if__ 
(__ 
message__ #
.__# $

StartsWith__$ .
(__. /
$str__/ C
)__C D
)__D E
{`` !
NUnitExceptionMessageaa 1
=aa2 3
messageaa4 ;
.aa; <
	Substringaa< E
(aaE F
$straaF Z
.aaZ [
Lengthaa[ a
)aaa b
;aab c
returnbb "
;bb" #
}cc 
}dd 
elseee 
ifee 
(ee 
messageee $
.ee$ %

StartsWithee% /
(ee/ 0
$stree0 G
)eeG H
)eeH I
{ff 
IsNUnitExceptiongg (
=gg) *
truegg+ /
;gg/ 0(
IsNUnitInconclusiveExceptionhh 4
=hh5 6
truehh7 ;
;hh; <
ifii 
(ii 
messageii #
.ii# $

StartsWithii$ .
(ii. /
$strii/ H
)iiH I
)iiI J
{jj !
NUnitExceptionMessagekk 1
=kk2 3
messagekk4 ;
.kk; <
	Substringkk< E
(kkE F
$strkkF _
.kk_ `
Lengthkk` f
)kkf g
;kkg h
returnll "
;ll" #
}mm 
}nn 
elseoo 
ifoo 
(oo 
messageoo $
.oo$ %

StartsWithoo% /
(oo/ 0
$stroo0 A
)ooA B
)ooB C
{pp 
IsNUnitExceptionqq (
=qq) *
trueqq+ /
;qq/ 0"
IsNUnitIgnoreExceptionrr .
=rr/ 0
truerr1 5
;rr5 6
ifss 
(ss 
messagess #
.ss# $

StartsWithss$ .
(ss. /
$strss/ B
)ssB C
)ssC D
{tt !
NUnitExceptionMessageuu 1
=uu2 3
messageuu4 ;
.uu; <
	Substringuu< E
(uuE F
$struuF Y
.uuY Z
LengthuuZ `
)uu` a
;uua b
returnvv "
;vv" #
}ww 
}xx 
}yy 
if{{ 
({{ 
IsFailingLog{{  
({{  !
type{{! %
){{% &
&&{{' )
!{{* +!
IgnoreFailingMessages{{+ @
){{@ A
{|| 
FailingLogs}} 
.}}  
Add}}  #
(}}# $
log}}$ '
)}}' (
;}}( )
}~~ 
} 
}
ÄÄ 	
static
ÇÇ 
bool
ÇÇ )
IsNUnitResultStateException
ÇÇ /
(
ÇÇ/ 0
string
ÇÇ0 6

stacktrace
ÇÇ7 A
,
ÇÇA B
LogType
ÇÇC J
logType
ÇÇK R
)
ÇÇR S
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
logType
ÑÑ 
!=
ÑÑ 
LogType
ÑÑ "
.
ÑÑ" #
	Exception
ÑÑ# ,
)
ÑÑ, -
return
ÖÖ 
false
ÖÖ 
;
ÖÖ 
return
áá 
string
áá 
.
áá 
IsNullOrEmpty
áá '
(
áá' (

stacktrace
áá( 2
)
áá2 3
||
áá4 6

stacktrace
áá7 A
.
ááA B

StartsWith
ááB L
(
ááL M
$str
ááM f
)
ááf g
;
áág h
}
àà 	
static
ää 
bool
ää 
IsFailingLog
ää  
(
ää  !
LogType
ää! (
type
ää) -
)
ää- .
{
ãã 	
switch
åå 
(
åå 
type
åå 
)
åå 
{
çç 
case
éé 
LogType
éé 
.
éé 
Assert
éé #
:
éé# $
case
èè 
LogType
èè 
.
èè 
Error
èè "
:
èè" #
case
êê 
LogType
êê 
.
êê 
	Exception
êê &
:
êê& '
return
ëë 
true
ëë 
;
ëë  
default
íí 
:
íí 
return
ìì 
false
ìì  
;
ìì  !
}
îî 
}
ïï 	
public
óó 
void
óó 
Dispose
óó 
(
óó 
)
óó 
{
òò 	
Dispose
ôô 
(
ôô 
true
ôô 
)
ôô 
;
ôô 
GC
öö 
.
öö 
SuppressFinalize
öö 
(
öö  
this
öö  $
)
öö$ %
;
öö% &
}
õõ 	
void
ùù 
Dispose
ùù 
(
ùù 
bool
ùù 
	disposing
ùù #
)
ùù# $
{
ûû 	
if
üü 
(
üü 

m_Disposed
üü 
)
üü 
{
†† 
return
°° 
;
°° 
}
¢¢ 

m_Disposed
§§ 
=
§§ 
true
§§ 
;
§§ 
if
¶¶ 
(
¶¶ 
	disposing
¶¶ 
)
¶¶ 
{
ßß 

Deactivate
®® 
(
®® 
)
®® 
;
®® 
}
©© 
}
™™ 	
public
¨¨ 
bool
¨¨ 
AnyFailingLogs
¨¨ "
(
¨¨" #
)
¨¨# $
{
≠≠ 	!
ProcessExpectedLogs
ÆÆ 
(
ÆÆ  
)
ÆÆ  !
;
ÆÆ! "
return
ØØ 
FailingLogs
ØØ 
.
ØØ 
Any
ØØ "
(
ØØ" #
)
ØØ# $
;
ØØ$ %
}
∞∞ 	
public
≤≤ 
void
≤≤ !
ProcessExpectedLogs
≤≤ '
(
≤≤' (
)
≤≤( )
{
≥≥ 	
lock
¥¥ 
(
¥¥ 
m_Lock
¥¥ 
)
¥¥ 
{
µµ 
if
∂∂ 
(
∂∂ 
!
∂∂ !
m_NeedToProcessLogs
∂∂ (
||
∂∂) +
!
∂∂, -
ExpectedLogs
∂∂- 9
.
∂∂9 :
Any
∂∂: =
(
∂∂= >
)
∂∂> ?
)
∂∂? @
return
∑∑ 
;
∑∑ 
LogMatch
ππ 
expectedLog
ππ $
=
ππ% &
null
ππ' +
;
ππ+ ,
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
logEvent
∫∫ %
in
∫∫& (
AllLogs
∫∫) 0
)
∫∫0 1
{
ªª 
if
ºº 
(
ºº 
!
ºº 
ExpectedLogs
ºº %
.
ºº% &
Any
ºº& )
(
ºº) *
)
ºº* +
)
ºº+ ,
break
ΩΩ 
;
ΩΩ 
if
ææ 
(
ææ 
expectedLog
ææ #
==
ææ$ &
null
ææ' +
&&
ææ, .
ExpectedLogs
ææ/ ;
.
ææ; <
Any
ææ< ?
(
ææ? @
)
ææ@ A
)
ææA B
expectedLog
øø #
=
øø$ %
ExpectedLogs
øø& 2
.
øø2 3
Peek
øø3 7
(
øø7 8
)
øø8 9
;
øø9 :
if
¡¡ 
(
¡¡ 
expectedLog
¡¡ #
!=
¡¡$ &
null
¡¡' +
&&
¡¡, .
expectedLog
¡¡/ :
.
¡¡: ;
Matches
¡¡; B
(
¡¡B C
logEvent
¡¡C K
)
¡¡K L
)
¡¡L M
{
¬¬ 
ExpectedLogs
√√ $
.
√√$ %
Dequeue
√√% ,
(
√√, -
)
√√- .
;
√√. /
logEvent
ƒƒ  
.
ƒƒ  !
	IsHandled
ƒƒ! *
=
ƒƒ+ ,
true
ƒƒ- 1
;
ƒƒ1 2
if
≈≈ 
(
≈≈ 
FailingLogs
≈≈ '
.
≈≈' (
Any
≈≈( +
(
≈≈+ ,
expectedLog
≈≈, 7
.
≈≈7 8
Matches
≈≈8 ?
)
≈≈? @
)
≈≈@ A
{
∆∆ 
var
«« 

failingLog
««  *
=
««+ ,
FailingLogs
««- 8
.
««8 9
First
««9 >
(
««> ?
expectedLog
««? J
.
««J K
Matches
««K R
)
««R S
;
««S T
FailingLogs
»» '
.
»»' (
Remove
»»( .
(
»». /

failingLog
»»/ 9
)
»»9 :
;
»»: ;
}
…… 
expectedLog
   #
=
  $ %
null
  & *
;
  * +
}
ÀÀ 
}
ÃÃ !
m_NeedToProcessLogs
ÕÕ #
=
ÕÕ$ %
false
ÕÕ& +
;
ÕÕ+ ,
}
ŒŒ 
}
œœ 	
public
—— 
void
—— "
NoUnexpectedReceived
—— (
(
——( )
)
——) *
{
““ 	
lock
”” 
(
”” 
m_Lock
”” 
)
”” 
{
‘‘ !
ProcessExpectedLogs
’’ #
(
’’# $
)
’’$ %
;
’’% &
var
◊◊ 
unhandledLog
◊◊  
=
◊◊! "
AllLogs
◊◊# *
.
◊◊* +
FirstOrDefault
◊◊+ 9
(
◊◊9 :
x
◊◊: ;
=>
◊◊< >
!
◊◊? @
x
◊◊@ A
.
◊◊A B
	IsHandled
◊◊B K
)
◊◊K L
;
◊◊L M
if
ÿÿ 
(
ÿÿ 
unhandledLog
ÿÿ  
!=
ÿÿ! #
null
ÿÿ$ (
)
ÿÿ( )
{
ŸŸ 
throw
⁄⁄ 
new
⁄⁄ *
UnhandledLogMessageException
⁄⁄ :
(
⁄⁄: ;
unhandledLog
⁄⁄; G
)
⁄⁄G H
;
⁄⁄H I
}
€€ 
}
‹‹ 
}
›› 	
}
ﬁﬁ 
}ﬂﬂ †[
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\TestCommandBuilder.cs
	namespace

 	
UnityEngine


 
.

 

TestRunner

  
.

  !
NUnitExtensions

! 0
.

0 1
Runner

1 7
{ 
internal 
static 
class 
TestCommandBuilder ,
{ 
public 
static 
TestCommand !
BuildTestCommand" 2
(2 3

TestMethod3 =
test> B
,B C
ITestFilterD O
filterP V
)V W
{ 	
if 
( 
test 
. 
RunState 
!=  
RunState! )
.) *
Runnable* 2
&&3 5
! 
( 
test 
. 
RunState 
==  "
RunState# +
.+ ,
Explicit, 4
&&5 7
filter8 >
.> ?
IsExplicitMatch? N
(N O
testO S
)S T
)T U
)U V
{ 
return 
new 
SkipCommand &
(& '
test' +
)+ ,
;, -
} 
var "
testReturnsIEnumerator &
=' (
test) -
.- .
Method. 4
.4 5

ReturnType5 ?
.? @
Type@ D
==E G
typeofH N
(N O
IEnumeratorO Z
)Z [
;[ \
TestCommand 
command 
;  
if 
( 
! "
testReturnsIEnumerator '
)' (
{ 
command 
= 
new 
TestMethodCommand /
(/ 0
test0 4
)4 5
;5 6
} 
else 
{ 
command 
= 
new '
EnumerableTestMethodCommand 9
(9 :
test: >
)> ?
;? @
}   
command"" 
="" 
new"" *
UnityLogCheckDelegatingCommand"" 8
(""8 9
command""9 @
)""@ A
;""A B
foreach## 
(## 
var## 
wrapper##  
in##! #
test##$ (
.##( )
Method##) /
.##/ 0
GetCustomAttributes##0 C
<##C D
IWrapTestMethod##D S
>##S T
(##T U
true##U Y
)##Y Z
)##Z [
{$$ 
command%% 
=%% 
wrapper%% !
.%%! "
Wrap%%" &
(%%& '
command%%' .
)%%. /
;%%/ 0
if&& 
(&& 
command&& 
==&& 
null&& #
)&&# $
{'' 
var(( 
message(( 
=((  !
String((" (
.((( )
Format(() /
(((/ 0
$str((0 p
,((p q
wrapper)) 
.))  
GetType))  '
())' (
)))( )
.))) *
FullName))* 2
)))2 3
;))3 4
return** 
new** 
FailCommand** *
(*** +
test**+ /
,**/ 0
ResultState**1 <
.**< =
Failure**= D
,**D E
message**F M
)**M N
;**N O
}++ 
if-- 
(-- "
testReturnsIEnumerator-- *
&&--+ -
!--. /
(--/ 0
command--0 7
is--8 :(
IEnumerableTestMethodCommand--; W
)--W X
)--X Y
{.. 
command// 
=// +
TryReplaceWithEnumerableCommand// =
(//= >
command//> E
)//E F
;//F G
if00 
(00 
command00 
!=00  "
null00# '
)00' (
{11 
continue22  
;22  !
}33 
var55 
message55 
=55  !
String55" (
.55( )
Format55) /
(55/ 0
$str550 |
,55| }
wrapper66 
.66  
GetType66  '
(66' (
)66( )
.66) *
FullName66* 2
,662 3
GetTestBuilderName77 *
(77* +
test77+ /
)77/ 0
)770 1
;771 2
return88 
new88 
FailCommand88 *
(88* +
test88+ /
,88/ 0
ResultState881 <
.88< =
Failure88= D
,88D E
message88F M
)88M N
;88N O
}99 
}:: 
command<< 
=<< 
new<< 
UnityEngine<< %
.<<% &
	TestTools<<& /
.<</ 0
TestActionCommand<<0 A
(<<A B
command<<B I
)<<I J
;<<J K
command== 
=== 
new== 
UnityEngine== %
.==% &
	TestTools==& /
.==/ 0 
SetUpTearDownCommand==0 D
(==D E
command==E L
)==L M
;==M N
if?? 
(?? 
!?? "
testReturnsIEnumerator?? '
)??' (
{@@ 
commandAA 
=AA 
newAA &
ImmediateEnumerableCommandAA 8
(AA8 9
commandAA9 @
)AA@ A
;AAA B
}BB 
foreachDD 
(DD 
varDD 
wrapperDD  
inDD! #
testDD$ (
.DD( )
MethodDD) /
.DD/ 0
GetCustomAttributesDD0 C
<DDC D
IWrapSetUpTearDownDDD V
>DDV W
(DDW X
trueDDX \
)DD\ ]
)DD] ^
{EE 
commandFF 
=FF 
wrapperFF !
.FF! "
WrapFF" &
(FF& '
commandFF' .
)FF. /
;FF/ 0
ifGG 
(GG 
commandGG 
==GG 
nullGG #
)GG# $
{HH 
varII 
messageII 
=II  !
StringII" (
.II( )
FormatII) /
(II/ 0
$strII0 s
,IIs t
wrapperJJ 
.JJ  
GetTypeJJ  '
(JJ' (
)JJ( )
.JJ) *
FullNameJJ* 2
)JJ2 3
;JJ3 4
returnKK 
newKK 
FailCommandKK *
(KK* +
testKK+ /
,KK/ 0
ResultStateKK1 <
.KK< =
FailureKK= D
,KKD E
messageKKF M
)KKM N
;KKN O
}LL 
ifNN 
(NN "
testReturnsIEnumeratorNN *
&&NN+ -
!NN. /
(NN/ 0
commandNN0 7
isNN8 :(
IEnumerableTestMethodCommandNN; W
)NNW X
)NNX Y
{OO 
commandPP 
=PP +
TryReplaceWithEnumerableCommandPP =
(PP= >
commandPP> E
)PPE F
;PPF G
ifQQ 
(QQ 
commandQQ 
!=QQ  "
nullQQ# '
)QQ' (
{RR 
continueSS  
;SS  !
}TT 
varVV 
messageVV 
=VV  !
StringVV" (
.VV( )
FormatVV) /
(VV/ 0
$strVV0 |
,VV| }
wrapperWW 
.WW  
GetTypeWW  '
(WW' (
)WW( )
.WW) *
FullNameWW* 2
,WW2 3
GetTestBuilderNameXX *
(XX* +
testXX+ /
)XX/ 0
)XX0 1
;XX1 2
returnYY 
newYY 
FailCommandYY *
(YY* +
testYY+ /
,YY/ 0
ResultStateYY1 <
.YY< =
FailureYY= D
,YYD E
messageYYF M
)YYM N
;YYN O
}ZZ 
}[[ 
command]] 
=]] 
new]] *
EnumerableSetUpTearDownCommand]] 8
(]]8 9
command]]9 @
)]]@ A
;]]A B
command^^ 
=^^ 
new^^ '
OuterUnityTestActionCommand^^ 5
(^^5 6
command^^6 =
)^^= >
;^^> ?
IApplyToContext`` 
[`` 
]`` 
changes`` %
=``& '
test``( ,
.``, -
Method``- 3
.``3 4
GetCustomAttributes``4 G
<``G H
IApplyToContext``H W
>``W X
(``X Y
true``Y ]
)``] ^
;``^ _
ifaa 
(aa 
changesaa 
.aa 
Lengthaa 
>aa  
$numaa! "
)aa" #
{bb 
commandcc 
=cc 
newcc 2
&EnumerableApplyChangesToContextCommandcc D
(ccD E
commandccE L
,ccL M
changesccN U
)ccU V
;ccV W
}dd 
returnff 
commandff 
;ff 
}gg 	
privateii 
staticii 
stringii 
GetTestBuilderNameii 0
(ii0 1

TestMethodii1 ;

testMethodii< F
)iiF G
{jj 	
returnkk 
newkk 
[kk 
]kk 
{ll 

testMethodmm 
.mm 
Methodmm !
.mm! "
GetCustomAttributesmm" 5
<mm5 6
ITestBuildermm6 B
>mmB C
(mmC D
truemmD H
)mmH I
.mmI J
SelectmmJ P
(mmP Q
	attributemmQ Z
=>mm[ ]
	attributemm^ g
.mmg h
GetTypemmh o
(mmo p
)mmp q
.mmq r
Namemmr v
)mmv w
,mmw x

testMethodnn 
.nn 
Methodnn !
.nn! "
GetCustomAttributesnn" 5
<nn5 6
ISimpleTestBuildernn6 H
>nnH I
(nnI J
truennJ N
)nnN O
.nnO P
SelectnnP V
(nnV W
	attributennW `
=>nna c
	attributennd m
.nnm n
GetTypennn u
(nnu v
)nnv w
.nnw x
Namennx |
)nn| }
}oo 
.oo 

SelectManyoo 
(oo 
voo 
=>oo 
voo 
)oo  
.oo  !
FirstOrDefaultoo! /
(oo/ 0
)oo0 1
;oo1 2
}pp 	
privaterr 
staticrr 
TestCommandrr "+
TryReplaceWithEnumerableCommandrr# B
(rrB C
TestCommandrrC N
commandrrO V
)rrV W
{ss 	
switchtt 
(tt 
commandtt 
.tt 
GetTypett #
(tt# $
)tt$ %
.tt% &
Namett& *
)tt* +
{uu 
casevv 
nameofvv 
(vv 
RepeatAttributevv +
.vv+ ,
RepeatedTestCommandvv, ?
)vv? @
:vv@ A
returnww 
newww )
EnumerableRepeatedTestCommandww <
(ww< =
commandww= D
aswwE G
RepeatAttributewwH W
.wwW X
RepeatedTestCommandwwX k
)wwk l
;wwl m
casexx 
nameofxx 
(xx 
RetryAttributexx *
.xx* +
RetryCommandxx+ 7
)xx7 8
:xx8 9
returnyy 
newyy &
EnumerableRetryTestCommandyy 9
(yy9 :
commandyy: A
asyyB D
RetryAttributeyyE S
.yyS T
RetryCommandyyT `
)yy` a
;yya b
defaultzz 
:zz 
return{{ 
null{{ 
;{{  
}|| 
}}} 	
}~~ 
} ’!
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\ActionDelegator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
NUnitExtensions  /
{ 
internal 
class 
ActionDelegator "
:# $
BaseDelegator% 2
{ 
private 
Func 
< 
object 
> 
m_Action %
;% &
public 
object 
Delegate 
( 
Action %
action& ,
), -
{ 	
return 
Delegate 
( 
( 
) 
=> !
{" #
action$ *
(* +
)+ ,
;, -
return. 4
null5 9
;9 :
}; <
)< =
;= >
} 	
public 
object 
Delegate 
( 
Func #
<# $
object$ *
>* +
action, 2
)2 3
{ 	
if 
( 
	m_Aborted 
) 
{ 
return 
null 
; 
} 
AssertState 
( 
) 
; 
	m_Context 
= %
UnityTestExecutionContext 1
.1 2
CurrentContext2 @
;@ A
m_Signal!! 
.!! 
Reset!! 
(!! 
)!! 
;!! 
m_Action"" 
="" 
action"" 
;"" 
WaitForSignal$$ 
($$ 
)$$ 
;$$ 
return&& 
HandleResult&& 
(&&  
)&&  !
;&&! "
}'' 	
private)) 
void)) 
AssertState))  
())  !
)))! "
{** 	
if++ 
(++ 
m_Action++ 
!=++ 
null++  
)++  !
{,, 
throw-- 
new-- 
	Exception-- #
(--# $
$str--$ =
)--= >
;--> ?
}.. 
}// 	
public11 
bool11 
	HasAction11 
(11 
)11 
{22 	
return33 
m_Action33 
!=33 
null33 #
;33# $
}44 	
public66 
void66 
Execute66 
(66 
LogScope66 $
logScope66% -
)66- .
{77 	
try88 
{99 !
SetCurrentTestContext:: %
(::% &
)::& '
;::' (
m_Result;; 
=;; 
m_Action;; #
(;;# $
);;$ %
;;;% &
if<< 
(<< 
logScope<< 
.<< 
AnyFailingLogs<< +
(<<+ ,
)<<, -
)<<- .
{== 
var>> 

failingLog>> "
=>># $
logScope>>% -
.>>- .
FailingLogs>>. 9
.>>9 :
First>>: ?
(>>? @
)>>@ A
;>>A B
throw?? 
new?? (
UnhandledLogMessageException?? :
(??: ;

failingLog??; E
)??E F
;??F G
}@@ 
ifAA 
(AA 
logScopeAA 
.AA 
ExpectedLogsAA )
.AA) *
AnyAA* -
(AA- .
)AA. /
)AA/ 0
throwBB 
newBB )
UnexpectedLogMessageExceptionBB ;
(BB; <
LogScopeBB< D
.BBD E
CurrentBBE L
.BBL M
ExpectedLogsBBM Y
.BBY Z
PeekBBZ ^
(BB^ _
)BB_ `
)BB` a
;BBa b
}CC 
catchDD 
(DD 
	ExceptionDD 
eDD 
)DD 
{EE 
m_ExceptionFF 
=FF 
eFF 
;FF  
}GG 
finallyHH 
{II 
m_ActionJJ 
=JJ 
nullJJ 
;JJ  
m_SignalKK 
.KK 
SetKK 
(KK 
)KK 
;KK 
}LL 
}MM 	
}NN 
}OO ¢
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector2ComparerWithEqualsOperator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class -
!Vector2ComparerWithEqualsOperator 2
:3 4
IEqualityComparer5 F
<F G
Vector2G N
>N O
{		 
private

 
static

 
readonly

 -
!Vector2ComparerWithEqualsOperator

  A

m_Instance

B L
=

M N
new

O R-
!Vector2ComparerWithEqualsOperator

S t
(

t u
)

u v
;

v w
public 
static -
!Vector2ComparerWithEqualsOperator 7
Instance8 @
{A B
getC F
{G H
returnI O

m_InstanceP Z
;Z [
}\ ]
}^ _
private -
!Vector2ComparerWithEqualsOperator 1
(1 2
)2 3
{4 5
}5 6
public'' 
bool'' 
Equals'' 
('' 
Vector2'' "
expected''# +
,''+ ,
Vector2''- 4
actual''5 ;
)''; <
{(( 	
return)) 
expected)) 
==)) 
actual)) %
;))% &
}** 	
public00 
int00 
GetHashCode00 
(00 
Vector200 &
vec200' +
)00+ ,
{11 	
return22 
$num22 
;22 
}33 	
}44 
}55 ∑
≈D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\UnityCombinatorialStrategy.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class &
UnityCombinatorialStrategy -
:. /!
CombinatorialStrategy0 E
,E F
ICombiningStrategyG Y
{		 
public

 
new

 
IEnumerable

 
<

 
ITestCaseData

 ,
>

, -
GetTestCases

. :
(

: ;
IEnumerable

; F
[

F G
]

G H
sources

I P
)

P Q
{ 	
var 
	testCases 
= 
base  
.  !
GetTestCases! -
(- .
sources. 5
)5 6
;6 7
foreach 
( 
var 
testCase !
in" $
	testCases% .
). /
{ 
testCase 
. 
GetType  
(  !
)! "
." #
GetProperty# .
(. /
$str/ ?
)? @
.@ A
SetValueA I
(I J
testCaseJ R
,R S
newT W
objectX ^
(^ _
)_ `
,` a
nullb f
)f g
;g h
} 
return 
	testCases 
; 
} 	
} 
} ˚
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\TestEnumerator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal		 
class		 
TestEnumerator		 !
{

 
private 
readonly !
ITestExecutionContext .
	m_Context/ 8
;8 9
private 
static 
IEnumerator "
m_TestEnumerator# 3
;3 4
public 
static 
IEnumerator !

Enumerator" ,
{- .
get/ 2
{3 4
return5 ;
m_TestEnumerator< L
;L M
}N O
}P Q
public 
static 
void 
Reset  
(  !
)! "
{ 	
m_TestEnumerator 
= 
null #
;# $
} 	
public 
TestEnumerator 
( !
ITestExecutionContext 3
context4 ;
,; <
IEnumerator= H
testEnumeratorI W
)W X
{ 	
	m_Context 
= 
context 
;  
m_TestEnumerator 
= 
testEnumerator -
;- .
} 	
public 
IEnumerator 
Execute "
(" #
)# $
{ 	
	m_Context 
. 
CurrentResult #
.# $
	SetResult$ -
(- .
ResultState. 9
.9 :
Success: A
)A B
;B C
while 
( 
true 
) 
{   
object!! 
current!! 
=!!  
null!!! %
;!!% &
try"" 
{## 
if$$ 
($$ 
!$$ 
m_TestEnumerator$$ )
.$$) *
MoveNext$$* 2
($$2 3
)$$3 4
)$$4 5
{%% 
yield&& 
break&& #
;&&# $
}'' 
if)) 
()) 
!)) 
	m_Context)) "
.))" #
CurrentResult))# 0
.))0 1
ResultState))1 <
.))< =
Equals))= C
())C D
ResultState))D O
.))O P
Success))P W
)))W X
)))X Y
{** 
yield++ 
break++ #
;++# $
},, 
current.. 
=.. 
m_TestEnumerator.. .
.... /
Current../ 6
;..6 7
}// 
catch00 
(00 
	Exception00  
	exception00! *
)00* +
{11 
	m_Context22 
.22 
CurrentResult22 +
.22+ ,
RecordException22, ;
(22; <
	exception22< E
)22E F
;22F G
yield33 
break33 
;33  
}44 
yield55 
return55 
current55 $
;55$ %
}66 
}77 	
}88 
}99 Ã(
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\TestRunCallbackListener.cs
	namespace		 	
UnityEngine		
 
.		 

TestRunner		  
.		  !
Utils		! &
{

 
internal 
class #
TestRunCallbackListener *
:+ ,
ScriptableObject- =
,= >
ITestRunnerListener? R
{ 
private 
ITestRunCallback  
[  !
]! "
m_Callbacks# .
;. /
public 
void 

RunStarted 
( 
ITest $

testsToRun% /
)/ 0
{ 	
InvokeAllCallbacks 
( 
callback '
=>( *
callback+ 3
.3 4

RunStarted4 >
(> ?

testsToRun? I
)I J
)J K
;K L
} 	
private 
static 
ITestRunCallback '
[' (
]( )
GetAllCallbacks* 9
(9 :
): ;
{ 	
var 
allAssemblies 
= 
	AppDomain  )
.) *
CurrentDomain* 7
.7 8
GetAssemblies8 E
(E F
)F G
;G H
allAssemblies 
= 
allAssemblies )
.) *
Where* /
(/ 0
x0 1
=>2 4
x5 6
.6 7#
GetReferencedAssemblies7 N
(N O
)O P
.P Q
AnyQ T
(T U
zU V
=>W Y
zZ [
.[ \
Name\ `
==a c
$strd |
)| }
)} ~
.~ 
ToArray	 Ü
(
Ü á
)
á à
;
à â
var 

attributes 
= 
allAssemblies *
.* +

SelectMany+ 5
(5 6
assembly6 >
=>? A
assemblyB J
.J K
GetCustomAttributesK ^
(^ _
typeof_ e
(e f$
TestRunCallbackAttributef ~
)~ 
,	 Ä
true
Å Ö
)
Ö Ü
.
Ü á
OfType
á ç
<
ç é&
TestRunCallbackAttribute
é ¶
>
¶ ß
(
ß ®
)
® ©
)
© ™
.
™ ´
ToArray
´ ≤
(
≤ ≥
)
≥ ¥
;
¥ µ
return 

attributes 
. 
Select $
($ %
	attribute% .
=>/ 1
	attribute2 ;
.; <
ConstructCallback< M
(M N
)N O
)O P
.P Q
ToArrayQ X
(X Y
)Y Z
;Z [
} 	
private 
void 
InvokeAllCallbacks '
(' (
Action( .
<. /
ITestRunCallback/ ?
>? @
invokerA H
)H I
{ 	
if 
( 
m_Callbacks 
== 
null #
)# $
{ 
m_Callbacks 
= 
GetAllCallbacks -
(- .
). /
;/ 0
}   
foreach"" 
("" 
var"" 
testRunCallback"" (
in"") +
m_Callbacks"", 7
)""7 8
{## 
try$$ 
{%% 
invoker&& 
(&& 
testRunCallback&& +
)&&+ ,
;&&, -
}'' 
catch(( 
((( 
	Exception((  
e((! "
)((" #
{)) 
Debug** 
.** 
LogException** &
(**& '
e**' (
)**( )
;**) *
throw++ 
;++ 
},, 
}-- 
}.. 	
public00 
void00 
RunFinished00 
(00  
ITestResult00  +
testResults00, 7
)007 8
{11 	
InvokeAllCallbacks22 
(22 
callback22 '
=>22( *
callback22+ 3
.223 4
RunFinished224 ?
(22? @
testResults22@ K
)22K L
)22L M
;22M N
}33 	
public55 
void55 
TestStarted55 
(55  
ITest55  %
test55& *
)55* +
{66 	
InvokeAllCallbacks77 
(77 
callback77 '
=>77( *
callback77+ 3
.773 4
TestStarted774 ?
(77? @
test77@ D
)77D E
)77E F
;77F G
}88 	
public:: 
void:: 
TestFinished::  
(::  !
ITestResult::! ,
result::- 3
)::3 4
{;; 	
InvokeAllCallbacks<< 
(<< 
callback<< '
=><<( *
callback<<+ 3
.<<3 4
TestFinished<<4 @
(<<@ A
result<<A G
)<<G H
)<<H I
;<<I J
}== 	
}>> 
}?? Ï
øD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Callbacks\TestResultRendererCallback.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
.* +
	Callbacks+ 4
{ 
internal 
class &
TestResultRendererCallback -
:. /
MonoBehaviour0 =
,= >
ITestRunnerListener? R
{ 
private 
TestResultRenderer "
m_ResultRenderer# 3
;3 4
public 
void 

RunStarted 
( 
ITest $

testsToRun% /
)/ 0
{		 	
}

 	
public 
void 
RunFinished 
(  
ITestResult  +
testResults, 7
)7 8
{ 	
if 
( 
Camera 
. 
main 
== 
null #
)# $
{ 

gameObject 
. 
AddComponent '
<' (
Camera( .
>. /
(/ 0
)0 1
;1 2
} 
m_ResultRenderer 
= 
new "
TestResultRenderer# 5
(5 6
testResults6 A
)A B
;B C
m_ResultRenderer 
. 
ShowResults (
(( )
)) *
;* +
} 	
public 
void 
OnGUI 
( 
) 
{ 	
if 
( 
m_ResultRenderer  
!=! #
null$ (
)( )
m_ResultRenderer  
.  !
Draw! %
(% &
)& '
;' (
} 	
public 
void 
TestStarted 
(  
ITest  %
test& *
)* +
{ 	
} 	
public   
void   
TestFinished    
(    !
ITestResult  ! ,
result  - 3
)  3 4
{!! 	
}"" 	
}## 
}$$ “
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 ?
)		? @
]		@ A
[

 
assembly

 	
:

	 

InternalsVisibleTo

 
(

 
$str

 8
)

8 9
]

9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str <
)< =
]= >
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str <
)< =
]= >
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str "
)" #
]# $≠)
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\CoroutineTestWorkItem.cs
	namespace		 	
UnityEngine		
 
.		 

TestRunner		  
.		  !
NUnitExtensions		! 0
.		0 1
Runner		1 7
{

 
internal 
class !
CoroutineTestWorkItem (
:) *
UnityWorkItem+ 8
{ 
private 
static 
MonoBehaviour $*
m_MonoBehaviourCoroutineRunner% C
;C D
private 
TestCommand 
	m_Command %
;% &
public 
static 
MonoBehaviour #(
monoBehaviourCoroutineRunner$ @
{ 	
get 
{ 
if 
( *
m_MonoBehaviourCoroutineRunner 2
==3 5
null6 :
): ;
{ 
throw 
new "
NullReferenceException 4
(4 5
$str5 ]
)] ^
;^ _
} 
return *
m_MonoBehaviourCoroutineRunner 5
;5 6
} 
set 
{ *
m_MonoBehaviourCoroutineRunner 0
=1 2
value3 8
;8 9
}: ;
} 	
public !
CoroutineTestWorkItem $
($ %

TestMethod% /
test0 4
,4 5
ITestFilter6 A
filterB H
)H I
: 
base 
( 
test 
, 
null 
) 
{ 	
	m_Command   
=   
	m_Command   !
=  " #
TestCommandBuilder  $ 6
.  6 7
BuildTestCommand  7 G
(  G H
test  H L
,  L M
filter  N T
)  T U
;  U V
}!! 	
	protected## 
override## 
IEnumerable## &
PerformWork##' 2
(##2 3
)##3 4
{$$ 	
if%% 
(%% 
	m_Command%% 
is%% 
SkipCommand%% (
)%%( )
{&& 
	m_Command'' 
.'' 
Execute'' !
(''! "
Context''" )
)'') *
;''* +
Result(( 
=(( 
Context((  
.((  !
CurrentResult((! .
;((. /
WorkItemComplete))  
())  !
)))! "
;))" #
yield** 
break** 
;** 
}++ 
if-- 
(-- 
	m_Command-- 
is-- (
ApplyChangesToContextCommand-- 9
)--9 :
{.. 
var// (
applyChangesToContextCommand// 0
=//1 2
(//3 4(
ApplyChangesToContextCommand//4 P
)//P Q
	m_Command//Q Z
;//Z [(
applyChangesToContextCommand00 ,
.00, -
ApplyChanges00- 9
(009 :
Context00: A
)00A B
;00B C
	m_Command11 
=11 (
applyChangesToContextCommand11 8
.118 9
GetInnerCommand119 H
(11H I
)11I J
;11J K
}22 
var44 '
enumerableTestMethodCommand44 +
=44, -
(44. /(
IEnumerableTestMethodCommand44/ K
)44K L
	m_Command44L U
;44U V
try55 
{66 
var77 
executeEnumerable77 %
=77& ''
enumerableTestMethodCommand77( C
.77C D
ExecuteEnumerable77D U
(77U V
Context77V ]
)77] ^
.77^ _
GetEnumerator77_ l
(77l m
)77m n
;77n o
var99 
coroutineRunner99 #
=99$ %
new99& )
CoroutineRunner99* 9
(999 :(
monoBehaviourCoroutineRunner99: V
,99V W
Context99X _
)99_ `
;99` a
yield:: 
return:: 
coroutineRunner:: ,
.::, - 
HandleEnumerableTest::- A
(::A B
executeEnumerable::B S
)::S T
;::T U
if<< 
(<< 
coroutineRunner<< #
.<<# $ 
HasFailedWithTimeout<<$ 8
(<<8 9
)<<9 :
)<<: ;
{== 
Context>> 
.>> 
CurrentResult>> )
.>>) *
	SetResult>>* 3
(>>3 4
ResultState>>4 ?
.>>? @
Failure>>@ G
,>>G H
string>>I O
.>>O P
Format>>P V
(>>V W
$str>>W }
,>>} ~
Context	>> Ü
.
>>Ü á
TestCaseTimeout
>>á ñ
)
>>ñ ó
)
>>ó ò
;
>>ò ô
}?? 
whileAA 
(AA 
executeEnumerableAA (
.AA( )
MoveNextAA) 1
(AA1 2
)AA2 3
)AA3 4
{AA5 6
}AA6 7
ResultCC 
=CC 
ContextCC  
.CC  !
CurrentResultCC! .
;CC. /
}DD 
finallyEE 
{FF 
WorkItemCompleteGG  
(GG  !
)GG! "
;GG" #
}HH 
}II 	
}JJ 
}KK È
ƒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\OuterUnityTestActionCommand.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{		 
internal

 
class

 '
OuterUnityTestActionCommand

 .
:

/ 0&
BeforeAfterTestCommandBase

1 K
<

K L!
IOuterUnityTestAction

L a
>

a b
{ 
public '
OuterUnityTestActionCommand *
(* +
TestCommand+ 6
innerCommand7 C
)C D
: 
base 
( 
innerCommand 
,  
$str! -
,- .
$str/ :
): ;
{ 	
if 
( 
Test 
. 
TypeInfo 
. 
Type "
!=# %
null& *
)* +
{ 
BeforeActions 
= )
GetUnityTestActionsFromMethod  =
(= >
Test> B
.B C
MethodC I
.I J

MethodInfoJ T
)T U
;U V
AfterActions 
= 
BeforeActions ,
;, -
} 
} 	
private 
static !
IOuterUnityTestAction ,
[, -
]- .)
GetUnityTestActionsFromMethod/ L
(L M

MethodInfoM W
methodX ^
)^ _
{ 	
var 

attributes 
= 
method #
.# $
GetCustomAttributes$ 7
(7 8
false8 =
)= >
;> ?
List 
< !
IOuterUnityTestAction &
>& '
actions( /
=0 1
new2 5
List6 :
<: ;!
IOuterUnityTestAction; P
>P Q
(Q R
)R S
;S T
foreach 
( 
var 
	attribute "
in# %

attributes& 0
)0 1
{ 
if 
( 
	attribute 
is  !
IOuterUnityTestAction! 6
)6 7
actions 
. 
Add 
(  
	attribute  )
as* ,!
IOuterUnityTestAction- B
)B C
;C D
} 
return 
actions 
. 
ToArray "
(" #
)# $
;$ %
}   	
	protected"" 
override"" 
IEnumerator"" &
InvokeBefore""' 3
(""3 4!
IOuterUnityTestAction""4 I
action""J P
,""P Q
Test""R V
test""W [
,""[ \%
UnityTestExecutionContext""] v
context""w ~
)""~ 
{## 	
return$$ 
action$$ 
.$$ 

BeforeTest$$ $
($$$ %
test$$% )
)$$) *
;$$* +
}%% 	
	protected'' 
override'' 
IEnumerator'' &
InvokeAfter''' 2
(''2 3!
IOuterUnityTestAction''3 H
action''I O
,''O P
Test''Q U
test''V Z
,''Z [%
UnityTestExecutionContext''\ u
context''v }
)''} ~
{(( 	
return)) 
action)) 
.)) 
	AfterTest)) #
())# $
test))$ (
)))( )
;))) *
}** 	
	protected,, 
override,, '
BeforeAfterTestCommandState,, 6
GetState,,7 ?
(,,? @%
UnityTestExecutionContext,,@ Y
context,,Z a
),,a b
{-- 	
return.. 
context.. 
... %
OuterUnityTestActionState.. 4
;..4 5
}// 	
}00 
}11 ¢
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector3ComparerWithEqualsOperator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class -
!Vector3ComparerWithEqualsOperator 2
:3 4
IEqualityComparer5 F
<F G
Vector3G N
>N O
{		 
private

 
static

 
readonly

 -
!Vector3ComparerWithEqualsOperator

  A

m_Instance

B L
=

M N
new

O R-
!Vector3ComparerWithEqualsOperator

S t
(

t u
)

u v
;

v w
public 
static -
!Vector3ComparerWithEqualsOperator 7
Instance8 @
{A B
getC F
{G H
returnI O

m_InstanceP Z
;Z [
}\ ]
}^ _
private -
!Vector3ComparerWithEqualsOperator 1
(1 2
)2 3
{4 5
}5 6
public'' 
bool'' 
Equals'' 
('' 
Vector3'' "
expected''# +
,''+ ,
Vector3''- 4
actual''5 ;
)''; <
{(( 	
return)) 
expected)) 
==)) 
actual)) %
;))% &
}** 	
public00 
int00 
GetHashCode00 
(00 
Vector300 &
vec300' +
)00+ ,
{11 	
return22 
$num22 
;22 
}33 	
}44 
}55 ®

ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\TestPlatform.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[ 
Flags 

]
 
[		 
Serializable		 
]		 
public

 

enum

 
TestPlatform

 
:

 
byte

 #
{ 
All 
= 
$num 
, 
EditMode 
= 
$num 
<< 
$num 
, 
PlayMode 
= 
$num 
<< 
$num 
} 
internal 
static 
class &
TestPlatformEnumExtensions 4
{ 
public 
static 
bool 
IsFlagIncluded )
() *
this* .
TestPlatform/ ;
flags< A
,A B
TestPlatformC O
flagP T
)T U
{ 	
return 
( 
flags 
& 
flag  
)  !
==" $
flag% )
;) *
} 	
}   
}!! Ï
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\InvalidSignatureException.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class %
InvalidSignatureException ,
:- . 
ResultStateException/ C
{ 
public %
InvalidSignatureException (
(( )
string) /
message0 7
)7 8
:		 
base		 
(		 
message		 
)		 
{

 	
} 	
public 
override 
ResultState #
ResultState$ /
{ 	
get 
{ 
return 
ResultState $
.$ %
NotRunnable% 0
;0 1
}2 3
} 	
} 
} †
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Callbacks\PlayerQuitHandler.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
.* +
	Callbacks+ 4
{ 
internal 
class 
PlayerQuitHandler $
:% &
MonoBehaviour' 4
,4 5
ITestRunnerListener6 I
{ 
public		 
void		 
Start		 
(		 
)		 
{

 	
PlayerConnection 
. 
instance %
.% &
Register& .
(. /&
PlayerConnectionMessageIds/ I
.I J
quitPlayerMessageIdJ ]
,] ^%
ProcessPlayerQuiteMessage_ x
)x y
;y z
} 	
private 
void %
ProcessPlayerQuiteMessage .
(. /
MessageEventArgs/ ?
arg0@ D
)D E
{ 	
PlayerConnection 
. 
instance %
.% &
DisconnectAll& 3
(3 4
)4 5
;5 6
if 
( 
Application 
. 
platform $
==% '
RuntimePlatform( 7
.7 8
XboxOne8 ?
)? @
{ 
return 
; 
} 
Application 
. 
Quit 
( 
) 
; 
} 	
public 
void 

RunStarted 
( 
ITest $

testsToRun% /
)/ 0
{ 	
} 	
public 
void 
RunFinished 
(  
ITestResult  +
testResults, 7
)7 8
{   	
}!! 	
public## 
void## 
TestStarted## 
(##  
ITest##  %
test##& *
)##* +
{$$ 	
}%% 	
public'' 
void'' 
TestFinished''  
(''  !
ITestResult''! ,
result''- 3
)''3 4
{(( 	
})) 	
}** 
}++ âÒ
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\CompositeWorkItem.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class 
CompositeWorkItem $
:% &
UnityWorkItem' 4
{ 
private 
readonly 
	TestSuite "
_suite# )
;) *
private 
readonly 
TestSuiteResult (
_suiteResult) 5
;5 6
private 
readonly 
ITestFilter $
_childFilter% 1
;1 2
private 
TestCommand 
_setupCommand )
;) *
private 
TestCommand 
_teardownCommand ,
;, -
public 
List 
< 
UnityWorkItem !
>! "
Children# +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
private 
int 
_countOrder 
;  
private 
CountdownEvent 
_childTestCountdown 2
;2 3
public 
CompositeWorkItem  
(  !
	TestSuite! *
suite+ 0
,0 1
ITestFilter2 =
childFilter> I
,I J
WorkItemFactoryK Z
factory[ b
)b c
: 
base 
( 
suite 
, 
factory !
)! "
{   	
_suite!! 
=!! 
suite!! 
;!! 
_suiteResult"" 
="" 
Result"" !
as""" $
TestSuiteResult""% 4
;""4 5
_childFilter## 
=## 
childFilter## &
;##& '
_countOrder$$ 
=$$ 
$num$$ 
;$$ 
}%% 	
	protected'' 
override'' 
IEnumerable'' &
PerformWork''' 2
(''2 3
)''3 4
{(( 	.
"InitializeSetUpAndTearDownCommands)) .
()). /
)))/ 0
;))0 1
if++ 
(++ %
UnityTestExecutionContext++ )
.++) *
CurrentContext++* 8
!=++9 ;
null++< @
&&++A C$
m_DontRunRestoringResult++D \
&&++] _!
EditModeTestCallbacks++` u
.++u v!
RestoringTestContext	++v ä
!=
++ã ç
null
++é í
)
++í ì
{,, !
EditModeTestCallbacks-- %
.--% & 
RestoringTestContext--& :
(--: ;
)--; <
;--< =
}.. 
if00 
(00 
!00  
CheckForCancellation00 %
(00% &
)00& '
)00' (
if11 
(11 
Test11 
.11 
RunState11 !
==11" $
RunState11% -
.11- .
Explicit11. 6
&&117 9
!11: ;
_childFilter11; G
.11G H
IsExplicitMatch11H W
(11W X
Test11X \
)11\ ]
)11] ^
SkipFixture22 
(22  
ResultState22  +
.22+ ,
Explicit22, 4
,224 5
GetSkipReason226 C
(22C D
)22D E
,22E F
null22G K
)22K L
;22L M
else33 
switch44 
(44 
Test44  
.44  !
RunState44! )
)44) *
{55 
default66 
:66  
case77 
RunState77 %
.77% &
Runnable77& .
:77. /
case88 
RunState88 %
.88% &
Explicit88& .
:88. /
Result99 "
.99" #
	SetResult99# ,
(99, -
ResultState99- 8
.998 9
Success999 @
)99@ A
;99A B 
CreateChildWorkItems;; 0
(;;0 1
);;1 2
;;;2 3
if== 
(==  
Children==  (
.==( )
Count==) .
>==/ 0
$num==1 2
)==2 3
{>> 
if??  "
(??# $
!??$ %$
m_DontRunRestoringResult??% =
)??= >
{@@  !
yieldCC$ )
returnCC* 0
nullCC1 5
;CC5 6
PerformOneTimeSetUpDD$ 7
(DD7 8
)DD8 9
;DD9 :
}EE  !
ifGG  "
(GG# $
!GG$ % 
CheckForCancellationGG% 9
(GG9 :
)GG: ;
)GG; <
{HH  !
switchII$ *
(II+ ,
ResultII, 2
.II2 3
ResultStateII3 >
.II> ?
StatusII? E
)IIE F
{JJ$ %
caseKK( ,

TestStatusKK- 7
.KK7 8
PassedKK8 >
:KK> ?
foreachLL, 3
(LL4 5
varLL5 8
childLL9 >
inLL? A
RunChildrenLLB M
(LLM N
)LLN O
)LLO P
{MM, -
ifNN0 2
(NN3 4 
CheckForCancellationNN4 H
(NNH I
)NNI J
)NNJ K
{OO0 1
yieldPP4 9
breakPP: ?
;PP? @
}QQ0 1
yieldSS0 5
returnSS6 <
childSS= B
;SSB C
}TT, -
breakUU, 1
;UU1 2
caseVV( ,

TestStatusVV- 7
.VV7 8
SkippedVV8 ?
:VV? @
caseWW( ,

TestStatusWW- 7
.WW7 8
InconclusiveWW8 D
:WWD E
caseXX( ,

TestStatusXX- 7
.XX7 8
FailedXX8 >
:XX> ?
SkipChildrenYY, 8
(YY8 9
_suiteYY9 ?
,YY? @
ResultYYA G
.YYG H
ResultStateYYH S
.YYS T
WithSiteYYT \
(YY\ ]
FailureSiteYY] h
.YYh i
ParentYYi o
)YYo p
,YYp q
$str	YYr Ç
+
YYÉ Ñ
Result
YYÖ ã
.
YYã å
Message
YYå ì
)
YYì î
;
YYî ï
breakZZ, 1
;ZZ1 2
}[[$ %
}\\  !
if^^  "
(^^# $
Context^^$ +
.^^+ ,
ExecutionStatus^^, ;
!=^^< >
TestExecutionStatus^^? R
.^^R S
AbortRequested^^S a
&&^^b d
!^^e f$
m_DontRunRestoringResult^^f ~
)^^~ 
{__  !"
PerformOneTimeTearDown``$ :
(``: ;
)``; <
;``< =
}aa  !
}bb 
breakcc !
;cc! "
caseee 
RunStateee %
.ee% &
Skippedee& -
:ee- .
SkipFixtureff '
(ff' (
ResultStateff( 3
.ff3 4
Skippedff4 ;
,ff; <
GetSkipReasonff= J
(ffJ K
)ffK L
,ffL M
nullffN R
)ffR S
;ffS T
breakgg !
;gg! "
caseii 
RunStateii %
.ii% &
Ignoredii& -
:ii- .
SkipFixturejj '
(jj' (
ResultStatejj( 3
.jj3 4
Ignoredjj4 ;
,jj; <
GetSkipReasonjj= J
(jjJ K
)jjK L
,jjL M
nulljjN R
)jjR S
;jjS T
breakkk !
;kk! "
casemm 
RunStatemm %
.mm% &
NotRunnablemm& 1
:mm1 2
SkipFixturenn '
(nn' (
ResultStatenn( 3
.nn3 4
NotRunnablenn4 ?
,nn? @
GetSkipReasonnnA N
(nnN O
)nnO P
,nnP Q!
GetProviderStackTracennR g
(nng h
)nnh i
)nni j
;nnj k
breakoo !
;oo! "
}pp 
ifqq 
(qq 
!qq "
ResultedInDomainReloadqq '
)qq' (
{rr 
WorkItemCompletess  
(ss  !
)ss! "
;ss" #
}tt 
}uu 	
privateww 
boolww  
CheckForCancellationww )
(ww) *
)ww* +
{xx 	
ifyy 
(yy 
Contextyy 
.yy 
ExecutionStatusyy '
!=yy( *
TestExecutionStatusyy+ >
.yy> ?
Runningyy? F
)yyF G
{zz 
Result{{ 
.{{ 
	SetResult{{  
({{  !
ResultState{{! ,
.{{, -
	Cancelled{{- 6
,{{6 7
$str{{8 P
){{P Q
;{{Q R
return|| 
true|| 
;|| 
}}} 
return 
false 
; 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 0
"InitializeSetUpAndTearDownCommands
ÇÇ 7
(
ÇÇ7 8
)
ÇÇ8 9
{
ÉÉ 	
List
ÑÑ 
<
ÑÑ 
SetUpTearDownItem
ÑÑ "
>
ÑÑ" # 
setUpTearDownItems
ÑÑ$ 6
=
ÑÑ7 8
_suite
ÑÑ9 ?
.
ÑÑ? @
TypeInfo
ÑÑ@ H
!=
ÑÑI K
null
ÑÑL P
?
ÖÖ 
CommandBuilder
ÖÖ  
.
ÖÖ  !$
BuildSetUpTearDownList
ÖÖ! 7
(
ÖÖ7 8
_suite
ÖÖ8 >
.
ÖÖ> ?
TypeInfo
ÖÖ? G
.
ÖÖG H
Type
ÖÖH L
,
ÖÖL M
typeof
ÖÖN T
(
ÖÖT U#
OneTimeSetUpAttribute
ÖÖU j
)
ÖÖj k
,
ÖÖk l
typeof
ÖÖm s
(
ÖÖs t'
OneTimeTearDownAttributeÖÖt å
)ÖÖå ç
)ÖÖç é
:
ÜÜ 
new
ÜÜ 
List
ÜÜ 
<
ÜÜ 
SetUpTearDownItem
ÜÜ ,
>
ÜÜ, -
(
ÜÜ- .
)
ÜÜ. /
;
ÜÜ/ 0
var
àà 
actionItems
àà 
=
àà 
new
àà !
List
àà" &
<
àà& '
TestActionItem
àà' 5
>
àà5 6
(
àà6 7
)
àà7 8
;
àà8 9
foreach
ââ 
(
ââ 
ITestAction
ââ  
action
ââ! '
in
ââ( *
Actions
ââ+ 2
)
ââ2 3
{
ää 
bool
ãã 
applyToSuite
ãã !
=
ãã" #
(
ãã$ %
action
ãã% +
.
ãã+ ,
Targets
ãã, 3
&
ãã4 5
ActionTargets
ãã6 C
.
ããC D
Suite
ããD I
)
ããI J
==
ããK M
ActionTargets
ããN [
.
ãã[ \
Suite
ãã\ a
||
åå 
action
åå 
.
åå 
Targets
åå %
==
åå& (
ActionTargets
åå) 6
.
åå6 7
Default
åå7 >
&&
åå? A
!
ååB C
(
ååC D
Test
ååD H
is
ååI K&
ParameterizedMethodSuite
ååL d
)
ååd e
;
ååe f
bool
éé 
applyToTest
éé  
=
éé! "
(
éé# $
action
éé$ *
.
éé* +
Targets
éé+ 2
&
éé3 4
ActionTargets
éé5 B
.
ééB C
Test
ééC G
)
ééG H
==
ééI K
ActionTargets
ééL Y
.
ééY Z
Test
ééZ ^
&&
èè 
!
èè 
(
èè 
Test
èè 
is
èè  &
ParameterizedMethodSuite
èè! 9
)
èè9 :
;
èè: ;
if
ëë 
(
ëë 
applyToSuite
ëë  
)
ëë  !
actionItems
íí 
.
íí  
Add
íí  #
(
íí# $
new
íí$ '
TestActionItem
íí( 6
(
íí6 7
action
íí7 =
)
íí= >
)
íí> ?
;
íí? @
if
îî 
(
îî 
applyToTest
îî 
)
îî  
Context
ïï 
.
ïï 
UpstreamActions
ïï +
.
ïï+ ,
Add
ïï, /
(
ïï/ 0
action
ïï0 6
)
ïï6 7
;
ïï7 8
}
ññ 
_setupCommand
òò 
=
òò 
CommandBuilder
òò *
.
òò* +%
MakeOneTimeSetUpCommand
òò+ B
(
òòB C
_suite
òòC I
,
òòI J 
setUpTearDownItems
òòK ]
,
òò] ^
actionItems
òò_ j
)
òòj k
;
òòk l
_teardownCommand
ôô 
=
ôô 
CommandBuilder
ôô -
.
ôô- .(
MakeOneTimeTearDownCommand
ôô. H
(
ôôH I
_suite
ôôI O
,
ôôO P 
setUpTearDownItems
ôôQ c
,
ôôc d
actionItems
ôôe p
)
ôôp q
;
ôôq r
}
öö 	
private
úú 
void
úú !
PerformOneTimeSetUp
úú (
(
úú( )
)
úú) *
{
ùù 	
var
ûû 
logScope
ûû 
=
ûû 
new
ûû 
LogScope
ûû '
(
ûû' (
)
ûû( )
;
ûû) *
try
üü 
{
†† 
_setupCommand
°° 
.
°° 
Execute
°° %
(
°°% &
Context
°°& -
)
°°- .
;
°°. /
}
¢¢ 
catch
££ 
(
££ 
	Exception
££ 
ex
££ 
)
££  
{
§§ 
if
•• 
(
•• 
ex
•• 
is
•• 
NUnitException
•• (
||
••) +
ex
••, .
is
••/ 1'
TargetInvocationException
••2 K
)
••K L
ex
¶¶ 
=
¶¶ 
ex
¶¶ 
.
¶¶ 
InnerException
¶¶ *
;
¶¶* +
Result
®® 
.
®® 
RecordException
®® &
(
®®& '
ex
®®' )
,
®®) *
FailureSite
®®+ 6
.
®®6 7
SetUp
®®7 <
)
®®< =
;
®®= >
}
©© 
if
´´ 
(
´´ 
logScope
´´ 
.
´´ 
AnyFailingLogs
´´ '
(
´´' (
)
´´( )
)
´´) *
{
¨¨ 
Result
≠≠ 
.
≠≠ 
RecordException
≠≠ &
(
≠≠& '
new
≠≠' **
UnhandledLogMessageException
≠≠+ G
(
≠≠G H
logScope
≠≠H P
.
≠≠P Q
FailingLogs
≠≠Q \
.
≠≠\ ]
First
≠≠] b
(
≠≠b c
)
≠≠c d
)
≠≠d e
)
≠≠e f
;
≠≠f g
}
ÆÆ 
logScope
ØØ 
.
ØØ 
Dispose
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
IEnumerable
≤≤ 
RunChildren
≤≤ '
(
≤≤' (
)
≤≤( )
{
≥≥ 	
int
¥¥ 

childCount
¥¥ 
=
¥¥ 
Children
¥¥ %
.
¥¥% &
Count
¥¥& +
;
¥¥+ ,
if
µµ 
(
µµ 

childCount
µµ 
==
µµ 
$num
µµ 
)
µµ  
throw
∂∂ 
new
∂∂ '
InvalidOperationException
∂∂ 3
(
∂∂3 4
$str
∂∂4 a
)
∂∂a b
;
∂∂b c!
_childTestCountdown
∏∏ 
=
∏∏  !
new
∏∏" %
CountdownEvent
∏∏& 4
(
∏∏4 5

childCount
∏∏5 ?
)
∏∏? @
;
∏∏@ A
foreach
∫∫ 
(
∫∫ 
UnityWorkItem
∫∫ "
child
∫∫# (
in
∫∫) +
Children
∫∫, 4
)
∫∫4 5
{
ªª 
if
ºº 
(
ºº "
CheckForCancellation
ºº (
(
ºº( )
)
ºº) *
)
ºº* +
{
ΩΩ 
yield
ææ 
break
ææ 
;
ææ  
}
øø 
var
¡¡ '
unityTestExecutionContext
¡¡ -
=
¡¡. /
new
¡¡0 3'
UnityTestExecutionContext
¡¡4 M
(
¡¡M N
Context
¡¡N U
)
¡¡U V
;
¡¡V W
child
¬¬ 
.
¬¬ 
InitializeContext
¬¬ '
(
¬¬' ('
unityTestExecutionContext
¬¬( A
)
¬¬A B
;
¬¬B C
var
ƒƒ 

enumerable
ƒƒ 
=
ƒƒ  
child
ƒƒ! &
.
ƒƒ& '
Execute
ƒƒ' .
(
ƒƒ. /
)
ƒƒ/ 0
.
ƒƒ0 1
GetEnumerator
ƒƒ1 >
(
ƒƒ> ?
)
ƒƒ? @
;
ƒƒ@ A
while
∆∆ 
(
∆∆ 
true
∆∆ 
)
∆∆ 
{
«« 
if
»» 
(
»» 
!
»» 

enumerable
»» #
.
»»# $
MoveNext
»»$ ,
(
»», -
)
»»- .
)
»». /
{
…… 
break
   
;
   
}
ÀÀ $
ResultedInDomainReload
ÃÃ *
|=
ÃÃ+ -
child
ÃÃ. 3
.
ÃÃ3 4$
ResultedInDomainReload
ÃÃ4 J
;
ÃÃJ K
yield
ÕÕ 
return
ÕÕ  

enumerable
ÕÕ! +
.
ÕÕ+ ,
Current
ÕÕ, 3
;
ÕÕ3 4
}
ŒŒ 
_suiteResult
–– 
.
–– 
	AddResult
–– &
(
––& '
child
––' ,
.
––, -
Result
––- 3
)
––3 4
;
––4 5

childCount
—— 
--
—— 
;
—— 
}
““ 
if
‘‘ 
(
‘‘ 

childCount
‘‘ 
>
‘‘ 
$num
‘‘ 
)
‘‘ 
{
’’ 
while
÷÷ 
(
÷÷ 

childCount
÷÷ !
--
÷÷! #
>
÷÷$ %
$num
÷÷& '
)
÷÷' ( 
CountDownChildTest
◊◊ &
(
◊◊& '
)
◊◊' (
;
◊◊( )
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ "
CreateChildWorkItems
€€ )
(
€€) *
)
€€* +
{
‹‹ 	
Children
›› 
=
›› 
new
›› 
List
›› 
<
››  
UnityWorkItem
››  -
>
››- .
(
››. /
)
››/ 0
;
››0 1
var
ﬁﬁ 
	testSuite
ﬁﬁ 
=
ﬁﬁ 
_suite
ﬁﬁ "
;
ﬁﬁ" #
foreach
‡‡ 
(
‡‡ 
ITest
‡‡ 
test
‡‡ 
in
‡‡  "
	testSuite
‡‡# ,
.
‡‡, -
Tests
‡‡- 2
)
‡‡2 3
{
·· 
if
‚‚ 
(
‚‚ 
_childFilter
‚‚  
.
‚‚  !
Pass
‚‚! %
(
‚‚% &
test
‚‚& *
)
‚‚* +
)
‚‚+ ,
{
„„ 
var
‰‰ 
child
‰‰ 
=
‰‰ 
	m_Factory
‰‰  )
.
‰‰) *
Create
‰‰* 0
(
‰‰0 1
test
‰‰1 5
,
‰‰5 6
_childFilter
‰‰7 C
)
‰‰C D
;
‰‰D E
if
ÊÊ 
(
ÊÊ 
test
ÊÊ 
.
ÊÊ 

Properties
ÊÊ '
.
ÊÊ' (
ContainsKey
ÊÊ( 3
(
ÊÊ3 4
PropertyNames
ÊÊ4 A
.
ÊÊA B
Order
ÊÊB G
)
ÊÊG H
)
ÊÊH I
{
ÁÁ 
Children
ËË  
.
ËË  !
Insert
ËË! '
(
ËË' (
$num
ËË( )
,
ËË) *
child
ËË+ 0
)
ËË0 1
;
ËË1 2
_countOrder
ÈÈ #
++
ÈÈ# %
;
ÈÈ% &
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
Children
ÌÌ  
.
ÌÌ  !
Add
ÌÌ! $
(
ÌÌ$ %
child
ÌÌ% *
)
ÌÌ* +
;
ÌÌ+ ,
}
ÓÓ 
}
ÔÔ 
}
 
if
ÚÚ 
(
ÚÚ 
_countOrder
ÚÚ 
!=
ÚÚ 
$num
ÚÚ  
)
ÚÚ  !
SortChildren
ÚÚ" .
(
ÚÚ. /
)
ÚÚ/ 0
;
ÚÚ0 1
}
ÛÛ 	
private
ıı 
class
ıı (
UnityWorkItemOrderComparer
ıı 0
:
ıı1 2
	IComparer
ıı3 <
<
ıı< =
UnityWorkItem
ıı= J
>
ııJ K
{
ˆˆ 	
public
˜˜ 
int
˜˜ 
Compare
˜˜ 
(
˜˜ 
UnityWorkItem
˜˜ ,
x
˜˜- .
,
˜˜. /
UnityWorkItem
˜˜0 =
y
˜˜> ?
)
˜˜? @
{
¯¯ 
var
˘˘ 
xKey
˘˘ 
=
˘˘ 
int
˘˘ 
.
˘˘ 
MaxValue
˘˘ '
;
˘˘' (
var
˙˙ 
yKey
˙˙ 
=
˙˙ 
int
˙˙ 
.
˙˙ 
MaxValue
˙˙ '
;
˙˙' (
if
¸¸ 
(
¸¸ 
x
¸¸ 
.
¸¸ 
Test
¸¸ 
.
¸¸ 

Properties
¸¸ %
.
¸¸% &
ContainsKey
¸¸& 1
(
¸¸1 2
PropertyNames
¸¸2 ?
.
¸¸? @
Order
¸¸@ E
)
¸¸E F
)
¸¸F G
xKey
˝˝ 
=
˝˝ 
(
˝˝ 
int
˝˝ 
)
˝˝  
x
˝˝  !
.
˝˝! "
Test
˝˝" &
.
˝˝& '

Properties
˝˝' 1
[
˝˝1 2
PropertyNames
˝˝2 ?
.
˝˝? @
Order
˝˝@ E
]
˝˝E F
[
˝˝F G
$num
˝˝G H
]
˝˝H I
;
˝˝I J
if
ˇˇ 
(
ˇˇ 
y
ˇˇ 
.
ˇˇ 
Test
ˇˇ 
.
ˇˇ 

Properties
ˇˇ %
.
ˇˇ% &
ContainsKey
ˇˇ& 1
(
ˇˇ1 2
PropertyNames
ˇˇ2 ?
.
ˇˇ? @
Order
ˇˇ@ E
)
ˇˇE F
)
ˇˇF G
yKey
ÄÄ 
=
ÄÄ 
(
ÄÄ 
int
ÄÄ 
)
ÄÄ  
y
ÄÄ  !
.
ÄÄ! "
Test
ÄÄ" &
.
ÄÄ& '

Properties
ÄÄ' 1
[
ÄÄ1 2
PropertyNames
ÄÄ2 ?
.
ÄÄ? @
Order
ÄÄ@ E
]
ÄÄE F
[
ÄÄF G
$num
ÄÄG H
]
ÄÄH I
;
ÄÄI J
return
ÇÇ 
xKey
ÇÇ 
.
ÇÇ 
	CompareTo
ÇÇ %
(
ÇÇ% &
yKey
ÇÇ& *
)
ÇÇ* +
;
ÇÇ+ ,
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
SortChildren
ÜÜ !
(
ÜÜ! "
)
ÜÜ" #
{
áá 	
Children
àà 
.
àà 
Sort
àà 
(
àà 
$num
àà 
,
àà 
_countOrder
àà (
,
àà( )
new
àà* -(
UnityWorkItemOrderComparer
àà. H
(
ààH I
)
ààI J
)
ààJ K
;
ààK L
}
ââ 	
private
ãã 
void
ãã 
SkipFixture
ãã  
(
ãã  !
ResultState
ãã! ,
resultState
ãã- 8
,
ãã8 9
string
ãã: @
message
ããA H
,
ããH I
string
ããJ P

stackTrace
ããQ [
)
ãã[ \
{
åå 	
Result
çç 
.
çç 
	SetResult
çç 
(
çç 
resultState
çç (
.
çç( )
WithSite
çç) 1
(
çç1 2
FailureSite
çç2 =
.
çç= >
SetUp
çç> C
)
ççC D
,
ççD E
message
ççF M
,
ççM N
StackFilter
ççO Z
.
ççZ [
Filter
çç[ a
(
çça b

stackTrace
ççb l
)
ççl m
)
ççm n
;
ççn o
SkipChildren
éé 
(
éé 
_suite
éé 
,
éé  
resultState
éé! ,
.
éé, -
WithSite
éé- 5
(
éé5 6
FailureSite
éé6 A
.
ééA B
Parent
ééB H
)
ééH I
,
ééI J
$str
ééK [
+
éé\ ]
message
éé^ e
)
éée f
;
ééf g
}
èè 	
private
ëë 
void
ëë 
SkipChildren
ëë !
(
ëë! "
	TestSuite
ëë" +
suite
ëë, 1
,
ëë1 2
ResultState
ëë3 >
resultState
ëë? J
,
ëëJ K
string
ëëL R
message
ëëS Z
)
ëëZ [
{
íí 	
foreach
ìì 
(
ìì 
Test
ìì 
child
ìì 
in
ìì  "
suite
ìì# (
.
ìì( )
Tests
ìì) .
)
ìì. /
{
îî 
if
ïï 
(
ïï 
_childFilter
ïï  
.
ïï  !
Pass
ïï! %
(
ïï% &
child
ïï& +
)
ïï+ ,
)
ïï, -
{
ññ 
Context
óó 
.
óó 
Listener
óó $
.
óó$ %
TestStarted
óó% 0
(
óó0 1
child
óó1 6
)
óó6 7
;
óó7 8

TestResult
òò 
childResult
òò *
=
òò+ ,
child
òò- 2
.
òò2 3
MakeTestResult
òò3 A
(
òòA B
)
òòB C
;
òòC D
childResult
ôô 
.
ôô  
	SetResult
ôô  )
(
ôô) *
resultState
ôô* 5
,
ôô5 6
message
ôô7 >
)
ôô> ?
;
ôô? @
_suiteResult
öö  
.
öö  !
	AddResult
öö! *
(
öö* +
childResult
öö+ 6
)
öö6 7
;
öö7 8
if
úú 
(
úú 
child
úú 
.
úú 
IsSuite
úú %
)
úú% &
SkipChildren
ùù $
(
ùù$ %
(
ùù% &
	TestSuite
ùù& /
)
ùù/ 0
child
ùù0 5
,
ùù5 6
resultState
ùù7 B
,
ùùB C
message
ùùD K
)
ùùK L
;
ùùL M
Context
üü 
.
üü 
Listener
üü $
.
üü$ %
TestFinished
üü% 1
(
üü1 2
childResult
üü2 =
)
üü= >
;
üü> ?
}
†† 
}
°° 
}
¢¢ 	
private
§§ 
void
§§ $
PerformOneTimeTearDown
§§ +
(
§§+ ,
)
§§, -
{
•• 	
var
¶¶ 
logScope
¶¶ 
=
¶¶ 
new
¶¶ 
LogScope
¶¶ '
(
¶¶' (
)
¶¶( )
;
¶¶) *
try
ßß 
{
®® 
_teardownCommand
©©  
.
©©  !
Execute
©©! (
(
©©( )
Context
©©) 0
)
©©0 1
;
©©1 2
}
™™ 
catch
´´ 
(
´´ 
	Exception
´´ 
ex
´´ 
)
´´  
{
¨¨ 
if
≠≠ 
(
≠≠ 
ex
≠≠ 
is
≠≠ 
NUnitException
≠≠ (
||
≠≠) +
ex
≠≠, .
is
≠≠/ 1'
TargetInvocationException
≠≠2 K
)
≠≠K L
ex
ÆÆ 
=
ÆÆ 
ex
ÆÆ 
.
ÆÆ 
InnerException
ÆÆ *
;
ÆÆ* +
Result
∞∞ 
.
∞∞ 
RecordException
∞∞ &
(
∞∞& '
ex
∞∞' )
,
∞∞) *
FailureSite
∞∞+ 6
.
∞∞6 7
SetUp
∞∞7 <
)
∞∞< =
;
∞∞= >
}
±± 
if
≥≥ 
(
≥≥ 
logScope
≥≥ 
.
≥≥ 
AnyFailingLogs
≥≥ '
(
≥≥' (
)
≥≥( )
)
≥≥) *
{
¥¥ 
Result
µµ 
.
µµ 
RecordException
µµ &
(
µµ& '
new
µµ' **
UnhandledLogMessageException
µµ+ G
(
µµG H
logScope
µµH P
.
µµP Q
FailingLogs
µµQ \
.
µµ\ ]
First
µµ] b
(
µµb c
)
µµc d
)
µµd e
)
µµe f
;
µµf g
}
∂∂ 
logScope
∑∑ 
.
∑∑ 
Dispose
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
}
∏∏ 	
private
∫∫ 
string
∫∫ 
GetSkipReason
∫∫ $
(
∫∫$ %
)
∫∫% &
{
ªª 	
return
ºº 
(
ºº 
string
ºº 
)
ºº 
Test
ºº 
.
ºº  

Properties
ºº  *
.
ºº* +
Get
ºº+ .
(
ºº. /
PropertyNames
ºº/ <
.
ºº< =

SkipReason
ºº= G
)
ººG H
;
ººH I
}
ΩΩ 	
private
øø 
string
øø #
GetProviderStackTrace
øø ,
(
øø, -
)
øø- .
{
¿¿ 	
return
¡¡ 
(
¡¡ 
string
¡¡ 
)
¡¡ 
Test
¡¡ 
.
¡¡  

Properties
¡¡  *
.
¡¡* +
Get
¡¡+ .
(
¡¡. /
PropertyNames
¡¡/ <
.
¡¡< = 
ProviderStackTrace
¡¡= O
)
¡¡O P
;
¡¡P Q
}
¬¬ 	
private
ƒƒ 
void
ƒƒ  
CountDownChildTest
ƒƒ '
(
ƒƒ' (
)
ƒƒ( )
{
≈≈ 	!
_childTestCountdown
∆∆ 
.
∆∆  
Signal
∆∆  &
(
∆∆& '
)
∆∆' (
;
∆∆( )
if
«« 
(
«« !
_childTestCountdown
«« #
.
««# $
CurrentCount
««$ 0
==
««1 3
$num
««4 5
)
««5 6
{
»» 
if
…… 
(
…… 
Context
…… 
.
…… 
ExecutionStatus
…… +
!=
……, .!
TestExecutionStatus
……/ B
.
……B C
AbortRequested
……C Q
)
……Q R$
PerformOneTimeTearDown
   *
(
  * +
)
  + ,
;
  , -
foreach
ÃÃ 
(
ÃÃ 
var
ÃÃ 
childResult
ÃÃ (
in
ÃÃ) +
_suiteResult
ÃÃ, 8
.
ÃÃ8 9
Children
ÃÃ9 A
)
ÃÃA B
if
ÕÕ 
(
ÕÕ 
childResult
ÕÕ #
.
ÕÕ# $
ResultState
ÕÕ$ /
==
ÕÕ0 2
ResultState
ÕÕ3 >
.
ÕÕ> ?
	Cancelled
ÕÕ? H
)
ÕÕH I
{
ŒŒ 
this
œœ 
.
œœ 
Result
œœ #
.
œœ# $
	SetResult
œœ$ -
(
œœ- .
ResultState
œœ. 9
.
œœ9 :
	Cancelled
œœ: C
,
œœC D
$str
œœE X
)
œœX Y
;
œœY Z
break
–– 
;
–– 
}
—— 
WorkItemComplete
””  
(
””  !
)
””! "
;
””" #
}
‘‘ 
}
’’ 	
public
◊◊ 
override
◊◊ 
void
◊◊ 
Cancel
◊◊ #
(
◊◊# $
bool
◊◊$ (
force
◊◊) .
)
◊◊. /
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
Children
ŸŸ 
==
ŸŸ 
null
ŸŸ  
)
ŸŸ  !
return
⁄⁄ 
;
⁄⁄ 
foreach
‹‹ 
(
‹‹ 
var
‹‹ 
child
‹‹ 
in
‹‹ !
Children
‹‹" *
)
‹‹* +
{
›› 
var
ﬁﬁ 
ctx
ﬁﬁ 
=
ﬁﬁ 
child
ﬁﬁ 
.
ﬁﬁ  
Context
ﬁﬁ  '
;
ﬁﬁ' (
if
ﬂﬂ 
(
ﬂﬂ 
ctx
ﬂﬂ 
!=
ﬂﬂ 
null
ﬂﬂ 
)
ﬂﬂ  
ctx
‡‡ 
.
‡‡ 
ExecutionStatus
‡‡ '
=
‡‡( )
force
‡‡* /
?
‡‡0 1!
TestExecutionStatus
‡‡2 E
.
‡‡E F
AbortRequested
‡‡F T
:
‡‡U V!
TestExecutionStatus
‡‡W j
.
‡‡j k
StopRequested
‡‡k x
;
‡‡x y
if
‚‚ 
(
‚‚ 
child
‚‚ 
.
‚‚ 
State
‚‚ 
==
‚‚  "
WorkItemState
‚‚# 0
.
‚‚0 1
Running
‚‚1 8
)
‚‚8 9
child
„„ 
.
„„ 
Cancel
„„  
(
„„  !
force
„„! &
)
„„& '
;
„„' (
}
‰‰ 
}
ÂÂ 	
}
ÊÊ 
}ÁÁ à6
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\TestResultExtensions.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
{ 
internal 
static 
class  
TestResultExtensions .
{		 
public

 
static

 
void

 #
RecordPrefixedException

 2
(

2 3
this

3 7

TestResult

8 B

testResult

C M
,

M N
string

O U
prefix

V \
,

\ ]
	Exception

^ g
ex

h j
,

j k
ResultState

l w
resultState	

x É
=


Ñ Ö
null


Ü ä
)


ä ã
{ 	
if 
( 
ex 
is 
NUnitException $
)$ %
{ 
ex 
= 
ex 
. 
InnerException &
;& '
} 
if 
( 
resultState 
== 
null #
)# $
{ 
resultState 
= 

testResult (
.( )
ResultState) 4
==5 7
ResultState8 C
.C D
	CancelledD M
? 
ResultState !
.! "
	Cancelled" +
: 
ResultState !
.! "
Error" '
;' (
} 
var 
exceptionMessage  
=! "
ExceptionHelper# 2
.2 3
BuildMessage3 ?
(? @
ex@ B
)B C
;C D
string 

stackTrace 
= 
$str  $
+% &
prefix' -
+. /
NUnit0 5
.5 6
Env6 9
.9 :
NewLine: A
+B C
ExceptionHelperD S
.S T
BuildStackTraceT c
(c d
exd f
)f g
;g h
if 
( 

testResult 
. 

StackTrace %
!=& (
null) -
)- .
{ 

stackTrace 
= 

testResult '
.' (

StackTrace( 2
+3 4
NUnit5 :
.: ;
Env; >
.> ?
NewLine? F
+G H

stackTraceI S
;S T
} 
if   
(   

testResult   
.   
Test   
.    
IsSuite    '
)  ' (
{!! 
resultState"" 
="" 
resultState"" )
."") *
WithSite""* 2
(""2 3
FailureSite""3 >
.""> ?
TearDown""? G
)""G H
;""H I
}## 
if%% 
(%% 
ex%% 
is%%  
ResultStateException%% *
)%%* +
{&& 
exceptionMessage''  
=''! "
ex''# %
.''% &
Message''& -
;''- .
resultState(( 
=(( 
((( 
(((   
ResultStateException((  4
)((4 5
ex((5 7
)((7 8
.((8 9
ResultState((9 D
;((D E

stackTrace)) 
=)) 
StackFilter)) (
.))( )
Filter))) /
())/ 0
ex))0 2
.))2 3

StackTrace))3 =
)))= >
;))> ?
}** 
string,, 
message,, 
=,, 
(,, 
string,, $
.,,$ %
IsNullOrEmpty,,% 2
(,,2 3
prefix,,3 9
),,9 :
?,,; <
$str,,= ?
:,,@ A
(,,B C
prefix,,C I
+,,J K
$str,,L Q
),,Q R
),,R S
+,,T U
exceptionMessage,,V f
;,,f g
if-- 
(-- 

testResult-- 
.-- 
Message-- "
!=--# %
null--& *
)--* +
{.. 
message// 
=// 

testResult// $
.//$ %
Message//% ,
+//- .
NUnit/// 4
.//4 5
Env//5 8
.//8 9
NewLine//9 @
+//A B
message//C J
;//J K
}00 

testResult22 
.22 
	SetResult22  
(22  !
resultState22! ,
,22, -
message22. 5
,225 6

stackTrace227 A
)22A B
;22B C
}33 	
public55 
static55 
void55 
RecordPrefixedError55 .
(55. /
this55/ 3

TestResult554 >

testResult55? I
,55I J
string55K Q
prefix55R X
,55X Y
string55Z `
error55a f
,55f g
ResultState55h s
resultState55t 
=
55Ä Å
null
55Ç Ü
)
55Ü á
{77 	
if88 
(88 
resultState88 
==88 
null88 #
)88# $
{99 
resultState:: 
=:: 

testResult:: (
.::( )
ResultState::) 4
==::5 7
ResultState::8 C
.::C D
	Cancelled::D M
?;; 
ResultState;; !
.;;! "
	Cancelled;;" +
:<< 
ResultState<< !
.<<! "
Error<<" '
;<<' (
}== 
if?? 
(?? 

testResult?? 
.?? 
Test?? 
.??  
IsSuite??  '
)??' (
{@@ 
resultStateAA 
=AA 
resultStateAA )
.AA) *
WithSiteAA* 2
(AA2 3
FailureSiteAA3 >
.AA> ?
TearDownAA? G
)AAG H
;AAH I
}BB 
stringDD 
messageDD 
=DD 
(DD 
stringDD $
.DD$ %
IsNullOrEmptyDD% 2
(DD2 3
prefixDD3 9
)DD9 :
?DD; <
$strDD= ?
:DD@ A
(DDB C
prefixDDC I
+DDJ K
$strDDL Q
)DDQ R
)DDR S
+DDT U
errorDDV [
;DD[ \
ifEE 
(EE 

testResultEE 
.EE 
MessageEE "
!=EE# %
nullEE& *
)EE* +
{FF 
messageGG 
=GG 

testResultGG $
.GG$ %
MessageGG% ,
+GG- .
NUnitGG/ 4
.GG4 5
EnvGG5 8
.GG8 9
NewLineGG9 @
+GGA B
messageGGC J
;GGJ K
}HH 

testResultJJ 
.JJ 
	SetResultJJ  
(JJ  !
resultStateJJ! ,
,JJ, -
messageJJ. 5
)JJ5 6
;JJ6 7
}KK 	
}LL 
}MM Ä
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\MonoBehaviourTest\IMonoBehaviourTest.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

	interface 
IMonoBehaviourTest '
{ 
bool		 
IsTestFinished		 
{		 
get		  
;		  !
}		" #
}

 
} ⁄
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\MonoBehaviourTest\MonoBehaviourTest.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

class 
MonoBehaviourTest "
<" #
T# $
>$ %
:& '"
CustomYieldInstruction( >
where? D
TE F
:G H
MonoBehaviourI V
,V W
IMonoBehaviourTestX j
{ 
public

 
T

 
	component

 
{

 
get

  
;

  !
}

" #
public 

GameObject 

gameObject $
{% &
get' *
{+ ,
return- 3
	component4 =
.= >

gameObject> H
;H I
}J K
}L M
public++ 
MonoBehaviourTest++  
(++  !
bool++! %
dontDestroyOnLoad++& 7
=++8 9
true++: >
)++> ?
{,, 	
var-- 
go-- 
=-- 
new-- 

GameObject-- #
(--# $
$str--$ 9
+--: ;
typeof--< B
(--B C
T--C D
)--D E
.--E F
FullName--F N
)--N O
;--O P
	component.. 
=.. 
go.. 
... 
AddComponent.. '
<..' (
T..( )
>..) *
(..* +
)..+ ,
;.., -
if// 
(// 
dontDestroyOnLoad// !
)//! "
{00 
Object11 
.11 
DontDestroyOnLoad11 (
(11( )
go11) +
)11+ ,
;11, -
}22 
}33 	
public77 
override77 
bool77 
keepWaiting77 (
{88 	
get99 
{99 
return99 
!99 
	component99 #
.99# $
IsTestFinished99$ 2
;992 3
}994 5
}:: 	
};; 
}<< ˛
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Filters\AssemblyNameFilter.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Filters1 8
{ 
internal 
class 
AssemblyNameFilter %
:& '
ValueMatchFilter( 8
{ 
public		 
AssemblyNameFilter		 !
(		! "
string		" (
assemblyName		) 5
)		5 6
:		7 8
base		9 =
(		= >
assemblyName		> J
)		J K
{		L M
}		M N
public 
override 
bool 
Match "
(" #
ITest# (
test) -
)- .
{ 	
string 
assemblyName 
=  !
string" (
.( )
Empty) .
;. /
if 
( 
test 
. 
TypeInfo 
!=  
null! %
&&& (
test) -
.- .
TypeInfo. 6
.6 7
Assembly7 ?
!=@ B
nullC G
&&H J
testK O
.O P
TypeInfoP X
.X Y
FullNameY a
!=b d
nulle i
)i j
assemblyName 
= 
test #
.# $
TypeInfo$ ,
., -
Assembly- 5
.5 6
FullName6 >
.> ?
	Substring? H
(H I
$numI J
,J K
testL P
.P Q
TypeInfoQ Y
.Y Z
AssemblyZ b
.b c
FullNamec k
.k l
IndexOfl s
(s t
$chart w
)w x
)x y
.y z
TrimEnd	z Å
(
Å Ç
$char
Ç Ö
)
Ö Ü
;
Ü á
return 
ExpectedValue  
.  !
Equals! '
(' (
assemblyName( 4
,4 5
StringComparison6 F
.F G
OrdinalIgnoreCaseG X
)X Y
;Y Z
} 	
	protected 
override 
string !
ElementName" -
{ 	
get 
{ 
return 
$str 
; 
}  
} 	
} 
} îj
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\TestExtensions.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
{ 
internal		 
static		 
class		 
TestExtensions		 (
{

 
private 
static 
IEnumerable "
<" #
string# )
>) *
GetTestCategories+ <
(< =
this= A
ITestB G
testH L
)L M
{ 	
var 

categories 
= 
test !
.! "

Properties" ,
[, -
PropertyNames- :
.: ;
Category; C
]C D
.D E
CastE I
<I J
stringJ P
>P Q
(Q R
)R S
.S T
ToListT Z
(Z [
)[ \
;\ ]
if 
( 

categories 
. 
Count  
==! #
$num$ %
&&& (
test) -
is. 0

TestMethod1 ;
); <
{ 
var 
fixtureCategories %
=& '
test( ,
., -
Parent- 3
.3 4

Properties4 >
[> ?
PropertyNames? L
.L M
CategoryM U
]U V
.V W
CastW [
<[ \
string\ b
>b c
(c d
)d e
.e f
ToListf l
(l m
)m n
;n o
if 
( 
fixtureCategories %
.% &
Count& +
==, .
$num/ 0
)0 1

categories 
. 
Add "
(" #"
CategoryFilterExtended# 9
.9 :
k_DefaultCategory: K
)K L
;L M
} 
return 

categories 
; 
} 	
public 
static 
bool 
HasCategory &
(& '
this' +
ITest, 1
test2 6
,6 7
string8 >
[> ?
]? @
categoryFilterA O
)O P
{ 	
var 

categories 
= 
test !
.! "$
GetAllCategoriesFromTest" :
(: ;
); <
.< =
Distinct= E
(E F
)F G
;G H
return 
categoryFilter !
.! "
Any" %
(% &
c& '
=>( *

categories+ 5
.5 6
Any6 9
(9 :
r: ;
=>< >
r? @
==A C
cD E
)E F
)F G
;G H
} 	
public 
static 
List 
< 
string !
>! "$
GetAllCategoriesFromTest# ;
(; <
this< @
ITestA F
testG K
)K L
{   	
if!! 
(!! 
test!! 
.!! 
Parent!! 
==!! 
null!! #
)!!# $
return"" 
test"" 
."" 
GetTestCategories"" -
(""- .
)"". /
.""/ 0
ToList""0 6
(""6 7
)""7 8
;""8 9
var$$ 

categories$$ 
=$$ $
GetAllCategoriesFromTest$$ 5
($$5 6
test$$6 :
.$$: ;
Parent$$; A
)$$A B
;$$B C

categories%% 
.%% 
AddRange%% 
(%%  
test%%  $
.%%$ %
GetTestCategories%%% 6
(%%6 7
)%%7 8
)%%8 9
;%%9 :
return&& 

categories&& 
;&& 
}'' 	
public)) 
static)) 
void)) "
ParseForNameDuplicates)) 1
())1 2
this))2 6
ITest))7 <
test))= A
)))A B
{** 	
var++ 

duplicates++ 
=++ 
new++  

Dictionary++! +
<+++ ,
string++, 2
,++2 3
int++4 7
>++7 8
(++8 9
)++9 :
;++: ;
for,, 
(,, 
var,, 
i,, 
=,, 
$num,, 
;,, 
i,, 
<,, 
test,,  $
.,,$ %
Tests,,% *
.,,* +
Count,,+ 0
;,,0 1
i,,2 3
++,,3 5
),,5 6
{-- 
var.. 
child.. 
=.. 
test..  
...  !
Tests..! &
[..& '
i..' (
]..( )
;..) *
int// 
count// 
;// 
if00 
(00 

duplicates00 
.00 
TryGetValue00 *
(00* +
child00+ 0
.000 1
FullName001 9
,009 :
out00; >
count00? D
)00D E
)00E F
{11 
count22 
++22 
;22 
child33 
.33 

Properties33 $
.33$ %
Add33% (
(33( )
$str33) 5
,335 6
count337 <
)33< =
;33= >

duplicates44 
[44 
child44 $
.44$ %
FullName44% -
]44- .
=44/ 0
count441 6
;446 7
}55 
else66 
{77 

duplicates88 
.88 
Add88 "
(88" #
child88# (
.88( )
FullName88) 1
,881 2
$num883 4
)884 5
;885 6
}99 "
ParseForNameDuplicates:: &
(::& '
child::' ,
)::, -
;::- .
};; 
}<< 	
public>> 
static>> 
int>> 
GetChildIndex>> '
(>>' (
this>>( ,
ITest>>- 2
test>>3 7
)>>7 8
{?? 	
var@@ 
index@@ 
=@@ 
test@@ 
.@@ 

Properties@@ '
[@@' (
$str@@( 4
]@@4 5
;@@5 6
returnAA 
(AA 
intAA 
)AA 
indexAA 
[AA 
$numAA 
]AA  
;AA  !
}BB 	
publicDD 
staticDD 
boolDD 
HasChildIndexDD (
(DD( )
thisDD) -
ITestDD. 3
testDD4 8
)DD8 9
{EE 	
varFF 
indexFF 
=FF 
testFF 
.FF 

PropertiesFF '
[FF' (
$strFF( 4
]FF4 5
;FF5 6
returnGG 
indexGG 
.GG 
CountGG 
>GG  
$numGG! "
;GG" #
}HH 	
staticJJ 
stringJJ 
GetAncestorPathJJ %
(JJ% &
ITestJJ& +
testJJ, 0
)JJ0 1
{KK 	
varLL 
pathLL 
=LL 
$strLL 
;LL 
varMM 

testParentMM 
=MM 
testMM !
.MM! "
ParentMM" (
;MM( )
whileOO 
(OO 

testParentOO 
!=OO  
nullOO! %
&&OO& (

testParentOO) 3
.OO3 4
ParentOO4 :
!=OO; =
nullOO> B
&&OOC E
!OOF G
stringOOG M
.OOM N
IsNullOrEmptyOON [
(OO[ \

testParentOO\ f
.OOf g
NameOOg k
)OOk l
)OOl m
{PP 
pathQQ 
=QQ 

testParentQQ !
.QQ! "
NameQQ" &
+QQ' (
$strQQ) ,
+QQ- .
pathQQ/ 3
;QQ3 4

testParentRR 
=RR 

testParentRR '
.RR' (
ParentRR( .
;RR. /
}SS 
returnUU 
pathUU 
;UU 
}VV 	
publicXX 
staticXX 
stringXX 
GetUniqueNameXX *
(XX* +
thisXX+ /
ITestXX0 5
testXX6 :
)XX: ;
{YY 	
varZZ 
idZZ 
=ZZ 
GetAncestorPathZZ $
(ZZ$ %
testZZ% )
)ZZ) *
+ZZ+ ,
GetFullNameZZ- 8
(ZZ8 9
testZZ9 =
)ZZ= >
;ZZ> ?
if[[ 
([[ 
test[[ 
.[[ 
HasChildIndex[[ "
([[" #
)[[# $
)[[$ %
{\\ 
var]] 
index]] 
=]] 
test]]  
.]]  !
GetChildIndex]]! .
(]]. /
)]]/ 0
;]]0 1
if^^ 
(^^ 
index^^ 
>=^^ 
$num^^ 
)^^ 
id__ 
+=__ 
index__ 
;__  
}`` 
ifaa 
(aa 
testaa 
.aa 
IsSuiteaa 
)aa 
{bb 
idcc 
+=cc 
$strcc 
;cc  
}dd 
returnee 
idee 
;ee 
}ff 	
publichh 
statichh 
stringhh 
GetFullNamehh (
(hh( )
ITesthh) .
testhh/ 3
)hh3 4
{ii 	
varjj 
typeInfojj 
=jj 
testjj 
.jj  
TypeInfojj  (
??jj) +
testjj, 0
.jj0 1
Parentjj1 7
?jj7 8
.jj8 9
TypeInfojj9 A
??jjB D
testjjE I
.jjI J
TestsjjJ O
.jjO P
FirstOrDefaultjjP ^
(jj^ _
)jj_ `
?jj` a
.jja b
TypeInfojjb j
;jjj k
ifkk 
(kk 
typeInfokk 
==kk 
nullkk  
)kk  !
{ll 
returnmm 
$strmm 
+mm 
testmm !
.mm! "
Namemm" &
+mm' (
$strmm) ,
;mm, -
}nn 
varpp 

assemblyIdpp 
=pp 
typeInfopp %
.pp% &
Assemblypp& .
.pp. /
GetNamepp/ 6
(pp6 7
)pp7 8
.pp8 9
Namepp9 =
;pp= >
ifqq 
(qq 

assemblyIdqq 
==qq 
testqq "
.qq" #
Nameqq# '
)qq' (
{rr 
returnss 
$"ss 
[ss 
{ss 
testss 
.ss  
Namess  $
}ss$ %
]ss% &
"ss& '
;ss' (
}tt 
returnvv 
stringvv 
.vv 
Formatvv  
(vv  !
$strvv! -
,vv- .

assemblyIdvv/ 9
,vv9 :
testvv; ?
.vv? @
FullNamevv@ H
)vvH I
;vvI J
}ww 	
publicyy 
staticyy 
stringyy 
GetSkipReasonyy *
(yy* +
thisyy+ /
ITestyy0 5
testyy6 :
)yy: ;
{zz 	
if{{ 
({{ 
test{{ 
.{{ 

Properties{{ 
.{{  
ContainsKey{{  +
({{+ ,
PropertyNames{{, 9
.{{9 :

SkipReason{{: D
){{D E
){{E F
return|| 
(|| 
string|| 
)|| 
test|| #
.||# $

Properties||$ .
.||. /
Get||/ 2
(||2 3
PropertyNames||3 @
.||@ A

SkipReason||A K
)||K L
;||L M
return~~ 
null~~ 
;~~ 
} 	
public
ÅÅ 
static
ÅÅ 
string
ÅÅ 
GetParentId
ÅÅ (
(
ÅÅ( )
this
ÅÅ) -
ITest
ÅÅ. 3
test
ÅÅ4 8
)
ÅÅ8 9
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
test
ÉÉ 
.
ÉÉ 
Parent
ÉÉ 
!=
ÉÉ 
null
ÉÉ #
)
ÉÉ# $
return
ÑÑ 
test
ÑÑ 
.
ÑÑ 
Parent
ÑÑ "
.
ÑÑ" #
Id
ÑÑ# %
;
ÑÑ% &
return
ÜÜ 
null
ÜÜ 
;
ÜÜ 
}
áá 	
public
ââ 
static
ââ 
string
ââ 
GetParentFullName
ââ .
(
ââ. /
this
ââ/ 3
ITest
ââ4 9
test
ââ: >
)
ââ> ?
{
ää 	
if
ãã 
(
ãã 
test
ãã 
.
ãã 
Parent
ãã 
!=
ãã 
null
ãã #
)
ãã# $
return
åå 
test
åå 
.
åå 
Parent
åå "
.
åå" #
FullName
åå# +
;
åå+ ,
return
éé 
null
éé 
;
éé 
}
èè 	
public
ëë 
static
ëë 
string
ëë !
GetParentUniqueName
ëë 0
(
ëë0 1
this
ëë1 5
ITest
ëë6 ;
test
ëë< @
)
ëë@ A
{
íí 	
if
ìì 
(
ìì 
test
ìì 
.
ìì 
Parent
ìì 
!=
ìì 
null
ìì #
)
ìì# $
return
îî 
GetUniqueName
îî $
(
îî$ %
test
îî% )
.
îî) *
Parent
îî* 0
)
îî0 1
;
îî1 2
return
ññ 
null
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô ˙
…D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\RemoteTestResultDataWithTestData.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
[		 
Serializable		 
]		 
internal

 
class

 ,
 RemoteTestResultDataWithTestData

 3
{ 
public  
RemoteTestResultData #
[# $
]$ %
results& -
;- .
public 
RemoteTestData 
[ 
] 
tests  %
;% &
} 
} Ñí
√D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\BeforeAfterTestCommandBase.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
abstract 
class &
BeforeAfterTestCommandBase 6
<6 7
T7 8
>8 9
:: ;!
DelegatingTestCommand< Q
,Q R(
IEnumerableTestMethodCommandS o
{ 
private 
string 
m_BeforeErrorPrefix *
;* +
private 
string 
m_AfterErrorPrefix )
;) *
private 
bool #
m_SkipYieldAfterActions ,
;, -
	protected &
BeforeAfterTestCommandBase ,
(, -
TestCommand- 8
innerCommand9 E
,E F
stringG M
beforeErrorPrefixN _
,_ `
stringa g
afterErrorPrefixh x
,x y
boolz ~"
skipYieldAfterActions	 î
=
ï ñ
false
ó ú
)
ú ù
: 
base 
( 
innerCommand 
)  
{ 	
m_BeforeErrorPrefix 
=  !
beforeErrorPrefix" 3
;3 4
m_AfterErrorPrefix 
=  
afterErrorPrefix! 1
;1 2#
m_SkipYieldAfterActions #
=$ %!
skipYieldAfterActions& ;
;; <
} 	
internal 
Func 
< 
long 
> 
	GetUtcNow %
=& '
(( )
)) *
=>+ -
new. 1
DateTimeOffset2 @
(@ A
DateTimeA I
.I J
UtcNowJ P
)P Q
.Q R"
ToUnixTimeMillisecondsR h
(h i
)i j
;j k
	protected 
T 
[ 
] 
BeforeActions #
=$ %
new& )
T* +
[+ ,
$num, -
]- .
;. /
	protected   
T   
[   
]   
AfterActions   "
=  # $
new  % (
T  ) *
[  * +
$num  + ,
]  , -
;  - .
	protected"" 
abstract"" 
IEnumerator"" &
InvokeBefore""' 3
(""3 4
T""4 5
action""6 <
,""< =
Test""> B
test""C G
,""G H%
UnityTestExecutionContext""I b
context""c j
)""j k
;""k l
	protected$$ 
abstract$$ 
IEnumerator$$ &
InvokeAfter$$' 2
($$2 3
T$$3 4
action$$5 ;
,$$; <
Test$$= A
test$$B F
,$$F G%
UnityTestExecutionContext$$H a
context$$b i
)$$i j
;$$j k
	protected&& 
abstract&& '
BeforeAfterTestCommandState&& 6
GetState&&7 ?
(&&? @%
UnityTestExecutionContext&&@ Y
context&&Z a
)&&a b
;&&b c
public(( 
IEnumerable(( 
ExecuteEnumerable(( ,
(((, -!
ITestExecutionContext((- B
context((C J
)((J K
{)) 	
var** 
unityContext** 
=** 
(**  %
UnityTestExecutionContext**  9
)**9 :
context**: A
;**A B
var++ 
state++ 
=++ 
GetState++  
(++  !
unityContext++! -
)++- .
;++. /
if-- 
(-- 
state-- 
==-- 
null-- 
)-- 
{.. 
state00 
=00 
ScriptableObject00 (
.00( )
CreateInstance00) 7
<007 8'
BeforeAfterTestCommandState008 S
>00S T
(00T U
)00U V
;00V W
}11 
state33 
.33 
ApplyTestResult33 !
(33! "
context33" )
.33) *
CurrentResult33* 7
)337 8
;338 9
while55 
(55 
state55 
.55 
NextBeforeStepIndex55 ,
<55- .
BeforeActions55/ <
.55< =
Length55= C
)55C D
{66 
state77 
.77 
	Timestamp77 
=77  !
	GetUtcNow77" +
(77+ ,
)77, -
;77- .
var88 
action88 
=88 
BeforeActions88 *
[88* +
state88+ 0
.880 1
NextBeforeStepIndex881 D
]88D E
;88E F
IEnumerator99 

enumerator99 &
;99& '
try:: 
{;; 

enumerator<< 
=<<  
InvokeBefore<<! -
(<<- .
action<<. 4
,<<4 5
Test<<6 :
,<<: ;
unityContext<<< H
)<<H I
;<<I J
}== 
catch>> 
(>> 
	Exception>>  
ex>>! #
)>># $
{?? 
state@@ 
.@@ 

TestHasRun@@ $
=@@% &
true@@' +
;@@+ ,
contextAA 
.AA 
CurrentResultAA )
.AA) *#
RecordPrefixedExceptionAA* A
(AAA B
m_BeforeErrorPrefixAAB U
,AAU V
exAAW Y
)AAY Z
;AAZ [
breakBB 
;BB 
}CC 
ActivePcHelperDD 
.DD 
SetEnumeratorPCDD .
(DD. /

enumeratorDD/ 9
,DD9 :
stateDD; @
.DD@ A
NextBeforeStepPcDDA Q
)DDQ R
;DDR S
usingFF 
(FF 
varFF 
logScopeFF #
=FF$ %
newFF& )
LogScopeFF* 2
(FF2 3
)FF3 4
)FF4 5
{GG 
whileHH 
(HH 
trueHH 
)HH  
{II 
tryJJ 
{KK 
ifLL 
(LL  
!LL  !

enumeratorLL! +
.LL+ ,
MoveNextLL, 4
(LL4 5
)LL5 6
)LL6 7
{MM 
breakNN  %
;NN% &
}OO 
}PP 
catchQQ 
(QQ 
	ExceptionQQ (
exQQ) +
)QQ+ ,
{RR 
stateSS !
.SS! "

TestHasRunSS" ,
=SS- .
trueSS/ 3
;SS3 4
contextTT #
.TT# $
CurrentResultTT$ 1
.TT1 2#
RecordPrefixedExceptionTT2 I
(TTI J
m_BeforeErrorPrefixTTJ ]
,TT] ^
exTT_ a
)TTa b
;TTb c
stateUU !
.UU! "
StoreTestResultUU" 1
(UU1 2
contextUU2 9
.UU9 :
CurrentResultUU: G
)UUG H
;UUH I
breakVV !
;VV! "
}WW 
stateYY 
.YY 
NextBeforeStepPcYY .
=YY/ 0
ActivePcHelperYY1 ?
.YY? @
GetEnumeratorPCYY@ O
(YYO P

enumeratorYYP Z
)YYZ [
;YY[ \
stateZZ 
.ZZ 
StoreTestResultZZ -
(ZZ- .
contextZZ. 5
.ZZ5 6
CurrentResultZZ6 C
)ZZC D
;ZZD E
if[[ 
([[ #
m_SkipYieldAfterActions[[ 3
)[[3 4
{\\ 
break]] !
;]]! "
}^^ 
else__ 
{`` 
yieldaa !
returnaa" (

enumeratoraa) 3
.aa3 4
Currentaa4 ;
;aa; <
}bb 
ifdd 
(dd 
	GetUtcNowdd %
(dd% &
)dd& '
-dd( )
statedd* /
.dd/ 0
	Timestampdd0 9
>dd: ;
unityContextdd< H
.ddH I
TestCaseTimeoutddI X
)ddX Y
{ee 
contextff #
.ff# $
CurrentResultff$ 1
.ff1 2
RecordPrefixedErrorff2 E
(ffE F
m_BeforeErrorPrefixffF Y
,ffY Z
newff[ ^%
UnityTestTimeoutExceptionff_ x
(ffx y
unityContext	ffy Ö
.
ffÖ Ü
TestCaseTimeout
ffÜ ï
)
ffï ñ
.
ffñ ó
Message
ffó û
)
ffû ü
;
ffü †
stategg !
.gg! "

TestHasRungg" ,
=gg- .
truegg/ 3
;gg3 4
breakhh !
;hh! "
}ii 
}jj 
ifll 
(ll 
logScopell  
.ll  !
AnyFailingLogsll! /
(ll/ 0
)ll0 1
)ll1 2
{mm 
statenn 
.nn 

TestHasRunnn (
=nn) *
truenn+ /
;nn/ 0
contextoo 
.oo  
CurrentResultoo  -
.oo- .
RecordPrefixedErroroo. A
(ooA B
m_BeforeErrorPrefixooB U
,ooU V
newooW Z(
UnhandledLogMessageExceptionoo[ w
(oow x
logScope	oox Ä
.
ooÄ Å
FailingLogs
ooÅ å
.
ooå ç
First
ooç í
(
ooí ì
)
ooì î
)
ooî ï
.
ooï ñ
Message
ooñ ù
)
ooù û
;
ooû ü
statepp 
.pp 
StoreTestResultpp -
(pp- .
contextpp. 5
.pp5 6
CurrentResultpp6 C
)ppC D
;ppD E
}qq 
}rr 
statett 
.tt 
NextBeforeStepIndextt )
++tt) +
;tt+ ,
stateuu 
.uu 
NextBeforeStepPcuu &
=uu' (
$numuu) *
;uu* +
}vv 
ifxx 
(xx 
!xx 
statexx 
.xx 

TestHasRunxx !
)xx! "
{yy 
ifzz 
(zz 
innerCommandzz  
iszz! #(
IEnumerableTestMethodCommandzz$ @
)zz@ A
{{{ 
var|| 
executeEnumerable|| )
=||* +
(||, -
(||- .(
IEnumerableTestMethodCommand||. J
)||J K
innerCommand||K W
)||W X
.||X Y
ExecuteEnumerable||Y j
(||j k
context||k r
)||r s
;||s t
foreach}} 
(}} 
var}}  
iterator}}! )
in}}* ,
executeEnumerable}}- >
)}}> ?
{~~ 
state 
. 
StoreTestResult -
(- .
context. 5
.5 6
CurrentResult6 C
)C D
;D E
yield
ÄÄ 
return
ÄÄ $
iterator
ÄÄ% -
;
ÄÄ- .
}
ÅÅ 
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
context
ÖÖ 
.
ÖÖ 
CurrentResult
ÖÖ )
=
ÖÖ* +
innerCommand
ÖÖ, 8
.
ÖÖ8 9
Execute
ÖÖ9 @
(
ÖÖ@ A
context
ÖÖA H
)
ÖÖH I
;
ÖÖI J
state
ÜÜ 
.
ÜÜ 
StoreTestResult
ÜÜ )
(
ÜÜ) *
context
ÜÜ* 1
.
ÜÜ1 2
CurrentResult
ÜÜ2 ?
)
ÜÜ? @
;
ÜÜ@ A
}
áá 
state
ââ 
.
ââ 

TestHasRun
ââ  
=
ââ! "
true
ââ# '
;
ââ' (
}
ää 
while
åå 
(
åå 
state
åå 
.
åå  
NextAfterStepIndex
åå +
<
åå, -
AfterActions
åå. :
.
åå: ;
Length
åå; A
)
ååA B
{
çç 
state
éé 
.
éé 
	Timestamp
éé 
=
éé  !
	GetUtcNow
éé" +
(
éé+ ,
)
éé, -
;
éé- .
state
èè 
.
èè 
TestAfterStarted
èè &
=
èè' (
true
èè) -
;
èè- .
var
êê 
action
êê 
=
êê 
AfterActions
êê )
[
êê) *
state
êê* /
.
êê/ 0 
NextAfterStepIndex
êê0 B
]
êêB C
;
êêC D
IEnumerator
ëë 

enumerator
ëë &
;
ëë& '
try
íí 
{
ìì 

enumerator
îî 
=
îî  
InvokeAfter
îî! ,
(
îî, -
action
îî- 3
,
îî3 4
Test
îî5 9
,
îî9 :
unityContext
îî; G
)
îîG H
;
îîH I
}
ïï 
catch
ññ 
(
ññ 
	Exception
ññ  
ex
ññ! #
)
ññ# $
{
óó 
context
òò 
.
òò 
CurrentResult
òò )
.
òò) *%
RecordPrefixedException
òò* A
(
òòA B 
m_AfterErrorPrefix
òòB T
,
òòT U
ex
òòV X
)
òòX Y
;
òòY Z
state
ôô 
.
ôô 
StoreTestResult
ôô )
(
ôô) *
context
ôô* 1
.
ôô1 2
CurrentResult
ôô2 ?
)
ôô? @
;
ôô@ A
break
öö 
;
öö 
}
õõ 
ActivePcHelper
úú 
.
úú 
SetEnumeratorPC
úú .
(
úú. /

enumerator
úú/ 9
,
úú9 :
state
úú; @
.
úú@ A
NextAfterStepPc
úúA P
)
úúP Q
;
úúQ R
using
ûû 
(
ûû 
var
ûû 
logScope
ûû #
=
ûû$ %
new
ûû& )
LogScope
ûû* 2
(
ûû2 3
)
ûû3 4
)
ûû4 5
{
üü 
while
†† 
(
†† 
true
†† 
)
††  
{
°° 
try
¢¢ 
{
££ 
if
§§ 
(
§§  
!
§§  !

enumerator
§§! +
.
§§+ ,
MoveNext
§§, 4
(
§§4 5
)
§§5 6
)
§§6 7
{
•• 
break
¶¶  %
;
¶¶% &
}
ßß 
}
®® 
catch
©© 
(
©© 
	Exception
©© (
ex
©©) +
)
©©+ ,
{
™™ 
context
´´ #
.
´´# $
CurrentResult
´´$ 1
.
´´1 2%
RecordPrefixedException
´´2 I
(
´´I J 
m_AfterErrorPrefix
´´J \
,
´´\ ]
ex
´´^ `
)
´´` a
;
´´a b
state
¨¨ !
.
¨¨! "
StoreTestResult
¨¨" 1
(
¨¨1 2
context
¨¨2 9
.
¨¨9 :
CurrentResult
¨¨: G
)
¨¨G H
;
¨¨H I
break
≠≠ !
;
≠≠! "
}
ÆÆ 
state
∞∞ 
.
∞∞ 
NextAfterStepPc
∞∞ -
=
∞∞. /
ActivePcHelper
∞∞0 >
.
∞∞> ?
GetEnumeratorPC
∞∞? N
(
∞∞N O

enumerator
∞∞O Y
)
∞∞Y Z
;
∞∞Z [
state
±± 
.
±± 
StoreTestResult
±± -
(
±±- .
context
±±. 5
.
±±5 6
CurrentResult
±±6 C
)
±±C D
;
±±D E
if
≥≥ 
(
≥≥ 
	GetUtcNow
≥≥ %
(
≥≥% &
)
≥≥& '
-
≥≥( )
state
≥≥* /
.
≥≥/ 0
	Timestamp
≥≥0 9
>
≥≥: ;
unityContext
≥≥< H
.
≥≥H I
TestCaseTimeout
≥≥I X
)
≥≥X Y
{
¥¥ 
context
µµ #
.
µµ# $
CurrentResult
µµ$ 1
.
µµ1 2!
RecordPrefixedError
µµ2 E
(
µµE F 
m_AfterErrorPrefix
µµF X
,
µµX Y
new
µµZ ]'
UnityTestTimeoutException
µµ^ w
(
µµw x
unityContextµµx Ñ
.µµÑ Ö
TestCaseTimeoutµµÖ î
)µµî ï
.µµï ñ
Messageµµñ ù
)µµù û
;µµû ü
yield
∂∂ !
break
∂∂" '
;
∂∂' (
}
∑∑ 
if
ππ 
(
ππ %
m_SkipYieldAfterActions
ππ 3
)
ππ3 4
{
∫∫ 
break
ªª !
;
ªª! "
}
ºº 
else
ΩΩ 
{
ææ 
yield
øø !
return
øø" (

enumerator
øø) 3
.
øø3 4
Current
øø4 ;
;
øø; <
}
¿¿ 
}
¡¡ 
if
√√ 
(
√√ 
logScope
√√  
.
√√  !
AnyFailingLogs
√√! /
(
√√/ 0
)
√√0 1
)
√√1 2
{
ƒƒ 
state
≈≈ 
.
≈≈ 

TestHasRun
≈≈ (
=
≈≈) *
true
≈≈+ /
;
≈≈/ 0
context
∆∆ 
.
∆∆  
CurrentResult
∆∆  -
.
∆∆- .!
RecordPrefixedError
∆∆. A
(
∆∆A B 
m_AfterErrorPrefix
∆∆B T
,
∆∆T U
new
∆∆V Y*
UnhandledLogMessageException
∆∆Z v
(
∆∆v w
logScope
∆∆w 
.∆∆ Ä
FailingLogs∆∆Ä ã
.∆∆ã å
First∆∆å ë
(∆∆ë í
)∆∆í ì
)∆∆ì î
.∆∆î ï
Message∆∆ï ú
)∆∆ú ù
;∆∆ù û
state
«« 
.
«« 
StoreTestResult
«« -
(
««- .
context
««. 5
.
««5 6
CurrentResult
««6 C
)
««C D
;
««D E
}
»» 
}
…… 
state
ÀÀ 
.
ÀÀ  
NextAfterStepIndex
ÀÀ (
++
ÀÀ( *
;
ÀÀ* +
state
ÃÃ 
.
ÃÃ 
NextAfterStepPc
ÃÃ %
=
ÃÃ& '
$num
ÃÃ( )
;
ÃÃ) *
}
ÕÕ 
state
œœ 
.
œœ 
Reset
œœ 
(
œœ 
)
œœ 
;
œœ 
}
–– 	
public
““ 
override
““ 

TestResult
““ "
Execute
““# *
(
““* +#
ITestExecutionContext
““+ @
context
““A H
)
““H I
{
”” 	
throw
‘‘ 
new
‘‘ %
NotImplementedException
‘‘ -
(
‘‘- .
$str
‘‘. E
)
‘‘E F
;
‘‘F G
}
’’ 	
private
◊◊ 
static
◊◊ !
TestCommandPcHelper
◊◊ *
pcHelper
◊◊+ 3
;
◊◊3 4
internal
ŸŸ 
static
ŸŸ !
TestCommandPcHelper
ŸŸ +
ActivePcHelper
ŸŸ, :
{
⁄⁄ 	
get
€€ 
{
‹‹ 
if
›› 
(
›› 
pcHelper
›› 
==
›› 
null
››  $
)
››$ %
{
ﬁﬁ 
pcHelper
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ "!
TestCommandPcHelper
ﬂﬂ# 6
(
ﬂﬂ6 7
)
ﬂﬂ7 8
;
ﬂﬂ8 9
}
‡‡ 
return
‚‚ 
pcHelper
‚‚ 
;
‚‚  
}
„„ 
set
‰‰ 
{
ÂÂ 
pcHelper
ÊÊ 
=
ÊÊ 
value
ÊÊ  
;
ÊÊ  !
}
ÁÁ 
}
ËË 	
}
ÈÈ 
}ÍÍ Ã*
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\AllocatingGCMemoryConstraint.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Constraints  +
{ 
public"" 

class"" (
AllocatingGCMemoryConstraint"" -
:"". /

Constraint""0 :
{## 
private$$ 
class$$ $
AllocatingGCMemoryResult$$ .
:$$/ 0
ConstraintResult$$1 A
{%% 	
private&& 
readonly&& 
int&&  
diff&&! %
;&&% &
public'' $
AllocatingGCMemoryResult'' +
(''+ ,
IConstraint'', 7

constraint''8 B
,''B C
object''D J
actualValue''K V
,''V W
int''X [
diff''\ `
)''` a
:''b c
base''d h
(''h i

constraint''i s
,''s t
actualValue	''u Ä
,
''Ä Å
diff
''Ç Ü
>
''á à
$num
''â ä
)
''ä ã
{(( 
this)) 
.)) 
diff)) 
=)) 
diff))  
;))  !
}** 
public,, 
override,, 
void,,  
WriteMessageTo,,! /
(,,/ 0
MessageWriter,,0 =
writer,,> D
),,D E
{-- 
if.. 
(.. 
diff.. 
==.. 
$num.. 
).. 
writer// 
.// 
WriteMessageLine// +
(//+ ,
$str//, d
)//d e
;//e f
else00 
writer11 
.11 
WriteMessageLine11 +
(11+ ,
$str11, ^
,11^ _
diff11` d
)11d e
;11e f
}22 
}33 	
private55 
ConstraintResult55  
ApplyTo55! (
(55( )
Action55) /
action550 6
,556 7
object558 >
original55? G
)55G H
{66 	
var77 
recorder77 
=77 
Recorder77 #
.77# $
Get77$ '
(77' (
$str77( 2
)772 3
;773 4
recorder<< 
.<< 
enabled<< 
=<< 
false<< $
;<<$ %
recorder?? 
.?? !
FilterToCurrentThread?? *
(??* +
)??+ ,
;??, -
recorderBB 
.BB 
enabledBB 
=BB 
trueBB #
;BB# $
tryDD 
{EE 
actionFF 
(FF 
)FF 
;FF 
}GG 
finallyHH 
{II 
recorderJJ 
.JJ 
enabledJJ  
=JJ! "
falseJJ# (
;JJ( )
recorderLL 
.LL !
CollectFromAllThreadsLL .
(LL. /
)LL/ 0
;LL0 1
}NN 
returnPP 
newPP $
AllocatingGCMemoryResultPP /
(PP/ 0
thisPP0 4
,PP4 5
originalPP6 >
,PP> ?
recorderPP@ H
.PPH I
sampleBlockCountPPI Y
)PPY Z
;PPZ [
}QQ 	
publicZZ 
overrideZZ 
ConstraintResultZZ (
ApplyToZZ) 0
(ZZ0 1
objectZZ1 7
objZZ8 ;
)ZZ; <
{[[ 	
if\\ 
(\\ 
obj\\ 
==\\ 
null\\ 
)\\ 
throw]] 
new]] !
ArgumentNullException]] /
(]]/ 0
)]]0 1
;]]1 2
TestDelegate__ 
d__ 
=__ 
obj__  
as__! #
TestDelegate__$ 0
;__0 1
if`` 
(`` 
d`` 
==`` 
null`` 
)`` 
throwaa 
newaa 
ArgumentExceptionaa +
(aa+ ,
stringaa, 2
.aa2 3
Formataa3 9
(aa9 :
$straa: o
,aao p
objbb 
.bb 
GetTypebb 
(bb  
)bb  !
)bb! "
)bb" #
;bb# $
returndd 
ApplyTodd 
(dd 
(dd 
)dd 
=>dd  
ddd! "
.dd" #
Invokedd# )
(dd) *
)dd* +
,dd+ ,
objdd- 0
)dd0 1
;dd1 2
}ee 	
publicoo 
overrideoo 
ConstraintResultoo (
ApplyTooo) 0
<oo0 1
TActualoo1 8
>oo8 9
(oo9 :
ActualValueDelegateoo: M
<ooM N
TActualooN U
>ooU V
delooW Z
)ooZ [
{pp 	
ifqq 
(qq 
delqq 
==qq 
nullqq 
)qq 
throwrr 
newrr !
ArgumentNullExceptionrr /
(rr/ 0
)rr0 1
;rr1 2
returntt 
ApplyTott 
(tt 
(tt 
)tt 
=>tt  
deltt! $
.tt$ %
Invokett% +
(tt+ ,
)tt, -
,tt- .
deltt/ 2
)tt2 3
;tt3 4
}uu 	
publiczz 
overridezz 
stringzz 
Descriptionzz *
{{{ 	
get|| 
{|| 
return|| 
$str|| .
;||. /
}||0 1
}}} 	
}~~ 
} ﬂ
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\UnityTearDownAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[!! 
AttributeUsage!! 
(!! 
AttributeTargets!! $
.!!$ %
Method!!% +
)!!+ ,
]!!, -
public"" 

class"" "
UnityTearDownAttribute"" '
:""( )
NUnitAttribute""* 8
{## 
}$$ 
}%% …
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\IAsyncTestAssemblyBuilder.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
NUnitExtensions  /
{ 
internal 
	interface %
IAsyncTestAssemblyBuilder 0
:1 2 
ITestAssemblyBuilder3 G
{		 
IEnumerator

 
<

 
ITest

 
>

 

BuildAsync

 %
(

% &
Assembly

& .
[

. /
]

/ 0

assemblies

1 ;
,

; <
TestPlatform

= I
[

I J
]

J K
testPlatforms

L Y
,

Y Z
IDictionary

[ f
<

f g
string

g m
,

m n
object

o u
>

u v
options

w ~
)

~ 
;	

 Ä
} 
} ƒ
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\UnhandledLogMessageException.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class (
UnhandledLogMessageException /
:0 1 
ResultStateException2 F
{		 
public

 
LogEvent

 
LogEvent

  
;

  !
private 
readonly 
string 
m_CustomStackTrace  2
;2 3
public (
UnhandledLogMessageException +
(+ ,
LogEvent, 4
log5 8
)8 9
: 
base 
( 
BuildMessage 
(  
log  #
)# $
)$ %
{ 	
LogEvent 
= 
log 
; 
m_CustomStackTrace 
=  
StackTraceFilter! 1
.1 2
Filter2 8
(8 9
log9 <
.< =

StackTrace= G
)G H
;H I
} 	
private 
static 
string 
BuildMessage *
(* +
LogEvent+ 3
log4 7
)7 8
{ 	
return 
string 
. 
Format  
(  !
$str! k
,k l
logm p
)p q
;q r
} 	
public 
override 
ResultState #
ResultState$ /
{ 	
get 
{ 
return 
ResultState $
.$ %
Failure% ,
;, -
}. /
} 	
public 
override 
string 

StackTrace )
{ 	
get   
{   
return   
m_CustomStackTrace   +
;  + ,
}  - .
}!! 	
}"" 
}## §
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\UnityTestAttribute.cs
	namespace

 	
UnityEngine


 
.

 
	TestTools

 
{ 
[<< 
AttributeUsage<< 
(<< 
AttributeTargets<< $
.<<$ %
Method<<% +
)<<+ ,
]<<, -
public== 

class== 
UnityTestAttribute== #
:==$ %&
CombiningStrategyAttribute==& @
,==@ A
ISimpleTestBuilder==B T
,==T U
IImplyFixture==V c
{>> 
public?? 
UnityTestAttribute?? !
(??! "
)??" #
:??$ %
base??& *
(??* +
new??+ .&
UnityCombinatorialStrategy??/ I
(??I J
)??J K
,??K L
new??M P'
ParameterDataSourceProvider??Q l
(??l m
)??m n
)??n o
{??p q
}??q r
privateAA 
readonlyAA  
NUnitTestCaseBuilderAA -
_builderAA. 6
=AA7 8
newAA9 < 
NUnitTestCaseBuilderAA= Q
(AAQ R
)AAR S
;AAS T

TestMethodCC 
ISimpleTestBuilderCC %
.CC% &
	BuildFromCC& /
(CC/ 0
IMethodInfoCC0 ;
methodCC< B
,CCB C
TestCCD H
suiteCCI N
)CCN O
{DD 	
TestCaseParametersEE 
parmsEE $
=EE% &
newEE' *
TestCaseParametersEE+ =
{FF 
ExpectedResultGG 
=GG  
newGG! $
objectGG% +
(GG+ ,
)GG, -
,GG- .
HasExpectedResultHH !
=HH" #
trueHH$ (
}II 
;II 
varKK 
tKK 
=KK 
_builderKK 
.KK 
BuildTestMethodKK ,
(KK, -
methodKK- 3
,KK3 4
suiteKK5 :
,KK: ;
parmsKK< A
)KKA B
;KKB C
ifMM 
(MM 
tMM 
.MM 
parmsMM 
!=MM 
nullMM 
)MM  
tNN 
.NN 
parmsNN 
.NN 
HasExpectedResultNN )
=NN* +
falseNN, 1
;NN1 2
ifPP 
(PP 
!PP 
methodPP 
.PP 

ReturnTypePP "
.PP" #
IsTypePP# )
(PP) *
typeofPP* 0
(PP0 1
IEnumeratorPP1 <
)PP< =
)PP= >
)PP> ?
{QQ 
tRR 
.RR 
RunStateRR 
=RR 
RunStateRR %
.RR% &
NotRunnableRR& 1
;RR1 2
tSS 
.SS 

PropertiesSS 
.SS 
SetSS  
(SS  !
PropertyNamesSS! .
.SS. /

SkipReasonSS/ 9
,SS9 :
$strSS; r
)SSr s
;SSs t
}TT 
returnVV 
tVV 
;VV 
}WW 	
}XX 
}YY ‹
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\UnityTestTimeoutException.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class %
UnityTestTimeoutException ,
:- . 
ResultStateException/ C
{ 
public %
UnityTestTimeoutException (
(( )
int) ,
timeout- 4
)4 5
:		 
base		 
(		 
BuildMessage		 
(		  
timeout		  '
)		' (
)		( )
{

 	
} 	
private 
static 
string 
BuildMessage *
(* +
int+ .
timeout/ 6
)6 7
{ 	
return 
string 
. 
Format  
(  !
$str! F
,F G
timeoutH O
)O P
;P Q
} 	
public 
override 
ResultState #
ResultState$ /
{ 	
get 
{ 
return 
ResultState $
.$ %
Failure% ,
;, -
}. /
} 	
public 
override 
string 

StackTrace )
{ 	
get 
{ 
return 
$str 
; 
} 
} 	
} 
} ≥
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\FloatEqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class !
FloatEqualityComparer &
:' (
IEqualityComparer) :
<: ;
float; @
>@ A
{		 
private

 
const

 
float

 
k_DefaultError

 *
=

+ ,
$num

- 4
;

4 5
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly !
FloatEqualityComparer! 6

m_Instance7 A
=B C
newD G!
FloatEqualityComparerH ]
(] ^
)^ _
;_ `
public 
static !
FloatEqualityComparer +
Instance, 4
{5 6
get7 :
{; <
return= C

m_InstanceD N
;N O
}P Q
}R S
private !
FloatEqualityComparer %
(% &
)& '
:( )
this* .
(. /
k_DefaultError/ =
)= >
{? @
}@ A
public !
FloatEqualityComparer $
($ %
float% *
allowedError+ 7
)7 8
{ 	
this 
. 
AllowedError 
= 
allowedError  ,
;, -
} 	
public<< 
bool<< 
Equals<< 
(<< 
float<<  
expected<<! )
,<<) *
float<<+ 0
actual<<1 7
)<<7 8
{== 	
return>> 
Utils>> 
.>> 
AreFloatsEqual>> '
(>>' (
expected>>( 0
,>>0 1
actual>>2 8
,>>8 9
AllowedError>>: F
)>>F G
;>>G H
}?? 	
publicFF 
intFF 
GetHashCodeFF 
(FF 
floatFF $
valueFF% *
)FF* +
{GG 	
returnHH 
$numHH 
;HH 
}II 	
}JJ 
}KK ÿ
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\QuaternionEqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class &
QuaternionEqualityComparer +
:, -
IEqualityComparer. ?
<? @

Quaternion@ J
>J K
{ 
private 
const 
float 
k_DefaultError *
=+ ,
$num- 5
;5 6
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly &
QuaternionEqualityComparer  :

m_Instance; E
=F G
newH K&
QuaternionEqualityComparerL f
(f g
)g h
;h i
public 
static &
QuaternionEqualityComparer 0
Instance1 9
{: ;
get< ?
{@ A
returnB H

m_InstanceI S
;S T
}U V
}W X
private &
QuaternionEqualityComparer *
(* +
)+ ,
:- .
this/ 3
(3 4
k_DefaultError4 B
)B C
{D E
}E F
public &
QuaternionEqualityComparer )
() *
float* /
allowedError0 <
)< =
{ 	
AllowedError 
= 
allowedError '
;' (
}   	
publicAA 
boolAA 
EqualsAA 
(AA 

QuaternionAA %
expectedAA& .
,AA. /

QuaternionAA0 :
actualAA; A
)AAA B
{BB 	
returnCC 
MathfCC 
.CC 
AbsCC 
(CC 

QuaternionCC '
.CC' (
DotCC( +
(CC+ ,
expectedCC, 4
,CC4 5
actualCC6 <
)CC< =
)CC= >
>CC? @
(CCA B
$numCCB F
-CCG H
AllowedErrorCCI U
)CCU V
;CCV W
}DD 	
publicKK 
intKK 
GetHashCodeKK 
(KK 

QuaternionKK )

quaternionKK* 4
)KK4 5
{LL 	
returnMM 
$numMM 
;MM 
}NN 	
}OO 
}PP æA
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\UnityTestAssemblyRunner.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
	interface $
IUnityTestAssemblyRunner /
{ 
ITest 

LoadedTest 
{ 
get 
; 
}  !
ITestResult 
Result 
{ 
get  
;  !
}" #
bool 
IsTestLoaded 
{ 
get 
;  
}! "
bool 
IsTestRunning 
{ 
get  
;  !
}" #
bool 
IsTestComplete 
{ 
get !
;! "
}# $
UnityWorkItem 
TopLevelWorkItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4%
UnityTestExecutionContext !
GetCurrentContext" 3
(3 4
)4 5
;5 6
ITest 
Load 
( 
Assembly 
[ 
] 

assemblies (
,( )
TestPlatform* 6
testPlatform7 C
,C D
IDictionaryE P
<P Q
stringQ W
,W X
objectY _
>_ `
settingsa i
)i j
;j k
IEnumerable 
Run 
( 
ITestListener %
listener& .
,. /
ITestFilter0 ;
filter< B
)B C
;C D
void 
StopRun 
( 
) 
; 
} 
internal 
class #
UnityTestAssemblyRunner *
:+ ,$
IUnityTestAssemblyRunner- E
{ 
private 
readonly $
UnityTestAssemblyBuilder 1
unityBuilder2 >
;> ?
private 
readonly 
WorkItemFactory (
	m_Factory) 2
;2 3
	protected   %
UnityTestExecutionContext   +
Context  , 3
{  4 5
get  6 9
;  9 :
set  ; >
;  > ?
}  @ A
public"" %
UnityTestExecutionContext"" (
GetCurrentContext"") :
("": ;
)""; <
{## 	
return$$ %
UnityTestExecutionContext$$ ,
.$$, -
CurrentContext$$- ;
;$$; <
}%% 	
	protected'' 
IDictionary'' 
<'' 
string'' $
,''$ %
object''& ,
>'', -
Settings''. 6
{''7 8
get''9 <
;''< =
set''> A
;''A B
}''C D
public(( 
ITest(( 

LoadedTest(( 
{((  !
get((" %
;((% &
	protected((' 0
set((1 4
;((4 5
}((6 7
public** 
ITestResult** 
Result** !
{++ 	
get,, 
{,, 
return,, 
TopLevelWorkItem,, )
==,,* ,
null,,- 1
?,,2 3
null,,4 8
:,,9 :
TopLevelWorkItem,,; K
.,,K L
Result,,L R
;,,R S
},,T U
}-- 	
public// 
bool// 
IsTestLoaded//  
{00 	
get11 
{11 
return11 

LoadedTest11 #
!=11$ &
null11' +
;11+ ,
}11- .
}22 	
public44 
bool44 
IsTestRunning44 !
{55 	
get66 
{66 
return66 
TopLevelWorkItem66 )
!=66* ,
null66- 1
&&662 4
TopLevelWorkItem665 E
.66E F
State66F K
==66L N
NUnit66O T
.66T U
	Framework66U ^
.66^ _
Internal66_ g
.66g h
	Execution66h q
.66q r
WorkItemState66r 
.	66 Ä
Running
66Ä á
;
66á à
}
66â ä
}77 	
public88 
bool88 
IsTestComplete88 "
{99 	
get:: 
{:: 
return:: 
TopLevelWorkItem:: )
!=::* ,
null::- 1
&&::2 4
TopLevelWorkItem::5 E
.::E F
State::F K
==::L N
NUnit::O T
.::T U
	Framework::U ^
.::^ _
Internal::_ g
.::g h
	Execution::h q
.::q r
WorkItemState::r 
.	:: Ä
Complete
::Ä à
;
::à â
}
::ä ã
};; 	
public== #
UnityTestAssemblyRunner== &
(==& '$
UnityTestAssemblyBuilder==' ?
builder==@ G
,==G H
WorkItemFactory==I X
factory==Y `
)==` a
{>> 	
unityBuilder?? 
=?? 
builder?? "
;??" #
	m_Factory@@ 
=@@ 
factory@@ 
;@@  
ContextAA 
=AA 
newAA %
UnityTestExecutionContextAA 3
(AA3 4
)AA4 5
;AA5 6
}BB 	
publicDD 
ITestDD 
LoadDD 
(DD 
AssemblyDD "
[DD" #
]DD# $

assembliesDD% /
,DD/ 0
TestPlatformDD1 =
testPlatformDD> J
,DDJ K
IDictionaryDDL W
<DDW X
stringDDX ^
,DD^ _
objectDD` f
>DDf g
settingsDDh p
)DDp q
{EE 	
SettingsFF 
=FF 
settingsFF 
;FF  
ifHH 
(HH 
settingsHH 
.HH 
ContainsKeyHH $
(HH$ %$
FrameworkPackageSettingsHH% =
.HH= >

RandomSeedHH> H
)HHH I
)HHI J

RandomizerII 
.II 
InitialSeedII &
=II' (
(II) *
intII* -
)II- .
settingsII. 6
[II6 7$
FrameworkPackageSettingsII7 O
.IIO P

RandomSeedIIP Z
]IIZ [
;II[ \
returnKK 

LoadedTestKK 
=KK 
unityBuilderKK  ,
.KK, -
BuildKK- 2
(KK2 3

assembliesKK3 =
,KK= >

EnumerableKK? I
.KKI J
RepeatKKJ P
(KKP Q
testPlatformKKQ ]
,KK] ^

assembliesKK_ i
.KKi j
LengthKKj p
)KKp q
.KKq r
ToArrayKKr y
(KKy z
)KKz {
,KK{ |
settings	KK} Ö
)
KKÖ Ü
;
KKÜ á
}LL 	
publicNN 
IEnumerableNN 
RunNN 
(NN 
ITestListenerNN ,
listenerNN- 5
,NN5 6
ITestFilterNN7 B
filterNNC I
)NNI J
{OO 	
TopLevelWorkItemPP 
=PP 
	m_FactoryPP (
.PP( )
CreatePP) /
(PP/ 0

LoadedTestPP0 :
,PP: ;
filterPP< B
)PPB C
;PPC D
TopLevelWorkItemQQ 
.QQ 
InitializeContextQQ .
(QQ. /
ContextQQ/ 6
)QQ6 7
;QQ7 8%
UnityTestExecutionContextRR %
.RR% &
CurrentContextRR& 4
=RR5 6
ContextRR7 >
;RR> ?
ContextSS 
.SS 
ListenerSS 
=SS 
listenerSS '
;SS' (
returnUU 
TopLevelWorkItemUU #
.UU# $
ExecuteUU$ +
(UU+ ,
)UU, -
;UU- .
}VV 	
publicXX 
UnityWorkItemXX 
TopLevelWorkItemXX -
{XX. /
getXX0 3
;XX3 4
setXX5 8
;XX8 9
}XX: ;
publicZZ 
voidZZ 
StopRunZZ 
(ZZ 
)ZZ 
{[[ 	
if\\ 
(\\ 
IsTestRunning\\ 
)\\ 
{]] 
TopLevelWorkItem^^  
.^^  !
Cancel^^! '
(^^' (
false^^( -
)^^- .
;^^. /
}__ 
}`` 	
}aa 
}bb ©
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\FailCommand.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal		 
class		 
FailCommand		 
:		  
TestCommand		! ,
,		, -(
IEnumerableTestMethodCommand		. J
{

 
private 
ResultState 
m_ResultState )
;) *
private 
string 
	m_Message  
;  !
public 
FailCommand 
( 
Test 
test  $
,$ %
ResultState& 1
resultState2 =
,= >
string? E
messageF M
)M N
: 
base 
( 
test 
) 
{ 	
m_ResultState 
= 
resultState '
;' (
	m_Message 
= 
message 
;  
} 	
public 
override 

TestResult "
Execute# *
(* +!
ITestExecutionContext+ @
contextA H
)H I
{ 	
context 
. 
CurrentResult !
.! "
	SetResult" +
(+ ,
m_ResultState, 9
,9 :
	m_Message; D
)D E
;E F
return 
context 
. 
CurrentResult (
;( )
} 	
public 
IEnumerable 
ExecuteEnumerable ,
(, -!
ITestExecutionContext- B
contextC J
)J K
{ 	
context 
. 
CurrentResult !
.! "
	SetResult" +
(+ ,
m_ResultState, 9
,9 :
	m_Message; D
)D E
;E F
yield 
return 
null 
; 
} 	
}   
}"" ç
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\IOuterUnityTestAction.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public		 

	interface		 !
IOuterUnityTestAction		 *
{

 
IEnumerator 

BeforeTest 
( 
ITest $
test% )
)) *
;* +
IEnumerator 
	AfterTest 
( 
ITest #
test$ (
)( )
;) *
} 
} ñ
√D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\IEnumerableTestMethodCommand.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
	interface (
IEnumerableTestMethodCommand 3
{ 
IEnumerable 
ExecuteEnumerable %
(% &!
ITestExecutionContext& ;
context< C
)C D
;D E
}		 
}

 ¡
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\TestActionCommand.cs
	namespace

 	
UnityEngine


 
.

 
	TestTools

 
{ 
internal 
class 
TestActionCommand $
:% &&
BeforeAfterTestCommandBase' A
<A B
ITestActionB M
>M N
{ 
public 
TestActionCommand  
(  !
TestCommand! ,
innerCommand- 9
)9 :
: 
base 
( 
innerCommand 
,  
$str! -
,- .
$str/ :
,: ;
true< @
)@ A
{ 	
if 
( 
Test 
. 
TypeInfo 
. 
Type "
!=# %
null& *
)* +
{ 
BeforeActions 
= $
GetTestActionsFromMethod  8
(8 9
Test9 =
.= >
Method> D
.D E

MethodInfoE O
)O P
;P Q
AfterActions 
= 
BeforeActions ,
;, -
} 
} 	
private 
static 
ITestAction "
[" #
]# $$
GetTestActionsFromMethod% =
(= >

MethodInfo> H
methodI O
)O P
{ 	
var 

attributes 
= 
method #
.# $
GetCustomAttributes$ 7
(7 8
false8 =
)= >
;> ?
List 
< 
ITestAction 
> 
actions %
=& '
new( +
List, 0
<0 1
ITestAction1 <
>< =
(= >
)> ?
;? @
foreach 
( 
var 
	attribute "
in# %

attributes& 0
)0 1
{ 
if 
( 
	attribute 
is  
ITestAction! ,
), -
actions 
. 
Add 
(  
	attribute  )
as* ,
ITestAction- 8
)8 9
;9 :
}   
return!! 
actions!! 
.!! 
ToArray!! "
(!!" #
)!!# $
;!!$ %
}"" 	
	protected$$ 
override$$ 
IEnumerator$$ &
InvokeBefore$$' 3
($$3 4
ITestAction$$4 ?
action$$@ F
,$$F G
Test$$H L
test$$M Q
,$$Q R%
UnityTestExecutionContext$$S l
context$$m t
)$$t u
{%% 	
action&& 
.&& 

BeforeTest&& 
(&& 
test&& "
)&&" #
;&&# $
yield'' 
return'' 
null'' 
;'' 
}(( 	
	protected** 
override** 
IEnumerator** &
InvokeAfter**' 2
(**2 3
ITestAction**3 >
action**? E
,**E F
Test**G K
test**L P
,**P Q%
UnityTestExecutionContext**R k
context**l s
)**s t
{++ 	
action,, 
.,, 
	AfterTest,, 
(,, 
test,, !
),,! "
;,," #
yield-- 
return-- 
null-- 
;-- 
}.. 	
	protected00 
override00 '
BeforeAfterTestCommandState00 6
GetState007 ?
(00? @%
UnityTestExecutionContext00@ Y
context00Z a
)00a b
{11 	
return22 
null22 
;22 
}33 	
}44 
}55 ”!
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\SetUpTearDownCommand.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class  
SetUpTearDownCommand '
:( )&
BeforeAfterTestCommandBase* D
<D E

MethodInfoE O
>O P
{ 
public  
SetUpTearDownCommand #
(# $
TestCommand$ /
innerCommand0 <
)< =
: 
base 
( 
innerCommand 
,  
$str! (
,( )
$str* 4
,4 5
true6 :
): ;
{ 	
if 
( 
Test 
. 
TypeInfo 
. 
Type "
!=# %
null& *
)* +
{ 
BeforeActions 
= .
"GetMethodsWithAttributeFromFixture  B
(B C
TestC G
.G H
TypeInfoH P
.P Q
TypeQ U
,U V
typeofW ]
(] ^
SetUpAttribute^ l
)l m
)m n
;n o
AfterActions 
= .
"GetMethodsWithAttributeFromFixture A
(A B
TestB F
.F G
TypeInfoG O
.O P
TypeP T
,T U
typeofV \
(\ ]
TearDownAttribute] n
)n o
)o p
.p q
Reverseq x
(x y
)y z
.z {
ToArray	{ Ç
(
Ç É
)
É Ñ
;
Ñ Ö
} 
} 	
private 
static 

MethodInfo !
[! "
]" #.
"GetMethodsWithAttributeFromFixture$ F
(F G
TypeG K
fixtureTypeL W
,W X
TypeY ]
	setUpType^ g
)g h
{ 	

MethodInfo 
[ 
]  
methodsWithAttribute -
=. /
Reflect0 7
.7 8#
GetMethodsWithAttribute8 O
(O P
fixtureTypeP [
,[ \
	setUpType] f
,f g
trueh l
)l m
;m n
return  
methodsWithAttribute '
.' (
Where( -
(- .
x. /
=>0 2
x3 4
.4 5

ReturnType5 ?
==@ B
typeofC I
(I J
voidJ N
)N O
)O P
.P Q
ToArrayQ X
(X Y
)Y Z
;Z [
} 	
	protected 
override 
IEnumerator &
InvokeBefore' 3
(3 4

MethodInfo4 >
action? E
,E F
TestG K
testL P
,P Q%
UnityTestExecutionContextR k
contextl s
)s t
{   	
Reflect!! 
.!! 
InvokeMethod!!  
(!!  !
action!!! '
,!!' (
context!!) 0
.!!0 1

TestObject!!1 ;
)!!; <
;!!< =
yield"" 
return"" 
null"" 
;"" 
}## 	
	protected%% 
override%% 
IEnumerator%% &
InvokeAfter%%' 2
(%%2 3

MethodInfo%%3 =
action%%> D
,%%D E
Test%%F J
test%%K O
,%%O P%
UnityTestExecutionContext%%Q j
context%%k r
)%%r s
{&& 	
Reflect'' 
.'' 
InvokeMethod''  
(''  !
action''! '
,''' (
context'') 0
.''0 1

TestObject''1 ;
)''; <
;''< =
yield(( 
return(( 
null(( 
;(( 
})) 	
	protected++ 
override++ '
BeforeAfterTestCommandState++ 6
GetState++7 ?
(++? @%
UnityTestExecutionContext++@ Y
context++Z a
)++a b
{,, 	
return-- 
null-- 
;-- 
}.. 	
}// 
}00 ’(
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\LogScope\LogMatch.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Logging  '
{ 
[ 
Serializable 
] 
internal 
class 
LogMatch 
{ 
[		 	
SerializeField			 
]		 
private

 
bool

 

m_UseRegex

 
;

  
[ 	
SerializeField	 
] 
private 
string 
	m_Message  
;  !
[ 	
SerializeField	 
] 
private 
string 
m_MessageRegex %
;% &
[ 	
SerializeField	 
] 
private 
string 
	m_LogType  
;  !
public 
string 
Message 
{ 	
get 
{ 
return 
	m_Message "
;" #
}$ %
set 
{ 
	m_Message 
= 
value !
;! "

m_UseRegex 
= 
false "
;" #
} 
} 	
public 
Regex 
MessageRegex !
{ 	
get 
{ 
if   
(   
!   

m_UseRegex   
)    
{!! 
return"" 
null"" 
;""  
}## 
return%% 
new%% 
Regex%%  
(%%  !
m_MessageRegex%%! /
)%%/ 0
;%%0 1
}&& 
set'' 
{(( 
if)) 
()) 
value)) 
!=)) 
null)) !
)))! "
{** 
m_MessageRegex++ "
=++# $
value++% *
.++* +
ToString+++ 3
(++3 4
)++4 5
;++5 6

m_UseRegex,, 
=,,  
true,,! %
;,,% &
}-- 
else.. 
{// 
m_MessageRegex00 "
=00# $
null00% )
;00) *

m_UseRegex11 
=11  
false11! &
;11& '
}22 
}33 
}44 	
public66 
LogType66 
?66 
LogType66 
{77 	
get88 
{99 
if:: 
(:: 
!:: 
string:: 
.:: 
IsNullOrEmpty:: )
(::) *
	m_LogType::* 3
)::3 4
)::4 5
{;; 
return<< 
Enum<< 
.<<  
Parse<<  %
(<<% &
typeof<<& ,
(<<, -
LogType<<- 4
)<<4 5
,<<5 6
	m_LogType<<7 @
)<<@ A
as<<B D
LogType<<E L
?<<M N
;<<O P
}== 
return?? 
null?? 
;?? 
}@@ 
setAA 
{BB 
ifCC 
(CC 
valueCC 
!=CC 
nullCC !
)CC! "
{DD 
	m_LogTypeEE 
=EE 
valueEE  %
.EE% &
ValueEE& +
.EE+ ,
ToStringEE, 4
(EE4 5
)EE5 6
;EE6 7
}FF 
elseGG 
{HH 
	m_LogTypeII 
=II 
nullII  $
;II$ %
}JJ 
}KK 
}LL 	
publicNN 
boolNN 
MatchesNN 
(NN 
LogEventNN $
logNN% (
)NN( )
{OO 	
ifPP 
(PP 
LogTypePP 
!=PP 
nullPP 
&&PP  "
LogTypePP# *
!=PP+ -
logPP. 1
.PP1 2
LogTypePP2 9
)PP9 :
{QQ 
returnRR 
falseRR 
;RR 
}SS 
ifUU 
(UU 

m_UseRegexUU 
)UU 
{VV 
returnWW 
MessageRegexWW #
.WW# $
IsMatchWW$ +
(WW+ ,
logWW, /
.WW/ 0
MessageWW0 7
)WW7 8
;WW8 9
}XX 
elseYY 
{ZZ 
return[[ 
Message[[ 
.[[ 
Equals[[ %
([[% &
log[[& )
.[[) *
Message[[* 1
)[[1 2
;[[2 3
}\\ 
}]] 	
public__ 
override__ 
string__ 
ToString__ '
(__' (
)__( )
{`` 	
ifaa 
(aa 

m_UseRegexaa 
)aa 
returnbb 
stringbb 
.bb 
Formatbb $
(bb$ %
$strbb% 7
,bb7 8
LogTypebb9 @
,bb@ A
MessageRegexbbB N
)bbN O
;bbO P
elsecc 
returndd 
stringdd 
.dd 
Formatdd $
(dd$ %
$strdd% 0
,dd0 1
LogTypedd2 9
,dd9 :
Messagedd; B
)ddB C
;ddC D
}ee 	
}ff 
}gg ◊D
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\ConstructDelegator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
NUnitExtensions  /
{		 
internal 
class 
ConstructDelegator %
{ 
private 
Type 
m_RequestedType $
;$ %
private 
object 
[ 
] 
m_Arguments $
;$ %
private 
ScriptableObject   
m_CurrentRunningTest! 5
;5 6
private 
readonly 
IStateSerializer )
m_StateSerializer* ;
;; <
	protected 
	Exception 
m_Exception '
;' (
	protected 
object 
m_Result !
;! "
	protected !
ITestExecutionContext '
	m_Context( 1
;1 2
public 
ConstructDelegator !
(! "
IStateSerializer" 2
stateSerializer3 B
)B C
{ 	
m_StateSerializer 
= 
stateSerializer  /
;/ 0
} 	
	protected 
object 
HandleResult %
(% &
)& '
{   	!
SetCurrentTestContext!! !
(!!! "
)!!" #
;!!# $
if"" 
("" 
m_Exception"" 
!="" 
null"" #
)""# $
{## 
var$$ 
temp$$ 
=$$ 
m_Exception$$ &
;$$& '
m_Exception%% 
=%% 
null%% "
;%%" #
throw&& 
temp&& 
;&& 
}'' 
var(( 

tempResult(( 
=(( 
m_Result(( %
;((% &
m_Result)) 
=)) 
null)) 
;)) 
return** 

tempResult** 
;** 
}++ 	
	protected-- 
void-- !
SetCurrentTestContext-- ,
(--, -
)--- .
{.. 	
var// 
prop// 
=// 
typeof// 
(// %
UnityTestExecutionContext// 7
)//7 8
.//8 9
GetProperty//9 D
(//D E
$str//E U
)//U V
;//V W
if00 
(00 
prop00 
!=00 
null00 
)00 
{11 
prop22 
.22 
SetValue22 
(22 
null22 "
,22" #
	m_Context22$ -
,22- .
null22/ 3
)223 4
;224 5
}33 
}44 	
public66 
object66 
Delegate66 
(66 
Type66 #
type66$ (
,66( )
object66* 0
[660 1
]661 2
	arguments663 <
)66< =
{77 	
AssertState88 
(88 
)88 
;88 
	m_Context99 
=99 %
UnityTestExecutionContext99 1
.991 2
CurrentContext992 @
;99@ A
m_RequestedType;; 
=;; 
type;; "
;;;" #
m_Arguments<< 
=<< 
	arguments<< #
;<<# $
using>> 
(>> 
var>> 
logScope>> 
=>>  !
new>>" %
LogScope>>& .
(>>. /
)>>/ 0
)>>0 1
{?? 
Execute@@ 
(@@ 
logScope@@  
)@@  !
;@@! "
}AA 
returnCC 
HandleResultCC 
(CC  
)CC  !
;CC! "
}DD 	
privateFF 
voidFF 
AssertStateFF  
(FF  !
)FF! "
{GG 	
ifHH 
(HH 
m_RequestedTypeHH 
!=HH  "
nullHH# '
)HH' (
{II 
throwJJ 
newJJ 
	ExceptionJJ #
(JJ# $
$strJJ$ B
)JJB C
;JJC D
}KK 
}LL 	
publicNN 
boolNN 
	HasActionNN 
(NN 
)NN 
{OO 	
returnPP 
m_RequestedTypePP "
!=PP# %
nullPP& *
;PP* +
}QQ 	
publicSS 
voidSS 
ExecuteSS 
(SS 
LogScopeSS $
logScopeSS% -
)SS- .
{TT 	
tryUU 
{VV 
ifWW 
(WW 
typeofWW 
(WW 
ScriptableObjectWW +
)WW+ ,
.WW, -
IsAssignableFromWW- =
(WW= >
m_RequestedTypeWW> M
)WWM N
)WWN O
{XX 
ifYY 
(YY  
m_CurrentRunningTestYY ,
!=YY- /
nullYY0 4
&&YY5 7
m_RequestedTypeYY8 G
!=YYH J 
m_CurrentRunningTestYYK _
.YY_ `
GetTypeYY` g
(YYg h
)YYh i
)YYi j
{ZZ ,
 DestroyCurrentTestObjectIfExists[[ 8
([[8 9
)[[9 :
;[[: ;
}\\ 
if]] 
(]]  
m_CurrentRunningTest]] ,
==]]- /
null]]0 4
)]]4 5
{^^ 
if__ 
(__ 
m_StateSerializer__ -
.__- .*
CanRestoreFromScriptableObject__. L
(__L M
m_RequestedType__M \
)__\ ]
)__] ^
{``  
m_CurrentRunningTestaa 0
=aa1 2
m_StateSerializeraa3 D
.aaD E+
RestoreScriptableObjectInstanceaaE d
(aad e
)aae f
;aaf g
}bb 
elsecc 
{dd  
m_CurrentRunningTestee 0
=ee1 2
ScriptableObjectee3 C
.eeC D
CreateInstanceeeD R
(eeR S
m_RequestedTypeeeS b
)eeb c
;eec d
}ff 
}gg 
m_Resulthh 
=hh  
m_CurrentRunningTesthh 3
;hh3 4
}ii 
elsejj 
{kk ,
 DestroyCurrentTestObjectIfExistsll 4
(ll4 5
)ll5 6
;ll6 7
m_Resultmm 
=mm 
	Activatormm (
.mm( )
CreateInstancemm) 7
(mm7 8
m_RequestedTypemm8 G
,mmG H
m_ArgumentsmmI T
)mmT U
;mmU V
ifnn 
(nn 
m_StateSerializernn )
.nn) *
CanRestoreFromJsonnn* <
(nn< =
m_RequestedTypenn= L
)nnL M
)nnM N
{oo 
m_StateSerializerpp )
.pp) * 
RestoreClassFromJsonpp* >
(pp> ?
refpp? B
m_ResultppC K
)ppK L
;ppL M
}qq 
}rr 
ifss 
(ss 
logScopess 
.ss 
AnyFailingLogsss +
(ss+ ,
)ss, -
)ss- .
{tt 
varuu 

failingLoguu "
=uu# $
logScopeuu% -
.uu- .
FailingLogsuu. 9
.uu9 :
Firstuu: ?
(uu? @
)uu@ A
;uuA B
throwvv 
newvv (
UnhandledLogMessageExceptionvv :
(vv: ;

failingLogvv; E
)vvE F
;vvF G
}ww 
ifxx 
(xx 
logScopexx 
.xx 
ExpectedLogsxx )
.xx) *
Anyxx* -
(xx- .
)xx. /
)xx/ 0
throwyy 
newyy )
UnexpectedLogMessageExceptionyy ;
(yy; <
LogScopeyy< D
.yyD E
CurrentyyE L
.yyL M
ExpectedLogsyyM Y
.yyY Z
PeekyyZ ^
(yy^ _
)yy_ `
)yy` a
;yya b
}zz 
catch{{ 
({{ 
	Exception{{ 
e{{ 
){{ 
{|| 
m_Exception}} 
=}} 
e}} 
;}}  
}~~ 
finally 
{
ÄÄ 
m_RequestedType
ÅÅ 
=
ÅÅ  !
null
ÅÅ" &
;
ÅÅ& '
m_Arguments
ÇÇ 
=
ÇÇ 
null
ÇÇ "
;
ÇÇ" #
}
ÉÉ 
}
ÑÑ 	
public
ÜÜ 
void
ÜÜ .
 DestroyCurrentTestObjectIfExists
ÜÜ 4
(
ÜÜ4 5
)
ÜÜ5 6
{
áá 	
if
àà 
(
àà "
m_CurrentRunningTest
àà $
==
àà% '
null
àà( ,
)
àà, -
return
ââ 
;
ââ 
Object
ää 
.
ää 
DestroyImmediate
ää #
(
ää# $"
m_CurrentRunningTest
ää$ 8
)
ää8 9
;
ää9 :
}
ãã 	
}
åå 
}çç £
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\LogScope\ILogScope.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Logging  '
{ 
internal 
	interface 
	ILogScope  
:! "
IDisposable# .
{ 
Queue 
< 
LogMatch 
> 
ExpectedLogs $
{% &
get' *
;* +
set, /
;/ 0
}1 2
List		 
<		 
LogEvent		 
>		 
AllLogs		 
{		  
get		! $
;		$ %
}		& '
List

 
<

 
LogEvent

 
>

 
FailingLogs

 "
{

# $
get

% (
;

( )
}

* +
bool !
IgnoreFailingMessages "
{# $
get% (
;( )
set* -
;- .
}/ 0
bool 
IsNUnitException 
{ 
get  #
;# $
}% &
bool #
IsNUnitSuccessException $
{% &
get' *
;* +
}, -
bool (
IsNUnitInconclusiveException )
{* +
get, /
;/ 0
}1 2
bool "
IsNUnitIgnoreException #
{$ %
get& )
;) *
}+ ,
string !
NUnitExceptionMessage $
{% &
get' *
;* +
}, -
void 
AddLog 
( 
string 
message "
," #
string$ *

stacktrace+ 5
,5 6
LogType7 >
type? C
)C D
;D E
bool 
AnyFailingLogs 
( 
) 
; 
void 
ProcessExpectedLogs  
(  !
)! "
;" #
void  
NoUnexpectedReceived !
(! "
)" #
;# $
} 
} ‹
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\PostBuildCleanupAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
|. /
AttributeTargets0 @
.@ A
ClassA F
|G H
AttributeTargetsI Y
.Y Z
MethodZ `
)` a
]a b
public		 

class		 %
PostBuildCleanupAttribute		 *
:		+ ,
	Attribute		- 6
{

 
public %
PostBuildCleanupAttribute (
(( )
Type) -
targetClass. 9
)9 :
{ 	
TargetClass 
= 
targetClass %
;% &
} 	
public %
PostBuildCleanupAttribute (
(( )
string) /
targetClassName0 ?
)? @
{ 	
TargetClass 
= 
AttributeHelper )
.) *"
GetTargetClassFromName* @
(@ A
targetClassNameA P
,P Q
typeofR X
(X Y
IPostBuildCleanupY j
)j k
)k l
;l m
} 	
internal 
Type 
TargetClass !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} Ÿ=
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Callbacks\TestResultRenderer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
.* +
	Callbacks+ 4
{ 
internal 
class 
TestResultRenderer %
{		 
private

 
static

 
class

 
Styles

 #
{ 	
public 
static 
readonly "
GUIStyle# +
SucceedLabelStyle, =
;= >
public 
static 
readonly "
GUIStyle# +
FailedLabelStyle, <
;< =
public 
static 
readonly "
GUIStyle# +
FailedMessagesStyle, ?
;? @
static 
Styles 
( 
) 
{ 
SucceedLabelStyle !
=" #
new$ '
GUIStyle( 0
(0 1
$str1 8
)8 9
;9 :
SucceedLabelStyle !
.! "
normal" (
.( )
	textColor) 2
=3 4
Color5 :
.: ;
green; @
;@ A
SucceedLabelStyle !
.! "
fontSize" *
=+ ,
$num- /
;/ 0
FailedLabelStyle  
=! "
new# &
GUIStyle' /
(/ 0
$str0 7
)7 8
;8 9
FailedLabelStyle  
.  !
normal! '
.' (
	textColor( 1
=2 3
Color4 9
.9 :
red: =
;= >
FailedLabelStyle  
.  !
fontSize! )
=* +
$num, .
;. /
FailedMessagesStyle #
=$ %
new& )
GUIStyle* 2
(2 3
$str3 :
): ;
;; <
FailedMessagesStyle #
.# $
wordWrap$ ,
=- .
false/ 4
;4 5
FailedMessagesStyle #
.# $
richText$ ,
=- .
true/ 3
;3 4
} 
} 	
private   
readonly   
List   
<   
ITestResult   )
>  ) *"
m_FailedTestCollection  + A
;  A B
private"" 
bool"" 
m_ShowResults"" "
;""" #
private## 
Vector2## 
m_ScrollPosition## (
;##( )
public%% 
TestResultRenderer%% !
(%%! "
ITestResult%%" -
testResults%%. 9
)%%9 :
{&& 	"
m_FailedTestCollection'' "
=''# $
new''% (
List'') -
<''- .
ITestResult''. 9
>''9 :
('': ;
)''; <
;''< =
GetFailedTests(( 
((( 
testResults(( &
)((& '
;((' (
})) 	
private++ 
void++ 
GetFailedTests++ #
(++# $
ITestResult++$ /
testResults++0 ;
)++; <
{,, 	
if-- 
(-- 
testResults-- 
is-- 
TestCaseResult-- -
)--- .
{.. 
if// 
(// 
testResults// 
.//  
ResultState//  +
.//+ ,
Status//, 2
==//3 5

TestStatus//6 @
.//@ A
Failed//A G
)//G H"
m_FailedTestCollection00 *
.00* +
Add00+ .
(00. /
testResults00/ :
)00: ;
;00; <
}11 
else22 
if22 
(22 
testResults22  
.22  !
HasChildren22! ,
)22, -
{33 
foreach44 
(44 
var44 
testResultsChild44 -
in44. 0
testResults441 <
.44< =
Children44= E
)44E F
{55 
GetFailedTests66 "
(66" #
testResultsChild66# 3
)663 4
;664 5
}77 
}88 
}99 	
private;; 
const;; 
int;; 
k_MaxStringLength;; +
=;;, -
$num;;. 3
;;;3 4
public== 
void== 
ShowResults== 
(==  
)==  !
{>> 	
m_ShowResults?? 
=?? 
true??  
;??  !
Cursor@@ 
.@@ 
visible@@ 
=@@ 
true@@ !
;@@! "
}AA 	
publicCC 
voidCC 
DrawCC 
(CC 
)CC 
{DD 	
ifEE 
(EE 
!EE 
m_ShowResultsEE 
)EE 
returnEE  &
;EE& '
ifFF 
(FF "
m_FailedTestCollectionFF &
.FF& '
CountFF' ,
==FF- /
$numFF0 1
)FF1 2
{GG 
	GUILayoutHH 
.HH 
LabelHH 
(HH  
$strHH  7
,HH7 8
StylesHH9 ?
.HH? @
SucceedLabelStyleHH@ Q
,HHQ R
	GUILayoutHHS \
.HH\ ]
WidthHH] b
(HHb c
$numHHc f
)HHf g
)HHg h
;HHh i
}II 
elseJJ 
{KK 
intLL 
countLL 
=LL "
m_FailedTestCollectionLL 2
.LL2 3
CountLL3 8
;LL8 9
	GUILayoutMM 
.MM 
LabelMM 
(MM  
countMM  %
+MM& '
$strMM( 8
,MM8 9
StylesMM: @
.MM@ A
FailedLabelStyleMMA Q
)MMQ R
;MMR S
m_ScrollPositionOO  
=OO! "
	GUILayoutOO# ,
.OO, -
BeginScrollViewOO- <
(OO< =
m_ScrollPositionOO= M
,OOM N
	GUILayoutOOO X
.OOX Y
ExpandWidthOOY d
(OOd e
trueOOe i
)OOi j
)OOj k
;OOk l
varPP 
textPP 
=PP 
$strPP 
;PP 
textRR 
+=RR 
$strRR C
;RRC D
textSS 
+=SS 
stringSS 
.SS 
JoinSS #
(SS# $
$strSS$ (
,SS( )"
m_FailedTestCollectionSS* @
.TT 
SelectTT 
(TT 
resultTT "
=>TT# %
resultTT& ,
.TT, -
NameTT- 1
+TT2 3
$strTT4 7
+TT8 9
resultTT: @
.TT@ A
ResultStateTTA L
+TTM N
$strTTO S
+TTT U
resultTTV \
.TT\ ]
MessageTT] d
)TTd e
.UU 
ToArrayUU 
(UU 
)UU 
)UU 
;UU  
ifWW 
(WW 
textWW 
.WW 
LengthWW 
>WW  !
k_MaxStringLengthWW" 3
)WW3 4
textXX 
=XX 
textXX 
.XX  
	SubstringXX  )
(XX) *
$numXX* +
,XX+ ,
k_MaxStringLengthXX- >
)XX> ?
;XX? @
	GUILayoutZZ 
.ZZ 
TextAreaZZ "
(ZZ" #
textZZ# '
,ZZ' (
StylesZZ) /
.ZZ/ 0
FailedMessagesStyleZZ0 C
)ZZC D
;ZZD E
	GUILayout[[ 
.[[ 
EndScrollView[[ '
([[' (
)[[( )
;[[) *
}\\ 
if]] 
(]] 
	GUILayout]] 
.]] 
Button]]  
(]]  !
$str]]! (
)]]( )
)]]) *
Application^^ 
.^^ 
Quit^^  
(^^  !
)^^! "
;^^" #
}__ 	
}`` 
}aa ‰
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Messages\IEditModeTestYieldInstruction.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

	interface )
IEditModeTestYieldInstruction 2
{ 
bool 
ExpectDomainReload 
{  !
get" %
;% &
}' (
bool !
ExpectedPlaymodeState "
{# $
get% (
;( )
}* +
IEnumerator 
Perform 
( 
) 
; 
} 
} •*
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\RemoteTestData.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
[		 
Serializable		 
]		 
internal

 
class

 
RemoteTestData

 !
{ 
public 
string 
id 
; 
public 
string 
name 
; 
public 
string 
fullName 
; 
public 
int 
testCaseCount  
;  !
public 
int 

ChildIndex 
; 
public 
bool 
hasChildren 
;  
public 
bool 
isSuite 
; 
public 
string 
[ 
] 
childrenIds #
;# $
public 
int 
testCaseTimeout "
;" #
public 
string 
[ 
] 

Categories "
;" #
public 
bool 
IsTestAssembly "
;" #
public 
RunState 
RunState  
;  !
public 
string 
Description !
;! "
public 
string 

SkipReason  
;  !
public 
string 
ParentId 
; 
public 
string 

UniqueName  
;  !
public 
string 
ParentUniqueName &
;& '
public 
string 
ParentFullName $
;$ %
internal 
RemoteTestData 
(  
ITest  %
test& *
)* +
{   	
id!! 
=!! 
test!! 
.!! 
Id!! 
;!! 
name"" 
="" 
test"" 
."" 
Name"" 
;"" 
fullName## 
=## 
test## 
.## 
FullName## $
;##$ %
testCaseCount$$ 
=$$ 
test$$  
.$$  !
TestCaseCount$$! .
;$$. /

ChildIndex%% 
=%% 
-%% 
$num%% 
;%% 
if&& 
(&& 
test&& 
.&& 

Properties&& 
[&&  
$str&&  ,
]&&, -
.&&- .
Count&&. 3
>&&4 5
$num&&6 7
)&&7 8
{'' 

ChildIndex(( 
=(( 
((( 
int(( !
)((! "
test((" &
.((& '

Properties((' 1
[((1 2
$str((2 >
]((> ?
[((? @
$num((@ A
]((A B
;((B C
})) 
hasChildren** 
=** 
test** 
.** 
HasChildren** *
;*** +
isSuite++ 
=++ 
test++ 
.++ 
IsSuite++ "
;++" #
childrenIds,, 
=,, 
test,, 
.,, 
Tests,, $
.,,$ %
Select,,% +
(,,+ ,
t,,, -
=>,,. 0
t,,1 2
.,,2 3
Id,,3 5
),,5 6
.,,6 7
ToArray,,7 >
(,,> ?
),,? @
;,,@ A

Categories-- 
=-- 
test-- 
.-- $
GetAllCategoriesFromTest-- 6
(--6 7
)--7 8
.--8 9
ToArray--9 @
(--@ A
)--A B
;--B C
IsTestAssembly.. 
=.. 
test.. !
is.." $
TestAssembly..% 1
;..1 2
RunState// 
=// 
(// 
RunState//  
)//  !
Enum//! %
.//% &
Parse//& +
(//+ ,
typeof//, 2
(//2 3
RunState//3 ;
)//; <
,//< =
test//> B
.//B C
RunState//C K
.//K L
ToString//L T
(//T U
)//U V
)//V W
;//W X
Description00 
=00 
(00 
string00 !
)00! "
test00" &
.00& '

Properties00' 1
.001 2
Get002 5
(005 6
PropertyNames006 C
.00C D
Description00D O
)00O P
;00P Q

SkipReason11 
=11 
test11 
.11 
GetSkipReason11 +
(11+ ,
)11, -
;11- .
ParentId22 
=22 
test22 
.22 
GetParentId22 '
(22' (
)22( )
;22) *

UniqueName33 
=33 
test33 
.33 
GetUniqueName33 +
(33+ ,
)33, -
;33- .
ParentUniqueName44 
=44 
test44 #
.44# $
GetParentUniqueName44$ 7
(447 8
)448 9
;449 :
ParentFullName55 
=55 
test55 !
.55! "
GetParentFullName55" 3
(553 4
)554 5
;555 6
}66 	
}77 
}88 ·$
∆D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableRepeatedTestCommand.cs
	namespace

 	
UnityEngine


 
.

 
	TestTools

 
{ 
internal 
class )
EnumerableRepeatedTestCommand 0
:1 2!
DelegatingTestCommand3 H
,H I(
IEnumerableTestMethodCommandJ f
{ 
private 
int 
repeatCount 
;  
public )
EnumerableRepeatedTestCommand ,
(, -
RepeatAttribute- <
.< =
RepeatedTestCommand= P
commandToReplaceQ a
)a b
:c d
basee i
(i j
commandToReplacej z
.z {
GetInnerCommand	{ ä
(
ä ã
)
ã å
)
å ç
{ 	
repeatCount 
= 
( 
int 
) 
typeof  &
(& '
RepeatAttribute' 6
.6 7
RepeatedTestCommand7 J
)J K
. 
GetField 
( 
$str '
,' (
BindingFlags) 5
.5 6
	NonPublic6 ?
|@ A
BindingFlagsB N
.N O
InstanceO W
)W X
. 
GetValue 
( 
commandToReplace *
)* +
;+ ,
} 	
public 
override 

TestResult "
Execute# *
(* +!
ITestExecutionContext+ @
contextA H
)H I
{ 	
throw 
new #
NotImplementedException -
(- .
$str. E
)E F
;F G
} 	
public 
IEnumerable 
ExecuteEnumerable ,
(, -!
ITestExecutionContext- B
contextC J
)J K
{ 	
var 
unityContext 
= 
(  %
UnityTestExecutionContext  9
)9 :
context: A
;A B
int 
count 
= 
unityContext $
.$ %
EnumerableTestState% 8
.8 9
Repeat9 ?
;? @
var   !
firstCycleAfterResume   %
=  & '
count  ( -
>  . /
$num  0 1
;  1 2
while"" 
("" 
count"" 
<"" 
repeatCount"" &
||""' )
(""* +!
firstCycleAfterResume""+ @
&&""A C
count""D I
<=""J L
repeatCount""M X
)""X Y
)""Y Z
{## 
if$$ 
($$ 
!$$ !
firstCycleAfterResume$$ *
)$$* +
{%% 
count&& 
++&& 
;&& 
}'' !
firstCycleAfterResume)) %
=))& '
false))( -
;))- .
unityContext** 
.** 
EnumerableTestState** 0
.**0 1
Repeat**1 7
=**8 9
count**: ?
;**? @
if,, 
(,, 
innerCommand,,  
is,,! #(
IEnumerableTestMethodCommand,,$ @
),,@ A
{-- 
var.. 
executeEnumerable.. )
=..* +
(.., -
(..- .(
IEnumerableTestMethodCommand... J
)..J K
innerCommand..K W
)..W X
...X Y
ExecuteEnumerable..Y j
(..j k
context..k r
)..r s
;..s t
foreach// 
(// 
var//  
iterator//! )
in//* ,
executeEnumerable//- >
)//> ?
{00 
yield11 
return11 $
iterator11% -
;11- .
}22 
}33 
else44 
{55 
context66 
.66 
CurrentResult66 )
=66* +
innerCommand66, 8
.668 9
Execute669 @
(66@ A
context66A H
)66H I
;66I J
}77 
if99 
(99 
context99 
.99 
CurrentResult99 )
.99) *
ResultState99* 5
!=996 8
ResultState999 D
.99D E
Success99E L
)99L M
{:: 
break;; 
;;; 
}<< 
}== 
unityContext?? 
.?? 
EnumerableTestState?? ,
.??, -
Repeat??- 3
=??4 5
$num??6 7
;??7 8
}@@ 	
}AA 
}BB ˆ
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\WorkItemFactory.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
abstract 
class 
WorkItemFactory +
{ 
public		 
UnityWorkItem		 
Create		 #
(		# $
ITest		$ )

loadedTest		* 4
,		4 5
ITestFilter		6 A
filter		B H
)		H I
{

 	
	TestSuite 
suite 
= 

loadedTest (
as) +
	TestSuite, 5
;5 6
if 
( 
suite 
!= 
null 
) 
{ 
return 
new 
CompositeWorkItem ,
(, -
suite- 2
,2 3
filter4 :
,: ;
this< @
)@ A
;A B
} 
var 

testMethod 
= 
( 

TestMethod (
)( )

loadedTest) 3
;3 4
if 
( 

testMethod 
. 
Method !
.! "

ReturnType" ,
., -
Type- 1
!=2 4
typeof5 ;
(; <
IEnumerator< G
)G H
)H I
{ 
return 
new 
DefaultTestWorkItem .
(. /

testMethod/ 9
,9 :
filter; A
)A B
;B C
} 
return 
Create 
( 

testMethod $
,$ %
filter& ,
,, -

loadedTest. 8
)8 9
;9 :
} 	
	protected 
abstract 
UnityWorkItem (
Create) /
(/ 0

TestMethod0 :
method; A
,A B
ITestFilterC N
filterO U
,U V
ITestW \

loadedTest] g
)g h
;h i
} 
} —
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableTestState.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class 
EnumerableTestState &
:' (
ScriptableObject) 9
{ 
public 
int 
Repeat 
; 
public 
int 
Retry 
; 
} 
} §L
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\UnityWorkItem.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
abstract 
class 
UnityWorkItem )
{ 
	protected 
readonly 
WorkItemFactory *
	m_Factory+ 4
;4 5
	protected 
bool #
m_ExecuteTestStartEvent .
;. /
	protected 
bool $
m_DontRunRestoringResult /
;/ 0
	protected 
const 
int 
k_DefaultTimeout ,
=- .
$num/ 3
*4 5
$num6 9
;9 :
public 
event 
EventHandler !
	Completed" +
;+ ,
public 
bool "
ResultedInDomainReload *
{+ ,
get- 0
;0 1
internal2 :
set; >
;> ?
}@ A
public %
UnityTestExecutionContext (
Context) 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public 
Test 
Test 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public 

TestResult 
Result  
{! "
get# &
;& '
	protected( 1
set2 5
;5 6
}7 8
public 
WorkItemState 
State "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
List 
< 
ITestAction 
>  
Actions! (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
	protected!! 
UnityWorkItem!! 
(!!  
Test!!  $
test!!% )
,!!) *
WorkItemFactory!!+ :
factory!!; B
)!!B C
{"" 	
	m_Factory## 
=## 
factory## 
;##  
Test$$ 
=$$ 
test$$ 
;$$ 
Actions%% 
=%% 
new%% 
List%% 
<%% 
ITestAction%% *
>%%* +
(%%+ ,
)%%, -
;%%- .
Result&& 
=&& 
test&& 
.&& 
MakeTestResult&& (
(&&( )
)&&) *
;&&* +
State'' 
='' 
WorkItemState'' !
.''! "
Ready''" '
;''' (#
m_ExecuteTestStartEvent(( #
=(($ %#
ShouldExecuteStartEvent((& =
(((= >
)((> ?
;((? @$
m_DontRunRestoringResult)) $
=))% &
ShouldRestore))' 4
())4 5
test))5 9
)))9 :
;)): ;
}** 	
	protected,, 
static,, 
bool,, 
ShouldRestore,, +
(,,+ ,
ITest,,, 1

loadedTest,,2 <
),,< =
{-- 	
return.. #
UnityWorkItemDataHolder.. *
...* + 
alreadyExecutedTests..+ ?
!=..@ B
null..C G
&&..H J#
UnityWorkItemDataHolder// *
.//* + 
alreadyExecutedTests//+ ?
.//? @
Contains//@ H
(//H I

loadedTest//I S
.//S T
GetUniqueName//T a
(//a b
)//b c
)//c d
;//d e
}00 	
	protected22 
bool22 #
ShouldExecuteStartEvent22 .
(22. /
)22/ 0
{33 	
return44 #
UnityWorkItemDataHolder44 *
.44* +
alreadyStartedTests44+ >
!=44? A
null44B F
&&44G I#
UnityWorkItemDataHolder55 *
.55* +
alreadyStartedTests55+ >
.55> ?
All55? B
(55B C
x55C D
=>55E G
x55H I
!=55J L
Test55M Q
.55Q R
GetUniqueName55R _
(55_ `
)55` a
)55a b
&&55c e
!66 
ShouldRestore66 !
(66! "
Test66" &
)66& '
;66' (
}77 	
	protected99 
abstract99 
IEnumerable99 &
PerformWork99' 2
(992 3
)993 4
;994 5
public;; 
void;; 
InitializeContext;; %
(;;% &%
UnityTestExecutionContext;;& ?
context;;@ G
);;G H
{<< 	
Context== 
=== 
context== 
;== 
if?? 
(?? 
Test?? 
is?? 
TestAssembly?? $
)??$ %
Actions@@ 
.@@ 
AddRange@@  
(@@  !
ActionsHelper@@! .
.@@. /&
GetActionsFromTestAssembly@@/ I
(@@I J
(@@J K
TestAssembly@@K W
)@@W X
Test@@X \
)@@\ ]
)@@] ^
;@@^ _
elseAA 
ifAA 
(AA 
TestAA 
isAA $
ParameterizedMethodSuiteAA 5
)AA5 6
ActionsBB 
.BB 
AddRangeBB  
(BB  !
ActionsHelperBB! .
.BB. /(
GetActionsFromTestMethodInfoBB/ K
(BBK L
TestBBL P
.BBP Q
MethodBBQ W
)BBW X
)BBX Y
;BBY Z
elseCC 
ifCC 
(CC 
TestCC 
.CC 
TypeInfoCC "
!=CC# %
nullCC& *
)CC* +
ActionsDD 
.DD 
AddRangeDD  
(DD  !
ActionsHelperDD! .
.DD. /)
GetActionsFromTypesAttributesDD/ L
(DDL M
TestDDM Q
.DDQ R
TypeInfoDDR Z
.DDZ [
TypeDD[ _
)DD_ `
)DD` a
;DDa b
}EE 	
publicGG 
virtualGG 
IEnumerableGG "
ExecuteGG# *
(GG* +
)GG+ ,
{HH 	
ContextII 
.II 
CurrentTestII 
=II  !
thisII" &
.II& '
TestII' +
;II+ ,
ContextJJ 
.JJ 
CurrentResultJJ !
=JJ" #
thisJJ$ (
.JJ( )
ResultJJ) /
;JJ/ 0
ifLL 
(LL #
m_ExecuteTestStartEventLL '
)LL' (
{MM 
ContextNN 
.NN 
ListenerNN  
.NN  !
TestStartedNN! ,
(NN, -
TestNN- 1
)NN1 2
;NN2 3
}OO 
ContextQQ 
.QQ 
	StartTimeQQ 
=QQ 
DateTimeQQ  (
.QQ( )
UtcNowQQ) /
;QQ/ 0
ContextRR 
.RR 

StartTicksRR 
=RR  
	StopwatchRR! *
.RR* +
GetTimestampRR+ 7
(RR7 8
)RR8 9
;RR9 :
StateTT 
=TT 
WorkItemStateTT !
.TT! "
RunningTT" )
;TT) *
returnVV 
PerformWorkVV 
(VV 
)VV  
;VV  !
}WW 	
	protectedYY 
voidYY 
WorkItemCompleteYY '
(YY' (
)YY( )
{ZZ 	
State[[ 
=[[ 
WorkItemState[[ !
.[[! "
Complete[[" *
;[[* +
Result]] 
.]] 
	StartTime]] 
=]] 
Context]] &
.]]& '
	StartTime]]' 0
;]]0 1
Result^^ 
.^^ 
EndTime^^ 
=^^ 
DateTime^^ %
.^^% &
UtcNow^^& ,
;^^, -
long`` 
	tickCount`` 
=`` 
	Stopwatch`` &
.``& '
GetTimestamp``' 3
(``3 4
)``4 5
-``6 7
Context``8 ?
.``? @

StartTicks``@ J
;``J K
doubleaa 
secondsaa 
=aa 
(aa 
doubleaa $
)aa$ %
	tickCountaa% .
/aa/ 0
	Stopwatchaa1 :
.aa: ;
	Frequencyaa; D
;aaD E
Resultbb 
.bb 
Durationbb 
=bb 
secondsbb %
;bb% &
Contextff 
.ff 
Listenerff 
.ff 
TestFinishedff )
(ff) *
Resultff* 0
)ff0 1
;ff1 2
ifhh 
(hh 
	Completedhh 
!=hh 
nullhh !
)hh! "
	Completedii 
(ii 
thisii 
,ii 
	EventArgsii  )
.ii) *
Emptyii* /
)ii/ 0
;ii0 1
Contextkk 
.kk 

TestObjectkk 
=kk  
nullkk! %
;kk% &
Testll 
.ll 
Fixturell 
=ll 
nullll 
;ll  
}mm 	
publicoo 
virtualoo 
voidoo 
Canceloo "
(oo" #
booloo# '
forceoo( -
)oo- .
{pp 	
Resultqq 
.qq 
	SetResultqq 
(qq 
ResultStateqq (
.qq( )
	Cancelledqq) 2
,qq2 3
$strqq4 G
)qqG H
;qqH I
Contextrr 
.rr 
Listenerrr 
.rr 
TestFinishedrr )
(rr) *
Resultrr* 0
)rr0 1
;rr1 2
}ss 	
}tt 
}uu ò
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector3EqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public		 

class		 #
Vector3EqualityComparer		 (
:		) *
IEqualityComparer		+ <
<		< =
Vector3		= D
>		D E
{

 
private 
const 
float 
k_DefaultError *
=+ ,
$num- 4
;4 5
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly #
Vector3EqualityComparer  7

m_Instance8 B
=C D
newE H#
Vector3EqualityComparerI `
(` a
)a b
;b c
public 
static #
Vector3EqualityComparer -
Instance. 6
{7 8
get9 <
{= >
return? E

m_InstanceF P
;P Q
}R S
}T U
private #
Vector3EqualityComparer '
(' (
)( )
:* +
this, 0
(0 1
k_DefaultError1 ?
)? @
{A B
}B C
public #
Vector3EqualityComparer &
(& '
float' ,
allowedError- 9
)9 :
{ 	
this 
. 
AllowedError 
= 
allowedError  ,
;, -
} 	
publicAA 
boolAA 
EqualsAA 
(AA 
Vector3AA "
expectedAA# +
,AA+ ,
Vector3AA- 4
actualAA5 ;
)AA; <
{BB 	
returnCC 
UtilsCC 
.CC 
AreFloatsEqualCC '
(CC' (
expectedCC( 0
.CC0 1
xCC1 2
,CC2 3
actualCC4 :
.CC: ;
xCC; <
,CC< =
AllowedErrorCC> J
)CCJ K
&&CCL N
UtilsDD 
.DD 
AreFloatsEqualDD $
(DD$ %
expectedDD% -
.DD- .
yDD. /
,DD/ 0
actualDD1 7
.DD7 8
yDD8 9
,DD9 :
AllowedErrorDD; G
)DDG H
&&DDI K
UtilsEE 
.EE 
AreFloatsEqualEE $
(EE$ %
expectedEE% -
.EE- .
zEE. /
,EE/ 0
actualEE1 7
.EE7 8
zEE8 9
,EE9 :
AllowedErrorEE; G
)EEG H
;EEH I
}FF 	
publicMM 
intMM 
GetHashCodeMM 
(MM 
Vector3MM &
vec3MM' +
)MM+ ,
{NN 	
returnOO 
$numOO 
;OO 
}PP 	
}QQ 
}RR °
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\ITestRunnerListener.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface 
ITestRunnerListener *
{ 
void		 

RunStarted		 
(		 
ITest		 

testsToRun		 (
)		( )
;		) *
void

 
RunFinished

 
(

 
ITestResult

 $
testResults

% 0
)

0 1
;

1 2
void 
TestStarted 
( 
ITest 
test #
)# $
;$ %
void 
TestFinished 
( 
ITestResult %
result& ,
), -
;- .
} 
[ 
Serializable 
] 
internal 
class 
TestFinishedEvent $
:% &

UnityEvent' 1
<1 2
ITestResult2 =
>= >
{? @
}@ A
[ 
Serializable 
] 
internal 
class 
TestStartedEvent #
:$ %

UnityEvent& 0
<0 1
ITest1 6
>6 7
{8 9
}9 :
[ 
Serializable 
] 
internal 
class 
RunFinishedEvent #
:$ %

UnityEvent& 0
<0 1
ITestResult1 <
>< =
{> ?
}? @
[ 
Serializable 
] 
internal 
class 
RunStartedEvent "
:# $

UnityEvent% /
</ 0
ITest0 5
>5 6
{7 8
}8 9
} ≥
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\ColorEqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class !
ColorEqualityComparer &
:' (
IEqualityComparer) :
<: ;
Color; @
>@ A
{		 
private

 
const

 
float

 
k_DefaultError

 *
=

+ ,
$num

- 2
;

2 3
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly !
ColorEqualityComparer  5

m_Instance6 @
=A B
newC F!
ColorEqualityComparerG \
(\ ]
)] ^
;^ _
public 
static !
ColorEqualityComparer +
Instance, 4
{5 6
get7 :
{; <
return= C

m_InstanceD N
;N O
}P Q
}R S
private !
ColorEqualityComparer %
(% &
)& '
:( )
this* .
(. /
k_DefaultError/ =
)= >
{ 	
} 	
public !
ColorEqualityComparer $
($ %
float% *
error+ 0
)0 1
{ 	
this 
. 
AllowedError 
= 
error  %
;% &
} 	
public>> 
bool>> 
Equals>> 
(>> 
Color>>  
expected>>! )
,>>) *
Color>>+ 0
actual>>1 7
)>>7 8
{?? 	
return@@ 
Utils@@ 
.@@ '
AreFloatsEqualAbsoluteError@@ 4
(@@4 5
expected@@5 =
.@@= >
r@@> ?
,@@? @
actual@@A G
.@@G H
r@@H I
,@@I J
AllowedError@@K W
)@@W X
&&@@Y [
UtilsAA 
.AA '
AreFloatsEqualAbsoluteErrorAA 1
(AA1 2
expectedAA2 :
.AA: ;
gAA; <
,AA< =
actualAA> D
.AAD E
gAAE F
,AAF G
AllowedErrorAAH T
)AAT U
&&AAV X
UtilsBB 
.BB '
AreFloatsEqualAbsoluteErrorBB 1
(BB1 2
expectedBB2 :
.BB: ;
bBB; <
,BB< =
actualBB> D
.BBD E
bBBE F
,BBF G
AllowedErrorBBH T
)BBT U
&&BBV X
UtilsCC 
.CC '
AreFloatsEqualAbsoluteErrorCC 1
(CC1 2
expectedCC2 :
.CC: ;
aCC; <
,CC< =
actualCC> D
.CCD E
aCCE F
,CCF G
AllowedErrorCCH T
)CCT U
;CCU V
}DD 	
publicKK 
intKK 
GetHashCodeKK 
(KK 
ColorKK $
colorKK% *
)KK* +
{LL 	
returnMM 
$numMM 
;MM 
}NN 	
}OO 
}PP è
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\ConstraintsExtensions.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Constraints  +
{ 
public 

static 
class  
ConstraintExtensions ,
{ 
public 
static (
AllocatingGCMemoryConstraint 2
AllocatingGCMemory3 E
(E F
thisF J 
ConstraintExpressionK _
chain` e
)e f
{ 	
var		 

constraint		 
=		 
new		  (
AllocatingGCMemoryConstraint		! =
(		= >
)		> ?
;		? @
chain

 
.

 
Append

 
(

 

constraint

 #
)

# $
;

$ %
return 

constraint 
; 
} 	
} 
} Ä
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Vector2EqualityComparer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

class #
Vector2EqualityComparer (
:) *
IEqualityComparer+ <
<< =
Vector2= D
>D E
{ 
private 
const 
float 
k_DefaultError *
=+ ,
$num- 4
;4 5
private 
readonly 
float 
AllowedError +
;+ ,
private 
static 
readonly #
Vector2EqualityComparer  7

m_Instance8 B
=C D
newE H#
Vector2EqualityComparerI `
(` a
)a b
;b c
public 
static #
Vector2EqualityComparer -
Instance. 6
{7 8
get9 <
{= >
return? E

m_InstanceF P
;P Q
}R S
}T U
private #
Vector2EqualityComparer '
(' (
)( )
:* +
this, 0
(0 1
k_DefaultError1 ?
)? @
{ 	
} 	
public"" #
Vector2EqualityComparer"" &
(""& '
float""' ,
error""- 2
)""2 3
{## 	
this$$ 
.$$ 
AllowedError$$ 
=$$ 
error$$  %
;$$% &
}%% 	
publicGG 
boolGG 
EqualsGG 
(GG 
Vector2GG "
expectedGG# +
,GG+ ,
Vector2GG- 4
actualGG5 ;
)GG; <
{HH 	
returnII 
UtilsII 
.II 
AreFloatsEqualII '
(II' (
expectedII( 0
.II0 1
xII1 2
,II2 3
actualII4 :
.II: ;
xII; <
,II< =
AllowedErrorII> J
)IIJ K
&&IIL N
UtilsJJ 
.JJ 
AreFloatsEqualJJ $
(JJ$ %
expectedJJ% -
.JJ- .
yJJ. /
,JJ/ 0
actualJJ1 7
.JJ7 8
yJJ8 9
,JJ9 :
AllowedErrorJJ; G
)JJG H
;JJH I
}KK 	
publicQQ 
intQQ 
GetHashCodeQQ 
(QQ 
Vector2QQ &
vec2QQ' +
)QQ+ ,
{RR 	
returnSS 
$numSS 
;SS 
}TT 	
}UU 
}VV Û
õD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\Utils.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
public 

static 
class 
Utils 
{		 
public## 
static## 
bool## 
AreFloatsEqual## )
(##) *
float##* /
expected##0 8
,##8 9
float##: ?
actual##@ F
,##F G
float##H M
epsilon##N U
)##U V
{$$ 	
if&& 
(&& 
expected&& 
==&& 
Mathf&& !
.&&! "
Infinity&&" *
||&&+ -
actual&&. 4
==&&5 7
Mathf&&8 =
.&&= >
Infinity&&> F
||&&G I
expected&&J R
==&&S U
Mathf&&V [
.&&[ \
NegativeInfinity&&\ l
||&&m o
actual&&p v
==&&w y
Mathf&&z 
.	&& Ä
NegativeInfinity
&&Ä ê
)
&&ê ë
return'' 
expected'' 
==''  "
actual''# )
;'') *
return.. 
Math.. 
... 
Abs.. 
(.. 
actual.. "
-..# $
expected..% -
)..- .
<=../ 1
epsilon..2 9
*..: ;
Mathf..< A
...A B
Max..B E
(..E F
Mathf..F K
...K L
Max..L O
(..O P
Mathf..P U
...U V
Abs..V Y
(..Y Z
actual..Z `
)..` a
,..a b
Mathf..c h
...h i
Abs..i l
(..l m
expected..m u
)..u v
)..v w
,..w x
$num..y }
)..} ~
;..~ 
}// 	
publicJJ 
staticJJ 
boolJJ '
AreFloatsEqualAbsoluteErrorJJ 6
(JJ6 7
floatJJ7 <
expectedJJ= E
,JJE F
floatJJG L
actualJJM S
,JJS T
floatJJU Z 
allowedAbsoluteErrorJJ[ o
)JJo p
{KK 	
returnLL 
MathLL 
.LL 
AbsLL 
(LL 
actualLL "
-LL# $
expectedLL% -
)LL- .
<=LL/ 1 
allowedAbsoluteErrorLL2 F
;LLF G
}MM 	
publicTT 
staticTT 

GameObjectTT  
CreatePrimitiveTT! 0
(TT0 1
PrimitiveTypeTT1 >
typeTT? C
)TTC D
{UU 	
varVV 
primVV 
=VV 

GameObjectVV !
.VV! "
CreatePrimitiveVV" 1
(VV1 2
typeVV2 6
)VV6 7
;VV7 8
varWW 
rendererWW 
=WW 
primWW 
.WW  
GetComponentWW  ,
<WW, -
RendererWW- 5
>WW5 6
(WW6 7
)WW7 8
;WW8 9
ifXX 
(XX 
rendererXX 
)XX 
rendererYY 
.YY 
sharedMaterialYY '
=YY( )
newYY* -
MaterialYY. 6
(YY6 7
ShaderYY7 =
.YY= >
FindYY> B
(YYB C
$strYYC N
)YYN O
)YYO P
;YYP Q
returnZZ 
primZZ 
;ZZ 
}[[ 	
}\\ 
}]] é	
…D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\TestMustExpectAllLogsAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
|. /
AttributeTargets0 @
.@ A
ClassA F
|G H
AttributeTargetsI Y
.Y Z
MethodZ `
)` a
]a b
public 

class *
TestMustExpectAllLogsAttribute /
:0 1
	Attribute2 ;
{ 
public *
TestMustExpectAllLogsAttribute -
(- .
bool. 2

mustExpect3 =
=> ?
true@ D
)D E
=> 

MustExpect 
= 

mustExpect &
;& '
public 
bool 

MustExpect 
{  
get! $
;$ %
}& '
} 
} 

¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\LogScope\LogEvent.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Logging  '
{ 
internal 
class 
LogEvent 
{ 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

StackTrace  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
LogType		 
LogType		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
bool 
	IsHandled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
string 
. 
Format  
(  !
$str! ,
,, -
LogType. 5
,5 6
Message7 >
)> ?
;? @
} 	
} 
} À
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AttributeHelper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
static 
class 
AttributeHelper )
{ 
internal		 
static		 
Type		 "
GetTargetClassFromName		 3
(		3 4
string		4 :
targetClassName		; J
,		J K
Type		L P
attributeInterface		Q c
)		c d
{

 	
Type 
targetClass 
= 
null #
;# $
foreach 
( 
var 
assemblyName %
in& (
ScriptingRuntime) 9
.9 : 
GetAllUserAssemblies: N
(N O
)O P
)P Q
{ 
var 
name 
= 
Path 
.  '
GetFileNameWithoutExtension  ;
(; <
assemblyName< H
)H I
;I J
targetClass 
= 
Type "
." #
GetType# *
(* +
targetClassName+ :
+; <
$str= @
+A B
nameC G
)G H
;H I
if 
( 
targetClass 
!=  "
null# '
)' (
break 
; 
} 
if 
( 
targetClass 
== 
null #
)# $
{ 
Debug 
. 
LogWarningFormat &
(& '
$str' ?
+@ A
targetClassNameB Q
)Q R
;R S
return 
null 
; 
} 
ValidateTargetClass 
(  
targetClass  +
,+ ,
attributeInterface- ?
)? @
;@ A
return 
targetClass 
; 
} 	
private 
static 
void 
ValidateTargetClass /
(/ 0
Type0 4
targetClass5 @
,@ A
TypeB F
attributeInterfaceG Y
)Y Z
{   	
var!! 
constructorInfos!!  
=!!! "
targetClass!!# .
.!!. /
GetConstructors!!/ >
(!!> ?
)!!? @
;!!@ A
if"" 
("" 
constructorInfos""  
.""  !
All""! $
(""$ %
constructor""% 0
=>""1 3
constructor""4 ?
.""? @
GetParameters""@ M
(""M N
)""N O
.""O P
Length""P V
!=""W Y
$num""Z [
)""[ \
)""\ ]
{## 
Debug$$ 
.$$ 
LogWarningFormat$$ &
($$& '
$str$$' S
,$$S T
targetClass$$U `
.$$` a
Name$$a e
)$$e f
;$$f g
}%% 
if'' 
('' 
!'' 
attributeInterface'' #
.''# $
IsAssignableFrom''$ 4
(''4 5
targetClass''5 @
)''@ A
)''A B
{(( 
Debug)) 
.)) 
LogWarningFormat)) &
())& '
$str))' C
,))C D
targetClass))E P
.))P Q
Name))Q U
,))U V
attributeInterface))W i
.))i j
Name))j n
)))n o
;))o p
}** 
}++ 	
},, 
}-- ı
ƒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\BeforeAfterTestCommandState.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class '
BeforeAfterTestCommandState .
:/ 0
ScriptableObject1 A
{		 
public

 
int

 
NextBeforeStepIndex

 &
;

& '
public 
int 
NextBeforeStepPc #
;# $
public 
int 
NextAfterStepIndex %
;% &
public 
int 
NextAfterStepPc "
;" #
public 
bool 

TestHasRun 
; 
public 

TestStatus #
CurrentTestResultStatus 1
;1 2
public 
string "
CurrentTestResultLabel ,
;, -
public 
FailureSite !
CurrentTestResultSite 0
;0 1
public 
string 
CurrentTestMessage (
;( )
public 
string "
CurrentTestStrackTrace ,
;, -
public 
bool 
TestAfterStarted $
;$ %
public 
long 
	Timestamp 
; 
public 
void 
Reset 
( 
) 
{ 	
NextBeforeStepIndex 
=  !
$num" #
;# $
NextBeforeStepPc 
= 
$num  
;  !
NextAfterStepIndex 
=  
$num! "
;" #
NextAfterStepPc 
= 
$num 
;  

TestHasRun 
= 
false 
; #
CurrentTestResultStatus #
=$ %

TestStatus& 0
.0 1
Inconclusive1 =
;= >"
CurrentTestResultLabel "
=# $
null% )
;) *!
CurrentTestResultSite   !
=  " #
default  $ +
(  + ,
FailureSite  , 7
)  7 8
;  8 9
CurrentTestMessage!! 
=!!  
null!!! %
;!!% &"
CurrentTestStrackTrace"" "
=""# $
null""% )
;"") *
TestAfterStarted## 
=## 
false## $
;##$ %
}$$ 	
public&& 
void&& 
StoreTestResult&& #
(&&# $

TestResult&&$ .
result&&/ 5
)&&5 6
{'' 	#
CurrentTestResultStatus(( #
=(($ %
result((& ,
.((, -
ResultState((- 8
.((8 9
Status((9 ?
;((? @"
CurrentTestResultLabel)) "
=))# $
result))% +
.))+ ,
ResultState)), 7
.))7 8
Label))8 =
;))= >!
CurrentTestResultSite** !
=**" #
result**$ *
.*** +
ResultState**+ 6
.**6 7
Site**7 ;
;**; <
CurrentTestMessage++ 
=++  
result++! '
.++' (
Message++( /
;++/ 0"
CurrentTestStrackTrace,, "
=,,# $
result,,% +
.,,+ ,

StackTrace,,, 6
;,,6 7
}-- 	
public// 
void// 
ApplyTestResult// #
(//# $

TestResult//$ .
result/// 5
)//5 6
{00 	
result11 
.11 
	SetResult11 
(11 
new11  
ResultState11! ,
(11, -#
CurrentTestResultStatus11- D
,11D E"
CurrentTestResultLabel11F \
,11\ ]!
CurrentTestResultSite11^ s
)11s t
,11t u
CurrentTestMessage	11v à
,
11à â$
CurrentTestStrackTrace
11ä †
)
11† °
;
11° ¢
}22 	
}33 
}44 è
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\IAssemblyWrapper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
	interface 
IAssemblyWrapper '
{ 
Assembly 
Assembly 
{ 
get 
;  
}! "
string 
Location 
{ 
get 
; 
}  
AssemblyName		 
[		 
]		 #
GetReferencedAssemblies		 .
(		. /
)		/ 0
;		0 1
}

 
} ú
ùD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\Is.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Constraints  +
{ 
public 

class 
Is 
: 
NUnit 
. 
	Framework %
.% &
Is& (
{ 
public 
static (
AllocatingGCMemoryConstraint 2
AllocatingGCMemory3 E
(E F
)F G
{ 	
return 
new (
AllocatingGCMemoryConstraint 3
(3 4
)4 5
;5 6
} 	
}		 
}

 â
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\AssemblyWrapper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
class 
AssemblyWrapper "
:# $
IAssemblyWrapper% 5
{ 
public 
AssemblyWrapper 
( 
Assembly '
assembly( 0
)0 1
{		 	
Assembly

 
=

 
assembly

 
;

  
} 	
public 
Assembly 
Assembly  
{! "
get# &
;& '
}( )
public 
virtual 
string 
Location &
{ 	
get 
{ 
throw 
new #
NotImplementedException 1
(1 2
)2 3
;3 4
} 
} 	
public 
virtual 
AssemblyName #
[# $
]$ %#
GetReferencedAssemblies& =
(= >
)> ?
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} »
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Filters\CategoryFilterExtended.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Filters1 8
{ 
internal		 
class		 "
CategoryFilterExtended		 )
:		* +
CategoryFilter		, :
{

 
public 
static 
string 
k_DefaultCategory .
=/ 0
$str1 @
;@ A
public "
CategoryFilterExtended %
(% &
string& ,
name- 1
)1 2
:3 4
base5 9
(9 :
name: >
)> ?
{ 	
} 	
public 
override 
bool 
Match "
(" #
ITest# (
test) -
)- .
{ 	
IList 
testCategories  
=! "
test# '
.' (

Properties( 2
[2 3
PropertyNames3 @
.@ A
CategoryA I
]I J
.J K
CastK O
<O P
stringP V
>V W
(W X
)X Y
.Y Z
ToListZ `
(` a
)a b
;b c
if 
( 
test 
is 

TestMethod "
)" #
{ 
IList 
fixtureCategories '
=( )
test* .
.. /
Parent/ 5
.5 6

Properties6 @
[@ A
PropertyNamesA N
.N O
CategoryO W
]W X
.X Y
CastY ]
<] ^
string^ d
>d e
(e f
)f g
.g h
ToListh n
(n o
)o p
;p q
if 
( 
fixtureCategories %
.% &
Count& +
>, -
$num. /
)/ 0
return 
false  
;  !
} 
if 
( 
testCategories 
. 
Count $
==% '
$num( )
&&* ,
ExpectedValue- :
==; =
k_DefaultCategory> O
&&P R
testS W
isX Z

TestMethod[ e
)e f
return 
true 
; 
return!! 
base!! 
.!! 
Match!! 
(!! 
test!! "
)!!" #
;!!# $
}"" 	
}## 
}$$ °
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\TestRunCallbackAttribute.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
{ 
[)) 
AttributeUsage)) 
()) 
AttributeTargets)) $
.))$ %
Assembly))% -
)))- .
])). /
public** 

class** $
TestRunCallbackAttribute** )
:*** +
	Attribute**, 5
{++ 
private,, 
Type,, 
m_Type,, 
;,, 
public33 $
TestRunCallbackAttribute33 '
(33' (
Type33( ,
type33- 1
)331 2
{44 	
var55 
interfaceType55 
=55 
typeof55  &
(55& '
ITestRunCallback55' 7
)557 8
;558 9
if66 
(66 
!66 
interfaceType66 
.66 
IsAssignableFrom66 /
(66/ 0
type660 4
)664 5
)665 6
{77 
throw88 
new88 
ArgumentException88 +
(88+ ,
string88, 2
.882 3
Format883 9
(889 :
$str	99 ô
,
99ô ö
this:: 
.:: 
GetType::  
(::  !
)::! "
.::" #
Name::# '
,::' (
interfaceType::) 6
.::6 7
Name::7 ;
,::; <
type::= A
.::A B
Name::B F
,::F G
typeof::H N
(::N O
PreserveAttribute::O `
)::` a
.::a b
Name::b f
)::f g
)::g h
;::h i
};; 
m_Type<< 
=<< 
type<< 
;<< 
}== 	
internal?? 
ITestRunCallback?? !
ConstructCallback??" 3
(??3 4
)??4 5
{@@ 	
returnAA 
	ActivatorAA 
.AA 
CreateInstanceAA +
(AA+ ,
m_TypeAA, 2
)AA2 3
asAA4 6
ITestRunCallbackAA7 G
;AAG H
}BB 	
}CC 
}DD ©
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\BaseDelegator.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
NUnitExtensions  /
{ 
internal 
abstract 
class 
BaseDelegator )
{ 
	protected		 
ManualResetEvent		 "
m_Signal		# +
=		, -
new		. 1
ManualResetEvent		2 B
(		B C
false		C H
)		H I
;		I J
	protected 
object 
m_Result !
;! "
	protected 
	Exception 
m_Exception '
;' (
	protected !
ITestExecutionContext '
	m_Context( 1
;1 2
	protected 
bool 
	m_Aborted  
;  !
	protected 
object 
HandleResult %
(% &
)& '
{ 	!
SetCurrentTestContext !
(! "
)" #
;# $
if 
( 
m_Exception 
!= 
null #
)# $
{ 
var 
temp 
= 
m_Exception &
;& '
m_Exception 
= 
null "
;" #
throw 
temp 
; 
} 
var 

tempResult 
= 
m_Result %
;% &
m_Result 
= 
null 
; 
return 

tempResult 
; 
} 	
	protected 
void 
WaitForSignal $
($ %
)% &
{   	
while!! 
(!! 
!!! 
m_Signal!! 
.!! 
WaitOne!! $
(!!$ %
$num!!% (
)!!( )
)!!) *
{"" 
if## 
(## 
	m_Aborted## 
)## 
{$$ 
	m_Aborted%% 
=%% 
false%%  %
;%%% &
Reflect&& 
.&& 
MethodCallWrapper&& -
=&&. /
null&&0 4
;&&4 5
throw'' 
new'' 
	Exception'' '
(''' (
)''( )
;'') *
}(( 
})) 
}** 	
public,, 
void,, 
Abort,, 
(,, 
),, 
{-- 	
	m_Aborted.. 
=.. 
true.. 
;.. 
}// 	
	protected11 
void11 !
SetCurrentTestContext11 ,
(11, -
)11- .
{22 	
var33 
prop33 
=33 
typeof33 
(33  
TestExecutionContext33 2
)332 3
.333 4
GetProperty334 ?
(33? @
$str33@ P
)33P Q
;33Q R
if44 
(44 
prop44 
!=44 
null44 
)44 
{55 
prop66 
.66 
SetValue66 
(66 
null66 "
,66" #
	m_Context66$ -
,66- .
null66/ 3
)663 4
;664 5
}77 
}88 	
}99 
}:: ø 
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\SynchronousFilter.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
class		 	
SynchronousFilter		
 
:		 
ITestFilter		 )
{

 
public 
TNode 
ToXml 
( 
bool 
	recursive  )
)) *
{ 	
return 
new 
TNode 
( 
$str .
). /
;/ 0
} 	
public 
TNode 
AddToXml 
( 
TNode #

parentNode$ .
,. /
bool0 4
	recursive5 >
)> ?
{ 	
return 

parentNode 
. 

AddElement (
(( )
$str) :
): ;
;; <
} 	
public 
bool 
Pass 
( 
ITest 
test #
)# $
{ 	
if 
( 
test 
. 
Method 
== 
null #
)# $
return 
true 
; 
if 
( 
test 
. 
Method 
. 

ReturnType &
.& '
Type' +
==, .
typeof/ 5
(5 6
IEnumerator6 A
)A B
)B C
return 
false 
; 
if 
( 
test 
. 
Method 
. 
GetCustomAttributes /
</ 0!
IOuterUnityTestAction0 E
>E F
(F G
trueG K
)K L
.L M
AnyM P
(P Q
)Q R
)R S
return 
false 
; 
if   
(   
test   
.   
TypeInfo   
?   
.   
Type   #
!=  $ &
null  ' +
)  + ,
{!! 
if"" 
("" 
Reflect"" 
."" #
GetMethodsWithAttribute"" 3
(""3 4
test""4 8
.""8 9
TypeInfo""9 A
.""A B
Type""B F
,""F G
typeof""H N
(""N O
UnitySetUpAttribute""O b
)""b c
,""c d
true""e i
)""i j
.## 
Any## 
(## 
mi## 
=>## 
mi## !
.##! "

ReturnType##" ,
==##- /
typeof##0 6
(##6 7
System##7 =
.##= >
Collections##> I
.##I J
IEnumerator##J U
)##U V
)##V W
)##W X
return$$ 
false$$  
;$$  !
if&& 
(&& 
Reflect&& 
.&& #
GetMethodsWithAttribute&& 3
(&&3 4
test&&4 8
.&&8 9
TypeInfo&&9 A
.&&A B
Type&&B F
,&&F G
typeof&&H N
(&&N O"
UnityTearDownAttribute&&O e
)&&e f
,&&f g
true&&h l
)&&l m
.'' 
Any'' 
('' 
mi'' 
=>'' 
mi'' !
.''! "

ReturnType''" ,
==''- /
typeof''0 6
(''6 7
System''7 =
.''= >
Collections''> I
.''I J
IEnumerator''J U
)''U V
)''V W
)''W X
return(( 
false((  
;((  !
})) 
return++ 
true++ 
;++ 
},, 	
public.. 
bool.. 
IsExplicitMatch.. #
(..# $
ITest..$ )
test..* .
)... /
{// 	
return00 
Pass00 
(00 
test00 
)00 
;00 
}11 	
}22 
}33 µ
œD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableApplyChangesToContextCommand.cs
	namespace		 	
UnityEngine		
 
.		 
	TestTools		 
{

 
internal 
class 2
&EnumerableApplyChangesToContextCommand 9
:: ;(
ApplyChangesToContextCommand< X
,X Y(
IEnumerableTestMethodCommandZ v
{ 
public 2
&EnumerableApplyChangesToContextCommand 5
(5 6
TestCommand6 A
innerCommandB N
,N O
IEnumerableP [
<[ \
IApplyToContext\ k
>k l
changesm t
)t u
: 
base 
( 
innerCommand 
,  
changes! (
)( )
{* +
}, -
public 
IEnumerable 
ExecuteEnumerable ,
(, -!
ITestExecutionContext- B
contextC J
)J K
{ 	
ApplyChanges 
( 
context  
)  !
;! "
if 
( 
innerCommand 
is (
IEnumerableTestMethodCommand  <
)< =
{ 
var 
executeEnumerable %
=& '
(( )
() *(
IEnumerableTestMethodCommand* F
)F G
innerCommandG S
)S T
.T U
ExecuteEnumerableU f
(f g
contextg n
)n o
;o p
foreach 
( 
var 
iterator %
in& (
executeEnumerable) :
): ;
{ 
yield 
return  
iterator! )
;) *
} 
} 
else 
{ 
context 
. 
CurrentResult %
=& '
innerCommand( 4
.4 5
Execute5 <
(< =
context= D
)D E
;E F
} 
}   	
}!! 
}"" Ê4
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RuntimeTestRunnerFilter.cs
	namespace		 	
UnityEngine		
 
.		 
	TestTools		 
.		  

TestRunner		  *
.		* +
GUI		+ .
{

 
[ 
Serializable 
] 
internal 
class #
RuntimeTestRunnerFilter *
{ 
public 
string 
[ 
] 
assemblyNames %
;% &
public 
string 
[ 
] 

groupNames "
;" #
public 
string 
[ 
] 
categoryNames %
;% &
public 
string 
[ 
] 
	testNames !
;! "
public 
bool 
synchronousOnly #
=$ %
false& +
;+ ,
public 
ITestFilter 
BuildNUnitFilter +
(+ ,
), -
{ 	
var 
filters 
= 
new 
List "
<" #
ITestFilter# .
>. /
(/ 0
)0 1
;1 2

AddFilters 
( 
filters 
, 
	testNames  )
,) *
(+ ,
s, -
)- .
=>/ 1
new2 5
FullNameFilter6 D
(D E
sE F
)F G
)G H
;H I

AddFilters 
( 
filters 
, 

groupNames  *
,* +
(, -
s- .
). /
=>0 2
new3 6
FullNameFilter7 E
(E F
sF G
)G H
{I J
IsRegexJ Q
=R S
trueT X
}X Y
)Y Z
;Z [

AddFilters 
( 
filters 
, 
assemblyNames  -
,- .
(/ 0
s0 1
)1 2
=>3 5
new6 9
AssemblyNameFilter: L
(L M
sM N
)N O
)O P
;P Q

AddFilters 
( 
filters 
, 
categoryNames  -
,- .
(/ 0
s0 1
)1 2
=>3 5
new6 9"
CategoryFilterExtended: P
(P Q
sQ R
)R S
{T U
IsRegexU \
=] ^
true_ c
}c d
)d e
;e f
if 
( 
synchronousOnly 
)  
{ 
filters 
. 
Add 
( 
new 
SynchronousFilter  1
(1 2
)2 3
)3 4
;4 5
}   
return"" 
filters"" 
."" 
Count""  
==""! #
$num""$ %
?""& '

TestFilter""( 2
.""2 3
Empty""3 8
:""9 :
new""; >
	AndFilter""? H
(""H I
filters""I P
.""P Q
ToArray""Q X
(""X Y
)""Y Z
)""Z [
;""[ \
}## 	
private%% 
static%% 
void%% 

AddFilters%% &
(%%& '
List%%' +
<%%+ ,
ITestFilter%%, 7
>%%7 8
filters%%9 @
,%%@ A
string%%B H
[%%H I
]%%I J
values%%K Q
,%%Q R
Func%%S W
<%%W X
string%%X ^
,%%^ _

TestFilter%%` j
>%%j k
builder%%l s
)%%s t
{&& 	
if'' 
('' 
values'' 
=='' 
null'' 
||'' !
values''" (
.''( )
Length'') /
==''0 2
$num''3 4
)''4 5
{(( 
return)) 
;)) 
}** 
var,, 
inclusionFilters,,  
=,,! "
values,,# )
.,,) *
Where,,* /
(,,/ 0
v,,0 1
=>,,2 4
!,,5 6
v,,6 7
.,,7 8

StartsWith,,8 B
(,,B C
$str,,C F
),,F G
),,G H
.,,H I
Select,,I O
(,,O P
v,,P Q
=>,,R T
builder,,U \
(,,\ ]
v,,] ^
),,^ _
as,,` b
ITestFilter,,c n
),,n o
.,,o p
ToArray,,p w
(,,w x
),,x y
;,,y z
var-- 
exclusionFilters--  
=--! "
values--# )
.--) *
Where--* /
(--/ 0
v--0 1
=>--2 4
v--5 6
.--6 7

StartsWith--7 A
(--A B
$str--B E
)--E F
)--F G
... 
Select.. 
(.. 
v.. 
=>.. 
new..  
	NotFilter..! *
(..* +
builder..+ 2
(..2 3
v..3 4
...4 5
	Substring..5 >
(..> ?
$num..? @
)..@ A
)..A B
)..B C
as..D F
ITestFilter..G R
)..R S
.// 
ToArray// 
(// 
)// 
;// 
if00 
(00 
inclusionFilters00  
.00  !
Length00! '
>00( )
$num00* +
&&00, .
exclusionFilters00/ ?
.00? @
Length00@ F
>00G H
$num00I J
)00J K
{11 
filters22 
.22 
Add22 
(22 
new22 
	AndFilter22  )
(22) *
new22* -
OrFilter22. 6
(226 7
inclusionFilters227 G
)22G H
,22H I
new22J M
	AndFilter22N W
(22W X
exclusionFilters22X h
)22h i
)22i j
)22j k
;22k l
}33 
else44 
if44 
(44 
inclusionFilters44 %
.44% &
Length44& ,
>44- .
$num44/ 0
)440 1
{55 
filters66 
.66 
Add66 
(66 
new66 
OrFilter66  (
(66( )
inclusionFilters66) 9
)669 :
)66: ;
;66; <
}77 
else88 
{99 
filters:: 
.:: 
Add:: 
(:: 
new:: 
	AndFilter::  )
(::) *
exclusionFilters::* :
)::: ;
)::; <
;::< =
};; 
}<< 	
}== 
}>> â8
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\CoroutineRunner.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal		 
class		 
CoroutineRunner		 "
{

 
private 
bool 
	m_Running 
; 
private 
bool 
m_TestFailed !
;! "
private 
bool 
	m_Timeout 
; 
private 
readonly 
MonoBehaviour &
m_Controller' 3
;3 4
private 
readonly %
UnityTestExecutionContext 2
	m_Context3 <
;< =
private 
	Coroutine 
m_TimeOutCoroutine ,
;, -
private 
IEnumerator 
m_TestCoroutine +
;+ ,
internal 
const 
int 
k_DefaultTimeout +
=, -
$num. 2
*3 4
$num5 8
;8 9
public 
CoroutineRunner 
( 
MonoBehaviour ,#
playmodeTestsController- D
,D E%
UnityTestExecutionContextF _
context` g
)g h
{ 	
m_Controller 
= #
playmodeTestsController 2
;2 3
	m_Context 
= 
context 
;  
} 	
public 
IEnumerator  
HandleEnumerableTest /
(/ 0
IEnumerator0 ;
testEnumerator< J
)J K
{ 	
if 
( 
	m_Context 
. 
TestCaseTimeout )
==* ,
$num- .
). /
{ 
	m_Context 
. 
TestCaseTimeout )
=* +
k_DefaultTimeout, <
;< =
}   
do!! 
{"" 
if## 
(## 
!## 
	m_Running## 
)## 
{$$ 
	m_Running%% 
=%% 
true%%  $
;%%$ %
m_TestCoroutine&& #
=&&$ %
ExMethod&&& .
(&&. /
testEnumerator&&/ =
,&&= >
	m_Context&&? H
.&&H I
TestCaseTimeout&&I X
)&&X Y
;&&Y Z
m_Controller''  
.''  !
StartCoroutine''! /
(''/ 0
m_TestCoroutine''0 ?
)''? @
;''@ A
}(( 
if)) 
()) 
m_TestFailed))  
)))  !
{** $
StopAllRunningCoroutines++ ,
(++, -
)++- .
;++. /
	m_Context,, 
.,, 
CurrentResult,, +
.,,+ ,
RecordException,,, ;
(,,; <
new,,< ?%
UnityTestTimeoutException,,@ Y
(,,Y Z
	m_Context,,Z c
.,,c d
TestCaseTimeout,,d s
),,s t
),,t u
;,,u v
yield-- 
break-- 
;--  
}.. 
if00 
(00 
	m_Context00 
.00 
ExecutionStatus00 -
==00. 0
TestExecutionStatus001 D
.00D E
StopRequested00E R
||00S U
	m_Context00V _
.00_ `
ExecutionStatus00` o
==00p r 
TestExecutionStatus	00s Ü
.
00Ü á
AbortRequested
00á ï
)
00ï ñ
{11 $
StopAllRunningCoroutines22 ,
(22, -
)22- .
;22. /
yield33 
break33 
;33  
}44 
yield55 
return55 
null55 !
;55! "
}66 
while77 
(77 
	m_Running77 
)77 
;77 
}88 	
private:: 
void:: $
StopAllRunningCoroutines:: -
(::- .
)::. /
{;; 	
if<< 
(<< 
m_TimeOutCoroutine<< "
!=<<# %
null<<& *
)<<* +
{== 
m_Controller>> 
.>> 
StopCoroutine>> *
(>>* +
m_TimeOutCoroutine>>+ =
)>>= >
;>>> ?
}?? 
ifAA 
(AA 
m_TestCoroutineAA 
!=AA  "
nullAA# '
)AA' (
{BB 
m_ControllerCC 
.CC 
StopCoroutineCC *
(CC* +
m_TestCoroutineCC+ :
)CC: ;
;CC; <
}DD 
}EE 	
privateGG 
IEnumeratorGG 
ExMethodGG $
(GG$ %
IEnumeratorGG% 0
eGG1 2
,GG2 3
intGG4 7
timeoutGG8 ?
)GG? @
{HH 	
m_TimeOutCoroutineII 
=II  
m_ControllerII! -
.II- .
StartCoroutineII. <
(II< =

StartTimerII= G
(IIG H
eIIH I
,III J
timeoutIIK R
,IIR S
(JJ 
)JJ 
=>JJ 
{KK 
m_TestFailedLL  
=LL! "
trueLL# '
;LL' (
	m_TimeoutMM 
=MM 
trueMM  $
;MM$ %
	m_RunningNN 
=NN 
falseNN  %
;NN% &
}OO 
)OO 
)OO 
;OO 
yieldQQ 
returnQQ 
m_ControllerQQ %
.QQ% &
StartCoroutineQQ& 4
(QQ4 5
eQQ5 6
)QQ6 7
;QQ7 8
m_ControllerRR 
.RR 
StopCoroutineRR &
(RR& '
m_TimeOutCoroutineRR' 9
)RR9 :
;RR: ;
	m_RunningSS 
=SS 
falseSS 
;SS 
}TT 	
privateVV 
IEnumeratorVV 

StartTimerVV &
(VV& '
IEnumeratorVV' 2
coroutineToBeKilledVV3 F
,VVF G
intVVH K
timeoutVVL S
,VVS T
ActionVVU [
	onTimeoutVV\ e
)VVe f
{WW 	
yieldXX 
returnXX 
newXX "
WaitForSecondsRealtimeXX 3
(XX3 4
timeoutXX4 ;
/XX< =
$numXX> C
)XXC D
;XXD E
ifYY 
(YY 
coroutineToBeKilledYY #
!=YY$ &
nullYY' +
)YY+ ,
m_ControllerZZ 
.ZZ 
StopCoroutineZZ *
(ZZ* +
coroutineToBeKilledZZ+ >
)ZZ> ?
;ZZ? @
if[[ 
([[ 
	onTimeout[[ 
!=[[ 
null[[ !
)[[! "
	onTimeout\\ 
(\\ 
)\\ 
;\\ 
}]] 	
public__ 
bool__  
HasFailedWithTimeout__ (
(__( )
)__) *
{`` 	
returnaa 
	m_Timeoutaa 
;aa 
}bb 	
publicdd 
intdd 
GetDefaultTimeoutdd $
(dd$ %
)dd% &
{ee 	
returnff 
k_DefaultTimeoutff #
;ff# $
}gg 	
}hh 
}ii ◊(
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\UnityTestAssemblyBuilder.cs
	namespace		 	
UnityEngine		
 
.		 
	TestTools		 
.		  
NUnitExtensions		  /
{

 
internal 
class $
UnityTestAssemblyBuilder +
:, -&
DefaultTestAssemblyBuilder. H
,H I%
IAsyncTestAssemblyBuilderJ c
{ 
private 
readonly 
string 
m_ProductName  -
;- .
public $
UnityTestAssemblyBuilder '
(' (
)( )
{ 	
m_ProductName 
= 
Application '
.' (
productName( 3
;3 4
} 	
public 
ITest 
Build 
( 
Assembly #
[# $
]$ %

assemblies& 0
,0 1
TestPlatform2 >
[> ?
]? @
testPlatformsA N
,N O
IDictionaryP [
<[ \
string\ b
,b c
objectd j
>j k
optionsl s
)s t
{ 	
var 
test 
= 

BuildAsync !
(! "

assemblies" ,
,, -
testPlatforms. ;
,; <
options= D
)D E
;E F
while 
( 
test 
. 
MoveNext  
(  !
)! "
)" #
{ 
} 
return 
test 
. 
Current 
;  
} 	
public 
IEnumerator 
< 
ITest  
>  !

BuildAsync" ,
(, -
Assembly- 5
[5 6
]6 7

assemblies8 B
,B C
TestPlatformD P
[P Q
]Q R
testPlatformsS `
,` a
IDictionaryb m
<m n
stringn t
,t u
objectv |
>| }
options	~ Ö
)
Ö Ü
{ 	
var 
productName 
= 
string $
.$ %
Join% )
() *
$str* -
,- .
m_ProductName/ <
.< =
Split= B
(B C
PathC G
.G H#
GetInvalidFileNameCharsH _
(_ `
)` a
)a b
)b c
;c d
var   
suite   
=   
new   
	TestSuite   %
(  % &
productName  & 1
)  1 2
;  2 3
for!! 
(!! 
var!! 
index!! 
=!! 
$num!! 
;!! 
index!!  %
<!!& '

assemblies!!( 2
.!!2 3
Length!!3 9
;!!9 :
index!!; @
++!!@ B
)!!B C
{"" 
var## 
assembly## 
=## 

assemblies## )
[##) *
index##* /
]##/ 0
;##0 1
var$$ 
platform$$ 
=$$ 
testPlatforms$$ ,
[$$, -
index$$- 2
]$$2 3
;$$3 4
var&& 
assemblySuite&& !
=&&" #
Build&&$ )
(&&) *
assembly&&* 2
,&&2 3
options&&4 ;
)&&; <
as&&= ?
	TestSuite&&@ I
;&&I J
if'' 
('' 
assemblySuite'' !
!=''" $
null''% )
&&''* ,
assemblySuite''- :
.'': ;
HasChildren''; F
)''F G
{(( 
assemblySuite)) !
.))! "

Properties))" ,
.)), -
Set))- 0
())0 1
$str))1 ;
,)); <
platform))= E
)))E F
;))F G
suite** 
.** 
Add** 
(** 
assemblySuite** +
)**+ ,
;**, -
}++ 
yield-- 
return-- 
null-- !
;--! "
}.. 
yield00 
return00 
suite00 
;00 
}11 	
public33 
static33 

Dictionary33  
<33  !
string33! '
,33' (
object33) /
>33/ 0'
GetNUnitTestBuilderSettings331 L
(33L M
TestPlatform33M Y
testPlatform33Z f
)33f g
{44 	
var55 
emptySettings55 
=55 
new55  #

Dictionary55$ .
<55. /
string55/ 5
,555 6
object557 =
>55= >
(55> ?
)55? @
;55@ A
emptySettings66 
.66 
Add66 
(66 $
FrameworkPackageSettings66 6
.666 7
TestParameters667 E
,66E F
$str66G R
+66S T
testPlatform66U a
)66a b
;66b c
return77 
emptySettings77  
;77  !
}88 	
}99 
}:: Ó
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\IStateSerializer.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
NUnitExtensions  /
{ 
internal 
	interface 
IStateSerializer '
{ 
ScriptableObject +
RestoreScriptableObjectInstance 8
(8 9
)9 :
;: ;
void  
RestoreClassFromJson !
(! "
ref" %
object& ,
instance- 5
)5 6
;6 7
bool		 
CanRestoreFromJson		 
(		  
Type		  $
requestedType		% 2
)		2 3
;		3 4
bool

 *
CanRestoreFromScriptableObject

 +
(

+ ,
Type

, 0
requestedType

1 >
)

> ?
;

? @
} 
}  
§D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\LogAssert.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

static 
class 
	LogAssert !
{ 
public%% 
static%% 
void%% 
Expect%% !
(%%! "
LogType%%" )
type%%* .
,%%. /
string%%0 6
message%%7 >
)%%> ?
{&& 	
LogScope'' 
.'' 
Current'' 
.'' 
ExpectedLogs'' )
.'') *
Enqueue''* 1
(''1 2
new''2 5
LogMatch''6 >
(''> ?
)''? @
{''A B
LogType''C J
=''K L
type''M Q
,''Q R
Message''S Z
=''[ \
message''] d
}''e f
)''f g
;''g h
}(( 	
public.. 
static.. 
void.. 
Expect.. !
(..! "
LogType.." )
type..* .
,... /
Regex..0 5
message..6 =
)..= >
{// 	
LogScope00 
.00 
Current00 
.00 
ExpectedLogs00 )
.00) *
Enqueue00* 1
(001 2
new002 5
LogMatch006 >
(00> ?
)00? @
{00A B
LogType00C J
=00K L
type00M Q
,00Q R
MessageRegex00S _
=00` a
message00b i
}00j k
)00k l
;00l m
}11 	
public55 
static55 
void55  
NoUnexpectedReceived55 /
(55/ 0
)550 1
{66 	
LogScope77 
.77 
Current77 
.77  
NoUnexpectedReceived77 1
(771 2
)772 3
;773 4
}88 	
public:: 
static:: 
bool:: !
ignoreFailingMessages:: 0
{;; 	
get<< 
{== 
return>> 
LogScope>> 
.>>  
Current>>  '
.>>' (!
IgnoreFailingMessages>>( =
;>>= >
}?? 
set@@ 
{AA 
ifBB 
(BB 
valueBB 
!=BB 
LogScopeBB %
.BB% &
CurrentBB& -
.BB- .!
IgnoreFailingMessagesBB. C
)BBC D
{CC 
DebugDD 
.DD 
	LogFormatDD #
(DD# $
LogTypeDD$ +
.DD+ ,
LogDD, /
,DD/ 0
	LogOptionDD1 :
.DD: ;
NoStacktraceDD; G
,DDG H
nullDDI M
,DDM N
$strDDO i
+DDj k
(DDl m
valueDDm r
?DDr s
$strDDt z
:DDz {
$str	DD{ Ç
)
DDÇ É
)
DDÉ Ñ
;
DDÑ Ö
}EE 
LogScopeFF 
.FF 
CurrentFF  
.FF  !!
IgnoreFailingMessagesFF! 6
=FF7 8
valueFF9 >
;FF> ?
}GG 
}HH 	
}II 
}JJ É
 D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\RestoreTestContextAfterDomainReload.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class /
#RestoreTestContextAfterDomainReload 6
{7 8
}8 9
} †
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Callbacks\PlayModeRunnerCallback.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
.* +
	Callbacks+ 4
{ 
[ 
AddComponentMenu 
( 
$str 
) 
] 
internal 
class "
PlayModeRunnerCallback )
:* +
MonoBehaviour, 9
,9 :
ITestRunnerListener; N
{ 
private		 
TestResultRenderer		 "
m_ResultRenderer		# 3
;		3 4
public 
void 
RunFinished 
(  
ITestResult  +
testResults, 7
)7 8
{ 	
Application 
. &
logMessageReceivedThreaded 2
-=3 5
LogRecieved6 A
;A B
if 
( 
Camera 
. 
main 
== 
null #
)# $
{ 

gameObject 
. 
AddComponent '
<' (
Camera( .
>. /
(/ 0
)0 1
;1 2
} 
m_ResultRenderer 
= 
new "
TestResultRenderer# 5
(5 6
testResults6 A
)A B
;B C
m_ResultRenderer 
. 
ShowResults (
(( )
)) *
;* +
} 	
public 
void 
TestFinished  
(  !
ITestResult! ,
result- 3
)3 4
{ 	
} 	
public 
void 
OnGUI 
( 
) 
{ 	
if 
( 
m_ResultRenderer  
!=! #
null$ (
)( )
m_ResultRenderer  
.  !
Draw! %
(% &
)& '
;' (
} 	
public   
void   

RunStarted   
(   
ITest   $

testsToRun  % /
)  / 0
{!! 	
Application"" 
."" &
logMessageReceivedThreaded"" 2
+=""3 5
LogRecieved""6 A
;""A B
}## 	
public%% 
void%% 
TestStarted%% 
(%%  
ITest%%  %
test%%& *
)%%* +
{&& 	
}'' 	
private)) 
void)) 
LogRecieved))  
())  !
string))! '
message))( /
,))/ 0
string))1 7

stacktrace))8 B
,))B C
LogType))D K
type))L P
)))P Q
{** 	
if++ 
(++ 
TestContext++ 
.++ 
Out++ 
!=++  "
null++# '
)++' (
TestContext,, 
.,, 
Out,, 
.,,  
	WriteLine,,  )
(,,) *
message,,* 1
),,1 2
;,,2 3
}-- 	
}.. 
}// õ"
«D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableSetUpTearDownCommand.cs
	namespace		 	
UnityEngine		
 
.		 
	TestTools		 
{

 
internal 
class *
EnumerableSetUpTearDownCommand 1
:2 3&
BeforeAfterTestCommandBase4 N
<N O

MethodInfoO Y
>Y Z
{ 
public *
EnumerableSetUpTearDownCommand -
(- .
TestCommand. 9
innerCommand: F
)F G
: 
base 
( 
innerCommand 
,  
$str! (
,( )
$str* 4
)4 5
{ 	
if 
( 
Test 
. 
TypeInfo 
. 
Type "
!=# %
null& *
)* +
{ 
BeforeActions 
= .
"GetMethodsWithAttributeFromFixture  B
(B C
TestC G
.G H
TypeInfoH P
.P Q
TypeQ U
,U V
typeofW ]
(] ^
UnitySetUpAttribute^ q
)q r
)r s
;s t
AfterActions 
= .
"GetMethodsWithAttributeFromFixture A
(A B
TestB F
.F G
TypeInfoG O
.O P
TypeP T
,T U
typeofV \
(\ ]"
UnityTearDownAttribute] s
)s t
)t u
.u v
Reversev }
(} ~
)~ 
.	 Ä
ToArray
Ä á
(
á à
)
à â
;
â ä
} 
} 	
private 
static 

MethodInfo !
[! "
]" #.
"GetMethodsWithAttributeFromFixture$ F
(F G
TypeG K
fixtureTypeL W
,W X
TypeY ]
	setUpType^ g
)g h
{ 	

MethodInfo 
[ 
]  
methodsWithAttribute -
=. /
Reflect0 7
.7 8#
GetMethodsWithAttribute8 O
(O P
fixtureTypeP [
,[ \
	setUpType] f
,f g
trueh l
)l m
;m n
return  
methodsWithAttribute '
.' (
Where( -
(- .
x. /
=>0 2
x3 4
.4 5

ReturnType5 ?
==@ B
typeofC I
(I J
IEnumeratorJ U
)U V
)V W
.W X
ToArrayX _
(_ `
)` a
;a b
} 	
	protected 
override 
IEnumerator &
InvokeBefore' 3
(3 4

MethodInfo4 >
action? E
,E F
TestG K
testL P
,P Q%
UnityTestExecutionContextR k
contextl s
)s t
{ 	
return 
( 
IEnumerator 
)  
Reflect  '
.' (
InvokeMethod( 4
(4 5
action5 ;
,; <
context= D
.D E

TestObjectE O
)O P
;P Q
}   	
	protected"" 
override"" 
IEnumerator"" &
InvokeAfter""' 2
(""2 3

MethodInfo""3 =
action""> D
,""D E
Test""F J
test""K O
,""O P%
UnityTestExecutionContext""Q j
context""k r
)""r s
{## 	
return$$ 
($$ 
IEnumerator$$ 
)$$  
Reflect$$  '
.$$' (
InvokeMethod$$( 4
($$4 5
action$$5 ;
,$$; <
context$$= D
.$$D E

TestObject$$E O
)$$O P
;$$P Q
}%% 	
	protected'' 
override'' '
BeforeAfterTestCommandState'' 6
GetState''7 ?
(''? @%
UnityTestExecutionContext''@ Y
context''Z a
)''a b
{(( 	
return)) 
context)) 
.)) 
SetUpTearDownState)) -
;))- .
}** 	
}++ 
},, —
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\IPrebuildSceneSetup.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

	interface 
IPrebuildSetup #
{ 
void99 
Setup99 
(99 
)99 
;99 
}:: 
};; Ÿ
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Attributes\UnitySetUpAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[!! 
AttributeUsage!! 
(!! 
AttributeTargets!! $
.!!$ %
Method!!% +
)!!+ ,
]!!, -
public"" 

class"" 
UnitySetUpAttribute"" $
:""% &
NUnitAttribute""' 5
{## 
}$$ 
}%% ¶
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\UnityWorkItemDataHolder.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class #
UnityWorkItemDataHolder *
{ 
public 
static 
List 
< 
string !
>! "
alreadyStartedTests# 6
=7 8
new9 <
List= A
<A B
stringB H
>H I
(I J
)J K
;K L
public 
static 
List 
< 
string !
>! " 
alreadyExecutedTests# 7
;7 8
}		 
}

 ´L
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\Callbacks\RemoteTestResultSender.cs
	namespace

 	
UnityEngine


 
.

 
	TestTools

 
.

  

TestRunner

  *
.

* +
	Callbacks

+ 4
{ 
[ 
AddComponentMenu 
( 
$str 
) 
] 
internal 
class "
RemoteTestResultSender )
:* +
MonoBehaviour, 9
,9 :
ITestRunnerListener; N
{ 
private 
class 
	QueueData 
{ 	
public 
Guid 
id 
{ 
get  
;  !
set" %
;% &
}' (
public 
byte 
[ 
] 
data 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 	
private 
const 
int #
k_aliveMessageFrequency 1
=2 3
$num4 7
;7 8
private 
float 
m_NextliveMessage '
=( )#
k_aliveMessageFrequency* A
;A B
private 
readonly 
Queue 
< 
	QueueData (
>( )
m_SendQueue* 5
=6 7
new8 ;
Queue< A
<A B
	QueueDataB K
>K L
(L M
)M N
;N O
private 
readonly 
object 
m_LockQueue  +
=, -
new. 1
object2 8
(8 9
)9 :
;: ;
private 
readonly (
IRemoteTestResultDataFactory 5#
m_TestResultDataFactory6 M
=N O
newP S'
RemoteTestResultDataFactoryT o
(o p
)p q
;q r
public 
void 
Start 
( 
) 
{ 	
StartCoroutine 
( 
SendDataRoutine *
(* +
)+ ,
), -
;- .
} 	
private   
byte   
[   
]   
SerializeObject   &
(  & '
object  ' -
objectToSerialize  . ?
)  ? @
{!! 	
return"" 
Encoding"" 
."" 
UTF8""  
.""  !
GetBytes""! )
("") *
JsonUtility""* 5
.""5 6
ToJson""6 <
(""< =
objectToSerialize""= N
)""N O
)""O P
;""P Q
}## 	
public%% 
void%% 

RunStarted%% 
(%% 
ITest%% $

testsToRun%%% /
)%%/ 0
{&& 	
var'' 
data'' 
='' 
SerializeObject'' &
(''& '#
m_TestResultDataFactory''' >
.''> ?
CreateFromTest''? M
(''M N

testsToRun''N X
)''X Y
)''Y Z
;''Z [
lock(( 
((( 
m_LockQueue(( 
)(( 
{)) 
m_SendQueue** 
.** 
Enqueue** #
(**# $
new**$ '
	QueueData**( 1
{++ 
id,, 
=,, &
PlayerConnectionMessageIds,, 3
.,,3 4
runStartedMessageId,,4 G
,,,G H
data-- 
=-- 
data-- 
}.. 
).. 
;.. 
}// 
}00 	
public22 
void22 
RunFinished22 
(22  
ITestResult22  +
testResults22, 7
)227 8
{33 	
var44 
data44 
=44 
SerializeObject44 &
(44& '#
m_TestResultDataFactory44' >
.44> ? 
CreateFromTestResult44? S
(44S T
testResults44T _
)44_ `
)44` a
;44a b
lock55 
(55 
m_LockQueue55 
)55 
{66 
m_SendQueue77 
.77 
Enqueue77 #
(77# $
new77$ '
	QueueData77( 1
{772 3
id774 6
=777 8&
PlayerConnectionMessageIds779 S
.77S T 
runFinishedMessageId77T h
,77h i
data77j n
=77o p
data77q u
,77u v
}77w x
)77x y
;77y z
}88 
}99 	
public;; 
void;; 
TestStarted;; 
(;;  
ITest;;  %
test;;& *
);;* +
{<< 	
var== 
data== 
=== 
SerializeObject== &
(==& '#
m_TestResultDataFactory==' >
.==> ?
CreateFromTest==? M
(==M N
test==N R
)==R S
)==S T
;==T U
lock>> 
(>> 
m_LockQueue>> 
)>> 
{?? 
m_SendQueue@@ 
.@@ 
Enqueue@@ #
(@@# $
new@@$ '
	QueueData@@( 1
{AA 
idBB 
=BB &
PlayerConnectionMessageIdsBB 3
.BB3 4 
testStartedMessageIdBB4 H
,BBH I
dataCC 
=CC 
dataCC 
}DD 
)DD 
;DD 
}EE 
}FF 	
publicHH 
voidHH 
TestFinishedHH  
(HH  !
ITestResultHH! ,
resultHH- 3
)HH3 4
{II 	
varJJ "
testRunnerResultForApiJJ &
=JJ' (#
m_TestResultDataFactoryJJ) @
.JJ@ A 
CreateFromTestResultJJA U
(JJU V
resultJJV \
)JJ\ ]
;JJ] ^
varKK 

resultDataKK 
=KK 
SerializeObjectKK ,
(KK, -"
testRunnerResultForApiKK- C
)KKC D
;KKD E
lockLL 
(LL 
m_LockQueueLL 
)LL 
{MM 
m_SendQueueNN 
.NN 
EnqueueNN #
(NN# $
newNN$ '
	QueueDataNN( 1
{OO 
idPP 
=PP &
PlayerConnectionMessageIdsPP 3
.PP3 4!
testFinishedMessageIdPP4 I
,PPI J
dataQQ 
=QQ 

resultDataQQ %
,QQ% &
}RR 
)RR 
;RR 
}SS 
}TT 	
publicVV 
IEnumeratorVV 
SendDataRoutineVV *
(VV* +
)VV+ ,
{WW 	
whileXX 
(XX 
!XX 
PlayerConnectionXX $
.XX$ %
instanceXX% -
.XX- .
isConnectedXX. 9
)XX9 :
{YY 
yieldZZ 
returnZZ 
newZZ  
WaitForSecondsZZ! /
(ZZ/ 0
$numZZ0 1
)ZZ1 2
;ZZ2 3
}[[ 
while]] 
(]] 
true]] 
)]] 
{^^ 
lock__ 
(__ 
m_LockQueue__ !
)__! "
{`` 
ifaa 
(aa 
PlayerConnectionaa (
.aa( )
instanceaa) 1
.aa1 2
isConnectedaa2 =
&&aa> @
m_SendQueueaaA L
.aaL M
CountaaM R
>aaS T
$numaaU V
)aaV W
{bb +
ResetNextPlayerAliveMessageTimecc 7
(cc7 8
)cc8 9
;cc9 :
vardd 
	queueDatadd %
=dd& '
m_SendQueuedd( 3
.dd3 4
Dequeuedd4 ;
(dd; <
)dd< =
;dd= >
PlayerConnectionee (
.ee( )
instanceee) 1
.ee1 2
Sendee2 6
(ee6 7
	queueDataee7 @
.ee@ A
ideeA C
,eeC D
	queueDataeeE N
.eeN O
dataeeO S
)eeS T
;eeT U
yieldff 
returnff $
nullff% )
;ff) *
}gg 
ifjj 
(jj 
!jj 
m_SendQueuejj $
.jj$ %
Anyjj% (
(jj( )
)jj) *
)jj* +
{kk $
SendAliveMessageIfNeededll 0
(ll0 1
)ll1 2
;ll2 3
yieldmm 
returnmm $
newmm% (
WaitForSecondsmm) 7
(mm7 8
$nummm8 =
)mm= >
;mm> ?
}nn 
}oo 
}pp 
}qq 	
privatess 
voidss $
SendAliveMessageIfNeededss -
(ss- .
)ss. /
{tt 	
ifuu 
(uu 
Timeuu 
.uu 
timeSinceLevelLoaduu '
<uu( )
m_NextliveMessageuu* ;
)uu; <
{vv 
returnww 
;ww 
}xx 
Debugzz 
.zz 
Logzz 
(zz 
$strzz D
)zzD E
;zzE F+
ResetNextPlayerAliveMessageTime{{ +
({{+ ,
){{, -
;{{- .
PlayerConnection|| 
.|| 
instance|| %
.||% &
Send||& *
(||* +&
PlayerConnectionMessageIds||+ E
.||E F 
playerAliveHeartbeat||F Z
,||Z [
new||\ _
byte||` d
[||d e
$num||e f
]||f g
)||g h
;||h i
}}} 	
private 
void +
ResetNextPlayerAliveMessageTime 4
(4 5
)5 6
{
ÄÄ 	
m_NextliveMessage
ÅÅ 
=
ÅÅ 
Time
ÅÅ  $
.
ÅÅ$ % 
timeSinceLevelLoad
ÅÅ% 7
+
ÅÅ8 9%
k_aliveMessageFrequency
ÅÅ: Q
;
ÅÅQ R
}
ÇÇ 	
}
ÉÉ 
}ÑÑ ƒ
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\IAssemblyLoadProxy.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
	interface 
IAssemblyLoadProxy )
{ 
IAssemblyWrapper 
Load 
( 
string $
assemblyString% 3
)3 4
;4 5
} 
} ˆ
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Assertions\UnexpectedLogMessageException.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class )
UnexpectedLogMessageException 0
:1 2 
ResultStateException3 G
{ 
public		 
LogMatch		 
LogEvent		  
;		  !
public )
UnexpectedLogMessageException ,
(, -
LogMatch- 5
log6 9
)9 :
: 
base 
( 
BuildMessage 
(  
log  #
)# $
)$ %
{ 	
LogEvent 
= 
log 
; 
} 	
private 
static 
string 
BuildMessage *
(* +
LogMatch+ 3
log4 7
)7 8
{ 	
return 
string 
. 
Format  
(  !
$str! C
,C D
logE H
)H I
;I J
} 	
public 
override 
ResultState #
ResultState$ /
{ 	
get 
{ 
return 
ResultState $
.$ %
Failure% ,
;, -
}. /
} 	
public 
override 
string 

StackTrace )
{* +
get, /
{0 1
return2 8
null9 =
;= >
}? @
}A B
} 
} é
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\ITestRunCallback.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
{ 
public 

	interface 
ITestRunCallback %
{		 
void 

RunStarted 
( 
ITest 

testsToRun (
)( )
;) *
void 
RunFinished 
( 
ITestResult $
testResults% 0
)0 1
;1 2
void 
TestStarted 
( 
ITest 
test #
)# $
;$ %
void 
TestFinished 
( 
ITestResult %
result& ,
), -
;- .
} 
} ø$
√D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableRetryTestCommand.cs
	namespace

 	
UnityEngine


 
.

 
	TestTools

 
{ 
internal 
class &
EnumerableRetryTestCommand -
:. /!
DelegatingTestCommand0 E
,E F(
IEnumerableTestMethodCommandG c
{ 
private 
int 

retryCount 
; 
public &
EnumerableRetryTestCommand )
() *
RetryAttribute* 8
.8 9
RetryCommand9 E
commandToReplaceF V
)V W
:X Y
baseZ ^
(^ _
commandToReplace_ o
.o p
GetInnerCommandp 
(	 Ä
)
Ä Å
)
Å Ç
{ 	

retryCount 
= 
( 
int 
) 
typeof %
(% &
RetryAttribute& 4
.4 5
RetryCommand5 A
)A B
. 
GetField 
( 
$str '
,' (
BindingFlags) 5
.5 6
	NonPublic6 ?
|@ A
BindingFlagsB N
.N O
InstanceO W
)W X
. 
GetValue 
( 
commandToReplace *
)* +
;+ ,
} 	
public 
override 

TestResult "
Execute# *
(* +!
ITestExecutionContext+ @
contextA H
)H I
{ 	
throw 
new #
NotImplementedException -
(- .
$str. E
)E F
;F G
} 	
public 
IEnumerable 
ExecuteEnumerable ,
(, -!
ITestExecutionContext- B
contextC J
)J K
{ 	
var 
unityContext 
= 
(  %
UnityTestExecutionContext  9
)9 :
context: A
;A B
int 
count 
= 
unityContext $
.$ %
EnumerableTestState% 8
.8 9
Retry9 >
;> ?
var   !
firstCycleAfterResume   %
=  & '
count  ( -
>  . /
$num  0 1
;  1 2
while"" 
("" 
count"" 
<"" 

retryCount"" %
||""& (
("") *!
firstCycleAfterResume""* ?
&&""@ B
count""C H
<=""I K

retryCount""L V
)""V W
)""W X
{## 
if$$ 
($$ 
!$$ !
firstCycleAfterResume$$ *
)$$* +
{%% 
count&& 
++&& 
;&& 
}'' !
firstCycleAfterResume)) %
=))& '
false))( -
;))- .
unityContext++ 
.++ 
EnumerableTestState++ 0
.++0 1
Retry++1 6
=++7 8
count++9 >
;++> ?
if-- 
(-- 
innerCommand--  
is--! #(
IEnumerableTestMethodCommand--$ @
)--@ A
{.. 
var// 
executeEnumerable// )
=//* +
(//, -
(//- .(
IEnumerableTestMethodCommand//. J
)//J K
innerCommand//K W
)//W X
.//X Y
ExecuteEnumerable//Y j
(//j k
context//k r
)//r s
;//s t
foreach00 
(00 
var00  
iterator00! )
in00* ,
executeEnumerable00- >
)00> ?
{11 
yield22 
return22 $
iterator22% -
;22- .
}33 
}44 
else55 
{66 
context77 
.77 
CurrentResult77 )
=77* +
innerCommand77, 8
.778 9
Execute779 @
(77@ A
context77A H
)77H I
;77I J
}88 
if:: 
(:: 
context:: 
.:: 
CurrentResult:: )
.::) *
ResultState::* 5
!=::6 8
ResultState::9 D
.::D E
Failure::E L
)::L M
{;; 
break<< 
;<< 
}== 
}>> 
unityContext@@ 
.@@ 
EnumerableTestState@@ ,
.@@, -
Retry@@- 2
=@@3 4
$num@@5 6
;@@6 7
}AA 	
}BB 
}CC ú
≈D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\IRemoteTestResultDataFactory.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
internal 
	interface (
IRemoteTestResultDataFactory 3
{ ,
 RemoteTestResultDataWithTestData ( 
CreateFromTestResult) =
(= >
ITestResult> I
resultJ P
)P Q
;Q R,
 RemoteTestResultDataWithTestData		 (
CreateFromTest		) 7
(		7 8
ITest		8 =
test		> B
)		B C
;		C D
}

 
} º#
ƒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\RemoteTestResultDataFactory.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
internal 
class '
RemoteTestResultDataFactory .
:/ 0(
IRemoteTestResultDataFactory1 M
{		 
public

 ,
 RemoteTestResultDataWithTestData

 / 
CreateFromTestResult

0 D
(

D E
ITestResult

E P
result

Q W
)

W X
{ 	
var 
tests 
= 
CreateTestDataList *
(* +
result+ 1
.1 2
Test2 6
)6 7
;7 8
tests 
. 
First 
( 
) 
. 
testCaseTimeout )
=* +%
UnityTestExecutionContext, E
.E F
CurrentContextF T
.T U
TestCaseTimeoutU d
;d e
return 
new ,
 RemoteTestResultDataWithTestData 7
(7 8
)8 9
{ 
results 
= $
CreateTestResultDataList 2
(2 3
result3 9
)9 :
,: ;
tests 
= 
tests 
} 
; 
} 	
public ,
 RemoteTestResultDataWithTestData /
CreateFromTest0 >
(> ?
ITest? D
testE I
)I J
{ 	
var 
tests 
= 
CreateTestDataList *
(* +
test+ /
)/ 0
;0 1
if 
( %
UnityTestExecutionContext )
.) *
CurrentContext* 8
!=9 ;
null< @
)@ A
{ 
tests 
. 
First 
( 
) 
. 
testCaseTimeout -
=. /%
UnityTestExecutionContext0 I
.I J
CurrentContextJ X
.X Y
TestCaseTimeoutY h
;h i
} 
return 
new ,
 RemoteTestResultDataWithTestData 7
(7 8
)8 9
{ 
tests 
= 
tests 
}   
;   
}!! 	
private## 
RemoteTestData## 
[## 
]##  
CreateTestDataList##! 3
(##3 4
ITest##4 9
test##: >
)##> ?
{$$ 	
var%% 
list%% 
=%% 
new%% 
List%% 
<%%  
RemoteTestData%%  .
>%%. /
(%%/ 0
)%%0 1
;%%1 2
list&& 
.&& 
Add&& 
(&& 
new&& 
RemoteTestData&& '
(&&' (
test&&( ,
)&&, -
)&&- .
;&&. /
list'' 
.'' 
AddRange'' 
('' 
test'' 
.'' 
Tests'' $
.''$ %

SelectMany''% /
(''/ 0
CreateTestDataList''0 B
)''B C
)''C D
;''D E
return(( 
list(( 
.(( 
ToArray(( 
(((  
)((  !
;((! "
})) 	
private++ 
static++  
RemoteTestResultData++ +
[+++ ,
]++, -$
CreateTestResultDataList++. F
(++F G
ITestResult++G R
result++S Y
)++Y Z
{,, 	
var-- 
list-- 
=-- 
new-- 
List-- 
<--   
RemoteTestResultData--  4
>--4 5
(--5 6
)--6 7
;--7 8
list.. 
... 
Add.. 
(.. 
new..  
RemoteTestResultData.. -
(..- .
result... 4
)..4 5
)..5 6
;..6 7
list// 
.// 
AddRange// 
(// 
result//  
.//  !
Children//! )
.//) *

SelectMany//* 4
(//4 5$
CreateTestResultDataList//5 M
)//M N
)//N O
;//O P
return00 
list00 
.00 
ToArray00 
(00  
)00  !
;00! "
}11 	
}22 
}33 à^
≈D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\UnityLogCheckDelegatingCommand.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
class 	*
UnityLogCheckDelegatingCommand
 (
:) *!
DelegatingTestCommand+ @
,@ A(
IEnumerableTestMethodCommandB ^
{ 
static 

Dictionary 
< 
object  
,  !
bool" &
?& '
>' (
s_AttributeCache) 9
=: ;
new< ?

Dictionary@ J
<J K
objectK Q
,Q R
boolS W
?W X
>X Y
(Y Z
)Z [
;[ \
public *
UnityLogCheckDelegatingCommand -
(- .
TestCommand. 9
innerCommand: F
)F G
: 
base 
( 
innerCommand 
)  
{! "
}" #
public 
override 

TestResult "
Execute# *
(* +!
ITestExecutionContext+ @
contextA H
)H I
{ 	
using 
( 
var 
logScope 
=  !
new" %
LogScope& .
(. /
)/ 0
)0 1
{ 
if 
( 
ExecuteAndCheckLog &
(& '
logScope' /
,/ 0
context1 8
.8 9
CurrentResult9 F
,F G
(H I
)I J
=>K M
innerCommandN Z
.Z [
Execute[ b
(b c
contextc j
)j k
)k l
)l m
PostTestValidation &
(& '
logScope' /
,/ 0
innerCommand1 =
,= >
context? F
.F G
CurrentResultG T
)T U
;U V
} 
return 
context 
. 
CurrentResult (
;( )
} 	
public   
IEnumerable   
ExecuteEnumerable   ,
(  , -!
ITestExecutionContext  - B
context  C J
)  J K
{!! 	
if"" 
("" 
!"" 
("" 
innerCommand"" 
is"" !(
IEnumerableTestMethodCommand""" >'
enumerableTestMethodCommand""? Z
)""Z [
)""[ \
{## 
Execute$$ 
($$ 
context$$ 
)$$  
;$$  !
yield%% 
break%% 
;%% 
}&& 
using(( 
((( 
var(( 
logScope(( 
=((  !
new((" %
LogScope((& .
(((. /
)((/ 0
)((0 1
{)) 
IEnumerable** 
executeEnumerable** -
=**. /
null**0 4
;**4 5
if,, 
(,, 
!,, 
ExecuteAndCheckLog,, '
(,,' (
logScope,,( 0
,,,0 1
context,,2 9
.,,9 :
CurrentResult,,: G
,,,G H
(-- 
)-- 
=>-- 
executeEnumerable-- +
=--, -'
enumerableTestMethodCommand--. I
.--I J
ExecuteEnumerable--J [
(--[ \
context--\ c
)--c d
)--d e
)--e f
yield.. 
break.. 
;..  
foreach00 
(00 
var00 
step00 !
in00" $
executeEnumerable00% 6
)006 7
{11 
if44 
(44 
!44 
CheckFailingLogs44 )
(44) *
logScope44* 2
,442 3
context444 ;
.44; <
CurrentResult44< I
)44I J
)44J K
yield55 
break55 #
;55# $
yield77 
return77  
step77! %
;77% &
}88 
if:: 
(:: 
!:: 
	CheckLogs:: 
(:: 
context:: &
.::& '
CurrentResult::' 4
,::4 5
logScope::6 >
)::> ?
)::? @
yield;; 
break;; 
;;;  
PostTestValidation== "
(==" #
logScope==# +
,==+ ,
innerCommand==- 9
,==9 :
context==; B
.==B C
CurrentResult==C P
)==P Q
;==Q R
}>> 
}?? 	
staticAA 
boolAA 
CaptureExceptionAA $
(AA$ %

TestResultAA% /
resultAA0 6
,AA6 7
ActionAA8 >
actionAA? E
)AAE F
{BB 	
tryCC 
{DD 
actionEE 
(EE 
)EE 
;EE 
returnFF 
trueFF 
;FF 
}GG 
catchHH 
(HH 
	ExceptionHH 
eHH 
)HH 
{II 
resultJJ 
.JJ 
RecordExceptionJJ &
(JJ& '
eJJ' (
)JJ( )
;JJ) *
returnKK 
falseKK 
;KK 
}LL 
}MM 	
staticOO 
boolOO 
ExecuteAndCheckLogOO &
(OO& '
LogScopeOO' /
logScopeOO0 8
,OO8 9

TestResultOO: D
resultOOE K
,OOK L
ActionOOM S
actionOOT Z
)OOZ [
=>PP 
CaptureExceptionPP 
(PP  
resultPP  &
,PP& '
actionPP( .
)PP. /
&&PP0 2
	CheckLogsPP3 <
(PP< =
resultPP= C
,PPC D
logScopePPE M
)PPM N
;PPN O
staticRR 
voidRR 
PostTestValidationRR &
(RR& '
LogScopeRR' /
logScopeRR0 8
,RR8 9
TestCommandRR: E
commandRRF M
,RRM N

TestResultRRO Y
resultRRZ `
)RR` a
{SS 	
ifTT 
(TT 

MustExpectTT 
(TT 
commandTT "
.TT" #
TestTT# '
.TT' (
MethodTT( .
.TT. /

MethodInfoTT/ 9
)TT9 :
)TT: ;
CaptureExceptionUU  
(UU  !
resultUU! '
,UU' (
logScopeUU) 1
.UU1 2 
NoUnexpectedReceivedUU2 F
)UUF G
;UUG H
}VV 	
staticXX 
boolXX 
	CheckLogsXX 
(XX 

TestResultXX (
resultXX) /
,XX/ 0
LogScopeXX1 9
logScopeXX: B
)XXB C
=>YY 
CheckFailingLogsYY 
(YY  
logScopeYY  (
,YY( )
resultYY* 0
)YY0 1
&&YY2 4
CheckExpectedLogsYY5 F
(YYF G
logScopeYYG O
,YYO P
resultYYQ W
)YYW X
;YYX Y
static[[ 
bool[[ 
CheckFailingLogs[[ $
([[$ %
LogScope[[% -
logScope[[. 6
,[[6 7

TestResult[[8 B
result[[C I
)[[I J
{\\ 	
if]] 
(]] 
!]] 
logScope]] 
.]] 
AnyFailingLogs]] (
(]]( )
)]]) *
)]]* +
return^^ 
true^^ 
;^^ 
var`` 

failingLog`` 
=`` 
logScope`` %
.``% &
FailingLogs``& 1
.``1 2
First``2 7
(``7 8
)``8 9
;``9 :
resultaa 
.aa 
RecordExceptionaa "
(aa" #
newaa# &(
UnhandledLogMessageExceptionaa' C
(aaC D

failingLogaaD N
)aaN O
)aaO P
;aaP Q
returnbb 
falsebb 
;bb 
}cc 	
staticee 
boolee 
CheckExpectedLogsee %
(ee% &
LogScopeee& .
logScopeee/ 7
,ee7 8

TestResultee9 C
resulteeD J
)eeJ K
{ff 	
ifgg 
(gg 
!gg 
logScopegg 
.gg 
ExpectedLogsgg &
.gg& '
Anygg' *
(gg* +
)gg+ ,
)gg, -
returnhh 
truehh 
;hh 
varjj 
expectedLogjj 
=jj 
logScopejj &
.jj& '
ExpectedLogsjj' 3
.jj3 4
Peekjj4 8
(jj8 9
)jj9 :
;jj: ;
resultkk 
.kk 
RecordExceptionkk "
(kk" #
newkk# &)
UnexpectedLogMessageExceptionkk' D
(kkD E
expectedLogkkE P
)kkP Q
)kkQ R
;kkR S
returnll 
falsell 
;ll 
}mm 	
staticoo 
booloo 

MustExpectoo 
(oo 

MemberInfooo )
methodoo* 0
)oo0 1
{pp 	
varss 

methodAttrss 
=ss 
methodss #
.ss# $
GetCustomAttributesss$ 7
<ss7 8*
TestMustExpectAllLogsAttributess8 V
>ssV W
(ssW X
truessX \
)ss\ ]
.ss] ^
FirstOrDefaultss^ l
(ssl m
)ssm n
;ssn o
iftt 
(tt 

methodAttrtt 
!=tt 
nulltt "
)tt" #
returnuu 

methodAttruu !
.uu! "

MustExpectuu" ,
;uu, -
varyy 
fixtureyy 
=yy 
methodyy  
.yy  !
DeclaringTypeyy! .
;yy. /
ifzz 
(zz 
!zz 
s_AttributeCachezz !
.zz! "
TryGetValuezz" -
(zz- .
fixturezz. 5
,zz5 6
outzz7 :
varzz; >

mustExpectzz? I
)zzI J
)zzJ K
{{{ 
var|| 
fixtureAttr|| 
=||  !
fixture||" )
.||) *
GetCustomAttributes||* =
<||= >*
TestMustExpectAllLogsAttribute||> \
>||\ ]
(||] ^
true||^ b
)||b c
.||c d
FirstOrDefault||d r
(||r s
)||s t
;||t u

mustExpect}} 
=}} 
s_AttributeCache}} -
[}}- .
fixture}}. 5
]}}5 6
=}}7 8
fixtureAttr}}9 D
?}}D E
.}}E F

MustExpect}}F P
;}}P Q
}~~ 
if
ÄÄ 
(
ÄÄ 

mustExpect
ÄÄ 
!=
ÄÄ 
null
ÄÄ "
)
ÄÄ" #
return
ÅÅ 

mustExpect
ÅÅ !
.
ÅÅ! "
Value
ÅÅ" '
;
ÅÅ' (
var
ÖÖ 
assembly
ÖÖ 
=
ÖÖ 
fixture
ÖÖ "
.
ÖÖ" #
Assembly
ÖÖ# +
;
ÖÖ+ ,
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
s_AttributeCache
ÜÜ !
.
ÜÜ! "
TryGetValue
ÜÜ" -
(
ÜÜ- .
assembly
ÜÜ. 6
,
ÜÜ6 7
out
ÜÜ8 ;

mustExpect
ÜÜ< F
)
ÜÜF G
)
ÜÜG H
{
áá 
var
àà 
assemblyAttr
àà  
=
àà! "
assembly
àà# +
.
àà+ ,!
GetCustomAttributes
àà, ?
<
àà? @,
TestMustExpectAllLogsAttribute
àà@ ^
>
àà^ _
(
àà_ `
)
àà` a
.
ààa b
FirstOrDefault
ààb p
(
ààp q
)
ààq r
;
ààr s

mustExpect
ââ 
=
ââ 
s_AttributeCache
ââ -
[
ââ- .
assembly
ââ. 6
]
ââ6 7
=
ââ8 9
assemblyAttr
ââ: F
?
ââF G
.
ââG H

MustExpect
ââH R
;
ââR S
}
ää 
return
åå 

mustExpect
åå 
==
åå  
true
åå! %
;
åå% &
}
çç 	
}
éé 
}èè î
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\TestEnumeratorWrapper.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  

TestRunner  *
{		 
internal

 
class

 !
TestEnumeratorWrapper

 (
{ 
private 
readonly 

TestMethod #
m_TestMethod$ 0
;0 1
public !
TestEnumeratorWrapper $
($ %

TestMethod% /

testMethod0 :
): ;
{ 	
m_TestMethod 
= 

testMethod %
;% &
} 	
public 
IEnumerator 
GetEnumerator (
(( )!
ITestExecutionContext) >
context? F
)F G
{ 	
if 
( 
m_TestMethod 
. 
Method #
.# $

ReturnType$ .
.. /
Type/ 3
==4 6
typeof7 =
(= >
IEnumerator> I
)I J
)J K
{ 
return  
HandleEnumerableTest +
(+ ,
context, 3
)3 4
;4 5
} 
var 
message 
= 
string  
.  !
Format! '
(' (
$str( Y
,Y Z
m_TestMethod 
. 
Method #
.# $

ReturnType$ .
,. /
m_TestMethod0 <
.< =
Method= C
.C D
NameD H
,H I
m_TestMethodJ V
.V W
MethodW ]
.] ^
TypeInfo^ f
.f g
FullNameg o
)o p
;p q
if 
( 
m_TestMethod 
. 
Method #
.# $

ReturnType$ .
.. /
Type/ 3
==4 6
typeof7 =
(= >
IEnumerable> I
)I J
)J K
{ 
message 
+= 
$str 8
;8 9
} 
throw 
new %
InvalidSignatureException /
(/ 0
message0 7
)7 8
;8 9
}   	
private"" 
IEnumerator""  
HandleEnumerableTest"" 0
(""0 1!
ITestExecutionContext""1 F
context""G N
)""N O
{## 	
try$$ 
{%% 
return&& 
m_TestMethod&& #
.&&# $
Method&&$ *
.&&* +

MethodInfo&&+ 5
.&&5 6
Invoke&&6 <
(&&< =
context&&= D
.&&D E

TestObject&&E O
,&&O P
m_TestMethod&&Q ]
.&&] ^
parms&&^ c
!=&&d f
null&&g k
?&&l m
m_TestMethod&&n z
.&&z {
parms	&&{ Ä
.
&&Ä Å
OriginalArguments
&&Å í
:
&&ì î
null
&&ï ô
)
&&ô ö
as
&&õ ù
IEnumerator
&&û ©
;
&&© ™
}'' 
catch(( 
((( %
TargetInvocationException(( ,
e((- .
)((. /
{)) 
if** 
(** 
e** 
.** 
InnerException** $
is**% '
IgnoreException**( 7
)**7 8
{++ 
context,, 
.,, 
CurrentResult,, )
.,,) *
	SetResult,,* 3
(,,3 4
ResultState,,4 ?
.,,? @
Ignored,,@ G
,,,G H
e,,I J
.,,J K
InnerException,,K Y
.,,Y Z
Message,,Z a
),,a b
;,,b c
return-- 
null-- 
;--  
}.. 
throw// 
;// 
}00 
}11 	
}22 
}33 ‘
ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\IPostBuildCleanup.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

	interface 
IPostBuildCleanup &
{ 
void 
Cleanup 
( 
) 
; 
} 
} †
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\ScriptingRuntimeProxy.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
class !
ScriptingRuntimeProxy (
:) *"
IScriptingRuntimeProxy+ A
{ 
public 
string 
[ 
]  
GetAllUserAssemblies ,
(, -
)- .
{ 	
return 
ScriptingRuntime #
.# $ 
GetAllUserAssemblies$ 8
(8 9
)9 :
;: ;
} 	
}		 
}

 õ
√D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\TestRunner\RemoteHelpers\PlayerConnectionMessageIds.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
TestLaunchers! .
{ 
internal 
static 
class &
PlayerConnectionMessageIds 4
{ 
public 
static 
Guid 
runStartedMessageId .
{/ 0
get1 4
{5 6
return7 =
new> A
GuidB F
(F G
$strG m
)m n
;n o
}p q
}r s
public 
static 
Guid  
runFinishedMessageId /
{0 1
get2 5
{6 7
return8 >
new? B
GuidC G
(G H
$strH n
)n o
;o p
}q r
}s t
public		 
static		 
Guid		  
testStartedMessageId		 /
{		0 1
get		2 5
{		6 7
return		8 >
new		? B
Guid		C G
(		G H
$str		H n
)		n o
;		o p
}		q r
}		s t
public

 
static

 
Guid

 !
testFinishedMessageId

 0
{

1 2
get

3 6
{

7 8
return

9 ?
new

@ C
Guid

D H
(

H I
$str

I o
)

o p
;

p q
}

r s
}

t u
public 
static 
Guid 
quitPlayerMessageId .
{/ 0
get1 4
{5 6
return7 =
new> A
GuidB F
(F G
$strG m
)m n
;n o
}p q
}r s
public 
static 
Guid  
playerAliveHeartbeat /
{0 1
get2 5
{6 7
return8 >
new? B
GuidC G
(G H
$strH n
)n o
;o p
}q r
}s t
} 
} Í,
ƒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Commands\EnumerableTestMethodCommand.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
internal 
class '
EnumerableTestMethodCommand .
:/ 0
TestCommand1 <
,< =(
IEnumerableTestMethodCommand> Z
{ 
private 
readonly 

TestMethod #

testMethod$ .
;. /
public '
EnumerableTestMethodCommand *
(* +

TestMethod+ 5

testMethod6 @
)@ A
: 
base 
( 

testMethod 
) 
{ 	
this 
. 

testMethod 
= 

testMethod (
;( )
} 	
public 
IEnumerable 
ExecuteEnumerable ,
(, -!
ITestExecutionContext- B
contextC J
)J K
{ 	
yield 
return 
null 
; 
IEnumerator *
currentExecutingTestEnumerator 6
;6 7
try 
{ *
currentExecutingTestEnumerator .
=/ 0
new1 4!
TestEnumeratorWrapper5 J
(J K

testMethodK U
)U V
.V W
GetEnumeratorW d
(d e
contexte l
)l m
;m n
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
context## 
.## 
CurrentResult## %
.##% &
RecordException##& 5
(##5 6
ex##6 8
)##8 9
;##9 :
yield$$ 
break$$ 
;$$ 
}%% 
if'' 
('' *
currentExecutingTestEnumerator'' .
!=''/ 1
null''2 6
)''6 7
{(( 
var)) *
testEnumeraterYieldInstruction)) 2
=))3 4
new))5 8
TestEnumerator))9 G
())G H
context))H O
,))O P*
currentExecutingTestEnumerator))Q o
)))o p
;))p q
yield++ 
return++ *
testEnumeraterYieldInstruction++ ;
;++; <
var-- 

enumerator-- 
=--  *
testEnumeraterYieldInstruction--! ?
.--? @
Execute--@ G
(--G H
)--H I
;--I J
var// 
executingEnumerator// '
=//( )0
$ExecuteEnumerableAndRecordExceptions//* N
(//N O

enumerator//O Y
,//Y Z
context//[ b
)//b c
;//c d
while00 
(00 
executingEnumerator00 *
.00* +
MoveNext00+ 3
(003 4
)004 5
)005 6
{11 
yield22 
return22  
executingEnumerator22! 4
.224 5
Current225 <
;22< =
}33 
}44 
else55 
{66 
if77 
(77 
context77 
.77 
CurrentResult77 )
.77) *
ResultState77* 5
!=776 8
ResultState779 D
.77D E
Ignored77E L
)77L M
{88 
context99 
.99 
CurrentResult99 )
.99) *
	SetResult99* 3
(993 4
ResultState994 ?
.99? @
Success99@ G
)99G H
;99H I
}:: 
};; 
}<< 	
private>> 
static>> 
IEnumerator>> "0
$ExecuteEnumerableAndRecordExceptions>># G
(>>G H
IEnumerator>>H S

enumerator>>T ^
,>>^ _!
ITestExecutionContext>>` u
context>>v }
)>>} ~
{?? 	
while@@ 
(@@ 
true@@ 
)@@ 
{AA 
tryBB 
{CC 
ifDD 
(DD 
!DD 

enumeratorDD #
.DD# $
MoveNextDD$ ,
(DD, -
)DD- .
)DD. /
{EE 
breakFF 
;FF 
}GG 
}HH 
catchII 
(II 
	ExceptionII  
exII! #
)II# $
{JJ 
contextKK 
.KK 
CurrentResultKK )
.KK) *
RecordExceptionKK* 9
(KK9 :
exKK: <
)KK< =
;KK= >
breakLL 
;LL 
}MM 
ifOO 
(OO 

enumeratorOO 
.OO 
CurrentOO &
isOO' )
IEnumeratorOO* 5
)OO5 6
{PP 
varQQ 
currentQQ 
=QQ  !
(QQ" #
IEnumeratorQQ# .
)QQ. /

enumeratorQQ/ 9
.QQ9 :
CurrentQQ: A
;QQA B
yieldRR 
returnRR  0
$ExecuteEnumerableAndRecordExceptionsRR! E
(RRE F
currentRRF M
,RRM N
contextRRO V
)RRV W
;RRW X
}SS 
elseTT 
{UU 
yieldVV 
returnVV  

enumeratorVV! +
.VV+ ,
CurrentVV, 3
;VV3 4
}WW 
}XX 
}YY 	
public[[ 
override[[ 

TestResult[[ "
Execute[[# *
([[* +!
ITestExecutionContext[[+ @
context[[A H
)[[H I
{\\ 	
throw]] 
new]] #
NotImplementedException]] -
(]]- .
$str]]. E
)]]E F
;]]F G
}^^ 	
}__ 
}`` 
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\AssemblyProvider\AssemblyLoadProxy.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
.  
Utils  %
{ 
internal 
class 
AssemblyLoadProxy $
:% &
IAssemblyLoadProxy' 9
{ 
public 
IAssemblyWrapper 
Load  $
($ %
string% +
assemblyString, :
): ;
{ 	
return		 
new		 
AssemblyWrapper		 &
(		& '
Assembly		' /
.		/ 0
Load		0 4
(		4 5
assemblyString		5 C
)		C D
)		D E
;		E F
}

 	
} 
} “
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\Utils\PrebuildSceneSetupAttribute.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
|. /
AttributeTargets0 @
.@ A
ClassA F
|G H
AttributeTargetsI Y
.Y Z
MethodZ `
)` a
]a b
public		 

class		 "
PrebuildSetupAttribute		 '
:		( )
	Attribute		* 3
{

 
public "
PrebuildSetupAttribute %
(% &
Type& *
targetClass+ 6
)6 7
{ 	
TargetClass 
= 
targetClass %
;% &
} 	
public?? "
PrebuildSetupAttribute?? %
(??% &
string??& ,
targetClassName??- <
)??< =
{@@ 	
TargetClassAA 
=AA 
AttributeHelperAA )
.AA) *"
GetTargetClassFromNameAA* @
(AA@ A
targetClassNameAAA P
,AAP Q
typeofAAR X
(AAX Y
IPrebuildSetupAAY g
)AAg h
)AAh i
;AAi j
}BB 	
internalDD 
TypeDD 
TargetClassDD !
{DD" #
getDD$ '
;DD' (
privateDD) 0
setDD1 4
;DD4 5
}DD6 7
}EE 
}FF Ô,
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEngine.TestRunner\NUnitExtensions\Runner\DefaultTestWorkItem.cs
	namespace 	
UnityEngine
 
. 

TestRunner  
.  !
NUnitExtensions! 0
.0 1
Runner1 7
{ 
internal 
class !
EditModeTestCallbacks (
{ 
public 
static 
Action  
RestoringTestContext 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
internal 
class 
DefaultTestWorkItem &
:' (
UnityWorkItem) 6
{ 
private 
TestCommand 
_command $
;$ %
public 
DefaultTestWorkItem "
(" #

TestMethod# -
test. 2
,2 3
ITestFilter4 ?
filter@ F
)F G
: 
base 
( 
test 
, 
null 
) 
{ 	
_command 
= 
TestCommandBuilder )
.) *
BuildTestCommand* :
(: ;
test; ?
,? @
filterA G
)G H
;H I
} 	
	protected 
override 
IEnumerable &
PerformWork' 2
(2 3
)3 4
{ 	
if 
( $
m_DontRunRestoringResult (
&&) +!
EditModeTestCallbacks, A
.A B 
RestoringTestContextB V
!=W Y
nullZ ^
)^ _
{ !
EditModeTestCallbacks   %
.  % & 
RestoringTestContext  & :
(  : ;
)  ; <
;  < =
Result!! 
=!! 
Context!!  
.!!  !
CurrentResult!!! .
;!!. /
yield"" 
break"" 
;"" 
}## 
try%% 
{&& 
if'' 
('' 
_command'' 
is'' 
SkipCommand''  +
||'', .
_command''/ 7
is''8 :
FailCommand''; F
)''F G
{(( 
Result)) 
=)) 
_command)) %
.))% &
Execute))& -
())- .
Context)). 5
)))5 6
;))6 7
yield** 
break** 
;**  
}++ 
if-- 
(-- 
!-- 
(-- 
_command-- 
is-- !(
IEnumerableTestMethodCommand--" >
)--> ?
)--? @
{.. 
Debug// 
.// 
LogError// "
(//" #
$str//# <
+//= >
_command//? G
.//G H
GetType//H O
(//O P
)//P Q
.//Q R
Name//R V
)//V W
;//W X
yield00 
break00 
;00  
}11 
if22 
(22 
Context22 
.22 
TestCaseTimeout22 +
==22, .
$num22/ 0
)220 1
{33 
Context44 
.44 
TestCaseTimeout44 +
=44, -
k_DefaultTimeout44. >
;44> ?
}55 
foreach66 
(66 
var66 
workItemStep66 )
in66* ,
(66- .
(66. /(
IEnumerableTestMethodCommand66/ K
)66K L
_command66L T
)66T U
.66U V
ExecuteEnumerable66V g
(66g h
Context66h o
)66o p
)66p q
{77 "
ResultedInDomainReload88 *
=88+ ,
false88- 2
;882 3
if:: 
(:: 
workItemStep:: $
is::% ')
IEditModeTestYieldInstruction::( E
)::E F
{;; 
var<< (
editModeTestYieldInstruction<< 8
=<<9 :
(<<; <)
IEditModeTestYieldInstruction<<< Y
)<<Y Z
workItemStep<<Z f
;<<f g
yield== 
return== $(
editModeTestYieldInstruction==% A
;==A B
var>> 

enumerator>> &
=>>' ((
editModeTestYieldInstruction>>) E
.>>E F
Perform>>F M
(>>M N
)>>N O
;>>O P
while?? 
(?? 
true?? #
)??# $
{@@ 
boolAA  
moveNextAA! )
;AA) *
tryBB 
{CC 
moveNextDD  (
=DD) *

enumeratorDD+ 5
.DD5 6
MoveNextDD6 >
(DD> ?
)DD? @
;DD@ A
}EE 
catchFF !
(FF" #
	ExceptionFF# ,
eFF- .
)FF. /
{GG 
ContextHH  '
.HH' (
CurrentResultHH( 5
.HH5 6
RecordExceptionHH6 E
(HHE F
eHHF G
)HHG H
;HHH I
breakII  %
;II% &
}JJ 
ifLL 
(LL  
!LL  !
moveNextLL! )
)LL) *
{MM 
breakNN  %
;NN% &
}OO 
yieldQQ !
returnQQ" (
nullQQ) -
;QQ- .
}RR 
}SS 
elseTT 
{UU 
yieldVV 
returnVV $
workItemStepVV% 1
;VV1 2
}WW 
}XX 
ResultZZ 
=ZZ 
ContextZZ  
.ZZ  !
CurrentResultZZ! .
;ZZ. /
}[[ 
finally\\ 
{]] 
WorkItemComplete^^  
(^^  !
)^^! "
;^^" #
}__ 
}`` 	
}aa 
}bb 