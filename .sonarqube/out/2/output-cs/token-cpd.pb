ØS
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListTreeView\TestTreeViewItem.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal		 
sealed		 
class		 
TestTreeViewItem		 *
:		+ ,
TreeViewItem		- 9
{

 
public 
TestRunnerResult 
result  &
;& '
internal 
ITestAdaptor 
m_Test $
;$ %
public 
Type 
type 
; 
public 

MethodInfo 
method  
;  !
private 
const 
int !
k_ResultTestMaxLength /
=0 1
$num2 7
;7 8
public 
bool 
IsGroupNode 
{  !
get" %
{& '
return( .
m_Test/ 5
.5 6
IsSuite6 =
;= >
}? @
}A B
public 
string 
FullName 
{  
get! $
{% &
return' -
m_Test. 4
.4 5
FullName5 =
;= >
}? @
}A B
public 
string 
GetAssemblyName %
(% &
)& '
{ 	
var 
test 
= 
m_Test 
; 
while 
( 
test 
!= 
null 
)  
{ 
if 
( 
test 
. 
IsTestAssembly '
)' (
{ 
return 
test 
.  
FullName  (
;( )
} 
test!! 
=!! 
test!! 
.!! 
Parent!! "
;!!" #
}"" 
return$$ 
null$$ 
;$$ 
}%% 	
public'' 
TestTreeViewItem'' 
(''  
ITestAdaptor''  ,
test''- 1
,''1 2
int''3 6
depth''7 <
,''< =
TreeViewItem''> J
parent''K Q
)''Q R
:(( 
base(( 
((( 
GetId(( 
((( 
test(( 
)(( 
,(( 
depth((  %
,((% &
parent((' -
,((- .
test((/ 3
.((3 4
Name((4 8
)((8 9
{)) 	
m_Test** 
=** 
test** 
;** 
if,, 
(,, 
test,, 
.,, 
TypeInfo,, 
!=,,  
null,,! %
),,% &
{-- 
type.. 
=.. 
test.. 
... 
TypeInfo.. $
...$ %
Type..% )
;..) *
}// 
if00 
(00 
test00 
.00 
Method00 
!=00 
null00 #
)00# $
{11 
method22 
=22 
test22 
.22 
Method22 $
.22$ %

MethodInfo22% /
;22/ 0
}33 
displayName55 
=55 
test55 
.55 
Name55 #
.55# $
Replace55$ +
(55+ ,
$str55, 0
,550 1
$str552 4
)554 5
;555 6
icon66 
=66 
Icons66 
.66 
s_UnknownImg66 %
;66% &
}77 	
private99 
static99 
int99 
GetId99  
(99  !
ITestAdaptor99! -
test99. 2
)992 3
{:: 	
return;; 
test;; 
.;; 

UniqueName;; "
.;;" #
GetHashCode;;# .
(;;. /
);;/ 0
;;;0 1
}<< 	
public>> 
void>> 
	SetResult>> 
(>> 
TestRunnerResult>> .

testResult>>/ 9
)>>9 :
{?? 	
result@@ 
=@@ 

testResult@@ 
;@@  
resultAA 
.AA $
SetResultChangedCallbackAA +
(AA+ ,
ResultUpdatedAA, 9
)AA9 :
;AA: ;
ResultUpdatedBB 
(BB 
resultBB  
)BB  !
;BB! "
}CC 	
publicEE 
stringEE 
GetResultTextEE #
(EE# $
)EE$ %
{FF 	
ifGG 
(GG 
resultGG 
.GG 
resultStatusGG #
==GG$ &
TestRunnerResultGG' 7
.GG7 8
ResultStatusGG8 D
.GGD E
NotRunGGE K
)GGK L
{HH 
returnII 
stringII 
.II 
EmptyII #
;II# $
}JJ 
varKK 
durationStringKK 
=KK  
StringKK! '
.KK' (
FormatKK( .
(KK. /
$strKK/ :
,KK: ;
resultKK< B
.KKB C
durationKKC K
)KKK L
;KKL M
varLL 
sbLL 
=LL 
newLL 
StringBuilderLL &
(LL& '
stringLL' -
.LL- .
FormatLL. 4
(LL4 5
$strLL5 A
,LLA B
displayNameLLC N
.LLN O
TrimLLO S
(LLS T
)LLT U
,LLU V
durationStringLLW e
)LLe f
)LLf g
;LLg h
ifMM 
(MM 
!MM 
stringMM 
.MM 
IsNullOrEmptyMM %
(MM% &
resultMM& ,
.MM, -
descriptionMM- 8
)MM8 9
)MM9 :
{NN 
sbOO 
.OO 
AppendFormatOO 
(OO  
$strOO  '
,OO' (
resultOO) /
.OO/ 0
descriptionOO0 ;
)OO; <
;OO< =
}PP 
ifQQ 
(QQ 
!QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ %
(QQ% &
resultQQ& ,
.QQ, -
messagesQQ- 5
)QQ5 6
)QQ6 7
{RR 
sbSS 
.SS 
AppendSS 
(SS 
$strSS #
)SS# $
;SS$ %
sbTT 
.TT 
AppendTT 
(TT 
resultTT  
.TT  !
messagesTT! )
.TT) *
TrimTT* .
(TT. /
)TT/ 0
)TT0 1
;TT1 2
}UU 
ifVV 
(VV 
!VV 
stringVV 
.VV 
IsNullOrEmptyVV %
(VV% &
resultVV& ,
.VV, -

stacktraceVV- 7
)VV7 8
)VV8 9
{WW 
sbXX 
.XX 
AppendXX 
(XX 
$strXX #
)XX# $
;XX$ %
sbYY 
.YY 
AppendYY 
(YY 
resultYY  
.YY  !

stacktraceYY! +
.YY+ ,
TrimYY, 0
(YY0 1
)YY1 2
)YY2 3
;YY3 4
}ZZ 
if[[ 
([[ 
![[ 
string[[ 
.[[ 
IsNullOrEmpty[[ %
([[% &
result[[& ,
.[[, -
output[[- 3
)[[3 4
)[[4 5
{\\ 
sb]] 
.]] 
Append]] 
(]] 
$str]] #
)]]# $
;]]$ %
sb^^ 
.^^ 
Append^^ 
(^^ 
result^^  
.^^  !
output^^! '
.^^' (
Trim^^( ,
(^^, -
)^^- .
)^^. /
;^^/ 0
}__ 
if`` 
(`` 
sb`` 
.`` 
Length`` 
>`` !
k_ResultTestMaxLength`` 1
)``1 2
{aa 
sbbb 
.bb 
Lengthbb 
=bb !
k_ResultTestMaxLengthbb 1
;bb1 2
sbcc 
.cc 
AppendFormatcc 
(cc  
$strcc  R
,ccR S!
k_ResultTestMaxLengthccT i
)cci j
;ccj k
}dd 
returnee 
sbee 
.ee 
ToStringee 
(ee 
)ee  
.ee  !
Trimee! %
(ee% &
)ee& '
;ee' (
}ff 	
privatehh 
voidhh 
ResultUpdatedhh "
(hh" #
TestRunnerResulthh# 3

testResulthh4 >
)hh> ?
{ii 	
switchjj 
(jj 

testResultjj 
.jj 
resultStatusjj +
)jj+ ,
{kk 
casell 
TestRunnerResultll %
.ll% &
ResultStatusll& 2
.ll2 3
Passedll3 9
:ll9 :
iconmm 
=mm 
Iconsmm  
.mm  !
s_SuccessImgmm! -
;mm- .
breaknn 
;nn 
caseoo 
TestRunnerResultoo %
.oo% &
ResultStatusoo& 2
.oo2 3
Failedoo3 9
:oo9 :
iconpp 
=pp 
Iconspp  
.pp  !
	s_FailImgpp! *
;pp* +
breakqq 
;qq 
caserr 
TestRunnerResultrr %
.rr% &
ResultStatusrr& 2
.rr2 3
Inconclusiverr3 ?
:rr? @
iconss 
=ss 
Iconsss  
.ss  !
s_InconclusiveImgss! 2
;ss2 3
breaktt 
;tt 
caseuu 
TestRunnerResultuu %
.uu% &
ResultStatusuu& 2
.uu2 3
Skippeduu3 :
:uu: ;
iconvv 
=vv 
Iconsvv  
.vv  !
s_IgnoreImgvv! ,
;vv, -
breakww 
;ww 
defaultxx 
:xx 
ifyy 
(yy 

testResultyy "
.yy" #
ignoredOrSkippedyy# 3
)yy3 4
{zz 
icon{{ 
={{ 
Icons{{ $
.{{$ %
s_IgnoreImg{{% 0
;{{0 1
}|| 
else}} 
if}} 
(}} 

testResult}} '
.}}' (
notRunnable}}( 3
)}}3 4
{~~ 
icon 
= 
Icons $
.$ %
	s_FailImg% .
;. /
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
icon
ÉÉ 
=
ÉÉ 
Icons
ÉÉ $
.
ÉÉ$ %
s_UnknownImg
ÉÉ% 1
;
ÉÉ1 2
}
ÑÑ 
break
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 	
}
àà 
}ââ Ë
≥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\LegacyPlayModeRunTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class !
LegacyPlayModeRunTask (
:) *
TestTaskBase+ 7
{ 
public		 !
LegacyPlayModeRunTask		 $
(		$ %
)		% &
:		' (
base		) -
(		- .
true		. 2
)		2 3
{

 	
} 	
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
var 
settings 
= +
PlaymodeTestsControllerSettings :
.: ; 
CreateRunnerSettings; O
(O P
testJobDataP [
.[ \
executionSettings\ m
.m n
filtersn u
.u v
Selectv |
(| }
filter	} É
=>
Ñ Ü
filter
á ç
.
ç é'
ToRuntimeTestRunnerFilter
é ß
(
ß ®
testJobData
® ≥
.
≥ ¥
executionSettings
¥ ≈
.
≈ ∆
runSynchronously
∆ ÷
)
÷ ◊
)
◊ ÿ
.
ÿ Ÿ
ToArray
Ÿ ‡
(
‡ ·
)
· ‚
)
‚ „
;
„ ‰
var 
launcher 
= 
new 
PlaymodeLauncher /
(/ 0
settings0 8
)8 9
;9 :
launcher 
. 
Run 
( 
) 
; 
while 
( 
PlaymodeLauncher #
.# $
	IsRunning$ -
)- .
{ 
yield 
return 
null !
;! "
} 
} 	
} 
} ñ.
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\RerunCallback.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
RerunCallback  
:! "
ScriptableObject# 3
,3 4

ICallbacks5 ?
{		 
public

 
static

 
bool

 
useMockRunFilter

 +
=

, -
false

. 3
;

3 4
public 
static 
UITestRunnerFilter (
mockRunFilter) 6
=7 8
null9 =
;= >
public 
void 
RunFinished 
(  
ITestResultAdaptor  2
result3 9
)9 :
{ 	
if 
( 
RerunCallbackData !
.! "
instance" *
.* +

runFilters+ 5
==6 8
null9 =
||> @
RerunCallbackDataA R
.R S
instanceS [
.[ \

runFilters\ f
.f g
Lengthg m
==n p
$numq r
)r s
RerunCallbackData !
.! "
instance" *
.* +

runFilters+ 5
=6 7
new8 ;
[; <
]< =
{> ?
new? B
UITestRunnerFilterC U
(U V
)V W
}W X
;X Y
var 
	runFilter 
= 
RerunCallbackData -
.- .
instance. 6
.6 7

runFilters7 A
[A B
$numB C
]C D
;D E
if 
( 
useMockRunFilter  
)  !
{ 
	runFilter 
= 
mockRunFilter )
;) *
} 
	runFilter 
. 
testRepetitions %
--% '
;' (
if 
( 
	runFilter 
. 
testRepetitions )
<=* ,
$num- .
||/ 1
result2 8
.8 9

TestStatus9 C
!=D F

TestStatusG Q
.Q R
PassedR X
)X Y
{ 
ExitCallbacks 
. 
preventExit )
=* +
false, 1
;1 2
return 
; 
} 
ExitCallbacks   
.   
preventExit   %
=  & '
true  ( ,
;  , -
if!! 
(!! 
EditorApplication!! !
.!!! "
	isPlaying!!" +
)!!+ ,
{"" 
EditorApplication## !
.##! " 
playModeStateChanged##" 6
+=##7 9
WaitForExitPlaymode##: M
;##M N
return$$ 
;$$ 
}%% 
if'' 
('' 
!'' 
useMockRunFilter'' !
)''! "
{((  
ExecuteTestRunnerAPI)) $
())$ %
)))% &
;))& '
}** 
}++ 	
private-- 
static-- 
void-- 
WaitForExitPlaymode-- /
(--/ 0
PlayModeStateChange--0 C
state--D I
)--I J
{.. 	
if// 
(// 
state// 
==// 
PlayModeStateChange// ,
.//, -
EnteredEditMode//- <
)//< =
{00  
ExecuteTestRunnerAPI11 $
(11$ %
)11% &
;11& '
}22 
}33 	
private55 
static55 
void55  
ExecuteTestRunnerAPI55 0
(550 1
)551 2
{66 	
var77 
	runFilter77 
=77 
RerunCallbackData77 -
.77- .
instance77. 6
.776 7

runFilters777 A
[77A B
$num77B C
]77C D
;77D E
var88 
testMode88 
=88 
RerunCallbackData88 ,
.88, -
instance88- 5
.885 6
testMode886 >
;88> ?
var:: 
testRunnerApi:: 
=:: 
ScriptableObject::  0
.::0 1
CreateInstance::1 ?
<::? @
TestRunnerApi::@ M
>::M N
(::N O
)::O P
;::P Q
testRunnerApi;; 
.;; 
Execute;; !
(;;! "
new;;" %
Api;;& )
.;;) *
ExecutionSettings;;* ;
(;;; <
);;< =
{<< 
filters== 
=== 
new== 
[== 
]== 
{>> 
new?? 
Filter?? 
(?? 
)??  
{@@ 
categoryNamesAA %
=AA& '
	runFilterAA( 1
.AA1 2
categoryNamesAA2 ?
,AA? @

groupNamesBB "
=BB# $
	runFilterBB% .
.BB. /

groupNamesBB/ 9
,BB9 :
testModeCC  
=CC! "
testModeCC# +
,CC+ ,
	testNamesDD !
=DD" #
	runFilterDD$ -
.DD- .
	testNamesDD. 7
}EE 
}FF 
}GG 
)GG 
;GG 
}HH 	
publicJJ 
voidJJ 
TestStartedJJ 
(JJ  
ITestAdaptorJJ  ,
testJJ- 1
)JJ1 2
{KK 	
}LL 	
publicNN 
voidNN 
TestFinishedNN  
(NN  !
ITestResultAdaptorNN! 3
resultNN4 :
)NN: ;
{OO 	
}PP 	
publicRR 
voidRR 

RunStartedRR 
(RR 
ITestAdaptorRR +

testsToRunRR, 6
)RR6 7
{SS 	
}TT 	
}UU 
}VV ∞
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Messages\EnterPlayMode.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public

 

class

 
EnterPlayMode

 
:

  )
IEditModeTestYieldInstruction

! >
{ 
public 
bool 
ExpectDomainReload &
{' (
get) ,
;, -
}. /
public 
bool !
ExpectedPlaymodeState )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
EnterPlayMode 
( 
bool !
expectDomainReload" 4
=5 6
true7 ;
); <
{ 	
ExpectDomainReload 
=  
expectDomainReload! 3
;3 4
} 	
public## 
IEnumerator## 
Perform## "
(##" #
)### $
{$$ 	
if%% 
(%% 
EditorApplication%% !
.%%! "
	isPlaying%%" +
)%%+ ,
{&& 
throw'' 
new'' 
	Exception'' #
(''# $
$str''$ C
)''C D
;''D E
}(( 
if)) 
()) 
EditorUtility)) 
.)) #
scriptCompilationFailed)) 5
)))5 6
{** 
throw++ 
new++ 
	Exception++ #
(++# $
$str++$ ?
)++? @
;++@ A
},, 
yield-- 
return-- 
null-- 
;-- !
ExpectedPlaymodeState.. !
=.." #
true..$ (
;..( )
EditorApplication00 
.00 "
UnlockReloadAssemblies00 4
(004 5
)005 6
;006 7
EditorApplication11 
.11 
	isPlaying11 '
=11( )
true11* .
;11. /
while33 
(33 
!33 
EditorApplication33 %
.33% &
	isPlaying33& /
)33/ 0
{44 
yield55 
return55 
null55 !
;55! "
}66 
}77 	
}88 
}99 Ü	
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\PrebuildSetupTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal		 
class		 
PrebuildSetupTask		 $
:		% &
BuildActionTaskBase		' :
<		: ;
IPrebuildSetup		; I
>		I J
{

 
public 
PrebuildSetupTask  
(  !
)! "
:# $
base% )
() *
new* -(
PrebuildSetupAttributeFinder. J
(J K
)K L
)L M
{ 	
} 	
	protected 
override 
void 
Action  &
(& '
IPrebuildSetup' 5
target6 <
)< =
{ 	
target 
. 
Setup 
( 
) 
; 
} 	
} 
} ‘ñ
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\EditModeRunner.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface +
IUnityTestAssemblyRunnerFactory 6
{ $
IUnityTestAssemblyRunner  
Create! '
(' (
TestPlatform( 4
testPlatform5 A
,A B
WorkItemFactoryC R
factoryS Z
)Z [
;[ \
} 
internal 
class *
UnityTestAssemblyRunnerFactory 1
:2 3+
IUnityTestAssemblyRunnerFactory4 S
{ 
public $
IUnityTestAssemblyRunner '
Create( .
(. /
TestPlatform/ ;
testPlatform< H
,H I
WorkItemFactoryJ Y
factoryZ a
)a b
{ 	
return 
new #
UnityTestAssemblyRunner .
(. /
new/ 2$
UnityTestAssemblyBuilder3 K
(K L
)L M
,M N
factoryO V
)V W
;W X
} 	
} 
[!! 
Serializable!! 
]!! 
internal"" 
class"" 
EditModeRunner"" !
:""" #
ScriptableObject""$ 4
,""4 5
IDisposable""6 A
{## 
[$$ 	
SerializeField$$	 
]$$ 
private%% 
Filter%% 
[%% 
]%% 
	m_Filters%% "
;%%" #
[(( 	
SerializeField((	 
](( 
private)) 
int)) 
m_CurrentPC)) 
;))  
[++ 	
SerializeField++	 
]++ 
private,, 
bool,, 
m_ExecuteOnEnable,, &
;,,& '
[.. 	
SerializeField..	 
].. 
private// 
List// 
<// 
string// 
>// !
m_AlreadyStartedTests// 2
;//2 3
[11 	
SerializeField11	 
]11 
private22 
List22 
<22  
TestResultSerializer22 )
>22) *
m_ExecutedTests22+ :
;22: ;
[44 	
SerializeField44	 
]44 
private55 
List55 
<55 
ScriptableObject55 %
>55% &
m_CallbackObjects55' 8
=559 :
new55; >
List55? C
<55C D
ScriptableObject55D T
>55T U
(55U V
)55V W
;55W X
[77 	
SerializeField77	 
]77 
private88 
TestStartedEvent88  
m_TestStartedEvent88! 3
=884 5
new886 9
TestStartedEvent88: J
(88J K
)88K L
;88L M
[:: 	
SerializeField::	 
]:: 
private;; 
TestFinishedEvent;; !
m_TestFinishedEvent;;" 5
=;;6 7
new;;8 ;
TestFinishedEvent;;< M
(;;M N
);;N O
;;;O P
[== 	
SerializeField==	 
]== 
private>> 
RunStartedEvent>> 
m_RunStartedEvent>>  1
=>>2 3
new>>4 7
RunStartedEvent>>8 G
(>>G H
)>>H I
;>>I J
[@@ 	
SerializeField@@	 
]@@ 
privateAA 
RunFinishedEventAA  
m_RunFinishedEventAA! 3
=AA4 5
newAA6 9
RunFinishedEventAA: J
(AAJ K
)AAK L
;AAL M
[CC 	
SerializeFieldCC	 
]CC 
privateDD %
TestRunnerStateSerializerDD )'
m_TestRunnerStateSerializerDD* E
=DDF G
newDDH K%
TestRunnerStateSerializerDDL e
(DDe f
)DDf g
;DDg h
[FF 	
SerializeFieldFF	 
]FF 
privateGG 
boolGG 
m_RunningTestsGG #
;GG# $
[II 	
SerializeFieldII	 
]II 
privateJJ 
TestPlatformJJ 
m_TestPlatformJJ +
;JJ+ ,
[LL 	
SerializeFieldLL	 
]LL 
privateMM 
objectMM  
m_CurrentYieldObjectMM +
;MM+ ,
[OO 	
SerializeFieldOO	 
]OO 
privatePP '
BeforeAfterTestCommandStatePP + 
m_SetUpTearDownStatePP, @
;PP@ A
[QQ 	
SerializeFieldQQ	 
]QQ 
privateRR '
BeforeAfterTestCommandStateRR +'
m_OuterUnityTestActionStateRR, G
;RRG H
[TT 	
SerializeFieldTT	 
]TT 
privateUU 
EnumerableTestStateUU #!
m_EnumerableTestStateUU$ 9
;UU9 :
[WW 	
SerializeFieldWW	 
]WW 
publicXX 
boolXX 
RunFinishedXX 
=XX  !
falseXX" '
;XX' (
publicZZ 
boolZZ  
RunningSynchronouslyZZ (
{ZZ) *
getZZ+ .
;ZZ. /
privateZZ0 7
setZZ8 ;
;ZZ; <
}ZZ= >
internal\\ $
IUnityTestAssemblyRunner\\ )
m_Runner\\* 2
;\\2 3
private^^ 
ConstructDelegator^^ " 
m_ConstructDelegator^^# 7
;^^7 8
private`` 
IEnumerator`` 
	m_RunStep`` %
;``% &
publicbb +
IUnityTestAssemblyRunnerFactorybb .*
UnityTestAssemblyRunnerFactorybb/ M
{bbN O
getbbP S
;bbS T
setbbU X
;bbX Y
}bbZ [
publicdd 
voiddd 
Initdd 
(dd 
Filterdd 
[dd  
]dd  !
filtersdd" )
,dd) *
TestPlatformdd+ 7
platformdd8 @
,dd@ A
boolddB F 
runningSynchronouslyddG [
)dd[ \
{ee 	
	m_Filtersff 
=ff 
filtersff 
;ff  
m_TestPlatformgg 
=gg 
platformgg %
;gg% &!
m_AlreadyStartedTestshh !
=hh" #
newhh$ '
Listhh( ,
<hh, -
stringhh- 3
>hh3 4
(hh4 5
)hh5 6
;hh6 7
m_ExecutedTestsii 
=ii 
newii !
Listii" &
<ii& ' 
TestResultSerializerii' ;
>ii; <
(ii< =
)ii= >
;ii> ? 
RunningSynchronouslyjj  
=jj! " 
runningSynchronouslyjj# 7
;jj7 8

InitRunnerkk 
(kk 
)kk 
;kk 
}ll 	
privatenn 
voidnn 

InitRunnernn 
(nn  
)nn  !
{oo 	
m_Runnerqq 
=qq 
(qq *
UnityTestAssemblyRunnerFactoryqq 6
??qq7 9
newqq: =*
UnityTestAssemblyRunnerFactoryqq> \
(qq\ ]
)qq] ^
)qq^ _
.qq_ `
Createqq` f
(qqf g
TestPlatformqqg s
.qqs t
EditModeqqt |
,qq| }
new	qq~ Å%
EditmodeWorkItemFactory
qqÇ ô
(
qqô ö
)
qqö õ
)
qqõ ú
;
qqú ù
varrr  
testAssemblyProviderrr $
=rr% &
newrr' *,
 EditorLoadedTestAssemblyProviderrr+ K
(rrK L
newrrL O+
EditorCompilationInterfaceProxyrrP o
(rro p
)rrp q
,rrq r
newrrs v"
EditorAssembliesProxy	rrw å
(
rrå ç
)
rrç é
)
rré è
;
rrè ê
varss 

assembliesss 
=ss  
testAssemblyProviderss 1
.ss1 2&
GetAssembliesGroupedByTypess2 L
(ssL M
m_TestPlatformssM [
)ss[ \
.ss\ ]
Selectss] c
(ssc d
xssd e
=>ssf h
xssi j
.ssj k
Assemblyssk s
)sss t
.sst u
ToArrayssu |
(ss| }
)ss} ~
;ss~ 
vartt 
loadedTeststt 
=tt 
m_Runnertt &
.tt& '
Loadtt' +
(tt+ ,

assembliestt, 6
,tt6 7
TestPlatformtt8 D
.ttD E
EditModettE M
,ttM N$
UnityTestAssemblyBuilderuu (
.uu( )'
GetNUnitTestBuilderSettingsuu) D
(uuD E
m_TestPlatformuuE S
)uuS T
)uuT U
;uuU V
loadedTestsvv 
.vv "
ParseForNameDuplicatesvv .
(vv. /
)vv/ 0
;vv0 1
CallbacksDelegatorww 
.ww 
instanceww '
.ww' (
TestTreeRebuildww( 7
(ww7 8
loadedTestsww8 C
)wwC D
;wwD E
	hideFlagsxx 
|=xx 
	HideFlagsxx "
.xx" #
DontSavexx# +
;xx+ ,*
EnumerableSetUpTearDownCommandyy *
.yy* +
ActivePcHelperyy+ 9
=yy: ;
newyy< ?
EditModePcHelperyy@ P
(yyP Q
)yyQ R
;yyR S'
OuterUnityTestActionCommandzz '
.zz' (
ActivePcHelperzz( 6
=zz7 8
newzz9 <
EditModePcHelperzz= M
(zzM N
)zzN O
;zzO P
}{{ 	
public}} 
void}} 
OnEnable}} 
(}} 
)}} 
{~~ 	
if 
( 
m_ExecuteOnEnable !
)! "
{
ÄÄ 

InitRunner
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
m_ExecuteOnEnable
ÇÇ !
=
ÇÇ" #
false
ÇÇ$ )
;
ÇÇ) *
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
callback
ÉÉ %
in
ÉÉ& (
m_CallbackObjects
ÉÉ) :
)
ÉÉ: ;
{
ÑÑ 
AddListeners
ÖÖ  
(
ÖÖ  !
callback
ÖÖ! )
as
ÖÖ* ,!
ITestRunnerListener
ÖÖ- @
)
ÖÖ@ A
;
ÖÖA B
}
ÜÜ "
m_ConstructDelegator
áá $
=
áá% &
new
áá' * 
ConstructDelegator
áá+ =
(
áá= >)
m_TestRunnerStateSerializer
áá> Y
)
ááY Z
;
ááZ ["
EnumeratorStepHelper
ââ $
.
ââ$ %
SetEnumeratorPC
ââ% 4
(
ââ4 5
m_CurrentPC
ââ5 @
)
ââ@ A
;
ââA B%
UnityWorkItemDataHolder
ãã '
.
ãã' ("
alreadyExecutedTests
ãã( <
=
ãã= >
m_ExecutedTests
ãã? N
.
ããN O
Select
ããO U
(
ããU V
x
ããV W
=>
ããX Z
x
ãã[ \
.
ãã\ ]

uniqueName
ãã] g
)
ããg h
.
ããh i
ToList
ããi o
(
ãão p
)
ããp q
;
ããq r%
UnityWorkItemDataHolder
åå '
.
åå' (!
alreadyStartedTests
åå( ;
=
åå< =#
m_AlreadyStartedTests
åå> S
;
ååS T
Run
çç 
(
çç 
)
çç 
;
çç 
}
éé 
}
èè 	
public
ëë 
void
ëë 
TestStartedEvent
ëë $
(
ëë$ %
ITest
ëë% *
test
ëë+ /
)
ëë/ 0
{
íí 	#
m_AlreadyStartedTests
ìì !
.
ìì! "
Add
ìì" %
(
ìì% &
test
ìì& *
.
ìì* +
GetUniqueName
ìì+ 8
(
ìì8 9
)
ìì9 :
)
ìì: ;
;
ìì; <
}
îî 	
public
ññ 
void
ññ 
TestFinishedEvent
ññ %
(
ññ% &
ITestResult
ññ& 1

testResult
ññ2 <
)
ññ< =
{
óó 	#
m_AlreadyStartedTests
òò !
.
òò! "
Remove
òò" (
(
òò( )

testResult
òò) 3
.
òò3 4
Test
òò4 8
.
òò8 9
GetUniqueName
òò9 F
(
òòF G
)
òòG H
)
òòH I
;
òòI J
m_ExecutedTests
ôô 
.
ôô 
Add
ôô 
(
ôô  "
TestResultSerializer
ôô  4
.
ôô4 5 
MakeFromTestResult
ôô5 G
(
ôôG H

testResult
ôôH R
)
ôôR S
)
ôôS T
;
ôôT U
}
öö 	
public
úú 
void
úú 
Run
úú 
(
úú 
)
úú 
{
ùù 	#
EditModeTestCallbacks
ûû !
.
ûû! ""
RestoringTestContext
ûû" 6
+=
ûû7 9
OnRestoringTest
ûû: I
;
ûûI J
var
üü 
context
üü 
=
üü 
m_Runner
üü "
.
üü" #
GetCurrentContext
üü# 4
(
üü4 5
)
üü5 6
;
üü6 7
if
†† 
(
†† "
m_SetUpTearDownState
†† $
==
††% '
null
††( ,
)
††, -
{
°° "
m_SetUpTearDownState
¢¢ $
=
¢¢% &
CreateInstance
¢¢' 5
<
¢¢5 6)
BeforeAfterTestCommandState
¢¢6 Q
>
¢¢Q R
(
¢¢R S
)
¢¢S T
;
¢¢T U
}
££ 
context
§§ 
.
§§  
SetUpTearDownState
§§ &
=
§§' ("
m_SetUpTearDownState
§§) =
;
§§= >
if
¶¶ 
(
¶¶ )
m_OuterUnityTestActionState
¶¶ +
==
¶¶, .
null
¶¶/ 3
)
¶¶3 4
{
ßß )
m_OuterUnityTestActionState
®® +
=
®®, -
CreateInstance
®®. <
<
®®< =)
BeforeAfterTestCommandState
®®= X
>
®®X Y
(
®®Y Z
)
®®Z [
;
®®[ \
}
©© 
context
™™ 
.
™™ '
OuterUnityTestActionState
™™ -
=
™™. /)
m_OuterUnityTestActionState
™™0 K
;
™™K L
if
¨¨ 
(
¨¨ #
m_EnumerableTestState
¨¨ %
==
¨¨& (
null
¨¨) -
)
¨¨- .
{
≠≠ #
m_EnumerableTestState
ÆÆ %
=
ÆÆ& '
CreateInstance
ÆÆ( 6
<
ÆÆ6 7!
EnumerableTestState
ÆÆ7 J
>
ÆÆJ K
(
ÆÆK L
)
ÆÆL M
;
ÆÆM N
}
ØØ 
context
∞∞ 
.
∞∞ !
EnumerableTestState
∞∞ '
=
∞∞( )#
m_EnumerableTestState
∞∞* ?
;
∞∞? @
if
≤≤ 
(
≤≤ 
!
≤≤ 
m_RunningTests
≤≤ 
)
≤≤  
{
≥≥ 
m_RunStartedEvent
¥¥ !
.
¥¥! "
Invoke
¥¥" (
(
¥¥( )
m_Runner
¥¥) 1
.
¥¥1 2

LoadedTest
¥¥2 <
)
¥¥< =
;
¥¥= >
}
µµ 
if
∑∑ 
(
∑∑ "
m_ConstructDelegator
∑∑ $
==
∑∑% '
null
∑∑( ,
)
∑∑, -"
m_ConstructDelegator
∏∏ $
=
∏∏% &
new
∏∏' * 
ConstructDelegator
∏∏+ =
(
∏∏= >)
m_TestRunnerStateSerializer
∏∏> Y
)
∏∏Y Z
;
∏∏Z [
Reflect
∫∫ 
.
∫∫ $
ConstructorCallWrapper
∫∫ *
=
∫∫+ ,"
m_ConstructDelegator
∫∫- A
.
∫∫A B
Delegate
∫∫B J
;
∫∫J K 
m_TestStartedEvent
ªª 
.
ªª 
AddListener
ªª *
(
ªª* +
TestStartedEvent
ªª+ ;
)
ªª; <
;
ªª< =!
m_TestFinishedEvent
ºº 
.
ºº  
AddListener
ºº  +
(
ºº+ ,
TestFinishedEvent
ºº, =
)
ºº= >
;
ºº> ?"
AssemblyReloadEvents
ææ  
.
ææ  !"
beforeAssemblyReload
ææ! 5
+=
ææ6 8$
OnBeforeAssemblyReload
ææ9 O
;
ææO P
RunningTests
¿¿ 
=
¿¿ 
true
¿¿ 
;
¿¿  
EditorApplication
¬¬ 
.
¬¬ "
LockReloadAssemblies
¬¬ 2
(
¬¬2 3
)
¬¬3 4
;
¬¬4 5
var
ƒƒ !
testListenerWrapper
ƒƒ #
=
ƒƒ$ %
new
ƒƒ& )!
TestListenerWrapper
ƒƒ* =
(
ƒƒ= > 
m_TestStartedEvent
ƒƒ> P
,
ƒƒP Q!
m_TestFinishedEvent
ƒƒR e
)
ƒƒe f
;
ƒƒf g
	m_RunStep
≈≈ 
=
≈≈ 
m_Runner
≈≈  
.
≈≈  !
Run
≈≈! $
(
≈≈$ %!
testListenerWrapper
≈≈% 8
,
≈≈8 9
	GetFilter
≈≈: C
(
≈≈C D
)
≈≈D E
)
≈≈E F
.
≈≈F G
GetEnumerator
≈≈G T
(
≈≈T U
)
≈≈U V
;
≈≈V W
m_RunningTests
∆∆ 
=
∆∆ 
true
∆∆ !
;
∆∆! "
if
»» 
(
»» 
!
»» "
RunningSynchronously
»» %
)
»»% &
EditorApplication
…… !
.
……! "
update
……" (
+=
……) +
TestConsumer
……, 8
;
……8 9
}
   	
public
ÃÃ 
void
ÃÃ #
CompleteSynchronously
ÃÃ )
(
ÃÃ) *
)
ÃÃ* +
{
ÕÕ 	
while
ŒŒ 
(
ŒŒ 
!
ŒŒ 
m_Runner
ŒŒ 
.
ŒŒ 
IsTestComplete
ŒŒ +
)
ŒŒ+ ,
TestConsumer
œœ 
(
œœ 
)
œœ 
;
œœ 
}
–– 	
private
““ 
void
““ $
OnBeforeAssemblyReload
““ +
(
““+ ,
)
““, -
{
”” 	
EditorApplication
‘‘ 
.
‘‘ 
update
‘‘ $
-=
‘‘% '
TestConsumer
‘‘( 4
;
‘‘4 5
if
÷÷ 
(
÷÷ 
m_ExecuteOnEnable
÷÷ !
)
÷÷! "
{
◊◊ "
AssemblyReloadEvents
ÿÿ $
.
ÿÿ$ %"
beforeAssemblyReload
ÿÿ% 9
-=
ÿÿ: <$
OnBeforeAssemblyReload
ÿÿ= S
;
ÿÿS T
return
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
if
‹‹ 
(
‹‹ 
m_Runner
‹‹ 
!=
‹‹ 
null
‹‹  
&&
‹‹! #
m_Runner
‹‹$ ,
.
‹‹, -
TopLevelWorkItem
‹‹- =
!=
‹‹> @
null
‹‹A E
)
‹‹E F
m_Runner
›› 
.
›› 
TopLevelWorkItem
›› )
.
››) *$
ResultedInDomainReload
››* @
=
››A B
true
››C G
;
››G H
if
ﬂﬂ 
(
ﬂﬂ 
RunningTests
ﬂﬂ 
)
ﬂﬂ 
{
‡‡ 
Debug
·· 
.
·· 
LogError
·· 
(
·· 
$str
·· d
)
··d e
;
··e f
EditorUtility
„„ 
.
„„ 
ClearProgressBar
„„ .
(
„„. /
)
„„/ 0
;
„„0 1
if
ÂÂ 
(
ÂÂ 
m_Runner
ÂÂ 
.
ÂÂ 
GetCurrentContext
ÂÂ .
(
ÂÂ. /
)
ÂÂ/ 0
!=
ÂÂ1 3
null
ÂÂ4 8
&&
ÂÂ9 ;
m_Runner
ÂÂ< D
.
ÂÂD E
GetCurrentContext
ÂÂE V
(
ÂÂV W
)
ÂÂW X
.
ÂÂX Y
CurrentResult
ÂÂY f
!=
ÂÂg i
null
ÂÂj n
)
ÂÂn o
{
ÊÊ 
m_Runner
ÁÁ 
.
ÁÁ 
GetCurrentContext
ÁÁ .
(
ÁÁ. /
)
ÁÁ/ 0
.
ÁÁ0 1
CurrentResult
ÁÁ1 >
.
ÁÁ> ?
	SetResult
ÁÁ? H
(
ÁÁH I
ResultState
ÁÁI T
.
ÁÁT U
	Cancelled
ÁÁU ^
,
ÁÁ^ _
$strÁÁ` Ö
)ÁÁÖ Ü
;ÁÁÜ á
}
ËË 
OnRunCancel
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
bool
ÌÌ 
RunningTests
ÌÌ !
;
ÌÌ! "
private
ÔÔ 
Stack
ÔÔ 
<
ÔÔ 
IEnumerator
ÔÔ !
>
ÔÔ! "
	StepStack
ÔÔ# ,
=
ÔÔ- .
new
ÔÔ/ 2
Stack
ÔÔ3 8
<
ÔÔ8 9
IEnumerator
ÔÔ9 D
>
ÔÔD E
(
ÔÔE F
)
ÔÔF G
;
ÔÔG H
private
ÒÒ 
bool
ÒÒ *
MoveNextAndUpdateYieldObject
ÒÒ 1
(
ÒÒ1 2
)
ÒÒ2 3
{
ÚÚ 	
var
ÛÛ 
result
ÛÛ 
=
ÛÛ 
	m_RunStep
ÛÛ "
.
ÛÛ" #
MoveNext
ÛÛ# +
(
ÛÛ+ ,
)
ÛÛ, -
;
ÛÛ- .
if
ıı 
(
ıı 
result
ıı 
)
ıı 
{
ˆˆ "
m_CurrentYieldObject
˜˜ $
=
˜˜% &
	m_RunStep
˜˜' 0
.
˜˜0 1
Current
˜˜1 8
;
˜˜8 9
while
¯¯ 
(
¯¯ "
m_CurrentYieldObject
¯¯ +
is
¯¯, .
IEnumerator
¯¯/ :
)
¯¯: ;
{
˘˘ 
var
˙˙ 
currentEnumerator
˙˙ )
=
˙˙* +
(
˙˙, -
IEnumerator
˙˙- 8
)
˙˙8 9"
m_CurrentYieldObject
˙˙9 M
;
˙˙M N
	StepStack
˝˝ 
.
˝˝ 
Push
˝˝ "
(
˝˝" #
	m_RunStep
˝˝# ,
)
˝˝, -
;
˝˝- .
	m_RunStep
ˇˇ 
=
ˇˇ 
currentEnumerator
ˇˇ  1
;
ˇˇ1 2"
m_CurrentYieldObject
ÄÄ (
=
ÄÄ) *
	m_RunStep
ÄÄ+ 4
.
ÄÄ4 5
Current
ÄÄ5 <
;
ÄÄ< =
}
ÅÅ 
if
ÉÉ 
(
ÉÉ 
	StepStack
ÉÉ 
.
ÉÉ 
Count
ÉÉ #
>
ÉÉ$ %
$num
ÉÉ& '
&&
ÉÉ( *"
m_CurrentYieldObject
ÉÉ+ ?
!=
ÉÉ@ B
null
ÉÉC G
)
ÉÉG H
{
ÑÑ 
Debug
ÖÖ 
.
ÖÖ 
LogError
ÖÖ "
(
ÖÖ" #
$str
ÖÖ# Q
+
ÖÖR S"
m_CurrentYieldObject
ÖÖT h
.
ÖÖh i
GetType
ÖÖi p
(
ÖÖp q
)
ÖÖq r
.
ÖÖr s
Name
ÖÖs w
+
ÖÖx y
$str
ÖÖz }
)
ÖÖ} ~
;
ÖÖ~ 
}
ÜÜ 
return
àà 
true
àà 
;
àà 
}
ââ 
if
ãã 
(
ãã 
	StepStack
ãã 
.
ãã 
Count
ãã 
==
ãã  "
$num
ãã# $
)
ãã$ %
return
åå 
false
åå 
;
åå 
	m_RunStep
éé 
=
éé 
	StepStack
éé !
.
éé! "
Pop
éé" %
(
éé% &
)
éé& '
;
éé' (
return
èè *
MoveNextAndUpdateYieldObject
èè /
(
èè/ 0
)
èè0 1
;
èè1 2
}
êê 	
private
íí 
void
íí 
TestConsumer
íí !
(
íí! "
)
íí" #
{
ìì 	
var
îî 
moveNext
îî 
=
îî *
MoveNextAndUpdateYieldObject
îî 7
(
îî7 8
)
îî8 9
;
îî9 :
if
ññ 
(
ññ "
m_CurrentYieldObject
ññ $
!=
ññ% '
null
ññ( ,
)
ññ, -
{
óó 
InvokeDelegator
òò 
(
òò  
)
òò  !
;
òò! "
}
ôô 
if
õõ 
(
õõ 
!
õõ 
moveNext
õõ 
&&
õõ 
!
õõ 
m_Runner
õõ &
.
õõ& '
IsTestComplete
õõ' 5
)
õõ5 6
{
úú 
CompleteTestRun
ùù 
(
ùù  
)
ùù  !
;
ùù! "
throw
ûû 
new
ûû &
IndexOutOfRangeException
ûû 2
(
ûû2 3
$str
ûû3 v
)
ûûv w
;
ûûw x
}
üü 
if
°° 
(
°° 
m_Runner
°° 
.
°° 
IsTestComplete
°° '
)
°°' (
{
¢¢ 
CompleteTestRun
££ 
(
££  
)
££  !
;
££! "
}
§§ 
}
•• 	
private
ßß 
void
ßß 
CompleteTestRun
ßß $
(
ßß$ %
)
ßß% &
{
®® 	
if
©© 
(
©© 
!
©© "
RunningSynchronously
©© %
)
©©% &
EditorApplication
™™ !
.
™™! "
update
™™" (
-=
™™) +
TestConsumer
™™, 8
;
™™8 9
TestLauncherBase
¨¨ 
.
¨¨ ,
ExecutePostBuildCleanupMethods
¨¨ ;
(
¨¨; <
this
¨¨< @
.
¨¨@ A
GetLoadedTests
¨¨A O
(
¨¨O P
)
¨¨P Q
,
¨¨Q R
this
¨¨S W
.
¨¨W X
	GetFilter
¨¨X a
(
¨¨a b
)
¨¨b c
,
¨¨c d
Application
¨¨e p
.
¨¨p q
platform
¨¨q y
)
¨¨y z
;
¨¨z { 
m_RunFinishedEvent
ÆÆ 
.
ÆÆ 
Invoke
ÆÆ %
(
ÆÆ% &
m_Runner
ÆÆ& .
.
ÆÆ. /
Result
ÆÆ/ 5
)
ÆÆ5 6
;
ÆÆ6 7
RunFinished
ØØ 
=
ØØ 
true
ØØ 
;
ØØ 
if
±± 
(
±± "
m_ConstructDelegator
±± $
!=
±±% '
null
±±( ,
)
±±, -"
m_ConstructDelegator
≤≤ $
.
≤≤$ %.
 DestroyCurrentTestObjectIfExists
≤≤% E
(
≤≤E F
)
≤≤F G
;
≤≤G H
Dispose
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥ %
UnityWorkItemDataHolder
¥¥ #
.
¥¥# $"
alreadyExecutedTests
¥¥$ 8
=
¥¥9 :
null
¥¥; ?
;
¥¥? @
}
µµ 	
private
∑∑ 
void
∑∑ 
OnRestoringTest
∑∑ $
(
∑∑$ %
)
∑∑% &
{
∏∏ 	
var
ππ 
item
ππ 
=
ππ 
m_ExecutedTests
ππ &
.
ππ& '
Find
ππ' +
(
ππ+ ,
t
ππ, -
=>
ππ. 0
t
ππ1 2
.
ππ2 3
fullName
ππ3 ;
==
ππ< >'
UnityTestExecutionContext
ππ? X
.
ππX Y
CurrentContext
ππY g
.
ππg h
CurrentTest
ππh s
.
ππs t
FullName
ππt |
)
ππ| }
;
ππ} ~
if
∫∫ 
(
∫∫ 
item
∫∫ 
!=
∫∫ 
null
∫∫ 
)
∫∫ 
{
ªª 
item
ºº 
.
ºº 
RestoreTestResult
ºº &
(
ºº& ''
UnityTestExecutionContext
ºº' @
.
ºº@ A
CurrentContext
ººA O
.
ººO P
CurrentResult
ººP ]
)
ºº] ^
;
ºº^ _
}
ΩΩ 
}
ææ 	
private
¿¿ 
static
¿¿ 
bool
¿¿ 
IsCancelled
¿¿ '
(
¿¿' (
)
¿¿( )
{
¡¡ 	
return
¬¬ '
UnityTestExecutionContext
¬¬ ,
.
¬¬, -
CurrentContext
¬¬- ;
.
¬¬; <
ExecutionStatus
¬¬< K
==
¬¬L N!
TestExecutionStatus
¬¬O b
.
¬¬b c
AbortRequested
¬¬c q
||
¬¬r t(
UnityTestExecutionContext¬¬u é
.¬¬é è
CurrentContext¬¬è ù
.¬¬ù û
ExecutionStatus¬¬û ≠
==¬¬Æ ∞#
TestExecutionStatus¬¬± ƒ
.¬¬ƒ ≈
StopRequested¬¬≈ “
;¬¬“ ”
}
√√ 	
private
≈≈ 
void
≈≈ 
InvokeDelegator
≈≈ $
(
≈≈$ %
)
≈≈% &
{
∆∆ 	
if
«« 
(
«« "
m_CurrentYieldObject
«« $
==
««% '
null
««( ,
)
««, -
{
»» 
return
…… 
;
…… 
}
   
if
ÃÃ 
(
ÃÃ 
IsCancelled
ÃÃ 
(
ÃÃ 
)
ÃÃ 
)
ÃÃ 
{
ÕÕ 
return
ŒŒ 
;
ŒŒ 
}
œœ 
if
—— 
(
—— "
m_CurrentYieldObject
—— $
is
——% '1
#RestoreTestContextAfterDomainReload
——( K
)
——K L
{
““ 
if
”” 
(
”” )
m_TestRunnerStateSerializer
”” /
.
””/ 0
ShouldRestore
””0 =
(
””= >
)
””> ?
)
””? @
{
‘‘ )
m_TestRunnerStateSerializer
’’ /
.
’’/ 0
RestoreContext
’’0 >
(
’’> ?
)
’’? @
;
’’@ A
}
÷÷ 
return
ÿÿ 
;
ÿÿ 
}
ŸŸ 
try
€€ 
{
‹‹ 
if
›› 
(
›› "
m_CurrentYieldObject
›› (
is
››) ++
IEditModeTestYieldInstruction
››, I
)
››I J
{
ﬁﬁ 
var
ﬂﬂ *
editModeTestYieldInstruction
ﬂﬂ 4
=
ﬂﬂ5 6
(
ﬂﬂ7 8+
IEditModeTestYieldInstruction
ﬂﬂ8 U
)
ﬂﬂU V"
m_CurrentYieldObject
ﬂﬂV j
;
ﬂﬂj k
if
‡‡ 
(
‡‡ *
editModeTestYieldInstruction
‡‡ 4
.
‡‡4 5 
ExpectDomainReload
‡‡5 G
)
‡‡G H
{
·· $
PrepareForDomainReload
‚‚ .
(
‚‚. /
)
‚‚/ 0
;
‚‚0 1
}
„„ 
return
‰‰ 
;
‰‰ 
}
ÂÂ 
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ 
	Exception
ÁÁ 
e
ÁÁ 
)
ÁÁ 
{
ËË '
UnityTestExecutionContext
ÈÈ )
.
ÈÈ) *
CurrentContext
ÈÈ* 8
.
ÈÈ8 9
CurrentResult
ÈÈ9 F
.
ÈÈF G
RecordException
ÈÈG V
(
ÈÈV W
e
ÈÈW X
)
ÈÈX Y
;
ÈÈY Z
return
ÍÍ 
;
ÍÍ 
}
ÎÎ 
Debug
ÌÌ 
.
ÌÌ 
LogError
ÌÌ 
(
ÌÌ 
$str
ÌÌ >
)
ÌÌ> ?
;
ÌÌ? @
}
ÓÓ 	
private
 
void
 %
CompilationFailureWatch
 ,
(
, -
)
- .
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
EditorApplication
ÚÚ !
.
ÚÚ! "
isCompiling
ÚÚ" -
)
ÚÚ- .
return
ÛÛ 
;
ÛÛ 
EditorApplication
ıı 
.
ıı 
update
ıı $
-=
ıı% '%
CompilationFailureWatch
ıı( ?
;
ıı? @
if
˜˜ 
(
˜˜ 
EditorUtility
˜˜ 
.
˜˜ %
scriptCompilationFailed
˜˜ 5
)
˜˜5 6
{
¯¯ 
EditorUtility
˘˘ 
.
˘˘ 
ClearProgressBar
˘˘ .
(
˘˘. /
)
˘˘/ 0
;
˘˘0 1
OnRunCancel
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ $
PrepareForDomainReload
˛˛ +
(
˛˛+ ,
)
˛˛, -
{
ˇˇ 	)
m_TestRunnerStateSerializer
ÄÄ '
.
ÄÄ' (
SaveContext
ÄÄ( 3
(
ÄÄ3 4
)
ÄÄ4 5
;
ÄÄ5 6
m_CurrentPC
ÅÅ 
=
ÅÅ "
EnumeratorStepHelper
ÅÅ .
.
ÅÅ. /
GetEnumeratorPC
ÅÅ/ >
(
ÅÅ> ?
TestEnumerator
ÅÅ? M
.
ÅÅM N

Enumerator
ÅÅN X
)
ÅÅX Y
;
ÅÅY Z
m_ExecuteOnEnable
ÇÇ 
=
ÇÇ 
true
ÇÇ  $
;
ÇÇ$ %
RunningTests
ÑÑ 
=
ÑÑ 
false
ÑÑ  
;
ÑÑ  !
}
ÖÖ 	
public
áá 
T
áá 
AddEventHandler
áá  
<
áá  !
T
áá! "
>
áá" #
(
áá# $
)
áá$ %
where
áá& +
T
áá, -
:
áá. /
ScriptableObject
áá0 @
,
áá@ A!
ITestRunnerListener
ááB U
{
àà 	
var
ââ 
eventHandler
ââ 
=
ââ 
CreateInstance
ââ -
<
ââ- .
T
ââ. /
>
ââ/ 0
(
ââ0 1
)
ââ1 2
;
ââ2 3
eventHandler
ää 
.
ää 
	hideFlags
ää "
|=
ää# %
	HideFlags
ää& /
.
ää/ 0
DontSave
ää0 8
;
ää8 9
m_CallbackObjects
ãã 
.
ãã 
Add
ãã !
(
ãã! "
eventHandler
ãã" .
)
ãã. /
;
ãã/ 0
AddListeners
çç 
(
çç 
eventHandler
çç %
)
çç% &
;
çç& '
return
èè 
eventHandler
èè 
;
èè  
}
êê 	
private
íí 
void
íí 
AddListeners
íí !
(
íí! "!
ITestRunnerListener
íí" 5
eventHandler
íí6 B
)
ííB C
{
ìì 	 
m_TestStartedEvent
îî 
.
îî 
AddListener
îî *
(
îî* +
eventHandler
îî+ 7
.
îî7 8
TestStarted
îî8 C
)
îîC D
;
îîD E!
m_TestFinishedEvent
ïï 
.
ïï  
AddListener
ïï  +
(
ïï+ ,
eventHandler
ïï, 8
.
ïï8 9
TestFinished
ïï9 E
)
ïïE F
;
ïïF G
m_RunStartedEvent
ññ 
.
ññ 
AddListener
ññ )
(
ññ) *
eventHandler
ññ* 6
.
ññ6 7

RunStarted
ññ7 A
)
ññA B
;
ññB C 
m_RunFinishedEvent
óó 
.
óó 
AddListener
óó *
(
óó* +
eventHandler
óó+ 7
.
óó7 8
RunFinished
óó8 C
)
óóC D
;
óóD E
}
òò 	
public
öö 
void
öö 
Dispose
öö 
(
öö 
)
öö 
{
õõ 	
Reflect
úú 
.
úú 
MethodCallWrapper
úú %
=
úú& '
null
úú( ,
;
úú, -
EditorApplication
ùù 
.
ùù 
update
ùù $
-=
ùù% '
TestConsumer
ùù( 4
;
ùù4 5
DestroyImmediate
üü 
(
üü 
this
üü !
)
üü! "
;
üü" #
if
°° 
(
°° 
m_CallbackObjects
°° !
!=
°°" $
null
°°% )
)
°°) *
{
¢¢ 
foreach
££ 
(
££ 
var
££ 
obj
££  
in
££! #
m_CallbackObjects
££$ 5
)
££5 6
{
§§ 
DestroyImmediate
•• $
(
••$ %
obj
••% (
)
••( )
;
••) *
}
¶¶ 
m_CallbackObjects
ßß !
.
ßß! "
Clear
ßß" '
(
ßß' (
)
ßß( )
;
ßß) *
}
®® 
RunningTests
©© 
=
©© 
false
©©  
;
©©  !
EditorApplication
™™ 
.
™™ $
UnlockReloadAssemblies
™™ 4
(
™™4 5
)
™™5 6
;
™™6 7
}
´´ 	
public
≠≠ 
void
≠≠ 
OnRunCancel
≠≠ 
(
≠≠  
)
≠≠  !
{
ÆÆ 	%
UnityWorkItemDataHolder
ØØ #
.
ØØ# $"
alreadyExecutedTests
ØØ$ 8
=
ØØ9 :
null
ØØ; ?
;
ØØ? @
m_ExecuteOnEnable
∞∞ 
=
∞∞ 
false
∞∞  %
;
∞∞% &
m_Runner
±± 
.
±± 
StopRun
±± 
(
±± 
)
±± 
;
±± 
RunFinished
≤≤ 
=
≤≤ 
true
≤≤ 
;
≤≤ 
}
≥≥ 	
public
µµ 
ITest
µµ 
GetLoadedTests
µµ #
(
µµ# $
)
µµ$ %
{
∂∂ 	
return
∑∑ 
m_Runner
∑∑ 
.
∑∑ 

LoadedTest
∑∑ &
;
∑∑& '
}
∏∏ 	
public
∫∫ 
ITestFilter
∫∫ 
	GetFilter
∫∫ $
(
∫∫$ %
)
∫∫% &
{
ªª 	
return
ºº 
new
ºº 
OrFilter
ºº 
(
ºº  
	m_Filters
ºº  )
.
ºº) *
Select
ºº* 0
(
ºº0 1
filter
ºº1 7
=>
ºº8 :
filter
ºº; A
.
ººA B'
ToRuntimeTestRunnerFilter
ººB [
(
ºº[ \"
RunningSynchronously
ºº\ p
)
ººp q
.
ººq r
BuildNUnitFilterººr Ç
(ººÇ É
)ººÉ Ñ
)ººÑ Ö
.ººÖ Ü
ToArrayººÜ ç
(ººç é
)ººé è
)ººè ê
;ººê ë
}
ΩΩ 	
}
ææ 
}øø ÷

∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\RemoteTestResultReciever.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
[		 
Serializable		 
]		 
internal

 
class

 $
RemoteTestResultReciever

 +
{ 
public 
void 

RunStarted 
( 
MessageEventArgs /
messageEventArgs0 @
)@ A
{ 	
} 	
public 
void 
RunFinished 
(  
MessageEventArgs  0
messageEventArgs1 A
)A B
{ 	
EditorConnection 
. 
instance %
.% &
Send& *
(* +&
PlayerConnectionMessageIds+ E
.E F
quitPlayerMessageIdF Y
,Y Z
null[ _
,_ `
messageEventArgsa q
.q r
playerIdr z
)z {
;{ |
EditorConnection 
. 
instance %
.% &
DisconnectAll& 3
(3 4
)4 5
;5 6
} 	
} 
} ™S
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\RuntimeTestLauncherBase.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
abstract 
class #
RuntimeTestLauncherBase 3
:4 5
TestLauncherBase6 F
{ 
	protected 
Scene  
CreateBootstrapScene ,
(, -
string- 3
	sceneName4 =
,= >
Action? E
<E F#
PlaymodeTestsControllerF ]
>] ^
runnerSetup_ j
)j k
{ 	
var 
scene 
= 
EditorSceneManager *
.* +
NewScene+ 3
(3 4
NewSceneSetup4 A
.A B

EmptySceneB L
,L M
NewSceneModeN Z
.Z [
Single[ a
)a b
;b c
var 
go 
= 
new 

GameObject #
(# $#
PlaymodeTestsController$ ;
.; <'
kPlaymodeTestControllerName< W
)W X
;X Y
var ,
 editorLoadedTestAssemblyProvider 0
=1 2
new3 6,
 EditorLoadedTestAssemblyProvider7 W
(W X
newX [+
EditorCompilationInterfaceProxy\ {
({ |
)| }
,} ~
new	 Ç#
EditorAssembliesProxy
É ò
(
ò ô
)
ô ö
)
ö õ
;
õ ú
var 
runner 
= 
go 
. 
AddComponent (
<( )#
PlaymodeTestsController) @
>@ A
(A B
)B C
;C D
runnerSetup 
( 
runner 
) 
;  
runner 
. 
settings 
. 
bootstrapScene *
=+ ,
	sceneName- 6
;6 7
runner 
. 
AssembliesWithTests &
=' (,
 editorLoadedTestAssemblyProvider) I
.I J&
GetAssembliesGroupedByTypeJ d
(d e
TestPlatforme q
.q r
PlayModer z
)z {
.{ |
Select	| Ç
(
Ç É
x
É Ñ
=>
Ö á
x
à â
.
â ä
Assembly
ä í
.
í ì
GetName
ì ö
(
ö õ
)
õ ú
.
ú ù
Name
ù °
)
° ¢
.
¢ £
ToList
£ ©
(
© ™
)
™ ´
;
´ ¨
EditorSceneManager 
. 
MarkSceneDirty -
(- .
scene. 3
)3 4
;4 5
AssetDatabase 
. 

SaveAssets $
($ %
)% &
;& '
EditorSceneManager   
.   
	SaveScene   (
(  ( )
scene  ) .
,  . /
	sceneName  0 9
,  9 :
false  ; @
)  @ A
;  A B
return"" 
scene"" 
;"" 
}## 	
public%% 
string%% 
CreateSceneName%% %
(%%% &
)%%& '
{&& 	
return'' 
$str'' )
+''* +
DateTime'', 4
.''4 5
Now''5 8
.''8 9
Ticks''9 >
+''? @
$str''A I
;''I J
}(( 	
	protected** #
UnityTestAssemblyRunner** )
	LoadTests*** 3
(**3 4
ITestFilter**4 ?
filter**@ F
)**F G
{++ 	
var,, ,
 editorLoadedTestAssemblyProvider,, 0
=,,1 2
new,,3 6,
 EditorLoadedTestAssemblyProvider,,7 W
(,,W X
new,,X [+
EditorCompilationInterfaceProxy,,\ {
(,,{ |
),,| }
,,,} ~
new	,, Ç#
EditorAssembliesProxy
,,É ò
(
,,ò ô
)
,,ô ö
)
,,ö õ
;
,,õ ú
var-- 
assembliesWithTests-- #
=--$ %,
 editorLoadedTestAssemblyProvider--& F
.--F G&
GetAssembliesGroupedByType--G a
(--a b
TestPlatform--b n
.--n o
PlayMode--o w
)--w x
.--x y
Select--y 
(	-- Ä
x
--Ä Å
=>
--Ç Ñ
x
--Ö Ü
.
--Ü á
Assembly
--á è
.
--è ê
GetName
--ê ó
(
--ó ò
)
--ò ô
.
--ô ö
Name
--ö û
)
--û ü
.
--ü †
ToList
--† ¶
(
--¶ ß
)
--ß ®
;
--® ©
var// #
nUnitTestAssemblyRunner// '
=//( )
new//* -#
UnityTestAssemblyRunner//. E
(//E F
new//F I$
UnityTestAssemblyBuilder//J b
(//b c
)//c d
,//d e
null//f j
)//j k
;//k l
var00 
assemblyProvider00  
=00! "
new00# &&
PlayerTestAssemblyProvider00' A
(00A B
new00B E
AssemblyLoadProxy00F W
(00W X
)00X Y
,00Y Z
assembliesWithTests00[ n
)00n o
;00o p#
nUnitTestAssemblyRunner11 #
.11# $
Load11$ (
(11( )
assemblyProvider11) 9
.119 :
GetUserAssemblies11: K
(11K L
)11L M
.11M N
Select11N T
(11T U
a11U V
=>11W Y
a11Z [
.11[ \
Assembly11\ d
)11d e
.11e f
ToArray11f m
(11m n
)11n o
,11o p
TestPlatform11q }
.11} ~
PlayMode	11~ Ü
,
11Ü á&
UnityTestAssemblyBuilder
11à †
.
11† °)
GetNUnitTestBuilderSettings
11° º
(
11º Ω
TestPlatform
11Ω …
.
11…  
PlayMode
11  “
)
11“ ”
)
11” ‘
;
11‘ ’
return22 #
nUnitTestAssemblyRunner22 *
;22* +
}33 	
	protected55 
static55 
void55 
ReopenOriginalScene55 1
(551 2
string552 8
originalSceneName559 J
)55J K
{66 	
EditorSceneManager77 
.77 
NewScene77 '
(77' (
NewSceneSetup77( 5
.775 6
DefaultGameObjects776 H
)77H I
;77I J
if88 
(88 
!88 
string88 
.88 
IsNullOrEmpty88 %
(88% &
originalSceneName88& 7
)887 8
)888 9
{99 
EditorSceneManager:: "
.::" #
	OpenScene::# ,
(::, -
originalSceneName::- >
)::> ?
;::? @
};; 
}<< 	
}== 
internal?? 
static?? 
class?? -
!PlaymodeTestsControllerExtensions?? ;
{@@ 
internalAA 
staticAA 
TAA (
AddEventHandlerMonoBehaviourAA 6
<AA6 7
TAA7 8
>AA8 9
(AA9 :
thisAA: >#
PlaymodeTestsControllerAA? V

controllerAAW a
)AAa b
whereAAc h
TAAi j
:AAk l
MonoBehaviourAAm z
,AAz { 
ITestRunnerListener	AA| è
{BB 	
varCC 
eventHandlerCC 
=CC 

controllerCC )
.CC) *

gameObjectCC* 4
.CC4 5
AddComponentCC5 A
<CCA B
TCCB C
>CCC D
(CCD E
)CCE F
;CCF G
SetListenersDD 
(DD 

controllerDD #
,DD# $
eventHandlerDD% 1
)DD1 2
;DD2 3
returnEE 
eventHandlerEE 
;EE  
}FF 	
internalHH 
staticHH 
THH +
AddEventHandlerScriptableObjectHH 9
<HH9 :
THH: ;
>HH; <
(HH< =
thisHH= A#
PlaymodeTestsControllerHHB Y

controllerHHZ d
)HHd e
whereHHf k
THHl m
:HHn o
ScriptableObject	HHp Ä
,
HHÄ Å!
ITestRunnerListener
HHÇ ï
{II 	
varJJ 
eventListenerJJ 
=JJ 
ScriptableObjectJJ  0
.JJ0 1
CreateInstanceJJ1 ?
<JJ? @
TJJ@ A
>JJA B
(JJB C
)JJC D
;JJD E+
AddEventHandlerScriptableObjectKK +
(KK+ ,

controllerKK, 6
,KK6 7
eventListenerKK8 E
)KKE F
;KKF G
returnLL 
eventListenerLL  
;LL  !
}MM 	
internalOO 
staticOO 
voidOO +
AddEventHandlerScriptableObjectOO <
(OO< =
thisOO= A#
PlaymodeTestsControllerOOB Y

controllerOOZ d
,OOd e
ITestRunnerListenerOOf y
objOOz }
)OO} ~
{PP 	
SetListenersQQ 
(QQ 

controllerQQ #
,QQ# $
objQQ% (
)QQ( )
;QQ) *
}RR 	
privateTT 
staticTT 
voidTT 
SetListenersTT (
(TT( )#
PlaymodeTestsControllerTT) @

controllerTTA K
,TTK L
ITestRunnerListenerTTM `
eventHandlerTTa m
)TTm n
{UU 	
UnityEventToolsVV 
.VV !
AddPersistentListenerVV 1
(VV1 2

controllerVV2 <
.VV< =
testStartedEventVV= M
,VVM N
eventHandlerVVO [
.VV[ \
TestStartedVV\ g
)VVg h
;VVh i
UnityEventToolsWW 
.WW !
AddPersistentListenerWW 1
(WW1 2

controllerWW2 <
.WW< =
testFinishedEventWW= N
,WWN O
eventHandlerWWP \
.WW\ ]
TestFinishedWW] i
)WWi j
;WWj k
UnityEventToolsXX 
.XX !
AddPersistentListenerXX 1
(XX1 2

controllerXX2 <
.XX< =
runStartedEventXX= L
,XXL M
eventHandlerXXN Z
.XXZ [

RunStartedXX[ e
)XXe f
;XXf g
UnityEventToolsYY 
.YY !
AddPersistentListenerYY 1
(YY1 2

controllerYY2 <
.YY< =
runFinishedEventYY= M
,YYM N
eventHandlerYYO [
.YY[ \
RunFinishedYY\ g
)YYg h
;YYh i
}ZZ 	
}[[ 
}\\ µ
¬D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\WindowResultUpdaterDataHolder.cs
	namespace 	

TestRunner
 
. 
	Callbacks 
{ 
internal 
class )
WindowResultUpdaterDataHolder 0
:1 2
ScriptableSingleton3 F
<F G)
WindowResultUpdaterDataHolderG d
>d e
{ 
public		 
List		 
<		 
TestRunnerResult		 $
>		$ %
CachedResults		& 3
=		4 5
new		6 9
List		: >
<		> ?
TestRunnerResult		? O
>		O P
(		P Q
)		Q R
;		R S
}

 
} •
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\Message.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
[ 
Serializable 
] 
internal 
abstract 
class 
Message #
{ 
public		 
string		 
type		 
;		 
public 
ulong 
time 
; 
public 
int 
version 
; 
public 
string 
phase 
; 
public 
int 
	processId 
; 
	protected 
Message 
( 
) 
{ 	
version 
= 
$num 
; 
phase 
= 
$str 
;  
	processId 
= 
Process 
.  
GetCurrentProcess  1
(1 2
)2 3
.3 4
Id4 6
;6 7
AddTimeStamp 
( 
) 
; 
} 	
public 
void 
AddTimeStamp  
(  !
)! "
{ 	
time 
= 
Convert 
. 
ToUInt64 #
(# $
($ %
DateTime% -
.- .
UtcNow. 4
-5 6
new7 :
DateTime; C
(C D
$numD H
,H I
$numJ K
,K L
$numM N
)N O
)O P
.P Q
TotalMillisecondsQ b
)b c
;c d
} 	
} 
} ·
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\RerunCallbackData.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
RerunCallbackData $
:% &
ScriptableSingleton' :
<: ;
RerunCallbackData; L
>L M
{ 
[		 	
SerializeField			 
]		 
internal

 
UITestRunnerFilter

 #
[

# $
]

$ %

runFilters

& 0
;

0 1
[ 	
SerializeField	 
] 
internal 
TestMode 
testMode "
;" #
} 
} ‘H
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\RemotePlayerTestController.cs
	namespace

 	
UnityEditor
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
  !
TestLaunchers

! .
{ 
[ 
Serializable 
] 
internal 
class #
RemoteTestRunController *
:+ ,
ScriptableSingleton- @
<@ A#
RemoteTestRunControllerA X
>X Y
{ 
internal 
const 
int 
k_HeartbeatTimeout -
=. /
$num0 2
*3 4
$num5 7
;7 8
[ 	
SerializeField	 
] 
private $
RemoteTestResultReciever (&
m_RemoteTestResultReciever) C
;C D
[ 	
SerializeField	 
] 
private !
PlatformSpecificSetup %#
m_PlatformSpecificSetup& =
;= >
[ 	
SerializeField	 
] 
private 
bool +
m_RegisteredConnectionCallbacks 4
;4 5
[ 	
SerializeField	 
] 
private 
int 
m_HearbeatTimeOut %
;% &
private 
UnityEditor 
. 
	TestTools %
.% &

TestRunner& 0
.0 1
DelayedCallback1 @
m_TimeoutCallbackA R
;R S
public 
void 
Init 
( 
BuildTarget $
buildTarget% 0
,0 1
int2 5
heartbeatTimeout6 F
)F G
{   	
m_HearbeatTimeOut!! 
=!! 
heartbeatTimeout!!  0
;!!0 1#
m_PlatformSpecificSetup"" #
=""$ %
new""& )!
PlatformSpecificSetup""* ?
(""? @
buildTarget""@ K
)""K L
;""L M#
m_PlatformSpecificSetup## #
.### $
Setup##$ )
(##) *
)##* +
;##+ ,&
m_RemoteTestResultReciever$$ &
=$$' (
new$$) ,$
RemoteTestResultReciever$$- E
($$E F
)$$F G
;$$G H
EditorConnection%% 
.%% 
instance%% %
.%%% &

Initialize%%& 0
(%%0 1
)%%1 2
;%%2 3
if&& 
(&& 
!&& +
m_RegisteredConnectionCallbacks&& 0
)&&0 1
{'' 
EditorConnection((  
.((  !
instance((! )
.(() *

Initialize((* 4
(((4 5
)((5 6
;((6 7*
DelegateEditorConnectionEvents)) .
()). /
)))/ 0
;))0 1
}** 
}++ 	
private-- 
void-- *
DelegateEditorConnectionEvents-- 3
(--3 4
)--4 5
{.. 	+
m_RegisteredConnectionCallbacks// +
=//, -
true//. 2
;//2 3
EditorConnection11 
.11 
instance11 %
.11% &
Register11& .
(11. /&
PlayerConnectionMessageIds11/ I
.11I J
runStartedMessageId11J ]
,11] ^

RunStarted11_ i
)11i j
;11j k
EditorConnection22 
.22 
instance22 %
.22% &
Register22& .
(22. /&
PlayerConnectionMessageIds22/ I
.22I J 
runFinishedMessageId22J ^
,22^ _
RunFinished22` k
)22k l
;22l m
EditorConnection33 
.33 
instance33 %
.33% &
Register33& .
(33. /&
PlayerConnectionMessageIds33/ I
.33I J 
testStartedMessageId33J ^
,33^ _
TestStarted33` k
)33k l
;33l m
EditorConnection44 
.44 
instance44 %
.44% &
Register44& .
(44. /&
PlayerConnectionMessageIds44/ I
.44I J!
testFinishedMessageId44J _
,44_ `
TestFinished44a m
)44m n
;44n o
EditorConnection55 
.55 
instance55 %
.55% &
Register55& .
(55. /&
PlayerConnectionMessageIds55/ I
.55I J 
playerAliveHeartbeat55J ^
,55^ _ 
PlayerAliveHeartbeat55` t
)55t u
;55u v
}66 	
private88 
void88 

RunStarted88 
(88  
MessageEventArgs88  0
messageEventArgs881 A
)88A B
{99 	
m_TimeoutCallback:: 
?:: 
.:: 
Reset:: $
(::$ %
)::% &
;::& '&
m_RemoteTestResultReciever;; &
.;;& '

RunStarted;;' 1
(;;1 2
messageEventArgs;;2 B
);;B C
;;;C D
CallbacksDelegator<< 
.<< 
instance<< '
.<<' (
RunStartedRemotely<<( :
(<<: ;
messageEventArgs<<; K
.<<K L
data<<L P
)<<P Q
;<<Q R
}== 	
private?? 
void?? 
RunFinished??  
(??  !
MessageEventArgs??! 1
messageEventArgs??2 B
)??B C
{@@ 	
m_TimeoutCallbackAA 
?AA 
.AA 
ClearAA $
(AA$ %
)AA% &
;AA& '&
m_RemoteTestResultRecieverBB &
.BB& '
RunFinishedBB' 2
(BB2 3
messageEventArgsBB3 C
)BBC D
;BBD E#
m_PlatformSpecificSetupCC #
.CC# $
CleanUpCC$ +
(CC+ ,
)CC, -
;CC- .
CallbacksDelegatorEE 
.EE 
instanceEE '
.EE' (
RunFinishedRemotelyEE( ;
(EE; <
messageEventArgsEE< L
.EEL M
dataEEM Q
)EEQ R
;EER S
}FF 	
privateHH 
voidHH 
TestStartedHH  
(HH  !
MessageEventArgsHH! 1
messageEventArgsHH2 B
)HHB C
{II 	
m_TimeoutCallbackJJ 
?JJ 
.JJ 
ResetJJ $
(JJ$ %
)JJ% &
;JJ& '
CallbacksDelegatorKK 
.KK 
instanceKK '
.KK' (
TestStartedRemotelyKK( ;
(KK; <
messageEventArgsKK< L
.KKL M
dataKKM Q
)KKQ R
;KKR S
}LL 	
privateNN 
voidNN 
TestFinishedNN !
(NN! "
MessageEventArgsNN" 2
messageEventArgsNN3 C
)NNC D
{OO 	
m_TimeoutCallbackPP 
?PP 
.PP 
ResetPP $
(PP$ %
)PP% &
;PP& '
CallbacksDelegatorQQ 
.QQ 
instanceQQ '
.QQ' ( 
TestFinishedRemotelyQQ( <
(QQ< =
messageEventArgsQQ= M
.QQM N
dataQQN R
)QQR S
;QQS T
}RR 	
privateTT 
voidTT  
PlayerAliveHeartbeatTT )
(TT) *
MessageEventArgsTT* :
messageEventArgsTT; K
)TTK L
{UU 	
m_TimeoutCallbackVV 
?VV 
.VV 
ResetVV $
(VV$ %
)VV% &
;VV& '
}WW 	
privateYY 
voidYY 
TimeoutCallbackYY $
(YY$ %
)YY% &
{ZZ 	
CallbacksDelegator[[ 
.[[ 
instance[[ '
.[[' (
	RunFailed[[( 1
([[1 2
$"[[2 4N
BTest execution timed out. No activity received from the player in [[4 v
{[[v w
m_HearbeatTimeOut	[[w à
}
[[à â
	 seconds.
[[â í
"
[[í ì
)
[[ì î
;
[[î ï
}\\ 	
public^^ 
void^^ 
PostBuildAction^^ #
(^^# $
)^^$ %
{__ 	#
m_PlatformSpecificSetup`` #
.``# $
PostBuildAction``$ 3
(``3 4
)``4 5
;``5 6
}aa 	
publiccc 
voidcc %
PostSuccessfulBuildActioncc -
(cc- .
)cc. /
{dd 	#
m_PlatformSpecificSetupee #
.ee# $%
PostSuccessfulBuildActionee$ =
(ee= >
)ee> ?
;ee? @
m_TimeoutCallbackff 
=ff 
newff  #
UnityEditorff$ /
.ff/ 0
	TestToolsff0 9
.ff9 :

TestRunnerff: D
.ffD E
DelayedCallbackffE T
(ffT U
TimeoutCallbackffU d
,ffd e
m_HearbeatTimeOutfff w
)ffw x
;ffx y
}gg 	
publicii 
voidii &
PostSuccessfulLaunchActionii .
(ii. /
)ii/ 0
{jj 	#
m_PlatformSpecificSetupkk #
.kk# $&
PostSuccessfulLaunchActionkk$ >
(kk> ?
)kk? @
;kk@ A
}ll 	
publicnn 
voidnn 
CleanUpnn 
(nn 
)nn 
{oo 	#
m_PlatformSpecificSetuppp #
.pp# $
CleanUppp$ +
(pp+ ,
)pp, -
;pp- .
}qq 	
}rr 
}ss ñ
øD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\SwitchPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
SwitchPlatformSetup &
:' (
IPlatformSetup) 7
{ 
public 
void 
Setup 
( 
) 
{ 	#
EditorUserBuildSettings #
.# $
switchCreateRomFile$ 7
=8 9
true: >
;> ?#
EditorUserBuildSettings #
.# $%
switchNVNGraphicsDebugger$ =
=> ?
false@ E
;E F#
EditorUserBuildSettings

 #
.

# $)
switchNVNDrawValidation_Heavy

$ A
=

B C
true

D H
;

H I#
EditorUserBuildSettings #
.# $
development$ /
=0 1
true2 6
;6 7#
EditorUserBuildSettings #
.# $+
switchRedirectWritesToHostMount$ C
=D E
trueF J
;J K
} 	
public 
void 
PostBuildAction #
(# $
)$ %
{ 	
} 	
public 
void %
PostSuccessfulBuildAction -
(- .
). /
{ 	
} 	
public!! 
void!! &
PostSuccessfulLaunchAction!! .
(!!. /
)!!/ 0
{"" 	
}## 	
public%% 
void%% 
CleanUp%% 
(%% 
)%% 
{&& 	
}'' 	
}(( 
})) º!
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\NUnitExtension\Attributes\AssetPipelineIgnore.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
{ 
internal 
static 
class 
AssetPipelineIgnore -
{ 
internal 
enum  
AssetPipelineBackend *
{ 	
V1 
, 
V2 
} 	
internal 
class 

IgnoreInV1 !
:" #(
AssetPipelineIgnoreAttribute$ @
{ 	
public 

IgnoreInV1 
( 
string $
ignoreReason% 1
)1 2
:3 4
base5 9
(9 : 
AssetPipelineBackend: N
.N O
V1O Q
,Q R
ignoreReasonS _
)_ `
{a b
}b c
} 	
internal 
class 

IgnoreInV2 !
:" #(
AssetPipelineIgnoreAttribute$ @
{ 	
public   

IgnoreInV2   
(   
string   $
ignoreReason  % 1
)  1 2
:  3 4
base  5 9
(  9 : 
AssetPipelineBackend  : N
.  N O
V2  O Q
,  Q R
ignoreReason  S _
)  _ `
{  a b
}  b c
}!! 	
[## 	
AttributeUsage##	 
(## 
AttributeTargets## (
.##( )
Assembly##) 1
|##2 3
AttributeTargets##4 D
.##D E
Class##E J
|##K L
AttributeTargets##M ]
.##] ^
Method##^ d
)##d e
]##e f
internal$$ 
class$$ (
AssetPipelineIgnoreAttribute$$ 3
:$$4 5
NUnitAttribute$$6 D
,$$D E
IApplyToTest$$F R
{%% 	
readonly&& 
string&& 
m_IgnoreReason&& *
;&&* +
readonly''  
AssetPipelineBackend'' )
m_IgnoredBackend''* :
;'': ;
static(( 
readonly((  
AssetPipelineBackend(( 0
k_ActiveBackend((1 @
=((A B
AssetDatabase((C P
.((P Q
IsV2Enabled((Q \
(((\ ]
)((] ^
?))  
AssetPipelineBackend)) &
.))& '
V2))' )
:**  
AssetPipelineBackend** &
.**& '
V1**' )
;**) *
static,, 
string,, 
ActiveBackendName,, +
=,,, -
Enum,,. 2
.,,2 3
GetName,,3 :
(,,: ;
typeof,,; A
(,,A B 
AssetPipelineBackend,,B V
),,V W
,,,W X
k_ActiveBackend,,Y h
),,h i
;,,i j
public.. (
AssetPipelineIgnoreAttribute.. /
(../ 0 
AssetPipelineBackend..0 D
backend..E L
,..L M
string..N T
ignoreReason..U a
)..a b
{// 
m_IgnoredBackend00  
=00! "
backend00# *
;00* +
m_IgnoreReason11 
=11  
ignoreReason11! -
;11- .
}22 
public44 
void44 
ApplyToTest44 #
(44# $
Test44$ (
test44) -
)44- .
{55 
if66 
(66 
k_ActiveBackend66 #
==66$ &
m_IgnoredBackend66' 7
)667 8
{77 
test88 
.88 
RunState88 !
=88" #
RunState88$ ,
.88, -
Ignored88- 4
;884 5
var99 

skipReason99 "
=99# $
string99% +
.99+ ,
Format99, 2
(992 3
$str993 d
,99d e
ActiveBackendName99f w
,99w x
m_IgnoreReason	99y á
)
99á à
;
99à â
test:: 
.:: 

Properties:: #
.::# $
Add::$ '
(::' (
PropertyNames::( 5
.::5 6

SkipReason::6 @
,::@ A

skipReason::B L
)::L M
;::M N
};; 
}<< 
}== 	
}>> 
}?? é
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PostbuildCleanupAttributeFinder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class +
PostbuildCleanupAttributeFinder 2
:3 4
AttributeFinderBase5 H
<H I
IPostBuildCleanupI Z
,Z [%
PostBuildCleanupAttribute\ u
>u v
{ 
public +
PostbuildCleanupAttributeFinder .
(. /
)/ 0
:1 2
base3 7
(7 8
	attribute8 A
=>B D
	attributeE N
.N O
TargetClassO Z
)Z [
{\ ]
}] ^
} 
}		 Ü¥
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\Views\PlayModeTestListGUI.cs
	namespace		 	
UnityEditor		
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
class 
PlayModeTestListGUI &
:' (
TestListGUI) 4
{ 
private 
struct 
PlayerMenuItem %
{ 	
public 

GUIContent 
name "
;" #
public 
bool #
filterSelectedTestsOnly /
;/ 0
public 
bool 
	buildOnly !
;! "
} 	
[ 	
SerializeField	 
] 
private 
int 
m_SelectedOption $
;$ %
public 
override 
TestMode  
TestMode! )
{ 	
get 
{ 
return 
TestMode !
.! "
PlayMode" *
;* +
}, -
} 	
private 
string 
GetBuildText #
(# $
)$ %
{ 	
switch 
( #
EditorUserBuildSettings +
.+ ,
activeBuildTarget, =
)= >
{   
case!! 
BuildTarget!!  
.!!  !
Android!!! (
:!!( )
if"" 
("" #
EditorUserBuildSettings"" /
.""/ 0(
exportAsGoogleAndroidProject""0 L
)""L M
return## 
$str## '
;##' (
break$$ 
;$$ 
case%% 
BuildTarget%%  
.%%  !
iOS%%! $
:%%$ %
return&& 
$str&& #
;&&# $
}'' 
return(( 
$str(( 
;(( 
})) 	
private++ 
string++ 
PickBuildLocation++ (
(++( )
)++) *
{,, 	
var-- 
target-- 
=-- #
EditorUserBuildSettings-- 0
.--0 1
activeBuildTarget--1 B
;--B C
var.. 
targetGroup.. 
=.. 
BuildPipeline.. +
...+ ,
GetBuildTargetGroup.., ?
(..? @
target..@ F
)..F G
;..G H
var// 
lastLocation// 
=// #
EditorUserBuildSettings// 6
.//6 7
GetBuildLocation//7 G
(//G H
target//H N
)//N O
;//O P
var00 
	extension00 
=00 "
PostprocessBuildPlayer00 2
.002 3&
GetExtensionForBuildTarget003 M
(00M N
targetGroup00N Y
,00Y Z
target00[ a
,00a b
BuildOptions00c o
.00o p
None00p t
)00t u
;00u v
var11 
defaultName11 
=11 
FileUtil11 &
.11& '$
GetLastPathNameComponent11' ?
(11? @
lastLocation11@ L
)11L M
;11M N
lastLocation22 
=22 
string22 !
.22! "
IsNullOrEmpty22" /
(22/ 0
lastLocation220 <
)22< =
?22> ?
string22@ F
.22F G
Empty22G L
:22M N
Path22O S
.22S T
GetDirectoryName22T d
(22d e
lastLocation22e q
)22q r
;22r s
bool33 
updateExistingBuild33 $
;33$ %
var44 
location44 
=44 
EditorUtility44 (
.44( )
SaveBuildPanel44) 7
(447 8
target448 >
,44> ?
$"44@ B
{44B C
GetBuildText44C O
(44O P
)44P Q
}44Q R
{44S T
target44T Z
}44Z [
"44[ \
,44\ ]
lastLocation44^ j
,44j k
defaultName44l w
,44w x
	extension	44y Ç
,
44Ç É
out55 
updateExistingBuild55 '
)55' (
;55( )
if66 
(66 
!66 
string66 
.66 
IsNullOrEmpty66 %
(66% &
location66& .
)66. /
)66/ 0#
EditorUserBuildSettings77 '
.77' (
SetBuildLocation77( 8
(778 9
target779 ?
,77? @
location77A I
)77I J
;77J K
return88 
location88 
;88 
}99 	
private;; 
void;; 
ExecuteAction;; "
(;;" #
PlayerMenuItem;;# 1
item;;2 6
);;6 7
{<< 	
var== 
runSettings== 
=== 
new== !)
PlayerLauncherTestRunSettings==" ?
(==? @
)==@ A
;==A B
runSettings>> 
.>> 
	buildOnly>> !
=>>" #
item>>$ (
.>>( )
	buildOnly>>) 2
;>>2 3
if?? 
(?? 
runSettings?? 
.?? 
	buildOnly?? %
)??% &
{@@ 
runSettingsAA 
.AA !
buildOnlyLocationPathAA 1
=AA2 3
PickBuildLocationAA4 E
(AAE F
)AAF G
;AAG H
ifBB 
(BB 
stringBB 
.BB 
IsNullOrEmptyBB (
(BB( )
runSettingsBB) 4
.BB4 5!
buildOnlyLocationPathBB5 J
)BBJ K
)BBK L
{CC 
DebugDD 
.DD 

LogWarningDD $
(DD$ %
$strDD% N
)DDN O
;DDO P
returnEE 
;EE 
}FF 
}GG 
ifII 
(II 
itemII 
.II #
filterSelectedTestsOnlyII ,
)II, -
RunTestsInPlayerJJ  
(JJ  !
runSettingsJJ! ,
,JJ, -
SelectedTestsFilterJJ. A
)JJA B
;JJB C
elseKK 
{LL 
varMM 
filterMM 
=MM 
newMM  
UITestRunnerFilterMM! 3
{MM4 5
categoryNamesMM6 C
=MMD E 
m_TestRunnerUIFilterMMF Z
.MMZ [
CategoryFilterMM[ i
}MMj k
;MMk l
RunTestsInPlayerNN  
(NN  !
runSettingsNN! ,
,NN, -
filterNN. 4
)NN4 5
;NN5 6
}OO 
}PP 	
publicRR 
overrideRR 
voidRR 
PrintHeadPanelRR +
(RR+ ,
)RR, -
{SS 	
EditorGUILayoutTT 
.TT 
BeginHorizontalTT +
(TT+ ,
	GUILayoutTT, 5
.TT5 6
ExpandHeightTT6 B
(TTB C
falseTTC H
)TTH I
)TTI J
;TTJ K
baseUU 
.UU 
PrintHeadPanelUU 
(UU  
)UU  !
;UU! "
PlayerMenuItemWW 
[WW 
]WW 
	menuItemsWW &
;WW& '
ifYY 
(YY #
EditorUserBuildSettingsYY '
.YY' ( 
installInBuildFolderYY( <
)YY< =
{ZZ 
	menuItems[[ 
=[[ 
new[[ 
[[[  !
][[! "
{\\ 
new__ 
PlayerMenuItem__ &
(__& '
)__' (
{`` 
nameaa 
=aa 
newaa "

GUIContentaa# -
(aa- .
$straa. Q
)aaQ R
,aaR S
	buildOnlyaaT ]
=aa^ _
falseaa` e
,aae f#
filterSelectedTestsOnlyaag ~
=	aa Ä
false
aaÅ Ü
}bb 
,bb 
newcc 
PlayerMenuItemcc &
(cc& '
)cc' (
{dd 
nameee 
=ee 
newee "

GUIContentee# -
(ee- .
$stree. V
)eeV W
,eeW X
	buildOnlyeeY b
=eec d
falseeee j
,eej k$
filterSelectedTestsOnly	eel É
=
eeÑ Ö
true
eeÜ ä
}ff 
}gg 
;gg 
}hh 
elseii 
{jj 
	menuItemskk 
=kk 
newkk 
[kk  !
]kk! "
{ll 
newmm 
PlayerMenuItemmm &
(mm& '
)mm' (
{nn 
nameoo 
=oo 
newoo "

GUIContentoo# -
(oo- .
$stroo. =
)oo= >
,oo> ?
	buildOnlyoo@ I
=ooJ K
falseooL Q
,ooQ R#
filterSelectedTestsOnlyooS j
=ook l
falseoom r
}pp 
,pp 
newqq 
PlayerMenuItemqq &
(qq& '
)qq' (
{rr 
namess 
=ss 
newss "

GUIContentss# -
(ss- .
$strss. B
)ssB C
,ssC D
	buildOnlyssE N
=ssO P
falsessQ V
,ssV W#
filterSelectedTestsOnlyssX o
=ssp q
truessr v
}tt 
,tt 
newuu 
PlayerMenuItemuu &
(uu& '
)uu' (
{vv 
nameww 
=ww 
newww "

GUIContentww# -
(ww- .
$"ww. 0
{ww0 1
GetBuildTextww1 =
(ww= >
)ww> ?
}ww? @

 All Testsww@ J
"wwJ K
)wwK L
,wwL M
	buildOnlywwN W
=wwX Y
truewwZ ^
,ww^ _#
filterSelectedTestsOnlyww` w
=wwx y
falsewwz 
}xx 
,xx 
newyy 
PlayerMenuItemyy &
(yy& '
)yy' (
{zz 
name{{ 
={{ 
new{{ "

GUIContent{{# -
({{- .
$"{{. 0
{{{0 1
GetBuildText{{1 =
({{= >
){{> ?
}{{? @
 Selected Tests{{@ O
"{{O P
){{P Q
,{{Q R
	buildOnly{{S \
={{] ^
true{{_ c
,{{c d#
filterSelectedTestsOnly{{e |
={{} ~
true	{{ É
}|| 
,|| 
}}} 
;}} 
}~~ 
m_SelectedOption
ÄÄ 
=
ÄÄ 
Math
ÄÄ #
.
ÄÄ# $
Min
ÄÄ$ '
(
ÄÄ' (
m_SelectedOption
ÄÄ( 8
,
ÄÄ8 9
	menuItems
ÄÄ: C
.
ÄÄC D
Length
ÄÄD J
-
ÄÄK L
$num
ÄÄM N
)
ÄÄN O
;
ÄÄO P
var
ÅÅ 
selectedMenuItem
ÅÅ  
=
ÅÅ! "
	menuItems
ÅÅ# ,
[
ÅÅ, -
m_SelectedOption
ÅÅ- =
]
ÅÅ= >
;
ÅÅ> ?
if
ÇÇ 
(
ÇÇ 
	GUILayout
ÇÇ 
.
ÇÇ 
Button
ÇÇ  
(
ÇÇ  !
new
ÉÉ 

GUIContent
ÉÉ 
(
ÉÉ 
$"
ÉÉ !
{
ÉÉ! "
selectedMenuItem
ÉÉ" 2
.
ÉÉ2 3
name
ÉÉ3 7
.
ÉÉ7 8
text
ÉÉ8 <
}
ÉÉ< =
 (
ÉÉ= ?
{
ÉÉ? @%
EditorUserBuildSettings
ÉÉ@ W
.
ÉÉW X
activeBuildTarget
ÉÉX i
}
ÉÉi j
)
ÉÉj k
"
ÉÉk l
)
ÉÉl m
,
ÉÉm n
EditorStyles
ÑÑ 
.
ÑÑ 
toolbarButton
ÑÑ *
)
ÑÑ* +
)
ÑÑ+ ,
{
ÖÖ 
ExecuteAction
ÜÜ 
(
ÜÜ 
selectedMenuItem
ÜÜ .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 
if
ââ 
(
ââ 
	GUILayout
ââ 
.
ââ 
Button
ââ  
(
ââ  !

GUIContent
ââ! +
.
ââ+ ,
none
ââ, 0
,
ââ0 1
EditorStyles
ââ2 >
.
ââ> ?
toolbarDropDown
ââ? N
)
ââN O
)
ââO P
{
ää 
Vector2
ãã 
mousePos
ãã  
=
ãã! "
Event
ãã# (
.
ãã( )
current
ãã) 0
.
ãã0 1
mousePosition
ãã1 >
;
ãã> ?
EditorUtility
åå 
.
åå 
DisplayCustomMenu
åå /
(
åå/ 0
new
åå0 3
Rect
åå4 8
(
åå8 9
mousePos
åå9 A
.
ååA B
x
ååB C
,
ååC D
mousePos
ååE M
.
ååM N
y
ååN O
,
ååO P
$num
ååQ R
,
ååR S
$num
ååT U
)
ååU V
,
ååV W
	menuItems
çç 
.
çç 
Select
çç $
(
çç$ %
m
çç% &
=>
çç' )
m
çç* +
.
çç+ ,
name
çç, 0
)
çç0 1
.
çç1 2
ToArray
çç2 9
(
çç9 :
)
çç: ;
,
çç; <
-
éé 
$num
éé 
,
éé 
(
èè 
object
èè 
userData
èè $
,
èè$ %
string
èè& ,
[
èè, -
]
èè- .
options
èè/ 6
,
èè6 7
int
èè8 ;
selected
èè< D
)
èèD E
=>
èèF H
m_SelectedOption
èèI Y
=
èèZ [
selected
èè\ d
,
èèd e
	menuItems
êê 
)
êê 
;
êê 
}
ëë 
EditorGUILayout
ìì 
.
ìì 
EndHorizontal
ìì )
(
ìì) *
)
ìì* +
;
ìì+ ,
DrawFilters
îî 
(
îî 
)
îî 
;
îî 
EditorGUILayout
ïï 
.
ïï 
BeginHorizontal
ïï +
(
ïï+ ,
	GUILayout
ïï, 5
.
ïï5 6
ExpandHeight
ïï6 B
(
ïïB C
false
ïïC H
)
ïïH I
)
ïïI J
;
ïïJ K
EditorGUILayout
ññ 
.
ññ 
EndHorizontal
ññ )
(
ññ) *
)
ññ* +
;
ññ+ ,
}
óó 	
public
ôô 
override
ôô 
void
ôô 
RenderNoTestsInfo
ôô .
(
ôô. /
)
ôô/ 0
{
öö 	
if
õõ 
(
õõ 
!
õõ 
TestListGUIHelper
õõ "
.
õõ" #0
"SelectedFolderContainsTestAssembly
õõ# E
(
õõE F
)
õõF G
)
õõG H
{
úú 
var
ùù 

noTestText
ùù 
=
ùù  
$str
ùù! 3
;
ùù3 4
if
ûû 
(
ûû 
!
ûû 
PlayerSettings
ûû #
.
ûû# $'
playModeTestRunnerEnabled
ûû$ =
)
ûû= >
{
üü 
const
†† 
string
††  0
"testsArePulledFromCustomAssemblues
††! C
=
††D E
$str††F ˚
;††˚ ¸
const
°° 
string
°°  /
!infoTextAboutTestsInAllAssemblies
°°! B
=
°°C D
$str
¢¢ j
;
¢¢j k

noTestText
££ 
+=
££ !
Environment
££" -
.
££- .
NewLine
££. 5
+
££6 70
"testsArePulledFromCustomAssemblues
££8 Z
+
££[ \
Environment
££] h
.
££h i
NewLine
££i p
+
££q r/
!infoTextAboutTestsInAllAssemblies
§§ 9
;
§§9 :
}
•• 
EditorGUILayout
ßß 
.
ßß  
HelpBox
ßß  '
(
ßß' (

noTestText
ßß( 2
,
ßß2 3
MessageType
ßß4 ?
.
ßß? @
Info
ßß@ D
)
ßßD E
;
ßßE F
if
®® 
(
®® 
	GUILayout
®® 
.
®® 
Button
®® $
(
®®$ %
$str
®®% K
)
®®K L
)
®®L M
{
©© 
TestListGUIHelper
™™ %
.
™™% &*
AddFolderAndAsmDefForTesting
™™& B
(
™™B C
)
™™C D
;
™™D E
}
´´ 
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
TestListGUIHelper
ÆÆ "
.
ÆÆ" #6
(CanAddPlayModeTestScriptAndItWillCompile
ÆÆ# K
(
ÆÆK L
)
ÆÆL M
)
ÆÆM N
{
ØØ 
UnityEngine
∞∞ 
.
∞∞ 
GUI
∞∞ 
.
∞∞  
enabled
∞∞  '
=
∞∞( )
false
∞∞* /
;
∞∞/ 0
EditorGUILayout
±± 
.
±±  
HelpBox
±±  '
(
±±' (
$str
±±( r
,
±±r s
MessageType
±±t 
.±± Ä
Warning±±Ä á
)±±á à
;±±à â
}
≤≤ 
if
≥≥ 
(
≥≥ 
	GUILayout
≥≥ 
.
≥≥ 
Button
≥≥  
(
≥≥  !
$str
≥≥! G
)
≥≥G H
)
≥≥H I
{
¥¥ 
TestListGUIHelper
µµ !
.
µµ! "
AddTest
µµ" )
(
µµ) *
)
µµ* +
;
µµ+ ,
}
∂∂ 
UnityEngine
∑∑ 
.
∑∑ 
GUI
∑∑ 
.
∑∑ 
enabled
∑∑ #
=
∑∑$ %
true
∑∑& *
;
∑∑* +
}
∏∏ 	
	protected
∫∫ 
override
∫∫ 
void
∫∫ 
RunTests
∫∫  (
(
∫∫( ) 
UITestRunnerFilter
∫∫) ;
[
∫∫; <
]
∫∫< =
filters
∫∫> E
)
∫∫E F
{
ªª 	
foreach
ºº 
(
ºº 
var
ºº 
filter
ºº 
in
ºº  "
filters
ºº# *
)
ºº* +
{
ΩΩ 
filter
ææ 
.
ææ 
ClearResults
ææ #
(
ææ# $
newResultList
ææ$ 1
.
ææ1 2
OfType
ææ2 8
<
ææ8 9 
UITestRunnerFilter
ææ9 K
.
ææK L
IClearableResult
ææL \
>
ææ\ ]
(
ææ] ^
)
ææ^ _
.
ææ_ `
ToList
ææ` f
(
ææf g
)
ææg h
)
ææh i
;
ææi j
}
øø 
RerunCallbackData
¡¡ 
.
¡¡ 
instance
¡¡ &
.
¡¡& '

runFilters
¡¡' 1
=
¡¡2 3
filters
¡¡4 ;
;
¡¡; <
RerunCallbackData
¬¬ 
.
¬¬ 
instance
¬¬ &
.
¬¬& '
testMode
¬¬' /
=
¬¬0 1
TestMode
¬¬2 :
.
¬¬: ;
PlayMode
¬¬; C
;
¬¬C D
var
ƒƒ 
testRunnerApi
ƒƒ 
=
ƒƒ 
ScriptableObject
ƒƒ  0
.
ƒƒ0 1
CreateInstance
ƒƒ1 ?
<
ƒƒ? @
TestRunnerApi
ƒƒ@ M
>
ƒƒM N
(
ƒƒN O
)
ƒƒO P
;
ƒƒP Q
testRunnerApi
≈≈ 
.
≈≈ 
Execute
≈≈ !
(
≈≈! "
new
≈≈" %
ExecutionSettings
≈≈& 7
(
≈≈7 8
)
≈≈8 9
{
∆∆ 
filters
«« 
=
«« 
filters
«« !
.
««! "
Select
««" (
(
««( )
filter
««) /
=>
««0 2
new
««3 6
Filter
««7 =
(
««= >
)
««> ?
{
»» 
assemblyNames
…… !
=
……" #
filter
……$ *
.
……* +
assemblyNames
……+ 8
,
……8 9
categoryNames
   !
=
  " #
filter
  $ *
.
  * +
categoryNames
  + 8
,
  8 9

groupNames
ÀÀ 
=
ÀÀ  
filter
ÀÀ" (
.
ÀÀ( )

groupNames
ÀÀ) 3
,
ÀÀ3 4
testMode
ÃÃ 
=
ÃÃ 
TestMode
ÃÃ '
,
ÃÃ' (
	testNames
ÕÕ 
=
ÕÕ 
filter
ÕÕ  &
.
ÕÕ& '
	testNames
ÕÕ' 0
}
ŒŒ 
)
ŒŒ 
.
ŒŒ 
ToArray
ŒŒ 
(
ŒŒ 
)
ŒŒ 
}
œœ 
)
œœ 
;
œœ 
}
–– 	
	protected
”” 
void
”” 
RunTestsInPlayer
”” '
(
””' (+
PlayerLauncherTestRunSettings
””( E
runSettings
””F Q
,
””Q R
params
””S Y 
UITestRunnerFilter
””Z l
[
””l m
]
””m n
filters
””o v
)
””v w
{
‘‘ 	
foreach
’’ 
(
’’ 
var
’’ 
filter
’’ 
in
’’  "
filters
’’# *
)
’’* +
{
÷÷ 
filter
◊◊ 
.
◊◊ 
ClearResults
◊◊ #
(
◊◊# $
newResultList
◊◊$ 1
.
◊◊1 2
OfType
◊◊2 8
<
◊◊8 9 
UITestRunnerFilter
◊◊9 K
.
◊◊K L
IClearableResult
◊◊L \
>
◊◊\ ]
(
◊◊] ^
)
◊◊^ _
.
◊◊_ `
ToList
◊◊` f
(
◊◊f g
)
◊◊g h
)
◊◊h i
;
◊◊i j
}
ÿÿ 
var
⁄⁄ 
testRunnerApi
⁄⁄ 
=
⁄⁄ 
ScriptableObject
⁄⁄  0
.
⁄⁄0 1
CreateInstance
⁄⁄1 ?
<
⁄⁄? @
TestRunnerApi
⁄⁄@ M
>
⁄⁄M N
(
⁄⁄N O
)
⁄⁄O P
;
⁄⁄P Q
testRunnerApi
€€ 
.
€€ 
Execute
€€ !
(
€€! "
new
€€" %
ExecutionSettings
€€& 7
(
€€7 8
)
€€8 9
{
‹‹ %
overloadTestRunSettings
›› '
=
››( )
runSettings
››* 5
,
››5 6
filters
ﬁﬁ 
=
ﬁﬁ 
filters
ﬁﬁ !
.
ﬁﬁ! "
Select
ﬁﬁ" (
(
ﬁﬁ( )
filter
ﬁﬁ) /
=>
ﬁﬁ0 2
new
ﬁﬁ3 6
Filter
ﬁﬁ7 =
(
ﬁﬁ= >
)
ﬁﬁ> ?
{
ﬂﬂ 
assemblyNames
‡‡ !
=
‡‡" #
filter
‡‡$ *
.
‡‡* +
assemblyNames
‡‡+ 8
,
‡‡8 9
categoryNames
·· !
=
··" #
filter
··$ *
.
··* +
categoryNames
··+ 8
,
··8 9

groupNames
‚‚ 
=
‚‚  
filter
‚‚! '
.
‚‚' (

groupNames
‚‚( 2
,
‚‚2 3
testMode
„„ 
=
„„ 
TestMode
„„ '
,
„„' (
	testNames
‰‰ 
=
‰‰ 
filter
‰‰  &
.
‰‰& '
	testNames
‰‰' 0
}
ÂÂ 
)
ÂÂ 
.
ÂÂ 
ToArray
ÂÂ 
(
ÂÂ 
)
ÂÂ 
,
ÂÂ 
targetPlatform
ÊÊ 
=
ÊÊ  %
EditorUserBuildSettings
ÊÊ! 8
.
ÊÊ8 9
activeBuildTarget
ÊÊ9 J
}
ÁÁ 
)
ÁÁ 
;
ÁÁ 
}
ËË 	
public
ÍÍ 
override
ÍÍ 
TestPlatform
ÍÍ $
TestPlatform
ÍÍ% 1
{
ÍÍ2 3
get
ÍÍ4 7
{
ÍÍ8 9
return
ÍÍ: @
TestPlatform
ÍÍA M
.
ÍÍM N
PlayMode
ÍÍN V
;
ÍÍV W
}
ÍÍX Y
}
ÍÍZ [
	protected
ÏÏ 
override
ÏÏ 
bool
ÏÏ 
IsBusy
ÏÏ  &
(
ÏÏ& '
)
ÏÏ' (
{
ÌÌ 	
return
ÓÓ 
TestRunnerApi
ÓÓ  
.
ÓÓ  !
IsRunActive
ÓÓ! ,
(
ÓÓ, -
)
ÓÓ- .
||
ÓÓ/ 1
PlaymodeLauncher
ÓÓ2 B
.
ÓÓB C
	IsRunning
ÓÓC L
||
ÓÓN P
EditorApplication
ÓÓQ b
.
ÓÓb c
isCompiling
ÓÓc n
||
ÓÓo q 
EditorApplicationÓÓr É
.ÓÓÉ Ñ
	isPlayingÓÓÑ ç
;ÓÓç é
}
ÔÔ 	
}
 
}ÒÒ öc
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListBuilder\TestFilterSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class 
TestFilterSettings %
{ 
public		 
bool		 
showSucceeded		 !
;		! "
public

 
bool

 

showFailed

 
;

 
public 
bool 
showIgnored 
;  
public 
bool 

showNotRun 
; 
public 
string 
filterByName "
;" #
public 
int 
filterByCategory #
;# $
private 

GUIContent 
m_SucceededBtn )
;) *
private 

GUIContent 
m_FailedBtn &
;& '
private 

GUIContent 
m_IgnoredBtn '
;' (
private 

GUIContent 
m_NotRunBtn &
;& '
public 
string 
[ 
] 
availableCategories +
;+ ,
private 
readonly 
string 

m_PrefsKey  *
;* +
public 
TestFilterSettings !
(! "
string" (
prefsKey) 1
)1 2
{ 	
availableCategories 
=  !
null" &
;& '

m_PrefsKey 
= 
prefsKey !
;! "
Load 
( 
) 
; 
UpdateCounters 
( 

Enumerable %
.% &
Empty& +
<+ ,
TestRunnerResult, <
>< =
(= >
)> ?
)? @
;@ A
}   	
public"" 
void"" 
Load"" 
("" 
)"" 
{## 	
showSucceeded$$ 
=$$ 
EditorPrefs$$ '
.$$' (
GetBool$$( /
($$/ 0

m_PrefsKey$$0 :
+$$; <
$str$$= M
,$$M N
true$$O S
)$$S T
;$$T U

showFailed%% 
=%% 
EditorPrefs%% $
.%%$ %
GetBool%%% ,
(%%, -

m_PrefsKey%%- 7
+%%8 9
$str%%: G
,%%G H
true%%I M
)%%M N
;%%N O
showIgnored&& 
=&& 
EditorPrefs&& %
.&&% &
GetBool&&& -
(&&- .

m_PrefsKey&&. 8
+&&9 :
$str&&; I
,&&I J
true&&K O
)&&O P
;&&P Q

showNotRun'' 
='' 
EditorPrefs'' $
.''$ %
GetBool''% ,
('', -

m_PrefsKey''- 7
+''8 9
$str'': G
,''G H
true''I M
)''M N
;''N O
filterByName(( 
=(( 
EditorPrefs(( &
.((& '
	GetString((' 0
(((0 1

m_PrefsKey((1 ;
+((< =
$str((> M
,((M N
string((O U
.((U V
Empty((V [
)(([ \
;((\ ]
filterByCategory)) 
=)) 
EditorPrefs)) *
.))* +
GetInt))+ 1
())1 2

m_PrefsKey))2 <
+))= >
$str))? R
,))R S
$num))T U
)))U V
;))V W
}** 	
public,, 
void,, 
Save,, 
(,, 
),, 
{-- 	
EditorPrefs.. 
... 
SetBool.. 
(..  

m_PrefsKey..  *
+..+ ,
$str..- =
,..= >
showSucceeded..? L
)..L M
;..M N
EditorPrefs// 
.// 
SetBool// 
(//  

m_PrefsKey//  *
+//+ ,
$str//- :
,//: ;

showFailed//< F
)//F G
;//G H
EditorPrefs00 
.00 
SetBool00 
(00  

m_PrefsKey00  *
+00+ ,
$str00- ;
,00; <
showIgnored00= H
)00H I
;00I J
EditorPrefs11 
.11 
SetBool11 
(11  

m_PrefsKey11  *
+11+ ,
$str11- :
,11: ;

showNotRun11< F
)11F G
;11G H
EditorPrefs22 
.22 
	SetString22 !
(22! "

m_PrefsKey22" ,
+22- .
$str22/ >
,22> ?
filterByName22@ L
)22L M
;22M N
EditorPrefs33 
.33 
SetInt33 
(33 

m_PrefsKey33 )
+33* +
$str33, ?
,33? @
filterByCategory33A Q
)33Q R
;33R S
}44 	
public66 
void66 
UpdateCounters66 "
(66" #
IEnumerable66# .
<66. /
TestRunnerResult66/ ?
>66? @
results66A H
)66H I
{77 	
var88 
summary88 
=88 
new88 
ResultSummarizer88 .
(88. /
results88/ 6
)886 7
;887 8
m_SucceededBtn:: 
=:: 
new::  

GUIContent::! +
(::+ ,
summary::, 3
.::3 4
Passed::4 :
.::: ;
ToString::; C
(::C D
)::D E
,::E F
Icons::G L
.::L M
s_SuccessImg::M Y
,::Y Z
$str::[ v
)::v w
;::w x
m_FailedBtn;; 
=;; 
new;; 

GUIContent;; (
(;;( )
(;;) *
summary;;* 1
.;;1 2
errors;;2 8
+;;9 :
summary;;; B
.;;B C
failures;;C K
+;;L M
summary;;N U
.;;U V
inconclusive;;V b
);;b c
.;;c d
ToString;;d l
(;;l m
);;m n
,;;n o
Icons;;p u
.;;u v
	s_FailImg;;v 
,	;; Ä
$str
;;Å ô
)
;;ô ö
;
;;ö õ
m_IgnoredBtn<< 
=<< 
new<< 

GUIContent<< )
(<<) *
(<<* +
summary<<+ 2
.<<2 3
ignored<<3 :
+<<; <
summary<<= D
.<<D E
notRunnable<<E P
)<<P Q
.<<Q R
ToString<<R Z
(<<Z [
)<<[ \
,<<\ ]
Icons<<^ c
.<<c d
s_IgnoreImg<<d o
,<<o p
$str	<<q é
)
<<é è
;
<<è ê
m_NotRunBtn== 
=== 
new== 

GUIContent== (
(==( )
(==) *
summary==* 1
.==1 2
testsNotRun==2 =
-==> ?
summary==@ G
.==G H
ignored==H O
-==P Q
summary==R Y
.==Y Z
notRunnable==Z e
)==e f
.==f g
ToString==g o
(==o p
)==p q
,==q r
Icons==s x
.==x y
s_UnknownImg	==y Ö
,
==Ö Ü
$str
==á £
)
==£ §
;
==§ •
}>> 	
public@@ 
string@@ 
[@@ 
]@@ !
GetSelectedCategories@@ -
(@@- .
)@@. /
{AA 	
ifBB 
(BB 
availableCategoriesBB #
==BB$ &
nullBB' +
)BB+ ,
returnCC 
newCC 
stringCC !
[CC! "
$numCC" #
]CC# $
;CC$ %
returnEE 
availableCategoriesEE &
.EE& '
WhereEE' ,
(EE, -
(EE- .
cEE. /
,EE/ 0
iEE1 2
)EE2 3
=>EE4 6
(EE7 8
filterByCategoryEE8 H
&EEI J
(EEK L
$numEEL M
<<EEN P
iEEQ R
)EER S
)EES T
!=EEU W
$numEEX Y
)EEY Z
.EEZ [
ToArrayEE[ b
(EEb c
)EEc d
;EEd e
}FF 	
publicHH 
voidHH 
OnGUIHH 
(HH 
)HH 
{II 	
	EditorGUIJJ 
.JJ 
BeginChangeCheckJJ &
(JJ& '
)JJ' (
;JJ( )
filterByNameLL 
=LL 
	GUILayoutLL $
.LL$ %
	TextFieldLL% .
(LL. /
filterByNameLL/ ;
,LL; <
$strLL= T
,LLT U
	GUILayoutLLV _
.LL_ `
MinWidthLL` h
(LLh i
$numLLi l
)LLl m
,LLm n
	GUILayoutLLo x
.LLx y
MaxWidth	LLy Å
(
LLÅ Ç
$num
LLÇ Ö
)
LLÖ Ü
,
LLÜ á
	GUILayout
LLà ë
.
LLë í
ExpandWidth
LLí ù
(
LLù û
true
LLû ¢
)
LL¢ £
)
LL£ §
;
LL§ •
ifMM 
(MM 
	GUILayoutMM 
.MM 
ButtonMM  
(MM  !

GUIContentMM! +
.MM+ ,
noneMM, 0
,MM0 1
stringMM2 8
.MM8 9
IsNullOrEmptyMM9 F
(MMF G
filterByNameMMG S
)MMS T
?MMU V
$strMMW v
:MMw x
$str	MMy ì
)
MMì î
)
MMî ï
filterByNameNN 
=NN 
stringNN %
.NN% &
EmptyNN& +
;NN+ ,
ifPP 
(PP 
availableCategoriesPP #
!=PP$ &
nullPP' +
&&PP, .
availableCategoriesPP/ B
.PPB C
LengthPPC I
>PPJ K
$numPPL M
)PPM N
filterByCategoryQQ  
=QQ! "
EditorGUILayoutQQ# 2
.QQ2 3
	MaskFieldQQ3 <
(QQ< =
filterByCategoryQQ= M
,QQM N
availableCategoriesQQO b
,QQb c
EditorStylesQQd p
.QQp q
toolbarDropDown	QQq Ä
,
QQÄ Å
	GUILayout
QQÇ ã
.
QQã å
MaxWidth
QQå î
(
QQî ï
$num
QQï ó
)
QQó ò
)
QQò ô
;
QQô ö
showSucceededSS 
=SS 
	GUILayoutSS %
.SS% &
ToggleSS& ,
(SS, -
showSucceededSS- :
,SS: ;
m_SucceededBtnSS< J
,SSJ K
EditorStylesSSL X
.SSX Y
toolbarButtonSSY f
)SSf g
;SSg h

showFailedTT 
=TT 
	GUILayoutTT "
.TT" #
ToggleTT# )
(TT) *

showFailedTT* 4
,TT4 5
m_FailedBtnTT6 A
,TTA B
EditorStylesTTC O
.TTO P
toolbarButtonTTP ]
)TT] ^
;TT^ _
showIgnoredUU 
=UU 
	GUILayoutUU #
.UU# $
ToggleUU$ *
(UU* +
showIgnoredUU+ 6
,UU6 7
m_IgnoredBtnUU8 D
,UUD E
EditorStylesUUF R
.UUR S
toolbarButtonUUS `
)UU` a
;UUa b

showNotRunVV 
=VV 
	GUILayoutVV "
.VV" #
ToggleVV# )
(VV) *

showNotRunVV* 4
,VV4 5
m_NotRunBtnVV6 A
,VVA B
EditorStylesVVC O
.VVO P
toolbarButtonVVP ]
)VV] ^
;VV^ _
ifXX 
(XX 
	EditorGUIXX 
.XX 
EndChangeCheckXX (
(XX( )
)XX) *
)XX* +
SaveYY 
(YY 
)YY 
;YY 
}ZZ 	
public\\ 
RenderingOptions\\ !
BuildRenderingOptions\\  5
(\\5 6
)\\6 7
{]] 	
var^^ 
options^^ 
=^^ 
new^^ 
RenderingOptions^^ .
(^^. /
)^^/ 0
;^^0 1
options__ 
.__ 
showSucceeded__ !
=__" #
showSucceeded__$ 1
;__1 2
options`` 
.`` 

showFailed`` 
=``  

showFailed``! +
;``+ ,
optionsaa 
.aa 
showIgnoredaa 
=aa  !
showIgnoredaa" -
;aa- .
optionsbb 
.bb 
showNotRunnedbb !
=bb" #

showNotRunbb$ .
;bb. /
optionscc 
.cc 

nameFiltercc 
=cc  
filterByNamecc! -
;cc- .
optionsdd 
.dd 

categoriesdd 
=dd  !
GetSelectedCategoriesdd! 6
(dd6 7
)dd7 8
;dd8 9
returnee 
optionsee 
;ee 
}ff 	
}gg 
}hh §w
üD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestAdaptor.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
class 
TestAdaptor 
:  
ITestAdaptor! -
{ 
internal 
TestAdaptor 
( 
ITest "
test# '
,' (
ITestAdaptor) 5
[5 6
]6 7
children8 @
=A B
nullC G
)G H
{ 	
Id 
= 
test 
. 
Id 
; 
Name 
= 
test 
. 
Name 
; 
var 

childIndex 
= 
- 
$num 
;  
if 
( 
test 
. 

Properties 
[  
$str  ,
], -
.- .
Count. 3
>4 5
$num6 7
)7 8
{ 

childIndex 
= 
( 
int !
)! "
test" &
.& '

Properties' 1
[1 2
$str2 >
]> ?
[? @
$num@ A
]A B
;B C
} 
FullName 
= 

childIndex !
!=" $
-% &
$num& '
?( )"
GetIndexedTestCaseName* @
(@ A
testA E
.E F
FullNameF N
,N O

childIndexP Z
)Z [
:\ ]
test^ b
.b c
FullNamec k
;k l
TestCaseCount 
= 
test  
.  !
TestCaseCount! .
;. /
HasChildren 
= 
test 
. 
HasChildren *
;* +
IsSuite 
= 
test 
. 
IsSuite "
;" #
if 
( %
UnityTestExecutionContext )
.) *
CurrentContext* 8
!=9 ;
null< @
)@ A
{ 
TestCaseTimeout 
=  !%
UnityTestExecutionContext" ;
.; <
CurrentContext< J
.J K
TestCaseTimeoutK Z
;Z [
}   
else!! 
{"" 
TestCaseTimeout## 
=##  !
CoroutineRunner##" 1
.##1 2
k_DefaultTimeout##2 B
;##B C
}$$ 
TypeInfo&& 
=&& 
test&& 
.&& 
TypeInfo&& $
;&&$ %
Method'' 
='' 
test'' 
.'' 
Method''  
;''  !

Categories(( 
=(( 
test(( 
.(( $
GetAllCategoriesFromTest(( 6
(((6 7
)((7 8
.((8 9
Distinct((9 A
(((A B
)((B C
.((C D
ToArray((D K
(((K L
)((L M
;((M N
IsTestAssembly)) 
=)) 
test)) !
is))" $
TestAssembly))% 1
;))1 2
RunState** 
=** 
(** 
RunState**  
)**  !
Enum**! %
.**% &
Parse**& +
(**+ ,
typeof**, 2
(**2 3
RunState**3 ;
)**; <
,**< =
test**> B
.**B C
RunState**C K
.**K L
ToString**L T
(**T U
)**U V
)**V W
;**W X
Description++ 
=++ 
(++ 
string++ !
)++! "
test++" &
.++& '

Properties++' 1
.++1 2
Get++2 5
(++5 6
PropertyNames++6 C
.++C D
Description++D O
)++O P
;++P Q

SkipReason,, 
=,, 
test,, 
.,, 
GetSkipReason,, +
(,,+ ,
),,, -
;,,- .
ParentId-- 
=-- 
test-- 
.-- 
GetParentId-- '
(--' (
)--( )
;--) *
ParentFullName.. 
=.. 
test.. !
...! "
GetParentFullName.." 3
(..3 4
)..4 5
;..5 6

UniqueName// 
=// 
test// 
.// 
GetUniqueName// +
(//+ ,
)//, -
;//- .
ParentUniqueName00 
=00 
test00 #
.00# $
GetParentUniqueName00$ 7
(007 8
)008 9
;009 :

ChildIndex11 
=11 

childIndex11 #
;11# $
if33 
(33 
test33 
.33 
Parent33 
!=33 
null33 #
)33# $
{44 
if55 
(55 
test55 
.55 
Parent55 
.55  
Parent55  &
==55' )
null55* .
)55. /
{66 
TestMode77 
=77 
(77  
TestMode77  (
)77( )
Enum77) -
.77- .
Parse77. 3
(773 4
typeof774 :
(77: ;
TestMode77; C
)77C D
,77D E
test77E I
.77I J

Properties77J T
.77T U
Get77U X
(77X Y
$str77Y c
)77c d
.77d e
ToString77e m
(77m n
)77n o
)77o p
;77p q
}88 
}99 
Children;; 
=;; 
children;; 
;;;  
}<< 	
public>> 
void>> 
	SetParent>> 
(>> 
ITestAdaptor>> *
parent>>+ 1
)>>1 2
{?? 	
Parent@@ 
=@@ 
parent@@ 
;@@ 
ifAA 
(AA 
parentAA 
!=AA 
nullAA 
)AA 
{BB 
TestModeCC 
=CC 
parentCC !
.CC! "
TestModeCC" *
;CC* +
}DD 
}EE 	
internalGG 
TestAdaptorGG 
(GG 
RemoteTestDataGG +
testGG, 0
)GG0 1
{HH 	
IdII 
=II 
testII 
.II 
idII 
;II 
NameJJ 
=JJ 
testJJ 
.JJ 
nameJJ 
;JJ 
FullNameKK 
=KK 
testKK 
.KK 

ChildIndexKK &
!=KK' )
-KK* +
$numKK+ ,
?KK- ."
GetIndexedTestCaseNameKK/ E
(KKE F
testKKF J
.KKJ K
fullNameKKK S
,KKS T
testKKU Y
.KKY Z

ChildIndexKKZ d
)KKd e
:KKf g
testKKh l
.KKl m
fullNameKKm u
;KKu v
TestCaseCountLL 
=LL 
testLL  
.LL  !
testCaseCountLL! .
;LL. /
HasChildrenMM 
=MM 
testMM 
.MM 
hasChildrenMM *
;MM* +
IsSuiteNN 
=NN 
testNN 
.NN 
isSuiteNN "
;NN" #
m_ChildrenIdsOO 
=OO 
testOO  
.OO  !
childrenIdsOO! ,
;OO, -
TestCaseTimeoutPP 
=PP 
testPP "
.PP" #
testCaseTimeoutPP# 2
;PP2 3

CategoriesQQ 
=QQ 
testQQ 
.QQ 

CategoriesQQ (
;QQ( )
IsTestAssemblyRR 
=RR 
testRR !
.RR! "
IsTestAssemblyRR" 0
;RR0 1
RunStateSS 
=SS 
(SS 
RunStateSS  
)SS  !
EnumSS! %
.SS% &
ParseSS& +
(SS+ ,
typeofSS, 2
(SS2 3
RunStateSS3 ;
)SS; <
,SS< =
testSS> B
.SSB C
RunStateSSC K
.SSK L
ToStringSSL T
(SST U
)SSU V
)SSV W
;SSW X
DescriptionTT 
=TT 
testTT 
.TT 
DescriptionTT *
;TT* +

SkipReasonUU 
=UU 
testUU 
.UU 

SkipReasonUU (
;UU( )
ParentIdVV 
=VV 
testVV 
.VV 
ParentIdVV $
;VV$ %

UniqueNameWW 
=WW 
testWW 
.WW 

UniqueNameWW (
;WW( )
ParentUniqueNameXX 
=XX 
testXX #
.XX# $
ParentUniqueNameXX$ 4
;XX4 5
ParentFullNameYY 
=YY 
testYY !
.YY! "
ParentFullNameYY" 0
;YY0 1

ChildIndexZZ 
=ZZ 
testZZ 
.ZZ 

ChildIndexZZ (
;ZZ( )
TestMode[[ 
=[[ 
TestMode[[ 
.[[  
PlayMode[[  (
;[[( )
}\\ 	
internal^^ 
void^^ 
ApplyChildren^^ #
(^^# $
IEnumerable^^$ /
<^^/ 0
TestAdaptor^^0 ;
>^^; <
allTests^^= E
)^^E F
{__ 	
Children`` 
=`` 
m_ChildrenIds`` $
.``$ %
Select``% +
(``+ ,
id``, .
=>``/ 1
allTests``2 :
.``: ;
First``; @
(``@ A
t``A B
=>``C E
t``F G
.``G H
Id``H J
==``K M
id``N P
)``P Q
)``Q R
.``R S
ToArray``S Z
(``Z [
)``[ \
;``\ ]
ifaa 
(aa 
!aa 
stringaa 
.aa 
IsNullOrEmptyaa %
(aa% &
ParentIdaa& .
)aa. /
)aa/ 0
{bb 
Parentcc 
=cc 
allTestscc !
.cc! "
FirstOrDefaultcc" 0
(cc0 1
tcc1 2
=>cc3 5
tcc6 7
.cc7 8
Idcc8 :
==cc; =
ParentIdcc> F
)ccF G
;ccG H
}dd 
}ee 	
publicgg 
stringgg 
Idgg 
{gg 
getgg 
;gg 
privategg  '
setgg( +
;gg+ ,
}gg- .
publichh 
stringhh 
Namehh 
{hh 
gethh  
;hh  !
privatehh" )
sethh* -
;hh- .
}hh/ 0
publicii 
stringii 
FullNameii 
{ii  
getii! $
;ii$ %
privateii& -
setii. 1
;ii1 2
}ii3 4
publicjj 
intjj 
TestCaseCountjj  
{jj! "
getjj# &
;jj& '
privatejj( /
setjj0 3
;jj3 4
}jj5 6
publickk 
boolkk 
HasChildrenkk 
{kk  !
getkk" %
;kk% &
privatekk' .
setkk/ 2
;kk2 3
}kk4 5
publicll 
boolll 
IsSuitell 
{ll 
getll !
;ll! "
privatell# *
setll+ .
;ll. /
}ll0 1
publicmm 
IEnumerablemm 
<mm 
ITestAdaptormm '
>mm' (
Childrenmm) 1
{mm2 3
getmm4 7
;mm7 8
privatemm9 @
setmmA D
;mmD E
}mmF G
publicnn 
ITestAdaptornn 
Parentnn "
{nn# $
getnn% (
;nn( )
privatenn* 1
setnn2 5
;nn5 6
}nn7 8
publicoo 
intoo 
TestCaseTimeoutoo "
{oo# $
getoo% (
;oo( )
privateoo* 1
setoo2 5
;oo5 6
}oo7 8
publicpp 
	ITypeInfopp 
TypeInfopp !
{pp" #
getpp$ '
;pp' (
privatepp) 0
setpp1 4
;pp4 5
}pp6 7
publicqq 
IMethodInfoqq 
Methodqq !
{qq" #
getqq$ '
;qq' (
privateqq) 0
setqq1 4
;qq4 5
}qq6 7
privaterr 
stringrr 
[rr 
]rr 
m_ChildrenIdsrr &
;rr& '
publicss 
stringss 
[ss 
]ss 

Categoriesss "
{ss# $
getss% (
;ss( )
privatess* 1
setss2 5
;ss5 6
}ss7 8
publictt 
booltt 
IsTestAssemblytt "
{tt# $
gettt% (
;tt( )
privatett* 1
settt2 5
;tt5 6
}tt7 8
publicuu 
RunStateuu 
RunStateuu  
{uu! "
getuu# &
;uu& '
}uu( )
publicvv 
stringvv 
Descriptionvv !
{vv" #
getvv$ '
;vv' (
}vv) *
publicww 
stringww 

SkipReasonww  
{ww! "
getww# &
;ww& '
}ww( )
publicxx 
stringxx 
ParentIdxx 
{xx  
getxx! $
;xx$ %
}xx& '
publicyy 
stringyy 
ParentFullNameyy $
{yy% &
getyy' *
;yy* +
}yy, -
publiczz 
stringzz 

UniqueNamezz  
{zz! "
getzz# &
;zz& '
}zz( )
public{{ 
string{{ 
ParentUniqueName{{ &
{{{' (
get{{) ,
;{{, -
}{{. /
public|| 
int|| 

ChildIndex|| 
{|| 
get||  #
;||# $
}||% &
public}} 
TestMode}} 
TestMode}}  
{}}! "
get}}# &
;}}& '
private}}( /
set}}0 3
;}}3 4
}}}5 6
private 
static 
string "
GetIndexedTestCaseName 4
(4 5
string5 ;
fullName< D
,D E
intF I
indexJ O
)O P
{
ÄÄ 	
var
ÅÅ !
generatedTestSuffix
ÅÅ #
=
ÅÅ$ %
$str
ÅÅ& :
+
ÅÅ; <
index
ÅÅ= B
;
ÅÅB C
if
ÇÇ 
(
ÇÇ 
fullName
ÇÇ 
.
ÇÇ 
EndsWith
ÇÇ !
(
ÇÇ! "
$str
ÇÇ" %
)
ÇÇ% &
)
ÇÇ& '
{
ÉÉ 
return
ÜÜ 
fullName
ÜÜ 
.
ÜÜ  
	Substring
ÜÜ  )
(
ÜÜ) *
$num
ÜÜ* +
,
ÜÜ+ ,
fullName
ÜÜ- 5
.
ÜÜ5 6
Length
ÜÜ6 <
-
ÜÜ= >
$num
ÜÜ? @
)
ÜÜ@ A
+
ÜÜB C!
generatedTestSuffix
ÜÜD W
+
ÜÜX Y
fullName
ÜÜZ b
[
ÜÜb c
fullName
ÜÜc k
.
ÜÜk l
Length
ÜÜl r
-
ÜÜs t
$num
ÜÜu v
]
ÜÜv w
;
ÜÜw x
}
áá 
return
ãã 
fullName
ãã 
+
ãã !
generatedTestSuffix
ãã 1
;
ãã1 2
}
åå 	
}
çç 
}éé Ÿ
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Messages\RecompileScripts.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public

 

class

 
RecompileScripts

 !
:

" #)
IEditModeTestYieldInstruction

$ A
{ 
public 
RecompileScripts 
(  
)  !
:" #
this$ (
(( )
true) -
)- .
{ 	
} 	
public$$ 
RecompileScripts$$ 
($$  
bool$$  $#
expectScriptCompilation$$% <
)$$< =
:$$> ?
this$$@ D
($$D E#
expectScriptCompilation$$E \
,$$\ ]
true$$^ b
)$$b c
{%% 	
}&& 	
public,, 
RecompileScripts,, 
(,,  
bool,,  $#
expectScriptCompilation,,% <
,,,< =
bool,,> B*
expectScriptCompilationSuccess,,C a
),,a b
{-- 	#
ExpectScriptCompilation.. #
=..$ %#
expectScriptCompilation..& =
;..= >*
ExpectScriptCompilationSuccess// *
=//+ ,*
expectScriptCompilationSuccess//- K
;//K L
ExpectDomainReload00 
=00  
true00! %
;00% &
}11 	
public66 
bool66 
ExpectDomainReload66 &
{66' (
get66) ,
;66, -
private66. 5
set666 9
;669 :
}66; <
public:: 
bool:: !
ExpectedPlaymodeState:: )
{::* +
get::, /
;::/ 0
}::1 2
public>> 
bool>> #
ExpectScriptCompilation>> +
{>>, -
get>>. 1
;>>1 2
private>>3 :
set>>; >
;>>> ?
}>>@ A
publicBB 
boolBB *
ExpectScriptCompilationSuccessBB 2
{BB3 4
getBB5 8
;BB8 9
privateBB: A
setBBB E
;BBE F
}BBG H
publicGG 
staticGG 
RecompileScriptsGG &
CurrentGG' .
{GG/ 0
getGG1 4
;GG4 5
privateGG6 =
setGG> A
;GGA B
}GGC D
publicNN 
IEnumeratorNN 
PerformNN "
(NN" #
)NN# $
{OO 	
CurrentPP 
=PP 
thisPP 
;PP 
yieldUU 
returnUU 
nullUU 
;UU 
AssetDatabaseWW 
.WW 
RefreshWW !
(WW! "
)WW" #
;WW# $
ifYY 
(YY #
ExpectScriptCompilationYY '
&&YY( *
!YY+ ,
EditorApplicationYY, =
.YY= >
isCompilingYY> I
)YYI J
{ZZ 
Current[[ 
=[[ 
null[[ 
;[[ 
throw\\ 
new\\ 
	Exception\\ #
(\\# $
$str\\$ O
)\\O P
;\\P Q
}]] 
EditorApplication__ 
.__ "
UnlockReloadAssemblies__ 4
(__4 5
)__5 6
;__6 7
whileaa 
(aa 
EditorApplicationaa $
.aa$ %
isCompilingaa% 0
)aa0 1
{bb 
yieldcc 
returncc 
nullcc !
;cc! "
}dd 
Currentff 
=ff 
nullff 
;ff 
ifhh 
(hh *
ExpectScriptCompilationSuccesshh .
&&hh/ 1
EditorUtilityhh2 ?
.hh? @#
scriptCompilationFailedhh@ W
)hhW X
{ii 
EditorApplicationjj !
.jj! " 
LockReloadAssembliesjj" 6
(jj6 7
)jj7 8
;jj8 9
throwkk 
newkk 
	Exceptionkk #
(kk# $
$strkk$ ?
)kk? @
;kk@ A
}ll 
}mm 	
}nn 
}oo ∏
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestResultAdaptor.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public

 

	interface

 
ITestResultAdaptor

 '
{ 
ITestAdaptor 
Test 
{ 
get 
;  
}! "
string 
Name 
{ 
get 
; 
} 
string 
FullName 
{ 
get 
; 
}  
string 
ResultState 
{ 
get  
;  !
}" #

TestStatus 

TestStatus 
{ 
get  #
;# $
}% &
double 
Duration 
{ 
get 
; 
}  
DateTime 
	StartTime 
{ 
get  
;  !
}" #
DateTime!! 
EndTime!! 
{!! 
get!! 
;!! 
}!!  !
string'' 
Message'' 
{'' 
get'' 
;'' 
}'' 
string.. 

StackTrace.. 
{.. 
get.. 
;..  
}..! "
int44 
AssertCount44 
{44 
get44 
;44 
}44  
int:: 
	FailCount:: 
{:: 
get:: 
;:: 
}:: 
int@@ 
	PassCount@@ 
{@@ 
get@@ 
;@@ 
}@@ 
intFF 
	SkipCountFF 
{FF 
getFF 
;FF 
}FF 
intLL 
InconclusiveCountLL 
{LL 
getLL  #
;LL# $
}LL% &
boolSS 
HasChildrenSS 
{SS 
getSS 
;SS 
}SS  !
IEnumerableVV 
<VV 
ITestResultAdaptorVV &
>VV& '
ChildrenVV( 0
{VV1 2
getVV3 6
;VV6 7
}VV8 9
stringYY 
OutputYY 
{YY 
getYY 
;YY 
}YY 
TNode^^ 
ToXml^^ 
(^^ 
)^^ 
;^^ 
}__ 
}`` Ô
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\RequireApiProfileAttribute.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Assembly		% -
|		. /
AttributeTargets		0 @
.		@ A
Class		A F
|		G H
AttributeTargets		I Y
.		Y Z
Method		Z `
)		` a
]		a b
internal

 
class

 &
RequireApiProfileAttribute

 -
:

. /
NUnitAttribute

0 >
,

> ?
IApplyToTest

@ L
{ 
public !
ApiCompatibilityLevel $
[$ %
]% &
apiProfiles' 2
{3 4
get5 8
;8 9
private: A
setB E
;E F
}G H
public &
RequireApiProfileAttribute )
() *
params* 0!
ApiCompatibilityLevel1 F
[F G
]G H
apiProfilesI T
)T U
{ 	
this 
. 
apiProfiles 
= 
apiProfiles *
;* +
} 	
void 
IApplyToTest 
. 
ApplyToTest %
(% &
Test& *
test+ /
)/ 0
{ 	
test 
. 

Properties 
. 
Add 
(  
PropertyNames  -
.- .
Category. 6
,6 7
string8 >
.> ?
Format? E
(E F
$strF W
,W X
stringY _
._ `
Join` d
(d e
$stre i
,i j
apiProfilesk v
.v w
Selectw }
(} ~
p~ 
=>
Ä Ç
p
É Ñ
.
Ñ Ö
ToString
Ö ç
(
ç é
)
é è
)
è ê
.
ê ë
OrderBy
ë ò
(
ò ô
p
ô ö
=>
õ ù
p
û ü
)
ü †
.
† °
ToArray
° ®
(
® ©
)
© ™
)
™ ´
)
´ ¨
)
¨ ≠
;
≠ Æ!
ApiCompatibilityLevel !
testProfile" -
=. /
PlayerSettings0 >
.> ?$
GetApiCompatibilityLevel? W
(W X#
EditorUserBuildSettingsX o
.o p#
activeBuildTargetGroup	p Ü
)
Ü á
;
á à
if 
( 
! 
apiProfiles 
. 
Contains %
(% &
testProfile& 1
)1 2
)2 3
{ 
string 

skipReason !
=" #
$str$ a
+b c
stringd j
.j k
Joink o
(o p
$strp t
,t u
apiProfiles	v Å
.
Å Ç
Select
Ç à
(
à â
p
â ä
=>
ã ç
p
é è
.
è ê
ToString
ê ò
(
ò ô
)
ô ö
)
ö õ
.
õ ú
ToArray
ú £
(
£ §
)
§ •
)
• ¶
;
¶ ß
test 
. 
RunState 
= 
RunState  (
.( )
Skipped) 0
;0 1
test 
. 

Properties 
.  
Add  #
(# $
PropertyNames$ 1
.1 2

SkipReason2 <
,< =

skipReason> H
)H I
;I J
} 
} 	
} 
}   √_
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\AttributeFinderBase.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{		 
internal

 
abstract

 
class

 
AttributeFinderBase

 /
:

0 1
IAttributeFinder

2 B
{ 
public 
abstract 
IEnumerable #
<# $
Type$ (
>( )
Search* 0
(0 1
ITest1 6
tests7 <
,< =
ITestFilter> I
filterJ P
,P Q
RuntimePlatformR a
testTargetPlatformb t
)t u
;u v
} 
internal 
	interface 
IAttributeFinder '
{ 
IEnumerable 
< 
Type 
> 
Search  
(  !
ITest! &
tests' ,
,, -
ITestFilter. 9
filter: @
,@ A
RuntimePlatformB Q
testTargetPlatformR d
)d e
;e f
} 
internal 
abstract 
class 
AttributeFinderBase /
</ 0
T10 2
,2 3
T24 6
>6 7
:8 9
AttributeFinderBase: M
whereN S
T2T V
:W X
	AttributeY b
{ 
private 
readonly 
Func 
< 
T2  
,  !
Type" &
>& '
m_TypeSelector( 6
;6 7
	protected 
AttributeFinderBase %
(% &
Func& *
<* +
T2+ -
,- .
Type/ 3
>3 4
typeSelector5 A
)A B
{ 	
m_TypeSelector 
= 
typeSelector )
;) *
} 	
public 
override 
IEnumerable #
<# $
Type$ (
>( )
Search* 0
(0 1
ITest1 6
tests7 <
,< =
ITestFilter> I
filterJ P
,P Q
RuntimePlatformR a
testTargetPlatformb t
)t u
{ 	
var 
selectedTests 
= 
new  #
List$ (
<( )
ITest) .
>. /
(/ 0
)0 1
;1 2
GetMatchingTests 
( 
tests "
," #
filter$ *
,* +
ref, /
selectedTests0 =
,= >
testTargetPlatform? Q
)Q R
;R S
var!! 
result!! 
=!! 
new!! 
List!! !
<!!! "
Type!!" &
>!!& '
(!!' (
)!!( )
;!!) *
result"" 
."" 
AddRange"" 
("" *
GetTypesFromPrebuildAttributes"" :
("": ;
selectedTests""; H
)""H I
)""I J
;""J K
result## 
.## 
AddRange## 
(## !
GetTypesFromInterface## 1
(##1 2
selectedTests##2 ?
,##? @
testTargetPlatform##A S
)##S T
)##T U
;##U V
return%% 
result%% 
.%% 
Distinct%% "
(%%" #
)%%# $
;%%$ %
}&& 	
private(( 
static(( 
void(( 
GetMatchingTests(( ,
(((, -
ITest((- 2
tests((3 8
,((8 9
ITestFilter((: E
filter((F L
,((L M
ref((N Q
List((R V
<((V W
ITest((W \
>((\ ]

resultList((^ h
,((h i
RuntimePlatform((j y
testTargetPlatform	((z å
)
((å ç
{)) 	
foreach** 
(** 
var** 
test** 
in**  
tests**! &
.**& '
Tests**' ,
)**, -
{++ 
if,, 
(,, #
IsTestEnabledOnPlatform,, +
(,,+ ,
test,,, 0
,,,0 1
testTargetPlatform,,2 D
),,D E
),,E F
{-- 
if.. 
(.. 
test.. 
... 
IsSuite.. $
)..$ %
{// 
GetMatchingTests00 (
(00( )
test00) -
,00- .
filter00/ 5
,005 6
ref007 :

resultList00; E
,00E F
testTargetPlatform00G Y
)00Y Z
;00Z [
}11 
else22 
{33 
if44 
(44 
filter44 "
.44" #
Pass44# '
(44' (
test44( ,
)44, -
)44- .

resultList55 &
.55& '
Add55' *
(55* +
test55+ /
)55/ 0
;550 1
}66 
}77 
}88 
}99 	
private;; 
static;; 
bool;; #
IsTestEnabledOnPlatform;; 3
(;;3 4
ITest;;4 9
test;;: >
,;;> ?
RuntimePlatform;;@ O
testTargetPlatform;;P b
);;b c
{<< 	
if== 
(== 
test== 
.== 
Method== 
==== 
null== #
)==# $
{>> 
return?? 
true?? 
;?? 
}@@ 
varBB !
attributesFromMethodsBB %
=BB& '
testBB( ,
.BB, -
MethodBB- 3
.BB3 4
GetCustomAttributesBB4 G
<BBG H"
UnityPlatformAttributeBBH ^
>BB^ _
(BB_ `
trueBB` d
)BBd e
.BBe f
SelectBBf l
(BBl m
	attributeBBm v
=>BBw y
	attribute	BBz É
)
BBÉ Ñ
;
BBÑ Ö
varCC 
attributesFromTypesCC #
=CC$ %
testCC& *
.CC* +
MethodCC+ 1
.CC1 2
TypeInfoCC2 :
.CC: ;
GetCustomAttributesCC; N
<CCN O"
UnityPlatformAttributeCCO e
>CCe f
(CCf g
trueCCg k
)CCk l
.CCl m
SelectCCm s
(CCs t
	attributeCCt }
=>	CC~ Ä
	attribute
CCÅ ä
)
CCä ã
;
CCã å
ifEE 
(EE 
!EE !
attributesFromMethodsEE &
.EE& '
AllEE' *
(EE* +
aEE+ ,
=>EE- /
aEE0 1
.EE1 2
IsPlatformSupportedEE2 E
(EEE F
testTargetPlatformEEF X
)EEX Y
)EEY Z
)EEZ [
{FF 
returnGG 
falseGG 
;GG 
}HH 
ifJJ 
(JJ 
!JJ 
attributesFromTypesJJ $
.JJ$ %
AllJJ% (
(JJ( )
aJJ) *
=>JJ+ -
aJJ. /
.JJ/ 0
IsPlatformSupportedJJ0 C
(JJC D
testTargetPlatformJJD V
)JJV W
)JJW X
)JJX Y
{KK 
returnLL 
falseLL 
;LL 
}MM 
returnOO 
trueOO 
;OO 
}PP 	
privateRR 
IEnumerableRR 
<RR 
TypeRR  
>RR  !*
GetTypesFromPrebuildAttributesRR" @
(RR@ A
IEnumerableRRA L
<RRL M
ITestRRM R
>RRR S
testsRRT Y
)RRY Z
{SS 	
varTT 
allAssembliesTT 
=TT 
	AppDomainTT  )
.TT) *
CurrentDomainTT* 7
.TT7 8
GetAssembliesTT8 E
(TTE F
)TTF G
;TTG H
allAssembliesUU 
=UU 
allAssembliesUU )
.UU) *
WhereUU* /
(UU/ 0
xUU0 1
=>UU2 4
xUU5 6
.UU6 7#
GetReferencedAssembliesUU7 N
(UUN O
)UUO P
.UUP Q
AnyUUQ T
(UUT U
zUUU V
=>UUW Y
zUUZ [
.UU[ \
NameUU\ `
==UUa c
$strUUd |
)UU| }
)UU} ~
.UU~ 
ToArray	UU Ü
(
UUÜ á
)
UUá à
;
UUà â
varVV $
attributesFromAssembliesVV (
=VV) *
allAssembliesVV+ 8
.VV8 9

SelectManyVV9 C
(VVC D
assemblyVVD L
=>VVM O
assemblyVVP X
.VVX Y
GetCustomAttributesVVY l
(VVl m
typeofVVm s
(VVs t
T2VVt v
)VVv w
,VVw x
trueVVy }
)VV} ~
.VV~ 
OfType	VV Ö
<
VVÖ Ü
T2
VVÜ à
>
VVà â
(
VVâ ä
)
VVä ã
)
VVã å
;
VVå ç
varWW !
attributesFromMethodsWW %
=WW& '
testsWW( -
.WW- .

SelectManyWW. 8
(WW8 9
tWW9 :
=>WW; =
tWW> ?
.WW? @
MethodWW@ F
.WWF G
GetCustomAttributesWWG Z
<WWZ [
T2WW[ ]
>WW] ^
(WW^ _
trueWW_ c
)WWc d
.WWd e
SelectWWe k
(WWk l
	attributeWWl u
=>WWv x
	attribute	WWy Ç
)
WWÇ É
)
WWÉ Ñ
;
WWÑ Ö
varXX 
attributesFromTypesXX #
=XX$ %
testsXX& +
.XX+ ,

SelectManyXX, 6
(XX6 7
tXX7 8
=>XX9 ;
tXX< =
.XX= >
MethodXX> D
.XXD E
TypeInfoXXE M
.XXM N
GetCustomAttributesXXN a
<XXa b
T2XXb d
>XXd e
(XXe f
trueXXf j
)XXj k
.XXk l
SelectXXl r
(XXr s
	attributeXXs |
=>XX} 
	attribute
XXÄ â
)
XXâ ä
)
XXä ã
;
XXã å
varZZ 
resultZZ 
=ZZ 
newZZ 
ListZZ !
<ZZ! "
T2ZZ" $
>ZZ$ %
(ZZ% &
)ZZ& '
;ZZ' (
result[[ 
.[[ 
AddRange[[ 
([[ $
attributesFromAssemblies[[ 4
)[[4 5
;[[5 6
result\\ 
.\\ 
AddRange\\ 
(\\ !
attributesFromMethods\\ 1
)\\1 2
;\\2 3
result]] 
.]] 
AddRange]] 
(]] 
attributesFromTypes]] /
)]]/ 0
;]]0 1
return__ 
result__ 
.__ 
Select__  
(__  !
m_TypeSelector__! /
)__/ 0
.__0 1
Where__1 6
(__6 7
type__7 ;
=>__< >
type__? C
!=__D F
null__G K
)__K L
;__L M
}`` 	
privatebb 
staticbb 
IEnumerablebb "
<bb" #
Typebb# '
>bb' (!
GetTypesFromInterfacebb) >
(bb> ?
IEnumerablebb? J
<bbJ K
ITestbbK P
>bbP Q
selectedTestsbbR _
,bb_ `
RuntimePlatformbba p
testTargetPlatform	bbq É
)
bbÉ Ñ
{cc 	
vardd 
typesWithInterfacesdd #
=dd$ %
selectedTestsdd& 3
.dd3 4
Wheredd4 9
(dd9 :
tdd: ;
=>dd< >
typeofdd? E
(ddE F
T1ddF H
)ddH I
.ddI J
IsAssignableFromddJ Z
(ddZ [
tdd[ \
.dd\ ]
Methoddd] c
.ddc d
TypeInfoddd l
.ddl m
Typeddm q
)ddq r
&&dds u$
IsTestEnabledOnPlatform	ddv ç
(
ddç é
t
ddé è
,
ddè ê 
testTargetPlatform
ddë £
)
dd£ §
)
dd§ •
;
dd• ¶
returnee 
typesWithInterfacesee &
.ee& '
Selectee' -
(ee- .
tee. /
=>ee0 2
tee3 4
.ee4 5
Methodee5 ;
.ee; <
TypeInfoee< D
.eeD E
TypeeeE I
)eeI J
;eeJ K
}ff 	
}gg 
}hh  
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\TestTaskBase.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
abstract 
class 
TestTaskBase (
{ 
public 
bool &
SupportsResumingEnumerator .
;. /
	protected		 
TestTaskBase		 
(		 
bool		 #&
supportsResumingEnumerator		$ >
=		? @
false		A F
)		F G
{

 	&
SupportsResumingEnumerator &
=' (&
supportsResumingEnumerator) C
;C D
} 	
public 
abstract 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
;D E
} 
} ˜
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListTreeView\Icons.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
static 
class 
Icons 
{ 
public 
static 
readonly 
	Texture2D (
	s_FailImg) 2
;2 3
public 
static 
readonly 
	Texture2D (
s_IgnoreImg) 4
;4 5
public		 
static		 
readonly		 
	Texture2D		 (
s_SuccessImg		) 5
;		5 6
public

 
static

 
readonly

 
	Texture2D

 (
s_UnknownImg

) 5
;

5 6
public 
static 
readonly 
	Texture2D (
s_InconclusiveImg) :
;: ;
public 
static 
readonly 
	Texture2D (
s_StopwatchImg) 7
;7 8
static 
Icons 
( 
) 
{ 	
	s_FailImg 
= 
EditorGUIUtility (
.( )
IconContent) 4
(4 5
$str5 A
)A B
.B C
imageC H
asI K
	Texture2DL U
;U V
s_IgnoreImg 
= 
EditorGUIUtility *
.* +
IconContent+ 6
(6 7
$str7 D
)D E
.E F
imageF K
asL N
	Texture2DO X
;X Y
s_SuccessImg 
= 
EditorGUIUtility +
.+ ,
IconContent, 7
(7 8
$str8 D
)D E
.E F
imageF K
asL N
	Texture2DO X
;X Y
s_UnknownImg 
= 
EditorGUIUtility +
.+ ,
IconContent, 7
(7 8
$str8 D
)D E
.E F
imageF K
asL N
	Texture2DO X
;X Y
s_InconclusiveImg 
= 
EditorGUIUtility  0
.0 1
IconContent1 <
(< =
$str= O
)O P
.P Q
imageQ V
asW Y
	Texture2DZ c
;c d
s_StopwatchImg 
= 
EditorGUIUtility -
.- .
IconContent. 9
(9 :
$str: I
)I J
.J K
imageK P
asQ S
	Texture2DT ]
;] ^
} 	
} 
} Î
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\UnityTestProtocolListener.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class %
UnityTestProtocolListener ,
:- .
ScriptableObject/ ?
,? @

ICallbacksA K
{ 
private 
IUtpMessageReporter # 
m_UtpMessageReporter$ 8
;8 9
public

 %
UnityTestProtocolListener

 (
(

( )
)

) *
{ 	 
m_UtpMessageReporter  
=! "
new# &
UtpMessageReporter' 9
(9 :
new: =
UtpDebugLogger> L
(L M
)M N
)N O
;O P
} 	
public 
void 

RunStarted 
( 
ITestAdaptor +

testsToRun, 6
)6 7
{ 	 
m_UtpMessageReporter  
.  ! 
ReportTestRunStarted! 5
(5 6

testsToRun6 @
)@ A
;A B
} 	
public 
void 
RunFinished 
(  
ITestResultAdaptor  2
testResults3 >
)> ?
{ 	
} 	
public 
void 
TestStarted 
(  
ITestAdaptor  ,
test- 1
)1 2
{ 	 
m_UtpMessageReporter  
.  !
ReportTestStarted! 2
(2 3
test3 7
)7 8
;8 9
} 	
public 
void 
TestFinished  
(  !
ITestResultAdaptor! 3
result4 :
): ;
{ 	 
m_UtpMessageReporter    
.    !
ReportTestFinished  ! 3
(  3 4
result  4 :
)  : ;
;  ; <
}!! 	
}"" 
}## √*
¿D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\AndroidPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class  
AndroidPlatformSetup '
:( )
IPlatformSetup* 8
{ 
private		 
string		 &
m_oldApplicationIdentifier		 1
;		1 2
private

 
string

 $
m_oldDeviceSocketAddress

 /
;

/ 0
[ 	
SerializeField	 
] 
private 
bool 
m_Stripping  
;  !
public 
void 
Setup 
( 
) 
{ 	&
m_oldApplicationIdentifier &
=' (
PlayerSettings) 7
.7 8$
GetApplicationIdentifier8 P
(P Q
BuildTargetGroupQ a
.a b
Androidb i
)i j
;j k
PlayerSettings 
. $
SetApplicationIdentifier 3
(3 4
BuildTargetGroup4 D
.D E
AndroidE L
,L M
$strN s
)s t
;t u$
m_oldDeviceSocketAddress $
=% &#
EditorUserBuildSettings' >
.> ?&
androidDeviceSocketAddress? Y
;Y Z
var #
androidDeviceConnection '
=( )
Environment* 5
.5 6"
GetEnvironmentVariable6 L
(L M
$strM h
)h i
;i j#
EditorUserBuildSettings #
.# $#
waitForPlayerConnection$ ;
=< =
true> B
;B C
if 
( #
androidDeviceConnection '
!=( *
null+ /
)/ 0
{ #
EditorUserBuildSettings '
.' (&
androidDeviceSocketAddress( B
=C D#
androidDeviceConnectionE \
;\ ]
} 
m_Stripping 
= 
PlayerSettings (
.( )
stripEngineCode) 8
;8 9
PlayerSettings 
. 
stripEngineCode *
=+ ,
false- 2
;2 3
} 	
public 
void 
PostBuildAction #
(# $
)$ %
{ 	
PlayerSettings   
.   
stripEngineCode   *
=  + ,
m_Stripping  - 8
;  8 9
}!! 	
public## 
void## %
PostSuccessfulBuildAction## -
(##- .
)##. /
{$$ 	
}%% 	
public'' 
void'' &
PostSuccessfulLaunchAction'' .
(''. /
)''/ 0
{(( 	
var)) 
connectionResult))  
=))! "
-))# $
$num))$ %
;))% &
var** 
maxTryCount** 
=** 
$num**  
;**  !
var++ 
tryCount++ 
=++ 
maxTryCount++ &
;++& '
while,, 
(,, 
tryCount,, 
--,, 
>,, 
$num,,  !
&&,," $
connectionResult,,% 5
==,,6 8
-,,9 :
$num,,: ;
),,; <
{-- 
connectionResult..  
=..! "$
EditorConnectionInternal..# ;
...; <
ConnectPlayerProxy..< N
(..N O
	IPAddress..O X
...X Y
Loopback..Y a
...a b
ToString..b j
(..j k
)..k l
,..l m
$num..n s
)..s t
;..t u
if// 
(// 
EditorUtility// !
.//! "(
DisplayCancelableProgressBar//" >
(//> ?
$str//? R
,//R S
$str//T n
,//n o
$num00 
-00 
(00 
(00 
float00 
)00  
tryCount00  (
/00) *
maxTryCount00+ 6
)006 7
)007 8
)008 9
{11 
EditorUtility22 !
.22! "
ClearProgressBar22" 2
(222 3
)223 4
;224 5
throw33 
new33 %
TestLaunchFailedException33 7
(337 8
)338 9
;339 :
}44 
}55 
EditorUtility66 
.66 
ClearProgressBar66 *
(66* +
)66+ ,
;66, -
if77 
(77 
connectionResult77  
==77! #
-77$ %
$num77% &
)77& '
throw88 
new88 %
TestLaunchFailedException88 3
(883 4
$str99 x
)99x y
;99y z
}:: 	
public<< 
void<< 
CleanUp<< 
(<< 
)<< 
{== 	#
EditorUserBuildSettings>> #
.>># $&
androidDeviceSocketAddress>>$ >
=>>? @$
m_oldDeviceSocketAddress>>A Y
;>>Y Z
PlayerSettings?? 
.?? $
SetApplicationIdentifier?? 3
(??3 4
BuildTargetGroup??4 D
.??D E
Android??E L
,??L M&
m_oldApplicationIdentifier??N h
)??h i
;??i j
}@@ 	
}AA 
}BB ®
†D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestAdaptor.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public		 

	interface		 
ITestAdaptor		 !
{

 
string 
Id 
{ 
get 
; 
} 
string 
Name 
{ 
get 
; 
} 
string 
FullName 
{ 
get 
; 
}  
int 
TestCaseCount 
{ 
get 
;  
}! "
bool 
HasChildren 
{ 
get 
; 
}  !
bool 
IsSuite 
{ 
get 
; 
} 
IEnumerable 
< 
ITestAdaptor  
>  !
Children" *
{+ ,
get- 0
;0 1
}2 3
ITestAdaptor 
Parent 
{ 
get !
;! "
}# $
int 
TestCaseTimeout 
{ 
get !
;! "
}# $
	ITypeInfo 
TypeInfo 
{ 
get  
;  !
}" #
IMethodInfo   
Method   
{   
get    
;    !
}  " #
string"" 
["" 
]"" 

Categories"" 
{"" 
get"" !
;""! "
}""# $
bool$$ 
IsTestAssembly$$ 
{$$ 
get$$ !
;$$! "
}$$# $
RunState&& 
RunState&& 
{&& 
get&& 
;&&  
}&&! "
string(( 
Description(( 
{(( 
get((  
;((  !
}((" #
string** 

SkipReason** 
{** 
get** 
;**  
}**! "
string,, 
ParentId,, 
{,, 
get,, 
;,, 
},,  
string.. 
ParentFullName.. 
{.. 
get..  #
;..# $
}..% &
string00 

UniqueName00 
{00 
get00 
;00  
}00! "
string22 
ParentUniqueName22 
{22  !
get22" %
;22% &
}22' (
int44 

ChildIndex44 
{44 
get44 
;44 
}44 
TestMode66 
TestMode66 
{66 
get66 
;66  
}66! "
}77 
}88 Ω
§D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestRunSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public		 

	interface		 
ITestRunSettings		 %
:		& '
IDisposable		( 3
{

 
void 
Apply 
( 
) 
; 
} 
} Ë
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ISettingsBuilder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
	interface 
ISettingsBuilder 
{ 
Api 
. 
ExecutionSettings %
BuildApiExecutionSettings 7
(7 8
string8 >
[> ?
]? @
commandLineArgsA P
)P Q
;Q R
ExecutionSettings "
BuildExecutionSettings 0
(0 1
string1 7
[7 8
]8 9
commandLineArgs: I
)I J
;J K
}		 
}

 õ
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\Filter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
[

 
Serializable

 
]

 
public 

class 
Filter 
{ 
[ 	
SerializeField	 
] 
public 
TestMode 
testMode  
;  !
[ 	
SerializeField	 
] 
public 
string 
[ 
] 
	testNames !
;! "
[ 	
SerializeField	 
] 
public 
string 
[ 
] 

groupNames "
;" #
[ 	
SerializeField	 
] 
public   
string   
[   
]   
categoryNames   %
;  % &
[$$ 	
SerializeField$$	 
]$$ 
public%% 
string%% 
[%% 
]%% 
assemblyNames%% %
;%%% &
[)) 	
SerializeField))	 
])) 
public** 
BuildTarget** 
?** 
targetPlatform** *
;*** +
internal,, #
RuntimeTestRunnerFilter,, (%
ToRuntimeTestRunnerFilter,,) B
(,,B C
bool,,C G
synchronousOnly,,H W
),,W X
{-- 	
return.. 
new.. #
RuntimeTestRunnerFilter.. .
(... /
)../ 0
{// 
	testNames00 
=00 
	testNames00 %
,00% &
categoryNames11 
=11 
categoryNames11  -
,11- .

groupNames22 
=22 

groupNames22 '
,22' (
assemblyNames33 
=33 
assemblyNames33  -
,33- .
synchronousOnly44 
=44  !
synchronousOnly44" 1
}55 
;55 
}66 	
}77 
}88 ¥
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\TestJobDataHolder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
{ 
internal 
class 
TestJobDataHolder $
:% &
ScriptableSingleton' :
<: ;
TestJobDataHolder; L
>L M
{ 
[ 	
SerializeField	 
] 
public		 
List		 
<		 
TestJobData		 
>		  
TestRuns		! )
=		* +
new		, /
List		0 4
<		4 5
TestJobData		5 @
>		@ A
(		A B
)		B C
;		C D
[ 	"
InitializeOnLoadMethod	 
]  
private 
static 
void 
ResumeRunningJobs -
(- .
). /
{ 	
foreach 
( 
var 
testRun  
in! #
instance$ ,
., -
TestRuns- 5
.5 6
ToArray6 =
(= >
)> ?
)? @
{ 
if 
( 
testRun 
. 
	isRunning %
)% &
{ 
var 
runner 
=  
new! $
TestJobRunner% 2
(2 3
)3 4
;4 5
runner 
. 
RunJob !
(! "
testRun" )
)) *
;* +
} 
else 
{ 
instance 
. 
TestRuns %
.% &
Remove& ,
(, -
testRun- 4
)4 5
;5 6
} 
} 
} 	
} 
} ˛
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\CachingTestListProvider.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal		 
class		 #
CachingTestListProvider		 *
{

 
private 
readonly 
ITestListProvider *#
m_InnerTestListProvider+ B
;B C
private 
readonly 
ITestListCache '
m_TestListCache( 7
;7 8
private 
readonly 
ITestAdaptorFactory , 
m_TestAdaptorFactory- A
;A B
public #
CachingTestListProvider &
(& '
ITestListProvider' 8!
innerTestListProvider9 N
,N O
ITestListCacheP ^
testListCache_ l
,l m 
ITestAdaptorFactory	n Å 
testAdaptorFactory
Ç î
)
î ï
{ 	#
m_InnerTestListProvider #
=$ %!
innerTestListProvider& ;
;; <
m_TestListCache 
= 
testListCache +
;+ , 
m_TestAdaptorFactory  
=! "
testAdaptorFactory# 5
;5 6
} 	
public 
IEnumerator 
< 
ITestAdaptor '
>' (
GetTestListAsync) 9
(9 :
TestPlatform: F
platformG O
)O P
{ 	
var 
testFromCache 
= 
m_TestListCache  /
./ 0!
GetTestFromCacheAsync0 E
(E F
platformF N
)N O
;O P
while 
( 
testFromCache  
.  !
MoveNext! )
() *
)* +
)+ ,
{ 
yield 
return 
null !
;! "
} 
if 
( 
testFromCache 
. 
Current %
!=& (
null) -
)- .
{ 
yield   
return   
testFromCache   *
.  * +
Current  + 2
;  2 3
}!! 
else"" 
{## 
var$$ 
test$$ 
=$$ #
m_InnerTestListProvider$$ 2
.$$2 3
GetTestListAsync$$3 C
($$C D
platform$$D L
)$$L M
;$$M N
while%% 
(%% 
test%% 
.%% 
MoveNext%% $
(%%$ %
)%%% &
)%%& '
{&& 
yield'' 
return''  
null''! %
;''% &
}(( 
test** 
.** 
Current** 
.** "
ParseForNameDuplicates** 3
(**3 4
)**4 5
;**5 6
m_TestListCache++ 
.++  
	CacheTest++  )
(++) *
platform++* 2
,++2 3
test++4 8
.++8 9
Current++9 @
)++@ A
;++A B
yield,, 
return,,  
m_TestAdaptorFactory,, 1
.,,1 2
Create,,2 8
(,,8 9
test,,9 =
.,,= >
Current,,> E
),,E F
;,,F G
}-- 
}.. 	
}// 
}00 ›
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ICallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public 

	interface 

ICallbacks 
{ 
void 

RunStarted 
( 
ITestAdaptor $

testsToRun% /
)/ 0
;0 1
void 
RunFinished 
( 
ITestResultAdaptor +
result, 2
)2 3
;3 4
void 
TestStarted 
( 
ITestAdaptor %
test& *
)* +
;+ ,
void 
TestFinished 
( 
ITestResultAdaptor ,
result- 3
)3 4
;4 5
} 
} ÷
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\IEditorAssembliesProxy.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface "
IEditorAssembliesProxy -
{ 
IAssemblyWrapper 
[ 
] 
loadedAssemblies +
{, -
get. 1
;1 2
}3 4
} 
}		 †
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestMode.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
[ 
Flags 

]
 
public		 

enum		 
TestMode		 
{

 
EditMode 
= 
$num 
<< 
$num 
, 
PlayMode 
= 
$num 
<< 
$num 
} 
} ˛
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\LogSavingCallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
[ 
Serializable 
] 
internal		 
class		 
LogSavingCallbacks		 %
:		& '
ScriptableObject		( 8
,		8 9

ICallbacks		: D
{

 
public 
void 

RunStarted 
( 
ITestAdaptor +

testsToRun, 6
)6 7
{ 	%
RemotePlayerLogController %
.% &
instance& .
.. /
StartLogWriters/ >
(> ?
)? @
;@ A
} 	
public 
virtual 
void 
RunFinished '
(' (
ITestResultAdaptor( :
testResults; F
)F G
{ 	%
RemotePlayerLogController %
.% &
instance& .
.. /
StopLogWriters/ =
(= >
)> ?
;? @
} 	
public 
void 
TestStarted 
(  
ITestAdaptor  ,
test- 1
)1 2
{ 	
} 	
public 
void 
TestFinished  
(  !
ITestResultAdaptor! 3
result4 :
): ;
{ 	
} 	
} 
} ˇ
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\TestRunCanceledException.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
{ 
internal 
class $
TestRunCanceledException +
:, -
	Exception. 7
{ 
} 
}		 ó[
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListGuiHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{		 
internal

 
class

 
TestListGUIHelper

 $
{ 
private 
const 
string "
kResourcesTemplatePath 3
=4 5
$str6 Q
;Q R
private 
const 
string +
kAssemblyDefinitionTestTemplate <
== >
$str? r
;r s
private 
const 
string 3
'kAssemblyDefinitionEditModeTestTemplate D
=E F
$str G
;G H
private 
const 
string 
kTestScriptTemplate 0
=1 2
$str3 V
;V W
private 
const 
string 
kNewTestScriptName /
=0 1
$str2 D
;D E
private 
const 
string 
kNunit #
=$ %
$str& ;
;; <
[ 	
MenuItem	 
( 
$str ?
,? @
falseA F
,F G
$numH J
)J K
]K L
public 
static 
void 0
$MenuItemAddFolderAndAsmDefForTesting ?
(? @
)@ A
{ 	(
AddFolderAndAsmDefForTesting (
(( )
)) *
;* +
} 	
[ 	
MenuItem	 
( 
$str ?
,? @
trueA E
,E F
$numG I
)I J
]J K
public 
static 
bool >
2MenuItemAddFolderAndAsmDefForTestingWithValidation M
(M N
)N O
{ 	
return 
! .
"SelectedFolderContainsTestAssembly 6
(6 7
)7 8
;8 9
}   	
public"" 
static"" 
void"" (
AddFolderAndAsmDefForTesting"" 7
(""7 8
bool""8 <
isEditorOnly""= I
=""J K
false""L Q
)""Q R
{## 	
ProjectWindowUtil$$ 
.$$ %
CreateFolderWithTemplates$$ 7
($$7 8
$str$$8 ?
,$$? @
isEditorOnly%% 
?%% 3
'kAssemblyDefinitionEditModeTestTemplate%% F
:%%G H+
kAssemblyDefinitionTestTemplate%%I h
)%%h i
;%%i j
}&& 	
public(( 
static(( 
bool(( .
"SelectedFolderContainsTestAssembly(( =
(((= >
)((> ?
{)) 	
var** *
theNearestCustomScriptAssembly** .
=**/ 0-
!GetTheNearestCustomScriptAssembly**1 R
(**R S
)**S T
;**T U
if++ 
(++ *
theNearestCustomScriptAssembly++ .
!=++/ 1
null++2 6
)++6 7
{,, 
return-- *
theNearestCustomScriptAssembly-- 5
.--5 6!
PrecompiledReferences--6 K
!=--L N
null--O S
&&--T V*
theNearestCustomScriptAssembly--W u
.--u v"
PrecompiledReferences	--v ã
.
--ã å
Any
--å è
(
--è ê
x
--ê ë
=>
--í î
Path
--ï ô
.
--ô ö
GetFileName
--ö •
(
--• ¶
x
--¶ ß
)
--ß ®
==
--© ´
kNunit
--¨ ≤
)
--≤ ≥
;
--≥ ¥
}.. 
return00 
false00 
;00 
}11 	
[33 	
MenuItem33	 
(33 
$str33 8
,338 9
false33: ?
,33? @
$num33A C
)33C D
]33D E
public44 
static44 
void44 
AddTest44 "
(44" #
)44# $
{55 	
var66 
basePath66 
=66 
Path66 
.66  
Combine66  '
(66' (
EditorApplication66( 9
.669 :#
applicationContentsPath66: Q
,66Q R"
kResourcesTemplatePath66S i
)66i j
;66j k
var77 
destPath77 
=77 
Path77 
.77  
Combine77  '
(77' (
GetActiveFolderPath77( ;
(77; <
)77< =
,77= >
kNewTestScriptName77? Q
)77Q R
;77R S
var88 
templatePath88 
=88 
Path88 #
.88# $
Combine88$ +
(88+ ,
basePath88, 4
,884 5
kTestScriptTemplate886 I
)88I J
;88J K
var99 
icon99 
=99 
EditorGUIUtility99 '
.99' (
IconContent99( 3
(993 4
$str994 D
)99D E
.99E F
image99F K
as99L N
	Texture2D99O X
;99X Y
ProjectWindowUtil:: 
.:: 1
%StartNameEditingIfProjectWindowExists:: C
(::C D
$num::D E
,::E F
ScriptableObject;;  
.;;  !
CreateInstance;;! /
<;;/ 0
DoCreateScriptAsset;;0 C
>;;C D
(;;D E
);;E F
,;;F G
destPath;;H P
,;;P Q
icon;;R V
,;;V W
templatePath;;X d
);;d e
;;;e f
AssetDatabase== 
.== 
Refresh== !
(==! "
)==" #
;==# $
}>> 	
[@@ 	
MenuItem@@	 
(@@ 
$str@@ 8
,@@8 9
true@@: >
,@@> ?
$num@@@ B
)@@B C
]@@C D
publicAA 
staticAA 
boolAA (
CanAddScriptAndItWillCompileAA 7
(AA7 8
)AA8 9
{BB 	
returnCC 4
(CanAddEditModeTestScriptAndItWillCompileCC ;
(CC; <
)CC< =
||CC> @4
(CanAddPlayModeTestScriptAndItWillCompileCCA i
(CCi j
)CCj k
;CCk l
}DD 	
publicFF 
staticFF 
boolFF 4
(CanAddEditModeTestScriptAndItWillCompileFF C
(FFC D
)FFD E
{GG 	
varHH *
theNearestCustomScriptAssemblyHH .
=HH/ 0-
!GetTheNearestCustomScriptAssemblyHH1 R
(HHR S
)HHS T
;HHT U
ifII 
(II *
theNearestCustomScriptAssemblyII .
!=II/ 1
nullII2 6
)II6 7
{JJ 
returnKK 
(KK *
theNearestCustomScriptAssemblyKK 6
.KK6 7
AssemblyFlagsKK7 D
&KKE F
AssemblyFlagsKKG T
.KKT U

EditorOnlyKKU _
)KK_ `
==KKa c
AssemblyFlagsLL !
.LL! "

EditorOnlyLL" ,
;LL, -
}MM 
varOO 
activeFolderPathOO  
=OO! "
GetActiveFolderPathOO# 6
(OO6 7
)OO7 8
;OO8 9
returnPP 
activeFolderPathPP #
.PP# $
ToLowerPP$ +
(PP+ ,
)PP, -
.PP- .
ContainsPP. 6
(PP6 7
$strPP7 @
)PP@ A
;PPA B
}QQ 	
publicSS 
staticSS 
boolSS 4
(CanAddPlayModeTestScriptAndItWillCompileSS C
(SSC D
)SSD E
{TT 	
ifUU 
(UU 
PlayerSettingsUU 
.UU %
playModeTestRunnerEnabledUU 8
)UU8 9
{VV 
returnWW 
trueWW 
;WW 
}XX 
varZZ *
theNearestCustomScriptAssemblyZZ .
=ZZ/ 0-
!GetTheNearestCustomScriptAssemblyZZ1 R
(ZZR S
)ZZS T
;ZZT U
if\\ 
(\\ *
theNearestCustomScriptAssembly\\ .
==\\/ 1
null\\2 6
)\\6 7
{]] 
return^^ 
false^^ 
;^^ 
}__ 
varaa 
hasTestAssemblyFlagaa #
=aa$ %*
theNearestCustomScriptAssemblyaa& D
.aaD E!
PrecompiledReferencesaaE Z
!=aa[ ]
nullaa^ b
&&aac e+
theNearestCustomScriptAssembly	aaf Ñ
.
aaÑ Ö#
PrecompiledReferences
aaÖ ö
.
aaö õ
Any
aaõ û
(
aaû ü
x
aaü †
=>
aa° £
Path
aa§ ®
.
aa® ©
GetFileName
aa© ¥
(
aa¥ µ
x
aaµ ∂
)
aa∂ ∑
==
aa∏ ∫
kNunit
aaª ¡
)
aa¡ ¬
;
aa¬ √
;
aa√ ƒ
varbb 
editorOnlyAssemblybb "
=bb# $
(bb% &*
theNearestCustomScriptAssemblybb& D
.bbD E
AssemblyFlagsbbE R
&bbS T
AssemblyFlagsbbU b
.bbb c

EditorOnlybbc m
)bbm n
!=bbo q
$numbbr s
;bbs t
returndd 
hasTestAssemblyFlagdd &
&&dd' )
!dd* +
editorOnlyAssemblydd+ =
;dd= >
}ee 	
publicgg 
staticgg 
stringgg 
GetActiveFolderPathgg 0
(gg0 1
)gg1 2
{hh 	
varii 
pathii 
=ii 
$strii 
;ii  
foreachkk 
(kk 
varkk 
objkk 
inkk 
	Selectionkk  )
.kk) *
GetFilteredkk* 5
(kk5 6
typeofkk6 <
(kk< =
UnityEnginekk= H
.kkH I
ObjectkkI O
)kkO P
,kkP Q
SelectionModekkR _
.kk_ `
Assetskk` f
)kkf g
)kkg h
{ll 
pathmm 
=mm 
AssetDatabasemm $
.mm$ %
GetAssetPathmm% 1
(mm1 2
objmm2 5
)mm5 6
;mm6 7
ifnn 
(nn 
!nn 
stringnn 
.nn 
IsNullOrEmptynn )
(nn) *
pathnn* .
)nn. /
&&nn0 2
Filenn3 7
.nn7 8
Existsnn8 >
(nn> ?
pathnn? C
)nnC D
)nnD E
{oo 
pathpp 
=pp 
Pathpp 
.pp  
GetDirectoryNamepp  0
(pp0 1
pathpp1 5
)pp5 6
;pp6 7
breakqq 
;qq 
}rr 
}ss 
returntt 
pathtt 
;tt 
}uu 	
privateww 
staticww  
CustomScriptAssemblyww +-
!GetTheNearestCustomScriptAssemblyww, M
(wwM N
)wwN O
{xx 	 
CustomScriptAssemblyyy  2
&findCustomScriptAssemblyFromScriptPathyy! G
;yyG H
tryzz 
{{{ 2
&findCustomScriptAssemblyFromScriptPath|| 6
=||7 8&
EditorCompilationInterface}} .
.}}. /
Instance}}/ 7
.}}7 82
&FindCustomScriptAssemblyFromScriptPath}}8 ^
(}}^ _
Path~~ 
.~~ 
Combine~~ $
(~~$ %
GetActiveFolderPath~~% 8
(~~8 9
)~~9 :
,~~: ;
$str~~< D
)~~D E
)~~E F
;~~F G
} 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
)
ÄÄ 
{
ÅÅ 
return
ÇÇ 
null
ÇÇ 
;
ÇÇ 
}
ÉÉ 
return
ÑÑ 4
&findCustomScriptAssemblyFromScriptPath
ÑÑ 9
;
ÑÑ9 :
}
ÖÖ 	
}
ÜÜ 
}áá §
®D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunnerWindowSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class $
TestRunnerWindowSettings +
{ 
public 
bool 
verticalSplit !
;! "
private 
readonly 
string 

m_PrefsKey  *
;* +
public		 $
TestRunnerWindowSettings		 '
(		' (
string		( .
prefsKey		/ 7
)		7 8
{

 	

m_PrefsKey 
= 
prefsKey !
;! "
verticalSplit 
= 
EditorPrefs '
.' (
GetBool( /
(/ 0

m_PrefsKey0 :
+; <
$str= M
,M N
trueO S
)S T
;T U
} 	
public 
void 
ToggleVerticalSplit '
(' (
)( )
{ 	
verticalSplit 
= 
! 
verticalSplit *
;* +
Save 
( 
) 
; 
} 	
private 
void 
Save 
( 
) 
{ 	
EditorPrefs 
. 
SetBool 
(  

m_PrefsKey  *
++ ,
$str- =
,= >
verticalSplit? L
)L M
;M N
} 	
} 
} ä
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\LuminPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
LuminPlatformSetup %
:& '
IPlatformSetup( 6
{ 
private		 
const		 
string		 
kDeviceAddress		 +
=		, -
$str		. 9
;		9 :
private

 
const

 
int

 
kDevicePort

 %
=

& '
$num

( -
;

- .
public 
void 
Setup 
( 
) 
{ 	
} 	
public 
void 
PostBuildAction #
(# $
)$ %
{ 	
} 	
public 
void %
PostSuccessfulBuildAction -
(- .
). /
{ 	
} 	
public 
void &
PostSuccessfulLaunchAction .
(. /
)/ 0
{ 	
var 
connectionResult  
=! "
-# $
$num$ %
;% &
var 
maxTryCount 
= 
$num !
;! "
var 
tryCount 
= 
maxTryCount &
;& '
while 
( 
tryCount 
-- 
> 
$num  !
&&" $
connectionResult% 5
==6 8
-9 :
$num: ;
); <
{ 
Thread 
. 
Sleep 
( 
$num !
)! "
;" #
connectionResult    
=  ! "$
EditorConnectionInternal  # ;
.  ; <
ConnectPlayerProxy  < N
(  N O
kDeviceAddress  O ]
,  ] ^
kDevicePort  _ j
)  j k
;  k l
if!! 
(!! 
EditorUtility!! !
.!!! "(
DisplayCancelableProgressBar!!" >
(!!> ?
$str!!? R
,!!R S
$str!!T n
,!!n o
$num"" 
-"" 
("" 
("" 
float"" 
)""  
tryCount""  (
/"") *
maxTryCount""+ 6
)""6 7
)""7 8
)""8 9
{## 
EditorUtility$$ !
.$$! "
ClearProgressBar$$" 2
($$2 3
)$$3 4
;$$4 5
throw%% 
new%% %
TestLaunchFailedException%% 7
(%%7 8
)%%8 9
;%%9 :
}&& 
}'' 
EditorUtility(( 
.(( 
ClearProgressBar(( *
(((* +
)((+ ,
;((, -
if)) 
()) 
connectionResult))  
==))! #
-))$ %
$num))% &
)))& '
throw** 
new** %
TestLaunchFailedException** 3
(**3 4
$str++ x
)++x y
;++y z
},, 	
public.. 
void.. 
CleanUp.. 
(.. 
).. 
{// 	
}00 	
}11 
}22 ›
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\DelayedCallback.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
DelayedCallback "
{ 
private 
System 
. 
Action 

m_Callback (
;( )
private 
double 
m_CallbackTime %
;% &
private 
double 
m_Delay 
; 
public		 
DelayedCallback		 
(		 
System		 %
.		% &
Action		& ,
function		- 5
,		5 6
double		7 =
timeFromNow		> I
)		I J
{

 	

m_Callback 
= 
function !
;! "
m_CallbackTime 
= 
EditorApplication .
.. /
timeSinceStartup/ ?
+@ A
timeFromNowB M
;M N
m_Delay 
= 
timeFromNow !
;! "
EditorApplication 
. 
update $
+=% '
Update( .
;. /
} 	
public 
void 
Clear 
( 
) 
{ 	
EditorApplication 
. 
update $
-=% '
Update( .
;. /
m_CallbackTime 
= 
$num  
;  !

m_Callback 
= 
null 
; 
} 	
private 
void 
Update 
( 
) 
{ 	
if 
( 
EditorApplication !
.! "
timeSinceStartup" 2
>3 4
m_CallbackTime5 C
)C D
{ 
var 
callback 
= 

m_Callback )
;) *
Clear 
( 
) 
; 
callback   
?   
.   
Invoke    
(    !
)  ! "
;  " #
}!! 
}"" 	
public$$ 
void$$ 
Reset$$ 
($$ 
)$$ 
{%% 	
if&& 
(&& 

m_Callback&& 
!=&& 
null&& "
)&&" #
{'' 
m_CallbackTime(( 
=((  
EditorApplication((! 2
.((2 3
timeSinceStartup((3 C
+((D E
m_Delay((F M
;((M N
})) 
}** 	
}++ 
},, Á%
£D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\CallbacksHolder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
class 
CallbacksHolder "
:# $
ScriptableSingleton% 8
<8 9
CallbacksHolder9 H
>H I
,I J
ICallbacksHolderK [
{ 
private		 
List		 
<		  
CallbackWithPriority		 )
>		) *
m_Callbacks		+ 6
=		7 8
new		9 <
List		= A
<		A B 
CallbackWithPriority		B V
>		V W
(		W X
)		X Y
;		Y Z
public

 
void

 
Add

 
(

 

ICallbacks

 "
callback

# +
,

+ ,
int

- 0
priority

1 9
)

9 :
{ 	
m_Callbacks 
. 
Add 
( 
new  
CallbackWithPriority  4
(4 5
callback5 =
,= >
priority? G
)G H
)H I
;I J
} 	
public 
void 
Remove 
( 

ICallbacks %
callback& .
). /
{ 	
m_Callbacks 
. 
	RemoveAll !
(! " 
callbackWithPriority" 6
=>7 9 
callbackWithPriority: N
.N O
CallbackO W
==X Z
callback[ c
)c d
;d e
} 	
public 

ICallbacks 
[ 
] 
GetAll "
(" #
)# $
{ 	
return 
m_Callbacks 
. 
OrderByDescending 0
(0 1
callback1 9
=>: <
callback= E
.E F
PriorityF N
)N O
.O P
SelectP V
(V W
callbackW _
=>` b
callbackc k
.k l
Callbackl t
)t u
.u v
ToArrayv }
(} ~
)~ 
;	 Ä
} 	
public 
void 
Clear 
( 
) 
{ 	
m_Callbacks 
. 
Clear 
( 
) 
;  
} 	
private 
struct  
CallbackWithPriority +
{ 	
public   

ICallbacks   
Callback   &
;  & '
public!! 
int!! 
Priority!! 
;!!  
public""  
CallbackWithPriority"" '
(""' (

ICallbacks""( 2
callback""3 ;
,""; <
int""= @
priority""A I
)""I J
{## 
Callback$$ 
=$$ 
callback$$ #
;$$# $
Priority%% 
=%% 
priority%% #
;%%# $
}&& 
}'' 	
public.. 
IDisposable.. (
TemporarilySuppressCallbacks.. 7
(..7 8
)..8 9
{// 	
return00 
new00 

Suppressor00 !
(00! "
this00" &
)00& '
;00' (
}11 	
private33 
sealed33 
class33 

Suppressor33 '
:33( )
IDisposable33* 5
{44 	
private55 
readonly55 
CallbacksHolder55 ,
	_instance55- 6
;556 7
private66 
readonly66 
List66 !
<66! " 
CallbackWithPriority66" 6
>666 7
_suppressed668 C
;66C D
public88 

Suppressor88 
(88 
CallbacksHolder88 -
instance88. 6
)886 7
{99 
	_instance:: 
=:: 
instance:: $
;::$ %
_suppressed;; 
=;; 
new;; !
List;;" &
<;;& ' 
CallbackWithPriority;;' ;
>;;; <
(;;< =
instance;;= E
.;;E F
m_Callbacks;;F Q
);;Q R
;;;R S
instance<< 
.<< 
m_Callbacks<< $
.<<$ %
Clear<<% *
(<<* +
)<<+ ,
;<<, -
}== 
public?? 
void?? 
Dispose?? 
(??  
)??  !
{@@ 
	_instanceAA 
.AA 
m_CallbacksAA %
.AA% &
AddRangeAA& .
(AA. /
_suppressedAA/ :
)AA: ;
;AA; <
}BB 
}CC 	
}DD 
}EE ¥X
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ResultsWriter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{		 
internal

 
class

 
ResultsWriter

  
{ 
private 
const 
string 
k_nUnitVersion +
=, -
$str. 7
;7 8
private 
const 
string 
k_TestRunNode *
=+ ,
$str- 7
;7 8
private 
const 
string 
k_Id !
=" #
$str$ (
;( )
private 
const 
string 
k_Testcasecount ,
=- .
$str/ >
;> ?
private 
const 
string 
k_Result %
=& '
$str( 0
;0 1
private 
const 
string 
k_Total $
=% &
$str' .
;. /
private 
const 
string 
k_Passed %
=& '
$str( 0
;0 1
private 
const 
string 
k_Failed %
=& '
$str( 0
;0 1
private 
const 
string 
k_Inconclusive +
=, -
$str. <
;< =
private 
const 
string 
	k_Skipped &
=' (
$str) 2
;2 3
private 
const 
string 
	k_Asserts &
=' (
$str) 2
;2 3
private 
const 
string 
k_EngineVersion ,
=- .
$str/ ?
;? @
private 
const 
string 
k_ClrVersion )
=* +
$str, 9
;9 :
private 
const 
string 
k_StartTime (
=) *
$str+ 7
;7 8
private 
const 
string 
	k_EndTime &
=' (
$str) 3
;3 4
private 
const 
string 

k_Duration '
=( )
$str* 4
;4 5
private 
const 
string 
k_TimeFormat )
=* +
$str, /
;/ 0
public   
void   
WriteResultToFile   %
(  % &
ITestResultAdaptor  & 8
result  9 ?
,  ? @
string  A G
filePath  H P
)  P Q
{!! 	
Debug"" 
."" 
	LogFormat"" 
("" 
LogType"" #
.""# $
Log""$ '
,""' (
	LogOption"") 2
.""2 3
NoStacktrace""3 ?
,""? @
null""A E
,""E F
$str""G _
,""_ `
filePath""a i
)""i j
;""j k
try$$ 
{%% 
if&& 
(&& 
!&& 
	Directory&& 
.&& 
Exists&& %
(&&% &
filePath&&& .
)&&. /
)&&/ 0
{'' 
CreateDirectory(( #
(((# $
filePath(($ ,
)((, -
;((- .
})) 
using++ 
(++ 
var++ 

fileStream++ %
=++& '
File++( ,
.++, -

CreateText++- 7
(++7 8
filePath++8 @
)++@ A
)++A B
{,, 
WriteResultToStream-- '
(--' (
result--( .
,--. /

fileStream--0 :
)--: ;
;--; <
}.. 
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
Debug22 
.22 
LogError22 
(22 
$str22 ;
)22; <
;22< =
Debug33 
.33 
LogException33 "
(33" #
ex33# %
)33% &
;33& '
}44 
}55 	
void77 
CreateDirectory77 
(77 
string77 #
filePath77$ ,
)77, -
{88 	
var99 
driectoryPath99 
=99 
Path99  $
.99$ %
GetDirectoryName99% 5
(995 6
filePath996 >
)99> ?
;99? @
if:: 
(:: 
!:: 
String:: 
.:: 
IsNullOrEmpty:: %
(::% &
driectoryPath::& 3
)::3 4
)::4 5
{;; 
	Directory<< 
.<< 
CreateDirectory<< )
(<<) *
driectoryPath<<* 7
)<<7 8
;<<8 9
}== 
}>> 	
public@@ 
void@@ 
WriteResultToStream@@ '
(@@' (
ITestResultAdaptor@@( :
result@@; A
,@@A B
StreamWriter@@C O
streamWriter@@P \
,@@\ ]
XmlWriterSettings@@^ o
settings@@p x
=@@y z
null@@{ 
)	@@ Ä
{AA 	
settingsBB 
=BB 
settingsBB 
??BB  "
newBB# &
XmlWriterSettingsBB' 8
(BB8 9
)BB9 :
;BB: ;
settingsCC 
.CC 
IndentCC 
=CC 
trueCC "
;CC" #
settingsDD 
.DD 
NewLineOnAttributesDD (
=DD) *
falseDD+ 0
;DD0 1
usingFF 
(FF 
varFF 
	xmlWriterFF  
=FF! "
	XmlWriterFF# ,
.FF, -
CreateFF- 3
(FF3 4
streamWriterFF4 @
,FF@ A
settingsFFB J
)FFJ K
)FFK L
{GG 
WriteResultsToXmlHH !
(HH! "
resultHH" (
,HH( )
	xmlWriterHH* 3
)HH3 4
;HH4 5
}II 
}JJ 	
voidLL 
WriteResultsToXmlLL 
(LL 
ITestResultAdaptorLL 1
resultLL2 8
,LL8 9
	XmlWriterLL: C
	xmlWriterLLD M
)LLM N
{MM 	
varPP 
testRunNodePP 
=PP 
newPP !
TNodePP" '
(PP' (
k_TestRunNodePP( 5
)PP5 6
;PP6 7
testRunNodeRR 
.RR 
AddAttributeRR $
(RR$ %
k_IdRR% )
,RR) *
$strRR+ .
)RR. /
;RR/ 0
testRunNodeSS 
.SS 
AddAttributeSS $
(SS$ %
k_TestcasecountSS% 4
,SS4 5
(SS6 7
resultSS7 =
.SS= >
	PassCountSS> G
+SSH I
resultSSJ P
.SSP Q
	FailCountSSQ Z
+SS[ \
resultSS] c
.SSc d
	SkipCountSSd m
+SSn o
resultSSp v
.SSv w
InconclusiveCount	SSw à
)
SSà â
.
SSâ ä
ToString
SSä í
(
SSí ì
)
SSì î
)
SSî ï
;
SSï ñ
testRunNodeTT 
.TT 
AddAttributeTT $
(TT$ %
k_ResultTT% -
,TT- .
resultTT/ 5
.TT5 6
ResultStateTT6 A
.TTA B
ToStringTTB J
(TTJ K
)TTK L
)TTL M
;TTM N
testRunNodeUU 
.UU 
AddAttributeUU $
(UU$ %
k_TotalUU% ,
,UU, -
(UU. /
resultUU/ 5
.UU5 6
	PassCountUU6 ?
+UU@ A
resultUUB H
.UUH I
	FailCountUUI R
+UUS T
resultUUU [
.UU[ \
	SkipCountUU\ e
+UUf g
resultUUh n
.UUn o
InconclusiveCount	UUo Ä
)
UUÄ Å
.
UUÅ Ç
ToString
UUÇ ä
(
UUä ã
)
UUã å
)
UUå ç
;
UUç é
testRunNodeVV 
.VV 
AddAttributeVV $
(VV$ %
k_PassedVV% -
,VV- .
resultVV/ 5
.VV5 6
	PassCountVV6 ?
.VV? @
ToStringVV@ H
(VVH I
)VVI J
)VVJ K
;VVK L
testRunNodeWW 
.WW 
AddAttributeWW $
(WW$ %
k_FailedWW% -
,WW- .
resultWW/ 5
.WW5 6
	FailCountWW6 ?
.WW? @
ToStringWW@ H
(WWH I
)WWI J
)WWJ K
;WWK L
testRunNodeXX 
.XX 
AddAttributeXX $
(XX$ %
k_InconclusiveXX% 3
,XX3 4
resultXX5 ;
.XX; <
InconclusiveCountXX< M
.XXM N
ToStringXXN V
(XXV W
)XXW X
)XXX Y
;XXY Z
testRunNodeYY 
.YY 
AddAttributeYY $
(YY$ %
	k_SkippedYY% .
,YY. /
resultYY0 6
.YY6 7
	SkipCountYY7 @
.YY@ A
ToStringYYA I
(YYI J
)YYJ K
)YYK L
;YYL M
testRunNodeZZ 
.ZZ 
AddAttributeZZ $
(ZZ$ %
	k_AssertsZZ% .
,ZZ. /
resultZZ0 6
.ZZ6 7
AssertCountZZ7 B
.ZZB C
ToStringZZC K
(ZZK L
)ZZL M
)ZZM N
;ZZN O
testRunNode[[ 
.[[ 
AddAttribute[[ $
([[$ %
k_EngineVersion[[% 4
,[[4 5
k_nUnitVersion[[6 D
)[[D E
;[[E F
testRunNode\\ 
.\\ 
AddAttribute\\ $
(\\$ %
k_ClrVersion\\% 1
,\\1 2
Environment\\3 >
.\\> ?
Version\\? F
.\\F G
ToString\\G O
(\\O P
)\\P Q
)\\Q R
;\\R S
testRunNode]] 
.]] 
AddAttribute]] $
(]]$ %
k_StartTime]]% 0
,]]0 1
result]]2 8
.]]8 9
	StartTime]]9 B
.]]B C
ToString]]C K
(]]K L
k_TimeFormat]]L X
)]]X Y
)]]Y Z
;]]Z [
testRunNode^^ 
.^^ 
AddAttribute^^ $
(^^$ %
	k_EndTime^^% .
,^^. /
result^^0 6
.^^6 7
EndTime^^7 >
.^^> ?
ToString^^? G
(^^G H
k_TimeFormat^^H T
)^^T U
)^^U V
;^^V W
testRunNode__ 
.__ 
AddAttribute__ $
(__$ %

k_Duration__% /
,__/ 0
result__1 7
.__7 8
Duration__8 @
.__@ A
ToString__A I
(__I J
)__J K
)__K L
;__L M
varaa 

resultNodeaa 
=aa 
resultaa #
.aa# $
ToXmlaa$ )
(aa) *
)aa* +
;aa+ ,
testRunNodebb 
.bb 

ChildNodesbb "
.bb" #
Addbb# &
(bb& '

resultNodebb' 1
)bb1 2
;bb2 3
testRunNodedd 
.dd 
WriteTodd 
(dd  
	xmlWriterdd  )
)dd) *
;dd* +
}ee 	
}ff 
}gg ÿ0
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\RemotePlayerLogController.cs
	namespace 	
UnityEditor
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
 %
RemotePlayerLogController

 ,
:

- .
ScriptableSingleton

/ B
<

B C%
RemotePlayerLogController

C \
>

\ ]
{ 
private 
List 
< 
	LogWriter 
> 
m_LogWriters  ,
;, -
private 

Dictionary 
< 
string !
,! ""
DeploymentTargetLogger# 9
>9 :
	m_Loggers; D
;D E
private 
string !
m_DeviceLogsDirectory ,
;, -
public 
void 
SetBuildTarget "
(" #
BuildTarget# .
buildTarget/ :
): ;
{ 	
	m_Loggers 
= &
GetDeploymentTargetLoggers 2
(2 3
buildTarget3 >
)> ?
;? @
if 
( 
	m_Loggers 
== 
null !
)! "
Debug 
. 
Log 
( 
$str I
)I J
;J K
} 	
public 
void 
SetLogsDirectory $
($ %
string% +
dir, /
)/ 0
{ 	!
m_DeviceLogsDirectory !
=" #
dir$ '
;' (
} 	
public 
void 
StartLogWriters #
(# $
)$ %
{   	
if!! 
(!! !
m_DeviceLogsDirectory!! %
==!!& (
null!!) -
||!!. 0
	m_Loggers!!1 :
==!!; =
null!!> B
)!!B C
return"" 
;"" 
m_LogWriters$$ 
=$$ 
new$$ 
List$$ #
<$$# $
	LogWriter$$$ -
>$$- .
($$. /
)$$/ 0
;$$0 1
foreach&& 
(&& 
var&& 
logger&& 
in&&  "
	m_Loggers&&# ,
)&&, -
{'' 
m_LogWriters(( 
.(( 
Add((  
(((  !
new((! $
	LogWriter((% .
(((. /!
m_DeviceLogsDirectory((/ D
,((D E
logger((F L
.((L M
Key((M P
,((P Q
logger((R X
.((X Y
Value((Y ^
)((^ _
)((_ `
;((` a
logger)) 
.)) 
Value)) 
.)) 
Start)) "
())" #
)))# $
;))$ %
}** 
}++ 	
public-- 
void-- 
StopLogWriters-- "
(--" #
)--# $
{.. 	
if// 
(// 
m_LogWriters// 
==// 
null//  $
)//$ %
return00 
;00 
foreach22 
(22 
var22 
	logWriter22 "
in22# %
m_LogWriters22& 2
)222 3
{33 
	logWriter44 
.44 
Stop44 
(44 
)44  
;44  !
}55 
}66 	
private88 

Dictionary88 
<88 
string88 !
,88! ""
DeploymentTargetLogger88# 9
>889 :&
GetDeploymentTargetLoggers88; U
(88U V
BuildTarget88V a
buildTarget88b m
)88m n
{99 	#
DeploymentTargetManager:: ##
deploymentTargetManager::$ ;
;::; <
try<< 
{== #
deploymentTargetManager>> '
=>>( )#
DeploymentTargetManager>>* A
.>>A B
CreateInstance>>B P
(>>P Q#
EditorUserBuildSettings>>Q h
.>>h i"
activeBuildTargetGroup>>i 
,	>> Ä
buildTarget
>>Å å
)
>>å ç
;
>>ç é
if@@ 
(@@ #
deploymentTargetManager@@ +
==@@, .
null@@/ 3
)@@3 4
returnAA 
nullAA 
;AA  
}BB 
catchCC 
(CC !
NotSupportedExceptionCC (
exCC) +
)CC+ ,
{DD 
DebugEE 
.EE 
LogEE 
(EE 
exEE 
.EE 
MessageEE $
)EE$ %
;EE% &
DebugFF 
.FF 
LogFF 
(FF 
$strFF D
)FFD E
;FFE F
returnGG 
nullGG 
;GG 
}HH 
varJJ 
targetsJJ 
=JJ #
deploymentTargetManagerJJ 1
.JJ1 2
GetKnownTargetsJJ2 A
(JJA B
)JJB C
;JJC D
varKK 
loggersKK 
=KK 
newKK 

DictionaryKK (
<KK( )
stringKK) /
,KK/ 0"
DeploymentTargetLoggerKK1 G
>KKG H
(KKH I
)KKI J
;KKJ K
foreachMM 
(MM 
varMM 
targetMM 
inMM  "
targetsMM# *
)MM* +
{NN 
ifOO 
(OO 
targetOO 
.OO 
statusOO !
!=OO" $"
DeploymentTargetStatusOO% ;
.OO; <
ReadyOO< A
)OOA B
continueOOC K
;OOK L
varQQ 
loggerQQ 
=QQ #
deploymentTargetManagerQQ 4
.QQ4 5
GetTargetLoggerQQ5 D
(QQD E
targetQQE K
.QQK L
idQQL N
)QQN O
;QQO P
loggerRR 
.RR 
ClearRR 
(RR 
)RR 
;RR 
loggersSS 
.SS 
AddSS 
(SS 
targetSS "
.SS" #
idSS# %
,SS% &
loggerSS' -
)SS- .
;SS. /
}TT 
returnVV 
loggersVV 
;VV 
}WW 	
}XX 
}YY Ü
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestTreeRebuildCallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
	interface %
ITestTreeRebuildCallbacks 0
:1 2

ICallbacks3 =
{ 
void 
TestTreeRebuild 
( 
ITestAdaptor )
test* .
). /
;/ 0
} 
} £
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\ITestListCache.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
	interface 
ITestListCache 
{		 
void

 
	CacheTest

 
(

 
TestPlatform

 #
platform

$ ,
,

, -
ITest

. 3
test

4 8
)

8 9
;

9 :
IEnumerator 
< 
ITestAdaptor  
>  !!
GetTestFromCacheAsync" 7
(7 8
TestPlatform8 D
platformE M
)M N
;N O
} 
} Ì
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ExitCallbacksDataHolder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal 
class #
ExitCallbacksDataHolder *
:+ ,
ScriptableSingleton- @
<@ A#
ExitCallbacksDataHolderA X
>X Y
{ 
[ 	
SerializeField	 
] 
public 
bool 
AnyTestsExecuted $
;$ %
[		 	
SerializeField			 
]		 
public

 
bool

 
	RunFailed

 
;

 
} 
} ü=
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlayerLauncherContextSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class )
PlayerLauncherContextSettings 0
:1 2
IDisposable3 >
{		 
private

 
ITestRunSettings

  
m_OverloadSettings

! 3
;

3 4
private $
EditorBuildSettingsScene (
[( )
]) *!
m_EditorBuildSettings+ @
;@ A
private #
ResolutionDialogSetting '%
m_DisplayResolutionDialog( A
;A B
private 
bool 
m_RunInBackground &
;& '
private 
FullScreenMode 
m_FullScreenMode /
;/ 0
private 
bool 
m_ResizableWindow &
;& '
private 
bool #
m_ShowUnitySplashScreen ,
;, -
private 
string 
m_OldproductName '
;' (
private 
string 
m_OldAotOptions &
;& '
private 
Lightmapping 
. 
GIWorkflowMode +
m_OldLightmapping, =
;= >
private 
bool  
m_explicitNullChecks )
;) *
private 
bool 

m_Disposed 
;  
public )
PlayerLauncherContextSettings ,
(, -
ITestRunSettings- =
overloadSettings> N
)N O
{ 	
m_OverloadSettings 
=  
overloadSettings! 1
;1 2"
SetupProjectParameters   "
(  " #
)  # $
;  $ %
if"" 
("" 
overloadSettings""  
!=""! #
null""$ (
)""( )
{## 
overloadSettings$$  
.$$  !
Apply$$! &
($$& '
)$$' (
;$$( )
}%% 
}&& 	
public(( 
void(( 
Dispose(( 
((( 
)(( 
{)) 	
if** 
(** 
!** 

m_Disposed** 
)** 
{++ $
CleanupProjectParameters,, (
(,,( )
),,) *
;,,* +
if-- 
(-- 
m_OverloadSettings-- &
!=--' )
null--* .
)--. /
{.. 
m_OverloadSettings// &
.//& '
Dispose//' .
(//. /
)/// 0
;//0 1
}00 

m_Disposed22 
=22 
true22 !
;22! "
}33 
}44 	
private66 
void66 "
SetupProjectParameters66 +
(66+ ,
)66, -
{77 	
EditorApplication88 
.88  
LockReloadAssemblies88 2
(882 3
)883 4
;884 5!
m_EditorBuildSettings:: !
=::" #
EditorBuildSettings::$ 7
.::7 8
scenes::8 >
;::> ?%
m_DisplayResolutionDialog== %
===& '
PlayerSettings==( 6
.==6 7#
displayResolutionDialog==7 N
;==N O
PlayerSettings>> 
.>> #
displayResolutionDialog>> 2
=>>3 4#
ResolutionDialogSetting>>5 L
.>>L M
Disabled>>M U
;>>U V
m_RunInBackgroundAA 
=AA 
PlayerSettingsAA  .
.AA. /
runInBackgroundAA/ >
;AA> ?
PlayerSettingsBB 
.BB 
runInBackgroundBB *
=BB+ ,
trueBB- 1
;BB1 2
m_FullScreenModeDD 
=DD 
PlayerSettingsDD -
.DD- .
fullScreenModeDD. <
;DD< =
PlayerSettingsEE 
.EE 
fullScreenModeEE )
=EE* +
FullScreenModeEE, :
.EE: ;
WindowedEE; C
;EEC D
m_OldAotOptionsGG 
=GG 
PlayerSettingsGG ,
.GG, -

aotOptionsGG- 7
;GG7 8
PlayerSettingsHH 
.HH 

aotOptionsHH %
=HH& '
$strHH( ?
;HH? @
m_ResizableWindowJJ 
=JJ 
PlayerSettingsJJ  .
.JJ. /
resizableWindowJJ/ >
;JJ> ?
PlayerSettingsKK 
.KK 
resizableWindowKK *
=KK+ ,
trueKK- 1
;KK1 2#
m_ShowUnitySplashScreenMM #
=MM$ %
PlayerSettingsMM& 4
.MM4 5
SplashScreenMM5 A
.MMA B
showMMB F
;MMF G
PlayerSettingsNN 
.NN 
SplashScreenNN '
.NN' (
showNN( ,
=NN- .
falseNN/ 4
;NN4 5
m_OldproductNamePP 
=PP 
PlayerSettingsPP -
.PP- .
productNamePP. 9
;PP9 :
PlayerSettingsQQ 
.QQ 
productNameQQ &
=QQ' (
stringQQ) /
.QQ/ 0
JoinQQ0 4
(QQ4 5
$strQQ5 8
,QQ8 9
ApplicationQQ: E
.QQE F
productNameQQF Q
.QQQ R
SplitQQR W
(QQW X
PathQQX \
.QQ\ ]#
GetInvalidFileNameCharsQQ] t
(QQt u
)QQu v
)QQv w
)QQw x
;QQx y
m_OldLightmappingTT 
=TT 
LightmappingTT  ,
.TT, -
giWorkflowModeTT- ;
;TT; <
LightmappingUU 
.UU 
giWorkflowModeUU '
=UU( )
LightmappingUU* 6
.UU6 7
GIWorkflowModeUU7 E
.UUE F
OnDemandUUF N
;UUN O 
m_explicitNullChecksXX  
=XX! "#
EditorUserBuildSettingsXX# :
.XX: ;
explicitNullChecksXX; M
;XXM N#
EditorUserBuildSettingsYY #
.YY# $
explicitNullChecksYY$ 6
=YY7 8
trueYY9 =
;YY= >
}ZZ 	
private\\ 
void\\ $
CleanupProjectParameters\\ -
(\\- .
)\\. /
{]] 	
EditorBuildSettings^^ 
.^^  
scenes^^  &
=^^' (!
m_EditorBuildSettings^^) >
;^^> ?
PlayerSettings`` 
.`` 
fullScreenMode`` )
=``* +
m_FullScreenMode``, <
;``< =
PlayerSettingsaa 
.aa 
runInBackgroundaa *
=aa+ ,
m_RunInBackgroundaa- >
;aa> ?
PlayerSettingscc 
.cc #
displayResolutionDialogcc 2
=cc3 4%
m_DisplayResolutionDialogcc5 N
;ccN O
PlayerSettingsee 
.ee 
resizableWindowee *
=ee+ ,
m_ResizableWindowee- >
;ee> ?
PlayerSettingsff 
.ff 
SplashScreenff '
.ff' (
showff( ,
=ff- .#
m_ShowUnitySplashScreenff/ F
;ffF G
PlayerSettingsgg 
.gg 
productNamegg &
=gg' (
m_OldproductNamegg) 9
;gg9 :
PlayerSettingshh 
.hh 

aotOptionshh %
=hh& '
m_OldAotOptionshh( 7
;hh7 8
Lightmappingjj 
.jj 
giWorkflowModejj '
=jj( )
m_OldLightmappingjj* ;
;jj; <#
EditorUserBuildSettingsll #
.ll# $
explicitNullChecksll$ 6
=ll7 8 
m_explicitNullChecksll9 M
;llM N
EditorApplicationnn 
.nn "
UnlockReloadAssembliesnn 4
(nn4 5
)nn5 6
;nn6 7
}oo 	
}pp 
}qq »
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\CallbacksDelegatorListener.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
class &
CallbacksDelegatorListener -
:. /
ScriptableObject0 @
,@ A
ITestRunnerListenerB U
{ 
public 
void 

RunStarted 
( 
NUnit $
.$ %
	Framework% .
.. /

Interfaces/ 9
.9 :
ITest: ?

testsToRun@ J
)J K
{		 	
CallbacksDelegator

 
.

 
instance

 '
.

' (

RunStarted

( 2
(

2 3

testsToRun

3 =
)

= >
;

> ?
} 	
public 
void 
RunFinished 
(  
NUnit  %
.% &
	Framework& /
./ 0

Interfaces0 :
.: ;
ITestResult; F
testResultsG R
)R S
{ 	
CallbacksDelegator 
. 
instance '
.' (
RunFinished( 3
(3 4
testResults4 ?
)? @
;@ A
} 	
public 
void 
TestStarted 
(  
NUnit  %
.% &
	Framework& /
./ 0

Interfaces0 :
.: ;
ITest; @
testA E
)E F
{ 	
CallbacksDelegator 
. 
instance '
.' (
TestStarted( 3
(3 4
test4 8
)8 9
;9 :
} 	
public 
void 
TestFinished  
(  !
NUnit! &
.& '
	Framework' 0
.0 1

Interfaces1 ;
.; <
ITestResult< G
resultH N
)N O
{ 	
CallbacksDelegator 
. 
instance '
.' (
TestFinished( 4
(4 5
result5 ;
); <
;< =
} 	
} 
} à
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\IPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface 
IPlatformSetup %
{ 
void 
Setup 
( 
) 
; 
void 
PostBuildAction 
( 
) 
; 
void %
PostSuccessfulBuildAction &
(& '
)' (
;( )
void &
PostSuccessfulLaunchAction '
(' (
)( )
;) *
void		 
CleanUp		 
(		 
)		 
;		 
}

 
} ë
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestSettings\ITestSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface 
ITestSettings $
:% &
IDisposable' 2
{ #
ScriptingImplementation 
?  
scriptingBackend! 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
string		 
Architecture		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )!
ApiCompatibilityLevel 
? 

apiProfile )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
bool 
? '
appleEnableAutomaticSigning )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
string  
appleDeveloperTeamID #
{$ %
get& )
;) *
set+ .
;. /
}0 1#
ProvisioningProfileType 
?  ,
 iOSManualProvisioningProfileType! A
{B C
getD G
;G H
setI L
;L M
}N O
string *
iOSManualProvisioningProfileID -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;#
ProvisioningProfileType 
?  -
!tvOSManualProvisioningProfileType! B
{C D
getE H
;H I
setJ M
;M N
}O P
string +
tvOSManualProvisioningProfileID .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
void "
SetupProjectParameters #
(# $
)$ %
;% &
} 
} »U
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListBuilder\TestTreeViewBuilder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{		 
internal

 
class

 
TestTreeViewBuilder

 &
{ 
public 
List 
< 
TestRunnerResult $
>$ %
results& -
=. /
new0 3
List4 8
<8 9
TestRunnerResult9 I
>I J
(J K
)K L
;L M
private 
readonly 
List 
< 
TestRunnerResult .
>. /
m_OldTestResultList0 C
;C D
private 
readonly 
TestRunnerUIFilter +

m_UIFilter, 6
;6 7
private 
readonly 
ITestAdaptor %
m_TestListRoot& 4
;4 5
private 
readonly 
List 
< 
string $
>$ %!
m_AvailableCategories& ;
=< =
new> A
ListB F
<F G
stringG M
>M N
(N O
)O P
;P Q
public 
string 
[ 
] 
AvailableCategories +
{ 	
get 
{ 
return !
m_AvailableCategories .
.. /
Distinct/ 7
(7 8
)8 9
.9 :
OrderBy: A
(A B
aB C
=>D F
aG H
)H I
.I J
ToArrayJ Q
(Q R
)R S
;S T
}U V
} 	
public 
TestTreeViewBuilder "
(" #
ITestAdaptor# /
tests0 5
,5 6
List7 ;
<; <
TestRunnerResult< L
>L M 
oldTestResultResultsN b
,b c
TestRunnerUIFilterd v
uiFilterw 
)	 Ä
{ 	!
m_AvailableCategories !
.! "
Add" %
(% &"
CategoryFilterExtended& <
.< =
k_DefaultCategory= N
)N O
;O P
m_OldTestResultList 
=  ! 
oldTestResultResults" 6
;6 7
m_TestListRoot 
= 
tests "
;" #

m_UIFilter 
= 
uiFilter !
;! "
} 	
public   
TreeViewItem   
BuildTreeView   )
(  ) *
TestFilterSettings  * <
settings  = E
,  E F
bool  G K

sceneBased  L V
,  V W
string  X ^
	sceneName  _ h
)  h i
{!! 	
var"" 
rootItem"" 
="" 
new"" 
TreeViewItem"" +
(""+ ,
int"", /
.""/ 0
MaxValue""0 8
,""8 9
$num"": ;
,""; <
null""= A
,""A B
$str""C X
)""X Y
;""Y Z
ParseTestTree## 
(## 
$num## 
,## 
rootItem## %
,##% &
m_TestListRoot##' 5
)##5 6
;##6 7
return$$ 
rootItem$$ 
;$$ 
}%% 	
private'' 
bool'' #
IsFilteredOutByUIFilter'' ,
('', -
ITestAdaptor''- 9
test'': >
,''> ?
TestRunnerResult''@ P
result''Q W
)''W X
{(( 	
if)) 
()) 

m_UIFilter)) 
.)) 
PassedHidden)) '
&&))( *
result))+ 1
.))1 2
resultStatus))2 >
==))? A
TestRunnerResult))B R
.))R S
ResultStatus))S _
.))_ `
Passed))` f
)))f g
return** 
true** 
;** 
if++ 
(++ 

m_UIFilter++ 
.++ 
FailedHidden++ '
&&++( *
(+++ ,
result++, 2
.++2 3
resultStatus++3 ?
==++@ B
TestRunnerResult++C S
.++S T
ResultStatus++T `
.++` a
Failed++a g
||++h j
result++k q
.++q r
resultStatus++r ~
==	++ Å
TestRunnerResult
++Ç í
.
++í ì
ResultStatus
++ì ü
.
++ü †
Inconclusive
++† ¨
)
++¨ ≠
)
++≠ Æ
return,, 
true,, 
;,, 
if-- 
(-- 

m_UIFilter-- 
.-- 
NotRunHidden-- '
&&--( *
(--+ ,
result--, 2
.--2 3
resultStatus--3 ?
==--@ B
TestRunnerResult--C S
.--S T
ResultStatus--T `
.--` a
NotRun--a g
||--h j
result--k q
.--q r
resultStatus--r ~
==	-- Å
TestRunnerResult
--Ç í
.
--í ì
ResultStatus
--ì ü
.
--ü †
Skipped
--† ß
)
--ß ®
)
--® ©
return.. 
true.. 
;.. 
if// 
(// 

m_UIFilter// 
.// 
CategoryFilter// )
.//) *
Length//* 0
>//1 2
$num//3 4
)//4 5
return00 
!00 
test00 
.00 

Categories00 '
.00' (
Any00( +
(00+ ,
category00, 4
=>005 7

m_UIFilter008 B
.00B C
CategoryFilter00C Q
.00Q R
Contains00R Z
(00Z [
category00[ c
)00c d
)00d e
;00e f
return11 
false11 
;11 
}22 	
private44 
void44 
ParseTestTree44 "
(44" #
int44# &
depth44' ,
,44, -
TreeViewItem44. :
rootItem44; C
,44C D
ITestAdaptor44E Q
testElement44R ]
)44] ^
{55 	!
m_AvailableCategories66 !
.66! "
AddRange66" *
(66* +
testElement66+ 6
.666 7

Categories667 A
)66A B
;66B C
var88 
testElementId88 
=88 
testElement88  +
.88+ ,

UniqueName88, 6
;886 7
if99 
(99 
!99 
testElement99 
.99 
HasChildren99 (
)99( )
{:: 
var;; 
result;; 
=;; 
m_OldTestResultList;; 0
.;;0 1
FirstOrDefault;;1 ?
(;;? @
a;;@ A
=>;;B D
a;;E F
.;;F G
uniqueId;;G O
==;;P R
testElementId;;S `
);;` a
;;;a b
if== 
(== 
result== 
!=== 
null== "
&&==# %
(>> 
result>> 
.>> 
ignoredOrSkipped>> ,
||?? 
result?? 
.?? 
notRunnable?? *
||@@ 
testElement@@ #
.@@# $
RunState@@$ ,
==@@- /
RunState@@0 8
.@@8 9
NotRunnable@@9 D
||AA 
testElementAA #
.AA# $
RunStateAA$ ,
==AA- /
RunStateAA0 8
.AA8 9
IgnoredAA9 @
||BB 
testElementBB #
.BB# $
RunStateBB$ ,
==BB- /
RunStateBB0 8
.BB8 9
SkippedBB9 @
)CC 
)DD 
{EE 
resultGG 
=GG 
nullGG !
;GG! "
}HH 
ifII 
(II 
resultII 
==II 
nullII "
)II" #
{JJ 
resultKK 
=KK 
newKK  
TestRunnerResultKK! 1
(KK1 2
testElementKK2 =
)KK= >
;KK> ?
}LL 
resultsMM 
.MM 
AddMM 
(MM 
resultMM "
)MM" #
;MM# $
varOO 
testOO 
=OO 
newOO 
TestTreeViewItemOO /
(OO/ 0
testElementOO0 ;
,OO; <
depthOO= B
,OOB C
rootItemOOD L
)OOL M
;OOM N
ifPP 
(PP 
!PP #
IsFilteredOutByUIFilterPP ,
(PP, -
testElementPP- 8
,PP8 9
resultPP: @
)PP@ A
)PPA B
rootItemQQ 
.QQ 
AddChildQQ %
(QQ% &
testQQ& *
)QQ* +
;QQ+ ,
testRR 
.RR 
	SetResultRR 
(RR 
resultRR %
)RR% &
;RR& '
returnSS 
;SS 
}TT 
varVV 
groupResultVV 
=VV 
m_OldTestResultListVV 1
.VV1 2
FirstOrDefaultVV2 @
(VV@ A
aVVA B
=>VVC E
aVVF G
.VVG H
uniqueIdVVH P
==VVQ S
testElementIdVVT a
)VVa b
;VVb c
ifWW 
(WW 
groupResultWW 
==WW 
nullWW #
)WW# $
{XX 
groupResultYY 
=YY 
newYY !
TestRunnerResultYY" 2
(YY2 3
testElementYY3 >
)YY> ?
;YY? @
}ZZ 
results\\ 
.\\ 
Add\\ 
(\\ 
groupResult\\ #
)\\# $
;\\$ %
var]] 
group]] 
=]] 
new]] 
TestTreeViewItem]] ,
(]], -
testElement]]- 8
,]]8 9
depth]]: ?
,]]? @
rootItem]]A I
)]]I J
;]]J K
group^^ 
.^^ 
	SetResult^^ 
(^^ 
groupResult^^ '
)^^' (
;^^( )
depth`` 
++`` 
;`` 
foreachaa 
(aa 
varaa 
childaa 
inaa !
testElementaa" -
.aa- .
Childrenaa. 6
)aa6 7
{bb 
ParseTestTreecc 
(cc 
depthcc #
,cc# $
groupcc% *
,cc* +
childcc, 1
)cc1 2
;cc2 3
}dd 
ifgg 
(gg 
testElementgg 
.gg 
IsTestAssemblygg *
&&gg+ -
!gg. /
testElementgg/ :
.gg: ;
HasChildrengg; F
)ggF G
returnhh 
;hh 
ifjj 
(jj 
groupjj 
.jj 
hasChildrenjj !
)jj! "
rootItemkk 
.kk 
AddChildkk !
(kk! "
groupkk" '
)kk' (
;kk( )
}ll 	
}mm 
}nn ∆í
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\SettingsBuilder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal		 
class		 
SettingsBuilder		 "
:		# $
ISettingsBuilder		% 5
{

 
private %
ITestSettingsDeserializer )&
m_TestSettingsDeserializer* D
;D E
private 
Action 
< 
string 
> 
m_LogAction *
;* +
private 
Action 
< 
string 
> 
m_LogWarningAction 1
;1 2
private 
Func 
< 
string 
, 
bool !
>! "
m_FileExistsCheck# 4
;4 5
private 
Func 
< 
bool 
> *
m_ScriptCompilationFailedCheck 9
;9 :
public 
SettingsBuilder 
( %
ITestSettingsDeserializer 8$
testSettingsDeserializer9 Q
,Q R
ActionS Y
<Y Z
stringZ `
>` a
	logActionb k
,k l
Actionm s
<s t
stringt z
>z {
logWarningAction	| å
,
å ç
Func
é í
<
í ì
string
ì ô
,
ô ö
bool
õ ü
>
ü †
fileExistsCheck
° ∞
,
∞ ±
Func
≤ ∂
<
∂ ∑
bool
∑ ª
>
ª º*
scriptCompilationFailedCheck
Ω Ÿ
)
Ÿ ⁄
{ 	
m_LogAction 
= 
	logAction #
;# $
m_LogWarningAction 
=  
logWarningAction! 1
;1 2
m_FileExistsCheck 
= 
fileExistsCheck  /
;/ 0*
m_ScriptCompilationFailedCheck *
=+ ,(
scriptCompilationFailedCheck- I
;I J&
m_TestSettingsDeserializer &
=' ($
testSettingsDeserializer) A
;A B
} 	
public 
Api 
. 
ExecutionSettings $%
BuildApiExecutionSettings% >
(> ?
string? E
[E F
]F G
commandLineArgsH W
)W X
{ 	
var 
quit 
= 
false 
; 
string 
testPlatform 
=  !
TestMode" *
.* +
EditMode+ 3
.3 4
ToString4 <
(< =
)= >
;> ?
string 
[ 
] 
testFilters  
=! "
null# '
;' (
string 
[ 
] 
testCategories #
=$ %
null& *
;* +
string  
testSettingsFilePath '
=( )
null* .
;. /
int   
testRepetitions   
=    !
$num  " #
;  # $
int!! 
?!! "
playerHeartbeatTimeout!! '
=!!( )
null!!* .
;!!. /
bool"" 
runSynchronously"" !
=""" #
false""$ )
;"") *
string## 
[## 
]## 
testAssemblyNames## &
=##' (
null##) -
;##- .
var%% 
	optionSet%% 
=%% 
new%%  
CommandLineOptionSet%%  4
(%%4 5
new&& 
CommandLineOption&& %
(&&% &
$str&&& ,
,&&, -
(&&. /
)&&/ 0
=>&&1 3
{&&4 5
quit&&6 :
=&&; <
true&&= A
;&&A B
}&&C D
)&&D E
,&&E F
new'' 
CommandLineOption'' %
(''% &
$str''& 4
,''4 5
platform''6 >
=>''? A
{''B C
testPlatform''D P
=''Q R
platform''S [
;''[ \
}''] ^
)''^ _
,''_ `
new(( 
CommandLineOption(( %
(((% &
$str((& 9
,((9 :
filters((; B
=>((C E
{((F G
testFilters((H S
=((T U
filters((V ]
;((] ^
}((_ `
)((` a
,((a b
new)) 
CommandLineOption)) %
())% &
$str))& 2
,))2 3
filters))4 ;
=>))< >
{))? @
testFilters))A L
=))M N
filters))O V
;))V W
}))X Y
)))Y Z
,))Z [
new** 
CommandLineOption** %
(**% &
$str**& =
,**= >

catagories**? I
=>**J L
{**M N
testCategories**O ]
=**^ _

catagories**` j
;**j k
}**l m
)**m n
,**n o
new++ 
CommandLineOption++ %
(++% &
$str++& 4
,++4 5

catagories++6 @
=>++A C
{++D E
testCategories++F T
=++U V

catagories++W a
;++a b
}++c d
)++d e
,++e f
new,, 
CommandLineOption,, %
(,,% &
$str,,& 8
,,,8 9
settingsFilePath,,: J
=>,,K M
{,,N O 
testSettingsFilePath,,P d
=,,e f
settingsFilePath,,g w
;,,w x
},,y z
),,z {
,,,{ |
new-- 
CommandLineOption-- %
(--% &
$str--& 7
,--7 8
reps--9 =
=>--> @
{--A B
testRepetitions--C R
=--S T
int--U X
.--X Y
Parse--Y ^
(--^ _
reps--_ c
)--c d
;--d e
}--f g
)--g h
,--h i
new.. 
CommandLineOption.. %
(..% &
$str..& >
,..> ?
timeout..@ G
=>..H J
{..K L"
playerHeartbeatTimeout..M c
=..d e
int..f i
...i j
Parse..j o
(..o p
timeout..p w
)..w x
;..x y
}..z {
)..{ |
,..| }
new// 
CommandLineOption// %
(//% &
$str//& 8
,//8 9
(//: ;
)//; <
=>//= ?
{//@ A
runSynchronously//B R
=//S T
true//U Y
;//Y Z
}//[ \
)//\ ]
,//] ^
new00 
CommandLineOption00 %
(00% &
$str00& 5
,005 6
assemblyNames007 D
=>00E G
{00H I
testAssemblyNames00J [
=00\ ]
assemblyNames00^ k
;00k l
}00m n
)00n o
)11 
;11 
	optionSet22 
.22 
Parse22 
(22 
commandLineArgs22 +
)22+ ,
;22, -+
DisplayQuitWarningIfQuitIsGiven44 +
(44+ ,
quit44, 0
)440 1
;441 2+
CheckForScriptCompilationErrors66 +
(66+ ,
)66, -
;66- .
LogParametersForRun88 
(88  
testPlatform88  ,
,88, -
testFilters88. 9
,889 :
testCategories88; I
,88I J 
testSettingsFilePath88K _
)88_ `
;88` a
var:: 
testSettings:: 
=:: 
GetTestSettings:: .
(::. / 
testSettingsFilePath::/ C
)::C D
;::D E
var<< 
filter<< 
=<< 
new<< 
Filter<< #
(<<# $
)<<$ %
{== 

groupNames>> 
=>> 
testFilters>> (
,>>( )
categoryNames?? 
=?? 
testCategories??  .
,??. /
assemblyNames@@ 
=@@ 
testAssemblyNames@@  1
}AA 
;AA 
varCC 
buildTargetCC 
=CC &
SetFilterAndGetBuildTargetCC 8
(CC8 9
testPlatformCC9 E
,CCE F
filterCCG M
)CCM N
;CCN O
RerunCallbackDataEE 
.EE 
instanceEE &
.EE& '

runFiltersEE' 1
=EE2 3
newEE4 7
[EE8 9
]EE9 :
{EE: ;
newEE; >
UITestRunnerFilterEE? Q
(EEQ R
)EER S
{FF 
categoryNamesGG 
=GG 
filterGG  &
.GG& '
categoryNamesGG' 4
,GG4 5

groupNamesHH 
=HH 
filterHH #
.HH# $

groupNamesHH$ .
,HH. /
testRepetitionsII 
=II  !
testRepetitionsII" 1
}JJ 
}JJ 
;JJ 
RerunCallbackDataLL 
.LL 
instanceLL &
.LL& '
testModeLL' /
=LL0 1
filterLL2 8
.LL8 9
testModeLL9 A
;LLA B
varNN 
settingsNN 
=NN 
newNN 
ApiNN "
.NN" #
ExecutionSettingsNN# 4
(NN4 5
)NN5 6
{OO 
filtersPP 
=PP 
newPP 
[PP 
]PP  
{PP  !
filterPP! '
}PP' (
,PP( )#
overloadTestRunSettingsQQ '
=QQ( )
newQQ* -
RunSettingsQQ. 9
(QQ9 :
testSettingsQQ: F
)QQF G
,QQG H
targetPlatformRR 
=RR  
buildTargetRR! ,
,RR, -
runSynchronouslySS  
=SS! "
runSynchronouslySS# 3
}TT 
;TT 
ifVV 
(VV "
playerHeartbeatTimeoutVV &
!=VV' )
nullVV* .
)VV. /
{WW 
settingsXX 
.XX "
playerHeartbeatTimeoutXX /
=XX0 1"
playerHeartbeatTimeoutXX2 H
.XXH I
ValueXXI N
;XXN O
}YY 
return[[ 
settings[[ 
;[[ 
}\\ 	
public^^ 
ExecutionSettings^^  "
BuildExecutionSettings^^! 7
(^^7 8
string^^8 >
[^^> ?
]^^? @
commandLineArgs^^A P
)^^P Q
{__ 	
string`` 
resultFilePath`` !
=``" #
null``$ (
;``( )
stringaa 
deviceLogsDirectoryaa &
=aa' (
nullaa) -
;aa- .
varcc 
	optionSetcc 
=cc 
newcc  
CommandLineOptionSetcc  4
(cc4 5
newdd 
CommandLineOptiondd %
(dd% &
$strdd& =
,dd= >
filePathdd? G
=>ddH J
{ddK L
resultFilePathddM [
=dd\ ]
filePathdd^ f
;ddf g
}ddh i
)ddi j
,ddj k
newee 
CommandLineOptionee %
(ee% &
$stree& 3
,ee3 4
filePathee5 =
=>ee> @
{eeA B
resultFilePatheeC Q
=eeR S
filePatheeT \
;ee\ ]
}ee^ _
)ee_ `
,ee` a
newff 
CommandLineOptionff %
(ff% &
$strff& 2
,ff2 3
dirPathff4 ;
=>ff< >
{ff? @
deviceLogsDirectoryffA T
=ffU V
dirPathffW ^
;ff^ _
}ff` a
)ffa b
)gg 
;gg 
	optionSethh 
.hh 
Parsehh 
(hh 
commandLineArgshh +
)hh+ ,
;hh, -
returnjj 
newjj 
ExecutionSettingsjj (
(jj( )
)jj) *
{kk 
TestResultsFilell 
=ll  !
resultFilePathll" 0
,ll0 1
DeviceLogsDirectorymm #
=mm$ %
deviceLogsDirectorymm& 9
}nn 
;nn 
}oo 	
voidqq +
DisplayQuitWarningIfQuitIsGivenqq ,
(qq, -
boolqq- 1
quitIsGivenqq2 =
)qq= >
{rr 	
ifss 
(ss 
quitIsGivenss 
)ss 
{tt 
m_LogWarningActionuu "
(uu" #
$struu# x
)uux y
;uuy z
}vv 
}ww 	
voidyy +
CheckForScriptCompilationErrorsyy ,
(yy, -
)yy- .
{zz 	
if{{ 
({{ *
m_ScriptCompilationFailedCheck{{ .
({{. /
){{/ 0
){{0 1
{|| 
throw}} 
new}} 
SetupException}} (
(}}( )
SetupException}}) 7
.}}7 8
ExceptionType}}8 E
.}}E F#
ScriptCompilationFailed}}F ]
)}}] ^
;}}^ _
}~~ 
} 	
void
ÅÅ !
LogParametersForRun
ÅÅ  
(
ÅÅ  !
string
ÅÅ! '
testPlatform
ÅÅ( 4
,
ÅÅ4 5
string
ÅÅ6 <
[
ÅÅ< =
]
ÅÅ= >
testFilters
ÅÅ? J
,
ÅÅJ K
string
ÅÅL R
[
ÅÅR S
]
ÅÅS T
testCategories
ÅÅU c
,
ÅÅc d
string
ÅÅe k#
testSettingsFilePathÅÅl Ä
)ÅÅÄ Å
{
ÇÇ 	
m_LogAction
ÉÉ 
(
ÉÉ 
$str
ÉÉ ,
+
ÉÉ- .
testPlatform
ÉÉ/ ;
)
ÉÉ; <
;
ÉÉ< =
if
ÑÑ 
(
ÑÑ 
testFilters
ÑÑ 
!=
ÑÑ 
null
ÑÑ #
&&
ÑÑ$ &
testFilters
ÑÑ' 2
.
ÑÑ2 3
Length
ÑÑ3 9
>
ÑÑ: ;
$num
ÑÑ< =
)
ÑÑ= >
{
ÖÖ 
m_LogAction
ÜÜ 
(
ÜÜ 
$str
ÜÜ 0
+
ÜÜ1 2
string
ÜÜ3 9
.
ÜÜ9 :
Join
ÜÜ: >
(
ÜÜ> ?
$str
ÜÜ? C
,
ÜÜC D
testFilters
ÜÜE P
)
ÜÜP Q
)
ÜÜQ R
;
ÜÜR S
}
áá 
if
àà 
(
àà 
testCategories
àà 
!=
àà !
null
àà" &
&&
àà' )
testCategories
àà* 8
.
àà8 9
Length
àà9 ?
>
àà@ A
$num
ààB C
)
ààC D
{
ââ 
m_LogAction
ää 
(
ää 
$str
ää 4
+
ää5 6
string
ää7 =
.
ää= >
Join
ää> B
(
ääB C
$str
ääC G
,
ääG H
testCategories
ääI W
)
ääW X
)
ääX Y
;
ääY Z
}
ãã 
if
åå 
(
åå 
!
åå 
string
åå 
.
åå 
IsNullOrEmpty
åå %
(
åå% &"
testSettingsFilePath
åå& :
)
åå: ;
)
åå; <
{
çç 
m_LogAction
éé 
(
éé 
$str
éé 7
+
éé8 9"
testSettingsFilePath
éé: N
)
ééN O
;
ééO P
}
èè 
}
êê 	
ITestSettings
íí 
GetTestSettings
íí %
(
íí% &
string
íí& ,"
testSettingsFilePath
íí- A
)
ííA B
{
ìì 	
ITestSettings
îî 
testSettings
îî &
=
îî' (
null
îî) -
;
îî- .
if
ïï 
(
ïï 
!
ïï 
string
ïï 
.
ïï 
IsNullOrEmpty
ïï %
(
ïï% &"
testSettingsFilePath
ïï& :
)
ïï: ;
)
ïï; <
{
ññ 
if
óó 
(
óó 
!
óó 
m_FileExistsCheck
óó &
(
óó& '"
testSettingsFilePath
óó' ;
)
óó; <
)
óó< =
{
òò 
throw
ôô 
new
ôô 
SetupException
ôô ,
(
ôô, -
SetupException
ôô- ;
.
ôô; <
ExceptionType
ôô< I
.
ôôI J&
TestSettingsFileNotFound
ôôJ b
,
ôôb c"
testSettingsFilePath
ôôd x
)
ôôx y
;
ôôy z
}
öö 
testSettings
úú 
=
úú (
m_TestSettingsDeserializer
úú 9
.
úú9 :%
GetSettingsFromJsonFile
úú: Q
(
úúQ R"
testSettingsFilePath
úúR f
)
úúf g
;
úúg h
}
ùù 
return
ûû 
testSettings
ûû 
;
ûû  
}
üü 	
static
°° 
BuildTarget
°° 
?
°° (
SetFilterAndGetBuildTarget
°° 6
(
°°6 7
string
°°7 =
testPlatform
°°> J
,
°°J K
Filter
°°L R
filter
°°S Y
)
°°Y Z
{
¢¢ 	
BuildTarget
££ 
?
££ 
buildTarget
££ $
=
££% &
null
££' +
;
££+ ,
if
§§ 
(
§§ 
testPlatform
§§ 
.
§§ 
ToLower
§§ $
(
§§$ %
)
§§% &
==
§§' )
$str
§§* 4
)
§§4 5
{
•• 
filter
¶¶ 
.
¶¶ 
testMode
¶¶ 
=
¶¶  !
TestMode
¶¶" *
.
¶¶* +
EditMode
¶¶+ 3
;
¶¶3 4
}
ßß 
else
®® 
if
®® 
(
®® 
testPlatform
®® !
.
®®! "
ToLower
®®" )
(
®®) *
)
®®* +
==
®®, .
$str
®®/ 9
)
®®9 :
{
©© 
filter
™™ 
.
™™ 
testMode
™™ 
=
™™  !
TestMode
™™" *
.
™™* +
PlayMode
™™+ 3
;
™™3 4
}
´´ 
else
¨¨ 
{
≠≠ 
try
ÆÆ 
{
ØØ 
buildTarget
∞∞ 
=
∞∞  !
(
∞∞" #
BuildTarget
∞∞# .
)
∞∞. /
Enum
∞∞/ 3
.
∞∞3 4
Parse
∞∞4 9
(
∞∞9 :
typeof
∞∞: @
(
∞∞@ A
BuildTarget
∞∞A L
)
∞∞L M
,
∞∞M N
testPlatform
∞∞O [
,
∞∞[ \
true
∞∞] a
)
∞∞a b
;
∞∞b c
filter
≤≤ 
.
≤≤ 
testMode
≤≤ #
=
≤≤$ %
TestMode
≤≤& .
.
≤≤. /
PlayMode
≤≤/ 7
;
≤≤7 8
}
≥≥ 
catch
¥¥ 
(
¥¥ 
ArgumentException
¥¥ (
)
¥¥( )
{
µµ 
throw
∂∂ 
new
∂∂ 
SetupException
∂∂ ,
(
∂∂, -
SetupException
∂∂- ;
.
∂∂; <
ExceptionType
∂∂< I
.
∂∂I J
PlatformNotFound
∂∂J Z
,
∂∂Z [
testPlatform
∂∂\ h
)
∂∂h i
;
∂∂i j
}
∑∑ 
}
∏∏ 
return
ππ 
buildTarget
ππ 
;
ππ 
}
∫∫ 	
}
ªª 
}ºº ©8
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\LogWriter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{		 
internal

 
class

 
	LogWriter

 
:

 
IDisposable

 *
{ 
private 
string 
m_LogsDirectory &
;& '
private 
string 

m_DeviceID !
;! "
private 

Dictionary 
< 
string !
,! "
StreamWriter# /
>/ 0
m_LogStreams1 =
;= >
private "
DeploymentTargetLogger &
m_Logger' /
;/ 0
internal 
	LogWriter 
( 
string !
logsDirectory" /
,/ 0
string1 7
deviceID8 @
,@ A"
DeploymentTargetLoggerB X
loggerY _
)_ `
{ 	
m_LogStreams 
= 
new 

Dictionary )
<) *
string* 0
,0 1
StreamWriter2 >
>> ?
(? @
)@ A
;A B
m_Logger 
= 
logger 
; 
m_LogsDirectory 
= 
logsDirectory +
;+ ,

m_DeviceID 
= 
deviceID !
;! "
logger 
. 

logMessage 
+=  
WriteLogToFile! /
;/ 0
} 	
private 
void 
WriteLogToFile #
(# $
string$ *
id+ -
,- .
string/ 5
logLine6 =
)= >
{ 	
StreamWriter 
	logStream "
;" #
var 
streamExists 
= 
m_LogStreams +
.+ ,
TryGetValue, 7
(7 8
id8 :
,: ;
out< ?
	logStream@ I
)I J
;J K
if 
( 
! 
streamExists 
) 
{   
var!! 
filePath!! 
=!! 
GetLogFilePath!! -
(!!- .
m_LogsDirectory!!. =
,!!= >

m_DeviceID!!? I
,!!I J
id!!K M
)!!M N
;!!N O
	logStream"" 
="" 
CreateLogFile"" )
("") *
filePath""* 2
)""2 3
;""3 4
m_LogStreams$$ 
.$$ 
Add$$  
($$  !
id$$! #
,$$# $
	logStream$$% .
)$$. /
;$$/ 0
}%% 
try'' 
{(( 
if)) 
()) 
logLine)) 
!=)) 
null)) #
)))# $
	logStream** 
.** 
	WriteLine** '
(**' (
logLine**( /
)**/ 0
;**0 1
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
Debug.. 
... 
LogError.. 
(.. 
$".. !
Writing ..! )
{..) *
id..* ,
}.., -
 log failed...- 9
"..9 :
)..: ;
;..; <
Debug// 
.// 
LogException// "
(//" #
ex//# %
)//% &
;//& '
}00 
}11 	
public33 
void33 
Stop33 
(33 
)33 
{44 	
m_Logger55 
.55 
Stop55 
(55 
)55 
;55 
foreach66 
(66 
var66 
	logStream66 "
in66# %
m_LogStreams66& 2
)662 3
{77 
	logStream88 
.88 
Value88 
.88  
Close88  %
(88% &
)88& '
;88' (
}99 
}:: 	
public<< 
void<< 
Dispose<< 
(<< 
)<< 
{== 	
Stop>> 
(>> 
)>> 
;>> 
}?? 	
privateAA 
StreamWriterAA 
CreateLogFileAA *
(AA* +
stringAA+ 1
pathAA2 6
)AA6 7
{BB 	
DebugCC 
.CC 
	LogFormatCC 
(CC 
LogTypeCC #
.CC# $
LogCC$ '
,CC' (
	LogOptionCC) 2
.CC2 3
NoStacktraceCC3 ?
,CC? @
nullCCA E
,CCE F
$strCCG e
,CCe f

m_DeviceIDCCg q
,CCq r
pathCCs w
)CCw x
;CCx y
StreamWriterDD 
streamWriterDD %
=DD& '
nullDD( ,
;DD, -
tryEE 
{FF 
ifGG 
(GG 
!GG 
	DirectoryGG 
.GG 
ExistsGG %
(GG% &
pathGG& *
)GG* +
)GG+ ,
	DirectoryHH 
.HH 
CreateDirectoryHH -
(HH- .
PathHH. 2
.HH2 3
GetDirectoryNameHH3 C
(HHC D
pathHHD H
)HHH I
)HHI J
;HHJ K
streamWriterJJ 
=JJ 
FileJJ #
.JJ# $

CreateTextJJ$ .
(JJ. /
pathJJ/ 3
)JJ3 4
;JJ4 5
}KK 
catchLL 
(LL 
	ExceptionLL 
exLL 
)LL  
{MM 
DebugNN 
.NN 
LogErrorNN 
(NN 
$"NN ! 
Creating device log NN! 5
{NN5 6
pathNN6 :
}NN: ;
 file failed.NN; H
"NNH I
)NNI J
;NNJ K
DebugOO 
.OO 
LogExceptionOO "
(OO" #
exOO# %
)OO% &
;OO& '
}PP 
returnRR 
streamWriterRR 
;RR  
}SS 	
privateUU 
stringUU 
GetLogFilePathUU %
(UU% &
stringUU& ,
lgosDirectoryUU- :
,UU: ;
stringUU< B
deviceIDUUC K
,UUK L
stringUUM S
logIDUUT Y
)UUY Z
{VV 	
varWW 
fileNameWW 
=WW 
$strWW $
+WW% &
deviceIDWW' /
+WW0 1
$strWW2 5
+WW6 7
logIDWW8 =
+WW> ?
$strWW@ F
;WWF G
fileNameXX 
=XX 
stringXX 
.XX 
JoinXX "
(XX" #
$strXX# &
,XX& '
fileNameXX( 0
.XX0 1
SplitXX1 6
(XX6 7
PathXX7 ;
.XX; <#
GetInvalidFileNameCharsXX< S
(XXS T
)XXT U
)XXU V
)XXV W
;XXW X
returnYY 
PathsYY 
.YY 
CombineYY  
(YY  !
lgosDirectoryYY! .
,YY. /
fileNameYY0 8
)YY8 9
;YY9 :
}ZZ 	
}[[ 
}\\ ﬁÆ
†D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunnerWindow.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
[ 
Serializable 
] 
public 

class 
TestRunnerWindow !
:" #
EditorWindow$ 0
,0 1
IHasCustomMenu2 @
{ 
internal 
static 
class 
Styles $
{ 	
public 
static 
GUIStyle "
info# '
;' (
public 
static 
GUIStyle "
testList# +
;+ ,
static 
Styles 
( 
) 
{ 
info 
= 
new 
GUIStyle #
(# $
EditorStyles$ 0
.0 1
wordWrappedLabel1 A
)A B
;B C
info 
. 
wordWrap 
= 
false  %
;% &
info 
. 
stretchHeight "
=# $
true% )
;) *
info 
. 
margin 
. 
right !
=" #
$num$ &
;& '
testList 
= 
new 
GUIStyle '
(' (
$str( 0
)0 1
;1 2
testList 
. 
margin 
.  
top  #
=$ %
$num& '
;' (
testList 
. 
padding  
.  !
left! %
=& '
$num( )
;) *
} 
} 	
private!! 
readonly!! 

GUIContent!! # 
m_GUIHorizontalSplit!!$ 8
=!!9 :
EditorGUIUtility!!; K
.!!K L
TrTextContent!!L Y
(!!Y Z
$str!!Z m
)!!m n
;!!n o
private"" 
readonly"" 

GUIContent"" #
m_GUIVerticalSplit""$ 6
=""7 8
EditorGUIUtility""9 I
.""I J
TrTextContent""J W
(""W X
$str""X i
)""i j
;""j k
private## 
readonly## 

GUIContent## #+
m_GUIEnableaPlaymodeTestsRunner##$ C
=##D E
EditorGUIUtility##F V
.##V W
TrTextContent##W d
(##d e
$str	##e è
)
##è ê
;
##ê ë
private$$ 
readonly$$ 

GUIContent$$ #+
m_GUIDisablePlaymodeTestsRunner$$$ C
=$$D E
EditorGUIUtility$$F V
.$$V W
TrTextContent$$W d
($$d e
$str	$$e ê
)
$$ê ë
;
$$ë í
private%% 
readonly%% 

GUIContent%% #/
#m_GUIRunPlayModeTestAsEditModeTests%%$ G
=%%H I
EditorGUIUtility%%J Z
.%%Z [
TrTextContent%%[ h
(%%h i
$str	%%i è
)
%%è ê
;
%%ê ë
internal'' 
static'' 
TestRunnerWindow'' (

s_Instance'') 3
;''3 4
private(( 
bool(( 
m_IsBuilding(( !
;((! "
[)) 	
NonSerialized))	 
])) 
private** 
bool** 
	m_Enabled** 
;** 
internal++ 
TestFilterSettings++ #
filterSettings++$ 2
;++2 3
[-- 	
SerializeField--	 
]-- 
private.. 
SplitterState.. 
m_Spl.. #
=..$ %
new..& )
SplitterState..* 7
(..7 8
new..8 ;
float..< A
[..A B
]..B C
{..D E
$num..F H
,..H I
$num..J L
}..M N
,..N O
new..P S
[..S T
]..T U
{..V W
$num..X Z
,..Z [
$num..\ ^
}.._ `
,..` a
null..b f
)..f g
;..g h
private00 $
TestRunnerWindowSettings00 (

m_Settings00) 3
;003 4
private22 
enum22  
TestRunnerMenuLabels22 )
{33 	
PlayMode44 
=44 
$num44 
,44 
EditMode55 
=55 
$num55 
}66 	
[77 	
SerializeField77	 
]77 
private88 
int88 "
m_TestTypeToolbarIndex88 *
=88+ ,
(88- .
int88. 1
)881 2 
TestRunnerMenuLabels882 F
.88F G
EditMode88G O
;88O P
[99 	
SerializeField99	 
]99 
private:: 
PlayModeTestListGUI:: #!
m_PlayModeTestListGUI::$ 9
;::9 :
[;; 	
SerializeField;;	 
];; 
private<< 
EditModeTestListGUI<< #!
m_EditModeTestListGUI<<$ 9
;<<9 :
internal>> 
TestListGUI>> 
m_SelectedTestTypes>> 0
;>>0 1
private@@ 
ITestRunnerApi@@ 
m_testRunnerApi@@ .
;@@. /
privateBB 
WindowResultUpdaterBB #!
m_WindowResultUpdaterBB$ 9
;BB9 :
[GG 	
MenuItemGG	 
(GG 
$strGG .
,GG. /
falseGG0 5
,GG5 6
$numGG7 :
,GG: ;
falseGG< A
)GGA B
]GGB C
publicHH 
staticHH 
voidHH 

ShowWindowHH %
(HH% &
)HH& '
{II 	

s_InstanceJJ 
=JJ 
	GetWindowJJ "
<JJ" #
TestRunnerWindowJJ# 3
>JJ3 4
(JJ4 5
$strJJ5 B
)JJB C
;JJC D

s_InstanceKK 
.KK 
ShowKK 
(KK 
)KK 
;KK 
}LL 	
internalNN 
staticNN 
voidNN 2
&ShowPlaymodeTestsRunnerWindowCodeBasedNN C
(NNC D
)NND E
{OO 	

ShowWindowPP 
(PP 
)PP 
;PP 
}QQ 	
staticSS 
TestRunnerWindowSS 
(SS  
)SS  !
{TT 	!
InitBackgroundRunnersUU !
(UU! "
)UU" #
;UU# $
}VV 	
privateXX 
staticXX 
voidXX !
InitBackgroundRunnersXX 1
(XX1 2
)XX2 3
{YY 	
EditorApplicationZZ 
.ZZ  
playModeStateChangedZZ 2
-=ZZ3 5"
OnPlayModeStateChangedZZ6 L
;ZZL M
EditorApplication[[ 
.[[  
playModeStateChanged[[ 2
+=[[3 5"
OnPlayModeStateChanged[[6 L
;[[L M
}\\ 	
[^^ 	
DidReloadScripts^^	 
]^^ 
private__ 
static__ 
void__ 
CompilationCallback__ /
(__/ 0
)__0 1
{`` 	
UpdateWindowaa 
(aa 
)aa 
;aa 
}bb 	
privatedd 
staticdd 
voiddd "
OnPlayModeStateChangeddd 2
(dd2 3
PlayModeStateChangedd3 F
stateddG L
)ddL M
{ee 	
ifff 
(ff 

s_Instanceff 
&&ff 
stateff #
==ff$ &
PlayModeStateChangeff' :
.ff: ;
EnteredEditModeff; J
&&ffK M

s_InstanceffN X
.ffX Y
m_SelectedTestTypesffY l
.ffl m
HasTreeDataffm x
(ffx y
)ffy z
)ffz {
{gg 

s_Instanceii 
.ii 
m_SelectedTestTypesii .
.ii. /!
TestSelectionCallbackii/ D
(iiD E

s_InstanceiiE O
.iiO P
m_SelectedTestTypesiiP c
.iic d
m_TestListStateiid s
.iis t
selectedIDsiit 
.	ii Ä
ToArray
iiÄ á
(
iiá à
)
iià â
)
iiâ ä
;
iiä ã

s_Instancejj 
.jj 
Repaintjj "
(jj" #
)jj# $
;jj$ %
}kk 
}ll 	
internalnn 
voidnn 
	OnDestroynn 
(nn  
)nn  !
{oo 	
EditorApplicationpp 
.pp  
playModeStateChangedpp 2
-=pp3 5"
OnPlayModeStateChangedpp6 L
;ppL M
}qq 	
privatess 
voidss 
OnEnabless 
(ss 
)ss 
{tt 	

s_Instanceuu 
=uu 
thisuu 
;uu 
SelectTestListGUIvv 
(vv "
m_TestTypeToolbarIndexvv 4
)vv4 5
;vv5 6
m_testRunnerApixx 
=xx 
ScriptableObjectxx .
.xx. /
CreateInstancexx/ =
<xx= >
TestRunnerApixx> K
>xxK L
(xxL M
)xxM N
;xxN O!
m_WindowResultUpdateryy !
=yy" #
newyy$ '
WindowResultUpdateryy( ;
(yy; <
)yy< =
;yy= >
m_testRunnerApizz 
.zz 
RegisterCallbackszz -
(zz- .!
m_WindowResultUpdaterzz. C
)zzC D
;zzD E
}{{ 	
private}} 
void}} 
Enable}} 
(}} 
)}} 
{~~ 	

m_Settings 
= 
new $
TestRunnerWindowSettings 5
(5 6
$str6 ]
)] ^
;^ _
filterSettings
ÄÄ 
=
ÄÄ 
new
ÄÄ   
TestFilterSettings
ÄÄ! 3
(
ÄÄ3 4
$str
ÄÄ4 \
)
ÄÄ\ ]
;
ÄÄ] ^
if
ÇÇ 
(
ÇÇ !
m_SelectedTestTypes
ÇÇ #
==
ÇÇ$ &
null
ÇÇ' +
)
ÇÇ+ ,
{
ÉÉ 
SelectTestListGUI
ÑÑ !
(
ÑÑ! "$
m_TestTypeToolbarIndex
ÑÑ" 8
)
ÑÑ8 9
;
ÑÑ9 :
}
ÖÖ #
StartRetrieveTestList
áá !
(
áá! "
)
áá" #
;
áá# $!
m_SelectedTestTypes
àà 
.
àà  
Reload
àà  &
(
àà& '
)
àà' (
;
àà( )
	m_Enabled
ââ 
=
ââ 
true
ââ 
;
ââ 
}
ää 	
private
åå 
void
åå 
SelectTestListGUI
åå &
(
åå& '
int
åå' *"
testTypeToolbarIndex
åå+ ?
)
åå? @
{
çç 	
if
éé 
(
éé "
testTypeToolbarIndex
éé $
==
éé% '
(
éé( )
int
éé) ,
)
éé, -"
TestRunnerMenuLabels
éé- A
.
ééA B
PlayMode
ééB J
)
ééJ K
{
èè 
if
êê 
(
êê #
m_PlayModeTestListGUI
êê )
==
êê* ,
null
êê- 1
)
êê1 2
{
ëë #
m_PlayModeTestListGUI
íí )
=
íí* +
new
íí, /!
PlayModeTestListGUI
íí0 C
(
ííC D
)
ííD E
;
ííE F
}
ìì !
m_SelectedTestTypes
îî #
=
îî$ %#
m_PlayModeTestListGUI
îî& ;
;
îî; <
}
ïï 
else
ññ 
if
ññ 
(
ññ "
testTypeToolbarIndex
ññ )
==
ññ* ,
(
ññ- .
int
ññ. 1
)
ññ1 2"
TestRunnerMenuLabels
ññ2 F
.
ññF G
EditMode
ññG O
)
ññO P
{
óó 
if
òò 
(
òò #
m_EditModeTestListGUI
òò )
==
òò* ,
null
òò- 1
)
òò1 2
{
ôô #
m_EditModeTestListGUI
öö )
=
öö* +
new
öö, /!
EditModeTestListGUI
öö0 C
(
ööC D
)
ööD E
;
ööE F
}
õõ !
m_SelectedTestTypes
úú #
=
úú$ %#
m_EditModeTestListGUI
úú& ;
;
úú; <
}
ùù 
}
ûû 	
private
†† 
void
†† #
StartRetrieveTestList
†† *
(
††* +
)
††+ ,
{
°° 	
if
¢¢ 
(
¢¢ 
!
¢¢ !
m_SelectedTestTypes
¢¢ $
.
¢¢$ %
HasTreeData
¢¢% 0
(
¢¢0 1
)
¢¢1 2
)
¢¢2 3
{
££ 
var
§§ 

listToInit
§§ 
=
§§  !
m_SelectedTestTypes
§§! 4
;
§§4 5
m_testRunnerApi
•• 
.
••  
RetrieveTestList
••  0
(
••0 1!
m_SelectedTestTypes
••1 D
.
••D E
TestMode
••E M
,
••M N
(
••O P
rootTest
••P X
)
••X Y
=>
••Z \
{
¶¶ 

listToInit
ßß 
.
ßß 
Init
ßß #
(
ßß# $
this
ßß$ (
,
ßß( )
rootTest
ßß* 2
)
ßß2 3
;
ßß3 4

listToInit
®® 
.
®® 
Reload
®® %
(
®®% &
)
®®& '
;
®®' (
}
©© 
)
©© 
;
©© 
}
™™ 
}
´´ 	
internal
≠≠ 
void
≠≠ 
OnGUI
≠≠ 
(
≠≠ 
)
≠≠ 
{
ÆÆ 	
if
ØØ 
(
ØØ 
!
ØØ 
	m_Enabled
ØØ 
)
ØØ 
{
∞∞ 
Enable
±± 
(
±± 
)
±± 
;
±± 
}
≤≤ 
if
¥¥ 
(
¥¥ 
BuildPipeline
¥¥ 
.
¥¥ 
isBuildingPlayer
¥¥ .
)
¥¥. /
{
µµ 
m_IsBuilding
∂∂ 
=
∂∂ 
true
∂∂ #
;
∂∂# $
}
∑∑ 
else
∏∏ 
if
∏∏ 
(
∏∏ 
m_IsBuilding
∏∏ !
)
∏∏! "
{
ππ 
m_IsBuilding
∫∫ 
=
∫∫ 
false
∫∫ $
;
∫∫$ %
Repaint
ªª 
(
ªª 
)
ªª 
;
ªª 
}
ºº 
EditorGUILayout
ææ 
.
ææ 
BeginHorizontal
ææ +
(
ææ+ ,
)
ææ, -
;
ææ- .
	GUILayout
øø 
.
øø 
FlexibleSpace
øø #
(
øø# $
)
øø$ %
;
øø% &
var
¿¿ 
selectedIndex
¿¿ 
=
¿¿ $
m_TestTypeToolbarIndex
¿¿  6
;
¿¿6 7$
m_TestTypeToolbarIndex
¡¡ "
=
¡¡# $
	GUILayout
¡¡% .
.
¡¡. /
Toolbar
¡¡/ 6
(
¡¡6 7$
m_TestTypeToolbarIndex
¡¡7 M
,
¡¡M N
Enum
¡¡O S
.
¡¡S T
GetNames
¡¡T \
(
¡¡\ ]
typeof
¡¡] c
(
¡¡c d"
TestRunnerMenuLabels
¡¡d x
)
¡¡x y
)
¡¡y z
,
¡¡z {
$str¡¡| â
,¡¡â ä
UnityEngine¡¡ã ñ
.¡¡ñ ó
GUI¡¡ó ö
.¡¡ö õ!
ToolbarButtonSize¡¡õ ¨
.¡¡¨ ≠
FitToContents¡¡≠ ∫
)¡¡∫ ª
;¡¡ª º
	GUILayout
¬¬ 
.
¬¬ 
FlexibleSpace
¬¬ #
(
¬¬# $
)
¬¬$ %
;
¬¬% &
EditorGUILayout
√√ 
.
√√ 
EndHorizontal
√√ )
(
√√) *
)
√√* +
;
√√+ ,
if
≈≈ 
(
≈≈ 
selectedIndex
≈≈ 
!=
≈≈  $
m_TestTypeToolbarIndex
≈≈! 7
)
≈≈7 8
{
∆∆ 
SelectTestListGUI
«« !
(
««! "$
m_TestTypeToolbarIndex
««" 8
)
««8 9
;
««9 :#
StartRetrieveTestList
»» %
(
»»% &
)
»»& '
;
»»' (
}
…… 
EditorGUILayout
ÀÀ 
.
ÀÀ 
BeginVertical
ÀÀ )
(
ÀÀ) *
)
ÀÀ* +
;
ÀÀ+ ,
using
ÃÃ 
(
ÃÃ 
new
ÃÃ 
	EditorGUI
ÃÃ  
.
ÃÃ  !
DisabledScope
ÃÃ! .
(
ÃÃ. /
EditorApplication
ÃÃ/ @
.
ÃÃ@ A+
isPlayingOrWillChangePlaymode
ÃÃA ^
)
ÃÃ^ _
)
ÃÃ_ `
{
ÕÕ !
m_SelectedTestTypes
ŒŒ #
.
ŒŒ# $
PrintHeadPanel
ŒŒ$ 2
(
ŒŒ2 3
)
ŒŒ3 4
;
ŒŒ4 5
}
œœ 
EditorGUILayout
–– 
.
–– 
EndVertical
–– '
(
––' (
)
––( )
;
––) *
if
““ 
(
““ 

m_Settings
““ 
.
““ 
verticalSplit
““ (
)
““( )
SplitterGUILayout
”” !
.
””! " 
BeginVerticalSplit
””" 4
(
””4 5
m_Spl
””5 :
)
””: ;
;
””; <
else
‘‘ 
SplitterGUILayout
’’ !
.
’’! ""
BeginHorizontalSplit
’’" 6
(
’’6 7
m_Spl
’’7 <
)
’’< =
;
’’= >
EditorGUILayout
◊◊ 
.
◊◊ 
BeginVertical
◊◊ )
(
◊◊) *
)
◊◊* +
;
◊◊+ ,
EditorGUILayout
ÿÿ 
.
ÿÿ 
BeginVertical
ÿÿ )
(
ÿÿ) *
Styles
ÿÿ* 0
.
ÿÿ0 1
testList
ÿÿ1 9
)
ÿÿ9 :
;
ÿÿ: ;!
m_SelectedTestTypes
ŸŸ 
.
ŸŸ  
RenderTestList
ŸŸ  .
(
ŸŸ. /
)
ŸŸ/ 0
;
ŸŸ0 1
EditorGUILayout
⁄⁄ 
.
⁄⁄ 
EndVertical
⁄⁄ '
(
⁄⁄' (
)
⁄⁄( )
;
⁄⁄) *
EditorGUILayout
€€ 
.
€€ 
EndVertical
€€ '
(
€€' (
)
€€( )
;
€€) *!
m_SelectedTestTypes
›› 
.
››  
RenderDetails
››  -
(
››- .
)
››. /
;
››/ 0
if
ﬂﬂ 
(
ﬂﬂ 

m_Settings
ﬂﬂ 
.
ﬂﬂ 
verticalSplit
ﬂﬂ (
)
ﬂﬂ( )
SplitterGUILayout
‡‡ !
.
‡‡! "
EndVerticalSplit
‡‡" 2
(
‡‡2 3
)
‡‡3 4
;
‡‡4 5
else
·· 
SplitterGUILayout
‚‚ !
.
‚‚! " 
EndHorizontalSplit
‚‚" 4
(
‚‚4 5
)
‚‚5 6
;
‚‚6 7
}
„„ 	
public
ÈÈ 
void
ÈÈ 
AddItemsToMenu
ÈÈ "
(
ÈÈ" #
GenericMenu
ÈÈ# .
menu
ÈÈ/ 3
)
ÈÈ3 4
{
ÍÍ 	
menu
ÎÎ 
.
ÎÎ 
AddItem
ÎÎ 
(
ÎÎ  
m_GUIVerticalSplit
ÎÎ +
,
ÎÎ+ ,

m_Settings
ÎÎ- 7
.
ÎÎ7 8
verticalSplit
ÎÎ8 E
,
ÎÎE F

m_Settings
ÎÎG Q
.
ÎÎQ R!
ToggleVerticalSplit
ÎÎR e
)
ÎÎe f
;
ÎÎf g
menu
ÏÏ 
.
ÏÏ 
AddItem
ÏÏ 
(
ÏÏ "
m_GUIHorizontalSplit
ÏÏ -
,
ÏÏ- .
!
ÏÏ/ 0

m_Settings
ÏÏ0 :
.
ÏÏ: ;
verticalSplit
ÏÏ; H
,
ÏÏH I

m_Settings
ÏÏJ T
.
ÏÏT U!
ToggleVerticalSplit
ÏÏU h
)
ÏÏh i
;
ÏÏi j
menu
ÓÓ 
.
ÓÓ 
AddSeparator
ÓÓ 
(
ÓÓ 
null
ÓÓ "
)
ÓÓ" #
;
ÓÓ# $
var
 '
playModeTestRunnerEnabled
 )
=
* +
PlayerSettings
, :
.
: ;'
playModeTestRunnerEnabled
; T
;
T U
var
ÒÒ 
currentActive
ÒÒ 
=
ÒÒ '
playModeTestRunnerEnabled
ÒÒ  9
?
ÒÒ: ;-
m_GUIDisablePlaymodeTestsRunner
ÒÒ< [
:
ÒÒ\ ]-
m_GUIEnableaPlaymodeTestsRunner
ÒÒ^ }
;
ÒÒ} ~
if
ÛÛ 
(
ÛÛ 
EditorPrefs
ÛÛ 
.
ÛÛ 
GetBool
ÛÛ #
(
ÛÛ# $
$str
ÛÛ$ 2
,
ÛÛ2 3
false
ÛÛ4 9
)
ÛÛ9 :
)
ÛÛ: ;
{
ÙÙ 
menu
ıı 
.
ıı 
AddItem
ıı 
(
ıı 1
#m_GUIRunPlayModeTestAsEditModeTests
ıı @
,
ıı@ A
PlayerSettings
ııB P
.
ııP Q+
runPlayModeTestAsEditModeTest
ııQ n
,
ıın o
(
ııp q
)
ııq r
=>
ııs u
{
ˆˆ 
PlayerSettings
˜˜ "
.
˜˜" #+
runPlayModeTestAsEditModeTest
˜˜# @
=
˜˜A B
!
˜˜C D
PlayerSettings
˜˜D R
.
˜˜R S+
runPlayModeTestAsEditModeTest
˜˜S p
;
˜˜p q
}
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 
menu
˚˚ 
.
˚˚ 
AddItem
˚˚ 
(
˚˚ 
currentActive
˚˚ &
,
˚˚& '
false
˚˚( -
,
˚˚- .
(
˚˚/ 0
)
˚˚0 1
=>
˚˚2 4
{
¸¸ 
PlayerSettings
˝˝ 
.
˝˝ '
playModeTestRunnerEnabled
˝˝ 8
=
˝˝9 :
!
˝˝; <'
playModeTestRunnerEnabled
˝˝< U
;
˝˝U V
EditorUtility
˛˛ 
.
˛˛ 
DisplayDialog
˛˛ +
(
˛˛+ ,
currentActive
˛˛, 9
.
˛˛9 :
text
˛˛: >
,
˛˛> ?
$str
˛˛@ d
,
˛˛d e
$str
˛˛f j
)
˛˛j k
;
˛˛k l
}
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
internal
ÇÇ 
void
ÇÇ 
RebuildUIFilter
ÇÇ %
(
ÇÇ% &
)
ÇÇ& '
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ !
m_SelectedTestTypes
ÑÑ #
!=
ÑÑ$ &
null
ÑÑ' +
&&
ÑÑ, .!
m_SelectedTestTypes
ÑÑ/ B
.
ÑÑB C
HasTreeData
ÑÑC N
(
ÑÑN O
)
ÑÑO P
)
ÑÑP Q
{
ÖÖ !
m_SelectedTestTypes
ÜÜ #
.
ÜÜ# $
RebuildUIFilter
ÜÜ$ 3
(
ÜÜ3 4
)
ÜÜ4 5
;
ÜÜ5 6
}
áá 
}
àà 	
internal
ää 
static
ää 
void
ää 
UpdateWindow
ää )
(
ää) *
)
ää* +
{
ãã 	
if
åå 
(
åå 

s_Instance
åå 
!=
åå 
null
åå "
&&
åå# %

s_Instance
åå& 0
.
åå0 1!
m_SelectedTestTypes
åå1 D
!=
ååE G
null
ååH L
)
ååL M
{
çç 

s_Instance
éé 
.
éé !
m_SelectedTestTypes
éé .
.
éé. /
Repaint
éé/ 6
(
éé6 7
)
éé7 8
;
éé8 9

s_Instance
èè 
.
èè 
Repaint
èè "
(
èè" #
)
èè# $
;
èè$ %
}
êê 
}
ëë 	
}
íí 
}ìì „
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\ITestListProvider.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
	interface 
ITestListProvider 
{ 
IEnumerator		 
<		 
ITest		 
>		 
GetTestListAsync		 +
(		+ ,
TestPlatform		, 8
platform		9 A
)		A B
;		B C
}

 
} Ä
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\UnityTestProtocolStarter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{		 
[

 
InitializeOnLoad

 
]

 
internal 
static 
class $
UnityTestProtocolStarter 2
{ 
static $
UnityTestProtocolStarter '
(' (
)( )
{ 	
var 
commandLineArgs 
=  !
Environment" -
.- .
GetCommandLineArgs. @
(@ A
)A B
;B C
if 
( 
commandLineArgs 
.  
Contains  (
(( )
$str) 5
)5 6
&&7 9
commandLineArgs: I
.I J
ContainsJ R
(R S
$strS ^
)^ _
)_ `
{ 
var 
api 
= 
ScriptableObject *
.* +
CreateInstance+ 9
<9 :
TestRunnerApi: G
>G H
(H I
)I J
;J K
var 
listener 
= 
ScriptableObject /
./ 0
CreateInstance0 >
<> ?%
UnityTestProtocolListener? X
>X Y
(Y Z
)Z [
;[ \
api 
. 
RegisterCallbacks %
(% &
listener& .
). /
;/ 0
CompilationPipeline #
.# $'
assemblyCompilationFinished$ ?
+=@ B)
OnAssemblyCompilationFinishedC `
;` a
} 
} 	
public 
static 
void )
OnAssemblyCompilationFinished 8
(8 9
string9 ?
assembly@ H
,H I
CompilerMessageJ Y
[Y Z
]Z [
messages\ d
)d e
{ 	
bool 
checkCompileErrors #
=$ %
RecompileScripts& 6
.6 7
Current7 >
==? A
nullB F
||G I
RecompileScriptsJ Z
.Z [
Current[ b
.b c+
ExpectScriptCompilationSuccess	c Å
;
Å Ç
if 
( 
checkCompileErrors "
&&# %
messages& .
.. /
Any/ 2
(2 3
x3 4
=>5 7
x8 9
.9 :
type: >
==? A
CompilerMessageTypeB U
.U V
ErrorV [
)[ \
)\ ]
{ 
var !
compilerErrorMessages )
=* +
messages, 4
.4 5
Where5 :
(: ;
x; <
=>= ?
x@ A
.A B
typeB F
==G I
CompilerMessageTypeJ ]
.] ^
Error^ c
)c d
;d e
var   
utpMessageReporter   &
=  ' (
new  ) ,
UtpMessageReporter  - ?
(  ? @
new  @ C
UtpDebugLogger  D R
(  R S
)  S T
)  T U
;  U V
utpMessageReporter!! "
.!!" #+
ReportAssemblyCompilationErrors!!# B
(!!B C
assembly!!C K
,!!K L!
compilerErrorMessages!!M b
)!!b c
;!!c d
}"" 
}## 	
}$$ 
}%% ø
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ExecutionSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
[ 
Serializable 
] 
internal 
class 
ExecutionSettings $
{ 
public 
string 
TestResultsFile %
;% &
public		 
string		 
DeviceLogsDirectory		 )
;		) *
}

 
} ˝\
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\EditModeLauncher.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
EditModeLauncher #
:$ %
TestLauncherBase& 6
{ 
public 
static 
bool 
	IsRunning $
;$ %
internal 
readonly 
EditModeRunner (
m_EditModeRunner) 9
;9 :
public 
bool 
launchedOutsideApi &
;& '
public 
EditModeLauncher 
(  
UITestRunnerFilter  2
filter3 9
,9 :
TestPlatform; G
platformH P
)P Q
{ 	
launchedOutsideApi 
=  
true! %
;% &
var 
	apiFilter 
= 
new 
[  
]  !
{ 
new 
Filter 
( 
) 
{ 
testMode 
= 
TestMode '
.' (
EditMode( 0
,0 1
	testNames 
= 
filter  &
.& '
	testNames' 0
,0 1
categoryNames !
=" #
filter$ *
.* +
categoryNames+ 8
,8 9

groupNames   
=    
filter  ! '
.  ' (

groupNames  ( 2
,  2 3
assemblyNames!! !
=!!" #
filter!!$ *
.!!* +
assemblyNames!!+ 8
}"" 
}## 
;## 
ScriptableObject%% 
.%% 
CreateInstance%% +
<%%+ ,
TestRunnerApi%%, 9
>%%9 :
(%%: ;
)%%; <
.%%< =
Execute%%= D
(%%D E
new%%E H
ExecutionSettings%%I Z
(%%Z [
	apiFilter%%[ d
)%%d e
)%%e f
;%%f g
}&& 	
public(( 
EditModeLauncher(( 
(((  
Filter((  &
[((& '
]((' (
filters(() 0
,((0 1
TestPlatform((2 >
platform((? G
,((G H
bool((I M
runSynchronously((N ^
)((^ _
{)) 	
TestEnumerator** 
.** 
Reset**  
(**  !
)**! "
;**" #
m_EditModeRunner++ 
=++ 
ScriptableObject++ /
.++/ 0
CreateInstance++0 >
<++> ?
EditModeRunner++? M
>++M N
(++N O
)++O P
;++P Q
m_EditModeRunner,, 
.,, *
UnityTestAssemblyRunnerFactory,, ;
=,,< =
new,,> A*
UnityTestAssemblyRunnerFactory,,B `
(,,` a
),,a b
;,,b c
m_EditModeRunner-- 
.-- 
Init-- !
(--! "
filters--" )
,--) *
platform--+ 3
,--3 4
runSynchronously--5 E
)--E F
;--F G
}.. 	
public00 
override00 
void00 
Run00  
(00  !
)00! "
{11 	
if22 
(22 
launchedOutsideApi22 "
)22" #
{33 
return55 
;55 
}66 
	IsRunning88 
=88 
true88 
;88 

SceneSetup:: 
[:: 
]:: 
previousSceneSetup:: +
;::+ ,
if;; 
(;; 
!;; 
OpenNewScene;; 
(;; 
out;; !
previousSceneSetup;;" 4
);;4 5
);;5 6
return<< 
;<< 
var>> 
callback>> 
=>> 
AddEventHandler>> *
<>>* +"
EditModeRunnerCallback>>+ A
>>>A B
(>>B C
)>>C D
;>>D E
callback?? 
.?? 
previousSceneSetup?? '
=??( )
previousSceneSetup??* <
;??< =
callback@@ 
.@@ 
runner@@ 
=@@ 
m_EditModeRunner@@ .
;@@. /
AddEventHandlerAA 
<AA &
CallbacksDelegatorListenerAA 6
>AA6 7
(AA7 8
)AA8 9
;AA9 :
m_EditModeRunnerCC 
.CC 
RunCC  
(CC  !
)CC! "
;CC" #
AddEventHandlerDD 
<DD 
BackgroundListenerDD .
>DD. /
(DD/ 0
)DD0 1
;DD1 2
AddEventHandlerEE 
<EE #
TestRunCallbackListenerEE 3
>EE3 4
(EE4 5
)EE5 6
;EE6 7
ifGG 
(GG 
m_EditModeRunnerGG  
.GG  ! 
RunningSynchronouslyGG! 5
)GG5 6
m_EditModeRunnerHH  
.HH  !!
CompleteSynchronouslyHH! 6
(HH6 7
)HH7 8
;HH8 9
}II 	
privateKK 
staticKK 
boolKK 
OpenNewSceneKK (
(KK( )
outKK) ,

SceneSetupKK- 7
[KK7 8
]KK8 9
previousSceneSetupKK: L
)KKL M
{LL 	
previousSceneSetupMM 
=MM  
nullMM! %
;MM% &
varOO 

sceneCountOO 
=OO 
SceneManagerOO )
.OO) *

sceneCountOO* 4
;OO4 5
varQQ 
sceneQQ 
=QQ 
SceneManagerQQ $
.QQ$ %

GetSceneAtQQ% /
(QQ/ 0
$numQQ0 1
)QQ1 2
;QQ2 3
varRR 
isSceneNotPersistedRR #
=RR$ %
stringRR& ,
.RR, -
IsNullOrEmptyRR- :
(RR: ;
sceneRR; @
.RR@ A
pathRRA E
)RRE F
;RRF G
ifTT 
(TT 

sceneCountTT 
==TT 
$numTT 
&&TT  "
isSceneNotPersistedTT# 6
)TT6 7
{UU 
EditorSceneManagerVV "
.VV" #
NewSceneVV# +
(VV+ ,
NewSceneSetupVV, 9
.VV9 :
DefaultGameObjectsVV: L
,VVL M
NewSceneModeVVN Z
.VVZ [
SingleVV[ a
)VVa b
;VVb c
returnWW 
trueWW 
;WW 
}XX  
RemoveUntitledScenesYY  
(YY  !
)YY! "
;YY" ##
ReloadUnsavedDirtyScene\\ #
(\\# $
)\\$ %
;\\% &
previousSceneSetup^^ 
=^^  
EditorSceneManager^^! 3
.^^3 4 
GetSceneManagerSetup^^4 H
(^^H I
)^^I J
;^^J K
scene`` 
=`` 
EditorSceneManager`` &
.``& '
NewScene``' /
(``/ 0
NewSceneSetup``0 =
.``= >

EmptyScene``> H
,``H I
NewSceneMode``J V
.``V W
Additive``W _
)``_ `
;``` a
SceneManageraa 
.aa 
SetActiveSceneaa '
(aa' (
sceneaa( -
)aa- .
;aa. /
returncc 
truecc 
;cc 
}dd 	
privateff 
staticff 
voidff #
ReloadUnsavedDirtySceneff 3
(ff3 4
)ff4 5
{gg 	
forhh 
(hh 
varhh 
ihh 
=hh 
$numhh 
;hh 
ihh 
<hh 
SceneManagerhh  ,
.hh, -

sceneCounthh- 7
;hh7 8
ihh9 :
++hh: <
)hh< =
{ii 
varjj 
scenejj 
=jj 
SceneManagerjj (
.jj( )

GetSceneAtjj) 3
(jj3 4
ijj4 5
)jj5 6
;jj6 7
varkk 
isSceneNotPersistedkk '
=kk( )
stringkk* 0
.kk0 1
IsNullOrEmptykk1 >
(kk> ?
scenekk? D
.kkD E
pathkkE I
)kkI J
;kkJ K
varll 
isSceneDirtyll  
=ll! "
scenell# (
.ll( )
isDirtyll) 0
;ll0 1
ifmm 
(mm 
isSceneNotPersistedmm '
&&mm( *
isSceneDirtymm+ 7
)mm7 8
{nn 
EditorSceneManageroo &
.oo& '
ReloadSceneoo' 2
(oo2 3
sceneoo3 8
)oo8 9
;oo9 :
}pp 
}qq 
}rr 	
privatett 
statictt 
voidtt  
RemoveUntitledScenestt 0
(tt0 1
)tt1 2
{uu 	
intvv 

sceneCountvv 
=vv 
SceneManagervv )
.vv) *

sceneCountvv* 4
;vv4 5
varxx 
scenesToClosexx 
=xx 
newxx  #
Listxx$ (
<xx( )
Scenexx) .
>xx. /
(xx/ 0
)xx0 1
;xx1 2
foryy 
(yy 
varyy 
iyy 
=yy 
$numyy 
;yy 
iyy 
<yy 

sceneCountyy  *
;yy* +
iyy, -
++yy- /
)yy/ 0
{zz 
var{{ 
scene{{ 
={{ 
SceneManager{{ (
.{{( )

GetSceneAt{{) 3
({{3 4
i{{4 5
){{5 6
;{{6 7
var|| 
isSceneNotPersisted|| '
=||( )
string||* 0
.||0 1
IsNullOrEmpty||1 >
(||> ?
scene||? D
.||D E
path||E I
)||I J
;||J K
if}} 
(}} 
isSceneNotPersisted}} '
)}}' (
{~~ 
scenesToClose !
.! "
Add" %
(% &
scene& +
)+ ,
;, -
}
ÄÄ 
}
ÅÅ 
foreach
ÇÇ 
(
ÇÇ 
Scene
ÇÇ 
scene
ÇÇ  
in
ÇÇ! #
scenesToClose
ÇÇ$ 1
)
ÇÇ1 2
{
ÉÉ  
EditorSceneManager
ÑÑ "
.
ÑÑ" #

CloseScene
ÑÑ# -
(
ÑÑ- .
scene
ÑÑ. 3
,
ÑÑ3 4
true
ÑÑ5 9
)
ÑÑ9 :
;
ÑÑ: ;
}
ÖÖ 
}
ÜÜ 	
public
àà 
class
àà  
BackgroundListener
àà '
:
àà( )
ScriptableObject
àà* :
,
àà: ;!
ITestRunnerListener
àà< O
{
ââ 	
public
ää 
void
ää 

RunStarted
ää "
(
ää" #
ITest
ää# (

testsToRun
ää) 3
)
ää3 4
{
ãã 
}
åå 
public
éé 
void
éé 
RunFinished
éé #
(
éé# $
ITestResult
éé$ /
testResults
éé0 ;
)
éé; <
{
èè 
	IsRunning
êê 
=
êê 
false
êê !
;
êê! "
}
ëë 
public
ìì 
void
ìì 
TestStarted
ìì #
(
ìì# $
ITest
ìì$ )
test
ìì* .
)
ìì. /
{
îî 
}
ïï 
public
óó 
void
óó 
TestFinished
óó $
(
óó$ %
ITestResult
óó% 0
result
óó1 7
)
óó7 8
{
òò 
}
ôô 
}
öö 	
public
úú 
T
úú 
AddEventHandler
úú  
<
úú  !
T
úú! "
>
úú" #
(
úú# $
)
úú$ %
where
úú& +
T
úú, -
:
úú. /
ScriptableObject
úú0 @
,
úú@ A!
ITestRunnerListener
úúB U
{
ùù 	
return
ûû 
m_EditModeRunner
ûû #
.
ûû# $
AddEventHandler
ûû$ 3
<
ûû3 4
T
ûû4 5
>
ûû5 6
(
ûû6 7
)
ûû7 8
;
ûû8 9
}
üü 	
}
†† 
}°° î
ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ICallbacksDelegator.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
	interface 
ICallbacksDelegator *
{ 
void 

RunStarted 
( 
ITest 

testsToRun (
)( )
;) *
void 
RunStartedRemotely 
(  
byte  $
[$ %
]% &
testsToRunData' 5
)5 6
;6 7
void		 
RunFinished		 
(		 
ITestResult		 $
testResults		% 0
)		0 1
;		1 2
void

 
RunFinishedRemotely

  
(

  !
byte

! %
[

% &
]

& '
testResultsData

( 7
)

7 8
;

8 9
void 
	RunFailed 
( 
string 
failureMessage ,
), -
;- .
void 
TestStarted 
( 
ITest 
test #
)# $
;$ %
void 
TestStartedRemotely  
(  !
byte! %
[% &
]& '
testStartedData( 7
)7 8
;8 9
void 
TestFinished 
( 
ITestResult %
result& ,
), -
;- .
void  
TestFinishedRemotely !
(! "
byte" &
[& '
]' (
testResultsData) 8
)8 9
;9 :
void 
TestTreeRebuild 
( 
ITest "
test# '
)' (
;( )
} 
} ÕR
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestResultAdaptor.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal		 
class		 
TestResultAdaptor		 $
:		% &
ITestResultAdaptor		' 9
{

 
private 
TNode 
m_Node 
; 
internal 
TestResultAdaptor "
(" #
ITestResult# .
result/ 5
,5 6
ITestAdaptor7 C
testD H
,H I
ITestResultAdaptorJ \
[\ ]
]] ^
children_ g
=h i
nullj n
)n o
{ 	
Test 
= 
test 
; 
Name 
= 
result 
. 
Name 
; 
FullName 
= 
result 
. 
FullName &
;& '
ResultState 
= 
result  
.  !
ResultState! ,
., -
ToString- 5
(5 6
)6 7
;7 8

TestStatus 
= 
ParseTestStatus (
(( )
result) /
./ 0
ResultState0 ;
.; <
Status< B
)B C
;C D
Duration 
= 
result 
. 
Duration &
;& '
	StartTime 
= 
result 
. 
	StartTime (
;( )
EndTime 
= 
result 
. 
EndTime $
;$ %
Message 
= 
result 
. 
Message $
;$ %

StackTrace 
= 
result 
.  

StackTrace  *
;* +
AssertCount 
= 
result  
.  !
AssertCount! ,
;, -
	FailCount 
= 
result 
. 
	FailCount (
;( )
	PassCount 
= 
result 
. 
	PassCount (
;( )
	SkipCount 
= 
result 
. 
	SkipCount (
;( )
InconclusiveCount 
= 
result  &
.& '
InconclusiveCount' 8
;8 9
HasChildren 
= 
result  
.  !
HasChildren! ,
;, -
Output 
= 
result 
. 
Output "
;" #
Children   
=   
children   
;    
m_Node!! 
=!! 
result!! 
.!! 
ToXml!! !
(!!! "
true!!" &
)!!& '
;!!' (
}"" 	
internal$$ 
TestResultAdaptor$$ "
($$" # 
RemoteTestResultData$$# 7
result$$8 >
,$$> ?,
 RemoteTestResultDataWithTestData$$@ `
allData$$a h
)$$h i
{%% 	
Test&& 
=&& 
new&& 
TestAdaptor&& "
(&&" #
allData&&# *
.&&* +
tests&&+ 0
.&&0 1
First&&1 6
(&&6 7
t&&7 8
=>&&9 ;
t&&< =
.&&= >
id&&> @
==&&A C
result&&D J
.&&J K
testId&&K Q
)&&Q R
)&&R S
;&&S T
Name'' 
='' 
result'' 
.'' 
name'' 
;'' 
FullName(( 
=(( 
result(( 
.(( 
fullName(( &
;((& '
ResultState)) 
=)) 
result))  
.))  !
resultState))! ,
;)), -

TestStatus** 
=** 
ParseTestStatus** (
(**( )
result**) /
.**/ 0

testStatus**0 :
)**: ;
;**; <
Duration++ 
=++ 
result++ 
.++ 
duration++ &
;++& '
	StartTime,, 
=,, 
result,, 
.,, 
	startTime,, (
;,,( )
EndTime-- 
=-- 
result-- 
.-- 
endTime-- $
;--$ %
Message.. 
=.. 
result.. 
... 
message.. $
;..$ %

StackTrace// 
=// 
result// 
.//  

stackTrace//  *
;//* +
AssertCount00 
=00 
result00  
.00  !
assertCount00! ,
;00, -
	FailCount11 
=11 
result11 
.11 
	failCount11 (
;11( )
	PassCount22 
=22 
result22 
.22 
	passCount22 (
;22( )
	SkipCount33 
=33 
result33 
.33 
	skipCount33 (
;33( )
InconclusiveCount44 
=44 
result44  &
.44& '
inconclusiveCount44' 8
;448 9
HasChildren55 
=55 
result55  
.55  !
hasChildren55! ,
;55, -
Output66 
=66 
result66 
.66 
output66 "
;66" #
Children77 
=77 
result77 
.77 
childrenIds77 )
.77) *
Select77* 0
(770 1
childId771 8
=>779 ;
new77< ?
TestResultAdaptor77@ Q
(77Q R
allData77R Y
.77Y Z
results77Z a
.77a b
First77b g
(77g h
r77h i
=>77j l
r77m n
.77n o
testId77o u
==77v x
childId	77y Ä
)
77Ä Å
,
77Å Ç
allData
77É ä
)
77ä ã
)
77ã å
.
77å ç
ToArray
77ç î
(
77î ï
)
77ï ñ
;
77ñ ó
m_Node88 
=88 
TNode88 
.88 
FromXml88 "
(88" #
result88# )
.88) *
xml88* -
)88- .
;88. /
}99 	
public;; 
ITestAdaptor;; 
Test;;  
{;;! "
get;;# &
;;;& '
private;;( /
set;;0 3
;;;3 4
};;5 6
public<< 
string<< 
Name<< 
{<< 
get<<  
;<<  !
private<<" )
set<<* -
;<<- .
}<</ 0
public== 
string== 
FullName== 
{==  
get==! $
;==$ %
private==& -
set==. 1
;==1 2
}==3 4
public>> 
string>> 
ResultState>> !
{>>" #
get>>$ '
;>>' (
private>>) 0
set>>1 4
;>>4 5
}>>6 7
public?? 

TestStatus?? 

TestStatus?? $
{??% &
get??' *
;??* +
private??, 3
set??4 7
;??7 8
}??9 :
public@@ 
double@@ 
Duration@@ 
{@@  
get@@! $
;@@$ %
private@@& -
set@@. 1
;@@1 2
}@@3 4
publicAA 
DateTimeAA 
	StartTimeAA !
{AA" #
getAA$ '
;AA' (
privateAA) 0
setAA1 4
;AA4 5
}AA6 7
publicBB 
DateTimeBB 
EndTimeBB 
{BB  !
getBB" %
;BB% &
privateBB' .
setBB/ 2
;BB2 3
}BB4 5
publicCC 
stringCC 
MessageCC 
{CC 
getCC  #
;CC# $
privateCC% ,
setCC- 0
;CC0 1
}CC2 3
publicDD 
stringDD 

StackTraceDD  
{DD! "
getDD# &
;DD& '
privateDD( /
setDD0 3
;DD3 4
}DD5 6
publicEE 
intEE 
AssertCountEE 
{EE  
getEE! $
;EE$ %
privateEE& -
setEE. 1
;EE1 2
}EE3 4
publicFF 
intFF 
	FailCountFF 
{FF 
getFF "
;FF" #
privateFF$ +
setFF, /
;FF/ 0
}FF1 2
publicGG 
intGG 
	PassCountGG 
{GG 
getGG "
;GG" #
privateGG$ +
setGG, /
;GG/ 0
}GG1 2
publicHH 
intHH 
	SkipCountHH 
{HH 
getHH "
;HH" #
privateHH$ +
setHH, /
;HH/ 0
}HH1 2
publicII 
intII 
InconclusiveCountII $
{II% &
getII' *
;II* +
privateII, 3
setII4 7
;II7 8
}II9 :
publicJJ 
boolJJ 
HasChildrenJJ 
{JJ  !
getJJ" %
;JJ% &
privateJJ' .
setJJ/ 2
;JJ2 3
}JJ4 5
publicKK 
IEnumerableKK 
<KK 
ITestResultAdaptorKK -
>KK- .
ChildrenKK/ 7
{KK8 9
getKK: =
;KK= >
privateKK? F
setKKG J
;KKJ K
}KKL M
publicLL 
stringLL 
OutputLL 
{LL 
getLL "
;LL" #
privateLL$ +
setLL, /
;LL/ 0
}LL1 2
publicMM 
TNodeMM 
ToXmlMM 
(MM 
)MM 
{NN 	
returnOO 
m_NodeOO 
;OO 
}PP 	
privateRR 
staticRR 

TestStatusRR !
ParseTestStatusRR" 1
(RR1 2
NUnitRR2 7
.RR7 8
	FrameworkRR8 A
.RRA B

InterfacesRRB L
.RRL M

TestStatusRRM W

testStatusRRX b
)RRb c
{SS 	
returnTT 
(TT 

TestStatusTT 
)TT 
EnumTT #
.TT# $
ParseTT$ )
(TT) *
typeofTT* 0
(TT0 1

TestStatusTT1 ;
)TT; <
,TT< =

testStatusTT> H
.TTH I
ToStringTTI Q
(TTQ R
)TTR S
)TTS T
;TTT U
}UU 	
}VV 
}WW ˙
£D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\TestJobData.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
{ 
[ 
Serializable 
] 
internal		 
class		 
TestJobData		 
{

 
[ 	
SerializeField	 
] 
public 
string 
guid 
; 
[ 	
SerializeField	 
] 
public 
int 
	taskIndex 
; 
[ 	
SerializeField	 
] 
public 
int 
taskPC 
; 
[ 	
SerializeField	 
] 
public 
bool 
	isRunning 
; 
[ 	
SerializeField	 
] 
public 
ExecutionSettings  
executionSettings! 2
;2 3
[ 	
SerializeField	 
] 
public 
string 
[ 
] 
existingFiles %
;% &
[ 	
SerializeField	 
] 
public 
int 
	undoGroup 
= 
-  
$num  !
;! "
[   	
SerializeField  	 
]   
public!! 
EditModeRunner!! 
editModeRunner!! ,
;!!, -
[## 	
NonSerialized##	 
]## 
public$$ 
bool$$ 
isHandledByRunner$$ %
;$$% &
public&& 
ITest&& 
testTree&& 
;&& 
public(( 
TestJobData(( 
((( 
ExecutionSettings(( ,
settings((- 5
)((5 6
{)) 	
guid** 
=** 
Guid** 
.** 
NewGuid** 
(**  
)**  !
.**! "
ToString**" *
(*** +
)**+ ,
;**, -
executionSettings++ 
=++ 
settings++  (
;++( )
	isRunning,, 
=,, 
false,, 
;,, 
	taskIndex-- 
=-- 
$num-- 
;-- 
taskPC.. 
=.. 
$num.. 
;.. 
}// 	
}00 
}11 ¿
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\TestListJob.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
TestListJob 
{		 
private

 #
CachingTestListProvider

 '
m_TestListProvider

( :
;

: ;
private 
TestPlatform 

m_Platform '
;' (
private 
Action 
< 
ITestAdaptor #
># $

m_Callback% /
;/ 0
private 
IEnumerator 
< 
ITestAdaptor (
>( )
m_ResultEnumerator* <
;< =
public 
TestListJob 
( #
CachingTestListProvider 2
testListProvider3 C
,C D
TestPlatformE Q
platformR Z
,Z [
Action\ b
<b c
ITestAdaptorc o
>o p
callbackq y
)y z
{ 	
m_TestListProvider 
=  
testListProvider! 1
;1 2

m_Platform 
= 
platform !
;! "

m_Callback 
= 
callback !
;! "
} 	
public 
void 
Start 
( 
) 
{ 	
m_ResultEnumerator 
=  
m_TestListProvider! 3
.3 4
GetTestListAsync4 D
(D E

m_PlatformE O
)O P
;P Q
EditorApplication 
. 
update $
+=% '
EditorUpdate( 4
;4 5
} 	
private 
void 
EditorUpdate !
(! "
)" #
{ 	
if 
( 
! 
m_ResultEnumerator #
.# $
MoveNext$ ,
(, -
)- .
). /
{ 

m_Callback 
( 
m_ResultEnumerator -
.- .
Current. 5
)5 6
;6 7
EditorApplication   !
.  ! "
update  " (
-=  ) +
EditorUpdate  , 8
;  8 9
}!! 
}"" 	
}## 
}$$ æ
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlayerLauncherBuildOptions.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class &
PlayerLauncherBuildOptions -
{ 
public 
BuildPlayerOptions !
BuildPlayerOptions" 4
;4 5
public 
string 
PlayerDirectory %
;% &
public

 
override

 
string

 
ToString

 '
(

' (
)

( )
{ 	
var 
str 
= 
new 
StringBuilder '
(' (
)( )
;) *
str 
. 

AppendLine 
( 
$str 0
+1 2
BuildPlayerOptions3 E
.E F
locationPathNameF V
)V W
;W X
str 
. 

AppendLine 
( 
$str &
+' (
BuildPlayerOptions) ;
.; <
target< B
)B C
;C D
str 
. 

AppendLine 
( 
$str &
+' (
string) /
./ 0
Join0 4
(4 5
$str5 9
,9 :
BuildPlayerOptions; M
.M N
scenesN T
)T U
)U V
;V W
str 
. 

AppendLine 
( 
$str 7
+8 9
BuildPlayerOptions: L
.L M#
assetBundleManifestPathM d
)d e
;e f
str 
. 

AppendLine 
( 
$str 3
+4 5
(6 7
(7 8
BuildPlayerOptions8 J
.J K
optionsK R
&S T
BuildOptionsU a
.a b
Developmentb m
)m n
!=o q
$numr s
)s t
)t u
;u v
str 
. 

AppendLine 
( 
$str 5
+6 7
(8 9
(9 :
BuildPlayerOptions: L
.L M
optionsM T
&U V
BuildOptionsW c
.c d
AutoRunPlayerd q
)q r
!=s u
$numv w
)w x
)x y
;y z
str 
. 

AppendLine 
( 
$str =
+> ?
(@ A
(A B
BuildPlayerOptionsB T
.T U
optionsU \
&] ^
BuildOptions_ k
.k l"
ForceEnableAssertions	l Å
)
Å Ç
!=
É Ö
$num
Ü á
)
á à
)
à â
;
â ä
return 
str 
. 
ToString 
(  
)  !
;! "
} 	
} 
} ˆ?
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\TestRunnerApiMapper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal		 
class		 
TestRunnerApiMapper		 &
:		' ( 
ITestRunnerApiMapper		) =
{

 
public 
TestPlanMessage $
MapTestToTestPlanMessage 7
(7 8
ITestAdaptor8 D

testsToRunE O
)O P
{ 	
var 

testsNames 
= 

testsToRun '
!=( *
null+ /
?0 1
FlattenTestNames2 B
(B C

testsToRunC M
)M N
:O P
newQ T
ListU Y
<Y Z
stringZ `
>` a
(a b
)b c
;c d
var 
msg 
= 
new 
TestPlanMessage )
{ 
tests 
= 

testsNames "
} 
; 
return 
msg 
; 
} 	
public 
TestStartedMessage !'
MapTestToTestStartedMessage" =
(= >
ITestAdaptor> J
testK O
)O P
{ 	
return 
new 
TestStartedMessage )
{ 
name 
= 
test 
. 
FullName $
} 
; 
} 	
public 
TestFinishedMessage "+
TestResultToTestFinishedMessage# B
(B C
ITestResultAdaptorC U
resultV \
)\ ]
{   	
return!! 
new!! 
TestFinishedMessage!! *
{"" 
name## 
=## 
result## 
.## 
Test## "
.##" #
FullName### +
,##+ ,
duration$$ 
=$$ 
Convert$$ "
.$$" #
ToUInt64$$# +
($$+ ,
result$$, 2
.$$2 3
Duration$$3 ;
*$$< =
$num$$> B
)$$B C
,$$C D 
durationMicroseconds%% $
=%%% &
Convert%%' .
.%%. /
ToUInt64%%/ 7
(%%7 8
result%%8 >
.%%> ?
Duration%%? G
*%%H I
$num%%J Q
)%%Q R
,%%R S
message&& 
=&& 
result&&  
.&&  !
Message&&! (
,&&( )
state'' 
='' "
GetTestStateFromResult'' .
(''. /
result''/ 5
)''5 6
,''6 7

stackTrace(( 
=(( 
result(( #
.((# $

StackTrace(($ .
})) 
;)) 
}** 	
public,, 
string,, )
GetRunStateFromResultNunitXml,, 3
(,,3 4
ITestResultAdaptor,,4 F
result,,G M
),,M N
{-- 	
var.. 
doc.. 
=.. 
new.. 
XmlDocument.. %
(..% &
)..& '
;..' (
doc// 
.// 
LoadXml// 
(// 
result// 
.// 
ToXml// $
(//$ %
)//% &
.//& '
OuterXml//' /
)/// 0
;//0 1
return00 
doc00 
.00 

FirstChild00 !
.00! "

Attributes00" ,
[00, -
$str00- 7
]007 8
.008 9
Value009 >
;00> ?
}11 	
public33 
	TestState33 "
GetTestStateFromResult33 /
(33/ 0
ITestResultAdaptor330 B
result33C I
)33I J
{44 	
var55 
state55 
=55 
	TestState55 !
.55! "
Failure55" )
;55) *
if77 
(77 
result77 
.77 

TestStatus77 !
==77" $

TestStatus77% /
.77/ 0
Passed770 6
)776 7
{88 
state99 
=99 
	TestState99 !
.99! "
Success99" )
;99) *
var;; 
runstate;; 
=;; )
GetRunStateFromResultNunitXml;; <
(;;< =
result;;= C
);;C D
;;;D E
runstate<< 
=<< 
runstate<< #
??<<$ &
String<<' -
.<<- .
Empty<<. 3
;<<3 4
if>> 
(>> 
runstate>> 
.>> 
ToLowerInvariant>> -
(>>- .
)>>. /
.>>/ 0
Equals>>0 6
(>>6 7
$str>>7 A
)>>A B
)>>B C
state?? 
=?? 
	TestState?? %
.??% &
Skipped??& -
;??- .
}@@ 
elseAA 
ifAA 
(AA 
resultAA 
.AA 

TestStatusAA &
==AA' )

TestStatusAA* 4
.AA4 5
SkippedAA5 <
)AA< =
{BB 
stateCC 
=CC 
	TestStateCC !
.CC! "
SkippedCC" )
;CC) *
ifEE 
(EE 
resultEE 
.EE 
ResultStateEE &
.EE& '
ToLowerInvariantEE' 7
(EE7 8
)EE8 9
.EE9 :
EndsWithEE: B
(EEB C
$strEEC L
)EEL M
)EEM N
stateFF 
=FF 
	TestStateFF %
.FF% &
IgnoredFF& -
;FF- .
}GG 
elseHH 
{II 
ifJJ 
(JJ 
resultJJ 
.JJ 
ResultStateJJ &
.JJ& '
ToLowerInvariantJJ' 7
(JJ7 8
)JJ8 9
.JJ9 :
EqualsJJ: @
(JJ@ A
$strJJA O
)JJO P
)JJP Q
stateKK 
=KK 
	TestStateKK %
.KK% &
InconclusiveKK& 2
;KK2 3
ifMM 
(MM 
resultMM 
.MM 
ResultStateMM &
.MM& '
ToLowerInvariantMM' 7
(MM7 8
)MM8 9
.MM9 :
EndsWithMM: B
(MMB C
$strMMC N
)MMN O
||MMP R
resultNN 
.NN 
ResultStateNN &
.NN& '
ToLowerInvariantNN' 7
(NN7 8
)NN8 9
.NN9 :
EndsWithNN: B
(NNB C
$strNNC J
)NNJ K
)NNK L
stateOO 
=OO 
	TestStateOO %
.OO% &
ErrorOO& +
;OO+ ,
}PP 
returnRR 
stateRR 
;RR 
}SS 	
publicUU 
ListUU 
<UU 
stringUU 
>UU 
FlattenTestNamesUU ,
(UU, -
ITestAdaptorUU- 9
testUU: >
)UU> ?
{VV 	
varWW 
resultsWW 
=WW 
newWW 
ListWW "
<WW" #
stringWW# )
>WW) *
(WW* +
)WW+ ,
;WW, -
ifYY 
(YY 
!YY 
testYY 
.YY 
IsSuiteYY 
)YY 
resultsZZ 
.ZZ 
AddZZ 
(ZZ 
testZZ  
.ZZ  !
FullNameZZ! )
)ZZ) *
;ZZ* +
if\\ 
(\\ 
test\\ 
.\\ 
Children\\ 
!=\\  
null\\! %
&&\\& (
test\\) -
.\\- .
Children\\. 6
.\\6 7
Any\\7 :
(\\: ;
)\\; <
)\\< =
foreach]] 
(]] 
var]] 
child]] "
in]]# %
test]]& *
.]]* +
Children]]+ 3
)]]3 4
results^^ 
.^^ 
AddRange^^ $
(^^$ %
FlattenTestNames^^% 5
(^^5 6
child^^6 ;
)^^; <
)^^< =
;^^= >
return`` 
results`` 
;`` 
}aa 	
}bb 
}cc ê

ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\RerunCallbackInitializer.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
[ 
InitializeOnLoad 
] 
static 

class $
RerunCallbackInitializer )
{ 
static		 $
RerunCallbackInitializer		 '
(		' (
)		( )
{

 	
var 
testRunnerApi 
= 
ScriptableObject  0
.0 1
CreateInstance1 ?
<? @
TestRunnerApi@ M
>M N
(N O
)O P
;P Q
var 
rerunCallback 
= 
ScriptableObject  0
.0 1
CreateInstance1 ?
<? @
RerunCallback@ M
>M N
(N O
)O P
;P Q
testRunnerApi 
. 
RegisterCallbacks +
<+ ,
RerunCallback, 9
>9 :
(: ;
rerunCallback; H
)H I
;I J
} 	
} 
} ‡h
ùD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\GuiHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class 
	GuiHelper 
: 

IGuiHelper )
{ 
public 
	GuiHelper 
( 
IMonoCecilHelper )
monoCecilHelper* 9
,9 :!
IAssetsDatabaseHelper; P 
assetsDatabaseHelperQ e
)e f
{ 	
MonoCecilHelper 
= 
monoCecilHelper -
;- . 
AssetsDatabaseHelper  
=! " 
assetsDatabaseHelper# 7
;7 8
Editor 
= 
new %
DefaultExternalCodeEditor 2
(2 3
)3 4
;4 5

GetCSFiles 
= 
( 
dirPath !
,! "
fileExtension# 0
)0 1
=>2 4
{ 
return 
	Directory  
.  !
GetFiles! )
() *
dirPath* 1
,1 2
$"3 5
*5 6
{6 7
fileExtension7 D
}D E
"E F
,F G
SearchOptionH T
.T U
AllDirectoriesU c
)c d
. 
Select 
( 
Paths !
.! "#
UnifyDirectorySeparator" 9
)9 :
;: ;
} 
; 
} 	
internal 
Func 
< 
string 
, 
string $
,$ %
IEnumerable& 1
<1 2
string2 8
>8 9
>9 :

GetCSFiles; E
;E F
	protected 
IMonoCecilHelper "
MonoCecilHelper# 2
{3 4
get5 8
;8 9
private: A
setB E
;E F
}G H
public !
IAssetsDatabaseHelper $ 
AssetsDatabaseHelper% 9
{: ;
get< ?
;? @
privateA H
setI L
;L M
}N O
public 
IExternalCodeEditor "
Editor# )
{* +
get, /
;/ 0
internal1 9
set: =
;= >
}? @
private 
const 
string 
FileExtension *
=+ ,
$str- 2
;2 3
public!! 
void!! &
OpenScriptInExternalEditor!! .
(!!. /
Type!!/ 3
type!!4 8
,!!8 9

MethodInfo!!: D
method!!E K
)!!K L
{"" 	
var## 
fileOpenInfo## 
=## 
GetFileOpenInfo## .
(##. /
type##/ 3
,##3 4
method##5 ;
)##; <
;##< =
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
fileOpenInfo%%% 1
.%%1 2
FilePath%%2 :
)%%: ;
)%%; <
{&& 
Debug'' 
.'' 

LogWarning''  
(''  !
$str	''! ü
)
''ü †
;
''† °
return)) 
;)) 
}** 
if,, 
(,, 
fileOpenInfo,, 
.,, 

LineNumber,, '
==,,( *
$num,,+ ,
),,, -
{-- 
Debug.. 
... 

LogWarning..  
(..  !
$str	..! ä
)
..ä ã
;
..ã å
}// 
if11 
(11 
!11 
fileOpenInfo11 
.11 
FilePath11 &
.11& '
Contains11' /
(11/ 0
$str110 8
)118 9
)119 :
{22 
Editor33 
.33 
OpenProject33 "
(33" #
fileOpenInfo33# /
.33/ 0
FilePath330 8
,338 9
fileOpenInfo33: F
.33F G

LineNumber33G Q
,33Q R
$num33S T
)33T U
;33U V
}44 
else55 
{66  
AssetsDatabaseHelper77 $
.77$ %/
#OpenAssetInItsDefaultExternalEditor77% H
(77H I
fileOpenInfo77I U
.77U V
FilePath77V ^
,77^ _
fileOpenInfo77` l
.77l m

LineNumber77m w
)77w x
;77x y
}88 
}:: 	
public<< 
IFileOpenInfo<< 
GetFileOpenInfo<< ,
(<<, -
Type<<- 1
type<<2 6
,<<6 7

MethodInfo<<8 B
method<<C I
)<<I J
{== 	
var>> 
fileOpenInfo>> 
=>> 
MonoCecilHelper>> .
.>>. /#
TryGetCecilFileOpenInfo>>/ F
(>>F G
type>>G K
,>>K L
method>>M S
)>>S T
;>>T U
if?? 
(?? 
string?? 
.?? 
IsNullOrEmpty?? $
(??$ %
fileOpenInfo??% 1
.??1 2
FilePath??2 :
)??: ;
)??; <
{@@ 
varAA 
dirPathAA 
=AA 
PathsAA #
.AA# $#
UnifyDirectorySeparatorAA$ ;
(AA; <
ApplicationAA< G
.AAG H
dataPathAAH P
)AAP Q
;AAQ R
varBB 

allCsFilesBB 
=BB  

GetCSFilesBB! +
(BB+ ,
dirPathBB, 3
,BB3 4
FileExtensionBB5 B
)BBB C
;BBC D
varDD 
fileNameDD 
=DD 

allCsFilesDD )
.DD) *
FirstOrDefaultDD* 8
(DD8 9
xDD9 :
=>DD; =
xEE 
.EE 
SplitEE 
(EE 
PathEE  
.EE  !"
DirectorySeparatorCharEE! 7
)EE7 8
.EE8 9
LastEE9 =
(EE= >
)EE> ?
.EE? @
EqualsEE@ F
(EEF G
stringEEG M
.EEM N
ConcatEEN T
(EET U
GetTestFileNameEEU d
(EEd e
typeEEe i
)EEi j
,EEj k
FileExtensionEEl y
)EEy z
)EEz {
)EE{ |
;EE| }
fileOpenInfoGG 
.GG 
FilePathGG %
=GG& '
fileNameGG( 0
??GG1 3
stringGG4 :
.GG: ;
EmptyGG; @
;GG@ A
}HH 
ifJJ 
(JJ 
!JJ 
fileOpenInfoJJ 
.JJ 
FilePathJJ &
.JJ& '
ContainsJJ' /
(JJ/ 0
$strJJ0 8
)JJ8 9
)JJ9 :
{KK 
returnLL 
fileOpenInfoLL #
;LL# $
}MM 
fileOpenInfoNN 
.NN 
FilePathNN !
=NN" #.
"FilePathToAssetsRelativeAndUnifiedNN$ F
(NNF G
fileOpenInfoNNG S
.NNS T
FilePathNNT \
)NN\ ]
;NN] ^
returnPP 
fileOpenInfoPP 
;PP  
}QQ 	
internalSS 
staticSS 
stringSS 
GetTestFileNameSS .
(SS. /
TypeSS/ 3
typeSS4 8
)SS8 9
{TT 	
ifVV 
(VV 
typeVV 
.VV 
FullNameVV 
!=VV  
nullVV! %
&&VV& (
typeVV) -
.VV- .
	NamespaceVV. 7
!=VV7 9
nullVV9 =
&&VV> @
typeVVA E
.VVE F
FullNameVVF N
.VVN O
ContainsVVO W
(VVW X
$strVVX [
)VV[ \
)VV\ ]
{WW 
varXX 
removedNamespaceXX $
=XX% &
typeXX' +
.XX+ ,
FullNameXX, 4
.XX4 5
	SubstringXX5 >
(XX> ?
typeXX? C
.XXC D
	NamespaceXXD M
.XXM N
LengthXXN T
+XXT U
$numXXU V
)XXV W
;XXW X
returnYY 
removedNamespaceYY '
.YY' (
	SubstringYY( 1
(YY1 2
$numYY2 3
,YY3 4
removedNamespaceYY4 D
.YYD E
IndexOfYYE L
(YYL M
$strYYM P
,YYP Q
StringComparisonYYR b
.YYb c
OrdinalYYc j
)YYj k
)YYk l
;YYl m
}ZZ 
return[[ 
type[[ 
.[[ 
Name[[ 
;[[ 
}\\ 	
public]] 
string]] .
"FilePathToAssetsRelativeAndUnified]] 8
(]]8 9
string]]9 ?
filePath]]@ H
)]]H I
{^^ 	
if__ 
(__ 
string__ 
.__ 
IsNullOrEmpty__ $
(__$ %
filePath__% -
)__- .
)__. /
return`` 
string`` 
.`` 
Empty`` #
;``# $
filePathbb 
=bb 
Pathsbb 
.bb #
UnifyDirectorySeparatorbb 4
(bb4 5
filePathbb5 =
)bb= >
;bb> ?
varcc 
lengthcc 
=cc 
Pathscc 
.cc #
UnifyDirectorySeparatorcc 6
(cc6 7
Applicationcc7 B
.ccB C
dataPathccC K
)ccK L
.ccL M
LengthccM S
-ccT U
$strccV ^
.cc^ _
Lengthcc_ e
;cce f
returnee 
filePathee 
.ee 
	Substringee %
(ee% &
lengthee& ,
)ee, -
;ee- .
}ff 	
publichh 
boolhh &
OpenScriptInExternalEditorhh .
(hh. /
stringhh/ 5

stacktracehh6 @
)hh@ A
{ii 	
ifjj 
(jj 
stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %

stacktracejj% /
)jj/ 0
)jj0 1
returnkk 
falsekk 
;kk 
varmm 
regexmm 
=mm 
newmm 
Regexmm !
(mm! "
$strmm" E
)mmE F
;mmF G
varoo 
matchingLinesoo 
=oo 

stacktraceoo  *
.oo* +
Splitoo+ 0
(oo0 1
newoo1 4
[oo4 5
]oo5 6
{oo7 8
Environmentoo9 D
.ooD E
NewLineooE L
}ooM N
,ooN O
StringSplitOptionsooP b
.oob c
RemoveEmptyEntriesooc u
)oou v
.oov w
Whereoow |
(oo| }
xoo} ~
=>	oo Å
regex
ooÇ á
.
ooá à
IsMatch
ooà è
(
ooè ê
x
ooê ë
)
ooë í
)
ooí ì
.
ooì î
ToList
ooî ö
(
ooö õ
)
ooõ ú
;
ooú ù
ifpp 
(pp 
!pp 
matchingLinespp 
.pp 
Anypp "
(pp" #
)pp# $
)pp$ %
returnqq 
falseqq 
;qq 
varss 
fileOpenInfosss 
=ss 
matchingLinesss  -
.tt 
Selecttt 
(tt 
xtt 
=>tt 
regextt "
.tt" #
Matchtt# (
(tt( )
xtt) *
)tt* +
)tt+ ,
.uu 
Selectuu 
(uu 
xuu 
=>uu 
newvv 
FileOpenInfovv $
{ww 
FilePathxx  
=xx! "
xxx# $
.xx$ %
Groupsxx% +
[xx+ ,
$strxx, 2
]xx2 3
.xx3 4
Valuexx4 9
,xx9 :

LineNumberyy "
=yy# $
intyy% (
.yy( )
Parseyy) .
(yy. /
xyy/ 0
.yy0 1
Groupsyy1 7
[yy7 8
$stryy8 >
]yy> ?
.yy? @
Valueyy@ E
)yyE F
}zz 
)zz 
.zz 
ToListzz 
(zz 
)zz 
;zz  
var|| 
fileOpenInfo|| 
=|| 
fileOpenInfos|| ,
.}} 
FirstOrDefault}} 
(}}  
openInfo}}  (
=>}}) +
!}}, -
string}}- 3
.}}3 4
IsNullOrEmpty}}4 A
(}}A B
openInfo}}B J
.}}J K
FilePath}}K S
)}}S T
&&}}U W
File}}X \
.}}\ ]
Exists}}] c
(}}c d
openInfo}}d l
.}}l m
FilePath}}m u
)}}u v
)}}v w
;}}w x
if 
( 
fileOpenInfo 
== 
null  $
)$ %
{
ÄÄ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
var
ÑÑ 
filePath
ÑÑ 
=
ÑÑ 0
"FilePathToAssetsRelativeAndUnified
ÑÑ =
(
ÑÑ= >
fileOpenInfo
ÑÑ> J
.
ÑÑJ K
FilePath
ÑÑK S
)
ÑÑS T
;
ÑÑT U"
AssetsDatabaseHelper
ÖÖ  
.
ÖÖ  !1
#OpenAssetInItsDefaultExternalEditor
ÖÖ! D
(
ÖÖD E
filePath
ÖÖE M
,
ÖÖM N
fileOpenInfo
ÖÖO [
.
ÖÖ[ \

LineNumber
ÖÖ\ f
)
ÖÖf g
;
ÖÖg h
return
áá 
true
áá 
;
áá 
}
àà 	
}
ââ 
}ää Õa
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\UITestRunnerFilter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
[		 
Serializable		 
]		 
internal

 
class

 
UITestRunnerFilter

 %
{ 
public 
string 
[ 
] 
assemblyNames %
;% &
public 
string 
[ 
] 

groupNames "
;" #
public 
string 
[ 
] 
categoryNames %
;% &
public 
string 
[ 
] 
	testNames !
;! "
public 
int 
testRepetitions "
=# $
$num% &
;& '
public 
bool 
synchronousOnly #
=$ %
false& +
;+ ,
public 
static 
string  
AssemblyNameFromPath 1
(1 2
string2 8
path9 =
)= >
{ 	
string 
output 
= 
Path  
.  !
GetFileName! ,
(, -
path- 1
)1 2
;2 3
if 
( 
output 
!= 
null 
&& !
output" (
.( )
EndsWith) 1
(1 2
$str2 8
,8 9
StringComparison: J
.J K
OrdinalIgnoreCaseK \
)\ ]
)] ^
return 
output 
. 
	Substring '
(' (
$num( )
,) *
output+ 1
.1 2
Length2 8
-9 :
$num; <
)< =
;= >
return 
output 
; 
} 	
private 
bool 
CategoryMatches $
($ %
IEnumerable% 0
<0 1
string1 7
>7 8

categories9 C
)C D
{ 	
if 
( 
categoryNames 
==  
null! %
||& (
categoryNames) 6
.6 7
Length7 =
==> @
$numA B
)B C
return 
true 
; 
foreach!! 
(!! 
string!! 
category!! $
in!!% '

categories!!( 2
)!!2 3
{"" 
if## 
(## 
categoryNames## !
.##! "
Contains##" *
(##* +
category##+ 3
)##3 4
)##4 5
return$$ 
true$$ 
;$$  
}%% 
return'' 
false'' 
;'' 
}(( 	
private** 
bool** 
IDMatchesAssembly** &
(**& '
string**' -
id**. 0
)**0 1
{++ 	
if,, 
(,, #
AreOptionalFiltersEmpty,, '
(,,' (
),,( )
),,) *
return-- 
true-- 
;-- 
if// 
(// 
assemblyNames// 
==//  
null//! %
||//& (
assemblyNames//) 6
.//6 7
Length//7 =
==//> @
$num//A B
)//B C
return00 
true00 
;00 
int22 
openingBracket22 
=22  
id22! #
.22# $
IndexOf22$ +
(22+ ,
$char22, /
)22/ 0
;220 1
int33 
closingBracket33 
=33  
id33! #
.33# $
IndexOf33$ +
(33+ ,
$char33, /
)33/ 0
;330 1
if44 
(44 
openingBracket44 
>=44 !
$num44" #
&&44$ &
openingBracket44' 5
<446 7
id448 :
.44: ;
Length44; A
&&44B D
closingBracket44E S
>44T U
openingBracket44V d
&&44e g
openingBracket55 
<55  
id55! #
.55# $
Length55$ *
)55* +
{66 
string<< 
assemblyNameFromID<< )
=<<* + 
AssemblyNameFromPath== (
(==( )
id==) +
.==+ ,
	Substring==, 5
(==5 6
openingBracket==6 D
+==E F
$num==G H
,==H I
closingBracket==J X
-==Y Z
openingBracket==[ i
-==j k
$num==l m
)==m n
)==n o
;==o p
foreach>> 
(>> 
string>> 
assemblyName>>  ,
in>>- /
assemblyNames>>0 =
)>>= >
{?? 
if@@ 
(@@ 
assemblyName@@ $
.@@$ %
Equals@@% +
(@@+ ,
assemblyNameFromID@@, >
,@@> ?
StringComparison@@@ P
.@@P Q
OrdinalIgnoreCase@@Q b
)@@b c
)@@c d
returnAA 
trueAA #
;AA# $
}BB 
}CC 
returnEE 
falseEE 
;EE 
}FF 	
privateHH 
boolHH 
NameMatchesHH  
(HH  !
stringHH! '
nameHH( ,
)HH, -
{II 	
ifJJ 
(JJ #
AreOptionalFiltersEmptyJJ '
(JJ' (
)JJ( )
)JJ) *
returnKK 
trueKK 
;KK 
ifMM 
(MM 

groupNamesMM 
==MM 
nullMM "
||MM# %

groupNamesMM& 0
.MM0 1
LengthMM1 7
==MM8 :
$numMM; <
)MM< =
returnNN 
trueNN 
;NN 
foreachPP 
(PP 
varPP 
nameFromFilterPP '
inPP( *

groupNamesPP+ 5
)PP5 6
{QQ 
ifSS 
(SS 
RegexSS 
.SS 
IsMatchSS !
(SS! "
nameSS" &
,SS& '
nameFromFilterSS( 6
)SS6 7
)SS7 8
returnTT 
trueTT 
;TT  
varVV 
regexVV 
=VV 
nameFromFilterVV *
.VV* +
TrimEndVV+ 2
(VV2 3
$charVV3 6
)VV6 7
+VV8 9
$strVV: H
;VVH I
ifWW 
(WW 
RegexWW 
.WW 
IsMatchWW !
(WW! "
nameWW" &
,WW& '
regexWW( -
)WW- .
)WW. /
returnXX 
trueXX 
;XX  
}YY 
return[[ 
false[[ 
;[[ 
}\\ 	
private^^ 
bool^^ #
AreOptionalFiltersEmpty^^ ,
(^^, -
)^^- .
{__ 	
if`` 
(`` 
assemblyNames`` 
!=``  
null``! %
&&``& (
assemblyNames``) 6
.``6 7
Length``7 =
!=``> @
$num``A B
)``B C
returnaa 
falseaa 
;aa 
ifbb 
(bb 

groupNamesbb 
!=bb 
nullbb "
&&bb# %

groupNamesbb& 0
.bb0 1
Lengthbb1 7
!=bb8 :
$numbb; <
)bb< =
returncc 
falsecc 
;cc 
ifdd 
(dd 
	testNamesdd 
!=dd 
nulldd !
&&dd" $
	testNamesdd% .
.dd. /
Lengthdd/ 5
!=dd6 8
$numdd9 :
)dd: ;
returnee 
falseee 
;ee 
returnff 
trueff 
;ff 
}gg 	
privateii 
boolii 
NameMatchesExactlyii '
(ii' (
stringii( .
nameii/ 3
)ii3 4
{jj 	
ifkk 
(kk #
AreOptionalFiltersEmptykk '
(kk' (
)kk( )
)kk) *
returnll 
truell 
;ll 
ifnn 
(nn 
	testNamesnn 
==nn 
nullnn !
||nn" $
	testNamesnn% .
.nn. /
Lengthnn/ 5
==nn6 8
$numnn9 :
)nn: ;
returnoo 
trueoo 
;oo 
foreachqq 
(qq 
varqq 
	exactNameqq "
inqq# %
	testNamesqq& /
)qq/ 0
{rr 
ifss 
(ss 
namess 
==ss 
	exactNamess %
)ss% &
returntt 
truett 
;tt  
}uu 
returnww 
falseww 
;ww 
}xx 	
privatezz 
staticzz 
voidzz 
ClearAncestorszz *
(zz* +
IEnumerablezz+ 6
<zz6 7
IClearableResultzz7 G
>zzG H
newResultListzzI V
,zzV W
stringzzX ^
parentIDzz_ g
)zzg h
{{{ 	
if|| 
(|| 
string|| 
.|| 
IsNullOrEmpty|| $
(||$ %
parentID||% -
)||- .
)||. /
return}} 
;}} 
foreach~~ 
(~~ 
var~~ 
result~~ 
in~~  "
newResultList~~# 0
)~~0 1
{ 
if
ÄÄ 
(
ÄÄ 
result
ÄÄ 
.
ÄÄ 
Id
ÄÄ 
==
ÄÄ  
parentID
ÄÄ! )
)
ÄÄ) *
{
ÅÅ 
result
ÇÇ 
.
ÇÇ 
Clear
ÇÇ  
(
ÇÇ  !
)
ÇÇ! "
;
ÇÇ" #
ClearAncestors
ÉÉ "
(
ÉÉ" #
newResultList
ÉÉ# 0
,
ÉÉ0 1
result
ÉÉ2 8
.
ÉÉ8 9
ParentId
ÉÉ9 A
)
ÉÉA B
;
ÉÉB C
break
ÑÑ 
;
ÑÑ 
}
ÖÖ 
}
ÜÜ 
}
áá 	
public
ââ 
void
ââ 
ClearResults
ââ  
(
ââ  !
List
ââ! %
<
ââ% &
IClearableResult
ââ& 6
>
ââ6 7
newResultList
ââ8 E
)
ââE F
{
ää 	
foreach
ãã 
(
ãã 
var
ãã 
result
ãã 
in
ãã  "
newResultList
ãã# 0
)
ãã0 1
{
åå 
if
çç 
(
çç 
!
çç 
result
çç 
.
çç 
IsSuite
çç #
&&
çç$ &
CategoryMatches
çç' 6
(
çç6 7
result
çç7 =
.
çç= >

Categories
çç> H
)
ççH I
)
ççI J
{
éé 
if
èè 
(
èè 
IDMatchesAssembly
èè )
(
èè) *
result
èè* 0
.
èè0 1
Id
èè1 3
)
èè3 4
&&
èè5 7
NameMatches
èè8 C
(
èèC D
result
èèD J
.
èèJ K
FullName
èèK S
)
èèS T
&&
èèU W 
NameMatchesExactly
êê *
(
êê* +
result
êê+ 1
.
êê1 2
FullName
êê2 :
)
êê: ;
)
êê; <
{
ëë 
result
íí 
.
íí 
Clear
íí $
(
íí$ %
)
íí% &
;
íí& '
ClearAncestors
ìì &
(
ìì& '
newResultList
ìì' 4
,
ìì4 5
result
ìì6 <
.
ìì< =
ParentId
ìì= E
)
ììE F
;
ììF G
}
îî 
}
ïï 
}
ññ 
}
óó 	
internal
ôô 
	interface
ôô 
IClearableResult
ôô +
{
öö 	
string
õõ 
Id
õõ 
{
õõ 
get
õõ 
;
õõ 
}
õõ 
string
úú 
FullName
úú 
{
úú 
get
úú !
;
úú! "
}
úú# $
string
ùù 
ParentId
ùù 
{
ùù 
get
ùù !
;
ùù! "
}
ùù# $
bool
ûû 
IsSuite
ûû 
{
ûû 
get
ûû 
;
ûû 
}
ûû  !
List
üü 
<
üü 
string
üü 
>
üü 

Categories
üü #
{
üü$ %
get
üü& )
;
üü) *
}
üü+ ,
void
†† 
Clear
†† 
(
†† 
)
†† 
;
†† 
}
°° 	
}
££ 
}§§ Á
ΩD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\EditModeLauncherContextSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class +
EditModeLauncherContextSettings 2
:3 4
IDisposable5 @
{ 
private 
bool 
m_RunInBackground &
;& '
public

 +
EditModeLauncherContextSettings

 .
(

. /
)

/ 0
{ 	"
SetupProjectParameters "
(" #
)# $
;$ %
} 	
public 
void 
Dispose 
( 
) 
{ 	$
CleanupProjectParameters $
($ %
)% &
;& '
} 	
private 
void "
SetupProjectParameters +
(+ ,
), -
{ 	
m_RunInBackground 
= 
Application  +
.+ ,
runInBackground, ;
;; <
Application 
. 
runInBackground '
=( )
true* .
;. /
} 	
private 
void $
CleanupProjectParameters -
(- .
). /
{ 	
Application 
. 
runInBackground '
=( )
m_RunInBackground* ;
;; <
} 	
} 
} ï
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\SetupException.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal 
class 
SetupException !
:" #
	Exception$ -
{ 
public 
ExceptionType 
Type !
{" #
get$ '
;' (
}) *
public 
object 
[ 
] 
Details 
{  !
get" %
;% &
}' (
public

 
SetupException

 
(

 
ExceptionType

 +
type

, 0
,

0 1
params

2 8
object

9 ?
[

? @
]

@ A
details

B I
)

I J
{ 	
Type 
= 
type 
; 
Details 
= 
details 
; 
} 	
public 
enum 
ExceptionType !
{ 	#
ScriptCompilationFailed #
,# $
PlatformNotFound 
, $
TestSettingsFileNotFound $
,$ %
} 	
} 
} ¬
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\EnumeratorStepHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class  
EnumeratorStepHelper '
{ 
private 
static 
int 
m_PC 
;  
public

 
static

 
void

 
SetEnumeratorPC

 *
(

* +
int

+ .
pc

/ 1
)

1 2
{ 	
m_PC 
= 
pc 
; 
} 	
public 
static 
int 
GetEnumeratorPC )
() *
IEnumerator* 5

enumerator6 @
)@ A
{ 	
if 
( 

enumerator 
== 
null "
)" #
{ 
return 
$num 
; 
} 
return 
( 
int 
) 
GetPCFieldInfo &
(& '

enumerator' 1
)1 2
.2 3
GetValue3 ;
(; <

enumerator< F
)F G
;G H
} 	
public 
static 
bool &
UpdateEnumeratorPcIfNeeded 5
(5 6
IEnumerator6 A

enumeratorB L
)L M
{   	
if!! 
(!! 
m_PC!! 
!=!! 
$num!! 
)!! 
{"" 
GetPCFieldInfo## 
(## 

enumerator## )
)##) *
.##* +
SetValue##+ 3
(##3 4

enumerator##4 >
,##> ?
m_PC##@ D
)##D E
;##E F
m_PC$$ 
=$$ 
$num$$ 
;$$ 
return%% 
true%% 
;%% 
}&& 
return'' 
false'' 
;'' 
}(( 	
private** 
static** 
	FieldInfo**  
GetPCFieldInfo**! /
(**/ 0
IEnumerator**0 ;

enumerator**< F
)**F G
{++ 	
var,, 
field,, 
=,, 

enumerator,, "
.,," #
GetType,,# *
(,,* +
),,+ ,
.,,, -
GetField,,- 5
(,,5 6
$str,,6 ;
,,,; <
BindingFlags,,= I
.,,I J
	NonPublic,,J S
|,,T U
BindingFlags,,V b
.,,b c
Instance,,c k
),,k l
;,,l m
if-- 
(-- 
field-- 
==-- 
null-- 
)-- 
field.. 
=.. 

enumerator.. "
..." #
GetType..# *
(..* +
)..+ ,
..., -
GetField..- 5
(..5 6
$str..6 B
,..B C
BindingFlags..D P
...P Q
	NonPublic..Q Z
|..[ \
BindingFlags..] i
...i j
Instance..j r
)..r s
;..s t
return00 
field00 
;00 
}11 	
}22 
}33 ‹
πD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\FileCleanupVerifierTaskBase.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
abstract 
class '
FileCleanupVerifierTaskBase 7
:8 9
TestTaskBase: F
{ 
internal 
Func 
< 
string 
[ 
] 
> "
GetAllAssetPathsAction  6
=7 8
AssetDatabase9 F
.F G
GetAllAssetPathsG W
;W X
	protected		 
string		 
[		 
]		 (
GetAllFilesInAssetsDirectory		 7
(		7 8
)		8 9
{

 	
return "
GetAllAssetPathsAction )
() *
)* +
;+ ,
} 	
} 
} ¸>
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestAdaptorFactory.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal		 
class		 
TestAdaptorFactory		 %
:		& '
ITestAdaptorFactory		( ;
{

 
private 

Dictionary 
< 
string !
,! "
TestAdaptor# .
>. /
m_TestAdaptorCache0 B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
TestAdaptor\ g
>g h
(h i
)i j
;j k
private 

Dictionary 
< 
string !
,! "
TestResultAdaptor# 4
>4 5$
m_TestResultAdaptorCache6 N
=O P
newQ T

DictionaryU _
<_ `
string` f
,f g
TestResultAdaptorh y
>y z
(z {
){ |
;| }
public 
ITestAdaptor 
Create "
(" #
ITest# (
test) -
)- .
{ 	
var 

uniqueName 
= 
test !
.! "
GetUniqueName" /
(/ 0
)0 1
;1 2
if 
( 
m_TestAdaptorCache "
." #
ContainsKey# .
(. /

uniqueName/ 9
)9 :
): ;
{ 
return 
m_TestAdaptorCache )
[) *

uniqueName* 4
]4 5
;5 6
} 
var 
adaptor 
= 
new 
TestAdaptor )
() *
test* .
,. /
test0 4
.4 5
Tests5 :
.: ;
Select; A
(A B
CreateB H
)H I
.I J
ToArrayJ Q
(Q R
)R S
)S T
;T U
foreach 
( 
var 
child 
in !
adaptor" )
.) *
Children* 2
)2 3
{ 
( 
child 
as 
TestAdaptor %
)% &
.& '
	SetParent' 0
(0 1
adaptor1 8
)8 9
;9 :
} 
m_TestAdaptorCache 
[ 

uniqueName )
]) *
=+ ,
adaptor- 4
;4 5
return 
adaptor 
; 
} 	
public 
ITestAdaptor 
Create "
(" #
RemoteTestData# 1
testData2 :
): ;
{ 	
return   
new   
TestAdaptor   "
(  " #
testData  # +
)  + ,
;  , -
}!! 	
public## 
ITestResultAdaptor## !
Create##" (
(##( )
ITestResult##) 4

testResult##5 ?
)##? @
{$$ 	
var%% 

uniqueName%% 
=%% 

testResult%% '
.%%' (
Test%%( ,
.%%, -
GetUniqueName%%- :
(%%: ;
)%%; <
;%%< =
if&& 
(&& $
m_TestResultAdaptorCache&& (
.&&( )
ContainsKey&&) 4
(&&4 5

uniqueName&&5 ?
)&&? @
)&&@ A
{'' 
return(( $
m_TestResultAdaptorCache(( /
[((/ 0

uniqueName((0 :
]((: ;
;((; <
})) 
var** 
adaptor** 
=** 
new** 
TestResultAdaptor** /
(**/ 0

testResult**0 :
,**: ;
Create**< B
(**B C

testResult**C M
.**M N
Test**N R
)**R S
,**S T

testResult**U _
.**_ `
Children**` h
.**h i
Select**i o
(**o p
Create**p v
)**v w
.**w x
ToArray**x 
(	** Ä
)
**Ä Å
)
**Å Ç
;
**Ç É$
m_TestResultAdaptorCache++ $
[++$ %

uniqueName++% /
]++/ 0
=++1 2
adaptor++3 :
;++: ;
return,, 
adaptor,, 
;,, 
}-- 	
public// 
ITestResultAdaptor// !
Create//" (
(//( ) 
RemoteTestResultData//) =

testResult//> H
,//H I,
 RemoteTestResultDataWithTestData//J j
allData//k r
)//r s
{00 	
return11 
new11 
TestResultAdaptor11 (
(11( )

testResult11) 3
,113 4
allData115 <
)11< =
;11= >
}22 	
public44 
ITestAdaptor44 
	BuildTree44 %
(44% &,
 RemoteTestResultDataWithTestData44& F
data44G K
)44K L
{55 	
var66 
tests66 
=66 
data66 
.66 
tests66 "
.66" #
Select66# )
(66) *
remoteTestData66* 8
=>669 ;
new66< ?
TestAdaptor66@ K
(66K L
remoteTestData66L Z
)66Z [
)66[ \
.66\ ]
ToList66] c
(66c d
)66d e
;66e f
foreach88 
(88 
var88 
test88 
in88  
tests88! &
)88& '
{99 
test:: 
.:: 
ApplyChildren:: "
(::" #
tests::# (
)::( )
;::) *
};; 
return== 
tests== 
.== 
First== 
(== 
)==  
;==  !
}>> 	
public@@ 
IEnumerator@@ 
<@@ 
ITestAdaptor@@ '
>@@' (
BuildTreeAsync@@) 7
(@@7 8,
 RemoteTestResultDataWithTestData@@8 X
data@@Y ]
)@@] ^
{AA 	
varBB 
testsBB 
=BB 
dataBB 
.BB 
testsBB "
.BB" #
SelectBB# )
(BB) *
remoteTestDataBB* 8
=>BB9 ;
newBB< ?
TestAdaptorBB@ K
(BBK L
remoteTestDataBBL Z
)BBZ [
)BB[ \
.BB\ ]
ToListBB] c
(BBc d
)BBd e
;BBe f
forDD 
(DD 
varDD 
indexDD 
=DD 
$numDD 
;DD 
indexDD  %
<DD& '
testsDD( -
.DD- .
CountDD. 3
;DD3 4
indexDD5 :
++DD: <
)DD< =
{EE 
varFF 
testFF 
=FF 
testsFF  
[FF  !
indexFF! &
]FF& '
;FF' (
testGG 
.GG 
ApplyChildrenGG "
(GG" #
testsGG# (
)GG( )
;GG) *
ifHH 
(HH 
indexHH 
%HH 
$numHH 
==HH  "
$numHH# $
)HH$ %
{II 
yieldJJ 
returnJJ  
nullJJ! %
;JJ% &
}KK 
}LL 
yieldNN 
returnNN 
testsNN 
.NN 
FirstNN $
(NN$ %
)NN% &
;NN& '
}OO 	
publicQQ 
voidQQ 
ClearResultsCacheQQ %
(QQ% &
)QQ& '
{RR 	$
m_TestResultAdaptorCacheSS $
.SS$ %
ClearSS% *
(SS* +
)SS+ ,
;SS, -
}TT 	
publicVV 
voidVV 
ClearTestsCacheVV #
(VV# $
)VV$ %
{WW 	
m_TestAdaptorCacheXX 
.XX 
ClearXX $
(XX$ %
)XX% &
;XX& '
}YY 	
}ZZ 
}[[ œ
®D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\AssetsDatabaseHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class  
AssetsDatabaseHelper '
:( )!
IAssetsDatabaseHelper* ?
{ 
public 
void /
#OpenAssetInItsDefaultExternalEditor 7
(7 8
string8 >
	assetPath? H
,H I
intJ M
lineN R
)R S
{ 	
var 
asset 
= 
AssetDatabase %
.% &
LoadMainAssetAtPath& 9
(9 :
	assetPath: C
)C D
;D E
AssetDatabase 
. 
	OpenAsset #
(# $
asset$ )
,) *
line+ /
)/ 0
;0 1
}		 	
}

 
} ¥¬
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlayerLauncher.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class %
TestLaunchFailedException ,
:- .
	Exception/ 8
{ 
public %
TestLaunchFailedException (
(( )
)) *
{+ ,
}, -
public %
TestLaunchFailedException (
(( )
string) /
message0 7
)7 8
:9 :
base; ?
(? @
message@ G
)G H
{I J
}J K
} 
[ 
Serializable 
] 
internal 
class 
PlayerLauncher !
:" ##
RuntimeTestLauncherBase$ ;
{ 
private 
readonly +
PlaymodeTestsControllerSettings 8

m_Settings9 C
;C D
private 
readonly 
BuildTarget $
m_TargetPlatform% 5
;5 6
private 
ITestRunSettings  %
m_OverloadTestRunSettings! :
;: ;
private 
string 
m_SceneName "
;" #
private 
int 
m_HeartbeatTimeout &
;& '
public!! 
PlayerLauncher!! 
(!! +
PlaymodeTestsControllerSettings!! =
settings!!> F
,!!F G
BuildTarget!!H S
?!!S T
targetPlatform!!U c
,!!c d
ITestRunSettings!!e u$
overloadTestRunSettings	!!v ç
,
!!ç é
int
!!è í
heartbeatTimeout
!!ì £
)
!!£ §
{"" 	

m_Settings## 
=## 
settings## !
;##! "
m_TargetPlatform$$ 
=$$ 
targetPlatform$$ -
??$$. 0#
EditorUserBuildSettings$$1 H
.$$H I
activeBuildTarget$$I Z
;$$Z [%
m_OverloadTestRunSettings%% %
=%%& '#
overloadTestRunSettings%%( ?
;%%? @
m_HeartbeatTimeout&& 
=&&  
heartbeatTimeout&&! 1
;&&1 2
}'' 	
	protected)) 
override)) 
RuntimePlatform)) *
?))* +
TestTargetPlatform)), >
{** 	
get++ 
{++ 
return++  
BuildTargetConverter++ -
.++- .'
TryConvertToRuntimePlatform++. I
(++I J
m_TargetPlatform++J Z
)++Z [
;++[ \
}++] ^
},, 	
public.. 
override.. 
void.. 
Run..  
(..  !
)..! "
{// 	
var00 )
editorConnectionTestCollector00 -
=00. /#
RemoteTestRunController000 G
.00G H
instance00H P
;00P Q)
editorConnectionTestCollector11 )
.11) *
	hideFlags11* 3
=114 5
	HideFlags116 ?
.11? @
HideAndDontSave11@ O
;11O P)
editorConnectionTestCollector22 )
.22) *
Init22* .
(22. /
m_TargetPlatform22/ ?
,22? @
m_HeartbeatTimeout22A S
)22S T
;22T U
var44 %
remotePlayerLogController44 )
=44* +%
RemotePlayerLogController44, E
.44E F
instance44F N
;44N O%
remotePlayerLogController55 %
.55% &
	hideFlags55& /
=550 1
	HideFlags552 ;
.55; <
HideAndDontSave55< K
;55K L
using77 
(77 
var77 
settings77 
=77  !
new77" %)
PlayerLauncherContextSettings77& C
(77C D%
m_OverloadTestRunSettings77D ]
)77] ^
)77^ _
{88 
m_SceneName99 
=99 
CreateSceneName99 -
(99- .
)99. /
;99/ 0
var:: 
scene:: 
=:: 
PrepareScene:: (
(::( )
m_SceneName::) 4
)::4 5
;::5 6
string;; 
	scenePath;;  
=;;! "
scene;;# (
.;;( )
path;;) -
;;;- .
var== 
filter== 
=== 

m_Settings== '
.==' (
BuildNUnitFilter==( 8
(==8 9
)==9 :
;==: ;
var>> 
runner>> 
=>> 
	LoadTests>> &
(>>& '
filter>>' -
)>>- .
;>>. /
var?? 
exceptionThrown?? #
=??$ %'
ExecutePreBuildSetupMethods??& A
(??A B
runner??B H
.??H I

LoadedTest??I S
,??S T
filter??U [
)??[ \
;??\ ]
if@@ 
(@@ 
exceptionThrown@@ #
)@@# $
{AA 
ReopenOriginalSceneBB '
(BB' (

m_SettingsBB( 2
.BB2 3
originalSceneBB3 @
)BB@ A
;BBA B
AssetDatabaseCC !
.CC! "
DeleteAssetCC" -
(CC- .
m_SceneNameCC. 9
)CC9 :
;CC: ;
CallbacksDelegatorDD &
.DD& '
instanceDD' /
.DD/ 0
	RunFailedDD0 9
(DD9 :
$str	DD: è
)
DDè ê
;
DDê ë
returnEE 
;EE 
}FF 
varHH 
playerBuildOptionsHH &
=HH' (
GetBuildOptionsHH) 8
(HH8 9
	scenePathHH9 B
)HHB C
;HHC D
varJJ 
successJJ 
=JJ 
BuildAndRunPlayerJJ /
(JJ/ 0
playerBuildOptionsJJ0 B
)JJB C
;JJC D)
editorConnectionTestCollectorLL -
.LL- .
PostBuildActionLL. =
(LL= >
)LL> ?
;LL? @*
ExecutePostBuildCleanupMethodsMM .
(MM. /
runnerMM/ 5
.MM5 6

LoadedTestMM6 @
,MM@ A
filterMMB H
)MMH I
;MMI J
ReopenOriginalSceneOO #
(OO# $

m_SettingsOO$ .
.OO. /
originalSceneOO/ <
)OO< =
;OO= >
AssetDatabasePP 
.PP 
DeleteAssetPP )
(PP) *
m_SceneNamePP* 5
)PP5 6
;PP6 7
ifRR 
(RR 
!RR 
successRR 
)RR 
{SS )
editorConnectionTestCollectorTT 1
.TT1 2
CleanUpTT2 9
(TT9 :
)TT: ;
;TT; <
ScriptableObjectUU $
.UU$ %
DestroyImmediateUU% 5
(UU5 6)
editorConnectionTestCollectorUU6 S
)UUS T
;UUT U
DebugVV 
.VV 
LogErrorVV "
(VV" #
$strVV# 8
)VV8 9
;VV9 :
throwWW 
newWW %
TestLaunchFailedExceptionWW 7
(WW7 8
$strWW8 M
)WWM N
;WWN O
}XX 
ifZZ 
(ZZ 
(ZZ 
playerBuildOptionsZZ '
.ZZ' (
BuildPlayerOptionsZZ( :
.ZZ: ;
optionsZZ; B
&ZZC D
BuildOptionsZZE Q
.ZZQ R
AutoRunPlayerZZR _
)ZZ_ `
!=ZZa c
$numZZd e
)ZZe f
{[[ )
editorConnectionTestCollector\\ 1
.\\1 2%
PostSuccessfulBuildAction\\2 K
(\\K L
)\\L M
;\\M N)
editorConnectionTestCollector]] 1
.]]1 2&
PostSuccessfulLaunchAction]]2 L
(]]L M
)]]M N
;]]N O
}^^ 
var`` 
runSettings`` 
=``  !%
m_OverloadTestRunSettings``" ;
as``< >)
PlayerLauncherTestRunSettings``? \
;``\ ]
ifaa 
(aa 
successaa 
&&aa 
runSettingsaa *
!=aa+ -
nullaa. 2
&&aa3 5
runSettingsaa6 A
.aaA B
	buildOnlyaaB K
)aaK L
{bb 
EditorUtilitycc !
.cc! "
RevealInFindercc" 0
(cc0 1
playerBuildOptionscc1 C
.ccC D
BuildPlayerOptionsccD V
.ccV W
locationPathNameccW g
)ccg h
;cch i
}dd 
}ee 
}ff 	
publichh 
Scenehh 
PrepareScenehh !
(hh! "
stringhh" (
	sceneNamehh) 2
)hh2 3
{ii 	
varjj 
scenejj 
=jj  
CreateBootstrapScenejj ,
(jj, -
	sceneNamejj- 6
,jj6 7
runnerjj8 >
=>jj? A
{kk 
runnerll 
.ll (
AddEventHandlerMonoBehaviourll 3
<ll3 4"
PlayModeRunnerCallbackll4 J
>llJ K
(llK L
)llL M
;llM N
runnermm 
.mm 
settingsmm 
=mm  !

m_Settingsmm" ,
;mm, -
varnn 
commandLineArgsnn #
=nn$ %
Environmentnn& 1
.nn1 2
GetCommandLineArgsnn2 D
(nnD E
)nnE F
;nnF G
ifoo 
(oo 
!oo 
commandLineArgsoo $
.oo$ %
Containsoo% -
(oo- .
$stroo. S
)ooS T
)ooT U
{pp 
runnerqq 
.qq (
AddEventHandlerMonoBehaviourqq 7
<qq7 8"
RemoteTestResultSenderqq8 N
>qqN O
(qqO P
)qqP Q
;qqQ R
}rr 
runnerss 
.ss (
AddEventHandlerMonoBehaviourss 3
<ss3 4
PlayerQuitHandlerss4 E
>ssE F
(ssF G
)ssG H
;ssH I
runnertt 
.tt +
AddEventHandlerScriptableObjecttt 6
<tt6 7#
TestRunCallbackListenertt7 N
>ttN O
(ttO P
)ttP Q
;ttQ R
}uu 
)uu 
;uu 
returnvv 
scenevv 
;vv 
}ww 	
privateyy 
staticyy 
boolyy 
BuildAndRunPlayeryy -
(yy- .&
PlayerLauncherBuildOptionsyy. H
buildOptionsyyI U
)yyU V
{zz 	
Debug{{ 
.{{ 
	LogFormat{{ 
({{ 
LogType{{ #
.{{# $
Log{{$ '
,{{' (
	LogOption{{) 2
.{{2 3
NoStacktrace{{3 ?
,{{? @
null{{A E
,{{E F
$str{{G u
,{{u v
buildOptions	{{w É
)
{{É Ñ
;
{{Ñ Ö
if 
( 
buildOptions 
. 
BuildPlayerOptions /
./ 0
target0 6
==7 9
BuildTarget: E
.E F
AndroidF M
)M N
{
ÄÄ 
buildOptions
ÅÅ 
.
ÅÅ  
BuildPlayerOptions
ÅÅ /
.
ÅÅ/ 0
options
ÅÅ0 7
&=
ÅÅ8 :
~
ÅÅ; <
BuildOptions
ÅÅ< H
.
ÅÅH I
ConnectToHost
ÅÅI V
;
ÅÅV W
}
ÇÇ 
if
ÖÖ 
(
ÖÖ 
buildOptions
ÖÖ 
.
ÖÖ  
BuildPlayerOptions
ÖÖ /
.
ÖÖ/ 0
target
ÖÖ0 6
==
ÖÖ7 9
BuildTarget
ÖÖ: E
.
ÖÖE F
Lumin
ÖÖF K
)
ÖÖK L
{
ÜÜ 
buildOptions
áá 
.
áá  
BuildPlayerOptions
áá /
.
áá/ 0
options
áá0 7
&=
áá8 :
~
áá; <
BuildOptions
áá< H
.
ááH I
ConnectToHost
ááI V
;
ááV W
}
àà 
var
ää 
result
ää 
=
ää 
BuildPipeline
ää &
.
ää& '
BuildPlayer
ää' 2
(
ää2 3
buildOptions
ää3 ?
.
ää? @ 
BuildPlayerOptions
ää@ R
)
ääR S
;
ääS T
if
ãã 
(
ãã 
result
ãã 
.
ãã 
summary
ãã 
.
ãã 
result
ãã %
!=
ãã& (
Build
ãã) .
.
ãã. /
	Reporting
ãã/ 8
.
ãã8 9
BuildResult
ãã9 D
.
ããD E
	Succeeded
ããE N
)
ããN O
Debug
åå 
.
åå 
LogError
åå 
(
åå 
result
åå %
.
åå% &
SummarizeErrors
åå& 5
(
åå5 6
)
åå6 7
)
åå7 8
;
åå8 9
return
éé 
result
éé 
.
éé 
summary
éé !
.
éé! "
result
éé" (
==
éé) +
Build
éé, 1
.
éé1 2
	Reporting
éé2 ;
.
éé; <
BuildResult
éé< G
.
ééG H
	Succeeded
ééH Q
;
ééQ R
}
èè 	
internal
ëë (
PlayerLauncherBuildOptions
ëë +
GetBuildOptions
ëë, ;
(
ëë; <
string
ëë< B
	scenePath
ëëC L
)
ëëL M
{
íí 	
var
ìì 
	buildOnly
ìì 
=
ìì 
false
ìì !
;
ìì! "
var
îî 
runSettings
îî 
=
îî '
m_OverloadTestRunSettings
îî 7
as
îî8 :+
PlayerLauncherTestRunSettings
îî; X
;
îîX Y
if
ïï 
(
ïï 
runSettings
ïï 
!=
ïï 
null
ïï #
)
ïï# $
{
ññ 
	buildOnly
óó 
=
óó 
runSettings
óó '
.
óó' (
	buildOnly
óó( 1
;
óó1 2
}
òò 
var
öö 
buildOptions
öö 
=
öö 
new
öö " 
BuildPlayerOptions
öö# 5
(
öö5 6
)
öö6 7
;
öö7 8
var
úú 
scenes
úú 
=
úú 
new
úú 
List
úú !
<
úú! "
string
úú" (
>
úú( )
(
úú) *
)
úú* +
{
úú, -
	scenePath
úú. 7
}
úú8 9
;
úú9 :
scenes
ùù 
.
ùù 
AddRange
ùù 
(
ùù !
EditorBuildSettings
ùù /
.
ùù/ 0
scenes
ùù0 6
.
ùù6 7
Select
ùù7 =
(
ùù= >
x
ùù> ?
=>
ùù@ B
x
ùùC D
.
ùùD E
path
ùùE I
)
ùùI J
)
ùùJ K
;
ùùK L
buildOptions
ûû 
.
ûû 
scenes
ûû 
=
ûû  !
scenes
ûû" (
.
ûû( )
ToArray
ûû) 0
(
ûû0 1
)
ûû1 2
;
ûû2 3
buildOptions
†† 
.
†† 
options
††  
|=
††! #
BuildOptions
††$ 0
.
††0 1
Development
††1 <
|
††= >
BuildOptions
††? K
.
††K L
ConnectToHost
††L Y
|
††Z [
BuildOptions
††\ h
.
††h i#
IncludeTestAssemblies
††i ~
|†† Ä
BuildOptions††Å ç
.††ç é

StrictMode††é ò
;††ò ô
buildOptions
°° 
.
°° 
target
°° 
=
°°  !
m_TargetPlatform
°°" 2
;
°°2 3
if
££ 
(
££ %
EditorUserBuildSettings
££ '
.
££' (%
waitForPlayerConnection
££( ?
)
££? @
buildOptions
§§ 
.
§§ 
options
§§ $
|=
§§% '
BuildOptions
§§( 4
.
§§4 5%
WaitForPlayerConnection
§§5 L
;
§§L M
if
¶¶ 
(
¶¶ %
EditorUserBuildSettings
¶¶ '
.
¶¶' (
allowDebugging
¶¶( 6
)
¶¶6 7
buildOptions
ßß 
.
ßß 
options
ßß $
|=
ßß% '
BuildOptions
ßß( 4
.
ßß4 5
AllowDebugging
ßß5 C
;
ßßC D
if
©© 
(
©© %
EditorUserBuildSettings
©© '
.
©©' ("
installInBuildFolder
©©( <
)
©©< =
buildOptions
™™ 
.
™™ 
options
™™ $
|=
™™% '
BuildOptions
™™( 4
.
™™4 5"
InstallInBuildFolder
™™5 I
;
™™I J
else
´´ 
if
´´ 
(
´´ 
!
´´ 
	buildOnly
´´ 
)
´´  
buildOptions
¨¨ 
.
¨¨ 
options
¨¨ $
|=
¨¨% '
BuildOptions
¨¨( 4
.
¨¨4 5
AutoRunPlayer
¨¨5 B
;
¨¨B C
var
ÆÆ 
buildTargetGroup
ÆÆ  
=
ÆÆ! "%
EditorUserBuildSettings
ÆÆ# :
.
ÆÆ: ;$
activeBuildTargetGroup
ÆÆ; Q
;
ÆÆQ R
if
±± 
(
±± $
PostprocessBuildPlayer
±± &
.
±±& '$
SupportsLz4Compression
±±' =
(
±±= >
buildTargetGroup
±±> N
,
±±N O
m_TargetPlatform
±±P `
)
±±` a
)
±±a b
{
≤≤ 
if
≥≥ 
(
≥≥ %
EditorUserBuildSettings
≥≥ +
.
≥≥+ , 
GetCompressionType
≥≥, >
(
≥≥> ?
buildTargetGroup
≥≥? O
)
≥≥O P
==
≥≥Q S
Compression
≥≥T _
.
≥≥_ `
Lz4
≥≥` c
)
≥≥c d
buildOptions
¥¥  
.
¥¥  !
options
¥¥! (
|=
¥¥) +
BuildOptions
¥¥, 8
.
¥¥8 9
CompressWithLz4
¥¥9 H
;
¥¥H I
else
µµ 
if
µµ 
(
µµ %
EditorUserBuildSettings
µµ 0
.
µµ0 1 
GetCompressionType
µµ1 C
(
µµC D
buildTargetGroup
µµD T
)
µµT U
==
µµV X
Compression
µµY d
.
µµd e
Lz4HC
µµe j
)
µµj k
buildOptions
∂∂  
.
∂∂  !
options
∂∂! (
|=
∂∂) +
BuildOptions
∂∂, 8
.
∂∂8 9
CompressWithLz4HC
∂∂9 J
;
∂∂J K
}
∑∑ 
string
ππ 
buildLocation
ππ  
;
ππ  !
if
∫∫ 
(
∫∫ 
	buildOnly
∫∫ 
)
∫∫ 
{
ªª 
buildLocation
ºº 
=
ºº 
buildOptions
ºº  ,
.
ºº, -
locationPathName
ºº- =
=
ºº> ?
runSettings
ºº@ K
.
ººK L#
buildOnlyLocationPath
ººL a
;
ººa b
}
ΩΩ 
else
ææ 
{
øø 
var
¿¿ +
reduceBuildLocationPathLength
¿¿ 1
=
¿¿2 3
false
¿¿4 9
;
¿¿9 :
if
√√ 
(
√√ 
(
√√ 
m_TargetPlatform
√√ %
==
√√& (
BuildTarget
√√) 4
.
√√4 5
	WSAPlayer
√√5 >
)
√√> ?
||
√√@ B
(
√√C D
m_TargetPlatform
√√D T
==
√√U W
BuildTarget
√√X c
.
√√c d
XboxOne
√√d k
)
√√k l
)
√√l m
{
ƒƒ +
reduceBuildLocationPathLength
≈≈ 1
=
≈≈2 3
true
≈≈4 8
;
≈≈8 9
}
∆∆ 
var
»» %
uniqueTempPathInProject
»» +
=
»», -
FileUtil
»». 6
.
»»6 7(
GetUniqueTempPathInProject
»»7 Q
(
»»Q R
)
»»R S
;
»»S T
var
…… !
playerDirectoryName
…… '
=
……( )+
reduceBuildLocationPathLength
……* G
?
……H I
$str
……J O
:
……P Q
$str
……R c
;
……c d
if
ÀÀ 
(
ÀÀ +
reduceBuildLocationPathLength
ÀÀ 1
)
ÀÀ1 2
{
ÃÃ %
uniqueTempPathInProject
ÕÕ +
=
ÕÕ, -
Path
ÕÕ. 2
.
ÕÕ2 3
GetTempFileName
ÕÕ3 B
(
ÕÕB C
)
ÕÕC D
;
ÕÕD E
File
ŒŒ 
.
ŒŒ 
Delete
ŒŒ 
(
ŒŒ  %
uniqueTempPathInProject
ŒŒ  7
)
ŒŒ7 8
;
ŒŒ8 9
	Directory
œœ 
.
œœ 
CreateDirectory
œœ -
(
œœ- .%
uniqueTempPathInProject
œœ. E
)
œœE F
;
œœF G
}
–– 
var
““ 
tempPath
““ 
=
““ 
Path
““ #
.
““# $
GetFullPath
““$ /
(
““/ 0%
uniqueTempPathInProject
““0 G
)
““G H
;
““H I
buildLocation
”” 
=
”” 
Path
””  $
.
””$ %
Combine
””% ,
(
””, -
tempPath
””- 5
,
””5 6!
playerDirectoryName
””7 J
)
””J K
;
””K L
if
÷÷ 
(
÷÷ 
m_TargetPlatform
÷÷ $
==
÷÷% '
BuildTarget
÷÷( 3
.
÷÷3 4
iOS
÷÷4 7
)
÷÷7 8
{
◊◊ 
buildOptions
ÿÿ  
.
ÿÿ  !
locationPathName
ÿÿ! 1
=
ÿÿ2 3
buildLocation
ÿÿ4 A
;
ÿÿA B
}
ŸŸ 
else
⁄⁄ 
{
€€ 
string
‹‹ %
extensionForBuildTarget
‹‹ 2
=
‹‹3 4$
PostprocessBuildPlayer
›› .
.
››. /(
GetExtensionForBuildTarget
››/ I
(
››I J
buildTargetGroup
››J Z
,
››Z [
buildOptions
››\ h
.
››h i
target
››i o
,
››o p
buildOptions
ﬁﬁ (
.
ﬁﬁ( )
options
ﬁﬁ) 0
)
ﬁﬁ0 1
;
ﬁﬁ1 2
var
ﬂﬂ "
playerExecutableName
ﬂﬂ ,
=
ﬂﬂ- .
$str
ﬂﬂ/ @
;
ﬂﬂ@ A"
playerExecutableName
‡‡ (
+=
‡‡) +
string
‡‡, 2
.
‡‡2 3
Format
‡‡3 9
(
‡‡9 :
$str
‡‡: @
,
‡‡@ A%
extensionForBuildTarget
‡‡B Y
)
‡‡Y Z
;
‡‡Z [
buildOptions
··  
.
··  !
locationPathName
··! 1
=
··2 3
Path
··4 8
.
··8 9
Combine
··9 @
(
··@ A
buildLocation
··A N
,
··N O"
playerExecutableName
··P d
)
··d e
;
··e f
}
‚‚ 
}
„„ 
return
ÂÂ 
new
ÂÂ (
PlayerLauncherBuildOptions
ÂÂ 1
{
ÊÊ  
BuildPlayerOptions
ÁÁ "
=
ÁÁ# $ 
ModifyBuildOptions
ÁÁ% 7
(
ÁÁ7 8
buildOptions
ÁÁ8 D
)
ÁÁD E
,
ÁÁE F
PlayerDirectory
ËË 
=
ËË  !
buildLocation
ËË" /
,
ËË/ 0
}
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
private
ÏÏ  
BuildPlayerOptions
ÏÏ " 
ModifyBuildOptions
ÏÏ# 5
(
ÏÏ5 6 
BuildPlayerOptions
ÏÏ6 H
buildOptions
ÏÏI U
)
ÏÏU V
{
ÌÌ 	
var
ÓÓ 
allAssemblies
ÓÓ 
=
ÓÓ 
	AppDomain
ÓÓ  )
.
ÓÓ) *
CurrentDomain
ÓÓ* 7
.
ÓÓ7 8
GetAssemblies
ÓÓ8 E
(
ÓÓE F
)
ÓÓF G
.
ÔÔ 
Where
ÔÔ 
(
ÔÔ 
x
ÔÔ 
=>
ÔÔ 
x
ÔÔ 
.
ÔÔ %
GetReferencedAssemblies
ÔÔ 5
(
ÔÔ5 6
)
ÔÔ6 7
.
ÔÔ7 8
Any
ÔÔ8 ;
(
ÔÔ; <
z
ÔÔ< =
=>
ÔÔ> @
z
ÔÔA B
.
ÔÔB C
Name
ÔÔC G
==
ÔÔH J
$str
ÔÔK c
)
ÔÔc d
)
ÔÔd e
.
ÔÔe f
ToArray
ÔÔf m
(
ÔÔm n
)
ÔÔn o
;
ÔÔo p
var
 

attributes
 
=
 
allAssemblies
 *
.
* +

SelectMany
+ 5
(
5 6
assembly
6 >
=>
? A
assembly
B J
.
J K!
GetCustomAttributes
K ^
(
^ _
typeof
_ e
(
e f/
 TestPlayerBuildModifierAttributef Ü
)Ü á
,á à
trueâ ç
)ç é
.é è
OfTypeè ï
<ï ñ0
 TestPlayerBuildModifierAttributeñ ∂
>∂ ∑
(∑ ∏
)∏ π
)π ∫
.∫ ª
ToArrayª ¬
(¬ √
)√ ƒ
;ƒ ≈
var
ÒÒ 
	modifiers
ÒÒ 
=
ÒÒ 

attributes
ÒÒ &
.
ÒÒ& '
Select
ÒÒ' -
(
ÒÒ- .
	attribute
ÒÒ. 7
=>
ÒÒ8 :
	attribute
ÒÒ; D
.
ÒÒD E
ConstructModifier
ÒÒE V
(
ÒÒV W
)
ÒÒW X
)
ÒÒX Y
.
ÒÒY Z
ToArray
ÒÒZ a
(
ÒÒa b
)
ÒÒb c
;
ÒÒc d
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 
modifier
ÛÛ !
in
ÛÛ" $
	modifiers
ÛÛ% .
)
ÛÛ. /
{
ÙÙ 
buildOptions
ıı 
=
ıı 
modifier
ıı '
.
ıı' (
ModifyOptions
ıı( 5
(
ıı5 6
buildOptions
ıı6 B
)
ııB C
;
ııC D
}
ˆˆ 
return
¯¯ 
buildOptions
¯¯ 
;
¯¯  
}
˘˘ 	
}
˙˙ 
}˚˚ ∂
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestStatus.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public 

enum 

TestStatus 
{ 
Inconclusive 
, 
Skipped 
, 
Passed 
, 
Failed 
} 
} ë)
ºD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\UwpPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
UwpPlatformSetup #
:$ %
IPlatformSetup& 4
{ 
private 
const 
string (
k_SettingsBuildConfiguration 9
=: ;
$str< P
;P Q
private 
bool "
m_InternetClientServer +
;+ ,
private		 
bool		 (
m_PrivateNetworkClientServer		 1
;		1 2
public 
void 
Setup 
( 
) 
{ 	"
m_InternetClientServer "
=# $
PlayerSettings% 3
.3 4
WSA4 7
.7 8
GetCapability8 E
(E F
PlayerSettingsF T
.T U
WSACapabilityU b
.b c 
InternetClientServerc w
)w x
;x y(
m_PrivateNetworkClientServer (
=) *
PlayerSettings+ 9
.9 :
WSA: =
.= >
GetCapability> K
(K L
PlayerSettingsL Z
.Z [
WSACapability[ h
.h i'
PrivateNetworkClientServer	i É
)
É Ñ
;
Ñ Ö
PlayerSettings 
. 
WSA 
. 
SetCapability ,
(, -
PlayerSettings- ;
.; <
WSACapability< I
.I J 
InternetClientServerJ ^
,^ _
true` d
)d e
;e f
PlayerSettings 
. 
WSA 
. 
SetCapability ,
(, -
PlayerSettings- ;
.; <
WSACapability< I
.I J&
PrivateNetworkClientServerJ d
,d e
truef j
)j k
;k l
bool $
wsaSettingNotInitialized )
=* +
string, 2
.2 3
IsNullOrEmpty3 @
(@ A#
EditorUserBuildSettingsA X
.X Y
wsaArchitectureY h
)h i
;i j
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
Environment& 1
.1 2"
GetEnvironmentVariable2 H
(H I
$strI d
)d e
)e f
||g i%
wsaSettingNotInitialized	j Ç
)
Ç É
{ #
EditorUserBuildSettings '
.' (
wsaSubtarget( 4
=5 6
WSASubtarget7 C
.C D
PCD F
;F G#
EditorUserBuildSettings '
.' (
wsaArchitecture( 7
=8 9
$str: ?
;? @#
EditorUserBuildSettings '
.' (
SetPlatformSettings( ;
(; <
BuildPipeline< I
.I J
GetBuildTargetNameJ \
(\ ]
BuildTarget] h
.h i
	WSAPlayeri r
)r s
,s t)
k_SettingsBuildConfiguration	u ë
,
ë í
WSABuildType
ì ü
.
ü †
Debug
† •
.
• ¶
ToString
¶ Æ
(
Æ Ø
)
Ø ∞
)
∞ ±
;
± ≤#
EditorUserBuildSettings '
.' (
wsaUWPBuildType( 7
=8 9
WSAUWPBuildType: I
.I J
ExecutableOnlyJ X
;X Y
PlayerSettings 
. *
SetIl2CppCompilerConfiguration =
(= >
BuildTargetGroup> N
.N O
WSAO R
,R S'
Il2CppCompilerConfigurationT o
.o p
Debugp u
)u v
;v w
} 
}   	
public"" 
void"" 
PostBuildAction"" #
(""# $
)""$ %
{## 	
}$$ 	
public&& 
void&& %
PostSuccessfulBuildAction&& -
(&&- .
)&&. /
{'' 	
}(( 	
public** 
void** &
PostSuccessfulLaunchAction** .
(**. /
)**/ 0
{++ 	
},, 	
public.. 
void.. 
CleanUp.. 
(.. 
).. 
{// 	
PlayerSettings00 
.00 
WSA00 
.00 
SetCapability00 ,
(00, -
PlayerSettings00- ;
.00; <
WSACapability00< I
.00I J 
InternetClientServer00J ^
,00^ _"
m_InternetClientServer00` v
)00v w
;00w x
PlayerSettings11 
.11 
WSA11 
.11 
SetCapability11 ,
(11, -
PlayerSettings11- ;
.11; <
WSACapability11< I
.11I J&
PrivateNetworkClientServer11J d
,11d e)
m_PrivateNetworkClientServer	11f Ç
)
11Ç É
;
11É Ñ
}22 	
}33 
}44 Í
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Messages\WaitForDomainReload.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public 

class 
WaitForDomainReload $
:% &)
IEditModeTestYieldInstruction' D
{ 
public 
WaitForDomainReload "
(" #
)# $
{ 	
ExpectDomainReload 
=  
true! %
;% &
} 	
public## 
bool## 
ExpectDomainReload## &
{##' (
get##) ,
;##, -
}##/ 0
public'' 
bool'' !
ExpectedPlaymodeState'' )
{''* +
get'', /
;''/ 0
}''1 2
public.. 
IEnumerator.. 
Perform.. "
(.." #
)..# $
{// 	
EditorApplication00 
.00 "
UnlockReloadAssemblies00 4
(004 5
)005 6
;006 7
while22 
(22 !
InternalEditorUtility22 (
.22( )#
IsScriptReloadRequested22) @
(22@ A
)22A B
||22C E
EditorApplication22F W
.22W X
isCompiling22X c
)22c d
{33 
yield44 
return44 
null44 !
;44! "
}55 
EditorApplication88 
.88  
LockReloadAssemblies88 2
(882 3
)883 4
;884 5
throw99 
new99 
	Exception99 
(99  
EditorUtility:: 
.:: #
scriptCompilationFailed:: 5
?::6 7
$str;; /
:;;0 1
$str<< B
)<<B C
;<<C D
}== 	
}>> 
}?? é
≈D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\RegisterFilesForCleanupVerificationTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class 3
'RegisterFilesForCleanupVerificationTask :
:; <'
FileCleanupVerifierTaskBase= X
{ 
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
testJobData		 
.		 
existingFiles		 %
=		& '(
GetAllFilesInAssetsDirectory		( D
(		D E
)		E F
;		F G
yield

 
return

 
null

 
;

 
} 	
} 
} ›c
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\TestJobRunner.cs
	namespace

 	
UnityEditor
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
* +
TestRun

+ 2
{ 
internal 
class 
TestJobRunner  
{ 
private 
static 
IEnumerable "
<" #
TestTaskBase# /
>/ 0
GetTaskList1 <
(< =
ExecutionSettings= N
settingsO W
)W X
{ 	
if 
( 
settings 
== 
null  
)  !
{ 
yield 
break 
; 
} 
if 
( 
settings 
. 
EditModeIncluded )
() *
)* +
||, .
(/ 0
PlayerSettings0 >
.> ?)
runPlayModeTestAsEditModeTest? \
&&] _
settings` h
.h i%
PlayModeInEditorIncluded	i Å
(
Å Ç
)
Ç É
)
É Ñ
)
Ñ Ö
{ 
yield 
return 
new  
SaveModiedSceneTask! 4
(4 5
)5 6
;6 7
yield 
return 
new  3
'RegisterFilesForCleanupVerificationTask! H
(H I
)I J
;J K
yield 
return 
new  
SaveUndoIndexTask! 2
(2 3
)3 4
;4 5
yield 
return 
new  
BuildTestTreeTask! 2
(2 3
TestPlatform3 ?
.? @
EditMode@ H
)H I
;I J
yield 
return 
new  
PrebuildSetupTask! 2
(2 3
)3 4
;4 5
yield 
return 
new  !
LegacyEditModeRunTask! 6
(6 7
)7 8
;8 9
yield 
return 
new  
PerformUndoTask! 0
(0 1
)1 2
;2 3
yield 
return 
new  #
CleanupVerificationTask! 8
(8 9
)9 :
;: ;
yield 
break 
; 
}   
if"" 
("" 
settings"" 
."" $
PlayModeInEditorIncluded"" 1
(""1 2
)""2 3
&&""4 6
!""7 8
PlayerSettings""8 F
.""F G)
runPlayModeTestAsEditModeTest""G d
)""d e
{## 
yield$$ 
return$$ 
new$$  
SaveModiedSceneTask$$! 4
($$4 5
)$$5 6
;$$6 7
yield%% 
return%% 
new%%  !
LegacyPlayModeRunTask%%! 6
(%%6 7
)%%7 8
;%%8 9
yield&& 
break&& 
;&& 
}'' 
if)) 
()) 
settings)) 
.)) 
PlayerIncluded)) '
())' (
)))( )
)))) *
{** 
yield++ 
return++ 
new++  
LegacyPlayerRunTask++! 4
(++4 5
)++5 6
;++6 7
yield,, 
break,, 
;,, 
}-- 
}.. 	
internal00 
List00 
<00 
TestJobData00 !
>00! "
SavedTestJobData00# 3
=004 5
TestJobDataHolder006 G
.00G H
instance00H P
.00P Q
TestRuns00Q Y
;00Y Z
internal11 
Action11 
<11 
EditorApplication11 )
.11) *
CallbackFunction11* :
>11: ;
SubscribeCallback11< M
=11N O
(11P Q
callback11Q Y
)11Y Z
=>11[ ]
EditorApplication11^ o
.11o p
update11p v
+=11w y
callback	11z Ç
;
11Ç É
internal33 
Action33 
<33 
EditorApplication33 )
.33) *
CallbackFunction33* :
>33: ;
UnsubscribeCallback33< O
=33P Q
(33R S
callback33S [
)33[ \
=>33] _
EditorApplication33` q
.33q r
update33r x
-=33y {
callback	33| Ñ
;
33Ñ Ö
internal44 
TestCommandPcHelper44 $
PcHelper44% -
=44. /
new440 3
EditModePcHelper444 D
(44D E
)44E F
;44F G
internal55 
Func55 
<55 
ExecutionSettings55 '
,55' (
IEnumerable55) 4
<554 5
TestTaskBase555 A
>55A B
>55B C
GetTasks55D L
=55M N
GetTaskList55O Z
;55Z [
internal66 
Action66 
<66 
	Exception66 !
>66! "
LogException66# /
=660 1
Debug662 7
.667 8
LogException668 D
;66D E
internal77 
Action77 
<77 
string77 
>77 
LogError77  (
=77) *
Debug77+ 0
.770 1
LogError771 9
;779 :
internal88 
Action88 
<88 
string88 
>88 
ReportRunFailed88  /
=880 1
CallbacksDelegator882 D
.88D E
instance88E M
.88M N
	RunFailed88N W
;88W X
private:: 
TestJobData:: 
	m_JobData:: %
;::% &
private;; 
TestTaskBase;; 
[;; 
];; 
Tasks;; $
;;;$ %
private<< 
IEnumerator<< 
m_Enumerator<< (
=<<) *
null<<+ /
;<</ 0
public>> 
string>> 
RunJob>> 
(>> 
TestJobData>> (
data>>) -
)>>- .
{?? 	
if@@ 
(@@ 
data@@ 
==@@ 
null@@ 
)@@ 
{AA 
throwBB 
newBB 
ArgumentExceptionBB +
(BB+ ,
nullBB, 0
,BB0 1
nameofBB2 8
(BB8 9
dataBB9 =
)BB= >
)BB> ?
;BB? @
}CC 
ifEE 
(EE 
	m_JobDataEE 
!=EE 
nullEE !
&&EE" $
	m_JobDataEE% .
.EE. /
	isRunningEE/ 8
)EE8 9
{FF 
throwGG 
newGG 
	ExceptionGG #
(GG# $
$strGG$ M
)GGM N
;GGN O
}HH 
ifJJ 
(JJ 
dataJJ 
.JJ 
isHandledByRunnerJJ &
)JJ& '
{KK 
throwLL 
newLL 
	ExceptionLL #
(LL# $
$strLL$ H
)LLH I
;LLI J
}MM 
	m_JobDataOO 
=OO 
dataOO 
;OO 
	m_JobDataPP 
.PP 
isHandledByRunnerPP '
=PP( )
truePP* .
;PP. /
ifRR 
(RR 
!RR 
	m_JobDataRR 
.RR 
	isRunningRR $
)RR$ %
{SS 
	m_JobDataTT 
.TT 
	isRunningTT #
=TT$ %
trueTT& *
;TT* +
SavedTestJobDataUU  
.UU  !
AddUU! $
(UU$ %
	m_JobDataUU% .
)UU. /
;UU/ 0
}VV 
TasksXX 
=XX 
GetTasksXX 
(XX 
dataXX !
.XX! "
executionSettingsXX" 3
)XX3 4
.XX4 5
ToArrayXX5 <
(XX< =
)XX= >
;XX> ?
ifYY 
(YY 
!YY 
dataYY 
.YY 
executionSettingsYY '
.YY' (
runSynchronouslyYY( 8
)YY8 9
{ZZ 
SubscribeCallback[[ !
([[! "
ExecuteStep[[" -
)[[- .
;[[. /
}\\ 
else]] 
{^^ 
while__ 
(__ 
data__ 
.__ 
	isRunning__ %
)__% &
{`` 
ExecuteStepaa 
(aa  
)aa  !
;aa! "
}bb 
}cc 
returnee 
dataee 
.ee 
guidee 
;ee 
}ff 	
privatehh 
voidhh 
ExecuteStephh  
(hh  !
)hh! "
{ii 	
tryjj 
{kk 
ifll 
(ll 
	m_JobDatall 
.ll 
	taskIndexll '
>=ll( *
Tasksll+ 0
.ll0 1
Lengthll1 7
)ll7 8
{mm 
StopRunnn 
(nn 
)nn 
;nn 
returnoo 
;oo 
}pp 
ifrr 
(rr 
m_Enumeratorrr  
==rr! #
nullrr$ (
)rr( )
{ss 
vartt 
tasktt 
=tt 
Taskstt $
[tt$ %
	m_JobDatatt% .
.tt. /
	taskIndextt/ 8
]tt8 9
;tt9 :
m_Enumeratoruu  
=uu! "
taskuu# '
.uu' (
Executeuu( /
(uu/ 0
	m_JobDatauu0 9
)uu9 :
;uu: ;
ifvv 
(vv 
taskvv 
.vv &
SupportsResumingEnumeratorvv 7
)vv7 8
{ww 
PcHelperxx  
.xx  !
SetEnumeratorPCxx! 0
(xx0 1
m_Enumeratorxx1 =
,xx= >
	m_JobDataxx? H
.xxH I
taskPCxxI O
)xxO P
;xxP Q
}yy 
}zz 
if|| 
(|| 
!|| 
m_Enumerator|| !
.||! "
MoveNext||" *
(||* +
)||+ ,
)||, -
{}} 
	m_JobData~~ 
.~~ 
	taskIndex~~ '
++~~' )
;~~) *
	m_JobData 
. 
taskPC $
=% &
$num' (
;( )
m_Enumerator
ÄÄ  
=
ÄÄ! "
null
ÄÄ# '
;
ÄÄ' (
return
ÅÅ 
;
ÅÅ 
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
Tasks
ÑÑ 
[
ÑÑ 
	m_JobData
ÑÑ #
.
ÑÑ# $
	taskIndex
ÑÑ$ -
]
ÑÑ- .
.
ÑÑ. /(
SupportsResumingEnumerator
ÑÑ/ I
)
ÑÑI J
{
ÖÖ 
	m_JobData
ÜÜ 
.
ÜÜ 
taskPC
ÜÜ $
=
ÜÜ% &
PcHelper
ÜÜ' /
.
ÜÜ/ 0
GetEnumeratorPC
ÜÜ0 ?
(
ÜÜ? @
m_Enumerator
ÜÜ@ L
)
ÜÜL M
;
ÜÜM N
}
áá 
}
àà 
catch
ââ 
(
ââ &
TestRunCanceledException
ââ +
)
ââ+ ,
{
ää 
StopRun
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
catch
çç 
(
çç  
AggregateException
çç %
ex
çç& (
)
çç( )
{
éé 
StopRun
èè 
(
èè 
)
èè 
;
èè 
LogError
êê 
(
êê 
ex
êê 
.
êê 
Message
êê #
)
êê# $
;
êê$ %
foreach
ëë 
(
ëë 
var
ëë 
innerException
ëë +
in
ëë, .
ex
ëë/ 1
.
ëë1 2
InnerExceptions
ëë2 A
)
ëëA B
{
íí 
LogException
ìì  
(
ìì  !
innerException
ìì! /
)
ìì/ 0
;
ìì0 1
}
îî 
ReportRunFailed
ïï 
(
ïï  
$str
ïï  Z
)
ïïZ [
;
ïï[ \
}
ññ 
catch
óó 
(
óó 
	Exception
óó 
ex
óó 
)
óó  
{
òò 
StopRun
ôô 
(
ôô 
)
ôô 
;
ôô 
LogException
öö 
(
öö 
ex
öö 
)
öö  
;
öö  !
ReportRunFailed
õõ 
(
õõ  
$str
õõ  S
)
õõS T
;
õõT U
}
úú 
}
ùù 	
private
üü 
void
üü 
StopRun
üü 
(
üü 
)
üü 
{
†† 	
	m_JobData
°° 
.
°° 
	isRunning
°° 
=
°°  !
false
°°" '
;
°°' (!
UnsubscribeCallback
¢¢ 
(
¢¢  
ExecuteStep
¢¢  +
)
¢¢+ ,
;
¢¢, -
SavedTestJobData
££ 
.
££ 
Remove
££ #
(
££# $
	m_JobData
££$ -
)
££- .
;
££. /
}
§§ 	
}
•• 
}¶¶ µ	
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\EditorAssembliesProxy.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class !
EditorAssembliesProxy (
:) *"
IEditorAssembliesProxy+ A
{ 
public 
IAssemblyWrapper 
[  
]  !
loadedAssemblies" 2
{		 	
get

 
{

 
return

 
EditorAssemblies

 )
.

) *
loadedAssemblies

* :
.

: ;
OrderBy

; B
(

B C
a

C D
=>

E G
a

H I
.

I J
FullName

J R
)

R S
.

S T
Select

T Z
(

Z [
x

[ \
=>

] _
new

` c!
EditorAssemblyWrapper

d y
(

y z
x

z {
)

{ |
)

| }
.

} ~
ToArray	

~ Ö
(


Ö Ü
)


Ü á
;


á à
}


â ä
} 	
} 
} á
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Messages\ExitPlayMode.cs
	namespace 	
UnityEngine
 
. 
	TestTools 
{ 
public

 

class

 
ExitPlayMode

 
:

 )
IEditModeTestYieldInstruction

  =
{ 
public 
bool 
ExpectDomainReload &
{' (
get) ,
;, -
}. /
public 
bool !
ExpectedPlaymodeState )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
ExitPlayMode 
( 
) 
{ 	
ExpectDomainReload 
=  
false! &
;& '!
ExpectedPlaymodeState !
=" #
false$ )
;) *
} 	
public"" 
IEnumerator"" 
Perform"" "
(""" #
)""# $
{## 	
if$$ 
($$ 
!$$ 
EditorApplication$$ "
.$$" #)
isPlayingOrWillChangePlaymode$$# @
)$$@ A
{%% 
throw&& 
new&& 
	Exception&& #
(&&# $
$str&&$ C
)&&C D
;&&D E
}'' 
EditorApplication)) 
.)) 
	isPlaying)) '
=))( )
false))* /
;))/ 0
while** 
(** 
EditorApplication** $
.**$ %
	isPlaying**% .
)**. /
{++ 
yield,, 
return,, 
null,, !
;,,! "
}-- 
}.. 	
}// 
}00 ´
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ExitCallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
[ 
Serializable 
] 
internal 
class 
ExitCallbacks  
:! "
ScriptableObject# 3
,3 4
IErrorCallbacks5 D
{		 
internal

 
static

 
bool

 
preventExit

 (
;

( )
public 
void 
RunFinished 
(  
ITestResultAdaptor  2
testResults3 >
)> ?
{ 	
if 
( 
preventExit 
) 
{ 
return 
; 
} 
if 
( 
! #
ExitCallbacksDataHolder (
.( )
instance) 1
.1 2
AnyTestsExecuted2 B
)B C
{ 
Debug 
. 
	LogFormat 
(  
LogType  '
.' (
Warning( /
,/ 0
	LogOption1 :
.: ;
NoStacktrace; G
,G H
nullI M
,M N
$strO g
)g h
;h i
} 
EditorApplication 
. 
Exit "
(" ##
ExitCallbacksDataHolder# :
.: ;
instance; C
.C D
	RunFailedD M
?N O
(P Q
intQ T
)T U
ExecuterU ]
.] ^
ReturnCodes^ i
.i j
Failedj p
:q r
(s t
intt w
)w x
Executer	x Ä
.
Ä Å
ReturnCodes
Å å
.
å ç
Ok
ç è
)
è ê
;
ê ë
} 	
public 
void 
TestStarted 
(  
ITestAdaptor  ,
test- 1
)1 2
{ 	
if 
( 
! 
test 
. 
IsSuite 
) 
{ #
ExitCallbacksDataHolder '
.' (
instance( 0
.0 1
AnyTestsExecuted1 A
=B C
trueD H
;H I
}   
}!! 	
public## 
void## 
TestFinished##  
(##  !
ITestResultAdaptor##! 3
result##4 :
)##: ;
{$$ 	
if%% 
(%% 
!%% 
result%% 
.%% 
Test%% 
.%% 
IsSuite%% $
&&%%% '
(%%( )
result%%) /
.%%/ 0

TestStatus%%0 :
==%%; =

TestStatus%%> H
.%%H I
Failed%%I O
||%%P R
result%%S Y
.%%Y Z

TestStatus%%Z d
==%%e g

TestStatus%%h r
.%%r s
Inconclusive%%s 
)	%% Ä
)
%%Ä Å
{&& #
ExitCallbacksDataHolder'' '
.''' (
instance''( 0
.''0 1
	RunFailed''1 :
=''; <
true''= A
;''A B
}(( 
})) 	
public++ 
void++ 

RunStarted++ 
(++ 
ITestAdaptor++ +

testsToRun++, 6
)++6 7
{,, 	
}-- 	
public// 
void// 
OnError// 
(// 
string// "
message//# *
)//* +
{00 	
EditorApplication11 
.11 
Exit11 "
(11" #
(11# $
int11$ '
)11' (
Executer11( 0
.110 1
ReturnCodes111 <
.11< =
RunError11= E
)11E F
;11F G
}22 	
}33 
}44 Â
£D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\IErrorCallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public 

	interface 
IErrorCallbacks $
:% &

ICallbacks' 1
{ 
void		 
OnError		 
(		 
string		 
message		 #
)		# $
;		$ %
}

 
} ÷
ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestBuildAssemblyFilter.cs
	namespace 	
UnityEditor
 
. 

TestRunner  
{ 
internal 
class #
TestBuildAssemblyFilter *
:+ ,"
IFilterBuildAssemblies- C
{ 
private		 
const		 
string		 
nunitAssemblyName		 .
=		/ 0
$str		1 B
;		B C
private

 
const

 
string

 '
unityTestRunnerAssemblyName

 8
=

9 :
$str

; S
;

S T
public 
int 
callbackOrder  
{! "
get# &
;& '
}( )
public 
string 
[ 
] 
OnFilterAssemblies *
(* +
BuildOptions+ 7
buildOptions8 D
,D E
stringF L
[L M
]M N

assembliesO Y
)Y Z
{ 	
if 
( 
( 
buildOptions 
& 
BuildOptions  ,
., -!
IncludeTestAssemblies- B
)B C
==D F
BuildOptionsG S
.S T!
IncludeTestAssembliesT i
||j l
PlayerSettingsm {
.{ |&
playModeTestRunnerEnabled	| ï
)
ï ñ
{ 
return 

assemblies !
;! "
} 
return 

assemblies 
. 
Where #
(# $
x$ %
=>& (
!) *
x* +
.+ ,
Contains, 4
(4 5
nunitAssemblyName5 F
)F G
&&H J
!K L
xL M
.M N
ContainsN V
(V W'
unityTestRunnerAssemblyNameW r
)r s
)s t
.t u
ToArrayu |
(| }
)} ~
;~ 
} 	
} 
} â
ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestAdaptorFactory.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
	interface 
ITestAdaptorFactory *
{ 
ITestAdaptor		 
Create		 
(		 
ITest		 !
test		" &
)		& '
;		' (
ITestAdaptor

 
Create

 
(

 
RemoteTestData

 *
testData

+ 3
)

3 4
;

4 5
ITestResultAdaptor 
Create !
(! "
ITestResult" -

testResult. 8
)8 9
;9 :
ITestResultAdaptor 
Create !
(! " 
RemoteTestResultData" 6

testResult7 A
,A B,
 RemoteTestResultDataWithTestDataC c
allDatad k
)k l
;l m
ITestAdaptor 
	BuildTree 
( ,
 RemoteTestResultDataWithTestData ?
data@ D
)D E
;E F
IEnumerator 
< 
ITestAdaptor  
>  !
BuildTreeAsync" 0
(0 1,
 RemoteTestResultDataWithTestData1 Q
dataR V
)V W
;W X
void 
ClearResultsCache 
( 
)  
;  !
void 
ClearTestsCache 
( 
) 
; 
} 
} é
¬D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\IEditorLoadedTestAssemblyProvider.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface -
!IEditorLoadedTestAssemblyProvider 8
{ 
List		 
<		 
IAssemblyWrapper		 
>		 &
GetAssembliesGroupedByType		 9
(		9 :
TestPlatform		: F
mode		G K
)		K L
;		L M
IEnumerator

 
<

 
IDictionary

 
<

  
TestPlatform

  ,
,

, -
List

. 2
<

2 3
IAssemblyWrapper

3 C
>

C D
>

D E
>

E F+
GetAssembliesGroupedByTypeAsync

G f
(

f g
TestPlatform

g s
mode

t x
)

x y
;

y z
} 
} ÊY
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\NUnitExtension\TestRunnerStateSerializer.cs
	namespace

 	
UnityEditor
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
{ 
[ 
Serializable 
] 
internal 
class %
TestRunnerStateSerializer ,
:- .
IStateSerializer/ ?
{ 
private 
const 
BindingFlags "
Flags# (
=) *
BindingFlags+ 7
.7 8
	NonPublic8 A
|B C
BindingFlagsD P
.P Q
PublicQ W
|X Y
BindingFlagsZ f
.f g
Instanceg o
|p q
BindingFlagsr ~
.~ 
FlattenHierarchy	 è
;
è ê
[ 	
SerializeField	 
] 
private 
	HideFlags 
m_OriginalHideFlags -
;- .
[ 	
SerializeField	 
] 
private 
bool 
m_ShouldRestore $
;$ %
[ 	
SerializeField	 
] 
private 
string  
m_TestObjectTypeName +
;+ ,
[ 	
SerializeField	 
] 
private 
ScriptableObject  
m_TestObject! -
;- .
[ 	
SerializeField	 
] 
private 
string 
m_TestObjectTxt &
;& '
[   	
SerializeField  	 
]   
private!! 
long!! 

StartTicks!! 
;!!  
[## 	
SerializeField##	 
]## 
private$$ 
double$$ 
StartTimeOA$$ "
;$$" #
[&& 	
SerializeField&&	 
]&& 
private'' 
string'' 
output'' 
;'' 
[)) 	
SerializeField))	 
])) 
private** 
LogMatch** 
[** 
]** 
m_ExpectedLogs** )
;**) *
public,, 
bool,, 
ShouldRestore,, !
(,,! "
),," #
{-- 	
return.. 
m_ShouldRestore.. "
;.." #
}// 	
public11 
void11 
SaveContext11 
(11  
)11  !
{22 	
var33 
currentContext33 
=33  %
UnityTestExecutionContext33! :
.33: ;
CurrentContext33; I
;33I J
if55 
(55 
currentContext55 
.55 

TestObject55 )
!=55* ,
null55- 1
)551 2
{66  
m_TestObjectTypeName77 $
=77% &
currentContext77' 5
.775 6

TestObject776 @
.77@ A
GetType77A H
(77H I
)77I J
.77J K!
AssemblyQualifiedName77K `
;77` a
m_TestObject88 
=88 
null88 #
;88# $
m_TestObjectTxt99 
=99  !
null99" &
;99& '
if:: 
(:: 
currentContext:: "
.::" #

TestObject::# -
is::. 0
ScriptableObject::1 A
)::A B
{;; 
m_TestObject<<  
=<<! "
currentContext<<# 1
.<<1 2

TestObject<<2 <
as<<= ?
ScriptableObject<<@ P
;<<P Q
m_OriginalHideFlags== '
===( )
m_TestObject==* 6
.==6 7
	hideFlags==7 @
;==@ A
m_TestObject>>  
.>>  !
	hideFlags>>! *
|=>>+ -
	HideFlags>>. 7
.>>7 8
DontSave>>8 @
;>>@ A
}?? 
else@@ 
{AA 
m_TestObjectTxtBB #
=BB$ %
JsonUtilityBB& 1
.BB1 2
ToJsonBB2 8
(BB8 9
currentContextBB9 G
.BBG H

TestObjectBBH R
)BBR S
;BBS T
}CC 
}DD 
outputFF 
=FF 
currentContextFF #
.FF# $
CurrentResultFF$ 1
.FF1 2
OutputFF2 8
;FF8 9

StartTicksGG 
=GG 
currentContextGG '
.GG' (

StartTicksGG( 2
;GG2 3
StartTimeOAHH 
=HH 
currentContextHH (
.HH( )
	StartTimeHH) 2
.HH2 3
ToOADateHH3 ;
(HH; <
)HH< =
;HH= >
ifII 
(II 
LogScopeII 
.II 
HasCurrentLogScopeII +
(II+ ,
)II, -
)II- .
{JJ 
m_ExpectedLogsKK 
=KK  
LogScopeKK! )
.KK) *
CurrentKK* 1
.KK1 2
ExpectedLogsKK2 >
.KK> ?
ToArrayKK? F
(KKF G
)KKG H
;KKH I
}LL 
m_ShouldRestoreNN 
=NN 
trueNN "
;NN" #
}OO 	
publicQQ 
voidQQ 
RestoreContextQQ "
(QQ" #
)QQ# $
{RR 	
varSS 
currentContextSS 
=SS  %
UnityTestExecutionContextSS! :
.SS: ;
CurrentContextSS; I
;SSI J
varUU 

outputPropUU 
=UU 
currentContextUU +
.UU+ ,
CurrentResultUU, 9
.UU9 :
GetTypeUU: A
(UUA B
)UUB C
.UUC D
BaseTypeUUD L
.UUL M
GetFieldUUM U
(UUU V
$strUUV _
,UU_ `
FlagsUUa f
)UUf g
;UUg h
(VV 

outputPropVV 
.VV 
GetValueVV  
(VV  !
currentContextVV! /
.VV/ 0
CurrentResultVV0 =
)VV= >
asVV? A
StringBuilderVVB O
)VVO P
.VVP Q
AppendVVQ W
(VVW X
outputVVX ^
)VV^ _
;VV_ `
currentContextXX 
.XX 

StartTicksXX %
=XX& '

StartTicksXX( 2
;XX2 3
currentContextYY 
.YY 
	StartTimeYY $
=YY% &
DateTimeYY' /
.YY/ 0

FromOADateYY0 :
(YY: ;
StartTimeOAYY; F
)YYF G
;YYG H
ifZZ 
(ZZ 
LogScopeZZ 
.ZZ 
HasCurrentLogScopeZZ +
(ZZ+ ,
)ZZ, -
)ZZ- .
{[[ 
LogScope\\ 
.\\ 
Current\\  
.\\  !
ExpectedLogs\\! -
=\\. /
new\\0 3
Queue\\4 9
<\\9 :
LogMatch\\: B
>\\B C
(\\C D
m_ExpectedLogs\\D R
)\\R S
;\\S T
}]] 
m_ShouldRestore__ 
=__ 
false__ #
;__# $
}`` 	
publicbb 
boolbb *
CanRestoreFromScriptableObjectbb 2
(bb2 3
Typebb3 7
requestedTypebb8 E
)bbE F
{cc 	
ifdd 
(dd 
m_TestObjectdd 
==dd 
nulldd  $
)dd$ %
{ee 
returnff 
falseff 
;ff 
}gg 
returnhh  
m_TestObjectTypeNamehh '
==hh( *
requestedTypehh+ 8
.hh8 9!
AssemblyQualifiedNamehh9 N
;hhN O
}ii 	
publickk 
ScriptableObjectkk +
RestoreScriptableObjectInstancekk  ?
(kk? @
)kk@ A
{ll 	
ifmm 
(mm 
m_TestObjectmm 
==mm 
nullmm  $
)mm$ %
{nn 
Debugoo 
.oo 
LogErroroo 
(oo 
$stroo 5
)oo5 6
;oo6 7
returnpp 
nullpp 
;pp 
}qq 
EditorApplicationrr 
.rr  
playModeStateChangedrr 2
+=rr3 5"
OnPlayModeStateChangedrr6 L
;rrL M
varss 
tempss 
=ss 
m_TestObjectss #
;ss# $
m_TestObjecttt 
=tt 
nulltt 
;tt   
m_TestObjectTypeNameuu  
=uu! "
nulluu# '
;uu' (
returnvv 
tempvv 
;vv 
}ww 	
publicyy 
boolyy 
CanRestoreFromJsonyy &
(yy& '
Typeyy' +
requestedTypeyy, 9
)yy9 :
{zz 	
if{{ 
({{ 
string{{ 
.{{ 
IsNullOrEmpty{{ $
({{$ %
m_TestObjectTxt{{% 4
){{4 5
){{5 6
{|| 
return}} 
false}} 
;}} 
}~~ 
return  
m_TestObjectTypeName '
==( *
requestedType+ 8
.8 9!
AssemblyQualifiedName9 N
;N O
}
ÄÄ 	
public
ÇÇ 
void
ÇÇ "
RestoreClassFromJson
ÇÇ (
(
ÇÇ( )
ref
ÇÇ) ,
object
ÇÇ- 3
instance
ÇÇ4 <
)
ÇÇ< =
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ $
(
ÑÑ$ %
m_TestObjectTxt
ÑÑ% 4
)
ÑÑ4 5
)
ÑÑ5 6
{
ÖÖ 
Debug
ÜÜ 
.
ÜÜ 

LogWarning
ÜÜ  
(
ÜÜ  !
$str
ÜÜ! D
)
ÜÜD E
;
ÜÜE F
return
áá 
;
áá 
}
àà 
JsonUtility
ââ 
.
ââ 
FromJsonOverwrite
ââ )
(
ââ) *
m_TestObjectTxt
ââ* 9
,
ââ9 :
instance
ââ; C
)
ââC D
;
ââD E
m_TestObjectTxt
ää 
=
ää 
null
ää "
;
ää" #"
m_TestObjectTypeName
ãã  
=
ãã! "
null
ãã# '
;
ãã' (
}
åå 	
private
éé 
void
éé $
OnPlayModeStateChanged
éé +
(
éé+ ,!
PlayModeStateChange
éé, ?
state
éé@ E
)
ééE F
{
èè 	
if
êê 
(
êê 
m_TestObject
êê 
==
êê 
null
êê  $
)
êê$ %
{
ëë 
EditorApplication
íí !
.
íí! ""
playModeStateChanged
íí" 6
-=
íí7 9$
OnPlayModeStateChanged
íí: P
;
ííP Q
return
ìì 
;
ìì 
}
îî 
if
óó 
(
óó 
state
óó 
==
óó !
PlayModeStateChange
óó ,
.
óó, -
ExitingPlayMode
óó- <
)
óó< =
{
òò 
m_TestObject
ôô 
.
ôô 
	hideFlags
ôô &
|=
ôô' )
	HideFlags
ôô* 3
.
ôô3 4
DontSave
ôô4 <
;
ôô< =
}
öö 
else
õõ 
if
õõ 
(
õõ 
state
õõ 
==
õõ !
PlayModeStateChange
õõ 1
.
õõ1 2
EnteredEditMode
õõ2 A
)
õõA B
{
úú 
m_TestObject
ùù 
.
ùù 
	hideFlags
ùù &
=
ùù' (!
m_OriginalHideFlags
ùù) <
;
ùù< =
EditorApplication
ûû !
.
ûû! ""
playModeStateChanged
ûû" 6
-=
ûû7 9$
OnPlayModeStateChanged
ûû: P
;
ûûP Q
}
üü 
}
†† 	
}
°° 
}¢¢ Ê6
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\BuildActionTaskBase.cs
	namespace

 	
UnityEditor
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
* +
TestRun

+ 2
.

2 3
Tasks

3 8
{ 
internal 
abstract 
class 
BuildActionTaskBase /
</ 0
T0 1
>1 2
:3 4
TestTaskBase5 A
{ 
private 
string 
typeName 
;  
internal 
IAttributeFinder !
attributeFinder" 1
;1 2
internal 
RuntimePlatform  
targetPlatform! /
=0 1
Application2 =
.= >
platform> F
;F G
internal 
Action 
< 
string 
> 
	logAction  )
=* +
Debug, 1
.1 2
Log2 5
;5 6
internal 
Func 
< 
	ILogScope 
>  
logScopeProvider! 1
=2 3
(4 5
)5 6
=>7 9
new: =
LogScope> F
(F G
)G H
;H I
internal 
Func 
< 
Type 
, 
object "
>" #
createInstance$ 2
=3 4
	Activator5 >
.> ?
CreateInstance? M
;M N
	protected 
BuildActionTaskBase %
(% &
IAttributeFinder& 6
attributeFinder7 F
)F G
{ 	
this 
. 
attributeFinder  
=! "
attributeFinder# 2
;2 3
typeName 
= 
typeof 
( 
T 
)  
.  !
Name! %
;% &
} 	
	protected 
abstract 
void 
Action  &
(& '
T' (
target) /
)/ 0
;0 1
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
if 
( 
testJobData 
. 
testTree $
==% '
null( ,
), -
{   
throw!! 
new!! 
	Exception!! #
(!!# $
$"!!$ &+
Test tree is not available for !!& E
{!!E F
GetType!!F M
(!!M N
)!!N O
.!!O P
Name!!P T
}!!T U
.!!U V
"!!V W
)!!W X
;!!X Y
}"" 
var$$ 

enumerator$$ 
=$$ 
ExecuteMethods$$ +
($$+ ,
testJobData$$, 7
.$$7 8
testTree$$8 @
,$$@ A
testJobData$$B M
.$$M N
executionSettings$$N _
.$$_ `
BuildNUnitFilter$$` p
($$p q
)$$q r
)$$r s
;$$s t
while%% 
(%% 

enumerator%% 
.%% 
MoveNext%% &
(%%& '
)%%' (
)%%( )
{&& 
yield'' 
return'' 
null'' !
;''! "
}(( 
})) 	
	protected++ 
IEnumerator++ 
ExecuteMethods++ ,
(++, -
ITest++- 2
testTree++3 ;
,++; <
ITestFilter++= H
testRunnerFilter++I Y
)++Y Z
{,, 	
var-- 

exceptions-- 
=-- 
new--  
List--! %
<--% &
	Exception--& /
>--/ 0
(--0 1
)--1 2
;--2 3
foreach// 
(// 
var// 
targetClassType// (
in//) +
attributeFinder//, ;
.//; <
Search//< B
(//B C
testTree//C K
,//K L
testRunnerFilter//M ]
,//] ^
targetPlatform//_ m
)//m n
)//n o
{00 
try11 
{22 
var33 
targetClass33 #
=33$ %
(33& '
T33' (
)33( )
createInstance33* 8
(338 9
targetClassType339 H
)33H I
;33I J
	logAction55 
(55 
$"55  

Executing 55  *
{55* +
typeName55+ 3
}553 4
 for: 554 :
{55: ;
targetClassType55; J
.55J K
FullName55K S
}55S T
.55T U
"55U V
)55V W
;55W X
using77 
(77 
var77 
logScope77 '
=77( )
logScopeProvider77* :
(77: ;
)77; <
)77< =
{88 
Action99 
(99 
targetClass99 *
)99* +
;99+ ,
if;; 
(;; 
logScope;; $
.;;$ %
AnyFailingLogs;;% 3
(;;3 4
);;4 5
);;5 6
{<< 
var== 

failingLog==  *
===+ ,
logScope==- 5
.==5 6
FailingLogs==6 A
.==A B
First==B G
(==G H
)==H I
;==I J
throw>> !
new>>" %(
UnhandledLogMessageException>>& B
(>>B C

failingLog>>C M
)>>M N
;>>N O
}?? 
ifAA 
(AA 
logScopeAA $
.AA$ %
ExpectedLogsAA% 1
.AA1 2
AnyAA2 5
(AA5 6
)AA6 7
)AA7 8
{BB 
varCC 
expectedLogsCC  ,
=CC- .
logScopeCC/ 7
.CC7 8
ExpectedLogsCC8 D
.CCD E
FirstCCE J
(CCJ K
)CCK L
;CCL M
throwDD !
newDD" %)
UnexpectedLogMessageExceptionDD& C
(DDC D
expectedLogsDDD P
)DDP Q
;DDQ R
}EE 
}FF 
}GG 
catchHH 
(HH 
	ExceptionHH  
exHH! #
)HH# $
{II 

exceptionsJJ 
.JJ 
AddJJ "
(JJ" #
exJJ# %
)JJ% &
;JJ& '
}KK 
yieldMM 
returnMM 
nullMM !
;MM! "
}NN 
ifPP 
(PP 

exceptionsPP 
.PP 
CountPP  
>PP! "
$numPP# $
)PP$ %
{QQ 
throwRR 
newRR 
AggregateExceptionRR ,
(RR, -
$"RR- /2
&One or more exceptions when executing RR/ U
{RRU V
typeNameRRV ^
}RR^ _
.RR_ `
"RR` a
,RRa b

exceptionsRRc m
)RRm n
;RRn o
}SS 
}TT 	
}UU 
}VV Ñ
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListTreeView\TestListTreeViewGUI.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class 
TestListTreeViewGUI &
:' (
TreeViewGUI) 4
{ 
public 
TestListTreeViewGUI "
(" #
TreeViewController# 5
testListTree6 B
)B C
:D E
baseF J
(J K
testListTreeK W
)W X
{ 	
}		 	
}

 
} D
§D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestResultSerializer.cs
	namespace		 	
UnityEditor		
 
.		 
	TestTools		 
.		  

TestRunner		  *
{

 
[ 
Serializable 
] 
internal 
class  
TestResultSerializer '
{ 
private 
static 
readonly 
BindingFlags  ,
flags- 2
=3 4
BindingFlags5 A
.A B
	NonPublicB K
|L M
BindingFlagsN Z
.Z [
Public[ a
|b c
BindingFlags 
. 
Instance !
|" #
BindingFlags$ 0
.0 1
FlattenHierarchy1 A
;A B
[ 	
SerializeField	 
] 
public 
string  &
id' )
;) *
[ 	
SerializeField	 
] 
public 
string  &
fullName' /
;/ 0
[ 	
SerializeField	 
] 
private  
double! '
duration( 0
;0 1
[ 	
SerializeField	 
] 
private  
string! '
label( -
;- .
[ 	
SerializeField	 
] 
private  
string! '
message( /
;/ 0
[ 	
SerializeField	 
] 
private  
string! '
output( .
;. /
[ 	
SerializeField	 
] 
private  
string! '
site( ,
;, -
[ 	
SerializeField	 
] 
private  
string! '

stacktrace( 2
;2 3
[!! 	
SerializeField!!	 
]!! 
private!!  
double!!! '
startTimeAO!!( 3
;!!3 4
[## 	
SerializeField##	 
]## 
private##  
double##! '
	endTimeAO##( 1
;##1 2
[%% 	
SerializeField%%	 
]%% 
private%%  
string%%! '
status%%( .
;%%. /
['' 	
SerializeField''	 
]'' 
public'' 
string''  &

uniqueName''' 1
;''1 2
public)) 
static))  
TestResultSerializer)) *
MakeFromTestResult))+ =
())= >
ITestResult))> I
result))J P
)))P Q
{** 	
var++ 
wrapper++ 
=++ 
new++  
TestResultSerializer++ 2
(++2 3
)++3 4
;++4 5
wrapper,, 
.,, 
id,, 
=,, 
result,, 
.,,  
Test,,  $
.,,$ %
Id,,% '
;,,' (
wrapper-- 
.-- 
fullName-- 
=-- 
result-- %
.--% &
FullName--& .
;--. /
wrapper.. 
... 
status.. 
=.. 
result.. #
...# $
ResultState..$ /
.../ 0
Status..0 6
...6 7
ToString..7 ?
(..? @
)..@ A
;..A B
wrapper// 
.// 
label// 
=// 
result// "
.//" #
ResultState//# .
.//. /
Label/// 4
;//4 5
wrapper00 
.00 
site00 
=00 
result00 !
.00! "
ResultState00" -
.00- .
Site00. 2
.002 3
ToString003 ;
(00; <
)00< =
;00= >
wrapper11 
.11 
output11 
=11 
result11 #
.11# $
Output11$ *
;11* +
wrapper22 
.22 
duration22 
=22 
result22 %
.22% &
Duration22& .
;22. /
wrapper33 
.33 

stacktrace33 
=33  
result33! '
.33' (

StackTrace33( 2
;332 3
wrapper44 
.44 
message44 
=44 
result44 $
.44$ %
Message44% ,
;44, -
wrapper55 
.55 
startTimeAO55 
=55  !
result55" (
.55( )
	StartTime55) 2
.552 3
ToOADate553 ;
(55; <
)55< =
;55= >
wrapper66 
.66 
	endTimeAO66 
=66 
result66  &
.66& '
EndTime66' .
.66. /
ToOADate66/ 7
(667 8
)668 9
;669 :
wrapper77 
.77 

uniqueName77 
=77  
result77! '
.77' (
Test77( ,
.77, -
GetUniqueName77- :
(77: ;
)77; <
;77< =
return88 
wrapper88 
;88 
}99 	
public;; 
void;; 
RestoreTestResult;; %
(;;% &

TestResult;;& 0
result;;1 7
);;7 8
{<< 	
var== 
resultState== 
=== 
new== !
ResultState==" -
(==- .
(==. /

TestStatus==/ 9
)==9 :
Enum==: >
.==> ?
Parse==? D
(==D E
typeof==E K
(==K L

TestStatus==L V
)==V W
,==W X
status==Y _
)==_ `
,==` a
label==b g
,==g h
(>> 
FailureSite>> 
)>> 
Enum>> !
.>>! "
Parse>>" '
(>>' (
typeof>>( .
(>>. /
FailureSite>>/ :
)>>: ;
,>>; <
site>>= A
)>>A B
)>>B C
;>>C D
var?? 
baseType?? 
=?? 
result?? !
.??! "
GetType??" )
(??) *
)??* +
.??+ ,
BaseType??, 4
;??4 5
baseType@@ 
.@@ 
GetField@@ 
(@@ 
$str@@ ,
,@@, -
flags@@. 3
)@@3 4
.@@4 5
SetValue@@5 =
(@@= >
result@@> D
,@@D E
resultState@@F Q
)@@Q R
;@@R S
baseTypeAA 
.AA 
GetFieldAA 
(AA 
$strAA '
,AA' (
flagsAA) .
)AA. /
.AA/ 0
SetValueAA0 8
(AA8 9
resultAA9 ?
,AA? @
newAAA D
StringBuilderAAE R
(AAR S
outputAAS Y
)AAY Z
)AAZ [
;AA[ \
baseTypeBB 
.BB 
GetFieldBB 
(BB 
$strBB )
,BB) *
flagsBB+ 0
)BB0 1
.BB1 2
SetValueBB2 :
(BB: ;
resultBB; A
,BBA B
durationBBC K
)BBK L
;BBL M
baseTypeCC 
.CC 
GetFieldCC 
(CC 
$strCC (
,CC( )
flagsCC* /
)CC/ 0
.CC0 1
SetValueCC1 9
(CC9 :
resultCC: @
,CC@ A
messageCCB I
)CCI J
;CCJ K
baseTypeDD 
.DD 
GetFieldDD 
(DD 
$strDD +
,DD+ ,
flagsDD- 2
)DD2 3
.DD3 4
SetValueDD4 <
(DD< =
resultDD= C
,DDC D

stacktraceDDE O
)DDO P
;DDP Q
baseTypeEE 
.EE 
GetPropertyEE  
(EE  !
$strEE! ,
,EE, -
flagsEE. 3
)EE3 4
.FF 
SetValueFF 
(FF 
resultFF  
,FF  !
DateTimeFF" *
.FF* +

FromOADateFF+ 5
(FF5 6
startTimeAOFF6 A
)FFA B
,FFB C
nullFFD H
)FFH I
;FFI J
baseTypeGG 
.GG 
GetPropertyGG  
(GG  !
$strGG! *
,GG* +
flagsGG, 1
)GG1 2
.HH 
SetValueHH 
(HH 
resultHH  
,HH  !
DateTimeHH" *
.HH* +

FromOADateHH+ 5
(HH5 6
	endTimeAOHH6 ?
)HH? @
,HH@ A
nullHHB F
)HHF G
;HHG H
}II 	
publicKK 
boolKK 
IsPassedKK 
(KK 
)KK 
{LL 	
returnMM 
statusMM 
==MM 

TestStatusMM '
.MM' (
PassedMM( .
.MM. /
ToStringMM/ 7
(MM7 8
)MM8 9
;MM9 :
}NN 	
}OO 
}PP ¯
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\IEditorCompilationInterfaceProxy.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
	interface ,
 IEditorCompilationInterfaceProxy 7
{ 
ScriptAssembly 
[ 
] (
GetAllEditorScriptAssemblies 5
(5 6
)6 7
;7 8
PrecompiledAssembly 
[ 
] '
GetAllPrecompiledAssemblies 9
(9 :
): ;
;; <
}		 
}

 »Y
§D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestRunnerResult.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
[ 
Serializable 
] 
internal		 
class		 
TestRunnerResult		 #
:		$ %
UITestRunnerFilter		& 8
.		8 9
IClearableResult		9 I
{

 
public 
string 
id 
; 
public 
string 
uniqueId 
; 
public 
string 
name 
; 
public 
string 
fullName 
; 
public 
ResultStatus 
resultStatus (
=) *
ResultStatus+ 7
.7 8
NotRun8 >
;> ?
public 
float 
duration 
; 
public 
string 
messages 
; 
public 
string 
output 
; 
public 
string 

stacktrace  
;  !
public 
bool 
notRunnable 
;  
public 
bool 
ignoredOrSkipped $
;$ %
public 
string 
description !
;! "
public 
bool 
isSuite 
; 
public 
List 
< 
string 
> 

categories &
;& '
public 
string 
parentId 
; 
public 
string 
parentUniqueId $
;$ %
[ 	
NonSerialized	 
] 
public   
bool   
notOutdated   
;    
	protected"" 
Action"" 
<"" 
TestRunnerResult"" )
>"") *
m_OnResultUpdate""+ ;
;""; <
internal$$ 
TestRunnerResult$$ !
($$! "
ITestAdaptor$$" .
test$$/ 3
)$$3 4
{%% 	
id&& 
=&& 
test&& 
.&& 
Id&& 
;&& 
uniqueId'' 
='' 
test'' 
.'' 

UniqueName'' &
;''& '
fullName)) 
=)) 
test)) 
.)) 
FullName)) $
;))$ %
name** 
=** 
test** 
.** 
Name** 
;** 
description++ 
=++ 
test++ 
.++ 
Description++ *
;++* +
isSuite,, 
=,, 
test,, 
.,, 
IsSuite,, "
;,," #
ignoredOrSkipped.. 
=.. 
test.. #
...# $
RunState..$ ,
==..- /
RunState..0 8
...8 9
Ignored..9 @
||..A C
test..D H
...H I
RunState..I Q
==..R T
RunState..U ]
...] ^
Skipped..^ e
;..e f
notRunnable// 
=// 
test// 
.// 
RunState// '
==//( *
RunState//+ 3
.//3 4
NotRunnable//4 ?
;//? @
if11 
(11 
ignoredOrSkipped11  
)11  !
{22 
messages33 
=33 
test33 
.33  

SkipReason33  *
;33* +
}44 
if55 
(55 
notRunnable55 
)55 
{66 
resultStatus77 
=77 
ResultStatus77 +
.77+ ,
Failed77, 2
;772 3
messages88 
=88 
test88 
.88  

SkipReason88  *
;88* +
}99 

categories:: 
=:: 
test:: 
.:: 

Categories:: (
.::( )
ToList::) /
(::/ 0
)::0 1
;::1 2
parentId;; 
=;; 
test;; 
.;; 
ParentId;; $
;;;$ %
parentUniqueId<< 
=<< 
test<< !
.<<! "
ParentUniqueName<<" 2
;<<2 3
}== 	
internal?? 
TestRunnerResult?? !
(??! "
ITestResultAdaptor??" 4

testResult??5 ?
)??? @
:??A B
this??C G
(??G H

testResult??H R
.??R S
Test??S W
)??W X
{@@ 	
notOutdatedAA 
=AA 
trueAA 
;AA 
messagesCC 
=CC 

testResultCC !
.CC! "
MessageCC" )
;CC) *
outputDD 
=DD 

testResultDD 
.DD  
OutputDD  &
;DD& '

stacktraceEE 
=EE 

testResultEE #
.EE# $

StackTraceEE$ .
;EE. /
durationFF 
=FF 
(FF 
floatFF 
)FF 

testResultFF (
.FF( )
DurationFF) 1
;FF1 2
ifGG 
(GG 

testResultGG 
.GG 
TestGG 
.GG  
IsSuiteGG  '
&&GG( *

testResultGG+ 5
.GG5 6
ResultStateGG6 A
==GGB D
$strGGE N
)GGN O
{HH 
resultStatusII 
=II 
ResultStatusII +
.II+ ,
PassedII, 2
;II2 3
}JJ 
elseKK 
{LL 
resultStatusMM 
=MM "
ParseNUnitResultStatusMM 5
(MM5 6

testResultMM6 @
.MM@ A

TestStatusMMA K
)MMK L
;MML M
}NN 
}OO 	
publicQQ 
voidQQ 
UpdateQQ 
(QQ 
TestRunnerResultQQ +
resultQQ, 2
)QQ2 3
{RR 	
ifSS 
(SS 
ReferenceEqualsSS 
(SS  
resultSS  &
,SS& '
nullSS( ,
)SS, -
)SS- .
returnTT 
;TT 
resultStatusUU 
=UU 
resultUU !
.UU! "
resultStatusUU" .
;UU. /
durationVV 
=VV 
resultVV 
.VV 
durationVV &
;VV& '
messagesWW 
=WW 
resultWW 
.WW 
messagesWW &
;WW& '
outputXX 
=XX 
resultXX 
.XX 
outputXX "
;XX" #

stacktraceYY 
=YY 
resultYY 
.YY  

stacktraceYY  *
;YY* +
ignoredOrSkippedZZ 
=ZZ 
resultZZ %
.ZZ% &
ignoredOrSkippedZZ& 6
;ZZ6 7
notRunnable[[ 
=[[ 
result[[  
.[[  !
notRunnable[[! ,
;[[, -
description\\ 
=\\ 
result\\  
.\\  !
description\\! ,
;\\, -
notOutdated]] 
=]] 
result]]  
.]]  !
notOutdated]]! ,
;]], -
if^^ 
(^^ 
m_OnResultUpdate^^  
!=^^! #
null^^$ (
)^^( )
m_OnResultUpdate__  
(__  !
this__! %
)__% &
;__& '
}`` 	
publicbb 
voidbb $
SetResultChangedCallbackbb ,
(bb, -
Actionbb- 3
<bb3 4
TestRunnerResultbb4 D
>bbD E
resultUpdatedbbF S
)bbS T
{cc 	
m_OnResultUpdatedd 
=dd 
resultUpdateddd ,
;dd, -
}ee 	
[gg 	
Serializablegg	 
]gg 
internalhh 
enumhh 
ResultStatushh "
{ii 	
NotRunjj 
,jj 
Passedkk 
,kk 
Failedll 
,ll 
Inconclusivemm 
,mm 
Skippednn 
}oo 	
privateqq 
staticqq 
ResultStatusqq #"
ParseNUnitResultStatusqq$ :
(qq: ;

TestStatusqq; E
statusqqF L
)qqL M
{rr 	
switchss 
(ss 
statusss 
)ss 
{tt 
caseuu 

TestStatusuu 
.uu  
Passeduu  &
:uu& '
returnvv 
ResultStatusvv '
.vv' (
Passedvv( .
;vv. /
caseww 

TestStatusww 
.ww  
Failedww  &
:ww& '
returnxx 
ResultStatusxx '
.xx' (
Failedxx( .
;xx. /
caseyy 

TestStatusyy 
.yy  
Inconclusiveyy  ,
:yy, -
returnzz 
ResultStatuszz '
.zz' (
Inconclusivezz( 4
;zz4 5
case{{ 

TestStatus{{ 
.{{  
Skipped{{  '
:{{' (
return|| 
ResultStatus|| '
.||' (
Skipped||( /
;||/ 0
default}} 
:}} 
return~~ 
ResultStatus~~ '
.~~' (
NotRun~~( .
;~~. /
} 
}
ÄÄ 	
public
ÇÇ 
override
ÇÇ 
string
ÇÇ 
ToString
ÇÇ '
(
ÇÇ' (
)
ÇÇ( )
{
ÉÉ 	
return
ÑÑ 
string
ÑÑ 
.
ÑÑ 
Format
ÑÑ  
(
ÑÑ  !
$str
ÑÑ! ,
,
ÑÑ, -
name
ÑÑ. 2
,
ÑÑ2 3
fullName
ÑÑ4 <
)
ÑÑ< =
;
ÑÑ= >
}
ÖÖ 	
public
áá 
string
áá 
Id
áá 
{
áá 
get
áá 
{
áá  
return
áá! '
uniqueId
áá( 0
;
áá0 1
}
áá2 3
}
áá4 5
public
àà 
string
àà 
FullName
àà 
{
àà  
get
àà! $
{
àà% &
return
àà' -
fullName
àà. 6
;
àà6 7
}
àà8 9
}
àà: ;
public
ââ 
string
ââ 
ParentId
ââ 
{
ââ  
get
ââ! $
{
ââ% &
return
ââ' -
parentUniqueId
ââ. <
;
ââ< =
}
ââ> ?
}
ââ@ A
public
ää 
bool
ää 
IsSuite
ää 
{
ää 
get
ää !
{
ää" #
return
ää$ *
isSuite
ää+ 2
;
ää2 3
}
ää4 5
}
ää6 7
public
ãã 
List
ãã 
<
ãã 
string
ãã 
>
ãã 

Categories
ãã &
{
ãã' (
get
ãã) ,
{
ãã- .
return
ãã/ 5

categories
ãã6 @
;
ãã@ A
}
ããB C
}
ããD E
public
çç 
void
çç 
Clear
çç 
(
çç 
)
çç 
{
éé 	
resultStatus
èè 
=
èè 
ResultStatus
èè '
.
èè' (
NotRun
èè( .
;
èè. /
if
êê 
(
êê 
m_OnResultUpdate
êê  
!=
êê! #
null
êê$ (
)
êê( )
m_OnResultUpdate
ëë  
(
ëë  !
this
ëë! %
)
ëë% &
;
ëë& '
}
íí 	
}
ìì 
}îî “w
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestSettings\TestSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
TestSettings 
:  !
ITestSettings" /
{ 
private 
readonly 
TestSetting $
[$ %
]% &

m_Settings' 1
=2 3
{ 	
new		 
TestSetting		 
<		 #
ScriptingImplementation		 3
?		3 4
>		4 5
(		5 6
settings

 
=>

 
settings

 $
.

$ %
scriptingBackend

% 5
,

5 6
( 
) 
=> 
PlayerSettings $
.$ %
GetScriptingBackend% 8
(8 9#
EditorUserBuildSettings9 P
.P Q"
activeBuildTargetGroupQ g
)g h
,h i
implementation 
=> !
PlayerSettings" 0
.0 1
SetScriptingBackend1 D
(D E#
EditorUserBuildSettingsE \
.\ ]"
activeBuildTargetGroup] s
,s t
implementation	u É
.
É Ñ
Value
Ñ â
)
â ä
)
ä ã
,
ã å
new 
TestSetting 
< 
string "
>" #
(# $
settings 
=> 
settings $
.$ %
Architecture% 1
,1 2
( 
) 
=> #
EditorUserBuildSettings -
.- .
activeBuildTarget. ?
==@ B
BuildTargetC N
.N O
AndroidO V
?W X
PlayerSettingsY g
.g h
Androidh o
.o p 
targetArchitectures	p É
.
É Ñ
ToString
Ñ å
(
å ç
)
ç é
:
è ê
null
ë ï
,
ï ñ
architecture 
=> 
{ 
if 
( #
EditorUserBuildSettings /
./ 0
activeBuildTarget0 A
==B D
BuildTargetE P
.P Q
AndroidQ X
)X Y
{ 
if 
( 
! 
string #
.# $
IsNullOrEmpty$ 1
(1 2
architecture2 >
)> ?
)? @
{ 
var 
targetArchitectures  3
=4 5
(6 7
AndroidArchitecture7 J
)J K
EnumK O
.O P
ParseP U
(U V
typeofV \
(\ ]
AndroidArchitecture] p
)p q
,q r
architectures 
,	 Ä
true
Å Ö
)
Ö Ü
;
Ü á
PlayerSettings *
.* +
Android+ 2
.2 3
targetArchitectures3 F
=G H
targetArchitecturesI \
;\ ]
} 
} 
} 
) 
, 
new 
TestSetting 
< !
ApiCompatibilityLevel 1
?1 2
>2 3
(3 4
settings 
=> 
settings $
.$ %

apiProfile% /
,/ 0
( 
) 
=> 
PlayerSettings $
.$ %$
GetApiCompatibilityLevel% =
(= >#
EditorUserBuildSettings> U
.U V"
activeBuildTargetGroupV l
)l m
,m n
implementation 
=> !
{ 
if   
(   
Enum   
.   
	IsDefined   &
(  & '
typeof  ' -
(  - .!
ApiCompatibilityLevel  . C
)  C D
,  D E
implementation  F T
.  T U
Value  U Z
)  Z [
)  [ \
{!! 
PlayerSettings"" &
.""& '$
SetApiCompatibilityLevel""' ?
(""? @#
EditorUserBuildSettings""@ W
.""W X"
activeBuildTargetGroup""X n
,""n o
implementation## *
.##* +
Value##+ 0
)##0 1
;##1 2
}$$ 
}%% 
)%% 
,%% 
new&& 
TestSetting&& 
<&& 
bool&&  
?&&  !
>&&! "
(&&" #
settings'' 
=>'' 
settings'' $
.''$ %'
appleEnableAutomaticSigning''% @
,''@ A
((( 
)(( 
=>(( 
PlayerSettings(( $
.(($ %
iOS((% (
.((( )'
appleEnableAutomaticSigning(() D
,((D E"
enableAutomaticSigning)) &
=>))' )
{** 
if++ 
(++ "
enableAutomaticSigning++ .
!=++/ 1
null++2 6
)++6 7
PlayerSettings,, &
.,,& '
iOS,,' *
.,,* +'
appleEnableAutomaticSigning,,+ F
=,,G H"
enableAutomaticSigning,,I _
.,,_ `
Value,,` e
;,,e f
}-- 
)-- 
,-- 
new.. 
TestSetting.. 
<.. 
string.. "
>.." #
(..# $
settings// 
=>// 
settings// $
.//$ % 
appleDeveloperTeamID//% 9
,//9 :
(00 
)00 
=>00 
PlayerSettings00 $
.00$ %
iOS00% (
.00( ) 
appleDeveloperTeamID00) =
,00= >
developerTeam11 
=>11  
{22 
if33 
(33 
developerTeam33 %
!=33& (
null33) -
)33- .
PlayerSettings44 &
.44& '
iOS44' *
.44* + 
appleDeveloperTeamID44+ ?
=44@ A
developerTeam44B O
;44O P
}55 
)55 
,55 
new66 
TestSetting66 
<66 #
ProvisioningProfileType66 3
?663 4
>664 5
(665 6
settings77 
=>77 
settings77 $
.77$ %,
 iOSManualProvisioningProfileType77% E
,77E F
(88 
)88 
=>88 
PlayerSettings88 $
.88$ %
iOS88% (
.88( ),
 iOSManualProvisioningProfileType88) I
,88I J
profileType99 
=>99 
{:: 
if;; 
(;; 
profileType;; #
!=;;$ &
null;;' +
);;+ ,
PlayerSettings<< &
.<<& '
iOS<<' *
.<<* +,
 iOSManualProvisioningProfileType<<+ K
=<<L M
profileType<<N Y
.<<Y Z
Value<<Z _
;<<_ `
}== 
)== 
,== 
new>> 
TestSetting>> 
<>> 
string>> "
>>>" #
(>># $
settings?? 
=>?? 
settings?? $
.??$ %*
iOSManualProvisioningProfileID??% C
,??C D
(@@ 
)@@ 
=>@@ 
PlayerSettings@@ $
.@@$ %
iOS@@% (
.@@( )*
iOSManualProvisioningProfileID@@) G
,@@G H
provisioningUUIDAA  
=>AA! #
{BB 
ifCC 
(CC 
provisioningUUIDCC (
!=CC) +
nullCC, 0
)CC0 1
PlayerSettingsDD &
.DD& '
iOSDD' *
.DD* +*
iOSManualProvisioningProfileIDDD+ I
=DDJ K
provisioningUUIDDDL \
;DD\ ]
}EE 
)EE 
,EE 
newFF 
TestSettingFF 
<FF #
ProvisioningProfileTypeFF 3
?FF3 4
>FF4 5
(FF5 6
settingsGG 
=>GG 
settingsGG $
.GG$ %-
!tvOSManualProvisioningProfileTypeGG% F
,GGF G
(HH 
)HH 
=>HH 
PlayerSettingsHH $
.HH$ %
iOSHH% (
.HH( )-
!tvOSManualProvisioningProfileTypeHH) J
,HHJ K
profileTypeII 
=>II 
{JJ 
ifKK 
(KK 
profileTypeKK #
!=KK$ &
nullKK' +
)KK+ ,
PlayerSettingsLL &
.LL& '
iOSLL' *
.LL* +-
!tvOSManualProvisioningProfileTypeLL+ L
=LLM N
profileTypeLLO Z
.LLZ [
ValueLL[ `
;LL` a
}MM 
)MM 
,MM 
newNN 
TestSettingNN 
<NN 
stringNN "
>NN" #
(NN# $
settingsOO 
=>OO 
settingsOO $
.OO$ %+
tvOSManualProvisioningProfileIDOO% D
,OOD E
(PP 
)PP 
=>PP 
PlayerSettingsPP $
.PP$ %
iOSPP% (
.PP( )+
tvOSManualProvisioningProfileIDPP) H
,PPH I
provisioningUUIDQQ  
=>QQ! #
{RR 
ifSS 
(SS 
provisioningUUIDSS (
!=SS) +
nullSS, 0
)SS0 1
PlayerSettingsTT &
.TT& '
iOSTT' *
.TT* ++
tvOSManualProvisioningProfileIDTT+ J
=TTK L
provisioningUUIDTTM ]
;TT] ^
}UU 
)UU 
,UU 
}VV 	
;VV	 

privateXX 
boolXX 

m_DisposedXX 
;XX  
publicZZ #
ScriptingImplementationZZ &
?ZZ& '
scriptingBackendZZ( 8
{ZZ9 :
getZZ; >
;ZZ> ?
setZZ@ C
;ZZC D
}ZZE F
public\\ 
string\\ 
Architecture\\ "
{\\# $
get\\% (
;\\( )
set\\* -
;\\- .
}\\/ 0
public^^ !
ApiCompatibilityLevel^^ $
?^^$ %

apiProfile^^& 0
{^^1 2
get^^3 6
;^^6 7
set^^8 ;
;^^; <
}^^= >
public`` 
bool`` 
?`` '
appleEnableAutomaticSigning`` 0
{``1 2
get``3 6
;``6 7
set``8 ;
;``; <
}``= >
publicaa 
stringaa  
appleDeveloperTeamIDaa *
{aa+ ,
getaa- 0
;aa0 1
setaa2 5
;aa5 6
}aa7 8
publicbb #
ProvisioningProfileTypebb &
?bb& ',
 iOSManualProvisioningProfileTypebb( H
{bbI J
getbbK N
;bbN O
setbbP S
;bbS T
}bbU V
publiccc 
stringcc *
iOSManualProvisioningProfileIDcc 4
{cc5 6
getcc7 :
;cc: ;
setcc< ?
;cc? @
}ccA B
publicdd #
ProvisioningProfileTypedd &
?dd& '-
!tvOSManualProvisioningProfileTypedd( I
{ddJ K
getddL O
;ddO P
setddQ T
;ddT U
}ddV W
publicee 
stringee +
tvOSManualProvisioningProfileIDee 5
{ee6 7
getee8 ;
;ee; <
setee= @
;ee@ A
}eeB C
publicgg 
voidgg 
Disposegg 
(gg 
)gg 
{hh 	
ifii 
(ii 
!ii 

m_Disposedii 
)ii 
{jj 
foreachkk 
(kk 
varkk 
testSettingkk (
inkk) +

m_Settingskk, 6
)kk6 7
{ll 
testSettingmm 
.mm  
Cleanupmm  '
(mm' (
)mm( )
;mm) *
}nn 

m_Disposedpp 
=pp 
truepp !
;pp! "
}qq 
}rr 	
publictt 
voidtt "
SetupProjectParameterstt *
(tt* +
)tt+ ,
{uu 	
foreachvv 
(vv 
varvv 
testSettingvv $
invv% '

m_Settingsvv( 2
)vv2 3
{ww 
testSettingxx 
.xx 
Setupxx !
(xx! "
thisxx" &
)xx& '
;xx' (
}yy 
}zz 	
private|| 
abstract|| 
class|| 
TestSetting|| *
{}} 	
public~~ 
abstract~~ 
void~~  
Setup~~! &
(~~& '
TestSettings~~' 3
settings~~4 <
)~~< =
;~~= >
public 
abstract 
void  
Cleanup! (
(( )
)) *
;* +
}
ÄÄ 	
private
ÇÇ 
class
ÇÇ 
TestSetting
ÇÇ !
<
ÇÇ! "
T
ÇÇ" #
>
ÇÇ# $
:
ÇÇ% &
TestSetting
ÇÇ' 2
{
ÉÉ 	
private
ÑÑ 
T
ÑÑ  
m_ValueBeforeSetup
ÑÑ (
;
ÑÑ( )
private
ÖÖ 
Func
ÖÖ 
<
ÖÖ 
TestSettings
ÖÖ %
,
ÖÖ% &
T
ÖÖ' (
>
ÖÖ( )
m_GetFromSettings
ÖÖ* ;
;
ÖÖ; <
private
ÜÜ 
Func
ÜÜ 
<
ÜÜ 
T
ÜÜ 
>
ÜÜ 
m_GetCurrentValue
ÜÜ -
;
ÜÜ- .
private
áá 
Action
áá 
<
áá 
T
áá 
>
áá 

m_SetValue
áá (
;
áá( )
public
ââ 
TestSetting
ââ 
(
ââ 
Func
ââ #
<
ââ# $
TestSettings
ââ$ 0
,
ââ0 1
T
ââ2 3
>
ââ3 4
getFromSettings
ââ5 D
,
ââD E
Func
ââF J
<
ââJ K
T
ââK L
>
ââL M
getCurrentValue
ââN ]
,
ââ] ^
Action
ââ_ e
<
ââe f
T
ââf g
>
ââg h
setValue
ââi q
)
ââq r
{
ää 
m_GetFromSettings
ãã !
=
ãã" #
getFromSettings
ãã$ 3
;
ãã3 4
m_GetCurrentValue
åå !
=
åå" #
getCurrentValue
åå$ 3
;
åå3 4

m_SetValue
çç 
=
çç 
setValue
çç %
;
çç% &
}
éé 
public
êê 
override
êê 
void
êê  
Setup
êê! &
(
êê& '
TestSettings
êê' 3
settings
êê4 <
)
êê< =
{
ëë  
m_ValueBeforeSetup
íí "
=
íí# $
m_GetCurrentValue
íí% 6
(
íí6 7
)
íí7 8
;
íí8 9
var
ìì 
newValue
ìì 
=
ìì 
m_GetFromSettings
ìì 0
(
ìì0 1
settings
ìì1 9
)
ìì9 :
;
ìì: ;
if
îî 
(
îî 
newValue
îî 
!=
îî 
null
îî  $
)
îî$ %
{
ïï 

m_SetValue
ññ 
(
ññ 
newValue
ññ '
)
ññ' (
;
ññ( )
}
óó 
}
òò 
public
öö 
override
öö 
void
öö  
Cleanup
öö! (
(
öö( )
)
öö) *
{
õõ 

m_SetValue
úú 
(
úú  
m_ValueBeforeSetup
úú -
)
úú- .
;
úú. /
}
ùù 
}
ûû 	
}
üü 
}†† ÿ
≥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\ITestListCacheData.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
	interface 
ITestListCacheData  
{		 
List

 
<

 
TestPlatform

 
>

 
	platforms

 $
{

% &
get

' *
;

* +
}

, -
List 
< 
ITest 
> 

cachedData 
{  
get! $
;$ %
}& '
} 
} Ç	
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\UtpDebuglogger.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
class 	
UtpDebugLogger
 
: 

IUtpLogger %
{ 
public 
void 
Log 
( 
Message 
msg  #
)# $
{ 	
var		 
msgJson		 
=		 
JsonUtility		 %
.		% &
ToJson		& ,
(		, -
msg		- 0
)		0 1
;		1 2
Debug

 
.

 
	LogFormat

 
(

 
LogType

 #
.

# $
Log

$ '
,

' (
	LogOption

) 2
.

2 3
NoStacktrace

3 ?
,

? @
null

A E
,

E F
$str

G T
,

T U
msgJson

V ]
)

] ^
;

^ _
} 	
} 
} Å
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\EditModePCHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
EditModePcHelper #
:$ %
TestCommandPcHelper& 9
{ 
public		 
override		 
void		 
SetEnumeratorPC		 ,
(		, -
IEnumerator		- 8

enumerator		9 C
,		C D
int		E H
pc		I K
)		K L
{

 	
GetPCFieldInfo 
( 

enumerator %
)% &
.& '
SetValue' /
(/ 0

enumerator0 :
,: ;
pc< >
)> ?
;? @
} 	
public 
override 
int 
GetEnumeratorPC +
(+ ,
IEnumerator, 7

enumerator8 B
)B C
{ 	
if 
( 

enumerator 
== 
null "
)" #
{ 
return 
$num 
; 
} 
return 
( 
int 
) 
GetPCFieldInfo &
(& '

enumerator' 1
)1 2
.2 3
GetValue3 ;
(; <

enumerator< F
)F G
;G H
} 	
private 
	FieldInfo 
GetPCFieldInfo (
(( )
IEnumerator) 4

enumerator5 ?
)? @
{ 	
var 
field 
= 

enumerator "
." #
GetType# *
(* +
)+ ,
., -
GetField- 5
(5 6
$str6 ;
,; <
BindingFlags= I
.I J
	NonPublicJ S
|T U
BindingFlagsV b
.b c
Instancec k
)k l
;l m
if 
( 
field 
== 
null 
) 
field 
= 

enumerator "
." #
GetType# *
(* +
)+ ,
., -
GetField- 5
(5 6
$str6 B
,B C
BindingFlagsD P
.P Q
	NonPublicQ Z
|[ \
BindingFlags] i
.i j
Instancej r
)r s
;s t
return 
field 
; 
} 	
} 
}   À
∏D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\WindowResultUpdater.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class 
WindowResultUpdater &
:' (

ICallbacks) 3
,3 4%
ITestTreeRebuildCallbacks5 N
{ 
public		 
WindowResultUpdater		 "
(		" #
)		# $
{

 	
var 
cachedResults 
= )
WindowResultUpdaterDataHolder  =
.= >
instance> F
.F G
CachedResultsG T
;T U
var 
testList 
= 
TestRunnerWindow +
.+ ,

s_Instance, 6
.6 7
m_SelectedTestTypes7 J
;J K
foreach 
( 
var 
result 
in  "
cachedResults# 0
)0 1
{ 
testList 
. 
UpdateResult %
(% &
result& ,
), -
;- .
} 
cachedResults 
. 
Clear 
(  
)  !
;! "
} 	
public 
void 

RunStarted 
( 
ITestAdaptor +

testsToRun, 6
)6 7
{ 	
} 	
public 
void 
RunFinished 
(  
ITestResultAdaptor  2
testResults3 >
)> ?
{ 	
if 
( 
TestRunnerWindow  
.  !

s_Instance! +
!=, .
null/ 3
)3 4
{ 
TestRunnerWindow  
.  !

s_Instance! +
.+ ,
RebuildUIFilter, ;
(; <
)< =
;= >
} 
} 	
public!! 
void!! 
TestStarted!! 
(!!  
ITestAdaptor!!  ,
testName!!- 5
)!!5 6
{"" 	
}## 	
public%% 
void%% 
TestFinished%%  
(%%  !
ITestResultAdaptor%%! 3
test%%4 8
)%%8 9
{&& 	
var'' 
result'' 
='' 
new'' 
TestRunnerResult'' -
(''- .
test''. 2
)''2 3
;''3 4
if(( 
((( 
TestRunnerWindow((  
.((  !

s_Instance((! +
==((, .
null((/ 3
)((3 4
{)) )
WindowResultUpdaterDataHolder** -
.**- .
instance**. 6
.**6 7
CachedResults**7 D
.**D E
Add**E H
(**H I
result**I O
)**O P
;**P Q
return++ 
;++ 
},, 
TestRunnerWindow.. 
... 

s_Instance.. '
...' (
m_SelectedTestTypes..( ;
...; <
UpdateResult..< H
(..H I
result..I O
)..O P
;..P Q
}// 	
public11 
void11 
TestTreeRebuild11 #
(11# $
ITestAdaptor11$ 0
test111 5
)115 6
{22 	
if33 
(33 
TestRunnerWindow33  
.33  !

s_Instance33! +
==33, .
null33/ 3
)333 4
{44 
return55 
;55 
}66 
TestRunnerWindow88 
.88 

s_Instance88 '
.88' (
m_SelectedTestTypes88( ;
.88; <
UpdateTestTree88< J
(88J K
test88K O
)88O P
;88P Q
}99 	
}:: 
};; Ó!
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ExecutionSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
[ 
Serializable 
] 
public 

class 
ExecutionSettings "
{ 
public 
ExecutionSettings  
(  !
params! '
Filter( .
[. /
]/ 0
filtersToExecute1 A
)A B
{ 	
filters 
= 
filtersToExecute &
;& '
} 	
[ 	
SerializeField	 
] 
internal 
BuildTarget 
? 
targetPlatform ,
;, -
public 
ITestRunSettings #
overloadTestRunSettings  7
;7 8
[!! 	
SerializeField!!	 
]!! 
internal"" 
Filter"" 
filter"" 
;"" 
[$$ 	
SerializeField$$	 
]$$ 
public%% 
Filter%% 
[%% 
]%% 
filters%% 
;%%  
[** 	
SerializeField**	 
]** 
public++ 
bool++ 
runSynchronously++ $
;++$ %
[// 	
SerializeField//	 
]// 
public00 
int00 "
playerHeartbeatTimeout00 )
=00* +
$num00, .
*00. /
$num00/ 1
;001 2
internal22 
bool22 
EditModeIncluded22 &
(22& '
)22' (
{33 	
return44 
filters44 
.44 
Any44 
(44 
f44  
=>44! #
IncludesTestMode44$ 4
(444 5
f445 6
.446 7
testMode447 ?
,44? @
TestMode44A I
.44I J
EditMode44J R
)44R S
)44S T
;44T U
}55 	
internal77 
bool77 $
PlayModeInEditorIncluded77 .
(77. /
)77/ 0
{88 	
return99 
filters99 
.99 
Any99 
(99 
f99  
=>99! #
IncludesTestMode99$ 4
(994 5
f995 6
.996 7
testMode997 ?
,99? @
TestMode99A I
.99I J
PlayMode99J R
)99R S
&&99T V
targetPlatform99W e
==99f h
null99i m
)99m n
;99n o
}:: 	
internal<< 
bool<< 
PlayerIncluded<< $
(<<$ %
)<<% &
{== 	
return>> 
filters>> 
.>> 
Any>> 
(>> 
f>>  
=>>>! #
IncludesTestMode>>$ 4
(>>4 5
f>>5 6
.>>6 7
testMode>>7 ?
,>>? @
TestMode>>A I
.>>I J
PlayMode>>J R
)>>R S
&&>>T V
targetPlatform>>W e
!=>>f h
null>>i m
)>>m n
;>>n o
}?? 	
privateAA 
staticAA 
boolAA 
IncludesTestModeAA ,
(AA, -
TestModeAA- 5
testModeAA6 >
,AA> ?
TestModeAA@ H
modeToCheckForAAI W
)AAW X
{BB 	
returnCC 
(CC 
testModeCC 
&CC 
modeToCheckForCC -
)CC- .
==CC/ 1
modeToCheckForCC2 @
;CC@ A
}DD 	
internalFF 
ITestFilterFF 
BuildNUnitFilterFF -
(FF- .
)FF. /
{GG 	
returnHH 
newHH 
OrFilterHH 
(HH  
filtersHH  '
.HH' (
SelectHH( .
(HH. /
fHH/ 0
=>HH1 3
fHH4 5
.HH5 6%
ToRuntimeTestRunnerFilterHH6 O
(HHO P
runSynchronouslyHHP `
)HH` a
.HHa b
BuildNUnitFilterHHb r
(HHr s
)HHs t
)HHt u
.HHu v
ToArrayHHv }
(HH} ~
)HH~ 
)	HH Ä
;
HHÄ Å
}II 	
}JJ 
}KK øQ
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlaymodeLauncher.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
PlaymodeLauncher #
:$ %#
RuntimeTestLauncherBase& =
{ 
public 
static 
bool 
	IsRunning $
;$ %
private 
Scene 
m_Scene 
; 
private 
bool "
m_IsTestSetupPerformed +
;+ ,
private 
readonly +
PlaymodeTestsControllerSettings 8

m_Settings9 C
;C D
private 
ITestFilter 

testFilter &
;& '
[ 	
SerializeField	 
] 
private 
List 
< 
Type 
> 
m_EventHandlers *
=+ ,
new- 0
List1 5
<5 6
Type6 :
>: ;
(; <
)< =
;= >
public 
PlaymodeLauncher 
(  +
PlaymodeTestsControllerSettings  ?
settings@ H
)H I
{ 	

m_Settings 
= 
settings !
;! "
} 	
public 
override 
void 
Run  
(  !
)! "
{   	
	IsRunning!! 
=!! 
true!! 
;!! 
ConsoleWindow"" 
.""  
SetConsoleErrorPause"" .
("". /
false""/ 4
)""4 5
;""5 6
Application## 
.## 
runInBackground## '
=##( )
true##* .
;##. /
var%% 
	sceneName%% 
=%% 
CreateSceneName%% +
(%%+ ,
)%%, -
;%%- .
m_Scene&& 
=&&  
CreateBootstrapScene&& *
(&&* +
	sceneName&&+ 4
,&&4 5
runner&&6 <
=>&&= ?
{'' 
runner(( 
.(( (
AddEventHandlerMonoBehaviour(( 3
<((3 4"
PlayModeRunnerCallback((4 J
>((J K
(((K L
)((L M
;((M N
runner)) 
.)) +
AddEventHandlerScriptableObject)) 6
<))6 7
TestRunnerCallback))7 I
>))I J
())J K
)))K L
;))L M
runner** 
.** +
AddEventHandlerScriptableObject** 6
<**6 7&
CallbacksDelegatorListener**7 Q
>**Q R
(**R S
)**S T
;**T U
runner++ 
.++ +
AddEventHandlerScriptableObject++ 6
<++6 7#
TestRunCallbackListener++7 N
>++N O
(++O P
)++P Q
;++Q R
foreach-- 
(-- 
var-- 
eventHandler-- )
in--* ,
m_EventHandlers--- <
)--< =
{.. 
var// 
obj// 
=// 
ScriptableObject// .
.//. /
CreateInstance/// =
(//= >
eventHandler//> J
)//J K
;//K L
runner00 
.00 +
AddEventHandlerScriptableObject00 :
(00: ;
obj00; >
as00? A
ITestRunnerListener00B U
)00U V
;00V W
}11 
runner33 
.33 
settings33 
=33  !

m_Settings33" ,
;33, -
}44 
)44 
;44 
if66 
(66 

m_Settings66 
.66 

sceneBased66 %
)66% &
{77 
var88 
newListOfScenes88 #
=88$ %
new99 
List99 
<99 $
EditorBuildSettingsScene99 5
>995 6
{997 8
new998 ;$
EditorBuildSettingsScene99< T
(99T U
	sceneName99U ^
,99^ _
true99` d
)99d e
}99e f
;99f g
newListOfScenes:: 
.::  
AddRange::  (
(::( )
EditorBuildSettings::) <
.::< =
scenes::= C
)::C D
;::D E
EditorBuildSettings;; #
.;;# $
scenes;;$ *
=;;+ ,
newListOfScenes;;- <
.;;< =
ToArray;;= D
(;;D E
);;E F
;;;F G
}<< 
EditorApplication>> 
.>> 
update>> $
+=>>% '
UpdateCallback>>( 6
;>>6 7
}?? 	
publicAA 
voidAA 
UpdateCallbackAA "
(AA" #
)AA# $
{BB 	
ifCC 
(CC "
m_IsTestSetupPerformedCC &
)CC& '
{DD 
ifEE 
(EE 
m_SceneEE 
.EE 
IsValidEE #
(EE# $
)EE$ %
)EE% &
SceneManagerFF  
.FF  !
SetActiveSceneFF! /
(FF/ 0
m_SceneFF0 7
)FF7 8
;FF8 9
EditorApplicationGG !
.GG! "
updateGG" (
-=GG) +
UpdateCallbackGG, :
;GG: ;
EditorApplicationHH !
.HH! "
	isPlayingHH" +
=HH, -
trueHH. 2
;HH2 3
}II 
elseJJ 
{KK 

testFilterLL 
=LL 

m_SettingsLL '
.LL' (
BuildNUnitFilterLL( 8
(LL8 9
)LL9 :
;LL: ;
varMM 
runnerMM 
=MM 
	LoadTestsMM &
(MM& '

testFilterMM' 1
)MM1 2
;MM2 3
varOO 
exceptionThrownOO #
=OO$ %'
ExecutePreBuildSetupMethodsOO& A
(OOA B
runnerOOB H
.OOH I

LoadedTestOOI S
,OOS T

testFilterOOU _
)OO_ `
;OO` a
ifPP 
(PP 
exceptionThrownPP #
)PP# $
{QQ 
EditorApplicationRR %
.RR% &
updateRR& ,
-=RR- /
UpdateCallbackRR0 >
;RR> ?
	IsRunningSS 
=SS 
falseSS  %
;SS% &
varTT 

controllerTT "
=TT# $#
PlaymodeTestsControllerTT% <
.TT< =
GetControllerTT= J
(TTJ K
)TTK L
;TTL M
ReopenOriginalSceneUU '
(UU' (

controllerUU( 2
)UU2 3
;UU3 4
AssetDatabaseVV !
.VV! "
DeleteAssetVV" -
(VV- .

controllerVV. 8
.VV8 9
settingsVV9 A
.VVA B
bootstrapSceneVVB P
)VVP Q
;VVQ R
CallbacksDelegatorWW &
.WW& '
instanceWW' /
.WW/ 0
	RunFailedWW0 9
(WW9 :
$str	WW: è
)
WWè ê
;
WWê ë
returnXX 
;XX 
}YY "
m_IsTestSetupPerformedZZ &
=ZZ' (
trueZZ) -
;ZZ- .
}[[ 
}\\ 	
[^^ 	
InitializeOnLoad^^	 
]^^ 
public__ 
class__ 
BackgroundWatcher__ &
{`` 	
staticaa 
BackgroundWatcheraa $
(aa$ %
)aa% &
{bb 
EditorApplicationcc !
.cc! " 
playModeStateChangedcc" 6
+=cc7 9"
OnPlayModeStateChangedcc: P
;ccP Q
}dd 
privateff 
staticff 
voidff "
OnPlayModeStateChangedff  6
(ff6 7
PlayModeStateChangeff7 J
stateffK P
)ffP Q
{gg 
ifhh 
(hh 
!hh #
PlaymodeTestsControllerhh ,
.hh, -
IsControllerOnScenehh- @
(hh@ A
)hhA B
)hhB C
returnii 
;ii 
varjj 
runnerjj 
=jj #
PlaymodeTestsControllerjj 4
.jj4 5
GetControllerjj5 B
(jjB C
)jjC D
;jjD E
ifkk 
(kk 
runnerkk 
==kk 
nullkk "
)kk" #
returnll 
;ll 
ifmm 
(mm 
statemm 
==mm 
PlayModeStateChangemm 0
.mm0 1
ExitingPlayModemm1 @
)mm@ A
{nn 
AssetDatabaseoo !
.oo! "
DeleteAssetoo" -
(oo- .
runneroo. 4
.oo4 5
settingsoo5 =
.oo= >
bootstrapSceneoo> L
)ooL M
;ooM N*
ExecutePostBuildCleanupMethodspp 2
(pp2 3
runnerpp3 9
.pp9 :
m_Runnerpp: B
.ppB C

LoadedTestppC M
,ppM N
runnerppO U
.ppU V
settingsppV ^
.pp^ _
BuildNUnitFilterpp_ o
(ppo p
)ppp q
,ppq r
Applicationpps ~
.pp~ 
platform	pp á
)
ppá à
;
ppà â
	IsRunningqq 
=qq 
falseqq  %
;qq% &
}rr 
elsess 
ifss 
(ss 
statess 
==ss !
PlayModeStateChangess" 5
.ss5 6
EnteredEditModess6 E
)ssE F
{tt 
ReopenOriginalScenevv '
(vv' (
runnervv( .
)vv. /
;vv/ 0
}ww 
}xx 
}yy 	
	protected{{ 
static{{ 
void{{ 
ReopenOriginalScene{{ 1
({{1 2#
PlaymodeTestsController{{2 I
runner{{J P
){{P Q
{|| 	
ReopenOriginalScene}} 
(}}  
runner}}  &
.}}& '
settings}}' /
.}}/ 0
originalScene}}0 =
)}}= >
;}}> ?
}~~ 	
public
ÄÄ 
void
ÄÄ 
AddEventHandler
ÄÄ #
<
ÄÄ# $
T
ÄÄ$ %
>
ÄÄ% &
(
ÄÄ& '
)
ÄÄ' (
where
ÄÄ) .
T
ÄÄ/ 0
:
ÄÄ1 2
ScriptableObject
ÄÄ3 C
,
ÄÄC D!
ITestRunnerListener
ÄÄE X
{
ÅÅ 	
m_EventHandlers
ÇÇ 
.
ÇÇ 
Add
ÇÇ 
(
ÇÇ  
typeof
ÇÇ  &
(
ÇÇ& '
T
ÇÇ' (
)
ÇÇ( )
)
ÇÇ) *
;
ÇÇ* +
}
ÉÉ 	
}
ÑÑ 
}ÖÖ …7
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\Views\EditModeTestListGUI.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
[		 
Serializable		 
]		 
internal

 
class

 
EditModeTestListGUI

 &
:

' (
TestListGUI

) 4
{ 
public 
override 
TestMode  
TestMode! )
{ 	
get 
{ 
return 
TestMode !
.! "
EditMode" *
;* +
}, -
} 	
public 
override 
void 
RenderNoTestsInfo .
(. /
)/ 0
{ 	
if 
( 
! 
TestListGUIHelper "
." #.
"SelectedFolderContainsTestAssembly# E
(E F
)F G
)G H
{ 
var 

noTestText 
=  
$str! 3
;3 4
if 
( 
! 
PlayerSettings #
.# $%
playModeTestRunnerEnabled$ =
)= >
{ 
const 
string  .
"testsArePulledFromCustomAssemblies! C
=D E
$str	 π
;
π ∫

noTestText 
+= !
Environment" -
.- .
NewLine. 5
+6 7.
"testsArePulledFromCustomAssemblies8 Z
;Z [
} 
EditorGUILayout 
.  
HelpBox  '
(' (

noTestText( 2
,2 3
MessageType4 ?
.? @
Info@ D
)D E
;E F
if 
( 
	GUILayout 
. 
Button $
($ %
$str% K
)K L
)L M
{   
TestListGUIHelper!! %
.!!% &(
AddFolderAndAsmDefForTesting!!& B
(!!B C
isEditorOnly!!C O
:!!O P
true!!Q U
)!!U V
;!!V W
}"" 
}## 
if%% 
(%% 
!%% 
TestListGUIHelper%% "
.%%" #4
(CanAddEditModeTestScriptAndItWillCompile%%# K
(%%K L
)%%L M
)%%M N
{&& 
UnityEngine'' 
.'' 
GUI'' 
.''  
enabled''  '
=''( )
false''* /
;''/ 0
EditorGUILayout(( 
.((  
HelpBox((  '
(((' (
$str((( n
,((n o
MessageType((p {
.(({ |
Warning	((| É
)
((É Ñ
;
((Ñ Ö
})) 
if** 
(** 
	GUILayout** 
.** 
Button**  
(**  !
$str**! G
)**G H
)**H I
{++ 
TestListGUIHelper,, !
.,,! "
AddTest,," )
(,,) *
),,* +
;,,+ ,
}-- 
UnityEngine.. 
... 
GUI.. 
... 
enabled.. #
=..$ %
true..& *
;..* +
}// 	
public11 
override11 
void11 
PrintHeadPanel11 +
(11+ ,
)11, -
{22 	
base33 
.33 
PrintHeadPanel33 
(33  
)33  !
;33! "
DrawFilters44 
(44 
)44 
;44 
}55 	
	protected77 
override77 
void77 
RunTests77  (
(77( )
params77) /
UITestRunnerFilter770 B
[77B C
]77C D
filters77E L
)77L M
{88 	
if99 
(99 
EditorUtility99 
.99 #
scriptCompilationFailed99 5
)995 6
{:: 
Debug;; 
.;; 
LogError;; 
(;; 
$str;; L
);;L M
;;;M N
return<< 
;<< 
}== 
foreach?? 
(?? 
var?? 
filter?? 
in??  "
filters??# *
)??* +
{@@ 
filterAA 
.AA 
ClearResultsAA #
(AA# $
newResultListAA$ 1
.AA1 2
OfTypeAA2 8
<AA8 9
UITestRunnerFilterAA9 K
.AAK L
IClearableResultAAL \
>AA\ ]
(AA] ^
)AA^ _
.AA_ `
ToListAA` f
(AAf g
)AAg h
)AAh i
;AAi j
}BB 
RerunCallbackDataDD 
.DD 
instanceDD &
.DD& '

runFiltersDD' 1
=DD2 3
filtersDD4 ;
;DD; <
RerunCallbackDataEE 
.EE 
instanceEE &
.EE& '
testModeEE' /
=EE0 1
TestModeEE2 :
.EE: ;
EditModeEE; C
;EEC D
varGG 
testRunnerApiGG 
=GG 
ScriptableObjectGG  0
.GG0 1
CreateInstanceGG1 ?
<GG? @
TestRunnerApiGG@ M
>GGM N
(GGN O
)GGO P
;GGP Q
testRunnerApiHH 
.HH 
ExecuteHH !
(HH! "
newHH" %
ExecutionSettingsHH& 7
(HH7 8
)HH8 9
{II 
filtersJJ 
=JJ 
filtersJJ !
.JJ! "
SelectJJ" (
(JJ( )
filterJJ) /
=>JJ0 2
newJJ3 6
FilterJJ7 =
(JJ= >
)JJ> ?
{KK 
assemblyNamesLL !
=LL" #
filterLL$ *
.LL* +
assemblyNamesLL+ 8
,LL8 9
categoryNamesMM !
=MM" #
filterMM$ *
.MM* +
categoryNamesMM+ 8
,MM8 9

groupNamesNN 
=NN  
filterNN" (
.NN( )

groupNamesNN) 3
,NN3 4
testModeOO 
=OO 
TestModeOO '
,OO' (
	testNamesPP 
=PP 
filterPP  &
.PP& '
	testNamesPP' 0
}QQ 
)QQ 
.QQ 
ToArrayQQ 
(QQ 
)QQ 
}RR 
)RR 
;RR 
}SS 	
publicUU 
overrideUU 
TestPlatformUU $
TestPlatformUU% 1
{UU2 3
getUU4 7
{UU8 9
returnUU: @
TestPlatformUUA M
.UUM N
EditModeUUN V
;UUV W
}UUX Y
}UUZ [
	protectedWW 
overrideWW 
boolWW 
IsBusyWW  &
(WW& '
)WW' (
{XX 	
returnYY 
TestRunnerApiYY  
.YY  !
IsRunActiveYY! ,
(YY, -
)YY- .
||YY/ 1
EditorApplicationYY2 C
.YYC D
isCompilingYYD O
||YYP R
EditorApplicationYYS d
.YYd e
	isPlayingYYe n
;YYn o
}ZZ 	
}[[ 
}\\ ®
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\TestPlanMessage.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class 
TestPlanMessage "
:# $
Message% ,
{ 
public 
List 
< 
string 
> 
tests !
;! "
public		 
TestPlanMessage		 
(		 
)		  
{

 	
type 
= 
$str 
; 
} 	
} 
} œ
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\EditmodeWorkItemFactory.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class #
EditmodeWorkItemFactory *
:+ ,
WorkItemFactory- <
{ 
	protected		 
override		 
UnityWorkItem		 (
Create		) /
(		/ 0

TestMethod		0 :
method		; A
,		A B
ITestFilter		C N
filter		O U
,		U V
ITest		W \

loadedTest		] g
)		g h
{

 	
return 
new (
EditorEnumeratorTestWorkItem 3
(3 4
method4 :
,: ;
filter< B
)B C
;C D
} 	
} 
} Ê|
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestRunnerUIFilter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
[ 
Serializable 
] 
internal		 
class		 
TestRunnerUIFilter		 %
{

 
private 
int 
m_PassedCount !
;! "
private 
int 
m_FailedCount !
;! "
private 
int 
m_NotRunCount !
;! "
private 
int 
m_InconclusiveCount '
;' (
private 
int 
m_SkippedCount "
;" #
public 
int 
PassedCount 
{  
get! $
{% &
return' -
m_PassedCount. ;
;; <
}= >
}? @
public 
int 
FailedCount 
{  
get! $
{% &
return' -
m_FailedCount. ;
+< =
m_InconclusiveCount> Q
;Q R
}S T
}U V
public 
int 
NotRunCount 
{  
get! $
{% &
return' -
m_NotRunCount. ;
+< =
m_SkippedCount> L
;L M
}N O
}P Q
[ 	
SerializeField	 
] 
public 
bool 
PassedHidden  
;  !
[ 	
SerializeField	 
] 
public 
bool 
FailedHidden  
;  !
[ 	
SerializeField	 
] 
public 
bool 
NotRunHidden  
;  !
[ 	
SerializeField	 
] 
private 
string 
m_SearchString %
;% &
[ 	
SerializeField	 
] 
private 
int  
selectedCategoryMask (
;( )
public!! 
string!! 
[!! 
]!! 
availableCategories!! +
=!!, -
new!!. 1
string!!2 8
[!!8 9
$num!!9 :
]!!: ;
;!!; <
private$$ 

GUIContent$$ 
m_SucceededBtn$$ )
;$$) *
private%% 

GUIContent%% 
m_FailedBtn%% &
;%%& '
private&& 

GUIContent&& 
m_NotRunBtn&& &
;&&& '
public(( 
Action(( 
RebuildTestList(( %
;((% &
public)) 
Action)) 
<)) 
string)) 
>)) 
SearchStringChanged)) 1
;))1 2
public** 
Action** 
SearchStringCleared** )
;**) *
public++ 
bool++ 
IsFiltering++ 
{,, 	
get-- 
{.. 
return// 
!// 
string// 
.// 
IsNullOrEmpty// ,
(//, -
m_SearchString//- ;
)//; <
||//= ?
PassedHidden//@ L
||//M O
FailedHidden//P \
||//] _
NotRunHidden//` l
||//m o 
selectedCategoryMask00 (
!=00) +
$num00, -
;00- .
}11 
}22 	
public44 
string44 
[44 
]44 
CategoryFilter44 &
{55 	
get66 
{77 
var88 
list88 
=88 
new88 
List88 #
<88# $
string88$ *
>88* +
(88+ ,
)88, -
;88- .
for99 
(99 
int99 
i99 
=99 
$num99 
;99 
i99  !
<99" #
availableCategories99$ 7
.997 8
Length998 >
;99> ?
i99@ A
++99A C
)99C D
{:: 
if;; 
(;; 
(;;  
selectedCategoryMask;; -
&;;. /
(;;0 1
$num;;1 2
<<;;3 5
i;;6 7
);;7 8
);;8 9
!=;;: <
$num;;= >
);;> ?
{<< 
list== 
.== 
Add==  
(==  !
availableCategories==! 4
[==4 5
i==5 6
]==6 7
)==7 8
;==8 9
}>> 
}?? 
return@@ 
list@@ 
.@@ 
ToArray@@ #
(@@# $
)@@$ %
;@@% &
}AA 
}BB 	
publicDD 
voidDD 
UpdateCountersDD "
(DD" #
ListDD# '
<DD' (
TestRunnerResultDD( 8
>DD8 9

resultListDD: D
)DDD E
{EE 	
m_PassedCountFF 
=FF 
m_FailedCountFF )
=FF* +
m_NotRunCountFF, 9
=FF: ;
m_InconclusiveCountFF= P
=FFQ R
m_SkippedCountFFS a
=FFb c
$numFFd e
;FFe f
foreachGG 
(GG 
varGG 
resultGG 
inGG  "

resultListGG# -
)GG- .
{HH 
ifII 
(II 
resultII 
.II 
isSuiteII "
)II" #
continueJJ 
;JJ 
switchKK 
(KK 
resultKK 
.KK 
resultStatusKK +
)KK+ ,
{LL 
caseMM 
TestRunnerResultMM )
.MM) *
ResultStatusMM* 6
.MM6 7
PassedMM7 =
:MM= >
m_PassedCountNN %
++NN% '
;NN' (
breakOO 
;OO 
casePP 
TestRunnerResultPP )
.PP) *
ResultStatusPP* 6
.PP6 7
FailedPP7 =
:PP= >
m_FailedCountQQ %
++QQ% '
;QQ' (
breakRR 
;RR 
caseSS 
TestRunnerResultSS )
.SS) *
ResultStatusSS* 6
.SS6 7
InconclusiveSS7 C
:SSC D
m_InconclusiveCountTT +
++TT+ -
;TT- .
breakUU 
;UU 
caseVV 
TestRunnerResultVV )
.VV) *
ResultStatusVV* 6
.VV6 7
SkippedVV7 >
:VV> ?
m_SkippedCountWW &
++WW& (
;WW( )
breakXX 
;XX 
caseYY 
TestRunnerResultYY )
.YY) *
ResultStatusYY* 6
.YY6 7
NotRunYY7 =
:YY= >
defaultZZ 
:ZZ 
m_NotRunCount[[ %
++[[% '
;[[' (
break\\ 
;\\ 
}]] 
}^^ 
var`` 
succeededTooltip``  
=``! "
string``# )
.``) *
Format``* 0
(``0 1
$str``1 [
,``[ \
m_PassedCount``] j
)``j k
;``k l
m_SucceededBtnaa 
=aa 
newaa  

GUIContentaa! +
(aa+ ,
PassedCountaa, 7
.aa7 8
ToStringaa8 @
(aa@ A
)aaA B
,aaB C
IconsaaD I
.aaI J
s_SuccessImgaaJ V
,aaV W
succeededTooltipaaX h
)aah i
;aai j
varbb 
failedTooltipbb 
=bb 
stringbb  &
.bb& '
Formatbb' -
(bb- .
$strbb. d
,bbd e
m_FailedCountbbf s
,bbs t 
m_InconclusiveCount	bbu à
)
bbà â
;
bbâ ä
m_FailedBtncc 
=cc 
newcc 

GUIContentcc (
(cc( )
FailedCountcc) 4
.cc4 5
ToStringcc5 =
(cc= >
)cc> ?
,cc? @
IconsccA F
.ccF G
	s_FailImgccG P
,ccP Q
failedTooltipccR _
)cc_ `
;cc` a
vardd 
notRunTooltipdd 
=dd 
stringdd  &
.dd& '
Formatdd' -
(dd- .
$strdd. r
,ddr s
m_NotRunCount	ddt Å
,
ddÅ Ç
m_SkippedCount
ddÉ ë
)
ddë í
;
ddí ì
m_NotRunBtnee 
=ee 
newee 

GUIContentee (
(ee( )
NotRunCountee) 4
.ee4 5
ToStringee5 =
(ee= >
)ee> ?
,ee? @
IconseeA F
.eeF G
s_UnknownImgeeG S
,eeS T
notRunTooltipeeU b
)eeb c
;eec d
}ff 	
publichh 
voidhh 
Drawhh 
(hh 
)hh 
{ii 	
	EditorGUIjj 
.jj 
BeginChangeCheckjj &
(jj& '
)jj' (
;jj( )
ifkk 
(kk 
m_SearchStringkk 
==kk !
nullkk" &
)kk& '
{ll 
m_SearchStringmm 
=mm  
$strmm! #
;mm# $
}nn 
m_SearchStringoo 
=oo 
EditorGUILayoutoo ,
.oo, -
ToolbarSearchFieldoo- ?
(oo? @
m_SearchStringoo@ N
)ooN O
;ooO P
ifpp 
(pp 
	EditorGUIpp 
.pp 
EndChangeCheckpp (
(pp( )
)pp) *
&&pp+ -
SearchStringChangedpp. A
!=ppB D
nullppE I
)ppI J
{qq 
SearchStringChangedrr #
(rr# $
m_SearchStringrr$ 2
)rr2 3
;rr3 4
ifss 
(ss 
Stringss 
.ss 
IsNullOrEmptyss (
(ss( )
m_SearchStringss) 7
)ss7 8
)ss8 9
SearchStringClearedtt '
(tt' (
)tt( )
;tt) *
}uu 
ifww 
(ww 
availableCategoriesww #
!=ww$ &
nullww' +
&&ww, .
availableCategoriesww/ B
.wwB C
AnywwC F
(wwF G
)wwG H
)wwH I
{xx 
	EditorGUIyy 
.yy 
BeginChangeCheckyy *
(yy* +
)yy+ ,
;yy, - 
selectedCategoryMaskzz $
=zz% &
EditorGUILayoutzz' 6
.zz6 7
	MaskFieldzz7 @
(zz@ A 
selectedCategoryMaskzzA U
,zzU V
availableCategorieszzW j
,zzj k
EditorStyleszzl x
.zzx y
toolbarDropDown	zzy à
,
zzà â
	GUILayout
zzä ì
.
zzì î
MaxWidth
zzî ú
(
zzú ù
$num
zzù †
)
zz† °
)
zz° ¢
;
zz¢ £
if{{ 
({{ 
	EditorGUI{{ 
.{{ 
EndChangeCheck{{ ,
({{, -
){{- .
&&{{/ 1
RebuildTestList{{2 A
!={{B D
null{{E I
){{I J
{|| 
RebuildTestList}} #
(}}# $
)}}$ %
;}}% &
}~~ 
} 
else
ÄÄ 
{
ÅÅ 
EditorGUILayout
ÇÇ 
.
ÇÇ  
Popup
ÇÇ  %
(
ÇÇ% &
$num
ÇÇ& '
,
ÇÇ' (
new
ÇÇ) ,
[
ÇÇ, -
]
ÇÇ- .
{
ÇÇ/ 0
$str
ÇÇ1 L
}
ÇÇM N
,
ÇÇN O
EditorStyles
ÇÇP \
.
ÇÇ\ ]
toolbarDropDown
ÇÇ] l
,
ÇÇl m
	GUILayout
ÇÇn w
.
ÇÇw x
MaxWidthÇÇx Ä
(ÇÇÄ Å
$numÇÇÅ Ñ
)ÇÇÑ Ö
)ÇÇÖ Ü
;ÇÇÜ á
}
ÉÉ 
	EditorGUI
ÖÖ 
.
ÖÖ 
BeginChangeCheck
ÖÖ &
(
ÖÖ& '
)
ÖÖ' (
;
ÖÖ( )
if
ÜÜ 
(
ÜÜ 
m_SucceededBtn
ÜÜ 
!=
ÜÜ !
null
ÜÜ" &
)
ÜÜ& '
{
áá 
PassedHidden
àà 
=
àà 
!
àà  
	GUILayout
àà  )
.
àà) *
Toggle
àà* 0
(
àà0 1
!
àà1 2
PassedHidden
àà2 >
,
àà> ?
m_SucceededBtn
àà@ N
,
ààN O
EditorStyles
ààP \
.
àà\ ]
toolbarButton
àà] j
,
ààj k
	GUILayout
ààl u
.
ààu v
MaxWidth
ààv ~
(
àà~ 
GetMaxWidthàà ä
(ààä ã
PassedCountààã ñ
)ààñ ó
)ààó ò
)ààò ô
;ààô ö
}
ââ 
if
ää 
(
ää 
m_FailedBtn
ää 
!=
ää 
null
ää #
)
ää# $
{
ãã 
FailedHidden
åå 
=
åå 
!
åå  
	GUILayout
åå  )
.
åå) *
Toggle
åå* 0
(
åå0 1
!
åå1 2
FailedHidden
åå2 >
,
åå> ?
m_FailedBtn
åå@ K
,
ååK L
EditorStyles
ååM Y
.
ååY Z
toolbarButton
ååZ g
,
ååg h
	GUILayout
ååi r
.
åår s
MaxWidth
åås {
(
åå{ |
GetMaxWidthåå| á
(ååá à
FailedCountååà ì
)ååì î
)ååî ï
)ååï ñ
;ååñ ó
}
çç 
if
éé 
(
éé 
m_NotRunBtn
éé 
!=
éé 
null
éé #
)
éé# $
{
èè 
NotRunHidden
êê 
=
êê 
!
êê  
	GUILayout
êê  )
.
êê) *
Toggle
êê* 0
(
êê0 1
!
êê1 2
NotRunHidden
êê2 >
,
êê> ?
m_NotRunBtn
êê@ K
,
êêK L
EditorStyles
êêM Y
.
êêY Z
toolbarButton
êêZ g
,
êêg h
	GUILayout
êêi r
.
êêr s
MaxWidth
êês {
(
êê{ |
GetMaxWidthêê| á
(êêá à
NotRunCountêêà ì
)êêì î
)êêî ï
)êêï ñ
;êêñ ó
}
ëë 
if
ìì 
(
ìì 
	EditorGUI
ìì 
.
ìì 
EndChangeCheck
ìì (
(
ìì( )
)
ìì) *
&&
ìì+ -
RebuildTestList
ìì. =
!=
ìì> @
null
ììA E
)
ììE F
{
îî 
RebuildTestList
ïï 
(
ïï  
)
ïï  !
;
ïï! "
}
ññ 
}
óó 	
private
ôô 
static
ôô 
int
ôô 
GetMaxWidth
ôô &
(
ôô& '
int
ôô' *
count
ôô+ 0
)
ôô0 1
{
öö 	
if
õõ 
(
õõ 
count
õõ 
<
õõ 
$num
õõ 
)
õõ 
return
úú 
$num
úú 
;
úú 
return
ùù 
count
ùù 
<
ùù 
$num
ùù 
?
ùù  
$num
ùù! #
:
ùù$ %
$num
ùù& (
;
ùù( )
}
ûû 	
public
†† 
void
†† 
Clear
†† 
(
†† 
)
†† 
{
°° 	
PassedHidden
¢¢ 
=
¢¢ 
false
¢¢  
;
¢¢  !
FailedHidden
££ 
=
££ 
false
££  
;
££  !
NotRunHidden
§§ 
=
§§ 
false
§§  
;
§§  !"
selectedCategoryMask
••  
=
••! "
$num
••# $
;
••$ %
m_SearchString
¶¶ 
=
¶¶ 
$str
¶¶ 
;
¶¶  
if
ßß 
(
ßß !
SearchStringChanged
ßß #
!=
ßß$ &
null
ßß' +
)
ßß+ ,
{
®® !
SearchStringChanged
©© #
(
©©# $
m_SearchString
©©$ 2
)
©©2 3
;
©©3 4
}
™™ 
if
´´ 
(
´´ !
SearchStringCleared
´´ #
!=
´´$ &
null
´´' +
)
´´+ ,
{
¨¨ !
SearchStringCleared
≠≠ #
(
≠≠# $
)
≠≠$ %
;
≠≠% &
}
ÆÆ 
}
ØØ 	
}
∞∞ 
}±± ‚
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\TestListProvider.cs
	namespace 	
UnityEditor
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
 
TestListProvider

 #
:

$ %
ITestListProvider

& 7
{ 
private 
readonly ,
 EditorLoadedTestAssemblyProvider 9
m_AssemblyProvider: L
;L M
private 
readonly $
UnityTestAssemblyBuilder 1
m_AssemblyBuilder2 C
;C D
public 
TestListProvider 
(  ,
 EditorLoadedTestAssemblyProvider  @
assemblyProviderA Q
,Q R$
UnityTestAssemblyBuilderS k
assemblyBuilderl {
){ |
{ 	
m_AssemblyProvider 
=  
assemblyProvider! 1
;1 2
m_AssemblyBuilder 
= 
assemblyBuilder  /
;/ 0
} 	
public 
IEnumerator 
< 
ITest  
>  !
GetTestListAsync" 2
(2 3
TestPlatform3 ?
platform@ H
)H I
{ 	
var 
assembliesTask 
=  
m_AssemblyProvider! 3
.3 4+
GetAssembliesGroupedByTypeAsync4 S
(S T
platformT \
)\ ]
;] ^
while 
( 
assembliesTask !
.! "
MoveNext" *
(* +
)+ ,
), -
{ 
yield 
return 
null !
;! "
} 
var 

assemblies 
= 
assembliesTask +
.+ ,
Current, 3
.3 4
Where4 9
(9 :
pair: >
=>? A
platformB J
.J K
IsFlagIncludedK Y
(Y Z
pairZ ^
.^ _
Key_ b
)b c
)c d
. 

SelectMany 
( 
pair  
=>! #
pair$ (
.( )
Value) .
.. /
Select/ 5
(5 6
assemblyInfo6 B
=>C E
TupleF K
.K L
CreateL R
(R S
assemblyInfoS _
._ `
Assembly` h
,h i
pairj n
.n o
Keyo r
)r s
)s t
)t u
.u v
ToArrayv }
(} ~
)~ 
;	 Ä
var   
settings   
=   $
UnityTestAssemblyBuilder   3
.  3 4'
GetNUnitTestBuilderSettings  4 O
(  O P
platform  P X
)  X Y
;  Y Z
var!! 
test!! 
=!! 
m_AssemblyBuilder!! )
.!!) *

BuildAsync!!* 4
(!!4 5

assemblies!!5 ?
.!!? @
Select!!@ F
(!!F G
a!!G H
=>!!I K
a!!L M
.!!M N
Item1!!N S
)!!S T
.!!T U
ToArray!!U \
(!!\ ]
)!!] ^
,!!^ _

assemblies!!` j
.!!j k
Select!!k q
(!!q r
a!!r s
=>!!t v
a!!w x
.!!x y
Item2!!y ~
)!!~ 
.	!! Ä
ToArray
!!Ä á
(
!!á à
)
!!à â
,
!!â ä
settings
!!ã ì
)
!!ì î
;
!!î ï
while"" 
("" 
test"" 
."" 
MoveNext""  
(""  !
)""! "
)""" #
{## 
yield$$ 
return$$ 
null$$ !
;$$! "
}%% 
yield'' 
return'' 
test'' 
.'' 
Current'' %
;''% &
}(( 	
})) 
}** ∂
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineParser\CommandLineOptionSet.cs
	namespace 	
UnityEditor
 
. 

TestRunner  
.  !
CommandLineParser! 2
{ 
internal 
class  
CommandLineOptionSet '
{ 
ICommandLineOption 
[ 
] 
	m_Options &
;& '
public		  
CommandLineOptionSet		 #
(		# $
params		$ *
ICommandLineOption		+ =
[		= >
]		> ?
options		@ G
)		G H
{

 	
	m_Options 
= 
options 
;  
} 	
public 
void 
Parse 
( 
string  
[  !
]! "
args# '
)' (
{ 	
var 
i 
= 
$num 
; 
while 
( 
i 
< 
args 
. 
Length "
)" #
{ 
var 
arg 
= 
args 
[ 
i  
]  !
;! "
if 
( 
! 
arg 
. 

StartsWith #
(# $
$str$ '
)' (
)( )
{ 
i 
++ 
; 
continue 
; 
} 
string 
value 
= 
null #
;# $
if 
( 
i 
+ 
$num 
< 
args  
.  !
Length! '
&&( *
!+ ,
args, 0
[0 1
i1 2
+3 4
$num5 6
]6 7
.7 8

StartsWith8 B
(B C
$strC F
)F G
)G H
{ 
value 
= 
args  
[  !
i! "
+# $
$num% &
]& '
;' (
i 
++ 
; 
} '
ApplyValueToMatchingOptions!! +
(!!+ ,
arg!!, /
,!!/ 0
value!!1 6
)!!6 7
;!!7 8
i"" 
++"" 
;"" 
}## 
}$$ 	
private&& 
void&& '
ApplyValueToMatchingOptions&& 0
(&&0 1
string&&1 7
argName&&8 ?
,&&? @
string&&A G
value&&H M
)&&M N
{'' 	
foreach(( 
((( 
var(( 
option(( 
in((  "
	m_Options((# ,
)((, -
{)) 
if** 
(** 
$str** 
+** 
option**  
.**  !
ArgName**! (
==**) +
argName**, 3
)**3 4
{++ 
option,, 
.,, 

ApplyValue,, %
(,,% &
value,,& +
),,+ ,
;,,, -
}-- 
}.. 
}// 	
}00 
}11 Ë
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\RunState.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public 

enum 
RunState 
{ 
NotRunnable 
, 
Runnable 
, 
Explicit 
, 
Skipped 
, 
Ignored 
, 
}   
}!! ≈
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestSettings\ITestSettingsDeserializer.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
	interface %
ITestSettingsDeserializer '
{ 
ITestSettings #
GetSettingsFromJsonFile -
(- .
string. 4
jsonFilePath5 A
)A B
;B C
} 
} √
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\ITestRunnerApiMapper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
	interface  
ITestRunnerApiMapper "
{ 
string )
GetRunStateFromResultNunitXml ,
(, -
ITestResultAdaptor- ?
result@ F
)F G
;G H
	TestState		 "
GetTestStateFromResult		 (
(		( )
ITestResultAdaptor		) ;
result		< B
)		B C
;		C D
List

 
<

 
string

 
>

 
FlattenTestNames

 %
(

% &
ITestAdaptor

& 2

testsToRun

3 =
)

= >
;

> ?
TestPlanMessage $
MapTestToTestPlanMessage 0
(0 1
ITestAdaptor1 =

testsToRun> H
)H I
;I J
TestStartedMessage '
MapTestToTestStartedMessage 6
(6 7
ITestAdaptor7 C
testD H
)H I
;I J
TestFinishedMessage +
TestResultToTestFinishedMessage ;
(; <
ITestResultAdaptor< N
resultO U
)U V
;V W
} 
} Ë
øD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\StadiaPlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
StadiaPlatformSetup &
:' (
IPlatformSetup) 7
{ 
public 
void 
Setup 
( 
) 
{ 	
} 	
public		 
void		 
PostBuildAction		 #
(		# $
)		$ %
{

 	
} 	
public 
void %
PostSuccessfulBuildAction -
(- .
). /
{ 	
} 	
public 
void &
PostSuccessfulLaunchAction .
(. /
)/ 0
{ 	
} 	
public 
void 
CleanUp 
( 
) 
{ 	
} 	
} 
} ≈
¬D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\NUnitExtension\Attributes\ITestPlayerBuildModifier.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
{ 
public 

	interface $
ITestPlayerBuildModifier -
{ 
BuildPlayerOptions 
ModifyOptions (
(( )
BuildPlayerOptions) ;
playerOptions< I
)I J
;J K
} 
} ö\
¶D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\CallbacksDelegator.cs
	namespace		 	
UnityEditor		
 
.		 
	TestTools		 
.		  

TestRunner		  *
.		* +
Api		+ .
{

 
internal 
class 
CallbacksDelegator %
:& '
ICallbacksDelegator( ;
{ 
private 
static 
CallbacksDelegator )

s_instance* 4
;4 5
public 
static 
CallbacksDelegator (
instance) 1
{ 	
get 
{ 
if 
( 

s_instance 
== !
null" &
)& '
{ 

s_instance 
=  
new! $
CallbacksDelegator% 7
(7 8
CallbacksHolder8 G
.G H
instanceH P
.P Q
GetAllQ W
,W X
newY \
TestAdaptorFactory] o
(o p
)p q
)q r
;r s
} 
return 

s_instance !
;! "
} 
} 	
private 
readonly 
Func 
< 

ICallbacks (
[( )
]) *
>* +
m_CallbacksProvider, ?
;? @
private 
readonly 
ITestAdaptorFactory ,
m_AdaptorFactory- =
;= >
public 
CallbacksDelegator !
(! "
Func" &
<& '

ICallbacks' 1
[1 2
]2 3
>3 4
callbacksProvider5 F
,F G
ITestAdaptorFactoryH [
adaptorFactory\ j
)j k
{ 	
m_CallbacksProvider 
=  !
callbacksProvider" 3
;3 4
m_AdaptorFactory   
=   
adaptorFactory   -
;  - .
}!! 	
public## 
void## 

RunStarted## 
(## 
ITest## $

testsToRun##% /
)##/ 0
{$$ 	
m_AdaptorFactory%% 
.%% 
ClearResultsCache%% .
(%%. /
)%%/ 0
;%%0 1
var&&  
testRunnerTestsToRun&& $
=&&% &
m_AdaptorFactory&&' 7
.&&7 8
Create&&8 >
(&&> ?

testsToRun&&? I
)&&I J
;&&J K!
TryInvokeAllCallbacks'' !
(''! "
	callbacks''" +
=>'', .
	callbacks''/ 8
.''8 9

RunStarted''9 C
(''C D 
testRunnerTestsToRun''D X
)''X Y
)''Y Z
;''Z [
}(( 	
public** 
void** 
RunStartedRemotely** &
(**& '
byte**' +
[**+ ,
]**, -
testsToRunData**. <
)**< =
{++ 	
var,, 
testData,, 
=,, 
Deserialize,, &
<,,& ',
 RemoteTestResultDataWithTestData,,' G
>,,G H
(,,H I
testsToRunData,,I W
),,W X
;,,X Y
var-- 

testsToRun-- 
=-- 
m_AdaptorFactory-- -
.--- .
	BuildTree--. 7
(--7 8
testData--8 @
)--@ A
;--A B!
TryInvokeAllCallbacks.. !
(..! "
	callbacks.." +
=>.., .
	callbacks../ 8
...8 9

RunStarted..9 C
(..C D

testsToRun..D N
)..N O
)..O P
;..P Q
}// 	
public11 
void11 
RunFinished11 
(11  
ITestResult11  +
testResults11, 7
)117 8
{22 	
var33 

testResult33 
=33 
m_AdaptorFactory33 -
.33- .
Create33. 4
(334 5
testResults335 @
)33@ A
;33A B!
TryInvokeAllCallbacks44 !
(44! "
	callbacks44" +
=>44, .
	callbacks44/ 8
.448 9
RunFinished449 D
(44D E

testResult44E O
)44O P
)44P Q
;44Q R
}55 	
public77 
void77 
RunFinishedRemotely77 '
(77' (
byte77( ,
[77, -
]77- .
testResultsData77/ >
)77> ?
{88 	
var99 
remoteTestResult99  
=99! "
Deserialize99# .
<99. /,
 RemoteTestResultDataWithTestData99/ O
>99O P
(99P Q
testResultsData99Q `
)99` a
;99a b
var:: 

testResult:: 
=:: 
m_AdaptorFactory:: -
.::- .
Create::. 4
(::4 5
remoteTestResult::5 E
.::E F
results::F M
.::M N
First::N S
(::S T
)::T U
,::U V
remoteTestResult::W g
)::g h
;::h i!
TryInvokeAllCallbacks;; !
(;;! "
	callbacks;;" +
=>;;, .
	callbacks;;/ 8
.;;8 9
RunFinished;;9 D
(;;D E

testResult;;E O
);;O P
);;P Q
;;;Q R
}<< 	
public>> 
void>> 
	RunFailed>> 
(>> 
string>> $
failureMessage>>% 3
)>>3 4
{?? 	
Debug@@ 
.@@ 
LogError@@ 
(@@ 
failureMessage@@ )
)@@) *
;@@* +!
TryInvokeAllCallbacksAA !
(AA! "
	callbacksAA" +
=>AA, .
{BB 
varCC 
errorCallbackCC !
=CC" #
	callbacksCC$ -
asCC. 0
IErrorCallbacksCC1 @
;CC@ A
ifDD 
(DD 
errorCallbackDD !
!=DD" $
nullDD% )
)DD) *
{EE 
errorCallbackFF !
.FF! "
OnErrorFF" )
(FF) *
failureMessageFF* 8
)FF8 9
;FF9 :
}GG 
}HH 
)HH 
;HH 
}II 	
publicKK 
voidKK 
TestStartedKK 
(KK  
ITestKK  %
testKK& *
)KK* +
{LL 	
varMM 
testRunnerTestMM 
=MM  
m_AdaptorFactoryMM! 1
.MM1 2
CreateMM2 8
(MM8 9
testMM9 =
)MM= >
;MM> ?!
TryInvokeAllCallbacksNN !
(NN! "
	callbacksNN" +
=>NN, .
	callbacksNN/ 8
.NN8 9
TestStartedNN9 D
(NND E
testRunnerTestNNE S
)NNS T
)NNT U
;NNU V
}OO 	
publicQQ 
voidQQ 
TestStartedRemotelyQQ '
(QQ' (
byteQQ( ,
[QQ, -
]QQ- .
testStartedDataQQ/ >
)QQ> ?
{RR 	
varSS 
testDataSS 
=SS 
DeserializeSS &
<SS& ',
 RemoteTestResultDataWithTestDataSS' G
>SSG H
(SSH I
testStartedDataSSI X
)SSX Y
;SSY Z
varTT 

testsToRunTT 
=TT 
m_AdaptorFactoryTT -
.TT- .
	BuildTreeTT. 7
(TT7 8
testDataTT8 @
)TT@ A
;TTA B!
TryInvokeAllCallbacksVV !
(VV! "
	callbacksVV" +
=>VV, .
	callbacksVV/ 8
.VV8 9
TestStartedVV9 D
(VVD E

testsToRunVVE O
)VVO P
)VVP Q
;VVQ R
}WW 	
publicYY 
voidYY 
TestFinishedYY  
(YY  !
ITestResultYY! ,
resultYY- 3
)YY3 4
{ZZ 	
var[[ 

testResult[[ 
=[[ 
m_AdaptorFactory[[ -
.[[- .
Create[[. 4
([[4 5
result[[5 ;
)[[; <
;[[< =!
TryInvokeAllCallbacks\\ !
(\\! "
	callbacks\\" +
=>\\, .
	callbacks\\/ 8
.\\8 9
TestFinished\\9 E
(\\E F

testResult\\F P
)\\P Q
)\\Q R
;\\R S
}]] 	
public__ 
void__  
TestFinishedRemotely__ (
(__( )
byte__) -
[__- .
]__. /
testResultsData__0 ?
)__? @
{`` 	
varaa 
remoteTestResultaa  
=aa! "
Deserializeaa# .
<aa. /,
 RemoteTestResultDataWithTestDataaa/ O
>aaO P
(aaP Q
testResultsDataaaQ `
)aa` a
;aaa b
varbb 

testResultbb 
=bb 
m_AdaptorFactorybb -
.bb- .
Createbb. 4
(bb4 5
remoteTestResultbb5 E
.bbE F
resultsbbF M
.bbM N
FirstbbN S
(bbS T
)bbT U
,bbU V
remoteTestResultbbW g
)bbg h
;bbh i!
TryInvokeAllCallbackscc !
(cc! "
	callbackscc" +
=>cc, .
	callbackscc/ 8
.cc8 9
TestFinishedcc9 E
(ccE F

testResultccF P
)ccP Q
)ccQ R
;ccR S
}dd 	
publicff 
voidff 
TestTreeRebuildff #
(ff# $
ITestff$ )
testff* .
)ff. /
{gg 	
m_AdaptorFactoryhh 
.hh 
ClearTestsCachehh ,
(hh, -
)hh- .
;hh. /
varii 
testAdaptorii 
=ii 
m_AdaptorFactoryii .
.ii. /
Createii/ 5
(ii5 6
testii6 :
)ii: ;
;ii; <!
TryInvokeAllCallbacksjj !
(jj! "
	callbacksjj" +
=>jj, .
{kk 
varll 
rebuildCallbacksll $
=ll% &
	callbacksll' 0
asll1 3%
ITestTreeRebuildCallbacksll4 M
;llM N
ifmm 
(mm 
rebuildCallbacksmm $
!=mm% '
nullmm( ,
)mm, -
{nn 
rebuildCallbacksoo $
.oo$ %
TestTreeRebuildoo% 4
(oo4 5
testAdaptoroo5 @
)oo@ A
;ooA B
}pp 
}qq 
)qq 
;qq 
}rr 	
privatett 
voidtt !
TryInvokeAllCallbackstt *
(tt* +
Actiontt+ 1
<tt1 2

ICallbackstt2 <
>tt< =
callbackActiontt> L
)ttL M
{uu 	
foreachvv 
(vv 
varvv !
testRunnerApiCallbackvv .
invv/ 1
m_CallbacksProvidervv2 E
(vvE F
)vvF G
)vvG H
{ww 
tryxx 
{yy 
callbackActionzz "
(zz" #!
testRunnerApiCallbackzz# 8
)zz8 9
;zz9 :
}{{ 
catch|| 
(|| 
	Exception||  
ex||! #
)||# $
{}} 
Debug~~ 
.~~ 
LogException~~ &
(~~& '
ex~~' )
)~~) *
;~~* +
} 
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
static
ÉÉ 
T
ÉÉ 
Deserialize
ÉÉ $
<
ÉÉ$ %
T
ÉÉ% &
>
ÉÉ& '
(
ÉÉ' (
byte
ÉÉ( ,
[
ÉÉ, -
]
ÉÉ- .
data
ÉÉ/ 3
)
ÉÉ3 4
{
ÑÑ 	
return
ÖÖ 
JsonUtility
ÖÖ 
.
ÖÖ 
FromJson
ÖÖ '
<
ÖÖ' (
T
ÖÖ( )
>
ÖÖ) *
(
ÖÖ* +
Encoding
ÖÖ+ 3
.
ÖÖ3 4
UTF8
ÖÖ4 8
.
ÖÖ8 9
	GetString
ÖÖ9 B
(
ÖÖB C
data
ÖÖC G
)
ÖÖG H
)
ÖÖH I
;
ÖÖI J
}
ÜÜ 	
}
áá 
}àà Ò
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\IGuiHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
	interface 

IGuiHelper !
{ 
bool &
OpenScriptInExternalEditor '
(' (
string( .

stacktrace/ 9
)9 :
;: ;
void		 &
OpenScriptInExternalEditor		 '
(		' (
Type		( ,
type		- 1
,		1 2

MethodInfo		3 =
method		> D
)		D E
;		E F
IFileOpenInfo

 
GetFileOpenInfo

 %
(

% &
Type

& *
type

+ /
,

/ 0

MethodInfo

1 ;
method

< B
)

B C
;

C D
string .
"FilePathToAssetsRelativeAndUnified 1
(1 2
string2 8
filePath9 A
)A B
;B C
} 
} ú
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\UtpMessageReporter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class 
UtpMessageReporter %
:& '
IUtpMessageReporter( ;
{		 
public

  
ITestRunnerApiMapper

 #
TestRunnerApiMapper

$ 7
;

7 8
public 

IUtpLogger 
Logger  
;  !
public 
UtpMessageReporter !
(! "

IUtpLogger" ,
	utpLogger- 6
)6 7
{ 	
TestRunnerApiMapper 
=  !
new" %
TestRunnerApiMapper& 9
(9 :
): ;
;; <
Logger 
= 
	utpLogger 
; 
} 	
public 
void +
ReportAssemblyCompilationErrors 3
(3 4
string4 :
assembly; C
,C D
IEnumerableE P
<P Q
CompilerMessageQ `
>` a!
errorCompilerMessagesb w
)w x
{ 	
var #
compilationErrorMessage '
=( )
new* -,
 AssemblyCompilationErrorsMessage. N
{ 
assembly 
= 
assembly #
,# $
errors 
= !
errorCompilerMessages .
.. /
Select/ 5
(5 6
x6 7
=>8 :
x; <
.< =
message= D
)D E
.E F
ToArrayF M
(M N
)N O
} 
; 
Logger 
. 
Log 
( #
compilationErrorMessage .
). /
;/ 0
} 	
public 
void  
ReportTestRunStarted (
(( )
ITestAdaptor) 5

testsToRun6 @
)@ A
{ 	
var   
msg   
=   
TestRunnerApiMapper   )
.  ) *$
MapTestToTestPlanMessage  * B
(  B C

testsToRun  C M
)  M N
;  N O
Logger"" 
."" 
Log"" 
("" 
msg"" 
)"" 
;"" 
}## 	
public%% 
void%% 
ReportTestStarted%% %
(%%% &
ITestAdaptor%%& 2
test%%3 7
)%%7 8
{&& 	
if'' 
('' 
test'' 
.'' 
IsSuite'' 
)'' 
return(( 
;(( 
var** 
msg** 
=** 
TestRunnerApiMapper** )
.**) *'
MapTestToTestStartedMessage*** E
(**E F
test**F J
)**J K
;**K L
Logger,, 
.,, 
Log,, 
(,, 
msg,, 
),, 
;,, 
}-- 	
public// 
void// 
ReportTestFinished// &
(//& '
ITestResultAdaptor//' 9
result//: @
)//@ A
{00 	
if11 
(11 
result11 
.11 
Test11 
.11 
IsSuite11 #
)11# $
return22 
;22 
var44 
msg44 
=44 
TestRunnerApiMapper44 )
.44) *+
TestResultToTestFinishedMessage44* I
(44I J
result44J P
)44P Q
;44Q R
Logger66 
.66 
Log66 
(66 
msg66 
)66 
;66 
}77 	
}88 
}99 ÷
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\ResultsSavingCallbacks.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
[		 
Serializable		 
]		 
internal

 
class

 "
ResultsSavingCallbacks

 )
:

* +
ScriptableObject

, <
,

< =

ICallbacks

> H
{ 
[ 	
SerializeField	 
] 
public 
string 
m_ResultFilePath &
;& '
public "
ResultsSavingCallbacks %
(% &
)& '
{ 	
this 
. 
m_ResultFilePath !
=" #$
GetDefaultResultFilePath$ <
(< =
)= >
;> ?
} 	
public 
void 

RunStarted 
( 
ITestAdaptor +

testsToRun, 6
)6 7
{ 	
} 	
public 
virtual 
void 
RunFinished '
(' (
ITestResultAdaptor( :
testResults; F
)F G
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
m_ResultFilePath% 5
)5 6
)6 7
{ 
m_ResultFilePath  
=! "$
GetDefaultResultFilePath# ;
(; <
)< =
;= >
} 
var 
resultWriter 
= 
new "
ResultsWriter# 0
(0 1
)1 2
;2 3
resultWriter   
.   
WriteResultToFile   *
(  * +
testResults  + 6
,  6 7
m_ResultFilePath  8 H
)  H I
;  I J
}!! 	
public## 
void## 
TestStarted## 
(##  
ITestAdaptor##  ,
test##- 1
)##1 2
{$$ 	
}%% 	
public'' 
void'' 
TestFinished''  
(''  !
ITestResultAdaptor''! 3
result''4 :
)'': ;
{(( 	
})) 	
private++ 
static++ 
string++ $
GetDefaultResultFilePath++ 6
(++6 7
)++7 8
{,, 	
var-- 
fileName-- 
=-- 
$str-- )
+--* +
DateTime--, 4
.--4 5
Now--5 8
.--8 9
Ticks--9 >
+--? @
$str--A G
;--G H
var.. 
projectPath.. 
=.. 
	Directory.. '
...' (
GetCurrentDirectory..( ;
(..; <
)..< =
;..= >
return// 
Paths// 
.// 
Combine//  
(//  !
projectPath//! ,
,//, -
fileName//. 6
)//6 7
;//7 8
}00 	
}11 
}22 ‰*
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\BuildTestTreeTask.cs
	namespace		 	
UnityEditor		
 
.		 
	TestTools		 
.		  

TestRunner		  *
.		* +
TestRun		+ 2
.		2 3
Tasks		3 8
{

 
internal 
class 
BuildTestTreeTask $
:% &
TestTaskBase' 3
{ 
private 
TestPlatform 
m_TestPlatform +
;+ ,
public 
BuildTestTreeTask  
(  !
TestPlatform! -
testPlatform. :
): ;
{ 	
m_TestPlatform 
= 
testPlatform )
;) *
} 	
internal -
!IEditorLoadedTestAssemblyProvider 2"
m_testAssemblyProvider3 I
=J K
newL O,
 EditorLoadedTestAssemblyProviderP p
(p q
newq t,
EditorCompilationInterfaceProxy	u î
(
î ï
)
ï ñ
,
ñ ó
new
ò õ#
EditorAssembliesProxy
ú ±
(
± ≤
)
≤ ≥
)
≥ ¥
;
¥ µ
internal %
IAsyncTestAssemblyBuilder *!
m_testAssemblyBuilder+ @
=A B
newC F$
UnityTestAssemblyBuilderG _
(_ `
)` a
;a b
internal 
ICallbacksDelegator $ 
m_CallbacksDelegator% 9
=: ;
CallbacksDelegator< N
.N O
instanceO W
;W X
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
if 
( 
testJobData 
. 
testTree $
!=% '
null( ,
), -
{ 
yield 
break 
; 
} 
var  
assembliesEnumerator $
=% &"
m_testAssemblyProvider' =
.= >+
GetAssembliesGroupedByTypeAsync> ]
(] ^
m_TestPlatform^ l
)l m
;m n
while   
(    
assembliesEnumerator   '
.  ' (
MoveNext  ( 0
(  0 1
)  1 2
)  2 3
{!! 
yield"" 
return"" 
null"" !
;""! "
}## 
if%% 
(%%  
assembliesEnumerator%% $
.%%$ %
Current%%% ,
==%%- /
null%%0 4
)%%4 5
{&& 
throw'' 
new'' 
	Exception'' #
(''# $
$str''$ ?
)''? @
;''@ A
}(( 
var** 

assemblies** 
=**  
assembliesEnumerator** 1
.**1 2
Current**2 9
.**9 :
Where**: ?
(**? @
pair**@ D
=>**E G
m_TestPlatform**H V
.**V W
IsFlagIncluded**W e
(**e f
pair**f j
.**j k
Key**k n
)**n o
)**o p
.**p q

SelectMany**q {
(**{ |
pair	**| Ä
=>
**Å É
pair
**Ñ à
.
**à â
Value
**â é
)
**é è
.
**è ê
Select
**ê ñ
(
**ñ ó
x
**ó ò
=>
**ô õ
x
**ú ù
.
**ù û
Assembly
**û ¶
)
**¶ ß
.
**ß ®
ToArray
**® Ø
(
**Ø ∞
)
**∞ ±
;
**± ≤
var++ 
buildSettings++ 
=++ $
UnityTestAssemblyBuilder++  8
.++8 9'
GetNUnitTestBuilderSettings++9 T
(++T U
m_TestPlatform++U c
)++c d
;++d e
var,, 

enumerator,, 
=,, !
m_testAssemblyBuilder,, 2
.,,2 3

BuildAsync,,3 =
(,,= >

assemblies,,> H
,,,H I

Enumerable,,J T
.,,T U
Repeat,,U [
(,,[ \
m_TestPlatform,,\ j
,,,j k

assemblies,,l v
.,,v w
Length,,w }
),,} ~
.,,~ 
ToArray	,, Ü
(
,,Ü á
)
,,á à
,
,,à â
buildSettings
,,ä ó
)
,,ó ò
;
,,ò ô
while-- 
(-- 

enumerator-- 
.-- 
MoveNext-- &
(--& '
)--' (
)--( )
{.. 
yield// 
return// 
null// !
;//! "
}00 
var22 
testList22 
=22 

enumerator22 %
.22% &
Current22& -
;22- .
if33 
(33 
testList33 
==33 
null33 
)33  
{44 
throw55 
new55 
	Exception55 #
(55# $
$str55$ >
)55> ?
;55? @
}66 
testList88 
.88 "
ParseForNameDuplicates88 +
(88+ ,
)88, -
;88- .
testJobData99 
.99 
testTree99  
=99! "
testList99# +
;99+ , 
m_CallbacksDelegator::  
.::  !
TestTreeRebuild::! 0
(::0 1
testList::1 9
)::9 :
;::: ;
};; 	
}<< 
}== Ò
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\LegacyPlayerRunTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class 
LegacyPlayerRunTask &
:' (
TestTaskBase) 5
{ 
public		 
override		 
IEnumerator		 #
Execute		$ +
(		+ ,
TestJobData		, 7
testJobData		8 C
)		C D
{

 	
var 
executionSettings !
=" #
testJobData$ /
./ 0
executionSettings0 A
;A B
var 
settings 
= +
PlaymodeTestsControllerSettings :
.: ; 
CreateRunnerSettings; O
(O P
executionSettingsP a
.a b
filtersb i
.i j
Selectj p
(p q
filterq w
=>x z
filter	{ Å
.
Å Ç'
ToRuntimeTestRunnerFilter
Ç õ
(
õ ú
executionSettings
ú ≠
.
≠ Æ
runSynchronously
Æ æ
)
æ ø
)
ø ¿
.
¿ ¡
ToArray
¡ »
(
» …
)
…  
)
  À
;
À Ã
var 
launcher 
= 
new 
PlayerLauncher -
(- .
settings. 6
,6 7
executionSettings8 I
.I J
targetPlatformJ X
,X Y
executionSettingsZ k
.k l$
overloadTestRunSettings	l É
,
É Ñ
executionSettings
Ö ñ
.
ñ ó$
playerHeartbeatTimeout
ó ≠
)
≠ Æ
;
Æ Ø
launcher 
. 
Run 
( 
) 
; 
yield 
return 
null 
; 
} 	
} 
} ‚!
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\TestListCache.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal		 
class		 
TestListCache		  
:		! "
ITestListCache		# 1
{

 
private 
readonly 
ITestAdaptorFactory , 
m_TestAdaptorFactory- A
;A B
private 
readonly (
IRemoteTestResultDataFactory 5#
m_TestResultDataFactory6 M
;M N
private 
readonly 
ITestListCacheData +
m_TestListCacheData, ?
;? @
public 
TestListCache 
( 
ITestAdaptorFactory 0
testAdaptorFactory1 C
,C D(
IRemoteTestResultDataFactoryE a!
testResultDataFactoryb w
,w x
ITestListCacheData	y ã
testListCacheData
å ù
)
ù û
{ 	 
m_TestAdaptorFactory  
=! "
testAdaptorFactory# 5
;5 6#
m_TestResultDataFactory #
=$ %!
testResultDataFactory& ;
;; <
m_TestListCacheData 
=  !
testListCacheData" 3
;3 4
} 	
public 
void 
	CacheTest 
( 
TestPlatform *
platform+ 3
,3 4
ITest5 :
test; ?
)? @
{ 	
var 
index 
= 
m_TestListCacheData +
.+ ,
	platforms, 5
.5 6
IndexOf6 =
(= >
platform> F
)F G
;G H
if 
( 
index 
< 
$num 
) 
{ 
m_TestListCacheData #
.# $

cachedData$ .
.. /
Add/ 2
(2 3
test3 7
)7 8
;8 9
m_TestListCacheData #
.# $
	platforms$ -
.- .
Add. 1
(1 2
platform2 :
): ;
;; <
} 
else 
{ 
m_TestListCacheData   #
.  # $

cachedData  $ .
[  . /
index  / 4
]  4 5
=  6 7
test  8 <
;  < =
}!! 
}"" 	
public$$ 
IEnumerator$$ 
<$$ 
ITestAdaptor$$ '
>$$' (!
GetTestFromCacheAsync$$) >
($$> ?
TestPlatform$$? K
platform$$L T
)$$T U
{%% 	
var&& 
index&& 
=&& 
m_TestListCacheData&& +
.&&+ ,
	platforms&&, 5
.&&5 6
IndexOf&&6 =
(&&= >
platform&&> F
)&&F G
;&&G H
if'' 
('' 
index'' 
<'' 
$num'' 
)'' 
{(( 
yield)) 
return)) 
null)) !
;))! "
yield** 
break** 
;** 
}++ 
var-- 
testData-- 
=-- 
m_TestListCacheData-- .
.--. /

cachedData--/ 9
[--9 :
index--: ?
]--? @
;--@ A
yield.. 
return..  
m_TestAdaptorFactory.. -
...- .
Create... 4
(..4 5
testData..5 =
)..= >
;..> ?
}// 	
[11 	
	Callbacks11	 
.11 
DidReloadScripts11 #
]11# $
private22 
static22 
void22 
ScriptReloaded22 *
(22* +
)22+ ,
{33 	
TestListCacheData44 
.44 
instance44 &
.44& '

cachedData44' 1
.441 2
Clear442 7
(447 8
)448 9
;449 :
TestListCacheData55 
.55 
instance55 &
.55& '
	platforms55' 0
.550 1
Clear551 6
(556 7
)557 8
;558 9
}66 	
}77 
}88 ú
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\IAssetsDatabaseHelper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
	interface !
IAssetsDatabaseHelper ,
{ 
void /
#OpenAssetInItsDefaultExternalEditor 0
(0 1
string1 7
	assetPath8 A
,A B
intC F
lineG K
)K L
;L M
} 
} •
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlayerLauncherTestRunSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
class 	)
PlayerLauncherTestRunSettings
 '
:( )
ITestRunSettings* :
{ 
public 
bool 
	buildOnly 
{ 
set  #
;# $
get% (
;( )
}* +
public		 
string		 !
buildOnlyLocationPath		 +
{		, -
set		. 1
;		1 2
get		3 6
;		6 7
}		8 9
public 
void 
Dispose 
( 
) 
{ 	
} 	
void 
ITestRunSettings 
. 
Apply #
(# $
)$ %
{ 	
} 	
} 
} ¿
æD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\ApplePlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
[ 
Serializable 
] 
internal 
class 
ApplePlatformSetup %
:& '
IPlatformSetup( 6
{		 
[

 	
SerializeField

	 
]

 
private 
bool 
m_Stripping  
;  !
public 
ApplePlatformSetup !
(! "
BuildTarget" -
buildTarget. 9
)9 :
{ 	
} 	
public 
void 
Setup 
( 
) 
{ 	
m_Stripping 
= 
PlayerSettings (
.( )
stripEngineCode) 8
;8 9
PlayerSettings 
. 
stripEngineCode *
=+ ,
false- 2
;2 3
} 	
public 
void 
PostBuildAction #
(# $
)$ %
{ 	
PlayerSettings 
. 
stripEngineCode *
=+ ,
m_Stripping- 8
;8 9
} 	
public 
void %
PostSuccessfulBuildAction -
(- .
). /
{ 	
}   	
public"" 
void"" &
PostSuccessfulLaunchAction"" .
("". /
)""/ 0
{## 	
}$$ 	
public&& 
void&& 
CleanUp&& 
(&& 
)&& 
{'' 	
}(( 	
})) 
}** °
≥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\LegacyEditModeRunTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class !
LegacyEditModeRunTask (
:) *
TestTaskBase+ 7
{ 
public		 !
LegacyEditModeRunTask		 $
(		$ %
)		% &
:		' (
base		) -
(		- .
true		. 2
)		2 3
{

 	
} 	
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
var 
testLauncher 
= 
new "
EditModeLauncher# 3
(3 4
testJobData4 ?
.? @
executionSettings@ Q
.Q R
filtersR Y
,Y Z
TestPlatform[ g
.g h
EditModeh p
,p q
testJobDatar }
.} ~
executionSettings	~ è
.
è ê
runSynchronously
ê †
)
† °
;
° ¢
testJobData 
. 
editModeRunner &
=' (
testLauncher) 5
.5 6
m_EditModeRunner6 F
;F G
testLauncher 
. 
Run 
( 
) 
; 
while 
( 
testJobData 
. 
editModeRunner -
!=. 0
null1 5
&&6 8
!9 :
testJobData: E
.E F
editModeRunnerF T
.T U
RunFinishedU `
)` a
{ 
yield 
return 
null !
;! "
} 
} 	
} 
} √
§D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ICallbacksHolder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
	interface 
ICallbacksHolder '
{ 
void 
Add 
( 

ICallbacks 
callback $
,$ %
int& )
priority* 2
)2 3
;3 4
void 
Remove 
( 

ICallbacks 
callback '
)' (
;( )

ICallbacks 
[ 
] 
GetAll 
( 
) 
; 
void 
Clear 
( 
) 
; 
}		 
}

 ¨1
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListBuilder\ResultSummarizer.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{		 
internal 
class 
ResultSummarizer #
{ 
private 
int 
m_ErrorCount  
=! "
-# $
$num$ %
;% &
private 
int 
m_FailureCount "
;" #
private 
int 
m_IgnoreCount !
=" #
-$ %
$num% &
;& '
private 
int 
m_InconclusiveCount '
=( )
-* +
$num+ ,
;, -
private 
int 
m_NotRunnable !
=" #
-$ %
$num% &
;& '
private 
int 
m_ResultCount !
;! "
private 
int 
m_SkipCount 
;  
private 
int 
m_SuccessCount "
;" #
private 
int 

m_TestsRun 
; 
private 
TimeSpan 

m_Duration #
=$ %
TimeSpan& .
.. /
FromSeconds/ :
(: ;
$num; <
)< =
;= >
public 
ResultSummarizer 
(  
IEnumerable  +
<+ ,
TestRunnerResult, <
>< =
results> E
)E F
{ 	
foreach 
( 
var 
result 
in  "
results# *
)* +
	Summarize 
( 
result  
)  !
;! "
} 	
public!! 
bool!! 
success!! 
{"" 	
get## 
{## 
return## 
m_FailureCount## '
==##( *
$num##+ ,
;##, -
}##. /
}$$ 	
public++ 
int++ 
ResultCount++ 
{,, 	
get-- 
{-- 
return-- 
m_ResultCount-- &
;--& '
}--( )
}.. 	
public55 
int55 
TestsRun55 
{66 	
get77 
{77 
return77 

m_TestsRun77 #
;77# $
}77% &
}88 	
public== 
int== 
Passed== 
{>> 	
get?? 
{?? 
return?? 
m_SuccessCount?? '
;??' (
}??) *
}@@ 	
publicEE 
intEE 
errorsEE 
{FF 	
getGG 
{GG 
returnGG 
m_ErrorCountGG %
;GG% &
}GG' (
}HH 	
publicMM 
intMM 
failuresMM 
{NN 	
getOO 
{OO 
returnOO 
m_FailureCountOO '
;OO' (
}OO) *
}PP 	
publicUU 
intUU 
inconclusiveUU 
{VV 	
getWW 
{WW 
returnWW 
m_InconclusiveCountWW ,
;WW, -
}WW. /
}XX 	
public__ 
int__ 
notRunnable__ 
{`` 	
getaa 
{aa 
returnaa 
m_NotRunnableaa &
;aa& '
}aa( )
}bb 	
publicgg 
intgg 
Skippedgg 
{hh 	
getii 
{ii 
returnii 
m_SkipCountii $
;ii$ %
}ii& '
}jj 	
publicll 
intll 
ignoredll 
{mm 	
getnn 
{nn 
returnnn 
m_IgnoreCountnn &
;nn& '
}nn( )
}oo 	
publicqq 
doubleqq 
durationqq 
{rr 	
getss 
{ss 
returnss 

m_Durationss #
.ss# $
TotalSecondsss$ 0
;ss0 1
}ss2 3
}tt 	
publicvv 
intvv 
testsNotRunvv 
{ww 	
getxx 
{xx 
returnxx 
m_SkipCountxx $
+xx% &
m_IgnoreCountxx' 4
+xx5 6
m_NotRunnablexx7 D
;xxD E
}xxF G
}yy 	
public{{ 
void{{ 
	Summarize{{ 
({{ 
TestRunnerResult{{ .
result{{/ 5
){{5 6
{|| 	

m_Duration}} 
+=}} 
TimeSpan}} "
.}}" #
FromSeconds}}# .
(}}. /
result}}/ 5
.}}5 6
duration}}6 >
)}}> ?
;}}? @
m_ResultCount~~ 
++~~ 
;~~ 
if
ÄÄ 
(
ÄÄ 
result
ÄÄ 
.
ÄÄ 
resultStatus
ÄÄ #
!=
ÄÄ$ &
TestRunnerResult
ÄÄ' 7
.
ÄÄ7 8
ResultStatus
ÄÄ8 D
.
ÄÄD E
NotRun
ÄÄE K
)
ÄÄK L
{
ÅÅ 
m_SkipCount
ââ 
++
ââ 
;
ââ 
return
ää 
;
ää 
}
ãã 
switch
çç 
(
çç 
result
çç 
.
çç 
resultStatus
çç '
)
çç' (
{
éé 
case
èè 
TestRunnerResult
èè %
.
èè% &
ResultStatus
èè& 2
.
èè2 3
Passed
èè3 9
:
èè9 :
m_SuccessCount
êê "
++
êê" $
;
êê$ %

m_TestsRun
ëë 
++
ëë  
;
ëë  !
break
íí 
;
íí 
case
ìì 
TestRunnerResult
ìì %
.
ìì% &
ResultStatus
ìì& 2
.
ìì2 3
Failed
ìì3 9
:
ìì9 :
m_FailureCount
îî "
++
îî" $
;
îî$ %

m_TestsRun
ïï 
++
ïï  
;
ïï  !
break
ññ 
;
ññ 
default
®® 
:
®® 
m_SkipCount
©© 
++
©© !
;
©©! "
break
™™ 
;
™™ 
}
´´ 
}
¨¨ 	
}
≠≠ 
}ÆÆ Å
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\TestStartedMessage.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class 
TestStartedMessage %
:& '
Message( /
{ 
public 
string 
name 
; 
public 
	TestState 
state 
; 
public 
TestStartedMessage !
(! "
)" #
{		 	
type

 
=

 
$str

 
;

  
phase 
= 
$str 
; 
state 
= 
	TestState 
. 
Inconclusive *
;* +
} 	
} 
} Èh
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestSettings\TestSettingsDeserializer.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class $
TestSettingsDeserializer +
:, -%
ITestSettingsDeserializer. G
{ 
private 
static 
readonly 
SettingsMap  +
[+ ,
], -
s_SettingsMapping. ?
=@ A
{ 	
new 
SettingsMap 
< #
ScriptingImplementation 3
>3 4
(4 5
$str5 G
,G H
(I J
settingsJ R
,R S
valueT Y
)Y Z
=>[ ]
settings^ f
.f g
scriptingBackendg w
=x y
valuez 
)	 Ä
,
Ä Å
new 
SettingsMap 
< 
string "
>" #
(# $
$str$ 2
,2 3
(4 5
settings5 =
,= >
value? D
)D E
=>F H
settingsI Q
.Q R
ArchitectureR ^
=_ `
valuea f
)f g
,g h
new 
SettingsMap 
< !
ApiCompatibilityLevel 1
>1 2
(2 3
$str3 ?
,? @
(A B
settingsB J
,J K
valueL Q
)Q R
=>S U
settingsV ^
.^ _

apiProfile_ i
=j k
valuel q
)q r
,r s
new 
SettingsMap 
< 
bool  
>  !
(! "
$str" ?
,? @
(A B
settingsB J
,J K
valueL Q
)Q R
=>S U
settingsV ^
.^ _'
appleEnableAutomaticSigning_ z
={ |
value	} Ç
)
Ç É
,
É Ñ
new 
SettingsMap 
< 
string "
>" #
(# $
$str$ :
,: ;
(< =
settings= E
,E F
valueG L
)L M
=>N P
settingsQ Y
.Y Z 
appleDeveloperTeamIDZ n
=o p
valueq v
)v w
,w x
new 
SettingsMap 
< #
ProvisioningProfileType 3
>3 4
(4 5
$str5 W
,W X
(Y Z
settingsZ b
,b c
valued i
)i j
=>k m
settingsn v
.v w-
 iOSManualProvisioningProfileType	w ó
=
ò ô
value
ö ü
)
ü †
,
† °
new 
SettingsMap 
< 
string "
>" #
(# $
$str$ D
,D E
(F G
settingsG O
,O P
valueQ V
)V W
=>X Z
settings[ c
.c d+
iOSManualProvisioningProfileID	d Ç
=
É Ñ
value
Ö ä
)
ä ã
,
ã å
new 
SettingsMap 
< #
ProvisioningProfileType 3
>3 4
(4 5
$str5 X
,X Y
(Z [
settings[ c
,c d
valuee j
)j k
=>l n
settingso w
.w x.
!tvOSManualProvisioningProfileType	x ô
=
ö õ
value
ú °
)
° ¢
,
¢ £
new 
SettingsMap 
< 
string "
>" #
(# $
$str$ E
,E F
(G H
settingsH P
,P Q
valueR W
)W X
=>Y [
settings\ d
.d e,
tvOSManualProvisioningProfileID	e Ñ
=
Ö Ü
value
á å
)
å ç
,
ç é
} 	
;	 

private 
readonly 
Func 
< 
ITestSettings +
>+ ,!
m_TestSettingsFactory- B
;B C
public $
TestSettingsDeserializer '
(' (
Func( ,
<, -
ITestSettings- :
>: ;
testSettingsFactory< O
)O P
{ 	!
m_TestSettingsFactory !
=" #
testSettingsFactory$ 7
;7 8
} 	
public!! 
ITestSettings!! #
GetSettingsFromJsonFile!! 4
(!!4 5
string!!5 ;
jsonFilePath!!< H
)!!H I
{"" 	
var## 
text## 
=## 
File## 
.## 
ReadAllText## '
(##' (
jsonFilePath##( 4
)##4 5
;##5 6
var$$ 
settingsDictionary$$ "
=$$# $
Json$$% )
.$$) *
Deserialize$$* 5
($$5 6
text$$6 :
)$$: ;
as$$< >

Dictionary$$? I
<$$I J
string$$J P
,$$P Q
object$$R X
>$$X Y
;$$Y Z
var&& 
testSettings&& 
=&& !
m_TestSettingsFactory&& 4
(&&4 5
)&&5 6
;&&6 7
if'' 
('' 
settingsDictionary'' "
==''# %
null''& *
)''* +
{(( 
return)) 
testSettings)) #
;))# $
}** 
foreach,, 
(,, 
var,, 
settingsMap,, $
in,,% '
s_SettingsMapping,,( 9
),,9 :
{-- 
if.. 
(.. 
!.. 
settingsDictionary.. '
...' (
ContainsKey..( 3
(..3 4
settingsMap..4 ?
...? @
Key..@ C
)..C D
)..D E
{// 
continue00 
;00 
}11 
if33 
(33 
settingsMap33 
.33  
Type33  $
.33$ %
IsEnum33% +
)33+ ,
{44 
SetEnumValue55  
(55  !
settingsMap55! ,
.55, -
Key55- 0
,550 1
settingsDictionary552 D
[55D E
settingsMap55E P
.55P Q
Key55Q T
]55T U
,55U V
settingsMap55W b
.55b c
Type55c g
,55g h
value55i n
=>55o q
settingsMap55r }
.55} ~
ApplyToSettings	55~ ç
(
55ç é
testSettings
55é ö
,
55ö õ
value
55ú °
)
55° ¢
)
55¢ £
;
55£ §
}66 
else77 
{88 
SetValue99 
(99 
settingsMap99 (
.99( )
Key99) ,
,99, -
settingsDictionary99. @
[99@ A
settingsMap99A L
.99L M
Key99M P
]99P Q
,99Q R
settingsMap99S ^
.99^ _
Type99_ c
,99c d
value99e j
=>99k m
settingsMap99n y
.99y z
ApplyToSettings	99z â
(
99â ä
testSettings
99ä ñ
,
99ñ ó
value
99ò ù
)
99ù û
)
99û ü
;
99ü †
}:: 
};; 
return== 
testSettings== 
;==  
}>> 	
private@@ 
abstract@@ 
class@@ 
SettingsMap@@ *
{AA 	
publicBB 
stringBB 
KeyBB 
{BB 
getBB  #
;BB# $
}BB% &
publicCC 
TypeCC 
TypeCC 
{CC 
getCC "
;CC" #
}CC$ %
	protectedDD 
SettingsMapDD !
(DD! "
stringDD" (
keyDD) ,
,DD, -
TypeDD. 2
typeDD3 7
)DD7 8
{EE 
KeyFF 
=FF 
keyFF 
;FF 
TypeGG 
=GG 
typeGG 
;GG 
}HH 
publicJJ 
abstractJJ 
voidJJ  
ApplyToSettingsJJ! 0
(JJ0 1
ITestSettingsJJ1 >
settingsJJ? G
,JJG H
objectJJI O
valueJJP U
)JJU V
;JJV W
}KK 	
privateMM 
classMM 
SettingsMapMM !
<MM! "
TMM" #
>MM# $
:MM% &
SettingsMapMM' 2
{NN 	
privateOO 
ActionOO 
<OO 
ITestSettingsOO (
,OO( )
TOO* +
>OO+ ,
m_SetterOO- 5
;OO5 6
publicPP 
SettingsMapPP 
(PP 
stringPP %
keyPP& )
,PP) *
ActionPP+ 1
<PP1 2
ITestSettingsPP2 ?
,PP? @
TPPA B
>PPB C
setterPPD J
)PPJ K
:PPL M
basePPN R
(PPR S
keyPPS V
,PPV W
typeofPPX ^
(PP^ _
TPP_ `
)PP` a
)PPa b
{QQ 
m_SetterRR 
=RR 
setterRR !
;RR! "
}SS 
publicUU 
overrideUU 
voidUU  
ApplyToSettingsUU! 0
(UU0 1
ITestSettingsUU1 >
settingsUU? G
,UUG H
objectUUI O
valueUUP U
)UUU V
{VV 
m_SetterWW 
(WW 
settingsWW !
,WW! "
(WW# $
TWW$ %
)WW% &
valueWW& +
)WW+ ,
;WW, -
}XX 
}YY 	
private[[ 
static[[ 
void[[ 
SetEnumValue[[ (
([[( )
string[[) /
key[[0 3
,[[3 4
object[[5 ;
value[[< A
,[[A B
Type[[C G
type[[H L
,[[L M
Action[[N T
<[[T U
object[[U [
>[[[ \
setter[[] c
)[[c d
{\\ 	
object]] 
	enumValue]] 
;]] 
if^^ 
(^^ 

TryGetEnum^^ 
(^^ 
value^^  
as^^! #
string^^$ *
,^^* +
type^^, 0
,^^0 1
out^^2 5
	enumValue^^6 ?
)^^? @
)^^@ A
{__ 
setter`` 
(`` 
	enumValue``  
)``  !
;``! "
returnaa 
;aa 
}bb 
vardd 
acceptedValuesdd 
=dd  
stringdd! '
.dd' (
Joindd( ,
(dd, -
$strdd- 1
,dd1 2
Enumdd3 7
.dd7 8
	GetValuesdd8 A
(ddA B
typeddB F
)ddF G
.ddG H
OfTypeddH N
<ddN O
objectddO U
>ddU V
(ddV W
)ddW X
.ddX Y
SelectddY _
(dd_ `
valdd` c
=>ddd f
valddg j
.ddj k
ToStringddk s
(dds t
)ddt u
)ddu v
.ddv w
ToArrayddw ~
(dd~ 
)	dd Ä
)
ddÄ Å
;
ddÅ Ç
Debugff 
.ff 
	LogFormatff 
(ff 
$strff j
,ffj k
keyffl o
,ffo p
valueffq v
,ffv w
typeffx |
.ff| }
Name	ff} Å
,
ffÅ Ç
acceptedValues
ffÉ ë
)
ffë í
;
ffí ì
}gg 	
privateii 
staticii 
boolii 

TryGetEnumii &
(ii& '
stringii' -
valueii. 3
,ii3 4
Typeii5 9
typeii: >
,ii> ?
outii@ C
objectiiD J
	enumValueiiK T
)iiT U
{jj 	
trykk 
{ll 
	enumValuemm 
=mm 
Enummm  
.mm  !
Parsemm! &
(mm& '
typemm' +
,mm+ ,
valuemm- 2
,mm2 3
truemm4 8
)mm8 9
;mm9 :
returnnn 
truenn 
;nn 
}oo 
catchpp 
(pp 
	Exceptionpp 
)pp 
{qq 
	enumValuerr 
=rr 
nullrr  
;rr  !
returnss 
falsess 
;ss 
}tt 
}uu 	
privateww 
staticww 
voidww 
SetValueww $
(ww$ %
stringww% +
keyww, /
,ww/ 0
objectww1 7
valueww8 =
,ww= >
Typeww? C
typewwD H
,wwH I
ActionwwJ P
<wwP Q
objectwwQ W
>wwW X
setterwwY _
)ww_ `
{xx 	
ifyy 
(yy 
typeyy 
.yy 
IsInstanceOfTypeyy %
(yy% &
valueyy& +
)yy+ ,
)yy, -
{zz 
setter{{ 
({{ 
value{{ 
){{ 
;{{ 
return|| 
;|| 
}}} 
Debug 
. 
	LogFormat 
( 
$str T
,T U
keyV Y
,Y Z
value[ `
,` a
typeb f
.f g
Nameg k
)k l
;l m
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ÷A
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\PlatformSpecificSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
[ 
Serializable 
] 
internal 
class !
PlatformSpecificSetup (
{		 
[

 	
SerializeField

	 
]

 
private 
ApplePlatformSetup "#
m_AppleiOSPlatformSetup# :
=; <
new= @
ApplePlatformSetupA S
(S T
BuildTargetT _
._ `
iOS` c
)c d
;d e
[ 	
SerializeField	 
] 
private 
ApplePlatformSetup "$
m_AppleTvOSPlatformSetup# ;
=< =
new> A
ApplePlatformSetupB T
(T U
BuildTargetU `
.` a
tvOSa e
)e f
;f g
[ 	
SerializeField	 
] 
private  
XboxOnePlatformSetup $"
m_XboxOnePlatformSetup% ;
=< =
new> A 
XboxOnePlatformSetupB V
(V W
)W X
;X Y
[ 	
SerializeField	 
] 
private  
AndroidPlatformSetup $"
m_AndroidPlatformSetup% ;
=< =
new> A 
AndroidPlatformSetupB V
(V W
)W X
;X Y
[ 	
SerializeField	 
] 
private 
SwitchPlatformSetup #!
m_SwitchPlatformSetup$ 9
=: ;
new< ?
SwitchPlatformSetup@ S
(S T
)T U
;U V
[ 	
SerializeField	 
] 
private 
StadiaPlatformSetup #!
m_StadiaPlatformSetup$ 9
=: ;
new< ?
StadiaPlatformSetup@ S
(S T
)T U
;U V
[ 	
SerializeField	 
] 
private 
UwpPlatformSetup  
m_UwpPlatformSetup! 3
=4 5
new6 9
UwpPlatformSetup: J
(J K
)K L
;L M
[ 	
SerializeField	 
] 
private 
LuminPlatformSetup " 
m_LuminPlatformSetup# 7
=8 9
new: =
LuminPlatformSetup> P
(P Q
)Q R
;R S
private 
IDictionary 
< 
BuildTarget '
,' (
IPlatformSetup) 7
>7 8
m_SetupTypes9 E
;E F
[!! 	
SerializeField!!	 
]!! 
private"" 
BuildTarget"" 
m_Target"" $
;""$ %
public$$ !
PlatformSpecificSetup$$ $
($$$ %
)$$% &
{%% 	
}&& 	
public(( !
PlatformSpecificSetup(( $
((($ %
BuildTarget((% 0
target((1 7
)((7 8
{)) 	
m_Target** 
=** 
target** 
;** 
}++ 	
public-- 
void-- 
Setup-- 
(-- 
)-- 
{.. 	
var// 

dictionary// 
=// 
GetSetup// %
(//% &
)//& '
;//' (
if11 
(11 
!11 

dictionary11 
.11 
ContainsKey11 '
(11' (
m_Target11( 0
)110 1
)111 2
{22 
return33 
;33 
}44 

dictionary66 
[66 
m_Target66 
]66  
.66  !
Setup66! &
(66& '
)66' (
;66( )
}77 	
public99 
void99 
PostBuildAction99 #
(99# $
)99$ %
{:: 	
var;; 

dictionary;; 
=;; 
GetSetup;; %
(;;% &
);;& '
;;;' (
if== 
(== 
!== 

dictionary== 
.== 
ContainsKey== '
(==' (
m_Target==( 0
)==0 1
)==1 2
{>> 
return?? 
;?? 
}@@ 

dictionaryBB 
[BB 
m_TargetBB 
]BB  
.BB  !
PostBuildActionBB! 0
(BB0 1
)BB1 2
;BB2 3
}CC 	
publicEE 
voidEE %
PostSuccessfulBuildActionEE -
(EE- .
)EE. /
{FF 	
varGG 

dictionaryGG 
=GG 
GetSetupGG %
(GG% &
)GG& '
;GG' (
ifII 
(II 
!II 

dictionaryII 
.II 
ContainsKeyII '
(II' (
m_TargetII( 0
)II0 1
)II1 2
{JJ 
returnKK 
;KK 
}LL 

dictionaryNN 
[NN 
m_TargetNN 
]NN  
.NN  !%
PostSuccessfulBuildActionNN! :
(NN: ;
)NN; <
;NN< =
}OO 	
publicQQ 
voidQQ &
PostSuccessfulLaunchActionQQ .
(QQ. /
)QQ/ 0
{RR 	
varSS 

dictionarySS 
=SS 
GetSetupSS %
(SS% &
)SS& '
;SS' (
ifUU 
(UU 
!UU 

dictionaryUU 
.UU 
ContainsKeyUU '
(UU' (
m_TargetUU( 0
)UU0 1
)UU1 2
{VV 
returnWW 
;WW 
}XX 

dictionaryZZ 
[ZZ 
m_TargetZZ 
]ZZ  
.ZZ  !&
PostSuccessfulLaunchActionZZ! ;
(ZZ; <
)ZZ< =
;ZZ= >
}[[ 	
public]] 
void]] 
CleanUp]] 
(]] 
)]] 
{^^ 	
var__ 

dictionary__ 
=__ 
GetSetup__ %
(__% &
)__& '
;__' (
ifaa 
(aa 
!aa 

dictionaryaa 
.aa 
ContainsKeyaa '
(aa' (
m_Targetaa( 0
)aa0 1
)aa1 2
{bb 
returncc 
;cc 
}dd 

dictionaryff 
[ff 
m_Targetff 
]ff  
.ff  !
CleanUpff! (
(ff( )
)ff) *
;ff* +
}gg 	
privateii 
IDictionaryii 
<ii 
BuildTargetii '
,ii' (
IPlatformSetupii) 7
>ii7 8
GetSetupii9 A
(iiA B
)iiB C
{jj 	
m_SetupTypeskk 
=kk 
newkk 

Dictionarykk )
<kk) *
BuildTargetkk* 5
,kk5 6
IPlatformSetupkk7 E
>kkE F
(kkF G
)kkG H
{ll 
{mm 
BuildTargetmm 
.mm 
iOSmm  
,mm  !#
m_AppleiOSPlatformSetupmm" 9
}mm9 :
,mm: ;
{nn 
BuildTargetnn 
.nn 
tvOSnn !
,nn! "$
m_AppleTvOSPlatformSetupnn# ;
}nn; <
,nn< =
{oo 
BuildTargetoo 
.oo 
XboxOneoo $
,oo$ %"
m_XboxOnePlatformSetupoo& <
}oo< =
,oo= >
{pp 
BuildTargetpp 
.pp 
Androidpp $
,pp$ %"
m_AndroidPlatformSetuppp& <
}pp< =
,pp= >
{qq 
BuildTargetqq 
.qq 
	WSAPlayerqq &
,qq& '
m_UwpPlatformSetupqq( :
}qq: ;
,qq; <
{rr 
BuildTargetrr 
.rr 
Luminrr "
,rr" # 
m_LuminPlatformSetuprr$ 8
}rr8 9
,rr9 :
{tt 
BuildTargettt 
.tt 
Stadiatt #
,tt# $!
m_StadiaPlatformSetuptt% :
}tt: ;
,tt; <
{vv 
BuildTargetvv 
.vv 
Switchvv #
,vv# $!
m_SwitchPlatformSetupvv% :
}vv: ;
}ww 
;ww 
returnxx 
m_SetupTypesxx 
;xx  
}yy 	
}zz 
}{{ »
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\CleanupVerificationTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal		 
class		 #
CleanupVerificationTask		 *
:		+ ,'
FileCleanupVerifierTaskBase		- H
{

 
private 
const 
string 
k_Indent %
=& '
$str( .
;. /
internal 
Action 
< 
object 
> 
	logAction  )
=* +
Debug, 1
.1 2

LogWarning2 <
;< =
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
var 
currentFiles 
= (
GetAllFilesInAssetsDirectory ;
(; <
)< =
;= >
var 
existingFiles 
= 
testJobData  +
.+ ,
existingFiles, 9
;9 :
if 
( 
currentFiles 
. 
Length #
!=$ &
existingFiles' 4
.4 5
Length5 ;
); <
{ #
LogWarningForFilesIfAny '
(' (
currentFiles( 4
.4 5
Where5 :
(: ;
file; ?
=>@ B
!C D
testJobDataD O
.O P
existingFilesP ]
.] ^
Contains^ f
(f g
fileg k
)k l
)l m
.m n
ToArrayn u
(u v
)v w
)w x
;x y
} 
yield 
return 
null 
; 
} 	
private 
void #
LogWarningForFilesIfAny ,
(, -
string- 3
[3 4
]4 5
	filePaths6 ?
)? @
{ 	
if 
( 
! 
	filePaths 
. 
Any 
( 
)  
)  !
{ 
return   
;   
}!! 
var## 
stringWriter## 
=## 
new## "
StringWriter### /
(##/ 0
)##0 1
;##1 2
stringWriter$$ 
.$$ 
	WriteLine$$ "
($$" #
$str$$# M
)$$M N
;$$N O
stringWriter%% 
.%% 
	WriteLine%% "
(%%" #
k_Indent%%# +
+%%, -
$str%%. D
,%%D E
	filePaths%%F O
.%%O P
Length%%P V
)%%V W
;%%W X
foreach'' 
('' 
var'' 
filePath'' !
in''" $
	filePaths''% .
)''. /
{(( 
stringWriter)) 
.)) 
	WriteLine)) &
())& '
k_Indent))' /
+))0 1
filePath))2 :
))): ;
;)); <
}** 
	logAction,, 
(,, 
stringWriter,, "
.,," #
ToString,,# +
(,,+ ,
),,, -
),,- .
;,,. /
}-- 	
}.. 
}// “	
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\TestFinishedMessage.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class 
TestFinishedMessage &
:' (
Message) 0
{ 
public 
string 
name 
; 
public 
	TestState 
state 
; 
public 
string 
message 
; 
public 
ulong 
duration 
; 
public		 
ulong		  
durationMicroseconds		 )
;		) *
public

 
string

 

stackTrace

  
;

  !
public 
TestFinishedMessage "
(" #
)# $
{ 	
type 
= 
$str 
;  
phase 
= 
$str 
; 
} 	
} 
} ˘
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\SaveUndoIndexTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class 
SaveUndoIndexTask $
:% &
TestTaskBase' 3
{ 
internal 
Func 
< 
int 
> 
GetUndoGroup '
=( )
Undo* .
.. /
GetCurrentGroup/ >
;> ?
public		 
override		 
IEnumerator		 #
Execute		$ +
(		+ ,
TestJobData		, 7
testJobData		8 C
)		C D
{

 	
testJobData 
. 
	undoGroup !
=" #
GetUndoGroup$ 0
(0 1
)1 2
;2 3
yield 
break 
; 
} 	
} 
} ©
 D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\NUnitExtension\Attributes\TestPlayerBuildModifierAttribute.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
)- .
]. /
public 

class ,
 TestPlayerBuildModifierAttribute 1
:2 3
	Attribute4 =
{ 
private 
Type 
m_Type 
; 
public		 ,
 TestPlayerBuildModifierAttribute		 /
(		/ 0
Type		0 4
type		5 9
)		9 :
{

 	
var 
interfaceType 
= 
typeof  &
(& '$
ITestPlayerBuildModifier' ?
)? @
;@ A
if 
( 
! 
interfaceType 
. 
IsAssignableFrom /
(/ 0
type0 4
)4 5
)5 6
{ 
throw 
new 
ArgumentException +
(+ ,
string, 2
.2 3
Format3 9
(9 :
$str: g
,g h
thisi m
.m n
GetTypen u
(u v
)v w
.w x
Namex |
,| }
interfaceType	~ ã
.
ã å
Name
å ê
)
ê ë
)
ë í
;
í ì
} 
m_Type 
= 
type 
; 
} 	
internal $
ITestPlayerBuildModifier )
ConstructModifier* ;
(; <
)< =
{ 	
return 
	Activator 
. 
CreateInstance +
(+ ,
m_Type, 2
)2 3
as4 6$
ITestPlayerBuildModifier7 O
;O P
} 	
} 
} áj
ªD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\EditModeRunnerCallback.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class "
EditModeRunnerCallback )
:* +
ScriptableObject, <
,< =
ITestRunnerListener> Q
{ 
private +
EditModeLauncherContextSettings /

m_Settings0 :
;: ;
public 

SceneSetup 
[ 
] 
previousSceneSetup .
;. /
public 
EditModeRunner 
runner $
;$ %
private 
bool 

m_Canceled 
;  
private 
ITest 
m_CurrentTest #
;# $
private 
int 
m_TotalTests  
;  !
[ 	
SerializeField	 
] 
private 
List 
< 
string 
> 
m_PendingTests +
;+ ,
[ 	
SerializeField	 
] 
private 
string !
m_LastCountedTestName ,
;, -
[ 	
SerializeField	 
] 
private 
bool 
m_RunRestarted #
;# $
public 
void 
	OnDestroy 
( 
) 
{ 	
CleanUp   
(   
)   
;   
}!! 	
public## 
void## 

RunStarted## 
(## 
ITest## $

testsToRun##% /
)##/ 0
{$$ 	
Setup%% 
(%% 
)%% 
;%% 
if&& 
(&& 
m_PendingTests&& 
==&& !
null&&" &
)&&& '
{'' 
m_PendingTests(( 
=((  !
GetTestsExpectedToRun((! 6
(((6 7

testsToRun((7 A
,((A B
runner((C I
.((I J
	GetFilter((J S
(((S T
)((T U
)((U V
;((V W
m_TotalTests)) 
=)) 
m_PendingTests)) -
.))- .
Count)). 3
;))3 4
}** 
}++ 	
public-- 
void-- 
OnEnable-- 
(-- 
)-- 
{.. 	
if// 
(// 
m_RunRestarted// 
)// 
{00 
Setup11 
(11 
)11 
;11 
}22 
}33 	
private55 
void55 
Setup55 
(55 
)55 
{66 	

m_Settings77 
=77 
new77 +
EditModeLauncherContextSettings77 <
(77< =
)77= >
;77> ?
Application88 
.88 &
logMessageReceivedThreaded88 2
+=883 5
LogReceived886 A
;88A B
EditorApplication99 
.99  
playModeStateChanged99 2
+=993 5
WaitForExitPlaymode996 I
;99I J
EditorApplication:: 
.:: 
update:: $
+=::% '
DisplayProgressBar::( :
;::: ; 
AssemblyReloadEvents;;  
.;;  ! 
beforeAssemblyReload;;! 5
+=;;6 8 
BeforeAssemblyReload;;9 M
;;;M N
}<< 	
private>> 
void>>  
BeforeAssemblyReload>> )
(>>) *
)>>* +
{?? 	
if@@ 
(@@ 
m_CurrentTest@@ 
!=@@  
null@@! %
)@@% &
{AA !
m_LastCountedTestNameBB %
=BB& '
m_CurrentTestBB( 5
.BB5 6
FullNameBB6 >
;BB> ?
m_RunRestartedCC 
=CC  
trueCC! %
;CC% &
}DD 
}EE 	
privateGG 
voidGG 
DisplayProgressBarGG '
(GG' (
)GG( )
{HH 	
ifII 
(II 
m_CurrentTestII 
==II  
nullII! %
)II% &
returnJJ 
;JJ 
ifKK 
(KK 
!KK 

m_CanceledKK 
&&KK 
EditorUtilityKK ,
.KK, -(
DisplayCancelableProgressBarKK- I
(KKI J
$strKKJ W
,KKW X
$strKKY h
+KKi j
m_CurrentTestKKk x
.KKx y
NameKKy }
,KK} ~
Math	KK É
.
KKÉ Ñ
Min
KKÑ á
(
KKá à
$num
KKà å
,
KKå ç
(
KKé è
float
KKè î
)
KKî ï
(
KKï ñ
m_TotalTests
KKñ ¢
-
KK£ §
m_PendingTests
KK• ≥
.
KK≥ ¥
Count
KK¥ π
)
KKπ ∫
/
KKª º
m_TotalTests
KKΩ …
)
KK…  
)
KK  À
)
KKÀ Ã
{LL 
EditorApplicationMM !
.MM! "
updateMM" (
-=MM) +
DisplayProgressBarMM, >
;MM> ?

m_CanceledNN 
=NN 
trueNN !
;NN! "
EditorUtilityOO 
.OO 
ClearProgressBarOO .
(OO. /
)OO/ 0
;OO0 1
runnerPP 
.PP 
OnRunCancelPP "
(PP" #
)PP# $
;PP$ %
}QQ 
}RR 	
privateTT 
staticTT 
voidTT 
LogReceivedTT '
(TT' (
stringTT( .
messageTT/ 6
,TT6 7
stringTT8 >

stacktraceTT? I
,TTI J
LogTypeTTK R
typeTTS W
)TTW X
{UU 	
ifVV 
(VV 
TestContextVV 
.VV 
OutVV 
!=VV  "
nullVV# '
)VV' (
TestContextWW 
.WW 
OutWW 
.WW  
	WriteLineWW  )
(WW) *
messageWW* 1
)WW1 2
;WW2 3
}XX 	
privateZZ 
staticZZ 
voidZZ 
WaitForExitPlaymodeZZ /
(ZZ/ 0
PlayModeStateChangeZZ0 C
stateZZD I
)ZZI J
{[[ 	
if\\ 
(\\ 
state\\ 
==\\ 
PlayModeStateChange\\ ,
.\\, -
EnteredEditMode\\- <
)\\< =
{]] 
EditorApplication^^ !
.^^! " 
playModeStateChanged^^" 6
-=^^7 9
WaitForExitPlaymode^^: M
;^^M N
Applicationbb 
.bb &
logMessageReceivedThreadedbb 6
-=bb7 9
LogReceivedbb: E
;bbE F
Applicationcc 
.cc &
logMessageReceivedThreadedcc 6
+=cc7 9
LogReceivedcc: E
;ccE F
}dd 
}ee 	
publicgg 
voidgg 
RunFinishedgg 
(gg  
ITestResultgg  +
resultgg, 2
)gg2 3
{hh 	
ifii 
(ii 
previousSceneSetupii "
!=ii# %
nullii& *
&&ii+ -
previousSceneSetupii. @
.ii@ A
LengthiiA G
>iiH I
$numiiJ K
)iiK L
{jj 
trykk 
{ll 
EditorSceneManagermm &
.mm& '$
RestoreSceneManagerSetupmm' ?
(mm? @
previousSceneSetupmm@ R
)mmR S
;mmS T
}nn 
catchoo 
(oo 
ArgumentExceptionoo (
eoo) *
)oo* +
{pp 
Debugqq 
.qq 

LogWarningqq $
(qq$ %
eqq% &
.qq& '
Messageqq' .
)qq. /
;qq/ 0
}rr 
}ss 
elsett 
{uu 
foreachvv 
(vv 
varvv 
objvv  
invv! #
FindObjectsOfTypevv$ 5
<vv5 6

GameObjectvv6 @
>vv@ A
(vvA B
)vvB C
)vvC D
{ww 
ifxx 
(xx 
objxx 
!=xx 
nullxx #
&&xx$ &
objxx' *
.xx* +
	transformxx+ 4
.xx4 5
parentxx5 ;
!=xx< >
nullxx? C
&&xxD F
(xxG H
objxxH K
.xxK L
	transformxxL U
.xxU V
parentxxV \
.xx\ ]
	hideFlagsxx] f
&xxg h
	HideFlagsxxi r
.xxr s
DontSaveInEditor	xxs É
)
xxÉ Ñ
==
xxÖ á
	HideFlags
xxà ë
.
xxë í
DontSaveInEditor
xxí ¢
&&
xx£ •
obj
xx¶ ©
.
xx© ™
	transform
xx™ ≥
.
xx≥ ¥
parent
xx¥ ∫
.
xx∫ ª

gameObject
xxª ≈
!=
xx∆ »
null
xx… Õ
)
xxÕ Œ
{yy 
DestroyImmediatezz (
(zz( )
objzz) ,
.zz, -
	transformzz- 6
.zz6 7
parentzz7 =
.zz= >

gameObjectzz> H
)zzH I
;zzI J
}{{ 
}|| 
EditorSceneManager~~ "
.~~" #
NewScene~~# +
(~~+ ,
NewSceneSetup~~, 9
.~~9 :
DefaultGameObjects~~: L
,~~L M
NewSceneMode~~N Z
.~~Z [
Single~~[ a
)~~a b
;~~b c
} 
CleanUp
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
CleanUp
ÉÉ 
(
ÉÉ 
)
ÉÉ 
{
ÑÑ 	
m_CurrentTest
ÖÖ 
=
ÖÖ 
null
ÖÖ  
;
ÖÖ  !
EditorUtility
ÜÜ 
.
ÜÜ 
ClearProgressBar
ÜÜ *
(
ÜÜ* +
)
ÜÜ+ ,
;
ÜÜ, -
if
áá 
(
áá 

m_Settings
áá 
!=
áá 
null
áá "
)
áá" #
{
àà 

m_Settings
ââ 
.
ââ 
Dispose
ââ "
(
ââ" #
)
ââ# $
;
ââ$ %
}
ää 
Application
ãã 
.
ãã (
logMessageReceivedThreaded
ãã 2
-=
ãã3 5
LogReceived
ãã6 A
;
ããA B
EditorApplication
åå 
.
åå 
update
åå $
-=
åå% ' 
DisplayProgressBar
åå( :
;
åå: ;
}
çç 	
public
èè 
void
èè 
TestStarted
èè 
(
èè  
ITest
èè  %
test
èè& *
)
èè* +
{
êê 	
if
ëë 
(
ëë 
test
ëë 
.
ëë 
IsSuite
ëë 
||
ëë 
!
ëë  !
(
ëë! "
test
ëë" &
is
ëë' )

TestMethod
ëë* 4
)
ëë4 5
)
ëë5 6
{
íí 
return
ìì 
;
ìì 
}
îî 
m_CurrentTest
ññ 
=
ññ 
test
ññ  
;
ññ  !
if
òò 
(
òò 
m_RunRestarted
òò 
)
òò 
{
ôô 
if
öö 
(
öö 
test
öö 
.
öö 
FullName
öö !
==
öö" $#
m_LastCountedTestName
öö% :
)
öö: ;
m_RunRestarted
õõ "
=
õõ# $
false
õõ% *
;
õõ* +
}
úú 
}
ùù 	
public
üü 
void
üü 
TestFinished
üü  
(
üü  !
ITestResult
üü! ,
result
üü- 3
)
üü3 4
{
†† 	
if
°° 
(
°° 
result
°° 
.
°° 
Test
°° 
is
°° 

TestMethod
°° )
)
°°) *
{
¢¢ 
m_PendingTests
££ 
.
££ 
Remove
££ %
(
££% &
result
££& ,
.
££, -
Test
££- 1
.
££1 2
FullName
££2 :
)
££: ;
;
££; <
}
§§ 
}
•• 	
private
ßß 
static
ßß 
List
ßß 
<
ßß 
string
ßß "
>
ßß" ##
GetTestsExpectedToRun
ßß$ 9
(
ßß9 :
ITest
ßß: ?
test
ßß@ D
,
ßßD E
ITestFilter
ßßF Q
filter
ßßR X
)
ßßX Y
{
®® 	
var
©© 
expectedTests
©© 
=
©© 
new
©©  #
List
©©$ (
<
©©( )
string
©©) /
>
©©/ 0
(
©©0 1
)
©©1 2
;
©©2 3
if
´´ 
(
´´ 
filter
´´ 
.
´´ 
Pass
´´ 
(
´´ 
test
´´  
)
´´  !
)
´´! "
{
¨¨ 
if
≠≠ 
(
≠≠ 
test
≠≠ 
.
≠≠ 
IsSuite
≠≠  
)
≠≠  !
{
ÆÆ 
expectedTests
ØØ !
.
ØØ! "
AddRange
ØØ" *
(
ØØ* +
test
ØØ+ /
.
ØØ/ 0
Tests
ØØ0 5
.
ØØ5 6

SelectMany
ØØ6 @
(
ØØ@ A
subTest
ØØA H
=>
ØØI K#
GetTestsExpectedToRun
ØØL a
(
ØØa b
subTest
ØØb i
,
ØØi j
filter
ØØk q
)
ØØq r
)
ØØr s
)
ØØs t
;
ØØt u
}
∞∞ 
else
±± 
{
≤≤ 
expectedTests
≥≥ !
.
≥≥! "
Add
≥≥" %
(
≥≥% &
test
≥≥& *
.
≥≥* +
FullName
≥≥+ 3
)
≥≥3 4
;
≥≥4 5
}
¥¥ 
}
µµ 
return
∑∑ 
expectedTests
∑∑  
;
∑∑  !
}
∏∏ 	
}
ππ 
}∫∫ ‹d
®D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\Executer.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal		 
class		 
Executer		 
{

 
private 
ITestRunnerApi 
m_TestRunnerApi .
;. /
private 
ISettingsBuilder  
m_SettingsBuilder! 2
;2 3
private 
Action 
< 
string 
, 
object %
[% &
]& '
>' (
m_LogErrorFormat) 9
;9 :
private 
Action 
< 
	Exception  
>  !
m_LogException" 0
;0 1
private 
Action 
< 
int 
> #
m_ExitEditorApplication 3
;3 4
private 
Func 
< 
bool 
> *
m_ScriptCompilationFailedCheck 9
;9 :
public 
Executer 
( 
ITestRunnerApi &
testRunnerApi' 4
,4 5
ISettingsBuilder6 F
settingsBuilderG V
,V W
ActionX ^
<^ _
string_ e
,e f
objectg m
[m n
]n o
>o p
logErrorFormatq 
,	 Ä
Action
Å á
<
á à
	Exception
à ë
>
ë í
logException
ì ü
,
ü †
Action
° ß
<
ß ®
int
® ´
>
´ ¨#
exitEditorApplication
≠ ¬
,
¬ √
Func
ƒ »
<
» …
bool
… Õ
>
Õ Œ*
scriptCompilationFailedCheck
œ Î
)
Î Ï
{ 	
m_TestRunnerApi 
= 
testRunnerApi +
;+ ,
m_SettingsBuilder 
= 
settingsBuilder  /
;/ 0
m_LogErrorFormat 
= 
logErrorFormat -
;- .
m_LogException 
= 
logException )
;) *#
m_ExitEditorApplication #
=$ %!
exitEditorApplication& ;
;; <*
m_ScriptCompilationFailedCheck *
=+ ,(
scriptCompilationFailedCheck- I
;I J
} 	
internal 
void #
InitializeAndExecuteRun -
(- .
string. 4
[4 5
]5 6
commandLineArgs7 F
)F G
{ 	
Api 
. 
ExecutionSettings !
executionSettings" 3
;3 4
try 
{   
executionSettings!! !
=!!" #
m_SettingsBuilder!!$ 5
.!!5 6%
BuildApiExecutionSettings!!6 O
(!!O P
commandLineArgs!!P _
)!!_ `
;!!` a
if"" 
("" 
executionSettings"" %
.""% &
targetPlatform""& 4
.""4 5
HasValue""5 =
)""= >%
RemotePlayerLogController## -
.##- .
instance##. 6
.##6 7
SetBuildTarget##7 E
(##E F
executionSettings##F W
.##W X
targetPlatform##X f
.##f g
Value##g l
)##l m
;##m n
}$$ 
catch%% 
(%% 
SetupException%% !
	exception%%" +
)%%+ ,
{&&  
HandleSetupException'' $
(''$ %
	exception''% .
)''. /
;''/ 0
return(( 
;(( 
})) 
try++ 
{,, 
Debug-- 
.-- 
Log-- 
(-- 
$str-- ;
+--< =%
ExecutionSettingsToString--> W
(--W X
executionSettings--X i
)--i j
)--j k
;--k l
m_TestRunnerApi.. 
...  
Execute..  '
(..' (
executionSettings..( 9
)..9 :
;..: ;
}// 
catch00 
(00 
	Exception00 
	exception00 &
)00& '
{11 
m_LogException22 
(22 
	exception22 (
)22( )
;22) *#
m_ExitEditorApplication33 '
(33' (
(33( )
int33) ,
)33, -
ReturnCodes33- 8
.338 9
RunError339 A
)33A B
;33B C
}44 
}55 	
internal77 
ExecutionSettings77 ""
BuildExecutionSettings77# 9
(779 :
string77: @
[77@ A
]77A B
commandLineArgs77C R
)77R S
{88 	
return99 
m_SettingsBuilder99 $
.99$ %"
BuildExecutionSettings99% ;
(99; <
commandLineArgs99< K
)99K L
;99L M
}:: 	
internal<< 
enum<< 
ReturnCodes<< !
{== 	
Ok>> 
=>> 
$num>> 
,>> 
Failed?? 
=?? 
$num?? 
,?? 
RunError@@ 
=@@ 
$num@@ 
,@@ &
PlatformNotFoundReturnCodeAA &
=AA' (
$numAA) *
}BB 	
internalDD 
voidDD 
SetUpCallbacksDD $
(DD$ %
ExecutionSettingsDD% 6
executionSettingsDD7 H
)DDH I
{EE 	%
RemotePlayerLogControllerFF %
.FF% &
instanceFF& .
.FF. /
SetLogsDirectoryFF/ ?
(FF? @
executionSettingsFF@ Q
.FFQ R
DeviceLogsDirectoryFFR e
)FFe f
;FFf g
varHH  
resultSavingCallbackHH $
=HH% &
ScriptableObjectHH' 7
.HH7 8
CreateInstanceHH8 F
<HHF G"
ResultsSavingCallbacksHHG ]
>HH] ^
(HH^ _
)HH_ `
;HH` a 
resultSavingCallbackII  
.II  !
m_ResultFilePathII! 1
=II2 3
executionSettingsII4 E
.IIE F
TestResultsFileIIF U
;IIU V
varKK 
logSavingCallbackKK !
=KK" #
ScriptableObjectKK$ 4
.KK4 5
CreateInstanceKK5 C
<KKC D
LogSavingCallbacksKKD V
>KKV W
(KKW X
)KKX Y
;KKY Z
m_TestRunnerApiMM 
.MM 
RegisterCallbacksMM -
(MM- . 
resultSavingCallbackMM. B
)MMB C
;MMC D
m_TestRunnerApiNN 
.NN 
RegisterCallbacksNN -
(NN- .
logSavingCallbackNN. ?
)NN? @
;NN@ A
m_TestRunnerApiOO 
.OO 
RegisterCallbacksOO -
(OO- .
ScriptableObjectOO. >
.OO> ?
CreateInstanceOO? M
<OOM N
ExitCallbacksOON [
>OO[ \
(OO\ ]
)OO] ^
,OO^ _
-OO` a
$numOOa c
)OOc d
;OOd e
}PP 	
internalRR 
voidRR 
ExitOnCompileErrorsRR )
(RR) *
)RR* +
{SS 	
ifTT 
(TT *
m_ScriptCompilationFailedCheckTT .
(TT. /
)TT/ 0
)TT0 1
{UU 
varVV 
handlingVV 
=VV &
s_ExceptionHandlingMappingVV 9
.VV9 :
FirstVV: ?
(VV? @
hVV@ A
=>VVB D
hVVE F
.VVF G
m_ExceptionTypeVVG V
==VVW Y
SetupExceptionVVZ h
.VVh i
ExceptionTypeVVi v
.VVv w$
ScriptCompilationFailed	VVw é
)
VVé è
;
VVè ê
m_LogErrorFormatWW  
(WW  !
handlingWW! )
.WW) *
	m_MessageWW* 3
,WW3 4
newWW5 8
objectWW9 ?
[WW? @
$numWW@ A
]WWA B
)WWB C
;WWC D#
m_ExitEditorApplicationXX '
(XX' (
handlingXX( 0
.XX0 1
m_ReturnCodeXX1 =
)XX= >
;XX> ?
}YY 
}ZZ 	
void\\  
HandleSetupException\\ !
(\\! "
SetupException\\" 0
	exception\\1 :
)\\: ;
{]] 	
ExceptionHandling^^ 
handling^^ &
=^^' (&
s_ExceptionHandlingMapping^^) C
.^^C D
FirstOrDefault^^D R
(^^R S
h^^S T
=>^^U W
h^^X Y
.^^Y Z
m_ExceptionType^^Z i
==^^j l
	exception^^m v
.^^v w
Type^^w {
)^^{ |
??^^} 
new
^^Ä É
ExceptionHandling
^^Ñ ï
(
^^ï ñ
	exception
^^ñ ü
.
^^ü †
Type
^^† §
,
^^§ •
$str
^^¶ Õ
+
^^Œ œ
	exception
^^– Ÿ
.
^^Ÿ ⁄
Type
^^⁄ ﬁ
,
^^ﬁ ﬂ
ReturnCodes
^^‡ Î
.
^^Î Ï
RunError
^^Ï Ù
)
^^Ù ı
;
^^ı ˆ
m_LogErrorFormat__ 
(__ 
handling__ %
.__% &
	m_Message__& /
,__/ 0
	exception__1 :
.__: ;
Details__; B
)__B C
;__C D#
m_ExitEditorApplication`` #
(``# $
handling``$ ,
.``, -
m_ReturnCode``- 9
)``9 :
;``: ;
}aa 	
privatecc 
classcc 
ExceptionHandlingcc '
{dd 	
internalee 
SetupExceptionee #
.ee# $
ExceptionTypeee$ 1
m_ExceptionTypeee2 A
;eeA B
internalff 
stringff 
	m_Messageff %
;ff% &
internalgg 
intgg 
m_ReturnCodegg %
;gg% &
publichh 
ExceptionHandlinghh $
(hh$ %
SetupExceptionhh% 3
.hh3 4
ExceptionTypehh4 A
exceptionTypehhB O
,hhO P
stringhhQ W
messagehhX _
,hh_ `
ReturnCodeshha l

returnCodehhm w
)hhw x
{ii 
m_ExceptionTypejj 
=jj  !
exceptionTypejj" /
;jj/ 0
	m_Messagekk 
=kk 
messagekk #
;kk# $
m_ReturnCodell 
=ll 
(ll  
intll  #
)ll# $

returnCodell$ .
;ll. /
}mm 
}nn 	
staticpp 
ExceptionHandlingpp  
[pp  !
]pp! "&
s_ExceptionHandlingMappingpp# =
=pp> ?
newpp@ C
[ppC D
]ppD E
{qq 	
newrr 
ExceptionHandlingrr !
(rr! "
SetupExceptionrr" 0
.rr0 1
ExceptionTyperr1 >
.rr> ?#
ScriptCompilationFailedrr? V
,rrV W
$strrrX y
,rry z
ReturnCodes	rr{ Ü
.
rrÜ á
RunError
rrá è
)
rrè ê
,
rrê ë
newss 
ExceptionHandlingss !
(ss! "
SetupExceptionss" 0
.ss0 1
ExceptionTypess1 >
.ss> ?
PlatformNotFoundss? O
,ssO P
$strssQ q
,ssq r
ReturnCodessss ~
.ss~ '
PlatformNotFoundReturnCode	ss ô
)
ssô ö
,
ssö õ
newtt 
ExceptionHandlingtt !
(tt! "
SetupExceptiontt" 0
.tt0 1
ExceptionTypett1 >
.tt> ?$
TestSettingsFileNotFoundtt? W
,ttW X
$strttY 
,	tt Ä
ReturnCodes
ttÅ å
.
ttå ç
RunError
ttç ï
)
ttï ñ
}uu 	
;uu	 

privateww 
staticww 
stringww %
ExecutionSettingsToStringww 7
(ww7 8
Apiww8 ;
.ww; <
ExecutionSettingsww< M
executionSettingswwN _
)ww_ `
{xx 	
ifyy 
(yy 
executionSettingsyy !
==yy" $
nullyy% )
)yy) *
{zz 
return{{ 
$str{{ 
;{{ 
}|| 
if~~ 
(~~ 
executionSettings~~ !
.~~! "
filters~~" )
==~~* ,
null~~- 1
||~~2 4
executionSettings~~5 F
.~~F G
filters~~G N
.~~N O
Length~~O U
==~~V X
$num~~Y Z
)~~Z [
{ 
return
ÄÄ 
$str
ÄÄ "
;
ÄÄ" #
}
ÅÅ 
return
ÉÉ 
$str
ÉÉ !
+
ÉÉ" #
executionSettings
ÉÉ$ 5
.
ÉÉ5 6
filters
ÉÉ6 =
[
ÉÉ= >
$num
ÉÉ> ?
]
ÉÉ? @
.
ÉÉ@ A
testMode
ÉÉA I
;
ÉÉI J
}
ÑÑ 	
}
ÖÖ 
}ÜÜ •

∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\EditorAssemblyWrapper.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class !
EditorAssemblyWrapper (
:) *
AssemblyWrapper+ :
{ 
public !
EditorAssemblyWrapper $
($ %
Assembly% -
assembly. 6
)6 7
:		 
base		 
(		 
assembly		 
)		 
{		 
}		 
public 
override 
AssemblyName $
[$ %
]% &#
GetReferencedAssemblies' >
(> ?
)? @
{ 	
return 
Assembly 
. #
GetReferencedAssemblies 3
(3 4
)4 5
;5 6
} 	
public 
override 
string 
Location '
{( )
get* -
{. /
return0 6
Assembly7 ?
.? @
Location@ H
;H I
}J K
}L M
} 
} ◊
ßD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\RunData.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal 
class 
RunData 
: 
ScriptableSingleton 0
<0 1
RunData1 8
>8 9
{ 
public 
bool 
	isRunning 
; 
public 
ExecutionSettings  
executionSettings! 2
;2 3
} 
} §
¢D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\ITestRunnerApi.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
internal 
	interface 
ITestRunnerApi %
{ 
string 
Execute 
( 
ExecutionSettings (
executionSettings) :
): ;
;; <
void 
RegisterCallbacks 
< 
T  
>  !
(! "
T" #
testCallbacks$ 1
,1 2
int3 6
priority7 ?
=@ A
$numB C
)C D
whereE J
TK L
:M N

ICallbacksO Y
;Y Z
void		 
UnregisterCallbacks		  
<		  !
T		! "
>		" #
(		# $
T		$ %
testCallbacks		& 3
)		3 4
where		5 :
T		; <
:		= >

ICallbacks		? I
;		I J
void

 
RetrieveTestList

 
(

 
TestMode

 &
testMode

' /
,

/ 0
Action

1 7
<

7 8
ITestAdaptor

8 D
>

D E
callback

F N
)

N O
;

O P
} 
} Ω 
ØD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\RequirePlatformSupportAttribute.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Assembly		% -
|		. /
AttributeTargets		0 @
.		@ A
Class		A F
|		G H
AttributeTargets		I Y
.		Y Z
Method		Z `
)		` a
]		a b
public

 

class

 +
RequirePlatformSupportAttribute

 0
:

1 2
NUnitAttribute

3 A
,

A B
IApplyToTest

C O
{ 
public +
RequirePlatformSupportAttribute .
(. /
params/ 5
BuildTarget6 A
[A B
]B C
	platformsD M
)M N
{ 	
this 
. 
	platforms 
= 
	platforms &
;& '
} 	
public 
BuildTarget 
[ 
] 
	platforms &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
void 
IApplyToTest 
. 
ApplyToTest %
(% &
Test& *
test+ /
)/ 0
{ 	
test 
. 

Properties 
. 
Add 
(  
PropertyNames  -
.- .
Category. 6
,6 7
string8 >
.> ?
Format? E
(E F
$strF c
,c d
stringe k
.k l
Joinl p
(p q
$strq u
,u v
	platforms	w Ä
.
Ä Å
Select
Å á
(
á à
p
à â
=>
ä å
p
ç é
.
é è
ToString
è ó
(
ó ò
)
ò ô
)
ô ö
.
ö õ
OrderBy
õ ¢
(
¢ £
p
£ §
=>
• ß
p
® ©
)
© ™
.
™ ´
ToArray
´ ≤
(
≤ ≥
)
≥ ¥
)
¥ µ
)
µ ∂
)
∂ ∑
;
∑ ∏
if 
( 
! 
	platforms 
. 
All 
( 
p  
=>! #
BuildPipeline$ 1
.1 2"
IsBuildTargetSupported2 H
(H I
BuildTargetGroupI Y
.Y Z
UnknownZ a
,a b
pc d
)d e
)e f
)f g
{ 
var 
missingPlatforms $
=% &
	platforms' 0
.0 1
Where1 6
(6 7
p7 8
=>9 ;
!< =
BuildPipeline= J
.J K"
IsBuildTargetSupportedK a
(a b
BuildTargetGroupb r
.r s
Unknowns z
,z {
p| }
)} ~
)~ 
.	 Ä
Select
Ä Ü
(
Ü á
p
á à
=>
â ã
p
å ç
.
ç é
ToString
é ñ
(
ñ ó
)
ó ò
)
ò ô
.
ô ö
ToArray
ö °
(
° ¢
)
¢ £
;
£ §
string 

skipReason !
=" #
$str$ }
+~ 
string
Ä Ü
.
Ü á
Join
á ã
(
ã å
$str
å ê
,
ê ë
missingPlatforms
í ¢
)
¢ £
;
£ §
test 
. 
RunState 
= 
RunState  (
.( )
Skipped) 0
;0 1
test 
. 

Properties 
.  
Add  #
(# $
PropertyNames$ 1
.1 2

SkipReason2 <
,< =

skipReason> H
)H I
;I J
} 
} 	
}   
}!! ãY
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\EditorEnumeratorTestWorkItem.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class (
EditorEnumeratorTestWorkItem /
:0 1
UnityWorkItem2 ?
{ 
private 
TestCommand 
	m_Command %
;% &
public (
EditorEnumeratorTestWorkItem +
(+ ,

TestMethod, 6
test7 ;
,; <
ITestFilter= H
filterI O
)O P
: 
base 
( 
test 
, 
null 
) 
{ 	
	m_Command 
= 
TestCommandBuilder *
.* +
BuildTestCommand+ ;
(; <
test< @
,@ A
filterB H
)H I
;I J
} 	
private 
static (
IEnumerableTestMethodCommand 31
%FindFirstIEnumerableTestMethodCommand4 Y
(Y Z
TestCommandZ e
commandf m
)m n
{ 	
if 
( 
command 
== 
null 
)  
{ 
return 
null 
; 
} 
if 
( 
command 
is (
IEnumerableTestMethodCommand 7
)7 8
{ 
return 
( (
IEnumerableTestMethodCommand 4
)4 5
command5 <
;< =
}   
if"" 
("" 
command"" 
is"" !
DelegatingTestCommand"" 0
)""0 1
{## 
var$$ !
delegatingTestCommand$$ )
=$$* +
($$, -!
DelegatingTestCommand$$- B
)$$B C
command$$C J
;$$J K
return%% 1
%FindFirstIEnumerableTestMethodCommand%% <
(%%< =!
delegatingTestCommand%%= R
.%%R S
GetInnerCommand%%S b
(%%b c
)%%c d
)%%d e
;%%e f
}&& 
return'' 
null'' 
;'' 
}(( 	
	protected** 
override** 
IEnumerable** &
PerformWork**' 2
(**2 3
)**3 4
{++ 	
if,, 
(,, 
IsCancelledRun,, 
(,, 
),,  
),,  !
{-- 
yield.. 
break.. 
;.. 
}// 
if11 
(11 $
m_DontRunRestoringResult11 (
)11( )
{22 
if33 
(33 !
EditModeTestCallbacks33 )
.33) * 
RestoringTestContext33* >
==33? A
null33B F
)33F G
{44 
throw55 
new55 "
NullReferenceException55 4
(554 5
$str555 V
)55V W
;55W X
}66 !
EditModeTestCallbacks77 %
.77% & 
RestoringTestContext77& :
(77: ;
)77; <
;77< =
Result88 
=88 
Context88  
.88  !
CurrentResult88! .
;88. /
yield99 
break99 
;99 
}:: 
try<< 
{== 
if>> 
(>> 
IsCancelledRun>> "
(>>" #
)>># $
)>>$ %
{?? 
yield@@ 
break@@ 
;@@  
}AA 
ifCC 
(CC 
	m_CommandCC 
isCC  
SkipCommandCC! ,
)CC, -
{DD 
	m_CommandEE 
.EE 
ExecuteEE %
(EE% &
ContextEE& -
)EE- .
;EE. /
ResultFF 
=FF 
ContextFF $
.FF$ %
CurrentResultFF% 2
;FF2 3
yieldGG 
breakGG 
;GG  
}HH 
varKK "
firstEnumerableCommandKK *
=KK+ ,1
%FindFirstIEnumerableTestMethodCommandKK- R
(KKR S
	m_CommandKKS \
)KK\ ]
;KK] ^
ifLL 
(LL "
firstEnumerableCommandLL *
==LL+ -
nullLL. 2
)LL2 3
{MM 
ContextNN 
.NN 
CurrentResultNN )
.NN) *
	SetResultNN* 3
(NN3 4
ResultStateNN4 ?
.NN? @
ErrorNN@ E
,NNE F
$str	NNG ã
)
NNã å
;
NNå ç
yieldOO 
breakOO 
;OO  
}PP 
ifQQ 
(QQ 
ContextQQ 
.QQ 
TestCaseTimeoutQQ +
==QQ, .
$numQQ/ 0
)QQ0 1
{RR 
ContextSS 
.SS 
TestCaseTimeoutSS +
=SS, -
k_DefaultTimeoutSS. >
;SS> ?
}TT 
ifUU 
(UU 
	m_CommandUU 
.UU 
TestUU "
.UU" #
MethodUU# )
.UU) *

ReturnTypeUU* 4
.UU4 5
IsTypeUU5 ;
(UU; <
typeofUU< B
(UUB C
IEnumeratorUUC N
)UUN O
)UUO P
)UUP Q
{VV 
ifWW 
(WW 
	m_CommandWW !
isWW" $(
ApplyChangesToContextCommandWW% A
)WWA B
{XX 
varYY (
applyChangesToContextCommandYY 8
=YY9 :
(YY; <
(YY< =(
ApplyChangesToContextCommandYY= Y
)YYY Z
	m_CommandYYZ c
)YYc d
;YYd e(
applyChangesToContextCommandZZ 4
.ZZ4 5
ApplyChangesZZ5 A
(ZZA B
ContextZZB I
)ZZI J
;ZZJ K
	m_Command[[ !
=[[" #(
applyChangesToContextCommand[[$ @
.[[@ A
GetInnerCommand[[A P
([[P Q
)[[Q R
;[[R S
}\\ 
var^^ 
innerCommand^^ $
=^^% &
	m_Command^^' 0
as^^1 3(
IEnumerableTestMethodCommand^^4 P
;^^P Q
if__ 
(__ 
innerCommand__ $
==__% '
null__( ,
)__, -
{`` 
Debugaa 
.aa 
Logaa !
(aa! "
$straa" ?
)aa? @
;aa@ A
throwbb 
newbb !
	Exceptionbb" +
(bb+ ,
$strbb, u
)bbu v
;bbv w
}cc 
foreachee 
(ee 
varee  
workItemStepee! -
inee. 0
innerCommandee1 =
.ee= >
ExecuteEnumerableee> O
(eeO P
ContexteeP W
)eeW X
)eeX Y
{ff 
ifgg 
(gg 
IsCancelledRungg *
(gg* +
)gg+ ,
)gg, -
{hh 
yieldii !
breakii" '
;ii' (
}jj 
ifll 
(ll 
workItemStepll (
isll) +
TestEnumeratorll, :
)ll: ;
{mm 
ifnn 
(nn   
EnumeratorStepHelpernn  4
.nn4 5&
UpdateEnumeratorPcIfNeedednn5 O
(nnO P
TestEnumeratornnP ^
.nn^ _

Enumeratornn_ i
)nni j
)nnj k
{oo 
yieldpp  %
returnpp& ,
newpp- 0/
#RestoreTestContextAfterDomainReloadpp1 T
(ppT U
)ppU V
;ppV W
}qq 
continuerr $
;rr$ %
}ss 
ifuu 
(uu 
workItemStepuu (
isuu) +
AsyncOperationuu, :
)uu: ;
{vv 
varww 
asyncOperationww  .
=ww/ 0
(ww1 2
AsyncOperationww2 @
)ww@ A
workItemStepwwA M
;wwM N
whilexx !
(xx" #
!xx# $
asyncOperationxx$ 2
.xx2 3
isDonexx3 9
)xx9 :
{yy 
ifzz  "
(zz# $
IsCancelledRunzz$ 2
(zz2 3
)zz3 4
)zz4 5
{{{  !
yield||$ )
break||* /
;||/ 0
}}}  !
yield  %
return& ,
null- 1
;1 2
}
ÄÄ 
continue
ÅÅ $
;
ÅÅ$ %
}
ÇÇ $
ResultedInDomainReload
ÑÑ .
=
ÑÑ/ 0
false
ÑÑ1 6
;
ÑÑ6 7
if
ÜÜ 
(
ÜÜ 
workItemStep
ÜÜ (
is
ÜÜ) ++
IEditModeTestYieldInstruction
ÜÜ, I
)
ÜÜI J
{
áá 
var
àà *
editModeTestYieldInstruction
àà  <
=
àà= >
(
àà? @+
IEditModeTestYieldInstruction
àà@ ]
)
àà] ^
workItemStep
àà^ j
;
ààj k
yield
ââ !
return
ââ" (*
editModeTestYieldInstruction
ââ) E
;
ââE F
var
ää 

enumerator
ää  *
=
ää+ ,*
editModeTestYieldInstruction
ää- I
.
ääI J
Perform
ääJ Q
(
ääQ R
)
ääR S
;
ääS T
while
ãã !
(
ãã" #
true
ãã# '
)
ãã' (
{
åå 
bool
çç  $
moveNext
çç% -
;
çç- .
try
éé  #
{
èè  !
moveNext
êê$ ,
=
êê- .

enumerator
êê/ 9
.
êê9 :
MoveNext
êê: B
(
êêB C
)
êêC D
;
êêD E
}
ëë  !
catch
íí  %
(
íí& '
	Exception
íí' 0
e
íí1 2
)
íí2 3
{
ìì  !
Context
îî$ +
.
îî+ ,
CurrentResult
îî, 9
.
îî9 :
RecordException
îî: I
(
îîI J
e
îîJ K
)
îîK L
;
îîL M
break
ïï$ )
;
ïï) *
}
ññ  !
if
òò  "
(
òò# $
!
òò$ %
moveNext
òò% -
)
òò- .
{
ôô  !
break
öö$ )
;
öö) *
}
õõ  !
yield
úú  %
return
úú& ,
null
úú- 1
;
úú1 2
}
ùù 
}
ûû 
else
üü 
{
†† 
yield
°° !
return
°°" (
workItemStep
°°) 5
;
°°5 6
}
¢¢ 
}
££ 
Result
•• 
=
•• 
Context
•• $
.
••$ %
CurrentResult
••% 2
;
••2 3
EditorApplication
¶¶ %
.
¶¶% &
	isPlaying
¶¶& /
=
¶¶0 1
false
¶¶2 7
;
¶¶7 8
yield
ßß 
return
ßß  
null
ßß! %
;
ßß% &
}
®® 
}
©© 
finally
™™ 
{
´´ 
WorkItemComplete
¨¨  
(
¨¨  !
)
¨¨! "
;
¨¨" #
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
bool
∞∞ 
IsCancelledRun
∞∞ #
(
∞∞# $
)
∞∞$ %
{
±± 	
return
≤≤ 
Context
≤≤ 
.
≤≤ 
ExecutionStatus
≤≤ *
==
≤≤+ -!
TestExecutionStatus
≤≤. A
.
≤≤A B
AbortRequested
≤≤B P
||
≤≤Q S
Context
≤≤T [
.
≤≤[ \
ExecutionStatus
≤≤\ k
==
≤≤l n"
TestExecutionStatus≤≤o Ç
.≤≤Ç É
StopRequested≤≤É ê
;≤≤ê ë
}
≥≥ 	
}
¥¥ 
}µµ ¬A
¡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\EditorLoadedTestAssemblyProvider.cs
	namespace 	
UnityEditor
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
 ,
 EditorLoadedTestAssemblyProvider

 3
:

4 5-
!IEditorLoadedTestAssemblyProvider

6 W
{ 
private 
const 
string 
k_NunitAssemblyName 0
=1 2
$str3 D
;D E
private 
const 
string $
k_TestRunnerAssemblyName 5
=6 7
$str8 P
;P Q
internal 
const 
string ,
 k_PerformanceTestingAssemblyName >
=? @
$strA [
;[ \
private 
readonly "
IEditorAssembliesProxy /#
m_EditorAssembliesProxy0 G
;G H
private 
readonly 
ScriptAssembly '
[' (
]( )'
m_AllEditorScriptAssemblies* E
;E F
private 
readonly 
PrecompiledAssembly ,
[, -
]- .&
m_AllPrecompiledAssemblies/ I
;I J
public ,
 EditorLoadedTestAssemblyProvider /
(/ 0,
 IEditorCompilationInterfaceProxy0 P%
compilationInterfaceProxyQ j
,j k#
IEditorAssembliesProxy	l Ç#
editorAssembliesProxy
É ò
)
ò ô
{ 	#
m_EditorAssembliesProxy #
=$ %!
editorAssembliesProxy& ;
;; <'
m_AllEditorScriptAssemblies '
=( )%
compilationInterfaceProxy* C
.C D(
GetAllEditorScriptAssembliesD `
(` a
)a b
;b c&
m_AllPrecompiledAssemblies &
=' (%
compilationInterfaceProxy) B
.B C'
GetAllPrecompiledAssembliesC ^
(^ _
)_ `
;` a
} 	
public 
List 
< 
IAssemblyWrapper $
>$ %&
GetAssembliesGroupedByType& @
(@ A
TestPlatformA M
modeN R
)R S
{ 	
var 

assemblies 
= +
GetAssembliesGroupedByTypeAsync <
(< =
mode= A
)A B
;B C
while 
( 

assemblies 
. 
MoveNext &
(& '
)' (
)( )
{ 
}   
return"" 

assemblies"" 
."" 
Current"" %
.""% &
Where""& +
(""+ ,
pair"", 0
=>""1 3
mode""4 8
.""8 9
IsFlagIncluded""9 G
(""G H
pair""H L
.""L M
Key""M P
)""P Q
)""Q R
.""R S

SelectMany""S ]
(""] ^
pair""^ b
=>""c e
pair""f j
.""j k
Value""k p
)""p q
.""q r
ToList""r x
(""x y
)""y z
;""z {
}## 	
public%% 
IEnumerator%% 
<%% 
IDictionary%% &
<%%& '
TestPlatform%%' 3
,%%3 4
List%%5 9
<%%9 :
IAssemblyWrapper%%: J
>%%J K
>%%K L
>%%L M+
GetAssembliesGroupedByTypeAsync%%N m
(%%m n
TestPlatform%%n z
mode%%{ 
)	%% Ä
{&& 	
IAssemblyWrapper'' 
['' 
]'' 
loadedAssemblies'' /
=''0 1#
m_EditorAssembliesProxy''2 I
.''I J
loadedAssemblies''J Z
;''Z [
IDictionary)) 
<)) 
TestPlatform)) $
,))$ %
List))& *
<))* +
IAssemblyWrapper))+ ;
>)); <
>))< =
result))> D
=))E F
new))G J

Dictionary))K U
<))U V
TestPlatform))V b
,))b c
List))d h
<))h i
IAssemblyWrapper))i y
>))y z
>))z {
()){ |
)))| }
{** 
{++ 
TestPlatform++ 
.++ 
EditMode++ &
,++& '
new++( +
List++, 0
<++0 1
IAssemblyWrapper++1 A
>++A B
(++B C
)++C D
}++E F
,++F G
{,, 
TestPlatform,, 
.,, 
PlayMode,, &
,,,& '
new,,( +
List,,, 0
<,,0 1
IAssemblyWrapper,,1 A
>,,A B
(,,B C
),,C D
},,E F
}-- 
;-- 
foreach// 
(// 
var// 
loadedAssembly// '
in//( *
loadedAssemblies//+ ;
)//; <
{00 
if11 
(11 
loadedAssembly11 "
.11" ##
GetReferencedAssemblies11# :
(11: ;
)11; <
.11< =
Any11= @
(11@ A
x11A B
=>11C E
x11F G
.11G H
Name11H L
==11M O
k_NunitAssemblyName11P c
||11d f
x11g h
.11h i
Name11i m
==11n p%
k_TestRunnerAssemblyName	11q â
||
11ä å
x
11ç é
.
11é è
Name
11è ì
==
11î ñ.
 k_PerformanceTestingAssemblyName
11ó ∑
)
11∑ ∏
)
11∏ π
{22 
var33 
assemblyName33 $
=33% &
new33' *
FileInfo33+ 3
(333 4
loadedAssembly334 B
.33B C
Location33C K
)33K L
.33L M
Name33M Q
;33Q R
var44 
scriptAssemblies44 (
=44) *'
m_AllEditorScriptAssemblies44+ F
.44F G
Where44G L
(44L M
x44M N
=>44O Q
x44R S
.44S T
Filename44T \
==44] _
assemblyName44` l
)44l m
.44m n
ToList44n t
(44t u
)44u v
;44v w
var55 !
precompiledAssemblies55 -
=55. /&
m_AllPrecompiledAssemblies550 J
.55J K
Where55K P
(55P Q
x55Q R
=>55S U
new55V Y
FileInfo55Z b
(55b c
x55c d
.55d e
Path55e i
)55i j
.55j k
Name55k o
==55p r
assemblyName55s 
)	55 Ä
.
55Ä Å
ToList
55Å á
(
55á à
)
55à â
;
55â ä
if66 
(66 
scriptAssemblies66 (
.66( )
Count66) .
<66/ 0
$num661 2
&&663 5!
precompiledAssemblies666 K
.66K L
Count66L Q
<66R S
$num66T U
)66U V
{77 
continue88  
;88  !
}99 
var;; 
assemblyFlags;; %
=;;& '
scriptAssemblies;;( 8
.;;8 9
Any;;9 <
(;;< =
);;= >
?;;? @
scriptAssemblies;;A Q
.;;Q R
Single;;R X
(;;X Y
);;Y Z
.;;Z [
Flags;;[ `
:;;a b!
precompiledAssemblies;;c x
.;;x y
Single;;y 
(	;; Ä
)
;;Ä Å
.
;;Å Ç
Flags
;;Ç á
;
;;á à
var<< 
assemblyType<< $
=<<% &
(<<' (
assemblyFlags<<( 5
&<<6 7
AssemblyFlags<<8 E
.<<E F

EditorOnly<<F P
)<<P Q
==<<R T
AssemblyFlags<<U b
.<<b c

EditorOnly<<c m
?<<n o
TestPlatform<<p |
.<<| }
EditMode	<<} Ö
:
<<Ü á
TestPlatform
<<à î
.
<<î ï
PlayMode
<<ï ù
;
<<ù û
result== 
[== 
assemblyType== '
]==' (
.==( )
Add==) ,
(==, -
loadedAssembly==- ;
)==; <
;==< =
yield>> 
return>>  
null>>! %
;>>% &
}?? 
}@@ 
yieldBB 
returnBB 
resultBB 
;BB  
}CC 	
}DD 
}EE ù
∫D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PrebuildSetupAttributeFinder.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class (
PrebuildSetupAttributeFinder /
:0 1
AttributeFinderBase2 E
<E F
IPrebuildSetupF T
,T U"
PrebuildSetupAttributeV l
>l m
{ 
public (
PrebuildSetupAttributeFinder +
(+ ,
), -
:. /
base0 4
(4 5
(5 6
	attribute6 ?
)? @
=>A C
	attributeD M
.M N
TargetClassN Y
)Y Z
{[ \
}\ ]
} 
}		 “
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 6
)6 7
]7 8
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 <
)		< =
]		= >
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
 C
)

C D
]

D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str E
)E F
]F G
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str J
)J K
]K L
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str "
)" #
]# $©
±D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\SaveModiedSceneTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class 
SaveModiedSceneTask &
:' (
TestTaskBase) 5
{ 
internal		 
Func		 
<		 
bool		 
>		 2
&SaveCurrentModifiedScenesIfUserWantsTo		 B
=		C D
EditorSceneManager

 
.

 2
&SaveCurrentModifiedScenesIfUserWantsTo

 E
;

E F
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
var 
	cancelled 
= 
! 2
&SaveCurrentModifiedScenesIfUserWantsTo C
(C D
)D E
;E F
if 
( 
	cancelled 
) 
{ 
throw 
new $
TestRunCanceledException 2
(2 3
)3 4
;4 5
} 
yield 
break 
; 
} 	
} 
} ˇ
≠D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRun\Tasks\PerformUndoTask.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
TestRun+ 2
.2 3
Tasks3 8
{ 
internal 
class 
PerformUndoTask "
:# $
TestTaskBase% 1
{ 
private		 
const		 
double		 
warningThreshold		 -
=		. /
$num		0 4
;		4 5
internal 
Action 
< 
int 
>  
RevertAllDownToGroup 1
=2 3
Undo4 8
.8 9 
RevertAllDownToGroup9 M
;M N
internal 
Action 
< 
string 
> 

LogWarning  *
=+ ,
Debug- 2
.2 3

LogWarning3 =
;= >
internal 
Action 
< 
string 
, 
string  &
,& '
float( -
>- .
DisplayProgressBar/ A
=B C
EditorUtilityD Q
.Q R
DisplayProgressBarR d
;d e
internal 
Action 
ClearProgressBar (
=) *
EditorUtility+ 8
.8 9
ClearProgressBar9 I
;I J
internal 
Func 
< 
DateTime 
> 
TimeNow  '
=( )
(* +
)+ ,
=>- /
DateTime0 8
.8 9
Now9 <
;< =
public 
override 
IEnumerator #
Execute$ +
(+ ,
TestJobData, 7
testJobData8 C
)C D
{ 	
if 
( 
testJobData 
. 
	undoGroup %
<& '
$num( )
)) *
{ 
yield 
break 
; 
} 
DisplayProgressBar 
( 
$str %
,% &
$str' G
,G H
$numI J
)J K
;K L
var 
undoStartTime 
= 
TimeNow  '
(' (
)( )
;) * 
RevertAllDownToGroup  
(  !
testJobData! ,
., -
	undoGroup- 6
)6 7
;7 8
var 
	timeDelta 
= 
TimeNow #
(# $
)$ %
-& '
undoStartTime( 5
;5 6
if 
( 
	timeDelta 
. 
TotalMilliseconds +
>=, .
warningThreshold/ ?
)? @
{   

LogWarning!! 
(!! 
$"!! ,
 Undo after editor test run took !! =
{!!= >
	timeDelta!!> G
.!!G H
Seconds!!H O
}!!O P
 second!!P W
{!!W X
(!!X Y
	timeDelta!!Y b
.!!b c
Seconds!!c j
==!!k m
$num!!n o
?!!p q
$str!!r t
:!!u v
$str!!w z
)!!z {
}!!{ |
.!!| }
"!!} ~
)!!~ 
;	!! Ä
}"" 
ClearProgressBar$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ô
¿D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\EditorCompilationInterfaceProxy.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class +
EditorCompilationInterfaceProxy 2
:3 4,
 IEditorCompilationInterfaceProxy5 U
{ 
public 
ScriptAssembly 
[ 
] (
GetAllEditorScriptAssemblies  <
(< =
)= >
{ 	
return		 &
EditorCompilationInterface		 -
.		- .
Instance		. 6
.		6 7(
GetAllEditorScriptAssemblies		7 S
(		S T&
EditorCompilationInterface		T n
.		n o8
+GetAdditionalEditorScriptCompilationOptions			o ö
(
		ö õ
)
		õ ú
)
		ú ù
;
		ù û
}

 	
public 
PrecompiledAssembly "
[" #
]# $'
GetAllPrecompiledAssemblies% @
(@ A
)A B
{ 	
return &
EditorCompilationInterface -
.- .
Instance. 6
.6 7'
GetAllPrecompiledAssemblies7 R
(R S
)S T
;T U
} 	
} 
} ó
¬D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\AssemblyCompilationErrorsMessage.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
class ,
 AssemblyCompilationErrorsMessage 3
:4 5
Message6 =
{ 
public 
string 
assembly 
; 
public 
string 
[ 
] 
errors 
; 
public ,
 AssemblyCompilationErrorsMessage /
(/ 0
)0 1
{		 	
type

 
=

 
$str

 .
;

. /
} 	
} 
} òç
©D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\Views\TestListGUIBase.cs
	namespace

 	
UnityEditor
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
* +
GUI

+ .
{ 
internal 
abstract 
class 
TestListGUI '
{ 
private 
static 
readonly 

GUIContent  *!
s_GUIRunSelectedTests+ @
=A B
EditorGUIUtilityC S
.S T
TrTextContentT a
(a b
$strb p
,p q
$str	r à
)
à â
;
â ä
private 
static 
readonly 

GUIContent  *
s_GUIRunAllTests+ ;
=< =
EditorGUIUtility> N
.N O
TrTextContentO \
(\ ]
$str] f
,f g
$strh w
)w x
;x y
private 
static 
readonly 

GUIContent  *!
s_GUIRerunFailedTests+ @
=A B
EditorGUIUtilityC S
.S T
TrTextContentT a
(a b
$strb p
,p q
$str	r ä
)
ä ã
;
ã å
private 
static 
readonly 

GUIContent  *
s_GUIRun+ 3
=4 5
EditorGUIUtility6 F
.F G
TrTextContentG T
(T U
$strU Z
)Z [
;[ \
private 
static 
readonly 

GUIContent  *
s_GUIRunUntilFailed+ >
=? @
EditorGUIUtilityA Q
.Q R
TrTextContentR _
(_ `
$str` r
)r s
;s t
private 
static 
readonly 

GUIContent  *
s_GUIRun100Times+ ;
=< =
EditorGUIUtility> N
.N O
TrTextContentO \
(\ ]
$str] l
)l m
;m n
private 
static 
readonly 

GUIContent  *
s_GUIOpenTest+ 8
=9 :
EditorGUIUtility; K
.K L
TrTextContentL Y
(Y Z
$strZ l
)l m
;m n
private 
static 
readonly 

GUIContent  *
s_GUIOpenErrorLine+ =
=> ?
EditorGUIUtility@ P
.P Q
TrTextContentQ ^
(^ _
$str_ p
)p q
;q r
private 
static 
readonly 

GUIContent  *
s_GUIClearResults+ <
== >
EditorGUIUtility? O
.O P
TrTextContentP ]
(] ^
$str^ m
,m n
$str	o á
)
á à
;
à â
[ 	
SerializeField	 
] 
	protected 
TestRunnerWindow "
m_Window# +
;+ ,
[ 	
SerializeField	 
] 
public 
List 
< 
TestRunnerResult $
>$ %
newResultList& 3
=4 5
new6 9
List: >
<> ?
TestRunnerResult? O
>O P
(P Q
)Q R
;R S
[ 	
SerializeField	 
] 
private 
string 
m_ResultText #
;# $
[ 	
SerializeField	 
] 
private 
string 
m_ResultStacktrace )
;) *
private!! 
TreeViewController!! "
m_TestListTree!!# 1
;!!1 2
["" 	
SerializeField""	 
]"" 
internal## 
TreeViewState## 
m_TestListState## .
;##. /
[$$ 	
SerializeField$$	 
]$$ 
internal%% 
TestRunnerUIFilter%% # 
m_TestRunnerUIFilter%%$ 8
=%%9 :
new%%; >
TestRunnerUIFilter%%? Q
(%%Q R
)%%R S
;%%S T
private'' 
Vector2'' 
m_TestInfoScroll'' (
,''( )
m_TestListScroll''* :
;'': ;
private(( 
string(( !
m_PreviousProjectPath(( ,
;((, -
private)) 
List)) 
<)) 
TestRunnerResult)) %
>))% &
m_QueuedResults))' 6
=))7 8
new))9 <
List))= A
<))A B
TestRunnerResult))B R
>))R S
())S T
)))T U
;))U V
	protected++ 
TestListGUI++ 
(++ 
)++ 
{,, 	
MonoCecilHelper-- 
=-- 
new-- !
MonoCecilHelper--" 1
(--1 2
)--2 3
;--3 4 
AssetsDatabaseHelper..  
=..! "
new..# & 
AssetsDatabaseHelper..' ;
(..; <
)..< =
;..= >
	GuiHelper00 
=00 
new00 
	GuiHelper00 %
(00% &
MonoCecilHelper00& 5
,005 6 
AssetsDatabaseHelper007 K
)00K L
;00L M
}11 	
	protected33 
IMonoCecilHelper33 "
MonoCecilHelper33# 2
{333 4
get335 8
;338 9
private33: A
set33B E
;33E F
}33G H
	protected44 !
IAssetsDatabaseHelper44 ' 
AssetsDatabaseHelper44( <
{44= >
get44? B
;44B C
private44D K
set44L O
;44O P
}44Q R
	protected55 

IGuiHelper55 
	GuiHelper55 &
{55' (
get55) ,
;55, -
private55. 5
set556 9
;559 :
}55; <
	protected66 
UITestRunnerFilter66 $
[66$ %
]66% &
SelectedTestsFilter66' :
=>66; =$
GetSelectedTestsAsFilter66> V
(66V W
m_TestListTree66W e
.66e f
GetSelection66f r
(66r s
)66s t
)66t u
;66u v
public88 
abstract88 
TestMode88  
TestMode88! )
{88* +
get88, /
;88/ 0
}881 2
public:: 
virtual:: 
void:: 
PrintHeadPanel:: *
(::* +
)::+ ,
{;; 	
EditorGUILayout<< 
.<< 
BeginHorizontal<< +
(<<+ ,
EditorStyles<<, 8
.<<8 9
toolbar<<9 @
)<<@ A
;<<A B
using== 
(== 
new== 
	EditorGUI==  
.==  !
DisabledScope==! .
(==. /
IsBusy==/ 5
(==5 6
)==6 7
)==7 8
)==8 9
{>> 
if?? 
(?? 
	GUILayout?? 
.?? 
Button?? $
(??$ %
s_GUIRunAllTests??% 5
,??5 6
EditorStyles??7 C
.??C D
toolbarButton??D Q
)??Q R
)??R S
{@@ 
varAA 
filterAA 
=AA  
newAA! $
UITestRunnerFilterAA% 7
{AA8 9
categoryNamesAA9 F
=AAG H 
m_TestRunnerUIFilterAAI ]
.AA] ^
CategoryFilterAA^ l
}AAl m
;AAm n
RunTestsBB 
(BB 
filterBB #
)BB# $
;BB$ %

GUIUtilityCC 
.CC 
ExitGUICC &
(CC& '
)CC' (
;CC( )
}DD 
}EE 
usingFF 
(FF 
newFF 
	EditorGUIFF  
.FF  !
DisabledScopeFF! .
(FF. /
m_TestListTreeFF/ =
==FF> @
nullFFA E
||FFF H
!FFI J
m_TestListTreeFFJ X
.FFX Y
HasSelectionFFY e
(FFe f
)FFf g
||FFh j
IsBusyFFk q
(FFq r
)FFr s
)FFs t
)FFt u
{GG 
ifHH 
(HH 
	GUILayoutHH 
.HH 
ButtonHH $
(HH$ %!
s_GUIRunSelectedTestsHH% :
,HH: ;
EditorStylesHH< H
.HHH I
toolbarButtonHHI V
)HHV W
)HHW X
{II 
RunTestsJJ 
(JJ 
SelectedTestsFilterJJ 0
)JJ0 1
;JJ1 2

GUIUtilityKK 
.KK 
ExitGUIKK &
(KK& '
)KK' (
;KK( )
}LL 
}MM 
usingNN 
(NN 
newNN 
	EditorGUINN  
.NN  !
DisabledScopeNN! .
(NN. / 
m_TestRunnerUIFilterNN/ C
.NNC D
FailedCountNND O
==NNP R
$numNNS T
||NNU W
IsBusyNNX ^
(NN^ _
)NN_ `
)NN` a
)NNa b
{OO 
ifPP 
(PP 
	GUILayoutPP 
.PP 
ButtonPP $
(PP$ %!
s_GUIRerunFailedTestsPP% :
,PP: ;
EditorStylesPP< H
.PPH I
toolbarButtonPPI V
)PPV W
)PPW X
{QQ 
varRR 
failedTestnamesRR '
=RR( )
newRR* -
ListRR. 2
<RR2 3
stringRR3 9
>RR9 :
(RR: ;
)RR; <
;RR< =
foreachSS 
(SS 
varSS  
resultSS! '
inSS( *
newResultListSS+ 8
)SS8 9
{TT 
ifUU 
(UU 
resultUU "
.UU" #
isSuiteUU# *
)UU* +
continueVV $
;VV$ %
ifWW 
(WW 
resultWW "
.WW" #
resultStatusWW# /
==WW0 2
TestRunnerResultWW3 C
.WWC D
ResultStatusWWD P
.WWP Q
FailedWWQ W
||WWX Z
resultXX "
.XX" #
resultStatusXX# /
==XX0 2
TestRunnerResultXX3 C
.XXC D
ResultStatusXXD P
.XXP Q
InconclusiveXXQ ]
)XX] ^
failedTestnamesYY +
.YY+ ,
AddYY, /
(YY/ 0
resultYY0 6
.YY6 7
fullNameYY7 ?
)YY? @
;YY@ A
}ZZ 
RunTests[[ 
([[ 
new[[  
UITestRunnerFilter[[! 3
([[3 4
)[[4 5
{[[6 7
	testNames[[7 @
=[[A B
failedTestnames[[C R
.[[R S
ToArray[[S Z
([[Z [
)[[[ \
,[[\ ]
categoryNames[[^ k
=[[l m!
m_TestRunnerUIFilter	[[n Ç
.
[[Ç É
CategoryFilter
[[É ë
}
[[ë í
)
[[í ì
;
[[ì î

GUIUtility\\ 
.\\ 
ExitGUI\\ &
(\\& '
)\\' (
;\\( )
}]] 
}^^ 
using__ 
(__ 
new__ 
	EditorGUI__  
.__  !
DisabledScope__! .
(__. /
IsBusy__/ 5
(__5 6
)__6 7
)__7 8
)__8 9
{`` 
ifaa 
(aa 
	GUILayoutaa 
.aa 
Buttonaa $
(aa$ %
s_GUIClearResultsaa% 6
,aa6 7
EditorStylesaa8 D
.aaD E
toolbarButtonaaE R
)aaR S
)aaS T
{bb 
foreachcc 
(cc 
varcc  
resultcc! '
incc( *
newResultListcc+ 8
)cc8 9
{dd 
resultee 
.ee 
Clearee $
(ee$ %
)ee% &
;ee& '
}ff  
m_TestRunnerUIFiltergg (
.gg( )
UpdateCountersgg) 7
(gg7 8
newResultListgg8 E
)ggE F
;ggF G
Reloadhh 
(hh 
)hh 
;hh 

GUIUtilityii 
.ii 
ExitGUIii &
(ii& '
)ii' (
;ii( )
}jj 
}kk 
	GUILayoutll 
.ll 
FlexibleSpacell #
(ll# $
)ll$ %
;ll% &
EditorGUILayoutmm 
.mm 
EndHorizontalmm )
(mm) *
)mm* +
;mm+ ,
}nn 	
	protectedpp 
voidpp 
DrawFilterspp "
(pp" #
)pp# $
{qq 	
EditorGUILayoutrr 
.rr 
BeginHorizontalrr +
(rr+ ,
EditorStylesrr, 8
.rr8 9
toolbarrr9 @
)rr@ A
;rrA B 
m_TestRunnerUIFilterss  
.ss  !
Drawss! %
(ss% &
)ss& '
;ss' (
EditorGUILayouttt 
.tt 
EndHorizontaltt )
(tt) *
)tt* +
;tt+ ,
}uu 	
publicww 
boolww 
HasTreeDataww 
(ww  
)ww  !
{xx 	
returnyy 
m_TestListTreeyy !
!=yy" $
nullyy% )
;yy) *
}zz 	
public|| 
virtual|| 
void|| 
RenderTestList|| *
(||* +
)||+ ,
{}} 	
if~~ 
(~~ 
m_TestListTree~~ 
==~~ !
null~~" &
)~~& '
{ 
	GUILayout
ÄÄ 
.
ÄÄ 
Label
ÄÄ 
(
ÄÄ  
$str
ÄÄ  ,
)
ÄÄ, -
;
ÄÄ- .
return
ÅÅ 
;
ÅÅ 
}
ÇÇ 
m_TestListScroll
ÑÑ 
=
ÑÑ 
EditorGUILayout
ÑÑ .
.
ÑÑ. /
BeginScrollView
ÑÑ/ >
(
ÑÑ> ?
m_TestListScroll
ÑÑ? O
,
ÑÑO P
	GUILayout
ÖÖ 
.
ÖÖ 
ExpandWidth
ÖÖ %
(
ÖÖ% &
true
ÖÖ& *
)
ÖÖ* +
,
ÖÖ+ ,
	GUILayout
ÜÜ 
.
ÜÜ 
MaxWidth
ÜÜ "
(
ÜÜ" #
$num
ÜÜ# '
)
ÜÜ' (
)
ÜÜ( )
;
ÜÜ) *
if
àà 
(
àà 
m_TestListTree
àà 
.
àà 
data
àà #
.
àà# $
root
àà$ (
==
àà) +
null
àà, 0
||
àà1 3
m_TestListTree
àà4 B
.
ààB C
data
ààC G
.
ààG H
rowCount
ààH P
==
ààQ S
$num
ààT U
||
ààV X
(
ààY Z
!
ààZ [
m_TestListTree
àà[ i
.
àài j
isSearching
ààj u
&&
ààv x
!
àày z
m_TestListTreeààz à
.ààà â
dataààâ ç
.ààç é
GetItemààé ï
(ààï ñ
$numààñ ó
)ààó ò
.ààò ô
hasChildrenààô §
)àà§ •
)àà• ¶
{
ââ 
if
ää 
(
ää "
m_TestRunnerUIFilter
ää (
.
ää( )
IsFiltering
ää) 4
)
ää4 5
{
ãã 
if
åå 
(
åå 
	GUILayout
åå !
.
åå! "
Button
åå" (
(
åå( )
$str
åå) 8
)
åå8 9
)
åå9 :
{
çç "
m_TestRunnerUIFilter
éé ,
.
éé, -
Clear
éé- 2
(
éé2 3
)
éé3 4
;
éé4 5
m_TestListTree
èè &
.
èè& '

ReloadData
èè' 1
(
èè1 2
)
èè2 3
;
èè3 4
m_Window
êê  
.
êê  !
Repaint
êê! (
(
êê( )
)
êê) *
;
êê* +
}
ëë 
}
íí 
RenderNoTestsInfo
ìì !
(
ìì! "
)
ìì" #
;
ìì# $
}
îî 
else
ïï 
{
ññ 
var
óó 
treeRect
óó 
=
óó 
EditorGUILayout
óó .
.
óó. /
GetControlRect
óó/ =
(
óó= >
	GUILayout
óó> G
.
óóG H
ExpandHeight
óóH T
(
óóT U
true
óóU Y
)
óóY Z
,
óóZ [
	GUILayout
óó\ e
.
óóe f
ExpandWidth
óóf q
(
óóq r
true
óór v
)
óóv w
)
óów x
;
óóx y
var
òò '
treeViewKeyboardControlId
òò -
=
òò. /

GUIUtility
òò0 :
.
òò: ;
GetControlID
òò; G
(
òòG H
	FocusType
òòH Q
.
òòQ R
Keyboard
òòR Z
)
òòZ [
;
òò[ \
m_TestListTree
öö 
.
öö 
OnGUI
öö $
(
öö$ %
treeRect
öö% -
,
öö- .'
treeViewKeyboardControlId
öö/ H
)
ööH I
;
ööI J
}
õõ 
EditorGUILayout
ùù 
.
ùù 
EndScrollView
ùù )
(
ùù) *
)
ùù* +
;
ùù+ ,
}
ûû 	
public
†† 
virtual
†† 
void
†† 
RenderNoTestsInfo
†† -
(
††- .
)
††. /
{
°° 	
EditorGUILayout
¢¢ 
.
¢¢ 
HelpBox
¢¢ #
(
¢¢# $
$str
¢¢$ 6
,
¢¢6 7
MessageType
¢¢8 C
.
¢¢C D
Info
¢¢D H
)
¢¢H I
;
¢¢I J
}
££ 	
public
•• 
void
•• 
RenderDetails
•• !
(
••! "
)
••" #
{
¶¶ 	
m_TestInfoScroll
ßß 
=
ßß 
EditorGUILayout
ßß .
.
ßß. /
BeginScrollView
ßß/ >
(
ßß> ?
m_TestInfoScroll
ßß? O
)
ßßO P
;
ßßP Q
var
®® 
resultTextSize
®® 
=
®®  
TestRunnerWindow
®®! 1
.
®®1 2
Styles
®®2 8
.
®®8 9
info
®®9 =
.
®®= >
CalcSize
®®> F
(
®®F G
new
®®G J

GUIContent
®®K U
(
®®U V
m_ResultText
®®V b
)
®®b c
)
®®c d
;
®®d e
EditorGUILayout
©© 
.
©© 
SelectableLabel
©© +
(
©©+ ,
m_ResultText
©©, 8
,
©©8 9
TestRunnerWindow
©©: J
.
©©J K
Styles
©©K Q
.
©©Q R
info
©©R V
,
©©V W
	GUILayout
™™ 
.
™™ 
ExpandHeight
™™ &
(
™™& '
true
™™' +
)
™™+ ,
,
™™, -
	GUILayout
´´ 
.
´´ 
ExpandWidth
´´ %
(
´´% &
true
´´& *
)
´´* +
,
´´+ ,
	GUILayout
¨¨ 
.
¨¨ 
MinWidth
¨¨ "
(
¨¨" #
resultTextSize
¨¨# 1
.
¨¨1 2
x
¨¨2 3
)
¨¨3 4
,
¨¨4 5
	GUILayout
≠≠ 
.
≠≠ 
	MinHeight
≠≠ #
(
≠≠# $
resultTextSize
≠≠$ 2
.
≠≠2 3
y
≠≠3 4
)
≠≠4 5
)
≠≠5 6
;
≠≠6 7
EditorGUILayout
ÆÆ 
.
ÆÆ 
EndScrollView
ÆÆ )
(
ÆÆ) *
)
ÆÆ* +
;
ÆÆ+ ,
}
ØØ 	
public
±± 
void
±± 
Reload
±± 
(
±± 
)
±± 
{
≤≤ 	
if
≥≥ 
(
≥≥ 
m_TestListTree
≥≥ 
!=
≥≥ !
null
≥≥" &
)
≥≥& '
{
¥¥ 
m_TestListTree
µµ 
.
µµ 

ReloadData
µµ )
(
µµ) *
)
µµ* +
;
µµ+ ,!
UpdateQueuedResults
∂∂ #
(
∂∂# $
)
∂∂$ %
;
∂∂% &
}
∑∑ 
}
∏∏ 	
public
∫∫ 
void
∫∫ 
Repaint
∫∫ 
(
∫∫ 
)
∫∫ 
{
ªª 	
if
ºº 
(
ºº 
m_TestListTree
ºº 
==
ºº !
null
ºº" &
||
ºº' )
m_TestListTree
ºº* 8
.
ºº8 9
data
ºº9 =
.
ºº= >
root
ºº> B
==
ººC E
null
ººF J
)
ººJ K
{
ΩΩ 
return
ææ 
;
ææ 
}
øø 
m_TestListTree
¡¡ 
.
¡¡ 
Repaint
¡¡ "
(
¡¡" #
)
¡¡# $
;
¡¡$ %
if
¬¬ 
(
¬¬ 
m_TestListTree
¬¬ 
.
¬¬ 
data
¬¬ #
.
¬¬# $
rowCount
¬¬$ ,
==
¬¬- /
$num
¬¬0 1
)
¬¬1 2
m_TestListTree
√√ 
.
√√ 
SetSelection
√√ +
(
√√+ ,
new
√√, /
int
√√0 3
[
√√3 4
$num
√√4 5
]
√√5 6
,
√√6 7
false
√√8 =
)
√√= >
;
√√> ?#
TestSelectionCallback
ƒƒ !
(
ƒƒ! "
m_TestListState
ƒƒ" 1
.
ƒƒ1 2
selectedIDs
ƒƒ2 =
.
ƒƒ= >
ToArray
ƒƒ> E
(
ƒƒE F
)
ƒƒF G
)
ƒƒG H
;
ƒƒH I
}
≈≈ 	
public
«« 
void
«« 
Init
«« 
(
«« 
TestRunnerWindow
«« )
window
««* 0
,
««0 1
ITestAdaptor
««2 >
rootTest
««? G
)
««G H
{
»» 	
if
…… 
(
…… 
m_Window
…… 
==
…… 
null
……  
)
……  !
{
   
m_Window
ÀÀ 
=
ÀÀ 
window
ÀÀ !
;
ÀÀ! "
}
ÃÃ 
if
ŒŒ 
(
ŒŒ 
m_TestListTree
ŒŒ 
==
ŒŒ !
null
ŒŒ" &
)
ŒŒ& '
{
œœ 
if
–– 
(
–– 
m_TestListState
–– #
==
––$ &
null
––' +
)
––+ ,
{
—— 
m_TestListState
““ #
=
““$ %
new
““& )
TreeViewState
““* 7
(
““7 8
)
““8 9
;
““9 :
}
”” 
if
‘‘ 
(
‘‘ 
m_TestListTree
‘‘ "
==
‘‘# %
null
‘‘& *
)
‘‘* +
m_TestListTree
’’ "
=
’’# $
new
’’% ( 
TreeViewController
’’) ;
(
’’; <
m_Window
’’< D
,
’’D E
m_TestListState
’’F U
)
’’U V
;
’’V W
m_TestListTree
◊◊ 
.
◊◊ *
deselectOnUnhandledMouseDown
◊◊ ;
=
◊◊< =
false
◊◊> C
;
◊◊C D
m_TestListTree
ŸŸ 
.
ŸŸ &
selectionChangedCallback
ŸŸ 7
+=
ŸŸ8 :#
TestSelectionCallback
ŸŸ; P
;
ŸŸP Q
m_TestListTree
⁄⁄ 
.
⁄⁄ '
itemDoubleClickedCallback
⁄⁄ 8
+=
⁄⁄9 ;%
TestDoubleClickCallback
⁄⁄< S
;
⁄⁄S T
m_TestListTree
€€ 
.
€€ &
contextClickItemCallback
€€ 7
+=
€€8 :&
TestContextClickCallback
€€; S
;
€€S T
var
›› (
testListTreeViewDataSource
›› .
=
››/ 0
new
››1 4(
TestListTreeViewDataSource
››5 O
(
››O P
m_TestListTree
››P ^
,
››^ _
this
››` d
,
››d e
rootTest
››f n
)
››n o
;
››o p
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
newResultList
ﬂﬂ "
.
ﬂﬂ" #
Any
ﬂﬂ# &
(
ﬂﬂ& '
)
ﬂﬂ' (
)
ﬂﬂ( )(
testListTreeViewDataSource
‡‡ .
.
‡‡. /"
ExpandTreeOnCreation
‡‡/ C
(
‡‡C D
)
‡‡D E
;
‡‡E F
m_TestListTree
‚‚ 
.
‚‚ 
Init
‚‚ #
(
‚‚# $
new
‚‚$ '
Rect
‚‚( ,
(
‚‚, -
)
‚‚- .
,
‚‚. /(
testListTreeViewDataSource
„„ .
,
„„. /
new
‰‰ !
TestListTreeViewGUI
‰‰ +
(
‰‰+ ,
m_TestListTree
‰‰, :
)
‰‰: ;
,
‰‰; <
null
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 
EditorApplication
ËË 
.
ËË 
update
ËË $
+=
ËË% ')
RepaintIfProjectPathChanged
ËË( C
;
ËËC D"
m_TestRunnerUIFilter
ÍÍ  
.
ÍÍ  !
UpdateCounters
ÍÍ! /
(
ÍÍ/ 0
newResultList
ÍÍ0 =
)
ÍÍ= >
;
ÍÍ> ?"
m_TestRunnerUIFilter
ÎÎ  
.
ÎÎ  !
RebuildTestList
ÎÎ! 0
=
ÎÎ1 2
(
ÎÎ3 4
)
ÎÎ4 5
=>
ÎÎ6 8
m_TestListTree
ÎÎ9 G
.
ÎÎG H

ReloadData
ÎÎH R
(
ÎÎR S
)
ÎÎS T
;
ÎÎT U"
m_TestRunnerUIFilter
ÏÏ  
.
ÏÏ  !!
SearchStringChanged
ÏÏ! 4
=
ÏÏ5 6
s
ÏÏ7 8
=>
ÏÏ9 ;
m_TestListTree
ÏÏ< J
.
ÏÏJ K
searchString
ÏÏK W
=
ÏÏX Y
s
ÏÏZ [
;
ÏÏ[ \"
m_TestRunnerUIFilter
ÌÌ  
.
ÌÌ  !!
SearchStringCleared
ÌÌ! 4
=
ÌÌ5 6
(
ÌÌ7 8
)
ÌÌ8 9
=>
ÌÌ: <
FrameSelection
ÌÌ= K
(
ÌÌK L
)
ÌÌL M
;
ÌÌM N
}
ÓÓ 	
public
 
void
 
UpdateResult
  
(
  !
TestRunnerResult
! 1
result
2 8
)
8 9
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
!
ÚÚ 
HasTreeData
ÚÚ 
(
ÚÚ 
)
ÚÚ 
)
ÚÚ 
{
ÛÛ 
m_QueuedResults
ÙÙ 
.
ÙÙ  
Add
ÙÙ  #
(
ÙÙ# $
result
ÙÙ$ *
)
ÙÙ* +
;
ÙÙ+ ,
return
ıı 
;
ıı 
}
ˆˆ 
if
¯¯ 
(
¯¯ 
newResultList
¯¯ 
.
¯¯ 
All
¯¯ !
(
¯¯! "
x
¯¯" #
=>
¯¯$ &
x
¯¯' (
.
¯¯( )
uniqueId
¯¯) 1
!=
¯¯2 4
result
¯¯5 ;
.
¯¯; <
uniqueId
¯¯< D
)
¯¯D E
)
¯¯E F
{
˘˘ 
return
˙˙ 
;
˙˙ 
}
˚˚ 
var
˝˝ 
testRunnerResult
˝˝  
=
˝˝! "
newResultList
˝˝# 0
.
˝˝0 1
FirstOrDefault
˝˝1 ?
(
˝˝? @
x
˝˝@ A
=>
˝˝B D
x
˝˝E F
.
˝˝F G
uniqueId
˝˝G O
==
˝˝P R
result
˝˝S Y
.
˝˝Y Z
uniqueId
˝˝Z b
)
˝˝b c
;
˝˝c d
if
˛˛ 
(
˛˛ 
testRunnerResult
˛˛  
!=
˛˛! #
null
˛˛$ (
)
˛˛( )
{
ˇˇ 
testRunnerResult
ÄÄ  
.
ÄÄ  !
Update
ÄÄ! '
(
ÄÄ' (
result
ÄÄ( .
)
ÄÄ. /
;
ÄÄ/ 0
}
ÅÅ 
Repaint
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
m_Window
ÑÑ 
.
ÑÑ 
Repaint
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
áá 
void
áá 
UpdateTestTree
áá "
(
áá" #
ITestAdaptor
áá# /
test
áá0 4
)
áá4 5
{
àà 	
if
ââ 
(
ââ 
!
ââ 
HasTreeData
ââ 
(
ââ 
)
ââ 
)
ââ 
{
ää 
return
ãã 
;
ãã 
}
åå 
(
éé 
m_TestListTree
éé 
.
éé 
data
éé  
as
éé! #(
TestListTreeViewDataSource
éé$ >
)
éé> ?
.
éé? @
UpdateRootTest
éé@ N
(
ééN O
test
ééO S
)
ééS T
;
ééT U
m_TestListTree
êê 
.
êê 

ReloadData
êê %
(
êê% &
)
êê& '
;
êê' (
Repaint
ëë 
(
ëë 
)
ëë 
;
ëë 
m_Window
íí 
.
íí 
Repaint
íí 
(
íí 
)
íí 
;
íí 
}
ìì 	
private
ïï 
void
ïï !
UpdateQueuedResults
ïï (
(
ïï( )
)
ïï) *
{
ññ 	
foreach
óó 
(
óó 
var
óó 
testRunnerResult
óó )
in
óó* ,
m_QueuedResults
óó- <
)
óó< =
{
òò 
var
ôô 
existingResult
ôô "
=
ôô# $
newResultList
ôô% 2
.
ôô2 3
FirstOrDefault
ôô3 A
(
ôôA B
x
ôôB C
=>
ôôD F
x
ôôG H
.
ôôH I
uniqueId
ôôI Q
==
ôôR T
testRunnerResult
ôôU e
.
ôôe f
uniqueId
ôôf n
)
ôôn o
;
ôôo p
if
öö 
(
öö 
existingResult
öö "
!=
öö# %
null
öö& *
)
öö* +
{
õõ 
existingResult
úú "
.
úú" #
Update
úú# )
(
úú) *
testRunnerResult
úú* :
)
úú: ;
;
úú; <
}
ùù 
}
ûû 
m_QueuedResults
üü 
.
üü 
Clear
üü !
(
üü! "
)
üü" #
;
üü# $#
TestSelectionCallback
†† !
(
††! "
m_TestListState
††" 1
.
††1 2
selectedIDs
††2 =
.
††= >
ToArray
††> E
(
††E F
)
††F G
)
††G H
;
††H I"
m_TestRunnerUIFilter
°°  
.
°°  !
UpdateCounters
°°! /
(
°°/ 0
newResultList
°°0 =
)
°°= >
;
°°> ?
Repaint
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
m_Window
££ 
.
££ 
Repaint
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
internal
¶¶ 
void
¶¶ #
TestSelectionCallback
¶¶ +
(
¶¶+ ,
int
¶¶, /
[
¶¶/ 0
]
¶¶0 1
selected
¶¶2 :
)
¶¶: ;
{
ßß 	
if
®® 
(
®® 
m_TestListTree
®® 
!=
®® !
null
®®" &
&&
®®' )
selected
®®* 2
.
®®2 3
Length
®®3 9
==
®®: <
$num
®®= >
)
®®> ?
{
©© 
if
™™ 
(
™™ 
m_TestListTree
™™ "
!=
™™# %
null
™™& *
)
™™* +
{
´´ 
var
¨¨ 
node
¨¨ 
=
¨¨ 
m_TestListTree
¨¨ -
.
¨¨- .
FindItem
¨¨. 6
(
¨¨6 7
selected
¨¨7 ?
[
¨¨? @
$num
¨¨@ A
]
¨¨A B
)
¨¨B C
;
¨¨C D
if
≠≠ 
(
≠≠ 
node
≠≠ 
is
≠≠ 
TestTreeViewItem
≠≠  0
)
≠≠0 1
{
ÆÆ 
var
ØØ 
test
ØØ  
=
ØØ! "
node
ØØ# '
as
ØØ( *
TestTreeViewItem
ØØ+ ;
;
ØØ; <
m_ResultText
∞∞ $
=
∞∞% &
test
∞∞' +
.
∞∞+ ,
GetResultText
∞∞, 9
(
∞∞9 :
)
∞∞: ;
;
∞∞; < 
m_ResultStacktrace
±± *
=
±±+ ,
test
±±- 1
.
±±1 2
result
±±2 8
.
±±8 9

stacktrace
±±9 C
;
±±C D
}
≤≤ 
}
≥≥ 
}
¥¥ 
else
µµ 
if
µµ 
(
µµ 
selected
µµ 
.
µµ 
Length
µµ $
==
µµ% '
$num
µµ( )
)
µµ) *
{
∂∂ 
m_ResultText
∑∑ 
=
∑∑ 
$str
∑∑ !
;
∑∑! "
}
∏∏ 
}
ππ 	
	protected
ªª 
virtual
ªª 
void
ªª %
TestDoubleClickCallback
ªª 6
(
ªª6 7
int
ªª7 :
id
ªª; =
)
ªª= >
{
ºº 	
if
ΩΩ 
(
ΩΩ 
IsBusy
ΩΩ 
(
ΩΩ 
)
ΩΩ 
)
ΩΩ 
return
ææ 
;
ææ 
RunTests
¿¿ 
(
¿¿ &
GetSelectedTestsAsFilter
¿¿ -
(
¿¿- .
new
¿¿. 1
List
¿¿2 6
<
¿¿6 7
int
¿¿7 :
>
¿¿: ;
{
¿¿< =
id
¿¿> @
}
¿¿A B
)
¿¿B C
)
¿¿C D
;
¿¿D E

GUIUtility
¡¡ 
.
¡¡ 
ExitGUI
¡¡ 
(
¡¡ 
)
¡¡  
;
¡¡  !
}
¬¬ 	
	protected
ƒƒ 
virtual
ƒƒ 
void
ƒƒ 
RunTests
ƒƒ '
(
ƒƒ' (
params
ƒƒ( . 
UITestRunnerFilter
ƒƒ/ A
[
ƒƒA B
]
ƒƒB C
filters
ƒƒD K
)
ƒƒK L
{
≈≈ 	
throw
∆∆ 
new
∆∆ %
NotImplementedException
∆∆ -
(
∆∆- .
)
∆∆. /
;
∆∆/ 0
}
«« 	
	protected
…… 
virtual
…… 
void
…… &
TestContextClickCallback
…… 7
(
……7 8
int
……8 ;
id
……< >
)
……> ?
{
   	
if
ÀÀ 
(
ÀÀ 
id
ÀÀ 
==
ÀÀ 
$num
ÀÀ 
)
ÀÀ 
return
ÃÃ 
;
ÃÃ 
var
ŒŒ 
m
ŒŒ 
=
ŒŒ 
new
ŒŒ 
GenericMenu
ŒŒ #
(
ŒŒ# $
)
ŒŒ$ %
;
ŒŒ% &
var
œœ 
testFilters
œœ 
=
œœ &
GetSelectedTestsAsFilter
œœ 6
(
œœ6 7
m_TestListState
œœ7 F
.
œœF G
selectedIDs
œœG R
)
œœR S
;
œœS T
var
––  
multilineSelection
–– "
=
––# $
m_TestListState
––% 4
.
––4 5
selectedIDs
––5 @
.
––@ A
Count
––A F
>
––G H
$num
––I J
;
––J K
if
““ 
(
““ 
!
““  
multilineSelection
““ #
)
““# $
{
”” 
var
‘‘ 
testNode
‘‘ 
=
‘‘ 
GetSelectedTest
‘‘ .
(
‘‘. /
)
‘‘/ 0
;
‘‘0 1
var
’’ 

isNotSuite
’’ 
=
’’  
!
’’! "
testNode
’’" *
.
’’* +
IsGroupNode
’’+ 6
;
’’6 7
if
÷÷ 
(
÷÷ 

isNotSuite
÷÷ 
)
÷÷ 
{
◊◊ 
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
string
ÿÿ 
.
ÿÿ  
IsNullOrEmpty
ÿÿ  -
(
ÿÿ- . 
m_ResultStacktrace
ÿÿ. @
)
ÿÿ@ A
)
ÿÿA B
{
ŸŸ 
m
⁄⁄ 
.
⁄⁄ 
AddItem
⁄⁄ !
(
⁄⁄! " 
s_GUIOpenErrorLine
⁄⁄" 4
,
⁄⁄4 5
false
€€ !
,
€€! "
data
‹‹  
=>
‹‹! #
{
›› 
if
ﬁﬁ  "
(
ﬁﬁ# $
!
ﬁﬁ$ %
	GuiHelper
ﬁﬁ% .
.
ﬁﬁ. /(
OpenScriptInExternalEditor
ﬁﬁ/ I
(
ﬁﬁI J 
m_ResultStacktrace
ﬁﬁJ \
)
ﬁﬁ\ ]
)
ﬁﬁ] ^
{
ﬂﬂ  !
	GuiHelper
‡‡$ -
.
‡‡- .(
OpenScriptInExternalEditor
‡‡. H
(
‡‡H I
testNode
‡‡I Q
.
‡‡Q R
type
‡‡R V
,
‡‡V W
testNode
‡‡X `
.
‡‡` a
method
‡‡a g
)
‡‡g h
;
‡‡h i
}
··  !
}
‚‚ 
,
‚‚ 
$str
„„ 
)
„„ 
;
„„  
}
‰‰ 
m
ÊÊ 
.
ÊÊ 
AddItem
ÊÊ 
(
ÊÊ 
s_GUIOpenTest
ÊÊ +
,
ÊÊ+ ,
false
ÁÁ 
,
ÁÁ 
data
ËË 
=>
ËË 
	GuiHelper
ËË  )
.
ËË) *(
OpenScriptInExternalEditor
ËË* D
(
ËËD E
testNode
ËËE M
.
ËËM N
type
ËËN R
,
ËËR S
testNode
ËËT \
.
ËË\ ]
method
ËË] c
)
ËËc d
,
ËËd e
$str
ÈÈ 
)
ÈÈ 
;
ÈÈ 
m
ÍÍ 
.
ÍÍ 
AddSeparator
ÍÍ "
(
ÍÍ" #
$str
ÍÍ# %
)
ÍÍ% &
;
ÍÍ& '
}
ÎÎ 
}
ÏÏ 
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
IsBusy
ÓÓ 
(
ÓÓ 
)
ÓÓ 
)
ÓÓ 
{
ÔÔ 
m
 
.
 
AddItem
 
(
  
multilineSelection
 ,
?
- .#
s_GUIRunSelectedTests
/ D
:
E F
s_GUIRun
G O
,
O P
false
ÒÒ 
,
ÒÒ 
data
ÚÚ 
=>
ÚÚ 
RunTests
ÚÚ $
(
ÚÚ$ %
testFilters
ÚÚ% 0
)
ÚÚ0 1
,
ÚÚ1 2
$str
ÛÛ 
)
ÛÛ 
;
ÛÛ 
if
ıı 
(
ıı 
EditorPrefs
ıı 
.
ıı  
GetBool
ıı  '
(
ıı' (
$str
ıı( 7
,
ıı7 8
false
ıı9 >
)
ıı> ?
)
ıı? @
{
ˆˆ 
m
˜˜ 
.
˜˜ 
AddItem
˜˜ 
(
˜˜  
multilineSelection
˜˜ 0
?
˜˜1 2#
s_GUIRunSelectedTests
˜˜3 H
:
˜˜I J!
s_GUIRunUntilFailed
˜˜K ^
,
˜˜^ _
false
¯¯ 
,
¯¯ 
data
˘˘ 
=>
˘˘ 
{
˙˙ 
foreach
˚˚ #
(
˚˚$ %
var
˚˚% (
filter
˚˚) /
in
˚˚0 2
testFilters
˚˚3 >
)
˚˚> ?
{
¸¸ 
filter
˝˝  &
.
˝˝& '
testRepetitions
˝˝' 6
=
˝˝7 8
int
˝˝9 <
.
˝˝< =
MaxValue
˝˝= E
;
˝˝E F
}
˛˛ 
RunTests
ÄÄ $
(
ÄÄ$ %
testFilters
ÄÄ% 0
)
ÄÄ0 1
;
ÄÄ1 2
}
ÅÅ 
,
ÅÅ 
$str
ÇÇ 
)
ÇÇ 
;
ÇÇ 
m
ÑÑ 
.
ÑÑ 
AddItem
ÑÑ 
(
ÑÑ  
multilineSelection
ÑÑ 0
?
ÑÑ1 2#
s_GUIRunSelectedTests
ÑÑ3 H
:
ÑÑI J
s_GUIRun100Times
ÑÑK [
,
ÑÑ[ \
false
ÖÖ 
,
ÖÖ 
data
ÜÜ 
=>
ÜÜ 
{
áá 
foreach
àà #
(
àà$ %
var
àà% (
filter
àà) /
in
àà0 2
testFilters
àà3 >
)
àà> ?
{
ââ 
filter
ää  &
.
ää& '
testRepetitions
ää' 6
=
ää7 8
$num
ää9 <
;
ää< =
}
ãã 
RunTests
çç $
(
çç$ %
testFilters
çç% 0
)
çç0 1
;
çç1 2
}
éé 
,
éé 
$str
èè 
)
èè 
;
èè 
}
êê 
}
ëë 
else
íí 
m
ìì 
.
ìì 
AddDisabledItem
ìì !
(
ìì! " 
multilineSelection
ìì" 4
?
ìì5 6#
s_GUIRunSelectedTests
ìì7 L
:
ììM N
s_GUIRun
ììO W
,
ììW X
false
ììY ^
)
ìì^ _
;
ìì_ `
m
ïï 
.
ïï 
ShowAsContext
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
private
òò  
UITestRunnerFilter
òò "
[
òò" #
]
òò# $&
GetSelectedTestsAsFilter
òò% =
(
òò= >
IEnumerable
òò> I
<
òòI J
int
òòJ M
>
òòM N
selectedIDs
òòO Z
)
òòZ [
{
ôô 	
var
öö 

namesToRun
öö 
=
öö 
new
öö  
List
öö! %
<
öö% &
string
öö& ,
>
öö, -
(
öö- .
)
öö. /
;
öö/ 0
var
õõ %
assembliesForNamesToRun
õõ '
=
õõ( )
new
õõ* -
List
õõ. 2
<
õõ2 3
string
õõ3 9
>
õõ9 :
(
õõ: ;
)
õõ; <
;
õõ< =
var
úú 
exactNamesToRun
úú 
=
úú  !
new
úú" %
List
úú& *
<
úú* +
string
úú+ 1
>
úú1 2
(
úú2 3
)
úú3 4
;
úú4 5
var
ùù 
assembliesToRun
ùù 
=
ùù  !
new
ùù" %
List
ùù& *
<
ùù* +
string
ùù+ 1
>
ùù1 2
(
ùù2 3
)
ùù3 4
;
ùù4 5
foreach
ûû 
(
ûû 
var
ûû 
lineId
ûû 
in
ûû  "
selectedIDs
ûû# .
)
ûû. /
{
üü 
var
†† 
line
†† 
=
†† 
m_TestListTree
†† )
.
††) *
FindItem
††* 2
(
††2 3
lineId
††3 9
)
††9 :
;
††: ;
if
°° 
(
°° 
line
°° 
is
°° 
TestTreeViewItem
°° ,
)
°°, -
{
¢¢ 
var
££ 
testLine
££  
=
££! "
line
££# '
as
££( *
TestTreeViewItem
££+ ;
;
££; <
if
§§ 
(
§§ 
testLine
§§  
.
§§  !
IsGroupNode
§§! ,
&&
§§- /
!
§§0 1
testLine
§§1 9
.
§§9 :
FullName
§§: B
.
§§B C
Contains
§§C K
(
§§K L
$str
§§L O
)
§§O P
)
§§P Q
{
•• 
if
¶¶ 
(
¶¶ 
testLine
¶¶ $
.
¶¶$ %
parent
¶¶% +
!=
¶¶, .
null
¶¶/ 3
&&
¶¶4 6
testLine
¶¶7 ?
.
¶¶? @
parent
¶¶@ F
.
¶¶F G
displayName
¶¶G R
==
¶¶S U
$str
¶¶V k
)
¶¶k l
{
ßß 
return
©© "
new
©©# &
[
©©& '
]
©©' (
{
©©) *
new
©©* - 
UITestRunnerFilter
©©. @
(
©©@ A
)
©©A B
}
©©B C
;
©©C D
}
™™ 
if
¨¨ 
(
¨¨ 
testLine
¨¨ $
.
¨¨$ %
FullName
¨¨% -
.
¨¨- .
EndsWith
¨¨. 6
(
¨¨6 7
$str
¨¨7 =
,
¨¨= >
StringComparison
¨¨? O
.
¨¨O P
OrdinalIgnoreCase
¨¨P a
)
¨¨a b
)
¨¨b c
{
≠≠ 
assembliesToRun
ÆÆ +
.
ÆÆ+ ,
Add
ÆÆ, /
(
ÆÆ/ 0 
UITestRunnerFilter
ÆÆ0 B
.
ÆÆB C"
AssemblyNameFromPath
ÆÆC W
(
ÆÆW X
testLine
ÆÆX `
.
ÆÆ` a
FullName
ÆÆa i
)
ÆÆi j
)
ÆÆj k
;
ÆÆk l
}
ØØ 
else
∞∞ 
{
±± 

namesToRun
≤≤ &
.
≤≤& '
Add
≤≤' *
(
≤≤* +
$"
≤≤+ -
^
≤≤- .
{
≤≤. /
Regex
≤≤/ 4
.
≤≤4 5
Escape
≤≤5 ;
(
≤≤; <
testLine
≤≤< D
.
≤≤D E
FullName
≤≤E M
)
≤≤M N
}
≤≤N O
$
≤≤O P
"
≤≤P Q
)
≤≤Q R
;
≤≤R S
var
≥≥ 
assembly
≥≥  (
=
≥≥) * 
UITestRunnerFilter
≥≥+ =
.
≥≥= >"
AssemblyNameFromPath
≥≥> R
(
≥≥R S
testLine
≥≥S [
.
≥≥[ \
GetAssemblyName
≥≥\ k
(
≥≥k l
)
≥≥l m
)
≥≥m n
;
≥≥n o
if
¥¥ 
(
¥¥  
!
¥¥  !
string
¥¥! '
.
¥¥' (
IsNullOrEmpty
¥¥( 5
(
¥¥5 6
assembly
¥¥6 >
)
¥¥> ?
&&
¥¥@ B
!
¥¥C D%
assembliesForNamesToRun
¥¥D [
.
¥¥[ \
Contains
¥¥\ d
(
¥¥d e
assembly
¥¥e m
)
¥¥m n
)
¥¥n o
{
µµ %
assembliesForNamesToRun
∂∂  7
.
∂∂7 8
Add
∂∂8 ;
(
∂∂; <
assembly
∂∂< D
)
∂∂D E
;
∂∂E F
}
∑∑ 
}
∏∏ 
}
ππ 
else
∫∫ 
{
ªª 
exactNamesToRun
ºº '
.
ºº' (
Add
ºº( +
(
ºº+ ,
testLine
ºº, 4
.
ºº4 5
FullName
ºº5 =
)
ºº= >
;
ºº> ?
}
ΩΩ 
}
ææ 
}
øø 
var
¡¡ 
filters
¡¡ 
=
¡¡ 
new
¡¡ 
List
¡¡ "
<
¡¡" # 
UITestRunnerFilter
¡¡# 5
>
¡¡5 6
(
¡¡6 7
)
¡¡7 8
;
¡¡8 9
if
√√ 
(
√√ 
assembliesToRun
√√ 
.
√√  
Count
√√  %
>
√√& '
$num
√√( )
)
√√) *
{
ƒƒ 
filters
≈≈ 
.
≈≈ 
Add
≈≈ 
(
≈≈ 
new
≈≈  
UITestRunnerFilter
≈≈  2
(
≈≈2 3
)
≈≈3 4
{
∆∆ 
assemblyNames
«« !
=
««" #
assembliesToRun
««$ 3
.
««3 4
ToArray
««4 ;
(
««; <
)
««< =
}
»» 
)
»» 
;
»» 
}
…… 
if
ÀÀ 
(
ÀÀ 

namesToRun
ÀÀ 
.
ÀÀ 
Count
ÀÀ  
>
ÀÀ! "
$num
ÀÀ# $
)
ÀÀ$ %
{
ÃÃ 
filters
ÕÕ 
.
ÕÕ 
Add
ÕÕ 
(
ÕÕ 
new
ÕÕ  
UITestRunnerFilter
ÕÕ  2
(
ÕÕ2 3
)
ÕÕ3 4
{
ŒŒ 

groupNames
œœ 
=
œœ  

namesToRun
œœ! +
.
œœ+ ,
ToArray
œœ, 3
(
œœ3 4
)
œœ4 5
,
œœ5 6
assemblyNames
–– !
=
––" #%
assembliesForNamesToRun
––$ ;
.
––; <
ToArray
––< C
(
––C D
)
––D E
}
—— 
)
—— 
;
—— 
}
““ 
if
‘‘ 
(
‘‘ 
exactNamesToRun
‘‘ 
.
‘‘  
Count
‘‘  %
>
‘‘& '
$num
‘‘( )
)
‘‘) *
{
’’ 
filters
÷÷ 
.
÷÷ 
Add
÷÷ 
(
÷÷ 
new
÷÷  
UITestRunnerFilter
÷÷  2
(
÷÷2 3
)
÷÷3 4
{
◊◊ 
	testNames
ÿÿ 
=
ÿÿ 
exactNamesToRun
ÿÿ  /
.
ÿÿ/ 0
ToArray
ÿÿ0 7
(
ÿÿ7 8
)
ÿÿ8 9
}
ŸŸ 
)
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
if
‹‹ 
(
‹‹ 
filters
‹‹ 
.
‹‹ 
Count
‹‹ 
==
‹‹  
$num
‹‹! "
)
‹‹" #
{
›› 
filters
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ 
new
ﬁﬁ  
UITestRunnerFilter
ﬁﬁ  2
(
ﬁﬁ2 3
)
ﬁﬁ3 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
}
ﬂﬂ 
var
·· 

categories
·· 
=
·· "
m_TestRunnerUIFilter
·· 1
.
··1 2
CategoryFilter
··2 @
.
··@ A
ToArray
··A H
(
··H I
)
··I J
;
··J K
if
‚‚ 
(
‚‚ 

categories
‚‚ 
.
‚‚ 
Length
‚‚ !
>
‚‚" #
$num
‚‚$ %
)
‚‚% &
{
„„ 
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
filter
‰‰ #
in
‰‰$ &
filters
‰‰' .
)
‰‰. /
{
ÂÂ 
filter
ÊÊ 
.
ÊÊ 
categoryNames
ÊÊ (
=
ÊÊ) *

categories
ÊÊ+ 5
;
ÊÊ5 6
}
ÁÁ 
}
ËË 
return
ÍÍ 
filters
ÍÍ 
.
ÍÍ 
ToArray
ÍÍ "
(
ÍÍ" #
)
ÍÍ# $
;
ÍÍ$ %
}
ÎÎ 	
private
ÌÌ 
TestTreeViewItem
ÌÌ  
GetSelectedTest
ÌÌ! 0
(
ÌÌ0 1
)
ÌÌ1 2
{
ÓÓ 	
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
lineId
ÔÔ 
in
ÔÔ  "
m_TestListState
ÔÔ# 2
.
ÔÔ2 3
selectedIDs
ÔÔ3 >
)
ÔÔ> ?
{
 
var
ÒÒ 
line
ÒÒ 
=
ÒÒ 
m_TestListTree
ÒÒ )
.
ÒÒ) *
FindItem
ÒÒ* 2
(
ÒÒ2 3
lineId
ÒÒ3 9
)
ÒÒ9 :
;
ÒÒ: ;
if
ÚÚ 
(
ÚÚ 
line
ÚÚ 
is
ÚÚ 
TestTreeViewItem
ÚÚ ,
)
ÚÚ, -
{
ÛÛ 
return
ÙÙ 
line
ÙÙ 
as
ÙÙ  "
TestTreeViewItem
ÙÙ# 3
;
ÙÙ3 4
}
ıı 
}
ˆˆ 
return
˜˜ 
null
˜˜ 
;
˜˜ 
}
¯¯ 	
private
˙˙ 
void
˙˙ 
FrameSelection
˙˙ #
(
˙˙# $
)
˙˙$ %
{
˚˚ 	
if
¸¸ 
(
¸¸ 
m_TestListTree
¸¸ 
.
¸¸ 
HasSelection
¸¸ +
(
¸¸+ ,
)
¸¸, -
)
¸¸- .
{
˝˝ 
var
˛˛ 
firstClickedID
˛˛ "
=
˛˛# $
m_TestListState
˛˛% 4
.
˛˛4 5
selectedIDs
˛˛5 @
.
˛˛@ A
First
˛˛A F
<
˛˛F G
int
˛˛G J
>
˛˛J K
(
˛˛K L
)
˛˛L M
==
˛˛N P
m_TestListState
˛˛Q `
.
˛˛` a
lastClickedID
˛˛a n
?
˛˛o p
m_TestListState˛˛q Ä
.˛˛Ä Å
selectedIDs˛˛Å å
.˛˛å ç
Last˛˛ç ë
<˛˛ë í
int˛˛í ï
>˛˛ï ñ
(˛˛ñ ó
)˛˛ó ò
:˛˛ô ö
m_TestListState˛˛õ ™
.˛˛™ ´
selectedIDs˛˛´ ∂
.˛˛∂ ∑
First˛˛∑ º
<˛˛º Ω
int˛˛Ω ¿
>˛˛¿ ¡
(˛˛¡ ¬
)˛˛¬ √
;˛˛√ ƒ
m_TestListTree
ˇˇ 
.
ˇˇ 
Frame
ˇˇ $
(
ˇˇ$ %
firstClickedID
ˇˇ% 3
,
ˇˇ3 4
true
ˇˇ5 9
,
ˇˇ9 :
false
ˇˇ; @
)
ˇˇ@ A
;
ˇˇA B
}
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
abstract
ÉÉ 
TestPlatform
ÉÉ $
TestPlatform
ÉÉ% 1
{
ÉÉ2 3
get
ÉÉ4 7
;
ÉÉ7 8
}
ÉÉ9 :
public
ÖÖ 
void
ÖÖ 
RebuildUIFilter
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
{
ÜÜ 	"
m_TestRunnerUIFilter
áá  
.
áá  !
UpdateCounters
áá! /
(
áá/ 0
newResultList
áá0 =
)
áá= >
;
áá> ?
if
àà 
(
àà "
m_TestRunnerUIFilter
àà $
.
àà$ %
IsFiltering
àà% 0
)
àà0 1
{
ââ 
m_TestListTree
ää 
.
ää 

ReloadData
ää )
(
ää) *
)
ää* +
;
ää+ ,
}
ãã 
}
åå 	
public
éé 
void
éé )
RepaintIfProjectPathChanged
éé /
(
éé/ 0
)
éé0 1
{
èè 	
var
êê 
path
êê 
=
êê 
TestListGUIHelper
êê (
.
êê( )!
GetActiveFolderPath
êê) <
(
êê< =
)
êê= >
;
êê> ?
if
ëë 
(
ëë 
path
ëë 
!=
ëë #
m_PreviousProjectPath
ëë -
)
ëë- .
{
íí #
m_PreviousProjectPath
ìì %
=
ìì& '
path
ìì( ,
;
ìì, -
TestRunnerWindow
îî  
.
îî  !

s_Instance
îî! +
.
îî+ ,
Repaint
îî, 3
(
îî3 4
)
îî4 5
;
îî5 6
}
ïï 
EditorApplication
óó 
.
óó 
update
óó $
-=
óó% ')
RepaintIfProjectPathChanged
óó( C
;
óóC D
}
òò 	
	protected
öö 
abstract
öö 
bool
öö 
IsBusy
öö  &
(
öö& '
)
öö' (
;
öö( )
}
õõ 
}úú ‹
≥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineParser\CommandLineOption.cs
	namespace 	
UnityEditor
 
. 

TestRunner  
.  !
CommandLineParser! 2
{ 
internal 
class 
CommandLineOption $
:% &
ICommandLineOption' 9
{ 
Action 
< 
string 
> 
m_ArgAction "
;" #
public

 
CommandLineOption

  
(

  !
string

! '
argName

( /
,

/ 0
Action

1 7
action

8 >
)

> ?
{ 	
ArgName 
= 
argName 
; 
m_ArgAction 
= 
s 
=> 
action %
(% &
)& '
;' (
} 	
public 
CommandLineOption  
(  !
string! '
argName( /
,/ 0
Action1 7
<7 8
string8 >
>> ?
action@ F
)F G
{ 	
ArgName 
= 
argName 
; 
m_ArgAction 
= 
action  
;  !
} 	
public 
CommandLineOption  
(  !
string! '
argName( /
,/ 0
Action1 7
<7 8
string8 >
[> ?
]? @
>@ A
actionB H
)H I
{ 	
ArgName 
= 
argName 
; 
m_ArgAction 
= 
s 
=> 
action %
(% &
SplitStringToArray& 8
(8 9
s9 :
): ;
); <
;< =
} 	
public 
string 
ArgName 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
void 

ApplyValue 
( 
string %
value& +
)+ ,
{ 	
m_ArgAction   
(   
value   
)   
;   
}!! 	
static## 
string## 
[## 
]## 
SplitStringToArray## *
(##* +
string##+ 1
value##2 7
)##7 8
{$$ 	
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
value%%% *
)%%* +
)%%+ ,
{&& 
return'' 
null'' 
;'' 
}(( 
return** 
value** 
.** 
Split** 
(** 
new** "
[**" #
]**# $
{**% &
$char**& )
}**) *
,*** +
StringSplitOptions**, >
.**> ?
RemoveEmptyEntries**? Q
)**Q R
;**R S
}++ 	
},, 
}-- é
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineParser\ICommandLineOption.cs
	namespace 	
UnityEditor
 
. 

TestRunner  
.  !
CommandLineParser! 2
{ 
	interface 
ICommandLineOption  
{ 
string 
ArgName 
{ 
get 
; 
} 
void 

ApplyValue 
( 
string 
value $
)$ %
;% &
} 
} ‡
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\TestState.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
enum 
	TestState 
{ 
Inconclusive 
= 
$num 
, 
Skipped 
= 
$num 
, 
Ignored 
= 
$num 
, 
Success		 
=		 
$num		 
,		 
Failure

 
=

 
$num

 
,

 
Error 
= 
$num 
} 
} ø
¿D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\PlatformSetup\XboxOnePlatformSetup.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class  
XboxOnePlatformSetup '
:( )
IPlatformSetup* 8
{ 
private 
XboxOneDeployMethod #"
oldXboxOneDeployMethod$ :
;: ;
private 
XboxOneDeployDrive "!
oldXboxOneDeployDrive# 8
;8 9
private 
string *
oldXboxOneAdditionalDebugPorts 5
;5 6
public		 
void		 
Setup		 
(		 
)		 
{

 	"
oldXboxOneDeployMethod "
=# $#
EditorUserBuildSettings% <
.< =
xboxOneDeployMethod= P
;P Q!
oldXboxOneDeployDrive !
=" ##
EditorUserBuildSettings$ ;
.; <
xboxOneDeployDrive< N
;N O*
oldXboxOneAdditionalDebugPorts *
=+ ,#
EditorUserBuildSettings- D
.D E'
xboxOneAdditionalDebugPortsE `
;` a#
EditorUserBuildSettings #
.# $
xboxOneDeployMethod$ 7
=8 9
XboxOneDeployMethod: M
.M N
PackageN U
;U V#
EditorUserBuildSettings #
.# $
xboxOneDeployDrive$ 6
=7 8
XboxOneDeployDrive9 K
.K L
DefaultL S
;S T#
EditorUserBuildSettings #
.# $'
xboxOneAdditionalDebugPorts$ ?
=@ A
$strB I
;I J
} 	
public 
void 
PostBuildAction #
(# $
)$ %
{ 	
} 	
public 
void %
PostSuccessfulBuildAction -
(- .
). /
{ 	
} 	
public   
void   &
PostSuccessfulLaunchAction   .
(  . /
)  / 0
{!! 	
}"" 	
public$$ 
void$$ 
CleanUp$$ 
($$ 
)$$ 
{%% 	#
EditorUserBuildSettings&& #
.&&# $
xboxOneDeployMethod&&$ 7
=&&8 9"
oldXboxOneDeployMethod&&: P
;&&P Q#
EditorUserBuildSettings'' #
.''# $
xboxOneDeployDrive''$ 6
=''7 8!
oldXboxOneDeployDrive''9 N
;''N O#
EditorUserBuildSettings,, #
.,,# $'
xboxOneAdditionalDebugPorts,,$ ?
=,,@ A*
oldXboxOneAdditionalDebugPorts,,B `
;,,` a
}-- 	
}.. 
}// û4
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\TestStarter.cs
	namespace

 	
UnityEditor
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
* +
CommandLineTest

+ :
{ 
[ 
InitializeOnLoad 
] 
static 

class 
TestStarter 
{ 
static 
TestStarter 
( 
) 
{ 	
if 
( 
! 
ShouldRunTests 
(  
)  !
)! "
{ 
return 
; 
} 
if 
( 
EditorApplication !
.! "
isCompiling" -
)- .
{ 
return 
; 
} 
if 
( 
RunData 
. 
instance  
.  !
	isRunning! *
)* +
{ 
executer 
. 
ExitOnCompileErrors ,
(, -
)- .
;. /
executer 
. 
SetUpCallbacks '
(' (
RunData( /
./ 0
instance0 8
.8 9
executionSettings9 J
)J K
;K L
return 
; 
}   
EditorApplication"" 
."" 
update"" $
+=""% '
UpdateWatch""( 3
;""3 4
}## 	
static%% 
void%% 
UpdateWatch%% 
(%%  
)%%  !
{&& 	
EditorApplication'' 
.'' 
update'' $
-=''% '
UpdateWatch''( 3
;''3 4
if)) 
()) 
RunData)) 
.)) 
instance))  
.))  !
	isRunning))! *
)))* +
{** 
return++ 
;++ 
},, 
RunData.. 
... 
instance.. 
... 
	isRunning.. &
=..' (
true..) -
;..- .
var// 
commandLineArgs// 
=//  !
Environment//" -
.//- .
GetCommandLineArgs//. @
(//@ A
)//A B
;//B C
RunData00 
.00 
instance00 
.00 
executionSettings00 .
=00/ 0
executer001 9
.009 :"
BuildExecutionSettings00: P
(00P Q
commandLineArgs00Q `
)00` a
;00a b
executer11 
.11 
SetUpCallbacks11 #
(11# $
RunData11$ +
.11+ ,
instance11, 4
.114 5
executionSettings115 F
)11F G
;11G H
executer22 
.22 #
InitializeAndExecuteRun22 ,
(22, -
commandLineArgs22- <
)22< =
;22= >
}33 	
static55 
bool55 
ShouldRunTests55 "
(55" #
)55# $
{66 	
var77 
shouldRunTests77 
=77  
false77! &
;77& '
var88 
	optionSet88 
=88 
new88  
CommandLineOptionSet88  4
(884 5
new99 
CommandLineOption99 %
(99% &
$str99& 0
,990 1
(992 3
)993 4
=>995 7
{998 9
shouldRunTests99: H
=99I J
true99K O
;99O P
}99Q R
)99R S
,99S T
new:: 
CommandLineOption:: %
(::% &
$str::& 6
,::6 7
(::8 9
)::9 :
=>::; =
{::> ?
shouldRunTests::@ N
=::O P
true::Q U
;::U V
}::W X
)::X Y
);; 
;;; 
	optionSet<< 
.<< 
Parse<< 
(<< 
Environment<< '
.<<' (
GetCommandLineArgs<<( :
(<<: ;
)<<; <
)<<< =
;<<= >
return== 
shouldRunTests== !
;==! "
}>> 	
static@@ 
Executer@@ 

s_Executer@@ "
;@@" #
staticBB 
ExecuterBB 
executerBB  
{CC 	
getDD 
{EE 
ifFF 
(FF 

s_ExecuterFF 
==FF !
nullFF" &
)FF& '
{GG 
FuncHH 
<HH 
boolHH 
>HH 
compilationCheckHH /
=HH0 1
(HH2 3
)HH3 4
=>HH5 7
EditorUtilityHH8 E
.HHE F#
scriptCompilationFailedHHF ]
;HH] ^
ActionII 
<II 
stringII !
>II! "
actionLoggerII# /
=II0 1
(II2 3
stringII3 9
msgII: =
)II= >
=>II? A
{IIB C
DebugIID I
.III J
	LogFormatIIJ S
(IIS T
LogTypeIIT [
.II[ \
LogII\ _
,II_ `
	LogOptionIIa j
.IIj k
NoStacktraceIIk w
,IIw x
nullIIy }
,II} ~
msg	II Ç
)
IIÇ É
;
IIÉ Ñ
}
IIÖ Ü
;
IIÜ á
varJJ 
apiSettingsBuilderJJ *
=JJ+ ,
newJJ- 0
SettingsBuilderJJ1 @
(JJ@ A
newJJA D$
TestSettingsDeserializerJJE ]
(JJ] ^
(JJ^ _
)JJ_ `
=>JJa c
newJJd g
TestSettingsJJh t
(JJt u
)JJu v
)JJv w
,JJw x
actionLogger	JJy Ö
,
JJÖ Ü
Debug
JJá å
.
JJå ç

LogWarning
JJç ó
,
JJó ò
File
JJô ù
.
JJù û
Exists
JJû §
,
JJ§ •
compilationCheck
JJ¶ ∂
)
JJ∂ ∑
;
JJ∑ ∏

s_ExecuterKK 
=KK  
newKK! $
ExecuterKK% -
(KK- .
ScriptableObjectKK. >
.KK> ?
CreateInstanceKK? M
<KKM N
TestRunnerApiKKN [
>KK[ \
(KK\ ]
)KK] ^
,KK^ _
apiSettingsBuilderKK` r
,KKr s
DebugKKt y
.KKy z
LogErrorFormat	KKz à
,
KKà â
Debug
KKä è
.
KKè ê
LogException
KKê ú
,
KKú ù
EditorApplication
KKû Ø
.
KKØ ∞
Exit
KK∞ ¥
,
KK¥ µ
compilationCheck
KK∂ ∆
)
KK∆ «
;
KK« »
}LL 
returnNN 

s_ExecuterNN !
;NN! "
}OO 
}PP 	
}QQ 
}RR º
∑D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Callbacks\TestRunnerCallback.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal 
class 
TestRunnerCallback %
:& '
ScriptableObject( 8
,8 9
ITestRunnerListener: M
{ 
public		 
void		 

RunStarted		 
(		 
ITest		 $

testsToRun		% /
)		/ 0
{

 	
EditorApplication 
.  
playModeStateChanged 2
+=3 5"
OnPlayModeStateChanged6 L
;L M
} 	
private 
void "
OnPlayModeStateChanged +
(+ ,
PlayModeStateChange, ?
state@ E
)E F
{ 	
if 
( 
state 
== 
PlayModeStateChange ,
., -
ExitingPlayMode- <
)< =
{ 
EditorApplication !
.! " 
playModeStateChanged" 6
-=7 9"
OnPlayModeStateChanged: P
;P Q#
PlaymodeTestsController '
.' (

TryCleanup( 2
(2 3
)3 4
;4 5
} 
} 	
public 
void 
RunFinished 
(  
ITestResult  +
testResults, 7
)7 8
{ 	
EditorApplication 
. 
	isPlaying '
=( )
false* /
;/ 0
} 	
public 
void 
TestStarted 
(  
ITest  %
testName& .
). /
{ 	
} 	
public!! 
void!! 
TestFinished!!  
(!!  !
ITestResult!!! ,
test!!- 1
)!!1 2
{"" 	
}## 	
}$$ 
}%% »
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListBuilder\RenderingOptions.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{ 
internal 
class 
RenderingOptions #
{ 
public 
string 

nameFilter  
;  !
public 
bool 
showSucceeded !
;! "
public 
bool 

showFailed 
; 
public 
bool 
showIgnored 
;  
public		 
bool		 
showNotRunned		 !
;		! "
public

 
string

 
[

 
]

 

categories

 "
;

" #
} 
} ≥	
µD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\IUtpMessageReporter.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
internal 
	interface 
IUtpMessageReporter *
{ 
void		 +
ReportAssemblyCompilationErrors		 ,
(		, -
string		- 3
assembly		4 <
,		< =
IEnumerable		> I
<		I J
CompilerMessage		J Y
>		Y Z!
errorCompilerMessages		[ p
)		p q
;		q r
void

 
ReportTestFinished

 
(

  
ITestResultAdaptor

  2
result

3 9
)

9 :
;

: ;
void  
ReportTestRunStarted !
(! "
ITestAdaptor" .

testsToRun/ 9
)9 :
;: ;
void 
ReportTestStarted 
( 
ITestAdaptor +
test, 0
)0 1
;1 2
} 
} »
≤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestRunner\Utils\TestListCacheData.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
{ 
internal		 
class		 
TestListCacheData		 $
:		% &
ScriptableSingleton		' :
<		: ;
TestListCacheData		; L
>		L M
,		M N
ITestListCacheData		O a
{

 
[ 	
SerializeField	 
] 
private 
List 
< 
TestPlatform !
>! "
m_Platforms# .
=/ 0
new1 4
List5 9
<9 :
TestPlatform: F
>F G
(G H
)H I
;I J
[ 	
SerializeField	 
] 
private 
List 
< 
ITest 
> 
m_CachedData (
=) *
new+ .
List/ 3
<3 4
ITest4 9
>9 :
(: ;
); <
;< =
public 
List 
< 
TestPlatform  
>  !
	platforms" +
{ 	
get 
{ 
return 
m_Platforms $
;$ %
}& '
} 	
public 
List 
< 
ITest 
> 

cachedData %
{ 	
get 
{ 
return 
m_CachedData %
;% &
}' (
} 	
} 
} ”
´D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\CommandLineTest\RunSettings.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
CommandLineTest+ :
{ 
internal 
class 
RunSettings 
:  
ITestRunSettings! 1
{ 
private 
ITestSettings 
m_TestSettings ,
;, -
public 
RunSettings 
( 
ITestSettings (
testSettings) 5
)5 6
{		 	
this

 
.

 
m_TestSettings

 
=

  !
testSettings

" .
;

. /
} 	
public 
void 
Apply 
( 
) 
{ 	
if 
( 
m_TestSettings 
!= !
null" &
)& '
{ 
m_TestSettings 
. "
SetupProjectParameters 5
(5 6
)6 7
;7 8
} 
} 	
public 
void 
Dispose 
( 
) 
{ 	
if 
( 
m_TestSettings 
!= !
null" &
)& '
{ 
m_TestSettings 
. 
Dispose &
(& '
)' (
;( )
} 
} 	
} 
} †@
øD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\GUI\TestListTreeView\TestListTreeViewDataSource.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
GUI+ .
{		 
internal

 
class

 &
TestListTreeViewDataSource

 -
:

. /
TreeViewDataSource

0 B
{ 
private 
bool "
m_ExpandTreeOnCreation +
;+ ,
private 
readonly 
TestListGUI $
m_TestListGUI% 2
;2 3
private 
ITestAdaptor 

m_RootTest '
;' (
public &
TestListTreeViewDataSource )
() *
TreeViewController* <
testListTree= I
,I J
TestListGUIK V
testListGUIW b
,b c
ITestAdaptord p
rootTestq y
)y z
:{ |
base	} Å
(
Å Ç
testListTree
Ç é
)
é è
{ 	
showRootItem 
= 
false  
;  !
rootIsCollapsable 
= 
false  %
;% &
m_TestListGUI 
= 
testListGUI '
;' (

m_RootTest 
= 
rootTest !
;! "
} 	
public 
void 
UpdateRootTest "
(" #
ITestAdaptor# /
rootTest0 8
)8 9
{ 	

m_RootTest 
= 
rootTest !
;! "
} 	
public 
override 
void 
	FetchData &
(& '
)' (
{ 	
var 
	sceneName 
= 
SceneManager (
.( )
GetActiveScene) 7
(7 8
)8 9
.9 :
name: >
;> ?
if   
(   
	sceneName   
.   

StartsWith   $
(  $ %
$str  % 4
)  4 5
)  5 6
	sceneName!! 
=!! #
PlaymodeTestsController!! 3
.!!3 4
GetController!!4 A
(!!A B
)!!B C
.!!C D
settings!!D L
.!!L M
originalScene!!M Z
;!!Z [
var## 
testListBuilder## 
=##  !
new##" %
TestTreeViewBuilder##& 9
(##9 :

m_RootTest##: D
,##D E
m_TestListGUI##F S
.##S T
newResultList##T a
,##a b
m_TestListGUI##c p
.##p q!
m_TestRunnerUIFilter	##q Ö
)
##Ö Ü
;
##Ü á

m_RootItem%% 
=%% 
testListBuilder%% (
.%%( )
BuildTreeView%%) 6
(%%6 7
null%%7 ;
,%%; <
false%%= B
,%%B C
	sceneName%%D M
)%%M N
;%%N O
SetExpanded&& 
(&& 

m_RootItem&& "
,&&" #
true&&$ (
)&&( )
;&&) *
if'' 
('' 

m_RootItem'' 
.'' 
hasChildren'' &
&&''' )

m_RootItem''* 4
.''4 5
children''5 =
.''= >
Count''> C
==''D F
$num''G H
)''H I
SetExpanded(( 
((( 

m_RootItem(( &
.((& '
children((' /
[((/ 0
$num((0 1
]((1 2
,((2 3
true((4 8
)((8 9
;((9 :
if** 
(** "
m_ExpandTreeOnCreation** &
)**& '#
SetExpandedWithChildren++ '
(++' (

m_RootItem++( 2
,++2 3
true++4 8
)++8 9
;++9 :
m_TestListGUI-- 
.-- 
newResultList-- '
=--( )
new--* -
List--. 2
<--2 3
TestRunnerResult--3 C
>--C D
(--D E
testListBuilder--E T
.--T U
results--U \
)--\ ]
;--] ^
m_TestListGUI.. 
...  
m_TestRunnerUIFilter.. .
.... /
availableCategories../ B
=..C D
testListBuilder..E T
...T U
AvailableCategories..U h
;..h i
m_NeedRefreshRows// 
=// 
true//  $
;//$ %
}00 	
public22 
override22 
bool22 !
IsRenamingItemAllowed22 2
(222 3
TreeViewItem223 ?
item22@ D
)22D E
{33 	
return44 
false44 
;44 
}55 	
public77 
void77  
ExpandTreeOnCreation77 (
(77( )
)77) *
{88 	"
m_ExpandTreeOnCreation99 "
=99# $
true99% )
;99) *
}:: 	
public<< 
override<< 
bool<< 
IsExpandable<< )
(<<) *
TreeViewItem<<* 6
item<<7 ;
)<<; <
{== 	
if>> 
(>> 
item>> 
is>> 
TestTreeViewItem>> (
)>>( )
return?? 
(?? 
(?? 
TestTreeViewItem?? )
)??) *
item??* .
)??. /
.??/ 0
IsGroupNode??0 ;
;??; <
return@@ 
base@@ 
.@@ 
IsExpandable@@ $
(@@$ %
item@@% )
)@@) *
;@@* +
}AA 	
	protectedCC 
overrideCC 
ListCC 
<CC  
TreeViewItemCC  ,
>CC, -
SearchCC. 4
(CC4 5
TreeViewItemCC5 A
rootItemCCB J
,CCJ K
stringCCL R
searchCCS Y
)CCY Z
{DD 	
varEE 
resultEE 
=EE 
newEE 
ListEE !
<EE! "
TreeViewItemEE" .
>EE. /
(EE/ 0
)EE0 1
;EE1 2
ifGG 
(GG 
rootItemGG 
.GG 
hasChildrenGG $
)GG$ %
{HH 
foreachII 
(II 
varII 
childII "
inII# %
rootItemII& .
.II. /
childrenII/ 7
)II7 8
{JJ 
SearchTestTreeKK "
(KK" #
childKK# (
,KK( )
searchKK* 0
,KK0 1
resultKK2 8
)KK8 9
;KK9 :
}LL 
}MM 
returnNN 
resultNN 
;NN 
}OO 	
	protectedQQ 
voidQQ 
SearchTestTreeQQ %
(QQ% &
TreeViewItemQQ& 2
itemQQ3 7
,QQ7 8
stringQQ9 ?
searchQQ@ F
,QQF G
IListQQH M
<QQM N
TreeViewItemQQN Z
>QQZ [
searchResultQQ\ h
)QQh i
{RR 	
varSS 
testItemSS 
=SS 
itemSS 
asSS  "
TestTreeViewItemSS# 3
;SS3 4
ifTT 
(TT 
!TT 
testItemTT 
.TT 
IsGroupNodeTT %
)TT% &
{UU 
ifVV 
(VV 
testItemVV 
.VV 
FullNameVV %
.VV% &
ToLowerVV& -
(VV- .
)VV. /
.VV/ 0
ContainsVV0 8
(VV8 9
searchVV9 ?
)VV? @
)VV@ A
{WW 
searchResultXX  
.XX  !
AddXX! $
(XX$ %
itemXX% )
)XX) *
;XX* +
}YY 
}ZZ 
else[[ 
if[[ 
([[ 
item[[ 
.[[ 
children[[ "
!=[[# %
null[[& *
)[[* +
{\\ 
foreach]] 
(]] 
var]] 
child]] "
in]]# %
item]]& *
.]]* +
children]]+ 3
)]]3 4
SearchTestTree^^ "
(^^" #
child^^# (
,^^( )
search^^* 0
,^^0 1
searchResult^^2 >
)^^> ?
;^^? @
}__ 
}`` 	
}aa 
}bb õ9
ÆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\TestLaunchers\TestLauncherBase.cs
	namespace		 	
UnityEditor		
 
.		 
	TestTools		 
.		  

TestRunner		  *
{

 
internal 
abstract 
class 
TestLauncherBase ,
{ 
public 
abstract 
void 
Run  
(  !
)! "
;" #
	protected 
virtual 
RuntimePlatform )
?) *
TestTargetPlatform+ =
{ 	
get 
{ 
return 
Application $
.$ %
platform% -
;- .
}/ 0
} 	
	protected 
bool '
ExecutePreBuildSetupMethods 2
(2 3
ITest3 8
tests9 >
,> ?
ITestFilter@ K
testRunnerFilterL \
)\ ]
{ 	
var 
attributeFinder 
=  !
new" %(
PrebuildSetupAttributeFinder& B
(B C
)C D
;D E
var 
	logString 
= 
$str 6
;6 7
return 
ExecuteMethods !
<! "
IPrebuildSetup" 0
>0 1
(1 2
tests2 7
,7 8
testRunnerFilter9 I
,I J
attributeFinderK Z
,Z [
	logString\ e
,e f
targetClassg r
=>s u
targetClass	v Å
.
Å Ç
Setup
Ç á
(
á à
)
à â
,
â ä 
TestTargetPlatform
ã ù
)
ù û
;
û ü
} 	
public 
void *
ExecutePostBuildCleanupMethods 2
(2 3
ITest3 8
tests9 >
,> ?
ITestFilter@ K
testRunnerFilterL \
)\ ]
{ 	*
ExecutePostBuildCleanupMethods *
(* +
tests+ 0
,0 1
testRunnerFilter2 B
,B C
TestTargetPlatformD V
)V W
;W X
} 	
public   
static   
void   *
ExecutePostBuildCleanupMethods   9
(  9 :
ITest  : ?
tests  @ E
,  E F
ITestFilter  G R
testRunnerFilter  S c
,  c d
RuntimePlatform  e t
?  t u
testTargetPlatform	  v à
)
  à â
{!! 	
var"" 
attributeFinder"" 
=""  !
new""" %+
PostbuildCleanupAttributeFinder""& E
(""E F
)""F G
;""G H
var## 
	logString## 
=## 
$str## 8
;##8 9
ExecuteMethods$$ 
<$$ 
IPostBuildCleanup$$ ,
>$$, -
($$- .
tests$$. 3
,$$3 4
testRunnerFilter$$5 E
,$$E F
attributeFinder$$G V
,$$V W
	logString$$X a
,$$a b
targetClass$$c n
=>$$o q
targetClass$$r }
.$$} ~
Cleanup	$$~ Ö
(
$$Ö Ü
)
$$Ü á
,
$$á à 
testTargetPlatform
$$â õ
)
$$õ ú
;
$$ú ù
}%% 	
private'' 
static'' 
bool'' 
ExecuteMethods'' *
<''* +
T''+ ,
>'', -
(''- .
ITest''. 3
tests''4 9
,''9 :
ITestFilter''; F
testRunnerFilter''G W
,''W X
AttributeFinderBase''Y l
attributeFinder''m |
,''| }
string	''~ Ñ
	logString
''Ö é
,
''é è
Action
''ê ñ
<
''ñ ó
T
''ó ò
>
''ò ô
action
''ö †
,
''† °
RuntimePlatform
''¢ ±
?
''± ≤ 
testTargetPlatform
''≥ ≈
)
''≈ ∆
{(( 	
var)) 
exceptionsThrown))  
=))! "
false))# (
;))( )
if++ 
(++ 
testTargetPlatform++ "
==++# %
null++& *
)++* +
{,, 
Debug-- 
.-- 
LogError-- 
(-- 
$str-- \
+--] ^#
EditorUserBuildSettings--_ v
.--v w
activeBuildTarget	--w à
)
--à â
;
--â ä
return.. 
true.. 
;.. 
}// 
foreach11 
(11 
var11 
targetClassType11 (
in11) +
attributeFinder11, ;
.11; <
Search11< B
(11B C
tests11C H
,11H I
testRunnerFilter11J Z
,11Z [
testTargetPlatform11\ n
.11n o
Value11o t
)11t u
)11u v
{22 
try33 
{44 
var55 
targetClass55 #
=55$ %
(55& '
T55' (
)55( )
	Activator55) 2
.552 3
CreateInstance553 A
(55A B
targetClassType55B Q
)55Q R
;55R S
Debug77 
.77 
	LogFormat77 #
(77# $
	logString77$ -
,77- .
targetClassType77/ >
.77> ?
FullName77? G
)77G H
;77H I
using99 
(99 
var99 
logScope99 '
=99( )
new99* -
LogScope99. 6
(996 7
)997 8
)998 9
{:: 
action;; 
(;; 
targetClass;; *
);;* +
;;;+ ,
if== 
(== 
logScope== $
.==$ %
AnyFailingLogs==% 3
(==3 4
)==4 5
)==5 6
{>> 
var?? 

failingLog??  *
=??+ ,
logScope??- 5
.??5 6
FailingLogs??6 A
.??A B
First??B G
(??G H
)??H I
;??I J
throw@@ !
new@@" %(
UnhandledLogMessageException@@& B
(@@B C

failingLog@@C M
)@@M N
;@@N O
}AA 
ifCC 
(CC 
logScopeCC $
.CC$ %
ExpectedLogsCC% 1
.CC1 2
AnyCC2 5
(CC5 6
)CC6 7
)CC7 8
{DD 
varEE 
expectedLogsEE  ,
=EE- .
logScopeEE/ 7
.EE7 8
ExpectedLogsEE8 D
.EED E
FirstEEE J
(EEJ K
)EEK L
;EEL M
throwFF !
newFF" %)
UnexpectedLogMessageExceptionFF& C
(FFC D
expectedLogsFFD P
)FFP Q
;FFQ R
}GG 
}HH 
}II 
catchJJ 
(JJ  
InvalidCastExceptionJJ +
)JJ+ ,
{JJ- .
}JJ. /
catchKK 
(KK 
	ExceptionKK  
eKK! "
)KK" #
{LL 
DebugMM 
.MM 
LogExceptionMM &
(MM& '
eMM' (
)MM( )
;MM) *
exceptionsThrownNN $
=NN% &
trueNN' +
;NN+ ,
}OO 
}PP 
returnRR 
exceptionsThrownRR #
;RR# $
}SS 	
}TT 
}UU „T
°D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\Api\TestRunnerApi.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
Api+ .
{ 
public 

class 
TestRunnerApi 
:  
ScriptableObject! 1
,1 2
ITestRunnerApi3 A
{ 
internal 
ICallbacksHolder !
callbacksHolder" 1
;1 2
private 
ICallbacksHolder  
m_CallbacksHolder! 2
{ 	
get 
{   
if!! 
(!! 
callbacksHolder!! #
==!!$ &
null!!' +
)!!+ ,
{"" 
return## 
CallbacksHolder## *
.##* +
instance##+ 3
;##3 4
}$$ 
return&& 
callbacksHolder&& &
;&&& '
}'' 
}(( 	
internal** 
Func** 
<** 
ExecutionSettings** '
,**' (
string**( .
>**. /
ScheduleJob**0 ;
=**< =
(**> ?
executionSettings**? P
)**P Q
=>**R T
{++ 	
var,, 
runner,, 
=,, 
new,, 
TestJobRunner,, *
(,,* +
),,+ ,
;,,, -
return-- 
runner-- 
.-- 
RunJob--  
(--  !
new--! $
TestJobData--% 0
(--0 1
executionSettings--1 B
)--B C
)--C D
;--D E
}.. 	
;..	 

public44 
string44 
Execute44 
(44 
ExecutionSettings44 /
executionSettings440 A
)44A B
{55 	
if66 
(66 
executionSettings66 !
==66" $
null66% )
)66) *
{77 
throw88 
new88 !
ArgumentNullException88 /
(88/ 0
nameof880 6
(886 7
executionSettings887 H
)88H I
)88I J
;88J K
}99 
if;; 
(;; 
(;; 
executionSettings;; "
.;;" #
filters;;# *
==;;+ -
null;;. 2
||;;3 5
executionSettings;;6 G
.;;G H
filters;;H O
.;;O P
Length;;P V
==;;W Y
$num;;Z [
);;[ \
&&;;] _
executionSettings;;` q
.;;q r
filter;;r x
!=;;y {
null	;;| Ä
)
;;Ä Å
{<< 
executionSettings>> !
.>>! "
filters>>" )
=>>* +
new>>, /
[>>0 1
]>>1 2
{>>3 4
executionSettings>>4 E
.>>E F
filter>>F L
}>>L M
;>>M N
}?? 
ifAA 
(AA 
executionSettingsAA !
.AA! "
targetPlatformAA" 0
==AA1 3
nullAA4 8
&&AA9 ;
executionSettingsAA< M
.AAM N
filtersAAN U
!=AAV X
nullAAY ]
&&AA^ `
executionSettingsBB !
.BB! "
filtersBB" )
.BB) *
LengthBB* 0
>BB1 2
$numBB3 4
)BB4 5
{CC 
executionSettingsDD !
.DD! "
targetPlatformDD" 0
=DD1 2
executionSettingsDD3 D
.DDD E
filtersDDE L
[DDL M
$numDDM N
]DDN O
.DDO P
targetPlatformDDP ^
;DD^ _
}EE 
returnGG 
ScheduleJobGG 
(GG 
executionSettingsGG 0
)GG0 1
;GG1 2
}HH 	
publicNN 
voidNN 
RegisterCallbacksNN %
<NN% &
TNN& '
>NN' (
(NN( )
TNN) *
testCallbacksNN+ 8
,NN8 9
intNN: =
priorityNN> F
=NNG H
$numNNI J
)NNJ K
whereNNL Q
TNNR S
:NNT U

ICallbacksNNV `
{OO 	
ifPP 
(PP 
testCallbacksPP 
==PP  
nullPP! %
)PP% &
{QQ 
throwRR 
newRR !
ArgumentNullExceptionRR /
(RR/ 0
nameofRR0 6
(RR6 7
testCallbacksRR7 D
)RRD E
)RRE F
;RRF G
}SS 
m_CallbacksHolderUU 
.UU 
AddUU !
(UU! "
testCallbacksUU" /
,UU/ 0
priorityUU1 9
)UU9 :
;UU: ;
}VV 	
public[[ 
void[[ 
UnregisterCallbacks[[ '
<[[' (
T[[( )
>[[) *
([[* +
T[[+ ,
testCallbacks[[- :
)[[: ;
where[[< A
T[[B C
:[[D E

ICallbacks[[F P
{\\ 	
if]] 
(]] 
testCallbacks]] 
==]]  
null]]! %
)]]% &
{^^ 
throw__ 
new__ !
ArgumentNullException__ /
(__/ 0
nameof__0 6
(__6 7
testCallbacks__7 D
)__D E
)__E F
;__F G
}`` 
m_CallbacksHolderbb 
.bb 
Removebb $
(bb$ %
testCallbacksbb% 2
)bb2 3
;bb3 4
}cc 	
internalee 
voidee 
RetrieveTestListee &
(ee& '
ExecutionSettingsee' 8
executionSettingsee9 J
,eeJ K
ActioneeL R
<eeR S
ITestAdaptoreeS _
>ee_ `
callbackeea i
)eei j
{ff 	
ifgg 
(gg 
executionSettingsgg !
==gg" $
nullgg% )
)gg) *
{hh 
throwii 
newii !
ArgumentNullExceptionii /
(ii/ 0
nameofii0 6
(ii6 7
executionSettingsii7 H
)iiH I
)iiI J
;iiJ K
}jj 
varll 
firstFilterll 
=ll 
executionSettingsll /
.ll/ 0
filtersll0 7
?ll7 8
.ll8 9
FirstOrDefaultll9 G
(llG H
)llH I
??llJ L
executionSettingsllM ^
.ll^ _
filterll_ e
;lle f
RetrieveTestListmm 
(mm 
firstFiltermm (
.mm( )
testModemm) 1
,mm1 2
callbackmm3 ;
)mm; <
;mm< =
}nn 	
publictt 
voidtt 
RetrieveTestListtt $
(tt$ %
TestModett% -
testModett. 6
,tt6 7
Actiontt8 >
<tt> ?
ITestAdaptortt? K
>ttK L
callbackttM U
)ttU V
{uu 	
ifvv 
(vv 
callbackvv 
==vv 
nullvv  
)vv  !
{ww 
throwxx 
newxx !
ArgumentNullExceptionxx /
(xx/ 0
nameofxx0 6
(xx6 7
callbackxx7 ?
)xx? @
)xx@ A
;xxA B
}yy 
var{{ 
platform{{ 
={{ 
ParseTestMode{{ (
({{( )
testMode{{) 1
){{1 2
;{{2 3
var||  
testAssemblyProvider|| $
=||% &
new||' *,
 EditorLoadedTestAssemblyProvider||+ K
(||K L
new||L O+
EditorCompilationInterfaceProxy||P o
(||o p
)||p q
,||q r
new||s v"
EditorAssembliesProxy	||w å
(
||å ç
)
||ç é
)
||é è
;
||è ê
var}} 
testAdaptorFactory}} "
=}}# $
new}}% (
TestAdaptorFactory}}) ;
(}}; <
)}}< =
;}}= >
var~~ 
testListCache~~ 
=~~ 
new~~  #
TestListCache~~$ 1
(~~1 2
testAdaptorFactory~~2 D
,~~D E
new~~F I'
RemoteTestResultDataFactory~~J e
(~~e f
)~~f g
,~~g h
TestListCacheData~~i z
.~~z {
instance	~~{ É
)
~~É Ñ
;
~~Ñ Ö
var 
testListProvider  
=! "
new# &
TestListProvider' 7
(7 8 
testAssemblyProvider8 L
,L M
newN Q$
UnityTestAssemblyBuilderR j
(j k
)k l
)l m
;m n
var
ÄÄ $
cachedTestListProvider
ÄÄ &
=
ÄÄ' (
new
ÄÄ) ,%
CachingTestListProvider
ÄÄ- D
(
ÄÄD E
testListProvider
ÄÄE U
,
ÄÄU V
testListCache
ÄÄW d
,
ÄÄd e 
testAdaptorFactory
ÄÄf x
)
ÄÄx y
;
ÄÄy z
var
ÇÇ 
job
ÇÇ 
=
ÇÇ 
new
ÇÇ 
TestListJob
ÇÇ %
(
ÇÇ% &$
cachedTestListProvider
ÇÇ& <
,
ÇÇ< =
platform
ÇÇ> F
,
ÇÇF G
(
ÇÇH I
testRoot
ÇÇI Q
)
ÇÇQ R
=>
ÇÇS U
{
ÉÉ 
callback
ÑÑ 
(
ÑÑ 
testRoot
ÑÑ !
)
ÑÑ! "
;
ÑÑ" #
}
ÖÖ 
)
ÖÖ 
;
ÖÖ 
job
ÜÜ 
.
ÜÜ 
Start
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
internal
ââ 
static
ââ 
bool
ââ 
IsRunActive
ââ (
(
ââ( )
)
ââ) *
{
ää 	
return
ãã 
RunData
ãã 
.
ãã 
instance
ãã #
.
ãã# $
	isRunning
ãã$ -
;
ãã- .
}
åå 	
private
éé 
static
éé 
TestPlatform
éé #
ParseTestMode
éé$ 1
(
éé1 2
TestMode
éé2 :
testMode
éé; C
)
ééC D
{
èè 	
return
êê 
(
êê 
(
êê 
(
êê 
testMode
êê 
&
êê  
TestMode
êê! )
.
êê) *
EditMode
êê* 2
)
êê2 3
==
êê4 6
TestMode
êê7 ?
.
êê? @
EditMode
êê@ H
)
êêH I
?
êêJ K
TestPlatform
êêL X
.
êêX Y
EditMode
êêY a
:
êêb c
$num
êêd e
)
êêe f
|
êêg h
(
êêi j
(
êêj k
(
êêk l
testMode
êêl t
&
êêu v
TestMode
êêw 
.êê Ä
PlayModeêêÄ à
)êêà â
==êêä å
TestModeêêç ï
.êêï ñ
PlayModeêêñ û
)êêû ü
?êê† °
TestPlatformêê¢ Æ
.êêÆ Ø
PlayModeêêØ ∑
:êê∏ π
$numêê∫ ª
)êêª º
;êêº Ω
}
ëë 	
}
íí 
}ìì µ
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.test-framework@1.1.20\UnityEditor.TestRunner\UnityTestProtocol\IUtpLogger.cs
	namespace 	
UnityEditor
 
. 
	TestTools 
.  

TestRunner  *
.* +
UnityTestProtocol+ <
{ 
	interface 

IUtpLogger 
{ 
void 
Log 
( 
Message 
msg 
) 
; 
} 
} 