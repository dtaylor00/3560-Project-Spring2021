“
çD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\IStartView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal 
	interface 

IStartView !
:" #
IView$ )
<) *
IStartPresenter* 9
>9 :
{ 
string

 
Text

 
{

 
set

 
;

 
}

 
string 

ButtonText 
{ 
set 
;  
}! "
void 
SetButtonVisible 
( 
bool "
	isVisible# ,
), -
;- .
} 
} ç

îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\IAdapter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
.' (
Adapters( 0
{1 2
internal 
	interface 
IAdapter 
{ 
int 
Height 
{ 
get 
; 
} 
Func		 
<		 
VisualElement		 
>		 
MakeItem		 $
{		% &
get		' *
;		* +
}		, -
Action 
< 
VisualElement 
, 
int !
>! "
BindItem# +
{, -
get. 1
;1 2
}3 4
int 
GetEntryCount 
( 
) 
; 
void 
RegisterObserver 
( 
IAdapterObserver .
observer/ 7
)7 8
;8 9
void 
DeregisterObserver 
(  
IAdapterObserver  0
observer1 9
)9 :
;: ;
} 
} ùG
ëD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\SearchBar.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
class 	
	SearchBar
 
: 
VisualElement #
{ 
public 
const 
string 
UssClassName (
=) *
$str+ =
;= >
public 
const 
string #
SearchFieldUssClassName 3
=4 5
UssClassName6 B
+C D
$strE U
;U V
public 
const 
string #
PlaceholderUssClassName 3
=4 5
UssClassName6 B
+C D
$strE T
;T U
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
	SearchBarU ^
)^ _
}_ `
.uss` d
"d e
;e f
public 
const 
int 
timeoutMilliseconds ,
=- .
$num/ 3
;3 4
readonly 
ToolbarSearchField #
m_SearchField$ 1
;1 2
readonly 
Label 
m_Placeholder $
;$ %
string 
m_LatestSearchValue "
;" #
bool 
m_SearchEventFlag 
; 
readonly 
Timer 
m_SearchEventTimer )
;) *
bool 
	m_Focused 
; 
public   
event   
Action   
<   
string   "
>  " #
Search  $ *
=  + ,
delegate  - 5
{  6 7
}  8 9
;  9 :
public"" 
	SearchBar"" 
("" 
)"" 
:"" 
this"" !
(""! "
null""" &
)""& '
{## 	
}$$ 	
public&& 
	SearchBar&& 
(&& 
[&& 
	CanBeNull&& #
]&&# $
Action&&% +
<&&+ ,
string&&, 2
>&&2 3
searchEvent&&4 ?
=&&@ A
null&&B F
)&&F G
{'' 	
m_SearchEventTimer)) 
=))  
new))! $
Timer))% *
())* +
_))+ ,
=>))- /
EditorApplication))0 A
.))A B
	delayCall))B K
+=))L N
())O P
)))P Q
=>))R T
{** 
m_SearchEventFlag++ !
=++" #
false++$ )
;++) *
Search,, 
(,, 
m_LatestSearchValue,, *
),,* +
;,,+ ,
}-- 
)-- 
;-- 
AddToClassList// 
(// 
UssClassName// '
)//' (
;//( )
styleSheets00 
.00 
Add00 
(00 
AssetDatabase00 )
.00) *
LoadAssetAtPath00* 9
<009 :

StyleSheet00: D
>00D E
(00E F
k_StylePath00F Q
)00Q R
)00R S
;00S T
m_SearchField22 
=22 
new22 
ToolbarSearchField22  2
(222 3
)223 4
;224 5
m_Placeholder33 
=33 
new33 
Label33  %
{33& '
text33( ,
=33- .
StringAssets33/ ;
.33; <
search33< B
,33B C
pickingMode33D O
=33P Q
PickingMode33R ]
.33] ^
Ignore33^ d
}33e f
;33f g
m_SearchField55 
.55 
AddToClassList55 (
(55( )#
SearchFieldUssClassName55) @
)55@ A
;55A B
m_Placeholder66 
.66 
AddToClassList66 (
(66( )#
PlaceholderUssClassName66) @
)66@ A
;66A B
Add88 
(88 
m_SearchField88 
)88 
;88 
Add99 
(99 
m_Placeholder99 
)99 
;99 
if<< 
(<< 
searchEvent<< 
!=<< 
null<< #
)<<# $
{== 
Search>> 
+=>> 
searchEvent>> %
;>>% &
}?? 
varBB 
	textFieldBB 
=BB 
m_SearchFieldBB )
.BB) *
QBB* +
<BB+ ,
	TextFieldBB, 5
>BB5 6
(BB6 7
	classNameBB7 @
:BB@ A
ToolbarSearchFieldBBB T
.BBT U
textUssClassNameBBU e
)BBe f
;BBf g
	textFieldCC 
.CC 
RegisterCallbackCC &
<CC& '
FocusInEventCC' 3
>CC3 4
(CC4 5
eCC5 6
=>CC7 9
{DD 
	m_FocusedEE 
=EE 
trueEE  
;EE  !'
UpdatePlaceholderVisibilityFF +
(FF+ ,
)FF, -
;FF- .
}GG 
)GG 
;GG 
	textFieldHH 
.HH 
RegisterCallbackHH &
<HH& '
FocusOutEventHH' 4
>HH4 5
(HH5 6
eHH6 7
=>HH8 :
{II 
	m_FocusedJJ 
=JJ 
falseJJ !
;JJ! "'
UpdatePlaceholderVisibilityKK +
(KK+ ,
)KK, -
;KK- .
}LL 
)LL 
;LL 
m_SearchFieldMM 
.MM (
RegisterValueChangedCallbackMM 6
(MM6 7
SearchEventThrottleMM7 J
)MMJ K
;MMK L
ShowPlaceholderPP 
(PP 
)PP 
;PP 
}QQ 	
voidSS 
SearchEventThrottleSS  
(SS  !
ChangeEventSS! ,
<SS, -
stringSS- 3
>SS3 4
evtSS5 8
)SS8 9
{TT 	'
UpdatePlaceholderVisibilityUU '
(UU' (
)UU( )
;UU) *
m_LatestSearchValueVV 
=VV  !
evtVV" %
.VV% &
newValueVV& .
;VV. /
ifWW 
(WW 
m_SearchEventFlagWW !
)WW! "
returnWW# )
;WW) *
m_SearchEventFlagXX 
=XX 
trueXX  $
;XX$ %
m_SearchEventTimerYY 
.YY 
ChangeYY %
(YY% &
timeoutMillisecondsYY& 9
,YY9 :
TimeoutYY; B
.YYB C
InfiniteYYC K
)YYK L
;YYL M
}ZZ 	
public\\ 
string\\ 
Value\\ 
{]] 	
get^^ 
=>^^ 
m_SearchField^^  
.^^  !
value^^! &
;^^& '
set__ 
{`` 
m_SearchFieldaa 
.aa 
valueaa #
=aa$ %
valueaa& +
;aa+ ,'
UpdatePlaceholderVisibilitybb +
(bb+ ,
)bb, -
;bb- .
}cc 
}dd 	
publicff 
voidff !
SetValueWithoutNotifyff )
(ff) *
stringff* 0
valueff1 6
)ff6 7
{gg 	
m_SearchFieldhh 
.hh !
SetValueWithoutNotifyhh /
(hh/ 0
valuehh0 5
)hh5 6
;hh6 7'
UpdatePlaceholderVisibilityii '
(ii' (
)ii( )
;ii) *
}jj 	
voidll '
UpdatePlaceholderVisibilityll (
(ll( )
)ll) *
{mm 	
ifnn 
(nn 
stringnn 
.nn 
IsNullOrEmptynn $
(nn$ %
m_SearchFieldnn% 2
.nn2 3
valuenn3 8
)nn8 9
&&nn: <
!nn= >
	m_Focusednn> G
)nnG H
{oo 
ShowPlaceholderqq 
(qq  
)qq  !
;qq! "
}rr 
elsess 
{tt 
HidePlaceholderuu 
(uu  
)uu  !
;uu! "
}vv 
}ww 	
voidyy 
HidePlaceholderyy 
(yy 
)yy 
{zz 	
m_Placeholder{{ 
.{{ 
AddToClassList{{ (
({{( )
UiConstants{{) 4
.{{4 5
	ussHidden{{5 >
){{> ?
;{{? @
}|| 	
void~~ 
ShowPlaceholder~~ 
(~~ 
)~~ 
{ 	
m_Placeholder
ÄÄ 
.
ÄÄ !
RemoveFromClassList
ÄÄ -
(
ÄÄ- .
UiConstants
ÄÄ. 9
.
ÄÄ9 :
	ussHidden
ÄÄ: C
)
ÄÄC D
;
ÄÄD E
}
ÅÅ 	
[
ÉÉ 	
UsedImplicitly
ÉÉ	 
]
ÉÉ 
public
ÑÑ 
new
ÑÑ 
class
ÑÑ 
UxmlFactory
ÑÑ $
:
ÑÑ% &
UxmlFactory
ÑÑ' 2
<
ÑÑ2 3
	SearchBar
ÑÑ3 <
>
ÑÑ< =
{
ÑÑ> ?
}
ÑÑ@ A
}
ÖÖ 
}ÜÜ ˆ	
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\Threading.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
internal 
static 
class 
	Threading #
{		 
public 
static 
bool 
IsMainThread '
=>( *!
InternalEditorUtility+ @
.@ A%
CurrentThreadIsMainThreadA Z
(Z [
)[ \
;\ ]
public 
static 
void 
EnsureUiThread )
() *
Action* 0
action1 7
)7 8
{ 	
if 
( 
IsMainThread 
) 
{ 
action 
( 
) 
; 
} 
else 
{ 
EditorApplication !
.! "
	delayCall" +
+=, .
(/ 0
)0 1
=>2 4
action5 ;
(; <
)< =
;= >
} 
} 	
} 
} ⁄ 
íD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\TextButton.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{- .
internal		 
class		 

TextButton		 
:		 
TextElement		  +
{

 
public 
const 
string 
UssClassName (
=) *
$str+ >
;> ?
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U

TextButtonU _
)_ `
}` a
.ussa e
"e f
;f g
public 
event 
Action 
Clicked #
;# $
[ 	
UsedImplicitly	 
] 
public 

TextButton 
( 
) 
: 
this "
(" #
null# '
)' (
{ 	
} 	
public 

TextButton 
( 
[ 
	CanBeNull $
]$ %
Action& ,

clickEvent- 7
=8 9
null: >
)> ?
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
Clicked 
+= 

clickEvent !
;! "
this 
. 
AddManipulator 
(  
new  #
	Clickable$ -
(- .
OnClick. 5
)5 6
)6 7
;7 8
} 	
void 
OnClick 
( 
) 
{ 	
Clicked   
?   
.   
Invoke   
(   
)   
;   
Blur!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
override$$ 
bool$$ 
canGrabFocus$$ )
{$$* +
get$$, /
;$$/ 0
}$$1 2
=$$3 4
true$$5 9
;$$9 :
	protected** 
override** 
void** (
ExecuteDefaultActionAtTarget**  <
(**< =
	EventBase**= F
evt**G J
)**J K
{++ 	
base,, 
.,, (
ExecuteDefaultActionAtTarget,, -
(,,- .
evt,,. 1
),,1 2
;,,2 3
if// 
(// 
!// 
(// 
evt// 
is// 
KeyDownEvent// %
	downEvent//& /
)/// 0
)//0 1
return//2 8
;//8 9
if00 
(00 
(00 
	downEvent00 
.00 
keyCode00 "
!=00# %
KeyCode00& -
.00- .
KeypadEnter00. 9
)009 :
&&00; =
(00> ?
	downEvent00? H
.00H I
keyCode00I P
!=00Q S
KeyCode00T [
.00[ \
Return00\ b
)00b c
)00c d
return00e k
;00k l
Clicked22 
?22 
.22 
Invoke22 
(22 
)22 
;22 
	downEvent33 
.33 
StopPropagation33 %
(33% &
)33& '
;33' (
}44 	
[66 	
UsedImplicitly66	 
]66 
public77 
new77 
class77 
UxmlFactory77 $
:77% &
UxmlFactory77' 2
<772 3

TextButton773 =
,77= >

UxmlTraits77? I
>77I J
{77K L
}77L M
}88 
}99 
ôD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\IHistoryPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
	interface 
IHistoryPresenter (
:) *

IPresenter+ 5
{ 
void 
PrevPage 
( 
) 
; 
void 
NextPage 
( 
) 
; 
[ 	
NotNull	 
] 
string 
SelectedRevisionId !
{" #
set$ '
;' (
}) *
void 
RequestGoto 
( 
[ 
NotNull !
]! "
string# )

revisionId* 4
,4 5
HistoryEntryStatus6 H
statusI O
)O P
;P Q
bool$$ 
SupportsRevert$$ 
{$$ 
get$$ !
;$$! "
}$$# $
void++ 
RequestRevert++ 
(++ 
[++ 
NotNull++ #
]++# $
string++% +

revisionId++, 6
,++6 7
[++8 9
NotNull++9 @
]++@ A
IReadOnlyList++B O
<++O P
string++P V
>++V W
files++X ]
)++] ^
;++^ _
},, 
}-- éc
çD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\MainModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{		 
internal

 
class

 
	MainModel

 
:

 

IMainModel

 )
{ 
[ 	
NotNull	 
] 
readonly "
ISourceControlProvider '

m_Provider( 2
;2 3
public 
event 
Action 
< 
bool  
>  ! 
ConflictStatusChange" 6
;6 7
public 
event 
Action 
< 
bool  
>  !!
OperationStatusChange" 7
;7 8
public 
event 
Action 
< 
IProgressInfo )
>) *#
OperationProgressChange+ B
;B C
public 
event 
Action 
< 

IErrorInfo &
>& '
ErrorOccurred( 5
;5 6
public 
event 
Action 
ErrorCleared (
;( )
public 
event 
Action 
< 
bool  
>  !-
!RemoteRevisionsAvailabilityChange" C
;C D
public"" 
event"" 
Action"" 
<"" 
string"" "
>""" #"
BackButtonStateUpdated""$ :
;"": ;
public%% 
event%% 
Action%% 
StateChanged%% (
;%%( )
['' 	
NotNull''	 
]'' 
readonly(( 
IHistoryModel(( 
m_HistoryModel(( -
;((- .
[)) 	
NotNull))	 
])) 
readonly** 
IChangesModel** 
m_ChangesModel** -
;**- .
(,, 	
string,,	 
id,, 
,,, 
string,, 
text,, 
,,,  
Action,,! '
	backEvent,,( 1
),,1 2
?,,2 3
m_BackNavigation,,4 D
;,,D E
public.. 
	MainModel.. 
(.. 
[.. 
NotNull.. !
]..! ""
ISourceControlProvider..# 9
provider..: B
)..B C
{// 	

m_Provider00 
=00 
provider00 !
;00! "
m_HistoryModel11 
=11 
new11  
HistoryModel11! -
(11- .

m_Provider11. 8
)118 9
;119 :
m_ChangesModel22 
=22 
new22  
ChangesModel22! -
(22- .

m_Provider22. 8
)228 9
;229 :
}33 	
public66 
void66 
OnStart66 
(66 
)66 
{77 	

m_Provider99 
.99 "
UpdatedOperationStatus99 -
+=99. 0$
OnUpdatedOperationStatus991 I
;99I J

m_Provider:: 
.:: $
UpdatedOperationProgress:: /
+=::0 2&
OnUpdatedOperationProgress::3 M
;::M N

m_Provider;; 
.;; 
ErrorOccurred;; $
+=;;% '
OnErrorOccurred;;( 7
;;;7 8

m_Provider<< 
.<< 
ErrorCleared<< #
+=<<$ &
OnErrorCleared<<' 5
;<<5 6

m_Provider== 
.==  
UpdatedConflictState== +
+===, ."
OnUpdatedConflictState==/ E
;==E F

m_Provider>> 
.>> .
"UpdatedRemoteRevisionsAvailability>> 9
+=>>: <0
$OnUpdatedRemoteRevisionsAvailability>>= a
;>>a b
m_HistoryModelAA 
.AA 
OnStartAA "
(AA" #
)AA# $
;AA$ %
m_ChangesModelBB 
.BB 
OnStartBB "
(BB" #
)BB# $
;BB$ %
}CC 	
publicFF 
voidFF 
OnStopFF 
(FF 
)FF 
{GG 	

m_ProviderII 
.II "
UpdatedOperationStatusII -
-=II. 0$
OnUpdatedOperationStatusII1 I
;III J

m_ProviderJJ 
.JJ $
UpdatedOperationProgressJJ /
-=JJ0 2&
OnUpdatedOperationProgressJJ3 M
;JJM N

m_ProviderKK 
.KK 
ErrorOccurredKK $
-=KK% '
OnErrorOccurredKK( 7
;KK7 8

m_ProviderLL 
.LL 
ErrorClearedLL #
-=LL$ &
OnErrorClearedLL' 5
;LL5 6

m_ProviderMM 
.MM  
UpdatedConflictStateMM +
-=MM, ."
OnUpdatedConflictStateMM/ E
;MME F

m_ProviderNN 
.NN .
"UpdatedRemoteRevisionsAvailabilityNN 9
-=NN: <0
$OnUpdatedRemoteRevisionsAvailabilityNN= a
;NNa b
m_HistoryModelQQ 
.QQ 
OnStopQQ !
(QQ! "
)QQ" #
;QQ# $
m_ChangesModelRR 
.RR 
OnStopRR !
(RR! "
)RR" #
;RR# $
}SS 	
publicVV 
voidVV 
RestoreStateVV  
(VV  !
IWindowCacheVV! -
cacheVV. 3
)VV3 4
{WW 	
CurrentTabIndexYY 
=YY 
cacheYY #
.YY# $
TabIndexYY$ ,
;YY, -
StateChangedZZ 
?ZZ 
.ZZ 
InvokeZZ  
(ZZ  !
)ZZ! "
;ZZ" #
m_HistoryModel]] 
.]] 
RestoreState]] '
(]]' (
cache]]( -
)]]- .
;]]. /
m_ChangesModel^^ 
.^^ 
RestoreState^^ '
(^^' (
cache^^( -
)^^- .
;^^. /
}__ 	
publicbb 
voidbb 
	SaveStatebb 
(bb 
IWindowCachebb *
cachebb+ 0
)bb0 1
{cc 	
cacheee 
.ee 
TabIndexee 
=ee 
CurrentTabIndexee ,
;ee, -
m_HistoryModelhh 
.hh 
	SaveStatehh $
(hh$ %
cachehh% *
)hh* +
;hh+ ,
m_ChangesModelii 
.ii 
	SaveStateii $
(ii$ %
cacheii% *
)ii* +
;ii+ ,
}jj 	
publicmm 
boolmm $
RemoteRevisionsAvailablemm ,
=>mm- /

m_Providermm0 :
.mm: ;)
GetRemoteRevisionAvailabilitymm; X
(mmX Y
)mmY Z
;mmZ [
publicpp 
boolpp 

Conflictedpp 
=>pp !

m_Providerpp" ,
.pp, -
GetConflictedStatepp- ?
(pp? @
)pp@ A
;ppA B
publicss 
IProgressInfoss 
ProgressInfoss )
=>ss* ,

m_Providerss- 7
.ss7 8
GetProgressStatess8 H
(ssH I
)ssI J
;ssJ K
publicvv 

IErrorInfovv 
	ErrorInfovv #
=>vv$ &

m_Providervv' 1
.vv1 2
GetErrorStatevv2 ?
(vv? @
)vv@ A
;vvA B
publicyy 
intyy 
CurrentTabIndexyy "
{yy# $
getyy% (
;yy( )
setyy* -
;yy- .
}yy/ 0
public|| 
IHistoryModel|| !
ConstructHistoryModel|| 2
(||2 3
)||3 4
{}} 	
return~~ 
m_HistoryModel~~ !
;~~! "
} 	
public
ÇÇ 
IChangesModel
ÇÇ #
ConstructChangesModel
ÇÇ 2
(
ÇÇ2 3
)
ÇÇ3 4
{
ÉÉ 	
return
ÑÑ 
m_ChangesModel
ÑÑ !
;
ÑÑ! "
}
ÖÖ 	
public
àà 
void
àà 

ClearError
àà 
(
àà 
)
àà  
{
ââ 	

m_Provider
ää 
.
ää 

ClearError
ää !
(
ää! "
)
ää" #
;
ää# $
}
ãã 	
public
éé 
void
éé 
RequestSync
éé 
(
éé  
)
éé  !
{
èè 	

m_Provider
êê 
.
êê 
RequestSync
êê "
(
êê" #
)
êê# $
;
êê$ %
}
ëë 	
public
îî 
void
îî 
RequestCancelJob
îî $
(
îî$ %
)
îî% &
{
ïï 	

m_Provider
ññ 
.
ññ 
RequestCancelJob
ññ '
(
ññ' (
)
ññ( )
;
ññ) *
}
óó 	
public
öö 
(
öö 
string
öö 
id
öö 
,
öö 
string
öö !
text
öö" &
,
öö& '
Action
öö( .

backAction
öö/ 9
)
öö9 :
?
öö: ;
GetBackNavigation
öö< M
(
ööM N
)
ööN O
{
õõ 	
return
úú 
m_BackNavigation
úú #
;
úú# $
}
ùù 	
public
†† 
void
†† $
RegisterBackNavigation
†† *
(
††* +
string
††+ 1
id
††2 4
,
††4 5
string
††6 <
text
††= A
,
††A B
Action
††C I

backAction
††J T
)
††T U
{
°° 	
Assert
¢¢ 
.
¢¢ 
IsTrue
¢¢ 
(
¢¢ 
m_BackNavigation
¢¢ *
==
¢¢+ -
null
¢¢. 2
,
¢¢2 3
$str
¢¢4 t
)
¢¢t u
;
¢¢u v
m_BackNavigation
££ 
=
££ 
(
££  
id
££  "
,
££" #
text
££$ (
,
££( )

backAction
££* 4
)
££4 5
;
££5 6$
BackButtonStateUpdated
§§ "
?
§§" #
.
§§# $
Invoke
§§$ *
(
§§* +
text
§§+ /
)
§§/ 0
;
§§0 1
}
•• 	
public
®® 
bool
®® &
UnregisterBackNavigation
®® ,
(
®®, -
string
®®- 3
id
®®4 6
)
®®6 7
{
©© 	
if
™™ 
(
™™ 
m_BackNavigation
™™  
?
™™  !
.
™™! "
id
™™" $
!=
™™% '
id
™™( *
)
™™* +
return
™™, 2
false
™™3 8
;
™™8 9
m_BackNavigation
¨¨ 
=
¨¨ 
null
¨¨ #
;
¨¨# $$
BackButtonStateUpdated
≠≠ "
?
≠≠" #
.
≠≠# $
Invoke
≠≠$ *
(
≠≠* +
null
≠≠+ /
)
≠≠/ 0
;
≠≠0 1
return
ÆÆ 
true
ÆÆ 
;
ÆÆ 
}
ØØ 	
void
µµ 2
$OnUpdatedRemoteRevisionsAvailability
µµ 1
(
µµ1 2
bool
µµ2 6
	available
µµ7 @
)
µµ@ A
{
∂∂ 	/
!RemoteRevisionsAvailabilityChange
∑∑ -
?
∑∑- .
.
∑∑. /
Invoke
∑∑/ 5
(
∑∑5 6
	available
∑∑6 ?
)
∑∑? @
;
∑∑@ A
}
∏∏ 	
void
ææ $
OnUpdatedConflictState
ææ #
(
ææ# $
bool
ææ$ (

conflicted
ææ) 3
)
ææ3 4
{
øø 	"
ConflictStatusChange
¿¿  
?
¿¿  !
.
¿¿! "
Invoke
¿¿" (
(
¿¿( )

conflicted
¿¿) 3
)
¿¿3 4
;
¿¿4 5
}
¡¡ 	
void
√√ &
OnUpdatedOperationStatus
√√ %
(
√√% &
bool
√√& *

inProgress
√√+ 5
)
√√5 6
{
ƒƒ 	#
OperationStatusChange
≈≈ !
?
≈≈! "
.
≈≈" #
Invoke
≈≈# )
(
≈≈) *

inProgress
≈≈* 4
)
≈≈4 5
;
≈≈5 6
}
∆∆ 	
void
»» (
OnUpdatedOperationProgress
»» '
(
»»' (
IProgressInfo
»»( 5
progressInfo
»»6 B
)
»»B C
{
…… 	%
OperationProgressChange
   #
?
  # $
.
  $ %
Invoke
  % +
(
  + ,
progressInfo
  , 8
)
  8 9
;
  9 :
}
ÀÀ 	
void
ÕÕ 
OnErrorOccurred
ÕÕ 
(
ÕÕ 

IErrorInfo
ÕÕ '
	errorInfo
ÕÕ( 1
)
ÕÕ1 2
{
ŒŒ 	
ErrorOccurred
œœ 
?
œœ 
.
œœ 
Invoke
œœ !
(
œœ! "
	errorInfo
œœ" +
)
œœ+ ,
;
œœ, -
}
–– 	
void
““ 
OnErrorCleared
““ 
(
““ 
)
““ 
{
”” 	
ErrorCleared
‘‘ 
?
‘‘ 
.
‘‘ 
Invoke
‘‘  
(
‘‘  !
)
‘‘! "
;
‘‘" #
}
’’ 	
}
÷÷ 
}◊◊ ∂
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\IHistoryView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal		 
	interface		 
IHistoryView		 #
:		$ %
IView		& +
<		+ ,
IHistoryPresenter		, =
>		= >
{

 
void 
SetBusyStatus 
( 
bool 
busy  $
)$ %
;% &
void 
SetHistoryList 
( 
IReadOnlyList )
<) *
IHistoryEntry* 7
>7 8
list9 =
)= >
;> ?
void 
SetPage 
( 
int 
page 
, 
int "
max# &
)& '
;' (
void$$ 
SetSelection$$ 
($$ 
[$$ 
NotNull$$ "
]$$" #
IHistoryEntry$$$ 1
entry$$2 7
)$$7 8
;$$8 9
bool-- 
DisplayDialogue-- 
(-- 
[-- 
NotNull-- %
]--% &
string--' -
title--. 3
,--3 4
[--5 6
NotNull--6 =
]--= >
string--? E
message--F M
,--M N
[--O P
NotNull--P W
]--W X
string--Y _
affirmative--` k
)--k l
;--l m
bool77 
DisplayDialogue77 
(77 
[77 
NotNull77 %
]77% &
string77' -
title77. 3
,773 4
[775 6
NotNull776 =
]77= >
string77? E
message77F M
,77M N
[77O P
NotNull77P W
]77W X
string77Y _
affirmative77` k
,77k l
[77m n
NotNull77n u
]77u v
string77w }
negative	77~ Ü
)
77Ü á
;
77á à
}88 
}99 ÑÉ
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\UserInterface\ToolbarButton.cs
	namespace		 	
Unity		
 
.		 
Cloud		 
.		 
Collaborate		 !
.		! "
UserInterface		" /
{

 
internal 
class 
ToolbarButton  
:! "

SubToolbar# -
{ 
	protected 
enum 
ToolbarButtonState )
{ 	
NeedToEnableCollab 
, 
UpToDate 
, 
Conflict 
, 
OperationError 
, 
ServerHasChanges 
, 
FilesToPush 
, 

InProgress 
, 
Disabled 
, 
Offline 
} 	
ToolbarButtonState 
m_CurrentState )
;) *
string 
m_ErrorMessage 
; 
readonly 

Dictionary 
< 
ToolbarButtonState .
,. /

GUIContent0 :
>: ;
m_IconCache< G
=H I
newJ M

DictionaryN X
<X Y
ToolbarButtonStateY k
,k l

GUIContentm w
>w x
(x y
)y z
;z {*
ButtonWithAnimatedIconRotation &
m_CollabButton' 5
;5 6
public 
ToolbarButton 
( 
) 
{   	
Collab!! 
.!! 
instance!! 
.!! 
StateChanged!! (
+=!!) + 
OnCollabStateChanged!!, @
;!!@ A
UnityConnect"" 
."" 
instance"" !
.""! "
StateChanged""" .
+=""/ 1&
OnUnityConnectStateChanged""2 L
;""L M
UnityConnect## 
.## 
instance## !
.##! "
UserStateChanged##" 2
+=##3 5*
OnUnityConnectUserStateChanged##6 T
;##T U
}$$ 	
~&& 	
ToolbarButton&&	 
(&& 
)&& 
{'' 	
Collab(( 
.(( 
instance(( 
.(( 
StateChanged(( (
-=(() + 
OnCollabStateChanged((, @
;((@ A
UnityConnect)) 
.)) 
instance)) !
.))! "
StateChanged))" .
-=))/ 1&
OnUnityConnectStateChanged))2 L
;))L M
UnityConnect** 
.** 
instance** !
.**! "
UserStateChanged**" 2
-=**3 5*
OnUnityConnectUserStateChanged**6 T
;**T U
}++ 	
void-- *
OnUnityConnectUserStateChanged-- +
(--+ ,
UserInfo--, 4
state--5 :
)--: ;
{.. 	
Update// 
(// 
)// 
;// 
}00 	
void22 &
OnUnityConnectStateChanged22 '
(22' (
ConnectInfo22( 3
state224 9
)229 :
{33 	
Update44 
(44 
)44 
;44 
}55 	
void77  
OnCollabStateChanged77 !
(77! "

CollabInfo77" ,
info77- 1
)771 2
{88 	
Update99 
(99 
)99 
;99 
}:: 	
[<< 	
	CanBeNull<<	 
]<< 
static== 
Texture== 
LoadIcon== 
(==  
[==  !
NotNull==! (
]==( )
string==* 0
iconName==1 9
)==9 :
{>> 	
var?? 
hidpi?? 
=?? 
EditorGUIUtility?? (
.??( )
pixelsPerPoint??) 7
>??8 9
$num??: <
???= >
$str??? D
:??E F
string??G M
.??M N
Empty??N S
;??S T
return@@ 
AssetDatabase@@  
.@@  !
LoadAssetAtPath@@! 0
<@@0 1
Texture@@1 8
>@@8 9
(@@9 :
$"@@: <
{@@< =
CollaborateWindow@@= N
.@@N O
IconPath@@O W
}@@W X
/@@X Y
{@@Y Z
iconName@@Z b
}@@b c
-@@c d
{@@d e
(@@e f
EditorGUIUtility@@f v
.@@v w
	isProSkin	@@w Ä
?
@@Å Ç
$str
@@É â
:
@@ä ã
$str
@@å ì
)
@@ì î
}
@@î ï
{
@@ï ñ
hidpi
@@ñ õ
}
@@õ ú
.png
@@ú †
"
@@† °
)
@@° ¢
;
@@¢ £
}AA 	
[CC 	
NotNullCC	 
]CC 

GUIContentDD 
GetIconForStateDD "
(DD" #
)DD# $
{EE 	
ifGG 
(GG 
!GG 
m_IconCacheGG 
.GG 
TryGetValueGG (
(GG( )
m_CurrentStateGG) 7
,GG7 8
outGG9 <
varGG= @
contentGGA H
)GGH I
)GGI J
{HH 
stringII 
iconNameII 
;II  
stringJJ 
tooltipJJ 
;JJ 
switchKK 
(KK 
m_CurrentStateKK &
)KK& '
{LL 
caseMM 
ToolbarButtonStateMM +
.MM+ ,
NeedToEnableCollabMM, >
:MM> ?
iconNameNN  
=NN! "
$strNN# 0
;NN0 1
tooltipOO 
=OO  !
$strOO" >
;OO> ?
breakPP 
;PP 
caseQQ 
ToolbarButtonStateQQ +
.QQ+ ,
UpToDateQQ, 4
:QQ4 5
iconNameRR  
=RR! "
$strRR# 0
;RR0 1
tooltipSS 
=SS  !
$strSS" 7
;SS7 8
breakTT 
;TT 
caseUU 
ToolbarButtonStateUU +
.UU+ ,
ConflictUU, 4
:UU4 5
iconNameVV  
=VV! "
$strVV# 6
;VV6 7
tooltipWW 
=WW  !
$strWW" R
;WWR S
breakXX 
;XX 
caseYY 
ToolbarButtonStateYY +
.YY+ ,
OperationErrorYY, :
:YY: ;
iconNameZZ  
=ZZ! "
$strZZ# 6
;ZZ6 7
tooltip[[ 
=[[  !
$str[[" N
;[[N O
break\\ 
;\\ 
case]] 
ToolbarButtonState]] +
.]]+ ,
ServerHasChanges]], <
:]]< =
iconName^^  
=^^! "
$str^^# 9
;^^9 :
tooltip__ 
=__  !
$str__" L
;__L M
break`` 
;`` 
caseaa 
ToolbarButtonStateaa +
.aa+ ,
FilesToPushaa, 7
:aa7 8
iconNamebb  
=bb! "
$strbb# B
;bbB C
tooltipcc 
=cc  !
$strcc" >
;cc> ?
breakdd 
;dd 
caseee 
ToolbarButtonStateee +
.ee+ ,

InProgressee, 6
:ee6 7
iconNameff  
=ff! "
$strff# 9
;ff9 :
tooltipgg 
=gg  !
$strgg" :
;gg: ;
breakhh 
;hh 
caseii 
ToolbarButtonStateii +
.ii+ ,
Disabledii, 4
:ii4 5
iconNamejj  
=jj! "
$strjj# 0
;jj0 1
tooltipkk 
=kk  !
$strkk" 7
;kk7 8
breakll 
;ll 
casemm 
ToolbarButtonStatemm +
.mm+ ,
Offlinemm, 3
:mm3 4
iconNamenn  
=nn! "
$strnn# 8
;nn8 9
tooltipoo 
=oo  !
$stroo" I
;ooI J
breakpp 
;pp 
defaultqq 
:qq 
throwrr 
newrr !'
ArgumentOutOfRangeExceptionrr" =
(rr= >
)rr> ?
;rr? @
}ss 
contentvv 
=vv 
newvv 

GUIContentvv (
(vv( )
LoadIconvv) 1
(vv1 2
iconNamevv2 :
)vv: ;
,vv; <
$"vv= ?
Collaborate ‚Ä¢ vv? M
{vvM N
tooltipvvN U
}vvU V
"vvV W
)vvW X
;vvX Y
m_IconCacheww 
[ww 
m_CurrentStateww *
]ww* +
=ww, -
contentww. 5
;ww5 6
}xx 
var{{ 
icon{{ 
={{ 
new{{ 

GUIContent{{ %
({{% &
content{{& -
){{- .
;{{. /
if|| 
(|| 
!|| 
string|| 
.|| 
IsNullOrEmpty|| %
(||% &
m_ErrorMessage||& 4
)||4 5
)||5 6
{}} 
icon~~ 
.~~ 
tooltip~~ 
=~~ 
$"~~ !
Collaborate ‚Ä¢ ~~! /
{~~/ 0
m_ErrorMessage~~0 >
}~~> ?
"~~? @
;~~@ A
} 
return
ÅÅ 
icon
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
override
ÑÑ 
void
ÑÑ 
OnGUI
ÑÑ "
(
ÑÑ" #
Rect
ÑÑ# '
rect
ÑÑ( ,
)
ÑÑ, -
{
ÖÖ 	
GUIStyle
ÜÜ 
collabButtonStyle
ÜÜ &
=
ÜÜ' (
$str
ÜÜ) 5
;
ÜÜ5 6
var
áá 
disable
áá 
=
áá 
EditorApplication
áá +
.
áá+ ,
	isPlaying
áá, 5
;
áá5 6
using
àà 
(
àà 
new
àà 
	EditorGUI
àà  
.
àà  !
DisabledScope
àà! .
(
àà. /
disable
àà/ 6
)
àà6 7
)
àà7 8
{
ââ 
var
ää 
icon
ää 
=
ää 
GetIconForState
ää *
(
ää* +
)
ää+ ,
;
ää, -
EditorGUIUtility
ãã  
.
ãã  !
SetIconSize
ãã! ,
(
ãã, -
new
ãã- 0
Vector2
ãã1 8
(
ãã8 9
$num
ãã9 ;
,
ãã; <
$num
ãã= ?
)
ãã? @
)
ãã@ A
;
ããA B
if
åå 
(
åå 
GUI
åå 
.
åå 
Button
åå 
(
åå 
rect
åå #
,
åå# $
icon
åå% )
,
åå) *
collabButtonStyle
åå+ <
)
åå< =
)
åå= >
{
çç 
CollaborateWindow
éé %
.
éé% &
Init
éé& *
(
éé* +
)
éé+ ,
;
éé, -
}
èè 
EditorGUIUtility
êê  
.
êê  !
SetIconSize
êê! ,
(
êê, -
Vector2
êê- 4
.
êê4 5
zero
êê5 9
)
êê9 :
;
êê: ;
}
ëë 
}
íí 	
public
îî 
void
îî 
Update
îî 
(
îî 
)
îî 
{
ïï 	
var
ññ 
currentState
ññ 
=
ññ 
GetCurrentState
ññ .
(
ññ. /
)
ññ/ 0
;
ññ0 1
if
òò 
(
òò 
m_CurrentState
òò 
==
òò !
currentState
òò" .
)
òò. /
return
òò0 6
;
òò6 7
m_CurrentState
ôô 
=
ôô 
currentState
ôô )
;
ôô) *
Toolbar
öö 
.
öö 
RepaintToolbar
öö "
(
öö" #
)
öö# $
;
öö$ %
}
õõ 	
	protected
ùù 
virtual
ùù  
ToolbarButtonState
ùù ,
GetCurrentState
ùù- <
(
ùù< =
)
ùù= >
{
ûû 	
var
üü 
currentState
üü 
=
üü  
ToolbarButtonState
üü 1
.
üü1 2
UpToDate
üü2 :
;
üü: ;
var
†† 
networkAvailable
††  
=
††! "
UnityConnect
††# /
.
††/ 0
instance
††0 8
.
††8 9
connectInfo
††9 D
.
††D E
online
††E K
&&
††L N
UnityConnect
††O [
.
††[ \
instance
††\ d
.
††d e
connectInfo
††e p
.
††p q
loggedIn
††q y
;
††y z
m_ErrorMessage
°° 
=
°° 
string
°° #
.
°°# $
Empty
°°$ )
;
°°) *
if
££ 
(
££ 
UnityConnect
££ 
.
££ 
instance
££ %
.
££% &#
isDisableCollabWindow
££& ;
)
££; <
{
§§ 
currentState
•• 
=
••  
ToolbarButtonState
•• 1
.
••1 2
Disabled
••2 :
;
••: ;
}
¶¶ 
else
ßß 
if
ßß 
(
ßß 
networkAvailable
ßß %
)
ßß% &
{
®® 
var
©© 
collab
©© 
=
©© 
Collab
©© #
.
©©# $
instance
©©$ ,
;
©©, -
var
™™ 
currentInfo
™™ 
=
™™  !
collab
™™" (
.
™™( )

collabInfo
™™) 3
;
™™3 4
if
¨¨ 
(
¨¨ 
!
¨¨ 
currentInfo
¨¨  
.
¨¨  !
ready
¨¨! &
)
¨¨& '
{
≠≠ 
currentState
ÆÆ  
=
ÆÆ! " 
ToolbarButtonState
ÆÆ# 5
.
ÆÆ5 6

InProgress
ÆÆ6 @
;
ÆÆ@ A
}
ØØ 
else
∞∞ 
if
∞∞ 
(
∞∞ 
collab
∞∞ 
.
∞∞  
GetError
∞∞  (
(
∞∞( )
UnityConnect
∞∞) 5
.
∞∞5 6
UnityErrorFilter
∞∞6 F
.
∞∞F G
	ByContext
∞∞G P
|
∞∞Q R
UnityConnect
∞∞S _
.
∞∞_ `
UnityErrorFilter
∞∞` p
.
∞∞p q
ByChild
∞∞q x
,
∞∞x y
out
∞∞z }
var∞∞~ Å
errInfo∞∞Ç â
)∞∞â ä
&&∞∞ã ç
errInfo
±± 
.
±± 
priority
±± $
<=
±±% '
(
±±( )
int
±±) ,
)
±±, -
UnityConnect
±±- 9
.
±±9 : 
UnityErrorPriority
±±: L
.
±±L M
Error
±±M R
)
±±R S
{
≤≤ 
currentState
≥≥  
=
≥≥! " 
ToolbarButtonState
≥≥# 5
.
≥≥5 6
OperationError
≥≥6 D
;
≥≥D E
m_ErrorMessage
¥¥ "
=
¥¥# $
errInfo
¥¥% ,
.
¥¥, -
shortMsg
¥¥- 5
;
¥¥5 6
}
µµ 
else
∂∂ 
if
∂∂ 
(
∂∂ 
currentInfo
∂∂ $
.
∂∂$ %

inProgress
∂∂% /
)
∂∂/ 0
{
∑∑ 
currentState
∏∏  
=
∏∏! " 
ToolbarButtonState
∏∏# 5
.
∏∏5 6

InProgress
∏∏6 @
;
∏∏@ A
}
ππ 
else
∫∫ 
{
ªª 
var
ºº 
collabEnabled
ºº %
=
ºº& '
Collab
ºº( .
.
ºº. /
instance
ºº/ 7
.
ºº7 8.
 IsCollabEnabledForCurrentProject
ºº8 X
(
ººX Y
)
ººY Z
;
ººZ [
if
ææ 
(
ææ 
UnityConnect
ææ $
.
ææ$ %
instance
ææ% -
.
ææ- .
projectInfo
ææ. 9
.
ææ9 :
projectBound
ææ: F
==
ææG I
false
ææJ O
||
ææP R
!
ææS T
collabEnabled
ææT a
)
ææa b
{
øø 
currentState
¿¿ $
=
¿¿% & 
ToolbarButtonState
¿¿' 9
.
¿¿9 : 
NeedToEnableCollab
¿¿: L
;
¿¿L M
}
¡¡ 
else
¬¬ 
if
¬¬ 
(
¬¬ 
currentInfo
¬¬ (
.
¬¬( )
update
¬¬) /
)
¬¬/ 0
{
√√ 
currentState
ƒƒ $
=
ƒƒ% & 
ToolbarButtonState
ƒƒ' 9
.
ƒƒ9 :
ServerHasChanges
ƒƒ: J
;
ƒƒJ K
}
≈≈ 
else
∆∆ 
if
∆∆ 
(
∆∆ 
currentInfo
∆∆ (
.
∆∆( )
conflict
∆∆) 1
)
∆∆1 2
{
«« 
currentState
»» $
=
»»% & 
ToolbarButtonState
»»' 9
.
»»9 :
Conflict
»»: B
;
»»B C
}
…… 
else
   
if
   
(
   
currentInfo
   (
.
  ( )
publish
  ) 0
)
  0 1
{
ÀÀ 
currentState
ÃÃ $
=
ÃÃ% & 
ToolbarButtonState
ÃÃ' 9
.
ÃÃ9 :
FilesToPush
ÃÃ: E
;
ÃÃE F
}
ÕÕ 
}
ŒŒ 
}
œœ 
else
–– 
{
—— 
currentState
““ 
=
““  
ToolbarButtonState
““ 1
.
““1 2
Offline
““2 9
;
““9 :
}
”” 
return
’’ 
currentState
’’ 
;
’’  
}
÷÷ 	
}
◊◊ 
}ÿÿ ”.
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\StartPageView.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "
Views

" '
{ 
internal 
class 
StartPageView  
:! "
PageComponent# 0
,0 1

IStartView2 <
{ 
public 
const 
string 
UssClassName (
=) *
$str+ <
;< =
public 
const 
string 
UssTitleClassName -
=. /
UssClassName0 <
+= >
$str? H
;H I
public 
const 
string 
UssButtonClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
StartPageViewW d
)d e
}e f
.uxmlf k
"k l
;l m
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
StartPageViewU b
)b c
}c d
.ussd h
"h i
;i j
IStartPresenter 
m_Presenter #
;# $
readonly 
Label 
m_Text 
; 
readonly 
Button 
m_Button  
;  !
public 
StartPageView 
( 
) 
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase 
. 
LoadAssetAtPath )
<) *
VisualTreeAsset* 9
>9 :
(: ;
k_LayoutPath; G
)G H
.H I
	CloneTreeI R
(R S
thisS W
)W X
;X Y
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
m_Text   
=   
this   
.   
Q   
<   
Label   !
>  ! "
(  " #
	className  # ,
:  , -
UssTitleClassName  . ?
)  ? @
;  @ A
m_Button!! 
=!! 
this!! 
.!! 
Q!! 
<!! 
Button!! $
>!!$ %
(!!% &
	className!!& /
:!!/ 0
UssButtonClassName!!1 C
)!!C D
;!!D E
}"" 	
public%% 
IStartPresenter%% 
	Presenter%% (
{&& 	
set'' 
{(( 
m_Presenter)) 
=)) 
value)) #
;))# $
SetupEvents** 
(** 
)** 
;** 
if,, 
(,, 
Active,, 
),, 
{-- 
m_Presenter.. 
...  
Start..  %
(..% &
)..& '
;..' (
}// 
}00 
}11 	
	protected44 
override44 
void44 
	SetActive44  )
(44) *
)44* +
{55 	
m_Presenter66 
?66 
.66 
Start66 
(66 
)66  
;66  !
}77 	
	protected:: 
override:: 
void:: 
SetInactive::  +
(::+ ,
)::, -
{;; 	
m_Presenter<< 
?<< 
.<< 
Stop<< 
(<< 
)<< 
;<<  
}== 	
void?? 
SetupEvents?? 
(?? 
)?? 
{@@ 	
m_ButtonAA 
.AA 
	clickableAA 
.AA 
clickedAA &
+=AA' )
m_PresenterAA* 5
.AA5 6
RequestStartAA6 B
;AAB C
}BB 	
publicEE 
stringEE 
TextEE 
{FF 	
setGG 
=>GG 
m_TextGG 
.GG 
textGG 
=GG  
valueGG! &
;GG& '
}HH 	
publicKK 
stringKK 

ButtonTextKK  
{LL 	
setMM 
=>MM 
m_ButtonMM 
.MM 
textMM  
=MM! "
valueMM# (
;MM( )
}NN 	
publicQQ 
voidQQ 
SetButtonVisibleQQ $
(QQ$ %
boolQQ% )
	isVisibleQQ* 3
)QQ3 4
{RR 	
ifSS 
(SS 
	isVisibleSS 
)SS 
{TT 
m_ButtonUU 
.UU 
RemoveFromClassListUU ,
(UU, -
UiConstantsUU- 8
.UU8 9
	ussHiddenUU9 B
)UUB C
;UUC D
}VV 
elseWW 
{XX 
m_ButtonYY 
.YY 
AddToClassListYY '
(YY' (
UiConstantsYY( 3
.YY3 4
	ussHiddenYY4 =
)YY= >
;YY> ?
}ZZ 
}[[ 	
[]] 	
UsedImplicitly]]	 
]]] 
public^^ 
new^^ 
class^^ 
UxmlFactory^^ $
:^^% &
UxmlFactory^^' 2
<^^2 3
StartPageView^^3 @
>^^@ A
{^^B C
}^^D E
}__ 
}`` ∑
õD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\ProgressInfo.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
struct 
ProgressInfo  
:! "
IProgressInfo# 0
{ 
public 
ProgressInfo 
( 
string "
title# (
=) *
default+ 2
,2 3
string4 :
details; B
=C D
defaultE L
,L M
intN Q
currentCountR ^
=_ `
defaulta h
,h i
intj m

totalCountn x
=y z
default	{ Ç
,
Ç É
string
Ñ ä
lastErrorString
ã ö
=
õ ú
default
ù §
,
§ •
ulong
¶ ´
	lastError
¨ µ
=
∂ ∑
default
∏ ø
,
ø ¿
bool
¡ ≈
	canCancel
∆ œ
=
– —
false
“ ◊
,
◊ ÿ
bool
Ÿ ›$
percentageProgressType
ﬁ Ù
=
ı ˆ
false
˜ ¸
,
¸ ˝
int
˛ Å 
percentageComplete
Ç î
=
ï ñ
default
ó û
)
û ü
{ 	
Title		 
=		 
title		 
;		 
Details

 
=

 
details

 
;

 
CurrentCount 
= 
currentCount '
;' (

TotalCount 
= 

totalCount #
;# $
LastErrorString 
= 
lastErrorString -
;- .
	LastError 
= 
	lastError !
;! "
	CanCancel 
= 
	canCancel !
;! ""
PercentageProgressType "
=# $"
percentageProgressType% ;
;; <
PercentageComplete 
=  
percentageComplete! 3
;3 4
} 	
public 
string 
Title 
{ 
get !
;! "
}# $
public 
string 
Details 
{ 
get  #
;# $
}% &
public 
int 
CurrentCount 
{  !
get" %
;% &
}' (
public 
int 

TotalCount 
{ 
get  #
;# $
}% &
public 
string 
LastErrorString %
{& '
get( +
;+ ,
}- .
public 
ulong 
	LastError 
{  
get! $
;$ %
}& '
public   
bool   
	CanCancel   
{   
get    #
;  # $
}  % &
public"" 
bool"" "
PercentageProgressType"" *
{""+ ,
get""- 0
;""0 1
}""2 3
public$$ 
int$$ 
PercentageComplete$$ %
{$$& '
get$$( +
;$$+ ,
}$$- .
}%% 
}&& Œ
íD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\IPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
	interface 

IPresenter !
{ 
void 
Start 
( 
) 
; 
void 
Stop 
( 
) 
; 
} 
} æ
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\ErrorInfo.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
struct 
	ErrorInfo 
: 

IErrorInfo  *
{ 
public 
	ErrorInfo 
( 
int 
code !
=" #
default$ +
,+ ,
int- 0
priority1 9
=: ;
default< C
,C D
intE H
	behaviourI R
=S T
defaultU \
,\ ]
string^ d
messagee l
=m n
defaulto v
,v w
stringx ~
shortMessage	 ã
=
å ç
default
é ï
,
ï ñ
string
ó ù

codeString
û ®
=
© ™
default
´ ≤
)
≤ ≥
{ 	
Code		 
=		 
code		 
;		 
Priority

 
=

 
(

 
ErrorInfoPriority

 )
)

) *
priority

* 2
;

2 3
	Behaviour 
= 
( 
ErrorInfoBehavior *
)* +
	behaviour+ 4
;4 5
Message 
= 
message 
; 
ShortMessage 
= 
shortMessage '
;' (

CodeString 
= 

codeString #
;# $
} 	
public 
int 
Code 
{ 
get 
; 
}  
public 
ErrorInfoPriority  
Priority! )
{* +
get, /
;/ 0
}1 2
public 
ErrorInfoBehavior  
	Behaviour! *
{+ ,
get- 0
;0 1
}2 3
public 
string 
Message 
{ 
get  #
;# $
}% &
public 
string 
ShortMessage "
{# $
get% (
;( )
}* +
public 
string 

CodeString  
{! "
get# &
;& '
}( )
} 
} £
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ErrorPageView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
internal		 
class		 
ErrorPageView		  
:		! "
PageComponent		# 0
{

 
public 
const 
string 
UssClassName (
=) *
$str+ <
;< =
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
ErrorPageViewW d
)d e
}e f
.uxmlf k
"k l
;l m
bool 
	m_Visible 
; 
public 
ErrorPageView 
( 
) 
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase 
. 
LoadAssetAtPath )
<) *
VisualTreeAsset* 9
>9 :
(: ;
k_LayoutPath; G
)G H
.H I
	CloneTreeI R
(R S
thisS W
)W X
;X Y
} 	
	protected 
override 
void 
	SetActive  )
() *
)* +
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
	protected 
override 
void 
SetInactive  +
(+ ,
), -
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
[!! 	
UsedImplicitly!!	 
]!! 
public"" 
new"" 
class"" 
UxmlFactory"" $
:""% &
UxmlFactory""' 2
<""2 3
ErrorPageView""3 @
>""@ A
{""B C
}""D E
}## 
}$$  *
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangesGroupHeader.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "

Components

" ,
{ 
internal 
class 
ChangesGroupHeader %
:& '
VisualElement( 5
{ 
public 
const 
string 
UssClassName (
=) *
$str+ A
;A B
public 
const 
string 
NameUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string &
OverflowButtonUssClassName 6
=7 8
UssClassName9 E
+F G
$strH [
;[ \
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
ChangesGroupHeaderW i
)i j
}j k
.uxmlk p
"p q
;q r
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
ChangesGroupHeaderU g
)g h
}h i
.ussi m
"m n
;n o
readonly 
Label 
m_GroupName "
;" #
readonly 

IconButton 
m_OverflowButton ,
;, -
public 
event 
Action 
< 
float !
,! "
float# (
>( )#
OnOverflowButtonClicked* A
;A B
public 
ChangesGroupHeader !
(! "
)" #
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase 
. 
LoadAssetAtPath )
<) *
VisualTreeAsset* 9
>9 :
(: ;
k_LayoutPath; G
)G H
.H I
	CloneTreeI R
(R S
thisS W
)W X
;X Y
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
m_GroupName"" 
="" 
this"" 
."" 
Q""  
<""  !
Label""! &
>""& '
(""' (
	className""( 1
:""1 2
NameUssClassName""3 C
)""C D
;""D E
m_OverflowButton## 
=## 
this## #
.### $
Q##$ %
<##% &

IconButton##& 0
>##0 1
(##1 2
	className##2 ;
:##; <&
OverflowButtonUssClassName##= W
)##W X
;##X Y
m_OverflowButton&& 
.&& 
Clicked&& $
+=&&% '
TriggerOverflowMenu&&( ;
;&&; <
}'' 	
public)) 
void)) !
SetEnableOverflowMenu)) )
())) *
bool))* .
enable))/ 5
)))5 6
{** 	
if++ 
(++ 
enable++ 
)++ 
{,, 
m_OverflowButton--  
.--  !
RemoveFromClassList--! 4
(--4 5
UiConstants--5 @
.--@ A
	ussHidden--A J
)--J K
;--K L
}.. 
else// 
{00 
m_OverflowButton11  
.11  !
AddToClassList11! /
(11/ 0
UiConstants110 ;
.11; <
	ussHidden11< E
)11E F
;11F G
}22 
}33 	
void55 
TriggerOverflowMenu55  
(55  !
)55! "
{66 	
var77 
(77 
x77 
,77 
y77 
)77 
=77 
MenuUtilities77 &
.77& '
GetMenuPosition77' 6
(776 7
m_OverflowButton777 G
,77G H
MenuUtilities77I V
.77V W
AnchorPoint77W b
.77b c
BottomRight77c n
)77n o
;77o p#
OnOverflowButtonClicked88 #
?88# $
.88$ %
Invoke88% +
(88+ ,
x88, -
,88- .
y88/ 0
)880 1
;881 2
}99 	
public;; 
void;; 
UpdateGroupName;; #
(;;# $
string;;$ *
text;;+ /
);;/ 0
{<< 	
m_GroupName== 
.== 
text== 
=== 
text== #
;==# $
}>> 	
[@@ 	
UsedImplicitly@@	 
]@@ 
publicAA 
newAA 
classAA 
UxmlFactoryAA $
:AA% &
UxmlFactoryAA' 2
<AA2 3
ChangesGroupHeaderAA3 E
>AAE F
{AAG H
}AAI J
}BB 
}CC Æ,
ùD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Common\ScriptableObjectSingleton.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "
Common

" (
{ 
internal 
class %
ScriptableObjectSingleton ,
<, -
T- .
>. /
:0 1
ScriptableObject2 B
whereC H
TI J
:K L
ScriptableObjectM ]
{ 
static 
T 

s_Instance 
; 
public 
static 
T 
Instance  
{ 	
get 
{ 
if 
( 

s_Instance 
== !
null" &
)& '
CreateAndLoad !
(! "
)" #
;# $
return 

s_Instance !
;! "
} 
} 	
	protected %
ScriptableObjectSingleton +
(+ ,
), -
{ 	
if 
( 

s_Instance 
!= 
null "
)" #
{ 
Debug 
. 
LogError 
( 
$str :
): ;
;; <
} 
else 
{   

s_Instance!! 
=!! 
this!! !
as!!" $
T!!% &
;!!& '
Assert"" 
."" 
IsFalse"" 
("" 

s_Instance"" )
==""* ,
null""- 1
)""1 2
;""2 3
}## 
}$$ 	
static&& 
void&& 
CreateAndLoad&& !
(&&! "
)&&" #
{'' 	
Assert(( 
.(( 
IsTrue(( 
((( 

s_Instance(( $
==((% '
null((( ,
)((, -
;((- .
var** 
filePath** 
=** 
GetFilePath** &
(**& '
)**' (
;**( )
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &
filePath++& .
)++. /
&&++0 2
File++3 7
.++7 8
Exists++8 >
(++> ?
filePath++? G
)++G H
)++H I
{,, !
InternalEditorUtility-- %
.--% &'
LoadSerializedFileAndForget--& A
(--A B
filePath--B J
)--J K
;--K L
}.. 
if00 
(00 

s_Instance00 
==00 
null00 "
)00" #
{11 
var22 
inst22 
=22 
CreateInstance22 )
<22) *
T22* +
>22+ ,
(22, -
)22- .
as22/ 1%
ScriptableObjectSingleton222 K
<22K L
T22L M
>22M N
;22N O
Assert33 
.33 
IsFalse33 
(33 
inst33 #
==33$ &
null33' +
)33+ ,
;33, -
inst44 
.44 
	hideFlags44 
=44  
	HideFlags44! *
.44* +
HideAndDontSave44+ :
;44: ;
inst55 
.55 
Save55 
(55 
)55 
;55 
}66 
Assert88 
.88 
IsFalse88 
(88 

s_Instance88 %
==88& (
null88) -
)88- .
;88. /
}99 	
	protected;; 
void;; 
Save;; 
(;; 
);; 
{<< 	
if== 
(== 

s_Instance== 
==== 
null== "
)==" #
{>> 
Debug?? 
.?? 
LogError?? 
(?? 
$str?? D
)??D E
;??E F
return@@ 
;@@ 
}AA 
varCC 
locationFilePathCC  
=CC! "
GetFilePathCC# .
(CC. /
)CC/ 0
;CC0 1
varDD 
directoryNameDD 
=DD 
PathDD  $
.DD$ %
GetDirectoryNameDD% 5
(DD5 6
locationFilePathDD6 F
)DDF G
;DDG H
ifEE 
(EE 
directoryNameEE 
==EE  
nullEE! %
)EE% &
returnEE' -
;EE- .
	DirectoryFF 
.FF 
CreateDirectoryFF %
(FF% &
directoryNameFF& 3
)FF3 4
;FF4 5!
InternalEditorUtilityGG !
.GG! ")
SaveToSerializedFileAndForgetGG" ?
(GG? @
newGG@ C
ObjectGGD J
[GGJ K
]GGK L
{GGL M

s_InstanceGGN X
}GGY Z
,GGZ [
locationFilePathGG\ l
,GGl m
trueGGn r
)GGr s
;GGs t
}HH 	
[JJ 	
	CanBeNullJJ	 
]JJ 
staticKK 
stringKK 
GetFilePathKK !
(KK! "
)KK" #
{LL 	
varMM 
attrMM 
=MM 
typeofMM 
(MM 
TMM 
)MM  
.MM  !
GetCustomAttributesMM! 4
(MM4 5
trueMM5 9
)MM9 :
.NN  !
OfTypeNN! '
<NN' (
LocationAttributeNN( 9
>NN9 :
(NN: ;
)NN; <
.OO  !
FirstOrDefaultOO! /
(OO/ 0
)OO0 1
;OO1 2
returnPP 
attrPP 
?PP 
.PP 
FilePathPP !
;PP! "
}QQ 	
}RR 
}SS û
àD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\IView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
	interface 
IView 
< 
in 
T 
> 
where 
T  !
:" #

IPresenter$ .
{ 
[ 	
NotNull	 
] 
T 	
	Presenter
 
{ 
set 
; 
} 
} 
} ﬁ
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\StringUtility.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
static 

class 
StringUtility 
{ 
public 
static 
string 
TrimAndToLower +
(+ ,
string, 2
value3 8
)8 9
{ 	
return		 
string		 
.		 
IsNullOrEmpty		 '
(		' (
value		( -
)		- .
?

 
string

 
.

 
Empty

 
: 
value 
. 
Trim 
( 
) 
. 
ToLower &
(& '
)' (
;( )
} 	
} 
} ã
íD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Common\ArrayContainer.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Common" (
{) *
[ 
Serializable 
] 
internal 
class 
ArrayContainer !
<! "
T" #
># $
{ 
[ 	
SerializeField	 
] 
public 
T  !
[! "
]" #
Values$ *
=+ ,
new- 0
T1 2
[2 3
$num3 4
]4 5
;5 6
}		 
}

 ø
õD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Settings\CollabSettingsManager.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Settings" *
{ 
internal 
static 
class !
CollabSettingsManager /
{		 
public 
static 
T 
Get 
< 
T 
> 
( 
string %
key& )
,) *
SettingsScope+ 8
scope9 >
=? @
SettingsScopeA N
.N O
ProjectO V
,V W
TX Y
fallbackZ b
=c d
defaulte l
)l m
{ 	
return 
fallback 
; 
} 	
}(( 
})) ‹
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\IChangesView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal 
	interface 
IChangesView #
:$ %
IView& +
<+ ,
IChangesPresenter, =
>= >
{		 
void 
SetBusyStatus 
( 
bool 
busy  $
)$ %
;% &
void 
SetSearchQuery 
( 
[ 
NotNull $
]$ %
string& ,
query- 2
)2 3
;3 4
void 
SetRevisionSummary 
(  
[  !
NotNull! (
]( )
string* 0
message1 8
)8 9
;9 :
void   
SetConflicts   
(   
[   
NotNull   "
]  " #
IReadOnlyList  $ 1
<  1 2
IChangeEntryData  2 B
>  B C
list  D H
)  H I
;  I J
void%% 
SetSelectedChanges%% 
(%%  
)%%  !
;%%! "
void++ 

SetChanges++ 
(++ 
[++ 
NotNull++  
]++  !
IReadOnlyList++" /
<++/ 0
IChangeEntryData++0 @
>++@ A
list++B F
)++F G
;++G H
void11 
SetToggledCount11 
(11 
int11  
count11! &
)11& '
;11' (
void99 
SetPublishEnabled99 
(99 
bool99 #
enabled99$ +
,99+ ,
[99- .
	CanBeNull99. 7
]997 8
string999 ?
reason99@ F
=99G H
null99I M
)99M N
;99N O
boolBB 
DisplayDialogueBB 
(BB 
[BB 
NotNullBB %
]BB% &
stringBB' -
titleBB. 3
,BB3 4
[BB5 6
NotNullBB6 =
]BB= >
stringBB? E
messageBBF M
,BBM N
[BBO P
NotNullBBP W
]BBW X
stringBBY _
affirmativeBB` k
)BBk l
;BBl m
boolLL 
DisplayDialogueLL 
(LL 
[LL 
NotNullLL %
]LL% &
stringLL' -
titleLL. 3
,LL3 4
[LL5 6
NotNullLL6 =
]LL= >
stringLL? E
messageLLF M
,LLM N
[LLO P
NotNullLLP W
]LLW X
stringLLY _
affirmativeLL` k
,LLk l
[LLm n
NotNullLLn u
]LLu v
stringLLw }
negative	LL~ Ü
)
LLÜ á
;
LLá à
}MM 
}NN à
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Common\SerializableDictionary.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Common" (
{ 
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
class "
SerializableDictionary )
<) *
TKey* .
,. /
TValue0 6
>6 7
:8 9

Dictionary: D
<D E
TKeyE I
,I J
TValueK Q
>Q R
,R S*
ISerializationCallbackReceiverT r
{ 
[ 	
SerializeField	 
] 
List 
< 
TKey 
> 
m_Keys 
= 
new 
List  $
<$ %
TKey% )
>) *
(* +
)+ ,
;, -
[ 	
SerializeField	 
] 
List 
< 
TValue 
> 
m_Values 
= 
new  #
List$ (
<( )
TValue) /
>/ 0
(0 1
)1 2
;2 3
public "
SerializableDictionary %
(% &
)& '
{ 	
} 	
public "
SerializableDictionary %
(% &
IDictionary& 1
<1 2
TKey2 6
,6 7
TValue8 >
>> ?
input@ E
)E F
:G H
baseI M
(M N
inputN S
)S T
{ 	
} 	
public 
void 
OnBeforeSerialize %
(% &
)& '
{ 	
m_Keys 
. 
Clear 
( 
) 
; 
m_Values 
. 
Clear 
( 
) 
; 
foreach 
( 
var 
pair 
in  
this! %
)% &
{   
m_Keys!! 
.!! 
Add!! 
(!! 
pair!! 
.!!  
Key!!  #
)!!# $
;!!$ %
m_Values"" 
."" 
Add"" 
("" 
pair"" !
.""! "
Value""" '
)""' (
;""( )
}## 
}$$ 	
public'' 
void'' 
OnAfterDeserialize'' &
(''& '
)''' (
{(( 	
Clear)) 
()) 
))) 
;)) 
if++ 
(++ 
m_Keys++ 
.++ 
Count++ 
!=++ 
m_Values++  (
.++( )
Count++) .
)++. /
{,, 
throw-- 
new-- "
SerializationException-- 0
(--0 1
$"--1 3

there are --3 =
{--= >
m_Keys--> D
.--D E
Count--E J
}--J K

 keys and --K U
{--U V
m_Values--V ^
.--^ _
Count--_ d
}--d e
"--f g
+--h i
$str.. m
)..m n
;..n o
}// 
for11 
(11 
var11 
i11 
=11 
$num11 
;11 
i11 
<11 
m_Keys11  &
.11& '
Count11' ,
;11, -
i11. /
++11/ 1
)111 2
{22 
Add33 
(33 
m_Keys33 
[33 
i33 
]33 
,33 
m_Values33 '
[33' (
i33( )
]33) *
)33* +
;33+ ,
}44 
}55 	
}66 
}77 Í
õD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\HistoryEntry.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
struct 
HistoryEntry  
:! "
IHistoryEntry# 0
{ 
public		 
HistoryEntry		 
(		 
string		 "

revisionId		# -
=		. /
default		0 7
,		7 8
HistoryEntryStatus		9 K
status		L R
=		S T
HistoryEntryStatus		U g
.		g h
Behind		h n
,		n o
string		p v

authorName			w Å
=
		Ç É
default
		Ñ ã
,
		ã å
string
		ç ì
message
		î õ
=
		ú ù
default
		û •
,
		• ¶
DateTimeOffset
		ß µ
time
		∂ ∫
=
		ª º
default
		Ω ƒ
,
		ƒ ≈
IReadOnlyList
		∆ ”
<
		” ‘
IChangeEntry
		‘ ‡
>
		‡ ·
changes
		‚ È
=
		Í Î
default
		Ï Û
)
		Û Ù
{

 	
Status 
= 
status 
; 

RevisionId 
= 

revisionId #
;# $

AuthorName 
= 

authorName #
;# $
Message 
= 
message 
; 
Time 
= 
time 
; 
Changes 
= 
changes 
; 
} 	
public 
HistoryEntryStatus !
Status" (
{) *
get+ .
;. /
}0 1
public 
string 

RevisionId  
{! "
get# &
;& '
}( )
public 
string 

AuthorName  
{! "
get# &
;& '
}( )
public 
string 
Message 
{ 
get  #
;# $
}% &
public 
DateTimeOffset 
Time "
{# $
get% (
;( )
}* +
public 
IReadOnlyList 
< 
IChangeEntry )
>) *
Changes+ 2
{3 4
get5 8
;8 9
}: ;
public 
string 
GetGotoText !
(! "
)" #
{ 	
switch 
( 
Status 
) 
{ 
case 
HistoryEntryStatus '
.' (
Ahead( -
:- .
return 
StringAssets '
.' (
update( .
;. /
case 
HistoryEntryStatus '
.' (
Current( /
:/ 0
return   
StringAssets   '
.  ' (
restore  ( /
;  / 0
case!! 
HistoryEntryStatus!! '
.!!' (
Behind!!( .
:!!. /
return"" 
StringAssets"" '
.""' (
goBackTo""( 0
;""0 1
default## 
:## 
throw$$ 
new$$ '
ArgumentOutOfRangeException$$ 9
($$9 :
)$$: ;
;$$; <
}%% 
}&& 	
}'' 
}(( ‚:
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Api\ISourceControlProvider.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )
Api) ,
{ 
internal		 
	interface		 "
ISourceControlProvider		 -
{

 
event 
Action 
UpdatedChangeList &
;& '
event 
Action 
< 
IReadOnlyList "
<" #
string# )
>) *
>* +%
UpdatedSelectedChangeList, E
;E F
event 
Action !
UpdatedHistoryEntries *
;* +
event 
Action 
< 
bool 
> "
UpdatedOperationStatus 1
;1 2
event"" 
Action"" 
<"" 
IProgressInfo"" "
>""" #$
UpdatedOperationProgress""$ <
;""< =
event'' 
Action'' 
<'' 

IErrorInfo'' 
>''  
ErrorOccurred''! .
;''. /
event,, 
Action,, 
ErrorCleared,, !
;,,! "
event11 
Action11 
<11 
bool11 
>11  
UpdatedConflictState11 /
;11/ 0
event66 
Action66 
<66 
bool66 
>66 .
"UpdatedRemoteRevisionsAvailability66 =
;66= >
event;; 
Action;; 
<;; 
ProjectStatus;; "
>;;" # 
UpdatedProjectStatus;;$ 8
;;;8 9
boolAA )
GetRemoteRevisionAvailabilityAA *
(AA* +
)AA+ ,
;AA, -
boolGG 
GetConflictedStateGG 
(GG  
)GG  !
;GG! "
[MM 	
	CanBeNullMM	 
]MM 
IProgressInfoNN 
GetProgressStateNN &
(NN& '
)NN' (
;NN( )
[TT 	
	CanBeNullTT	 
]TT 

IErrorInfoUU 
GetErrorStateUU  
(UU  !
)UU! "
;UU" #
ProjectStatus[[ 
GetProjectStatus[[ &
([[& '
)[[' (
;[[( )
voidaa 
RequestChangeListaa 
(aa 
[aa  
NotNullaa  '
]aa' (
Actionaa) /
<aa/ 0
IReadOnlyListaa0 =
<aa= >
IChangeEntryaa> J
>aaJ K
>aaK L
callbackaaM U
)aaU V
;aaV W
voidhh 
RequestPublishhh 
(hh 
[hh 
NotNullhh $
]hh$ %
stringhh& ,
messagehh- 4
,hh4 5
[hh6 7
	CanBeNullhh7 @
]hh@ A
IReadOnlyListhhB O
<hhO P
IChangeEntryhhP \
>hh\ ]
changeshh^ e
=hhf g
nullhhh l
)hhl m
;hhm n
voidoo 
RequestHistoryEntryoo  
(oo  !
[oo! "
NotNulloo" )
]oo) *
stringoo+ 1

revisionIdoo2 <
,oo< =
[oo> ?
NotNulloo? F
]ooF G
ActionooH N
<ooN O
IHistoryEntryooO \
>oo\ ]
callbackoo^ f
)oof g
;oog h
voidww 
RequestHistoryPageww 
(ww  
intww  #
offsetww$ *
,ww* +
intww, /
pageSizeww0 8
,ww8 9
[ww: ;
NotNullww; B
]wwB C
ActionwwD J
<wwJ K
IReadOnlyListwwK X
<wwX Y
IHistoryEntrywwY f
>wwf g
>wwg h
callbackwwi q
)wwq r
;wwr s
void}} 
RequestHistoryCount}}  
(}}  !
[}}! "
NotNull}}" )
]}}) *
Action}}+ 1
<}}1 2
int}}2 5
?}}5 6
>}}6 7
callback}}8 @
)}}@ A
;}}A B
void
ÑÑ 
RequestDiscard
ÑÑ 
(
ÑÑ 
[
ÑÑ 
NotNull
ÑÑ $
]
ÑÑ$ %
IChangeEntry
ÑÑ& 2
entry
ÑÑ3 8
)
ÑÑ8 9
;
ÑÑ9 :
void
ãã  
RequestBulkDiscard
ãã 
(
ãã  
[
ãã  !
NotNull
ãã! (
]
ãã( )
IReadOnlyList
ãã* 7
<
ãã7 8
IChangeEntry
ãã8 D
>
ããD E
entries
ããF M
)
ããM N
;
ããN O
void
ëë  
RequestDiffChanges
ëë 
(
ëë  
[
ëë  !
NotNull
ëë! (
]
ëë( )
string
ëë* 0
path
ëë1 5
)
ëë5 6
;
ëë6 7
bool
ññ 
SupportsRevert
ññ 
{
ññ 
get
ññ !
;
ññ! "
}
ññ# $
void
ùù 
RequestRevert
ùù 
(
ùù 
[
ùù 
NotNull
ùù #
]
ùù# $
string
ùù% +

revisionId
ùù, 6
,
ùù6 7
[
ùù8 9
NotNull
ùù9 @
]
ùù@ A
IReadOnlyList
ùùB O
<
ùùO P
string
ùùP V
>
ùùV W
files
ùùX ]
)
ùù] ^
;
ùù^ _
void
££ 
RequestUpdateTo
££ 
(
££ 
[
££ 
NotNull
££ %
]
££% &
string
££' -

revisionId
££. 8
)
££8 9
;
££9 :
void
©© 
RequestRestoreTo
©© 
(
©© 
[
©© 
NotNull
©© &
]
©©& '
string
©©( .

revisionId
©©/ 9
)
©©9 :
;
©©: ;
void
ØØ 
RequestGoBackTo
ØØ 
(
ØØ 
[
ØØ 
NotNull
ØØ %
]
ØØ% &
string
ØØ' -

revisionId
ØØ. 8
)
ØØ8 9
;
ØØ9 :
void
¥¥ 

ClearError
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
void
∫∫ .
 RequestShowConflictedDifferences
∫∫ -
(
∫∫- .
[
∫∫. /
NotNull
∫∫/ 6
]
∫∫6 7
string
∫∫8 >
path
∫∫? C
)
∫∫C D
;
∫∫D E
void
¿¿  
RequestChooseMerge
¿¿ 
(
¿¿  
[
¿¿  !
NotNull
¿¿! (
]
¿¿( )
string
¿¿* 0
path
¿¿1 5
)
¿¿5 6
;
¿¿6 7
void
∆∆ 
RequestChooseMine
∆∆ 
(
∆∆ 
[
∆∆  
NotNull
∆∆  '
]
∆∆' (
string
∆∆) /
[
∆∆/ 0
]
∆∆0 1
paths
∆∆2 7
)
∆∆7 8
;
∆∆8 9
void
ÃÃ !
RequestChooseRemote
ÃÃ  
(
ÃÃ  !
[
ÃÃ! "
NotNull
ÃÃ" )
]
ÃÃ) *
string
ÃÃ+ 1
[
ÃÃ1 2
]
ÃÃ2 3
paths
ÃÃ4 9
)
ÃÃ9 :
;
ÃÃ: ;
void
—— 
RequestSync
—— 
(
—— 
)
—— 
;
—— 
void
÷÷ 
RequestCancelJob
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷  
void
‹‹ "
RequestTurnOnService
‹‹ !
(
‹‹! "
)
‹‹" #
;
‹‹# $
void
·· 
ShowServicePage
·· 
(
·· 
)
·· 
;
·· 
void
ÊÊ 
ShowLoginPage
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ 
void
ÎÎ 
ShowNoSeatPage
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 
}ÌÌ ˙-
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\ListAdapters\ConflictedChangeListAdapter.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "
Views

" '
.

' (
Adapters

( 0
.

0 1
ListAdapters

1 =
{ 
internal 
class '
ConflictedChangeListAdapter .
:/ 0
BaseListAdapter1 @
<@ A'
ConflictedChangeListElementA \
>\ ]
{ 
IChangesPresenter 
m_Presenter %
;% &
[ 	
	CanBeNull	 
] 
IReadOnlyList 
< 
IChangeEntryData &
>& '
m_List( .
;. /
public 
IReadOnlyList 
< 
IChangeEntryData -
>- .
List/ 3
{ 	
set 
{ 
m_List 
= 
value 
;  
NotifyDataSetChanged $
($ %
)% &
;& '
} 
} 	
public '
ConflictedChangeListAdapter *
(* +
[+ ,
NotNull, 3
]3 4
IChangesPresenter5 F
	presenterG P
)P Q
{ 	
m_Presenter 
= 
	presenter #
;# $
} 	
public   
override   
int   
Height   "
{  # $
get  % (
;  ( )
}  * +
=  , -
UiConstants  . 9
.  9 :%
ChangesListViewItemHeight  : S
;  S T
	protected"" 
override"" '
ConflictedChangeListElement"" 6
MakeItem""7 ?
(""? @
)""@ A
{## 	
return$$ 
new$$ '
ConflictedChangeListElement$$ 2
($$2 3
)$$3 4
;$$4 5
}%% 	
	protected'' 
override'' 
void'' 
BindItem''  (
(''( )'
ConflictedChangeListElement'') D
element''E L
,''L M
int''N Q
index''R W
)''W X
{(( 	
Assert)) 
.)) 
	IsNotNull)) 
()) 
m_List)) #
,))# $
$str))% M
)))M N
;))N O
element** 
.** 
	ClearData** 
(** 
)** 
;**  
var++ 
changesEntry++ 
=++ 
m_List++ %
[++% &
index++& +
]+++ ,
;++, -
var,, 
path,, 
=,, 
changesEntry,, #
.,,# $
All,,$ '
?,,( )
StringAssets,,* 6
.,,6 7
all,,7 :
:,,; <
changesEntry,,= I
.,,I J
Entry,,J O
.,,O P
Path,,P T
;,,T U
element-- 
.-- 
UpdateFilePath-- "
(--" #
path--# '
)--' (
;--( )
element00 
.00 

statusIcon00 
.00 
ClearClassList00 -
(00- .
)00. /
;00/ 0
element11 
.11 

statusIcon11 
.11 
AddToClassList11 -
(11- .!
BaseChangeListElement11. C
.11C D
IconUssClassName11D T
)11T U
;11U V
element22 
.22 

statusIcon22 
.22 
AddToClassList22 -
(22- .'
ToggleableChangeListElement22. I
.22I J"
StatusIconUssClassName22J `
)22` a
;22a b
element33 
.33 

statusIcon33 
.33 
AddToClassList33 -
(33- .
changesEntry33. :
.33: ;
Entry33; @
.33@ A
StatusToString33A O
(33O P
)33P Q
)33Q R
;33R S
element66 
.66 

showButton66 
.66 
Clicked66 &
+=66' )
(66* +
)66+ ,
=>66- /
m_Presenter660 ;
.66; <,
 RequestShowConflictedDifferences66< \
(66\ ]
changesEntry66] i
.66i j
Entry66j o
.66o p
Path66p t
)66t u
;66u v
element77 
.77 
chooseMergeButton77 %
.77% &
Clicked77& -
+=77. 0
(771 2
)772 3
=>774 6
m_Presenter777 B
.77B C
RequestChooseMerge77C U
(77U V
changesEntry77V b
.77b c
Entry77c h
.77h i
Path77i m
)77m n
;77n o
element88 
.88 
chooseMineButton88 $
.88$ %
Clicked88% ,
+=88- /
(880 1
)881 2
=>883 5
m_Presenter886 A
.88A B
RequestChooseMine88B S
(88S T
changesEntry88T `
.88` a
Entry88a f
.88f g
Path88g k
)88k l
;88l m
element99 
.99 
chooseRemoteButton99 &
.99& '
Clicked99' .
+=99/ 1
(992 3
)993 4
=>995 7
m_Presenter998 C
.99C D
RequestChooseRemote99D W
(99W X
changesEntry99X d
.99d e
Entry99e j
.99j k
Path99k o
)99o p
;99p q
}:: 	
public<< 
override<< 
int<< 
GetEntryCount<< )
(<<) *
)<<* +
{== 	
return>> 
m_List>> 
?>> 
.>> 
Count>>  
??>>! #
$num>>$ %
;>>% &
}?? 	
}@@ 
}AA ú4
ñD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\UserInterface\WindowCache.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
UserInterface" /
{ 
internal		 
	interface		 
IWindowCache		 #
{

 
void 
Clear 
( 
) 
; #
SelectedItemsDictionary 
SimpleSelectedItems  3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
string 
RevisionSummary 
{  
get! $
;$ %
set& )
;) *
}+ ,
string 
ChangesSearchValue !
{" #
get$ '
;' (
set) ,
;, -
}. /
string #
SelectedHistoryRevision &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
int 
HistoryPageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
int 
TabIndex 
{ 
get 
; 
set 
;  
}! "
} 
[ 
Location 
( 
$str  
,  !
LocationAttribute" 3
.3 4
Location4 <
.< =
LibraryFolder= J
)J K
]K L
internal 
class 
WindowCache 
:  %
ScriptableObjectSingleton! :
<: ;
WindowCache; F
>F G
,G H
IWindowCacheI U
{ 
public 
event 
Action 
< 
IWindowCache (
>( )
BeforeSerialize* 9
;9 :
public 
void 
	Serialize 
( 
) 
{   	
BeforeSerialize!! 
?!! 
.!! 
Invoke!! #
(!!# $
this!!$ (
)!!( )
;!!) *
Save"" 
("" 
)"" 
;"" 
}## 	
public%% 
void%% 
Clear%% 
(%% 
)%% 
{&& 	
SimpleSelectedItems'' 
=''  !
default''" )
;'') *
RevisionSummary(( 
=(( 
default(( %
;((% &
ChangesSearchValue)) 
=))  
default))! (
;))( )#
SelectedHistoryRevision** #
=**$ %
default**& -
;**- .
HistoryPageNumber++ 
=++ 
default++  '
;++' (
TabIndex,, 
=,, 
default,, 
;,, 
}-- 	#
SelectedItemsDictionary// 
IWindowCache//  ,
.//, -
SimpleSelectedItems//- @
{00 	
get11 
=>11 
SimpleSelectedItems11 &
;11& '
set22 
=>22 
SimpleSelectedItems22 &
=22' (
value22) .
;22. /
}33 	
string55 
IWindowCache55 
.55 
RevisionSummary55 +
{66 	
get77 
=>77 
RevisionSummary77 "
;77" #
set88 
=>88 
RevisionSummary88 "
=88# $
value88% *
;88* +
}99 	
string;; 
IWindowCache;; 
.;; 
ChangesSearchValue;; .
{<< 	
get== 
=>== 
ChangesSearchValue== %
;==% &
set>> 
=>>> 
ChangesSearchValue>> %
=>>& '
value>>( -
;>>- .
}?? 	
stringAA 
IWindowCacheAA 
.AA #
SelectedHistoryRevisionAA 3
{BB 	
getCC 
=>CC #
SelectedHistoryRevisionCC *
;CC* +
setDD 
=>DD #
SelectedHistoryRevisionDD *
=DD+ ,
valueDD- 2
;DD2 3
}EE 	
intGG 
IWindowCacheGG 
.GG 
HistoryPageNumberGG *
{HH 	
getII 
=>II 
HistoryPageNumberII $
;II$ %
setJJ 
=>JJ 
HistoryPageNumberJJ $
=JJ% &
valueJJ' ,
;JJ, -
}KK 	
intMM 
IWindowCacheMM 
.MM 
TabIndexMM !
{NN 	
getOO 
=>OO 
TabIndexOO 
;OO 
setPP 
=>PP 
TabIndexPP 
=PP 
valuePP #
;PP# $
}QQ 	
[SS 	
SerializeFieldSS	 
]SS 
publicTT #
SelectedItemsDictionaryTT &
SimpleSelectedItemsTT' :
=TT; <
newTT= @#
SelectedItemsDictionaryTTA X
(TTX Y
)TTY Z
;TTZ [
[VV 	 
FormerlySerializedAsVV	 
(VV 
$strVV -
)VV- .
]VV. /
[WW 	
SerializeFieldWW	 
]WW 
publicXX 
stringXX 
RevisionSummaryXX %
;XX% &
[ZZ 	
SerializeFieldZZ	 
]ZZ 
public[[ 
string[[ 
ChangesSearchValue[[ (
;[[( )
[]] 	
SerializeField]]	 
]]] 
public^^ 
string^^ #
SelectedHistoryRevision^^ -
;^^- .
[`` 	
SerializeField``	 
]`` 
publicaa 
intaa 
HistoryPageNumberaa $
;aa$ %
[cc 	
SerializeFieldcc	 
]cc 
publicdd 
intdd 
TabIndexdd 
;dd 
}ee 
[gg 
Serializablegg 
]gg 
internalhh 
classhh #
SelectedItemsDictionaryhh *
:hh+ ,"
SerializableDictionaryhh- C
<hhC D
stringhhD J
,hhJ K
boolhhL P
>hhP Q
{ii 
publicjj #
SelectedItemsDictionaryjj &
(jj& '
)jj' (
{jj) *
}jj+ ,
publicll #
SelectedItemsDictionaryll &
(ll& '
IDictionaryll' 2
<ll2 3
stringll3 9
,ll9 :
boolll; ?
>ll? @

dictionaryllA K
)llK L
:llM N
basellO S
(llS T

dictionaryllT ^
)ll^ _
{ll` a
}llb c
}mm 
}nn ò
éD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\StartModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{		 
internal

 
class

 

StartModel

 
:

 
IStartModel

  +
{ 
[ 	
NotNull	 
] 
readonly "
ISourceControlProvider '

m_Provider( 2
;2 3
public 
event 
Action 
< 
ProjectStatus )
>) * 
ProjectStatusChanged+ ?
;? @
public 
event 
Action 
StateChanged (
;( )
public 

StartModel 
( 
[ 
NotNull "
]" #"
ISourceControlProvider$ :
provider; C
)C D
{ 	

m_Provider 
= 
provider !
;! "
} 	
public 
void 
OnStart 
( 
) 
{ 	

m_Provider 
.  
UpdatedProjectStatus +
+=, ."
OnUpdatedProjectStatus/ E
;E F
} 	
public!! 
void!! 
OnStop!! 
(!! 
)!! 
{"" 	

m_Provider## 
.##  
UpdatedProjectStatus## +
-=##, ."
OnUpdatedProjectStatus##/ E
;##E F
}$$ 	
public'' 
void'' 
RestoreState''  
(''  !
IWindowCache''! -
cache''. 3
)''3 4
{(( 	
StateChanged)) 
?)) 
.)) 
Invoke))  
())  !
)))! "
;))" #
}** 	
public-- 
void-- 
	SaveState-- 
(-- 
IWindowCache-- *
cache--+ 0
)--0 1
{.. 	
}// 	
public22 
ProjectStatus22 
ProjectStatus22 *
=>22+ -

m_Provider22. 8
.228 9
GetProjectStatus229 I
(22I J
)22J K
;22K L
public55 
void55  
RequestTurnOnService55 (
(55( )
)55) *
{66 	

m_Provider77 
.77  
RequestTurnOnService77 +
(77+ ,
)77, -
;77- .
}88 	
public;; 
void;; 
ShowServicePage;; #
(;;# $
);;$ %
{<< 	

m_Provider== 
.== 
ShowServicePage== &
(==& '
)==' (
;==( )
}>> 	
publicAA 
voidAA 
ShowLoginPageAA !
(AA! "
)AA" #
{BB 	

m_ProviderCC 
.CC 
ShowLoginPageCC $
(CC$ %
)CC% &
;CC& '
}DD 	
publicGG 
voidGG 
ShowNoSeatPageGG "
(GG" #
)GG# $
{HH 	

m_ProviderII 
.II 
ShowNoSeatPageII %
(II% &
)II& '
;II' (
}JJ 	
voidLL "
OnUpdatedProjectStatusLL #
(LL# $
ProjectStatusLL$ 1
statusLL2 8
)LL8 9
{MM 	 
ProjectStatusChangedNN  
?NN  !
.NN! "
InvokeNN" (
(NN( )
statusNN) /
)NN/ 0
;NN0 1
}OO 	
}PP 
}QQ ü
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Settings\CollabSettingsProvider.cs«
ñD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\IMainPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
	interface 
IMainPresenter %
:& '

IPresenter( 2
{ 
IHistoryPresenter "
AssignHistoryPresenter 0
(0 1
IHistoryView1 =
view> B
)B C
;C D
IChangesPresenter "
AssignChangesPresenter 0
(0 1
IChangesView1 =
view> B
)B C
;C D
void 
RequestCancelJob 
( 
) 
;  
void 
UpdateTabIndex 
( 
int 
index  %
)% &
;& '
void$$ 
NavigateBack$$ 
($$ 
)$$ 
;$$ 
}%% 
}&& ã¨
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\ChangesPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
class 
ChangesPresenter #
:$ %
IChangesPresenter& 7
{ 
[ 	
NotNull	 
] 
readonly 
IChangesView 
m_View $
;$ %
[ 	
NotNull	 
] 
readonly 
IChangesModel 
m_Model &
;& '
[ 	
NotNull	 
] 
readonly 

IMainModel 
m_MainModel '
;' (
bool 
m_IsStarted 
; 
public 
ChangesPresenter 
(  
[  !
NotNull! (
]( )
IChangesView* 6
view7 ;
,; <
[= >
NotNull> E
]E F
IChangesModelG T
modelU Z
,Z [
[\ ]
NotNull] d
]d e

IMainModelf p
	mainModelq z
)z {
{ 	
m_View 
= 
view 
; 
m_Model 
= 
model 
; 
m_MainModel 
= 
	mainModel #
;# $
}   	
public## 
void## 
Start## 
(## 
)## 
{$$ 	
Assert%% 
.%% 
IsFalse%% 
(%% 
m_IsStarted%% &
,%%& '
$str%%( Q
)%%Q R
;%%R S
m_IsStarted&& 
=&& 
true&& 
;&& 
m_Model(( 
.(( 
UpdatedChangeList(( %
+=((& (
OnUpdatedChangeList(() <
;((< =
m_Model)) 
.)) $
OnUpdatedSelectedChanges)) ,
+=))- /-
!OnUpdatedPartiallySelectedChanges))0 Q
;))Q R
m_Model** 
.** 
BusyStatusUpdated** %
+=**& (
OnBusyStatusUpdated**) <
;**< =
m_Model++ 
.++ 
StateChanged++  
+=++! #
OnStateChanged++$ 2
;++2 3
m_MainModel,, 
.,, -
!RemoteRevisionsAvailabilityChange,, 9
+=,,: </
#OnRemoteRevisionsAvailabilityChange,,= `
;,,` a
m_MainModel-- 
.--  
ConflictStatusChange-- ,
+=--- /"
OnConflictStatusChange--0 F
;--F G
PopulateInitialData// 
(//  
)//  !
;//! "
}00 	
public33 
void33 
Stop33 
(33 
)33 
{44 	
Assert55 
.55 
IsTrue55 
(55 
m_IsStarted55 %
,55% &
$str55' P
)55P Q
;55Q R
m_IsStarted66 
=66 
false66 
;66  
m_Model88 
.88 
UpdatedChangeList88 %
-=88& (
OnUpdatedChangeList88) <
;88< =
m_Model99 
.99 $
OnUpdatedSelectedChanges99 ,
-=99- /-
!OnUpdatedPartiallySelectedChanges990 Q
;99Q R
m_Model:: 
.:: 
BusyStatusUpdated:: %
-=::& (
OnBusyStatusUpdated::) <
;::< =
m_Model;; 
.;; 
StateChanged;;  
-=;;! #
OnStateChanged;;$ 2
;;;2 3
m_MainModel<< 
.<< -
!RemoteRevisionsAvailabilityChange<< 9
-=<<: </
#OnRemoteRevisionsAvailabilityChange<<= `
;<<` a
m_MainModel== 
.==  
ConflictStatusChange== ,
-===- /"
OnConflictStatusChange==0 F
;==F G
}>> 	
voidCC 
OnStateChangedCC 
(CC 
)CC 
{DD 	
PopulateInitialDataEE 
(EE  
)EE  !
;EE! "
}FF 	
voidKK 
PopulateInitialDataKK  
(KK  !
)KK! "
{LL 	
m_ViewMM 
.MM 
SetRevisionSummaryMM %
(MM% &
m_ModelMM& -
.MM- . 
SavedRevisionSummaryMM. B
)MMB C
;MMC D
m_ViewNN 
.NN 
SetSearchQueryNN !
(NN! "
m_ModelNN" )
.NN) *
SavedSearchQueryNN* :
)NN: ;
;NN; <
m_ViewOO 
.OO 
SetBusyStatusOO  
(OO  !
m_ModelOO! (
.OO( )
BusyOO) -
)OO- .
;OO. /
m_ModelPP 
.PP 
RequestInitialDataPP &
(PP& '
)PP' (
;PP( )
}QQ 	
	protectedWW 
voidWW /
#OnRemoteRevisionsAvailabilityChangeWW :
(WW: ;
boolWW; ?
	availableWW@ I
)WWI J
{XX	 

UpdatePublishButtonYY  
(YY  !
)YY! "
;YY" #
}ZZ	 

void`` 
OnBusyStatusUpdated``  
(``  !
bool``! %
busy``& *
)``* +
{aa 	
m_Viewbb 
.bb 
SetBusyStatusbb  
(bb  !
busybb! %
)bb% &
;bb& '
}cc 	
	protectedhh 
voidhh 
OnUpdatedChangeListhh *
(hh* +
)hh+ ,
{ii 	
UpdatePublishButtonjj 
(jj  
)jj  !
;jj! "
UpdateChangeListkk 
(kk 
)kk 
;kk 
}ll 	
voidrr 
UpdateChangeListrr 
(rr 
)rr 
{ss 	
Asserttt 
.tt 
IsTruett 
(tt 
	Threadingtt #
.tt# $
IsMainThreadtt$ 0
,tt0 1
$strtt2 p
)ttp q
;ttq r
ifww 
(ww 
m_Modelww 
.ww 

Conflictedww "
)ww" #
{xx 
Taskyy 
.yy 
Runyy 
(yy 
(yy 
)yy 
=>yy 
m_Modelyy &
.yy& ' 
GetConflictedEntriesyy' ;
(yy; <
m_Modelyy< C
.yyC D
SavedSearchQueryyyD T
)yyT U
)yyU V
.zz 
ContinueWithzz !
(zz! "
rzz" #
=>zz$ &
m_Viewzz' -
.zz- .
SetConflictszz. :
(zz: ;
rzz; <
.zz< =
Resultzz= C
)zzC D
,zzD E
TaskSchedulerzzF S
.zzS T-
!FromCurrentSynchronizationContextzzT u
(zzu v
)zzv w
)zzw x
;zzx y
}{{ 
else|| 
{}} 
Task~~ 
.~~ 
Run~~ 
(~~ 
(~~ 
)~~ 
=>~~ 
m_Model~~ &
.~~& '
GetAllEntries~~' 4
(~~4 5
m_Model~~5 <
.~~< =
SavedSearchQuery~~= M
)~~M N
)~~N O
. 
ContinueWith !
(! "
r" #
=>$ &
m_View' -
.- .

SetChanges. 8
(8 9
r9 :
.: ;
Result; A
)A B
,B C
TaskSchedulerD Q
.Q R-
!FromCurrentSynchronizationContextR s
(s t
)t u
)u v
;v w
}
ÄÄ 
}
ÅÅ 	
	protected
ÜÜ 
void
ÜÜ /
!OnUpdatedPartiallySelectedChanges
ÜÜ 8
(
ÜÜ8 9
)
ÜÜ9 :
{
áá 	!
UpdatePublishButton
àà 
(
àà  
)
àà  !
;
àà! "
m_View
ââ 
.
ââ  
SetSelectedChanges
ââ %
(
ââ% &
)
ââ& '
;
ââ' (
}
ää 	
	protected
êê 
void
êê $
OnConflictStatusChange
êê -
(
êê- .
bool
êê. 2

conflicted
êê3 =
)
êê= >
{
ëë 	!
UpdatePublishButton
íí 
(
íí  
)
íí  !
;
íí! "
UpdateChangeList
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 	
public
óó 
bool
óó 
UpdateEntryToggle
óó %
(
óó% &
string
óó& ,
path
óó- 1
,
óó1 2
bool
óó3 7
toggled
óó8 ?
)
óó? @
{
òò 	
var
ôô 
result
ôô 
=
ôô 
m_Model
ôô  
.
ôô  !
UpdateEntryToggle
ôô! 2
(
ôô2 3
path
ôô3 7
,
ôô7 8
toggled
ôô9 @
)
ôô@ A
;
ôôA B
m_View
öö 
.
öö 
SetToggledCount
öö "
(
öö" #
ToggledCount
öö# /
)
öö/ 0
;
öö0 1!
UpdatePublishButton
õõ 
(
õõ  
)
õõ  !
;
õõ! "
return
úú 
result
úú 
;
úú 
}
ùù 	
public
†† 
int
†† 
ToggledCount
†† 
=>
††  "
m_Model
††# *
.
††* +
ToggledCount
††+ 7
;
††7 8
public
££ 
int
££ 

TotalCount
££ 
=>
££  
m_Model
££! (
.
££( )

TotalCount
££) 3
;
££3 4
public
¶¶ 
int
¶¶ 
ConflictedCount
¶¶ "
=>
¶¶# %
m_Model
¶¶& -
.
¶¶- .
ConflictedCount
¶¶. =
;
¶¶= >
public
©© 
bool
©© 
	Searching
©© 
=>
©©  
!
©©! "
string
©©" (
.
©©( )
IsNullOrEmpty
©©) 6
(
©©6 7
m_Model
©©7 >
.
©©> ?
SavedSearchQuery
©©? O
)
©©O P
;
©©P Q
public
¨¨ 
void
¨¨ 
RequestPublish
¨¨ "
(
¨¨" #
)
¨¨# $
{
≠≠ 	
Assert
ÆÆ 
.
ÆÆ 
IsFalse
ÆÆ 
(
ÆÆ 
	Searching
ÆÆ $
,
ÆÆ$ %
$str
ÆÆ& F
)
ÆÆF G
;
ÆÆG H
m_Model
ØØ 
.
ØØ 
RequestPublish
ØØ "
(
ØØ" #
m_Model
ØØ# *
.
ØØ* +"
SavedRevisionSummary
ØØ+ ?
,
ØØ? @
m_Model
ØØA H
.
ØØH I
GetToggledEntries
ØØI Z
(
ØØZ [
)
ØØ[ \
.
ØØ\ ]
Select
ØØ] c
(
ØØc d
i
ØØd e
=>
ØØf h
i
ØØi j
.
ØØj k
Entry
ØØk p
)
ØØp q
.
ØØq r
ToList
ØØr x
(
ØØx y
)
ØØy z
)
ØØz {
;
ØØ{ |
}
∞∞ 	
public
≥≥ 
void
≥≥ 
RequestDiscard
≥≥ "
(
≥≥" #
IChangeEntry
≥≥# /
entry
≥≥0 5
)
≥≥5 6
{
¥¥ 	
if
µµ 
(
µµ 
m_View
µµ 
.
µµ 
DisplayDialogue
µµ &
(
µµ& '
StringAssets
µµ' 3
.
µµ3 4(
confirmDiscardChangesTitle
µµ4 N
,
µµN O
StringAssets
∂∂ 
.
∂∂ )
confirmDiscardChangeMessage
∂∂ 8
,
∂∂8 9
StringAssets
∂∂: F
.
∂∂F G
discardChanges
∂∂G U
,
∂∂U V
StringAssets
∑∑ 
.
∑∑ 
cancel
∑∑ #
)
∑∑# $
)
∑∑$ %
{
∏∏ 
m_Model
ππ 
.
ππ 
RequestDiscard
ππ &
(
ππ& '
entry
ππ' ,
)
ππ, -
;
ππ- .
}
∫∫ 
}
ªª 	
void
¿¿ #
RequestDiscardToggled
¿¿ "
(
¿¿" #
)
¿¿# $
{
¡¡ 	
var
¬¬ 
entries
¬¬ 
=
¬¬ 
m_Model
¬¬ !
.
¬¬! "
GetToggledEntries
¬¬" 3
(
¬¬3 4
m_Model
¬¬4 ;
.
¬¬; <
SavedSearchQuery
¬¬< L
)
¬¬L M
.
¬¬M N
Select
¬¬N T
(
¬¬T U
e
¬¬U V
=>
¬¬W Y
e
¬¬Z [
.
¬¬[ \
Entry
¬¬\ a
)
¬¬a b
.
¬¬b c
ToList
¬¬c i
(
¬¬i j
)
¬¬j k
;
¬¬k l
if
√√ 
(
√√ 
m_View
√√ 
.
√√ 
DisplayDialogue
√√ &
(
√√& '
StringAssets
√√' 3
.
√√3 4(
confirmDiscardChangesTitle
√√4 N
,
√√N O
string
ƒƒ 
.
ƒƒ 
Format
ƒƒ 
(
ƒƒ 
StringAssets
ƒƒ *
.
ƒƒ* +*
confirmDiscardChangesMessage
ƒƒ+ G
,
ƒƒG H
entries
ƒƒI P
.
ƒƒP Q
Count
ƒƒQ V
)
ƒƒV W
,
ƒƒW X
StringAssets
ƒƒY e
.
ƒƒe f
discardChanges
ƒƒf t
,
ƒƒt u
StringAssets
≈≈ 
.
≈≈ 
cancel
≈≈ #
)
≈≈# $
)
≈≈$ %
{
∆∆ 
m_Model
«« 
.
««  
RequestBulkDiscard
«« *
(
««* +
entries
««+ 2
)
««2 3
;
««3 4
}
»» 
}
…… 	
void
ŒŒ !
UpdatePublishButton
ŒŒ  
(
ŒŒ  !
)
ŒŒ! "
{
œœ 	
if
–– 
(
–– 
m_Model
–– 
.
–– 

Conflicted
–– "
)
––" #
{
—— 
m_View
““ 
.
““ 
SetPublishEnabled
““ (
(
““( )
false
““) .
,
““. /
StringAssets
““0 <
.
““< =*
cannotPublishWhileConflicted
““= Y
)
““Y Z
;
““Z [
}
”” 
else
‘‘ 
if
‘‘ 
(
‘‘ 
m_MainModel
‘‘  
.
‘‘  !&
RemoteRevisionsAvailable
‘‘! 9
)
‘‘9 :
{
’’ 
m_View
÷÷ 
.
÷÷ 
SetPublishEnabled
÷÷ (
(
÷÷( )
false
÷÷) .
,
÷÷. /
StringAssets
÷÷0 <
.
÷÷< =.
 cannotPublishWithIncomingChanges
÷÷= ]
)
÷÷] ^
;
÷÷^ _
}
◊◊ 
else
ÿÿ 
if
ÿÿ 
(
ÿÿ 
m_Model
ÿÿ 
.
ÿÿ 
ToggledCount
ÿÿ )
<
ÿÿ* +
$num
ÿÿ, -
)
ÿÿ- .
{
ŸŸ 
m_View
⁄⁄ 
.
⁄⁄ 
SetPublishEnabled
⁄⁄ (
(
⁄⁄( )
false
⁄⁄) .
,
⁄⁄. /
StringAssets
⁄⁄0 <
.
⁄⁄< ='
cannotPublishWithoutFiles
⁄⁄= V
)
⁄⁄V W
;
⁄⁄W X
}
€€ 
else
‹‹ 
if
‹‹ 
(
‹‹ 
	Searching
‹‹ 
)
‹‹ 
{
›› 
m_View
ﬁﬁ 
.
ﬁﬁ 
SetPublishEnabled
ﬁﬁ (
(
ﬁﬁ( )
false
ﬁﬁ) .
,
ﬁﬁ. /
StringAssets
ﬁﬁ0 <
.
ﬁﬁ< =)
cannotPublishWhileSearching
ﬁﬁ= X
)
ﬁﬁX Y
;
ﬁﬁY Z
}
ﬂﬂ 
else
‡‡ 
{
·· 
m_View
‚‚ 
.
‚‚ 
SetPublishEnabled
‚‚ (
(
‚‚( )
true
‚‚) -
)
‚‚- .
;
‚‚. /
}
„„ 
}
‰‰ 	
public
ÁÁ 
void
ÁÁ  
RequestDiffChanges
ÁÁ &
(
ÁÁ& '
string
ÁÁ' -
path
ÁÁ. 2
)
ÁÁ2 3
{
ËË 	
m_Model
ÈÈ 
.
ÈÈ  
RequestDiffChanges
ÈÈ &
(
ÈÈ& '
path
ÈÈ' +
)
ÈÈ+ ,
;
ÈÈ, -
}
ÍÍ 	
public
ÌÌ 
void
ÌÌ 
SetSearchQuery
ÌÌ "
(
ÌÌ" #
string
ÌÌ# )
query
ÌÌ* /
)
ÌÌ/ 0
{
ÓÓ 	
var
ÔÔ 
value
ÔÔ 
=
ÔÔ 
StringUtility
ÔÔ %
.
ÔÔ% &
TrimAndToLower
ÔÔ& 4
(
ÔÔ4 5
query
ÔÔ5 :
)
ÔÔ: ;
;
ÔÔ; <
m_Model
 
.
 
SavedSearchQuery
 $
=
% &
value
' ,
;
, -
m_View
ÒÒ 
.
ÒÒ 
SetSearchQuery
ÒÒ !
(
ÒÒ! "
query
ÒÒ" '
)
ÒÒ' (
;
ÒÒ( )
UpdateChangeList
ÚÚ 
(
ÚÚ 
)
ÚÚ 
;
ÚÚ !
UpdatePublishButton
ÛÛ 
(
ÛÛ  
)
ÛÛ  !
;
ÛÛ! "
}
ÙÙ 	
public
˜˜ 
void
˜˜  
SetRevisionSummary
˜˜ &
(
˜˜& '
string
˜˜' -
message
˜˜. 5
)
˜˜5 6
{
¯¯ 	
m_View
˘˘ 
.
˘˘  
SetRevisionSummary
˘˘ %
(
˘˘% &
message
˘˘& -
)
˘˘- .
;
˘˘. /
m_Model
˙˙ 
.
˙˙ "
SavedRevisionSummary
˙˙ (
=
˙˙) *
message
˙˙+ 2
;
˙˙2 3
}
˚˚ 	
public
˛˛ 
int
˛˛ %
GroupOverflowEntryCount
˛˛ *
=>
˛˛+ -
$num
˛˛. /
;
˛˛/ 0
public
ÅÅ 
void
ÅÅ "
OnClickGroupOverflow
ÅÅ (
(
ÅÅ( )
float
ÅÅ) .
x
ÅÅ/ 0
,
ÅÅ0 1
float
ÅÅ2 7
y
ÅÅ8 9
)
ÅÅ9 :
{
ÇÇ 	
new
ÉÉ 
FloatingMenu
ÉÉ 
(
ÉÉ 
)
ÉÉ 
.
ÑÑ 
AddEntry
ÑÑ 
(
ÑÑ 
StringAssets
ÑÑ &
.
ÑÑ& ''
menuDiscardToggledChanges
ÑÑ' @
,
ÑÑ@ A#
RequestDiscardToggled
ÑÑB W
,
ÑÑW X
ToggledCount
ÑÑY e
>
ÑÑf g
$num
ÑÑh i
)
ÑÑi j
.
ÖÖ 
SetOpenDirection
ÖÖ !
(
ÖÖ! "
MenuUtilities
ÖÖ" /
.
ÖÖ/ 0
OpenDirection
ÖÖ0 =
.
ÖÖ= >
DownLeft
ÖÖ> F
)
ÖÖF G
.
ÜÜ 
Open
ÜÜ 
(
ÜÜ 
x
ÜÜ 
,
ÜÜ 
y
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
public
ää 
int
ää -
ConflictGroupOverflowEntryCount
ää 2
=>
ää3 5
$num
ää6 7
;
ää7 8
public
çç 
void
çç *
OnClickConflictGroupOverflow
çç 0
(
çç0 1
float
çç1 6
x
çç7 8
,
çç8 9
float
çç: ?
y
çç@ A
)
ççA B
{
éé 	
new
èè 
FloatingMenu
èè 
(
èè 
)
èè 
.
êê 
AddEntry
êê 
(
êê 
StringAssets
êê &
.
êê& '
useMyChanges
êê' 3
,
êê3 4
OnBulkUseMine
êê5 B
,
êêB C
true
êêD H
)
êêH I
.
ëë 
AddEntry
ëë 
(
ëë 
StringAssets
ëë &
.
ëë& '
useRemoteChanges
ëë' 7
,
ëë7 8
OnBulkUseRemote
ëë9 H
,
ëëH I
true
ëëJ N
)
ëëN O
.
íí 
SetOpenDirection
íí !
(
íí! "
MenuUtilities
íí" /
.
íí/ 0
OpenDirection
íí0 =
.
íí= >
DownLeft
íí> F
)
ííF G
.
ìì 
Open
ìì 
(
ìì 
x
ìì 
,
ìì 
y
ìì 
)
ìì 
;
ìì 
}
îî 	
void
ôô 
OnBulkUseMine
ôô 
(
ôô 
)
ôô 
{
öö 	
m_Model
õõ 
.
õõ 
RequestChooseMine
õõ %
(
õõ% &
m_Model
õõ& -
.
õõ- ."
GetConflictedEntries
õõ. B
(
õõB C
)
õõC D
.
õõD E
Select
õõE K
(
õõK L
e
õõL M
=>
õõN P
e
õõQ R
.
õõR S
Entry
õõS X
.
õõX Y
Path
õõY ]
)
õõ] ^
.
õõ^ _
ToArray
õõ_ f
(
õõf g
)
õõg h
)
õõh i
;
õõi j
}
úú 	
void
°° 
OnBulkUseRemote
°° 
(
°° 
)
°° 
{
¢¢ 	
m_Model
££ 
.
££ !
RequestChooseRemote
££ '
(
££' (
m_Model
££( /
.
££/ 0"
GetConflictedEntries
££0 D
(
££D E
)
££E F
.
££F G
Select
££G M
(
££M N
e
££N O
=>
££P R
e
££S T
.
££T U
Entry
££U Z
.
££Z [
Path
££[ _
)
££_ `
.
££` a
ToArray
££a h
(
££h i
)
££i j
)
££j k
;
££k l
}
§§ 	
public
ßß 
void
ßß .
 RequestShowConflictedDifferences
ßß 4
(
ßß4 5
string
ßß5 ;
path
ßß< @
)
ßß@ A
{
®® 	
m_Model
©© 
.
©© .
 RequestShowConflictedDifferences
©© 4
(
©©4 5
path
©©5 9
)
©©9 :
;
©©: ;
}
™™ 	
public
≠≠ 
void
≠≠  
RequestChooseMerge
≠≠ &
(
≠≠& '
string
≠≠' -
path
≠≠. 2
)
≠≠2 3
{
ÆÆ 	
m_Model
ØØ 
.
ØØ  
RequestChooseMerge
ØØ &
(
ØØ& '
path
ØØ' +
)
ØØ+ ,
;
ØØ, -
}
∞∞ 	
public
≥≥ 
void
≥≥ 
RequestChooseMine
≥≥ %
(
≥≥% &
string
≥≥& ,
path
≥≥- 1
)
≥≥1 2
{
¥¥ 	
m_Model
µµ 
.
µµ 
RequestChooseMine
µµ %
(
µµ% &
new
µµ& )
[
µµ* +
]
µµ+ ,
{
µµ- .
path
µµ/ 3
}
µµ4 5
)
µµ5 6
;
µµ6 7
}
∂∂ 	
public
ππ 
void
ππ !
RequestChooseRemote
ππ '
(
ππ' (
string
ππ( .
path
ππ/ 3
)
ππ3 4
{
∫∫ 	
m_Model
ªª 
.
ªª !
RequestChooseRemote
ªª '
(
ªª' (
new
ªª( +
[
ªª, -
]
ªª- .
{
ªª/ 0
path
ªª1 5
}
ªª6 7
)
ªª7 8
;
ªª8 9
}
ºº 	
}
ΩΩ 
}ææ ˇX
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\TabView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
[ 
UsedImplicitly 
] 
internal 
class 
TabView 
: 
VisualElement *
{ 
public 
const 
string 
UssClassName (
=) *
$str+ ;
;; <
public 
const 
string (
ContentContainerUssClassName 8
=9 :
UssClassName; G
+H I
$strJ _
;_ `
public 
const 
string !
TabHeaderUssClassName 1
=2 3
UssClassName4 @
+A B
$strC Q
;Q R
public 
const 
string 
ToolbarUssClassName /
=0 1
UssClassName2 >
+? @
$strA L
;L M
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
TabViewU \
)\ ]
}] ^
.uss^ b
"b c
;c d
const 
int 
k_NoTabs 
= 
- 
$num 
;  
int 
m_ActiveTabIndex 
= 
k_NoTabs '
;' (
bool 
m_Active 
; 
readonly 
VisualElement 
	m_Content (
;( )
readonly 
VisualElement 
	m_Toolbar (
;( )
readonly 
List 
< 
( 

TextButton !
button" (
,( )
TabPageComponent* :
tab; >
)> ?
>? @
	m_TabListA J
;J K
public   
event   
Action   
<   
int   
>    
TabSwitched  ! ,
;  , -
public"" 
TabView"" 
("" 
)"" 
{## 	
AddToClassList$$ 
($$ 
UssClassName$$ '
)$$' (
;$$( )
styleSheets%% 
.%% 
Add%% 
(%% 
AssetDatabase%% )
.%%) *
LoadAssetAtPath%%* 9
<%%9 :

StyleSheet%%: D
>%%D E
(%%E F
k_StylePath%%F Q
)%%Q R
)%%R S
;%%S T
	m_Toolbar'' 
='' 
new'' 
VisualElement'' )
{''* +
name'', 0
=''1 2
$str''3 K
}''L M
;''M N
	m_Toolbar(( 
.(( 
AddToClassList(( $
((($ %
ToolbarUssClassName((% 8
)((8 9
;((9 :
	m_Toolbar)) 
.)) 
AddToClassList)) $
())$ %
UiConstants))% 0
.))0 1
ussDefaultInset))1 @
)))@ A
;))A B
	hierarchy** 
.** 
Add** 
(** 
	m_Toolbar** #
)**# $
;**$ %
	m_Content,, 
=,, 
new,, 
VisualElement,, )
{,,* +
name,,, 0
=,,1 2
$str,,3 L
},,M N
;,,N O
	m_Content-- 
.-- 
AddToClassList-- $
(--$ %(
ContentContainerUssClassName--% A
)--A B
;--B C
	hierarchy.. 
... 
Add.. 
(.. 
	m_Content.. #
)..# $
;..$ %
	m_TabList00 
=00 
new00 
List00  
<00  !
(00! "

TextButton00" ,
button00- 3
,003 4
TabPageComponent005 E
tab00F I
)00I J
>00J K
(00K L
)00L M
;00M N
}11 	
public33 
void33 
	SetActive33 
(33 
)33 
{44 	
Assert55 
.55 
IsFalse55 
(55 
m_Active55 #
,55# $
$str55% A
)55A B
;55B C
m_Active66 
=66 
true66 
;66 
if77 
(77 
m_ActiveTabIndex77  
!=77! #
k_NoTabs77$ ,
)77, -
{88 
	m_TabList99 
[99 
m_ActiveTabIndex99 *
]99* +
.99+ ,
tab99, /
.99/ 0
	SetActive990 9
(999 :
true99: >
)99> ?
;99? @
}:: 
};; 	
public== 
void== 
SetInactive== 
(==  
)==  !
{>> 	
Assert?? 
.?? 
IsTrue?? 
(?? 
m_Active?? "
,??" #
$str??$ B
)??B C
;??C D
m_Active@@ 
=@@ 
false@@ 
;@@ 
ifAA 
(AA 
m_ActiveTabIndexAA  
!=AA! #
k_NoTabsAA$ ,
)AA, -
{BB 
	m_TabListCC 
[CC 
m_ActiveTabIndexCC *
]CC* +
.CC+ ,
tabCC, /
.CC/ 0
	SetActiveCC0 9
(CC9 :
falseCC: ?
)CC? @
;CC@ A
}DD 
}EE 	
publicLL 
voidLL 
AddTabLL 
(LL 
stringLL !
tabNameLL" )
,LL) *
TabPageComponentLL+ ;
tabLL< ?
)LL? @
{MM 	
varOO 
indexOO 
=OO 
	m_TabListOO !
.OO! "
CountOO" '
;OO' (
tabQQ 
.QQ 
styleQQ 
.QQ 
flexGrowQQ 
=QQ  
$numQQ! "
;QQ" #
tabRR 
.RR 
styleRR 
.RR 

flexShrinkRR  
=RR! "
$numRR# $
;RR$ %
tabSS 
.SS 
styleSS 
.SS 
	flexBasisSS 
=SS  !
newSS" %
StyleLengthSS& 1
(SS1 2
StyleKeywordSS2 >
.SS> ?
AutoSS? C
)SSC D
;SSD E
varVV 
	indexCopyVV 
=VV 
indexVV !
;VV! "
varWW 
btnWW 
=WW 
newWW 

TextButtonWW $
(WW$ %
(WW% &
)WW& '
=>WW( *
SwitchTabInternalWW+ <
(WW< =
	indexCopyWW= F
)WWF G
)WWG H
{WWI J
textWWK O
=WWP Q
tabNameWWR Y
}WWZ [
;WW[ \
btnXX 
.XX 
AddToClassListXX 
(XX !
TabHeaderUssClassNameXX 4
)XX4 5
;XX5 6
	m_ToolbarYY 
.YY 
AddYY 
(YY 
btnYY 
)YY 
;YY 
	m_TabList\\ 
.\\ 
Add\\ 
(\\ 
(\\ 
btn\\ 
,\\ 
tab\\  #
)\\# $
)\\$ %
;\\% &
if__ 
(__ 
m_ActiveTabIndex__  
==__! #
k_NoTabs__$ ,
)__, -
{`` 
SwitchToNextTabaa 
(aa  
)aa  !
;aa! "
}bb 
}cc 	
publicii 
voidii 
	SwitchTabii 
(ii 
intii !
indexii" '
)ii' (
{jj 	
ifll 
(ll 
indexll 
==ll 
k_NoTabsll !
)ll! "
returnll# )
;ll) *
ifmm 
(mm 
indexmm 
<mm 
	m_TabListmm !
.mm! "
Countmm" '
)mm' (
{nn 
SwitchTabInternaloo !
(oo! "
indexoo" '
)oo' (
;oo( )
}pp 
}qq 	
voidww 
SwitchTabInternalww 
(ww 
intww "
indexww# (
)ww( )
{xx 	
ifzz 
(zz 
m_ActiveTabIndexzz  
!=zz! #
k_NoTabszz$ ,
)zz, -
{{{ 
	m_TabList|| 
[|| 
m_ActiveTabIndex|| *
]||* +
.||+ ,
tab||, /
.||/ 0
RemoveFromHierarchy||0 C
(||C D
)||D E
;||E F
if}} 
(}} 
m_Active}} 
)}} 
{~~ 
	m_TabList 
[ 
m_ActiveTabIndex .
]. /
./ 0
tab0 3
.3 4
	SetActive4 =
(= >
false> C
)C D
;D E
}
ÄÄ 
	m_TabList
ÅÅ 
[
ÅÅ 
m_ActiveTabIndex
ÅÅ *
]
ÅÅ* +
.
ÅÅ+ ,
button
ÅÅ, 2
.
ÅÅ2 3!
RemoveFromClassList
ÅÅ3 F
(
ÅÅF G
UiConstants
ÅÅG R
.
ÅÅR S
	ussActive
ÅÅS \
)
ÅÅ\ ]
;
ÅÅ] ^
}
ÇÇ 
m_ActiveTabIndex
ÖÖ 
=
ÖÖ 
index
ÖÖ $
;
ÖÖ$ %
if
àà 
(
àà 
m_Active
àà 
)
àà 
{
ââ 
	m_TabList
ää 
[
ää 
m_ActiveTabIndex
ää *
]
ää* +
.
ää+ ,
tab
ää, /
.
ää/ 0
	SetActive
ää0 9
(
ää9 :
true
ää: >
)
ää> ?
;
ää? @
}
ãã 
	m_TabList
åå 
[
åå 
m_ActiveTabIndex
åå &
]
åå& '
.
åå' (
button
åå( .
.
åå. /
AddToClassList
åå/ =
(
åå= >
UiConstants
åå> I
.
ååI J
	ussActive
ååJ S
)
ååS T
;
ååT U
	m_Content
çç 
.
çç 
Add
çç 
(
çç 
	m_TabList
çç #
[
çç# $
m_ActiveTabIndex
çç$ 4
]
çç4 5
.
çç5 6
tab
çç6 9
)
çç9 :
;
çç: ;
TabSwitched
èè 
?
èè 
.
èè 
Invoke
èè 
(
èè  
index
èè  %
)
èè% &
;
èè& '
}
êê 	
void
ïï 
SwitchToNextTab
ïï 
(
ïï 
)
ïï 
{
ññ 	
var
óó 
index
óó 
=
óó 
(
óó 
m_ActiveTabIndex
óó )
+
óó* +
$num
óó, -
)
óó- .
%
óó/ 0
	m_TabList
óó1 :
.
óó: ;
Count
óó; @
;
óó@ A
SwitchTabInternal
òò 
(
òò 
index
òò #
)
òò# $
;
òò$ %
}
ôô 	
public
õõ 
override
õõ 
VisualElement
õõ %
contentContainer
õõ& 6
=>
õõ7 9
	m_Content
õõ: C
;
õõC D
[
ùù 	
UsedImplicitly
ùù	 
]
ùù 
public
ûû 
new
ûû 
class
ûû 
UxmlFactory
ûû $
:
ûû% &
UxmlFactory
ûû' 2
<
ûû2 3
TabView
ûû3 :
>
ûû: ;
{
ûû< =
}
ûû> ?
}
üü 
}†† õ%
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\ListAdapters\HistoryEntryChangeListAdapter.cs
	namespace		 	
Unity		
 
.		 
Cloud		 
.		 
Collaborate		 !
.		! "
Views		" '
.		' (
Adapters		( 0
.		0 1
ListAdapters		1 =
{

 
internal 
class )
HistoryEntryChangeListAdapter 0
:1 2
BaseListAdapter3 B
<B C$
HistoryChangeListElementC [
>[ \
{ 
string 
m_RevisionId 
; 
IList 
< 
IChangeEntry 
> 
m_List "
;" #
readonly 
IHistoryPresenter "
m_Presenter# .
;. /
public )
HistoryEntryChangeListAdapter ,
(, -
[- .
NotNull. 5
]5 6
IHistoryPresenter7 H
	presenterI R
,R S
[T U
NotNullU \
]\ ]
string^ d

revisionIde o
,o p
[q r
NotNullr y
]y z
IList	{ Ä
<
Ä Å
IChangeEntry
Å ç
>
ç é
list
è ì
)
ì î
{ 	
m_Presenter 
= 
	presenter #
;# $
m_RevisionId 
= 

revisionId %
;% &
m_List 
= 
list 
; 
} 	
public 
override 
int 
Height "
=># %
UiConstants& 1
.1 2%
HistoryListViewItemHeight2 K
;K L
	protected 
override $
HistoryChangeListElement 3
MakeItem4 <
(< =
)= >
{ 	
return 
new $
HistoryChangeListElement /
(/ 0
)0 1
;1 2
} 	
	protected 
override 
void 
BindItem  (
(( )$
HistoryChangeListElement) A
elementB I
,I J
intK N
indexO T
)T U
{   	
element!! 
.!! 
	ClearData!! 
(!! 
)!! 
;!!  
var"" 
entry"" 
="" 
m_List"" 
["" 
index"" $
]""$ %
;""% &
element## 
.## 
UpdateFilePath## "
(##" #
entry### (
.##( )
Path##) -
)##- .
;##. /
element&& 
.&& 

statusIcon&& 
.&& 
ClearClassList&& -
(&&- .
)&&. /
;&&/ 0
element'' 
.'' 

statusIcon'' 
.'' 
AddToClassList'' -
(''- .!
BaseChangeListElement''. C
.''C D
IconUssClassName''D T
)''T U
;''U V
element(( 
.(( 

statusIcon(( 
.(( 
AddToClassList(( -
(((- .$
HistoryChangeListElement((. F
.((F G"
StatusIconUssClassName((G ]
)((] ^
;((^ _
element)) 
.)) 

statusIcon)) 
.)) 
AddToClassList)) -
())- .
entry)). 3
.))3 4
StatusToString))4 B
())B C
)))C D
)))D E
;))E F
if++ 
(++ 
m_Presenter++ 
.++ 
SupportsRevert++ *
)++* +
{,, 
element-- 
.-- 
revertButton-- $
.--$ %
Clicked--% ,
+=--- /
(--0 1
)--1 2
=>--3 5
m_Presenter--6 A
.--A B
RequestRevert--B O
(--O P
m_RevisionId--P \
,--\ ]
new--^ a
List--b f
<--f g
string--g m
>--m n
{--o p
entry--q v
.--v w
Path--w {
}--| }
)--} ~
;--~ 
}.. 
else// 
{00 
element11 
.11 
revertButton11 $
.11$ %
AddToClassList11% 3
(113 4
UiConstants114 ?
.11? @
	ussHidden11@ I
)11I J
;11J K
}22 
}33 	
public55 
override55 
int55 
GetEntryCount55 )
(55) *
)55* +
{66 	
return77 
m_List77 
.77 
Count77 
;77  
}88 	
}99 
}:: ‡

èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Assets\UiConstants.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Assets" (
{ 
internal 
static 
class 
UiConstants %
{ 
public 
const 
int %
ChangesListViewItemHeight 2
=3 4
$num5 7
;7 8
public 
const 
int %
HistoryListViewItemHeight 2
=3 4
$num5 7
;7 8
public 
const 
string 
ussDark #
=$ %
$str& ,
;, -
public 
const 
string 
ussLight $
=% &
$str' .
;. /
public 
const 
string 
	ussHidden %
=& '
$str( 0
;0 1
public 
const 
string 
ussDefaultInset +
=, -
$str. =
;= >
public 
const 
string 
	ussActive %
=& '
$str( 0
;0 1
} 
} õ
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Common\LocationAttribute.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Common" (
{) *
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
)* +
]+ ,
internal 
sealed 
class 
LocationAttribute +
:, -
	Attribute. 7
{ 
public		 
enum		 
Location		 
{		 
PreferencesFolder		 0
,		0 1
LibraryFolder		2 ?
}		@ A
string 
m_RelativePath 
; 
readonly 
Location 

m_Location $
;$ %
string 

m_FilePath 
; 
public 
string 
FilePath 
{  
get 
{ 
if 
( 

m_FilePath 
!= !
null" &
)& '
return( .

m_FilePath/ 9
;9 :
if 
( 
m_RelativePath "
[" #
$num# $
]$ %
==& (
$char) ,
), -
m_RelativePath "
=# $
m_RelativePath% 3
.3 4
	Substring4 =
(= >
$num> ?
)? @
;@ A
if 
( 

m_Location 
== !
Location" *
.* +
PreferencesFolder+ <
)< =

m_FilePath 
=  
$"! #
{# $!
InternalEditorUtility$ 9
.9 :"
unityPreferencesFolder: P
}P Q
/Q R
{R S
m_RelativePathS a
}a b
"b c
;c d
else 
if 
( 

m_Location #
==$ &
Location' /
./ 0
LibraryFolder0 =
)= >

m_FilePath 
=  
$"! #
Library/Collab/# 2
{2 3
m_RelativePath3 A
}A B
"B C
;C D
return 

m_FilePath !
;! "
} 
} 	
public 
LocationAttribute  
(  !
string! '
relativePath( 4
,4 5
Location6 >
location? G
)G H
{   	
m_RelativePath"" 
="" 
relativePath"" )
;"") *

m_Location## 
=## 
location## !
;##! "
}$$ 	
}%% 
}&& ã,
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ProgressView.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "

Components

" ,
{ 
[ 
UsedImplicitly 
] 
internal 
class 
ProgressView 
:  !
VisualElement" /
{ 
public 
const 
string 
UssClassName (
=) *
$str+ :
;: ;
public 
const 
string 
LabelUssClassName -
=. /
UssClassName0 <
+= >
$str? H
;H I
public 
const 
string #
ProgressBarUssClassName 3
=4 5
UssClassName6 B
+C D
$strE U
;U V
public 
const 
string 
ButtonUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
ProgressViewW c
)c d
}d e
.uxmle j
"j k
;k l
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
ProgressViewU a
)a b
}b c
.ussc g
"g h
;h i
readonly 
Label 
m_Label 
; 
readonly 
ProgressBar 
m_ProgressBar *
;* +
readonly 
Button 
m_Button  
;  !
public 
ProgressView 
( 
) 
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase 
. 
LoadAssetAtPath )
<) *
VisualTreeAsset* 9
>9 :
(: ;
k_LayoutPath; G
)G H
.H I
	CloneTreeI R
(R S
thisS W
)W X
;X Y
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
m_Label!! 
=!! 
this!! 
.!! 
Q!! 
<!! 
Label!! "
>!!" #
(!!# $
	className!!$ -
:!!- .
LabelUssClassName!!/ @
)!!@ A
;!!A B
m_Label"" 
."" 
text"" 
="" 
string"" !
.""! "
Empty""" '
;""' (
m_ProgressBar$$ 
=$$ 
this$$  
.$$  !
Q$$! "
<$$" #
ProgressBar$$# .
>$$. /
($$/ 0
	className$$0 9
:$$9 :#
ProgressBarUssClassName$$; R
)$$R S
;$$S T
m_Button&& 
=&& 
this&& 
.&& 
Q&& 
<&& 
Button&& $
>&&$ %
(&&% &
	className&&& /
:&&/ 0
ButtonUssClassName&&1 C
)&&C D
;&&D E
m_Button'' 
.'' 
text'' 
='' 
StringAssets'' (
.''( )
cancel'') /
;''/ 0
}(( 	
public** 
void** 
SetText** 
(** 
string** "
text**# '
,**' (
string**) /
progressText**0 <
)**< =
{++ 	
m_Label,, 
.,, 
text,, 
=,, 
text,, 
;,,  
m_ProgressBar-- 
.-- 
title-- 
=--  !
progressText--" .
;--. /
}.. 	
public00 
void00 
SetPercentComplete00 &
(00& '
int00' *
percent00+ 2
)002 3
{11 	
m_ProgressBar22 
.22 
value22 
=22  !
percent22" )
;22) *
}33 	
public55 
void55 
SetCancelCallback55 %
(55% &
Action55& ,
callback55- 5
)555 6
{66 	
m_Button77 
.77 
	clickable77 
.77 
clicked77 &
+=77' )
callback77* 2
;772 3
}88 	
public:: 
void:: !
SetCancelButtonActive:: )
(::) *
bool::* .
active::/ 5
)::5 6
{;; 	
m_Button<< 
.<< 

SetEnabled<< 
(<<  
active<<  &
)<<& '
;<<' (
}== 	
[?? 	
UsedImplicitly??	 
]?? 
public@@ 
new@@ 
class@@ 
UxmlFactory@@ $
:@@% &
UxmlFactory@@' 2
<@@2 3
ProgressView@@3 ?
>@@? @
{@@A B
}@@C D
}AA 
}DD ¯
≥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeListElements\HistoryChangeListElement.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
ChangeListEntries- >
{ 
internal 
class $
HistoryChangeListElement +
:, -!
BaseChangeListElement. C
{		 
public

 
new

 
const

 
string

 
UssClassName

  ,
=

- .
$str

/ L
;

L M
public 
const 
string "
StatusIconUssClassName 2
=3 4
UssClassName5 A
+B C
$strD L
;L M
public 
const 
string $
RevertButtonUssClassName 4
=5 6
UssClassName7 C
+D E
$strF W
;W X
public 
readonly 
VisualElement %

statusIcon& 0
;0 1
public 
readonly 

IconButton "
revertButton# /
;/ 0
public $
HistoryChangeListElement '
(' (
)( )
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )

statusIcon 
= 
new 
VisualElement *
(* +
)+ ,
;, -

statusIcon 
. 
AddToClassList %
(% &
IconUssClassName& 6
)6 7
;7 8

statusIcon 
. 
AddToClassList %
(% &"
StatusIconUssClassName& <
)< =
;= >
icons 
. 
Add 
( 

statusIcon  
)  !
;! "
revertButton 
= 
new 

IconButton )
() *
)* +
;+ ,
revertButton 
. 
AddToClassList '
(' (

IconButton( 2
.2 3
UndoUssClassName3 C
)C D
;D E
revertButton 
. 
AddToClassList '
(' (
ButtonUssClassName( :
): ;
;; <
revertButton 
. 
AddToClassList '
(' ($
RevertButtonUssClassName( @
)@ A
;A B
buttons   
.   
Add   
(   
revertButton   $
)  $ %
;  % &
}!! 	
public## 
override## 
void## 
	ClearData## &
(##& '
)##' (
{$$ 	
base%% 
.%% 
	ClearData%% 
(%% 
)%% 
;%% 
revertButton'' 
.'' !
UnregisterClickEvents'' .
(''. /
)''/ 0
;''0 1

statusIcon)) 
.)) 
ClearClassList)) %
())% &
)))& '
;))' (

statusIcon** 
.** 
AddToClassList** %
(**% &
IconUssClassName**& 6
)**6 7
;**7 8

statusIcon++ 
.++ 
AddToClassList++ %
(++% &"
StatusIconUssClassName++& <
)++< =
;++= >
},, 	
[.. 	
UsedImplicitly..	 
].. 
public// 
new// 
class// 
UxmlFactory// $
://% &
UxmlFactory//' 2
<//2 3$
HistoryChangeListElement//3 K
>//K L
{//M N
}//O P
}00 
}11 ø
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\IStartModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
	interface 
IStartModel "
:# $
IModel% +
{ 
event 
Action 
< 
ProjectStatus "
>" # 
ProjectStatusChanged$ 8
;8 9
ProjectStatus 
ProjectStatus #
{$ %
get& )
;) *
}+ ,
void  
RequestTurnOnService !
(! "
)" #
;# $
void 
ShowServicePage 
( 
) 
; 
void 
ShowLoginPage 
( 
) 
; 
void$$ 
ShowNoSeatPage$$ 
($$ 
)$$ 
;$$ 
}%% 
}&& ø3
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeEntryGroup.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
internal 
class 
ChangeEntryGroup #
:$ %
VisualElement& 3
{		 
readonly

 
AdapterListView

  

m_ListView

! +
;

+ ,
readonly 
ChangesGroupHeader #
m_GroupHeader$ 1
;1 2
readonly 

ListNotice 
m_ListNotice (
;( )
[ 	
NotNull	 
] 
string 
m_Title 
= 
string 
.  
Empty  %
;% &
bool 
m_Searching 
; 
int  
m_SelectedEntryCount  
;  !
int 
m_EntryCount 
; 
public 
ChangeEntryGroup 
(  
[  !
NotNull! (
]( )
AdapterListView* 9
adapterListView: I
)I J
{ 	

m_ListView 
= 
adapterListView (
;( )
m_GroupHeader 
= 
new 
ChangesGroupHeader  2
(2 3
)3 4
;4 5
m_ListNotice 
= 
new 

ListNotice )
() *
)* +
;+ ,
m_ListNotice 
. 
AddToClassList '
(' (
UiConstants( 3
.3 4
	ussHidden4 =
)= >
;> ?
Add 
( 
m_GroupHeader 
) 
; 
Add 
( 

m_ListView 
) 
; 
Add 
( 
m_ListNotice 
) 
; 
} 	
[   	
NotNull  	 
]   
public!! 
string!! 
Title!! 
{"" 	
set## 
{$$ 
m_Title%% 
=%% 
value%% 
;%%  
UpdateTitle&& 
(&& 
)&& 
;&& 
}'' 
get(( 
=>(( 
m_Title(( 
;(( 
})) 	
public++ 
bool++ 
	Searching++ 
{,, 	
set-- 
{.. 
m_Searching// 
=// 
value// #
;//# $ 
UpdateListNoticeText00 $
(00$ %
)00% &
;00& '
}11 
get22 
=>22 
m_Searching22 
;22 
}33 	
public55 
int55 
NumberMenuItems55 "
{66 	
set77 
=>77 
m_GroupHeader77  
.77  !!
SetEnableOverflowMenu77! 6
(776 7
value777 <
!=77= ?
$num77@ A
)77A B
;77B C
}88 	
public:: 
int:: 

EntryCount:: 
{;; 	
set<< 
{== 
m_EntryCount>> 
=>> 
value>> $
;>>$ %
UpdateListNotice??  
(??  !
)??! "
;??" #
}@@ 
getAA 
=>AA 
m_EntryCountAA 
;AA  
}BB 	
publicDD 
intDD 
SelectedEntryCountDD %
{EE 	
setFF 
{GG  
m_SelectedEntryCountHH $
=HH% &
valueHH' ,
;HH, -
UpdateTitleII 
(II 
)II 
;II 
}JJ 
getKK 
=>KK  
m_SelectedEntryCountKK '
;KK' (
}LL 	
voidNN  
UpdateListNoticeTextNN !
(NN! "
)NN" #
{OO 	
m_ListNoticePP 
.PP 
TextPP 
=PP 
	SearchingPP  )
?PP* +
StringAssetsPP, 8
.PP8 9#
noticeNoResultsForQueryPP9 P
:PPQ R
StringAssetsPPS _
.PP_ `$
noticeNoChangesToDisplayPP` x
;PPx y
}QQ 	
voidSS 
UpdateTitleSS 
(SS 
)SS 
{TT 	
m_GroupHeaderUU 
.UU 
UpdateGroupNameUU )
(UU) *
	SearchingUU* 3
?VV 
StringAssetsVV 
.VV 
searchResultsVV ,
:WW 
stringWW 
.WW 
FormatWW 
(WW  
StringAssetsWW  ,
.WW, -#
changeGroupHeaderFormatWW- D
,WWD E
TitleWWF K
,WWK L
SelectedEntryCountWWM _
)WW_ `
)WW` a
;WWa b
}XX 	
voidZZ 
UpdateListNoticeZZ 
(ZZ 
)ZZ 
{[[ 	
if\\ 
(\\ 
m_EntryCount\\ 
!=\\ 
$num\\  !
)\\! "
{]] 
m_ListNotice^^ 
.^^ 
AddToClassList^^ +
(^^+ ,
UiConstants^^, 7
.^^7 8
	ussHidden^^8 A
)^^A B
;^^B C

m_ListView__ 
.__ 
RemoveFromClassList__ .
(__. /
UiConstants__/ :
.__: ;
	ussHidden__; D
)__D E
;__E F
}`` 
elseaa 
{bb 
m_ListNoticecc 
.cc 
RemoveFromClassListcc 0
(cc0 1
UiConstantscc1 <
.cc< =
	ussHiddencc= F
)ccF G
;ccG H

m_ListViewdd 
.dd 
AddToClassListdd )
(dd) *
UiConstantsdd* 5
.dd5 6
	ussHiddendd6 ?
)dd? @
;dd@ A
}ee 
}ff 	
publichh 
voidhh 
SetOverflowCallbackhh '
(hh' (
Actionhh( .
<hh. /
floathh/ 4
,hh4 5
floathh6 ;
>hh; <
callbackhh= E
)hhE F
{ii 	
m_GroupHeaderjj 
.jj #
OnOverflowButtonClickedjj 1
+=jj2 4
callbackjj5 =
;jj= >
}kk 	
publicmm 
voidmm 
ScrollTomm 
(mm 
intmm  
idxmm! $
)mm$ %
{nn 	

m_ListViewoo 
.oo 
ScrollToIndexoo $
(oo$ %
idxoo% (
)oo( )
;oo) *
}pp 	
}qq 
}rr ñ
ìD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Settings\CollabSetting.cs™
õD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\IChangeEntry.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
enum 
ChangeEntryStatus #
{ 
None 
, 
	Untracked 
, 
Ignored 
, 
Modified 
, 
Added		 
,		 
Deleted

 
,

 
Renamed 
, 
Copied 
, 

TypeChange 
, 
Unmerged 
, 
Unknown 
, 
Broken 
} 
internal 
	interface 
IChangeEntry #
{ 
string 
Path 
{ 
get 
; 
} 
string 
OriginalPath 
{ 
get !
;! "
}# $
ChangeEntryStatus 
Status  
{! "
get# &
;& '
}( )
bool 
Staged 
{ 
get 
; 
} 
bool 
Unmerged 
{ 
get 
; 
} 
object 
Tag 
{ 
get 
; 
} 
string   
StatusToString   
(   
)   
;    
}!! 
}"" Æ
ôD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\IErrorInfo.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
	interface 

IErrorInfo !
{ 
int 
Code 
{ 
get 
; 
} 
ErrorInfoPriority 
Priority "
{# $
get% (
;( )
}* +
ErrorInfoBehavior 
	Behaviour #
{$ %
get& )
;) *
}+ ,
string 
Message 
{ 
get 
; 
} 
string		 
ShortMessage		 
{		 
get		 !
;		! "
}		# $
string

 

CodeString

 
{

 
get

 
;

  
}

! "
} 
internal 
enum 
ErrorInfoPriority #
{ 
Critical 
= 
$num 
, 
Error 
, 
Warning 
, 
Info 
, 
None 
} 
internal 
enum 
ErrorInfoBehavior #
{ 
Alert 
= 
$num 
, 
	Automatic 
, 
Hidden 
, 
ConsoleOnly 
, 
	Reconnect 
} 
} ﬁ/
ëD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\Paginator.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
internal		 
class		 
	Paginator		 
:		 
VisualElement		 ,
{

 
public 
const 
string 
UssClassName (
=) *
$str+ 6
;6 7
public 
const 
string  
PageTextUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
public 
const 
string "
BackButtonUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string &
ForwardsButtonUssClassName 6
=7 8
UssClassName9 E
+F G
$strH [
;[ \
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
	PaginatorW `
)` a
}a b
.uxmlb g
"g h
;h i
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
	PaginatorU ^
)^ _
}_ `
.uss` d
"d e
;e f
public 
const 
int 
MoveBackwards &
=' (
-) *
$num* +
;+ ,
public 
const 
int 
MoveForwards %
=& '
$num( )
;) *
public 
event 
Action 
< 
int 
>  
ClickedMovePage! 0
;0 1
readonly 
Label 

m_PageText !
;! "
readonly 
Button 
m_BackButton $
;$ %
readonly 
Button 
m_ForwardsButton (
;( )
public 
	Paginator 
( 
) 
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase   
.   
LoadAssetAtPath   )
<  ) *
VisualTreeAsset  * 9
>  9 :
(  : ;
k_LayoutPath  ; G
)  G H
.  H I
	CloneTree  I R
(  R S
this  S W
)  W X
;  X Y
styleSheets!! 
.!! 
Add!! 
(!! 
AssetDatabase!! )
.!!) *
LoadAssetAtPath!!* 9
<!!9 :

StyleSheet!!: D
>!!D E
(!!E F
k_StylePath!!F Q
)!!Q R
)!!R S
;!!S T

m_PageText## 
=## 
this## 
.## 
Q## 
<##  
Label##  %
>##% &
(##& '
	className##' 0
:##0 1 
PageTextUssClassName##2 F
)##F G
;##G H
m_BackButton$$ 
=$$ 
this$$ 
.$$  
Q$$  !
<$$! "
Button$$" (
>$$( )
($$) *
	className$$* 3
:$$3 4"
BackButtonUssClassName$$5 K
)$$K L
;$$L M
m_ForwardsButton%% 
=%% 
this%% #
.%%# $
Q%%$ %
<%%% &
Button%%& ,
>%%, -
(%%- .
	className%%. 7
:%%7 8&
ForwardsButtonUssClassName%%9 S
)%%S T
;%%T U
m_BackButton'' 
.'' 
text'' 
='' 
$str''  #
;''# $
m_ForwardsButton(( 
.(( 
text(( !
=((" #
$str(($ '
;((' (
m_BackButton** 
.** 
	clickable** "
.**" #
clicked**# *
+=**+ -
(**. /
)**/ 0
=>**1 3
ClickedMovePage**4 C
?**C D
.**D E
Invoke**E K
(**K L
MoveBackwards**L Y
)**Y Z
;**Z [
m_ForwardsButton++ 
.++ 
	clickable++ &
.++& '
clicked++' .
+=++/ 1
(++2 3
)++3 4
=>++5 7
ClickedMovePage++8 G
?++G H
.++H I
Invoke++I O
(++O P
MoveForwards++P \
)++\ ]
;++] ^
},, 	
public.. 
void.. 
SetPage.. 
(.. 
int.. 
page..  $
,..$ %
int..& )
maxPage..* 1
)..1 2
{// 	

m_PageText00 
.00 
text00 
=00 
$"00  
Page 00  %
{00% &
page00& *
+00+ ,
$num00- .
}00. /
 of 00/ 3
{003 4
maxPage004 ;
+00< =
$num00> ?
}00? @
"00@ A
;00A B
m_BackButton11 
.11 

SetEnabled11 #
(11# $
page11$ (
!=11) +
$num11, -
)11- .
;11. /
m_ForwardsButton22 
.22 

SetEnabled22 '
(22' (
page22( ,
!=22- /
maxPage220 7
)227 8
;228 9
}33 	
[55 	
UsedImplicitly55	 
]55 
public66 
new66 
class66 
UxmlFactory66 $
:66% &
UxmlFactory66' 2
<662 3
	Paginator663 <
>66< =
{66> ?
}66@ A
}77 
}88 ÜC
éD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\TopBar.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
[ 
UsedImplicitly 
] 
internal 
class 
TopBar 
: 
VisualElement )
{ 
public 
const 
string 
UssClassName (
=) *
$str+ 4
;4 5
public 
const 
string 
IconUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string "
BranchInfoUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string $
OverflowMenuUssClassName 4
=5 6
UssClassName7 C
+D E
$strF Y
;Y Z
public 
const 
string 
BackUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string "
BackButtonUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string  
BackTextUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
TopBarW ]
)] ^
}^ _
.uxml_ d
"d e
;e f
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
TopBarU [
)[ \
}\ ]
.uss] a
"a b
;b c
public 
event 
Action 
BackButtonClicked -
;- .
readonly 
VisualElement 
m_Icon %
;% &
readonly 
TextElement 
m_BranchInfo )
;) *
readonly 

IconButton 
m_OverflowMenu *
;* +
readonly   
VisualElement   
m_BackContainer   .
;  . /
readonly!! 

IconButton!! 
m_BackButton!! (
;!!( )
readonly"" 
TextElement"" 

m_BackText"" '
;""' (
[$$ 	
	CanBeNull$$	 
]$$ 
string%% 
m_BranchName%% 
;%% 
public'' 
TopBar'' 
('' 
)'' 
{(( 	
AddToClassList** 
(** 
UssClassName** '
)**' (
;**( )
AssetDatabase++ 
.++ 
LoadAssetAtPath++ )
<++) *
VisualTreeAsset++* 9
>++9 :
(++: ;
k_LayoutPath++; G
)++G H
.++H I
	CloneTree++I R
(++R S
this++S W
)++W X
;++X Y
styleSheets,, 
.,, 
Add,, 
(,, 
AssetDatabase,, )
.,,) *
LoadAssetAtPath,,* 9
<,,9 :

StyleSheet,,: D
>,,D E
(,,E F
k_StylePath,,F Q
),,Q R
),,R S
;,,S T
m_Icon// 
=// 
this// 
.// 
Q// 
<// 
VisualElement// )
>//) *
(//* +
	className//+ 4
://4 5
IconUssClassName//6 F
)//F G
;//G H
m_BranchInfo00 
=00 
this00 
.00  
Q00  !
<00! "
TextElement00" -
>00- .
(00. /
	className00/ 8
:008 9"
BranchInfoUssClassName00: P
)00P Q
;00Q R
m_OverflowMenu11 
=11 
this11 !
.11! "
Q11" #
<11# $

IconButton11$ .
>11. /
(11/ 0
	className110 9
:119 :$
OverflowMenuUssClassName11; S
)11S T
;11T U
m_BackContainer22 
=22 
this22 "
.22" #
Q22# $
<22$ %
VisualElement22% 2
>222 3
(223 4
	className224 =
:22= >
BackUssClassName22? O
)22O P
;22P Q
m_BackButton33 
=33 
this33 
.33  
Q33  !
<33! "

IconButton33" ,
>33, -
(33- .
	className33. 7
:337 8"
BackButtonUssClassName339 O
)33O P
;33P Q

m_BackText44 
=44 
this44 
.44 
Q44 
<44  
TextElement44  +
>44+ ,
(44, -
	className44- 6
:446 7 
BackTextUssClassName448 L
)44L M
;44M N
m_OverflowMenu66 
.66 
Clicked66 "
+=66# %
ClickableOnClicked66& 8
;668 9
m_BackButton77 
.77 
Clicked77  
+=77! #
(77$ %
)77% &
=>77' )
BackButtonClicked77* ;
?77; <
.77< =
Invoke77= C
(77C D
)77D E
;77E F
HideBackNavigation99 
(99 
)99  
;99  !
}:: 	
public?? 
void?? 
HideBackNavigation?? &
(??& '
)??' (
{@@ 	
m_BackContainerAA 
.AA 
AddToClassListAA *
(AA* +
UiConstantsAA+ 6
.AA6 7
	ussHiddenAA7 @
)AA@ A
;AAA B
m_BackButtonBB 
.BB 

SetEnabledBB #
(BB# $
falseBB$ )
)BB) *
;BB* +

m_BackTextCC 
.CC 
textCC 
=CC 
stringCC $
.CC$ %
EmptyCC% *
;CC* +
}DD 	
publicJJ 
voidJJ !
DisplayBackNavigationJJ )
(JJ) *
[JJ* +
NotNullJJ+ 2
]JJ2 3
stringJJ4 :
textJJ; ?
)JJ? @
{KK 	

m_BackTextLL 
.LL 
textLL 
=LL 
textLL "
;LL" #
m_BackButtonMM 
.MM 

SetEnabledMM #
(MM# $
trueMM$ (
)MM( )
;MM) *
m_BackContainerNN 
.NN 
RemoveFromClassListNN /
(NN/ 0
UiConstantsNN0 ;
.NN; <
	ussHiddenNN< E
)NNE F
;NNF G
}OO 	
voidQQ 
ClickableOnClickedQQ 
(QQ  
)QQ  !
{RR 	
varSS 
(SS 
xSS 
,SS 
ySS 
)SS 
=SS 
MenuUtilitiesSS &
.SS& '
GetMenuPositionSS' 6
(SS6 7
m_OverflowMenuSS7 E
,SSE F
MenuUtilitiesSSG T
.SST U
AnchorPointSSU `
.SS` a
BottomRightSSa l
)SSl m
;SSm n
newTT 
FloatingMenuTT 
(TT 
)TT 
.UU 
AddEntryUU 
(UU 
$strUU +
,UU+ ,
OpenLinksUtilityUU- =
.UU= >
OpenMembersLinkUU> M
,UUM N
trueUUO S
)UUS T
.VV 
SetOpenDirectionVV !
(VV! "
MenuUtilitiesVV" /
.VV/ 0
OpenDirectionVV0 =
.VV= >
DownLeftVV> F
)VVF G
.WW 
OpenWW 
(WW 
xWW 
,WW 
yWW 
)WW 
;WW 
}XX 	
[ZZ 	
UsedImplicitlyZZ	 
]ZZ 
public[[ 
new[[ 
class[[ 
UxmlFactory[[ $
:[[% &
UxmlFactory[[' 2
<[[2 3
TopBar[[3 9
>[[9 :
{[[; <
}[[= >
}\\ 
}]] ˚
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\ExtensionMethods.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
static 

class 
ExtensionMethods !
{ 
public 
static 
string 
FirstCharToUpper -
(- .
this. 2
string3 9
input: ?
)? @
{ 	
switch 
( 
input 
) 
{ 
case 
null 
: 
throw  
new! $!
ArgumentNullException% :
(: ;
nameof; A
(A B
inputB G
)G H
)H I
;I J
case 
$str 
: 
throw 
new "
ArgumentException# 4
(4 5
$"5 7
{7 8
nameof8 >
(> ?
input? D
)D E
}E F
 cannot be emptyF V
"V W
,W X
nameofY _
(_ `
input` e
)e f
)f g
;g h
default 
: 
return 
input  %
.% &
First& +
(+ ,
), -
.- .
ToString. 6
(6 7
)7 8
.8 9
ToUpper9 @
(@ A
)A B
+C D
inputE J
.J K
	SubstringK T
(T U
$numU V
)V W
;W X
} 
} 	
} 
} ™
åD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\IMainView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal 
	interface 
	IMainView  
:! "
IView# (
<( )
IMainPresenter) 7
>7 8
{		 
void 
AddAlert 
( 
[ 
NotNull 
] 
string  &
id' )
,) *
AlertBox+ 3
.3 4

AlertLevel4 >
level? D
,D E
[F G
NotNullG N
]N O
stringP V
messageW ^
,^ _
(` a
stringa g
texth l
,l m
Actionn t
actionu {
){ |
?| }
button	~ Ñ
=
Ö Ü
null
á ã
)
ã å
;
å ç
void 
RemoveAlert 
( 
[ 
NotNull !
]! "
string# )
id* ,
), -
;- .
void 
SetTab 
( 
int 
index 
) 
; 
void""  
AddOperationProgress"" !
(""! "
)""" #
;""# $
void'' #
RemoveOperationProgress'' $
(''$ %
)''% &
;''& '
void33  
SetOperationProgress33 !
(33! "
string33" (
title33) .
,33. /
string330 6
details337 >
,33> ?
int33@ C

percentage33D N
,33N O
int33P S
	completed33T ]
,33] ^
int33_ b
total33c h
,33h i
bool33j n
isPercentage33o {
,33{ |
bool	33} Å
	canCancel
33Ç ã
)
33ã å
;
33å ç
void88 
ClearBackNavigation88  
(88  !
)88! "
;88" #
void>> !
DisplayBackNavigation>> "
(>>" #
[>># $
NotNull>>$ +
]>>+ ,
string>>- 3
text>>4 8
)>>8 9
;>>9 :
}?? 
}@@ Å
äD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\IModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
	interface 
IModel 
{ 
event 
Action 
StateChanged !
;! "
void 
OnStart 
( 
) 
; 
void 
OnStop 
( 
) 
; 
void 
RestoreState 
( 
[ 
NotNull "
]" #
IWindowCache$ 0
cache1 6
)6 7
;7 8
void"" 
	SaveState"" 
("" 
["" 
NotNull"" 
]""  
IWindowCache""! -
cache"". 3
)""3 4
;""4 5
}## 
}$$ î
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\MenuUtilities.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
static 

class 
MenuUtilities 
{ 
public 
enum 
AnchorPoint 
{ 	
TopLeft 
, 
TopRight 
, 

BottomLeft 
, 
BottomRight 
} 	
public 
enum 
OpenDirection !
{ 	
UpLeft 
, 
UpRight 
, 
DownLeft 
, 
	DownRight 
} 	
public%% 
static%% 
(%% 
float%% 
X%% 
,%% 
float%%  %
Y%%& '
)%%' (
GetMenuPosition%%) 8
(%%8 9
VisualElement%%9 F
e%%G H
,%%H I
AnchorPoint%%J U
anchorPoint%%V a
)%%a b
{&& 	
((( 
float(( 
x(( 
,(( 
float(( 
y(( 
)(( 
anchorCoords(( +
;((+ ,
switch)) 
()) 
anchorPoint)) 
)))  
{** 
case++ 
AnchorPoint++  
.++  !
TopLeft++! (
:++( )
anchorCoords,,  
=,,! "
(,,# $
e,,$ %
.,,% &

worldBound,,& 0
.,,0 1
xMin,,1 5
,,,5 6
e,,7 8
.,,8 9

worldBound,,9 C
.,,C D
yMin,,D H
),,H I
;,,I J
break-- 
;-- 
case.. 
AnchorPoint..  
...  !
TopRight..! )
:..) *
anchorCoords//  
=//! "
(//# $
e//$ %
.//% &

worldBound//& 0
.//0 1
xMax//1 5
,//5 6
e//7 8
.//8 9

worldBound//9 C
.//C D
yMin//D H
)//H I
;//I J
break00 
;00 
case11 
AnchorPoint11  
.11  !

BottomLeft11! +
:11+ ,
anchorCoords22  
=22! "
(22# $
e22$ %
.22% &

worldBound22& 0
.220 1
xMin221 5
,225 6
e227 8
.228 9

worldBound229 C
.22C D
yMax22D H
)22H I
;22I J
break33 
;33 
case44 
AnchorPoint44  
.44  !
BottomRight44! ,
:44, -
anchorCoords55  
=55! "
(55# $
e55$ %
.55% &

worldBound55& 0
.550 1
xMax551 5
,555 6
e557 8
.558 9

worldBound559 C
.55C D
yMax55D H
)55H I
;55I J
break66 
;66 
default77 
:77 
throw88 
new88 '
ArgumentOutOfRangeException88 9
(889 :
nameof88: @
(88@ A
anchorPoint88A L
)88L M
,88M N
anchorPoint88O Z
,88Z [
null88\ `
)88` a
;88a b
}99 
return;; 
anchorCoords;; 
;;;  
}<< 	
}== 
}>> ÷
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\Menus\FloatingMenuItem.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
Menus- 2
{ 
internal		 
class		 
FloatingMenuItem		 #
:		$ %
VisualElement		& 3
{

 
const 
string 
k_UssClassName #
=$ %
$str& @
;@ A
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
FloatingMenuItemU e
)e f
}f g
.ussg k
"k l
;l m
public 
override 
bool 
canGrabFocus )
{* +
get, /
;/ 0
}1 2
=3 4
true5 9
;9 :
readonly 
Action 
m_Action  
;  !
public 
FloatingMenuItem 
(  
string  &
text' +
,+ ,
Action- 3
action4 :
,: ;
bool< @
enabledA H
,H I
floatJ O
heightP V
)V W
{ 	
AddToClassList 
( 
k_UssClassName )
)) *
;* +
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
m_Action 
= 
action 
; 
	focusable 
= 
true 
; 
this 
. 
AddManipulator 
(  
new  #
	Clickable$ -
(- .
OnExec. 4
)4 5
)5 6
;6 7

SetEnabled 
( 
enabled 
) 
;  
Add 
( 
new 
Label 
( 
text 
) 
)  
;  !
style 
. 
height 
= 
height !
;! "
}   	
void"" 
OnExec"" 
("" 
)"" 
{## 	
m_Action$$ 
($$ 
)$$ 
;$$ 
}%% 	
	protected++ 
override++ 
void++ (
ExecuteDefaultActionAtTarget++  <
(++< =
	EventBase++= F
evt++G J
)++J K
{,, 	
base-- 
.-- (
ExecuteDefaultActionAtTarget-- -
(--- .
evt--. 1
)--1 2
;--2 3
if00 
(00 
!00 
(00 
evt00 
is00 
KeyDownEvent00 %
	downEvent00& /
)00/ 0
)000 1
return002 8
;008 9
if11 
(11 
	downEvent11 
.11 
keyCode11 !
!=11" $
KeyCode11% ,
.11, -
KeypadEnter11- 8
&&119 ;
	downEvent11< E
.11E F
keyCode11F M
!=11N P
KeyCode11Q X
.11X Y
Return11Y _
)11_ `
return11a g
;11g h
OnExec33 
(33 
)33 
;33 
	downEvent44 
.44 
StopPropagation44 %
(44% &
)44& '
;44' (
}55 	
}66 
}77 ¢+
íD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\IconButton.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{		 
internal

 
class

 

IconButton

 
:

 
Image

  %
{ 
public 
const 
string 
UssClassName (
=) *
$str+ >
;> ?
public 
const 
string 
UndoUssClassName ,
=- .
$str/ 9
;9 :
public 
const 
string 
ShowUssClassName ,
=- .
$str/ 9
;9 :
public 
const 
string 
MergeUssClassName -
=. /
$str0 ;
;; <
public 
const 
string "
ChooseMineUssClassName 2
=3 4
$str5 F
;F G
public 
const 
string $
ChooseRemoteUssClassName 4
=5 6
$str7 J
;J K
public 
const 
string 
DiffUssCLassName ,
=- .
$str/ 9
;9 :
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U

IconButtonU _
)_ `
}` a
.ussa e
"e f
;f g
public 
event 
Action 
Clicked #
;# $
public 

IconButton 
( 
) 
: 
this "
(" #
null# '
)' (
{ 	
} 	
public 

IconButton 
( 
[ 
	CanBeNull $
]$ %
Action& ,

clickEvent- 7
=8 9
null: >
)> ?
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
Clicked"" 
+="" 

clickEvent"" !
;""! "
this## 
.## 
AddManipulator## 
(##  
new##  #
	Clickable##$ -
(##- .
OnClick##. 5
)##5 6
)##6 7
;##7 8
}$$ 	
void&& 
OnClick&& 
(&& 
)&& 
{'' 	
Clicked(( 
?(( 
.(( 
Invoke(( 
((( 
)(( 
;(( 
Blur)) 
()) 
))) 
;)) 
}** 	
public// 
void// !
UnregisterClickEvents// )
(//) *
)//* +
{00 	
Clicked11 
=11 
null11 
;11 
}22 	
public44 
	Texture2D44 
Image44 
{55 	
get66 
=>66 
style66 
.66 
backgroundImage66 (
.66( )
value66) .
.66. /
texture66/ 6
;666 7
set77 
=>77 
style77 
.77 
backgroundImage77 (
=77) *
value77+ 0
;770 1
}88 	
public:: 
override:: 
bool:: 
canGrabFocus:: )
{::* +
get::, /
;::/ 0
}::1 2
=::3 4
true::5 9
;::9 :
	protected@@ 
override@@ 
void@@ (
ExecuteDefaultActionAtTarget@@  <
(@@< =
	EventBase@@= F
evt@@G J
)@@J K
{AA 	
baseBB 
.BB (
ExecuteDefaultActionAtTargetBB -
(BB- .
evtBB. 1
)BB1 2
;BB2 3
ifEE 
(EE 
!EE 
(EE 
evtEE 
isEE 
KeyDownEventEE %
	downEventEE& /
)EE/ 0
)EE0 1
returnEE2 8
;EE8 9
ifFF 
(FF 
(FF 
	downEventFF 
.FF 
keyCodeFF "
!=FF# %
KeyCodeFF& -
.FF- .
KeypadEnterFF. 9
)FF9 :
&&FF; =
(FF> ?
	downEventFF? H
.FFH I
keyCodeFFI P
!=FFQ S
KeyCodeFFT [
.FF[ \
ReturnFF\ b
)FFb c
)FFc d
returnFFe k
;FFk l
ClickedHH 
?HH 
.HH 
InvokeHH 
(HH 
)HH 
;HH 
	downEventII 
.II 
StopPropagationII %
(II% &
)II& '
;II' (
}JJ 	
[LL 	
UsedImplicitlyLL	 
]LL 
publicMM 
newMM 
classMM 
UxmlFactoryMM $
:MM% &
UxmlFactoryMM' 2
<MM2 3

IconButtonMM3 =
>MM= >
{MM? @
}MM@ A
}NN 
}OO ¶z
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\MainPageView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal 
class 
MainPageView 
:  !
PageComponent" /
,/ 0
	IMainView1 :
{ 
IMainPresenter 
m_Presenter "
;" #
public 
const 
string 
UssClassName (
=) *
$str+ ;
;; <
public 
const 
string 
TopBarUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ K
;K L
public 
const 
string  
AlertBoxUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
public 
const 
string 
TabViewUssClassName /
=0 1
UssClassName2 >
+? @
$strA M
;M N
public 
const 
string !
ContainerUssClassName 1
=2 3
UssClassName4 @
+A B
$strC P
;P Q
public 
const 
int 
ChangesTabIndex (
=) *
$num+ ,
;, -
public 
const 
int 
HistoryTabIndex (
=) *
$num+ ,
;, -
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
MainPageViewW c
)c d
}d e
.uxmle j
"j k
;k l
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
MainPageViewU a
)a b
}b c
.ussc g
"g h
;h i
readonly   
AlertBox   

m_AlertBox   $
;  $ %
readonly!! 
TabView!! 
	m_TabView!! "
;!!" #
readonly"" 
HistoryTabPageView"" #
m_HistoryView""$ 1
;""1 2
readonly## 
ChangesTabPageView## #
m_ChangesView##$ 1
;##1 2
readonly$$ 
VisualElement$$ 
m_Container$$ *
;$$* +
readonly%% 
TopBar%% 
m_TopBar%%  
;%%  !
ProgressView&& 
m_ProgressView&& #
;&&# $
DisplayMode(( 
m_DisplayMode(( !
;((! "
public** 
MainPageView** 
(** 
)** 
{++ 	
AddToClassList,, 
(,, 
UssClassName,, '
),,' (
;,,( )
AssetDatabase-- 
.-- 
LoadAssetAtPath-- )
<--) *
VisualTreeAsset--* 9
>--9 :
(--: ;
k_LayoutPath--; G
)--G H
.--H I
	CloneTree--I R
(--R S
this--S W
)--W X
;--X Y
styleSheets.. 
... 
Add.. 
(.. 
AssetDatabase.. )
...) *
LoadAssetAtPath..* 9
<..9 :

StyleSheet..: D
>..D E
(..E F
k_StylePath..F Q
)..Q R
)..R S
;..S T
m_TopBar00 
=00 
this00 
.00 
Q00 
<00 
TopBar00 $
>00$ %
(00% &
	className00& /
:00/ 0
TopBarUssClassName001 C
)00C D
;00D E

m_AlertBox11 
=11 
this11 
.11 
Q11 
<11  
AlertBox11  (
>11( )
(11) *
	className11* 3
:113 4 
AlertBoxUssClassName115 I
)11I J
;11J K
	m_TabView22 
=22 
this22 
.22 
Q22 
<22 
TabView22 &
>22& '
(22' (
	className22( 1
:221 2
TabViewUssClassName223 F
)22F G
;22G H
m_Container33 
=33 
this33 
.33 
Q33  
<33  !
VisualElement33! .
>33. /
(33/ 0
	className330 9
:339 :!
ContainerUssClassName33; P
)33P Q
;33Q R
m_ChangesView55 
=55 
new55 
ChangesTabPageView55  2
(552 3
)553 4
;554 5
m_HistoryView66 
=66 
new66 
HistoryTabPageView66  2
(662 3
)663 4
;664 5
	m_TabView77 
.77 
AddTab77 
(77 
StringAssets77 )
.77) *
changes77* 1
,771 2
m_ChangesView773 @
)77@ A
;77A B
	m_TabView88 
.88 
AddTab88 
(88 
StringAssets88 )
.88) *
history88* 1
,881 2
m_HistoryView883 @
)88@ A
;88A B
m_DisplayMode;; 
=;; 
DisplayMode;; '
.;;' (
TabView;;( /
;;;/ 0
}<< 	
public?? 
IMainPresenter?? 
	Presenter?? '
{@@ 	
setAA 
{BB 
m_PresenterCC 
=CC 
valueCC #
;CC# $
m_PresenterDD 
.DD "
AssignHistoryPresenterDD 2
(DD2 3
m_HistoryViewDD3 @
)DD@ A
;DDA B
m_PresenterEE 
.EE "
AssignChangesPresenterEE 2
(EE2 3
m_ChangesViewEE3 @
)EE@ A
;EEA B
	m_TabViewFF 
.FF 
TabSwitchedFF %
+=FF& (
OnTabSwitchedFF) 6
;FF6 7
m_TopBarGG 
.GG 
BackButtonClickedGG *
+=GG+ -
OnBackButtonClickedGG. A
;GGA B
ifII 
(II 
ActiveII 
)II 
{JJ 
m_PresenterKK 
.KK  
StartKK  %
(KK% &
)KK& '
;KK' (
}LL 
}MM 
}NN 	
	protectedRR 
overrideRR 
voidRR 
	SetActiveRR  )
(RR) *
)RR* +
{SS 	
ifUU 
(UU 
m_DisplayModeUU 
==UU  
DisplayModeUU! ,
.UU, -
TabViewUU- 4
)UU4 5
{VV 
	m_TabViewWW 
.WW 
	SetActiveWW #
(WW# $
)WW$ %
;WW% &
}XX 
m_PresenterYY 
?YY 
.YY 
StartYY 
(YY 
)YY  
;YY  !
}ZZ 	
	protected]] 
override]] 
void]] 
SetInactive]]  +
(]]+ ,
)]], -
{^^ 	
if`` 
(`` 
m_DisplayMode`` 
==``  
DisplayMode``! ,
.``, -
TabView``- 4
)``4 5
{aa 
	m_TabViewbb 
.bb 
SetInactivebb %
(bb% &
)bb& '
;bb' (
}cc 
m_Presenterdd 
?dd 
.dd 
Stopdd 
(dd 
)dd 
;dd  
}ee 	
publichh 
voidhh 
AddAlerthh 
(hh 
stringhh #
idhh$ &
,hh& '
AlertBoxhh( 0
.hh0 1

AlertLevelhh1 ;
levelhh< A
,hhA B
stringhhC I
messagehhJ Q
,hhQ R
(hhS T
stringhhT Z
texthh[ _
,hh_ `
Actionhha g
actionhhh n
)hhn o
?hho p
buttonhhq w
=hhx y
nullhhz ~
)hh~ 
{ii 	

m_AlertBoxjj 
.jj 

QueueAlertjj !
(jj! "
idjj" $
,jj$ %
leveljj& +
,jj+ ,
messagejj- 4
,jj4 5
buttonjj6 <
)jj< =
;jj= >
}kk 	
publicnn 
voidnn 
RemoveAlertnn 
(nn  
stringnn  &
idnn' )
)nn) *
{oo 	

m_AlertBoxpp 
.pp 
DequeueAlertpp #
(pp# $
idpp$ &
)pp& '
;pp' (
}qq 	
publictt 
voidtt 
SetTabtt 
(tt 
inttt 
indextt $
)tt$ %
{uu 	
	m_TabViewvv 
.vv 
	SwitchTabvv 
(vv  
indexvv  %
)vv% &
;vv& '
}ww 	
publiczz 
voidzz  
AddOperationProgresszz (
(zz( )
)zz) *
{{{ 	

SetDisplay|| 
(|| 
DisplayMode|| "
.||" #
ProgressView||# /
)||/ 0
;||0 1
}}} 	
public
ÄÄ 
void
ÄÄ %
RemoveOperationProgress
ÄÄ +
(
ÄÄ+ ,
)
ÄÄ, -
{
ÅÅ 	

SetDisplay
ÇÇ 
(
ÇÇ 
DisplayMode
ÇÇ "
.
ÇÇ" #
TabView
ÇÇ# *
)
ÇÇ* +
;
ÇÇ+ ,
}
ÉÉ 	
public
ÜÜ 
void
ÜÜ "
SetOperationProgress
ÜÜ (
(
ÜÜ( )
string
ÜÜ) /
title
ÜÜ0 5
,
ÜÜ5 6
string
ÜÜ7 =
details
ÜÜ> E
,
ÜÜE F
int
ÜÜG J

percentage
ÜÜK U
,
ÜÜU V
int
ÜÜW Z
	completed
ÜÜ[ d
,
ÜÜd e
int
ÜÜf i
total
ÜÜj o
,
ÜÜo p
bool
ÜÜq u
isPercentageÜÜv Ç
,ÜÜÇ É
boolÜÜÑ à
	canCancelÜÜâ í
)ÜÜí ì
{
áá 	
Assert
àà 
.
àà 
	IsNotNull
àà 
(
àà 
m_ProgressView
àà +
)
àà+ ,
;
àà, -
if
ââ 
(
ââ 
m_ProgressView
ââ 
==
ââ !
null
ââ" &
)
ââ& '
return
ââ( .
;
ââ. /
var
ää 
progress
ää 
=
ää 
isPercentage
ää '
?
ää( )
$"
ää* ,
{
ää, -

percentage
ää- 7
}
ää7 8
%
ää8 9
"
ää9 :
:
ää; <
$"
ää= ?
(
ää? @
{
ää@ A
	completed
ääA J
}
ääJ K
 of 
ääK O
{
ääO P
total
ääP U
}
ääU V
)
ääV W
"
ääW X
;
ääX Y
m_ProgressView
ãã 
.
ãã 
SetText
ãã "
(
ãã" #
$"
ãã# %
{
ãã% &
title
ãã& +
}
ãã+ ,
\n\n
ãã, 0
{
ãã0 1
details
ãã1 8
}
ãã8 9
"
ãã9 :
,
ãã: ;
progress
ãã< D
)
ããD E
;
ããE F
m_ProgressView
åå 
.
åå  
SetPercentComplete
åå -
(
åå- .

percentage
åå. 8
)
åå8 9
;
åå9 :
m_ProgressView
çç 
.
çç #
SetCancelButtonActive
çç 0
(
çç0 1
	canCancel
çç1 :
)
çç: ;
;
çç; <
}
éé 	
public
ëë 
void
ëë !
ClearBackNavigation
ëë '
(
ëë' (
)
ëë( )
{
íí 	
m_TopBar
ìì 
.
ìì  
HideBackNavigation
ìì '
(
ìì' (
)
ìì( )
;
ìì) *
}
îî 	
public
óó 
void
óó #
DisplayBackNavigation
óó )
(
óó) *
string
óó* 0
text
óó1 5
)
óó5 6
{
òò 	
m_TopBar
ôô 
.
ôô #
DisplayBackNavigation
ôô *
(
ôô* +
text
ôô+ /
)
ôô/ 0
;
ôô0 1
}
öö 	
void
úú 

SetDisplay
úú 
(
úú 
DisplayMode
úú #
mode
úú$ (
)
úú( )
{
ùù 	
Assert
ûû 
.
ûû 
AreNotEqual
ûû 
(
ûû 
m_DisplayMode
ûû ,
,
ûû, -
mode
ûû. 2
,
ûû2 3
$str
ûû4 `
)
ûû` a
;
ûûa b
m_DisplayMode
üü 
=
üü 
mode
üü  
;
üü  !
if
¢¢ 
(
¢¢ 
m_DisplayMode
¢¢ 
==
¢¢  
DisplayMode
¢¢! ,
.
¢¢, -
TabView
¢¢- 4
)
¢¢4 5
{
££ 
m_ProgressView
§§ 
?
§§ 
.
§§  
AddToClassList
§§  .
(
§§. /
UiConstants
§§/ :
.
§§: ;
	ussHidden
§§; D
)
§§D E
;
§§E F
	m_TabView
¶¶ 
.
¶¶ !
RemoveFromClassList
¶¶ -
(
¶¶- .
UiConstants
¶¶. 9
.
¶¶9 :
	ussHidden
¶¶: C
)
¶¶C D
;
¶¶D E
	m_TabView
ßß 
.
ßß 
	SetActive
ßß #
(
ßß# $
)
ßß$ %
;
ßß% &
}
®® 
else
©© 
{
™™ 
if
´´ 
(
´´ 
m_ProgressView
´´ "
==
´´# %
null
´´& *
)
´´* +
{
¨¨ 
m_ProgressView
≠≠ "
=
≠≠# $
new
≠≠% (
ProgressView
≠≠) 5
(
≠≠5 6
)
≠≠6 7
;
≠≠7 8
m_ProgressView
ÆÆ "
.
ÆÆ" #
SetCancelCallback
ÆÆ# 4
(
ÆÆ4 5
m_Presenter
ÆÆ5 @
.
ÆÆ@ A
RequestCancelJob
ÆÆA Q
)
ÆÆQ R
;
ÆÆR S
m_Container
ØØ 
.
ØØ  
Add
ØØ  #
(
ØØ# $
m_ProgressView
ØØ$ 2
)
ØØ2 3
;
ØØ3 4
}
∞∞ 
m_ProgressView
±± 
.
±± !
RemoveFromClassList
±± 2
(
±±2 3
UiConstants
±±3 >
.
±±> ?
	ussHidden
±±? H
)
±±H I
;
±±I J
	m_TabView
≤≤ 
.
≤≤ 
AddToClassList
≤≤ (
(
≤≤( )
UiConstants
≤≤) 4
.
≤≤4 5
	ussHidden
≤≤5 >
)
≤≤> ?
;
≤≤? @
	m_TabView
≥≥ 
.
≥≥ 
SetInactive
≥≥ %
(
≥≥% &
)
≥≥& '
;
≥≥' (
}
¥¥ 
}
µµ 	
void
∑∑ 
OnTabSwitched
∑∑ 
(
∑∑ 
int
∑∑ 
index
∑∑ $
)
∑∑$ %
{
∏∏ 	
m_Presenter
ππ 
.
ππ 
UpdateTabIndex
ππ &
(
ππ& '
index
ππ' ,
)
ππ, -
;
ππ- .
}
∫∫ 	
void
ºº !
OnBackButtonClicked
ºº  
(
ºº  !
)
ºº! "
{
ΩΩ 	
m_Presenter
ææ 
.
ææ 
NavigateBack
ææ $
(
ææ$ %
)
ææ% &
;
ææ& '
}
øø 	
[
¡¡ 	
UsedImplicitly
¡¡	 
]
¡¡ 
public
¬¬ 
new
¬¬ 
class
¬¬ 
UxmlFactory
¬¬ $
:
¬¬% &
UxmlFactory
¬¬' 2
<
¬¬2 3
MainPageView
¬¬3 ?
>
¬¬? @
{
¬¬A B
}
¬¬C D
enum
ƒƒ 
DisplayMode
ƒƒ 
{
≈≈ 	
TabView
∆∆ 
,
∆∆ 
ProgressView
«« 
}
»» 	
}
…… 
}   èc
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\HistoryModel.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "
Models

" (
{ 
internal 
class 
HistoryModel 
:  !
IHistoryModel" /
{ 
[ 	
NotNull	 
] 
readonly "
ISourceControlProvider '

m_Provider( 2
;2 3
[ 	
NotNull	 
] 
readonly 
HashSet 
< 
string 
>  

m_Requests! +
;+ ,
const 
string 
k_RequestPage "
=# $
$str% 3
;3 4
const 
string 
k_RequestEntry #
=$ %
$str& 5
;5 6
const 
string  
k_RequestEntryNumber )
=* +
$str, B
;B C
public 
event 
Action 
HistoryListUpdated .
;. /
public 
event 
Action 
< 
IReadOnlyList )
<) *
IHistoryEntry* 7
>7 8
>8 9
HistoryListReceived: M
;M N
public 
event 
Action 
< 
IHistoryEntry )
>) *$
SelectedRevisionReceived+ C
;C D
public!! 
event!! 
Action!! 
<!! 
bool!!  
>!!  !
BusyStatusUpdated!!" 3
;!!3 4
public$$ 
event$$ 
Action$$ 
<$$ 
int$$ 
?$$  
>$$  !
EntryCountUpdated$$" 3
;$$3 4
public'' 
event'' 
Action'' 
StateChanged'' (
;''( )
public)) 
HistoryModel)) 
()) 
[)) 
NotNull)) $
]))$ %"
ISourceControlProvider))& <
provider))= E
)))E F
{** 	

m_Provider++ 
=++ 
provider++ !
;++! "

m_Requests,, 
=,, 
new,, 
HashSet,, $
<,,$ %
string,,% +
>,,+ ,
(,,, -
),,- .
;,,. /
SelectedRevisionId-- 
=--  
string--! '
.--' (
Empty--( -
;--- .
SavedRevisionId.. 
=.. 
string.. $
...$ %
Empty..% *
;..* +
}// 	
public22 
void22 
OnStart22 
(22 
)22 
{33 	

m_Provider55 
.55 !
UpdatedHistoryEntries55 ,
+=55- /#
OnUpdatedHistoryEntries550 G
;55G H
}66 	
public99 
void99 
OnStop99 
(99 
)99 
{:: 	

m_Provider<< 
.<< !
UpdatedHistoryEntries<< ,
-=<<- /#
OnUpdatedHistoryEntries<<0 G
;<<G H
}== 	
public@@ 
void@@ 
RestoreState@@  
(@@  !
IWindowCache@@! -
cache@@. 3
)@@3 4
{AA 	

PageNumberCC 
=CC 
cacheCC 
.CC 
HistoryPageNumberCC 0
;CC0 1
SavedRevisionIdDD 
=DD 
cacheDD #
.DD# $#
SelectedHistoryRevisionDD$ ;
;DD; <
StateChangedFF 
?FF 
.FF 
InvokeFF  
(FF  !
)FF! "
;FF" #
}GG 	
publicJJ 
voidJJ 
	SaveStateJJ 
(JJ 
IWindowCacheJJ *
cacheJJ+ 0
)JJ0 1
{KK 	
cacheMM 
.MM 
HistoryPageNumberMM #
=MM$ %

PageNumberMM& 0
;MM0 1
cacheNN 
.NN #
SelectedHistoryRevisionNN )
=NN* +
SelectedRevisionIdNN, >
;NN> ?
}OO 	
voidUU '
OnReceivedHistoryEntryCountUU (
(UU( )
intUU) ,
?UU, -

entryCountUU. 8
)UU8 9
{VV 	
RemoveRequestWW 
(WW  
k_RequestEntryNumberWW .
)WW. /
;WW/ 0
EntryCountUpdatedXX 
?XX 
.XX 
InvokeXX %
(XX% &

entryCountXX& 0
)XX0 1
;XX1 2
}YY 	
void__ !
OnReceivedHistoryPage__ "
(__" #
IReadOnlyList__# 0
<__0 1
IHistoryEntry__1 >
>__> ?
list__@ D
)__D E
{`` 	
RemoveRequestaa 
(aa 
k_RequestPageaa '
)aa' (
;aa( )
HistoryListReceivedbb 
?bb  
.bb  !
Invokebb! '
(bb' (
listbb( ,
)bb, -
;bb- .
}cc 	
voidii "
OnReceivedHistoryEntryii #
(ii# $
IHistoryEntryii$ 1
entryii2 7
)ii7 8
{jj 	
RemoveRequestkk 
(kk 
k_RequestEntrykk (
)kk( )
;kk) *$
SelectedRevisionReceivedll $
?ll$ %
.ll% &
Invokell& ,
(ll, -
entryll- 2
)ll2 3
;ll3 4
}mm 	
voidrr #
OnUpdatedHistoryEntriesrr $
(rr$ %
)rr% &
{ss 	
HistoryListUpdatedtt 
?tt 
.tt  
Invokett  &
(tt& '
)tt' (
;tt( )
}uu 	
publicxx 
voidxx "
RequestPageOfRevisionsxx *
(xx* +
intxx+ .
pageSizexx/ 7
)xx7 8
{yy 	
if{{ 
({{ 
!{{ 

AddRequest{{ 
({{ 
k_RequestPage{{ )
){{) *
){{* +
return{{, 2
;{{2 3
SelectedRevisionId}} 
=}}  
string}}! '
.}}' (
Empty}}( -
;}}- .

m_Provider~~ 
.~~ 
RequestHistoryPage~~ )
(~~) *

PageNumber~~* 4
*~~5 6
pageSize~~7 ?
,~~? @
pageSize~~A I
,~~I J!
OnReceivedHistoryPage~~K `
)~~` a
;~~a b
} 	
public
ÇÇ 
void
ÇÇ #
RequestSingleRevision
ÇÇ )
(
ÇÇ) *
string
ÇÇ* 0

revisionId
ÇÇ1 ;
)
ÇÇ; <
{
ÉÉ 	
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 

AddRequest
ÖÖ 
(
ÖÖ 
k_RequestEntry
ÖÖ *
)
ÖÖ* +
)
ÖÖ+ ,
return
ÖÖ- 3
;
ÖÖ3 4
SavedRevisionId
áá 
=
áá 
string
áá $
.
áá$ %
Empty
áá% *
;
áá* + 
SelectedRevisionId
àà 
=
àà  

revisionId
àà! +
;
àà+ ,

m_Provider
ââ 
.
ââ !
RequestHistoryEntry
ââ *
(
ââ* +

revisionId
ââ+ 5
,
ââ5 6$
OnReceivedHistoryEntry
ââ7 M
)
ââM N
;
ââN O
}
ää 	
public
çç 
void
çç  
RequestEntryNumber
çç &
(
çç& '
)
çç' (
{
éé 	
if
êê 
(
êê 
!
êê 

AddRequest
êê 
(
êê "
k_RequestEntryNumber
êê 0
)
êê0 1
)
êê1 2
return
êê3 9
;
êê9 :

m_Provider
íí 
.
íí !
RequestHistoryCount
íí *
(
íí* +)
OnReceivedHistoryEntryCount
íí+ F
)
ííF G
;
ííG H
}
ìì 	
public
ññ 
void
ññ 
RequestUpdateTo
ññ #
(
ññ# $
string
ññ$ *

revisionId
ññ+ 5
)
ññ5 6
{
óó 	

m_Provider
òò 
.
òò 
RequestUpdateTo
òò &
(
òò& '

revisionId
òò' 1
)
òò1 2
;
òò2 3
}
ôô 	
public
úú 
void
úú 
RequestRestoreTo
úú $
(
úú$ %
string
úú% +

revisionId
úú, 6
)
úú6 7
{
ùù 	

m_Provider
ûû 
.
ûû 
RequestRestoreTo
ûû '
(
ûû' (

revisionId
ûû( 2
)
ûû2 3
;
ûû3 4
}
üü 	
public
¢¢ 
void
¢¢ 
RequestGoBackTo
¢¢ #
(
¢¢# $
string
¢¢$ *

revisionId
¢¢+ 5
)
¢¢5 6
{
££ 	

m_Provider
§§ 
.
§§ 
RequestGoBackTo
§§ &
(
§§& '

revisionId
§§' 1
)
§§1 2
;
§§2 3
}
•• 	
public
®® 
bool
®® 
SupportsRevert
®® "
=>
®®# %

m_Provider
®®& 0
.
®®0 1
SupportsRevert
®®1 ?
;
®®? @
public
´´ 
void
´´ 
RequestRevert
´´ !
(
´´! "
string
´´" (

revisionId
´´) 3
,
´´3 4
IReadOnlyList
´´5 B
<
´´B C
string
´´C I
>
´´I J
files
´´K P
)
´´P Q
{
¨¨ 	

m_Provider
≠≠ 
.
≠≠ 
RequestRevert
≠≠ $
(
≠≠$ %

revisionId
≠≠% /
,
≠≠/ 0
files
≠≠1 6
)
≠≠6 7
;
≠≠7 8
}
ÆÆ 	
bool
µµ 

AddRequest
µµ 
(
µµ 
[
µµ 
NotNull
µµ  
]
µµ  !
string
µµ" (
	requestId
µµ) 2
)
µµ2 3
{
∂∂ 	
if
∑∑ 
(
∑∑ 

m_Requests
∑∑ 
.
∑∑ 
Contains
∑∑ #
(
∑∑# $
	requestId
∑∑$ -
)
∑∑- .
)
∑∑. /
return
∑∑0 6
false
∑∑7 <
;
∑∑< =

m_Requests
∏∏ 
.
∏∏ 
Add
∏∏ 
(
∏∏ 
	requestId
∏∏ $
)
∏∏$ %
;
∏∏% &
if
∫∫ 
(
∫∫ 

m_Requests
∫∫ 
.
∫∫ 
Count
∫∫  
==
∫∫! #
$num
∫∫$ %
)
∫∫% &
BusyStatusUpdated
ªª !
?
ªª! "
.
ªª" #
Invoke
ªª# )
(
ªª) *
true
ªª* .
)
ªª. /
;
ªª/ 0
return
ºº 
true
ºº 
;
ºº 
}
ΩΩ 	
void
√√ 
RemoveRequest
√√ 
(
√√ 
[
√√ 
NotNull
√√ #
]
√√# $
string
√√% +
	requestId
√√, 5
)
√√5 6
{
ƒƒ 	
Assert
≈≈ 
.
≈≈ 
IsTrue
≈≈ 
(
≈≈ 

m_Requests
≈≈ $
.
≈≈$ %
Contains
≈≈% -
(
≈≈- .
	requestId
≈≈. 7
)
≈≈7 8
,
≈≈8 9
$"
≈≈: <U
FExpects request to have first been made for it to have been finished: ≈≈< Ç
{≈≈Ç É
	requestId≈≈É å
}≈≈å ç
"≈≈ç é
)≈≈é è
;≈≈è ê

m_Requests
∆∆ 
.
∆∆ 
Remove
∆∆ 
(
∆∆ 
	requestId
∆∆ '
)
∆∆' (
;
∆∆( )
if
»» 
(
»» 

m_Requests
»» 
.
»» 
Count
»»  
==
»»! #
$num
»»$ %
)
»»% &
BusyStatusUpdated
…… !
?
……! "
.
……" #
Invoke
……# )
(
……) *
false
……* /
)
……/ 0
;
……0 1
}
   	
public
ÕÕ 
bool
ÕÕ 
Busy
ÕÕ 
=>
ÕÕ 

m_Requests
ÕÕ &
.
ÕÕ& '
Count
ÕÕ' ,
!=
ÕÕ- /
$num
ÕÕ0 1
;
ÕÕ1 2
public
–– 
int
–– 

PageNumber
–– 
{
–– 
get
––  #
;
––# $
set
––% (
;
––( )
}
––* +
public
”” 
string
””  
SelectedRevisionId
”” (
{
””) *
get
””+ .
;
””. /
private
””0 7
set
””8 ;
;
””; <
}
””= >
public
÷÷ 
string
÷÷ 
SavedRevisionId
÷÷ %
{
÷÷& '
get
÷÷( +
;
÷÷+ ,
private
÷÷- 4
set
÷÷5 8
;
÷÷8 9
}
÷÷: ;
public
ŸŸ 
bool
ŸŸ  
IsRevisionSelected
ŸŸ &
=>
ŸŸ' )
!
ŸŸ* +
string
ŸŸ+ 1
.
ŸŸ1 2
IsNullOrEmpty
ŸŸ2 ?
(
ŸŸ? @ 
SelectedRevisionId
ŸŸ@ R
)
ŸŸR S
;
ŸŸS T
}
⁄⁄ 
}€€ ÀL
ñD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\StartPresenter.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "

Presenters

" ,
{ 
internal 
class 
StartPresenter !
:" #
IStartPresenter$ 3
{ 
[ 	
NotNull	 
] 
readonly 

IStartView 
m_View "
;" #
[ 	
NotNull	 
] 
readonly 
IStartModel 
m_Model $
;$ %
bool 
m_IsStarted 
; 
public 
StartPresenter 
( 
[ 
NotNull &
]& '

IStartView( 2
view3 7
,7 8
[9 :
NotNull: A
]A B
IStartModelC N
modelO T
)T U
{ 	
m_View 
= 
view 
; 
m_Model 
= 
model 
; 
} 	
public 
void 
Start 
( 
) 
{ 	
Assert 
. 
IsFalse 
( 
m_IsStarted &
,& '
$str( Q
)Q R
;R S
m_IsStarted 
= 
true 
; 
m_Model!! 
.!!  
ProjectStatusChanged!! (
+=!!) +"
OnProjectStatusChanged!!, B
;!!B C
m_Model"" 
."" 
StateChanged""  
+=""! #
OnStateChanged""$ 2
;""2 3
PopulateInitialData$$ 
($$  
)$$  !
;$$! "
}%% 	
public(( 
void(( 
Stop(( 
((( 
)(( 
{)) 	
Assert** 
.** 
IsTrue** 
(** 
m_IsStarted** %
,**% &
$str**' P
)**P Q
;**Q R
m_IsStarted++ 
=++ 
false++ 
;++  
m_Model-- 
.--  
ProjectStatusChanged-- (
-=--) +"
OnProjectStatusChanged--, B
;--B C
m_Model.. 
... 
StateChanged..  
-=..! #
OnStateChanged..$ 2
;..2 3
}// 	
void44 
OnStateChanged44 
(44 
)44 
{55 	
PopulateInitialData66 
(66  
)66  !
;66! "
}77 	
void<< 
PopulateInitialData<<  
(<<  !
)<<! "
{== 	"
OnProjectStatusChanged>> "
(>>" #
m_Model>># *
.>>* +
ProjectStatus>>+ 8
)>>8 9
;>>9 :
}?? 	
voidAA "
OnProjectStatusChangedAA #
(AA# $
ProjectStatusAA$ 1
statusAA2 8
)AA8 9
{BB 	
switchCC 
(CC 
statusCC 
)CC 
{CC 
caseDD 
ProjectStatusDD "
.DD" #
OfflineDD# *
:DD* +
m_ViewEE 
.EE 
TextEE 
=EE  !
StringAssetsEE" .
.EE. /%
projectStatusTitleOfflineEE/ H
;EEH I
m_ViewFF 
.FF 

ButtonTextFF %
=FF& '
stringFF( .
.FF. /
EmptyFF/ 4
;FF4 5
m_ViewGG 
.GG 
SetButtonVisibleGG +
(GG+ ,
falseGG, 1
)GG1 2
;GG2 3
breakHH 
;HH 
caseII 
ProjectStatusII "
.II" #
MaintenanceII# .
:II. /
m_ViewJJ 
.JJ 
TextJJ 
=JJ  !
StringAssetsJJ" .
.JJ. /)
projectStatusTitleMaintenanceJJ/ L
;JJL M
m_ViewKK 
.KK 

ButtonTextKK %
=KK& '
stringKK( .
.KK. /
EmptyKK/ 4
;KK4 5
m_ViewLL 
.LL 
SetButtonVisibleLL +
(LL+ ,
falseLL, 1
)LL1 2
;LL2 3
breakMM 
;MM 
caseNN 
ProjectStatusNN "
.NN" #
	LoggedOutNN# ,
:NN, -
m_ViewOO 
.OO 
TextOO 
=OO  !
StringAssetsOO" .
.OO. /'
projectStatusTitleLoggedOutOO/ J
;OOJ K
m_ViewPP 
.PP 

ButtonTextPP %
=PP& '
StringAssetsPP( 4
.PP4 5(
projectStatusButtonLoggedOutPP5 Q
;PPQ R
m_ViewQQ 
.QQ 
SetButtonVisibleQQ +
(QQ+ ,
trueQQ, 0
)QQ0 1
;QQ1 2
breakRR 
;RR 
caseSS 
ProjectStatusSS "
.SS" #
UnboundSS# *
:SS* +
m_ViewTT 
.TT 
TextTT 
=TT  !
StringAssetsTT" .
.TT. /%
projectStatusTitleUnboundTT/ H
;TTH I
m_ViewUU 
.UU 

ButtonTextUU %
=UU& '
StringAssetsUU( 4
.UU4 5&
projectStatusButtonUnboundUU5 O
;UUO P
m_ViewVV 
.VV 
SetButtonVisibleVV +
(VV+ ,
trueVV, 0
)VV0 1
;VV1 2
breakWW 
;WW 
caseXX 
ProjectStatusXX "
.XX" #
NoSeatXX# )
:XX) *
m_ViewYY 
.YY 
TextYY 
=YY  !
StringAssetsYY" .
.YY. /$
projectStatusTitleNoSeatYY/ G
;YYG H
m_ViewZZ 
.ZZ 

ButtonTextZZ %
=ZZ& '
StringAssetsZZ( 4
.ZZ4 5%
projectStatusButtonNoSeatZZ5 N
;ZZN O
m_View[[ 
.[[ 
SetButtonVisible[[ +
([[+ ,
true[[, 0
)[[0 1
;[[1 2
break\\ 
;\\ 
case]] 
ProjectStatus]] "
.]]" #
Bound]]# (
:]]( )
m_View^^ 
.^^ 
Text^^ 
=^^  !
StringAssets^^" .
.^^. /#
projectStatusTitleBound^^/ F
;^^F G
m_View__ 
.__ 

ButtonText__ %
=__& '
StringAssets__( 4
.__4 5$
projectStatusButtonBound__5 M
;__M N
m_View`` 
.`` 
SetButtonVisible`` +
(``+ ,
true``, 0
)``0 1
;``1 2
breakaa 
;aa 
casebb 
ProjectStatusbb "
.bb" #
Loadingbb# *
:bb* +
m_Viewcc 
.cc 
Textcc 
=cc  !
StringAssetscc" .
.cc. /%
projectStatusTitleLoadingcc/ H
;ccH I
m_Viewdd 
.dd 

ButtonTextdd %
=dd& '
stringdd( .
.dd. /
Emptydd/ 4
;dd4 5
m_Viewee 
.ee 
SetButtonVisibleee +
(ee+ ,
falseee, 1
)ee1 2
;ee2 3
breakff 
;ff 
casegg 
ProjectStatusgg "
.gg" #
Readygg# (
:gg( )
m_Viewhh 
.hh 
Texthh 
=hh  !
stringhh" (
.hh( )
Emptyhh) .
;hh. /
m_Viewii 
.ii 

ButtonTextii %
=ii& '
stringii( .
.ii. /
Emptyii/ 4
;ii4 5
m_Viewjj 
.jj 
SetButtonVisiblejj +
(jj+ ,
falsejj, 1
)jj1 2
;jj2 3
breakkk 
;kk 
defaultll 
:ll 
throwmm 
newmm '
ArgumentOutOfRangeExceptionmm 9
(mm9 :
nameofmm: @
(mm@ A
statusmmA G
)mmG H
,mmH I
statusmmJ P
,mmP Q
$strmmR n
)mmn o
;mmo p
}nn 
}oo 	
publicrr 
voidrr 
RequestStartrr  
(rr  !
)rr! "
{ss 	
vartt 
statustt 
=tt 
m_Modeltt  
.tt  !
ProjectStatustt! .
;tt. /
switchuu 
(uu 
statusuu 
)uu 
{uu 
casevv 
ProjectStatusvv "
.vv" #
Unboundvv# *
:vv* +
m_Modelww 
.ww 
ShowServicePageww +
(ww+ ,
)ww, -
;ww- .
breakxx 
;xx 
caseyy 
ProjectStatusyy "
.yy" #
	LoggedOutyy# ,
:yy, -
m_Modelzz 
.zz 
ShowLoginPagezz )
(zz) *
)zz* +
;zz+ ,
break{{ 
;{{ 
case|| 
ProjectStatus|| "
.||" #
NoSeat||# )
:||) *
m_Model}} 
.}} 
ShowNoSeatPage}} *
(}}* +
)}}+ ,
;}}, -
break~~ 
;~~ 
case 
ProjectStatus "
." #
Bound# (
:( )
m_Model
ÅÅ 
.
ÅÅ "
RequestTurnOnService
ÅÅ 0
(
ÅÅ0 1
)
ÅÅ1 2
;
ÅÅ2 3
break
ÇÇ 
;
ÇÇ 
default
ÉÉ 
:
ÉÉ 
throw
ÑÑ 
new
ÑÑ )
ArgumentOutOfRangeException
ÑÑ 9
(
ÑÑ9 :
nameof
ÑÑ: @
(
ÑÑ@ A
status
ÑÑA G
)
ÑÑG H
,
ÑÑH I
status
ÑÑJ P
,
ÑÑP Q
$str
ÑÑR n
)
ÑÑn o
;
ÑÑo p
}
ÖÖ 
}
ÜÜ 	
}
áá 
}àà ◊=
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeListElements\ToggleableChangeListElement.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
ChangeListEntries- >
{		 
internal

 
class

 '
ToggleableChangeListElement

 .
:

/ 0!
BaseChangeListElement

1 F
{ 
public 
new 
const 
string 
UssClassName  ,
=- .
$str/ O
;O P
public 
const 
string 
ToggleUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
public 
const 
string "
StatusIconUssClassName 2
=3 4
UssClassName5 A
+B C
$strD L
;L M
public 
const 
string "
DiffButtonUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string %
DiscardButtonUssClassName 5
=6 7
UssClassName8 D
+E F
$strG X
;X Y
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U'
ToggleableChangeListElementU p
)p q
}q r
.ussr v
"v w
;w x
public 
readonly 
Toggle 
toggle %
;% &
public 
readonly 

IconButton "

diffButton# -
;- .
public 
readonly 

IconButton "
discardButton# 0
;0 1
public 
readonly 
VisualElement %

statusIcon& 0
;0 1
[ 	
	CanBeNull	 
] 
EventCallback 
< 
ChangeEvent !
<! "
bool" &
>& '
>' (
m_ToggleCallback) 9
;9 :
public '
ToggleableChangeListElement *
(* +
)+ ,
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
var"" 
toggleContainer"" 
=""  !
new""" %
VisualElement""& 3
(""3 4
)""4 5
;""5 6
toggle## 
=## 
new## 
Toggle## 
(##  
)##  !
;##! "
toggle$$ 
.$$ 
AddToClassList$$ !
($$! "
ToggleUssClassName$$" 4
)$$4 5
;$$5 6
toggleContainer%% 
.%% 
Add%% 
(%%  
toggle%%  &
)%%& '
;%%' (

statusIcon'' 
='' 
new'' 
VisualElement'' *
(''* +
)''+ ,
;'', -

statusIcon(( 
.(( 
AddToClassList(( %
(((% &
IconUssClassName((& 6
)((6 7
;((7 8

statusIcon)) 
.)) 
AddToClassList)) %
())% &"
StatusIconUssClassName))& <
)))< =
;))= >
icons++ 
.++ 
Add++ 
(++ 
toggleContainer++ %
)++% &
;++& '
icons,, 
.,, 
Add,, 
(,, 

statusIcon,,  
),,  !
;,,! "

diffButton// 
=// 
new// 

IconButton// '
(//' (
)//( )
;//) *

diffButton00 
.00 
AddToClassList00 %
(00% &

IconButton00& 0
.000 1
DiffUssCLassName001 A
)00A B
;00B C

diffButton11 
.11 
AddToClassList11 %
(11% &
ButtonUssClassName11& 8
)118 9
;119 :

diffButton22 
.22 
AddToClassList22 %
(22% &"
DiffButtonUssClassName22& <
)22< =
;22= >
discardButton44 
=44 
new44 

IconButton44  *
(44* +
)44+ ,
;44, -
discardButton55 
.55 
AddToClassList55 (
(55( )

IconButton55) 3
.553 4
UndoUssClassName554 D
)55D E
;55E F
discardButton66 
.66 
AddToClassList66 (
(66( )
ButtonUssClassName66) ;
)66; <
;66< =
discardButton77 
.77 
AddToClassList77 (
(77( )%
DiscardButtonUssClassName77) B
)77B C
;77C D
buttons99 
.99 
Add99 
(99 

diffButton99 "
)99" #
;99# $
buttons:: 
.:: 
Add:: 
(:: 
discardButton:: %
)::% &
;::& '
};; 	
public== 
void== 
SetToggleCallback== %
(==% &
Action==& ,
<==, -
bool==- 1
>==1 2
callback==3 ;
)==; <
{>> 	
Assert?? 
.?? 
IsNull?? 
(?? 
m_ToggleCallback?? *
)??* +
;??+ ,
m_ToggleCallback@@ 
=@@ 
c@@  
=>@@! #
callback@@$ ,
(@@, -
c@@- .
.@@. /
newValue@@/ 7
)@@7 8
;@@8 9
toggleAA 
.AA (
RegisterValueChangedCallbackAA /
(AA/ 0
m_ToggleCallbackAA0 @
)AA@ A
;AAA B
}BB 	
publicDD 
overrideDD 
voidDD 
	ClearDataDD &
(DD& '
)DD' (
{EE 	
baseFF 
.FF 
	ClearDataFF 
(FF 
)FF 
;FF 

diffButtonHH 
.HH !
UnregisterClickEventsHH ,
(HH, -
)HH- .
;HH. /
discardButtonII 
.II !
UnregisterClickEventsII /
(II/ 0
)II0 1
;II1 2

statusIconKK 
.KK 
ClearClassListKK %
(KK% &
)KK& '
;KK' (

statusIconLL 
.LL 
AddToClassListLL %
(LL% &
IconUssClassNameLL& 6
)LL6 7
;LL7 8

statusIconMM 
.MM 
AddToClassListMM %
(MM% &"
StatusIconUssClassNameMM& <
)MM< =
;MM= >
ifOO 
(OO 
m_ToggleCallbackOO  
!=OO! #
nullOO$ (
)OO( )
{PP 
toggleQQ 
.QQ *
UnregisterValueChangedCallbackQQ 5
(QQ5 6
m_ToggleCallbackQQ6 F
)QQF G
;QQG H
m_ToggleCallbackRR  
=RR! "
nullRR# '
;RR' (
}SS 
}TT 	
[VV 	
UsedImplicitlyVV	 
]VV 
publicWW 
newWW 
classWW 
UxmlFactoryWW $
:WW% &
UxmlFactoryWW' 2
<WW2 3'
ToggleableChangeListElementWW3 N
>WWN O
{WWP Q
}WWR S
}XX 
}YY èµ
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\ChangesTabPageView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
[ 
UsedImplicitly 
] 
internal 
class 
ChangesTabPageView %
:& '
TabPageComponent( 8
,8 9
IChangesView: F
{ 
[ 	
	CanBeNull	 
] 
IChangesPresenter 
m_Presenter %
;% &
public 
const 
string 
UssClassName (
=) *
$str+ B
;B C
public 
const 
string !
SearchBarUssClassName 1
=2 3
UssClassName4 @
+A B
$strC Q
;Q R
public 
const 
string #
EntryGroupsUssClassName 3
=4 5
UssClassName6 B
+C D
$strE U
;U V
public 
const 
string %
PublishButtonUssClassName 5
=6 7
UssClassName8 D
+E F
$strG Y
;Y Z
public 
const 
string !
TextFieldUssClassName 1
=2 3
UssClassName4 @
+A B
$strC Q
;Q R
public 
const 
string  
ListViewUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
ChangesTabPageViewW i
)i j
}j k
.uxmlk p
"p q
;q r
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
ChangesTabPageViewU g
)g h
}h i
.ussi m
"m n
;n o
readonly!! 
IconTextButton!! 
m_PublishButton!!  /
;!!/ 0
readonly"" 
BetterTextField""   
m_RevisionSummaryBox""! 5
;""5 6
readonly## 
	SearchBar## 
m_SearchBar## &
;##& '
readonly$$ 
VisualElement$$ "
m_EntryGroupsContainer$$ 5
;$$5 6
bool&& 
m_Active&& 
;&& 
[(( 	
	CanBeNull((	 
](( '
ConflictedChangeListAdapter)) #)
m_ConflictedChangeListAdapter))$ A
;))A B
[** 	
	CanBeNull**	 
]** '
ToggleableChangeListAdapter++ #)
m_ToggleableChangeListAdapter++$ A
;++A B
[-- 	
	CanBeNull--	 
]-- 
ChangeEntryGroup.. "
m_EntryToggleableGroup.. /
;../ 0
[// 	
	CanBeNull//	 
]// 
ChangeEntryGroup00 !
m_EntryConflictsGroup00 .
;00. /
[22 	
	CanBeNull22	 
]22 
VisualElement33 
m_ActiveGroup33 #
;33# $
public55 
ChangesTabPageView55 !
(55! "
)55" #
{66 	
AddToClassList77 
(77 
UssClassName77 '
)77' (
;77( )
AssetDatabase88 
.88 
LoadAssetAtPath88 )
<88) *
VisualTreeAsset88* 9
>889 :
(88: ;
k_LayoutPath88; G
)88G H
.88H I
	CloneTree88I R
(88R S
this88S W
)88W X
;88X Y
styleSheets99 
.99 
Add99 
(99 
AssetDatabase99 )
.99) *
LoadAssetAtPath99* 9
<999 :

StyleSheet99: D
>99D E
(99E F
k_StylePath99F Q
)99Q R
)99R S
;99S T
m_SearchBar<< 
=<< 
this<< 
.<< 
Q<<  
<<<  !
	SearchBar<<! *
><<* +
(<<+ ,
	className<<, 5
:<<5 6!
SearchBarUssClassName<<7 L
)<<L M
;<<M N 
m_RevisionSummaryBox==  
===! "
this==# '
.==' (
Q==( )
<==) *
BetterTextField==* 9
>==9 :
(==: ;
	className==; D
:==D E!
TextFieldUssClassName==F [
)==[ \
;==\ ]
m_PublishButton>> 
=>> 
this>> "
.>>" #
Q>># $
<>>$ %
IconTextButton>>% 3
>>>3 4
(>>4 5
	className>>5 >
:>>> ?%
PublishButtonUssClassName>>@ Y
)>>Y Z
;>>Z ["
m_EntryGroupsContainer?? "
=??# $
this??% )
.??) *
Q??* +
<??+ ,
VisualElement??, 9
>??9 :
(??: ;
	className??; D
:??D E#
EntryGroupsUssClassName??F ]
)??] ^
;??^ _
m_PublishButtonBB 
.BB 
TextBB  
=BB! "
StringAssetsBB# /
.BB/ 0
publishButtonBB0 =
;BB= > 
m_RevisionSummaryBoxCC  
.CC  !
PlaceholderCC! ,
=CC- .
StringAssetsCC/ ;
.CC; <%
publishSummaryPlaceholderCC< U
;CCU V
}DD 	
publicGG 
IChangesPresenterGG  
	PresenterGG! *
{HH 	
setII 
{JJ 
m_PresenterKK 
=KK 
valueKK #
;KK# $
SetupEventsLL 
(LL 
)LL 
;LL 
ifNN 
(NN 
ActiveNN 
)NN 
{OO 
valuePP 
.PP 
StartPP 
(PP  
)PP  !
;PP! "
}QQ 
}RR 
}SS 	
voidXX 
SetupEventsXX 
(XX 
)XX 
{YY 	
AssertZZ 
.ZZ 
	IsNotNullZZ 
(ZZ 
m_PresenterZZ (
,ZZ( )
$strZZ* G
)ZZG H
;ZZH I
m_PublishButton]] 
.]] 
Clicked]] #
+=]]$ &
m_Presenter]]' 2
.]]2 3
RequestPublish]]3 A
;]]A B
m_SearchBar`` 
.`` 
Search`` 
+=`` !
m_Presenter``" -
.``- .
SetSearchQuery``. <
;``< = 
m_RevisionSummaryBoxaa  
.aa  !!
OnValueChangedHandleraa! 6
+=aa7 9
saa: ;
=>aa< >
m_Presenteraa? J
.aaJ K
SetRevisionSummaryaaK ]
(aa] ^
saa^ _
)aa_ `
;aa` a
}bb 	
publicee 
voidee 
SetBusyStatusee !
(ee! "
boolee" &
busyee' +
)ee+ ,
{ff 	"
m_EntryGroupsContainergg "
.gg" #

SetEnabledgg# -
(gg- .
!gg. /
busygg/ 3
)gg3 4
;gg4 5 
m_RevisionSummaryBoxhh  
.hh  !

SetEnabledhh! +
(hh+ ,
!hh, -
busyhh- 1
)hh1 2
;hh2 3
}ii 	
	protectedll 
overridell 
voidll 
	SetActivell  )
(ll) *
)ll* +
{mm 	
Assertnn 
.nn 
IsFalsenn 
(nn 
m_Activenn #
,nn# $
$strnn% B
)nnB C
;nnC D
m_Activeoo 
=oo 
trueoo 
;oo 
m_Presenterqq 
?qq 
.qq 
Startqq 
(qq 
)qq  
;qq  !
}rr 	
	protecteduu 
overrideuu 
voiduu 
SetInactiveuu  +
(uu+ ,
)uu, -
{vv 	
Assertww 
.ww 
IsTrueww 
(ww 
m_Activeww "
,ww" #
$strww$ C
)wwC D
;wwD E
m_Activexx 
=xx 
falsexx 
;xx 
m_Presenterzz 
?zz 
.zz 
Stopzz 
(zz 
)zz 
;zz  
}{{ 	
public~~ 
void~~ 
SetSearchQuery~~ "
(~~" #
string~~# )
query~~* /
)~~/ 0
{ 	
Assert
ÄÄ 
.
ÄÄ 
	IsNotNull
ÄÄ 
(
ÄÄ 
m_Presenter
ÄÄ (
,
ÄÄ( )
$str
ÄÄ* T
)
ÄÄT U
;
ÄÄU V
m_SearchBar
ÅÅ 
.
ÅÅ #
SetValueWithoutNotify
ÅÅ -
(
ÅÅ- .
query
ÅÅ. 3
)
ÅÅ3 4
;
ÅÅ4 5
var
ÇÇ 
isSearching
ÇÇ 
=
ÇÇ 
m_Presenter
ÇÇ )
.
ÇÇ) *
	Searching
ÇÇ* 3
;
ÇÇ3 4
if
ÉÉ 
(
ÉÉ #
m_EntryConflictsGroup
ÉÉ %
!=
ÉÉ& (
null
ÉÉ) -
)
ÉÉ- .#
m_EntryConflictsGroup
ÉÉ/ D
.
ÉÉD E
	Searching
ÉÉE N
=
ÉÉO P
isSearching
ÉÉQ \
;
ÉÉ\ ]
if
ÑÑ 
(
ÑÑ $
m_EntryToggleableGroup
ÑÑ &
!=
ÑÑ' )
null
ÑÑ* .
)
ÑÑ. /$
m_EntryToggleableGroup
ÑÑ0 F
.
ÑÑF G
	Searching
ÑÑG P
=
ÑÑQ R
isSearching
ÑÑS ^
;
ÑÑ^ _
}
ÖÖ 	
public
àà 
void
àà  
SetRevisionSummary
àà &
(
àà& '
string
àà' -
message
àà. 5
)
àà5 6
{
ââ 	"
m_RevisionSummaryBox
ää  
.
ää  !#
SetValueWithoutNotify
ää! 6
(
ää6 7
message
ää7 >
)
ää> ?
;
ää? @
}
ãã 	
public
éé 
void
éé 
SetConflicts
éé  
(
éé  !
IReadOnlyList
éé! .
<
éé. /
IChangeEntryData
éé/ ?
>
éé? @
list
ééA E
)
ééE F
{
èè 	
Assert
êê 
.
êê 
	IsNotNull
êê 
(
êê 
m_Presenter
êê (
,
êê( )
$str
êê* W
)
êêW X
;
êêX Y
if
ìì 
(
ìì #
m_EntryConflictsGroup
ìì %
==
ìì& (
null
ìì) -
)
ìì- .
{
îî 
var
ïï 
conflictsList
ïï !
=
ïï" #
new
ïï$ '
AdapterListView
ïï( 7
{
ïï8 9
name
ïï: >
=
ïï? @
StringAssets
ïïA M
.
ïïM N&
changeListConflictedList
ïïN f
,
ïïf g
SelectionType
ïïh u
=
ïïv w
SelectionTypeïïx Ö
.ïïÖ Ü
NoneïïÜ ä
}ïïã å
;ïïå ç
conflictsList
ññ 
.
ññ 
AddToClassList
ññ ,
(
ññ, -"
ListViewUssClassName
ññ- A
)
ññA B
;
ññB C+
m_ConflictedChangeListAdapter
óó -
=
óó. /
new
óó0 3)
ConflictedChangeListAdapter
óó4 O
(
óóO P
m_Presenter
óóP [
)
óó[ \
;
óó\ ]
conflictsList
òò 
.
òò 

SetAdapter
òò (
(
òò( )+
m_ConflictedChangeListAdapter
òò) F
)
òòF G
;
òòG H#
m_EntryConflictsGroup
ôô %
=
ôô& '
new
ôô( +
ChangeEntryGroup
ôô, <
(
ôô< =
conflictsList
ôô= J
)
ôôJ K
{
ôôL M
Title
ôôN S
=
ôôT U
StringAssets
ôôV b
.
ôôb c(
changeListConflictedHeader
ôôc }
}
ôô~ 
;ôô Ä#
m_EntryConflictsGroup
öö %
.
öö% &!
SetOverflowCallback
öö& 9
(
öö9 :
m_Presenter
öö: E
.
ööE F*
OnClickConflictGroupOverflow
ööF b
)
ööb c
;
ööc d#
m_EntryConflictsGroup
õõ %
.
õõ% &
	Searching
õõ& /
=
õõ0 1
m_Presenter
õõ2 =
.
õõ= >
	Searching
õõ> G
;
õõG H
}
úú 
Assert
ùù 
.
ùù 
IsTrue
ùù 
(
ùù +
m_ConflictedChangeListAdapter
ùù 7
!=
ùù8 :
null
ùù; ?
&&
ùù@ B#
m_EntryConflictsGroup
ùùC X
!=
ùùY [
null
ùù\ `
,
ùù` a
$strùùb ê
)ùùê ë
;ùùë í
if
†† 
(
†† 
m_ActiveGroup
†† 
!=
††  #
m_EntryConflictsGroup
††! 6
)
††6 7
{
°° 
m_ActiveGroup
¢¢ 
?
¢¢ 
.
¢¢ !
RemoveFromHierarchy
¢¢ 2
(
¢¢2 3
)
¢¢3 4
;
¢¢4 5$
m_EntryGroupsContainer
££ &
.
££& '
Add
££' *
(
££* +#
m_EntryConflictsGroup
££+ @
)
££@ A
;
££A B
m_ActiveGroup
§§ 
=
§§ #
m_EntryConflictsGroup
§§  5
;
§§5 6
}
•• +
m_ConflictedChangeListAdapter
ßß )
.
ßß) *
List
ßß* .
=
ßß/ 0
list
ßß1 5
;
ßß5 6
var
®® 
count
®® 
=
®® 
m_Presenter
®® #
.
®®# $
ConflictedCount
®®$ 3
;
®®3 4#
m_EntryConflictsGroup
©© !
.
©©! "
NumberMenuItems
©©" 1
=
©©2 3
m_Presenter
©©4 ?
.
©©? @-
ConflictGroupOverflowEntryCount
©©@ _
;
©©_ `#
m_EntryConflictsGroup
™™ !
.
™™! " 
SelectedEntryCount
™™" 4
=
™™5 6
count
™™7 <
;
™™< =#
m_EntryConflictsGroup
´´ !
.
´´! "

EntryCount
´´" ,
=
´´- .
count
´´/ 4
;
´´4 5
}
¨¨ 	
public
ØØ 
void
ØØ  
SetSelectedChanges
ØØ &
(
ØØ& '
)
ØØ' (
{
∞∞ 	
Assert
±± 
.
±± 
	IsNotNull
±± 
(
±± 
m_Presenter
±± (
,
±±( )
$str
±±* l
)
±±l m
;
±±m n
if
≤≤ 
(
≤≤ +
m_ToggleableChangeListAdapter
≤≤ ,
==
≤≤- /
null
≤≤0 4
)
≤≤4 5
{
≥≥ 
return
∂∂ 
;
∂∂ 
}
∑∑ 
Assert
ππ 
.
ππ 
IsTrue
ππ 
(
ππ +
m_ToggleableChangeListAdapter
ππ 7
!=
ππ8 :
null
ππ; ?
&&
ππ@ B$
m_EntryToggleableGroup
ππC Y
!=
ππZ \
null
ππ] a
,
ππa b
$strππc ¢
)ππ¢ £
;ππ£ §
var
∫∫ 
scrollToIndex
∫∫ 
=
∫∫ +
m_ToggleableChangeListAdapter
∫∫  =
.
∫∫= >"
GetFirstToggledIndex
∫∫> R
(
∫∫R S
)
∫∫S T
;
∫∫T U+
m_ToggleableChangeListAdapter
ªª )
.
ªª) *"
NotifyDataSetChanged
ªª* >
(
ªª> ?
)
ªª? @
;
ªª@ A
if
ºº 
(
ºº 
scrollToIndex
ºº 
!=
ºº  
-
ºº! "
$num
ºº" #
)
ºº# $
{
ΩΩ 
scrollToIndex
ææ 
=
ææ 
Math
ææ  $
.
ææ$ %
Min
ææ% (
(
ææ( )
scrollToIndex
ææ) 6
,
ææ6 7+
m_ToggleableChangeListAdapter
ææ8 U
.
ææU V
GetEntryCount
ææV c
(
ææc d
)
ææd e
-
ææf g
$num
ææh i
)
ææi j
;
ææj k$
m_EntryToggleableGroup
¿¿ &
.
¿¿& '
ScrollTo
¿¿' /
(
¿¿/ 0
scrollToIndex
¿¿0 =
)
¿¿= >
;
¿¿> ?
if
¡¡ 
(
¡¡ +
m_ToggleableChangeListAdapter
¡¡ 0
.
¡¡0 1&
GetLastBoundElementIndex
¡¡1 I
(
¡¡I J
)
¡¡J K
<
¡¡L M
scrollToIndex
¡¡N [
+
¡¡\ ]
$num
¡¡^ _
)
¡¡_ `
{
¬¬ $
m_EntryToggleableGroup
∆∆ *
.
∆∆* +
ScrollTo
∆∆+ 3
(
∆∆3 4
scrollToIndex
∆∆4 A
+
∆∆B C
$num
∆∆D E
)
∆∆E F
;
∆∆F G
}
«« 
}
»» 
}
…… 	
public
ÃÃ 
void
ÃÃ 

SetChanges
ÃÃ 
(
ÃÃ 
IReadOnlyList
ÃÃ ,
<
ÃÃ, -
IChangeEntryData
ÃÃ- =
>
ÃÃ= >
list
ÃÃ? C
)
ÃÃC D
{
ÕÕ 	
Assert
ŒŒ 
.
ŒŒ 
	IsNotNull
ŒŒ 
(
ŒŒ 
m_Presenter
ŒŒ (
,
ŒŒ( )
$str
ŒŒ* Y
)
ŒŒY Z
;
ŒŒZ [
if
—— 
(
—— $
m_EntryToggleableGroup
—— &
==
——' )
null
——* .
)
——. /
{
““ 
var
””  
toggleableListView
”” &
=
””' (
new
””) ,
AdapterListView
””- <
{
””= >
SelectionType
””? L
=
””M N
SelectionType
””O \
.
””\ ]
None
””] a
}
””b c
;
””c d 
toggleableListView
‘‘ "
.
‘‘" #
AddToClassList
‘‘# 1
(
‘‘1 2"
ListViewUssClassName
‘‘2 F
)
‘‘F G
;
‘‘G H+
m_ToggleableChangeListAdapter
’’ -
=
’’. /
new
’’0 3)
ToggleableChangeListAdapter
’’4 O
(
’’O P
m_Presenter
’’P [
)
’’[ \
;
’’\ ] 
toggleableListView
÷÷ "
.
÷÷" #

SetAdapter
÷÷# -
(
÷÷- .+
m_ToggleableChangeListAdapter
÷÷. K
)
÷÷K L
;
÷÷L M$
m_EntryToggleableGroup
◊◊ &
=
◊◊' (
new
◊◊) ,
ChangeEntryGroup
◊◊- =
(
◊◊= > 
toggleableListView
◊◊> P
)
◊◊P Q
{
ÿÿ 
Title
ÿÿ 
=
ÿÿ 
StringAssets
ÿÿ *
.
ÿÿ* +"
changeListFullHeader
ÿÿ+ ?
}
ÿÿ@ A
;
ÿÿA B$
m_EntryToggleableGroup
ŸŸ &
.
ŸŸ& '!
SetOverflowCallback
ŸŸ' :
(
ŸŸ: ;
m_Presenter
ŸŸ; F
.
ŸŸF G"
OnClickGroupOverflow
ŸŸG [
)
ŸŸ[ \
;
ŸŸ\ ]$
m_EntryToggleableGroup
⁄⁄ &
.
⁄⁄& '
	Searching
⁄⁄' 0
=
⁄⁄1 2
m_Presenter
⁄⁄3 >
.
⁄⁄> ?
	Searching
⁄⁄? H
;
⁄⁄H I
}
€€ 
Assert
‹‹ 
.
‹‹ 
IsTrue
‹‹ 
(
‹‹ +
m_ToggleableChangeListAdapter
‹‹ 7
!=
‹‹8 :
null
‹‹; ?
&&
‹‹@ B$
m_EntryToggleableGroup
‹‹C Y
!=
‹‹Z \
null
‹‹] a
,
‹‹a b
$str‹‹c ê
)‹‹ê ë
;‹‹ë í
if
ﬂﬂ 
(
ﬂﬂ 
m_ActiveGroup
ﬂﬂ 
!=
ﬂﬂ  $
m_EntryToggleableGroup
ﬂﬂ! 7
)
ﬂﬂ7 8
{
‡‡ 
m_ActiveGroup
·· 
?
·· 
.
·· !
RemoveFromHierarchy
·· 2
(
··2 3
)
··3 4
;
··4 5$
m_EntryGroupsContainer
‚‚ &
.
‚‚& '
Add
‚‚' *
(
‚‚* +$
m_EntryToggleableGroup
‚‚+ A
)
‚‚A B
;
‚‚B C
m_ActiveGroup
„„ 
=
„„ $
m_EntryToggleableGroup
„„  6
;
„„6 7
}
‰‰ $
m_EntryToggleableGroup
ÁÁ "
.
ÁÁ" #

EntryCount
ÁÁ# -
=
ÁÁ. /
m_Presenter
ÁÁ0 ;
.
ÁÁ; <
	Searching
ÁÁ< E
?
ÁÁF G
list
ÁÁH L
.
ÁÁL M
Count
ÁÁM R
:
ÁÁS T
m_Presenter
ÁÁU `
.
ÁÁ` a

TotalCount
ÁÁa k
;
ÁÁk l+
m_ToggleableChangeListAdapter
ËË )
.
ËË) *
List
ËË* .
=
ËË/ 0
list
ËË1 5
;
ËË5 6$
m_EntryToggleableGroup
ÈÈ "
.
ÈÈ" #
NumberMenuItems
ÈÈ# 2
=
ÈÈ3 4
m_Presenter
ÈÈ5 @
.
ÈÈ@ A%
GroupOverflowEntryCount
ÈÈA X
;
ÈÈX Y$
m_EntryToggleableGroup
ÍÍ "
.
ÍÍ" # 
SelectedEntryCount
ÍÍ# 5
=
ÍÍ6 7
m_Presenter
ÍÍ8 C
.
ÍÍC D
ToggledCount
ÍÍD P
;
ÍÍP Q
}
ÎÎ 	
public
ÓÓ 
void
ÓÓ 
SetToggledCount
ÓÓ #
(
ÓÓ# $
int
ÓÓ$ '
count
ÓÓ( -
)
ÓÓ- .
{
ÔÔ 	
if
 
(
 $
m_EntryToggleableGroup
 &
!=
' )
null
* .
)
. /
{
ÒÒ $
m_EntryToggleableGroup
ÚÚ &
.
ÚÚ& ' 
SelectedEntryCount
ÚÚ' 9
=
ÚÚ: ;
count
ÚÚ< A
;
ÚÚA B
}
ÛÛ 
}
ÙÙ 	
public
˜˜ 
void
˜˜ 
SetPublishEnabled
˜˜ %
(
˜˜% &
bool
˜˜& *
enabled
˜˜+ 2
,
˜˜2 3
string
˜˜4 :
reason
˜˜; A
=
˜˜B C
null
˜˜D H
)
˜˜H I
{
¯¯ 	
m_PublishButton
˘˘ 
.
˘˘ 

SetEnabled
˘˘ &
(
˘˘& '
enabled
˘˘' .
)
˘˘. /
;
˘˘/ 0
m_PublishButton
¸¸ 
.
¸¸ 
parent
¸¸ "
.
¸¸" #
tooltip
¸¸# *
=
¸¸+ ,
reason
¸¸- 3
;
¸¸3 4
}
˝˝ 	
public
ÄÄ 
bool
ÄÄ 
DisplayDialogue
ÄÄ #
(
ÄÄ# $
string
ÄÄ$ *
title
ÄÄ+ 0
,
ÄÄ0 1
string
ÄÄ2 8
message
ÄÄ9 @
,
ÄÄ@ A
string
ÄÄB H
affirmative
ÄÄI T
)
ÄÄT U
{
ÅÅ 	
return
ÇÇ 
EditorUtility
ÇÇ  
.
ÇÇ  !
DisplayDialog
ÇÇ! .
(
ÇÇ. /
title
ÇÇ/ 4
,
ÇÇ4 5
message
ÇÇ6 =
,
ÇÇ= >
affirmative
ÇÇ? J
)
ÇÇJ K
;
ÇÇK L
}
ÉÉ 	
public
ÜÜ 
bool
ÜÜ 
DisplayDialogue
ÜÜ #
(
ÜÜ# $
string
ÜÜ$ *
title
ÜÜ+ 0
,
ÜÜ0 1
string
ÜÜ2 8
message
ÜÜ9 @
,
ÜÜ@ A
string
ÜÜB H
affirmative
ÜÜI T
,
ÜÜT U
string
ÜÜV \
negative
ÜÜ] e
)
ÜÜe f
{
áá 	
return
àà 
EditorUtility
àà  
.
àà  !
DisplayDialog
àà! .
(
àà. /
title
àà/ 4
,
àà4 5
message
àà6 =
,
àà= >
affirmative
àà? J
,
ààJ K
negative
ààL T
)
ààT U
;
ààU V
}
ââ 	
[
ãã 	
UsedImplicitly
ãã	 
]
ãã 
public
åå 
new
åå 
class
åå 
UxmlFactory
åå $
:
åå% &
UxmlFactory
åå' 2
<
åå2 3 
ChangesTabPageView
åå3 E
>
ååE F
{
ååG H
}
ååI J
}
çç 
}éé €
ëD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\IHistoryModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
	interface 
IHistoryModel $
:% &
IModel' -
{		 
event 
Action 
HistoryListUpdated '
;' (
event 
Action 
< 
IReadOnlyList "
<" #
IHistoryEntry# 0
>0 1
>1 2
HistoryListReceived3 F
;F G
event 
Action 
< 
IHistoryEntry "
>" #$
SelectedRevisionReceived$ <
;< =
event 
Action 
< 
bool 
> 
BusyStatusUpdated ,
;, -
event!! 
Action!! 
<!! 
int!! 
?!! 
>!! 
EntryCountUpdated!! ,
;!!, -
bool&& 
Busy&& 
{&& 
get&& 
;&& 
}&& 
int++ 

PageNumber++ 
{++ 
get++ 
;++ 
set++ !
;++! "
}++# $
[00 	
NotNull00	 
]00 
string11 
SelectedRevisionId11 !
{11" #
get11$ '
;11' (
}11) *
[66 	
NotNull66	 
]66 
string77 
SavedRevisionId77 
{77  
get77! $
;77$ %
}77& '
bool<< 
IsRevisionSelected<< 
{<<  !
get<<" %
;<<% &
}<<' (
voidBB "
RequestPageOfRevisionsBB #
(BB# $
intBB$ '
pageSizeBB( 0
)BB0 1
;BB1 2
voidHH !
RequestSingleRevisionHH "
(HH" #
[HH# $
NotNullHH$ +
]HH+ ,
stringHH- 3

revisionIdHH4 >
)HH> ?
;HH? @
voidMM 
RequestEntryNumberMM 
(MM  
)MM  !
;MM! "
voidSS 
RequestUpdateToSS 
(SS 
[SS 
NotNullSS %
]SS% &
stringSS' -

revisionIdSS. 8
)SS8 9
;SS9 :
voidYY 
RequestRestoreToYY 
(YY 
[YY 
NotNullYY &
]YY& '
stringYY( .

revisionIdYY/ 9
)YY9 :
;YY: ;
void__ 
RequestGoBackTo__ 
(__ 
[__ 
NotNull__ %
]__% &
string__' -

revisionId__. 8
)__8 9
;__9 :
booldd 
SupportsRevertdd 
{dd 
getdd !
;dd! "
}dd# $
voidjj 
RequestRevertjj 
(jj 
[jj 
NotNulljj #
]jj# $
stringjj% +

revisionIdjj, 6
,jj6 7
[jj8 9
NotNulljj9 @
]jj@ A
IReadOnlyListjjB O
<jjO P
stringjjP V
>jjV W
filesjjX ]
)jj] ^
;jj^ _
}kk 
}ll ≈
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\OpenLinksUtility.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
internal 
static 
class 
OpenLinksUtility *
{ 
public 
static 
void 
OpenMembersLink *
(* +
)+ ,
{		 	
string

 
url

 
;

 
var 
config 
= 
UnityConnect %
.% &
instance& .
.. /
configuration/ <
;< =
switch 
( 
config 
) 
{ 
case 
$str "
:" #
url$ '
=( )
$str* o
;o p
breakq v
;v w
case 
$str 
: 
url  #
=$ %
$str& o
;o p
breakq v
;v w
case 
$str !
:! "
url# &
=' (
$str) j
;j k
breakl q
;q r
default 
: 
UnityEngine 
.  
Debug  %
.% &
LogError& .
(. /
$"/ 10
$Unexpected connection configuration 1 U
{U V
configV \
}\ ]
"] ^
)^ _
;_ `
returna g
;g h
} 
url 
= 
string 
. 
Format 
(  
url  #
,# $
UnityConnect% 1
.1 2
instance2 :
.: ;
projectInfo; F
.F G
organizationIdG U
,U V
UnityConnectW c
.c d
instanced l
.l m
projectInfom x
.x y
projectGUID	y Ñ
)
Ñ Ö
;
Ö Ü
UnityConnect 
. 
instance !
.! ")
OpenAuthorizedURLInWebBrowser" ?
(? @
url@ C
)C D
;D E
} 	
} 
} €.
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\Menus\FloatingMenu.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "

Components

" ,
.

, -
Menus

- 2
{ 
[ 
UsedImplicitly 
] 
internal 
class 
FloatingMenu 
{ 
public 
const 
string 
ussClassName (
=) *
$str+ @
;@ A
const 
float 
k_ItemHeight  
=! "
$num# &
;& '
readonly 
List 
< 
( 
string 
Text "
," #
Action$ *
Action+ 1
,1 2
bool3 7
Enabled8 ?
)? @
>@ A
m_ItemsB I
;I J
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
FloatingMenuU a
)a b
}b c
.ussc g
"g h
;h i
readonly 
VisualElement 
	m_Content (
;( )
MenuUtilities"" 
."" 
OpenDirection"" #
m_OpenDirection""$ 3
=""4 5
MenuUtilities""6 C
.""C D
OpenDirection""D Q
.""Q R
DownLeft""R Z
;""Z [
public'' 
FloatingMenu'' 
('' 
)'' 
{(( 	
m_Items)) 
=)) 
new)) 
List)) 
<)) 
())  
string))  &
Text))' +
,))+ ,
Action))- 3
Action))4 :
,)): ;
bool))< @
Enabled))A H
)))H I
>))I J
())J K
)))K L
;))L M
	m_Content** 
=** 
new** 
VisualElement** )
(**) *
)*** +
;**+ ,
	m_Content++ 
.++ 
AddToClassList++ $
(++$ %
ussClassName++% 1
)++1 2
;++2 3
	m_Content,, 
.,, 
styleSheets,, !
.,,! "
Add,," %
(,,% &
AssetDatabase,,& 3
.,,3 4
LoadAssetAtPath,,4 C
<,,C D

StyleSheet,,D N
>,,N O
(,,O P
k_StylePath,,P [
),,[ \
),,\ ]
;,,] ^
}-- 	
public66 
FloatingMenu66 
AddEntry66 $
(66$ %
string66% +
text66, 0
,660 1
Action662 8
action669 ?
,66? @
bool66A E
enabled66F M
)66M N
{77 	
m_Items88 
.88 
Add88 
(88 
(88 
text88 
,88 
action88 %
,88% &
enabled88' .
)88. /
)88/ 0
;880 1
return99 
this99 
;99 
}:: 	
publicAA 
FloatingMenuAA 

AddEntriesAA &
(AA& '
IEnumerableAA' 2
<AA2 3
(AA3 4
stringAA4 :
TextAA; ?
,AA? @
ActionAAA G
ActionAAH N
,AAN O
boolAAP T
EnabledAAU \
)AA\ ]
>AA] ^
itemsAA_ d
)AAd e
{BB 	
m_ItemsCC 
.CC 
AddRangeCC 
(CC 
itemsCC "
)CC" #
;CC# $
returnDD 
thisDD 
;DD 
}EE 	
publicLL 
FloatingMenuLL 
SetOpenDirectionLL ,
(LL, -
MenuUtilitiesLL- :
.LL: ;
OpenDirectionLL; H
openDirectionLLI V
)LLV W
{MM 	
m_OpenDirectionNN 
=NN 
openDirectionNN +
;NN+ ,
returnOO 
thisOO 
;OO 
}PP 	
publicWW 
voidWW 
OpenWW 
(WW 
floatWW 
xWW  
,WW  !
floatWW" '
yWW( )
)WW) *
{XX 	
FloatingDialogueYY 
.YY 
InstanceYY %
.YY% &
OpenYY& *
(YY* +
xYY+ ,
,YY, -
yYY. /
,YY/ 0
GenerateContentYY1 @
(YY@ A
)YYA B
,YYB C
m_OpenDirectionYYD S
)YYS T
;YYT U
}ZZ 	
VisualElement`` 
GenerateContent`` %
(``% &
)``& '
{aa 	
	m_Contentbb 
.bb 
Clearbb 
(bb 
)bb 
;bb 
foreachcc 
(cc 
varcc 
itemcc 
incc  
m_Itemscc! (
)cc( )
{dd 
voidff 
Actionff 
(ff 
)ff 
{gg 
FloatingDialoguehh $
.hh$ %
Instancehh% -
.hh- .
Closehh. 3
(hh3 4
)hh4 5
;hh5 6
itemii 
.ii 
Actionii 
(ii  
)ii  !
;ii! "
}jj 
varll 
elemll 
=ll 
newll 
FloatingMenuItemll /
(ll/ 0
itemll0 4
.ll4 5
Textll5 9
,ll9 :
Actionll; A
,llA B
itemllC G
.llG H
EnabledllH O
,llO P
k_ItemHeightllQ ]
)ll] ^
;ll^ _
	m_Contentmm 
.mm 
Addmm 
(mm 
elemmm "
)mm" #
;mm# $
}nn 
returnpp 
	m_Contentpp 
;pp 
}qq 	
}rr 
}ss Ø
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\UserInterface\Bootstrap.cs
	namespace 	
CollabProxy
 
. 
UI 
{ 
[		 
InitializeOnLoad		 
]		 
public

 

class

 
	Bootstrap

 
{ 
static 
	Bootstrap 
( 
) 
{ 	
var 
toolbar 
= 
new 
ToolbarButton +
{, -
Width. 3
=4 5
$num6 9
}: ;
;; <
Toolbar 
. 
AddSubToolbar !
(! "
toolbar" )
)) *
;* +
toolbar 
. 
Update 
( 
) 
; 
Collab 
. 
ShowHistoryWindow $
+=% '
(( )
)) *
=>+ -
{ 
CollaborateWindow !
.! "
Init" &
(& '
CollaborateWindow' 8
.8 9
FocusTarget9 D
.D E
HistoryE L
)L M
;M N
} 
; 
Collab 
. 
ShowChangesWindow $
+=% '
(( )
)) *
=>+ -
{ 
CollaborateWindow !
.! "
Init" &
(& '
CollaborateWindow' 8
.8 9
FocusTarget9 D
.D E
ChangesE L
)L M
;M N
} 
; 
} 	
} 
} ¸
ôD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\IChangesPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
	interface 
IChangesPresenter (
:) *

IPresenter+ 5
{ 
int 
ToggledCount 
{ 
get 
; 
}  !
int 

TotalCount 
{ 
get 
; 
} 
int 
ConflictedCount 
{ 
get !
;! "
}# $
bool 
	Searching 
{ 
get 
; 
} 
bool## 
UpdateEntryToggle## 
(## 
[##  
NotNull##  '
]##' (
string##) /
path##0 4
,##4 5
bool##6 :
toggled##; B
)##B C
;##C D
void(( 
RequestPublish(( 
((( 
)(( 
;(( 
void.. 
RequestDiscard.. 
(.. 
[.. 
NotNull.. $
]..$ %
IChangeEntry..& 2
entry..3 8
)..8 9
;..9 :
void44 
RequestDiffChanges44 
(44  
[44  !
NotNull44! (
]44( )
string44* 0
path441 5
)445 6
;446 7
void:: 
SetSearchQuery:: 
(:: 
[:: 
NotNull:: $
]::$ %
string::& ,
query::- 2
)::2 3
;::3 4
void@@ 
SetRevisionSummary@@ 
(@@  
[@@  !
NotNull@@! (
]@@( )
string@@* 0
message@@1 8
)@@8 9
;@@9 :
intEE #
GroupOverflowEntryCountEE #
{EE$ %
getEE& )
;EE) *
}EE+ ,
voidLL  
OnClickGroupOverflowLL !
(LL! "
floatLL" '
xLL( )
,LL) *
floatLL+ 0
yLL1 2
)LL2 3
;LL3 4
intQQ +
ConflictGroupOverflowEntryCountQQ +
{QQ, -
getQQ. 1
;QQ1 2
}QQ3 4
voidXX (
OnClickConflictGroupOverflowXX )
(XX) *
floatXX* /
xXX0 1
,XX1 2
floatXX3 8
yXX9 :
)XX: ;
;XX; <
void^^ ,
 RequestShowConflictedDifferences^^ -
(^^- .
[^^. /
NotNull^^/ 6
]^^6 7
string^^8 >
path^^? C
)^^C D
;^^D E
voiddd 
RequestChooseMergedd 
(dd  
[dd  !
NotNulldd! (
]dd( )
stringdd* 0
pathdd1 5
)dd5 6
;dd6 7
voidjj 
RequestChooseMinejj 
(jj 
[jj  
NotNulljj  '
]jj' (
stringjj) /
pathjj0 4
)jj4 5
;jj5 6
voidpp 
RequestChooseRemotepp  
(pp  !
[pp! "
NotNullpp" )
]pp) *
stringpp+ 1
pathpp2 6
)pp6 7
;pp7 8
}qq 
}rr Ñç
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\HistoryTabPageView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
{ 
internal 
class 
HistoryTabPageView %
:& '
TabPageComponent( 8
,8 9
IHistoryView: F
{ 
[ 	
	CanBeNull	 
] 
IHistoryPresenter 
m_Presenter %
;% &
public 
const 
string 
UssClassName (
=) *
$str+ 9
;9 :
public 
const 
string !
PaginatorUssClassName 1
=2 3
UssClassName4 @
+A B
$strC P
;P Q
public 
const 
string 
ContentUssClassName /
=0 1
UssClassName2 >
+? @
$strA L
;L M
public 
const 
string 
NoticeUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
HistoryTabPageViewW i
)i j
}j k
.uxmlk p
"p q
;q r
readonly 

ScrollView 
	m_Content %
;% &
readonly   

ListNotice   
m_ListNotice   (
;  ( )
readonly!! 
	Paginator!! 
m_Paginator!! &
;!!& '
bool## 
m_Active## 
;## 
public%% 
HistoryTabPageView%% !
(%%! "
)%%" #
{&& 	
AddToClassList'' 
('' 
UssClassName'' '
)''' (
;''( )
AssetDatabase(( 
.(( 
LoadAssetAtPath(( )
<(() *
VisualTreeAsset((* 9
>((9 :
(((: ;
k_LayoutPath((; G
)((G H
.((H I
	CloneTree((I R
(((R S
this((S W
)((W X
;((X Y
m_Paginator** 
=** 
this** 
.** 
Q**  
<**  !
	Paginator**! *
>*** +
(**+ ,
	className**, 5
:**5 6!
PaginatorUssClassName**7 L
)**L M
;**M N
m_Paginator++ 
.++ 
AddToClassList++ &
(++& '
UiConstants++' 2
.++2 3
	ussHidden++3 <
)++< =
;++= >
m_Paginator,, 
.,, 
ClickedMovePage,, '
+=,,( *
OnClickedMovePage,,+ <
;,,< =
	m_Content.. 
=.. 
this.. 
... 
Q.. 
<.. 

ScrollView.. )
>..) *
(..* +
	className..+ 4
:..4 5
ContentUssClassName..6 I
)..I J
;..J K
m_ListNotice11 
=11 
this11 
.11  
Q11  !
<11! "

ListNotice11" ,
>11, -
(11- .
	className11. 7
:117 8
NoticeUssClassName119 K
)11K L
;11L M
m_ListNotice22 
.22 
Text22 
=22 
StringAssets22  ,
.22, -
loadingRevisions22- =
;22= >
}33 	
public66 
IHistoryPresenter66  
	Presenter66! *
{77 	
set88 
{99 
m_Presenter:: 
=:: 
value:: #
;::# $
if<< 
(<< 
Active<< 
)<< 
{== 
m_Presenter>> 
.>>  
Start>>  %
(>>% &
)>>& '
;>>' (
}?? 
}@@ 
}AA 	
publicDD 
voidDD 
SetBusyStatusDD !
(DD! "
boolDD" &
busyDD' +
)DD+ ,
{EE 	
m_PaginatorFF 
.FF 

SetEnabledFF "
(FF" #
!FF# $
busyFF$ (
)FF( )
;FF) *
	m_ContentGG 
.GG 

SetEnabledGG  
(GG  !
!GG! "
busyGG" &
)GG& '
;GG' (
}HH 	
publicKK 
voidKK 
SetHistoryListKK "
(KK" #
IReadOnlyListKK# 0
<KK0 1
IHistoryEntryKK1 >
>KK> ?
listKK@ D
)KKD E
{LL 	
m_ListNoticeNN 
.NN 
AddToClassListNN '
(NN' (
UiConstantsNN( 3
.NN3 4
	ussHiddenNN4 =
)NN= >
;NN> ?
	m_ContentOO 
.OO 
ClearOO 
(OO 
)OO 
;OO 
m_PaginatorRR 
.RR 
RemoveFromClassListRR +
(RR+ ,
UiConstantsRR, 7
.RR7 8
	ussHiddenRR8 A
)RRA B
;RRB C
ifUU 
(UU 
listUU 
.UU 
CountUU 
==UU 
$numUU 
)UU  
{VV 
m_ListNoticeWW 
.WW 
TextWW !
=WW" #
StringAssetsWW$ 0
.WW0 1&
noticeNoRevisionsToDisplayWW1 K
;WWK L
	m_ContentXX 
.XX 
RemoveFromClassListXX -
(XX- .
UiConstantsXX. 9
.XX9 :
	ussHiddenXX: C
)XXC D
;XXD E
returnYY 
;YY 
}ZZ 
foreach\\ 
(\\ 
var\\ 
entry\\ 
in\\ !
list\\" &
)\\& '
{]] 
	m_Content__ 
.__ 
Add__ 
(__ 
CreateHistoryEntry__ 0
(__0 1
entry__1 6
,__6 7
false__8 =
)__= >
)__> ?
;__? @
}`` 
}aa 	
voidii 
OnClickedMovePageii 
(ii 
intii "

pageChangeii# -
)ii- .
{jj 	
Assertkk 
.kk 
	IsNotNullkk 
(kk 
m_Presenterkk (
,kk( )
$strkk* V
)kkV W
;kkW X
ifll 
(ll 

pageChangell 
==ll 
	Paginatorll '
.ll' (
MoveBackwardsll( 5
)ll5 6
{mm 
m_Presenternn 
.nn 
PrevPagenn $
(nn$ %
)nn% &
;nn& '
}oo 
elsepp 
{qq 
m_Presenterrr 
.rr 
NextPagerr $
(rr$ %
)rr% &
;rr& '
}ss 
}tt 	
publicww 
voidww 
SetPageww 
(ww 
intww 
pageww  $
,ww$ %
intww& )
maxww* -
)ww- .
{xx 	
m_Paginatoryy 
.yy 
SetPageyy 
(yy  
pageyy  $
,yy$ %
maxyy& )
)yy) *
;yy* +
}zz 	
public}} 
void}} 
SetSelection}}  
(}}  !
IHistoryEntry}}! .
entry}}/ 4
)}}4 5
{~~ 	
m_Paginator
ÄÄ 
.
ÄÄ 
AddToClassList
ÄÄ &
(
ÄÄ& '
UiConstants
ÄÄ' 2
.
ÄÄ2 3
	ussHidden
ÄÄ3 <
)
ÄÄ< =
;
ÄÄ= >
m_ListNotice
ÉÉ 
.
ÉÉ 
AddToClassList
ÉÉ '
(
ÉÉ' (
UiConstants
ÉÉ( 3
.
ÉÉ3 4
	ussHidden
ÉÉ4 =
)
ÉÉ= >
;
ÉÉ> ?
	m_Content
ÑÑ 
.
ÑÑ 
Clear
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
	m_Content
áá 
.
áá 
Add
áá 
(
áá  
CreateHistoryEntry
áá ,
(
áá, -
entry
áá- 2
,
áá2 3
true
áá4 8
)
áá8 9
)
áá9 :
;
áá: ;
}
àà 	#
HistoryEntryComponent
êê  
CreateHistoryEntry
êê 0
(
êê0 1
[
êê1 2
NotNull
êê2 9
]
êê9 :
IHistoryEntry
êê; H
entry
êêI N
,
êêN O
bool
êêP T
expanded
êêU ]
)
êê] ^
{
ëë 	
Assert
íí 
.
íí 
	IsNotNull
íí 
(
íí 
m_Presenter
íí (
,
íí( )
$str
íí* U
)
ííU V
;
ííV W
var
ìì 
comp
ìì 
=
ìì 
new
ìì #
HistoryEntryComponent
ìì 0
(
ìì0 1
)
ìì1 2
;
ìì2 3
if
ññ 
(
ññ 
expanded
ññ 
)
ññ 
{
óó 
comp
ôô 
.
ôô 
showFilesButton
ôô $
.
ôô$ %
AddToClassList
ôô% 3
(
ôô3 4
UiConstants
ôô4 ?
.
ôô? @
	ussHidden
ôô@ I
)
ôôI J
;
ôôJ K
comp
öö 
.
öö 
cloudStatusText
öö $
.
öö$ %
AddToClassList
öö% 3
(
öö3 4
UiConstants
öö4 ?
.
öö? @
	ussHidden
öö@ I
)
ööI J
;
ööJ K
comp
úú 
.
úú 
changedFilesCount
úú &
.
úú& '
text
úú' +
=
úú, -
$"
úú. 0

Changes ( 
úú0 :
{
úú: ;
entry
úú; @
.
úú@ A
Changes
úúA H
.
úúH I
Count
úúI N
}
úúN O
 )
úúO Q
"
úúQ R
;
úúR S
var
ûû 
listAdapter
ûû 
=
ûû  !
new
ûû" %+
HistoryEntryChangeListAdapter
ûû& C
(
ûûC D
m_Presenter
ûûD O
,
ûûO P
entry
ûûQ V
.
ûûV W

RevisionId
ûûW a
,
ûûa b
entry
ûûc h
.
ûûh i
Changes
ûûi p
.
ûûp q
ToList
ûûq w
(
ûûw x
)
ûûx y
)
ûûy z
;
ûûz {
comp
üü 
.
üü 
changedFiles
üü !
.
üü! "

SetAdapter
üü" ,
(
üü, -
listAdapter
üü- 8
)
üü8 9
;
üü9 :
listAdapter
†† 
.
†† "
NotifyDataSetChanged
†† 0
(
††0 1
)
††1 2
;
††2 3
comp
££ 
.
££ 

gotoButton
££ 
.
££  
text
££  $
=
££% &
entry
££' ,
.
££, -
GetGotoText
££- 8
(
££8 9
)
££9 :
;
££: ;
comp
§§ 
.
§§ 

gotoButton
§§ 
.
§§  
	clickable
§§  )
.
§§) *
clicked
§§* 1
+=
§§2 4
(
§§5 6
)
§§6 7
=>
§§8 :
m_Presenter
§§; F
.
§§F G
RequestGoto
§§G R
(
§§R S
entry
§§S X
.
§§X Y

RevisionId
§§Y c
,
§§c d
entry
§§e j
.
§§j k
Status
§§k q
)
§§q r
;
§§r s
}
•• 
else
¶¶ 
{
ßß 
comp
©© 
.
©© 
changedFilesCount
©© &
.
©©& '
AddToClassList
©©' 5
(
©©5 6
UiConstants
©©6 A
.
©©A B
	ussHidden
©©B K
)
©©K L
;
©©L M
comp
™™ 
.
™™ 
changedFiles
™™ !
.
™™! "
AddToClassList
™™" 0
(
™™0 1
UiConstants
™™1 <
.
™™< =
	ussHidden
™™= F
)
™™F G
;
™™G H
comp
´´ 
.
´´ 

gotoButton
´´ 
.
´´  
text
´´  $
=
´´% &
string
´´' -
.
´´- .
Empty
´´. 3
;
´´3 4
comp
¨¨ 
.
¨¨ 

gotoButton
¨¨ 
.
¨¨  
AddToClassList
¨¨  .
(
¨¨. /
UiConstants
¨¨/ :
.
¨¨: ;
	ussHidden
¨¨; D
)
¨¨D E
;
¨¨E F
comp
ØØ 
.
ØØ 
showFilesButton
ØØ $
.
ØØ$ %
text
ØØ% )
=
ØØ* +
entry
ØØ, 1
.
ØØ1 2
Changes
ØØ2 9
.
ØØ9 :
Count
ØØ: ?
==
ØØ@ B
$num
ØØC D
?
∞∞ 
StringAssets
∞∞ "
.
∞∞" #

showChange
∞∞# -
:
±± 
string
±± 
.
±± 
Format
±± #
(
±±# $
StringAssets
±±$ 0
.
±±0 1
showChanges
±±1 <
,
±±< =
entry
±±> C
.
±±C D
Changes
±±D K
.
±±K L
Count
±±L Q
)
±±Q R
;
±±R S
comp
≤≤ 
.
≤≤ 
showFilesButton
≤≤ $
.
≤≤$ %
	clickable
≤≤% .
.
≤≤. /
clicked
≤≤/ 6
+=
≤≤7 9
(
≤≤: ;
)
≤≤; <
=>
≤≤= ?
m_Presenter
≤≤@ K
.
≤≤K L 
SelectedRevisionId
≤≤L ^
=
≤≤_ `
entry
≤≤a f
.
≤≤f g

RevisionId
≤≤g q
;
≤≤q r
}
µµ 
var
∏∏ 
trimmedAuthorName
∏∏ !
=
∏∏" #
entry
∏∏$ )
.
∏∏) *

AuthorName
∏∏* 4
.
∏∏4 5
Trim
∏∏5 9
(
∏∏9 :
)
∏∏: ;
;
∏∏; <
comp
ππ 
.
ππ 
profileInitial
ππ 
.
ππ  
text
ππ  $
=
ππ% &
trimmedAuthorName
ππ' 8
.
ππ8 9
	Substring
ππ9 B
(
ππB C
$num
ππC D
,
ππD E
$num
ππF G
)
ππG H
.
ππH I
ToUpper
ππI P
(
ππP Q
)
ππQ R
;
ππR S
comp
∫∫ 
.
∫∫ 

authorName
∫∫ 
.
∫∫ 
text
∫∫  
=
∫∫! "
trimmedAuthorName
∫∫# 4
;
∫∫4 5
comp
ΩΩ 
.
ΩΩ 
	timestamp
ΩΩ 
.
ΩΩ 
text
ΩΩ 
=
ΩΩ  !
	TimeStamp
ΩΩ" +
.
ΩΩ+ ,
GetTimeStamp
ΩΩ, 8
(
ΩΩ8 9
entry
ΩΩ9 >
.
ΩΩ> ?
Time
ΩΩ? C
)
ΩΩC D
;
ΩΩD E
if
ææ 
(
ææ 
	TimeStamp
ææ 
.
ææ #
UseRelativeTimeStamps
ææ /
)
ææ/ 0
{
øø 
comp
¿¿ 
.
¿¿ 
	timestamp
¿¿ 
.
¿¿ 
tooltip
¿¿ &
=
¿¿' (
	TimeStamp
¿¿) 2
.
¿¿2 3#
GetLocalisedTimeStamp
¿¿3 H
(
¿¿H I
entry
¿¿I N
.
¿¿N O
Time
¿¿O S
)
¿¿S T
;
¿¿T U
}
¡¡ 
comp
ƒƒ 
.
ƒƒ 

revisionId
ƒƒ 
.
ƒƒ 
text
ƒƒ  
=
ƒƒ! "
$"
ƒƒ# %
ID: 
ƒƒ% )
{
ƒƒ) *
entry
ƒƒ* /
.
ƒƒ/ 0

RevisionId
ƒƒ0 :
.
ƒƒ: ;
	Substring
ƒƒ; D
(
ƒƒD E
$num
ƒƒE F
,
ƒƒF G
$num
ƒƒH J
)
ƒƒJ K
}
ƒƒK L
"
ƒƒL M
;
ƒƒM N
comp
≈≈ 
.
≈≈ 

revisionId
≈≈ 
.
≈≈ 
tooltip
≈≈ #
=
≈≈$ %
entry
≈≈& +
.
≈≈+ ,

RevisionId
≈≈, 6
;
≈≈6 7
comp
«« 
.
«« 
commitMessage
«« 
.
«« 
text
«« #
=
««$ %
entry
««& +
.
««+ ,
Message
««, 3
;
««3 4
return
…… 
comp
…… 
;
…… 
}
   	
public
ÕÕ 
bool
ÕÕ 
DisplayDialogue
ÕÕ #
(
ÕÕ# $
string
ÕÕ$ *
title
ÕÕ+ 0
,
ÕÕ0 1
string
ÕÕ2 8
message
ÕÕ9 @
,
ÕÕ@ A
string
ÕÕB H
affirmative
ÕÕI T
)
ÕÕT U
{
ŒŒ 	
return
œœ 
EditorUtility
œœ  
.
œœ  !
DisplayDialog
œœ! .
(
œœ. /
title
œœ/ 4
,
œœ4 5
message
œœ6 =
,
œœ= >
affirmative
œœ? J
)
œœJ K
;
œœK L
}
–– 	
public
”” 
bool
”” 
DisplayDialogue
”” #
(
””# $
string
””$ *
title
””+ 0
,
””0 1
string
””2 8
message
””9 @
,
””@ A
string
””B H
affirmative
””I T
,
””T U
string
””V \
negative
””] e
)
””e f
{
‘‘ 	
return
’’ 
EditorUtility
’’  
.
’’  !
DisplayDialog
’’! .
(
’’. /
title
’’/ 4
,
’’4 5
message
’’6 =
,
’’= >
affirmative
’’? J
,
’’J K
negative
’’L T
)
’’T U
;
’’U V
}
÷÷ 	
	protected
ŸŸ 
override
ŸŸ 
void
ŸŸ 
	SetActive
ŸŸ  )
(
ŸŸ) *
)
ŸŸ* +
{
⁄⁄ 	
Assert
€€ 
.
€€ 
IsFalse
€€ 
(
€€ 
m_Active
€€ #
,
€€# $
$str
€€% B
)
€€B C
;
€€C D
m_Active
‹‹ 
=
‹‹ 
true
‹‹ 
;
‹‹ 
m_Presenter
ﬁﬁ 
?
ﬁﬁ 
.
ﬁﬁ 
Start
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ  
;
ﬁﬁ  !
}
ﬂﬂ 	
	protected
‚‚ 
override
‚‚ 
void
‚‚ 
SetInactive
‚‚  +
(
‚‚+ ,
)
‚‚, -
{
„„ 	
Assert
‰‰ 
.
‰‰ 
IsTrue
‰‰ 
(
‰‰ 
m_Active
‰‰ "
,
‰‰" #
$str
‰‰$ C
)
‰‰C D
;
‰‰D E
m_Active
ÂÂ 
=
ÂÂ 
false
ÂÂ 
;
ÂÂ 
m_Presenter
ÁÁ 
?
ÁÁ 
.
ÁÁ 
Stop
ÁÁ 
(
ÁÁ 
)
ÁÁ 
;
ÁÁ  
}
ËË 	
}
ÈÈ 
}ÍÍ Ï
éD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\IMainModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
	interface 

IMainModel !
:" #
IModel$ *
{ 
event 
Action 
< 
bool 
>  
ConflictStatusChange /
;/ 0
event 
Action 
< 
bool 
> !
OperationStatusChange 0
;0 1
event 
Action 
< 
IProgressInfo "
>" ##
OperationProgressChange$ ;
;; <
event 
Action 
< 

IErrorInfo 
>  
ErrorOccurred! .
;. /
event   
Action   
ErrorCleared   !
;  ! "
event%% 
Action%% 
<%% 
bool%% 
>%% -
!RemoteRevisionsAvailabilityChange%% <
;%%< =
event,, 
Action,, 
<,, 
string,, 
>,, "
BackButtonStateUpdated,, 3
;,,3 4
bool11 $
RemoteRevisionsAvailable11 %
{11& '
get11( +
;11+ ,
}11- .
bool66 

Conflicted66 
{66 
get66 
;66 
}66  
[;; 	
	CanBeNull;;	 
];; 
IProgressInfo<< 
ProgressInfo<< "
{<<# $
get<<% (
;<<( )
}<<* +
[AA 	
	CanBeNullAA	 
]AA 

IErrorInfoBB 
	ErrorInfoBB 
{BB 
getBB "
;BB" #
}BB$ %
intGG 
CurrentTabIndexGG 
{GG 
getGG !
;GG! "
setGG# &
;GG& '
}GG( )
[MM 	
NotNullMM	 
]MM 
IHistoryModelNN !
ConstructHistoryModelNN +
(NN+ ,
)NN, -
;NN- .
[TT 	
NotNullTT	 
]TT 
IChangesModelUU !
ConstructChangesModelUU +
(UU+ ,
)UU, -
;UU- .
voidZZ 

ClearErrorZZ 
(ZZ 
)ZZ 
;ZZ 
void__ 
RequestSync__ 
(__ 
)__ 
;__ 
voiddd 
RequestCancelJobdd 
(dd 
)dd 
;dd  
(jj 	
stringjj	 
idjj 
,jj 
stringjj 
textjj 
,jj  
Actionjj! '

backActionjj( 2
)jj2 3
?jj3 4
GetBackNavigationjj5 F
(jjF G
)jjG H
;jjH I
voidrr "
RegisterBackNavigationrr #
(rr# $
stringrr$ *
idrr+ -
,rr- .
stringrr/ 5
textrr6 :
,rr: ;
Actionrr< B

backActionrrC M
)rrM N
;rrN O
boolyy $
UnregisterBackNavigationyy %
(yy% &
stringyy& ,
idyy- /
)yy/ 0
;yy0 1
}zz 
}{{ Õ&
¨D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeListElements\ChangeListElement.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
ChangeListEntries- >
{ 
internal 
class 
ChangeListElement $
:% &!
BaseChangeListElement' <
{ 
public		 
new		 
const		 
string		 
UssClassName		  ,
=		- .
$str		/ D
;		D E
public

 
const

 
string

 "
StatusIconUssClassName

 2
=

3 4
UssClassName

5 A
+

B C
$str

D L
;

L M
public 
const 
string "
DiffButtonUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string %
DiscardButtonUssClassName 5
=6 7
UssClassName8 D
+E F
$strG X
;X Y
public 
readonly 

IconButton "
discardButton# 0
;0 1
public 
readonly 

IconButton "

diffButton# -
;- .
public 
readonly 
VisualElement %

statusIcon& 0
;0 1
public 
ChangeListElement  
(  !
)! "
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )

statusIcon 
= 
new 
VisualElement *
(* +
)+ ,
;, -

statusIcon 
. 
AddToClassList %
(% &
IconUssClassName& 6
)6 7
;7 8

statusIcon 
. 
AddToClassList %
(% &"
StatusIconUssClassName& <
)< =
;= >
icons 
. 
Add 
( 

statusIcon  
)  !
;! "

diffButton 
= 
new 

IconButton '
(' (
)( )
;) *

diffButton 
. 
AddToClassList %
(% &

IconButton& 0
.0 1
DiffUssCLassName1 A
)A B
;B C

diffButton 
. 
AddToClassList %
(% &
ButtonUssClassName& 8
)8 9
;9 :

diffButton   
.   
AddToClassList   %
(  % &"
DiffButtonUssClassName  & <
)  < =
;  = >
discardButton"" 
="" 
new"" 

IconButton""  *
(""* +
)""+ ,
;"", -
discardButton## 
.## 
AddToClassList## (
(##( )

IconButton##) 3
.##3 4
UndoUssClassName##4 D
)##D E
;##E F
discardButton$$ 
.$$ 
AddToClassList$$ (
($$( )
ButtonUssClassName$$) ;
)$$; <
;$$< =
discardButton%% 
.%% 
AddToClassList%% (
(%%( )%
DiscardButtonUssClassName%%) B
)%%B C
;%%C D
buttons'' 
.'' 
Add'' 
('' 

diffButton'' "
)''" #
;''# $
buttons(( 
.(( 
Add(( 
((( 
discardButton(( %
)((% &
;((& '
})) 	
public++ 
override++ 
void++ 
	ClearData++ &
(++& '
)++' (
{,, 	
base-- 
.-- 
	ClearData-- 
(-- 
)-- 
;-- 

diffButton// 
.// !
UnregisterClickEvents// ,
(//, -
)//- .
;//. /
discardButton00 
.00 !
UnregisterClickEvents00 /
(00/ 0
)000 1
;001 2

statusIcon22 
.22 
ClearClassList22 %
(22% &
)22& '
;22' (

statusIcon33 
.33 
AddToClassList33 %
(33% &
IconUssClassName33& 6
)336 7
;337 8

statusIcon44 
.44 
AddToClassList44 %
(44% &"
StatusIconUssClassName44& <
)44< =
;44= >
}55 	
[77 	
UsedImplicitly77	 
]77 
public88 
new88 
class88 
UxmlFactory88 $
:88% &
UxmlFactory88' 2
<882 3
ChangeListElement883 D
>88D E
{88F G
}88H I
}99 
}:: ·2
∞D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeListElements\BaseChangeListElement.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
ChangeListEntries- >
{ 
[		 
UsedImplicitly		 
]		 
internal

 
class

 !
BaseChangeListElement

 (
:

) *
VisualElement

+ 8
{ 
public 
const 
string 
UssClassName (
=) *
$str+ E
;E F
public 
const 
string  
FileNameUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
public 
const 
string  
FilePathUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
public 
const 
string 
IconsUssClassName -
=. /
UssClassName0 <
+= >
$str? H
;H I
public 
const 
string 
ButtonsUssClassName /
=0 1
UssClassName2 >
+? @
$strA L
;L M
public 
const 
string 
IconUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string 
ButtonUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W!
BaseChangeListElementW l
)l m
}m n
.uxmln s
"s t
;t u
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U!
BaseChangeListElementU j
)j k
}k l
.ussl p
"p q
;q r
	protected 
readonly 
Label  

m_FileName! +
;+ ,
	protected 
readonly 
Label  

m_FilePath! +
;+ ,
public 
readonly 
VisualElement %
icons& +
;+ ,
public 
readonly 
VisualElement %
buttons& -
;- .
public !
BaseChangeListElement $
($ %
)% &
{ 	
AddToClassList!! 
(!! 
UssClassName!! '
)!!' (
;!!( )
AssetDatabase"" 
."" 
LoadAssetAtPath"" )
<"") *
VisualTreeAsset""* 9
>""9 :
("": ;
k_LayoutPath""; G
)""G H
.""H I
	CloneTree""I R
(""R S
this""S W
)""W X
;""X Y
styleSheets## 
.## 
Add## 
(## 
AssetDatabase## )
.##) *
LoadAssetAtPath##* 9
<##9 :

StyleSheet##: D
>##D E
(##E F
k_StylePath##F Q
)##Q R
)##R S
;##S T

m_FileName&& 
=&& 
this&& 
.&& 
Q&& 
<&&  
Label&&  %
>&&% &
(&&& '
	className&&' 0
:&&0 1 
FileNameUssClassName&&2 F
)&&F G
;&&G H

m_FilePath'' 
='' 
this'' 
.'' 
Q'' 
<''  
Label''  %
>''% &
(''& '
	className''' 0
:''0 1 
FilePathUssClassName''2 F
)''F G
;''G H
icons(( 
=(( 
this(( 
.(( 
Q(( 
<(( 
VisualElement(( (
>((( )
((() *
	className((* 3
:((3 4
IconsUssClassName((5 F
)((F G
;((G H
buttons)) 
=)) 
this)) 
.)) 
Q)) 
<)) 
VisualElement)) *
>))* +
())+ ,
	className)), 5
:))5 6
ButtonsUssClassName))7 J
)))J K
;))K L
}** 	
public,, 
void,, 
UpdateFilePath,, "
(,," #
[,,# $
NotNull,,$ +
],,+ ,
string,,- 3
path,,4 8
),,8 9
{-- 	
var.. 
directoryName.. 
=.. 
Path..  $
...$ %
GetDirectoryName..% 5
(..5 6
path..6 :
)..: ;
;..; <

m_FileName// 
.// 
text// 
=// 
Path// "
.//" #
GetFileName//# .
(//. /
path/// 3
)//3 4
;//4 5

m_FilePath00 
.00 
text00 
=00 
directoryName00 +
;00+ ,

m_FilePath11 
.11 
tooltip11 
=11  
directoryName11! .
;11. /
}22 	
public44 
virtual44 
void44 
	ClearData44 %
(44% &
)44& '
{55 	

m_FileName66 
.66 
text66 
=66 
null66 "
;66" #

m_FileName77 
.77 
tooltip77 
=77  
null77! %
;77% &

m_FilePath88 
.88 
text88 
=88 
null88 "
;88" #

m_FilePath99 
.99 
tooltip99 
=99  
null99! %
;99% &
}:: 	
[<< 	
UsedImplicitly<<	 
]<< 
public== 
new== 
class== 
UxmlFactory== $
:==% &
UxmlFactory==' 2
<==2 3!
BaseChangeListElement==3 H
>==H I
{==J K
}==L M
}>> 
}?? Ñ|
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\AlertBox.cs
	namespace		 	
Unity		
 
.		 
Cloud		 
.		 
Collaborate		 !
.		! "

Components		" ,
{

 
[ 
UsedImplicitly 
] 
internal 
class 
AlertBox 
: 
VisualElement +
{ 
public 
enum 

AlertLevel 
{ 	
Info 
, 
Warning 
, 
Alert 
} 	
public 
const 
string 
UssClassName (
=) *
$str+ 6
;6 7
public 
const 
string 
IconUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string 
TextUssClassName ,
=- .
UssClassName/ ;
+< =
$str> F
;F G
public 
const 
string 
ButtonUssClassName .
=/ 0
UssClassName1 =
+> ?
$str@ J
;J K
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W
AlertBoxW _
)_ `
}` a
.uxmla f
"f g
;g h
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
AlertBoxU ]
)] ^
}^ _
.uss_ c
"c d
;d e
readonly   
Button   
m_Button    
;    !
readonly!! 
VisualElement!! 
m_Icon!! %
;!!% &
readonly"" 
TextElement"" 
m_Text"" #
;""# $
const%% 
string%% 
k_UssIconInfo%% "
=%%# $
$str%%% 0
;%%0 1
const&& 
string&& 
k_UssIconWarning&& %
=&&& '
$str&&( 6
;&&6 7
const'' 
string'' 
k_UssIconAlert'' #
=''$ %
$str''& 2
;''2 3
readonly,, 
	SortedSet,, 
<,, 

AlertEntry,, %
>,,% &
m_AlertEntryList,,' 7
;,,7 8
public11 
AlertBox11 
(11 
)11 
{22 	
AddToClassList44 
(44 
UssClassName44 '
)44' (
;44( )
AssetDatabase55 
.55 
LoadAssetAtPath55 )
<55) *
VisualTreeAsset55* 9
>559 :
(55: ;
k_LayoutPath55; G
)55G H
.55H I
	CloneTree55I R
(55R S
this55S W
)55W X
;55X Y
styleSheets66 
.66 
Add66 
(66 
AssetDatabase66 )
.66) *
LoadAssetAtPath66* 9
<669 :

StyleSheet66: D
>66D E
(66E F
k_StylePath66F Q
)66Q R
)66R S
;66S T
m_Icon99 
=99 
this99 
.99 
Q99 
<99 
VisualElement99 )
>99) *
(99* +
	className99+ 4
:994 5
IconUssClassName996 F
)99F G
;99G H
m_Text:: 
=:: 
this:: 
.:: 
Q:: 
<:: 
TextElement:: '
>::' (
(::( )
	className::) 2
:::2 3
TextUssClassName::4 D
)::D E
;::E F
m_Button;; 
=;; 
this;; 
.;; 
Q;; 
<;; 
Button;; $
>;;$ %
(;;% &
	className;;& /
:;;/ 0
ButtonUssClassName;;1 C
);;C D
;;;D E
m_AlertEntryList== 
=== 
new== "
	SortedSet==# ,
<==, -

AlertEntry==- 7
>==7 8
(==8 9
)==9 :
;==: ;
UpdateAlertBox@@ 
(@@ 
)@@ 
;@@ 
}AA 	
publicKK 
voidKK 

QueueAlertKK 
(KK 
[KK  
NotNullKK  '
]KK' (
stringKK) /
idKK0 2
,KK2 3

AlertLevelKK4 >
levelKK? D
,KKD E
[KKF G
NotNullKKG N
]KKN O
stringKKP V
messageKKW ^
,KK^ _
(KK` a
stringKKa g
textKKh l
,KKl m
ActionKKn t
actionKKu {
)KK{ |
?KK| }
button	KK~ Ñ
=
KKÖ Ü
null
KKá ã
)
KKã å
{LL 	
varNN 
	oldActiveNN 
=NN 
m_AlertEntryListNN ,
.NN, -
CountNN- 2
==NN3 5
$numNN6 7
?NN8 9
(NN: ;

AlertEntryNN; E
?NNE F
)NNF G
nullNNG K
:NNL M
m_AlertEntryListNNN ^
.NN^ _
MaxNN_ b
;NNb c
varQQ 
entryQQ 
=QQ 
newQQ 

AlertEntryQQ &
(QQ& '
idQQ' )
,QQ) *
levelQQ+ 0
,QQ0 1
messageQQ2 9
,QQ9 :
buttonQQ; A
==QQB D
nullQQE I
?RR 
(RR 

AlertEntryRR 
.RR 
AlertButtonRR )
?RR) *
)RR* +
nullRR+ /
:SS 
newSS 

AlertEntrySS  
.SS  !
AlertButtonSS! ,
{SS- .
TextSS/ 3
=SS4 5
buttonSS6 <
.SS< =
ValueSS= B
.SSB C
textSSC G
,SSG H
ActionSSI O
=SSP Q
buttonSSR X
.SSX Y
ValueSSY ^
.SS^ _
actionSS_ e
}SSf g
)SSg h
;SSh i
m_AlertEntryListUU 
.UU 
AddUU  
(UU  !
entryUU! &
)UU& '
;UU' (
UpdateAlertBoxVV 
(VV 
	oldActiveVV $
?VV$ %
.VV% &
ButtonVV& ,
?VV, -
.VV- .
ActionVV. 4
)VV4 5
;VV5 6
}WW 	
public]] 
void]] 
DequeueAlert]]  
(]]  !
[]]! "
NotNull]]" )
]]]) *
string]]+ 1
id]]2 4
)]]4 5
{^^ 	
var__ 
oldAlert__ 
=__ 
m_AlertEntryList__ +
.__+ ,
Max__, /
;__/ 0
m_AlertEntryListaa 
.aa 
RemoveWhereaa (
(aa( )
eaa) *
=>aa+ -
eaa. /
.aa/ 0
Idaa0 2
==aa3 5
idaa6 8
)aa8 9
;aa9 :
UpdateAlertBoxcc 
(cc 
oldAlertcc #
.cc# $
Buttoncc$ *
?cc* +
.cc+ ,
Actioncc, 2
)cc2 3
;cc3 4
}dd 	
voidii 
UpdateAlertBoxii 
(ii 
Actionii " 
previousButtonActionii# 7
=ii8 9
nullii: >
)ii> ?
{jj 	
ifll 
(ll  
previousButtonActionll $
!=ll% '
nullll( ,
)ll, -
{mm 
m_Buttonnn 
.nn 
	clickablenn "
.nn" #
clickednn# *
-=nn+ - 
previousButtonActionnn. B
;nnB C
}oo 
ifqq 
(qq 
m_AlertEntryListqq  
.qq  !
Countqq! &
==qq' )
$numqq* +
)qq+ ,
{rr 
m_Buttonss 
.ss 
textss 
=ss 
stringss  &
.ss& '
Emptyss' ,
;ss, -
m_Buttontt 
.tt 
AddToClassListtt '
(tt' (
UiConstantstt( 3
.tt3 4
	ussHiddentt4 =
)tt= >
;tt> ?
AddToClassListuu 
(uu 
UiConstantsuu *
.uu* +
	ussHiddenuu+ 4
)uu4 5
;uu5 6
}vv 
elseww 
{xx 
varyy 
activeAlertyy 
=yy  !
m_AlertEntryListyy" 2
.yy2 3
Maxyy3 6
;yy6 7
m_Text{{ 
.{{ 
text{{ 
={{ 
activeAlert{{ )
.{{) *
Message{{* 1
;{{1 2
if}} 
(}} 
activeAlert}} 
.}}  
Button}}  &
?}}& '
.}}' (
Action}}( .
!=}}/ 1
null}}2 6
)}}6 7
{~~ 
m_Button 
. 
	clickable &
.& '
clicked' .
+=/ 1
activeAlert2 =
.= >
Button> D
.D E
ValueE J
.J K
ActionK Q
;Q R
m_Button
ÄÄ 
.
ÄÄ 
text
ÄÄ !
=
ÄÄ" #
activeAlert
ÄÄ$ /
.
ÄÄ/ 0
Button
ÄÄ0 6
.
ÄÄ6 7
Value
ÄÄ7 <
.
ÄÄ< =
Text
ÄÄ= A
;
ÄÄA B
m_Button
ÅÅ 
.
ÅÅ !
RemoveFromClassList
ÅÅ 0
(
ÅÅ0 1
UiConstants
ÅÅ1 <
.
ÅÅ< =
	ussHidden
ÅÅ= F
)
ÅÅF G
;
ÅÅG H
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
m_Button
ÖÖ 
.
ÖÖ 
text
ÖÖ !
=
ÖÖ" #
string
ÖÖ$ *
.
ÖÖ* +
Empty
ÖÖ+ 0
;
ÖÖ0 1
m_Button
ÜÜ 
.
ÜÜ 
AddToClassList
ÜÜ +
(
ÜÜ+ ,
UiConstants
ÜÜ, 7
.
ÜÜ7 8
	ussHidden
ÜÜ8 A
)
ÜÜA B
;
ÜÜB C
}
áá 
SetAlertLevel
ââ 
(
ââ 
activeAlert
ââ )
.
ââ) *
Level
ââ* /
)
ââ/ 0
;
ââ0 1!
RemoveFromClassList
ää #
(
ää# $
UiConstants
ää$ /
.
ää/ 0
	ussHidden
ää0 9
)
ää9 :
;
ää: ;
}
ãã 
}
åå 	
void
íí 
SetAlertLevel
íí 
(
íí 

AlertLevel
íí %
level
íí& +
)
íí+ ,
{
ìì 	
m_Icon
ïï 
.
ïï !
RemoveFromClassList
ïï &
(
ïï& '
k_UssIconInfo
ïï' 4
)
ïï4 5
;
ïï5 6
m_Icon
ññ 
.
ññ !
RemoveFromClassList
ññ &
(
ññ& '
k_UssIconWarning
ññ' 7
)
ññ7 8
;
ññ8 9
m_Icon
óó 
.
óó !
RemoveFromClassList
óó &
(
óó& '
k_UssIconAlert
óó' 5
)
óó5 6
;
óó6 7
switch
öö 
(
öö 
level
öö 
)
öö 
{
õõ 
case
úú 

AlertLevel
úú 
.
úú  
Info
úú  $
:
úú$ %
m_Icon
ùù 
.
ùù 
AddToClassList
ùù )
(
ùù) *
k_UssIconInfo
ùù* 7
)
ùù7 8
;
ùù8 9
break
ûû 
;
ûû 
case
üü 

AlertLevel
üü 
.
üü  
Warning
üü  '
:
üü' (
m_Icon
†† 
.
†† 
AddToClassList
†† )
(
††) *
k_UssIconWarning
††* :
)
††: ;
;
††; <
break
°° 
;
°° 
case
¢¢ 

AlertLevel
¢¢ 
.
¢¢  
Alert
¢¢  %
:
¢¢% &
m_Icon
££ 
.
££ 
AddToClassList
££ )
(
££) *
k_UssIconAlert
££* 8
)
££8 9
;
££9 :
break
§§ 
;
§§ 
default
•• 
:
•• 
throw
¶¶ 
new
¶¶ )
ArgumentOutOfRangeException
¶¶ 9
(
¶¶9 :
nameof
¶¶: @
(
¶¶@ A
level
¶¶A F
)
¶¶F G
,
¶¶G H
level
¶¶I N
,
¶¶N O
null
¶¶P T
)
¶¶T U
;
¶¶U V
}
ßß 
}
®® 	
struct
™™ 

AlertEntry
™™ 
:
™™ 
IComparable
™™ '
<
™™' (

AlertEntry
™™( 2
>
™™2 3
{
´´ 	
public
¨¨ 
readonly
¨¨ 
string
¨¨ "
Id
¨¨# %
;
¨¨% &
public
≠≠ 
readonly
≠≠ 

AlertLevel
≠≠ &
Level
≠≠' ,
;
≠≠, -
public
ÆÆ 
readonly
ÆÆ 
string
ÆÆ "
Message
ÆÆ# *
;
ÆÆ* +
public
ØØ 
AlertButton
ØØ 
?
ØØ 
Button
ØØ  &
;
ØØ& '
public
±± 

AlertEntry
±± 
(
±± 
string
±± $
id
±±% '
,
±±' (

AlertLevel
±±) 3
level
±±4 9
,
±±9 :
string
±±; A
message
±±B I
,
±±I J
AlertButton
±±K V
?
±±V W
button
±±X ^
)
±±^ _
{
≤≤ 
Id
≥≥ 
=
≥≥ 
id
≥≥ 
;
≥≥ 
Level
¥¥ 
=
¥¥ 
level
¥¥ 
;
¥¥ 
Message
µµ 
=
µµ 
message
µµ !
;
µµ! "
Button
∂∂ 
=
∂∂ 
button
∂∂ 
;
∂∂  
}
∑∑ 
public
ππ 
struct
ππ 
AlertButton
ππ %
{
∫∫ 
public
ªª 
string
ªª 
Text
ªª "
;
ªª" #
public
ºº 
Action
ºº 
Action
ºº $
;
ºº$ %
}
ΩΩ 
public
øø 
override
øø 
int
øø 
GetHashCode
øø  +
(
øø+ ,
)
øø, -
{
¿¿ 
return
¡¡ 
Id
¡¡ 
.
¡¡ 
GetHashCode
¡¡ %
(
¡¡% &
)
¡¡& '
;
¡¡' (
}
¬¬ 
public
ƒƒ 
override
ƒƒ 
bool
ƒƒ  
Equals
ƒƒ! '
(
ƒƒ' (
object
ƒƒ( .
obj
ƒƒ/ 2
)
ƒƒ2 3
{
≈≈ 
return
∆∆ 
obj
∆∆ 
is
∆∆ 

AlertEntry
∆∆ (
other
∆∆) .
&&
∆∆/ 1
Id
∆∆2 4
==
∆∆5 7
other
∆∆8 =
.
∆∆= >
Id
∆∆> @
;
∆∆@ A
}
«« 
public
…… 
int
…… 
	CompareTo
……  
(
……  !

AlertEntry
……! +
other
……, 1
)
……1 2
{
   
var
ÀÀ 
value
ÀÀ 
=
ÀÀ 
Level
ÀÀ !
.
ÀÀ! "
	CompareTo
ÀÀ" +
(
ÀÀ+ ,
other
ÀÀ, 1
.
ÀÀ1 2
Level
ÀÀ2 7
)
ÀÀ7 8
;
ÀÀ8 9
return
ÕÕ 
value
ÕÕ 
!=
ÕÕ 
$num
ÕÕ  !
?
ŒŒ 
value
ŒŒ 
:
œœ 
string
œœ 
.
œœ 
Compare
œœ $
(
œœ$ %
Id
œœ% '
,
œœ' (
other
œœ) .
.
œœ. /
Id
œœ/ 1
,
œœ1 2
StringComparison
œœ3 C
.
œœC D
Ordinal
œœD K
)
œœK L
;
œœL M
}
–– 
}
—— 	
[
”” 	
UsedImplicitly
””	 
]
”” 
public
‘‘ 
new
‘‘ 
class
‘‘ 
UxmlFactory
‘‘ $
:
‘‘% &
UxmlFactory
‘‘' 2
<
‘‘2 3
AlertBox
‘‘3 ;
>
‘‘; <
{
‘‘= >
}
‘‘? @
}
’’ 
}÷÷ Ã:
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\BetterTextField.cs
	namespace		 	
Unity		
 
.		 
Cloud		 
.		 
Collaborate		 !
.		! "

Components		" ,
{

 
internal 
class 
BetterTextField "
:# $
	TextField% .
{ 
public 
const 
string 
UssClassName (
=) *
$str+ D
;D E
public 
const 
string #
PlaceholderUssClassName 3
=4 5
UssClassName6 B
+C D
$strE T
;T U
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
BetterTextFieldU d
)d e
}e f
.ussf j
"j k
;k l
readonly 
Label 
m_PlaceholderLabel )
;) *
public 
Action 
< 
string 
> !
OnValueChangedHandler 3
;3 4
public!! 
BetterTextField!! 
(!! 
)!!  
{"" 	
AddToClassList## 
(## 
UssClassName## '
)##' (
;##( )
styleSheets%% 
.%% 
Add%% 
(%% 
AssetDatabase%% )
.%%) *
LoadAssetAtPath%%* 9
<%%9 :

StyleSheet%%: D
>%%D E
(%%E F
k_StylePath%%F Q
)%%Q R
)%%R S
;%%S T
m_PlaceholderLabel(( 
=((  
new((! $
Label((% *
{((+ ,
pickingMode((- 8
=((9 :
PickingMode((; F
.((F G
Ignore((G M
}((N O
;((O P
m_PlaceholderLabel)) 
.)) 
AddToClassList)) -
())- .#
PlaceholderUssClassName)). E
)))E F
;))F G
Add** 
(** 
m_PlaceholderLabel** "
)**" #
;**# $
RegisterCallback,, 
<,, 
FocusInEvent,, )
>,,) *
(,,* +
e,,+ ,
=>,,- /
HidePlaceholder,,0 ?
(,,? @
),,@ A
),,A B
;,,B C
RegisterCallback.. 
<.. 
FocusOutEvent.. *
>..* +
(..+ ,
e.., -
=>... 0
{// 
if00 
(00 
string00 
.00 
IsNullOrEmpty00 (
(00( )
text00) -
)00- .
)00. /
{11 
ShowPlaceholder22 #
(22# $
)22$ %
;22% &
}33 
}44 
)44 
;44 
this66 
.66 (
RegisterValueChangedCallback66 -
(66- .
e66. /
=>660 2!
OnValueChangedHandler663 H
?66H I
.66I J
Invoke66J P
(66P Q
e66Q R
.66R S
newValue66S [
)66[ \
)66\ ]
;66] ^
}77 	
void99 '
UpdatePlaceholderVisibility99 (
(99( )
)99) *
{:: 	
if;; 
(;; 
string;; 
.;; 
IsNullOrEmpty;; $
(;;$ %
value;;% *
);;* +
);;+ ,
{<< 
if>> 
(>> 
focusController>> #
?>># $
.>>$ %
focusedElement>>% 3
!=>>4 6
this>>7 ;
)>>; <
{?? 
ShowPlaceholder@@ #
(@@# $
)@@$ %
;@@% &
}AA 
}BB 
elseCC 
{DD 
HidePlaceholderEE 
(EE  
)EE  !
;EE! "
}FF 
}GG 	
voidII 
HidePlaceholderII 
(II 
)II 
{JJ 	
m_PlaceholderLabelKK 
?KK 
.KK  
AddToClassListKK  .
(KK. /
UiConstantsKK/ :
.KK: ;
	ussHiddenKK; D
)KKD E
;KKE F
}LL 	
voidNN 
ShowPlaceholderNN 
(NN 
)NN 
{OO 	
m_PlaceholderLabelPP 
?PP 
.PP  
RemoveFromClassListPP  3
(PP3 4
UiConstantsPP4 ?
.PP? @
	ussHiddenPP@ I
)PPI J
;PPJ K
}QQ 	
publicSS 
overrideSS 
stringSS 
valueSS $
{TT 	
getUU 
=>UU 
baseUU 
.UU 
valueUU 
;UU 
setVV 
{WW 
baseYY 
.YY 
valueYY 
=YY 
valueYY "
;YY" #'
UpdatePlaceholderVisibilityZZ +
(ZZ+ ,
)ZZ, -
;ZZ- .
}[[ 
}\\ 	
public^^ 
string^^ 
Placeholder^^ !
{__ 	
get`` 
=>`` 
m_PlaceholderLabel`` %
.``% &
text``& *
;``* +
setaa 
=>aa 
m_PlaceholderLabelaa %
.aa% &
textaa& *
=aa+ ,
valueaa- 2
;aa2 3
}bb 	
publicdd 
overridedd 
voiddd !
SetValueWithoutNotifydd 2
(dd2 3
stringdd3 9
newValuedd: B
)ddB C
{ee 	
baseff 
.ff !
SetValueWithoutNotifyff &
(ff& '
newValueff' /
)ff/ 0
;ff0 1'
UpdatePlaceholderVisibilitygg '
(gg' (
)gg( )
;gg) *
}hh 	
[jj 	
UsedImplicitlyjj	 
]jj 
publickk 
newkk 
classkk 
UxmlFactorykk $
:kk% &
UxmlFactorykk' 2
<kk2 3
BetterTextFieldkk3 B
,kkB C

UxmlTraitskkD N
>kkN O
{kkP Q
}kkR S
publicll 
newll 
classll 

UxmlTraitsll #
:ll$ %
	TextFieldll& /
.ll/ 0

UxmlTraitsll0 :
{mm 	
readonlynn *
UxmlStringAttributeDescriptionnn 3
m_Hintnn4 :
=nn; <
newnn= @*
UxmlStringAttributeDescriptionnnA _
{nn` a
namennb f
=nng h
$strnni v
}nnw x
;nnx y
publicpp 
overridepp 
voidpp  
Initpp! %
(pp% &
VisualElementpp& 3
vepp4 6
,pp6 7
IUxmlAttributespp8 G
bagppH K
,ppK L
CreationContextppM \
ccpp] _
)pp_ `
{qq 
baserr 
.rr 
Initrr 
(rr 
verr 
,rr 
bagrr !
,rr! "
ccrr# %
)rr% &
;rr& '
varss 
fieldss 
=ss 
(ss 
BetterTextFieldss ,
)ss, -
vess- /
;ss/ 0
fieldtt 
.tt 
Placeholdertt !
=tt" #
m_Hinttt$ *
.tt* +
GetValueFromBagtt+ :
(tt: ;
bagtt; >
,tt> ?
cctt@ B
)ttB C
;ttC D
}uu 
}vv 	
}xx 
}yy Ê
üD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\IChangeEntryData.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
	interface 
IChangeEntryData '
{ 
IChangeEntry 
Entry 
{ 
get  
;  !
}" #
bool 
Toggled 
{ 
get 
; 
} 
bool		 
All		 
{		 
get		 
;		 
}		 
bool

 
ToggleReadOnly

 
{

 
get

 !
;

! "
}

# $
bool 

Conflicted 
{ 
get 
; 
}  
} 
} ÎG
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Assets\StringAssets.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Assets" (
{ 
internal 
static 
class 
StringAssets &
{		 
public

 
const

 
string

 
searchResults

 )
=

* +
$str

, <
;

< =
public 
const 
string '
cannotPublishWhileSearching 7
=8 9
$str: n
;n o
public 
const 
string (
cannotPublishWhileConflicted 8
=9 :
$str; n
;n o
public 
const 
string %
cannotPublishWithoutFiles 5
=6 7
$str8 N
;N O
public 
const 
string ,
 cannotPublishWithIncomingChanges <
== >
$str? n
;n o
public 
const 
string  
changeListFullHeader 0
=1 2
$str3 D
;D E
public 
const 
string &
changeListConflictedHeader 6
=7 8
$str9 K
;K L
public 
const 
string $
changeListConflictedList 4
=5 6
$str7 C
;C D
public 
const 
string &
noticeNoRevisionsToDisplay 6
=7 8
$str9 S
;S T
public 
const 
string $
noticeNoChangesToDisplay 4
=5 6
$str7 O
;O P
public 
const 
string #
noticeNoResultsForQuery 3
=4 5
$str6 X
;X Y
public 
const 
string 
publishButton )
=* +
$str, 5
;5 6
public 
const 
string %
publishSummaryPlaceholder 5
=6 7
$str8 A
;A B
public 
const 
string %
menuDiscardToggledChanges 5
=6 7
$str8 Q
;Q R
public 
const 
string 
cancel "
=# $
$str% -
;- .
public 
const 
string 
discardChanges *
=+ ,
$str- >
;> ?
public 
const 
string '
confirmDiscardChangeMessage 7
=8 9
$str: |
;| }
public 
const 
string (
confirmDiscardChangesMessage 8
=9 :
$str	; Ä
;
Ä Å
public 
const 
string &
confirmDiscardChangesTitle 6
=7 8
$str9 W
;W X
public 
const 
string 
search "
=# $
$str% -
;- .
public 
const 
string %
syncRemoteRevisionMessage 5
=6 7
$str	8 ç
;
ç é
public 
const 
string &
syncRemoteRevisionsMessage 6
=7 8
$str	9 ì
;
ì î
public   
const   
string   $
syncLocalRevisionMessage   4
=  5 6
$str	  7 ∂
;
  ∂ ∑
public!! 
const!! 
string!! %
syncLocalRevisionsMessage!! 5
=!!6 7
$str	!!8 º
;
!!º Ω
public"" 
const"" 
string"" 
sync""  
=""! "
$str""# )
;"") *
public## 
const## 
string##  
confirmRollbackTitle## 0
=##1 2
$str##3 J
;##J K
public$$ 
const$$ 
string$$ "
confirmRollbackMessage$$ 2
=$$3 4
$str$$5 w
;$$w x
public%% 
const%% 
string%% 
rollback%% $
=%%% &
$str%%' 1
;%%1 2
public&& 
const&& 
string&& .
"confirmRollbackDiscardChangesTitle&& >
=&&? @
$str&&A l
;&&l m
public'' 
const'' 
string'' /
#confirmRollbackDiscardChangeMessage'' ?
=''@ A
$str	''B ∫
;
''∫ ª
public(( 
const(( 
string(( 0
$confirmRollbackDiscardChangesMessage(( @
=((A B
$str	((C æ
;
((æ ø
public)) 
const)) 
string)) 
rollbackAndDiscard)) .
=))/ 0
$str))1 G
;))G H
public** 
const** 
string** 
all** 
=**  !
$str**" '
;**' (
public++ 
const++ 
string++ -
!includedToPublishByAnotherGitTool++ =
=++> ?
$str++@ }
;++} ~
public,, 
const,, 
string,, 
viewDiff,, $
=,,% &
$str,,' 2
;,,2 3
public-- 
const-- 
string-- 
useMyChanges-- (
=--) *
$str--+ ;
;--; <
public.. 
const.. 
string.. 
useRemoteChanges.. ,
=..- .
$str../ C
;..C D
public// 
const// 
string// 
useMergeTool// (
=//) *
$str//+ ;
;//; <
public00 
const00 
string00 #
noMergeToolIsConfigured00 3
=004 5
$str006 |
;00| }
public11 
const11 
string11 

showChange11 &
=11' (
$str11) 3
;113 4
public22 
const22 
string22 
showChanges22 '
=22( )
$str22* 7
;227 8
public33 
const33 
string33 
history33 #
=33$ %
$str33& /
;33/ 0
public44 
const44 
string44 
changes44 #
=44$ %
$str44& /
;44/ 0
public55 
const55 
string55 
loadingRevisions55 ,
=55- .
$str55/ P
;55P Q
public66 
const66 
string66 

allHistory66 &
=66' (
$str66) 6
;666 7
public77 
const77 
string77 
restore77 #
=77$ %
$str77& /
;77/ 0
public88 
const88 
string88 
goBackTo88 $
=88% &
$str88' 3
;883 4
public99 
const99 
string99 
update99 "
=99# $
$str99% -
;99- .
public:: 
const:: 
string:: 
clear:: !
=::" #
$str::$ +
;::+ ,
public;; 
const;; 
string;; #
changeGroupHeaderFormat;; 3
=;;4 5
$str;;6 C
;;;C D
public<< 
const<< 
string<< 
conflictsDetected<< -
=<<. /
$str<<0 l
;<<l m
public== 
const== 
string== %
projectStatusTitleUnbound== 5
===6 7
$str	==8 ‚
;
==‚ „
public>> 
const>> 
string>> %
projectStatusTitleOffline>> 5
=>>6 7
$str>>8 Q
;>>Q R
public?? 
const?? 
string?? )
projectStatusTitleMaintenance?? 9
=??: ;
$str??< m
;??m n
public@@ 
const@@ 
string@@ '
projectStatusTitleLoggedOut@@ 7
=@@8 9
$str@@: Z
;@@Z [
publicAA 
constAA 
stringAA $
projectStatusTitleNoSeatAA 4
=AA5 6
$strAA7 j
;AAj k
publicBB 
constBB 
stringBB #
projectStatusTitleBoundBB 3
=BB4 5
$strBB6 w
;BBw x
publicCC 
constCC 
stringCC %
projectStatusTitleLoadingCC 5
=CC6 7
$strCC8 Q
;CCQ R
publicDD 
constDD 
stringDD $
projectStatusButtonBoundDD 4
=DD5 6
$strDD7 E
;DDE F
publicEE 
constEE 
stringEE &
projectStatusButtonUnboundEE 6
=EE7 8
$strEE9 I
;EEI J
publicFF 
constFF 
stringFF (
projectStatusButtonLoggedOutFF 8
=FF9 :
$strFF; G
;FFG H
publicGG 
constGG 
stringGG %
projectStatusButtonNoSeatGG 5
=GG6 7
$strGG8 D
;GGD E
}HH 
}II §
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\PageComponent.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
internal 
abstract 
class 
PageComponent )
:* +
VisualElement, 9
{ 
	protected

 
bool

 
Active

 
{

 
get

  #
;

# $
private

% ,
set

- 0
;

0 1
}

2 3
public 
void 
	SetActive 
( 
bool "
active# )
)) *
{ 	
Active 
= 
active 
; 
if 
( 
Active 
) 
{ 
	SetActive 
( 
) 
; 
} 
else 
{ 
SetInactive 
( 
) 
; 
} 
} 	
	protected   
abstract   
void   
	SetActive    )
(  ) *
)  * +
;  + ,
	protected%% 
abstract%% 
void%% 
SetInactive%%  +
(%%+ ,
)%%, -
;%%- .
}&& 
}'' ‰@
ùD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\HistoryEntryComponent.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{		 
internal

 
class

 !
HistoryEntryComponent

 (
:

) *
VisualElement

+ 8
{ 
public 
const 
string 
UssClassName (
=) *
$str+ D
;D E
public 
const 
string &
ProfileInitialUssClassName 6
=7 8
UssClassName9 E
+F G
$strH [
;[ \
public 
const 
string "
AuthorNameUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string !
TimestampUssClassName 1
=2 3
UssClassName4 @
+A B
$strC P
;P Q
public 
const 
string "
RevisionIdUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string %
CommitMessageUssClassName 5
=6 7
UssClassName8 D
+E F
$strG Y
;Y Z
public 
const 
string )
ChangedFilesCountUssClassName 9
=: ;
UssClassName< H
+I J
$strK b
;b c
public 
const 
string $
ChangedFilesUssClassName 4
=5 6
UssClassName7 C
+D E
$strF W
;W X
public 
const 
string &
RollbackButtonUssClassName 6
=7 8
UssClassName9 E
+F G
$strH W
;W X
public 
const 
string '
ShowFilesButtonUssClassName 7
=8 9
UssClassName: F
+G H
$strI Y
;Y Z
public 
const 
string #
BuildStatusUssClassName 3
=4 5
UssClassName6 B
+C D
$strE [
;[ \
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W!
HistoryEntryComponentW l
)l m
}m n
.uxmln s
"s t
;t u
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U!
HistoryEntryComponentU j
)j k
}k l
.ussl p
"p q
;q r
public 
readonly 
Label 
profileInitial ,
;, -
public 
readonly 
Label 

authorName (
;( )
public 
readonly 
Label 
	timestamp '
;' (
public 
readonly 
Label 

revisionId (
;( )
public 
readonly 
Label 
commitMessage +
;+ ,
public   
readonly   
Button   

gotoButton   )
;  ) *
public!! 
readonly!! 
Button!! 
showFilesButton!! .
;!!. /
public"" 
readonly"" 
Label"" 
cloudStatusText"" -
;""- .
public## 
readonly## 
Label## 
changedFilesCount## /
;##/ 0
public$$ 
readonly$$ 
AdapterListView$$ '
changedFiles$$( 4
;$$4 5
public&& !
HistoryEntryComponent&& $
(&&$ %
)&&% &
{'' 	
AddToClassList)) 
()) 
UssClassName)) '
)))' (
;))( )
AssetDatabase** 
.** 
LoadAssetAtPath** )
<**) *
VisualTreeAsset*** 9
>**9 :
(**: ;
k_LayoutPath**; G
)**G H
.**H I
	CloneTree**I R
(**R S
this**S W
)**W X
;**X Y
styleSheets++ 
.++ 
Add++ 
(++ 
AssetDatabase++ )
.++) *
LoadAssetAtPath++* 9
<++9 :

StyleSheet++: D
>++D E
(++E F
k_StylePath++F Q
)++Q R
)++R S
;++S T
profileInitial.. 
=.. 
this.. !
...! "
Q.." #
<..# $
Label..$ )
>..) *
(..* +
	className..+ 4
:..4 5&
ProfileInitialUssClassName..6 P
)..P Q
;..Q R

authorName// 
=// 
this// 
.// 
Q// 
<//  
Label//  %
>//% &
(//& '
	className//' 0
://0 1"
AuthorNameUssClassName//2 H
)//H I
;//I J
	timestamp00 
=00 
this00 
.00 
Q00 
<00 
Label00 $
>00$ %
(00% &
	className00& /
:00/ 0!
TimestampUssClassName001 F
)00F G
;00G H

revisionId11 
=11 
this11 
.11 
Q11 
<11  
Label11  %
>11% &
(11& '
	className11' 0
:110 1"
RevisionIdUssClassName112 H
)11H I
;11I J
commitMessage22 
=22 
this22  
.22  !
Q22! "
<22" #
Label22# (
>22( )
(22) *
	className22* 3
:223 4%
CommitMessageUssClassName225 N
)22N O
;22O P
changedFilesCount33 
=33 
this33  $
.33$ %
Q33% &
<33& '
Label33' ,
>33, -
(33- .
	className33. 7
:337 8)
ChangedFilesCountUssClassName339 V
)33V W
;33W X
changedFiles44 
=44 
this44 
.44  
Q44  !
<44! "
AdapterListView44" 1
>441 2
(442 3
	className443 <
:44< =$
ChangedFilesUssClassName44> V
)44V W
;44W X

gotoButton55 
=55 
this55 
.55 
Q55 
<55  
Button55  &
>55& '
(55' (
	className55( 1
:551 2&
RollbackButtonUssClassName553 M
)55M N
;55N O
showFilesButton66 
=66 
this66 "
.66" #
Q66# $
<66$ %
Button66% +
>66+ ,
(66, -
	className66- 6
:666 7'
ShowFilesButtonUssClassName668 S
)66S T
;66T U
cloudStatusText77 
=77 
this77 "
.77" #
Q77# $
<77$ %
Label77% *
>77* +
(77+ ,
	className77, 5
:775 6#
BuildStatusUssClassName777 N
)77N O
;77O P
changedFiles99 
.99 
SelectionType99 &
=99' (
SelectionType99) 6
.996 7
None997 ;
;99; <

gotoButton;; 
.;; 
text;; 
=;; 
StringAssets;; *
.;;* +
rollback;;+ 3
;;;3 4
}<< 	
[>> 	
UsedImplicitly>>	 
]>> 
public?? 
new?? 
class?? 
UxmlFactory?? $
:??% &
UxmlFactory??' 2
<??2 3!
HistoryEntryComponent??3 H
>??H I
{??J K
}??L M
}@@ 
}AA õL
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\Menus\FloatingDialogue.cs
	namespace		 	
Unity		
 
.		 
Cloud		 
.		 
Collaborate		 !
.		! "

Components		" ,
.		, -
Menus		- 2
{

 
internal 
class 
FloatingDialogue #
:$ %
VisualElement& 3
{ 
public 
const 
string 
UssClassName (
=) *
$str+ D
;D E
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
FloatingDialogueU e
)e f
}f g
.ussg k
"k l
;l m
static 
FloatingDialogue 

s_Instance  *
;* +
public"" 
static"" 
FloatingDialogue"" &
Instance""' /
=>""0 2

s_Instance""3 =
??""> @
(""A B

s_Instance""B L
=""M N
new""O R
FloatingDialogue""S c
(""c d
)""d e
)""e f
;""f g
FloatingDialogue'' 
('' 
)'' 
{(( 	
AddToClassList)) 
()) 
UssClassName)) '
)))' (
;))( )
AddToClassList** 
(** 
UiConstants** &
.**& '
	ussHidden**' 0
)**0 1
;**1 2
styleSheets,, 
.,, 
Add,, 
(,, 
AssetDatabase,, )
.,,) *
LoadAssetAtPath,,* 9
<,,9 :

StyleSheet,,: D
>,,D E
(,,E F
k_StylePath,,F Q
),,Q R
),,R S
;,,S T
}-- 	
public22 
override22 
bool22 
canGrabFocus22 )
=>22* ,
true22- 1
;221 2
void;; 
SetPosition;; 
(;; 
float;; 
x;;  
,;;  !
float;;" '
y;;( )
,;;) *
VisualElement;;+ 8
content;;9 @
,;;@ A
MenuUtilities;;B O
.;;O P
OpenDirection;;P ]
openDirection;;^ k
);;k l
{<< 	
switch>> 
(>> 
openDirection>> !
)>>! "
{?? 
case@@ 
MenuUtilities@@ "
.@@" #
OpenDirection@@# 0
.@@0 1
UpLeft@@1 7
:@@7 8
xAA 
-=AA 
contentAA  
.AA  !

worldBoundAA! +
.AA+ ,
widthAA, 1
;AA1 2
yBB 
-=BB 
contentBB  
.BB  !

worldBoundBB! +
.BB+ ,
heightBB, 2
;BB2 3
breakCC 
;CC 
caseDD 
MenuUtilitiesDD "
.DD" #
OpenDirectionDD# 0
.DD0 1
UpRightDD1 8
:DD8 9
yEE 
-=EE 
contentEE  
.EE  !

worldBoundEE! +
.EE+ ,
heightEE, 2
;EE2 3
breakFF 
;FF 
caseGG 
MenuUtilitiesGG "
.GG" #
OpenDirectionGG# 0
.GG0 1
DownLeftGG1 9
:GG9 :
xHH 
-=HH 
contentHH  
.HH  !

worldBoundHH! +
.HH+ ,
widthHH, 1
;HH1 2
breakII 
;II 
caseJJ 
MenuUtilitiesJJ "
.JJ" #
OpenDirectionJJ# 0
.JJ0 1
	DownRightJJ1 :
:JJ: ;
breakKK 
;KK 
defaultLL 
:LL 
throwMM 
newMM '
ArgumentOutOfRangeExceptionMM 9
(MM9 :
nameofMM: @
(MM@ A
openDirectionMMA N
)MMN O
,MMO P
openDirectionMMQ ^
,MM^ _
nullMM` d
)MMd e
;MMe f
}NN 
styleQQ 
.QQ 
topQQ 
=QQ 
yQQ 
-QQ 
parentQQ "
.QQ" #

worldBoundQQ# -
.QQ- .
yMinQQ. 2
;QQ2 3
styleRR 
.RR 
leftRR 
=RR 
xRR 
-RR 
parentRR #
.RR# $

worldBoundRR$ .
.RR. /
xMinRR/ 3
;RR3 4
styleSS 
.SS 
rightSS 
=SS 
newSS 
StyleLengthSS )
(SS) *
StyleKeywordSS* 6
.SS6 7
AutoSS7 ;
)SS; <
;SS< =
styleTT 
.TT 
bottomTT 
=TT 
newTT 
StyleLengthTT *
(TT* +
StyleKeywordTT+ 7
.TT7 8
AutoTT8 <
)TT< =
;TT= >
}UU 	
internal^^ 
void^^ 
Open^^ 
(^^ 
float^^  
x^^! "
,^^" #
float^^$ )
y^^* +
,^^+ ,
VisualElement^^- :
content^^; B
,^^B C
MenuUtilities^^D Q
.^^Q R
OpenDirection^^R _
openDirection^^` m
=^^n o
MenuUtilities^^p }
.^^} ~
OpenDirection	^^~ ã
.
^^ã å
DownLeft
^^å î
)
^^î ï
{__ 	
Clearaa 
(aa 
)aa 
;aa 
Addbb 
(bb 
contentbb 
)bb 
;bb 
RemoveFromClassListee 
(ee  
UiConstantsee  +
.ee+ ,
	ussHiddenee, 5
)ee5 6
;ee6 7
Focusff 
(ff 
)ff 
;ff 
BringToFrontgg 
(gg 
)gg 
;gg 
parentjj 
.jj 
RegisterCallbackjj #
<jj# $

WheelEventjj$ .
>jj. /
(jj/ 0
OnScrolljj0 8
,jj8 9
TrickleDownjj: E
.jjE F
TrickleDownjjF Q
)jjQ R
;jjR S
parentll 
.ll 
RegisterCallbackll #
<ll# $
MouseDownEventll$ 2
>ll2 3
(ll3 4
OnMouseDownll4 ?
,ll? @
TrickleDownllA L
.llL M
TrickleDownllM X
)llX Y
;llY Z
parentnn 
.nn 
RegisterCallbacknn #
<nn# $ 
GeometryChangedEventnn$ 8
>nn8 9
(nn9 :
OnGeometryChangenn: J
,nnJ K
TrickleDownnnL W
.nnW X
TrickleDownnnX c
)nnc d
;nnd e
contentpp 
.pp 
RegisterCallbackpp $
<pp$ % 
GeometryChangedEventpp% 9
>pp9 :
(pp: ;
SizeKnownCallbackpp; L
)ppL M
;ppM N
voidqq 
SizeKnownCallbackqq "
(qq" # 
GeometryChangedEventqq# 7
_qq8 9
)qq9 :
{rr 
contenttt 
.tt 
UnregisterCallbacktt *
<tt* + 
GeometryChangedEventtt+ ?
>tt? @
(tt@ A
SizeKnownCallbackttA R
)ttR S
;ttS T
SetPositionww 
(ww 
xww 
,ww 
yww  
,ww  !
contentww" )
,ww) *
openDirectionww+ 8
)ww8 9
;ww9 :
}xx 
}yy 	
internal~~ 
void~~ 
Close~~ 
(~~ 
)~~ 
{ 	
AddToClassList
ÄÄ 
(
ÄÄ 
UiConstants
ÄÄ &
.
ÄÄ& '
	ussHidden
ÄÄ' 0
)
ÄÄ0 1
;
ÄÄ1 2
Clear
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
parent
ÑÑ 
.
ÑÑ  
UnregisterCallback
ÑÑ %
<
ÑÑ% &

WheelEvent
ÑÑ& 0
>
ÑÑ0 1
(
ÑÑ1 2
OnScroll
ÑÑ2 :
,
ÑÑ: ;
TrickleDown
ÑÑ< G
.
ÑÑG H
TrickleDown
ÑÑH S
)
ÑÑS T
;
ÑÑT U
parent
ÖÖ 
.
ÖÖ  
UnregisterCallback
ÖÖ %
<
ÖÖ% &
MouseDownEvent
ÖÖ& 4
>
ÖÖ4 5
(
ÖÖ5 6
OnMouseDown
ÖÖ6 A
,
ÖÖA B
TrickleDown
ÖÖC N
.
ÖÖN O
TrickleDown
ÖÖO Z
)
ÖÖZ [
;
ÖÖ[ \
}
ÜÜ 	
void
åå 
OnScroll
åå 
(
åå 

WheelEvent
åå  
evt
åå! $
)
åå$ %
{
çç 	
if
èè 
(
èè 
!
èè 

worldBound
èè 
.
èè 
Contains
èè $
(
èè$ %
evt
èè% (
.
èè( )
mousePosition
èè) 6
)
èè6 7
)
èè7 8
{
êê 
Close
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 
}
ìì 	
void
ôô 
OnMouseDown
ôô 
(
ôô 
MouseDownEvent
ôô '
evt
ôô( +
)
ôô+ ,
{
öö 	
if
úú 
(
úú 
!
úú 

worldBound
úú 
.
úú 
Contains
úú $
(
úú$ %
evt
úú% (
.
úú( )
mousePosition
úú) 6
)
úú6 7
)
úú7 8
{
ùù 
Close
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 
}
†† 	
void
¶¶ 
OnGeometryChange
¶¶ 
(
¶¶ "
GeometryChangedEvent
¶¶ 2
evt
¶¶3 6
)
¶¶6 7
{
ßß 	
Close
©© 
(
©© 
)
©© 
;
©© 
}
™™ 	
}
´´ 
}¨¨ “U
¥D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\ListAdapters\ToggleableChangeListAdapter.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "
Views

" '
.

' (
Adapters

( 0
.

0 1
ListAdapters

1 =
{ 
internal 
class '
ToggleableChangeListAdapter .
:/ 0
BaseListAdapter1 @
<@ A'
ToggleableChangeListElementA \
>\ ]
{ 
[ 	
	CanBeNull	 
] 
IReadOnlyList 
< 
IChangeEntryData &
>& '
m_List( .
;. /
public 
IReadOnlyList 
< 
IChangeEntryData -
>- .
List/ 3
{ 	
set 
{ 
m_List 
= 
value 
;  
NotifyDataSetChanged $
($ %
)% &
;& '
} 
} 	
readonly 
IChangesPresenter "
m_Presenter# .
;. /
int #
m_LastBoundElementIndex #
;# $
public '
ToggleableChangeListAdapter *
(* +
IChangesPresenter+ <
	presenter= F
)F G
{ 	
m_Presenter 
= 
	presenter #
;# $
} 	
public!! 
override!! 
int!! 
Height!! "
{!!# $
get!!% (
;!!( )
}!!* +
=!!, -
UiConstants!!. 9
.!!9 :%
ChangesListViewItemHeight!!: S
;!!S T
	protected## 
override## '
ToggleableChangeListElement## 6
MakeItem##7 ?
(##? @
)##@ A
{$$ 	
return%% 
new%% '
ToggleableChangeListElement%% 2
(%%2 3
)%%3 4
;%%4 5
}&& 	
	protected(( 
override(( 
void(( 
BindItem((  (
(((( )'
ToggleableChangeListElement(() D
element((E L
,((L M
int((N Q
index((R W
)((W X
{)) 	
Assert** 
.** 
	IsNotNull** 
(** 
m_List** #
,**# $
$str**% M
)**M N
;**N O#
m_LastBoundElementIndex++ #
=++$ %
index++& +
;+++ ,
element,, 
.,, 
	ClearData,, 
(,, 
),, 
;,,  
var-- 
changesEntry-- 
=-- 
m_List-- %
[--% &
index--& +
]--+ ,
;--, -
var.. 
path.. 
=.. 
changesEntry.. #
...# $
All..$ '
?..( )
StringAssets..* 6
...6 7
all..7 :
:..; <
changesEntry..= I
...I J
Entry..J O
...O P
Path..P T
;..T U
element// 
.// 
UpdateFilePath// "
(//" #
path//# '
)//' (
;//( )
element22 
.22 
SetToggleCallback22 %
(22% &
c22& '
=>22( *
OnItemToggleChanged22+ >
(22> ?
index22? D
,22D E
c22F G
)22G H
)22H I
;22I J
element33 
.33 

diffButton33 
.33 
Clicked33 &
+=33' )
(33* +
)33+ ,
=>33- /
OnDiffClicked330 =
(33= >
index33> C
)33C D
;33D E
element44 
.44 
discardButton44 !
.44! "
RemoveFromClassList44" 5
(445 6
UiConstants446 A
.44A B
	ussHidden44B K
)44K L
;44L M
element55 
.55 
discardButton55 !
.55! "
Clicked55" )
+=55* ,
(55- .
)55. /
=>550 2
OnDiscardClicked553 C
(55C D
index55D I
)55I J
;55J K
if88 
(88 
changesEntry88 
.88 
ToggleReadOnly88 +
)88+ ,
{99 
element:: 
.:: 
toggle:: 
.:: !
SetValueWithoutNotify:: 4
(::4 5
true::5 9
)::9 :
;::: ;
element;; 
.;; 
toggle;; 
.;; 

SetEnabled;; )
(;;) *
false;;* /
);;/ 0
;;;0 1
element<< 
.<< 
toggle<< 
.<< 
parent<< %
.<<% &
tooltip<<& -
=<<. /
StringAssets<<0 <
.<<< =-
!includedToPublishByAnotherGitTool<<= ^
;<<^ _
}== 
else>> 
{?? 
element@@ 
.@@ 
toggle@@ 
.@@ !
SetValueWithoutNotify@@ 4
(@@4 5
changesEntry@@5 A
.@@A B
Toggled@@B I
)@@I J
;@@J K
elementAA 
.AA 
toggleAA 
.AA 

SetEnabledAA )
(AA) *
trueAA* .
)AA. /
;AA/ 0
elementBB 
.BB 
toggleBB 
.BB 
parentBB %
.BB% &
tooltipBB& -
=BB. /
stringBB0 6
.BB6 7
EmptyBB7 <
;BB< =
}CC 
ifFF 
(FF 
changesEntryFF 
.FF 
AllFF  
)FF  !
{GG 
elementHH 
.HH 
buttonsHH 
.HH  
AddToClassListHH  .
(HH. /
UiConstantsHH/ :
.HH: ;
	ussHiddenHH; D
)HHD E
;HHE F
elementII 
.II 

statusIconII "
.II" #
AddToClassListII# 1
(II1 2
UiConstantsII2 =
.II= >
	ussHiddenII> G
)IIG H
;IIH I
}JJ 
elseKK 
{LL 
elementMM 
.MM 
buttonsMM 
.MM  
RemoveFromClassListMM  3
(MM3 4
UiConstantsMM4 ?
.MM? @
	ussHiddenMM@ I
)MMI J
;MMJ K
elementOO 
.OO 

statusIconOO "
.OO" #
ClearClassListOO# 1
(OO1 2
)OO2 3
;OO3 4
elementPP 
.PP 

statusIconPP "
.PP" #
AddToClassListPP# 1
(PP1 2!
BaseChangeListElementPP2 G
.PPG H
IconUssClassNamePPH X
)PPX Y
;PPY Z
elementQQ 
.QQ 

statusIconQQ "
.QQ" #
AddToClassListQQ# 1
(QQ1 2'
ToggleableChangeListElementQQ2 M
.QQM N"
StatusIconUssClassNameQQN d
)QQd e
;QQe f
elementRR 
.RR 

statusIconRR "
.RR" #
AddToClassListRR# 1
(RR1 2
changesEntryRR2 >
.RR> ?
EntryRR? D
.RRD E
StatusToStringRRE S
(RRS T
)RRT U
)RRU V
;RRV W
}SS 
}TT 	
publicVV 
overrideVV 
intVV 
GetEntryCountVV )
(VV) *
)VV* +
{WW 	
returnXX 
m_ListXX 
?XX 
.XX 
CountXX  
??XX! #
$numXX$ %
;XX% &
}YY 	
void[[ 
OnItemToggleChanged[[  
([[  !
int[[! $
index[[% *
,[[* +
bool[[, 0
toggled[[1 8
)[[8 9
{\\ 	
Assert]] 
.]] 
	IsNotNull]] 
(]] 
m_List]] #
,]]# $
$str]]% M
)]]M N
;]]N O
var^^ 
changeEntry^^ 
=^^ 
m_List^^ $
[^^$ %
index^^% *
]^^* +
;^^+ ,
var__ 
refresh__ 
=__ 
m_Presenter__ %
.__% &
UpdateEntryToggle__& 7
(__7 8
changeEntry__8 C
.__C D
Entry__D I
.__I J
Path__J N
,__N O
toggled__P W
)__W X
;__X Y
if`` 
(`` 
refresh`` 
)``  
NotifyDataSetChanged`` -
(``- .
)``. /
;``/ 0
}aa 	
voidcc 
OnDiscardClickedcc 
(cc 
intcc !
indexcc" '
)cc' (
{dd 	
Assertee 
.ee 
	IsNotNullee 
(ee 
m_Listee #
,ee# $
$stree% M
)eeM N
;eeN O
varff 
changeEntryff 
=ff 
m_Listff $
[ff$ %
indexff% *
]ff* +
;ff+ ,
m_Presentergg 
.gg 
RequestDiscardgg &
(gg& '
changeEntrygg' 2
.gg2 3
Entrygg3 8
)gg8 9
;gg9 :
}hh 	
publicjj 
intjj $
GetLastBoundElementIndexjj +
(jj+ ,
)jj, -
{kk 	
returnll #
m_LastBoundElementIndexll *
;ll* +
}mm 	
publicoo 
intoo  
GetFirstToggledIndexoo '
(oo' (
)oo( )
{pp 	
Assertqq 
.qq 
	IsNotNullqq 
(qq 
m_Listqq #
,qq# $
$strqq% M
)qqM N
;qqN O
forrr 
(rr 
varrr 
irr 
=rr 
$numrr 
;rr 
irr 
<rr 
m_Listrr $
.rr$ %
Countrr% *
;rr* +
irr, -
++rr- /
)rr/ 0
{ss 
iftt 
(tt 
m_Listtt 
[tt 
itt 
]tt 
.tt 
Toggledtt $
)tt$ %
{uu 
returnvv 
ivv 
;vv 
}ww 
}xx 
returnzz 
-zz 
$numzz 
;zz 
}{{ 	
void}} 
OnDiffClicked}} 
(}} 
int}} 
index}} $
)}}$ %
{~~ 	
Assert 
. 
	IsNotNull 
( 
m_List #
,# $
$str% M
)M N
;N O
var
ÄÄ 
changeEntry
ÄÄ 
=
ÄÄ 
m_List
ÄÄ $
[
ÄÄ$ %
index
ÄÄ% *
]
ÄÄ* +
;
ÄÄ+ ,
m_Presenter
ÅÅ 
.
ÅÅ  
RequestDiffChanges
ÅÅ *
(
ÅÅ* +
changeEntry
ÅÅ+ 6
.
ÅÅ6 7
Entry
ÅÅ7 <
.
ÅÅ< =
Path
ÅÅ= A
)
ÅÅA B
;
ÅÅB C
}
ÇÇ 	
}
ÉÉ 
}ÑÑ  
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Common\StringArrayContainer.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Common" (
{) *
[ 
Serializable 
] 
internal 
class  
StringArrayContainer '
:( )
ArrayContainer* 8
<8 9
string9 ?
>? @
{ 
} 
} ∏ã
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\UserInterface\CollaborateWindow.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
UserInterface" /
{ 
internal 
class 
CollaborateWindow $
:% &
EditorWindow' 3
{ 
public 
const 
string 
UssClassName (
=) *
$str+ 8
;8 9
public 
const 
string !
ContainerUssClassName 1
=2 3
UssClassName4 @
+A B
$strC P
;P Q
public 
const 
string 
PackagePath '
=( )
$str* K
;K L
public 
const 
string 
UserInterfacePath -
=. /
PackagePath0 ;
+< =
$str> U
;U V
public 
const 
string 
ResourcePath (
=) *
PackagePath+ 6
+7 8
$str9 I
;I J
public 
const 
string 

LayoutPath &
=' (
ResourcePath) 5
+6 7
$str8 B
;B C
public 
const 
string 
	StylePath %
=& '
ResourcePath( 4
+5 6
$str7 @
;@ A
public 
const 
string 
IconPath $
=% &
ResourcePath' 3
+4 5
$str6 >
;> ?
public 
const 
string 
TestWindowPath *
=+ ,
UserInterfacePath- >
+? @
$strA O
;O P
const   
string   
k_LayoutPath   !
=  " #

LayoutPath  $ .
+  / 0
$str  1 D
;  D E
public!! 
const!! 
string!! 
MainStylePath!! )
=!!* +
	StylePath!!, 5
+!!6 7
$str!!8 E
;!!E F
MainPageView## 

m_MainView## 
;##  
ErrorPageView$$ 
m_ErrorPageView$$ %
;$$% &
StartPageView%% 
m_StartView%% !
;%%! "
VisualElement&& 
m_ViewContainer&& %
;&&% &
PageComponent(( 
m_ActivePage(( "
;((" #"
ISourceControlProvider** 

m_Provider** )
;**) *
List,, 
<,, 
IModel,, 
>,, 
m_Models,, 
;,, 
[.. 	
MenuItem..	 
(.. 
$str.. &
)..& '
]..' (
internal// 
static// 
void// 
Init// !
(//! "
)//" #
{00 	
Init11 
(11 
FocusTarget11 
.11 
None11 !
)11! "
;11" #
}22 	
internal44 
static44 
void44 
Init44 !
(44! "
FocusTarget44" -
focusTarget44. 9
)449 :
{55 	
var66 
openLocation66 
=66 !
CollabSettingsManager66 4
.664 5
Get665 8
(668 9
CollabSettings669 G
.66G H&
settingDefaultOpenLocation66H b
,66b c
fallback66d l
:66l m
CollabSettings66n |
.66| }
OpenLocation	66} â
.
66â ä
Docked
66ä ê
)
66ê ë
;
66ë í
CollaborateWindow88 
window88 $
;88$ %
if99 
(99 
openLocation99 
==99 
CollabSettings99  .
.99. /
OpenLocation99/ ;
.99; <
Docked99< B
)99B C
{:: 
var<< 
inspectorType<< !
=<<" #
Type<<$ (
.<<( )
GetType<<) 0
(<<0 1
$str<<1 ^
)<<^ _
;<<_ `
window== 
=== 
	GetWindow== "
<==" #
CollaborateWindow==# 4
>==4 5
(==5 6
inspectorType==6 C
)==C D
;==D E
}>> 
else?? 
{@@ 
windowAA 
=AA 
	GetWindowAA "
<AA" #
CollaborateWindowAA# 4
>AA4 5
(AA5 6
)AA6 7
;AA7 8
}BB 
windowEE 
.EE 
titleContentEE 
=EE  !
newEE" %

GUIContentEE& 0
(EE0 1
$strEE1 >
)EE> ?
;EE? @
windowFF 
.FF 
minSizeFF 
=FF 
newFF  
Vector2FF! (
(FF( )
$numFF) ,
,FF, -
$numFF. 1
)FF1 2
;FF2 3
windowII 
.II 
ShowII 
(II 
)II 
;II 
windowJJ 
.JJ 
FocusJJ 
(JJ 
)JJ 
;JJ 
ifKK 
(KK 
focusTargetKK 
!=KK 
FocusTargetKK *
.KK* +
NoneKK+ /
)KK/ 0
{LL 
windowMM 
.MM 
RequestFocusMM #
(MM# $
focusTargetMM$ /
)MM/ 0
;MM0 1
}NN 
}OO 	
voidQQ 
	OnDisableQQ 
(QQ 
)QQ 
{RR 	
EditorApplicationSS 
.SS  
playModeStateChangedSS 2
-=SS3 5"
OnPlayModeStateChangedSS6 L
;SSL M 
AssemblyReloadEventsTT  
.TT  ! 
beforeAssemblyReloadTT! 5
-=TT6 8"
OnBeforeAssemblyReloadTT9 O
;TTO P 
AssemblyReloadEventsUU  
.UU  !
afterAssemblyReloadUU! 4
-=UU5 7!
OnAfterAssemblyReloadUU8 M
;UUM N

m_ProviderVV 
.VV  
UpdatedProjectStatusVV +
-=VV, ."
OnUpdatedProjectStatusVV/ E
;VVE F
m_ModelsWW 
.WW 
ForEachWW 
(WW 
mWW 
=>WW !
mWW" #
.WW# $
OnStopWW$ *
(WW* +
)WW+ ,
)WW, -
;WW- .
}XX 	
voidZZ 
OnEnableZZ 
(ZZ 
)ZZ 
{[[ 	
EditorApplication\\ 
.\\  
playModeStateChanged\\ 2
+=\\3 5"
OnPlayModeStateChanged\\6 L
;\\L M 
AssemblyReloadEvents]]  
.]]  ! 
beforeAssemblyReload]]! 5
+=]]6 8"
OnBeforeAssemblyReload]]9 O
;]]O P 
AssemblyReloadEvents^^  
.^^  !
afterAssemblyReload^^! 4
+=^^5 7!
OnAfterAssemblyReload^^8 M
;^^M N
var`` 
root`` 
=`` 
rootVisualElement`` (
;``( )
rootaa 
.aa 
styleSheetsaa 
.aa 
Addaa  
(aa  !
AssetDatabaseaa! .
.aa. /
LoadAssetAtPathaa/ >
<aa> ?

StyleSheetaa? I
>aaI J
(aaJ K
MainStylePathaaK X
)aaX Y
)aaY Z
;aaZ [
rootcc 
.cc 
AddToClassListcc 
(cc  
EditorGUIUtilitycc  0
.cc0 1
	isProSkincc1 :
?dd 
UiConstantsdd 
.dd 
ussDarkdd %
:ee 
UiConstantsee 
.ee 
ussLightee &
)ee& '
;ee' (
AssetDatabasegg 
.gg 
LoadAssetAtPathgg )
<gg) *
VisualTreeAssetgg* 9
>gg9 :
(gg: ;
k_LayoutPathgg; G
)ggG H
.ggH I
	CloneTreeggI R
(ggR S
rootggS W
)ggW X
;ggX Y

m_Providerii 
=ii 
newii 
Collabii #
(ii# $
)ii$ %
;ii% &

m_Providerjj 
.jj  
UpdatedProjectStatusjj +
+=jj, ."
OnUpdatedProjectStatusjj/ E
;jjE F
m_ViewContainerll 
=ll 
rootll "
.ll" #
Qll# $
<ll$ %
VisualElementll% 2
>ll2 3
(ll3 4
	classNamell4 =
:ll= >!
ContainerUssClassNamell? T
)llT U
;llU V
varoo 
	mainModeloo 
=oo 
newoo 
	MainModeloo  )
(oo) *

m_Provideroo* 4
)oo4 5
;oo5 6
varpp 

startModelpp 
=pp 
newpp  

StartModelpp! +
(pp+ ,

m_Providerpp, 6
)pp6 7
;pp7 8
m_Modelsrr 
=rr 
newrr 
Listrr 
<rr  
IModelrr  &
>rr& '
{rr( )
	mainModelrr* 3
,rr3 4

startModelrr5 ?
}rr@ A
;rrA B
m_Modelsss 
.ss 
ForEachss 
(ss 
mss 
=>ss !
mss" #
.ss# $
OnStartss$ +
(ss+ ,
)ss, -
)ss- .
;ss. /

m_MainViewvv 
=vv 
newvv 
MainPageViewvv )
(vv) *
)vv* +
;vv+ ,

m_MainViewww 
.ww 
	Presenterww  
=ww! "
newww# &
MainPresenterww' 4
(ww4 5

m_MainViewww5 ?
,ww? @
	mainModelwwA J
)wwJ K
;wwK L
m_StartViewxx 
=xx 
newxx 
StartPageViewxx +
(xx+ ,
)xx, -
;xx- .
m_StartViewyy 
.yy 
	Presenteryy !
=yy" #
newyy$ '
StartPresenteryy( 6
(yy6 7
m_StartViewyy7 B
,yyB C

startModelyyD N
)yyN O
;yyO P
m_ErrorPageViewzz 
=zz 
newzz !
ErrorPageViewzz" /
(zz/ 0
)zz0 1
;zz1 2
root}} 
.}} 
Add}} 
(}} 
FloatingDialogue}} %
.}}% &
Instance}}& .
)}}. /
;}}/ 0"
OnUpdatedProjectStatus "
(" #

m_Provider# -
.- .
GetProjectStatus. >
(> ?
)? @
)@ A
;A B
}
ÄÄ 	
void
ÜÜ $
OnPlayModeStateChanged
ÜÜ #
(
ÜÜ# $!
PlayModeStateChange
ÜÜ$ 7
state
ÜÜ8 =
)
ÜÜ= >
{
áá 	
bool
àà 
enabled
àà 
;
àà 
switch
ââ 
(
ââ 
state
ââ 
)
ââ 
{
ää 
case
ãã !
PlayModeStateChange
ãã (
.
ãã( )
EnteredEditMode
ãã) 8
:
ãã8 9
case
åå !
PlayModeStateChange
åå (
.
åå( )
ExitingEditMode
åå) 8
:
åå8 9
enabled
çç 
=
çç 
true
çç "
;
çç" #
break
éé 
;
éé 
case
èè !
PlayModeStateChange
èè (
.
èè( )
EnteredPlayMode
èè) 8
:
èè8 9
case
êê !
PlayModeStateChange
êê (
.
êê( )
ExitingPlayMode
êê) 8
:
êê8 9
enabled
ëë 
=
ëë 
false
ëë #
;
ëë# $
break
íí 
;
íí 
default
ìì 
:
ìì 
throw
îî 
new
îî )
ArgumentOutOfRangeException
îî 9
(
îî9 :
nameof
îî: @
(
îî@ A
state
îîA F
)
îîF G
,
îîG H
state
îîI N
,
îîN O
null
îîP T
)
îîT U
;
îîU V
}
ïï 
m_ViewContainer
ññ 
.
ññ 

SetEnabled
ññ &
(
ññ& '
enabled
ññ' .
)
ññ. /
;
ññ/ 0
}
óó 	
void
úú #
OnAfterAssemblyReload
úú "
(
úú" #
)
úú# $
{
ùù 	
m_Models
ûû 
.
ûû 
ForEach
ûû 
(
ûû 
m
ûû 
=>
ûû !
m
ûû" #
.
ûû# $
RestoreState
ûû$ 0
(
ûû0 1
WindowCache
ûû1 <
.
ûû< =
Instance
ûû= E
)
ûûE F
)
ûûF G
;
ûûG H
}
üü 	
void
§§ $
OnBeforeAssemblyReload
§§ #
(
§§# $
)
§§$ %
{
•• 	
m_Models
¶¶ 
.
¶¶ 
ForEach
¶¶ 
(
¶¶ 
m
¶¶ 
=>
¶¶ !
m
¶¶" #
.
¶¶# $
	SaveState
¶¶$ -
(
¶¶- .
WindowCache
¶¶. 9
.
¶¶9 :
Instance
¶¶: B
)
¶¶B C
)
¶¶C D
;
¶¶D E
WindowCache
ßß 
.
ßß 
Instance
ßß  
.
ßß  !
	Serialize
ßß! *
(
ßß* +
)
ßß+ ,
;
ßß, -
}
®® 	
void
ÆÆ $
OnUpdatedProjectStatus
ÆÆ #
(
ÆÆ# $
ProjectStatus
ÆÆ$ 1
status
ÆÆ2 8
)
ÆÆ8 9
{
ØØ 	
if
∞∞ 
(
∞∞ 
status
∞∞ 
==
∞∞ 
ProjectStatus
∞∞ '
.
∞∞' (
Ready
∞∞( -
)
∞∞- .
{
±± 
UpdateDisplayMode
≤≤ !
(
≤≤! "
Display
≤≤" )
.
≤≤) *
Main
≤≤* .
)
≤≤. /
;
≤≤/ 0
}
≥≥ 
else
¥¥ 
{
µµ 
WindowCache
∂∂ 
.
∂∂ 
Instance
∂∂ $
.
∂∂$ %
Clear
∂∂% *
(
∂∂* +
)
∂∂+ ,
;
∂∂, -
m_Models
∑∑ 
.
∑∑ 
ForEach
∑∑  
(
∑∑  !
m
∑∑! "
=>
∑∑# %
m
∑∑& '
.
∑∑' (
RestoreState
∑∑( 4
(
∑∑4 5
WindowCache
∑∑5 @
.
∑∑@ A
Instance
∑∑A I
)
∑∑I J
)
∑∑J K
;
∑∑K L
UpdateDisplayMode
∏∏ !
(
∏∏! "
Display
∏∏" )
.
∏∏) *
Add
∏∏* -
)
∏∏- .
;
∏∏. /
}
ππ 
}
∫∫ 	
void
ºº 
RequestFocus
ºº 
(
ºº 
FocusTarget
ºº %
focusTarget
ºº& 1
)
ºº1 2
{
ΩΩ 	
if
ææ 
(
ææ 
m_ActivePage
ææ 
!=
ææ 

m_MainView
ææ  *
)
ææ* +
{
øø 
return
¡¡ 
;
¡¡ 
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
focusTarget
ƒƒ 
==
ƒƒ 
FocusTarget
ƒƒ *
.
ƒƒ* +
Changes
ƒƒ+ 2
)
ƒƒ2 3
{
≈≈ 

m_MainView
∆∆ 
.
∆∆ 
SetTab
∆∆ !
(
∆∆! "
MainPageView
∆∆" .
.
∆∆. /
ChangesTabIndex
∆∆/ >
)
∆∆> ?
;
∆∆? @
}
«« 
else
»» 
if
»» 
(
»» 
focusTarget
»»  
==
»»! #
FocusTarget
»»$ /
.
»»/ 0
History
»»0 7
)
»»7 8
{
…… 

m_MainView
   
.
   
SetTab
   !
(
  ! "
MainPageView
  " .
.
  . /
HistoryTabIndex
  / >
)
  > ?
;
  ? @
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
Debug
ŒŒ 
.
ŒŒ 
LogError
ŒŒ 
(
ŒŒ 
$str
ŒŒ R
)
ŒŒR S
;
ŒŒS T
}
œœ 
}
–– 	
void
÷÷ 
UpdateDisplayMode
÷÷ 
(
÷÷ 
Display
÷÷ &

newDisplay
÷÷' 1
)
÷÷1 2
{
◊◊ 	
m_ActivePage
ÿÿ 
?
ÿÿ 
.
ÿÿ !
RemoveFromHierarchy
ÿÿ -
(
ÿÿ- .
)
ÿÿ. /
;
ÿÿ/ 0
m_ActivePage
ŸŸ 
?
ŸŸ 
.
ŸŸ 
	SetActive
ŸŸ #
(
ŸŸ# $
false
ŸŸ$ )
)
ŸŸ) *
;
ŸŸ* +
m_ViewContainer
⁄⁄ 
.
⁄⁄ 
Clear
⁄⁄ !
(
⁄⁄! "
)
⁄⁄" #
;
⁄⁄# $
switch
›› 
(
›› 

newDisplay
›› 
)
›› 
{
ﬁﬁ 
case
ﬂﬂ 
Display
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ  
:
ﬂﬂ  !
m_ActivePage
‡‡  
=
‡‡! "
m_StartView
‡‡# .
;
‡‡. /
break
·· 
;
·· 
case
‚‚ 
Display
‚‚ 
.
‚‚ 
Error
‚‚ "
:
‚‚" #
m_ActivePage
„„  
=
„„! "
m_ErrorPageView
„„# 2
;
„„2 3
break
‰‰ 
;
‰‰ 
case
ÂÂ 
Display
ÂÂ 
.
ÂÂ 
Main
ÂÂ !
:
ÂÂ! "
m_ActivePage
ÊÊ  
=
ÊÊ! "

m_MainView
ÊÊ# -
;
ÊÊ- .
break
ÁÁ 
;
ÁÁ 
default
ËË 
:
ËË 
throw
ÈÈ 
new
ÈÈ )
ArgumentOutOfRangeException
ÈÈ 9
(
ÈÈ9 :
)
ÈÈ: ;
;
ÈÈ; <
}
ÍÍ 
m_ActivePage
ÏÏ 
.
ÏÏ 
	SetActive
ÏÏ "
(
ÏÏ" #
true
ÏÏ# '
)
ÏÏ' (
;
ÏÏ( )
m_ViewContainer
ÌÌ 
.
ÌÌ 
Add
ÌÌ 
(
ÌÌ  
m_ActivePage
ÌÌ  ,
)
ÌÌ, -
;
ÌÌ- .
}
ÓÓ 	
enum
 
Display
 
{
ÒÒ 	
Add
ÚÚ 
,
ÚÚ 
Error
ÛÛ 
,
ÛÛ 
Main
ÙÙ 
}
ıı 	
public
˜˜ 
enum
˜˜ 
FocusTarget
˜˜ 
{
¯¯ 	
None
˘˘ 
,
˘˘ 
History
˙˙ 
,
˙˙ 
Changes
˚˚ 
}
¸¸ 	
}
˝˝ 
}˛˛ †z
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\HistoryPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
class 
HistoryPresenter #
:$ %
IHistoryPresenter& 7
{ 
internal 
const 
int 
pageSize #
=$ %
$num& (
;( )
internal 
const 
string "
historyEntrySelectedId 4
=5 6
$str7 O
;O P
int 

m_MaxPages 
; 
bool 
m_IsStarted 
; 
[ 	
NotNull	 
] 
readonly 
IHistoryView 
m_View $
;$ %
[ 	
NotNull	 
] 
readonly 
IHistoryModel 
m_HistoryModel -
;- .
[ 	
NotNull	 
] 
readonly 

IMainModel 
m_MainModel '
;' (
public 
HistoryPresenter 
(  
[  !
NotNull! (
]( )
IHistoryView* 6
view7 ;
,; <
[= >
NotNull> E
]E F
IHistoryModelG T
historyModelU a
,a b
[c d
NotNulld k
]k l

IMainModelm w
	mainModel	x Å
)
Å Ç
{ 	
m_View 
= 
view 
; 
m_HistoryModel 
= 
historyModel )
;) *
m_MainModel   
=   
	mainModel   #
;  # $
}!! 	
public$$ 
void$$ 
Start$$ 
($$ 
)$$ 
{%% 	
Assert&& 
.&& 
IsFalse&& 
(&& 
m_IsStarted&& &
,&&& '
$str&&( Q
)&&Q R
;&&R S
m_IsStarted'' 
='' 
true'' 
;'' 
m_HistoryModel)) 
.)) 
HistoryListUpdated)) -
+=)). 0 
OnHistoryListUpdated))1 E
;))E F
m_HistoryModel** 
.** $
SelectedRevisionReceived** 3
+=**4 6&
OnSelectedRevisionReceived**7 Q
;**Q R
m_HistoryModel++ 
.++ 
EntryCountUpdated++ ,
+=++- /
OnEntryCountUpdated++0 C
;++C D
m_HistoryModel,, 
.,, 
HistoryListReceived,, .
+=,,/ 1!
OnHistoryListReceived,,2 G
;,,G H
m_HistoryModel-- 
.-- 
BusyStatusUpdated-- ,
+=--- /
OnBusyStatusUpdated--0 C
;--C D
m_HistoryModel.. 
... 
StateChanged.. '
+=..( *
OnStateChanged..+ 9
;..9 :
PopulateInitialData00 
(00  
)00  !
;00! "
}11 	
public44 
void44 
Stop44 
(44 
)44 
{55 	
Assert66 
.66 
IsTrue66 
(66 
m_IsStarted66 %
,66% &
$str66' P
)66P Q
;66Q R
m_IsStarted77 
=77 
false77 
;77  
m_HistoryModel99 
.99 
HistoryListUpdated99 -
-=99. 0 
OnHistoryListUpdated991 E
;99E F
m_HistoryModel:: 
.:: $
SelectedRevisionReceived:: 3
-=::4 6&
OnSelectedRevisionReceived::7 Q
;::Q R
m_HistoryModel;; 
.;; 
EntryCountUpdated;; ,
-=;;- /
OnEntryCountUpdated;;0 C
;;;C D
m_HistoryModel<< 
.<< 
HistoryListReceived<< .
-=<</ 1!
OnHistoryListReceived<<2 G
;<<G H
m_HistoryModel== 
.== 
BusyStatusUpdated== ,
-===- /
OnBusyStatusUpdated==0 C
;==C D
m_HistoryModel>> 
.>> 
StateChanged>> '
-=>>( *
OnStateChanged>>+ 9
;>>9 :
m_MainModel@@ 
.@@ $
UnregisterBackNavigation@@ 0
(@@0 1"
historyEntrySelectedId@@1 G
)@@G H
;@@H I
}AA 	
voidFF 
OnStateChangedFF 
(FF 
)FF 
{GG 	
PopulateInitialDataHH 
(HH  
)HH  !
;HH! "
}II 	
voidNN 
PopulateInitialDataNN  
(NN  !
)NN! "
{OO 	
m_ViewPP 
.PP 
SetBusyStatusPP  
(PP  !
m_HistoryModelPP! /
.PP/ 0
BusyPP0 4
)PP4 5
;PP5 6
ifRR 
(RR 
!RR 
stringRR 
.RR 
IsNullOrEmptyRR %
(RR% &
m_HistoryModelRR& 4
.RR4 5
SelectedRevisionIdRR5 G
)RRG H
)RRH I
{SS 
m_HistoryModelTT 
.TT !
RequestSingleRevisionTT 4
(TT4 5
m_HistoryModelTT5 C
.TTC D
SelectedRevisionIdTTD V
)TTV W
;TTW X
}UU 
elseVV 
ifVV 
(VV 
!VV 
stringVV 
.VV 
IsNullOrEmptyVV *
(VV* +
m_HistoryModelVV+ 9
.VV9 :
SavedRevisionIdVV: I
)VVI J
)VVJ K
{WW 
m_HistoryModelXX 
.XX !
RequestSingleRevisionXX 4
(XX4 5
m_HistoryModelXX5 C
.XXC D
SavedRevisionIdXXD S
)XXS T
;XXT U
}YY 
elseZZ 
{[[ 
m_HistoryModel]] 
.]] "
RequestPageOfRevisions]] 5
(]]5 6
pageSize]]6 >
)]]> ?
;]]? @
}^^ 
m_HistoryModel__ 
.__ 
RequestEntryNumber__ -
(__- .
)__. /
;__/ 0
}`` 	
voidff 
OnBusyStatusUpdatedff  
(ff  !
boolff! %
busyff& *
)ff* +
{gg 	
m_Viewhh 
.hh 
SetBusyStatushh  
(hh  !
busyhh! %
)hh% &
;hh& '
}ii 	
voidoo !
OnHistoryListReceivedoo "
(oo" #
IReadOnlyListoo# 0
<oo0 1
IHistoryEntryoo1 >
>oo> ?
listoo@ D
)ooD E
{pp 	
ifqq 
(qq 
listqq 
==qq 
nullqq 
)qq 
{rr 
m_HistoryModeltt 
.tt 

PageNumbertt )
=tt* +
$numtt, -
;tt- .
m_HistoryModeluu 
.uu "
RequestPageOfRevisionsuu 5
(uu5 6
pageSizeuu6 >
)uu> ?
;uu? @
Debugvv 
.vv 
LogErrorvv 
(vv 
$strvv =
)vv= >
;vv> ?
returnww 
;ww 
}xx 
m_MainModelzz 
.zz $
UnregisterBackNavigationzz 0
(zz0 1"
historyEntrySelectedIdzz1 G
)zzG H
;zzH I
m_View{{ 
.{{ 
SetHistoryList{{ !
({{! "
list{{" &
){{& '
;{{' (
}|| 	
void
ÇÇ !
OnEntryCountUpdated
ÇÇ  
(
ÇÇ  !
int
ÇÇ! $
?
ÇÇ$ %
count
ÇÇ& +
)
ÇÇ+ ,
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
count
ÑÑ 
==
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÖÖ 
Debug
ÜÜ 
.
ÜÜ 
LogError
ÜÜ 
(
ÜÜ 
$str
ÜÜ D
)
ÜÜD E
;
ÜÜE F
return
áá 
;
áá 
}
àà 

m_MaxPages
ää 
=
ää 
(
ää 
count
ää 
.
ää  
Value
ää  %
-
ää& '
$num
ää( )
)
ää) *
/
ää+ ,
pageSize
ää- 5
;
ää5 6
m_View
ãã 
.
ãã 
SetPage
ãã 
(
ãã 
m_HistoryModel
ãã )
.
ãã) *

PageNumber
ãã* 4
,
ãã4 5

m_MaxPages
ãã6 @
)
ãã@ A
;
ããA B
}
åå 	
void
íí (
OnSelectedRevisionReceived
íí '
(
íí' (
IHistoryEntry
íí( 5
entry
íí6 ;
)
íí; <
{
ìì 	
if
îî 
(
îî 
entry
îî 
==
îî 
null
îî 
)
îî 
{
ïï 
m_HistoryModel
óó 
.
óó $
RequestPageOfRevisions
óó 5
(
óó5 6
pageSize
óó6 >
)
óó> ?
;
óó? @
Debug
òò 
.
òò 
LogError
òò 
(
òò 
$str
òò B
)
òòB C
;
òòC D
return
ôô 
;
ôô 
}
öö 
m_MainModel
úú 
.
úú $
RegisterBackNavigation
úú .
(
úú. /$
historyEntrySelectedId
úú/ E
,
úúE F
StringAssets
úúG S
.
úúS T

allHistory
úúT ^
,
úú^ _
OnBackEvent
úú` k
)
úúk l
;
úúl m
m_View
ùù 
.
ùù 
SetSelection
ùù 
(
ùù  
entry
ùù  %
)
ùù% &
;
ùù& '
}
ûû 	
void
££ "
OnHistoryListUpdated
££ !
(
££! "
)
££" #
{
§§ 	
m_HistoryModel
¶¶ 
.
¶¶  
RequestEntryNumber
¶¶ -
(
¶¶- .
)
¶¶. /
;
¶¶/ 0
if
®® 
(
®® 
m_HistoryModel
®® 
.
®®  
IsRevisionSelected
®® 1
)
®®1 2
{
©© 
Assert
™™ 
.
™™ 
AreNotEqual
™™ "
(
™™" #
string
™™# )
.
™™) *
Empty
™™* /
,
™™/ 0
m_HistoryModel
™™1 ?
.
™™? @ 
SelectedRevisionId
™™@ R
,
™™R S
$str™™T Ç
)™™Ç É
;™™É Ñ
m_HistoryModel
´´ 
.
´´ #
RequestSingleRevision
´´ 4
(
´´4 5
m_HistoryModel
´´5 C
.
´´C D 
SelectedRevisionId
´´D V
)
´´V W
;
´´W X
}
¨¨ 
else
≠≠ 
{
ÆÆ 
m_HistoryModel
ØØ 
.
ØØ $
RequestPageOfRevisions
ØØ 5
(
ØØ5 6
pageSize
ØØ6 >
)
ØØ> ?
;
ØØ? @
}
∞∞ 
}
±± 	
void
∂∂ 
OnBackEvent
∂∂ 
(
∂∂ 
)
∂∂ 
{
∑∑ 	
m_HistoryModel
ππ 
.
ππ $
RequestPageOfRevisions
ππ 1
(
ππ1 2
pageSize
ππ2 :
)
ππ: ;
;
ππ; <
}
∫∫ 	
public
ΩΩ 
void
ΩΩ 
PrevPage
ΩΩ 
(
ΩΩ 
)
ΩΩ 
{
ææ 	
m_HistoryModel
øø 
.
øø 

PageNumber
øø %
=
øø& '
Math
øø( ,
.
øø, -
Max
øø- 0
(
øø0 1
m_HistoryModel
øø1 ?
.
øø? @

PageNumber
øø@ J
-
øøK L
$num
øøM N
,
øøN O
$num
øøP Q
)
øøQ R
;
øøR S
m_HistoryModel
¿¿ 
.
¿¿ $
RequestPageOfRevisions
¿¿ 1
(
¿¿1 2
pageSize
¿¿2 :
)
¿¿: ;
;
¿¿; <
m_View
¡¡ 
.
¡¡ 
SetPage
¡¡ 
(
¡¡ 
m_HistoryModel
¡¡ )
.
¡¡) *

PageNumber
¡¡* 4
,
¡¡4 5

m_MaxPages
¡¡6 @
)
¡¡@ A
;
¡¡A B
}
¬¬ 	
public
≈≈ 
void
≈≈ 
NextPage
≈≈ 
(
≈≈ 
)
≈≈ 
{
∆∆ 	
m_HistoryModel
«« 
.
«« 

PageNumber
«« %
=
««& '
Math
««( ,
.
««, -
Min
««- 0
(
««0 1
m_HistoryModel
««1 ?
.
««? @

PageNumber
««@ J
+
««K L
$num
««M N
,
««N O

m_MaxPages
««P Z
)
««Z [
;
««[ \
m_HistoryModel
»» 
.
»» $
RequestPageOfRevisions
»» 1
(
»»1 2
pageSize
»»2 :
)
»»: ;
;
»»; <
m_View
…… 
.
…… 
SetPage
…… 
(
…… 
m_HistoryModel
…… )
.
……) *

PageNumber
……* 4
,
……4 5

m_MaxPages
……6 @
)
……@ A
;
……A B
}
   	
public
ÕÕ 
string
ÕÕ  
SelectedRevisionId
ÕÕ (
{
ŒŒ 	
set
œœ 
{
–– 
if
—— 
(
—— 
m_HistoryModel
—— "
.
——" # 
SelectedRevisionId
——# 5
==
——6 8
value
——9 >
)
——> ?
return
——@ F
;
——F G
m_HistoryModel
““ 
.
““ #
RequestSingleRevision
““ 4
(
““4 5
value
““5 :
)
““: ;
;
““; <
}
”” 
}
‘‘ 	
public
◊◊ 
void
◊◊ 
RequestGoto
◊◊ 
(
◊◊  
string
◊◊  &

revisionId
◊◊' 1
,
◊◊1 2 
HistoryEntryStatus
◊◊3 E
status
◊◊F L
)
◊◊L M
{
ÿÿ 	
switch
ŸŸ 
(
ŸŸ 
status
ŸŸ 
)
ŸŸ 
{
ŸŸ 
case
⁄⁄  
HistoryEntryStatus
⁄⁄ '
.
⁄⁄' (
Ahead
⁄⁄( -
:
⁄⁄- .
m_HistoryModel
€€ "
.
€€" #
RequestUpdateTo
€€# 2
(
€€2 3

revisionId
€€3 =
)
€€= >
;
€€> ?
break
‹‹ 
;
‹‹ 
case
››  
HistoryEntryStatus
›› '
.
››' (
Current
››( /
:
››/ 0
m_HistoryModel
ﬁﬁ "
.
ﬁﬁ" #
RequestRestoreTo
ﬁﬁ# 3
(
ﬁﬁ3 4

revisionId
ﬁﬁ4 >
)
ﬁﬁ> ?
;
ﬁﬁ? @
break
ﬂﬂ 
;
ﬂﬂ 
case
‡‡  
HistoryEntryStatus
‡‡ '
.
‡‡' (
Behind
‡‡( .
:
‡‡. /
m_HistoryModel
·· "
.
··" #
RequestGoBackTo
··# 2
(
··2 3

revisionId
··3 =
)
··= >
;
··> ?
break
‚‚ 
;
‚‚ 
default
„„ 
:
„„ 
throw
‰‰ 
new
‰‰ )
ArgumentOutOfRangeException
‰‰ 9
(
‰‰9 :
nameof
‰‰: @
(
‰‰@ A
status
‰‰A G
)
‰‰G H
,
‰‰H I
status
‰‰J P
,
‰‰P Q
null
‰‰R V
)
‰‰V W
;
‰‰W X
}
ÂÂ 
}
ÊÊ 	
public
ÈÈ 
bool
ÈÈ 
SupportsRevert
ÈÈ "
=>
ÈÈ# %
m_HistoryModel
ÈÈ& 4
.
ÈÈ4 5
SupportsRevert
ÈÈ5 C
;
ÈÈC D
public
ÏÏ 
void
ÏÏ 
RequestRevert
ÏÏ !
(
ÏÏ! "
string
ÏÏ" (

revisionId
ÏÏ) 3
,
ÏÏ3 4
IReadOnlyList
ÏÏ5 B
<
ÏÏB C
string
ÏÏC I
>
ÏÏI J
files
ÏÏK P
)
ÏÏP Q
{
ÌÌ 	
m_HistoryModel
ÓÓ 
.
ÓÓ 
RequestRevert
ÓÓ (
(
ÓÓ( )

revisionId
ÓÓ) 3
,
ÓÓ3 4
files
ÓÓ5 :
)
ÓÓ: ;
;
ÓÓ; <
}
ÔÔ 	
}
 
}ÒÒ ∞´
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Providers\Collab.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )
	Providers) 2
{ 
internal 
class 
Collab 
: "
ISourceControlProvider 2
{ 
const 
string 
k_KServiceUrl "
=# $
$str% B
;B C
readonly 
RevisionsService !
m_RevisionsService" 4
;4 5
public"" 
event"" 
Action"" 
UpdatedChangeList"" -
;""- .
public%% 
event%% 
Action%% 
<%% 
IReadOnlyList%% )
<%%) *
string%%* 0
>%%0 1
>%%1 2%
UpdatedSelectedChangeList%%3 L
;%%L M
public(( 
event(( 
Action(( 
<(( 
bool((  
>((  ! 
UpdatedConflictState((" 6
;((6 7
public++ 
event++ 
Action++ 
<++ 
bool++  
>++  !.
"UpdatedRemoteRevisionsAvailability++" D
;++D E
public.. 
event.. 
Action.. 
<.. 
ProjectStatus.. )
>..) * 
UpdatedProjectStatus..+ ?
;..? @
public11 
event11 
Action11 
<11 
bool11  
>11  !"
UpdatedOperationStatus11" 8
;118 9
public44 
event44 
Action44 
<44 
IProgressInfo44 )
>44) *$
UpdatedOperationProgress44+ C
;44C D
public77 
event77 
Action77 
<77 

IErrorInfo77 &
>77& '
ErrorOccurred77( 5
;775 6
public:: 
event:: 
Action:: 
ErrorCleared:: (
;::( )
readonly<< 
List<< 
<<< 
IChangeEntry<< "
><<" #
	m_Changes<<$ -
;<<- .
bool== !
m_ConflictCachedState== "
;==" #
bool>> +
m_RemoteRevisionsAvailableState>> ,
;>>, -
readonlyAA 
QueueAA 
<AA 
(AA 
intAA 
offsetAA "
,AA" #
intAA$ '
sizeAA( ,
,AA, -
ActionAA. 4
<AA4 5
intAA5 8
?AA8 9
,AA9 :
IReadOnlyListAA; H
<AAH I
IHistoryEntryAAI V
>AAV W
>AAW X
)AAX Y
>AAY Z
m_HistoryRequestsAA[ l
;AAl m
[BB 	
NotNullBB	 
]BB 
IReadOnlyListCC 
<CC 
IHistoryEntryCC #
>CC# $
m_HistoryEntriesCC% 5
;CC5 6
(DD 	
intDD	 
offsetDD 
,DD 
intDD 
sizeDD 
)DD 
?DD !
m_HistoryEntriesCacheDD  5
;DD5 6
[EE 	
	CanBeNullEE	 
]EE 
IHistoryEntryFF 
m_HistoryEntryCacheFF )
;FF) *
intGG 
?GG $
m_HistoryEntryCountCacheGG %
;GG% &
stringHH 

m_TipCacheHH 
;HH 
[JJ 	
	CanBeNullJJ	 
]JJ 

IErrorInfoKK 
m_ErrorInfoKK 
;KK 
[LL 	
	CanBeNullLL	 
]LL 
IProgressInfoMM 
m_ProgressInfoMM $
;MM$ %
ProjectStatusOO 
m_ProjectStatusOO %
;OO% &
publicQQ 
CollabQQ 
(QQ 
)QQ 
{RR 	
m_RevisionsServiceSS 
=SS  
newSS! $
RevisionsServiceSS% 5
(SS5 6
instanceSS6 >
,SS> ?
UnityConnectSS@ L
.SSL M
instanceSSM U
)SSU V
;SSV W
	m_ChangesTT 
=TT 
newTT 
ListTT  
<TT  !
IChangeEntryTT! -
>TT- .
(TT. /
)TT/ 0
;TT0 1
m_HistoryEntriesUU 
=UU 
newUU "
ListUU# '
<UU' (
IHistoryEntryUU( 5
>UU5 6
(UU6 7
)UU7 8
;UU8 9
m_HistoryRequestsVV 
=VV 
newVV  #
QueueVV$ )
<VV) *
(VV* +
intVV+ .
offsetVV/ 5
,VV5 6
intVV7 :
sizeVV; ?
,VV? @
ActionVVA G
<VVG H
intVVH K
?VVK L
,VVL M
IReadOnlyListVVN [
<VV[ \
IHistoryEntryVV\ i
>VVi j
>VVj k
)VVk l
>VVl m
(VVm n
)VVn o
;VVo p
varYY 
infoYY 
=YY 
instanceYY 
.YY  

collabInfoYY  *
;YY* +!
m_ConflictCachedStateZZ !
=ZZ" #
infoZZ$ (
.ZZ( )
conflictZZ) 1
;ZZ1 2+
m_RemoteRevisionsAvailableState[[ +
=[[, -
info[[. 2
.[[2 3
update[[3 9
;[[9 :

m_TipCache\\ 
=\\ 
info\\ 
.\\ 
tip\\ !
;\\! "
m_ProgressInfo]] 
=]] 
info]] !
.]]! "

inProgress]]" ,
?]]- ."
ProgressInfoFromCollab]]/ E
(]]E F
instance]]F N
.]]N O
GetJobProgress]]O ]
(]]] ^
$num]]^ _
)]]_ `
)]]` a
:]]b c
null]]d h
;]]h i
m_ErrorInfo^^ 
=^^ 
instance^^ "
.^^" #
GetError^^# +
(^^+ ,
UnityConnect^^, 8
.^^8 9
UnityErrorFilter^^9 I
.^^I J
	ByContext^^J S
|^^T U
UnityConnect^^V b
.^^b c
UnityErrorFilter^^c s
.^^s t
ByChild^^t {
,^^{ |
out	^^} Ä
var
^^Å Ñ
errInfo
^^Ö å
)
^^å ç
?__ 
ErrorInfoFromUnity__ $
(__$ %
errInfo__% ,
)__, -
:`` 
null`` 
;`` 
m_ProjectStatusaa 
=aa 
GetNewProjectStatusaa 1
(aa1 2
infoaa2 6
,aa6 7
UnityConnectaa8 D
.aaD E
instanceaaE M
.aaM N
connectInfoaaN Y
,aaY Z
UnityConnectaa[ g
.aag h
instanceaah p
.aap q
projectInfoaaq |
)aa| }
;aa} ~
SetupEventscc 
(cc 
)cc 
;cc 
}dd 	
voidii 
SetupEventsii 
(ii 
)ii 
{jj 	
instancell 
.ll 
ChangeItemsChangedll '
+=ll( * 
OnChangeItemsChangedll+ ?
;ll? @
instancemm 
.mm &
SelectedChangeItemsChangedmm /
+=mm0 2(
OnSelectedChangeItemsChangedmm3 O
;mmO P
instancenn 
.nn 
RevisionUpdated_V2nn '
+=nn( *
OnRevisionUpdatednn+ <
;nn< =
instancepp 
.pp 
CollabInfoChangedpp &
+=pp' )
OnCollabInfoChangedpp* =
;pp= >
instanceqq 
.qq 
JobsCompletedqq "
+=qq# %
OnJobsCompletedqq& 5
;qq5 6
instancerr 
.rr 
ErrorOccurred_V2rr %
+=rr& (
OnErrorOccurredrr) 8
;rr8 9
instancess 
.ss 
ErrorClearedss !
+=ss" $
OnErrorClearedss% 3
;ss3 4
instanceuu 
.uu 
StateChangeduu !
+=uu" $ 
OnCollabStateChangeduu% 9
;uu9 :
UnityConnectvv 
.vv 
instancevv !
.vv! "
StateChangedvv" .
+=vv/ 1&
OnUnityConnectStateChangedvv2 L
;vvL M
UnityConnectww 
.ww 
instanceww !
.ww! "
ProjectStateChangedww" 5
+=ww6 8-
!OnUnityConnectProjectStateChangedww9 Z
;wwZ [
m_RevisionsServiceyy 
.yy "
FetchRevisionsCallbackyy 5
+=yy6 8#
OnReceiveHistoryEntriesyy9 P
;yyP Q
}zz 	
void
ÉÉ "
OnChangeItemsChanged
ÉÉ !
(
ÉÉ! "

ChangeItem
ÉÉ" ,
[
ÉÉ, -
]
ÉÉ- .
changes
ÉÉ/ 6
,
ÉÉ6 7
bool
ÉÉ8 <

isFiltered
ÉÉ= G
)
ÉÉG H
{
ÑÑ 	
UpdateChanges
ÖÖ 
(
ÖÖ 
changes
ÖÖ !
)
ÖÖ! "
;
ÖÖ" #
UpdatedChangeList
ÜÜ 
?
ÜÜ 
.
ÜÜ 
Invoke
ÜÜ %
(
ÜÜ% &
)
ÜÜ& '
;
ÜÜ' (
}
áá 	
void
éé *
OnSelectedChangeItemsChanged
éé )
(
éé) *

ChangeItem
éé* 4
[
éé4 5
]
éé5 6
changes
éé7 >
,
éé> ?
bool
éé@ D

isFiltered
ééE O
)
ééO P
{
èè 	
Debug
ëë 
.
ëë 
Assert
ëë 
(
ëë 

isFiltered
ëë #
)
ëë# $
;
ëë$ %
var
íí 
selectedChanges
íí 
=
íí  !
changes
íí" )
.
íí) *
Select
íí* 0
(
íí0 1
e
íí1 2
=>
íí3 5
e
íí6 7
.
íí7 8
Path
íí8 <
)
íí< =
.
íí= >
ToList
íí> D
(
ííD E
)
ííE F
;
ííF G'
UpdatedSelectedChangeList
ìì %
?
ìì% &
.
ìì& '
Invoke
ìì' -
(
ìì- .
selectedChanges
ìì. =
)
ìì= >
;
ìì> ?
}
îî 	
void
ùù 
OnRevisionUpdated
ùù 
(
ùù 

CollabInfo
ùù )
info
ùù* .
,
ùù. /
string
ùù0 6
rev
ùù7 :
,
ùù: ;
string
ùù< B
action
ùùC I
)
ùùI J
{
ûû 	#
m_HistoryEntriesCache
†† !
=
††" #
null
††$ (
;
††( )!
m_HistoryEntryCache
°° 
=
°°  !
null
°°" &
;
°°& '&
m_HistoryEntryCountCache
¢¢ $
=
¢¢% &
null
¢¢' +
;
¢¢+ ,#
UpdatedHistoryEntries
§§ !
?
§§! "
.
§§" #
Invoke
§§# )
(
§§) *
)
§§* +
;
§§+ ,!
OnCollabInfoChanged
¶¶ 
(
¶¶  
info
¶¶  $
)
¶¶$ %
;
¶¶% &
}
ßß 	
void
©© !
OnCollabInfoChanged
©©  
(
©©  !

CollabInfo
©©! +
info
©©, 0
)
©©0 1
{
™™ 	
if
¨¨ 
(
¨¨ #
m_ConflictCachedState
¨¨ %
!=
¨¨& (
info
¨¨) -
.
¨¨- .
conflict
¨¨. 6
)
¨¨6 7
{
≠≠ #
m_ConflictCachedState
ÆÆ %
=
ÆÆ& '
info
ÆÆ( ,
.
ÆÆ, -
conflict
ÆÆ- 5
;
ÆÆ5 6"
UpdatedConflictState
ØØ $
?
ØØ$ %
.
ØØ% &
Invoke
ØØ& ,
(
ØØ, -
info
ØØ- 1
.
ØØ1 2
conflict
ØØ2 :
)
ØØ: ;
;
ØØ; <
}
∞∞ 
if
≥≥ 
(
≥≥ -
m_RemoteRevisionsAvailableState
≥≥ /
!=
≥≥0 2
info
≥≥3 7
.
≥≥7 8
update
≥≥8 >
)
≥≥> ?
{
¥¥ -
m_RemoteRevisionsAvailableState
µµ /
=
µµ0 1
info
µµ2 6
.
µµ6 7
update
µµ7 =
;
µµ= >0
"UpdatedRemoteRevisionsAvailability
∂∂ 2
?
∂∂2 3
.
∂∂3 4
Invoke
∂∂4 :
(
∂∂: ;
info
∂∂; ?
.
∂∂? @
update
∂∂@ F
)
∂∂F G
;
∂∂G H
}
∑∑ 
if
∫∫ 
(
∫∫ 

m_TipCache
∫∫ 
!=
∫∫ 
info
∫∫ "
.
∫∫" #
tip
∫∫# &
)
∫∫& '
{
ªª 

m_TipCache
ºº 
=
ºº 
info
ºº !
.
ºº! "
tip
ºº" %
;
ºº% &#
m_HistoryEntriesCache
øø %
=
øø& '
null
øø( ,
;
øø, -!
m_HistoryEntryCache
¿¿ #
=
¿¿$ %
null
¿¿& *
;
¿¿* +&
m_HistoryEntryCountCache
¡¡ (
=
¡¡) *
null
¡¡+ /
;
¡¡/ 0#
UpdatedHistoryEntries
ƒƒ %
?
ƒƒ% &
.
ƒƒ& '
Invoke
ƒƒ' -
(
ƒƒ- .
)
ƒƒ. /
;
ƒƒ/ 0
}
≈≈ !
UpdateProjectStatus
»» 
(
»»  
info
»»  $
,
»»$ %
UnityConnect
»»& 2
.
»»2 3
instance
»»3 ;
.
»»; <
connectInfo
»»< G
,
»»G H
UnityConnect
»»I U
.
»»U V
instance
»»V ^
.
»»^ _
projectInfo
»»_ j
)
»»j k
;
»»k l
if
ÀÀ 
(
ÀÀ 
info
ÀÀ 
.
ÀÀ 

inProgress
ÀÀ 
)
ÀÀ  
{
ÃÃ 
var
ŒŒ 
progressInfo
ŒŒ  
=
ŒŒ! "
instance
ŒŒ# +
.
ŒŒ+ ,
GetJobProgress
ŒŒ, :
(
ŒŒ: ;
$num
ŒŒ; <
)
ŒŒ< =
;
ŒŒ= >
Assert
œœ 
.
œœ 
	IsNotNull
œœ  
(
œœ  !
progressInfo
œœ! -
)
œœ- .
;
œœ. /
if
““ 
(
““ 
m_ProgressInfo
““ "
==
““# %
null
““& *
)
““* +
{
”” $
UpdatedOperationStatus
‘‘ *
?
‘‘* +
.
‘‘+ ,
Invoke
‘‘, 2
(
‘‘2 3
true
‘‘3 7
)
‘‘7 8
;
‘‘8 9
}
’’ 
m_ProgressInfo
ÿÿ 
=
ÿÿ  $
ProgressInfoFromCollab
ÿÿ! 7
(
ÿÿ7 8
progressInfo
ÿÿ8 D
)
ÿÿD E
;
ÿÿE F&
UpdatedOperationProgress
ŸŸ (
?
ŸŸ( )
.
ŸŸ) *
Invoke
ŸŸ* 0
(
ŸŸ0 1
m_ProgressInfo
ŸŸ1 ?
)
ŸŸ? @
;
ŸŸ@ A
}
⁄⁄ 
else
€€ 
if
€€ 
(
€€ 
m_ProgressInfo
€€ #
!=
€€$ &
null
€€' +
)
€€+ ,
{
‹‹ 
m_ProgressInfo
ﬁﬁ 
=
ﬁﬁ  
null
ﬁﬁ! %
;
ﬁﬁ% &$
UpdatedOperationStatus
ﬂﬂ &
?
ﬂﬂ& '
.
ﬂﬂ' (
Invoke
ﬂﬂ( .
(
ﬂﬂ. /
false
ﬂﬂ/ 4
)
ﬂﬂ4 5
;
ﬂﬂ5 6
}
‡‡ 
}
·· 	
void
„„ 
OnJobsCompleted
„„ 
(
„„ 

CollabInfo
„„ '
info
„„( ,
)
„„, -
{
‰‰ 	
if
ÁÁ 
(
ÁÁ 
m_ProgressInfo
ÁÁ 
==
ÁÁ !
null
ÁÁ" &
)
ÁÁ& '
return
ÁÁ( .
;
ÁÁ. /
Assert
ÈÈ 
.
ÈÈ 
IsFalse
ÈÈ 
(
ÈÈ 
info
ÈÈ 
.
ÈÈ  

inProgress
ÈÈ  *
)
ÈÈ* +
;
ÈÈ+ ,
m_ProgressInfo
ÍÍ 
=
ÍÍ 
null
ÍÍ !
;
ÍÍ! "$
UpdatedOperationStatus
ÎÎ "
?
ÎÎ" #
.
ÎÎ# $
Invoke
ÎÎ$ *
(
ÎÎ* +
false
ÎÎ+ 0
)
ÎÎ0 1
;
ÎÎ1 2
}
ÏÏ 	
void
ÓÓ 
OnErrorOccurred
ÓÓ 
(
ÓÓ 
UnityErrorInfo
ÓÓ +
error
ÓÓ, 1
)
ÓÓ1 2
{
ÔÔ 	
if
 
(
 
m_ErrorInfo
 
?
 
.
 
Code
 !
==
" $
error
% *
.
* +
code
+ /
)
/ 0
return
1 7
;
7 8
m_ErrorInfo
ÒÒ 
=
ÒÒ  
ErrorInfoFromUnity
ÒÒ ,
(
ÒÒ, -
error
ÒÒ- 2
)
ÒÒ2 3
;
ÒÒ3 4
ErrorOccurred
ÚÚ 
?
ÚÚ 
.
ÚÚ 
Invoke
ÚÚ !
(
ÚÚ! "
m_ErrorInfo
ÚÚ" -
)
ÚÚ- .
;
ÚÚ. /
}
ÛÛ 	
void
ıı 
OnErrorCleared
ıı 
(
ıı 
)
ıı 
{
ˆˆ 	
m_ErrorInfo
˜˜ 
=
˜˜ 
null
˜˜ 
;
˜˜ 
ErrorCleared
¯¯ 
?
¯¯ 
.
¯¯ 
Invoke
¯¯  
(
¯¯  !
)
¯¯! "
;
¯¯" #
}
˘˘ 	
void
ˇˇ %
OnReceiveHistoryEntries
ˇˇ $
(
ˇˇ$ %
RevisionsResult
ˇˇ% 4
revisionsResult
ˇˇ5 D
)
ˇˇD E
{
ÄÄ 	
Assert
ÅÅ 
.
ÅÅ 
AreNotEqual
ÅÅ 
(
ÅÅ 
$num
ÅÅ  
,
ÅÅ  !
m_HistoryRequests
ÅÅ" 3
.
ÅÅ3 4
Count
ÅÅ4 9
,
ÅÅ9 :
$str
ÅÅ; _
)
ÅÅ_ `
;
ÅÅ` a
var
ÇÇ 
(
ÇÇ 
offset
ÇÇ 
,
ÇÇ 
size
ÇÇ 
,
ÇÇ 
callback
ÇÇ '
)
ÇÇ' (
=
ÇÇ) *
m_HistoryRequests
ÇÇ+ <
.
ÇÇ< =
Dequeue
ÇÇ= D
(
ÇÇD E
)
ÇÇE F
;
ÇÇF G
var
ÖÖ 
results
ÖÖ 
=
ÖÖ 
revisionsResult
ÖÖ )
?
ÖÖ) *
.
ÖÖ* +
	Revisions
ÖÖ+ 4
.
ÖÖ4 5
Select
ÖÖ5 ;
(
ÖÖ; <$
RevisionToHistoryEntry
ÖÖ< R
)
ÖÖR S
.
ÖÖS T
ToList
ÖÖT Z
(
ÖÖZ [
)
ÖÖ[ \
;
ÖÖ\ ]
if
ÜÜ 
(
ÜÜ 
results
ÜÜ 
!=
ÜÜ 
null
ÜÜ 
)
ÜÜ  
{
áá 
m_HistoryEntries
àà  
=
àà! "
results
àà# *
;
àà* +#
m_HistoryEntriesCache
ââ %
=
ââ& '
(
ââ( )
offset
ââ) /
,
ââ/ 0
size
ââ1 5
)
ââ5 6
;
ââ6 7&
m_HistoryEntryCountCache
ää (
=
ää) *
revisionsResult
ää+ :
.
ää: ;
RevisionsInRepo
ää; J
;
ääJ K
callback
ãã 
(
ãã 
revisionsResult
ãã (
.
ãã( )
RevisionsInRepo
ãã) 8
,
ãã8 9
m_HistoryEntries
ãã: J
)
ããJ K
;
ããK L
}
åå 
EditorApplication
èè 
.
èè 
	delayCall
èè '
+=
èè( *
(
èè+ ,
)
èè, -
=>
èè. 0!
ConsumeHistoryQueue
èè1 D
(
èèD E
)
èèE F
;
èèF G
}
êê 	
void
ññ /
!OnUnityConnectProjectStateChanged
ññ .
(
ññ. /
ProjectInfo
ññ/ :
projectInfo
ññ; F
)
ññF G
{
óó 	!
UpdateProjectStatus
òò 
(
òò  
instance
òò  (
.
òò( )

collabInfo
òò) 3
,
òò3 4
UnityConnect
òò5 A
.
òòA B
instance
òòB J
.
òòJ K
connectInfo
òòK V
,
òòV W
projectInfo
òòX c
)
òòc d
;
òòd e
}
ôô 	
void
üü "
OnCollabStateChanged
üü !
(
üü! "

CollabInfo
üü" ,
info
üü- 1
)
üü1 2
{
†† 	!
OnCollabInfoChanged
°° 
(
°°  
info
°°  $
)
°°$ %
;
°°% &
}
¢¢ 	
void
®® (
OnUnityConnectStateChanged
®® '
(
®®' (
ConnectInfo
®®( 3
connectInfo
®®4 ?
)
®®? @
{
©© 	!
UpdateProjectStatus
™™ 
(
™™  
instance
™™  (
.
™™( )

collabInfo
™™) 3
,
™™3 4
connectInfo
™™5 @
,
™™@ A
UnityConnect
™™B N
.
™™N O
instance
™™O W
.
™™W X
projectInfo
™™X c
)
™™c d
;
™™d e
}
´´ 	
void
∞∞ !
UpdateProjectStatus
∞∞  
(
∞∞  !

CollabInfo
∞∞! +

collabInfo
∞∞, 6
,
∞∞6 7
ConnectInfo
∞∞8 C
connectInfo
∞∞D O
,
∞∞O P
ProjectInfo
∞∞Q \
projectInfo
∞∞] h
)
∞∞h i
{
±± 	
var
≤≤ 
currentStatus
≤≤ 
=
≤≤ !
GetNewProjectStatus
≤≤  3
(
≤≤3 4

collabInfo
≤≤4 >
,
≤≤> ?
connectInfo
≤≤@ K
,
≤≤K L
projectInfo
≤≤M X
)
≤≤X Y
;
≤≤Y Z
if
≥≥ 
(
≥≥ 
m_ProjectStatus
≥≥ 
==
≥≥  "
currentStatus
≥≥# 0
)
≥≥0 1
return
≥≥2 8
;
≥≥8 9
m_ProjectStatus
¥¥ 
=
¥¥ 
currentStatus
¥¥ +
;
¥¥+ ,"
UpdatedProjectStatus
µµ  
?
µµ  !
.
µµ! "
Invoke
µµ" (
(
µµ( )
m_ProjectStatus
µµ) 8
)
µµ8 9
;
µµ9 :
}
∂∂ 	
static
ºº 
ProjectStatus
ºº !
GetNewProjectStatus
ºº 0
(
ºº0 1

CollabInfo
ºº1 ;

collabInfo
ºº< F
,
ººF G
ConnectInfo
ººH S
connectInfo
ººT _
,
ºº_ `
ProjectInfo
ººa l
projectInfo
ººm x
)
ººx y
{
ΩΩ 	
if
øø 
(
øø 
!
øø 
projectInfo
øø 
.
øø 
projectBound
øø )
)
øø) *
{
¿¿ 
return
¡¡ 
ProjectStatus
¡¡ $
.
¡¡$ %
Unbound
¡¡% ,
;
¡¡, -
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
connectInfo
ƒƒ 
.
ƒƒ 
online
ƒƒ #
)
ƒƒ# $
{
≈≈ 
return
∆∆ 
ProjectStatus
∆∆ $
.
∆∆$ %
Offline
∆∆% ,
;
∆∆, -
}
«« 
if
…… 
(
…… 
connectInfo
…… 
.
…… 
maintenance
…… '
||
……( *

collabInfo
……+ 5
.
……5 6
maintenance
……6 A
)
……A B
{
   
return
ÀÀ 
ProjectStatus
ÀÀ $
.
ÀÀ$ %
Maintenance
ÀÀ% 0
;
ÀÀ0 1
}
ÃÃ 
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
connectInfo
ŒŒ 
.
ŒŒ 
loggedIn
ŒŒ %
)
ŒŒ% &
{
œœ 
return
–– 
ProjectStatus
–– $
.
––$ %
	LoggedOut
––% .
;
––. /
}
—— 
if
”” 
(
”” 
!
”” 

collabInfo
”” 
.
”” 
seat
””  
)
””  !
{
‘‘ 
return
’’ 
ProjectStatus
’’ $
.
’’$ %
NoSeat
’’% +
;
’’+ ,
}
÷÷ 
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
instance
ŸŸ 
.
ŸŸ .
 IsCollabEnabledForCurrentProject
ŸŸ :
(
ŸŸ: ;
)
ŸŸ; <
)
ŸŸ< =
{
⁄⁄ 
return
€€ 
ProjectStatus
€€ $
.
€€$ %
Bound
€€% *
;
€€* +
}
‹‹ 
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
instance
ﬂﬂ 
.
ﬂﬂ 
IsConnected
ﬂﬂ %
(
ﬂﬂ% &
)
ﬂﬂ& '
||
ﬂﬂ( *
!
ﬂﬂ+ ,

collabInfo
ﬂﬂ, 6
.
ﬂﬂ6 7
ready
ﬂﬂ7 <
)
ﬂﬂ< =
{
‡‡ 
return
·· 
ProjectStatus
·· $
.
··$ %
Loading
··% ,
;
··, -
}
‚‚ 
return
‰‰ 
ProjectStatus
‰‰  
.
‰‰  !
Ready
‰‰! &
;
‰‰& '
}
ÂÂ 	
void
ÎÎ !
ConsumeHistoryQueue
ÎÎ  
(
ÎÎ  !
bool
ÎÎ! %
afterEnqueue
ÎÎ& 2
=
ÎÎ3 4
false
ÎÎ5 :
)
ÎÎ: ;
{
ÏÏ 	
if
ÓÓ 
(
ÓÓ 
afterEnqueue
ÓÓ 
&&
ÓÓ 
m_HistoryRequests
ÓÓ  1
.
ÓÓ1 2
Count
ÓÓ2 7
!=
ÓÓ8 :
$num
ÓÓ; <
)
ÓÓ< =
return
ÓÓ> D
;
ÓÓD E
if
ÒÒ 
(
ÒÒ 
m_HistoryRequests
ÒÒ !
.
ÒÒ! "
Count
ÒÒ" '
==
ÒÒ( *
$num
ÒÒ+ ,
)
ÒÒ, -
return
ÒÒ. 4
;
ÒÒ4 5
var
ÛÛ 
(
ÛÛ 
offset
ÛÛ 
,
ÛÛ 
size
ÛÛ 
,
ÛÛ 
callback
ÛÛ '
)
ÛÛ' (
=
ÛÛ) *
m_HistoryRequests
ÛÛ+ <
.
ÛÛ< =
Peek
ÛÛ= A
(
ÛÛA B
)
ÛÛB C
;
ÛÛC D
try
ıı 
{
ˆˆ  
m_RevisionsService
˜˜ "
.
˜˜" #
GetRevisions
˜˜# /
(
˜˜/ 0
offset
˜˜0 6
,
˜˜6 7
size
˜˜8 <
)
˜˜< =
;
˜˜= >
}
¯¯ 
catch
˘˘ 
(
˘˘ 
	Exception
˘˘ 
e
˘˘ 
)
˘˘ 
{
˙˙ 
Debug
˚˚ 
.
˚˚ 
LogException
˚˚ "
(
˚˚" #
e
˚˚# $
)
˚˚$ %
;
˚˚% &
m_HistoryRequests
˝˝ !
.
˝˝! "
Dequeue
˝˝" )
(
˝˝) *
)
˝˝* +
;
˝˝+ ,
callback
˛˛ 
(
˛˛ 
null
˛˛ 
,
˛˛ 
null
˛˛ #
)
˛˛# $
;
˛˛$ %
}
ˇˇ 
}
ÄÄ 	
void
àà !
QueueHistoryRequest
àà  
(
àà  !
int
àà! $
offset
àà% +
,
àà+ ,
int
àà- 0
size
àà1 5
,
àà5 6
Action
àà7 =
<
àà= >
int
àà> A
?
ààA B
,
ààB C
IReadOnlyList
ààD Q
<
ààQ R
IHistoryEntry
ààR _
>
àà_ `
>
àà` a
callback
ààb j
)
ààj k
{
ââ 	
m_HistoryRequests
ää 
.
ää 
Enqueue
ää %
(
ää% &
(
ää& '
offset
ää' -
,
ää- .
size
ää/ 3
,
ää3 4
callback
ää5 =
)
ää= >
)
ää> ?
;
ää? @!
ConsumeHistoryQueue
ãã 
(
ãã  
true
ãã  $
)
ãã$ %
;
ãã% &
}
åå 	
void
íí 
UpdateChanges
íí 
(
íí 
IEnumerable
íí &
<
íí& '
Change
íí' -
>
íí- .
changes
íí/ 6
)
íí6 7
{
ìì 	
	m_Changes
îî 
.
îî 
Clear
îî 
(
îî 
)
îî 
;
îî 
	m_Changes
ïï 
.
ïï 
AddRange
ïï 
(
ïï 
changes
ïï &
.
ïï& '
Select
ïï' -
(
ïï- .
change
ïï. 4
=>
ïï5 7
new
ññ 
ChangeEntry
ññ 
(
ññ  
change
ññ  &
.
ññ& '
path
ññ' +
,
ññ+ ,
change
ññ- 3
.
ññ3 4
path
ññ4 8
,
ññ8 9.
 ChangeEntryStatusFromCollabState
ññ: Z
(
ññZ [
change
ññ[ a
.
ñña b
state
ññb g
)
ññg h
,
ññh i
false
óó 
,
óó "
IsCollabStateFlagSet
óó /
(
óó/ 0
change
óó0 6
.
óó6 7
state
óó7 <
,
óó< =
CollabStates
óó> J
.
óóJ K
kCollabConflicted
óóK \
|
óó] ^
CollabStates
óó_ k
.
óók l!
kCollabPendingMerge
óól 
)óó Ä
,óóÄ Å
changeóóÇ à
)óóà â
)óóâ ä
.
òò 
Cast
òò 
<
òò 
IChangeEntry
òò "
>
òò" #
(
òò# $
)
òò$ %
)
òò% &
;
òò& '
}
ôô 	
void
üü 
UpdateChanges
üü 
(
üü 
IEnumerable
üü &
<
üü& '

ChangeItem
üü' 1
>
üü1 2
changes
üü3 :
)
üü: ;
{
†† 	
	m_Changes
°° 
.
°° 
Clear
°° 
(
°° 
)
°° 
;
°° 
	m_Changes
¢¢ 
.
¢¢ 
AddRange
¢¢ 
(
¢¢ 
changes
¢¢ &
.
¢¢& '
Select
¢¢' -
(
¢¢- .
change
¢¢. 4
=>
¢¢5 7
new
££ 
ChangeEntry
££ 
(
££  
change
££  &
.
££& '
Path
££' +
,
££+ ,
change
££- 3
.
££3 4
Path
££4 8
,
££8 9.
 ChangeEntryStatusFromCollabState
££: Z
(
££Z [
change
££[ a
.
££a b
State
££b g
)
££g h
,
££h i
false
§§ 
,
§§ "
IsCollabStateFlagSet
§§ /
(
§§/ 0
change
§§0 6
.
§§6 7
State
§§7 <
,
§§< =
CollabStates
§§> J
.
§§J K
kCollabConflicted
§§K \
|
§§] ^
CollabStates
§§_ k
.
§§k l!
kCollabPendingMerge
§§l 
)§§ Ä
,§§Ä Å
change§§Ç à
)§§à â
)§§â ä
.
•• 
Cast
•• 
<
•• 
IChangeEntry
•• "
>
••" #
(
••# $
)
••$ %
)
••% &
;
••& '
}
¶¶ 	
public
©© 
bool
©© +
GetRemoteRevisionAvailability
©© 1
(
©©1 2
)
©©2 3
{
™™ 	
return
¨¨ -
m_RemoteRevisionsAvailableState
¨¨ 2
;
¨¨2 3
}
≠≠ 	
public
∞∞ 
bool
∞∞  
GetConflictedState
∞∞ &
(
∞∞& '
)
∞∞' (
{
±± 	
return
≥≥ #
m_ConflictCachedState
≥≥ (
;
≥≥( )
}
¥¥ 	
public
∑∑ 
IProgressInfo
∑∑ 
GetProgressState
∑∑ -
(
∑∑- .
)
∑∑. /
{
∏∏ 	
return
∫∫ 
m_ProgressInfo
∫∫ !
;
∫∫! "
}
ªª 	
public
ææ 

IErrorInfo
ææ 
GetErrorState
ææ '
(
ææ' (
)
ææ( )
{
øø 	
return
¿¿ 
m_ErrorInfo
¿¿ 
;
¿¿ 
}
¡¡ 	
public
ƒƒ 
virtual
ƒƒ 
ProjectStatus
ƒƒ $
GetProjectStatus
ƒƒ% 5
(
ƒƒ5 6
)
ƒƒ6 7
{
≈≈ 	
return
∆∆ 
m_ProjectStatus
∆∆ "
;
∆∆" #
}
«« 	
public
   
void
   
RequestChangeList
   %
(
  % &
Action
  & ,
<
  , -
IReadOnlyList
  - :
<
  : ;
IChangeEntry
  ; G
>
  G H
>
  H I
callback
  J R
)
  R S
{
ÀÀ 	
var
ÃÃ 
changes
ÃÃ 
=
ÃÃ 
instance
ÃÃ "
.
ÃÃ" #$
GetChangesToPublish_V2
ÃÃ# 9
(
ÃÃ9 :
)
ÃÃ: ;
.
ÃÃ; <
changes
ÃÃ< C
;
ÃÃC D
UpdateChanges
ÕÕ 
(
ÕÕ 
changes
ÕÕ !
)
ÕÕ! "
;
ÕÕ" #
callback
ŒŒ 
(
ŒŒ 
	m_Changes
ŒŒ 
)
ŒŒ 
;
ŒŒ  
if
—— 
(
—— 
instance
—— 
.
—— 
GetError
—— !
(
——! "
UnityConnect
——" .
.
——. /
UnityErrorFilter
——/ ?
.
——? @
All
——@ C
,
——C D
out
——E H
var
——I L
error
——M R
)
——R S
&&
——T V
(
““ 
CollabErrorCode
““  
)
““  !
error
““! &
.
““& '
code
““' +
!=
““, .
CollabErrorCode
““/ >
.
““> ?
Collab_ErrNone
““? M
)
““M N
{
”” 
ErrorOccurred
‘‘ 
?
‘‘ 
.
‘‘ 
Invoke
‘‘ %
(
‘‘% & 
ErrorInfoFromUnity
‘‘& 8
(
‘‘8 9
error
‘‘9 >
)
‘‘> ?
)
‘‘? @
;
‘‘@ A
}
’’ 
}
÷÷ 	
public
ŸŸ 
void
ŸŸ 
RequestPublish
ŸŸ "
(
ŸŸ" #
string
ŸŸ# )
message
ŸŸ* 1
,
ŸŸ1 2
IReadOnlyList
ŸŸ3 @
<
ŸŸ@ A
IChangeEntry
ŸŸA M
>
ŸŸM N
changeEntries
ŸŸO \
=
ŸŸ] ^
null
ŸŸ_ c
)
ŸŸc d
{
⁄⁄ 	
var
€€ 
changeItems
€€ 
=
€€ 
changeEntries
€€ +
?
€€+ ,
.
€€, -
Select
€€- 3
(
€€3 4
EntryToChangeItem
€€4 E
)
€€E F
.
€€F G
ToArray
€€G N
(
€€N O
)
€€O P
;
€€P Q
instance
›› 
.
››  
PublishAssetsAsync
›› '
(
››' (
message
››( /
,
››/ 0
changeItems
››1 <
)
››< =
;
››= >

ChangeItem
ﬂﬂ 
EntryToChangeItem
ﬂﬂ (
(
ﬂﬂ( )
IChangeEntry
ﬂﬂ) 5
entry
ﬂﬂ6 ;
)
ﬂﬂ; <
{
‡‡ 
return
·· 
entry
·· 
.
·· 
Tag
··  
as
··! #

ChangeItem
··$ .
;
··. /
}
‚‚ 
}
„„ 	
public
ÍÍ 
event
ÍÍ 
Action
ÍÍ #
UpdatedHistoryEntries
ÍÍ 1
;
ÍÍ1 2
public
ÌÌ 
void
ÌÌ !
RequestHistoryEntry
ÌÌ '
(
ÌÌ' (
string
ÌÌ( .

revisionId
ÌÌ/ 9
,
ÌÌ9 :
Action
ÌÌ; A
<
ÌÌA B
IHistoryEntry
ÌÌB O
>
ÌÌO P
callback
ÌÌQ Y
)
ÌÌY Z
{
ÓÓ 	
if
 
(
 !
m_HistoryEntryCache
 #
?
# $
.
$ %

RevisionId
% /
==
0 2

revisionId
3 =
)
= >
{
ÒÒ 
callback
ÚÚ 
(
ÚÚ !
m_HistoryEntryCache
ÚÚ ,
)
ÚÚ, -
;
ÚÚ- .
return
ÛÛ 
;
ÛÛ 
}
ÙÙ  
m_RevisionsService
˜˜ 
.
˜˜ )
FetchSingleRevisionCallback
˜˜ :
+=
˜˜; =%
OnFetchRevisionCallback
˜˜> U
;
˜˜U V
try
¯¯ 
{
˘˘  
m_RevisionsService
˙˙ "
.
˙˙" #
GetRevision
˙˙# .
(
˙˙. /

revisionId
˙˙/ 9
)
˙˙9 :
;
˙˙: ;
}
˚˚ 
catch
¸¸ 
(
¸¸ 
	Exception
¸¸ 
e
¸¸ 
)
¸¸ 
{
˝˝ 
Debug
˛˛ 
.
˛˛ 
LogException
˛˛ "
(
˛˛" #
e
˛˛# $
)
˛˛$ %
;
˛˛% & 
m_RevisionsService
ˇˇ "
.
ˇˇ" #)
FetchSingleRevisionCallback
ˇˇ# >
-=
ˇˇ? A%
OnFetchRevisionCallback
ˇˇB Y
;
ˇˇY Z
callback
ÄÄ 
(
ÄÄ 
null
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
void
ÉÉ %
OnFetchRevisionCallback
ÉÉ (
(
ÉÉ( )
Revision
ÉÉ) 1
?
ÉÉ1 2
revision
ÉÉ3 ;
)
ÉÉ; <
{
ÑÑ  
m_RevisionsService
ÖÖ "
.
ÖÖ" #)
FetchSingleRevisionCallback
ÖÖ# >
-=
ÖÖ? A%
OnFetchRevisionCallback
ÖÖB Y
;
ÖÖY Z
callback
áá 
(
áá 
string
áá 
.
áá  
IsNullOrEmpty
áá  -
(
áá- .
revision
áá. 6
?
áá6 7
.
áá7 8

revisionID
áá8 B
)
ááB C
?
àà 
null
àà 
:
ââ $
RevisionToHistoryEntry
ââ ,
(
ââ, -
revision
ââ- 5
.
ââ5 6
GetValueOrDefault
ââ6 G
(
ââG H
)
ââH I
)
ââI J
)
ââJ K
;
ââK L
}
ää 
}
ãã 	
public
éé 
void
éé  
RequestHistoryPage
éé &
(
éé& '
int
éé' *
offset
éé+ 1
,
éé1 2
int
éé3 6
pageSize
éé7 ?
,
éé? @
Action
ééA G
<
ééG H
IReadOnlyList
ééH U
<
ééU V
IHistoryEntry
ééV c
>
ééc d
>
ééd e
callback
ééf n
)
één o
{
èè 	
if
ëë 
(
ëë #
m_HistoryEntriesCache
ëë %
?
ëë% &
.
ëë& '
offset
ëë' -
==
ëë. 0
offset
ëë1 7
&&
ëë8 :#
m_HistoryEntriesCache
ëë; P
?
ëëP Q
.
ëëQ R
size
ëëR V
==
ëëW Y
pageSize
ëëZ b
)
ëëb c
{
íí 
callback
ìì 
(
ìì 
m_HistoryEntries
ìì )
)
ìì) *
;
ìì* +
return
îî 
;
îî 
}
ïï !
QueueHistoryRequest
òò 
(
òò  
offset
òò  &
,
òò& '
pageSize
òò( 0
,
òò0 1
(
òò2 3
_
òò3 4
,
òò4 5
r
òò6 7
)
òò7 8
=>
òò9 ;
callback
òò< D
(
òòD E
r
òòE F
)
òòF G
)
òòG H
;
òòH I
}
ôô 	
public
úú 
void
úú !
RequestHistoryCount
úú '
(
úú' (
Action
úú( .
<
úú. /
int
úú/ 2
?
úú2 3
>
úú3 4
callback
úú5 =
)
úú= >
{
ùù 	
if
üü 
(
üü &
m_HistoryEntryCountCache
üü (
!=
üü) +
null
üü, 0
)
üü0 1
{
†† 
callback
°° 
(
°° &
m_HistoryEntryCountCache
°° 1
)
°°1 2
;
°°2 3
return
¢¢ 
;
¢¢ 
}
££ !
QueueHistoryRequest
•• 
(
••  
$num
••  !
,
••! "
$num
••# $
,
••$ %
(
••& '
c
••' (
,
••( )
_
••* +
)
••+ ,
=>
••- /
callback
••0 8
(
••8 9
c
••9 :
)
••: ;
)
••; <
;
••< =
}
¶¶ 	
public
©© 
void
©© 
RequestDiscard
©© "
(
©©" #
IChangeEntry
©©# /
entry
©©0 5
)
©©5 6
{
™™ 	
if
¨¨ 
(
¨¨ 
entry
¨¨ 
.
¨¨ 
Status
¨¨ 
==
¨¨ 
ChangeEntryStatus
¨¨  1
.
¨¨1 2
Added
¨¨2 7
)
¨¨7 8
{
≠≠ 
File
ÆÆ 
.
ÆÆ 
Delete
ÆÆ 
(
ÆÆ 
entry
ÆÆ !
.
ÆÆ! "
Path
ÆÆ" &
)
ÆÆ& '
;
ÆÆ' (
AssetDatabase
∞∞ 
.
∞∞ 
Refresh
∞∞ %
(
∞∞% &
)
∞∞& '
;
∞∞' (
}
±± 
else
≤≤ 
{
≥≥ 
instance
¥¥ 
.
¥¥ 

RevertFile
¥¥ #
(
¥¥# $
entry
¥¥$ )
.
¥¥) *
Path
¥¥* .
,
¥¥. /
true
¥¥0 4
)
¥¥4 5
;
¥¥5 6
}
µµ 
}
∂∂ 	
public
ππ 
void
ππ  
RequestBulkDiscard
ππ &
(
ππ& '
IReadOnlyList
ππ' 4
<
ππ4 5
IChangeEntry
ππ5 A
>
ππA B
entries
ππC J
)
ππJ K
{
∫∫ 	
var
ªª 
revertEntries
ªª 
=
ªª 
new
ªª  #
List
ªª$ (
<
ªª( )

ChangeItem
ªª) 3
>
ªª3 4
(
ªª4 5
)
ªª5 6
;
ªª6 7
var
ºº 
deleteOccured
ºº 
=
ºº 
false
ºº  %
;
ºº% &
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
entry
ΩΩ 
in
ΩΩ !
entries
ΩΩ" )
)
ΩΩ) *
{
ææ 
if
¿¿ 
(
¿¿ 
entry
¿¿ 
.
¿¿ 
Status
¿¿  
==
¿¿! #
ChangeEntryStatus
¿¿$ 5
.
¿¿5 6
Added
¿¿6 ;
)
¿¿; <
{
¡¡ 
File
¬¬ 
.
¬¬ 
Delete
¬¬ 
(
¬¬  
entry
¬¬  %
.
¬¬% &
Path
¬¬& *
)
¬¬* +
;
¬¬+ ,
deleteOccured
√√ !
=
√√" #
true
√√$ (
;
√√( )
}
ƒƒ 
else
≈≈ 
{
∆∆ 
revertEntries
«« !
.
««! "
Add
««" %
(
««% &
(
««& '

ChangeItem
««' 1
)
««1 2
entry
««2 7
.
««7 8
Tag
««8 ;
)
««; <
;
««< =
}
»» 
}
…… 
if
ÃÃ 
(
ÃÃ 
deleteOccured
ÃÃ 
)
ÃÃ 
{
ÕÕ 
AssetDatabase
ŒŒ 
.
ŒŒ 
Refresh
ŒŒ %
(
ŒŒ% &
)
ŒŒ& '
;
ŒŒ' (
}
œœ 
instance
—— 
.
—— 
RevertFiles
——  
(
——  !
revertEntries
——! .
.
——. /
ToArray
——/ 6
(
——6 7
)
——7 8
,
——8 9
true
——: >
)
——> ?
;
——? @
}
““ 	
public
’’ 
void
’’  
RequestDiffChanges
’’ &
(
’’& '
string
’’' -
path
’’. 2
)
’’2 3
{
÷÷ 	
instance
◊◊ 
.
◊◊ 
ShowDifferences
◊◊ $
(
◊◊$ %
path
◊◊% )
)
◊◊) *
;
◊◊* +
}
ÿÿ 	
public
€€ 
bool
€€ 
SupportsRevert
€€ "
{
€€# $
get
€€% (
;
€€( )
}
€€* +
=
€€, -
false
€€. 3
;
€€3 4
public
ﬁﬁ 
void
ﬁﬁ 
RequestRevert
ﬁﬁ !
(
ﬁﬁ! "
string
ﬁﬁ" (

revisionId
ﬁﬁ) 3
,
ﬁﬁ3 4
IReadOnlyList
ﬁﬁ5 B
<
ﬁﬁB C
string
ﬁﬁC I
>
ﬁﬁI J
files
ﬁﬁK P
)
ﬁﬁP Q
{
ﬂﬂ 	
throw
‡‡ 
new
‡‡ %
NotImplementedException
‡‡ -
(
‡‡- .
)
‡‡. /
;
‡‡/ 0
}
·· 	
public
‰‰ 
void
‰‰ 
RequestUpdateTo
‰‰ #
(
‰‰# $
string
‰‰$ *

revisionId
‰‰+ 5
)
‰‰5 6
{
ÂÂ 	
instance
ÊÊ 
.
ÊÊ 
Update
ÊÊ 
(
ÊÊ 

revisionId
ÊÊ &
,
ÊÊ& '
true
ÊÊ( ,
)
ÊÊ, -
;
ÊÊ- .
}
ÁÁ 	
public
ÍÍ 
void
ÍÍ 
RequestRestoreTo
ÍÍ $
(
ÍÍ$ %
string
ÍÍ% +

revisionId
ÍÍ, 6
)
ÍÍ6 7
{
ÎÎ 	
instance
ÏÏ 
.
ÏÏ 
ResyncToRevision
ÏÏ %
(
ÏÏ% &

revisionId
ÏÏ& 0
)
ÏÏ0 1
;
ÏÏ1 2
}
ÌÌ 	
public
 
void
 
RequestGoBackTo
 #
(
# $
string
$ *

revisionId
+ 5
)
5 6
{
ÒÒ 	
instance
ÚÚ 
.
ÚÚ 
GoBackToRevision
ÚÚ %
(
ÚÚ% &

revisionId
ÚÚ& 0
,
ÚÚ0 1
false
ÚÚ2 7
)
ÚÚ7 8
;
ÚÚ8 9
}
ÛÛ 	
public
ˆˆ 
void
ˆˆ 

ClearError
ˆˆ 
(
ˆˆ 
)
ˆˆ  
{
˜˜ 	
instance
¯¯ 
.
¯¯ 
ClearErrors
¯¯  
(
¯¯  !
)
¯¯! "
;
¯¯" #
}
˘˘ 	
public
¸¸ 
void
¸¸ .
 RequestShowConflictedDifferences
¸¸ 4
(
¸¸4 5
string
¸¸5 ;
path
¸¸< @
)
¸¸@ A
{
˝˝ 	
if
˛˛ 
(
˛˛ 
UnityEditor
˛˛ 
.
˛˛ 
Collaboration
˛˛ )
.
˛˛) *
Collab
˛˛* 0
.
˛˛0 1"
IsDiffToolsAvailable
˛˛1 E
(
˛˛E F
)
˛˛F G
)
˛˛G H
{
ˇˇ 
instance
ÄÄ 
.
ÄÄ %
ShowConflictDifferences
ÄÄ 0
(
ÄÄ0 1
path
ÄÄ1 5
)
ÄÄ5 6
;
ÄÄ6 7
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
Debug
ÑÑ 
.
ÑÑ 
Log
ÑÑ 
(
ÑÑ 
StringAssets
ÑÑ &
.
ÑÑ& '%
noMergeToolIsConfigured
ÑÑ' >
)
ÑÑ> ?
;
ÑÑ? @
}
ÖÖ 
}
ÜÜ 	
public
ââ 
void
ââ  
RequestChooseMerge
ââ &
(
ââ& '
string
ââ' -
path
ââ. 2
)
ââ2 3
{
ää 	
if
ãã 
(
ãã 
UnityEditor
ãã 
.
ãã 
Collaboration
ãã )
.
ãã) *
Collab
ãã* 0
.
ãã0 1"
IsDiffToolsAvailable
ãã1 E
(
ããE F
)
ããF G
)
ããG H
{
åå 
instance
çç 
.
çç )
LaunchConflictExternalMerge
çç 4
(
çç4 5
path
çç5 9
)
çç9 :
;
çç: ;
}
éé 
else
èè 
{
êê 
Debug
ëë 
.
ëë 
Log
ëë 
(
ëë 
StringAssets
ëë &
.
ëë& '%
noMergeToolIsConfigured
ëë' >
)
ëë> ?
;
ëë? @
}
íí 
}
ìì 	
public
ññ 
void
ññ 
RequestChooseMine
ññ %
(
ññ% &
string
ññ& ,
[
ññ, -
]
ññ- .
paths
ññ/ 4
)
ññ4 5
{
óó 	
instance
òò 
.
òò &
SetConflictsResolvedMine
òò -
(
òò- .
paths
òò. 3
)
òò3 4
;
òò4 5
}
ôô 	
public
úú 
void
úú !
RequestChooseRemote
úú '
(
úú' (
string
úú( .
[
úú. /
]
úú/ 0
paths
úú1 6
)
úú6 7
{
ùù 	
instance
ûû 
.
ûû (
SetConflictsResolvedTheirs
ûû /
(
ûû/ 0
paths
ûû0 5
)
ûû5 6
;
ûû6 7
}
üü 	
public
¢¢ 
void
¢¢ 
RequestSync
¢¢ 
(
¢¢  
)
¢¢  !
{
££ 	!
QueueHistoryRequest
§§ 
(
§§  
$num
§§  !
,
§§! "
$num
§§# $
,
§§$ %
Callback
§§& .
)
§§. /
;
§§/ 0
void
¶¶ 
Callback
¶¶ 
(
¶¶ 
int
¶¶ 
?
¶¶ 
count
¶¶ $
,
¶¶$ %
IReadOnlyList
¶¶& 3
<
¶¶3 4
IHistoryEntry
¶¶4 A
>
¶¶A B
	revisions
¶¶C L
)
¶¶L M
{
ßß 
if
®® 
(
®® 
	revisions
®® 
!=
®®  
null
®®! %
&&
®®& (
	revisions
®®) 2
.
®®2 3
Count
®®3 8
>
®®9 :
$num
®®; <
)
®®< =
{
©© 
instance
™™ 
.
™™ 
Update
™™ #
(
™™# $
	revisions
™™$ -
[
™™- .
$num
™™. /
]
™™/ 0
.
™™0 1

RevisionId
™™1 ;
,
™™; <
true
™™= A
)
™™A B
;
™™B C
}
´´ 
else
¨¨ 
{
≠≠ 
Debug
ÆÆ 
.
ÆÆ 
LogError
ÆÆ "
(
ÆÆ" #
$str
ÆÆ# U
)
ÆÆU V
;
ÆÆV W
}
ØØ 
}
∞∞ 
}
±± 	
public
¥¥ 
void
¥¥ 
RequestCancelJob
¥¥ $
(
¥¥$ %
)
¥¥% &
{
µµ 	
instance
∂∂ 
.
∂∂ 
	CancelJob
∂∂ 
(
∂∂ 
$num
∂∂  
)
∂∂  !
;
∂∂! "
}
∑∑ 	
public
∫∫ 
virtual
∫∫ 
void
∫∫ 
ShowServicePage
∫∫ +
(
∫∫+ ,
)
∫∫, -
{
ªª 	
SettingsService
ºº 
.
ºº !
OpenProjectSettings
ºº /
(
ºº/ 0
$str
ºº0 N
)
ººN O
;
ººO P
}
ΩΩ 	
public
¿¿ 
void
¿¿ 
ShowLoginPage
¿¿ !
(
¿¿! "
)
¿¿" #
{
¡¡ 	
UnityConnect
¬¬ 
.
¬¬ 
instance
¬¬ !
.
¬¬! "
	ShowLogin
¬¬" +
(
¬¬+ ,
)
¬¬, -
;
¬¬- .
}
√√ 	
public
∆∆ 
void
∆∆ 
ShowNoSeatPage
∆∆ "
(
∆∆" #
)
∆∆# $
{
«« 	
var
»» 
unityConnect
»» 
=
»» 
UnityConnect
»» +
.
»»+ ,
instance
»», 4
;
»»4 5
var
…… 
env
…… 
=
…… 
unityConnect
…… "
.
……" #
GetEnvironment
……# 1
(
……1 2
)
……2 3
;
……3 4
if
ÀÀ 
(
ÀÀ 
env
ÀÀ 
==
ÀÀ 
$str
ÀÀ #
)
ÀÀ# $
env
ÃÃ 
=
ÃÃ 
$str
ÃÃ 
;
ÃÃ 
else
ÕÕ 
env
ŒŒ 
+=
ŒŒ 
$str
ŒŒ 
;
ŒŒ 
var
–– 
url
–– 
=
–– 
$str
––  
+
––! "
env
––# &
+
––' (
k_KServiceUrl
––) 6
+
—— 
$str
—— 
+
—— 
unityConnect
—— )
.
——) *
GetOrganizationId
——* ;
(
——; <
)
——< =
+
““ 
$str
““ 
+
““  
unityConnect
““! -
.
““- .
GetProjectName
““. <
(
““< =
)
““= >
+
”” 
$str
”” !
;
””! "
Application
‘‘ 
.
‘‘ 
OpenURL
‘‘ 
(
‘‘  
url
‘‘  #
)
‘‘# $
;
‘‘$ %
}
’’ 	
public
ÿÿ 
async
ÿÿ 
void
ÿÿ "
RequestTurnOnService
ÿÿ .
(
ÿÿ. /
)
ÿÿ/ 0
{
ŸŸ 	
try
⁄⁄ 
{
€€ 
await
‹‹ *
RequestTurnOnServiceInternal
‹‹ 2
(
‹‹2 3
)
‹‹3 4
;
‹‹4 5
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
	Exception
ﬁﬁ 
e
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 
Debug
‡‡ 
.
‡‡ 
LogException
‡‡ "
(
‡‡" #
e
‡‡# $
)
‡‡$ %
;
‡‡% &
}
·· 
}
‚‚ 	
	protected
‰‰ 
async
‰‰ 
Task
‰‰ *
RequestTurnOnServiceInternal
‰‰ 9
(
‰‰9 :
)
‰‰: ;
{
ÂÂ 	
Assert
ÊÊ 
.
ÊÊ 
IsTrue
ÊÊ 
(
ÊÊ 
	Threading
ÊÊ #
.
ÊÊ# $
IsMainThread
ÊÊ$ 0
,
ÊÊ0 1
$str
ÊÊ2 X
)
ÊÊX Y
;
ÊÊY Z
var
ÈÈ 
http
ÈÈ 
=
ÈÈ 
new
ÈÈ 
HttpClientHandler
ÈÈ ,
{
ÈÈ- .
CookieContainer
ÈÈ/ >
=
ÈÈ? @
new
ÈÈA D
CookieContainer
ÈÈE T
(
ÈÈT U
)
ÈÈU V
}
ÈÈW X
;
ÈÈX Y
var
ÍÍ 
client
ÍÍ 
=
ÍÍ 
new
ÍÍ 

HttpClient
ÍÍ '
(
ÍÍ' (
http
ÍÍ( ,
)
ÍÍ, -
;
ÍÍ- .
var
ÏÏ 
projectGuid
ÏÏ 
=
ÏÏ 
UnityConnect
ÏÏ *
.
ÏÏ* +
instance
ÏÏ+ 3
.
ÏÏ3 4
projectInfo
ÏÏ4 ?
.
ÏÏ? @
projectGUID
ÏÏ@ K
;
ÏÏK L
var
ÌÌ 
accessToken
ÌÌ 
=
ÌÌ 
UnityConnect
ÌÌ *
.
ÌÌ* +
instance
ÌÌ+ 3
.
ÌÌ3 4
GetAccessToken
ÌÌ4 B
(
ÌÌB C
)
ÌÌC D
;
ÌÌD E
client
ÓÓ 
.
ÓÓ #
DefaultRequestHeaders
ÓÓ (
.
ÓÓ( )
Authorization
ÓÓ) 6
=
ÓÓ7 8
new
ÓÓ9 <'
AuthenticationHeaderValue
ÓÓ= V
(
ÓÓV W
$str
ÓÓW _
,
ÓÓ_ `
accessToken
ÓÓa l
)
ÓÓl m
;
ÓÓm n
client
ÔÔ 
.
ÔÔ #
DefaultRequestHeaders
ÔÔ (
.
ÔÔ( )
Accept
ÔÔ) /
.
ÔÔ/ 0
Add
ÔÔ0 3
(
ÔÔ3 4
new
ÔÔ4 7-
MediaTypeWithQualityHeaderValue
ÔÔ8 W
(
ÔÔW X
$str
ÔÔX j
)
ÔÔj k
)
ÔÔk l
;
ÔÔl m
client
 
.
 #
DefaultRequestHeaders
 (
.
( )%
TryAddWithoutValidation
) @
(
@ A
$str
A R
,
R S#
InternalEditorUtility
T i
.
i j!
GetFullUnityVersion
j }
(
} ~
)
~ 
) Ä
;Ä Å
var
ÚÚ 
fullUrl
ÚÚ 
=
ÚÚ 
$"
ÚÚ 
{
ÚÚ 
UnityConnect
ÚÚ )
.
ÚÚ) *
instance
ÚÚ* 2
.
ÚÚ2 3!
GetConfigurationURL
ÚÚ3 F
(
ÚÚF G
CloudConfigUrl
ÚÚG U
.
ÚÚU V
	CloudCore
ÚÚV _
)
ÚÚ_ `
}
ÚÚ` a
/api/projects/
ÚÚa o
{
ÚÚo p
projectGuid
ÚÚp {
}
ÚÚ{ |
/service_flagsÚÚ| ä
"ÚÚä ã
;ÚÚã å
const
ÛÛ 
string
ÛÛ 
json
ÛÛ 
=
ÛÛ 
$str
ÛÛ  N
;
ÛÛN O
var
ÙÙ 
content
ÙÙ 
=
ÙÙ 
new
ÙÙ 
StringContent
ÙÙ +
(
ÙÙ+ ,
json
ÙÙ, 0
,
ÙÙ0 1
Encoding
ÙÙ2 :
.
ÙÙ: ;
UTF8
ÙÙ; ?
,
ÙÙ? @
$str
ÙÙA S
)
ÙÙS T
;
ÙÙT U
var
ˆˆ 
response
ˆˆ 
=
ˆˆ 
await
ˆˆ  
PutAsync
ˆˆ! )
(
ˆˆ) *
client
ˆˆ* 0
,
ˆˆ0 1
fullUrl
ˆˆ2 9
,
ˆˆ9 :
content
ˆˆ; B
)
ˆˆB C
;
ˆˆC D
if
˘˘ 
(
˘˘ 
response
˘˘ 
?
˘˘ 
.
˘˘ 

StatusCode
˘˘ $
==
˘˘% '
HttpStatusCode
˘˘( 6
.
˘˘6 7
OK
˘˘7 9
)
˘˘9 :
{
˙˙ 

SaveAssets
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ "
TurnOnCollabInternal
¸¸ $
(
¸¸$ %
)
¸¸% &
;
¸¸& '
}
˝˝ 
else
ˇˇ 
if
ˇˇ 
(
ˇˇ 
response
ˇˇ 
?
ˇˇ 
.
ˇˇ 

StatusCode
ˇˇ )
==
ˇˇ* ,
HttpStatusCode
ˇˇ- ;
.
ˇˇ; <
	Forbidden
ˇˇ< E
)
ˇˇE F
{
ÄÄ "
ShowCredentialsError
ÅÅ $
(
ÅÅ$ %
)
ÅÅ% &
;
ÅÅ& '
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
ShowGeneralError
ÖÖ  
(
ÖÖ  !
)
ÖÖ! "
;
ÖÖ" #
}
ÜÜ 
}
áá 	
	protected
ââ 
virtual
ââ 
void
ââ 

SaveAssets
ââ )
(
ââ) *
)
ââ* +
{
ää 	
instance
ãã 
.
ãã 

SaveAssets
ãã 
(
ãã  
)
ãã  !
;
ãã! "
}
åå 	
	protected
éé 
virtual
éé 
Task
éé 
<
éé !
HttpResponseMessage
éé 2
>
éé2 3
PutAsync
éé4 <
(
éé< =

HttpClient
éé= G
client
ééH N
,
ééN O
string
ééP V
fullUrl
ééW ^
,
éé^ _
StringContent
éé` m
content
één u
)
ééu v
{
èè 	
return
êê 
client
êê 
.
êê 
PutAsync
êê "
(
êê" #
fullUrl
êê# *
,
êê* +
content
êê, 3
)
êê3 4
;
êê4 5
}
ëë 	
	protected
ìì 
virtual
ìì 
void
ìì "
TurnOnCollabInternal
ìì 3
(
ìì3 4
)
ìì4 5
{
îî 	
instance
ññ 
.
ññ /
!SetCollabEnabledForCurrentProject
ññ 6
(
ññ6 7
true
ññ7 ;
)
ññ; <
;
ññ< =
PlayerSettings
òò 
.
òò $
SetCloudServiceEnabled
òò 1
(
òò1 2
$str
òò2 :
,
òò: ;
true
òò< @
)
òò@ A
;
òòA B
}
ôô 	
	protected
õõ 
virtual
õõ 
void
õõ "
ShowCredentialsError
õõ 3
(
õõ3 4
)
õõ4 5
{
úú 	
Debug
ûû 
.
ûû 
LogError
ûû 
(
ûû 
$str
ûû R
)
ûûR S
;
ûûS T
}
üü 	
	protected
°° 
virtual
°° 
void
°° 
ShowGeneralError
°° /
(
°°/ 0
)
°°0 1
{
¢¢ 	
Debug
§§ 
.
§§ 
LogError
§§ 
(
§§ 
$str
§§ 1
)
§§1 2
;
§§2 3
}
•• 	
IHistoryEntry
∞∞ $
RevisionToHistoryEntry
∞∞ ,
(
∞∞, -
Revision
∞∞- 5
revision
∞∞6 >
)
∞∞> ?
{
±± 	
var
≤≤ 
time
≤≤ 
=
≤≤ 
DateTimeOffset
≤≤ %
.
≤≤% &!
FromUnixTimeSeconds
≤≤& 9
(
≤≤9 :
(
≤≤: ;
long
≤≤; ?
)
≤≤? @
revision
≤≤@ H
.
≤≤H I
	timeStamp
≤≤I R
)
≤≤R S
;
≤≤S T
var
≥≥ 
entries
≥≥ 
=
≥≥ 
revision
≥≥ "
.
≥≥" #
entries
≥≥# *
.
≥≥* +
Select
≥≥+ 1
(
≥≥1 2'
ChangeActionToChangeEntry
≥≥2 K
)
≥≥K L
.
≥≥L M
ToList
≥≥M S
(
≥≥S T
)
≥≥T U
;
≥≥U V
var
¥¥ 
status
¥¥ 
=
¥¥  
HistoryEntryStatus
¥¥ +
.
¥¥+ ,
Ahead
¥¥, 1
;
¥¥1 2
if
µµ 
(
µµ 
revision
µµ 
.
µµ 

isObtained
µµ #
)
µµ# $
status
∂∂ 
=
∂∂  
HistoryEntryStatus
∂∂ +
.
∂∂+ ,
Behind
∂∂, 2
;
∂∂2 3
if
∑∑ 
(
∑∑ 
revision
∑∑ 
.
∑∑ 

revisionID
∑∑ #
==
∑∑$ & 
m_RevisionsService
∑∑' 9
.
∑∑9 :
tipRevision
∑∑: E
)
∑∑E F
status
∏∏ 
=
∏∏  
HistoryEntryStatus
∏∏ +
.
∏∏+ ,
Current
∏∏, 3
;
∏∏3 4
return
ππ 
new
ππ 
HistoryEntry
ππ #
(
ππ# $
revision
ππ$ ,
.
ππ, -

revisionID
ππ- 7
,
ππ7 8
status
ππ9 ?
,
ππ? @
revision
ππA I
.
ππI J
author
ππJ P
,
ππP Q
revision
ππR Z
.
ππZ [
comment
ππ[ b
,
ππb c
time
ππd h
,
ππh i
entries
ππj q
)
ππq r
;
ππr s
}
∫∫ 	
static
¡¡ 
IChangeEntry
¡¡ '
ChangeActionToChangeEntry
¡¡ 5
(
¡¡5 6
ChangeAction
¡¡6 B
action
¡¡C I
)
¡¡I J
{
¬¬ 	
var
√√ 
unmerged
√√ 
=
√√ 
false
√√  
;
√√  !
var
ƒƒ 
status
ƒƒ 
=
ƒƒ 
ChangeEntryStatus
ƒƒ *
.
ƒƒ* +
None
ƒƒ+ /
;
ƒƒ/ 0
switch
≈≈ 
(
≈≈ 
action
≈≈ 
.
≈≈ 
action
≈≈ !
.
≈≈! "
ToLower
≈≈" )
(
≈≈) *
)
≈≈* +
)
≈≈+ ,
{
∆∆ 
case
«« 
$str
«« 
:
«« 
status
»» 
=
»» 
ChangeEntryStatus
»» .
.
»». /
Added
»»/ 4
;
»»4 5
break
…… 
;
…… 
case
   
$str
   
:
    
status
ÀÀ 
=
ÀÀ 
ChangeEntryStatus
ÀÀ .
.
ÀÀ. /
Unmerged
ÀÀ/ 7
;
ÀÀ7 8
unmerged
ÃÃ 
=
ÃÃ 
true
ÃÃ #
;
ÃÃ# $
break
ÕÕ 
;
ÕÕ 
case
ŒŒ 
$str
ŒŒ 
:
ŒŒ 
status
œœ 
=
œœ 
ChangeEntryStatus
œœ .
.
œœ. /
Deleted
œœ/ 6
;
œœ6 7
break
–– 
;
–– 
case
—— 
$str
—— 
:
—— 
status
““ 
=
““ 
ChangeEntryStatus
““ .
.
““. /
Ignored
““/ 6
;
““6 7
break
”” 
;
”” 
case
‘‘ 
$str
‘‘ 
:
‘‘ 
case
’’ 
$str
’’ 
:
’’ 
status
÷÷ 
=
÷÷ 
ChangeEntryStatus
÷÷ .
.
÷÷. /
Renamed
÷÷/ 6
;
÷÷6 7
break
◊◊ 
;
◊◊ 
case
ÿÿ 
$str
ÿÿ 
:
ÿÿ 
status
ŸŸ 
=
ŸŸ 
ChangeEntryStatus
ŸŸ .
.
ŸŸ. /
Modified
ŸŸ/ 7
;
ŸŸ7 8
break
⁄⁄ 
;
⁄⁄ 
default
€€ 
:
€€ 
Debug
‹‹ 
.
‹‹ 
LogError
‹‹ "
(
‹‹" #
$"
‹‹# %#
Unknown file status: 
‹‹% :
{
‹‹: ;
action
‹‹; A
.
‹‹A B
action
‹‹B H
}
‹‹H I
"
‹‹I J
)
‹‹J K
;
‹‹K L
break
›› 
;
›› 
}
ﬁﬁ 
return
‡‡ 
new
‡‡ 
ChangeEntry
‡‡ "
(
‡‡" #
action
‡‡# )
.
‡‡) *
path
‡‡* .
,
‡‡. /
status
‡‡0 6
:
‡‡6 7
status
‡‡8 >
,
‡‡> ?
unmerged
‡‡@ H
:
‡‡H I
unmerged
‡‡J R
)
‡‡R S
;
‡‡S T
}
·· 	
static
ÍÍ 
ChangeEntryStatus
ÍÍ  .
 ChangeEntryStatusFromCollabState
ÍÍ! A
(
ÍÍA B
CollabStates
ÍÍB N
state
ÍÍO T
)
ÍÍT U
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ "
IsCollabStateFlagSet
ÏÏ $
(
ÏÏ$ %
state
ÏÏ% *
,
ÏÏ* +
CollabStates
ÏÏ, 8
.
ÏÏ8 9
kCollabIgnored
ÏÏ9 G
)
ÏÏG H
)
ÏÏH I
{
ÌÌ 
return
ÓÓ 
ChangeEntryStatus
ÓÓ (
.
ÓÓ( )
Ignored
ÓÓ) 0
;
ÓÓ0 1
}
ÔÔ 
if
 
(
 "
IsCollabStateFlagSet
 $
(
$ %
state
% *
,
* +
CollabStates
, 8
.
8 9
kCollabConflicted
9 J
|
K L
CollabStates
M Y
.
Y Z!
kCollabPendingMerge
Z m
)
m n
)
n o
{
ÒÒ 
return
ÚÚ 
ChangeEntryStatus
ÚÚ (
.
ÚÚ( )
Unmerged
ÚÚ) 1
;
ÚÚ1 2
}
ÛÛ 
if
ÙÙ 
(
ÙÙ "
IsCollabStateFlagSet
ÙÙ $
(
ÙÙ$ %
state
ÙÙ% *
,
ÙÙ* +
CollabStates
ÙÙ, 8
.
ÙÙ8 9
kCollabAddedLocal
ÙÙ9 J
)
ÙÙJ K
)
ÙÙK L
{
ıı 
return
ˆˆ 
ChangeEntryStatus
ˆˆ (
.
ˆˆ( )
Added
ˆˆ) .
;
ˆˆ. /
}
˜˜ 
if
¯¯ 
(
¯¯ "
IsCollabStateFlagSet
¯¯ $
(
¯¯$ %
state
¯¯% *
,
¯¯* +
CollabStates
¯¯, 8
.
¯¯8 9
kCollabMovedLocal
¯¯9 J
)
¯¯J K
)
¯¯K L
{
˘˘ 
return
˙˙ 
ChangeEntryStatus
˙˙ (
.
˙˙( )
Renamed
˙˙) 0
;
˙˙0 1
}
˚˚ 
if
¸¸ 
(
¸¸ "
IsCollabStateFlagSet
¸¸ $
(
¸¸$ %
state
¸¸% *
,
¸¸* +
CollabStates
¸¸, 8
.
¸¸8 9!
kCollabDeletedLocal
¸¸9 L
)
¸¸L M
)
¸¸M N
{
˝˝ 
return
˛˛ 
ChangeEntryStatus
˛˛ (
.
˛˛( )
Deleted
˛˛) 0
;
˛˛0 1
}
ˇˇ 
if
ÄÄ 
(
ÄÄ "
IsCollabStateFlagSet
ÄÄ $
(
ÄÄ$ %
state
ÄÄ% *
,
ÄÄ* +
CollabStates
ÄÄ, 8
.
ÄÄ8 9$
kCollabCheckedOutLocal
ÄÄ9 O
)
ÄÄO P
)
ÄÄP Q
{
ÅÅ 
return
ÇÇ 
ChangeEntryStatus
ÇÇ (
.
ÇÇ( )
Modified
ÇÇ) 1
;
ÇÇ1 2
}
ÉÉ 
return
ÖÖ 
ChangeEntryStatus
ÖÖ $
.
ÖÖ$ %
Unknown
ÖÖ% ,
;
ÖÖ, -
}
ÜÜ 	
static
éé 
bool
éé "
IsCollabStateFlagSet
éé (
(
éé( )
CollabStates
éé) 5
state
éé6 ;
,
éé; <
CollabStates
éé= I
flag
ééJ N
)
ééN O
{
èè 	
return
êê 
(
êê 
state
êê 
&
êê 
flag
êê  
)
êê  !
!=
êê" $
$num
êê% &
;
êê& '
}
ëë 	
static
ìì 
IProgressInfo
ìì $
ProgressInfoFromCollab
ìì 3
(
ìì3 4
[
ìì4 5
	CanBeNull
ìì5 >
]
ìì> ?
ProgressInfo
ìì@ L
collabProgress
ììM [
)
ìì[ \
{
îî 	
if
ïï 
(
ïï 
collabProgress
ïï 
==
ïï !
null
ïï" &
)
ïï& '
return
ïï( .
null
ïï/ 3
;
ïï3 4
return
ññ 
new
ññ 

Structures
ññ !
.
ññ! "
ProgressInfo
ññ" .
(
ññ. /
collabProgress
óó 
.
óó 
title
óó $
,
óó$ %
collabProgress
òò 
.
òò 
	extraInfo
òò (
,
òò( )
collabProgress
ôô 
.
ôô 
currentCount
ôô +
,
ôô+ ,
collabProgress
öö 
.
öö 

totalCount
öö )
,
öö) *
collabProgress
õõ 
.
õõ 
lastErrorString
õõ .
,
õõ. /
collabProgress
úú 
.
úú 
	lastError
úú (
,
úú( )
collabProgress
ùù 
.
ùù 
	canCancel
ùù (
,
ùù( )
collabProgress
ûû 
.
ûû #
isProgressTypePercent
ûû 4
,
ûû4 5
collabProgress
üü 
.
üü 
percentComplete
üü .
)
üü. /
;
üü/ 0
}
†† 	
static
¢¢ 

IErrorInfo
¢¢  
ErrorInfoFromUnity
¢¢ ,
(
¢¢, -
UnityErrorInfo
¢¢- ;
error
¢¢< A
)
¢¢A B
{
££ 	
return
§§ 
new
§§ 
	ErrorInfo
§§  
(
§§  !
error
•• 
.
•• 
code
•• 
,
•• 
error
¶¶ 
.
¶¶ 
priority
¶¶ 
,
¶¶ 
error
ßß 
.
ßß 
	behaviour
ßß 
,
ßß  
error
®® 
.
®® 
msg
®® 
,
®® 
error
©© 
.
©© 
shortMsg
©© 
,
©© 
error
™™ 
.
™™ 
codeStr
™™ 
)
™™ 
;
™™ 
}
´´ 	
enum
ØØ 
CollabErrorCode
ØØ 
{
∞∞ 	
Collab_ErrNone
±± 
=
±± 
$num
±± 
,
±± 
Collab_Error
≤≤ 
,
≤≤ (
Collab_ErrProjectNotLinked
≥≥ &
,
≥≥& '(
Collab_ErrNoSuchRepository
¥¥ &
,
¥¥& '#
Collab_ErrNotLoggedIn
µµ !
,
µµ! "$
Collab_ErrNotConnected
∂∂ "
,
∂∂" #"
Collab_ErrLocalCache
∑∑  
,
∑∑  !#
Collab_ErrNotUpToDate
∏∏ !
,
∏∏! ")
Collab_ErrCannotGetRevision
ππ '
,
ππ' ('
Collab_ErrCannotGetRemote
∫∫ %
,
∫∫% &&
Collab_ErrCannotGetLocal
ªª $
,
ªª$ %#
Collab_ErrInvalidHost
ºº !
,
ºº! "#
Collab_ErrInvalidPort
ΩΩ !
,
ΩΩ! "'
Collab_ErrInvalidRevision
ææ %
,
ææ% &#
Collab_ErrNotSnapshot
øø !
,
øø! "(
Collab_ErrNoSuchRemoteFile
¿¿ &
,
¿¿& ''
Collab_ErrNoSuchLocalFile
¡¡ %
,
¡¡% &%
Collab_ErrJobNotDefined
¬¬ #
,
¬¬# $)
Collab_ErrJobAlreadyRunning
√√ '
,
√√' ('
Collab_ErrAlreadyUpToDate
ƒƒ %
,
ƒƒ% &%
Collab_ErrJobNotRunning
≈≈ #
,
≈≈# $$
Collab_ErrNotSupported
∆∆ "
,
∆∆" #$
Collab_ErrJobCancelled
«« "
,
««" #+
Collab_ErrCannotSubmitChanges
»» )
,
»») *'
Collab_ErrMD5DoesNotMatch
…… %
,
……% &%
Collab_ErrRemoteChanged
   #
,
  # $+
Collab_ErrCannotCreateTempDir
ÀÀ )
,
ÀÀ) *+
Collab_ErrCannotDownloadEntry
ÃÃ )
,
ÃÃ) *(
Collab_ErrCannotCreatePath
ÕÕ &
,
ÕÕ& '(
Collab_ErrCannotCreateFile
ŒŒ &
,
ŒŒ& '&
Collab_ErrCannotCopyFile
œœ $
,
œœ$ %&
Collab_ErrCannotMoveFile
–– $
,
––$ %(
Collab_ErrCannotDeleteFile
—— &
,
——& ')
Collab_ErrCannotGetProjects
““ '
,
““' (-
Collab_ErrCannotRestoreSnapshot
”” +
,
””+ ,+
Collab_ErrFileWasAddedLocally
‘‘ )
,
‘‘) *&
Collab_ErrFileIsModified
’’ $
,
’’$ %%
Collab_ErrFileIsMissing
÷÷ #
,
÷÷# $)
Collab_ErrFileAlreadyExists
◊◊ '
,
◊◊' (3
%Collab_ErrAutomaticMergeBaseIsMissing
ÿÿ 1
,
ÿÿ1 2+
Collab_ErrSmartMergeConflicts
ŸŸ )
,
ŸŸ) **
Collab_ErrTextMergeConflicts
⁄⁄ (
,
⁄⁄( )&
Collab_ErrAutomaticMerge
€€ $
,
€€$ %"
Collab_ErrSmartMerge
‹‹  
,
‹‹  !!
Collab_ErrTextMerge
›› 
,
››  $
Collab_ErrExternalDiff
ﬁﬁ "
,
ﬁﬁ" #%
Collab_ErrExternalMerge
ﬂﬂ #
,
ﬂﬂ# $!
Collab_ErrParseJson
‡‡ 
,
‡‡  .
 Collab_ErrWrongSerializationMode
·· ,
,
··, -'
Collab_ErrNoDiffRevisions
‚‚ %
,
‚‚% &(
Collab_ErrWorkspaceChanged
„„ &
,
„„& ',
Collab_ErrRefreshChannelAccess
‰‰ *
,
‰‰* +(
Collab_ErrUpdateInProgress
ÂÂ &
,
ÂÂ& '+
Collab_ErrSoftLocksJobRunning
ÊÊ )
,
ÊÊ) **
Collab_ErrCannotGetSoftLocks
ÁÁ (
,
ÁÁ( )%
Collab_ErrPostSoftLocks
ËË #
,
ËË# $(
Collab_ErrRequestCancelled
ÈÈ &
,
ÈÈ& '*
Collab_ErrCollabInErrorState
ÍÍ (
,
ÍÍ( )%
Collab_ErrUsageExceeded
ÎÎ #
,
ÎÎ# $(
Collab_ErrRepositoryLocked
ÏÏ &
,
ÏÏ& '-
Collab_ErrJobWaitingForSubTasks
ÌÌ +
,
ÌÌ+ ,"
Collab_ErrBadRequest
ÓÓ  
=
ÓÓ! "
$num
ÓÓ# &
,
ÓÓ& '%
Collab_ErrNotAuthorized
ÔÔ #
=
ÔÔ$ %
$num
ÔÔ& )
,
ÔÔ) *+
Collab_ErrInternalServerError
 )
=
* +
$num
, /
,
/ 0"
Collab_ErrBadGateway
ÒÒ  
=
ÒÒ! "
$num
ÒÒ# &
,
ÒÒ& ')
Collab_ErrServerUnavailable
ÚÚ '
=
ÚÚ( )
$num
ÚÚ* -
,
ÚÚ- .2
$Collab_ErrSmartMergeSetConflictState
ÛÛ 0
,
ÛÛ0 11
#Collab_ErrTextMergeSetConflictState
ÙÙ /
,
ÙÙ/ 05
'Collab_ErrExternalMergeSetConflictState
ıı 3
,
ıı3 42
$Collab_ErrNoDiffMergeToolsConfigured
ˆˆ 0
,
ˆˆ0 1:
,Collab_ErrUnsupportedDiffMergeToolConfigured
˜˜ 8
,
˜˜8 9
Collab_ErrNoSeat
¯¯ 
,
¯¯ $
Collab_ErrNoSeatHidden
˘˘ "
}
˙˙ 	
}
˚˚ 
}¸¸ î
òD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\TabPageComponent.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
abstract 
class 
TabPageComponent #
:$ %
VisualElement& 3
{ 
	protected

 
bool

 
Active

 
{

 
get

  #
;

# $
private

% ,
set

- 0
;

0 1
}

2 3
public 
void 
	SetActive 
( 
bool "
active# )
)) *
{ 	
Active 
= 
active 
; 
if 
( 
Active 
) 
{ 
	SetActive 
( 
) 
; 
} 
else 
{ 
SetInactive 
( 
) 
; 
} 
} 	
	protected   
abstract   
void   
	SetActive    )
(  ) *
)  * +
;  + ,
	protected%% 
abstract%% 
void%% 
SetInactive%%  +
(%%+ ,
)%%, -
;%%- .
}&& 
}''  
íD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ListNotice.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{ 
internal 
class 

ListNotice 
: 
VisualElement  -
{		 
public

 
const

 
string

 
UssClassName

 (
=

) *
$str

+ 8
;

8 9
public 
const 
string &
ListNoticeTextUssClassName 6
=7 8
UssClassName9 E
+F G
$strH P
;P Q
static 
readonly 
string 
k_LayoutPath +
=, -
$". 0
{0 1
CollaborateWindow1 B
.B C

LayoutPathC M
}M N
/N O
{O P
nameofP V
(V W

ListNoticeW a
)a b
}b c
.uxmlc h
"h i
;i j
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U

ListNoticeU _
)_ `
}` a
.ussa e
"e f
;f g
readonly 
Label 
m_Text 
; 
public 

ListNotice 
( 
) 
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )
AssetDatabase 
. 
LoadAssetAtPath )
<) *
VisualTreeAsset* 9
>9 :
(: ;
k_LayoutPath; G
)G H
.H I
	CloneTreeI R
(R S
thisS W
)W X
;X Y
styleSheets 
. 
Add 
( 
AssetDatabase )
.) *
LoadAssetAtPath* 9
<9 :

StyleSheet: D
>D E
(E F
k_StylePathF Q
)Q R
)R S
;S T
m_Text 
= 
this 
. 
Q 
< 
Label !
>! "
(" #
	className# ,
:, -&
ListNoticeTextUssClassName. H
)H I
;I J
} 	
public 
string 
Text 
{ 	
set 
=> 
m_Text 
. 
text 
=  
value! &
;& '
} 	
[   	
UsedImplicitly  	 
]   
public!! 
new!! 
class!! 
UxmlFactory!! $
:!!% &
UxmlFactory!!' 2
<!!2 3

ListNotice!!3 =
>!!= >
{!!? @
}!!A B
}"" 
}## ß)
ëD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\IChangesModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
	interface 
IChangesModel $
:% &
IModel' -
{		 
event 
Action 
UpdatedChangeList &
;& '
event 
Action $
OnUpdatedSelectedChanges -
;- .
event 
Action 
< 
bool 
> 
BusyStatusUpdated ,
;, -
[ 	
NotNull	 
] 
string  
SavedRevisionSummary #
{$ %
get& )
;) *
set+ .
;. /
}0 1
["" 	
NotNull""	 
]"" 
string## 
SavedSearchQuery## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
int(( 
ToggledCount(( 
{(( 
get(( 
;(( 
}((  !
int-- 

TotalCount-- 
{-- 
get-- 
;-- 
}-- 
int22 
ConflictedCount22 
{22 
get22 !
;22! "
}22# $
bool77 

Conflicted77 
{77 
get77 
;77 
}77  
bool<< 
Busy<< 
{<< 
get<< 
;<< 
}<< 
voidAA 
RequestInitialDataAA 
(AA  
)AA  !
;AA! "
boolII 
UpdateEntryToggleII 
(II 
[II  
NotNullII  '
]II' (
stringII) /
pathII0 4
,II4 5
boolII6 :
toggledII; B
)IIB C
;IIC D
[PP 	
NotNullPP	 
]PP 
IReadOnlyListQQ 
<QQ 
IChangeEntryDataQQ &
>QQ& '
GetToggledEntriesQQ( 9
(QQ9 :
[QQ: ;
	CanBeNullQQ; D
]QQD E
stringQQF L
queryQQM R
=QQS T
nullQQU Y
)QQY Z
;QQZ [
[XX 	
NotNullXX	 
]XX 
IReadOnlyListYY 
<YY 
IChangeEntryDataYY &
>YY& '
GetUntoggledEntriesYY( ;
(YY; <
[YY< =
	CanBeNullYY= F
]YYF G
stringYYH N
queryYYO T
=YYU V
nullYYW [
)YY[ \
;YY\ ]
[`` 	
NotNull``	 
]`` 
IReadOnlyListaa 
<aa 
IChangeEntryDataaa &
>aa& '
GetAllEntriesaa( 5
(aa5 6
[aa6 7
	CanBeNullaa7 @
]aa@ A
stringaaB H
queryaaI N
=aaO P
nullaaQ U
)aaU V
;aaV W
[hh 	
NotNullhh	 
]hh 
IReadOnlyListii 
<ii 
IChangeEntryDataii &
>ii& ' 
GetConflictedEntriesii( <
(ii< =
[ii= >
	CanBeNullii> G
]iiG H
stringiiI O
queryiiP U
=iiV W
nulliiX \
)ii\ ]
;ii] ^
voidoo 
RequestDiffChangesoo 
(oo  
[oo  !
NotNulloo! (
]oo( )
stringoo* 0
pathoo1 5
)oo5 6
;oo6 7
voiduu 
RequestDiscarduu 
(uu 
[uu 
NotNulluu $
]uu$ %
IChangeEntryuu& 2
entryuu3 8
)uu8 9
;uu9 :
void{{ 
RequestBulkDiscard{{ 
({{  
[{{  !
NotNull{{! (
]{{( )
IReadOnlyList{{* 7
<{{7 8
IChangeEntry{{8 D
>{{D E
entries{{F M
){{M N
;{{N O
void
ÇÇ 
RequestPublish
ÇÇ 
(
ÇÇ 
[
ÇÇ 
NotNull
ÇÇ $
]
ÇÇ$ %
string
ÇÇ& ,
message
ÇÇ- 4
,
ÇÇ4 5
[
ÇÇ6 7
NotNull
ÇÇ7 >
]
ÇÇ> ?
IReadOnlyList
ÇÇ@ M
<
ÇÇM N
IChangeEntry
ÇÇN Z
>
ÇÇZ [
changes
ÇÇ\ c
)
ÇÇc d
;
ÇÇd e
void
àà .
 RequestShowConflictedDifferences
àà -
(
àà- .
[
àà. /
NotNull
àà/ 6
]
àà6 7
string
àà8 >
path
àà? C
)
ààC D
;
ààD E
void
éé  
RequestChooseMerge
éé 
(
éé  
[
éé  !
NotNull
éé! (
]
éé( )
string
éé* 0
path
éé1 5
)
éé5 6
;
éé6 7
void
îî 
RequestChooseMine
îî 
(
îî 
[
îî  
NotNull
îî  '
]
îî' (
string
îî) /
[
îî/ 0
]
îî0 1
paths
îî2 7
)
îî7 8
;
îî8 9
void
öö !
RequestChooseRemote
öö  
(
öö  !
[
öö! "
NotNull
öö" )
]
öö) *
string
öö+ 1
[
öö1 2
]
öö2 3
paths
öö4 9
)
öö9 :
;
öö: ;
}
õõ 
}úú ◊‡
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\ChangesModel.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
{ 
internal 
class 
ChangesModel 
:  !
IChangesModel" /
{ 
	protected 
readonly "
ISourceControlProvider 1

m_Provider2 <
;< =
public 
event 
Action 
UpdatedChangeList -
;- .
public 
event 
Action $
OnUpdatedSelectedChanges 4
;4 5
public 
event 
Action 
< 
bool  
>  !
BusyStatusUpdated" 3
;3 4
public 
event 
Action 
StateChanged (
;( )
internal 

Dictionary 
< 
string "
," #
IChangeEntryData$ 4
>4 5
	entryData6 ?
;? @
internal   

Dictionary   
<   
string   "
,  " #
bool  $ (
>  ( )
toggledEntries  * 8
;  8 9
IReadOnlyList"" 
<"" 
IChangeEntryData"" &
>""& '
m_Conflicted""( 4
;""4 5
readonly$$ 
ChangeEntryData$$  
	m_AllItem$$! *
;$$* +
readonly&& 
HashSet&& 
<&& 
string&& 
>&&  

m_Requests&&! +
;&&+ ,
const(( 
string(( 
k_RequestNewList(( %
=((& '
$str((( :
;((: ;
public++ 
string++  
SavedRevisionSummary++ *
{+++ ,
get++- 0
;++0 1
set++2 5
;++5 6
}++7 8
public.. 
string.. 
SavedSearchQuery.. &
{..' (
get..) ,
;.., -
set... 1
;..1 2
}..3 4
public11 
int11 
ToggledCount11 
{11  !
get11" %
;11% &
private11' .
set11/ 2
;112 3
}114 5
public44 
int44 

TotalCount44 
{44 
get44  #
;44# $
private44% ,
set44- 0
;440 1
}442 3
public77 
int77 
ConflictedCount77 "
=>77# %
m_Conflicted77& 2
.772 3
Count773 8
;778 9
public:: 
bool:: 

Conflicted:: 
=>:: !

m_Provider::" ,
.::, -
GetConflictedState::- ?
(::? @
)::@ A
;::A B
public== 
bool== 
Busy== 
=>== 

m_Requests== &
.==& '
Count==' ,
!===- /
$num==0 1
;==1 2
public?? 
ChangesModel?? 
(?? "
ISourceControlProvider?? 2
provider??3 ;
)??; <
{@@ 	

m_ProviderAA 
=AA 
providerAA !
;AA! "

m_RequestsBB 
=BB 
newBB 
HashSetBB $
<BB$ %
stringBB% +
>BB+ ,
(BB, -
)BB- .
;BB. /
	m_AllItemCC 
=CC 
newCC 
ChangeEntryDataCC +
{CC, -
EntryCC. 3
=CC4 5
newCC6 9
ChangeEntryCC: E
(CCE F
stringCCF L
.CCL M
EmptyCCM R
)CCR S
,CCS T
AllCCU X
=CCY Z
trueCC[ _
}CC` a
;CCa b
	entryDataDD 
=DD 
newDD 

DictionaryDD &
<DD& '
stringDD' -
,DD- .
IChangeEntryDataDD/ ?
>DD? @
(DD@ A
)DDA B
;DDB C
m_ConflictedEE 
=EE 
newEE 
ListEE #
<EE# $
IChangeEntryDataEE$ 4
>EE4 5
(EE5 6
)EE6 7
;EE7 8
toggledEntriesFF 
=FF 
newFF  

DictionaryFF! +
<FF+ ,
stringFF, 2
,FF2 3
boolFF4 8
>FF8 9
(FF9 :
)FF: ;
;FF; <
SavedSearchQueryGG 
=GG 
stringGG %
.GG% &
EmptyGG& +
;GG+ , 
SavedRevisionSummaryHH  
=HH! "
stringHH# )
.HH) *
EmptyHH* /
;HH/ 0
}II 	
publicLL 
voidLL 
OnStartLL 
(LL 
)LL 
{MM 	

m_ProviderOO 
.OO 
UpdatedChangeListOO (
+=OO) +
OnUpdatedChangeListOO, ?
;OO? @

m_ProviderPP 
.PP %
UpdatedSelectedChangeListPP 0
+=PP1 3(
OnUpdatedSelectedChangesListPP4 P
;PPP Q
}QQ 	
publicTT 
voidTT 
OnStopTT 
(TT 
)TT 
{UU 	

m_ProviderWW 
.WW 
UpdatedChangeListWW (
-=WW) +
OnUpdatedChangeListWW, ?
;WW? @

m_ProviderXX 
.XX %
UpdatedSelectedChangeListXX 0
-=XX1 3(
OnUpdatedSelectedChangesListXX4 P
;XXP Q
}YY 	
public\\ 
void\\ 
RestoreState\\  
(\\  !
IWindowCache\\! -
cache\\. 3
)\\3 4
{]] 	 
SavedRevisionSummary__  
=__! "
cache__# (
.__( )
RevisionSummary__) 8
;__8 9
SavedSearchQuery`` 
=`` 
cache`` $
.``$ %
ChangesSearchValue``% 7
;``7 8
toggledEntriesaa 
=aa 
cacheaa "
.aa" #
SimpleSelectedItemsaa# 6
??aa7 9
newaa: =

Dictionaryaa> H
<aaH I
stringaaI O
,aaO P
boolaaQ U
>aaU V
(aaV W
)aaW X
;aaX Y
StateChangedcc 
?cc 
.cc 
Invokecc  
(cc  !
)cc! "
;cc" #
}dd 	
publicgg 
voidgg 
	SaveStategg 
(gg 
IWindowCachegg *
cachegg+ 0
)gg0 1
{hh 	
cachejj 
.jj 
RevisionSummaryjj !
=jj" # 
SavedRevisionSummaryjj$ 8
;jj8 9
cachekk 
.kk 
ChangesSearchValuekk $
=kk% &
SavedSearchQuerykk' 7
;kk7 8
cachell 
.ll 
SimpleSelectedItemsll %
=ll& '
newll( +#
SelectedItemsDictionaryll, C
(llC D
toggledEntriesllD R
)llR S
;llS T
}mm 	
voidrr 
OnUpdatedChangeListrr  
(rr  !
)rr! "
{ss 	
ifuu 
(uu 
!uu 

AddRequestuu 
(uu 
k_RequestNewListuu ,
)uu, -
)uu- .
returnuu/ 5
;uu5 6

m_Providervv 
.vv 
RequestChangeListvv (
(vv( ) 
OnReceivedChangeListvv) =
)vv= >
;vv> ?
}ww 	
voidyy (
OnUpdatedSelectedChangesListyy )
(yy) *
IReadOnlyListyy* 7
<yy7 8
stringyy8 >
>yy> ?
listyy@ D
)yyD E
{zz 	
ToggleAllEntries{{ 
({{ 
false{{ "
){{" #
;{{# $
foreach|| 
(|| 
var|| 
path|| 
in||  
list||! %
)||% &
{}} 
UpdateEntryToggle~~ !
(~~! "
path~~" &
,~~& '
true~~( ,
)~~, -
;~~- .
} &
OnUpdatedSelectedChanges
ÅÅ $
?
ÅÅ$ %
.
ÅÅ% &
Invoke
ÅÅ& ,
(
ÅÅ, -
)
ÅÅ- .
;
ÅÅ. /
}
ÇÇ 	
void
àà "
OnReceivedChangeList
àà !
(
àà! "
[
àà" #
	CanBeNull
àà# ,
]
àà, -
IReadOnlyList
àà. ;
<
àà; <
IChangeEntry
àà< H
>
ààH I
list
ààJ N
)
ààN O
{
ââ 	
if
ää 
(
ää 
list
ää 
!=
ää 
null
ää 
)
ää 
{
ãã 
UpdateChangeList
åå  
(
åå  !
list
åå! %
)
åå% &
;
åå& '
UpdatedChangeList
çç !
?
çç! "
.
çç" #
Invoke
çç# )
(
çç) *
)
çç* +
;
çç+ ,
}
éé 
else
èè 
{
êê 
Debug
ëë 
.
ëë 
LogError
ëë 
(
ëë 
$str
ëë D
)
ëëD E
;
ëëE F
}
íí 
RemoveRequest
îî 
(
îî 
k_RequestNewList
îî *
)
îî* +
;
îî+ ,
}
ïï 	
internal
õõ 
virtual
õõ 
void
õõ 
UpdateChangeList
õõ .
(
õõ. /
[
õõ/ 0
NotNull
õõ0 7
]
õõ7 8
IReadOnlyList
õõ9 F
<
õõF G
IChangeEntry
õõG S
>
õõS T
list
õõU Y
)
õõY Z
{
úú 	

TotalCount
ùù 
=
ùù 
list
ùù 
.
ùù 
Count
ùù #
;
ùù# $
var
†† 
newEntryData
†† 
=
†† 
new
†† "

Dictionary
††# -
<
††- .
string
††. 4
,
††4 5
IChangeEntryData
††6 F
>
††F G
{
††H I
[
††J K
string
††K Q
.
††Q R
Empty
††R W
]
††W X
=
††Y Z
	m_AllItem
††[ d
}
††e f
;
††f g
var
°° 
newToggledEntries
°° !
=
°°" #
new
°°$ '

Dictionary
°°( 2
<
°°2 3
string
°°3 9
,
°°9 :
bool
°°; ?
>
°°? @
(
°°@ A
)
°°A B
;
°°B C
var
¢¢ 

conflicted
¢¢ 
=
¢¢ 
new
¢¢  
List
¢¢! %
<
¢¢% &
IChangeEntryData
¢¢& 6
>
¢¢6 7
(
¢¢7 8
)
¢¢8 9
;
¢¢9 :
var
§§ 
all
§§ 
=
§§ 
	m_AllItem
§§ 
.
§§  
Toggled
§§  '
;
§§' (
var
•• 
toggledCount
•• 
=
•• 
$num
••  
;
••  !
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
entry
¶¶ 
in
¶¶ !
list
¶¶" &
)
¶¶& '
{
ßß 
toggledEntries
©© 
.
©© 
TryGetValue
©© *
(
©©* +
entry
©©+ 0
.
©©0 1
Path
©©1 5
,
©©5 6
out
©©7 :
var
©©; >
toggled
©©? F
)
©©F G
;
©©G H
toggled
™™ 
=
™™ 
toggled
™™ !
||
™™" $
all
™™% (
||
™™) +
entry
™™, 1
.
™™1 2
Staged
™™2 8
;
™™8 9
newToggledEntries
´´ !
[
´´! "
entry
´´" '
.
´´' (
Path
´´( ,
]
´´, -
=
´´. /
toggled
´´0 7
;
´´7 8
var
ÆÆ 
item
ÆÆ 
=
ÆÆ 
new
ÆÆ 
ChangeEntryData
ÆÆ .
{
ÆÆ/ 0
Entry
ÆÆ1 6
=
ÆÆ7 8
entry
ÆÆ9 >
,
ÆÆ> ?
Toggled
ÆÆ@ G
=
ÆÆH I
toggled
ÆÆJ Q
}
ÆÆR S
;
ÆÆS T
newEntryData
ØØ 
.
ØØ 
Add
ØØ  
(
ØØ  !
entry
ØØ! &
.
ØØ& '
Path
ØØ' +
,
ØØ+ ,
item
ØØ- 1
)
ØØ1 2
;
ØØ2 3
if
≤≤ 
(
≤≤ 
toggled
≤≤ 
)
≤≤ 
{
≥≥ 
toggledCount
¥¥  
++
¥¥  "
;
¥¥" #
}
µµ 
if
∂∂ 
(
∂∂ 
entry
∂∂ 
.
∂∂ 
Unmerged
∂∂ "
)
∂∂" #
{
∑∑ 

conflicted
∏∏ 
.
∏∏ 
Add
∏∏ "
(
∏∏" #
item
∏∏# '
)
∏∏' (
;
∏∏( )
}
ππ 
}
∫∫ 
	entryData
ΩΩ 
=
ΩΩ 
newEntryData
ΩΩ $
;
ΩΩ$ %
toggledEntries
ææ 
=
ææ 
newToggledEntries
ææ .
;
ææ. /
ToggledCount
øø 
=
øø 
toggledCount
øø '
;
øø' (
m_Conflicted
¿¿ 
=
¿¿ 

conflicted
¿¿ %
;
¿¿% &!
UpdateAllItemToggle
¬¬ 
(
¬¬  
)
¬¬  !
;
¬¬! "
}
√√ 	
public
∆∆ 
virtual
∆∆ 
bool
∆∆ 
UpdateEntryToggle
∆∆ -
(
∆∆- .
string
∆∆. 4
path
∆∆5 9
,
∆∆9 :
bool
∆∆; ?
toggled
∆∆@ G
)
∆∆G H
{
«« 	
var
»» 
entry
»» 
=
»» 
(
»» 
ChangeEntryData
»» (
)
»»( )
	entryData
»») 2
[
»»2 3
path
»»3 7
]
»»7 8
;
»»8 9
if
ÀÀ 
(
ÀÀ 
entry
ÀÀ 
.
ÀÀ 
All
ÀÀ 
)
ÀÀ 
{
ÃÃ 
return
ÕÕ 
ToggleAllEntries
ÕÕ '
(
ÕÕ' (
toggled
ÕÕ( /
)
ÕÕ/ 0
;
ÕÕ0 1
}
ŒŒ 
if
—— 
(
—— 
entry
—— 
.
—— 
Toggled
—— 
&&
——  
!
——! "
toggled
——" )
)
——) *
{
““ 
ToggledCount
”” 
--
”” 
;
”” 
}
‘‘ 
else
’’ 
if
’’ 
(
’’ 
!
’’ 
entry
’’ 
.
’’ 
Toggled
’’ #
&&
’’$ &
toggled
’’' .
)
’’. /
{
÷÷ 
ToggledCount
◊◊ 
++
◊◊ 
;
◊◊ 
}
ÿÿ 
toggledEntries
€€ 
[
€€ 
entry
€€  
.
€€  !
Entry
€€! &
.
€€& '
Path
€€' +
]
€€+ ,
=
€€- .
toggled
€€/ 6
;
€€6 7
entry
‹‹ 
.
‹‹ 
Toggled
‹‹ 
=
‹‹ 
toggled
‹‹ #
;
‹‹# $
return
ﬂﬂ !
UpdateAllItemToggle
ﬂﬂ &
(
ﬂﬂ& '
)
ﬂﬂ' (
;
ﬂﬂ( )
}
‡‡ 	
public
„„ 
IReadOnlyList
„„ 
<
„„ 
IChangeEntryData
„„ -
>
„„- .
GetToggledEntries
„„/ @
(
„„@ A
string
„„A G
query
„„H M
=
„„N O
null
„„P T
)
„„T U
{
‰‰ 	
query
ÊÊ 
=
ÊÊ 
StringUtility
ÊÊ !
.
ÊÊ! "
TrimAndToLower
ÊÊ" 0
(
ÊÊ0 1
query
ÊÊ1 6
)
ÊÊ6 7
;
ÊÊ7 8
return
ÁÁ 
	entryData
ÁÁ 
.
ÁÁ 
Values
ÁÁ #
.
ÁÁ# $
Where
ÁÁ$ )
(
ÁÁ) *
e
ÁÁ* +
=>
ÁÁ, .
!
ÁÁ/ 0
e
ÁÁ0 1
.
ÁÁ1 2
All
ÁÁ2 5
&&
ÁÁ6 8
e
ÁÁ9 :
.
ÁÁ: ;
Toggled
ÁÁ; B
&&
ÁÁC E
e
ÁÁF G
.
ÁÁG H
Entry
ÁÁH M
.
ÁÁM N
Path
ÁÁN R
.
ÁÁR S
ToLower
ÁÁS Z
(
ÁÁZ [
)
ÁÁ[ \
.
ÁÁ\ ]
Contains
ÁÁ] e
(
ÁÁe f
query
ÁÁf k
)
ÁÁk l
)
ÁÁl m
.
ÁÁm n
ToList
ÁÁn t
(
ÁÁt u
)
ÁÁu v
;
ÁÁv w
}
ËË 	
public
ÎÎ 
IReadOnlyList
ÎÎ 
<
ÎÎ 
IChangeEntryData
ÎÎ -
>
ÎÎ- .!
GetUntoggledEntries
ÎÎ/ B
(
ÎÎB C
string
ÎÎC I
query
ÎÎJ O
=
ÎÎP Q
null
ÎÎR V
)
ÎÎV W
{
ÏÏ 	
query
ÓÓ 
=
ÓÓ 
StringUtility
ÓÓ !
.
ÓÓ! "
TrimAndToLower
ÓÓ" 0
(
ÓÓ0 1
query
ÓÓ1 6
)
ÓÓ6 7
;
ÓÓ7 8
return
ÔÔ 
	entryData
ÔÔ 
.
ÔÔ 
Values
ÔÔ #
.
ÔÔ# $
Where
ÔÔ$ )
(
ÔÔ) *
e
ÔÔ* +
=>
ÔÔ, .
!
ÔÔ/ 0
e
ÔÔ0 1
.
ÔÔ1 2
All
ÔÔ2 5
&&
ÔÔ6 8
!
ÔÔ9 :
e
ÔÔ: ;
.
ÔÔ; <
Toggled
ÔÔ< C
&&
ÔÔD F
e
ÔÔG H
.
ÔÔH I
Entry
ÔÔI N
.
ÔÔN O
Path
ÔÔO S
.
ÔÔS T
ToLower
ÔÔT [
(
ÔÔ[ \
)
ÔÔ\ ]
.
ÔÔ] ^
Contains
ÔÔ^ f
(
ÔÔf g
query
ÔÔg l
)
ÔÔl m
)
ÔÔm n
.
ÔÔn o
ToList
ÔÔo u
(
ÔÔu v
)
ÔÔv w
;
ÔÔw x
}
 	
public
ÛÛ 
IReadOnlyList
ÛÛ 
<
ÛÛ 
IChangeEntryData
ÛÛ -
>
ÛÛ- .
GetAllEntries
ÛÛ/ <
(
ÛÛ< =
string
ÛÛ= C
query
ÛÛD I
=
ÛÛJ K
null
ÛÛL P
)
ÛÛP Q
{
ÙÙ 	
query
ˆˆ 
=
ˆˆ 
StringUtility
ˆˆ !
.
ˆˆ! "
TrimAndToLower
ˆˆ" 0
(
ˆˆ0 1
query
ˆˆ1 6
)
ˆˆ6 7
;
ˆˆ7 8
return
˜˜ 
	entryData
˜˜ 
.
˜˜ 
Values
˜˜ #
.
˜˜# $
Where
˜˜$ )
(
˜˜) *
e
˜˜* +
=>
˜˜, .
e
˜˜/ 0
.
˜˜0 1
Entry
˜˜1 6
.
˜˜6 7
Path
˜˜7 ;
.
˜˜; <
ToLower
˜˜< C
(
˜˜C D
)
˜˜D E
.
˜˜E F
Contains
˜˜F N
(
˜˜N O
query
˜˜O T
)
˜˜T U
)
˜˜U V
.
˜˜V W
ToList
˜˜W ]
(
˜˜] ^
)
˜˜^ _
;
˜˜_ `
}
¯¯ 	
public
˚˚ 
IReadOnlyList
˚˚ 
<
˚˚ 
IChangeEntryData
˚˚ -
>
˚˚- ."
GetConflictedEntries
˚˚/ C
(
˚˚C D
string
˚˚D J
query
˚˚K P
=
˚˚Q R
null
˚˚S W
)
˚˚W X
{
¸¸ 	
query
˛˛ 
=
˛˛ 
StringUtility
˛˛ !
.
˛˛! "
TrimAndToLower
˛˛" 0
(
˛˛0 1
query
˛˛1 6
)
˛˛6 7
;
˛˛7 8
return
ˇˇ 
	entryData
ˇˇ 
.
ˇˇ 
Values
ˇˇ #
.
ˇˇ# $
Where
ˇˇ$ )
(
ˇˇ) *
e
ˇˇ* +
=>
ˇˇ, .
!
ˇˇ/ 0
e
ˇˇ0 1
.
ˇˇ1 2
All
ˇˇ2 5
&&
ˇˇ6 8
e
ˇˇ9 :
.
ˇˇ: ;

Conflicted
ˇˇ; E
&&
ˇˇF H
e
ˇˇI J
.
ˇˇJ K
Entry
ˇˇK P
.
ˇˇP Q
Path
ˇˇQ U
.
ˇˇU V
ToLower
ˇˇV ]
(
ˇˇ] ^
)
ˇˇ^ _
.
ˇˇ_ `
Contains
ˇˇ` h
(
ˇˇh i
query
ˇˇi n
)
ˇˇn o
)
ˇˇo p
.
ÄÄ 
ToList
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
bool
àà !
UpdateAllItemToggle
àà  
(
àà  !
)
àà! "
{
ââ 	
var
ãã 
allItemToggled
ãã 
=
ãã  
	m_AllItem
ãã! *
.
ãã* +
Toggled
ãã+ 2
;
ãã2 3
if
çç 
(
çç 
	entryData
çç 
.
çç 
Count
çç 
==
çç  "
$num
çç# $
)
çç$ %
return
çç& ,
false
çç- 2
;
çç2 3
if
èè 
(
èè 
ToggledCount
èè 
==
èè 
	entryData
èè  )
.
èè) *
Count
èè* /
-
èè0 1
$num
èè2 3
)
èè3 4
{
êê 
toggledEntries
íí 
[
íí 
	m_AllItem
íí (
.
íí( )
Entry
íí) .
.
íí. /
Path
íí/ 3
]
íí3 4
=
íí5 6
true
íí7 ;
;
íí; <
	m_AllItem
ìì 
.
ìì 
Toggled
ìì !
=
ìì" #
true
ìì$ (
;
ìì( )
return
îî 
!
îî 
allItemToggled
îî &
;
îî& '
}
ïï 
toggledEntries
òò 
[
òò 
	m_AllItem
òò $
.
òò$ %
Entry
òò% *
.
òò* +
Path
òò+ /
]
òò/ 0
=
òò1 2
false
òò3 8
;
òò8 9
	m_AllItem
ôô 
.
ôô 
Toggled
ôô 
=
ôô 
false
ôô  %
;
ôô% &
return
öö 
allItemToggled
öö !
;
öö! "
}
õõ 	
bool
¢¢ 
ToggleAllEntries
¢¢ 
(
¢¢ 
bool
¢¢ "
toggled
¢¢# *
)
¢¢* +
{
££ 	
toggledEntries
•• 
.
•• 
Keys
•• 
.
••  
ToList
••  &
(
••& '
)
••' (
.
••( )
ForEach
••) 0
(
••0 1
x
••1 2
=>
••3 5
toggledEntries
••6 D
[
••D E
x
••E F
]
••F G
=
••H I
toggled
••J Q
)
••Q R
;
••R S
if
®® 
(
®® 
toggled
®® 
)
®® 
{
©© 
ToggledCount
™™ 
=
™™ 
	entryData
™™ (
.
™™( )
Count
™™) .
-
™™/ 0
$num
™™1 2
;
™™2 3
}
´´ 
else
¨¨ 
{
≠≠ 
ToggledCount
ÆÆ 
=
ÆÆ 
$num
ÆÆ  
;
ÆÆ  !
}
ØØ 
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
kv
≤≤ 
in
≤≤ 
	entryData
≤≤ (
)
≤≤( )
{
≥≥ 
(
¥¥ 
(
¥¥ 
ChangeEntryData
¥¥ !
)
¥¥! "
kv
¥¥" $
.
¥¥$ %
Value
¥¥% *
)
¥¥* +
.
¥¥+ ,
Toggled
¥¥, 3
=
¥¥4 5
toggled
¥¥6 =
;
¥¥= >
}
µµ 
return
∑∑ 
true
∑∑ 
;
∑∑ 
}
∏∏ 	
bool
øø 

AddRequest
øø 
(
øø 
string
øø 
	requestId
øø (
)
øø( )
{
¿¿ 	
if
¡¡ 
(
¡¡ 

m_Requests
¡¡ 
.
¡¡ 
Contains
¡¡ #
(
¡¡# $
	requestId
¡¡$ -
)
¡¡- .
)
¡¡. /
return
¡¡0 6
false
¡¡7 <
;
¡¡< =

m_Requests
¬¬ 
.
¬¬ 
Add
¬¬ 
(
¬¬ 
	requestId
¬¬ $
)
¬¬$ %
;
¬¬% &
if
ƒƒ 
(
ƒƒ 

m_Requests
ƒƒ 
.
ƒƒ 
Count
ƒƒ  
==
ƒƒ! #
$num
ƒƒ$ %
)
ƒƒ% &
BusyStatusUpdated
≈≈ !
?
≈≈! "
.
≈≈" #
Invoke
≈≈# )
(
≈≈) *
true
≈≈* .
)
≈≈. /
;
≈≈/ 0
return
∆∆ 
true
∆∆ 
;
∆∆ 
}
«« 	
void
ÕÕ 
RemoveRequest
ÕÕ 
(
ÕÕ 
string
ÕÕ !
	requestId
ÕÕ" +
)
ÕÕ+ ,
{
ŒŒ 	
Assert
œœ 
.
œœ 
IsTrue
œœ 
(
œœ 

m_Requests
œœ $
.
œœ$ %
Contains
œœ% -
(
œœ- .
	requestId
œœ. 7
)
œœ7 8
,
œœ8 9
$"
œœ: <U
FExpects request to have first been made for it to have been finished: œœ< Ç
{œœÇ É
	requestIdœœÉ å
}œœå ç
"œœç é
)œœé è
;œœè ê

m_Requests
–– 
.
–– 
Remove
–– 
(
–– 
	requestId
–– '
)
––' (
;
––( )
if
““ 
(
““ 

m_Requests
““ 
.
““ 
Count
““  
==
““! #
$num
““$ %
)
““% &
BusyStatusUpdated
”” !
?
””! "
.
””" #
Invoke
””# )
(
””) *
false
””* /
)
””/ 0
;
””0 1
}
‘‘ 	
public
◊◊ 
void
◊◊  
RequestInitialData
◊◊ &
(
◊◊& '
)
◊◊' (
{
ÿÿ 	
if
⁄⁄ 
(
⁄⁄ 
!
⁄⁄ 

AddRequest
⁄⁄ 
(
⁄⁄ 
k_RequestNewList
⁄⁄ ,
)
⁄⁄, -
)
⁄⁄- .
return
⁄⁄/ 5
;
⁄⁄5 6

m_Provider
€€ 
.
€€ 
RequestChangeList
€€ (
(
€€( )"
OnReceivedChangeList
€€) =
)
€€= >
;
€€> ?
}
‹‹ 	
public
ﬂﬂ 
void
ﬂﬂ  
RequestDiffChanges
ﬂﬂ &
(
ﬂﬂ& '
string
ﬂﬂ' -
path
ﬂﬂ. 2
)
ﬂﬂ2 3
{
‡‡ 	

m_Provider
·· 
.
··  
RequestDiffChanges
·· )
(
··) *
path
··* .
)
··. /
;
··/ 0
}
‚‚ 	
public
ÂÂ 
void
ÂÂ 
RequestDiscard
ÂÂ "
(
ÂÂ" #
IChangeEntry
ÂÂ# /
entry
ÂÂ0 5
)
ÂÂ5 6
{
ÊÊ 	

m_Provider
ÁÁ 
.
ÁÁ 
RequestDiscard
ÁÁ %
(
ÁÁ% &
entry
ÁÁ& +
)
ÁÁ+ ,
;
ÁÁ, -
}
ËË 	
public
ÎÎ 
void
ÎÎ  
RequestBulkDiscard
ÎÎ &
(
ÎÎ& '
IReadOnlyList
ÎÎ' 4
<
ÎÎ4 5
IChangeEntry
ÎÎ5 A
>
ÎÎA B
entries
ÎÎC J
)
ÎÎJ K
{
ÏÏ 	

m_Provider
ÌÌ 
.
ÌÌ  
RequestBulkDiscard
ÌÌ )
(
ÌÌ) *
entries
ÌÌ* 1
)
ÌÌ1 2
;
ÌÌ2 3
}
ÓÓ 	
public
ÒÒ 
void
ÒÒ 
RequestPublish
ÒÒ "
(
ÒÒ" #
string
ÒÒ# )
message
ÒÒ* 1
,
ÒÒ1 2
IReadOnlyList
ÒÒ3 @
<
ÒÒ@ A
IChangeEntry
ÒÒA M
>
ÒÒM N
changes
ÒÒO V
)
ÒÒV W
{
ÚÚ 	

m_Provider
ÛÛ 
.
ÛÛ 
RequestPublish
ÛÛ %
(
ÛÛ% &
message
ÛÛ& -
,
ÛÛ- .
changes
ÛÛ/ 6
)
ÛÛ6 7
;
ÛÛ7 8
}
ÙÙ 	
public
˜˜ 
void
˜˜ .
 RequestShowConflictedDifferences
˜˜ 4
(
˜˜4 5
string
˜˜5 ;
path
˜˜< @
)
˜˜@ A
{
¯¯ 	

m_Provider
˘˘ 
.
˘˘ .
 RequestShowConflictedDifferences
˘˘ 7
(
˘˘7 8
path
˘˘8 <
)
˘˘< =
;
˘˘= >
}
˙˙ 	
public
˝˝ 
void
˝˝  
RequestChooseMerge
˝˝ &
(
˝˝& '
string
˝˝' -
path
˝˝. 2
)
˝˝2 3
{
˛˛ 	

m_Provider
ˇˇ 
.
ˇˇ  
RequestChooseMerge
ˇˇ )
(
ˇˇ) *
path
ˇˇ* .
)
ˇˇ. /
;
ˇˇ/ 0
}
ÄÄ 	
public
ÉÉ 
void
ÉÉ 
RequestChooseMine
ÉÉ %
(
ÉÉ% &
string
ÉÉ& ,
[
ÉÉ, -
]
ÉÉ- .
paths
ÉÉ/ 4
)
ÉÉ4 5
{
ÑÑ 	

m_Provider
ÖÖ 
.
ÖÖ 
RequestChooseMine
ÖÖ (
(
ÖÖ( )
paths
ÖÖ) .
)
ÖÖ. /
;
ÖÖ/ 0
}
ÜÜ 	
public
ââ 
void
ââ !
RequestChooseRemote
ââ '
(
ââ' (
string
ââ( .
[
ââ. /
]
ââ/ 0
paths
ââ1 6
)
ââ6 7
{
ää 	

m_Provider
ãã 
.
ãã !
RequestChooseRemote
ãã *
(
ãã* +
paths
ãã+ 0
)
ãã0 1
;
ãã1 2
}
åå 	
class
ëë 
ChangeEntryData
ëë 
:
ëë 
IChangeEntryData
ëë  0
{
íí 	
public
îî 
IChangeEntry
îî 
Entry
îî  %
{
îî& '
get
îî( +
;
îî+ ,
set
îî- 0
;
îî0 1
}
îî2 3
public
óó 
bool
óó 
Toggled
óó 
{
óó  !
get
óó" %
;
óó% &
set
óó' *
;
óó* +
}
óó, -
public
öö 
bool
öö 
All
öö 
{
öö 
get
öö !
;
öö! "
set
öö# &
;
öö& '
}
öö( )
public
ùù 
bool
ùù 
ToggleReadOnly
ùù &
=>
ùù' )
Entry
ùù* /
.
ùù/ 0
Staged
ùù0 6
;
ùù6 7
public
†† 
bool
†† 

Conflicted
†† "
=>
††# %
Entry
††& +
.
††+ ,
Unmerged
††, 4
;
††4 5
}
°° 	
}
¢¢ 
}££ µ
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\IStartPresenter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Presenters" ,
{ 
internal 
	interface 
IStartPresenter &
:' (

IPresenter) 3
{ 
void 
RequestStart 
( 
) 
; 
} 
} º
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\IAdapterObserver.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
.' (
Adapters( 0
{ 
internal 
	interface 
IAdapterObserver '
{ 
void  
NotifyDataSetChanged !
(! "
)" #
;# $
} 
}		 ¥
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Settings\CollabSettings.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Settings" *
{ 
[ 
UsedImplicitly 
] 
internal		 
class		 
CollabSettings		 !
{

 
public 
enum 
DisplayMode 
{ 	
Simple 
, 
Advanced 
} 	
public 
enum 
OpenLocation  
{ 	
Docked 
, 
Window 
} 	
public 
const 
string $
settingRelativeTimestamp 4
=5 6
$str7 S
;S T
public 
const 
string &
settingDefaultOpenLocation 6
=7 8
$str9 V
;V W
}.. 
}// ƒ
®D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Views\Adapters\ListAdapters\BaseListAdapter.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Views" '
.' (
Adapters( 0
.0 1
ListAdapters1 =
{ 
internal 
abstract 
class 
BaseListAdapter +
<+ ,
T, -
>- .
:/ 0
IAdapter1 9
where: ?
T@ A
:B C
VisualElementD Q
{ 
readonly 
List 
< 
IAdapterObserver &
>& '
m_AdapterObservers( :
=; <
new= @
ListA E
<E F
IAdapterObserverF V
>V W
(W X
)X Y
;Y Z
Func 
< 
VisualElement 
> 
IAdapter $
.$ %
MakeItem% -
=>. 0
MakeItem1 9
;9 :
Action 
< 
VisualElement 
, 
int !
>! "
IAdapter# +
.+ ,
BindItem, 4
=>5 7
(8 9
v9 :
,: ;
i< =
)= >
=>? A
BindItemB J
(J K
(K L
TL M
)M N
vN O
,O P
iQ R
)R S
;S T
public 
abstract 
int 
Height "
{# $
get% (
;( )
}* +
	protected## 
abstract## 
T## 
MakeItem## %
(##% &
)##& '
;##' (
	protected** 
abstract** 
void** 
BindItem**  (
(**( )
T**) *
element**+ 2
,**2 3
int**4 7
index**8 =
)**= >
;**> ?
public00 
abstract00 
int00 
GetEntryCount00 )
(00) *
)00* +
;00+ ,
public88 
void88 
RegisterObserver88 $
(88$ %
IAdapterObserver88% 5
observer886 >
)88> ?
{99 	
m_AdapterObservers:: 
.:: 
Add:: "
(::" #
observer::# +
)::+ ,
;::, -
};; 	
publicAA 
voidAA 
DeregisterObserverAA &
(AA& '
IAdapterObserverAA' 7
observerAA8 @
)AA@ A
{BB 	
m_AdapterObserversCC 
.CC 
RemoveCC %
(CC% &
observerCC& .
)CC. /
;CC/ 0
}DD 	
publicII 
voidII  
NotifyDataSetChangedII (
(II( )
)II) *
{JJ 	
foreachKK 
(KK 
varKK 
observerKK !
inKK" $
m_AdapterObserversKK% 7
)KK7 8
{LL 
observerMM 
.MM  
NotifyDataSetChangedMM -
(MM- .
)MM. /
;MM/ 0
}NN 
}OO 	
}PP 
}QQ ﬁ
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Enums\ProjectStatus.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )
Enums) .
{ 
internal 
enum 
ProjectStatus 
{ 
Unbound 
, 
Offline 
, 
Maintenance 
, 
	LoggedOut 
, 
NoSeat		 
,		 
Bound

 
,

 
Loading 
, 
Ready 
} 
} ˇ>
∂D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\ChangeListElements\ConflictedChangeListElement.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
., -
ChangeListEntries- >
{ 
internal 
class '
ConflictedChangeListElement .
:/ 0!
BaseChangeListElement1 F
{		 
public

 
new

 
const

 
string

 
UssClassName

  ,
=

- .
$str

/ O
;

O P
public 
const 
string "
StatusIconUssClassName 2
=3 4
UssClassName5 A
+B C
$strD L
;L M
public 
const 
string "
ShowButtonUssClassName 2
=3 4
UssClassName5 A
+B C
$strD S
;S T
public 
const 
string )
ChooseMergeButtonUssClassName 9
=: ;
UssClassName< H
+I J
$strK b
;b c
public 
const 
string *
ChooseRemoteButtonUssClassName :
=; <
UssClassName= I
+J K
$strL d
;d e
public 
const 
string (
ChooseMineButtonUssClassName 8
=9 :
UssClassName; G
+H I
$strJ `
;` a
public 
readonly 
VisualElement %

statusIcon& 0
;0 1
public 
readonly 

IconButton "

showButton# -
;- .
public 
readonly 

IconButton "
chooseMergeButton# 4
;4 5
public 
readonly 

IconButton "
chooseRemoteButton# 5
;5 6
public 
readonly 

IconButton "
chooseMineButton# 3
;3 4
public '
ConflictedChangeListElement *
(* +
)+ ,
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )

statusIcon 
= 
new 
VisualElement *
(* +
)+ ,
;, -

statusIcon 
. 
AddToClassList %
(% &
IconUssClassName& 6
)6 7
;7 8

statusIcon 
. 
AddToClassList %
(% &"
StatusIconUssClassName& <
)< =
;= >
icons 
. 
Add 
( 

statusIcon  
)  !
;! "

showButton"" 
="" 
new"" 

IconButton"" '
(""' (
)""( )
;"") *

showButton## 
.## 
AddToClassList## %
(##% &

IconButton##& 0
.##0 1
ShowUssClassName##1 A
)##A B
;##B C

showButton$$ 
.$$ 
AddToClassList$$ %
($$% &
ButtonUssClassName$$& 8
)$$8 9
;$$9 :

showButton%% 
.%% 
AddToClassList%% %
(%%% &"
ShowButtonUssClassName%%& <
)%%< =
;%%= >

showButton&& 
.&& 
tooltip&& 
=&&  
StringAssets&&! -
.&&- .
viewDiff&&. 6
;&&6 7
chooseMergeButton(( 
=(( 
new((  #

IconButton(($ .
(((. /
)((/ 0
;((0 1
chooseMergeButton)) 
.)) 
AddToClassList)) ,
()), -

IconButton))- 7
.))7 8
MergeUssClassName))8 I
)))I J
;))J K
chooseMergeButton** 
.** 
AddToClassList** ,
(**, -
ButtonUssClassName**- ?
)**? @
;**@ A
chooseMergeButton++ 
.++ 
AddToClassList++ ,
(++, -)
ChooseMergeButtonUssClassName++- J
)++J K
;++K L
chooseMergeButton,, 
.,, 
tooltip,, %
=,,& '
StringAssets,,( 4
.,,4 5
useMergeTool,,5 A
;,,A B
chooseMineButton.. 
=.. 
new.. "

IconButton..# -
(..- .
)... /
;../ 0
chooseMineButton// 
.// 
AddToClassList// +
(//+ ,

IconButton//, 6
.//6 7"
ChooseMineUssClassName//7 M
)//M N
;//N O
chooseMineButton00 
.00 
AddToClassList00 +
(00+ ,
ButtonUssClassName00, >
)00> ?
;00? @
chooseMineButton11 
.11 
AddToClassList11 +
(11+ ,(
ChooseMineButtonUssClassName11, H
)11H I
;11I J
chooseMineButton22 
.22 
tooltip22 $
=22% &
StringAssets22' 3
.223 4
useMyChanges224 @
;22@ A
chooseRemoteButton44 
=44  
new44! $

IconButton44% /
(44/ 0
)440 1
;441 2
chooseRemoteButton55 
.55 
AddToClassList55 -
(55- .

IconButton55. 8
.558 9$
ChooseRemoteUssClassName559 Q
)55Q R
;55R S
chooseRemoteButton66 
.66 
AddToClassList66 -
(66- .
ButtonUssClassName66. @
)66@ A
;66A B
chooseRemoteButton77 
.77 
AddToClassList77 -
(77- .*
ChooseRemoteButtonUssClassName77. L
)77L M
;77M N
chooseRemoteButton88 
.88 
tooltip88 &
=88' (
StringAssets88) 5
.885 6
useRemoteChanges886 F
;88F G
buttons:: 
.:: 
Add:: 
(:: 

showButton:: "
)::" #
;::# $
buttons;; 
.;; 
Add;; 
(;; 
chooseMergeButton;; )
);;) *
;;;* +
buttons<< 
.<< 
Add<< 
(<< 
chooseMineButton<< (
)<<( )
;<<) *
buttons== 
.== 
Add== 
(== 
chooseRemoteButton== *
)==* +
;==+ ,
}>> 	
public@@ 
override@@ 
void@@ 
	ClearData@@ &
(@@& '
)@@' (
{AA 	
baseBB 
.BB 
	ClearDataBB 
(BB 
)BB 
;BB 

showButtonDD 
.DD !
UnregisterClickEventsDD ,
(DD, -
)DD- .
;DD. /
chooseMergeButtonEE 
.EE !
UnregisterClickEventsEE 3
(EE3 4
)EE4 5
;EE5 6
chooseRemoteButtonFF 
.FF !
UnregisterClickEventsFF 4
(FF4 5
)FF5 6
;FF6 7
chooseMineButtonGG 
.GG !
UnregisterClickEventsGG 2
(GG2 3
)GG3 4
;GG4 5

statusIconII 
.II 
ClearClassListII %
(II% &
)II& '
;II' (

statusIconJJ 
.JJ 
AddToClassListJJ %
(JJ% &
IconUssClassNameJJ& 6
)JJ6 7
;JJ7 8

statusIconKK 
.KK 
AddToClassListKK %
(KK% &"
StatusIconUssClassNameKK& <
)KK< =
;KK= >
}LL 	
[NN 	
UsedImplicitlyNN	 
]NN 
publicOO 
newOO 
classOO 
UxmlFactoryOO $
:OO% &
UxmlFactoryOO' 2
<OO2 3'
ConflictedChangeListElementOO3 N
>OON O
{OOP Q
}OOR S
}PP 
}QQ ¶"
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\ChangeEntry.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
struct 
ChangeEntry 
:  !
IChangeEntry" .
{ 
public 
ChangeEntry 
( 
string !
path" &
=' (
default) 0
,0 1
string2 8
originalPath9 E
=F G
defaultH O
,O P
ChangeEntryStatusQ b
statusc i
=j k
defaultl s
,s t
boolu y
staged	z Ä
=
Å Ç
default
É ä
,
ä ã
bool
å ê
unmerged
ë ô
=
ö õ
default
ú £
,
£ §
object
• ´
tag
¨ Ø
=
∞ ±
default
≤ π
)
π ∫
{ 	
Path		 
=		 
path		 
;		 
OriginalPath

 
=

 
originalPath

 '
;

' (
Status 
= 
status 
; 
Staged 
= 
staged 
; 
Unmerged 
= 
unmerged 
;  
Tag 
= 
tag 
; 
} 	
public 
string 
Path 
{ 
get  
;  !
}" #
public 
string 
OriginalPath "
{# $
get% (
;( )
}* +
public 
ChangeEntryStatus  
Status! '
{( )
get* -
;- .
}/ 0
public 
bool 
Staged 
{ 
get  
;  !
}" #
public 
bool 
Unmerged 
{ 
get "
;" #
}$ %
public 
object 
Tag 
{ 
get 
;  
}! "
public 
string 
StatusToString $
($ %
)% &
{ 	
switch 
( 
Status 
) 
{ 
case 
ChangeEntryStatus &
.& '
Added' ,
:, -
case 
ChangeEntryStatus &
.& '
	Untracked' 0
:0 1
return 
$str "
;" #
case   
ChangeEntryStatus   &
.  & '
Modified  ' /
:  / 0
case!! 
ChangeEntryStatus!! &
.!!& '

TypeChange!!' 1
:!!1 2
return"" 
$str"" #
;""# $
case## 
ChangeEntryStatus## &
.##& '
Deleted##' .
:##. /
return$$ 
$str$$ $
;$$$ %
case%% 
ChangeEntryStatus%% &
.%%& '
Renamed%%' .
:%%. /
case&& 
ChangeEntryStatus&& &
.&&& '
Copied&&' -
:&&- .
return'' 
$str'' "
;''" #
case(( 
ChangeEntryStatus(( &
.((& '
Unmerged((' /
:((/ 0
return)) 
$str)) '
;))' (
case** 
ChangeEntryStatus** &
.**& '
None**' +
:**+ ,
break++ 
;++ 
case,, 
ChangeEntryStatus,, &
.,,& '
Ignored,,' .
:,,. /
break-- 
;-- 
case.. 
ChangeEntryStatus.. &
...& '
Unknown..' .
:... /
break// 
;// 
case00 
ChangeEntryStatus00 &
.00& '
Broken00' -
:00- .
break11 
;11 
default22 
:22 
throw33 
new33 '
ArgumentOutOfRangeException33 9
(339 :
)33: ;
;33; <
}44 
return66 
null66 
;66 
}77 	
}88 
}99 ¥
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\IHistoryEntry.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
enum 
HistoryEntryStatus $
{ 
Ahead 
, 
Current		 
,		 
Behind

 
} 
internal 
	interface 
IHistoryEntry $
{ 
HistoryEntryStatus 
Status !
{" #
get$ '
;' (
}) *
string 

RevisionId 
{ 
get 
;  
}! "
string 

AuthorName 
{ 
get 
;  
}! "
string 
Message 
{ 
get 
; 
} 
DateTimeOffset 
Time 
{ 
get !
;! "
}# $
IReadOnlyList 
< 
IChangeEntry "
>" #
Changes$ +
{, -
get. 1
;1 2
}3 4
string 
GetGotoText 
( 
) 
; 
} 
} æs
ïD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Presenters\MainPresenter.cs
	namespace

 	
Unity


 
.

 
Cloud

 
.

 
Collaborate

 !
.

! "

Presenters

" ,
{ 
internal 
class 
MainPresenter  
:! "
IMainPresenter# 1
{ 
[ 	
NotNull	 
] 
readonly 
	IMainView 
m_View !
;! "
[ 	
NotNull	 
] 
readonly 

IMainModel 
m_Model #
;# $
bool 
m_IsStarted 
; 
const 
string 
k_ErrorOccuredId %
=& '
$str( 7
;7 8
const 
string !
k_ConflictsDetectedId *
=+ ,
$str- A
;A B
const 
string "
k_RevisionsAvailableId +
=, -
$str. C
;C D
public 
MainPresenter 
( 
[ 
NotNull %
]% &
	IMainView' 0
view1 5
,5 6
[7 8
NotNull8 ?
]? @

IMainModelA K
modelL Q
)Q R
{ 	
m_View 
= 
view 
; 
m_Model 
= 
model 
; 
} 	
public   
void   
Start   
(   
)   
{!! 	
Assert"" 
."" 
IsFalse"" 
("" 
m_IsStarted"" &
,""& '
$str""( Q
)""Q R
;""R S
m_IsStarted## 
=## 
true## 
;## 
m_Model&& 
.&&  
ConflictStatusChange&& (
+=&&) +"
OnConflictStatusChange&&, B
;&&B C
m_Model'' 
.'' !
OperationStatusChange'' )
+=''* ,#
OnOperationStatusChange''- D
;''D E
m_Model(( 
.(( #
OperationProgressChange(( +
+=((, .%
OnOperationProgressChange((/ H
;((H I
m_Model)) 
.)) 
ErrorOccurred)) !
+=))" $
OnErrorOccurred))% 4
;))4 5
m_Model** 
.** 
ErrorCleared**  
+=**! #
OnErrorCleared**$ 2
;**2 3
m_Model++ 
.++ -
!RemoteRevisionsAvailabilityChange++ 5
+=++6 8/
#OnRemoteRevisionsAvailabilityChange++9 \
;++\ ]
m_Model,, 
.,, "
BackButtonStateUpdated,, *
+=,,+ -$
OnBackButtonStateUpdated,,. F
;,,F G
m_Model-- 
.-- 
StateChanged--  
+=--! #
OnStateChanged--$ 2
;--2 3
var00 
progressInfo00 
=00 
m_Model00 &
.00& '
ProgressInfo00' 3
;003 4
if11 
(11 
progressInfo11 
!=11 
null11  $
)11$ %
{22 #
OnOperationStatusChange33 '
(33' (
true33( ,
)33, -
;33- .%
OnOperationProgressChange44 )
(44) *
m_Model44* 1
.441 2
ProgressInfo442 >
)44> ?
;44? @
}55 
var88 
	errorInfo88 
=88 
m_Model88 #
.88# $
	ErrorInfo88$ -
;88- .
if99 
(99 
	errorInfo99 
!=99 
null99 !
)99! "
{:: 
OnErrorOccurred;; 
(;;  
	errorInfo;;  )
);;) *
;;;* +
}<< 
else== 
{>> 
OnErrorCleared?? 
(?? 
)??  
;??  !
}@@ "
OnConflictStatusChangeCC "
(CC" #
m_ModelCC# *
.CC* +

ConflictedCC+ 5
)CC5 6
;CC6 7/
#OnRemoteRevisionsAvailabilityChangeDD /
(DD/ 0
m_ModelDD0 7
.DD7 8$
RemoteRevisionsAvailableDD8 P
)DDP Q
;DDQ R
PopulateInitialDataFF 
(FF  
)FF  !
;FF! "
}GG 	
publicJJ 
voidJJ 
StopJJ 
(JJ 
)JJ 
{KK 	
AssertLL 
.LL 
IsTrueLL 
(LL 
m_IsStartedLL %
,LL% &
$strLL' P
)LLP Q
;LLQ R
m_IsStartedMM 
=MM 
falseMM 
;MM  
m_ModelOO 
.OO  
ConflictStatusChangeOO (
-=OO) +"
OnConflictStatusChangeOO, B
;OOB C
m_ModelPP 
.PP !
OperationStatusChangePP )
-=PP* ,#
OnOperationStatusChangePP- D
;PPD E
m_ModelQQ 
.QQ #
OperationProgressChangeQQ +
-=QQ, .%
OnOperationProgressChangeQQ/ H
;QQH I
m_ModelRR 
.RR 
ErrorOccurredRR !
-=RR" $
OnErrorOccurredRR% 4
;RR4 5
m_ModelSS 
.SS 
ErrorClearedSS  
-=SS! #
OnErrorClearedSS$ 2
;SS2 3
m_ModelTT 
.TT -
!RemoteRevisionsAvailabilityChangeTT 5
-=TT6 8/
#OnRemoteRevisionsAvailabilityChangeTT9 \
;TT\ ]
m_ModelUU 
.UU "
BackButtonStateUpdatedUU *
-=UU+ -$
OnBackButtonStateUpdatedUU. F
;UUF G
m_ModelVV 
.VV 
StateChangedVV  
-=VV! #
OnStateChangedVV$ 2
;VV2 3
}WW 	
void\\ 
OnStateChanged\\ 
(\\ 
)\\ 
{]] 	
PopulateInitialData^^ 
(^^  
)^^  !
;^^! "
}__ 	
voiddd 
PopulateInitialDatadd  
(dd  !
)dd! "
{ee 	
m_Viewgg 
.gg 
SetTabgg 
(gg 
m_Modelgg !
.gg! "
CurrentTabIndexgg" 1
)gg1 2
;gg2 3$
OnBackButtonStateUpdatedjj $
(jj$ %
m_Modeljj% ,
.jj, -
GetBackNavigationjj- >
(jj> ?
)jj? @
?jj@ A
.jjA B
textjjB F
)jjF G
;jjG H
}kk 	
publicnn 
IHistoryPresenternn  "
AssignHistoryPresenternn! 7
(nn7 8
IHistoryViewnn8 D
viewnnE I
)nnI J
{oo 	
varpp 
	presenterpp 
=pp 
newpp 
HistoryPresenterpp  0
(pp0 1
viewpp1 5
,pp5 6
m_Modelpp7 >
.pp> ?!
ConstructHistoryModelpp? T
(ppT U
)ppU V
,ppV W
m_ModelppX _
)pp_ `
;pp` a
viewqq 
.qq 
	Presenterqq 
=qq 
	presenterqq &
;qq& '
returnrr 
	presenterrr 
;rr 
}ss 	
publicvv 
IChangesPresentervv  "
AssignChangesPresentervv! 7
(vv7 8
IChangesViewvv8 D
viewvvE I
)vvI J
{ww 	
varxx 
	presenterxx 
=xx 
newxx 
ChangesPresenterxx  0
(xx0 1
viewxx1 5
,xx5 6
m_Modelxx7 >
.xx> ?!
ConstructChangesModelxx? T
(xxT U
)xxU V
,xxV W
m_ModelxxX _
)xx_ `
;xx` a
viewyy 
.yy 
	Presenteryy 
=yy 
	presenteryy &
;yy& '
returnzz 
	presenterzz 
;zz 
}{{ 	
public~~ 
void~~ 
RequestCancelJob~~ $
(~~$ %
)~~% &
{ 	
m_Model
ÄÄ 
.
ÄÄ 
RequestCancelJob
ÄÄ $
(
ÄÄ$ %
)
ÄÄ% &
;
ÄÄ& '
}
ÅÅ 	
public
ÑÑ 
void
ÑÑ 
UpdateTabIndex
ÑÑ "
(
ÑÑ" #
int
ÑÑ# &
index
ÑÑ' ,
)
ÑÑ, -
{
ÖÖ 	
m_Model
ÜÜ 
.
ÜÜ 
CurrentTabIndex
ÜÜ #
=
ÜÜ$ %
index
ÜÜ& +
;
ÜÜ+ ,
}
áá 	
public
ää 
void
ää 
NavigateBack
ää  
(
ää  !
)
ää! "
{
ãã 	
var
çç 
nav
çç 
=
çç 
m_Model
çç 
.
çç 
GetBackNavigation
çç /
(
çç/ 0
)
çç0 1
;
çç1 2
if
éé 
(
éé 
nav
éé 
==
éé 
null
éé 
)
éé 
return
éé #
;
éé# $
m_Model
èè 
.
èè &
UnregisterBackNavigation
èè ,
(
èè, -
nav
èè- 0
.
èè0 1
Value
èè1 6
.
èè6 7
id
èè7 9
)
èè9 :
;
èè: ;
nav
êê 
.
êê 
Value
êê 
.
êê 

backAction
êê  
.
êê  !
Invoke
êê! '
(
êê' (
)
êê( )
;
êê) *
}
ëë 	
void
óó $
OnConflictStatusChange
óó #
(
óó# $
bool
óó$ (
	conflicts
óó) 2
)
óó2 3
{
òò 	
if
ôô 
(
ôô 
	conflicts
ôô 
)
ôô 
{
öö 
m_View
õõ 
.
õõ 
AddAlert
õõ 
(
õõ  #
k_ConflictsDetectedId
õõ  5
,
õõ5 6
AlertBox
õõ7 ?
.
õõ? @

AlertLevel
õõ@ J
.
õõJ K
Alert
õõK P
,
õõP Q
StringAssets
õõR ^
.
õõ^ _
conflictsDetected
õõ_ p
)
õõp q
;
õõq r
}
úú 
else
ùù 
{
ûû 
m_View
üü 
.
üü 
RemoveAlert
üü "
(
üü" ##
k_ConflictsDetectedId
üü# 8
)
üü8 9
;
üü9 :
}
†† 
}
°° 	
void
ßß %
OnOperationStatusChange
ßß $
(
ßß$ %
bool
ßß% )

inProgress
ßß* 4
)
ßß4 5
{
®® 	
if
©© 
(
©© 

inProgress
©© 
)
©© 
{
™™ 
m_View
´´ 
.
´´ "
AddOperationProgress
´´ +
(
´´+ ,
)
´´, -
;
´´- .
}
¨¨ 
else
≠≠ 
{
ÆÆ 
m_View
ØØ 
.
ØØ %
RemoveOperationProgress
ØØ .
(
ØØ. /
)
ØØ/ 0
;
ØØ0 1
}
∞∞ 
}
±± 	
void
∑∑ '
OnOperationProgressChange
∑∑ &
(
∑∑& '
IProgressInfo
∑∑' 4
progressInfo
∑∑5 A
)
∑∑A B
{
∏∏ 	
m_View
ππ 
.
ππ "
SetOperationProgress
ππ '
(
ππ' (
progressInfo
ππ( 4
.
ππ4 5
Title
ππ5 :
,
ππ: ;
progressInfo
ππ< H
.
ππH I
Details
ππI P
,
ππP Q
progressInfo
∫∫ 
.
∫∫  
PercentageComplete
∫∫ /
,
∫∫/ 0
progressInfo
∫∫1 =
.
∫∫= >
CurrentCount
∫∫> J
,
∫∫J K
progressInfo
ªª 
.
ªª 

TotalCount
ªª '
,
ªª' (
progressInfo
ªª) 5
.
ªª5 6$
PercentageProgressType
ªª6 L
,
ªªL M
progressInfo
ªªN Z
.
ªªZ [
	CanCancel
ªª[ d
)
ªªd e
;
ªªe f
}
ºº 	
void
¬¬ 
OnErrorOccurred
¬¬ 
(
¬¬ 

IErrorInfo
¬¬ '
	errorInfo
¬¬( 1
)
¬¬1 2
{
√√ 	
if
ƒƒ 
(
ƒƒ 
	errorInfo
ƒƒ 
.
ƒƒ 
	Behaviour
ƒƒ #
==
ƒƒ$ &
ErrorInfoBehavior
ƒƒ' 8
.
ƒƒ8 9
Alert
ƒƒ9 >
)
ƒƒ> ?
{
≈≈ 
m_View
∆∆ 
.
∆∆ 
AddAlert
∆∆ 
(
∆∆  
k_ErrorOccuredId
∆∆  0
,
∆∆0 1
AlertBox
∆∆2 :
.
∆∆: ;

AlertLevel
∆∆; E
.
∆∆E F
Alert
∆∆F K
,
∆∆K L
	errorInfo
∆∆M V
.
∆∆V W
Message
∆∆W ^
,
∆∆^ _
(
∆∆` a
StringAssets
∆∆a m
.
∆∆m n
clear
∆∆n s
,
∆∆s t
m_Model
∆∆u |
.
∆∆| }

ClearError∆∆} á
)∆∆á à
)∆∆à â
;∆∆â ä
}
«« 
}
»» 	
void
ÕÕ 
OnErrorCleared
ÕÕ 
(
ÕÕ 
)
ÕÕ 
{
ŒŒ 	
m_View
œœ 
.
œœ 
RemoveAlert
œœ 
(
œœ 
k_ErrorOccuredId
œœ /
)
œœ/ 0
;
œœ0 1
}
–– 	
void
÷÷ 1
#OnRemoteRevisionsAvailabilityChange
÷÷ 0
(
÷÷0 1
bool
÷÷1 5&
remoteRevisionsAvailable
÷÷6 N
)
÷÷N O
{
◊◊ 	
if
ÿÿ 
(
ÿÿ &
remoteRevisionsAvailable
ÿÿ (
)
ÿÿ( )
{
ŸŸ 
m_View
⁄⁄ 
.
⁄⁄ 
AddAlert
⁄⁄ 
(
⁄⁄  $
k_RevisionsAvailableId
⁄⁄  6
,
⁄⁄6 7
AlertBox
⁄⁄8 @
.
⁄⁄@ A

AlertLevel
⁄⁄A K
.
⁄⁄K L
Info
⁄⁄L P
,
⁄⁄P Q
StringAssets
⁄⁄R ^
.
⁄⁄^ _(
syncRemoteRevisionsMessage
⁄⁄_ y
,
⁄⁄y z
(
⁄⁄{ |
StringAssets⁄⁄| à
.⁄⁄à â
sync⁄⁄â ç
,⁄⁄ç é
m_Model⁄⁄è ñ
.⁄⁄ñ ó
RequestSync⁄⁄ó ¢
)⁄⁄¢ £
)⁄⁄£ §
;⁄⁄§ •
}
€€ 
else
‹‹ 
{
›› 
m_View
ﬁﬁ 
.
ﬁﬁ 
RemoveAlert
ﬁﬁ "
(
ﬁﬁ" #$
k_RevisionsAvailableId
ﬁﬁ# 9
)
ﬁﬁ9 :
;
ﬁﬁ: ;
}
ﬂﬂ 
}
‡‡ 	
void
ÊÊ &
OnBackButtonStateUpdated
ÊÊ %
(
ÊÊ% &
[
ÊÊ& '
	CanBeNull
ÊÊ' 0
]
ÊÊ0 1
string
ÊÊ2 8
title
ÊÊ9 >
)
ÊÊ> ?
{
ÁÁ 	
if
ËË 
(
ËË 
title
ËË 
==
ËË 
null
ËË 
)
ËË 
{
ÈÈ 
m_View
ÍÍ 
.
ÍÍ !
ClearBackNavigation
ÍÍ *
(
ÍÍ* +
)
ÍÍ+ ,
;
ÍÍ, -
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 
m_View
ÓÓ 
.
ÓÓ #
DisplayBackNavigation
ÓÓ ,
(
ÓÓ, -
title
ÓÓ- 2
)
ÓÓ2 3
;
ÓÓ3 4
}
ÔÔ 
}
 	
}
ÒÒ 
}ÚÚ à;
ñD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\IconTextButton.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{		 
internal

 
class

 
IconTextButton

 !
:

" #
VisualElement

$ 1
{ 
public 
const 
string 
ussClassName (
=) *
$str+ C
;C D
public 
const 
string 
imageUssClassName -
=. /
ussClassName0 <
+= >
$str? H
;H I
public 
const 
string 
textUssClassName ,
=- .
ussClassName/ ;
+< =
$str> F
;F G
static 
readonly 
string 
k_StylePath *
=+ ,
$"- /
{/ 0
CollaborateWindow0 A
.A B
	StylePathB K
}K L
/L M
{M N
nameofN T
(T U
IconTextButtonU c
)c d
}d e
.usse i
"i j
;j k
readonly 
TextElement 
m_TextElement *
;* +
readonly 
VisualElement 
m_Image &
;& '
public 
event 
Action 
Clicked #
;# $
public 
IconTextButton 
( 
) 
:  !
this" &
(& '
null' +
)+ ,
{ 	
} 	
public 
IconTextButton 
( 
[ 
	CanBeNull (
]( )
Action* 0

clickEvent1 ;
=< =
null> B
)B C
{ 	
AddToClassList 
( 
ussClassName '
)' (
;( )
AddToClassList 
( 
Button !
.! "
ussClassName" .
). /
;/ 0
styleSheets   
.   
Add   
(   
AssetDatabase   )
.  ) *
LoadAssetAtPath  * 9
<  9 :

StyleSheet  : D
>  D E
(  E F
k_StylePath  F Q
)  Q R
)  R S
;  S T
Add"" 
("" 
m_Image"" 
="" 
new"" 
Image"" #
(""# $
)""$ %
)""% &
;""& '
Add## 
(## 
m_TextElement## 
=## 
new##  #
TextElement##$ /
(##/ 0
)##0 1
)##1 2
;##2 3
m_Image$$ 
.$$ 
AddToClassList$$ "
($$" #
imageUssClassName$$# 4
)$$4 5
;$$5 6
m_TextElement%% 
.%% 
AddToClassList%% (
(%%( )
textUssClassName%%) 9
)%%9 :
;%%: ;
Clicked(( 
+=(( 

clickEvent(( !
;((! "
this)) 
.)) 
AddManipulator)) 
())  
new))  #
	Clickable))$ -
())- .
OnClick)). 5
)))5 6
)))6 7
;))7 8
}** 	
void,, 
OnClick,, 
(,, 
),, 
{-- 	
Clicked.. 
?.. 
... 
Invoke.. 
(.. 
).. 
;.. 
Blur// 
(// 
)// 
;// 
}00 	
public22 
string22 
Text22 
{33 	
get44 
=>44 
m_TextElement44  
.44  !
text44! %
;44% &
set55 
=>55 
m_TextElement55  
.55  !
text55! %
=55& '
value55( -
;55- .
}66 	
public88 
	Texture2D88 
Image88 
{99 	
get:: 
=>:: 
m_Image:: 
.:: 
style::  
.::  !
backgroundImage::! 0
.::0 1
value::1 6
.::6 7
texture::7 >
;::> ?
set;; 
=>;; 
m_Image;; 
.;; 
style;;  
.;;  !
backgroundImage;;! 0
=;;1 2
value;;3 8
;;;8 9
}<< 	
public>> 
override>> 
bool>> 
canGrabFocus>> )
{>>* +
get>>, /
;>>/ 0
}>>1 2
=>>3 4
true>>5 9
;>>9 :
	protectedDD 
overrideDD 
voidDD (
ExecuteDefaultActionAtTargetDD  <
(DD< =
	EventBaseDD= F
evtDDG J
)DDJ K
{EE 	
baseFF 
.FF (
ExecuteDefaultActionAtTargetFF -
(FF- .
evtFF. 1
)FF1 2
;FF2 3
ifII 
(II 
!II 
(II 
evtII 
isII 
KeyDownEventII %
	downEventII& /
)II/ 0
)II0 1
returnII2 8
;II8 9
ifJJ 
(JJ 
(JJ 
	downEventJJ 
.JJ 
keyCodeJJ "
!=JJ# %
KeyCodeJJ& -
.JJ- .
KeypadEnterJJ. 9
)JJ9 :
&&JJ; =
(JJ> ?
	downEventJJ? H
.JJH I
keyCodeJJI P
!=JJQ S
KeyCodeJJT [
.JJ[ \
ReturnJJ\ b
)JJb c
)JJc d
returnJJe k
;JJk l
ClickedLL 
?LL 
.LL 
InvokeLL 
(LL 
)LL 
;LL 
	downEventMM 
.MM 
StopPropagationMM %
(MM% &
)MM& '
;MM' (
}NN 	
[PP 	
UsedImplicitlyPP	 
]PP 
publicQQ 
newQQ 
classQQ 
UxmlFactoryQQ $
:QQ% &
UxmlFactoryQQ' 2
<QQ2 3
IconTextButtonQQ3 A
,QQA B

UxmlTraitsQQC M
>QQM N
{QQO P
}QQP Q
publicRR 
newRR 
classRR 

UxmlTraitsRR #
:RR$ %
VisualElementRR& 3
.RR3 4

UxmlTraitsRR4 >
{SS 	
readonlyTT *
UxmlStringAttributeDescriptionTT 3
m_TextTT4 :
=TT; <
newTT= @*
UxmlStringAttributeDescriptionTTA _
{TT` a
nameTTb f
=TTg h
$strTTi o
}TTp q
;TTq r
publicVV 
overrideVV 
voidVV  
InitVV! %
(VV% &
VisualElementVV& 3
veVV4 6
,VV6 7
IUxmlAttributesVV8 G
bagVVH K
,VVK L
CreationContextVVM \
ccVV] _
)VV_ `
{WW 
baseXX 
.XX 
InitXX 
(XX 
veXX 
,XX 
bagXX !
,XX! "
ccXX# %
)XX% &
;XX& '
varYY 
fieldYY 
=YY 
(YY 
IconTextButtonYY +
)YY+ ,
veYY, .
;YY. /
fieldZZ 
.ZZ 
TextZZ 
=ZZ 
m_TextZZ #
.ZZ# $
GetValueFromBagZZ$ 3
(ZZ3 4
bagZZ4 7
,ZZ7 8
ccZZ9 ;
)ZZ; <
;ZZ< =
}[[ 
}\\ 	
}]] 
}^^ ±
îD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
'
InternalsVisibleToAttribute &
(& '
$str' F
)F G
]G HÂ(
óD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Components\AdapterListView.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "

Components" ,
{		 
internal

 
class

 
AdapterListView

 "
:

# $
VisualElement

% 2
,

2 3
IAdapterObserver

4 D
{ 
public 
const 
string 
UssClassName (
=) *
$str+ D
;D E
public 
const 
string  
ListViewUssClassName 0
=1 2
UssClassName3 ?
+@ A
$strB O
;O P
IAdapter 
	m_Adapter 
; 
readonly 
ListView 

m_ListView $
;$ %
public 
AdapterListView 
( 
)  
{ 	
AddToClassList 
( 
UssClassName '
)' (
;( )

m_ListView 
= 
new 
ListView %
(% &
)& '
;' (

m_ListView 
. 
style 
. 
flexGrow %
=& '
new( +

StyleFloat, 6
(6 7
$num7 8
)8 9
;9 :

m_ListView 
. 
AddToClassList %
(% & 
ListViewUssClassName& :
): ;
;; <
Add 
( 

m_ListView 
) 
; 
} 	
public   
void   

SetAdapter   
<   
T    
>    !
(  ! "
BaseListAdapter  " 1
<  1 2
T  2 3
>  3 4
adapter  5 <
)  < =
where  > C
T  D E
:  F G
VisualElement  H U
{!! 	
Assert"" 
."" 
IsNull"" 
("" 
	m_Adapter"" #
,""# $
$str""% W
)""W X
;""X Y
	m_Adapter## 
=## 
adapter## 
;##  
	m_Adapter$$ 
.$$ 
RegisterObserver$$ &
($$& '
this$$' +
)$$+ ,
;$$, -

m_ListView%% 
.%% 
makeItem%% 
=%%  !
	m_Adapter%%" +
.%%+ ,
MakeItem%%, 4
;%%4 5

m_ListView&& 
.&& 
bindItem&& 
=&&  !
	m_Adapter&&" +
.&&+ ,
BindItem&&, 4
;&&4 5

m_ListView'' 
.'' 

itemHeight'' !
=''" #
	m_Adapter''$ -
.''- .
Height''. 4
;''4 5 
NotifyDataSetChanged((  
(((  !
)((! "
;((" #
})) 	
public.. 
void.. 
RemoveAdapter.. !
(..! "
).." #
{// 	
Assert00 
.00 
	IsNotNull00 
(00 
	m_Adapter00 &
,00& '
$str00( O
)00O P
;00P Q
	m_Adapter11 
.11 
DeregisterObserver11 (
(11( )
this11) -
)11- .
;11. /

m_ListView22 
.22 
makeItem22 
=22  !
null22" &
;22& '

m_ListView33 
.33 
bindItem33 
=33  !
null33" &
;33& '

m_ListView44 
.44 

itemHeight44 !
=44" #
$num44$ %
;44% &

m_ListView55 
.55 
itemsSource55 "
=55# $
null55% )
;55) *
	m_Adapter66 
=66 
null66 
;66 
}77 	
public<< 
SelectionType<< 
SelectionType<< *
{== 	
set>> 
=>>> 

m_ListView>> 
.>> 
selectionType>> +
=>>, -
value>>. 3
;>>3 4
get?? 
=>?? 

m_ListView?? 
.?? 
selectionType?? +
;??+ ,
}@@ 	
publicEE 
voidEE  
NotifyDataSetChangedEE (
(EE( )
)EE) *
{FF 	

m_ListViewII 
.II 
itemsSourceII "
=II# $
newII% (
boolII) -
[II- .
	m_AdapterII. 7
.II7 8
GetEntryCountII8 E
(IIE F
)IIF G
]IIG H
;IIH I
}JJ 	
publicLL 
voidLL 
ScrollToIndexLL !
(LL! "
intLL" %
idxLL& )
)LL) *
{MM 	

m_ListViewNN 
.NN 
ScrollToItemNN #
(NN# $
idxNN$ '
)NN' (
;NN( )
}OO 	
[QQ 	
UsedImplicitlyQQ	 
]QQ 
publicRR 
newRR 
classRR 
UxmlFactoryRR $
:RR% &
UxmlFactoryRR' 2
<RR2 3
AdapterListViewRR3 B
>RRB C
{RRD E
}RRF G
}SS 
}TT ò
úD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Models\Structures\IProgressInfo.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
Models" (
.( )

Structures) 3
{ 
internal 
	interface 
IProgressInfo $
{ 
string 
Title 
{ 
get 
; 
} 
string 
Details 
{ 
get 
; 
} 
int		 
CurrentCount		 
{		 
get		 
;		 
}		  !
int 

TotalCount 
{ 
get 
; 
} 
string 
LastErrorString 
{  
get! $
;$ %
}& '
ulong 
	LastError 
{ 
get 
; 
}  
bool 
	CanCancel 
{ 
get 
; 
} 
bool "
PercentageProgressType #
{$ %
get& )
;) *
}+ ,
int 
PercentageComplete 
{  
get! $
;$ %
}& '
} 
} ˙7
êD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.collab-proxy@1.3.9\Editor\Utilities\TimeStamp.cs
	namespace 	
Unity
 
. 
Cloud 
. 
Collaborate !
.! "
	Utilities" +
{ 
static 

class 
	TimeStamp 
{ 
public 
static 
bool !
UseRelativeTimeStamps 0
=>1 3!
CollabSettingsManager !
.! "
Get" %
(% &
CollabSettings& 4
.4 5$
settingRelativeTimestamp5 M
,M N
fallbackO W
:W X
trueY ]
)] ^
;^ _
static 
readonly 
string 
[ 
]  

k_UnitsMap! +
=, -
{. /
$str0 6
,6 7
$str8 =
,= >
$str? D
,D E
$strF M
,M N
$strO U
,U V
$strW ]
,] ^
$str_ d
,d e
$strf m
,m n
$stro v
,v w
$strx ~
,~ 
$str
Ä Ö
}
Ü á
;
á à
[ 	
NotNull	 
] 
public 
static 
string 
GetTimeStamp )
() *
DateTimeOffset* 8
dateTime9 A
)A B
{ 	
return!! !
UseRelativeTimeStamps!! (
?"" 
GetElapsedTime""  
(""  !
dateTime""! )
)"") *
:## !
GetLocalisedTimeStamp## '
(##' (
dateTime##( 0
)##0 1
;##1 2
}$$ 	
[++ 	
NotNull++	 
]++ 
public,, 
static,, 
string,, !
GetLocalisedTimeStamp,, 2
(,,2 3
DateTimeOffset,,3 A
dateTime,,B J
),,J K
{-- 	
return.. 
dateTime.. 
... 
ToString.. $
(..$ %
CultureInfo..% 0
...0 1
CurrentCulture..1 ?
...? @
DateTimeFormat..@ N
...N O
FullDateTimePattern..O b
)..b c
;..c d
}// 	
[77 	
NotNull77	 
]77 
static88 
string88 
GetElapsedTime88 $
(88$ %
DateTimeOffset88% 3
dateTime884 <
)88< =
{99 	
var:: 
offset:: 
=:: 
DateTimeOffset:: '
.::' (
Now::( +
.::+ ,
Subtract::, 4
(::4 5
dateTime::5 =
)::= >
;::> ?
var>> 
date>> 
=>> 
DateTimeOffset>> %
.>>% &
MinValue>>& .
+>>/ 0
offset>>1 7
;>>7 8
return@@ 
ProcessPeriod@@  
(@@  !
date@@! %
.@@% &
Year@@& *
-@@+ ,
$num@@- .
,@@. /
date@@0 4
.@@4 5
Month@@5 :
-@@; <
$num@@= >
,@@> ?
$str@@@ F
)@@F G
??AA 
ProcessPeriodAA  
(AA  !
dateAA! %
.AA% &
MonthAA& +
-AA, -
$numAA. /
,AA/ 0
dateAA1 5
.AA5 6
DayAA6 9
-AA: ;
$numAA< =
,AA= >
$strAA? F
)AAF G
??BB 
ProcessPeriodBB  
(BB  !
dateBB! %
.BB% &
DayBB& )
-BB* +
$numBB, -
,BB- .
dateBB/ 3
.BB3 4
HourBB4 8
,BB8 9
$strBB: ?
,BB? @
$strBBA L
)BBL M
??CC 
ProcessPeriodCC  
(CC  !
dateCC! %
.CC% &
HourCC& *
,CC* +
dateCC, 0
.CC0 1
MinuteCC1 7
,CC7 8
$strCC9 ?
)CC? @
??DD 
ProcessPeriodDD  
(DD  !
dateDD! %
.DD% &
MinuteDD& ,
,DD, -
dateDD. 2
.DD2 3
SecondDD3 9
,DD9 :
$strDD; C
)DDC D
??EE 
ProcessPeriodEE  
(EE  !
dateEE! %
.EE% &
SecondEE& ,
,EE, -
$numEE. /
,EE/ 0
$strEE1 9
)EE9 :
??FF 
$strFF 
;FF 
}GG 	
[RR 	
	CanBeNullRR	 
]RR 
staticSS 
stringSS 
ProcessPeriodSS #
(SS# $
intSS$ '
valueSS( -
,SS- .
intSS/ 2
subValueSS3 ;
,SS; <
stringSS= C
nameSSD H
,SSH I
stringSSJ P
singularNameSSQ ]
=SS^ _
nullSS` d
)SSd e
{TT 	
ifVV 
(VV 
valueVV 
==VV 
$numVV 
)VV 
{WW 
returnXX 
nullXX 
;XX 
}YY 
if\\ 
(\\ 
value\\ 
!=\\ 
$num\\ 
)\\ 
{]] 
var__ 
stringValue__ 
=__  !
value__" '
<__( )

k_UnitsMap__) 3
.__3 4
Length__4 :
?__; <

k_UnitsMap__= G
[__G H
value__H M
]__M N
:__O P
value__Q V
.__V W
ToString__W _
(___ `
)__` a
;__a b
return`` 
subValue`` 
==``  "
$num``# $
?aa 
$"aa 
{aa 
stringValueaa $
.aa$ %
FirstCharToUpperaa% 5
(aa5 6
)aa6 7
}aa7 8
{aa9 :
nameaa: >
}aa> ?
s agoaa? D
"aaD E
:bb 
$"bb 
About bb 
{bb 
stringValuebb *
}bb* +
{bb, -
namebb- 1
}bb1 2
s agobb2 7
"bb7 8
;bb8 9
}cc 
ifff 
(ff 
!ff 
stringff 
.ff 
IsNullOrEmptyff %
(ff% &
singularNameff& 2
)ff2 3
)ff3 4
{gg 
returnhh 
singularNamehh #
;hh# $
}ii 
varll 
articleSuffixll 
=ll 
namell  $
[ll$ %
$numll% &
]ll& '
==ll( *
$charll+ .
?ll/ 0
$strll1 4
:ll5 6
stringll7 =
.ll= >
Emptyll> C
;llC D
returnmm 
subValuemm 
==mm 
$nummm  
?nn 
$"nn 
Ann 
{nn 
articleSuffixnn #
}nn# $
{nn% &
namenn& *
}nn* +
 agonn+ /
"nn/ 0
:oo 
$"oo 
About aoo 
{oo 
articleSuffixoo )
}oo) *
{oo+ ,
nameoo, 0
}oo0 1
 agooo1 5
"oo5 6
;oo6 7
}pp 	
}qq 
}rr 