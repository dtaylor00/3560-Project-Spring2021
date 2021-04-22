å
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ "
AssetFileNameExtension 
( 
$str $
)$ %
]% &
public 

class 
SignalAsset 
: 
ScriptableObject /
{ 
internal 
static 
event 
Action $
<$ %
SignalAsset% 0
>0 1
OnEnableCallback2 B
;B C
void 
OnEnable 
( 
) 
{ 	
if 
( 
OnEnableCallback  
!=! #
null$ (
)( )
OnEnableCallback  
(  !
this! %
)% &
;& '
} 	
} 
} ”
 D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\CustomSignalEventDrawer.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class 	#
CustomSignalEventDrawer
 !
:" #
PropertyAttribute$ 5
{6 7
}7 8
} À
¢D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationPreviewUpdateCallback.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class 	*
AnimationPreviewUpdateCallback
 (
:) *%
ITimelineEvaluateCallback+ D
{		 #
AnimationPlayableOutput

 
m_Output

  (
;

( )
PlayableGraph 
m_Graph 
; 
List 
< #
IAnimationWindowPreview $
>$ %
m_PreviewComponents& 9
;9 :
public *
AnimationPreviewUpdateCallback -
(- .#
AnimationPlayableOutput. E
outputF L
)L M
{ 	
m_Output 
= 
output 
; 
Playable 
playable 
= 
m_Output  (
.( )
GetSourcePlayable) :
(: ;
); <
;< =
if 
( 
playable 
. 
IsValid  
(  !
)! "
)" #
{ 
m_Graph 
= 
playable "
." #
GetGraph# +
(+ ,
), -
;- .
} 
} 	
public 
void 
Evaluate 
( 
) 
{ 	
if 
( 
! 
m_Graph 
. 
IsValid  
(  !
)! "
)" #
return 
; 
if 
( 
m_PreviewComponents #
==$ &
null' +
)+ ,"
FetchPreviewComponents &
(& '
)' (
;( )
foreach!! 
(!! 
var!! 
	component!! "
in!!# %
m_PreviewComponents!!& 9
)!!9 :
{"" 
if## 
(## 
	component## 
!=##  
null##! %
)##% &
{$$ 
	component%% 
.%% 
UpdatePreviewGraph%% 0
(%%0 1
m_Graph%%1 8
)%%8 9
;%%9 :
}&& 
}'' 
}(( 	
private** 
void** "
FetchPreviewComponents** +
(**+ ,
)**, -
{++ 	
m_PreviewComponents,, 
=,,  !
new,," %
List,,& *
<,,* +#
IAnimationWindowPreview,,+ B
>,,B C
(,,C D
),,D E
;,,E F
var.. 
animator.. 
=.. 
m_Output.. #
...# $
	GetTarget..$ -
(..- .
)... /
;../ 0
if// 
(// 
animator// 
==// 
null//  
)//  !
return00 
;00 
var22 

gameObject22 
=22 
animator22 %
.22% &

gameObject22& 0
;220 1
m_PreviewComponents33 
.33  
AddRange33  (
(33( )

gameObject33) 3
.333 4
GetComponents334 A
<33A B#
IAnimationWindowPreview33B Y
>33Y Z
(33Z [
)33[ \
)33\ ]
;33] ^
}44 	
}55 
}66 ıÓ
ŠD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelinePlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
internal 
	interface %
ITimelineEvaluateCallback 0
{ 
void 
Evaluate 
( 
) 
; 
} 
class 	"
IntervalTreeRebalancer
  
{ 
private 
IntervalTree 
< 
RuntimeElement +
>+ ,
m_Tree- 3
;3 4
public "
IntervalTreeRebalancer %
(% &
IntervalTree& 2
<2 3
RuntimeElement3 A
>A B
treeC G
)G H
{ 	
m_Tree 
= 
tree 
; 
} 	
public 
bool 
	Rebalance 
( 
) 
{ 	
m_Tree 
. 
UpdateIntervals "
(" #
)# $
;$ %
return   
m_Tree   
.   
dirty   
;    
}!! 	
}"" 
public11 

class11 
TimelinePlayable11 !
:11" #
PlayableBehaviour11$ 5
{22 
private33 
IntervalTree33 
<33 
RuntimeElement33 +
>33+ ,
m_IntervalTree33- ;
=33< =
new33> A
IntervalTree33B N
<33N O
RuntimeElement33O ]
>33] ^
(33^ _
)33_ `
;33` a
private44 
List44 
<44 
RuntimeElement44 #
>44# $
m_ActiveClips44% 2
=443 4
new445 8
List449 =
<44= >
RuntimeElement44> L
>44L M
(44M N
)44N O
;44O P
private55 
List55 
<55 
RuntimeElement55 #
>55# $&
m_CurrentListOfActiveClips55% ?
;55? @
private66 
int66 
m_ActiveBit66 
=66  !
$num66" #
;66# $
private88 
List88 
<88 %
ITimelineEvaluateCallback88 .
>88. /
m_EvaluateCallbacks880 C
=88D E
new88F I
List88J N
<88N O%
ITimelineEvaluateCallback88O h
>88h i
(88i j
)88j k
;88k l
private:: 

Dictionary:: 
<:: 

TrackAsset:: %
,::% &
Playable::' /
>::/ 0
m_PlayableCache::1 @
=::A B
new::C F

Dictionary::G Q
<::Q R

TrackAsset::R \
,::\ ]
Playable::^ f
>::f g
(::g h
)::h i
;::i j
internal<< 
static<< 
bool<< 
muteAudioScrubbing<< /
=<<0 1
true<<2 6
;<<6 7
private?? "
IntervalTreeRebalancer?? &
m_Rebalancer??' 3
;??3 4
publicJJ 
staticJJ 
ScriptPlayableJJ $
<JJ$ %
TimelinePlayableJJ% 5
>JJ5 6
CreateJJ7 =
(JJ= >
PlayableGraphJJ> K
graphJJL Q
,JJQ R
IEnumerableJJS ^
<JJ^ _

TrackAssetJJ_ i
>JJi j
tracksJJk q
,JJq r

GameObjectJJs }
go	JJ~ €
,
JJ€ 
bool
JJ‚ †
autoRebalance
JJ‡ ”
,
JJ” •
bool
JJ– š
createOutputs
JJ› ¨
)
JJ¨ ©
{KK 	
ifLL 
(LL 
tracksLL 
==LL 
nullLL 
)LL 
throwMM 
newMM !
ArgumentNullExceptionMM /
(MM/ 0
$strMM0 E
,MME F
$strMMG O
)MMO P
;MMP Q
ifOO 
(OO 
goOO 
==OO 
nullOO 
)OO 
throwPP 
newPP !
ArgumentNullExceptionPP /
(PP/ 0
$strPP0 N
,PPN O
$strPPP T
)PPT U
;PPU V
varRR 
playableRR 
=RR 
ScriptPlayableRR )
<RR) *
TimelinePlayableRR* :
>RR: ;
.RR; <
CreateRR< B
(RRB C
graphRRC H
)RRH I
;RRI J
playableSS 
.SS 
SetTraversalModeSS %
(SS% &!
PlayableTraversalModeSS& ;
.SS; <
PassthroughSS< G
)SSG H
;SSH I
varTT 
sequenceTT 
=TT 
playableTT #
.TT# $
GetBehaviourTT$ 0
(TT0 1
)TT1 2
;TT2 3
sequenceUU 
.UU 
CompileUU 
(UU 
graphUU "
,UU" #
playableUU$ ,
,UU, -
tracksUU. 4
,UU4 5
goUU6 8
,UU8 9
autoRebalanceUU: G
,UUG H
createOutputsUUI V
)UUV W
;UUW X
returnVV 
playableVV 
;VV 
}WW 	
publicbb 
voidbb 
Compilebb 
(bb 
PlayableGraphbb )
graphbb* /
,bb/ 0
Playablebb1 9
timelinePlayablebb: J
,bbJ K
IEnumerablebbL W
<bbW X

TrackAssetbbX b
>bbb c
tracksbbd j
,bbj k

GameObjectbbl v
gobbw y
,bby z
boolbb{ 
autoRebalance
bb€ 
,
bb 
bool
bb “
createOutputs
bb” ¡
)
bb¡ ¢
{cc 	
ifdd 
(dd 
tracksdd 
==dd 
nulldd 
)dd 
throwee 
newee !
ArgumentNullExceptionee /
(ee/ 0
$stree0 E
,eeE F
$streeG O
)eeO P
;eeP Q
ifgg 
(gg 
gogg 
==gg 
nullgg 
)gg 
throwhh 
newhh !
ArgumentNullExceptionhh /
(hh/ 0
$strhh0 N
,hhN O
$strhhP T
)hhT U
;hhU V
varjj 
outputTrackListjj 
=jj  !
newjj" %
Listjj& *
<jj* +

TrackAssetjj+ 5
>jj5 6
(jj6 7
tracksjj7 =
)jj= >
;jj> ?
varkk (
maximumNumberOfIntersectionskk ,
=kk- .
outputTrackListkk/ >
.kk> ?
Countkk? D
*kkE F
$numkkG H
+kkI J
outputTrackListkkK Z
.kkZ [
Countkk[ `
;kk` a&
m_CurrentListOfActiveClipsll &
=ll' (
newll) ,
Listll- 1
<ll1 2
RuntimeElementll2 @
>ll@ A
(llA B(
maximumNumberOfIntersectionsllB ^
)ll^ _
;ll_ `
m_ActiveClipsmm 
=mm 
newmm 
Listmm  $
<mm$ %
RuntimeElementmm% 3
>mm3 4
(mm4 5(
maximumNumberOfIntersectionsmm5 Q
)mmQ R
;mmR S
m_EvaluateCallbacksoo 
.oo  
Clearoo  %
(oo% &
)oo& '
;oo' (
m_PlayableCachepp 
.pp 
Clearpp !
(pp! "
)pp" #
;pp# $
CompileTrackListrr 
(rr 
graphrr "
,rr" #
timelinePlayablerr$ 4
,rr4 5
outputTrackListrr6 E
,rrE F
gorrG I
,rrI J
createOutputsrrK X
)rrX Y
;rrY Z
ifuu 
(uu 
autoRebalanceuu 
)uu 
{vv 
m_Rebalancerww 
=ww 
newww ""
IntervalTreeRebalancerww# 9
(ww9 :
m_IntervalTreeww: H
)wwH I
;wwI J
}xx 
}zz 	
private|| 
void|| 
CompileTrackList|| %
(||% &
PlayableGraph||& 3
graph||4 9
,||9 :
Playable||; C
timelinePlayable||D T
,||T U
IEnumerable||V a
<||a b

TrackAsset||b l
>||l m
tracks||n t
,||t u

GameObject	||v €
go
|| ƒ
,
||ƒ „
bool
||… ‰
createOutputs
||Š —
)
||— ˜
{}} 	
foreach~~ 
(~~ 
var~~ 
track~~ 
in~~ !
tracks~~" (
)~~( )
{ 
if
€€ 
(
€€ 
!
€€ 
track
€€ 
.
€€ 
IsCompilable
€€ '
(
€€' (
)
€€( )
)
€€) *
continue
 
;
 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
m_PlayableCache
ƒƒ $
.
ƒƒ$ %
ContainsKey
ƒƒ% 0
(
ƒƒ0 1
track
ƒƒ1 6
)
ƒƒ6 7
)
ƒƒ7 8
{
„„ 
track
…… 
.
…… 
	SortClips
…… #
(
……# $
)
……$ %
;
……% &!
CreateTrackPlayable
†† '
(
††' (
graph
††( -
,
††- .
timelinePlayable
††/ ?
,
††? @
track
††A F
,
††F G
go
††H J
,
††J K
createOutputs
††L Y
)
††Y Z
;
††Z [
}
‡‡ 
}
ˆˆ 
}
‰‰ 	
void
‹‹ 
CreateTrackOutput
‹‹ 
(
‹‹ 
PlayableGraph
‹‹ ,
graph
‹‹- 2
,
‹‹2 3

TrackAsset
‹‹4 >
track
‹‹? D
,
‹‹D E

GameObject
‹‹F P
go
‹‹Q S
,
‹‹S T
Playable
‹‹U ]
playable
‹‹^ f
,
‹‹f g
int
‹‹h k
port
‹‹l p
)
‹‹p q
{
ŒŒ 	
if
 
(
 
track
 
.
 

isSubTrack
  
)
  !
return
 
;
 
var
 
bindings
 
=
 
track
  
.
  !
outputs
! (
;
( )
foreach
‘‘ 
(
‘‘ 
var
‘‘ 
binding
‘‘  
in
‘‘! #
bindings
‘‘$ ,
)
‘‘, -
{
’’ 
var
““ 
playableOutput
““ "
=
““# $
binding
““% ,
.
““, -
CreateOutput
““- 9
(
““9 :
graph
““: ?
)
““? @
;
““@ A
playableOutput
”” 
.
””  
SetReferenceObject
”” 1
(
””1 2
binding
””2 9
.
””9 :
sourceObject
””: F
)
””F G
;
””G H
playableOutput
•• 
.
•• 
SetSourcePlayable
•• 0
(
••0 1
playable
••1 9
,
••9 :
port
••; ?
)
••? @
;
••@ A
playableOutput
–– 
.
–– 
	SetWeight
–– (
(
––( )
$num
––) -
)
––- .
;
––. /
if
™™ 
(
™™ 
track
™™ 
as
™™ 
AnimationTrack
™™ +
!=
™™, .
null
™™/ 3
)
™™3 4
{
šš 7
)EvaluateWeightsForAnimationPlayableOutput
›› =
(
››= >
track
››> C
,
››C D
(
››E F%
AnimationPlayableOutput
››F ]
)
››] ^
playableOutput
››^ l
)
››l m
;
››m n
if
 
(
 
!
 
Application
 $
.
$ %
	isPlaying
% .
)
. /4
&EvaluateAnimationPreviewUpdateCallback
 >
(
> ?
track
? D
,
D E
(
F G%
AnimationPlayableOutput
G ^
)
^ _
playableOutput
_ m
)
m n
;
n o
}
   
if
¡¡ 
(
¡¡ 
playableOutput
¡¡ "
.
¡¡" #$
IsPlayableOutputOfType
¡¡# 9
<
¡¡9 :!
AudioPlayableOutput
¡¡: M
>
¡¡M N
(
¡¡N O
)
¡¡O P
)
¡¡P Q
(
¢¢ 
(
¢¢ !
AudioPlayableOutput
¢¢ )
)
¢¢) *
playableOutput
¢¢* 8
)
¢¢8 9
.
¢¢9 :
SetEvaluateOnSeek
¢¢: K
(
¢¢K L
!
¢¢L M 
muteAudioScrubbing
¢¢M _
)
¢¢_ `
;
¢¢` a
if
¥¥ 
(
¥¥ 
track
¥¥ 
.
¥¥ 
timelineAsset
¥¥ '
.
¥¥' (
markerTrack
¥¥( 3
==
¥¥4 6
track
¥¥7 <
)
¥¥< =
{
¦¦ 
var
§§ 
director
§§  
=
§§! "
go
§§# %
.
§§% &
GetComponent
§§& 2
<
§§2 3
PlayableDirector
§§3 C
>
§§C D
(
§§D E
)
§§E F
;
§§F G
playableOutput
¨¨ "
.
¨¨" #
SetUserData
¨¨# .
(
¨¨. /
director
¨¨/ 7
)
¨¨7 8
;
¨¨8 9
foreach
©© 
(
©© 
var
©©  
c
©©! "
in
©©# %
go
©©& (
.
©©( )
GetComponents
©©) 6
<
©©6 7#
INotificationReceiver
©©7 L
>
©©L M
(
©©M N
)
©©N O
)
©©O P
{
ªª 
playableOutput
«« &
.
««& '%
AddNotificationReceiver
««' >
(
««> ?
c
««? @
)
««@ A
;
««A B
}
¬¬ 
}
­­ 
}
®® 
}
¯¯ 	
void
±± 7
)EvaluateWeightsForAnimationPlayableOutput
±± 6
(
±±6 7

TrackAsset
±±7 A
track
±±B G
,
±±G H%
AnimationPlayableOutput
±±I `

animOutput
±±a k
)
±±k l
{
²² 	!
m_EvaluateCallbacks
³³ 
.
³³  
Add
³³  #
(
³³# $
new
³³$ ',
AnimationOutputWeightProcessor
³³( F
(
³³F G

animOutput
³³G Q
)
³³Q R
)
³³R S
;
³³S T
}
´´ 	
void
¶¶ 4
&EvaluateAnimationPreviewUpdateCallback
¶¶ 3
(
¶¶3 4

TrackAsset
¶¶4 >
track
¶¶? D
,
¶¶D E%
AnimationPlayableOutput
¶¶F ]

animOutput
¶¶^ h
)
¶¶h i
{
·· 	!
m_EvaluateCallbacks
¸¸ 
.
¸¸  
Add
¸¸  #
(
¸¸# $
new
¸¸$ ',
AnimationPreviewUpdateCallback
¸¸( F
(
¸¸F G

animOutput
¸¸G Q
)
¸¸Q R
)
¸¸R S
;
¸¸S T
}
¹¹ 	
private
»» 
static
»» 
Playable
»» !
CreatePlayableGraph
»»  3
(
»»3 4
PlayableGraph
»»4 A
graph
»»B G
,
»»G H

TrackAsset
»»I S
asset
»»T Y
,
»»Y Z

GameObject
»»[ e
go
»»f h
,
»»h i
IntervalTree
»»j v
<
»»v w
RuntimeElement»»w …
>»»… †
tree»»‡ ‹
,»»‹ Œ
Playable»» • 
timelinePlayable»»– ¦
)»»¦ §
{
¼¼ 	
return
½½ 
asset
½½ 
.
½½ !
CreatePlayableGraph
½½ ,
(
½½, -
graph
½½- 2
,
½½2 3
go
½½4 6
,
½½6 7
tree
½½8 <
,
½½< =
timelinePlayable
½½> N
)
½½N O
;
½½O P
}
¾¾ 	
private
ÀÀ 
Playable
ÀÀ !
CreateTrackPlayable
ÀÀ ,
(
ÀÀ, -
PlayableGraph
ÀÀ- :
graph
ÀÀ; @
,
ÀÀ@ A
Playable
ÀÀB J
timelinePlayable
ÀÀK [
,
ÀÀ[ \

TrackAsset
ÀÀ] g
track
ÀÀh m
,
ÀÀm n

GameObject
ÀÀo y
go
ÀÀz |
,
ÀÀ| }
boolÀÀ~ ‚
createOutputsÀÀƒ 
)ÀÀ ‘
{
ÁÁ 	
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
track
ÂÂ 
.
ÂÂ 
IsCompilable
ÂÂ #
(
ÂÂ# $
)
ÂÂ$ %
)
ÂÂ% &
return
ÃÃ 
timelinePlayable
ÃÃ '
;
ÃÃ' (
Playable
ÅÅ 
playable
ÅÅ 
;
ÅÅ 
if
ÆÆ 
(
ÆÆ 
m_PlayableCache
ÆÆ 
.
ÆÆ  
TryGetValue
ÆÆ  +
(
ÆÆ+ ,
track
ÆÆ, 1
,
ÆÆ1 2
out
ÆÆ3 6
playable
ÆÆ7 ?
)
ÆÆ? @
)
ÆÆ@ A
return
ÇÇ 
playable
ÇÇ 
;
ÇÇ  
if
ÉÉ 
(
ÉÉ 
track
ÉÉ 
.
ÉÉ 
name
ÉÉ 
==
ÉÉ 
$str
ÉÉ $
)
ÉÉ$ %
return
ÊÊ 
timelinePlayable
ÊÊ '
;
ÊÊ' (

TrackAsset
ÌÌ 
parentActor
ÌÌ "
=
ÌÌ# $
track
ÌÌ% *
.
ÌÌ* +
parent
ÌÌ+ 1
as
ÌÌ2 4

TrackAsset
ÌÌ5 ?
;
ÌÌ? @
var
ÍÍ 
parentPlayable
ÍÍ 
=
ÍÍ  
parentActor
ÍÍ! ,
!=
ÍÍ- /
null
ÍÍ0 4
?
ÍÍ5 6!
CreateTrackPlayable
ÍÍ7 J
(
ÍÍJ K
graph
ÍÍK P
,
ÍÍP Q
timelinePlayable
ÍÍR b
,
ÍÍb c
parentActor
ÍÍd o
,
ÍÍo p
go
ÍÍq s
,
ÍÍs t
createOutputsÍÍu ‚
)ÍÍ‚ ƒ
:ÍÍ„ … 
timelinePlayableÍÍ† –
;ÍÍ– —
var
ÎÎ 
actorPlayable
ÎÎ 
=
ÎÎ !
CreatePlayableGraph
ÎÎ  3
(
ÎÎ3 4
graph
ÎÎ4 9
,
ÎÎ9 :
track
ÎÎ; @
,
ÎÎ@ A
go
ÎÎB D
,
ÎÎD E
m_IntervalTree
ÎÎF T
,
ÎÎT U
timelinePlayable
ÎÎV f
)
ÎÎf g
;
ÎÎg h
bool
ÏÏ 
	connected
ÏÏ 
=
ÏÏ 
false
ÏÏ "
;
ÏÏ" #
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
actorPlayable
ÑÑ 
.
ÑÑ 
IsValid
ÑÑ &
(
ÑÑ& '
)
ÑÑ' (
)
ÑÑ( )
{
ÒÒ 
throw
ÔÔ 
new
ÔÔ '
InvalidOperationException
ÔÔ 3
(
ÔÔ3 4
track
ÔÔ4 9
.
ÔÔ9 :
name
ÔÔ: >
+
ÔÔ? @
$str
ÔÔA D
+
ÔÔE F
track
ÔÔG L
.
ÔÔL M
GetType
ÔÔM T
(
ÔÔT U
)
ÔÔU V
+
ÔÔW X
$strÔÔY Ğ
)ÔÔĞ Ñ
;ÔÔÑ Ò
}
ÕÕ 
if
ÙÙ 
(
ÙÙ 
parentPlayable
ÙÙ 
.
ÙÙ 
IsValid
ÙÙ &
(
ÙÙ& '
)
ÙÙ' (
&&
ÙÙ) +
actorPlayable
ÙÙ, 9
.
ÙÙ9 :
IsValid
ÙÙ: A
(
ÙÙA B
)
ÙÙB C
)
ÙÙC D
{
ÚÚ 
int
ÛÛ 
port
ÛÛ 
=
ÛÛ 
parentPlayable
ÛÛ )
.
ÛÛ) *
GetInputCount
ÛÛ* 7
(
ÛÛ7 8
)
ÛÛ8 9
;
ÛÛ9 :
parentPlayable
ÜÜ 
.
ÜÜ 
SetInputCount
ÜÜ ,
(
ÜÜ, -
port
ÜÜ- 1
+
ÜÜ2 3
$num
ÜÜ4 5
)
ÜÜ5 6
;
ÜÜ6 7
	connected
İİ 
=
İİ 
graph
İİ !
.
İİ! "
Connect
İİ" )
(
İİ) *
actorPlayable
İİ* 7
,
İİ7 8
$num
İİ9 :
,
İİ: ;
parentPlayable
İİ< J
,
İİJ K
port
İİL P
)
İİP Q
;
İİQ R
parentPlayable
ŞŞ 
.
ŞŞ 
SetInputWeight
ŞŞ -
(
ŞŞ- .
port
ŞŞ. 2
,
ŞŞ2 3
$num
ŞŞ4 8
)
ŞŞ8 9
;
ŞŞ9 :
}
ßß 
if
áá 
(
áá 
createOutputs
áá 
&&
áá  
	connected
áá! *
)
áá* +
{
ââ 
CreateTrackOutput
ãã !
(
ãã! "
graph
ãã" '
,
ãã' (
track
ãã) .
,
ãã. /
go
ãã0 2
,
ãã2 3
parentPlayable
ãã4 B
,
ããB C
parentPlayable
ããD R
.
ããR S
GetInputCount
ããS `
(
ãã` a
)
ããa b
-
ããc d
$num
ããe f
)
ããf g
;
ããg h
}
ää 

CacheTrack
ææ 
(
ææ 
track
ææ 
,
ææ 
actorPlayable
ææ +
,
ææ+ ,
	connected
ææ- 6
?
ææ7 8
(
ææ9 :
parentPlayable
ææ: H
.
ææH I
GetInputCount
ææI V
(
ææV W
)
ææW X
-
ææY Z
$num
ææ[ \
)
ææ\ ]
:
ææ^ _
-
ææ` a
$num
ææa b
,
ææb c
parentPlayable
ææd r
)
æær s
;
ææs t
return
çç 
actorPlayable
çç  
;
çç  !
}
èè 	
public
ïï 
override
ïï 
void
ïï 
PrepareFrame
ïï )
(
ïï) *
Playable
ïï* 2
playable
ïï3 ;
,
ïï; <
	FrameData
ïï= F
info
ïïG K
)
ïïK L
{
ğğ 	
if
òò 
(
òò 
m_Rebalancer
òò 
!=
òò 
null
òò  $
)
òò$ %
m_Rebalancer
óó 
.
óó 
	Rebalance
óó &
(
óó& '
)
óó' (
;
óó( )
Evaluate
ùù 
(
ùù 
playable
ùù 
,
ùù 
info
ùù #
)
ùù# $
;
ùù$ %
}
úú 	
private
üü 
void
üü 
Evaluate
üü 
(
üü 
Playable
üü &
playable
üü' /
,
üü/ 0
	FrameData
üü1 :
	frameData
üü; D
)
üüD E
{
ıı 	
if
şş 
(
şş 
m_IntervalTree
şş 
==
şş !
null
şş" &
)
şş& '
return
ÿÿ 
;
ÿÿ 
double
 
	localTime
 
=
 
playable
 '
.
' (
GetTime
( /
(
/ 0
)
0 1
;
1 2
m_ActiveBit
‚‚ 
=
‚‚ 
m_ActiveBit
‚‚ %
==
‚‚& (
$num
‚‚) *
?
‚‚+ ,
$num
‚‚- .
:
‚‚/ 0
$num
‚‚1 2
;
‚‚2 3(
m_CurrentListOfActiveClips
„„ &
.
„„& '
Clear
„„' ,
(
„„, -
)
„„- .
;
„„. /
m_IntervalTree
…… 
.
…… 
IntersectsWith
…… )
(
……) *
DiscreteTime
……* 6
.
……6 7
GetNearestTick
……7 E
(
……E F
	localTime
……F O
)
……O P
,
……P Q(
m_CurrentListOfActiveClips
……R l
)
……l m
;
……m n
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
c
‡‡ 
in
‡‡ (
m_CurrentListOfActiveClips
‡‡ 8
)
‡‡8 9
{
ˆˆ 
c
‰‰ 
.
‰‰ 
intervalBit
‰‰ 
=
‰‰ 
m_ActiveBit
‰‰  +
;
‰‰+ ,
if
ŠŠ 
(
ŠŠ 
	frameData
ŠŠ 
.
ŠŠ 

timeLooped
ŠŠ (
)
ŠŠ( )
c
‹‹ 
.
‹‹ 
Reset
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
}
ŒŒ 
var
 
timelineEnd
 
=
 
playable
 &
.
& '
GetDuration
' 2
(
2 3
)
3 4
;
4 5
foreach
‘‘ 
(
‘‘ 
var
‘‘ 
c
‘‘ 
in
‘‘ 
m_ActiveClips
‘‘ +
)
‘‘+ ,
{
’’ 
if
““ 
(
““ 
c
““ 
.
““ 
intervalBit
““ !
!=
““" $
m_ActiveBit
““% 0
)
““0 1
{
”” 
var
•• 
clipEnd
•• 
=
••  !
(
••" #
double
••# )
)
••) *
DiscreteTime
••* 6
.
••6 7
	FromTicks
••7 @
(
••@ A
c
••A B
.
••B C
intervalEnd
••C N
)
••N O
;
••O P
var
–– 
time
–– 
=
–– 
	frameData
–– (
.
––( )

timeLooped
––) 3
?
––4 5
Math
––6 :
.
––: ;
Min
––; >
(
––> ?
clipEnd
––? F
,
––F G
timelineEnd
––H S
)
––S T
:
––U V
Math
––W [
.
––[ \
Min
––\ _
(
––_ `
	localTime
––` i
,
––i j
clipEnd
––k r
)
––r s
;
––s t
c
—— 
.
—— 

EvaluateAt
——  
(
——  !
time
——! %
,
——% &
	frameData
——' 0
)
——0 1
;
——1 2
c
˜˜ 
.
˜˜ 
enable
˜˜ 
=
˜˜ 
false
˜˜ $
;
˜˜$ %
}
™™ 
}
šš 
m_ActiveClips
œœ 
.
œœ 
Clear
œœ 
(
œœ  
)
œœ  !
;
œœ! "
for
 
(
 
var
 
a
 
=
 
$num
 
;
 
a
 
<
 (
m_CurrentListOfActiveClips
  :
.
: ;
Count
; @
;
@ A
a
B C
++
C E
)
E F
{
ŸŸ (
m_CurrentListOfActiveClips
   *
[
  * +
a
  + ,
]
  , -
.
  - .

EvaluateAt
  . 8
(
  8 9
	localTime
  9 B
,
  B C
	frameData
  D M
)
  M N
;
  N O
m_ActiveClips
¡¡ 
.
¡¡ 
Add
¡¡ !
(
¡¡! "(
m_CurrentListOfActiveClips
¡¡" <
[
¡¡< =
a
¡¡= >
]
¡¡> ?
)
¡¡? @
;
¡¡@ A
}
¢¢ 
int
¤¤ 
count
¤¤ 
=
¤¤ !
m_EvaluateCallbacks
¤¤ +
.
¤¤+ ,
Count
¤¤, 1
;
¤¤1 2
for
¥¥ 
(
¥¥ 
int
¥¥ 
i
¥¥ 
=
¥¥ 
$num
¥¥ 
;
¥¥ 
i
¥¥ 
<
¥¥ 
count
¥¥  %
;
¥¥% &
i
¥¥' (
++
¥¥( *
)
¥¥* +
{
¦¦ !
m_EvaluateCallbacks
§§ #
[
§§# $
i
§§$ %
]
§§% &
.
§§& '
Evaluate
§§' /
(
§§/ 0
)
§§0 1
;
§§1 2
}
¨¨ 
}
©© 	
private
«« 
void
«« 

CacheTrack
«« 
(
««  

TrackAsset
««  *
track
««+ 0
,
««0 1
Playable
««2 :
playable
««; C
,
««C D
int
««E H
port
««I M
,
««M N
Playable
««O W
parent
««X ^
)
««^ _
{
¬¬ 	
m_PlayableCache
­­ 
[
­­ 
track
­­ !
]
­­! "
=
­­# $
playable
­­% -
;
­­- .
}
®® 	
static
±± 
void
±± #
ForAOTCompilationOnly
±± )
(
±±) *
)
±±* +
{
²² 	
new
³³ 
List
³³ 
<
³³ 
IntervalTree
³³ !
<
³³! "
RuntimeElement
³³" 0
>
³³0 1
.
³³1 2
Entry
³³2 7
>
³³7 8
(
³³8 9
)
³³9 :
;
³³: ;
}
´´ 	
}
µµ 
}¶¶ ¿
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\IPropertyPreview.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
IPropertyPreview %
{		 
void 
GatherProperties 
( 
PlayableDirector .
director/ 7
,7 8
IPropertyCollector9 K
driverL R
)R S
;S T
} 
} ç%
‚D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\ClipCaps.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Flags 

]
 
public		 

enum		 
ClipCaps		 
{

 
None 
= 
$num 
, 
Looping 
= 
$num 
<< 
$num  
,  !
Extrapolation 
= 
$num 
<< 
$num  
,  !
ClipIn 
= 
$num 
<< 
$num  
,  !
SpeedMultiplier"" 
="" 
$num"" 
<<"" 
$num""  
,""  !
Blending'' 
='' 
$num'' 
<<'' 
$num''  
,''  !
	AutoScale-- 
=-- 
$num-- 
<<-- 
$num--  
|--! "
SpeedMultiplier--# 2
,--2 3
All22 
=22 
~22 
None22 
}33 
static55 

class55 &
TimelineClipCapsExtensions55 +
{66 
public77 
static77 
bool77 
SupportsLooping77 *
(77* +
this77+ /
TimelineClip770 <
clip77= A
)77A B
{88 	
return99 
clip99 
!=99 
null99 
&&99  "
(99# $
clip99$ (
.99( )
clipCaps99) 1
&992 3
ClipCaps994 <
.99< =
Looping99= D
)99D E
!=99F H
ClipCaps99I Q
.99Q R
None99R V
;99V W
}:: 	
public<< 
static<< 
bool<< !
SupportsExtrapolation<< 0
(<<0 1
this<<1 5
TimelineClip<<6 B
clip<<C G
)<<G H
{== 	
return>> 
clip>> 
!=>> 
null>> 
&&>>  "
(>># $
clip>>$ (
.>>( )
clipCaps>>) 1
&>>2 3
ClipCaps>>4 <
.>>< =
Extrapolation>>= J
)>>J K
!=>>L N
ClipCaps>>O W
.>>W X
None>>X \
;>>\ ]
}?? 	
publicAA 
staticAA 
boolAA 
SupportsClipInAA )
(AA) *
thisAA* .
TimelineClipAA/ ;
clipAA< @
)AA@ A
{BB 	
returnCC 
clipCC 
!=CC 
nullCC 
&&CC  "
(CC# $
clipCC$ (
.CC( )
clipCapsCC) 1
&CC2 3
ClipCapsCC4 <
.CC< =
ClipInCC= C
)CCC D
!=CCE G
ClipCapsCCH P
.CCP Q
NoneCCQ U
;CCU V
}DD 	
publicFF 
staticFF 
boolFF #
SupportsSpeedMultiplierFF 2
(FF2 3
thisFF3 7
TimelineClipFF8 D
clipFFE I
)FFI J
{GG 	
returnHH 
clipHH 
!=HH 
nullHH 
&&HH  "
(HH# $
clipHH$ (
.HH( )
clipCapsHH) 1
&HH2 3
ClipCapsHH4 <
.HH< =
SpeedMultiplierHH= L
)HHL M
!=HHN P
ClipCapsHHQ Y
.HHY Z
NoneHHZ ^
;HH^ _
}II 	
publicKK 
staticKK 
boolKK 
SupportsBlendingKK +
(KK+ ,
thisKK, 0
TimelineClipKK1 =
clipKK> B
)KKB C
{LL 	
returnMM 
clipMM 
!=MM 
nullMM 
&&MM  "
(MM# $
clipMM$ (
.MM( )
clipCapsMM) 1
&MM2 3
ClipCapsMM4 <
.MM< =
BlendingMM= E
)MME F
!=MMG I
ClipCapsMMJ R
.MMR S
NoneMMS W
;MMW X
}NN 	
publicPP 
staticPP 
boolPP 
HasAllPP !
(PP! "
thisPP" &
ClipCapsPP' /
capsPP0 4
,PP4 5
ClipCapsPP6 >
flagsPP? D
)PPD E
{QQ 	
returnRR 
(RR 
capsRR 
&RR 
flagsRR  
)RR  !
==RR" $
flagsRR% *
;RR* +
}SS 	
publicUU 
staticUU 
boolUU 
HasAnyUU !
(UU! "
thisUU" &
ClipCapsUU' /
capsUU0 4
,UU4 5
ClipCapsUU6 >
flagsUU? D
)UUD E
{VV 	
returnWW 
(WW 
capsWW 
&WW 
flagsWW  
)WW  !
!=WW" $
$numWW% &
;WW& '
}XX 	
}YY 
}ZZ ß—
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAsset_CreateRemove.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
public

 

partial

 
class

 
TimelineAsset

 &
{ 
public 

TrackAsset 
CreateTrack %
(% &
Type& *
type+ /
,/ 0

TrackAsset1 ;
parent< B
,B C
stringD J
nameK O
)O P
{ 	
if 
( 
parent 
!= 
null 
&& !
parent" (
.( )
timelineAsset) 6
!=7 9
this: >
)> ?
throw 
new %
InvalidOperationException 3
(3 4
$str4 k
)k l
;l m
if 
( 
! 
typeof 
( 

TrackAsset "
)" #
.# $
IsAssignableFrom$ 4
(4 5
type5 9
)9 :
): ;
throw 
new %
InvalidOperationException 3
(3 4
$str4 Y
)Y Z
;Z [
if 
( 
parent 
!= 
null 
) 
{ 
if   
(   
!   #
TimelineCreateUtilities   ,
.  , -
ValidateParentTrack  - @
(  @ A
parent  A G
,  G H
type  I M
)  M N
)  N O
throw!! 
new!! %
InvalidOperationException!! 7
(!!7 8
$str!!8 X
+!!Y Z
type!![ _
.!!_ `
Name!!` d
+!!e f
$str!!g ~
+	!! €
parent
!! ‡
.
!!‡ ˆ
GetType
!!ˆ 
(
!! 
)
!! ‘
.
!!‘ ’
Name
!!’ –
)
!!– —
;
!!— ˜
}"" 
var%% 
actualParent%% 
=%% 
parent%% %
!=%%& (
null%%) -
?%%. /
parent%%0 6
as%%7 9
PlayableAsset%%: G
:%%H I
this%%J N
;%%N O
TimelineUndo&& 
.&& 
PushUndo&& !
(&&! "
actualParent&&" .
,&&. /
$str&&0 >
)&&> ?
;&&? @
var(( 
baseName(( 
=(( 
name(( 
;((  
if)) 
()) 
string)) 
.)) 
IsNullOrEmpty)) $
())$ %
baseName))% -
)))- .
))). /
{** 
baseName++ 
=++ 
type++ 
.++  
Name++  $
;++$ %
baseName-- 
=-- 
UnityEditor-- &
.--& '
ObjectNames--' 2
.--2 3
NicifyVariableName--3 E
(--E F
baseName--F N
)--N O
;--O P
}// 
var11 
	trackName11 
=11 
baseName11 $
;11$ %
if22 
(22 
parent22 
!=22 
null22 
)22 
	trackName33 
=33 #
TimelineCreateUtilities33 3
.333 4#
GenerateUniqueActorName334 K
(33K L
parent33L R
.33R S
subTracksObjects33S c
,33c d
baseName33e m
)33m n
;33n o
else44 
	trackName55 
=55 #
TimelineCreateUtilities55 3
.553 4#
GenerateUniqueActorName554 K
(55K L
trackObjects55L X
,55X Y
baseName55Z b
)55b c
;55c d

TrackAsset77 
newTrack77 
=77  !
AllocateTrack77" /
(77/ 0
parent770 6
,776 7
	trackName778 A
,77A B
type77C G
)77G H
;77H I
if88 
(88 
newTrack88 
!=88 
null88  
)88  !
{99 
newTrack:: 
.:: 
name:: 
=:: 
	trackName::  )
;::) *#
TimelineCreateUtilities;; '
.;;' (
SaveAssetIntoObject;;( ;
(;;; <
newTrack;;< D
,;;D E
actualParent;;F R
);;R S
;;;S T
}<< 
return== 
newTrack== 
;== 
}>> 	
publicJJ 
TJJ 
CreateTrackJJ 
<JJ 
TJJ 
>JJ 
(JJ  

TrackAssetJJ  *
parentJJ+ 1
,JJ1 2
stringJJ3 9
	trackNameJJ: C
)JJC D
whereJJE J
TJJK L
:JJM N

TrackAssetJJO Y
,JJY Z
newJJ[ ^
(JJ^ _
)JJ_ `
{KK 	
returnLL 
(LL 
TLL 
)LL 
CreateTrackLL !
(LL! "
typeofLL" (
(LL( )
TLL) *
)LL* +
,LL+ ,
parentLL- 3
,LL3 4
	trackNameLL5 >
)LL> ?
;LL? @
}MM 	
publicUU 
TUU 
CreateTrackUU 
<UU 
TUU 
>UU 
(UU  
stringUU  &
	trackNameUU' 0
)UU0 1
whereUU2 7
TUU8 9
:UU: ;

TrackAssetUU< F
,UUF G
newUUH K
(UUK L
)UUL M
{VV 	
returnWW 
(WW 
TWW 
)WW 
CreateTrackWW !
(WW! "
typeofWW" (
(WW( )
TWW) *
)WW* +
,WW+ ,
nullWW- 1
,WW1 2
	trackNameWW3 <
)WW< =
;WW= >
}XX 	
public__ 
T__ 
CreateTrack__ 
<__ 
T__ 
>__ 
(__  
)__  !
where__" '
T__( )
:__* +

TrackAsset__, 6
,__6 7
new__8 ;
(__; <
)__< =
{`` 	
returnaa 
(aa 
Taa 
)aa 
CreateTrackaa !
(aa! "
typeofaa" (
(aa( )
Taa) *
)aa* +
,aa+ ,
nullaa- 1
,aa1 2
nullaa3 7
)aa7 8
;aa8 9
}bb 	
publicll 
boolll 

DeleteClipll 
(ll 
TimelineClipll +
clipll, 0
)ll0 1
{mm 	
ifnn 
(nn 
clipnn 
==nn 
nullnn 
||nn 
clipnn  $
.nn$ %
parentTracknn% 0
==nn1 3
nullnn4 8
)nn8 9
{oo 
returnpp 
falsepp 
;pp 
}qq 
ifrr 
(rr 
thisrr 
!=rr 
cliprr 
.rr 
parentTrackrr (
.rr( )
timelineAssetrr) 6
)rr6 7
{ss 
Debugtt 
.tt 
LogErrortt 
(tt 
$strtt H
)ttH I
;ttI J
returnuu 
falseuu 
;uu 
}vv 
TimelineUndoxx 
.xx 
PushUndoxx !
(xx! "
clipxx" &
.xx& '
parentTrackxx' 2
,xx2 3
$strxx4 A
)xxA B
;xxB C
ifyy 
(yy 
clipyy 
.yy 
curvesyy 
!=yy 
nullyy #
)yy# $
{zz 
TimelineUndo{{ 
.{{ 
PushDestroyUndo{{ ,
({{, -
this{{- 1
,{{1 2
clip{{3 7
.{{7 8
parentTrack{{8 C
,{{C D
clip{{E I
.{{I J
curves{{J P
){{P Q
;{{Q R
}|| 
if 
( 
clip 
. 
asset 
!= 
null "
)" #
{
€€ %
DeleteRecordedAnimation
 '
(
' (
clip
( ,
)
, -
;
- .
string
…… 
path
…… 
=
…… 
UnityEditor
…… )
.
……) *
AssetDatabase
……* 7
.
……7 8
GetAssetPath
……8 D
(
……D E
clip
……E I
.
……I J
asset
……J O
)
……O P
;
……P Q
if
†† 
(
†† 
path
†† 
==
†† 
UnityEditor
†† '
.
††' (
AssetDatabase
††( 5
.
††5 6
GetAssetPath
††6 B
(
††B C
this
††C G
)
††G H
)
††H I
{
ˆˆ 
TimelineUndo
‰‰  
.
‰‰  !
PushDestroyUndo
‰‰! 0
(
‰‰0 1
this
‰‰1 5
,
‰‰5 6
clip
‰‰7 ;
.
‰‰; <
parentTrack
‰‰< G
,
‰‰G H
clip
‰‰I M
.
‰‰M N
asset
‰‰N S
)
‰‰S T
;
‰‰T U
}
ŠŠ 
}
‹‹ 
var
 
clipParentTrack
 
=
  !
clip
" &
.
& '
parentTrack
' 2
;
2 3
clipParentTrack
 
.
 

RemoveClip
 &
(
& '
clip
' +
)
+ ,
;
, -
clipParentTrack
 
.
 )
CalculateExtrapolationTimes
 7
(
7 8
)
8 9
;
9 :
return
‘‘ 
true
‘‘ 
;
‘‘ 
}
’’ 	
public
™™ 
bool
™™ 
DeleteTrack
™™ 
(
™™  

TrackAsset
™™  *
track
™™+ 0
)
™™0 1
{
šš 	
if
›› 
(
›› 
track
›› 
.
›› 
timelineAsset
›› #
!=
››$ &
this
››' +
)
››+ ,
return
œœ 
false
œœ 
;
œœ 
TimelineUndo
ŸŸ 
.
ŸŸ 
PushUndo
ŸŸ !
(
ŸŸ! "
track
ŸŸ" '
,
ŸŸ' (
$str
ŸŸ) 7
)
ŸŸ7 8
;
ŸŸ8 9
TimelineUndo
   
.
   
PushUndo
   !
(
  ! "
this
  " &
,
  & '
$str
  ( 6
)
  6 7
;
  7 8

TrackAsset
¢¢ 
parent
¢¢ 
=
¢¢ 
track
¢¢  %
.
¢¢% &
parent
¢¢& ,
as
¢¢- /

TrackAsset
¢¢0 :
;
¢¢: ;
if
££ 
(
££ 
parent
££ 
!=
££ 
null
££ 
)
££ 
TimelineUndo
¤¤ 
.
¤¤ 
PushUndo
¤¤ %
(
¤¤% &
parent
¤¤& ,
,
¤¤, -
$str
¤¤. <
)
¤¤< =
;
¤¤= >
var
¦¦ 
children
¦¦ 
=
¦¦ 
track
¦¦  
.
¦¦  !
GetChildTracks
¦¦! /
(
¦¦/ 0
)
¦¦0 1
;
¦¦1 2
foreach
§§ 
(
§§ 
var
§§ 
child
§§ 
in
§§ !
children
§§" *
)
§§* +
{
¨¨ 
DeleteTrack
©© 
(
©© 
child
©© !
)
©©! "
;
©©" #
}
ªª %
DeleteRecordedAnimation
¬¬ #
(
¬¬# $
track
¬¬$ )
)
¬¬) *
;
¬¬* +
var
®® 
clipsToDelete
®® 
=
®® 
new
®®  #
List
®®$ (
<
®®( )
TimelineClip
®®) 5
>
®®5 6
(
®®6 7
track
®®7 <
.
®®< =
clips
®®= B
)
®®B C
;
®®C D
foreach
¯¯ 
(
¯¯ 
var
¯¯ 
clip
¯¯ 
in
¯¯  
clipsToDelete
¯¯! .
)
¯¯. /
{
°° 

DeleteClip
±± 
(
±± 
clip
±± 
)
±±  
;
±±  !
}
²² 
RemoveTrack
³³ 
(
³³ 
track
³³ 
)
³³ 
;
³³ 
TimelineUndo
µµ 
.
µµ 
PushDestroyUndo
µµ (
(
µµ( )
this
µµ) -
,
µµ- .
this
µµ/ 3
,
µµ3 4
track
µµ5 :
)
µµ: ;
;
µµ; <
return
·· 
true
·· 
;
·· 
}
¸¸ 	
internal
ºº 
void
ºº !
MoveLastTrackBefore
ºº )
(
ºº) *

TrackAsset
ºº* 4
asset
ºº5 :
)
ºº: ;
{
»» 	
if
¼¼ 
(
¼¼ 
m_Tracks
¼¼ 
==
¼¼ 
null
¼¼  
||
¼¼! #
m_Tracks
¼¼$ ,
.
¼¼, -
Count
¼¼- 2
<
¼¼3 4
$num
¼¼5 6
||
¼¼7 9
asset
¼¼: ?
==
¼¼@ B
null
¼¼C G
)
¼¼G H
return
½½ 
;
½½ 
var
¿¿ 
	lastTrack
¿¿ 
=
¿¿ 
m_Tracks
¿¿ $
[
¿¿$ %
m_Tracks
¿¿% -
.
¿¿- .
Count
¿¿. 3
-
¿¿4 5
$num
¿¿6 7
]
¿¿7 8
;
¿¿8 9
if
ÀÀ 
(
ÀÀ 
	lastTrack
ÀÀ 
==
ÀÀ 
asset
ÀÀ "
)
ÀÀ" #
return
ÁÁ 
;
ÁÁ 
for
ÃÃ 
(
ÃÃ 
int
ÃÃ 
i
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
i
ÃÃ 
<
ÃÃ 
m_Tracks
ÃÃ  (
.
ÃÃ( )
Count
ÃÃ) .
-
ÃÃ/ 0
$num
ÃÃ1 2
;
ÃÃ2 3
i
ÃÃ4 5
++
ÃÃ5 7
)
ÃÃ7 8
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
m_Tracks
ÅÅ 
[
ÅÅ 
i
ÅÅ 
]
ÅÅ 
==
ÅÅ  "
asset
ÅÅ# (
)
ÅÅ( )
{
ÆÆ 
for
ÇÇ 
(
ÇÇ 
int
ÇÇ 
j
ÇÇ 
=
ÇÇ  
m_Tracks
ÇÇ! )
.
ÇÇ) *
Count
ÇÇ* /
-
ÇÇ0 1
$num
ÇÇ2 3
;
ÇÇ3 4
j
ÇÇ5 6
>
ÇÇ7 8
i
ÇÇ9 :
;
ÇÇ: ;
j
ÇÇ< =
--
ÇÇ= ?
)
ÇÇ? @
m_Tracks
ÈÈ  
[
ÈÈ  !
j
ÈÈ! "
]
ÈÈ" #
=
ÈÈ$ %
m_Tracks
ÈÈ& .
[
ÈÈ. /
j
ÈÈ/ 0
-
ÈÈ1 2
$num
ÈÈ3 4
]
ÈÈ4 5
;
ÈÈ5 6
m_Tracks
ÉÉ 
[
ÉÉ 
i
ÉÉ 
]
ÉÉ 
=
ÉÉ  !
	lastTrack
ÉÉ" +
;
ÉÉ+ ,

Invalidate
ÊÊ 
(
ÊÊ 
)
ÊÊ  
;
ÊÊ  !
break
ËË 
;
ËË 
}
ÌÌ 
}
ÍÍ 
}
ÎÎ 	
internal
ĞĞ 

TrackAsset
ĞĞ 
AllocateTrack
ĞĞ )
(
ĞĞ) *

TrackAsset
ĞĞ* 4
trackAssetParent
ĞĞ5 E
,
ĞĞE F
string
ĞĞG M
	trackName
ĞĞN W
,
ĞĞW X
Type
ĞĞY ]
	trackType
ĞĞ^ g
)
ĞĞg h
{
ÑÑ 	
if
ÒÒ 
(
ÒÒ 
trackAssetParent
ÒÒ  
!=
ÒÒ! #
null
ÒÒ$ (
&&
ÒÒ) +
trackAssetParent
ÒÒ, <
.
ÒÒ< =
timelineAsset
ÒÒ= J
!=
ÒÒK M
this
ÒÒN R
)
ÒÒR S
throw
ÓÓ 
new
ÓÓ '
InvalidOperationException
ÓÓ 3
(
ÓÓ3 4
$str
ÓÓ4 k
)
ÓÓk l
;
ÓÓl m
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
typeof
ÕÕ 
(
ÕÕ 

TrackAsset
ÕÕ "
)
ÕÕ" #
.
ÕÕ# $
IsAssignableFrom
ÕÕ$ 4
(
ÕÕ4 5
	trackType
ÕÕ5 >
)
ÕÕ> ?
)
ÕÕ? @
throw
ÖÖ 
new
ÖÖ '
InvalidOperationException
ÖÖ 3
(
ÖÖ3 4
$str
ÖÖ4 Y
)
ÖÖY Z
;
ÖÖZ [
var
ØØ 
asset
ØØ 
=
ØØ 
(
ØØ 

TrackAsset
ØØ #
)
ØØ# $
CreateInstance
ØØ$ 2
(
ØØ2 3
	trackType
ØØ3 <
)
ØØ< =
;
ØØ= >
asset
ÙÙ 
.
ÙÙ 
name
ÙÙ 
=
ÙÙ 
	trackName
ÙÙ "
;
ÙÙ" #
if
ÛÛ 
(
ÛÛ 
trackAssetParent
ÛÛ  
!=
ÛÛ! #
null
ÛÛ$ (
)
ÛÛ( )
trackAssetParent
ÜÜ  
.
ÜÜ  !
AddChild
ÜÜ! )
(
ÜÜ) *
asset
ÜÜ* /
)
ÜÜ/ 0
;
ÜÜ0 1
else
İİ 
AddTrackInternal
ŞŞ  
(
ŞŞ  !
asset
ŞŞ! &
)
ŞŞ& '
;
ŞŞ' (
return
àà 
asset
àà 
;
àà 
}
áá 	
void
ãã %
DeleteRecordedAnimation
ãã $
(
ãã$ %

TrackAsset
ãã% /
track
ãã0 5
)
ãã5 6
{
ää 	
var
åå 
	animTrack
åå 
=
åå 
track
åå !
as
åå" $
AnimationTrack
åå% 3
;
åå3 4
if
ææ 
(
ææ 
	animTrack
ææ 
!=
ææ 
null
ææ !
&&
ææ" $
	animTrack
ææ% .
.
ææ. /
infiniteClip
ææ/ ;
!=
ææ< >
null
ææ? C
)
ææC D
TimelineUndo
çç 
.
çç 
PushDestroyUndo
çç ,
(
çç, -
this
çç- 1
,
çç1 2
track
çç3 8
,
çç8 9
	animTrack
çç: C
.
ççC D
infiniteClip
ççD P
)
ççP Q
;
ççQ R
if
éé 
(
éé 
track
éé 
.
éé 
curves
éé 
!=
éé 
null
éé  $
)
éé$ %
TimelineUndo
êê 
.
êê 
PushDestroyUndo
êê ,
(
êê, -
this
êê- 1
,
êê1 2
track
êê3 8
,
êê8 9
track
êê: ?
.
êê? @
curves
êê@ F
)
êêF G
;
êêG H
}
ëë 	
void
íí %
DeleteRecordedAnimation
íí $
(
íí$ %
TimelineClip
íí% 1
clip
íí2 6
)
íí6 7
{
îî 	
if
ïï 
(
ïï 
clip
ïï 
==
ïï 
null
ïï 
)
ïï 
return
ğğ 
;
ğğ 
if
òò 
(
òò 
clip
òò 
.
òò 
curves
òò 
!=
òò 
null
òò #
)
òò# $
TimelineUndo
óó 
.
óó 
PushDestroyUndo
óó ,
(
óó, -
this
óó- 1
,
óó1 2
clip
óó3 7
.
óó7 8
parentTrack
óó8 C
,
óóC D
clip
óóE I
.
óóI J
curves
óóJ P
)
óóP Q
;
óóQ R
if
õõ 
(
õõ 
!
õõ 
clip
õõ 
.
õõ 

recordable
õõ  
)
õõ  !
return
öö 
;
öö $
AnimationPlayableAsset
øø "
asset
øø# (
=
øø) *
clip
øø+ /
.
øø/ 0
asset
øø0 5
as
øø6 8$
AnimationPlayableAsset
øø9 O
;
øøO P
if
ùù 
(
ùù 
asset
ùù 
==
ùù 
null
ùù 
||
ùù  
asset
ùù! &
.
ùù& '
clip
ùù' +
==
ùù, .
null
ùù/ 3
)
ùù3 4
return
úú 
;
úú 
TimelineUndo
üü 
.
üü 
PushDestroyUndo
üü (
(
üü( )
this
üü) -
,
üü- .
asset
üü/ 4
,
üü4 5
asset
üü6 ;
.
üü; <
clip
üü< @
)
üü@ A
;
üüA B
}
ıı 	
}
şş 
}ÿÿ ç
–D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\IPropertyCollector.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
IPropertyCollector '
{		 
void  
PushActiveGameObject !
(! "

GameObject" ,

gameObject- 7
)7 8
;8 9
void 
PopActiveGameObject  
(  !
)! "
;" #
void 
AddFromClip 
( 
AnimationClip &
clip' +
)+ ,
;, -
void 
AddFromClips 
( 
IEnumerable %
<% &
AnimationClip& 3
>3 4
clips5 :
): ;
;; <
void)) 
AddFromName)) 
<)) 
T)) 
>)) 
()) 
string)) "
name))# '
)))' (
where))) .
T))/ 0
:))1 2
	Component))3 <
;))< =
void22 
AddFromName22 
(22 
string22 
name22  $
)22$ %
;22% &
void99 
AddFromClip99 
(99 

GameObject99 #
obj99$ '
,99' (
AnimationClip99) 6
clip997 ;
)99; <
;99< =
void@@ 
AddFromClips@@ 
(@@ 

GameObject@@ $
obj@@% (
,@@( )
IEnumerable@@* 5
<@@5 6
AnimationClip@@6 C
>@@C D
clips@@E J
)@@J K
;@@K L
voidHH 
AddFromNameHH 
<HH 
THH 
>HH 
(HH 

GameObjectHH &
objHH' *
,HH* +
stringHH, 2
nameHH3 7
)HH7 8
whereHH9 >
THH? @
:HHA B
	ComponentHHC L
;HHL M
voidOO 
AddFromNameOO 
(OO 

GameObjectOO #
objOO$ '
,OO' (
stringOO) /
nameOO0 4
)OO4 5
;OO5 6
voidVV 
AddFromNameVV 
(VV 
	ComponentVV "
	componentVV# ,
,VV, -
stringVV. 4
nameVV5 9
)VV9 :
;VV: ;
void]] 
AddFromComponent]] 
(]] 

GameObject]] (
obj]]) ,
,]], -
	Component]]. 7
	component]]8 A
)]]A B
;]]B C
voiddd 
AddObjectPropertiesdd  
(dd  !
Objectdd! '
objdd( +
,dd+ ,
AnimationClipdd- :
clipdd; ?
)dd? @
;dd@ A
}ee 
}ff ÜS
ŠD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TrackClipType 
( 
typeof 
( 
AudioPlayableAsset ,
), -
,- .
false/ 4
)4 5
]5 6
[ 
TrackBindingType 
( 
typeof 
( 
AudioSource (
)( )
)) *
]* +
[ 
ExcludeFromPreset 
] 
public 

class 

AudioTrack 
: 

TrackAsset (
{ 
[ 	
SerializeField	 
]  
AudioMixerProperties 
m_TrackProperties .
=/ 0
new1 4 
AudioMixerProperties5 I
(I J
)J K
;K L
Playable 
m_LiveMixerPlayable $
=% &
Playable' /
./ 0
Null0 4
;4 5
public 
TimelineClip 

CreateClip &
(& '
	AudioClip' 0
clip1 5
)5 6
{ 	
if   
(   
clip   
==   
null   
)   
return!! 
null!! 
;!! 
var## 
newClip## 
=## 
CreateDefaultClip## +
(##+ ,
)##, -
;##- .
var%% 

audioAsset%% 
=%% 
newClip%% $
.%%$ %
asset%%% *
as%%+ -
AudioPlayableAsset%%. @
;%%@ A
if&& 
(&& 

audioAsset&& 
!=&& 
null&& "
)&&" #

audioAsset'' 
.'' 
clip'' 
=''  !
clip''" &
;''& '
newClip)) 
.)) 
duration)) 
=)) 
clip)) #
.))# $
length))$ *
;))* +
newClip** 
.** 
displayName** 
=**  !
clip**" &
.**& '
name**' +
;**+ ,
return,, 
newClip,, 
;,, 
}-- 	
internal// 
override// 
Playable// "
CompileClips//# /
(/// 0
PlayableGraph//0 =
graph//> C
,//C D

GameObject//E O
go//P R
,//R S
IList//T Y
<//Y Z
TimelineClip//Z f
>//f g
timelineClips//h u
,//u v
IntervalTree	//w ƒ
<
//ƒ „
RuntimeElement
//„ ’
>
//’ “
tree
//” ˜
)
//˜ ™
{00 	
var11 
clipBlender11 
=11 
AudioMixerPlayable11 0
.110 1
Create111 7
(117 8
graph118 =
,11= >
timelineClips11? L
.11L M
Count11M R
)11R S
;11S T
clipBlender44 
.44 
	GetHandle44 !
(44! "
)44" #
.44# $
SetScriptInstance44$ 5
(445 6
m_TrackProperties446 G
.44G H
Clone44H M
(44M N
)44N O
)44O P
;44P Q
m_LiveMixerPlayable55 
=55  !
clipBlender55" -
;55- .
for;; 
(;; 
int;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 
timelineClips;;  -
.;;- .
Count;;. 3
;;;3 4
i;;5 6
++;;6 8
);;8 9
{<< 
var== 
c== 
=== 
timelineClips== %
[==% &
i==& '
]==' (
;==( )
var>> 
asset>> 
=>> 
c>> 
.>> 
asset>> #
as>>$ &
PlayableAsset>>' 4
;>>4 5
if?? 
(?? 
asset?? 
==?? 
null?? !
)??! "
continue@@ 
;@@ 
varBB 
bufferBB 
=BB 
$numBB !
;BB! "
varCC 

audioAssetCC 
=CC  
cCC! "
.CC" #
assetCC# (
asCC) +
AudioPlayableAssetCC, >
;CC> ?
ifDD 
(DD 

audioAssetDD 
!=DD !
nullDD" &
)DD& '
bufferEE 
=EE 

audioAssetEE '
.EE' (
bufferingTimeEE( 5
;EE5 6
varGG 
sourceGG 
=GG 
assetGG "
.GG" #
CreatePlayableGG# 1
(GG1 2
graphGG2 7
,GG7 8
goGG9 ;
)GG; <
;GG< =
ifHH 
(HH 
!HH 
sourceHH 
.HH 
IsValidHH #
(HH# $
)HH$ %
)HH% &
continueII 
;II 
ifKK 
(KK 
sourceKK 
.KK 
IsPlayableOfTypeKK +
<KK+ ,
AudioClipPlayableKK, =
>KK= >
(KK> ?
)KK? @
)KK@ A
{LL 
varNN 
audioClipPlayableNN )
=NN* +
(NN, -
AudioClipPlayableNN- >
)NN> ?
sourceNN? E
;NNE F
varOO 
audioClipPropertiesOO +
=OO, -
audioClipPlayableOO. ?
.OO? @
	GetHandleOO@ I
(OOI J
)OOJ K
.OOK L
	GetObjectOOL U
<OOU V
AudioClipPropertiesOOV i
>OOi j
(OOj k
)OOk l
;OOl m
audioClipPlayableQQ %
.QQ% &
	SetVolumeQQ& /
(QQ/ 0
MathfQQ0 5
.QQ5 6
Clamp01QQ6 =
(QQ= >
m_TrackPropertiesQQ> O
.QQO P
volumeQQP V
*QQW X
audioClipPropertiesQQY l
.QQl m
volumeQQm s
)QQs t
)QQt u
;QQu v
audioClipPlayableRR %
.RR% &
SetStereoPanRR& 2
(RR2 3
MathfRR3 8
.RR8 9
ClampRR9 >
(RR> ?
m_TrackPropertiesRR? P
.RRP Q
	stereoPanRRQ Z
,RRZ [
-RR\ ]
$numRR] a
,RRa b
$numRRc g
)RRg h
)RRh i
;RRi j
audioClipPlayableSS %
.SS% &
SetSpatialBlendSS& 5
(SS5 6
MathfSS6 ;
.SS; <
Clamp01SS< C
(SSC D
m_TrackPropertiesSSD U
.SSU V
spatialBlendSSV b
)SSb c
)SSc d
;SSd e
}TT 
treeVV 
.VV 
AddVV 
(VV 
newVV 
ScheduleRuntimeClipVV 0
(VV0 1
cVV1 2
,VV2 3
sourceVV4 :
,VV: ;
clipBlenderVV< G
,VVG H
bufferVVI O
)VVO P
)VVP Q
;VVQ R
graphWW 
.WW 
ConnectWW 
(WW 
sourceWW $
,WW$ %
$numWW& '
,WW' (
clipBlenderWW) 4
,WW4 5
iWW6 7
)WW7 8
;WW8 9
sourceXX 
.XX 
SetSpeedXX 
(XX  
cXX  !
.XX! "
	timeScaleXX" +
)XX+ ,
;XX, -
sourceYY 
.YY 
SetDurationYY "
(YY" #
cYY# $
.YY$ % 
extrapolatedDurationYY% 9
)YY9 :
;YY: ;
clipBlenderZZ 
.ZZ 
SetInputWeightZZ *
(ZZ* +
sourceZZ+ 1
,ZZ1 2
$numZZ3 7
)ZZ7 8
;ZZ8 9
}[[ #
ConfigureTrackAnimation]] #
(]]# $
tree]]$ (
,]]( )
go]]* ,
,]], -
clipBlender]]. 9
)]]9 :
;]]: ;
return__ 
clipBlender__ 
;__ 
}`` 	
publiccc 
overridecc 
IEnumerablecc #
<cc# $
PlayableBindingcc$ 3
>cc3 4
outputscc5 <
{dd 	
getee 
{ee 
yieldee 
returnee  
AudioPlayableBindingee 3
.ee3 4
Createee4 :
(ee: ;
nameee; ?
,ee? @
thiseeA E
)eeE F
;eeF G
}eeH I
}ff 	
internalii 
voidii 
LiveLinkii 
(ii 
)ii  
{jj 	
ifkk 
(kk 
!kk 
m_LiveMixerPlayablekk $
.kk$ %
IsValidkk% ,
(kk, -
)kk- .
)kk. /
returnll 
;ll 
varnn  
audioMixerPropertiesnn $
=nn% &
m_LiveMixerPlayablenn' :
.nn: ;
	GetHandlenn; D
(nnD E
)nnE F
.nnF G
	GetObjectnnG P
<nnP Q 
AudioMixerPropertiesnnQ e
>nne f
(nnf g
)nng h
;nnh i
ifpp 
(pp  
audioMixerPropertiespp $
==pp% '
nullpp( ,
)pp, -
returnqq 
;qq  
audioMixerPropertiesss  
.ss  !
volumess! '
=ss( )
m_TrackPropertiesss* ;
.ss; <
volumess< B
;ssB C 
audioMixerPropertiestt  
.tt  !
	stereoPantt! *
=tt+ ,
m_TrackPropertiestt- >
.tt> ?
	stereoPantt? H
;ttH I 
audioMixerPropertiesuu  
.uu  !
spatialBlenduu! -
=uu. /
m_TrackPropertiesuu0 A
.uuA B
spatialBlenduuB N
;uuN O
}vv 	
voidzz 

OnValidatezz 
(zz 
)zz 
{{{ 	
m_TrackProperties|| 
.|| 
volume|| $
=||% &
Mathf||' ,
.||, -
Clamp01||- 4
(||4 5
m_TrackProperties||5 F
.||F G
volume||G M
)||M N
;||N O
m_TrackProperties}} 
.}} 
	stereoPan}} '
=}}( )
Mathf}}* /
.}}/ 0
Clamp}}0 5
(}}5 6
m_TrackProperties}}6 G
.}}G H
	stereoPan}}H Q
,}}Q R
-}}S T
$num}}T X
,}}X Y
$num}}Z ^
)}}^ _
;}}_ `
m_TrackProperties~~ 
.~~ 
spatialBlend~~ *
=~~+ ,
Mathf~~- 2
.~~2 3
Clamp01~~3 :
(~~: ;
m_TrackProperties~~; L
.~~L M
spatialBlend~~M Y
)~~Y Z
;~~Z [
} 	
}
€€ 
} šÏ
‡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
ExcludeFromPreset

 
]

 
[ 
Serializable 
] 
public 

partial 
class 
TimelineAsset &
:' (
PlayableAsset) 6
,6 7*
ISerializationCallbackReceiver8 V
,V W
ITimelineClipAssetX j
,j k
IPropertyPreviewl |
{ 
public 
enum 
DurationMode  
{ 	
BasedOnClips 
, 
FixedLength 
} 	
[   	
Serializable  	 
]   
public!! 
class!! 
EditorSettings!! #
{"" 	
internal## 
static## 
readonly## $
float##% *
kMinFps##+ 2
=##3 4
(##5 6
float##6 ;
)##; <
TimeUtility##< G
.##G H
kFrameRateEpsilon##H Y
;##Y Z
internal$$ 
static$$ 
readonly$$ $
float$$% *
kMaxFps$$+ 2
=$$3 4
$num$$5 <
;$$< =
internal%% 
static%% 
readonly%% $
float%%% *
kDefaultFps%%+ 6
=%%7 8
$num%%9 >
;%%> ?
[&& 
HideInInspector&& 
,&& 
SerializeField&& ,
]&&, -
float&&. 3
m_Framerate&&4 ?
=&&@ A
kDefaultFps&&B M
;&&M N
['' 
HideInInspector'' 
,'' 
SerializeField'' ,
]'', -
bool''. 2
m_ScenePreview''3 A
=''B C
true''D H
;''H I
public,, 
float,, 
fps,, 
{-- 
get.. 
{// 
return00 
m_Framerate00 &
;00& '
}11 
set22 
{33 
m_Framerate44 
=44  !
GetValidFramerate44" 3
(443 4
value444 9
)449 :
;44: ;
}55 
}66 
publicEE 
boolEE 
scenePreviewEE $
{FF 
getGG 
=>GG 
m_ScenePreviewGG %
;GG% &
setHH 
=>HH 
m_ScenePreviewHH %
=HH& '
valueHH( -
;HH- .
}II 
}JJ 	
[LL 	
HideInInspectorLL	 
,LL 
SerializeFieldLL (
]LL( )
ListLL* .
<LL. /
ScriptableObjectLL/ ?
>LL? @
m_TracksLLA I
;LLI J
[MM 	
HideInInspectorMM	 
,MM 
SerializeFieldMM (
]MM( )
doubleMM* 0
m_FixedDurationMM1 @
;MM@ A
[NN 	
HideInInspectorNN	 
,NN 
NonSerializedNN '
]NN' (

TrackAssetNN) 3
[NN3 4
]NN4 5
m_CacheOutputTracksNN6 I
;NNI J
[OO 	
HideInInspectorOO	 
,OO 
NonSerializedOO '
]OO' (
ListOO) -
<OO- .

TrackAssetOO. 8
>OO8 9
m_CacheRootTracksOO: K
;OOK L
[PP 	
HideInInspectorPP	 
,PP 
NonSerializedPP '
]PP' (
ListPP) -
<PP- .

TrackAssetPP. 8
>PP8 9"
m_CacheFlattenedTracksPP: P
;PPP Q
[QQ 	
HideInInspectorQQ	 
,QQ 
SerializeFieldQQ (
]QQ( )
EditorSettingsQQ* 8
m_EditorSettingsQQ9 I
=QQJ K
newQQL O
EditorSettingsQQP ^
(QQ^ _
)QQ_ `
;QQ` a
[RR 	
SerializeFieldRR	 
]RR 
DurationModeRR %
m_DurationModeRR& 4
;RR4 5
[TT 	
HideInInspectorTT	 
,TT 
SerializeFieldTT (
]TT( )
MarkerTrackTT* 5
m_MarkerTrackTT6 C
;TTC D
publicYY 
EditorSettingsYY 
editorSettingsYY ,
{ZZ 	
get[[ 
{[[ 
return[[ 
m_EditorSettings[[ )
;[[) *
}[[+ ,
}\\ 	
publicaa 
overrideaa 
doubleaa 
durationaa '
{bb 	
getcc 
{dd 
ifff 
(ff 
m_DurationModeff "
==ff# %
DurationModeff& 2
.ff2 3
BasedOnClipsff3 ?
)ff? @
returngg 
CalculateDurationgg ,
(gg, -
)gg- .
;gg. /
returnii 
m_FixedDurationii &
;ii& '
}jj 
}kk 	
publicpp 
doublepp 
fixedDurationpp #
{qq 	
getrr 
{ss 
DiscreteTimett 
discreteDurationtt -
=tt. /
(tt0 1
DiscreteTimett1 =
)tt= >
m_FixedDurationtt> M
;ttM N
ifuu 
(uu 
discreteDurationuu $
<=uu% '
$numuu( )
)uu) *
returnvv 
$numvv 
;vv 
returnyy 
(yy 
doubleyy 
)yy 
discreteDurationyy /
.yy/ 0
OneTickBeforeyy0 =
(yy= >
)yy> ?
;yy? @
}zz 
set{{ 
{{{ 
m_FixedDuration{{ !
={{" #
Math{{$ (
.{{( )
Max{{) ,
({{, -
$num{{- 0
,{{0 1
value{{2 7
){{7 8
;{{8 9
}{{: ;
}|| 	
public
 
DurationMode
 
durationMode
 (
{
‚‚ 	
get
ƒƒ 
{
ƒƒ 
return
ƒƒ 
m_DurationMode
ƒƒ '
;
ƒƒ' (
}
ƒƒ) *
set
„„ 
{
„„ 
m_DurationMode
„„  
=
„„! "
value
„„# (
;
„„( )
}
„„* +
}
…… 	
public
 
override
 
IEnumerable
 #
<
# $
PlayableBinding
$ 3
>
3 4
outputs
5 <
{
 	
get
 
{
 
foreach
‘‘ 
(
‘‘ 
var
‘‘ 
outputTracks
‘‘ )
in
‘‘* ,
GetOutputTracks
‘‘- <
(
‘‘< =
)
‘‘= >
)
‘‘> ?
foreach
’’ 
(
’’ 
var
’’  
output
’’! '
in
’’( *
outputTracks
’’+ 7
.
’’7 8
outputs
’’8 ?
)
’’? @
yield
““ 
return
““ $
output
““% +
;
““+ ,
}
”” 
}
•• 	
public
—— 
ClipCaps
—— 
clipCaps
——  
{
˜˜ 	
get
™™ 
{
šš 
var
›› 
caps
›› 
=
›› 
ClipCaps
›› #
.
››# $
All
››$ '
;
››' (
foreach
œœ 
(
œœ 
var
œœ 
track
œœ "
in
œœ# %
GetRootTracks
œœ& 3
(
œœ3 4
)
œœ4 5
)
œœ5 6
{
 
foreach
 
(
 
var
  
clip
! %
in
& (
track
) .
.
. /
clips
/ 4
)
4 5
caps
ŸŸ 
&=
ŸŸ 
clip
ŸŸ  $
.
ŸŸ$ %
clipCaps
ŸŸ% -
;
ŸŸ- .
}
   
return
¡¡ 
caps
¡¡ 
;
¡¡ 
}
¢¢ 
}
££ 	
public
«« 
int
«« 
outputTrackCount
«« #
{
¬¬ 	
get
­­ 
{
®® $
UpdateOutputTrackCache
¯¯ &
(
¯¯& '
)
¯¯' (
;
¯¯( )
return
°° !
m_CacheOutputTracks
°° *
.
°°* +
Length
°°+ 1
;
°°1 2
}
±± 
}
²² 	
public
ºº 
int
ºº 
rootTrackCount
ºº !
{
»» 	
get
¼¼ 
{
½½ "
UpdateRootTrackCache
¾¾ $
(
¾¾$ %
)
¾¾% &
;
¾¾& '
return
¿¿ 
m_CacheRootTracks
¿¿ (
.
¿¿( )
Count
¿¿) .
;
¿¿. /
}
ÀÀ 
}
ÁÁ 	
void
ÃÃ 

OnValidate
ÃÃ 
(
ÃÃ 
)
ÃÃ 
{
ÄÄ 	
editorSettings
ÅÅ 
.
ÅÅ 
fps
ÅÅ 
=
ÅÅ  
GetValidFramerate
ÅÅ! 2
(
ÅÅ2 3
editorSettings
ÅÅ3 A
.
ÅÅA B
fps
ÅÅB E
)
ÅÅE F
;
ÅÅF G
}
ÆÆ 	
internal
ÈÈ 
static
ÈÈ 
float
ÈÈ 
GetValidFramerate
ÈÈ /
(
ÈÈ/ 0
float
ÈÈ0 5
	framerate
ÈÈ6 ?
)
ÈÈ? @
{
ÉÉ 	
return
ÊÊ 
Mathf
ÊÊ 
.
ÊÊ 
Clamp
ÊÊ 
(
ÊÊ 
	framerate
ÊÊ (
,
ÊÊ( )
EditorSettings
ÊÊ* 8
.
ÊÊ8 9
kMinFps
ÊÊ9 @
,
ÊÊ@ A
EditorSettings
ÊÊB P
.
ÊÊP Q
kMaxFps
ÊÊQ X
)
ÊÊX Y
;
ÊÊY Z
}
ËË 	
public
ÕÕ 

TrackAsset
ÕÕ 
GetRootTrack
ÕÕ &
(
ÕÕ& '
int
ÕÕ' *
index
ÕÕ+ 0
)
ÕÕ0 1
{
ÖÖ 	"
UpdateRootTrackCache
××  
(
××  !
)
××! "
;
××" #
return
ØØ 
m_CacheRootTracks
ØØ $
[
ØØ$ %
index
ØØ% *
]
ØØ* +
;
ØØ+ ,
}
ÙÙ 	
public
àà 
IEnumerable
àà 
<
àà 

TrackAsset
àà %
>
àà% &
GetRootTracks
àà' 4
(
àà4 5
)
àà5 6
{
áá 	"
UpdateRootTrackCache
ââ  
(
ââ  !
)
ââ! "
;
ââ" #
return
ãã 
m_CacheRootTracks
ãã $
;
ãã$ %
}
ää 	
public
ëë 

TrackAsset
ëë 
GetOutputTrack
ëë (
(
ëë( )
int
ëë) ,
index
ëë- 2
)
ëë2 3
{
ìì 	$
UpdateOutputTrackCache
íí "
(
íí" #
)
íí# $
;
íí$ %
return
îî !
m_CacheOutputTracks
îî &
[
îî& '
index
îî' ,
]
îî, -
;
îî- .
}
ïï 	
public
øø 
IEnumerable
øø 
<
øø 

TrackAsset
øø %
>
øø% &
GetOutputTracks
øø' 6
(
øø6 7
)
øø7 8
{
ùù 	$
UpdateOutputTrackCache
úú "
(
úú" #
)
úú# $
;
úú$ %
return
ûû !
m_CacheOutputTracks
ûû &
;
ûû& '
}
üü 	
void
şş "
UpdateRootTrackCache
şş !
(
şş! "
)
şş" #
{
ÿÿ 	
if
€€ 
(
€€ 
m_CacheRootTracks
€€ !
==
€€" $
null
€€% )
)
€€) *
{
 
if
‚‚ 
(
‚‚ 
m_Tracks
‚‚ 
==
‚‚ 
null
‚‚  $
)
‚‚$ %
m_CacheRootTracks
ƒƒ %
=
ƒƒ& '
new
ƒƒ( +
List
ƒƒ, 0
<
ƒƒ0 1

TrackAsset
ƒƒ1 ;
>
ƒƒ; <
(
ƒƒ< =
)
ƒƒ= >
;
ƒƒ> ?
else
„„ 
{
…… 
m_CacheRootTracks
†† %
=
††& '
new
††( +
List
††, 0
<
††0 1

TrackAsset
††1 ;
>
††; <
(
††< =
m_Tracks
††= E
.
††E F
Count
††F K
)
††K L
;
††L M
if
‡‡ 
(
‡‡ 
markerTrack
‡‡ #
!=
‡‡$ &
null
‡‡' +
)
‡‡+ ,
{
ˆˆ 
m_CacheRootTracks
‰‰ )
.
‰‰) *
Add
‰‰* -
(
‰‰- .
markerTrack
‰‰. 9
)
‰‰9 :
;
‰‰: ;
}
ŠŠ 
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ  
t
ŒŒ! "
in
ŒŒ# %
m_Tracks
ŒŒ& .
)
ŒŒ. /
{
 
var
 

trackAsset
 &
=
' (
t
) *
as
+ -

TrackAsset
. 8
;
8 9
if
 
(
 

trackAsset
 &
!=
' )
null
* .
)
. /
m_CacheRootTracks
 -
.
- .
Add
. 1
(
1 2

trackAsset
2 <
)
< =
;
= >
}
‘‘ 
}
’’ 
}
““ 
}
”” 	
void
–– $
UpdateOutputTrackCache
–– #
(
––# $
)
––$ %
{
—— 	
if
˜˜ 
(
˜˜ !
m_CacheOutputTracks
˜˜ #
==
˜˜$ &
null
˜˜' +
)
˜˜+ ,
{
™™ 
var
šš 
outputTracks
šš  
=
šš! "
new
šš# &
List
šš' +
<
šš+ ,

TrackAsset
šš, 6
>
šš6 7
(
šš7 8
)
šš8 9
;
šš9 :
foreach
›› 
(
›› 
var
›› 
flattenedTrack
›› +
in
››, .
flattenedTracks
››/ >
)
››> ?
{
œœ 
if
 
(
 
flattenedTrack
 &
!=
' )
null
* .
&&
/ 1
flattenedTrack
2 @
.
@ A
GetType
A H
(
H I
)
I J
!=
K M
typeof
N T
(
T U

GroupTrack
U _
)
_ `
&&
a c
!
d e
flattenedTrack
e s
.
s t

isSubTrack
t ~
)
~ 
outputTracks
 $
.
$ %
Add
% (
(
( )
flattenedTrack
) 7
)
7 8
;
8 9
}
ŸŸ !
m_CacheOutputTracks
   #
=
  $ %
outputTracks
  & 2
.
  2 3
ToArray
  3 :
(
  : ;
)
  ; <
;
  < =
}
¡¡ 
}
¢¢ 	
internal
¤¤ 
IEnumerable
¤¤ 
<
¤¤ 

TrackAsset
¤¤ '
>
¤¤' (
flattenedTracks
¤¤) 8
{
¥¥ 	
get
¦¦ 
{
§§ 
if
¨¨ 
(
¨¨ $
m_CacheFlattenedTracks
¨¨ *
==
¨¨+ -
null
¨¨. 2
)
¨¨2 3
{
©© $
m_CacheFlattenedTracks
ªª *
=
ªª+ ,
new
ªª- 0
List
ªª1 5
<
ªª5 6

TrackAsset
ªª6 @
>
ªª@ A
(
ªªA B
m_Tracks
ªªB J
.
ªªJ K
Count
ªªK P
*
ªªQ R
$num
ªªS T
)
ªªT U
;
ªªU V"
UpdateRootTrackCache
«« (
(
««( )
)
««) *
;
««* +$
m_CacheFlattenedTracks
­­ *
.
­­* +
AddRange
­­+ 3
(
­­3 4
m_CacheRootTracks
­­4 E
)
­­E F
;
­­F G
for
®® 
(
®® 
int
®® 
i
®® 
=
®®  
$num
®®! "
;
®®" #
i
®®$ %
<
®®& '
m_CacheRootTracks
®®( 9
.
®®9 :
Count
®®: ?
;
®®? @
i
®®A B
++
®®B D
)
®®D E
{
¯¯ #
AddSubTracksRecursive
°° -
(
°°- .
m_CacheRootTracks
°°. ?
[
°°? @
i
°°@ A
]
°°A B
,
°°B C
ref
°°D G$
m_CacheFlattenedTracks
°°H ^
)
°°^ _
;
°°_ `
}
±± 
}
²² 
return
³³ $
m_CacheFlattenedTracks
³³ -
;
³³- .
}
´´ 
}
µµ 	
public
¾¾ 
MarkerTrack
¾¾ 
markerTrack
¾¾ &
{
¿¿ 	
get
ÀÀ 
{
ÀÀ 
return
ÀÀ 
m_MarkerTrack
ÀÀ &
;
ÀÀ& '
}
ÀÀ( )
}
ÁÁ 	
internal
ÄÄ 
List
ÄÄ 
<
ÄÄ 
ScriptableObject
ÄÄ &
>
ÄÄ& '
trackObjects
ÄÄ( 4
{
ÅÅ 	
get
ÆÆ 
{
ÆÆ 
return
ÆÆ 
m_Tracks
ÆÆ !
;
ÆÆ! "
}
ÆÆ# $
}
ÇÇ 	
internal
ÉÉ 
void
ÉÉ 
AddTrackInternal
ÉÉ &
(
ÉÉ& '

TrackAsset
ÉÉ' 1
track
ÉÉ2 7
)
ÉÉ7 8
{
ÊÊ 	
m_Tracks
ËË 
.
ËË 
Add
ËË 
(
ËË 
track
ËË 
)
ËË 
;
ËË  
track
ÌÌ 
.
ÌÌ 
parent
ÌÌ 
=
ÌÌ 
this
ÌÌ 
;
ÌÌ  

Invalidate
ÍÍ 
(
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
internal
ĞĞ 
void
ĞĞ 
RemoveTrack
ĞĞ !
(
ĞĞ! "

TrackAsset
ĞĞ" ,
track
ĞĞ- 2
)
ĞĞ2 3
{
ÑÑ 	
m_Tracks
ÒÒ 
.
ÒÒ 
Remove
ÒÒ 
(
ÒÒ 
track
ÒÒ !
)
ÒÒ! "
;
ÒÒ" #

Invalidate
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
var
ÔÔ 
parentTrack
ÔÔ 
=
ÔÔ 
track
ÔÔ #
.
ÔÔ# $
parent
ÔÔ$ *
as
ÔÔ+ -

TrackAsset
ÔÔ. 8
;
ÔÔ8 9
if
ÕÕ 
(
ÕÕ 
parentTrack
ÕÕ 
!=
ÕÕ 
null
ÕÕ #
)
ÕÕ# $
{
ÖÖ 
parentTrack
×× 
.
×× 
RemoveSubTrack
×× *
(
××* +
track
××+ 0
)
××0 1
;
××1 2
}
ØØ 
}
ÙÙ 	
public
áá 
override
áá 
Playable
áá  
CreatePlayable
áá! /
(
áá/ 0
PlayableGraph
áá0 =
graph
áá> C
,
ááC D

GameObject
ááE O
go
ááP R
)
ááR S
{
ââ 	
bool
ãã 
autoRebalanceTree
ãã "
=
ãã# $
false
ãã% *
;
ãã* +
autoRebalanceTree
åå 
=
åå 
true
åå  $
;
åå$ %
bool
éé 
createOutputs
éé 
=
éé  
graph
éé! &
.
éé& '
GetPlayableCount
éé' 7
(
éé7 8
)
éé8 9
==
éé: <
$num
éé= >
;
éé> ?
var
êê 
timeline
êê 
=
êê 
TimelinePlayable
êê +
.
êê+ ,
Create
êê, 2
(
êê2 3
graph
êê3 8
,
êê8 9
GetOutputTracks
êê: I
(
êêI J
)
êêJ K
,
êêK L
go
êêM O
,
êêO P
autoRebalanceTree
êêQ b
,
êêb c
createOutputs
êêd q
)
êêq r
;
êêr s
timeline
ëë 
.
ëë !
SetPropagateSetTime
ëë (
(
ëë( )
true
ëë) -
)
ëë- .
;
ëë. /
return
ìì 
timeline
ìì 
.
ìì 
IsValid
ìì #
(
ìì# $
)
ìì$ %
?
ìì& '
timeline
ìì( 0
:
ìì1 2
Playable
ìì3 ;
.
ìì; <
Null
ìì< @
;
ìì@ A
}
íí 	
void
ğğ ,
ISerializationCallbackReceiver
ğğ +
.
ğğ+ ,
OnBeforeSerialize
ğğ, =
(
ğğ= >
)
ğğ> ?
{
ññ 	
	m_Version
òò 
=
òò 
k_LatestVersion
òò '
;
òò' (
}
óó 	
void
öö ,
ISerializationCallbackReceiver
öö +
.
öö+ , 
OnAfterDeserialize
öö, >
(
öö> ?
)
öö? @
{
÷÷ 	

Invalidate
ùù 
(
ùù 
)
ùù 
;
ùù 
if
úú 
(
úú 
	m_Version
úú 
<
úú 
k_LatestVersion
úú +
)
úú+ ,
{
ûû $
UpgradeToLatestVersion
üü &
(
üü& '
)
üü' (
;
üü( )
}
ıı 
}
şş 	
void
€€ 
__internalAwake
€€ 
(
€€ 
)
€€ 
{
 	
if
‚‚ 
(
‚‚ 
m_Tracks
‚‚ 
==
‚‚ 
null
‚‚  
)
‚‚  !
m_Tracks
ƒƒ 
=
ƒƒ 
new
ƒƒ 
List
ƒƒ #
<
ƒƒ# $
ScriptableObject
ƒƒ$ 4
>
ƒƒ4 5
(
ƒƒ5 6
)
ƒƒ6 7
;
ƒƒ7 8
for
†† 
(
†† 
int
†† 
i
†† 
=
†† 
m_Tracks
†† !
.
††! "
Count
††" '
-
††( )
$num
††* +
;
††+ ,
i
††- .
>=
††/ 1
$num
††2 3
;
††3 4
i
††5 6
--
††6 8
)
††8 9
{
‡‡ 

TrackAsset
ˆˆ 
asset
ˆˆ  
=
ˆˆ! "
m_Tracks
ˆˆ# +
[
ˆˆ+ ,
i
ˆˆ, -
]
ˆˆ- .
as
ˆˆ/ 1

TrackAsset
ˆˆ2 <
;
ˆˆ< =
if
‰‰ 
(
‰‰ 
asset
‰‰ 
!=
‰‰ 
null
‰‰ !
)
‰‰! "
asset
ŠŠ 
.
ŠŠ 
parent
ŠŠ  
=
ŠŠ! "
this
ŠŠ# '
;
ŠŠ' (
object
ŒŒ 
o
ŒŒ 
=
ŒŒ 
m_Tracks
ŒŒ #
[
ŒŒ# $
i
ŒŒ$ %
]
ŒŒ% &
;
ŒŒ& '
if
 
(
 
o
 
==
 
null
 
)
 
{
 
Debug
 
.
 

LogWarning
 $
(
$ %
$str
% d
)
d e
;
e f
m_Tracks
 
.
 
RemoveAt
 %
(
% &
i
& '
)
' (
;
( )
}
‘‘ 
}
““ 
}
”” 	
public
›› 
void
›› 
GatherProperties
›› $
(
››$ %
PlayableDirector
››% 5
director
››6 >
,
››> ? 
IPropertyCollector
››@ R
driver
››S Y
)
››Y Z
{
œœ 	
var
 
outputTracks
 
=
 
GetOutputTracks
 .
(
. /
)
/ 0
;
0 1
foreach
 
(
 
var
 
track
 
in
 !
outputTracks
" .
)
. /
{
ŸŸ 
if
   
(
   
!
   
track
   
.
   
mutedInHierarchy
   +
)
  + ,
track
¡¡ 
.
¡¡ 
GatherProperties
¡¡ *
(
¡¡* +
director
¡¡+ 3
,
¡¡3 4
driver
¡¡5 ;
)
¡¡; <
;
¡¡< =
}
¢¢ 
}
££ 	
public
­­ 
void
­­ 
CreateMarkerTrack
­­ %
(
­­% &
)
­­& '
{
®® 	
if
¯¯ 
(
¯¯ 
m_MarkerTrack
¯¯ 
==
¯¯  
null
¯¯! %
)
¯¯% &
{
°° 
m_MarkerTrack
±± 
=
±± 
CreateInstance
±±  .
<
±±. /
MarkerTrack
±±/ :
>
±±: ;
(
±±; <
)
±±< =
;
±±= >%
TimelineCreateUtilities
²² '
.
²²' (!
SaveAssetIntoObject
²²( ;
(
²²; <
m_MarkerTrack
²²< I
,
²²I J
this
²²K O
)
²²O P
;
²²P Q
m_MarkerTrack
³³ 
.
³³ 
parent
³³ $
=
³³% &
this
³³' +
;
³³+ ,
m_MarkerTrack
´´ 
.
´´ 
name
´´ "
=
´´# $
$str
´´% .
;
´´. /

Invalidate
µµ 
(
µµ 
)
µµ 
;
µµ 
}
¶¶ 
}
·· 	
internal
ºº 
void
ºº 

Invalidate
ºº  
(
ºº  !
)
ºº! "
{
»» 	
m_CacheRootTracks
¼¼ 
=
¼¼ 
null
¼¼  $
;
¼¼$ %!
m_CacheOutputTracks
½½ 
=
½½  !
null
½½" &
;
½½& '$
m_CacheFlattenedTracks
¾¾ "
=
¾¾# $
null
¾¾% )
;
¾¾) *
}
¿¿ 	
double
ÁÁ 
CalculateDuration
ÁÁ  
(
ÁÁ  !
)
ÁÁ! "
{
ÂÂ 	
var
ÃÃ 
discreteDuration
ÃÃ  
=
ÃÃ! "
new
ÃÃ# &
DiscreteTime
ÃÃ' 3
(
ÃÃ3 4
$num
ÃÃ4 5
)
ÃÃ5 6
;
ÃÃ6 7
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
track
ÄÄ 
in
ÄÄ !
flattenedTracks
ÄÄ" 1
)
ÄÄ1 2
{
ÅÅ 
if
ÆÆ 
(
ÆÆ 
track
ÆÆ 
.
ÆÆ 
muted
ÆÆ 
)
ÆÆ  
continue
ÇÇ 
;
ÇÇ 
discreteDuration
ÉÉ  
=
ÉÉ! "
DiscreteTime
ÉÉ# /
.
ÉÉ/ 0
Max
ÉÉ0 3
(
ÉÉ3 4
discreteDuration
ÉÉ4 D
,
ÉÉD E
(
ÉÉF G
DiscreteTime
ÉÉG S
)
ÉÉS T
track
ÉÉT Y
.
ÉÉY Z
end
ÉÉZ ]
)
ÉÉ] ^
;
ÉÉ^ _
}
ÊÊ 
if
ÌÌ 
(
ÌÌ 
discreteDuration
ÌÌ  
<=
ÌÌ! #
$num
ÌÌ$ %
)
ÌÌ% &
return
ÍÍ 
$num
ÍÍ 
;
ÍÍ 
return
ĞĞ 
(
ĞĞ 
double
ĞĞ 
)
ĞĞ 
discreteDuration
ĞĞ +
.
ĞĞ+ ,
OneTickBefore
ĞĞ, 9
(
ĞĞ9 :
)
ĞĞ: ;
;
ĞĞ; <
}
ÑÑ 	
static
ÓÓ 
void
ÓÓ #
AddSubTracksRecursive
ÓÓ )
(
ÓÓ) *

TrackAsset
ÓÓ* 4
track
ÓÓ5 :
,
ÓÓ: ;
ref
ÓÓ< ?
List
ÓÓ@ D
<
ÓÓD E

TrackAsset
ÓÓE O
>
ÓÓO P
	allTracks
ÓÓQ Z
)
ÓÓZ [
{
ÔÔ 	
if
ÕÕ 
(
ÕÕ 
track
ÕÕ 
==
ÕÕ 
null
ÕÕ 
)
ÕÕ 
return
ÖÖ 
;
ÖÖ 
	allTracks
ØØ 
.
ØØ 
AddRange
ØØ 
(
ØØ 
track
ØØ $
.
ØØ$ %
GetChildTracks
ØØ% 3
(
ØØ3 4
)
ØØ4 5
)
ØØ5 6
;
ØØ6 7
foreach
ÙÙ 
(
ÙÙ 

TrackAsset
ÙÙ 
subTrack
ÙÙ  (
in
ÙÙ) +
track
ÙÙ, 1
.
ÙÙ1 2
GetChildTracks
ÙÙ2 @
(
ÙÙ@ A
)
ÙÙA B
)
ÙÙB C
{
ÚÚ #
AddSubTracksRecursive
ÛÛ %
(
ÛÛ% &
subTrack
ÛÛ& .
,
ÛÛ. /
ref
ÛÛ0 3
	allTracks
ÛÛ4 =
)
ÛÛ= >
;
ÛÛ> ?
}
ÜÜ 
}
İİ 	
}
ŞŞ 
}ßß ¢€
›D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\DirectorControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class #
DirectorControlPlayable (
:) *
PlayableBehaviour+ <
{ 
public 
PlayableDirector 
director  (
;( )
private 
bool 

m_SyncTime 
=  !
false" '
;' (
private 
double 
m_AssetDuration &
=' (
double) /
./ 0
MaxValue0 8
;8 9
public 
static 
ScriptPlayable $
<$ %#
DirectorControlPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
PlayableDirectorZ j
directork s
)s t
{ 	
if   
(   
director   
==   
null    
)    !
return!! 
ScriptPlayable!! %
<!!% &#
DirectorControlPlayable!!& =
>!!= >
.!!> ?
Null!!? C
;!!C D
var## 
handle## 
=## 
ScriptPlayable## '
<##' (#
DirectorControlPlayable##( ?
>##? @
.##@ A
Create##A G
(##G H
graph##H M
)##M N
;##N O
handle$$ 
.$$ 
GetBehaviour$$ 
($$  
)$$  !
.$$! "
director$$" *
=$$+ ,
director$$- 5
;$$5 6
if'' 
('' 
!'' 
Application'' 
.'' 
	isPlaying'' &
&&''' )
UnityEditor''* 5
.''5 6
PrefabUtility''6 C
.''C D"
IsPartOfPrefabInstance''D Z
(''Z [
director''[ c
)''c d
)''d e
UnityEditor(( 
.(( 
PrefabUtility(( )
.(() *!
prefabInstanceUpdated((* ?
+=((@ B
handle((C I
.((I J
GetBehaviour((J V
(((V W
)((W X
.((X Y
OnPrefabUpdated((Y h
;((h i
return++ 
handle++ 
;++ 
},, 	
public// 
override// 
void// 
OnPlayableDestroy// .
(//. /
Playable/// 7
playable//8 @
)//@ A
{00 	
if22 
(22 
!22 
Application22 
.22 
	isPlaying22 &
)22& '
UnityEditor33 
.33 
PrefabUtility33 )
.33) *!
prefabInstanceUpdated33* ?
-=33@ B
OnPrefabUpdated33C R
;33R S
if55 
(55 
director55 
!=55 
null55  
&&55! #
director55$ ,
.55, -
playableAsset55- :
!=55; =
null55> B
)55B C
director66 
.66 
Stop66 
(66 
)66 
;66  
}77 	
public>> 
override>> 
void>> 
PrepareFrame>> )
(>>) *
Playable>>* 2
playable>>3 ;
,>>; <
	FrameData>>= F
info>>G K
)>>K L
{?? 	
if@@ 
(@@ 
director@@ 
==@@ 
null@@  
||@@! #
!@@$ %
director@@% -
.@@- .
isActiveAndEnabled@@. @
||@@A C
director@@D L
.@@L M
playableAsset@@M Z
==@@[ ]
null@@^ b
)@@b c
returnAA 
;AA 

m_SyncTimeDD 
|=DD 
(DD 
infoDD 
.DD  
evaluationTypeDD  .
==DD/ 1
	FrameDataDD2 ;
.DD; <
EvaluationTypeDD< J
.DDJ K
EvaluateDDK S
)DDS T
||DDU W
DetectDiscontinuityEE #
(EE# $
playableEE$ ,
,EE, -
infoEE. 2
)EE2 3
;EE3 4
	SyncSpeedGG 
(GG 
infoGG 
.GG 
effectiveSpeedGG )
)GG) *
;GG* +
SyncPlayStateHH 
(HH 
playableHH "
.HH" #
GetGraphHH# +
(HH+ ,
)HH, -
,HH- .
playableHH/ 7
.HH7 8
GetTimeHH8 ?
(HH? @
)HH@ A
)HHA B
;HHB C
}II 	
publicPP 
overridePP 
voidPP 
OnBehaviourPlayPP ,
(PP, -
PlayablePP- 5
playablePP6 >
,PP> ?
	FrameDataPP@ I
infoPPJ N
)PPN O
{QQ 	

m_SyncTimeRR 
=RR 
trueRR 
;RR 
ifTT 
(TT 
directorTT 
!=TT 
nullTT  
&&TT! #
directorTT$ ,
.TT, -
playableAssetTT- :
!=TT; =
nullTT> B
)TTB C
m_AssetDurationUU 
=UU  !
directorUU" *
.UU* +
playableAssetUU+ 8
.UU8 9
durationUU9 A
;UUA B
}VV 	
public]] 
override]] 
void]] 
OnBehaviourPause]] -
(]]- .
Playable]]. 6
playable]]7 ?
,]]? @
	FrameData]]A J
info]]K O
)]]O P
{^^ 	
if__ 
(__ 
director__ 
!=__ 
null__  
&&__! #
director__$ ,
.__, -
playableAsset__- :
!=__; =
null__> B
)__B C
{`` 
ifaa 
(aa 
infoaa 
.aa 
effectivePlayStateaa +
==aa, .
	PlayStateaa/ 8
.aa8 9
Playingaa9 @
)aa@ A
directorbb 
.bb 
Pausebb "
(bb" #
)bb# $
;bb$ %
elsecc 
directordd 
.dd 
Stopdd !
(dd! "
)dd" #
;dd# $
}ee 
}ff 	
publicnn 
overridenn 
voidnn 
ProcessFramenn )
(nn) *
Playablenn* 2
playablenn3 ;
,nn; <
	FrameDatann= F
infonnG K
,nnK L
objectnnM S

playerDatannT ^
)nn^ _
{oo 	
ifpp 
(pp 
directorpp 
==pp 
nullpp  
||pp! #
!pp$ %
directorpp% -
.pp- .
isActiveAndEnabledpp. @
||ppA C
directorppD L
.ppL M
playableAssetppM Z
==pp[ ]
nullpp^ b
)ppb c
returnqq 
;qq 
ifss 
(ss 

m_SyncTimess 
||ss 
DetectOutOfSyncss -
(ss- .
playabless. 6
)ss6 7
)ss7 8
{tt 

UpdateTimeuu 
(uu 
playableuu #
)uu# $
;uu$ %
directorvv 
.vv 
Evaluatevv !
(vv! "
)vv" #
;vv# $
}ww 

m_SyncTimeyy 
=yy 
falseyy 
;yy 
}zz 	
void}} 
OnPrefabUpdated}} 
(}} 

GameObject}} '
go}}( *
)}}* +
{~~ 	
if
€€ 
(
€€ 
UnityEditor
€€ 
.
€€ 
PrefabUtility
€€ )
.
€€) *
GetRootGameObject
€€* ;
(
€€; <
director
€€< D
)
€€D E
==
€€F H
go
€€I K
)
€€K L
director
 
.
 
RebuildGraph
 %
(
% &
)
& '
;
' (
}
‚‚ 	
void
†† 
	SyncSpeed
†† 
(
†† 
double
†† 
speed
†† #
)
††# $
{
‡‡ 	
if
ˆˆ 
(
ˆˆ 
director
ˆˆ 
.
ˆˆ 
playableGraph
ˆˆ &
.
ˆˆ& '
IsValid
ˆˆ' .
(
ˆˆ. /
)
ˆˆ/ 0
)
ˆˆ0 1
{
‰‰ 
int
ŠŠ 
roots
ŠŠ 
=
ŠŠ 
director
ŠŠ $
.
ŠŠ$ %
playableGraph
ŠŠ% 2
.
ŠŠ2 3"
GetRootPlayableCount
ŠŠ3 G
(
ŠŠG H
)
ŠŠH I
;
ŠŠI J
for
‹‹ 
(
‹‹ 
int
‹‹ 
i
‹‹ 
=
‹‹ 
$num
‹‹ 
;
‹‹ 
i
‹‹  !
<
‹‹" #
roots
‹‹$ )
;
‹‹) *
i
‹‹+ ,
++
‹‹, .
)
‹‹. /
{
ŒŒ 
var
 
rootPlayable
 $
=
% &
director
' /
.
/ 0
playableGraph
0 =
.
= >
GetRootPlayable
> M
(
M N
i
N O
)
O P
;
P Q
if
 
(
 
rootPlayable
 $
.
$ %
IsValid
% ,
(
, -
)
- .
)
. /
{
 
rootPlayable
 $
.
$ %
SetSpeed
% -
(
- .
speed
. 3
)
3 4
;
4 5
}
‘‘ 
}
’’ 
}
““ 
}
”” 	
void
–– 
SyncPlayState
–– 
(
–– 
PlayableGraph
–– (
graph
––) .
,
––. /
double
––0 6
playableTime
––7 C
)
––C D
{
—— 	
bool
˜˜ 
expectedFinished
˜˜ !
=
˜˜" #
(
˜˜$ %
playableTime
˜˜% 1
>=
˜˜2 4
m_AssetDuration
˜˜5 D
)
˜˜D E
&&
˜˜F H
director
˜˜I Q
.
˜˜Q R
extrapolationMode
˜˜R c
==
˜˜d f
DirectorWrapMode
˜˜g w
.
˜˜w x
None
˜˜x |
;
˜˜| }
if
™™ 
(
™™ 
graph
™™ 
.
™™ 
	IsPlaying
™™ 
(
™™  
)
™™  !
&&
™™" $
!
™™% &
expectedFinished
™™& 6
)
™™6 7
director
šš 
.
šš 
Play
šš 
(
šš 
)
šš 
;
šš  
else
›› 
director
œœ 
.
œœ 
Pause
œœ 
(
œœ 
)
œœ  
;
œœ  !
}
 	
bool
ŸŸ !
DetectDiscontinuity
ŸŸ  
(
ŸŸ  !
Playable
ŸŸ! )
playable
ŸŸ* 2
,
ŸŸ2 3
	FrameData
ŸŸ4 =
info
ŸŸ> B
)
ŸŸB C
{
   	
return
¡¡ 
Math
¡¡ 
.
¡¡ 
Abs
¡¡ 
(
¡¡ 
playable
¡¡ $
.
¡¡$ %
GetTime
¡¡% ,
(
¡¡, -
)
¡¡- .
-
¡¡/ 0
playable
¡¡1 9
.
¡¡9 :
GetPreviousTime
¡¡: I
(
¡¡I J
)
¡¡J K
-
¡¡L M
info
¡¡N R
.
¡¡R S
m_DeltaTime
¡¡S ^
*
¡¡_ `
info
¡¡a e
.
¡¡e f
m_EffectiveSpeed
¡¡f v
)
¡¡v w
>
¡¡x y
DiscreteTime¡¡z †
.¡¡† ‡
	tickValue¡¡‡ 
;¡¡ ‘
}
¢¢ 	
bool
¤¤ 
DetectOutOfSync
¤¤ 
(
¤¤ 
Playable
¤¤ %
playable
¤¤& .
)
¤¤. /
{
¥¥ 	
double
¦¦ 
expectedTime
¦¦ 
=
¦¦  !
playable
¦¦" *
.
¦¦* +
GetTime
¦¦+ 2
(
¦¦2 3
)
¦¦3 4
;
¦¦4 5
if
§§ 
(
§§ 
playable
§§ 
.
§§ 
GetTime
§§  
(
§§  !
)
§§! "
>=
§§# %
m_AssetDuration
§§& 5
)
§§5 6
{
¨¨ 
if
©© 
(
©© 
director
©© 
.
©© 
extrapolationMode
©© .
==
©©/ 1
DirectorWrapMode
©©2 B
.
©©B C
None
©©C G
)
©©G H
return
ªª 
false
ªª  
;
ªª  !
else
«« 
if
«« 
(
«« 
director
«« !
.
««! "
extrapolationMode
««" 3
==
««4 6
DirectorWrapMode
««7 G
.
««G H
Hold
««H L
)
««L M
expectedTime
¬¬  
=
¬¬! "
m_AssetDuration
¬¬# 2
;
¬¬2 3
else
­­ 
if
­­ 
(
­­ 
m_AssetDuration
­­ (
>
­­) *
float
­­+ 0
.
­­0 1
Epsilon
­­1 8
)
­­8 9
expectedTime
®®  
=
®®! "
expectedTime
®®# /
%
®®0 1
m_AssetDuration
®®2 A
;
®®A B
}
¯¯ 
if
±± 
(
±± 
!
±± 
Mathf
±± 
.
±± 
Approximately
±± $
(
±±$ %
(
±±% &
float
±±& +
)
±±+ ,
expectedTime
±±, 8
,
±±8 9
(
±±: ;
float
±±; @
)
±±@ A
director
±±A I
.
±±I J
time
±±J N
)
±±N O
)
±±O P
{
²² 
double
´´ 
	lastDelta
´´  
=
´´! "
playable
´´# +
.
´´+ ,
GetTime
´´, 3
(
´´3 4
)
´´4 5
-
´´6 7
playable
´´8 @
.
´´@ A
GetPreviousTime
´´A P
(
´´P Q
)
´´Q R
;
´´R S
if
µµ 
(
µµ 
UnityEditor
µµ 
.
µµ  
Unsupported
µµ  +
.
µµ+ ,
IsDeveloperBuild
µµ, <
(
µµ< =
)
µµ= >
)
µµ> ?
Debug
¶¶ 
.
¶¶ 
LogWarningFormat
¶¶ *
(
¶¶* +
$str¶¶+ Õ
,¶¶Õ Ö
playable¶¶× ß
.¶¶ß à
GetTime¶¶à ç
(¶¶ç è
)¶¶è é
,¶¶é ê
director¶¶ë ó
.¶¶ó ô
time¶¶ô ø
,¶¶ø ù
director¶¶ú ‚
.¶¶‚ ƒ
name¶¶ƒ ‡
,¶¶‡ ˆ
	lastDelta¶¶‰ ’
)¶¶’ “
;¶¶“ ”
return
¸¸ 
true
¸¸ 
;
¸¸ 
}
¹¹ 
return
ºº 
false
ºº 
;
ºº 
}
»» 	
void
¾¾ 

UpdateTime
¾¾ 
(
¾¾ 
Playable
¾¾  
playable
¾¾! )
)
¾¾) *
{
¿¿ 	
double
ÀÀ 
duration
ÀÀ 
=
ÀÀ 
Math
ÀÀ "
.
ÀÀ" #
Max
ÀÀ# &
(
ÀÀ& '
$num
ÀÀ' *
,
ÀÀ* +
director
ÀÀ, 4
.
ÀÀ4 5
playableAsset
ÀÀ5 B
.
ÀÀB C
duration
ÀÀC K
)
ÀÀK L
;
ÀÀL M
switch
ÁÁ 
(
ÁÁ 
director
ÁÁ 
.
ÁÁ 
extrapolationMode
ÁÁ .
)
ÁÁ. /
{
ÂÂ 
case
ÃÃ 
DirectorWrapMode
ÃÃ %
.
ÃÃ% &
Hold
ÃÃ& *
:
ÃÃ* +
director
ÄÄ 
.
ÄÄ 
time
ÄÄ !
=
ÄÄ" #
Math
ÄÄ$ (
.
ÄÄ( )
Min
ÄÄ) ,
(
ÄÄ, -
duration
ÄÄ- 5
,
ÄÄ5 6
Math
ÄÄ7 ;
.
ÄÄ; <
Max
ÄÄ< ?
(
ÄÄ? @
$num
ÄÄ@ A
,
ÄÄA B
playable
ÄÄC K
.
ÄÄK L
GetTime
ÄÄL S
(
ÄÄS T
)
ÄÄT U
)
ÄÄU V
)
ÄÄV W
;
ÄÄW X
break
ÅÅ 
;
ÅÅ 
case
ÆÆ 
DirectorWrapMode
ÆÆ %
.
ÆÆ% &
Loop
ÆÆ& *
:
ÆÆ* +
director
ÇÇ 
.
ÇÇ 
time
ÇÇ !
=
ÇÇ" #
Math
ÇÇ$ (
.
ÇÇ( )
Max
ÇÇ) ,
(
ÇÇ, -
$num
ÇÇ- .
,
ÇÇ. /
playable
ÇÇ0 8
.
ÇÇ8 9
GetTime
ÇÇ9 @
(
ÇÇ@ A
)
ÇÇA B
%
ÇÇC D
duration
ÇÇE M
)
ÇÇM N
;
ÇÇN O
break
ÈÈ 
;
ÈÈ 
case
ÉÉ 
DirectorWrapMode
ÉÉ %
.
ÉÉ% &
None
ÉÉ& *
:
ÉÉ* +
director
ÊÊ 
.
ÊÊ 
time
ÊÊ !
=
ÊÊ" #
playable
ÊÊ$ ,
.
ÊÊ, -
GetTime
ÊÊ- 4
(
ÊÊ4 5
)
ÊÊ5 6
;
ÊÊ6 7
break
ËË 
;
ËË 
}
ÌÌ 
}
ÍÍ 	
}
ÎÎ 
}ÏÏ Ú¢
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\AnimationPreviewUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static		 

class		 %
AnimationPreviewUtilities		 *
{

 
private 
const 
string 
k_PosX #
=$ %
$str& 9
;9 :
private 
const 
string 
k_PosY #
=$ %
$str& 9
;9 :
private 
const 
string 
k_PosZ #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotX #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotY #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotZ #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotW #
=$ %
$str& 9
;9 :
private 
const 
string 
k_ScaleX %
=& '
$str( 8
;8 9
private 
const 
string 
k_ScaleY %
=& '
$str( 8
;8 9
private 
const 
string 
k_ScaleZ %
=& '
$str( 8
;8 9
private 
const 
string 
k_EulerAnglesRaw -
=. /
$str0 E
;E F
private 
const 
string 
k_EulerHint (
=) *
$str+ C
;C D
private 
const 
string 
k_Pos "
=# $
$str% 6
;6 7
private 
const 
string 
k_Rot "
=# $
$str% 6
;6 7
private 
const 
string 
	k_MotionT &
=' (
$str) 2
;2 3
private 
const 
string 
	k_MotionQ &
=' (
$str) 2
;2 3
private 
const 
string 
k_RootT $
=% &
$str' .
;. /
private 
const 
string 
k_RootQ $
=% &
$str' .
;. /
internal 
static 
Object 
s_PreviewDriver .
;. /
internal"" 
class"" &
EditorCurveBindingComparer"" 1
:""2 3
IEqualityComparer""4 E
<""E F
EditorCurveBinding""F X
>""X Y
{## 	
public$$ 
bool$$ 
Equals$$ 
($$ 
EditorCurveBinding$$ 1
x$$2 3
,$$3 4
EditorCurveBinding$$5 G
y$$H I
)$$I J
{$$K L
return$$M S
x$$T U
.$$U V
path$$V Z
.$$Z [
Equals$$[ a
($$a b
y$$b c
.$$c d
path$$d h
)$$h i
&&$$j l
x$$m n
.$$n o
type$$o s
==$$t v
y$$w x
.$$x y
type$$y }
&&	$$~ €
x
$$ ‚
.
$$‚ ƒ
propertyName
$$ƒ 
==
$$ ’
y
$$“ ”
.
$$” •
propertyName
$$• ¡
;
$$¡ ¢
}
$$£ ¤
public%% 
int%% 
GetHashCode%% "
(%%" #
EditorCurveBinding%%# 5
obj%%6 9
)%%9 :
{&& 
return'' 
obj'' 
.'' 
propertyName'' '
.''' (
GetHashCode''( 3
(''3 4
)''4 5
^''6 7
obj''8 ;
.''; <
path''< @
.''@ A
GetHashCode''A L
(''L M
)''M N
;''N O
}(( 
public** 
static** 
readonly** "&
EditorCurveBindingComparer**# =
Instance**> F
=**G H
new**I L&
EditorCurveBindingComparer**M g
(**g h
)**h i
;**i j
}++ 	
private.. 
static.. 
readonly.. 

Dictionary..  *
<..* +
EditorCurveBinding..+ =
,..= >
int..? B
>..B C

s_CurveSet..D N
=..O P
new..Q T

Dictionary..U _
<.._ `
EditorCurveBinding..` r
,..r s
int..t w
>..w x
(..x y
$num..y ~
,..~ (
EditorCurveBindingComparer
..€ š
.
..š ›
Instance
..› £
)
..£ ¤
;
..¤ ¥
private// 
static// 
readonly//  
AnimatorBindingCache//  4
s_BindingCache//5 C
=//D E
new//F I 
AnimatorBindingCache//J ^
(//^ _
)//_ `
;//` a
private33 
static33 
bool33 
FastStartsWith33 *
(33* +
string33+ 1
a332 3
,333 4
string335 ;
	toCompare33< E
)33E F
{44 	
int55 
aLen55 
=55 
a55 
.55 
Length55 
;55  
int66 
bLen66 
=66 
	toCompare66  
.66  !
Length66! '
;66' (
int88 
ap88 
=88 
$num88 
;88 
int99 
bp99 
=99 
$num99 
;99 
while;; 
(;; 
ap;; 
<;; 
aLen;; 
&&;; 
bp;;  "
<;;# $
bLen;;% )
&&;;* ,
a;;- .
[;;. /
ap;;/ 1
];;1 2
==;;3 5
	toCompare;;6 ?
[;;? @
bp;;@ B
];;B C
);;C D
{<< 
ap== 
++== 
;== 
bp>> 
++>> 
;>> 
}?? 
returnAA 
(AA 
bpAA 
==AA 
bLenAA 
)AA 
;AA  
}BB 	
publicDD 
staticDD 
voidDD 
ClearCachesDD &
(DD& '
)DD' (
{EE 	
s_BindingCacheFF 
.FF 
ClearFF  
(FF  !
)FF! "
;FF" #

s_CurveSetGG 
.GG 
ClearGG 
(GG 
)GG 
;GG 
}HH 	
publicJJ 
staticJJ 
EditorCurveBindingJJ (
[JJ( )
]JJ) *
GetBindingsJJ+ 6
(JJ6 7

GameObjectJJ7 A
animatorRootJJB N
,JJN O
IEnumerableJJP [
<JJ[ \
AnimationClipJJ\ i
>JJi j
clipsJJk p
)JJp q
{KK 	

s_CurveSetLL 
.LL 
ClearLL 
(LL 
)LL 
;LL 
foreachMM 
(MM 
varMM 
clipMM 
inMM  
clipsMM! &
)MM& '
{NN 
AddBindingsOO 
(OO 
s_BindingCacheOO *
.OO* +
GetCurveBindingsOO+ ;
(OO; <
clipOO< @
)OO@ A
)OOA B
;OOB C
}PP 
ifSS 
(SS !
NeedsSkeletonBindingsSS %
(SS% &

s_CurveSetSS& 0
.SS0 1
KeysSS1 5
)SS5 6
)SS6 7
AddBindingsTT 
(TT 
s_BindingCacheTT *
.TT* +
GetAnimatorBindingsTT+ >
(TT> ?
animatorRootTT? K
)TTK L
)TTL M
;TTM N
varVV 
bindingsVV 
=VV 
newVV 
EditorCurveBindingVV 1
[VV1 2

s_CurveSetVV2 <
.VV< =
KeysVV= A
.VVA B
CountVVB G
]VVG H
;VVH I

s_CurveSetWW 
.WW 
KeysWW 
.WW 
CopyToWW "
(WW" #
bindingsWW# +
,WW+ ,
$numWW- .
)WW. /
;WW/ 0
returnXX 
bindingsXX 
;XX 
}YY 	
public[[ 
static[[ 
int[[ 
GetClipHash[[ %
([[% &
List[[& *
<[[* +
AnimationClip[[+ 8
>[[8 9
clips[[: ?
)[[? @
{\\ 	
int]] 
hash]] 
=]] 
$num]] 
;]] 
foreach__ 
(__ 
var__ 
clip__ 
in__  
clips__! &
)__& '
{`` 
varaa 
statsaa 
=aa 
AnimationUtilityaa ,
.aa, -!
GetAnimationClipStatsaa- B
(aaB C
clipaaC G
)aaG H
;aaH I
hashbb 
=bb 
HashUtilitybb "
.bb" #
CombineHashbb# .
(bb. /
hashbb/ 3
,bb3 4
clipbb5 9
.bb9 :
GetHashCodebb: E
(bbE F
)bbF G
,bbG H
statsbbI N
.bbN O
clipsbbO T
,bbT U
statsbbV [
.bb[ \
sizebb\ `
,bb` a
statsbbb g
.bbg h
totalCurvesbbh s
)bbs t
;bbt u
}cc 
returndd 
hashdd 
;dd 
}ee 	
publicgg 
staticgg 
voidgg 
PreviewFromCurvesgg ,
(gg, -

GameObjectgg- 7
animatorRootgg8 D
,ggD E
IEnumerableggF Q
<ggQ R
EditorCurveBindingggR d
>ggd e
keysggf j
)ggj k
{hh 	
ifii 
(ii 
!ii 
AnimationModeii 
.ii 
InAnimationModeii .
(ii. /
)ii/ 0
)ii0 1
returnjj 
;jj 
varll 

avatarRootll 
=ll 
GetAvatarRootll *
(ll* +
animatorRootll+ 7
)ll7 8
;ll8 9
foreachmm 
(mm 
varmm 
bindingmm  
inmm! #
keysmm$ (
)mm( )
{nn 
ifoo 
(oo 
IsAvatarBindingoo #
(oo# $
bindingoo$ +
)oo+ ,
||oo- /
IsEuleroo0 7
(oo7 8
bindingoo8 ?
)oo? @
)oo@ A
continuepp 
;pp 
boolrr 
isTransformrr  
=rr! "
typeofrr# )
(rr) *
	Transformrr* 3
)rr3 4
.rr4 5
IsAssignableFromrr5 E
(rrE F
bindingrrF M
.rrM N
typerrN R
)rrR S
;rrS T
ifss 
(ss 
isTransformss 
&&ss  "
bindingss# *
.ss* +
propertyNamess+ 7
.ss7 8
Equalsss8 >
(ss> ? 
AnimatorBindingCachess? S
.ssS T
TRPlaceHolderssT a
)ssa b
)ssb c
AddTRBindingtt  
(tt  !
animatorRoottt! -
,tt- .
bindingtt/ 6
)tt6 7
;tt7 8
elseuu 
ifuu 
(uu 
isTransformuu $
&&uu% '
bindinguu( /
.uu/ 0
propertyNameuu0 <
.uu< =
Equalsuu= C
(uuC D 
AnimatorBindingCacheuuD X
.uuX Y
ScalePlaceholderuuY i
)uui j
)uuj k
AddScaleBindingvv #
(vv# $
animatorRootvv$ 0
,vv0 1
bindingvv2 9
)vv9 :
;vv: ;
elseww 
AnimationModexx !
.xx! "!
AddEditorCurveBindingxx" 7
(xx7 8

avatarRootxx8 B
,xxB C
bindingxxD K
)xxK L
;xxL M
}yy 
}zz 	
public|| 
static|| 
AnimationClip|| #
CreateDefaultClip||$ 5
(||5 6

GameObject||6 @
animatorRoot||A M
,||M N
IEnumerable||O Z
<||Z [
EditorCurveBinding||[ m
>||m n
keys||o s
)||s t
{}} 	
AnimationClip~~ 
animClip~~ "
=~~# $
new~~% (
AnimationClip~~) 6
(~~6 7
)~~7 8
{~~9 :
name~~; ?
=~~@ A
$str~~B O
}~~P Q
;~~Q R
var 
	keyFrames 
= 
new 
[  
]  !
{" #
new# &
Keyframe' /
(/ 0
$num0 1
,1 2
$num3 4
)4 5
}5 6
;6 7
var
€€ 
curve
€€ 
=
€€ 
new
€€ 
AnimationCurve
€€ *
(
€€* +
	keyFrames
€€+ 4
)
€€4 5
;
€€5 6
bool
 

rootMotion
 
=
 
false
 #
;
# $
var
‚‚ 

avatarRoot
‚‚ 
=
‚‚ 
GetAvatarRoot
‚‚ *
(
‚‚* +
animatorRoot
‚‚+ 7
)
‚‚7 8
;
‚‚8 9
foreach
„„ 
(
„„ 
var
„„ 
binding
„„  
in
„„! #
keys
„„$ (
)
„„( )
{
…… 
if
†† 
(
†† 
IsRootMotion
††  
(
††  !
binding
††! (
)
††( )
)
††) *
{
‡‡ 

rootMotion
ˆˆ 
=
ˆˆ  
true
ˆˆ! %
;
ˆˆ% &
continue
‰‰ 
;
‰‰ 
}
ŠŠ 
if
ŒŒ 
(
ŒŒ 
typeof
ŒŒ 
(
ŒŒ 
	Transform
ŒŒ $
)
ŒŒ$ %
.
ŒŒ% &
IsAssignableFrom
ŒŒ& 6
(
ŒŒ6 7
binding
ŒŒ7 >
.
ŒŒ> ?
type
ŒŒ? C
)
ŒŒC D
&&
ŒŒE G
binding
ŒŒH O
.
ŒŒO P
propertyName
ŒŒP \
.
ŒŒ\ ]
Equals
ŒŒ] c
(
ŒŒc d"
AnimatorBindingCache
ŒŒd x
.
ŒŒx y
TRPlaceHolderŒŒy †
)ŒŒ† ‡
)ŒŒ‡ ˆ
{
 
if
 
(
 
string
 
.
 
IsNullOrEmpty
 ,
(
, -
binding
- 4
.
4 5
path
5 9
)
9 :
)
: ;

rootMotion
 "
=
# $
true
% )
;
) *
else
 
{
‘‘ 
var
’’ 
	transform
’’ %
=
’’& '
animatorRoot
’’( 4
.
’’4 5
	transform
’’5 >
.
’’> ?
Find
’’? C
(
’’C D
binding
’’D K
.
’’K L
path
’’L P
)
’’P Q
;
’’Q R
if
““ 
(
““ 
	transform
““ %
!=
““& (
null
““) -
)
““- .
{
”” 
var
•• 
pos
••  #
=
••$ %
	transform
••& /
.
••/ 0
localPosition
••0 =
;
••= >
var
–– 
rot
––  #
=
––$ %
	transform
––& /
.
––/ 0
localRotation
––0 =
;
––= >
animClip
—— $
.
——$ %
SetCurve
——% -
(
——- .
binding
——. 5
.
——5 6
path
——6 :
,
——: ;
typeof
——< B
(
——B C
	Transform
——C L
)
——L M
,
——M N
k_PosX
——O U
,
——U V

SetZeroKey
——W a
(
——a b
curve
——b g
,
——g h
	keyFrames
——i r
,
——r s
pos
——t w
.
——w x
x
——x y
)
——y z
)
——z {
;
——{ |
animClip
˜˜ $
.
˜˜$ %
SetCurve
˜˜% -
(
˜˜- .
binding
˜˜. 5
.
˜˜5 6
path
˜˜6 :
,
˜˜: ;
typeof
˜˜< B
(
˜˜B C
	Transform
˜˜C L
)
˜˜L M
,
˜˜M N
k_PosY
˜˜O U
,
˜˜U V

SetZeroKey
˜˜W a
(
˜˜a b
curve
˜˜b g
,
˜˜g h
	keyFrames
˜˜i r
,
˜˜r s
pos
˜˜t w
.
˜˜w x
y
˜˜x y
)
˜˜y z
)
˜˜z {
;
˜˜{ |
animClip
™™ $
.
™™$ %
SetCurve
™™% -
(
™™- .
binding
™™. 5
.
™™5 6
path
™™6 :
,
™™: ;
typeof
™™< B
(
™™B C
	Transform
™™C L
)
™™L M
,
™™M N
k_PosZ
™™O U
,
™™U V

SetZeroKey
™™W a
(
™™a b
curve
™™b g
,
™™g h
	keyFrames
™™i r
,
™™r s
pos
™™t w
.
™™w x
z
™™x y
)
™™y z
)
™™z {
;
™™{ |
animClip
šš $
.
šš$ %
SetCurve
šš% -
(
šš- .
binding
šš. 5
.
šš5 6
path
šš6 :
,
šš: ;
typeof
šš< B
(
ššB C
	Transform
ššC L
)
ššL M
,
ššM N
k_RotX
ššO U
,
ššU V

SetZeroKey
ššW a
(
šša b
curve
ššb g
,
ššg h
	keyFrames
šši r
,
ššr s
rot
ššt w
.
ššw x
x
ššx y
)
ššy z
)
ššz {
;
šš{ |
animClip
›› $
.
››$ %
SetCurve
››% -
(
››- .
binding
››. 5
.
››5 6
path
››6 :
,
››: ;
typeof
››< B
(
››B C
	Transform
››C L
)
››L M
,
››M N
k_RotY
››O U
,
››U V

SetZeroKey
››W a
(
››a b
curve
››b g
,
››g h
	keyFrames
››i r
,
››r s
rot
››t w
.
››w x
y
››x y
)
››y z
)
››z {
;
››{ |
animClip
œœ $
.
œœ$ %
SetCurve
œœ% -
(
œœ- .
binding
œœ. 5
.
œœ5 6
path
œœ6 :
,
œœ: ;
typeof
œœ< B
(
œœB C
	Transform
œœC L
)
œœL M
,
œœM N
k_RotZ
œœO U
,
œœU V

SetZeroKey
œœW a
(
œœa b
curve
œœb g
,
œœg h
	keyFrames
œœi r
,
œœr s
rot
œœt w
.
œœw x
z
œœx y
)
œœy z
)
œœz {
;
œœ{ |
animClip
 $
.
$ %
SetCurve
% -
(
- .
binding
. 5
.
5 6
path
6 :
,
: ;
typeof
< B
(
B C
	Transform
C L
)
L M
,
M N
k_RotW
O U
,
U V

SetZeroKey
W a
(
a b
curve
b g
,
g h
	keyFrames
i r
,
r s
rot
t w
.
w x
w
x y
)
y z
)
z {
;
{ |
}
 
}
ŸŸ 
continue
¡¡ 
;
¡¡ 
}
¢¢ 
if
¤¤ 
(
¤¤ 
typeof
¤¤ 
(
¤¤ 
	Transform
¤¤ $
)
¤¤$ %
.
¤¤% &
IsAssignableFrom
¤¤& 6
(
¤¤6 7
binding
¤¤7 >
.
¤¤> ?
type
¤¤? C
)
¤¤C D
&&
¤¤E G
binding
¤¤H O
.
¤¤O P
propertyName
¤¤P \
==
¤¤] _"
AnimatorBindingCache
¤¤` t
.
¤¤t u
ScalePlaceholder¤¤u …
)¤¤… †
{
¥¥ 
var
¦¦ 
	transform
¦¦ !
=
¦¦" #
animatorRoot
¦¦$ 0
.
¦¦0 1
	transform
¦¦1 :
.
¦¦: ;
Find
¦¦; ?
(
¦¦? @
binding
¦¦@ G
.
¦¦G H
path
¦¦H L
)
¦¦L M
;
¦¦M N
if
§§ 
(
§§ 
	transform
§§ !
!=
§§" $
null
§§% )
)
§§) *
{
¨¨ 
var
©© 
scale
©© !
=
©©" #
	transform
©©$ -
.
©©- .

localScale
©©. 8
;
©©8 9
animClip
ªª  
.
ªª  !
SetCurve
ªª! )
(
ªª) *
binding
ªª* 1
.
ªª1 2
path
ªª2 6
,
ªª6 7
typeof
ªª8 >
(
ªª> ?
	Transform
ªª? H
)
ªªH I
,
ªªI J
k_ScaleX
ªªK S
,
ªªS T

SetZeroKey
ªªU _
(
ªª_ `
curve
ªª` e
,
ªªe f
	keyFrames
ªªg p
,
ªªp q
scale
ªªr w
.
ªªw x
x
ªªx y
)
ªªy z
)
ªªz {
;
ªª{ |
animClip
««  
.
««  !
SetCurve
««! )
(
««) *
binding
««* 1
.
««1 2
path
««2 6
,
««6 7
typeof
««8 >
(
««> ?
	Transform
««? H
)
««H I
,
««I J
k_ScaleY
««K S
,
««S T

SetZeroKey
««U _
(
««_ `
curve
««` e
,
««e f
	keyFrames
««g p
,
««p q
scale
««r w
.
««w x
y
««x y
)
««y z
)
««z {
;
««{ |
animClip
¬¬  
.
¬¬  !
SetCurve
¬¬! )
(
¬¬) *
binding
¬¬* 1
.
¬¬1 2
path
¬¬2 6
,
¬¬6 7
typeof
¬¬8 >
(
¬¬> ?
	Transform
¬¬? H
)
¬¬H I
,
¬¬I J
k_ScaleZ
¬¬K S
,
¬¬S T

SetZeroKey
¬¬U _
(
¬¬_ `
curve
¬¬` e
,
¬¬e f
	keyFrames
¬¬g p
,
¬¬p q
scale
¬¬r w
.
¬¬w x
z
¬¬x y
)
¬¬y z
)
¬¬z {
;
¬¬{ |
}
­­ 
continue
¯¯ 
;
¯¯ 
}
°° 
if
µµ 
(
µµ 
IsAvatarBinding
µµ #
(
µµ# $
binding
µµ$ +
)
µµ+ ,
||
µµ- /
IsEulerHint
µµ0 ;
(
µµ; <
binding
µµ< C
)
µµC D
||
µµE G
binding
µµH O
.
µµO P
isPPtrCurve
µµP [
)
µµ[ \
continue
¶¶ 
;
¶¶ 
float
¸¸ 

floatValue
¸¸  
;
¸¸  !
AnimationUtility
¹¹  
.
¹¹  !
GetFloatValue
¹¹! .
(
¹¹. /

avatarRoot
¹¹/ 9
,
¹¹9 :
binding
¹¹; B
,
¹¹B C
out
¹¹D G

floatValue
¹¹H R
)
¹¹R S
;
¹¹S T
animClip
ºº 
.
ºº 
SetCurve
ºº !
(
ºº! "
binding
ºº" )
.
ºº) *
path
ºº* .
,
ºº. /
binding
ºº0 7
.
ºº7 8
type
ºº8 <
,
ºº< =
binding
ºº> E
.
ººE F
propertyName
ººF R
,
ººR S

SetZeroKey
ººT ^
(
ºº^ _
curve
ºº_ d
,
ººd e
	keyFrames
ººf o
,
ººo p

floatValue
ººq {
)
ºº{ |
)
ºº| }
;
ºº} ~
}
»» 
if
¾¾ 
(
¾¾ 

rootMotion
¾¾ 
)
¾¾ 
{
¿¿ 
var
ÀÀ 
pos
ÀÀ 
=
ÀÀ 
Vector3
ÀÀ !
.
ÀÀ! "
zero
ÀÀ" &
;
ÀÀ& '
var
ÁÁ 
rot
ÁÁ 
=
ÁÁ 

Quaternion
ÁÁ $
.
ÁÁ$ %
identity
ÁÁ% -
;
ÁÁ- .
animClip
ÂÂ 
.
ÂÂ 
SetCurve
ÂÂ !
(
ÂÂ! "
string
ÂÂ" (
.
ÂÂ( )
Empty
ÂÂ) .
,
ÂÂ. /
typeof
ÂÂ0 6
(
ÂÂ6 7
	Transform
ÂÂ7 @
)
ÂÂ@ A
,
ÂÂA B
k_PosX
ÂÂC I
,
ÂÂI J

SetZeroKey
ÂÂK U
(
ÂÂU V
curve
ÂÂV [
,
ÂÂ[ \
	keyFrames
ÂÂ] f
,
ÂÂf g
pos
ÂÂh k
.
ÂÂk l
x
ÂÂl m
)
ÂÂm n
)
ÂÂn o
;
ÂÂo p
animClip
ÃÃ 
.
ÃÃ 
SetCurve
ÃÃ !
(
ÃÃ! "
string
ÃÃ" (
.
ÃÃ( )
Empty
ÃÃ) .
,
ÃÃ. /
typeof
ÃÃ0 6
(
ÃÃ6 7
	Transform
ÃÃ7 @
)
ÃÃ@ A
,
ÃÃA B
k_PosY
ÃÃC I
,
ÃÃI J

SetZeroKey
ÃÃK U
(
ÃÃU V
curve
ÃÃV [
,
ÃÃ[ \
	keyFrames
ÃÃ] f
,
ÃÃf g
pos
ÃÃh k
.
ÃÃk l
y
ÃÃl m
)
ÃÃm n
)
ÃÃn o
;
ÃÃo p
animClip
ÄÄ 
.
ÄÄ 
SetCurve
ÄÄ !
(
ÄÄ! "
string
ÄÄ" (
.
ÄÄ( )
Empty
ÄÄ) .
,
ÄÄ. /
typeof
ÄÄ0 6
(
ÄÄ6 7
	Transform
ÄÄ7 @
)
ÄÄ@ A
,
ÄÄA B
k_PosZ
ÄÄC I
,
ÄÄI J

SetZeroKey
ÄÄK U
(
ÄÄU V
curve
ÄÄV [
,
ÄÄ[ \
	keyFrames
ÄÄ] f
,
ÄÄf g
pos
ÄÄh k
.
ÄÄk l
z
ÄÄl m
)
ÄÄm n
)
ÄÄn o
;
ÄÄo p
animClip
ÅÅ 
.
ÅÅ 
SetCurve
ÅÅ !
(
ÅÅ! "
string
ÅÅ" (
.
ÅÅ( )
Empty
ÅÅ) .
,
ÅÅ. /
typeof
ÅÅ0 6
(
ÅÅ6 7
	Transform
ÅÅ7 @
)
ÅÅ@ A
,
ÅÅA B
k_RotX
ÅÅC I
,
ÅÅI J

SetZeroKey
ÅÅK U
(
ÅÅU V
curve
ÅÅV [
,
ÅÅ[ \
	keyFrames
ÅÅ] f
,
ÅÅf g
rot
ÅÅh k
.
ÅÅk l
x
ÅÅl m
)
ÅÅm n
)
ÅÅn o
;
ÅÅo p
animClip
ÆÆ 
.
ÆÆ 
SetCurve
ÆÆ !
(
ÆÆ! "
string
ÆÆ" (
.
ÆÆ( )
Empty
ÆÆ) .
,
ÆÆ. /
typeof
ÆÆ0 6
(
ÆÆ6 7
	Transform
ÆÆ7 @
)
ÆÆ@ A
,
ÆÆA B
k_RotY
ÆÆC I
,
ÆÆI J

SetZeroKey
ÆÆK U
(
ÆÆU V
curve
ÆÆV [
,
ÆÆ[ \
	keyFrames
ÆÆ] f
,
ÆÆf g
rot
ÆÆh k
.
ÆÆk l
y
ÆÆl m
)
ÆÆm n
)
ÆÆn o
;
ÆÆo p
animClip
ÇÇ 
.
ÇÇ 
SetCurve
ÇÇ !
(
ÇÇ! "
string
ÇÇ" (
.
ÇÇ( )
Empty
ÇÇ) .
,
ÇÇ. /
typeof
ÇÇ0 6
(
ÇÇ6 7
	Transform
ÇÇ7 @
)
ÇÇ@ A
,
ÇÇA B
k_RotZ
ÇÇC I
,
ÇÇI J

SetZeroKey
ÇÇK U
(
ÇÇU V
curve
ÇÇV [
,
ÇÇ[ \
	keyFrames
ÇÇ] f
,
ÇÇf g
rot
ÇÇh k
.
ÇÇk l
z
ÇÇl m
)
ÇÇm n
)
ÇÇn o
;
ÇÇo p
animClip
ÈÈ 
.
ÈÈ 
SetCurve
ÈÈ !
(
ÈÈ! "
string
ÈÈ" (
.
ÈÈ( )
Empty
ÈÈ) .
,
ÈÈ. /
typeof
ÈÈ0 6
(
ÈÈ6 7
	Transform
ÈÈ7 @
)
ÈÈ@ A
,
ÈÈA B
k_RotW
ÈÈC I
,
ÈÈI J

SetZeroKey
ÈÈK U
(
ÈÈU V
curve
ÈÈV [
,
ÈÈ[ \
	keyFrames
ÈÈ] f
,
ÈÈf g
rot
ÈÈh k
.
ÈÈk l
w
ÈÈl m
)
ÈÈm n
)
ÈÈn o
;
ÈÈo p
}
ÉÉ 
return
ËË 
animClip
ËË 
;
ËË 
}
ÌÌ 	
public
ÎÎ 
static
ÎÎ 
bool
ÎÎ 
IsRootMotion
ÎÎ '
(
ÎÎ' ( 
EditorCurveBinding
ÎÎ( :
binding
ÎÎ; B
)
ÎÎB C
{
ÏÏ 	
if
ÑÑ 
(
ÑÑ 
typeof
ÑÑ 
(
ÑÑ 
	Transform
ÑÑ  
)
ÑÑ  !
.
ÑÑ! "
IsAssignableFrom
ÑÑ" 2
(
ÑÑ2 3
binding
ÑÑ3 :
.
ÑÑ: ;
type
ÑÑ; ?
)
ÑÑ? @
&&
ÑÑA C
string
ÑÑD J
.
ÑÑJ K
IsNullOrEmpty
ÑÑK X
(
ÑÑX Y
binding
ÑÑY `
.
ÑÑ` a
path
ÑÑa e
)
ÑÑe f
)
ÑÑf g
{
ÒÒ 
return
ÓÓ 
FastStartsWith
ÓÓ %
(
ÓÓ% &
binding
ÓÓ& -
.
ÓÓ- .
propertyName
ÓÓ. :
,
ÓÓ: ;
k_Pos
ÓÓ< A
)
ÓÓA B
||
ÓÓD F
FastStartsWith
ÓÓG U
(
ÓÓU V
binding
ÓÓV ]
.
ÓÓ] ^
propertyName
ÓÓ^ j
,
ÓÓj k
k_Rot
ÓÓl q
)
ÓÓq r
;
ÓÓr s
}
ÔÔ 
if
×× 
(
×× 
binding
×× 
.
×× 
type
×× 
==
×× 
typeof
××  &
(
××& '
Animator
××' /
)
××/ 0
)
××0 1
{
ØØ 
return
ÙÙ 
FastStartsWith
ÙÙ %
(
ÙÙ% &
binding
ÙÙ& -
.
ÙÙ- .
propertyName
ÙÙ. :
,
ÙÙ: ;
	k_MotionT
ÙÙ< E
)
ÙÙE F
||
ÙÙG I
FastStartsWith
ÚÚ "
(
ÚÚ" #
binding
ÚÚ# *
.
ÚÚ* +
propertyName
ÚÚ+ 7
,
ÚÚ7 8
	k_MotionQ
ÚÚ9 B
)
ÚÚB C
||
ÚÚD F
FastStartsWith
ÛÛ "
(
ÛÛ" #
binding
ÛÛ# *
.
ÛÛ* +
propertyName
ÛÛ+ 7
,
ÛÛ7 8
k_RootT
ÛÛ9 @
)
ÛÛ@ A
||
ÛÛB D
FastStartsWith
ÜÜ "
(
ÜÜ" #
binding
ÜÜ# *
.
ÜÜ* +
propertyName
ÜÜ+ 7
,
ÜÜ7 8
k_RootQ
ÜÜ9 @
)
ÜÜ@ A
;
ÜÜA B
}
İİ 
return
ßß 
false
ßß 
;
ßß 
}
àà 	
private
ââ 
static
ââ 
bool
ââ #
NeedsSkeletonBindings
ââ 1
(
ââ1 2
IEnumerable
ââ2 =
<
ââ= > 
EditorCurveBinding
ââ> P
>
ââP Q
bindings
ââR Z
)
ââZ [
{
ãã 	
foreach
ää 
(
ää 
var
ää 
b
ää 
in
ää 
bindings
ää &
)
ää& '
{
åå 
if
ææ 
(
ææ 
IsSkeletalBinding
ææ %
(
ææ% &
b
ææ& '
)
ææ' (
)
ææ( )
return
çç 
true
çç 
;
çç  
}
èè 
return
êê 
false
êê 
;
êê 
}
ëë 	
private
íí 
static
íí 
void
íí 
AddBindings
íí '
(
íí' (
IEnumerable
íí( 3
<
íí3 4 
EditorCurveBinding
íí4 F
>
ííF G
bindings
ííH P
)
ííP Q
{
îî 	
foreach
ïï 
(
ïï 
var
ïï 
b
ïï 
in
ïï 
bindings
ïï &
)
ïï& '
{
ğğ 
if
ññ 
(
ññ 
!
ññ 

s_CurveSet
ññ 
.
ññ  
ContainsKey
ññ  +
(
ññ+ ,
b
ññ, -
)
ññ- .
)
ññ. /

s_CurveSet
òò 
[
òò 
b
òò  
]
òò  !
=
òò" #
$num
òò$ %
;
òò% &
}
óó 
}
ôô 	
private
öö 
static
öö 
void
öö 
AddTRBinding
öö (
(
öö( )

GameObject
öö) 3
root
öö4 8
,
öö8 9 
EditorCurveBinding
öö: L
binding
ööM T
)
ööT U
{
÷÷ 	
var
øø 
t
øø 
=
øø 
root
øø 
.
øø 
	transform
øø "
.
øø" #
Find
øø# '
(
øø' (
binding
øø( /
.
øø/ 0
path
øø0 4
)
øø4 5
;
øø5 6
if
ùù 
(
ùù 
t
ùù 
!=
ùù 
null
ùù 
)
ùù 
{
úú #
DrivenPropertyManager
ûû %
.
ûû% &
RegisterProperty
ûû& 6
(
ûû6 7
s_PreviewDriver
ûû7 F
,
ûûF G
t
ûûH I
,
ûûI J
$str
ûûK \
)
ûû\ ]
;
ûû] ^#
DrivenPropertyManager
üü %
.
üü% &
RegisterProperty
üü& 6
(
üü6 7
s_PreviewDriver
üü7 F
,
üüF G
t
üüH I
,
üüI J
$str
üüK \
)
üü\ ]
;
üü] ^
}
ıı 
}
şş 	
private
€€ 
static
€€ 
void
€€ 
AddScaleBinding
€€ +
(
€€+ ,

GameObject
€€, 6
root
€€7 ;
,
€€; < 
EditorCurveBinding
€€= O
binding
€€P W
)
€€W X
{
 	
var
‚‚ 
t
‚‚ 
=
‚‚ 
root
‚‚ 
.
‚‚ 
	transform
‚‚ "
.
‚‚" #
Find
‚‚# '
(
‚‚' (
binding
‚‚( /
.
‚‚/ 0
path
‚‚0 4
)
‚‚4 5
;
‚‚5 6
if
ƒƒ 
(
ƒƒ 
t
ƒƒ 
!=
ƒƒ 
null
ƒƒ 
)
ƒƒ #
DrivenPropertyManager
„„ %
.
„„% &
RegisterProperty
„„& 6
(
„„6 7
s_PreviewDriver
„„7 F
,
„„F G
t
„„H I
,
„„I J
$str
„„K Y
)
„„Y Z
;
„„Z [
}
…… 	
private
‡‡ 
static
‡‡ 
bool
‡‡ 
IsEuler
‡‡ #
(
‡‡# $ 
EditorCurveBinding
‡‡$ 6
binding
‡‡7 >
)
‡‡> ?
{
ˆˆ 	
return
‰‰ 
FastStartsWith
‰‰ !
(
‰‰! "
binding
‰‰" )
.
‰‰) *
propertyName
‰‰* 6
,
‰‰6 7
k_EulerAnglesRaw
‰‰8 H
)
‰‰H I
&&
‰‰J L
typeof
ŠŠ 
(
ŠŠ 
	Transform
ŠŠ  
)
ŠŠ  !
.
ŠŠ! "
IsAssignableFrom
ŠŠ" 2
(
ŠŠ2 3
binding
ŠŠ3 :
.
ŠŠ: ;
type
ŠŠ; ?
)
ŠŠ? @
;
ŠŠ@ A
}
‹‹ 	
private
 
static
 
bool
 
IsAvatarBinding
 +
(
+ , 
EditorCurveBinding
, >
binding
? F
)
F G
{
 	
return
 
string
 
.
 
IsNullOrEmpty
 '
(
' (
binding
( /
.
/ 0
path
0 4
)
4 5
&&
6 8
typeof
9 ?
(
? @
Animator
@ H
)
H I
==
J L
binding
M T
.
T U
type
U Y
;
Y Z
}
 	
private
’’ 
static
’’ 
bool
’’ 
IsSkeletalBinding
’’ -
(
’’- . 
EditorCurveBinding
’’. @
binding
’’A H
)
’’H I
{
““ 	
return
•• 
typeof
•• 
(
•• 
	Transform
•• #
)
••# $
.
••$ %
IsAssignableFrom
••% 5
(
••5 6
binding
••6 =
.
••= >
type
••> B
)
••B C
||
••D F
typeof
••G M
(
••M N!
SkinnedMeshRenderer
••N a
)
••a b
.
••b c
IsAssignableFrom
••c s
(
••s t
binding
••t {
.
••{ |
type••| €
)••€ 
;•• ‚
}
–– 	
private
˜˜ 
static
˜˜ 
AnimationCurve
˜˜ %

SetZeroKey
˜˜& 0
(
˜˜0 1
AnimationCurve
˜˜1 ?
curve
˜˜@ E
,
˜˜E F
Keyframe
˜˜G O
[
˜˜O P
]
˜˜P Q
keys
˜˜R V
,
˜˜V W
float
˜˜X ]
val
˜˜^ a
)
˜˜a b
{
™™ 	
keys
šš 
[
šš 
$num
šš 
]
šš 
.
šš 
value
šš 
=
šš 
val
šš 
;
šš  
curve
›› 
.
›› 
keys
›› 
=
›› 
keys
›› 
;
›› 
return
œœ 
curve
œœ 
;
œœ 
}
 	
private
ŸŸ 
static
ŸŸ 
bool
ŸŸ 
IsEulerHint
ŸŸ '
(
ŸŸ' ( 
EditorCurveBinding
ŸŸ( :
binding
ŸŸ; B
)
ŸŸB C
{
   	
return
¡¡ 
typeof
¡¡ 
(
¡¡ 
	Transform
¡¡ #
)
¡¡# $
.
¡¡$ %
IsAssignableFrom
¡¡% 5
(
¡¡5 6
binding
¡¡6 =
.
¡¡= >
type
¡¡> B
)
¡¡B C
&&
¡¡D F
binding
¡¡G N
.
¡¡N O
propertyName
¡¡O [
.
¡¡[ \

StartsWith
¡¡\ f
(
¡¡f g
k_EulerHint
¡¡g r
)
¡¡r s
;
¡¡s t
}
¢¢ 	
private
¤¤ 
static
¤¤ 

GameObject
¤¤ !
GetAvatarRoot
¤¤" /
(
¤¤/ 0

GameObject
¤¤0 :
animatorRoot
¤¤; G
)
¤¤G H
{
¥¥ 	
var
¦¦ 
animator
¦¦ 
=
¦¦ 
animatorRoot
¦¦ '
.
¦¦' (
GetComponent
¦¦( 4
<
¦¦4 5
Animator
¦¦5 =
>
¦¦= >
(
¦¦> ?
)
¦¦? @
;
¦¦@ A
if
§§ 
(
§§ 
animator
§§ 
!=
§§ 
null
§§  
&&
§§! #
animator
§§$ ,
.
§§, -

avatarRoot
§§- 7
!=
§§8 :
animatorRoot
§§; G
.
§§G H
	transform
§§H Q
)
§§Q R
return
¨¨ 
animator
¨¨ 
.
¨¨  

avatarRoot
¨¨  *
.
¨¨* +

gameObject
¨¨+ 5
;
¨¨5 6
return
©© 
animatorRoot
©© 
;
©©  
}
ªª 	
}
«« 
}¬¬ î
œD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\INotificationOptionProvider.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface '
INotificationOptionProvider 0
{		 
NotificationFlags 
flags 
{  !
get" %
;% &
}' (
} 
} ¤S
›D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimelineCreateUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static		 

class		 #
TimelineCreateUtilities		 (
{

 
public 
static 
string #
GenerateUniqueActorName 4
(4 5
List5 9
<9 :
ScriptableObject: J
>J K
tracksL R
,R S
stringT Z
name[ _
)_ `
{ 	
if 
( 
! 
tracks 
. 
Exists 
( 
x  
=>! #
($ %
(% &
object& ,
), -
x- .
). /
!=0 2
null3 7
&&8 :
x; <
.< =
name= A
==B D
nameE I
)I J
)J K
return 
name 
; 
int 
numberInParentheses #
=$ %
$num& '
;' (
string 
baseName 
= 
name "
;" #
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
name& *
)* +
&&, .
name/ 3
[3 4
name4 8
.8 9
Length9 ?
-@ A
$numB C
]C D
==E G
$charH K
)K L
{ 
int 
index 
= 
name  
.  !
LastIndexOf! ,
(, -
$char- 0
)0 1
;1 2
if 
( 
index 
> 
$num 
) 
{ 
string 
numberString '
=( )
name* .
.. /
	Substring/ 8
(8 9
index9 >
+? @
$numA B
,B C
nameD H
.H I
LengthI O
-P Q
indexR W
-X Y
$numZ [
)[ \
;\ ]
if 
( 
int 
. 
TryParse $
($ %
numberString% 1
,1 2
out3 6
numberInParentheses7 J
)J K
)K L
{ 
numberInParentheses +
+++ -
;- .
baseName  
=! "
name# '
.' (
	Substring( 1
(1 2
$num2 3
,3 4
index5 :
): ;
;; <
} 
} 
}   
baseName"" 
="" 
baseName"" 
.""  
TrimEnd""  '
(""' (
)""( )
;"") *
for$$ 
($$ 
int$$ 
i$$ 
=$$ 
numberInParentheses$$ ,
;$$, -
i$$. /
<$$0 1
numberInParentheses$$2 E
+$$F G
$num$$H L
;$$L M
i$$N O
++$$O Q
)$$Q R
{%% 
if&& 
(&& 
i&& 
>&& 
$num&& 
)&& 
{'' 
string(( 
result(( !
=((" #
string(($ *
.((* +
Format((+ 1
(((1 2
$str((2 =
,((= >
baseName((? G
,((G H
i((I J
)((J K
;((K L
if)) 
()) 
!)) 
tracks)) 
.))  
Exists))  &
())& '
x))' (
=>))) +
()), -
())- .
object)). 4
)))4 5
x))5 6
)))6 7
!=))8 :
null)); ?
&&))@ B
x))C D
.))D E
name))E I
==))J L
result))M S
)))S T
)))T U
return** 
result** %
;**% &
}++ 
},, 
return// 
name// 
;// 
}00 	
public22 
static22 
void22 
SaveAssetIntoObject22 .
(22. /
Object22/ 5

childAsset226 @
,22@ A
Object22B H
masterAsset22I T
)22T U
{33 	
if44 
(44 

childAsset44 
==44 
null44 "
||44# %
masterAsset44& 1
==442 4
null445 9
)449 :
return55 
;55 
if77 
(77 
(77 
masterAsset77 
.77 
	hideFlags77 &
&77' (
	HideFlags77) 2
.772 3
DontSave773 ;
)77; <
!=77= ?
$num77@ A
)77A B
{88 

childAsset99 
.99 
	hideFlags99 $
|=99% '
	HideFlags99( 1
.991 2
DontSave992 :
;99: ;
}:: 
else;; 
{<< 

childAsset== 
.== 
	hideFlags== $
|===% '
	HideFlags==( 1
.==1 2
HideInHierarchy==2 A
;==A B
if?? 
(?? 
!?? 
AssetDatabase?? "
.??" #
Contains??# +
(??+ ,

childAsset??, 6
)??6 7
&&??8 :
AssetDatabase??; H
.??H I
Contains??I Q
(??Q R
masterAsset??R ]
)??] ^
)??^ _
AssetDatabase@@ !
.@@! "
AddObjectToAsset@@" 2
(@@2 3

childAsset@@3 =
,@@= >
masterAsset@@? J
)@@J K
;@@K L
}BB 
}CC 	
publicEE 
staticEE 
AnimationClipEE #'
CreateAnimationClipForTrackEE$ ?
(EE? @
stringEE@ F
nameEEG K
,EEK L

TrackAssetEEM W
trackEEX ]
,EE] ^
boolEE_ c
isLegacyEEd l
)EEl m
{FF 	
varGG 
timelineAssetGG 
=GG 
trackGG  %
!=GG& (
nullGG) -
?GG. /
trackGG0 5
.GG5 6
timelineAssetGG6 C
:GGD E
nullGGF J
;GGJ K
varHH 

trackFlagsHH 
=HH 
trackHH "
!=HH# %
nullHH& *
?HH+ ,
trackHH- 2
.HH2 3
	hideFlagsHH3 <
:HH= >
	HideFlagsHH? H
.HHH I
NoneHHI M
;HHM N
varJJ 
curvesJJ 
=JJ 
newJJ 
AnimationClipJJ *
{KK 
legacyLL 
=LL 
isLegacyLL !
,LL! "
nameNN 
=NN 
nameNN 
,NN 
	frameRatePP 
=PP 
timelineAssetPP )
==PP* ,
nullPP- 1
?QQ 
TimelineAssetQQ #
.QQ# $
EditorSettingsQQ$ 2
.QQ2 3
kDefaultFpsQQ3 >
:RR 
timelineAssetRR #
.RR# $
editorSettingsRR$ 2
.RR2 3
fpsRR3 6
}SS 
;SS 
SaveAssetIntoObjectUU 
(UU  
curvesUU  &
,UU& '
timelineAssetUU( 5
)UU5 6
;UU6 7
curvesVV 
.VV 
	hideFlagsVV 
=VV 

trackFlagsVV )
&VV* +
~VV, -
	HideFlagsVV- 6
.VV6 7
HideInHierarchyVV7 F
;VVF G
TimelineUndoXX 
.XX %
RegisterCreatedObjectUndoXX 2
(XX2 3
curvesXX3 9
,XX9 :
$strXX; J
)XXJ K
;XXK L
returnZZ 
curvesZZ 
;ZZ 
}[[ 	
public]] 
static]] 
bool]] 
ValidateParentTrack]] .
(]]. /

TrackAsset]]/ 9
parent]]: @
,]]@ A
Type]]B F
	childType]]G P
)]]P Q
{^^ 	
if__ 
(__ 
	childType__ 
==__ 
null__ !
||__" $
!__% &
typeof__& ,
(__, -

TrackAsset__- 7
)__7 8
.__8 9
IsAssignableFrom__9 I
(__I J
	childType__J S
)__S T
)__T U
return`` 
false`` 
;`` 
ifcc 
(cc 
parentcc 
==cc 
nullcc 
)cc 
returndd 
truedd 
;dd 
ifhh 
(hh 
parenthh 
ishh 

ILayerablehh $
&&hh% '
!hh( )
parenthh) /
.hh/ 0

isSubTrackhh0 :
&&hh; =
parenthh> D
.hhD E
GetTypehhE L
(hhL M
)hhM N
==hhO Q
	childTypehhR [
)hh[ \
returnii 
trueii 
;ii 
varkk 
attrkk 
=kk 
	Attributekk  
.kk  !
GetCustomAttributekk! 3
(kk3 4
parentkk4 :
.kk: ;
GetTypekk; B
(kkB C
)kkC D
,kkD E
typeofkkF L
(kkL M(
SupportsChildTracksAttributekkM i
)kki j
)kkj k
askkl n)
SupportsChildTracksAttribute	kko ‹
;
kk‹ Œ
ifll 
(ll 
attrll 
==ll 
nullll 
)ll 
returnmm 
falsemm 
;mm 
ifpp 
(pp 
attrpp 
.pp 
	childTypepp 
==pp !
nullpp" &
)pp& '
returnqq 
trueqq 
;qq 
iftt 
(tt 
	childTypett 
==tt 
attrtt !
.tt! "
	childTypett" +
)tt+ ,
{uu 
intvv 
	nestCountvv 
=vv 
$numvv  !
;vv! "
varww 
pww 
=ww 
parentww 
;ww 
whilexx 
(xx 
pxx 
!=xx 
nullxx  
&&xx! #
pxx$ %
.xx% &

isSubTrackxx& 0
)xx0 1
{yy 
	nestCountzz 
++zz 
;zz  
p{{ 
={{ 
p{{ 
.{{ 
parent{{  
as{{! #

TrackAsset{{$ .
;{{. /
}|| 
return~~ 
	nestCount~~  
<~~! "
attr~~# '
.~~' (
levels~~( .
;~~. /
} 
return
€€ 
false
€€ 
;
€€ 
}
 	
}
‚‚ 
}ƒƒ ò)
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\HashUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
HashUtility 
{ 
public 
static 
int 
CombineHash %
(% &
this& *
int+ .
h1/ 1
,1 2
int3 6
h27 9
)9 :
{ 	
return		 
h1		 
^		 
(		 
int		 
)		 
(		 
h2		  
+		! "
$num		# -
+		. /
(		0 1
h1		1 3
<<		4 6
$num		7 8
)		8 9
+		: ;
(		< =
h1		= ?
>>		@ B
$num		C D
)		D E
)		E F
;		F G
}

 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
)< =
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
)% &
.& '
CombineHash' 2
(2 3
h33 5
)5 6
;6 7
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
)D E
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
)) *
.* +
CombineHash+ 6
(6 7
h47 9
)9 :
;: ;
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
,D E
intF I
h5J L
)L M
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
,) *
h4+ -
)- .
.. /
CombineHash/ :
(: ;
h5; =
)= >
;> ?
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
,D E
intF I
h5J L
,L M
intN Q
h6R T
)T U
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
,) *
h4+ -
,- .
h5/ 1
)1 2
.2 3
CombineHash3 >
(> ?
h6? A
)A B
;B C
} 	
public   
static   
int   
CombineHash   %
(  % &
int  & )
h1  * ,
,  , -
int  . 1
h2  2 4
,  4 5
int  6 9
h3  : <
,  < =
int  > A
h4  B D
,  D E
int  F I
h5  J L
,  L M
int  N Q
h6  R T
,  T U
int  V Y
h7  Z \
)  \ ]
{!! 	
return"" 
CombineHash"" 
("" 
h1"" !
,""! "
h2""# %
,""% &
h3""' )
,"") *
h4""+ -
,""- .
h5""/ 1
,""1 2
h6""3 5
)""5 6
.""6 7
CombineHash""7 B
(""B C
h7""C E
)""E F
;""F G
}## 	
public%% 
static%% 
int%% 
CombineHash%% %
(%%% &
int%%& )
[%%) *
]%%* +
hashes%%, 2
)%%2 3
{&& 	
if'' 
('' 
hashes'' 
=='' 
null'' 
||'' !
hashes''" (
.''( )
Length'') /
==''0 2
$num''3 4
)''4 5
return(( 
$num(( 
;(( 
var** 
h** 
=** 
hashes** 
[** 
$num** 
]** 
;** 
for++ 
(++ 
int++ 
i++ 
=++ 
$num++ 
;++ 
i++ 
<++ 
hashes++  &
.++& '
Length++' -
;++- .
++++/ 1
i++1 2
)++2 3
{,, 
h-- 
=-- 
CombineHash-- 
(--  
h--  !
,--! "
hashes--# )
[--) *
i--* +
]--+ ,
)--, -
;--- .
}.. 
return00 
h00 
;00 
}11 	
}22 
}33 ü9
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class		 	
RuntimeClip		
 
:		 
RuntimeClipBase		 '
{

 
TimelineClip 
m_Clip 
; 
Playable 

m_Playable 
; 
Playable 
m_ParentMixer 
; 
public 
override 
double 
start $
{ 	
get 
{ 
return 
m_Clip 
.  
extrapolatedStart  1
;1 2
}3 4
} 	
public 
override 
double 
duration '
{ 	
get 
{ 
return 
m_Clip 
.   
extrapolatedDuration  4
;4 5
}6 7
} 	
public 
RuntimeClip 
( 
TimelineClip '
clip( ,
,, -
Playable. 6
clipPlayable7 C
,C D
PlayableE M
parentMixerN Y
)Y Z
{ 	
Create 
( 
clip 
, 
clipPlayable %
,% &
parentMixer' 2
)2 3
;3 4
} 	
void 
Create 
( 
TimelineClip  
clip! %
,% &
Playable' /
clipPlayable0 <
,< =
Playable> F
parentMixerG R
)R S
{ 	
m_Clip   
=   
clip   
;   

m_Playable!! 
=!! 
clipPlayable!! %
;!!% &
m_ParentMixer"" 
="" 
parentMixer"" '
;""' (
clipPlayable## 
.## 
Pause## 
(## 
)##  
;##  !
}$$ 	
public&& 
TimelineClip&& 
clip&&  
{'' 	
get(( 
{(( 
return(( 
m_Clip(( 
;((  
}((! "
})) 	
public++ 
Playable++ 
mixer++ 
{,, 	
get-- 
{-- 
return-- 
m_ParentMixer-- &
;--& '
}--( )
}.. 	
public00 
Playable00 
playable00  
{11 	
get22 
{22 
return22 

m_Playable22 #
;22# $
}22% &
}33 	
public55 
override55 
bool55 
enable55 #
{66 	
set77 
{88 
if99 
(99 
value99 
&&99 

m_Playable99 '
.99' (
GetPlayState99( 4
(994 5
)995 6
!=997 9
	PlayState99: C
.99C D
Playing99D K
)99K L
{:: 

m_Playable;; 
.;; 
Play;; #
(;;# $
);;$ %
;;;% &
SetTime<< 
(<< 
m_Clip<< "
.<<" #
clipIn<<# )
)<<) *
;<<* +
}== 
else>> 
if>> 
(>> 
!>> 
value>> 
&&>>  "

m_Playable>># -
.>>- .
GetPlayState>>. :
(>>: ;
)>>; <
!=>>= ?
	PlayState>>@ I
.>>I J
Paused>>J P
)>>P Q
{?? 

m_Playable@@ 
.@@ 
Pause@@ $
(@@$ %
)@@% &
;@@& '
ifAA 
(AA 
m_ParentMixerAA %
.AA% &
IsValidAA& -
(AA- .
)AA. /
)AA/ 0
m_ParentMixerBB %
.BB% &
SetInputWeightBB& 4
(BB4 5

m_PlayableBB5 ?
,BB? @
$numBBA E
)BBE F
;BBF G
}CC 
}DD 
}EE 	
publicGG 
voidGG 
SetTimeGG 
(GG 
doubleGG "
timeGG# '
)GG' (
{HH 	

m_PlayableII 
.II 
SetTimeII 
(II 
timeII #
)II# $
;II$ %
}JJ 	
publicLL 
voidLL 
SetDurationLL 
(LL  
doubleLL  &
durationLL' /
)LL/ 0
{MM 	

m_PlayableNN 
.NN 
SetDurationNN "
(NN" #
durationNN# +
)NN+ ,
;NN, -
}OO 	
publicQQ 
overrideQQ 
voidQQ 

EvaluateAtQQ '
(QQ' (
doubleQQ( .
	localTimeQQ/ 8
,QQ8 9
	FrameDataQQ: C
	frameDataQQD M
)QQM N
{RR 	
enableSS 
=SS 
trueSS 
;SS 
floatUU 
weightUU 
=UU 
$numUU 
;UU  
ifVV 
(VV 
clipVV 
.VV !
IsPreExtrapolatedTimeVV *
(VV* +
	localTimeVV+ 4
)VV4 5
)VV5 6
weightWW 
=WW 
clipWW 
.WW 
EvaluateMixInWW +
(WW+ ,
(WW, -
floatWW- 2
)WW2 3
clipWW3 7
.WW7 8
startWW8 =
)WW= >
;WW> ?
elseXX 
ifXX 
(XX 
clipXX 
.XX "
IsPostExtrapolatedTimeXX 0
(XX0 1
	localTimeXX1 :
)XX: ;
)XX; <
weightYY 
=YY 
clipYY 
.YY 
EvaluateMixOutYY ,
(YY, -
(YY- .
floatYY. 3
)YY3 4
clipYY4 8
.YY8 9
endYY9 <
)YY< =
;YY= >
elseZZ 
weight[[ 
=[[ 
clip[[ 
.[[ 
EvaluateMixIn[[ +
([[+ ,
	localTime[[, 5
)[[5 6
*[[7 8
clip[[9 =
.[[= >
EvaluateMixOut[[> L
([[L M
	localTime[[M V
)[[V W
;[[W X
if]] 
(]] 
mixer]] 
.]] 
IsValid]] 
(]] 
)]] 
)]]  
mixer^^ 
.^^ 
SetInputWeight^^ $
(^^$ %
playable^^% -
,^^- .
weight^^/ 5
)^^5 6
;^^6 7
doubleaa 
clipTimeaa 
=aa 
clipaa "
.aa" #
ToLocalTimeaa# .
(aa. /
	localTimeaa/ 8
)aa8 9
;aa9 :
ifbb 
(bb 
clipTimebb 
>=bb 
-bb 
DiscreteTimebb )
.bb) *
	tickValuebb* 3
/bb3 4
$numbb4 5
)bb6 7
{cc 
SetTimedd 
(dd 
clipTimedd  
)dd  !
;dd! "
}ee 
SetDurationff 
(ff 
clipff 
.ff  
extrapolatedDurationff 1
)ff1 2
;ff2 3
}gg 	
publicii 
overrideii 
voidii 
Resetii "
(ii" #
)ii# $
{jj 	
SetTimekk 
(kk 
m_Clipkk 
.kk 
clipInkk !
)kk! "
;kk" #
}ll 	
}mm 
}nn Ã	
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\ICurvesOwner.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
	interface 
ICurvesOwner 
{ 
AnimationClip 
curves 
{ 
get "
;" #
}$ %
bool 
	hasCurves 
{ 
get 
; 
} 
double 
duration 
{ 
get 
; 
}  
void 
CreateCurves 
( 
string  
curvesClipName! /
)/ 0
;0 1
string

 
defaultCurvesName

  
{

! "
get

# &
;

& '
}

( )
Object 
asset 
{ 
get 
; 
} 
Object 

assetOwner 
{ 
get 
;  
}! "

TrackAsset 
targetTrack 
{  
get! $
;$ %
}& '
} 
} Œ$
“D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\TrackUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 

TrackAsset 
: *
ISerializationCallbackReceiver =
{ 
internal 
enum 
Versions 
{		 	
Initial

 
=

 
$num

 
,

 
RotationAsEuler 
= 
$num 
,  
RootMotionUpgrade 
= 
$num  !
,! "#
AnimatedTrackProperties #
=$ %
$num& '
} 	
const 
int 
k_LatestVersion !
=" #
($ %
int% (
)( )
Versions) 1
.1 2#
AnimatedTrackProperties2 I
;I J
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
[ 	
Obsolete	 
( 
$str J
,J K
falseL Q
)Q R
]R S
[ 	
SerializeField	 
, 
HideInInspector (
,( ) 
FormerlySerializedAs* >
(> ?
$str? K
)K L
]L M
internal 
AnimationClip 

m_AnimClip )
;) *
	protected 
virtual 
void "
OnBeforeTrackSerialize 5
(5 6
)6 7
{8 9
}9 :
	protected   
virtual   
void   #
OnAfterTrackDeserialize   6
(  6 7
)  7 8
{  9 :
}  : ;
internal"" 
virtual"" 
void""  
OnUpgradeFromVersion"" 2
(""2 3
int""3 6

oldVersion""7 A
)""A B
{""C D
}""D E
void%% *
ISerializationCallbackReceiver%% +
.%%+ ,
OnBeforeSerialize%%, =
(%%= >
)%%> ?
{&& 	
	m_Version'' 
='' 
k_LatestVersion'' '
;''' (
if** 
(** 

m_Children** 
!=** 
null** "
)**" #
{++ 
for,, 
(,, 
var,, 
i,, 
=,, 

m_Children,, '
.,,' (
Count,,( -
-,,. /
$num,,0 1
;,,1 2
i,,3 4
>=,,5 7
$num,,8 9
;,,9 :
i,,; <
--,,< >
),,> ?
{-- 
var.. 
asset.. 
=.. 

m_Children..  *
[..* +
i..+ ,
].., -
as... 0

TrackAsset..1 ;
;..; <
if// 
(// 
asset// 
!=//  
null//! %
&&//& (
asset//) .
.//. /
parent/// 5
!=//6 8
this//9 =
)//= >
asset00 
.00 
parent00 $
=00% &
this00' +
;00+ ,
}11 
}22 "
OnBeforeTrackSerialize44 "
(44" #
)44# $
;44$ %
}55 	
void88 *
ISerializationCallbackReceiver88 +
.88+ ,
OnAfterDeserialize88, >
(88> ?
)88? @
{99 	
m_ClipsCache<< 
=<< 
null<< 
;<<  

Invalidate== 
(== 
)== 
;== 
if?? 
(?? 
	m_Version?? 
<?? 
k_LatestVersion?? +
)??+ ,
{@@ "
UpgradeToLatestVersionAA &
(AA& '
)AA' (
;AA( ) 
OnUpgradeFromVersionBB $
(BB$ %
	m_VersionBB% .
)BB. /
;BB/ 0
}CC 
foreachEE 
(EE 
varEE 
markerEE 
inEE  "

GetMarkersEE# -
(EE- .
)EE. /
)EE/ 0
{FF 
markerGG 
.GG 

InitializeGG !
(GG! "
thisGG" &
)GG& '
;GG' (
}HH #
OnAfterTrackDeserializeJJ #
(JJ# $
)JJ$ %
;JJ% &
}KK 	
voidNN "
UpgradeToLatestVersionNN #
(NN# $
)NN$ %
{OO 	
}OO	 

staticRR 
classRR 
TrackAssetUpgradeRR &
{SS 	
}SS	 

}TT 
}UU ñ…
’D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Flags 

]
 
public 

enum 
MatchTargetFields !
{ 
	PositionX 
= 
$num 
<< 
$num 
, 
	PositionY 
= 
$num 
<< 
$num 
, 
	PositionZ 
= 
$num 
<< 
$num 
, 
	RotationX## 
=## 
$num## 
<<## 
$num## 
,## 
	RotationY'' 
='' 
$num'' 
<<'' 
$num'' 
,'' 
	RotationZ++ 
=++ 
$num++ 
<<++ 
$num++ 
},, 
public55 

enum55 
TrackOffset55 
{66 !
ApplyTransformOffsets:: 
,:: 
ApplySceneOffsets>> 
,>> 
AutoII 
}JJ 
enumNN 
AppliedOffsetModeNN	 
{OO 
NoRootTransformPP 
,PP 
TransformOffsetQQ 
,QQ 
SceneOffsetRR 
,RR !
TransformOffsetLegacySS 
,SS 
SceneOffsetLegacyTT 
,TT 
SceneOffsetEditorUU 
,UU #
SceneOffsetLegacyEditorVV 
,VV  
}WW 
static[[ 

class[[ %
MatchTargetFieldConstants[[ *
{\\ 
public]] 
static]] 
MatchTargetFields]] '
All]]( +
=]], -
MatchTargetFields]]. ?
.]]? @
	PositionX]]@ I
|]]J K
MatchTargetFields]]L ]
.]]] ^
	PositionY]]^ g
|]]h i
MatchTargetFields^^ 
.^^ 
	PositionZ^^ '
|^^( )
MatchTargetFields^^* ;
.^^; <
	RotationX^^< E
|^^F G
MatchTargetFields__ 
.__ 
	RotationY__ '
|__( )
MatchTargetFields__* ;
.__; <
	RotationZ__< E
;__E F
publicaa 
staticaa 
MatchTargetFieldsaa '
Noneaa( ,
=aa- .
$numaa/ 0
;aa0 1
publiccc 
staticcc 
MatchTargetFieldscc '
Positioncc( 0
=cc1 2
MatchTargetFieldscc3 D
.ccD E
	PositionXccE N
|ccO P
MatchTargetFieldsccQ b
.ccb c
	PositionYccc l
|ccm n
MatchTargetFieldsdd 
.dd 
	PositionZdd '
;dd' (
publicff 
staticff 
MatchTargetFieldsff '
Rotationff( 0
=ff1 2
MatchTargetFieldsff3 D
.ffD E
	RotationXffE N
|ffO P
MatchTargetFieldsffQ b
.ffb c
	RotationYffc l
|ffm n
MatchTargetFieldsgg 
.gg 
	RotationZgg '
;gg' (
publicii 
staticii 
boolii 
HasAnyii !
(ii! "
thisii" &
MatchTargetFieldsii' 8
meii9 ;
,ii; <
MatchTargetFieldsii= N
fieldsiiO U
)iiU V
{jj 	
returnkk 
(kk 
mekk 
&kk 
fieldskk 
)kk  
!=kk! #
Nonekk$ (
;kk( )
}ll 	
publicnn 
staticnn 
MatchTargetFieldsnn '
Togglenn( .
(nn. /
thisnn/ 3
MatchTargetFieldsnn4 E
mennF H
,nnH I
MatchTargetFieldsnnJ [
flagnn\ `
)nn` a
{oo 	
returnpp 
mepp 
^pp 
flagpp 
;pp 
}qq 	
}rr 
[xx 
Serializablexx 
]xx 
[yy 
TrackClipTypeyy 
(yy 
typeofyy 
(yy "
AnimationPlayableAssetyy 0
)yy0 1
,yy1 2
falseyy3 8
)yy8 9
]yy9 :
[zz 
TrackBindingTypezz 
(zz 
typeofzz 
(zz 
Animatorzz %
)zz% &
)zz& '
]zz' (
[{{ 
ExcludeFromPreset{{ 
]{{ 
public|| 

partial|| 
class|| 
AnimationTrack|| '
:||( )

TrackAsset||* 4
,||4 5

ILayerable||6 @
{}} 
const~~ 
string~~ %
k_DefaultInfiniteClipName~~ .
=~~/ 0
$str~~1 ;
;~~; <
const 
string '
k_DefaultRecordableClipName 0
=1 2
$str3 =
;= >
[
 	
SerializeField
	 
,
 "
FormerlySerializedAs
 -
(
- .
$str
. J
)
J K
]
K L
TimelineClip
‚‚ 
.
‚‚ 
ClipExtrapolation
‚‚ &,
m_InfiniteClipPreExtrapolation
‚‚' E
=
‚‚F G
TimelineClip
‚‚H T
.
‚‚T U
ClipExtrapolation
‚‚U f
.
‚‚f g
None
‚‚g k
;
‚‚k l
[
„„ 	
SerializeField
„„	 
,
„„ "
FormerlySerializedAs
„„ -
(
„„- .
$str
„„. K
)
„„K L
]
„„L M
TimelineClip
…… 
.
…… 
ClipExtrapolation
…… &-
m_InfiniteClipPostExtrapolation
……' F
=
……G H
TimelineClip
……I U
.
……U V
ClipExtrapolation
……V g
.
……g h
None
……h l
;
……l m
[
‡‡ 	
SerializeField
‡‡	 
,
‡‡ "
FormerlySerializedAs
‡‡ -
(
‡‡- .
$str
‡‡. H
)
‡‡H I
]
‡‡I J
Vector3
ˆˆ *
m_InfiniteClipOffsetPosition
ˆˆ ,
=
ˆˆ- .
Vector3
ˆˆ/ 6
.
ˆˆ6 7
zero
ˆˆ7 ;
;
ˆˆ; <
[
ŠŠ 	
SerializeField
ŠŠ	 
,
ŠŠ "
FormerlySerializedAs
ŠŠ -
(
ŠŠ- .
$str
ŠŠ. K
)
ŠŠK L
]
ŠŠL M
Vector3
‹‹ -
m_InfiniteClipOffsetEulerAngles
‹‹ /
=
‹‹0 1
Vector3
‹‹2 9
.
‹‹9 :
zero
‹‹: >
;
‹‹> ?
[
 	
SerializeField
	 
,
 "
FormerlySerializedAs
 -
(
- .
$str
. D
)
D E
]
E F
double
 &
m_InfiniteClipTimeOffset
 '
;
' (
[
 	
SerializeField
	 
,
 "
FormerlySerializedAs
 -
(
- .
$str
. F
)
F G
]
G H
bool
‘‘ (
m_InfiniteClipRemoveOffset
‘‘ '
;
‘‘' (
[
““ 	
SerializeField
““	 
]
““ 
bool
”” '
m_InfiniteClipApplyFootIK
”” &
=
””' (
true
””) -
;
””- .
[
–– 	
SerializeField
––	 
,
–– 
HideInInspector
–– (
]
––( )$
AnimationPlayableAsset
—— 
.
—— 
LoopMode
—— '
mInfiniteClipLoop
——( 9
=
——: ;$
AnimationPlayableAsset
——< R
.
——R S
LoopMode
——S [
.
——[ \
UseSourceAsset
——\ j
;
——j k
[
™™ 	
SerializeField
™™	 
]
™™ 
MatchTargetFields
šš !
m_MatchTargetFields
šš -
=
šš. /'
MatchTargetFieldConstants
šš0 I
.
ššI J
All
ššJ M
;
ššM N
[
›› 	
SerializeField
››	 
]
›› 
Vector3
œœ 

m_Position
œœ 
=
œœ 
Vector3
œœ $
.
œœ$ %
zero
œœ% )
;
œœ) *
[
 	
SerializeField
	 
]
 
Vector3
 
m_EulerAngles
 
=
 
Vector3
  '
.
' (
zero
( ,
;
, -
[
¡¡ 	
SerializeField
¡¡	 
]
¡¡ 

AvatarMask
¡¡ #
m_AvatarMask
¡¡$ 0
;
¡¡0 1
[
¢¢ 	
SerializeField
¢¢	 
]
¢¢ 
bool
¢¢ 
m_ApplyAvatarMask
¢¢$ 5
=
¢¢7 8
true
¢¢9 =
;
¢¢= >
[
¤¤ 	
SerializeField
¤¤	 
]
¤¤ 
TrackOffset
¤¤ $
m_TrackOffset
¤¤% 2
=
¤¤3 4
TrackOffset
¤¤5 @
.
¤¤@ A#
ApplyTransformOffsets
¤¤A V
;
¤¤V W
[
¦¦ 	
SerializeField
¦¦	 
,
¦¦ 
HideInInspector
¦¦ (
]
¦¦( )
AnimationClip
¦¦* 7
m_InfiniteClip
¦¦8 F
;
¦¦F G
private
ªª 
AnimationClip
ªª 
m_DefaultPoseClip
ªª /
;
ªª/ 0
private
«« 
AnimationClip
«« $
m_CachedPropertiesClip
«« 4
;
««4 5
private
¬¬ 
int
¬¬ 
m_CachedHash
¬¬ *
;
¬¬* +
private
­­  
EditorCurveBinding
­­ "
[
­­" #
]
­­# $
m_CachedBindings
­­% 5
;
­­5 6%
AnimationOffsetPlayable
¯¯ 
m_ClipOffset
¯¯  ,
;
¯¯, -
private
±± 
Vector3
±± #
m_SceneOffsetPosition
±± -
=
±±. /
Vector3
±±0 7
.
±±7 8
zero
±±8 <
;
±±< =
private
²² 
Vector3
²² #
m_SceneOffsetRotation
²² -
=
²². /
Vector3
²²0 7
.
²²7 8
zero
²²8 <
;
²²< =
private
´´ 
bool
´´ $
m_HasPreviewComponents
´´ +
=
´´, -
false
´´. 3
;
´´3 4
public
ºº 
Vector3
ºº 
position
ºº 
{
»» 	
get
¼¼ 
{
¼¼ 
return
¼¼ 

m_Position
¼¼ #
;
¼¼# $
}
¼¼% &
set
½½ 
{
½½ 

m_Position
½½ 
=
½½ 
value
½½ $
;
½½$ %
}
½½& '
}
¾¾ 	
public
ÃÃ 

Quaternion
ÃÃ 
rotation
ÃÃ "
{
ÄÄ 	
get
ÅÅ 
{
ÅÅ 
return
ÅÅ 

Quaternion
ÅÅ #
.
ÅÅ# $
Euler
ÅÅ$ )
(
ÅÅ) *
m_EulerAngles
ÅÅ* 7
)
ÅÅ7 8
;
ÅÅ8 9
}
ÅÅ: ;
set
ÆÆ 
{
ÆÆ 
m_EulerAngles
ÆÆ 
=
ÆÆ  !
value
ÆÆ" '
.
ÆÆ' (
eulerAngles
ÆÆ( 3
;
ÆÆ3 4
}
ÆÆ5 6
}
ÇÇ 	
public
ÌÌ 
Vector3
ÌÌ 
eulerAngles
ÌÌ "
{
ÍÍ 	
get
ÎÎ 
{
ÎÎ 
return
ÎÎ 
m_EulerAngles
ÎÎ &
;
ÎÎ& '
}
ÎÎ( )
set
ÏÏ 
{
ÏÏ 
m_EulerAngles
ÏÏ 
=
ÏÏ  !
value
ÏÏ" '
;
ÏÏ' (
}
ÏÏ) *
}
ĞĞ 	
[
ØØ 	
Obsolete
ØØ	 
(
ØØ 
$str
ØØ F
,
ØØF G
true
ØØH L
)
ØØL M
]
ØØM N
public
ÙÙ 
bool
ÙÙ 
applyOffsets
ÙÙ  
{
ÚÚ 	
get
ÛÛ 
{
ÛÛ 
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÛÛ  !
set
ÜÜ 
{
ÜÜ 
}
ÜÜ 
}
İİ 	
public
åå 
TrackOffset
åå 
trackOffset
åå &
{
ææ 	
get
çç 
{
çç 
return
çç 
m_TrackOffset
çç &
;
çç& '
}
çç( )
set
èè 
{
èè 
m_TrackOffset
èè 
=
èè  !
value
èè" '
;
èè' (
}
èè) *
}
éé 	
public
îî 
MatchTargetFields
îî  
matchTargetFields
îî! 2
{
ïï 	
get
ğğ 
{
ğğ 
return
ğğ !
m_MatchTargetFields
ğğ ,
;
ğğ, -
}
ğğ. /
set
ññ 
{
ññ !
m_MatchTargetFields
ññ %
=
ññ& '
value
ññ( -
&
ññ. /'
MatchTargetFieldConstants
ññ0 I
.
ññI J
All
ññJ M
;
ññM N
}
ññO P
}
òò 	
public
úú 
AnimationClip
úú 
infiniteClip
úú )
{
ûû 	
get
üü 
{
üü 
return
üü 
m_InfiniteClip
üü '
;
üü' (
}
üü) *
internal
ıı 
set
ıı 
{
ıı 
m_InfiniteClip
ıı )
=
ıı* +
value
ıı, 1
;
ıı1 2
}
ıı3 4
}
şş 	
internal
 
bool
 &
infiniteClipRemoveOffset
 .
{
‚‚ 	
get
ƒƒ 
{
ƒƒ 
return
ƒƒ (
m_InfiniteClipRemoveOffset
ƒƒ 3
;
ƒƒ3 4
}
ƒƒ5 6
set
„„ 
{
„„ (
m_InfiniteClipRemoveOffset
„„ ,
=
„„- .
value
„„/ 4
;
„„4 5
}
„„6 7
}
…… 	
public
 

AvatarMask
 

avatarMask
 $
{
 	
get
 
{
 
return
 
m_AvatarMask
 %
;
% &
}
' (
set
 
{
 
m_AvatarMask
 
=
  
value
! &
;
& '
}
( )
}
‘‘ 	
public
–– 
bool
–– 
applyAvatarMask
–– #
{
—— 	
get
˜˜ 
{
˜˜ 
return
˜˜ 
m_ApplyAvatarMask
˜˜ *
;
˜˜* +
}
˜˜, -
set
™™ 
{
™™ 
m_ApplyAvatarMask
™™ #
=
™™$ %
value
™™& +
;
™™+ ,
}
™™- .
}
šš 	
internal
 
override
 
bool
 
CanCompileClips
 .
(
. /
)
/ 0
{
ŸŸ 	
return
   
!
   
muted
   
&&
   
(
   
m_Clips
   %
.
  % &
Count
  & +
>
  , -
$num
  . /
||
  0 2
(
  3 4
m_InfiniteClip
  4 B
!=
  C E
null
  F J
&&
  K M
!
  N O
m_InfiniteClip
  O ]
.
  ] ^
empty
  ^ c
)
  c d
)
  d e
;
  e f
}
¡¡ 	
public
¤¤ 
override
¤¤ 
IEnumerable
¤¤ #
<
¤¤# $
PlayableBinding
¤¤$ 3
>
¤¤3 4
outputs
¤¤5 <
{
¥¥ 	
get
¦¦ 
{
¦¦ 
yield
¦¦ 
return
¦¦ &
AnimationPlayableBinding
¦¦ 7
.
¦¦7 8
Create
¦¦8 >
(
¦¦> ?
name
¦¦? C
,
¦¦C D
this
¦¦E I
)
¦¦I J
;
¦¦J K
}
¦¦L M
}
§§ 	
public
­­ 
bool
­­ 

inClipMode
­­ 
{
®® 	
get
¯¯ 
{
¯¯ 
return
¯¯ 
clips
¯¯ 
!=
¯¯ !
null
¯¯" &
&&
¯¯' )
clips
¯¯* /
.
¯¯/ 0
Length
¯¯0 6
!=
¯¯7 9
$num
¯¯: ;
;
¯¯; <
}
¯¯= >
}
°° 	
public
µµ 
Vector3
µµ (
infiniteClipOffsetPosition
µµ 1
{
¶¶ 	
get
·· 
{
·· 
return
·· *
m_InfiniteClipOffsetPosition
·· 5
;
··5 6
}
··7 8
set
¸¸ 
{
¸¸ *
m_InfiniteClipOffsetPosition
¸¸ .
=
¸¸/ 0
value
¸¸1 6
;
¸¸6 7
}
¸¸8 9
}
¹¹ 	
public
¾¾ 

Quaternion
¾¾ (
infiniteClipOffsetRotation
¾¾ 4
{
¿¿ 	
get
ÀÀ 
{
ÀÀ 
return
ÀÀ 

Quaternion
ÀÀ #
.
ÀÀ# $
Euler
ÀÀ$ )
(
ÀÀ) *-
m_InfiniteClipOffsetEulerAngles
ÀÀ* I
)
ÀÀI J
;
ÀÀJ K
}
ÀÀL M
set
ÁÁ 
{
ÁÁ -
m_InfiniteClipOffsetEulerAngles
ÁÁ 1
=
ÁÁ2 3
value
ÁÁ4 9
.
ÁÁ9 :
eulerAngles
ÁÁ: E
;
ÁÁE F
}
ÁÁG H
}
ÂÂ 	
public
ÇÇ 
Vector3
ÇÇ +
infiniteClipOffsetEulerAngles
ÇÇ 4
{
ÈÈ 	
get
ÉÉ 
{
ÉÉ 
return
ÉÉ -
m_InfiniteClipOffsetEulerAngles
ÉÉ 8
;
ÉÉ8 9
}
ÉÉ: ;
set
ÊÊ 
{
ÊÊ -
m_InfiniteClipOffsetEulerAngles
ÊÊ 1
=
ÊÊ2 3
value
ÊÊ4 9
;
ÊÊ9 :
}
ÊÊ; <
}
ËË 	
internal
ÍÍ 
bool
ÍÍ %
infiniteClipApplyFootIK
ÍÍ -
{
ÎÎ 	
get
ÏÏ 
{
ÏÏ 
return
ÏÏ '
m_InfiniteClipApplyFootIK
ÏÏ 2
;
ÏÏ2 3
}
ÏÏ5 6
set
ĞĞ 
{
ĞĞ '
m_InfiniteClipApplyFootIK
ĞĞ +
=
ĞĞ, -
value
ĞĞ. 3
;
ĞĞ3 4
}
ĞĞ5 6
}
ÑÑ 	
internal
ÓÓ 
double
ÓÓ $
infiniteClipTimeOffset
ÓÓ .
{
ÔÔ 	
get
ÕÕ 
{
ÕÕ 
return
ÕÕ &
m_InfiniteClipTimeOffset
ÕÕ 1
;
ÕÕ1 2
}
ÕÕ3 4
set
ÖÖ 
{
ÖÖ &
m_InfiniteClipTimeOffset
ÖÖ *
=
ÖÖ+ ,
value
ÖÖ- 2
;
ÖÖ2 3
}
ÖÖ4 5
}
×× 	
public
ÜÜ 
TimelineClip
ÜÜ 
.
ÜÜ 
ClipExtrapolation
ÜÜ -*
infiniteClipPreExtrapolation
ÜÜ. J
{
İİ 	
get
ŞŞ 
{
ŞŞ 
return
ŞŞ ,
m_InfiniteClipPreExtrapolation
ŞŞ 7
;
ŞŞ7 8
}
ŞŞ9 :
set
ßß 
{
ßß ,
m_InfiniteClipPreExtrapolation
ßß 0
=
ßß1 2
value
ßß3 8
;
ßß8 9
}
ßß: ;
}
àà 	
public
åå 
TimelineClip
åå 
.
åå 
ClipExtrapolation
åå -+
infiniteClipPostExtrapolation
åå. K
{
ææ 	
get
çç 
{
çç 
return
çç -
m_InfiniteClipPostExtrapolation
çç 8
;
çç8 9
}
çç: ;
set
èè 
{
èè -
m_InfiniteClipPostExtrapolation
èè 1
=
èè2 3
value
èè4 9
;
èè9 :
}
èè; <
}
éé 	
internal
îî $
AnimationPlayableAsset
îî '
.
îî' (
LoopMode
îî( 0
infiniteClipLoop
îî1 A
{
ïï 	
get
ğğ 
{
ğğ 
return
ğğ 
mInfiniteClipLoop
ğğ *
;
ğğ* +
}
ğğ, -
set
ññ 
{
ññ 
mInfiniteClipLoop
ññ #
=
ññ$ %
value
ññ& +
;
ññ+ ,
}
ññ- .
}
òò 	
[
ôô 	
ContextMenu
ôô	 
(
ôô 
$str
ôô $
)
ôô$ %
]
ôô% &
void
õõ 
ResetOffsets
õõ 
(
õõ 
)
õõ 
{
öö 	

m_Position
÷÷ 
=
÷÷ 
Vector3
÷÷  
.
÷÷  !
zero
÷÷! %
;
÷÷% &
m_EulerAngles
øø 
=
øø 
Vector3
øø #
.
øø# $
zero
øø$ (
;
øø( )
UpdateClipOffsets
ùù 
(
ùù 
)
ùù 
;
ùù  
}
úú 	
public
 
TimelineClip
 

CreateClip
 &
(
& '
AnimationClip
' 4
clip
5 9
)
9 :
{
‚‚ 	
if
ƒƒ 
(
ƒƒ 
clip
ƒƒ 
==
ƒƒ 
null
ƒƒ 
)
ƒƒ 
return
„„ 
null
„„ 
;
„„ 
var
†† 
newClip
†† 
=
†† 

CreateClip
†† $
<
††$ %$
AnimationPlayableAsset
††% ;
>
††; <
(
††< =
)
††= >
;
††> ?!
AssignAnimationClip
‡‡ 
(
‡‡  
newClip
‡‡  '
,
‡‡' (
clip
‡‡) -
)
‡‡- .
;
‡‡. /
return
ˆˆ 
newClip
ˆˆ 
;
ˆˆ 
}
‰‰ 	
public
   
void
    
CreateInfiniteClip
   &
(
  & '
string
  ' -
infiniteClipName
  . >
)
  > ?
{
¡¡ 	
if
¢¢ 
(
¢¢ 

inClipMode
¢¢ 
)
¢¢ 
{
££ 
Debug
¤¤ 
.
¤¤ 

LogWarning
¤¤  
(
¤¤  !
$str¤¤! ”
)¤¤” •
;¤¤• –
return
¥¥ 
;
¥¥ 
}
¦¦ 
if
¨¨ 
(
¨¨ 
m_InfiniteClip
¨¨ 
!=
¨¨ !
null
¨¨" &
)
¨¨& '
return
©© 
;
©© 
m_InfiniteClip
«« 
=
«« %
TimelineCreateUtilities
«« 4
.
««4 5)
CreateAnimationClipForTrack
««5 P
(
««P Q
string
««Q W
.
««W X
IsNullOrEmpty
««X e
(
««e f
infiniteClipName
««f v
)
««v w
?
««x y(
k_DefaultInfiniteClipName««z “
:««” • 
infiniteClipName««– ¦
,««¦ §
this««¨ ¬
,««¬ ­
false««® ³
)««³ ´
;««´ µ
}
¬¬ 	
public
¾¾ 
TimelineClip
¾¾ "
CreateRecordableClip
¾¾ 0
(
¾¾0 1
string
¾¾1 7
animClipName
¾¾8 D
)
¾¾D E
{
¿¿ 	
var
ÀÀ 
clip
ÀÀ 
=
ÀÀ %
TimelineCreateUtilities
ÀÀ .
.
ÀÀ. /)
CreateAnimationClipForTrack
ÀÀ/ J
(
ÀÀJ K
string
ÀÀK Q
.
ÀÀQ R
IsNullOrEmpty
ÀÀR _
(
ÀÀ_ `
animClipName
ÀÀ` l
)
ÀÀl m
?
ÀÀn o*
k_DefaultRecordableClipNameÀÀp ‹
:ÀÀŒ 
animClipNameÀÀ š
,ÀÀš ›
thisÀÀœ  
,ÀÀ  ¡
falseÀÀ¢ §
)ÀÀ§ ¨
;ÀÀ¨ ©
var
ÂÂ 
timelineClip
ÂÂ 
=
ÂÂ 

CreateClip
ÂÂ )
(
ÂÂ) *
clip
ÂÂ* .
)
ÂÂ. /
;
ÂÂ/ 0
timelineClip
ÃÃ 
.
ÃÃ 
displayName
ÃÃ $
=
ÃÃ% &
animClipName
ÃÃ' 3
;
ÃÃ3 4
timelineClip
ÄÄ 
.
ÄÄ 

recordable
ÄÄ #
=
ÄÄ$ %
true
ÄÄ& *
;
ÄÄ* +
timelineClip
ÅÅ 
.
ÅÅ 
start
ÅÅ 
=
ÅÅ  
$num
ÅÅ! "
;
ÅÅ" #
timelineClip
ÆÆ 
.
ÆÆ 
duration
ÆÆ !
=
ÆÆ" #
$num
ÆÆ$ %
;
ÆÆ% &
var
ÈÈ 
apa
ÈÈ 
=
ÈÈ 
timelineClip
ÈÈ "
.
ÈÈ" #
asset
ÈÈ# (
as
ÈÈ) +$
AnimationPlayableAsset
ÈÈ, B
;
ÈÈB C
if
ÉÉ 
(
ÉÉ 
apa
ÉÉ 
!=
ÉÉ 
null
ÉÉ 
)
ÉÉ 
apa
ÊÊ 
.
ÊÊ 
removeStartOffset
ÊÊ %
=
ÊÊ& '
false
ÊÊ( -
;
ÊÊ- .
return
ÌÌ 
timelineClip
ÌÌ 
;
ÌÌ  
}
ÍÍ 	
internal
ĞĞ 
Vector3
ĞĞ !
sceneOffsetPosition
ĞĞ ,
{
ÑÑ 	
get
ÒÒ 
{
ÒÒ 
return
ÒÒ #
m_SceneOffsetPosition
ÒÒ .
;
ÒÒ. /
}
ÒÒ0 1
set
ÓÓ 
{
ÓÓ #
m_SceneOffsetPosition
ÓÓ '
=
ÓÓ( )
value
ÓÓ* /
;
ÓÓ/ 0
}
ÓÓ1 2
}
ÔÔ 	
internal
ÖÖ 
Vector3
ÖÖ !
sceneOffsetRotation
ÖÖ ,
{
×× 	
get
ØØ 
{
ØØ 
return
ØØ #
m_SceneOffsetRotation
ØØ .
;
ØØ. /
}
ØØ0 1
set
ÙÙ 
{
ÙÙ #
m_SceneOffsetRotation
ÙÙ '
=
ÙÙ( )
value
ÙÙ* /
;
ÙÙ/ 0
}
ÙÙ1 2
}
ÚÚ 	
internal
ÜÜ 
bool
ÜÜ "
hasPreviewComponents
ÜÜ *
{
İİ 	
get
ŞŞ 
{
ßß 
if
àà 
(
àà $
m_HasPreviewComponents
àà *
)
àà* +
return
áá 
true
áá 
;
áá  
var
ãã 
parentTrack
ãã 
=
ãã  !
parent
ãã" (
as
ãã) +
AnimationTrack
ãã, :
;
ãã: ;
if
ää 
(
ää 
parentTrack
ää 
!=
ää  "
null
ää# '
)
ää' (
{
åå 
return
ææ 
parentTrack
ææ &
.
ææ& '"
hasPreviewComponents
ææ' ;
;
ææ; <
}
çç 
return
éé 
false
éé 
;
éé 
}
êê 
}
ëë 	
	protected
òò 
override
òò 
void
òò 
OnCreateClip
òò  ,
(
òò, -
TimelineClip
òò- 9
clip
òò: >
)
òò> ?
{
óó 	
var
ôô 
extrapolation
ôô 
=
ôô 
TimelineClip
ôô  ,
.
ôô, -
ClipExtrapolation
ôô- >
.
ôô> ?
None
ôô? C
;
ôôC D
if
õõ 
(
õõ 
!
õõ 

isSubTrack
õõ 
)
õõ 
extrapolation
öö 
=
öö 
TimelineClip
öö  ,
.
öö, -
ClipExtrapolation
öö- >
.
öö> ?
Hold
öö? C
;
ööC D
clip
÷÷ 
.
÷÷ "
preExtrapolationMode
÷÷ %
=
÷÷& '
extrapolation
÷÷( 5
;
÷÷5 6
clip
øø 
.
øø #
postExtrapolationMode
øø &
=
øø' (
extrapolation
øø) 6
;
øø6 7
}
ùù 	
	protected
ûû 
internal
ûû 
override
ûû #
int
ûû$ ' 
CalculateItemsHash
ûû( :
(
ûû: ;
)
ûû; <
{
üü 	
return
ıı "
GetAnimationClipHash
ıı '
(
ıı' (
m_InfiniteClip
ıı( 6
)
ıı6 7
.
ıı7 8
CombineHash
ıı8 C
(
ııC D
base
ııD H
.
ııH I 
CalculateItemsHash
ııI [
(
ıı[ \
)
ıı\ ]
)
ıı] ^
;
ıı^ _
}
şş 	
internal
€€ 
void
€€ 
UpdateClipOffsets
€€ '
(
€€' (
)
€€( )
{
 	
if
ƒƒ 
(
ƒƒ 
m_ClipOffset
ƒƒ 
.
ƒƒ 
IsValid
ƒƒ $
(
ƒƒ$ %
)
ƒƒ% &
)
ƒƒ& '
{
„„ 
m_ClipOffset
…… 
.
…… 
SetPosition
…… (
(
……( )
position
……) 1
)
……1 2
;
……2 3
m_ClipOffset
†† 
.
†† 
SetRotation
†† (
(
††( )
rotation
††) 1
)
††1 2
;
††2 3
}
‡‡ 
}
‰‰ 	
Playable
‹‹ "
CompileTrackPlayable
‹‹ %
(
‹‹% &
PlayableGraph
‹‹& 3
graph
‹‹4 9
,
‹‹9 :
AnimationTrack
‹‹; I
track
‹‹J O
,
‹‹O P

GameObject
‹‹Q [
go
‹‹\ ^
,
‹‹^ _
IntervalTree
‹‹` l
<
‹‹l m
RuntimeElement
‹‹m {
>
‹‹{ |
tree‹‹} 
,‹‹ ‚!
AppliedOffsetMode‹‹ƒ ”
mode‹‹• ™
)‹‹™ š
{
ŒŒ 	
var
 
mixer
 
=
 $
AnimationMixerPlayable
 .
.
. /
Create
/ 5
(
5 6
graph
6 ;
,
; <
track
= B
.
B C
clips
C H
.
H I
Length
I O
)
O P
;
P Q
for
 
(
 
int
 
i
 
=
 
$num
 
;
 
i
 
<
 
track
  %
.
% &
clips
& +
.
+ ,
Length
, 2
;
2 3
i
4 5
++
5 7
)
7 8
{
 
var
 
c
 
=
 
track
 
.
 
clips
 #
[
# $
i
$ %
]
% &
;
& '
var
‘‘ 
asset
‘‘ 
=
‘‘ 
c
‘‘ 
.
‘‘ 
asset
‘‘ #
as
‘‘$ &
PlayableAsset
‘‘' 4
;
‘‘4 5
if
’’ 
(
’’ 
asset
’’ 
==
’’ 
null
’’ !
)
’’! "
continue
““ 
;
““ 
var
•• 
animationAsset
•• "
=
••# $
asset
••% *
as
••+ -$
AnimationPlayableAsset
••. D
;
••D E
if
–– 
(
–– 
animationAsset
–– "
!=
––# %
null
––& *
)
––* +
animationAsset
—— "
.
——" #
appliedOffsetMode
——# 4
=
——5 6
mode
——7 ;
;
——; <
var
™™ 
source
™™ 
=
™™ 
asset
™™ "
.
™™" #
CreatePlayable
™™# 1
(
™™1 2
graph
™™2 7
,
™™7 8
go
™™9 ;
)
™™; <
;
™™< =
if
šš 
(
šš 
source
šš 
.
šš 
IsValid
šš "
(
šš" #
)
šš# $
)
šš$ %
{
›› 
var
œœ 
clip
œœ 
=
œœ 
new
œœ "
RuntimeClip
œœ# .
(
œœ. /
c
œœ/ 0
,
œœ0 1
source
œœ2 8
,
œœ8 9
mixer
œœ: ?
)
œœ? @
;
œœ@ A
tree
 
.
 
Add
 
(
 
clip
 !
)
! "
;
" #
graph
 
.
 
Connect
 !
(
! "
source
" (
,
( )
$num
* +
,
+ ,
mixer
- 2
,
2 3
i
4 5
)
5 6
;
6 7
mixer
ŸŸ 
.
ŸŸ 
SetInputWeight
ŸŸ (
(
ŸŸ( )
i
ŸŸ) *
,
ŸŸ* +
$num
ŸŸ, 0
)
ŸŸ0 1
;
ŸŸ1 2
}
   
}
¡¡ 
if
££ 
(
££ 
!
££ 
track
££ 
.
££ #
AnimatesRootTransform
££ ,
(
££, -
)
££- .
)
££. /
return
¤¤ 
mixer
¤¤ 
;
¤¤ 
return
¦¦ 
ApplyTrackOffset
¦¦ #
(
¦¦# $
graph
¦¦$ )
,
¦¦) *
mixer
¦¦+ 0
,
¦¦0 1
go
¦¦2 4
,
¦¦4 5
mode
¦¦6 :
)
¦¦: ;
;
¦¦; <
}
§§ 	
Playable
«« 

ILayerable
«« 
.
«« 
CreateLayerMixer
«« ,
(
««, -
PlayableGraph
««- :
graph
««; @
,
««@ A

GameObject
««B L
go
««M O
,
««O P
int
««Q T

inputCount
««U _
)
««_ `
{
¬¬ 	
return
­­ 
Playable
­­ 
.
­­ 
Null
­­  
;
­­  !
}
®® 	
internal
°° 
override
°° 
Playable
°° "'
OnCreateClipPlayableGraph
°°# <
(
°°< =
PlayableGraph
°°= J
graph
°°K P
,
°°P Q

GameObject
°°R \
go
°°] _
,
°°_ `
IntervalTree
°°a m
<
°°m n
RuntimeElement
°°n |
>
°°| }
tree°°~ ‚
)°°‚ ƒ
{
±± 	
if
²² 
(
²² 

isSubTrack
²² 
)
²² 
throw
³³ 
new
³³ '
InvalidOperationException
³³ 3
(
³³3 4
$str
³³4 ~
)
³³~ 
;³³ €
List
µµ 
<
µµ 
AnimationTrack
µµ 
>
µµ  
flattenTracks
µµ! .
=
µµ/ 0
new
µµ1 4
List
µµ5 9
<
µµ9 :
AnimationTrack
µµ: H
>
µµH I
(
µµI J
)
µµJ K
;
µµK L
if
¶¶ 
(
¶¶ 
CanCompileClips
¶¶ 
(
¶¶  
)
¶¶  !
)
¶¶! "
flattenTracks
·· 
.
·· 
Add
·· !
(
··! "
this
··" &
)
··& '
;
··' (
var
¹¹ 
genericRoot
¹¹ 
=
¹¹  
GetGenericRootNode
¹¹ 0
(
¹¹0 1
go
¹¹1 3
)
¹¹3 4
;
¹¹4 5
var
ºº )
animatesRootTransformNoMask
ºº +
=
ºº, -#
AnimatesRootTransform
ºº. C
(
ººC D
)
ººD E
;
ººE F
var
»» #
animatesRootTransform
»» %
=
»»& ')
animatesRootTransformNoMask
»»( C
&&
»»D F
!
»»G H+
IsRootTransformDisabledByMask
»»H e
(
»»e f
go
»»f h
,
»»h i
genericRoot
»»j u
)
»»u v
;
»»v w
foreach
¼¼ 
(
¼¼ 
var
¼¼ 
subTrack
¼¼ !
in
¼¼" $
GetChildTracks
¼¼% 3
(
¼¼3 4
)
¼¼4 5
)
¼¼5 6
{
½½ 
var
¾¾ 
child
¾¾ 
=
¾¾ 
subTrack
¾¾ $
as
¾¾% '
AnimationTrack
¾¾( 6
;
¾¾6 7
if
¿¿ 
(
¿¿ 
child
¿¿ 
!=
¿¿ 
null
¿¿ !
&&
¿¿" $
child
¿¿% *
.
¿¿* +
CanCompileClips
¿¿+ :
(
¿¿: ;
)
¿¿; <
)
¿¿< =
{
ÀÀ 
var
ÁÁ 
childAnimatesRoot
ÁÁ )
=
ÁÁ* +
child
ÁÁ, 1
.
ÁÁ1 2#
AnimatesRootTransform
ÁÁ2 G
(
ÁÁG H
)
ÁÁH I
;
ÁÁI J)
animatesRootTransformNoMask
ÂÂ /
|=
ÂÂ0 2
child
ÂÂ3 8
.
ÂÂ8 9#
AnimatesRootTransform
ÂÂ9 N
(
ÂÂN O
)
ÂÂO P
;
ÂÂP Q#
animatesRootTransform
ÃÃ )
|=
ÃÃ* ,
(
ÃÃ- .
childAnimatesRoot
ÃÃ. ?
&&
ÃÃ@ B
!
ÃÃC D
child
ÃÃD I
.
ÃÃI J+
IsRootTransformDisabledByMask
ÃÃJ g
(
ÃÃg h
go
ÃÃh j
,
ÃÃj k
genericRoot
ÃÃl w
)
ÃÃw x
)
ÃÃx y
;
ÃÃy z
flattenTracks
ÄÄ !
.
ÄÄ! "
Add
ÄÄ" %
(
ÄÄ% &
child
ÄÄ& +
)
ÄÄ+ ,
;
ÄÄ, -
}
ÅÅ 
}
ÆÆ 
AppliedOffsetMode
ÉÉ 
mode
ÉÉ "
=
ÉÉ# $
GetOffsetMode
ÉÉ% 2
(
ÉÉ2 3
go
ÉÉ3 5
,
ÉÉ5 6#
animatesRootTransform
ÉÉ7 L
)
ÉÉL M
;
ÉÉM N
int
ÊÊ 
defaultBlendCount
ÊÊ !
=
ÊÊ" #"
GetDefaultBlendCount
ÊÊ$ 8
(
ÊÊ8 9
)
ÊÊ9 :
;
ÊÊ: ;
var
ËË 

layerMixer
ËË 
=
ËË 
CreateGroupMixer
ËË -
(
ËË- .
graph
ËË. 3
,
ËË3 4
go
ËË5 7
,
ËË7 8
flattenTracks
ËË9 F
.
ËËF G
Count
ËËG L
+
ËËM N
defaultBlendCount
ËËO `
)
ËË` a
;
ËËa b
for
ÌÌ 
(
ÌÌ 
int
ÌÌ 
c
ÌÌ 
=
ÌÌ 
$num
ÌÌ 
;
ÌÌ 
c
ÌÌ 
<
ÌÌ 
flattenTracks
ÌÌ  -
.
ÌÌ- .
Count
ÌÌ. 3
;
ÌÌ3 4
c
ÌÌ5 6
++
ÌÌ6 8
)
ÌÌ8 9
{
ÍÍ 
int
ÎÎ 

blendIndex
ÎÎ 
=
ÎÎ  
c
ÎÎ! "
+
ÎÎ# $
defaultBlendCount
ÎÎ% 6
;
ÎÎ6 7
var
ĞĞ 
	childMode
ĞĞ 
=
ĞĞ 
mode
ĞĞ  $
;
ĞĞ$ %
if
ÑÑ 
(
ÑÑ 
mode
ÑÑ 
!=
ÑÑ 
AppliedOffsetMode
ÑÑ -
.
ÑÑ- .
NoRootTransform
ÑÑ. =
&&
ÑÑ> @
flattenTracks
ÑÑA N
[
ÑÑN O
c
ÑÑO P
]
ÑÑP Q
.
ÑÑQ R+
IsRootTransformDisabledByMask
ÑÑR o
(
ÑÑo p
go
ÑÑp r
,
ÑÑr s
genericRoot
ÑÑt 
)ÑÑ €
)ÑÑ€ 
	childMode
ÒÒ 
=
ÒÒ 
AppliedOffsetMode
ÒÒ  1
.
ÒÒ1 2
NoRootTransform
ÒÒ2 A
;
ÒÒA B
var
ÔÔ #
compiledTrackPlayable
ÔÔ )
=
ÔÔ* +
flattenTracks
ÔÔ, 9
[
ÔÔ9 :
c
ÔÔ: ;
]
ÔÔ; <
.
ÔÔ< =

inClipMode
ÔÔ= G
?
ÔÔH I"
CompileTrackPlayable
ÕÕ (
(
ÕÕ( )
graph
ÕÕ) .
,
ÕÕ. /
flattenTracks
ÕÕ0 =
[
ÕÕ= >
c
ÕÕ> ?
]
ÕÕ? @
,
ÕÕ@ A
go
ÕÕB D
,
ÕÕD E
tree
ÕÕF J
,
ÕÕJ K
	childMode
ÕÕL U
)
ÕÕU V
:
ÕÕW X
flattenTracks
ÖÖ !
[
ÖÖ! "
c
ÖÖ" #
]
ÖÖ# $
.
ÖÖ$ %)
CreateInfiniteTrackPlayable
ÖÖ% @
(
ÖÖ@ A
graph
ÖÖA F
,
ÖÖF G
go
ÖÖH J
,
ÖÖJ K
tree
ÖÖL P
,
ÖÖP Q
	childMode
ÖÖR [
)
ÖÖ[ \
;
ÖÖ\ ]
graph
×× 
.
×× 
Connect
×× 
(
×× #
compiledTrackPlayable
×× 3
,
××3 4
$num
××5 6
,
××6 7

layerMixer
××8 B
,
××B C

blendIndex
××D N
)
××N O
;
××O P

layerMixer
ØØ 
.
ØØ 
SetInputWeight
ØØ )
(
ØØ) *

blendIndex
ØØ* 4
,
ØØ4 5
flattenTracks
ØØ6 C
[
ØØC D
c
ØØD E
]
ØØE F
.
ØØF G

inClipMode
ØØG Q
?
ØØR S
$num
ØØT U
:
ØØV W
$num
ØØX Y
)
ØØY Z
;
ØØZ [
if
ÙÙ 
(
ÙÙ 
flattenTracks
ÙÙ !
[
ÙÙ! "
c
ÙÙ" #
]
ÙÙ# $
.
ÙÙ$ %
applyAvatarMask
ÙÙ% 4
&&
ÙÙ5 7
flattenTracks
ÙÙ8 E
[
ÙÙE F
c
ÙÙF G
]
ÙÙG H
.
ÙÙH I

avatarMask
ÙÙI S
!=
ÙÙT V
null
ÙÙW [
)
ÙÙ[ \
{
ÚÚ 

layerMixer
ÛÛ 
.
ÛÛ (
SetLayerMaskFromAvatarMask
ÛÛ 9
(
ÛÛ9 :
(
ÛÛ: ;
uint
ÛÛ; ?
)
ÛÛ? @

blendIndex
ÛÛ@ J
,
ÛÛJ K
flattenTracks
ÛÛL Y
[
ÛÛY Z
c
ÛÛZ [
]
ÛÛ[ \
.
ÛÛ\ ]

avatarMask
ÛÛ] g
)
ÛÛg h
;
ÛÛh i
}
ÜÜ 
}
İİ 
var
ßß %
requiresMotionXPlayable
ßß '
=
ßß( )%
RequiresMotionXPlayable
ßß* A
(
ßßA B
mode
ßßB F
,
ßßF G
go
ßßH J
)
ßßJ K
;
ßßK L%
requiresMotionXPlayable
ãã #
|=
ãã$ &
(
ãã' (
defaultBlendCount
ãã( 9
>
ãã: ;
$num
ãã< =
&&
ãã> @%
RequiresMotionXPlayable
ããA X
(
ããX Y
GetOffsetMode
ããY f
(
ããf g
go
ããg i
,
ããi j*
animatesRootTransformNoMaskããk †
)ãã† ‡
,ãã‡ ˆ
goãã‰ ‹
)ãã‹ Œ
)ããŒ 
;ãã  
AttachDefaultBlend
ææ 
(
ææ 
graph
ææ $
,
ææ$ %

layerMixer
ææ& 0
,
ææ0 1%
requiresMotionXPlayable
ææ2 I
)
ææI J
;
ææJ K
Playable
éé 
mixer
éé 
=
éé 

layerMixer
éé '
;
éé' (
if
êê 
(
êê %
requiresMotionXPlayable
êê '
)
êê' (
{
ëë 
var
íí 
motionXToDelta
íí "
=
íí# $-
AnimationMotionXToDeltaPlayable
íí% D
.
ííD E
Create
ííE K
(
ííK L
graph
ííL Q
)
ííQ R
;
ííR S
graph
îî 
.
îî 
Connect
îî 
(
îî 
mixer
îî #
,
îî# $
$num
îî% &
,
îî& '
motionXToDelta
îî( 6
,
îî6 7
$num
îî8 9
)
îî9 :
;
îî: ;
motionXToDelta
ïï 
.
ïï 
SetInputWeight
ïï -
(
ïï- .
$num
ïï. /
,
ïï/ 0
$num
ïï1 5
)
ïï5 6
;
ïï6 7
motionXToDelta
ğğ 
.
ğğ 
SetAbsoluteMotion
ğğ 0
(
ğğ0 1 
UsesAbsoluteMotion
ğğ1 C
(
ğğC D
mode
ğğD H
)
ğğH I
)
ğğI J
;
ğğJ K
mixer
ññ 
=
ññ 
(
ññ 
Playable
ññ !
)
ññ! "
motionXToDelta
ññ" 0
;
ññ0 1
}
òò 
if
öö 
(
öö 
!
öö 
Application
öö 
.
öö 
	isPlaying
öö &
)
öö& '
{
÷÷ 
var
øø 
animator
øø 
=
øø 

GetBinding
øø )
(
øø) *
go
øø* ,
!=
øø- /
null
øø0 4
?
øø5 6
go
øø7 9
.
øø9 :
GetComponent
øø: F
<
øøF G
PlayableDirector
øøG W
>
øøW X
(
øøX Y
)
øøY Z
:
øø[ \
null
øø] a
)
øøa b
;
øøb c
if
ùù 
(
ùù 
animator
ùù 
!=
ùù 
null
ùù  $
)
ùù$ %
{
úú 

GameObject
ûû 
targetGO
ûû '
=
ûû( )
animator
ûû* 2
.
ûû2 3

gameObject
ûû3 =
;
ûû= >%
IAnimationWindowPreview
üü +
[
üü+ ,
]
üü, -
previewComponents
üü. ?
=
üü@ A
targetGO
üüB J
.
üüJ K
GetComponents
üüK X
<
üüX Y%
IAnimationWindowPreview
üüY p
>
üüp q
(
üüq r
)
üür s
;
üüs t$
m_HasPreviewComponents
şş *
=
şş+ ,
previewComponents
şş- >
.
şş> ?
Length
şş? E
>
şşF G
$num
şşH I
;
şşI J
if
ÿÿ 
(
ÿÿ $
m_HasPreviewComponents
ÿÿ .
)
ÿÿ. /
{
€€ 
foreach
 
(
  !
var
! $
	component
% .
in
/ 1
previewComponents
2 C
)
C D
{
‚‚ 
mixer
ƒƒ !
=
ƒƒ" #
	component
ƒƒ$ -
.
ƒƒ- .
BuildPreviewGraph
ƒƒ. ?
(
ƒƒ? @
graph
ƒƒ@ E
,
ƒƒE F
mixer
ƒƒG L
)
ƒƒL M
;
ƒƒM N
}
„„ 
}
…… 
}
†† 
}
‡‡ 
return
ŠŠ 
mixer
ŠŠ 
;
ŠŠ 
}
‹‹ 	
private
 
int
 "
GetDefaultBlendCount
 (
(
( )
)
) *
{
 	
if
 
(
 
Application
 
.
 
	isPlaying
 %
)
% &
return
‘‘ 
$num
‘‘ 
;
‘‘ 
return
““ 
(
““ 
(
““ $
m_CachedPropertiesClip
““ +
!=
““, .
null
““/ 3
)
““3 4
?
““5 6
$num
““7 8
:
““9 :
$num
““; <
)
““< =
+
““> ?
(
““@ A
(
““A B
m_DefaultPoseClip
““B S
!=
““T V
null
““W [
)
““[ \
?
““] ^
$num
““_ `
:
““a b
$num
““c d
)
““d e
;
““e f
}
—— 	
private
œœ 
void
œœ  
AttachDefaultBlend
œœ '
(
œœ' (
PlayableGraph
œœ( 5
graph
œœ6 ;
,
œœ; <)
AnimationLayerMixerPlayable
œœ= X
mixer
œœY ^
,
œœ^ _
bool
œœ` d
requireOffset
œœe r
)
œœr s
{
 	
if
ŸŸ 
(
ŸŸ 
Application
ŸŸ 
.
ŸŸ 
	isPlaying
ŸŸ %
)
ŸŸ% &
return
   
;
   
int
¢¢ 

mixerInput
¢¢ 
=
¢¢ 
$num
¢¢ 
;
¢¢ 
if
££ 
(
££ $
m_CachedPropertiesClip
££ &
)
££& '
{
¤¤ 
var
¥¥ "
cachedPropertiesClip
¥¥ (
=
¥¥) *#
AnimationClipPlayable
¥¥+ @
.
¥¥@ A
Create
¥¥A G
(
¥¥G H
graph
¥¥H M
,
¥¥M N$
m_CachedPropertiesClip
¥¥O e
)
¥¥e f
;
¥¥f g"
cachedPropertiesClip
¦¦ $
.
¦¦$ %
SetApplyFootIK
¦¦% 3
(
¦¦3 4
false
¦¦4 9
)
¦¦9 :
;
¦¦: ;
var
§§ 
defaults
§§ 
=
§§ 
(
§§  
Playable
§§  (
)
§§( )"
cachedPropertiesClip
§§) =
;
§§= >
if
¨¨ 
(
¨¨ 
requireOffset
¨¨ !
)
¨¨! "
defaults
©© 
=
©© "
AttachOffsetPlayable
©© 3
(
©©3 4
graph
©©4 9
,
©©9 :
defaults
©©; C
,
©©C D#
m_SceneOffsetPosition
©©E Z
,
©©Z [

Quaternion
©©\ f
.
©©f g
Euler
©©g l
(
©©l m$
m_SceneOffsetRotation©©m ‚
)©©‚ ƒ
)©©ƒ „
;©©„ …
graph
ªª 
.
ªª 
Connect
ªª 
(
ªª 
defaults
ªª &
,
ªª& '
$num
ªª( )
,
ªª) *
mixer
ªª+ 0
,
ªª0 1

mixerInput
ªª2 <
)
ªª< =
;
ªª= >
mixer
«« 
.
«« 
SetInputWeight
«« $
(
««$ %

mixerInput
««% /
,
««/ 0
$num
««1 5
)
««5 6
;
««6 7

mixerInput
¬¬ 
++
¬¬ 
;
¬¬ 
}
­­ 
if
¯¯ 
(
¯¯ 
m_DefaultPoseClip
¯¯ !
)
¯¯! "
{
°° 
var
±± 
defaultPose
±± 
=
±±  !#
AnimationClipPlayable
±±" 7
.
±±7 8
Create
±±8 >
(
±±> ?
graph
±±? D
,
±±D E
m_DefaultPoseClip
±±F W
)
±±W X
;
±±X Y
defaultPose
²² 
.
²² 
SetApplyFootIK
²² *
(
²²* +
false
²²+ 0
)
²²0 1
;
²²1 2
var
³³ 
blendDefault
³³  
=
³³! "
(
³³# $
Playable
³³$ ,
)
³³, -
defaultPose
³³- 8
;
³³8 9
if
´´ 
(
´´ 
requireOffset
´´ !
)
´´! "
blendDefault
µµ  
=
µµ! ""
AttachOffsetPlayable
µµ# 7
(
µµ7 8
graph
µµ8 =
,
µµ= >
blendDefault
µµ? K
,
µµK L#
m_SceneOffsetPosition
µµM b
,
µµb c

Quaternion
µµd n
.
µµn o
Euler
µµo t
(
µµt u$
m_SceneOffsetRotationµµu Š
)µµŠ ‹
)µµ‹ Œ
;µµŒ 
graph
¶¶ 
.
¶¶ 
Connect
¶¶ 
(
¶¶ 
blendDefault
¶¶ *
,
¶¶* +
$num
¶¶, -
,
¶¶- .
mixer
¶¶/ 4
,
¶¶4 5

mixerInput
¶¶6 @
)
¶¶@ A
;
¶¶A B
mixer
·· 
.
·· 
SetInputWeight
·· $
(
··$ %

mixerInput
··% /
,
··/ 0
$num
··1 5
)
··5 6
;
··6 7
}
¸¸ 
}
ºº 	
private
¼¼ 
Playable
¼¼ "
AttachOffsetPlayable
¼¼ -
(
¼¼- .
PlayableGraph
¼¼. ;
graph
¼¼< A
,
¼¼A B
Playable
¼¼C K
playable
¼¼L T
,
¼¼T U
Vector3
¼¼V ]
pos
¼¼^ a
,
¼¼a b

Quaternion
¼¼c m
rot
¼¼n q
)
¼¼q r
{
½½ 	
var
¾¾ 
offsetPlayable
¾¾ 
=
¾¾  %
AnimationOffsetPlayable
¾¾! 8
.
¾¾8 9
Create
¾¾9 ?
(
¾¾? @
graph
¾¾@ E
,
¾¾E F
pos
¾¾G J
,
¾¾J K
rot
¾¾L O
,
¾¾O P
$num
¾¾Q R
)
¾¾R S
;
¾¾S T
offsetPlayable
¿¿ 
.
¿¿ 
SetInputWeight
¿¿ )
(
¿¿) *
$num
¿¿* +
,
¿¿+ ,
$num
¿¿- 1
)
¿¿1 2
;
¿¿2 3
graph
ÀÀ 
.
ÀÀ 
Connect
ÀÀ 
(
ÀÀ 
playable
ÀÀ "
,
ÀÀ" #
$num
ÀÀ$ %
,
ÀÀ% &
offsetPlayable
ÀÀ' 5
,
ÀÀ5 6
$num
ÀÀ7 8
)
ÀÀ8 9
;
ÀÀ9 :
return
ÁÁ 
offsetPlayable
ÁÁ !
;
ÁÁ! "
}
ÂÂ 	
private
ÅÅ 
static
ÅÅ 
string
ÅÅ '
k_DefaultHumanoidClipPath
ÅÅ 7
=
ÅÅ8 9
$strÅÅ: ƒ
;ÅÅƒ „
private
ÆÆ 
static
ÆÆ 
AnimationClip
ÆÆ $#
s_DefaultHumanoidClip
ÆÆ% :
=
ÆÆ; <
null
ÆÆ= A
;
ÆÆA B
AnimationClip
ÈÈ $
GetDefaultHumanoidClip
ÈÈ ,
(
ÈÈ, -
)
ÈÈ- .
{
ÉÉ 	
if
ÊÊ 
(
ÊÊ #
s_DefaultHumanoidClip
ÊÊ %
==
ÊÊ& (
null
ÊÊ) -
)
ÊÊ- .
{
ËË #
s_DefaultHumanoidClip
ÌÌ %
=
ÌÌ& '
EditorGUIUtility
ÌÌ( 8
.
ÌÌ8 9
LoadRequired
ÌÌ9 E
(
ÌÌE F'
k_DefaultHumanoidClipPath
ÌÌF _
)
ÌÌ_ `
as
ÌÌa c
AnimationClip
ÌÌd q
;
ÌÌq r
if
ÍÍ 
(
ÍÍ #
s_DefaultHumanoidClip
ÍÍ )
==
ÍÍ* ,
null
ÍÍ- 1
)
ÍÍ1 2
Debug
ÎÎ 
.
ÎÎ 
LogError
ÎÎ "
(
ÎÎ" #
$str
ÎÎ# `
)
ÎÎ` a
;
ÎÎa b
}
ÏÏ 
return
ÑÑ #
s_DefaultHumanoidClip
ÑÑ (
;
ÑÑ( )
}
ÒÒ 	
bool
ÖÖ %
RequiresMotionXPlayable
ÖÖ $
(
ÖÖ$ %
AppliedOffsetMode
ÖÖ% 6
mode
ÖÖ7 ;
,
ÖÖ; <

GameObject
ÖÖ= G

gameObject
ÖÖH R
)
ÖÖR S
{
×× 	
if
ØØ 
(
ØØ 
mode
ØØ 
==
ØØ 
AppliedOffsetMode
ØØ )
.
ØØ) *
NoRootTransform
ØØ* 9
)
ØØ9 :
return
ÙÙ 
false
ÙÙ 
;
ÙÙ 
if
ÚÚ 
(
ÚÚ 
mode
ÚÚ 
==
ÚÚ 
AppliedOffsetMode
ÚÚ )
.
ÚÚ) *
SceneOffsetLegacy
ÚÚ* ;
)
ÚÚ; <
{
ÛÛ 
var
ÜÜ 
animator
ÜÜ 
=
ÜÜ 

GetBinding
ÜÜ )
(
ÜÜ) *

gameObject
ÜÜ* 4
!=
ÜÜ5 7
null
ÜÜ8 <
?
ÜÜ= >

gameObject
ÜÜ? I
.
ÜÜI J
GetComponent
ÜÜJ V
<
ÜÜV W
PlayableDirector
ÜÜW g
>
ÜÜg h
(
ÜÜh i
)
ÜÜi j
:
ÜÜk l
null
ÜÜm q
)
ÜÜq r
;
ÜÜr s
return
İİ 
animator
İİ 
!=
İİ  "
null
İİ# '
&&
İİ( *
animator
İİ+ 3
.
İİ3 4
hasRootMotion
İİ4 A
;
İİA B
}
ŞŞ 
return
ßß 
true
ßß 
;
ßß 
}
àà 	
static
ââ 
bool
ââ  
UsesAbsoluteMotion
ââ &
(
ââ& '
AppliedOffsetMode
ââ' 8
mode
ââ9 =
)
ââ= >
{
ãã 	
if
ææ 
(
ææ 
!
ææ 
Application
ææ 
.
ææ 
	isPlaying
ææ &
)
ææ& '
return
çç 
true
çç 
;
çç 
return
éé 
mode
éé 
!=
éé 
AppliedOffsetMode
éé ,
.
éé, -
SceneOffset
éé- 8
&&
éé9 ;
mode
êê 
!=
êê 
AppliedOffsetMode
êê )
.
êê) *
SceneOffsetLegacy
êê* ;
;
êê; <
}
ëë 	
bool
íí 
HasController
íí 
(
íí 

GameObject
íí %

gameObject
íí& 0
)
íí0 1
{
îî 	
var
ïï 
animator
ïï 
=
ïï 

GetBinding
ïï %
(
ïï% &

gameObject
ïï& 0
!=
ïï1 3
null
ïï4 8
?
ïï9 :

gameObject
ïï; E
.
ïïE F
GetComponent
ïïF R
<
ïïR S
PlayableDirector
ïïS c
>
ïïc d
(
ïïd e
)
ïïe f
:
ïïg h
null
ïïi m
)
ïïm n
;
ïïn o
return
ññ 
animator
ññ 
!=
ññ 
null
ññ #
&&
ññ$ &
animator
ññ' /
.
ññ/ 0'
runtimeAnimatorController
ññ0 I
!=
ññJ L
null
ññM Q
;
ññQ R
}
òò 	
internal
ôô 
Animator
ôô 

GetBinding
ôô $
(
ôô$ %
PlayableDirector
ôô% 5
director
ôô6 >
)
ôô> ?
{
õõ 	
if
öö 
(
öö 
director
öö 
==
öö 
null
öö  
)
öö  !
return
÷÷ 
null
÷÷ 
;
÷÷ 
UnityEngine
ùù 
.
ùù 
Object
ùù 
key
ùù "
=
ùù# $
this
ùù% )
;
ùù) *
if
úú 
(
úú 

isSubTrack
úú 
)
úú 
key
ûû 
=
ûû 
parent
ûû 
;
ûû 
UnityEngine
ıı 
.
ıı 
Object
ıı 
binding
ıı &
=
ıı' (
null
ıı) -
;
ıı- .
if
şş 
(
şş 
director
şş 
!=
şş 
null
şş  
)
şş  !
binding
ÿÿ 
=
ÿÿ 
director
ÿÿ "
.
ÿÿ" #
GetGenericBinding
ÿÿ# 4
(
ÿÿ4 5
key
ÿÿ5 8
)
ÿÿ8 9
;
ÿÿ9 :
Animator
 
animator
 
=
 
null
  $
;
$ %
if
‚‚ 
(
‚‚ 
binding
‚‚ 
!=
‚‚ 
null
‚‚ 
)
‚‚  
{
ƒƒ 
animator
„„ 
=
„„ 
binding
„„ "
as
„„# %
Animator
„„& .
;
„„. /
var
…… 

gameObject
…… 
=
……  
binding
……! (
as
……) +

GameObject
……, 6
;
……6 7
if
†† 
(
†† 
animator
†† 
==
†† 
null
††  $
&&
††% '

gameObject
††( 2
!=
††3 5
null
††6 :
)
††: ;
animator
‡‡ 
=
‡‡ 

gameObject
‡‡ )
.
‡‡) *
GetComponent
‡‡* 6
<
‡‡6 7
Animator
‡‡7 ?
>
‡‡? @
(
‡‡@ A
)
‡‡A B
;
‡‡B C
}
ˆˆ 
return
ŠŠ 
animator
ŠŠ 
;
ŠŠ 
}
‹‹ 	
static
 )
AnimationLayerMixerPlayable
 *
CreateGroupMixer
+ ;
(
; <
PlayableGraph
< I
graph
J O
,
O P

GameObject
Q [
go
\ ^
,
^ _
int
` c

inputCount
d n
)
n o
{
 	
return
 )
AnimationLayerMixerPlayable
 .
.
. /
Create
/ 5
(
5 6
graph
6 ;
,
; <

inputCount
= G
)
G H
;
H I
}
 	
Playable
’’ )
CreateInfiniteTrackPlayable
’’ ,
(
’’, -
PlayableGraph
’’- :
graph
’’; @
,
’’@ A

GameObject
’’B L
go
’’M O
,
’’O P
IntervalTree
’’Q ]
<
’’] ^
RuntimeElement
’’^ l
>
’’l m
tree
’’n r
,
’’r s 
AppliedOffsetMode’’t …
mode’’† Š
)’’Š ‹
{
““ 	
if
”” 
(
”” 
m_InfiniteClip
”” 
==
”” !
null
””" &
)
””& '
return
•• 
Playable
•• 
.
••  
Null
••  $
;
••$ %
var
—— 
mixer
—— 
=
—— $
AnimationMixerPlayable
—— .
.
——. /
Create
——/ 5
(
——5 6
graph
——6 ;
,
——; <
$num
——= >
)
——> ?
;
——? @
var
œœ 
playable
œœ 
=
œœ $
AnimationPlayableAsset
œœ 1
.
œœ1 2
CreatePlayable
œœ2 @
(
œœ@ A
graph
œœA F
,
œœF G
m_InfiniteClip
œœH V
,
œœV W*
m_InfiniteClipOffsetPosition
œœX t
,
œœt u.
m_InfiniteClipOffsetEulerAnglesœœv •
,œœ• –
falseœœ— œ
,œœœ 
modeœœ ¢
,œœ¢ £'
infiniteClipApplyFootIKœœ¤ »
,œœ» ¼&
AnimationPlayableAssetœœ½ Ó
.œœÓ Ô
LoopModeœœÔ Ü
.œœÜ İ
Offœœİ à
)œœà á
;œœá â
if
 
(
 
playable
 
.
 
IsValid
  
(
  !
)
! "
)
" #
{
 
tree
ŸŸ 
.
ŸŸ 
Add
ŸŸ 
(
ŸŸ 
new
ŸŸ !
InfiniteRuntimeClip
ŸŸ 0
(
ŸŸ0 1
playable
ŸŸ1 9
)
ŸŸ9 :
)
ŸŸ: ;
;
ŸŸ; <
graph
   
.
   
Connect
   
(
   
playable
   &
,
  & '
$num
  ( )
,
  ) *
mixer
  + 0
,
  0 1
$num
  2 3
)
  3 4
;
  4 5
mixer
¡¡ 
.
¡¡ 
SetInputWeight
¡¡ $
(
¡¡$ %
$num
¡¡% &
,
¡¡& '
$num
¡¡( ,
)
¡¡, -
;
¡¡- .
}
¢¢ 
if
¤¤ 
(
¤¤ 
!
¤¤ #
AnimatesRootTransform
¤¤ &
(
¤¤& '
)
¤¤' (
)
¤¤( )
return
¥¥ 
mixer
¥¥ 
;
¥¥ 
var
§§ 
	rootTrack
§§ 
=
§§ 

isSubTrack
§§ &
?
§§' (
(
§§) *
AnimationTrack
§§* 8
)
§§8 9
parent
§§9 ?
:
§§@ A
this
§§B F
;
§§F G
return
¨¨ 
	rootTrack
¨¨ 
.
¨¨ 
ApplyTrackOffset
¨¨ -
(
¨¨- .
graph
¨¨. 3
,
¨¨3 4
mixer
¨¨5 :
,
¨¨: ;
go
¨¨< >
,
¨¨> ?
mode
¨¨@ D
)
¨¨D E
;
¨¨E F
}
©© 	
Playable
«« 
ApplyTrackOffset
«« !
(
««! "
PlayableGraph
««" /
graph
««0 5
,
««5 6
Playable
««7 ?
root
««@ D
,
««D E

GameObject
««F P
go
««Q S
,
««S T
AppliedOffsetMode
««U f
mode
««g k
)
««k l
{
¬¬ 	
m_ClipOffset
®® 
=
®® %
AnimationOffsetPlayable
®® 2
.
®®2 3
Null
®®3 7
;
®®7 8
if
²² 
(
²² 
mode
²² 
==
²² 
AppliedOffsetMode
²² )
.
²²) *
SceneOffsetLegacy
²²* ;
||
²²< >
mode
³³ 
==
³³ 
AppliedOffsetMode
³³ )
.
³³) *
SceneOffset
³³* 5
||
³³: <
mode
´´ 
==
´´ 
AppliedOffsetMode
´´ )
.
´´) *
NoRootTransform
´´* 9
)
µµ 
return
¶¶ 
root
¶¶ 
;
¶¶ 
var
¹¹ 
pos
¹¹ 
=
¹¹ 
position
¹¹ 
;
¹¹ 
var
ºº 
rot
ºº 
=
ºº 
rotation
ºº 
;
ºº 
if
¾¾ 
(
¾¾ 
mode
¾¾ 
==
¾¾ 
AppliedOffsetMode
¾¾ )
.
¾¾) *
SceneOffsetEditor
¾¾* ;
)
¾¾; <
{
¿¿ 
pos
ÀÀ 
=
ÀÀ #
m_SceneOffsetPosition
ÀÀ +
;
ÀÀ+ ,
rot
ÁÁ 
=
ÁÁ 

Quaternion
ÁÁ  
.
ÁÁ  !
Euler
ÁÁ! &
(
ÁÁ& '#
m_SceneOffsetRotation
ÁÁ' <
)
ÁÁ< =
;
ÁÁ= >
}
ÂÂ 
var
ÅÅ 
offsetPlayable
ÅÅ 
=
ÅÅ  %
AnimationOffsetPlayable
ÅÅ! 8
.
ÅÅ8 9
Create
ÅÅ9 ?
(
ÅÅ? @
graph
ÅÅ@ E
,
ÅÅE F
pos
ÅÅG J
,
ÅÅJ K
rot
ÅÅL O
,
ÅÅO P
$num
ÅÅQ R
)
ÅÅR S
;
ÅÅS T
m_ClipOffset
ÇÇ 
=
ÇÇ 
offsetPlayable
ÇÇ )
;
ÇÇ) *
graph
ÉÉ 
.
ÉÉ 
Connect
ÉÉ 
(
ÉÉ 
root
ÉÉ 
,
ÉÉ 
$num
ÉÉ  !
,
ÉÉ! "
offsetPlayable
ÉÉ# 1
,
ÉÉ1 2
$num
ÉÉ3 4
)
ÉÉ4 5
;
ÉÉ5 6
offsetPlayable
ÊÊ 
.
ÊÊ 
SetInputWeight
ÊÊ )
(
ÊÊ) *
$num
ÊÊ* +
,
ÊÊ+ ,
$num
ÊÊ- .
)
ÊÊ. /
;
ÊÊ/ 0
return
ÌÌ 
offsetPlayable
ÌÌ !
;
ÌÌ! "
}
ÍÍ 	
internal
ĞĞ 
override
ĞĞ 
void
ĞĞ 
GetEvaluationTime
ĞĞ 0
(
ĞĞ0 1
out
ĞĞ1 4
double
ĞĞ5 ;
outStart
ĞĞ< D
,
ĞĞD E
out
ĞĞF I
double
ĞĞJ P
outDuration
ĞĞQ \
)
ĞĞ\ ]
{
ÑÑ 	
if
ÒÒ 
(
ÒÒ 

inClipMode
ÒÒ 
)
ÒÒ 
{
ÓÓ 
base
ÔÔ 
.
ÔÔ 
GetEvaluationTime
ÔÔ &
(
ÔÔ& '
out
ÔÔ' *
outStart
ÔÔ+ 3
,
ÔÔ3 4
out
ÔÔ5 8
outDuration
ÔÔ9 D
)
ÔÔD E
;
ÔÔE F
}
ÕÕ 
else
ÖÖ 
{
×× 
outStart
ØØ 
=
ØØ 
$num
ØØ 
;
ØØ 
outDuration
ÙÙ 
=
ÙÙ 
TimelineClip
ÙÙ *
.
ÙÙ* +
kMaxTimeValue
ÙÙ+ 8
;
ÙÙ8 9
}
ÚÚ 
}
ÛÛ 	
internal
İİ 
override
İİ 
void
İİ 
GetSequenceTime
İİ .
(
İİ. /
out
İİ/ 2
double
İİ3 9
outStart
İİ: B
,
İİB C
out
İİD G
double
İİH N
outDuration
İİO Z
)
İİZ [
{
ŞŞ 	
if
ßß 
(
ßß 

inClipMode
ßß 
)
ßß 
{
àà 
base
áá 
.
áá 
GetSequenceTime
áá $
(
áá$ %
out
áá% (
outStart
áá) 1
,
áá1 2
out
áá3 6
outDuration
áá7 B
)
ááB C
;
ááC D
}
ââ 
else
ãã 
{
ää 
outStart
åå 
=
åå 
$num
åå 
;
åå 
outDuration
ææ 
=
ææ 
Math
ææ "
.
ææ" #
Max
ææ# &
(
ææ& '%
GetNotificationDuration
ææ' >
(
ææ> ?
)
ææ? @
,
ææ@ A
TimeUtility
ææB M
.
ææM N$
GetAnimationClipLength
ææN d
(
ææd e
m_InfiniteClip
ææe s
)
ææs t
)
ææt u
;
ææu v
}
çç 
}
èè 	
void
êê !
AssignAnimationClip
êê  
(
êê  !
TimelineClip
êê! -
clip
êê. 2
,
êê2 3
AnimationClip
êê4 A
animClip
êêB J
)
êêJ K
{
ëë 	
if
ìì 
(
ìì 
clip
ìì 
==
ìì 
null
ìì 
||
ìì 
animClip
ìì  (
==
ìì) +
null
ìì, 0
)
ìì0 1
return
íí 
;
íí 
if
ïï 
(
ïï 
animClip
ïï 
.
ïï 
legacy
ïï 
)
ïï  
throw
ğğ 
new
ğğ '
InvalidOperationException
ğğ 3
(
ğğ3 4
$str
ğğ4 ^
)
ğğ^ _
;
ğğ_ `$
AnimationPlayableAsset
òò "
asset
òò# (
=
òò) *
clip
òò+ /
.
òò/ 0
asset
òò0 5
as
òò6 8$
AnimationPlayableAsset
òò9 O
;
òòO P
if
óó 
(
óó 
asset
óó 
!=
óó 
null
óó 
)
óó 
{
ôô 
asset
õõ 
.
õõ 
clip
õõ 
=
õõ 
animClip
õõ %
;
õõ% &
asset
öö 
.
öö 
name
öö 
=
öö 
animClip
öö %
.
öö% &
name
öö& *
;
öö* +
var
÷÷ 
duration
÷÷ 
=
÷÷ 
asset
÷÷ $
.
÷÷$ %
duration
÷÷% -
;
÷÷- .
if
øø 
(
øø 
!
øø 
double
øø 
.
øø 

IsInfinity
øø &
(
øø& '
duration
øø' /
)
øø/ 0
&&
øø1 3
duration
øø4 <
>=
øø= ?
TimelineClip
øø@ L
.
øøL M
kMinDuration
øøM Y
&&
øøZ \
duration
øø] e
<
øøf g
TimelineClip
øøh t
.
øøt u
kMaxTimeValueøøu ‚
)øø‚ ƒ
clip
ùù 
.
ùù 
duration
ùù !
=
ùù" #
duration
ùù$ ,
;
ùù, -
}
úú 
clip
ûû 
.
ûû 
displayName
ûû 
=
ûû 
animClip
ûû '
.
ûû' (
name
ûû( ,
;
ûû, -
}
üü 	
public
ƒƒ 
override
ƒƒ 
void
ƒƒ 
GatherProperties
ƒƒ -
(
ƒƒ- .
PlayableDirector
ƒƒ. >
director
ƒƒ? G
,
ƒƒG H 
IPropertyCollector
ƒƒI [
driver
ƒƒ\ b
)
ƒƒb c
{
„„ 	#
m_SceneOffsetPosition
†† !
=
††" #
Vector3
††$ +
.
††+ ,
zero
††, 0
;
††0 1#
m_SceneOffsetRotation
‡‡ !
=
‡‡" #
Vector3
‡‡$ +
.
‡‡+ ,
zero
‡‡, 0
;
‡‡0 1
var
‰‰ 
animator
‰‰ 
=
‰‰ 

GetBinding
‰‰ %
(
‰‰% &
director
‰‰& .
)
‰‰. /
;
‰‰/ 0
if
ŠŠ 
(
ŠŠ 
animator
ŠŠ 
==
ŠŠ 
null
ŠŠ  
)
ŠŠ  !
return
‹‹ 
;
‹‹ 
var
 
	animClips
 
=
 
new
 
List
  $
<
$ %
AnimationClip
% 2
>
2 3
(
3 4
this
4 8
.
8 9
clips
9 >
.
> ?
Length
? E
+
F G
$num
H I
)
I J
;
J K
GetAnimationClips
 
(
 
	animClips
 '
)
' (
;
( )
var
 
hasHumanMotion
 
=
  
	animClips
! *
.
* +
Exists
+ 1
(
1 2
clip
2 6
=>
7 9
clip
: >
.
> ?
humanMotion
? J
)
J K
;
K L
if
’’ 
(
’’ 
!
’’ 
hasHumanMotion
’’ 
&&
’’  "
animator
’’# +
.
’’+ ,
isHuman
’’, 3
&&
’’4 6#
AnimatesRootTransform
’’7 L
(
’’L M
)
’’M N
&&
’’O Q
!
““ +
DrivenPropertyManagerInternal
““ .
.
““. /
IsDriven
““/ 7
(
““7 8
animator
““8 @
.
““@ A
	transform
““A J
,
““J K
$str
““L _
)
““_ `
&&
““a c
!
”” +
DrivenPropertyManagerInternal
”” .
.
””. /
IsDriven
””/ 7
(
””7 8
animator
””8 @
.
””@ A
	transform
””A J
,
””J K
$str
””L _
)
””_ `
)
””` a
hasHumanMotion
•• 
=
••  
true
••! %
;
••% &#
m_SceneOffsetPosition
—— !
=
——" #
animator
——$ ,
.
——, -
	transform
——- 6
.
——6 7
localPosition
——7 D
;
——D E#
m_SceneOffsetRotation
˜˜ !
=
˜˜" #
animator
˜˜$ ,
.
˜˜, -
	transform
˜˜- 6
.
˜˜6 7
localEulerAngles
˜˜7 G
;
˜˜G H
if
›› 
(
›› 
hasHumanMotion
›› 
)
›› 
	animClips
œœ 
.
œœ 
Add
œœ 
(
œœ $
GetDefaultHumanoidClip
œœ 4
(
œœ4 5
)
œœ5 6
)
œœ6 7
;
œœ7 8
m_DefaultPoseClip
 
=
 
hasHumanMotion
  .
?
/ 0$
GetDefaultHumanoidClip
1 G
(
G H
)
H I
:
J K
null
L P
;
P Q
var
ŸŸ 
hash
ŸŸ 
=
ŸŸ '
AnimationPreviewUtilities
ŸŸ 0
.
ŸŸ0 1
GetClipHash
ŸŸ1 <
(
ŸŸ< =
	animClips
ŸŸ= F
)
ŸŸF G
;
ŸŸG H
if
   
(
   
m_CachedBindings
    
==
  ! #
null
  $ (
||
  ) +
m_CachedHash
  , 8
!=
  9 ;
hash
  < @
)
  @ A
{
¡¡ 
m_CachedBindings
¢¢  
=
¢¢! "'
AnimationPreviewUtilities
¢¢# <
.
¢¢< =
GetBindings
¢¢= H
(
¢¢H I
animator
¢¢I Q
.
¢¢Q R

gameObject
¢¢R \
,
¢¢\ ]
	animClips
¢¢^ g
)
¢¢g h
;
¢¢h i$
m_CachedPropertiesClip
££ &
=
££' ('
AnimationPreviewUtilities
££) B
.
££B C
CreateDefaultClip
££C T
(
££T U
animator
££U ]
.
££] ^

gameObject
££^ h
,
££h i
m_CachedBindings
££j z
)
££z {
;
££{ |
m_CachedHash
¤¤ 
=
¤¤ 
hash
¤¤ #
;
¤¤# $
}
¥¥ '
AnimationPreviewUtilities
§§ %
.
§§% &
PreviewFromCurves
§§& 7
(
§§7 8
animator
§§8 @
.
§§@ A

gameObject
§§A K
,
§§K L
m_CachedBindings
§§M ]
)
§§] ^
;
§§^ _
}
©© 	
private
¯¯ 
void
¯¯ 
GetAnimationClips
¯¯ &
(
¯¯& '
List
¯¯' +
<
¯¯+ ,
AnimationClip
¯¯, 9
>
¯¯9 :
	animClips
¯¯; D
)
¯¯D E
{
°° 	
foreach
±± 
(
±± 
var
±± 
c
±± 
in
±± 
clips
±± #
)
±±# $
{
²² 
var
³³ 
a
³³ 
=
³³ 
c
³³ 
.
³³ 
asset
³³ 
as
³³  "$
AnimationPlayableAsset
³³# 9
;
³³9 :
if
´´ 
(
´´ 
a
´´ 
!=
´´ 
null
´´ 
&&
´´  
a
´´! "
.
´´" #
clip
´´# '
!=
´´( *
null
´´+ /
)
´´/ 0
	animClips
µµ 
.
µµ 
Add
µµ !
(
µµ! "
a
µµ" #
.
µµ# $
clip
µµ$ (
)
µµ( )
;
µµ) *
}
¶¶ 
if
¸¸ 
(
¸¸ 
m_InfiniteClip
¸¸ 
!=
¸¸ !
null
¸¸" &
)
¸¸& '
	animClips
¹¹ 
.
¹¹ 
Add
¹¹ 
(
¹¹ 
m_InfiniteClip
¹¹ ,
)
¹¹, -
;
¹¹- .
foreach
»» 
(
»» 
var
»» 

childTrack
»» #
in
»»$ &
GetChildTracks
»»' 5
(
»»5 6
)
»»6 7
)
»»7 8
{
¼¼ 
var
½½ 
animChildTrack
½½ "
=
½½# $

childTrack
½½% /
as
½½0 2
AnimationTrack
½½3 A
;
½½A B
if
¾¾ 
(
¾¾ 
animChildTrack
¾¾ "
!=
¾¾# %
null
¾¾& *
)
¾¾* +
animChildTrack
¿¿ "
.
¿¿" #
GetAnimationClips
¿¿# 4
(
¿¿4 5
	animClips
¿¿5 >
)
¿¿> ?
;
¿¿? @
}
ÀÀ 
}
ÁÁ 	
AppliedOffsetMode
ÄÄ 
GetOffsetMode
ÄÄ '
(
ÄÄ' (

GameObject
ÄÄ( 2
go
ÄÄ3 5
,
ÄÄ5 6
bool
ÄÄ7 ;#
animatesRootTransform
ÄÄ< Q
)
ÄÄQ R
{
ÅÅ 	
if
ÆÆ 
(
ÆÆ 
!
ÆÆ #
animatesRootTransform
ÆÆ &
)
ÆÆ& '
return
ÇÇ 
AppliedOffsetMode
ÇÇ (
.
ÇÇ( )
NoRootTransform
ÇÇ) 8
;
ÇÇ8 9
if
ÉÉ 
(
ÉÉ 
m_TrackOffset
ÉÉ 
==
ÉÉ  
TrackOffset
ÉÉ! ,
.
ÉÉ, -#
ApplyTransformOffsets
ÉÉ- B
)
ÉÉB C
return
ÊÊ 
AppliedOffsetMode
ÊÊ (
.
ÊÊ( )
TransformOffset
ÊÊ) 8
;
ÊÊ8 9
if
ÌÌ 
(
ÌÌ 
m_TrackOffset
ÌÌ 
==
ÌÌ  
TrackOffset
ÌÌ! ,
.
ÌÌ, -
ApplySceneOffsets
ÌÌ- >
)
ÌÌ> ?
return
ÍÍ 
(
ÍÍ 
Application
ÍÍ #
.
ÍÍ# $
	isPlaying
ÍÍ$ -
)
ÍÍ- .
?
ÍÍ/ 0
AppliedOffsetMode
ÍÍ1 B
.
ÍÍB C
SceneOffset
ÍÍC N
:
ÍÍO P
AppliedOffsetMode
ÍÍQ b
.
ÍÍb c
SceneOffsetEditor
ÍÍc t
;
ÍÍt u
if
ÏÏ 
(
ÏÏ 
HasController
ÏÏ 
(
ÏÏ 
go
ÏÏ  
)
ÏÏ  !
)
ÏÏ! "
{
ĞĞ 
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
Application
ÑÑ  
.
ÑÑ  !
	isPlaying
ÑÑ! *
)
ÑÑ* +
return
ÒÒ 
AppliedOffsetMode
ÒÒ ,
.
ÒÒ, -%
SceneOffsetLegacyEditor
ÒÒ- D
;
ÒÒD E
return
ÓÓ 
AppliedOffsetMode
ÓÓ (
.
ÓÓ( )
SceneOffsetLegacy
ÓÓ) :
;
ÓÓ: ;
}
ÔÔ 
return
ÖÖ 
AppliedOffsetMode
ÖÖ $
.
ÖÖ$ %#
TransformOffsetLegacy
ÖÖ% :
;
ÖÖ: ;
}
×× 	
private
ÙÙ 
bool
ÙÙ +
IsRootTransformDisabledByMask
ÙÙ 2
(
ÙÙ2 3

GameObject
ÙÙ3 =

gameObject
ÙÙ> H
,
ÙÙH I
	Transform
ÙÙJ S
genericRootNode
ÙÙT c
)
ÙÙc d
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 

avatarMask
ÛÛ 
==
ÛÛ 
null
ÛÛ "
||
ÛÛ# %
!
ÛÛ& '
applyAvatarMask
ÛÛ' 6
)
ÛÛ6 7
return
ÜÜ 
false
ÜÜ 
;
ÜÜ 
var
ŞŞ 
animator
ŞŞ 
=
ŞŞ 

GetBinding
ŞŞ %
(
ŞŞ% &

gameObject
ŞŞ& 0
!=
ŞŞ1 3
null
ŞŞ4 8
?
ŞŞ9 :

gameObject
ŞŞ; E
.
ŞŞE F
GetComponent
ŞŞF R
<
ŞŞR S
PlayableDirector
ŞŞS c
>
ŞŞc d
(
ŞŞd e
)
ŞŞe f
:
ŞŞg h
null
ŞŞi m
)
ŞŞm n
;
ŞŞn o
if
ßß 
(
ßß 
animator
ßß 
==
ßß 
null
ßß  
)
ßß  !
return
àà 
false
àà 
;
àà 
if
ââ 
(
ââ 
animator
ââ 
.
ââ 
isHuman
ââ  
)
ââ  !
return
ãã 
!
ãã 

avatarMask
ãã "
.
ãã" #'
GetHumanoidBodyPartActive
ãã# <
(
ãã< = 
AvatarMaskBodyPart
ãã= O
.
ããO P
Root
ããP T
)
ããT U
;
ããU V
if
åå 
(
åå 

avatarMask
åå 
.
åå 
transformCount
åå )
==
åå* ,
$num
åå- .
)
åå. /
return
ææ 
false
ææ 
;
ææ 
if
éé 
(
éé 
genericRootNode
éé 
==
éé  "
null
éé# '
)
éé' (
return
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê +
(
êê+ ,

avatarMask
êê, 6
.
êê6 7
GetTransformPath
êê7 G
(
êêG H
$num
êêH I
)
êêI J
)
êêJ K
&&
êêL N
!
êêO P

avatarMask
êêP Z
.
êêZ [ 
GetTransformActive
êê[ m
(
êêm n
$num
êên o
)
êêo p
;
êêp q
for
íí 
(
íí 
int
íí 
i
íí 
=
íí 
$num
íí 
;
íí 
i
íí 
<
íí 

avatarMask
íí  *
.
íí* +
transformCount
íí+ 9
;
íí9 :
i
íí; <
++
íí< >
)
íí> ?
{
îî 
if
ïï 
(
ïï 
genericRootNode
ïï #
==
ïï$ &
animator
ïï' /
.
ïï/ 0
	transform
ïï0 9
.
ïï9 :
Find
ïï: >
(
ïï> ?

avatarMask
ïï? I
.
ïïI J
GetTransformPath
ïïJ Z
(
ïïZ [
i
ïï[ \
)
ïï\ ]
)
ïï] ^
)
ïï^ _
return
ğğ 
!
ğğ 

avatarMask
ğğ &
.
ğğ& ' 
GetTransformActive
ğğ' 9
(
ğğ9 :
i
ğğ: ;
)
ğğ; <
;
ğğ< =
}
ññ 
return
óó 
false
óó 
;
óó 
}
ôô 	
private
÷÷ 
	Transform
÷÷  
GetGenericRootNode
÷÷ ,
(
÷÷, -

GameObject
÷÷- 7

gameObject
÷÷8 B
)
÷÷B C
{
øø 	
var
ùù 
animator
ùù 
=
ùù 

GetBinding
ùù %
(
ùù% &

gameObject
ùù& 0
!=
ùù1 3
null
ùù4 8
?
ùù9 :

gameObject
ùù; E
.
ùùE F
GetComponent
ùùF R
<
ùùR S
PlayableDirector
ùùS c
>
ùùc d
(
ùùd e
)
ùùe f
:
ùùg h
null
ùùi m
)
ùùm n
;
ùùn o
if
úú 
(
úú 
animator
úú 
==
úú 
null
úú  
)
úú  !
return
ûû 
null
ûû 
;
ûû 
if
ıı 
(
ıı 
animator
ıı 
.
ıı 
isHuman
ıı  
)
ıı  !
return
şş 
null
şş 
;
şş 
if
€€ 
(
€€ 
animator
€€ 
.
€€ 
avatar
€€ 
==
€€  "
null
€€# '
)
€€' (
return
 
null
 
;
 
var
„„ 
rootName
„„ 
=
„„ 
animator
„„ #
.
„„# $
avatar
„„$ *
.
„„* +
humanDescription
„„+ ;
.
„„; <"
m_RootMotionBoneName
„„< P
;
„„P Q
if
…… 
(
…… 
rootName
…… 
==
…… 
animator
…… $
.
……$ %
name
……% )
||
……* ,
string
……- 3
.
……3 4
IsNullOrEmpty
……4 A
(
……A B
rootName
……B J
)
……J K
)
……K L
return
†† 
null
†† 
;
†† 
return
‰‰ )
FindInHierarchyBreadthFirst
‰‰ .
(
‰‰. /
animator
‰‰/ 7
.
‰‰7 8
	transform
‰‰8 A
,
‰‰A B
rootName
‰‰C K
)
‰‰K L
;
‰‰L M
}
ŠŠ 	
internal
ŒŒ 
bool
ŒŒ #
AnimatesRootTransform
ŒŒ +
(
ŒŒ+ ,
)
ŒŒ, -
{
 	
if
 
(
 $
AnimationPlayableAsset
 &
.
& '
HasRootTransforms
' 8
(
8 9
m_InfiniteClip
9 G
)
G H
)
H I
return
 
true
 
;
 
foreach
““ 
(
““ 
var
““ 
c
““ 
in
““ 
GetClips
““ &
(
““& '
)
““' (
)
““( )
{
”” 
var
•• 
apa
•• 
=
•• 
c
•• 
.
•• 
asset
•• !
as
••" $$
AnimationPlayableAsset
••% ;
;
••; <
if
–– 
(
–– 
apa
–– 
!=
–– 
null
–– 
&&
––  "
apa
––# &
.
––& '
hasRootTransforms
––' 8
)
––8 9
return
—— 
true
—— 
;
——  
}
˜˜ 
return
šš 
false
šš 
;
šš 
}
›› 	
private
 
static
 
readonly
 
Queue
  %
<
% &
	Transform
& /
>
/ 0
s_CachedQueue
1 >
=
? @
new
A D
Queue
E J
<
J K
	Transform
K T
>
T U
(
U V
$num
V Y
)
Y Z
;
Z [
private
 
static
 
	Transform
  )
FindInHierarchyBreadthFirst
! <
(
< =
	Transform
= F
t
G H
,
H I
string
J P
name
Q U
)
U V
{
ŸŸ 	
s_CachedQueue
   
.
   
Clear
   
(
    
)
    !
;
  ! "
s_CachedQueue
¡¡ 
.
¡¡ 
Enqueue
¡¡ !
(
¡¡! "
t
¡¡" #
)
¡¡# $
;
¡¡$ %
while
¢¢ 
(
¢¢ 
s_CachedQueue
¢¢  
.
¢¢  !
Count
¢¢! &
>
¢¢' (
$num
¢¢) *
)
¢¢* +
{
££ 
var
¤¤ 
r
¤¤ 
=
¤¤ 
s_CachedQueue
¤¤ %
.
¤¤% &
Dequeue
¤¤& -
(
¤¤- .
)
¤¤. /
;
¤¤/ 0
if
¥¥ 
(
¥¥ 
r
¥¥ 
.
¥¥ 
name
¥¥ 
==
¥¥ 
name
¥¥ "
)
¥¥" #
return
¦¦ 
r
¦¦ 
;
¦¦ 
for
§§ 
(
§§ 
int
§§ 
i
§§ 
=
§§ 
$num
§§ 
;
§§ 
i
§§  !
<
§§" #
r
§§$ %
.
§§% &

childCount
§§& 0
;
§§0 1
i
§§2 3
++
§§3 5
)
§§5 6
s_CachedQueue
¨¨ !
.
¨¨! "
Enqueue
¨¨" )
(
¨¨) *
r
¨¨* +
.
¨¨+ ,
GetChild
¨¨, 4
(
¨¨4 5
i
¨¨5 6
)
¨¨6 7
)
¨¨7 8
;
¨¨8 9
}
©© 
return
«« 
null
«« 
;
«« 
}
¬¬ 	
}
­­ 
}®® û!
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Extensions\TrackExtensions.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

static 
class  
TrackAssetExtensions ,
{ 
public 
static 

GroupTrack  
GetGroup! )
() *
this* .

TrackAsset/ 9
asset: ?
)? @
{ 	
if 
( 
asset 
== 
null 
) 
return 
null 
; 
return 
asset 
. 
parent 
as  "

GroupTrack# -
;- .
} 	
public"" 
static"" 
void"" 
SetGroup"" #
(""# $
this""$ (

TrackAsset"") 3
asset""4 9
,""9 :

GroupTrack""; E
group""F K
)""K L
{## 	
const$$ 
string$$ 

undoString$$ #
=$$$ %
$str$$& 0
;$$0 1
if&& 
(&& 
asset&& 
==&& 
null&& 
||&&  
asset&&! &
==&&' )
group&&* /
||&&0 2
asset&&3 8
.&&8 9
parent&&9 ?
==&&@ B
group&&C H
)&&H I
return'' 
;'' 
if)) 
()) 
group)) 
!=)) 
null)) 
&&))  
asset))! &
.))& '
timelineAsset))' 4
!=))5 7
group))8 =
.))= >
timelineAsset))> K
)))K L
throw** 
new** %
InvalidOperationException** 3
(**3 4
$str**4 f
)**f g
;**g h
TimelineUndo-- 
.-- 
PushUndo-- !
(--! "
asset--" '
,--' (

undoString--) 3
)--3 4
;--4 5
var// 
timeline// 
=// 
asset//  
.//  !
timelineAsset//! .
;//. /
var00 
parentTrack00 
=00 
asset00 #
.00# $
parent00$ *
as00+ -

TrackAsset00. 8
;008 9
var11 
parentTimeline11 
=11  
asset11! &
.11& '
parent11' -
as11. 0
TimelineAsset111 >
;11> ?
if22 
(22 
parentTrack22 
!=22 
null22 #
||22$ &
parentTimeline22' 5
!=226 8
null229 =
)22= >
{33 
TimelineUndo44 
.44 
PushUndo44 %
(44% &
asset44& +
.44+ ,
parent44, 2
,442 3

undoString444 >
)44> ?
;44? @
if55 
(55 
parentTimeline55 "
!=55# %
null55& *
)55* +
{66 
parentTimeline77 "
.77" #
RemoveTrack77# .
(77. /
asset77/ 4
)774 5
;775 6
}88 
else99 
{:: 
parentTrack;; 
.;;  
RemoveSubTrack;;  .
(;;. /
asset;;/ 4
);;4 5
;;;5 6
}<< 
}== 
if?? 
(?? 
group?? 
==?? 
null?? 
)?? 
{@@ 
TimelineUndoAA 
.AA 
PushUndoAA %
(AA% &
timelineAA& .
,AA. /

undoStringAA0 :
)AA: ;
;AA; <
assetBB 
.BB 
parentBB 
=BB 
assetBB $
.BB$ %
timelineAssetBB% 2
;BB2 3
timelineCC 
.CC 
AddTrackInternalCC )
(CC) *
assetCC* /
)CC/ 0
;CC0 1
}DD 
elseEE 
{FF 
TimelineUndoGG 
.GG 
PushUndoGG %
(GG% &
groupGG& +
,GG+ ,

undoStringGG- 7
)GG7 8
;GG8 9
groupHH 
.HH 
AddChildHH 
(HH 
assetHH $
)HH$ %
;HH% &
}II 
}JJ 	
}KK 
}LL …#
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
Serializable		 
]		 
[

 
TrackClipType

 
(

 
typeof

 
(

 #
ActivationPlayableAsset

 1
)

1 2
)

2 3
]

3 4
[ 
TrackBindingType 
( 
typeof 
( 

GameObject '
)' (
)( )
]) *
[ 
ExcludeFromPreset 
] 
public 

class 
ActivationTrack  
:! "

TrackAsset# -
{ 
[ 	
SerializeField	 
] 
PostPlaybackState 
m_PostPlaybackState -
=. /
PostPlaybackState0 A
.A B
	LeaveAsIsB K
;K L#
ActivationMixerPlayable 
m_ActivationMixer  1
;1 2
public 
enum 
PostPlaybackState %
{ 	
Active 
, 
Inactive   
,   
Revert%% 
,%% 
	LeaveAsIs** 
}++ 	
internal-- 
override-- 
bool-- 
CanCompileClips-- .
(--. /
)--/ 0
{.. 	
return// 
!// 
hasClips// 
||// 
base//  $
.//$ %
CanCompileClips//% 4
(//4 5
)//5 6
;//6 7
}00 	
public55 
PostPlaybackState55  
postPlaybackState55! 2
{66 	
get77 
{77 
return77 
m_PostPlaybackState77 ,
;77, -
}77. /
set88 
{88 
m_PostPlaybackState88 %
=88& '
value88( -
;88- .
UpdateTrackMode88/ >
(88> ?
)88? @
;88@ A
}88B C
}99 	
public<< 
override<< 
Playable<<  
CreateTrackMixer<<! 1
(<<1 2
PlayableGraph<<2 ?
graph<<@ E
,<<E F

GameObject<<G Q
go<<R T
,<<T U
int<<V Y

inputCount<<Z d
)<<d e
{== 	
var>> 
mixer>> 
=>> #
ActivationMixerPlayable>> /
.>>/ 0
Create>>0 6
(>>6 7
graph>>7 <
,>>< =

inputCount>>> H
)>>H I
;>>I J
m_ActivationMixer?? 
=?? 
mixer??  %
.??% &
GetBehaviour??& 2
(??2 3
)??3 4
;??4 5
UpdateTrackModeAA 
(AA 
)AA 
;AA 
returnCC 
mixerCC 
;CC 
}DD 	
internalFF 
voidFF 
UpdateTrackModeFF %
(FF% &
)FF& '
{GG 	
ifHH 
(HH 
m_ActivationMixerHH !
!=HH" $
nullHH% )
)HH) *
m_ActivationMixerII !
.II! "
postPlaybackStateII" 3
=II4 5
m_PostPlaybackStateII6 I
;III J
}JJ 	
publicMM 
overrideMM 
voidMM 
GatherPropertiesMM -
(MM- .
PlayableDirectorMM. >
directorMM? G
,MMG H
IPropertyCollectorMMI [
driverMM\ b
)MMb c
{NN 	
varOO 

gameObjectOO 
=OO  
GetGameObjectBindingOO 1
(OO1 2
directorOO2 :
)OO: ;
;OO; <
ifPP 
(PP 

gameObjectPP 
!=PP 
nullPP "
)PP" #
{QQ 
driverRR 
.RR 
AddFromNameRR "
(RR" #

gameObjectRR# -
,RR- .
$strRR/ ;
)RR; <
;RR< =
}SS 
}TT 	
	protectedWW 
overrideWW 
voidWW 
OnCreateClipWW  ,
(WW, -
TimelineClipWW- 9
clipWW: >
)WW> ?
{XX 	
clipYY 
.YY 
displayNameYY 
=YY 
$strYY '
;YY' (
baseZZ 
.ZZ 
OnCreateClipZZ 
(ZZ 
clipZZ "
)ZZ" #
;ZZ# $
}[[ 	
}\\ 
}]] ä(
œD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationMixerPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class 	#
ActivationMixerPlayable
 !
:" #
PlayableBehaviour$ 5
{ 
ActivationTrack 
. 
PostPlaybackState )
m_PostPlaybackState* =
;= >
bool 1
%m_BoundGameObjectInitialStateIsActive 2
;2 3
private

 

GameObject

 
m_BoundGameObject

 ,
;

, -
public 
static 
ScriptPlayable $
<$ %#
ActivationMixerPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
intZ ]

inputCount^ h
)h i
{ 	
return 
ScriptPlayable !
<! "#
ActivationMixerPlayable" 9
>9 :
.: ;
Create; A
(A B
graphB G
,G H

inputCountI S
)S T
;T U
} 	
public 
ActivationTrack 
. 
PostPlaybackState 0
postPlaybackState1 B
{ 	
get 
{ 
return 
m_PostPlaybackState ,
;, -
}. /
set 
{ 
m_PostPlaybackState %
=& '
value( -
;- .
}/ 0
} 	
public 
override 
void 
OnPlayableDestroy .
(. /
Playable/ 7
playable8 @
)@ A
{ 	
if 
( 
m_BoundGameObject !
==" $
null% )
)) *
return 
; 
switch 
( 
m_PostPlaybackState '
)' (
{ 
case 
ActivationTrack $
.$ %
PostPlaybackState% 6
.6 7
Active7 =
:= >
m_BoundGameObject   %
.  % &
	SetActive  & /
(  / 0
true  0 4
)  4 5
;  5 6
break!! 
;!! 
case"" 
ActivationTrack"" $
.""$ %
PostPlaybackState""% 6
.""6 7
Inactive""7 ?
:""? @
m_BoundGameObject## %
.##% &
	SetActive##& /
(##/ 0
false##0 5
)##5 6
;##6 7
break$$ 
;$$ 
case%% 
ActivationTrack%% $
.%%$ %
PostPlaybackState%%% 6
.%%6 7
Revert%%7 =
:%%= >
m_BoundGameObject&& %
.&&% &
	SetActive&&& /
(&&/ 01
%m_BoundGameObjectInitialStateIsActive&&0 U
)&&U V
;&&V W
break'' 
;'' 
case(( 
ActivationTrack(( $
.(($ %
PostPlaybackState((% 6
.((6 7
	LeaveAsIs((7 @
:((@ A
default)) 
:)) 
break** 
;** 
}++ 
},, 	
public.. 
override.. 
void.. 
ProcessFrame.. )
(..) *
Playable..* 2
playable..3 ;
,..; <
	FrameData..= F
info..G K
,..K L
object..M S

playerData..T ^
)..^ _
{// 	
if00 
(00 
m_BoundGameObject00 !
==00" $
null00% )
)00) *
{11 
m_BoundGameObject22 !
=22" #

playerData22$ .
as22/ 1

GameObject222 <
;22< =1
%m_BoundGameObjectInitialStateIsActive33 5
=336 7
m_BoundGameObject338 I
!=33J L
null33M Q
&&33R T
m_BoundGameObject33U f
.33f g

activeSelf33g q
;33q r
}44 
if66 
(66 
m_BoundGameObject66 !
==66" $
null66% )
)66) *
return77 
;77 
int99 

inputCount99 
=99 
playable99 %
.99% &
GetInputCount99& 3
(993 4
)994 5
;995 6
bool:: 
hasInput:: 
=:: 
false:: !
;::! "
for;; 
(;; 
int;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 

inputCount;;  *
;;;* +
i;;, -
++;;- /
);;/ 0
{<< 
if== 
(== 
playable== 
.== 
GetInputWeight== +
(==+ ,
i==, -
)==- .
>==/ 0
$num==1 2
)==2 3
{>> 
hasInput?? 
=?? 
true?? #
;??# $
break@@ 
;@@ 
}AA 
}BB 
m_BoundGameObjectDD 
.DD 
	SetActiveDD '
(DD' (
hasInputDD( 0
)DD0 1
;DD1 2
}EE 	
}FF 
}GG †B
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\PrefabControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public

 

class

 !
PrefabControlPlayable

 &
:

' (
PlayableBehaviour

) :
{ 

GameObject 

m_Instance 
; 
private 
bool 
m_IsActiveCached %
;% &
public 
static 
ScriptPlayable $
<$ %!
PrefabControlPlayable% :
>: ;
Create< B
(B C
PlayableGraphC P
graphQ V
,V W

GameObjectX b
prefabGameObjectc s
,s t
	Transformu ~
parentTransform	 
)
 
{ 	
if 
( 
prefabGameObject  
==! #
null$ (
)( )
return 
ScriptPlayable %
<% &!
PrefabControlPlayable& ;
>; <
.< =
Null= A
;A B
var 
handle 
= 
ScriptPlayable '
<' (!
PrefabControlPlayable( =
>= >
.> ?
Create? E
(E F
graphF K
)K L
;L M
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
prefabGameObject- =
,= >
parentTransform? N
)N O
;O P
return   
handle   
;   
}!! 	
public&& 

GameObject&& 
prefabInstance&& (
{'' 	
get(( 
{(( 
return(( 

m_Instance(( #
;((# $
}((% &
})) 	
public11 

GameObject11 

Initialize11 $
(11$ %

GameObject11% /
prefabGameObject110 @
,11@ A
	Transform11B K
parentTransform11L [
)11[ \
{22 	
if33 
(33 
prefabGameObject33  
==33! #
null33$ (
)33( )
throw44 
new44 !
ArgumentNullException44 /
(44/ 0
$str440 G
)44G H
;44H I
if66 
(66 

m_Instance66 
!=66 
null66 "
)66" #
{77 
Debug88 
.88 
LogWarningFormat88 &
(88& '
$str88' x
,88x y
prefabGameObject	88z Š
.
88Š ‹
name
88‹ 
,
88 

m_Instance
88‘ ›
.
88› œ
name
88œ  
)
88  ¡
;
88¡ ¢
}99 
else:: 
{;; 
if== 
(== 
!== 
Application==  
.==  !
	isPlaying==! *
)==* +
{>> 

m_Instance?? 
=??  
(??! "

GameObject??" ,
)??, -
UnityEditor??- 8
.??8 9
PrefabUtility??9 F
.??F G
InstantiatePrefab??G X
(??X Y
prefabGameObject??Y i
,??i j
parentTransform??k z
)??z {
;??{ |
UnityEditor@@ 
.@@  
PrefabUtility@@  -
.@@- .!
prefabInstanceUpdated@@. C
+=@@D F
OnPrefabUpdated@@G V
;@@V W
}AA 
elseBB 
{DD 

m_InstanceEE 
=EE  
ObjectEE! '
.EE' (
InstantiateEE( 3
(EE3 4
prefabGameObjectEE4 D
,EED E
parentTransformEEF U
,EEU V
falseEEW \
)EE\ ]
;EE] ^
}FF 

m_InstanceGG 
.GG 
nameGG 
=GG  !
prefabGameObjectGG" 2
.GG2 3
nameGG3 7
+GG8 9
$strGG: G
;GGG H

m_InstanceHH 
.HH 
	SetActiveHH $
(HH$ %
falseHH% *
)HH* +
;HH+ ,!
SetHideFlagsRecursiveII %
(II% &

m_InstanceII& 0
)II0 1
;II1 2
}JJ 
returnKK 

m_InstanceKK 
;KK 
}LL 	
publicRR 
overrideRR 
voidRR 
OnPlayableDestroyRR .
(RR. /
PlayableRR/ 7
playableRR8 @
)RR@ A
{SS 	
ifTT 
(TT 

m_InstanceTT 
)TT 
{UU 
ifVV 
(VV 
ApplicationVV 
.VV  
	isPlayingVV  )
)VV) *
ObjectWW 
.WW 
DestroyWW "
(WW" #

m_InstanceWW# -
)WW- .
;WW. /
elseXX 
ObjectYY 
.YY 
DestroyImmediateYY +
(YY+ ,

m_InstanceYY, 6
)YY6 7
;YY7 8
}ZZ 
UnityEditor]] 
.]] 
PrefabUtility]] %
.]]% &!
prefabInstanceUpdated]]& ;
-=]]< >
OnPrefabUpdated]]? N
;]]N O
}__ 	
publicff 
overrideff 
voidff 
OnBehaviourPlayff ,
(ff, -
Playableff- 5
playableff6 >
,ff> ?
	FrameDataff@ I
infoffJ N
)ffN O
{gg 	
ifhh 
(hh 

m_Instancehh 
==hh 
nullhh "
)hh" #
returnii 
;ii 

m_Instancekk 
.kk 
	SetActivekk  
(kk  !
truekk! %
)kk% &
;kk& '
m_IsActiveCachednn 
=nn 
truenn #
;nn# $
}pp 	
publicww 
overrideww 
voidww 
OnBehaviourPauseww -
(ww- .
Playableww. 6
playableww7 ?
,ww? @
	FrameDatawwA J
infowwK O
)wwO P
{xx 	
if{{ 
({{ 

m_Instance{{ 
!={{ 
null{{ "
&&{{# %
info{{& *
.{{* +
effectivePlayState{{+ =
=={{> @
	PlayState{{A J
.{{J K
Paused{{K Q
){{Q R
{|| 

m_Instance}} 
.}} 
	SetActive}} $
(}}$ %
false}}% *
)}}* +
;}}+ ,
m_IsActiveCached  
=! "
false# (
;( )
}
 
}
‚‚ 	
void
…… 
OnPrefabUpdated
…… 
(
…… 

GameObject
…… '
go
……( *
)
……* +
{
†† 	
if
‡‡ 
(
‡‡ 
go
‡‡ 
==
‡‡ 

m_Instance
‡‡  
)
‡‡  !
{
ˆˆ #
SetHideFlagsRecursive
‰‰ %
(
‰‰% &
go
‰‰& (
)
‰‰( )
;
‰‰) *
go
ŠŠ 
.
ŠŠ 
	SetActive
ŠŠ 
(
ŠŠ 
m_IsActiveCached
ŠŠ -
)
ŠŠ- .
;
ŠŠ. /
}
‹‹ 
}
ŒŒ 	
static
 
void
 #
SetHideFlagsRecursive
 )
(
) *

GameObject
* 4

gameObject
5 ?
)
? @
{
‘‘ 	
if
’’ 
(
’’ 

gameObject
’’ 
==
’’ 
null
’’ "
)
’’" #
return
““ 
;
““ 

gameObject
•• 
.
•• 
	hideFlags
••  
=
••! "
	HideFlags
••# ,
.
••, -
DontSaveInBuild
••- <
|
••= >
	HideFlags
••? H
.
••H I
DontSaveInEditor
••I Y
;
••Y Z
if
–– 
(
–– 
!
–– 
Application
–– 
.
–– 
	isPlaying
–– &
)
––& '

gameObject
—— 
.
—— 
	hideFlags
—— $
|=
——% '
	HideFlags
——( 1
.
——1 2
HideInHierarchy
——2 A
;
——A B
foreach
˜˜ 
(
˜˜ 
	Transform
˜˜ 
child
˜˜ $
in
˜˜% '

gameObject
˜˜( 2
.
˜˜2 3
	transform
˜˜3 <
)
˜˜< =
{
™™ #
SetHideFlagsRecursive
šš %
(
šš% &
child
šš& +
.
šš+ ,

gameObject
šš, 6
)
šš6 7
;
šš7 8
}
›› 
}
œœ 	
}
 
} q
—D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalReceiver.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class 
SignalReceiver 
:  !
MonoBehaviour" /
,/ 0!
INotificationReceiver1 F
{ 
[ 	
SerializeField	 
] 
EventKeyValue 
m_Events 
=  
new! $
EventKeyValue% 2
(2 3
)3 4
;4 5
public 
void 
OnNotify 
( 
Playable %
origin& ,
,, -
INotification. ;
notification< H
,H I
objectJ P
contextQ X
)X Y
{ 	
var 
signal 
= 
notification %
as& (
SignalEmitter) 6
;6 7
if 
( 
signal 
!= 
null 
&& !
signal" (
.( )
asset) .
!=/ 1
null2 6
)6 7
{ 

UnityEvent   
evt   
;   
if!! 
(!! 
m_Events!! 
.!! 
TryGetValue!! (
(!!( )
signal!!) /
.!!/ 0
asset!!0 5
,!!5 6
out!!7 :
evt!!; >
)!!> ?
&&!!@ B
evt!!C F
!=!!G I
null!!J N
)!!N O
{"" 
evt## 
.## 
Invoke## 
(## 
)##  
;##  !
}$$ 
}%% 
}&& 	
public// 
void// 
AddReaction// 
(//  
SignalAsset//  +
asset//, 1
,//1 2

UnityEvent//3 =
reaction//> F
)//F G
{00 	
if11 
(11 
asset11 
==11 
null11 
)11 
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
$str220 7
)227 8
;228 9
if44 
(44 
m_Events44 
.44 
signals44  
.44  !
Contains44! )
(44) *
asset44* /
)44/ 0
)440 1
throw55 
new55 
ArgumentException55 +
(55+ ,
$str55, G
)55G H
;55H I
m_Events66 
.66 
Append66 
(66 
asset66 !
,66! "
reaction66# +
)66+ ,
;66, -
}77 	
public?? 
int?? 
AddEmptyReaction?? #
(??# $

UnityEvent??$ .
reaction??/ 7
)??7 8
{@@ 	
m_EventsAA 
.AA 
AppendAA 
(AA 
nullAA  
,AA  !
reactionAA" *
)AA* +
;AA+ ,
returnBB 
m_EventsBB 
.BB 
eventsBB "
.BB" #
CountBB# (
-BB) *
$numBB+ ,
;BB, -
}CC 	
publicII 
voidII 
RemoveII 
(II 
SignalAssetII &
assetII' ,
)II, -
{JJ 	
ifKK 
(KK 
!KK 
m_EventsKK 
.KK 
signalsKK !
.KK! "
ContainsKK" *
(KK* +
assetKK+ 0
)KK0 1
)KK1 2
{LL 
throwMM 
newMM 
ArgumentExceptionMM +
(MM+ ,
$strMM, c
)MMc d
;MMd e
}NN 
m_EventsPP 
.PP 
RemovePP 
(PP 
assetPP !
)PP! "
;PP" #
}QQ 	
publicWW 
IEnumerableWW 
<WW 
SignalAssetWW &
>WW& ' 
GetRegisteredSignalsWW( <
(WW< =
)WW= >
{XX 	
returnYY 
m_EventsYY 
.YY 
signalsYY #
;YY# $
}ZZ 	
publicaa 

UnityEventaa 
GetReactionaa %
(aa% &
SignalAssetaa& 1
keyaa2 5
)aa5 6
{bb 	

UnityEventcc 
retcc 
;cc 
ifdd 
(dd 
m_Eventsdd 
.dd 
TryGetValuedd $
(dd$ %
keydd% (
,dd( )
outdd* -
retdd. 1
)dd1 2
)dd2 3
{ee 
returnff 
retff 
;ff 
}gg 
returnii 
nullii 
;ii 
}jj 	
publicpp 
intpp 
Countpp 
(pp 
)pp 
{qq 	
returnrr 
m_Eventsrr 
.rr 
signalsrr #
.rr# $
Countrr$ )
;rr) *
}ss 	
public|| 
void|| 
ChangeSignalAtIndex|| '
(||' (
int||( +
idx||, /
,||/ 0
SignalAsset||1 <
newKey||= C
)||C D
{}} 	
if~~ 
(~~ 
idx~~ 
<~~ 
$num~~ 
||~~ 
idx~~ 
>~~  
m_Events~~! )
.~~) *
signals~~* 1
.~~1 2
Count~~2 7
-~~8 9
$num~~: ;
)~~; <
throw 
new $
IndexOutOfRangeException 2
(2 3
)3 4
;4 5
if
 
(
 
m_Events
 
.
 
signals
  
[
  !
idx
! $
]
$ %
==
& (
newKey
) /
)
/ 0
return
‚‚ 
;
‚‚ 
var
ƒƒ 
alreadyUsed
ƒƒ 
=
ƒƒ 
m_Events
ƒƒ &
.
ƒƒ& '
signals
ƒƒ' .
.
ƒƒ. /
Contains
ƒƒ/ 7
(
ƒƒ7 8
newKey
ƒƒ8 >
)
ƒƒ> ?
;
ƒƒ? @
if
„„ 
(
„„ 
newKey
„„ 
==
„„ 
null
„„ 
||
„„ !
m_Events
„„" *
.
„„* +
signals
„„+ 2
[
„„2 3
idx
„„3 6
]
„„6 7
==
„„9 ;
null
„„< @
||
„„A C
!
„„D E
alreadyUsed
„„E P
)
„„P Q
m_Events
…… 
.
…… 
signals
……  
[
……  !
idx
……! $
]
……$ %
=
……& '
newKey
……( .
;
……. /
if
‡‡ 
(
‡‡ 
newKey
‡‡ 
!=
‡‡ 
null
‡‡ 
&&
‡‡ !
alreadyUsed
‡‡" -
)
‡‡- .
throw
ˆˆ 
new
ˆˆ 
ArgumentException
ˆˆ +
(
ˆˆ+ ,
$str
ˆˆ, G
)
ˆˆG H
;
ˆˆH I
}
‰‰ 	
public
 
void
 
RemoveAtIndex
 !
(
! "
int
" %
idx
& )
)
) *
{
 	
if
‘‘ 
(
‘‘ 
idx
‘‘ 
<
‘‘ 
$num
‘‘ 
||
‘‘ 
idx
‘‘ 
>
‘‘  
m_Events
‘‘! )
.
‘‘) *
signals
‘‘* 1
.
‘‘1 2
Count
‘‘2 7
-
‘‘8 9
$num
‘‘: ;
)
‘‘; <
throw
’’ 
new
’’ &
IndexOutOfRangeException
’’ 2
(
’’2 3
)
’’3 4
;
’’4 5
m_Events
““ 
.
““ 
Remove
““ 
(
““ 
idx
““ 
)
““  
;
““  !
}
”” 	
public
œœ 
void
œœ #
ChangeReactionAtIndex
œœ )
(
œœ) *
int
œœ* -
idx
œœ. 1
,
œœ1 2

UnityEvent
œœ3 =
reaction
œœ> F
)
œœF G
{
 	
if
 
(
 
idx
 
<
 
$num
 
||
 
idx
 
>
  
m_Events
! )
.
) *
events
* 0
.
0 1
Count
1 6
-
7 8
$num
9 :
)
: ;
throw
ŸŸ 
new
ŸŸ &
IndexOutOfRangeException
ŸŸ 2
(
ŸŸ2 3
)
ŸŸ3 4
;
ŸŸ4 5
m_Events
¡¡ 
.
¡¡ 
events
¡¡ 
[
¡¡ 
idx
¡¡ 
]
¡¡  
=
¡¡! "
reaction
¡¡# +
;
¡¡+ ,
}
¢¢ 	
public
©© 

UnityEvent
©©  
GetReactionAtIndex
©© ,
(
©©, -
int
©©- 0
idx
©©1 4
)
©©4 5
{
ªª 	
if
«« 
(
«« 
idx
«« 
<
«« 
$num
«« 
||
«« 
idx
«« 
>
««  
m_Events
««! )
.
««) *
events
««* 0
.
««0 1
Count
««1 6
-
««7 8
$num
««9 :
)
««: ;
throw
¬¬ 
new
¬¬ &
IndexOutOfRangeException
¬¬ 2
(
¬¬2 3
)
¬¬3 4
;
¬¬4 5
return
­­ 
m_Events
­­ 
.
­­ 
events
­­ "
[
­­" #
idx
­­# &
]
­­& '
;
­­' (
}
®® 	
public
µµ 
SignalAsset
µµ #
GetSignalAssetAtIndex
µµ 0
(
µµ0 1
int
µµ1 4
idx
µµ5 8
)
µµ8 9
{
¶¶ 	
if
·· 
(
·· 
idx
·· 
<
·· 
$num
·· 
||
·· 
idx
·· 
>
··  
m_Events
··! )
.
··) *
signals
··* 1
.
··1 2
Count
··2 7
-
··8 9
$num
··: ;
)
··; <
throw
¸¸ 
new
¸¸ &
IndexOutOfRangeException
¸¸ 2
(
¸¸2 3
)
¸¸3 4
;
¸¸4 5
return
¹¹ 
m_Events
¹¹ 
.
¹¹ 
signals
¹¹ #
[
¹¹# $
idx
¹¹$ '
]
¹¹' (
;
¹¹( )
}
ºº 	
private
½½ 
void
½½ 
OnEnable
½½ 
(
½½ 
)
½½ 
{
¾¾ 	
}
¿¿ 	
[
ÁÁ 	
Serializable
ÁÁ	 
]
ÁÁ 
class
ÂÂ 
EventKeyValue
ÂÂ 
{
ÃÃ 	
[
ÄÄ 
SerializeField
ÄÄ 
]
ÄÄ 
List
ÅÅ 
<
ÅÅ 
SignalAsset
ÅÅ 
>
ÅÅ 
	m_Signals
ÅÅ '
=
ÅÅ( )
new
ÅÅ* -
List
ÅÅ. 2
<
ÅÅ2 3
SignalAsset
ÅÅ3 >
>
ÅÅ> ?
(
ÅÅ? @
)
ÅÅ@ A
;
ÅÅA B
[
ÇÇ 
SerializeField
ÇÇ 
,
ÇÇ %
CustomSignalEventDrawer
ÇÇ 4
]
ÇÇ4 5
List
ÈÈ 
<
ÈÈ 

UnityEvent
ÈÈ 
>
ÈÈ 
m_Events
ÈÈ %
=
ÈÈ& '
new
ÈÈ( +
List
ÈÈ, 0
<
ÈÈ0 1

UnityEvent
ÈÈ1 ;
>
ÈÈ; <
(
ÈÈ< =
)
ÈÈ= >
;
ÈÈ> ?
public
ÊÊ 
bool
ÊÊ 
TryGetValue
ÊÊ #
(
ÊÊ# $
SignalAsset
ÊÊ$ /
key
ÊÊ0 3
,
ÊÊ3 4
out
ÊÊ5 8

UnityEvent
ÊÊ9 C
value
ÊÊD I
)
ÊÊI J
{
ËË 
var
ÌÌ 
index
ÌÌ 
=
ÌÌ 
	m_Signals
ÌÌ %
.
ÌÌ% &
IndexOf
ÌÌ& -
(
ÌÌ- .
key
ÌÌ. 1
)
ÌÌ1 2
;
ÌÌ2 3
if
ÍÍ 
(
ÍÍ 
index
ÍÍ 
!=
ÍÍ 
-
ÍÍ 
$num
ÍÍ 
)
ÍÍ  
{
ÎÎ 
value
ÏÏ 
=
ÏÏ 
m_Events
ÏÏ $
[
ÏÏ$ %
index
ÏÏ% *
]
ÏÏ* +
;
ÏÏ+ ,
return
ĞĞ 
true
ĞĞ 
;
ĞĞ  
}
ÑÑ 
value
ÓÓ 
=
ÓÓ 
null
ÓÓ 
;
ÓÓ 
return
ÔÔ 
false
ÔÔ 
;
ÔÔ 
}
ÕÕ 
public
×× 
void
×× 
Append
×× 
(
×× 
SignalAsset
×× *
key
××+ .
,
××. /

UnityEvent
××0 :
value
××; @
)
××@ A
{
ØØ 
	m_Signals
ÙÙ 
.
ÙÙ 
Add
ÙÙ 
(
ÙÙ 
key
ÙÙ !
)
ÙÙ! "
;
ÙÙ" #
m_Events
ÚÚ 
.
ÚÚ 
Add
ÚÚ 
(
ÚÚ 
value
ÚÚ "
)
ÚÚ" #
;
ÚÚ# $
}
ÛÛ 
public
İİ 
void
İİ 
Remove
İİ 
(
İİ 
int
İİ "
idx
İİ# &
)
İİ& '
{
ŞŞ 
if
ßß 
(
ßß 
idx
ßß 
!=
ßß 
-
ßß 
$num
ßß 
)
ßß 
{
àà 
	m_Signals
áá 
.
áá 
RemoveAt
áá &
(
áá& '
idx
áá' *
)
áá* +
;
áá+ ,
m_Events
ââ 
.
ââ 
RemoveAt
ââ %
(
ââ% &
idx
ââ& )
)
ââ) *
;
ââ* +
}
ãã 
}
ää 
public
ææ 
void
ææ 
Remove
ææ 
(
ææ 
SignalAsset
ææ *
key
ææ+ .
)
ææ. /
{
çç 
var
èè 
idx
èè 
=
èè 
	m_Signals
èè #
.
èè# $
IndexOf
èè$ +
(
èè+ ,
key
èè, /
)
èè/ 0
;
èè0 1
if
éé 
(
éé 
idx
éé 
!=
éé 
-
éé 
$num
éé 
)
éé 
{
êê 
	m_Signals
ëë 
.
ëë 
RemoveAt
ëë &
(
ëë& '
idx
ëë' *
)
ëë* +
;
ëë+ ,
m_Events
ìì 
.
ìì 
RemoveAt
ìì %
(
ìì% &
idx
ìì& )
)
ìì) *
;
ìì* +
}
íí 
}
îî 
public
ğğ 
List
ğğ 
<
ğğ 
SignalAsset
ğğ #
>
ğğ# $
signals
ğğ% ,
{
ññ 
get
òò 
{
òò 
return
òò 
	m_Signals
òò &
;
òò& '
}
òò( )
}
óó 
public
õõ 
List
õõ 
<
õõ 

UnityEvent
õõ "
>
õõ" #
events
õõ$ *
{
öö 
get
÷÷ 
{
÷÷ 
return
÷÷ 
m_Events
÷÷ %
;
÷÷% &
}
÷÷' (
}
øø 
}
ùù 	
}
úú 
}ûû ˆ—
–D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Control\ControlPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
Serializable

 
]

 
[ 

NotKeyable 
] 
public 

class  
ControlPlayableAsset %
:& '
PlayableAsset( 5
,5 6
IPropertyPreview7 G
,G H
ITimelineClipAssetI [
{ 
const 
int 
k_MaxRandInt 
=  
$num! &
;& '
static 
readonly 
List 
< 
PlayableDirector -
>- . 
k_EmptyDirectorsList/ C
=D E
newF I
ListJ N
<N O
PlayableDirectorO _
>_ `
(` a
$numa b
)b c
;c d
static 
readonly 
List 
< 
ParticleSystem +
>+ , 
k_EmptyParticlesList- A
=B C
newD G
ListH L
<L M
ParticleSystemM [
>[ \
(\ ]
$num] ^
)^ _
;_ `
[ 	
SerializeField	 
] 
public 
ExposedReference  0
<0 1

GameObject1 ;
>; <
sourceGameObject= M
;M N
[ 	
SerializeField	 
] 
public 

GameObject  *
prefabGameObject+ ;
;; <
[ 	
SerializeField	 
] 
public 
bool  $
updateParticle% 3
=4 5
true6 :
;: ;
['' 	
SerializeField''	 
]'' 
public'' 
uint''  $
particleRandomSeed''% 7
;''7 8
[,, 	
SerializeField,,	 
],, 
public,, 
bool,,  $
updateDirector,,% 3
=,,4 5
true,,6 :
;,,: ;
[11 	
SerializeField11	 
]11 
public11 
bool11  $
updateITimeControl11% 7
=118 9
true11: >
;11> ?
[66 	
SerializeField66	 
]66 
public66 
bool66  $
searchHierarchy66% 4
=665 6
false667 <
;66< =
[;; 	
SerializeField;;	 
];; 
public;; 
bool;;  $
active;;% +
=;;, -
true;;. 2
;;;2 3
[@@ 	
SerializeField@@	 
]@@ 
public@@ %
ActivationControlPlayable@@  9
.@@9 :
PostPlaybackState@@: K
postPlayback@@L X
=@@Y Z%
ActivationControlPlayable@@[ t
.@@t u
PostPlaybackState	@@u †
.
@@† ‡
Revert
@@‡ 
;
@@ 
PlayableAssetBB "
m_ControlDirectorAssetBB ,
;BB, -
doubleCC 

m_DurationCC 
=CC 
PlayableBindingCC +
.CC+ ,
DefaultDurationCC, ;
;CC; <
boolDD 
m_SupportLoopDD 
;DD 
privateFF 
staticFF 
HashSetFF 
<FF 
PlayableDirectorFF /
>FF/ 0 
s_ProcessedDirectorsFF1 E
=FFF G
newFFH K
HashSetFFL S
<FFS T
PlayableDirectorFFT d
>FFd e
(FFe f
)FFf g
;FFg h
privateGG 
staticGG 
HashSetGG 
<GG 

GameObjectGG )
>GG) *
s_CreatedPrefabsGG+ ;
=GG< =
newGG> A
HashSetGGB I
<GGI J

GameObjectGGJ T
>GGT U
(GGU V
)GGV W
;GGW X
internalJJ 
boolJJ  
controllingDirectorsJJ *
{JJ+ ,
getJJ- 0
;JJ0 1
privateJJ2 9
setJJ: =
;JJ= >
}JJ? @
internalKK 
boolKK  
controllingParticlesKK *
{KK+ ,
getKK- 0
;KK0 1
privateKK2 9
setKK: =
;KK= >
}KK? @
publicPP 
voidPP 
OnEnablePP 
(PP 
)PP 
{QQ 	
ifSS 
(SS 
particleRandomSeedSS "
==SS# %
$numSS& '
)SS' (
particleRandomSeedTT "
=TT# $
(TT% &
uintTT& *
)TT* +
RandomTT+ 1
.TT1 2
RangeTT2 7
(TT7 8
$numTT8 9
,TT9 :
k_MaxRandIntTT; G
)TTG H
;TTH I
}UU 	
publicZZ 
overrideZZ 
doubleZZ 
durationZZ '
{ZZ( )
getZZ* -
{ZZ. /
returnZZ0 6

m_DurationZZ7 A
;ZZA B
}ZZC D
}ZZE F
public__ 
ClipCaps__ 
clipCaps__  
{`` 	
getaa 
{aa 
returnaa 
ClipCapsaa !
.aa! "
ClipInaa" (
|aa) *
ClipCapsaa+ 3
.aa3 4
SpeedMultiplieraa4 C
|aaD E
(aaF G
m_SupportLoopaaG T
?aaU V
ClipCapsaaW _
.aa_ `
Loopingaa` g
:aah i
ClipCapsaaj r
.aar s
Noneaas w
)aaw x
;aax y
}aaz {
}bb 	
publicjj 
overridejj 
Playablejj  
CreatePlayablejj! /
(jj/ 0
PlayableGraphjj0 =
graphjj> C
,jjC D

GameObjectjjE O
gojjP R
)jjR S
{kk 	
ifmm 
(mm 
prefabGameObjectmm  
!=mm! #
nullmm$ (
)mm( )
{nn 
ifoo 
(oo 
s_CreatedPrefabsoo $
.oo$ %
Containsoo% -
(oo- .
prefabGameObjectoo. >
)oo> ?
)oo? @
{pp 
Debugqq 
.qq 
LogWarningFormatqq *
(qq* +
$str	qq+ ˜
,
qq˜ ™
name
qqš 
)
qq Ÿ
;
qqŸ  
returnrr 
Playablerr #
.rr# $
Createrr$ *
(rr* +
graphrr+ 0
)rr0 1
;rr1 2
}ss 
s_CreatedPrefabstt  
.tt  !
Addtt! $
(tt$ %
prefabGameObjecttt% 5
)tt5 6
;tt6 7
}uu 
Playableww 
rootww 
=ww 
Playableww $
.ww$ %
Nullww% )
;ww) *
varxx 
	playablesxx 
=xx 
newxx 
Listxx  $
<xx$ %
Playablexx% -
>xx- .
(xx. /
)xx/ 0
;xx0 1

GameObjectzz 
sourceObjectzz #
=zz$ %
sourceGameObjectzz& 6
.zz6 7
Resolvezz7 >
(zz> ?
graphzz? D
.zzD E
GetResolverzzE P
(zzP Q
)zzQ R
)zzR S
;zzS T
if{{ 
({{ 
prefabGameObject{{  
!={{! #
null{{$ (
){{( )
{|| 
	Transform}} 
parenTransform}} (
=}}) *
sourceObject}}+ 7
!=}}8 :
null}}; ?
?}}@ A
sourceObject}}B N
.}}N O
	transform}}O X
:}}Y Z
null}}[ _
;}}_ `
var~~ 
controlPlayable~~ #
=~~$ %!
PrefabControlPlayable~~& ;
.~~; <
Create~~< B
(~~B C
graph~~C H
,~~H I
prefabGameObject~~J Z
,~~Z [
parenTransform~~\ j
)~~j k
;~~k l
sourceObject
€€ 
=
€€ 
controlPlayable
€€ .
.
€€. /
GetBehaviour
€€/ ;
(
€€; <
)
€€< =
.
€€= >
prefabInstance
€€> L
;
€€L M
	playables
 
.
 
Add
 
(
 
controlPlayable
 -
)
- .
;
. /
}
‚‚ 

m_Duration
„„ 
=
„„ 
PlayableBinding
„„ (
.
„„( )
DefaultDuration
„„) 8
;
„„8 9
m_SupportLoop
…… 
=
…… 
false
…… !
;
……! ""
controllingParticles
‡‡  
=
‡‡! "
false
‡‡# (
;
‡‡( )"
controllingDirectors
ˆˆ  
=
ˆˆ! "
false
ˆˆ# (
;
ˆˆ( )
if
ŠŠ 
(
ŠŠ 
sourceObject
ŠŠ 
!=
ŠŠ 
null
ŠŠ  $
)
ŠŠ$ %
{
‹‹ 
var
ŒŒ 
	directors
ŒŒ 
=
ŒŒ 
updateDirector
ŒŒ  .
?
ŒŒ/ 0
GetComponent
ŒŒ1 =
<
ŒŒ= >
PlayableDirector
ŒŒ> N
>
ŒŒN O
(
ŒŒO P
sourceObject
ŒŒP \
)
ŒŒ\ ]
:
ŒŒ^ _"
k_EmptyDirectorsList
ŒŒ` t
;
ŒŒt u
var
 
particleSystems
 #
=
$ %
updateParticle
& 4
?
5 6$
GetParticleSystemRoots
7 M
(
M N
sourceObject
N Z
)
Z [
:
\ ]"
k_EmptyParticlesList
^ r
;
r s'
UpdateDurationAndLoopFlag
‘‘ )
(
‘‘) *
	directors
‘‘* 3
,
‘‘3 4
particleSystems
‘‘5 D
)
‘‘D E
;
‘‘E F
var
““ 
director
““ 
=
““ 
go
““ !
.
““! "
GetComponent
““" .
<
““. /
PlayableDirector
““/ ?
>
““? @
(
““@ A
)
““A B
;
““B C
if
”” 
(
”” 
director
”” 
!=
”” 
null
””  $
)
””$ %$
m_ControlDirectorAsset
•• *
=
••+ ,
director
••- 5
.
••5 6
playableAsset
••6 C
;
••C D
if
—— 
(
—— 
go
—— 
==
—— 
sourceObject
—— &
&&
——' )
prefabGameObject
——* :
==
——; =
null
——> B
)
——B C
{
˜˜ 
Debug
™™ 
.
™™ 
LogWarningFormat
™™ *
(
™™* +
$str™™+ ›
,™™› œ
name™™ ¡
)™™¡ ¢
;™™¢ £
active
šš 
=
šš 
false
šš "
;
šš" #
if
›› 
(
›› 
!
›› 
searchHierarchy
›› (
)
››( )
updateDirector
œœ &
=
œœ' (
false
œœ) .
;
œœ. /
}
 
if
ŸŸ 
(
ŸŸ 
active
ŸŸ 
)
ŸŸ &
CreateActivationPlayable
   ,
(
  , -
sourceObject
  - 9
,
  9 :
graph
  ; @
,
  @ A
	playables
  B K
)
  K L
;
  L M
if
¢¢ 
(
¢¢ 
updateDirector
¢¢ "
)
¢¢" #/
!SearchHierarchyAndConnectDirector
££ 5
(
££5 6
	directors
££6 ?
,
££? @
graph
££A F
,
££F G
	playables
££H Q
,
££Q R
prefabGameObject
££S c
!=
££d f
null
££g k
)
££k l
;
££l m
if
¥¥ 
(
¥¥ 
updateParticle
¥¥ "
)
¥¥" #4
&SearchHiearchyAndConnectParticleSystem
¦¦ :
(
¦¦: ;
particleSystems
¦¦; J
,
¦¦J K
graph
¦¦L Q
,
¦¦Q R
	playables
¦¦S \
)
¦¦\ ]
;
¦¦] ^
if
¨¨ 
(
¨¨  
updateITimeControl
¨¨ &
)
¨¨& '9
+SearchHierarchyAndConnectControlableScripts
©© ?
(
©©? @#
GetControlableScripts
©©@ U
(
©©U V
sourceObject
©©V b
)
©©b c
,
©©c d
graph
©©e j
,
©©j k
	playables
©©l u
)
©©u v
;
©©v w
root
¬¬ 
=
¬¬ %
ConnectPlayablesToMixer
¬¬ .
(
¬¬. /
graph
¬¬/ 4
,
¬¬4 5
	playables
¬¬6 ?
)
¬¬? @
;
¬¬@ A
}
­­ 
if
¯¯ 
(
¯¯ 
prefabGameObject
¯¯  
!=
¯¯! #
null
¯¯$ (
)
¯¯( )
s_CreatedPrefabs
°°  
.
°°  !
Remove
°°! '
(
°°' (
prefabGameObject
°°( 8
)
°°8 9
;
°°9 :
if
²² 
(
²² 
!
²² 
root
²² 
.
²² 
IsValid
²² 
(
²² 
)
²² 
)
²²  
root
³³ 
=
³³ 
Playable
³³ 
.
³³  
Create
³³  &
(
³³& '
graph
³³' ,
)
³³, -
;
³³- .
return
µµ 
root
µµ 
;
µµ 
}
¶¶ 	
static
¸¸ 
Playable
¸¸ %
ConnectPlayablesToMixer
¸¸ /
(
¸¸/ 0
PlayableGraph
¸¸0 =
graph
¸¸> C
,
¸¸C D
List
¸¸E I
<
¸¸I J
Playable
¸¸J R
>
¸¸R S
	playables
¸¸T ]
)
¸¸] ^
{
¹¹ 	
var
ºº 
mixer
ºº 
=
ºº 
Playable
ºº  
.
ºº  !
Create
ºº! '
(
ºº' (
graph
ºº( -
,
ºº- .
	playables
ºº/ 8
.
ºº8 9
Count
ºº9 >
)
ºº> ?
;
ºº? @
for
¼¼ 
(
¼¼ 
int
¼¼ 
i
¼¼ 
=
¼¼ 
$num
¼¼ 
;
¼¼ 
i
¼¼ 
!=
¼¼  
	playables
¼¼! *
.
¼¼* +
Count
¼¼+ 0
;
¼¼0 1
++
¼¼2 4
i
¼¼4 5
)
¼¼5 6
{
½½ %
ConnectMixerAndPlayable
¾¾ '
(
¾¾' (
graph
¾¾( -
,
¾¾- .
mixer
¾¾/ 4
,
¾¾4 5
	playables
¾¾6 ?
[
¾¾? @
i
¾¾@ A
]
¾¾A B
,
¾¾B C
i
¾¾D E
)
¾¾E F
;
¾¾F G
}
¿¿ 
mixer
ÁÁ 
.
ÁÁ !
SetPropagateSetTime
ÁÁ %
(
ÁÁ% &
true
ÁÁ& *
)
ÁÁ* +
;
ÁÁ+ ,
return
ÃÃ 
mixer
ÃÃ 
;
ÃÃ 
}
ÄÄ 	
void
ÆÆ &
CreateActivationPlayable
ÆÆ %
(
ÆÆ% &

GameObject
ÆÆ& 0
root
ÆÆ1 5
,
ÆÆ5 6
PlayableGraph
ÆÆ7 D
graph
ÆÆE J
,
ÆÆJ K
List
ÇÇ 
<
ÇÇ 
Playable
ÇÇ 
>
ÇÇ 
outplayables
ÇÇ '
)
ÇÇ' (
{
ÈÈ 	
var
ÉÉ 

activation
ÉÉ 
=
ÉÉ '
ActivationControlPlayable
ÉÉ 6
.
ÉÉ6 7
Create
ÉÉ7 =
(
ÉÉ= >
graph
ÉÉ> C
,
ÉÉC D
root
ÉÉE I
,
ÉÉI J
postPlayback
ÉÉK W
)
ÉÉW X
;
ÉÉX Y
if
ÊÊ 
(
ÊÊ 

activation
ÊÊ 
.
ÊÊ 
IsValid
ÊÊ "
(
ÊÊ" #
)
ÊÊ# $
)
ÊÊ$ %
outplayables
ËË 
.
ËË 
Add
ËË  
(
ËË  !

activation
ËË! +
)
ËË+ ,
;
ËË, -
}
ÌÌ 	
void
ÎÎ 4
&SearchHiearchyAndConnectParticleSystem
ÎÎ 3
(
ÎÎ3 4
IEnumerable
ÎÎ4 ?
<
ÎÎ? @
ParticleSystem
ÎÎ@ N
>
ÎÎN O
particleSystems
ÎÎP _
,
ÎÎ_ `
PlayableGraph
ÎÎa n
graph
ÎÎo t
,
ÎÎt u
List
ÏÏ 
<
ÏÏ 
Playable
ÏÏ 
>
ÏÏ 
outplayables
ÏÏ '
)
ÏÏ' (
{
ĞĞ 	
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
particleSystem
ÑÑ '
in
ÑÑ( *
particleSystems
ÑÑ+ :
)
ÑÑ: ;
{
ÒÒ 
if
ÓÓ 
(
ÓÓ 
particleSystem
ÓÓ "
!=
ÓÓ# %
null
ÓÓ& *
)
ÓÓ* +
{
ÔÔ "
controllingParticles
ÕÕ (
=
ÕÕ) *
true
ÕÕ+ /
;
ÕÕ/ 0
outplayables
ÖÖ  
.
ÖÖ  !
Add
ÖÖ! $
(
ÖÖ$ %%
ParticleControlPlayable
ÖÖ% <
.
ÖÖ< =
Create
ÖÖ= C
(
ÖÖC D
graph
ÖÖD I
,
ÖÖI J
particleSystem
ÖÖK Y
,
ÖÖY Z 
particleRandomSeed
ÖÖ[ m
)
ÖÖm n
)
ÖÖn o
;
ÖÖo p
}
×× 
}
ØØ 
}
ÙÙ 	
void
ÛÛ /
!SearchHierarchyAndConnectDirector
ÛÛ .
(
ÛÛ. /
IEnumerable
ÛÛ/ :
<
ÛÛ: ;
PlayableDirector
ÛÛ; K
>
ÛÛK L
	directors
ÛÛM V
,
ÛÛV W
PlayableGraph
ÛÛX e
graph
ÛÛf k
,
ÛÛk l
List
ÜÜ 
<
ÜÜ 
Playable
ÜÜ 
>
ÜÜ 
outplayables
ÜÜ '
,
ÜÜ' (
bool
ÜÜ) -#
disableSelfReferences
ÜÜ. C
)
ÜÜC D
{
İİ 	
foreach
ŞŞ 
(
ŞŞ 
var
ŞŞ 
director
ŞŞ !
in
ŞŞ" $
	directors
ŞŞ% .
)
ŞŞ. /
{
ßß 
if
àà 
(
àà 
director
àà 
!=
àà 
null
àà  $
)
àà$ %
{
áá 
if
ââ 
(
ââ 
director
ââ  
.
ââ  !
playableAsset
ââ! .
!=
ââ/ 1$
m_ControlDirectorAsset
ââ2 H
)
ââH I
{
ãã 
outplayables
ää $
.
ää$ %
Add
ää% (
(
ää( )%
DirectorControlPlayable
ää) @
.
ää@ A
Create
ääA G
(
ääG H
graph
ääH M
,
ääM N
director
ääO W
)
ääW X
)
ääX Y
;
ääY Z"
controllingDirectors
åå ,
=
åå- .
true
åå/ 3
;
åå3 4
}
ææ 
else
èè 
if
èè 
(
èè #
disableSelfReferences
èè 2
)
èè2 3
{
éé 
director
êê  
.
êê  !
enabled
êê! (
=
êê) *
false
êê+ 0
;
êê0 1
}
ëë 
}
ìì 
}
íí 
}
îî 	
static
ğğ 
void
ğğ 9
+SearchHierarchyAndConnectControlableScripts
ğğ ?
(
ğğ? @
IEnumerable
ğğ@ K
<
ğğK L
MonoBehaviour
ğğL Y
>
ğğY Z 
controlableScripts
ğğ[ m
,
ğğm n
PlayableGraph
ğğo |
graphğğ} ‚
,ğğ‚ ƒ
Listğğ„ ˆ
<ğğˆ ‰
Playableğğ‰ ‘
>ğğ‘ ’
outplayablesğğ“ Ÿ
)ğğŸ  
{
ññ 	
foreach
òò 
(
òò 
var
òò 
script
òò 
in
òò  " 
controlableScripts
òò# 5
)
òò5 6
{
óó 
outplayables
ôô 
.
ôô 
Add
ôô  
(
ôô  !!
TimeControlPlayable
ôô! 4
.
ôô4 5
Create
ôô5 ;
(
ôô; <
graph
ôô< A
,
ôôA B
(
ôôC D
ITimeControl
ôôD P
)
ôôP Q
script
ôôQ W
)
ôôW X
)
ôôX Y
;
ôôY Z
}
õõ 
}
öö 	
static
øø 
void
øø %
ConnectMixerAndPlayable
øø +
(
øø+ ,
PlayableGraph
øø, 9
graph
øø: ?
,
øø? @
Playable
øøA I
mixer
øøJ O
,
øøO P
Playable
øøQ Y
playable
øøZ b
,
øøb c
int
ùù 
	portIndex
ùù 
)
ùù 
{
úú 	
graph
ûû 
.
ûû 
Connect
ûû 
(
ûû 
playable
ûû "
,
ûû" #
$num
ûû$ %
,
ûû% &
mixer
ûû' ,
,
ûû, -
	portIndex
ûû. 7
)
ûû7 8
;
ûû8 9
mixer
üü 
.
üü 
SetInputWeight
üü  
(
üü  !
playable
üü! )
,
üü) *
$num
üü+ /
)
üü/ 0
;
üü0 1
}
ıı 	
internal
ÿÿ 
IList
ÿÿ 
<
ÿÿ 
T
ÿÿ 
>
ÿÿ 
GetComponent
ÿÿ &
<
ÿÿ& '
T
ÿÿ' (
>
ÿÿ( )
(
ÿÿ) *

GameObject
ÿÿ* 4

gameObject
ÿÿ5 ?
)
ÿÿ? @
{
€€ 	
var
 

components
 
=
 
new
  
List
! %
<
% &
T
& '
>
' (
(
( )
)
) *
;
* +
if
‚‚ 
(
‚‚ 

gameObject
‚‚ 
!=
‚‚ 
null
‚‚ "
)
‚‚" #
{
ƒƒ 
if
„„ 
(
„„ 
searchHierarchy
„„ #
)
„„# $
{
…… 

gameObject
†† 
.
†† %
GetComponentsInChildren
†† 6
<
††6 7
T
††7 8
>
††8 9
(
††9 :
true
††: >
,
††> ?

components
††@ J
)
††J K
;
††K L
}
‡‡ 
else
ˆˆ 
{
‰‰ 

gameObject
ŠŠ 
.
ŠŠ 
GetComponents
ŠŠ ,
<
ŠŠ, -
T
ŠŠ- .
>
ŠŠ. /
(
ŠŠ/ 0

components
ŠŠ0 :
)
ŠŠ: ;
;
ŠŠ; <
}
‹‹ 
}
ŒŒ 
return
 

components
 
;
 
}
 	
internal
 
static
 
IEnumerable
 #
<
# $
MonoBehaviour
$ 1
>
1 2#
GetControlableScripts
3 H
(
H I

GameObject
I S
root
T X
)
X Y
{
‘‘ 	
if
’’ 
(
’’ 
root
’’ 
==
’’ 
null
’’ 
)
’’ 
yield
““ 
break
““ 
;
““ 
foreach
•• 
(
•• 
var
•• 
script
•• 
in
••  "
root
••# '
.
••' (%
GetComponentsInChildren
••( ?
<
••? @
MonoBehaviour
••@ M
>
••M N
(
••N O
)
••O P
)
••P Q
{
–– 
if
—— 
(
—— 
script
—— 
is
—— 
ITimeControl
—— *
)
——* +
yield
˜˜ 
return
˜˜  
script
˜˜! '
;
˜˜' (
}
™™ 
}
šš 	
internal
œœ 
void
œœ '
UpdateDurationAndLoopFlag
œœ /
(
œœ/ 0
IList
œœ0 5
<
œœ5 6
PlayableDirector
œœ6 F
>
œœF G
	directors
œœH Q
,
œœQ R
IList
œœS X
<
œœX Y
ParticleSystem
œœY g
>
œœg h
particleSystems
œœi x
)
œœx y
{
 	
if
 
(
 
	directors
 
.
 
Count
 
==
  "
$num
# $
&&
% '
particleSystems
( 7
.
7 8
Count
8 =
==
> @
$num
A B
)
B C
return
ŸŸ 
;
ŸŸ 
const
¡¡ 
double
¡¡ 
invalidDuration
¡¡ (
=
¡¡) *
double
¡¡+ 1
.
¡¡1 2
NegativeInfinity
¡¡2 B
;
¡¡B C
var
££ 
maxDuration
££ 
=
££ 
invalidDuration
££ -
;
££- .
var
¤¤ 
supportsLoop
¤¤ 
=
¤¤ 
false
¤¤ $
;
¤¤$ %
foreach
¦¦ 
(
¦¦ 
var
¦¦ 
director
¦¦ !
in
¦¦" $
	directors
¦¦% .
)
¦¦. /
{
§§ 
if
¨¨ 
(
¨¨ 
director
¨¨ 
.
¨¨ 
playableAsset
¨¨ *
!=
¨¨+ -
null
¨¨. 2
)
¨¨2 3
{
©© 
var
ªª 
assetDuration
ªª %
=
ªª& '
director
ªª( 0
.
ªª0 1
playableAsset
ªª1 >
.
ªª> ?
duration
ªª? G
;
ªªG H
if
¬¬ 
(
¬¬ 
director
¬¬  
.
¬¬  !
playableAsset
¬¬! .
is
¬¬/ 1
TimelineAsset
¬¬2 ?
&&
¬¬@ B
assetDuration
¬¬C P
>
¬¬Q R
$num
¬¬S V
)
¬¬V W
assetDuration
®® %
=
®®& '
(
®®( )
double
®®) /
)
®®/ 0
(
®®0 1
(
®®1 2
DiscreteTime
®®2 >
)
®®> ?
assetDuration
®®? L
)
®®L M
.
®®M N
OneTickAfter
®®N Z
(
®®Z [
)
®®[ \
;
®®\ ]
maxDuration
°° 
=
°°  !
Math
°°" &
.
°°& '
Max
°°' *
(
°°* +
maxDuration
°°+ 6
,
°°6 7
assetDuration
°°8 E
)
°°E F
;
°°F G
supportsLoop
±±  
=
±±! "
supportsLoop
±±# /
||
±±0 2
director
±±3 ;
.
±±; <
extrapolationMode
±±< M
==
±±N P
DirectorWrapMode
±±Q a
.
±±a b
Loop
±±b f
;
±±f g
}
²² 
}
³³ 
foreach
µµ 
(
µµ 
var
µµ 
particleSystem
µµ '
in
µµ( *
particleSystems
µµ+ :
)
µµ: ;
{
¶¶ 
maxDuration
·· 
=
·· 
Math
·· "
.
··" #
Max
··# &
(
··& '
maxDuration
··' 2
,
··2 3
particleSystem
··4 B
.
··B C
main
··C G
.
··G H
duration
··H P
)
··P Q
;
··Q R
supportsLoop
¸¸ 
=
¸¸ 
supportsLoop
¸¸ +
||
¸¸, .
particleSystem
¸¸/ =
.
¸¸= >
main
¸¸> B
.
¸¸B C
loop
¸¸C G
;
¸¸G H
}
¹¹ 

m_Duration
»» 
=
»» 
double
»» 
.
»»   
IsNegativeInfinity
»»  2
(
»»2 3
maxDuration
»»3 >
)
»»> ?
?
»»@ A
PlayableBinding
»»B Q
.
»»Q R
DefaultDuration
»»R a
:
»»b c
maxDuration
»»d o
;
»»o p
m_SupportLoop
¼¼ 
=
¼¼ 
supportsLoop
¼¼ (
;
¼¼( )
}
½½ 	
IList
¿¿ 
<
¿¿ 
ParticleSystem
¿¿ 
>
¿¿ $
GetParticleSystemRoots
¿¿ 4
(
¿¿4 5

GameObject
¿¿5 ?
go
¿¿@ B
)
¿¿B C
{
ÀÀ 	
if
ÁÁ 
(
ÁÁ 
searchHierarchy
ÁÁ 
)
ÁÁ  
{
ÂÂ 
var
ÄÄ 
roots
ÄÄ 
=
ÄÄ 
new
ÄÄ 
List
ÄÄ  $
<
ÄÄ$ %
ParticleSystem
ÄÄ% 3
>
ÄÄ3 4
(
ÄÄ4 5
)
ÄÄ5 6
;
ÄÄ6 7$
GetParticleSystemRoots
ÅÅ &
(
ÅÅ& '
go
ÅÅ' )
.
ÅÅ) *
	transform
ÅÅ* 3
,
ÅÅ3 4
roots
ÅÅ5 :
)
ÅÅ: ;
;
ÅÅ; <
return
ÆÆ 
roots
ÆÆ 
;
ÆÆ 
}
ÇÇ 
return
ÈÈ 
GetComponent
ÈÈ 
<
ÈÈ  
ParticleSystem
ÈÈ  .
>
ÈÈ. /
(
ÈÈ/ 0
go
ÈÈ0 2
)
ÈÈ2 3
;
ÈÈ3 4
}
ÉÉ 	
static
ËË 
void
ËË $
GetParticleSystemRoots
ËË *
(
ËË* +
	Transform
ËË+ 4
t
ËË5 6
,
ËË6 7
ICollection
ËË8 C
<
ËËC D
ParticleSystem
ËËD R
>
ËËR S
roots
ËËT Y
)
ËËY Z
{
ÌÌ 	
var
ÍÍ 
ps
ÍÍ 
=
ÍÍ 
t
ÍÍ 
.
ÍÍ 
GetComponent
ÍÍ #
<
ÍÍ# $
ParticleSystem
ÍÍ$ 2
>
ÍÍ2 3
(
ÍÍ3 4
)
ÍÍ4 5
;
ÍÍ5 6
if
ÎÎ 
(
ÎÎ 
ps
ÎÎ 
!=
ÎÎ 
null
ÎÎ 
)
ÎÎ 
{
ÏÏ 
roots
ÑÑ 
.
ÑÑ 
Add
ÑÑ 
(
ÑÑ 
ps
ÑÑ 
)
ÑÑ 
;
ÑÑ 
return
ÒÒ 
;
ÒÒ 
}
ÓÓ 
for
ÕÕ 
(
ÕÕ 
int
ÕÕ 
i
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
;
ÕÕ 
i
ÕÕ 
<
ÕÕ 
t
ÕÕ  !
.
ÕÕ! "

childCount
ÕÕ" ,
;
ÕÕ, -
++
ÕÕ. 0
i
ÕÕ0 1
)
ÕÕ1 2
{
ÖÖ $
GetParticleSystemRoots
×× &
(
××& '
t
××' (
.
××( )
GetChild
××) 1
(
××1 2
i
××2 3
)
××3 4
,
××4 5
roots
××6 ;
)
××; <
;
××< =
}
ØØ 
}
ÙÙ 	
public
ÜÜ 
void
ÜÜ 
GatherProperties
ÜÜ $
(
ÜÜ$ %
PlayableDirector
ÜÜ% 5
director
ÜÜ6 >
,
ÜÜ> ? 
IPropertyCollector
ÜÜ@ R
driver
ÜÜS Y
)
ÜÜY Z
{
İİ 	
if
ßß 
(
ßß 
director
ßß 
==
ßß 
null
ßß  
)
ßß  !
return
àà 
;
àà 
if
ãã 
(
ãã "
s_ProcessedDirectors
ãã $
.
ãã$ %
Contains
ãã% -
(
ãã- .
director
ãã. 6
)
ãã6 7
)
ãã7 8
return
ää 
;
ää "
s_ProcessedDirectors
åå  
.
åå  !
Add
åå! $
(
åå$ %
director
åå% -
)
åå- .
;
åå. /
var
çç 

gameObject
çç 
=
çç 
sourceGameObject
çç -
.
çç- .
Resolve
çç. 5
(
çç5 6
director
çç6 >
)
çç> ?
;
çç? @
if
èè 
(
èè 

gameObject
èè 
!=
èè 
null
èè "
)
èè" #
{
éé 
if
êê 
(
êê 
updateParticle
êê "
)
êê" #
PreviewParticles
ëë $
(
ëë$ %
driver
ëë% +
,
ëë+ ,

gameObject
ëë- 7
.
ëë7 8%
GetComponentsInChildren
ëë8 O
<
ëëO P
ParticleSystem
ëëP ^
>
ëë^ _
(
ëë_ `
true
ëë` d
)
ëëd e
)
ëëe f
;
ëëf g
if
íí 
(
íí 
active
íí 
)
íí 
PreviewActivation
îî %
(
îî% &
driver
îî& ,
,
îî, -
new
îî. 1
[
îî1 2
]
îî2 3
{
îî4 5

gameObject
îî6 @
}
îîA B
)
îîB C
;
îîC D
if
ğğ 
(
ğğ  
updateITimeControl
ğğ &
)
ğğ& ' 
PreviewTimeControl
ññ &
(
ññ& '
driver
ññ' -
,
ññ- .
director
ññ/ 7
,
ññ7 8#
GetControlableScripts
ññ9 N
(
ññN O

gameObject
ññO Y
)
ññY Z
)
ññZ [
;
ññ[ \
if
óó 
(
óó 
updateDirector
óó "
)
óó" #
PreviewDirectors
ôô $
(
ôô$ %
driver
ôô% +
,
ôô+ ,
GetComponent
ôô- 9
<
ôô9 :
PlayableDirector
ôô: J
>
ôôJ K
(
ôôK L

gameObject
ôôL V
)
ôôV W
)
ôôW X
;
ôôX Y
}
õõ "
s_ProcessedDirectors
öö  
.
öö  !
Remove
öö! '
(
öö' (
director
öö( 0
)
öö0 1
;
öö1 2
}
÷÷ 	
internal
ùù 
static
ùù 
void
ùù 
PreviewParticles
ùù -
(
ùù- . 
IPropertyCollector
ùù. @
driver
ùùA G
,
ùùG H
IEnumerable
ùùI T
<
ùùT U
ParticleSystem
ùùU c
>
ùùc d
	particles
ùùe n
)
ùùn o
{
úú 	
foreach
ûû 
(
ûû 
var
ûû 
ps
ûû 
in
ûû 
	particles
ûû (
)
ûû( )
{
üü 
driver
ıı 
.
ıı 
AddFromName
ıı "
<
ıı" #
ParticleSystem
ıı# 1
>
ıı1 2
(
ıı2 3
ps
ıı3 5
.
ıı5 6

gameObject
ıı6 @
,
ıı@ A
$str
ııB N
)
ııN O
;
ııO P
driver
şş 
.
şş 
AddFromName
şş "
<
şş" #
ParticleSystem
şş# 1
>
şş1 2
(
şş2 3
ps
şş3 5
.
şş5 6

gameObject
şş6 @
,
şş@ A
$str
şşB R
)
şşR S
;
şşS T
}
ÿÿ 
}
€€ 	
internal
‚‚ 
static
‚‚ 
void
‚‚ 
PreviewActivation
‚‚ .
(
‚‚. / 
IPropertyCollector
‚‚/ A
driver
‚‚B H
,
‚‚H I
IEnumerable
‚‚J U
<
‚‚U V

GameObject
‚‚V `
>
‚‚` a
objects
‚‚b i
)
‚‚i j
{
ƒƒ 	
foreach
„„ 
(
„„ 
var
„„ 

gameObject
„„ #
in
„„$ &
objects
„„' .
)
„„. /
driver
…… 
.
…… 
AddFromName
…… "
(
……" #

gameObject
……# -
,
……- .
$str
……/ ;
)
……; <
;
……< =
}
†† 	
internal
ˆˆ 
static
ˆˆ 
void
ˆˆ  
PreviewTimeControl
ˆˆ /
(
ˆˆ/ 0 
IPropertyCollector
ˆˆ0 B
driver
ˆˆC I
,
ˆˆI J
PlayableDirector
ˆˆK [
director
ˆˆ\ d
,
ˆˆd e
IEnumerable
ˆˆf q
<
ˆˆq r
MonoBehaviour
ˆˆr 
>ˆˆ €
scriptsˆˆ ˆ
)ˆˆˆ ‰
{
‰‰ 	
foreach
ŠŠ 
(
ŠŠ 
var
ŠŠ 
script
ŠŠ 
in
ŠŠ  "
scripts
ŠŠ# *
)
ŠŠ* +
{
‹‹ 
var
ŒŒ 
propertyPreview
ŒŒ #
=
ŒŒ$ %
script
ŒŒ& ,
as
ŒŒ- /
IPropertyPreview
ŒŒ0 @
;
ŒŒ@ A
if
 
(
 
propertyPreview
 #
!=
$ &
null
' +
)
+ ,
propertyPreview
 #
.
# $
GatherProperties
$ 4
(
4 5
director
5 =
,
= >
driver
? E
)
E F
;
F G
else
 
driver
 
.
 
AddFromComponent
 +
(
+ ,
script
, 2
.
2 3

gameObject
3 =
,
= >
script
? E
)
E F
;
F G
}
‘‘ 
}
’’ 	
internal
”” 
static
”” 
void
”” 
PreviewDirectors
”” -
(
””- . 
IPropertyCollector
””. @
driver
””A G
,
””G H
IEnumerable
””I T
<
””T U
PlayableDirector
””U e
>
””e f
	directors
””g p
)
””p q
{
•• 	
foreach
–– 
(
–– 
var
–– 
childDirector
–– &
in
––' )
	directors
––* 3
)
––3 4
{
—— 
if
˜˜ 
(
˜˜ 
childDirector
˜˜ !
==
˜˜" $
null
˜˜% )
)
˜˜) *
continue
™™ 
;
™™ 
var
›› 
timeline
›› 
=
›› 
childDirector
›› ,
.
››, -
playableAsset
››- :
as
››; =
TimelineAsset
››> K
;
››K L
if
œœ 
(
œœ 
timeline
œœ 
==
œœ 
null
œœ  $
)
œœ$ %
continue
 
;
 
timeline
ŸŸ 
.
ŸŸ 
GatherProperties
ŸŸ )
(
ŸŸ) *
childDirector
ŸŸ* 7
,
ŸŸ7 8
driver
ŸŸ9 ?
)
ŸŸ? @
;
ŸŸ@ A
}
   
}
¡¡ 	
}
¢¢ 
}££ Ó
„D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\ILayerable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

	interface		 

ILayerable		 
{

 
Playable 
CreateLayerMixer !
(! "
PlayableGraph" /
graph0 5
,5 6

GameObject7 A
goB D
,D E
intF I

inputCountJ T
)T U
;U V
} 
} Ÿ
†D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
ITimelineClipAsset '
{ 
ClipCaps 
clipCaps 
{ 
get 
;  
}! "
} 
[ 
Serializable 
] 
public 

partial 
class 
TimelineClip %
:& '
ICurvesOwner( 4
,4 5*
ISerializationCallbackReceiver6 T
{ 
public 
static 
readonly 
ClipCaps '
kDefaultClipCaps( 8
=9 :
ClipCaps; C
.C D
BlendingD L
;L M
public!! 
static!! 
readonly!! 
float!! $)
kDefaultClipDurationInSeconds!!% B
=!!C D
$num!!E F
;!!F G
public&& 
static&& 
readonly&& 
double&& %
kTimeScaleMin&&& 3
=&&4 5
$num&&6 9
/&&: ;
$num&&< @
;&&@ A
public++ 
static++ 
readonly++ 
double++ %
kTimeScaleMax++& 3
=++4 5
$num++6 :
;++: ;
internal-- 
static-- 
readonly--  
string--! '
kDefaultCurvesName--( :
=--; <
$str--= N
;--N O
internal// 
static// 
readonly//  
double//! '
kMinDuration//( 4
=//5 6
$num//7 8
///9 :
$num//; ?
;//? @
internal22 
static22 
readonly22  
double22! '
kMaxTimeValue22( 5
=226 7
$num228 ?
;22? @
public77 
enum77 
ClipExtrapolation77 %
{88 	
None<< 
,<< 
HoldAA 
,AA 
LoopFF 
,FF 
PingPongKK 
,KK 
ContinuePP 
}QQ 	
;QQ	 

publicVV 
enumVV 
BlendCurveModeVV "
{WW 	
Auto[[ 
,[[ 
Manual`` 
}aa 	
;aa	 

internalcc 
TimelineClipcc 
(cc 

TrackAssetcc (
parentcc) /
)cc/ 0
{dd 	
parentTrackff 
=ff 
parentff  
;ff  !
}gg 	
[ii 	
SerializeFieldii	 
]ii 
doubleii 
m_Startii  '
;ii' (
[jj 	
SerializeFieldjj	 
]jj 
doublejj 
m_ClipInjj  (
;jj( )
[kk 	
SerializeFieldkk	 
]kk 
Objectkk 
m_Assetkk  '
;kk' (
[ll 	
SerializeFieldll	 
]ll 
[ll  
FormerlySerializedAsll -
(ll- .
$strll. >
)ll> ?
]ll? @
doublellA G

m_DurationllH R
;llR S
[mm 	
SerializeFieldmm	 
]mm 
doublemm 
m_TimeScalemm  +
=mm, -
$nummm. 1
;mm1 2
[nn 	
SerializeFieldnn	 
]nn 

TrackAssetnn #
m_ParentTracknn$ 1
;nn1 2
[qq 	
SerializeFieldqq	 
]qq 
doubleqq 
m_EaseInDurationqq  0
;qq0 1
[rr 	
SerializeFieldrr	 
]rr 
doublerr 
m_EaseOutDurationrr  1
;rr1 2
[uu 	
SerializeFielduu	 
]uu 
doubleuu 
m_BlendInDurationuu  1
=uu2 3
-uu4 5
$numuu5 9
;uu9 :
[vv 	
SerializeFieldvv	 
]vv 
doublevv 
m_BlendOutDurationvv  2
=vv3 4
-vv5 6
$numvv6 :
;vv: ;
[yy 	
SerializeFieldyy	 
]yy 
AnimationCurveyy '
m_MixInCurveyy( 4
;yy4 5
[zz 	
SerializeFieldzz	 
]zz 
AnimationCurvezz '
m_MixOutCurvezz( 5
;zz5 6
[|| 	
SerializeField||	 
]|| 
BlendCurveMode|| '
m_BlendInCurveMode||( :
=||; <
BlendCurveMode||= K
.||K L
Auto||L P
;||P Q
[}} 	
SerializeField}}	 
]}} 
BlendCurveMode}} '
m_BlendOutCurveMode}}( ;
=}}< =
BlendCurveMode}}> L
.}}L M
Auto}}M Q
;}}Q R
[ 	
SerializeField	 
] 
List 
< 
string $
>$ %#
m_ExposedParameterNames& =
;= >
[
€€ 	
SerializeField
€€	 
]
€€ 
AnimationClip
€€ &
m_AnimationCurves
€€' 8
;
€€8 9
[
‚‚ 	
SerializeField
‚‚	 
]
‚‚ 
bool
‚‚ 
m_Recordable
‚‚ *
;
‚‚* +
[
…… 	
SerializeField
……	 
]
…… 
ClipExtrapolation
…… *%
m_PostExtrapolationMode
……+ B
;
……B C
[
†† 	
SerializeField
††	 
]
†† 
ClipExtrapolation
†† *$
m_PreExtrapolationMode
††+ A
;
††A B
[
‡‡ 	
SerializeField
‡‡	 
]
‡‡ 
double
‡‡ %
m_PostExtrapolationTime
‡‡  7
;
‡‡7 8
[
ˆˆ 	
SerializeField
ˆˆ	 
]
ˆˆ 
double
ˆˆ $
m_PreExtrapolationTime
ˆˆ  6
;
ˆˆ6 7
[
ŠŠ 	
SerializeField
ŠŠ	 
]
ŠŠ 
string
ŠŠ 
m_DisplayName
ŠŠ  -
;
ŠŠ- .
public
 
bool
 !
hasPreExtrapolation
 '
{
 	
get
‘‘ 
{
‘‘ 
return
‘‘ $
m_PreExtrapolationMode
‘‘ /
!=
‘‘0 2
ClipExtrapolation
‘‘3 D
.
‘‘D E
None
‘‘E I
&&
‘‘J L$
m_PreExtrapolationTime
‘‘M c
>
‘‘d e
$num
‘‘f g
;
‘‘g h
}
‘‘i j
}
’’ 	
public
—— 
bool
—— "
hasPostExtrapolation
—— (
{
˜˜ 	
get
™™ 
{
™™ 
return
™™ %
m_PostExtrapolationMode
™™ 0
!=
™™1 3
ClipExtrapolation
™™4 E
.
™™E F
None
™™F J
&&
™™K M%
m_PostExtrapolationTime
™™N e
>
™™f g
$num
™™h i
;
™™i j
}
™™k l
}
šš 	
public
ŸŸ 
double
ŸŸ 
	timeScale
ŸŸ 
{
   	
get
¡¡ 
{
¡¡ 
return
¡¡ 
clipCaps
¡¡ !
.
¡¡! "
HasAny
¡¡" (
(
¡¡( )
ClipCaps
¡¡) 1
.
¡¡1 2
SpeedMultiplier
¡¡2 A
)
¡¡A B
?
¡¡C D
Math
¡¡E I
.
¡¡I J
Max
¡¡J M
(
¡¡M N
kTimeScaleMin
¡¡N [
,
¡¡[ \
Math
¡¡] a
.
¡¡a b
Min
¡¡b e
(
¡¡e f
m_TimeScale
¡¡f q
,
¡¡q r
kTimeScaleMax¡¡s €
)¡¡€ 
)¡¡ ‚
:¡¡ƒ „
$num¡¡… ˆ
;¡¡ˆ ‰
}¡¡Š ‹
set
¢¢ 
{
££ 
UpdateDirty
¤¤ 
(
¤¤ 
m_TimeScale
¤¤ '
,
¤¤' (
value
¤¤) .
)
¤¤. /
;
¤¤/ 0
m_TimeScale
¥¥ 
=
¥¥ 
clipCaps
¥¥ &
.
¥¥& '
HasAny
¥¥' -
(
¥¥- .
ClipCaps
¥¥. 6
.
¥¥6 7
SpeedMultiplier
¥¥7 F
)
¥¥F G
?
¥¥H I
Math
¥¥J N
.
¥¥N O
Max
¥¥O R
(
¥¥R S
kTimeScaleMin
¥¥S `
,
¥¥` a
Math
¥¥b f
.
¥¥f g
Min
¥¥g j
(
¥¥j k
value
¥¥k p
,
¥¥p q
kTimeScaleMax
¥¥r 
)¥¥ €
)¥¥€ 
:¥¥‚ ƒ
$num¥¥„ ‡
;¥¥‡ ˆ
}
¦¦ 
}
§§ 	
public
¬¬ 
double
¬¬ 
start
¬¬ 
{
­­ 	
get
®® 
{
®® 
return
®® 
m_Start
®®  
;
®®  !
}
®®" #
set
¯¯ 
{
°° 
UpdateDirty
±± 
(
±± 
value
±± !
,
±±! "
m_Start
±±# *
)
±±* +
;
±±+ ,
var
²² 
newValue
²² 
=
²² 
Math
²² #
.
²²# $
Max
²²$ '
(
²²' (
SanitizeTimeValue
²²( 9
(
²²9 :
value
²²: ?
,
²²? @
m_Start
²²A H
)
²²H I
,
²²I J
$num
²²K L
)
²²L M
;
²²M N
if
³³ 
(
³³ 
m_ParentTrack
³³ !
!=
³³" $
null
³³% )
&&
³³* ,
m_Start
³³- 4
!=
³³5 7
newValue
³³8 @
)
³³@ A
{
´´ 
m_ParentTrack
µµ !
.
µµ! "

OnClipMove
µµ" ,
(
µµ, -
)
µµ- .
;
µµ. /
}
¶¶ 
m_Start
·· 
=
·· 
newValue
·· "
;
··" #
}
¸¸ 
}
¹¹ 	
public
¾¾ 
double
¾¾ 
duration
¾¾ 
{
¿¿ 	
get
ÀÀ 
{
ÀÀ 
return
ÀÀ 

m_Duration
ÀÀ #
;
ÀÀ# $
}
ÀÀ% &
set
ÁÁ 
{
ÂÂ 
UpdateDirty
ÃÃ 
(
ÃÃ 

m_Duration
ÃÃ &
,
ÃÃ& '
value
ÃÃ( -
)
ÃÃ- .
;
ÃÃ. /

m_Duration
ÄÄ 
=
ÄÄ 
Math
ÄÄ !
.
ÄÄ! "
Max
ÄÄ" %
(
ÄÄ% &
SanitizeTimeValue
ÄÄ& 7
(
ÄÄ7 8
value
ÄÄ8 =
,
ÄÄ= >

m_Duration
ÄÄ? I
)
ÄÄI J
,
ÄÄJ K
double
ÄÄL R
.
ÄÄR S
Epsilon
ÄÄS Z
)
ÄÄZ [
;
ÄÄ[ \
}
ÅÅ 
}
ÆÆ 	
public
ËË 
double
ËË 
end
ËË 
{
ÌÌ 	
get
ÍÍ 
{
ÍÍ 
return
ÍÍ 
m_Start
ÍÍ  
+
ÍÍ! "

m_Duration
ÍÍ# -
;
ÍÍ- .
}
ÍÍ/ 0
}
ÎÎ 	
public
ÓÓ 
double
ÓÓ 
clipIn
ÓÓ 
{
ÔÔ 	
get
ÕÕ 
{
ÕÕ 
return
ÕÕ 
clipCaps
ÕÕ !
.
ÕÕ! "
HasAny
ÕÕ" (
(
ÕÕ( )
ClipCaps
ÕÕ) 1
.
ÕÕ1 2
ClipIn
ÕÕ2 8
)
ÕÕ8 9
?
ÕÕ: ;
m_ClipIn
ÕÕ< D
:
ÕÕE F
$num
ÕÕG H
;
ÕÕH I
}
ÕÕJ K
set
ÖÖ 
{
×× 
UpdateDirty
ØØ 
(
ØØ 
m_ClipIn
ØØ $
,
ØØ$ %
value
ØØ& +
)
ØØ+ ,
;
ØØ, -
m_ClipIn
ÙÙ 
=
ÙÙ 
clipCaps
ÙÙ #
.
ÙÙ# $
HasAny
ÙÙ$ *
(
ÙÙ* +
ClipCaps
ÙÙ+ 3
.
ÙÙ3 4
ClipIn
ÙÙ4 :
)
ÙÙ: ;
?
ÙÙ< =
Math
ÙÙ> B
.
ÙÙB C
Max
ÙÙC F
(
ÙÙF G
Math
ÙÙG K
.
ÙÙK L
Min
ÙÙL O
(
ÙÙO P
SanitizeTimeValue
ÙÙP a
(
ÙÙa b
value
ÙÙb g
,
ÙÙg h
m_ClipIn
ÙÙi q
)
ÙÙq r
,
ÙÙr s
kMaxTimeValueÙÙt 
)ÙÙ ‚
,ÙÙ‚ ƒ
$numÙÙ„ ‡
)ÙÙ‡ ˆ
:ÙÙ‰ Š
$numÙÙ‹ Œ
;ÙÙŒ 
}
ÚÚ 
}
ÛÛ 	
public
àà 
string
àà 
displayName
àà !
{
áá 	
get
ââ 
{
ââ 
return
ââ 
m_DisplayName
ââ &
;
ââ& '
}
ââ( )
set
ãã 
{
ãã 
m_DisplayName
ãã 
=
ãã  !
value
ãã" '
;
ãã' (
}
ãã) *
}
ää 	
public
êê 
double
êê 
clipAssetDuration
êê '
{
ëë 	
get
ìì 
{
íí 
var
îî 
playableAsset
îî !
=
îî" #
m_Asset
îî$ +
as
îî, .
IPlayableAsset
îî/ =
;
îî= >
return
ïï 
playableAsset
ïï $
!=
ïï% '
null
ïï( ,
?
ïï- .
playableAsset
ïï/ <
.
ïï< =
duration
ïï= E
:
ïïF G
double
ïïH N
.
ïïN O
MaxValue
ïïO W
;
ïïW X
}
ğğ 
}
ññ 	
public
ùù 
AnimationClip
ùù 
curves
ùù #
{
úú 	
get
ûû 
{
ûû 
return
ûû 
m_AnimationCurves
ûû *
;
ûû* +
}
ûû, -
internal
üü 
set
üü 
{
üü 
m_AnimationCurves
üü ,
=
üü- .
value
üü/ 4
;
üü4 5
}
üü6 7
}
ıı 	
string
ÿÿ 
ICurvesOwner
ÿÿ 
.
ÿÿ 
defaultCurvesName
ÿÿ -
{
€€ 	
get
 
{
 
return
  
kDefaultCurvesName
 +
;
+ ,
}
- .
}
‚‚ 	
public
ŠŠ 
bool
ŠŠ 
	hasCurves
ŠŠ 
{
‹‹ 	
get
ŒŒ 
{
ŒŒ 
return
ŒŒ 
m_AnimationCurves
ŒŒ *
!=
ŒŒ+ -
null
ŒŒ. 2
&&
ŒŒ3 5
!
ŒŒ6 7
m_AnimationCurves
ŒŒ7 H
.
ŒŒH I
empty
ŒŒI N
;
ŒŒN O
}
ŒŒP Q
}
 	
public
’’ 
Object
’’ 
asset
’’ 
{
““ 	
get
”” 
{
”” 
return
”” 
m_Asset
””  
;
””  !
}
””" #
set
•• 
{
•• 
m_Asset
•• 
=
•• 
value
•• !
;
••! "
}
••# $
}
–– 	
Object
˜˜ 
ICurvesOwner
˜˜ 
.
˜˜ 

assetOwner
˜˜ &
{
™™ 	
get
šš 
{
šš 
return
šš 
parentTrack
šš $
;
šš$ %
}
šš& '
}
›› 	

TrackAsset
 
ICurvesOwner
 
.
  
targetTrack
  +
{
 	
get
ŸŸ 
{
ŸŸ 
return
ŸŸ 
parentTrack
ŸŸ $
;
ŸŸ$ %
}
ŸŸ& '
}
   	
[
¢¢ 	
Obsolete
¢¢	 
(
¢¢ 
$str
¢¢ T
,
¢¢T U
true
¢¢V Z
)
¢¢Z [
]
¢¢[ \
public
££ 
Object
££ 
underlyingAsset
££ %
{
¤¤ 	
get
¥¥ 
{
¥¥ 
return
¥¥ 
null
¥¥ 
;
¥¥ 
}
¥¥  
set
¦¦ 
{
¦¦ 
}
¦¦ 
}
§§ 	
public
¬¬ 

TrackAsset
¬¬ 
parentTrack
¬¬ %
{
­­ 	
get
®® 
{
®® 
return
®® 
m_ParentTrack
®® &
;
®®& '
}
®®( )
set
¯¯ 
{
°° 
if
±± 
(
±± 
m_ParentTrack
±± !
==
±±" $
value
±±% *
)
±±* +
return
²² 
;
²² 
if
´´ 
(
´´ 
m_ParentTrack
´´ !
!=
´´" $
null
´´% )
)
´´) *
m_ParentTrack
µµ !
.
µµ! "

RemoveClip
µµ" ,
(
µµ, -
this
µµ- 1
)
µµ1 2
;
µµ2 3
m_ParentTrack
·· 
=
·· 
value
··  %
;
··% &
if
¹¹ 
(
¹¹ 
m_ParentTrack
¹¹ !
!=
¹¹" $
null
¹¹% )
)
¹¹) *
m_ParentTrack
ºº !
.
ºº! "
AddClip
ºº" )
(
ºº) *
this
ºº* .
)
ºº. /
;
ºº/ 0
}
»» 
}
¼¼ 	
public
ÁÁ 
double
ÁÁ 
easeInDuration
ÁÁ $
{
ÂÂ 	
get
ÃÃ 
{
ÃÃ 
return
ÃÃ 
clipCaps
ÃÃ !
.
ÃÃ! "
HasAny
ÃÃ" (
(
ÃÃ( )
ClipCaps
ÃÃ) 1
.
ÃÃ1 2
Blending
ÃÃ2 :
)
ÃÃ: ;
?
ÃÃ< =
Math
ÃÃ> B
.
ÃÃB C
Min
ÃÃC F
(
ÃÃF G
Math
ÃÃG K
.
ÃÃK L
Max
ÃÃL O
(
ÃÃO P
m_EaseInDuration
ÃÃP `
,
ÃÃ` a
$num
ÃÃb c
)
ÃÃc d
,
ÃÃd e
duration
ÃÃf n
)
ÃÃn o
:
ÃÃp q
$num
ÃÃr s
;
ÃÃs t
}
ÃÃu v
set
ÄÄ 
{
ÄÄ 
m_EaseInDuration
ÄÄ "
=
ÄÄ# $
clipCaps
ÄÄ% -
.
ÄÄ- .
HasAny
ÄÄ. 4
(
ÄÄ4 5
ClipCaps
ÄÄ5 =
.
ÄÄ= >
Blending
ÄÄ> F
)
ÄÄF G
?
ÄÄH I
Math
ÄÄJ N
.
ÄÄN O
Max
ÄÄO R
(
ÄÄR S
$num
ÄÄS T
,
ÄÄT U
Math
ÄÄV Z
.
ÄÄZ [
Min
ÄÄ[ ^
(
ÄÄ^ _
SanitizeTimeValue
ÄÄ_ p
(
ÄÄp q
value
ÄÄq v
,
ÄÄv w
m_EaseInDurationÄÄx ˆ
)ÄÄˆ ‰
,ÄÄ‰ Š
durationÄÄ‹ “
)ÄÄ“ ”
)ÄÄ” •
:ÄÄ– —
$numÄÄ˜ ™
;ÄÄ™ š
}ÄÄ› œ
}
ÅÅ 	
public
ÊÊ 
double
ÊÊ 
easeOutDuration
ÊÊ %
{
ËË 	
get
ÌÌ 
{
ÌÌ 
return
ÌÌ 
clipCaps
ÌÌ !
.
ÌÌ! "
HasAny
ÌÌ" (
(
ÌÌ( )
ClipCaps
ÌÌ) 1
.
ÌÌ1 2
Blending
ÌÌ2 :
)
ÌÌ: ;
?
ÌÌ< =
Math
ÌÌ> B
.
ÌÌB C
Min
ÌÌC F
(
ÌÌF G
Math
ÌÌG K
.
ÌÌK L
Max
ÌÌL O
(
ÌÌO P
m_EaseOutDuration
ÌÌP a
,
ÌÌa b
$num
ÌÌc d
)
ÌÌd e
,
ÌÌe f
duration
ÌÌg o
)
ÌÌo p
:
ÌÌq r
$num
ÌÌs t
;
ÌÌt u
}
ÌÌv w
set
ÍÍ 
{
ÍÍ 
m_EaseOutDuration
ÍÍ #
=
ÍÍ$ %
clipCaps
ÍÍ& .
.
ÍÍ. /
HasAny
ÍÍ/ 5
(
ÍÍ5 6
ClipCaps
ÍÍ6 >
.
ÍÍ> ?
Blending
ÍÍ? G
)
ÍÍG H
?
ÍÍI J
Math
ÍÍK O
.
ÍÍO P
Max
ÍÍP S
(
ÍÍS T
$num
ÍÍT U
,
ÍÍU V
Math
ÍÍW [
.
ÍÍ[ \
Min
ÍÍ\ _
(
ÍÍ_ `
SanitizeTimeValue
ÍÍ` q
(
ÍÍq r
value
ÍÍr w
,
ÍÍw x 
m_EaseOutDurationÍÍy Š
)ÍÍŠ ‹
,ÍÍ‹ Œ
durationÍÍ •
)ÍÍ• –
)ÍÍ– —
:ÍÍ˜ ™
$numÍÍš ›
;ÍÍ› œ
}ÍÍ 
}
ÎÎ 	
[
ĞĞ 	
Obsolete
ĞĞ	 
(
ĞĞ 
$str
ĞĞ L
,
ĞĞL M
true
ĞĞN R
)
ĞĞR S
]
ĞĞS T
public
ÑÑ 
double
ÑÑ 
eastOutTime
ÑÑ !
{
ÒÒ 	
get
ÓÓ 
{
ÓÓ 
return
ÓÓ 
duration
ÓÓ !
-
ÓÓ" #
easeOutDuration
ÓÓ$ 3
+
ÓÓ4 5
m_Start
ÓÓ6 =
;
ÓÓ= >
}
ÓÓ? @
}
ÔÔ 	
public
ÙÙ 
double
ÙÙ 
easeOutTime
ÙÙ !
{
ÚÚ 	
get
ÛÛ 
{
ÛÛ 
return
ÛÛ 
duration
ÛÛ !
-
ÛÛ" #
easeOutDuration
ÛÛ$ 3
+
ÛÛ4 5
m_Start
ÛÛ6 =
;
ÛÛ= >
}
ÛÛ? @
}
ÜÜ 	
public
áá 
double
áá 
blendInDuration
áá %
{
ââ 	
get
ãã 
{
ãã 
return
ãã 
clipCaps
ãã !
.
ãã! "
HasAny
ãã" (
(
ãã( )
ClipCaps
ãã) 1
.
ãã1 2
Blending
ãã2 :
)
ãã: ;
?
ãã< =
m_BlendInDuration
ãã> O
:
ããP Q
$num
ããR S
;
ããS T
}
ããU V
set
ää 
{
ää 
m_BlendInDuration
ää #
=
ää$ %
clipCaps
ää& .
.
ää. /
HasAny
ää/ 5
(
ää5 6
ClipCaps
ää6 >
.
ää> ?
Blending
ää? G
)
ääG H
?
ääI J
SanitizeTimeValue
ääK \
(
ää\ ]
value
ää] b
,
ääb c
m_BlendInDuration
ääd u
)
ääu v
:
ääw x
$num
ääy z
;
ääz {
}
ää| }
}
åå 	
public
êê 
double
êê 
blendOutDuration
êê &
{
ëë 	
get
ìì 
{
ìì 
return
ìì 
clipCaps
ìì !
.
ìì! "
HasAny
ìì" (
(
ìì( )
ClipCaps
ìì) 1
.
ìì1 2
Blending
ìì2 :
)
ìì: ;
?
ìì< = 
m_BlendOutDuration
ìì> P
:
ììQ R
$num
ììS T
;
ììT U
}
ììV W
set
íí 
{
íí  
m_BlendOutDuration
íí $
=
íí% &
clipCaps
íí' /
.
íí/ 0
HasAny
íí0 6
(
íí6 7
ClipCaps
íí7 ?
.
íí? @
Blending
íí@ H
)
ííH I
?
ííJ K
SanitizeTimeValue
ííL ]
(
íí] ^
value
íí^ c
,
ííc d 
m_BlendOutDuration
ííe w
)
ííw x
:
ííy z
$num
íí{ |
;
íí| }
}
íí~ 
}
îî 	
public
óó 
BlendCurveMode
óó 
blendInCurveMode
óó .
{
ôô 	
get
õõ 
{
õõ 
return
õõ  
m_BlendInCurveMode
õõ +
;
õõ+ ,
}
õõ- .
set
öö 
{
öö  
m_BlendInCurveMode
öö $
=
öö% &
value
öö' ,
;
öö, -
}
öö. /
}
÷÷ 	
public
üü 
BlendCurveMode
üü 
blendOutCurveMode
üü /
{
ıı 	
get
şş 
{
şş 
return
şş !
m_BlendOutCurveMode
şş ,
;
şş, -
}
şş. /
set
ÿÿ 
{
ÿÿ !
m_BlendOutCurveMode
ÿÿ %
=
ÿÿ& '
value
ÿÿ( -
;
ÿÿ- .
}
ÿÿ/ 0
}
€€ 	
public
…… 
bool
…… 

hasBlendIn
…… 
{
……  
get
……! $
{
……% &
return
……' -
clipCaps
……. 6
.
……6 7
HasAny
……7 =
(
……= >
ClipCaps
……> F
.
……F G
Blending
……G O
)
……O P
&&
……Q S
m_BlendInDuration
……T e
>
……f g
$num
……h i
;
……i j
}
……k l
}
……m n
public
ŠŠ 
bool
ŠŠ 
hasBlendOut
ŠŠ 
{
ŠŠ  !
get
ŠŠ" %
{
ŠŠ& '
return
ŠŠ( .
clipCaps
ŠŠ/ 7
.
ŠŠ7 8
HasAny
ŠŠ8 >
(
ŠŠ> ?
ClipCaps
ŠŠ? G
.
ŠŠG H
Blending
ŠŠH P
)
ŠŠP Q
&&
ŠŠR T 
m_BlendOutDuration
ŠŠU g
>
ŠŠh i
$num
ŠŠj k
;
ŠŠk l
}
ŠŠm n
}
ŠŠo p
public
 
AnimationCurve
 

mixInCurve
 (
{
 	
get
‘‘ 
{
’’ 
if
”” 
(
”” 
m_MixInCurve
””  
==
””! #
null
””$ (
||
””) +
m_MixInCurve
””, 8
.
””8 9
length
””9 ?
<
””@ A
$num
””B C
)
””C D
m_MixInCurve
••  
=
••! ""
GetDefaultMixInCurve
••# 7
(
••7 8
)
••8 9
;
••9 :
return
—— 
m_MixInCurve
—— #
;
——# $
}
˜˜ 
set
™™ 
{
™™ 
m_MixInCurve
™™ 
=
™™  
value
™™! &
;
™™& '
}
™™( )
}
šš 	
public
ŸŸ 
float
ŸŸ 
mixInPercentage
ŸŸ $
{
   	
get
¡¡ 
{
¡¡ 
return
¡¡ 
(
¡¡ 
float
¡¡ 
)
¡¡  
(
¡¡  !
mixInDuration
¡¡! .
/
¡¡/ 0
duration
¡¡1 9
)
¡¡9 :
;
¡¡: ;
}
¡¡< =
}
¢¢ 	
public
§§ 
double
§§ 
mixInDuration
§§ #
{
¨¨ 	
get
©© 
{
©© 
return
©© 

hasBlendIn
©© #
?
©©$ %
blendInDuration
©©& 5
:
©©6 7
easeInDuration
©©8 F
;
©©F G
}
©©H I
}
ªª 	
public
¯¯ 
AnimationCurve
¯¯ 
mixOutCurve
¯¯ )
{
°° 	
get
±± 
{
²² 
if
³³ 
(
³³ 
m_MixOutCurve
³³ !
==
³³" $
null
³³% )
||
³³* ,
m_MixOutCurve
³³- :
.
³³: ;
length
³³; A
<
³³B C
$num
³³D E
)
³³E F
m_MixOutCurve
´´ !
=
´´" ##
GetDefaultMixOutCurve
´´$ 9
(
´´9 :
)
´´: ;
;
´´; <
return
µµ 
m_MixOutCurve
µµ $
;
µµ$ %
}
¶¶ 
set
·· 
{
·· 
m_MixOutCurve
·· 
=
··  !
value
··" '
;
··' (
}
··) *
}
¸¸ 	
public
½½ 
double
½½ 

mixOutTime
½½  
{
¾¾ 	
get
¿¿ 
{
¿¿ 
return
¿¿ 
duration
¿¿ !
-
¿¿" #
mixOutDuration
¿¿$ 2
+
¿¿3 4
m_Start
¿¿5 <
;
¿¿< =
}
¿¿> ?
}
ÀÀ 	
public
ÅÅ 
double
ÅÅ 
mixOutDuration
ÅÅ $
{
ÆÆ 	
get
ÇÇ 
{
ÇÇ 
return
ÇÇ 
hasBlendOut
ÇÇ $
?
ÇÇ% &
blendOutDuration
ÇÇ' 7
:
ÇÇ8 9
easeOutDuration
ÇÇ: I
;
ÇÇI J
}
ÇÇK L
}
ÈÈ 	
public
ÍÍ 
float
ÍÍ 
mixOutPercentage
ÍÍ %
{
ÎÎ 	
get
ÏÏ 
{
ÏÏ 
return
ÏÏ 
(
ÏÏ 
float
ÏÏ 
)
ÏÏ  
(
ÏÏ  !
mixOutDuration
ÏÏ! /
/
ÏÏ0 1
duration
ÏÏ2 :
)
ÏÏ: ;
;
ÏÏ; <
}
ÏÏ= >
}
ĞĞ 	
public
ÕÕ 
bool
ÕÕ 

recordable
ÕÕ 
{
ÖÖ 	
get
×× 
{
×× 
return
×× 
m_Recordable
×× %
;
××% &
}
××' (
internal
ØØ 
set
ØØ 
{
ØØ 
m_Recordable
ØØ '
=
ØØ( )
value
ØØ* /
;
ØØ/ 0
}
ØØ1 2
}
ÙÙ 	
[
ÛÛ 	
Obsolete
ÛÛ	 
(
ÛÛ 
$str
ÛÛ Z
,
ÛÛZ [
true
ÛÛ\ `
)
ÛÛ` a
]
ÛÛa b
public
ÜÜ 
List
ÜÜ 
<
ÜÜ 
string
ÜÜ 
>
ÜÜ 
exposedParameters
ÜÜ -
{
İİ 	
get
ŞŞ 
{
ŞŞ 
return
ŞŞ %
m_ExposedParameterNames
ŞŞ 0
??
ŞŞ1 3
(
ŞŞ4 5%
m_ExposedParameterNames
ŞŞ5 L
=
ŞŞM N
new
ŞŞO R
List
ŞŞS W
<
ŞŞW X
string
ŞŞX ^
>
ŞŞ^ _
(
ŞŞ_ `
)
ŞŞ` a
)
ŞŞa b
;
ŞŞb c
}
ŞŞd e
}
ßß 	
public
ää 
ClipCaps
ää 
clipCaps
ää  
{
åå 	
get
ææ 
{
çç 
var
èè 
	clipAsset
èè 
=
èè 
asset
èè  %
as
èè& ( 
ITimelineClipAsset
èè) ;
;
èè; <
return
éé 
(
éé 
	clipAsset
éé !
!=
éé" $
null
éé% )
)
éé) *
?
éé+ ,
	clipAsset
éé- 6
.
éé6 7
clipCaps
éé7 ?
:
éé@ A
kDefaultClipCaps
ééB R
;
ééR S
}
êê 
}
ëë 	
internal
íí 
int
íí 
Hash
íí 
(
íí 
)
íí 
{
îî 	
return
ïï 
HashUtility
ïï 
.
ïï 
CombineHash
ïï *
(
ïï* +
m_Start
ïï+ 2
.
ïï2 3
GetHashCode
ïï3 >
(
ïï> ?
)
ïï? @
,
ïï@ A

m_Duration
ğğ 
.
ğğ 
GetHashCode
ğğ &
(
ğğ& '
)
ğğ' (
,
ğğ( )
m_TimeScale
ññ 
.
ññ 
GetHashCode
ññ '
(
ññ' (
)
ññ( )
,
ññ) *
m_ClipIn
òò 
.
òò 
GetHashCode
òò $
(
òò$ %
)
òò% &
,
òò& '
(
óó 
(
óó 
int
óó 
)
óó $
m_PreExtrapolationMode
óó ,
)
óó, -
.
óó- .
GetHashCode
óó. 9
(
óó9 :
)
óó: ;
,
óó; <
(
ôô 
(
ôô 
int
ôô 
)
ôô %
m_PostExtrapolationMode
ôô -
)
ôô- .
.
ôô. /
GetHashCode
ôô/ :
(
ôô: ;
)
ôô; <
)
ôô< =
;
ôô= >
}
õõ 	
public
üü 
float
üü 
EvaluateMixOut
üü #
(
üü# $
double
üü$ *
time
üü+ /
)
üü/ 0
{
ıı 	
if
şş 
(
şş 
!
şş 
clipCaps
şş 
.
şş 
HasAny
şş  
(
şş  !
ClipCaps
şş! )
.
şş) *
Blending
şş* 2
)
şş2 3
)
şş3 4
return
ÿÿ 
$num
ÿÿ 
;
ÿÿ 
if
 
(
 
mixOutDuration
 
>
  
Mathf
! &
.
& '
Epsilon
' .
)
. /
{
‚‚ 
var
ƒƒ 
perc
ƒƒ 
=
ƒƒ 
(
ƒƒ 
float
ƒƒ !
)
ƒƒ! "
(
ƒƒ" #
time
ƒƒ# '
-
ƒƒ( )

mixOutTime
ƒƒ* 4
)
ƒƒ4 5
/
ƒƒ6 7
(
ƒƒ8 9
float
ƒƒ9 >
)
ƒƒ> ?
mixOutDuration
ƒƒ? M
;
ƒƒM N
perc
„„ 
=
„„ 
Mathf
„„ 
.
„„ 
Clamp01
„„ $
(
„„$ %
mixOutCurve
„„% 0
.
„„0 1
Evaluate
„„1 9
(
„„9 :
perc
„„: >
)
„„> ?
)
„„? @
;
„„@ A
return
…… 
perc
…… 
;
…… 
}
†† 
return
‡‡ 
$num
‡‡ 
;
‡‡ 
}
ˆˆ 	
public
 
float
 
EvaluateMixIn
 "
(
" #
double
# )
time
* .
)
. /
{
 	
if
‘‘ 
(
‘‘ 
!
‘‘ 
clipCaps
‘‘ 
.
‘‘ 
HasAny
‘‘  
(
‘‘  !
ClipCaps
‘‘! )
.
‘‘) *
Blending
‘‘* 2
)
‘‘2 3
)
‘‘3 4
return
’’ 
$num
’’ 
;
’’ 
if
”” 
(
”” 
mixInDuration
”” 
>
”” 
Mathf
””  %
.
””% &
Epsilon
””& -
)
””- .
{
•• 
var
–– 
perc
–– 
=
–– 
(
–– 
float
–– !
)
––! "
(
––" #
time
––# '
-
––( )
m_Start
––* 1
)
––1 2
/
––3 4
(
––5 6
float
––6 ;
)
––; <
mixInDuration
––< I
;
––I J
perc
—— 
=
—— 
Mathf
—— 
.
—— 
Clamp01
—— $
(
——$ %

mixInCurve
——% /
.
——/ 0
Evaluate
——0 8
(
——8 9
perc
——9 =
)
——= >
)
——> ?
;
——? @
return
˜˜ 
perc
˜˜ 
;
˜˜ 
}
™™ 
return
šš 
$num
šš 
;
šš 
}
›› 	
static
 
AnimationCurve
 "
GetDefaultMixInCurve
 2
(
2 3
)
3 4
{
 	
return
ŸŸ 
AnimationCurve
ŸŸ !
.
ŸŸ! "
	EaseInOut
ŸŸ" +
(
ŸŸ+ ,
$num
ŸŸ, -
,
ŸŸ- .
$num
ŸŸ/ 0
,
ŸŸ0 1
$num
ŸŸ2 3
,
ŸŸ3 4
$num
ŸŸ5 6
)
ŸŸ6 7
;
ŸŸ7 8
}
   	
static
¢¢ 
AnimationCurve
¢¢ #
GetDefaultMixOutCurve
¢¢ 3
(
¢¢3 4
)
¢¢4 5
{
££ 	
return
¤¤ 
AnimationCurve
¤¤ !
.
¤¤! "
	EaseInOut
¤¤" +
(
¤¤+ ,
$num
¤¤, -
,
¤¤- .
$num
¤¤/ 0
,
¤¤0 1
$num
¤¤2 3
,
¤¤3 4
$num
¤¤5 6
)
¤¤6 7
;
¤¤7 8
}
¥¥ 	
public
®® 
double
®® 
ToLocalTime
®® !
(
®®! "
double
®®" (
time
®®) -
)
®®- .
{
¯¯ 	
if
°° 
(
°° 
time
°° 
<
°° 
$num
°° 
)
°° 
return
±± 
time
±± 
;
±± 
if
´´ 
(
´´ #
IsPreExtrapolatedTime
´´ %
(
´´% &
time
´´& *
)
´´* +
)
´´+ ,
time
µµ 
=
µµ !
GetExtrapolatedTime
µµ *
(
µµ* +
time
µµ+ /
-
µµ0 1
m_Start
µµ2 9
,
µµ9 :$
m_PreExtrapolationMode
µµ; Q
,
µµQ R

m_Duration
µµS ]
)
µµ] ^
;
µµ^ _
else
¶¶ 
if
¶¶ 
(
¶¶ $
IsPostExtrapolatedTime
¶¶ +
(
¶¶+ ,
time
¶¶, 0
)
¶¶0 1
)
¶¶1 2
time
·· 
=
·· !
GetExtrapolatedTime
·· *
(
··* +
time
··+ /
-
··0 1
m_Start
··2 9
,
··9 :%
m_PostExtrapolationMode
··; R
,
··R S

m_Duration
··T ^
)
··^ _
;
··_ `
else
¸¸ 
time
¹¹ 
-=
¹¹ 
m_Start
¹¹ 
;
¹¹  
time
¼¼ 
*=
¼¼ 
	timeScale
¼¼ 
;
¼¼ 
time
½½ 
+=
½½ 
clipIn
½½ 
;
½½ 
return
¿¿ 
time
¿¿ 
;
¿¿ 
}
ÀÀ 	
public
ÇÇ 
double
ÇÇ  
ToLocalTimeUnbound
ÇÇ (
(
ÇÇ( )
double
ÇÇ) /
time
ÇÇ0 4
)
ÇÇ4 5
{
ÈÈ 	
return
ÉÉ 
(
ÉÉ 
time
ÉÉ 
-
ÉÉ 
m_Start
ÉÉ "
)
ÉÉ" #
*
ÉÉ$ %
	timeScale
ÉÉ& /
+
ÉÉ0 1
clipIn
ÉÉ2 8
;
ÉÉ8 9
}
ÊÊ 	
internal
ÑÑ 
double
ÑÑ "
FromLocalTimeUnbound
ÑÑ ,
(
ÑÑ, -
double
ÑÑ- 3
time
ÑÑ4 8
)
ÑÑ8 9
{
ÒÒ 	
return
ÓÓ 
(
ÓÓ 
time
ÓÓ 
-
ÓÓ 
clipIn
ÓÓ !
)
ÓÓ! "
/
ÓÓ# $
	timeScale
ÓÓ% .
+
ÓÓ/ 0
m_Start
ÓÓ1 8
;
ÓÓ8 9
}
ÔÔ 	
public
ÙÙ 
AnimationClip
ÙÙ 
animationClip
ÙÙ *
{
ÚÚ 	
get
ÛÛ 
{
ÜÜ 
if
İİ 
(
İİ 
m_Asset
İİ 
==
İİ 
null
İİ #
)
İİ# $
return
ŞŞ 
null
ŞŞ 
;
ŞŞ  
var
àà 
playableAsset
àà !
=
àà" #
m_Asset
àà$ +
as
àà, .$
AnimationPlayableAsset
àà/ E
;
ààE F
return
áá 
playableAsset
áá $
!=
áá% '
null
áá( ,
?
áá- .
playableAsset
áá/ <
.
áá< =
clip
áá= A
:
ááB C
null
ááD H
;
ááH I
}
ââ 
}
ãã 	
static
åå 
double
åå 
SanitizeTimeValue
åå '
(
åå' (
double
åå( .
value
åå/ 4
,
åå4 5
double
åå6 <
defaultValue
åå= I
)
ååI J
{
ææ 	
if
çç 
(
çç 
double
çç 
.
çç 

IsInfinity
çç !
(
çç! "
value
çç" '
)
çç' (
||
çç) +
double
çç, 2
.
çç2 3
IsNaN
çç3 8
(
çç8 9
value
çç9 >
)
çç> ?
)
çç? @
{
èè 
Debug
éé 
.
éé 
LogError
éé 
(
éé 
$str
éé <
)
éé< =
;
éé= >
return
êê 
defaultValue
êê #
;
êê# $
}
ëë 
return
íí 
Math
íí 
.
íí 
Max
íí 
(
íí 
-
íí 
kMaxTimeValue
íí *
,
íí* +
Math
íí, 0
.
íí0 1
Min
íí1 4
(
íí4 5
kMaxTimeValue
íí5 B
,
ííB C
value
ííD I
)
ííI J
)
ííJ K
;
ííK L
}
îî 	
public
óó 
ClipExtrapolation
óó  #
postExtrapolationMode
óó! 6
{
ôô 	
get
õõ 
{
õõ 
return
õõ 
clipCaps
õõ !
.
õõ! "
HasAny
õõ" (
(
õõ( )
ClipCaps
õõ) 1
.
õõ1 2
Extrapolation
õõ2 ?
)
õõ? @
?
õõA B%
m_PostExtrapolationMode
õõC Z
:
õõ[ \
ClipExtrapolation
õõ] n
.
õõn o
None
õõo s
;
õõs t
}
õõu v
internal
öö 
set
öö 
{
öö %
m_PostExtrapolationMode
öö 2
=
öö3 4
clipCaps
öö5 =
.
öö= >
HasAny
öö> D
(
ööD E
ClipCaps
ööE M
.
ööM N
Extrapolation
ööN [
)
öö[ \
?
öö] ^
value
öö_ d
:
ööe f
ClipExtrapolation
öög x
.
ööx y
None
ööy }
;
öö} ~
}öö €
}
÷÷ 	
public
üü 
ClipExtrapolation
üü  "
preExtrapolationMode
üü! 5
{
ıı 	
get
şş 
{
şş 
return
şş 
clipCaps
şş !
.
şş! "
HasAny
şş" (
(
şş( )
ClipCaps
şş) 1
.
şş1 2
Extrapolation
şş2 ?
)
şş? @
?
şşA B$
m_PreExtrapolationMode
şşC Y
:
şşZ [
ClipExtrapolation
şş\ m
.
şşm n
None
şşn r
;
şşr s
}
şşt u
internal
ÿÿ 
set
ÿÿ 
{
ÿÿ $
m_PreExtrapolationMode
ÿÿ 1
=
ÿÿ2 3
clipCaps
ÿÿ4 <
.
ÿÿ< =
HasAny
ÿÿ= C
(
ÿÿC D
ClipCaps
ÿÿD L
.
ÿÿL M
Extrapolation
ÿÿM Z
)
ÿÿZ [
?
ÿÿ\ ]
value
ÿÿ^ c
:
ÿÿd e
ClipExtrapolation
ÿÿf w
.
ÿÿw x
None
ÿÿx |
;
ÿÿ| }
}
ÿÿ~ 
}
€€ 	
internal
‚‚ 
void
‚‚ &
SetPostExtrapolationTime
‚‚ .
(
‚‚. /
double
‚‚/ 5
time
‚‚6 :
)
‚‚: ;
{
ƒƒ 	%
m_PostExtrapolationTime
„„ #
=
„„$ %
time
„„& *
;
„„* +
}
…… 	
internal
‡‡ 
void
‡‡ %
SetPreExtrapolationTime
‡‡ -
(
‡‡- .
double
‡‡. 4
time
‡‡5 9
)
‡‡9 :
{
ˆˆ 	$
m_PreExtrapolationTime
‰‰ "
=
‰‰# $
time
‰‰% )
;
‰‰) *
}
ŠŠ 	
public
‘‘ 
bool
‘‘  
IsExtrapolatedTime
‘‘ &
(
‘‘& '
double
‘‘' -
sequenceTime
‘‘. :
)
‘‘: ;
{
’’ 	
return
““ #
IsPreExtrapolatedTime
““ (
(
““( )
sequenceTime
““) 5
)
““5 6
||
““7 9$
IsPostExtrapolatedTime
““: P
(
““P Q
sequenceTime
““Q ]
)
““] ^
;
““^ _
}
”” 	
public
›› 
bool
›› #
IsPreExtrapolatedTime
›› )
(
››) *
double
››* 0
sequenceTime
››1 =
)
››= >
{
œœ 	
return
 "
preExtrapolationMode
 '
!=
( *
ClipExtrapolation
+ <
.
< =
None
= A
&&
B D
sequenceTime
 
<
 
m_Start
 &
&&
' )
sequenceTime
* 6
>=
7 9
m_Start
: A
-
B C$
m_PreExtrapolationTime
D Z
;
Z [
}
ŸŸ 	
public
¦¦ 
bool
¦¦ $
IsPostExtrapolatedTime
¦¦ *
(
¦¦* +
double
¦¦+ 1
sequenceTime
¦¦2 >
)
¦¦> ?
{
§§ 	
return
¨¨ #
postExtrapolationMode
¨¨ (
!=
¨¨) +
ClipExtrapolation
¨¨, =
.
¨¨= >
None
¨¨> B
&&
¨¨C E
(
©© 
sequenceTime
©© 
>
©© 
end
©©  #
)
©©# $
&&
©©% '
(
©©( )
sequenceTime
©©) 5
-
©©6 7
end
©©8 ;
<
©©< =%
m_PostExtrapolationTime
©©> U
)
©©U V
;
©©V W
}
ªª 	
public
¯¯ 
double
¯¯ 
extrapolatedStart
¯¯ '
{
°° 	
get
±± 
{
²² 
if
³³ 
(
³³ $
m_PreExtrapolationMode
³³ *
!=
³³+ -
ClipExtrapolation
³³. ?
.
³³? @
None
³³@ D
)
³³D E
return
´´ 
m_Start
´´ "
-
´´# $$
m_PreExtrapolationTime
´´% ;
;
´´; <
return
¶¶ 
m_Start
¶¶ 
;
¶¶ 
}
·· 
}
¸¸ 	
public
½½ 
double
½½ "
extrapolatedDuration
½½ *
{
¾¾ 	
get
¿¿ 
{
ÀÀ 
double
ÁÁ 
length
ÁÁ 
=
ÁÁ 

m_Duration
ÁÁ  *
;
ÁÁ* +
if
ÃÃ 
(
ÃÃ %
m_PostExtrapolationMode
ÃÃ +
!=
ÃÃ, .
ClipExtrapolation
ÃÃ/ @
.
ÃÃ@ A
None
ÃÃA E
)
ÃÃE F
length
ÄÄ 
+=
ÄÄ 
Math
ÄÄ "
.
ÄÄ" #
Min
ÄÄ# &
(
ÄÄ& '%
m_PostExtrapolationTime
ÄÄ' >
,
ÄÄ> ?
kMaxTimeValue
ÄÄ@ M
)
ÄÄM N
;
ÄÄN O
if
ÆÆ 
(
ÆÆ $
m_PreExtrapolationMode
ÆÆ *
!=
ÆÆ+ -
ClipExtrapolation
ÆÆ. ?
.
ÆÆ? @
None
ÆÆ@ D
)
ÆÆD E
length
ÇÇ 
+=
ÇÇ $
m_PreExtrapolationTime
ÇÇ 4
;
ÇÇ4 5
return
ÉÉ 
length
ÉÉ 
;
ÉÉ 
}
ÊÊ 
}
ËË 	
static
ÍÍ 
double
ÍÍ !
GetExtrapolatedTime
ÍÍ )
(
ÍÍ) *
double
ÍÍ* 0
time
ÍÍ1 5
,
ÍÍ5 6
ClipExtrapolation
ÍÍ7 H
mode
ÍÍI M
,
ÍÍM N
double
ÍÍO U
duration
ÍÍV ^
)
ÍÍ^ _
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
duration
ÏÏ 
==
ÏÏ 
$num
ÏÏ 
)
ÏÏ 
return
ĞĞ 
$num
ĞĞ 
;
ĞĞ 
switch
ÒÒ 
(
ÒÒ 
mode
ÒÒ 
)
ÒÒ 
{
ÓÓ 
case
ÔÔ 
ClipExtrapolation
ÔÔ &
.
ÔÔ& '
None
ÔÔ' +
:
ÔÔ+ ,
break
ÕÕ 
;
ÕÕ 
case
×× 
ClipExtrapolation
×× &
.
××& '
Loop
××' +
:
××+ ,
if
ØØ 
(
ØØ 
time
ØØ 
<
ØØ 
$num
ØØ  
)
ØØ  !
time
ÙÙ 
=
ÙÙ 
duration
ÙÙ '
-
ÙÙ( )
(
ÙÙ* +
-
ÙÙ+ ,
time
ÙÙ, 0
%
ÙÙ1 2
duration
ÙÙ3 ;
)
ÙÙ; <
;
ÙÙ< =
else
ÚÚ 
if
ÚÚ 
(
ÚÚ 
time
ÚÚ !
>
ÚÚ" #
duration
ÚÚ$ ,
)
ÚÚ, -
time
ÛÛ 
%=
ÛÛ 
duration
ÛÛ  (
;
ÛÛ( )
break
ÜÜ 
;
ÜÜ 
case
ŞŞ 
ClipExtrapolation
ŞŞ &
.
ŞŞ& '
Hold
ŞŞ' +
:
ŞŞ+ ,
if
ßß 
(
ßß 
time
ßß 
<
ßß 
$num
ßß  
)
ßß  !
return
àà 
$num
àà  
;
àà  !
if
áá 
(
áá 
time
áá 
>
áá 
duration
áá '
)
áá' (
return
ââ 
duration
ââ '
;
ââ' (
break
ãã 
;
ãã 
case
åå 
ClipExtrapolation
åå &
.
åå& '
PingPong
åå' /
:
åå/ 0
if
ææ 
(
ææ 
time
ææ 
<
ææ 
$num
ææ  
)
ææ  !
{
çç 
time
èè 
=
èè 
duration
èè '
*
èè( )
$num
èè* +
-
èè, -
(
èè. /
-
èè/ 0
time
èè0 4
%
èè5 6
(
èè7 8
duration
èè8 @
*
èèA B
$num
èèC D
)
èèD E
)
èèE F
;
èèF G
time
éé 
=
éé 
duration
éé '
-
éé( )
Math
éé* .
.
éé. /
Abs
éé/ 2
(
éé2 3
time
éé3 7
-
éé8 9
duration
éé: B
)
ééB C
;
ééC D
}
êê 
else
ëë 
{
ìì 
time
íí 
=
íí 
time
íí #
%
íí$ %
(
íí& '
duration
íí' /
*
íí0 1
$num
íí2 5
)
íí5 6
;
íí6 7
time
îî 
=
îî 
duration
îî '
-
îî( )
Math
îî* .
.
îî. /
Abs
îî/ 2
(
îî2 3
time
îî3 7
-
îî8 9
duration
îî: B
)
îîB C
;
îîC D
}
ïï 
break
ğğ 
;
ğğ 
case
òò 
ClipExtrapolation
òò &
.
òò& '
Continue
òò' /
:
òò/ 0
break
óó 
;
óó 
}
ôô 
return
õõ 
time
õõ 
;
õõ 
}
öö 	
public
‰‰ 
void
‰‰ 
CreateCurves
‰‰  
(
‰‰  !
string
‰‰! '
curvesClipName
‰‰( 6
)
‰‰6 7
{
ŠŠ 	
if
‹‹ 
(
‹‹ 
m_AnimationCurves
‹‹ !
!=
‹‹" $
null
‹‹% )
)
‹‹) *
return
ŒŒ 
;
ŒŒ 
m_AnimationCurves
 
=
 %
TimelineCreateUtilities
  7
.
7 8)
CreateAnimationClipForTrack
8 S
(
S T
string
T Z
.
Z [
IsNullOrEmpty
[ h
(
h i
curvesClipName
i w
)
w x
?
y z!
kDefaultCurvesName{ 
: 
curvesClipName 
, Ÿ
parentTrack  «
,« ¬
true­ ±
)± ²
;² ³
}
 	
void
’’ ,
ISerializationCallbackReceiver
’’ +
.
’’+ ,
OnBeforeSerialize
’’, =
(
’’= >
)
’’> ?
{
““ 	
	m_Version
”” 
=
”” 
k_LatestVersion
”” '
;
””' (
}
•• 	
void
˜˜ ,
ISerializationCallbackReceiver
˜˜ +
.
˜˜+ , 
OnAfterDeserialize
˜˜, >
(
˜˜> ?
)
˜˜? @
{
™™ 	
if
šš 
(
šš 
	m_Version
šš 
<
šš 
k_LatestVersion
šš +
)
šš+ ,
{
›› $
UpgradeToLatestVersion
œœ &
(
œœ& '
)
œœ' (
;
œœ( )
}
 
}
 	
public
¤¤ 
override
¤¤ 
string
¤¤ 
ToString
¤¤ '
(
¤¤' (
)
¤¤( )
{
¥¥ 	
return
¦¦ 
UnityString
¦¦ 
.
¦¦ 
Format
¦¦ %
(
¦¦% &
$str
¦¦& I
,
¦¦I J
displayName
¦¦K V
,
¦¦V W
start
¦¦X ]
,
¦¦] ^
end
¦¦_ b
,
¦¦b c
clipIn
¦¦d j
,
¦¦j k
parentTrack
¦¦l w
)
¦¦w x
;
¦¦x y
}
§§ 	
public
¯¯ 
void
¯¯ 
ConformEaseValues
¯¯ %
(
¯¯% &
)
¯¯& '
{
°° 	
if
±± 
(
±± 
m_EaseInDuration
±±  
+
±±! "
m_EaseOutDuration
±±# 4
>
±±5 6
duration
±±7 ?
)
±±? @
{
²² 
var
³³ 
ratio
³³ 
=
³³ "
CalculateEasingRatio
³³ 0
(
³³0 1
m_EaseInDuration
³³1 A
,
³³A B
m_EaseOutDuration
³³C T
)
³³T U
;
³³U V
m_EaseInDuration
´´  
=
´´! "
duration
´´# +
*
´´, -
ratio
´´. 3
;
´´3 4
m_EaseOutDuration
µµ !
=
µµ" #
duration
µµ$ ,
*
µµ- .
(
µµ/ 0
$num
µµ0 3
-
µµ4 5
ratio
µµ6 ;
)
µµ; <
;
µµ< =
}
¶¶ 
}
·· 	
static
¹¹ 
double
¹¹ "
CalculateEasingRatio
¹¹ *
(
¹¹* +
double
¹¹+ 1
easeIn
¹¹2 8
,
¹¹8 9
double
¹¹: @
easeOut
¹¹A H
)
¹¹H I
{
ºº 	
if
»» 
(
»» 
Math
»» 
.
»» 
Abs
»» 
(
»» 
easeIn
»» 
-
»»  !
easeOut
»»" )
)
»») *
<
»»+ ,
TimeUtility
»»- 8
.
»»8 9
kTimeEpsilon
»»9 E
)
»»E F
return
¼¼ 
$num
¼¼ 
;
¼¼ 
if
¾¾ 
(
¾¾ 
easeIn
¾¾ 
==
¾¾ 
$num
¾¾ 
)
¾¾ 
return
¿¿ 
$num
¿¿ 
;
¿¿ 
if
ÁÁ 
(
ÁÁ 
easeOut
ÁÁ 
==
ÁÁ 
$num
ÁÁ 
)
ÁÁ 
return
ÂÂ 
$num
ÂÂ 
;
ÂÂ 
return
ÄÄ 
easeIn
ÄÄ 
/
ÄÄ 
(
ÄÄ 
easeIn
ÄÄ #
+
ÄÄ$ %
easeOut
ÄÄ& -
)
ÄÄ- .
;
ÄÄ. /
}
ÅÅ 	
internal
ÈÈ 
int
ÈÈ 

DirtyIndex
ÈÈ 
{
ÈÈ  !
get
ÈÈ" %
;
ÈÈ% &
private
ÈÈ' .
set
ÈÈ/ 2
;
ÈÈ2 3
}
ÈÈ4 5
internal
ÉÉ 
void
ÉÉ 
	MarkDirty
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
{
ÊÊ 	

DirtyIndex
ËË 
++
ËË 
;
ËË 
}
ÌÌ 	
void
ÎÎ 
UpdateDirty
ÎÎ 
(
ÎÎ 
double
ÎÎ 
oldValue
ÎÎ  (
,
ÎÎ( )
double
ÎÎ* 0
newValue
ÎÎ1 9
)
ÎÎ9 :
{
ÏÏ 	
if
ĞĞ 
(
ĞĞ 
oldValue
ĞĞ 
!=
ĞĞ 
newValue
ĞĞ $
)
ĞĞ$ %

DirtyIndex
ÑÑ 
++
ÑÑ 
;
ÑÑ 
}
ÒÒ 	
}
×× 
;
×× 
}ØØ ¡3
¢D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationOutputWeightProcessor.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class

 	*
AnimationOutputWeightProcessor


 (
:

) *%
ITimelineEvaluateCallback

+ D
{ 
struct 

WeightInfo 
{ 	
public 
Playable 
mixer !
;! "
public 
Playable 
parentMixer '
;' (
public 
int 
port 
; 
} 	#
AnimationPlayableOutput 
m_Output  (
;( )+
AnimationMotionXToDeltaPlayable '
m_MotionXPlayable( 9
;9 :
readonly 
List 
< 

WeightInfo  
>  !
m_Mixers" *
=+ ,
new- 0
List1 5
<5 6

WeightInfo6 @
>@ A
(A B
)B C
;C D
public *
AnimationOutputWeightProcessor -
(- .#
AnimationPlayableOutput. E
outputF L
)L M
{ 	
m_Output 
= 
output 
; 
output 
. 
	SetWeight 
( 
$num 
) 
;  

FindMixers 
( 
) 
; 
} 	
void 

FindMixers 
( 
) 
{ 	
var   
playable   
=   
m_Output   #
.  # $
GetSourcePlayable  $ 5
(  5 6
)  6 7
;  7 8
var!! 

outputPort!! 
=!! 
m_Output!! %
.!!% &
GetSourceOutputPort!!& 9
(!!9 :
)!!: ;
;!!; <
m_Mixers## 
.## 
Clear## 
(## 
)## 
;## 

FindMixers%% 
(%% 
playable%% 
,%%  

outputPort%%! +
,%%+ ,
playable%%- 5
.%%5 6
GetInput%%6 >
(%%> ?

outputPort%%? I
)%%I J
)%%J K
;%%K L
}&& 	
void)) 

FindMixers)) 
()) 
Playable))  
parent))! '
,))' (
int))) ,
port))- 1
,))1 2
Playable))3 ;
node))< @
)))@ A
{** 	
if++ 
(++ 
!++ 
node++ 
.++ 
IsValid++ 
(++ 
)++ 
)++  
return,, 
;,, 
var.. 
type.. 
=.. 
node.. 
... 
GetPlayableType.. +
(..+ ,
).., -
;..- .
if// 
(// 
type// 
==// 
typeof// 
(// "
AnimationMixerPlayable// 5
)//5 6
||//7 9
type//: >
==//? A
typeof//B H
(//H I'
AnimationLayerMixerPlayable//I d
)//d e
)//e f
{00 
int22 
subCount22 
=22 
node22 #
.22# $
GetInputCount22$ 1
(221 2
)222 3
;223 4
for33 
(33 
int33 
j33 
=33 
$num33 
;33 
j33  !
<33" #
subCount33$ ,
;33, -
j33. /
++33/ 1
)331 2
{44 

FindMixers55 
(55 
node55 #
,55# $
j55% &
,55& '
node55( ,
.55, -
GetInput55- 5
(555 6
j556 7
)557 8
)558 9
;559 :
}66 
var:: 

weightInfo:: 
=::  
new::! $

WeightInfo::% /
{;; 
parentMixer<< 
=<<  !
parent<<" (
,<<( )
mixer== 
=== 
node==  
,==  !
port>> 
=>> 
port>> 
,>>  
}?? 
;?? 
m_Mixers@@ 
.@@ 
Add@@ 
(@@ 

weightInfo@@ '
)@@' (
;@@( )
}AA 
elseBB 
{CC 
varDD 
countDD 
=DD 
nodeDD  
.DD  !
GetInputCountDD! .
(DD. /
)DD/ 0
;DD0 1
forEE 
(EE 
varEE 
iEE 
=EE 
$numEE 
;EE 
iEE  !
<EE" #
countEE$ )
;EE) *
iEE+ ,
++EE, .
)EE. /
{FF 

FindMixersGG 
(GG 
parentGG %
,GG% &
portGG' +
,GG+ ,
nodeGG- 1
.GG1 2
GetInputGG2 :
(GG: ;
iGG; <
)GG< =
)GG= >
;GG> ?
}HH 
}II 
}JJ 	
publicLL 
voidLL 
EvaluateLL 
(LL 
)LL 
{MM 	
floatNN 
weightNN 
=NN 
$numNN 
;NN 
m_OutputOO 
.OO 
	SetWeightOO 
(OO 
$numOO  
)OO  !
;OO! "
forPP 
(PP 
intPP 
iPP 
=PP 
$numPP 
;PP 
iPP 
<PP 
m_MixersPP  (
.PP( )
CountPP) .
;PP. /
iPP0 1
++PP1 3
)PP3 4
{QQ 
varRR 
mixInfoRR 
=RR 
m_MixersRR &
[RR& '
iRR' (
]RR( )
;RR) *
weightSS 
=SS 
WeightUtilitySS &
.SS& '
NormalizeMixerSS' 5
(SS5 6
mixInfoSS6 =
.SS= >
mixerSS> C
)SSC D
;SSD E
mixInfoTT 
.TT 
parentMixerTT #
.TT# $
SetInputWeightTT$ 2
(TT2 3
mixInfoTT3 :
.TT: ;
portTT; ?
,TT? @
weightTTA G
)TTG H
;TTH I
}UU 
ifYY 
(YY 
ApplicationYY 
.YY 
	isPlayingYY %
)YY% &
m_OutputZZ 
.ZZ 
	SetWeightZZ "
(ZZ" #
weightZZ# )
)ZZ) *
;ZZ* +
}[[ 	
}\\ 
}]] ù
‡D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Marker.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

abstract 
class 
Marker  
:! "
ScriptableObject# 3
,3 4
IMarker5 <
{ 
[ 	
SerializeField	 
, 
	TimeField "
," #
Tooltip$ +
(+ ,
$str, A
)A B
]B C
doubleD J
m_TimeK Q
;Q R
public 

TrackAsset 
parent  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
double 
time 
{ 	
get 
{ 
return 
m_Time 
;  
}! "
set 
{ 
m_Time 
= 
Math 
.  
Max  #
(# $
value$ )
,) *
$num+ ,
), -
;- .
}/ 0
} 	
void 
IMarker 
. 

Initialize 
(  

TrackAsset  *
parentTrack+ 6
)6 7
{ 	
if!! 
(!! 
parent!! 
==!! 
null!! 
)!! 
{"" 
parent## 
=## 
parentTrack## $
;##$ %
try$$ 
{%% 
OnInitialize&&  
(&&  !
parentTrack&&! ,
)&&, -
;&&- .
}'' 
catch(( 
((( 
	Exception((  
e((! "
)((" #
{)) 
Debug** 
.** 
LogError** "
(**" #
e**# $
.**$ %
Message**% ,
,**, -
this**. 2
)**2 3
;**3 4
}++ 
},, 
}-- 	
public33 
virtual33 
void33 
OnInitialize33 (
(33( )

TrackAsset33) 3
aPent334 9
)339 :
{44 	
}55 	
}66 
}77 î‡
†D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\DiscreteTime.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
struct 

DiscreteTime 
: 
IComparable %
{ 
const 
double 
k_Tick 
= 
$num #
;# $
public 
static 
readonly 
DiscreteTime +
kMaxTime, 4
=5 6
new7 :
DiscreteTime; G
(G H
Int64H M
.M N
MaxValueN V
)V W
;W X
readonly

 
Int64

 
m_DiscreteTime

 %
;

% &
public 
static 
double 
	tickValue &
{' (
get) ,
{- .
return/ 5
k_Tick6 <
;< =
}> ?
}@ A
public 
DiscreteTime 
( 
DiscreteTime (
time) -
)- .
{ 	
m_DiscreteTime 
= 
time !
.! "
m_DiscreteTime" 0
;0 1
} 	
DiscreteTime 
( 
Int64 
time 
)  
{ 	
m_DiscreteTime 
= 
time !
;! "
} 	
public 
DiscreteTime 
( 
double "
time# '
)' (
{ 	
m_DiscreteTime 
=  
DoubleToDiscreteTime 1
(1 2
time2 6
)6 7
;7 8
} 	
public 
DiscreteTime 
( 
float !
time" &
)& '
{ 	
m_DiscreteTime 
= 
FloatToDiscreteTime 0
(0 1
time1 5
)5 6
;6 7
}   	
public"" 
DiscreteTime"" 
("" 
int"" 
time""  $
)""$ %
{## 	
m_DiscreteTime$$ 
=$$ 
IntToDiscreteTime$$ .
($$. /
time$$/ 3
)$$3 4
;$$4 5
}%% 	
public'' 
DiscreteTime'' 
('' 
int'' 
frame''  %
,''% &
double''' -
fps''. 1
)''1 2
{(( 	
m_DiscreteTime)) 
=))  
DoubleToDiscreteTime)) 1
())1 2
frame))2 7
*))8 9
fps)): =
)))= >
;))> ?
}** 	
public,, 
DiscreteTime,, 
OneTickBefore,, )
(,,) *
),,* +
{-- 	
return.. 
new.. 
DiscreteTime.. #
(..# $
m_DiscreteTime..$ 2
-..3 4
$num..5 6
)..6 7
;..7 8
}// 	
public11 
DiscreteTime11 
OneTickAfter11 (
(11( )
)11) *
{22 	
return33 
new33 
DiscreteTime33 #
(33# $
m_DiscreteTime33$ 2
+333 4
$num335 6
)336 7
;337 8
}44 	
public66 
Int6466 
GetTick66 
(66 
)66 
{77 	
return88 
m_DiscreteTime88 !
;88! "
}99 	
public;; 
static;; 
DiscreteTime;; "
	FromTicks;;# ,
(;;, -
Int64;;- 2
ticks;;3 8
);;8 9
{<< 	
return== 
new== 
DiscreteTime== #
(==# $
ticks==$ )
)==) *
;==* +
}>> 	
public@@ 
int@@ 
	CompareTo@@ 
(@@ 
object@@ #
obj@@$ '
)@@' (
{AA 	
ifBB 
(BB 
objBB 
isBB 
DiscreteTimeBB #
)BB# $
returnCC 
m_DiscreteTimeCC %
.CC% &
	CompareToCC& /
(CC/ 0
(CC0 1
(CC1 2
DiscreteTimeCC2 >
)CC> ?
objCC? B
)CCB C
.CCC D
m_DiscreteTimeCCD R
)CCR S
;CCS T
returnDD 
$numDD 
;DD 
}EE 	
publicGG 
boolGG 
EqualsGG 
(GG 
DiscreteTimeGG '
otherGG( -
)GG- .
{HH 	
returnII 
m_DiscreteTimeII !
==II" $
otherII% *
.II* +
m_DiscreteTimeII+ 9
;II9 :
}JJ 	
publicLL 
overrideLL 
boolLL 
EqualsLL #
(LL# $
objectLL$ *
objLL+ .
)LL. /
{MM 	
ifNN 
(NN 
objNN 
isNN 
DiscreteTimeNN #
)NN# $
returnOO 
EqualsOO 
(OO 
(OO 
DiscreteTimeOO +
)OO+ ,
objOO, /
)OO/ 0
;OO0 1
returnPP 
falsePP 
;PP 
}QQ 	
staticSS 
Int64SS  
DoubleToDiscreteTimeSS )
(SS) *
doubleSS* 0
timeSS1 5
)SS5 6
{TT 	
doubleUU 
numberUU 
=UU 
(UU 
timeUU !
/UU" #
k_TickUU$ *
)UU* +
+UU, -
$numUU. 1
;UU1 2
ifVV 
(VV 
numberVV 
<VV 
Int64VV 
.VV 
MaxValueVV '
&&VV( *
numberVV+ 1
>VV2 3
Int64VV4 9
.VV9 :
MinValueVV: B
)VVB C
returnWW 
(WW 
Int64WW 
)WW 
numberWW $
;WW$ %
throwXX 
newXX '
ArgumentOutOfRangeExceptionXX 1
(XX1 2
$strXX2 T
)XXT U
;XXU V
}YY 	
static[[ 
Int64[[ 
FloatToDiscreteTime[[ (
([[( )
float[[) .
time[[/ 3
)[[3 4
{\\ 	
float]] 
number]] 
=]] 
(]] 
time]]  
/]]! "
(]]# $
float]]$ )
)]]) *
k_Tick]]* 0
)]]0 1
+]]2 3
$num]]4 8
;]]8 9
if^^ 
(^^ 
number^^ 
<^^ 
Int64^^ 
.^^ 
MaxValue^^ '
&&^^( *
number^^+ 1
>^^2 3
Int64^^4 9
.^^9 :
MinValue^^: B
)^^B C
return__ 
(__ 
Int64__ 
)__ 
number__ $
;__$ %
throw`` 
new`` '
ArgumentOutOfRangeException`` 1
(``1 2
$str``2 T
)``T U
;``U V
}aa 	
staticcc 
Int64cc 
IntToDiscreteTimecc &
(cc& '
intcc' *
timecc+ /
)cc/ 0
{dd 	
returnee  
DoubleToDiscreteTimeee '
(ee' (
timeee( ,
)ee, -
;ee- .
}ff 	
statichh 
doublehh 
ToDoublehh 
(hh 
Int64hh $
timehh% )
)hh) *
{ii 	
returnjj 
timejj 
*jj 
k_Tickjj  
;jj  !
}kk 	
staticmm 
floatmm 
ToFloatmm 
(mm 
Int64mm "
timemm# '
)mm' (
{nn 	
returnoo 
(oo 
floatoo 
)oo 
ToDoubleoo "
(oo" #
timeoo# '
)oo' (
;oo( )
}pp 	
publicrr 
staticrr 
explicitrr 
operatorrr '
doublerr( .
(rr. /
DiscreteTimerr/ ;
brr< =
)rr= >
{ss 	
returntt 
ToDoublett 
(tt 
btt 
.tt 
m_DiscreteTimett ,
)tt, -
;tt- .
}uu 	
publicww 
staticww 
explicitww 
operatorww '
floatww( -
(ww- .
DiscreteTimeww. :
bww; <
)ww< =
{xx 	
returnyy 
ToFloatyy 
(yy 
byy 
.yy 
m_DiscreteTimeyy +
)yy+ ,
;yy, -
}zz 	
public|| 
static|| 
explicit|| 
operator|| '
Int64||( -
(||- .
DiscreteTime||. :
b||; <
)||< =
{}} 	
return~~ 
b~~ 
.~~ 
m_DiscreteTime~~ #
;~~# $
} 	
public
 
static
 
explicit
 
operator
 '
DiscreteTime
( 4
(
4 5
double
5 ;
time
< @
)
@ A
{
‚‚ 	
return
ƒƒ 
new
ƒƒ 
DiscreteTime
ƒƒ #
(
ƒƒ# $
time
ƒƒ$ (
)
ƒƒ( )
;
ƒƒ) *
}
„„ 	
public
†† 
static
†† 
explicit
†† 
operator
†† '
DiscreteTime
††( 4
(
††4 5
float
††5 :
time
††; ?
)
††? @
{
‡‡ 	
return
ˆˆ 
new
ˆˆ 
DiscreteTime
ˆˆ #
(
ˆˆ# $
time
ˆˆ$ (
)
ˆˆ( )
;
ˆˆ) *
}
‰‰ 	
public
‹‹ 
static
‹‹ 
implicit
‹‹ 
operator
‹‹ '
DiscreteTime
‹‹( 4
(
‹‹4 5
Int32
‹‹5 :
time
‹‹; ?
)
‹‹? @
{
ŒŒ 	
return
 
new
 
DiscreteTime
 #
(
# $
time
$ (
)
( )
;
) *
}
 	
public
 
static
 
explicit
 
operator
 '
DiscreteTime
( 4
(
4 5
Int64
5 :
time
; ?
)
? @
{
‘‘ 	
return
’’ 
new
’’ 
DiscreteTime
’’ #
(
’’# $
time
’’$ (
)
’’( )
;
’’) *
}
““ 	
public
•• 
static
•• 
bool
•• 
operator
•• #
==
••# %
(
••% &
DiscreteTime
••& 2
lhs
••3 6
,
••6 7
DiscreteTime
••8 D
rhs
••E H
)
••H I
{
–– 	
return
—— 
lhs
—— 
.
—— 
m_DiscreteTime
—— %
==
——& (
rhs
——) ,
.
——, -
m_DiscreteTime
——- ;
;
——; <
}
˜˜ 	
public
šš 
static
šš 
bool
šš 
operator
šš #
!=
šš# %
(
šš% &
DiscreteTime
šš& 2
lhs
šš3 6
,
šš6 7
DiscreteTime
šš8 D
rhs
ššE H
)
ššH I
{
›› 	
return
œœ 
!
œœ 
(
œœ 
lhs
œœ 
==
œœ 
rhs
œœ 
)
œœ  
;
œœ  !
}
 	
public
ŸŸ 
static
ŸŸ 
bool
ŸŸ 
operator
ŸŸ #
>
ŸŸ# $
(
ŸŸ$ %
DiscreteTime
ŸŸ% 1
lhs
ŸŸ2 5
,
ŸŸ5 6
DiscreteTime
ŸŸ7 C
rhs
ŸŸD G
)
ŸŸG H
{
   	
return
¡¡ 
lhs
¡¡ 
.
¡¡ 
m_DiscreteTime
¡¡ %
>
¡¡& '
rhs
¡¡( +
.
¡¡+ ,
m_DiscreteTime
¡¡, :
;
¡¡: ;
}
¢¢ 	
public
¤¤ 
static
¤¤ 
bool
¤¤ 
operator
¤¤ #
<
¤¤# $
(
¤¤$ %
DiscreteTime
¤¤% 1
lhs
¤¤2 5
,
¤¤5 6
DiscreteTime
¤¤7 C
rhs
¤¤D G
)
¤¤G H
{
¥¥ 	
return
¦¦ 
lhs
¦¦ 
.
¦¦ 
m_DiscreteTime
¦¦ %
<
¦¦& '
rhs
¦¦( +
.
¦¦+ ,
m_DiscreteTime
¦¦, :
;
¦¦: ;
}
§§ 	
public
©© 
static
©© 
bool
©© 
operator
©© #
<=
©©# %
(
©©% &
DiscreteTime
©©& 2
lhs
©©3 6
,
©©6 7
DiscreteTime
©©8 D
rhs
©©E H
)
©©H I
{
ªª 	
return
«« 
lhs
«« 
.
«« 
m_DiscreteTime
«« %
<=
««& (
rhs
««) ,
.
««, -
m_DiscreteTime
««- ;
;
««; <
}
¬¬ 	
public
®® 
static
®® 
bool
®® 
operator
®® #
>=
®®# %
(
®®% &
DiscreteTime
®®& 2
lhs
®®3 6
,
®®6 7
DiscreteTime
®®8 D
rhs
®®E H
)
®®H I
{
¯¯ 	
return
°° 
lhs
°° 
.
°° 
m_DiscreteTime
°° %
>=
°°& (
rhs
°°) ,
.
°°, -
m_DiscreteTime
°°- ;
;
°°; <
}
±± 	
public
³³ 
static
³³ 
DiscreteTime
³³ "
operator
³³# +
+
³³+ ,
(
³³, -
DiscreteTime
³³- 9
lhs
³³: =
,
³³= >
DiscreteTime
³³? K
rhs
³³L O
)
³³O P
{
´´ 	
return
µµ 
new
µµ 
DiscreteTime
µµ #
(
µµ# $
lhs
µµ$ '
.
µµ' (
m_DiscreteTime
µµ( 6
+
µµ7 8
rhs
µµ9 <
.
µµ< =
m_DiscreteTime
µµ= K
)
µµK L
;
µµL M
}
¶¶ 	
public
¸¸ 
static
¸¸ 
DiscreteTime
¸¸ "
operator
¸¸# +
-
¸¸+ ,
(
¸¸, -
DiscreteTime
¸¸- 9
lhs
¸¸: =
,
¸¸= >
DiscreteTime
¸¸? K
rhs
¸¸L O
)
¸¸O P
{
¹¹ 	
return
ºº 
new
ºº 
DiscreteTime
ºº #
(
ºº# $
lhs
ºº$ '
.
ºº' (
m_DiscreteTime
ºº( 6
-
ºº7 8
rhs
ºº9 <
.
ºº< =
m_DiscreteTime
ºº= K
)
ººK L
;
ººL M
}
»» 	
public
½½ 
override
½½ 
string
½½ 
ToString
½½ '
(
½½' (
)
½½( )
{
¾¾ 	
return
¿¿ 
m_DiscreteTime
¿¿ !
.
¿¿! "
ToString
¿¿" *
(
¿¿* +
)
¿¿+ ,
;
¿¿, -
}
ÀÀ 	
public
ÂÂ 
override
ÂÂ 
int
ÂÂ 
GetHashCode
ÂÂ '
(
ÂÂ' (
)
ÂÂ( )
{
ÃÃ 	
return
ÄÄ 
m_DiscreteTime
ÄÄ !
.
ÄÄ! "
GetHashCode
ÄÄ" -
(
ÄÄ- .
)
ÄÄ. /
;
ÄÄ/ 0
}
ÅÅ 	
public
ÇÇ 
static
ÇÇ 
DiscreteTime
ÇÇ "
Min
ÇÇ# &
(
ÇÇ& '
DiscreteTime
ÇÇ' 3
lhs
ÇÇ4 7
,
ÇÇ7 8
DiscreteTime
ÇÇ9 E
rhs
ÇÇF I
)
ÇÇI J
{
ÈÈ 	
return
ÉÉ 
new
ÉÉ 
DiscreteTime
ÉÉ #
(
ÉÉ# $
Math
ÉÉ$ (
.
ÉÉ( )
Min
ÉÉ) ,
(
ÉÉ, -
lhs
ÉÉ- 0
.
ÉÉ0 1
m_DiscreteTime
ÉÉ1 ?
,
ÉÉ? @
rhs
ÉÉA D
.
ÉÉD E
m_DiscreteTime
ÉÉE S
)
ÉÉS T
)
ÉÉT U
;
ÉÉU V
}
ÊÊ 	
public
ÌÌ 
static
ÌÌ 
DiscreteTime
ÌÌ "
Max
ÌÌ# &
(
ÌÌ& '
DiscreteTime
ÌÌ' 3
lhs
ÌÌ4 7
,
ÌÌ7 8
DiscreteTime
ÌÌ9 E
rhs
ÌÌF I
)
ÌÌI J
{
ÍÍ 	
return
ÎÎ 
new
ÎÎ 
DiscreteTime
ÎÎ #
(
ÎÎ# $
Math
ÎÎ$ (
.
ÎÎ( )
Max
ÎÎ) ,
(
ÎÎ, -
lhs
ÎÎ- 0
.
ÎÎ0 1
m_DiscreteTime
ÎÎ1 ?
,
ÎÎ? @
rhs
ÎÎA D
.
ÎÎD E
m_DiscreteTime
ÎÎE S
)
ÎÎS T
)
ÎÎT U
;
ÎÎU V
}
ÏÏ 	
public
ÑÑ 
static
ÑÑ 
double
ÑÑ 
SnapToNearestTick
ÑÑ .
(
ÑÑ. /
double
ÑÑ/ 5
time
ÑÑ6 :
)
ÑÑ: ;
{
ÒÒ 	
Int64
ÓÓ 
discreteTime
ÓÓ 
=
ÓÓ  "
DoubleToDiscreteTime
ÓÓ! 5
(
ÓÓ5 6
time
ÓÓ6 :
)
ÓÓ: ;
;
ÓÓ; <
return
ÔÔ 
ToDouble
ÔÔ 
(
ÔÔ 
discreteTime
ÔÔ (
)
ÔÔ( )
;
ÔÔ) *
}
ÕÕ 	
public
×× 
static
×× 
float
×× 
SnapToNearestTick
×× -
(
××- .
float
××. 3
time
××4 8
)
××8 9
{
ØØ 	
Int64
ÙÙ 
discreteTime
ÙÙ 
=
ÙÙ  !
FloatToDiscreteTime
ÙÙ! 4
(
ÙÙ4 5
time
ÙÙ5 9
)
ÙÙ9 :
;
ÙÙ: ;
return
ÚÚ 
ToFloat
ÚÚ 
(
ÚÚ 
discreteTime
ÚÚ '
)
ÚÚ' (
;
ÚÚ( )
}
ÛÛ 	
public
İİ 
static
İİ 
Int64
İİ 
GetNearestTick
İİ *
(
İİ* +
double
İİ+ 1
time
İİ2 6
)
İİ6 7
{
ŞŞ 	
return
ßß "
DoubleToDiscreteTime
ßß '
(
ßß' (
time
ßß( ,
)
ßß, -
;
ßß- .
}
àà 	
}
áá 
}ââ Â›
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\TimeNotificationBehaviour.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class %
TimeNotificationBehaviour *
:+ ,
PlayableBehaviour- >
{ 
struct 
NotificationEntry  
{ 	
public 
double 
time 
; 
public 
INotification  
payload! (
;( )
public 
bool 
notificationFired )
;) *
public 
NotificationFlags $
flags% *
;* +
public 
bool 
triggerInEditor '
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
TriggerInEditMode8 I
)I J
!=K M
$numN O
;O P
}Q R
} 
public 
bool 
prewarm 
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
Retroactive8 C
)C D
!=E G
$numH I
;I J
}K L
} 
public 
bool 
triggerOnce #
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
TriggerOnce8 C
)C D
!=E G
$numH I
;I J
}K L
} 
}   	
readonly"" 
List"" 
<"" 
NotificationEntry"" '
>""' (
m_Notifications"") 8
=""9 :
new""; >
List""? C
<""C D
NotificationEntry""D U
>""U V
(""V W
)""W X
;""X Y
double## 
m_PreviousTime## 
;## 
bool$$ #
m_NeedSortNotifications$$ $
;$$$ %
Playable&& 
m_TimeSource&& 
;&& 
public.. 
Playable.. 

timeSource.. "
{// 	
set00 
{00 
m_TimeSource00 
=00  
value00! &
;00& '
}00( )
}11 	
public:: 
static:: 
ScriptPlayable:: $
<::$ %%
TimeNotificationBehaviour::% >
>::> ?
Create::@ F
(::F G
PlayableGraph::G T
graph::U Z
,::Z [
double::\ b
duration::c k
,::k l
DirectorWrapMode::m }
loopMode	::~ †
)
::† ‡
{;; 	
var<< !
notificationsPlayable<< %
=<<& '
ScriptPlayable<<( 6
<<<6 7%
TimeNotificationBehaviour<<7 P
><<P Q
.<<Q R
Create<<R X
(<<X Y
graph<<Y ^
)<<^ _
;<<_ `!
notificationsPlayable== !
.==! "
SetDuration==" -
(==- .
duration==. 6
)==6 7
;==7 8!
notificationsPlayable>> !
.>>! "
SetTimeWrapMode>>" 1
(>>1 2
loopMode>>2 :
)>>: ;
;>>; <!
notificationsPlayable?? !
.??! "
SetPropagateSetTime??" 5
(??5 6
true??6 :
)??: ;
;??; <
return@@ !
notificationsPlayable@@ (
;@@( )
}AA 	
publicJJ 
voidJJ 
AddNotificationJJ #
(JJ# $
doubleJJ$ *
timeJJ+ /
,JJ/ 0
INotificationJJ1 >
payloadJJ? F
,JJF G
NotificationFlagsJJH Y
flagsJJZ _
=JJ` a
NotificationFlagsJJb s
.JJs t
RetroactiveJJt 
)	JJ €
{KK 	
m_NotificationsLL 
.LL 
AddLL 
(LL  
newLL  #
NotificationEntryLL$ 5
{MM 
timeNN 
=NN 
timeNN 
,NN 
payloadOO 
=OO 
payloadOO !
,OO! "
flagsPP 
=PP 
flagsPP 
}QQ 
)QQ 
;QQ #
m_NeedSortNotificationsRR #
=RR$ %
trueRR& *
;RR* +
}SS 	
publicYY 
overrideYY 
voidYY 
OnGraphStartYY )
(YY) *
PlayableYY* 2
playableYY3 ;
)YY; <
{ZZ 	
SortNotifications[[ 
([[ 
)[[ 
;[[  
var\\ 
currentTime\\ 
=\\ 
playable\\ &
.\\& '
GetTime\\' .
(\\. /
)\\/ 0
;\\0 1
for]] 
(]] 
var]] 
i]] 
=]] 
$num]] 
;]] 
i]] 
<]] 
m_Notifications]]  /
.]]/ 0
Count]]0 5
;]]5 6
i]]7 8
++]]8 :
)]]: ;
{^^ 
if`` 
(`` 
m_Notifications`` #
[``# $
i``$ %
]``% &
.``& '
time``' +
>``, -
currentTime``. 9
&&``: <
!``= >
m_Notifications``> M
[``M N
i``N O
]``O P
.``P Q
triggerOnce``Q \
)``\ ]
{aa 
varbb 
notificationbb $
=bb% &
m_Notificationsbb' 6
[bb6 7
ibb7 8
]bb8 9
;bb9 :
notificationcc  
.cc  !
notificationFiredcc! 2
=cc3 4
falsecc5 :
;cc: ;
m_Notificationsdd #
[dd# $
idd$ %
]dd% &
=dd' (
notificationdd) 5
;dd5 6
}ee 
}ff 
m_PreviousTimegg 
=gg 
playablegg %
.gg% &
GetTimegg& -
(gg- .
)gg. /
;gg/ 0
}hh 	
publicoo 
overrideoo 
voidoo 
OnBehaviourPauseoo -
(oo- .
Playableoo. 6
playableoo7 ?
,oo? @
	FrameDataooA J
infoooK O
)ooO P
{pp 	
ifqq 
(qq 
playableqq 
.qq 
IsDoneqq 
(qq  
)qq  !
)qq! "
{rr 
SortNotificationsss !
(ss! "
)ss" #
;ss# $
fortt 
(tt 
vartt 
itt 
=tt 
$numtt 
;tt 
itt  !
<tt" #
m_Notificationstt$ 3
.tt3 4
Counttt4 9
;tt9 :
itt; <
++tt< >
)tt> ?
{uu 
varvv 
evv 
=vv 
m_Notificationsvv +
[vv+ ,
ivv, -
]vv- .
;vv. /
ifww 
(ww 
!ww 
eww 
.ww 
notificationFiredww ,
)ww, -
{xx 
varyy 
durationyy $
=yy% &
playableyy' /
.yy/ 0
GetDurationyy0 ;
(yy; <
)yy< =
;yy= >
varzz 

canTriggerzz &
=zz' (
m_PreviousTimezz) 7
<=zz8 :
ezz; <
.zz< =
timezz= A
&&zzB D
ezzE F
.zzF G
timezzG K
<=zzL N
durationzzO W
;zzW X
if{{ 
({{ 

canTrigger{{ &
){{& '
{|| 
Trigger_internal}} ,
(}}, -
playable}}- 5
,}}5 6
info}}7 ;
.}}; <
output}}< B
,}}B C
ref}}D G
e}}H I
)}}I J
;}}J K
m_Notifications~~ +
[~~+ ,
i~~, -
]~~- .
=~~/ 0
e~~1 2
;~~2 3
} 
}
€€ 
}
 
}
‚‚ 
}
ƒƒ 	
public
 
override
 
void
 
PrepareFrame
 )
(
) *
Playable
* 2
playable
3 ;
,
; <
	FrameData
= F
info
G K
)
K L
{
 	
if
 
(
 
info
 
.
 
evaluationType
 #
==
$ &
	FrameData
' 0
.
0 1
EvaluationType
1 ?
.
? @
Evaluate
@ H
)
H I
{
‘‘ 
return
’’ 
;
’’ 
}
““ ,
SyncDurationWithExternalSource
•• *
(
••* +
playable
••+ 3
)
••3 4
;
••4 5
SortNotifications
–– 
(
–– 
)
–– 
;
––  
var
—— 
currentTime
—— 
=
—— 
playable
—— &
.
——& '
GetTime
——' .
(
——. /
)
——/ 0
;
——0 1
if
šš 
(
šš 
info
šš 
.
šš 

timeLooped
šš 
)
šš  
{
›› 
var
œœ 
duration
œœ 
=
œœ 
playable
œœ '
.
œœ' (
GetDuration
œœ( 3
(
œœ3 4
)
œœ4 5
;
œœ5 6)
TriggerNotificationsInRange
 +
(
+ ,
m_PreviousTime
, :
,
: ;
duration
< D
,
D E
info
F J
,
J K
playable
L T
,
T U
true
V Z
)
Z [
;
[ \
var
 
dx
 
=
 
playable
 !
.
! "
GetDuration
" -
(
- .
)
. /
-
0 1
m_PreviousTime
2 @
;
@ A
var
ŸŸ 
nFullTimelines
ŸŸ "
=
ŸŸ# $
(
ŸŸ% &
int
ŸŸ& )
)
ŸŸ) *
(
ŸŸ* +
(
ŸŸ+ ,
info
ŸŸ, 0
.
ŸŸ0 1
	deltaTime
ŸŸ1 :
*
ŸŸ; <
info
ŸŸ= A
.
ŸŸA B
effectiveSpeed
ŸŸB P
-
ŸŸQ R
dx
ŸŸS U
)
ŸŸU V
/
ŸŸW X
playable
ŸŸY a
.
ŸŸa b
GetDuration
ŸŸb m
(
ŸŸm n
)
ŸŸn o
)
ŸŸo p
;
ŸŸp q
for
   
(
   
var
   
i
   
=
   
$num
   
;
   
i
    !
<
  " #
nFullTimelines
  $ 2
;
  2 3
i
  4 5
++
  5 7
)
  7 8
{
¡¡ )
TriggerNotificationsInRange
¢¢ /
(
¢¢/ 0
$num
¢¢0 1
,
¢¢1 2
duration
¢¢3 ;
,
¢¢; <
info
¢¢= A
,
¢¢A B
playable
¢¢C K
,
¢¢K L
false
¢¢M R
)
¢¢R S
;
¢¢S T
}
££ )
TriggerNotificationsInRange
¤¤ +
(
¤¤+ ,
$num
¤¤, -
,
¤¤- .
currentTime
¤¤/ :
,
¤¤: ;
info
¤¤< @
,
¤¤@ A
playable
¤¤B J
,
¤¤J K
false
¤¤L Q
)
¤¤Q R
;
¤¤R S
}
¥¥ 
else
¦¦ 
{
§§ 
var
¨¨ 
pt
¨¨ 
=
¨¨ 
playable
¨¨ !
.
¨¨! "
GetTime
¨¨" )
(
¨¨) *
)
¨¨* +
;
¨¨+ ,)
TriggerNotificationsInRange
©© +
(
©©+ ,
m_PreviousTime
©©, :
,
©©: ;
pt
©©< >
,
©©> ?
info
©©@ D
,
©©D E
playable
ªª 
,
ªª 
true
ªª "
)
ªª" #
;
ªª# $
}
«« 
for
­­ 
(
­­ 
var
­­ 
i
­­ 
=
­­ 
$num
­­ 
;
­­ 
i
­­ 
<
­­ 
m_Notifications
­­  /
.
­­/ 0
Count
­­0 5
;
­­5 6
++
­­7 9
i
­­9 :
)
­­: ;
{
®® 
var
¯¯ 
e
¯¯ 
=
¯¯ 
m_Notifications
¯¯ '
[
¯¯' (
i
¯¯( )
]
¯¯) *
;
¯¯* +
if
°° 
(
°° 
e
°° 
.
°° 
notificationFired
°° '
&&
°°( *$
CanRestoreNotification
°°+ A
(
°°A B
e
°°B C
,
°°C D
info
°°E I
,
°°I J
currentTime
°°K V
,
°°V W
m_PreviousTime
°°X f
)
°°f g
)
°°g h
{
±± 
Restore_internal
²² $
(
²²$ %
ref
²²% (
e
²²) *
)
²²* +
;
²²+ ,
m_Notifications
³³ #
[
³³# $
i
³³$ %
]
³³% &
=
³³' (
e
³³) *
;
³³* +
}
´´ 
}
µµ 
m_PreviousTime
·· 
=
·· 
playable
·· %
.
··% &
GetTime
··& -
(
··- .
)
··. /
;
··/ 0
}
¸¸ 	
void
ºº 
SortNotifications
ºº 
(
ºº 
)
ºº  
{
»» 	
if
¼¼ 
(
¼¼ %
m_NeedSortNotifications
¼¼ '
)
¼¼' (
{
½½ 
m_Notifications
¾¾ 
.
¾¾  
Sort
¾¾  $
(
¾¾$ %
(
¾¾% &
x
¾¾& '
,
¾¾' (
y
¾¾) *
)
¾¾* +
=>
¾¾, .
x
¾¾/ 0
.
¾¾0 1
time
¾¾1 5
.
¾¾5 6
	CompareTo
¾¾6 ?
(
¾¾? @
y
¾¾@ A
.
¾¾A B
time
¾¾B F
)
¾¾F G
)
¾¾G H
;
¾¾H I%
m_NeedSortNotifications
¿¿ '
=
¿¿( )
false
¿¿* /
;
¿¿/ 0
}
ÀÀ 
}
ÁÁ 	
static
ÃÃ 
bool
ÃÃ $
CanRestoreNotification
ÃÃ *
(
ÃÃ* +
NotificationEntry
ÃÃ+ <
e
ÃÃ= >
,
ÃÃ> ?
	FrameData
ÃÃ@ I
info
ÃÃJ N
,
ÃÃN O
double
ÃÃP V
currentTime
ÃÃW b
,
ÃÃb c
double
ÃÃd j
previousTime
ÃÃk w
)
ÃÃw x
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
e
ÅÅ 
.
ÅÅ 
triggerOnce
ÅÅ 
)
ÅÅ 
return
ÆÆ 
false
ÆÆ 
;
ÆÆ 
if
ÇÇ 
(
ÇÇ 
info
ÇÇ 
.
ÇÇ 

timeLooped
ÇÇ 
)
ÇÇ  
return
ÈÈ 
true
ÈÈ 
;
ÈÈ 
return
ËË 
previousTime
ËË 
>
ËË  !
currentTime
ËË" -
&&
ËË. 0
currentTime
ËË1 <
<=
ËË= ?
e
ËË@ A
.
ËËA B
time
ËËB F
;
ËËF G
}
ÌÌ 	
void
ÎÎ )
TriggerNotificationsInRange
ÎÎ (
(
ÎÎ( )
double
ÎÎ) /
start
ÎÎ0 5
,
ÎÎ5 6
double
ÎÎ7 =
end
ÎÎ> A
,
ÎÎA B
	FrameData
ÎÎC L
info
ÎÎM Q
,
ÎÎQ R
Playable
ÎÎS [
playable
ÎÎ\ d
,
ÎÎd e
bool
ÎÎf j

checkState
ÎÎk u
)
ÎÎu v
{
ÏÏ 	
if
ĞĞ 
(
ĞĞ 
start
ĞĞ 
<=
ĞĞ 
end
ĞĞ 
)
ĞĞ 
{
ÑÑ 
var
ÒÒ 
playMode
ÒÒ 
=
ÒÒ 
Application
ÒÒ *
.
ÒÒ* +
	isPlaying
ÒÒ+ 4
;
ÒÒ4 5
for
ÓÓ 
(
ÓÓ 
var
ÓÓ 
i
ÓÓ 
=
ÓÓ 
$num
ÓÓ 
;
ÓÓ 
i
ÓÓ  !
<
ÓÓ" #
m_Notifications
ÓÓ$ 3
.
ÓÓ3 4
Count
ÓÓ4 9
;
ÓÓ9 :
i
ÓÓ; <
++
ÓÓ< >
)
ÓÓ> ?
{
ÔÔ 
var
ÕÕ 
e
ÕÕ 
=
ÕÕ 
m_Notifications
ÕÕ +
[
ÕÕ+ ,
i
ÕÕ, -
]
ÕÕ- .
;
ÕÕ. /
if
ÖÖ 
(
ÖÖ 
e
ÖÖ 
.
ÖÖ 
notificationFired
ÖÖ +
&&
ÖÖ, .
(
ÖÖ/ 0

checkState
ÖÖ0 :
||
ÖÖ; =
e
ÖÖ> ?
.
ÖÖ? @
triggerOnce
ÖÖ@ K
)
ÖÖK L
)
ÖÖL M
continue
××  
;
××  !
var
ÙÙ 
notificationTime
ÙÙ (
=
ÙÙ) *
e
ÙÙ+ ,
.
ÙÙ, -
time
ÙÙ- 1
;
ÙÙ1 2
if
ÚÚ 
(
ÚÚ 
e
ÚÚ 
.
ÚÚ 
prewarm
ÚÚ !
&&
ÚÚ" $
notificationTime
ÚÚ% 5
<
ÚÚ6 7
end
ÚÚ8 ;
&&
ÚÚ< >
(
ÚÚ? @
e
ÚÚ@ A
.
ÚÚA B
triggerInEditor
ÚÚB Q
||
ÚÚR T
playMode
ÚÚU ]
)
ÚÚ] ^
)
ÚÚ^ _
{
ÛÛ 
Trigger_internal
ÜÜ (
(
ÜÜ( )
playable
ÜÜ) 1
,
ÜÜ1 2
info
ÜÜ3 7
.
ÜÜ7 8
output
ÜÜ8 >
,
ÜÜ> ?
ref
ÜÜ@ C
e
ÜÜD E
)
ÜÜE F
;
ÜÜF G
m_Notifications
İİ '
[
İİ' (
i
İİ( )
]
İİ) *
=
İİ+ ,
e
İİ- .
;
İİ. /
}
ŞŞ 
else
ßß 
{
àà 
if
áá 
(
áá 
notificationTime
áá ,
<
áá- .
start
áá/ 4
||
áá5 7
notificationTime
áá8 H
>
ááI J
end
ááK N
)
ááN O
continue
ââ $
;
ââ$ %
if
ää 
(
ää 
e
ää 
.
ää 
triggerInEditor
ää -
||
ää. 0
playMode
ää1 9
)
ää9 :
{
åå 
Trigger_internal
ææ ,
(
ææ, -
playable
ææ- 5
,
ææ5 6
info
ææ7 ;
.
ææ; <
output
ææ< B
,
ææB C
ref
ææD G
e
ææH I
)
ææI J
;
ææJ K
m_Notifications
çç +
[
çç+ ,
i
çç, -
]
çç- .
=
çç/ 0
e
çç1 2
;
çç2 3
}
èè 
}
éé 
}
êê 
}
ëë 
}
ìì 	
void
îî ,
SyncDurationWithExternalSource
îî +
(
îî+ ,
Playable
îî, 4
playable
îî5 =
)
îî= >
{
ïï 	
if
ğğ 
(
ğğ 
m_TimeSource
ğğ 
.
ğğ 
IsValid
ğğ $
(
ğğ$ %
)
ğğ% &
)
ğğ& '
{
ññ 
playable
òò 
.
òò 
SetDuration
òò $
(
òò$ %
m_TimeSource
òò% 1
.
òò1 2
GetDuration
òò2 =
(
òò= >
)
òò> ?
)
òò? @
;
òò@ A
playable
óó 
.
óó 
SetTimeWrapMode
óó (
(
óó( )
m_TimeSource
óó) 5
.
óó5 6
GetTimeWrapMode
óó6 E
(
óóE F
)
óóF G
)
óóG H
;
óóH I
}
ôô 
}
õõ 	
static
÷÷ 
void
÷÷ 
Trigger_internal
÷÷ $
(
÷÷$ %
Playable
÷÷% -
playable
÷÷. 6
,
÷÷6 7
PlayableOutput
÷÷8 F
output
÷÷G M
,
÷÷M N
ref
÷÷P S
NotificationEntry
÷÷T e
e
÷÷f g
)
÷÷g h
{
øø 	
output
ùù 
.
ùù 
PushNotification
ùù #
(
ùù# $
playable
ùù$ ,
,
ùù, -
e
ùù. /
.
ùù/ 0
payload
ùù0 7
)
ùù7 8
;
ùù8 9
e
úú 
.
úú 
notificationFired
úú 
=
úú  !
true
úú" &
;
úú& '
}
ûû 	
static
ıı 
void
ıı 
Restore_internal
ıı $
(
ıı$ %
ref
ıı% (
NotificationEntry
ıı) :
e
ıı; <
)
ıı< =
{
şş 	
e
ÿÿ 
.
ÿÿ 
notificationFired
ÿÿ 
=
ÿÿ  !
false
ÿÿ" '
;
ÿÿ' (
}
€€ 	
}
 
}‚‚ ×	
˜D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Attributes\TrackColorAttribute.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
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
 
TrackColorAttribute

 $
:

% &
	Attribute

' 0
{ 
Color 
m_Color 
; 
public 
Color 
color 
{ 	
get 
{ 
return 
m_Color  
;  !
}" #
} 	
public 
TrackColorAttribute "
(" #
float# (
r) *
,* +
float, 1
g2 3
,3 4
float5 :
b; <
)< =
{ 	
m_Color 
= 
new 
Color 
(  
r  !
,! "
g# $
,$ %
b& '
)' (
;( )
} 	
}   
}!! ¡
–D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\TimelineUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
TimelineAsset 
{ 
enum 
Versions 
{ 	
Initial 
= 
$num 
} 	
const		 
int		 
k_LatestVersion		 !
=		" #
(		$ %
int		% (
)		( )
Versions		) 1
.		1 2
Initial		2 9
;		9 :
[

 	
SerializeField

	 
,

 
HideInInspector

 (
]

( )
int

* -
	m_Version

. 7
;

7 8
void "
UpgradeToLatestVersion #
(# $
)$ %
{ 	
}	 

static 
class  
TimelineAssetUpgrade )
{ 	
}	 

} 
} ú
’D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\ClipUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
TimelineClip 
{ 
enum 
Versions 
{ 	
Initial 
= 
$num 
, #
ClipInFromGlobalToLocal #
=$ %
$num& '
}		 	
const

 
int

 
k_LatestVersion

 !
=

" #
(

$ %
int

% (
)

( )
Versions

) 1
.

1 2#
ClipInFromGlobalToLocal

2 I
;

I J
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
void "
UpgradeToLatestVersion #
(# $
)$ %
{ 	
if 
( 
	m_Version 
< 
( 
int  
)  !
Versions! )
.) *#
ClipInFromGlobalToLocal* A
)A B
{ 
TimelineClipUpgrade #
.# $*
UpgradeClipInFromGlobalToLocal$ B
(B C
thisC G
)G H
;H I
} 
} 	
static 
class 
TimelineClipUpgrade (
{ 	
public 
static 
void *
UpgradeClipInFromGlobalToLocal =
(= >
TimelineClip> J
clipK O
)O P
{ 
if 
( 
clip 
. 
m_ClipIn !
>" #
$num$ %
&&& (
clip) -
.- .
m_TimeScale. 9
>: ;
float< A
.A B
EpsilonB I
)I J
clip 
. 
m_ClipIn !
*=" $
clip% )
.) *
m_TimeScale* 5
;5 6
} 
}   	
}!! 
}"" ÃE
˜D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\ScheduleRuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
internal

 
class

 
ScheduleRuntimeClip

 &
:

' (
RuntimeClipBase

) 8
{ 
private 
TimelineClip 
m_Clip #
;# $
private 
Playable 

m_Playable #
;# $
private 
Playable 
m_ParentMixer &
;& '
private 
double 
m_StartDelay #
;# $
private 
double 
m_FinishTail #
;# $
private 
bool 
	m_Started 
=  
false! &
;& '
public 
override 
double 
start $
{ 	
get 
{ 
return 
Math 
. 
Max !
(! "
$num" #
,# $
m_Clip% +
.+ ,
start, 1
-2 3
m_StartDelay4 @
)@ A
;A B
}C D
} 	
public 
override 
double 
duration '
{ 	
get 
{ 
return 
m_Clip 
.  
duration  (
+) *
m_FinishTail+ 7
+8 9
m_Clip: @
.@ A
startA F
-G H
startI N
;N O
}P Q
} 	
public 
void 
SetTime 
( 
double "
time# '
)' (
{ 	

m_Playable   
.   
SetTime   
(   
time   #
)  # $
;  $ %
}!! 	
public## 
TimelineClip## 
clip##  
{##! "
get### &
{##' (
return##) /
m_Clip##0 6
;##6 7
}##8 9
}##: ;
public$$ 
Playable$$ 
mixer$$ 
{$$ 
get$$  #
{$$$ %
return$$& ,
m_ParentMixer$$- :
;$$: ;
}$$< =
}$$> ?
public%% 
Playable%% 
playable%%  
{%%! "
get%%# &
{%%' (
return%%) /

m_Playable%%0 :
;%%: ;
}%%< =
}%%> ?
public'' 
ScheduleRuntimeClip'' "
(''" #
TimelineClip''# /
clip''0 4
,''4 5
Playable''6 >
clipPlayable''? K
,''K L
Playable((# +
parentMixer((, 7
,((7 8
double((9 ?

startDelay((@ J
=((K L
$num((M P
,((P Q
double((R X

finishTail((Y c
=((d e
$num((f i
)((i j
{)) 	
Create** 
(** 
clip** 
,** 
clipPlayable** %
,**% &
parentMixer**' 2
,**2 3

startDelay**4 >
,**> ?

finishTail**@ J
)**J K
;**K L
}++ 	
private-- 
void-- 
Create-- 
(-- 
TimelineClip-- (
clip--) -
,--- .
Playable--/ 7
clipPlayable--8 D
,--D E
Playable--F N
parentMixer--O Z
,--Z [
double.. 

startDelay.. 
,.. 
double.. %

finishTail..& 0
)..0 1
{// 	
m_Clip00 
=00 
clip00 
;00 

m_Playable11 
=11 
clipPlayable11 %
;11% &
m_ParentMixer22 
=22 
parentMixer22 '
;22' (
m_StartDelay33 
=33 

startDelay33 %
;33% &
m_FinishTail44 
=44 

finishTail44 %
;44% &
clipPlayable55 
.55 
Pause55 
(55 
)55  
;55  !
}66 	
public88 
override88 
bool88 
enable88 #
{99 	
set:: 
{;; 
if<< 
(<< 
value<< 
&&<< 

m_Playable<< '
.<<' (
GetPlayState<<( 4
(<<4 5
)<<5 6
!=<<7 9
	PlayState<<: C
.<<C D
Playing<<D K
)<<K L
{== 

m_Playable>> 
.>> 
Play>> #
(>># $
)>>$ %
;>>% &
}?? 
else@@ 
if@@ 
(@@ 
!@@ 
value@@ 
&&@@  "

m_Playable@@# -
.@@- .
GetPlayState@@. :
(@@: ;
)@@; <
!=@@= ?
	PlayState@@@ I
.@@I J
Paused@@J P
)@@P Q
{AA 

m_PlayableBB 
.BB 
PauseBB $
(BB$ %
)BB% &
;BB& '
ifCC 
(CC 
m_ParentMixerCC %
.CC% &
IsValidCC& -
(CC- .
)CC. /
)CC/ 0
m_ParentMixerDD %
.DD% &
SetInputWeightDD& 4
(DD4 5

m_PlayableDD5 ?
,DD? @
$numDDA E
)DDE F
;DDF G
}EE 
	m_StartedGG 
&=GG 
valueGG "
;GG" #
}HH 
}II 	
publicKK 
overrideKK 
voidKK 

EvaluateAtKK '
(KK' (
doubleKK( .
	localTimeKK/ 8
,KK8 9
	FrameDataKK: C
	frameDataKKD M
)KKM N
{LL 	
ifMM 
(MM 
	frameDataMM 
.MM 
timeHeldMM "
)MM" #
{NN 
enableOO 
=OO 
falseOO 
;OO 
returnPP 
;PP 
}QQ 
boolTT 
	forceSeekTT 
=TT 
	frameDataTT &
.TT& '
seekOccurredTT' 3
||TT4 6
	frameDataTT7 @
.TT@ A

timeLoopedTTA K
||TTL N
	frameDataTTO X
.TTX Y
evaluationTypeTTY g
==TTh j
	FrameDataTTk t
.TTt u
EvaluationType	TTu ƒ
.
TTƒ „
Evaluate
TT„ Œ
;
TTŒ 
ifWW 
(WW 
	localTimeWW 
>WW 
startWW !
+WW" #
durationWW$ ,
-WW- .
m_FinishTailWW/ ;
)WW; <
returnXX 
;XX 
float[[ 
weight[[ 
=[[ 
clip[[ 
.[[  
EvaluateMixIn[[  -
([[- .
	localTime[[. 7
)[[7 8
*[[9 :
clip[[; ?
.[[? @
EvaluateMixOut[[@ N
([[N O
	localTime[[O X
)[[X Y
;[[Y Z
if\\ 
(\\ 
mixer\\ 
.\\ 
IsValid\\ 
(\\ 
)\\ 
)\\  
mixer]] 
.]] 
SetInputWeight]] $
(]]$ %
playable]]% -
,]]- .
weight]]/ 5
)]]5 6
;]]6 7
if`` 
(`` 
!`` 
	m_Started`` 
||`` 
	forceSeek`` '
)``' (
{aa 
doublecc 
clipTimecc 
=cc  !
clipcc" &
.cc& '
ToLocalTimecc' 2
(cc2 3
Mathcc3 7
.cc7 8
Maxcc8 ;
(cc; <
	localTimecc< E
,ccE F
clipccG K
.ccK L
startccL Q
)ccQ R
)ccR S
;ccS T
doubleff 

startDelayff !
=ff" #
Mathff$ (
.ff( )
Maxff) ,
(ff, -
clipff- 1
.ff1 2
startff2 7
-ff8 9
	localTimeff: C
,ffC D
$numffE F
)ffF G
*ffH I
clipffJ N
.ffN O
	timeScaleffO X
;ffX Y
doublegg 
durationLocalgg $
=gg% &
m_Clipgg' -
.gg- .
durationgg. 6
*gg7 8
clipgg9 =
.gg= >
	timeScalegg> G
;ggG H
ifhh 
(hh 

m_Playablehh 
.hh 
IsPlayableOfTypehh /
<hh/ 0
AudioClipPlayablehh0 A
>hhA B
(hhB C
)hhC D
)hhD E
(ii 
(ii 
AudioClipPlayableii '
)ii' (

m_Playableii( 2
)ii2 3
.ii3 4
Seekii4 8
(ii8 9
clipTimeii9 A
,iiA B

startDelayiiC M
,iiM N
durationLocaliiO \
)ii\ ]
;ii] ^
	m_Startedkk 
=kk 
truekk  
;kk  !
}ll 
}mm 	
}nn 
}oo åf
˜D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\AnimatorBindingCache.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
class 	 
AnimatorBindingCache
 
{ 
public 
const 
string 
TRPlaceHolder )
=* +
$str, 9
;9 :
public 
const 
string 
ScalePlaceholder ,
=- .
$str/ ?
;? @
struct 
AnimatorEntry 
{ 	
public 
int 

animatorID !
;! "
public 
bool 
applyRootMotion '
;' (
public 
bool 
humanoid  
;  !
} 	
class !
AnimatorEntryComparer #
:$ %
IEqualityComparer& 7
<7 8
AnimatorEntry8 E
>E F
{ 	
public 
bool 
Equals 
( 
AnimatorEntry ,
x- .
,. /
AnimatorEntry0 =
y> ?
)? @
{A B
returnC I
xJ K
.K L

animatorIDL V
==W Y
yZ [
.[ \

animatorID\ f
&&g i
xj k
.k l
applyRootMotionl {
==| ~
y	 €
.
€ 
applyRootMotion
 
&&
‘ “
x
” •
.
• –
humanoid
– 
==
Ÿ ¡
y
¢ £
.
£ ¤
humanoid
¤ ¬
;
¬ ­
}
® ¯
public 
int 
GetHashCode "
(" #
AnimatorEntry# 0
obj1 4
)4 5
{6 7
return8 >
HashUtility? J
.J K
CombineHashK V
(V W
objW Z
.Z [

animatorID[ e
,e f
objg j
.j k
applyRootMotionk z
.z {
GetHashCode	{ †
(
† ‡
)
‡ ˆ
,
ˆ ‰
obj
Š 
.
 
humanoid
 –
.
– —
GetHashCode
— ¢
(
¢ £
)
£ ¤
)
¤ ¥
;
¥ ¦
}
§ ¨
public 
static 
readonly "!
AnimatorEntryComparer# 8
Instance9 A
=B C
newD G!
AnimatorEntryComparerH ]
(] ^
)^ _
;_ `
} 	
readonly   

Dictionary   
<   
AnimatorEntry   )
,  ) *
EditorCurveBinding  + =
[  = >
]  > ?
>  ? @
m_AnimatorCache  A P
=  Q R
new  S V

Dictionary  W a
<  a b
AnimatorEntry  b o
,  o p
EditorCurveBinding	  q ƒ
[
  ƒ „
]
  „ …
>
  … †
(
  † ‡#
AnimatorEntryComparer
  ‡ œ
.
  œ 
Instance
   ¥
)
  ¥ ¦
;
  ¦ §
readonly!! 

Dictionary!! 
<!! 
AnimationClip!! )
,!!) *
EditorCurveBinding!!+ =
[!!= >
]!!> ?
>!!? @
m_ClipCache!!A L
=!!M N
new!!O R

Dictionary!!S ]
<!!] ^
AnimationClip!!^ k
,!!k l
EditorCurveBinding!!m 
[	!! €
]
!!€ 
>
!! ‚
(
!!‚ ƒ
)
!!ƒ „
;
!!„ …
private## 
static## 
readonly## 
EditorCurveBinding##  2
[##2 3
]##3 4
kEmptyArray##5 @
=##A B
new##C F
EditorCurveBinding##G Y
[##Y Z
$num##Z [
]##[ \
;##\ ]
private$$ 
static$$ 
readonly$$ 
List$$  $
<$$$ %
EditorCurveBinding$$% 7
>$$7 8
s_BindingScratchPad$$9 L
=$$M N
new$$O R
List$$S W
<$$W X
EditorCurveBinding$$X j
>$$j k
($$k l
$num$$l p
)$$p q
;$$q r
public&&  
AnimatorBindingCache&& #
(&&# $
)&&$ %
{'' 	
AnimationUtility(( 
.(( 
onCurveWasModified(( /
+=((0 2
OnCurveWasModified((3 E
;((E F
})) 	
public++ 
EditorCurveBinding++ !
[++! "
]++" #
GetAnimatorBindings++$ 7
(++7 8

GameObject++8 B

gameObject++C M
)++M N
{,, 	
if-- 
(-- 

gameObject-- 
==-- 
null-- "
)--" #
return.. 
kEmptyArray.. "
;.." #
Animator00 
animator00 
=00 

gameObject00  *
.00* +
GetComponent00+ 7
<007 8
Animator008 @
>00@ A
(00A B
)00B C
;00C D
if11 
(11 
animator11 
==11 
null11  
)11  !
return22 
kEmptyArray22 "
;22" #
AnimatorEntry44 
entry44 
=44  !
new44" %
AnimatorEntry44& 3
(443 4
)444 5
{55 

animatorID66 
=66 
animator66 %
.66% &
GetInstanceID66& 3
(663 4
)664 5
,665 6
applyRootMotion77 
=77  !
animator77" *
.77* +
applyRootMotion77+ :
,77: ;
humanoid88 
=88 
animator88 #
.88# $
isHuman88$ +
}99 
;99 
EditorCurveBinding;; 
[;; 
];;  
result;;! '
=;;( )
null;;* .
;;;. /
if<< 
(<< 
m_AnimatorCache<< 
.<<  
TryGetValue<<  +
(<<+ ,
entry<<, 1
,<<1 2
out<<3 6
result<<7 =
)<<= >
)<<> ?
return== 
result== 
;== 
s_BindingScratchPad?? 
.??  
Clear??  %
(??% &
)??& '
;??' (
varBB 

transformsBB 
=BB 
animatorBB %
.BB% &#
GetComponentsInChildrenBB& =
<BB= >
	TransformBB> G
>BBG H
(BBH I
)BBI J
;BBJ K
foreachCC 
(CC 
varCC 
tCC 
inCC 

transformsCC (
)CC( )
{DD 
ifEE 
(EE 
animatorEE 
.EE 
IsBoneTransformEE ,
(EE, -
tEE- .
)EE. /
)EE/ 0
s_BindingScratchPadFF '
.FF' (
AddFF( +
(FF+ ,
EditorCurveBindingFF, >
.FF> ?

FloatCurveFF? I
(FFI J
AnimationUtilityFFJ Z
.FFZ ["
CalculateTransformPathFF[ q
(FFq r
tFFr s
,FFs t
animatorFFu }
.FF} ~
	transform	FF~ ‡
)
FF‡ ˆ
,
FFˆ ‰
typeof
FFŠ 
(
FF ‘
	Transform
FF‘ š
)
FFš ›
,
FF› œ
TRPlaceHolder
FF ª
)
FFª «
)
FF« ¬
;
FF¬ ­
}GG 
varII 
streamBindingsII 
=II  
AnimationUtilityII! 1
.II1 2&
GetAnimationStreamBindingsII2 L
(IIL M
animatorIIM U
.IIU V

gameObjectIIV `
)II` a
;IIa b#
UpdateTransformBindingsJJ #
(JJ# $
streamBindingsJJ$ 2
)JJ2 3
;JJ3 4
s_BindingScratchPadKK 
.KK  
AddRangeKK  (
(KK( )
streamBindingsKK) 7
)KK7 8
;KK8 9
resultMM 
=MM 
newMM 
EditorCurveBindingMM +
[MM+ ,
s_BindingScratchPadMM, ?
.MM? @
CountMM@ E
]MME F
;MMF G
s_BindingScratchPadNN 
.NN  
CopyToNN  &
(NN& '
resultNN' -
)NN- .
;NN. /
m_AnimatorCacheOO 
[OO 
entryOO !
]OO! "
=OO# $
resultOO% +
;OO+ ,
returnPP 
resultPP 
;PP 
}QQ 	
publicSS 
EditorCurveBindingSS !
[SS! "
]SS" #
GetCurveBindingsSS$ 4
(SS4 5
AnimationClipSS5 B
clipSSC G
)SSG H
{TT 	
ifUU 
(UU 
clipUU 
==UU 
nullUU 
)UU 
returnVV 
kEmptyArrayVV "
;VV" #
EditorCurveBindingXX 
[XX 
]XX  
resultXX! '
;XX' (
ifYY 
(YY 
!YY 
m_ClipCacheYY 
.YY 
TryGetValueYY (
(YY( )
clipYY) -
,YY- .
outYY/ 2
resultYY3 9
)YY9 :
)YY: ;
{ZZ 
result[[ 
=[[ 
AnimationMode[[ &
.[[& '
GetCurveBindings[[' 7
([[7 8
clip[[8 <
)[[< =
;[[= >#
UpdateTransformBindings\\ '
(\\' (
result\\( .
)\\. /
;\\/ 0
m_ClipCache]] 
[]] 
clip]]  
]]]  !
=]]" #
result]]$ *
;]]* +
}^^ 
return`` 
result`` 
;`` 
}aa 	
privatecc 
staticcc 
voidcc #
UpdateTransformBindingscc 3
(cc3 4
EditorCurveBindingcc4 F
[ccF G
]ccG H
bindingsccI Q
)ccQ R
{dd 	
foree 
(ee 
intee 
iee 
=ee 
$numee 
;ee 
iee 
<ee 
bindingsee  (
.ee( )
Lengthee) /
;ee/ 0
iee1 2
++ee2 4
)ee4 5
{ff 
vargg 
bindinggg 
=gg 
bindingsgg &
[gg& '
igg' (
]gg( )
;gg) *
ifhh 
(hh %
AnimationPreviewUtilitieshh -
.hh- .
IsRootMotionhh. :
(hh: ;
bindinghh; B
)hhB C
)hhC D
{ii 
bindingjj 
.jj 
typejj  
=jj! "
typeofjj# )
(jj) *
	Transformjj* 3
)jj3 4
;jj4 5
bindingkk 
.kk 
propertyNamekk (
=kk) *
TRPlaceHolderkk+ 8
;kk8 9
}ll 
elsemm 
ifmm 
(mm 
typeofmm 
(mm  
	Transformmm  )
)mm) *
.mm* +
IsAssignableFrommm+ ;
(mm; <
bindingmm< C
.mmC D
typemmD H
)mmH I
&&mmJ L
(mmM N
bindingmmN U
.mmU V
propertyNamemmV b
.mmb c

StartsWithmmc m
(mmm n
$str	mmn €
)
mm€ 
||
mm‚ „
binding
mm… Œ
.
mmŒ 
propertyName
mm ™
.
mm™ š

StartsWith
mmš ¤
(
mm¤ ¥
$str
mm¥ ·
)
mm· ¸
)
mm¸ ¹
)
mm¹ º
{nn 
bindingoo 
.oo 
propertyNameoo (
=oo) *
TRPlaceHolderoo+ 8
;oo8 9
}pp 
elseqq 
ifqq 
(qq 
typeofqq 
(qq  
	Transformqq  )
)qq) *
.qq* +
IsAssignableFromqq+ ;
(qq; <
bindingqq< C
.qqC D
typeqqD H
)qqH I
&&qqJ L
bindingqqM T
.qqT U
propertyNameqqU a
.qqa b

StartsWithqqb l
(qql m
$strqqm |
)qq| }
)qq} ~
{rr 
bindingss 
.ss 
propertyNamess (
=ss) *
ScalePlaceholderss+ ;
;ss; <
}tt 
bindingsuu 
[uu 
iuu 
]uu 
=uu 
bindinguu %
;uu% &
}vv 
}ww 	
publicyy 
voidyy 
Clearyy 
(yy 
)yy 
{zz 	
m_AnimatorCache{{ 
.{{ 
Clear{{ !
({{! "
){{" #
;{{# $
m_ClipCache|| 
.|| 
Clear|| 
(|| 
)|| 
;||  
}}} 	
void 
OnCurveWasModified 
(  
AnimationClip  -
clip. 2
,2 3
EditorCurveBinding4 F
bindingG N
,N O
AnimationUtilityP `
.` a
CurveModifiedTypea r
modifications 
)	 €
{
€€ 	
m_ClipCache
 
.
 
Remove
 
(
 
clip
 #
)
# $
;
$ %
}
‚‚ 	
}
ƒƒ 
}„„ “	
œD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
DisplayName 
( 
$str "
)" #
]# $
class 	#
ActivationPlayableAsset
 !
:" #
PlayableAsset$ 1
,1 2
ITimelineClipAsset3 E
{ 
public 
ClipCaps 
clipCaps  
{! "
get# &
{' (
return) /
ClipCaps0 8
.8 9
None9 =
;= >
}? @
}A B
public 
override 
Playable  
CreatePlayable! /
(/ 0
PlayableGraph0 =
graph> C
,C D

GameObjectE O
goP R
)R S
{ 	
return 
Playable 
. 
Create "
(" #
graph# (
)( )
;) *
} 	
} 
} İ[
‹D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\MarkerList.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
struct 


MarkerList 
: *
ISerializationCallbackReceiver 6
{		 
[

 	
SerializeField

	 
,

 
HideInInspector

 (
]

( )
List

* .
<

. /
ScriptableObject

/ ?
>

? @
	m_Objects

A J
;

J K
[ 	
HideInInspector	 
, 
NonSerialized '
]' (
List) -
<- .
IMarker. 5
>5 6
m_Cache7 >
;> ?
bool 
m_CacheDirty 
; 
bool 
m_HasNotifications 
;  
public 
List 
< 
IMarker 
> 
markers $
{ 	
get 
{ 

BuildCache 
( 
) 
; 
return 
m_Cache 
; 
} 
} 	
public 

MarkerList 
( 
int 
capacity &
)& '
{ 	
	m_Objects 
= 
new 
List  
<  !
ScriptableObject! 1
>1 2
(2 3
capacity3 ;
); <
;< =
m_Cache 
= 
new 
List 
< 
IMarker &
>& '
(' (
capacity( 0
)0 1
;1 2
m_CacheDirty 
= 
true 
;  
m_HasNotifications 
=  
false! &
;& '
} 	
public   
void   
Add   
(   
ScriptableObject   (
item  ) -
)  - .
{!! 	
if"" 
("" 
item"" 
=="" 
null"" 
)"" 
return## 
;## 
	m_Objects%% 
.%% 
Add%% 
(%% 
item%% 
)%% 
;%%  
m_CacheDirty&& 
=&& 
true&& 
;&&  
}'' 	
public)) 
bool)) 
Remove)) 
()) 
IMarker)) "
item))# '
)))' (
{** 	
if++ 
(++ 
!++ 
(++ 
item++ 
is++ 
ScriptableObject++ *
)++* +
)+++ ,
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$str,,4 ^
),,^ _
;,,_ `
return-- 
Remove-- 
(-- 
(-- 
ScriptableObject-- +
)--+ ,
item--, 0
,--0 1
item--2 6
.--6 7
parent--7 =
.--= >
timelineAsset--> K
,--K L
item--M Q
.--Q R
parent--R X
)--X Y
;--Y Z
}.. 	
public00 
bool00 
Remove00 
(00 
ScriptableObject00 +
item00, 0
,000 1
TimelineAsset002 ?
timelineAsset00@ M
,00M N
PlayableAsset00O \
thingToDirty00] i
)00i j
{11 	
if22 
(22 
!22 
	m_Objects22 
.22 
Contains22 #
(22# $
item22$ (
)22( )
)22) *
return22+ 1
false222 7
;227 8
TimelineUndo44 
.44 
PushUndo44 !
(44! "
thingToDirty44" .
,44. /
$str440 ?
)44? @
;44@ A
	m_Objects55 
.55 
Remove55 
(55 
item55 !
)55! "
;55" #
m_CacheDirty66 
=66 
true66 
;66  
TimelineUndo77 
.77 
PushDestroyUndo77 (
(77( )
timelineAsset77) 6
,776 7
thingToDirty778 D
,77D E
item77F J
)77J K
;77K L
return88 
true88 
;88 
}99 	
public;; 
void;; 
Clear;; 
(;; 
);; 
{<< 	
	m_Objects== 
.== 
Clear== 
(== 
)== 
;== 
m_CacheDirty>> 
=>> 
true>> 
;>>  
}?? 	
publicAA 
boolAA 
ContainsAA 
(AA 
ScriptableObjectAA -
itemAA. 2
)AA2 3
{BB 	
returnCC 
	m_ObjectsCC 
.CC 
ContainsCC %
(CC% &
itemCC& *
)CC* +
;CC+ ,
}DD 	
publicFF 
IEnumerableFF 
<FF 
IMarkerFF "
>FF" #

GetMarkersFF$ .
(FF. /
)FF/ 0
{GG 	
returnHH 
markersHH 
;HH 
}II 	
publicKK 
intKK 
CountKK 
{LL 	
getMM 
{MM 
returnMM 
markersMM  
.MM  !
CountMM! &
;MM& '
}MM( )
}NN 	
publicPP 
IMarkerPP 
thisPP 
[PP 
intPP 
idxPP  #
]PP# $
{QQ 	
getRR 
{SS 
returnTT 
markersTT 
[TT 
idxTT "
]TT" #
;TT# $
}UU 
}VV 	
publicXX 
ListXX 
<XX 
ScriptableObjectXX $
>XX$ %
GetRawMarkerListXX& 6
(XX6 7
)XX7 8
{YY 	
returnZZ 
	m_ObjectsZZ 
;ZZ 
}[[ 	
public]] 
IMarker]] 
CreateMarker]] #
(]]# $
Type]]$ (
type]]) -
,]]- .
double]]/ 5
time]]6 :
,]]: ;

TrackAsset]]< F
owner]]G L
)]]L M
{^^ 	
if__ 
(__ 
!__ 
typeof__ 
(__ 
ScriptableObject__ (
)__( )
.__) *
IsAssignableFrom__* :
(__: ;
type__; ?
)__? @
||__A C
!__D E
typeof__E K
(__K L
IMarker__L S
)__S T
.__T U
IsAssignableFrom__U e
(__e f
type__f j
)__j k
)__k l
{`` 
throwaa 
newaa %
InvalidOperationExceptionaa 3
(aa3 4
$strbb e
)bbe f
;bbf g
}cc 
ifdd 
(dd 
!dd 
ownerdd 
.dd !
supportsNotificationsdd ,
&&dd- /
typeofdd0 6
(dd6 7
INotificationdd7 D
)ddD E
.ddE F
IsAssignableFromddF V
(ddV W
typeddW [
)dd[ \
)dd\ ]
{ee 
throwff 
newff %
InvalidOperationExceptionff 3
(ff3 4
$str	gg ‚
)
gg‚ ƒ
;
ggƒ „
}hh 
varjj 
markerSOjj 
=jj 
ScriptableObjectjj +
.jj+ ,
CreateInstancejj, :
(jj: ;
typejj; ?
)jj? @
;jj@ A
varkk 
markerkk 
=kk 
(kk 
IMarkerkk !
)kk! "
markerSOkk" *
;kk* +
markerll 
.ll 
timell 
=ll 
timell 
;ll #
TimelineCreateUtilitiesnn #
.nn# $
SaveAssetIntoObjectnn$ 7
(nn7 8
markerSOnn8 @
,nn@ A
ownernnB G
)nnG H
;nnH I
TimelineUndooo 
.oo %
RegisterCreatedObjectUndooo 2
(oo2 3
markerSOoo3 ;
,oo; <
$stroo= F
+ooG H
typeooI M
.ooM N
NameooN R
)ooR S
;ooS T
TimelineUndopp 
.pp 
PushUndopp !
(pp! "
ownerpp" '
,pp' (
$strpp) 2
+pp3 4
typepp5 9
.pp9 :
Namepp: >
)pp> ?
;pp? @
Addrr 
(rr 
markerSOrr 
)rr 
;rr 
markerss 
.ss 

Initializess 
(ss 
ownerss #
)ss# $
;ss$ %
returnuu 
markeruu 
;uu 
}vv 	
publicxx 
boolxx 
HasNotificationsxx $
(xx$ %
)xx% &
{yy 	

BuildCachezz 
(zz 
)zz 
;zz 
return{{ 
m_HasNotifications{{ %
;{{% &
}|| 	
void~~ *
ISerializationCallbackReceiver~~ +
.~~+ ,
OnBeforeSerialize~~, =
(~~= >
)~~> ?
{ 	
}
€€ 	
void
‚‚ ,
ISerializationCallbackReceiver
‚‚ +
.
‚‚+ , 
OnAfterDeserialize
‚‚, >
(
‚‚> ?
)
‚‚? @
{
ƒƒ 	
for
…… 
(
…… 
int
…… 
i
…… 
=
…… 
	m_Objects
…… "
.
……" #
Count
……# (
-
……) *
$num
……+ ,
;
……, -
i
……. /
>=
……0 2
$num
……3 4
;
……4 5
i
……6 7
--
……7 9
)
……9 :
{
†† 
object
‡‡ 
o
‡‡ 
=
‡‡ 
	m_Objects
‡‡ $
[
‡‡$ %
i
‡‡% &
]
‡‡& '
;
‡‡' (
if
ˆˆ 
(
ˆˆ 
o
ˆˆ 
==
ˆˆ 
null
ˆˆ 
)
ˆˆ 
{
‰‰ 
Debug
ŠŠ 
.
ŠŠ 

LogWarning
ŠŠ $
(
ŠŠ$ %
$str
ŠŠ% e
)
ŠŠe f
;
ŠŠf g
	m_Objects
‹‹ 
.
‹‹ 
RemoveAt
‹‹ &
(
‹‹& '
i
‹‹' (
)
‹‹( )
;
‹‹) *
}
ŒŒ 
}
 
m_CacheDirty
 
=
 
true
 
;
  
}
 	
void
’’ 

BuildCache
’’ 
(
’’ 
)
’’ 
{
““ 	
if
”” 
(
”” 
m_CacheDirty
”” 
)
”” 
{
•• 
m_Cache
–– 
=
–– 
new
–– 
List
–– "
<
––" #
IMarker
––# *
>
––* +
(
––+ ,
	m_Objects
––, 5
.
––5 6
Count
––6 ;
)
––; <
;
––< = 
m_HasNotifications
—— "
=
——# $
false
——% *
;
——* +
foreach
˜˜ 
(
˜˜ 
var
˜˜ 
o
˜˜ 
in
˜˜ !
	m_Objects
˜˜" +
)
˜˜+ ,
{
™™ 
if
šš 
(
šš 
o
šš 
!=
šš 
null
šš !
)
šš! "
{
›› 
m_Cache
œœ 
.
œœ  
Add
œœ  #
(
œœ# $
o
œœ$ %
as
œœ& (
IMarker
œœ) 0
)
œœ0 1
;
œœ1 2
if
 
(
 
o
 
is
  
INotification
! .
)
. /
{
  
m_HasNotifications
ŸŸ .
=
ŸŸ/ 0
true
ŸŸ1 5
;
ŸŸ5 6
}
   
}
¡¡ 
}
¢¢ 
m_CacheDirty
¤¤ 
=
¤¤ 
false
¤¤ $
;
¤¤$ %
}
¥¥ 
}
¦¦ 	
}
§§ 
}¨¨ ‚9
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimelineUndo.cs
	namespace

 	
UnityEngine
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
class 
TimelineUndo 
{ 
public 
static 
void 
PushDestroyUndo *
(* +
TimelineAsset+ 8
timeline9 A
,A B
ObjectC I
thingToDirtyJ V
,V W
ObjectX ^
objectToDestroy_ n
)n o
{ 	
if 
( 
objectToDestroy 
==  "
null# '
||( *
!+ ,
DisableUndoGuard, <
.< =

enableUndo= G
)G H
return 
; 
if 
( 
thingToDirty 
!= 
null  $
)$ %
EditorUtility 
. 
SetDirty &
(& '
thingToDirty' 3
)3 4
;4 5
if 
( 
timeline 
!= 
null  
)  !
EditorUtility 
. 
SetDirty &
(& '
timeline' /
)/ 0
;0 1
Undo 
. "
DestroyObjectImmediate '
(' (
objectToDestroy( 7
)7 8
;8 9
} 	
[!! 	
Conditional!!	 
(!! 
$str!! #
)!!# $
]!!$ %
public"" 
static"" 
void"" 
PushUndo"" #
(""# $
Object""$ *
[""* +
]""+ ,
thingsToDirty""- :
,"": ;
string""< B
	operation""C L
)""L M
{## 	
if%% 
(%% 
thingsToDirty%% 
==%%  
null%%! %
||%%& (
!%%) *
DisableUndoGuard%%* :
.%%: ;

enableUndo%%; E
)%%E F
return&& 
;&& 
for(( 
((( 
var(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
thingsToDirty((  -
.((- .
Length((. 4
;((4 5
i((6 7
++((7 9
)((9 :
{)) 
if** 
(** 
thingsToDirty** !
[**! "
i**" #
]**# $
is**% '

TrackAsset**( 2
track**3 8
)**8 9
track++ 
.++ 
	MarkDirty++ #
(++# $
)++$ %
;++% &
EditorUtility,, 
.,, 
SetDirty,, &
(,,& '
thingsToDirty,,' 4
[,,4 5
i,,5 6
],,6 7
),,7 8
;,,8 9
}-- 
Undo.. 
... &
RegisterCompleteObjectUndo.. +
(..+ ,
thingsToDirty.., 9
,..9 :
UndoName..; C
(..C D
	operation..D M
)..M N
)..N O
;..O P
}00 	
[22 	
Conditional22	 
(22 
$str22 #
)22# $
]22$ %
public33 
static33 
void33 
PushUndo33 #
(33# $
Object33$ *
thingToDirty33+ 7
,337 8
string339 ?
	operation33@ I
)33I J
{44 	
if66 
(66 
thingToDirty66 
!=66 
null66  $
&&66% '
DisableUndoGuard66( 8
.668 9

enableUndo669 C
)66C D
{77 
var88 
track88 
=88 
thingToDirty88 (
as88) +

TrackAsset88, 6
;886 7
if99 
(99 
track99 
!=99 
null99 !
)99! "
track:: 
.:: 
	MarkDirty:: #
(::# $
)::$ %
;::% &
EditorUtility<< 
.<< 
SetDirty<< &
(<<& '
thingToDirty<<' 3
)<<3 4
;<<4 5
Undo== 
.== &
RegisterCompleteObjectUndo== /
(==/ 0
thingToDirty==0 <
,==< =
UndoName==> F
(==F G
	operation==G P
)==P Q
)==Q R
;==R S
}>> 
}@@ 	
[BB 	
ConditionalBB	 
(BB 
$strBB #
)BB# $
]BB$ %
publicCC 
staticCC 
voidCC %
RegisterCreatedObjectUndoCC 4
(CC4 5
ObjectCC5 ;
thingCreatedCC< H
,CCH I
stringCCJ P
	operationCCQ Z
)CCZ [
{DD 	
ifFF 
(FF 
DisableUndoGuardFF  
.FF  !

enableUndoFF! +
)FF+ ,
{GG 
UndoHH 
.HH %
RegisterCreatedObjectUndoHH .
(HH. /
thingCreatedHH/ ;
,HH; <
UndoNameHH= E
(HHE F
	operationHHF O
)HHO P
)HHP Q
;HHQ R
}II 
}KK 	
privateMM 
staticMM 
stringMM 
UndoNameMM &
(MM& '
stringMM' -
nameMM. 2
)MM2 3
=>MM4 6
$strMM7 B
+MMC D
nameMME I
;MMI J
internalPP 
structPP 
DisableUndoGuardPP (
:PP) *
IDisposablePP+ 6
{QQ 	
internalRR 
staticRR 
boolRR  

enableUndoRR! +
=RR, -
trueRR. 2
;RR2 3
staticSS 
readonlySS 
StackSS !
<SS! "
boolSS" &
>SS& '
m_UndoStateStackSS( 8
=SS9 :
newSS; >
StackSS? D
<SSD E
boolSSE I
>SSI J
(SSJ K
)SSK L
;SSL M
boolTT 

m_DisposedTT 
;TT 
publicUU 
DisableUndoGuardUU #
(UU# $
boolUU$ (
disableUU) 0
)UU0 1
{VV 

m_DisposedWW 
=WW 
falseWW "
;WW" #
m_UndoStateStackXX  
.XX  !
PushXX! %
(XX% &

enableUndoXX& 0
)XX0 1
;XX1 2

enableUndoYY 
=YY 
!YY 
disableYY %
;YY% &
}ZZ 
public\\ 
void\\ 
Dispose\\ 
(\\  
)\\  !
{]] 
if^^ 
(^^ 
!^^ 

m_Disposed^^ 
)^^  
{__ 
if`` 
(`` 
m_UndoStateStack`` (
.``( )
Count``) .
==``/ 1
$num``2 3
)``3 4
{aa 
Debugbb 
.bb 
LogErrorbb &
(bb& '
$strbb' I
)bbI J
;bbJ K

enableUndocc "
=cc# $
truecc% )
;cc) *
returndd 
;dd 
}ee 

enableUndoff 
=ff  
m_UndoStateStackff! 1
.ff1 2
Popff2 5
(ff5 6
)ff6 7
;ff7 8

m_Disposedgg 
=gg  
truegg! %
;gg% &
}hh 
}ii 
}jj 	
}ll 
}mm ä_
›D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ParticleControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

class		 #
ParticleControlPlayable		 (
:		) *
PlayableBehaviour		+ <
{

 
const 
float 

kUnsetTime 
=  
-! "
$num" #
;# $
float 

m_LastTime 
= 

kUnsetTime %
;% &
uint 
m_RandomSeed 
= 
$num 
; 
float 
m_SystemTime 
; 
public 
static 
ScriptPlayable $
<$ %#
ParticleControlPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
ParticleSystemZ h
	componenti r
,r s
uintt x

randomSeed	y ƒ
)
ƒ „
{ 	
if 
( 
	component 
== 
null !
)! "
return 
ScriptPlayable %
<% &#
ParticleControlPlayable& =
>= >
.> ?
Null? C
;C D
var 
handle 
= 
ScriptPlayable '
<' (#
ParticleControlPlayable( ?
>? @
.@ A
CreateA G
(G H
graphH M
)M N
;N O
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
	component- 6
,6 7

randomSeed8 B
)B C
;C D
return   
handle   
;   
}!! 	
public&& 
ParticleSystem&& 
particleSystem&& ,
{&&- .
get&&/ 2
;&&2 3
private&&4 ;
set&&< ?
;&&? @
}&&A B
public-- 
void-- 

Initialize-- 
(-- 
ParticleSystem-- -
ps--. 0
,--0 1
uint--2 6

randomSeed--7 A
)--A B
{.. 	
m_RandomSeed// 
=// 
Math// 
.//  
Max//  #
(//# $
$num//$ %
,//% &

randomSeed//' 1
)//1 2
;//2 3
particleSystem00 
=00 
ps00 
;00  
m_SystemTime11 
=11 
$num11 
;11 
SetRandomSeed22 
(22 
)22 
;22 
if55 
(55 
!55 
Application55 
.55 
	isPlaying55 &
&&55' )
UnityEditor55* 5
.555 6
PrefabUtility556 C
.55C D"
IsPartOfPrefabInstance55D Z
(55Z [
ps55[ ]
)55] ^
)55^ _
UnityEditor66 
.66 
PrefabUtility66 )
.66) *!
prefabInstanceUpdated66* ?
+=66@ B
OnPrefabUpdated66C R
;66R S
}88 	
public?? 
override?? 
void?? 
OnPlayableDestroy?? .
(??. /
Playable??/ 7
playable??8 @
)??@ A
{@@ 	
ifAA 
(AA 
!AA 
ApplicationAA 
.AA 
	isPlayingAA &
)AA& '
UnityEditorBB 
.BB 
PrefabUtilityBB )
.BB) *!
prefabInstanceUpdatedBB* ?
-=BB@ B
OnPrefabUpdatedBBC R
;BBR S
}CC 	
voidEE 
OnPrefabUpdatedEE 
(EE 

GameObjectEE '
goEE( *
)EE* +
{FF 	
ifHH 
(HH 
UnityEditorHH 
.HH 
PrefabUtilityHH )
.HH) *
GetRootGameObjectHH* ;
(HH; <
particleSystemHH< J
)HHJ K
==HHL N
goHHO Q
)HHQ R

m_LastTimeII 
=II 

kUnsetTimeII '
;II' (
}JJ 	
voidNN 
SetRandomSeedNN 
(NN 
)NN 
{OO 	
particleSystemPP 
.PP 
StopPP 
(PP  
truePP  $
,PP$ %&
ParticleSystemStopBehaviorPP& @
.PP@ A 
StopEmittingAndClearPPA U
)PPU V
;PPV W
varQQ 
systemsQQ 
=QQ 
particleSystemQQ (
.QQ( )

gameObjectQQ) 3
.QQ3 4#
GetComponentsInChildrenQQ4 K
<QQK L
ParticleSystemQQL Z
>QQZ [
(QQ[ \
)QQ\ ]
;QQ] ^
uintRR 
seedRR 
=RR 
m_RandomSeedRR $
;RR$ %
foreachSS 
(SS 
varSS 
psSS 
inSS 
systemsSS &
)SS& '
{TT 
ifVV 
(VV 
psVV 
.VV 
useAutoRandomSeedVV (
)VV( )
{WW 
psXX 
.XX 
useAutoRandomSeedXX (
=XX) *
falseXX+ 0
;XX0 1
psYY 
.YY 

randomSeedYY !
=YY" #
seedYY$ (
;YY( )
seedZZ 
++ZZ 
;ZZ 
}[[ 
}\\ 
}]] 	
publicdd 
overridedd 
voiddd 
PrepareFramedd )
(dd) *
Playabledd* 2
playabledd3 ;
,dd; <
	FrameDatadd= F
dataddG K
)ddK L
{ee 	
ifff 
(ff 
particleSystemff 
==ff !
nullff" &
||ff' )
!ff* +
particleSystemff+ 9
.ff9 :

gameObjectff: D
.ffD E
activeInHierarchyffE V
)ffV W
returngg 
;gg 
floatii 
	localTimeii 
=ii 
(ii 
floatii $
)ii$ %
playableii% -
.ii- .
GetTimeii. 5
(ii5 6
)ii6 7
;ii7 8
booljj 
shouldUpdatejj 
=jj 
Mathfjj  %
.jj% &
Approximatelyjj& 3
(jj3 4

m_LastTimejj4 >
,jj> ?

kUnsetTimejj@ J
)jjJ K
||jjL N
!kk 
Mathfkk 
.kk 
Approximatelykk $
(kk$ %

m_LastTimekk% /
,kk/ 0
	localTimekk1 :
)kk: ;
;kk; <
ifll 
(ll 
shouldUpdatell 
)ll 
{mm 
floatnn 
epsilonnn 
=nn 
Timenn  $
.nn$ %
fixedDeltaTimenn% 3
*nn4 5
$numnn6 :
;nn: ;
floatoo 
simTimeoo 
=oo 
	localTimeoo  )
;oo) *
floatpp 
expectedDeltapp #
=pp$ %
simTimepp& -
-pp. /

m_LastTimepp0 :
;pp: ;
floatss 

startDelayss  
=ss! "
particleSystemss# 1
.ss1 2
mainss2 6
.ss6 7

startDelayss7 A
.ssA B
EvaluatessB J
(ssJ K
particleSystemssK Y
.ssY Z

randomSeedssZ d
)ssd e
;sse f
floattt '
particleSystemDurationLoop0tt 1
=tt2 3
particleSystemtt4 B
.ttB C
mainttC G
.ttG H
durationttH P
+ttQ R

startDelayttS ]
;tt] ^
floatww 
expectedSystemTimeww (
=ww) *
simTimeww+ 2
>ww3 4'
particleSystemDurationLoop0ww5 P
?wwQ R
m_SystemTimewwS _
:ww` a
m_SystemTimewwb n
-wwo p

startDelaywwq {
;ww{ |
ifzz 
(zz 
!zz 
particleSystemzz #
.zz# $
mainzz$ (
.zz( )
loopzz) -
)zz- .
expectedSystemTime{{ &
={{' (
Math{{) -
.{{- .
Min{{. 1
({{1 2
expectedSystemTime{{2 D
,{{D E
particleSystem{{F T
.{{T U
main{{U Y
.{{Y Z
duration{{Z b
){{b c
;{{c d
bool 
restart 
= 
(  
simTime  '
<( )

m_LastTime* 4
)4 5
||6 8
(
€€ 
simTime
€€ 
<
€€ 
epsilon
€€ &
)
€€& '
||
€€( *
Mathf
 
.
 
Approximately
 '
(
' (

m_LastTime
( 2
,
2 3

kUnsetTime
4 >
)
> ?
||
@ B
(
‚‚ 
expectedDelta
‚‚ "
>
‚‚# $
particleSystem
‚‚% 3
.
‚‚3 4
main
‚‚4 8
.
‚‚8 9
duration
‚‚9 A
)
‚‚A B
||
‚‚C E
!
ƒƒ 
(
ƒƒ 
Mathf
ƒƒ 
.
ƒƒ 
Abs
ƒƒ 
(
ƒƒ   
expectedSystemTime
ƒƒ  2
-
ƒƒ3 4
particleSystem
ƒƒ5 C
.
ƒƒC D
time
ƒƒD H
)
ƒƒH I
<
ƒƒJ K
Time
ƒƒL P
.
ƒƒP Q&
maximumParticleDeltaTime
ƒƒQ i
)
ƒƒi j
;
ƒƒj k
if
„„ 
(
„„ 
restart
„„ 
)
„„ 
{
…… 
particleSystem
‡‡ "
.
‡‡" #
Simulate
‡‡# +
(
‡‡+ ,
$num
‡‡, -
,
‡‡- .
true
‡‡/ 3
,
‡‡3 4
true
‡‡5 9
)
‡‡9 :
;
‡‡: ;
particleSystem
ˆˆ "
.
ˆˆ" #
Simulate
ˆˆ# +
(
ˆˆ+ ,
simTime
ˆˆ, 3
,
ˆˆ3 4
true
ˆˆ5 9
,
ˆˆ9 :
false
ˆˆ; @
)
ˆˆ@ A
;
ˆˆA B
m_SystemTime
‰‰  
=
‰‰! "
simTime
‰‰# *
;
‰‰* +
}
ŠŠ 
else
‹‹ 
{
ŒŒ 
float
 $
particleSystemDuration
 0
=
1 2
simTime
3 :
>
; <)
particleSystemDurationLoop0
= X
?
Y Z
particleSystem
[ i
.
i j
main
j n
.
n o
duration
o w
:
x y*
particleSystemDurationLoop0z •
;• –
float
 
fracTime
 "
=
# $
simTime
% ,
%
- .$
particleSystemDuration
/ E
;
E F
float
 
	deltaTime
 #
=
$ %
fracTime
& .
-
/ 0
m_SystemTime
1 =
;
= >
if
’’ 
(
’’ 
	deltaTime
’’ !
<
’’" #
-
’’$ %
epsilon
’’% ,
)
’’, -
	deltaTime
““ !
=
““" #
fracTime
““$ ,
+
““- .)
particleSystemDurationLoop0
““/ J
-
““K L
m_SystemTime
““M Y
;
““Y Z
particleSystem
•• "
.
••" #
Simulate
••# +
(
••+ ,
	deltaTime
••, 5
,
••5 6
true
••7 ;
,
••; <
false
••= B
)
••B C
;
••C D
m_SystemTime
––  
+=
––! #
	deltaTime
––$ -
;
––- .
}
—— 

m_LastTime
™™ 
=
™™ 
	localTime
™™ &
;
™™& '
}
šš 
}
›› 	
public
¢¢ 
override
¢¢ 
void
¢¢ 
OnBehaviourPlay
¢¢ ,
(
¢¢, -
Playable
¢¢- 5
playable
¢¢6 >
,
¢¢> ?
	FrameData
¢¢@ I
info
¢¢J N
)
¢¢N O
{
££ 	

m_LastTime
¤¤ 
=
¤¤ 

kUnsetTime
¤¤ #
;
¤¤# $
}
¥¥ 	
public
¬¬ 
override
¬¬ 
void
¬¬ 
OnBehaviourPause
¬¬ -
(
¬¬- .
Playable
¬¬. 6
playable
¬¬7 ?
,
¬¬? @
	FrameData
¬¬A J
info
¬¬K O
)
¬¬O P
{
­­ 	

m_LastTime
®® 
=
®® 

kUnsetTime
®® #
;
®®# $
}
¯¯ 	
}
°° 
}±± ·
šD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
System

 
.

 
Serializable

 
,

 

NotKeyable

 $
]

$ %
public 

partial 
class "
AnimationPlayableAsset /
:0 1
PlayableAsset2 ?
,? @
ITimelineClipAssetA S
,S T
IPropertyPreviewU e
{ 
public 
enum 
LoopMode 
{ 	
[ 
Tooltip 
( 
$str O
)O P
]P Q
UseSourceAsset 
= 
$num 
, 
[ 
Tooltip 
( 
$str F
)F G
]G H
On 
= 
$num 
, 
[!! 
Tooltip!! 
(!! 
$str!! N
)!!N O
]!!O P
Off"" 
="" 
$num"" 
}## 	
[&& 	
SerializeField&&	 
]&& 
private&&  
AnimationClip&&! .
m_Clip&&/ 5
;&&5 6
['' 	
SerializeField''	 
]'' 
private''  
Vector3''! (

m_Position'') 3
=''4 5
Vector3''7 >
.''> ?
zero''? C
;''C D
[(( 	
SerializeField((	 
](( 
private((  
Vector3((! (
m_EulerAngles(() 6
=((7 8
Vector3((9 @
.((@ A
zero((A E
;((E F
[)) 	
SerializeField))	 
])) 
private))  
bool))! %!
m_UseTrackMatchFields))& ;
=))< =
true))> B
;))B C
[** 	
SerializeField**	 
]** 
private**  
MatchTargetFields**! 2
m_MatchTargetFields**3 F
=**G H%
MatchTargetFieldConstants**I b
.**b c
All**c f
;**f g
[++ 	
SerializeField++	 
]++ 
private++  
bool++! %
m_RemoveStartOffset++& 9
=++: ;
true++< @
;++@ A
[,, 	
SerializeField,,	 
],, 
private,,  
bool,,! %
m_ApplyFootIK,,& 3
=,,4 5
true,,6 :
;,,: ;
[-- 	
SerializeField--	 
]-- 
private--  
LoopMode--! )
m_Loop--* 0
=--1 2
LoopMode--3 ;
.--; <
UseSourceAsset--< J
;--J K
private11 #
AnimationOffsetPlayable11 '%
m_AnimationOffsetPlayable11( A
;11A B
public77 
Vector377 
position77 
{88 	
get99 
{:: 
return;; 

m_Position;; !
;;;! "
}<< 
set== 
{>> 

m_Position?? 
=?? 
value?? "
;??" #
ifAA 
(AA %
m_AnimationOffsetPlayableAA -
.AA- .
IsValidAA. 5
(AA5 6
)AA6 7
)AA7 8%
m_AnimationOffsetPlayableBB -
.BB- .
SetPositionBB. 9
(BB9 :
positionBB: B
)BBB C
;BBC D
}DD 
}EE 	
publicJJ 

QuaternionJJ 
rotationJJ "
{KK 	
getLL 
{MM 
returnNN 

QuaternionNN !
.NN! "
EulerNN" '
(NN' (
m_EulerAnglesNN( 5
)NN5 6
;NN6 7
}OO 
setQQ 
{RR 
m_EulerAnglesSS 
=SS 
valueSS  %
.SS% &
eulerAnglesSS& 1
;SS1 2
ifUU 
(UU %
m_AnimationOffsetPlayableUU -
.UU- .
IsValidUU. 5
(UU5 6
)UU6 7
)UU7 8%
m_AnimationOffsetPlayableVV -
.VV- .
SetRotationVV. 9
(VV9 :
valueVV: ?
)VV? @
;VV@ A
}XX 
}YY 	
public^^ 
Vector3^^ 
eulerAngles^^ "
{__ 	
get`` 
{`` 
return`` 
m_EulerAngles`` &
;``& '
}``( )
setaa 
{bb 
m_EulerAnglescc 
=cc 
valuecc  %
;cc% &
ifee 
(ee %
m_AnimationOffsetPlayableee -
.ee- .
IsValidee. 5
(ee5 6
)ee6 7
)ee7 8%
m_AnimationOffsetPlayableff -
.ff- .
SetRotationff. 9
(ff9 :
rotationff: B
)ffB C
;ffC D
}hh 
}ii 	
publicnn 
boolnn 
useTrackMatchFieldsnn '
{oo 	
getpp 
{pp 
returnpp !
m_UseTrackMatchFieldspp .
;pp. /
}pp0 1
setqq 
{qq !
m_UseTrackMatchFieldsqq '
=qq( )
valueqq* /
;qq/ 0
}qq1 2
}rr 	
publicww 
MatchTargetFieldsww  
matchTargetFieldsww! 2
{xx 	
getyy 
{yy 
returnyy 
m_MatchTargetFieldsyy ,
;yy, -
}yy. /
setzz 
{zz 
m_MatchTargetFieldszz %
=zz& '
valuezz( -
;zz- .
}zz/ 0
}{{ 	
public
ƒƒ 
bool
ƒƒ 
removeStartOffset
ƒƒ %
{
„„ 	
get
…… 
{
…… 
return
…… !
m_RemoveStartOffset
…… ,
;
……, -
}
……. /
set
†† 
{
†† !
m_RemoveStartOffset
†† %
=
††& '
value
††( -
;
††- .
}
††/ 0
}
‡‡ 	
public
 
bool
 
applyFootIK
 
{
 	
get
 
{
 
return
 
m_ApplyFootIK
 &
;
& '
}
( )
set
 
{
 
m_ApplyFootIK
 
=
  !
value
" '
;
' (
}
) *
}
‘‘ 	
public
–– 
LoopMode
–– 
loop
–– 
{
—— 	
get
˜˜ 
{
˜˜ 
return
˜˜ 
m_Loop
˜˜ 
;
˜˜  
}
˜˜! "
set
™™ 
{
™™ 
m_Loop
™™ 
=
™™ 
value
™™  
;
™™  !
}
™™" #
}
šš 	
internal
 
bool
 
hasRootTransforms
 '
{
 	
get
ŸŸ 
{
ŸŸ 
return
ŸŸ 
m_Clip
ŸŸ 
!=
ŸŸ  "
null
ŸŸ# '
&&
ŸŸ( *
HasRootTransforms
ŸŸ+ <
(
ŸŸ< =
m_Clip
ŸŸ= C
)
ŸŸC D
;
ŸŸD E
}
ŸŸF G
}
   	
internal
££ 
AppliedOffsetMode
££ "
appliedOffsetMode
££# 4
{
££5 6
get
££7 :
;
££: ;
set
££< ?
;
££? @
}
££A B
public
©© 
AnimationClip
©© 
clip
©© !
{
ªª 	
get
«« 
{
«« 
return
«« 
m_Clip
«« 
;
««  
}
««! "
set
¬¬ 
{
­­ 
if
®® 
(
®® 
value
®® 
!=
®® 
null
®® !
)
®®! "
name
¯¯ 
=
¯¯ 
$str
¯¯ 7
+
¯¯8 9
value
¯¯: ?
.
¯¯? @
name
¯¯@ D
;
¯¯D E
m_Clip
°° 
=
°° 
value
°° 
;
°° 
}
±± 
}
²² 	
public
·· 
override
·· 
double
·· 
duration
·· '
{
¸¸ 	
get
¹¹ 
{
ºº 
double
»» 
length
»» 
=
»» 
TimeUtility
»»  +
.
»»+ ,$
GetAnimationClipLength
»», B
(
»»B C
clip
»»C G
)
»»G H
;
»»H I
if
¼¼ 
(
¼¼ 
length
¼¼ 
<
¼¼ 
float
¼¼ "
.
¼¼" #
Epsilon
¼¼# *
)
¼¼* +
return
½½ 
base
½½ 
.
½½  
duration
½½  (
;
½½( )
return
¾¾ 
length
¾¾ 
;
¾¾ 
}
¿¿ 
}
ÀÀ 	
public
ÅÅ 
override
ÅÅ 
IEnumerable
ÅÅ #
<
ÅÅ# $
PlayableBinding
ÅÅ$ 3
>
ÅÅ3 4
outputs
ÅÅ5 <
{
ÆÆ 	
get
ÇÇ 
{
ÇÇ 
yield
ÇÇ 
return
ÇÇ &
AnimationPlayableBinding
ÇÇ 7
.
ÇÇ7 8
Create
ÇÇ8 >
(
ÇÇ> ?
name
ÇÇ? C
,
ÇÇC D
this
ÇÇE I
)
ÇÇI J
;
ÇÇJ K
}
ÇÇL M
}
ÈÈ 	
public
ĞĞ 
override
ĞĞ 
Playable
ĞĞ  
CreatePlayable
ĞĞ! /
(
ĞĞ/ 0
PlayableGraph
ĞĞ0 =
graph
ĞĞ> C
,
ĞĞC D

GameObject
ĞĞE O
go
ĞĞP R
)
ĞĞR S
{
ÑÑ 	
Playable
ÒÒ 
root
ÒÒ 
=
ÒÒ 
CreatePlayable
ÒÒ *
(
ÒÒ* +
graph
ÒÒ+ 0
,
ÒÒ0 1
m_Clip
ÒÒ2 8
,
ÒÒ8 9
position
ÒÒ: B
,
ÒÒB C
eulerAngles
ÒÒD O
,
ÒÒO P
removeStartOffset
ÒÒQ b
,
ÒÒb c
appliedOffsetMode
ÒÒd u
,
ÒÒu v
applyFootIKÒÒw ‚
,ÒÒ‚ ƒ
m_LoopÒÒ„ Š
)ÒÒŠ ‹
;ÒÒ‹ Œ'
m_AnimationOffsetPlayable
ÕÕ %
=
ÕÕ& '%
AnimationOffsetPlayable
ÕÕ( ?
.
ÕÕ? @
Null
ÕÕ@ D
;
ÕÕD E
if
ÖÖ 
(
ÖÖ 
root
ÖÖ 
.
ÖÖ 
IsValid
ÖÖ 
(
ÖÖ 
)
ÖÖ 
&&
ÖÖ !
root
ÖÖ" &
.
ÖÖ& '
IsPlayableOfType
ÖÖ' 7
<
ÖÖ7 8%
AnimationOffsetPlayable
ÖÖ8 O
>
ÖÖO P
(
ÖÖP Q
)
ÖÖQ R
)
ÖÖR S
{
×× '
m_AnimationOffsetPlayable
ØØ )
=
ØØ* +
(
ØØ, -%
AnimationOffsetPlayable
ØØ- D
)
ØØD E
root
ØØE I
;
ØØI J
}
ÙÙ 
LiveLink
ÛÛ 
(
ÛÛ 
)
ÛÛ 
;
ÛÛ 
return
ŞŞ 
root
ŞŞ 
;
ŞŞ 
}
ßß 	
internal
áá 
static
áá 
Playable
áá  
CreatePlayable
áá! /
(
áá/ 0
PlayableGraph
áá0 =
graph
áá> C
,
ááC D
AnimationClip
ááE R
clip
ááS W
,
ááW X
Vector3
ááY `
positionOffset
ááa o
,
ááo p
Vector3
ááq x
eulerOffsetááy „
,áá„ …
booláá† Š!
removeStartOffsetáá‹ œ
,ááœ !
AppliedOffsetModeáá ¯
modeáá° ´
,áá´ µ
booláá¶ º
applyFootIKáá» Æ
,ááÆ Ç
LoopModeááÈ Ğ
loopááÑ Õ
)ááÕ Ö
{
ââ 	
if
ãã 
(
ãã 
clip
ãã 
==
ãã 
null
ãã 
||
ãã 
clip
ãã  $
.
ãã$ %
legacy
ãã% +
)
ãã+ ,
return
ää 
Playable
ää 
.
ää  
Null
ää  $
;
ää$ %
var
çç 
clipPlayable
çç 
=
çç #
AnimationClipPlayable
çç 4
.
çç4 5
Create
çç5 ;
(
çç; <
graph
çç< A
,
ççA B
clip
ççC G
)
ççG H
;
ççH I
clipPlayable
èè 
.
èè "
SetRemoveStartOffset
èè -
(
èè- .
removeStartOffset
èè. ?
)
èè? @
;
èè@ A
clipPlayable
éé 
.
éé 
SetApplyFootIK
éé '
(
éé' (
applyFootIK
éé( 3
)
éé3 4
;
éé4 5
clipPlayable
êê 
.
êê !
SetOverrideLoopTime
êê ,
(
êê, -
loop
êê- 1
!=
êê2 4
LoopMode
êê5 =
.
êê= >
UseSourceAsset
êê> L
)
êêL M
;
êêM N
clipPlayable
ëë 
.
ëë 
SetLoopTime
ëë $
(
ëë$ %
loop
ëë% )
==
ëë* ,
LoopMode
ëë- 5
.
ëë5 6
On
ëë6 8
)
ëë8 9
;
ëë9 :
Playable
íí 
root
íí 
=
íí 
clipPlayable
íí (
;
íí( )
if
ïï 
(
ïï $
ShouldApplyScaleRemove
ïï &
(
ïï& '
mode
ïï' +
)
ïï+ ,
)
ïï, -
{
ğğ 
var
ññ 
removeScale
ññ 
=
ññ  !*
AnimationRemoveScalePlayable
ññ" >
.
ññ> ?
Create
ññ? E
(
ññE F
graph
ññF K
,
ññK L
$num
ññM N
)
ññN O
;
ññO P
graph
òò 
.
òò 
Connect
òò 
(
òò 
root
òò "
,
òò" #
$num
òò$ %
,
òò% &
removeScale
òò' 2
,
òò2 3
$num
òò4 5
)
òò5 6
;
òò6 7
removeScale
óó 
.
óó 
SetInputWeight
óó *
(
óó* +
$num
óó+ ,
,
óó, -
$num
óó. 2
)
óó2 3
;
óó3 4
root
ôô 
=
ôô 
removeScale
ôô "
;
ôô" #
}
õõ 
if
÷÷ 
(
÷÷ 
ShouldApplyOffset
÷÷ !
(
÷÷! "
mode
÷÷" &
,
÷÷& '
clip
÷÷( ,
)
÷÷, -
)
÷÷- .
{
øø 
var
ùù 
offsetPlayable
ùù "
=
ùù# $%
AnimationOffsetPlayable
ùù% <
.
ùù< =
Create
ùù= C
(
ùùC D
graph
ùùD I
,
ùùI J
positionOffset
ùùK Y
,
ùùY Z

Quaternion
ùù[ e
.
ùùe f
Euler
ùùf k
(
ùùk l
eulerOffset
ùùl w
)
ùùw x
,
ùùx y
$num
ùùz {
)
ùù{ |
;
ùù| }
graph
úú 
.
úú 
Connect
úú 
(
úú 
root
úú "
,
úú" #
$num
úú$ %
,
úú% &
offsetPlayable
úú' 5
,
úú5 6
$num
úú7 8
)
úú8 9
;
úú9 :
offsetPlayable
ûû 
.
ûû 
SetInputWeight
ûû -
(
ûû- .
$num
ûû. /
,
ûû/ 0
$num
ûû1 5
)
ûû5 6
;
ûû6 7
root
üü 
=
üü 
offsetPlayable
üü %
;
üü% &
}
ıı 
return
ÿÿ 
root
ÿÿ 
;
ÿÿ 
}
€€ 	
private
‚‚ 
static
‚‚ 
bool
‚‚ 
ShouldApplyOffset
‚‚ -
(
‚‚- .
AppliedOffsetMode
‚‚. ?
mode
‚‚@ D
,
‚‚D E
AnimationClip
‚‚F S
clip
‚‚T X
)
‚‚X Y
{
ƒƒ 	
if
„„ 
(
„„ 
mode
„„ 
==
„„ 
AppliedOffsetMode
„„ )
.
„„) *
NoRootTransform
„„* 9
||
„„: <
mode
„„= A
==
„„B D
AppliedOffsetMode
„„E V
.
„„V W
SceneOffsetLegacy
„„W h
)
„„h i
return
…… 
false
…… 
;
…… 
return
‡‡ 
HasRootTransforms
‡‡ $
(
‡‡$ %
clip
‡‡% )
)
‡‡) *
;
‡‡* +
}
ˆˆ 	
private
ŠŠ 
static
ŠŠ 
bool
ŠŠ $
ShouldApplyScaleRemove
ŠŠ 2
(
ŠŠ2 3
AppliedOffsetMode
ŠŠ3 D
mode
ŠŠE I
)
ŠŠI J
{
‹‹ 	
return
ŒŒ 
mode
ŒŒ 
==
ŒŒ 
AppliedOffsetMode
ŒŒ ,
.
ŒŒ, -%
SceneOffsetLegacyEditor
ŒŒ- D
||
ŒŒE G
mode
ŒŒH L
==
ŒŒM O
AppliedOffsetMode
ŒŒP a
.
ŒŒa b
SceneOffsetLegacy
ŒŒb s
||
ŒŒt v
mode
ŒŒw {
==
ŒŒ| ~ 
AppliedOffsetModeŒŒ 
.ŒŒ ‘%
TransformOffsetLegacyŒŒ‘ ¦
;ŒŒ¦ §
}
 	
public
 
void
 
LiveLink
 
(
 
)
 
{
‘‘ 	
if
’’ 
(
’’ '
m_AnimationOffsetPlayable
’’ )
.
’’) *
IsValid
’’* 1
(
’’1 2
)
’’2 3
)
’’3 4
{
““ '
m_AnimationOffsetPlayable
”” )
.
””) *
SetPosition
””* 5
(
””5 6
position
””6 >
)
””> ?
;
””? @'
m_AnimationOffsetPlayable
•• )
.
••) *
SetRotation
••* 5
(
••5 6
rotation
••6 >
)
••> ?
;
••? @
}
–– 
}
—— 	
public
 
ClipCaps
 
clipCaps
  
{
ŸŸ 	
get
   
{
¡¡ 
var
¢¢ 
caps
¢¢ 
=
¢¢ 
ClipCaps
¢¢ #
.
¢¢# $
Extrapolation
¢¢$ 1
|
¢¢2 3
ClipCaps
¢¢4 <
.
¢¢< =
SpeedMultiplier
¢¢= L
|
¢¢M N
ClipCaps
¢¢O W
.
¢¢W X
Blending
¢¢X `
;
¢¢` a
if
££ 
(
££ 
m_Clip
££ 
!=
££ 
null
££ "
&&
££# %
(
££& '
m_Loop
££' -
!=
££. 0
LoopMode
££1 9
.
££9 :
Off
££: =
)
££= >
&&
££? A
(
££B C
m_Loop
££C I
!=
££J L
LoopMode
££M U
.
££U V
UseSourceAsset
££V d
||
££e g
m_Clip
££h n
.
££n o
	isLooping
££o x
)
££x y
)
££y z
caps
¤¤ 
|=
¤¤ 
ClipCaps
¤¤ $
.
¤¤$ %
Looping
¤¤% ,
;
¤¤, -
if
§§ 
(
§§ 
m_Clip
§§ 
!=
§§ 
null
§§ "
&&
§§# %
!
§§& '
m_Clip
§§' -
.
§§- .
empty
§§. 3
)
§§3 4
caps
¨¨ 
|=
¨¨ 
ClipCaps
¨¨ $
.
¨¨$ %
ClipIn
¨¨% +
;
¨¨+ ,
return
ªª 
caps
ªª 
;
ªª 
}
«« 
}
¬¬ 	
public
±± 
void
±± 
ResetOffsets
±±  
(
±±  !
)
±±! "
{
²² 	
position
³³ 
=
³³ 
Vector3
³³ 
.
³³ 
zero
³³ #
;
³³# $
eulerAngles
´´ 
=
´´ 
Vector3
´´ !
.
´´! "
zero
´´" &
;
´´& '
}
µµ 	
public
¸¸ 
void
¸¸ 
GatherProperties
¸¸ $
(
¸¸$ %
PlayableDirector
¸¸% 5
director
¸¸6 >
,
¸¸> ? 
IPropertyCollector
¸¸@ R
driver
¸¸S Y
)
¸¸Y Z
{
¹¹ 	
driver
ºº 
.
ºº 
AddFromClip
ºº 
(
ºº 
m_Clip
ºº %
)
ºº% &
;
ºº& '
}
»» 	
internal
½½ 
static
½½ 
bool
½½ 
HasRootTransforms
½½ .
(
½½. /
AnimationClip
½½/ <
clip
½½= A
)
½½A B
{
¾¾ 	
if
¿¿ 
(
¿¿ 
clip
¿¿ 
==
¿¿ 
null
¿¿ 
||
¿¿ 
clip
¿¿  $
.
¿¿$ %
empty
¿¿% *
)
¿¿* +
return
ÀÀ 
false
ÀÀ 
;
ÀÀ 
return
ÂÂ 
clip
ÂÂ 
.
ÂÂ 
hasRootMotion
ÂÂ %
||
ÂÂ& (
clip
ÂÂ) -
.
ÂÂ- .%
hasGenericRootTransform
ÂÂ. E
||
ÂÂF H
clip
ÂÂI M
.
ÂÂM N
hasMotionCurves
ÂÂN ]
||
ÂÂ^ `
clip
ÂÂa e
.
ÂÂe f
hasRootCurves
ÂÂf s
;
ÂÂs t
}
ÃÃ 	
}
ÄÄ 
}ÅÅ Ó

“D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeElement.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
abstract 
class 
RuntimeElement !
:" #
	IInterval$ -
{ 
public 
abstract 
Int64 
intervalStart +
{, -
get. 1
;1 2
}3 4
public		 
abstract		 
Int64		 
intervalEnd		 )
{		* +
get		, /
;		/ 0
}		1 2
public

 
int

 
intervalBit

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
abstract 
bool 
enable #
{$ %
set& )
;) *
}+ ,
public 
abstract 
void 

EvaluateAt '
(' (
double( .
	localTime/ 8
,8 9
	FrameData: C
	frameDataD M
)M N
;N O
public 
virtual 
void 
Reset !
(! "
)" #
{$ %
}% &
} 
} Û	
„D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\GroupTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
Serializable

 
]

 
[ 
TrackClipType 
( 
typeof 
( 

TrackAsset $
)$ %
)% &
]& '
[ 
SupportsChildTracks 
] 
[ 
ExcludeFromPreset 
] 
public 

class 

GroupTrack 
: 

TrackAsset (
{ 
internal 
override 
bool 
CanCompileClips .
(. /
)/ 0
{ 	
return 
false 
; 
} 	
public 
override 
IEnumerable #
<# $
PlayableBinding$ 3
>3 4
outputs5 <
{ 	
get 
{ 
return 
PlayableBinding (
.( )
None) -
;- .
}/ 0
} 	
} 
} Å
‘D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str /
)/ 0
]0 1
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 1
)		1 2
]		2 3
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
AssemblyCopyright

 
(

 
$str

 /
)

/ 0
]

0 1
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 5
)5 6
]6 7
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyFileVersion 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ;
); <
]< =
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H I¤
¤D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\AnimationPlayableAssetUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class "
AnimationPlayableAsset (
:) **
ISerializationCallbackReceiver+ I
{ 
enum 
Versions 
{ 	
Initial		 
=		 
$num		 
,		 
RotationAsEuler

 
=

 
$num

 
,

  
} 	
static 
readonly 
int 
k_LatestVersion +
=, -
(. /
int/ 2
)2 3
Versions3 ;
.; <
RotationAsEuler< K
;K L
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" ?
,? @
falseA F
)F G
,G H
HideInInspectorI X
]X Y
private 

Quaternion 

m_Rotation %
=& '

Quaternion( 2
.2 3
identity3 ;
;; <
void *
ISerializationCallbackReceiver +
.+ ,
OnBeforeSerialize, =
(= >
)> ?
{ 	
	m_Version 
= 
k_LatestVersion '
;' (
} 	
void *
ISerializationCallbackReceiver +
.+ ,
OnAfterDeserialize, >
(> ?
)? @
{ 	
if 
( 
	m_Version 
< 
k_LatestVersion +
)+ ,
{  
OnUpgradeFromVersion $
($ %
	m_Version% .
). /
;/ 0
} 
} 	
void!!  
OnUpgradeFromVersion!! !
(!!! "
int!!" %

oldVersion!!& 0
)!!0 1
{"" 	
if## 
(## 

oldVersion## 
<## 
(## 
int## !
)##! "
Versions##" *
.##* +
RotationAsEuler##+ :
)##: ;)
AnimationPlayableAssetUpgrade$$ -
.$$- ."
ConvertRotationToEuler$$. D
($$D E
this$$E I
)$$I J
;$$J K
}%% 	
static'' 
class'' )
AnimationPlayableAssetUpgrade'' 2
{(( 	
public)) 
static)) 
void)) "
ConvertRotationToEuler)) 5
())5 6"
AnimationPlayableAsset))6 L
asset))M R
)))R S
{** 
asset,, 
.,, 
m_EulerAngles,, #
=,,$ %
asset,,& +
.,,+ ,

m_Rotation,,, 6
.,,6 7
eulerAngles,,7 B
;,,B C
}.. 
}// 	
}00 
}11 Ç
ˆD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\IMarker.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public

 

	interface

 
IMarker

 
{ 
double 
time 
{ 
get 
; 
set 
; 
}  !

TrackAsset 
parent 
{ 
get 
;  
}! "
void 

Initialize 
( 

TrackAsset "
parent# )
)) *
;* +
} 
} é

”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeClipBase.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
internal 
abstract 
class 
RuntimeClipBase +
:, -
RuntimeElement. <
{ 
public 
abstract 
double 
start $
{% &
get' *
;* +
}, -
public		 
abstract		 
double		 
duration		 '
{		( )
get		* -
;		- .
}		/ 0
public 
override 
Int64 
intervalStart +
{ 	
get 
{ 
return 
DiscreteTime %
.% &
GetNearestTick& 4
(4 5
start5 :
): ;
;; <
}= >
} 	
public 
override 
Int64 
intervalEnd )
{ 	
get 
{ 
return 
DiscreteTime %
.% &
GetNearestTick& 4
(4 5
start5 :
+; <
duration= E
)E F
;F G
}H I
} 	
} 
} ø
ŒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\MarkerTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TrackBindingType 
( 
typeof 
( 

GameObject '
)' (
)( )
]) *
[ 

HideInMenu 
] 
[ 
ExcludeFromPreset 
] 
public 

class 
MarkerTrack 
: 

TrackAsset )
{ 
public 
override 
IEnumerable #
<# $
PlayableBinding$ 3
>3 4
outputs5 <
{ 	
get 
{ 
return 
this 
== 
timelineAsset ,
., -
markerTrack- 8
?9 :
new 
List 
< 
PlayableBinding ,
>, -
{. /!
ScriptPlayableBinding/ D
.D E
CreateE K
(K L
nameL P
,P Q
nullR V
,V W
typeofX ^
(^ _

GameObject_ i
)i j
)j k
}k l
:m n
base 
. 
outputs  
;  !
} 
} 	
} 
} Ï
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Timeline.deprecated.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

partial 
class 
TimelineAsset &
{ 
[		 	
Obsolete			 
(		 
$str		 u
,		u v
false		w |
)		| }
]		} ~
public

 
enum

 
	MediaType

 
{ 	
	Animation 
, 
Audio 
, 
Texture 
= 
$num 
, 
[ 
Obsolete 
( 
$str	 €
,
€ 
false
‚ ‡
)
‡ ˆ
]
ˆ ‰
Video
Š 
=
 ‘
$num
’ “
,
“ ”
Script 
, 
Hybrid 
, 
Group 
} 	
} 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
)* +
]+ ,
[ 
Obsolete 
( 
$str v
,v w
falsex }
)} ~
]~ 
public 

class 
TrackMediaType 
:  !
	Attribute" +
{ 
public 
readonly 
TimelineAsset %
.% &
	MediaType& /
m_MediaType0 ;
;; <
public 
TrackMediaType 
( 
TimelineAsset +
.+ ,
	MediaType, 5
mt6 8
)8 9
{ 	
m_MediaType 
= 
mt 
; 
}   	
}!! 
}"" à
˜D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\InfiniteRuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class

 	
InfiniteRuntimeClip


 
:

 
RuntimeElement

  .
{ 
private 
Playable 

m_Playable #
;# $
private 
static 
readonly 
Int64  %
kIntervalEnd& 2
=3 4
DiscreteTime5 A
.A B
GetNearestTickB P
(P Q
TimelineClipQ ]
.] ^
kMaxTimeValue^ k
)k l
;l m
public 
InfiniteRuntimeClip "
(" #
Playable# +
playable, 4
)4 5
{ 	

m_Playable 
= 
playable !
;! "
} 	
public 
override 
Int64 
intervalStart +
{ 	
get 
{ 
return 
$num 
; 
} 
} 	
public 
override 
Int64 
intervalEnd )
{ 	
get 
{ 
return 
kIntervalEnd %
;% &
}' (
} 	
public 
override 
bool 
enable #
{ 	
set   
{!! 
if"" 
("" 
value"" 
)"" 

m_Playable## 
.## 
Play## #
(### $
)##$ %
;##% &
else$$ 

m_Playable%% 
.%% 
Pause%% $
(%%$ %
)%%% &
;%%& '
}&& 
}'' 	
public)) 
override)) 
void)) 

EvaluateAt)) '
())' (
double))( .
	localTime))/ 8
,))8 9
	FrameData)): C
	frameData))D M
)))M N
{** 	

m_Playable++ 
.++ 
SetTime++ 
(++ 
	localTime++ (
)++( )
;++) *
},, 	
}-- 
}.. š
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ITimeControl.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

	interface		 
ITimeControl		 !
{

 
void 
SetTime 
( 
double 
time  
)  !
;! "
void 
OnControlTimeStart 
(  
)  !
;! "
void 
OnControlTimeStop 
( 
)  
;  !
} 
} ä*
™D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\NotificationUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class !
NotificationUtilities &
{ 
public		 
static		 
ScriptPlayable		 $
<		$ %%
TimeNotificationBehaviour		% >
>		> ?'
CreateNotificationsPlayable		@ [
(		[ \
PlayableGraph		\ i
graph		j o
,		o p
IEnumerable		q |
<		| }
IMarker			} „
>
		„ …
markers
		† 
,
		 

GameObject
		 ™
go
		š œ
)
		œ 
{

 	
var  
notificationPlayable $
=% &
ScriptPlayable' 5
<5 6%
TimeNotificationBehaviour6 O
>O P
.P Q
NullQ U
;U V
var 
director 
= 
go 
. 
GetComponent *
<* +
PlayableDirector+ ;
>; <
(< =
)= >
;> ?
foreach 
( 
var 
e 
in 
markers %
)% &
{ 
var 
notif 
= 
e 
as  
INotification! .
;. /
if 
( 
notif 
== 
null !
)! "
continue 
; 
if 
(  
notificationPlayable (
.( )
Equals) /
(/ 0
ScriptPlayable0 >
<> ?%
TimeNotificationBehaviour? X
>X Y
.Y Z
NullZ ^
)^ _
)_ `
{  
notificationPlayable (
=) *%
TimeNotificationBehaviour+ D
.D E
CreateE K
(K L
graphL Q
,Q R
director  
.  !
playableAsset! .
.. /
duration/ 7
,7 8
director9 A
.A B
extrapolationModeB S
)S T
;T U
} 
var 
time 
= 
( 
DiscreteTime (
)( )
e) *
.* +
time+ /
;/ 0
var 

tlDuration 
=  
(! "
DiscreteTime" .
). /
director/ 7
.7 8
playableAsset8 E
.E F
durationF N
;N O
if 
( 
time 
>= 

tlDuration &
&&' )
time* .
<=/ 1

tlDuration2 <
.< =
OneTickAfter= I
(I J
)J K
&&L N

tlDurationO Y
!=Z \
$num] ^
)^ _
{ 
time 
= 

tlDuration %
.% &
OneTickBefore& 3
(3 4
)4 5
;5 6
} 
var   &
notificationOptionProvider   .
=  / 0
e  1 2
as  3 5'
INotificationOptionProvider  6 Q
;  Q R
if!! 
(!! &
notificationOptionProvider!! .
!=!!/ 1
null!!2 6
)!!6 7
{""  
notificationPlayable## (
.##( )
GetBehaviour##) 5
(##5 6
)##6 7
.##7 8
AddNotification##8 G
(##G H
(##H I
double##I O
)##O P
time##P T
,##T U
notif##V [
,##[ \&
notificationOptionProvider##] w
.##w x
flags##x }
)##} ~
;##~ 
}$$ 
else%% 
{&&  
notificationPlayable'' (
.''( )
GetBehaviour'') 5
(''5 6
)''6 7
.''7 8
AddNotification''8 G
(''G H
(''H I
double''I O
)''O P
time''P T
,''T U
notif''V [
)''[ \
;''\ ]
}(( 
})) 
return++  
notificationPlayable++ '
;++' (
},, 	
public.. 
static.. 
bool.. *
TrackTypeSupportsNotifications.. 9
(..9 :
Type..: >
type..? C
)..C D
{// 	
var00 
binding00 
=00 
(00 %
TrackBindingTypeAttribute00 4
)004 5
	Attribute005 >
.00> ?
GetCustomAttribute00? Q
(00Q R
type00R V
,00V W
typeof00X ^
(00^ _%
TrackBindingTypeAttribute00_ x
)00x y
)00y z
;00z {
return11 
binding11 
!=11 
null11 "
&&11# %
(22 
typeof22 
(22 
	Component22 !
)22! "
.22" #
IsAssignableFrom22# 3
(223 4
binding224 ;
.22; <
type22< @
)22@ A
||22B D
typeof33 
(33 

GameObject33 %
)33% &
.33& '
IsAssignableFrom33' 7
(337 8
binding338 ?
.33? @
type33@ D
)33D E
)33E F
;33F G
}44 	
}55 
}66 ü
‘D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\WeightUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
WeightUtility 
{ 
public		 
static		 
float		 
NormalizeMixer		 *
(		* +
Playable		+ 3
mixer		4 9
)		9 :
{

 	
if 
( 
! 
mixer 
. 
IsValid 
( 
)  
)  !
return 
$num 
; 
int 
count 
= 
mixer 
. 
GetInputCount +
(+ ,
), -
;- .
float 
weight 
= 
$num 
;  
for 
( 
int 
c 
= 
$num 
; 
c 
< 
count  %
;% &
c' (
++( *
)* +
{ 
weight 
+= 
mixer 
.  
GetInputWeight  .
(. /
c/ 0
)0 1
;1 2
} 
if 
( 
weight 
> 
Mathf 
. 
Epsilon &
&&' )
weight* 0
<1 2
$num3 4
)4 5
{ 
for 
( 
int 
c 
= 
$num 
; 
c  !
<" #
count$ )
;) *
c+ ,
++, .
). /
{ 
mixer 
. 
SetInputWeight (
(( )
c) *
,* +
mixer, 1
.1 2
GetInputWeight2 @
(@ A
cA B
)B C
/D E
weightF L
)L M
;M N
} 
} 
return 
Mathf 
. 
Clamp01  
(  !
weight! '
)' (
;( )
} 	
} 
} ñÑ
„D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TrackAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ !
IgnoreOnPlayableTrack 
] 
public 

abstract 
partial 
class !

TrackAsset" ,
:- .
PlayableAsset/ <
,< =
IPropertyPreview> N
,N O
ICurvesOwnerP \
{ 
private 
struct 
TransientBuildData )
{ 	
public 
List 
< 

TrackAsset "
>" #
	trackList$ -
;- .
public   
List   
<   
TimelineClip   $
>  $ %
clipList  & .
;  . /
public!! 
List!! 
<!! 
IMarker!! 
>!!  

markerList!!! +
;!!+ ,
public## 
static## 
TransientBuildData## ,
Create##- 3
(##3 4
)##4 5
{$$ 
return%% 
new%% 
TransientBuildData%% -
(%%- .
)%%. /
{&& 
	trackList'' 
='' 
new''  #
List''$ (
<''( )

TrackAsset'') 3
>''3 4
(''4 5
$num''5 7
)''7 8
,''8 9
clipList(( 
=(( 
new(( "
List((# '
<((' (
TimelineClip((( 4
>((4 5
(((5 6
$num((6 9
)((9 :
,((: ;

markerList)) 
=))  
new))! $
List))% )
<))) *
IMarker))* 1
>))1 2
())2 3
$num))3 6
)))6 7
,))7 8
}** 
;** 
}++ 
public-- 
void-- 
Clear-- 
(-- 
)-- 
{.. 
	trackList// 
.// 
Clear// 
(//  
)//  !
;//! "
clipList00 
.00 
Clear00 
(00 
)00  
;00  !

markerList11 
.11 
Clear11  
(11  !
)11! "
;11" #
}22 
}33 	
private55 
static55 
TransientBuildData55 )
s_BuildData55* 5
=556 7
TransientBuildData558 J
.55J K
Create55K Q
(55Q R
)55R S
;55S T
internal77 
const77 
string77 
kDefaultCurvesName77 0
=771 2
$str773 E
;77E F
internal99 
static99 
event99 
Action99 $
<99$ %
TimelineClip99% 1
,991 2

GameObject993 =
,99= >
Playable99? G
>99G H 
OnClipPlayableCreate99I ]
;99] ^
internal:: 
static:: 
event:: 
Action:: $
<::$ %

TrackAsset::% /
,::/ 0

GameObject::1 ;
,::; <
Playable::= E
>::E F*
OnTrackAnimationPlayableCreate::G e
;::e f
[<< 	
SerializeField<<	 
,<< 
HideInInspector<< (
]<<( )
bool<<* .
m_Locked<</ 7
;<<7 8
[== 	
SerializeField==	 
,== 
HideInInspector== (
]==( )
bool==* .
m_Muted==/ 6
;==6 7
[>> 	
SerializeField>>	 
,>> 
HideInInspector>> (
]>>( )
string>>* 0(
m_CustomPlayableFullTypename>>1 M
=>>N O
string>>P V
.>>V W
Empty>>W \
;>>\ ]
[?? 	
SerializeField??	 
,?? 
HideInInspector?? (
]??( )
AnimationClip??* 7
m_Curves??8 @
;??@ A
[@@ 	
SerializeField@@	 
,@@ 
HideInInspector@@ (
]@@( )
PlayableAsset@@* 7
m_Parent@@8 @
;@@@ A
[AA 	
SerializeFieldAA	 
,AA 
HideInInspectorAA (
]AA( )
ListAA* .
<AA. /
ScriptableObjectAA/ ?
>AA? @

m_ChildrenAAA K
;AAK L
[CC 	
NonSerializedCC	 
]CC 
intCC 
m_ItemsHashCC '
;CC' (
[DD 	
NonSerializedDD	 
]DD 
TimelineClipDD $
[DD$ %
]DD% &
m_ClipsCacheDD' 3
;DD3 4
DiscreteTimeFF 
m_StartFF 
;FF 
DiscreteTimeGG 
m_EndGG 
;GG 
boolHH 
m_CacheSortedHH 
;HH 
boolII 
?II #
m_SupportsNotificationsII %
;II% &
staticKK 

TrackAssetKK 
[KK 
]KK 
s_EmptyCacheKK (
=KK) *
newKK+ .

TrackAssetKK/ 9
[KK9 :
$numKK: ;
]KK; <
;KK< =
IEnumerableLL 
<LL 

TrackAssetLL 
>LL 
m_ChildTrackCacheLL  1
;LL1 2
staticNN 

DictionaryNN 
<NN 
TypeNN 
,NN %
TrackBindingTypeAttributeNN  9
>NN9 :,
 s_TrackBindingTypeAttributeCacheNN; [
=NN\ ]
newNN^ a

DictionaryNNb l
<NNl m
TypeNNm q
,NNq r&
TrackBindingTypeAttribute	NNs Œ
>
NNŒ 
(
NN 
)
NN 
;
NN 
[PP 	
SerializeFieldPP	 
,PP 
HideInInspectorPP (
]PP( )
	protectedPP* 3
internalPP4 <
ListPP= A
<PPA B
TimelineClipPPB N
>PPN O
m_ClipsPPP W
=PPX Y
newPPZ ]
ListPP^ b
<PPb c
TimelineClipPPc o
>PPo p
(PPp q
)PPq r
;PPr s
[RR 	
SerializeFieldRR	 
,RR 
HideInInspectorRR (
]RR( )

MarkerListRR* 4
	m_MarkersRR5 >
=RR? @
newRRA D

MarkerListRRE O
(RRO P
$numRRP Q
)RRQ R
;RRR S
internalUU 
intUU 

DirtyIndexUU 
{UU  !
getUU" %
;UU% &
privateUU' .
setUU/ 2
;UU2 3
}UU4 5
internalVV 
voidVV 
	MarkDirtyVV 
(VV  
)VV  !
{WW 	

DirtyIndexXX 
++XX 
;XX 
foreachYY 
(YY 
varYY 
clipYY 
inYY  
GetClipsYY! )
(YY) *
)YY* +
)YY+ ,
{ZZ 
if[[ 
([[ 
clip[[ 
!=[[ 
null[[  
)[[  !
clip\\ 
.\\ 
	MarkDirty\\ "
(\\" #
)\\# $
;\\$ %
}]] 
}^^ 	
publicee 
doubleee 
startee 
{ff 	
getgg 
{hh 
UpdateDurationii 
(ii 
)ii  
;ii  !
returnjj 
(jj 
doublejj 
)jj 
m_Startjj &
;jj& '
}kk 
}ll 	
publicqq 
doubleqq 
endqq 
{rr 	
getss 
{tt 
UpdateDurationuu 
(uu 
)uu  
;uu  !
returnvv 
(vv 
doublevv 
)vv 
m_Endvv $
;vv$ %
}ww 
}xx 	
public}} 
sealed}} 
override}} 
double}} %
duration}}& .
{~~ 	
get 
{
€€ 
UpdateDuration
 
(
 
)
  
;
  !
return
‚‚ 
(
‚‚ 
double
‚‚ 
)
‚‚ 
(
‚‚  
m_End
‚‚  %
-
‚‚& '
m_Start
‚‚( /
)
‚‚/ 0
;
‚‚0 1
}
ƒƒ 
}
„„ 	
public
ŒŒ 
bool
ŒŒ 
muted
ŒŒ 
{
 	
get
 
{
 
return
 
m_Muted
  
;
  !
}
" #
set
 
{
 
m_Muted
 
=
 
value
 !
;
! "
}
# $
}
 	
public
˜˜ 
bool
˜˜ 
mutedInHierarchy
˜˜ $
{
™™ 	
get
šš 
{
›› 
if
œœ 
(
œœ 
muted
œœ 
)
œœ 
return
 
true
 
;
  

TrackAsset
ŸŸ 
p
ŸŸ 
=
ŸŸ 
this
ŸŸ #
;
ŸŸ# $
while
   
(
   
p
   
.
   
parent
   
as
    "

TrackAsset
  # -
!=
  . 0
null
  1 5
)
  5 6
{
¡¡ 
p
¢¢ 
=
¢¢ 
(
¢¢ 

TrackAsset
¢¢ #
)
¢¢# $
p
¢¢$ %
.
¢¢% &
parent
¢¢& ,
;
¢¢, -
if
££ 
(
££ 
p
££ 
as
££ 

GroupTrack
££ '
!=
££( *
null
££+ /
)
££/ 0
return
¤¤ 
p
¤¤  
.
¤¤  !
mutedInHierarchy
¤¤! 1
;
¤¤1 2
}
¥¥ 
return
§§ 
false
§§ 
;
§§ 
}
¨¨ 
}
©© 	
public
®® 
TimelineAsset
®® 
timelineAsset
®® *
{
¯¯ 	
get
°° 
{
±± 
var
²² 
node
²² 
=
²² 
this
²² 
;
²²  
while
³³ 
(
³³ 
node
³³ 
!=
³³ 
null
³³ #
)
³³# $
{
´´ 
if
µµ 
(
µµ 
node
µµ 
.
µµ 
parent
µµ #
==
µµ$ &
null
µµ' +
)
µµ+ ,
return
¶¶ 
null
¶¶ #
;
¶¶# $
var
¸¸ 
seq
¸¸ 
=
¸¸ 
node
¸¸ "
.
¸¸" #
parent
¸¸# )
as
¸¸* ,
TimelineAsset
¸¸- :
;
¸¸: ;
if
¹¹ 
(
¹¹ 
seq
¹¹ 
!=
¹¹ 
null
¹¹ #
)
¹¹# $
return
ºº 
seq
ºº "
;
ºº" #
node
¼¼ 
=
¼¼ 
node
¼¼ 
.
¼¼  
parent
¼¼  &
as
¼¼' )

TrackAsset
¼¼* 4
;
¼¼4 5
}
½½ 
return
¾¾ 
null
¾¾ 
;
¾¾ 
}
¿¿ 
}
ÀÀ 	
public
ÈÈ 
PlayableAsset
ÈÈ 
parent
ÈÈ #
{
ÉÉ 	
get
ÊÊ 
{
ÊÊ 
return
ÊÊ 
m_Parent
ÊÊ !
;
ÊÊ! "
}
ÊÊ# $
internal
ËË 
set
ËË 
{
ËË 
m_Parent
ËË #
=
ËË$ %
value
ËË& +
;
ËË+ ,
}
ËË- .
}
ÌÌ 	
public
ÒÒ 
IEnumerable
ÒÒ 
<
ÒÒ 
TimelineClip
ÒÒ '
>
ÒÒ' (
GetClips
ÒÒ) 1
(
ÒÒ1 2
)
ÒÒ2 3
{
ÓÓ 	
return
ÔÔ 
clips
ÔÔ 
;
ÔÔ 
}
ÕÕ 	
internal
×× 
TimelineClip
×× 
[
×× 
]
×× 
clips
××  %
{
ØØ 	
get
ÙÙ 
{
ÚÚ 
if
ÛÛ 
(
ÛÛ 
m_Clips
ÛÛ 
==
ÛÛ 
null
ÛÛ #
)
ÛÛ# $
m_Clips
ÜÜ 
=
ÜÜ 
new
ÜÜ !
List
ÜÜ" &
<
ÜÜ& '
TimelineClip
ÜÜ' 3
>
ÜÜ3 4
(
ÜÜ4 5
)
ÜÜ5 6
;
ÜÜ6 7
if
ŞŞ 
(
ŞŞ 
m_ClipsCache
ŞŞ  
==
ŞŞ! #
null
ŞŞ$ (
)
ŞŞ( )
{
ßß 
m_CacheSorted
àà !
=
àà" #
false
àà$ )
;
àà) *
m_ClipsCache
áá  
=
áá! "
m_Clips
áá# *
.
áá* +
ToArray
áá+ 2
(
áá2 3
)
áá3 4
;
áá4 5
}
ââ 
return
ää 
m_ClipsCache
ää #
;
ää# $
}
åå 
}
ææ 	
public
ññ 
virtual
ññ 
bool
ññ 
isEmpty
ññ #
{
òò 	
get
óó 
{
óó 
return
óó 
!
óó 
hasClips
óó "
&&
óó# %
!
óó& '
	hasCurves
óó' 0
&&
óó1 3
GetMarkerCount
óó4 B
(
óóB C
)
óóC D
==
óóE G
$num
óóH I
;
óóI J
}
óóK L
}
ôô 	
public
ùù 
bool
ùù 
hasClips
ùù 
{
úú 	
get
ûû 
{
ûû 
return
ûû 
m_Clips
ûû  
!=
ûû! #
null
ûû$ (
&&
ûû) +
m_Clips
ûû, 3
.
ûû3 4
Count
ûû4 9
!=
ûû: <
$num
ûû= >
;
ûû> ?
}
ûû@ A
}
üü 	
public
„„ 
bool
„„ 
	hasCurves
„„ 
{
…… 	
get
†† 
{
†† 
return
†† 
m_Curves
†† !
!=
††" $
null
††% )
&&
††* ,
!
††- .
m_Curves
††. 6
.
††6 7
empty
††7 <
;
††< =
}
††> ?
}
‡‡ 	
public
ŒŒ 
bool
ŒŒ 

isSubTrack
ŒŒ 
{
 	
get
 
{
 
var
 
owner
 
=
 
parent
 "
as
# %

TrackAsset
& 0
;
0 1
return
‘‘ 
owner
‘‘ 
!=
‘‘ 
null
‘‘  $
&&
‘‘% '
owner
‘‘( -
.
‘‘- .
GetType
‘‘. 5
(
‘‘5 6
)
‘‘6 7
==
‘‘8 :
GetType
‘‘; B
(
‘‘B C
)
‘‘C D
;
‘‘D E
}
’’ 
}
““ 	
public
™™ 
override
™™ 
IEnumerable
™™ #
<
™™# $
PlayableBinding
™™$ 3
>
™™3 4
outputs
™™5 <
{
šš 	
get
›› 
{
œœ '
TrackBindingTypeAttribute
 )
	attribute
* 3
;
3 4
if
 
(
 
!
 .
 s_TrackBindingTypeAttributeCache
 5
.
5 6
TryGetValue
6 A
(
A B
GetType
B I
(
I J
)
J K
,
K L
out
M P
	attribute
Q Z
)
Z [
)
[ \
{
ŸŸ 
	attribute
   
=
   
(
    !'
TrackBindingTypeAttribute
  ! :
)
  : ;
	Attribute
  ; D
.
  D E 
GetCustomAttribute
  E W
(
  W X
GetType
  X _
(
  _ `
)
  ` a
,
  a b
typeof
  c i
(
  i j(
TrackBindingTypeAttribute  j ƒ
)  ƒ „
)  „ …
;  … †.
 s_TrackBindingTypeAttributeCache
¡¡ 4
.
¡¡4 5
Add
¡¡5 8
(
¡¡8 9
GetType
¡¡9 @
(
¡¡@ A
)
¡¡A B
,
¡¡B C
	attribute
¡¡D M
)
¡¡M N
;
¡¡N O
}
¢¢ 
var
¤¤ 
trackBindingType
¤¤ $
=
¤¤% &
	attribute
¤¤' 0
!=
¤¤1 3
null
¤¤4 8
?
¤¤9 :
	attribute
¤¤; D
.
¤¤D E
type
¤¤E I
:
¤¤J K
null
¤¤L P
;
¤¤P Q
yield
¥¥ 
return
¥¥ #
ScriptPlayableBinding
¥¥ 2
.
¥¥2 3
Create
¥¥3 9
(
¥¥9 :
name
¥¥: >
,
¥¥> ?
this
¥¥@ D
,
¥¥D E
trackBindingType
¥¥F V
)
¥¥V W
;
¥¥W X
}
¦¦ 
}
§§ 	
public
°° 
IEnumerable
°° 
<
°° 

TrackAsset
°° %
>
°°% &
GetChildTracks
°°' 5
(
°°5 6
)
°°6 7
{
±± 	#
UpdateChildTrackCache
²² !
(
²²! "
)
²²" #
;
²²# $
return
³³ 
m_ChildTrackCache
³³ $
;
³³$ %
}
´´ 	
internal
¶¶ 
string
¶¶ $
customPlayableTypename
¶¶ .
{
·· 	
get
¸¸ 
{
¸¸ 
return
¸¸ *
m_CustomPlayableFullTypename
¸¸ 5
;
¸¸5 6
}
¸¸7 8
set
¹¹ 
{
¹¹ *
m_CustomPlayableFullTypename
¹¹ .
=
¹¹/ 0
value
¹¹1 6
;
¹¹6 7
}
¹¹8 9
}
ºº 	
public
¿¿ 
AnimationClip
¿¿ 
curves
¿¿ #
{
ÀÀ 	
get
ÁÁ 
{
ÁÁ 
return
ÁÁ 
m_Curves
ÁÁ !
;
ÁÁ! "
}
ÁÁ# $
internal
ÂÂ 
set
ÂÂ 
{
ÂÂ 
m_Curves
ÂÂ #
=
ÂÂ$ %
value
ÂÂ& +
;
ÂÂ+ ,
}
ÂÂ- .
}
ÃÃ 	
string
ÅÅ 
ICurvesOwner
ÅÅ 
.
ÅÅ 
defaultCurvesName
ÅÅ -
{
ÆÆ 	
get
ÇÇ 
{
ÇÇ 
return
ÇÇ  
kDefaultCurvesName
ÇÇ +
;
ÇÇ+ ,
}
ÇÇ- .
}
ÈÈ 	
Object
ÊÊ 
ICurvesOwner
ÊÊ 
.
ÊÊ 
asset
ÊÊ !
{
ËË 	
get
ÌÌ 
{
ÌÌ 
return
ÌÌ 
this
ÌÌ 
;
ÌÌ 
}
ÌÌ  
}
ÍÍ 	
Object
ÏÏ 
ICurvesOwner
ÏÏ 
.
ÏÏ 

assetOwner
ÏÏ &
{
ĞĞ 	
get
ÑÑ 
{
ÑÑ 
return
ÑÑ 
timelineAsset
ÑÑ &
;
ÑÑ& '
}
ÑÑ( )
}
ÒÒ 	

TrackAsset
ÔÔ 
ICurvesOwner
ÔÔ 
.
ÔÔ  
targetTrack
ÔÔ  +
{
ÕÕ 	
get
ÖÖ 
{
ÖÖ 
return
ÖÖ 
this
ÖÖ 
;
ÖÖ 
}
ÖÖ  
}
×× 	
internal
ÚÚ 
List
ÚÚ 
<
ÚÚ 
ScriptableObject
ÚÚ &
>
ÚÚ& '
subTracksObjects
ÚÚ( 8
{
ÛÛ 	
get
ÜÜ 
{
ÜÜ 
return
ÜÜ 

m_Children
ÜÜ #
;
ÜÜ# $
}
ÜÜ% &
}
İİ 	
public
çç 
bool
çç 
locked
çç 
{
èè 	
get
éé 
{
éé 
return
éé 
m_Locked
éé !
;
éé! "
}
éé# $
set
êê 
{
êê 
m_Locked
êê 
=
êê 
value
êê "
;
êê" #
}
êê$ %
}
ëë 	
public
õõ 
bool
õõ 
lockedInHierarchy
õõ %
{
öö 	
get
÷÷ 
{
øø 
if
ùù 
(
ùù 
locked
ùù 
)
ùù 
return
úú 
true
úú 
;
úú  

TrackAsset
üü 
p
üü 
=
üü 
this
üü #
;
üü# $
while
ıı 
(
ıı 
p
ıı 
.
ıı 
parent
ıı 
as
ıı  "

TrackAsset
ıı# -
!=
ıı. 0
null
ıı1 5
)
ıı5 6
{
şş 
p
ÿÿ 
=
ÿÿ 
(
ÿÿ 

TrackAsset
ÿÿ #
)
ÿÿ# $
p
ÿÿ$ %
.
ÿÿ% &
parent
ÿÿ& ,
;
ÿÿ, -
if
€€ 
(
€€ 
p
€€ 
as
€€ 

GroupTrack
€€ '
!=
€€( *
null
€€+ /
)
€€/ 0
return
 
p
  
.
  !
lockedInHierarchy
! 2
;
2 3
}
‚‚ 
return
„„ 
false
„„ 
;
„„ 
}
…… 
}
†† 	
public
 
bool
 #
supportsNotifications
 )
{
 	
get
 
{
‘‘ 
if
’’ 
(
’’ 
!
’’ %
m_SupportsNotifications
’’ ,
.
’’, -
HasValue
’’- 5
)
’’5 6
{
““ %
m_SupportsNotifications
”” +
=
””, -#
NotificationUtilities
””. C
.
””C D,
TrackTypeSupportsNotifications
””D b
(
””b c
GetType
””c j
(
””j k
)
””k l
)
””l m
;
””m n
}
•• 
return
—— %
m_SupportsNotifications
—— .
.
——. /
Value
——/ 4
;
——4 5
}
˜˜ 
}
™™ 	
void
›› 
__internalAwake
›› 
(
›› 
)
›› 
{
œœ 	
if
 
(
 
m_Clips
 
==
 
null
 
)
  
m_Clips
 
=
 
new
 
List
 "
<
" #
TimelineClip
# /
>
/ 0
(
0 1
)
1 2
;
2 3
m_ChildTrackCache
   
=
   
null
    $
;
  $ %
if
¡¡ 
(
¡¡ 

m_Children
¡¡ 
==
¡¡ 
null
¡¡ "
)
¡¡" #

m_Children
¢¢ 
=
¢¢ 
new
¢¢  
List
¢¢! %
<
¢¢% &
ScriptableObject
¢¢& 6
>
¢¢6 7
(
¢¢7 8
)
¢¢8 9
;
¢¢9 :
for
¥¥ 
(
¥¥ 
int
¥¥ 
i
¥¥ 
=
¥¥ 

m_Children
¥¥ #
.
¥¥# $
Count
¥¥$ )
-
¥¥* +
$num
¥¥, -
;
¥¥- .
i
¥¥/ 0
>=
¥¥1 3
$num
¥¥4 5
;
¥¥5 6
i
¥¥7 8
--
¥¥8 :
)
¥¥: ;
{
¦¦ 
object
§§ 
o
§§ 
=
§§ 

m_Children
§§ %
[
§§% &
i
§§& '
]
§§' (
;
§§( )
if
¨¨ 
(
¨¨ 
o
¨¨ 
==
¨¨ 
null
¨¨ 
)
¨¨ 
{
©© 
Debug
ªª 
.
ªª 

LogWarning
ªª $
(
ªª$ %
$str
ªª% j
)
ªªj k
;
ªªk l

m_Children
«« 
.
«« 
RemoveAt
«« '
(
««' (
i
««( )
)
««) *
;
««* +
}
¬¬ 
}
­­ 
}
¯¯ 	
public
ÂÂ 
void
ÂÂ 
CreateCurves
ÂÂ  
(
ÂÂ  !
string
ÂÂ! '
curvesClipName
ÂÂ( 6
)
ÂÂ6 7
{
ÃÃ 	
if
ÄÄ 
(
ÄÄ 
m_Curves
ÄÄ 
!=
ÄÄ 
null
ÄÄ  
)
ÄÄ  !
return
ÅÅ 
;
ÅÅ 
m_Curves
ÇÇ 
=
ÇÇ %
TimelineCreateUtilities
ÇÇ .
.
ÇÇ. /)
CreateAnimationClipForTrack
ÇÇ/ J
(
ÇÇJ K
string
ÇÇK Q
.
ÇÇQ R
IsNullOrEmpty
ÇÇR _
(
ÇÇ_ `
curvesClipName
ÇÇ` n
)
ÇÇn o
?
ÇÇp q!
kDefaultCurvesNameÇÇr „
:ÇÇ… †
curvesClipNameÇÇ‡ •
,ÇÇ• –
thisÇÇ— ›
,ÇÇ› œ
trueÇÇ ¡
)ÇÇ¡ ¢
;ÇÇ¢ £
}
ÈÈ 	
public
ÔÔ 
virtual
ÔÔ 
Playable
ÔÔ 
CreateTrackMixer
ÔÔ  0
(
ÔÔ0 1
PlayableGraph
ÔÔ1 >
graph
ÔÔ? D
,
ÔÔD E

GameObject
ÔÔF P
go
ÔÔQ S
,
ÔÔS T
int
ÔÔU X

inputCount
ÔÔY c
)
ÔÔc d
{
ÕÕ 	
return
ÖÖ 
Playable
ÖÖ 
.
ÖÖ 
Create
ÖÖ "
(
ÖÖ" #
graph
ÖÖ# (
,
ÖÖ( )

inputCount
ÖÖ* 4
)
ÖÖ4 5
;
ÖÖ5 6
}
×× 	
public
ßß 
sealed
ßß 
override
ßß 
Playable
ßß '
CreatePlayable
ßß( 6
(
ßß6 7
PlayableGraph
ßß7 D
graph
ßßE J
,
ßßJ K

GameObject
ßßL V
go
ßßW Y
)
ßßY Z
{
àà 	
return
áá 
Playable
áá 
.
áá 
Null
áá  
;
áá  !
}
ââ 	
public
ëë 
TimelineClip
ëë 
CreateDefaultClip
ëë -
(
ëë- .
)
ëë. /
{
ìì 	
var
íí %
trackClipTypeAttributes
íí '
=
íí( )
GetType
íí* 1
(
íí1 2
)
íí2 3
.
íí3 4!
GetCustomAttributes
íí4 G
(
ííG H
typeof
ííH N
(
ííN O$
TrackClipTypeAttribute
ííO e
)
ííe f
,
ííf g
true
ííh l
)
ííl m
;
íím n
Type
îî 
playableAssetType
îî "
=
îî# $
null
îî% )
;
îî) *
foreach
ïï 
(
ïï 
var
ïï $
trackClipTypeAttribute
ïï /
in
ïï0 2%
trackClipTypeAttributes
ïï3 J
)
ïïJ K
{
ğğ 
var
ññ 
	attribute
ññ 
=
ññ $
trackClipTypeAttribute
ññ  6
as
ññ7 9$
TrackClipTypeAttribute
ññ: P
;
ññP Q
if
òò 
(
òò 
	attribute
òò 
!=
òò  
null
òò! %
&&
òò& (
typeof
òò) /
(
òò/ 0
IPlayableAsset
òò0 >
)
òò> ?
.
òò? @
IsAssignableFrom
òò@ P
(
òòP Q
	attribute
òòQ Z
.
òòZ [
inspectedType
òò[ h
)
òòh i
&&
òòj l
typeof
òòm s
(
òòs t
ScriptableObjectòòt „
)òò„ …
.òò… † 
IsAssignableFromòò† –
(òò– —
	attributeòò—  
.òò  ¡
inspectedTypeòò¡ ®
)òò® ¯
)òò¯ °
{
óó 
playableAssetType
ôô %
=
ôô& '
	attribute
ôô( 1
.
ôô1 2
inspectedType
ôô2 ?
;
ôô? @
break
õõ 
;
õõ 
}
öö 
}
÷÷ 
if
ùù 
(
ùù 
playableAssetType
ùù !
==
ùù" $
null
ùù% )
)
ùù) *
{
úú 
Debug
ûû 
.
ûû 

LogWarning
ûû  
(
ûû  !
$str
ûû! I
+
ûûJ K
GetType
ûûL S
(
ûûS T
)
ûûT U
)
ûûU V
;
ûûV W
return
üü 
null
üü 
;
üü 
}
ıı 
return
şş '
CreateAndAddNewClipOfType
şş ,
(
şş, -
playableAssetType
şş- >
)
şş> ?
;
şş? @
}
ÿÿ 	
public
ŠŠ 
TimelineClip
ŠŠ 

CreateClip
ŠŠ &
<
ŠŠ& '
T
ŠŠ' (
>
ŠŠ( )
(
ŠŠ) *
)
ŠŠ* +
where
ŠŠ, 1
T
ŠŠ2 3
:
ŠŠ4 5
ScriptableObject
ŠŠ6 F
,
ŠŠF G
IPlayableAsset
ŠŠH V
{
‹‹ 	
return
ŒŒ 

CreateClip
ŒŒ 
(
ŒŒ 
typeof
ŒŒ $
(
ŒŒ$ %
T
ŒŒ% &
)
ŒŒ& '
)
ŒŒ' (
;
ŒŒ( )
}
 	
public
šš 
bool
šš 

DeleteClip
šš 
(
šš 
TimelineClip
šš +
clip
šš, 0
)
šš0 1
{
›› 	
if
œœ 
(
œœ 
!
œœ 
m_Clips
œœ 
.
œœ 
Contains
œœ !
(
œœ! "
clip
œœ" &
)
œœ& '
)
œœ' (
throw
 
new
 '
InvalidOperationException
 3
(
3 4
$str
4 s
)
s t
;
t u
return
ŸŸ 
timelineAsset
ŸŸ  
!=
ŸŸ! #
null
ŸŸ$ (
&&
ŸŸ) +
timelineAsset
ŸŸ, 9
.
ŸŸ9 :

DeleteClip
ŸŸ: D
(
ŸŸD E
clip
ŸŸE I
)
ŸŸI J
;
ŸŸJ K
}
   	
public
¯¯ 
IMarker
¯¯ 
CreateMarker
¯¯ #
(
¯¯# $
Type
¯¯$ (
type
¯¯) -
,
¯¯- .
double
¯¯/ 5
time
¯¯6 :
)
¯¯: ;
{
°° 	
return
±± 
	m_Markers
±± 
.
±± 
CreateMarker
±± )
(
±±) *
type
±±* .
,
±±. /
time
±±0 4
,
±±4 5
this
±±6 :
)
±±: ;
;
±±; <
}
²² 	
public
ÀÀ 
T
ÀÀ 
CreateMarker
ÀÀ 
<
ÀÀ 
T
ÀÀ 
>
ÀÀ  
(
ÀÀ  !
double
ÀÀ! '
time
ÀÀ( ,
)
ÀÀ, -
where
ÀÀ. 3
T
ÀÀ4 5
:
ÀÀ6 7
ScriptableObject
ÀÀ8 H
,
ÀÀH I
IMarker
ÀÀJ Q
{
ÁÁ 	
return
ÂÂ 
(
ÂÂ 
T
ÂÂ 
)
ÂÂ 
CreateMarker
ÂÂ "
(
ÂÂ" #
typeof
ÂÂ# )
(
ÂÂ) *
T
ÂÂ* +
)
ÂÂ+ ,
,
ÂÂ, -
time
ÂÂ. 2
)
ÂÂ2 3
;
ÂÂ3 4
}
ÃÃ 	
public
ÊÊ 
bool
ÊÊ 
DeleteMarker
ÊÊ  
(
ÊÊ  !
IMarker
ÊÊ! (
marker
ÊÊ) /
)
ÊÊ/ 0
{
ËË 	
return
ÌÌ 
	m_Markers
ÌÌ 
.
ÌÌ 
Remove
ÌÌ #
(
ÌÌ# $
marker
ÌÌ$ *
)
ÌÌ* +
;
ÌÌ+ ,
}
ÍÍ 	
public
ÔÔ 
IEnumerable
ÔÔ 
<
ÔÔ 
IMarker
ÔÔ "
>
ÔÔ" #

GetMarkers
ÔÔ$ .
(
ÔÔ. /
)
ÔÔ/ 0
{
ÕÕ 	
return
ÖÖ 
	m_Markers
ÖÖ 
.
ÖÖ 

GetMarkers
ÖÖ '
(
ÖÖ' (
)
ÖÖ( )
;
ÖÖ) *
}
×× 	
public
İİ 
int
İİ 
GetMarkerCount
İİ !
(
İİ! "
)
İİ" #
{
ŞŞ 	
return
ßß 
	m_Markers
ßß 
.
ßß 
Count
ßß "
;
ßß" #
}
àà 	
public
éé 
IMarker
éé 
	GetMarker
éé  
(
éé  !
int
éé! $
idx
éé% (
)
éé( )
{
êê 	
return
ëë 
	m_Markers
ëë 
[
ëë 
idx
ëë  
]
ëë  !
;
ëë! "
}
ìì 	
internal
îî 
TimelineClip
îî 

CreateClip
îî (
(
îî( )
System
îî) /
.
îî/ 0
Type
îî0 4
requestedType
îî5 B
)
îîB C
{
ïï 	
if
ğğ 
(
ğğ 
ValidateClipType
ğğ  
(
ğğ  !
requestedType
ğğ! .
)
ğğ. /
)
ğğ/ 0
return
ññ '
CreateAndAddNewClipOfType
ññ 0
(
ññ0 1
requestedType
ññ1 >
)
ññ> ?
;
ññ? @
throw
óó 
new
óó '
InvalidOperationException
óó /
(
óó/ 0
$str
óó0 @
+
óóA B
requestedType
óóC P
+
óóQ R
$str
óóS z
+
óó{ |
GetTypeóó} „
(óó„ …
)óó… †
)óó† ‡
;óó‡ ˆ
}
ôô 	
internal
öö 
TimelineClip
öö '
CreateAndAddNewClipOfType
öö 7
(
öö7 8
Type
öö8 <
requestedType
öö= J
)
ööJ K
{
÷÷ 	
var
øø 
newClip
øø 
=
øø 
CreateClipOfType
øø *
(
øø* +
requestedType
øø+ 8
)
øø8 9
;
øø9 :
AddClip
ùù 
(
ùù 
newClip
ùù 
)
ùù 
;
ùù 
return
úú 
newClip
úú 
;
úú 
}
ûû 	
internal
ıı 
TimelineClip
ıı 
CreateClipOfType
ıı .
(
ıı. /
Type
ıı/ 3
requestedType
ıı4 A
)
ııA B
{
şş 	
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
ValidateClipType
ÿÿ !
(
ÿÿ! "
requestedType
ÿÿ" /
)
ÿÿ/ 0
)
ÿÿ0 1
throw
€€ 
new
€€ 
System
€€  
.
€€  !'
InvalidOperationException
€€! :
(
€€: ;
$str
€€; K
+
€€L M
requestedType
€€N [
+
€€\ ]
$str€€^ …
+€€† ‡
GetType€€ˆ 
(€€ 
)€€ ‘
)€€‘ ’
;€€’ “
var
‚‚ 
playableAsset
‚‚ 
=
‚‚ 
CreateInstance
‚‚  .
(
‚‚. /
requestedType
‚‚/ <
)
‚‚< =
;
‚‚= >
if
ƒƒ 
(
ƒƒ 
playableAsset
ƒƒ 
==
ƒƒ  
null
ƒƒ! %
)
ƒƒ% &
{
„„ 
throw
…… 
new
…… 
System
……  
.
……  !'
InvalidOperationException
……! :
(
……: ;
$str
……; w
+
……x y
requestedType……z ‡
.……‡ ˆ
Name……ˆ Œ
)……Œ 
;…… 
}
†† 
playableAsset
‡‡ 
.
‡‡ 
name
‡‡ 
=
‡‡  
requestedType
‡‡! .
.
‡‡. /
Name
‡‡/ 3
;
‡‡3 4%
TimelineCreateUtilities
ˆˆ #
.
ˆˆ# $!
SaveAssetIntoObject
ˆˆ$ 7
(
ˆˆ7 8
playableAsset
ˆˆ8 E
,
ˆˆE F
this
ˆˆG K
)
ˆˆK L
;
ˆˆL M
TimelineUndo
‰‰ 
.
‰‰ '
RegisterCreatedObjectUndo
‰‰ 2
(
‰‰2 3
playableAsset
‰‰3 @
,
‰‰@ A
$str
‰‰B O
)
‰‰O P
;
‰‰P Q
return
‹‹ !
CreateClipFromAsset
‹‹ &
(
‹‹& '
playableAsset
‹‹' 4
)
‹‹4 5
;
‹‹5 6
}
ŒŒ 	
internal
““ 
TimelineClip
““ )
CreateClipFromPlayableAsset
““ 9
(
““9 :
IPlayableAsset
““: H
asset
““I N
)
““N O
{
”” 	
if
•• 
(
•• 
asset
•• 
==
•• 
null
•• 
)
•• 
throw
–– 
new
–– #
ArgumentNullException
–– /
(
––/ 0
$str
––0 7
)
––7 8
;
––8 9
if
˜˜ 
(
˜˜ 
(
˜˜ 
asset
˜˜ 
as
˜˜ 
ScriptableObject
˜˜ *
)
˜˜* +
==
˜˜, .
null
˜˜/ 3
)
˜˜3 4
throw
™™ 
new
™™ 
System
™™  
.
™™  !
ArgumentException
™™! 2
(
™™2 3
$str
™™3 Q
+
™™R S
$str™™T ƒ
)™™ƒ „
;™™„ …
if
›› 
(
›› 
!
›› 
ValidateClipType
›› !
(
››! "
asset
››" '
.
››' (
GetType
››( /
(
››/ 0
)
››0 1
)
››1 2
)
››2 3
throw
œœ 
new
œœ 
System
œœ  
.
œœ  !'
InvalidOperationException
œœ! :
(
œœ: ;
$str
œœ; K
+
œœL M
asset
œœN S
.
œœS T
GetType
œœT [
(
œœ[ \
)
œœ\ ]
+
œœ^ _
$strœœ` ‡
+œœˆ ‰
GetTypeœœŠ ‘
(œœ‘ ’
)œœ’ “
)œœ“ ”
;œœ” •
return
 !
CreateClipFromAsset
 &
(
& '
asset
' ,
as
- /
ScriptableObject
0 @
)
@ A
;
A B
}
ŸŸ 	
private
¡¡ 
TimelineClip
¡¡ !
CreateClipFromAsset
¡¡ 0
(
¡¡0 1
ScriptableObject
¡¡1 A
playableAsset
¡¡B O
)
¡¡O P
{
¢¢ 	
TimelineUndo
££ 
.
££ 
PushUndo
££ !
(
££! "
this
££" &
,
££& '
$str
££( 5
)
££5 6
;
££6 7
var
¥¥ 
newClip
¥¥ 
=
¥¥ ,
CreateNewClipContainerInternal
¥¥ 8
(
¥¥8 9
)
¥¥9 :
;
¥¥: ;
newClip
¦¦ 
.
¦¦ 
displayName
¦¦ 
=
¦¦  !
playableAsset
¦¦" /
.
¦¦/ 0
name
¦¦0 4
;
¦¦4 5
newClip
§§ 
.
§§ 
asset
§§ 
=
§§ 
playableAsset
§§ )
;
§§) *
IPlayableAsset
©© 
iPlayableAsset
©© )
=
©©* +
playableAsset
©©, 9
as
©©: <
IPlayableAsset
©©= K
;
©©K L
if
ªª 
(
ªª 
iPlayableAsset
ªª 
!=
ªª !
null
ªª" &
)
ªª& '
{
«« 
var
¬¬ 
candidateDuration
¬¬ %
=
¬¬& '
iPlayableAsset
¬¬( 6
.
¬¬6 7
duration
¬¬7 ?
;
¬¬? @
if
®® 
(
®® 
!
®® 
double
®® 
.
®® 

IsInfinity
®® &
(
®®& '
candidateDuration
®®' 8
)
®®8 9
&&
®®: <
candidateDuration
®®= N
>
®®O P
$num
®®Q R
)
®®R S
newClip
¯¯ 
.
¯¯ 
duration
¯¯ $
=
¯¯% &
Math
¯¯' +
.
¯¯+ ,
Min
¯¯, /
(
¯¯/ 0
Math
¯¯0 4
.
¯¯4 5
Max
¯¯5 8
(
¯¯8 9
candidateDuration
¯¯9 J
,
¯¯J K
TimelineClip
¯¯L X
.
¯¯X Y
kMinDuration
¯¯Y e
)
¯¯e f
,
¯¯f g
TimelineClip
¯¯h t
.
¯¯t u
kMaxTimeValue¯¯u ‚
)¯¯‚ ƒ
;¯¯ƒ „
}
°° 
try
²² 
{
³³ 
OnCreateClip
´´ 
(
´´ 
newClip
´´ $
)
´´$ %
;
´´% &
}
µµ 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
e
¶¶ 
)
¶¶ 
{
·· 
Debug
¸¸ 
.
¸¸ 
LogError
¸¸ 
(
¸¸ 
e
¸¸  
.
¸¸  !
Message
¸¸! (
,
¸¸( )
playableAsset
¸¸* 7
)
¸¸7 8
;
¸¸8 9
return
¹¹ 
null
¹¹ 
;
¹¹ 
}
ºº 
return
¼¼ 
newClip
¼¼ 
;
¼¼ 
}
½½ 	
internal
¿¿ 
IEnumerable
¿¿ 
<
¿¿ 
ScriptableObject
¿¿ -
>
¿¿- .
GetMarkersRaw
¿¿/ <
(
¿¿< =
)
¿¿= >
{
ÀÀ 	
return
ÁÁ 
	m_Markers
ÁÁ 
.
ÁÁ 
GetRawMarkerList
ÁÁ -
(
ÁÁ- .
)
ÁÁ. /
;
ÁÁ/ 0
}
ÂÂ 	
internal
ÄÄ 
void
ÄÄ 
ClearMarkers
ÄÄ "
(
ÄÄ" #
)
ÄÄ# $
{
ÅÅ 	
	m_Markers
ÆÆ 
.
ÆÆ 
Clear
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ 
}
ÇÇ 	
internal
ÉÉ 
void
ÉÉ 
	AddMarker
ÉÉ 
(
ÉÉ  
ScriptableObject
ÉÉ  0
e
ÉÉ1 2
)
ÉÉ2 3
{
ÊÊ 	
	m_Markers
ËË 
.
ËË 
Add
ËË 
(
ËË 
e
ËË 
)
ËË 
;
ËË 
}
ÌÌ 	
internal
ÎÎ 
bool
ÎÎ 
DeleteMarkerRaw
ÎÎ %
(
ÎÎ% &
ScriptableObject
ÎÎ& 6
marker
ÎÎ7 =
)
ÎÎ= >
{
ÏÏ 	
return
ĞĞ 
	m_Markers
ĞĞ 
.
ĞĞ 
Remove
ĞĞ #
(
ĞĞ# $
marker
ĞĞ$ *
,
ĞĞ* +
timelineAsset
ĞĞ, 9
,
ĞĞ9 :
this
ĞĞ; ?
)
ĞĞ? @
;
ĞĞ@ A
}
ÑÑ 	
int
ÓÓ 
GetTimeRangeHash
ÓÓ 
(
ÓÓ 
)
ÓÓ 
{
ÔÔ 	
double
ÕÕ 
start
ÕÕ 
=
ÕÕ 
double
ÕÕ !
.
ÕÕ! "
MaxValue
ÕÕ" *
,
ÕÕ* +
end
ÕÕ, /
=
ÕÕ0 1
double
ÕÕ2 8
.
ÕÕ8 9
MinValue
ÕÕ9 A
;
ÕÕA B
foreach
ÖÖ 
(
ÖÖ 
var
ÖÖ 
marker
ÖÖ 
in
ÖÖ  "

GetMarkers
ÖÖ# -
(
ÖÖ- .
)
ÖÖ. /
)
ÖÖ/ 0
{
×× 
if
ØØ 
(
ØØ 
!
ØØ 
(
ØØ 
marker
ØØ 
is
ØØ 
INotification
ØØ  -
)
ØØ- .
)
ØØ. /
{
ÙÙ 
continue
ÚÚ 
;
ÚÚ 
}
ÛÛ 
if
İİ 
(
İİ 
marker
İİ 
.
İİ 
time
İİ 
<
İİ  !
start
İİ" '
)
İİ' (
start
ŞŞ 
=
ŞŞ 
marker
ŞŞ "
.
ŞŞ" #
time
ŞŞ# '
;
ŞŞ' (
if
ßß 
(
ßß 
marker
ßß 
.
ßß 
time
ßß 
>
ßß  !
end
ßß" %
)
ßß% &
end
àà 
=
àà 
marker
àà  
.
àà  !
time
àà! %
;
àà% &
}
áá 
return
ãã 
start
ãã 
.
ãã 
GetHashCode
ãã $
(
ãã$ %
)
ãã% &
.
ãã& '
CombineHash
ãã' 2
(
ãã2 3
end
ãã3 6
.
ãã6 7
GetHashCode
ãã7 B
(
ããB C
)
ããC D
)
ããD E
;
ããE F
}
ää 	
internal
ææ 
void
ææ 
AddClip
ææ 
(
ææ 
TimelineClip
ææ *
newClip
ææ+ 2
)
ææ2 3
{
çç 	
if
èè 
(
èè 
!
èè 
m_Clips
èè 
.
èè 
Contains
èè !
(
èè! "
newClip
èè" )
)
èè) *
)
èè* +
{
éé 
m_Clips
êê 
.
êê 
Add
êê 
(
êê 
newClip
êê #
)
êê# $
;
êê$ %
m_ClipsCache
ëë 
=
ëë 
null
ëë #
;
ëë# $
}
ìì 
}
íí 	
Playable
ïï )
CreateNotificationsPlayable
ïï ,
(
ïï, -
PlayableGraph
ïï- :
graph
ïï; @
,
ïï@ A
Playable
ïïB J
mixerPlayable
ïïK X
,
ïïX Y

GameObject
ïïZ d
go
ïïe g
,
ïïg h
Playable
ïïi q
timelinePlayableïïr ‚
)ïï‚ ƒ
{
ğğ 	
s_BuildData
ññ 
.
ññ 

markerList
ññ "
.
ññ" #
Clear
ññ# (
(
ññ( )
)
ññ) *
;
ññ* +"
GatherNotificiations
òò  
(
òò  !
s_BuildData
òò! ,
.
òò, -

markerList
òò- 7
)
òò7 8
;
òò8 9
var
óó "
notificationPlayable
óó $
=
óó% &#
NotificationUtilities
óó' <
.
óó< =)
CreateNotificationsPlayable
óó= X
(
óóX Y
graph
óóY ^
,
óó^ _
s_BuildData
óó` k
.
óók l

markerList
óól v
,
óóv w
go
óóx z
)
óóz {
;
óó{ |
if
ôô 
(
ôô "
notificationPlayable
ôô $
.
ôô$ %
IsValid
ôô% ,
(
ôô, -
)
ôô- .
)
ôô. /
{
õõ "
notificationPlayable
öö $
.
öö$ %
GetBehaviour
öö% 1
(
öö1 2
)
öö2 3
.
öö3 4

timeSource
öö4 >
=
öö? @
timelinePlayable
ööA Q
;
ööQ R
if
÷÷ 
(
÷÷ 
mixerPlayable
÷÷ !
.
÷÷! "
IsValid
÷÷" )
(
÷÷) *
)
÷÷* +
)
÷÷+ ,
{
øø "
notificationPlayable
ùù (
.
ùù( )
SetInputCount
ùù) 6
(
ùù6 7
$num
ùù7 8
)
ùù8 9
;
ùù9 :
graph
úú 
.
úú 
Connect
úú !
(
úú! "
mixerPlayable
úú" /
,
úú/ 0
$num
úú1 2
,
úú2 3"
notificationPlayable
úú4 H
,
úúH I
$num
úúJ K
)
úúK L
;
úúL M"
notificationPlayable
ûû (
.
ûû( )
SetInputWeight
ûû) 7
(
ûû7 8
mixerPlayable
ûû8 E
,
ûûE F
$num
ûûG H
)
ûûH I
;
ûûI J
}
üü 
}
ıı 
return
ÿÿ "
notificationPlayable
ÿÿ '
;
ÿÿ' (
}
€€ 	
internal
‚‚ 
Playable
‚‚ !
CreatePlayableGraph
‚‚ -
(
‚‚- .
PlayableGraph
‚‚. ;
graph
‚‚< A
,
‚‚A B

GameObject
‚‚C M
go
‚‚N P
,
‚‚P Q
IntervalTree
‚‚R ^
<
‚‚^ _
RuntimeElement
‚‚_ m
>
‚‚m n
tree
‚‚o s
,
‚‚s t
Playable
‚‚u }
timelinePlayable‚‚~ 
)‚‚ 
{
ƒƒ 	
UpdateDuration
„„ 
(
„„ 
)
„„ 
;
„„ 
var
…… 
mixerPlayable
…… 
=
…… 
Playable
……  (
.
……( )
Null
……) -
;
……- .
if
†† 
(
†† &
CanCompileClipsRecursive
†† (
(
††( )
)
††) *
)
††* +
mixerPlayable
‡‡ 
=
‡‡ '
OnCreateClipPlayableGraph
‡‡  9
(
‡‡9 :
graph
‡‡: ?
,
‡‡? @
go
‡‡A C
,
‡‡C D
tree
‡‡E I
)
‡‡I J
;
‡‡J K
var
‰‰ #
notificationsPlayable
‰‰ %
=
‰‰& ')
CreateNotificationsPlayable
‰‰( C
(
‰‰C D
graph
‰‰D I
,
‰‰I J
mixerPlayable
‰‰K X
,
‰‰X Y
go
‰‰Z \
,
‰‰\ ]
timelinePlayable
‰‰^ n
)
‰‰n o
;
‰‰o p
s_BuildData
 
.
 
Clear
 
(
 
)
 
;
  
if
 
(
 
!
 #
notificationsPlayable
 &
.
& '
IsValid
' .
(
. /
)
/ 0
&&
1 3
!
4 5
mixerPlayable
5 B
.
B C
IsValid
C J
(
J K
)
K L
)
L M
{
 
Debug
 
.
 
LogErrorFormat
 $
(
$ %
$str
% w
,
w x
name
y }
,
} ~
GetType
‘‘ 
(
‘‘ 
)
‘‘ 
.
‘‘ 
FullName
‘‘ &
)
‘‘& '
;
‘‘' (
return
““ 
Playable
““ 
.
““  
Create
““  &
(
““& '
graph
““' ,
)
““, -
;
““- .
}
”” 
return
–– #
notificationsPlayable
–– (
.
––( )
IsValid
––) 0
(
––0 1
)
––1 2
?
––3 4#
notificationsPlayable
––5 J
:
––K L
mixerPlayable
––M Z
;
––Z [
}
—— 	
internal
™™ 
virtual
™™ 
Playable
™™ !
CompileClips
™™" .
(
™™. /
PlayableGraph
™™/ <
graph
™™= B
,
™™B C

GameObject
™™D N
go
™™O Q
,
™™Q R
IList
™™S X
<
™™X Y
TimelineClip
™™Y e
>
™™e f
timelineClips
™™g t
,
™™t u
IntervalTree™™v ‚
<™™‚ ƒ
RuntimeElement™™ƒ ‘
>™™‘ ’
tree™™“ —
)™™— ˜
{
šš 	
var
›› 
blend
›› 
=
›› 
CreateTrackMixer
›› (
(
››( )
graph
››) .
,
››. /
go
››0 2
,
››2 3
timelineClips
››4 A
.
››A B
Count
››B G
)
››G H
;
››H I
for
œœ 
(
œœ 
var
œœ 
c
œœ 
=
œœ 
$num
œœ 
;
œœ 
c
œœ 
<
œœ 
timelineClips
œœ  -
.
œœ- .
Count
œœ. 3
;
œœ3 4
c
œœ5 6
++
œœ6 8
)
œœ8 9
{
 
var
 
source
 
=
 
CreatePlayable
 +
(
+ ,
graph
, 1
,
1 2
go
3 5
,
5 6
timelineClips
7 D
[
D E
c
E F
]
F G
)
G H
;
H I
if
ŸŸ 
(
ŸŸ 
source
ŸŸ 
.
ŸŸ 
IsValid
ŸŸ "
(
ŸŸ" #
)
ŸŸ# $
)
ŸŸ$ %
{
   
source
¡¡ 
.
¡¡ 
SetDuration
¡¡ &
(
¡¡& '
timelineClips
¡¡' 4
[
¡¡4 5
c
¡¡5 6
]
¡¡6 7
.
¡¡7 8
duration
¡¡8 @
)
¡¡@ A
;
¡¡A B
var
¢¢ 
clip
¢¢ 
=
¢¢ 
new
¢¢ "
RuntimeClip
¢¢# .
(
¢¢. /
timelineClips
¢¢/ <
[
¢¢< =
c
¢¢= >
]
¢¢> ?
,
¢¢? @
source
¢¢A G
,
¢¢G H
blend
¢¢I N
)
¢¢N O
;
¢¢O P
tree
££ 
.
££ 
Add
££ 
(
££ 
clip
££ !
)
££! "
;
££" #
graph
¤¤ 
.
¤¤ 
Connect
¤¤ !
(
¤¤! "
source
¤¤" (
,
¤¤( )
$num
¤¤* +
,
¤¤+ ,
blend
¤¤- 2
,
¤¤2 3
c
¤¤4 5
)
¤¤5 6
;
¤¤6 7
blend
¥¥ 
.
¥¥ 
SetInputWeight
¥¥ (
(
¥¥( )
c
¥¥) *
,
¥¥* +
$num
¥¥, 0
)
¥¥0 1
;
¥¥1 2
}
¦¦ 
}
§§ %
ConfigureTrackAnimation
¨¨ #
(
¨¨# $
tree
¨¨$ (
,
¨¨( )
go
¨¨* ,
,
¨¨, -
blend
¨¨. 3
)
¨¨3 4
;
¨¨4 5
return
©© 
blend
©© 
;
©© 
}
ªª 	
void
¬¬ $
GatherCompilableTracks
¬¬ #
(
¬¬# $
IList
¬¬$ )
<
¬¬) *

TrackAsset
¬¬* 4
>
¬¬4 5
tracks
¬¬6 <
)
¬¬< =
{
­­ 	
if
®® 
(
®® 
!
®® 
muted
®® 
&&
®® 
CanCompileClips
®® )
(
®®) *
)
®®* +
)
®®+ ,
tracks
¯¯ 
.
¯¯ 
Add
¯¯ 
(
¯¯ 
this
¯¯ 
)
¯¯  
;
¯¯  !
foreach
±± 
(
±± 
var
±± 
c
±± 
in
±± 
GetChildTracks
±± ,
(
±±, -
)
±±- .
)
±±. /
{
²² 
if
³³ 
(
³³ 
c
³³ 
!=
³³ 
null
³³ 
)
³³ 
c
´´ 
.
´´ $
GatherCompilableTracks
´´ ,
(
´´, -
tracks
´´- 3
)
´´3 4
;
´´4 5
}
µµ 
}
¶¶ 	
void
¸¸ "
GatherNotificiations
¸¸ !
(
¸¸! "
List
¸¸" &
<
¸¸& '
IMarker
¸¸' .
>
¸¸. /
markers
¸¸0 7
)
¸¸7 8
{
¹¹ 	
if
ºº 
(
ºº 
!
ºº 
muted
ºº 
&&
ºº %
CanCompileNotifications
ºº 1
(
ºº1 2
)
ºº2 3
)
ºº3 4
markers
»» 
.
»» 
AddRange
»»  
(
»»  !

GetMarkers
»»! +
(
»»+ ,
)
»», -
)
»»- .
;
»». /
foreach
¼¼ 
(
¼¼ 
var
¼¼ 
c
¼¼ 
in
¼¼ 
GetChildTracks
¼¼ ,
(
¼¼, -
)
¼¼- .
)
¼¼. /
{
½½ 
if
¾¾ 
(
¾¾ 
c
¾¾ 
!=
¾¾ 
null
¾¾ 
)
¾¾ 
c
¿¿ 
.
¿¿ "
GatherNotificiations
¿¿ *
(
¿¿* +
markers
¿¿+ 2
)
¿¿2 3
;
¿¿3 4
}
ÀÀ 
}
ÁÁ 	
internal
ÃÃ 
virtual
ÃÃ 
Playable
ÃÃ !'
OnCreateClipPlayableGraph
ÃÃ" ;
(
ÃÃ; <
PlayableGraph
ÃÃ< I
graph
ÃÃJ O
,
ÃÃO P

GameObject
ÃÃQ [
go
ÃÃ\ ^
,
ÃÃ^ _
IntervalTree
ÃÃ` l
<
ÃÃl m
RuntimeElement
ÃÃm {
>
ÃÃ{ |
treeÃÃ} 
)ÃÃ ‚
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
tree
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
throw
ÆÆ 
new
ÆÆ 
ArgumentException
ÆÆ +
(
ÆÆ+ ,
$str
ÆÆ, R
,
ÆÆR S
$str
ÆÆT Z
)
ÆÆZ [
;
ÆÆ[ \
if
ÈÈ 
(
ÈÈ 
go
ÈÈ 
==
ÈÈ 
null
ÈÈ 
)
ÈÈ 
throw
ÉÉ 
new
ÉÉ 
ArgumentException
ÉÉ +
(
ÉÉ+ ,
$str
ÉÉ, P
,
ÉÉP Q
$str
ÉÉR V
)
ÉÉV W
;
ÉÉW X
s_BuildData
ËË 
.
ËË 
Clear
ËË 
(
ËË 
)
ËË 
;
ËË  $
GatherCompilableTracks
ÌÌ "
(
ÌÌ" #
s_BuildData
ÌÌ# .
.
ÌÌ. /
	trackList
ÌÌ/ 8
)
ÌÌ8 9
;
ÌÌ9 :
if
ÏÏ 
(
ÏÏ 
s_BuildData
ÏÏ 
.
ÏÏ 
	trackList
ÏÏ %
.
ÏÏ% &
Count
ÏÏ& +
==
ÏÏ, .
$num
ÏÏ/ 0
)
ÏÏ0 1
return
ĞĞ 
Playable
ĞĞ 
.
ĞĞ  
Null
ĞĞ  $
;
ĞĞ$ %
Playable
ÓÓ 

layerMixer
ÓÓ 
=
ÓÓ  !
Playable
ÓÓ" *
.
ÓÓ* +
Null
ÓÓ+ /
;
ÓÓ/ 0

ILayerable
ÔÔ 
	layerable
ÔÔ  
=
ÔÔ! "
this
ÔÔ# '
as
ÔÔ( *

ILayerable
ÔÔ+ 5
;
ÔÔ5 6
if
ÕÕ 
(
ÕÕ 
	layerable
ÕÕ 
!=
ÕÕ 
null
ÕÕ !
)
ÕÕ! "

layerMixer
ÖÖ 
=
ÖÖ 
	layerable
ÖÖ &
.
ÖÖ& '
CreateLayerMixer
ÖÖ' 7
(
ÖÖ7 8
graph
ÖÖ8 =
,
ÖÖ= >
go
ÖÖ? A
,
ÖÖA B
s_BuildData
ÖÖC N
.
ÖÖN O
	trackList
ÖÖO X
.
ÖÖX Y
Count
ÖÖY ^
)
ÖÖ^ _
;
ÖÖ_ `
if
ØØ 
(
ØØ 

layerMixer
ØØ 
.
ØØ 
IsValid
ØØ "
(
ØØ" #
)
ØØ# $
)
ØØ$ %
{
ÙÙ 
for
ÚÚ 
(
ÚÚ 
int
ÚÚ 
i
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
i
ÚÚ  !
<
ÚÚ" #
s_BuildData
ÚÚ$ /
.
ÚÚ/ 0
	trackList
ÚÚ0 9
.
ÚÚ9 :
Count
ÚÚ: ?
;
ÚÚ? @
i
ÚÚA B
++
ÚÚB D
)
ÚÚD E
{
ÛÛ 
var
ÜÜ 
mixer
ÜÜ 
=
ÜÜ 
s_BuildData
ÜÜ  +
.
ÜÜ+ ,
	trackList
ÜÜ, 5
[
ÜÜ5 6
i
ÜÜ6 7
]
ÜÜ7 8
.
ÜÜ8 9
CompileClips
ÜÜ9 E
(
ÜÜE F
graph
ÜÜF K
,
ÜÜK L
go
ÜÜM O
,
ÜÜO P
s_BuildData
ÜÜQ \
.
ÜÜ\ ]
	trackList
ÜÜ] f
[
ÜÜf g
i
ÜÜg h
]
ÜÜh i
.
ÜÜi j
clips
ÜÜj o
,
ÜÜo p
tree
ÜÜq u
)
ÜÜu v
;
ÜÜv w
if
İİ 
(
İİ 
mixer
İİ 
.
İİ 
IsValid
İİ %
(
İİ% &
)
İİ& '
)
İİ' (
{
ŞŞ 
graph
ßß 
.
ßß 
Connect
ßß %
(
ßß% &
mixer
ßß& +
,
ßß+ ,
$num
ßß- .
,
ßß. /

layerMixer
ßß0 :
,
ßß: ;
i
ßß< =
)
ßß= >
;
ßß> ?

layerMixer
àà "
.
àà" #
SetInputWeight
àà# 1
(
àà1 2
i
àà2 3
,
àà3 4
$num
àà5 9
)
àà9 :
;
àà: ;
}
áá 
}
ââ 
return
ãã 

layerMixer
ãã !
;
ãã! "
}
ää 
if
çç 
(
çç 
s_BuildData
çç 
.
çç 
	trackList
çç %
.
çç% &
Count
çç& +
==
çç, .
$num
çç/ 0
)
çç0 1
return
èè 
s_BuildData
èè "
.
èè" #
	trackList
èè# ,
[
èè, -
$num
èè- .
]
èè. /
.
èè/ 0
CompileClips
èè0 <
(
èè< =
graph
èè= B
,
èèB C
go
èèD F
,
èèF G
s_BuildData
èèH S
.
èèS T
	trackList
èèT ]
[
èè] ^
$num
èè^ _
]
èè_ `
.
èè` a
clips
èèa f
,
èèf g
tree
èèh l
)
èèl m
;
èèm n
for
ëë 
(
ëë 
int
ëë 
i
ëë 
=
ëë 
$num
ëë 
;
ëë 
i
ëë 
<
ëë 
s_BuildData
ëë  +
.
ëë+ ,
	trackList
ëë, 5
.
ëë5 6
Count
ëë6 ;
;
ëë; <
i
ëë= >
++
ëë> @
)
ëë@ A
s_BuildData
ìì 
.
ìì 
clipList
ìì $
.
ìì$ %
AddRange
ìì% -
(
ìì- .
s_BuildData
ìì. 9
.
ìì9 :
	trackList
ìì: C
[
ììC D
i
ììD E
]
ììE F
.
ììF G
clips
ììG L
)
ììL M
;
ììM N
bool
ïï 
applyWarning
ïï 
=
ïï 
false
ïï  %
;
ïï% &
for
ğğ 
(
ğğ 
int
ğğ 
i
ğğ 
=
ğğ 
$num
ğğ 
;
ğğ 
i
ğğ 
<
ğğ 
s_BuildData
ğğ  +
.
ğğ+ ,
	trackList
ğğ, 5
.
ğğ5 6
Count
ğğ6 ;
;
ğğ; <
i
ğğ= >
++
ğğ> @
)
ğğ@ A
applyWarning
ññ 
|=
ññ 
i
ññ  !
>
ññ" #
$num
ññ$ %
&&
ññ& (
s_BuildData
ññ) 4
.
ññ4 5
	trackList
ññ5 >
[
ññ> ?
i
ññ? @
]
ññ@ A
.
ññA B
	hasCurves
ññB K
;
ññK L
if
óó 
(
óó 
applyWarning
óó 
)
óó 
Debug
ôô 
.
ôô 

LogWarning
ôô  
(
ôô  !
$strôô! »
+ôô¼ ½
s_BuildDataôô¾ É
.ôôÉ Ê
	trackListôôÊ Ó
[ôôÓ Ô
$numôôÔ Õ
]ôôÕ Ö
.ôôÖ ×
GetTypeôô× Ş
(ôôŞ ß
)ôôß à
.ôôà á
Nameôôá å
+ôôæ ç
$strôôè ´
)ôô´ µ
;ôôµ ¶
return
÷÷ 
CompileClips
÷÷ 
(
÷÷  
graph
÷÷  %
,
÷÷% &
go
÷÷' )
,
÷÷) *
s_BuildData
÷÷+ 6
.
÷÷6 7
clipList
÷÷7 ?
,
÷÷? @
tree
÷÷A E
)
÷÷E F
;
÷÷F G
}
øø 	
internal
úú 
void
úú %
ConfigureTrackAnimation
úú -
(
úú- .
IntervalTree
úú. :
<
úú: ;
RuntimeElement
úú; I
>
úúI J
tree
úúK O
,
úúO P

GameObject
úúQ [
go
úú\ ^
,
úú^ _
Playable
úú` h
blend
úúi n
)
úún o
{
ûû 	
if
üü 
(
üü 
!
üü 
	hasCurves
üü 
)
üü 
return
ıı 
;
ıı 
blend
ÿÿ 
.
ÿÿ #
SetAnimatedProperties
ÿÿ '
(
ÿÿ' (
m_Curves
ÿÿ( 0
)
ÿÿ0 1
;
ÿÿ1 2
tree
€€ 
.
€€ 
Add
€€ 
(
€€ 
new
€€ !
InfiniteRuntimeClip
€€ ,
(
€€, -
blend
€€- 2
)
€€2 3
)
€€3 4
;
€€4 5
if
‚‚ 
(
‚‚ ,
OnTrackAnimationPlayableCreate
‚‚ .
!=
‚‚/ 1
null
‚‚2 6
)
‚‚6 7,
OnTrackAnimationPlayableCreate
ƒƒ .
.
ƒƒ. /
Invoke
ƒƒ/ 5
(
ƒƒ5 6
this
ƒƒ6 :
,
ƒƒ: ;
go
ƒƒ< >
,
ƒƒ> ?
blend
ƒƒ@ E
)
ƒƒE F
;
ƒƒF G
}
„„ 	
internal
‡‡ 
void
‡‡ 
	SortClips
‡‡ 
(
‡‡  
)
‡‡  !
{
ˆˆ 	
var
‰‰ 
clipsAsArray
‰‰ 
=
‰‰ 
clips
‰‰ $
;
‰‰$ %
if
ŠŠ 
(
ŠŠ 
!
ŠŠ 
m_CacheSorted
ŠŠ 
)
ŠŠ 
{
‹‹ 
Array
ŒŒ 
.
ŒŒ 
Sort
ŒŒ 
(
ŒŒ 
clips
ŒŒ  
,
ŒŒ  !
(
ŒŒ" #
clip1
ŒŒ# (
,
ŒŒ( )
clip2
ŒŒ* /
)
ŒŒ/ 0
=>
ŒŒ1 3
clip1
ŒŒ4 9
.
ŒŒ9 :
start
ŒŒ: ?
.
ŒŒ? @
	CompareTo
ŒŒ@ I
(
ŒŒI J
clip2
ŒŒJ O
.
ŒŒO P
start
ŒŒP U
)
ŒŒU V
)
ŒŒV W
;
ŒŒW X
m_CacheSorted
 
=
 
true
  $
;
$ %
}
 
}
 	
internal
’’ 
void
’’  
ClearClipsInternal
’’ (
(
’’( )
)
’’) *
{
““ 	
m_Clips
”” 
=
”” 
new
”” 
List
”” 
<
”” 
TimelineClip
”” +
>
””+ ,
(
””, -
)
””- .
;
””. /
m_ClipsCache
•• 
=
•• 
null
•• 
;
••  
}
–– 	
internal
˜˜ 
void
˜˜ $
ClearSubTracksInternal
˜˜ ,
(
˜˜, -
)
˜˜- .
{
™™ 	

m_Children
šš 
=
šš 
new
šš 
List
šš !
<
šš! "
ScriptableObject
šš" 2
>
šš2 3
(
šš3 4
)
šš4 5
;
šš5 6

Invalidate
›› 
(
›› 
)
›› 
;
›› 
}
œœ 	
internal
ŸŸ 
void
ŸŸ 

OnClipMove
ŸŸ  
(
ŸŸ  !
)
ŸŸ! "
{
   	
m_CacheSorted
¡¡ 
=
¡¡ 
false
¡¡ !
;
¡¡! "
}
¢¢ 	
internal
¤¤ 
TimelineClip
¤¤ ,
CreateNewClipContainerInternal
¤¤ <
(
¤¤< =
)
¤¤= >
{
¥¥ 	
var
¦¦ 
clipContainer
¦¦ 
=
¦¦ 
new
¦¦  #
TimelineClip
¦¦$ 0
(
¦¦0 1
this
¦¦1 5
)
¦¦5 6
;
¦¦6 7
clipContainer
§§ 
.
§§ 
asset
§§ 
=
§§  !
null
§§" &
;
§§& '
var
ªª 
newClipStart
ªª 
=
ªª 
$num
ªª "
;
ªª" #
for
«« 
(
«« 
var
«« 
a
«« 
=
«« 
$num
«« 
;
«« 
a
«« 
<
«« 
m_Clips
««  '
.
««' (
Count
««( -
-
««. /
$num
««0 1
;
««1 2
a
««3 4
++
««4 6
)
««6 7
{
¬¬ 
var
­­ 
clipDuration
­­  
=
­­! "
m_Clips
­­# *
[
­­* +
a
­­+ ,
]
­­, -
.
­­- .
duration
­­. 6
;
­­6 7
if
®® 
(
®® 
double
®® 
.
®® 

IsInfinity
®® %
(
®®% &
clipDuration
®®& 2
)
®®2 3
)
®®3 4
clipDuration
¯¯  
=
¯¯! "
TimelineClip
¯¯# /
.
¯¯/ 0+
kDefaultClipDurationInSeconds
¯¯0 M
;
¯¯M N
newClipStart
°° 
=
°° 
Math
°° #
.
°°# $
Max
°°$ '
(
°°' (
newClipStart
°°( 4
,
°°4 5
m_Clips
°°6 =
[
°°= >
a
°°> ?
]
°°? @
.
°°@ A
start
°°A F
+
°°G H
clipDuration
°°I U
)
°°U V
;
°°V W
}
±± 
clipContainer
³³ 
.
³³ 

mixInCurve
³³ $
=
³³% &
AnimationCurve
³³' 5
.
³³5 6
	EaseInOut
³³6 ?
(
³³? @
$num
³³@ A
,
³³A B
$num
³³C D
,
³³D E
$num
³³F G
,
³³G H
$num
³³I J
)
³³J K
;
³³K L
clipContainer
´´ 
.
´´ 
mixOutCurve
´´ %
=
´´& '
AnimationCurve
´´( 6
.
´´6 7
	EaseInOut
´´7 @
(
´´@ A
$num
´´A B
,
´´B C
$num
´´D E
,
´´E F
$num
´´G H
,
´´H I
$num
´´J K
)
´´K L
;
´´L M
clipContainer
µµ 
.
µµ 
start
µµ 
=
µµ  !
newClipStart
µµ" .
;
µµ. /
clipContainer
¶¶ 
.
¶¶ 
duration
¶¶ "
=
¶¶# $
TimelineClip
¶¶% 1
.
¶¶1 2+
kDefaultClipDurationInSeconds
¶¶2 O
;
¶¶O P
clipContainer
·· 
.
·· 
displayName
·· %
=
··& '
$str
··( 2
;
··2 3
return
¸¸ 
clipContainer
¸¸  
;
¸¸  !
}
¹¹ 	
internal
»» 
void
»» 
AddChild
»» 
(
»» 

TrackAsset
»» )
child
»»* /
)
»»/ 0
{
¼¼ 	
if
½½ 
(
½½ 
child
½½ 
==
½½ 
null
½½ 
)
½½ 
return
¾¾ 
;
¾¾ 

m_Children
ÀÀ 
.
ÀÀ 
Add
ÀÀ 
(
ÀÀ 
child
ÀÀ  
)
ÀÀ  !
;
ÀÀ! "
child
ÁÁ 
.
ÁÁ 
parent
ÁÁ 
=
ÁÁ 
this
ÁÁ 
;
ÁÁ  

Invalidate
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÃÃ 	
internal
ÅÅ 
void
ÅÅ !
MoveLastTrackBefore
ÅÅ )
(
ÅÅ) *

TrackAsset
ÅÅ* 4
asset
ÅÅ5 :
)
ÅÅ: ;
{
ÆÆ 	
if
ÇÇ 
(
ÇÇ 

m_Children
ÇÇ 
==
ÇÇ 
null
ÇÇ "
||
ÇÇ# %

m_Children
ÇÇ& 0
.
ÇÇ0 1
Count
ÇÇ1 6
<
ÇÇ7 8
$num
ÇÇ9 :
||
ÇÇ; =
asset
ÇÇ> C
==
ÇÇD F
null
ÇÇG K
)
ÇÇK L
return
ÈÈ 
;
ÈÈ 
var
ÊÊ 
	lastTrack
ÊÊ 
=
ÊÊ 

m_Children
ÊÊ &
[
ÊÊ& '

m_Children
ÊÊ' 1
.
ÊÊ1 2
Count
ÊÊ2 7
-
ÊÊ8 9
$num
ÊÊ: ;
]
ÊÊ; <
;
ÊÊ< =
if
ËË 
(
ËË 
	lastTrack
ËË 
==
ËË 
asset
ËË "
)
ËË" #
return
ÌÌ 
;
ÌÌ 
for
ÎÎ 
(
ÎÎ 
int
ÎÎ 
i
ÎÎ 
=
ÎÎ 
$num
ÎÎ 
;
ÎÎ 
i
ÎÎ 
<
ÎÎ 

m_Children
ÎÎ  *
.
ÎÎ* +
Count
ÎÎ+ 0
-
ÎÎ1 2
$num
ÎÎ3 4
;
ÎÎ4 5
i
ÎÎ6 7
++
ÎÎ7 9
)
ÎÎ9 :
{
ÏÏ 
if
ĞĞ 
(
ĞĞ 

m_Children
ĞĞ 
[
ĞĞ 
i
ĞĞ  
]
ĞĞ  !
==
ĞĞ" $
asset
ĞĞ% *
)
ĞĞ* +
{
ÑÑ 
for
ÒÒ 
(
ÒÒ 
int
ÒÒ 
j
ÒÒ 
=
ÒÒ  

m_Children
ÒÒ! +
.
ÒÒ+ ,
Count
ÒÒ, 1
-
ÒÒ2 3
$num
ÒÒ4 5
;
ÒÒ5 6
j
ÒÒ7 8
>
ÒÒ9 :
i
ÒÒ; <
;
ÒÒ< =
j
ÒÒ> ?
--
ÒÒ? A
)
ÒÒA B

m_Children
ÓÓ "
[
ÓÓ" #
j
ÓÓ# $
]
ÓÓ$ %
=
ÓÓ& '

m_Children
ÓÓ( 2
[
ÓÓ2 3
j
ÓÓ3 4
-
ÓÓ5 6
$num
ÓÓ7 8
]
ÓÓ8 9
;
ÓÓ9 :

m_Children
ÔÔ 
[
ÔÔ 
i
ÔÔ  
]
ÔÔ  !
=
ÔÔ" #
	lastTrack
ÔÔ$ -
;
ÔÔ- .

Invalidate
ÕÕ 
(
ÕÕ 
)
ÕÕ  
;
ÕÕ  !
break
ÖÖ 
;
ÖÖ 
}
×× 
}
ØØ 
}
ÙÙ 	
internal
ÛÛ 
bool
ÛÛ 
RemoveSubTrack
ÛÛ $
(
ÛÛ$ %

TrackAsset
ÛÛ% /
child
ÛÛ0 5
)
ÛÛ5 6
{
ÜÜ 	
if
İİ 
(
İİ 

m_Children
İİ 
.
İİ 
Remove
İİ !
(
İİ! "
child
İİ" '
)
İİ' (
)
İİ( )
{
ŞŞ 

Invalidate
ßß 
(
ßß 
)
ßß 
;
ßß 
child
àà 
.
àà 
parent
àà 
=
àà 
null
àà #
;
àà# $
return
áá 
true
áá 
;
áá 
}
ââ 
return
ãã 
false
ãã 
;
ãã 
}
ää 	
internal
ææ 
void
ææ 

RemoveClip
ææ  
(
ææ  !
TimelineClip
ææ! -
clip
ææ. 2
)
ææ2 3
{
çç 	
m_Clips
èè 
.
èè 
Remove
èè 
(
èè 
clip
èè 
)
èè  
;
èè  !
m_ClipsCache
éé 
=
éé 
null
éé 
;
éé  
}
êê 	
internal
îî 
virtual
îî 
void
îî 
GetEvaluationTime
îî /
(
îî/ 0
out
îî0 3
double
îî4 :
outStart
îî; C
,
îîC D
out
îîE H
double
îîI O
outDuration
îîP [
)
îî[ \
{
ïï 	
outStart
ğğ 
=
ğğ 
double
ğğ 
.
ğğ 
PositiveInfinity
ğğ .
;
ğğ. /
var
ññ 
outEnd
ññ 
=
ññ 
double
ññ 
.
ññ  
NegativeInfinity
ññ  0
;
ññ0 1
if
óó 
(
óó 
	hasCurves
óó 
)
óó 
{
ôô 
outStart
õõ 
=
õõ 
$num
õõ 
;
õõ 
outEnd
öö 
=
öö 
TimeUtility
öö $
.
öö$ %$
GetAnimationClipLength
öö% ;
(
öö; <
curves
öö< B
)
ööB C
;
ööC D
}
÷÷ 
foreach
ùù 
(
ùù 
var
ùù 
clip
ùù 
in
ùù  
clips
ùù! &
)
ùù& '
{
úú 
outStart
ûû 
=
ûû 
Math
ûû 
.
ûû  
Min
ûû  #
(
ûû# $
clip
ûû$ (
.
ûû( )
start
ûû) .
,
ûû. /
outStart
ûû0 8
)
ûû8 9
;
ûû9 :
outEnd
üü 
=
üü 
Math
üü 
.
üü 
Max
üü !
(
üü! "
clip
üü" &
.
üü& '
end
üü' *
,
üü* +
outEnd
üü, 2
)
üü2 3
;
üü3 4
}
ıı 
if
ÿÿ 
(
ÿÿ 
HasNotifications
ÿÿ  
(
ÿÿ  !
)
ÿÿ! "
)
ÿÿ" #
{
€€ 
var
 "
notificationDuration
 (
=
) *%
GetNotificationDuration
+ B
(
B C
)
C D
;
D E
outStart
‚‚ 
=
‚‚ 
Math
‚‚ 
.
‚‚  
Min
‚‚  #
(
‚‚# $"
notificationDuration
‚‚$ 8
,
‚‚8 9
outStart
‚‚: B
)
‚‚B C
;
‚‚C D
outEnd
ƒƒ 
=
ƒƒ 
Math
ƒƒ 
.
ƒƒ 
Max
ƒƒ !
(
ƒƒ! ""
notificationDuration
ƒƒ" 6
,
ƒƒ6 7
outEnd
ƒƒ8 >
)
ƒƒ> ?
;
ƒƒ? @
}
„„ 
if
†† 
(
†† 
double
†† 
.
†† 

IsInfinity
†† !
(
††! "
outStart
††" *
)
††* +
||
††, .
double
††/ 5
.
††5 6

IsInfinity
††6 @
(
††@ A
outEnd
††A G
)
††G H
)
††H I
outStart
‡‡ 
=
‡‡ 
outDuration
‡‡ &
=
‡‡' (
$num
‡‡) ,
;
‡‡, -
else
ˆˆ 
outDuration
‰‰ 
=
‰‰ 
outEnd
‰‰ $
-
‰‰% &
outStart
‰‰' /
;
‰‰/ 0
}
ŠŠ 	
internal
 
virtual
 
void
 
GetSequenceTime
 -
(
- .
out
. 1
double
2 8
outStart
9 A
,
A B
out
C F
double
G M
outDuration
N Y
)
Y Z
{
 	
GetEvaluationTime
‘‘ 
(
‘‘ 
out
‘‘ !
outStart
‘‘" *
,
‘‘* +
out
‘‘, /
outDuration
‘‘0 ;
)
‘‘; <
;
‘‘< =
}
’’ 	
public
™™ 
virtual
™™ 
void
™™ 
GatherProperties
™™ ,
(
™™, -
PlayableDirector
™™- =
director
™™> F
,
™™F G 
IPropertyCollector
™™H Z
driver
™™[ a
)
™™a b
{
šš 	
var
 

gameObject
 
=
 "
GetGameObjectBinding
 1
(
1 2
director
2 :
)
: ;
;
; <
if
 
(
 

gameObject
 
!=
 
null
 "
)
" #
driver
ŸŸ 
.
ŸŸ "
PushActiveGameObject
ŸŸ +
(
ŸŸ+ ,

gameObject
ŸŸ, 6
)
ŸŸ6 7
;
ŸŸ7 8
if
¡¡ 
(
¡¡ 
	hasCurves
¡¡ 
)
¡¡ 
driver
¢¢ 
.
¢¢ !
AddObjectProperties
¢¢ *
(
¢¢* +
this
¢¢+ /
,
¢¢/ 0
m_Curves
¢¢1 9
)
¢¢9 :
;
¢¢: ;
foreach
¤¤ 
(
¤¤ 
var
¤¤ 
clip
¤¤ 
in
¤¤  
clips
¤¤! &
)
¤¤& '
{
¥¥ 
if
¦¦ 
(
¦¦ 
clip
¦¦ 
.
¦¦ 
curves
¦¦ 
!=
¦¦  "
null
¦¦# '
&&
¦¦( *
clip
¦¦+ /
.
¦¦/ 0
asset
¦¦0 5
!=
¦¦6 8
null
¦¦9 =
)
¦¦= >
driver
§§ 
.
§§ !
AddObjectProperties
§§ .
(
§§. /
clip
§§/ 3
.
§§3 4
asset
§§4 9
,
§§9 :
clip
§§; ?
.
§§? @
curves
§§@ F
)
§§F G
;
§§G H
IPropertyPreview
©©  
modifier
©©! )
=
©©* +
clip
©©, 0
.
©©0 1
asset
©©1 6
as
©©7 9
IPropertyPreview
©©: J
;
©©J K
if
ªª 
(
ªª 
modifier
ªª 
!=
ªª 
null
ªª  $
)
ªª$ %
modifier
«« 
.
«« 
GatherProperties
«« -
(
««- .
director
««. 6
,
««6 7
driver
««8 >
)
««> ?
;
««? @
}
¬¬ 
foreach
®® 
(
®® 
var
®® 
subtrack
®® !
in
®®" $
GetChildTracks
®®% 3
(
®®3 4
)
®®4 5
)
®®5 6
{
¯¯ 
if
°° 
(
°° 
subtrack
°° 
!=
°° 
null
°°  $
)
°°$ %
subtrack
±± 
.
±± 
GatherProperties
±± -
(
±±- .
director
±±. 6
,
±±6 7
driver
±±8 >
)
±±> ?
;
±±? @
}
²² 
if
´´ 
(
´´ 

gameObject
´´ 
!=
´´ 
null
´´ "
)
´´" #
driver
µµ 
.
µµ !
PopActiveGameObject
µµ *
(
µµ* +
)
µµ+ ,
;
µµ, -
}
¶¶ 	
internal
¸¸ 

GameObject
¸¸ "
GetGameObjectBinding
¸¸ 0
(
¸¸0 1
PlayableDirector
¸¸1 A
director
¸¸B J
)
¸¸J K
{
¹¹ 	
if
ºº 
(
ºº 
director
ºº 
==
ºº 
null
ºº  
)
ºº  !
return
»» 
null
»» 
;
»» 
var
½½ 
binding
½½ 
=
½½ 
director
½½ "
.
½½" #
GetGenericBinding
½½# 4
(
½½4 5
this
½½5 9
)
½½9 :
;
½½: ;
var
¿¿ 

gameObject
¿¿ 
=
¿¿ 
binding
¿¿ $
as
¿¿% '

GameObject
¿¿( 2
;
¿¿2 3
if
ÀÀ 
(
ÀÀ 

gameObject
ÀÀ 
!=
ÀÀ 
null
ÀÀ "
)
ÀÀ" #
return
ÁÁ 

gameObject
ÁÁ !
;
ÁÁ! "
var
ÃÃ 
comp
ÃÃ 
=
ÃÃ 
binding
ÃÃ 
as
ÃÃ !
	Component
ÃÃ" +
;
ÃÃ+ ,
if
ÄÄ 
(
ÄÄ 
comp
ÄÄ 
!=
ÄÄ 
null
ÄÄ 
)
ÄÄ 
return
ÅÅ 
comp
ÅÅ 
.
ÅÅ 

gameObject
ÅÅ &
;
ÅÅ& '
return
ÇÇ 
null
ÇÇ 
;
ÇÇ 
}
ÈÈ 	
internal
ÊÊ 
bool
ÊÊ 
ValidateClipType
ÊÊ &
(
ÊÊ& '
Type
ÊÊ' +
clipType
ÊÊ, 4
)
ÊÊ4 5
{
ËË 	
var
ÌÌ 
attrs
ÌÌ 
=
ÌÌ 
GetType
ÌÌ 
(
ÌÌ  
)
ÌÌ  !
.
ÌÌ! "!
GetCustomAttributes
ÌÌ" 5
(
ÌÌ5 6
typeof
ÌÌ6 <
(
ÌÌ< =$
TrackClipTypeAttribute
ÌÌ= S
)
ÌÌS T
,
ÌÌT U
true
ÌÌV Z
)
ÌÌZ [
;
ÌÌ[ \
for
ÍÍ 
(
ÍÍ 
var
ÍÍ 
c
ÍÍ 
=
ÍÍ 
$num
ÍÍ 
;
ÍÍ 
c
ÍÍ 
<
ÍÍ 
attrs
ÍÍ  %
.
ÍÍ% &
Length
ÍÍ& ,
;
ÍÍ, -
++
ÍÍ. 0
c
ÍÍ0 1
)
ÍÍ1 2
{
ÎÎ 
var
ÏÏ 
attr
ÏÏ 
=
ÏÏ 
(
ÏÏ $
TrackClipTypeAttribute
ÏÏ 2
)
ÏÏ2 3
attrs
ÏÏ3 8
[
ÏÏ8 9
c
ÏÏ9 :
]
ÏÏ: ;
;
ÏÏ; <
if
ĞĞ 
(
ĞĞ 
attr
ĞĞ 
.
ĞĞ 
inspectedType
ĞĞ &
.
ĞĞ& '
IsAssignableFrom
ĞĞ' 7
(
ĞĞ7 8
clipType
ĞĞ8 @
)
ĞĞ@ A
)
ĞĞA B
return
ÑÑ 
true
ÑÑ 
;
ÑÑ  
}
ÒÒ 
return
ÕÕ 
typeof
ÕÕ 
(
ÕÕ 
PlayableTrack
ÕÕ '
)
ÕÕ' (
.
ÕÕ( )
IsAssignableFrom
ÕÕ) 9
(
ÕÕ9 :
GetType
ÕÕ: A
(
ÕÕA B
)
ÕÕB C
)
ÕÕC D
&&
ÕÕE G
typeof
ÖÖ 
(
ÖÖ 
IPlayableAsset
ÖÖ %
)
ÖÖ% &
.
ÖÖ& '
IsAssignableFrom
ÖÖ' 7
(
ÖÖ7 8
clipType
ÖÖ8 @
)
ÖÖ@ A
&&
ÖÖB D
typeof
×× 
(
×× 
ScriptableObject
×× '
)
××' (
.
××( )
IsAssignableFrom
××) 9
(
××9 :
clipType
××: B
)
××B C
;
××C D
}
ØØ 	
	protected
ßß 
virtual
ßß 
void
ßß 
OnCreateClip
ßß +
(
ßß+ ,
TimelineClip
ßß, 8
clip
ßß9 =
)
ßß= >
{
ßß? @
}
ßß@ A
void
áá 
UpdateDuration
áá 
(
áá 
)
áá 
{
ââ 	
var
ää 
	itemsHash
ää 
=
ää  
CalculateItemsHash
ää .
(
ää. /
)
ää/ 0
;
ää0 1
if
åå 
(
åå 
	itemsHash
åå 
==
åå 
m_ItemsHash
åå (
)
åå( )
return
ææ 
;
ææ 
m_ItemsHash
çç 
=
çç 
	itemsHash
çç #
;
çç# $
double
éé 

trackStart
éé 
,
éé 
trackDuration
éé ,
;
éé, -
GetSequenceTime
êê 
(
êê 
out
êê 

trackStart
êê  *
,
êê* +
out
êê, /
trackDuration
êê0 =
)
êê= >
;
êê> ?
m_Start
ìì 
=
ìì 
(
ìì 
DiscreteTime
ìì #
)
ìì# $

trackStart
ìì$ .
;
ìì. /
m_End
íí 
=
íí 
(
íí 
DiscreteTime
íí !
)
íí! "
(
íí" #

trackStart
íí# -
+
íí. /
trackDuration
íí0 =
)
íí= >
;
íí> ?
this
ññ 
.
ññ )
CalculateExtrapolationTimes
ññ ,
(
ññ, -
)
ññ- .
;
ññ. /
}
òò 	
	protected
ôô 
internal
ôô 
virtual
ôô "
int
ôô# & 
CalculateItemsHash
ôô' 9
(
ôô9 :
)
ôô: ;
{
õõ 	
return
öö 
HashUtility
öö 
.
öö 
CombineHash
öö *
(
öö* +
GetClipsHash
öö+ 7
(
öö7 8
)
öö8 9
,
öö9 :"
GetAnimationClipHash
öö; O
(
ööO P
m_Curves
ööP X
)
ööX Y
,
ööY Z
GetTimeRangeHash
öö[ k
(
öök l
)
ööl m
)
ööm n
;
öön o
}
÷÷ 	
	protected
…	…	 
virtual
…	…	 
Playable
…	…	 "
CreatePlayable
…	…	# 1
(
…	…	1 2
PlayableGraph
…	…	2 ?
graph
…	…	@ E
,
…	…	E F

GameObject
…	…	G Q

gameObject
…	…	R \
,
…	…	\ ]
TimelineClip
…	…	^ j
clip
…	…	k o
)
…	…	o p
{
†	†	 	
if
‡	‡	 
(
‡	‡	 
!
‡	‡	 
graph
‡	‡	 
.
‡	‡	 
IsValid
‡	‡	 
(
‡	‡	 
)
‡	‡	  
)
‡	‡	  !
throw
ˆ	ˆ	 
new
ˆ	ˆ	 
ArgumentException
ˆ	ˆ	 +
(
ˆ	ˆ	+ ,
$str
ˆ	ˆ	, Q
)
ˆ	ˆ	Q R
;
ˆ	ˆ	R S
if
‰	‰	 
(
‰	‰	 
clip
‰	‰	 
==
‰	‰	 
null
‰	‰	 
)
‰	‰	 
throw
Š	Š	 
new
Š	Š	 #
ArgumentNullException
Š	Š	 /
(
Š	Š	/ 0
$str
Š	Š	0 6
)
Š	Š	6 7
;
Š	Š	7 8
var
Œ	Œ	 
asset
Œ	Œ	 
=
Œ	Œ	 
clip
Œ	Œ	 
.
Œ	Œ	 
asset
Œ	Œ	 "
as
Œ	Œ	# %
IPlayableAsset
Œ	Œ	& 4
;
Œ	Œ	4 5
if
		 
(
		 
asset
		 
!=
		 
null
		 
)
		 
{
		 
var
		 
handle
		 
=
		 
asset
		 "
.
		" #
CreatePlayable
		# 1
(
		1 2
graph
		2 7
,
		7 8

gameObject
		9 C
)
		C D
;
		D E
if
		 
(
		 
handle
		 
.
		 
IsValid
		 "
(
		" #
)
		# $
)
		$ %
{
‘	‘	 
handle
’	’	 
.
’	’	 #
SetAnimatedProperties
’	’	 0
(
’	’	0 1
clip
’	’	1 5
.
’	’	5 6
curves
’	’	6 <
)
’	’	< =
;
’	’	= >
handle
“	“	 
.
“	“	 
SetSpeed
“	“	 #
(
“	“	# $
clip
“	“	$ (
.
“	“	( )
	timeScale
“	“	) 2
)
“	“	2 3
;
“	“	3 4
if
”	”	 
(
”	”	 "
OnClipPlayableCreate
”	”	 ,
!=
”	”	- /
null
”	”	0 4
)
”	”	4 5"
OnClipPlayableCreate
•	•	 ,
(
•	•	, -
clip
•	•	- 1
,
•	•	1 2

gameObject
•	•	3 =
,
•	•	= >
handle
•	•	? E
)
•	•	E F
;
•	•	F G
}
–	–	 
return
—	—	 
handle
—	—	 
;
—	—	 
}
˜	˜	 
return
™	™	 
Playable
™	™	 
.
™	™	 
Null
™	™	  
;
™	™	  !
}
š	š	 	
internal
œ	œ	 
void
œ	œ	 

Invalidate
œ	œ	  
(
œ	œ	  !
)
œ	œ	! "
{
		 	
m_ChildTrackCache
		 
=
		 
null
		  $
;
		$ %
var
Ÿ	Ÿ	 
timeline
Ÿ	Ÿ	 
=
Ÿ	Ÿ	 
timelineAsset
Ÿ	Ÿ	 (
;
Ÿ	Ÿ	( )
if
 	 	 
(
 	 	 
timeline
 	 	 
!=
 	 	 
null
 	 	  
)
 	 	  !
{
¡	¡	 
timeline
¢	¢	 
.
¢	¢	 

Invalidate
¢	¢	 #
(
¢	¢	# $
)
¢	¢	$ %
;
¢	¢	% &
}
£	£	 
}
¤	¤	 	
internal
¦	¦	 
double
¦	¦	 %
GetNotificationDuration
¦	¦	 /
(
¦	¦	/ 0
)
¦	¦	0 1
{
§	§	 	
if
¨	¨	 
(
¨	¨	 
!
¨	¨	 #
supportsNotifications
¨	¨	 &
)
¨	¨	& '
{
©	©	 
return
ª	ª	 
$num
ª	ª	 
;
ª	ª	 
}
«	«	 
var
­	­	 
maxTime
­	­	 
=
­	­	 
$num
­	­	 
;
­	­	 
foreach
®	®	 
(
®	®	 
var
®	®	 
marker
®	®	 
in
®	®	  "

GetMarkers
®	®	# -
(
®	®	- .
)
®	®	. /
)
®	®	/ 0
{
¯	¯	 
if
°	°	 
(
°	°	 
!
°	°	 
(
°	°	 
marker
°	°	 
is
°	°	 
INotification
°	°	  -
)
°	°	- .
)
°	°	. /
{
±	±	 
continue
²	²	 
;
²	²	 
}
³	³	 
maxTime
´	´	 
=
´	´	 
Math
´	´	 
.
´	´	 
Max
´	´	 "
(
´	´	" #
maxTime
´	´	# *
,
´	´	* +
marker
´	´	, 2
.
´	´	2 3
time
´	´	3 7
)
´	´	7 8
;
´	´	8 9
}
µ	µ	 
return
·	·	 
maxTime
·	·	 
;
·	·	 
}
¸	¸	 	
internal
º	º	 
virtual
º	º	 
bool
º	º	 
CanCompileClips
º	º	 -
(
º	º	- .
)
º	º	. /
{
»	»	 	
return
¼	¼	 
hasClips
¼	¼	 
||
¼	¼	 
	hasCurves
¼	¼	 (
;
¼	¼	( )
}
½	½	 	
internal
¿	¿	 
bool
¿	¿	 
IsCompilable
¿	¿	 "
(
¿	¿	" #
)
¿	¿	# $
{
À	À	 	
var
Á	Á	 
isContainer
Á	Á	 
=
Á	Á	 
typeof
Á	Á	 $
(
Á	Á	$ %

GroupTrack
Á	Á	% /
)
Á	Á	/ 0
.
Á	Á	0 1
IsAssignableFrom
Á	Á	1 A
(
Á	Á	A B
GetType
Á	Á	B I
(
Á	Á	I J
)
Á	Á	J K
)
Á	Á	K L
;
Á	Á	L M
if
Ã	Ã	 
(
Ã	Ã	 
isContainer
Ã	Ã	 
)
Ã	Ã	 
return
Ä	Ä	 
false
Ä	Ä	 
;
Ä	Ä	 
var
Æ	Æ	 
ret
Æ	Æ	 
=
Æ	Æ	 
!
Æ	Æ	 
mutedInHierarchy
Æ	Æ	 '
&&
Æ	Æ	( *
(
Æ	Æ	+ ,
CanCompileClips
Æ	Æ	, ;
(
Æ	Æ	; <
)
Æ	Æ	< =
||
Æ	Æ	> @%
CanCompileNotifications
Æ	Æ	A X
(
Æ	Æ	X Y
)
Æ	Æ	Y Z
)
Æ	Æ	Z [
;
Æ	Æ	[ \
if
Ç	Ç	 
(
Ç	Ç	 
!
Ç	Ç	 
ret
Ç	Ç	 
)
Ç	Ç	 
{
È	È	 
foreach
É	É	 
(
É	É	 
var
É	É	 
t
É	É	 
in
É	É	 !
GetChildTracks
É	É	" 0
(
É	É	0 1
)
É	É	1 2
)
É	É	2 3
{
Ê	Ê	 
if
Ë	Ë	 
(
Ë	Ë	 
t
Ë	Ë	 
.
Ë	Ë	 
IsCompilable
Ë	Ë	 &
(
Ë	Ë	& '
)
Ë	Ë	' (
)
Ë	Ë	( )
return
Ì	Ì	 
true
Ì	Ì	 #
;
Ì	Ì	# $
}
Í	Í	 
}
Î	Î	 
return
Ğ	Ğ	 
ret
Ğ	Ğ	 
;
Ğ	Ğ	 
}
Ñ	Ñ	 	
private
Ó	Ó	 
void
Ó	Ó	 #
UpdateChildTrackCache
Ó	Ó	 *
(
Ó	Ó	* +
)
Ó	Ó	+ ,
{
Ô	Ô	 	
if
Õ	Õ	 
(
Õ	Õ	 
m_ChildTrackCache
Õ	Õ	 !
==
Õ	Õ	" $
null
Õ	Õ	% )
)
Õ	Õ	) *
{
Ö	Ö	 
if
×	×	 
(
×	×	 

m_Children
×	×	 
==
×	×	 !
null
×	×	" &
||
×	×	' )

m_Children
×	×	* 4
.
×	×	4 5
Count
×	×	5 :
==
×	×	; =
$num
×	×	> ?
)
×	×	? @
m_ChildTrackCache
Ø	Ø	 %
=
Ø	Ø	& '
s_EmptyCache
Ø	Ø	( 4
;
Ø	Ø	4 5
else
Ù	Ù	 
{
Ú	Ú	 
var
Û	Û	 
childTracks
Û	Û	 #
=
Û	Û	$ %
new
Û	Û	& )
List
Û	Û	* .
<
Û	Û	. /

TrackAsset
Û	Û	/ 9
>
Û	Û	9 :
(
Û	Û	: ;

m_Children
Û	Û	; E
.
Û	Û	E F
Count
Û	Û	F K
)
Û	Û	K L
;
Û	Û	L M
for
Ü	Ü	 
(
Ü	Ü	 
int
Ü	Ü	 
i
Ü	Ü	 
=
Ü	Ü	  
$num
Ü	Ü	! "
;
Ü	Ü	" #
i
Ü	Ü	$ %
<
Ü	Ü	& '

m_Children
Ü	Ü	( 2
.
Ü	Ü	2 3
Count
Ü	Ü	3 8
;
Ü	Ü	8 9
i
Ü	Ü	: ;
++
Ü	Ü	; =
)
Ü	Ü	= >
{
İ	İ	 
var
Ş	Ş	 
subTrack
Ş	Ş	 $
=
Ş	Ş	% &

m_Children
Ş	Ş	' 1
[
Ş	Ş	1 2
i
Ş	Ş	2 3
]
Ş	Ş	3 4
as
Ş	Ş	5 7

TrackAsset
Ş	Ş	8 B
;
Ş	Ş	B C
if
ß	ß	 
(
ß	ß	 
subTrack
ß	ß	 $
!=
ß	ß	% '
null
ß	ß	( ,
)
ß	ß	, -
childTracks
à	à	 '
.
à	à	' (
Add
à	à	( +
(
à	à	+ ,
subTrack
à	à	, 4
)
à	à	4 5
;
à	à	5 6
}
á	á	 
m_ChildTrackCache
â	â	 %
=
â	â	& '
childTracks
â	â	( 3
;
â	â	3 4
}
ã	ã	 
}
ä	ä	 
}
å	å	 	
internal
ç	ç	 
virtual
ç	ç	 
int
ç	ç	 
Hash
ç	ç	 !
(
ç	ç	! "
)
ç	ç	" #
{
è	è	 	
return
é	é	 
clips
é	é	 
.
é	é	 
Length
é	é	 
+
é	é	  !
(
é	é	" #
	m_Markers
é	é	# ,
.
é	é	, -
Count
é	é	- 2
<<
é	é	3 5
$num
é	é	6 8
)
é	é	8 9
;
é	é	9 :
}
ê	ê	 	
int
ì	ì	 
GetClipsHash
ì	ì	 
(
ì	ì	 
)
ì	ì	 
{
í	í	 	
var
î	î	 
hash
î	î	 
=
î	î	 
$num
î	î	 
;
î	î	 
foreach
ï	ï	 
(
ï	ï	 
var
ï	ï	 
clip
ï	ï	 
in
ï	ï	  
m_Clips
ï	ï	! (
)
ï	ï	( )
{
ğ	ğ	 
hash
ñ	ñ	 
=
ñ	ñ	 
hash
ñ	ñ	 
.
ñ	ñ	 
CombineHash
ñ	ñ	 '
(
ñ	ñ	' (
clip
ñ	ñ	( ,
.
ñ	ñ	, -
Hash
ñ	ñ	- 1
(
ñ	ñ	1 2
)
ñ	ñ	2 3
)
ñ	ñ	3 4
;
ñ	ñ	4 5
}
ò	ò	 
return
ó	ó	 
hash
ó	ó	 
;
ó	ó	 
}
ô	ô	 	
	protected
ö	ö	 
static
ö	ö	 
int
ö	ö	 "
GetAnimationClipHash
ö	ö	 1
(
ö	ö	1 2
AnimationClip
ö	ö	2 ?
clip
ö	ö	@ D
)
ö	ö	D E
{
÷	÷	 	
var
ø	ø	 
hash
ø	ø	 
=
ø	ø	 
$num
ø	ø	 
;
ø	ø	 
if
ù	ù	 
(
ù	ù	 
clip
ù	ù	 
!=
ù	ù	 
null
ù	ù	 
&&
ù	ù	 
!
ù	ù	  !
clip
ù	ù	! %
.
ù	ù	% &
empty
ù	ù	& +
)
ù	ù	+ ,
hash
ú	ú	 
=
ú	ú	 
hash
ú	ú	 
.
ú	ú	 
CombineHash
ú	ú	 '
(
ú	ú	' (
clip
ú	ú	( ,
.
ú	ú	, -
	frameRate
ú	ú	- 6
.
ú	ú	6 7
GetHashCode
ú	ú	7 B
(
ú	ú	B C
)
ú	ú	C D
)
ú	ú	D E
.
û	û	 
CombineHash
û	û	  
(
û	û	  !
clip
û	û	! %
.
û	û	% &
length
û	û	& ,
.
û	û	, -
GetHashCode
û	û	- 8
(
û	û	8 9
)
û	û	9 :
)
û	û	: ;
;
û	û	; <
return
ı	ı	 
hash
ı	ı	 
;
ı	ı	 
}
ş	ş	 	
bool
€
€
 
HasNotifications
€
€
 
(
€
€
 
)
€
€
 
{


 	
return
‚
‚
 
	m_Markers
‚
‚
 
.
‚
‚
 
HasNotifications
‚
‚
 -
(
‚
‚
- .
)
‚
‚
. /
;
‚
‚
/ 0
}
ƒ
ƒ
 	
bool
…
…
 %
CanCompileNotifications
…
…
 $
(
…
…
$ %
)
…
…
% &
{
†
†
 	
return
‡
‡
 #
supportsNotifications
‡
‡
 (
&&
‡
‡
) +
	m_Markers
‡
‡
, 5
.
‡
‡
5 6
HasNotifications
‡
‡
6 F
(
‡
‡
F G
)
‡
‡
G H
;
‡
‡
H I
}
ˆ
ˆ
 	
bool
Š
Š
 &
CanCompileClipsRecursive
Š
Š
 %
(
Š
Š
% &
)
Š
Š
& '
{
‹
‹
 	
if
Œ
Œ
 
(
Œ
Œ
 
CanCompileClips
Œ
Œ
 
(
Œ
Œ
  
)
Œ
Œ
  !
)
Œ
Œ
! "
return


 
true


 
;


 
foreach


 
(


 
var


 
track


 
in


 !
GetChildTracks


" 0
(


0 1
)


1 2
)


2 3
{


 
if


 
(


 
track


 
.


 &
CanCompileClipsRecursive


 2
(


2 3
)


3 4
)


4 5
return
‘
‘
 
true
‘
‘
 
;
‘
‘
  
}
’
’
 
return
”
”
 
false
”
”
 
;
”
”
 
}
•
•
 	
}
–
–
 
}—
—
 ³°
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimeUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
TimeUtility 
{ 
public

 
static

 
readonly

 
double

 %
kTimeEpsilon

& 2
=

3 4
$num

5 :
;

: ;
public 
static 
readonly 
double %
kFrameRateEpsilon& 7
=8 9
$num: >
;> ?
public 
static 
readonly 
double %*
k_MaxTimelineDurationInSeconds& D
=E F
$numG J
;J K
static 
void 
ValidateFrameRate %
(% &
double& ,
	frameRate- 6
)6 7
{ 	
if 
( 
	frameRate 
<= 
kTimeEpsilon )
)) *
throw 
new 
ArgumentException +
(+ ,
$str, P
)P Q
;Q R
} 	
public 
static 
int 
ToFrames "
(" #
double# )
time* .
,. /
double0 6
	frameRate7 @
)@ A
{ 	
ValidateFrameRate 
( 
	frameRate '
)' (
;( )
time 
= 
Math 
. 
Min 
( 
Math  
.  !
Max! $
($ %
time% )
,) *
-+ ,*
k_MaxTimelineDurationInSeconds, J
)J K
,K L*
k_MaxTimelineDurationInSecondsM k
)k l
;l m
double 
	tolerance 
= 

GetEpsilon )
() *
time* .
,. /
	frameRate0 9
)9 :
/; <
$num= @
;@ A
if 
( 
time 
< 
$num 
) 
{ 
return 
( 
int 
) 
Math  
.  !
Ceiling! (
(( )
time) -
*. /
	frameRate0 9
-: ;
	tolerance< E
)E F
;F G
} 
return 
( 
int 
) 
Math 
. 
Floor "
(" #
time# '
*( )
	frameRate* 3
+4 5
	tolerance6 ?
)? @
;@ A
} 	
public!! 
static!! 
double!! 
ToExactFrames!! *
(!!* +
double!!+ 1
time!!2 6
,!!6 7
double!!8 >
	frameRate!!? H
)!!H I
{"" 	
ValidateFrameRate## 
(## 
	frameRate## '
)##' (
;##( )
return$$ 
time$$ 
*$$ 
	frameRate$$ #
;$$# $
}%% 	
public'' 
static'' 
double'' 

FromFrames'' '
(''' (
int''( +
frames'', 2
,''2 3
double''4 :
	frameRate''; D
)''D E
{(( 	
ValidateFrameRate)) 
()) 
	frameRate)) '
)))' (
;))( )
return** 
(** 
frames** 
/** 
	frameRate** &
)**& '
;**' (
}++ 	
public-- 
static-- 
double-- 

FromFrames-- '
(--' (
double--( .
frames--/ 5
,--5 6
double--7 =
	frameRate--> G
)--G H
{.. 	
ValidateFrameRate// 
(// 
	frameRate// '
)//' (
;//( )
return00 
frames00 
/00 
	frameRate00 %
;00% &
}11 	
public33 
static33 
bool33 
OnFrameBoundary33 *
(33* +
double33+ 1
time332 6
,336 7
double338 >
	frameRate33? H
)33H I
{44 	
return55 
OnFrameBoundary55 "
(55" #
time55# '
,55' (
	frameRate55) 2
,552 3

GetEpsilon554 >
(55> ?
time55? C
,55C D
	frameRate55E N
)55N O
)55O P
;55P Q
}66 	
public88 
static88 
double88 

GetEpsilon88 '
(88' (
double88( .
time88/ 3
,883 4
double885 ;
	frameRate88< E
)88E F
{99 	
return:: 
Math:: 
.:: 
Max:: 
(:: 
Math::  
.::  !
Abs::! $
(::$ %
time::% )
)::) *
,::* +
$num::, -
)::- .
*::/ 0
	frameRate::1 :
*::; <
kTimeEpsilon::= I
;::I J
};; 	
public== 
static== 
bool== 
OnFrameBoundary== *
(==* +
double==+ 1
time==2 6
,==6 7
double==8 >
	frameRate==? H
,==H I
double==J P
epsilon==Q X
)==X Y
{>> 	
ValidateFrameRate?? 
(?? 
	frameRate?? '
)??' (
;??( )
doubleAA 
exactAA 
=AA 
ToExactFramesAA (
(AA( )
timeAA) -
,AA- .
	frameRateAA/ 8
)AA8 9
;AA9 :
doubleBB 
roundedBB 
=BB 
MathBB !
.BB! "
RoundBB" '
(BB' (
exactBB( -
)BB- .
;BB. /
returnDD 
MathDD 
.DD 
AbsDD 
(DD 
exactDD !
-DD" #
roundedDD$ +
)DD+ ,
<DD- .
epsilonDD/ 6
;DD6 7
}EE 	
publicGG 
staticGG 
doubleGG 
RoundToFrameGG )
(GG) *
doubleGG* 0
timeGG1 5
,GG5 6
doubleGG7 =
	frameRateGG> G
)GGG H
{HH 	
ValidateFrameRateII 
(II 
	frameRateII '
)II' (
;II( )
varKK 
frameBeforeKK 
=KK 
(KK 
intKK "
)KK" #
MathKK# '
.KK' (
FloorKK( -
(KK- .
timeKK. 2
*KK3 4
	frameRateKK5 >
)KK> ?
/KK@ A
	frameRateKKB K
;KKK L
varLL 

frameAfterLL 
=LL 
(LL 
intLL !
)LL! "
MathLL" &
.LL& '
CeilingLL' .
(LL. /
timeLL/ 3
*LL4 5
	frameRateLL6 ?
)LL? @
/LLA B
	frameRateLLC L
;LLL M
returnNN 
MathNN 
.NN 
AbsNN 
(NN 
timeNN  
-NN! "
frameBeforeNN# .
)NN. /
<NN0 1
MathNN2 6
.NN6 7
AbsNN7 :
(NN: ;
timeNN; ?
-NN@ A

frameAfterNNB L
)NNL M
?NNN O
frameBeforeNNP [
:NN\ ]

frameAfterNN^ h
;NNh i
}OO 	
publicQQ 
staticQQ 
stringQQ 
TimeAsFramesQQ )
(QQ) *
doubleQQ* 0
	timeValueQQ1 :
,QQ: ;
doubleQQ< B
	frameRateQQC L
,QQL M
stringQQN T
formatQQU [
=QQ\ ]
$strQQ^ b
)QQb c
{RR 	
ifSS 
(SS 
OnFrameBoundarySS 
(SS  
	timeValueSS  )
,SS) *
	frameRateSS+ 4
)SS4 5
)SS5 6
returnTT 
ToFramesTT 
(TT  
	timeValueTT  )
,TT) *
	frameRateTT+ 4
)TT4 5
.TT5 6
ToStringTT6 >
(TT> ?
)TT? @
;TT@ A
returnUU 
ToExactFramesUU  
(UU  !
	timeValueUU! *
,UU* +
	frameRateUU, 5
)UU5 6
.UU6 7
ToStringUU7 ?
(UU? @
formatUU@ F
)UUF G
;UUG H
}VV 	
publicXX 
staticXX 
stringXX 
TimeAsTimeCodeXX +
(XX+ ,
doubleXX, 2
	timeValueXX3 <
,XX< =
doubleXX> D
	frameRateXXE N
,XXN O
stringXXP V
formatXXW ]
=XX^ _
$strXX` d
)XXd e
{YY 	
ValidateFrameRateZZ 
(ZZ 
	frameRateZZ '
)ZZ' (
;ZZ( )
int\\ 
intTime\\ 
=\\ 
(\\ 
int\\ 
)\\ 
Math\\ #
.\\# $
Abs\\$ '
(\\' (
	timeValue\\( 1
)\\1 2
;\\2 3
int^^ 
hours^^ 
=^^ 
intTime^^ 
/^^  !
$num^^" &
;^^& '
int__ 
minutes__ 
=__ 
(__ 
intTime__ "
%__# $
$num__% )
)__) *
/__+ ,
$num__- /
;__/ 0
int`` 
seconds`` 
=`` 
intTime`` !
%``" #
$num``$ &
;``& '
stringbb 
resultbb 
;bb 
stringcc 
signcc 
=cc 
	timeValuecc #
<cc$ %
$numcc& '
?cc( )
$strcc* -
:cc. /
stringcc0 6
.cc6 7
Emptycc7 <
;cc< =
ifdd 
(dd 
hoursdd 
>dd 
$numdd 
)dd 
resultee 
=ee 
hoursee 
+ee  
$stree! $
+ee% &
minutesee' .
.ee. /
ToStringee/ 7
(ee7 8
$stree8 <
)ee< =
+ee> ?
$stree@ C
+eeD E
secondseeF M
.eeM N
ToStringeeN V
(eeV W
$streeW [
)ee[ \
;ee\ ]
elseff 
ifff 
(ff 
minutesff 
>ff 
$numff  
)ff  !
resultgg 
=gg 
minutesgg  
+gg! "
$strgg# &
+gg' (
secondsgg) 0
.gg0 1
ToStringgg1 9
(gg9 :
$strgg: >
)gg> ?
;gg? @
elsehh 
resultii 
=ii 
secondsii  
.ii  !
ToStringii! )
(ii) *
)ii* +
;ii+ ,
intkk 
frameDigitskk 
=kk 
(kk 
intkk "
)kk" #
Mathkk# '
.kk' (
Floorkk( -
(kk- .
Mathkk. 2
.kk2 3
Log10kk3 8
(kk8 9
	frameRatekk9 B
)kkB C
+kkD E
$numkkF G
)kkG H
;kkH I
stringpp 
framespp 
=pp 
(pp 
ToFramespp %
(pp% &
	timeValuepp& /
,pp/ 0
	frameRatepp1 :
)pp: ;
-pp< =
ToFramespp> F
(ppF G
intTimeppG N
,ppN O
	frameRateppP Y
)ppY Z
)ppZ [
.pp[ \
ToStringpp\ d
(ppd e
)ppe f
.ppf g
PadLeftppg n
(ppn o
frameDigitsppo z
,ppz {
$charpp| 
)	pp €
;
pp€ 
ifqq 
(qq 
!qq 
OnFrameBoundaryqq  
(qq  !
	timeValueqq! *
,qq* +
	frameRateqq, 5
)qq5 6
)qq6 7
{rr 
stringss 
decimalsss 
=ss  !
ToExactFramesss" /
(ss/ 0
	timeValuess0 9
,ss9 :
	frameRatess; D
)ssD E
.ssE F
ToStringssF N
(ssN O
formatssO U
)ssU V
;ssV W
inttt 
decPlacett 
=tt 
decimalstt '
.tt' (
IndexOftt( /
(tt/ 0
$chartt0 3
)tt3 4
;tt4 5
ifuu 
(uu 
decPlaceuu 
>=uu 
$numuu  !
)uu! "
framesvv 
+=vv 
$strvv "
+vv# $
decimalsvv% -
.vv- .
	Substringvv. 7
(vv7 8
decPlacevv8 @
)vv@ A
+vvB C
$strvvD G
;vvG H
}ww 
returnyy 
signyy 
+yy 
resultyy  
+yy! "
$stryy# &
+yy' (
framesyy) /
;yy/ 0
}zz 	
public
‚‚ 
static
‚‚ 
double
‚‚ 
ParseTimeCode
‚‚ *
(
‚‚* +
string
‚‚+ 1
timeCode
‚‚2 :
,
‚‚: ;
double
‚‚< B
	frameRate
‚‚C L
,
‚‚L M
double
‚‚N T
defaultValue
‚‚U a
)
‚‚a b
{
ƒƒ 	
timeCode
„„ 
=
„„ 

RemoveChar
„„ !
(
„„! "
timeCode
„„" *
,
„„* +
c
„„, -
=>
„„. 0
char
„„1 5
.
„„5 6
IsWhiteSpace
„„6 B
(
„„B C
c
„„C D
)
„„D E
)
„„E F
;
„„F G
string
…… 
[
…… 
]
…… 
sections
…… 
=
…… 
timeCode
……  (
.
……( )
Split
……) .
(
……. /
$char
……/ 2
)
……2 3
;
……3 4
if
†† 
(
†† 
sections
†† 
.
†† 
Length
†† 
==
††  "
$num
††# $
||
††% '
sections
††( 0
.
††0 1
Length
††1 7
>
††8 9
$num
††: ;
)
††; <
return
‡‡ 
defaultValue
‡‡ #
;
‡‡# $
int
‰‰ 
hours
‰‰ 
=
‰‰ 
$num
‰‰ 
;
‰‰ 
int
ŠŠ 
minutes
ŠŠ 
=
ŠŠ 
$num
ŠŠ 
;
ŠŠ 
double
‹‹ 
seconds
‹‹ 
=
‹‹ 
$num
‹‹ 
;
‹‹ 
double
ŒŒ 
frames
ŒŒ 
=
ŒŒ 
$num
ŒŒ 
;
ŒŒ 
try
 
{
 
string
’’ 
lastSection
’’ "
=
’’# $
sections
’’% -
[
’’- .
sections
’’. 6
.
’’6 7
Length
’’7 =
-
’’> ?
$num
’’@ A
]
’’A B
;
’’B C
if
““ 
(
““ 
Regex
““ 
.
““ 
Match
““ 
(
““  
lastSection
““  +
,
““+ ,
$str
““- :
)
““: ;
.
““; <
Success
““< C
)
““C D
{
”” 
seconds
•• 
=
•• 
double
•• $
.
••$ %
Parse
••% *
(
••* +
lastSection
••+ 6
)
••6 7
;
••7 8
if
–– 
(
–– 
sections
––  
.
––  !
Length
––! '
>
––( )
$num
––* +
)
––+ ,
return
––- 3
defaultValue
––4 @
;
––@ A
if
—— 
(
—— 
sections
——  
.
——  !
Length
——! '
>
——( )
$num
——* +
)
——+ ,
minutes
——- 4
=
——5 6
int
——7 :
.
——: ;
Parse
——; @
(
——@ A
sections
——A I
[
——I J
sections
——J R
.
——R S
Length
——S Y
-
——Z [
$num
——\ ]
]
——] ^
)
——^ _
;
——_ `
if
˜˜ 
(
˜˜ 
sections
˜˜  
.
˜˜  !
Length
˜˜! '
>
˜˜( )
$num
˜˜* +
)
˜˜+ ,
hours
˜˜- 2
=
˜˜3 4
int
˜˜5 8
.
˜˜8 9
Parse
˜˜9 >
(
˜˜> ?
sections
˜˜? G
[
˜˜G H
sections
˜˜H P
.
˜˜P Q
Length
˜˜Q W
-
˜˜X Y
$num
˜˜Z [
]
˜˜[ \
)
˜˜\ ]
;
˜˜] ^
}
™™ 
else
›› 
{
œœ 
if
 
(
 
Regex
 
.
 
Match
 #
(
# $
lastSection
$ /
,
/ 0
$str
1 B
)
B C
.
C D
Success
D K
)
K L
{
 
string
ŸŸ 
stripped
ŸŸ '
=
ŸŸ( )

RemoveChar
ŸŸ* 4
(
ŸŸ4 5
lastSection
ŸŸ5 @
,
ŸŸ@ A
c
ŸŸB C
=>
ŸŸD F
c
ŸŸG H
==
ŸŸI K
$char
ŸŸL O
||
ŸŸP R
c
ŸŸS T
==
ŸŸU W
$char
ŸŸX [
)
ŸŸ[ \
;
ŸŸ\ ]
frames
   
=
    
double
  ! '
.
  ' (
Parse
  ( -
(
  - .
stripped
  . 6
)
  6 7
;
  7 8
}
¡¡ 
else
¢¢ 
if
¢¢ 
(
¢¢ 
Regex
¢¢ "
.
¢¢" #
Match
¢¢# (
(
¢¢( )
lastSection
¢¢) 4
,
¢¢4 5
$str
¢¢6 >
)
¢¢> ?
.
¢¢? @
Success
¢¢@ G
)
¢¢G H
{
££ 
frames
¤¤ 
=
¤¤  
int
¤¤! $
.
¤¤$ %
Parse
¤¤% *
(
¤¤* +
lastSection
¤¤+ 6
)
¤¤6 7
;
¤¤7 8
}
¥¥ 
else
¦¦ 
{
§§ 
return
¨¨ 
defaultValue
¨¨ +
;
¨¨+ ,
}
©© 
if
«« 
(
«« 
sections
««  
.
««  !
Length
««! '
>
««( )
$num
««* +
)
««+ ,
seconds
««- 4
=
««5 6
int
««7 :
.
««: ;
Parse
««; @
(
««@ A
sections
««A I
[
««I J
sections
««J R
.
««R S
Length
««S Y
-
««Z [
$num
««\ ]
]
««] ^
)
««^ _
;
««_ `
if
¬¬ 
(
¬¬ 
sections
¬¬  
.
¬¬  !
Length
¬¬! '
>
¬¬( )
$num
¬¬* +
)
¬¬+ ,
minutes
¬¬- 4
=
¬¬5 6
int
¬¬7 :
.
¬¬: ;
Parse
¬¬; @
(
¬¬@ A
sections
¬¬A I
[
¬¬I J
sections
¬¬J R
.
¬¬R S
Length
¬¬S Y
-
¬¬Z [
$num
¬¬\ ]
]
¬¬] ^
)
¬¬^ _
;
¬¬_ `
if
­­ 
(
­­ 
sections
­­  
.
­­  !
Length
­­! '
>
­­( )
$num
­­* +
)
­­+ ,
hours
­­- 2
=
­­3 4
int
­­5 8
.
­­8 9
Parse
­­9 >
(
­­> ?
sections
­­? G
[
­­G H
sections
­­H P
.
­­P Q
Length
­­Q W
-
­­X Y
$num
­­Z [
]
­­[ \
)
­­\ ]
;
­­] ^
}
®® 
}
¯¯ 
catch
°° 
(
°° 
FormatException
°° "
)
°°" #
{
±± 
return
²² 
defaultValue
²² #
;
²²# $
}
³³ 
return
µµ 
frames
µµ 
/
µµ 
	frameRate
µµ %
+
µµ& '
seconds
µµ( /
+
µµ0 1
minutes
µµ2 9
*
µµ: ;
$num
µµ< >
+
µµ? @
hours
µµA F
*
µµG H
$num
µµI M
;
µµM N
}
¶¶ 	
public
¹¹ 
static
¹¹ 
double
¹¹ $
GetAnimationClipLength
¹¹ 3
(
¹¹3 4
AnimationClip
¹¹4 A
clip
¹¹B F
)
¹¹F G
{
ºº 	
if
»» 
(
»» 
clip
»» 
==
»» 
null
»» 
||
»» 
clip
»»  $
.
»»$ %
empty
»»% *
)
»»* +
return
¼¼ 
$num
¼¼ 
;
¼¼ 
double
¾¾ 
length
¾¾ 
=
¾¾ 
clip
¾¾  
.
¾¾  !
length
¾¾! '
;
¾¾' (
if
¿¿ 
(
¿¿ 
clip
¿¿ 
.
¿¿ 
	frameRate
¿¿ 
>
¿¿  
$num
¿¿! "
)
¿¿" #
{
ÀÀ 
double
ÁÁ 
frames
ÁÁ 
=
ÁÁ 
Mathf
ÁÁ  %
.
ÁÁ% &
Round
ÁÁ& +
(
ÁÁ+ ,
clip
ÁÁ, 0
.
ÁÁ0 1
length
ÁÁ1 7
*
ÁÁ8 9
clip
ÁÁ: >
.
ÁÁ> ?
	frameRate
ÁÁ? H
)
ÁÁH I
;
ÁÁI J
length
ÂÂ 
=
ÂÂ 
frames
ÂÂ 
/
ÂÂ  !
clip
ÂÂ" &
.
ÂÂ& '
	frameRate
ÂÂ' 0
;
ÂÂ0 1
}
ÃÃ 
return
ÄÄ 
length
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
static
ÇÇ 
string
ÇÇ 

RemoveChar
ÇÇ  
(
ÇÇ  !
string
ÇÇ! '
str
ÇÇ( +
,
ÇÇ+ ,
Func
ÇÇ- 1
<
ÇÇ1 2
char
ÇÇ2 6
,
ÇÇ6 7
bool
ÇÇ8 <
>
ÇÇ< =
charToRemoveFunc
ÇÇ> N
)
ÇÇN O
{
ÈÈ 	
var
ÉÉ 
len
ÉÉ 
=
ÉÉ 
str
ÉÉ 
.
ÉÉ 
Length
ÉÉ  
;
ÉÉ  !
var
ÊÊ 
src
ÊÊ 
=
ÊÊ 
str
ÊÊ 
.
ÊÊ 
ToCharArray
ÊÊ %
(
ÊÊ% &
)
ÊÊ& '
;
ÊÊ' (
var
ËË 
dstIdx
ËË 
=
ËË 
$num
ËË 
;
ËË 
for
ÌÌ 
(
ÌÌ 
var
ÌÌ 
i
ÌÌ 
=
ÌÌ 
$num
ÌÌ 
;
ÌÌ 
i
ÌÌ 
<
ÌÌ 
len
ÌÌ  #
;
ÌÌ# $
i
ÌÌ% &
++
ÌÌ& (
)
ÌÌ( )
{
ÍÍ 
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
charToRemoveFunc
ÎÎ %
(
ÎÎ% &
src
ÎÎ& )
[
ÎÎ) *
i
ÎÎ* +
]
ÎÎ+ ,
)
ÎÎ, -
)
ÎÎ- .
src
ÏÏ 
[
ÏÏ 
dstIdx
ÏÏ 
++
ÏÏ  
]
ÏÏ  !
=
ÏÏ" #
src
ÏÏ$ '
[
ÏÏ' (
i
ÏÏ( )
]
ÏÏ) *
;
ÏÏ* +
}
ĞĞ 
return
ÑÑ 
new
ÑÑ 
string
ÑÑ 
(
ÑÑ 
src
ÑÑ !
,
ÑÑ! "
$num
ÑÑ# $
,
ÑÑ$ %
dstIdx
ÑÑ& ,
)
ÑÑ, -
;
ÑÑ- .
}
ÒÒ 	
}
ÓÓ 
}ÔÔ ô
‘D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Scripting\PlayableTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
public 

class 
PlayableTrack 
:  

TrackAsset! +
{ 
	protected 
override 
void 
OnCreateClip  ,
(, -
TimelineClip- 9
clip: >
)> ?
{ 	
if 
( 
clip 
. 
asset 
!= 
null "
)" #
clip 
. 
displayName  
=! "
clip# '
.' (
asset( -
.- .
GetType. 5
(5 6
)6 7
.7 8
Name8 <
;< =
} 	
} 
} Ş
“D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioClipProperties.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 

NotKeyable 
] 
class 	
AudioClipProperties
 
: 
PlayableBehaviour  1
{		 
[

 	
Range

	 
(

 
$num

 
,

 
$num

 
)

 
]

 
public 
float 
volume 
= 
$num "
;" #
} 
} æ
—D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\BasicScriptPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
Obsolete 
( 
$str M
)M N
]N O
public 

class "
BasicPlayableBehaviour '
:( )
ScriptableObject* :
,: ;
IPlayableAsset< J
,J K
IPlayableBehaviourL ^
{ 
public 
virtual 
double 
duration &
{' (
get) ,
{- .
return/ 5
PlayableBinding6 E
.E F
DefaultDurationF U
;U V
}W X
}Y Z
public 
virtual 
IEnumerable "
<" #
PlayableBinding# 2
>2 3
outputs4 ;
{< =
get> A
{B C
returnD J
PlayableBindingK Z
.Z [
None[ _
;_ `
}a b
}c d
public 
virtual 
void 
OnGraphStart (
(( )
Playable) 1
playable2 :
): ;
{< =
}= >
public## 
virtual## 
void## 
OnGraphStop## '
(##' (
Playable##( 0
playable##1 9
)##9 :
{##< =
}##= >
public)) 
virtual)) 
void)) 
OnPlayableCreate)) ,
()), -
Playable))- 5
playable))6 >
)))> ?
{))@ A
}))A B
public// 
virtual// 
void// 
OnPlayableDestroy// -
(//- .
Playable//. 6
playable//7 ?
)//? @
{//A B
}//B C
public66 
virtual66 
void66 
OnBehaviourPlay66 +
(66+ ,
Playable66, 4
playable665 =
,66= >
	FrameData66? H
info66I M
)66M N
{66O P
}66P Q
public== 
virtual== 
void== 
OnBehaviourPause== ,
(==, -
Playable==- 5
playable==6 >
,==> ?
	FrameData==@ I
info==J N
)==N O
{==P Q
}==Q R
publicDD 
virtualDD 
voidDD 
PrepareFrameDD (
(DD( )
PlayableDD) 1
playableDD2 :
,DD: ;
	FrameDataDD< E
infoDDF J
)DDJ K
{DDL M
}DDM N
publicLL 
virtualLL 
voidLL 
ProcessFrameLL (
(LL( )
PlayableLL) 1
playableLL2 :
,LL: ;
	FrameDataLL< E
infoLLF J
,LLJ K
objectLLL R

playerDataLLS ]
)LL] ^
{LL_ `
}LL` a
publicTT 
virtualTT 
PlayableTT 
CreatePlayableTT  .
(TT. /
PlayableGraphTT/ <
graphTT= B
,TTB C

GameObjectTTD N
ownerTTO T
)TTT U
{UU 	
returnVV 
ScriptPlayableVV !
<VV! ""
BasicPlayableBehaviourVV" 8
>VV8 9
.VV9 :
CreateVV: @
(VV@ A
graphVVA F
,VVF G
thisVVH L
)VVL M
;VVM N
}WW 	
}XX 
}YY ¢/
’D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioPlayableAsset.cs
	namespace		 	
UnityEngine		
 
.		 
Timeline		 
{

 
[ 
Serializable 
] 
[ 
DisplayName 
( 
$str 
) 
] 
public 

class 
AudioPlayableAsset #
:$ %
PlayableAsset& 3
,3 4
ITimelineClipAsset5 G
{ 
[ 	
SerializeField	 
] 
	AudioClip "
m_Clip# )
;) *
[ 	
SerializeField	 
] 
bool 
m_Loop $
;$ %
[ 	
SerializeField	 
, 
HideInInspector (
]( )
float* /
m_bufferingTime0 ?
=@ A
$numB F
;F G
[ 	
SerializeField	 
] 
AudioClipProperties ,
m_ClipProperties- =
=> ?
new@ C
AudioClipPropertiesD W
(W X
)X Y
;Y Z
internal 
float 
bufferingTime $
{ 	
get 
{ 
return 
m_bufferingTime (
;( )
}+ ,
set 
{ 
m_bufferingTime !
=" #
value$ )
;) *
}+ ,
} 	
Playable"" 
m_LiveClipPlayable"" #
=""$ %
Playable""& .
."". /
Null""/ 3
;""3 4
public)) 
	AudioClip)) 
clip)) 
{** 	
get++ 
{++ 
return++ 
m_Clip++ 
;++  
}++! "
set,, 
{,, 
m_Clip,, 
=,, 
value,,  
;,,  !
},," #
}-- 	
public55 
bool55 
loop55 
{66 	
get77 
{77 
return77 
m_Loop77 
;77  
}77! "
set88 
{88 
m_Loop88 
=88 
value88  
;88  !
}88" #
}99 	
public>> 
override>> 
double>> 
duration>> '
{?? 	
get@@ 
{AA 
ifBB 
(BB 
m_ClipBB 
==BB 
nullBB "
)BB" #
returnCC 
baseCC 
.CC  
durationCC  (
;CC( )
returnFF 
(FF 
doubleFF 
)FF 
m_ClipFF %
.FF% &
samplesFF& -
/FF. /
m_ClipFF0 6
.FF6 7
	frequencyFF7 @
;FF@ A
}GG 
}HH 	
publicMM 
overrideMM 
IEnumerableMM #
<MM# $
PlayableBindingMM$ 3
>MM3 4
outputsMM5 <
{NN 	
getOO 
{OO 
yieldOO 
returnOO  
AudioPlayableBindingOO 3
.OO3 4
CreateOO4 :
(OO: ;
nameOO; ?
,OO? @
thisOOA E
)OOE F
;OOF G
}OOH I
}PP 	
publicXX 
overrideXX 
PlayableXX  
CreatePlayableXX! /
(XX/ 0
PlayableGraphXX0 =
graphXX> C
,XXC D

GameObjectXXE O
goXXP R
)XXR S
{YY 	
ifZZ 
(ZZ 
m_ClipZZ 
==ZZ 
nullZZ 
)ZZ 
return[[ 
Playable[[ 
.[[  
Null[[  $
;[[$ %
var]] 
audioClipPlayable]] !
=]]" #
AudioClipPlayable]]$ 5
.]]5 6
Create]]6 <
(]]< =
graph]]= B
,]]B C
m_Clip]]D J
,]]J K
m_Loop]]L R
)]]R S
;]]S T
audioClipPlayable^^ 
.^^ 
	GetHandle^^ '
(^^' (
)^^( )
.^^) *
SetScriptInstance^^* ;
(^^; <
m_ClipProperties^^< L
.^^L M
Clone^^M R
(^^R S
)^^S T
)^^T U
;^^U V
m_LiveClipPlayableaa 
=aa  
audioClipPlayableaa! 2
;aa2 3
returndd 
audioClipPlayabledd $
;dd$ %
}ee 	
publicjj 
ClipCapsjj 
clipCapsjj  
{kk 	
getll 
{mm 
returnnn 
ClipCapsnn 
.nn  
ClipInnn  &
|nn' (
ClipCapsoo 
.oo 
SpeedMultiplieroo ,
|oo- .
ClipCapspp 
.pp 
Blendingpp %
|pp& '
(qq 
m_Loopqq 
?qq 
ClipCapsqq &
.qq& '
Loopingqq' .
:qq/ 0
ClipCapsqq1 9
.qq9 :
Noneqq: >
)qq> ?
;qq? @
}rr 
}ss 	
internalvv 
voidvv 
LiveLinkvv 
(vv 
)vv  
{ww 	
ifxx 
(xx 
!xx 
m_LiveClipPlayablexx #
.xx# $
IsValidxx$ +
(xx+ ,
)xx, -
)xx- .
returnyy 
;yy 
var{{  
audioMixerProperties{{ $
={{% &
m_LiveClipPlayable{{' 9
.{{9 :
	GetHandle{{: C
({{C D
){{D E
.{{E F
	GetObject{{F O
<{{O P
AudioClipProperties{{P c
>{{c d
({{d e
){{e f
;{{f g
if}} 
(}}  
audioMixerProperties}} $
==}}% '
null}}( ,
)}}, -
return~~ 
;~~ "
audioMixerProperties
€€  
.
€€  !
volume
€€! '
=
€€( )
m_ClipProperties
€€* :
.
€€: ;
volume
€€; A
;
€€A B
}
 	
}
„„ 
}…… €®
‘D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\IntervalTree.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
	interface 
	IInterval 
{ 
Int64 
intervalStart 
{ 
get !
;! "
}# $
Int64		 
intervalEnd		 
{		 
get		 
;		  
}		! "
}

 
struct 

IntervalTreeNode 
{ 
public 
Int64 
center 
; 
public 
int 
first 
; 
public 
int 
last 
; 
public 
int 
left 
; 
public 
int 
right 
; 
} 
class 	
IntervalTree
 
< 
T 
> 
where 
T  !
:" #
	IInterval$ -
{ 
internal 
struct 
Entry 
{ 	
public 
Int64 
intervalStart &
;& '
public 
Int64 
intervalEnd $
;$ %
public 
T 
item 
; 
} 	
const 
int 
kMinNodeSize 
=  
$num! #
;# $
const 
int 
kInvalidNode 
=  
-! "
$num" #
;# $
const   
Int64   
kCenterUnknown   "
=  # $
Int64  % *
.  * +
MaxValue  + 3
;  3 4
readonly"" 
List"" 
<"" 
Entry"" 
>"" 
	m_Entries"" &
=""' (
new"") ,
List""- 1
<""1 2
Entry""2 7
>""7 8
(""8 9
)""9 :
;"": ;
readonly## 
List## 
<## 
IntervalTreeNode## &
>##& '
m_Nodes##( /
=##0 1
new##2 5
List##6 :
<##: ;
IntervalTreeNode##; K
>##K L
(##L M
)##M N
;##N O
public(( 
bool(( 
dirty(( 
{(( 
get(( 
;((  
internal((! )
set((* -
;((- .
}((/ 0
public-- 
void-- 
Add-- 
(-- 
T-- 
item-- 
)-- 
{.. 	
if// 
(// 
item// 
==// 
null// 
)// 
return00 
;00 
	m_Entries22 
.22 
Add22 
(22 
new33 
Entry33 
(33 
)33 
{44 
intervalStart55 !
=55" #
item55$ (
.55( )
intervalStart55) 6
,556 7
intervalEnd66 
=66  !
item66" &
.66& '
intervalEnd66' 2
,662 3
item77 
=77 
item77 
}88 
)99 
;99 
dirty:: 
=:: 
true:: 
;:: 
};; 	
publicBB 
voidBB 
IntersectsWithBB "
(BB" #
Int64BB# (
valueBB) .
,BB. /
ListBB0 4
<BB4 5
TBB5 6
>BB6 7
resultsBB8 ?
)BB? @
{CC 	
ifDD 
(DD 
	m_EntriesDD 
.DD 
CountDD 
==DD  "
$numDD# $
)DD$ %
returnEE 
;EE 
ifGG 
(GG 
dirtyGG 
)GG 
{HH 
RebuildII 
(II 
)II 
;II 
dirtyJJ 
=JJ 
falseJJ 
;JJ 
}KK 
ifMM 
(MM 
m_NodesMM 
.MM 
CountMM 
>MM 
$numMM  !
)MM! "
QueryNN 
(NN 
m_NodesNN 
[NN 
$numNN 
]NN  
,NN  !
valueNN" '
,NN' (
resultsNN) 0
)NN0 1
;NN1 2
}OO 	
publicWW 
voidWW 
IntersectsWithRangeWW '
(WW' (
Int64WW( -
startWW. 3
,WW3 4
Int64WW5 :
endWW; >
,WW> ?
ListWW@ D
<WWD E
TWWE F
>WWF G
resultsWWH O
)WWO P
{XX 	
ifYY 
(YY 
startYY 
>YY 
endYY 
)YY 
returnZZ 
;ZZ 
if\\ 
(\\ 
	m_Entries\\ 
.\\ 
Count\\ 
==\\  "
$num\\# $
)\\$ %
return]] 
;]] 
if__ 
(__ 
dirty__ 
)__ 
{`` 
Rebuildaa 
(aa 
)aa 
;aa 
dirtybb 
=bb 
falsebb 
;bb 
}cc 
ifee 
(ee 
m_Nodesee 
.ee 
Countee 
>ee 
$numee  !
)ee! "

QueryRangeff 
(ff 
m_Nodesff "
[ff" #
$numff# $
]ff$ %
,ff% &
startff' ,
,ff, -
endff. 1
,ff1 2
resultsff3 :
)ff: ;
;ff; <
}gg 	
publicmm 
voidmm 
UpdateIntervalsmm #
(mm# $
)mm$ %
{nn 	
booloo 
isDirtyoo 
=oo 
falseoo  
;oo  !
forpp 
(pp 
intpp 
ipp 
=pp 
$numpp 
;pp 
ipp 
<pp 
	m_Entriespp  )
.pp) *
Countpp* /
;pp/ 0
ipp1 2
++pp2 4
)pp4 5
{qq 
varrr 
nrr 
=rr 
	m_Entriesrr !
[rr! "
irr" #
]rr# $
;rr$ %
varss 
sss 
=ss 
nss 
.ss 
itemss 
.ss 
intervalStartss ,
;ss, -
vartt 
ett 
=tt 
ntt 
.tt 
itemtt 
.tt 
intervalEndtt *
;tt* +
isDirtyvv 
|=vv 
nvv 
.vv 
intervalStartvv *
!=vv+ -
svv. /
;vv/ 0
isDirtyww 
|=ww 
nww 
.ww 
intervalEndww (
!=ww) +
eww, -
;ww- .
	m_Entriesyy 
[yy 
iyy 
]yy 
=yy 
newyy "
Entryyy# (
(yy( )
)yy) *
{zz 
intervalStart{{ !
={{" #
s{{$ %
,{{% &
intervalEnd|| 
=||  !
e||" #
,||# $
item}} 
=}} 
n}} 
.}} 
item}} !
}~~ 
;~~ 
} 
dirty
 
|=
 
isDirty
 
;
 
}
‚‚ 	
private
„„ 
void
„„ 
Query
„„ 
(
„„ 
IntervalTreeNode
„„ +
intervalTreeNode
„„, <
,
„„< =
Int64
„„> C
value
„„D I
,
„„I J
List
„„K O
<
„„O P
T
„„P Q
>
„„Q R
results
„„S Z
)
„„Z [
{
…… 	
for
†† 
(
†† 
int
†† 
i
†† 
=
†† 
intervalTreeNode
†† )
.
††) *
first
††* /
;
††/ 0
i
††1 2
<=
††3 5
intervalTreeNode
††6 F
.
††F G
last
††G K
;
††K L
i
††M N
++
††N P
)
††P Q
{
‡‡ 
var
ˆˆ 
entry
ˆˆ 
=
ˆˆ 
	m_Entries
ˆˆ %
[
ˆˆ% &
i
ˆˆ& '
]
ˆˆ' (
;
ˆˆ( )
if
‰‰ 
(
‰‰ 
value
‰‰ 
>=
‰‰ 
entry
‰‰ "
.
‰‰" #
intervalStart
‰‰# 0
&&
‰‰1 3
value
‰‰4 9
<
‰‰: ;
entry
‰‰< A
.
‰‰A B
intervalEnd
‰‰B M
)
‰‰M N
{
ŠŠ 
results
‹‹ 
.
‹‹ 
Add
‹‹ 
(
‹‹  
entry
‹‹  %
.
‹‹% &
item
‹‹& *
)
‹‹* +
;
‹‹+ ,
}
ŒŒ 
}
 
if
 
(
 
intervalTreeNode
  
.
  !
center
! '
==
( *
kCenterUnknown
+ 9
)
9 :
return
 
;
 
if
‘‘ 
(
‘‘ 
intervalTreeNode
‘‘  
.
‘‘  !
left
‘‘! %
!=
‘‘& (
kInvalidNode
‘‘) 5
&&
‘‘6 8
value
‘‘9 >
<
‘‘? @
intervalTreeNode
‘‘A Q
.
‘‘Q R
center
‘‘R X
)
‘‘X Y
Query
’’ 
(
’’ 
m_Nodes
’’ 
[
’’ 
intervalTreeNode
’’ .
.
’’. /
left
’’/ 3
]
’’3 4
,
’’4 5
value
’’6 ;
,
’’; <
results
’’= D
)
’’D E
;
’’E F
if
““ 
(
““ 
intervalTreeNode
““  
.
““  !
right
““! &
!=
““' )
kInvalidNode
““* 6
&&
““7 9
value
““: ?
>
““@ A
intervalTreeNode
““B R
.
““R S
center
““S Y
)
““Y Z
Query
”” 
(
”” 
m_Nodes
”” 
[
”” 
intervalTreeNode
”” .
.
””. /
right
””/ 4
]
””4 5
,
””5 6
value
””7 <
,
””< =
results
””> E
)
””E F
;
””F G
}
•• 	
private
—— 
void
—— 

QueryRange
—— 
(
——  
IntervalTreeNode
——  0
intervalTreeNode
——1 A
,
——A B
Int64
——C H
start
——I N
,
——N O
Int64
——P U
end
——V Y
,
——Y Z
List
——[ _
<
——_ `
T
——` a
>
——a b
results
——c j
)
——j k
{
˜˜ 	
for
™™ 
(
™™ 
int
™™ 
i
™™ 
=
™™ 
intervalTreeNode
™™ )
.
™™) *
first
™™* /
;
™™/ 0
i
™™1 2
<=
™™3 5
intervalTreeNode
™™6 F
.
™™F G
last
™™G K
;
™™K L
i
™™M N
++
™™N P
)
™™P Q
{
šš 
var
›› 
entry
›› 
=
›› 
	m_Entries
›› %
[
››% &
i
››& '
]
››' (
;
››( )
if
œœ 
(
œœ 
end
œœ 
>=
œœ 
entry
œœ  
.
œœ  !
intervalStart
œœ! .
&&
œœ/ 1
start
œœ2 7
<
œœ8 9
entry
œœ: ?
.
œœ? @
intervalEnd
œœ@ K
)
œœK L
{
 
results
 
.
 
Add
 
(
  
entry
  %
.
% &
item
& *
)
* +
;
+ ,
}
ŸŸ 
}
   
if
¢¢ 
(
¢¢ 
intervalTreeNode
¢¢  
.
¢¢  !
center
¢¢! '
==
¢¢( *
kCenterUnknown
¢¢+ 9
)
¢¢9 :
return
££ 
;
££ 
if
¤¤ 
(
¤¤ 
intervalTreeNode
¤¤  
.
¤¤  !
left
¤¤! %
!=
¤¤& (
kInvalidNode
¤¤) 5
&&
¤¤6 8
start
¤¤9 >
<
¤¤? @
intervalTreeNode
¤¤A Q
.
¤¤Q R
center
¤¤R X
)
¤¤X Y

QueryRange
¥¥ 
(
¥¥ 
m_Nodes
¥¥ "
[
¥¥" #
intervalTreeNode
¥¥# 3
.
¥¥3 4
left
¥¥4 8
]
¥¥8 9
,
¥¥9 :
start
¥¥; @
,
¥¥@ A
end
¥¥B E
,
¥¥E F
results
¥¥G N
)
¥¥N O
;
¥¥O P
if
¦¦ 
(
¦¦ 
intervalTreeNode
¦¦  
.
¦¦  !
right
¦¦! &
!=
¦¦' )
kInvalidNode
¦¦* 6
&&
¦¦7 9
end
¦¦: =
>
¦¦> ?
intervalTreeNode
¦¦@ P
.
¦¦P Q
center
¦¦Q W
)
¦¦W X

QueryRange
§§ 
(
§§ 
m_Nodes
§§ "
[
§§" #
intervalTreeNode
§§# 3
.
§§3 4
right
§§4 9
]
§§9 :
,
§§: ;
start
§§< A
,
§§A B
end
§§C F
,
§§F G
results
§§H O
)
§§O P
;
§§P Q
}
¨¨ 	
private
ªª 
void
ªª 
Rebuild
ªª 
(
ªª 
)
ªª 
{
«« 	
m_Nodes
¬¬ 
.
¬¬ 
Clear
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
m_Nodes
­­ 
.
­­ 
Capacity
­­ 
=
­­ 
	m_Entries
­­ (
.
­­( )
Capacity
­­) 1
;
­­1 2
Rebuild
®® 
(
®® 
$num
®® 
,
®® 
	m_Entries
®®  
.
®®  !
Count
®®! &
-
®®' (
$num
®®) *
)
®®* +
;
®®+ ,
}
¯¯ 	
private
±± 
int
±± 
Rebuild
±± 
(
±± 
int
±± 
start
±±  %
,
±±% &
int
±±' *
end
±±+ .
)
±±. /
{
²² 	
IntervalTreeNode
³³ 
intervalTreeNode
³³ -
=
³³. /
new
³³0 3
IntervalTreeNode
³³4 D
(
³³D E
)
³³E F
;
³³F G
int
¶¶ 
count
¶¶ 
=
¶¶ 
end
¶¶ 
-
¶¶ 
start
¶¶ #
+
¶¶$ %
$num
¶¶& '
;
¶¶' (
if
·· 
(
·· 
count
·· 
<
·· 
kMinNodeSize
·· $
)
··$ %
{
¸¸ 
intervalTreeNode
¹¹  
=
¹¹! "
new
¹¹# &
IntervalTreeNode
¹¹' 7
(
¹¹7 8
)
¹¹8 9
{
¹¹: ;
center
¹¹; A
=
¹¹B C
kCenterUnknown
¹¹D R
,
¹¹R S
first
¹¹T Y
=
¹¹Z [
start
¹¹\ a
,
¹¹a b
last
¹¹c g
=
¹¹h i
end
¹¹j m
,
¹¹m n
left
¹¹o s
=
¹¹t u
kInvalidNode¹¹v ‚
,¹¹‚ ƒ
right¹¹„ ‰
=¹¹Š ‹
kInvalidNode¹¹Œ ˜
}¹¹˜ ™
;¹¹™ š
m_Nodes
ºº 
.
ºº 
Add
ºº 
(
ºº 
intervalTreeNode
ºº ,
)
ºº, -
;
ºº- .
return
»» 
m_Nodes
»» 
.
»» 
Count
»» $
-
»»% &
$num
»»' (
;
»»( )
}
¼¼ 
var
¾¾ 
min
¾¾ 
=
¾¾ 
Int64
¾¾ 
.
¾¾ 
MaxValue
¾¾ $
;
¾¾$ %
var
¿¿ 
max
¿¿ 
=
¿¿ 
Int64
¿¿ 
.
¿¿ 
MinValue
¿¿ $
;
¿¿$ %
for
ÁÁ 
(
ÁÁ 
int
ÁÁ 
i
ÁÁ 
=
ÁÁ 
start
ÁÁ 
;
ÁÁ 
i
ÁÁ  !
<=
ÁÁ" $
end
ÁÁ% (
;
ÁÁ( )
i
ÁÁ* +
++
ÁÁ+ -
)
ÁÁ- .
{
ÂÂ 
var
ÃÃ 
o
ÃÃ 
=
ÃÃ 
	m_Entries
ÃÃ !
[
ÃÃ! "
i
ÃÃ" #
]
ÃÃ# $
;
ÃÃ$ %
min
ÄÄ 
=
ÄÄ 
Math
ÄÄ 
.
ÄÄ 
Min
ÄÄ 
(
ÄÄ 
min
ÄÄ "
,
ÄÄ" #
o
ÄÄ$ %
.
ÄÄ% &
intervalStart
ÄÄ& 3
)
ÄÄ3 4
;
ÄÄ4 5
max
ÅÅ 
=
ÅÅ 
Math
ÅÅ 
.
ÅÅ 
Max
ÅÅ 
(
ÅÅ 
max
ÅÅ "
,
ÅÅ" #
o
ÅÅ$ %
.
ÅÅ% &
intervalEnd
ÅÅ& 1
)
ÅÅ1 2
;
ÅÅ2 3
}
ÆÆ 
var
ÈÈ 
center
ÈÈ 
=
ÈÈ 
(
ÈÈ 
max
ÈÈ 
+
ÈÈ 
min
ÈÈ  #
)
ÈÈ# $
/
ÈÈ% &
$num
ÈÈ' (
;
ÈÈ( )
intervalTreeNode
ÉÉ 
.
ÉÉ 
center
ÉÉ #
=
ÉÉ$ %
center
ÉÉ& ,
;
ÉÉ, -
int
ÌÌ 
x
ÌÌ 
=
ÌÌ 
start
ÌÌ 
;
ÌÌ 
int
ÍÍ 
y
ÍÍ 
=
ÍÍ 
end
ÍÍ 
;
ÍÍ 
while
ÎÎ 
(
ÎÎ 
true
ÎÎ 
)
ÎÎ 
{
ÏÏ 
while
ĞĞ 
(
ĞĞ 
x
ĞĞ 
<=
ĞĞ 
end
ĞĞ 
&&
ĞĞ  "
	m_Entries
ĞĞ# ,
[
ĞĞ, -
x
ĞĞ- .
]
ĞĞ. /
.
ĞĞ/ 0
intervalEnd
ĞĞ0 ;
<
ĞĞ< =
center
ĞĞ> D
)
ĞĞD E
x
ÑÑ 
++
ÑÑ 
;
ÑÑ 
while
ÓÓ 
(
ÓÓ 
y
ÓÓ 
>=
ÓÓ 
start
ÓÓ !
&&
ÓÓ" $
	m_Entries
ÓÓ% .
[
ÓÓ. /
y
ÓÓ/ 0
]
ÓÓ0 1
.
ÓÓ1 2
intervalEnd
ÓÓ2 =
>=
ÓÓ> @
center
ÓÓA G
)
ÓÓG H
y
ÔÔ 
--
ÔÔ 
;
ÔÔ 
if
ÖÖ 
(
ÖÖ 
x
ÖÖ 
>
ÖÖ 
y
ÖÖ 
)
ÖÖ 
break
×× 
;
×× 
var
ÙÙ 
nodeX
ÙÙ 
=
ÙÙ 
	m_Entries
ÙÙ %
[
ÙÙ% &
x
ÙÙ& '
]
ÙÙ' (
;
ÙÙ( )
var
ÚÚ 
nodeY
ÚÚ 
=
ÚÚ 
	m_Entries
ÚÚ %
[
ÚÚ% &
y
ÚÚ& '
]
ÚÚ' (
;
ÚÚ( )
	m_Entries
ÜÜ 
[
ÜÜ 
y
ÜÜ 
]
ÜÜ 
=
ÜÜ 
nodeX
ÜÜ $
;
ÜÜ$ %
	m_Entries
İİ 
[
İİ 
x
İİ 
]
İİ 
=
İİ 
nodeY
İİ $
;
İİ$ %
}
ŞŞ 
intervalTreeNode
àà 
.
àà 
first
àà "
=
àà# $
x
àà% &
;
àà& '
y
ãã 
=
ãã 
end
ãã 
;
ãã 
while
ää 
(
ää 
true
ää 
)
ää 
{
åå 
while
ææ 
(
ææ 
x
ææ 
<=
ææ 
end
ææ 
&&
ææ  "
	m_Entries
ææ# ,
[
ææ, -
x
ææ- .
]
ææ. /
.
ææ/ 0
intervalStart
ææ0 =
<=
ææ> @
center
ææA G
)
ææG H
x
çç 
++
çç 
;
çç 
while
éé 
(
éé 
y
éé 
>=
éé 
start
éé !
&&
éé" $
	m_Entries
éé% .
[
éé. /
y
éé/ 0
]
éé0 1
.
éé1 2
intervalStart
éé2 ?
>
éé@ A
center
ééB H
)
ééH I
y
êê 
--
êê 
;
êê 
if
ìì 
(
ìì 
x
ìì 
>
ìì 
y
ìì 
)
ìì 
break
íí 
;
íí 
var
ïï 
nodeX
ïï 
=
ïï 
	m_Entries
ïï %
[
ïï% &
x
ïï& '
]
ïï' (
;
ïï( )
var
ğğ 
nodeY
ğğ 
=
ğğ 
	m_Entries
ğğ %
[
ğğ% &
y
ğğ& '
]
ğğ' (
;
ğğ( )
	m_Entries
òò 
[
òò 
y
òò 
]
òò 
=
òò 
nodeX
òò $
;
òò$ %
	m_Entries
óó 
[
óó 
x
óó 
]
óó 
=
óó 
nodeY
óó $
;
óó$ %
}
ôô 
intervalTreeNode
öö 
.
öö 
last
öö !
=
öö" #
y
öö$ %
;
öö% &
m_Nodes
ùù 
.
ùù 
Add
ùù 
(
ùù 
new
ùù 
IntervalTreeNode
ùù ,
(
ùù, -
)
ùù- .
)
ùù. /
;
ùù/ 0
int
úú 
index
úú 
=
úú 
m_Nodes
úú 
.
úú  
Count
úú  %
-
úú& '
$num
úú( )
;
úú) *
intervalTreeNode
üü 
.
üü 
left
üü !
=
üü" #
kInvalidNode
üü$ 0
;
üü0 1
intervalTreeNode
ıı 
.
ıı 
right
ıı "
=
ıı# $
kInvalidNode
ıı% 1
;
ıı1 2
if
ÿÿ 
(
ÿÿ 
start
ÿÿ 
<
ÿÿ 
intervalTreeNode
ÿÿ (
.
ÿÿ( )
first
ÿÿ) .
)
ÿÿ. /
intervalTreeNode
€€  
.
€€  !
left
€€! %
=
€€& '
Rebuild
€€( /
(
€€/ 0
start
€€0 5
,
€€5 6
intervalTreeNode
€€7 G
.
€€G H
first
€€H M
-
€€N O
$num
€€P Q
)
€€Q R
;
€€R S
if
‚‚ 
(
‚‚ 
end
‚‚ 
>
‚‚ 
intervalTreeNode
‚‚ &
.
‚‚& '
last
‚‚' +
)
‚‚+ ,
intervalTreeNode
ƒƒ  
.
ƒƒ  !
right
ƒƒ! &
=
ƒƒ' (
Rebuild
ƒƒ) 0
(
ƒƒ0 1
intervalTreeNode
ƒƒ1 A
.
ƒƒA B
last
ƒƒB F
+
ƒƒG H
$num
ƒƒI J
,
ƒƒJ K
end
ƒƒL O
)
ƒƒO P
;
ƒƒP Q
m_Nodes
…… 
[
…… 
index
…… 
]
…… 
=
…… 
intervalTreeNode
…… -
;
……- .
return
†† 
index
†† 
;
†† 
}
‡‡ 	
public
‰‰ 
void
‰‰ 
Clear
‰‰ 
(
‰‰ 
)
‰‰ 
{
ŠŠ 	
	m_Entries
‹‹ 
.
‹‹ 
Clear
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
m_Nodes
ŒŒ 
.
ŒŒ 
Clear
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
 	
}
 
} º
•D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\NotificationFlags.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
Flags		 

]		
 
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

enum 
NotificationFlags !
:" #
short$ )
{ 
TriggerInEditMode 
= 
$num 
<<  
$num! "
," #
Retroactive 
= 
$num 
<< 
$num 
, 
TriggerOnce 
= 
$num 
<< 
$num 
, 
} 
} Ç
ŒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\SignalTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TrackBindingType 
( 
typeof 
( 
SignalReceiver +
)+ ,
), -
]- .
[ 

TrackColor 
( 
$num 
, 
$num 
, 
$num #
)# $
]$ %
[ 
ExcludeFromPreset 
] 
public 

class 
SignalTrack 
: 
MarkerTrack *
{+ ,
}, -
} >
ŒD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAttributes.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Class		% *
,		* +
AllowMultiple		, 9
=		: ;
true		< @
)		@ A
]		A B
public

 

class

 "
TrackClipTypeAttribute

 '
:

( )
	Attribute

* 3
{ 
public 
readonly 
Type 
inspectedType *
;* +
public 
readonly 
bool 
allowAutoCreate ,
;, -
public "
TrackClipTypeAttribute %
(% &
Type& *
	clipClass+ 4
)4 5
{ 	
inspectedType 
= 
	clipClass %
;% &
allowAutoCreate 
= 
true "
;" #
} 	
public$$ "
TrackClipTypeAttribute$$ %
($$% &
Type$$& *
	clipClass$$+ 4
,$$4 5
bool$$6 :
allowAutoCreate$$; J
)$$J K
{%% 	
inspectedType&& 
=&& 
	clipClass&& %
;&&% &
allowAutoCreate'' 
='' 
false'' #
;''# $
}(( 	
})) 
[.. 
AttributeUsage.. 
(.. 
AttributeTargets.. $
...$ %
Field..% *
|..+ ,
AttributeTargets..- =
...= >
Class..> C
)..C D
]..D E
public// 

class// 
NotKeyableAttribute// $
://% &
	Attribute//' 0
{00 
}11 
[77 
Flags77 

]77
 
public88 

enum88 
TrackBindingFlags88 !
{99 
None== 
=== 
$num== 
,==  
AllowCreateComponentBB 
=BB 
$numBB  
,BB  !
AllGG 
=GG  
AllowCreateComponentGG "
}HH 
[SS 
AttributeUsageSS 
(SS 
AttributeTargetsSS $
.SS$ %
ClassSS% *
)SS* +
]SS+ ,
publicTT 

classTT %
TrackBindingTypeAttributeTT *
:TT+ ,
	AttributeTT- 6
{UU 
publicYY 
readonlyYY 
TypeYY 
typeYY !
;YY! "
public^^ 
readonly^^ 
TrackBindingFlags^^ )
flags^^* /
;^^/ 0
publicdd %
TrackBindingTypeAttributedd (
(dd( )
Typedd) -
typedd. 2
)dd2 3
{ee 	
thisff 
.ff 
typeff 
=ff 
typeff 
;ff 
thisgg 
.gg 
flagsgg 
=gg 
TrackBindingFlagsgg *
.gg* +
Allgg+ .
;gg. /
}hh 	
publicoo %
TrackBindingTypeAttributeoo (
(oo( )
Typeoo) -
typeoo. 2
,oo2 3
TrackBindingFlagsoo4 E
flagsooF K
)ooK L
{pp 	
thisqq 
.qq 
typeqq 
=qq 
typeqq 
;qq 
thisrr 
.rr 
flagsrr 
=rr 
flagsrr 
;rr 
}ss 	
}tt 
[xx 
AttributeUsagexx 
(xx 
AttributeTargetsxx $
.xx$ %
Classxx% *
,xx* +
	Inheritedxx, 5
=xx6 7
falsexx8 =
)xx= >
]xx> ?
classyy 	(
SupportsChildTracksAttributeyy
 &
:yy' (
	Attributeyy) 2
{zz 
public{{ 
readonly{{ 
Type{{ 
	childType{{ &
;{{& '
public|| 
readonly|| 
int|| 
levels|| "
;||" #
public~~ (
SupportsChildTracksAttribute~~ +
(~~+ ,
Type~~, 0
	childType~~1 :
=~~; <
null~~= A
,~~A B
int~~C F
levels~~G M
=~~N O
Int32~~P U
.~~U V
MaxValue~~V ^
)~~^ _
{ 	
this
€€ 
.
€€ 
	childType
€€ 
=
€€ 
	childType
€€ &
;
€€& '
this
 
.
 
levels
 
=
 
levels
  
;
  !
}
‚‚ 	
}
ƒƒ 
[
†† 
AttributeUsage
†† 
(
†† 
AttributeTargets
†† $
.
††$ %
Class
††% *
,
††* +
AllowMultiple
††, 9
=
††: ;
false
††< A
,
††A B
	Inherited
††C L
=
††M N
true
††O S
)
††S T
]
††T U
class
‡‡ 	,
IgnoreOnPlayableTrackAttribute
‡‡
 (
:
‡‡) *
System
‡‡+ 1
.
‡‡1 2
	Attribute
‡‡2 ;
{
‡‡< =
}
‡‡= >
class
ŠŠ 	 
TimeFieldAttribute
ŠŠ
 
:
ŠŠ 
PropertyAttribute
ŠŠ 0
{
‹‹ 
public
ŒŒ 
enum
ŒŒ 
UseEditMode
ŒŒ 
{
 	
None
 
,
 
ApplyEditMode
 
}
 	
public
‘‘ 
UseEditMode
‘‘ 
useEditMode
‘‘ &
{
‘‘' (
get
‘‘) ,
;
‘‘, -
}
‘‘. /
public
““  
TimeFieldAttribute
““ !
(
““! "
UseEditMode
““" -
useEditMode
““. 9
=
““: ;
UseEditMode
““< G
.
““G H
ApplyEditMode
““H U
)
““U V
{
”” 	
this
•• 
.
•• 
useEditMode
•• 
=
•• 
useEditMode
•• *
;
••* +
}
–– 	
}
—— 
[
œœ 
AttributeUsage
œœ 
(
œœ 
AttributeTargets
œœ $
.
œœ$ %
Class
œœ% *
,
œœ* +
	Inherited
œœ, 5
=
œœ6 7
false
œœ8 =
)
œœ= >
]
œœ> ?
public
 

class
 !
HideInMenuAttribute
 $
:
% &
	Attribute
' 0
{
1 2
}
2 3
[
ÂÂ 
AttributeUsage
ÂÂ 
(
ÂÂ 
AttributeTargets
ÂÂ $
.
ÂÂ$ %
Class
ÂÂ% *
)
ÂÂ* +
]
ÂÂ+ ,
public
ÃÃ 

class
ÃÃ "
CustomStyleAttribute
ÃÃ %
:
ÃÃ& '
	Attribute
ÃÃ( 1
{
ÄÄ 
public
ÈÈ 
readonly
ÈÈ 
string
ÈÈ 
ussStyle
ÈÈ '
;
ÈÈ' (
public
ÎÎ "
CustomStyleAttribute
ÎÎ #
(
ÎÎ# $
string
ÎÎ$ *
ussStyle
ÎÎ+ 3
)
ÎÎ3 4
{
ÏÏ 	
this
ĞĞ 
.
ĞĞ 
ussStyle
ĞĞ 
=
ĞĞ 
ussStyle
ĞĞ $
;
ĞĞ$ %
}
ÑÑ 	
}
ÒÒ 
[
×× 
AttributeUsage
×× 
(
×× 
AttributeTargets
×× $
.
××$ %
Class
××% *
)
××* +
]
××+ ,
internal
ØØ 
class
ØØ #
MenuCategoryAttribute
ØØ (
:
ØØ) *
	Attribute
ØØ+ 4
{
ÙÙ 
public
İİ 
readonly
İİ 
string
İİ 
category
İİ '
;
İİ' (
public
ßß #
MenuCategoryAttribute
ßß $
(
ßß$ %
string
ßß% +
category
ßß, 4
)
ßß4 5
{
àà 	
this
áá 
.
áá 
category
áá 
=
áá 
category
áá $
??
áá% '
string
áá( .
.
áá. /
Empty
áá/ 4
;
áá4 5
}
ââ 	
}
ãã 
}ää º1
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Control\ControlTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
TrackClipType

 
(

 
typeof

 
(

  
ControlPlayableAsset

 .
)

. /
,

/ 0
false

1 6
)

6 7
]

7 8
[ 
ExcludeFromPreset 
] 
public 

class 
ControlTrack 
: 

TrackAsset  *
{ 
private 
static 
readonly 
HashSet  '
<' (
PlayableDirector( 8
>8 9 
s_ProcessedDirectors: N
=O P
newQ T
HashSetU \
<\ ]
PlayableDirector] m
>m n
(n o
)o p
;p q
public 
override 
void 
GatherProperties -
(- .
PlayableDirector. >
director? G
,G H
IPropertyCollectorI [
driver\ b
)b c
{ 	
if 
( 
director 
== 
null  
)  !
return 
; 
if 
(  
s_ProcessedDirectors $
.$ %
Contains% -
(- .
director. 6
)6 7
)7 8
return 
;  
s_ProcessedDirectors  
.  !
Add! $
($ %
director% -
)- .
;. /
var 
particlesToPreview "
=# $
new% (
HashSet) 0
<0 1
ParticleSystem1 ?
>? @
(@ A
)A B
;B C
var 
activationToPreview #
=$ %
new& )
HashSet* 1
<1 2

GameObject2 <
>< =
(= >
)> ?
;? @
var  
timeControlToPreview $
=% &
new' *
HashSet+ 2
<2 3
MonoBehaviour3 @
>@ A
(A B
)B C
;C D
var   !
subDirectorsToPreview   %
=  & '
new  ( +
HashSet  , 3
<  3 4
PlayableDirector  4 D
>  D E
(  E F
)  F G
;  G H
foreach"" 
("" 
var"" 
clip"" 
in""  
GetClips""! )
("") *
)""* +
)""+ ,
{## 
var$$  
controlPlayableAsset$$ (
=$$) *
clip$$+ /
.$$/ 0
asset$$0 5
as$$6 8 
ControlPlayableAsset$$9 M
;$$M N
if%% 
(%%  
controlPlayableAsset%% (
==%%) +
null%%, 0
)%%0 1
continue&& 
;&& 
var(( 

gameObject(( 
=((   
controlPlayableAsset((! 5
.((5 6
sourceGameObject((6 F
.((F G
Resolve((G N
(((N O
director((O W
)((W X
;((X Y
if)) 
()) 

gameObject)) 
==)) !
null))" &
)))& '
continue** 
;** 
if,, 
(,,  
controlPlayableAsset,, (
.,,( )
updateParticle,,) 7
),,7 8
particlesToPreview-- &
.--& '
	UnionWith--' 0
(--0 1

gameObject--1 ;
.--; <#
GetComponentsInChildren--< S
<--S T
ParticleSystem--T b
>--b c
(--c d
true--d h
)--h i
)--i j
;--j k
if.. 
(..  
controlPlayableAsset.. (
...( )
active..) /
)../ 0
activationToPreview// '
.//' (
Add//( +
(//+ ,

gameObject//, 6
)//6 7
;//7 8
if00 
(00  
controlPlayableAsset00 (
.00( )
updateITimeControl00) ;
)00; < 
timeControlToPreview11 (
.11( )
	UnionWith11) 2
(112 3 
ControlPlayableAsset113 G
.11G H!
GetControlableScripts11H ]
(11] ^

gameObject11^ h
)11h i
)11i j
;11j k
if22 
(22  
controlPlayableAsset22 (
.22( )
updateDirector22) 7
)227 8!
subDirectorsToPreview33 )
.33) *
	UnionWith33* 3
(333 4 
controlPlayableAsset334 H
.33H I
GetComponent33I U
<33U V
PlayableDirector33V f
>33f g
(33g h

gameObject33h r
)33r s
)33s t
;33t u
}44  
ControlPlayableAsset66  
.66  !
PreviewParticles66! 1
(661 2
driver662 8
,668 9
particlesToPreview66: L
)66L M
;66M N 
ControlPlayableAsset77  
.77  !
PreviewActivation77! 2
(772 3
driver773 9
,779 :
activationToPreview77; N
)77N O
;77O P 
ControlPlayableAsset88  
.88  !
PreviewTimeControl88! 3
(883 4
driver884 :
,88: ;
director88< D
,88D E 
timeControlToPreview88F Z
)88Z [
;88[ \ 
ControlPlayableAsset99  
.99  !
PreviewDirectors99! 1
(991 2
driver992 8
,998 9!
subDirectorsToPreview99: O
)99O P
;99P Q 
s_ProcessedDirectors;;  
.;;  !
Remove;;! '
(;;' (
director;;( 0
);;0 1
;;;1 2
particlesToPreview== 
.== 
Clear== $
(==$ %
)==% &
;==& '
activationToPreview>> 
.>>  
Clear>>  %
(>>% &
)>>& '
;>>' ( 
timeControlToPreview??  
.??  !
Clear??! &
(??& '
)??' (
;??( )!
subDirectorsToPreview@@ !
.@@! "
Clear@@" '
(@@' (
)@@( )
;@@) *
}AA 	
}DD 
}EE Œ!
”D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioMixerProperties.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
class 	 
AudioMixerProperties
 
:  
PlayableBehaviour! 2
{		 
[

 	
Range

	 
(

 
$num

 
,

 
$num

 
)

 
]

 
public 
float 
volume 
= 
$num "
;" #
[ 	
Range	 
( 
- 
$num 
, 
$num 
) 
] 
public 
float 
	stereoPan 
=  
$num! %
;% &
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
float 
spatialBlend !
=" #
$num$ (
;( )
public 
override 
void 
PrepareFrame )
() *
Playable* 2
playable3 ;
,; <
	FrameData= F
infoG K
)K L
{ 	
if 
( 
! 
playable 
. 
IsValid !
(! "
)" #
||$ &
!' (
playable( 0
.0 1
IsPlayableOfType1 A
<A B
AudioMixerPlayableB T
>T U
(U V
)V W
)W X
return 
; 
var 

inputCount 
= 
playable %
.% &
GetInputCount& 3
(3 4
)4 5
;5 6
for 
( 
int 
i 
= 
$num 
; 
i 
< 

inputCount  *
;* +
++, .
i. /
)/ 0
{ 
if 
( 
playable 
. 
GetInputWeight +
(+ ,
i, -
)- .
>/ 0
$num1 5
)5 6
{ 
var 
input 
= 
playable  (
.( )
GetInput) 1
(1 2
i2 3
)3 4
;4 5
if   
(   
input   
.   
IsValid   %
(  % &
)  & '
&&  ( *
input  + 0
.  0 1
IsPlayableOfType  1 A
<  A B
AudioClipPlayable  B S
>  S T
(  T U
)  U V
)  V W
{!! 
var"" 
audioClipPlayable"" -
="". /
(""0 1
AudioClipPlayable""1 B
)""B C
input""C H
;""H I
var## 
audioClipProperties## /
=##0 1
input##2 7
.##7 8
	GetHandle##8 A
(##A B
)##B C
.##C D
	GetObject##D M
<##M N
AudioClipProperties##N a
>##a b
(##b c
)##c d
;##d e
audioClipPlayable%% )
.%%) *
	SetVolume%%* 3
(%%3 4
Mathf%%4 9
.%%9 :
Clamp01%%: A
(%%A B
volume%%B H
*%%I J
audioClipProperties%%K ^
.%%^ _
volume%%_ e
)%%e f
)%%f g
;%%g h
audioClipPlayable&& )
.&&) *
SetStereoPan&&* 6
(&&6 7
Mathf&&7 <
.&&< =
Clamp&&= B
(&&B C
	stereoPan&&C L
,&&L M
-&&N O
$num&&O S
,&&S T
$num&&U Y
)&&Y Z
)&&Z [
;&&[ \
audioClipPlayable'' )
.'') *
SetSpatialBlend''* 9
(''9 :
Mathf'': ?
.''? @
Clamp01''@ G
(''G H
spatialBlend''H T
)''T U
)''U V
;''V W
}(( 
})) 
}** 
}++ 	
},, 
}-- İ>
œD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\AnimationTrackUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
AnimationTrack  
{ 
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" O
,O P
falseQ V
)V W
,W X
HideInInspectorY h
]h i

Quaternion $
m_OpenClipOffsetRotation +
=, -

Quaternion. 8
.8 9
identity9 A
;A B
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" ?
,? @
falseA F
)F G
,G H
HideInInspectorI X
]X Y

Quaternion 

m_Rotation 
= 

Quaternion  *
.* +
identity+ 3
;3 4
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" A
,A B
falseC H
)H I
,I J
HideInInspectorK Z
]Z [
bool 
m_ApplyOffsets 
; 
[ 	
EditorBrowsable	 
(  
EditorBrowsableState -
.- .
Never. 3
)3 4
]4 5
[ 	
Obsolete	 
( 
$str	 —
,
— ˜
true
™ 
)
 
]
 Ÿ
public 
Vector3 "
openClipOffsetPosition -
{ 	
get 
{ 
return &
infiniteClipOffsetPosition 3
;3 4
}5 6
set 
{ &
infiniteClipOffsetPosition ,
=- .
value/ 4
;4 5
}6 7
} 	
[ 	
EditorBrowsable	 
(  
EditorBrowsableState -
.- .
Never. 3
)3 4
]4 5
[ 	
Obsolete	 
( 
$str	 —
,
— ˜
true
™ 
)
 
]
 Ÿ
public 

Quaternion "
openClipOffsetRotation 0
{   	
get!! 
{!! 
return!! &
infiniteClipOffsetRotation!! 3
;!!3 4
}!!5 6
set"" 
{"" &
infiniteClipOffsetRotation"" ,
=""- .
value""/ 4
;""4 5
}""6 7
}## 	
[%% 	
EditorBrowsable%%	 
(%%  
EditorBrowsableState%% -
.%%- .
Never%%. 3
)%%3 4
]%%4 5
[&& 	
Obsolete&&	 
(&& 
$str	&&  
,
&&  ¡
true
&&¢ ¦
)
&&¦ §
]
&&§ ¨
public'' 
Vector3'' %
openClipOffsetEulerAngles'' 0
{(( 	
get)) 
{)) 
return)) )
infiniteClipOffsetEulerAngles)) 6
;))6 7
}))8 9
set** 
{** )
infiniteClipOffsetEulerAngles** /
=**0 1
value**2 7
;**7 8
}**9 :
}++ 	
[-- 	
EditorBrowsable--	 
(--  
EditorBrowsableState-- -
.--- .
Never--. 3
)--3 4
]--4 5
[.. 	
Obsolete..	 
(.. 
$str	.. 
,
.. 
true
..Ÿ £
)
..£ ¤
]
..¤ ¥
public// 
TimelineClip// 
.// 
ClipExtrapolation// -$
openClipPreExtrapolation//. F
{00 	
get11 
{11 
return11 (
infiniteClipPreExtrapolation11 5
;115 6
}117 8
set22 
{22 (
infiniteClipPreExtrapolation22 .
=22/ 0
value221 6
;226 7
}228 9
}33 	
[55 	
EditorBrowsable55	 
(55  
EditorBrowsableState55 -
.55- .
Never55. 3
)553 4
]554 5
[66 	
Obsolete66	 
(66 
$str	66  
,
66  ¡
true
66¢ ¦
)
66¦ §
]
66§ ¨
public77 
TimelineClip77 
.77 
ClipExtrapolation77 -%
openClipPostExtrapolation77. G
{88 	
get99 
{99 
return99 )
infiniteClipPostExtrapolation99 6
;996 7
}998 9
set:: 
{:: )
infiniteClipPostExtrapolation:: /
=::0 1
value::2 7
;::7 8
}::9 :
};; 	
internal== 
override== 
void==  
OnUpgradeFromVersion== 3
(==3 4
int==4 7

oldVersion==8 B
)==B C
{>> 	
if?? 
(?? 

oldVersion?? 
<?? 
(?? 
int?? !
)??! "
Versions??" *
.??* +
RotationAsEuler??+ :
)??: ;!
AnimationTrackUpgrade@@ %
.@@% &#
ConvertRotationsToEuler@@& =
(@@= >
this@@> B
)@@B C
;@@C D
ifAA 
(AA 

oldVersionAA 
<AA 
(AA 
intAA !
)AA! "
VersionsAA" *
.AA* +
RootMotionUpgradeAA+ <
)AA< =!
AnimationTrackUpgradeBB %
.BB% &
ConvertRootMotionBB& 7
(BB7 8
thisBB8 <
)BB< =
;BB= >
ifCC 
(CC 

oldVersionCC 
<CC 
(CC 
intCC !
)CC! "
VersionsCC" *
.CC* +#
AnimatedTrackPropertiesCC+ B
)CCB C!
AnimationTrackUpgradeDD %
.DD% & 
ConvertInfiniteTrackDD& :
(DD: ;
thisDD; ?
)DD? @
;DD@ A
}EE 	
staticJJ 
classJJ !
AnimationTrackUpgradeJJ *
{KK 	
publicLL 
staticLL 
voidLL #
ConvertRotationsToEulerLL 6
(LL6 7
AnimationTrackLL7 E
trackLLF K
)LLK L
{MM 
trackNN 
.NN 
m_EulerAnglesNN #
=NN$ %
trackNN& +
.NN+ ,

m_RotationNN, 6
.NN6 7
eulerAnglesNN7 B
;NNB C
trackOO 
.OO +
m_InfiniteClipOffsetEulerAnglesOO 5
=OO6 7
trackOO8 =
.OO= >$
m_OpenClipOffsetRotationOO> V
.OOV W
eulerAnglesOOW b
;OOb c
}PP 
publicRR 
staticRR 
voidRR 
ConvertRootMotionRR 0
(RR0 1
AnimationTrackRR1 ?
trackRR@ E
)RRE F
{SS 
trackTT 
.TT 
m_TrackOffsetTT #
=TT$ %
TrackOffsetTT& 1
.TT1 2
AutoTT2 6
;TT6 7
ifWW 
(WW 
!WW 
trackWW 
.WW 
m_ApplyOffsetsWW )
)WW) *
{XX 
trackYY 
.YY 

m_PositionYY $
=YY% &
Vector3YY' .
.YY. /
zeroYY/ 3
;YY3 4
trackZZ 
.ZZ 
m_EulerAnglesZZ '
=ZZ( )
Vector3ZZ* 1
.ZZ1 2
zeroZZ2 6
;ZZ6 7
}[[ 
}\\ 
public^^ 
static^^ 
void^^  
ConvertInfiniteTrack^^ 3
(^^3 4
AnimationTrack^^4 B
track^^C H
)^^H I
{__ 
track`` 
.`` 
m_InfiniteClip`` $
=``% &
track``' ,
.``, -

m_AnimClip``- 7
;``7 8
trackaa 
.aa 

m_AnimClipaa  
=aa! "
nullaa# '
;aa' (
}bb 
}cc 	
}ee 
}ff §3
D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ActivationControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class %
ActivationControlPlayable *
:+ ,
PlayableBehaviour- >
{		 
public 
enum 
PostPlaybackState %
{ 	
Active 
, 
Inactive 
, 
Revert 
} 	
enum 
InitialState 
{   	
Unset!! 
,!! 
Active"" 
,"" 
Inactive## 
}$$ 	
public)) 

GameObject)) 

gameObject)) $
=))% &
null))' +
;))+ ,
public,, 
PostPlaybackState,,  
postPlayback,,! -
=,,. /
PostPlaybackState,,0 A
.,,A B
Revert,,B H
;,,H I
InitialState-- 
m_InitialState-- #
;--# $
public66 
static66 
ScriptPlayable66 $
<66$ %%
ActivationControlPlayable66% >
>66> ?
Create66@ F
(66F G
PlayableGraph66G T
graph66U Z
,66Z [

GameObject66\ f

gameObject66g q
,66q r&
ActivationControlPlayable	66s Œ
.
66Œ 
PostPlaybackState
66 
postPlaybackState
66Ÿ °
)
66° ±
{77 	
if88 
(88 

gameObject88 
==88 
null88 "
)88" #
return99 
ScriptPlayable99 %
<99% &%
ActivationControlPlayable99& ?
>99? @
.99@ A
Null99A E
;99E F
var;; 
handle;; 
=;; 
ScriptPlayable;; '
<;;' (%
ActivationControlPlayable;;( A
>;;A B
.;;B C
Create;;C I
(;;I J
graph;;J O
);;O P
;;;P Q
var<< 
playable<< 
=<< 
handle<< !
.<<! "
GetBehaviour<<" .
(<<. /
)<</ 0
;<<0 1
playable== 
.== 

gameObject== 
===  !

gameObject==" ,
;==, -
playable>> 
.>> 
postPlayback>> !
=>>" #
postPlaybackState>>$ 5
;>>5 6
return@@ 
handle@@ 
;@@ 
}AA 	
publicHH 
overrideHH 
voidHH 
OnBehaviourPlayHH ,
(HH, -
PlayableHH- 5
playableHH6 >
,HH> ?
	FrameDataHH@ I
infoHHJ N
)HHN O
{II 	
ifJJ 
(JJ 

gameObjectJJ 
==JJ 
nullJJ "
)JJ" #
returnKK 
;KK 

gameObjectMM 
.MM 
	SetActiveMM  
(MM  !
trueMM! %
)MM% &
;MM& '
}NN 	
publicUU 
overrideUU 
voidUU 
OnBehaviourPauseUU -
(UU- .
PlayableUU. 6
playableUU7 ?
,UU? @
	FrameDataUUA J
infoUUK O
)UUO P
{VV 	
ifYY 
(YY 

gameObjectYY 
!=YY 
nullYY "
&&YY# %
infoYY& *
.YY* +
effectivePlayStateYY+ =
==YY> @
	PlayStateYYA J
.YYJ K
PausedYYK Q
)YYQ R
{ZZ 

gameObject[[ 
.[[ 
	SetActive[[ $
([[$ %
false[[% *
)[[* +
;[[+ ,
}\\ 
}]] 	
publicee 
overrideee 
voidee 
ProcessFrameee )
(ee) *
Playableee* 2
playableee3 ;
,ee; <
	FrameDataee= F
infoeeG K
,eeK L
objecteeM S
userDataeeT \
)ee\ ]
{ff 	
ifgg 
(gg 

gameObjectgg 
!=gg 
nullgg "
)gg" #

gameObjecthh 
.hh 
	SetActivehh $
(hh$ %
truehh% )
)hh) *
;hh* +
}ii 	
publicoo 
overrideoo 
voidoo 
OnGraphStartoo )
(oo) *
Playableoo* 2
playableoo3 ;
)oo; <
{pp 	
ifqq 
(qq 

gameObjectqq 
!=qq 
nullqq "
)qq" #
{rr 
ifss 
(ss 
m_InitialStatess "
==ss# %
InitialStatess& 2
.ss2 3
Unsetss3 8
)ss8 9
m_InitialStatett "
=tt# $

gameObjecttt% /
.tt/ 0

activeSelftt0 :
?tt; <
InitialStatett= I
.ttI J
ActivettJ P
:ttQ R
InitialStatettS _
.tt_ `
Inactivett` h
;tth i
}uu 
}vv 	
public|| 
override|| 
void|| 
OnPlayableDestroy|| .
(||. /
Playable||/ 7
playable||8 @
)||@ A
{}} 	
if~~ 
(~~ 

gameObject~~ 
==~~ 
null~~ "
||~~# %
m_InitialState~~& 4
==~~5 7
InitialState~~8 D
.~~D E
Unset~~E J
)~~J K
return 
; 
switch
 
(
 
postPlayback
  
)
  !
{
‚‚ 
case
ƒƒ 
PostPlaybackState
ƒƒ &
.
ƒƒ& '
Active
ƒƒ' -
:
ƒƒ- .

gameObject
„„ 
.
„„ 
	SetActive
„„ (
(
„„( )
true
„„) -
)
„„- .
;
„„. /
break
…… 
;
…… 
case
‡‡ 
PostPlaybackState
‡‡ &
.
‡‡& '
Inactive
‡‡' /
:
‡‡/ 0

gameObject
ˆˆ 
.
ˆˆ 
	SetActive
ˆˆ (
(
ˆˆ( )
false
ˆˆ) .
)
ˆˆ. /
;
ˆˆ/ 0
break
‰‰ 
;
‰‰ 
case
‹‹ 
PostPlaybackState
‹‹ &
.
‹‹& '
Revert
‹‹' -
:
‹‹- .

gameObject
ŒŒ 
.
ŒŒ 
	SetActive
ŒŒ (
(
ŒŒ( )
m_InitialState
ŒŒ) 7
==
ŒŒ8 :
InitialState
ŒŒ; G
.
ŒŒG H
Active
ŒŒH N
)
ŒŒN O
;
ŒŒO P
break
 
;
 
}
 
}
 	
}
 
}‘‘ è
–D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalEmitter.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
CustomStyle 
( 
$str  
)  !
]! "
[ 
ExcludeFromPreset 
] 
public 

class 
SignalEmitter 
:  
Marker! '
,' (
INotification) 6
,6 7'
INotificationOptionProvider8 S
{ 
[ 	
SerializeField	 
] 
bool 
m_Retroactive +
;+ ,
[ 	
SerializeField	 
] 
bool 

m_EmitOnce (
;( )
[ 	
SerializeField	 
] 
SignalAsset $
m_Asset% ,
;, -
public 
bool 
retroactive 
{ 	
get 
{ 
return 
m_Retroactive &
;& '
}( )
set 
{ 
m_Retroactive 
=  !
value" '
;' (
}) *
} 	
public## 
bool## 
emitOnce## 
{$$ 	
get%% 
{%% 
return%% 

m_EmitOnce%% #
;%%# $
}%%% &
set&& 
{&& 

m_EmitOnce&& 
=&& 
value&& $
;&&$ %
}&&& '
}'' 	
public,, 
SignalAsset,, 
asset,,  
{-- 	
get.. 
{.. 
return.. 
m_Asset..  
;..  !
}.." #
set// 
{// 
m_Asset// 
=// 
value// !
;//! "
}//# $
}00 	
PropertyName22 
INotification22 "
.22" #
id22# %
{33 	
get44 
{55 
if66 
(66 
m_Asset66 
!=66 
null66 #
)66# $
{77 
return88 
new88 
PropertyName88 +
(88+ ,
m_Asset88, 3
.883 4
name884 8
)888 9
;889 :
}99 
return:: 
new:: 
PropertyName:: '
(::' (
string::( .
.::. /
Empty::/ 4
)::4 5
;::5 6
};; 
}<< 	
NotificationFlags>> '
INotificationOptionProvider>> 5
.>>5 6
flags>>6 ;
{?? 	
get@@ 
{AA 
returnBB 
(BB 
retroactiveBB #
?BB$ %
NotificationFlagsBB& 7
.BB7 8
RetroactiveBB8 C
:BBD E
defaultBBF M
(BBM N
NotificationFlagsBBN _
)BB_ `
)BB` a
|BBb c
(CC 
emitOnceCC 
?CC 
NotificationFlagsCC  1
.CC1 2
TriggerOnceCC2 =
:CC> ?
defaultCC@ G
(CCG H
NotificationFlagsCCH Y
)CCY Z
)CCZ [
|CC\ ]
NotificationFlagsDD %
.DD% &
TriggerInEditModeDD& 7
;DD7 8
}EE 
}FF 	
}GG 
}HH ò
—D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\TimeControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class 
TimeControlPlayable $
:% &
PlayableBehaviour' 8
{		 
ITimeControl

 
m_timeControl

 "
;

" #
bool 
	m_started 
; 
public 
static 
ScriptPlayable $
<$ %
TimeControlPlayable% 8
>8 9
Create: @
(@ A
PlayableGraphA N
graphO T
,T U
ITimeControlV b
timeControlc n
)n o
{ 	
if 
( 
timeControl 
== 
null #
)# $
return 
ScriptPlayable %
<% &
TimeControlPlayable& 9
>9 :
.: ;
Null; ?
;? @
var 
handle 
= 
ScriptPlayable '
<' (
TimeControlPlayable( ;
>; <
.< =
Create= C
(C D
graphD I
)I J
;J K
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
timeControl- 8
)8 9
;9 :
return 
handle 
; 
} 	
public"" 
void"" 

Initialize"" 
("" 
ITimeControl"" +
timeControl"", 7
)""7 8
{## 	
m_timeControl$$ 
=$$ 
timeControl$$ '
;$$' (
}%% 	
public,, 
override,, 
void,, 
PrepareFrame,, )
(,,) *
Playable,,* 2
playable,,3 ;
,,,; <
	FrameData,,= F
info,,G K
),,K L
{-- 	
Debug.. 
... 
Assert.. 
(.. 
	m_started.. "
,.." #
$str..$ q
)..q r
;..r s
if// 
(// 
m_timeControl// 
!=//  
null//! %
)//% &
m_timeControl00 
.00 
SetTime00 %
(00% &
playable00& .
.00. /
GetTime00/ 6
(006 7
)007 8
)008 9
;009 :
}11 	
public88 
override88 
void88 
OnBehaviourPlay88 ,
(88, -
Playable88- 5
playable886 >
,88> ?
	FrameData88@ I
info88J N
)88N O
{99 	
if:: 
(:: 
m_timeControl:: 
==::  
null::! %
)::% &
return;; 
;;; 
if== 
(== 
!== 
	m_started== 
)== 
{>> 
m_timeControl?? 
.?? 
OnControlTimeStart?? 0
(??0 1
)??1 2
;??2 3
	m_started@@ 
=@@ 
true@@  
;@@  !
}AA 
}BB 	
publicII 
overrideII 
voidII 
OnBehaviourPauseII -
(II- .
PlayableII. 6
playableII7 ?
,II? @
	FrameDataIIA J
infoIIK O
)IIO P
{JJ 	
ifKK 
(KK 
m_timeControlKK 
==KK  
nullKK! %
)KK% &
returnLL 
;LL 
ifNN 
(NN 
	m_startedNN 
)NN 
{OO 
m_timeControlPP 
.PP 
OnControlTimeStopPP /
(PP/ 0
)PP0 1
;PP1 2
	m_startedQQ 
=QQ 
falseQQ !
;QQ! "
}RR 
}SS 	
}TT 
}UU —C
‘D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\Extrapolation.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
Extrapolation 
{ 
internal 
static 
readonly  
double! '!
kMinExtrapolationTime( =
=> ?
TimeUtility@ K
.K L
kTimeEpsilonL X
*Y Z
$num[ _
;_ `
internal 
static 
void '
CalculateExtrapolationTimes 8
(8 9
this9 =

TrackAsset> H
assetI N
)N O
{ 	
TimelineClip 
[ 
] 
clips  
=! "
asset# (
.( )
clips) .
;. /
if 
( 
clips 
== 
null 
||  
clips! &
.& '
Length' -
==. 0
$num1 2
)2 3
return 
; 
if 
( 
! 
clips 
[ 
$num 
] 
. !
SupportsExtrapolation /
(/ 0
)0 1
)1 2
return 
; 
var 
orderedClips 
=  
SortClipsByStartTime 3
(3 4
clips4 9
)9 :
;: ;
if 
( 
orderedClips 
. 
Length #
>$ %
$num& '
)' (
{ 
for 
( 
int 
i 
= 
$num 
; 
i  !
<" #
orderedClips$ 0
.0 1
Length1 7
;7 8
i9 :
++: <
)< =
{ 
double 
minTime "
=# $
double% +
.+ ,
PositiveInfinity, <
;< =
for   
(   
int   
j   
=    
$num  ! "
;  " #
j  $ %
<  & '
orderedClips  ( 4
.  4 5
Length  5 ;
;  ; <
j  = >
++  > @
)  @ A
{!! 
if"" 
("" 
i"" 
==""  
j""! "
)""" #
continue## $
;##$ %
double%% 
	deltaTime%% (
=%%) *
orderedClips%%+ 7
[%%7 8
j%%8 9
]%%9 :
.%%: ;
start%%; @
-%%A B
orderedClips%%C O
[%%O P
i%%P Q
]%%Q R
.%%R S
end%%S V
;%%V W
if&& 
(&& 
	deltaTime&& %
>=&&& (
-&&) *
TimeUtility&&* 5
.&&5 6
kTimeEpsilon&&6 B
&&&&C E
	deltaTime&&F O
<&&P Q
minTime&&R Y
)&&Y Z
minTime'' #
=''$ %
Math''& *
.''* +
Min''+ .
(''. /
minTime''/ 6
,''6 7
	deltaTime''8 A
)''A B
;''B C
if)) 
()) 
orderedClips)) (
[))( )
j))) *
]))* +
.))+ ,
start)), 1
<=))2 4
orderedClips))5 A
[))A B
i))B C
]))C D
.))D E
end))E H
&&))I K
orderedClips))L X
[))X Y
j))Y Z
]))Z [
.))[ \
end))\ _
>))` a
orderedClips))b n
[))n o
i))o p
]))p q
.))q r
end))r u
)))u v
minTime** #
=**$ %
$num**& '
;**' (
}++ 
minTime,, 
=,, 
minTime,, %
<=,,& (!
kMinExtrapolationTime,,) >
?,,? @
$num,,A B
:,,C D
minTime,,E L
;,,L M
orderedClips--  
[--  !
i--! "
]--" #
.--# $$
SetPostExtrapolationTime--$ <
(--< =
minTime--= D
)--D E
;--E F
}.. 
orderedClips11 
[11 
$num11 
]11 
.11  #
SetPreExtrapolationTime11  7
(117 8
Math118 <
.11< =
Max11= @
(11@ A
$num11A B
,11B C
orderedClips11D P
[11P Q
$num11Q R
]11R S
.11S T
start11T Y
)11Y Z
)11Z [
;11[ \
for22 
(22 
int22 
i22 
=22 
$num22 
;22 
i22  !
<22" #
orderedClips22$ 0
.220 1
Length221 7
;227 8
i229 :
++22: <
)22< =
{33 
double44 
preTime44 "
=44# $
$num44% &
;44& '
int55 
prevClip55  
=55! "
-55# $
$num55$ %
;55% &
for66 
(66 
int66 
j66 
=66  
$num66! "
;66" #
j66$ %
<66& '
i66( )
;66) *
j66+ ,
++66, .
)66. /
{77 
if99 
(99 
orderedClips99 (
[99( )
j99) *
]99* +
.99+ ,
end99, /
>990 1
orderedClips992 >
[99> ?
i99? @
]99@ A
.99A B
start99B G
)99G H
{:: 
prevClip;; $
=;;% &
-;;' (
$num;;( )
;;;) *
preTime<< #
=<<$ %
$num<<& '
;<<' (
break== !
;==! "
}>> 
double@@ 
gap@@ "
=@@# $
orderedClips@@% 1
[@@1 2
i@@2 3
]@@3 4
.@@4 5
start@@5 :
-@@; <
orderedClips@@= I
[@@I J
j@@J K
]@@K L
.@@L M
end@@M P
;@@P Q
ifAA 
(AA 
prevClipAA $
==AA% '
-AA( )
$numAA) *
||AA+ -
gapAA. 1
<AA2 3
preTimeAA4 ;
)AA; <
{BB 
preTimeCC #
=CC$ %
gapCC& )
;CC) *
prevClipDD $
=DD% &
jDD' (
;DD( )
}EE 
}FF 
ifHH 
(HH 
prevClipHH  
>=HH! #
$numHH$ %
)HH% &
{II 
ifJJ 
(JJ 
orderedClipsJJ (
[JJ( )
prevClipJJ) 1
]JJ1 2
.JJ2 3!
postExtrapolationModeJJ3 H
!=JJI K
TimelineClipJJL X
.JJX Y
ClipExtrapolationJJY j
.JJj k
NoneJJk o
)JJo p
preTimeKK #
=KK$ %
$numKK& '
;KK' (
}LL 
preTimeNN 
=NN 
preTimeNN %
<=NN& (!
kMinExtrapolationTimeNN) >
?NN? @
$numNNA B
:NNC D
preTimeNNE L
;NNL M
orderedClipsOO  
[OO  !
iOO! "
]OO" #
.OO# $#
SetPreExtrapolationTimeOO$ ;
(OO; <
preTimeOO< C
)OOC D
;OOD E
}PP 
}QQ 
}RR 	
staticTT 
TimelineClipTT 
[TT 
]TT  
SortClipsByStartTimeTT 2
(TT2 3
TimelineClipTT3 ?
[TT? @
]TT@ A
clipsTTB G
)TTG H
{UU 	
varVV 
orderedClipsVV 
=VV 
newVV "
TimelineClipVV# /
[VV/ 0
clipsVV0 5
.VV5 6
LengthVV6 <
]VV< =
;VV= >
ArrayWW 
.WW 
CopyWW 
(WW 
clipsWW 
,WW 
orderedClipsWW *
,WW* +
clipsWW, 1
.WW1 2
LengthWW2 8
)WW8 9
;WW9 :
ArrayXX 
.XX 
SortXX 
(XX 
orderedClipsXX #
,XX# $
(XX% &
clip1XX& +
,XX+ ,
clip2XX- 2
)XX2 3
=>XX4 6
clip1XX7 <
.XX< =
startXX= B
.XXB C
	CompareToXXC L
(XXL M
clip2XXM R
.XXR S
startXXS X
)XXX Y
)XXY Z
;XXZ [
returnYY 
orderedClipsYY 
;YY  
}ZZ 	
}[[ 
}\\ 