�	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Actions\Menus\MenuItemActionBase.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
public 

enum 
ActionValidity 
{ 
Valid 
,

, 
Invalid 
} 
struct 

MenuActionItem 
{ 
public 
string 
category 
; 
public 
string 
	entryName 
;  
public 
string 
shortCut 
; 
public 
int 
priority 
; 
public 
bool 
isActiveInMode "
;" #
public   
ActionValidity   
state   #
;  # $
public!! 
bool!! 
	isChecked!! 
;!! 
public"" 
GenericMenu"" 
."" 
MenuFunction"" '
callback""( 0
;""0 1
}## 
}$$ �\
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_Breadcrumbs.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
partial

 
class

 
TimelineWindow

  
{ 
List 
< 
BreadCrumbTitle
> 
m_BreadCrumbLabels 0
=1 2
new3 6
List7 ;
<; <
BreadCrumbTitle< K
>K L
(L M
$numM P
)P Q
;Q R
static 
	TitleMode 
GetTitleMode %
(% &
ISequenceState& 4
sequence5 =
)= >
{ 	
var 
prefabStage 
= 
UnityEditor )
.) *
Experimental* 6
.6 7
SceneManagement7 F
.F G
PrefabStageUtilityG Y
.Y Z!
GetCurrentPrefabStageZ o
(o p
)p q
;q r
if 
( 
sequence 
. 
hostClip !
==" $
null% )
)) *
{ 
if 
( 
sequence 
. 
director %
!=& (
null) -
&&. 0
prefabStage1 <
!== ?
null@ D
&&E G
prefabStageH S
.S T"
IsPartOfPrefabContentsT j
(j k
sequencek s
.s t
directort |
.| }

gameObject	} �
)
� �
)
� �
return 
	TitleMode $
.$ %
Prefab% +
;+ ,
if 
( 
sequence 
. 
director %
!=& (
null) -
&&. 0

.> ?
IsPartOfPrefabAsset? R
(R S
sequenceS [
.[ \
director\ d
)d e
)e f
return 
	TitleMode $
.$ %
PrefabOutOfContext% 7
;7 8
if 
( 
sequence 
. 
director %
!=& (
null) -
&&. 0
!1 2
sequence2 :
.: ;
director; C
.C D
isActiveAndEnabledD V
)V W
return 
	TitleMode $
.$ %
DisabledComponent% 6
;6 7
if 
( 
sequence 
. 
director %
!=& (
null) -
)- .
return 
	TitleMode $
.$ %

GameObject% /
;/ 0
if 
( 
sequence 
. 
asset "
!=# %
null& *
)* +
return 
	TitleMode $
.$ %
Asset% *
;* +
} 
else   
if   
(   
sequence   
.   
director   &
!=  ' )
null  * .
&&  / 1
!  2 3
sequence  3 ;
.  ; <
director  < D
.  D E
isActiveAndEnabled  E W
&&  X Z
!  [ \

.  i j
IsPartOfPrefabAsset  j }
(  } ~
sequence	  ~ �
.
  � �
director
  � �
)
  � �
)
  � �
return!! 
	TitleMode!!  
.!!  !
DisabledComponent!!! 2
;!!2 3
return## 
	TitleMode## 
.## 
None## !
;##! "
}$$ 	
void&& 
DrawBreadcrumbs&&
(&& 
)&& 
{'' 	
if(( 
((( 
state(( 
==(( 
null(( 
)(( 
return)) 
;)) 
var** 
count** 
=** 
$num** 
;** 
foreach++ 
(++ 
var++ 
sequence++ !
in++" $
state++% *
.++* +
GetAllSequences+++ :
(++: ;
)++; <
)++< =
{,, 
var-- 
title-- 
=-- 
new-- 
BreadCrumbTitle--  /
{.. 
name// 
=// 
DisplayNameHelper// ,
.//, -
GetDisplayName//- ;
(//; <
sequence//< D
)//D E
,//E F
mode00 
=00 
GetTitleMode00 '
(00' (
sequence00( 0
)000 1
}11 
;11 
if22 
(22 
count22 
>=22 
m_BreadCrumbLabels22 /
.22/ 0
Count220 5
)225 6
m_BreadCrumbLabels33 &
.33& '
Add33' *
(33* +
title33+ 0
)330 1
;331 2
else44 
m_BreadCrumbLabels55 &
[55& '
count55' ,
]55, -
=55. /
title550 5
;555 6
count66 
++66 
;66 
}77 
if99 
(99 
m_BreadCrumbLabels99 "
.99" #
Count99# (
>99) *
count99+ 0
)990 1
m_BreadCrumbLabels:: "
.::" #
RemoveRange::# .
(::. /
count::/ 4
,::4 5
m_BreadCrumbLabels::6 H
.::H I
Count::I N
-::O P
count::Q V
)::V W
;::W X
using<< 
(<< 
new<< 
	EditorGUI<<  
.<<  !

(<<. /
currentMode<</ :
.<<: ;
headerState<<; F
.<<F G

breadCrumb<<G Q
==<<R T 
TimelineModeGUIState<<U i
.<<i j
Disabled<<j r
)<<r s
)<<s t
{== 
var>> 
width>> 
=>> 
position>> $
.>>$ %
width>>% *
->>+ ,
WindowConstants>>- <
.>>< =
playControlsWidth>>= N
->>O P
WindowConstants>>Q `
.>>` a
cogButtonWidth>>a o
;>>o p
BreadcrumbDrawer??  
.??  !
Draw??! %
(??% &
width??& +
,??+ ,
m_BreadCrumbLabels??- ?
,??? @%
NavigateToBreadcrumbIndex??A Z
)??Z [
;??[ \
}@@ 
}AA 	
voidCC %
NavigateToBreadcrumbIndexCC
(CC& '
intCC' *
indexCC+ 0
)CC0 1
{DD 	
stateEE 
.EE "
PopSequencesUntilCountEE (
(EE( )
indexEE) .
+EE/ 0
$numEE1 2
)EE2 3
;EE3 4
}FF 	
voidHH  
DrawSequenceSelectorHH
(HH! "
)HH" #
{II 	
usingJJ 
(JJ 
newJJ 
	EditorGUIJJ  
.JJ  !

(JJ. /
currentModeJJ/ :
.JJ: ;
headerStateJJ; F
.JJF G
sequenceSelectorJJG W
==JJX Z 
TimelineModeGUIStateJJ[ o
.JJo p
DisabledJJp x
)JJx y
)JJy z
{KK 
ifLL 
(LL 
EditorGUILayoutLL #
.LL# $
DropdownButtonLL$ 2
(LL2 3
DirectorStylesLL3 A
.LLA B!
timelineSelectorArrowLLB W
,LLW X
	FocusTypeLLY b
.LLb c
PassiveLLc j
,LLj k
DirectorStylesLLl z
.LLz {
Instance	LL{ �
.
LL� �
sequenceSwitcher
LL� �
,
LL� �
	GUILayout
LL� �
.
LL� �
Width
LL� �
(
LL� �
WindowConstants
LL� �
.
LL� �

LL� �
)
LL� �
)
LL� �
)
LL� � 
ShowSequenceSelectorMM (
(MM( )
)MM) *
;MM* +
}NN 
}OO 	
voidQQ  
ShowSequenceSelectorQQ
(QQ! "
)QQ" #
{RR 	
varSS 
allDirectorsSS 
=SS 
TimelineUtilitySS .
.SS. /)
GetDirectorsInSceneUsingAssetSS/ L
(SSL M
nullSSM Q
)SSQ R
;SSR S
varUU 
	formatterUU 
=UU 
newUU $
SequenceMenuNameFormaterUU  8
(UU8 9
)UU9 :
;UU: ;
varVV 
namesAndDirectorsVV !
=VV" #
newVV$ '
ListVV( ,
<VV, -

ValueTupleVV- 7
<VV7 8
stringVV8 >
,VV> ?
PlayableDirectorVV@ P
>VVP Q
>VVQ R
(VVR S
)VVS T
;VVT U
foreachWW 
(WW 
varWW 
dWW 
inWW 
allDirectorsWW *
)WW* +
{XX 
ifYY 
(YY 
dYY 
.YY 

isYY$ &

)YY4 5
{ZZ 
var[[ 
text[[ 
=[[ 
	formatter[[ (
.[[( )
Format[[) /
([[/ 0
DisplayNameHelper[[0 A
.[[A B
GetDisplayName[[B P
([[P Q
d[[Q R
)[[R S
)[[S T
;[[T U
namesAndDirectors\\ %
.\\% &
Add\\& )
(\\) *
new\\* -

ValueTuple\\. 8
<\\8 9
string\\9 ?
,\\? @
PlayableDirector\\A Q
>\\Q R
(\\R S
text\\S W
,\\W X
d\\Y Z
)\\Z [
)\\[ \
;\\\ ]
}]] 
}^^ 
var`` 
sequenceMenu`` 
=`` 
new`` "
GenericMenu``# .
(``. /
)``/ 0
;``0 1
foreachaa 
(aa 
varaa 
(aa 
timelineNameaa %
,aa% &
playableDirectoraa' 7
)aa7 8
inaa9 ;
namesAndDirectorsaa< M
.aaM N
OrderByaaN U
(aaU V
iaaV W
=>aaX Z
iaa[ \
.aa\ ]
Item1aa] b
)aab c
)aac d
{bb 
varcc 
	isCurrentcc 
=cc 
statecc  %
.cc% &
masterSequencecc& 4
.cc4 5
directorcc5 =
==cc> @
playableDirectorccA Q
;ccQ R
sequenceMenudd 
.dd 
AddItemdd $
(dd$ %
newdd% (

GUIContentdd) 3
(dd3 4
timelineNamedd4 @
)dd@ A
,ddA B
	isCurrentddC L
,ddL M
OnSequenceSelectedddN `
,dd` a
playableDirectorddb r
)ddr s
;dds t
}ee 
ifgg 
(gg 
allDirectorsgg 
.gg 
Lengthgg #
==gg$ &
$numgg' (
)gg( )
sequenceMenuhh 
.hh 
AddDisabledItemhh ,
(hh, -
DirectorStyleshh- ;
.hh; <
noTimelinesInScenehh< N
)hhN O
;hhO P
sequenceMenujj 
.jj 
DropDownjj !
(jj! "
EditorGUILayoutjj" 1
.jj1 2

s_LastRectjj2 <
)jj< =
;jj= >
}kk 	
voidmm 
OnSequenceSelectedmm
(mm  
objectmm  &
argmm' *
)mm* +
{nn 	
varoo 
directorToBindTooo  
=oo! "
(oo# $
PlayableDirectoroo$ 4
)oo4 5
argoo5 8
;oo8 9
ifpp 
(pp 
directorToBindTopp  
)pp  !
{qq 
SetCurrentTimeliness "
(ss" #
directorToBindToss# 3
)ss3 4
;ss4 5
}tt 
}uu 	
}vv 
}ww �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\Control.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
Control
 
{ 
readonly 
List 
< 
Manipulator !
>! "
m_Manipulators# 1
=2 3
new4 7
List8 <
<< =
Manipulator= H
>H I
(I J
)J K
;K L
public		 
bool		 $
HandleManipulatorsEvents		 ,
(		, -
WindowState		- 8
state		9 >
)		> ?
{

 	
var 
	isHandled 
= 
false !
;! "
foreach
(
var
manipulator
in
m_Manipulators
)
{ 
	isHandled 
= 
manipulator '
.' (
HandleEvent( 3
(3 4
state4 9
)9 :
;: ;
if 
( 
	isHandled 
) 
break 
; 
} 
return 
	isHandled 
; 
} 	
public 
void 
AddManipulator "
(" #
Manipulator# .
m/ 0
)0 1
{ 	
m_Manipulators 
. 
Add 
( 
m  
)  !
;! "
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Undo\ApplyDefaultUndoAttribute.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
	Inherited, 5
=6 7
false8 =
,= >

=M N
falseO T
)T U
]U V
public 

class %
ApplyDefaultUndoAttribute *
:+ ,
	Attribute- 6
{ 
public 
string 
	UndoTitle 
;  
public$$ %
ApplyDefaultUndoAttribute$$ (
($$( )
string$$) /
	undoTitle$$0 9
=$$: ;
null$$< @
)$$@ A
{%% 	
	UndoTitle&& 
=&& 
	undoTitle&& !
;&&! "
}'' 	
}(( 
})) �-
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Actions\Invoker.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
public 

static 
class 
Invoker 
{ 
public 
static 
bool 
Invoke !
<! "
T" #
># $
($ %
this% )

context8 ?
)? @
whereA F
TG H
:I J
TimelineActionK Y
{ 	
var 
action 
= 

.& '
TimelineActions' 6
.6 7
GetCachedAction7 F
<F G
TG H
,H I
TimelineActionJ X
>X Y
(Y Z
)Z [
;[ \
return 

.  !!
ExecuteTimelineAction! 6
(6 7
action7 =
,= >
context? F
)F G
;G H
} 	
public 
static 
bool 
Invoke !
<! "
T" #
># $
($ %
this% )
IEnumerable* 5
<5 6

TrackAsset6 @
>@ A
tracksB H
)H I
whereJ O
TP Q
:R S
TrackActionT _
{   	
var!! 
action!! 
=!! 

.!!& '
TrackActions!!' 3
.!!3 4
GetCachedAction!!4 C
<!!C D
T!!D E
,!!E F
TrackAction!!G R
>!!R S
(!!S T
)!!T U
;!!U V
return"" 

.""  !
ExecuteTrackAction""! 3
(""3 4
action""4 :
,"": ;
tracks""< B
)""B C
;""C D
}## 	
public++ 
static++ 
bool++ 
Invoke++ !
<++! "
T++" #
>++# $
(++$ %
this++% )
IEnumerable++* 5
<++5 6
TimelineClip++6 B
>++B C
clips++D I
)++I J
where++K P
T++Q R
:++S T

ClipAction++U _
{,, 	
var-- 
action-- 
=-- 

.--& '
ClipActions--' 2
.--2 3
GetCachedAction--3 B
<--B C
T--C D
,--D E

ClipAction--F P
>--P Q
(--Q R
)--R S
;--S T
return.. 

...  !
ExecuteClipAction..! 2
(..2 3
action..3 9
,..9 :
clips..; @
)..@ A
;..A B
}// 	
public77 
static77 
bool77 
Invoke77 !
<77! "
T77" #
>77# $
(77$ %
this77% )
IEnumerable77* 5
<775 6
IMarker776 =
>77= >
markers77? F
)77F G
where77H M
T77N O
:77P Q
MarkerAction77R ^
{88 	
var99 
action99 
=99 

.99& '

.994 5
GetCachedAction995 D
<99D E
T99E F
,99F G
MarkerAction99H T
>99T U
(99U V
)99V W
;99W X
return:: 

.::  !
ExecuteMarkerAction::! 4
(::4 5
action::5 ;
,::; <
markers::= D
)::D E
;::E F
};; 	
publicBB 
staticBB 
boolBB 
InvokeWithSelectedBB -
<BB- .
TBB. /
>BB/ 0
(BB0 1
)BB1 2
whereBB3 8
TBB9 :
:BB; <
TimelineActionBB= K
{CC 	
returnDD 
InvokeDD 
<DD 
TDD 
>DD 
(DD 
TimelineEditorDD +
.DD+ ,
CurrentContextDD, :
(DD: ;
)DD; <
)DD< =
;DD= >
}EE 	
publicLL 
staticLL 
boolLL #
InvokeWithSelectedClipsLL 2
<LL2 3
TLL3 4
>LL4 5
(LL5 6
)LL6 7
whereLL8 =
TLL> ?
:LL@ A

ClipActionLLB L
{MM 	
returnNN 
InvokeNN 
<NN 
TNN 
>NN 
(NN 
SelectionManagerNN -
.NN- .

(NN; <
)NN< =
)NN= >
;NN> ?
}OO 	
publicVV 
staticVV 
boolVV $
InvokeWithSelectedTracksVV 3
<VV3 4
TVV4 5
>VV5 6
(VV6 7
)VV7 8
whereVV9 >
TVV? @
:VVA B
TrackActionVVC N
{WW 	
returnXX 
InvokeXX 
<XX 
TXX 
>XX 
(XX 
SelectionManagerXX -
.XX- .
SelectedTracksXX. <
(XX< =
)XX= >
)XX> ?
;XX? @
}YY 	
public`` 
static`` 
bool`` %
InvokeWithSelectedMarkers`` 4
<``4 5
T``5 6
>``6 7
(``7 8
)``8 9
where``: ?
T``@ A
:``B C
MarkerAction``D P
{aa 	
returnbb 
Invokebb 
<bb 
Tbb 
>bb 
(bb 
SelectionManagerbb -
.bb- .
SelectedMarkersbb. =
(bb= >
)bb> ?
)bb? @
;bb@ A
}cc 	
}dd 
}ee �c
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\CustomEditors\CustomTimelineEditorCache.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
class

 	%
CustomTimelineEditorCache


 #
{ 
static 
class 

<" #
TEditorClass# /
>/ 0
where1 6
TEditorClass7 C
:D E
classF K
,K L
newM P
(P Q
)Q R
{
private 
static 
Type 
[  
]  !
s_SubClasses" .
=/ 0
null1 5
;5 6
private 
static 
readonly #
TEditorClass$ 0
s_DefaultInstance1 B
=C D
newE H
TEditorClassI U
(U V
)V W
;W X
private 
static 
readonly #

Dictionary$ .
<. /
System/ 5
.5 6
Type6 :
,: ;
TEditorClass< H
>H I
	s_TypeMapJ S
=T U
newV Y

DictionaryZ d
<d e
Typee i
,i j
TEditorClassk w
>w x
(x y
)y z
;z {
public 
static 
TEditorClass &
DefaultInstance' 6
{ 
get 
{ 
return 
s_DefaultInstance .
;. /
}0 1
} 
static 
Type 
[ 
] 

SubClasses $
{ 
get 
{ 
return 
s_SubClasses '
??( *
( 
s_SubClasses %
=& '
	TypeCache( 1
.1 2
GetTypesDerivedFrom2 E
<E F
TEditorClassF R
>R S
(S T
)T U
.U V
OrderByV ]
(] ^
t^ _
=>` b
tc d
.d e
Assemblye m
==n p
typeofq w
(w x
UnityEditor	x �
.
� �
Timeline
� �
.
� �
TimelineEditor
� �
)
� �
.
� �
Assembly
� �
?
� �
$num
� �
:
� �
$num
� �
)
� �
.
� �
ToArray
� �
(
� �
)
� �
)
� �
;
� �
} 
} 
public!! 
static!! 
TEditorClass!! &
GetEditorForType!!' 7
(!!7 8
Type!!8 <
type!!= A
)!!A B
{"" 
TEditorClass## 
editorClass## (
=##) *
null##+ /
;##/ 0
if$$ 
($$ 
!$$ 
	s_TypeMap$$ 
.$$ 
TryGetValue$$ *
($$* +
type$$+ /
,$$/ 0
out$$1 4
editorClass$$5 @
)$$@ A
||$$B D
editorClass$$E P
==$$Q S
null$$T X
)$$X Y
{%% 
Type&& 
editorClassType&& (
=&&) *
null&&+ /
;&&/ 0
Type'' 

searchType'' #
=''$ %
type''& *
;''* +
while(( 
((( 

searchType(( %
!=((& (
null(() -
)((- .
{)) 
editorClassType++ '
=++( )&
GetExactEditorClassForType++* D
(++D E

searchType++E O
)++O P
;++P Q
if,, 
(,, 
editorClassType,, +
!=,,, .
null,,/ 3
),,3 4
break-- !
;--! "

searchType.. "
=..# $

searchType..% /
.../ 0
BaseType..0 8
;..8 9
}// 
if11 
(11 
editorClassType11 '
==11( *
null11+ /
)11/ 0
{22 
editorClass33 #
=33$ %
s_DefaultInstance33& 7
;337 8
}44 
else55 
{66 
try77 
{88 
editorClass99 '
=99( )
(99* +
TEditorClass99+ 7
)997 8
	Activator998 A
.99A B
CreateInstance99B P
(99P Q
editorClassType99Q `
)99` a
;99a b
}:: 
catch;; 
(;; 
	Exception;; (
e;;) *
);;* +
{<< 
Debug== !
.==! "
LogWarningFormat==" 2
(==2 3
$str==3 n
,==n o
editorClassType==p 
,	== �
e
==� �
.
==� �
Message
==� �
)
==� �
;
==� �
editorClass>> '
=>>( )
s_DefaultInstance>>* ;
;>>; <
}?? 
}@@ 
	s_TypeMapBB 
[BB 
typeBB "
]BB" #
=BB$ %
editorClassBB& 1
;BB1 2
}CC 
returnEE 
editorClassEE "
;EE" #
}FF 
privateHH 
staticHH 
TypeHH &
GetExactEditorClassForTypeHH  :
(HH: ;
TypeHH; ?
typeHH@ D
)HHD E
{II 
foreachJJ 
(JJ 
varJJ 
subClassJJ %
inJJ& (

SubClassesJJ) 3
)JJ3 4
{KK 
varMM 
attrMM 
=MM 
(MM  )
CustomTimelineEditorAttributeMM  =
)MM= >
	AttributeMM> G
.MMG H
GetCustomAttributeMMH Z
(MMZ [
subClassMM[ c
,MMc d
typeofMMe k
(MMk l*
CustomTimelineEditorAttribute	MMl �
)
MM� �
,
MM� �
false
MM� �
)
MM� �
;
MM� �
ifNN 
(NN 
attrNN 
!=NN 
nullNN  $
&&NN% '
attrNN( ,
.NN, -
classToEditNN- 8
==NN9 ;
typeNN< @
)NN@ A
{OO 
returnPP 
subClassPP '
;PP' (
}QQ 
}RR 
returnTT 
nullTT 
;TT 
}UU 
publicWW 
staticWW 
voidWW 
ClearWW $
(WW$ %
)WW% &
{XX 
	s_TypeMapYY 
.YY 
ClearYY 
(YY  
)YY  !
;YY! "
s_SubClassesZZ 
=ZZ 
nullZZ #
;ZZ# $
}[[ 
}\\ 	
public^^ 
static^^ 
TEditorClass^^ "
GetEditorForType^^# 3
<^^3 4
TEditorClass^^4 @
,^^@ A

>^^O P
(^^P Q
Type^^Q U
type^^V Z
)^^Z [
where^^\ a
TEditorClass^^b n
:^^o p
class^^q v
,^^v w
new^^x {
(^^{ |
)^^| }
{__ 	
if`` 
(`` 
type`` 
==`` 
null`` 
)`` 
throwaa 
newaa !
ArgumentNullExceptionaa /
(aa/ 0
nameofaa0 6
(aa6 7
typeaa7 ;
)aa; <
)aa< =
;aa= >
ifcc 
(cc 
!cc 
typeofcc 
(cc 

)cc% &
.cc& '
IsAssignableFromcc' 7
(cc7 8
typecc8 <
)cc< =
)cc= >
throwdd 
newdd 
ArgumentExceptiondd +
(dd+ ,
typedd, 0
.dd0 1
FullNamedd1 9
+dd: ;
$strdd< T
+ddU V
typeofddW ]
(dd] ^

)ddk l
)ddl m
;ddm n
returnff 

<ff  !
TEditorClassff! -
>ff- .
.ff. /
GetEditorForTypeff/ ?
(ff? @
typeff@ D
)ffD E
;ffE F
}gg 	
publicii 
staticii 
voidii 

ClearCacheii %
<ii% &
TEditorClassii& 2
>ii2 3
(ii3 4
)ii4 5
whereii6 ;
TEditorClassii< H
:iiI J
classiiK P
,iiP Q
newiiR U
(iiU V
)iiV W
{jj 	

<kk 
TEditorClasskk &
>kk& '
.kk' (
Clearkk( -
(kk- .
)kk. /
;kk/ 0
}ll 	
publicnn 
staticnn 

ClipEditornn  

(nn. /
TimelineClipnn/ ;
clipnn< @
)nn@ A
{oo 	
ifpp 
(pp 
clippp 
==pp 
nullpp 
)pp 
throwqq 
newqq !
ArgumentNullExceptionqq /
(qq/ 0
nameofqq0 6
(qq6 7
clipqq7 ;
)qq; <
)qq< =
;qq= >
varss 
typess 
=ss 
typeofss 
(ss 
IPlayableAssetss ,
)ss, -
;ss- .
iftt 
(tt 
cliptt 
.tt 
assettt 
!=tt 
nulltt "
)tt" #
typeuu 
=uu 
clipuu 
.uu 
assetuu !
.uu! "
GetTypeuu" )
(uu) *
)uu* +
;uu+ ,
ifww 
(ww 
!ww 
typeofww 
(ww 
IPlayableAssetww &
)ww& '
.ww' (
IsAssignableFromww( 8
(ww8 9
typeww9 =
)ww= >
)ww> ?
returnxx  
GetDefaultClipEditorxx +
(xx+ ,
)xx, -
;xx- .
returnzz 
GetEditorForTypezz #
<zz# $

ClipEditorzz$ .
,zz. /
IPlayableAssetzz0 >
>zz> ?
(zz? @
typezz@ D
)zzD E
;zzE F
}{{ 	
public}} 
static}} 

ClipEditor}}   
GetDefaultClipEditor}}! 5
(}}5 6
)}}6 7
{~~ 	
return 

<  !

ClipEditor! +
>+ ,
., -
DefaultInstance- <
;< =
}
�� 	
public
�� 
static
�� 
TrackEditor
�� !
GetTrackEditor
��" 0
(
��0 1

TrackAsset
��1 ;
track
��< A
)
��A B
{
�� 	
if
�� 
(
�� 
track
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
track
��7 <
)
��< =
)
��= >
;
��> ?
return
�� 
GetEditorForType
�� #
<
��# $
TrackEditor
��$ /
,
��/ 0

TrackAsset
��1 ;
>
��; <
(
��< =
track
��= B
.
��B C
GetType
��C J
(
��J K
)
��K L
)
��L M
;
��M N
}
�� 	
public
�� 
static
�� 
TrackEditor
�� !#
GetDefaultTrackEditor
��" 7
(
��7 8
)
��8 9
{
�� 	
return
�� 

��  
<
��  !
TrackEditor
��! ,
>
��, -
.
��- .
DefaultInstance
��. =
;
��= >
}
�� 	
public
�� 
static
�� 
MarkerEditor
�� "
GetMarkerEditor
��# 2
(
��2 3
IMarker
��3 :
marker
��; A
)
��A B
{
�� 	
if
�� 
(
�� 
marker
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
marker
��7 =
)
��= >
)
��> ?
;
��? @
return
�� 
GetEditorForType
�� #
<
��# $
MarkerEditor
��$ 0
,
��0 1
IMarker
��2 9
>
��9 :
(
��: ;
marker
��; A
.
��A B
GetType
��B I
(
��I J
)
��J K
)
��K L
;
��L M
}
�� 	
public
�� 
static
�� 
MarkerEditor
�� "$
GetDefaultMarkerEditor
��# 9
(
��9 :
)
��: ;
{
�� 	
return
�� 

��  
<
��  !
MarkerEditor
��! -
>
��- .
.
��. /
DefaultInstance
��/ >
;
��> ?
}
�� 	
}
�� 
}�� �V
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Utils\EditModeRippleUtils.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
EditModeRippleUtils $
{		 
public

 
static

 
void

 
Insert

 !
(

! "
IEnumerable

" -
<

- .


. ;
>

; <
itemsGroups

= H
)

H I
{ 	
var 
start 
= 
double 
. 
MaxValue '
;' (
var
end
=
double
.
MinValue
;
foreach 
( 
var 

itemsGroup #
in$ &
itemsGroups' 2
)2 3
{ 
start 
= 
Math 
. 
Min  
(  !
start! &
,& '

itemsGroup( 2
.2 3
items3 8
.8 9
Min9 <
(< =
c= >
=>? A
cB C
.C D
startD I
)I J
)J K
;K L
end 
= 
Math 
. 
Max 
( 
end "
," #

itemsGroup$ .
.. /
items/ 4
.4 5
Max5 8
(8 9
c9 :
=>; =
c> ?
.? @
end@ C
)C D
)D E
;E F
} 
var 
offset 
= 
$num 
; 
var 

= 
(  !
DiscreteTime! -
)- .
start. 3
;3 4
var 
discreteEnd 
= 
( 
DiscreteTime +
)+ ,
end, /
;/ 0
var 
	itemTypes 
= 

ItemsUtils &
.& '
GetItemTypes' 3
(3 4
itemsGroups4 ?
)? @
;@ A
var 
siblingsToRipple  
=! "
new# &
List' +
<+ ,

>9 :
(: ;
); <
;< =
foreach 
( 
var 

itemsGroup #
in$ &
itemsGroups' 2
)2 3
{ 
siblingsToRipple  
.  !
AddRange! )
() *

ItemsUtils* 4
.4 5
GetItemsExcept5 C
(C D

itemsGroupD N
.N O
targetTrackO Z
,Z [

itemsGroup\ f
.f g
itemsg l
)l m
.m n
Wheren s
(s t
it u
=>v x
	itemTypes	y �
.
� �
Contains
� �
(
� �
i
� �
.
� �
GetType
� �
(
� �
)
� �
)
� �
)
� �
)
� �
;
� �
foreach 
( 
var 
item !
in" $
siblingsToRipple% 5
)5 6
{   
var!! 
discreteItemStart!! )
=!!* +
(!!, -
DiscreteTime!!- 9
)!!9 :
item!!: >
.!!> ?
start!!? D
;!!D E
var"" 
discreteItemEnd"" '
=""( )
(""* +
DiscreteTime""+ 7
)""7 8
item""8 <
.""< =
end""= @
;""@ A
if$$ 
($$ 
($$ 
discreteItemStart$$ *
<$$+ ,

&&$$; =
discreteItemEnd$$> M
>$$N O

)$$] ^
||$$_ a
($$b c
discreteItemStart$$c t
>=$$u w

&&
$$� �
discreteItemStart
$$� �
<
$$� �
discreteEnd
$$� �
)
$$� �
)
$$� �
offset%% 
=%%  
Math%%! %
.%%% &
Max%%& )
(%%) *
offset%%* 0
,%%0 1
end%%2 5
-%%6 7
item%%8 <
.%%< =
start%%= B
)%%B C
;%%C D
}&& 
}'' 
if)) 
()) 
offset)) 
>)) 
$num)) 
))) 
{** 
foreach++ 
(++ 
var++ 
sibling++ $
in++% '
siblingsToRipple++( 8
)++8 9
{,, 
if-- 
(-- 
(-- 
DiscreteTime-- %
)--% &
sibling--& -
.--- .
end--. 1
>--2 3
(--4 5
DiscreteTime--5 A
)--A B
start--B G
)--G H
sibling.. 
...  
start..  %
+=..& (
offset..) /
;../ 0
}// 
}00 
}11 	
public33 
static33 
void33 
Remove33 !
(33! "
IEnumerable33" -
<33- .

>33; <
itemsGroups33= H
)33H I
{44 	
foreach55 
(55 
var55 

itemsGroup55 #
in55$ &
itemsGroups55' 2
)552 3
Remove66 
(66 

itemsGroup66 !
.66! "
targetTrack66" -
,66- .

itemsGroup66/ 9
.669 :
items66: ?
)66? @
;66@ A
}77 	
static99 
void99 
Remove99 
(99 

TrackAsset99 %
track99& +
,99+ ,
IEnumerable99- 8
<998 9

>99F G
items99H M
)99M N
{:: 	
if;; 
(;; 
track;; 
==;; 
null;; 
);; 
return;; %
;;;% &
var>> 
	itemTypes>> 
=>> 

ItemsUtils>> &
.>>& '
GetItemTypes>>' 3
(>>3 4
items>>4 9
)>>9 :
;>>: ;
var?? 
siblingsToRipple??  
=??! "

ItemsUtils??# -
.??- .
GetItemsExcept??. <
(??< =
track??= B
,??B C
items??D I
)??I J
.@@ 
Where@@ 
(@@ 
i@@ 
=>@@ 
	itemTypes@@ %
.@@% &
Contains@@& .
(@@. /
i@@/ 0
.@@0 1
GetType@@1 8
(@@8 9
)@@9 :
)@@: ;
)@@; <
.AA 
OrderByAA 
(AA 
cAA 
=>AA 
cAA 
.AA  
startAA  %
)AA% &
.BB 
ToArrayBB 
(BB 
)BB 
;BB 
varDD 
orderedItemsDD 
=DD 
itemsDD $
.EE 
OrderByEE 
(EE 
cEE 
=>EE 
cEE 
.EE  
startEE  %
)EE% &
.FF 
ToArrayFF 
(FF 
)FF 
;FF 
varHH 
cumulativeOffsetHH  
=HH! "
$numHH# &
;HH& '
foreachJJ 
(JJ 
varJJ 
itemJJ 
inJJ  
orderedItemsJJ! -
)JJ- .
{KK 
varLL 
offsetLL 
=LL 
itemLL !
.LL! "
endLL" %
-LL& '
itemLL( ,
.LL, -
startLL- 2
;LL2 3
varMM 
startMM 
=MM 
itemMM  
.MM  !
startMM! &
-MM' (
cumulativeOffsetMM) 9
;MM9 :
varNN 
endNN 
=NN 
itemNN 
.NN 
endNN "
-NN# $
cumulativeOffsetNN% 5
;NN5 6
varPP 
nextItemPP 
=PP 
siblingsToRipplePP /
.PP/ 0
FirstOrDefaultPP0 >
(PP> ?
cPP? @
=>PPA C
(PPD E
DiscreteTimePPE Q
)PPQ R
cPPR S
.PPS T
startPPT Y
>PPZ [
(PP\ ]
DiscreteTimePP] i
)PPi j
startPPj o
&&PPp r
(PPs t
DiscreteTime	PPt �
)
PP� �
c
PP� �
.
PP� �
start
PP� �
<
PP� �
(
PP� �
DiscreteTime
PP� �
)
PP� �
end
PP� �
)
PP� �
;
PP� �
ifQQ 
(QQ 
nextItemQQ 
!=QQ 
nullQQ  $
)QQ$ %
{RR 
offsetSS 
-=SS 
endSS !
-SS" #
nextItemSS$ ,
.SS, -
startSS- 2
;SS2 3
}TT 
varVV 
prevItemVV 
=VV 
siblingsToRippleVV /
.VV/ 0
FirstOrDefaultVV0 >
(VV> ?
cVV? @
=>VVA C
(VVD E
DiscreteTimeVVE Q
)VVQ R
cVVR S
.VVS T
endVVT W
>VVX Y
(VVZ [
DiscreteTimeVV[ g
)VVg h
startVVh m
&&VVn p
(VVq r
DiscreteTimeVVr ~
)VV~ 
c	VV �
.
VV� �
end
VV� �
<
VV� �
(
VV� �
DiscreteTime
VV� �
)
VV� �
end
VV� �
)
VV� �
;
VV� �
ifWW 
(WW 
prevItemWW 
!=WW 
nullWW  $
)WW$ %
{XX 
offsetYY 
-=YY 
prevItemYY &
.YY& '
endYY' *
-YY+ ,
startYY- 2
;YY2 3
}ZZ 
if\\ 
(\\ 
offset\\ 
<=\\ 
$num\\ !
)\\! "
continue]] 
;]] 
cumulativeOffset__  
+=__! #
offset__$ *
;__* +
foraa 
(aa 
intaa 
iaa 
=aa 
siblingsToRippleaa -
.aa- .
Lengthaa. 4
-aa5 6
$numaa7 8
;aa8 9
iaa: ;
>=aa< >
$numaa? @
;aa@ A
--aaB D
iaaD E
)aaE F
{bb 
varcc 
ccc 
=cc 
siblingsToRipplecc ,
[cc, -
icc- .
]cc. /
;cc/ 0
ifdd 
(dd 
(dd 
DiscreteTimedd %
)dd% &
cdd& '
.dd' (
startdd( -
<dd. /
(dd0 1
DiscreteTimedd1 =
)dd= >
startdd> C
)ddC D
breakee 
;ee 
cgg 
.gg 
startgg 
=gg 
cgg 
.gg  
startgg  %
-gg& '
offsetgg( .
;gg. /
}hh 
}ii 
}jj 	
}kk 
}ll �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Actions\MarkerAction.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
[ 
ActiveInMode 
( 

.  
Default  '
)' (
]( )
public 

abstract 
class 
MarkerAction &
:' (
IAction) 0
{ 
public 
abstract 
bool 
Execute $
($ %
IEnumerable% 0
<0 1
IMarker1 8
>8 9
markers: A
)A B
;B C
public!! 
abstract!! 
ActionValidity!! &
Validate!!' /
(!!/ 0
IEnumerable!!0 ;
<!!; <
IMarker!!< C
>!!C D
markers!!E L
)!!L M
;!!M N
}"" 
}## �`
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Utils\EditModeMixUtils.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
EditModeMixUtils !
{ 
static		 
readonly		 
List		 
<		 
PlacementValidity		 .
>		. /%
k_UnrecoverablePlacements		0 I
=		J K
new		L O
List		P T
<		T U
PlacementValidity		U f
>		f g
{

 	
PlacementValidity 
. 
InvalidIsWithin -
,- .
PlacementValidity 
.  
InvalidStartsInBlend 2
,2 3
PlacementValidity
.
InvalidContainsBlend
} 	
;	 

public 
static 
bool 
	CanInsert $
($ %
IEnumerable% 0
<0 1

>> ?
itemsGroups@ K
)K L
{ 	
foreach 
( 
var 

itemsGroup #
in$ &
itemsGroups' 2
)2 3
{ 
var 
siblings 
= 

ItemsUtils )
.) *
GetItemsExcept* 8
(8 9

itemsGroup9 C
.C D
targetTrackD O
,O P

itemsGroupQ [
.[ \
items\ a
)a b
;b c
foreach 
( 
var 
item !
in" $

itemsGroup% /
./ 0
items0 5
)5 6
{ 
var 
placementValidity )
=* + 
GetPlacementValidity, @
(@ A
itemA E
,E F
siblingsG O
)O P
;P Q
if 
( %
k_UnrecoverablePlacements 1
.1 2
Contains2 :
(: ;
placementValidity; L
)L M
)M N
{ 
return 
false $
;$ %
} 
} 
} 
return   
true   
;   
}!! 	
public$$ 
static$$ 
void$$ $
PrepareItemsForInsertion$$ 3
($$3 4
IEnumerable$$4 ?
<$$? @

>$$M N
itemsGroups$$O Z
)$$Z [
{%% 	
foreach&& 
(&& 
var&& 

itemsGroup&& #
in&&$ &
itemsGroups&&' 2
)&&2 3
{'' 
var(( 
siblings(( 
=(( 

ItemsUtils(( )
.(() *
GetItemsExcept((* 8
(((8 9

itemsGroup((9 C
.((C D
targetTrack((D O
,((O P

itemsGroup((Q [
.(([ \
items((\ a
)((a b
;((b c
foreach)) 
()) 
var)) 
item)) !
in))" $

itemsGroup))% /
.))/ 0
items))0 5
.))5 6
OfType))6 <
<))< =

ITrimmable))= G
>))G H
())H I
)))I J
)))J K
{** 
var++ 

eatenItems++ "
=++# $
siblings++% -
.++- .
Where++. 3
(++3 4
c++4 5
=>++6 8

.++F G
IsItemWithinRange++G X
(++X Y
c++Y Z
,++Z [
item++\ `
.++` a
start++a f
,++f g
item++h l
.++l m
end++m p
)++p q
)++q r
.++r s
ToList++s y
(++y z
)++z {
;++{ |
var-- 
intersectedItem-- '
=--( )

.--7 8#
GetFirstIntersectedItem--8 O
(--O P
siblings--P X
,--X Y
item--Z ^
.--^ _
end--_ b
)--b c
;--c d
if.. 
(.. 
intersectedItem.. '
!=..( *
null..+ /
)../ 0

eatenItems// "
.//" #
Add//# &
(//& '
intersectedItem//' 6
)//6 7
;//7 8
var11 
blendableItems11 &
=11' (

eatenItems11) 3
.113 4
OfType114 :
<11: ;

IBlendable11; E
>11E F
(11F G
)11G H
;11H I
if22 
(22 
blendableItems22 &
.22& '
Any22' *
(22* +
)22+ ,
)22, -
{33 
var44 
minTime44 #
=44$ %
blendableItems44& 4
.444 5
Min445 8
(448 9
c449 :
=>44; =
c44> ?
.44? @
end44@ C
-44D E
c44F G
.44G H
rightBlendDuration44H Z
)44Z [
;44[ \
if66 
(66 
item66  
.66  !
end66! $
>66% &
minTime66' .
)66. /
item77  
.77  !
SetEnd77! '
(77' (
minTime77( /
,77/ 0
false771 6
)776 7
;777 8
}88 
}99 
}:: 
};; 	
public== 
static== 
PlacementValidity== ' 
GetPlacementValidity==( <
(==< =

item==K O
,==O P
IEnumerable==Q \
<==\ ]

>==j k

otherItems==l v
)==v w
{>> 	
if?? 
(?? 
item?? 
.?? 
duration?? 
<=??  
$num??! $
)??$ %
return@@ 
PlacementValidity@@ (
.@@( )
Valid@@) .
;@@. /
varBB 
sortedItemsBB 
=BB 

otherItemsBB (
.BB( )
WhereBB) .
(BB. /
iBB/ 0
=>BB1 3
iBB4 5
.BB5 6
durationBB6 >
>BB? @
$numBBA D
)BBD E
.BBE F
OrderByBBF M
(BBM N
cBBN O
=>BBP R
cBBS T
.BBT U
startBBU Z
)BBZ [
;BB[ \
varCC 

candidatesCC 
=CC 
newCC  
ListCC! %
<CC% &

>CC3 4
(CC4 5
)CC5 6
;CC6 7
foreachDD 
(DD 
varDD 

sortedItemDD #
inDD$ &
sortedItemsDD' 2
)DD2 3
{EE 
ifFF 
(FF 
(FF 
DiscreteTimeFF !
)FF! "

sortedItemFF" ,
.FF, -
startFF- 2
>=FF3 5
(FF6 7
DiscreteTimeFF7 C
)FFC D
itemFFD H
.FFH I
endFFI L
)FFL M
{GG 
breakII 
;II 
}JJ 
ifLL 
(LL 
(LL 
DiscreteTimeLL !
)LL! "

sortedItemLL" ,
.LL, -
endLL- 0
<=LL1 3
(LL4 5
DiscreteTimeLL5 A
)LLA B
itemLLB F
.LLF G
startLLG L
)LLL M
{MM 
continueOO 
;OO 
}PP 

candidatesRR 
.RR 
AddRR 
(RR 

sortedItemRR )
)RR) *
;RR* +
}SS 
varUU 

=UU 
(UU  !
DiscreteTimeUU! -
)UU- .
itemUU. 2
.UU2 3
startUU3 8
;UU8 9
varVV 
discreteEndVV 
=VV 
(VV 
DiscreteTimeVV +
)VV+ ,
itemVV, 0
.VV0 1
endVV1 4
;VV4 5
forYY 
(YY 
intYY 
iYY 
=YY 
$numYY 
,YY 
nYY 
=YY 

candidatesYY  *
.YY* +
CountYY+ 0
;YY0 1
iYY2 3
<YY4 5
nYY6 7
;YY7 8
iYY9 :
++YY: <
)YY< =
{ZZ 
var[[ 
	candidate[[ 
=[[ 

candidates[[  *
[[[* +
i[[+ ,
][[, -
;[[- .
var]] 
	blendItem]] 
=]] 
item]]  $
as]]% '

IBlendable]]( 2
;]]2 3
if^^ 
(^^ 
	blendItem^^ 
!=^^  
null^^! %
&&^^& (
	blendItem^^) 2
.^^2 3
supportsBlending^^3 C
)^^C D
{__ 
if`` 
(`` 

.``% &
Contains``& .
(``. /
	candidate``/ 8
.``8 9
start``9 >
,``> ?
	candidate``@ I
.``I J
end``J M
,``M N
item``O S
)``S T
)``T U
returnaa 
PlacementValidityaa 0
.aa0 1
InvalidIsWithinaa1 @
;aa@ A
ifcc 
(cc 
icc 
<cc 
ncc 
-cc 
$numcc  !
)cc! "
{dd 
varee 

=ee* +

candidatesee, 6
[ee6 7
iee7 8
+ee9 :
$numee; <
]ee< =
;ee= >
vargg &
discreteNextCandidateStartgg 6
=gg7 8
(gg9 :
DiscreteTimegg: F
)ggF G

.ggT U
startggU Z
;ggZ [
varhh  
discreteCandidateEndhh 0
=hh1 2
(hh3 4
DiscreteTimehh4 @
)hh@ A
	candidatehhA J
.hhJ K
endhhK N
;hhN O
ifjj 
(jj  
discreteCandidateEndjj 0
>jj1 2&
discreteNextCandidateStartjj3 M
)jjM N
{kk 
ifll 
(ll  

>=ll. 0&
discreteNextCandidateStartll1 K
)llK L
{mm 
returnpp  &
PlacementValiditypp' 8
.pp8 9 
InvalidStartsInBlendpp9 M
;ppM N
}qq 
ifss 
(ss  
discreteEndss  +
>ss, -&
discreteNextCandidateStartss. H
&&ssI K
discreteEndssL W
<=ssX Z 
discreteCandidateEndss[ o
)sso p
returntt  &
PlacementValiditytt' 8
.tt8 9
InvalidEndsInBlendtt9 K
;ttK L
ifvv 
(vv  

<vv. /&
discreteNextCandidateStartvv0 J
&&vvK M
discreteEndvvN Y
>vvZ [ 
discreteCandidateEndvv\ p
)vvp q
returnww  &
PlacementValidityww' 8
.ww8 9 
InvalidContainsBlendww9 M
;wwM N
}xx 
}yy 
if{{ 
({{ 

.{{% &
Contains{{& .
({{. /
item{{/ 3
.{{3 4
start{{4 9
,{{9 :
item{{; ?
.{{? @
end{{@ C
,{{C D
	candidate{{E N
){{N O
){{O P
return|| 
PlacementValidity|| 0
.||0 1
InvalidContains||1 @
;||@ A
}}} 
else~~ 
{ 
if
�� 
(
�� 

�� %
.
��% &
Overlaps
��& .
(
��. /
item
��/ 3
,
��3 4
	candidate
��5 >
.
��> ?
start
��? D
,
��D E
	candidate
��F O
.
��O P
end
��P S
)
��S T
||
�� 

�� (
.
��( )
Overlaps
��) 1
(
��1 2
	candidate
��2 ;
,
��; <
item
��= A
.
��A B
start
��B G
,
��G H
item
��I M
.
��M N
end
��N Q
)
��Q R
)
��R S
return
�� 
PlacementValidity
�� 0
.
��0 10
"InvalidOverlapWithNonBlendableClip
��1 S
;
��S T
}
�� 
}
�� 
return
�� 
PlacementValidity
�� $
.
��$ %
Valid
��% *
;
��* +
}
�� 	
}
�� 
}�� �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Sequence\TrackZoom.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
	TrackZoom
 
: 
Manipulator !
{ 
	protected		 
override		 
bool		 

MouseWheel		  *
(		* +
Event		+ 0
evt		1 4
,		4 5
WindowState		6 A
state		B G
)		G H
{

 	
if 
( 
	EditorGUI 
. 
	actionKey #
)# $
{ 
state
.

trackScale
=
Mathf
.
Min
(
Mathf
.
Max
(
state
.

trackScale
+
(
evt
.
delta
.
y
*
$num
)
,
$num
)
,
$num
)
;
return 
true 
; 
} 
return 
false 
; 
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Sequence\RectangleSelect.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
RectangleSelect
 
: 

{ 
	protected 
override 
bool 

{. /
get0 3
{4 5
return6 <
false= B
;B C
}D E
}F G
	protected

 
override

 
bool

 
CanStartRectangle

  1
(

1 2
Event

2 7
evt

8 ;
,

; <
Vector2

= D


E R
,

R S
WindowState

T _
state

` e
)

e f
{ 	
if 
( 
evt 
. 
button 
!= 
$num 
||  "
evt# &
.& '
alt' *
)* +
return
false
;
return 
PickerUtils 
. 
pickedElements -
.- .
All. 1
(1 2
e2 3
=>4 6
e7 8
is9 ;
IRowGUI< C
)C D
;D E
} 	
	protected 
override 
bool 
OnFinish  (
(( )
Event) .
evt/ 2
,2 3
WindowState4 ?
state@ E
,E F
RectG K
rectL P
)P Q
{ 	
var 
selectables 
= 
state #
.# $
spacePartitioner$ 4
.4 5
GetItemsInArea5 C
<C D
ISelectableD O
>O P
(P Q
rectQ U
)U V
.V W
ToListW ]
(] ^
)^ _
;_ `
if 
( 
! 
selectables 
. 
Any  
(  !
)! "
)" #
return 
false 
; 
if 
( 

. 
CanClearSelection /
(/ 0
evt0 3
)3 4
)4 5
SelectionManager  
.  !
Clear! &
(& '
)' (
;( )
foreach 
( 
var 

selectable #
in$ &
selectables' 2
)2 3
{ 

. 
HandleItemSelection 1
(1 2
evt2 5
,5 6

selectable7 A
)A B
;B C
} 
return!! 
true!! 
;!! 
}"" 	
}## 
}$$ �y
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\State\SequenceState.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	

 
: 
ISequenceState (
{		 
readonly

 
WindowState

 


 *
;

* +
readonly 

m_ParentSequence /
;/ 0
double
m_Time
;
Range 
?
m_CachedEvaluableRange %
;% &
public 

asset "
{# $
get% (
;( )
}* +
public 
PlayableDirector 
director  (
{) *
get+ .
;. /
}0 1
public 
TimelineClip 
hostClip $
{% &
get' *
;* +
}, -
public 
double 
start 
{ 
get !
;! "
}# $
public 
double 
	timeScale 
{  !
get" %
;% &
}' (
public 
double 
duration 
{ 	
get 
{ 
if 
( 
asset 
== 
null !
)! "
return 
$num 
; 
var 

=" #
asset$ )
.) *
durationMode* 6
==7 9

.G H
DurationModeH T
.T U
FixedLengthU `
?a b
assetc h
.h i

:w x
assety ~
.~ 
duration	 �
;
� �
return 
hostClip 
==  "
null# '
?( )

:8 9
Math: >
.> ?
Min? B
(B C
hostClipC K
.K L
durationL T
,T U

)c d
;d e
} 
}   	
bool"" 
?"" 
m_IsReadOnly"" 
;"" 
public## 
bool## 

isReadOnly## 
{$$ 	
get%% 
{&& 
if'' 
('' 
!'' 
m_IsReadOnly'' !
.''! "
HasValue''" *
)''* +
m_IsReadOnly((  
=((! "
FileUtil((# +
.((+ ,

IsReadOnly((, 6
(((6 7
asset((7 <
)((< =
;((= >
return)) 
m_IsReadOnly)) #
.))# $
Value))$ )
;))) *
}** 
}++ 	
public-- 
void-- 
ResetIsReadOnly-- #
(--# $
)--$ %
{.. 	
m_IsReadOnly// 
=// 
null// 
;//  
}00 	
public22 "
TimelineAssetViewModel22 %
	viewModel22& /
{33 	
get44 
{55 
return66 #
TimelineWindowViewPrefs66 .
.66. / 
GetOrCreateViewModel66/ C
(66C D
asset66D I
)66I J
;66J K
}77 
}88 	
public:: 
double:: 
time:: 
{;; 	
get<< 
{== 
if>> 
(>> 
m_ParentSequence>> $
!=>>% '
null>>( ,
)>>, -
return?? 
hostClip?? #
.??# $
ToLocalTimeUnbound??$ 6
(??6 7
m_ParentSequence??7 G
.??G H
time??H L
)??L M
;??M N
returnAA 
GetLocalTimeAA #
(AA# $
)AA$ %
;AA% &
}BB 
setCC 
{DD 
varEE 
correctedValueEE "
=EE# $
MathEE% )
.EE) *
MinEE* -
(EE- .
valueEE. 3
,EE3 4
TimeUtilityEE5 @
.EE@ A*
k_MaxTimelineDurationInSecondsEEA _
)EE_ `
;EE` a
	viewModelFF 
.FF 

windowTimeFF $
=FF% &
correctedValueFF' 5
;FF5 6
ifHH 
(HH 
m_ParentSequenceHH $
!=HH% '
nullHH( ,
)HH, -
m_ParentSequenceII $
.II$ %
timeII% )
=II* +
hostClipII, 4
.II4 5 
FromLocalTimeUnboundII5 I
(III J
correctedValueIIJ X
)IIX Y
;IIY Z
elseJJ 
SetLocalTimeKK  
(KK  !
correctedValueKK! /
)KK/ 0
;KK0 1
}LL 
}MM 	
publicOO 
intOO 
frameOO 
{PP 	
getQQ 
{QQ 
returnQQ 
TimeUtilityQQ $
.QQ$ %
ToFramesQQ% -
(QQ- .
timeQQ. 2
,QQ2 3
	frameRateQQ4 =
)QQ= >
;QQ> ?
}QQ@ A
setRR 
{RR 
timeRR 
=RR 
TimeUtilityRR $
.RR$ %

FromFramesRR% /
(RR/ 0
MathfRR0 5
.RR5 6
MaxRR6 9
(RR9 :
$numRR: ;
,RR; <
valueRR= B
)RRB C
,RRC D
	frameRateRRE N
)RRN O
;RRO P
}RRQ R
}SS 	
publicUU 
floatUU 
	frameRateUU 
{VV 	
getWW 
{XX 
ifYY 
(YY 
assetYY 
!=YY 
nullYY !
)YY! "
returnZZ 
assetZZ  
.ZZ  !
editorSettingsZZ! /
.ZZ/ 0
fpsZZ0 3
;ZZ3 4
return\\ 

.\\$ %
EditorSettings\\% 3
.\\3 4
kDefaultFps\\4 ?
;\\? @
}]] 
set^^ 
{__ 

.`` 
EditorSettings`` ,
settings``- 5
=``6 7
asset``8 =
.``= >
editorSettings``> L
;``L M
ifaa 
(aa 
Mathaa 
.aa 
Absaa 
(aa 
settingsaa %
.aa% &
fpsaa& )
-aa* +
valueaa, 1
)aa1 2
>aa3 4
TimeUtilityaa5 @
.aa@ A
kFrameRateEpsilonaaA R
)aaR S
{bb 
settingscc 
.cc 
fpscc  
=cc! "
Mathfcc# (
.cc( )
Maxcc) ,
(cc, -
valuecc- 2
,cc2 3
(cc4 5
floatcc5 :
)cc: ;
TimeUtilitycc; F
.ccF G
kFrameRateEpsilonccG X
)ccX Y
;ccY Z

.dd! "
SetDirtydd" *
(dd* +
assetdd+ 0
)dd0 1
;dd1 2
}ee 
}ff 
}gg 	
publicii 

(ii 
WindowStateii (
windowStateii) 4
,ii4 5

assetiiD I
,iiI J
PlayableDirectoriiK [
directorii\ d
,iid e
TimelineClipiif r
hostClipiis {
,ii{ |

parentSequence
ii� �
)
ii� �
{jj 	

=kk 
windowStatekk '
;kk' (
m_ParentSequencell 
=ll 
parentSequencell -
;ll- .
thisnn 
.nn 
assetnn 
=nn 
assetnn 
;nn 
thisoo 
.oo 
directoroo 
=oo 
directoroo $
;oo$ %
thispp 
.pp 
hostClippp 
=pp 
hostClippp $
;pp$ %
startrr 
=rr 
hostCliprr 
==rr 
nullrr  $
?rr% &
$numrr' *
:rr+ ,
hostCliprr- 5
.rr5 6
startrr6 ;
;rr; <
	timeScaless 
=ss 
hostClipss  
==ss! #
nullss$ (
?ss) *
$numss+ .
:ss/ 0
hostClipss1 9
.ss9 :
	timeScaless: C
*ssD E
parentSequencessF T
.ssT U
	timeScalessU ^
;ss^ _
}tt 	
publicvv 
Rangevv 
GetEvaluableRangevv &
(vv& '
)vv' (
{ww 	
ifxx 
(xx 
hostClipxx 
==xx 
nullxx  
)xx  !
returnyy 
newyy 
Rangeyy  
{zz 
start{{ 
={{ 
$num{{ 
,{{  
end|| 
=|| 
duration|| "
}}} 
;}} 
if 
( 
! "
m_CachedEvaluableRange '
.' (
HasValue( 0
)0 1
{
�� 
var
�� 
globalRange
�� 
=
��  !%
GetGlobalEvaluableRange
��" 9
(
��9 :
)
��: ;
;
��; <$
m_CachedEvaluableRange
�� &
=
��' (
new
��) ,
Range
��- 2
{
�� 
start
�� 
=
�� 
ToLocalTime
�� '
(
��' (
globalRange
��( 3
.
��3 4
start
��4 9
)
��9 :
,
��: ;
end
�� 
=
�� 
ToLocalTime
�� %
(
��% &
globalRange
��& 1
.
��1 2
end
��2 5
)
��5 6
}
�� 
;
�� 
}
�� 
return
�� $
m_CachedEvaluableRange
�� )
.
��) *
Value
��* /
;
��/ 0
}
�� 	
public
�� 
string
�� 
TimeAsString
�� "
(
��" #
double
��# )
	timeValue
��* 3
,
��3 4
string
��5 ;
format
��< B
=
��C D
$str
��E I
)
��I J
{
�� 	
if
�� 
(
�� !
TimelinePreferences
�� #
.
��# $
instance
��$ ,
.
��, -
timeUnitInFrame
��- <
)
��< =
return
�� 
TimeUtility
�� "
.
��" #
TimeAsFrames
��# /
(
��/ 0
	timeValue
��0 9
,
��9 :
	frameRate
��; D
,
��D E
format
��F L
)
��L M
;
��M N
return
�� 
TimeUtility
�� 
.
�� 
TimeAsTimeCode
�� -
(
��- .
	timeValue
��. 7
,
��7 8
	frameRate
��9 B
,
��B C
format
��D J
)
��J K
;
��K L
}
�� 	
public
�� 
double
�� 
ToGlobalTime
�� "
(
��" #
double
��# )
t
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
hostClip
�� 
==
�� 
null
��  
)
��  !
return
�� 
t
�� 
;
�� 
return
�� 
m_ParentSequence
�� #
.
��# $
ToGlobalTime
��$ 0
(
��0 1
hostClip
��1 9
.
��9 :"
FromLocalTimeUnbound
��: N
(
��N O
t
��O P
)
��P Q
)
��Q R
;
��R S
}
�� 	
public
�� 
double
�� 
ToLocalTime
�� !
(
��! "
double
��" (
t
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
hostClip
�� 
==
�� 
null
��  
)
��  !
return
�� 
t
�� 
;
�� 
return
�� 
hostClip
�� 
.
��  
ToLocalTimeUnbound
�� .
(
��. /
m_ParentSequence
��/ ?
.
��? @
ToLocalTime
��@ K
(
��K L
t
��L M
)
��M N
)
��N O
;
��O P
}
�� 	
double
�� 
GetLocalTime
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 

�� 
.
�� 
previewMode
�� *
&&
��+ -
!
��. /
Application
��/ :
.
��: ;
	isPlaying
��; D
)
��D E
return
�� 
	viewModel
��  
.
��  !

windowTime
��! +
;
��+ ,
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  
)
��  !
m_Time
�� 
=
�� 
director
�� !
.
��! "
time
��" &
;
��& '
return
�� 
m_Time
�� 
;
�� 
}
�� 	
void
�� 
SetLocalTime
��
(
�� 
double
��  
newTime
��! (
)
��( )
{
�� 	
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  
)
��  !
director
�� 
.
�� 
time
�� 
=
�� 
newTime
��  '
;
��' (
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
m_Time
�� 
-
��  !
newTime
��" )
)
��) *
>
��+ ,
TimeUtility
��- 8
.
��8 9
kTimeEpsilon
��9 E
)
��E F
{
�� 
m_Time
�� 
=
�� 
newTime
��  
;
��  !

�� 
.
�� &
InvokeTimeChangeCallback
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
Range
�� 
GetGlobalEvaluableRange
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
hostClip
�� 
==
�� 
null
��  
)
��  !
return
�� 
new
�� 
Range
��  
{
�� 
start
�� 
=
�� 
$num
�� 
,
��  
end
�� 
=
�� 
duration
�� "
}
�� 
;
�� 
var
�� 
currentRange
�� 
=
�� 
new
�� "
Range
��# (
{
�� 
start
�� 
=
�� 
hostClip
��  
.
��  ! 
ToLocalTimeUnbound
��! 3
(
��3 4
ToGlobalTime
��4 @
(
��@ A
hostClip
��A I
.
��I J
start
��J O
)
��O P
)
��P Q
,
��Q R
end
�� 
=
�� 
hostClip
�� 
.
��  
ToLocalTimeUnbound
�� 1
(
��1 2
ToGlobalTime
��2 >
(
��> ?
hostClip
��? G
.
��G H
end
��H K
)
��K L
)
��L M
}
�� 
;
��
return
�� 
Range
�� 
.
�� 
Intersection
�� %
(
��% &
currentRange
��& 2
,
��2 3
m_ParentSequence
��4 D
.
��D E%
GetGlobalEvaluableRange
��E \
(
��\ ]
)
��] ^
)
��^ _
;
��_ `
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	%
TimelineWindowViewPrefs
�� #
.
��# $

��$ 1
(
��1 2
asset
��2 7
)
��7 8
;
��8 9
}
�� 	
}
�� 
}�� �P
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Items\ClipItem.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
ClipItem
 
: 

IBlendable 
,  

ITrimmable! +
{ 
readonly 
TimelineClip 
m_Clip $
;$ %
public

 
TimelineClip

 
clip

  
{ 	
get 
{ 
return 
m_Clip 
;  
}! "
}
public 
ClipItem 
( 
TimelineClip $
clip% )
)) *
{ 	
m_Clip 
= 
clip 
; 
} 	
public 

TrackAsset 
parentTrack %
{ 	
get 
{ 
return 
m_Clip 
.  
parentTrack  +
;+ ,
}- .
set 
{ 
m_Clip 
. 
parentTrack $
=% &
value' ,
;, -
}. /
} 	
public 
double 
start 
{ 	
get 
{ 
return 
m_Clip 
.  
start  %
;% &
}' (
set 
{ 
m_Clip 
. 
start 
=  
value! &
;& '
}( )
} 	
public   
double   
end   
{!! 	
get"" 
{"" 
return"" 
m_Clip"" 
.""  
end""  #
;""# $
}""% &
}## 	
public%% 
double%% 
duration%% 
{&& 	
get'' 
{'' 
return'' 
m_Clip'' 
.''  
duration''  (
;''( )
}''* +
}(( 	
public** 
bool** !
IsCompatibleWithTrack** )
(**) *

TrackAsset*** 4
track**5 :
)**: ;
{++ 	
return,, 
track,, 
.,,  
IsCompatibleWithClip,, -
(,,- .
m_Clip,,. 4
),,4 5
;,,5 6
}-- 	
public// 
void// 
PushUndo// 
(// 
string// #
	operation//$ -
)//- .
{00 	
UndoExtensions11 
.11 
RegisterClip11 '
(11' (
m_Clip11( .
,11. /
	operation110 9
)119 :
;11: ;
}22 	
public44 
TimelineItemGUI44 
gui44 "
{55 	
get66 
{66 
return66 

.66& '

(664 5
m_Clip665 ;
)66; <
;66< =
}66> ?
}77 	
public99 
bool99 
supportsBlending99 $
{:: 	
get;; 
{;; 
return;; 
m_Clip;; 
.;;  
SupportsBlending;;  0
(;;0 1
);;1 2
;;;2 3
};;4 5
}<< 	
public>> 
bool>> 
hasLeftBlend>>  
{?? 	
get@@ 
{@@ 
return@@ 
m_Clip@@ 
.@@  

hasBlendIn@@  *
;@@* +
}@@, -
}AA 	
publicCC 
boolCC 

{DD 	
getEE 
{EE 
returnEE 
m_ClipEE 
.EE  
hasBlendOutEE  +
;EE+ ,
}EE- .
}FF 	
publicHH 
doubleHH 
leftBlendDurationHH '
{II 	
getJJ 
{JJ 
returnJJ 
m_ClipJJ 
.JJ  

hasBlendInJJ  *
?JJ+ ,
m_ClipJJ- 3
.JJ3 4
blendInDurationJJ4 C
:JJD E
m_ClipJJF L
.JJL M
easeInDurationJJM [
;JJ[ \
}JJ] ^
}KK 	
publicMM 
doubleMM 
rightBlendDurationMM (
{NN 	
getOO 
{OO 
returnOO 
m_ClipOO 
.OO  
hasBlendOutOO  +
?OO, -
m_ClipOO. 4
.OO4 5
blendOutDurationOO5 E
:OOF G
m_ClipOOH N
.OON O
easeOutDurationOOO ^
;OO^ _
}OO` a
}PP 	
publicRR 
voidRR 
SetStartRR 
(RR 
doubleRR #
timeRR$ (
,RR( )
boolRR* .
affectTimeScaleRR/ >
)RR> ?
{SS 	
ClipModifierTT 
.TT 
SetStartTT !
(TT! "
m_ClipTT" (
,TT( )
timeTT* .
,TT. /
affectTimeScaleTT0 ?
)TT? @
;TT@ A
m_ClipUU 
.UU 
ConformEaseValuesUU $
(UU$ %
)UU% &
;UU& '
}VV 	
publicXX 
voidXX 
SetEndXX 
(XX 
doubleXX !
timeXX" &
,XX& '
boolXX( ,
affectTimeScaleXX- <
)XX< =
{YY 	
ClipModifierZZ 
.ZZ 
SetEndZZ 
(ZZ  
m_ClipZZ  &
,ZZ& '
timeZZ( ,
,ZZ, -
affectTimeScaleZZ. =
)ZZ= >
;ZZ> ?
m_Clip[[ 
.[[ 
ConformEaseValues[[ $
([[$ %
)[[% &
;[[& '
}\\ 	
public^^ 
void^^ 
Delete^^ 
(^^ 
)^^ 
{__ 	
EditorClipFactory`` 
.`` 
RemoveEditorClip`` .
(``. /
m_Clip``/ 5
)``5 6
;``6 7
ClipModifieraa 
.aa 
Deleteaa 
(aa  
m_Clipaa  &
.aa& '
parentTrackaa' 2
.aa2 3

,aa@ A
m_ClipaaB H
)aaH I
;aaI J
}bb 	
publicdd 
voiddd 
	TrimStartdd 
(dd 
doubledd $
timedd% )
)dd) *
{ee 	
ClipModifierff 
.ff 
	TrimStartff "
(ff" #
m_Clipff# )
,ff) *
timeff+ /
)ff/ 0
;ff0 1
}gg 	
publicii 
voidii 
TrimEndii 
(ii 
doubleii "
timeii# '
)ii' (
{jj 	
ClipModifierkk 
.kk 
TrimEndkk  
(kk  !
m_Clipkk! '
,kk' (
timekk) -
)kk- .
;kk. /
}ll 	
publicnn 

CloneTonn $
(nn$ %

TrackAssetnn% /
parentnn0 6
,nn6 7
doublenn8 >
timenn? C
)nnC D
{oo 	
returnpp 
newpp 
ClipItempp 
(pp  
TimelineHelperspp  /
.pp/ 0
Clonepp0 5
(pp5 6
m_Clippp6 <
,pp< =
TimelineEditorpp> L
.ppL M
inspectedDirectorppM ^
,pp^ _
TimelineEditorpp` n
.ppn o
inspectedDirector	ppo �
,
pp� �
time
pp� �
,
pp� �
parent
pp� �
)
pp� �
)
pp� �
;
pp� �
}qq 	
publicss 
overridess 
stringss 
ToStringss '
(ss' (
)ss( )
{tt 	
returnuu 
m_Clipuu 
.uu 
ToStringuu "
(uu" #
)uu# $
;uu$ %
}vv 	
publicxx 
boolxx 
Equalsxx 
(xx 
ClipItemxx #
	otherClipxx$ -
)xx- .
{yy 	
ifzz 
(zz 
ReferenceEqualszz 
(zz  
nullzz  $
,zz$ %
	otherClipzz& /
)zz/ 0
)zz0 1
returnzz2 8
falsezz9 >
;zz> ?
if{{ 
({{ 
ReferenceEquals{{ 
({{  
this{{  $
,{{$ %
	otherClip{{& /
){{/ 0
){{0 1
return{{2 8
true{{9 =
;{{= >
return|| 
Equals|| 
(|| 
m_Clip||  
,||  !
	otherClip||" +
.||+ ,
m_Clip||, 2
)||2 3
;||3 4
}}} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{
�� 	
return
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� "
?
��# $
m_Clip
��% +
.
��+ ,
GetHashCode
��, 7
(
��7 8
)
��8 9
:
��: ;
$num
��< =
)
��= >
;
��> ?
}
�� 	
public
�� 
bool
�� 
Equals
�� 
(
�� 

�� (
other
��) .
)
��. /
{
�� 	
return
�� 
Equals
�� 
(
�� 
(
�� 
object
�� !
)
��! "
other
��" '
)
��' (
;
��( )
}
�� 	
public
�� 
override
�� 
bool
�� 
Equals
�� #
(
��# $
object
��$ *
obj
��+ .
)
��. /
{
�� 	
if
�� 
(
�� 
ReferenceEquals
�� 
(
��  
null
��  $
,
��$ %
obj
��& )
)
��) *
)
��* +
return
��, 2
false
��3 8
;
��8 9
if
�� 
(
�� 
ReferenceEquals
�� 
(
��  
this
��  $
,
��$ %
obj
��& )
)
��) *
)
��* +
return
��, 2
true
��3 7
;
��7 8
var
�� 
other
�� 
=
�� 
obj
�� 
as
�� 
ClipItem
�� '
;
��' (
return
�� 
other
�� 
!=
�� 
null
��  
&&
��! #
Equals
��$ *
(
��* +
other
��+ 0
)
��0 1
;
��1 2
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\TimelineSelection.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
SelectionManager !
{		 
static

 !
IClipCurveEditorOwner

 $$
currentInlineEditorCurve

% =
;

= >
public 
static 
void 
	AddObject $
($ %
Object% +
obj, /
)/ 0
{
if 
( 
obj 
== 
null 
) 
return 
; $
currentInlineEditorCurve $
=% &
null' +
;+ ,
if 
( 
	Selection 
. 
Contains "
(" #
obj# &
)& '
)' (
return 
; 
	Selection 
. 
Add 
( 
obj 
) 
; 
} 	
public 
static 
void 
Add 
( 

TrackAsset )
obj* -
)- .
{ 	
if 
( 
obj 
== 
null 
) 
return 
; $
currentInlineEditorCurve $
=% &
null' +
;+ ,
if 
( 
! 
	Selection 
. 
Contains #
(# $
obj$ '
)' (
)( )
{   
WindowState!! 
state!! !
=!!" #
null!!$ (
;!!( )
if"" 
("" 
TimelineWindow"" "
.""" #
instance""# +
!="", .
null""/ 3
)""3 4
state## 
=## 
TimelineWindow## *
.##* +
instance##+ 3
.##3 4
state##4 9
;##9 :
if%% 
(%% 
!%% 
	Selection%% 
.%% 
instanceIDs%% *
.%%* +
Any%%+ .
(%%. /
)%%/ 0
&&%%1 3
state%%4 9
!=%%: <
null%%= A
&&%%B D
state%%E J
.%%J K
editSequence%%K W
.%%W X
director%%X `
!=%%a c
null%%d h
)%%h i
	Selection&& 
.&& &
SetActiveObjectWithContext&& 8
(&&8 9
obj&&9 <
,&&< =
TimelineWindow&&> L
.&&L M
instance&&M U
.&&U V
state&&V [
.&&[ \
editSequence&&\ h
.&&h i
director&&i q
)&&q r
;&&r s
else'' 
	Selection(( 
.(( 
Add(( !
(((! "
obj((" %
)((% &
;((& '
})) 
}** 	
public,, 
static,, 
void,, 
Add,, 
(,, 
TimelineClip,, +
item,,, 0
),,0 1
{-- 	
	AddObject.. 
(.. 
EditorClipFactory.. '
...' (

(..5 6
item..6 :
)..: ;
)..; <
;..< =
}// 	
public11 
static11 
void11 
Add11 
(11 
IMarker11 &
marker11' -
)11- .
{22 	
var33 
markerAsObject33 
=33  
marker33! '
as33( *
Object33+ 1
;331 2
if44 
(44 
markerAsObject44 
!=44 !
null44" &
)44& '
{55 
if66 
(66 
!66 
	Selection66 
.66 
Contains66 '
(66' (
markerAsObject66( 6
)666 7
)667 8
{77 $
currentInlineEditorCurve88 ,
=88- .
null88/ 3
;883 4
WindowState99 
state99  %
=99& '
null99( ,
;99, -
if:: 
(:: 
TimelineWindow:: &
.::& '
instance::' /
!=::0 2
null::3 7
)::7 8
state;; 
=;; 
TimelineWindow;;  .
.;;. /
instance;;/ 7
.;;7 8
state;;8 =
;;;= >
if== 
(== 
!== 
	Selection== "
.==" #
instanceIDs==# .
.==. /
Any==/ 2
(==2 3
)==3 4
&&==5 7
state==8 =
!===> @
null==A E
&&==F H
state==I N
.==N O
editSequence==O [
.==[ \
director==\ d
!===e g
null==h l
)==l m
	Selection>> !
.>>! "&
SetActiveObjectWithContext>>" <
(>>< =
markerAsObject>>= K
,>>K L
TimelineWindow>>M [
.>>[ \
instance>>\ d
.>>d e
state>>e j
.>>j k
editSequence>>k w
.>>w x
director	>>x �
)
>>� �
;
>>� �
else?? 
	Selection@@ !
.@@! "
Add@@" %
(@@% &
markerAsObject@@& 4
)@@4 5
;@@5 6
}AA 
}BB 
}CC 	
publicEE 
staticEE 
voidEE 
AddEE 
(EE 

itemEE- 1
)EE1 2
{FF 	
varGG 
clipItemGG 
=GG 
itemGG 
asGG  "
ClipItemGG# +
;GG+ ,
ifHH 
(HH 
clipItemHH 
!=HH 
nullHH  
)HH  !
{II 
AddJJ 
(JJ 
clipItemJJ 
.JJ 
clipJJ !
)JJ! "
;JJ" #
}KK 
elseLL 
{MM 
varNN 

markerItemNN 
=NN  
itemNN! %
asNN& (

MarkerItemNN) 3
;NN3 4
ifOO 
(OO 

markerItemOO 
!=OO !
nullOO" &
)OO& '
{PP 
AddQQ 
(QQ 

markerItemQQ "
.QQ" #
markerQQ# )
)QQ) *
;QQ* +
}RR 
}SS 
}TT 	
publicVV 
staticVV 
voidVV 

SelectOnlyVV %
(VV% &

TrackAssetVV& 0
trackVV1 6
)VV6 7
{WW 	#
RemoveTimelineSelectionXX #
(XX# $
)XX$ %
;XX% &
AddYY 
(YY 
trackYY 
)YY 
;YY 
}ZZ 	
public\\ 
static\\ 
void\\ 

SelectOnly\\ %
(\\% &
TimelineClip\\& 2
clip\\3 7
)\\7 8
{]] 	#
RemoveTimelineSelection^^ #
(^^# $
)^^$ %
;^^% &
Add__ 
(__ 
clip__ 
)__ 
;__ 
}`` 	
publicbb 
staticbb 
voidbb 

SelectOnlybb %
(bb% &
IMarkerbb& -
itembb. 2
)bb2 3
{cc 	#
RemoveTimelineSelectiondd #
(dd# $
)dd$ %
;dd% &
Addee 
(ee 
itemee 
)ee 
;ee 
}ff 	
publichh 
statichh 
voidhh 

SelectOnlyhh %
(hh% &

itemhh4 8
)hh8 9
{ii 	
varjj 
clipItemjj 
=jj 
itemjj 
asjj  "
ClipItemjj# +
;jj+ ,
ifkk 
(kk 
clipItemkk 
!=kk 
nullkk  
)kk  !
{ll 

SelectOnlymm 
(mm 
clipItemmm #
.mm# $
clipmm$ (
)mm( )
;mm) *
}nn 
elseoo 
{pp 
varqq 

markerItemqq 
=qq  
itemqq! %
asqq& (

MarkerItemqq) 3
;qq3 4
ifrr 
(rr 

markerItemrr 
!=rr !
nullrr" &
)rr& '
{ss 

SelectOnlytt 
(tt 

markerItemtt )
.tt) *
markertt* 0
)tt0 1
;tt1 2
}uu 
}vv 
}ww 	
publicyy 
staticyy 
voidyy #
SelectInlineCurveEditoryy 2
(yy2 3!
IClipCurveEditorOwneryy3 H
	selectionyyI R
)yyR S
{zz 	$
currentInlineEditorCurve{{ $
={{% &
	selection{{' 0
;{{0 1
}|| 	
public~~ 
static~~ !
IClipCurveEditorOwner~~ +'
GetCurrentInlineEditorCurve~~, G
(~~G H
)~~H I
{ 	
return
�� &
currentInlineEditorCurve
�� +
;
��+ ,
}
�� 	
public
�� 
static
�� 
bool
�� "
IsCurveEditorFocused
�� /
(
��/ 0#
IClipCurveEditorOwner
��0 E
	selection
��F O
)
��O P
{
�� 	
return
�� 
	selection
�� 
==
�� &
currentInlineEditorCurve
��  8
;
��8 9
}
�� 	
public
�� 
static
�� 
bool
�� 
Contains
�� #
(
��# $

TrackAsset
��$ .
item
��/ 3
)
��3 4
{
�� 	
if
�� 
(
�� 
item
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
return
�� 
	Selection
�� 
.
�� 
Contains
�� %
(
��% &
item
��& *
)
��* +
;
��+ ,
}
�� 	
public
�� 
static
�� 
bool
�� 
Contains
�� #
(
��# $
TimelineClip
��$ 0
item
��1 5
)
��5 6
{
�� 	
if
�� 
(
�� 
item
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
return
�� 
	Selection
�� 
.
�� 
Contains
�� %
(
��% &
EditorClipFactory
��& 7
.
��7 8

��8 E
(
��E F
item
��F J
)
��J K
)
��K L
;
��L M
}
�� 	
public
�� 
static
�� 
bool
�� 
Contains
�� #
(
��# $
Object
��$ *
obj
��+ .
)
��. /
{
�� 	
return
�� 
	Selection
�� 
.
�� 
Contains
�� %
(
��% &
obj
��& )
)
��) *
;
��* +
}
�� 	
public
�� 
static
�� 
bool
�� 
Contains
�� #
(
��# $
IMarker
��$ +
marker
��, 2
)
��2 3
{
�� 	
var
�� 
markerAsObject
�� 
=
��  
marker
��! '
as
��( *
Object
��+ 1
;
��1 2
return
�� 
	Selection
�� 
.
�� 
Contains
�� %
(
��% &
markerAsObject
��& 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
static
�� 
bool
�� 
Contains
�� #
(
��# $

��$ 1
item
��2 6
)
��6 7
{
�� 	
var
�� 
clipItem
�� 
=
�� 
item
�� 
as
��  "
ClipItem
��# +
;
��+ ,
if
�� 
(
�� 
clipItem
�� 
!=
�� 
null
��  
)
��  !
{
�� 
return
�� 
Contains
�� 
(
��  
clipItem
��  (
.
��( )
clip
��) -
)
��- .
;
��. /
}
�� 
var
�� 

markerItem
�� 
=
�� 
item
�� !
as
��" $

MarkerItem
��% /
;
��/ 0
return
�� 

markerItem
�� 
!=
��  
null
��! %
&&
��& (
Contains
��) 1
(
��1 2

markerItem
��2 <
.
��< =
marker
��= C
)
��C D
;
��D E
}
�� 	
public
�� 
static
�� 
void
�� 
Clear
��  
(
��  !
)
��! "
{
�� 	&
currentInlineEditorCurve
�� $
=
��% &
null
��' +
;
��+ ,
	Selection
�� 
.
�� 
activeObject
�� "
=
��# $
null
��% )
;
��) *
}
�� 	
public
�� 
static
�� 
void
�� 
UnSelectTracks
�� )
(
��) *
)
��* +
{
�� 	
var
�� 
newSelection
�� 
=
�� 
	Selection
�� (
.
��( )
objects
��) 0
.
��0 1
Where
��1 6
(
��6 7
x
��7 8
=>
��9 ;
!
��< =
(
��= >
x
��> ?
is
��@ B

TrackAsset
��C M
)
��M N
)
��N O
;
��O P
	Selection
�� 
.
�� 
objects
�� 
=
�� 
newSelection
��  ,
.
��, -
ToArray
��- 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
static
�� 
void
�� 
Remove
�� !
(
��! "
TimelineClip
��" .
item
��/ 3
)
��3 4
{
�� 	
Remove
�� 
(
�� 
EditorClipFactory
�� $
.
��$ %

��% 2
(
��2 3
item
��3 7
)
��7 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
static
�� 
void
�� 
Remove
�� !
(
��! "
IMarker
��" )
marker
��* 0
)
��0 1
{
�� 	
var
�� 
o
�� 
=
�� 
marker
�� 
as
�� 
Object
�� $
;
��$ %
if
�� 
(
�� 
o
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Remove
�� 
(
�� 
o
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
static
�� 
void
�� 
Remove
�� 
(
�� 
Object
�� !
item
��" &
)
��& '
{
�� 	
	Selection
�� 
.
�� 
Remove
�� 
(
�� 
item
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
static
�� 
void
�� 
Remove
�� !
(
��! "

TrackAsset
��" ,
item
��- 1
)
��1 2
{
�� 	
	Selection
�� 
.
�� 
Remove
�� 
(
�� 
item
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
static
�� 
void
�� 
Remove
�� !
(
��! "

��" /
item
��0 4
)
��4 5
{
�� 	
var
�� 
clipItem
�� 
=
�� 
item
�� 
as
��  "
ClipItem
��# +
;
��+ ,
if
�� 
(
�� 
clipItem
�� 
!=
�� 
null
��  
)
��  !
{
�� 
Remove
�� 
(
�� 
clipItem
�� 
.
��  
clip
��  $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
var
�� 

markerItem
�� 
=
��  
item
��! %
as
��& (

MarkerItem
��) 3
;
��3 4
if
�� 
(
�� 

markerItem
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
Remove
�� 
(
�� 

markerItem
�� %
.
��% &
marker
��& ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� %
RemoveTimelineSelection
�� 2
(
��2 3
)
��3 4
{
�� 	
	Selection
�� 
.
�� 
objects
�� 
=
�� 
	Selection
��  )
.
��) *
objects
��* 1
.
��1 2
Where
��2 7
(
��7 8
s
��8 9
=>
��: <
!
��= >
IsTimelineType
��> L
(
��L M
s
��M N
)
��N O
)
��O P
.
��P Q
ToArray
��Q X
(
��X Y
)
��Y Z
;
��Z [
}
�� 	
public
�� 
static
�� 
void
�� 
RemoveAllClips
�� )
(
��) *
)
��* +
{
�� 	
	Selection
�� 
.
�� 
objects
�� 
=
�� 
	Selection
��  )
.
��) *
objects
��* 1
.
��1 2
Where
��2 7
(
��7 8
s
��8 9
=>
��: <
!
��= >
(
��> ?
s
��? @
is
��A C

EditorClip
��D N
)
��N O
)
��O P
.
��P Q
ToArray
��Q X
(
��X Y
)
��Y Z
;
��Z [
}
�� 	
public
�� 
static
�� 
int
�� 
Count
�� 
(
��  
)
��  !
{
�� 	
return
�� 
	Selection
�� 
.
�� 
objects
�� $
.
��$ %
Count
��% *
(
��* +
IsTimelineType
��+ 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
TimelineClipGUI
��" 1
>
��1 2
SelectedClipGUI
��3 B
(
��B C
)
��C D
{
�� 	
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  

��! .
(
��. /
)
��/ 0
)
��0 1
{
�� 
var
�� 
gui
�� 
=
�� 

�� '
.
��' (

��( 5
(
��5 6
clip
��6 :
)
��: ;
;
��; <
if
�� 
(
�� 
gui
�� 
!=
�� 
null
�� 
)
��  
yield
�� 
return
��  
gui
��! $
;
��$ %
}
�� 
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
TimelineClip
��" .
>
��. /

��0 =
(
��= >
)
��> ?
{
�� 	
return
�� 
	Selection
�� 
.
�� 
objects
�� $
.
��$ %
OfType
��% +
<
��+ ,

EditorClip
��, 6
>
��6 7
(
��7 8
)
��8 9
.
��9 :
Select
��: @
(
��@ A
x
��A B
=>
��C E
x
��F G
.
��G H
clip
��H L
)
��L M
.
��M N
Where
��N S
(
��S T
x
��T U
=>
��V X
x
��Y Z
!=
��[ ]
null
��^ b
)
��b c
;
��c d
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
IMarker
��" )
>
��) *
SelectedMarkers
��+ :
(
��: ;
)
��; <
{
�� 	
return
�� 
	Selection
�� 
.
�� 
objects
�� $
.
��$ %
OfType
��% +
<
��+ ,
IMarker
��, 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "

TrackAsset
��" ,
>
��, -
SelectedTracks
��. <
(
��< =
)
��= >
{
�� 	
return
�� 
	Selection
�� 
.
�� 
objects
�� $
.
��$ %
OfType
��% +
<
��+ ,

TrackAsset
��, 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
T
��" #
>
��# $ 
SelectedItemOfType
��% 7
<
��7 8
T
��8 9
>
��9 :
(
��: ;
)
��; <
{
�� 	
if
�� 
(
�� 
typeof
�� 
(
�� 
T
�� 
)
�� 
==
�� 
typeof
�� #
(
��# $
TimelineClip
��$ 0
)
��0 1
)
��1 2
return
�� 

�� $
(
��$ %
)
��% &
.
��& '
Cast
��' +
<
��+ ,
T
��, -
>
��- .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
typeof
�� 
(
�� 
T
�� 
)
�� 
.
�� 
IsAssignableFrom
�� *
(
��* +
typeof
��+ 1
(
��1 2
IMarker
��2 9
)
��9 :
)
��: ;
)
��; <
return
�� 
SelectedMarkers
�� &
(
��& '
)
��' (
.
��( )
Cast
��) -
<
��- .
T
��. /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
return
�� 

Enumerable
�� 
.
�� 
Empty
�� #
<
��# $
T
��$ %
>
��% &
(
��& '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! ""
TimelineTrackBaseGUI
��" 6
>
��6 7
SelectedTrackGUI
��8 H
(
��H I
)
��I J
{
�� 	
var
�� 
tracks
�� 
=
�� 
SelectedTracks
�� '
(
��' (
)
��( )
;
��) *
return
�� 
TimelineWindow
�� !
.
��! "
instance
��" *
.
��* +
	allTracks
��+ 4
.
��4 5
Where
��5 :
(
��: ;
x
��; <
=>
��= ?
tracks
��@ F
.
��F G
Contains
��G O
(
��O P
x
��P Q
.
��Q R
track
��R W
)
��W X
)
��X Y
;
��Y Z
}
�� 	
static
�� 
bool
�� 
IsTimelineType
�� "
(
��" #
Object
��# )
o
��* +
)
��+ ,
{
�� 	
return
�� 
o
�� 
is
�� 

TrackAsset
�� "
||
��# %
o
��& '
is
��( *

EditorClip
��+ 5
||
��6 8
o
��9 :
is
��; =
IMarker
��> E
;
��E F
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "

��" /
>
��/ 0

��1 >
(
��> ?
)
��? @
{
�� 	
var
�� 
list
�� 
=
�� 
new
�� 
List
�� 
<
��  

��  -
>
��- .
(
��. /
)
��/ 0
;
��0 1
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
	Selection
��  )
.
��) *
objects
��* 1
)
��1 2
{
�� 
var
�� 

editorClip
�� 
=
��  
obj
��! $
as
��% '

EditorClip
��( 2
;
��2 3
if
�� 
(
�� 

editorClip
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
list
�� 
.
�� 
Add
�� 
(
�� 
new
��  
ClipItem
��! )
(
��) *

editorClip
��* 4
.
��4 5
clip
��5 9
)
��9 :
)
��: ;
;
��; <
continue
�� 
;
�� 
}
�� 
var
�� 
marker
�� 
=
�� 
obj
��  
as
��! #
IMarker
��$ +
;
��+ ,
if
�� 
(
�� 
marker
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
list
�� 
.
�� 
Add
�� 
(
�� 
new
��  

MarkerItem
��! +
(
��+ ,
marker
��, 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 	
}
�� 
}�� �A
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Undo\UndoExtensions.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
public 

static 
class 
UndoExtensions &
{ 
public 
static 
void 
RegisterContext *
(* +

context9 @
,@ A
stringB H
	undoTitleI R
)R S
{ 	
using 
( 
var 
undo 
= 
new !
	UndoScope" +
(+ ,
	undoTitle, 5
)5 6
)6 7
{ 
undo 
. 
Add 
( 
context  
.  !
tracks! '
)' (
;( )
undo   
.   
Add   
(   
context    
.    !
clips  ! &
,  & '
true  ( ,
)  , -
;  - .
undo!! 
.!! 
Add!! 
(!! 
context!!  
.!!  !
markers!!! (
)!!( )
;!!) *
}"" 
}## 	
public++ 
static++ 
void++ 
RegisterTimeline++ +
(+++ ,

asset++: ?
,++? @
string++A G
	undoTitle++H Q
)++Q R
{,, 	
using-- 
(-- 
var-- 
undo-- 
=-- 
new-- !
	UndoScope--" +
(--+ ,
	undoTitle--, 5
)--5 6
)--6 7
undo.. 
... 
	AddObject.. 
(.. 
asset.. $
)..$ %
;..% &
}// 	
public77 
static77 
void77 $
RegisterCompleteTimeline77 3
(773 4

asset77B G
,77G H
string77I O
	undoTitle77P Y
)77Y Z
{88 	
if99 
(99 
asset99 
==99 
null99 
)99 
return:: 
;:: 
using<< 
(<< 
var<< 
undo<< 
=<< 
new<< !
	UndoScope<<" +
(<<+ ,
	undoTitle<<, 5
)<<5 6
)<<6 7
{== 
undo>> 
.>> 
	AddObject>> 
(>> 
asset>> $
)>>$ %
;>>% &
undo?? 
.?? 
Add?? 
(?? 
asset?? 
.?? 
flattenedTracks?? .
)??. /
;??/ 0
foreach@@ 
(@@ 
var@@ 
t@@ 
in@@ !
asset@@" '
.@@' (
flattenedTracks@@( 7
)@@7 8
{AA 
undoBB 
.BB 
AddBB 
(BB 
tBB 
.BB 
GetClipsBB '
(BB' (
)BB( )
,BB) *
trueBB+ /
)BB/ 0
;BB0 1
undoCC 
.CC 
AddCC 
(CC 
tCC 
.CC 

GetMarkersCC )
(CC) *
)CC* +
)CC+ ,
;CC, -
}DD 
}EE 
}FF 	
publicNN 
staticNN 
voidNN 

(NN( )

TrackAssetNN) 3
assetNN4 9
,NN9 :
stringNN; A
	undoTitleNNB K
)NNK L
{OO 	
usingPP 
(PP 
varPP 
undoPP 
=PP 
newPP !
	UndoScopePP" +
(PP+ ,
	undoTitlePP, 5
)PP5 6
)PP6 7
undoQQ 
.QQ 
	AddObjectQQ 
(QQ 
assetQQ $
)QQ$ %
;QQ% &
}RR 	
publicZZ 
staticZZ 
voidZZ 
RegisterTracksZZ )
(ZZ) *
IEnumerableZZ* 5
<ZZ5 6

TrackAssetZZ6 @
>ZZ@ A
tracksZZB H
,ZZH I
stringZZJ P
	undoTitleZZQ Z
)ZZZ [
{[[ 	
using\\ 
(\\ 
var\\ 
undo\\ 
=\\ 
new\\ !
	UndoScope\\" +
(\\+ ,
	undoTitle\\, 5
)\\5 6
)\\6 7
undo]] 
.]] 
Add]] 
(]] 
tracks]] 
)]]  
;]]  !
}^^ 	
publicff 
staticff 
voidff 
RegisterClipff '
(ff' (
TimelineClipff( 4
clipff5 9
,ff9 :
stringff; A
	undoTitleffB K
,ffK L
boolffM Q 
includePlayableAssetffR f
=ffg h
trueffi m
)ffm n
{gg 	
usinghh 
(hh 
varhh 
undohh 
=hh 
newhh !
	UndoScopehh" +
(hh+ ,
	undoTitlehh, 5
)hh5 6
)hh6 7
{ii 
undojj 
.jj 
AddClipjj 
(jj 
clipjj !
,jj! " 
includePlayableAssetjj# 7
)jj7 8
;jj8 9
}kk 
}ll 	
publicss 
staticss 
voidss !
RegisterPlayableAssetss 0
(ss0 1

assetss? D
,ssD E
stringssF L
	undoTitlessM V
)ssV W
{tt 	
usinguu 
(uu 
varuu 
undouu 
=uu 
newuu !
	UndoScopeuu" +
(uu+ ,
	undoTitleuu, 5
)uu5 6
)uu6 7
undovv 
.vv 
	AddObjectvv 
(vv 
assetvv $
)vv$ %
;vv% &
}ww 	
public 
static 
void 

(( )
IEnumerable) 4
<4 5
TimelineClip5 A
>A B
clipsC H
,H I
stringJ P
nameQ U
,U V
boolW [!
includePlayableAssets\ q
=r s
truet x
)x y
{
�� 	
using
�� 
(
�� 
var
�� 
undo
�� 
=
�� 
new
�� !
	UndoScope
��" +
(
��+ ,
name
��, 0
)
��0 1
)
��1 2
undo
�� 
.
�� 
Add
�� 
(
�� 
clips
�� 
,
�� #
includePlayableAssets
��  5
)
��5 6
;
��6 7
}
�� 	
public
�� 
static
�� 
void
�� 
RegisterMarker
�� )
(
��) *
IMarker
��* 1
marker
��2 8
,
��8 9
string
��: @
	undoTitle
��A J
)
��J K
{
�� 	
using
�� 
(
�� 
var
�� 
undo
�� 
=
�� 
new
�� !
	UndoScope
��" +
(
��+ ,
	undoTitle
��, 5
)
��5 6
)
��6 7
{
�� 
if
�� 
(
�� 
marker
�� 
is
�� 
Object
�� $
o
��% &
)
��& '
undo
�� 
.
�� 
	AddObject
�� "
(
��" #
o
��# $
)
��$ %
;
��% &
else
�� 
if
�� 
(
�� 
marker
�� 
!=
��  "
null
��# '
)
��' (
undo
�� 
.
�� 
	AddObject
�� "
(
��" #
marker
��# )
.
��) *
parent
��* 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
RegisterMarkers
�� *
(
��* +
IEnumerable
��+ 6
<
��6 7
IMarker
��7 >
>
��> ?
markers
��@ G
,
��G H
string
��I O
	undoTitle
��P Y
)
��Y Z
{
�� 	
using
�� 
(
�� 
var
�� 
undo
�� 
=
�� 
new
�� !
	UndoScope
��" +
(
��+ ,
	undoTitle
��, 5
)
��5 6
)
��6 7
undo
�� 
.
�� 
Add
�� 
(
�� 
markers
��  
)
��  !
;
��! "
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\AddDelete\IAddDeleteItemMode.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
	interface 
IAddDeleteItemMode  
{ 
void 
InsertItemsAtTime
( 
IEnumerable *
<* +

>8 9
itemsGroups: E
,E F
doubleG M

)[ \
;\ ]
void 
RemoveItems
( 
IEnumerable $
<$ %

>2 3
itemsGroups4 ?
)? @
;@ A
}		 
}

 �*
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Utilities\MarkerModifier.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
static

 

class

 
MarkerModifier

 
{ 
public 
static 
void 
DeleteMarker '
(' (
IMarker( /
marker0 6
)6 7
{
var 

trackAsset 
= 
marker #
.# $
parent$ *
;* +
if 
( 

trackAsset 
!= 
null "
)" #
{ 
SelectionManager  
.  !
Remove! '
(' (
marker( .
). /
;/ 0

trackAsset 
. 
DeleteMarker '
(' (
marker( .
). /
;/ 0
} 
} 	
public 
static 
IEnumerable !
<! "
IMarker" )
>) * 
CloneMarkersToParent+ ?
(? @
IEnumerable@ K
<K L
IMarkerL S
>S T
markersU \
,\ ]

TrackAsset^ h
parenti o
)o p
{ 	
if 
( 
! 
markers 
. 
Any 
( 
) 
) 
return  &

Enumerable' 1
.1 2
Empty2 7
<7 8
IMarker8 ?
>? @
(@ A
)A B
;B C
var 

= 
new  #
List$ (
<( )
IMarker) 0
>0 1
(1 2
)2 3
;3 4
foreach 
( 
var 
marker 
in  "
markers# *
)* +

. 
Add !
(! "
CloneMarkerToParent" 5
(5 6
marker6 <
,< =
parent> D
)D E
)E F
;F G
return 

;  !
} 	
public 
static 
IMarker 
CloneMarkerToParent 1
(1 2
IMarker2 9
marker: @
,@ A

TrackAssetB L
parentM S
)S T
{   	
var!! 
markerObject!! 
=!! 
marker!! %
as!!& (
ScriptableObject!!) 9
;!!9 :
if"" 
("" 
markerObject"" 
=="" 
null""  $
)""$ %
return""& ,
null""- 1
;""1 2
var$$ 
newMarkerObject$$ 
=$$  !
Object$$" (
.$$( )
Instantiate$$) 4
($$4 5
markerObject$$5 A
)$$A B
;$$B C
AddMarkerToParent%% 
(%% 
newMarkerObject%% -
,%%- .
parent%%/ 5
)%%5 6
;%%6 7
newMarkerObject'' 
.'' 
name''  
=''! "
markerObject''# /
.''/ 0
name''0 4
;''4 5
try(( 
{)) 
CustomTimelineEditorCache** )
.**) *
GetMarkerEditor*** 9
(**9 :
(**: ;
IMarker**; B
)**B C
newMarkerObject**C R
)**R S
.**S T
OnCreate**T \
(**\ ]
(**] ^
IMarker**^ e
)**e f
newMarkerObject**f u
,**u v
marker**w }
)**} ~
;**~ 
}++ 
catch,, 
(,, 
	Exception,, 
e,, 
),, 
{-- 
Debug.. 
... 
LogException.. "
(.." #
e..# $
)..$ %
;..% &
}// 
return22 
(22 
IMarker22 
)22 
newMarkerObject22 +
;22+ ,
}33 	
static55 
void55 
AddMarkerToParent55 %
(55% &
ScriptableObject55& 6
marker557 =
,55= >

TrackAsset55? I
parent55J P
)55P Q
{66 	#
TimelineCreateUtilities77 #
.77# $
SaveAssetIntoObject77$ 7
(777 8
marker778 >
,77> ?
parent77@ F
)77F G
;77G H
TimelineUndo88 
.88 %
RegisterCreatedObjectUndo88 2
(882 3
marker883 9
,889 :
$str88; M
)88M N
;88N O
UndoExtensions99 
.99 

(99( )
parent99) /
,99/ 0
$str991 C
)99C D
;99D E
if;; 
(;; 
parent;; 
!=;; 
null;; 
);; 
{<< 
parent== 
.== 
	AddMarker==  
(==  !
marker==! '
)==' (
;==( )
(>> 
(>> 
IMarker>> 
)>> 
marker>>  
)>>  !
.>>! "

Initialize>>" ,
(>>, -
parent>>- 3
)>>3 4
;>>4 5
}?? 
}@@ 	
}AA 
}BB �V
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_Duration.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
partial 
class 
TimelineWindow  
{ 
TimeAreaItem		 
m_TimelineDuration		 '
;		' (
void 
DurationGUI
( 
TimelineItemArea )
area* .
,. /
double0 6
duration7 ?
)? @
{ 	
if 
( 
! 
currentMode 
. 
ShouldShowTimeArea /
(/ 0
state0 5
)5 6
)6 7
return 
; 
bool 

headerMode 
= 
area "
==# %
TimelineItemArea& 6
.6 7
Header7 =
;= >
if 
( 
state 
. !
IsEditingASubTimeline +
(+ ,
), -
)- .
{ 
if 
( 

headerMode 
) "
HighlightTimeAreaRange *
(* +
state+ 0
.0 1
editSequence1 =
.= >
GetEvaluableRange> O
(O P
)P Q
,Q R
DirectorStylesS a
.a b
Instanceb j
.j k

customSkink u
.u v)
colorSubSequenceDurationLine	v �
)
� �
;
� �
return 
; 
} 
if 
( 
state 
. 
editSequence "
." #
asset# (
.( )
durationMode) 5
==6 8

.F G
DurationModeG S
.S T
BasedOnClipsT `
&&a c
durationd l
<=m o
$nump t
)t u
return 
; 
if 
( 
m_TimelineDuration "
==# %
null& *
||+ -
m_TimelineDuration. @
.@ A
styleA F
!=G I
stylesJ P
.P Q
	endmarkerQ Z
)Z [
{   
m_TimelineDuration!! "
=!!# $
new!!% (
TimeAreaItem!!) 5
(!!5 6
styles!!6 <
.!!< =
	endmarker!!= F
,!!F G
OnTrackDurationDrag!!H [
)!![ \
{"" 
tooltip## 
=## 
$str## 6
,##6 7
boundOffset$$ 
=$$  !
new$$" %
Vector2$$& -
($$- .
$num$$. 2
,$$2 3
-$$4 5
DirectorStyles$$5 C
.$$C D!
kDurationGuiThickness$$D Y
)$$Y Z
}%% 
;%% 
}&& 
DrawDuration(( 
((( 

headerMode(( #
,((# $
!((% &

headerMode((& 0
,((0 1
duration((2 :
)((: ;
;((; <
})) 	
void++ 
DrawDuration++
(++ 
bool++ 
drawhead++ '
,++' (
bool++) -
drawline++. 6
,++6 7
double++8 >
duration++? G
)++G H
{,, 	
if-- 
(-- 
state-- 
.-- 

(--# $
(--$ %
float--% *
)--* +
duration--+ 3
)--3 4
)--4 5
{.. 
Color00 
	lineColor00 
=00  !
DirectorStyles00" 0
.000 1
Instance001 9
.009 :

customSkin00: D
.00D E
colorEndmarker00E S
;00S T
Color11 
	headColor11 
=11  !
Color11" '
.11' (
white11( -
;11- .
bool33 
canMoveHead33  
=33! "
!33# $
EditorApplication33$ 5
.335 6
	isPlaying336 ?
&&33@ B
state33C H
.33H I
editSequence33I U
.33U V
asset33V [
.33[ \
durationMode33\ h
==33i k

.33y z
DurationMode	33z �
.
33� �
FixedLength
33� �
;
33� �
if55 
(55 
canMoveHead55 
)55  
{66 
if77 
(77 
Event77 
.77 
current77 %
.77% &
type77& *
==77+ -
	EventType77. 7
.777 8
	MouseDown778 A
)77A B
{88 
if99 
(99 
m_TimelineDuration99 .
.99. /
bounds99/ 5
.995 6
Contains996 >
(99> ?
Event99? D
.99D E
current99E L
.99L M

)99Z [
)99[ \
{:: 
if;; 
(;;  

m_PlayHead;;  *
!=;;+ -
null;;. 2
&&;;3 5

m_PlayHead;;6 @
.;;@ A
bounds;;A G
.;;G H
Contains;;H P
(;;P Q
Event;;Q V
.;;V W
current;;W ^
.;;^ _

);;l m
);;m n
{<< 
canMoveHead>>  +
=>>, -
false>>. 3
;>>3 4
}?? 
}@@ 
}AA 
}BB 
elseCC 
{DD 
	lineColorEE 
.EE 
aEE 
*=EE  "
$numEE# (
;EE( )
	headColorFF 
=FF 
DirectorStylesFF  .
.FF. /
InstanceFF/ 7
.FF7 8

customSkinFF8 B
.FFB C

;FFP Q
}GG 
ifII 
(II 
canMoveHeadII 
)II  
m_TimelineDurationJJ &
.JJ& '$
HandleManipulatorsEventsJJ' ?
(JJ? @
stateJJ@ E
)JJE F
;JJF G
m_TimelineDurationLL "
.LL" #
	lineColorLL# ,
=LL- .
	lineColorLL/ 8
;LL8 9
m_TimelineDurationMM "
.MM" #
	headColorMM# ,
=MM- .
	headColorMM/ 8
;MM8 9
m_TimelineDurationNN "
.NN" #
drawHeadNN# +
=NN, -
drawheadNN. 6
;NN6 7
m_TimelineDurationOO "
.OO" #
drawLineOO# +
=OO, -
drawlineOO. 6
;OO6 7
m_TimelineDurationPP "
.PP" #
canMoveHeadPP# .
=PP/ 0
canMoveHeadPP1 <
;PP< =
m_TimelineDurationUU "
.UU" #
DrawUU# '
(UU' (
sequenceRectUU( 4
,UU4 5
stateUU6 ;
,UU; <
durationUU= E
)UUE F
;UUF G
}VV 
ifYY 
(YY 
stateYY 
.YY 
editSequenceYY "
.YY" #
assetYY# (
!=YY) +
nullYY, 0
&&YY1 3
drawheadYY4 <
)YY< =
{ZZ 
HighlightTimeAreaRange[[ &
([[& '
state[[' ,
.[[, -
editSequence[[- 9
.[[9 :
GetEvaluableRange[[: K
([[K L
)[[L M
,[[M N
DirectorStyles[[O ]
.[[] ^
Instance[[^ f
.[[f g

customSkin[[g q
.[[q r
colorDurationLine	[[r �
)
[[� �
;
[[� �
}\\ 
}]] 	
void__ "
HighlightTimeAreaRange__
(__# $
Range__$ )
range__* /
,__/ 0
Color__1 6
	lineColor__7 @
)__@ A
{`` 	
ifaa 
(aa 
rangeaa 
.aa 
lengthaa 
<=aa 
$numaa  #
||aa$ &
!aa' (
stateaa( -
.aa- .
RangeIsVisibleaa. <
(aa< =
rangeaa= B
)aaB C
)aaC D
returnaaE K
;aaK L
Rectcc 
lineRectcc 
=cc 
Rectcc  
.cc  !

MinMaxRectcc! +
(cc+ ,
Mathdd 
.dd 
Maxdd 
(dd 
statedd 
.dd 
TimeToPixeldd *
(dd* +
rangedd+ 0
.dd0 1
startdd1 6
)dd6 7
,dd7 8
statedd9 >
.dd> ?
timeAreaRectdd? K
.ddK L
xMinddL P
)ddP Q
,ddQ R
stateee 
.ee 
timeAreaRectee "
.ee" #
yee# $
-ee% &
DirectorStylesee' 5
.ee5 6!
kDurationGuiThicknessee6 K
+eeL M
stateeeN S
.eeS T
timeAreaRecteeT `
.ee` a
heighteea g
,eeg h
Mathff 
.ff 
Minff 
(ff 
stateff 
.ff 
TimeToPixelff *
(ff* +
rangeff+ 0
.ff0 1
endff1 4
)ff4 5
,ff5 6
stateff7 <
.ff< =
timeAreaRectff= I
.ffI J
xMaxffJ N
)ffN O
,ffO P
stategg 
.gg 
timeAreaRectgg "
.gg" #
ygg# $
+gg% &
stategg' ,
.gg, -
timeAreaRectgg- 9
.gg9 :
heightgg: @
)gg@ A
;ggA B
	EditorGUIhh 
.hh 
DrawRecthh 
(hh 
lineRecthh '
,hh' (
	lineColorhh) 2
)hh2 3
;hh3 4
}ii 	
voidll 
OnTrackDurationDragll
(ll  !
doublell! '
newTimell( /
)ll/ 0
{mm 	
ifnn 
(nn 
statenn 
.nn 
editSequencenn "
.nn" #
assetnn# (
.nn( )
durationModenn) 5
==nn6 8

.nnF G
DurationModennG S
.nnS T
FixedLengthnnT _
&&nn` b
!nnc d
statennd i
.nni j
editSequencennj v
.nnv w

isReadOnly	nnw �
)
nn� �
{oo 
ifqq 
(qq 
m_TimelineDurationqq &
.qq& '
	firstDragqq' 0
)qq0 1
{rr 
UndoExtensionsss "
.ss" #
RegisterTimeliness# 3
(ss3 4
statess4 9
.ss9 :
editSequencess: F
.ssF G
assetssG L
,ssL M
$strssN _
)ss_ `
;ss` a
}tt 
statevv 
.vv 
editSequencevv "
.vv" #
assetvv# (
.vv( )

=vv7 8
newTimevv9 @
;vv@ A
statezz 
.zz &
UpdateRootPlayableDurationzz 0
(zz0 1
newTimezz1 8
)zz8 9
;zz9 :
}{{ 
m_TimelineDuration}} 
.}} 
showTooltip}} *
=}}+ ,
true}}- 1
;}}1 2
}~~ 	
} 
}�� �/
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Tooltip.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
Tooltip
 
{ 
public 
GUIStyle 
style 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
text		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
GUIStyle 
m_Font 
; 
public
GUIStyle
font
{ 	
get 
{ 
if 
( 
m_Font 
!= 
null "
)" #
return 
m_Font !
;! "
if 
( 
style 
!= 
null !
)! "
return 
style  
;  !
m_Font 
= 
new 
GUIStyle %
(% &
)& '
;' (
m_Font 
. 
font 
= 
EditorStyles *
.* +
label+ 0
.0 1
font1 5
;5 6
return 
m_Font 
; 
} 
set 
{ 
m_Font 
= 
value  
;  !
}" #
} 	
float   
m_Pad   
=   
$num   
;   
public"" 
float"" 
pad"" 
{## 	
get$$ 
{$$ 
return$$ 
m_Pad$$ 
;$$ 
}$$  !
set%% 
{%% 
m_Pad%% 
=%% 
value%% 
;%%  
}%%! "
}&& 	

GUIContent(( 

;((  !

GUIContent** 
textContent** 
{++ 	
get,, 
{-- 
if.. 
(.. 

==.." $
null..% )
)..) *

=//" #
new//$ '

GUIContent//( 2
(//2 3
)//3 4
;//4 5

.11 
text11 "
=11# $
text11% )
;11) *
return33 

;33$ %
}44 
}55 	
Color77 
m_ForeColor77 
=77 
Color77 !
.77! "
white77" '
;77' (
public99 
Color99 
	foreColor99 
{:: 	
get;; 
{;; 
return;; 
m_ForeColor;; $
;;;$ %
};;& '
set<< 
{<< 
m_ForeColor<< 
=<< 
value<<  %
;<<% &
}<<' (
}== 	
Rect?? 
m_Bounds??
;?? 
publicAA 
RectAA 
boundsAA 
{BB 	
getCC 
{DD 
varEE 
sizeEE 
=EE 
fontEE 
.EE  
CalcSizeEE  (
(EE( )
textContentEE) 4
)EE4 5
;EE5 6
m_BoundsFF 
.FF 
widthFF 
=FF  
sizeFF! %
.FF% &
xFF& '
+FF( )
(FF* +
$numFF+ /
*FF0 1
padFF2 5
)FF5 6
;FF6 7
m_BoundsGG 
.GG 
heightGG 
=GG  !
sizeGG" &
.GG& '
yGG' (
+GG) *
$numGG+ /
;GG/ 0
returnII 
m_BoundsII 
;II  
}JJ 
setLL 
{LL 
m_BoundsLL 
=LL 
valueLL "
;LL" #
}LL$ %
}MM 	
publicOO 
TooltipOO 
(OO 
GUIStyleOO 
theStyleOO  (
,OO( )
GUIStyleOO* 2
fontOO3 7
)OO7 8
{PP 	
styleQQ 
=QQ 
theStyleQQ 
;QQ 
m_FontRR 
=RR 
fontRR 
;RR 
}SS 	
publicUU 
TooltipUU 
(UU 
)UU 
{VV 	
styleWW 
=WW 
nullWW 
;WW 
m_FontXX 
=XX 
nullXX 
;XX 
}YY 	
public[[ 
void[[ 
Draw[[ 
([[ 
)[[ 
{\\ 	
if]] 
(]] 
string]] 
.]] 

(]]$ %
text]]% )
)]]) *
)]]* +
return^^ 
;^^ 
if`` 
(`` 
style`` 
!=`` 
null`` 
)`` 
{aa 
usingbb 
(bb 
newbb 
GUIColorOverridebb +
(bb+ ,
DirectorStylesbb, :
.bb: ;
Instancebb; C
.bbC D

customSkinbbD N
.bbN O"
colorTooltipBackgroundbbO e
)bbe f
)bbf g
GUIcc 
.cc 
Labelcc 
(cc 
boundscc $
,cc$ %

GUIContentcc& 0
.cc0 1
nonecc1 5
,cc5 6
stylecc7 <
)cc< =
;cc= >
}dd 
varff 

textBoundsff 
=ff 
boundsff #
;ff# $

textBoundsgg 
.gg 
xgg 
+=gg 
padgg 
;gg  

textBoundshh 
.hh 
widthhh 
-=hh 
padhh  #
;hh# $
usingjj 
(jj 
newjj 
GUIColorOverridejj '
(jj' (
	foreColorjj( 1
)jj1 2
)jj2 3
GUIkk 
.kk 
Labelkk 
(kk 

textBoundskk $
,kk$ %
textContentkk& 1
,kk1 2
fontkk3 7
)kk7 8
;kk8 9
}ll 	
}mm 
}nn Ѱ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Sequence\SelectAndMoveItem.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class		 	
ClearSelection		
 
:		 
Manipulator		 &
{

 
	protected 
override 
bool 
	MouseDown  )
() *
Event* /
evt0 3
,3 4
WindowState5 @
stateA F
)F G
{ 	
if 
( 
evt 
. 
button 
!= 
$num 
)  
return 
false 
; 
var 
window 
= 
state 
. 
	GetWindow (
(( )
)) *
;* +
if 
( 
! 
window 
. 
sequenceRect $
.$ %
Contains% -
(- .
evt. 1
.1 2

)? @
)@ A
return 
false 
; 
if 
( 

. 
CanClearSelection /
(/ 0
evt0 3
)3 4
)4 5
{ 
SelectionManager  
.  !
Clear! &
(& '
)' (
;( )
return 
true 
; 
} 
return 
false 
; 
} 	
} 
static   

class   

{!! 
public"" 
static"" 
bool"" 
CanClearSelection"" ,
("", -
Event""- 2
evt""3 6
)""6 7
{## 	
return$$ 
!$$ 
evt$$ 
.$$ 
control$$ 
&&$$  "
!$$# $
evt$$$ '
.$$' (
command$$( /
&&$$0 2
!$$3 4
evt$$4 7
.$$7 8
shift$$8 =
;$$= >
}%% 	
public'' 
static'' 
void'' 
RangeSelectItems'' +
(''+ ,

lastItemToSelect'': J
)''J K
{(( 	
var)) 
selectSorted)) 
=)) 
SelectionManager)) /
.))/ 0

())= >
)))> ?
.))? @
ToList))@ F
())F G
)))G H
;))H I
var** 
firstSelect** 
=** 
selectSorted** *
.*** +
FirstOrDefault**+ 9
(**9 :
)**: ;
;**; <
if++ 
(++ 
firstSelect++ 
==++ 
null++ #
)++# $
{,, 
SelectionManager--  
.--  !
Add--! $
(--$ %
lastItemToSelect--% 5
)--5 6
;--6 7
return.. 
;.. 
}// 
var11 
	allTracks11 
=11 
TimelineEditor11 *
.11* +
inspectedAsset11+ 9
.119 :
flattenedTracks11: I
;11I J
var22 
allItems22 
=22 
	allTracks22 $
.22$ %

SelectMany22% /
(22/ 0

ItemsUtils220 :
.22: ;
GetItems22; C
)22C D
.22D E
ToList22E K
(22K L
)22L M
;22M N
TimelineHelpers33 
.33 
RangeSelect33 '
(33' (
allItems33( 0
,330 1
selectSorted332 >
,33> ?
lastItemToSelect33@ P
,33P Q
SelectionManager33R b
.33b c
Add33c f
,33f g
SelectionManager33h x
.33x y
Remove33y 
)	33 �
;
33� �
}44 	
public66 
static66 
ISelectable66 !!
HandleSingleSelection66" 7
(667 8
Event668 =
evt66> A
)66A B
{77 	
var88 
item88 
=88 
PickerUtils88 "
.88" ##
TopmostPickedItemOfType88# :
<88: ;
ISelectable88; F
>88F G
(88G H
i88H I
=>88J L
i88M N
.88N O
	CanSelect88O X
(88X Y
)88Y Z
)88Z [
;88[ \
if:: 
(:: 
item:: 
!=:: 
null:: 
):: 
{;; 
var<< 
selected<< 
=<< 
item<< #
.<<# $

IsSelected<<$ .
(<<. /
)<</ 0
;<<0 1
if== 
(== 
!== 
selected== 
&&==  
CanClearSelection==! 2
(==2 3
evt==3 6
)==6 7
)==7 8
SelectionManager>> $
.>>$ %
Clear>>% *
(>>* +
)>>+ ,
;>>, -
if@@ 
(@@ 
evt@@ 
.@@ 
	modifiers@@ !
==@@" $
EventModifiers@@% 3
.@@3 4
Shift@@4 9
)@@9 :
{AA 
ifBB 
(BB 
!BB 
selectedBB !
)BB! "
RangeSelectItemsCC (
(CC( )
(CC) *
itemCC* .
asCC/ 1
TimelineItemGUICC2 A
)CCA B
?CCB C
.CCC D
itemCCD H
)CCH I
;CCI J
}DD 
elseEE 
{FF 
HandleItemSelectionGG '
(GG' (
evtGG( +
,GG+ ,
itemGG- 1
)GG1 2
;GG2 3
}HH 
}II 
returnKK 
itemKK 
;KK 
}LL 	
publicNN 
staticNN 
voidNN 
HandleItemSelectionNN .
(NN. /
EventNN/ 4
evtNN5 8
,NN8 9
ISelectableNN: E
itemNNF J
)NNJ K
{OO 	
ifPP 
(PP 
evtPP 
.PP 
	modifiersPP 
==PP  
ManipulatorsUtilsPP! 2
.PP2 3
actionModifierPP3 A
)PPA B
{QQ 
ifRR 
(RR 
itemRR 
.RR 

IsSelectedRR #
(RR# $
)RR$ %
)RR% &
itemSS 
.SS 
DeselectSS !
(SS! "
)SS" #
;SS# $
elseTT 
itemUU 
.UU 
SelectUU 
(UU  
)UU  !
;UU! "
}VV 
elseWW 
{XX 
ifYY 
(YY 
!YY 
itemYY 
.YY 

IsSelectedYY $
(YY$ %
)YY% &
)YY& '
itemZZ 
.ZZ 
SelectZZ 
(ZZ  
)ZZ  !
;ZZ! "
}[[ 
}\\ 	
}]] 
class__ 	
SelectAndMoveItem__
 
:__ 
Manipulator__ )
{`` 
boolaa 
	m_Draggedaa
;aa 

SnapEnginebb 
m_SnapEnginebb 
;bb  
TimeAreaAutoPannercc  
m_TimeAreaAutoPannercc /
;cc/ 0
Vector2dd 
m_MouseDownPositiondd #
;dd# $
boolff $
m_HorizontalMovementDoneff
;ff% &
boolgg "
m_VerticalMovementDonegg
;gg# $
MoveItemHandlerii 
m_MoveItemHandlerii )
;ii) *
booljj !
m_CycleMarkersPendingjj
;jj" #
	protectedll 
overridell 
boolll 
	MouseDownll  )
(ll) *
Eventll* /
evtll0 3
,ll3 4
WindowStatell5 @
statellA F
)llF G
{mm 	
ifnn 
(nn 
evtnn 
.nn 
altnn 
||nn 
evtnn 
.nn 
buttonnn %
!=nn& (
$numnn) *
)nn* +
returnoo 
falseoo 
;oo 
	m_Draggedqq 
=qq 
falseqq 
;qq 
iftt 
(tt 
!tt 
HandleMarkerCyclett "
(tt" #
)tt# $
&&tt% '
!tt( )!
HandleSingleSelectiontt) >
(tt> ?
evttt? B
)ttB C
)ttC D
returnuu 
falseuu 
;uu 
m_MouseDownPositionww 
=ww  !
evtww" %
.ww% &

;ww3 4"
m_VerticalMovementDonexx "
=xx# $
falsexx% *
;xx* +$
m_HorizontalMovementDoneyy $
=yy% &
falseyy' ,
;yy, -
return{{ 
true{{ 
;{{ 
}|| 	
	protected~~ 
override~~ 
bool~~ 
MouseUp~~  '
(~~' (
Event~~( -
evt~~. 1
,~~1 2
WindowState~~3 >
state~~? D
)~~D E
{ 	
if
�� 
(
�� 
!
�� 
	m_Dragged
�� 
)
�� 
{
�� 
var
�� 
item
�� 
=
�� 
PickerUtils
�� &
.
��& '
TopmostPickedItem
��' 8
(
��8 9
)
��9 :
as
��; =
ISelectable
��> I
;
��I J
if
�� 
(
�� 
item
�� 
==
�� 
null
��  
)
��  !
return
�� 
false
��  
;
��  !
if
�� 
(
�� 
!
�� 
item
�� 
.
�� 

IsSelected
�� $
(
��$ %
)
��% &
)
��& '
return
�� 
false
��  
;
��  !
if
�� 
(
�� 
SelectionManager
�� $
.
��$ %
Count
��% *
(
��* +
)
��+ ,
>
��- .
$num
��/ 0
&&
��1 3

��4 A
.
��A B
CanClearSelection
��B S
(
��S T
evt
��T W
)
��W X
)
��X Y
{
�� 
SelectionManager
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
item
�� 
.
�� 
Select
�� 
(
��  
)
��  !
;
��! "
return
�� 
true
�� 
;
��  
}
�� 
if
�� 
(
�� #
m_CycleMarkersPending
�� )
)
��) *
{
�� #
m_CycleMarkersPending
�� )
=
��* +
false
��, 1
;
��1 2&
TimelineMarkerClusterGUI
�� ,
.
��, -
CycleMarkers
��- 9
(
��9 :
)
��: ;
;
��; <
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
m_TimeAreaAutoPanner
��  
=
��! "
null
��# '
;
��' (
	DropItems
�� 
(
�� 
)
�� 
;
�� 
m_SnapEngine
�� 
=
�� 
null
�� 
;
��  
m_MoveItemHandler
�� 
=
�� 
null
��  $
;
��$ %
state
�� 
.
�� 
Evaluate
�� 
(
�� 
)
�� 
;
�� 
state
�� 
.
�� 
RemoveCaptured
��  
(
��  !
this
��! %
)
��% &
;
��& '
	m_Dragged
�� 
=
�� 
false
�� 
;
�� 
TimelineCursors
�� 
.
�� 
ClearCursor
�� '
(
��' (
)
��( )
;
��) *
return
�� 
true
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
bool
�� 
DoubleClick
��  +
(
��+ ,
Event
��, 1
evt
��2 5
,
��5 6
WindowState
��7 B
state
��C H
)
��H I
{
�� 	
return
�� 
	MouseDown
�� 
(
�� 
evt
��  
,
��  !
state
��" '
)
��' (
&&
��) +
MouseUp
��, 3
(
��3 4
evt
��4 7
,
��7 8
state
��9 >
)
��> ?
;
��? @
}
�� 	
	protected
�� 
override
�� 
bool
�� 
	MouseDrag
��  )
(
��) *
Event
��* /
evt
��0 3
,
��3 4
WindowState
��5 @
state
��A F
)
��F G
{
�� 	
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #

isReadOnly
��# -
)
��- .
return
�� 
false
�� 
;
�� 
var
�� 
selectedItemsGUI
��  
=
��! "
SelectionManager
��# 3
.
��3 4

��4 A
(
��A B
)
��B C
;
��C D
if
�� 
(
�� 
!
�� 
selectedItemsGUI
�� !
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
�� 
	m_Dragged
�� 
=
�� 
false
�� !
;
��! "
return
�� 
false
�� 
;
�� 
}
�� 
const
�� 
float
�� 
	hDeadZone
�� !
=
��" #
$num
��$ (
;
��( )
const
�� 
float
�� 
	vDeadZone
�� !
=
��" #
$num
��$ (
;
��( )
bool
�� 
vDone
�� 
=
�� $
m_VerticalMovementDone
�� /
||
��0 2
Math
��3 7
.
��7 8
Abs
��8 ;
(
��; <
evt
��< ?
.
��? @

��@ M
.
��M N
y
��N O
-
��P Q!
m_MouseDownPosition
��R e
.
��e f
y
��f g
)
��g h
>
��i j
	vDeadZone
��k t
;
��t u
bool
�� 
hDone
�� 
=
�� &
m_HorizontalMovementDone
�� 1
||
��2 4
Math
��5 9
.
��9 :
Abs
��: =
(
��= >
evt
��> A
.
��A B

��B O
.
��O P
x
��P Q
-
��R S!
m_MouseDownPosition
��T g
.
��g h
x
��h i
)
��i j
>
��k l
	hDeadZone
��m v
;
��v w#
m_CycleMarkersPending
�� !
=
��" #
false
��$ )
;
��) *
if
�� 
(
�� 
!
�� 
	m_Dragged
�� 
)
�� 
{
�� 
var
�� 
canStartMove
��  
=
��! "
vDone
��# (
||
��) +
hDone
��, 1
;
��1 2
if
�� 
(
�� 
canStartMove
��  
)
��  !
{
�� 
state
�� 
.
�� 
AddCaptured
�� %
(
��% &
this
��& *
)
��* +
;
��+ ,
	m_Dragged
�� 
=
�� 
true
��  $
;
��$ %
var
�� 
referenceTrack
�� &
=
��' ("
GetTrackDropTargetAt
��) =
(
��= >
state
��> C
,
��C D!
m_MouseDownPosition
��E X
)
��X Y
;
��Y Z
foreach
�� 
(
�� 
var
��  
item
��! %
in
��& (
selectedItemsGUI
��) 9
)
��9 :
item
�� 
.
�� 
gui
��  
.
��  !
	StartDrag
��! *
(
��* +
)
��+ ,
;
��, -
m_MoveItemHandler
�� %
=
��& '
new
��( +
MoveItemHandler
��, ;
(
��; <
state
��< A
)
��A B
;
��B C
m_MoveItemHandler
�� %
.
��% &
Grab
��& *
(
��* +
selectedItemsGUI
��+ ;
,
��; <
referenceTrack
��= K
,
��K L!
m_MouseDownPosition
��M `
)
��` a
;
��a b
m_SnapEngine
��  
=
��! "
new
��# &

SnapEngine
��' 1
(
��1 2
m_MoveItemHandler
��2 C
,
��C D
m_MoveItemHandler
��E V
,
��V W
ManipulateEdges
��X g
.
��g h
Both
��h l
,
��l m
state
�� 
,
�� !
m_MouseDownPosition
�� 2
)
��2 3
;
��3 4"
m_TimeAreaAutoPanner
�� (
=
��) *
new
��+ . 
TimeAreaAutoPanner
��/ A
(
��A B
state
��B G
)
��G H
;
��H I
}
�� 
}
�� 
if
�� 
(
�� 
!
�� $
m_VerticalMovementDone
�� '
)
��' (
{
�� 
m_VerticalMovementDone
�� &
=
��' (
vDone
��) .
;
��. /
if
�� 
(
�� $
m_VerticalMovementDone
�� *
)
��* +
m_MoveItemHandler
�� %
.
��% &

��& 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
!
�� &
m_HorizontalMovementDone
�� )
)
��) *
{
�� 
m_HorizontalMovementDone
�� (
=
��) *
hDone
��+ 0
;
��0 1
}
�� 
if
�� 
(
�� 
	m_Dragged
�� 
)
�� 
{
�� 
if
�� 
(
�� &
m_HorizontalMovementDone
�� ,
)
��, -
m_SnapEngine
��  
.
��  !
Snap
��! %
(
��% &
evt
��& )
.
��) *

��* 7
,
��7 8
evt
��9 <
.
��< =
	modifiers
��= F
)
��F G
;
��G H
if
�� 
(
�� $
m_VerticalMovementDone
�� *
)
��* +
{
�� 
var
�� 
track
�� 
=
�� "
GetTrackDropTargetAt
��  4
(
��4 5
state
��5 :
,
��: ;
evt
��< ?
.
��? @

��@ M
)
��M N
;
��N O
m_MoveItemHandler
�� %
.
��% &
UpdateTrackTarget
��& 7
(
��7 8
track
��8 =
)
��= >
;
��> ?
}
�� 
state
�� 
.
�� 
Evaluate
�� 
(
�� 
)
��  
;
��  !
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
Overlay
�� $
(
��$ %
Event
��% *
evt
��+ .
,
��. /
WindowState
��0 ;
state
��< A
)
��A B
{
�� 	
if
�� 
(
�� 
!
�� 
	m_Dragged
�� 
)
�� 
return
�� 
;
�� 
if
�� 
(
�� "
m_TimeAreaAutoPanner
�� $
!=
��% '
null
��( ,
)
��, -"
m_TimeAreaAutoPanner
�� $
.
��$ %
OnGUI
��% *
(
��* +
evt
��+ .
)
��. /
;
��/ 0
m_MoveItemHandler
�� 
.
�� 
OnGUI
�� #
(
��# $
evt
��$ '
)
��' (
;
��( )
if
�� 
(
�� 
!
�� 
m_MoveItemHandler
�� "
.
��" #
allowTrackSwitch
��# 3
||
��4 6
m_MoveItemHandler
��7 H
.
��H I
targetTrack
��I T
!=
��U W
null
��X \
)
��\ ]
{
�� 

�� 
.
�� 
Draw
�� "
(
��" #
state
��# (
,
��( )
m_MoveItemHandler
��* ;
.
��; <
start
��< A
,
��A B
m_MoveItemHandler
��C T
.
��T U
end
��U X
)
��X Y
;
��Y Z
m_SnapEngine
�� 
.
�� 
OnGUI
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
bool
�� 
HandleMarkerCycle
��
(
�� 
)
��  
{
�� 	#
m_CycleMarkersPending
�� !
=
��" #&
TimelineMarkerClusterGUI
��$ <
.
��< =
CanCycleMarkers
��= L
(
��L M
)
��M N
;
��N O
return
�� #
m_CycleMarkersPending
�� (
;
��( )
}
�� 	
static
�� 
bool
�� #
HandleSingleSelection
�� )
(
��) *
Event
��* /
evt
��0 3
)
��3 4
{
�� 	
return
�� 

��  
.
��  !#
HandleSingleSelection
��! 6
(
��6 7
evt
��7 :
)
��: ;
!=
��< >
null
��? C
;
��C D
}
�� 	
void
�� 
	DropItems
��
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 

movingItem
�� #
in
��$ &
m_MoveItemHandler
��' 8
.
��8 9
movingItems
��9 D
)
��D E
{
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $

movingItem
��% /
.
��/ 0
items
��0 5
)
��5 6
item
�� 
.
�� 
gui
�� 
.
�� 
StopDrag
�� %
(
��% &
)
��& '
;
��' (
}
�� 
m_MoveItemHandler
�� 
.
�� 
Drop
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
static
�� 

TrackAsset
�� "
GetTrackDropTargetAt
�� .
(
��. /
WindowState
��/ :
state
��; @
,
��@ A
Vector2
��B I
point
��J O
)
��O P
{
�� 	
var
�� 
track
�� 
=
�� 
state
�� 
.
�� 
spacePartitioner
�� .
.
��. / 
GetItemsAtPosition
��/ A
<
��A B
IRowGUI
��B I
>
��I J
(
��J K
point
��K P
)
��P Q
.
��Q R
FirstOrDefault
��R `
(
��` a
)
��a b
;
��b c
return
�� 
track
�� 
!=
�� 
null
��  
?
��! "
track
��# (
.
��( )
asset
��) .
:
��/ 0
null
��1 5
;
��5 6
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Items\ItemsGroup.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	

ItemsGroup
 
{ 
readonly		 

[		 
]		  
m_Items		! (
;		( )
readonly

 


 
m_LeftMostItem

 -
;

- .
readonly 

m_RightMostItem .
;. /
public

[
]
items
{ 	
get 
{ 
return 
m_Items  
;  !
}" #
} 	
public 
double 
start 
{ 	
get 
{ 
return 
m_LeftMostItem '
.' (
start( -
;- .
}/ 0
set 
{ 
var 
offset 
= 
value "
-# $
m_LeftMostItem% 3
.3 4
start4 9
;9 :
foreach 
( 
var 
clip !
in" $
m_Items% ,
), -
clip 
. 
start 
+= !
offset" (
;( )
} 
} 	
public 
double 
end 
{ 	
get   
{   
return   
m_RightMostItem   (
.  ( )
end  ) ,
;  , -
}  . /
}!! 	
public## 

leftMostItem## )
{$$ 	
get%% 
{%% 
return%% 
m_LeftMostItem%% '
;%%' (
}%%* +
}&& 	
public(( 


{)) 	
get** 
{** 
return** 
m_RightMostItem** (
;**( )
}*** +
}++ 	
public-- 

ItemsGroup-- 
(-- 
IEnumerable-- %
<--% &

>--3 4
items--5 :
)--: ;
{.. 	
Debug// 
.// 
Assert// 
(// 
items// 
!=// !
null//" &
&&//' )
items//* /
./// 0
Any//0 3
(//3 4
)//4 5
)//5 6
;//6 7
m_Items11 
=11 
items11 
.11 
ToArray11 #
(11# $
)11$ %
;11% &
m_LeftMostItem22 
=22 
null22 !
;22! "
m_RightMostItem33 
=33 
null33 "
;33" #
foreach55 
(55 
var55 
item55 
in55  
m_Items55! (
)55( )
{66 
if77 
(77 
m_LeftMostItem77 "
==77# %
null77& *
||77+ -
item77. 2
.772 3
start773 8
<779 :
m_LeftMostItem77; I
.77I J
start77J O
)77O P
m_LeftMostItem88 "
=88# $
item88% )
;88) *
if:: 
(:: 
m_RightMostItem:: #
==::$ &
null::' +
||::, .
item::/ 3
.::3 4
end::4 7
>::8 9
m_RightMostItem::: I
.::I J
end::J M
)::M N
m_RightMostItem;; #
=;;$ %
item;;& *
;;;* +
}<< 
}== 	
}>> 
}?? ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\TimelineUtility.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static

class
TimelineUtility
{ 
public 
static 
void 

(( )
List) -
<- .
ScriptableObject. >
>> ?
	allTracks@ I
,I J
ListK O
<O P

TrackAssetP Z
>Z [
tracks\ b
,b c
ScriptableObjectd t
insertAfterAsset	u �
,
� �
bool
� �
up
� �
)
� �
{ 	
foreach 
( 
var 
i 
in 
tracks $
)$ %
	allTracks 
. 
Remove  
(  !
i! "
)" #
;# $
int 
index 
= 
	allTracks !
.! "
IndexOf" )
() *
insertAfterAsset* :
): ;
;; <
index 
= 
up 
? 
Math 
. 
Max !
(! "
index" '
,' (
$num) *
)* +
:, -
index. 3
+4 5
$num6 7
;7 8
	allTracks 
. 
InsertRange !
(! "
index" '
,' (
tracks) /
./ 0
OfType0 6
<6 7
ScriptableObject7 G
>G H
(H I
)I J
)J K
;K L
} 	
public 
static 

TrackAsset  "
GetSceneReferenceTrack! 7
(7 8

TrackAsset8 B
assetC H
)H I
{ 	
if 
( 
asset 
== 
null 
) 
return 
null 
; 
if   
(   
asset   
.   

isSubTrack    
)    !
return!! "
GetSceneReferenceTrack!! -
(!!- .
asset!!. 3
.!!3 4
parent!!4 :
as!!; =

TrackAsset!!> H
)!!H I
;!!I J
return"" 
asset"" 
;"" 
}## 	
public%% 
static%% 
bool%% #
TrackHasAnimationCurves%% 2
(%%2 3

TrackAsset%%3 =
track%%> C
)%%C D
{&& 	
if'' 
('' 
track'' 
.'' 
	hasCurves'' 
)''  
return(( 
true(( 
;(( 
var** 
	animTrack** 
=** 
track** !
as**" $
AnimationTrack**% 3
;**3 4
if++ 
(++ 
	animTrack++ 
!=++ 
null++ !
&&++" $
	animTrack++% .
.++. /
infiniteClip++/ ;
!=++< >
null++? C
&&++D F
!++G H
	animTrack++H Q
.++Q R
infiniteClip++R ^
.++^ _
empty++_ d
)++d e
return,, 
true,, 
;,, 
for.. 
(.. 
int.. 
i.. 
=.. 
$num.. 
;.. 
i.. 
<.. 
track..  %
...% &
clips..& +
...+ ,
Length.., 2
;..2 3
i..4 5
++..5 7
)..7 8
{// 
var00 
	curveClip00 
=00 
track00  %
.00% &
clips00& +
[00+ ,
i00, -
]00- .
.00. /
curves00/ 5
;005 6
var11 

=11" #
track11$ )
.11) *
clips11* /
[11/ 0
i110 1
]111 2
.112 3

;11@ A
if44 
(44 
	curveClip44 
!=44  
null44! %
&&44& (
	curveClip44) 2
.442 3
empty443 8
)448 9
	curveClip55 
=55 
null55  $
;55$ %
if77 
(77 

!=77" $
null77% )
&&77* ,

.77: ;
empty77; @
)77@ A

=88" #
null88$ (
;88( )
if;; 
(;; 

!=;;" $
null;;% )
&&;;* ,
(;;- .
(;;. /

.;;< =
	hideFlags;;= F
&;;G H
	HideFlags;;I R
.;;R S
NotEditable;;S ^
);;^ _
!=;;` b
$num;;c d
);;d e
);;e f

=<<" #
null<<$ (
;<<( )
if>> 
(>> 
!>> 
track>> 
.>> 
clips>>  
[>>  !
i>>! "
]>>" #
.>># $

recordable>>$ .
)>>. /

=??" #
null??$ (
;??( )
ifAA 
(AA 
(AA 
	curveClipAA 
!=AA !
nullAA" &
)AA& '
||AA( *
(AA+ ,

!=AA: <
nullAA= A
)AAA B
)AAB C
returnBB 
trueBB 
;BB  
}CC 
returnEE 
falseEE 
;EE 
}FF 	
publicII 
staticII 

GameObjectII  
GetSceneGameObjectII! 3
(II3 4
PlayableDirectorII4 D
directorIIE M
,IIM N

TrackAssetIIO Y
assetIIZ _
)II_ `
{JJ 	
ifKK 
(KK 
directorKK 
==KK 
nullKK  
||KK! #
assetKK$ )
==KK* ,
nullKK- 1
)KK1 2
returnLL 
nullLL 
;LL 
assetNN 
=NN "
GetSceneReferenceTrackNN *
(NN* +
assetNN+ 0
)NN0 1
;NN1 2
varPP 

gameObjectPP 
=PP 
directorPP %
.PP% &
GetGenericBindingPP& 7
(PP7 8
assetPP8 =
)PP= >
asPP? A

GameObjectPPB L
;PPL M
varQQ 
	componentQQ 
=QQ 
directorQQ $
.QQ$ %
GetGenericBindingQQ% 6
(QQ6 7
assetQQ7 <
)QQ< =
asQQ> @
	ComponentQQA J
;QQJ K
ifRR 
(RR 
	componentRR 
!=RR 
nullRR !
)RR! "

gameObjectSS 
=SS 
	componentSS &
.SS& '

gameObjectSS' 1
;SS1 2
returnTT 

gameObjectTT 
;TT 
}UU 	
publicWW 
staticWW 
voidWW 
SetSceneGameObjectWW -
(WW- .
PlayableDirectorWW. >
directorWW? G
,WWG H

TrackAssetWWI S
assetWWT Y
,WWY Z

GameObjectWW[ e
goWWf h
)WWh i
{XX 	
ifYY 
(YY 
directorYY 
==YY 
nullYY  
||YY! #
assetYY$ )
==YY* ,
nullYY- 1
)YY1 2
returnZZ 
;ZZ 
asset\\ 
=\\ "
GetSceneReferenceTrack\\ *
(\\* +
asset\\+ 0
)\\0 1
;\\1 2
var]] 
bindings]] 
=]] 
asset]]  
.]]  !
outputs]]! (
;]]( )
if^^ 
(^^ 
bindings^^ 
.^^ 
Count^^ 
(^^ 
)^^  
==^^! #
$num^^$ %
)^^% &
return__ 
;__ 
varaa 
bindingaa 
=aa 
bindingsaa "
.aa" #
Firstaa# (
(aa( )
)aa) *
;aa* +
ifbb 
(bb 
bindingbb 
.bb 
outputTargetTypebb (
==bb) +
typeofbb, 2
(bb2 3

GameObjectbb3 =
)bb= >
)bb> ?
{cc 
BindingUtilitydd 
.dd 
Binddd #
(dd# $
directordd$ ,
,dd, -
assetdd. 3
,dd3 4
godd5 7
)dd7 8
;dd8 9
}ee 
elseff 
{gg 
BindingUtilityhh 
.hh 
Bindhh #
(hh# $
directorhh$ ,
,hh, -
assethh. 3
,hh3 4
TimelineHelpershh5 D
.hhD E 
AddRequiredComponenthhE Y
(hhY Z
gohhZ \
,hh\ ]
assethh^ c
)hhc d
)hhd e
;hhe f
}ii 
}jj 	
publicll 
staticll 
PlayableDirectorll &
[ll& '
]ll' ()
GetDirectorsInSceneUsingAssetll) F
(llF G

assetllU Z
)llZ [
{mm 	
constnn 
	HideFlagsnn 
	hideFlagsnn %
=nn& '
	HideFlagsoo 
.oo 
HideInHierarchyoo )
|oo* +
	HideFlagsoo, 5
.oo5 6
HideInInspectoroo6 E
|ooF G
	HideFlagspp 
.pp 
DontSaveInEditorpp *
|pp+ ,
	HideFlagspp- 6
.pp6 7
NotEditablepp7 B
;ppB C
varrr 

prefabModerr 
=rr 
PrefabStageUtilityrr /
.rr/ 0!
GetCurrentPrefabStagerr0 E
(rrE F
)rrF G
;rrG H
vartt 
inScenett 
=tt 
newtt 
Listtt "
<tt" #
PlayableDirectortt# 3
>tt3 4
(tt4 5
)tt5 6
;tt6 7
varuu 
allDirectorsuu 
=uu 
	Resourcesuu (
.uu( ) 
FindObjectsOfTypeAlluu) =
(uu= >
typeofuu> D
(uuD E
PlayableDirectoruuE U
)uuU V
)uuV W
asuuX Z
PlayableDirectoruu[ k
[uuk l
]uul m
;uum n
foreachvv 
(vv 
varvv 
directorvv !
invv" $
allDirectorsvv% 1
)vv1 2
{ww 
ifxx 
(xx 
(xx 
directorxx 
.xx 
	hideFlagsxx '
&xx( )
	hideFlagsxx* 3
)xx3 4
!=xx5 7
$numxx8 9
)xx9 :
continueyy 
;yy 
string{{ 
	assetPath{{  
={{! "

.{{0 1
GetAssetPath{{1 =
({{= >
director{{> F
.{{F G
	transform{{G P
.{{P Q
root{{Q U
.{{U V

gameObject{{V `
){{` a
;{{a b
if|| 
(|| 
!|| 
String|| 
.|| 

(||) *
	assetPath||* 3
)||3 4
)||4 5
continue}} 
;}} 
if 
( 

prefabMode 
!= !
null" &
&&' )
!* +

prefabMode+ 5
.5 6"
IsPartOfPrefabContents6 L
(L M
directorM U
.U V

gameObjectV `
)` a
)a b
continue
�� 
;
�� 
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� !
||
��" $
(
��% &
asset
��& +
!=
��, .
null
��/ 3
&&
��4 6
director
��7 ?
.
��? @

��@ M
==
��N P
asset
��Q V
)
��V W
)
��W X
{
�� 
inScene
�� 
.
�� 
Add
�� 
(
��  
director
��  (
)
��( )
;
��) *
}
�� 
}
�� 
return
�� 
inScene
�� 
.
�� 
ToArray
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
public
�� 
static
�� 
PlayableDirector
�� &/
!GetDirectorComponentForGameObject
��' H
(
��H I

GameObject
��I S

gameObject
��T ^
)
��^ _
{
�� 	
return
�� 

gameObject
�� 
!=
��  
null
��! %
?
��& '

gameObject
��( 2
.
��2 3
GetComponent
��3 ?
<
��? @
PlayableDirector
��@ P
>
��P Q
(
��Q R
)
��R S
:
��T U
null
��V Z
;
��Z [
}
�� 	
public
�� 
static
�� 

�� #2
$GetTimelineAssetForDirectorComponent
��$ H
(
��H I
PlayableDirector
��I Y
director
��Z b
)
��b c
{
�� 	
return
�� 
director
�� 
!=
�� 
null
�� #
?
��$ %
director
��& .
.
��. /

��/ <
as
��= ?

��@ M
:
��N O
null
��P T
;
��T U
}
�� 	
public
�� 
static
�� 
bool
�� 
IsPrefabOrAsset
�� *
(
��* +
Object
��+ 1
obj
��2 5
)
��5 6
{
�� 	
return
�� 

��  
.
��  !
IsPersistent
��! -
(
��- .
obj
��. 1
)
��1 2
||
��3 5
(
��6 7
obj
��7 :
.
��: ;
	hideFlags
��; D
&
��E F
	HideFlags
��G P
.
��P Q
NotEditable
��Q \
)
��\ ]
!=
��^ `
$num
��a b
;
��b c
}
�� 	
internal
�� 
static
�� 
string
�� 
PropertyToString
�� /
(
��/ 0 
SerializedProperty
��0 B
property
��C K
)
��K L
{
�� 	
switch
�� 
(
�� 
property
�� 
.
�� 
propertyType
�� )
)
��) *
{
�� 
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Integer
��, 3
:
��3 4
return
�� 
property
�� #
.
��# $
intValue
��$ ,
.
��, -
ToString
��- 5
(
��5 6
CultureInfo
��6 A
.
��A B
InvariantCulture
��B R
)
��R S
;
��S T
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Float
��, 1
:
��1 2
return
�� 
property
�� #
.
��# $

floatValue
��$ .
.
��. /
ToString
��/ 7
(
��7 8
CultureInfo
��8 C
.
��C D
InvariantCulture
��D T
)
��T U
;
��U V
case
�� $
SerializedPropertyType
�� +
.
��+ ,
String
��, 2
:
��2 3
return
�� 
property
�� #
.
��# $
stringValue
��$ /
;
��/ 0
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Boolean
��, 3
:
��3 4
return
�� 
property
�� #
.
��# $
	boolValue
��$ -
?
��. /
$str
��0 3
:
��4 5
$str
��6 9
;
��9 :
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Color
��, 1
:
��1 2
return
�� 
property
�� #
.
��# $

colorValue
��$ .
.
��. /
ToString
��/ 7
(
��7 8
)
��8 9
;
��9 :
case
�� $
SerializedPropertyType
�� +
.
��+ ,
	ArraySize
��, 5
:
��5 6
return
�� 
property
�� #
.
��# $
intValue
��$ ,
.
��, -
ToString
��- 5
(
��5 6
CultureInfo
��6 A
.
��A B
InvariantCulture
��B R
)
��R S
;
��S T
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Enum
��, 0
:
��0 1
return
�� 
property
�� #
.
��# $
intValue
��$ ,
.
��, -
ToString
��- 5
(
��5 6
CultureInfo
��6 A
.
��A B
InvariantCulture
��B R
)
��R S
;
��S T
case
�� $
SerializedPropertyType
�� +
.
��+ ,
ObjectReference
��, ;
:
��; <
return
�� 
string
�� !
.
��! "
Empty
��" '
;
��' (
case
�� $
SerializedPropertyType
�� +
.
��+ ,
	LayerMask
��, 5
:
��5 6
return
�� 
property
�� #
.
��# $
intValue
��$ ,
.
��, -
ToString
��- 5
(
��5 6
CultureInfo
��6 A
.
��A B
InvariantCulture
��B R
)
��R S
;
��S T
case
�� $
SerializedPropertyType
�� +
.
��+ ,
	Character
��, 5
:
��5 6
return
�� 
property
�� #
.
��# $
intValue
��$ ,
.
��, -
ToString
��- 5
(
��5 6
CultureInfo
��6 A
.
��A B
InvariantCulture
��B R
)
��R S
;
��S T
case
�� $
SerializedPropertyType
�� +
.
��+ ,
AnimationCurve
��, :
:
��: ;
return
�� 
property
�� #
.
��# $!
animationCurveValue
��$ 7
.
��7 8
ToString
��8 @
(
��@ A
)
��A B
;
��B C
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Gradient
��, 4
:
��4 5
return
�� 
property
�� #
.
��# $

��$ 1
.
��1 2
ToString
��2 :
(
��: ;
)
��; <
;
��< =
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Vector3
��, 3
:
��3 4
return
�� 
property
�� #
.
��# $
vector3Value
��$ 0
.
��0 1
ToString
��1 9
(
��9 :
)
��: ;
;
��; <
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Vector4
��, 3
:
��3 4
return
�� 
property
�� #
.
��# $
vector4Value
��$ 0
.
��0 1
ToString
��1 9
(
��9 :
)
��: ;
;
��; <
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Vector2
��, 3
:
��3 4
return
�� 
property
�� #
.
��# $
vector2Value
��$ 0
.
��0 1
ToString
��1 9
(
��9 :
)
��: ;
;
��; <
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Rect
��, 0
:
��0 1
return
�� 
property
�� #
.
��# $
	rectValue
��$ -
.
��- .
ToString
��. 6
(
��6 7
)
��7 8
;
��8 9
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Bounds
��, 2
:
��2 3
return
�� 
property
�� #
.
��# $
boundsValue
��$ /
.
��/ 0
ToString
��0 8
(
��8 9
)
��9 :
;
��: ;
case
�� $
SerializedPropertyType
�� +
.
��+ ,

Quaternion
��, 6
:
��6 7
return
�� 
property
�� #
.
��# $
quaternionValue
��$ 3
.
��3 4
ToString
��4 <
(
��< =
)
��= >
;
��> ?
case
�� $
SerializedPropertyType
�� +
.
��+ ,
Generic
��, 3
:
��3 4
return
�� 
string
�� !
.
��! "
Empty
��" '
;
��' (
default
�� 
:
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% >
+
��? @
property
��A I
.
��I J
propertyType
��J V
)
��V W
;
��W X
return
�� 
string
�� !
.
��! "
Empty
��" '
;
��' (
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� '
IsRecordableAnimationClip
�� 6
(
��6 7
TimelineClip
��7 C
clip
��D H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 
clip
�� 
.
�� 

recordable
��  
)
��  !
return
�� 
false
�� 
;
�� $
AnimationPlayableAsset
�� "
asset
��# (
=
��) *
clip
��+ /
.
��/ 0
asset
��0 5
as
��6 8$
AnimationPlayableAsset
��9 O
;
��O P
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
IList
�� 
<
�� 
PlayableDirector
�� ,
>
��, -
GetSubTimelines
��. =
(
��= >
TimelineClip
��> J
clip
��K O
,
��O P#
IExposedPropertyTable
��Q f
director
��g o
)
��o p
{
�� 	
var
�� 
editor
�� 
=
�� '
CustomTimelineEditorCache
�� 2
.
��2 3

��3 @
(
��@ A
clip
��A E
)
��E F
;
��F G
List
�� 
<
�� 
PlayableDirector
�� !
>
��! "
	directors
��# ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
PlayableDirector
��8 H
>
��H I
(
��I J
)
��J K
;
��K L
try
�� 
{
�� 
editor
�� 
.
�� 
GetSubTimelines
�� &
(
��& '
clip
��' +
,
��+ ,
director
��- 5
as
��6 8
PlayableDirector
��9 I
,
��I J
	directors
��K T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogException
�� "
(
��" #
e
��# $
)
��$ %
;
��% &
}
�� 
return
�� 
	directors
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
��  
IsAllSubTrackMuted
�� -
(
��- .

TrackAsset
��. 8
asset
��9 >
)
��> ?
{
�� 	
if
�� 
(
�� 
asset
�� 
is
�� 

GroupTrack
�� #
)
��# $
return
�� 
asset
�� 
.
�� 
mutedInHierarchy
�� -
;
��- .
foreach
�� 
(
�� 

TrackAsset
�� 
t
��  !
in
��" $
asset
��% *
.
��* +
GetChildTracks
��+ 9
(
��9 :
)
��: ;
)
��; <
{
�� 
if
�� 
(
�� 
!
�� 
t
�� 
.
�� 
muted
�� 
)
�� 
return
�� 
false
��  
;
��  !
var
�� 

childMuted
�� 
=
��   
IsAllSubTrackMuted
��! 3
(
��3 4
t
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 

childMuted
�� 
)
��  
return
�� 
false
��  
;
��  !
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 

�� (
(
��( )

TrackAsset
��) 3
asset
��4 9
)
��9 :
{
�� 	

TrackAsset
�� 
p
�� 
=
�� 
asset
��  
.
��  !
parent
��! '
as
��( *

TrackAsset
��+ 5
;
��5 6
if
�� 
(
�� 
p
�� 
==
�� 
null
�� 
)
�� 
return
�� !
false
��" '
;
��' (
return
�� 
p
�� 
is
�� 

GroupTrack
�� "
?
��# $
p
��% &
.
��& '
mutedInHierarchy
��' 7
:
��8 9

��: G
(
��G H
p
��H I
)
��I J
;
��J K
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
PlayableDirector
��" 2
>
��2 3(
GetAllDirectorsInHierarchy
��4 N
(
��N O
PlayableDirector
��O _
mainDirector
��` l
)
��l m
{
�� 	
var
�� 
	directors
�� 
=
�� 
new
�� 
HashSet
��  '
<
��' (
PlayableDirector
��( 8
>
��8 9
{
��: ;
mainDirector
��< H
}
��I J
;
��J K(
GetAllDirectorsInHierarchy
�� &
(
��& '
mainDirector
��' 3
,
��3 4
	directors
��5 >
)
��> ?
;
��? @
return
�� 
	directors
�� 
;
�� 
}
�� 	
static
�� 
void
�� (
GetAllDirectorsInHierarchy
�� .
(
��. /
PlayableDirector
��/ ?
director
��@ H
,
��H I
ISet
��J N
<
��N O
PlayableDirector
��O _
>
��_ `
	directors
��a j
)
��j k
{
�� 	
var
�� 

�� 
=
�� 
director
��  (
.
��( )

��) 6
as
��7 9

��: G
;
��G H
if
�� 
(
�� 

�� 
==
��  
null
��! %
)
��% &
return
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
track
�� 
in
�� !

��" /
.
��/ 0
GetOutputTracks
��0 ?
(
��? @
)
��@ A
)
��A B
{
�� 
foreach
�� 
(
�� 
var
�� 
clip
�� !
in
��" $
track
��% *
.
��* +
clips
��+ 0
)
��0 1
{
�� 
foreach
�� 
(
�� 
var
��  
subDirector
��! ,
in
��- /
GetSubTimelines
��0 ?
(
��? @
clip
��@ D
,
��D E
director
��F N
)
��N O
)
��O P
{
�� 
if
�� 
(
�� 
!
�� 
	directors
�� &
.
��& '
Contains
��' /
(
��/ 0
subDirector
��0 ;
)
��; <
)
��< =
{
�� 
	directors
�� %
.
��% &
Add
��& )
(
��) *
subDirector
��* 5
)
��5 6
;
��6 7(
GetAllDirectorsInHierarchy
�� 6
(
��6 7
subDirector
��7 B
,
��B C
	directors
��D M
)
��M N
;
��N O
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "
T
��" #
>
��# $&
GetBindingsFromDirectors
��% =
<
��= >
T
��> ?
>
��? @
(
��@ A
IEnumerable
��A L
<
��L M
PlayableDirector
��M ]
>
��] ^
	directors
��_ h
)
��h i
where
��j o
T
��p q
:
��r s
Object
��t z
{
�� 	
var
�� 
bindings
�� 
=
�� 
new
�� 
HashSet
�� &
<
��& '
T
��' (
>
��( )
(
��) *
)
��* +
;
��+ ,
foreach
�� 
(
�� 
var
�� 
director
�� !
in
��" $
	directors
��% .
)
��. /
{
�� 
if
�� 
(
�� 
director
�� 
.
�� 

�� *
==
��+ -
null
��. 2
)
��2 3
continue
��4 <
;
��< =
foreach
�� 
(
�� 
var
�� 
output
�� #
in
��$ &
director
��' /
.
��/ 0

��0 =
.
��= >
outputs
��> E
)
��E F
{
�� 
var
�� 
binding
�� 
=
��  !
director
��" *
.
��* +
GetGenericBinding
��+ <
(
��< =
output
��= C
.
��C D
sourceObject
��D P
)
��P Q
as
��R T
T
��U V
;
��V W
if
�� 
(
�� 
binding
�� 
!=
��  "
null
��# '
)
��' (
bindings
��  
.
��  !
Add
��! $
(
��$ %
binding
��% ,
)
��, -
;
��- .
}
�� 
}
�� 
return
�� 
bindings
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsLockedFromGroup
�� ,
(
��, -

TrackAsset
��- 7
asset
��8 =
)
��= >
{
�� 	

TrackAsset
�� 
p
�� 
=
�� 
asset
��  
.
��  !
parent
��! '
as
��( *

TrackAsset
��+ 5
;
��5 6
if
�� 
(
�� 
p
�� 
==
�� 
null
�� 
)
�� 
return
�� !
false
��" '
;
��' (
return
�� 
p
�� 
is
�� 

GroupTrack
�� "
?
��# $
p
��% &
.
��& '
lockedInHierarchy
��' 8
:
��9 :
IsLockedFromGroup
��; L
(
��L M
p
��M N
)
��N O
;
��O P
}
�� 	
internal
�� 
static
�� 
bool
�� $
IsCurrentSequenceValid
�� 3
(
��3 4
)
��4 5
{
�� 	
return
�� 
TimelineWindow
�� !
.
��! "
instance
��" *
!=
��+ -
null
��. 2
&&
�� 
TimelineWindow
�� !
.
��! "
instance
��" *
.
��* +
state
��+ 0
!=
��1 3
null
��4 8
&&
�� 
TimelineWindow
�� !
.
��! "
instance
��" *
.
��* +
state
��+ 0
.
��0 1
editSequence
��1 =
!=
��> @
null
��A E
;
��E F
}
�� 	
public
�� 
static
�� 

�� #(
CreateAndSaveTimelineAsset
��$ >
(
��> ?
string
��? E
path
��F J
)
��J K
{
�� 	
var
�� 
newAsset
�� 
=
�� 
ScriptableObject
�� +
.
��+ ,
CreateInstance
��, :
<
��: ;

��; H
>
��H I
(
��I J
)
��J K
;
��K L
newAsset
�� 
.
�� 
editorSettings
�� #
.
��# $
fps
��$ '
=
��( )%
TimelineProjectSettings
��* A
.
��A B
instance
��B J
.
��J K#
assetDefaultFramerate
��K `
;
��` a

�� 
.
�� 
CreateAsset
�� %
(
��% &
newAsset
��& .
,
��. /
path
��0 4
)
��4 5
;
��5 6
return
�� 
newAsset
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Signals\SignalEmitterEditor.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Signals &
{ 
[  
CustomTimelineEditor 
( 
typeof  
(  !

). /
)/ 0
]0 1
class 	
SignalEmitterEditor
 
: 
MarkerEditor  ,
{ 
static		 
readonly		 
string		 
MissingAssetError		 0
=		1 2
L10n		3 7
.		7 8
Tr		8 :
(		: ;
$str		; O
)		O P
;		P Q
public 
override 
MarkerDrawOptions )
GetMarkerOptions* :
(: ;
IMarker; B
markerC I
)I J
{ 	
var
options
=
base
.
GetMarkerOptions
(
marker
)
;

emitter !
=" #
($ %

)2 3
marker3 9
;9 :
if 
( 
emitter 
. 
asset 
!=  
null! %
)% &
options 
. 
tooltip 
=  !
emitter" )
.) *
asset* /
./ 0
name0 4
;4 5
else 
options 
. 
	errorText !
=" #
MissingAssetError$ 5
;5 6
return 
options 
; 
} 	
} 
} �3
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\State\ISequenceState.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
	interface 
ISequenceState 
: 
IDisposable *
{ 

asset		 
{		 
get		 !
;		! "
}		# $
PlayableDirector

 
director

 !
{

" #
get

$ '
;

' (
}

) *
TimelineClip 
hostClip 
{ 
get  #
;# $
}% &
double 
start 
{ 
get 
; 
} 
double
	timeScale
{
get
;
}
double 
duration 
{ 
get 
; 
}  
bool 

isReadOnly
{ 
get 
; 
}  "
TimelineAssetViewModel 
	viewModel (
{) *
get+ .
;. /
}0 1
double 
time 
{ 
get 
; 
set 
; 
}  !
int 
frame 
{ 
get 
; 
set 
; 
} 
float 
	frameRate 
{ 
get 
; 
set "
;" #
}$ %
Range 
GetEvaluableRange 
(  
)  !
;! "
string 
TimeAsString 
( 
double "
	timeValue# ,
,, -
string. 4
format5 ;
=< =
$str> B
)B C
;C D
double 
ToGlobalTime 
( 
double "
t# $
)$ %
;% &
double 
ToLocalTime 
( 
double !
t" #
)# $
;$ %
void 
ResetIsReadOnly
( 
) 
; 
} 
class$$ 	
NullSequenceState$$
 
:$$ 
ISequenceState$$ ,
{%% 
public&& 

asset&& "
{&&# $
get&&% (
{&&) *
return&&+ 1
null&&2 6
;&&6 7
}&&8 9
}&&: ;
public'' 
PlayableDirector'' 
director''  (
{'') *
get''+ .
{''/ 0
return''1 7
null''8 <
;''< =
}''> ?
}''@ A
public(( 
TimelineClip(( 
hostClip(( $
{((% &
get((' *
{((+ ,
return((- 3
null((4 8
;((8 9
}((: ;
}((< =
public)) 
double)) 
start)) 
{)) 
get)) !
{))" #
return))$ *
$num))+ .
;)). /
}))0 1
}))2 3
public** 
double** 
	timeScale** 
{**  !
get**" %
{**& '
return**( .
$num**/ 2
;**2 3
}**4 5
}**6 7
public++ 
double++ 
duration++ 
{++  
get++! $
{++% &
return++' -
$num++. 1
;++1 2
}++3 4
}++5 6
public,, 
bool,, 

isReadOnly,, 
{,,  
get,,! $
{,,% &
return,,' -
false,,. 3
;,,3 4
},,5 6
},,7 8"
TimelineAssetViewModel.. 
m_ViewModel.. *
;..* +
public00 "
TimelineAssetViewModel00 %
	viewModel00& /
{11 	
get22 
{33 
if44 
(44 
m_ViewModel44 
==44  "
null44# '
)44' (
m_ViewModel55 
=55  !#
TimelineWindowViewPrefs55" 9
.559 :'
CreateUnassociatedViewModel55: U
(55U V
)55V W
;55W X
return66 
m_ViewModel66 "
;66" #
}77 
}88 	
public:: 
double:: 
time:: 
{;; 	
get<< 
{<< 
return<< 
$num<< 
;<< 
}<< 
set== 
{== 
}== 
}>> 	
public@@ 
int@@ 
frame@@ 
{AA 	
getBB 
{BB 
returnBB 
$numBB 
;BB 
}BB 
setCC 
{CC 
}CC 
}DD 	
publicFF 
floatFF 
	frameRateFF 
{GG 	
getHH 
{HH 
returnHH 

.HH& '
EditorSettingsHH' 5
.HH5 6
kDefaultFpsHH6 A
;HHA B
}HHC D
setII 
{II 
}II 
}JJ 	
publicLL 
RangeLL 
GetEvaluableRangeLL &
(LL& '
)LL' (
{MM 	
returnNN 
newNN 
RangeNN 
(NN 
)NN 
;NN 
}OO 	
publicQQ 
stringQQ 
TimeAsStringQQ "
(QQ" #
doubleQQ# )
	timeValueQQ* 3
,QQ3 4
stringQQ5 ;
formatQQ< B
=QQC D
$strQQE I
)QQI J
{RR 	
returnSS 
TimeUtilitySS 
.SS 
TimeAsTimeCodeSS -
(SS- .
	timeValueSS. 7
,SS7 8
	frameRateSS9 B
,SSB C
formatSSD J
)SSJ K
;SSK L
}TT 	
publicVV 
doubleVV 
ToGlobalTimeVV "
(VV" #
doubleVV# )
tVV* +
)VV+ ,
{WW 	
returnXX 
tXX 
;XX 
}YY 	
public[[ 
double[[ 
ToLocalTime[[ !
([[! "
double[[" (
t[[) *
)[[* +
{\\ 	
return]] 
t]] 
;]] 
}^^ 	
public`` 
void`` 
ResetIsReadOnly`` #
(``# $
)``$ %
{aa 	
}cc 	
publicee 
voidee 
Disposeee 
(ee 
)ee 
{ff 	
}hh 	
}ii 
}jj �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\Modes\TimelineDisabledMode.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	 
TimelineDisabledMode
 
:  
TimelineMode! -
{ 
public  
TimelineDisabledMode #
(# $
)$ %
{ 	
headerState		 
=		 
new		 
HeaderState		 )
{

 

breadCrumb 
=  
TimelineModeGUIState 1
.1 2
Enabled2 9
,9 :
options 
=  
TimelineModeGUIState .
.. /
Enabled/ 6
,6 7
sequenceSelector
=
TimelineModeGUIState
.
Enabled
} 
;
trackOptionsState 
= 
new  #
TrackOptionsState$ 5
{ 
	newButton 
=  
TimelineModeGUIState 0
.0 1
Enabled1 8
,8 9
editAsAssetButton !
=" # 
TimelineModeGUIState$ 8
.8 9
Enabled9 @
} 
;
mode 
= 

.  !
Disabled! )
;) *
} 	
public 
override 
bool 
ShouldShowPlayRange 0
(0 1
WindowState1 <
state= B
)B C
{ 	
return 
false 
; 
} 	
public 
override 
bool  
ShouldShowTimeCursor 1
(1 2
WindowState2 =
state> C
)C D
{ 	
return 
true 
; 
}   	
public"" 
override""  
TimelineModeGUIState"" ,
ToolbarState""- 9
(""9 :
WindowState"": E
state""F K
)""K L
{## 	
return$$  
TimelineModeGUIState$$ '
.$$' (
Disabled$$( 0
;$$0 1
}%% 	
public'' 
override''  
TimelineModeGUIState'' ,

TrackState''- 7
(''7 8
WindowState''8 C
state''D I
)''I J
{(( 	
return))  
TimelineModeGUIState)) '
.))' (
Enabled))( /
;))/ 0
}** 	
}++ 
},, ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_Gui.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
partial		 
class		 
TimelineWindow		  
{

 
struct 

{ 	
public
IMarker
marker
;
public 
Rect 
rect 
;  
public 
bool 

isSelected %
;% &
public 
bool 
isCollapsed &
;& '
public 
MarkerEditor 
editor  &
;& '
} 	
enum 
TimelineItemArea
{ 	
Header 
, 
Lines 
} 	
[ 	
SerializeField	 
] 
float #
m_HierarchySplitterPerc 6
=7 8
WindowConstants9 H
.H I.
"hierarchySplitterDefaultPercentageI k
;k l
static 
internal 
readonly  
TimelineMode! -
s_ActiveMode. :
=; <
new= @
TimelineActiveModeA S
(S T
)T U
;U V
static 
internal 
readonly  
TimelineMode! -
s_EditAssetMode. =
=> ?
new@ C$
TimelineAssetEditionModeD \
(\ ]
)] ^
;^ _
static 
internal 
readonly  
TimelineMode! -
s_InactiveMode. <
== >
new? B 
TimelineInactiveModeC W
(W X
)X Y
;Y Z
static   
internal   
readonly    
TimelineMode  ! -
s_DisabledMode  . <
=  = >
new  ? B 
TimelineDisabledMode  C W
(  W X
)  X Y
;  Y Z
static!! 
internal!! 
readonly!!  
TimelineMode!!! -$
s_PrefabOutOfContextMode!!. F
=!!G H
new!!I L$
TimelineAssetEditionMode!!M e
(!!e f
)!!f g
;!!g h
static"" 
internal"" 
readonly""  
TimelineMode""! -
s_ReadonlyMode"". <
=""= >
new""? B 
TimelineReadOnlyMode""C W
(""W X
)""X Y
;""Y Z
int$$ 
m_SplitterCaptured$$ 
;$$ 
float%% 
m_VerticalScrollBarSize%% %
,%%% &%
m_HorizontalScrollBarSize%%' @
;%%@ A
List'' 
<'' 

>'' 
m_OverlayQueue'' *
=''+ ,
new''- 0
List''1 5
<''5 6

>''C D
(''D E
$num''E H
)''H I
;''I J
float** 
headerHeight** 
{++ 	
get,, 
{-- 
return.. 
WindowConstants.. &
...& '
markerRowYPosition..' 9
+..: ;
(..< =
state..= B
...B C
showMarkerHeader..C S
?..T U
WindowConstants..V e
...e f
markerRowHeight..f u
:..v w
$num..x |
)..| }
;..} ~
}// 
}00 	
public22 
Rect22 
markerHeaderRect22 $
{33 	
get44 
{44 
return44 
new44 
Rect44 !
(44! "
$num44" &
,44& '
WindowConstants44( 7
.447 8
markerRowYPosition448 J
,44J K
state44L Q
.44Q R 
sequencerHeaderWidth44R f
,44f g
WindowConstants44h w
.44w x
markerRowHeight	44x �
)
44� �
;
44� �
}
44� �
}55 	
public77 
Rect77 
markerContentRect77 %
{88 	
get99 
{99 
return99 
Rect99 
.99 

MinMaxRect99 (
(99( )
state99) .
.99. / 
sequencerHeaderWidth99/ C
,99C D
WindowConstants99E T
.99T U
markerRowYPosition99U g
,99g h
position99i q
.99q r
width99r w
,99w x
WindowConstants	99y �
.
99� � 
markerRowYPosition
99� �
+
99� �
WindowConstants
99� �
.
99� �
markerRowHeight
99� �
)
99� �
;
99� �
}
99� �
}:: 	
Rect<< 
	trackRect<<
{== 	
get>> 
{?? 
var@@ 

yMinHeight@@ 
=@@  
headerHeight@@! -
;@@- .
returnAA 
newAA 
RectAA 
(AA  
$numAA  !
,AA! "

yMinHeightAA# -
,AA- .
positionAA/ 7
.AA7 8
widthAA8 =
,AA= >
positionAA? G
.AAG H
heightAAH N
-AAO P

yMinHeightAAQ [
-AA\ ]%
horizontalScrollbarHeightAA^ w
)AAw x
;AAx y
}BB 
}CC 	
publicEE 
RectEE 
sequenceRectEE  
{FF 	
getGG 
{GG 
returnGG 
newGG 
RectGG !
(GG! "
$numGG" &
,GG& '
WindowConstantsGG( 7
.GG7 8
markerRowYPositionGG8 J
,GGJ K
positionGGL T
.GGT U
widthGGU Z
-GG[ \
WindowConstantsGG] l
.GGl m
sliderWidthGGm x
,GGx y
position	GGz �
.
GG� �
height
GG� �
-
GG� �
WindowConstants
GG� �
.
GG� �
timeAreaYPosition
GG� �
)
GG� �
;
GG� �
}
GG� �
}HH 	
publicJJ 
RectJJ 
sequenceHeaderRectJJ &
{KK 	
getLL 
{LL 
returnLL 
newLL 
RectLL !
(LL! "
$numLL" &
,LL& '
WindowConstantsLL( 7
.LL7 8
markerRowYPositionLL8 J
,LLJ K
stateLLL Q
.LLQ R 
sequencerHeaderWidthLLR f
,LLf g
positionLLh p
.LLp q
heightLLq w
-LLx y
WindowConstants	LLz �
.
LL� �
timeAreaYPosition
LL� �
)
LL� �
;
LL� �
}
LL� �
}MM 	
publicOO 
RectOO 
sequenceContentRectOO '
{PP 	
getQQ 
{RR 
returnSS 
newSS 
RectSS 
(SS  
stateTT 
.TT  
sequencerHeaderWidthTT .
,TT. /
WindowConstantsUU #
.UU# $
markerRowYPositionUU$ 6
,UU6 7
positionVV 
.VV 
widthVV "
-VV# $
stateVV% *
.VV* + 
sequencerHeaderWidthVV+ ?
-VV@ A
(VVB C
treeViewVVC K
!=VVL N
nullVVO S
&&VVT V
treeViewVVW _
.VV_ `$
showingVerticalScrollBarVV` x
?VVy z
WindowConstants	VV{ �
.
VV� �
sliderWidth
VV� �
:
VV� �
$num
VV� �
)
VV� �
,
VV� �
positionWW 
.WW 
heightWW #
-WW$ %
WindowConstantsWW& 5
.WW5 6
markerRowYPositionWW6 H
-WWI J%
horizontalScrollbarHeightWWK d
)WWd e
;WWe f
}XX 
}YY 	
public[[ 
float[[ "
verticalScrollbarWidth[[ +
{\\ 	
get]] 
{^^ 
return__ #
m_VerticalScrollBarSize__ .
;__. /
}`` 
}aa 	
publiccc 
floatcc %
horizontalScrollbarHeightcc .
{dd 	
getee 
{ee 
returnee %
m_HorizontalScrollBarSizeee 2
;ee2 3
}ee4 5
}ff 	
internalhh 
TimelineModehh 
currentModehh )
{ii 	
getjj 
{kk 
ifll 
(ll 
statell 
==ll 
nullll !
||ll" $
statell% *
.ll* +
editSequencell+ 7
.ll7 8
assetll8 =
==ll> @
nullllA E
)llE F
returnmm 
s_InactiveModemm )
;mm) *
ifnn 
(nn 
statenn 
.nn 
editSequencenn &
.nn& '

isReadOnlynn' 1
)nn1 2
returnoo 
s_ReadonlyModeoo )
;oo) *
ifpp 
(pp 
statepp 
.pp 
editSequencepp &
.pp& '
directorpp' /
==pp0 2
nullpp3 7
||pp8 :
statepp; @
.pp@ A
masterSequenceppA O
.ppO P
directorppP X
==ppY [
nullpp\ `
)pp` a
returnqq 
s_EditAssetModeqq *
;qq* +
ifss 
(ss 

.ss! "
IsPartOfPrefabAssetss" 5
(ss5 6
statess6 ;
.ss; <
editSequencess< H
.ssH I
directorssI Q
)ssQ R
)ssR S
{tt 
varuu 
stageuu 
=uu 
PrefabStageUtilityuu  2
.uu2 3!
GetCurrentPrefabStageuu3 H
(uuH I
)uuI J
;uuJ K
ifvv 
(vv 
stagevv 
==vv  
nullvv! %
||vv& (
!vv) *
stagevv* /
.vv/ 0"
IsPartOfPrefabContentsvv0 F
(vvF G
statevvG L
.vvL M
editSequencevvM Y
.vvY Z
directorvvZ b
.vvb c

gameObjectvvc m
)vvm n
)vvn o
returnww $
s_PrefabOutOfContextModeww 7
;ww7 8
}xx 
ifzz 
(zz 
!zz 
statezz 
.zz 
masterSequencezz )
.zz) *
directorzz* 2
.zz2 3
isActiveAndEnabledzz3 E
)zzE F
return{{ 
s_DisabledMode{{ )
;{{) *
return}} 
s_ActiveMode}} #
;}}# $
}~~ 
} 	
void
�� 
DoLayout
��
(
�� 
)
�� 
{
�� 	
var
�� 
rawType
�� 
=
�� 
Event
�� 
.
��  
current
��  '
.
��' (
rawType
��( /
;
��/ 0
var
�� 

�� 
=
�� 
Event
��  %
.
��% &
current
��& -
.
��- .

��. ;
;
��; <

Initialize
�� 
(
�� 
)
�� 
;
�� "
HandleSplitterResize
��  
(
��  !
)
��! "
;
��" #
var
�� !
processManipulators
�� #
=
��$ %
Event
��& +
.
��+ ,
current
��, 3
.
��3 4
type
��4 8
!=
��9 ;
	EventType
��< E
.
��E F
Repaint
��F M
&&
��N P
Event
��Q V
.
��V W
current
��W ^
.
��^ _
type
��_ c
!=
��d f
	EventType
��g p
.
��p q
Layout
��q w
;
��w x
if
�� 
(
�� !
processManipulators
�� #
)
��# $
{
�� 
PickerUtils
�� 
.
�� 
DoPick
�� "
(
��" #
state
��# (
,
��( )

��* 7
)
��7 8
;
��8 9
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� &
.
��& '
asset
��' ,
!=
��- /
null
��0 4
)
��4 5"
m_PreTreeViewControl
�� (
.
��( )&
HandleManipulatorsEvents
��) A
(
��A B
state
��B G
)
��G H
;
��H I
}
�� 
SequencerGUI
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� !
processManipulators
�� #
)
��# $
{
�� 
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� &
.
��& '
asset
��' ,
!=
��- /
null
��0 4
)
��4 5#
m_PostTreeViewControl
�� )
.
��) *&
HandleManipulatorsEvents
��* B
(
��B C
state
��C H
)
��H I
;
��I J
}
�� 
m_RectangleSelect
�� 
.
�� 
OnGUI
�� #
(
��# $
state
��$ )
,
��) *
rawType
��+ 2
,
��2 3

��4 A
)
��A B
;
��B C
m_RectangleZoom
�� 
.
�� 
OnGUI
�� !
(
��! "
state
��" '
,
��' (
rawType
��) 0
,
��0 1

��2 ?
)
��? @
;
��@ A
}
�� 	
void
�� 
SplitterGUI
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
state
�� 
.
�� &
IsEditingAnEmptyTimeline
�� /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
var
�� 
splitterLineRect
�� $
=
��% &
new
��' *
Rect
��+ /
(
��/ 0
state
��0 5
.
��5 6"
sequencerHeaderWidth
��6 J
-
��K L
$num
��M Q
,
��Q R
WindowConstants
��S b
.
��b c
timeAreaYPosition
��c t
+
��u v
$num
��w {
,
��{ |
$num��} �
,��� �

clientArea��� �
.��� �
height��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
splitterLineRect
��# 3
,
��3 4
DirectorStyles
��5 C
.
��C D
Instance
��D L
.
��L M

customSkin
��M W
.
��W X
colorTopOutline3
��X h
)
��h i
;
��i j
}
�� 
}
�� 	
void
�� 

��
(
�� 
)
�� 
{
�� 	
using
�� 
(
�� 
new
�� 
GUIViewportScope
�� '
(
��' (
	trackRect
��( 1
)
��1 2
)
��2 3
{
�� 
	TracksGUI
�� 
(
�� 
	trackRect
�� #
,
��# $
state
��% *
,
��* +
currentMode
��, 7
.
��7 8

TrackState
��8 B
(
��B C
state
��C H
)
��H I
)
��I J
;
��J K
}
�� 
}
�� 	
void
�� 
UserOverlaysGUI
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
!=
��# %
	EventType
��& /
.
��/ 0
Repaint
��0 7
)
��7 8
return
�� 
;
�� 
var
�� 

screenRect
�� 
=
�� 
new
��  
Rect
��! %
(
��% &
state
�� 
.
�� "
sequencerHeaderWidth
�� *
,
��* +
WindowConstants
�� 
.
��  
timeAreaYPosition
��  1
,
��1 2
position
�� 
.
�� 
width
�� 
-
��  
state
��! &
.
��& '"
sequencerHeaderWidth
��' ;
-
��< =
(
��> ?
treeView
��? G
!=
��H J
null
��K O
&&
��P R
treeView
��S [
.
��[ \&
showingVerticalScrollBar
��\ t
?
��u v
WindowConstants��w �
.��� �
sliderWidth��� �
:��� �
$num��� �
)��� �
,��� �
position
�� 
.
�� 
height
�� 
-
��  !
WindowConstants
��" 1
.
��1 2
timeAreaYPosition
��2 C
-
��D E'
horizontalScrollbarHeight
��F _
)
��_ `
;
��` a
var
�� 
	startTime
�� 
=
�� 
state
�� !
.
��! "
PixelToTime
��" -
(
��- .

screenRect
��. 8
.
��8 9
xMin
��9 =
)
��= >
;
��> ?
var
�� 
endTime
�� 
=
�� 
state
�� 
.
��  
PixelToTime
��  +
(
��+ ,

screenRect
��, 6
.
��6 7
xMax
��7 ;
)
��; <
;
��< =
using
�� 
(
�� 
new
�� 
GUIViewportScope
�� '
(
��' (

screenRect
��( 2
)
��2 3
)
��3 4
{
�� 
foreach
�� 
(
�� 
var
�� 
entry
�� "
in
��# %
m_OverlayQueue
��& 4
)
��4 5
{
�� 
var
�� 
uiState
�� 
=
��  !
MarkerUIStates
��" 0
.
��0 1
None
��1 5
;
��5 6
if
�� 
(
�� 
entry
�� 
.
�� 
isCollapsed
�� )
)
��) *
uiState
�� 
|=
��  "
MarkerUIStates
��# 1
.
��1 2
	Collapsed
��2 ;
;
��; <
if
�� 
(
�� 
entry
�� 
.
�� 

isSelected
�� (
)
��( )
uiState
�� 
|=
��  "
MarkerUIStates
��# 1
.
��1 2
Selected
��2 :
;
��: ;
var
�� 
region
�� 
=
��  
new
��! $!
MarkerOverlayRegion
��% 8
(
��8 9
GUIClip
��9 @
.
��@ A
Clip
��A E
(
��E F
entry
��F K
.
��K L
rect
��L P
)
��P Q
,
��Q R

screenRect
��S ]
,
��] ^
	startTime
��_ h
,
��h i
endTime
��j q
)
��q r
;
��r s
try
�� 
{
�� 
entry
�� 
.
�� 
editor
�� $
.
��$ %
DrawOverlay
��% 0
(
��0 1
entry
��1 6
.
��6 7
marker
��7 =
,
��= >
uiState
��? F
,
��F G
region
��H N
)
��N O
;
��O P
}
�� 
catch
�� 
(
�� 
	Exception
�� $
e
��% &
)
��& '
{
�� 
Debug
�� 
.
�� 
LogException
�� *
(
��* +
e
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 
}
�� 
m_OverlayQueue
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
}
�� 	
void
�� "
DrawHeaderBackground
��
(
��! "
)
��" #
{
�� 	
var
�� 
rect
�� 
=
�� 
state
�� 
.
�� 
timeAreaRect
�� )
;
��) *
rect
�� 
.
�� 
xMin
�� 
=
�� 
$num
�� 
;
�� 
	EditorGUI
�� 
.
�� 
DrawRect
�� 
(
�� 
rect
�� #
,
��# $
DirectorStyles
��% 3
.
��3 4
Instance
��4 <
.
��< =

customSkin
��= G
.
��G H%
colorTimelineBackground
��H _
)
��_ `
;
��` a
}
�� 	
void
�� +
HandleBottomFillerDragAndDrop
��
(
��* +
Rect
��+ /
rect
��0 4
)
��4 5
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
!=
��# %
	EventType
��& /
.
��/ 0
DragUpdated
��0 ;
&&
��< >
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
!=
��# %
	EventType
��& /
.
��/ 0

DragExited
��0 :
&&
��; =
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
!=
��# %
	EventType
��& /
.
��/ 0
DragPerform
��0 ;
)
��; <
return
�� 
;
�� 
if
�� 
(
�� 
instance
�� 
.
�� 
treeView
�� !
==
��" $
null
��% )
||
��* ,
instance
��- 5
.
��5 6
treeView
��6 >
.
��> ?
timelineDragging
��? O
==
��P R
null
��S W
)
��W X
return
�� 
;
�� 
if
�� 
(
�� 
!
�� 
rect
�� 
.
�� 
Contains
�� 
(
�� 
Event
�� $
.
��$ %
current
��% ,
.
��, -

��- :
)
��: ;
)
��; <
return
�� 
;
�� 
instance
�� 
.
�� 
treeView
�� 
.
�� 
timelineDragging
�� .
.
��. /
DragElement
��/ :
(
��: ;
null
��; ?
,
��? @
new
��A D
Rect
��E I
(
��I J
)
��J K
,
��K L
-
��M N
$num
��N O
)
��O P
;
��P Q
}
�� 	
void
�� .
 DrawHeaderBackgroundBottomFiller
��
(
��- .
)
��. /
{
�� 	
var
�� 
rect
�� 
=
�� 
sequenceRect
�� #
;
��# $
rect
�� 
.
�� 
yMin
�� 
=
�� 
rect
�� 
.
�� 
yMax
�� !
;
��! "
rect
�� 
.
�� 
yMax
�� 
=
�� 
rect
�� 
.
�� 
yMax
�� !
+
��" #
WindowConstants
��$ 3
.
��3 4
sliderWidth
��4 ?
;
��? @
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #
asset
��# (
!=
��) +
null
��, 0
&&
��1 3
!
��4 5
state
��5 :
.
��: ;&
IsEditingAnEmptyTimeline
��; S
(
��S T
)
��T U
)
��U V
{
�� 
rect
�� 
.
�� 
width
�� 
=
�� 
state
�� "
.
��" #"
sequencerHeaderWidth
��# 7
;
��7 8
}
�� 
using
�� 
(
�� 
new
�� 
GUIViewportScope
�� '
(
��' (
rect
��( ,
)
��, -
)
��- .
{
�� 
Graphics
�� 
.
��  
DrawBackgroundRect
�� +
(
��+ ,
state
��, 1
,
��1 2
rect
��3 7
)
��7 8
;
��8 9
}
�� 
HandleBottomFillerDragAndDrop
�� )
(
��) *
rect
��* .
)
��. /
;
��/ 0
}
�� 	
void
�� 
SequencerGUI
��
(
�� 
)
�� 
{
�� 	
var
�� 
duration
�� 
=
�� 
state
��  
.
��  !
editSequence
��! -
.
��- .
duration
��. 6
;
��6 7"
DrawHeaderBackground
��  
(
��  !
)
��! "
;
��" #
DurationGUI
�� 
(
�� 
TimelineItemArea
�� (
.
��( )
Header
��) /
,
��/ 0
duration
��1 9
)
��9 :
;
��: ;
DrawToolbar
�� 
(
�� 
)
�� 
;
�� 

�� 
(
�� 
)
�� 
;
�� 
MarkerHeaderGUI
�� 
(
�� 
)
�� 
;
�� 
UserOverlaysGUI
�� 
(
�� 
)
�� 
;
�� 
DurationGUI
�� 
(
�� 
TimelineItemArea
�� (
.
��( )
Lines
��) .
,
��. /
duration
��0 8
)
��8 9
;
��9 :
PlayRangeGUI
�� 
(
�� 
TimelineItemArea
�� )
.
��) *
Lines
��* /
)
��/ 0
;
��0 1

�� 
(
�� 
TimelineItemArea
�� *
.
��* +
Lines
��+ 0
)
��0 1
;
��1 2.
 DrawHeaderBackgroundBottomFiller
�� ,
(
��, -
)
��- .
;
��. /!
SubTimelineRangeGUI
�� 
(
��  
)
��  !
;
��! "
PlayRangeGUI
�� 
(
�� 
TimelineItemArea
�� )
.
��) *
Header
��* 0
)
��0 1
;
��1 2

�� 
(
�� 
TimelineItemArea
�� *
.
��* +
Header
��+ 1
)
��1 2
;
��2 3
SplitterGUI
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
DrawToolbar
��
(
�� 
)
�� 
{
�� 	
DrawOptions
�� 
(
�� 
)
�� 
;
�� 
using
�� 
(
�� 
new
�� 
	GUILayout
��  
.
��  !

��! .
(
��. /
)
��/ 0
)
��0 1
{
�� 
using
�� 
(
�� 
new
�� 
	GUILayout
�� $
.
��$ %
HorizontalScope
��% 4
(
��4 5
EditorStyles
��5 A
.
��A B
toolbar
��B I
)
��I J
)
��J K
{
�� 
using
�� 
(
�� 
new
�� 
	GUILayout
�� (
.
��( )
HorizontalScope
��) 8
(
��8 9
)
��9 :
)
��: ;
{
�� "
DrawTransportToolbar
�� ,
(
��, -
)
��- .
;
��. /
}
�� "
DrawSequenceSelector
�� (
(
��( )
)
��) *
;
��* +
DrawBreadcrumbs
�� #
(
��# $
)
��$ %
;
��% &
	GUILayout
�� 
.
�� 

�� +
(
��+ ,
)
��, -
;
��- .
DrawOptions
�� 
(
��  
)
��  !
;
��! "
}
�� 
using
�� 
(
�� 
new
�� 
	GUILayout
�� $
.
��$ %
HorizontalScope
��% 4
(
��4 5
)
��5 6
)
��6 7
{
�� #
DrawHeaderEditButtons
�� )
(
��) *
)
��* +
;
��+ ,
DrawTimelineRuler
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 	
void
�� !
SubTimelineRangeGUI
��
(
��  !
)
��! "
{
�� 	
if
�� 
(
�� 
!
�� 
state
�� 
.
�� #
IsEditingASubTimeline
�� ,
(
��, -
)
��- .
||
��/ 1
state
��2 7
.
��7 8&
IsEditingAnEmptyTimeline
��8 P
(
��P Q
)
��Q R
)
��R S
return
��T Z
;
��Z [
var
�� %
subTimelineOverlayColor
�� '
=
��( )
DirectorStyles
��* 8
.
��8 9
Instance
��9 A
.
��A B

customSkin
��B L
.
��L M%
colorSubSequenceOverlay
��M d
;
��d e
var
�� 
range
�� 
=
�� 
state
�� 
.
�� 
editSequence
�� *
.
��* +
GetEvaluableRange
��+ <
(
��< =
)
��= >
;
��> ?
var
�� 
area
�� 
=
�� 
new
�� 
Vector2
�� "
(
��" #
state
��# (
.
��( )
TimeToPixel
��) 4
(
��4 5
range
��5 :
.
��: ;
start
��; @
)
��@ A
,
��A B
state
��C H
.
��H I
TimeToPixel
��I T
(
��T U
range
��U Z
.
��Z [
end
��[ ^
)
��^ _
)
��_ `
;
��` a
var
�� 
fullRect
�� 
=
�� !
sequenceContentRect
�� .
;
��. /
fullRect
�� 
.
�� 
yMin
�� 
=
�� 
WindowConstants
�� +
.
��+ ,
timeAreaYPosition
��, =
+
��> ?
$num
��@ D
;
��D E
if
�� 
(
�� 
fullRect
�� 
.
�� 
xMin
�� 
<
�� 
area
��  $
.
��$ %
x
��% &
)
��& '
{
�� 
var
�� 
before
�� 
=
�� 
fullRect
�� %
;
��% &
before
�� 
.
�� 
xMin
�� 
=
�� 
fullRect
�� &
.
��& '
xMin
��' +
;
��+ ,
before
�� 
.
�� 
xMax
�� 
=
�� 
Mathf
�� #
.
��# $
Min
��$ '
(
��' (
area
��( ,
.
��, -
x
��- .
,
��. /
fullRect
��0 8
.
��8 9
xMax
��9 =
)
��= >
;
��> ?
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
before
��# )
,
��) *%
subTimelineOverlayColor
��+ B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
fullRect
�� 
.
�� 
xMax
�� 
>
�� 
area
��  $
.
��$ %
y
��% &
)
��& '
{
�� 
var
�� 
after
�� 
=
�� 
fullRect
�� $
;
��$ %
after
�� 
.
�� 
xMin
�� 
=
�� 
Mathf
�� "
.
��" #
Max
��# &
(
��& '
area
��' +
.
��+ ,
y
��, -
,
��- .
fullRect
��/ 7
.
��7 8
xMin
��8 <
)
��< =
;
��= >
after
�� 
.
�� 
xMax
�� 
=
�� 
fullRect
�� %
.
��% &
xMax
��& *
;
��* +
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
after
��# (
,
��( )%
subTimelineOverlayColor
��* A
)
��A B
;
��B C
after
�� 
.
�� 
xMin
�� 
=
�� 
after
�� "
.
��" #
xMax
��# '
;
��' (
after
�� 
.
�� 
width
�� 
=
�� $
verticalScrollbarWidth
�� 4
;
��4 5
after
�� 
.
�� 
yMax
�� 
=
�� 
state
�� "
.
��" #
timeAreaRect
��# /
.
��/ 0
y
��0 1
+
��2 3
state
��4 9
.
��9 :
timeAreaRect
��: F
.
��F G
height
��G M
+
��N O
(
��P Q
state
��Q V
.
��V W
showMarkerHeader
��W g
?
��h i
WindowConstants
��j y
.
��y z
markerRowHeight��z �
:��� �
$num��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
after
��# (
,
��( )%
subTimelineOverlayColor
��* A
)
��A B
;
��B C
}
�� 
}
�� 	
void
�� "
HandleSplitterResize
��
(
��! "
)
��" #
{
�� 	
state
�� 
.
�� 

�� 
=
��  !
position
��" *
.
��* +
width
��+ 0
;
��0 1
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #
asset
��# (
==
��) +
null
��, 0
)
��0 1
return
�� 
;
�� 
Rect
�� )
sequencerHeaderSplitterRect
�� ,
=
��- .
new
��/ 2
Rect
��3 7
(
��7 8
state
��8 =
.
��= >"
sequencerHeaderWidth
��> R
-
��S T
$num
��U Y
,
��Y Z
$num
��[ _
,
��_ `
$num
��a e
,
��e f

clientArea
��g q
.
��q r
height
��r x
)
��x y
;
��y z
EditorGUIUtility
�� 
.
�� 

�� *
(
��* +)
sequencerHeaderSplitterRect
��+ F
,
��F G
MouseCursor
��H S
.
��S T"
SplitResizeLeftRight
��T h
)
��h i
;
��i j
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
	MouseDown
��0 9
)
��9 :
{
�� 
if
�� 
(
�� )
sequencerHeaderSplitterRect
�� /
.
��/ 0
Contains
��0 8
(
��8 9
Event
��9 >
.
��> ?
current
��? F
.
��F G

��G T
)
��T U
)
��U V 
m_SplitterCaptured
�� &
=
��' (
$num
��) *
;
��* +
}
�� 
if
�� 
(
��  
m_SplitterCaptured
�� "
>
��# $
$num
��% &
)
��& '
{
�� 
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
type
��" &
==
��' )
	EventType
��* 3
.
��3 4
MouseUp
��4 ;
)
��; <
{
��  
m_SplitterCaptured
�� &
=
��' (
$num
��) *
;
��* +
Event
�� 
.
�� 
current
�� !
.
��! "
Use
��" %
(
��% &
)
��& '
;
��' (
}
�� 
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
type
��" &
==
��' )
	EventType
��* 3
.
��3 4
	MouseDrag
��4 =
)
��= >
{
�� 
if
�� 
(
��  
m_SplitterCaptured
�� *
==
��+ -
$num
��. /
)
��/ 0
{
�� 
var
�� 
percInc
�� #
=
��$ %
Event
��& +
.
��+ ,
current
��, 3
.
��3 4
delta
��4 9
.
��9 :
x
��: ;
/
��< =
position
��> F
.
��F G
width
��G L
;
��L M%
m_HierarchySplitterPerc
�� /
=
��0 1
Mathf
��2 7
.
��7 8
Clamp
��8 =
(
��= >%
m_HierarchySplitterPerc
��> U
+
��V W
percInc
��X _
,
��_ `
WindowConstants
��a p
.
��p q#
minHierarchySplitter��q �
,��� �
WindowConstants��� �
.��� �$
maxHierarchySplitter��� �
)��� �
;��� �
state
�� 
.
�� "
sequencerHeaderWidth
�� 2
+=
��3 5
Event
��6 ;
.
��; <
current
��< C
.
��C D
delta
��D I
.
��I J
x
��J K
;
��K L
}
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
Use
��" %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 	
void
�� 
DrawOptions
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
currentMode
�� 
.
�� 
headerState
�� '
.
��' (
options
��( /
==
��0 2"
TimelineModeGUIState
��3 G
.
��G H
Hidden
��H N
||
��O Q
state
��R W
.
��W X
editSequence
��X d
.
��d e
asset
��e j
==
��k m
null
��n r
)
��r s
return
�� 
;
�� 
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  !

��! .
(
��. /
currentMode
��/ :
.
��: ;
headerState
��; F
.
��F G
options
��G N
==
��O Q"
TimelineModeGUIState
��R f
.
��f g
Disabled
��g o
)
��o p
)
��p q
{
�� 
var
�� 
rect
�� 
=
�� 
new
�� 
Rect
�� #
(
��# $
position
��$ ,
.
��, -
width
��- 2
-
��3 4
WindowConstants
��5 D
.
��D E
cogButtonWidth
��E S
,
��S T
$num
��U V
,
��V W
WindowConstants
��X g
.
��g h
cogButtonWidth
��h v
,
��v w
WindowConstants��x �
.��� �!
timeAreaYPosition��� �
)��� �
;��� �
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
DropdownButton
�� ,
(
��, -
rect
��- 1
,
��1 2
DirectorStyles
��3 A
.
��A B
optionsCogIcon
��B P
,
��P Q
	FocusType
��R [
.
��[ \
Keyboard
��\ d
,
��d e
EditorStyles
��f r
.
��r s

)��� �
)��� �
{
�� 
GenericMenu
�� 
menu
��  $
=
��% &
new
��' *
GenericMenu
��+ 6
(
��6 7
)
��7 8
;
��8 9
menu
�� 
.
�� 
AddItem
��  
(
��  !
EditorGUIUtility
��! 1
.
��1 2

��2 ?
(
��? @
$str
��@ U
)
��U V
,
��V W
false
��X ]
,
��] ^
(
��_ `
)
��` a
=>
��b d
SettingsWindow
��e s
.
��s t
Show
��t x
(
��x y

.��� �
User��� �
,��� �
$str��� �
)��� �
)��� �
;��� �
menu
�� 
.
�� 
AddSeparator
�� %
(
��% &
$str
��& (
)
��( )
;
��) *
menu
�� 
.
�� 
AddItem
��  
(
��  !
EditorGUIUtility
��! 1
.
��1 2

��2 ?
(
��? @
$str
��@ I
)
��I J
,
��J K
!
��L M
state
��M R
.
��R S
timeInFrames
��S _
,
��_ `
ChangeTimeCode
��a o
,
��o p
$str
��q z
)
��z {
;
��{ |
menu
�� 
.
�� 
AddItem
��  
(
��  !
EditorGUIUtility
��! 1
.
��1 2

��2 ?
(
��? @
$str
��@ H
)
��H I
,
��I J
state
��K P
.
��P Q
timeInFrames
��Q ]
,
��] ^
ChangeTimeCode
��_ m
,
��m n
$str
��o w
)
��w x
;
��x y
menu
�� 
.
�� 
AddSeparator
�� %
(
��% &
$str
��& (
)
��( )
;
��) *!
TimeAreaContextMenu
�� '
.
��' ("
AddTimeAreaMenuItems
��( <
(
��< =
menu
��= A
,
��A B
state
��C H
)
��H I
;
��I J
menu
�� 
.
�� 
AddSeparator
�� %
(
��% &
$str
��& (
)
��( )
;
��) *
bool
�� 
standardFrameRate
�� *
=
��+ ,
false
��- 2
;
��2 3
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '%
TimelineProjectSettings
��( ?
.
��? @
framerateValues
��@ O
.
��O P
Length
��P V
;
��V W
i
��X Y
++
��Y [
)
��[ \
{
�� 
standardFrameRate
�� )
|=
��* ,&
AddStandardFrameRateMenu
��- E
(
��E F
menu
��F J
,
��J K
$str
��L Y
+
��Z [%
TimelineProjectSettings
��\ s
.
��s t
framerateLabels��t �
[��� �
i��� �
]��� �
,��� �'
TimelineProjectSettings��� �
.��� �
framerateValues��� �
[��� �
i��� �
]��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
standardFrameRate
�� )
)
��) *
menu
�� 
.
�� 
AddDisabledItem
�� ,
(
��, -
EditorGUIUtility
��- =
.
��= >

��> K
(
��K L
$str
��L _
)
��_ `
)
��` a
;
��a b
else
�� 
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D Y
+
��Z [
state
��\ a
.
��a b
editSequence
��b n
.
��n o
	frameRate
��o x
+
��y z
$str
��{ ~
)
��~ 
,�� �
true��� �
,��� �
(��� �
)��� �
=>��� �
{��� �
}��� �
)��� �
;��� �
menu
�� 
.
�� 
AddSeparator
�� %
(
��% &
$str
��& (
)
��( )
;
��) *
if
�� 
(
�� 
state
�� 
.
�� 
playRangeEnabled
�� .
)
��. /
{
�� 
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D Z
)
��Z [
,
��[ \
state
��] b
.
��b c
playRangeLoopMode
��c t
,
��t u
(
��v w
)
��w x
=>
��y {
state��| �
.��� �!
playRangeLoopMode��� �
=��� �
true��� �
)��� �
;��� �
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D Z
)
��Z [
,
��[ \
!
��] ^
state
��^ c
.
��c d
playRangeLoopMode
��d u
,
��u v
(
��w x
)
��x y
=>
��z |
state��} �
.��� �!
playRangeLoopMode��� �
=��� �
false��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
menu
�� 
.
�� 
AddDisabledItem
�� ,
(
��, -
EditorGUIUtility
��- =
.
��= >

��> K
(
��K L
$str
��L ]
)
��] ^
)
��^ _
;
��_ `
}
�� 
if
�� 
(
�� 
Unsupported
�� #
.
��# $
IsDeveloperMode
��$ 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
menu
�� 
.
�� 
AddSeparator
�� )
(
��) *
$str
��* ,
)
��, -
;
��- .
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D Y
)
��Y Z
,
��Z [

SnapEngine
��\ f
.
��f g 
displayDebugLayout
��g y
,
��y z
(
�� 
)
�� 
=>
�� !

SnapEngine
��" ,
.
��, - 
displayDebugLayout
��- ?
=
��@ A
!
��B C

SnapEngine
��C M
.
��M N 
displayDebugLayout
��N `
)
��` a
;
��a b
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D T
)
��T U
,
��U V
false
��W \
,
��\ ]
(
�� 
)
�� 
=>
�� !
Debug
��  %
.
��% &
	LogFormat
��& /
(
��/ 0
$str
��0 m
,
��m n

m_TimeArea
��o y
.
��y z
translation��z �
,��� �

m_TimeArea��� �
.��� �
scale��� �
,��� �

m_TimeArea��� �
.��� �
rect��� �
,��� �

m_TimeArea��� �
.��� �
	shownArea��� �
)��� �
)��� �
;��� �
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D O
)
��O P
,
��P Q
false
��R W
,
��W X
(
��Y Z
)
��Z [
=>
��\ ^
	Selection
��_ h
.
��h i
activeObject
��i u
=
��v w
DirectorStyles��x �
.��� �
Instance��� �
.��� �

customSkin��� �
)��� �
;��� �
menu
�� 
.
�� 
AddItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D \
)
��\ ]
,
��] ^
state
��_ d
.
��d e
showQuadTree
��e q
,
��q r
(
�� 
)
�� 
=>
�� !
state
��" '
.
��' (
showQuadTree
��( 4
=
��5 6
!
��7 8
state
��8 =
.
��= >
showQuadTree
��> J
)
��J K
;
��K L
}
�� 
menu
�� 
.
�� 
DropDown
�� !
(
��! "
rect
��" &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 	
bool
�� &
AddStandardFrameRateMenu
��
(
��% &
GenericMenu
��& 1
menu
��2 6
,
��6 7
string
��8 >
name
��? C
,
��C D
float
��E J
value
��K P
)
��P Q
{
�� 	
bool
�� 
on
�� 
=
�� 
state
�� 
.
�� 
editSequence
�� (
.
��( )
	frameRate
��) 2
.
��2 3
Equals
��3 9
(
��9 :
value
��: ?
)
��? @
;
��@ A
if
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #

isReadOnly
��# -
)
��- .
{
�� 
menu
�� 
.
�� 
AddDisabledItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6
TextContent
��6 A
(
��A B
name
��B F
)
��F G
,
��G H
on
��I K
)
��K L
;
��L M
}
�� 
else
�� 
{
�� 
menu
�� 
.
�� 
AddItem
�� 
(
�� 
EditorGUIUtility
�� -
.
��- .
TextContent
��. 9
(
��9 :
name
��: >
)
��> ?
,
��? @
on
��A C
,
��C D
r
��E F
=>
��G I
{
�� 
state
�� 
.
�� 
editSequence
�� &
.
��& '
	frameRate
��' 0
=
��1 2
value
��3 8
;
��8 9
}
�� 
,
�� 
value
�� 
)
�� 
;
�� 
}
�� 
return
�� 
on
�� 
;
�� 
}
�� 	
void
�� 
ChangeTimeCode
��
(
�� 
object
�� "
obj
��# &
)
��& '
{
�� 	
string
�� 
format
�� 
=
�� 
obj
�� 
.
��  
ToString
��  (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 
format
�� 
==
�� 
$str
�� "
)
��" #
{
�� 
state
�� 
.
�� 
timeInFrames
�� "
=
��# $
true
��% )
;
��) *
}
�� 
else
�� 
{
�� 
state
�� 
.
�� 
timeInFrames
�� "
=
��# $
false
��% *
;
��* +
}
�� 
}
�� 	
public
�� 
void
�� 
AddUserOverlay
�� "
(
��" #
IMarker
��# *
marker
��+ 1
,
��1 2
Rect
��3 7
rect
��8 <
,
��< =
MarkerEditor
��> J
editor
��K Q
,
��Q R
bool
��S W
	collapsed
��X a
,
��a b
bool
��c g
selected
��h p
)
��p q
{
�� 	
if
�� 
(
�� 
marker
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 8
)
��8 9
;
��9 :
if
�� 
(
�� 
editor
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 8
)
��8 9
;
��9 :
m_OverlayQueue
�� 
.
�� 
Add
�� 
(
�� 
new
�� "

��# 0
(
��0 1
)
��1 2
{
�� 
isCollapsed
�� 
=
�� 
	collapsed
�� '
,
��' (

isSelected
�� 
=
�� 
selected
�� %
,
��% &
marker
�� 
=
�� 
marker
�� 
,
��  
rect
�� 
=
�� 
rect
�� 
,
�� 
editor
�� 
=
�� 
editor
�� 
}
�� 
)
�� 
;
��
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\TimelineTreeView.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
TimelineTreeView
 
: 
ITreeViewGUI )
{		 
float

 
m_FoldoutWidth

 
;

 
Rect )
m_DraggingInsertionMarkerRect
;* +
readonly 
TreeViewController #

m_TreeView$ .
;. /
List 
< 
Rect
> 

m_RowRects 
= 
new  #
List$ (
<( )
Rect) -
>- .
(. /
)/ 0
;0 1
List 
< 
Rect
> 
m_ExpandedRowRects %
=& '
new( +
List, 0
<0 1
Rect1 5
>5 6
(6 7
)7 8
;8 9
float 
m_MaxWidthOfRows 
; 
readonly 
WindowState 
m_State $
;$ %
static 
readonly 
float 
kMinTrackHeight -
=. /
$num0 5
;5 6
static 
readonly 
float 
kFoldOutOffset ,
=- .
$num/ 4
;4 5
static 
DirectorStyles 
m_Styles &
;& '
public 
bool 
showInsertionMarker '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
float 
topRowMargin )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
virtual 
float 
bottomRowMargin ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 
TimelineTreeView 
(  
TimelineWindow  .
sequencerWindow/ >
,> ?
TreeViewController@ R
treeViewS [
)[ \
{ 	

m_TreeView 
= 
treeView !
;! "

m_TreeView   
.   !
useExpansionAnimation   ,
=  - .
true  / 3
;  3 4

m_TreeView"" 
."" $
selectionChangedCallback"" /
+=""0 2$
SelectionChangedCallback""3 K
;""K L

m_TreeView## 
.## ,
 contextClickOutsideItemsCallback## 7
+=##8 :,
 ContextClickOutsideItemsCallback##; [
;##[ \

m_TreeView$$ 
.$$ %
itemDoubleClickedCallback$$ 0
+=$$1 3%
ItemDoubleClickedCallback$$4 M
;$$M N

m_TreeView%% 
.%% $
contextClickItemCallback%% /
+=%%0 2$
ContextClickItemCallback%%3 K
;%%K L

m_TreeView'' 
.'' #
SetConsumeKeyDownEvents'' .
(''. /
false''/ 4
)''4 5
;''5 6
m_Styles(( 
=(( 
DirectorStyles(( %
.((% &
Instance((& .
;((. /
m_State)) 
=)) 
sequencerWindow)) %
.))% &
state))& +
;))+ ,
m_FoldoutWidth++ 
=++ 
DirectorStyles++ +
.+++ ,
Instance++, 4
.++4 5
foldout++5 <
.++< =

fixedWidth++= G
;++G H
},, 	
void.. %
ItemDoubleClickedCallback..
(..& '
int..' *
id..+ -
)..- .
{// 	
var00 
trackGUI00 
=00 

m_TreeView00 %
.00% &
FindItem00& .
(00. /
id00/ 1
)001 2
as003 5
TimelineTrackGUI006 F
;00F G
if11 
(11 
trackGUI11 
==11 
null11  
)11  !
return22 
;22 
if44 
(44 
trackGUI44 
.44 
track44 
==44 !
null44" &
||44' )
trackGUI44* 2
.442 3
track443 8
.448 9
lockedInHierarchy449 J
)44J K
return55 
;55 
var77 
	selection77 
=77 
SelectionManager77 ,
.77, -

(77: ;
)77; <
.77< =
ToList77= C
(77C D
)77D E
;77E F
var88 
items88 
=88 

ItemsUtils88 "
.88" #
GetItems88# +
(88+ ,
trackGUI88, 4
.884 5
track885 :
)88: ;
.88; <
ToList88< B
(88B C
)88C D
;88D E
var99 
addToSelection99 
=99  
!99! "
	selection99" +
.99+ ,

(999 :
items99: ?
)99? @
;99@ A
foreach;; 
(;; 
var;; 
i;; 
in;; 
items;; #
);;# $
{<< 
if== 
(== 
addToSelection== "
)==" #
SelectionManager>> $
.>>$ %
Add>>% (
(>>( )
i>>) *
)>>* +
;>>+ ,
else?? 
SelectionManager@@ $
.@@$ %
Remove@@% +
(@@+ ,
i@@, -
)@@- .
;@@. /
}AA 
}BB 	
voidDD ,
 ContextClickOutsideItemsCallbackDD
(DD- .
)DD. /
{EE 	 
SequencerContextMenuFF  
.FF  !$
ShowNewTracksContextMenuFF! 9
(FF9 :
nullFF: >
,FF> ?
m_StateFF@ G
)FFG H
;FFH I
EventGG 
.GG 
currentGG 
.GG 
UseGG 
(GG 
)GG 
;GG  
}HH 	
voidJJ $
ContextClickItemCallbackJJ
(JJ% &
intJJ& )
idJJ* ,
)JJ, -
{KK 	
ifMM 
(MM 
!MM 

m_TreeViewMM 
.MM 

IsSelectedMM &
(MM& '
idMM' )
)MM) *
)MM* +$
SelectionChangedCallbackNN (
(NN( )
newNN) ,
[NN, -
]NN- .
{NN/ 0
idNN0 2
}NN2 3
)NN3 4
;NN4 5 
SequencerContextMenuPP  
.PP  ! 
ShowTrackContextMenuPP! 5
(PP5 6
EventPP6 ;
.PP; <
currentPP< C
.PPC D

)PPQ R
;PPR S
EventRR 
.RR 
currentRR 
.RR 
UseRR 
(RR 
)RR 
;RR  
}SS 	
voidUU $
SelectionChangedCallbackUU
(UU% &
intUU& )
[UU) *
]UU* +
idsUU, /
)UU/ 0
{VV 	
ifWW 
(WW 
EventWW 
.WW 
currentWW 
.WW 
buttonWW $
==WW% '
$numWW( )
&&WW* ,
PickerUtilsWW- 8
.WW8 9
TopmostPickedItemWW9 J
(WWJ K
)WWK L
isWWM O
ISelectableWWP [
)WW[ \
returnXX 
;XX 
ifZZ 
(ZZ 
EventZZ 
.ZZ 
currentZZ 
.ZZ 
commandZZ %
||ZZ& (
EventZZ) .
.ZZ. /
currentZZ/ 6
.ZZ6 7
controlZZ7 >
||ZZ? A
EventZZB G
.ZZG H
currentZZH O
.ZZO P
shiftZZP U
)ZZU V
SelectionManager[[  
.[[  !
UnSelectTracks[[! /
([[/ 0
)[[0 1
;[[1 2
else\\ 
SelectionManager]]  
.]]  !
Clear]]! &
(]]& '
)]]' (
;]]( )
foreach__ 
(__ 
var__ 
id__ 
in__ 
ids__ "
)__" #
{`` 
varaa 
trackGUIaa 
=aa 
(aa   
TimelineTrackBaseGUIaa  4
)aa4 5

m_TreeViewaa5 ?
.aa? @
FindItemaa@ H
(aaH I
idaaI K
)aaK L
;aaL M
SelectionManagerbb  
.bb  !
Addbb! $
(bb$ %
trackGUIbb% -
.bb- .
trackbb. 3
)bb3 4
;bb4 5
}cc 
m_Stateee 
.ee 
	GetWindowee 
(ee 
)ee 
.ee  
Repaintee  '
(ee' (
)ee( )
;ee) *
}ff 	
publichh 
voidhh 
OnInitializehh  
(hh  !
)hh! "
{hh# $
}hh$ %
publicjj 
Rectjj 
GetRectForFramingjj %
(jj% &
intjj& )
rowjj* -
)jj- .
{kk 	
returnll 

GetRowRectll 
(ll 
rowll !
,ll! "
$numll# $
)ll$ %
;ll% &
}mm 	
	protectedoo 
virtualoo 
Vector2oo !
GetSizeOfRowoo" .
(oo. /
TreeViewItemoo/ ;
itemoo< @
)oo@ A
{pp 	
ifqq 
(qq 
itemqq 
.qq 
displayNameqq  
==qq! #
$strqq$ *
)qq* +
returnrr 
newrr 
Vector2rr "
(rr" #

m_TreeViewrr# -
.rr- .
GetTotalRectrr. :
(rr: ;
)rr; <
.rr< =
widthrr= B
,rrB C
$numrrD H
)rrH I
;rrI J
vartt 

=tt 
itemtt  $
astt% '
TimelineGroupGUItt( 8
;tt8 9
ifuu 
(uu 

!=uu  
nulluu! %
)uu% &
{vv 
returnww 
newww 
Vector2ww "
(ww" #

m_TreeViewww# -
.ww- .
GetTotalRectww. :
(ww: ;
)ww; <
.ww< =
widthww= B
,wwB C

.wwQ R
	GetHeightwwR [
(ww[ \
m_Stateww\ c
)wwc d
)wwd e
;wwe f
}xx 
floatzz 
heightzz 
=zz 
TrackEditorzz &
.zz& '
DefaultTrackHeightzz' 9
;zz9 :
if{{ 
({{ 
item{{ 
.{{ 
hasChildren{{  
&&{{! #

m_TreeView{{$ .
.{{. /
data{{/ 3
.{{3 4

IsExpanded{{4 >
({{> ?
item{{? C
){{C D
){{D E
{|| 
height}} 
=}} 
Mathf}} 
.}} 
Min}} "
(}}" #
TrackEditor}}# .
.}}. /
DefaultTrackHeight}}/ A
,}}A B
kMinTrackHeight}}C R
)}}R S
;}}S T
}~~ 
return
�� 
new
�� 
Vector2
�� 
(
�� 

m_TreeView
�� )
.
��) *
GetTotalRect
��* 6
(
��6 7
)
��7 8
.
��8 9
width
��9 >
,
��> ?
height
��@ F
)
��F G
;
��G H
}
�� 	
public
�� 
virtual
�� 
void
�� 
BeginRowGUI
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 

m_TreeView
�� 
.
�� 
GetTotalRect
�� '
(
��' (
)
��( )
.
��) *
width
��* /
!=
��0 2

GetRowRect
��3 =
(
��= >
$num
��> ?
)
��? @
.
��@ A
width
��A F
)
��F G
{
�� 
CalculateRowRects
�� !
(
��! "
)
��" #
;
��# $
}
�� 
m_DraggingInsertionMarkerRect
�� )
.
��) *
x
��* +
=
��, -
-
��. /
$num
��/ 0
;
��0 1

m_TreeView
�� 
.
�� 
SetSelection
�� #
(
��# $
SelectionManager
��$ 4
.
��4 5
SelectedTrackGUI
��5 E
(
��E F
)
��F G
.
��G H
Select
��H N
(
��N O
t
��O P
=>
��Q S
t
��T U
.
��U V
id
��V X
)
��X Y
.
��Y Z
ToArray
��Z a
(
��a b
)
��b c
,
��c d
false
��e j
)
��j k
;
��k l
}
�� 	
public
�� 
virtual
�� 
void
�� 
	EndRowGUI
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� +
m_DraggingInsertionMarkerRect
�� -
.
��- .
x
��. /
>=
��0 2
$num
��3 4
&&
��5 7
Event
��8 =
.
��= >
current
��> E
.
��E F
type
��F J
==
��K M
	EventType
��N W
.
��W X
Repaint
��X _
)
��_ `
{
�� 
Rect
�� 

�� "
=
��# $+
m_DraggingInsertionMarkerRect
��% B
;
��B C
const
�� 
float
�� 
insertionHeight
�� +
=
��, -
$num
��. 2
;
��2 3

�� 
.
�� 
height
�� $
=
��% &
insertionHeight
��' 6
;
��6 7
if
�� 
(
�� 

m_TreeView
�� 
.
�� 
dragging
�� '
.
��' ( 
drawRowMarkerAbove
��( :
)
��: ;

�� !
.
��! "
y
��" #
-=
��$ &
insertionHeight
��' 6
*
��7 8
$num
��9 =
+
��> ?
$num
��@ D
;
��D E
else
�� 

�� !
.
��! "
y
��" #
+=
��$ &+
m_DraggingInsertionMarkerRect
��' D
.
��D E
height
��E K
-
��L M
insertionHeight
��N ]
*
��^ _
$num
��` d
+
��e f
$num
��g k
;
��k l
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #

��# 0
,
��0 1
Color
��2 7
.
��7 8
white
��8 =
)
��= >
;
��> ?
}
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
OnRowGUI
�� $
(
��$ %
Rect
��% )
rowRect
��* 1
,
��1 2
TreeViewItem
��3 ?
item
��@ D
,
��D E
int
��F I
row
��J M
,
��M N
bool
��O S
selected
��T \
,
��\ ]
bool
��^ b
focused
��c j
)
��j k
{
�� 	
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  !

��! .
(
��. /
TimelineWindow
��/ =
.
��= >
instance
��> F
.
��F G
currentMode
��G R
.
��R S

TrackState
��S ]
(
��] ^
TimelineWindow
��^ l
.
��l m
instance
��m u
.
��u v
state
��v {
)
��{ |
==
��} $
TimelineModeGUIState��� �
.��� �
Disabled��� �
)��� �
)��� �
{
�� 
var
�� 
sqvi
�� 
=
�� 
(
�� "
TimelineTrackBaseGUI
�� 0
)
��0 1
item
��1 5
;
��5 6
sqvi
�� 
.
�� ,
treeViewToWindowTransformation
�� 3
=
��4 5

m_TreeView
��6 @
.
��@ A
GetTotalRect
��A M
(
��M N
)
��N O
.
��O P
position
��P X
-
��Y Z

m_TreeView
��[ e
.
��e f
state
��f k
.
��k l
	scrollPos
��l u
;
��u v
if
�� 
(
�� 
!
�� 
sqvi
�� 
.
�� 
visibleExpanded
�� )
)
��) *
return
�� 
;
�� 
Rect
�� 

headerRect
�� 
=
��  !
rowRect
��" )
;
��) *
Rect
�� 
contentRect
��  
=
��! "
rowRect
��# *
;
��* +

headerRect
�� 
.
�� 
width
��  
=
��! "
m_State
��# *
.
��* +"
sequencerHeaderWidth
��+ ?
-
��@ A
$num
��B F
;
��F G
contentRect
�� 
.
�� 
xMin
��  
+=
��! #
m_State
��$ +
.
��+ ,"
sequencerHeaderWidth
��, @
;
��@ A
contentRect
�� 
.
�� 
width
�� !
=
��" #
rowRect
��$ +
.
��+ ,
width
��, 1
-
��2 3
m_State
��4 ;
.
��; <"
sequencerHeaderWidth
��< P
-
��Q R
$num
��S W
;
��W X
Rect
�� 
foldoutRect
��  
=
��! "
rowRect
��# *
;
��* +
var
�� 
indent
�� 
=
�� 
GetFoldoutIndent
�� -
(
��- .
item
��. 2
)
��2 3
;
��3 4
var
�� "
headerRectWithIndent
�� (
=
��) *

headerRect
��+ 5
;
��5 6"
headerRectWithIndent
�� $
.
��$ %
xMin
��% )
=
��* +
indent
��, 2
;
��2 3
var
�� 
rowRectWithIndent
�� %
=
��& '
new
��( +
Rect
��, 0
(
��0 1
rowRect
��1 8
.
��8 9
x
��9 :
+
��; <
indent
��= C
,
��C D
rowRect
��E L
.
��L M
y
��M N
,
��N O
rowRect
��P W
.
��W X
width
��X ]
-
��^ _
indent
��` f
,
��f g
rowRect
��h o
.
��o p
height
��p v
)
��v w
;
��w x
sqvi
�� 
.
�� 
Draw
�� 
(
�� "
headerRectWithIndent
�� .
,
��. /
contentRect
��0 ;
,
��; <
m_State
��= D
)
��D E
;
��E F
sqvi
�� 
.
�� "
DrawInsertionMarkers
�� )
(
��) *
rowRectWithIndent
��* ;
)
��; <
;
��< =
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
type
��" &
==
��' )
	EventType
��* 3
.
��3 4
Repaint
��4 ;
)
��; <
{
�� 
m_State
�� 
.
�� 
spacePartitioner
�� ,
.
��, -
	AddBounds
��- 6
(
��6 7
sqvi
��7 ;
)
��; <
;
��< =
if
�� 
(
�� !
showInsertionMarker
�� +
)
��+ ,
{
�� 
if
�� 
(
�� 

m_TreeView
�� &
.
��& '
dragging
��' /
!=
��0 2
null
��3 7
&&
��8 :

m_TreeView
��; E
.
��E F
dragging
��F N
.
��N O#
GetRowMarkerControlID
��O d
(
��d e
)
��e f
==
��g i 
TreeViewController
��j |
.
��| }
GetItemControlID��} �
(��� �
item��� �
)��� �
)��� �+
m_DraggingInsertionMarkerRect
�� 9
=
��: ;
rowRectWithIndent
��< M
;
��M N
}
�� 
}
�� 
DrawFoldout
�� 
(
�� 
item
��  
,
��  !
foldoutRect
��" -
,
��- .
indent
��/ 5
)
��5 6
;
��6 7
sqvi
�� 
.
�� 
ClearDrawFlags
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 	
void
�� 
DrawFoldout
��
(
�� 
TreeViewItem
�� %
item
��& *
,
��* +
Rect
��, 0
foldoutRect
��1 <
,
��< =
float
��> C
indent
��D J
)
��J K
{
�� 	
var
�� 
showFoldout
�� 
=
�� 

m_TreeView
�� (
.
��( )
data
��) -
.
��- .
IsExpandable
��. :
(
��: ;
item
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
showFoldout
�� 
)
�� 
{
�� 
foldoutRect
�� 
.
�� 
x
�� 
=
�� 
indent
��  &
-
��' (
kFoldOutOffset
��) 7
;
��7 8
foldoutRect
�� 
.
�� 
width
�� !
=
��" #
m_FoldoutWidth
��$ 2
;
��2 3
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
float
�� 
foldoutIconHeight
�� '
=
��( )
DirectorStyles
��* 8
.
��8 9
Instance
��9 A
.
��A B
foldout
��B I
.
��I J
fixedHeight
��J U
;
��U V
foldoutRect
�� 
.
�� 
y
�� 
+=
��  
foldoutIconHeight
��! 2
/
��3 4
$num
��5 9
;
��9 :
foldoutRect
�� 
.
�� 
height
�� "
=
��# $
foldoutIconHeight
��% 6
;
��6 7
if
�� 
(
�� 
foldoutRect
�� 
.
��  
xMax
��  $
>
��% &
m_State
��' .
.
��. /"
sequencerHeaderWidth
��/ C
)
��C D
return
�� 
;
�� 
bool
�� !
previousEnableState
�� (
=
��) *
GUI
��+ .
.
��. /
enabled
��/ 6
;
��6 7
GUI
�� 
.
�� 
enabled
�� 
=
�� 
true
�� "
;
��" #
bool
�� 
newExpandedValue
�� %
=
��& '
GUI
��( +
.
��+ ,
Toggle
��, 2
(
��2 3
foldoutRect
��3 >
,
��> ?

m_TreeView
��@ J
.
��J K
data
��K O
.
��O P

IsExpanded
��P Z
(
��Z [
item
��[ _
)
��_ `
,
��` a

GUIContent
��b l
.
��l m
none
��m q
,
��q r
m_Styles
��s {
.
��{ |
foldout��| �
)��� �
;��� �
GUI
�� 
.
�� 
enabled
�� 
=
�� !
previousEnableState
�� 1
;
��1 2
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� %
.
��% &
alt
��& )
)
��) *

m_TreeView
�� "
.
��" #
data
��# '
.
��' (%
SetExpandedWithChildren
��( ?
(
��? @
item
��@ D
,
��D E
newExpandedValue
��F V
)
��V W
;
��W X
else
�� 

m_TreeView
�� "
.
��" #
data
��# '
.
��' (
SetExpanded
��( 3
(
��3 4
item
��4 8
,
��8 9
newExpandedValue
��: J
)
��J K
;
��K L
}
�� 
}
�� 
}
�� 	
public
�� 
Rect
�� 

�� !
(
��! "
Rect
��" &
rowRect
��' .
,
��. /
int
��0 3
row
��4 7
,
��7 8
TreeViewItem
��9 E
item
��F J
)
��J K
{
�� 	
return
�� 
rowRect
�� 
;
�� 
}
�� 	
public
�� 
void
�� 

�� !
(
��! "
TreeViewItem
��" .
item
��/ 3
,
��3 4
float
��5 :

��; H
,
��H I
float
��J O
availableWidth
��P ^
)
��^ _
{
��` a
}
��a b
public
�� 
void
�� 
EndPingItem
�� 
(
��  
)
��  !
{
��" #
}
��# $
public
�� 
Rect
�� 

GetRowRect
�� 
(
�� 
int
�� "
row
��# &
,
��& '
float
��) .
rowWidth
��/ 7
)
��7 8
{
�� 	
return
�� 

GetRowRect
�� 
(
�� 
row
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
Rect
�� 

GetRowRect
�� 
(
�� 
int
�� "
row
��# &
)
��& '
{
�� 	
if
�� 
(
�� 

m_RowRects
�� 
.
�� 
Count
��  
==
��! #
$num
��$ %
)
��% &
return
�� 
new
�� 
Rect
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
row
�� 
>=
�� 

m_RowRects
�� !
.
��! "
Count
��" '
)
��' (
return
�� 
new
�� 
Rect
�� 
(
��  
)
��  !
;
��! "
return
�� 

m_RowRects
�� 
[
�� 
row
�� !
]
��! "
;
��" #
}
�� 	
static
�� 
float
�� 

GetSpacing
�� 
(
��  
TreeViewItem
��  ,
item
��- 1
)
��1 2
{
�� 	
var
�� 
	trackBase
�� 
=
�� 
item
��  
as
��! #"
TimelineTrackBaseGUI
��$ 8
;
��8 9
if
�� 
(
�� 
	trackBase
�� 
!=
�� 
null
�� !
)
��! "
return
�� 
	trackBase
��  
.
��  !-
GetVerticalSpacingBetweenTracks
��! @
(
��@ A
)
��A B
;
��B C
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
CalculateRowRects
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 

m_TreeView
�� 
.
�� 
isSearching
�� &
)
��& '
return
�� 
;
�� 
const
�� 
float
�� 
startY
�� 
=
��  
$num
��! %
;
��% &
IList
�� 
<
�� 
TreeViewItem
�� 
>
�� 
rows
��  $
=
��% &

m_TreeView
��' 1
.
��1 2
data
��2 6
.
��6 7
GetRows
��7 >
(
��> ?
)
��? @
;
��@ A

m_RowRects
�� 
=
�� 
new
�� 
List
�� !
<
��! "
Rect
��" &
>
��& '
(
��' (
rows
��( ,
.
��, -
Count
��- 2
)
��2 3
;
��3 4 
m_ExpandedRowRects
�� 
=
��  
new
��! $
List
��% )
<
��) *
Rect
��* .
>
��. /
(
��/ 0
rows
��0 4
.
��4 5
Count
��5 :
)
��: ;
;
��; <
float
�� 
curY
�� 
=
�� 
startY
�� 
;
��  
m_MaxWidthOfRows
�� 
=
�� 
$num
�� !
;
��! "
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
rows
��  $
.
��$ %
Count
��% *
;
��* +
++
��, .
i
��. /
)
��/ 0
{
�� 
var
�� 
item
�� 
=
�� 
rows
�� 
[
��  
i
��  !
]
��! "
;
��" #
if
�� 
(
�� 
i
�� 
!=
�� 
$num
�� 
)
�� 
curY
�� 
+=
�� 

GetSpacing
�� &
(
��& '
item
��' +
)
��+ ,
;
��, -
Vector2
�� 
rowSize
�� 
=
��  !
GetSizeOfRow
��" .
(
��. /
item
��/ 3
)
��3 4
;
��4 5

m_RowRects
�� 
.
�� 
Add
�� 
(
�� 
new
�� "
Rect
��# '
(
��' (
$num
��( )
,
��) *
curY
��+ /
,
��/ 0
rowSize
��1 8
.
��8 9
x
��9 :
,
��: ;
rowSize
��< C
.
��C D
y
��D E
)
��E F
)
��F G
;
��G H 
m_ExpandedRowRects
�� "
.
��" #
Add
��# &
(
��& '

m_RowRects
��' 1
[
��1 2
i
��2 3
]
��3 4
)
��4 5
;
��5 6
curY
�� 
+=
�� 
rowSize
�� 
.
��  
y
��  !
;
��! "
if
�� 
(
�� 
rowSize
�� 
.
�� 
x
�� 
>
�� 
m_MaxWidthOfRows
��  0
)
��0 1
m_MaxWidthOfRows
�� $
=
��% &
rowSize
��' .
.
��. /
x
��/ 0
;
��0 1
var
�� 
groupGUI
�� 
=
�� 
item
�� #
as
��$ &
TimelineGroupGUI
��' 7
;
��7 8
if
�� 
(
�� 
groupGUI
�� 
!=
�� 
null
��  $
)
��$ %
groupGUI
�� 
.
�� 
SetExpanded
�� (
(
��( )

m_TreeView
��) 3
.
��3 4
data
��4 8
.
��8 9

IsExpanded
��9 C
(
��C D
item
��D H
)
��H I
)
��I J
;
��J K
}
�� 
float
�� 

halfHeight
�� 
=
�� #
halfDropBetweenHeight
�� 4
;
��4 5
const
�� 
float
�� 
	kGroupPad
�� !
=
��" #
$num
��$ (
;
��( )
const
�� 
float
�� 
kSkinPadding
�� $
=
��% &
$num
��' +
*
��, -
$num
��. 2
;
��2 3
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
rows
�� 
.
�� 
Count
�� #
-
��$ %
$num
��& '
;
��' (
i
��) *
>
��+ ,
$num
��- .
;
��. /
i
��0 1
--
��1 3
)
��3 4
{
�� 
float
�� 
height
�� 
=
�� 
$num
��  
;
��  !"
TimelineTrackBaseGUI
�� $
item
��% )
=
��* +
(
��, -"
TimelineTrackBaseGUI
��- A
)
��A B
rows
��B F
[
��F G
i
��G H
]
��H I
;
��I J
if
�� 
(
�� 
item
�� 
.
�� 

isExpanded
�� #
&&
��$ &
item
��' +
.
��+ ,
children
��, 4
!=
��5 7
null
��8 <
&&
��= ?
item
��@ D
.
��D E
children
��E M
.
��M N
Count
��N S
>
��T U
$num
��V W
)
��W X
{
�� 
for
�� 
(
�� 
var
�� 
j
�� 
=
��  
$num
��! "
;
��" #
j
��$ %
<
��& '
item
��( ,
.
��, -
children
��- 5
.
��5 6
Count
��6 ;
;
��; <
j
��= >
++
��> @
)
��@ A
{
�� 
var
�� 
child
�� !
=
��" #
item
��$ (
.
��( )
children
��) 1
[
��1 2
j
��2 3
]
��3 4
;
��4 5
int
�� 
index
�� !
=
��" #
rows
��$ (
.
��( )
IndexOf
��) 0
(
��0 1
child
��1 6
)
��6 7
;
��7 8
if
�� 
(
�� 
index
�� !
>
��" #
i
��$ %
)
��% &
height
�� "
+=
��# % 
m_ExpandedRowRects
��& 8
[
��8 9
index
��9 >
]
��> ?
.
��? @
height
��@ F
+
��G H
kSkinPadding
��I U
;
��U V
}
�� 
height
�� 
+=
�� 
	kGroupPad
�� '
;
��' (
}
��  
m_ExpandedRowRects
�� "
[
��" #
i
��# $
]
��$ %
=
��& '
new
��( +
Rect
��, 0
(
��0 1

m_RowRects
��1 ;
[
��; <
i
��< =
]
��= >
.
��> ?
x
��? @
,
��@ A

m_RowRects
��B L
[
��L M
i
��M N
]
��N O
.
��O P
y
��P Q
,
��Q R

m_RowRects
��S ]
[
��] ^
i
��^ _
]
��_ `
.
��` a
width
��a f
,
��f g

m_RowRects
��h r
[
��r s
i
��s t
]
��t u
.
��u v
height
��v |
+
��} ~
height�� �
)��� �
;��� �
var
�� 
groupGUI
�� 
=
�� 
item
�� #
as
��$ &
TimelineGroupGUI
��' 7
;
��7 8
if
�� 
(
�� 
groupGUI
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
spacing
�� 
=
��  !

GetSpacing
��" ,
(
��, -
item
��- 1
)
��1 2
+
��3 4
$num
��5 6
;
��6 7
groupGUI
�� 
.
�� 
expandedRect
�� )
=
��* + 
m_ExpandedRowRects
��, >
[
��> ?
i
��? @
]
��@ A
;
��A B
groupGUI
�� 
.
�� 
rowRect
�� $
=
��% &

m_RowRects
��' 1
[
��1 2
i
��2 3
]
��3 4
;
��4 5
groupGUI
�� 
.
�� 
dropRect
�� %
=
��& '
new
��( +
Rect
��, 0
(
��0 1

m_RowRects
��1 ;
[
��; <
i
��< =
]
��= >
.
��> ?
x
��? @
,
��@ A

m_RowRects
��B L
[
��L M
i
��M N
]
��N O
.
��O P
y
��P Q
-
��R S
spacing
��T [
,
��[ \

m_RowRects
��] g
[
��g h
i
��h i
]
��i j
.
��j k
width
��k p
,
��p q

m_RowRects
��r |
[
��| }
i
��} ~
]
��~ 
.�� �
height��� �
+��� �
Mathf��� �
.��� �
Max��� �
(��� �

halfHeight��� �
,��� �
spacing��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
virtual
�� 
bool
�� 
BeginRename
�� '
(
��' (
TreeViewItem
��( 4
item
��5 9
,
��9 :
float
��; @
delay
��A F
)
��F G
{
�� 	
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
	EndRename
�� %
(
��% &
)
��& '
{
��( )
}
��) *
	protected
�� 
virtual
�� 
float
�� 
GetFoldoutIndent
��  0
(
��0 1
TreeViewItem
��1 =
item
��> B
)
��B C
{
�� 	
if
�� 
(
�� 
item
�� 
.
�� 
depth
�� 
<=
�� 
$num
�� 
||
��  "

m_TreeView
��# -
.
��- .
isSearching
��. 9
)
��9 :
return
�� 
DirectorStyles
�� %
.
��% &
kBaseIndent
��& 1
;
��1 2
int
�� 
depth
�� 
=
�� 
item
�� 
.
�� 
depth
�� "
;
��" #
var
�� 
trackGUI
�� 
=
�� 
item
�� 
as
��  "
TimelineTrackGUI
��# 3
;
��3 4
if
�� 
(
�� 
trackGUI
�� 
!=
�� 
null
��  
&&
��! #
trackGUI
��$ ,
.
��, -
track
��- 2
!=
��3 5
null
��6 :
&&
��; =
trackGUI
��> F
.
��F G
track
��G L
.
��L M

isSubTrack
��M W
)
��W X
depth
�� 
--
�� 
;
�� 
return
�� 
depth
�� 
*
�� 
DirectorStyles
�� )
.
��) *
kBaseIndent
��* 5
;
��5 6
}
�� 	
public
�� 
virtual
�� 
float
�� 
GetContentIndent
�� -
(
��- .
TreeViewItem
��. :
item
��; ?
)
��? @
{
�� 	
return
�� 
GetFoldoutIndent
�� #
(
��# $
item
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
int
�� $
GetNumRowsOnPageUpDown
�� )
(
��) *
TreeViewItem
��* 6
fromItem
��7 ?
,
��? @
bool
��A E
pageUp
��F L
,
��L M
float
��N S
heightOfTreeView
��T d
)
��d e
{
�� 	
return
�� 
(
�� 
int
�� 
)
�� 
Mathf
�� 
.
�� 
Floor
�� #
(
��# $
heightOfTreeView
��$ 4
/
��5 6
$num
��7 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
void
�� '
GetFirstAndLastRowVisible
�� -
(
��- .
out
��. 1
int
��2 5
firstRowVisible
��6 E
,
��E F
out
��G J
int
��K N
lastRowVisible
��O ]
)
��] ^
{
�� 	
int
�� 
rowCount
�� 
=
�� 

m_TreeView
�� %
.
��% &
data
��& *
.
��* +
rowCount
��+ 3
;
��3 4
if
�� 
(
�� 
rowCount
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
firstRowVisible
�� 
=
��  !
lastRowVisible
��" 0
=
��1 2
-
��3 4
$num
��4 5
;
��5 6
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
rowCount
�� 
!=
��  
m_ExpandedRowRects
�� .
.
��. /
Count
��/ 4
)
��4 5
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str�� �
)��� �
;��� �
CalculateRowRects
�� !
(
��! "
)
��" #
;
��# $
}
�� 
float
�� 
topPixel
�� 
=
�� 

m_TreeView
�� '
.
��' (
state
��( -
.
��- .
	scrollPos
��. 7
.
��7 8
y
��8 9
;
��9 :
float
�� 
heightInPixels
��  
=
��! "

m_TreeView
��# -
.
��- .
GetTotalRect
��. :
(
��: ;
)
��; <
.
��< =
height
��= C
;
��C D
int
�� 
firstVisible
�� 
=
�� 
-
��  
$num
��  !
;
��! "
int
�� 
lastVisible
�� 
=
�� 
-
�� 
$num
��  
;
��  !
Rect
�� 
visibleRect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
$num
��( )
,
��) *
topPixel
��+ 3
,
��3 4 
m_ExpandedRowRects
��5 G
[
��G H
$num
��H I
]
��I J
.
��J K
width
��K P
,
��P Q
heightInPixels
��R `
)
��` a
;
��a b
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
��  
m_ExpandedRowRects
��  2
.
��2 3
Count
��3 8
;
��8 9
++
��: <
i
��< =
)
��= >
{
�� 
bool
�� 
visible
�� 
=
�� 
visibleRect
�� *
.
��* +
Overlaps
��+ 3
(
��3 4 
m_ExpandedRowRects
��4 F
[
��F G
i
��G H
]
��H I
)
��I J
;
��J K
if
�� 
(
�� 
visible
�� 
)
�� 
{
�� 
if
�� 
(
�� 
firstVisible
�� $
==
��% '
-
��( )
$num
��) *
)
��* +
firstVisible
�� $
=
��% &
i
��' (
;
��( )
lastVisible
�� 
=
��  !
i
��" #
;
��# $
}
�� "
TimelineTrackBaseGUI
�� $
gui
��% (
=
��) *

m_TreeView
��+ 5
.
��5 6
data
��6 :
.
��: ;
GetItem
��; B
(
��B C
i
��C D
)
��D E
as
��F H"
TimelineTrackBaseGUI
��I ]
;
��] ^
if
�� 
(
�� 
gui
�� 
!=
�� 
null
�� 
)
��  
{
�� 
gui
�� 
.
�� 
visibleExpanded
�� '
=
��( )
visible
��* 1
;
��1 2
gui
�� 
.
�� 

visibleRow
�� "
=
��# $
visibleRect
��% 0
.
��0 1
Overlaps
��1 9
(
��9 :

m_RowRects
��: D
[
��D E
i
��E F
]
��F G
)
��G H
;
��H I
}
�� 
}
�� 
if
�� 
(
�� 
firstVisible
�� 
!=
�� 
-
��  !
$num
��! "
&&
��# %
lastVisible
��& 1
!=
��2 4
-
��5 6
$num
��6 7
)
��7 8
{
�� 
firstRowVisible
�� 
=
��  !
firstVisible
��" .
;
��. /
lastRowVisible
�� 
=
��  
lastVisible
��! ,
;
��, -
}
�� 
else
�� 
{
�� 
firstRowVisible
�� 
=
��  !
$num
��" #
;
��# $
lastRowVisible
�� 
=
��  
rowCount
��! )
-
��* +
$num
��, -
;
��- .
}
�� 
}
�� 	
public
�� 
Vector2
�� 
GetTotalSize
�� #
(
��# $
)
��$ %
{
�� 	
if
�� 
(
�� 

m_RowRects
�� 
.
�� 
Count
��  
==
��! #
$num
��$ %
)
��% &
return
�� 
new
�� 
Vector2
�� "
(
��" #
$num
��# $
,
��$ %
$num
��& '
)
��' (
;
��( )
return
�� 
new
�� 
Vector2
�� 
(
�� 
m_MaxWidthOfRows
�� /
,
��/ 0

m_RowRects
��1 ;
[
��; <

m_RowRects
��< F
.
��F G
Count
��G L
-
��M N
$num
��O P
]
��P Q
.
��Q R
yMax
��R V
)
��V W
;
��W X
}
�� 	
public
�� 
virtual
�� 
float
�� #
halfDropBetweenHeight
�� 2
{
�� 	
get
�� 
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Actions\Menus\TimelineContextMenu.cs
	namespace

 	
UnityEditor


 
.

 
Timeline

 
{ 
static 

class  
SequencerContextMenu %
{
static 
class 
Styles 
{ 	
public 
static 
readonly "
string# )$
addItemFromAssetTemplate* B
=I J
L10nK O
.O P
TrP R
(R S
$strS e
)e f
;f g
public 
static 
readonly "
string# )*
addSingleItemFromAssetTemplate* H
=I J
L10nK O
.O P
TrP R
(R S
$strS a
)a b
;b c
public 
static 
readonly "
string# )
addItemTemplate* 9
=I J
L10nK O
.O P
TrP R
(R S
$strS \
)\ ]
;] ^
public 
static 
readonly "
string# ) 
typeSelectorTemplate* >
=I J
L10nK O
.O P
TrP R
(R S
$strS _
)_ `
;` a
public 
static 
readonly "
string# )

trackGroup* 4
=I J
L10nK O
.O P
TrP R
(R S
$strS `
)` a
;a b
public 
static 
readonly "
string# )

=I J
L10nK O
.O P
TrP R
(R S
$strS d
)d e
;e f
public 
static 
readonly "
string# )

=I J
L10nK O
.O P
TrP R
(R S
$strS ^
)^ _
;_ `
public 
static 
readonly "
string# )
	layerName* 3
=I J
L10nK O
.O P
TrP R
(R S
$strS ^
)^ _
;_ `
} 	
public 
static 
void '
ShowMarkerHeaderContextMenu 6
(6 7
Vector27 >
?> ?

,M N
WindowStateO Z
state[ `
)` a
{ 	
var 
menu 
= 
new 
GenericMenu &
(& '
)' (
;( )
List 
< 
MenuActionItem 
>  
items! &
=' (
new) ,
List- 1
<1 2
MenuActionItem2 @
>@ A
(A B
$numB E
)E F
;F G(
BuildMarkerHeaderContextMenu (
(( )
items) .
,. /

,= >
state? D
)D E
;E F

. 
	BuildMenu #
(# $
menu$ (
,( )
items* /
)/ 0
;0 1
menu   
.   

(   
)    
;    !
}!! 	
public## 
static## 
void## $
ShowNewTracksContextMenu## 3
(##3 4
ICollection##4 ?
<##? @

TrackAsset##@ J
>##J K
tracks##L R
,##R S
WindowState##T _
state##` e
)##e f
{$$ 	
var%% 
menu%% 
=%% 
new%% 
GenericMenu%% &
(%%& '
)%%' (
;%%( )
List&& 
<&& 
MenuActionItem&& 
>&&  
items&&! &
=&&' (
new&&) ,
List&&- 1
<&&1 2
MenuActionItem&&2 @
>&&@ A
(&&A B
$num&&B E
)&&E F
;&&F G%
BuildNewTracksContextMenu'' %
(''% &
items''& +
,''+ ,
tracks''- 3
,''3 4
state''5 :
)'': ;
;''; <

.(( 
	BuildMenu(( #
(((# $
menu(($ (
,((( )
items((* /
)((/ 0
;((0 1
menu)) 
.)) 

()) 
)))  
;))  !
}** 	
public,, 
static,, 
void,, $
ShowNewTracksContextMenu,, 3
(,,3 4
ICollection,,4 ?
<,,? @

TrackAsset,,@ J
>,,J K
tracks,,L R
,,,R S
WindowState,,T _
state,,` e
,,,e f
Rect,,g k
rect,,l p
),,p q
{-- 	
var.. 
menu.. 
=.. 
new.. 
GenericMenu.. &
(..& '
)..' (
;..( )
List// 
<// 
MenuActionItem// 
>//  
items//! &
=//' (
new//) ,
List//- 1
<//1 2
MenuActionItem//2 @
>//@ A
(//A B
$num//B E
)//E F
;//F G%
BuildNewTracksContextMenu00 %
(00% &
items00& +
,00+ ,
tracks00- 3
,003 4
state005 :
)00: ;
;00; <

.11 
	BuildMenu11 #
(11# $
menu11$ (
,11( )
items11* /
)11/ 0
;110 1
menu22 
.22 
DropDown22 
(22 
rect22 
)22 
;22  
}33 	
public55 
static55 
void55  
ShowTrackContextMenu55 /
(55/ 0
Vector2550 7
?557 8

)55F G
{66 	
var77 
items77 
=77 
new77 
List77  
<77  !
MenuActionItem77! /
>77/ 0
(770 1
)771 2
;772 3
var88 
menu88 
=88 
new88 
GenericMenu88 &
(88& '
)88' (
;88( )!
BuildTrackContextMenu99 !
(99! "
items99" '
,99' (

)996 7
;997 8

.:: 
	BuildMenu:: #
(::# $
menu::$ (
,::( )
items::* /
)::/ 0
;::0 1
menu;; 
.;; 

(;; 
);;  
;;;  !
}<< 	
public>> 
static>> 
void>> 
ShowItemContextMenu>> .
(>>. /
Vector2>>/ 6

)>>D E
{?? 	
var@@ 
menu@@ 
=@@ 
new@@ 
GenericMenu@@ &
(@@& '
)@@' (
;@@( )
varAA 
itemsAA 
=AA 
newAA 
ListAA  
<AA  !
MenuActionItemAA! /
>AA/ 0
(AA0 1
)AA1 2
;AA2 3 
BuildItemContextMenuBB  
(BB  !
itemsBB! &
,BB& '

)BB5 6
;BB6 7

.CC 
	BuildMenuCC #
(CC# $
menuCC$ (
,CC( )
itemsCC* /
)CC/ 0
;CC0 1
menuDD 
.DD 

(DD 
)DD  
;DD  !
}EE 	
publicGG 
staticGG 
voidGG  
BuildItemContextMenuGG /
(GG/ 0
ListGG0 4
<GG4 5
MenuActionItemGG5 C
>GGC D
itemsGGE J
,GGJ K
Vector2GGL S

)GGa b
{HH 	

.II 
GetMenuEntriesII (
(II( )

.II6 7
TimelineActionsII7 F
,IIF G

,IIU V
itemsIIW \
)II\ ]
;II] ^

.JJ 
GetMenuEntriesJJ (
(JJ( )

.JJ6 7
ClipActionsJJ7 B
,JJB C
itemsJJD I
)JJI J
;JJJ K

.KK 
GetMenuEntriesKK (
(KK( )

.KK6 7

,KKD E
itemsKKF K
)KKK L
;KKL M
varMM 
clipsMM 
=MM 
TimelineEditorMM &
.MM& '

;MM4 5
ifNN 
(NN 
clipsNN 
.NN 
LengthNN 
>NN 
$numNN  
)NN  !!
AddMarkerMenuCommandsOO %
(OO% &
itemsOO& +
,OO+ ,
clipsOO- 2
.OO2 3
SelectOO3 9
(OO9 :
cOO: ;
=>OO< >
cOO? @
.OO@ A
parentTrackOOA L
)OOL M
.OOM N
DistinctOON V
(OOV W
)OOW X
.OOX Y
ToListOOY _
(OO_ `
)OO` a
,OOa b
TimelineHelpersOOc r
.OOr s
GetCandidateTime	OOs �
(
OO� �

OO� �
)
OO� �
)
OO� �
;
OO� �
}PP 	
publicRR 
staticRR 
voidRR %
BuildNewTracksContextMenuRR 4
(RR4 5
ListRR5 9
<RR9 :
MenuActionItemRR: H
>RRH I
	menuItemsRRJ S
,RRS T
ICollectionRRU `
<RR` a

TrackAssetRRa k
>RRk l
parentTracksRRm y
,RRy z
WindowState	RR{ �
state
RR� �
,
RR� �
string
RR� �
format
RR� �
=
RR� �
null
RR� �
)
RR� �
{SS 	
ifTT 
(TT 
parentTracksTT 
==TT 
nullTT  $
)TT$ %
parentTracksUU 
=UU 
newUU "

TrackAssetUU# -
[UU- .
$numUU. /
]UU/ 0
;UU0 1
ifWW 
(WW 
stringWW 
.WW 

(WW$ %
formatWW% +
)WW+ ,
)WW, -
formatXX 
=XX 
$strXX 
;XX 
var[[ 
title[[ 
=[[ 
string[[ 
.[[ 
Format[[ %
([[% &
format[[& ,
,[[, -
parentTracks[[. :
.[[: ;
Any[[; >
([[> ?
t[[? @
=>[[A C
t[[D E
!=[[F H
null[[I M
)[[M N
?[[O P
Styles[[Q W
.[[W X

:[[f g
Styles[[h n
.[[n o

trackGroup[[o y
)[[y z
;[[z {
var\\ 
	menuState\\ 
=\\ 
ActionValidity\\ *
.\\* +
Valid\\+ 0
;\\0 1
if]] 
(]] 
state]] 
.]] 
editSequence]] "
.]]" #

isReadOnly]]# -
)]]- .
	menuState^^ 
=^^ 
ActionValidity^^ *
.^^* +
Invalid^^+ 2
;^^2 3
if__ 
(__ 
parentTracks__ 
.__ 
Any__  
(__  !
)__! "
&&__# %
parentTracks__& 2
.__2 3
Any__3 6
(__6 7
t__7 8
=>__9 ;
t__< =
!=__> @
null__A E
&&__F H
t__I J
.__J K
lockedInHierarchy__K \
)__\ ]
)__] ^
	menuState`` 
=`` 
ActionValidity`` *
.``* +
Invalid``+ 2
;``2 3
GenericMenubb 
.bb 
MenuFunctionbb $
commandbb% ,
=bb- .
(bb/ 0
)bb0 1
=>bb2 4
{cc 
SelectionManagerdd  
.dd  !
Cleardd! &
(dd& '
)dd' (
;dd( )
ifee 
(ee 
parentTracksee  
.ee  !
Countee! &
==ee' )
$numee* +
)ee+ ,
	Selectionff 
.ff 
Addff !
(ff! "
TimelineHelpersff" 1
.ff1 2
CreateTrackff2 =
<ff= >

GroupTrackff> H
>ffH I
(ffI J
nullffJ N
,ffN O
titleffP U
)ffU V
)ffV W
;ffW X
foreachhh 
(hh 
varhh 
parentTrackhh (
inhh) +
parentTrackshh, 8
)hh8 9
	Selectionii 
.ii 
Addii !
(ii! "
TimelineHelpersii" 1
.ii1 2
CreateTrackii2 =
<ii= >

GroupTrackii> H
>iiH I
(iiI J
parentTrackiiJ U
,iiU V
titleiiW \
)ii\ ]
)ii] ^
;ii^ _
TimelineEditorkk 
.kk 
Refreshkk &
(kk& '

.kk4 5"
ContentsAddedOrRemovedkk5 K
)kkK L
;kkL M
}ll 
;ll
	menuItemsnn 
.nn 
Addnn 
(nn 
newoo 
MenuActionItemoo "
(oo" #
)oo# $
{pp 
categoryqq 
=qq 
stringqq %
.qq% &
Emptyqq& +
,qq+ ,
	entryNamerr 
=rr 
titlerr  %
,rr% &
isActiveInModess "
=ss# $
truess% )
,ss) *
prioritytt 
=tt 
MenuPrioritytt +
.tt+ ,
AddItemtt, 3
.tt3 4
addGrouptt4 <
,tt< =
stateuu 
=uu 
	menuStateuu %
,uu% &
	isCheckedvv 
=vv 
falsevv  %
,vv% &
callbackww 
=ww 
commandww &
}xx 
)yy 
;yy
var|| 
allTypes|| 
=|| 
TypeUtility|| &
.||& '

(||4 5
)||5 6
.||6 7
Where||7 <
(||< =
x||= >
=>||? A
x||B C
!=||D F
typeof||G M
(||M N

GroupTrack||N X
)||X Y
&&||Z \
!||] ^
TypeUtility||^ i
.||i j
IsHiddenInMenu||j x
(||x y
x||y z
)||z {
)||{ |
.||| }
ToList	||} �
(
||� �
)
||� �
;
||� �
int~~ 
builtInPriority~~ 
=~~  !
MenuPriority~~" .
.~~. /
AddItem~~/ 6
.~~6 7
addTrack~~7 ?
;~~? @
int 
customPriority 
=  
MenuPriority! -
.- .
AddItem. 5
.5 6
addCustomTrack6 D
;D E
foreach
�� 
(
�� 
var
�� 
	trackType
�� "
in
��# %
allTypes
��& .
)
��. /
{
�� 
var
�� 

�� !
=
��" #
	trackType
��$ -
;
��- .
command
�� 
=
�� 
(
�� 
)
�� 
=>
�� 
{
�� 
SelectionManager
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
if
�� 
(
�� 
parentTracks
�� $
.
��$ %
Count
��% *
==
��+ -
$num
��. /
)
��/ 0
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
TimelineHelpers
��- <
.
��< =
CreateTrack
��= H
(
��H I
(
��I J
Type
��J N
)
��N O

��O \
,
��\ ]
null
��^ b
)
��b c
)
��c d
;
��d e
foreach
�� 
(
�� 
var
��  
parentTrack
��! ,
in
��- /
parentTracks
��0 <
)
��< =
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
TimelineHelpers
��- <
.
��< =
CreateTrack
��= H
(
��H I
(
��I J
Type
��J N
)
��N O

��O \
,
��\ ]
parentTrack
��^ i
)
��i j
)
��j k
;
��k l
}
�� 
;
�� 
	menuItems
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
MenuActionItem
�� &
(
��& '
)
��' (
{
�� 
category
��  
=
��! "
TimelineHelpers
��# 2
.
��2 3"
GetTrackCategoryName
��3 G
(
��G H
	trackType
��H Q
)
��Q R
,
��R S
	entryName
�� !
=
��" #
string
��$ *
.
��* +
Format
��+ 1
(
��1 2
format
��2 8
,
��8 9
TimelineHelpers
��: I
.
��I J
GetTrackMenuName
��J Z
(
��Z [

��[ h
)
��h i
)
��i j
,
��j k
isActiveInMode
�� &
=
��' (
true
��) -
,
��- .
priority
��  
=
��! "
TypeUtility
��# .
.
��. /
	IsBuiltIn
��/ 8
(
��8 9
	trackType
��9 B
)
��B C
?
��D E
builtInPriority
��F U
++
��U W
:
��X Y
customPriority
��Z h
++
��h j
,
��j k
state
�� 
=
�� 
	menuState
��  )
,
��) *
callback
��  
=
��! "
command
��# *
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� *
BuildMarkerHeaderContextMenu
�� 7
(
��7 8
List
��8 <
<
��< =
MenuActionItem
��= K
>
��K L
menu
��M Q
,
��Q R
Vector2
��S Z
?
��Z [

��\ i
,
��i j
WindowState
��k v
state
��w |
)
��| }
{
�� 	

�� 
.
�� 
GetMenuEntries
�� (
(
��( )

��) 6
.
��6 7
TimelineActions
��7 F
,
��F G
null
��H L
,
��L M
menu
��N R
,
��R S

MenuFilter
��T ^
.
��^ _
MarkerHeader
��_ k
)
��k l
;
��l m
var
�� 
timeline
�� 
=
�� 
state
��  
.
��  !
editSequence
��! -
.
��- .
asset
��. 3
;
��3 4
var
�� 
time
�� 
=
�� 
TimelineHelpers
�� &
.
��& '
GetCandidateTime
��' 7
(
��7 8

��8 E
)
��E F
;
��F G
var
�� 
enabled
�� 
=
�� 
timeline
�� "
.
��" #
markerTrack
��# .
==
��/ 1
null
��2 6
||
��7 9
!
��: ;
timeline
��; C
.
��C D
markerTrack
��D O
.
��O P
lockedInHierarchy
��P a
;
��a b
var
�� 
addMarkerCommand
��  
=
��! "
new
��# &
Action
��' -
<
��- .
Type
��. 2
,
��2 3
Object
��4 :
>
��: ;
(
�� 
(
�� 
type
�� 
,
�� 
obj
�� 
)
�� 
=>
�� %
AddSingleMarkerCallback
�� 6
(
��6 7
type
��7 ;
,
��; <
time
��= A
,
��A B
timeline
��C K
,
��K L
state
��M R
.
��R S
editSequence
��S _
.
��_ `
director
��` h
,
��h i
obj
��j m
)
��m n
)
�� 
;
�� #
AddMarkerMenuCommands
�� !
(
��! "
menu
��" &
,
��& '
new
��( +

TrackAsset
��, 6
[
��6 7
]
��7 8
{
��9 :
timeline
��: B
.
��B C
markerTrack
��C N
}
��N O
,
��O P
addMarkerCommand
��Q a
,
��a b
enabled
��c j
)
��j k
;
��k l
}
�� 	
public
�� 
static
�� 
void
�� #
BuildTrackContextMenu
�� 0
(
��0 1
List
��1 5
<
��5 6
MenuActionItem
��6 D
>
��D E
items
��F K
,
��K L
Vector2
��M T
?
��T U

��V c
)
��c d
{
�� 	
var
�� 
tracks
�� 
=
�� 
SelectionManager
�� )
.
��) *
SelectedTracks
��* 8
(
��8 9
)
��9 :
.
��: ;
ToArray
��; B
(
��B C
)
��C D
;
��D E
if
�� 
(
�� 
tracks
�� 
.
�� 
Length
�� 
==
��  
$num
��! "
)
��" #
return
�� 
;
�� 

�� 
.
�� 
GetMenuEntries
�� (
(
��( )

��) 6
.
��6 7
TimelineActions
��7 F
,
��F G

��H U
,
��U V
items
��W \
)
��\ ]
;
��] ^

�� 
.
�� 
GetMenuEntries
�� (
(
��( )

��) 6
.
��6 7
TrackActions
��7 C
,
��C D
items
��E J
)
��J K
;
��K L%
AddLayeredTrackCommands
�� #
(
��# $
items
��$ )
,
��) *
tracks
��+ 1
)
��1 2
;
��2 3
var
�� 
first
�� 
=
�� 
tracks
�� 
.
�� 
First
�� $
(
��$ %
)
��% &
.
��& '
GetType
��' .
(
��. /
)
��/ 0
;
��0 1
var
�� 

allTheSame
�� 
=
�� 
tracks
�� #
.
��# $
All
��$ '
(
��' (
t
��( )
=>
��* ,
t
��- .
.
��. /
GetType
��/ 6
(
��6 7
)
��7 8
==
��9 ;
first
��< A
)
��A B
;
��B C
if
�� 
(
�� 

allTheSame
�� 
)
�� 
{
�� 
if
�� 
(
�� 
first
�� 
!=
�� 
typeof
�� #
(
��# $

GroupTrack
��$ .
)
��. /
)
��/ 0
{
�� 
var
�� 

�� %
=
��& '
TimelineHelpers
��( 7
.
��7 8
GetCandidateTime
��8 H
(
��H I

��I V
,
��V W
tracks
��X ^
)
��^ _
;
��_ `!
AddClipMenuCommands
�� '
(
��' (
items
��( -
,
��- .
tracks
��/ 5
,
��5 6

��7 D
)
��D E
;
��E F#
AddMarkerMenuCommands
�� )
(
��) *
items
��* /
,
��/ 0
tracks
��1 7
,
��7 8

��9 F
)
��F G
;
��G H
}
�� 
else
�� 
{
�� '
BuildNewTracksContextMenu
�� -
(
��- .
items
��. 3
,
��3 4
tracks
��5 ;
,
��; <
TimelineWindow
��= K
.
��K L
instance
��L T
.
��T U
state
��U Z
,
��Z [
Styles
��\ b
.
��b c
addItemTemplate
��c r
)
��r s
;
��s t
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� %
AddLayeredTrackCommands
�� +
(
��+ ,
List
��, 0
<
��0 1
MenuActionItem
��1 ?
>
��? @
	menuItems
��A J
,
��J K
ICollection
��L W
<
��W X

TrackAsset
��X b
>
��b c
tracks
��d j
)
��j k
{
�� 	
if
�� 
(
�� 
tracks
�� 
.
�� 
Count
�� 
==
�� 
$num
��  !
)
��! "
return
�� 
;
�� 
var
�� 
layeredType
�� 
=
�� 
tracks
�� $
.
��$ %
First
��% *
(
��* +
)
��+ ,
.
��, -
GetType
��- 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
layeredType
�� 
==
�� 
typeof
�� %
(
��% &
AnimationTrack
��& 4
)
��4 5
)
��5 6
return
�� 
;
�� 
if
�� 
(
�� 
!
�� 
typeof
�� 
(
�� 
UnityEngine
�� #
.
��# $
Timeline
��$ ,
.
��, -

ILayerable
��- 7
)
��7 8
.
��8 9
IsAssignableFrom
��9 I
(
��I J
layeredType
��J U
)
��U V
)
��V W
return
�� 
;
�� 
if
�� 
(
�� 
tracks
�� 
.
�� 
Any
�� 
(
�� 
t
�� 
=>
�� 
t
��  !
.
��! "
GetType
��" )
(
��) *
)
��* +
!=
��, .
layeredType
��/ :
)
��: ;
)
��; <
return
�� 
;
�� 
if
�� 
(
�� 
tracks
�� 
.
�� 
Any
�� 
(
�� 
t
�� 
=>
�� 
t
��  !
.
��! "

isSubTrack
��" ,
)
��, -
)
��- .
return
�� 
;
�� 
var
�� 
enabled
�� 
=
�� 
tracks
��  
.
��  !
All
��! $
(
��$ %
t
��% &
=>
��' )
t
��* +
!=
��, .
null
��/ 3
&&
��4 6
!
��7 8
t
��8 9
.
��9 :
lockedInHierarchy
��: K
)
��K L
&&
��M O
!
��P Q
TimelineWindow
��Q _
.
��_ `
instance
��` h
.
��h i
state
��i n
.
��n o
editSequence
��o {
.
��{ |

isReadOnly��| �
;��� �
int
�� 
priority
�� 
=
�� 
MenuPriority
�� '
.
��' (
AddTrackMenu
��( 4
.
��4 5

��5 B
;
��B C
GenericMenu
�� 
.
�� 
MenuFunction
�� $
menuCallback
��% 1
=
��2 3
(
��4 5
)
��5 6
=>
��7 9
{
�� 
foreach
�� 
(
�� 
var
�� 
track
�� "
in
��# %
tracks
��& ,
)
��, -
TimelineHelpers
�� #
.
��# $
CreateTrack
��$ /
(
��/ 0
layeredType
��0 ;
,
��; <
track
��= B
,
��B C
string
��D J
.
��J K
Format
��K Q
(
��Q R
Styles
��R X
.
��X Y
	layerName
��Y b
,
��b c
track
��d i
.
��i j
GetChildTracks
��j x
(
��x y
)
��y z
.
��z {
Count��{ �
(��� �
)��� �
+��� �
$num��� �
)��� �
)��� �
;��� �
}
�� 
;
��
var
�� 
	entryName
�� 
=
�� 
Styles
�� "
.
��" #

��# 0
;
��0 1
	menuItems
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
MenuActionItem
�� "
(
��" #
)
��# $
{
�� 
category
�� 
=
�� 
string
�� %
.
��% &
Empty
��& +
,
��+ ,
	entryName
�� 
=
�� 
	entryName
��  )
,
��) *
isActiveInMode
�� "
=
��# $
true
��% )
,
��) *
priority
�� 
=
�� 
priority
�� '
++
��' )
,
��) *
state
�� 
=
�� 
enabled
�� #
?
��$ %
ActionValidity
��& 4
.
��4 5
Valid
��5 :
:
��; <
ActionValidity
��= K
.
��K L
Invalid
��L S
,
��S T
callback
�� 
=
�� 
menuCallback
�� +
}
�� 
)
�� 
;
��
}
�� 	
static
�� 
void
�� !
AddClipMenuCommands
�� '
(
��' (
List
��( ,
<
��, -
MenuActionItem
��- ;
>
��; <
	menuItems
��= F
,
��F G
ICollection
��H S
<
��S T

TrackAsset
��T ^
>
��^ _
tracks
��` f
,
��f g
double
��h n

��o |
)
��| }
{
�� 	
if
�� 
(
�� 
!
�� 
tracks
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
;
�� 
var
�� 

trackAsset
�� 
=
�� 
tracks
�� #
.
��# $
First
��$ )
(
��) *
)
��* +
;
��+ ,
var
�� 
	trackType
�� 
=
�� 

trackAsset
�� &
.
��& '
GetType
��' .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
tracks
�� 
.
�� 
Any
�� 
(
�� 
t
�� 
=>
�� 
t
��  !
.
��! "
GetType
��" )
(
��) *
)
��* +
!=
��, .
	trackType
��/ 8
)
��8 9
)
��9 :
return
�� 
;
�� 
var
�� 
enabled
�� 
=
�� 
tracks
��  
.
��  !
All
��! $
(
��$ %
t
��% &
=>
��' )
t
��* +
!=
��, .
null
��/ 3
&&
��4 6
!
��7 8
t
��8 9
.
��9 :
lockedInHierarchy
��: K
)
��K L
&&
��M O
!
��P Q
TimelineWindow
��Q _
.
��_ `
instance
��` h
.
��h i
state
��i n
.
��n o
editSequence
��o {
.
��{ |

isReadOnly��| �
;��� �
var
�� 

assetTypes
�� 
=
�� 
TypeUtility
�� (
.
��( )-
GetPlayableAssetsHandledByTrack
��) H
(
��H I
	trackType
��I R
)
��R S
;
��S T
var
�� 
visibleAssetTypes
�� !
=
��" #
TypeUtility
��$ /
.
��/ 04
&GetVisiblePlayableAssetsHandledByTrack
��0 V
(
��V W
	trackType
��W `
)
��` a
;
��a b
var
�� !
commandNameTemplate
�� #
=
��$ %

assetTypes
��& 0
.
��0 1
Count
��1 6
(
��6 7
)
��7 8
==
��9 ;
$num
��< =
?
��> ?
Styles
��@ F
.
��F G,
addSingleItemFromAssetTemplate
��G e
:
��f g
Styles
��h n
.
��n o'
addItemFromAssetTemplate��o �
;��� �
int
�� 
builtInPriority
�� 
=
��  !
MenuPriority
��" .
.
��. /
AddItem
��/ 6
.
��6 7
addClip
��7 >
;
��> ?
int
�� 
customPriority
�� 
=
��  
MenuPriority
��! -
.
��- .
AddItem
��. 5
.
��5 6

��6 C
;
��C D
foreach
�� 
(
�� 
var
�� 
	assetType
�� "
in
��# %

assetTypes
��& 0
)
��0 1
{
�� 
var
�� 

�� !
=
��" #
	assetType
��$ -
;
��- .
var
�� 
category
�� 
=
�� 
TimelineHelpers
�� .
.
��. /!
GetItemCategoryName
��/ B
(
��B C
	assetType
��C L
)
��L M
;
��M N
Action
�� 
<
�� 
Object
�� 
>
�� 
onObjectChanged
�� .
=
��/ 0
obj
��1 4
=>
��5 7
{
�� 
if
�� 
(
�� 
obj
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
foreach
�� 
(
��  !
var
��! $
t
��% &
in
��' )
tracks
��* 0
)
��0 1
{
�� 
TimelineHelpers
�� +
.
��+ ,
CreateClipOnTrack
��, =
(
��= >

��> K
,
��K L
obj
��M P
,
��P Q
t
��R S
,
��S T

��U b
)
��b c
;
��c d
}
�� 
}
�� 
}
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
objectReference
�� ,
in
��- /
TypeUtility
��0 ;
.
��; <%
ObjectReferencesForType
��< S
(
��S T
	assetType
��T ]
)
��] ^
)
��^ _
{
�� 
var
�� 
isSceneReference
�� (
=
��) *
objectReference
��+ :
.
��: ;
isSceneReference
��; K
;
��K L
var
�� 
dataType
��  
=
��! "
objectReference
��# 2
.
��2 3
type
��3 7
;
��7 8
GenericMenu
�� 
.
��  
MenuFunction
��  ,
menuCallback
��- 9
=
��: ;
(
��< =
)
��= >
=>
��? A
{
�� 
ObjectSelector
�� &
.
��& '
get
��' *
.
��* +
Show
��+ /
(
��/ 0
null
��0 4
,
��4 5
dataType
��6 >
,
��> ?
null
��@ D
,
��D E
isSceneReference
��F V
,
��V W
null
��X \
,
��\ ]
(
��^ _
obj
��_ b
)
��b c
=>
��d f
onObjectChanged
��g v
(
��v w
obj
��w z
)
��z {
,
��{ |
null��} �
)��� �
;��� �
ObjectSelector
�� &
.
��& '
get
��' *
.
��* +
titleContent
��+ 7
=
��8 9
EditorGUIUtility
��: J
.
��J K

��K X
(
��X Y
string
��Y _
.
��_ `
Format
��` f
(
��f g
Styles
��g m
.
��m n#
typeSelectorTemplate��n �
,��� �
TypeUtility��� �
.��� �
GetDisplayName��� �
(��� �
dataType��� �
)��� �
)��� �
)��� �
;��� �
}
�� 
;
�� 
	menuItems
�� 
.
�� 
Add
�� !
(
��! "
new
�� 
MenuActionItem
�� *
(
��* +
)
��+ ,
{
�� 
category
�� $
=
��% &
category
��' /
,
��/ 0
	entryName
�� %
=
��& '
string
��( .
.
��. /
Format
��/ 5
(
��5 6!
commandNameTemplate
��6 I
,
��I J
TypeUtility
��K V
.
��V W
GetDisplayName
��W e
(
��e f
	assetType
��f o
)
��o p
,
��p q
TypeUtility
��r }
.
��} ~
GetDisplayName��~ �
(��� �
objectReference��� �
.��� �
type��� �
)��� �
)��� �
,��� �
isActiveInMode
�� *
=
��+ ,
true
��- 1
,
��1 2
priority
�� $
=
��% &
TypeUtility
��' 2
.
��2 3
	IsBuiltIn
��3 <
(
��< =
	assetType
��= F
)
��F G
?
��H I
builtInPriority
��J Y
++
��Y [
:
��\ ]
customPriority
��^ l
++
��l n
,
��n o
state
�� !
=
��" #
enabled
��$ +
?
��, -
ActionValidity
��. <
.
��< =
Valid
��= B
:
��C D
ActionValidity
��E S
.
��S T
Invalid
��T [
,
��[ \
callback
�� $
=
��% &
menuCallback
��' 3
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
	assetType
�� "
in
��# %
visibleAssetTypes
��& 7
)
��7 8
{
�� 
var
�� 

�� !
=
��" #
	assetType
��$ -
;
��- .
var
�� 
category
�� 
=
�� 
TimelineHelpers
�� .
.
��. /!
GetItemCategoryName
��/ B
(
��B C
	assetType
��C L
)
��L M
;
��M N
var
�� 
commandName
�� 
=
��  !
string
��" (
.
��( )
Format
��) /
(
��/ 0
Styles
��0 6
.
��6 7
addItemTemplate
��7 F
,
��F G
TypeUtility
��H S
.
��S T
GetDisplayName
��T b
(
��b c
	assetType
��c l
)
��l m
)
��m n
;
��n o
GenericMenu
�� 
.
�� 
MenuFunction
�� (
command
��) 0
=
��1 2
(
��3 4
)
��4 5
=>
��6 8
{
�� 
foreach
�� 
(
�� 
var
��  
t
��! "
in
��# %
tracks
��& ,
)
��, -
{
�� 
TimelineHelpers
�� '
.
��' (
CreateClipOnTrack
��( 9
(
��9 :

��: G
,
��G H
t
��I J
,
��J K

��L Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
;
�� 
	menuItems
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
MenuActionItem
�� &
(
��& '
)
��' (
{
�� 
category
��  
=
��! "
category
��# +
,
��+ ,
	entryName
�� !
=
��" #
commandName
��$ /
,
��/ 0
isActiveInMode
�� &
=
��' (
true
��) -
,
��- .
priority
��  
=
��! "
TypeUtility
��# .
.
��. /
	IsBuiltIn
��/ 8
(
��8 9

��9 F
)
��F G
?
��H I
builtInPriority
��J Y
++
��Y [
:
��\ ]
customPriority
��^ l
++
��l n
,
��n o
state
�� 
=
�� 
enabled
��  '
?
��( )
ActionValidity
��* 8
.
��8 9
Valid
��9 >
:
��? @
ActionValidity
��A O
.
��O P
Invalid
��P W
,
��W X
callback
��  
=
��! "
command
��# *
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
static
�� 
void
�� #
AddMarkerMenuCommands
�� )
(
��) *
List
��* .
<
��. /
MenuActionItem
��/ =
>
��= >
menu
��? C
,
��C D
IEnumerable
��E P
<
��P Q
Type
��Q U
>
��U V
markerTypes
��W b
,
��b c
Action
��d j
<
��j k
Type
��k o
,
��o p
Object
��q w
>
��w x
addMarkerCommand��y �
,��� �
bool��� �
enabled��� �
)��� �
{
�� 	
int
�� 
builtInPriority
�� 
=
��  !
MenuPriority
��" .
.
��. /
AddItem
��/ 6
.
��6 7
	addMarker
��7 @
;
��@ A
int
�� 
customPriority
�� 
=
��  
MenuPriority
��! -
.
��- .
AddItem
��. 5
.
��5 6
addCustomMarker
��6 E
;
��E F
foreach
�� 
(
�� 
var
�� 

markerType
�� #
in
��$ &
markerTypes
��' 2
)
��2 3
{
�� 
var
�� 
markerItemType
�� "
=
��# $

markerType
��% /
;
��/ 0
string
�� 
category
�� 
=
��  !
TimelineHelpers
��" 1
.
��1 2!
GetItemCategoryName
��2 E
(
��E F
markerItemType
��F T
)
��T U
;
��U V
menu
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
MenuActionItem
�� &
(
��& '
)
��' (
{
�� 
category
��  
=
��! "
category
��# +
,
��+ ,
	entryName
�� !
=
��" #
string
��$ *
.
��* +
Format
��+ 1
(
��1 2
Styles
��2 8
.
��8 9
addItemTemplate
��9 H
,
��H I
TypeUtility
��J U
.
��U V
GetDisplayName
��V d
(
��d e

markerType
��e o
)
��o p
)
��p q
,
��q r
isActiveInMode
�� &
=
��' (
true
��) -
,
��- .
priority
��  
=
��! "
TypeUtility
��# .
.
��. /
	IsBuiltIn
��/ 8
(
��8 9

markerType
��9 C
)
��C D
?
��E F
builtInPriority
��G V
++
��V X
:
��Y Z
customPriority
��[ i
++
��i k
,
��k l
state
�� 
=
�� 
enabled
��  '
?
��( )
ActionValidity
��* 8
.
��8 9
Valid
��9 >
:
��? @
ActionValidity
��A O
.
��O P
Invalid
��P W
,
��W X
callback
��  
=
��! "
(
��# $
)
��$ %
=>
��& (
addMarkerCommand
��) 9
(
��9 :
markerItemType
��: H
,
��H I
null
��J N
)
��N O
}
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
objectReference
�� ,
in
��- /
TypeUtility
��0 ;
.
��; <%
ObjectReferencesForType
��< S
(
��S T

markerType
��T ^
)
��^ _
)
��_ `
{
�� 
var
�� 
isSceneReference
�� (
=
��) *
objectReference
��+ :
.
��: ;
isSceneReference
��; K
;
��K L
GenericMenu
�� 
.
��  
MenuFunction
��  ,
menuCallback
��- 9
=
��: ;
(
��< =
)
��= >
=>
��? A
{
�� 
Type
�� 

�� *
=
��+ ,
objectReference
��- <
.
��< =
type
��= A
;
��A B
ObjectSelector
�� &
.
��& '
get
��' *
.
��* +
titleContent
��+ 7
=
��8 9
EditorGUIUtility
��: J
.
��J K

��K X
(
��X Y
string
��Y _
.
��_ `
Format
��` f
(
��f g
Styles
��g m
.
��m n#
typeSelectorTemplate��n �
,��� �
TypeUtility��� �
.��� �
GetDisplayName��� �
(��� �

)��� �
)��� �
)��� �
;��� �
ObjectSelector
�� &
.
��& '
get
��' *
.
��* +
Show
��+ /
(
��/ 0
null
��0 4
,
��4 5

��6 C
,
��C D
null
��E I
,
��I J
isSceneReference
��K [
,
��[ \
null
��] a
,
��a b
obj
��c f
=>
��g i
{
�� 
if
�� 
(
��  
obj
��  #
!=
��$ &
null
��' +
)
��+ ,
addMarkerCommand
��  0
(
��0 1
markerItemType
��1 ?
,
��? @
obj
��A D
)
��D E
;
��E F
}
�� 
,
�� 
null
�� 
)
��  
;
��  !
}
�� 
;
�� 
menu
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
MenuActionItem
�� *
{
�� 
category
�� $
=
��% &
TimelineHelpers
��' 6
.
��6 7!
GetItemCategoryName
��7 J
(
��J K
markerItemType
��K Y
)
��Y Z
,
��Z [
	entryName
�� %
=
��& '
string
��( .
.
��. /
Format
��/ 5
(
��5 6
Styles
��6 <
.
��< =&
addItemFromAssetTemplate
��= U
,
��U V
TypeUtility
��W b
.
��b c
GetDisplayName
��c q
(
��q r

markerType
��r |
)
��| }
,
��} ~
TypeUtility�� �
.��� �
GetDisplayName��� �
(��� �
objectReference��� �
.��� �
type��� �
)��� �
)��� �
,��� �
isActiveInMode
�� *
=
��+ ,
true
��- 1
,
��1 2
priority
�� $
=
��% &
TypeUtility
��' 2
.
��2 3
	IsBuiltIn
��3 <
(
��< =

markerType
��= G
)
��G H
?
��I J
builtInPriority
��K Z
++
��Z \
:
��] ^
customPriority
��_ m
++
��m o
,
��o p
state
�� !
=
��" #
enabled
��$ +
?
��, -
ActionValidity
��. <
.
��< =
Valid
��= B
:
��C D
ActionValidity
��E S
.
��S T
Invalid
��T [
,
��[ \
callback
�� $
=
��% &
menuCallback
��' 3
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� #
AddMarkerMenuCommands
�� )
(
��) *
List
��* .
<
��. /
MenuActionItem
��/ =
>
��= >
	menuItems
��? H
,
��H I
ICollection
��J U
<
��U V

TrackAsset
��V `
>
��` a
tracks
��b h
,
��h i
double
��j p

��q ~
)
��~ 
{
�� 	
if
�� 
(
�� 
tracks
�� 
.
�� 
Count
�� 
==
�� 
$num
��  !
)
��! "
return
�� 
;
�� 
var
�� 
enabled
�� 
=
�� 
tracks
��  
.
��  !
All
��! $
(
��$ %
t
��% &
=>
��' )
!
��* +
t
��+ ,
.
��, -
lockedInHierarchy
��- >
)
��> ?
&&
��@ B
!
��C D
TimelineWindow
��D R
.
��R S
instance
��S [
.
��[ \
state
��\ a
.
��a b
editSequence
��b n
.
��n o

isReadOnly
��o y
;
��y z
var
�� 
addMarkerCommand
��  
=
��! "
new
��# &
Action
��' -
<
��- .
Type
��. 2
,
��2 3
Object
��4 :
>
��: ;
(
��; <
(
��< =
type
��= A
,
��A B
obj
��C F
)
��F G
=>
��H J 
AddMarkersCallback
��K ]
(
��] ^
tracks
��^ d
,
��d e
type
��f j
,
��j k

��l y
,
��y z
obj
��{ ~
)
��~ 
)�� �
;��� �#
AddMarkerMenuCommands
�� !
(
��! "
	menuItems
��" +
,
��+ ,
tracks
��- 3
,
��3 4
addMarkerCommand
��5 E
,
��E F
enabled
��G N
)
��N O
;
��O P
}
�� 	
static
�� 
void
�� #
AddMarkerMenuCommands
�� )
(
��) *
List
��* .
<
��. /
MenuActionItem
��/ =
>
��= >
	menuItems
��? H
,
��H I
ICollection
��J U
<
��U V

TrackAsset
��V `
>
��` a
tracks
��b h
,
��h i
Action
��j p
<
��p q
Type
��q u
,
��u v
Object
��w }
>
��} ~
command�� �
,��� �
bool��� �
enabled��� �
)��� �
{
�� 	
var
�� 
markerTypes
�� 
=
�� 
TypeUtility
�� )
.
��) *#
GetBuiltInMarkerTypes
��* ?
(
��? @
)
��@ A
.
��A B
Union
��B G
(
��G H
TypeUtility
��H S
.
��S T 
GetUserMarkerTypes
��T f
(
��f g
)
��g h
)
��h i
;
��i j
if
�� 
(
�� 
tracks
�� 
!=
�� 
null
�� 
)
�� 
markerTypes
�� 
=
�� 
markerTypes
�� )
.
��) *
Where
��* /
(
��/ 0
x
��0 1
=>
��2 4
tracks
��5 ;
.
��; <
All
��< ?
(
��? @
track
��@ E
=>
��F H
(
��I J
track
��J O
==
��P R
null
��S W
)
��W X
||
��Y [
TypeUtility
��\ g
.
��g h)
DoesTrackSupportMarkerType��h �
(��� �
track��� �
,��� �
x��� �
)��� �
)��� �
)��� �
;��� �#
AddMarkerMenuCommands
�� !
(
��! "
	menuItems
��" +
,
��+ ,
markerTypes
��- 8
,
��8 9
command
��: A
,
��A B
enabled
��C J
)
��J K
;
��K L
}
�� 	
static
�� 
void
��  
AddMarkersCallback
�� &
(
��& '
ICollection
��' 2
<
��2 3

TrackAsset
��3 =
>
��= >
targets
��? F
,
��F G
Type
��H L

markerType
��M W
,
��W X
double
��Y _
time
��` d
,
��d e
Object
��f l
obj
��m p
)
��p q
{
�� 	
SelectionManager
�� 
.
�� 
Clear
�� "
(
��" #
)
��# $
;
��$ %
foreach
�� 
(
�� 
var
�� 
target
�� 
in
��  "
targets
��# *
)
��* +
{
�� 
var
�� 
marker
�� 
=
�� 
TimelineHelpers
�� ,
.
��, -!
CreateMarkerOnTrack
��- @
(
��@ A

markerType
��A K
,
��K L
obj
��M P
,
��P Q
target
��R X
,
��X Y
time
��Z ^
)
��^ _
;
��_ `
SelectionManager
��  
.
��  !
Add
��! $
(
��$ %
marker
��% +
)
��+ ,
;
��, -
}
�� 
TimelineEditor
�� 
.
�� 
Refresh
�� "
(
��" #

��# 0
.
��0 1$
ContentsAddedOrRemoved
��1 G
)
��G H
;
��H I
}
�� 	
static
�� 
void
�� %
AddSingleMarkerCallback
�� +
(
��+ ,
Type
��, 0

markerType
��1 ;
,
��; <
double
��= C
time
��D H
,
��H I

��J W
timeline
��X `
,
��` a
PlayableDirector
��b r
director
��s {
,
��{ |
Object��} � 
assignableObject��� �
)��� �
{
�� 	
timeline
�� 
.
�� 
CreateMarkerTrack
�� &
(
��& '
)
��' (
;
��( )
var
�� 
markerTrack
�� 
=
�� 
timeline
�� &
.
��& '
markerTrack
��' 2
;
��2 3
SelectionManager
�� 
.
�� 
Clear
�� "
(
��" #
)
��# $
;
��$ %
var
�� 
marker
�� 
=
�� 
TimelineHelpers
�� (
.
��( )!
CreateMarkerOnTrack
��) <
(
��< =

markerType
��= G
,
��G H
assignableObject
��I Y
,
��Y Z
markerTrack
��[ f
,
��f g
time
��h l
)
��l m
;
��m n
SelectionManager
�� 
.
�� 
Add
��  
(
��  !
marker
��! '
)
��' (
;
��( )
if
�� 
(
�� 
typeof
�� 
(
�� 

�� $
)
��$ %
.
��% &
IsAssignableFrom
��& 6
(
��6 7

markerType
��7 A
)
��A B
&&
��C E
director
��F N
!=
��O Q
null
��R V
)
��V W
{
�� 
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  $
&&
��% '
director
��( 0
.
��0 1
GetGenericBinding
��1 B
(
��B C
markerTrack
��C N
)
��N O
==
��P R
null
��S W
)
��W X
director
�� 
.
�� 
SetGenericBinding
�� .
(
��. /
markerTrack
��/ :
,
��: ;
director
��< D
.
��D E

gameObject
��E O
)
��O P
;
��P Q
}
�� 
TimelineEditor
�� 
.
�� 
Refresh
�� "
(
��" #

��# 0
.
��0 1$
ContentsAddedOrRemoved
��1 G
)
��G H
;
��H I
}
�� 	
}
�� 
}�� �o
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Signals\TreeView\SignalReceiverTreeView.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Signals &
{ 
class		 	"
SignalReceiverTreeView		
  
:		! "
TreeView		# +
{

 
public 
bool 
dirty 
{ 
private #
get$ '
;' (
set) ,
;, -
}. /
SerializedProperty
signals
{
get
;
set
;
}
SerializedProperty 
events !
{" #
get$ '
;' (
set) ,
;, -
}. /
readonly 
SignalReceiver 
m_Target  (
;( )
const 
float 
k_VerticalPadding %
=& '
$num( )
;) *
const 
float 
k_HorizontalPadding '
=( )
$num* +
;+ ,
public "
SignalReceiverTreeView %
(% &

state4 9
,9 :
MultiColumnHeader; L
multiColumnHeaderM ^
,^ _
SignalReceiver` n
receivero w
,w x
SerializedObject	y �
serializedObject
� �
)
� �
: 
base 
( 
state 
, 
multiColumnHeader +
)+ ,
{ 	
m_Target 
= 
receiver 
;  

= 
true  
;  !#
SetSerializedProperties #
(# $
serializedObject$ 4
)4 5
;5 6#
getNewSelectionOverride #
=$ %
(& '
item' +
,+ ,
	selection- 6
,6 7
shift8 =
)= >
=>? A
newB E
ListF J
<J K
intK N
>N O
(O P
)P Q
;Q R
} 	
SignalAsset 
signalAssetContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
readonlySignals #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public!! 
void!! 
SetSignalContext!! $
(!!$ %
SignalAsset!!% 0
assetContext!!1 =
=!!> ?
null!!@ D
)!!D E
{"" 	
signalAssetContext## 
=##  
assetContext##! -
;##- .
dirty$$ 
=$$ 
true$$ 
;$$ 
}%% 	
void'' #
SetSerializedProperties''
(''$ %
SerializedObject''% 5
serializedObject''6 F
)''F G
{(( 	
signals)) 
=)) !
SignalReceiverUtility)) +
.))+ ,
FindSignalsProperty)), ?
())? @
serializedObject))@ P
)))P Q
;))Q R
events** 
=** !
SignalReceiverUtility** *
.*** +
FindEventsProperty**+ =
(**= >
serializedObject**> N
)**N O
;**O P
Reload++ 
(++ 
)++ 
;++ 
},, 	
public.. 
void.. 
Draw.. 
(.. 
).. 
{// 	
var00 
rect00 
=00 
EditorGUILayout00 &
.00& '
GetControlRect00' 5
(005 6
true006 :
,00: ;
GetTotalHeight00< J
(00J K
)00K L
)00L M
;00M N
OnGUI11 
(11 
rect11 
)11 
;11 
}22 	
public44 
void44 
RefreshIfDirty44 "
(44" #
)44# $
{55 	
var66 %
signalsListSizeHasChanged66 )
=66* +
signals66, 3
.663 4
	arraySize664 =
!=66> @
GetRows66A H
(66H I
)66I J
.66J K
Count66K P
;66P Q
if77 
(77 
dirty77 
||77 %
signalsListSizeHasChanged77 2
)772 3
Reload88 
(88 
)88 
;88 
dirty99 
=99 
false99 
;99 
}:: 	
public<< 
static<< "
MultiColumnHeaderState<< ,
.<<, -
Column<<- 3
[<<3 4
]<<4 5

GetColumns<<6 @
(<<@ A
)<<A B
{== 	
return>> 
new>> 
[>> 
]>> 
{?? 
new@@ "
MultiColumnHeaderState@@ *
.@@* +
Column@@+ 1
{AA 

=BB" #
EditorGUIUtilityBB$ 4
.BB4 5

(BBB C
$strBBC K
)BBK L
,BBL M
contextMenuTextCC #
=CC$ %
$strCC& (
,CC( )
headerTextAlignmentDD '
=DD( )

.DD7 8
CenterDD8 >
,DD> ?
widthEE 
=EE 
$numEE 
,EE 
minWidthEE  (
=EE) *
$numEE+ -
,EE- .

autoResizeFF 
=FF  
trueFF! %
,FF% &!
allowToggleVisibilityGG )
=GG* +
falseGG, 1
,GG1 2
canSortHH 
=HH 
falseHH #
}II 
,II 
newJJ "
MultiColumnHeaderStateJJ *
.JJ* +
ColumnJJ+ 1
{KK 

=LL" #
EditorGUIUtilityLL$ 4
.LL4 5

(LLB C
$strLLC M
)LLM N
,LLN O
contextMenuTextMM #
=MM$ %
$strMM& (
,MM( )
headerTextAlignmentNN '
=NN( )

.NN7 8
CenterNN8 >
,NN> ?
widthOO 
=OO 
$numOO 
,OO  
minWidthOO! )
=OO* +
$numOO, /
,OO/ 0

autoResizePP 
=PP  
truePP! %
,PP% &!
allowToggleVisibilityQQ )
=QQ* +
falseQQ, 1
,QQ1 2
canSortRR 
=RR 
falseRR #
}SS 
}TT 
;TT
}UU 	
	protectedWW 
overrideWW 
TreeViewItemWW '
	BuildRootWW( 1
(WW1 2
)WW2 3
{XX 	
varYY 
rootYY 
=YY 
newYY 
TreeViewItemYY '
(YY' (
-YY( )
$numYY) *
,YY* +
-YY, -
$numYY- .
)YY. /
{YY0 1
childrenYY2 :
=YY; <
newYY= @
ListYYA E
<YYE F
TreeViewItemYYF R
>YYR S
(YYS T
)YYT U
}YYV W
;YYW X
var[[ 

matchingId[[ 
=[[ 
signalAssetContext[[ /
!=[[0 2
null[[3 7
&&[[8 :
readonlySignals[[; J
?[[K L
FindIdForSignal[[M \
([[\ ]
signals[[] d
,[[d e
signalAssetContext[[f x
)[[x y
:[[z {
-[[| }
$num[[} ~
;[[~ 
if\\ 
(\\ 

matchingId\\ 
>=\\ 
$num\\ 
)\\  
AddItem]] 
(]] 
root]] 
,]] 

matchingId]] (
)]]( )
;]]) *
for__ 
(__ 
var__ 
i__ 
=__ 
$num__ 
;__ 
i__ 
<__ 
signals__  '
.__' (
	arraySize__( 1
;__1 2
++__3 5
i__5 6
)__6 7
{`` 
ifaa 
(aa 
iaa 
==aa 

matchingIdaa #
)aa# $
continueaa% -
;aa- .
AddItembb 
(bb 
rootbb 
,bb 
ibb 
,bb  
!bb! "
readonlySignalsbb" 1
)bb1 2
;bb2 3
}cc 
returnee 
rootee 
;ee 
}ff 	
	protectedhh 
overridehh 
voidhh 
RowGUIhh  &
(hh& '

RowGUIArgshh' 1
argshh2 6
)hh6 7
{ii 	
varjj 
itemjj 
=jj 
(jj 
SignalReceiverItemjj *
)jj* +
argsjj+ /
.jj/ 0
itemjj0 4
;jj4 5
forkk 
(kk 
varkk 
ikk 
=kk 
$numkk 
;kk 
ikk 
<kk 
argskk  $
.kk$ % 
GetNumVisibleColumnskk% 9
(kk9 :
)kk: ;
;kk; <
++kk= ?
ikk? @
)kk@ A
{ll 
varmm 
rectmm 
=mm 
argsmm 
.mm  
GetCellRectmm  +
(mm+ ,
imm, -
)mm- .
;mm. /
rectnn 
.nn 
ynn 
+=nn 
k_VerticalPaddingnn +
;nn+ ,
itemoo 
.oo 
Drawoo 
(oo 
rectoo 
,oo 
argsoo  $
.oo$ %
	GetColumnoo% .
(oo. /
ioo/ 0
)oo0 1
,oo1 2
argsoo3 7
.oo7 8
rowoo8 ;
,oo; <
k_HorizontalPaddingoo= P
,ooP Q
m_TargetooR Z
)ooZ [
;oo[ \
}pp 
}qq 	
	protectedss 
overridess 
floatss  
GetCustomRowHeightss! 3
(ss3 4
intss4 7
rowss8 ;
,ss; <
TreeViewItemss= I
treeItemssJ R
)ssR S
{tt 	
varuu 
itemuu 
=uu 
treeItemuu 
asuu  "
SignalReceiverItemuu# 5
;uu5 6
returnvv 
itemvv 
.vv 
	GetHeightvv !
(vv! "
)vv" #
+vv$ %
k_VerticalPaddingvv& 7
;vv7 8
}ww 	
voidyy 
AddItemyy
(yy 
TreeViewItemyy !
rootyy" &
,yy& '
intyy( +
idyy, .
,yy. /
boolyy0 4
enabledyy5 <
=yy= >
trueyy? C
)yyC D
{zz 	
var{{ 
signal{{ 
={{ 
signals{{  
.{{  !"
GetArrayElementAtIndex{{! 7
({{7 8
id{{8 :
){{: ;
;{{; <
var|| 
evt|| 
=|| 
events|| 
.|| "
GetArrayElementAtIndex|| 3
(||3 4
id||4 6
)||6 7
;||7 8
root}} 
.}} 
children}} 
.}} 
Add}} 
(}} 
new}} !
SignalReceiverItem}}" 4
(}}4 5
signal}}5 ;
,}}; <
evt}}= @
,}}@ A
id}}B D
,}}D E
readonlySignals}}F U
,}}U V
enabled}}W ^
,}}^ _
this}}` d
)}}d e
)}}e f
;}}f g
}~~ 	
float
�� 
GetTotalHeight
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
height
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  
GetRows
��! (
(
��( )
)
��) *
)
��* +
{
�� 
var
�� 
signalListItem
�� "
=
��# $
item
��% )
as
��* , 
SignalReceiverItem
��- ?
;
��? @
height
�� 
+=
�� 
signalListItem
�� (
.
��( )
	GetHeight
��) 2
(
��2 3
)
��3 4
+
��5 6
k_VerticalPadding
��7 H
;
��H I
}
�� 
var
�� 
scrollbarPadding
��  
=
��! "(
showingHorizontalScrollBar
��# =
?
��> ?
GUI
��@ C
.
��C D
skin
��D H
.
��H I!
horizontalScrollbar
��I \
.
��\ ]
fixedHeight
��] h
:
��i j
k_VerticalPadding
��k |
;
��| }
return
�� 
height
�� 
+
�� 
multiColumnHeader
�� -
.
��- .
height
��. 4
+
��5 6
scrollbarPadding
��7 G
;
��G H
}
�� 	
static
�� 
int
�� 
FindIdForSignal
�� "
(
��" # 
SerializedProperty
��# 5
signals
��6 =
,
��= >
SignalAsset
��? J
signalToFind
��K W
)
��W X
{
�� 	
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
signals
��  '
.
��' (
	arraySize
��( 1
;
��1 2
++
��3 5
i
��5 6
)
��6 7
{
�� 
var
��  
serializedProperty
�� &
=
��' (
signals
��) 0
.
��0 1$
GetArrayElementAtIndex
��1 G
(
��G H
i
��H I
)
��I J
;
��J K
var
�� "
signalReferenceValue
�� (
=
��) * 
serializedProperty
��+ =
.
��= >"
objectReferenceValue
��> R
;
��R S
var
�� "
signalToFindRefValue
�� (
=
��) *
signalToFind
��+ 7
;
��7 8
if
�� 
(
�� "
signalReferenceValue
�� (
!=
��) +
null
��, 0
&&
��1 3"
signalReferenceValue
��4 H
==
��I K"
signalToFindRefValue
��L `
)
��` a
return
�� 
i
�� 
;
�� 
}
�� 
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Utils\EditModeGUIUtils.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
EditModeGUIUtils !
{ 
public 
static 
void 
DrawBoundsEdge )
() *
Rect* .
bounds/ 5
,5 6
Color7 <
color= B
,B C
TrimEdgeD L
edgeM Q
,Q R
floatS X
widthY ^
=_ `
$numa e
)e f
{ 	
var		 
r		 
=		 
bounds		 
;		 
r

 
.


yMin

 
+=

 
$num

 
;

 
r 
.
yMax 
-= 
$num 
; 
r 
.
width 
= 
width 
; 
r 
.
x 
= 
edge 
== 
TrimEdge "
." #
End# &
?' (
bounds) /
./ 0
xMax0 4
:5 6
bounds7 =
.= >
xMin> B
-C D
widthE J
;J K
	EditorGUI 
. 
DrawRect 
( 
r  
,  !
color" '
)' (
;( )
} 	
public 
static 
void 
DrawOverlayRect *
(* +
Rect+ /
bounds0 6
,6 7
Color8 =
overlayColor> J
)J K
{ 	
var 
c 
= 
overlayColor  
;  !
c 
.
a 
= 
$num 
; 
	EditorGUI 
. 
DrawRect 
( 
bounds %
,% &
c' (
)( )
;) *
	EditorGUI 
. 
DrawOutline !
(! "
bounds" (
,( )
$num* .
,. /
new0 3
Color4 9
(9 :
$num: >
,> ?
$num@ D
,D E
$numF J
,J K
$numL P
)P Q
)Q R
;R S
} 	
} 
} �"
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Sequence\Jog.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
Jog
 
: 
Manipulator 
{ 
Vector2		 
m_MouseDownOrigin		 !
=		" #
Vector2		$ +
.		+ ,
zero		, 0
;		0 1
[ 	
ClutchShortcut	 
( 
$str &
,& '
typeof( .
(. /
TimelineWindow/ =
)= >
,> ?
KeyCode@ G
.G H
JH I
)I J
]J K
static 
void 
JogShortcut 
(  
ShortcutArguments  1
args2 6
)6 7
{
if 
( 
args 
. 
stage 
== 

.+ ,
Begin, 1
)1 2
{ 
( 
args 
. 
context 
as  
TimelineWindow! /
)/ 0
.0 1
state1 6
.6 7
	isJogging7 @
=A B
trueC G
;G H
} 
else 
if 
( 
args 
. 
stage 
==  "

.0 1
End1 4
)4 5
{ 
( 
args 
. 
context 
as  
TimelineWindow! /
)/ 0
.0 1
state1 6
.6 7
	isJogging7 @
=A B
falseC H
;H I
} 
} 	
	protected 
override 
bool 
	MouseDown  )
() *
Event* /
evt0 3
,3 4
WindowState5 @
stateA F
)F G
{ 	
if 
( 
! 
state 
. 
	isJogging  
)  !
return 
false 
; 
m_MouseDownOrigin 
= 
evt  #
.# $

;1 2
state 
. 

=  !
$num" &
;& '
state 
. 
Play 
( 
) 
; 
return!! 
true!! 
;!! 
}"" 	
	protected$$ 
override$$ 
bool$$ 
MouseUp$$  '
($$' (
Event$$( -
evt$$. 1
,$$1 2
WindowState$$3 >
state$$? D
)$$D E
{%% 	
if&& 
(&& 
!&& 
state&& 
.&& 
	isJogging&&  
)&&  !
{'' 
return(( 
false(( 
;(( 
})) 
m_MouseDownOrigin++ 
=++ 
evt++  #
.++# $

;++1 2
state,, 
.,, 

=,,  !
$num,," &
;,,& '
state-- 
.-- 
Play-- 
(-- 
)-- 
;-- 
return.. 
false.. 
;.. 
}// 	
	protected11 
override11 
bool11 
	MouseDrag11  )
(11) *
Event11* /
evt110 3
,113 4
WindowState115 @
state11A F
)11F G
{22 	
if33 
(33 
!33 
state33 
.33 
	isJogging33  
)33  !
return44 
false44 
;44 
var66 
distance66 
=66 
evt66 
.66 

-66- .
m_MouseDownOrigin66/ @
;66@ A
state88 
.88 

=88  !
distance88" *
.88* +
x88+ ,
*88- .
$num88/ 5
;885 6
state99 
.99 
Play99 
(99 
)99 
;99 
return:: 
true:: 
;:: 
};; 	
}<< 
}== ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Shortcuts.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
	Shortcuts 
{		 
public

 
static

 
class

 
Clip

  
{ 	
public 
const 
string 
split  %
=& '
$str( @
;@ A
public
const
string
	trimStart
=
$str
;
public 
const 
string 
trimEnd  '
=( )
$str* D
;D E
[ 
UsedImplicitly
, 
ShortcutManagement /
./ 0
Shortcut0 8
(8 9
split9 >
,> ?
typeof@ F
(F G
TimelineWindowG U
)U V
,V W
KeyCodeX _
._ `
S` a
)a b
]b c
static 
void 
Split 
( 
ShortcutManagement 0
.0 1
ShortcutArguments1 B
argsC G
)G H
{ 
SendEventToInvokeShortcut )
() *
split* /
,/ 0
args1 5
.5 6
context6 =
)= >
;> ?
} 
[ 
UsedImplicitly
, 
ShortcutManagement /
./ 0
Shortcut0 8
(8 9
	trimStart9 B
,B C
typeofD J
(J K
TimelineWindowK Y
)Y Z
,Z [
KeyCode\ c
.c d
Id e
)e f
]f g
static 
void 
	TrimStart !
(! "
ShortcutManagement" 4
.4 5
ShortcutArguments5 F
argsG K
)K L
{ 
SendEventToInvokeShortcut )
() *
	trimStart* 3
,3 4
args5 9
.9 :
context: A
)A B
;B C
} 
[ 
UsedImplicitly
, 
ShortcutManagement /
./ 0
Shortcut0 8
(8 9
trimEnd9 @
,@ A
typeofB H
(H I
TimelineWindowI W
)W X
,X Y
KeyCodeZ a
.a b
Ob c
)c d
]d e
static 
void 
TrimEnd 
(  
ShortcutManagement  2
.2 3
ShortcutArguments3 D
argsE I
)I J
{ 
SendEventToInvokeShortcut )
() *
trimEnd* 1
,1 2
args3 7
.7 8
context8 ?
)? @
;@ A
}   
}!! 	
public## 
static## 
class## 
Timeline## $
{$$ 	
public%% 
const%% 
string%% 
play%%  $
=%%% &
$str%%' 6
;%%6 7
public&& 
const&& 
string&& 

=&&. /
$str&&0 D
;&&D E
public'' 
const'' 
string'' 
	nextFrame''  )
=''* +
$str'', @
;''@ A
public(( 
const(( 
string(( 
frameAll((  (
=(() *
$str((+ >
;((> ?
public)) 
const)) 
string)) 
previousKey))  +
=)), -
$str)). @
;))@ A
public** 
const** 
string** 
nextKey**  '
=**( )
$str*** <
;**< =
public++ 
const++ 
string++ 
	goToStart++  )
=++* +
$str++, @
;++@ A
public,, 
const,, 
string,, 
goToEnd,,  '
=,,( )
$str,,* <
;,,< =
public-- 
const-- 
string-- 
zoomIn--  &
=--' (
$str--) :
;--: ;
public.. 
const.. 
string.. 
zoomOut..  '
=..( )
$str..* <
;..< =
public// 
const// 
string// 

=//. /
$str//0 H
;//H I
public00 
const00 
string00 
unCollapseGroup00  /
=000 1
$str002 L
;00L M
public11 
const11 
string11 
selectLeftItem11  .
=11/ 0
$str111 J
;11J K
public22 
const22 
string22 
selectRightItem22  /
=220 1
$str222 L
;22L M
public33 
const33 
string33 
selectUpItem33  ,
=33- .
$str33/ F
;33F G
public44 
const44 
string44 

=44. /
$str440 H
;44H I
public55 
const55 
string55 
selectDownItem55  .
=55/ 0
$str551 J
;55J K
public66 
const66 
string66 
selectDownTrack66  /
=660 1
$str662 L
;66L M
public77 
const77 
string77 
multiSelectLeft77  /
=770 1
$str772 G
;77G H
public88 
const88 
string88 
multiSelectRight88  0
=881 2
$str883 I
;88I J
public99 
const99 
string99 

=99. /
$str990 C
;99C D
public:: 
const:: 
string:: 
multiSelectDown::  /
=::0 1
$str::2 G
;::G H
public;; 
const;; 
string;; 
toggleClipTrackArea;;  3
=;;4 5
$str;;6 T
;;;T U
public<< 
const<< 
string<< 
matchContent<<  ,
=<<- .
$str<</ F
;<<F G
public== 
const== 
string== 

toggleLock==  *
===+ ,
$str==- B
;==B C
public>> 
const>> 
string>> 

toggleMute>>  *
=>>+ ,
$str>>- B
;>>B C
public@@ 
const@@ 
string@@ 
moveLeft@@  (
=@@) *
$str@@+ >
;@@> ?
publicAA 
constAA 
stringAA 
	moveRightAA  )
=AA* +
$strAA, @
;AA@ A
publicBB 
constBB 
stringBB 
moveUpBB  &
=BB' (
$strBB) :
;BB: ;
publicCC 
constCC 
stringCC 
moveDownCC  (
=CC) *
$strCC+ >
;CC> ?
[EE 
UsedImplicitlyEE
,EE 
ShortcutManagementEE /
.EE/ 0
ShortcutEE0 8
(EE8 9
playEE9 =
,EE= >
typeofEE? E
(EEE F
TimelineWindowEEF T
)EET U
,EEU V
KeyCodeEEW ^
.EE^ _
SpaceEE_ d
)EEd e
]EEe f
staticFF 
voidFF 
PlayFF 
(FF 
ShortcutManagementFF /
.FF/ 0
ShortcutArgumentsFF0 A
argsFFB F
)FFF G
{GG 
SendEventToInvokeShortcutHH )
(HH) *
playHH* .
,HH. /
argsHH0 4
.HH4 5
contextHH5 <
)HH< =
;HH= >
}II 
[KK 
UsedImplicitlyKK
,KK 
ShortcutManagementKK /
.KK/ 0
ShortcutKK0 8
(KK8 9

,KKF G
typeofKKH N
(KKN O
TimelineWindowKKO ]
)KK] ^
,KK^ _
KeyCodeKK` g
.KKg h
CommaKKh m
)KKm n
]KKn o
staticLL 
voidLL 

(LL% &
ShortcutManagementLL& 8
.LL8 9
ShortcutArgumentsLL9 J
argsLLK O
)LLO P
{MM 
SendEventToInvokeShortcutNN )
(NN) *

,NN7 8
argsNN9 =
.NN= >
contextNN> E
)NNE F
;NNF G
}OO 
[QQ 
UsedImplicitlyQQ
,QQ 
ShortcutManagementQQ /
.QQ/ 0
ShortcutQQ0 8
(QQ8 9
	nextFrameQQ9 B
,QQB C
typeofQQD J
(QQJ K
TimelineWindowQQK Y
)QQY Z
,QQZ [
KeyCodeQQ\ c
.QQc d
PeriodQQd j
)QQj k
]QQk l
staticRR 
voidRR 
	NextFrameRR !
(RR! "
ShortcutManagementRR" 4
.RR4 5
ShortcutArgumentsRR5 F
argsRRG K
)RRK L
{SS 
SendEventToInvokeShortcutTT )
(TT) *
	nextFrameTT* 3
,TT3 4
argsTT5 9
.TT9 :
contextTT: A
)TTA B
;TTB C
}UU 
[WW 
UsedImplicitlyWW
,WW 
ShortcutManagementWW /
.WW/ 0
ShortcutWW0 8
(WW8 9
frameAllWW9 A
,WWA B
typeofWWC I
(WWI J
TimelineWindowWWJ X
)WWX Y
,WWY Z
KeyCodeWW[ b
.WWb c
AWWc d
)WWd e
]WWe f
staticXX 
voidXX 
FrameAllXX  
(XX  !
ShortcutManagementXX! 3
.XX3 4
ShortcutArgumentsXX4 E
argsXXF J
)XXJ K
{YY 
SendEventToInvokeShortcutZZ )
(ZZ) *
frameAllZZ* 2
,ZZ2 3
argsZZ4 8
.ZZ8 9
contextZZ9 @
)ZZ@ A
;ZZA B
}[[ 
[`` 
UsedImplicitly``
,`` 
ShortcutManagement`` /
.``/ 0
Shortcut``0 8
(``8 9
previousKey``9 D
,``D E
typeof``F L
(``L M
TimelineWindow``M [
)``[ \
,``\ ]
KeyCode``^ e
.``e f
Comma``f k
,``k l
ShortcutModifiers``m ~
.``~ 
Action	`` �
)
``� �
]
``� �
staticbb 
voidbb 
PrevKeybb 
(bb  
ShortcutManagementbb  2
.bb2 3
ShortcutArgumentsbb3 D
argsbbE I
)bbI J
{cc 
SendEventToInvokeShortcutdd )
(dd) *
previousKeydd* 5
,dd5 6
argsdd7 ;
.dd; <
contextdd< C
)ddC D
;ddD E
}ee 
[jj 
UsedImplicitlyjj
,jj 
ShortcutManagementjj /
.jj/ 0
Shortcutjj0 8
(jj8 9
nextKeyjj9 @
,jj@ A
typeofjjB H
(jjH I
TimelineWindowjjI W
)jjW X
,jjX Y
KeyCodejjZ a
.jja b
Periodjjb h
,jjh i
ShortcutModifiersjjj {
.jj{ |
Action	jj| �
)
jj� �
]
jj� �
staticll 
voidll 
NextKeyll 
(ll  
ShortcutManagementll  2
.ll2 3
ShortcutArgumentsll3 D
argsllE I
)llI J
{mm 
SendEventToInvokeShortcutnn )
(nn) *
nextKeynn* 1
,nn1 2
argsnn3 7
.nn7 8
contextnn8 ?
)nn? @
;nn@ A
}oo 
[qq 
UsedImplicitlyqq
,qq 
ShortcutManagementqq /
.qq/ 0
Shortcutqq0 8
(qq8 9
	goToStartqq9 B
,qqB C
typeofqqD J
(qqJ K
TimelineWindowqqK Y
)qqY Z
,qqZ [
KeyCodeqq\ c
.qqc d
Commaqqd i
,qqi j
ShortcutModifiersqqk |
.qq| }
Shift	qq} �
)
qq� �
]
qq� �
staticrr 
voidrr 
	GoToStartrr !
(rr! "
ShortcutManagementrr" 4
.rr4 5
ShortcutArgumentsrr5 F
argsrrG K
)rrK L
{ss 
SendEventToInvokeShortcuttt )
(tt) *
	goToStarttt* 3
,tt3 4
argstt5 9
.tt9 :
contexttt: A
)ttA B
;ttB C
}uu 
[ww 
UsedImplicitlyww
,ww 
ShortcutManagementww /
.ww/ 0
Shortcutww0 8
(ww8 9
goToEndww9 @
,ww@ A
typeofwwB H
(wwH I
TimelineWindowwwI W
)wwW X
,wwX Y
KeyCodewwZ a
.wwa b
Periodwwb h
,wwh i
ShortcutModifierswwj {
.ww{ |
Shift	ww| �
)
ww� �
]
ww� �
staticxx 
voidxx 
GoToEndxx 
(xx  
ShortcutManagementxx  2
.xx2 3
ShortcutArgumentsxx3 D
argsxxE I
)xxI J
{yy 
SendEventToInvokeShortcutzz )
(zz) *
goToEndzz* 1
,zz1 2
argszz3 7
.zz7 8
contextzz8 ?
)zz? @
;zz@ A
}{{ 
[}} 
UsedImplicitly}}
,}} 
ShortcutManagement}} /
.}}/ 0
Shortcut}}0 8
(}}8 9
zoomIn}}9 ?
,}}? @
typeof}}A G
(}}G H
TimelineWindow}}H V
)}}V W
,}}W X
KeyCode}}Y `
.}}` a
Equals}}a g
)}}g h
]}}h i
static~~ 
void~~ 
ZoomIn~~ 
(~~ 
ShortcutManagement~~ 1
.~~1 2
ShortcutArguments~~2 C
args~~D H
)~~H I
{ 
SendEventToInvokeShortcut
�� )
(
��) *
zoomIn
��* 0
,
��0 1
args
��2 6
.
��6 7
context
��7 >
)
��> ?
;
��? @
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9
zoomOut
��9 @
,
��@ A
typeof
��B H
(
��H I
TimelineWindow
��I W
)
��W X
,
��X Y
KeyCode
��Z a
.
��a b
Minus
��b g
)
��g h
]
��h i
static
�� 
void
�� 
ZoomOut
�� 
(
��   
ShortcutManagement
��  2
.
��2 3
ShortcutArguments
��3 D
args
��E I
)
��I J
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *
zoomOut
��* 1
,
��1 2
args
��3 7
.
��7 8
context
��8 ?
)
��? @
;
��@ A
}
�� 
[
�� 
UsedImplicitly
��
]
�� 
[
�� 
ShortcutManagement
��
.
��  
Shortcut
��  (
(
��( )
moveLeft
��) 1
,
��1 2
typeof
��3 9
(
��9 :
TimelineWindow
��: H
)
��H I
,
��I J
KeyCode
��K R
.
��R S
	LeftArrow
��S \
)
��\ ]
]
��] ^
static
�� 
void
�� 

SelectLeft
�� "
(
��" # 
ShortcutManagement
��# 5
.
��5 6
ShortcutArguments
��6 G
args
��H L
)
��L M
{
�� 
if
�� 
(
��  
KeyboardNavigation
�� &
.
��& '
ClipAreaActive
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
selectLeftItem
��. <
,
��< =
args
��> B
.
��B C
context
��C J
)
��J K
;
��K L
}
�� 
else
�� 
if
�� 
(
��  
KeyboardNavigation
�� +
.
��+ ,
TrackHeadActive
��, ;
(
��; <
)
��< =
)
��= >
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .

��. ;
,
��; <
args
��= A
.
��A B
context
��B I
)
��I J
;
��J K
}
�� 
}
�� 
[
�� 
UsedImplicitly
��
]
�� 
[
�� 
ShortcutManagement
��
.
��  
Shortcut
��  (
(
��( )
	moveRight
��) 2
,
��2 3
typeof
��4 :
(
��: ;
TimelineWindow
��; I
)
��I J
,
��J K
KeyCode
��L S
.
��S T

RightArrow
��T ^
)
��^ _
]
��_ `
static
�� 
void
�� 
SelectRight
�� #
(
��# $ 
ShortcutManagement
��$ 6
.
��6 7
ShortcutArguments
��7 H
args
��I M
)
��M N
{
�� 
if
�� 
(
��  
KeyboardNavigation
�� &
.
��& '
ClipAreaActive
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
selectRightItem
��. =
,
��= >
args
��? C
.
��C D
context
��D K
)
��K L
;
��L M
}
�� 
else
�� 
if
�� 
(
��  
KeyboardNavigation
�� +
.
��+ ,
TrackHeadActive
��, ;
(
��; <
)
��< =
)
��= >
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
unCollapseGroup
��. =
,
��= >
args
��? C
.
��C D
context
��D K
)
��K L
;
��L M
}
�� 
}
�� 
[
�� 
UsedImplicitly
��
]
�� 
[
�� 
ShortcutManagement
��
.
��  
Shortcut
��  (
(
��( )
moveUp
��) /
,
��/ 0
typeof
��1 7
(
��7 8
TimelineWindow
��8 F
)
��F G
,
��G H
KeyCode
��I P
.
��P Q
UpArrow
��Q X
)
��X Y
]
��Y Z
static
�� 
void
�� 
SelectUp
��  
(
��  ! 
ShortcutManagement
��! 3
.
��3 4
ShortcutArguments
��4 E
args
��F J
)
��J K
{
�� 
if
�� 
(
��  
KeyboardNavigation
�� &
.
��& '
ClipAreaActive
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
selectUpItem
��. :
,
��: ;
args
��< @
.
��@ A
context
��A H
)
��H I
;
��I J
}
�� 
else
�� 
if
�� 
(
��  
KeyboardNavigation
�� +
.
��+ ,
TrackHeadActive
��, ;
(
��; <
)
��< =
)
��= >
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .

��. ;
,
��; <
args
��= A
.
��A B
context
��B I
)
��I J
;
��J K
}
�� 
else
�� 
{
��  
KeyboardNavigation
�� &
.
��& '#
FocusFirstVisibleItem
��' <
(
��< =
)
��= >
;
��> ?
}
�� 
}
�� 
[
�� 
UsedImplicitly
��
]
�� 
[
�� 
ShortcutManagement
��
.
��  
Shortcut
��  (
(
��( )
moveDown
��) 1
,
��1 2
typeof
��3 9
(
��9 :
TimelineWindow
��: H
)
��H I
,
��I J
KeyCode
��K R
.
��R S
	DownArrow
��S \
)
��\ ]
]
��] ^
static
�� 
void
�� 

SelectDown
�� "
(
��" # 
ShortcutManagement
��# 5
.
��5 6
ShortcutArguments
��6 G
args
��H L
)
��L M
{
�� 
if
�� 
(
��  
KeyboardNavigation
�� &
.
��& '
ClipAreaActive
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
selectDownItem
��. <
,
��< =
args
��> B
.
��B C
context
��C J
)
��J K
;
��K L
}
�� 
else
�� 
if
�� 
(
��  
KeyboardNavigation
�� +
.
��+ ,
TrackHeadActive
��, ;
(
��; <
)
��< =
)
��= >
{
�� '
SendEventToInvokeShortcut
�� -
(
��- .
selectDownTrack
��. =
,
��= >
args
��? C
.
��C D
context
��D K
)
��K L
;
��L M
}
�� 
else
�� 
{
��  
KeyboardNavigation
�� &
.
��& '#
FocusFirstVisibleItem
��' <
(
��< =
)
��= >
;
��> ?
}
�� 
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9
multiSelectLeft
��9 H
,
��H I
typeof
��J P
(
��P Q
TimelineWindow
��Q _
)
��_ `
,
��` a
KeyCode
��b i
.
��i j
	LeftArrow
��j s
,
��s t 
ShortcutModifiers��u �
.��� �
Shift��� �
)��� �
]��� �
static
�� 
void
�� 
MultiSelectLeft
�� '
(
��' ( 
ShortcutManagement
��( :
.
��: ;
ShortcutArguments
��; L
args
��M Q
)
��Q R
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *
multiSelectLeft
��* 9
,
��9 :
args
��; ?
.
��? @
context
��@ G
)
��G H
;
��H I
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9
multiSelectRight
��9 I
,
��I J
typeof
��K Q
(
��Q R
TimelineWindow
��R `
)
��` a
,
��a b
KeyCode
��c j
.
��j k

RightArrow
��k u
,
��u v 
ShortcutModifiers��w �
.��� �
Shift��� �
)��� �
]��� �
static
�� 
void
�� 
MultiSelectRight
�� (
(
��( ) 
ShortcutManagement
��) ;
.
��; <
ShortcutArguments
��< M
args
��N R
)
��R S
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *
multiSelectRight
��* :
,
��: ;
args
��< @
.
��@ A
context
��A H
)
��H I
;
��I J
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9

��9 F
,
��G H
typeof
��I O
(
��O P
TimelineWindow
��P ^
)
��^ _
,
��_ `
KeyCode
��a h
.
��h i
UpArrow
��i p
,
��p q 
ShortcutModifiers��r �
.��� �
Shift��� �
)��� �
]��� �
static
�� 
void
�� 

�� %
(
��% & 
ShortcutManagement
��& 8
.
��8 9
ShortcutArguments
��9 J
args
��K O
)
��O P
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *

��* 7
,
��7 8
args
��9 =
.
��= >
context
��> E
)
��E F
;
��F G
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9
multiSelectDown
��9 H
,
��H I
typeof
��J P
(
��P Q
TimelineWindow
��Q _
)
��_ `
,
��` a
KeyCode
��b i
.
��i j
	DownArrow
��j s
,
��s t 
ShortcutModifiers��u �
.��� �
Shift��� �
)��� �
]��� �
static
�� 
void
�� 
MultiSelectDown
�� '
(
��' ( 
ShortcutManagement
��( :
.
��: ;
ShortcutArguments
��; L
args
��M Q
)
��Q R
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *
multiSelectDown
��* 9
,
��9 :
args
��; ?
.
��? @
context
��@ G
)
��G H
;
��H I
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9!
toggleClipTrackArea
��9 L
,
��L M
typeof
��N T
(
��T U
TimelineWindow
��U c
)
��c d
,
��d e
KeyCode
��f m
.
��m n
Tab
��n q
)
��q r
]
��r s
static
�� 
void
�� !
ToggleClipTrackArea
�� +
(
��+ , 
ShortcutManagement
��, >
.
��> ?
ShortcutArguments
��? P
args
��Q U
)
��U V
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *!
toggleClipTrackArea
��* =
,
��= >
args
��? C
.
��C D
context
��D K
)
��K L
;
��L M
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9
matchContent
��9 E
,
��E F
typeof
��G M
(
��M N
TimelineWindow
��N \
)
��\ ]
,
��] ^
KeyCode
��_ f
.
��f g
C
��g h
)
��h i
]
��i j
static
�� 
void
�� 
Shortcut
��  
(
��  ! 
ShortcutManagement
��! 3
.
��3 4
ShortcutArguments
��4 E
args
��F J
)
��J K
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *
matchContent
��* 6
,
��6 7
args
��8 <
.
��< =
context
��= D
)
��D E
;
��E F
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9

toggleLock
��9 C
,
��C D
typeof
��E K
(
��K L
TimelineWindow
��L Z
)
��Z [
,
��[ \
KeyCode
��] d
.
��d e
L
��e f
)
��f g
]
��g h
static
�� 
void
�� 
Lock
�� 
(
��  
ShortcutManagement
�� /
.
��/ 0
ShortcutArguments
��0 A
args
��B F
)
��F G
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *

toggleLock
��* 4
,
��4 5
args
��6 :
.
��: ;
context
��; B
)
��B C
;
��C D
}
�� 
[
�� 
UsedImplicitly
��
,
��  
ShortcutManagement
�� /
.
��/ 0
Shortcut
��0 8
(
��8 9

toggleMute
��9 C
,
��C D
typeof
��E K
(
��K L
TimelineWindow
��L Z
)
��Z [
,
��[ \
KeyCode
��] d
.
��d e
M
��e f
)
��f g
]
��g h
static
�� 
void
�� 
Mute
�� 
(
��  
ShortcutManagement
�� /
.
��/ 0
ShortcutArguments
��0 A
args
��B F
)
��F G
{
�� 
SendEventToInvokeShortcut
�� )
(
��) *

toggleMute
��* 4
,
��4 5
args
��6 :
.
��: ;
context
��; B
)
��B C
;
��C D
}
�� 
}
�� 	
static
�� 
WindowState
�� 
GetState
�� #
(
��# $ 
ShortcutManagement
��$ 6
.
��6 7
ShortcutArguments
��7 H
args
��I M
)
��M N
{
�� 	
return
�� 
(
�� 
(
�� 
TimelineWindow
�� #
)
��# $
args
��$ (
.
��( )
context
��) 0
)
��0 1
.
��1 2
state
��2 7
;
��7 8
}
�� 	
static
�� 
void
�� '
SendEventToInvokeShortcut
�� -
(
��- .
string
��. 4 
timelineShortcutId
��5 G
,
��G H
object
��I O
context
��P W
)
��W X
{
�� 	
var
�� 
e
�� 
=
�� 
new
�� 
Event
�� 
{
�� 
type
�� 
=
�� 
	EventType
��  
.
��  !
ExecuteCommand
��! /
,
��/ 0
commandName
�� 
=
��  
timelineShortcutId
�� 0
}
�� 
;
��
(
�� 
context
��
as
�� 
EditorWindow
�� $
)
��$ %
.
��% &
	SendEvent
��& /
(
��/ 0
e
��0 1
)
��1 2
;
��2 3
}
�� 	
}
�� 
}�� Ʊ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindowTimeControl.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class		 	%
TimelineWindowTimeControl		
 #
:		$ %#
IAnimationWindowControl		& =
{

 
[ 	
Serializable	 
] 
public 
struct 
ClipData 
{
public 
double 
start 
;  
public 
double 
duration "
;" #
public 

TrackAsset 
track #
;# $
} 	
[ 	
SerializeField	 
] 
ClipData !

m_ClipData" ,
;, -
[ 	
SerializeField	 
] 
TimelineClip %
m_Clip& ,
;, -
[ 	
SerializeField	 
]  
AnimationWindowState -
m_AnimWindowState. ?
;? @

TrackAsset 
track 
{ 	
get 
{ 
if 
( 
m_Clip 
!= 
null "
)" #
{ 
return 
m_Clip !
.! "
parentTrack" -
;- .
} 
return 

m_ClipData !
.! "
track" '
;' (
}   
}!! 	
static## 
TimelineWindow## 
window## $
{$$ 	
get%% 
{&& 
return'' 
TimelineWindow'' %
.''% &
instance''& .
;''. /
}(( 
})) 	
static++ 
WindowState++ 
state++  
{,, 	
get-- 
{.. 
if// 
(// 
window// 
!=// 
null// "
)//" #
return00 
window00 !
.00! "
state00" '
;00' (
return11 
null11 
;11 
}22 
}33 	
void55 

(55 
)55 
{66 	
if77 
(77 
state77 
!=77 
null77 
&&77  
state77! &
.77& '

dirtyStamp77' 1
>772 3
$num774 5
&&776 8
m_AnimWindowState779 J
!=77K M
null77N R
)77R S
m_AnimWindowState88 !
.88! "
Repaint88" )
(88) *
)88* +
;88+ ,
}99 	
public;; 
void;; 
Init;; 
(;;  
AnimationWindowState;; -
	animState;;. 7
,;;7 8
TimelineClip;;9 E
clip;;F J
);;J K
{<< 	
m_Clip== 
=== 
clip== 
;== 
m_AnimWindowState>> 
=>> 
	animState>>  )
;>>) *
}?? 	
publicAA 
voidAA 
InitAA 
(AA  
AnimationWindowStateAA -
	animStateAA. 7
,AA7 8
ClipDataAA9 A
clipAAB F
)AAF G
{BB 	

m_ClipDataCC 
=CC 
clipCC 
;CC 
m_AnimWindowStateDD 
=DD 
	animStateDD  )
;DD) *
}EE 	
publicGG 
overrideGG 
voidGG 
OnEnableGG %
(GG% &
)GG& '
{HH 	
ifII 
(II 
stateII 
!=II 
nullII 
)II 
stateJJ 
.JJ 
OnTimeChangeJJ "
+=JJ# %

;JJ3 4
baseLL 
.LL 
OnEnableLL 
(LL 
)LL 
;LL 
}MM 	
publicOO 
voidOO 
	OnDisableOO 
(OO 
)OO 
{PP 	
ifQQ 
(QQ 
stateQQ 
!=QQ 
nullQQ 
)QQ 
stateRR 
.RR 
OnTimeChangeRR "
-=RR# %

;RR3 4
}SS 	
publicUU 
overrideUU 
AnimationKeyTimeUU (
timeUU) -
{VV 	
getWW 
{XX 
ifYY 
(YY 
stateYY 
==YY 
nullYY !
)YY! "
returnZZ 
AnimationKeyTimeZZ +
.ZZ+ ,
TimeZZ, 0
(ZZ0 1
$numZZ1 5
,ZZ5 6
$numZZ7 ;
)ZZ; <
;ZZ< =
return\\ 
AnimationKeyTime\\ '
.\\' (
Time\\( ,
(\\, -
ToAnimationClipTime\\- @
(\\@ A
state\\A F
.\\F G
editSequence\\G S
.\\S T
time\\T X
)\\X Y
,\\Y Z
state\\[ `
.\\` a
referenceSequence\\a r
.\\r s
	frameRate\\s |
)\\| }
;\\} ~
}]] 
}^^ 	
void`` 

ChangeTime``
(`` 
float`` 
newTime`` %
)``% &
{aa 	
ifbb 
(bb 
statebb 
!=bb 
nullbb 
&&bb  
statebb! &
.bb& '
editSequencebb' 3
.bb3 4
directorbb4 <
!=bb= ?
nullbb@ D
)bbD E
{cc 
varee 
	finalTimeee 
=ee 
ToGlobalTimeee  ,
(ee, -
newTimeee- 4
)ee4 5
;ee5 6
ifff 
(ff 
TimeUtilityff 
.ff  
OnFrameBoundaryff  /
(ff/ 0
	finalTimeff0 9
,ff9 :
stateff; @
.ff@ A
referenceSequenceffA R
.ffR S
	frameRateffS \
,ff\ ]
TimeUtilityff^ i
.ffi j
kFrameRateEpsilonffj {
)ff{ |
)ff| }
	finalTimegg 
=gg 
TimeUtilitygg  +
.gg+ ,
RoundToFramegg, 8
(gg8 9
	finalTimegg9 B
,ggB C
stateggD I
.ggI J
referenceSequenceggJ [
.gg[ \
	frameRategg\ e
)gge f
;ggf g
statehh 
.hh 
editSequencehh "
.hh" #
timehh# '
=hh( )
	finalTimehh* 3
;hh3 4
windowjj 
.jj 
Repaintjj 
(jj 
)jj  
;jj  !
}kk 
}ll 	
staticnn 
voidnn 
ChangeFramenn 
(nn  
intnn  #
framenn$ )
)nn) *
{oo 	
ifpp 
(pp 
statepp 
!=pp 
nullpp 
)pp 
{qq 
staterr 
.rr 
editSequencerr "
.rr" #
framerr# (
=rr) *
framerr+ 0
;rr0 1
windowss 
.ss 
Repaintss 
(ss 
)ss  
;ss  !
}tt 
}uu 	
publicww 
overrideww 
voidww 
GoToTimeww %
(ww% &
floatww& +
newTimeww, 3
)ww3 4
{xx 	

ChangeTimeyy 
(yy 
newTimeyy 
)yy 
;yy  
}zz 	
public|| 
override|| 
void|| 
	GoToFrame|| &
(||& '
int||' *
frame||+ 0
)||0 1
{}} 	
ChangeFrame~~ 
(~~ 
frame~~ 
)~~ 
;~~ 
} 	
public
�� 
override
�� 
void
�� 
StartScrubTime
�� +
(
��+ ,
)
��, -
{
��. /
}
��/ 0
public
�� 
override
�� 
void
�� 
EndScrubTime
�� )
(
��) *
)
��* +
{
��, -
}
��- .
public
�� 
override
�� 
void
�� 
	ScrubTime
�� &
(
��& '
float
��' ,
newTime
��- 4
)
��4 5
{
�� 	

ChangeTime
�� 
(
�� 
newTime
�� 
)
�� 
;
��  
}
�� 	
public
�� 
override
�� 
void
�� 
GoToPreviousFrame
�� .
(
��. /
)
��/ 0
{
�� 	
if
�� 
(
�� 
state
�� 
!=
�� 
null
�� 
)
�� 
ChangeFrame
�� 
(
�� 
state
�� !
.
��! "
editSequence
��" .
.
��. /
frame
��/ 4
-
��5 6
$num
��7 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
override
�� 
void
�� 

�� *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
state
�� 
!=
�� 
null
�� 
)
�� 
ChangeFrame
�� 
(
�� 
state
�� !
.
��! "
editSequence
��" .
.
��. /
frame
��/ 4
+
��5 6
$num
��7 8
)
��8 9
;
��9 :
}
�� 	"
AnimationWindowCurve
�� 
[
�� 
]
�� 
	GetCurves
�� (
(
��( )
)
��) *
{
�� 	
var
�� 
curves
�� 
=
�� 
(
�� 
m_AnimWindowState
�� "
.
��" #
showCurveEditor
��# 2
&&
��3 5
m_AnimWindowState
�� %
.
��% &
activeCurves
��& 2
.
��2 3
Count
��3 8
>
��9 :
$num
��; <
)
��< =
?
��> ?
m_AnimWindowState
��@ Q
.
��Q R
activeCurves
��R ^
:
��_ `
m_AnimWindowState
��a r
.
��r s
	allCurves
��s |
;
��| }
return
�� 
curves
�� 
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
�� 	
public
�� 
override
�� 
void
�� "
GoToPreviousKeyframe
�� 1
(
��1 2
)
��2 3
{
�� 	
var
�� 
newTime
�� 
=
�� $
AnimationWindowUtility
�� 0
.
��0 1%
GetPreviousKeyframeTime
��1 H
(
��H I
	GetCurves
��I R
(
��R S
)
��S T
,
��T U
time
��V Z
.
��Z [
time
��[ _
,
��_ `
m_AnimWindowState
��a r
.
��r s

)��� �
;��� �
GoToTime
�� 
(
�� 
m_AnimWindowState
�� &
.
��& '
SnapToFrame
��' 2
(
��2 3
newTime
��3 :
,
��: ;"
AnimationWindowState
��< P
.
��P Q
SnapMode
��Q Y
.
��Y Z
SnapToClipFrame
��Z i
)
��i j
)
��j k
;
��k l
}
�� 	
public
�� 
override
�� 
void
�� 
GoToNextKeyframe
�� -
(
��- .
)
��. /
{
�� 	
var
�� 
newTime
�� 
=
�� $
AnimationWindowUtility
�� 0
.
��0 1!
GetNextKeyframeTime
��1 D
(
��D E
	GetCurves
��E N
(
��N O
)
��O P
,
��P Q
time
��R V
.
��V W
time
��W [
,
��[ \
m_AnimWindowState
��] n
.
��n o

��o |
)
��| }
;
��} ~
GoToTime
�� 
(
�� 
m_AnimWindowState
�� &
.
��& '
SnapToFrame
��' 2
(
��2 3
newTime
��3 :
,
��: ;"
AnimationWindowState
��< P
.
��P Q
SnapMode
��Q Y
.
��Y Z
SnapToClipFrame
��Z i
)
��i j
)
��j k
;
��k l
}
�� 	
public
�� 
override
�� 
void
�� 
GoToFirstKeyframe
�� .
(
��. /
)
��/ 0
{
�� 	
GoToTime
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
GoToLastKeyframe
�� -
(
��- .
)
��. /
{
�� 	
double
�� 
animClipTime
�� 
=
��  !
$num
��" #
;
��# $
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
var
�� 
curves
�� 
=
�� 
m_Clip
�� #
.
��# $
curves
��$ *
;
��* +
var
�� 
	animAsset
�� 
=
�� 
m_Clip
��  &
.
��& '
asset
��' ,
as
��- /$
AnimationPlayableAsset
��0 F
;
��F G
if
�� 
(
�� 
	animAsset
�� 
!=
��  
null
��! %
)
��% &
{
�� 
animClipTime
��  
=
��! "
	animAsset
��# ,
.
��, -
clip
��- 1
!=
��2 4
null
��5 9
?
��: ;
	animAsset
��< E
.
��E F
clip
��F J
.
��J K
length
��K Q
:
��R S
$num
��T U
;
��U V
}
�� 
else
�� 
if
�� 
(
�� 
curves
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
animClipTime
��  
=
��! "
curves
��# )
.
��) *
length
��* 0
;
��0 1
}
�� 
else
�� 
{
�� 
animClipTime
��  
=
��! "
m_Clip
��# )
.
��) *
clipAssetDuration
��* ;
;
��; <
}
�� 
}
�� 
else
�� 
{
�� 
animClipTime
�� 
=
�� 

m_ClipData
�� )
.
��) *
duration
��* 2
;
��2 3
}
�� 
GoToTime
�� 
(
�� 
(
�� 
float
�� 
)
�� 
animClipTime
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
override
�� 
bool
�� 
canPlay
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
state
�� 
!=
�� 
null
��  $
&&
��% '
state
��( -
.
��- .
previewMode
��. 9
;
��9 :
}
�� 
}
�� 	
public
�� 
override
�� 
bool
�� 
playing
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
state
�� 
!=
�� 
null
��  $
&&
��% '
state
��( -
.
��- .
playing
��. 5
;
��5 6
}
�� 
}
�� 	
static
�� 
void
�� 
SetPlaybackState
�� $
(
��$ %
bool
��% )

��* 7
)
��7 8
{
�� 	
if
�� 
(
�� 
state
�� 
==
�� 
null
�� 
||
��  

��! .
==
��/ 1
state
��2 7
.
��7 8
playing
��8 ?
)
��? @
return
�� 
;
�� 
state
�� 
.
�� 

SetPlaying
�� 
(
�� 

�� *
)
��* +
;
��+ ,
}
�� 	
public
�� 
override
�� 
bool
�� 

�� *
(
��* +
)
��+ ,
{
�� 	
SetPlaybackState
�� 
(
�� 
true
�� !
)
��! "
;
��" #
return
�� 
state
�� 
!=
�� 
null
��  
&&
��! #
state
��$ )
.
��) *
playing
��* 1
;
��1 2
}
�� 	
public
�� 
override
�� 
void
�� 
StopPlayback
�� )
(
��) *
)
��* +
{
�� 	
SetPlaybackState
�� 
(
�� 
false
�� "
)
��" #
;
��# $
}
�� 	
public
�� 
override
�� 
bool
�� 
PlaybackUpdate
�� +
(
��+ ,
)
��, -
{
��. /
return
��0 6
state
��7 <
!=
��= ?
null
��@ D
&&
��E G
state
��H M
.
��M N
playing
��N U
;
��U V
}
��W X
public
�� 
override
�� 
bool
�� 
	canRecord
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
state
�� 
!=
�� !
null
��" &
&&
��' )
state
��* /
.
��/ 0
	canRecord
��0 9
;
��9 :
}
��; <
}
�� 	
public
�� 
override
�� 
bool
�� 
	recording
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
state
�� 
!=
�� !
null
��" &
&&
��' )
state
��* /
.
��/ 0
	recording
��0 9
;
��9 :
}
��; <
}
�� 	
public
�� 
override
�� 
bool
�� 

canPreview
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
��  !
}
�� 	
public
�� 
override
�� 
bool
�� 

previewing
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
��  !
}
�� 	
public
�� 
override
�� 
bool
�� 
StartRecording
�� +
(
��+ ,
Object
��, 2
targetObject
��3 ?
)
��? @
{
�� 	
if
�� 
(
�� 
!
�� 
	canRecord
�� 
)
�� 
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
track
�� 
!=
�� 
null
�� 
&&
��  
state
��! &
!=
��' )
null
��* .
&&
��/ 1
!
��2 3
state
��3 8
.
��8 9

��9 F
)
��F G
{
�� 
state
�� 
.
�� 
ArmForRecord
�� "
(
��" #
track
��# (
)
��( )
;
��) *
return
�� 
state
�� 
.
�� 
	recording
�� &
;
��& '
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 

�� *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
track
�� 
!=
�� 
null
�� 
&&
��  
state
��! &
!=
��' )
null
��* .
&&
��/ 1
!
��2 3
state
��3 8
.
��8 9

��9 F
)
��F G
state
�� 
.
�� 
UnarmForRecord
�� $
(
��$ %
track
��% *
)
��* +
;
��+ ,
}
�� 	
public
�� 
override
�� 
void
��  
OnSelectionChanged
�� /
(
��/ 0
)
��0 1
{
��2 3
}
��3 4
public
�� 
override
�� 
void
�� 
ResampleAnimation
�� .
(
��. /
)
��/ 0
{
��1 2
}
��2 3
public
�� 
override
�� 
bool
�� 
StartPreview
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
state
�� 
!=
�� 
null
�� 
)
�� 
state
�� 
.
�� 
previewMode
�� !
=
��" #
true
��$ (
;
��( )
return
�� 
state
�� 
!=
�� 
null
��  
&&
��! #
state
��$ )
.
��) *
previewMode
��* 5
;
��5 6
}
�� 	
public
�� 
override
�� 
void
�� 
StopPreview
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
state
�� 
!=
�� 
null
�� 
)
�� 
state
�� 
.
�� 
previewMode
�� !
=
��" #
false
��$ )
;
��) *
}
�� 	
public
�� 
override
�� 
void
�� 
ProcessCandidates
�� .
(
��. /
)
��/ 0
{
��1 2
}
��2 3
public
�� 
override
�� 
void
�� 
ClearCandidates
�� ,
(
��, -
)
��- .
{
��/ 0
}
��0 1
double
�� 
ToGlobalTime
�� 
(
�� 
float
�� !
	localTime
��" +
)
��+ ,
{
�� 	
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
Math
�� 
.
�� 
Max
�� 
(
��  
$num
��  !
,
��! "
m_Clip
��# )
.
��) *"
FromLocalTimeUnbound
��* >
(
��> ?
	localTime
��? H
)
��H I
)
��I J
;
��J K
return
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
$num
�� 
,
�� 

m_ClipData
�� )
.
��) *
start
��* /
+
��0 1
	localTime
��2 ;
)
��; <
;
��< =
}
�� 	
float
�� 
ToAnimationClipTime
�� !
(
��! "
double
��" (

globalTime
��) 3
)
��3 4
{
�� 	
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
(
�� 
float
�� 
)
�� 
m_Clip
�� $
.
��$ % 
ToLocalTimeUnbound
��% 7
(
��7 8

globalTime
��8 B
)
��B C
;
��C D
return
�� 
(
�� 
float
�� 
)
�� 
(
�� 

globalTime
�� %
-
��& '

m_ClipData
��( 2
.
��2 3
start
��3 8
)
��8 9
;
��9 :
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_EditorCallbacks.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
partial
class
TimelineWindow
{ 
private 
int !
m_ComponentAddedFrame )
;) *
void &
OnSelectionChangedInactive
(' (
)( )
{ 	
if 
( 
! 
hasFocus 
) 
{ 
RefreshSelection  
(  !
!! "
locked" (
&&) +
state, 1
!=2 4
null5 9
&&: <
!= >
state> C
.C D
	recordingD M
)M N
;N O
} 
} 	
void %
InitializeEditorCallbacks
(& '
)' (
{ 	
Undo 
. $
postprocessModifications )
+=* ,6
*PostprocessAnimationRecordingModifications- W
;W X
Undo 
. $
postprocessModifications )
+=* ,%
ProcessAssetModifications- F
;F G
Undo   
.   
undoRedoPerformed   "
+=  # %

OnUndoRedo  & 0
;  0 1
EditorApplication!! 
.!!  
playModeStateChanged!! 2
+=!!3 5"
OnPlayModeStateChanged!!6 L
;!!L M
AnimationUtility"" 
."" 
onCurveWasModified"" /
+=""0 2
OnCurveModified""3 B
;""B C
EditorApplication## 
.## !
editorApplicationQuit## 3
+=##4 6
OnEditorQuit##7 C
;##C D
	Selection$$ 
.$$ 
selectionChanged$$ &
+=$$' )&
OnSelectionChangedInactive$$* D
;$$D E
EditorSceneManager%% 
.%% 

sceneSaved%% )
+=%%* ,
OnSceneSaved%%- 9
;%%9 :

.&& 
componentWasAdded&& +
+=&&, .
OnComponentWasAdded&&/ B
;&&B C

.'' !
prefabInstanceUpdated'' /
+=''0 2
OnPrefabApplied''3 B
;''B C
}(( 	
void** 
OnEditorQuit**
(** 
)** 
{++ 	#
TimelineWindowViewPrefs,, #
.,,# $
SaveAll,,$ +
(,,+ ,
),,, -
;,,- .
}-- 	
void// !
RemoveEditorCallbacks//
(//" #
)//# $
{00 	
EditorApplication11 
.11  
playModeStateChanged11 2
-=113 5"
OnPlayModeStateChanged116 L
;11L M
Undo33 
.33 
undoRedoPerformed33 "
-=33# %

OnUndoRedo33& 0
;330 1
Undo44 
.44 $
postprocessModifications44 )
-=44* ,6
*PostprocessAnimationRecordingModifications44- W
;44W X
Undo55 
.55 $
postprocessModifications55 )
-=55* ,%
ProcessAssetModifications55- F
;55F G
AnimationUtility66 
.66 
onCurveWasModified66 /
-=660 2
OnCurveModified663 B
;66B C
EditorApplication77 
.77 !
editorApplicationQuit77 3
-=774 6
OnEditorQuit777 C
;77C D
	Selection88 
.88 
selectionChanged88 &
-=88' )&
OnSelectionChangedInactive88* D
;88D E
EditorSceneManager99 
.99 

sceneSaved99 )
-=99* ,
OnSceneSaved99- 9
;999 :

.:: 
componentWasAdded:: +
-=::, .
OnComponentWasAdded::/ B
;::B C

.;; !
prefabInstanceUpdated;; /
-=;;0 2
OnPrefabApplied;;3 B
;;;B C
}<< 	
void@@ 
OnPrefabApplied@@
(@@ 

GameObject@@ '
go@@( *
)@@* +
{AA 	
ifBB 
(BB 
!BB 
stateBB 
.BB 
previewModeBB "
)BB" #
returnCC 
;CC 
ifGG 
(GG 
TimeGG 
.GG 

frameCountGG 
==GG  "!
m_ComponentAddedFrameGG# 8
)GG8 9
TimelineEditorHH 
.HH 
RefreshHH &
(HH& '

.HH4 5
ContentsModifiedHH5 E
)HHE F
;HHF G
elseII 
TimelineEditorJJ 
.JJ 
RefreshJJ &
(JJ& '

.JJ4 5
SceneNeedsUpdateJJ5 E
)JJE F
;JJF G
}KK 	
voidNN 
OnSceneSavedNN
(NN 
SceneNN 
sceneNN  %
)NN% &
{OO 	
ifPP 
(PP 
statePP 
!=PP 
nullPP 
)PP 
stateQQ 
.QQ 
OnSceneSavedQQ "
(QQ" #
)QQ# $
;QQ$ %
}RR 	
voidTT 
OnCurveModifiedTT
(TT 

clipTT+ /
,TT/ 0
EditorCurveBindingTT1 C
bindingTTD K
,TTK L
AnimationUtilityTTM ]
.TT] ^
CurveModifiedTypeTT^ o
typeTTp t
)TTt u
{UU 	
InspectorWindowVV 
.VV  
RepaintAllInspectorsVV 0
(VV0 1
)VV1 2
;VV2 3
ifWW 
(WW 
stateWW 
==WW 
nullWW 
||WW  
stateWW! &
.WW& '
rebuildGraphWW' 3
)WW3 4
returnXX 
;XX 
Repaint[[ 
([[ 
)[[ 
;[[ 
if]] 
(]] 
state]] 
.]] 
previewMode]] !
==]]" $
false]]% *
)]]* +
return^^ 
;^^ 
bool`` 
hasPlayable`` 
=`` 
m_PlayableLookup`` /
.``/ 0#
GetPlayableFromAnimClip``0 G
(``G H
clip``H L
,``L M
out``N Q
Playable``R Z
playable``[ c
)``c d
;``d e
TimelineClipcc 
timelineClipcc %
=cc& '
m_PlayableLookupcc( 8
.cc8 9%
GetTimelineClipFromCurvescc9 R
(ccR S
clipccS W
)ccW X
;ccX Y
ifdd 
(dd 
timelineClipdd 
!=dd 
nulldd  $
)dd$ %
timelineClipee 
.ee 
	MarkDirtyee &
(ee& '
)ee' (
;ee( )
ifgg 
(gg 
typegg 
==gg 
AnimationUtilitygg (
.gg( )
CurveModifiedTypegg) :
.gg: ;

)ggH I
{hh 
ifii 
(ii 
hasPlayableii 
)ii  
{jj 
playablekk 
.kk !
SetAnimatedPropertieskk 2
(kk2 3
clipkk3 7
)kk7 8
;kk8 9
}ll 
AnimationUtilityoo  
.oo  !
SyncEditorCurvesoo! 1
(oo1 2
clipoo2 6
)oo6 7
;oo7 8
statepp 
.pp &
UpdateRootPlayableDurationpp 0
(pp0 1
statepp1 6
.pp6 7
editSequencepp7 C
.ppC D
durationppD L
)ppL M
;ppM N
boolrr 
isRecordingrr  
=rr! "
TimelineRecordingrr# 4
.rr4 5%
IsRecordingAnimationTrackrr5 N
;rrN O
PlayableDirectorss  
masterDirectorss! /
=ss0 1
TimelineEditorss2 @
.ss@ A
masterDirectorssA O
;ssO P
booltt 
isGraphValidtt !
=tt" #
masterDirectortt$ 2
!=tt3 5
nulltt6 :
&&tt; =
masterDirectortt> L
.ttL M

.ttZ [
IsValidtt[ b
(ttb c
)ttc d
;ttd e
ifxx 
(xx 
!xx 
isRecordingxx  
&&xx! #
isGraphValidxx$ 0
)xx0 1
stateyy 
.yy 
Evaluateyy "
(yy" #
)yy# $
;yy$ %
}zz 
else{{ 
if{{ 
({{ 

.{{" #
IsDirty{{# *
({{* +
clip{{+ /
){{/ 0
){{0 1
{|| 
state}} 
.}} 
rebuildGraph}} "
|=}}# %
timelineClip}}& 2
!=}}3 5
null}}6 :
||}}; =
hasPlayable}}> I
;}}I J
}~~ 
} 	
void
�� $
OnPlayModeStateChanged
��
(
��# $!
PlayModeStateChange
��$ 7

��8 E
)
��E F
{
�� 	
if
�� 
(
�� 

�� 
==
��  !
PlayModeStateChange
��! 4
.
��4 5
ExitingEditMode
��5 D
||
��E G

�� 
==
��  !
PlayModeStateChange
��! 4
.
��4 5
ExitingPlayMode
��5 D
)
��D E%
TimelineWindowViewPrefs
�� '
.
��' (
SaveAll
��( /
(
��/ 0
)
��0 1
;
��1 2
bool
�� %
isPlaymodeAboutToChange
�� (
=
��) *

��+ 8
==
��9 ;!
PlayModeStateChange
��< O
.
��O P
ExitingEditMode
��P _
||
��` b

��c p
==
��q s"
PlayModeStateChange��t �
.��� �
ExitingPlayMode��� �
;��� �
if
�� 
(
�� %
isPlaymodeAboutToChange
�� '
&&
��( *
state
��+ 0
!=
��1 3
null
��4 8
)
��8 9
state
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 	&
UndoPropertyModification
��  
[
��  !
]
��! "8
*PostprocessAnimationRecordingModifications
��# M
(
��M N&
UndoPropertyModification
��N f
[
��f g
]
��g h

��i v
)
��v w
{
�� 	"
DirtyModifiedObjects
��  
(
��  !

��! .
)
��. /
;
��/ 0
if
�� 
(
�� 
!
�� 
state
�� 
.
�� 
	recording
��  
)
��  !
return
�� 

�� $
;
��$ %
var
�� 
	remaining
�� 
=
�� 
TimelineRecording
�� -
.
��- .%
ProcessUndoModification
��. E
(
��E F

��F S
,
��S T
state
��U Z
)
��Z [
;
��[ \
if
�� 
(
�� 
	remaining
�� 
!=
�� 

�� *
)
��* +
{
�� 
bool
�� 
repaint
�� 
=
�� 
(
��  

��  -
==
��. 0
null
��1 5
)
��5 6
||
��7 9
(
�� 

�� "
is
��# %
InspectorWindow
��& 5
)
��5 6
||
��7 9
(
�� 

�� "
is
��# %
TimelineWindow
��& 4
)
��4 5
;
��5 6
if
�� 
(
�� 
repaint
�� 
)
�� 
Repaint
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 
	remaining
�� 
;
�� 
}
�� 	
void
�� "
DirtyModifiedObjects
��
(
��! "&
UndoPropertyModification
��" :
[
��: ;
]
��; <

��= J
)
��J K
{
�� 	
foreach
�� 
(
�� 
var
�� 
m
�� 
in
�� 

�� +
)
��+ ,
{
�� 
if
�� 
(
�� 
m
�� 
.
�� 
currentValue
�� "
==
��# %
null
��& *
||
��+ -
m
��. /
.
��/ 0
currentValue
��0 <
.
��< =
target
��= C
==
��D F
null
��G K
)
��K L
continue
�� 
;
�� 
var
�� 
track
�� 
=
�� 
m
�� 
.
�� 
currentValue
�� *
.
��* +
target
��+ 1
as
��2 4

TrackAsset
��5 ?
;
��? @
var
�� 

�� !
=
��" #
m
��$ %
.
��% &
currentValue
��& 2
.
��2 3
target
��3 9
as
��: <

��= J
;
��J K
var
�� 

editorClip
�� 
=
��  
m
��! "
.
��" #
currentValue
��# /
.
��/ 0
target
��0 6
as
��7 9

EditorClip
��: D
;
��D E
if
�� 
(
�� 
track
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
track
�� 
.
�� 
	MarkDirty
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
if
�� 
(
�� 

�� &
!=
��' )
null
��* .
)
��. /
{
�� 
var
�� 
clip
�� 
=
�� 
TimelineRecording
�� 0
.
��0 1
FindClipWithAsset
��1 B
(
��B C
state
��C H
.
��H I
editSequence
��I U
.
��U V
asset
��V [
,
��[ \

��] j
)
��j k
;
��k l
if
�� 
(
�� 
clip
�� 
!=
�� 
null
��  $
)
��$ %
clip
�� 
.
�� 
	MarkDirty
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
if
�� 
(
�� 

editorClip
�� #
!=
��$ &
null
��' +
&&
��, .

editorClip
��/ 9
.
��9 :
clip
��: >
!=
��? A
null
��B F
)
��F G
{
�� 

editorClip
�� 
.
�� 
clip
�� #
.
��# $
	MarkDirty
��$ -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 	&
UndoPropertyModification
��  
[
��  !
]
��! "'
ProcessAssetModifications
��# <
(
��< =&
UndoPropertyModification
��= U
[
��U V
]
��V W

��X e
)
��e f
{
�� 	
bool
�� 
rebuildGraph
�� 
=
�� 
false
��  %
;
��% &
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

��  -
.
��- .
Length
��. 4
&&
��5 7
!
��8 9
rebuildGraph
��9 E
;
��E F
i
��G H
++
��H J
)
��J K
{
�� 
var
�� 
mod
�� 
=
�� 

�� '
[
��' (
i
��( )
]
��) *
;
��* +
if
�� 
(
�� 
mod
�� 
.
�� 

�� %
!=
��& (
null
��) -
&&
��. 0
mod
��1 4
.
��4 5

��5 B
.
��B C
target
��C I
is
��J L

AvatarMask
��M W
)
��W X
{
�� 
rebuildGraph
��  
=
��! "
state
��# (
.
��( )
editSequence
��) 5
.
��5 6
asset
��6 ;
!=
��< >
null
��? C
&&
��D F
state
�� 
.
�� 
editSequence
�� *
.
��* +
asset
��+ 0
.
��0 1
flattenedTracks
��1 @
.
�� 
OfType
�� #
<
��# $
UnityEngine
��$ /
.
��/ 0
Timeline
��0 8
.
��8 9
AnimationTrack
��9 G
>
��G H
(
��H I
)
��I J
.
�� 
Any
��  
(
��  !
x
��! "
=>
��# %
mod
��& )
.
��) *

��* 7
.
��7 8
target
��8 >
==
��? A
x
��B C
.
��C D

avatarMask
��D N
)
��N O
;
��O P
}
�� 
}
�� 
if
�� 
(
�� 
rebuildGraph
�� 
)
�� 
{
�� 
state
�� 
.
�� 
rebuildGraph
�� "
=
��# $
true
��% )
;
��) *
Repaint
�� 
(
�� 
)
�� 
;
�� 
}
�� 
return
�� 

��  
;
��  !
}
�� 	
void
�� 

OnUndoRedo
��
(
�� 
)
�� 
{
�� 	
var
�� 
undos
�� 
=
�� 
new
�� 
List
��  
<
��  !
string
��! '
>
��' (
(
��( )
)
��) *
;
��* +
var
�� 
redos
�� 
=
�� 
new
�� 
List
��  
<
��  !
string
��! '
>
��' (
(
��( )
)
��) *
;
��* +
Undo
�� 
.
�� 

GetRecords
�� 
(
�� 
undos
�� !
,
��! "
redos
��# (
)
��( )
;
��) *
var
�� 

rebuildAll
�� 
=
�� 
redos
�� "
.
��" #
Any
��# &
(
��& '
x
��' (
=>
��) +
x
��, -
.
��- .

StartsWith
��. 8
(
��8 9
$str
��9 D
)
��D E
)
��E F
||
��G I
undos
��J O
.
��O P
Any
��P S
(
��S T
x
��T U
=>
��V X
x
��Y Z
.
��Z [

StartsWith
��[ e
(
��e f
$str
��f p
)
��p q
)
��q r
;
��r s
var
�� 
evalNow
�� 
=
�� 
redos
�� 
.
��  
Any
��  #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
Contains
��+ 3
(
��3 4
$str
��4 @
)
��@ A
)
��A B
||
��C E
undos
��F K
.
��K L
Any
��L O
(
��O P
x
��P Q
=>
��R T
x
��U V
.
��V W
Contains
��W _
(
��_ `
$str
��` l
)
��l m
)
��m n
;
��n o
if
�� 
(
�� 

rebuildAll
�� 
||
�� 
evalNow
�� %
)
��% &
{
�� 
ValidateSelection
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
state
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
if
�� 
(
�� 
evalNow
�� 
)
��  
state
�� 
.
�� 
EvaluateImmediate
�� /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� 

rebuildAll
�� "
)
��" #
state
�� 
.
�� 
Refresh
�� %
(
��% &
)
��& '
;
��' (
}
�� 
Repaint
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
static
�� 
void
�� 
ValidateSelection
�� %
(
��% &
)
��& '
{
�� 	
var
�� 

�� 
=
�� 
	Selection
��  )
.
��) *
GetFiltered
��* 5
<
��5 6

EditorClip
��6 @
>
��@ A
(
��A B

��B O
.
��O P

Unfiltered
��P Z
)
��Z [
.
��[ \
Select
��\ b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
clip
��j n
)
��n o
;
��o p
foreach
�� 
(
�� 
var
�� 
selectedClip
�� %
in
��& (

��) 6
)
��6 7
{
�� 
var
�� 
parent
�� 
=
�� 
selectedClip
�� )
.
��) *
parentTrack
��* 5
;
��5 6
if
�� 
(
�� 
selectedClip
��  
.
��  !
parentTrack
��! ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
if
�� 
(
�� 
!
�� 
parent
�� 
.
��  
clips
��  %
.
��% &
Contains
��& .
(
��. /
selectedClip
��/ ;
)
��; <
)
��< =
{
�� 
SelectionManager
�� (
.
��( )
Remove
��) /
(
��/ 0
selectedClip
��0 <
)
��< =
;
��= >
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� !
OnComponentWasAdded
��
(
��  !
	Component
��! *
c
��+ ,
)
��, -
{
�� 	#
m_ComponentAddedFrame
�� !
=
��" #
Time
��$ (
.
��( )

frameCount
��) 3
;
��3 4
var
�� 
go
�� 
=
�� 
c
�� 
.
�� 

gameObject
�� !
;
��! "
foreach
�� 
(
�� 
var
�� 
seq
�� 
in
�� 
state
��  %
.
��% &
GetAllSequences
��& 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
if
�� 
(
�� 
seq
�� 
.
�� 
director
��  
==
��! #
null
��$ (
||
��) +
seq
��, /
.
��/ 0
asset
��0 5
==
��6 8
null
��9 =
)
��= >
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
rebind
�� 
=
�� 
seq
��  
.
��  !
asset
��! &
.
��& '
GetOutputTracks
��' 6
(
��6 7
)
��7 8
.
��8 9
Any
��9 <
(
��< =
track
��= B
=>
��C E
seq
��F I
.
��I J
director
��J R
.
��R S
GetGenericBinding
��S d
(
��d e
track
��e j
)
��j k
==
��l n
go
��o q
)
��q r
;
��r s
if
�� 
(
�� 
rebind
�� 
||
�� 
seq
�� !
.
��! "
director
��" *
.
��* +

gameObject
��+ 5
==
��6 8
go
��9 ;
)
��; <
{
�� 
seq
�� 
.
�� 
director
��  
.
��  !(
RebindPlayableGraphOutputs
��! ;
(
��; <
)
��< =
;
��= >
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �K
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Trim\TrimItemModeRipple.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
TrimItemModeRipple
 
: 

,, -
ITrimItemDrawer. =
{		 
double

 
m_OriginalClipStart

 "
;

" #
double 
m_OriginalClipEnd  
;  !

ITrimmable
[
]
m_NextItems
;
double 
m_BlendDuration 
; 
double 
m_TrimStartShift 
;  
public 
void 
OnBeforeTrim  
(  !

ITrimmable! +
item, 0
,0 1
TrimEdge2 :

)H I
{ 	
m_OriginalClipStart 
=  !
item" &
.& '
start' ,
;, -
m_OriginalClipEnd 
= 
item  $
.$ %
end% (
;( )
m_TrimStartShift 
= 
$num "
;" #
var 
sortedClips 
= 

ItemsUtils (
.( )
GetItemsExcept) 7
(7 8
item8 <
.< =
parentTrack= H
,H I
newJ M
[M N
]N O
{P Q
itemR V
}W X
)X Y
. 
OfType 
< 

ITrimmable "
>" #
(# $
)$ %
. 
OrderBy 
( 
c 
=> 
c 
.  
start  %
)% &
;& '
var 
	clipStart 
= 
( 
DiscreteTime )
)) *
item* .
.. /
start/ 4
;4 5
var 
clipEnd 
= 
( 
DiscreteTime '
)' (
item( ,
., -
end- 0
;0 1
m_NextItems   
=   
sortedClips   %
.  % &
Where  & +
(  + ,
c  , -
=>  . 0
(  1 2
DiscreteTime  2 >
)  > ?
c  ? @
.  @ A
start  A F
>=  G I
	clipStart  J S
&&  T V
(  W X
DiscreteTime  X d
)  d e
c  e f
.  f g
end  g j
>=  k m
clipEnd  n u
)  u v
.  v w
ToArray  w ~
(  ~ 
)	   �
;
  � �
var"" 

overlapped"" 
="" 
sortedClips"" (
.""( )

(""6 7
c""7 8
=>""9 ;
(""< =
DiscreteTime""= I
)""I J
c""J K
.""K L
start""L Q
==""R T
	clipStart""U ^
&&""_ a
(""b c
DiscreteTime""c o
)""o p
c""p q
.""q r
end""r u
==""v x
clipEnd	""y �
)
""� �
;
""� �
if$$ 
($$ 

overlapped$$ 
!=$$ 
null$$ "
)$$" #
{%% 
m_BlendDuration&& 
=&&  !

overlapped&&" ,
.&&, -
end&&- 0
-&&1 2

overlapped&&3 =
.&&= >
start&&> C
;&&C D
}'' 
else(( 
{)) 
m_BlendDuration** 
=**  !
$num**" %
;**% &
var,, 
prevClip,, 
=,, 
sortedClips,, *
.,,* +

(,,8 9
c,,9 :
=>,,; =
(,,> ?
DiscreteTime,,? K
),,K L
c,,L M
.,,M N
start,,N S
<=,,T V
	clipStart,,W `
&&,,a c
(,,d e
DiscreteTime,,e q
),,q r
c,,r s
.,,s t
end,,t w
<=,,x z
clipEnd	,,{ �
)
,,� �
;
,,� �
if-- 
(-- 
prevClip-- 
!=-- 
null--  $
)--$ %
m_BlendDuration.. #
+=..$ &
Math..' +
...+ ,
Max.., /
(../ 0
prevClip..0 8
...8 9
end..9 <
-..= >
item..? C
...C D
start..D I
,..I J
$num..K N
)..N O
;..O P
var00 
nextClip00 
=00 
sortedClips00 *
.00* +
FirstOrDefault00+ 9
(009 :
c00: ;
=>00< >
(00? @
DiscreteTime00@ L
)00L M
c00M N
.00N O
start00O T
>=00U W
	clipStart00X a
&&00b d
(00e f
DiscreteTime00f r
)00r s
c00s t
.00t u
end00u x
>=00y {
clipEnd	00| �
)
00� �
;
00� �
if11 
(11 
nextClip11 
!=11 
null11  $
)11$ %
m_BlendDuration22 #
+=22$ &
Math22' +
.22+ ,
Max22, /
(22/ 0
item220 4
.224 5
end225 8
-229 :
nextClip22; C
.22C D
start22D I
,22I J
$num22K N
)22N O
;22O P
}33 
}44 	
public66 
void66 
	TrimStart66 
(66 

ITrimmable66 (
item66) -
,66- .
double66/ 5
time666 :
,66: ;
bool66< @
affectTimeScale66A P
)66P Q
{77 	
var88 
prevEnd88 
=88 
item88 
.88 
end88 "
;88" #
if;; 
(;; 
time;; 
<;; 
$num;; 
);; 
m_TrimStartShift<<  
=<<! "
Math<<# '
.<<' (
Max<<( +
(<<+ ,
-<<, -
time<<- 1
,<<1 2
m_TrimStartShift<<3 C
)<<C D
;<<D E
item>> 
.>> 
start>> 
=>> 
m_OriginalClipEnd>> *
->>+ ,
item>>- 1
.>>1 2
duration>>2 :
+>>; <
m_TrimStartShift>>= M
;>>M N
time?? 
+=?? 
m_TrimStartShift?? $
;??$ %
ifAA 
(AA 
m_BlendDurationAA 
>AA  !
$numAA" %
)AA% &
timeBB 
=BB 
MathBB 
.BB 
MinBB 
(BB  
timeBB  $
,BB$ %
itemBB& *
.BB* +
endBB+ .
-BB/ 0
m_BlendDurationBB1 @
)BB@ A
;BBA B
itemDD 
.DD 
SetStartDD 
(DD 
timeDD 
,DD 
affectTimeScaleDD  /
)DD/ 0
;DD0 1
itemFF 
.FF 
startFF 
=FF 
m_OriginalClipStartFF ,
;FF, -
varHH 
offsetHH 
=HH 
itemHH 
.HH 
endHH !
-HH" #
prevEndHH$ +
;HH+ ,
foreachII 
(II 
varII 
timelineClipII %
inII& (
m_NextItemsII) 4
)II4 5
timelineClipJJ 
.JJ 
startJJ "
+=JJ# %
offsetJJ& ,
;JJ, -
}KK 	
publicMM 
voidMM 
TrimEndMM 
(MM 

ITrimmableMM &
itemMM' +
,MM+ ,
doubleMM- 3
timeMM4 8
,MM8 9
boolMM: >
affectTimeScaleMM? N
)MMN O
{NN 	
varOO 
prevEndOO 
=OO 
itemOO 
.OO 
endOO "
;OO" #
ifQQ 
(QQ 
m_BlendDurationQQ 
>QQ  !
$numQQ" %
)QQ% &
timeRR 
=RR 
MathRR 
.RR 
MaxRR 
(RR  
timeRR  $
,RR$ %
itemRR& *
.RR* +
startRR+ 0
+RR1 2
m_BlendDurationRR3 B
)RRB C
;RRC D
itemTT 
.TT 
SetEndTT 
(TT 
timeTT 
,TT 
affectTimeScaleTT -
)TT- .
;TT. /
varVV 
offsetVV 
=VV 
itemVV 
.VV 
endVV !
-VV" #
prevEndVV$ +
;VV+ ,
foreachWW 
(WW 
varWW 
timelineClipWW %
inWW& (
m_NextItemsWW) 4
)WW4 5
timelineClipXX 
.XX 
startXX "
+=XX# %
offsetXX& ,
;XX, -
}YY 	
public[[ 
void[[ 
DrawGUI[[ 
([[ 
WindowState[[ '
state[[( -
,[[- .
Rect[[/ 3
bounds[[4 :
,[[: ;
Color[[< A
color[[B G
,[[G H
TrimEdge[[I Q
edge[[R V
)[[V W
{\\ 	
EditModeGUIUtils]] 
.]] 
DrawBoundsEdge]] +
(]]+ ,
bounds]], 2
,]]2 3
color]]4 9
,]]9 :
edge]]; ?
)]]? @
;]]@ A
TimelineCursors^^ 
.^^ 
	SetCursor^^ %
(^^% &
TimelineCursors^^& 5
.^^5 6

CursorType^^6 @
.^^@ A
Ripple^^A G
)^^G H
;^^H I
}__ 	
}`` 
}aa �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Utils\PlacementValidity.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
enum 
PlacementValidity	 
{ 
Valid 
,
InvalidContains 
, 
InvalidIsWithin 
,  
InvalidStartsInBlend 
, 
InvalidEndsInBlend		 
,		  
InvalidContainsBlend

 
,

 .
"InvalidOverlapWithNonBlendableClip *
} 
}
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Animation\AnimationClipCurveCache.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
struct		 

CurveBindingPair		 
{

 
public 
EditorCurveBinding !
binding" )
;) *
public 
AnimationCurve 
curve #
;# $
public
ObjectReferenceKeyframe
[
]
objectCurve
;
} 
class 	
CurveBindingGroup
 
{ 
public 
CurveBindingPair 
[  
]  !
curveBindingPairs" 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
Vector2 
	timeRange  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Vector2 

valueRange !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
isFloatCurve  
{ 	
get 
{ 
return 
curveBindingPairs (
!=) +
null, 0
&&1 3
curveBindingPairs4 E
.E F
LengthF L
>M N
$numO P
&&Q S
curveBindingPairs %
[% &
$num& '
]' (
.( )
curve) .
!=/ 1
null2 6
;6 7
} 
} 	
public 
bool 

{   	
get!! 
{"" 
return## 
curveBindingPairs## (
!=##) +
null##, 0
&&##1 3
curveBindingPairs##4 E
.##E F
Length##F L
>##M N
$num##O P
&&##Q S
curveBindingPairs$$ %
[$$% &
$num$$& '
]$$' (
.$$( )
objectCurve$$) 4
!=$$5 7
null$$8 <
;$$< =
}%% 
}&& 	
public(( 
int(( 
count(( 
{)) 	
get** 
{++ 
if,, 
(,, 
curveBindingPairs,, %
==,,& (
null,,) -
),,- .
return-- 
$num-- 
;-- 
return.. 
curveBindingPairs.. (
...( )
Length..) /
;../ 0
}// 
}00 	
}11 
class33 	"
AnimationClipCurveInfo33
  
{44 
bool55 
m_CurveDirty55
=55 
true55  
;55  !
bool66 
m_KeysDirty66
=66 
true66 
;66  
public88 
bool88 
dirty88 
{99 	
get:: 
{:: 
return:: 
m_CurveDirty:: %
;::% &
}::' (
set;; 
{<< 
m_CurveDirty== 
=== 
value== $
;==$ %
if>> 
(>> 
m_CurveDirty>>  
)>>  !
{?? 
m_KeysDirty@@ 
=@@  !
true@@" &
;@@& '
ifAA 
(AA 
m_groupingsAA #
!=AA$ &
nullAA' +
)AA+ ,
m_groupingsBB #
.BB# $
ClearBB$ )
(BB) *
)BB* +
;BB+ ,
}CC 
}DD 
}EE 	
publicGG 
AnimationCurveGG 
[GG 
]GG 
curvesGG  &
;GG& '
publicHH 
EditorCurveBindingHH !
[HH! "
]HH" #
bindingsHH$ ,
;HH, -
publicJJ 
EditorCurveBindingJJ !
[JJ! "
]JJ" #
objectBindingsJJ$ 2
;JJ2 3
publicKK 
ListKK 
<KK #
ObjectReferenceKeyframeKK +
[KK+ ,
]KK, -
>KK- .
objectCurvesKK/ ;
;KK; <

DictionaryMM 
<MM 
stringMM 
,MM 
CurveBindingGroupMM ,
>MM, -
m_groupingsMM. 9
;MM9 :
publicPP 
intPP 
versionPP 
{PP 
getPP  
;PP  !
privatePP" )
setPP* -
;PP- .
}PP/ 0
floatRR 
[RR
]RR 

m_KeyTimesRR 
;RR 

DictionaryTT 
<TT 
EditorCurveBindingTT %
,TT% &
floatTT' ,
[TT, -
]TT- .
>TT. /"
m_individualBindinsKeyTT0 F
;TTF G
publicVV 
floatVV 
[VV 
]VV 
keyTimesVV 
{WW 	
getXX 
{YY 
ifZZ 
(ZZ 
m_KeysDirtyZZ 
||ZZ  "

m_KeyTimesZZ# -
==ZZ. 0
nullZZ1 5
)ZZ5 6
{[[ 
RebuildKeyCache\\ #
(\\# $
)\\$ %
;\\% &
}]] 
return^^ 

m_KeyTimes^^ !
;^^! "
}__ 
}`` 	
publicbb 
floatbb 
[bb 
]bb 

(bb$ %
EditorCurveBindingbb% 7
curvebb8 =
)bb= >
{cc 	
returndd 

(dd  !
newdd! $
[dd$ %
]dd% &
{dd' (
curvedd) .
}dd/ 0
)dd0 1
;dd1 2
}ee 	
publicgg 
floatgg 
[gg 
]gg 

(gg$ %
EditorCurveBindinggg% 7
[gg7 8
]gg8 9
curvesgg: @
)gg@ A
{hh 	
ifii 
(ii 
m_KeysDirtyii 
||ii 

m_KeyTimesii )
==ii* ,
nullii- 1
)ii1 2
{jj 
RebuildKeyCachekk 
(kk  
)kk  !
;kk! "
}ll 
varnn 
keyTimesnn 
=nn 
newnn 
Listnn #
<nn# $
floatnn$ )
>nn) *
(nn* +
)nn+ ,
;nn, -
foroo 
(oo 
intoo 
ioo 
=oo 
$numoo 
;oo 
ioo 
<oo 
curvesoo  &
.oo& '
Lengthoo' -
;oo- .
ioo/ 0
++oo0 2
)oo2 3
{pp 
varqq 
cqq 
=qq 
curvesqq 
[qq 
iqq  
]qq  !
;qq! "
ifrr 
(rr "
m_individualBindinsKeyrr *
.rr* +
ContainsKeyrr+ 6
(rr6 7
crr7 8
)rr8 9
)rr9 :
{ss 
keyTimestt 
.tt 
AddRangett %
(tt% &"
m_individualBindinsKeytt& <
[tt< =
ctt= >
]tt> ?
)tt? @
;tt@ A
}uu 
}vv 
returnww 
keyTimesww 
.ww 
ToArrayww #
(ww# $
)ww$ %
;ww% &
}xx 	
voidzz 
RebuildKeyCachezz
(zz 
)zz 
{{{ 	"
m_individualBindinsKey|| "
=||# $
new||% (

Dictionary||) 3
<||3 4
EditorCurveBinding||4 F
,||F G
float||H M
[||M N
]||N O
>||O P
(||P Q
)||Q R
;||R S
List~~ 
<~~ 
float~~ 
>~~ 
keys~~ 
=~~ 
curves~~ %
.~~% &

SelectMany~~& 0
(~~0 1
y~~1 2
=>~~3 5
y~~6 7
.~~7 8
keys~~8 <
)~~< =
.~~= >
Select~~> D
(~~D E
z~~E F
=>~~G I
z~~J K
.~~K L
time~~L P
)~~P Q
.~~Q R
ToList~~R X
(~~X Y
)~~Y Z
;~~Z [
for 
( 
int 
i 
= 
$num 
; 
i 
< 
objectCurves  ,
., -
Count- 2
;2 3
i4 5
++5 7
)7 8
{
�� 
var
�� 
kf
�� 
=
�� 
objectCurves
�� %
[
��% &
i
��& '
]
��' (
;
��( )
keys
�� 
.
�� 
AddRange
�� 
(
�� 
kf
��  
.
��  !
Select
��! '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /
time
��/ 3
)
��3 4
)
��4 5
;
��5 6
}
�� 
for
�� 
(
�� 
int
�� 
b
�� 
=
�� 
$num
�� 
;
�� 
b
�� 
<
�� 
bindings
��  (
.
��( )
Count
��) .
(
��. /
)
��/ 0
;
��0 1
b
��2 3
++
��3 5
)
��5 6
{
�� 
m_individualBindinsKey
�� &
.
��& '
Add
��' *
(
��* +
bindings
��+ 3
[
��3 4
b
��4 5
]
��5 6
,
��6 7
curves
��8 >
[
��> ?
b
��? @
]
��@ A
.
��A B
keys
��B F
.
��F G
Select
��G M
(
��M N
k
��N O
=>
��P R
k
��S T
.
��T U
time
��U Y
)
��Y Z
.
��Z [
Distinct
��[ c
(
��c d
)
��d e
.
��e f
ToArray
��f m
(
��m n
)
��n o
)
��o p
;
��p q
}
�� 

m_KeyTimes
�� 
=
�� 
keys
�� 
.
�� 
OrderBy
�� %
(
��% &
x
��& '
=>
��( *
x
��+ ,
)
��, -
.
��- .
Distinct
��. 6
(
��6 7
)
��7 8
.
��8 9
ToArray
��9 @
(
��@ A
)
��A B
;
��B C
m_KeysDirty
�� 
=
�� 
false
�� 
;
��  
}
�� 	
public
�� 
void
�� 
Update
�� 
(
�� 

�� (
clip
��) -
)
��- .
{
�� 	
List
�� 
<
��  
EditorCurveBinding
�� #
>
��# $

postfilter
��% /
=
��0 1
new
��2 5
List
��6 :
<
��: ; 
EditorCurveBinding
��; M
>
��M N
(
��N O
)
��O P
;
��P Q
var
�� 
clipBindings
�� 
=
�� 
AnimationUtility
�� /
.
��/ 0
GetCurveBindings
��0 @
(
��@ A
clip
��A E
)
��E F
;
��F G
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
clipBindings
��  ,
.
��, -
Length
��- 3
;
��3 4
i
��5 6
++
��6 8
)
��8 9
{
�� 
var
�� 
bind
�� 
=
�� 
clipBindings
�� '
[
��' (
i
��( )
]
��) *
;
��* +
if
�� 
(
�� 
!
�� 
bind
�� 
.
�� 
propertyName
�� &
.
��& '
Contains
��' /
(
��/ 0
$str
��0 A
)
��A B
)
��B C

postfilter
�� 
.
�� 
Add
�� "
(
��" #(
RotationCurveInterpolation
��# =
.
��= >4
&RemapAnimationBindingForRotationCurves
��> d
(
��d e
bind
��e i
,
��i j
clip
��k o
)
��o p
)
��p q
;
��q r
}
�� 
bindings
�� 
=
�� 

postfilter
�� !
.
��! "
ToArray
��" )
(
��) *
)
��* +
;
��+ ,
curves
�� 
=
�� 
new
�� 
AnimationCurve
�� '
[
��' (
bindings
��( 0
.
��0 1
Length
��1 7
]
��7 8
;
��8 9
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
bindings
��  (
.
��( )
Length
��) /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
curves
�� 
[
�� 
i
�� 
]
�� 
=
�� 
AnimationUtility
�� ,
.
��, -
GetEditorCurve
��- ;
(
��; <
clip
��< @
,
��@ A
bindings
��B J
[
��J K
i
��K L
]
��L M
)
��M N
;
��N O
}
�� 
objectBindings
�� 
=
�� 
AnimationUtility
�� -
.
��- .-
GetObjectReferenceCurveBindings
��. M
(
��M N
clip
��N R
)
��R S
;
��S T
objectCurves
�� 
=
�� 
new
�� 
List
�� #
<
��# $%
ObjectReferenceKeyframe
��$ ;
[
��; <
]
��< =
>
��= >
(
��> ?
objectBindings
��? M
.
��M N
Length
��N T
)
��T U
;
��U V
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
objectBindings
��  .
.
��. /
Length
��/ 5
;
��5 6
i
��7 8
++
��8 :
)
��: ;
{
�� 
objectCurves
�� 
.
�� 
Add
��  
(
��  !
AnimationUtility
��! 1
.
��1 2%
GetObjectReferenceCurve
��2 I
(
��I J
clip
��J N
,
��N O
objectBindings
��P ^
[
��^ _
i
��_ `
]
��` a
)
��a b
)
��b c
;
��c d
}
�� 
m_CurveDirty
�� 
=
�� 
false
��  
;
��  !
m_KeysDirty
�� 
=
�� 
true
�� 
;
�� 
version
�� 
=
�� 
version
�� 
+
�� 
$num
��  !
;
��! "
}
�� 	
public
�� 
bool
��  
GetBindingForCurve
�� &
(
��& '
AnimationCurve
��' 5
curve
��6 ;
,
��; <
ref
��= @ 
EditorCurveBinding
��A S
binding
��T [
)
��[ \
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
curves
��  &
.
��& '
Length
��' -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
if
�� 
(
�� 
curve
�� 
==
�� 
curves
�� #
[
��# $
i
��$ %
]
��% &
)
��& '
{
�� 
binding
�� 
=
�� 
bindings
�� &
[
��& '
i
��' (
]
��( )
;
��) *
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
AnimationCurve
��  
GetCurveForBinding
�� 0
(
��0 1 
EditorCurveBinding
��1 C
binding
��D K
)
��K L
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
curves
��  &
.
��& '
Length
��' -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
if
�� 
(
�� 
binding
�� 
.
�� 
Equals
�� "
(
��" #
bindings
��# +
[
��+ ,
i
��, -
]
��- .
)
��. /
)
��/ 0
{
�� 
return
�� 
curves
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
}
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� %
ObjectReferenceKeyframe
�� &
[
��& '
]
��' (&
GetObjectCurveForBinding
��) A
(
��A B 
EditorCurveBinding
��B T
binding
��U \
)
��\ ]
{
�� 	
if
�� 
(
�� 
objectCurves
�� 
==
�� 
null
��  $
)
��$ %
return
�� 
null
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
objectCurves
��  ,
.
��, -
Count
��- 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
if
�� 
(
�� 
binding
�� 
.
�� 
Equals
�� "
(
��" #
objectBindings
��# 1
[
��1 2
i
��2 3
]
��3 4
)
��4 5
)
��5 6
{
�� 
return
�� 
objectCurves
�� '
[
��' (
i
��( )
]
��) *
;
��* +
}
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
CurveBindingGroup
��  
GetGroupBinding
��! 0
(
��0 1
string
��1 7
groupID
��8 ?
)
��? @
{
�� 	
if
�� 
(
�� 
m_groupings
�� 
==
�� 
null
�� #
)
��# $
m_groupings
�� 
=
�� 
new
�� !

Dictionary
��" ,
<
��, -
string
��- 3
,
��3 4
CurveBindingGroup
��5 F
>
��F G
(
��G H
)
��H I
;
��I J
CurveBindingGroup
�� 
result
�� $
=
��% &
null
��' +
;
��+ ,
if
�� 
(
�� 
!
�� 
m_groupings
�� 
.
�� 
TryGetValue
�� (
(
��( )
groupID
��) 0
,
��0 1
out
��2 5
result
��6 <
)
��< =
)
��= >
{
�� 
result
�� 
=
�� 
new
�� 
CurveBindingGroup
�� .
(
��. /
)
��/ 0
;
��0 1
result
�� 
.
�� 
	timeRange
��  
=
��! "
new
��# &
Vector2
��' .
(
��. /
float
��/ 4
.
��4 5
MaxValue
��5 =
,
��= >
float
��? D
.
��D E
MinValue
��E M
)
��M N
;
��N O
result
�� 
.
�� 

valueRange
�� !
=
��" #
new
��$ '
Vector2
��( /
(
��/ 0
float
��0 5
.
��5 6
MaxValue
��6 >
,
��> ?
float
��@ E
.
��E F
MinValue
��F N
)
��N O
;
��O P
List
�� 
<
�� 
CurveBindingPair
�� %
>
��% &
found
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
CurveBindingPair
��8 H
>
��H I
(
��I J
)
��J K
;
��K L
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
bindings
��$ ,
.
��, -
Length
��- 3
;
��3 4
i
��5 6
++
��6 8
)
��8 9
{
�� 
if
�� 
(
�� 
bindings
��  
[
��  !
i
��! "
]
��" #
.
��# $

GetGroupID
��$ .
(
��. /
)
��/ 0
==
��1 3
groupID
��4 ;
)
��; <
{
�� 
CurveBindingPair
�� (
pair
��) -
=
��. /
new
��0 3
CurveBindingPair
��4 D
(
��D E
)
��E F
;
��F G
pair
�� 
.
�� 
binding
�� $
=
��% &
bindings
��' /
[
��/ 0
i
��0 1
]
��1 2
;
��2 3
pair
�� 
.
�� 
curve
�� "
=
��# $
curves
��% +
[
��+ ,
i
��, -
]
��- .
;
��. /
found
�� 
.
�� 
Add
�� !
(
��! "
pair
��" &
)
��& '
;
��' (
for
�� 
(
�� 
int
��  
k
��! "
=
��# $
$num
��% &
;
��& '
k
��( )
<
��* +
curves
��, 2
[
��2 3
i
��3 4
]
��4 5
.
��5 6
keys
��6 :
.
��: ;
Length
��; A
;
��A B
k
��C D
++
��D F
)
��F G
{
�� 
var
�� 
key
��  #
=
��$ %
curves
��& ,
[
��, -
i
��- .
]
��. /
.
��/ 0
keys
��0 4
[
��4 5
k
��5 6
]
��6 7
;
��7 8
result
�� "
.
��" #
	timeRange
��# ,
=
��- .
new
��/ 2
Vector2
��3 :
(
��: ;
Mathf
��; @
.
��@ A
Min
��A D
(
��D E
key
��E H
.
��H I
time
��I M
,
��M N
result
��O U
.
��U V
	timeRange
��V _
.
��_ `
x
��` a
)
��a b
,
��b c
Mathf
��d i
.
��i j
Max
��j m
(
��m n
key
��n q
.
��q r
time
��r v
,
��v w
result
��x ~
.
��~ 
	timeRange�� �
.��� �
y��� �
)��� �
)��� �
;��� �
result
�� "
.
��" #

valueRange
��# -
=
��. /
new
��0 3
Vector2
��4 ;
(
��; <
Mathf
��< A
.
��A B
Min
��B E
(
��E F
key
��F I
.
��I J
value
��J O
,
��O P
result
��Q W
.
��W X

valueRange
��X b
.
��b c
x
��c d
)
��d e
,
��e f
Mathf
��g l
.
��l m
Max
��m p
(
��p q
key
��q t
.
��t u
value
��u z
,
��z {
result��| �
.��� �

valueRange��� �
.��� �
y��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
objectBindings
��$ 2
.
��2 3
Length
��3 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
if
�� 
(
�� 
objectBindings
�� &
[
��& '
i
��' (
]
��( )
.
��) *

GetGroupID
��* 4
(
��4 5
)
��5 6
==
��7 9
groupID
��: A
)
��A B
{
�� 
CurveBindingPair
�� (
pair
��) -
=
��. /
new
��0 3
CurveBindingPair
��4 D
(
��D E
)
��E F
;
��F G
pair
�� 
.
�� 
binding
�� $
=
��% &
objectBindings
��' 5
[
��5 6
i
��6 7
]
��7 8
;
��8 9
pair
�� 
.
�� 
objectCurve
�� (
=
��) *
objectCurves
��+ 7
[
��7 8
i
��8 9
]
��9 :
;
��: ;
found
�� 
.
�� 
Add
�� !
(
��! "
pair
��" &
)
��& '
;
��' (
for
�� 
(
�� 
int
��  
k
��! "
=
��# $
$num
��% &
;
��& '
k
��( )
<
��* +
objectCurves
��, 8
[
��8 9
i
��9 :
]
��: ;
.
��; <
Length
��< B
;
��B C
k
��D E
++
��E G
)
��G H
{
�� 
var
�� 
key
��  #
=
��$ %
objectCurves
��& 2
[
��2 3
i
��3 4
]
��4 5
[
��5 6
k
��6 7
]
��7 8
;
��8 9
result
�� "
.
��" #
	timeRange
��# ,
=
��- .
new
��/ 2
Vector2
��3 :
(
��: ;
Mathf
��; @
.
��@ A
Min
��A D
(
��D E
key
��E H
.
��H I
time
��I M
,
��M N
result
��O U
.
��U V
	timeRange
��V _
.
��_ `
x
��` a
)
��a b
,
��b c
Mathf
��d i
.
��i j
Max
��j m
(
��m n
key
��n q
.
��q r
time
��r v
,
��v w
result
��x ~
.
��~ 
	timeRange�� �
.��� �
y��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
result
�� 
.
�� 
curveBindingPairs
�� (
=
��) *
found
��+ 0
.
��0 1
OrderBy
��1 8
(
��8 9
x
��9 :
=>
��; =$
AnimationWindowUtility
��> T
.
��T U
GetComponentIndex
��U f
(
��f g
x
��g h
.
��h i
binding
��i p
.
��p q
propertyName
��q }
)
��} ~
)
��~ 
.�� �
ToArray��� �
(��� �
)��� �
;��� �
m_groupings
�� 
.
�� 
Add
�� 
(
��  
groupID
��  '
,
��' (
result
��) /
)
��/ 0
;
��0 1
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
class
�� 	%
AnimationClipCurveCache
��
 !
{
�� 
static
�� %
AnimationClipCurveCache
�� &

s_Instance
��' 1
;
��1 2

Dictionary
�� 
<
�� 

��  
,
��  !$
AnimationClipCurveInfo
��" 8
>
��8 9
m_ClipCache
��: E
=
��F G
new
��H K

Dictionary
��L V
<
��V W

��W d
,
��d e$
AnimationClipCurveInfo
��f |
>
��| }
(
��} ~
)
��~ 
;�� �
bool
�� 
m_IsEnabled
��
;
�� 
public
�� 
static
�� %
AnimationClipCurveCache
�� -
Instance
��. 6
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 

s_Instance
�� 
==
�� !
null
��" &
)
��& '
{
�� 

s_Instance
�� 
=
��  
new
��! $%
AnimationClipCurveCache
��% <
(
��< =
)
��= >
;
��> ?
}
�� 
return
�� 

s_Instance
�� !
;
��! "
}
�� 
}
�� 	
public
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
m_IsEnabled
�� 
)
�� 
{
�� 
AnimationUtility
��  
.
��  ! 
onCurveWasModified
��! 3
+=
��4 6 
OnCurveWasModified
��7 I
;
��I J
m_IsEnabled
�� 
=
�� 
true
�� "
;
��" #
}
�� 
}
�� 	
public
�� 
void
�� 
	OnDisable
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_IsEnabled
�� 
)
�� 
{
�� 
AnimationUtility
��  
.
��  ! 
onCurveWasModified
��! 3
-=
��4 6 
OnCurveWasModified
��7 I
;
��I J
m_IsEnabled
�� 
=
�� 
false
�� #
;
��# $
}
�� 
}
�� 	
void
��  
OnCurveWasModified
��
(
��  

��  -
clip
��. 2
,
��2 3 
EditorCurveBinding
��4 F
binding
��G N
,
��N O
AnimationUtility
��P `
.
��` a
CurveModifiedType
��a r
modification
��s 
)�� �
{
�� 	$
AnimationClipCurveInfo
�� "
data
��# '
;
��' (
if
�� 
(
�� 
m_ClipCache
�� 
.
�� 
TryGetValue
�� '
(
��' (
clip
��( ,
,
��, -
out
��. 1
data
��2 6
)
��6 7
)
��7 8
{
�� 
data
�� 
.
�� 
dirty
�� 
=
�� 
true
�� !
;
��! "
}
�� 
}
�� 	
public
�� $
AnimationClipCurveInfo
�� %
GetCurveInfo
��& 2
(
��2 3

��3 @
clip
��A E
)
��E F
{
�� 	$
AnimationClipCurveInfo
�� "
data
��# '
;
��' (
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_ClipCache
�� 
.
�� 
TryGetValue
�� (
(
��( )
clip
��) -
,
��- .
out
��/ 2
data
��3 7
)
��7 8
)
��8 9
{
�� 
data
�� 
=
�� 
new
�� $
AnimationClipCurveInfo
�� 1
(
��1 2
)
��2 3
;
��3 4
data
�� 
.
�� 
dirty
�� 
=
�� 
true
�� !
;
��! "
m_ClipCache
�� 
[
�� 
clip
��  
]
��  !
=
��" #
data
��$ (
;
��( )
}
�� 
if
�� 
(
�� 
data
�� 
.
�� 
dirty
�� 
)
�� 
{
�� 
data
�� 
.
�� 
Update
�� 
(
�� 
clip
��  
)
��  !
;
��! "
}
�� 
return
�� 
data
�� 
;
�� 
}
�� 	
public
�� 
void
�� #
ClearCachedProxyClips
�� )
(
��) *
)
��* +
{
�� 	
var
�� 
toRemove
�� 
=
�� 
new
�� 
List
�� #
<
��# $

��$ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
entry
�� 
in
�� !
m_ClipCache
��" -
)
��- .
{
�� 
var
�� 
clip
�� 
=
�� 
entry
��  
.
��  !
Key
��! $
;
��$ %
if
�� 
(
�� 
clip
�� 
!=
�� 
null
��  
&&
��! #
(
��$ %
clip
��% )
.
��) *
	hideFlags
��* 3
&
��4 5
	HideFlags
��6 ?
.
��? @
HideAndDontSave
��@ O
)
��O P
==
��Q S
	HideFlags
��T ]
.
��] ^
HideAndDontSave
��^ m
)
��m n
toRemove
�� 
.
�� 
Add
��  
(
��  !
clip
��! %
)
��% &
;
��& '
}
�� 
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
toRemove
��! )
)
��) *
{
�� 
m_ClipCache
�� 
.
�� 
Remove
�� "
(
��" #
clip
��# '
)
��' (
;
��( )
Object
�� 
.
�� 
DestroyImmediate
�� '
(
��' (
clip
��( ,
,
��, -
true
��. 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
public
�� 
void
�� 
Clear
�� 
(
�� 
)
�� 
{
�� 	#
ClearCachedProxyClips
�� !
(
��! "
)
��" #
;
��# $
m_ClipCache
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
}
�� 	
}
�� 
static
�� 

class
�� )
EditorCurveBindingExtension
�� ,
{
�� 
public
�� 
static
�� 
string
�� 

GetGroupID
�� '
(
��' (
this
��( , 
EditorCurveBinding
��- ?
binding
��@ G
)
��G H
{
�� 	
return
�� 
binding
�� 
.
�� 
type
�� 
+
��  !$
AnimationWindowUtility
��" 8
.
��8 9"
GetPropertyGroupName
��9 M
(
��M N
binding
��N U
.
��U V
propertyName
��V b
)
��b c
;
��c d
}
�� 	
}
�� 
static
�� 

class
�� )
CurveBindingGroupExtensions
�� ,
{
�� 
public
�� 
static
�� 
bool
�� 

�� (
(
��( )
this
��) -
CurveBindingGroup
��. ?
curves
��@ F
)
��F G
{
�� 	
return
�� 
curves
�� 
.
�� 
isFloatCurve
�� &
&&
��' )
curves
��* 0
.
��0 1
count
��1 6
==
��7 9
$num
��: ;
&&
��< >
curves
��? E
.
��E F
curveBindingPairs
��F W
[
��W X
$num
��X Y
]
��Y Z
.
��Z [
binding
��[ b
.
��b c
propertyName
��c o
==
��p r
$str
��s ~
;
��~ 
}
�� 	
public
�� 
static
�� 
bool
�� 

�� (
(
��( )
this
��) -
CurveBindingGroup
��. ?
curves
��@ F
)
��F G
{
�� 	
if
�� 
(
�� 
!
�� 
curves
�� 
.
�� 
isFloatCurve
�� $
)
��$ %
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
curves
�� 
.
�� 
count
�� 
<=
�� 
$num
��  !
||
��" $
curves
��% +
.
��+ ,
count
��, 1
>
��2 3
$num
��4 5
)
��5 6
return
�� 
false
�� 
;
�� 
char
�� 
l
�� 
=
�� 
curves
�� 
.
�� 
curveBindingPairs
�� -
[
��- .
$num
��. /
]
��/ 0
.
��0 1
binding
��1 8
.
��8 9
propertyName
��9 E
.
��E F
Last
��F J
(
��J K
)
��K L
;
��L M
return
�� 
l
�� 
==
�� 
$char
�� 
||
�� 
l
��  
==
��! #
$char
��$ '
||
��( *
l
��+ ,
==
��- /
$char
��0 3
||
��4 6
l
��7 8
==
��9 ;
$char
��< ?
;
��? @
}
�� 	
public
�� 
static
�� 
bool
�� 
IsColorGroup
�� '
(
��' (
this
��( ,
CurveBindingGroup
��- >
curves
��? E
)
��E F
{
�� 	
if
�� 
(
�� 
!
�� 
curves
�� 
.
�� 
isFloatCurve
�� $
)
��$ %
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
curves
�� 
.
�� 
count
�� 
!=
�� 
$num
��  !
&&
��" $
curves
��% +
.
��+ ,
count
��, 1
!=
��2 4
$num
��5 6
)
��6 7
return
�� 
false
�� 
;
�� 
char
�� 
l
�� 
=
�� 
curves
�� 
.
�� 
curveBindingPairs
�� -
[
��- .
$num
��. /
]
��/ 0
.
��0 1
binding
��1 8
.
��8 9
propertyName
��9 E
.
��E F
Last
��F J
(
��J K
)
��K L
;
��L M
return
�� 
l
�� 
==
�� 
$char
�� 
||
�� 
l
��  
==
��! #
$char
��$ '
||
��( *
l
��+ ,
==
��- /
$char
��0 3
||
��4 6
l
��7 8
==
��9 ;
$char
��< ?
;
��? @
}
�� 	
public
�� 
static
�� 
string
�� 
GetDescription
�� +
(
��+ ,
this
��, 0
CurveBindingGroup
��1 B
group
��C H
,
��H I
float
��J O
t
��P Q
)
��Q R
{
�� 	
string
�� 
result
�� 
=
�� 
string
�� "
.
��" #
Empty
��# (
;
��( )
if
�� 
(
�� 
group
�� 
.
�� 
isFloatCurve
�� "
)
��" #
{
�� 
if
�� 
(
�� 
group
�� 
.
�� 
count
�� 
>
��  !
$num
��" #
)
��# $
{
�� 
result
�� 
+=
�� 
$str
�� !
+
��" #
group
��$ )
.
��) *
curveBindingPairs
��* ;
[
��; <
$num
��< =
]
��= >
.
��> ?
curve
��? D
.
��D E
Evaluate
��E M
(
��M N
t
��N O
)
��O P
.
��P Q
ToString
��Q Y
(
��Y Z
$str
��Z `
)
��` a
;
��a b
for
�� 
(
�� 
int
�� 
j
�� 
=
��  
$num
��! "
;
��" #
j
��$ %
<
��& '
group
��( -
.
��- .
curveBindingPairs
��. ?
.
��? @
Length
��@ F
;
��F G
j
��H I
++
��I K
)
��K L
{
�� 
result
�� 
+=
�� !
$str
��" %
+
��& '
group
��( -
.
��- .
curveBindingPairs
��. ?
[
��? @
j
��@ A
]
��A B
.
��B C
curve
��C H
.
��H I
Evaluate
��I Q
(
��Q R
t
��R S
)
��S T
.
��T U
ToString
��U ]
(
��] ^
$str
��^ d
)
��d e
;
��e f
}
�� 
result
�� 
+=
�� 
$str
�� !
;
��! "
}
�� 
else
�� 
{
�� 
result
�� 
=
�� 
group
�� "
.
��" #
curveBindingPairs
��# 4
[
��4 5
$num
��5 6
]
��6 7
.
��7 8
curve
��8 =
.
��= >
Evaluate
��> F
(
��F G
t
��G H
)
��H I
.
��I J
ToString
��J R
(
��R S
$str
��S Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
group
�� 
.
�� 

�� (
)
��( )
{
�� 
Object
�� 
obj
�� 
=
�� 
null
�� !
;
��! "
if
�� 
(
�� 
group
�� 
.
�� 
curveBindingPairs
�� +
[
��+ ,
$num
��, -
]
��- .
.
��. /
objectCurve
��/ :
.
��: ;
Length
��; A
>
��B C
$num
��D E
)
��E F
obj
�� 
=
�� 
CurveEditUtility
�� *
.
��* +
Evaluate
��+ 3
(
��3 4
group
��4 9
.
��9 :
curveBindingPairs
��: K
[
��K L
$num
��L M
]
��M N
.
��N O
objectCurve
��O Z
,
��Z [
t
��\ ]
)
��] ^
;
��^ _
result
�� 
=
�� 
(
�� 
obj
�� 
==
��  
null
��! %
?
��& '
$str
��( .
:
��/ 0
obj
��1 4
.
��4 5
name
��5 9
)
��9 :
;
��: ;
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� ω
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\ItemGui\TimelineMarkerGUI.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class		 	
TimelineMarkerGUI		
 
:		 
TimelineItemGUI		 -
,		- .

ISnappable		/ 9
,		9 :
IAttractable		; G
{

 
public 
event 
System 
. 
Action "
onStartDrag# .
;. /
int
m_ProjectedClipHash
;
int 
m_MarkerHash 
; 
bool 
m_Selectable
; 
MarkerDrawOptions 
m_MarkerDrawOptions -
;- .
MarkerEditor 
m_Editor 
; 
IMarker 
marker 
{ 
get 
; 
} 
bool 

selectable
{ 	
get 
{ 
return 
m_Selectable %
;% &
}' (
} 	
public 
double 
time 
{ 	
get 
{ 
return 
marker 
.  
time  $
;$ %
}& '
} 	
public   
override   
double   
start   $
{!! 	
get"" 
{"" 
return"" 
time"" 
;"" 
}""  
}## 	
public%% 
override%% 
double%% 
end%% "
{&& 	
get'' 
{'' 
return'' 
time'' 
;'' 
}''  
}(( 	
public** 
override** 
void** 
Select** #
(**# $
)**$ %
{++ 	
zOrder,, 
=,, 
zOrderProvider,, #
.,,# $
Next,,$ (
(,,( )
),,) *
;,,* +
SelectionManager-- 
.-- 
Add--  
(--  !
marker--! '
)--' (
;--( )#
TimelineWindowViewPrefs.. #
...# $!
GetTrackViewModelData..$ 9
(..9 :
parent..: @
...@ A
asset..A F
)..F G
...G H
markerTimeStamps..H X
[..X Y
m_MarkerHash..Y e
]..e f
=..g h
DateTime..i q
...q r
UtcNow..r x
...x y
Ticks..y ~
;..~ 
}// 	
public11 
override11 
bool11 

IsSelected11 '
(11' (
)11( )
{22 	
return33 
SelectionManager33 #
.33# $
Contains33$ ,
(33, -
marker33- 3
)333 4
;334 5
}44 	
public66 
override66 
void66 
Deselect66 %
(66% &
)66& '
{77 	
SelectionManager88 
.88 
Remove88 #
(88# $
marker88$ *
)88* +
;88+ ,
}99 	
public;; 
override;; 

item;;& *
{<< 	
get== 
{== 
return== 

ItemsUtils== #
.==# $
ToItem==$ *
(==* +
marker==+ 1
)==1 2
;==2 3
}==4 5
}>> 	
IZOrderProvider@@ 
zOrderProvider@@ &
{@@' (
get@@) ,
;@@, -
}@@. /
publicBB 
TimelineMarkerGUIBB  
(BB  !
IMarkerBB! (
	theMarkerBB) 2
,BB2 3
IRowGUIBB4 ;
parentBB< B
,BBB C
IZOrderProviderBBD S
providerBBT \
)BB\ ]
:BB^ _
baseBB` d
(BBd e
parentBBe k
)BBk l
{CC 	
markerDD 
=DD 
	theMarkerDD 
;DD 
m_SelectableEE 
=EE 
markerEE !
.EE! "
GetTypeEE" )
(EE) *
)EE* +
.EE+ ,
IsSubclassOfEE, 8
(EE8 9
typeofEE9 ?
(EE? @
UnityObjectEE@ K
)EEK L
)EEL M
;EEM N
m_MarkerHashGG 
=GG 
$numGG 
;GG 
varHH 
oHH 
=HH 
markerHH 
asHH 
objectHH $
;HH$ %
ifII 
(II 
!II 
oII 
.II 
EqualsII 
(II 
nullII 
)II 
)II  
m_MarkerHashJJ 
=JJ 
oJJ  
.JJ  !
GetHashCodeJJ! ,
(JJ, -
)JJ- .
;JJ. /
zOrderProviderLL 
=LL 
providerLL %
;LL% &
zOrderMM 
=MM 
zOrderProviderMM #
.MM# $
NextMM$ (
(MM( )
)MM) *
;MM* +

.NN 
AddNN 
(NN 
markerNN $
,NN$ %
thisNN& *
)NN* +
;NN+ ,
m_EditorOO 
=OO %
CustomTimelineEditorCacheOO 0
.OO0 1
GetMarkerEditorOO1 @
(OO@ A
	theMarkerOOA J
)OOJ K
;OOK L
}PP 	
intRR 
ComputeDirtyHashRR 
(RR 
)RR 
{SS 	
returnTT 
timeTT 
.TT 
GetHashCodeTT #
(TT# $
)TT$ %
;TT% &
}UU 	
staticWW 
voidWW 

DrawMarkerWW 
(WW 
RectWW #
drawRectWW$ ,
,WW, -
TypeWW. 2
typeWW3 7
,WW7 8
boolWW9 =

isSelectedWW> H
,WWH I
boolWWJ N
isCollapsedWWO Z
,WWZ [
MarkerDrawOptionsWW\ m
optionsWWn u
)WWu v
{XX 	
ifYY 
(YY 
EventYY 
.YY 
currentYY 
.YY 
typeYY "
==YY# %
	EventTypeYY& /
.YY/ 0
RepaintYY0 7
)YY7 8
{ZZ 
bool[[ 
hasError[[ 
=[[ 
![[  !
string[[! '
.[[' (

([[5 6
options[[6 =
.[[= >
	errorText[[> G
)[[G H
;[[H I
var]] 
style]] 
=]] 
StyleManager]] (
.]]( )
UssStyleForType]]) 8
(]]8 9
type]]9 =
)]]= >
;]]> ?
style^^ 
.^^ 
Draw^^ 
(^^ 
drawRect^^ #
,^^# $

GUIContent^^% /
.^^/ 0
none^^0 4
,^^4 5
false^^6 ;
,^^; <
false^^= B
,^^B C
!^^D E
isCollapsed^^E P
,^^P Q

isSelected^^R \
)^^\ ]
;^^] ^
ifaa 
(aa 
hasErroraa 
)aa 
GUIbb 
.bb 
Labelbb 
(bb 
drawRectbb &
,bb& '
Stringbb( .
.bb. /
Emptybb/ 4
,bb4 5
DirectorStylesbb6 D
.bbD E
InstancebbE M
.bbM N

)bb[ \
;bb\ ]
vardd 
tooltipdd 
=dd 
hasErrordd &
?dd' (
optionsdd) 0
.dd0 1
	errorTextdd1 :
:dd; <
optionsdd= D
.ddD E
tooltipddE L
;ddL M
ifee 
(ee 
!ee 
stringee 
.ee 

(ee) *
tooltipee* 1
)ee1 2
&&ee3 5
drawRectee6 >
.ee> ?
Containsee? G
(eeG H
EventeeH M
.eeM N
currenteeN U
.eeU V

)eec d
)eed e
{ff 
GUIStylegg 
.gg 
SetMouseTooltipgg ,
(gg, -
tooltipgg- 4
,gg4 5
drawRectgg6 >
)gg> ?
;gg? @
}hh 
}ii 
}jj 	
voidll 
UpdateDrawDatall
(ll 
)ll 
{mm 	
ifnn 
(nn 
Eventnn 
.nn 
currentnn 
.nn 
typenn "
==nn# %
	EventTypenn& /
.nn/ 0
Layoutnn0 6
)nn6 7
{oo 
trypp 
{qq 
m_MarkerDrawOptionsrr '
=rr( )
m_Editorrr* 2
.rr2 3
GetMarkerOptionsrr3 C
(rrC D
markerrrD J
)rrJ K
;rrK L
}ss 
catchtt 
(tt 
	Exceptiontt  
ett! "
)tt" #
{uu 
Debugvv 
.vv 
LogExceptionvv &
(vv& '
evv' (
)vv( )
;vv) *
m_MarkerDrawOptionsww '
=ww( )%
CustomTimelineEditorCacheww* C
.wwC D"
GetDefaultMarkerEditorwwD Z
(wwZ [
)ww[ \
.ww\ ]
GetMarkerOptionsww] m
(wwm n
markerwwn t
)wwt u
;wwu v
}xx 
}yy 
}zz 	
public|| 
override|| 
void|| 
Draw|| !
(||! "
Rect||" &
	trackRect||' 0
,||0 1
bool||2 6
trackRectChanged||7 G
,||G H
WindowState||I T
state||U Z
)||Z [
{}} 	
UpdateDrawData~~ 
(~~ 
)~~ 
;~~ 
var
�� 
currentMarkerHash
�� !
=
��" #
ComputeDirtyHash
��$ 4
(
��4 5
)
��5 6
;
��6 7$
CalculateClipRectangle
�� "
(
��" #
	trackRect
��# ,
,
��, -
state
��. 3
,
��3 4
currentMarkerHash
��5 F
,
��F G
trackRectChanged
��H X
)
��X Y
;
��Y Z
var
�� 

isSelected
�� 
=
�� 

selectable
�� '
&&
��( *
SelectionManager
��+ ;
.
��; <
Contains
��< D
(
��D E
marker
��E K
)
��K L
;
��L M
var
�� 
showMarkers
�� 
=
�� 
parent
�� $
.
��$ %
showMarkers
��% 0
;
��0 1
QueueOverlay
�� 
(
�� 
treeViewRect
�� %
,
��% &

isSelected
��' 1
,
��1 2
!
��3 4
showMarkers
��4 ?
)
��? @
;
��@ A

DrawMarker
�� 
(
�� 
treeViewRect
�� #
,
��# $
marker
��% +
.
��+ ,
GetType
��, 3
(
��3 4
)
��4 5
,
��5 6

isSelected
��7 A
,
��A B
!
��C D
showMarkers
��D O
,
��O P!
m_MarkerDrawOptions
��Q d
)
��d e
;
��e f
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
Repaint
��0 7
&&
��8 :
showMarkers
��; F
&&
��G I
!
��J K
parent
��K Q
.
��Q R
locked
��R X
)
��X Y
state
�� 
.
�� 
spacePartitioner
�� &
.
��& '
	AddBounds
��' 0
(
��0 1
this
��1 5
,
��5 6
rect
��7 ;
)
��; <
;
��< =
}
�� 	
public
�� 
void
�� 
QueueOverlay
��  
(
��  !
Rect
��! %
rect
��& *
,
��* +
bool
��, 0

isSelected
��1 ;
,
��; <
bool
��= A
isCollapsed
��B M
)
��M N
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
Repaint
��0 7
&&
��8 :
m_Editor
��; C
.
��C D!
supportsDrawOverlay
��D W
)
��W X
{
�� 
rect
�� 
=
�� 
GUIClip
�� 
.
�� 
Unclip
�� %
(
��% &
rect
��& *
)
��* +
;
��+ ,
TimelineWindow
�� 
.
�� 
instance
�� '
.
��' (
AddUserOverlay
��( 6
(
��6 7
marker
��7 =
,
��= >
rect
��? C
,
��C D
m_Editor
��E M
,
��M N
isCollapsed
��O Z
,
��Z [

isSelected
��\ f
)
��f g
;
��g h
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
	StartDrag
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
onStartDrag
�� 
!=
�� 
null
�� #
)
��# $
onStartDrag
�� 
.
�� 
Invoke
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
void
�� $
CalculateClipRectangle
��
(
��# $
Rect
��$ (
	trackRect
��) 2
,
��2 3
WindowState
��4 ?
state
��@ E
,
��E F
int
��G J
projectedClipHash
��K \
,
��\ ]
bool
��^ b
trackRectChanged
��c s
)
��s t
{
�� 	
if
�� 
(
�� !
m_ProjectedClipHash
�� #
==
��$ &
projectedClipHash
��' 8
&&
��9 ;
!
��< =
trackRectChanged
��= M
)
��M N
return
�� 
;
�� !
m_ProjectedClipHash
�� 
=
��  !
projectedClipHash
��" 3
;
��3 4
treeViewRect
�� 
=
�� 
RectToTimeline
�� )
(
��) *
	trackRect
��* 3
,
��3 4
state
��5 :
)
��: ;
;
��; <
}
�� 	
public
�� 
override
�� 
Rect
�� 
RectToTimeline
�� +
(
��+ ,
Rect
��, 0
	trackRect
��1 :
,
��: ;
WindowState
��< G
state
��H M
)
��M N
{
�� 	
var
�� 
style
�� 
=
�� 
StyleManager
�� $
.
��$ %
UssStyleForType
��% 4
(
��4 5
marker
��5 ;
.
��; <
GetType
��< C
(
��C D
)
��D E
)
��E F
;
��F G
var
�� 
width
�� 
=
�� 
style
�� 
.
�� 

fixedWidth
�� (
;
��( )
var
�� 
height
�� 
=
�� 
style
�� 
.
�� 
fixedHeight
�� *
;
��* +
var
�� 
x
�� 
=
�� 
(
�� 
(
�� 
float
�� 
)
�� 
marker
�� "
.
��" #
time
��# '
*
��( )
state
��* /
.
��/ 0

��0 =
.
��= >
x
��> ?
)
��? @
+
��A B
state
��C H
.
��H I!
timeAreaTranslation
��I \
.
��\ ]
x
��] ^
+
��_ `
	trackRect
��a j
.
��j k
xMin
��k o
;
��o p
x
�� 
-=
�� 
$num
�� 
*
�� 
width
�� 
;
�� 
return
�� 
new
�� 
Rect
�� 
(
�� 
x
�� 
,
�� 
	trackRect
�� (
.
��( )
y
��) *
,
��* +
width
��, 1
,
��1 2
height
��3 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
Edge
�� 
>
��  
SnappableEdgesFor
��! 2
(
��2 3
IAttractable
��3 ?
attractable
��@ K
,
��K L
ManipulateEdges
��M \
manipulateEdges
��] l
)
��l m
{
�� 	
var
�� 
edges
�� 
=
�� 
new
�� 
List
��  
<
��  !
Edge
��! %
>
��% &
(
��& '
)
��' (
;
��( )
var
�� 
attractableGUI
�� 
=
��  
attractable
��! ,
as
��- /
TimelineMarkerGUI
��0 A
;
��A B
var
�� 
canAddEdges
�� 
=
�� 
!
�� 
(
��  
attractableGUI
��  .
!=
��/ 1
null
��2 6
&&
��7 9
attractableGUI
��: H
.
��H I
parent
��I O
==
��P R
parent
��S Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
canAddEdges
�� 
)
�� 
edges
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
Edge
�� "
(
��" #
time
��# '
)
��' (
)
��( )
;
��) *
return
�� 
edges
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
ShouldSnapTo
��  
(
��  !

ISnappable
��! +
	snappable
��, 5
)
��5 6
{
�� 	
return
�� 
	snappable
�� 
!=
�� 
this
��  $
;
��$ %
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Animation\BindingTreeViewDataSource.cs
	namespace 	
UnityEditorInternal
 
{		 
class

 	%
BindingTreeViewDataSource


 #
:

$ %
TreeViewDataSource

& 8
{ 
public 
const 
int 
RootID 
=  !
int" %
.% &
MinValue& .
;. /
public
const
int
GroupID
=
-
$num
;

m_Clip 
; 
CurveDataSource 
m_CurveDataSource )
;) *
public %
BindingTreeViewDataSource (
(( )
TreeViewController 
treeView '
,' (

clip7 ;
,; <
CurveDataSource= L
curveDataSourceM \
)\ ]
: 
base 
( 
treeView 
) 
{ 	
m_Clip 
= 
clip 
; 
showRootItem 
= 
false  
;  !
m_CurveDataSource 
= 
curveDataSource  /
;/ 0
} 	
void !
SetupRootNodeSettings
(" #
)# $
{ 	
showRootItem 
= 
false  
;  !
SetExpanded 
( 
RootID 
, 
true  $
)$ %
;% &
SetExpanded 
( 
GroupID 
,  
true! %
)% &
;& '
}   	
public"" 
static"" 
string"" 
	GroupName"" &
(""& '
EditorCurveBinding""' 9
binding"": A
)""A B
{## 	
string$$ 
property$$ 
=$$ "
AnimationWindowUtility$$ 4
.$$4 5#
NicifyPropertyGroupName$$5 L
($$L M
binding$$M T
.$$T U
type$$U Y
,$$Y Z
binding$$[ b
.$$b c
propertyName$$c o
)$$o p
;$$p q
if%% 
(%% 
!%% 
string%% 
.%% 

(%%% &
binding%%& -
.%%- .
path%%. 2
)%%2 3
)%%3 4
{&& 
property'' 
='' 
binding'' "
.''" #
path''# '
+''( )
$str''* /
+''0 1
property''2 :
;'': ;
}(( 
int** 
lastArrayIdx** 
=** 
property** '
.**' (
LastIndexOf**( 3
(**3 4
$str**4 <
)**< =
;**= >
if++ 
(++ 
lastArrayIdx++ 
!=++ 
-++  !
$num++! "
)++" #
{,, 
property-- 
=-- 
property-- #
.--# $
	Substring--$ -
(--- .
$num--. /
,--/ 0
lastArrayIdx--1 =
---> ?
$num--@ A
)--A B
;--B C
}.. 
return// 
property// 
;// 
}00 	
static22 
string22 
PropertyName22 "
(22" #
EditorCurveBinding22# 5
binding226 =
,22= >
string22? E
arrayPrefixToRemove22F Y
=22Z [
$str22\ ^
)22^ _
{33 	
string44 
propertyName44 
=44  !"
AnimationWindowUtility44" 8
.448 9"
GetPropertyDisplayName449 O
(44O P
binding44P W
.44W X
propertyName44X d
)44d e
;44e f
if55 
(55 
propertyName55 
.55 
Contains55 %
(55% &
$str55& -
)55- .
)55. /
{66 
propertyName77 
=77 
propertyName77 +
.77+ ,
Replace77, 3
(773 4
$str774 <
,77< =
$str77> @
)77@ A
;77A B
if88 
(88 
!88 
string88 
.88 
IsNullOrWhiteSpace88 .
(88. /
arrayPrefixToRemove88/ B
)88B C
)88C D
propertyName99  
=99! "
propertyName99# /
.99/ 0
Replace990 7
(997 8
arrayPrefixToRemove998 K
,99K L
$str99M O
)99O P
;99P Q
propertyName:: 
=:: 
propertyName:: +
.::+ ,
	TrimStart::, 5
(::5 6
$char::6 9
)::9 :
;::: ;
};; 
return<< 
propertyName<< 
;<<  
}== 	
public?? 
override?? 
void?? 
	FetchData?? &
(??& '
)??' (
{@@ 	
ifAA 
(AA 
m_ClipAA 
==AA 
nullAA 
)AA 
returnBB 
;BB 
varDD 
bindingsDD 
=DD 
AnimationUtilityDD +
.DD+ ,
GetCurveBindingsDD, <
(DD< =
m_ClipDD= C
)DDC D
.EE 
UnionEE 
(EE 
AnimationUtilityEE '
.EE' (+
GetObjectReferenceCurveBindingsEE( G
(EEG H
m_ClipEEH N
)EEN O
)EEO P
.FF 
ToArrayFF 
(FF 
)FF 
;FF 
varHH 
resultsHH 
=HH 
bindingsHH "
.HH" #
GroupByHH# *
(HH* +
pHH+ ,
=>HH- /
	GroupNameHH0 9
(HH9 :
pHH: ;
)HH; <
,HH< =
pHH> ?
=>HH@ B
pHHC D
,HHD E
(HHF G
keyHHG J
,HHJ K
gHHL M
)HHM N
=>HHO Q
newHHR U
{II 
parentJJ 
=JJ 
keyJJ 
,JJ 
bindingsKK 
=KK 
gKK 
.KK 
ToListKK #
(KK# $
)KK$ %
}LL 
)LL
.LL 
OrderByLL 
(LL 
tLL 
=>LL 
{MM 
ifOO 
(OO 
tOO 
.OO 
parentOO  
==OO! #
$strOO$ .
)OO. /
returnOO0 6
-OO7 8
$numOO8 9
;OO9 :
ifPP 
(PP 
tPP 
.PP 
parentPP  
==PP! #
$strPP$ .
)PP. /
returnPP0 6
-PP7 8
$numPP8 9
;PP9 :
ifQQ 
(QQ 
tQQ 
.QQ 
parentQQ  
==QQ! #
$strQQ$ +
)QQ+ ,
returnQQ- 3
-QQ4 5
$numQQ5 6
;QQ6 7
returnRR 
$numRR 
;RR 
}SS 
)SS 
.SS 
ThenBySS 
(SS 
tSS 
=>SS 
tSS  
.SS  !
parentSS! '
)SS' (
;SS( )

m_RootItemUU 
=UU 
newUU 
CurveTreeViewNodeUU .
(UU. /
RootIDUU/ 5
,UU5 6
nullUU7 ;
,UU; <
$strUU= C
,UUC D
nullUUE I
)UUI J
{VV 
childrenWW 
=WW 
newWW 
ListWW #
<WW# $
TreeViewItemWW$ 0
>WW0 1
(WW1 2
$numWW2 3
)WW3 4
}XX 
;XX
ifZZ 
(ZZ 
resultsZZ 
.ZZ 
AnyZZ 
(ZZ 
)ZZ 
)ZZ 
{[[ 
var\\ 
groupingNode\\  
=\\! "
new\\# &
CurveTreeViewNode\\' 8
(\\8 9
GroupID\\9 @
,\\@ A

m_RootItem\\B L
,\\L M
m_CurveDataSource\\N _
.\\_ `
groupingName\\` l
,\\l m
bindings\\n v
)\\v w
{]] 
children^^ 
=^^ 
new^^ "
List^^# '
<^^' (
TreeViewItem^^( 4
>^^4 5
(^^5 6
)^^6 7
}__ 
;__ 

m_RootItemaa 
.aa 
childrenaa #
.aa# $
Addaa$ '
(aa' (
groupingNodeaa( 4
)aa4 5
;aa5 6
foreachcc 
(cc 
varcc 
rcc 
incc !
resultscc" )
)cc) *
{dd &
FillMissingTransformCurvesee .
(ee. /
ree/ 0
.ee0 1
parentee1 7
,ee7 8
ree9 :
.ee: ;
bindingsee; C
)eeC D
;eeD E
varff 
newNodeff 
=ff  !
newff" %
CurveTreeViewNodeff& 7
(ff7 8
rff8 9
.ff9 :
parentff: @
.ff@ A
GetHashCodeffA L
(ffL M
)ffM N
,ffN O
groupingNodeffP \
,ff\ ]
rff^ _
.ff_ `
parentff` f
,fff g
rffh i
.ffi j
bindingsffj r
.ffr s
ToArrayffs z
(ffz {
)ff{ |
)ff| }
;ff} ~
groupingNodegg  
.gg  !
childrengg! )
.gg) *
Addgg* -
(gg- .
newNodegg. 5
)gg5 6
;gg6 7
forhh 
(hh 
inthh 
bhh 
=hh  
$numhh! "
;hh" #
bhh$ %
<hh& '
rhh( )
.hh) *
bindingshh* 2
.hh2 3
Counthh3 8
;hh8 9
bhh: ;
++hh; =
)hh= >
{ii 
ifjj 
(jj 
newNodejj #
.jj# $
childrenjj$ ,
==jj- /
nulljj0 4
)jj4 5
newNodekk #
.kk# $
childrenkk$ ,
=kk- .
newkk/ 2
Listkk3 7
<kk7 8
TreeViewItemkk8 D
>kkD E
(kkE F
)kkF G
;kkG H
varmm 
bindingmm #
=mm$ %
rmm& '
.mm' (
bindingsmm( 0
[mm0 1
bmm1 2
]mm2 3
;mm3 4
stringnn 
propDisplayNamenn .
=nn/ 0
PropertyNamenn1 =
(nn= >
bindingnn> E
)nnE F
+nnG H
(nnI J
bindingnnJ Q
.nnQ R
	isPhantomnnR [
?nn\ ]
$strnn^ p
:nnq r
stringnns y
.nny z
Emptynnz 
)	nn �
;
nn� �
varoo 
bindingNodeoo '
=oo( )
newoo* -
CurveTreeViewNodeoo. ?
(oo? @
bindingoo@ G
.ooG H
GetHashCodeooH S
(ooS T
)ooT U
,ooU V
newNodeooW ^
,oo^ _
propDisplayNameoo` o
,ooo p
newooq t
[oot u
]oou v
{oow x
binding	ooy �
}
oo� �
)
oo� �
;
oo� �
newNodepp 
.pp  
childrenpp  (
.pp( )
Addpp) ,
(pp, -
bindingNodepp- 8
)pp8 9
;pp9 :
}qq 
}rr !
SetupRootNodeSettingsss %
(ss% &
)ss& '
;ss' (
}tt 
m_NeedRefreshRowsvv 
=vv 
truevv  $
;vv$ %
}ww 	
privateyy 
voidyy &
FillMissingTransformCurvesyy /
(yy/ 0
stringyy0 6
parentyy7 =
,yy= >
Listyy? C
<yyC D
EditorCurveBindingyyD V
>yyV W
bindingsyyX `
)yy` a
{zz 	
if{{ 
({{ 
!{{ "
AnimationWindowUtility{{ '
.{{' ("
IsActualTransformCurve{{( >
({{> ?
bindings{{? G
[{{G H
$num{{H I
]{{I J
){{J K
||{{L N
bindings{{O W
.{{W X
Count{{X ]
=={{^ `
$num{{a b
){{b c
return|| 
;|| 
string~~ 
prefixProperyName~~ $
=~~% &
bindings~~' /
.~~/ 0
First~~0 5
(~~5 6
)~~6 7
.~~7 8
propertyName~~8 D
.~~D E
Split~~E J
(~~J K
$char~~K N
)~~N O
.~~O P
First~~P U
(~~U V
)~~V W
;~~W X
if 
( 
bindings 
. 
FirstOrDefault '
(' (
p( )
=>* ,
p- .
.. /
propertyName/ ;
.; <
EndsWith< D
(D E
$strE I
)I J
)J K
==L N
defaultO V
)V W
{
�� 
var
�� 
b
�� 
=
��  
EditorCurveBinding
�� *
.
��* +

FloatCurve
��+ 5
(
��5 6
string
��6 <
.
��< =
Empty
��= B
,
��B C
typeof
��D J
(
��J K
	Transform
��K T
)
��T U
,
��U V
prefixProperyName
��W h
+
��i j
$str
��k o
)
��o p
;
��p q
b
�� 
.
�� 
	isPhantom
�� 
=
�� 
true
�� "
;
��" #
bindings
�� 
.
�� 
Insert
�� 
(
��  
$num
��  !
,
��! "
b
��# $
)
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
bindings
�� 
.
�� 
FirstOrDefault
�� '
(
��' (
p
��( )
=>
��* ,
p
��- .
.
��. /
propertyName
��/ ;
.
��; <
EndsWith
��< D
(
��D E
$str
��E I
)
��I J
)
��J K
==
��L N
default
��O V
)
��V W
{
�� 
var
�� 
b
�� 
=
��  
EditorCurveBinding
�� *
.
��* +

FloatCurve
��+ 5
(
��5 6
string
��6 <
.
��< =
Empty
��= B
,
��B C
typeof
��D J
(
��J K
	Transform
��K T
)
��T U
,
��U V
prefixProperyName
��W h
+
��i j
$str
��k o
)
��o p
;
��p q
b
�� 
.
�� 
	isPhantom
�� 
=
�� 
true
�� "
;
��" #
bindings
�� 
.
�� 
Insert
�� 
(
��  
$num
��  !
,
��! "
b
��# $
)
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
bindings
�� 
.
�� 
FirstOrDefault
�� '
(
��' (
p
��( )
=>
��* ,
p
��- .
.
��. /
propertyName
��/ ;
.
��; <
EndsWith
��< D
(
��D E
$str
��E I
)
��I J
)
��J K
==
��L N
default
��O V
)
��V W
{
�� 
var
�� 
b
�� 
=
��  
EditorCurveBinding
�� *
.
��* +

FloatCurve
��+ 5
(
��5 6
string
��6 <
.
��< =
Empty
��= B
,
��B C
typeof
��D J
(
��J K
	Transform
��K T
)
��T U
,
��U V
prefixProperyName
��W h
+
��i j
$str
��k o
)
��o p
;
��p q
b
�� 
.
�� 
	isPhantom
�� 
=
�� 
true
�� "
;
��" #
bindings
�� 
.
�� 
Insert
�� 
(
��  
$num
��  !
,
��! "
b
��# $
)
��$ %
;
��% &
}
�� 
}
�� 	
public
�� 
void
�� 

UpdateData
�� 
(
�� 
)
��  
{
�� 	

m_TreeView
�� 
.
�� 

ReloadData
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
}
�� 
class
�� 	
CurveTreeViewNode
��
 
:
�� 
TreeViewItem
�� *
{
��  
EditorCurveBinding
�� 
[
�� 
]
�� 

m_Bindings
�� '
;
��' (
public
��  
EditorCurveBinding
�� !
[
��! "
]
��" #
bindings
��$ ,
{
�� 	
get
�� 
{
�� 
return
�� 

m_Bindings
�� #
;
��# $
}
��% &
}
�� 	
public
�� 
CurveTreeViewNode
��  
(
��  !
int
��! $
id
��% '
,
��' (
TreeViewItem
��) 5
parent
��6 <
,
��< =
string
��> D
displayName
��E P
,
��P Q 
EditorCurveBinding
��R d
[
��d e
]
��e f
bindings
��g o
)
��o p
:
�� 
base
�� 
(
�� 
id
�� 
,
�� 
parent
�� 
!=
��  
null
��! %
?
��& '
parent
��( .
.
��. /
depth
��/ 4
+
��5 6
$num
��7 8
:
��9 :
-
��; <
$num
��< =
,
��= >
parent
��? E
,
��E F
displayName
��G R
)
��R S
{
�� 	

m_Bindings
�� 
=
�� 
bindings
�� !
;
��! "
}
�� 	
}
�� 
}�� �#
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Attributes\MenuEntryAttribute.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
[ 
Flags 

]
 
enum 

MenuFilter	 
{ 
None		 
=		
$num		 
,		 
Item

 
=


$num

 
<<

 
$num

 
,

 
Track 
= 
$num 
<< 
$num 
, 
MarkerHeader 
= 
$num 
<< 
$num 
, 
Default
=
Item
|
Track
} 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
)* +
]+ ,
public 

class 
MenuEntryAttribute #
:$ %
	Attribute& /
{ 
internal 
readonly 
int 
priority &
;& '
internal 
readonly 
string  
name! %
;% &
internal   
readonly   
string    
subMenuPath  ! ,
;  , -
internal!! 
readonly!! 

MenuFilter!! $
filter!!% +
;!!+ ,
public++ 
MenuEntryAttribute++ !
(++! "
string++" (
path++) -
=++. /
default++0 7
,++7 8
int++9 <
priority++= E
=++F G
MenuPriority++H T
.++T U
defaultPriority++U d
)++d e
:++f g
this++h l
(++l m
path++m q
,++q r
priority++s {
,++{ |

MenuFilter	++} �
.
++� �
Default
++� �
)
++� �
{
++� �
}
++� �
internal-- 
MenuEntryAttribute-- #
(--# $
string--$ *
path--+ /
,--/ 0
int--1 4
priority--5 =
,--= >

MenuFilter--? I
filter--J P
)--P Q
{.. 	
this// 
.// 
filter// 
=// 
filter//  
;//  !
path00 
=00 
path00 
??00 
string00 !
.00! "
Empty00" '
;00' (
path11 
=11 
L10n11 
.11 
Tr11 
(11 
path11 
)11  
;11  !
this22 
.22 
priority22 
=22 
priority22 $
;22$ %
var44 
index44 
=44 
path44 
.44 
LastIndexOf44 (
(44( )
$char44) ,
)44, -
;44- .
if55 
(55 
index55 
>=55 
$num55 
)55 
{66 
name77 
=77 
(77 
index77 
==77  
path77! %
.77% &
Length77& ,
-77- .
$num77/ 0
)770 1
?772 3
string774 :
.77: ;
Empty77; @
:77A B
path77C G
.77G H
	Substring77H Q
(77Q R
index77R W
+77X Y
$num77Z [
)77[ \
;77\ ]
subMenuPath88 
=88 
path88 "
.88" #
	Substring88# ,
(88, -
$num88- .
,88. /
index880 5
+886 7
$num888 9
)889 :
;88: ;
}99 
else:: 
{;; 
name<< 
=<< 
path<< 
;<< 
subMenuPath== 
=== 
string== $
.==$ %
Empty==% *
;==* +
}>> 
}?? 	
}@@ 
staticBB 

classBB  
MenuFilterExtensionsBB %
{CC 
publicDD 
staticDD 
boolDD 
ShouldFilterOutDD *
(DD* +
thisDD+ /

MenuFilterDD0 :
filterDD; A
,DDA B
MenuEntryAttributeDDC U
attrDDV Z
)DDZ [
{EE 	
returnFF 
(FF 
filterFF 
&FF 
attrFF !
.FF! "
filterFF" (
)FF( )
!=FF* ,
filterFF- 3
;FF3 4
}GG 	
}HH 
}II �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Attributes\ActiveInModeAttribute.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Class		% *
)		* +
]		+ ,
public

 

class

 !
ActiveInModeAttribute

 &
:

' (
	Attribute

) 2
{ 
public 

modes "
{# $
get% (
;( )
}* +
public !
ActiveInModeAttribute $
($ %


)@ A
{ 	
modes 
= 

;! "
} 	
} 
} �1
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\TimeFieldDrawer.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
TimeFieldAttribute! 3
)3 4
,4 5
true6 :
): ;
]; <
class		 	
TimeFieldDrawer		
 
:		 
PropertyDrawer		 *
{

 
static 
WindowState 
state  
{ 	
get
{
return
TimelineWindow
.
instance
!=
null
?
TimelineWindow
.
instance
.
state
:
null
;
}
} 	
static 
float 
currentFrameRate %
{ 	
get 
{ 
return 
state 
!= !
null" &
?' (
TimelineWindow) 7
.7 8
instance8 @
.@ A
stateA F
.F G
referenceSequenceG X
.X Y
	frameRateY b
:c d
$nume i
;i j
}k l
} 	
public 
override 
void 
OnGUI "
(" #
Rect# '
position( 0
,0 1
SerializedProperty2 D
propertyE M
,M N

GUIContentO Y
labelZ _
)_ `
{ 	
if 
( 
property 
. 
propertyType %
!=& ("
SerializedPropertyType) ?
.? @
Float@ E
)E F
{ 
	GUILayout 
. 
Label 
(  
$str  N
)N O
;O P
return 
; 
} 
var 
timeFieldAttribute "
=# $
	attribute% .
as/ 1
TimeFieldAttribute2 D
;D E
if 
( 
timeFieldAttribute "
==# %
null& *
)* +
return 
; 
var!! 
rect!! 
=!! 
EditorGUILayout!! &
.!!& '

s_LastRect!!' 1
;!!1 2
	EditorGUI"" 
."" 
BeginChangeCheck"" &
(""& '
)""' (
;""( )
if$$ 
($$ 
timeFieldAttribute$$ "
.$$" #
useEditMode$$# .
==$$/ 1
TimeFieldAttribute$$2 D
.$$D E
UseEditMode$$E P
.$$P Q

)$$^ _!
TimeFieldWithEditMode%% %
(%%% &
rect%%& *
,%%* +
property%%, 4
,%%4 5
label%%6 ;
)%%; <
;%%< =
else&& 
	TimeField'' 
('' 
rect'' 
,'' 
property''  (
,''( )
label''* /
)''/ 0
;''0 1
if)) 
()) 
	EditorGUI)) 
.)) 
EndChangeCheck)) (
())( )
)))) *
)))* +
{** 
if++ 
(++ 
state++ 
!=++ 
null++ !
)++! "
state,, 
.,, 
Refresh,, !
(,,! "
),," #
;,,# $
}-- 
}.. 	
static00 
void00 
	TimeField00 
(00 
Rect00 "
rect00# '
,00' (
SerializedProperty00) ;
property00< D
,00D E

GUIContent00F P
label00Q V
)00V W
{11 	
var22 
evt122 
=22 

InputEvent22 !
.22! "
None22" &
;22& '$
TimelineInspectorUtility33 $
.33$ %
	TimeField33% .
(33. /
rect33/ 3
,333 4
property335 =
,33= >
label33? D
,33D E
false33F K
,33K L
currentFrameRate33M ]
,33] ^
$num33_ `
,33` a
float33b g
.33g h
MaxValue33h p
,33p q
ref33r u
evt133v z
)33z {
;33{ |
}44 	
static66 
void66 !
TimeFieldWithEditMode66 )
(66) *
Rect66* .
rect66/ 3
,663 4
SerializedProperty665 G
property66H P
,66P Q

GUIContent66R \
label66] b
)66b c
{77 	
double88 
minStartTime88 
;88  
if99 
(99 
property99 
.99 &
hasMultipleDifferentValues99 3
)993 4
minStartTime:: 
=:: 
SelectionManager:: /
.::/ 0

(::= >
)::> ?
.::? @
Min::@ C
(::C D
i::D E
=>::F H
i::I J
.::J K
start::K P
)::P Q
;::Q R
else;; 
minStartTime<< 
=<< 
property<< '
.<<' (
doubleValue<<( 3
;<<3 4
var>> 
evt>> 
=>> 

InputEvent>>  
.>>  !
None>>! %
;>>% &
var?? 
newValue?? 
=?? $
TimelineInspectorUtility?? 3
.??3 4
	TimeField??4 =
(??= >
rect@@ 
,@@ 
label@@ 
,@@ 
minStartTime@@ )
,@@) *
false@@+ 0
,@@0 1
property@@2 :
.@@: ;&
hasMultipleDifferentValues@@; U
,@@U V
currentFrameRate@@W g
,@@g h
$num@@i l
,@@l m
float@@n s
.@@s t
MaxValue@@t |
,@@| }
ref	@@~ �
evt
@@� �
)
@@� �
;
@@� �
EditModeBB 
.BB 
inputHandlerBB !
.BB! "
ProcessMoveBB" -
(BB- .
evtBB. 1
,BB1 2
newValueBB3 ;
)BB; <
;BB< =
}CC 	
}DD 
}EE �h
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\TimelinePreferences.cs
[ 
FilePath 	
(	 

$str
 %
,% &
FilePathAttribute' 8
.8 9
Location9 A
.A B
PreferencesFolderB S
)S T
]T U
public 
class 
TimelinePreferences
:! "
ScriptableSingleton# 6
<6 7
TimelinePreferences7 J
>J K
{
[ 
SerializeField 
] 
public 

bool 
timeUnitInFrame 
=  !
true" &
;& '
[ 
SerializeField 
] 
public 

bool 
showAudioWaveform !
=" #
true$ (
;( )
[ 
SerializeField 
] 
bool 
m_AudioScrubbing	 
; 
public$$ 

bool$$ 
audioScrubbing$$ 
{%% 
get&& 
{&& 
return&& 
m_AudioScrubbing&& %
;&&% &
}&&' (
set'' 
{(( 	
if)) 
()) 
m_AudioScrubbing))  
!=))! #
value))$ )
)))) *
{** 
m_AudioScrubbing++  
=++! "
value++# (
;++( )
TimelinePlayable,,  
.,,  !
muteAudioScrubbing,,! 3
=,,4 5
!,,6 7
value,,7 <
;,,< =
TimelineEditor-- 
.-- 
Refresh-- &
(--& '

.--4 5
ContentsModified--5 E
)--E F
;--F G
}.. 
}// 	
}00 
[55 
SerializeField55 
]55 
public66 

bool66 
snapToFrame66 
=66 
true66 "
;66" #
[:: 
SerializeField:: 
]:: 
public;; 

bool;; 
edgeSnap;; 
=;; 
true;; 
;;;  
[?? 
SerializeField?? 
]?? 
public@@ 

PlaybackScrollMode@@ 
playbackScrollMode@@ 0
=@@1 2
PlaybackScrollMode@@3 E
.@@E F
None@@F J
;@@J K
voidBB 
	OnDisableBB	 
(BB 
)BB 
{CC 
SaveDD 
(DD 
)DD
;DD 
}EE 
publicJJ 

voidJJ 
SaveJJ 
(JJ 
)JJ 
{KK 
SaveLL 
(LL 
trueLL
)LL 
;LL 
}MM 
internalOO 
SerializedObjectOO
GetSerializedObjectOO 1
(OO1 2
)OO2 3
{PP 
returnQQ 
newQQ 
SerializedObjectQQ #
(QQ# $
thisQQ$ (
)QQ( )
;QQ) *
}RR 
}SS 
classUU '
TimelinePreferencesProviderUU !
:UU" #
SettingsProviderUU$ 4
{VV 
SerializedObjectWW 
m_SerializedObjectWW '
;WW' (
SerializedPropertyXX 
m_ShowAudioWaveformXX *
;XX* +
SerializedPropertyYY 
m_TimeUnitInFrameYY (
;YY( )
SerializedPropertyZZ 

;ZZ$ %
SerializedProperty[[ 

m_EdgeSnap[[ !
;[[! "
SerializedProperty\\  
m_PlaybackScrollMode\\ +
;\\+ ,
static^^ 

string^^ 
[^^ 
]^^ 

=^^" #
new^^$ '
string^^( .
[^^. /
]^^/ 0
{__ 
$str`` 
,`` 
$straa 
}bb 
;bb 
privatedd 
classdd 
Stylesdd 
{ee 
publicff 
staticff 
readonlyff 

GUIContentff )

=ff8 9
EditorGUIUtilityff: J
.ffJ K

(ffX Y
$strffY d
,ffd e
$str	fff �
)
ff� �
;
ff� �
publicgg 
staticgg 
readonlygg 

GUIContentgg )"
ShowAudioWaveformLabelgg* @
=ggA B
EditorGUIUtilityggC S
.ggS T

(gga b
$strggb x
,ggx y
$str	ggz �
)
gg� �
;
gg� �
publichh 
statichh 
readonlyhh 

GUIContenthh )
AudioScrubbingLabelhh* =
=hh> ?
EditorGUIUtilityhh@ P
.hhP Q

(hh^ _
$strhh_ v
,hhv w
$str	hhx �
)
hh� �
;
hh� �
publicii 
staticii 
readonlyii 

GUIContentii )
SnapToFrameLabelii* :
=ii; <
EditorGUIUtilityii= M
.iiM N

(ii[ \
$strii\ k
,iik l
$str	iim �
)
ii� �
;
ii� �
publicjj 
staticjj 
readonlyjj 

GUIContentjj )

=jj8 9
EditorGUIUtilityjj: J
.jjJ K

(jjX Y
$strjjY d
,jjd e
$str	jjf �
)
jj� �
;
jj� �
publickk 
statickk 
readonlykk 

GUIContentkk )#
PlaybackScrollModeLabelkk* A
=kkB C
EditorGUIUtilitykkD T
.kkT U

(kkb c
$strkkc |
,kk| }
$str	kk~ �
)
kk� �
;
kk� �
publicll 
staticll 
readonlyll 

GUIContentll )
EditorSettingLabelll* <
=ll= >
EditorGUIUtilityll? O
.llO P

(ll] ^
$strll^ x
,llx y
$strllz |
)ll| }
;ll} ~
}mm 
publicoo 
'
TimelinePreferencesProvideroo &
(oo& '
stringoo' -
pathoo. 2
,oo2 3

scopesooB H
,ooH I
IEnumerableooJ U
<ooU V
stringooV \
>oo\ ]
keywordsoo^ f
=oog h
nullooi m
)oom n
:pp 	
basepp
 
(pp 
pathpp 
,pp 
scopespp 
,pp 
keywordspp %
)pp% &
{qq 
}rr 
publictt 

overridett 
voidtt 

OnActivatett #
(tt# $
stringtt$ *

,tt8 9

rootElementttH S
)ttS T
{uu 
TimelinePreferencesvv 
.vv 
instancevv $
.vv$ %
Savevv% )
(vv) *
)vv* +
;vv+ ,
m_SerializedObjectww 
=ww 
TimelinePreferencesww 0
.ww0 1
instanceww1 9
.ww9 :
GetSerializedObjectww: M
(wwM N
)wwN O
;wwO P
m_ShowAudioWaveformxx 
=xx 
m_SerializedObjectxx 0
.xx0 1
FindPropertyxx1 =
(xx= >
$strxx> Q
)xxQ R
;xxR S
m_TimeUnitInFrameyy 
=yy 
m_SerializedObjectyy .
.yy. /
FindPropertyyy/ ;
(yy; <
$stryy< M
)yyM N
;yyN O

=zz 
m_SerializedObjectzz *
.zz* +
FindPropertyzz+ 7
(zz7 8
$strzz8 E
)zzE F
;zzF G

m_EdgeSnap{{ 
={{ 
m_SerializedObject{{ '
.{{' (
FindProperty{{( 4
({{4 5
$str{{5 ?
){{? @
;{{@ A 
m_PlaybackScrollMode|| 
=|| 
m_SerializedObject|| 1
.||1 2
FindProperty||2 >
(||> ?
$str||? S
)||S T
;||T U
}}} 
public 

override 
void 
OnGUI 
( 
string %

)3 4
{
��  
m_SerializedObject
�� 
.
�� 
Update
�� !
(
��! "
)
��" #
;
��# $
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� "
(
��" #
)
��# $
;
��$ %
using
�� 
(
�� 
new
�� 
SettingsWindow
�� !
.
��! "
GUIScope
��" *
(
��* +
)
��+ ,
)
��, -
{
�� 	
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
Styles
��' -
.
��- . 
EditorSettingLabel
��. @
,
��@ A
EditorStyles
��B N
.
��N O
	boldLabel
��O X
)
��X Y
;
��Y Z
int
�� 
timeUnitIdx
�� 
=
�� 
EditorGUILayout
�� -
.
��- .
Popup
��. 3
(
��3 4
Styles
��4 :
.
��: ;

��; H
,
��H I
m_TimeUnitInFrame
��J [
.
��[ \
	boolValue
��\ e
?
��f g
$num
��h i
:
��j k
$num
��l m
,
��m n

��o |
)
��| }
;
��} ~
m_TimeUnitInFrame
�� 
.
�� 
	boolValue
�� '
=
��( )
timeUnitIdx
��* 5
==
��6 8
$num
��9 :
;
��: ;"
m_PlaybackScrollMode
��  
.
��  !
enumValueIndex
��! /
=
��0 1
EditorGUILayout
��2 A
.
��A B
Popup
��B G
(
��G H
Styles
��H N
.
��N O%
PlaybackScrollModeLabel
��O f
,
��f g"
m_PlaybackScrollMode
��h |
.
��| }
enumValueIndex��} �
,��� �$
m_PlaybackScrollMode��� �
.��� �
	enumNames��� �
)��� �
;��� �!
m_ShowAudioWaveform
�� 
.
��  
	boolValue
��  )
=
��* +
EditorGUILayout
��, ;
.
��; <
Toggle
��< B
(
��B C
Styles
��C I
.
��I J$
ShowAudioWaveformLabel
��J `
,
��` a!
m_ShowAudioWaveform
��b u
.
��u v
	boolValue
��v 
)�� �
;��� �!
TimelinePreferences
�� 
.
��  
instance
��  (
.
��( )
audioScrubbing
��) 7
=
��8 9
EditorGUILayout
��: I
.
��I J
Toggle
��J P
(
��P Q
Styles
��Q W
.
��W X!
AudioScrubbingLabel
��X k
,
��k l"
TimelinePreferences��m �
.��� �
instance��� �
.��� �
audioScrubbing��� �
)��� �
;��� �

�� 
.
�� 
	boolValue
�� #
=
��$ %
EditorGUILayout
��& 5
.
��5 6
Toggle
��6 <
(
��< =
Styles
��= C
.
��C D
SnapToFrameLabel
��D T
,
��T U

��V c
.
��c d
	boolValue
��d m
)
��m n
;
��n o

m_EdgeSnap
�� 
.
�� 
	boolValue
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3
Toggle
��3 9
(
��9 :
Styles
��: @
.
��@ A

��A N
,
��N O

m_EdgeSnap
��P Z
.
��Z [
	boolValue
��[ d
)
��d e
;
��e f
}
�� 	
if
�� 

(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� $
(
��$ %
)
��% &
)
��& '
{
�� 	 
m_SerializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 6
(
��6 7
)
��7 8
;
��8 9!
TimelinePreferences
�� 
.
��  
instance
��  (
.
��( )
Save
��) -
(
��- .
)
��. /
;
��/ 0
TimelineEditor
�� 
.
�� 
Refresh
�� "
(
��" #

��# 0
.
��0 1
WindowNeedsRedraw
��1 B
)
��B C
;
��C D
}
�� 	
}
�� 
[
�� 
SettingsProvider
�� 
]
�� 
public
�� 

static
�� 
SettingsProvider
�� "2
$CreateTimelineProjectSettingProvider
��# G
(
��G H
)
��H I
{
�� 
var
�� 
provider
�� 
=
�� 
new
�� )
TimelinePreferencesProvider
�� 6
(
��6 7
$str
��7 M
,
��M N

��O \
.
��\ ]
User
��] a
,
��a b8
)GetSearchKeywordsFromGUIContentProperties��c �
<��� �
Styles��� �
>��� �
(��� �
)��� �
)��� �
;��� �
return
�� 
provider
�� 
;
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\EditModeInputHandler.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	 
EditModeInputHandler
 
{ 
readonly		 
MoveInputHandler		 !

;		/ 0
readonly

 
TrimInputHandler

 !


" /
;

/ 0
public  
EditModeInputHandler #
(# $
)$ %
{

= 
new 
MoveInputHandler  0
(0 1
)1 2
;2 3

= 
new 
TrimInputHandler  0
(0 1
)1 2
;2 3
} 	
public 
void 
ProcessMove 
(  

InputEvent  *
action+ 1
,1 2
double3 9
value: ?
)? @
{ 	
if 
( 
TimelineWindow 
. 
instance '
!=( *
null+ /
&&0 2
TimelineWindow3 A
.A B
instanceB J
.J K
stateK P
!=Q S
nullT X
)X Y
ProcessInputAction "
(" #

,0 1
action2 8
,8 9
value: ?
,? @
TimelineWindowA O
.O P
instanceP X
.X Y
stateY ^
)^ _
;_ `
} 	
public 
void 
ProcessTrim 
(  

InputEvent  *
action+ 1
,1 2
double3 9
value: ?
,? @
boolA E
stretchF M
)M N
{ 	
if 
( 
TimelineWindow 
. 
instance '
!=( *
null+ /
&&0 2
TimelineWindow3 A
.A B
instanceB J
.J K
stateK P
!=Q S
nullT X
)X Y
{ 

. 
stretch %
=& '
stretch( /
;/ 0
ProcessInputAction "
(" #

,0 1
action2 8
,8 9
value: ?
,? @
TimelineWindowA O
.O P
instanceP X
.X Y
stateY ^
)^ _
;_ `
} 
} 	
public!! 
void!! 
SetValueForEdge!! #
(!!# $
IEnumerable!!$ /
<!!/ 0

>!!= >
items!!? D
,!!D E

edge!!T X
,!!X Y
double!!Z `
value!!a f
)!!f g
{"" 	
if## 
(## 
TimelineWindow## 
.## 
instance## '
!=##( *
null##+ /
&&##0 2
TimelineWindow##3 A
.##A B
instance##B J
.##J K
state##K P
!=##Q S
null##T X
)##X Y
MoveInputHandler$$  
.$$  !
SetValueForEdge$$! 0
($$0 1
items$$1 6
,$$6 7
edge$$8 <
,$$< =
value$$> C
,$$C D
TimelineWindow$$E S
.$$S T
instance$$T \
.$$\ ]
state$$] b
)$$b c
;$$c d
}%% 	
public'' 
void'' 
OnGUI'' 
('' 
WindowState'' %
state''& +
,''+ ,
Event''- 2
evt''3 6
)''6 7
{(( 	
if)) 
()) 
TimelineWindow)) 
.)) 
instance)) '
!=))( *
null))+ /
&&))0 2
TimelineWindow))3 A
.))A B
instance))B J
.))J K
state))K P
!=))Q S
null))T X
)))X Y
{** 

.++ 
OnGUI++ #
(++# $
evt++$ '
)++' (
;++( )

.,, 
OnGUI,, #
(,,# $
state,,$ )
),,) *
;,,* +
}-- 
}.. 	
static00 
void00 
ProcessInputAction00 &
(00& '

handler005 <
,00< =

InputEvent00> H
action00I O
,00O P
double00Q W
value00X ]
,00] ^
WindowState00_ j
state00k p
)00p q
{11 	
var22 
items22 
=22 
SelectionManager22 (
.22( )

(226 7
)227 8
;228 9
switch33 
(33 
action33 
)33 
{44 
case55 

InputEvent55 
.55  
None55  $
:55$ %
return66 
;66 
case77 

InputEvent77 
.77  
	DragEnter77  )
:77) *
handler88 
.88 
OnEnterDrag88 '
(88' (
items88( -
,88- .
state88/ 4
)884 5
;885 6
break99 
;99 
case:: 

InputEvent:: 
.::  
Drag::  $
:::$ %
handler;; 
.;; 
OnDrag;; "
(;;" #
value;;# (
,;;( )
state;;* /
);;/ 0
;;;0 1
break<< 
;<< 
case== 

InputEvent== 
.==  
DragExit==  (
:==( )
handler>> 
.>> 

OnExitDrag>> &
(>>& '
)>>' (
;>>( )
break?? 
;?? 
case@@ 

InputEvent@@ 
.@@  

:@@- .
handlerAA 
.AA 

OnSetValueAA &
(AA& '
itemsAA' ,
,AA, -
valueAA. 3
,AA3 4
stateAA5 :
)AA: ;
;AA; <
breakBB 
;BB 
defaultCC 
:CC 
returnDD 
;DD 
}EE 
}FF 	
	interfaceHH 

{II 	
voidJJ 
OnEnterDragJJ 
(JJ 
IEnumerableJJ (
<JJ( )

>JJ6 7
itemsJJ8 =
,JJ= >
WindowStateJJ? J
stateJJK P
)JJP Q
;JJQ R
voidKK 
OnDragKK 
(KK 
doubleKK 
valueKK $
,KK$ %
WindowStateKK& 1
stateKK2 7
)KK7 8
;KK8 9
voidLL 

OnExitDragLL 
(LL 
)LL 
;LL 
voidMM 

OnSetValueMM 
(MM 
IEnumerableMM '
<MM' (

>MM5 6
itemsMM7 <
,MM< =
doubleMM> D
valueMME J
,MMJ K
WindowStateMML W
stateMMX ]
)MM] ^
;MM^ _
}NN 	
classPP 
TrimInputHandlerPP 
:PP  

{QQ 	
boolRR 

isDraggingRR 
{RR 
getRR !
;RR! "
setRR# &
;RR& '
}RR( )
publicSS 
boolSS 
stretchSS 
{SS  !
getSS" %
;SS% &
setSS' *
;SS* +
}SS, -
IEnumerableUU 
<UU 

>UU% &
grabbedItemsUU' 3
{UU4 5
getUU6 9
;UU9 :
setUU; >
;UU> ?
}UU@ A
publicWW 
voidWW 
OnEnterDragWW #
(WW# $
IEnumerableWW$ /
<WW/ 0

>WW= >
itemsWW? D
,WWD E
WindowStateWWF Q
stateWWR W
)WWW X
{XX 
grabbedItemsYY 
=YY 
itemsYY $
.YY$ %
OfTypeYY% +
<YY+ ,

ITrimmableYY, 6
>YY6 7
(YY7 8
)YY8 9
.YY9 :
ToArrayYY: A
(YYA B
)YYB C
;YYC D
foreachZZ 
(ZZ 
varZZ 
itemZZ !
inZZ" $
grabbedItemsZZ% 1
)ZZ1 2
{[[ 
EditMode\\ 
.\\ 
	BeginTrim\\ &
(\\& '
item\\' +
,\\+ ,
TrimEdge\\- 5
.\\5 6
End\\6 9
)\\9 :
;\\: ;
}]] 

isDragging__ 
=__ 
true__ !
;__! "
}`` 
publicbb 
voidbb 
OnDragbb 
(bb 
doublebb %
endValuebb& .
,bb. /
WindowStatebb0 ;
statebb< A
)bbA B
{cc 
vardd 
	trimValuedd 
=dd 
endValuedd  (
;dd( )
	trimValueee 
=ee  
TimeReferenceUtilityee 0
.ee0 1!
SnapToFrameIfRequiredee1 F
(eeF G
	trimValueeeG P
)eeP Q
;eeQ R
foreachgg 
(gg 
vargg 
itemgg !
ingg" $
grabbedItemsgg% 1
)gg1 2
{hh 
EditModeii 
.ii 
TrimEndii $
(ii$ %
itemii% )
,ii) *
	trimValueii+ 4
,ii4 5
stretchii6 =
)ii= >
;ii> ?
}jj 
statekk 
.kk &
UpdateRootPlayableDurationkk 0
(kk0 1
statekk1 6
.kk6 7
editSequencekk7 C
.kkC D
durationkkD L
)kkL M
;kkM N
}ll 
publicnn 
voidnn 

OnExitDragnn "
(nn" #
)nn# $
{oo 

isDraggingpp 
=pp 
falsepp "
;pp" #
EditModeqq 
.qq 

FinishTrimqq #
(qq# $
)qq$ %
;qq% &
TimelineWindowrr 
.rr 
instancerr '
.rr' (
Repaintrr( /
(rr/ 0
)rr0 1
;rr1 2
}ss 
publicuu 
voiduu 

OnSetValueuu "
(uu" #
IEnumerableuu# .
<uu. /

>uu< =
itemsuu> C
,uuC D
doubleuuE K
endValueuuL T
,uuT U
WindowStateuuV a
stateuub g
)uug h
{vv 
foreachww 
(ww 
varww 
itemww !
inww" $
itemsww% *
.ww* +
OfTypeww+ 1
<ww1 2

ITrimmableww2 <
>ww< =
(ww= >
)ww> ?
)ww? @
{xx 
EditModeyy 
.yy 
	BeginTrimyy &
(yy& '
itemyy' +
,yy+ ,
TrimEdgeyy- 5
.yy5 6
Endyy6 9
)yy9 :
;yy: ;
EditModezz 
.zz 
TrimEndzz $
(zz$ %
itemzz% )
,zz) *
endValuezz+ 3
,zz3 4
stretchzz5 <
)zz< =
;zz= >
EditMode{{ 
.{{ 

FinishTrim{{ '
({{' (
){{( )
;{{) *
}|| 
state}} 
.}} &
UpdateRootPlayableDuration}} 0
(}}0 1
state}}1 6
.}}6 7
editSequence}}7 C
.}}C D
duration}}D L
)}}L M
;}}M N
}~~ 
public
�� 
void
�� 
OnGUI
�� 
(
�� 
WindowState
�� )
state
��* /
)
��/ 0
{
�� 
if
�� 
(
�� 
!
�� 

isDragging
�� 
)
��  
return
��! '
;
��' (
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
grabbedItems
��% 1
)
��1 2
{
�� 
EditMode
�� 
.
�� 
DrawTrimGUI
�� (
(
��( )
state
��) .
,
��. /
item
��0 4
.
��4 5
gui
��5 8
,
��8 9
TrimEdge
��: B
.
��B C
End
��C F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 	
class
�� 
MoveInputHandler
�� 
:
��  

��! .
{
�� 	
MoveItemHandler
�� 
m_MoveItemHandler
�� -
;
��- .
public
�� 
void
�� 
OnEnterDrag
�� #
(
��# $
IEnumerable
��$ /
<
��/ 0

��0 =
>
��= >
items
��? D
,
��D E
WindowState
��F Q
state
��R W
)
��W X
{
�� 
if
�� 
(
�� 
items
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
��  
{
�� 
m_MoveItemHandler
�� %
=
��& '
new
��( +
MoveItemHandler
��, ;
(
��; <
state
��< A
)
��A B
;
��B C
m_MoveItemHandler
�� %
.
��% &
Grab
��& *
(
��* +
items
��+ 0
,
��0 1
items
��2 7
.
��7 8
First
��8 =
(
��= >
)
��> ?
.
��? @
parentTrack
��@ K
)
��K L
;
��L M
}
�� 
}
�� 
public
�� 
void
�� 
OnDrag
�� 
(
�� 
double
�� %
value
��& +
,
��+ ,
WindowState
��- 8
state
��9 >
)
��> ?
{
�� 
if
�� 
(
�� 
m_MoveItemHandler
�� %
==
��& (
null
��) -
)
��- .
return
��/ 5
;
��5 6
var
�� 

startValue
�� 
=
��  
value
��! &
;
��& '

startValue
�� 
=
�� "
TimeReferenceUtility
�� 1
.
��1 2#
SnapToFrameIfRequired
��2 G
(
��G H

startValue
��H R
)
��R S
;
��S T
m_MoveItemHandler
�� !
.
��! "
OnAttractedEdge
��" 1
(
��1 2
null
��2 6
,
��6 7
ManipulateEdges
��8 G
.
��G H
Both
��H L
,
��L M

��N [
.
��[ \
None
��\ `
,
��` a

startValue
��b l
)
��l m
;
��m n
}
�� 
public
�� 
void
�� 

OnExitDrag
�� "
(
��" #
)
��# $
{
�� 
if
�� 
(
�� 
m_MoveItemHandler
�� %
==
��& (
null
��) -
)
��- .
return
��/ 5
;
��5 6
m_MoveItemHandler
�� !
.
��! "
Drop
��" &
(
��& '
)
��' (
;
��( )
m_MoveItemHandler
�� !
=
��" #
null
��$ (
;
��( )

GUIUtility
�� 
.
�� 
ExitGUI
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
public
�� 
void
�� 

OnSetValue
�� "
(
��" #
IEnumerable
��# .
<
��. /

��/ <
>
��< =
items
��> C
,
��C D
double
��E K
value
��L Q
,
��Q R
WindowState
��S ^
state
��_ d
)
��d e
{
�� 
if
�� 
(
�� 
!
�� 
items
�� 
.
�� 
Any
�� 
(
�� 
)
��  
)
��  !
return
��" (
;
��( )
m_MoveItemHandler
�� !
=
��" #
new
��$ '
MoveItemHandler
��( 7
(
��7 8
state
��8 =
)
��= >
;
��> ?
m_MoveItemHandler
�� !
.
��! "
Grab
��" &
(
��& '
items
��' ,
,
��, -
items
��. 3
.
��3 4
First
��4 9
(
��9 :
)
��: ;
.
��; <
parentTrack
��< G
)
��G H
;
��H I
m_MoveItemHandler
�� !
.
��! "
OnAttractedEdge
��" 1
(
��1 2
null
��2 6
,
��6 7
ManipulateEdges
��8 G
.
��G H
Both
��H L
,
��L M

��N [
.
��[ \
None
��\ `
,
��` a
value
��b g
)
��g h
;
��h i
m_MoveItemHandler
�� !
.
��! "
Drop
��" &
(
��& '
)
��' (
;
��( )
m_MoveItemHandler
�� !
=
��" #
null
��$ (
;
��( )
}
�� 
public
�� 
void
�� 
OnGUI
�� 
(
�� 
Event
�� #
evt
��$ '
)
��' (
{
�� 
if
�� 
(
�� 
m_MoveItemHandler
�� %
!=
��& (
null
��) -
)
��- .
m_MoveItemHandler
�� %
.
��% &
OnGUI
��& +
(
��+ ,
evt
��, /
)
��/ 0
;
��0 1
}
�� 
public
�� 
static
�� 
void
�� 
SetValueForEdge
�� .
(
��. /
IEnumerable
��/ :
<
��: ;

��; H
>
��H I
items
��J O
,
��O P

��Q ^
edge
��_ c
,
��c d
double
��e k
value
��l q
,
��q r
WindowState
��s ~
state�� �
)��� �
{
�� 
var
�� 
handler
�� 
=
�� 
new
�� !
MoveItemHandler
��" 1
(
��1 2
state
��2 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
items
��% *
)
��* +
{
�� 
handler
�� 
.
�� 
Grab
��  
(
��  !
new
��! $
[
��$ %
]
��% &
{
��' (
item
��( ,
}
��, -
,
��- .
item
��/ 3
.
��3 4
parentTrack
��4 ?
)
��? @
;
��@ A
handler
�� 
.
�� 
OnAttractedEdge
�� +
(
��+ ,
null
��, 0
,
��0 1
ManipulateEdges
��2 A
.
��A B
Both
��B F
,
��F G
edge
��H L
,
��L M
value
��N S
)
��S T
;
��T U
handler
�� 
.
�� 
Drop
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\ClipInspector\ClipInspector.cs
	namespace		 	
UnityEditor		
 
.		 
Timeline		 
{

 
[ 
CustomEditor 
( 
typeof 
( 

EditorClip #
)# $
)$ %
,% &"
CanEditMultipleObjects' =
]= >
class 	

 
: 
Editor  
{
internal 
static 
class 
Styles $
{ 	
public 
static 
readonly "

GUIContent# -
	StartName. 7
=8 9
EditorGUIUtility: J
.J K

(X Y
$strY `
,` a
$strb ~
)~ 
;	 �
public 
static 
readonly "

GUIContent# -
DurationName. :
=; <
EditorGUIUtility= M
.M N

([ \
$str\ f
,f g
$str	h �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
EndName. 5
=6 7
EditorGUIUtility8 H
.H I

(V W
$strW \
,\ ]
$str^ x
)x y
;y z
public 
static 
readonly "

GUIContent# -
EaseInDurationName. @
=A B
EditorGUIUtilityC S
.S T

(a b
$strb t
,t u
$str	v �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
BlendInDurationName. A
=B C
EditorGUIUtilityD T
.T U

(b c
$strc v
,v w
$str	x �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
EaseOutDurationName. A
=B C
EditorGUIUtilityD T
.T U

(b c
$strc v
,v w
$str	x �
)
� �
;
� �
public 
static 
readonly "

GUIContent# - 
BlendOutDurationName. B
=C D
EditorGUIUtilityE U
.U V

(c d
$strd x
,x y
$str	z �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -

ClipInName. 8
=9 :
EditorGUIUtility; K
.K L

(Y Z
$strZ c
,c d
$str	e �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -

=< =
EditorGUIUtility> N
.N O

(\ ]
$str] o
,o p
$str	q �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
PreExtrapolateLabel. A
=B C
EditorGUIUtilityD T
.T U

(b c
$strc t
,t u
$str	v �
)
� �
;
� �
public 
static 
readonly "

GUIContent# - 
PostExtrapolateLabel. B
=C D
EditorGUIUtilityE U
.U V

(c d
$strd v
,v w
$str	x �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
BlendInCurveName. >
=? @
EditorGUIUtilityA Q
.Q R

(_ `
$str` d
,d e
$strf v
)v w
;w x
public 
static 
readonly "

GUIContent# -
BlendOutCurveName. ?
=@ A
EditorGUIUtilityB R
.R S

(` a
$stra f
,f g
$strh y
)y z
;z {
public 
static 
readonly "

GUIContent# -
PreviewTitle. :
=; <
EditorGUIUtility= M
.M N

([ \
$str\ j
)j k
;k l
public 
static 
readonly "

GUIContent# -
ClipTimingTitle. =
=> ?
EditorGUIUtility@ P
.P Q

(^ _
$str_ l
)l m
;m n
public 
static 
readonly "

GUIContent# -'
AnimationExtrapolationTitle. I
=J K
EditorGUIUtilityL \
.\ ]

(j k
$str	k �
)
� �
;
� �
public   
static   
readonly   "

GUIContent  # -
BlendCurvesTitle  . >
=  ? @
EditorGUIUtility  A Q
.  Q R

(  _ `
$str  ` n
)  n o
;  o p
public!! 
static!! 
readonly!! "

GUIContent!!# -
GroupTimingTitle!!. >
=!!? @
EditorGUIUtility!!A Q
.!!Q R

(!!_ `
$str!!` v
)!!v w
;!!w x
public"" 
static"" 
readonly"" "

GUIContent""# -@
4MultipleClipsSelectedIncompatibleCapabilitiesWarning"". b
=""c d
EditorGUIUtility""e u
.""u v

(
""� �
$str
""� �
)
""� �
;
""� �
public## 
static## 
readonly## "

GUIContent### -"
MultipleSelectionTitle##. D
=##E F
EditorGUIUtility##G W
.##W X

(##e f
$str##f v
)##v w
;##w x
public$$ 
static$$ 
readonly$$ "

GUIContent$$# -!
MultipleClipStartName$$. C
=$$D E
EditorGUIUtility$$F V
.$$V W

($$d e
$str$$e l
,$$l m
$str	$$n �
)
$$� �
;
$$� �
public%% 
static%% 
readonly%% "

GUIContent%%# -
MultipleClipEndName%%. A
=%%B C
EditorGUIUtility%%D T
.%%T U

(%%b c
$str%%c h
,%%h i
$str	%%j �
)
%%� �
;
%%� �
public&& 
static&& 
readonly&& "

GUIContent&&# -
TimelineClipFG&&. <
=&&= >
DirectorStyles&&? M
.&&M N
IconContent&&N Y
(&&Y Z
$str&&Z j
)&&j k
;&&k l
public'' 
static'' 
readonly'' "

GUIContent''# -
TimelineClipBG''. <
=''= >
DirectorStyles''? M
.''M N
IconContent''N Y
(''Y Z
$str''Z j
)''j k
;''k l
}(( 	
class** 
EditorClipSelection** !
:**" #(
ICurvesOwnerInspectorWrapper**$ @
{++ 	
public,, 

EditorClip,, 

editorClip,, (
{,,) *
get,,+ .
;,,. /
},,0 1
public.. 
TimelineClip.. 
clip..  $
{// 
get00 
{00 
return00 

editorClip00 '
==00( *
null00+ /
?000 1
null002 6
:007 8

editorClip009 C
.00C D
clip00D H
;00H I
}00J K
}11 
public33 
SerializedObject33 ##
serializedPlayableAsset33$ ;
{33< =
get33> A
;33A B
}33C D
public55 
ICurvesOwner55 
curvesOwner55  +
{66 
get77 
{77 
return77 
clip77 !
;77! "
}77# $
}88 
public:: 
int:: 
lastCurveVersion:: '
{::( )
get::* -
;::- .
set::/ 2
;::2 3
}::4 5
public;; 
double;; 
lastEvalTime;; &
{;;' (
get;;) ,
;;;, -
set;;. 1
;;;1 2
};;3 4
public== 
EditorClipSelection== &
(==& '

EditorClip==' 1
anEditorClip==2 >
)==> ?
{>> 

editorClip?? 
=?? 
anEditorClip?? )
;??) *
lastCurveVersion@@  
=@@! "
-@@# $
$num@@$ %
;@@% &
lastEvalTimeAA 
=AA 
-AA  
$numAA  !
;AA! "
varCC 
soCC 
=CC 
newCC 
SerializedObjectCC -
(CC- .

editorClipCC. 8
)CC8 9
;CC9 :
varDD !
playableAssetPropertyDD )
=DD* +
soDD, .
.DD. /
FindPropertyDD/ ;
(DD; <
$strDD< L
)DDL M
;DDM N
ifEE 
(EE !
playableAssetPropertyEE )
!=EE* ,
nullEE- 1
)EE1 2
{FF 
varGG 
assetGG 
=GG !
playableAssetPropertyGG  5
.GG5 6 
objectReferenceValueGG6 J
asGGK M
UnityEngineGGN Y
.GGY Z
	PlayablesGGZ c
.GGc d

;GGq r
ifHH 
(HH 
assetHH 
!=HH  
nullHH! %
)HH% &#
serializedPlayableAssetII /
=II0 1
newII2 5
SerializedObjectII6 F
(IIF G
assetIIG L
)IIL M
;IIM N
}JJ 
}KK 
publicMM 
doubleMM 
ToLocalTimeMM %
(MM% &
doubleMM& ,
timeMM- 1
)MM1 2
{NN 
returnOO 
clipOO 
==OO 
nullOO #
?OO$ %
timeOO& *
:OO+ ,
clipOO- 1
.OO1 2
ToLocalTimeOO2 =
(OO= >
timeOO> B
)OOB C
;OOC D
}PP 
}QQ 	
enumSS 
PreviewCurveStateSS
{TT 	
NoneUU 
=UU 
$numUU 
,UU 
MixInVV 
=VV 
$numVV 
,VV 
MixOutWW 
=WW 
$numWW 
}XX 	
SerializedProperty[[ !
m_DisplayNameProperty[[ 0
;[[0 1
SerializedProperty\\ %
m_BlendInDurationProperty\\ 4
;\\4 5
SerializedProperty]] &
m_BlendOutDurationProperty]] 5
;]]5 6
SerializedProperty^^ $
m_EaseInDurationProperty^^ 3
;^^3 4
SerializedProperty__ %
m_EaseOutDurationProperty__ 4
;__4 5
SerializedProperty`` 
m_ClipInProperty`` +
;``+ ,
SerializedPropertyaa 
m_TimeScalePropertyaa .
;aa. /
SerializedPropertybb +
m_PostExtrapolationModePropertybb :
;bb: ;
SerializedPropertycc *
m_PreExtrapolationModePropertycc 9
;cc9 :
SerializedPropertydd +
m_PostExtrapolationTimePropertydd :
;dd: ;
SerializedPropertyee *
m_PreExtrapolationTimePropertyee 9
;ee9 :
SerializedPropertyff  
m_MixInCurvePropertyff /
;ff/ 0
SerializedPropertygg !
m_MixOutCurvePropertygg 0
;gg0 1
SerializedPropertyhh &
m_BlendInCurveModePropertyhh 5
;hh5 6
SerializedPropertyii '
m_BlendOutCurveModePropertyii 6
;ii6 7
voidkk  
InitializePropertieskk
(kk! "
)kk" #
{ll 	!
m_DisplayNamePropertymm !
=mm" #
serializedObjectmm$ 4
.mm4 5
FindPropertymm5 A
(mmA B
$strmmB X
)mmX Y
;mmY Z%
m_BlendInDurationPropertynn %
=nn& '
serializedObjectnn( 8
.nn8 9
FindPropertynn9 E
(nnE F
$strnnF `
)nn` a
;nna b&
m_BlendOutDurationPropertyoo &
=oo' (
serializedObjectoo) 9
.oo9 :
FindPropertyoo: F
(ooF G
$strooG b
)oob c
;ooc d$
m_EaseInDurationPropertypp $
=pp% &
serializedObjectpp' 7
.pp7 8
FindPropertypp8 D
(ppD E
$strppE ^
)pp^ _
;pp_ `%
m_EaseOutDurationPropertyqq %
=qq& '
serializedObjectqq( 8
.qq8 9
FindPropertyqq9 E
(qqE F
$strqqF `
)qq` a
;qqa b
m_ClipInPropertyrr 
=rr 
serializedObjectrr /
.rr/ 0
FindPropertyrr0 <
(rr< =
$strrr= N
)rrN O
;rrO P
m_TimeScalePropertyss 
=ss  !
serializedObjectss" 2
.ss2 3
FindPropertyss3 ?
(ss? @
$strss@ T
)ssT U
;ssU V+
m_PostExtrapolationModePropertytt +
=tt, -
serializedObjecttt. >
.tt> ?
FindPropertytt? K
(ttK L
$strttL l
)ttl m
;ttm n*
m_PreExtrapolationModePropertyuu *
=uu+ ,
serializedObjectuu- =
.uu= >
FindPropertyuu> J
(uuJ K
$struuK j
)uuj k
;uuk l+
m_PostExtrapolationTimePropertyvv +
=vv, -
serializedObjectvv. >
.vv> ?
FindPropertyvv? K
(vvK L
$strvvL l
)vvl m
;vvm n*
m_PreExtrapolationTimePropertyww *
=ww+ ,
serializedObjectww- =
.ww= >
FindPropertyww> J
(wwJ K
$strwwK j
)wwj k
;wwk l 
m_MixInCurvePropertyxx  
=xx! "
serializedObjectxx# 3
.xx3 4
FindPropertyxx4 @
(xx@ A
$strxxA V
)xxV W
;xxW X!
m_MixOutCurvePropertyyy !
=yy" #
serializedObjectyy$ 4
.yy4 5
FindPropertyyy5 A
(yyA B
$stryyB X
)yyX Y
;yyY Z&
m_BlendInCurveModePropertyzz &
=zz' (
serializedObjectzz) 9
.zz9 :
FindPropertyzz: F
(zzF G
$strzzG b
)zzb c
;zzc d'
m_BlendOutCurveModeProperty{{ '
={{( )
serializedObject{{* :
.{{: ;
FindProperty{{; G
({{G H
$str{{H d
){{d e
;{{e f
}|| 	

m_TimelineAsset~~ %
;~~% &
List
�� 
<
�� 
EditorClipSelection
��
>
��  !
m_SelectionCache
��" 2
;
��2 3
Editor
�� /
!m_SelectedPlayableAssetsInspector
�� 0
;
��0 1&
ClipInspectorCurveEditor
��  
m_ClipCurveEditor
��! 2
;
��2 3 
CurvePresetLibrary
�� 
m_CurvePresets
�� )
;
��) *
bool
�� ,
m_IsClipAssetInspectorExpanded
��
=
��, -
true
��. 2
;
��2 3

GUIContent
�� 
m_ClipAssetTitle
�� #
=
��$ %
new
��& )

GUIContent
��* 4
(
��4 5
)
��5 6
;
��6 7
string
�� )
m_MultiselectionHeaderTitle
�� *
;
��* +(
ClipInspectorSelectionInfo
�� "
m_SelectionInfo
��# 2
;
��2 3
PreviewCurveState
�� !
m_PreviewCurveState
�� -
;
��- .
const
�� 
double
�� $
k_TimeScaleSensitivity
�� +
=
��, -
$num
��. 3
;
��3 4
bool
�� "
hasMultipleSelection
��
{
�� 	
get
�� 
{
�� 
return
�� 
targets
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
;
��+ ,
}
��- .
}
�� 	
float
�� 
currentFrameRate
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_TimelineAsset
�� (
!=
��) +
null
��, 0
?
��1 2
m_TimelineAsset
��3 B
.
��B C
editorSettings
��C Q
.
��Q R
fps
��R U
:
��V W

��X e
.
��e f
EditorSettings
��f t
.
��t u
kDefaultFps��u �
;��� �
}��� �
}
�� 	
bool
�� 2
$selectionHasIncompatibleCapabilities
��
{
�� 	
get
�� 
{
�� 
return
�� 
!
�� 
(
�� 
m_SelectionInfo
�� (
.
��( )
supportsBlending
��) 9
&&
�� 
m_SelectionInfo
�� &
.
��& '
supportsClipIn
��' 5
&&
�� 
m_SelectionInfo
�� &
.
��& '#
supportsExtrapolation
��' <
&&
�� 
m_SelectionInfo
�� &
.
��& '%
supportsSpeedMultiplier
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
override
�� 
bool
�� %
RequiresConstantRepaint
�� 4
(
��4 5
)
��5 6
{
�� 	
return
�� 
base
�� 
.
�� %
RequiresConstantRepaint
�� /
(
��/ 0
)
��0 1
||
��2 4
(
��5 6/
!m_SelectedPlayableAssetsInspector
��6 W
!=
��X Z
null
��[ _
&&
��` b0
!m_SelectedPlayableAssetsInspector��c �
.��� �'
RequiresConstantRepaint��� �
(��� �
)��� �
)��� �
;��� �
}
�� 	
internal
�� 
override
�� 
void
�� 
OnHeaderTitleGUI
�� /
(
��/ 0
Rect
��0 4
	titleRect
��5 >
,
��> ?
string
��@ F
header
��G M
)
��M N
{
�� 	
if
�� 
(
�� "
hasMultipleSelection
�� $
)
��$ %
{
�� 
base
�� 
.
�� 
OnHeaderTitleGUI
�� %
(
��% &
	titleRect
��& /
,
��/ 0)
m_MultiselectionHeaderTitle
��1 L
)
��L M
;
��M N
return
�� 
;
�� 
}
�� 
if
�� 
(
�� #
m_DisplayNameProperty
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
using
�� 
(
�� 
new
�� 
	EditorGUI
�� $
.
��$ %

��% 2
(
��2 3
!
��3 4
	IsEnabled
��4 =
(
��= >
)
��> ?
)
��? @
)
��@ A
{
�� 
serializedObject
�� $
.
��$ %
Update
��% +
(
��+ ,
)
��, -
;
��- .
if
�� 
(
�� 
IsLocked
��  
(
��  !
)
��! "
)
��" #
{
�� 
base
�� 
.
�� 
OnHeaderTitleGUI
�� -
(
��- .
	titleRect
��. 7
,
��7 8#
m_DisplayNameProperty
��9 N
.
��N O
stringValue
��O Z
)
��Z [
;
��[ \
}
�� 
else
�� 
{
�� 
	EditorGUI
�� !
.
��! "
BeginChangeCheck
��" 2
(
��2 3
)
��3 4
;
��4 5
	EditorGUI
�� !
.
��! "
DelayedTextField
��" 2
(
��2 3
	titleRect
��3 <
,
��< =#
m_DisplayNameProperty
��> S
,
��S T

GUIContent
��U _
.
��_ `
none
��` d
)
��d e
;
��e f
if
�� 
(
�� 
	EditorGUI
�� %
.
��% &
EndChangeCheck
��& 4
(
��4 5
)
��5 6
)
��6 7
{
�� %
ApplyModifiedProperties
�� 3
(
��3 4
)
��4 5
;
��5 6
TimelineWindow
�� *
.
��* ++
RepaintIfEditingTimelineAsset
��+ H
(
��H I
m_TimelineAsset
��I X
)
��X Y
;
��Y Z
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
override
�� 
Rect
�� *
DrawHeaderHelpAndSettingsGUI
�� ;
(
��; <
Rect
��< @
r
��A B
)
��B C
{
�� 	
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  !

��! .
(
��. /
IsLocked
��/ 7
(
��7 8
)
��8 9
)
��9 :
)
��: ;
{
�� 
var
�� 
helpSize
�� 
=
�� 
EditorStyles
�� +
.
��+ ,

iconButton
��, 6
.
��6 7
CalcSize
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J
GUIContents
��J U
.
��U V
helpIcon
��V ^
)
��^ _
;
��_ `
const
�� 
int
�� 

kTopMargin
�� $
=
��% &
$num
��' (
;
��( )
return
�� 
EditorGUIUtility
�� '
.
��' (#
DrawEditorHeaderItems
��( =
(
��= >
new
��> A
Rect
��B F
(
��F G
r
��G H
.
��H I
xMax
��I M
-
��N O
helpSize
��P X
.
��X Y
x
��Y Z
,
��Z [
r
��\ ]
.
��] ^
y
��^ _
+
��` a

kTopMargin
��b l
,
��l m
helpSize
��n v
.
��v w
x
��w x
,
��x y
helpSize��z �
.��� �
y��� �
)��� �
,��� �
targets��� �
)��� �
;��� �
}
�� 
}
�� 	
internal
�� 
override
�� 
void
�� 
OnHeaderIconGUI
�� .
(
��. /
Rect
��/ 3
iconRect
��4 <
)
��< =
{
�� 	
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  !

��! .
(
��. /
IsLocked
��/ 7
(
��7 8
)
��8 9
)
��9 :
)
��: ;
{
�� 
var
�� 
bgColor
�� 
=
�� 
Color
�� #
.
��# $
white
��$ )
;
��) *
if
�� 
(
�� 
!
�� 
EditorGUIUtility
�� %
.
��% &
	isProSkin
��& /
)
��/ 0
bgColor
�� 
.
�� 
a
�� 
=
�� 
$num
��  %
;
��% &
using
�� 
(
�� 
new
�� 
GUIColorOverride
�� +
(
��+ ,
bgColor
��, 3
)
��3 4
)
��4 5
{
�� 
GUI
�� 
.
�� 
Label
�� 
(
�� 
iconRect
�� &
,
��& '
Styles
��( .
.
��. /
TimelineClipBG
��/ =
)
��= >
;
��> ?
}
�� 
var
�� 
fgColor
�� 
=
�� 
Color
�� #
.
��# $
white
��$ )
;
��) *
if
�� 
(
�� 
m_SelectionInfo
�� #
!=
��$ &
null
��' +
&&
��, .
m_SelectionInfo
��/ >
.
��> ? 
uniqueParentTracks
��? Q
.
��Q R
Count
��R W
==
��X Z
$num
��[ \
)
��\ ]
fgColor
�� 
=
��  
TrackResourceCache
�� 0
.
��0 1

��1 >
(
��> ?
m_SelectionInfo
��? N
.
��N O 
uniqueParentTracks
��O a
.
��a b
First
��b g
(
��g h
)
��h i
)
��i j
;
��j k
using
�� 
(
�� 
new
�� 
GUIColorOverride
�� +
(
��+ ,
fgColor
��, 3
)
��3 4
)
��4 5
{
�� 
GUI
�� 
.
�� 
Label
�� 
(
�� 
iconRect
�� &
,
��& '
Styles
��( .
.
��. /
TimelineClipFG
��/ =
)
��= >
;
��> ?
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
Undo
�� 
.
�� 
undoRedoPerformed
�� "
+=
��# %!
OnUndoRedoPerformed
��& 9
;
��9 :
m_ClipCurveEditor
�� 
=
�� 
new
��  #&
ClipInspectorCurveEditor
��$ <
(
��< =
)
��= >
;
��> ?
m_SelectionCache
�� 
=
�� 
new
�� "
List
��# '
<
��' (!
EditorClipSelection
��( ;
>
��; <
(
��< =
)
��= >
;
��> ?
var
�� 

�� 
=
�� 
new
��  #
List
��$ (
<
��( )
TimelineClip
��) 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
editorClipObject
�� )
in
��* ,
targets
��- 4
)
��4 5
{
�� 
var
�� 

editorClip
�� 
=
��  
editorClipObject
��! 1
as
��2 4

EditorClip
��5 ?
;
��? @
if
�� 
(
�� 

editorClip
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
if
�� 
(
�� 
!
�� /
!IsTimelineAssetValidForEditorClip
�� :
(
��: ;

editorClip
��; E
)
��E F
)
��F G
{
�� 
m_SelectionCache
�� (
.
��( )
Clear
��) .
(
��. /
)
��/ 0
;
��0 1
return
�� 
;
�� 
}
�� 
m_SelectionCache
�� $
.
��$ %
Add
��% (
(
��( )
new
��) ,!
EditorClipSelection
��- @
(
��@ A

editorClip
��A K
)
��K L
)
��L M
;
��M N

�� !
.
��! "
Add
��" %
(
��% &

editorClip
��& 0
.
��0 1
clip
��1 5
)
��5 6
;
��6 7
}
�� 
}
�� 
InitializeProperties
��  
(
��  !
)
��! "
;
��" #
m_SelectionInfo
�� 
=
�� 
new
�� !(
ClipInspectorSelectionInfo
��" <
(
��< =

��= J
)
��J K
;
��K L
if
�� 
(
�� 
m_SelectionInfo
�� 
.
��  .
 selectedAssetTypesAreHomogeneous
��  @
)
��@ A
{
�� 
var
�� 
selectedAssets
�� "
=
��# $
m_SelectionCache
��% 5
.
��5 6
Select
��6 <
(
��< =
e
��= >
=>
��? A
e
��B C
.
��C D
clip
��D H
.
��H I
asset
��I N
)
��N O
.
��O P
ToArray
��P W
(
��W X
)
��X Y
;
��Y Z/
!m_SelectedPlayableAssetsInspector
�� 1
=
��2 3&
TimelineInspectorUtility
��4 L
.
��L M$
GetInspectorForObjects
��M c
(
��c d
selectedAssets
��d r
)
��r s
;
��s t
}
�� 
m_MultiselectionHeaderTitle
�� '
=
��( )
m_SelectionCache
��* :
.
��: ;
Count
��; @
+
��A B
$str
��C F
+
��G H
Styles
��I O
.
��O P$
MultipleSelectionTitle
��P f
.
��f g
text
��g k
;
��k l
m_ClipAssetTitle
�� 
.
�� 
text
�� !
=
��" #'
PlayableAssetSectionTitle
��$ =
(
��= >
)
��> ?
;
��? @
}
�� 	
void
�� 
	OnDisable
��
(
�� 
)
�� 
{
�� 	
Undo
�� 
.
�� 
undoRedoPerformed
�� "
-=
��# %!
OnUndoRedoPerformed
��& 9
;
��9 :
}
�� 	
void
��  
DrawClipProperties
��
(
��  
)
��  !
{
�� 	
var
�� &
dirtyEditorClipSelection
�� (
=
��) *
m_SelectionCache
��+ ;
.
��; <
Where
��< A
(
��A B
s
��B C
=>
��D F
s
��G H
.
��H I

editorClip
��I S
.
��S T
GetHashCode
��T _
(
��_ `
)
��` a
!=
��b d
s
��e f
.
��f g

editorClip
��g q
.
��q r
lastHash
��r z
)
��z {
;
��{ |
UnselectCurves
�� 
(
�� 
)
�� 
;
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� "
hasMultipleSelection
�� $
)
��$ %
{
�� 
	GUILayout
�� 
.
�� 
Label
�� 
(
��  
Styles
��  &
.
��& '
GroupTimingTitle
��' 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (*
DrawGroupSelectionProperties
�� ,
(
��, -
)
��- .
;
��. /
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
}
�� 
	GUILayout
�� 
.
�� 
Label
�� 
(
�� 
Styles
�� "
.
��" #
ClipTimingTitle
��# 2
)
��2 3
;
��3 4
if
�� 
(
�� "
hasMultipleSelection
�� $
&&
��% '2
$selectionHasIncompatibleCapabilities
��( L
)
��L M
{
�� 
	GUILayout
�� 
.
�� 
Label
�� 
(
��  
Styles
��  &
.
��& 'B
4MultipleClipsSelectedIncompatibleCapabilitiesWarning
��' [
,
��[ \
EditorStyles
��] i
.
��i j
helpBox
��j q
)
��q r
;
��r s
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
if
�� 
(
�� 
!
�� 
m_SelectionInfo
��  
.
��  !3
%containsAtLeastTwoClipsOnTheSameTrack
��! F
)
��F G
{
�� 
DrawStartTimeField
�� "
(
��" #
)
��# $
;
��$ %
DrawEndTimeField
��  
(
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
�� 
!
�� "
hasMultipleSelection
�� %
)
��% &
{
�� 
DrawDurationProperty
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
if
�� 
(
�� 
m_SelectionInfo
�� 
.
��  
supportsBlending
��  0
)
��0 1
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' ($
DrawBlendingProperties
�� &
(
��& '
)
��' (
;
��( )
}
�� 
if
�� 
(
�� 
m_SelectionInfo
�� 
.
��  
supportsClipIn
��  .
)
��. /
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' ( 
DrawClipInProperty
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� 
!
�� "
hasMultipleSelection
�� %
&&
��& (
m_SelectionInfo
��) 8
.
��8 9%
supportsSpeedMultiplier
��9 P
)
��P Q
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (

�� 
(
�� 
)
�� 
;
��  
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
bool
�� !
hasDirtyEditorClips
�� $
=
��% &
false
��' ,
;
��, -
foreach
�� 
(
�� 
var
�� !
editorClipSelection
�� ,
in
��- /&
dirtyEditorClipSelection
��0 H
)
��H I
{
�� 

�� 
.
�� 
SetDirty
�� &
(
��& '!
editorClipSelection
��' :
.
��: ;

editorClip
��; E
)
��E F
;
��F G!
hasDirtyEditorClips
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
bool
�� #
propertiesHaveChanged
�� &
=
��' (
false
��) .
;
��. /
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
||
��+ -!
hasDirtyEditorClips
��. A
)
��A B
{
�� 
if
�� 
(
�� 
TimelineWindow
�� "
.
��" #$
IsEditingTimelineAsset
��# 9
(
��9 :
m_TimelineAsset
��: I
)
��I J
&&
��K M
TimelineWindow
��N \
.
��\ ]
instance
��] e
.
��e f
state
��f k
!=
��l n
null
��o s
)
��s t
{
�� 
TimelineWindow
�� "
.
��" #
instance
��# +
.
��+ ,
state
��, 1
.
��1 2
Evaluate
��2 :
(
��: ;
)
��; <
;
��< =
TimelineWindow
�� "
.
��" #
instance
��# +
.
��+ ,
Repaint
��, 3
(
��3 4
)
��4 5
;
��5 6
}
�� #
propertiesHaveChanged
�� %
=
��& '
true
��( ,
;
��, -
}
�� 
if
�� 
(
�� 
m_SelectionInfo
�� 
.
��  #
supportsExtrapolation
��  5
)
��5 6
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
	GUILayout
�� 
.
�� 
Label
�� 
(
��  
Styles
��  &
.
��& ')
AnimationExtrapolationTitle
��' B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (&
DrawExtrapolationOptions
�� (
(
��( )
)
��) *
;
��* +
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
if
�� 
(
�� 
m_SelectionInfo
�� 
.
��  
supportsBlending
��  0
)
��0 1
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
	GUILayout
�� 
.
�� 
Label
�� 
(
��  
Styles
��  &
.
��& '
BlendCurvesTitle
��' 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
DrawBlendOptions
��  
(
��  !
)
��! "
;
��" #
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� +
CanShowPlayableAssetInspector
�� -
(
��- .
)
��. /
)
��/ 0
{
�� 
DrawClipAssetGui
��  
(
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
�� #
propertiesHaveChanged
�� %
)
��% &
{
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
m_SelectionCache
��% 5
)
��5 6
item
�� 
.
�� 

editorClip
�� #
.
��# $
lastHash
��$ ,
=
��- .
item
��/ 3
.
��3 4

editorClip
��4 >
.
��> ?
GetHashCode
��? J
(
��J K
)
��K L
;
��L M
m_SelectionInfo
�� 
.
��  
Update
��  &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
TimelineWindow
�� 
.
�� 
instance
�� '
==
��( *
null
��+ /
||
��0 2
m_TimelineAsset
��3 B
==
��C E
null
��F J
)
��J K
return
�� 
;
�� 
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  !

��! .
(
��. /
IsLocked
��/ 7
(
��7 8
)
��8 9
)
��9 :
)
��: ;
{
�� 
EditMode
�� 
.
�� 
HandleModeClutch
�� )
(
��) *
)
��* +
;
��+ ,
serializedObject
��  
.
��  !
Update
��! '
(
��' (
)
��( )
;
��) * 
DrawClipProperties
�� "
(
��" #
)
��# $
;
��$ %%
ApplyModifiedProperties
�� '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 	
internal
�� 
override
�� 
bool
�� 
	IsEnabled
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
!
�� 
TimelineUtility
��  
.
��  !$
IsCurrentSequenceValid
��! 7
(
��7 8
)
��8 9
||
��: <'
IsCurrentSequenceReadOnly
��= V
(
��V W
)
��W X
)
��X Y
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
m_TimelineAsset
�� 
!=
��  "
TimelineWindow
��# 1
.
��1 2
instance
��2 :
.
��: ;
state
��; @
.
��@ A
editSequence
��A M
.
��M N
asset
��N S
)
��S T
return
�� 
false
�� 
;
�� 
return
�� 
base
�� 
.
�� 
	IsEnabled
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
void
�� 

��
(
�� 
)
�� 
{
�� 	
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 

newEndTime
�� 
=
�� 
m_SelectionInfo
�� ,
.
��, -
end
��- 0
;
��0 1
var
�� 
oldTimeScale
�� 
=
�� !
m_TimeScaleProperty
�� 2
.
��2 3
doubleValue
��3 >
;
��> ?
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
var
�� 
newTimeScale
�� 
=
�� &
TimelineInspectorUtility
�� 7
.
��7 8,
DelayedAndDraggableDoubleField
��8 V
(
��V W
Styles
��W ]
.
��] ^

��^ k
,
��k l
oldTimeScale
��m y
,
��y z
ref
��{ ~

inputEvent�� �
,��� �&
k_TimeScaleSensitivity��� �
)��� �
;��� �
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
newTimeScale
�� 
=
�� 
newTimeScale
�� +
.
��+ ,
Clamp
��, 1
(
��1 2
TimelineClip
��2 >
.
��> ?

��? L
,
��L M
TimelineClip
��N Z
.
��Z [

��[ h
)
��h i
;
��i j

newEndTime
�� 
=
�� 
m_SelectionInfo
�� ,
.
��, -
start
��- 2
+
��3 4
(
��5 6
m_SelectionInfo
��6 E
.
��E F
duration
��F N
*
��O P
oldTimeScale
��Q ]
/
��^ _
newTimeScale
��` l
)
��l m
;
��m n
}
�� 
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessTrim
��" -
(
��- .

inputEvent
��. 8
,
��8 9

newEndTime
��: D
,
��D E
true
��F J
)
��J K
;
��K L
}
�� 	
void
��  
DrawStartTimeField
��
(
��  
)
��  !
{
�� 	
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 
newStart
�� 
=
�� &
TimelineInspectorUtility
�� 3
.
��3 4)
TimeFieldUsingTimeReference
��4 O
(
��O P
Styles
��P V
.
��V W
	StartName
��W `
,
��` a
m_SelectionInfo
��b q
.
��q r 
multipleClipStart��r �
,��� �
false��� �
,��� �
m_SelectionInfo��� �
.��� �&
hasMultipleStartValues��� �
,��� � 
currentFrameRate��� �
,��� �
$num��� �
,��� �
TimelineClip��� �
.��� �

,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
if
�� 
(
�� 

inputEvent
�� 
.
�� 

�� (
(
��( )
)
��) *
&&
��+ -
m_SelectionInfo
��. =
.
��= >$
hasMultipleStartValues
��> T
)
��T U
{
�� 
var
�� 
items
�� 
=
�� 

ItemsUtils
�� &
.
��& '
ToItems
��' .
(
��. /
m_SelectionInfo
��/ >
.
��> ?
clips
��? D
)
��D E
;
��E F
EditMode
�� 
.
�� 
inputHandler
�� %
.
��% &
SetValueForEdge
��& 5
(
��5 6
items
��6 ;
,
��; <

��= J
.
��J K
Left
��K O
,
��O P
newStart
��Q Y
)
��Y Z
;
��Z [
m_SelectionInfo
�� 
.
��  
Update
��  &
(
��& '
)
��' (
;
��( )
}
�� 
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessMove
��" -
(
��- .

inputEvent
��. 8
,
��8 9
newStart
��: B
)
��B C
;
��C D
}
�� 	
void
�� 
DrawEndTimeField
��
(
�� 
)
�� 
{
�� 	
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 

newEndTime
�� 
=
�� &
TimelineInspectorUtility
�� 5
.
��5 6)
TimeFieldUsingTimeReference
��6 Q
(
��Q R
Styles
��R X
.
��X Y
EndName
��Y `
,
��` a
m_SelectionInfo
��b q
.
��q r
multipleClipEnd��r �
,��� �
false��� �
,��� �
m_SelectionInfo��� �
.��� �$
hasMultipleEndValues��� �
,��� � 
currentFrameRate��� �
,��� �
$num��� �
,��� �
TimelineClip��� �
.��� �

,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
if
�� 
(
�� 

inputEvent
�� 
.
�� 

�� (
(
��( )
)
��) *
&&
��+ -
m_SelectionInfo
��. =
.
��= >"
hasMultipleEndValues
��> R
)
��R S
{
�� 
var
�� 
items
�� 
=
�� 

ItemsUtils
�� &
.
��& '
ToItems
��' .
(
��. /
m_SelectionInfo
��/ >
.
��> ?
clips
��? D
)
��D E
;
��E F
EditMode
�� 
.
�� 
inputHandler
�� %
.
��% &
SetValueForEdge
��& 5
(
��5 6
items
��6 ;
,
��; <

��= J
.
��J K
Right
��K P
,
��P Q

newEndTime
��R \
)
��\ ]
;
��] ^
m_SelectionInfo
�� 
.
��  
Update
��  &
(
��& '
)
��' (
;
��( )
}
�� 
var
�� 

�� 
=
�� 
m_SelectionInfo
��  /
.
��/ 0
multipleClipStart
��0 A
+
��B C
(
��D E

newEndTime
��E O
-
��P Q
m_SelectionInfo
��R a
.
��a b
multipleClipEnd
��b q
)
��q r
;
��r s
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessMove
��" -
(
��- .

inputEvent
��. 8
,
��8 9

��: G
)
��G H
;
��H I
}
�� 	
void
�� 
DrawClipAssetGui
��
(
�� 
)
�� 
{
�� 	
const
�� 
float
�� 
labelIndent
�� #
=
��$ %
$num
��& (
;
��( )
if
�� 
(
�� /
!m_SelectedPlayableAssetsInspector
�� 1
==
��2 4
null
��5 9
)
��9 :
return
�� 
;
�� 
var
�� 
rect
�� 
=
�� 
GUILayoutUtility
�� '
.
��' (
GetRect
��( /
(
��/ 0

GUIContent
��0 :
.
��: ;
none
��; ?
,
��? @
EditorStyles
��A M
.
��M N
inspectorTitlebar
��N _
)
��_ `
;
��` a
var
�� 
oldWidth
�� 
=
�� 
EditorGUIUtility
�� +
.
��+ ,

labelWidth
��, 6
;
��6 7
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )
rect
��* .
.
��. /
width
��/ 4
-
��5 6
labelIndent
��7 B
;
��B C,
m_IsClipAssetInspectorExpanded
�� *
=
��+ ,
	EditorGUI
��- 6
.
��6 7
FoldoutTitlebar
��7 F
(
��F G
rect
��G K
,
��K L
m_ClipAssetTitle
��M ]
,
��] ^,
m_IsClipAssetInspectorExpanded
��_ }
,
��} ~
false�� �
)��� �
;��� �
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )
oldWidth
��* 2
;
��2 3
if
�� 
(
�� ,
m_IsClipAssetInspectorExpanded
�� .
)
��. /
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' ((
ShowPlayableAssetInspector
�� *
(
��* +
)
��+ ,
;
��, -
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
}
�� 	
void
�� &
DrawExtrapolationOptions
��
(
��% &
)
��& '
{
�� 	
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
var
�� "
preExtrapolationTime
�� $
=
��% &,
m_PreExtrapolationTimeProperty
��( F
.
��F G
doubleValue
��G R
;
��R S
bool
�� 
hasPreExtrap
�� 
=
�� "
preExtrapolationTime
��  4
>
��5 6
$num
��7 :
;
��: ;
if
�� 
(
�� 
hasPreExtrap
�� 
)
�� 
{
�� 
EditorGUILayout
�� 
.
��  
BeginHorizontal
��  /
(
��/ 0
)
��0 1
;
��1 2
EditorGUILayout
�� 
.
��  

��  -
(
��- .,
m_PreExtrapolationModeProperty
��. L
,
��L M
Styles
��N T
.
��T U!
PreExtrapolateLabel
��U h
)
��h i
;
��i j
using
�� 
(
�� 
new
��  
GUIMixedValueScope
�� -
(
��- .,
m_PreExtrapolationTimeProperty
��. L
.
��L M(
hasMultipleDifferentValues
��M g
)
��g h
)
��h i
EditorGUILayout
�� #
.
��# $
DoubleField
��$ /
(
��/ 0"
preExtrapolationTime
��0 D
,
��D E
EditorStyles
��F R
.
��R S
label
��S X
)
��X Y
;
��Y Z
EditorGUILayout
�� 
.
��  

��  -
(
��- .
)
��. /
;
��/ 0
}
�� 
{
�� 
EditorGUILayout
�� 
.
��  
BeginHorizontal
��  /
(
��/ 0
)
��0 1
;
��1 2
EditorGUILayout
�� 
.
��  

��  -
(
��- .-
m_PostExtrapolationModeProperty
��. M
,
��M N
Styles
��O U
.
��U V"
PostExtrapolateLabel
��V j
)
��j k
;
��k l
using
�� 
(
�� 
new
��  
GUIMixedValueScope
�� -
(
��- .-
m_PostExtrapolationTimeProperty
��. M
.
��M N(
hasMultipleDifferentValues
��N h
)
��h i
)
��i j
EditorGUILayout
�� #
.
��# $
DoubleField
��$ /
(
��/ 0-
m_PostExtrapolationTimeProperty
��0 O
.
��O P
doubleValue
��P [
,
��[ \
EditorStyles
��] i
.
��i j
label
��j o
)
��o p
;
��p q
EditorGUILayout
�� 
.
��  

��  -
(
��- .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 
TimelineWindow
�� "
.
��" #$
IsEditingTimelineAsset
��# 9
(
��9 :
m_TimelineAsset
��: I
)
��I J
&&
��K M
TimelineWindow
��N \
.
��\ ]
instance
��] e
.
��e f
state
��f k
!=
��l n
null
��o s
)
��s t
{
�� 
TimelineWindow
�� "
.
��" #
instance
��# +
.
��+ ,
state
��, 1
.
��1 2
Refresh
��2 9
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 	
void
�� 
	OnDestroy
��
(
�� 
)
�� 
{
�� 	
DestroyImmediate
�� 
(
�� /
!m_SelectedPlayableAssetsInspector
�� >
)
��> ?
;
��? @
}
�� 	
public
�� 
override
�� 

GUIContent
�� "
GetPreviewTitle
��# 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
Styles
�� 
.
�� 
PreviewTitle
�� &
;
��& '
}
�� 	
public
�� 
override
�� 
bool
�� 

�� *
(
��* +
)
��+ ,
{
�� 	
return
�� !
m_PreviewCurveState
�� &
!=
��' )
PreviewCurveState
��* ;
.
��; <
None
��< @
;
��@ A
}
�� 	
public
�� 
override
�� 
void
�� %
OnInteractivePreviewGUI
�� 4
(
��4 5
Rect
��5 9
r
��: ;
,
��; <
GUIStyle
��= E

background
��F P
)
��P Q
{
�� 	
if
�� 
(
�� !
m_PreviewCurveState
�� #
!=
��$ &
PreviewCurveState
��' 8
.
��8 9
None
��9 =
&&
��> @
m_ClipCurveEditor
��A R
!=
��S U
null
��V Z
)
��Z [
{
�� 
SetCurveEditorTrackHead
�� '
(
��' (
)
��( )
;
��) *
m_ClipCurveEditor
�� !
.
��! "
OnGUI
��" '
(
��' (
r
��( )
,
��) *
m_CurvePresets
��+ 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
void
�� %
SetCurveEditorTrackHead
��
(
��$ %
)
��% &
{
�� 	
if
�� 
(
�� 
TimelineWindow
�� 
.
�� 
instance
�� '
==
��( *
null
��+ /
||
��0 2
TimelineWindow
��3 A
.
��A B
instance
��B J
.
��J K
state
��K P
==
��Q S
null
��T X
)
��X Y
return
�� 
;
�� 
if
�� 
(
�� "
hasMultipleSelection
�� $
)
��$ %
return
�� 
;
�� 
var
�� 

editorClip
�� 
=
�� 
target
�� #
as
��$ &

EditorClip
��' 1
;
��1 2
if
�� 
(
�� 

editorClip
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 
var
�� 
director
�� 
=
�� 
TimelineWindow
�� )
.
��) *
instance
��* 2
.
��2 3
state
��3 8
.
��8 9
editSequence
��9 E
.
��E F
director
��F N
;
��N O
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
;
�� 
m_ClipCurveEditor
�� 
.
�� 
	trackTime
�� '
=
��( )&
ClipInspectorCurveEditor
��* B
.
��B C
kDisableTrackTime
��C T
;
��T U
}
�� 	
void
�� 
UnselectCurves
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
	MouseDown
��0 9
)
��9 :
{
�� 
if
�� 
(
�� 
m_ClipCurveEditor
�� %
!=
��& (
null
��) -
)
��- .
m_ClipCurveEditor
�� %
.
��% &$
SetUpdateCurveCallback
��& <
(
��< =
null
��= A
)
��A B
;
��B C!
m_PreviewCurveState
�� #
=
��$ %
PreviewCurveState
��& 7
.
��7 8
None
��8 <
;
��< =
}
�� 
}
�� 	
void
��  
OnMixCurveSelected
��
(
��  
string
��  &
title
��' ,
,
��, - 
CurvePresetLibrary
��. @
library
��A H
,
��H I 
SerializedProperty
��J \

��] j
,
��j k
bool
��l p
easeIn
��q w
)
��w x
{
�� 	!
m_PreviewCurveState
�� 
=
��  !
easeIn
��" (
?
��) *
PreviewCurveState
��+ <
.
��< =
MixIn
��= B
:
��C D
PreviewCurveState
��E V
.
��V W
MixOut
��W ]
;
��] ^
m_CurvePresets
�� 
=
�� 
library
�� $
;
��$ %
var
�� 
animationCurve
�� 
=
��  

��! .
.
��. /!
animationCurveValue
��/ B
;
��B C
m_ClipCurveEditor
�� 
.
�� 
headerString
�� *
=
��+ ,
title
��- 2
;
��2 3
m_ClipCurveEditor
�� 
.
�� 
SetCurve
�� &
(
��& '
animationCurve
��' 5
)
��5 6
;
��6 7
m_ClipCurveEditor
�� 
.
�� 
SetSelected
�� )
(
��) *
animationCurve
��* 8
)
��8 9
;
��9 :
if
�� 
(
�� 
easeIn
�� 
)
�� 
m_ClipCurveEditor
�� !
.
��! "$
SetUpdateCurveCallback
��" 8
(
��8 9
MixInCurveUpdated
��9 J
)
��J K
;
��K L
else
�� 
m_ClipCurveEditor
�� !
.
��! "$
SetUpdateCurveCallback
��" 8
(
��8 9 
MixOutCurveUpdated
��9 K
)
��K L
;
��L M
Repaint
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
MixInCurveUpdated
��
(
�� 
AnimationCurve
�� -
curve
��. 3
,
��3 4 
EditorCurveBinding
��5 G
binding
��H O
)
��O P
{
�� 	
curve
�� 
.
�� 
keys
�� 
=
�� 
CurveEditUtility
�� )
.
��) *
SanitizeCurveKeys
��* ;
(
��; <
curve
��< A
.
��A B
keys
��B F
,
��F G
true
��H L
)
��L M
;
��M N"
m_MixInCurveProperty
��  
.
��  !!
animationCurveValue
��! 4
=
��5 6
curve
��7 <
;
��< =%
ApplyModifiedProperties
�� #
(
��# $
)
��$ %
;
��% &
var
�� 

editorClip
�� 
=
�� 
target
�� #
as
��$ &

EditorClip
��' 1
;
��1 2
if
�� 
(
�� 

editorClip
�� 
!=
�� 
null
�� "
)
��" #

editorClip
�� 
.
�� 
lastHash
�� #
=
��$ %

editorClip
��& 0
.
��0 1
GetHashCode
��1 <
(
��< =
)
��= >
;
��> ?

�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
��  
MixOutCurveUpdated
��
(
��  
AnimationCurve
��  .
curve
��/ 4
,
��4 5 
EditorCurveBinding
��6 H
binding
��I P
)
��P Q
{
�� 	
curve
�� 
.
�� 
keys
�� 
=
�� 
CurveEditUtility
�� )
.
��) *
SanitizeCurveKeys
��* ;
(
��; <
curve
��< A
.
��A B
keys
��B F
,
��F G
false
��H M
)
��M N
;
��N O#
m_MixOutCurveProperty
�� !
.
��! "!
animationCurveValue
��" 5
=
��6 7
curve
��8 =
;
��= >%
ApplyModifiedProperties
�� #
(
��# $
)
��$ %
;
��% &
var
�� 

editorClip
�� 
=
�� 
target
�� #
as
��$ &

EditorClip
��' 1
;
��1 2
if
�� 
(
�� 

editorClip
�� 
!=
�� 
null
�� "
)
��" #

editorClip
�� 
.
�� 
lastHash
�� #
=
��$ %

editorClip
��& 0
.
��0 1
GetHashCode
��1 <
(
��< =
)
��= >
;
��> ?

�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 

��
(
�� 
)
�� 
{
�� 	(
AnimationCurvePreviewCache
�� &
.
��& '

ClearCache
��' 1
(
��1 2
)
��2 3
;
��3 4
TimelineWindow
�� 
.
�� +
RepaintIfEditingTimelineAsset
�� 8
(
��8 9
m_TimelineAsset
��9 H
)
��H I
;
��I J
Repaint
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
DrawBlendCurve
��
(
�� 

GUIContent
�� &
title
��' ,
,
��, - 
SerializedProperty
��. @
modeProperty
��A M
,
��M N 
SerializedProperty
��O a

��b o
,
��o p
Action
��q w
<
��w x!
SerializedProperty��x �
>��� �
onCurveClick��� �
)��� �
{
�� 	
EditorGUILayout
�� 
.
�� 
BeginHorizontal
�� +
(
��+ ,
)
��, -
;
��- .
EditorGUILayout
�� 
.
�� 

�� )
(
��) *
modeProperty
��* 6
,
��6 7
title
��8 =
)
��= >
;
��> ?
if
�� 
(
�� "
hasMultipleSelection
�� $
)
��$ %
{
�� 
	GUILayout
�� 
.
�� 

�� '
(
��' (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
using
�� 
(
�� 
new
�� 
	EditorGUI
�� $
.
��$ %

��% 2
(
��2 3
modeProperty
��3 ?
.
��? @
intValue
��@ H
!=
��I K
(
��L M
int
��M P
)
��P Q
TimelineClip
��Q ]
.
��] ^
BlendCurveMode
��^ l
.
��l m
Manual
��m s
)
��s t
)
��t u
{
�� &
ClipInspectorCurveEditor
�� ,
.
��, -

CurveField
��- 7
(
��7 8

GUIContent
��8 B
.
��B C
none
��C G
,
��G H

��I V
,
��V W
onCurveClick
��X d
)
��d e
;
��e f
}
�� 
}
�� 
EditorGUILayout
�� 
.
�� 

�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
void
�� (
ShowPlayableAssetInspector
��
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
!
�� 
m_SelectionInfo
��  
.
��  !.
 selectedAssetTypesAreHomogeneous
��! A
)
��A B
return
�� 
;
�� 
if
�� 
(
�� /
!m_SelectedPlayableAssetsInspector
�� 1
!=
��2 4
null
��5 9
)
��9 :
{
�� 
foreach
�� 
(
�� 
var
�� 
selectedItem
�� )
in
��* ,
m_SelectionCache
��- =
)
��= >(
CurvesOwnerInspectorHelper
�� .
.
��. /"
PreparePlayableAsset
��/ C
(
��C D
selectedItem
��D P
)
��P Q
;
��Q R
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
using
�� 
(
�� 
new
�� 
	EditorGUI
�� $
.
��$ %

��% 2
(
��2 3
IsLocked
��3 ;
(
��; <
)
��< =
)
��= >
)
��> ?
{
�� /
!m_SelectedPlayableAssetsInspector
�� 5
.
��5 6
OnInspectorGUI
��6 D
(
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
MarkClipsDirty
�� "
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 
TimelineWindow
�� &
.
��& '$
IsEditingTimelineAsset
��' =
(
��= >
m_TimelineAsset
��> M
)
��M N
&&
��O Q
TimelineWindow
��R `
.
��` a
instance
��a i
.
��i j
state
��j o
!=
��p r
null
��s w
)
��w x
{
�� 
var
�� 
basicInspector
�� *
=
��+ ,/
!m_SelectedPlayableAssetsInspector
��- N
as
��O Q!
BasicAssetInspector
��R e
;
��e f
if
�� 
(
�� 
basicInspector
�� *
!=
��+ -
null
��. 2
)
��2 3
basicInspector
�� *
.
��* +
ApplyChanges
��+ 7
(
��7 8
)
��8 9
;
��9 :
else
�� 
TimelineEditor
�� *
.
��* +
Refresh
��+ 2
(
��2 3

��3 @
.
��@ A
ContentsModified
��A Q
)
��Q R
;
��R S
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� %
ApplyModifiedProperties
��
(
��$ %
)
��% &
{
�� 	
if
�� 
(
�� 
serializedObject
��  
.
��  !%
ApplyModifiedProperties
��! 8
(
��8 9
)
��9 :
)
��: ;
{
�� 
foreach
�� 
(
�� 
var
�� 
obj
��  
in
��! #
serializedObject
��$ 4
.
��4 5

��5 B
)
��B C
{
�� 
var
�� 

editorClip
�� "
=
��# $
obj
��% (
as
��) +

EditorClip
��, 6
;
��6 7
if
�� 
(
�� 

editorClip
�� "
!=
��# %
null
��& *
&&
��+ -

editorClip
��. 8
.
��8 9
clip
��9 =
!=
��> @
null
��A E
&&
��F H

editorClip
��I S
.
��S T
clip
��T X
.
��X Y
parentTrack
��Y d
!=
��e g
null
��h l
)
��l m
{
�� 

editorClip
�� "
.
��" #
clip
��# '
.
��' (
	MarkDirty
��( 1
(
��1 2
)
��2 3
;
��3 4

�� %
.
��% &
SetDirty
��& .
(
��. /

editorClip
��/ 9
.
��9 :
clip
��: >
.
��> ?
parentTrack
��? J
)
��J K
;
��K L
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� 
MarkClipsDirty
��
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
targets
��  '
)
��' (
{
�� 
var
�� 

editorClip
�� 
=
��  
obj
��! $
as
��% '

EditorClip
��( 2
;
��2 3
if
�� 
(
�� 

editorClip
�� 
!=
�� !
null
��" &
&&
��' )

editorClip
��* 4
.
��4 5
clip
��5 9
!=
��: <
null
��= A
)
��A B
{
�� 

editorClip
�� 
.
�� 
clip
�� #
.
��# $
	MarkDirty
��$ -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 	
string
�� '
PlayableAssetSectionTitle
�� (
(
��( )
)
��) *
{
�� 	
var
�� $
firstSelectedClipAsset
�� &
=
��' (
m_SelectionCache
��) 9
.
��9 :
Any
��: =
(
��= >
)
��> ?
?
��@ A
m_SelectionCache
��B R
.
��R S
First
��S X
(
��X Y
)
��Y Z
.
��Z [
clip
��[ _
.
��_ `
asset
��` e
:
��f g
null
��h l
;
��l m
return
�� $
firstSelectedClipAsset
�� )
!=
��* ,
null
��- 1
?
�� 
ObjectNames
�� 
.
��  
NicifyVariableName
�� 0
(
��0 1$
firstSelectedClipAsset
��1 G
.
��G H
GetType
��H O
(
��O P
)
��P Q
.
��Q R
Name
��R V
)
��V W
:
�� 
string
�� 
.
�� 
Empty
�� 
;
�� 
}
�� 	
bool
�� /
!IsTimelineAssetValidForEditorClip
��
(
��. /

EditorClip
��/ 9

editorClip
��: D
)
��D E
{
�� 	
var
�� 

trackAsset
�� 
=
�� 

editorClip
�� '
.
��' (
clip
��( ,
.
��, -
parentTrack
��- 8
;
��8 9
if
�� 
(
�� 

trackAsset
�� 
==
�� 
null
�� "
)
��" #
return
�� 
false
�� 
;
�� 
var
�� 
clipTimelineAsset
�� !
=
��" #

trackAsset
��$ .
.
��. /

��/ <
;
��< =
if
�� 
(
�� 
m_TimelineAsset
�� 
==
��  "
null
��# '
)
��' (
m_TimelineAsset
�� 
=
��  !
clipTimelineAsset
��" 3
;
��3 4
else
�� 
if
�� 
(
�� 
clipTimelineAsset
�� &
!=
��' )
m_TimelineAsset
��* 9
)
��9 :
{
�� 
m_TimelineAsset
�� 
=
��  !
null
��" &
;
��& '
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
bool
�� +
CanShowPlayableAssetInspector
��
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� "
hasMultipleSelection
�� $
)
��$ %
return
�� /
!m_SelectedPlayableAssetsInspector
�� 8
!=
��9 ;
null
��< @
&&
��A C/
!m_SelectedPlayableAssetsInspector
�� 5
.
��5 6$
canEditMultipleObjects
��6 L
&&
��M O
m_SelectionInfo
�� #
.
��# $.
 selectedAssetTypesAreHomogeneous
��$ D
;
��D E
else
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
void
�� "
DrawDurationProperty
��
(
��! "
)
��" #
{
�� 	
var
�� 
minDuration
�� 
=
�� 
$num
�� !
/
��" #
$num
��$ (
;
��( )
if
�� 
(
�� 
currentFrameRate
��  
>
��! "
float
��# (
.
��( )
Epsilon
��) 0
)
��0 1
{
�� 
minDuration
�� 
=
�� 
$num
�� !
/
��" #
currentFrameRate
��$ 4
;
��4 5
}
�� 
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 
newDuration
�� 
=
�� &
TimelineInspectorUtility
�� 6
.
��6 7-
DurationFieldUsingTimeReference
��7 V
(
��V W
Styles
�� 
.
�� 
DurationName
�� #
,
��# $
m_SelectionInfo
��% 4
.
��4 5
start
��5 :
,
��: ;
m_SelectionInfo
��< K
.
��K L
end
��L O
,
��O P
false
��Q V
,
��V W
m_SelectionInfo
��X g
.
��g h(
hasMultipleDurationValues��h �
,��� � 
currentFrameRate��� �
,��� �
minDuration��� �
,��� �
TimelineClip��� �
.��� �

,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessTrim
��" -
(
��- .

inputEvent
��. 8
,
��8 9
m_SelectionInfo
��: I
.
��I J
start
��J O
+
��P Q
newDuration
��R ]
,
��] ^
false
��_ d
)
��d e
;
��e f
}
�� 	
void
�� $
DrawBlendingProperties
��
(
��# $
)
��$ %
{
�� 	
const
�� 
double
�� 

mixMinimum
�� #
=
��$ %
$num
��& )
;
��) *
var
�� 

useBlendIn
�� 
=
�� 
m_SelectionInfo
�� ,
.
��, -

hasBlendIn
��- 7
;
��7 8
var
�� 
useBlendOut
�� 
=
�� 
m_SelectionInfo
�� -
.
��- .
hasBlendOut
��. 9
;
��9 :
var
�� "
currentMixInProperty
�� $
=
��% &

useBlendIn
��' 1
?
��2 3'
m_BlendInDurationProperty
��4 M
:
��N O&
m_EaseInDurationProperty
��P h
;
��h i
var
�� #
currentMixOutProperty
�� %
=
��& '
useBlendOut
��( 3
?
��4 5(
m_BlendOutDurationProperty
��6 P
:
��Q R'
m_EaseOutDurationProperty
��S l
;
��l m
var
�� 
	maxEaseIn
�� 
=
�� 
Math
��  
.
��  !
Max
��! $
(
��$ %

mixMinimum
��% /
,
��/ 0
m_SelectionInfo
��1 @
.
��@ A
maxMixIn
��A I
)
��I J
;
��J K
var
�� 

maxEaseOut
�� 
=
�� 
Math
�� !
.
��! "
Max
��" %
(
��% &

mixMinimum
��& 0
,
��0 1
m_SelectionInfo
��2 A
.
��A B
	maxMixOut
��B K
)
��K L
;
��L M
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 
blendMax
�� 
=
�� 

useBlendIn
�� %
?
��& '
TimelineClip
��( 4
.
��4 5

��5 B
:
��C D
	maxEaseIn
��E N
;
��N O
var
�� 
label
�� 
=
�� 

useBlendIn
�� "
?
��# $
Styles
��% +
.
��+ ,!
BlendInDurationName
��, ?
:
��@ A
Styles
��B H
.
��H I 
EaseInDurationName
��I [
;
��[ \&
TimelineInspectorUtility
�� $
.
��$ %
	TimeField
��% .
(
��. /"
currentMixInProperty
��/ C
,
��C D
label
��E J
,
��J K

useBlendIn
��L V
,
��V W
currentFrameRate
��X h
,
��h i

mixMinimum
��j t
,
��t u
blendMax
��v ~
,
��~ 
ref��� �

inputEvent��� �
)��� �
;��� �
blendMax
�� 
=
�� 
useBlendOut
�� "
?
��# $
TimelineClip
��% 1
.
��1 2

��2 ?
:
��@ A

maxEaseOut
��B L
;
��L M
label
�� 
=
�� 
useBlendOut
�� 
?
��  !
Styles
��" (
.
��( )"
BlendOutDurationName
��) =
:
��> ?
Styles
��@ F
.
��F G!
EaseOutDurationName
��G Z
;
��Z [&
TimelineInspectorUtility
�� $
.
��$ %
	TimeField
��% .
(
��. /#
currentMixOutProperty
��/ D
,
��D E
label
��F K
,
��K L
useBlendOut
��M X
,
��X Y
currentFrameRate
��Z j
,
��j k

mixMinimum
��l v
,
��v w
blendMax��x �
,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
}
�� 	
void
��  
DrawClipInProperty
��
(
��  
)
��  !
{
�� 	
var
�� 
action
�� 
=
�� 

InputEvent
�� #
.
��# $
None
��$ (
;
��( )&
TimelineInspectorUtility
�� $
.
��$ %
	TimeField
��% .
(
��. /
m_ClipInProperty
��/ ?
,
��? @
Styles
��A G
.
��G H

ClipInName
��H R
,
��R S
false
��T Y
,
��Y Z
currentFrameRate
��[ k
,
��k l
$num
��m n
,
��n o
TimelineClip
��p |
.
��| }

,��� �
ref��� �
action��� �
)��� �
;��� �
}
�� 	
void
�� 
DrawBlendOptions
��
(
�� 
)
�� 
{
�� 	
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
DrawBlendCurve
�� 
(
�� 
Styles
�� !
.
��! "
BlendInCurveName
��" 2
,
��2 3(
m_BlendInCurveModeProperty
��4 N
,
��N O"
m_MixInCurveProperty
��P d
,
��d e
x
��f g
=>
��h j 
OnMixCurveSelected
��k }
(
��} ~
$str��~ �
,��� �
BuiltInPresets��� �
.��� �
blendInPresets��� �
,��� �
x��� �
,��� �
true��� �
)��� �
)��� �
;��� �
DrawBlendCurve
�� 
(
�� 
Styles
�� !
.
��! "
BlendOutCurveName
��" 3
,
��3 4)
m_BlendOutCurveModeProperty
��5 P
,
��P Q#
m_MixOutCurveProperty
��R g
,
��g h
x
��i j
=>
��k m!
OnMixCurveSelected��n �
(��� �
$str��� �
,��� �
BuiltInPresets��� �
.��� �
blendOutPresets��� �
,��� �
x��� �
,��� �
false��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
TimelineWindow
�� 
.
�� +
RepaintIfEditingTimelineAsset
�� <
(
��< =
m_TimelineAsset
��= L
)
��L M
;
��M N
}
�� 	
void
�� *
DrawGroupSelectionProperties
��
(
��) *
)
��* +
{
�� 	
var
�� 

inputEvent
�� 
=
�� 

InputEvent
�� '
.
��' (
None
��( ,
;
��, -
var
�� 
newStartTime
�� 
=
�� &
TimelineInspectorUtility
�� 7
.
��7 8
	TimeField
��8 A
(
��A B
Styles
��B H
.
��H I#
MultipleClipStartName
��I ^
,
��^ _
m_SelectionInfo
��` o
.
��o p 
multipleClipStart��p �
,��� �
false��� �
,��� �
false��� �
,��� � 
currentFrameRate��� �
,��� �
$num��� �
,��� �
TimelineClip��� �
.��� �

,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessMove
��" -
(
��- .

inputEvent
��. 8
,
��8 9
newStartTime
��: F
)
��F G
;
��G H

inputEvent
�� 
=
�� 

InputEvent
�� #
.
��# $
None
��$ (
;
��( )
var
�� 

newEndTime
�� 
=
�� &
TimelineInspectorUtility
�� 5
.
��5 6
	TimeField
��6 ?
(
��? @
Styles
��@ F
.
��F G!
MultipleClipEndName
��G Z
,
��Z [
m_SelectionInfo
��\ k
.
��k l
multipleClipEnd
��l {
,
��{ |
false��} �
,��� �
false��� �
,��� � 
currentFrameRate��� �
,��� �
$num��� �
,��� �
TimelineClip��� �
.��� �

,��� �
ref��� �

inputEvent��� �
)��� �
;��� �
var
�� 

�� 
=
�� 
newStartTime
��  ,
+
��- .
(
��/ 0

newEndTime
��0 :
-
��; <
m_SelectionInfo
��= L
.
��L M
multipleClipEnd
��M \
)
��\ ]
;
��] ^
EditMode
�� 
.
�� 
inputHandler
�� !
.
��! "
ProcessMove
��" -
(
��- .

inputEvent
��. 8
,
��8 9

��: G
)
��G H
;
��H I
}
�� 	
bool
�� 
IsLocked
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
TimelineUtility
��  
.
��  !$
IsCurrentSequenceValid
��! 7
(
��7 8
)
��8 9
||
��: <'
IsCurrentSequenceReadOnly
��= V
(
��V W
)
��W X
)
��X Y
return
�� 
true
�� 
;
�� 
return
�� 
targets
�� 
.
�� 
OfType
�� !
<
��! "

EditorClip
��" ,
>
��, -
(
��- .
)
��. /
.
��/ 0
Any
��0 3
(
��3 4
t
��4 5
=>
��6 8
t
��9 :
.
��: ;
clip
��; ?
.
��? @
parentTrack
��@ K
!=
��L N
null
��O S
&&
��T V
t
��W X
.
��X Y
clip
��Y ]
.
��] ^
parentTrack
��^ i
.
��i j
lockedInHierarchy
��j {
)
��{ |
;
��| }
}
�� 	
static
�� 
bool
�� '
IsCurrentSequenceReadOnly
�� -
(
��- .
)
��. /
{
�� 	
return
�� 
TimelineWindow
�� !
.
��! "
instance
��" *
.
��* +
state
��+ 0
.
��0 1
editSequence
��1 =
.
��= >

isReadOnly
��> H
;
��H I
}
�� 	
void
�� !
OnUndoRedoPerformed
��
(
��  !
)
��! "
{
�� 	
if
�� 
(
�� !
m_PreviewCurveState
�� #
==
��$ &
PreviewCurveState
��' 8
.
��8 9
None
��9 =
)
��= >
return
�� 
;
�� 
if
�� 
(
�� 
m_ClipCurveEditor
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
serializedObject
��  
.
��  !
Update
��! '
(
��' (
)
��( )
;
��) *
m_ClipCurveEditor
�� !
.
��! "
SetCurve
��" *
(
��* +!
m_PreviewCurveState
��+ >
==
��? A
PreviewCurveState
��B S
.
��S T
MixIn
��T Y
?
��Z ["
m_MixInCurveProperty
��\ p
.
��p q"
animationCurveValue��q �
:��� �%
m_MixOutCurveProperty��� �
.��� �#
animationCurveValue��� �
)��� �
;��� �
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\TrackGui\TrackResizeHandle.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
TrackResizeHandle
 
: 
IBounds %
{ 
public 
Rect 
boundingRect  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public		 
TimelineTrackGUI		 
trackGUI		  (
{		) *
get		+ .
;		. /
}		0 1
public 
TrackResizeHandle  
(  !
TimelineTrackGUI! 1
trackGUI2 :
): ;
{ 	
this
.
trackGUI
=
trackGUI
;
} 	
public 
void 
Draw 
( 
Rect 

headerRect (
,( )
WindowState* 5
state6 ;
); <
{ 	
const 
float 
resizeHandleHeight *
=+ ,
WindowConstants- <
.< =#
trackResizeHandleHeight= T
;T U
var 
rect 
= 
new 
Rect 
(  

headerRect  *
.* +
xMin+ /
,/ 0

headerRect1 ;
.; <
yMax< @
-A B
(C D
$numD H
*I J
resizeHandleHeightK ]
)] ^
,^ _

headerRect` j
.j k
widthk p
,p q
resizeHandleHeight	r �
)
� �
;
� �
boundingRect 
= 
trackGUI #
.# $

(1 2
rect2 6
)6 7
;7 8
var 

cursorRect 
= 
rect !
;! "

cursorRect 
. 
height 
-- 
;  
EditorGUIUtility 
. 

(* +

cursorRect+ 5
,5 6
MouseCursor7 B
.B C
SplitResizeUpDownC T
)T U
;U V
if 
( 
Event 
. 
current 
. 
type "
==# %
	EventType& /
./ 0
Repaint0 7
)7 8
state 
. "
headerSpacePartitioner ,
., -
	AddBounds- 6
(6 7
this7 ;
); <
;< =
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\Move\IMoveItemMode.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
	interface 

{ 
void 

( 
IEnumerable &
<& '

>4 5
itemsGroups6 A
)A B
;B C
void		 
HandleTrackSwitch		
(		 
IEnumerable		 *
<		* +

>		8 9
itemsGroups		: E
)		E F
;		F G
bool

 
AllowTrackSwitch


(

 
)

 
;

  
double 
AdjustStartTime 
( 
WindowState *
state+ 0
,0 1


itemsGroup@ J
,J K
doubleL R
timeS W
)W X
;X Y
void 
OnModeClutchEnter
( 
IEnumerable *
<* +

>8 9
itemsGroups: E
)E F
;F G
void 
OnModeClutchExit
( 
IEnumerable )
<) *

>7 8
itemsGroups9 D
)D E
;E F
void 
	BeginMove
( 
IEnumerable "
<" #

>0 1
itemsGroups2 =
)= >
;> ?
void 

UpdateMove
( 
IEnumerable #
<# $

>1 2
itemsGroups3 >
)> ?
;? @
void 

FinishMove
( 
IEnumerable #
<# $

>1 2
itemsGroups3 >
)> ?
;? @
bool 
ValidateMove
( 


itemsGroup( 2
)2 3
;3 4
} 
	interface 
IMoveItemDrawer 
{ 
void 
DrawGUI
( 
WindowState  
state! &
,& '
IEnumerable( 3
<3 4
MovingItems4 ?
>? @
movingItemsA L
,L M
ColorN S
colorT Y
)Y Z
;Z [
} 
} �O
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Animation\AnimationClipActions.cs
	namespace		 	
UnityEditor		
 
.		 
Timeline		 
{

 
[ 
ApplyDefaultUndo 
( 
$str %
)% &
]& '
[ 
	MenuEntry 
( 
$str /
,/ 0
MenuPriority1 =
.= >#
CustomClipActionSection> U
.U V

)c d
,d e
UsedImplicitlyf t
]t u
class
MatchOffsetsPreviousAction
 $
:

ClipAction
{ 
public 
override 
bool 
Execute $
($ %
IEnumerable% 0
<0 1
TimelineClip1 =
>= >
clips? D
)D E
{ 	
if 
( 
clips 
== 
null 
||  
!! "
clips" '
.' (
Any( +
(+ ,
), -
)- .
return 
false 
; 
AnimationOffsetMenu 
.   
MatchClipsToPrevious  4
(4 5
clips5 :
.: ;
Where; @
(@ A
xA B
=>C E
IsValidClipF Q
(Q R
xR S
,S T
TimelineEditorU c
.c d
inspectedDirectord u
)u v
)v w
.w x
ToArrayx 
(	 �
)
� �
)
� �
;
� �
return 
true 
; 
} 	
static 
bool 
IsValidClip 
(  
TimelineClip  ,
clip- 1
,1 2
PlayableDirector3 C
directorD L
)L M
{ 	
return 
clip 
!= 
null 
&&  "
clip 
. 
parentTrack  
!=! #
null$ (
&&) +
( 
clip 
. 
asset 
as "
AnimationPlayableAsset 5
)5 6
!=7 9
null: >
&&? A
clip 
. 
parentTrack  
.  !
clips! &
.& '
Any' *
(* +
x+ ,
=>- /
x0 1
.1 2
start2 7
<8 9
clip: >
.> ?
start? D
)D E
&&F H
TimelineUtility 
.  
GetSceneGameObject  2
(2 3
director3 ;
,; <
clip= A
.A B
parentTrackB M
)M N
!=O Q
nullR V
;V W
} 	
public   
override   
ActionValidity   &
Validate  ' /
(  / 0
IEnumerable  0 ;
<  ; <
TimelineClip  < H
>  H I
clips  J O
)  O P
{!! 	
if"" 
("" 
!"" 
clips"" 
."" 
All"" 
("" &
TimelineAnimationUtilities"" 5
.""5 6
IsAnimationClip""6 E
)""E F
)""F G
return## 
ActionValidity## %
.##% &

;##3 4
var%% 
director%% 
=%% 
TimelineEditor%% )
.%%) *
inspectedDirector%%* ;
;%%; <
if&& 
(&& 
TimelineEditor&& 
.&& 
inspectedDirector&& 0
==&&1 3
null&&4 8
)&&8 9
return'' 
ActionValidity'' %
.''% &

;''3 4
if)) 
()) 
clips)) 
.)) 
Any)) 
()) 
c)) 
=>)) 
IsValidClip)) *
())* +
c))+ ,
,)), -
director)). 6
)))6 7
)))7 8
)))8 9
return** 
ActionValidity** %
.**% &
Valid**& +
;**+ ,
return,, 
ActionValidity,, !
.,,! "

;,,/ 0
}-- 	
}.. 
[00 
ApplyDefaultUndo00 
(00 
$str00 %
)00% &
]00& '
[11 
	MenuEntry11 
(11 
$str11 +
,11+ ,
MenuPriority11- 9
.119 :#
CustomClipActionSection11: Q
.11Q R
	matchNext11R [
)11[ \
,11\ ]
UsedImplicitly11^ l
]11l m
class22 	"
MatchOffsetsNextAction22
  
:22! "

ClipAction22# -
{33 
public44 
override44 
bool44 
Execute44 $
(44$ %
IEnumerable44% 0
<440 1
TimelineClip441 =
>44= >
clips44? D
)44D E
{55 	
AnimationOffsetMenu66 
.66  
MatchClipsToNext66  0
(660 1
clips661 6
.666 7
Where667 <
(66< =
x66= >
=>66? A
IsValidClip66B M
(66M N
x66N O
,66O P
TimelineEditor66Q _
.66_ `
inspectedDirector66` q
)66q r
)66r s
.66s t
ToArray66t {
(66{ |
)66| }
)66} ~
;66~ 
return77 
true77 
;77 
}88 	
static:: 
bool:: 
IsValidClip:: 
(::  
TimelineClip::  ,
clip::- 1
,::1 2
PlayableDirector::3 C
director::D L
)::L M
{;; 	
return<< 
clip<< 
!=<< 
null<< 
&&<<  "
clip== 
.== 
parentTrack==  
!===! #
null==$ (
&&==) +
(>> 
clip>> 
.>> 
asset>> 
as>> "
AnimationPlayableAsset>> 5
)>>5 6
!=>>7 9
null>>: >
&&>>? A
clip?? 
.?? 
parentTrack??  
.??  !
clips??! &
.??& '
Any??' *
(??* +
x??+ ,
=>??- /
x??0 1
.??1 2
start??2 7
>??8 9
clip??: >
.??> ?
start??? D
)??D E
&&??F H
TimelineUtility@@ 
.@@  
GetSceneGameObject@@  2
(@@2 3
director@@3 ;
,@@; <
clip@@= A
.@@A B
parentTrack@@B M
)@@M N
!=@@O Q
null@@R V
;@@V W
}AA 	
publicCC 
overrideCC 
ActionValidityCC &
ValidateCC' /
(CC/ 0
IEnumerableCC0 ;
<CC; <
TimelineClipCC< H
>CCH I
clipsCCJ O
)CCO P
{DD 	
ifEE 
(EE 
!EE 
clipsEE 
.EE 
AllEE 
(EE &
TimelineAnimationUtilitiesEE 5
.EE5 6
IsAnimationClipEE6 E
)EEE F
)EEF G
returnFF 
ActionValidityFF %
.FF% &

;FF3 4
varHH 
directorHH 
=HH 
TimelineEditorHH )
.HH) *
inspectedDirectorHH* ;
;HH; <
ifII 
(II 
TimelineEditorII 
.II 
inspectedDirectorII 0
==II1 3
nullII4 8
)II8 9
returnJJ 
ActionValidityJJ %
.JJ% &

;JJ3 4
ifLL 
(LL 
clipsLL 
.LL 
AnyLL 
(LL 
cLL 
=>LL 
IsValidClipLL *
(LL* +
cLL+ ,
,LL, -
directorLL. 6
)LL6 7
)LL7 8
)LL8 9
returnMM 
ActionValidityMM %
.MM% &
ValidMM& +
;MM+ ,
returnOO 
ActionValidityOO !
.OO! "

;OO/ 0
}PP 	
}QQ 
[SS 
ApplyDefaultUndoSS 
]SS 
[TT 
	MenuEntryTT 
(TT 
$strTT 
,TT 
MenuPriorityTT  ,
.TT, -#
CustomClipActionSectionTT- D
.TTD E
resetOffsetTTE P
)TTP Q
,TTQ R
UsedImplicitlyTTS a
]TTa b
classUU 	
ResetOffsetsUU
 
:UU 

ClipActionUU #
{VV 
publicWW 
overrideWW 
boolWW 
ExecuteWW $
(WW$ %
IEnumerableWW% 0
<WW0 1
TimelineClipWW1 =
>WW= >
clipsWW? D
)WWD E
{XX 	
AnimationOffsetMenuYY 
.YY  
ResetClipOffsetsYY  0
(YY0 1
clipsYY1 6
.YY6 7
WhereYY7 <
(YY< =&
TimelineAnimationUtilitiesYY= W
.YYW X
IsAnimationClipYYX g
)YYg h
.YYh i
ToArrayYYi p
(YYp q
)YYq r
)YYr s
;YYs t
returnZZ 
trueZZ 
;ZZ 
}[[ 	
public]] 
override]] 
ActionValidity]] &
Validate]]' /
(]]/ 0
IEnumerable]]0 ;
<]]; <
TimelineClip]]< H
>]]H I
clips]]J O
)]]O P
{^^ 	
if__ 
(__ 
!__ 
clips__ 
.__ 
All__ 
(__ &
TimelineAnimationUtilities__ 5
.__5 6
IsAnimationClip__6 E
)__E F
)__F G
return`` 
ActionValidity`` %
.``% &

;``3 4
returnbb 
ActionValiditybb !
.bb! "
Validbb" '
;bb' (
}cc 	
}dd 
}ee �3
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\BuiltInCurvePresets.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 
BuiltInPresets 
{ 
static 
CurvePresetLibrary !
s_BlendInPresets" 2
;2 3
static		 
CurvePresetLibrary		 !
s_BlendOutPresets		" 3
;		3 4
internal 
static 
CurvePresetLibrary *
blendInPresets+ 9
{ 	
get
{ 
if 
( 
s_BlendInPresets $
==% '
null( ,
), -
{ 
s_BlendInPresets $
=% &
ScriptableObject' 7
.7 8
CreateInstance8 F
<F G
CurvePresetLibraryG Y
>Y Z
(Z [
)[ \
;\ ]
s_BlendInPresets $
.$ %
Add% (
(( )
new) ,
AnimationCurve- ;
(; <
CurveEditorWindow< M
.M N
GetConstantKeysN ]
(] ^
$num^ `
)` a
)a b
,b c
$strd j
)j k
;k l
s_BlendInPresets $
.$ %
Add% (
(( )
new) ,
AnimationCurve- ;
(; <
CurveEditorWindow< M
.M N

([ \
)\ ]
)] ^
,^ _
$str` h
)h i
;i j
s_BlendInPresets $
.$ %
Add% (
(( )
new) ,
AnimationCurve- ;
(; <
CurveEditorWindow< M
.M N

([ \
)\ ]
)] ^
,^ _
$str` h
)h i
;i j
s_BlendInPresets $
.$ %
Add% (
(( )
new) ,
AnimationCurve- ;
(; <
CurveEditorWindow< M
.M N
GetEaseOutKeysN \
(\ ]
)] ^
)^ _
,_ `
$stra j
)j k
;k l
s_BlendInPresets $
.$ %
Add% (
(( )
new) ,
AnimationCurve- ;
(; <
CurveEditorWindow< M
.M N
GetEaseInOutKeysN ^
(^ _
)_ `
)` a
,a b
$strc n
)n o
;o p
} 
return 
s_BlendInPresets '
;' (
} 
} 	
internal 
static 
CurvePresetLibrary *
blendOutPresets+ :
{ 	
get 
{ 
if   
(   
s_BlendOutPresets   %
==  & (
null  ) -
)  - .
{!! 
s_BlendOutPresets"" %
=""& '
ScriptableObject""( 8
.""8 9
CreateInstance""9 G
<""G H
CurvePresetLibrary""H Z
>""Z [
(""[ \
)""\ ]
;""] ^
s_BlendOutPresets## %
.##% &
Add##& )
(##) *
new##* -
AnimationCurve##. <
(##< =
CurveEditorWindow##= N
.##N O
GetConstantKeys##O ^
(##^ _
$num##_ a
)##a b
)##b c
,##c d
$str##e k
)##k l
;##l m
s_BlendOutPresets$$ %
.$$% &
Add$$& )
($$) *
ReverseCurve$$* 6
($$6 7
new$$7 :
AnimationCurve$$; I
($$I J
CurveEditorWindow$$J [
.$$[ \

($$i j
)$$j k
)$$k l
)$$l m
,$$m n
$str$$o w
)$$w x
;$$x y
s_BlendOutPresets%% %
.%%% &
Add%%& )
(%%) *
ReverseCurve%%* 6
(%%6 7
new%%7 :
AnimationCurve%%; I
(%%I J
CurveEditorWindow%%J [
.%%[ \

(%%i j
)%%j k
)%%k l
)%%l m
,%%m n
$str%%o w
)%%w x
;%%x y
s_BlendOutPresets&& %
.&&% &
Add&&& )
(&&) *
ReverseCurve&&* 6
(&&6 7
new&&7 :
AnimationCurve&&; I
(&&I J
CurveEditorWindow&&J [
.&&[ \
GetEaseOutKeys&&\ j
(&&j k
)&&k l
)&&l m
)&&m n
,&&n o
$str&&p y
)&&y z
;&&z {
s_BlendOutPresets'' %
.''% &
Add''& )
('') *
ReverseCurve''* 6
(''6 7
new''7 :
AnimationCurve''; I
(''I J
CurveEditorWindow''J [
.''[ \
GetEaseInOutKeys''\ l
(''l m
)''m n
)''n o
)''o p
,''p q
$str''r }
)''} ~
;''~ 
}(( 
return)) 
s_BlendOutPresets)) (
;))( )
}** 
}++ 	
static-- 
AnimationCurve-- 
ReverseCurve-- *
(--* +
AnimationCurve--+ 9
curve--: ?
)--? @
{.. 	
Keyframe// 
[// 
]// 
keys// 
=// 
curve// #
.//# $
keys//$ (
;//( )
for00 
(00 
int00 
i00 
=00 
$num00 
;00 
i00 
<00 
keys00  $
.00$ %
Length00% +
;00+ ,
i00- .
++00. 0
)000 1
{11 
keys22 
[22 
i22 
]22 
.22 
value22 
=22 
$num22  !
-22" #
keys22$ (
[22( )
i22) *
]22* +
.22+ ,
value22, 1
;221 2
keys33 
[33 
i33 
]33 
.33 
	inTangent33 !
*=33" $
-33% &
$num33& '
;33' (
keys44 
[44 
i44 
]44 
.44 

outTangent44 "
*=44# %
-44& '
$num44' (
;44( )
}55 
curve66 
.66 
keys66 
=66 
keys66 
;66 
return77 
curve77 
;77 
}88 	
}99 
}:: �[
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\GroupTrackInspector.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
[

 
CustomEditor

 
(

 
typeof

 
(

 

GroupTrack

 #
)

# $
)

$ %
,

% &"
CanEditMultipleObjects

' =
]

= >
class 	
GroupTrackInspector
 
: 
TrackAssetInspector  3
{ 
static
class
Styles
{ 	
public 
static 
readonly "

GUIContent# -#
GroupSubTrackHeaderName. E
=J K
EditorGUIUtilityL \
.\ ]

(j k
$strk q
)q r
;r s
public 
static 
readonly "

GUIContent# -#
GroupSubTrackHeaderType. E
=J K
EditorGUIUtilityL \
.\ ]

(j k
$strk q
)q r
;r s
public 
static 
readonly "

GUIContent# -'
GroupSubTrackHeaderDuration. I
=J K
EditorGUIUtilityL \
.\ ]

(j k
$strk u
)u v
;v w
public 
static 
readonly "

GUIContent# -%
GroupSubTrackHeaderFrames. G
=J K
EditorGUIUtilityL \
.\ ]

(j k
$strk s
)s t
;t u
public 
static 
readonly "

GUIContent# -
GroupInvalidTrack. ?
=J K
EditorGUIUtilityL \
.\ ]

(j k
$strk z
)z {
;{ |
} 	
ReorderableList 
m_SubTracks #
;# $
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
foreach 
( 
var 
group 
in !
targets" )
)) *
{ 
var 

groupTrack 
=  
group! &
as' )

GroupTrack* 4
;4 5
if 
( 

groupTrack 
== !
null" &
)& '
return( .
;. /
var 
childrenTracks "
=# $

groupTrack% /
./ 0
GetChildTracks0 >
(> ?
)? @
;@ A
var   
groupTrackName   "
=  # $

groupTrack  % /
.  / 0
name  0 4
;  4 5
	GUILayout"" 
."" 
Label"" 
(""  
childrenTracks""  .
."". /
Count""/ 4
(""4 5
)""5 6
>""7 8
$num""9 :
?## 
groupTrackName## $
+##% &
$str##' +
+##, -
childrenTracks##. <
.##< =
Count##= B
(##B C
)##C D
+##E F
$str##G J
:$$ 
groupTrackName$$ $
,$$$ %
EditorStyles$$& 2
.$$2 3
	boldLabel$$3 <
)$$< =
;$$= >
	GUILayout%% 
.%% 
Space%% 
(%%  
$num%%  $
)%%$ %
;%%% &
m_SubTracks(( 
.(( 
list((  
=((! "

groupTrack((# -
.((- .
subTracksObjects((. >
;((> ?
m_SubTracks)) 
.)) 
DoLayoutList)) (
())( )
)))) *
;))* +
m_SubTracks** 
.** 
index** !
=**" #
-**$ %
$num**% &
;**& '
}++ 
},, 	
public.. 
override.. 
void.. 
OnEnable.. %
(..% &
)..& '
{// 	
base00 
.00 
OnEnable00 
(00 
)00 
;00 
m_SubTracks22 
=22 
new22 
ReorderableList22 -
(22- .
new22. 1
string222 8
[228 9
]229 :
{22; <
}22< =
,22= >
typeof22? E
(22E F
string22F L
)22L M
,22M N
false22O T
,22T U
true22V Z
,22Z [
false22\ a
,22a b
false22c h
)22h i
{33 
drawElementCallback44 #
=44$ %
OnDrawSubTrack44& 4
,444 5
drawHeaderCallback55 "
=55# $
OnDrawHeader55% 1
,551 2!
showDefaultBackground66 %
=66& '
true66( ,
,66, -
index77 
=77 
$num77 
,77 

=88 
$num88  "
}99 
;99
}:: 	
static<< 
void<< 
OnDrawHeader<<  
(<<  !
Rect<<! %
rect<<& *
)<<* +
{== 	
int>> 
sections>> 
=>> 
$num>> 
;>> 
float?? 
sectionWidth?? 
=??  
rect??! %
.??% &
width??& +
/??, -
sections??. 6
;??6 7
rectAA 
.AA 
widthAA 
=AA 
sectionWidthAA %
;AA% &
GUIBB 
.BB 
LabelBB 
(BB 
rectBB 
,BB 
StylesBB "
.BB" ##
GroupSubTrackHeaderNameBB# :
,BB: ;
EditorStylesBB< H
.BBH I
labelBBI N
)BBN O
;BBO P
rectCC 
.CC 
xCC 
+=CC 
sectionWidthCC "
;CC" #
GUIDD 
.DD 
LabelDD 
(DD 
rectDD 
,DD 
StylesDD "
.DD" ##
GroupSubTrackHeaderTypeDD# :
,DD: ;
EditorStylesDD< H
.DDH I
labelDDI N
)DDN O
;DDO P
rectEE 
.EE 
xEE 
+=EE 
sectionWidthEE "
;EE" #
GUIFF 
.FF 
LabelFF 
(FF 
rectFF 
,FF 
StylesFF "
.FF" #'
GroupSubTrackHeaderDurationFF# >
,FF> ?
EditorStylesFF@ L
.FFL M
labelFFM R
)FFR S
;FFS T
rectGG 
.GG 
xGG 
+=GG 
sectionWidthGG "
;GG" #
GUIHH 
.HH 
LabelHH 
(HH 
rectHH 
,HH 
StylesHH "
.HH" #%
GroupSubTrackHeaderFramesHH# <
,HH< =
EditorStylesHH> J
.HHJ K
labelHHK P
)HHP Q
;HHQ R
}II 	
voidKK 
OnDrawSubTrackKK
(KK 
RectKK  
rectKK! %
,KK% &
intKK' *
indexKK+ 0
,KK0 1
boolKK2 6
selectedKK7 ?
,KK? @
boolKKA E
focusedKKF M
)KKM N
{LL 	
intMM 
sectionsMM 
=MM 
$numMM 
;MM 
floatNN 
sectionWidthNN 
=NN  
rectNN! %
.NN% &
widthNN& +
/NN, -
sectionsNN. 6
;NN6 7
varPP 

=PP 
m_SubTracksPP  +
.PP+ ,
listPP, 0
[PP0 1
indexPP1 6
]PP6 7
asPP8 :

TrackAssetPP; E
;PPE F
ifQQ 
(QQ 

==QQ  
nullQQ! %
)QQ% &
{RR 
objectSS 
oSS 
=SS 
m_SubTracksSS &
.SS& '
listSS' +
[SS+ ,
indexSS, 1
]SS1 2
;SS2 3
rectTT 
.TT 
widthTT 
=TT 
sectionWidthTT )
;TT) *
ifUU 
(UU 
oUU 
!=UU 
nullUU 
)UU 
{VV 
stringWW 
nameWW 
=WW  !
(WW" #
(WW# $
UnityEngineWW$ /
.WW/ 0
ObjectWW0 6
)WW6 7
m_SubTracksWW7 B
.WWB C
listWWC G
[WWG H
indexWWH M
]WWM N
)WWN O
.WWO P
nameWWP T
;WWT U
GUIXX 
.XX 
LabelXX 
(XX 
rectXX "
,XX" #
nameXX$ (
,XX( )
EditorStylesXX* 6
.XX6 7
labelXX7 <
)XX< =
;XX= >
}YY 
rectZZ 
.ZZ 
xZZ 
+=ZZ 
sectionWidthZZ &
;ZZ& '
using[[ 
([[ 
new[[ 
GUIColorOverride[[ +
([[+ ,
DirectorStyles[[, :
.[[: ;
kClipErrorColor[[; J
)[[J K
)[[K L
GUI\\ 
.\\ 
Label\\ 
(\\ 
rect\\ "
,\\" #
Styles\\$ *
.\\* +
GroupInvalidTrack\\+ <
.\\< =
text\\= A
,\\A B
EditorStyles\\C O
.\\O P
label\\P U
)\\U V
;\\V W
return]] 
;]] 
}^^ 
rect`` 
.`` 
width`` 
=`` 
sectionWidth`` %
;``% &
GUIaa 
.aa 
Labelaa 
(aa 
rectaa 
,aa 

.aa) *
nameaa* .
,aa. /
EditorStylesaa0 <
.aa< =
labelaa= B
)aaB C
;aaC D
rectbb 
.bb 
xbb 
+=bb 
sectionWidthbb "
;bb" #
GUIcc 
.cc 
Labelcc 
(cc 
rectcc 
,cc 

.cc) *
GetTypecc* 1
(cc1 2
)cc2 3
.cc3 4
Namecc4 8
,cc8 9
EditorStylescc: F
.ccF G
labelccG L
)ccL M
;ccM N
rectdd 
.dd 
xdd 
+=dd 
sectionWidthdd "
;dd" #
GUIee 
.ee 
Labelee 
(ee 
rectee 
,ee 

.ee) *
durationee* 2
.ee2 3
ToStringee3 ;
(ee; <
)ee< =
,ee= >
EditorStylesee? K
.eeK L
labeleeL Q
)eeQ R
;eeR S
rectff 
.ff 
xff 
+=ff 
sectionWidthff "
;ff" #
doublegg 
exactFramesgg 
=gg  
TimeUtilitygg! ,
.gg, -

(gg: ;

.ggH I
durationggI Q
,ggQ R
TimelineWindowggS a
.gga b
instanceggb j
.ggj k
stateggk p
.ggp q
referenceSequence	ggq �
.
gg� �
	frameRate
gg� �
)
gg� �
;
gg� �
GUIhh 
.hh 
Labelhh 
(hh 
recthh 
,hh 
exactFrameshh '
.hh' (
ToStringhh( 0
(hh0 1
)hh1 2
,hh2 3
EditorStyleshh4 @
.hh@ A
labelhhA F
)hhF G
;hhG H
}ii 	
}jj 
}kk ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Recording\TimelineRecording.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static

 

partial

 
class

 
TimelineRecording

 *
{ 
static 
readonly 
List 
<  
PropertyModification 1
>1 2'
s_TempPropertyModifications3 N
=O P
newQ T
ListU Y
<Y Z 
PropertyModificationZ n
>n o
(o p
$nump q
)q r
;r s
internal 
static $
UndoPropertyModification 0
[0 1
]1 2#
ProcessUndoModification3 J
(J K$
UndoPropertyModificationK c
[c d
]d e

,s t
WindowState	u �
state
� �
)
� �
{ 	
if 
( ,
 HasAnyPlayableAssetModifications 0
(0 1

)> ?
)? @
return ,
 ProcessPlayableAssetModification 7
(7 8

,E F
stateG L
)L M
;M N
return ,
 ProcessMonoBehaviourModification 3
(3 4

,A B
stateC H
)H I
;I J
} 	
static 
UnityEngine 
. 
Object !
	GetTarget" +
(+ ,$
UndoPropertyModification, D
undoE I
)I J
{ 	
if 
( 
undo 
. 
currentValue !
!=" $
null% )
)) *
return 
undo 
. 
currentValue (
.( )
target) /
;/ 0
if 
( 
undo 
. 

!=# %
null& *
)* +
return 
undo 
. 

.) *
target* 0
;0 1
return 
null 
; 
} 	
static 

TrackAsset !
GetTrackForGameObject /
(/ 0

GameObject0 :

gameObject; E
,E F
WindowStateG R
stateS X
)X Y
{   	
if!! 
(!! 

gameObject!! 
==!! 
null!! "
)!!" #
return"" 
null"" 
;"" 
var$$ 
director$$ 
=$$ 
state$$  
.$$  !
editSequence$$! -
.$$- .
director$$. 6
;$$6 7
if%% 
(%% 
director%% 
==%% 
null%%  
)%%  !
return&& 
null&& 
;&& 
var(( 
level(( 
=(( 
int(( 
.(( 
MaxValue(( $
;(($ %

TrackAsset** 
result** 
=** 
null**  $
;**$ %
var-- 
outputTracks-- 
=-- 
state-- $
.--$ %
editSequence--% 1
.--1 2
asset--2 7
.--7 8
flattenedTracks--8 G
;--G H
foreach.. 
(.. 
var.. 
track.. 
in.. !
outputTracks.." .
)... /
{// 
if00 
(00 
track00 
.00 
GetType00 !
(00! "
)00" #
!=00$ &
typeof00' -
(00- .
AnimationTrack00. <
)00< =
)00= >
continue11 
;11 
if22 
(22 
!22 
state22 
.22 
IsTrackRecordable22 ,
(22, -
track22- 2
)222 3
)223 4
continue33 
;33 
var55 
obj55 
=55 
TimelineUtility55 )
.55) *
GetSceneGameObject55* <
(55< =
director55= E
,55E F
track55G L
)55L M
;55M N
if66 
(66 
obj66 
!=66 
null66 
)66  
{77 
var99 

childLevel99 "
=99# $

(992 3
obj993 6
,996 7

gameObject998 B
)99B C
;99C D
if:: 
(:: 

childLevel:: "
!=::# %
-::& '
$num::' (
&&::) +

childLevel::, 6
<::7 8
level::9 >
)::> ?
{;; 
result<< 
=<<  
track<<! &
;<<& '
level== 
=== 

childLevel==  *
;==* +
}>> 
}?? 
}@@ 
ifDD 
(DD 
resultDD 
&&DD 
!DD 
stateDD  
.DD  !
IsTrackRecordableDD! 2
(DD2 3
resultDD3 9
)DD9 :
)DD: ;
{EE 
resultFF 
=FF 
nullFF 
;FF 
}GG 
returnII 
resultII 
;II 
}JJ 	
publicNN 
staticNN 

TrackAssetNN  
GetRecordingTrackNN! 2
(NN2 3
SerializedPropertyNN3 E
propertyNNF N
,NNN O
WindowStateNNP [
stateNN\ a
)NNa b
{OO 	
varPP 
serializedObjectPP  
=PP! "
propertyPP# +
.PP+ ,
serializedObjectPP, <
;PP< =
varQQ 
	componentQQ 
=QQ 
serializedObjectQQ ,
.QQ, -
targetObjectQQ- 9
asQQ: <
	ComponentQQ= F
;QQF G
ifRR 
(RR 
	componentRR 
==RR 
nullRR !
)RR! "
returnSS 
nullSS 
;SS 
varUU 

gameObjectUU 
=UU 
	componentUU &
.UU& '

gameObjectUU' 1
;UU1 2
returnVV !
GetTrackForGameObjectVV (
(VV( )

gameObjectVV) 3
,VV3 4
stateVV5 :
)VV: ;
;VV; <
}WW 	
staticZZ 
voidZZ 
GatherModificationsZZ '
(ZZ' (
SerializedPropertyZZ( :
propertyZZ; C
,ZZC D
ListZZE I
<ZZI J 
PropertyModificationZZJ ^
>ZZ^ _

)ZZm n
{[[ 	
if]] 
(]] 
property]] 
.]] 
hasChildren]] $
)]]$ %
{^^ 
var__ 
iter__ 
=__ 
property__ #
.__# $
Copy__$ (
(__( )
)__) *
;__* +
var`` 
end`` 
=`` 
property`` "
.``" #
GetEndProperty``# 1
(``1 2
false``2 7
)``7 8
;``8 9
whilecc 
(cc 
itercc 
.cc 
Nextcc  
(cc  !
truecc! %
)cc% &
&&cc' )
!cc* +
SerializedPropertycc+ =
.cc= >

(ccK L
iterccL P
,ccP Q
endccR U
)ccU V
)ccV W
{dd 
GatherModificationsee '
(ee' (
iteree( ,
,ee, -

)ee; <
;ee< =
}ff 
}gg 
varii 
isObjectii 
=ii 
propertyii #
.ii# $
propertyTypeii$ 0
==ii1 3"
SerializedPropertyTypeii4 J
.iiJ K
ObjectReferenceiiK Z
;iiZ [
varjj 
isFloatjj 
=jj 
propertyjj "
.jj" #
propertyTypejj# /
==jj0 2"
SerializedPropertyTypejj3 I
.jjI J
FloatjjJ O
||jjP R
propertykk 
.kk 
propertyTypekk %
==kk& ("
SerializedPropertyTypekk) ?
.kk? @
Booleankk@ G
||kkH J
propertyll 
.ll 
propertyTypell %
==ll& ("
SerializedPropertyTypell) ?
.ll? @
Integerll@ G
;llG H
ifnn 
(nn 
isObjectnn 
||nn 
isFloatnn #
)nn# $
{oo 
varpp 
serializedObjectpp $
=pp% &
propertypp' /
.pp/ 0
serializedObjectpp0 @
;pp@ A
varqq 
modificationqq  
=qq! "
newqq# & 
PropertyModificationqq' ;
(qq; <
)qq< =
;qq= >
modificationss 
.ss 
targetss #
=ss$ %
serializedObjectss& 6
.ss6 7
targetObjectss7 C
;ssC D
modificationtt 
.tt 
propertyPathtt )
=tt* +
propertytt, 4
.tt4 5
propertyPathtt5 A
;ttA B
ifuu 
(uu 
isObjectuu 
)uu 
{vv 
modificationww  
.ww  !
valueww! &
=ww' (
stringww) /
.ww/ 0
Emptyww0 5
;ww5 6
modificationxx  
.xx  !
objectReferencexx! 0
=xx1 2
propertyxx3 ;
.xx; < 
objectReferenceValuexx< P
;xxP Q
}yy 
elsezz 
{{{ 
modification||  
.||  !
value||! &
=||' (
TimelineUtility||) 8
.||8 9
PropertyToString||9 I
(||I J
property||J R
)||R S
;||S T
}}} 
if
�� 
(
�� 
serializedObject
�� $
.
��$ %
targetObject
��% 1
is
��2 4
	Component
��5 >
)
��> ?
{
��  
EditorCurveBinding
�� &
temp
��' +
;
��+ ,
var
�� 
go
�� 
=
�� 
(
�� 
(
�� 
	Component
�� (
)
��( )
serializedObject
��) 9
.
��9 :
targetObject
��: F
)
��F G
.
��G H

gameObject
��H R
;
��R S
if
�� 
(
�� 
AnimationUtility
�� (
.
��( )6
(PropertyModificationToEditorCurveBinding
��) Q
(
��Q R
modification
��R ^
,
��^ _
go
��` b
,
��b c
out
��d g
temp
��h l
)
��l m
!=
��n p
null
��q u
)
��u v
{
�� 

�� %
.
��% &
Add
��& )
(
��) *
modification
��* 6
)
��6 7
;
��7 8
}
�� 
}
�� 
else
�� 
{
�� 

�� !
.
��! "
Add
��" %
(
��% &
modification
��& 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
	CanRecord
�� $
(
��$ % 
SerializedProperty
��% 7
property
��8 @
,
��@ A
WindowState
��B M
state
��N S
)
��S T
{
�� 	
if
�� 
(
�� %
IsPlayableAssetProperty
�� '
(
��' (
property
��( 0
)
��0 1
)
��1 2
return
�� &
AnimatedParameterUtility
�� /
.
��/ 0
IsTypeAnimatable
��0 @
(
��@ A
property
��A I
.
��I J
propertyType
��J V
)
��V W
;
��W X
if
�� 
(
�� 
GetRecordingTrack
�� !
(
��! "
property
��" *
,
��* +
state
��, 1
)
��1 2
==
��3 5
null
��6 :
)
��: ;
return
�� 
false
�� 
;
�� )
s_TempPropertyModifications
�� '
.
��' (
Clear
��( -
(
��- .
)
��. /
;
��/ 0!
GatherModifications
�� 
(
��  
property
��  (
,
��( ))
s_TempPropertyModifications
��* E
)
��E F
;
��F G
return
�� )
s_TempPropertyModifications
�� .
.
��. /
Any
��/ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
static
�� 
void
�� 
AddKey
�� !
(
��! " 
SerializedProperty
��" 4
prop
��5 9
,
��9 :
WindowState
��; F
state
��G L
)
��L M
{
�� 	)
s_TempPropertyModifications
�� '
.
��' (
Clear
��( -
(
��- .
)
��. /
;
��/ 0!
GatherModifications
�� 
(
��  
prop
��  $
,
��$ %)
s_TempPropertyModifications
��& A
)
��A B
;
��B C
if
�� 
(
�� )
s_TempPropertyModifications
�� +
.
��+ ,
Any
��, /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
AddKey
�� 
(
�� )
s_TempPropertyModifications
�� 2
,
��2 3
state
��4 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
AddKey
�� !
(
��! "
IEnumerable
��" -
<
��- ."
PropertyModification
��. B
>
��B C

��D Q
,
��Q R
WindowState
��S ^
state
��_ d
)
��d e
{
�� 	
var
�� 
undos
�� 
=
�� 

�� %
.
��% &
Select
��& ,
(
��, -<
.PropertyModificationToUndoPropertyModification
��- [
)
��[ \
.
��\ ]
ToArray
��] d
(
��d e
)
��e f
;
��f g%
ProcessUndoModification
�� #
(
��# $
undos
��$ )
,
��) *
state
��+ 0
)
��0 1
;
��1 2
}
�� 	
static
�� &
UndoPropertyModification
�� '<
.PropertyModificationToUndoPropertyModification
��( V
(
��V W"
PropertyModification
��W k
prop
��l p
)
��p q
{
�� 	
return
�� 
new
�� &
UndoPropertyModification
�� /
{
�� 

�� 
=
�� 
prop
��  $
,
��$ %
currentValue
�� 
=
�� 
new
�� ""
PropertyModification
��# 7
{
�� 
objectReference
�� #
=
��$ %
prop
��& *
.
��* +
objectReference
��+ :
,
��: ;
propertyPath
��  
=
��! "
prop
��# '
.
��' (
propertyPath
��( 4
,
��4 5
target
�� 
=
�� 
prop
�� !
.
��! "
target
��" (
,
��( )
value
�� 
=
�� 
prop
��  
.
��  !
value
��! &
}
�� 
,
��  
keepPrefabOverride
�� "
=
��# $
true
��% )
}
�� 
;
��
}
�� 	
static
�� 

�� 
GetRecordingClip
�� -
(
��- .

TrackAsset
��. 8
asset
��9 >
,
��> ?
WindowState
��@ K
state
��L Q
,
��Q R
out
��S V
double
��W ]
	startTime
��^ g
,
��g h
out
��i l
double
��m s
	timeScale
��t }
)
��} ~
{
�� 	
	startTime
�� 
=
�� 
$num
�� 
;
�� 
	timeScale
�� 
=
�� 
$num
�� 
;
�� 
TimelineClip
�� 
displayBackground
�� *
=
��+ ,
null
��- 1
;
��1 2
asset
�� 
.
�� %
FindRecordingClipAtTime
�� )
(
��) *
state
��* /
.
��/ 0
editSequence
��0 <
.
��< =
time
��= A
,
��A B
out
��C F
displayBackground
��G X
)
��X Y
;
��Y Z
var
�� 
animClip
�� 
=
�� 
asset
��  
.
��  !.
 FindRecordingAnimationClipAtTime
��! A
(
��A B
state
��B G
.
��G H
editSequence
��H T
.
��T U
time
��U Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
displayBackground
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
	startTime
�� 
=
�� 
displayBackground
�� .
.
��. /
start
��/ 4
;
��4 5
	timeScale
�� 
=
�� 
displayBackground
�� .
.
��. /
	timeScale
��/ 8
;
��8 9
}
�� 
return
�� 
animClip
�� 
;
�� 
}
�� 	
static
�� 
bool
�� $
GetClipAndRelativeTime
�� *
(
��* +
UnityEngine
��+ 6
.
��6 7
Object
��7 =
target
��> D
,
��D E
WindowState
��F Q
state
��R W
,
��W X
out
�� 

�� 
outClip
�� %
,
��% &
out
��' *
double
��+ 1
keyTime
��2 9
,
��9 :
out
��; >
bool
��? C

keyInRange
��D N
)
��N O
{
�� 	
const
�� 
float
��  
floatToDoubleError
�� *
=
��+ ,
$num
��- 5
;
��5 6
outClip
�� 
=
�� 
null
�� 
;
�� 
keyTime
�� 
=
�� 
$num
�� 
;
�� 

keyInRange
�� 
=
�� 
false
�� 
;
�� 
double
�� 
	startTime
�� 
=
�� 
$num
��  
;
��  !
double
�� 
	timeScale
�� 
=
�� 
$num
��  
;
��  !

�� 
clip
�� 
=
��  
null
��! %
;
��% &
IPlayableAsset
�� 

�� (
=
��) *
target
��+ 1
as
��2 4
IPlayableAsset
��5 C
;
��C D
	Component
�� 
	component
�� 
=
��  !
target
��" (
as
��) +
	Component
��, 5
;
��5 6
if
�� 
(
�� 

�� 
!=
��  
null
��! %
)
��% &
{
�� 
var
�� 
curvesOwner
�� 
=
��  !&
AnimatedParameterUtility
��" :
.
��: ;

��; H
(
��H I

��I V
,
��V W
state
��X ]
.
��] ^
editSequence
��^ j
.
��j k
asset
��k p
)
��p q
;
��q r
if
�� 
(
�� 
curvesOwner
�� 
!=
��  "
null
��# '
&&
��( *
state
��+ 0
.
��0 1
IsTrackRecordable
��1 B
(
��B C
curvesOwner
��C N
.
��N O
targetTrack
��O Z
)
��Z [
)
��[ \
{
�� 
if
�� 
(
�� 
curvesOwner
�� #
.
��# $
curves
��$ *
==
��+ -
null
��. 2
)
��2 3
curvesOwner
�� #
.
��# $
CreateCurves
��$ 0
(
��0 1
curvesOwner
��1 <
.
��< ='
GetUniqueRecordedClipName
��= V
(
��V W
)
��W X
)
��X Y
;
��Y Z
clip
�� 
=
�� 
curvesOwner
�� &
.
��& '
curves
��' -
;
��- .
var
�� 
timelineClip
�� $
=
��% &
curvesOwner
��' 2
as
��3 5
TimelineClip
��6 B
;
��B C
if
�� 
(
�� 
timelineClip
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
	startTime
�� !
=
��" #
timelineClip
��$ 0
.
��0 1
start
��1 6
;
��6 7
	timeScale
�� !
=
��" #
timelineClip
��$ 0
.
��0 1
	timeScale
��1 :
;
��: ;
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
	component
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
var
�� 
asset
�� 
=
�� #
GetTrackForGameObject
�� 1
(
��1 2
	component
��2 ;
.
��; <

gameObject
��< F
,
��F G
state
��H M
)
��M N
;
��N O
if
�� 
(
�� 
asset
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
clip
�� 
=
�� 
GetRecordingClip
�� +
(
��+ ,
asset
��, 1
,
��1 2
state
��3 8
,
��8 9
out
��: =
	startTime
��> G
,
��G H
out
��I L
	timeScale
��M V
)
��V W
;
��W X
}
�� 
}
�� 
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
keyTime
�� 
=
�� 
(
�� 
state
�� 
.
�� 
editSequence
�� )
.
��) *
time
��* .
-
��/ 0
	startTime
��1 :
)
��: ;
*
��< =
	timeScale
��> G
;
��G H
outClip
�� 
=
�� 
clip
�� 
;
�� 

keyInRange
�� 
=
�� 
keyTime
��  
>=
��! #
$num
��$ %
&&
��& (
keyTime
��) 0
<=
��1 3
(
��4 5
clip
��5 9
.
��9 :
length
��: @
*
��A B
	timeScale
��C L
+
��M N 
floatToDoubleError
��O a
)
��a b
;
��b c
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
HasCurve
�� #
(
��# $
IEnumerable
��$ /
<
��/ 0"
PropertyModification
��0 D
>
��D E

��F S
,
��S T
UnityEngine
��U `
.
��` a
Object
��a g
target
��h n
,
��n o
WindowState
�� 
state
�� 
)
�� 
{
�� 	
return
�� 
GetKeyTimes
�� 
(
�� 
target
�� %
,
��% &

��' 4
,
��4 5
state
��6 ;
)
��; <
.
��< =
Any
��= @
(
��@ A
)
��A B
;
��B C
}
�� 	
public
�� 
static
�� 
bool
�� 
HasKey
�� !
(
��! "
IEnumerable
��" -
<
��- ."
PropertyModification
��. B
>
��B C

��D Q
,
��Q R
UnityEngine
��S ^
.
��^ _
Object
��_ e
target
��f l
,
��l m
WindowState
�� 
state
�� 
)
�� 
{
�� 	

�� 
clip
�� 
;
�� 
double
�� 
keyTime
�� 
;
�� 
bool
�� 
inRange
�� 
;
�� 
if
�� 
(
�� 
!
�� $
GetClipAndRelativeTime
�� '
(
��' (
target
��( .
,
��. /
state
��0 5
,
��5 6
out
��7 :
clip
��; ?
,
��? @
out
��A D
keyTime
��E L
,
��L M
out
��N Q
inRange
��R Y
)
��Y Z
)
��Z [
return
�� 
false
�� 
;
�� 
return
�� 
GetKeyTimes
�� 
(
�� 
target
�� %
,
��% &

��' 4
,
��4 5
state
��6 ;
)
��; <
.
��< =
Any
��= @
(
��@ A
t
��A B
=>
��C E
(
��F G
CurveEditUtility
��G W
.
��W X

KeyCompare
��X b
(
��b c
(
��c d
float
��d i
)
��i j
state
��j o
.
��o p
editSequence
��p |
.
��| }
time��} �
,��� �
(��� �
float��� �
)��� �
t��� �
,��� �
clip��� �
.��� �
	frameRate��� �
)��� �
==��� �
$num��� �
)��� �
)��� �
;��� �
}
�� 	
static
�� 
bool
�� 

HasBinding
�� 
(
�� 
UnityEngine
�� *
.
��* +
Object
��+ 1
target
��2 8
,
��8 9"
PropertyModification
��: N
modification
��O [
,
��[ \

��] j
clip
��k o
,
��o p
out
��q t!
EditorCurveBinding��u �
binding��� �
)��� �
{
�� 	
var
�� 
	component
�� 
=
�� 
target
�� "
as
��# %
	Component
��& /
;
��/ 0
var
�� 

�� 
=
�� 
target
��  &
as
��' )
IPlayableAsset
��* 8
;
��8 9
if
�� 
(
�� 
	component
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
var
�� 
type
�� 
=
�� 
AnimationUtility
�� +
.
��+ ,6
(PropertyModificationToEditorCurveBinding
��, T
(
��T U
modification
��U a
,
��a b
	component
��c l
.
��l m

gameObject
��m w
,
��w x
out
��y |
binding��} �
)��� �
;��� �
binding
�� 
=
�� (
RotationCurveInterpolation
�� 4
.
��4 54
&RemapAnimationBindingForRotationCurves
��5 [
(
��[ \
binding
��\ c
,
��c d
clip
��e i
)
��i j
;
��j k
return
�� 
type
�� 
!=
�� 
null
�� #
;
��# $
}
�� 
if
�� 
(
�� 

�� 
!=
��  
null
��! %
)
��% &
{
�� 
binding
�� 
=
��  
EditorCurveBinding
�� ,
.
��, -

FloatCurve
��- 7
(
��7 8
string
��8 >
.
��> ?
Empty
��? D
,
��D E
target
��F L
.
��L M
GetType
��M T
(
��T U
)
��U V
,
��V W&
AnimatedParameterUtility
�� ,
.
��, --
GetAnimatedParameterBindingName
��- L
(
��L M
target
��M S
,
��S T
modification
��U a
.
��a b
propertyPath
��b n
)
��n o
)
��o p
;
��p q
}
�� 
else
�� 
{
�� 
binding
�� 
=
�� 
new
��  
EditorCurveBinding
�� 0
(
��0 1
)
��1 2
;
��2 3
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
	RemoveKey
�� $
(
��$ %
UnityEngine
��% 0
.
��0 1
Object
��1 7
target
��8 >
,
��> ?
IEnumerable
��@ K
<
��K L"
PropertyModification
��L `
>
��` a

��b o
,
��o p
WindowState
�� 
state
�� 
)
�� 
{
�� 	

�� 
clip
�� 
;
�� 
double
�� 
keyTime
�� 
;
�� 
bool
�� 
inRange
�� 
;
�� 
if
�� 
(
�� 
!
�� $
GetClipAndRelativeTime
�� '
(
��' (
target
��( .
,
��. /
state
��0 5
,
��5 6
out
��7 :
clip
��; ?
,
��? @
out
��A D
keyTime
��E L
,
��L M
out
��N Q
inRange
��R Y
)
��Y Z
||
��[ ]
!
��^ _
inRange
��_ f
)
��f g
return
�� 
;
�� 
var
�� 
refreshPreview
�� 
=
��  
false
��! &
;
��& '
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
clip
��" &
,
��& '
$str
��( 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 

��  -
)
��- .
{
�� 
EditorCurveBinding
�� "
temp
��# '
;
��' (
if
�� 
(
�� 

HasBinding
�� 
(
�� 
target
�� %
,
��% &
mod
��' *
,
��* +
clip
��, 0
,
��0 1
out
��2 5
temp
��6 :
)
��: ;
)
��; <
{
�� 
if
�� 
(
�� 
temp
�� 
.
�� 
isPPtrCurve
�� (
)
��( )
{
�� 
CurveEditUtility
�� (
.
��( )
RemoveObjectKey
��) 8
(
��8 9
clip
��9 =
,
��= >
temp
��? C
,
��C D
keyTime
��E L
)
��L M
;
��M N
if
�� 
(
�� 
CurveEditUtility
�� ,
.
��, -
GetObjectKeyCount
��- >
(
��> ?
clip
��? C
,
��C D
temp
��E I
)
��I J
==
��K M
$num
��N O
)
��O P
{
�� 
refreshPreview
�� *
=
��+ ,
true
��- 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
AnimationCurve
�� &
curve
��' ,
=
��- .
AnimationUtility
��/ ?
.
��? @
GetEditorCurve
��@ N
(
��N O
clip
��O S
,
��S T
temp
��U Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
curve
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
CurveEditUtility
�� ,
.
��, -%
RemoveKeyFrameFromCurve
��- D
(
��D E
curve
��E J
,
��J K
(
��L M
float
��M R
)
��R S
keyTime
��S Z
,
��Z [
clip
��\ `
.
��` a
	frameRate
��a j
)
��j k
;
��k l
AnimationUtility
�� ,
.
��, -
SetEditorCurve
��- ;
(
��; <
clip
��< @
,
��@ A
temp
��B F
,
��F G
curve
��H M
)
��M N
;
��N O
if
�� 
(
��  
curve
��  %
.
��% &
length
��& ,
==
��- /
$num
��0 1
)
��1 2
{
�� 
AnimationUtility
��  0
.
��0 1
SetEditorCurve
��1 ?
(
��? @
clip
��@ D
,
��D E
temp
��F J
,
��J K
null
��L P
)
��P Q
;
��Q R
refreshPreview
��  .
=
��/ 0
true
��1 5
;
��5 6
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
refreshPreview
�� 
)
�� 
{
�� 
state
�� 
.
�� 
ResetPreviewMode
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
static
�� 
HashSet
�� 
<
�� 
double
�� 
>
�� 
GetKeyTimes
�� *
(
��* +
UnityEngine
��+ 6
.
��6 7
Object
��7 =
target
��> D
,
��D E
IEnumerable
��F Q
<
��Q R"
PropertyModification
��R f
>
��f g

��h u
,
��u v
WindowState��w �
state��� �
)��� �
{
�� 	
var
�� 
keyTimes
�� 
=
�� 
new
�� 
HashSet
�� &
<
��& '
double
��' -
>
��- .
(
��. /
)
��/ 0
;
��0 1

�� 

�� '
;
��' (
double
�� 
keyTime
�� 
;
�� 
bool
�� 
inRange
�� 
;
�� $
GetClipAndRelativeTime
�� "
(
��" #
target
��# )
,
��) *
state
��+ 0
,
��0 1
out
��2 5

��6 C
,
��C D
out
��E H
keyTime
��I P
,
��P Q
out
��R U
inRange
��V ]
)
��] ^
;
��^ _
if
�� 
(
�� 

�� 
==
��  
null
��! %
)
��% &
return
�� 
keyTimes
�� 
;
��  
var
�� 
	component
�� 
=
�� 
target
�� "
as
��# %
	Component
��& /
;
��/ 0
var
�� 

�� 
=
�� 
target
��  &
as
��' )
IPlayableAsset
��* 8
;
��8 9
var
�� 
info
�� 
=
�� %
AnimationClipCurveCache
�� .
.
��. /
Instance
��/ 7
.
��7 8
GetCurveInfo
��8 D
(
��D E

��E R
)
��R S
;
��S T
TimelineClip
�� 
clip
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 
	component
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
GetTrackForGameObject
�� %
(
��% &
	component
��& /
.
��/ 0

gameObject
��0 :
,
��: ;
state
��< A
)
��A B
.
��B C%
FindRecordingClipAtTime
��C Z
(
��Z [
state
��[ `
.
��` a
editSequence
��a m
.
��m n
time
��n r
,
��r s
out
��t w
clip
��x |
)
��| }
;
��} ~
}
�� 
else
�� 
if
�� 
(
�� 

�� "
!=
��# %
null
��& *
)
��* +
{
�� 
clip
�� 
=
�� 
FindClipWithAsset
�� (
(
��( )
state
��) .
.
��. /
editSequence
��/ ;
.
��; <
asset
��< A
,
��A B

��C P
)
��P Q
;
��Q R
}
�� 
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 

��  -
)
��- .
{
�� 
EditorCurveBinding
�� "
temp
��# '
;
��' (
if
�� 
(
�� 

HasBinding
�� 
(
�� 
target
�� %
,
��% &
mod
��' *
,
��* +

��, 9
,
��9 :
out
��; >
temp
��? C
)
��C D
)
��D E
{
�� 
IEnumerable
�� 
<
��  
double
��  &
>
��& '
keys
��( ,
=
��- .
new
��/ 2
HashSet
��3 :
<
��: ;
double
��; A
>
��A B
(
��B C
)
��C D
;
��D E
if
�� 
(
�� 
temp
�� 
.
�� 
isPPtrCurve
�� (
)
��( )
{
�� 
var
�� 
curve
�� !
=
��" #
info
��$ (
.
��( )&
GetObjectCurveForBinding
��) A
(
��A B
temp
��B F
)
��F G
;
��G H
if
�� 
(
�� 
curve
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
keys
��  
=
��! "
curve
��# (
.
��( )
Select
��) /
(
��/ 0
x
��0 1
=>
��2 4
(
��5 6
double
��6 <
)
��< =
x
��= >
.
��> ?
time
��? C
)
��C D
;
��D E
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
curve
�� !
=
��" #
info
��$ (
.
��( ) 
GetCurveForBinding
��) ;
(
��; <
temp
��< @
)
��@ A
;
��A B
if
�� 
(
�� 
curve
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
keys
��  
=
��! "
curve
��# (
.
��( )
keys
��) -
.
��- .
Select
��. 4
(
��4 5
x
��5 6
=>
��7 9
(
��: ;
double
��; A
)
��A B
x
��B C
.
��C D
time
��D H
)
��H I
;
��I J
}
�� 
}
�� 
if
�� 
(
�� 
clip
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
foreach
�� 
(
��  !
var
��! $
k
��% &
in
��' )
keys
��* .
)
��. /
{
�� 
var
�� 
time
��  $
=
��% &
clip
��' +
.
��+ ,"
FromLocalTimeUnbound
��, @
(
��@ A
k
��A B
)
��B C
;
��C D
const
�� !
double
��" (
eps
��) ,
=
��- .
$num
��/ 3
;
��3 4
if
�� 
(
��  
time
��  $
>=
��% '
clip
��( ,
.
��, -
start
��- 2
-
��3 4
eps
��5 8
&&
��9 ;
time
��< @
<=
��A C
clip
��D H
.
��H I
end
��I L
+
��M N
eps
��O R
)
��R S
{
�� 
keyTimes
��  (
.
��( )
Add
��) ,
(
��, -
time
��- 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
keyTimes
��  
.
��  !
	UnionWith
��! *
(
��* +
keys
��+ /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
return
�� 
keyTimes
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
NextKey
�� "
(
��" #
UnityEngine
��# .
.
��. /
Object
��/ 5
target
��6 <
,
��< =
IEnumerable
��> I
<
��I J"
PropertyModification
��J ^
>
��^ _

��` m
,
��m n
WindowState
��o z
state��{ �
)��� �
{
�� 	
const
�� 
double
�� 
eps
�� 
=
�� 
$num
�� #
;
��# $
var
�� 
keyTimes
�� 
=
�� 
GetKeyTimes
�� &
(
��& '
target
��' -
,
��- .

��/ <
,
��< =
state
��> C
)
��C D
;
��D E
if
�� 
(
�� 
keyTimes
�� 
.
�� 
Count
�� 
==
�� !
$num
��" #
)
��# $
return
�� 
;
�� 
var
�� 
nextKeys
�� 
=
�� 
keyTimes
�� #
.
��# $
Where
��$ )
(
��) *
x
��* +
=>
��, .
x
��/ 0
>
��1 2
state
��3 8
.
��8 9
editSequence
��9 E
.
��E F
time
��F J
+
��K L
eps
��M P
)
��P Q
;
��Q R
if
�� 
(
�� 
nextKeys
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #
time
��# '
=
��( )
nextKeys
��* 2
.
��2 3
Min
��3 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
PrevKey
�� "
(
��" #
UnityEngine
��# .
.
��. /
Object
��/ 5
target
��6 <
,
��< =
IEnumerable
��> I
<
��I J"
PropertyModification
��J ^
>
��^ _

��` m
,
��m n
WindowState
��o z
state��{ �
)��� �
{
�� 	
const
�� 
double
�� 
eps
�� 
=
�� 
$num
�� #
;
��# $
var
�� 
keyTimes
�� 
=
�� 
GetKeyTimes
�� &
(
��& '
target
��' -
,
��- .

��/ <
,
��< =
state
��> C
)
��C D
;
��D E
if
�� 
(
�� 
keyTimes
�� 
.
�� 
Count
�� 
==
�� !
$num
��" #
)
��# $
return
�� 
;
�� 
var
�� 
prevKeys
�� 
=
�� 
keyTimes
�� #
.
��# $
Where
��$ )
(
��) *
x
��* +
=>
��, .
x
��/ 0
<
��1 2
state
��3 8
.
��8 9
editSequence
��9 E
.
��E F
time
��F J
-
��K L
eps
��M P
)
��P Q
;
��Q R
if
�� 
(
�� 
prevKeys
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
state
�� 
.
�� 
editSequence
�� "
.
��" #
time
��# '
=
��( )
prevKeys
��* 2
.
��2 3
Max
��3 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
RemoveCurve
�� &
(
��& '
UnityEngine
��' 2
.
��2 3
Object
��3 9
target
��: @
,
��@ A
IEnumerable
��B M
<
��M N"
PropertyModification
��N b
>
��b c

��d q
,
��q r
WindowState
��s ~
state�� �
)��� �
{
�� 	

�� 
clip
�� 
=
��  
null
��! %
;
��% &
double
�� 
keyTime
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
inRange
�� 
=
�� 
false
�� 
;
��  
if
�� 
(
�� 
!
�� $
GetClipAndRelativeTime
�� '
(
��' (
target
��( .
,
��. /
state
��0 5
,
��5 6
out
��7 :
clip
��; ?
,
��? @
out
��A D
keyTime
��E L
,
��L M
out
��N Q
inRange
��R Y
)
��Y Z
)
��Z [
return
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
clip
��" &
,
��& '
$str
��( 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 

��  -
)
��- .
{
�� 
EditorCurveBinding
�� "
temp
��# '
;
��' (
if
�� 
(
�� 

HasBinding
�� 
(
�� 
target
�� %
,
��% &
mod
��' *
,
��* +
clip
��, 0
,
��0 1
out
��2 5
temp
��6 :
)
��: ;
)
��; <
{
�� 
if
�� 
(
�� 
temp
�� 
.
�� 
isPPtrCurve
�� (
)
��( )
AnimationUtility
�� (
.
��( )%
SetObjectReferenceCurve
��) @
(
��@ A
clip
��A E
,
��E F
temp
��G K
,
��K L
null
��M Q
)
��Q R
;
��R S
else
�� 
AnimationUtility
�� (
.
��( )
SetEditorCurve
��) 7
(
��7 8
clip
��8 <
,
��< =
temp
��> B
,
��B C
null
��D H
)
��H I
;
��I J
}
�� 
}
�� 
state
�� 
.
�� 
ResetPreviewMode
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
public
�� 
static
�� 
IEnumerable
�� !
<
��! "

GameObject
��" ,
>
��, -&
GetRecordableGameObjects
��. F
(
��F G
WindowState
��G R
state
��S X
)
��X Y
{
�� 	
if
�� 
(
�� 
state
�� 
==
�� 
null
�� 
||
��  
state
��! &
.
��& '
editSequence
��' 3
.
��3 4
asset
��4 9
==
��: <
null
��= A
||
��B D
state
��E J
.
��J K
editSequence
��K W
.
��W X
director
��X `
==
��a c
null
��d h
)
��h i
yield
�� 
break
�� 
;
�� 
var
�� 
outputTracks
�� 
=
�� 
state
�� $
.
��$ %
editSequence
��% 1
.
��1 2
asset
��2 7
.
��7 8
GetOutputTracks
��8 G
(
��G H
)
��H I
;
��I J
foreach
�� 
(
�� 
var
�� 
track
�� 
in
�� !
outputTracks
��" .
)
��. /
{
�� 
if
�� 
(
�� 
track
�� 
.
�� 
GetType
�� !
(
��! "
)
��" #
!=
��$ &
typeof
��' -
(
��- .
AnimationTrack
��. <
)
��< =
)
��= >
continue
�� 
;
�� 
if
�� 
(
�� 
!
�� 
state
�� 
.
�� 
IsTrackRecordable
�� ,
(
��, -
track
��- 2
)
��2 3
&&
��4 6
!
��7 8
track
��8 =
.
��= >
GetChildTracks
��> L
(
��L M
)
��M N
.
��N O
Any
��O R
(
��R S
state
��S X
.
��X Y
IsTrackRecordable
��Y j
)
��j k
)
��k l
continue
�� 
;
�� 
var
�� 
obj
�� 
=
�� 
TimelineUtility
�� )
.
��) * 
GetSceneGameObject
��* <
(
��< =
state
��= B
.
��B C
editSequence
��C O
.
��O P
director
��P X
,
��X Y
track
��Z _
)
��_ `
;
��` a
if
�� 
(
�� 
obj
�� 
!=
�� 
null
�� 
)
��  
{
�� 
yield
�� 
return
��  
obj
��! $
;
��$ %
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �V
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Audio\AudioPlayableAssetEditor.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
[  
CustomTimelineEditor 
( 
typeof  
(  !
AudioPlayableAsset! 3
)3 4
)4 5
,5 6
UsedImplicitly7 E
]E F
class		 	$
AudioPlayableAssetEditor		
 "
:		# $

ClipEditor		% /
{

 
readonly 
string !
k_NoClipAssignedError -
=. /
L10n0 4
.4 5
Tr5 7
(7 8
$str8 P
)P Q
;Q R
readonly 

Dictionary 
< 
TimelineClip (
,( )
WaveformPreview* 9
>9 : 
m_PersistentPreviews; O
=P Q
newR U

DictionaryV `
<` a
TimelineClipa m
,m n
WaveformPreviewo ~
>~ 
(	 �
)
� �
;
� �

ColorSpace
m_ColorSpace
=

ColorSpace
.

;
public 
override 
ClipDrawOptions '
GetClipOptions( 6
(6 7
TimelineClip7 C
clipD H
)H I
{ 	
var 
clipOptions 
= 
base "
." #
GetClipOptions# 1
(1 2
clip2 6
)6 7
;7 8
var 

audioAsset 
= 
clip !
.! "
asset" '
as( *
AudioPlayableAsset+ =
;= >
if 
( 

audioAsset 
!= 
null "
&&# %

audioAsset& 0
.0 1
clip1 5
==6 8
null9 =
)= >
clipOptions 
. 
	errorText %
=& '!
k_NoClipAssignedError( =
;= >
return 
clipOptions 
; 
} 	
public 
override 
void 
DrawBackground +
(+ ,
TimelineClip, 8
clip9 =
,= > 
ClipBackgroundRegion? S
regionT Z
)Z [
{ 	
if 
( 
! 
TimelineWindow 
.  
instance  (
.( )
state) .
.. /
showAudioWaveform/ @
)@ A
return 
; 
var 
rect 
= 
region 
. 
position &
;& '
if 
( 
rect 
. 
width 
<= 
$num 
)  
return 
; 
var!! 
	audioClip!! 
=!! 
clip!!  
.!!  !
asset!!! &
as!!' )
	AudioClip!!* 3
;!!3 4
if"" 
("" 
	audioClip"" 
=="" 
null"" !
)""! "
{## 
var$$ 
audioPlayableAsset$$ &
=$$' (
clip$$) -
.$$- .
asset$$. 3
as$$4 6
AudioPlayableAsset$$7 I
;$$I J
if%% 
(%% 
audioPlayableAsset%% &
!=%%' )
null%%* .
)%%. /
	audioClip&& 
=&& 
audioPlayableAsset&&  2
.&&2 3
clip&&3 7
;&&7 8
}'' 
if)) 
()) 
	audioClip)) 
==)) 
null)) !
)))! "
return** 
;** 
var,, 

=,, 
new,,  #
Rect,,$ (
(,,( )
Mathf,,) .
.,,. /
Ceil,,/ 3
(,,3 4
rect,,4 8
.,,8 9
x,,9 :
),,: ;
,,,; <
Mathf,,= B
.,,B C
Ceil,,C G
(,,G H
rect,,H L
.,,L M
y,,M N
),,N O
,,,O P
Mathf,,Q V
.,,V W
Ceil,,W [
(,,[ \
rect,,\ `
.,,` a
width,,a f
),,f g
,,,g h
Mathf,,i n
.,,n o
Ceil,,o s
(,,s t
rect,,t x
.,,x y
height,,y 
)	,, �
)
,,� �
;
,,� �
WaveformPreview.. 
preview.. #
=..$ %&
GetOrCreateWaveformPreview..& @
(..@ A
clip..A E
,..E F
	audioClip..G P
,..P Q

,.._ `
region..a g
...g h
	startTime..h q
,..q r
region..s y
...y z
endTime	..z �
)
..� �
;
..� �
if// 
(// 
Event// 
.// 
current// 
.// 
type// "
==//# %
	EventType//& /
./// 0
Repaint//0 7
)//7 8
DrawWaveformPreview00 #
(00# $
preview00$ +
,00+ ,

)00: ;
;00; <
}11 	
public33 
WaveformPreview33 &
GetOrCreateWaveformPreview33 9
(339 :
TimelineClip33: F
clip33G K
,33K L
	AudioClip33M V
	audioClip33W `
,33` a
Rect33b f
rect33g k
,33k l
double33m s
	startTime33t }
,33} ~
double	33 �
endTime
33� �
)
33� �
{44 	
if55 
(55 
QualitySettings55 
.55  
activeColorSpace55  0
!=551 3
m_ColorSpace554 @
)55@ A
{66 
m_ColorSpace77 
=77 
QualitySettings77 .
.77. /
activeColorSpace77/ ?
;77? @ 
m_PersistentPreviews88 $
.88$ %
Clear88% *
(88* +
)88+ ,
;88, -
}99 
bool;; 

=;;   
m_PersistentPreviews;;! 5
.;;5 6
TryGetValue;;6 A
(;;A B
clip;;B F
,;;F G
out;;H K
WaveformPreview;;L [
preview;;\ c
);;c d
;;;d e
bool<< 
audioClipHasChanged<< $
=<<% &
preview<<' .
!=<</ 1
null<<2 6
&&<<7 9
	audioClip<<: C
!=<<D F
preview<<G N
.<<N O
presentedObject<<O ^
;<<^ _
if== 
(== 
!== 

||== !
audioClipHasChanged==" 5
)==5 6
{>> 
if?? 
(?? 

.??! "
Contains??" *
(??* +
	audioClip??+ 4
)??4 5
)??5 6
preview@@ 
=@@ !
CreateWaveformPreview@@ 3
(@@3 4
	audioClip@@4 =
,@@= >
rect@@? C
)@@C D
;@@D E 
m_PersistentPreviewsAA $
[AA$ %
clipAA% )
]AA) *
=AA+ ,
previewAA- 4
;AA4 5
}BB 
ifDD 
(DD 
previewDD 
==DD 
nullDD 
)DD  
returnEE 
nullEE 
;EE 
previewGG 
.GG 
loopingGG 
=GG 
clipGG "
.GG" #
SupportsLoopingGG# 2
(GG2 3
)GG3 4
;GG4 5
previewHH 
.HH 
SetTimeInfoHH 
(HH  
	startTimeHH  )
,HH) *
endTimeHH+ 2
-HH3 4
	startTimeHH5 >
)HH> ?
;HH? @
previewII 
.II 
OptimizeForSizeII #
(II# $
rectII$ (
.II( )
sizeII) -
)II- .
;II. /
returnJJ 
previewJJ 
;JJ 
}KK 	
publicMM 
staticMM 
voidMM 
DrawWaveformPreviewMM .
(MM. /
WaveformPreviewMM/ >
previewMM? F
,MMF G
RectMMH L
rectMMM Q
)MMQ R
{NN 	
ifOO 
(OO 
previewOO 
!=OO 
nullOO 
)OO  
{PP 
previewQQ 
.QQ 
ApplyModificationsQQ *
(QQ* +
)QQ+ ,
;QQ, -
previewRR 
.RR 
RenderRR 
(RR 
rectRR #
)RR# $
;RR$ %
}SS 
}TT 	
staticVV 
WaveformPreviewVV !
CreateWaveformPreviewVV 4
(VV4 5
	AudioClipVV5 >
	audioClipVV? H
,VVH I
RectVVJ N

)VV\ ]
{WW 	
WaveformPreviewXX 
previewXX #
=XX$ %"
WaveformPreviewFactoryXX& <
.XX< =
CreateXX= C
(XXC D
(XXD E
intXXE H
)XXH I

.XXV W
widthXXW \
,XX\ ]
	audioClipXX^ g
)XXg h
;XXh i
ColorYY 

waveColourYY 
=YY 
GammaCorrectYY +
(YY+ ,
DirectorStylesYY, :
.YY: ;
InstanceYY; C
.YYC D

customSkinYYD N
.YYN O
colorAudioWaveformYYO a
)YYa b
;YYb c
ColorZZ 
transparentZZ 
=ZZ 

waveColourZZ  *
;ZZ* +
transparent[[ 
.[[ 
a[[ 
=[[ 
$num[[ 
;[[ 
preview\\ 
.\\ 
backgroundColor\\ #
=\\$ %
transparent\\& 1
;\\1 2
preview]] 
.]] 
	waveColor]] 
=]] 

waveColour]]  *
;]]* +
preview^^ 
.^^ 
SetChannelMode^^ "
(^^" #
WaveformPreview^^# 2
.^^2 3
ChannelMode^^3 >
.^^> ?
MonoSum^^? F
)^^F G
;^^G H
preview__ 
.__ 
updated__ 
+=__ 
(__  
)__  !
=>__" $
TimelineEditor__% 3
.__3 4
Refresh__4 ;
(__; <

.__I J
WindowNeedsRedraw__J [
)__[ \
;__\ ]
return`` 
preview`` 
;`` 
}aa 	
staticcc 
Colorcc 
GammaCorrectcc !
(cc! "
Colorcc" '
colorcc( -
)cc- .
{dd 	
returnee 
(ee 
QualitySettingsee #
.ee# $
activeColorSpaceee$ 4
==ee5 7

ColorSpaceee8 B
.eeB C
LineareeC I
)eeI J
?eeK L
coloreeM R
.eeR S
gammaeeS X
:eeY Z
coloree[ `
;ee` a
}ff 	
}gg 
}hh �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\inspectors\EditorClip.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
[ 
ExcludeFromPreset 
] 
class 	

EditorClip
 
: 
ScriptableObject '
{ 
[		 	
SerializeField			 
]		 
TimelineClip		 %
m_Clip		& ,
;		, -
public 
TimelineClip 
clip  
{ 	
get
{
return
m_Clip
;
}
set 
{ 
m_Clip 
= 
value  
;  !
}" #
} 	
public 
int 
lastHash 
{ 
get !
;! "
set# &
;& '
}( )
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
clip 
. 
Hash 
( 
) 
; 
} 	
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Recording\TimelineRecording_Monobehaviour.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{		 
static 

partial 
class 
TimelineRecording *
{ 
internal
class
RecordingState
:
IAnimationRecordingState
{ 	
public 

GameObject 
activeGameObject .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 

GameObject  
activeRootGameObject 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 

activeAnimationClip! 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
void 
	SaveCurve !
(! " 
AnimationWindowCurve" 6
curve7 <
)< =
{ 
Undo 
. &
RegisterCompleteObjectUndo /
(/ 0
activeAnimationClip0 C
,C D
$strE Q
)Q R
;R S"
AnimationWindowUtility &
.& '
	SaveCurve' 0
(0 1
activeAnimationClip1 D
,D E
curveF K
)K L
;L M
} 
public 
void #
AddPropertyModification /
(/ 0
EditorCurveBinding0 B
bindingC J
,J K 
PropertyModificationL ` 
propertyModificationa u
,u v
boolw {
keepPrefabOverride	| �
)
� �
{ 

. #
AddPropertyModification 5
(5 6
binding6 =
,= > 
propertyModification? S
,S T
keepPrefabOverrideU g
)g h
;h i
} 
public 
bool 
addZeroFrame $
{ 
get   
{   
return   
false   "
;  " #
}  $ %
}!! 
public## 
int## 
currentFrame## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public%% 
bool%% 
DiscardModification%% +
(%%+ , 
PropertyModification%%, @
modification%%A M
)%%M N
{&& 
return'' 
false'' 
;'' 
}(( 
})) 	
static++ 
readonly++ 
RecordingState++ &

=++5 6
new++7 :
RecordingState++; I
(++I J
)++J K
;++K L
static,, 
readonly,, "
AnimationTrackRecorder,, .
s_TrackRecorder,,/ >
=,,? @
new,,A D"
AnimationTrackRecorder,,E [
(,,[ \
),,\ ]
;,,] ^
static-- 
readonly-- 
List-- 
<-- $
UndoPropertyModification-- 5
>--5 6
s_UnprocessedMods--7 H
=--I J
new--K N
List--O S
<--S T$
UndoPropertyModification--T l
>--l m
(--m n
)--n o
;--o p
static.. 
readonly.. 
List.. 
<.. $
UndoPropertyModification.. 5
>..5 6
s_ModsToProcess..7 F
=..G H
new..I L
List..M Q
<..Q R$
UndoPropertyModification..R j
>..j k
(..k l
)..l m
;..m n
static// 
AnimationTrack// 
s_LastTrackWarning// 0
;//0 1
public11 
const11 
string11 
kLocalPosition11 *
=11+ ,
$str11- >
;11> ?
public22 
const22 
string22 
kLocalRotation22 *
=22+ ,
$str22- >
;22> ?
public33 
const33 
string33 
kLocalEulerHint33 +
=33, -
$str33. F
;33F G
const44 
string44 
kRotationWarning44 %
=44& '
$str	44( �
;
44� �
public77 
static77 
bool77 %
IsRecordingAnimationTrack77 4
{775 6
get777 :
;77: ;
private77< C
set77D G
;77G H
}77I J
internal:: 
static:: $
UndoPropertyModification:: 0
[::0 1
]::1 2,
 ProcessMonoBehaviourModification::3 S
(::S T$
UndoPropertyModification::T l
[::l m
]::m n

,::| }
WindowState	::~ �
state
::� �
)
::� �
{;; 	
if<< 
(<< 
state<< 
==<< 
null<< 
||<<  
state<<! &
.<<& '
editSequence<<' 3
.<<3 4
director<<4 <
==<<= ?
null<<@ D
)<<D E
return== 

;==$ %
s_UnprocessedMods?? 
.?? 
Clear?? #
(??# $
)??$ %
;??% &
s_TrackRecorderAA 
.AA 
PrepareForRecordAA ,
(AA, -
stateAA- 2
)AA2 3
;AA3 4
s_ModsToProcessCC 
.CC 
ClearCC !
(CC! "
)CC" #
;CC# $
s_ModsToProcessDD 
.DD 
AddRangeDD $
(DD$ %

.DD2 3
ReverseDD3 :
(DD: ;
)DD; <
)DD< =
;DD= >
whileFF 
(FF 
s_ModsToProcessFF "
.FF" #
CountFF# (
>FF) *
$numFF+ ,
)FF, -
{GG 
varHH 
modificationHH  
=HH! "
s_ModsToProcessHH# 2
[HH2 3
s_ModsToProcessHH3 B
.HHB C
CountHHC H
-HHI J
$numHHK L
]HHL M
;HHM N
s_ModsToProcessII 
.II  
RemoveAtII  (
(II( )
s_ModsToProcessII) 8
.II8 9
CountII9 >
-II? @
$numIIA B
)IIB C
;IIC D
varLL 

modifiedGOLL 
=LL  )
GetGameObjectFromModificationLL! >
(LL> ?
modificationLL? K
)LLK L
;LLL M
varMM 
trackMM 
=MM !
GetTrackForGameObjectMM 1
(MM1 2

modifiedGOMM2 <
,MM< =
stateMM> C
)MMC D
;MMD E
ifNN 
(NN 
trackNN 
!=NN 
nullNN !
)NN! "
{OO %
IsRecordingAnimationTrackPP -
=PP. /
truePP0 4
;PP4 5
doubleRR 
	startTimeRR $
=RR% &
$numRR' (
;RR( )
varSS 
clipSS 
=SS 
s_TrackRecorderSS .
.SS. /
PrepareTrackSS/ ;
(SS; <
trackSS< A
,SSA B
stateSSC H
,SSH I

modifiedGOSSJ T
,SST U
outSSV Y
	startTimeSSZ c
)SSc d
;SSd e
ifTT 
(TT 
clipTT 
==TT 
nullTT  $
)TT$ %
{UU 
s_ModsToProcessVV '
.VV' (
ReverseVV( /
(VV/ 0
)VV0 1
;VV1 2
returnWW 
s_ModsToProcessWW .
.WW. /
ToArrayWW/ 6
(WW6 7
)WW7 8
;WW8 9
}XX 

.YY! "
activeAnimationClipYY" 5
=YY6 7
clipYY8 <
;YY< =

.ZZ! " 
activeRootGameObjectZZ" 6
=ZZ7 8
stateZZ9 >
.ZZ> ?
GetSceneReferenceZZ? P
(ZZP Q
trackZZQ V
)ZZV W
;ZZW X

.[[! "
activeGameObject[[" 2
=[[3 4

modifiedGO[[5 ?
;[[? @

.\\! "
currentFrame\\" .
=\\/ 0
Mathf\\1 6
.\\6 7

RoundToInt\\7 A
(\\A B
(\\B C
float\\C H
)\\H I
	startTime\\I R
)\\R S
;\\S T

.^^! "
SetDirty^^" *
(^^* +
clip^^+ /
)^^/ 0
;^^0 1
var__ 
	toProcess__ !
=__" #&
GatherRelatedModifications__$ >
(__> ?
modification__? K
,__K L
s_ModsToProcess__M \
)__\ ]
;__] ^
varaa 
animatoraa  
=aa! "

.aa0 1 
activeRootGameObjectaa1 E
.aaE F
GetComponentaaF R
<aaR S
AnimatoraaS [
>aa[ \
(aa\ ]
)aa] ^
;aa^ _
varbb 
	animTrackbb !
=bb" #
trackbb$ )
asbb* ,
AnimationTrackbb- ;
;bb; <
UpdatePreviewModeff %
(ff% &
	toProcessff& /
,ff/ 0

modifiedGOff1 ;
)ff; <
;ff< =
AddTrackOffsetii "
(ii" #
	animTrackii# ,
,ii, -
	toProcessii. 7
,ii7 8
clipii9 =
,ii= >
animatorii? G
)iiG H
;iiH I

(ll! "
	animTrackll" +
,ll+ ,
	toProcessll- 6
,ll6 7
s_TrackRecorderll8 G
.llG H

recordClipllH R
,llR S
animatorllT \
)ll\ ]
;ll] ^
varoo 

=oo& '
animatoroo( 0
!=oo1 3
nulloo4 8
&&oo9 ;
modificationoo< H
.ooH I
currentValueooI U
!=ooV X
nullooY ]
&&oo^ `
modificationpp $
.pp$ %
currentValuepp% 1
.pp1 2
targetpp2 8
==pp9 ;

.ppI J 
activeRootGameObjectppJ ^
.pp^ _
	transformpp_ h
&&ppi k

HasOffsetsqq "
(qq" #
	animTrackqq# ,
,qq, -
s_TrackRecorderqq. =
.qq= >

recordClipqq> H
)qqH I
;qqI J
ifrr 
(rr 

)rr% &
{ss 
	toProcesstt !
=tt" #$
HandleEulerModificationstt$ <
(tt< =
	animTracktt= F
,ttF G
s_TrackRecorderttH W
.ttW X

recordClipttX b
,ttb c
clipttd h
,tth i

.ttw x
currentFrame	ttx �
*
tt� �
clip
tt� �
.
tt� �
	frameRate
tt� �
,
tt� �
	toProcess
tt� �
)
tt� �
;
tt� �

(uu% &
modificationuu& 2
,uu2 3
	animTrackuu4 =
,uu= >
s_TrackRecorderuu? N
.uuN O

recordClipuuO Y
,uuY Z
	toProcessuu[ d
)uud e
;uue f
}vv 
varxx 
	remainingxx !
=xx" #
AnimationRecordingxx$ 6
.xx6 7
Processxx7 >
(xx> ?

,xxL M
	toProcessxxN W
)xxW X
;xxX Y
ifyy 
(yy 
	remainingyy !
!=yy" $
nullyy% )
&&yy* ,
	remainingyy- 6
.yy6 7
Lengthyy7 =
!=yy> @
$numyyA B
)yyB C
{zz 
s_UnprocessedMods{{ )
.{{) *
AddRange{{* 2
({{2 3
	remaining{{3 <
){{< =
;{{= >
}|| 
if~~ 
(~~ 

)~~% &
{ 
ReapplyOffsets
�� &
(
��& '
modification
��' 3
,
��3 4
	animTrack
��5 >
,
��> ?
s_TrackRecorder
��@ O
.
��O P

recordClip
��P Z
,
��Z [
	toProcess
��\ e
)
��e f
;
��f g
}
�� 
s_TrackRecorder
�� #
.
��# $
FinializeTrack
��$ 2
(
��2 3
track
��3 8
,
��8 9
state
��: ?
)
��? @
;
��@ A'
IsRecordingAnimationTrack
�� -
=
��. /
false
��0 5
;
��5 6
}
�� 
else
�� 
{
�� 
s_UnprocessedMods
�� %
.
��% &
Add
��& )
(
��) *
modification
��* 6
)
��6 7
;
��7 8
}
�� 
}
�� 
s_TrackRecorder
�� 
.
�� 
FinalizeRecording
�� -
(
��- .
state
��. 3
)
��3 4
;
��4 5
return
�� 
s_UnprocessedMods
�� $
.
��$ %
ToArray
��% ,
(
��, -
)
��- .
;
��. /
}
�� 	
internal
�� 
static
�� 
bool
�� 

IsPosition
�� '
(
��' (&
UndoPropertyModification
��( @
modification
��A M
)
��M N
{
�� 	
if
�� 
(
�� 
modification
�� 
.
�� 
currentValue
�� )
!=
��* ,
null
��- 1
)
��1 2
return
�� 
modification
�� #
.
��# $
currentValue
��$ 0
.
��0 1
propertyPath
��1 =
.
��= >

StartsWith
��> H
(
��H I
kLocalPosition
��I W
)
��W X
;
��X Y
else
�� 
if
�� 
(
�� 
modification
�� !
.
��! "

��" /
!=
��0 2
null
��3 7
)
��7 8
return
�� 
modification
�� #
.
��# $

��$ 1
.
��1 2
propertyPath
��2 >
.
��> ?

StartsWith
��? I
(
��I J
kLocalPosition
��J X
)
��X Y
;
��Y Z
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� 

IsRotation
�� '
(
��' (&
UndoPropertyModification
��( @
modification
��A M
)
��M N
{
�� 	
if
�� 
(
�� 
modification
�� 
.
�� 
currentValue
�� )
!=
��* ,
null
��- 1
)
��1 2
return
�� 
modification
�� #
.
��# $
currentValue
��$ 0
.
��0 1
propertyPath
��1 =
.
��= >

StartsWith
��> H
(
��H I
kLocalRotation
��I W
)
��W X
||
��Y [
modification
��  
.
��  !
currentValue
��! -
.
��- .
propertyPath
��. :
.
��: ;

StartsWith
��; E
(
��E F
kLocalEulerHint
��F U
)
��U V
;
��V W
if
�� 
(
�� 
modification
�� 
.
�� 

�� *
!=
��+ -
null
��. 2
)
��2 3
return
�� 
modification
�� #
.
��# $

��$ 1
.
��1 2
propertyPath
��2 >
.
��> ?

StartsWith
��? I
(
��I J
kLocalRotation
��J X
)
��X Y
||
��Z \
modification
��  
.
��  !

��! .
.
��. /
propertyPath
��/ ;
.
��; <

StartsWith
��< F
(
��F G
kLocalEulerHint
��G V
)
��V W
;
��W X
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� "
IsPositionOrRotation
�� 1
(
��1 2&
UndoPropertyModification
��2 J
modification
��K W
)
��W X
{
�� 	
return
�� 

IsPosition
�� 
(
�� 
modification
�� *
)
��* +
||
��, .

IsRotation
��/ 9
(
��9 :
modification
��: F
)
��F G
;
��G H
}
�� 	
internal
�� 
static
�� 
void
�� 
UpdatePreviewMode
�� .
(
��. /&
UndoPropertyModification
��/ G
[
��G H
]
��H I
mods
��J N
,
��N O

GameObject
��P Z
go
��[ ]
)
��] ^
{
�� 	
if
�� 
(
�� 
mods
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
�� "
IsPositionOrRotation
�� 2
(
��2 3
x
��3 4
)
��4 5
&&
��6 8 
IsRootModification
��9 K
(
��K L
x
��L M
)
��M N
)
��N O
)
��O P
{
�� 
bool
�� 
hasPosition
��  
=
��! "
false
��# (
;
��( )
bool
�� 
hasRotation
��  
=
��! "
false
��# (
;
��( )
foreach
�� 
(
�� 
var
�� 
mod
��  
in
��! #
mods
��$ (
)
��( )
{
��  
EditorCurveBinding
�� &
binding
��' .
=
��/ 0
new
��1 4 
EditorCurveBinding
��5 G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
AnimationUtility
�� (
.
��( )6
(PropertyModificationToEditorCurveBinding
��) Q
(
��Q R
mod
��R U
.
��U V

��V c
,
��c d
go
��e g
,
��g h
out
��i l
binding
��m t
)
��t u
!=
��v x
null
��y }
)
��} ~
{
�� 
hasPosition
�� #
|=
��$ &

IsPosition
��' 1
(
��1 2
mod
��2 5
)
��5 6
;
��6 7
hasRotation
�� #
|=
��$ &

IsRotation
��' 1
(
��1 2
mod
��2 5
)
��5 6
;
��6 7

�� %
.
��% &%
AddPropertyModification
��& =
(
��= >
binding
��> E
,
��E F
mod
��G J
.
��J K

��K X
,
��X Y
true
��Z ^
)
��^ _
;
��_ `
}
�� 
}
�� 
var
�� 
driver
�� 
=
�� 
WindowState
�� (
.
��( )

��) 6
;
��6 7
if
�� 
(
�� 
driver
�� 
!=
�� 
null
�� "
&&
��# %

��& 3
.
��3 4
InAnimationMode
��4 C
(
��C D
driver
��D J
)
��J K
)
��K L
{
�� 
if
�� 
(
�� 
hasPosition
�� #
)
��# $
{
�� #
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalPosition
��U c
+
��d e
$str
��f j
)
��j k
;
��k l#
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalPosition
��U c
+
��d e
$str
��f j
)
��j k
;
��k l#
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalPosition
��U c
+
��d e
$str
��f j
)
��j k
;
��k l
}
�� 
else
�� 
if
�� 
(
�� 
hasRotation
�� (
)
��( )
{
�� #
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalRotation
��U c
+
��d e
$str
��f j
)
��j k
;
��k l#
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalRotation
��U c
+
��d e
$str
��f j
)
��j k
;
��k l#
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalRotation
��U c
+
��d e
$str
��f j
)
��j k
;
��k l#
DrivenPropertyManager
�� -
.
��- .
RegisterProperty
��. >
(
��> ?
driver
��? E
,
��E F
go
��G I
.
��I J
	transform
��J S
,
��S T
kLocalRotation
��U c
+
��d e
$str
��f j
)
��j k
;
��k l
}
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
bool
��  
IsRootModification
�� /
(
��/ 0&
UndoPropertyModification
��0 H
modification
��I U
)
��U V
{
�� 	
string
�� 
path
�� 
=
�� 
string
��  
.
��  !
Empty
��! &
;
��& '
if
�� 
(
�� 
modification
�� 
.
�� 
currentValue
�� )
!=
��* ,
null
��- 1
)
��1 2
path
�� 
=
�� 
modification
�� #
.
��# $
currentValue
��$ 0
.
��0 1
propertyPath
��1 =
;
��= >
else
�� 
if
�� 
(
�� 
modification
�� !
.
��! "

��" /
!=
��0 2
null
��3 7
)
��7 8
path
�� 
=
�� 
modification
�� #
.
��# $

��$ 1
.
��1 2
propertyPath
��2 >
;
��> ?
return
�� 
!
�� 
path
�� 
.
�� 
Contains
�� !
(
��! "
$char
��" %
)
��% &
&&
��' )
!
��* +
path
��+ /
.
��/ 0
Contains
��0 8
(
��8 9
$char
��9 =
)
��= >
;
��> ?
}
�� 	
internal
�� 
static
�� 
bool
�� '
ClipHasPositionOrRotation
�� 6
(
��6 7

��7 D
clip
��E I
)
��I J
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
clip
��  $
.
��$ %
empty
��% *
)
��* +
return
�� 
false
�� 
;
�� 
var
�� 
info
�� 
=
�� %
AnimationClipCurveCache
�� .
.
��. /
Instance
��/ 7
.
��7 8
GetCurveInfo
��8 D
(
��D E
clip
��E I
)
��I J
;
��J K
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
info
��  $
.
��$ %
bindings
��% -
.
��- .
Length
��. 4
;
��4 5
i
��6 7
++
��7 9
)
��9 :
{
�� 
bool
�� "
isPositionOrRotation
�� )
=
��* +
info
�� 
.
�� 
bindings
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
type
��% )
!=
��* ,
null
��- 1
&&
��2 4
typeof
�� 
(
�� 
	Transform
�� $
)
��$ %
.
��% &
IsAssignableFrom
��& 6
(
��6 7
info
��7 ;
.
��; <
bindings
��< D
[
��D E
i
��E F
]
��F G
.
��G H
type
��H L
)
��L M
&&
��N P
(
�� 
info
�� 
.
�� 
bindings
�� %
[
��% &
i
��& '
]
��' (
.
��( )
propertyName
��) 5
.
��5 6

StartsWith
��6 @
(
��@ A
kLocalPosition
��A O
)
��O P
||
��Q S
info
�� 
.
�� 
bindings
�� %
[
��% &
i
��& '
]
��' (
.
��( )
propertyName
��) 5
.
��5 6

StartsWith
��6 @
(
��@ A
kLocalRotation
��A O
)
��O P
||
��Q S
info
�� 
.
�� 
bindings
�� %
[
��% &
i
��& '
]
��' (
.
��( )
propertyName
��) 5
.
��5 6

StartsWith
��6 @
(
��@ A
$str
��A M
)
��M N
)
�� 
;
�� 
if
�� 
(
�� "
isPositionOrRotation
�� (
)
��( )
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
static
�� (
TimelineAnimationUtilities
�� 2
.
��2 3
RigidTransform
��3 A'
ComputeInitialClipOffsets
��B [
(
��[ \
AnimationTrack
��\ j
track
��k p
,
��p q'
UndoPropertyModification��r �
[��� �
]��� �
mods��� �
,��� �
Animator��� �
animator��� �
)��� �
{
�� 	
var
�� 
target
�� 
=
�� !
GetInitialTransform
�� ,
(
��, -
mods
��- 1
,
��1 2
animator
��3 ;
)
��; <
;
��< =
var
�� 
trackToClip
�� 
=
�� (
TimelineAnimationUtilities
�� 8
.
��8 9
RigidTransform
��9 G
.
��G H
identity
��H P
;
��P Q
if
�� 
(
�� 
track
�� 
.
�� 
trackOffset
�� !
==
��" $
TrackOffset
��% 0
.
��0 1#
ApplyTransformOffsets
��1 F
)
��F G
trackToClip
�� 
=
�� (
TimelineAnimationUtilities
�� 8
.
��8 9
RigidTransform
��9 G
.
��G H
Compose
��H O
(
��O P
track
��P U
.
��U V
position
��V ^
,
��^ _
track
��` e
.
��e f
rotation
��f n
)
��n o
;
��o p
else
�� 
if
�� 
(
�� 
track
�� 
.
�� 
trackOffset
�� &
==
��' )
TrackOffset
��* 5
.
��5 6
ApplySceneOffsets
��6 G
)
��G H
trackToClip
�� 
=
�� (
TimelineAnimationUtilities
�� 8
.
��8 9
RigidTransform
��9 G
.
��G H
Compose
��H O
(
��O P
track
��P U
.
��U V!
sceneOffsetPosition
��V i
,
��i j

Quaternion
��k u
.
��u v
Euler
��v {
(
��{ |
track��| �
.��� �#
sceneOffsetRotation��� �
)��� �
)��� �
;��� �
target
�� 
=
�� (
TimelineAnimationUtilities
�� /
.
��/ 0
RigidTransform
��0 >
.
��> ?
Mul
��? B
(
��B C(
TimelineAnimationUtilities
��C ]
.
��] ^
RigidTransform
��^ l
.
��l m
Inverse
��m t
(
��t u
trackToClip��u �
)��� �
,��� �
target��� �
)��� �
;��� �,
SetPreviousPositionAndRotation
�� *
(
��* +
mods
��+ /
,
��/ 0
animator
��1 9
,
��9 :
trackToClip
��; F
.
��F G
position
��G O
,
��O P
trackToClip
��Q \
.
��\ ]
rotation
��] e
)
��e f
;
��f g
return
�� 
target
�� 
;
�� 
}
�� 	
internal
�� 
static
�� (
TimelineAnimationUtilities
�� 2
.
��2 3
RigidTransform
��3 A!
GetInitialTransform
��B U
(
��U V&
UndoPropertyModification
��V n
[
��n o
]
��o p
mods
��q u
,
��u v
Animator
��w 
animator��� �
)��� �
{
�� 	
var
�� 
pos
�� 
=
�� 
Vector3
�� 
.
�� 
zero
�� "
;
��" #
var
�� 
rot
�� 
=
�� 

Quaternion
��  
.
��  !
identity
��! )
;
��) *
if
�� 
(
�� 
mods
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

�� %
.
��% &
target
��& ,
==
��- /
animator
��0 8
.
��8 9
	transform
��9 B
)
��B C
{
�� 
GetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4
ref
��5 8
pos
��9 <
,
��< =
ref
��> A
rot
��B E
)
��E F
;
��F G
}
�� 
else
�� 
{
�� 
pos
�� 
=
�� 
animator
�� 
.
�� 
	transform
�� (
.
��( )

��) 6
;
��6 7
rot
�� 
=
�� 
animator
�� 
.
�� 
	transform
�� (
.
��( )

��) 6
;
��6 7
}
�� 
return
�� (
TimelineAnimationUtilities
�� -
.
��- .
RigidTransform
��. <
.
��< =
Compose
��= D
(
��D E
pos
��E H
,
��H I
rot
��J M
)
��M N
;
��N O
}
�� 	
internal
�� 
static
�� 
void
�� ,
SetPreviousPositionAndRotation
�� ;
(
��; <&
UndoPropertyModification
��< T
[
��T U
]
��U V
mods
��W [
,
��[ \
Animator
��] e
animator
��f n
,
��n o
Vector3
��p w
pos
��x {
,
��{ |

Quaternion��} �
rot��� �
)��� �
{
�� 	
if
�� 
(
�� 
mods
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

�� %
.
��% &
target
��& ,
==
��- /
animator
��0 8
.
��8 9
	transform
��9 B
)
��B C
{
�� 
SetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4
pos
��5 8
,
��8 9
rot
��: =
)
��= >
;
��> ?
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
AddTrackOffset
�� +
(
��+ ,
AnimationTrack
��, :
track
��; @
,
��@ A&
UndoPropertyModification
��B Z
[
��Z [
]
��[ \
mods
��] a
,
��a b

��c p
clip
��q u
,
��u v
Animator
��w 
animator��� �
)��� �
{
�� 	
var
�� 
copyTrackOffset
�� 
=
��  !
!
��" #
track
��# (
.
��( )

inClipMode
��) 3
&&
��4 6
!
�� '
ClipHasPositionOrRotation
�� *
(
��* +
clip
��+ /
)
��/ 0
&&
��1 3
mods
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
�� "
IsPositionOrRotation
�� 2
(
��2 3
x
��3 4
)
��4 5
&&
��6 8 
IsRootModification
��9 K
(
��K L
x
��L M
)
��M N
)
��N O
&&
��P R
animator
�� 
!=
�� 
null
��  
;
��  !
if
�� 
(
�� 
copyTrackOffset
�� 
)
��  
{
�� 
if
�� 
(
�� 
track
�� 
.
�� 
trackOffset
�� %
==
��& (
TrackOffset
��) 4
.
��4 5
ApplySceneOffsets
��5 F
)
��F G
{
�� 
var
�� 
rigidTransform
�� &
=
��' (!
GetInitialTransform
��) <
(
��< =
mods
��= A
,
��A B
animator
��C K
)
��K L
;
��L M
track
�� 
.
�� !
sceneOffsetPosition
�� -
=
��. /
rigidTransform
��0 >
.
��> ?
position
��? G
;
��G H
track
�� 
.
�� !
sceneOffsetRotation
�� -
=
��. /
rigidTransform
��0 >
.
��> ?
rotation
��? G
.
��G H
eulerAngles
��H S
;
��S T,
SetPreviousPositionAndRotation
�� 2
(
��2 3
mods
��3 7
,
��7 8
animator
��9 A
,
��A B
rigidTransform
��C Q
.
��Q R
position
��R Z
,
��Z [
rigidTransform
��\ j
.
��j k
rotation
��k s
)
��s t
;
��t u
}
�� 
else
�� 
{
�� 
var
�� 
rigidTransform
�� &
=
��' ('
ComputeInitialClipOffsets
��) B
(
��B C
track
��C H
,
��H I
mods
��J N
,
��N O
animator
��P X
)
��X Y
;
��Y Z
track
�� 
.
�� (
infiniteClipOffsetPosition
�� 4
=
��5 6
rigidTransform
��7 E
.
��E F
position
��F N
;
��N O
track
�� 
.
�� +
infiniteClipOffsetEulerAngles
�� 7
=
��8 9
rigidTransform
��: H
.
��H I
rotation
��I Q
.
��Q R
eulerAngles
��R ]
;
��] ^
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 

�� *
(
��* +
AnimationTrack
��+ 9
track
��: ?
,
��? @&
UndoPropertyModification
��A Y
[
��Y Z
]
��Z [
mods
��\ `
,
��` a
TimelineClip
��b n
clip
��o s
,
��s t
Animator
��u }
animator��~ �
)��� �
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
clip
��  $
.
��$ %
asset
��% *
==
��+ -
null
��. 2
)
��2 3
return
�� 
;
�� 
var
�� 
	clipAsset
�� 
=
�� 
clip
��  
.
��  !
asset
��! &
as
��' )$
AnimationPlayableAsset
��* @
;
��@ A
var
�� 
copyClipOffset
�� 
=
��  
track
��! &
.
��& '

inClipMode
��' 1
&&
��2 4
	clipAsset
�� 
!=
�� 
null
�� !
&&
��" $
!
��% &'
ClipHasPositionOrRotation
��& ?
(
��? @
	clipAsset
��@ I
.
��I J
clip
��J N
)
��N O
&&
��P R
mods
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
�� "
IsPositionOrRotation
�� 2
(
��2 3
x
��3 4
)
��4 5
&&
��6 8 
IsRootModification
��9 K
(
��K L
x
��L M
)
��M N
)
��N O
&&
��P R
animator
�� 
!=
�� 
null
��  
;
��  !
if
�� 
(
�� 
copyClipOffset
�� 
)
�� 
{
�� 
var
�� 
rigidTransform
�� "
=
��# $'
ComputeInitialClipOffsets
��% >
(
��> ?
track
��? D
,
��D E
mods
��F J
,
��J K
animator
��L T
)
��T U
;
��U V
	clipAsset
�� 
.
�� 
position
�� "
=
��# $
rigidTransform
��% 3
.
��3 4
position
��4 <
;
��< =
	clipAsset
�� 
.
�� 
rotation
�� "
=
��# $
rigidTransform
��% 3
.
��3 4
rotation
��4 <
;
��< =
}
�� 
}
�� 	
internal
�� 
static
�� (
TimelineAnimationUtilities
�� 2
.
��2 3
RigidTransform
��3 A
GetLocalToTrack
��B Q
(
��Q R
AnimationTrack
��R `
track
��a f
,
��f g
TimelineClip
��h t
clip
��u y
)
��y z
{
�� 	
if
�� 
(
�� 
track
�� 
==
�� 
null
�� 
)
�� 
return
�� (
TimelineAnimationUtilities
�� 1
.
��1 2
RigidTransform
��2 @
.
��@ A
Compose
��A H
(
��H I
Vector3
��I P
.
��P Q
zero
��Q U
,
��U V

Quaternion
��W a
.
��a b
identity
��b j
)
��j k
;
��k l
var
�� 
trackPos
�� 
=
�� 
track
��  
.
��  !
position
��! )
;
��) *
var
�� 
trackRot
�� 
=
�� 
track
��  
.
��  !
rotation
��! )
;
��) *
if
�� 
(
�� 
track
�� 
.
�� 
trackOffset
�� !
==
��" $
TrackOffset
��% 0
.
��0 1
ApplySceneOffsets
��1 B
)
��B C
{
�� 
trackPos
�� 
=
�� 
track
��  
.
��  !!
sceneOffsetPosition
��! 4
;
��4 5
trackRot
�� 
=
�� 

Quaternion
�� %
.
��% &
Euler
��& +
(
��+ ,
track
��, 1
.
��1 2!
sceneOffsetRotation
��2 E
)
��E F
;
��F G
}
�� 
var
�� 
clipWrapper
�� 
=
�� 
clip
�� "
==
��# %
null
��& *
?
��+ ,
null
��- 1
:
��2 3
clip
��4 8
.
��8 9
asset
��9 >
as
��? A$
AnimationPlayableAsset
��B X
;
��X Y
var
�� 

�� 
=
�� (
TimelineAnimationUtilities
��  :
.
��: ;
RigidTransform
��; I
.
��I J
Compose
��J Q
(
��Q R
Vector3
��R Y
.
��Y Z
zero
��Z ^
,
��^ _

Quaternion
��` j
.
��j k
identity
��k s
)
��s t
;
��t u
if
�� 
(
�� 
clipWrapper
�� 
!=
�� 
null
�� #
)
��# $
{
�� 

�� 
=
�� (
TimelineAnimationUtilities
��  :
.
��: ;
RigidTransform
��; I
.
��I J
Compose
��J Q
(
��Q R
clipWrapper
��R ]
.
��] ^
position
��^ f
,
��f g
clipWrapper
��h s
.
��s t
rotation
��t |
)
��| }
;
��} ~
}
�� 
else
�� 
{
�� 

�� 
=
�� (
TimelineAnimationUtilities
��  :
.
��: ;
RigidTransform
��; I
.
��I J
Compose
��J Q
(
��Q R
track
��R W
.
��W X(
infiniteClipOffsetPosition
��X r
,
��r s
track
��t y
.
��y z)
infiniteClipOffsetRotation��z �
)��� �
;��� �
}
�� 
var
�� 
trackTransform
�� 
=
��  (
TimelineAnimationUtilities
��! ;
.
��; <
RigidTransform
��< J
.
��J K
Compose
��K R
(
��R S
trackPos
��S [
,
��[ \
trackRot
��] e
)
��e f
;
��f g
return
�� (
TimelineAnimationUtilities
�� -
.
��- .
RigidTransform
��. <
.
��< =
Mul
��= @
(
��@ A
trackTransform
��A O
,
��O P

��Q ^
)
��^ _
;
��_ `
}
�� 	
internal
�� 
static
�� 
bool
�� 

HasOffsets
�� '
(
��' (
AnimationTrack
��( 6
track
��7 <
,
��< =
TimelineClip
��> J
clip
��K O
)
��O P
{
�� 	
if
�� 
(
�� 
track
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
bool
�� 
hasClipOffsets
�� 
=
��  !
false
��" '
;
��' (
bool
�� 
hasTrackOffsets
��  
=
��! "
false
��# (
;
��( )
var
�� 
clipWrapper
�� 
=
�� 
clip
�� "
==
��# %
null
��& *
?
��+ ,
null
��- 1
:
��2 3
clip
��4 8
.
��8 9
asset
��9 >
as
��? A$
AnimationPlayableAsset
��B X
;
��X Y
if
�� 
(
�� 
clipWrapper
�� 
!=
�� 
null
�� #
)
��# $
hasClipOffsets
�� 
|=
�� !
clipWrapper
��" -
.
��- .
position
��. 6
!=
��7 9
Vector3
��: A
.
��A B
zero
��B F
||
��G I
clipWrapper
��J U
.
��U V
rotation
��V ^
!=
��_ a

Quaternion
��b l
.
��l m
identity
��m u
;
��u v
if
�� 
(
�� 
track
�� 
.
�� 
trackOffset
�� !
==
��" $
TrackOffset
��% 0
.
��0 1
ApplySceneOffsets
��1 B
)
��B C
{
�� 
hasTrackOffsets
�� 
=
��  !
track
��" '
.
��' (!
sceneOffsetPosition
��( ;
!=
��< >
Vector3
��? F
.
��F G
zero
��G K
||
��L N
track
��O T
.
��T U!
sceneOffsetRotation
��U h
!=
��i k
Vector3
��l s
.
��s t
zero
��t x
;
��x y
}
�� 
else
�� 
{
�� 
hasTrackOffsets
�� 
=
��  !
(
��" #
track
��# (
.
��( )
position
��) 1
!=
��2 4
Vector3
��5 <
.
��< =
zero
��= A
||
��B D
track
��E J
.
��J K
rotation
��K S
!=
��T V

Quaternion
��W a
.
��a b
identity
��b j
)
��j k
;
��k l
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 

inClipMode
�� %
)
��% &
hasClipOffsets
�� "
|=
��# %
track
��& +
.
��+ ,(
infiniteClipOffsetPosition
��, F
!=
��G I
Vector3
��J Q
.
��Q R
zero
��R V
||
��W Y
track
��Z _
.
��_ `(
infiniteClipOffsetRotation
��` z
!=
��{ }

Quaternion��~ �
.��� �
identity��� �
;��� �
}
�� 
return
�� 
hasTrackOffsets
�� "
||
��# %
hasClipOffsets
��& 4
;
��4 5
}
�� 	
internal
�� 
static
�� 
void
�� 

�� *
(
��* +&
UndoPropertyModification
��+ C
modification
��D P
,
��P Q
AnimationTrack
��R `
track
��a f
,
��f g
TimelineClip
��h t
clip
��u y
,
��y z'
UndoPropertyModification��{ �
[��� �
]��� �
mods��� �
)��� �
{
�� 	
if
�� 
(
�� "
IsPositionOrRotation
�� $
(
��$ %
modification
��% 1
)
��1 2
)
��2 3
{
�� 
var
�� 

modifiedGO
�� 
=
��  +
GetGameObjectFromModification
��! >
(
��> ?
modification
��? K
)
��K L
;
��L M
var
�� 
target
�� 
=
�� (
TimelineAnimationUtilities
�� 7
.
��7 8
RigidTransform
��8 F
.
��F G
Compose
��G N
(
��N O

modifiedGO
��O Y
.
��Y Z
	transform
��Z c
.
��c d

��d q
,
��q r

modifiedGO
��s }
.
��} ~
	transform��~ �
.��� �

)��� �
;��� �
var
�� 
localToTrack
��  
=
��! "
GetLocalToTrack
��# 2
(
��2 3
track
��3 8
,
��8 9
clip
��: >
)
��> ?
;
��? @
var
�� 
trackToLocal
��  
=
��! "(
TimelineAnimationUtilities
��# =
.
��= >
RigidTransform
��> L
.
��L M
Inverse
��M T
(
��T U
localToTrack
��U a
)
��a b
;
��b c
var
�� 

localSpace
�� 
=
��  (
TimelineAnimationUtilities
��! ;
.
��; <
RigidTransform
��< J
.
��J K
Mul
��K N
(
��N O
trackToLocal
��O [
,
��[ \
target
��] c
)
��c d
;
��d e
var
�� 
prevPos
�� 
=
�� 

modifiedGO
�� (
.
��( )
	transform
��) 2
.
��2 3

��3 @
;
��@ A
var
�� 
prevRot
�� 
=
�� 

modifiedGO
�� (
.
��( )
	transform
��) 2
.
��2 3

��3 @
;
��@ A,
GetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4
ref
��5 8
prevPos
��9 @
,
��@ A
ref
��B E
prevRot
��F M
)
��M N
;
��N O
var
�� $
previousRigidTransform
�� *
=
��+ ,(
TimelineAnimationUtilities
��- G
.
��G H
RigidTransform
��H V
.
��V W
Mul
��W Z
(
��Z [
trackToLocal
��[ g
,
��g h)
TimelineAnimationUtilities��i �
.��� �
RigidTransform��� �
.��� �
Compose��� �
(��� �
prevPos��� �
,��� �
prevRot��� �
)��� �
)��� �
;��� �,
SetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4$
previousRigidTransform
��5 K
.
��K L
position
��L T
,
��T U$
previousRigidTransform
��V l
.
��l m
rotation
��m u
)
��u v
;
��v w
var
�� 

currentPos
�� 
=
��  

modifiedGO
��! +
.
��+ ,
	transform
��, 5
.
��5 6

��6 C
;
��C D
var
�� 

currentRot
�� 
=
��  

modifiedGO
��! +
.
��+ ,
	transform
��, 5
.
��5 6

��6 C
;
��C D+
GetCurrentPositionAndRotation
�� -
(
��- .
mods
��. 2
,
��2 3
ref
��4 7

currentPos
��8 B
,
��B C
ref
��D G

currentRot
��H R
)
��R S
;
��S T
var
�� #
currentRigidTransform
�� )
=
��* +(
TimelineAnimationUtilities
��, F
.
��F G
RigidTransform
��G U
.
��U V
Mul
��V Y
(
��Y Z
trackToLocal
��Z f
,
��f g)
TimelineAnimationUtilities��h �
.��� �
RigidTransform��� �
.��� �
Compose��� �
(��� �

currentPos��� �
,��� �

currentRot��� �
)��� �
)��� �
;��� �+
SetCurrentPositionAndRotation
�� -
(
��- .
mods
��. 2
,
��2 3#
currentRigidTransform
��4 I
.
��I J
position
��J R
,
��R S#
currentRigidTransform
��T i
.
��i j
rotation
��j r
)
��r s
;
��s t

modifiedGO
�� 
.
�� 
	transform
�� $
.
��$ %

��% 2
=
��3 4

localSpace
��5 ?
.
��? @
position
��@ H
;
��H I

modifiedGO
�� 
.
�� 
	transform
�� $
.
��$ %

��% 2
=
��3 4

localSpace
��5 ?
.
��? @
rotation
��@ H
;
��H I
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
ReapplyOffsets
�� +
(
��+ ,&
UndoPropertyModification
��, D
modification
��E Q
,
��Q R
AnimationTrack
��S a
track
��b g
,
��g h
TimelineClip
��i u
clip
��v z
,
��z {'
UndoPropertyModification��| �
[��� �
]��� �
mods��� �
)��� �
{
�� 	
if
�� 
(
�� "
IsPositionOrRotation
�� $
(
��$ %
modification
��% 1
)
��1 2
)
��2 3
{
�� 
var
�� 

modifiedGO
�� 
=
��  +
GetGameObjectFromModification
��! >
(
��> ?
modification
��? K
)
��K L
;
��L M
var
�� 
target
�� 
=
�� (
TimelineAnimationUtilities
�� 7
.
��7 8
RigidTransform
��8 F
.
��F G
Compose
��G N
(
��N O

modifiedGO
��O Y
.
��Y Z
	transform
��Z c
.
��c d

��d q
,
��q r

modifiedGO
��s }
.
��} ~
	transform��~ �
.��� �

)��� �
;��� �
var
�� 
localToTrack
��  
=
��! "
GetLocalToTrack
��# 2
(
��2 3
track
��3 8
,
��8 9
clip
��: >
)
��> ?
;
��? @
var
�� 

trackSpace
�� 
=
��  (
TimelineAnimationUtilities
��! ;
.
��; <
RigidTransform
��< J
.
��J K
Mul
��K N
(
��N O
localToTrack
��O [
,
��[ \
target
��] c
)
��c d
;
��d e
var
�� 
prevPos
�� 
=
�� 

modifiedGO
�� (
.
��( )
	transform
��) 2
.
��2 3

��3 @
;
��@ A
var
�� 
prevRot
�� 
=
�� 

modifiedGO
�� (
.
��( )
	transform
��) 2
.
��2 3

��3 @
;
��@ A,
GetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4
ref
��5 8
prevPos
��9 @
,
��@ A
ref
��B E
prevRot
��F M
)
��M N
;
��N O
var
�� $
previousRigidTransform
�� *
=
��+ ,(
TimelineAnimationUtilities
��- G
.
��G H
RigidTransform
��H V
.
��V W
Mul
��W Z
(
��Z [
localToTrack
��[ g
,
��g h)
TimelineAnimationUtilities��i �
.��� �
RigidTransform��� �
.��� �
Compose��� �
(��� �
prevPos��� �
,��� �
prevRot��� �
)��� �
)��� �
;��� �,
SetPreviousPositionAndRotation
�� .
(
��. /
mods
��/ 3
,
��3 4$
previousRigidTransform
��5 K
.
��K L
position
��L T
,
��T U$
previousRigidTransform
��V l
.
��l m
rotation
��m u
)
��u v
;
��v w
var
�� 

currentPos
�� 
=
��  

modifiedGO
��! +
.
��+ ,
	transform
��, 5
.
��5 6

��6 C
;
��C D
var
�� 

currentRot
�� 
=
��  

modifiedGO
��! +
.
��+ ,
	transform
��, 5
.
��5 6

��6 C
;
��C D+
GetCurrentPositionAndRotation
�� -
(
��- .
mods
��. 2
,
��2 3
ref
��4 7

currentPos
��8 B
,
��B C
ref
��D G

currentRot
��H R
)
��R S
;
��S T
var
�� #
currentRigidTransform
�� )
=
��* +(
TimelineAnimationUtilities
��, F
.
��F G
RigidTransform
��G U
.
��U V
Mul
��V Y
(
��Y Z
localToTrack
��Z f
,
��f g)
TimelineAnimationUtilities��h �
.��� �
RigidTransform��� �
.��� �
Compose��� �
(��� �

currentPos��� �
,��� �

currentRot��� �
)��� �
)��� �
;��� �+
SetCurrentPositionAndRotation
�� -
(
��- .
mods
��. 2
,
��2 3#
currentRigidTransform
��4 I
.
��I J
position
��J R
,
��R S#
currentRigidTransform
��T i
.
��i j
rotation
��j r
)
��r s
;
��s t

modifiedGO
�� 
.
�� 
	transform
�� $
.
��$ %

��% 2
=
��3 4

trackSpace
��5 ?
.
��? @
position
��@ H
;
��H I

modifiedGO
�� 
.
�� 
	transform
�� $
.
��$ %

��% 2
=
��3 4

trackSpace
��5 ?
.
��? @
rotation
��@ H
;
��H I
}
�� 
}
�� 	
static
�� &
UndoPropertyModification
�� '
[
��' (
]
��( )(
GatherRelatedModifications
��* D
(
��D E&
UndoPropertyModification
��E ]
toMatch
��^ e
,
��e f
List
��g k
<
��k l'
UndoPropertyModification��l �
>��� �
list��� �
)��� �
{
�� 	
var
�� 
matching
�� 
=
�� 
new
�� 
List
�� #
<
��# $&
UndoPropertyModification
��$ <
>
��< =
{
��> ?
toMatch
��? F
}
��F G
;
��G H
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
list
�� 
.
�� 
Count
�� #
-
��$ %
$num
��& '
;
��' (
i
��) *
>=
��+ -
$num
��. /
;
��/ 0
i
��1 2
--
��2 4
)
��4 5
{
�� 
var
�� 
undo
�� 
=
�� 
list
�� 
[
��  
i
��  !
]
��! "
;
��" #
if
�� 
(
�� 
undo
�� 
.
�� 

�� &
.
��& '
target
��' -
==
��. 0
toMatch
��1 8
.
��8 9

��9 F
.
��F G
target
��G M
&&
��N P#
DoesPropertyPathMatch
�� )
(
��) *
undo
��* .
.
��. /

��/ <
.
��< =
propertyPath
��= I
,
��I J
toMatch
��K R
.
��R S

��S `
.
��` a
propertyPath
��a m
)
��m n
)
��n o
{
�� 
matching
�� 
.
�� 
Add
��  
(
��  !
undo
��! %
)
��% &
;
��& '
list
�� 
.
�� 
RemoveAt
�� !
(
��! "
i
��" #
)
��# $
;
��$ %
}
�� 
}
�� 
return
�� 
matching
�� 
.
�� 
ToArray
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
static
�� 

GameObject
�� +
GetGameObjectFromModification
�� 7
(
��7 8&
UndoPropertyModification
��8 P
mod
��Q T
)
��T U
{
�� 	

GameObject
�� 

modifiedGO
�� !
=
��" #
null
��$ (
;
��( )
if
�� 
(
�� 
mod
�� 
.
�� 

�� !
.
��! "
target
��" (
is
��) +

GameObject
��, 6
)
��6 7

modifiedGO
�� 
=
�� 
mod
��  
.
��  !

��! .
.
��. /
target
��/ 5
as
��6 8

GameObject
��9 C
;
��C D
else
�� 
if
�� 
(
�� 
mod
�� 
.
�� 

�� &
.
��& '
target
��' -
is
��. 0
	Component
��1 :
)
��: ;

modifiedGO
�� 
=
�� 
(
�� 
mod
�� !
.
��! "

��" /
.
��/ 0
target
��0 6
as
��7 9
	Component
��: C
)
��C D
.
��D E

gameObject
��E O
;
��O P
return
�� 

modifiedGO
�� 
;
�� 
}
�� 	
static
�� 
int
�� 

��  
(
��  !

GameObject
��! +
parent
��, 2
,
��2 3

GameObject
��4 >
child
��? D
)
��D E
{
�� 	
var
�� 
level
�� 
=
�� 
$num
�� 
;
�� 
while
�� 
(
�� 
child
�� 
!=
�� 
null
��  
)
��  !
{
�� 
if
�� 
(
�� 
parent
�� 
==
�� 
child
�� #
)
��# $
break
�� 
;
�� 
if
�� 
(
�� 
child
�� 
.
�� 
	transform
�� #
.
��# $
parent
��$ *
==
��+ -
null
��. 2
)
��2 3
return
�� 
-
�� 
$num
�� 
;
�� 
child
�� 
=
�� 
child
�� 
.
�� 
	transform
�� '
.
��' (
parent
��( .
.
��. /

gameObject
��/ 9
;
��9 :
level
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
child
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
level
�� 
;
�� 
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 	
static
�� 
bool
�� 
IsRotationCurve
�� #
(
��# $
string
��$ *
propertyName
��+ 7
)
��7 8
{
�� 	
string
�� 
	groupName
�� 
=
�� $
AnimationWindowUtility
�� 5
.
��5 6"
GetPropertyGroupName
��6 J
(
��J K
propertyName
��K W
)
��W X
;
��X Y
return
�� 
	groupName
�� 
==
�� 
kLocalRotation
��  .
||
��/ 1
	groupName
��2 ;
==
��< >
kLocalEulerHint
��? N
;
��N O
}
�� 	
public
�� 
static
�� 
bool
�� #
DoesPropertyPathMatch
�� 0
(
��0 1
string
��1 7
a
��8 9
,
��9 :
string
��; A
b
��B C
)
��C D
{
�� 	
return
�� $
AnimationWindowUtility
�� )
.
��) *"
GetPropertyGroupName
��* >
(
��> ?
a
��? @
)
��@ A
.
��A B
Equals
��B H
(
��H I$
AnimationWindowUtility
��I _
.
��_ `"
GetPropertyGroupName
��` t
(
��t u
b
��u v
)
��v w
)
��w x
||
��y {
IsRotationCurve��| �
(��� �
a��� �
)��� �
&&��� �
IsRotationCurve��� �
(��� �
b��� �
)��� �
;��� �
}
�� 	
internal
�� 
static
�� 
void
�� ,
GetPreviousPositionAndRotation
�� ;
(
��; <&
UndoPropertyModification
��< T
[
��T U
]
��U V
mods
��W [
,
��[ \
ref
��] `
Vector3
��a h
position
��i q
,
��q r
ref
��s v

Quaternion��w �
rotation��� �
)��� �
{
�� 	
var
�� 
t
�� 
=
�� 
mods
�� 
[
�� 
$num
�� 
]
�� 
.
�� 

�� )
.
��) *
target
��* 0
as
��1 3
	Transform
��4 =
;
��= >
if
�� 
(
�� 
t
�� 
==
�� 
null
�� 
)
�� 
t
�� 
=
�� 
(
�� 
	Transform
�� 
)
�� 
mods
�� #
[
��# $
$num
��$ %
]
��% &
.
��& '
currentValue
��' 3
.
��3 4
target
��4 :
;
��: ;
position
�� 
=
�� 
t
�� 
.
�� 

�� &
;
��& '
rotation
�� 
=
�� 
t
�� 
.
�� 

�� &
;
��& '
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 
mods
��  $
)
��$ %
{
�� 
switch
�� 
(
�� 
mod
�� 
.
�� 

�� )
.
��) *
propertyPath
��* 6
)
��6 7
{
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
x
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
position
��I Q
.
��Q R
x
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
y
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
position
��I Q
.
��Q R
y
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
z
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
position
��I Q
.
��Q R
z
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
x
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
rotation
��I Q
.
��Q R
x
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
y
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
rotation
��I Q
.
��Q R
y
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
z
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
rotation
��I Q
.
��Q R
z
��R S
)
��S T
;
��T U
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
w
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4

��4 A
.
��A B
value
��B G
,
��G H
rotation
��I Q
.
��Q R
w
��R S
)
��S T
;
��T U
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� +
GetCurrentPositionAndRotation
�� :
(
��: ;&
UndoPropertyModification
��; S
[
��S T
]
��T U
mods
��V Z
,
��Z [
ref
��\ _
Vector3
��` g
position
��h p
,
��p q
ref
��r u

Quaternion��v �
rotation��� �
)��� �
{
�� 	
var
�� 
t
�� 
=
�� 
(
�� 
	Transform
�� 
)
�� 
mods
�� #
[
��# $
$num
��$ %
]
��% &
.
��& '
currentValue
��' 3
.
��3 4
target
��4 :
;
��: ;
position
�� 
=
�� 
t
�� 
.
�� 

�� &
;
��& '
rotation
�� 
=
�� 
t
�� 
.
�� 

�� &
;
��& '
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 
mods
��  $
)
��$ %
{
�� 
switch
�� 
(
�� 
mod
�� 
.
�� 
currentValue
�� (
.
��( )
propertyPath
��) 5
)
��5 6
{
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
x
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
position
��H P
.
��P Q
x
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
y
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
position
��H P
.
��P Q
y
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
position
��  
.
��  !
z
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
position
��H P
.
��P Q
z
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
x
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
rotation
��H P
.
��P Q
x
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
y
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
rotation
��H P
.
��P Q
y
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
z
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
rotation
��H P
.
��P Q
z
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
rotation
��  
.
��  !
w
��! "
=
��# $

ParseFloat
��% /
(
��/ 0
mod
��0 3
.
��3 4
currentValue
��4 @
.
��@ A
value
��A F
,
��F G
rotation
��H P
.
��P Q
w
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� ,
SetPreviousPositionAndRotation
�� ;
(
��; <&
UndoPropertyModification
��< T
[
��T U
]
��U V
mods
��W [
,
��[ \
Vector3
��] d
pos
��e h
,
��h i

Quaternion
��j t
rot
��u x
)
��x y
{
�� 	
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 
mods
��  $
)
��$ %
{
�� 
switch
�� 
(
�� 
mod
�� 
.
�� 

�� )
.
��) *
propertyPath
��* 6
)
��6 7
{
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
pos
��2 5
.
��5 6
x
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
pos
��2 5
.
��5 6
y
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
pos
��2 5
.
��5 6
z
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
rot
��2 5
.
��5 6
x
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
rot
��2 5
.
��5 6
y
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
rot
��2 5
.
��5 6
z
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 

�� )
.
��) *
value
��* /
=
��0 1
rot
��2 5
.
��5 6
w
��6 7
.
��7 8
ToString
��8 @
(
��@ A
	EditorGUI
��A J
.
��J K%
kFloatFieldFormatString
��K b
)
��b c
;
��c d
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� +
SetCurrentPositionAndRotation
�� :
(
��: ;&
UndoPropertyModification
��; S
[
��S T
]
��T U
mods
��V Z
,
��Z [
Vector3
��\ c
pos
��d g
,
��g h

Quaternion
��i s
rot
��t w
)
��w x
{
�� 	
foreach
�� 
(
�� 
var
�� 
mod
�� 
in
�� 
mods
��  $
)
��$ %
{
�� 
switch
�� 
(
�� 
mod
�� 
.
�� 

�� )
.
��) *
propertyPath
��* 6
)
��6 7
{
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
pos
��1 4
.
��4 5
x
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
pos
��1 4
.
��4 5
y
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalPosition
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
pos
��1 4
.
��4 5
z
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
rot
��1 4
.
��4 5
x
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
rot
��1 4
.
��4 5
y
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
rot
��1 4
.
��4 5
z
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
case
�� 
kLocalRotation
�� '
+
��( )
$str
��* .
:
��. /
mod
�� 
.
�� 
currentValue
�� (
.
��( )
value
��) .
=
��/ 0
rot
��1 4
.
��4 5
w
��5 6
.
��6 7
ToString
��7 ?
(
��? @
	EditorGUI
��@ I
.
��I J%
kFloatFieldFormatString
��J a
)
��a b
;
��b c
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
static
�� 
float
�� 

ParseFloat
�� (
(
��( )
string
��) /
str
��0 3
,
��3 4
float
��5 :

defaultVal
��; E
)
��E F
{
�� 	
float
�� 
temp
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
float
�� 
.
�� 
TryParse
�� 
(
�� 
str
�� "
,
��" #
NumberStyles
��$ 0
.
��0 1
Float
��1 6
,
��6 7
CultureInfo
��8 C
.
��C D
InvariantCulture
��D T
.
��T U
NumberFormat
��U a
,
��a b
out
��c f
temp
��g k
)
��k l
)
��l m
return
�� 
temp
�� 
;
�� 
return
�� 

defaultVal
�� 
;
�� 
}
�� 	
internal
�� 
static
�� &
UndoPropertyModification
�� 0
[
��0 1
]
��1 2&
HandleEulerModifications
��3 K
(
��K L
AnimationTrack
��L Z
track
��[ `
,
��` a
TimelineClip
��b n
clip
��o s
,
��s t

animClip��� �
,��� �
float��� �
time��� �
,��� �(
UndoPropertyModification��� �
[��� �
]��� �
mods��� �
)��� �
{
�� 	
if
�� 
(
�� 
mods
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
��  
currentValue
��  ,
.
��, -
propertyPath
��- 9
.
��9 :

StartsWith
��: D
(
��D E
kLocalEulerHint
��E T
)
��T U
||
��V X
x
��Y Z
.
��Z [
currentValue
��[ g
.
��g h
propertyPath
��h t
.
��t u

StartsWith
��u 
(�� �
kLocalRotation��� �
)��� �
)��� �
)��� �
{
�� 
var
�� 
localToTrack
��  
=
��! "
GetLocalToTrack
��# 2
(
��2 3
track
��3 8
,
��8 9
clip
��: >
)
��> ?
;
��? @
if
�� 
(
�� 
localToTrack
��  
.
��  !
rotation
��! )
!=
��* ,

Quaternion
��- 7
.
��7 8
identity
��8 @
)
��@ A
{
�� 
if
�� 
(
��  
s_LastTrackWarning
�� *
!=
��+ -
track
��. 3
)
��3 4
{
��  
s_LastTrackWarning
�� *
=
��+ ,
track
��- 2
;
��2 3
Debug
�� 
.
�� 

LogWarning
�� (
(
��( )
kRotationWarning
��) 9
)
��9 :
;
��: ;
}
�� 
	Transform
�� 
	transform
�� '
=
��( )
mods
��* .
[
��. /
$num
��/ 0
]
��0 1
.
��1 2
currentValue
��2 >
.
��> ?
target
��? E
as
��F H
	Transform
��I R
;
��R S
if
�� 
(
�� 
	transform
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
var
�� 
trackToLocal
�� (
=
��) *(
TimelineAnimationUtilities
��+ E
.
��E F
RigidTransform
��F T
.
��T U
Inverse
��U \
(
��\ ]
localToTrack
��] i
)
��i j
;
��j k
var
�� 
quatMods
�� $
=
��% &
mods
��' +
.
��+ ,
Where
��, 1
(
��1 2
x
��2 3
=>
��4 6
!
��7 8
x
��8 9
.
��9 :
currentValue
��: F
.
��F G
propertyPath
��G S
.
��S T

StartsWith
��T ^
(
��^ _
kLocalEulerHint
��_ n
)
��n o
)
��o p
;
��p q
var
�� 
	eulerMods
�� %
=
��& '
FindBestEulerHint
��( 9
(
��9 :
trackToLocal
��: F
.
��F G
rotation
��G O
*
��P Q
	transform
��R [
.
��[ \

��\ i
,
��i j
animClip
��k s
,
��s t
time
��u y
,
��y z
	transform��{ �
)��� �
;��� �
return
�� 
quatMods
�� '
.
��' (
Union
��( -
(
��- .
	eulerMods
��. 7
)
��7 8
.
��8 9
ToArray
��9 @
(
��@ A
)
��A B
;
��B C
}
�� 
return
�� 
mods
�� 
.
��  
Where
��  %
(
��% &
x
��& '
=>
��( *
!
��+ ,
x
��, -
.
��- .
currentValue
��. :
.
��: ;
propertyPath
��; G
.
��G H

StartsWith
��H R
(
��R S
kLocalEulerHint
��S b
)
��b c
)
��c d
.
��d e
ToArray
��e l
(
��l m
)
��m n
;
��n o
}
�� 
}
�� 
return
�� 
mods
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
IEnumerable
�� #
<
��# $&
UndoPropertyModification
��$ <
>
��< =
FindBestEulerHint
��> O
(
��O P

Quaternion
��P Z
rotation
��[ c
,
��c d

��e r
clip
��s w
,
��w x
float
��y ~
time�� �
,��� �
	Transform��� �
	transform��� �
)��� �
{
�� 	
Vector3
�� 
euler
�� 
=
�� 
rotation
�� $
.
��$ %
eulerAngles
��% 0
;
��0 1
var
�� 
xCurve
�� 
=
�� 
AnimationUtility
�� )
.
��) *
GetEditorCurve
��* 8
(
��8 9
clip
��9 =
,
��= > 
EditorCurveBinding
��? Q
.
��Q R

FloatCurve
��R \
(
��\ ]
string
��] c
.
��c d
Empty
��d i
,
��i j
typeof
��k q
(
��q r
	Transform
��r {
)
��{ |
,
��| }
$str��~ �
)��� �
)��� �
;��� �
var
�� 
yCurve
�� 
=
�� 
AnimationUtility
�� )
.
��) *
GetEditorCurve
��* 8
(
��8 9
clip
��9 =
,
��= > 
EditorCurveBinding
��? Q
.
��Q R

FloatCurve
��R \
(
��\ ]
string
��] c
.
��c d
Empty
��d i
,
��i j
typeof
��k q
(
��q r
	Transform
��r {
)
��{ |
,
��| }
$str��~ �
)��� �
)��� �
;��� �
var
�� 
zCurve
�� 
=
�� 
AnimationUtility
�� )
.
��) *
GetEditorCurve
��* 8
(
��8 9
clip
��9 =
,
��= > 
EditorCurveBinding
��? Q
.
��Q R

FloatCurve
��R \
(
��\ ]
string
��] c
.
��c d
Empty
��d i
,
��i j
typeof
��k q
(
��q r
	Transform
��r {
)
��{ |
,
��| }
$str��~ �
)��� �
)��� �
;��� �
if
�� 
(
�� 
xCurve
�� 
!=
�� 
null
�� 
)
�� 
euler
�� 
.
�� 
x
�� 
=
�� 
xCurve
��  
.
��  !
Evaluate
��! )
(
��) *
time
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
yCurve
�� 
!=
�� 
null
�� 
)
�� 
euler
�� 
.
�� 
y
�� 
=
�� 
yCurve
��  
.
��  !
Evaluate
��! )
(
��) *
time
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
zCurve
�� 
!=
�� 
null
�� 
)
�� 
euler
�� 
.
�� 
z
�� 
=
�� 
zCurve
��  
.
��  !
Evaluate
��! )
(
��) *
time
��* .
)
��. /
;
��/ 0
euler
�� 
=
�� /
!QuaternionCurveTangentCalculation
�� 5
.
��5 6$
GetEulerFromQuaternion
��6 L
(
��L M
rotation
��M U
,
��U V
euler
��W \
)
��\ ]
;
��] ^
return
�� 
new
�� 
[
�� 
]
�� 
{
�� 
.PropertyModificationToUndoPropertyModification
�� >
(
��> ?
new
��? B"
PropertyModification
��C W
{
��X Y
target
��Y _
=
��` a
	transform
��b k
,
��k l
propertyPath
��m y
=
��z {
kLocalEulerHint��| �
+��� �
$str��� �
,��� �
value��� �
=��� �
euler��� �
.��� �
x��� �
.��� �
ToString��� �
(��� �
)��� �
}��� �
)��� �
,��� �<
.PropertyModificationToUndoPropertyModification
�� >
(
��> ?
new
��? B"
PropertyModification
��C W
{
��X Y
target
��Y _
=
��` a
	transform
��b k
,
��k l
propertyPath
��m y
=
��z {
kLocalEulerHint��| �
+��� �
$str��� �
,��� �
value��� �
=��� �
euler��� �
.��� �
y��� �
.��� �
ToString��� �
(��� �
)��� �
}��� �
)��� �
,��� �<
.PropertyModificationToUndoPropertyModification
�� >
(
��> ?
new
��? B"
PropertyModification
��C W
{
��X Y
target
��Y _
=
��` a
	transform
��b k
,
��k l
propertyPath
��m y
=
��z {
kLocalEulerHint��| �
+��� �
$str��� �
,��� �
value��� �
=��� �
euler��� �
.��� �
z��� �
.��� �
ToString��� �
(��� �
)��� �
}��� �
)��� �
}
�� 
;
��
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\Drawers\TrackDrawer.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	
TrackDrawer
 
: 
	GUIDrawer !
{ 
internal 
WindowState 
sequencerState +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
static 
TrackDrawer !
CreateInstance" 0
(0 1

TrackAsset1 ;

trackAsset< F
)F G
{ 	
if
(

trackAsset
==
null
)
return 
	Activator  
.  !
CreateInstance! /
</ 0
TrackDrawer0 ;
>; <
(< =
)= >
;> ?
TrackDrawer 
drawer 
; 
try 
{ 
drawer 
= 
( 
TrackDrawer %
)% &
	Activator& /
./ 0
CreateInstance0 >
(> ?
TimelineHelpers? N
.N O
GetCustomDrawerO ^
(^ _

trackAsset_ i
.i j
GetTypej q
(q r
)r s
)s t
)t u
;u v
} 
catch 
( 
	Exception 
) 
{ 
drawer 
= 
	Activator "
." #
CreateInstance# 1
<1 2
TrackDrawer2 =
>= >
(> ?
)? @
;@ A
} 
drawer 
. 
track 
= 

trackAsset %
;% &
return 
drawer 
; 
} 	
	protected 

TrackAsset 
track "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public!! 
virtual!! 
bool!! &
HasCustomTrackHeaderButton!! 6
(!!6 7
)!!7 8
{"" 	
return## 
false## 
;## 
}$$ 	
public&& 
virtual&& 
void&& !
DrawTrackHeaderButton&& 1
(&&1 2
Rect&&2 6
rect&&7 ;
,&&; <
WindowState&&= H
state&&I N
)&&N O
{&&P Q
}&&Q R
public(( 
virtual(( 
bool(( 
	DrawTrack(( %
(((% &
Rect((& *
	trackRect((+ 4
,((4 5

TrackAsset((6 @

trackAsset((A K
,((K L
Vector2((M T
visibleTime((U `
,((` a
WindowState((b m
state((n s
)((s t
{)) 	
return** 
false** 
;** 
}++ 	
public-- 
virtual-- 
void-- #
DrawRecordingBackground-- 3
(--3 4
Rect--4 8
	trackRect--9 B
,--B C

TrackAsset--D N

trackAsset--O Y
,--Y Z
Vector2--[ b
visibleTime--c n
,--n o
WindowState--p {
state	--| �
)
--� �
{.. 	
	EditorGUI// 
.// 
DrawRect// 
(// 
	trackRect// (
,//( )
DirectorStyles//* 8
.//8 9
Instance//9 A
.//A B

customSkin//B L
.//L M)
colorTrackBackgroundRecording//M j
)//j k
;//k l
}00 	
}11 
}22 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\Snapping\SnapEngine.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
enum		 
ManipulateEdges			 
{

 
Left 
, 
Right 
,
Both
} 
class 	

SnapEngine
 
{ 
static 
readonly 
float %
k_MagnetInfluenceInPixels 7
=8 9
$num: ?
;? @
class 
SnapInfo 
{ 	
public 
double 
time 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
showSnapHint $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
IsInInfluenceZone )
() *
double* 0
currentTime1 <
,< =
WindowState> I
stateJ O
)O P
{ 
var 
pos 
= 
state 
.  
TimeToPixel  +
(+ ,
currentTime, 7
)7 8
;8 9
var 
	magnetPos 
= 
state  %
.% &
TimeToPixel& 1
(1 2
time2 6
)6 7
;7 8
return 
Math 
. 
Abs 
(  
pos  #
-$ %
	magnetPos& /
)/ 0
<1 2%
k_MagnetInfluenceInPixels3 L
;L M
}   
}!! 	
struct## 
TimeBoundaries## 
{$$ 	
public%% 
TimeBoundaries%% !
(%%! "
double%%" (
l%%) *
,%%* +
double%%, 2
r%%3 4
)%%4 5
{&& 
left'' 
='' 
l'' 
;'' 
right(( 
=(( 
r(( 
;(( 
})) 
public++ 
readonly++ 
double++ "
left++# '
;++' (
public,, 
readonly,, 
double,, "
right,,# (
;,,( )
public.. 
TimeBoundaries.. !
	Translate.." +
(..+ ,
double.., 2
d..3 4
)..4 5
{// 
return00 
new00 
TimeBoundaries00 )
(00) *
left00* .
+00/ 0
d001 2
,002 3
right004 9
+00: ;
d00< =
)00= >
;00> ?
}11 
}22 	
public44 
static44 
bool44 
displayDebugLayout44 -
;44- .
readonly66 
IAttractable66 

;66+ ,
readonly77 
IAttractionHandler77 #
m_AttractionHandler77$ 7
;777 8
readonly88 
ManipulateEdges88  
m_ManipulateEdges88! 2
;882 3
readonly:: 
WindowState:: 
m_State:: $
;::$ %
double<< 

;<< 
TimeBoundaries== 
m_GrabbedTimes== %
;==% &
TimeBoundaries?? 
m_CurrentTimes?? %
;??% &
readonlyAA 
ListAA 
<AA 
SnapInfoAA 
>AA 
	m_MagnetsAA  )
=AA* +
newAA, /
ListAA0 4
<AA4 5
SnapInfoAA5 =
>AA= >
(AA> ?
)AA? @
;AA@ A
boolCC 

;CC 
publicEE 

SnapEngineEE 
(EE 
IAttractableEE &
attractableEE' 2
,EE2 3
IAttractionHandlerEE4 F
attractionHandlerEEG X
,EEX Y
ManipulateEdgesEEZ i
manipulateEdgesEEj y
,EEy z
WindowState	EE{ �
state
EE� �
,
EE� �
Vector2FF !

,FF/ 0
IEnumerableFF1 <
<FF< =

ISnappableFF= G
>FFG H

snappablesFFI S
=FFT U
nullFFV Z
)FFZ [
{GG 	

=HH 
attractableHH '
;HH' (
m_ManipulateEdgesII 
=II 
manipulateEdgesII  /
;II/ 0
m_AttractionHandlerKK 
=KK  !
attractionHandlerKK" 3
;KK3 4
m_StateLL 
=LL 
stateLL 
;LL 
m_CurrentTimesNN 
=NN 
m_GrabbedTimesNN +
=NN, -
newNN. 1
TimeBoundariesNN2 @
(NN@ A

.NNN O
startNNO T
,NNT U

.NNc d
endNNd g
)NNg h
;NNh i

=OO 
m_StateOO #
.OO# $
PixelToTimeOO$ /
(OO/ 0

.OO= >
xOO> ?
)OO? @
;OO@ A
	AddMagnetRR 
(RR 
$numRR 
,RR 
trueRR 
,RR  
stateRR! &
)RR& '
;RR' (
ifVV 
(VV 
TimelineWindowVV 
.VV 
instanceVV '
.VV' (
currentModeVV( 3
.VV3 4 
ShouldShowTimeCursorVV4 H
(VVH I
m_StateVVI P
)VVP Q
)VVQ R
	AddMagnetWW 
(WW 
stateWW 
.WW  
editSequenceWW  ,
.WW, -
timeWW- 1
,WW1 2
trueWW3 7
,WW7 8
stateWW9 >
)WW> ?
;WW? @
ifYY 
(YY 
stateYY 
.YY !
IsEditingASubTimelineYY +
(YY+ ,
)YY, -
)YY- .
{ZZ 
var]] 
range]] 
=]] 
state]] !
.]]! "
editSequence]]" .
.]]. /
GetEvaluableRange]]/ @
(]]@ A
)]]A B
;]]B C
	AddMagnet^^ 
(^^ 
range^^ 
.^^  
start^^  %
,^^% &
true^^' +
,^^+ ,
state^^- 2
)^^2 3
;^^3 4
	AddMagnet__ 
(__ 
range__ 
.__  
end__  #
,__# $
true__% )
,__) *
state__+ 0
)__0 1
;__1 2
}`` 
elseaa 
ifaa 
(aa 
stateaa 
.aa 
masterSequenceaa )
.aa) *
assetaa* /
.aa/ 0
durationModeaa0 <
==aa= ?

.aaM N
DurationModeaaN Z
.aaZ [
FixedLengthaa[ f
)aaf g
{bb 
	AddMagnetdd 
(dd 
statedd 
.dd  
masterSequencedd  .
.dd. /
assetdd/ 4
.dd4 5
durationdd5 =
,dd= >
truedd? C
,ddC D
stateddE J
)ddJ K
;ddK L
}ee 
ifhh 
(hh 

snappableshh 
==hh 
nullhh "
)hh" #

snappablesii 
=ii  
GetVisibleSnappablesii 1
(ii1 2
m_Stateii2 9
)ii9 :
;ii: ;
foreachkk 
(kk 
varkk 
	snappablekk "
inkk# %

snappableskk& 0
)kk0 1
{ll 
ifmm 
(mm 
!mm 
attractablemm  
.mm  !
ShouldSnapTomm! -
(mm- .
	snappablemm. 7
)mm7 8
)mm8 9
continuenn 
;nn 
varpp 
edgespp 
=pp 
	snappablepp %
.pp% &
SnappableEdgesForpp& 7
(pp7 8
attractablepp8 C
,ppC D
manipulateEdgesppE T
)ppT U
;ppU V
foreachqq 
(qq 
varqq 
edgeqq !
inqq" $
edgesqq% *
)qq* +
	AddMagnetrr 
(rr 
edgerr "
.rr" #
timerr# '
,rr' (
edgerr) -
.rr- .
showSnapHintrr. :
,rr: ;
staterr< A
)rrA B
;rrB C
}ss 
}tt 	
publicvv 
staticvv 
IEnumerablevv !
<vv! "

ISnappablevv" ,
>vv, - 
GetVisibleSnappablesvv. B
(vvB C
WindowStatevvC N
statevvO T
)vvT U
{ww 	
Rectxx 
rectxx 
=xx 
TimelineWindowxx &
.xx& '
instancexx' /
.xx/ 0
statexx0 5
.xx5 6
timeAreaRectxx6 B
;xxB C
rectyy 
.yy 
heightyy 
=yy 
floatyy 
.yy  
MaxValueyy  (
;yy( )
returnzz 
statezz 
.zz 
spacePartitionerzz )
.zz) *
GetItemsInAreazz* 8
<zz8 9

ISnappablezz9 C
>zzC D
(zzD E
rectzzE I
)zzI J
.zzJ K
ToArrayzzK R
(zzR S
)zzS T
;zzT U
}{{ 	
void}} 
	AddMagnet}}
(}} 
double}} 

magnetTime}} (
,}}( )
bool}}* .
showSnapHint}}/ ;
,}}; <
WindowState}}= H
state}}I N
)}}N O
{~~ 	
var 
magnet 
= 
	m_Magnets "
." #
FirstOrDefault# 1
(1 2
m2 3
=>4 6
m7 8
.8 9
time9 =
.= >
Equals> D
(D E

magnetTimeE O
)O P
)P Q
;Q R
if
�� 
(
�� 
magnet
�� 
==
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� !
IsMagnetInShownArea
�� '
(
��' (

magnetTime
��( 2
,
��2 3
state
��4 9
)
��9 :
)
��: ;
	m_Magnets
�� 
.
�� 
Add
�� !
(
��! "
new
��" %
SnapInfo
��& .
{
��/ 0
time
��1 5
=
��6 7

magnetTime
��8 B
,
��B C
showSnapHint
��D P
=
��Q R
showSnapHint
��S _
}
��` a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 
magnet
�� 
.
�� 
showSnapHint
�� #
|=
��$ &
showSnapHint
��' 3
;
��3 4
}
�� 
}
�� 	
static
�� 
bool
�� !
IsMagnetInShownArea
�� '
(
��' (
double
��( .
time
��/ 3
,
��3 4
WindowState
��5 @
state
��A F
)
��F G
{
�� 	
var
�� 
	shownArea
�� 
=
�� 
state
�� !
.
��! " 
timeAreaShownRange
��" 4
;
��4 5
return
�� 
time
�� 
>=
�� 
	shownArea
�� $
.
��$ %
x
��% &
&&
��' )
time
��* .
<=
��/ 1
	shownArea
��2 ;
.
��; <
y
��< =
;
��= >
}
�� 	
SnapInfo
�� 
GetMagnetAt
�� 
(
�� 
double
�� #
time
��$ (
)
��( )
{
�� 	
return
�� 
	m_Magnets
�� 
.
�� 
FirstOrDefault
�� +
(
��+ ,
m
��, -
=>
��. 0
m
��1 2
.
��2 3
time
��3 7
.
��7 8
Equals
��8 >
(
��> ?
time
��? C
)
��C D
)
��D E
;
��E F
}
�� 	
SnapInfo
�� 

�� 
(
�� 
double
�� %
time
��& *
)
��* +
{
�� 	
SnapInfo
�� 
	candidate
�� 
=
��  
null
��! %
;
��% &
var
�� 
min
�� 
=
�� 
double
�� 
.
�� 
MaxValue
�� %
;
��% &
foreach
�� 
(
�� 
var
�� 

magnetInfo
�� #
in
��$ &
	m_Magnets
��' 0
)
��0 1
{
�� 
var
�� 
m
�� 
=
�� 
Math
�� 
.
�� 
Abs
��  
(
��  !

magnetInfo
��! +
.
��+ ,
time
��, 0
-
��1 2
time
��3 7
)
��7 8
;
��8 9
if
�� 
(
�� 
m
�� 
<
�� 
min
�� 
)
�� 
{
�� 
	candidate
�� 
=
�� 

magnetInfo
��  *
;
��* +
min
�� 
=
�� 
m
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
	candidate
�� 
!=
�� 
null
�� !
&&
��" $
	candidate
��% .
.
��. /
IsInInfluenceZone
��/ @
(
��@ A
time
��A E
,
��E F
m_State
��G N
)
��N O
)
��O P
return
�� 
	candidate
��  
;
��  !
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
Snap
�� 
(
�� 
Vector2
��  "
currentMousePosition
��! 5
,
��5 6
EventModifiers
��7 E
	modifiers
��F O
)
��O P
{
�� 	
var
�� 
d
�� 
=
�� 
m_State
�� 
.
�� 
PixelToTime
�� '
(
��' ("
currentMousePosition
��( <
.
��< =
x
��= >
)
��> ?
-
��@ A

��B O
;
��O P
m_CurrentTimes
�� 
=
�� 
m_GrabbedTimes
�� +
.
��+ ,
	Translate
��, 5
(
��5 6
d
��6 7
)
��7 8
;
��8 9
bool
�� 
isLeft
�� 
=
�� 
m_ManipulateEdges
�� +
==
��, .
ManipulateEdges
��/ >
.
��> ?
Left
��? C
||
��D F
m_ManipulateEdges
��G X
==
��Y [
ManipulateEdges
��\ k
.
��k l
Both
��l p
;
��p q
bool
�� 
isRight
�� 
=
�� 
m_ManipulateEdges
�� ,
==
��- /
ManipulateEdges
��0 ?
.
��? @
Right
��@ E
||
��F H
m_ManipulateEdges
��I Z
==
��[ ]
ManipulateEdges
��^ m
.
��m n
Both
��n r
;
��r s
bool
�� 
	attracted
�� 
=
�� 
false
�� "
;
��" #

�� 
=
�� 
	modifiers
�� %
==
��& (
ManipulatorsUtils
��) :
.
��: ;
actionModifier
��; I
?
��J K
!
��L M
m_State
��M T
.
��T U
	edgeSnaps
��U ^
:
��_ `
m_State
��a h
.
��h i
	edgeSnaps
��i r
;
��r s
if
�� 
(
�� 

�� 
)
�� 
{
�� 
SnapInfo
�� 
leftActiveMagnet
�� )
=
��* +
null
��, 0
;
��0 1
SnapInfo
�� 
rightActiveMagnet
�� *
=
��+ ,
null
��- 1
;
��1 2
if
�� 
(
�� 
isLeft
�� 
)
�� 
leftActiveMagnet
�� $
=
��% &

��' 4
(
��4 5
m_CurrentTimes
��5 C
.
��C D
left
��D H
)
��H I
;
��I J
if
�� 
(
�� 
isRight
�� 
)
�� 
rightActiveMagnet
�� %
=
��& '

��( 5
(
��5 6
m_CurrentTimes
��6 D
.
��D E
right
��E J
)
��J K
;
��K L
if
�� 
(
�� 
leftActiveMagnet
�� $
!=
��% '
null
��( ,
||
��- /
rightActiveMagnet
��0 A
!=
��B D
null
��E I
)
��I J
{
�� 
	attracted
�� 
=
�� 
true
��  $
;
��$ %
bool
�� 
leftAttraction
�� '
=
��( )
false
��* /
;
��/ 0
if
�� 
(
�� 
rightActiveMagnet
�� )
==
��* ,
null
��- 1
)
��1 2
{
�� 
leftAttraction
�� &
=
��' (
true
��) -
;
��- .
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
leftActiveMagnet
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
var
�� 
leftDistance
��  ,
=
��- .
Math
��/ 3
.
��3 4
Abs
��4 7
(
��7 8
leftActiveMagnet
��8 H
.
��H I
time
��I M
-
��N O
m_CurrentTimes
��P ^
.
��^ _
left
��_ c
)
��c d
;
��d e
var
�� 

��  -
=
��. /
Math
��0 4
.
��4 5
Abs
��5 8
(
��8 9
rightActiveMagnet
��9 J
.
��J K
time
��K O
-
��P Q
m_CurrentTimes
��R `
.
��` a
right
��a f
)
��f g
;
��g h
leftAttraction
�� *
=
��+ ,
leftDistance
��- 9
<=
��: <

��= J
;
��J K
}
�� 
}
�� 
if
�� 
(
�� 
leftAttraction
�� &
)
��& '
{
�� !
m_AttractionHandler
�� +
.
��+ ,
OnAttractedEdge
��, ;
(
��; <

��< I
,
��I J
m_ManipulateEdges
��K \
,
��\ ]

��^ k
.
��k l
Left
��l p
,
��p q
leftActiveMagnet��r �
.��� �
time��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� !
m_AttractionHandler
�� +
.
��+ ,
OnAttractedEdge
��, ;
(
��; <

��< I
,
��I J
m_ManipulateEdges
��K \
,
��\ ]

��^ k
.
��k l
Right
��l q
,
��q r 
rightActiveMagnet��s �
.��� �
time��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
	attracted
�� 
)
�� 
{
�� 
var
�� 
time
�� 
=
�� 
isLeft
�� !
?
��" #
m_CurrentTimes
��$ 2
.
��2 3
left
��3 7
:
��8 9
m_CurrentTimes
��: H
.
��H I
right
��I N
;
��N O
time
�� 
=
�� "
TimeReferenceUtility
�� +
.
��+ ,#
SnapToFrameIfRequired
��, A
(
��A B
time
��B F
)
��F G
;
��G H!
m_AttractionHandler
�� #
.
��# $
OnAttractedEdge
��$ 3
(
��3 4

��4 A
,
��A B
m_ManipulateEdges
��C T
,
��T U

��V c
.
��c d
None
��d h
,
��h i
time
��j n
)
��n o
;
��o p
}
�� 
}
�� 	
public
�� 
void
�� 
OnGUI
�� 
(
�� 
bool
�� 
showLeft
�� '
=
��( )
true
��* .
,
��. /
bool
��0 4
	showRight
��5 >
=
��? @
true
��A E
)
��E F
{
�� 	
if
�� 
(
��  
displayDebugLayout
�� "
)
��" #
{
�� 
foreach
�� 
(
�� 
var
�� 
m
�� 
in
�� !
	m_Magnets
��" +
)
��+ ,
{
�� 
var
�� 
window
�� 
=
��  
TimelineWindow
��! /
.
��/ 0
instance
��0 8
;
��8 9
var
�� 
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
m_State
��( /
.
��/ 0
TimeToPixel
��0 ;
(
��; <
m
��< =
.
��= >
time
��> B
)
��B C
-
��D E'
k_MagnetInfluenceInPixels
��F _
,
��_ `
window
��a g
.
��g h
state
��h m
.
��m n
timeAreaRect
��n z
.
��z {
yMax
��{ 
,�� �
$num��� �
*��� �)
k_MagnetInfluenceInPixels��� �
,��� �
m_State��� �
.��� �
windowHeight��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
DrawRect
�� &
(
��& '
rect
��' +
,
��+ ,
new
��- 0
Color
��1 6
(
��6 7
$num
��7 9
,
��9 :
$num
��; =
,
��= >
$num
��? A
,
��A B
$num
��C G
)
��G H
)
��H I
;
��I J
}
�� 
var
�� 
mousePos
�� 
=
�� 
Event
�� $
.
��$ %
current
��% ,
.
��, -

��- :
;
��: ;
var
�� 
time
�� 
=
�� 
m_State
�� "
.
��" #
PixelToTime
��# .
(
��. /
mousePos
��/ 7
.
��7 8
x
��8 9
)
��9 :
;
��: ;
var
�� 
p
�� 
=
�� 
new
�� 
Vector2
�� #
(
��# $
m_State
��$ +
.
��+ ,
TimeToPixel
��, 7
(
��7 8
time
��8 <
)
��< =
,
��= >
TimelineWindow
��? M
.
��M N
instance
��N V
.
��V W
state
��W \
.
��\ ]
timeAreaRect
��] i
.
��i j
yMax
��j n
)
��n o
;
��o p
var
�� 
s
�� 
=
�� 
new
�� 
Vector2
�� #
(
��# $
$num
��$ &
,
��& '
m_State
��( /
.
��/ 0
windowHeight
��0 <
)
��< =
;
��= >
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
new
��# &
Rect
��' +
(
��+ ,
p
��, -
,
��- .
s
��/ 0
)
��0 1
,
��1 2
Color
��3 8
.
��8 9
blue
��9 =
)
��= >
;
��> ?
p
�� 
=
�� 
new
�� 
Vector2
�� 
(
��  
m_State
��  '
.
��' (
TimeToPixel
��( 3
(
��3 4

��4 A
)
��A B
,
��B C
TimelineWindow
��D R
.
��R S
instance
��S [
.
��[ \
state
��\ a
.
��a b
timeAreaRect
��b n
.
��n o
yMax
��o s
)
��s t
;
��t u
s
�� 
=
�� 
new
�� 
Vector2
�� 
(
��  
$num
��  "
,
��" #
m_State
��$ +
.
��+ ,
windowHeight
��, 8
)
��8 9
;
��9 :
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
new
��# &
Rect
��' +
(
��+ ,
p
��, -
,
��- .
s
��/ 0
)
��0 1
,
��1 2
Color
��3 8
.
��8 9
red
��9 <
)
��< =
;
��= >
p
�� 
=
�� 
new
�� 
Vector2
�� 
(
��  
m_State
��  '
.
��' (
TimeToPixel
��( 3
(
��3 4
m_CurrentTimes
��4 B
.
��B C
left
��C G
)
��G H
,
��H I
TimelineWindow
��J X
.
��X Y
instance
��Y a
.
��a b
state
��b g
.
��g h
timeAreaRect
��h t
.
��t u
yMax
��u y
)
��y z
;
��z {
s
�� 
=
�� 
new
�� 
Vector2
�� 
(
��  
$num
��  "
,
��" #
m_State
��$ +
.
��+ ,
windowHeight
��, 8
)
��8 9
;
��9 :
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
new
��# &
Rect
��' +
(
��+ ,
p
��, -
,
��- .
s
��/ 0
)
��0 1
,
��1 2
Color
��3 8
.
��8 9
yellow
��9 ?
)
��? @
;
��@ A
p
�� 
=
�� 
new
�� 
Vector2
�� 
(
��  
m_State
��  '
.
��' (
TimeToPixel
��( 3
(
��3 4
m_CurrentTimes
��4 B
.
��B C
right
��C H
)
��H I
,
��I J
TimelineWindow
��K Y
.
��Y Z
instance
��Z b
.
��b c
state
��c h
.
��h i
timeAreaRect
��i u
.
��u v
yMax
��v z
)
��z {
;
��{ |
	EditorGUI
�� 
.
�� 
DrawRect
�� "
(
��" #
new
��# &
Rect
��' +
(
��+ ,
p
��, -
,
��- .
s
��/ 0
)
��0 1
,
��1 2
Color
��3 8
.
��8 9
yellow
��9 ?
)
��? @
;
��@ A
}
�� 
if
�� 
(
�� 

�� 
)
�� 
{
�� 
if
�� 
(
�� 
showLeft
�� 
)
�� 
DrawMagnetLineAt
�� $
(
��$ %

��% 2
.
��2 3
start
��3 8
)
��8 9
;
��9 :
if
�� 
(
�� 
	showRight
�� 
)
�� 
DrawMagnetLineAt
�� $
(
��$ %

��% 2
.
��2 3
end
��3 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
void
�� 
DrawMagnetLineAt
��
(
�� 
double
�� $
time
��% )
)
��) *
{
�� 	
var
�� 
magnet
�� 
=
�� 
GetMagnetAt
�� $
(
��$ %
time
��% )
)
��) *
;
��* +
if
�� 
(
�� 
magnet
�� 
!=
�� 
null
�� 
&&
�� !
magnet
��" (
.
��( )
showSnapHint
��) 5
)
��5 6
Graphics
�� 
.
�� 
DrawLineAtTime
�� '
(
��' (
m_State
��( /
,
��/ 0
magnet
��1 7
.
��7 8
time
��8 <
,
��< =
Color
��> C
.
��C D
white
��D I
)
��I J
;
��J K
}
�� 	
}
�� 
}�� �4
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_PlayableLookup.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
partial 
class 
TimelineWindow  
{		 
PlayableLookup

 
m_PlayableLookup

 '
=

( )
new

* -
PlayableLookup

. <
(

< =
)

= >
;

> ?
class 
PlayableLookup 
{
const 
int #
k_InitialDictionarySize -
=. /
$num0 2
;2 3
readonly 

Dictionary 
<  

,- .
Playable/ 7
>7 8%
m_AnimationClipToPlayable9 R
=S T
new 

Dictionary 
< 

,, -
Playable. 6
>6 7
(7 8#
k_InitialDictionarySize8 O
)O P
;P Q
readonly 

Dictionary 
<  

,- .
TimelineClip/ ;
>; <)
m_AnimationClipToTimelineClip= Z
=[ \
new 

Dictionary 
< 

,, -
TimelineClip. :
>: ;
(; <#
k_InitialDictionarySize< S
)S T
;T U
public 
void  
UpdatePlayableLookup ,
(, -
TimelineClip- 9
clip: >
,> ?

GameObject@ J
goK M
,M N
PlayableO W
pX Y
)Y Z
{ 
if 
( 
clip 
== 
null  
||! #
go$ &
==' )
null* .
||/ 1
!2 3
p3 4
.4 5
IsValid5 <
(< =
)= >
)> ?
return 
; 
if 
( 
clip 
. 
curves 
!=  "
null# '
)' ()
m_AnimationClipToTimelineClip 1
[1 2
clip2 6
.6 7
curves7 =
]= >
=? @
clipA E
;E F 
UpdatePlayableLookup $
($ %
clip% )
.) *
parentTrack* 5
.5 6

,C D
clipE I
,I J
goK M
,M N
pO P
)P Q
;Q R
} 
public   
void    
UpdatePlayableLookup   ,
(  , -

TrackAsset  - 7
track  8 =
,  = >

GameObject  ? I
go  J L
,  L M
Playable  N V
p  W X
)  X Y
{!! 
if"" 
("" 
track"" 
=="" 
null"" !
||""" $
go""% '
==""( *
null""+ /
||""0 2
!""3 4
p""4 5
.""5 6
IsValid""6 =
(""= >
)""> ?
)""? @
return## 
;##  
UpdatePlayableLookup%% $
(%%$ %
track%%% *
.%%* +

,%%8 9
track%%: ?
,%%? @
go%%A C
,%%C D
p%%E F
)%%F G
;%%G H
}&& 
void((  
UpdatePlayableLookup(( %
(((% &


,((A B
ICurvesOwner((C O
curvesOwner((P [
,(([ \

GameObject((] g
go((h j
,((j k
Playable((l t
p((u v
)((v w
{)) 
var** 
director** 
=** 
go** !
.**! "
GetComponent**" .
<**. /
PlayableDirector**/ ?
>**? @
(**@ A
)**A B
;**B C
var++ 
editingDirector++ #
=++$ %
instance++& .
.++. /
state++/ 4
.++4 5
editSequence++5 A
.++A B
director++B J
;++J K
if-- 
(-- 
curvesOwner-- 
.--  
curves--  &
!=--' )
null--* .
&&--/ 1
director--2 :
!=--; =
null--> B
&&--C E
director--F N
==--O Q
editingDirector--R a
&&--b d

==.." $
instance..% -
...- .
state... 3
...3 4
editSequence..4 @
...@ A
asset..A F
)..F G
{// %
m_AnimationClipToPlayable00 -
[00- .
curvesOwner00. 9
.009 :
curves00: @
]00@ A
=00B C
p00D E
;00E F
}11 
}22 
public44 
bool44 #
GetPlayableFromAnimClip44 /
(44/ 0

clip44> B
,44B C
out44D G
Playable44H P
p44Q R
)44R S
{55 
if66 
(66 
clip66 
==66 
null66  
)66  !
{77 
p88 
=88 
Playable88  
.88  !
Null88! %
;88% &
return99 
false99  
;99  !
}:: 
return<< %
m_AnimationClipToPlayable<< 0
.<<0 1
TryGetValue<<1 <
(<<< =
clip<<= A
,<<A B
out<<C F
p<<G H
)<<H I
;<<I J
}== 
public?? 
TimelineClip?? %
GetTimelineClipFromCurves??  9
(??9 :

clip??H L
)??L M
{@@ 
ifAA 
(AA 
clipAA 
==AA 
nullAA  
)AA  !
returnBB 
nullBB 
;BB  
TimelineClipDD 
timelineClipDD )
=DD* +
nullDD, 0
;DD0 1)
m_AnimationClipToTimelineClipEE -
.EE- .
TryGetValueEE. 9
(EE9 :
clipEE: >
,EE> ?
outEE@ C
timelineClipEED P
)EEP Q
;EEQ R
returnFF 
timelineClipFF #
;FF# $
}GG 
publicII 
voidII 
ClearPlayableLookupII +
(II+ ,
)II, -
{JJ 
m_AnimationClipToPlayableKK )
.KK) *
ClearKK* /
(KK/ 0
)KK0 1
;KK1 2
}LL 
}MM 	
}NN 
}OO �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Utilities\GUIViewportScope.cs
	namespace 	
UnityEditor
 
{ 
struct 

GUIViewportScope 
: 
IDisposable )
{ 
bool		 
m_open		
;		 
public

 
GUIViewportScope

 
(

  
Rect

  $
position

% -
)

- .
{ 	
m_open 
= 
false 
; 
if
(
Event
.
current
.
type
==
	EventType
.
Repaint
||
Event
.
current
.
type
==
	EventType
.
Layout
)
{ 
GUI 
. 
	BeginClip 
( 
position &
,& '
-( )
position) 1
.1 2
min2 5
,5 6
Vector27 >
.> ?
zero? C
,C D
falseE J
)J K
;K L
m_open 
= 
true 
; 
} 
} 	
public 
void 
Dispose 
( 
) 
{ 	

CloseScope 
( 
) 
; 
} 	
void 

CloseScope
( 
) 
{ 	
if 
( 
m_open 
) 
{ 
GUI 
. 
EndClip 
( 
) 
; 
m_open 
= 
false 
; 
} 
}   	
}!! 
}"" �0
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Window\TimelineWindow_ActiveTimeline.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
partial 
class 
TimelineWindow  
{ 
private		 

m_PreviousMasterSequence		 6
;		6 7
public 
void  
ClearCurrentTimeline (
(( )
)) *
{ 	
SetCurrentTimeline
(
null
,
null
,
null
,
true
)
;
} 	
public 
void 
SetCurrentTimeline &
(& '

seq5 8
)8 9
{ 	
SetCurrentTimeline 
( 
seq "
," #
null$ (
,( )
null* .
). /
;/ 0
} 	
public 
void 
SetCurrentTimeline &
(& '
PlayableDirector' 7
director8 @
,@ A
TimelineClipB N
hostClipO W
=X Y
nullZ ^
)^ _
{ 	
var 
asset 
= 
director  
!=! #
null$ (
?) *
director+ 3
.3 4

asB D

:S T
nullU Y
;Y Z
SetCurrentTimeline 
( 
asset $
,$ %
director& .
,. /
hostClip0 8
)8 9
;9 :
} 	
void 
SetCurrentTimeline
(  

seq. 1
,1 2
PlayableDirector3 C
instanceOfDirectorD V
,V W
TimelineClipX d
hostClipe m
,m n
boolo s
forcet y
=z {
false	| �
)
� �
{ 	
if 
( 
state 
== 
null 
) 
return 
; 
if   
(   
!   
force   
&&   
state!! 
.!! 
editSequence!! "
.!!" #
hostClip!!# +
==!!, .
hostClip!!/ 7
&&!!8 :
state"" 
."" 
editSequence"" "
.""" #
director""# +
=="", .
instanceOfDirector""/ A
&&""B D
state## 
.## 
editSequence## "
.##" #
asset### (
==##) +
seq##, /
)##/ 0
return$$ 
;$$ 
state&& 
.&& 
SetCurrentSequence&& $
(&&$ %
seq&&% (
,&&( )
instanceOfDirector&&* <
,&&< =
hostClip&&> F
)&&F G
;&&G H
}'' 	
void)) "
OnBeforeSequenceChange))
())# $
)))$ %
{** 	
treeView++ 
=++ 
null++ 
;++ 
m_MarkerHeaderGUI,, 
=,, 
null,,  $
;,,$ %
m_TimeAreaDirty-- 
=-- 
true-- "
;--" #
state// 
.// 
Reset// 
(// 
)// 
;// 
m_PlayableLookup00 
.00 
ClearPlayableLookup00 0
(000 1
)001 2
;002 3%
CustomTimelineEditorCache33 %
.33% &

ClearCache33& 0
<330 1

ClipEditor331 ;
>33; <
(33< =
)33= >
;33> ?%
CustomTimelineEditorCache44 %
.44% &

ClearCache44& 0
<440 1
MarkerEditor441 =
>44= >
(44> ?
)44? @
;44@ A%
CustomTimelineEditorCache55 %
.55% &

ClearCache55& 0
<550 1
TrackEditor551 <
>55< =
(55= >
)55> ?
;55? @$
m_PreviousMasterSequence77 $
=77% &
state77' ,
.77, -
masterSequence77- ;
.77; <
asset77< A
;77A B
}88 	
void:: !
OnAfterSequenceChange::
(::" #
)::# $
{;; 	
Repaint<< 
(<< 
)<< 
;<< 
m_SequencePath>> 
=>> 
state>> "
.>>" #"
GetCurrentSequencePath>># 9
(>>9 :
)>>: ;
;>>; <"
m_LastFrameHadSequence@@ "
=@@# $
state@@% *
.@@* +
editSequence@@+ 7
.@@7 8
asset@@8 =
!=@@> @
null@@A E
;@@E F#
TimelineWindowViewPrefsAA #
.AA# $
SaveAllAA$ +
(AA+ ,
)AA, -
;AA- .
objectFF "
previousMasterSequenceFF )
=FF* +$
m_PreviousMasterSequenceFF, D
;FFD E
boolGG 
	isDeletedGG 
=GG "
previousMasterSequenceGG 3
!=GG4 6
nullGG7 ;
&&GG< >$
m_PreviousMasterSequenceGG? W
==GGX Z
nullGG[ _
;GG_ `
boolHH 

hasChangedHH 
=HH $
m_PreviousMasterSequenceHH 6
!=HH7 9
nullHH: >
&&HH? A$
m_PreviousMasterSequenceHHB Z
!=HH[ ]
stateHH^ c
.HHc d
masterSequenceHHd r
.HHr s
assetHHs x
;HHx y
ifII 
(II 
	isDeletedII 
||II 

hasChangedII '
)II' (
{JJ 
AnimationClipCurveCacheKK '
.KK' (
InstanceKK( 0
.KK0 1
ClearKK1 6
(KK6 7
)KK7 8
;KK8 9&
TimelineAnimationUtilitiesLL *
.LL* +!
UnlinkAnimationWindowLL+ @
(LL@ A
)LLA B
;LLB C
}MM 
}NN 	
}OO 
}PP �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Attributes\TimelineShortcutAttribute.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Actions &
{ 
public

class
TimelineShortcutAttribute
:
ShortcutManagement
.
ShortcutAttribute
{ 
public %
TimelineShortcutAttribute (
(( )
string) /
id0 2
,2 3
KeyCode4 ;
defaultKeyCode< J
,J K
ShortcutModifiersL ]$
defaultShortcutModifiers^ v
=w x
ShortcutModifiers	y �
.
� �
None
� �
)
� �
: 
base 
( 
$str 
+  
id! #
,# $
typeof% +
(+ ,
TimelineWindow, :
): ;
,; <
defaultKeyCode= K
,K L$
defaultShortcutModifiersM e
)e f
{g h
}h i
} 
} �*
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\treeview\Drawers\Layers\ClipsLayer.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
class 	

ClipsLayer
 
: 

ItemsLayer !
<! "
TimelineClipGUI" 1
>1 2
{ 
static		 
readonly		 
GUIStyle		  
k_ConnectorIcon		! 0
=		1 2
DirectorStyles		3 A
.		A B
Instance		B J
.		J K
	connector		K T
;		T U
public 

ClipsLayer 
( 
Layer 

layerOrder  *
,* +
IRowGUI, 3
parent4 :
): ;
:< =
base> B
(B C

layerOrderC M
)M N
{ 	
var
track
=
parent
.
asset
;
track 
. 
	SortClips 
( 
) 
; 
TimelineClipGUI 
previousClipGUI +
=, -
null. 2
;2 3
foreach 
( 
var 
clip 
in  
track! &
.& '
clips' ,
), -
{ 
var 

oldClipGUI 
=  

.. /

(< =
clip= A
)A B
;B C
var 
	isInvalid 
= 

oldClipGUI  *
!=+ -
null. 2
&&3 5

oldClipGUI6 @
.@ A
	isInvalidA J
;J K
var 
currentClipGUI "
=# $
new% (
TimelineClipGUI) 8
(8 9
clip9 =
,= >
parent? E
,E F
thisG K
)K L
{M N
	isInvalidN W
=X Y
	isInvalidZ c
}c d
;d e
if 
( 
previousClipGUI #
!=$ &
null' +
)+ ,
previousClipGUI- <
.< =
nextClip= E
=F G
currentClipGUIH V
;V W
currentClipGUI 
. 
previousClip +
=, -
previousClipGUI. =
;= >
AddItem 
( 
currentClipGUI &
)& '
;' (
previousClipGUI 
=  !
currentClipGUI" 0
;0 1
} 
} 	
public 
override 
void 
Draw !
(! "
Rect" &
rect' +
,+ ,
WindowState- 8
state9 >
)> ?
{ 	
base   
.   
Draw   
(   
rect   
,   
state   !
)  ! "
;  " #

(!! 
items!! 
)!!  
;!!  !
}"" 	
static$$ 
void$$ 

($$! "
List$$" &
<$$& '
TimelineClipGUI$$' 6
>$$6 7
clips$$8 =
)$$= >
{%% 	
if&& 
(&& 
Event&& 
.&& 
current&& 
.&& 
type&& "
!=&&# %
	EventType&&& /
.&&/ 0
Repaint&&0 7
)&&7 8
return'' 
;'' 
foreach)) 
()) 
var)) 
clip)) 
in))  
clips))! &
)))& '
{** 
if++ 
(++ 
clip++ 
.++ 
previousClip++ %
!=++& (
null++) -
&&++. 0
clip++1 5
.++5 6
visible++6 =
&&++> @
clip++A E
.++E F
treeViewRect++F R
.++R S
width++S X
>++Y Z
$num++[ ]
&&++^ `
(,, 
DiscreteTime,, !
),,! "
clip,," &
.,,& '
start,,' ,
==,,- /
(,,0 1
DiscreteTime,,1 =
),,= >
clip,,> B
.,,B C
previousClip,,C O
.,,O P
end,,P S
),,S T
{-- 
var// 
	localRect// !
=//" #
clip//$ (
.//( )
treeViewRect//) 5
;//5 6
	localRect00 
.00 
x00 
-=00  "
Mathf00# (
.00( )
Floor00) .
(00. /
k_ConnectorIcon00/ >
.00> ?

fixedWidth00? I
/00J K
$num00L P
)00P Q
;00Q R
	localRect11 
.11 
width11 #
=11$ %
k_ConnectorIcon11& 5
.115 6

fixedWidth116 @
;11@ A
	localRect22 
.22 
height22 $
=22% &
k_ConnectorIcon22' 6
.226 7
fixedHeight227 B
;22B C
GUI33 
.33 
Label33 
(33 
	localRect33 '
,33' (

GUIContent33) 3
.333 4
none334 8
,338 9
k_ConnectorIcon33: I
)33I J
;33J K
}44 
}55 
}66 	
}77 
}88 �'
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Manipulators\TimeIndicator.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static 

class 

{ 
static 
readonly 
Tooltip 
	s_Tooltip  )
=* +
new, /
Tooltip0 7
(7 8
DirectorStyles8 F
.F G
InstanceG O
.O P
displayBackgroundP a
,a b
DirectorStylesc q
.q r
Instancer z
.z {
tinyFont	{ �
)
� �
;
� �
public		 
static		 
void		 
Draw		 
(		  
WindowState		  +
state		, 1
,		1 2
double		3 9
time		: >
)		> ?
{

 	
var 
bounds 
= 
state 
. 
timeAreaRect +
;+ ,
bounds 
. 
xMin 
= 
Mathf 
.  
Max  #
(# $
bounds$ *
.* +
xMin+ /
,/ 0
state1 6
.6 7
TimeToTimeAreaPixel7 J
(J K
timeK O
)O P
)P Q
;Q R
using 
( 
new 
GUIViewportScope '
(' (
state( -
.- .
timeAreaRect. :
): ;
); <
{ 
	s_Tooltip 
. 
text 
=   
TimeReferenceUtility! 5
.5 6
ToTimeString6 B
(B C
timeC G
)G H
;H I
var 

=" #
	s_Tooltip$ -
.- .
bounds. 4
;4 5

. 
xMin "
=# $
bounds% +
.+ ,
xMin, 0
-1 2
(3 4

.A B
widthB G
/H I
$numJ N
)N O
;O P

. 
y 
=  !
bounds" (
.( )
y) *
;* +
	s_Tooltip 
. 
bounds  
=! "

;0 1
if 
( 
time 
>= 
$num 
) 
	s_Tooltip 
. 
Draw "
(" #
)# $
;$ %
} 
if 
( 
time 
>= 
$num 
) 
{ 
Graphics 
. 
DrawLineAtTime '
(' (
state( -
,- .
time/ 3
,3 4
Color5 :
.: ;
black; @
,@ A
trueB F
)F G
;G H
} 
} 	
public!! 
static!! 
void!! 
Draw!! 
(!!  
WindowState!!  +
state!!, 1
,!!1 2
double!!3 9
start!!: ?
,!!? @
double!!A G
end!!H K
)!!K L
{"" 	
var## 
bounds## 
=## 
state## 
.## 
timeAreaRect## +
;##+ ,
bounds$$ 
.$$ 
xMin$$ 
=$$ 
Mathf$$ 
.$$  
Max$$  #
($$# $
bounds$$$ *
.$$* +
xMin$$+ /
,$$/ 0
state$$1 6
.$$6 7
TimeToTimeAreaPixel$$7 J
($$J K
start$$K P
)$$P Q
)$$Q R
;$$R S
bounds%% 
.%% 
xMax%% 
=%% 
Mathf%% 
.%%  
Min%%  #
(%%# $
bounds%%$ *
.%%* +
xMax%%+ /
,%%/ 0
state%%1 6
.%%6 7
TimeToTimeAreaPixel%%7 J
(%%J K
end%%K N
)%%N O
)%%O P
;%%P Q
var'' 
color'' 
='' 
DirectorStyles'' &
.''& '
Instance''' /
.''/ 0

.''= >
focused''> E
.''E F
	textColor''F O
;''O P
color(( 
.(( 
a(( 
=(( 
$num(( 
;(( 
	EditorGUI)) 
.)) 
DrawRect)) 
()) 
bounds)) %
,))% &
color))' ,
))), -
;))- .
Draw++ 
(++ 
state++ 
,++ 
start++ 
)++ 
;++ 
Draw,, 
(,, 
state,, 
,,, 
end,, 
),, 
;,, 
}-- 	
}.. 
}// ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Utilities\TimelineKeyboardNavigation.cs
	namespace 	
UnityEditor
 
. 
Timeline 
{ 
static		 

class		 
KeyboardNavigation		 #
{

 
public 
static 
void 
FrameTrackHeader +
(+ ,
TreeViewItem, 8
treeItem9 A
=B C
nullD H
)H I
{ 	
if
(
TrackHeadActive
(
)
)
treeItem 
= 
treeItem #
??$ &
SelectionManager' 7
.7 8
SelectedTrackGUI8 H
(H I
)I J
.J K
LastK O
(O P
)P Q
;Q R
else 
{ 
var 
item 
= #
GetVisibleSelectedItems 2
(2 3
)3 4
.4 5

(B C
)C D
;D E
treeItem 
= 
TimelineWindow )
.) *
instance* 2
.2 3
	allTracks3 <
.< =
FirstOrDefault= K
(K L
x 
=> 
item 
!=  
null! %
&&& (
x) *
.* +
track+ 0
==1 3
item4 8
.8 9
parentTrack9 D
)D E
;E F
} 
if 
( 
treeItem 
!= 
null  
)  !
TimelineWindow 
. 
instance '
.' (
treeView( 0
.0 1
	FrameItem1 :
(: ;
treeItem; C
)C D
;D E
} 	
public 
static 
bool 
TrackHeadActive *
(* +
)+ ,
{ 	
return 
SelectionManager #
.# $
SelectedTracks$ 2
(2 3
)3 4
.4 5
Any5 8
(8 9
x9 :
=>; =
x> ?
.? @
IsVisibleRecursive@ R
(R S
)S T
)T U
&&V X
!Y Z
ClipAreaActiveZ h
(h i
)i j
;j k
} 	
public 
static 
bool 
ClipAreaActive )
() *
)* +
{   	
return!! #
GetVisibleSelectedItems!! *
(!!* +
)!!+ ,
.!!, -
Any!!- 0
(!!0 1
)!!1 2
;!!2 3
}"" 	
public$$ 
static$$ 
IEnumerable$$ !
<$$! "

>$$/ 0#
GetVisibleSelectedItems$$1 H
($$H I
)$$I J
{%% 	
return&& 
SelectionManager&& #
.&&# $

(&&1 2
)&&2 3
.&&3 4
Where&&4 9
(&&9 :
x&&: ;
=>&&< >
x&&? @
.&&@ A
parentTrack&&A L
.&&L M
IsVisibleRecursive&&M _
(&&_ `
)&&` a
)&&a b
;&&b c
}'' 	
public)) 
static)) 
IEnumerable)) !
<))! " 
TimelineTrackBaseGUI))" 6
>))6 7
GetVisibleTracks))8 H
())H I
)))I J
{** 	
return++ 
TimelineWindow++ !
.++! "
instance++" *
.++* +
	allTracks+++ 4
.++4 5
Where++5 :
(++: ;
x++; <
=>++= ?
x++@ A
.++A B
track++B G
.++G H
IsVisibleRecursive++H Z
(++Z [
)++[ \
)++\ ]
;++] ^
},, 	
static.. 

TrackAsset.. 

(..' (
this..( ,

TrackAsset..- 7
track..8 =
)..= >
{// 	
var00 

=00 
GetVisibleTracks00  0
(000 1
)001 2
.002 3
Select003 9
(009 :
t00: ;
=>00< >
t00? @
.00@ A
track00A F
)00F G
.00G H
ToList00H N
(00N O
)00O P
;00P Q
var11 
selIdx11 
=11 

.11& '
IndexOf11' .
(11. /
track11/ 4
)114 5
;115 6
return22 
selIdx22 
>22 
$num22 
?22 

[22- .
selIdx22. 4
-225 6
$num227 8
]228 9
:22: ;
null22< @
;22@ A
}33 	
static55 

TrackAsset55 
	NextTrack55 #
(55# $
this55$ (

TrackAsset55) 3
track554 9
)559 :
{66 	
var77 

=77 
GetVisibleTracks77  0
(770 1
)771 2
.772 3
Select773 9
(779 :
t77: ;
=>77< >
t77? @
.77@ A
track77A F
)77F G
.77G H
ToList77H N
(77N O
)77O P
;77P Q
var88 
selIdx88 
=88 

.88& '
IndexOf88' .
(88. /
track88/ 4
)884 5
;885 6
return99 
selIdx99 
<99 

.99) *
Count99* /
-990 1
$num992 3
&&995 7
selIdx998 >
!=99? A
-99B C
$num99C D
?99E F

[99T U
selIdx99U [
+99\ ]
$num99^ _
]99_ `
:99a b
null99c g
;99g h
}:: 	
static<< 

PreviousItem<< )
(<<) *
this<<* .

item<<= A
,<<A B
bool<<C G
clipOnly<<H P
)<<P Q
{== 	
var>> 
items>> 
=>> 
item>> 
.>> 
parentTrack>> (
.>>( )
GetItems>>) 1
(>>1 2
)>>2 3
.>>3 4
ToArray>>4 ;
(>>; <
)>>< =
;>>= >
if?? 
(?? 
clipOnly?? 
)?? 
{@@ 
itemsAA 
=AA 
itemsAA 
.AA 
WhereAA #
(AA# $
xAA$ %
=>AA& (
xAA) *
isAA+ -
ClipItemAA. 6
)AA6 7
.AA7 8
ToArrayAA8 ?
(AA? @
)AA@ A
;AAA B
}BB 
elseCC 
{DD 
itemsEE 
=EE 
itemsEE 
.EE 
WhereEE $
(EE$ %
xEE% &
=>EE' )
xEE* +
isEE, .

MarkerItemEE/ 9
)EE9 :
.EE: ;
ToArrayEE; B
(EEB C
)EEC D
;EED E
}FF 
varHH 
idxHH 
=HH 
ArrayHH 
.HH 
IndexOfHH #
(HH# $
itemsHH$ )
,HH) *
itemHH+ /
)HH/ 0
;HH0 1
returnII 
idxII 
>II 
$numII 
?II 
itemsII "
[II" #
idxII# &
-II' (
$numII) *
]II* +
:II, -
nullII. 2
;II2 3
}JJ 	
staticLL 

NextItemLL %
(LL% &
thisLL& *

itemLL9 =
,LL= >
boolLL? C
clipOnlyLLD L
)LLL M
{MM 	
varNN 
itemsNN 
=NN 
itemNN 
.NN 
parentTrackNN (
.NN( )
GetItemsNN) 1
(NN1 2
)NN2 3
.NN3 4
ToArrayNN4 ;
(NN; <
)NN< =
;NN= >
ifOO 
(OO 
clipOnlyOO 
)OO 
{PP 
itemsQQ 
=QQ 
itemsQQ 
.QQ 
WhereQQ #
(QQ# $
xQQ$ %
=>QQ& (
xQQ) *
isQQ+ -
ClipItemQQ. 6
)QQ6 7
.QQ7 8
ToArrayQQ8 ?
(QQ? @
)QQ@ A
;QQA B
}RR 
elseSS 
{TT 
itemsUU 
=UU 
itemsUU 
.UU 
WhereUU $
(UU$ %
xUU% &
=>UU' )
xUU* +
isUU, .

MarkerItemUU/ 9
)UU9 :
.UU: ;
ToArrayUU; B
(UUB C
)UUC D
;UUD E
}VV 
varXX 
idxXX 
=XX 
ArrayXX 
.XX 
IndexOfXX #
(XX# $
itemsXX$ )
,XX) *
itemXX+ /
)XX/ 0
;XX0 1
returnYY 
idxYY 
<YY 
itemsYY 
.YY 
LengthYY %
-YY& '
$numYY( )
?YY* +
itemsYY, 1
[YY1 2
idxYY2 5
+YY6 7
$numYY8 9
]YY9 :
:YY; <
nullYY= A
;YYA B
}ZZ 	
static\\ 
bool\\ 
FilterItems\\ 
(\\  
ref\\  #
List\\$ (
<\\( )

>\\6 7
items\\8 =
)\\= >
{]] 	
var^^ 
clipOnly^^ 
=^^ 
false^^  
;^^  !
if__ 
(__ 
items__ 
.__ 
Any__ 
(__ 
x__ 
=>__ 
x__  
is__! #
ClipItem__$ ,
)__, -
)__- .
{`` 
itemsaa 
=aa 
itemsaa 
.aa 
Whereaa #
(aa# $
xaa$ %
=>aa& (
xaa) *
isaa+ -
ClipItemaa. 6
)aa6 7
.aa7 8
ToListaa8 >
(aa> ?
)aa? @
;aa@ A
clipOnlybb 
=bb 
truebb 
;bb  
}cc 
returnee 
clipOnlyee 
;ee 
}ff 	
statichh 

GetClosestItemhh +
(hh+ ,

TrackAssethh, 6
trackhh7 <
,hh< =

refItemhhL S
)hhS T
{ii 	
varjj 
startjj 
=jj 
refItemjj 
.jj  
startjj  %
;jj% &
varkk 
endkk 
=kk 
refItemkk 
.kk 
endkk !
;kk! "
varll 
itemsll 
=ll 
trackll 
.ll 
GetItemsll &
(ll& '
)ll' (
.ll( )
ToListll) /
(ll/ 0
)ll0 1
;ll1 2
ifnn 
(nn 
refItemnn 
isnn 
ClipItemnn #
)nn# $
{oo 
itemspp 
=pp 
itemspp 
.pp 
Wherepp #
(pp# $
xpp$ %
=>pp& (
xpp) *
ispp+ -
ClipItempp. 6
)pp6 7
.pp7 8
ToListpp8 >
(pp> ?
)pp? @
;pp@ A
}qq 
elserr 
{ss 
itemstt 
=tt 
itemstt 
.tt 
Wherett $
(tt$ %
xtt% &
=>tt' )
xtt* +
istt, .

MarkerItemtt/ 9
)tt9 :
.tt: ;
ToListtt; A
(ttA B
)ttB C
;ttC D
}uu 
ifww 
(ww 
!ww 
itemsww 
.ww 
Anyww 
(ww 
)ww 
)ww 
returnxx 
nullxx 
;xx 

retyy 
=yy 
nullyy  $
;yy$ %
varzz 
scoreToBeatzz 
=zz 
doublezz $
.zz$ %
NegativeInfinityzz% 5
;zz5 6
foreach|| 
(|| 
var|| 
item|| 
in||  
items||! &
)||& '
{}} 
var 
low 
= 
Math 
. 
Max "
(" #
item# '
.' (
start( -
,- .
start/ 4
)4 5
;5 6
var
�� 
high
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $
item
��$ (
.
��( )
end
��) ,
,
��, -
end
��. 1
)
��1 2
;
��2 3
if
�� 
(
�� 
low
�� 
<=
�� 
high
�� 
)
��  
{
�� 
var
�� 
score
�� 
=
�� 
high
��  $
-
��% &
low
��' *
;
��* +
if
�� 
(
�� 
score
�� 
>=
��  
scoreToBeat
��! ,
)
��, -
{
�� 
scoreToBeat
�� #
=
��$ %
score
��& +
;
��+ ,
ret
�� 
=
�� 
item
�� "
;
��" #
}
�� 
}
�� 
}
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� #
FocusFirstVisibleItem
�� 0
(
��0 1
IEnumerable
��1 <
<
��< =

TrackAsset
��= G
>
��G H
focusTracks
��I T
=
��U V
null
��W [
)
��[ \
{
�� 	
var
�� 
	timeRange
�� 
=
�� 
TimelineEditor
�� *
.
��* +
visibleTimeRange
��+ ;
;
��; <
var
�� 
tracks
�� 
=
�� 
focusTracks
�� $
??
��% '
TimelineWindow
��( 6
.
��6 7
instance
��7 ?
.
��? @
treeView
��@ H
.
��H I

��I V
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
��c d 
IsVisibleRecursive
��d v
(
��v w
)
��w x
&&
��y {
x
��| }
.
��} ~
GetItems��~ �
(��� �
)��� �
.��� �
Any��� �
(��� �
)��� �
)��� �
;��� �
var
�� 
items
�� 
=
�� 
tracks
�� 
.
�� 

SelectMany
�� )
(
��) *
t
��* +
=>
��, .
t
��/ 0
.
��0 1
GetItems
��1 9
(
��9 :
)
��: ;
.
��; <
OfType
��< B
<
��B C
ClipItem
��C K
>
��K L
(
��L M
)
��M N
.
��N O
Where
��O T
(
��T U
x
��U V
=>
��W Y
x
��Z [
.
��[ \
end
��\ _
>=
��` b
	timeRange
��c l
.
��l m
x
��m n
&&
��o q
x
��r s
.
��s t
end
��t w
<=
��x z
	timeRange��{ �
.��� �
y��� �
||��� �
x
�� 
.
�� 
start
�� 
>=
�� 
	timeRange
�� $
.
��$ %
x
��% &
&&
��' )
x
��* +
.
��+ ,
start
��, 1
<=
��2 4
	timeRange
��5 >
.
��> ?
y
��? @
)
��@ A
)
��A B
.
��B C
ToList
��C I
(
��I J
)
��J K
;
��K L
var
�� 
itemFullyInView
�� 
=
��  !
items
��" '
.
��' (
Where
��( -
(
��- .
x
��. /
=>
��0 2
x
��3 4
.
��4 5
end
��5 8
>=
��9 ;
	timeRange
��< E
.
��E F
x
��F G
&&
��H J
x
��K L
.
��L M
end
��M P
<=
��Q S
	timeRange
��T ]
.
��] ^
y
��^ _
&&
��` b
x
�� 
.
�� 
start
�� 
>=
�� 
	timeRange
�� $
.
��$ %
x
��% &
&&
��' )
x
��* +
.
��+ ,
start
��, 1
<=
��2 4
	timeRange
��5 >
.
��> ?
y
��? @
)
��@ A
;
��A B
var
�� 
itemToSelect
�� 
=
�� 
itemFullyInView
�� .
.
��. /
FirstOrDefault
��/ =
(
��= >
)
��> ?
??
��@ B
items
��C H
.
��H I
FirstOrDefault
��I W
(
��W X
)
��X Y
;
��Y Z
if
�� 
(
�� 
itemToSelect
�� 
!=
�� 
null
��  $
&&
��% '
!
��( )
itemToSelect
��) 5
.
��5 6
parentTrack
��6 A
.
��A B
lockedInHierarchy
��B S
)
��S T
{
�� 
SelectionManager
��  
.
��  !

SelectOnly
��! +
(
��+ ,
itemToSelect
��, 8
)
��8 9
;
��9 :
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 

�� (
(
��( )
IEnumerable
��) 4
<
��4 5

TrackAsset
��5 ?
>
��? @
tracks
��A G
)
��G H
{
�� 	
if
�� 
(
�� 
!
�� 
TrackHeadActive
��  
(
��  !
)
��! "
)
��" #
return
�� 
false
�� 
;
�� 
var
�� 
didCollapse
�� 
=
�� 
false
�� #
;
��# $
foreach
�� 
(
�� 

TrackAsset
�� 
track
��  %
in
��& (
tracks
��) /
)
��/ 0
{
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
GetChildTracks
�� )
(
��) *
)
��* +
.
��+ ,
Any
��, /
(
��/ 0
)
��0 1
)
��1 2
continue
�� 
;
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
GetCollapsed
�� '
(
��' (
)
��( )
)
��) *
{
�� 
didCollapse
�� 
=
��  !
true
��" &
;
��& '
track
�� 
.
�� 
SetCollapsed
�� &
(
��& '
true
��' +
)
��+ ,
;
��, -
}
�� 
}
�� 
if
�� 
(
�� 
didCollapse
�� 
)
�� 
{
�� 
TimelineEditor
�� 
.
�� 
Refresh
�� &
(
��& '

��' 4
.
��4 5$
ContentsAddedOrRemoved
��5 K
)
��K L
;
��L M
return
�� 
true
�� 
;
�� 
}
�� 
return
�� &
SelectAndShowParentTrack
�� +
(
��+ ,
tracks
��, 2
.
��2 3

��3 @
(
��@ A
)
��A B
)
��B C
;
��C D
}
�� 	
static
�� 
bool
�� &
SelectAndShowParentTrack
�� ,
(
��, -

TrackAsset
��- 7
track
��8 =
)
��= >
{
�� 	

TrackAsset
�� 
parent
�� 
=
�� 
track
��  %
!=
��& (
null
��) -
?
��. /
track
��0 5
.
��5 6
parent
��6 <
as
��= ?

TrackAsset
��@ J
:
��K L
null
��M Q
;
��Q R
if
�� 
(
�� 
parent
�� 
)
�� 
{
�� 
SelectionManager
��  
.
��  !

SelectOnly
��! +
(
��+ ,
parent
��, 2
)
��2 3
;
��3 4
FrameTrackHeader
��  
(
��  !
GetVisibleTracks
��! 1
(
��1 2
)
��2 3
.
��3 4
First
��4 9
(
��9 :
x
��: ;
=>
��< >
x
��? @
.
��@ A
track
��A F
==
��G I
parent
��J P
)
��P Q
)
��Q R
;
��R S
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
SelectLeftItem
�� )
(
��) *
bool
��* .
shift
��/ 4
=
��5 6
false
��7 <
)
��< =
{
�� 	
if
�� 
(
�� 
ClipAreaActive
�� 
(
�� 
)
��  
)
��  !
{
�� 
var
�� 
items
�� 
=
�� 
SelectionManager
�� ,
.
��, -

��- :
(
��: ;
)
��; <
.
��< =
ToList
��= C
(
��C D
)
��D E
;
��E F
var
�� 
clipOnly
�� 
=
�� 
FilterItems
�� *
(
��* +
ref
��+ .
items
��/ 4
)
��4 5
;
��5 6
var
�� 
item
�� 
=
�� 
items
��  
.
��  !
Last
��! %
(
��% &
)
��& '
;
��' (
var
�� 
prev
�� 
=
�� 
item
�� 
.
��  
PreviousItem
��  ,
(
��, -
clipOnly
��- 5
)
��5 6
;
��6 7
if
�� 
(
�� 
prev
�� 
!=
�� 
null
��  
&&
��! #
!
��$ %
prev
��% )
.
��) *
parentTrack
��* 5
.
��5 6
lockedInHierarchy
��6 G
)
��G H
{
�� 
if
�� 
(
�� 
shift
�� 
)
�� 
{
�� 
if
�� 
(
�� 
SelectionManager
�� ,
.
��, -
Contains
��- 5
(
��5 6
prev
��6 :
)
��: ;
)
��; <
SelectionManager
�� ,
.
��, -
Remove
��- 3
(
��3 4
item
��4 8
)
��8 9
;
��9 :
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
prev
��- 1
)
��1 2
;
��2 3
}
�� 
else
�� 
SelectionManager
�� (
.
��( )

SelectOnly
��) 3
(
��3 4
prev
��4 8
)
��8 9
;
��9 :
TimelineHelpers
�� #
.
��# $

FrameItems
��$ .
(
��. /
new
��/ 2
[
��2 3
]
��3 4
{
��5 6
prev
��6 :
}
��: ;
)
��; <
;
��< =
}
�� 
else
�� 
if
�� 
(
�� 
item
�� 
!=
��  
null
��! %
&&
��& (
!
��) *
shift
��* /
&&
��0 2
item
��3 7
.
��7 8
parentTrack
��8 C
!=
��D F
TimelineEditor
��G U
.
��U V
inspectedAsset
��V d
.
��d e
markerTrack
��e p
)
��p q
SelectionManager
�� $
.
��$ %

SelectOnly
��% /
(
��/ 0
item
��0 4
.
��4 5
parentTrack
��5 @
)
��@ A
;
��A B
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
SelectRightItem
�� *
(
��* +
bool
��+ /
shift
��0 5
=
��6 7
false
��8 =
)
��= >
{
�� 	
if
�� 
(
�� 
ClipAreaActive
�� 
(
�� 
)
��  
)
��  !
{
�� 
var
�� 
items
�� 
=
�� 
SelectionManager
�� ,
.
��, -

��- :
(
��: ;
)
��; <
.
��< =
ToList
��= C
(
��C D
)
��D E
;
��E F
var
�� 
clipOnly
�� 
=
�� 
FilterItems
�� *
(
��* +
ref
��+ .
items
��/ 4
)
��4 5
;
��5 6
var
�� 
item
�� 
=
�� 
items
��  
.
��  !
Last
��! %
(
��% &
)
��& '
;
��' (
var
�� 
next
�� 
=
�� 
item
�� 
.
��  
NextItem
��  (
(
��( )
clipOnly
��) 1
)
��1 2
;
��2 3
if
�� 
(
�� 
next
�� 
!=
�� 
null
��  
&&
��! #
!
��$ %
next
��% )
.
��) *
parentTrack
��* 5
.
��5 6
lockedInHierarchy
��6 G
)
��G H
{
�� 
if
�� 
(
�� 
shift
�� 
)
�� 
{
�� 
if
�� 
(
�� 
SelectionManager
�� ,
.
��, -
Contains
��- 5
(
��5 6
next
��6 :
)
��: ;
)
��; <
SelectionManager
�� ,
.
��, -
Remove
��- 3
(
��3 4
item
��4 8
)
��8 9
;
��9 :
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
next
��- 1
)
��1 2
;
��2 3
}
�� 
else
�� 
SelectionManager
�� (
.
��( )

SelectOnly
��) 3
(
��3 4
next
��4 8
)
��8 9
;
��9 :
TimelineHelpers
�� #
.
��# $

FrameItems
��$ .
(
��. /
new
��/ 2
[
��2 3
]
��3 4
{
��5 6
next
��6 :
}
��: ;
)
��; <
;
��< =
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
UnCollapseGroup
�� *
(
��* +
IEnumerable
��+ 6
<
��6 7

TrackAsset
��7 A
>
��A B
tracks
��C I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
TrackHeadActive
��  
(
��  !
)
��! "
)
��" #
return
�� 
false
�� 
;
�� 
var
�� 

�� 
=
�� 
false
��  %
;
��% &
foreach
�� 
(
�� 

TrackAsset
�� 
track
��  %
in
��& (
tracks
��) /
)
��/ 0
{
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
GetChildTracks
�� )
(
��) *
)
��* +
.
��+ ,
Any
��, /
(
��/ 0
)
��0 1
)
��1 2
continue
�� 
;
�� 
if
�� 
(
�� 
track
�� 
.
�� 
GetCollapsed
�� &
(
��& '
)
��' (
)
��( )
{
�� 

�� !
=
��" #
true
��$ (
;
��( )
track
�� 
.
�� 
SetCollapsed
�� &
(
��& '
false
��' ,
)
��, -
;
��- .
}
�� 
}
�� 
if
�� 
(
�� 

�� 
)
�� 
{
�� 
TimelineEditor
�� 
.
�� 
Refresh
�� &
(
��& '

��' 4
.
��4 5$
ContentsAddedOrRemoved
��5 K
)
��K L
;
��L M
return
�� 
true
�� 
;
�� 
}
�� 
return
�� )
SelectFirstClipStartingFrom
�� .
(
��. /
tracks
��/ 5
.
��5 6
Last
��6 :
(
��: ;
)
��; <
)
��< =
;
��= >
}
�� 	
static
�� 
bool
�� )
SelectFirstClipStartingFrom
�� /
(
��/ 0

TrackAsset
��0 :
track
��; @
)
��@ A
{
�� 	
List
�� 
<
�� 

TrackAsset
�� 
>
�� 

�� *
=
��+ ,
GetVisibleTracks
��- =
(
��= >
)
��> ?
.
��? @
Select
��@ F
(
��F G
x
��G H
=>
��I K
x
��L M
.
��M N
track
��N S
)
��S T
.
��T U
ToList
��U [
(
��[ \
)
��\ ]
;
��] ^
int
�� 
idx
�� 
=
�� 

�� #
.
��# $
IndexOf
��$ +
(
��+ ,
track
��, 1
)
��1 2
;
��2 3

�� 
item
�� 
=
��  
null
��! %
;
��% &
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
idx
�� 
;
�� 
i
�� 
<
��  !

��" /
.
��/ 0
Count
��0 5
;
��5 6
++
��7 9
i
��9 :
)
��: ;
{
�� 
var
�� 
items
�� 
=
�� 

�� )
[
��) *
i
��* +
]
��+ ,
.
��, -
GetItems
��- 5
(
��5 6
)
��6 7
.
��7 8
OfType
��8 >
<
��> ?
ClipItem
��? G
>
��G H
(
��H I
)
��I J
;
��J K
if
�� 
(
�� 
!
�� 
items
�� 
.
�� 
Any
�� 
(
�� 
)
��  
||
��! #

��$ 1
[
��1 2
i
��2 3
]
��3 4
.
��4 5
lockedInHierarchy
��5 F
)
��F G
continue
�� 
;
�� 
item
�� 
=
�� 
items
�� 
.
�� 
First
�� "
(
��" #
)
��# $
;
��$ %
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
item
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
SelectionManager
��  
.
��  !

SelectOnly
��! +
(
��+ ,
item
��, 0
)
��0 1
;
��1 2
TimelineHelpers
�� 
.
��  

FrameItems
��  *
(
��* +
new
��+ .
[
��. /
]
��/ 0
{
��1 2
item
��3 7
}
��8 9
)
��9 :
;
��: ;
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 

�� (
(
��( )
bool
��) -
shift
��. 3
=
��4 5
false
��6 ;
)
��; <
{
�� 	
if
�� 
(
�� 
TrackHeadActive
�� 
(
��  
)
��  !
)
��! "
{
�� 
var
�� 
	prevTrack
�� 
=
�� 

��  -
(
��- .
SelectionManager
��. >
.
��> ?
SelectedTracks
��? M
(
��M N
)
��N O
.
��O P
Last
��P T
(
��T U
)
��U V
)
��V W
;
��W X
if
�� 
(
�� 
	prevTrack
�� 
!=
��  
null
��! %
)
��% &
{
�� 
if
�� 
(
�� 
shift
�� 
)
�� 
{
�� 
if
�� 
(
�� 
SelectionManager
�� ,
.
��, -
Contains
��- 5
(
��5 6
	prevTrack
��6 ?
)
��? @
)
��@ A
SelectionManager
�� ,
.
��, -
Remove
��- 3
(
��3 4
SelectionManager
��4 D
.
��D E
SelectedTracks
��E S
(
��S T
)
��T U
.
��U V
Last
��V Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
	prevTrack
��- 6
)
��6 7
;
��7 8
}
�� 
else
�� 
SelectionManager
�� (
.
��( )

SelectOnly
��) 3
(
��3 4
	prevTrack
��4 =
)
��= >
;
��> ?
FrameTrackHeader
�� $
(
��$ %
GetVisibleTracks
��% 5
(
��5 6
)
��6 7
.
��7 8
First
��8 =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
track
��E J
==
��K M
	prevTrack
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
SelectUpItem
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
ClipAreaActive
�� 
(
�� 
)
��  
)
��  !
{
�� 
var
�� 
refItem
�� 
=
�� 
SelectionManager
�� .
.
��. /

��/ <
(
��< =
)
��= >
.
��> ?
Last
��? C
(
��C D
)
��D E
;
��E F
var
�� 
	prevTrack
�� 
=
�� 
refItem
��  '
.
��' (
parentTrack
��( 3
.
��3 4

��4 A
(
��A B
)
��B C
;
��C D
while
�� 
(
�� 
	prevTrack
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
var
�� 

�� %
=
��& '
GetClosestItem
��( 6
(
��6 7
	prevTrack
��7 @
,
��@ A
refItem
��B I
)
��I J
;
��J K
if
�� 
(
�� 

�� %
==
��& (
null
��) -
||
��. 0
	prevTrack
��1 :
.
��: ;
lockedInHierarchy
��; L
)
��L M
{
�� 
	prevTrack
�� !
=
��" #
	prevTrack
��$ -
.
��- .

��. ;
(
��; <
)
��< =
;
��= >
continue
��  
;
��  !
}
�� 
SelectionManager
�� $
.
��$ %

SelectOnly
��% /
(
��/ 0

��0 =
)
��= >
;
��> ?
TimelineHelpers
�� #
.
��# $

FrameItems
��$ .
(
��. /
new
��/ 2
[
��2 3
]
��3 4
{
��5 6

��6 C
}
��C D
)
��D E
;
��E F
FrameTrackHeader
�� $
(
��$ %
GetVisibleTracks
��% 5
(
��5 6
)
��6 7
.
��7 8
First
��8 =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
track
��E J
==
��K M

��N [
.
��[ \
parentTrack
��\ g
)
��g h
)
��h i
;
��i j
break
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
SelectDownTrack
�� *
(
��* +
bool
��+ /
shift
��0 5
=
��6 7
false
��8 =
)
��= >
{
�� 	
if
�� 
(
�� 
TrackHeadActive
�� 
(
��  
)
��  !
)
��! "
{
�� 
var
�� 
	nextTrack
�� 
=
�� 
SelectionManager
��  0
.
��0 1
SelectedTracks
��1 ?
(
��? @
)
��@ A
.
��A B
Last
��B F
(
��F G
)
��G H
.
��H I
	NextTrack
��I R
(
��R S
)
��S T
;
��T U
if
�� 
(
�� 
	nextTrack
�� 
!=
��  
null
��! %
)
��% &
{
�� 
if
�� 
(
�� 
shift
�� 
)
�� 
{
�� 
if
�� 
(
�� 
SelectionManager
�� ,
.
��, -
Contains
��- 5
(
��5 6
	nextTrack
��6 ?
)
��? @
)
��@ A
SelectionManager
�� ,
.
��, -
Remove
��- 3
(
��3 4
SelectionManager
��4 D
.
��D E
SelectedTracks
��E S
(
��S T
)
��T U
.
��U V
Last
��V Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
SelectionManager
�� (
.
��( )
Add
��) ,
(
��, -
	nextTrack
��- 6
)
��6 7
;
��7 8
}
�� 
else
�� 
SelectionManager
�� (
.
��( )

SelectOnly
��) 3
(
��3 4
	nextTrack
��4 =
)
��= >
;
��> ?
FrameTrackHeader
�� $
(
��$ %
GetVisibleTracks
��% 5
(
��5 6
)
��6 7
.
��7 8
First
��8 =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
track
��E J
==
��K M
	nextTrack
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
SelectDownItem
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
ClipAreaActive
�� 
(
�� 
)
��  
)
��  !
{
�� 
var
�� 
refItem
�� 
=
�� 
SelectionManager
�� .
.
��. /

��/ <
(
��< =
)
��= >
.
��> ?
Last
��? C
(
��C D
)
��D E
;
��E F
var
�� 
	nextTrack
�� 
=
�� 
refItem
��  '
.
��' (
parentTrack
��( 3
.
��3 4
	NextTrack
��4 =
(
��= >
)
��> ?
;
��? @
while
�� 
(
�� 
	nextTrack
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
var
�� 

�� %
=
��& '
GetClosestItem
��( 6
(
��6 7
	nextTrack
��7 @
,
��@ A
refItem
��B I
)
��I J
;
��J K
if
�� 
(
�� 

�� %
==
��& (
null
��) -
||
��. 0
	nextTrack
��1 :
.
��: ;
lockedInHierarchy
��; L
)
��L M
{
�� 
	nextTrack
�� !
=
��" #
	nextTrack
��$ -
.
��- .
	NextTrack
��. 7
(
��7 8
)
��8 9
;
��9 :
continue
��  
;
��  !
}
�� 
SelectionManager
�� $
.
��$ %

SelectOnly
��% /
(
��/ 0

��0 =
)
��= >
;
��> ?
TimelineHelpers
�� #
.
��# $

FrameItems
��$ .
(
��. /
new
��/ 2
[
��2 3
]
��3 4
{
��5 6

��6 C
}
��C D
)
��D E
;
��E F
FrameTrackHeader
�� $
(
��$ %
GetVisibleTracks
��% 5
(
��5 6
)
��6 7
.
��7 8
First
��8 =
(
��= >
x
��> ?
=>
��@ B
x
��C D
.
��D E
track
��E J
==
��K M

��N [
.
��[ \
parentTrack
��\ g
)
��g h
)
��h i
;
��i j
break
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Editor\Signals\SignalEmitterInspector.cs
	namespace 	
UnityEditor
 
. 
Timeline 
. 
Signals &
{		 
[

 
CustomEditor

 
(

 
typeof

 
(

 


 &
)

& '
,

' (
true

) -
)

- .
]

. /
[ "
CanEditMultipleObjects 
] 
class 	"
SignalEmitterInspector
  
:! "
MarkerInspector# 2
,2 3 
ISignalAssetProvider4 H
{
SerializedProperty !
m_RetroactiveProperty 0
;0 1
SerializedProperty 
m_EmitOnceProperty -
;- .

m_Signal 
; 

GameObject 
m_BoundGameObject $
;$ %
PlayableDirector  
m_AssociatedDirector -
;- .
bool '
m_TargetsHaveTheSameBinding
;( )
readonly 

Dictionary 
< 
	Component %
,% &
Editor' -
>- .
	m_Editors/ 8
=9 :
new; >

Dictionary? I
<I J
	ComponentJ S
,S T
EditorU [
>[ \
(\ ]
)] ^
;^ _
readonly 

Dictionary 
< 
	Component %
,% &
bool' +
>+ ,

m_Foldouts- 7
=8 9
new: =

Dictionary> H
<H I
	ComponentI R
,R S
boolT X
>X Y
(Y Z
)Z [
;[ \
List 
< 
	Component
> 
m_Receivers #
=$ %
new& )
List* .
<. /
	Component/ 8
>8 9
(9 :
): ;
;; <
static 
GUIStyle 
s_FoldoutStyle &
;& '
internal 
static 
GUIStyle  
foldoutStyle! -
{ 	
get 
{ 
if 
( 
s_FoldoutStyle "
==# %
null& *
)* +
{   
s_FoldoutStyle!! "
=!!# $
new!!% (
GUIStyle!!) 1
(!!1 2
EditorStyles!!2 >
.!!> ?
foldout!!? F
)!!F G
{!!H I
	fontStyle!!I R
=!!S T
	FontStyle!!U ^
.!!^ _
Bold!!_ c
}!!c d
;!!d e
}"" 
return$$ 
s_FoldoutStyle$$ %
;$$% &
}%% 
}&& 	
public(( 
SignalAsset(( 
signalAsset(( &
{)) 	
get** 
{++ 
var,, 
emitter,, 
=,, 
target,, $
as,,% '

;,,5 6
return--  
signalAssetSameValue-- +
?--, -
emitter--. 5
.--5 6
asset--6 ;
:--< =
null--> B
;--B C
}.. 
set// 
{00 
AssignSignalAsset11 !
(11! "
value11" '
)11' (
;11( )
}22 
}33 	
bool55  
signalAssetSameValue55
{66 	
get77 
{88 
var99 
emitters99 
=99 
targets99 &
.99& '
Cast99' +
<99+ ,

>999 :
(99: ;
)99; <
.99< =
ToList99= C
(99C D
)99D E
;99E F
return:: 
emitters:: 
.::  
Select::  &
(::& '
x::' (
=>::) +
x::, -
.::- .
asset::. 3
)::3 4
.::4 5
Distinct::5 =
(::= >
)::> ?
.::? @
Count::@ E
(::E F
)::F G
==::H J
$num::K L
;::L M
};; 
}<< 	
void>> 
OnEnable>>
(>> 
)>> 
{?? 	
Undo@@ 
.@@ 
undoRedoPerformed@@ "
+=@@# %

OnUndoRedo@@& 0
;@@0 1
m_SignalAA 
=AA 
targetAA 
asAA  

;AA. /!
m_RetroactivePropertyBB !
=BB" #
serializedObjectBB$ 4
.BB4 5
FindPropertyBB5 A
(BBA B
$strBBB Q
)BBQ R
;BBR S
m_EmitOncePropertyCC 
=CC  
serializedObjectCC! 1
.CC1 2
FindPropertyCC2 >
(CC> ?
$strCC? K
)CCK L
;CCL M 
m_AssociatedDirectorGG  
=GG! "
TimelineEditorGG# 1
.GG1 2
inspectedDirectorGG2 C
;GGC D
UpdateStateHH 
(HH 
)HH 
;HH 
}II 	
internalKK 
overrideKK 
boolKK 
	IsEnabledKK (
(KK( )
)KK) *
{LL 	
returnMM 
TimelineUtilityMM "
.MM" #"
IsCurrentSequenceValidMM# 9
(MM9 :
)MM: ;
&&MM< >
!MM? @%
IsCurrentSequenceReadOnlyMM@ Y
(MMY Z
)MMZ [
&&MM\ ^
baseMM_ c
.MMc d
	IsEnabledMMd m
(MMm n
)MMn o
;MMo p
}NN 	
publicPP 
overridePP 
voidPP 
OnInspectorGUIPP +
(PP+ ,
)PP, -
{QQ 	
serializedObjectRR 
.RR 
UpdateRR #
(RR# $
)RR$ %
;RR% &
usingTT 
(TT 
varTT 
changeScopeTT "
=TT# $
newTT% (
	EditorGUITT) 2
.TT2 3
ChangeCheckScopeTT3 C
(TTC D
)TTD E
)TTE F
{UU 
varVV 
propertyVV 
=VV 
serializedObjectVV /
.VV/ 0
GetIteratorVV0 ;
(VV; <
)VV< =
;VV= >
varWW 
expandedWW 
=WW 
trueWW #
;WW# $
whileXX 
(XX 
propertyXX 
.XX  
NextVisibleXX  +
(XX+ ,
expandedXX, 4
)XX4 5
)XX5 6
{YY 
expandedZZ 
=ZZ 
falseZZ $
;ZZ$ %
if[[ 
([[ 
	SkipField[[ !
([[! "
property[[" *
.[[* +
propertyPath[[+ 7
)[[7 8
)[[8 9
continue\\  
;\\  !
EditorGUILayout]] #
.]]# $

(]]1 2
property]]2 :
,]]: ;
true]]< @
)]]@ A
;]]A B
}^^ 
DrawSignalFlags`` 
(``  
)``  !
;``! "
UpdateStateaa 
(aa 
)aa 
;aa )
DrawNameSelectorAndSignalListbb -
(bb- .
)bb. /
;bb/ 0
ifdd 
(dd 
changeScopedd 
.dd  
changeddd  '
)dd' (
{ee 
serializedObjectff $
.ff$ %#
ApplyModifiedPropertiesff% <
(ff< =
)ff= >
;ff> ?
TimelineEditorgg "
.gg" #
Refreshgg# *
(gg* +

.gg8 9
ContentsModifiedgg9 I
|ggJ K

.ggY Z
WindowNeedsRedrawggZ k
)ggk l
;ggl m
}hh 
}ii 
}jj 	
internalll 
overridell 
voidll 
OnHeaderIconGUIll .
(ll. /
Rectll/ 3
iconRectll4 <
)ll< =
{mm 	
usingnn 
(nn 
newnn 
	EditorGUInn  
.nn  !

(nn. /
!nn/ 0
TimelineUtilitynn0 ?
.nn? @"
IsCurrentSequenceValidnn@ V
(nnV W
)nnW X
||nnY [%
IsCurrentSequenceReadOnlynn\ u
(nnu v
)nnv w
)nnw x
)nnx y
{oo 
GUIpp 
.pp 
Labelpp 
(pp 
iconRectpp "
,pp" #
Stylespp$ *
.pp* +
SignalEmitterIconpp+ <
)pp< =
;pp= >
}qq 
}rr 	
internaltt 
overridett 
Recttt (
DrawHeaderHelpAndSettingsGUItt ;
(tt; <
Recttt< @
rttA B
)ttB C
{uu 	
usingvv 
(vv 
newvv 
	EditorGUIvv  
.vv  !

(vv. /
!vv/ 0
TimelineUtilityvv0 ?
.vv? @"
IsCurrentSequenceValidvv@ V
(vvV W
)vvW X
||vvY [%
IsCurrentSequenceReadOnlyvv\ u
(vvu v
)vvv w
)vvw x
)vvx y
{ww 
varxx 
helpSizexx 
=xx 
EditorStylesxx +
.xx+ ,

iconButtonxx, 6
.xx6 7
CalcSizexx7 ?
(xx? @
	EditorGUIxx@ I
.xxI J
GUIContentsxxJ U
.xxU V
helpIconxxV ^
)xx^ _
;xx_ `
constyy 
intyy 

kTopMarginyy $
=yy% &
$numyy' (
;yy( )
returnzz 
EditorGUIUtilityzz '
.zz' (!
DrawEditorHeaderItemszz( =
(zz= >
newzz> A
RectzzB F
(zzF G
rzzG H
.zzH I
xMaxzzI M
-zzN O
helpSizezzP X
.zzX Y
xzzY Z
,zzZ [
rzz\ ]
.zz] ^
yzz^ _
+zz` a

kTopMarginzzb l
,zzl m
helpSizezzn v
.zzv w
xzzw x
,zzx y
helpSize	zzz �
.
zz� �
y
zz� �
)
zz� �
,
zz� �
targets
zz� �
)
zz� �
;
zz� �
}{{ 
}|| 	
IEnumerable~~ 
<~~ 
SignalAsset~~ 
>~~   
ISignalAssetProvider~~! 5
.~~5 6!
AvailableSignalAssets~~6 K
(~~K L
)~~L M
{ 	
return
�� 

��  
.
��  !
assets
��! '
;
��' (
}
�� 	
void
�� "
ISignalAssetProvider
��
.
��! ""
CreateNewSignalAsset
��" 6
(
��6 7
string
��7 =
path
��> B
)
��B C
{
�� 	
var
�� 
newSignalAsset
�� 
=
��  

��! .
.
��. /'
CreateSignalAssetInstance
��/ H
(
��H I
path
��I M
)
��M N
;
��N O
AssignSignalAsset
�� 
(
�� 
newSignalAsset
�� ,
)
��, -
;
��- .
var
�� 
	receivers
�� 
=
�� 
m_Receivers
�� '
.
��' (
OfType
��( .
<
��. /
SignalReceiver
��/ =
>
��= >
(
��> ?
)
��? @
.
��@ A
ToList
��A G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
signalAsset
�� 
!=
�� 
null
�� #
&&
��$ &
	receivers
��' 0
.
��0 1
Count
��1 6
==
��7 9
$num
��: ;
&&
��< >
!
��? @
	receivers
��@ I
.
��I J
Any
��J M
(
��M N
r
��N O
=>
��P R
r
��S T
.
��T U"
IsSignalAssetHandled
��U i
(
��i j
newSignalAsset
��j x
)
��x y
)
��y z
)
��z {
{
�� 
	receivers
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
AddNewReaction
�� +
(
��+ ,
newSignalAsset
��, :
)
��: ;
;
��; <-
ApplyChangesAndRefreshReceivers
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
void
�� 
UpdateState
��
(
�� 
)
�� 
{
�� 	
m_BoundGameObject
�� 
=
��  
GetBoundGameObject
��  2
(
��2 3
m_Signal
��3 ;
.
��; <
parent
��< B
,
��B C"
m_AssociatedDirector
��D X
)
��X Y
;
��Y Z
m_Receivers
�� 
=
�� 
m_BoundGameObject
�� +
==
��, .
null
��/ 3
||
��4 6
m_BoundGameObject
��7 H
.
��H I
Equals
��I O
(
��O P
null
��P T
)
��T U
?
�� 
new
�� 
List
�� 
<
�� 
	Component
�� $
>
��$ %
(
��% &
)
��& '
:
�� 
m_BoundGameObject
�� #
.
��# $

��$ 1
<
��1 2
	Component
��2 ;
>
��; <
(
��< =
)
��= >
.
��> ?
Where
��? D
(
��D E
t
��E F
=>
��G I
t
��J K
is
��L N#
INotificationReceiver
��O d
)
��d e
.
��e f
ToList
��f l
(
��l m
)
��m n
;
��n o)
m_TargetsHaveTheSameBinding
�� '
=
��( )
targets
��* 1
.
��1 2
Cast
��2 6
<
��6 7

��7 D
>
��D E
(
��E F
)
��F G
.
�� 
Select
�� 
(
�� 
x
�� 
=>
��  
GetBoundGameObject
�� /
(
��/ 0
x
��0 1
.
��1 2
parent
��2 8
,
��8 9"
m_AssociatedDirector
��: N
)
��N O
)
��O P
.
�� 
Distinct
�� 
(
�� 
)
�� 
.
�� 
Count
�� !
(
��! "
)
��" #
==
��$ &
$num
��' (
;
��( )
}
�� 	
Editor
�� '
GetOrCreateReceiverEditor
�� (
(
��( )
	Component
��) 2
c
��3 4
)
��4 5
{
�� 	
Editor
�� 
ret
�� 
;
�� 
if
�� 
(
�� 
	m_Editors
�� 
.
�� 
TryGetValue
�� %
(
��% &
c
��& '
,
��' (
out
��) ,
ret
��- 0
)
��0 1
)
��1 2
{
�� 
return
�� 
ret
�� 
;
�� 
}
�� 
ret
�� 
=
�� %
CreateEditorWithContext
�� )
(
��) *
new
��* -
Object
��. 4
[
��4 5
]
��5 6
{
��7 8
c
��8 9
}
��9 :
,
��: ;
target
��< B
)
��B C
;
��C D
	m_Editors
�� 
[
�� 
c
�� 
]
�� 
=
�� 
ret
�� 
;
�� 
if
�� 
(
�� 
!
�� 

m_Foldouts
�� 
.
�� 
ContainsKey
�� '
(
��' (
c
��( )
)
��) *
)
��* +
{
�� 

m_Foldouts
�� 
[
�� 
c
�� 
]
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
void
�� 
	OnDisable
��
(
�� 
)
�� 
{
�� 	
Undo
�� 
.
�� 
undoRedoPerformed
�� "
-=
��# %

OnUndoRedo
��& 0
;
��0 1
}
�� 	
void
�� 
	OnDestroy
��
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
editor
�� 
in
��  "
	m_Editors
��# ,
)
��, -
{
�� 
DestroyImmediate
��  
(
��  !
editor
��! '
.
��' (
Value
��( -
)
��- .
;
��. /
}
�� 
	m_Editors
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 

OnUndoRedo
��
(
�� 
)
�� 
{
�� 	-
ApplyChangesAndRefreshReceivers
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 	
void
�� -
ApplyChangesAndRefreshReceivers
��
(
��, -
)
��- .
{
�� 	
foreach
�� 
(
�� 
var
�� 
receiverInspector
�� *
in
��+ -
	m_Editors
��. 7
.
��7 8
Values
��8 >
.
��> ?
OfType
��? E
<
��E F%
SignalReceiverInspector
��F ]
>
��] ^
(
��^ _
)
��_ `
)
��` a
{
�� 
receiverInspector
�� !
.
��! "
SetAssetContext
��" 1
(
��1 2
signalAsset
��2 =
)
��= >
;
��> ?
}
�� 
}
�� 	
void
�� +
DrawNameSelectorAndSignalList
��
(
��* +
)
��+ ,
{
�� 	
using
�� 
(
�� 
var
�� 
change
�� 
=
�� 
new
��  #
	EditorGUI
��$ -
.
��- .
ChangeCheckScope
��. >
(
��> ?
)
��? @
)
��@ A
{
�� 

DrawSignal
�� 
(
�� 
)
�� 
;
�� 

�� 
(
�� 
)
�� 
;
��  
if
�� 
(
�� 
change
�� 
.
�� 
changed
�� "
)
��" #
{
�� -
ApplyChangesAndRefreshReceivers
�� 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
}
�� 
}
�� 	
void
�� 

��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� )
m_TargetsHaveTheSameBinding
�� ,
)
��, -
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
Styles
��( .
.
��. /6
(MultiEditNotSupportedOnDifferentBindings
��/ W
,
��W X
MessageType
��Y d
.
��d e
None
��e i
)
��i j
;
��j k
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
targets
�� 
.
�� 
OfType
�� 
<
�� 

�� ,
>
��, -
(
��- .
)
��. /
.
��/ 0
Select
��0 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
asset
��> C
)
��C D
.
��D E
Distinct
��E M
(
��M N
)
��N O
.
��O P
Count
��P U
(
��U V
)
��V W
>
��X Y
$num
��Z [
)
��[ \
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
Styles
��( .
.
��. /5
'MultiEditNotSupportedOnDifferentSignals
��/ V
,
��V W
MessageType
��X c
.
��c d
None
��d h
)
��h i
;
��i j
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_Signal
�� 
.
�� 
parent
�� 
!=
��  "
null
��# '
&&
��( *
m_Signal
��+ 3
.
��3 4
parent
��4 :
.
��: ;

��; H
!=
��I K
TimelineEditor
��L Z
.
��Z [
inspectedAsset
��[ i
)
��i j
return
�� 
;
�� 
if
�� 
(
�� 
m_BoundGameObject
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
!
�� 
m_Receivers
��  
.
��  !
Any
��! $
(
��$ %
x
��% &
=>
��' )
x
��* +
is
��, .
SignalReceiver
��/ =
)
��= >
)
��> ?
{
�� 
EditorGUILayout
�� #
.
��# $
	Separator
��$ -
(
��- .
)
��. /
;
��/ 0
var
�� 
message
�� 
=
��  !
string
��" (
.
��( )
Format
��) /
(
��/ 0
Styles
��0 6
.
��6 7'
NoSignalReceiverComponent
��7 P
,
��P Q
m_BoundGameObject
��R c
.
��c d
name
��d h
)
��h i
;
��i j

�� !
.
��! "!
DrawCenteredMessage
��" 5
(
��5 6
message
��6 =
)
��= >
;
��> ?
if
�� 
(
�� 

�� %
.
��% & 
DrawCenteredButton
��& 8
(
��8 9
Styles
��9 ?
.
��? @(
AddSignalReceiverComponent
��@ Z
)
��Z [
)
��[ \"
AddReceiverComponent
�� ,
(