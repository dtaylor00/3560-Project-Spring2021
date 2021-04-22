�
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalAsset.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\CustomSignalEventDrawer.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationPreviewUpdateCallback.cs
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
}66 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelinePlayable.cs
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
go	JJ~ �
,
JJ� �
bool
JJ� �
autoRebalance
JJ� �
,
JJ� �
bool
JJ� �
createOutputs
JJ� �
)
JJ� �
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
bb� �
,
bb� �
bool
bb� �
createOutputs
bb� �
)
bb� �
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

GameObject	||v �
go
||� �
,
||� �
bool
||� �
createOutputs
||� �
)
||� �
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
�� 
(
�� 
!
�� 
track
�� 
.
�� 
IsCompilable
�� '
(
��' (
)
��( )
)
��) *
continue
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_PlayableCache
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
track
��1 6
)
��6 7
)
��7 8
{
�� 
track
�� 
.
�� 
	SortClips
�� #
(
��# $
)
��$ %
;
��% &!
CreateTrackPlayable
�� '
(
��' (
graph
��( -
,
��- .
timelinePlayable
��/ ?
,
��? @
track
��A F
,
��F G
go
��H J
,
��J K
createOutputs
��L Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 	
void
�� 
CreateTrackOutput
�� 
(
�� 
PlayableGraph
�� ,
graph
��- 2
,
��2 3

TrackAsset
��4 >
track
��? D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
Playable
��U ]
playable
��^ f
,
��f g
int
��h k
port
��l p
)
��p q
{
�� 	
if
�� 
(
�� 
track
�� 
.
�� 

isSubTrack
��  
)
��  !
return
�� 
;
�� 
var
�� 
bindings
�� 
=
�� 
track
��  
.
��  !
outputs
��! (
;
��( )
foreach
�� 
(
�� 
var
�� 
binding
��  
in
��! #
bindings
��$ ,
)
��, -
{
�� 
var
�� 
playableOutput
�� "
=
��# $
binding
��% ,
.
��, -
CreateOutput
��- 9
(
��9 :
graph
��: ?
)
��? @
;
��@ A
playableOutput
�� 
.
��  
SetReferenceObject
�� 1
(
��1 2
binding
��2 9
.
��9 :
sourceObject
��: F
)
��F G
;
��G H
playableOutput
�� 
.
�� 
SetSourcePlayable
�� 0
(
��0 1
playable
��1 9
,
��9 :
port
��; ?
)
��? @
;
��@ A
playableOutput
�� 
.
�� 
	SetWeight
�� (
(
��( )
$num
��) -
)
��- .
;
��. /
if
�� 
(
�� 
track
�� 
as
�� 
AnimationTrack
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 7
)EvaluateWeightsForAnimationPlayableOutput
�� =
(
��= >
track
��> C
,
��C D
(
��E F%
AnimationPlayableOutput
��F ]
)
��] ^
playableOutput
��^ l
)
��l m
;
��m n
if
�� 
(
�� 
!
�� 
Application
�� $
.
��$ %
	isPlaying
��% .
)
��. /4
&EvaluateAnimationPreviewUpdateCallback
�� >
(
��> ?
track
��? D
,
��D E
(
��F G%
AnimationPlayableOutput
��G ^
)
��^ _
playableOutput
��_ m
)
��m n
;
��n o
}
�� 
if
�� 
(
�� 
playableOutput
�� "
.
��" #$
IsPlayableOutputOfType
��# 9
<
��9 :!
AudioPlayableOutput
��: M
>
��M N
(
��N O
)
��O P
)
��P Q
(
�� 
(
�� !
AudioPlayableOutput
�� )
)
��) *
playableOutput
��* 8
)
��8 9
.
��9 :
SetEvaluateOnSeek
��: K
(
��K L
!
��L M 
muteAudioScrubbing
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
track
�� 
.
�� 
timelineAsset
�� '
.
��' (
markerTrack
��( 3
==
��4 6
track
��7 <
)
��< =
{
�� 
var
�� 
director
��  
=
��! "
go
��# %
.
��% &
GetComponent
��& 2
<
��2 3
PlayableDirector
��3 C
>
��C D
(
��D E
)
��E F
;
��F G
playableOutput
�� "
.
��" #
SetUserData
��# .
(
��. /
director
��/ 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
��  
c
��! "
in
��# %
go
��& (
.
��( )
GetComponents
��) 6
<
��6 7#
INotificationReceiver
��7 L
>
��L M
(
��M N
)
��N O
)
��O P
{
�� 
playableOutput
�� &
.
��& '%
AddNotificationReceiver
��' >
(
��> ?
c
��? @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� 7
)EvaluateWeightsForAnimationPlayableOutput
�� 6
(
��6 7

TrackAsset
��7 A
track
��B G
,
��G H%
AnimationPlayableOutput
��I `

animOutput
��a k
)
��k l
{
�� 	!
m_EvaluateCallbacks
�� 
.
��  
Add
��  #
(
��# $
new
��$ ',
AnimationOutputWeightProcessor
��( F
(
��F G

animOutput
��G Q
)
��Q R
)
��R S
;
��S T
}
�� 	
void
�� 4
&EvaluateAnimationPreviewUpdateCallback
�� 3
(
��3 4

TrackAsset
��4 >
track
��? D
,
��D E%
AnimationPlayableOutput
��F ]

animOutput
��^ h
)
��h i
{
�� 	!
m_EvaluateCallbacks
�� 
.
��  
Add
��  #
(
��# $
new
��$ ',
AnimationPreviewUpdateCallback
��( F
(
��F G

animOutput
��G Q
)
��Q R
)
��R S
;
��S T
}
�� 	
private
�� 
static
�� 
Playable
�� !
CreatePlayableGraph
��  3
(
��3 4
PlayableGraph
��4 A
graph
��B G
,
��G H

TrackAsset
��I S
asset
��T Y
,
��Y Z

GameObject
��[ e
go
��f h
,
��h i
IntervalTree
��j v
<
��v w
RuntimeElement��w �
>��� �
tree��� �
,��� �
Playable��� � 
timelinePlayable��� �
)��� �
{
�� 	
return
�� 
asset
�� 
.
�� !
CreatePlayableGraph
�� ,
(
��, -
graph
��- 2
,
��2 3
go
��4 6
,
��6 7
tree
��8 <
,
��< =
timelinePlayable
��> N
)
��N O
;
��O P
}
�� 	
private
�� 
Playable
�� !
CreateTrackPlayable
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A
Playable
��B J
timelinePlayable
��K [
,
��[ \

TrackAsset
��] g
track
��h m
,
��m n

GameObject
��o y
go
��z |
,
��| }
bool��~ �
createOutputs��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
IsCompilable
�� #
(
��# $
)
��$ %
)
��% &
return
�� 
timelinePlayable
�� '
;
��' (
Playable
�� 
playable
�� 
;
�� 
if
�� 
(
�� 
m_PlayableCache
�� 
.
��  
TryGetValue
��  +
(
��+ ,
track
��, 1
,
��1 2
out
��3 6
playable
��7 ?
)
��? @
)
��@ A
return
�� 
playable
�� 
;
��  
if
�� 
(
�� 
track
�� 
.
�� 
name
�� 
==
�� 
$str
�� $
)
��$ %
return
�� 
timelinePlayable
�� '
;
��' (

TrackAsset
�� 
parentActor
�� "
=
��# $
track
��% *
.
��* +
parent
��+ 1
as
��2 4

TrackAsset
��5 ?
;
��? @
var
�� 
parentPlayable
�� 
=
��  
parentActor
��! ,
!=
��- /
null
��0 4
?
��5 6!
CreateTrackPlayable
��7 J
(
��J K
graph
��K P
,
��P Q
timelinePlayable
��R b
,
��b c
parentActor
��d o
,
��o p
go
��q s
,
��s t
createOutputs��u �
)��� �
:��� � 
timelinePlayable��� �
;��� �
var
�� 
actorPlayable
�� 
=
�� !
CreatePlayableGraph
��  3
(
��3 4
graph
��4 9
,
��9 :
track
��; @
,
��@ A
go
��B D
,
��D E
m_IntervalTree
��F T
,
��T U
timelinePlayable
��V f
)
��f g
;
��g h
bool
�� 
	connected
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
!
�� 
actorPlayable
�� 
.
�� 
IsValid
�� &
(
��& '
)
��' (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
track
��4 9
.
��9 :
name
��: >
+
��? @
$str
��A D
+
��E F
track
��G L
.
��L M
GetType
��M T
(
��T U
)
��U V
+
��W X
$str��Y �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
parentPlayable
�� 
.
�� 
IsValid
�� &
(
��& '
)
��' (
&&
��) +
actorPlayable
��, 9
.
��9 :
IsValid
��: A
(
��A B
)
��B C
)
��C D
{
�� 
int
�� 
port
�� 
=
�� 
parentPlayable
�� )
.
��) *
GetInputCount
��* 7
(
��7 8
)
��8 9
;
��9 :
parentPlayable
�� 
.
�� 
SetInputCount
�� ,
(
��, -
port
��- 1
+
��2 3
$num
��4 5
)
��5 6
;
��6 7
	connected
�� 
=
�� 
graph
�� !
.
��! "
Connect
��" )
(
��) *
actorPlayable
��* 7
,
��7 8
$num
��9 :
,
��: ;
parentPlayable
��< J
,
��J K
port
��L P
)
��P Q
;
��Q R
parentPlayable
�� 
.
�� 
SetInputWeight
�� -
(
��- .
port
��. 2
,
��2 3
$num
��4 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
createOutputs
�� 
&&
��  
	connected
��! *
)
��* +
{
�� 
CreateTrackOutput
�� !
(
��! "
graph
��" '
,
��' (
track
��) .
,
��. /
go
��0 2
,
��2 3
parentPlayable
��4 B
,
��B C
parentPlayable
��D R
.
��R S
GetInputCount
��S `
(
��` a
)
��a b
-
��c d
$num
��e f
)
��f g
;
��g h
}
�� 

CacheTrack
�� 
(
�� 
track
�� 
,
�� 
actorPlayable
�� +
,
��+ ,
	connected
��- 6
?
��7 8
(
��9 :
parentPlayable
��: H
.
��H I
GetInputCount
��I V
(
��V W
)
��W X
-
��Y Z
$num
��[ \
)
��\ ]
:
��^ _
-
��` a
$num
��a b
,
��b c
parentPlayable
��d r
)
��r s
;
��s t
return
�� 
actorPlayable
��  
;
��  !
}
�� 	
public
�� 
override
�� 
void
�� 
PrepareFrame
�� )
(
��) *
Playable
��* 2
playable
��3 ;
,
��; <
	FrameData
��= F
info
��G K
)
��K L
{
�� 	
if
�� 
(
�� 
m_Rebalancer
�� 
!=
�� 
null
��  $
)
��$ %
m_Rebalancer
�� 
.
�� 
	Rebalance
�� &
(
��& '
)
��' (
;
��( )
Evaluate
�� 
(
�� 
playable
�� 
,
�� 
info
�� #
)
��# $
;
��$ %
}
�� 	
private
�� 
void
�� 
Evaluate
�� 
(
�� 
Playable
�� &
playable
��' /
,
��/ 0
	FrameData
��1 :
	frameData
��; D
)
��D E
{
�� 	
if
�� 
(
�� 
m_IntervalTree
�� 
==
�� !
null
��" &
)
��& '
return
�� 
;
�� 
double
�� 
	localTime
�� 
=
�� 
playable
�� '
.
��' (
GetTime
��( /
(
��/ 0
)
��0 1
;
��1 2
m_ActiveBit
�� 
=
�� 
m_ActiveBit
�� %
==
��& (
$num
��) *
?
��+ ,
$num
��- .
:
��/ 0
$num
��1 2
;
��2 3(
m_CurrentListOfActiveClips
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /
m_IntervalTree
�� 
.
�� 
IntersectsWith
�� )
(
��) *
DiscreteTime
��* 6
.
��6 7
GetNearestTick
��7 E
(
��E F
	localTime
��F O
)
��O P
,
��P Q(
m_CurrentListOfActiveClips
��R l
)
��l m
;
��m n
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� (
m_CurrentListOfActiveClips
�� 8
)
��8 9
{
�� 
c
�� 
.
�� 
intervalBit
�� 
=
�� 
m_ActiveBit
��  +
;
��+ ,
if
�� 
(
�� 
	frameData
�� 
.
�� 

timeLooped
�� (
)
��( )
c
�� 
.
�� 
Reset
�� 
(
�� 
)
�� 
;
�� 
}
�� 
var
�� 
timelineEnd
�� 
=
�� 
playable
�� &
.
��& '
GetDuration
��' 2
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
�� 
c
�� 
in
�� 
m_ActiveClips
�� +
)
��+ ,
{
�� 
if
�� 
(
�� 
c
�� 
.
�� 
intervalBit
�� !
!=
��" $
m_ActiveBit
��% 0
)
��0 1
{
�� 
var
�� 
clipEnd
�� 
=
��  !
(
��" #
double
��# )
)
��) *
DiscreteTime
��* 6
.
��6 7
	FromTicks
��7 @
(
��@ A
c
��A B
.
��B C
intervalEnd
��C N
)
��N O
;
��O P
var
�� 
time
�� 
=
�� 
	frameData
�� (
.
��( )

timeLooped
��) 3
?
��4 5
Math
��6 :
.
��: ;
Min
��; >
(
��> ?
clipEnd
��? F
,
��F G
timelineEnd
��H S
)
��S T
:
��U V
Math
��W [
.
��[ \
Min
��\ _
(
��_ `
	localTime
��` i
,
��i j
clipEnd
��k r
)
��r s
;
��s t
c
�� 
.
�� 

EvaluateAt
��  
(
��  !
time
��! %
,
��% &
	frameData
��' 0
)
��0 1
;
��1 2
c
�� 
.
�� 
enable
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
}
�� 
m_ActiveClips
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
for
�� 
(
�� 
var
�� 
a
�� 
=
�� 
$num
�� 
;
�� 
a
�� 
<
�� (
m_CurrentListOfActiveClips
��  :
.
��: ;
Count
��; @
;
��@ A
a
��B C
++
��C E
)
��E F
{
�� (
m_CurrentListOfActiveClips
�� *
[
��* +
a
��+ ,
]
��, -
.
��- .

EvaluateAt
��. 8
(
��8 9
	localTime
��9 B
,
��B C
	frameData
��D M
)
��M N
;
��N O
m_ActiveClips
�� 
.
�� 
Add
�� !
(
��! "(
m_CurrentListOfActiveClips
��" <
[
��< =
a
��= >
]
��> ?
)
��? @
;
��@ A
}
�� 
int
�� 
count
�� 
=
�� !
m_EvaluateCallbacks
�� +
.
��+ ,
Count
��, 1
;
��1 2
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
�� 
count
��  %
;
��% &
i
��' (
++
��( *
)
��* +
{
�� !
m_EvaluateCallbacks
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
Evaluate
��' /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
private
�� 
void
�� 

CacheTrack
�� 
(
��  

TrackAsset
��  *
track
��+ 0
,
��0 1
Playable
��2 :
playable
��; C
,
��C D
int
��E H
port
��I M
,
��M N
Playable
��O W
parent
��X ^
)
��^ _
{
�� 	
m_PlayableCache
�� 
[
�� 
track
�� !
]
��! "
=
��# $
playable
��% -
;
��- .
}
�� 	
static
�� 
void
�� #
ForAOTCompilationOnly
�� )
(
��) *
)
��* +
{
�� 	
new
�� 
List
�� 
<
�� 
IntervalTree
�� !
<
��! "
RuntimeElement
��" 0
>
��0 1
.
��1 2
Entry
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\IPropertyPreview.cs
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
} �%
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\ClipCaps.cs
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
}ZZ ߗ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAsset_CreateRemove.cs
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
+	!! �
parent
!!� �
.
!!� �
GetType
!!� �
(
!!� �
)
!!� �
.
!!� �
Name
!!� �
)
!!� �
;
!!� �
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
�� %
DeleteRecordedAnimation
�� '
(
��' (
clip
��( ,
)
��, -
;
��- .
string
�� 
path
�� 
=
�� 
UnityEditor
�� )
.
��) *
AssetDatabase
��* 7
.
��7 8
GetAssetPath
��8 D
(
��D E
clip
��E I
.
��I J
asset
��J O
)
��O P
;
��P Q
if
�� 
(
�� 
path
�� 
==
�� 
UnityEditor
�� '
.
��' (
AssetDatabase
��( 5
.
��5 6
GetAssetPath
��6 B
(
��B C
this
��C G
)
��G H
)
��H I
{
�� 
TimelineUndo
��  
.
��  !
PushDestroyUndo
��! 0
(
��0 1
this
��1 5
,
��5 6
clip
��7 ;
.
��; <
parentTrack
��< G
,
��G H
clip
��I M
.
��M N
asset
��N S
)
��S T
;
��T U
}
�� 
}
�� 
var
�� 
clipParentTrack
�� 
=
��  !
clip
��" &
.
��& '
parentTrack
��' 2
;
��2 3
clipParentTrack
�� 
.
�� 

RemoveClip
�� &
(
��& '
clip
��' +
)
��+ ,
;
��, -
clipParentTrack
�� 
.
�� )
CalculateExtrapolationTimes
�� 7
(
��7 8
)
��8 9
;
��9 :
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
DeleteTrack
�� 
(
��  

TrackAsset
��  *
track
��+ 0
)
��0 1
{
�� 	
if
�� 
(
�� 
track
�� 
.
�� 
timelineAsset
�� #
!=
��$ &
this
��' +
)
��+ ,
return
�� 
false
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
track
��" '
,
��' (
$str
��) 7
)
��7 8
;
��8 9
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
this
��" &
,
��& '
$str
��( 6
)
��6 7
;
��7 8

TrackAsset
�� 
parent
�� 
=
�� 
track
��  %
.
��% &
parent
��& ,
as
��- /

TrackAsset
��0 :
;
��: ;
if
�� 
(
�� 
parent
�� 
!=
�� 
null
�� 
)
�� 
TimelineUndo
�� 
.
�� 
PushUndo
�� %
(
��% &
parent
��& ,
,
��, -
$str
��. <
)
��< =
;
��= >
var
�� 
children
�� 
=
�� 
track
��  
.
��  !
GetChildTracks
��! /
(
��/ 0
)
��0 1
;
��1 2
foreach
�� 
(
�� 
var
�� 
child
�� 
in
�� !
children
��" *
)
��* +
{
�� 
DeleteTrack
�� 
(
�� 
child
�� !
)
��! "
;
��" #
}
�� %
DeleteRecordedAnimation
�� #
(
��# $
track
��$ )
)
��) *
;
��* +
var
�� 
clipsToDelete
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
��6 7
track
��7 <
.
��< =
clips
��= B
)
��B C
;
��C D
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
clipsToDelete
��! .
)
��. /
{
�� 

DeleteClip
�� 
(
�� 
clip
�� 
)
��  
;
��  !
}
�� 
RemoveTrack
�� 
(
�� 
track
�� 
)
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� (
(
��( )
this
��) -
,
��- .
this
��/ 3
,
��3 4
track
��5 :
)
��: ;
;
��; <
return
�� 
true
�� 
;
�� 
}
�� 	
internal
�� 
void
�� !
MoveLastTrackBefore
�� )
(
��) *

TrackAsset
��* 4
asset
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  
||
��! #
m_Tracks
��$ ,
.
��, -
Count
��- 2
<
��3 4
$num
��5 6
||
��7 9
asset
��: ?
==
��@ B
null
��C G
)
��G H
return
�� 
;
�� 
var
�� 
	lastTrack
�� 
=
�� 
m_Tracks
�� $
[
��$ %
m_Tracks
��% -
.
��- .
Count
��. 3
-
��4 5
$num
��6 7
]
��7 8
;
��8 9
if
�� 
(
�� 
	lastTrack
�� 
==
�� 
asset
�� "
)
��" #
return
�� 
;
�� 
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
m_Tracks
��  (
.
��( )
Count
��) .
-
��/ 0
$num
��1 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
if
�� 
(
�� 
m_Tracks
�� 
[
�� 
i
�� 
]
�� 
==
��  "
asset
��# (
)
��( )
{
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
��  
m_Tracks
��! )
.
��) *
Count
��* /
-
��0 1
$num
��2 3
;
��3 4
j
��5 6
>
��7 8
i
��9 :
;
��: ;
j
��< =
--
��= ?
)
��? @
m_Tracks
��  
[
��  !
j
��! "
]
��" #
=
��$ %
m_Tracks
��& .
[
��. /
j
��/ 0
-
��1 2
$num
��3 4
]
��4 5
;
��5 6
m_Tracks
�� 
[
�� 
i
�� 
]
�� 
=
��  !
	lastTrack
��" +
;
��+ ,

Invalidate
�� 
(
�� 
)
��  
;
��  !
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 

TrackAsset
�� 
AllocateTrack
�� )
(
��) *

TrackAsset
��* 4
trackAssetParent
��5 E
,
��E F
string
��G M
	trackName
��N W
,
��W X
Type
��Y ]
	trackType
��^ g
)
��g h
{
�� 	
if
�� 
(
�� 
trackAssetParent
��  
!=
��! #
null
��$ (
&&
��) +
trackAssetParent
��, <
.
��< =
timelineAsset
��= J
!=
��K M
this
��N R
)
��R S
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 k
)
��k l
;
��l m
if
�� 
(
�� 
!
�� 
typeof
�� 
(
�� 

TrackAsset
�� "
)
��" #
.
��# $
IsAssignableFrom
��$ 4
(
��4 5
	trackType
��5 >
)
��> ?
)
��? @
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 Y
)
��Y Z
;
��Z [
var
�� 
asset
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
CreateInstance
��$ 2
(
��2 3
	trackType
��3 <
)
��< =
;
��= >
asset
�� 
.
�� 
name
�� 
=
�� 
	trackName
�� "
;
��" #
if
�� 
(
�� 
trackAssetParent
��  
!=
��! #
null
��$ (
)
��( )
trackAssetParent
��  
.
��  !
AddChild
��! )
(
��) *
asset
��* /
)
��/ 0
;
��0 1
else
�� 
AddTrackInternal
��  
(
��  !
asset
��! &
)
��& '
;
��' (
return
�� 
asset
�� 
;
�� 
}
�� 	
void
�� %
DeleteRecordedAnimation
�� $
(
��$ %

TrackAsset
��% /
track
��0 5
)
��5 6
{
�� 	
var
�� 
	animTrack
�� 
=
�� 
track
�� !
as
��" $
AnimationTrack
��% 3
;
��3 4
if
�� 
(
�� 
	animTrack
�� 
!=
�� 
null
�� !
&&
��" $
	animTrack
��% .
.
��. /
infiniteClip
��/ ;
!=
��< >
null
��? C
)
��C D
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
track
��3 8
,
��8 9
	animTrack
��: C
.
��C D
infiniteClip
��D P
)
��P Q
;
��Q R
if
�� 
(
�� 
track
�� 
.
�� 
curves
�� 
!=
�� 
null
��  $
)
��$ %
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
track
��3 8
,
��8 9
track
��: ?
.
��? @
curves
��@ F
)
��F G
;
��G H
}
�� 	
void
�� %
DeleteRecordedAnimation
�� $
(
��$ %
TimelineClip
��% 1
clip
��2 6
)
��6 7
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
�� 
)
�� 
return
�� 
;
�� 
if
�� 
(
�� 
clip
�� 
.
�� 
curves
�� 
!=
�� 
null
�� #
)
��# $
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
clip
��3 7
.
��7 8
parentTrack
��8 C
,
��C D
clip
��E I
.
��I J
curves
��J P
)
��P Q
;
��Q R
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
�� 
;
�� $
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
�� 
||
��  
asset
��! &
.
��& '
clip
��' +
==
��, .
null
��/ 3
)
��3 4
return
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� (
(
��( )
this
��) -
,
��- .
asset
��/ 4
,
��4 5
asset
��6 ;
.
��; <
clip
��< @
)
��@ A
;
��A B
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\IPropertyCollector.cs
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
}ff �S
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioTrack.cs
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
IntervalTree	//w �
<
//� �
RuntimeElement
//� �
>
//� �
tree
//� �
)
//� �
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
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAsset.cs
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
�� 
DurationMode
�� 
durationMode
�� (
{
�� 	
get
�� 
{
�� 
return
�� 
m_DurationMode
�� '
;
��' (
}
��) *
set
�� 
{
�� 
m_DurationMode
��  
=
��! "
value
��# (
;
��( )
}
��* +
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
outputTracks
�� )
in
��* ,
GetOutputTracks
��- <
(
��< =
)
��= >
)
��> ?
foreach
�� 
(
�� 
var
��  
output
��! '
in
��( *
outputTracks
��+ 7
.
��7 8
outputs
��8 ?
)
��? @
yield
�� 
return
�� $
output
��% +
;
��+ ,
}
�� 
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
caps
�� 
=
�� 
ClipCaps
�� #
.
��# $
All
��$ '
;
��' (
foreach
�� 
(
�� 
var
�� 
track
�� "
in
��# %
GetRootTracks
��& 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
foreach
�� 
(
�� 
var
��  
clip
��! %
in
��& (
track
��) .
.
��. /
clips
��/ 4
)
��4 5
caps
�� 
&=
�� 
clip
��  $
.
��$ %
clipCaps
��% -
;
��- .
}
�� 
return
�� 
caps
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
outputTrackCount
�� #
{
�� 	
get
�� 
{
�� $
UpdateOutputTrackCache
�� &
(
��& '
)
��' (
;
��( )
return
�� !
m_CacheOutputTracks
�� *
.
��* +
Length
��+ 1
;
��1 2
}
�� 
}
�� 	
public
�� 
int
�� 
rootTrackCount
�� !
{
�� 	
get
�� 
{
�� "
UpdateRootTrackCache
�� $
(
��$ %
)
��% &
;
��& '
return
�� 
m_CacheRootTracks
�� (
.
��( )
Count
��) .
;
��. /
}
�� 
}
�� 	
void
�� 

OnValidate
�� 
(
�� 
)
�� 
{
�� 	
editorSettings
�� 
.
�� 
fps
�� 
=
��  
GetValidFramerate
��! 2
(
��2 3
editorSettings
��3 A
.
��A B
fps
��B E
)
��E F
;
��F G
}
�� 	
internal
�� 
static
�� 
float
�� 
GetValidFramerate
�� /
(
��/ 0
float
��0 5
	framerate
��6 ?
)
��? @
{
�� 	
return
�� 
Mathf
�� 
.
�� 
Clamp
�� 
(
�� 
	framerate
�� (
,
��( )
EditorSettings
��* 8
.
��8 9
kMinFps
��9 @
,
��@ A
EditorSettings
��B P
.
��P Q
kMaxFps
��Q X
)
��X Y
;
��Y Z
}
�� 	
public
�� 

TrackAsset
�� 
GetRootTrack
�� &
(
��& '
int
��' *
index
��+ 0
)
��0 1
{
�� 	"
UpdateRootTrackCache
��  
(
��  !
)
��! "
;
��" #
return
�� 
m_CacheRootTracks
�� $
[
��$ %
index
��% *
]
��* +
;
��+ ,
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetRootTracks
��' 4
(
��4 5
)
��5 6
{
�� 	"
UpdateRootTrackCache
��  
(
��  !
)
��! "
;
��" #
return
�� 
m_CacheRootTracks
�� $
;
��$ %
}
�� 	
public
�� 

TrackAsset
�� 
GetOutputTrack
�� (
(
��( )
int
��) ,
index
��- 2
)
��2 3
{
�� 	$
UpdateOutputTrackCache
�� "
(
��" #
)
��# $
;
��$ %
return
�� !
m_CacheOutputTracks
�� &
[
��& '
index
��' ,
]
��, -
;
��- .
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetOutputTracks
��' 6
(
��6 7
)
��7 8
{
�� 	$
UpdateOutputTrackCache
�� "
(
��" #
)
��# $
;
��$ %
return
�� !
m_CacheOutputTracks
�� &
;
��& '
}
�� 	
void
�� "
UpdateRootTrackCache
�� !
(
��! "
)
��" #
{
�� 	
if
�� 
(
�� 
m_CacheRootTracks
�� !
==
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  $
)
��$ %
m_CacheRootTracks
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

TrackAsset
��1 ;
>
��; <
(
��< =
)
��= >
;
��> ?
else
�� 
{
�� 
m_CacheRootTracks
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

TrackAsset
��1 ;
>
��; <
(
��< =
m_Tracks
��= E
.
��E F
Count
��F K
)
��K L
;
��L M
if
�� 
(
�� 
markerTrack
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
m_CacheRootTracks
�� )
.
��) *
Add
��* -
(
��- .
markerTrack
��. 9
)
��9 :
;
��: ;
}
�� 
foreach
�� 
(
�� 
var
��  
t
��! "
in
��# %
m_Tracks
��& .
)
��. /
{
�� 
var
�� 

trackAsset
�� &
=
��' (
t
��) *
as
��+ -

TrackAsset
��. 8
;
��8 9
if
�� 
(
�� 

trackAsset
�� &
!=
��' )
null
��* .
)
��. /
m_CacheRootTracks
�� -
.
��- .
Add
��. 1
(
��1 2

trackAsset
��2 <
)
��< =
;
��= >
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� $
UpdateOutputTrackCache
�� #
(
��# $
)
��$ %
{
�� 	
if
�� 
(
�� !
m_CacheOutputTracks
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
var
�� 
outputTracks
��  
=
��! "
new
��# &
List
��' +
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
��9 :
foreach
�� 
(
�� 
var
�� 
flattenedTrack
�� +
in
��, .
flattenedTracks
��/ >
)
��> ?
{
�� 
if
�� 
(
�� 
flattenedTrack
�� &
!=
��' )
null
��* .
&&
��/ 1
flattenedTrack
��2 @
.
��@ A
GetType
��A H
(
��H I
)
��I J
!=
��K M
typeof
��N T
(
��T U

GroupTrack
��U _
)
��_ `
&&
��a c
!
��d e
flattenedTrack
��e s
.
��s t

isSubTrack
��t ~
)
��~ 
outputTracks
�� $
.
��$ %
Add
��% (
(
��( )
flattenedTrack
��) 7
)
��7 8
;
��8 9
}
�� !
m_CacheOutputTracks
�� #
=
��$ %
outputTracks
��& 2
.
��2 3
ToArray
��3 :
(
��: ;
)
��; <
;
��< =
}
�� 
}
�� 	
internal
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� '
>
��' (
flattenedTracks
��) 8
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_CacheFlattenedTracks
�� *
==
��+ -
null
��. 2
)
��2 3
{
�� $
m_CacheFlattenedTracks
�� *
=
��+ ,
new
��- 0
List
��1 5
<
��5 6

TrackAsset
��6 @
>
��@ A
(
��A B
m_Tracks
��B J
.
��J K
Count
��K P
*
��Q R
$num
��S T
)
��T U
;
��U V"
UpdateRootTrackCache
�� (
(
��( )
)
��) *
;
��* +$
m_CacheFlattenedTracks
�� *
.
��* +
AddRange
��+ 3
(
��3 4
m_CacheRootTracks
��4 E
)
��E F
;
��F G
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
m_CacheRootTracks
��( 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� #
AddSubTracksRecursive
�� -
(
��- .
m_CacheRootTracks
��. ?
[
��? @
i
��@ A
]
��A B
,
��B C
ref
��D G$
m_CacheFlattenedTracks
��H ^
)
��^ _
;
��_ `
}
�� 
}
�� 
return
�� $
m_CacheFlattenedTracks
�� -
;
��- .
}
�� 
}
�� 	
public
�� 
MarkerTrack
�� 
markerTrack
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
m_MarkerTrack
�� &
;
��& '
}
��( )
}
�� 	
internal
�� 
List
�� 
<
�� 
ScriptableObject
�� &
>
��& '
trackObjects
��( 4
{
�� 	
get
�� 
{
�� 
return
�� 
m_Tracks
�� !
;
��! "
}
��# $
}
�� 	
internal
�� 
void
�� 
AddTrackInternal
�� &
(
��& '

TrackAsset
��' 1
track
��2 7
)
��7 8
{
�� 	
m_Tracks
�� 
.
�� 
Add
�� 
(
�� 
track
�� 
)
�� 
;
��  
track
�� 
.
�� 
parent
�� 
=
�� 
this
�� 
;
��  

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
RemoveTrack
�� !
(
��! "

TrackAsset
��" ,
track
��- 2
)
��2 3
{
�� 	
m_Tracks
�� 
.
�� 
Remove
�� 
(
�� 
track
�� !
)
��! "
;
��" #

Invalidate
�� 
(
�� 
)
�� 
;
�� 
var
�� 
parentTrack
�� 
=
�� 
track
�� #
.
��# $
parent
��$ *
as
��+ -

TrackAsset
��. 8
;
��8 9
if
�� 
(
�� 
parentTrack
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
parentTrack
�� 
.
�� 
RemoveSubTrack
�� *
(
��* +
track
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
override
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D

GameObject
��E O
go
��P R
)
��R S
{
�� 	
bool
�� 
autoRebalanceTree
�� "
=
��# $
false
��% *
;
��* +
autoRebalanceTree
�� 
=
�� 
true
��  $
;
��$ %
bool
�� 
createOutputs
�� 
=
��  
graph
��! &
.
��& '
GetPlayableCount
��' 7
(
��7 8
)
��8 9
==
��: <
$num
��= >
;
��> ?
var
�� 
timeline
�� 
=
�� 
TimelinePlayable
�� +
.
��+ ,
Create
��, 2
(
��2 3
graph
��3 8
,
��8 9
GetOutputTracks
��: I
(
��I J
)
��J K
,
��K L
go
��M O
,
��O P
autoRebalanceTree
��Q b
,
��b c
createOutputs
��d q
)
��q r
;
��r s
timeline
�� 
.
�� !
SetPropagateSetTime
�� (
(
��( )
true
��) -
)
��- .
;
��. /
return
�� 
timeline
�� 
.
�� 
IsValid
�� #
(
��# $
)
��$ %
?
��& '
timeline
��( 0
:
��1 2
Playable
��3 ;
.
��; <
Null
��< @
;
��@ A
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ ,
OnBeforeSerialize
��, =
(
��= >
)
��> ?
{
�� 	
	m_Version
�� 
=
�� 
k_LatestVersion
�� '
;
��' (
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	

Invalidate
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
	m_Version
�� 
<
�� 
k_LatestVersion
�� +
)
��+ ,
{
�� $
UpgradeToLatestVersion
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
void
�� 
__internalAwake
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  
)
��  !
m_Tracks
�� 
=
�� 
new
�� 
List
�� #
<
��# $
ScriptableObject
��$ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
m_Tracks
�� !
.
��! "
Count
��" '
-
��( )
$num
��* +
;
��+ ,
i
��- .
>=
��/ 1
$num
��2 3
;
��3 4
i
��5 6
--
��6 8
)
��8 9
{
�� 

TrackAsset
�� 
asset
��  
=
��! "
m_Tracks
��# +
[
��+ ,
i
��, -
]
��- .
as
��/ 1

TrackAsset
��2 <
;
��< =
if
�� 
(
�� 
asset
�� 
!=
�� 
null
�� !
)
��! "
asset
�� 
.
�� 
parent
��  
=
��! "
this
��# '
;
��' (
object
�� 
o
�� 
=
�� 
m_Tracks
�� #
[
��# $
i
��$ %
]
��% &
;
��& '
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% d
)
��d e
;
��e f
m_Tracks
�� 
.
�� 
RemoveAt
�� %
(
��% &
i
��& '
)
��' (
;
��( )
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
var
�� 
outputTracks
�� 
=
�� 
GetOutputTracks
�� .
(
��. /
)
��/ 0
;
��0 1
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
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
mutedInHierarchy
�� +
)
��+ ,
track
�� 
.
�� 
GatherProperties
�� *
(
��* +
director
��+ 3
,
��3 4
driver
��5 ;
)
��; <
;
��< =
}
�� 
}
�� 	
public
�� 
void
�� 
CreateMarkerTrack
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_MarkerTrack
�� 
==
��  
null
��! %
)
��% &
{
�� 
m_MarkerTrack
�� 
=
�� 
CreateInstance
��  .
<
��. /
MarkerTrack
��/ :
>
��: ;
(
��; <
)
��< =
;
��= >%
TimelineCreateUtilities
�� '
.
��' (!
SaveAssetIntoObject
��( ;
(
��; <
m_MarkerTrack
��< I
,
��I J
this
��K O
)
��O P
;
��P Q
m_MarkerTrack
�� 
.
�� 
parent
�� $
=
��% &
this
��' +
;
��+ ,
m_MarkerTrack
�� 
.
�� 
name
�� "
=
��# $
$str
��% .
;
��. /

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 

Invalidate
��  
(
��  !
)
��! "
{
�� 	
m_CacheRootTracks
�� 
=
�� 
null
��  $
;
��$ %!
m_CacheOutputTracks
�� 
=
��  !
null
��" &
;
��& '$
m_CacheFlattenedTracks
�� "
=
��# $
null
��% )
;
��) *
}
�� 	
double
�� 
CalculateDuration
��  
(
��  !
)
��! "
{
�� 	
var
�� 
discreteDuration
��  
=
��! "
new
��# &
DiscreteTime
��' 3
(
��3 4
$num
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
var
�� 
track
�� 
in
�� !
flattenedTracks
��" 1
)
��1 2
{
�� 
if
�� 
(
�� 
track
�� 
.
�� 
muted
�� 
)
��  
continue
�� 
;
�� 
discreteDuration
��  
=
��! "
DiscreteTime
��# /
.
��/ 0
Max
��0 3
(
��3 4
discreteDuration
��4 D
,
��D E
(
��F G
DiscreteTime
��G S
)
��S T
track
��T Y
.
��Y Z
end
��Z ]
)
��] ^
;
��^ _
}
�� 
if
�� 
(
�� 
discreteDuration
��  
<=
��! #
$num
��$ %
)
��% &
return
�� 
$num
�� 
;
�� 
return
�� 
(
�� 
double
�� 
)
�� 
discreteDuration
�� +
.
��+ ,
OneTickBefore
��, 9
(
��9 :
)
��: ;
;
��; <
}
�� 	
static
�� 
void
�� #
AddSubTracksRecursive
�� )
(
��) *

TrackAsset
��* 4
track
��5 :
,
��: ;
ref
��< ?
List
��@ D
<
��D E

TrackAsset
��E O
>
��O P
	allTracks
��Q Z
)
��Z [
{
�� 	
if
�� 
(
�� 
track
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
	allTracks
�� 
.
�� 
AddRange
�� 
(
�� 
track
�� $
.
��$ %
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 

TrackAsset
�� 
subTrack
��  (
in
��) +
track
��, 1
.
��1 2
GetChildTracks
��2 @
(
��@ A
)
��A B
)
��B C
{
�� #
AddSubTracksRecursive
�� %
(
��% &
subTrack
��& .
,
��. /
ref
��0 3
	allTracks
��4 =
)
��= >
;
��> ?
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\DirectorControlPlayable.cs
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
�� 
(
�� 
UnityEditor
�� 
.
�� 
PrefabUtility
�� )
.
��) *
GetRootGameObject
��* ;
(
��; <
director
��< D
)
��D E
==
��F H
go
��I K
)
��K L
director
�� 
.
�� 
RebuildGraph
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
void
�� 
	SyncSpeed
�� 
(
�� 
double
�� 
speed
�� #
)
��# $
{
�� 	
if
�� 
(
�� 
director
�� 
.
�� 
playableGraph
�� &
.
��& '
IsValid
��' .
(
��. /
)
��/ 0
)
��0 1
{
�� 
int
�� 
roots
�� 
=
�� 
director
�� $
.
��$ %
playableGraph
��% 2
.
��2 3"
GetRootPlayableCount
��3 G
(
��G H
)
��H I
;
��I J
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
��" #
roots
��$ )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 
var
�� 
rootPlayable
�� $
=
��% &
director
��' /
.
��/ 0
playableGraph
��0 =
.
��= >
GetRootPlayable
��> M
(
��M N
i
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
rootPlayable
�� $
.
��$ %
IsValid
��% ,
(
��, -
)
��- .
)
��. /
{
�� 
rootPlayable
�� $
.
��$ %
SetSpeed
��% -
(
��- .
speed
��. 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� 
SyncPlayState
�� 
(
�� 
PlayableGraph
�� (
graph
��) .
,
��. /
double
��0 6
playableTime
��7 C
)
��C D
{
�� 	
bool
�� 
expectedFinished
�� !
=
��" #
(
��$ %
playableTime
��% 1
>=
��2 4
m_AssetDuration
��5 D
)
��D E
&&
��F H
director
��I Q
.
��Q R
extrapolationMode
��R c
==
��d f
DirectorWrapMode
��g w
.
��w x
None
��x |
;
��| }
if
�� 
(
�� 
graph
�� 
.
�� 
	IsPlaying
�� 
(
��  
)
��  !
&&
��" $
!
��% &
expectedFinished
��& 6
)
��6 7
director
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
��  
else
�� 
director
�� 
.
�� 
Pause
�� 
(
�� 
)
��  
;
��  !
}
�� 	
bool
�� !
DetectDiscontinuity
��  
(
��  !
Playable
��! )
playable
��* 2
,
��2 3
	FrameData
��4 =
info
��> B
)
��B C
{
�� 	
return
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
playable
�� $
.
��$ %
GetTime
��% ,
(
��, -
)
��- .
-
��/ 0
playable
��1 9
.
��9 :
GetPreviousTime
��: I
(
��I J
)
��J K
-
��L M
info
��N R
.
��R S
m_DeltaTime
��S ^
*
��_ `
info
��a e
.
��e f
m_EffectiveSpeed
��f v
)
��v w
>
��x y
DiscreteTime��z �
.��� �
	tickValue��� �
;��� �
}
�� 	
bool
�� 
DetectOutOfSync
�� 
(
�� 
Playable
�� %
playable
��& .
)
��. /
{
�� 	
double
�� 
expectedTime
�� 
=
��  !
playable
��" *
.
��* +
GetTime
��+ 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
playable
�� 
.
�� 
GetTime
��  
(
��  !
)
��! "
>=
��# %
m_AssetDuration
��& 5
)
��5 6
{
�� 
if
�� 
(
�� 
director
�� 
.
�� 
extrapolationMode
�� .
==
��/ 1
DirectorWrapMode
��2 B
.
��B C
None
��C G
)
��G H
return
�� 
false
��  
;
��  !
else
�� 
if
�� 
(
�� 
director
�� !
.
��! "
extrapolationMode
��" 3
==
��4 6
DirectorWrapMode
��7 G
.
��G H
Hold
��H L
)
��L M
expectedTime
��  
=
��! "
m_AssetDuration
��# 2
;
��2 3
else
�� 
if
�� 
(
�� 
m_AssetDuration
�� (
>
��) *
float
��+ 0
.
��0 1
Epsilon
��1 8
)
��8 9
expectedTime
��  
=
��! "
expectedTime
��# /
%
��0 1
m_AssetDuration
��2 A
;
��A B
}
�� 
if
�� 
(
�� 
!
�� 
Mathf
�� 
.
�� 
Approximately
�� $
(
��$ %
(
��% &
float
��& +
)
��+ ,
expectedTime
��, 8
,
��8 9
(
��: ;
float
��; @
)
��@ A
director
��A I
.
��I J
time
��J N
)
��N O
)
��O P
{
�� 
double
�� 
	lastDelta
��  
=
��! "
playable
��# +
.
��+ ,
GetTime
��, 3
(
��3 4
)
��4 5
-
��6 7
playable
��8 @
.
��@ A
GetPreviousTime
��A P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
UnityEditor
�� 
.
��  
Unsupported
��  +
.
��+ ,
IsDeveloperBuild
��, <
(
��< =
)
��= >
)
��> ?
Debug
�� 
.
�� 
LogWarningFormat
�� *
(
��* +
$str��+ �
,��� �
playable��� �
.��� �
GetTime��� �
(��� �
)��� �
,��� �
director��� �
.��� �
time��� �
,��� �
director��� �
.��� �
name��� �
,��� �
	lastDelta��� �
)��� �
;��� �
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
void
�� 

UpdateTime
�� 
(
�� 
Playable
��  
playable
��! )
)
��) *
{
�� 	
double
�� 
duration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '
$num
��' *
,
��* +
director
��, 4
.
��4 5
playableAsset
��5 B
.
��B C
duration
��C K
)
��K L
;
��L M
switch
�� 
(
�� 
director
�� 
.
�� 
extrapolationMode
�� .
)
��. /
{
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
Hold
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
duration
��- 5
,
��5 6
Math
��7 ;
.
��; <
Max
��< ?
(
��? @
$num
��@ A
,
��A B
playable
��C K
.
��K L
GetTime
��L S
(
��S T
)
��T U
)
��U V
)
��V W
;
��W X
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
Loop
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
Math
��$ (
.
��( )
Max
��) ,
(
��, -
$num
��- .
,
��. /
playable
��0 8
.
��8 9
GetTime
��9 @
(
��@ A
)
��A B
%
��C D
duration
��E M
)
��M N
;
��N O
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
None
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
playable
��$ ,
.
��, -
GetTime
��- 4
(
��4 5
)
��5 6
;
��6 7
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� ڢ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\AnimationPreviewUtilities.cs
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
&&	$$~ �
x
$$� �
.
$$� �
propertyName
$$� �
==
$$� �
y
$$� �
.
$$� �
propertyName
$$� �
;
$$� �
}
$$� �
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
..� �
.
..� �
Instance
..� �
)
..� �
;
..� �
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
�� 
curve
�� 
=
�� 
new
�� 
AnimationCurve
�� *
(
��* +
	keyFrames
��+ 4
)
��4 5
;
��5 6
bool
�� 

rootMotion
�� 
=
�� 
false
�� #
;
��# $
var
�� 

avatarRoot
�� 
=
�� 
GetAvatarRoot
�� *
(
��* +
animatorRoot
��+ 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
binding
��  
in
��! #
keys
��$ (
)
��( )
{
�� 
if
�� 
(
�� 
IsRootMotion
��  
(
��  !
binding
��! (
)
��( )
)
��) *
{
�� 

rootMotion
�� 
=
��  
true
��! %
;
��% &
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
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
��6 7
binding
��7 >
.
��> ?
type
��? C
)
��C D
&&
��E G
binding
��H O
.
��O P
propertyName
��P \
.
��\ ]
Equals
��] c
(
��c d"
AnimatorBindingCache
��d x
.
��x y
TRPlaceHolder��y �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
binding
��- 4
.
��4 5
path
��5 9
)
��9 :
)
��: ;

rootMotion
�� "
=
��# $
true
��% )
;
��) *
else
�� 
{
�� 
var
�� 
	transform
�� %
=
��& '
animatorRoot
��( 4
.
��4 5
	transform
��5 >
.
��> ?
Find
��? C
(
��C D
binding
��D K
.
��K L
path
��L P
)
��P Q
;
��Q R
if
�� 
(
�� 
	transform
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
var
�� 
pos
��  #
=
��$ %
	transform
��& /
.
��/ 0
localPosition
��0 =
;
��= >
var
�� 
rot
��  #
=
��$ %
	transform
��& /
.
��/ 0
localRotation
��0 =
;
��= >
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosX
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosY
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosZ
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotX
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotY
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotZ
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotW
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
w
��x y
)
��y z
)
��z {
;
��{ |
}
�� 
}
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
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
��6 7
binding
��7 >
.
��> ?
type
��? C
)
��C D
&&
��E G
binding
��H O
.
��O P
propertyName
��P \
==
��] _"
AnimatorBindingCache
��` t
.
��t u
ScalePlaceholder��u �
)��� �
{
�� 
var
�� 
	transform
�� !
=
��" #
animatorRoot
��$ 0
.
��0 1
	transform
��1 :
.
��: ;
Find
��; ?
(
��? @
binding
��@ G
.
��G H
path
��H L
)
��L M
;
��M N
if
�� 
(
�� 
	transform
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
var
�� 
scale
�� !
=
��" #
	transform
��$ -
.
��- .

localScale
��. 8
;
��8 9
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleX
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleY
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleZ
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
}
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
IsAvatarBinding
�� #
(
��# $
binding
��$ +
)
��+ ,
||
��- /
IsEulerHint
��0 ;
(
��; <
binding
��< C
)
��C D
||
��E G
binding
��H O
.
��O P
isPPtrCurve
��P [
)
��[ \
continue
�� 
;
�� 
float
�� 

floatValue
��  
;
��  !
AnimationUtility
��  
.
��  !
GetFloatValue
��! .
(
��. /

avatarRoot
��/ 9
,
��9 :
binding
��; B
,
��B C
out
��D G

floatValue
��H R
)
��R S
;
��S T
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
binding
��" )
.
��) *
path
��* .
,
��. /
binding
��0 7
.
��7 8
type
��8 <
,
��< =
binding
��> E
.
��E F
propertyName
��F R
,
��R S

SetZeroKey
��T ^
(
��^ _
curve
��_ d
,
��d e
	keyFrames
��f o
,
��o p

floatValue
��q {
)
��{ |
)
��| }
;
��} ~
}
�� 
if
�� 
(
�� 

rootMotion
�� 
)
�� 
{
�� 
var
�� 
pos
�� 
=
�� 
Vector3
�� !
.
��! "
zero
��" &
;
��& '
var
�� 
rot
�� 
=
�� 

Quaternion
�� $
.
��$ %
identity
��% -
;
��- .
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosX
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
x
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosY
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
y
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosZ
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
z
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotX
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
x
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotY
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
y
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotZ
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
z
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotW
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
w
��l m
)
��m n
)
��n o
;
��o p
}
�� 
return
�� 
animClip
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsRootMotion
�� '
(
��' ( 
EditorCurveBinding
��( :
binding
��; B
)
��B C
{
�� 	
if
�� 
(
�� 
typeof
�� 
(
�� 
	Transform
��  
)
��  !
.
��! "
IsAssignableFrom
��" 2
(
��2 3
binding
��3 :
.
��: ;
type
��; ?
)
��? @
&&
��A C
string
��D J
.
��J K
IsNullOrEmpty
��K X
(
��X Y
binding
��Y `
.
��` a
path
��a e
)
��e f
)
��f g
{
�� 
return
�� 
FastStartsWith
�� %
(
��% &
binding
��& -
.
��- .
propertyName
��. :
,
��: ;
k_Pos
��< A
)
��A B
||
��D F
FastStartsWith
��G U
(
��U V
binding
��V ]
.
��] ^
propertyName
��^ j
,
��j k
k_Rot
��l q
)
��q r
;
��r s
}
�� 
if
�� 
(
�� 
binding
�� 
.
�� 
type
�� 
==
�� 
typeof
��  &
(
��& '
Animator
��' /
)
��/ 0
)
��0 1
{
�� 
return
�� 
FastStartsWith
�� %
(
��% &
binding
��& -
.
��- .
propertyName
��. :
,
��: ;
	k_MotionT
��< E
)
��E F
||
��G I
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
	k_MotionQ
��9 B
)
��B C
||
��D F
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
k_RootT
��9 @
)
��@ A
||
��B D
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
k_RootQ
��9 @
)
��@ A
;
��A B
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� #
NeedsSkeletonBindings
�� 1
(
��1 2
IEnumerable
��2 =
<
��= > 
EditorCurveBinding
��> P
>
��P Q
bindings
��R Z
)
��Z [
{
�� 	
foreach
�� 
(
�� 
var
�� 
b
�� 
in
�� 
bindings
�� &
)
��& '
{
�� 
if
�� 
(
�� 
IsSkeletalBinding
�� %
(
��% &
b
��& '
)
��' (
)
��( )
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddBindings
�� '
(
��' (
IEnumerable
��( 3
<
��3 4 
EditorCurveBinding
��4 F
>
��F G
bindings
��H P
)
��P Q
{
�� 	
foreach
�� 
(
�� 
var
�� 
b
�� 
in
�� 
bindings
�� &
)
��& '
{
�� 
if
�� 
(
�� 
!
�� 

s_CurveSet
�� 
.
��  
ContainsKey
��  +
(
��+ ,
b
��, -
)
��- .
)
��. /

s_CurveSet
�� 
[
�� 
b
��  
]
��  !
=
��" #
$num
��$ %
;
��% &
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddTRBinding
�� (
(
��( )

GameObject
��) 3
root
��4 8
,
��8 9 
EditorCurveBinding
��: L
binding
��M T
)
��T U
{
�� 	
var
�� 
t
�� 
=
�� 
root
�� 
.
�� 
	transform
�� "
.
��" #
Find
��# '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
;
��5 6
if
�� 
(
�� 
t
�� 
!=
�� 
null
�� 
)
�� 
{
�� #
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K \
)
��\ ]
;
��] ^#
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddScaleBinding
�� +
(
��+ ,

GameObject
��, 6
root
��7 ;
,
��; < 
EditorCurveBinding
��= O
binding
��P W
)
��W X
{
�� 	
var
�� 
t
�� 
=
�� 
root
�� 
.
�� 
	transform
�� "
.
��" #
Find
��# '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
;
��5 6
if
�� 
(
�� 
t
�� 
!=
�� 
null
�� 
)
�� #
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K Y
)
��Y Z
;
��Z [
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEuler
�� #
(
��# $ 
EditorCurveBinding
��$ 6
binding
��7 >
)
��> ?
{
�� 	
return
�� 
FastStartsWith
�� !
(
��! "
binding
��" )
.
��) *
propertyName
��* 6
,
��6 7
k_EulerAnglesRaw
��8 H
)
��H I
&&
��J L
typeof
�� 
(
�� 
	Transform
��  
)
��  !
.
��! "
IsAssignableFrom
��" 2
(
��2 3
binding
��3 :
.
��: ;
type
��; ?
)
��? @
;
��@ A
}
�� 	
private
�� 
static
�� 
bool
�� 
IsAvatarBinding
�� +
(
��+ , 
EditorCurveBinding
��, >
binding
��? F
)
��F G
{
�� 	
return
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
&&
��6 8
typeof
��9 ?
(
��? @
Animator
��@ H
)
��H I
==
��J L
binding
��M T
.
��T U
type
��U Y
;
��Y Z
}
�� 	
private
�� 
static
�� 
bool
�� 
IsSkeletalBinding
�� -
(
��- . 
EditorCurveBinding
��. @
binding
��A H
)
��H I
{
�� 	
return
�� 
typeof
�� 
(
�� 
	Transform
�� #
)
��# $
.
��$ %
IsAssignableFrom
��% 5
(
��5 6
binding
��6 =
.
��= >
type
��> B
)
��B C
||
��D F
typeof
��G M
(
��M N!
SkinnedMeshRenderer
��N a
)
��a b
.
��b c
IsAssignableFrom
��c s
(
��s t
binding
��t {
.
��{ |
type��| �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
AnimationCurve
�� %

SetZeroKey
��& 0
(
��0 1
AnimationCurve
��1 ?
curve
��@ E
,
��E F
Keyframe
��G O
[
��O P
]
��P Q
keys
��R V
,
��V W
float
��X ]
val
��^ a
)
��a b
{
�� 	
keys
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
value
�� 
=
�� 
val
�� 
;
��  
curve
�� 
.
�� 
keys
�� 
=
�� 
keys
�� 
;
�� 
return
�� 
curve
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEulerHint
�� '
(
��' ( 
EditorCurveBinding
��( :
binding
��; B
)
��B C
{
�� 	
return
�� 
typeof
�� 
(
�� 
	Transform
�� #
)
��# $
.
��$ %
IsAssignableFrom
��% 5
(
��5 6
binding
��6 =
.
��= >
type
��> B
)
��B C
&&
��D F
binding
��G N
.
��N O
propertyName
��O [
.
��[ \

StartsWith
��\ f
(
��f g
k_EulerHint
��g r
)
��r s
;
��s t
}
�� 	
private
�� 
static
�� 

GameObject
�� !
GetAvatarRoot
��" /
(
��/ 0

GameObject
��0 :
animatorRoot
��; G
)
��G H
{
�� 	
var
�� 
animator
�� 
=
�� 
animatorRoot
�� '
.
��' (
GetComponent
��( 4
<
��4 5
Animator
��5 =
>
��= >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 
animator
�� 
!=
�� 
null
��  
&&
��! #
animator
��$ ,
.
��, -

avatarRoot
��- 7
!=
��8 :
animatorRoot
��; G
.
��G H
	transform
��H Q
)
��Q R
return
�� 
animator
�� 
.
��  

avatarRoot
��  *
.
��* +

gameObject
��+ 5
;
��5 6
return
�� 
animatorRoot
�� 
;
��  
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\INotificationOptionProvider.cs
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
} �S
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimelineCreateUtilities.cs
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
SupportsChildTracksAttribute	kko �
;
kk� �
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
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �)
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\HashUtility.cs
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
}33 �9
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeClip.cs
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
}nn �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\ICurvesOwner.cs
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
} �$
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\TrackUpgrade.cs
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
}UU �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationTrack.cs
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
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. J
)
��J K
]
��K L
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� &,
m_InfiniteClipPreExtrapolation
��' E
=
��F G
TimelineClip
��H T
.
��T U
ClipExtrapolation
��U f
.
��f g
None
��g k
;
��k l
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. K
)
��K L
]
��L M
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� &-
m_InfiniteClipPostExtrapolation
��' F
=
��G H
TimelineClip
��I U
.
��U V
ClipExtrapolation
��V g
.
��g h
None
��h l
;
��l m
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. H
)
��H I
]
��I J
Vector3
�� *
m_InfiniteClipOffsetPosition
�� ,
=
��- .
Vector3
��/ 6
.
��6 7
zero
��7 ;
;
��; <
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. K
)
��K L
]
��L M
Vector3
�� -
m_InfiniteClipOffsetEulerAngles
�� /
=
��0 1
Vector3
��2 9
.
��9 :
zero
��: >
;
��> ?
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. D
)
��D E
]
��E F
double
�� &
m_InfiniteClipTimeOffset
�� '
;
��' (
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. F
)
��F G
]
��G H
bool
�� (
m_InfiniteClipRemoveOffset
�� '
;
��' (
[
�� 	
SerializeField
��	 
]
�� 
bool
�� '
m_InfiniteClipApplyFootIK
�� &
=
��' (
true
��) -
;
��- .
[
�� 	
SerializeField
��	 
,
�� 
HideInInspector
�� (
]
��( )$
AnimationPlayableAsset
�� 
.
�� 
LoopMode
�� '
mInfiniteClipLoop
��( 9
=
��: ;$
AnimationPlayableAsset
��< R
.
��R S
LoopMode
��S [
.
��[ \
UseSourceAsset
��\ j
;
��j k
[
�� 	
SerializeField
��	 
]
�� 
MatchTargetFields
�� !
m_MatchTargetFields
�� -
=
��. /'
MatchTargetFieldConstants
��0 I
.
��I J
All
��J M
;
��M N
[
�� 	
SerializeField
��	 
]
�� 
Vector3
�� 

m_Position
�� 
=
�� 
Vector3
�� $
.
��$ %
zero
��% )
;
��) *
[
�� 	
SerializeField
��	 
]
�� 
Vector3
�� 
m_EulerAngles
�� 
=
�� 
Vector3
��  '
.
��' (
zero
��( ,
;
��, -
[
�� 	
SerializeField
��	 
]
�� 

AvatarMask
�� #
m_AvatarMask
��$ 0
;
��0 1
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_ApplyAvatarMask
��$ 5
=
��7 8
true
��9 =
;
��= >
[
�� 	
SerializeField
��	 
]
�� 
TrackOffset
�� $
m_TrackOffset
��% 2
=
��3 4
TrackOffset
��5 @
.
��@ A#
ApplyTransformOffsets
��A V
;
��V W
[
�� 	
SerializeField
��	 
,
�� 
HideInInspector
�� (
]
��( )
AnimationClip
��* 7
m_InfiniteClip
��8 F
;
��F G
private
�� 
AnimationClip
�� 
m_DefaultPoseClip
�� /
;
��/ 0
private
�� 
AnimationClip
�� $
m_CachedPropertiesClip
�� 4
;
��4 5
private
�� 
int
�� 
m_CachedHash
�� *
;
��* +
private
��  
EditorCurveBinding
�� "
[
��" #
]
��# $
m_CachedBindings
��% 5
;
��5 6%
AnimationOffsetPlayable
�� 
m_ClipOffset
��  ,
;
��, -
private
�� 
Vector3
�� #
m_SceneOffsetPosition
�� -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
private
�� 
Vector3
�� #
m_SceneOffsetRotation
�� -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
private
�� 
bool
�� $
m_HasPreviewComponents
�� +
=
��, -
false
��. 3
;
��3 4
public
�� 
Vector3
�� 
position
�� 
{
�� 	
get
�� 
{
�� 
return
�� 

m_Position
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Position
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 	
public
�� 

Quaternion
�� 
rotation
�� "
{
�� 	
get
�� 
{
�� 
return
�� 

Quaternion
�� #
.
��# $
Euler
��$ )
(
��) *
m_EulerAngles
��* 7
)
��7 8
;
��8 9
}
��: ;
set
�� 
{
�� 
m_EulerAngles
�� 
=
��  !
value
��" '
.
��' (
eulerAngles
��( 3
;
��3 4
}
��5 6
}
�� 	
public
�� 
Vector3
�� 
eulerAngles
�� "
{
�� 	
get
�� 
{
�� 
return
�� 
m_EulerAngles
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_EulerAngles
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� F
,
��F G
true
��H L
)
��L M
]
��M N
public
�� 
bool
�� 
applyOffsets
��  
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
��  !
set
�� 
{
�� 
}
�� 
}
�� 	
public
�� 
TrackOffset
�� 
trackOffset
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
m_TrackOffset
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_TrackOffset
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
MatchTargetFields
��  
matchTargetFields
��! 2
{
�� 	
get
�� 
{
�� 
return
�� !
m_MatchTargetFields
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_MatchTargetFields
�� %
=
��& '
value
��( -
&
��. /'
MatchTargetFieldConstants
��0 I
.
��I J
All
��J M
;
��M N
}
��O P
}
�� 	
public
�� 
AnimationClip
�� 
infiniteClip
�� )
{
�� 	
get
�� 
{
�� 
return
�� 
m_InfiniteClip
�� '
;
��' (
}
��) *
internal
�� 
set
�� 
{
�� 
m_InfiniteClip
�� )
=
��* +
value
��, 1
;
��1 2
}
��3 4
}
�� 	
internal
�� 
bool
�� &
infiniteClipRemoveOffset
�� .
{
�� 	
get
�� 
{
�� 
return
�� (
m_InfiniteClipRemoveOffset
�� 3
;
��3 4
}
��5 6
set
�� 
{
�� (
m_InfiniteClipRemoveOffset
�� ,
=
��- .
value
��/ 4
;
��4 5
}
��6 7
}
�� 	
public
�� 

AvatarMask
�� 

avatarMask
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
m_AvatarMask
�� %
;
��% &
}
��' (
set
�� 
{
�� 
m_AvatarMask
�� 
=
��  
value
��! &
;
��& '
}
��( )
}
�� 	
public
�� 
bool
�� 
applyAvatarMask
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_ApplyAvatarMask
�� *
;
��* +
}
��, -
set
�� 
{
�� 
m_ApplyAvatarMask
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
internal
�� 
override
�� 
bool
�� 
CanCompileClips
�� .
(
��. /
)
��/ 0
{
�� 	
return
�� 
!
�� 
muted
�� 
&&
�� 
(
�� 
m_Clips
�� %
.
��% &
Count
��& +
>
��, -
$num
��. /
||
��0 2
(
��3 4
m_InfiniteClip
��4 B
!=
��C E
null
��F J
&&
��K M
!
��N O
m_InfiniteClip
��O ]
.
��] ^
empty
��^ c
)
��c d
)
��d e
;
��e f
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
yield
�� 
return
�� &
AnimationPlayableBinding
�� 7
.
��7 8
Create
��8 >
(
��> ?
name
��? C
,
��C D
this
��E I
)
��I J
;
��J K
}
��L M
}
�� 	
public
�� 
bool
�� 

inClipMode
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clips
�� 
!=
�� !
null
��" &
&&
��' )
clips
��* /
.
��/ 0
Length
��0 6
!=
��7 9
$num
��: ;
;
��; <
}
��= >
}
�� 	
public
�� 
Vector3
�� (
infiniteClipOffsetPosition
�� 1
{
�� 	
get
�� 
{
�� 
return
�� *
m_InfiniteClipOffsetPosition
�� 5
;
��5 6
}
��7 8
set
�� 
{
�� *
m_InfiniteClipOffsetPosition
�� .
=
��/ 0
value
��1 6
;
��6 7
}
��8 9
}
�� 	
public
�� 

Quaternion
�� (
infiniteClipOffsetRotation
�� 4
{
�� 	
get
�� 
{
�� 
return
�� 

Quaternion
�� #
.
��# $
Euler
��$ )
(
��) *-
m_InfiniteClipOffsetEulerAngles
��* I
)
��I J
;
��J K
}
��L M
set
�� 
{
�� -
m_InfiniteClipOffsetEulerAngles
�� 1
=
��2 3
value
��4 9
.
��9 :
eulerAngles
��: E
;
��E F
}
��G H
}
�� 	
public
�� 
Vector3
�� +
infiniteClipOffsetEulerAngles
�� 4
{
�� 	
get
�� 
{
�� 
return
�� -
m_InfiniteClipOffsetEulerAngles
�� 8
;
��8 9
}
��: ;
set
�� 
{
�� -
m_InfiniteClipOffsetEulerAngles
�� 1
=
��2 3
value
��4 9
;
��9 :
}
��; <
}
�� 	
internal
�� 
bool
�� %
infiniteClipApplyFootIK
�� -
{
�� 	
get
�� 
{
�� 
return
�� '
m_InfiniteClipApplyFootIK
�� 2
;
��2 3
}
��5 6
set
�� 
{
�� '
m_InfiniteClipApplyFootIK
�� +
=
��, -
value
��. 3
;
��3 4
}
��5 6
}
�� 	
internal
�� 
double
�� $
infiniteClipTimeOffset
�� .
{
�� 	
get
�� 
{
�� 
return
�� &
m_InfiniteClipTimeOffset
�� 1
;
��1 2
}
��3 4
set
�� 
{
�� &
m_InfiniteClipTimeOffset
�� *
=
��+ ,
value
��- 2
;
��2 3
}
��4 5
}
�� 	
public
�� 
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� -*
infiniteClipPreExtrapolation
��. J
{
�� 	
get
�� 
{
�� 
return
�� ,
m_InfiniteClipPreExtrapolation
�� 7
;
��7 8
}
��9 :
set
�� 
{
�� ,
m_InfiniteClipPreExtrapolation
�� 0
=
��1 2
value
��3 8
;
��8 9
}
��: ;
}
�� 	
public
�� 
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� -+
infiniteClipPostExtrapolation
��. K
{
�� 	
get
�� 
{
�� 
return
�� -
m_InfiniteClipPostExtrapolation
�� 8
;
��8 9
}
��: ;
set
�� 
{
�� -
m_InfiniteClipPostExtrapolation
�� 1
=
��2 3
value
��4 9
;
��9 :
}
��; <
}
�� 	
internal
�� $
AnimationPlayableAsset
�� '
.
��' (
LoopMode
��( 0
infiniteClipLoop
��1 A
{
�� 	
get
�� 
{
�� 
return
�� 
mInfiniteClipLoop
�� *
;
��* +
}
��, -
set
�� 
{
�� 
mInfiniteClipLoop
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
[
�� 	
ContextMenu
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
void
�� 
ResetOffsets
�� 
(
�� 
)
�� 
{
�� 	

m_Position
�� 
=
�� 
Vector3
��  
.
��  !
zero
��! %
;
��% &
m_EulerAngles
�� 
=
�� 
Vector3
�� #
.
��# $
zero
��$ (
;
��( )
UpdateClipOffsets
�� 
(
�� 
)
�� 
;
��  
}
�� 	
public
�� 
TimelineClip
�� 

CreateClip
�� &
(
��& '
AnimationClip
��' 4
clip
��5 9
)
��9 :
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
var
�� 
newClip
�� 
=
�� 

CreateClip
�� $
<
��$ %$
AnimationPlayableAsset
��% ;
>
��; <
(
��< =
)
��= >
;
��> ?!
AssignAnimationClip
�� 
(
��  
newClip
��  '
,
��' (
clip
��) -
)
��- .
;
��. /
return
�� 
newClip
�� 
;
�� 
}
�� 	
public
�� 
void
��  
CreateInfiniteClip
�� &
(
��& '
string
��' -
infiniteClipName
��. >
)
��> ?
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str��! �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_InfiniteClip
�� 
!=
�� !
null
��" &
)
��& '
return
�� 
;
�� 
m_InfiniteClip
�� 
=
�� %
TimelineCreateUtilities
�� 4
.
��4 5)
CreateAnimationClipForTrack
��5 P
(
��P Q
string
��Q W
.
��W X
IsNullOrEmpty
��X e
(
��e f
infiniteClipName
��f v
)
��v w
?
��x y(
k_DefaultInfiniteClipName��z �
:��� � 
infiniteClipName��� �
,��� �
this��� �
,��� �
false��� �
)��� �
;��� �
}
�� 	
public
�� 
TimelineClip
�� "
CreateRecordableClip
�� 0
(
��0 1
string
��1 7
animClipName
��8 D
)
��D E
{
�� 	
var
�� 
clip
�� 
=
�� %
TimelineCreateUtilities
�� .
.
��. /)
CreateAnimationClipForTrack
��/ J
(
��J K
string
��K Q
.
��Q R
IsNullOrEmpty
��R _
(
��_ `
animClipName
��` l
)
��l m
?
��n o*
k_DefaultRecordableClipName��p �
:��� �
animClipName��� �
,��� �
this��� �
,��� �
false��� �
)��� �
;��� �
var
�� 
timelineClip
�� 
=
�� 

CreateClip
�� )
(
��) *
clip
��* .
)
��. /
;
��/ 0
timelineClip
�� 
.
�� 
displayName
�� $
=
��% &
animClipName
��' 3
;
��3 4
timelineClip
�� 
.
�� 

recordable
�� #
=
��$ %
true
��& *
;
��* +
timelineClip
�� 
.
�� 
start
�� 
=
��  
$num
��! "
;
��" #
timelineClip
�� 
.
�� 
duration
�� !
=
��" #
$num
��$ %
;
��% &
var
�� 
apa
�� 
=
�� 
timelineClip
�� "
.
��" #
asset
��# (
as
��) +$
AnimationPlayableAsset
��, B
;
��B C
if
�� 
(
�� 
apa
�� 
!=
�� 
null
�� 
)
�� 
apa
�� 
.
�� 
removeStartOffset
�� %
=
��& '
false
��( -
;
��- .
return
�� 
timelineClip
�� 
;
��  
}
�� 	
internal
�� 
Vector3
�� !
sceneOffsetPosition
�� ,
{
�� 	
get
�� 
{
�� 
return
�� #
m_SceneOffsetPosition
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_SceneOffsetPosition
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
internal
�� 
Vector3
�� !
sceneOffsetRotation
�� ,
{
�� 	
get
�� 
{
�� 
return
�� #
m_SceneOffsetRotation
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_SceneOffsetRotation
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
internal
�� 
bool
�� "
hasPreviewComponents
�� *
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_HasPreviewComponents
�� *
)
��* +
return
�� 
true
�� 
;
��  
var
�� 
parentTrack
�� 
=
��  !
parent
��" (
as
��) +
AnimationTrack
��, :
;
��: ;
if
�� 
(
�� 
parentTrack
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
return
�� 
parentTrack
�� &
.
��& '"
hasPreviewComponents
��' ;
;
��; <
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
OnCreateClip
��  ,
(
��, -
TimelineClip
��- 9
clip
��: >
)
��> ?
{
�� 	
var
�� 
extrapolation
�� 
=
�� 
TimelineClip
��  ,
.
��, -
ClipExtrapolation
��- >
.
��> ?
None
��? C
;
��C D
if
�� 
(
�� 
!
�� 

isSubTrack
�� 
)
�� 
extrapolation
�� 
=
�� 
TimelineClip
��  ,
.
��, -
ClipExtrapolation
��- >
.
��> ?
Hold
��? C
;
��C D
clip
�� 
.
�� "
preExtrapolationMode
�� %
=
��& '
extrapolation
��( 5
;
��5 6
clip
�� 
.
�� #
postExtrapolationMode
�� &
=
��' (
extrapolation
��) 6
;
��6 7
}
�� 	
	protected
�� 
internal
�� 
override
�� #
int
��$ ' 
CalculateItemsHash
��( :
(
��: ;
)
��; <
{
�� 	
return
�� "
GetAnimationClipHash
�� '
(
��' (
m_InfiniteClip
��( 6
)
��6 7
.
��7 8
CombineHash
��8 C
(
��C D
base
��D H
.
��H I 
CalculateItemsHash
��I [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
}
�� 	
internal
�� 
void
�� 
UpdateClipOffsets
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
m_ClipOffset
�� 
.
�� 
IsValid
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
m_ClipOffset
�� 
.
�� 
SetPosition
�� (
(
��( )
position
��) 1
)
��1 2
;
��2 3
m_ClipOffset
�� 
.
�� 
SetRotation
�� (
(
��( )
rotation
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
Playable
�� "
CompileTrackPlayable
�� %
(
��% &
PlayableGraph
��& 3
graph
��4 9
,
��9 :
AnimationTrack
��; I
track
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
IntervalTree
��` l
<
��l m
RuntimeElement
��m {
>
��{ |
tree��} �
,��� �!
AppliedOffsetMode��� �
mode��� �
)��� �
{
�� 	
var
�� 
mixer
�� 
=
�� $
AnimationMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <
track
��= B
.
��B C
clips
��C H
.
��H I
Length
��I O
)
��O P
;
��P Q
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
track
��  %
.
��% &
clips
��& +
.
��+ ,
Length
��, 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
var
�� 
c
�� 
=
�� 
track
�� 
.
�� 
clips
�� #
[
��# $
i
��$ %
]
��% &
;
��& '
var
�� 
asset
�� 
=
�� 
c
�� 
.
�� 
asset
�� #
as
��$ &
PlayableAsset
��' 4
;
��4 5
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� !
)
��! "
continue
�� 
;
�� 
var
�� 
animationAsset
�� "
=
��# $
asset
��% *
as
��+ -$
AnimationPlayableAsset
��. D
;
��D E
if
�� 
(
�� 
animationAsset
�� "
!=
��# %
null
��& *
)
��* +
animationAsset
�� "
.
��" #
appliedOffsetMode
��# 4
=
��5 6
mode
��7 ;
;
��; <
var
�� 
source
�� 
=
�� 
asset
�� "
.
��" #
CreatePlayable
��# 1
(
��1 2
graph
��2 7
,
��7 8
go
��9 ;
)
��; <
;
��< =
if
�� 
(
�� 
source
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
var
�� 
clip
�� 
=
�� 
new
�� "
RuntimeClip
��# .
(
��. /
c
��/ 0
,
��0 1
source
��2 8
,
��8 9
mixer
��: ?
)
��? @
;
��@ A
tree
�� 
.
�� 
Add
�� 
(
�� 
clip
�� !
)
��! "
;
��" #
graph
�� 
.
�� 
Connect
�� !
(
��! "
source
��" (
,
��( )
$num
��* +
,
��+ ,
mixer
��- 2
,
��2 3
i
��4 5
)
��5 6
;
��6 7
mixer
�� 
.
�� 
SetInputWeight
�� (
(
��( )
i
��) *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� #
AnimatesRootTransform
�� ,
(
��, -
)
��- .
)
��. /
return
�� 
mixer
�� 
;
�� 
return
�� 
ApplyTrackOffset
�� #
(
��# $
graph
��$ )
,
��) *
mixer
��+ 0
,
��0 1
go
��2 4
,
��4 5
mode
��6 :
)
��: ;
;
��; <
}
�� 	
Playable
�� 

ILayerable
�� 
.
�� 
CreateLayerMixer
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A

GameObject
��B L
go
��M O
,
��O P
int
��Q T

inputCount
��U _
)
��_ `
{
�� 	
return
�� 
Playable
�� 
.
�� 
Null
��  
;
��  !
}
�� 	
internal
�� 
override
�� 
Playable
�� "'
OnCreateClipPlayableGraph
��# <
(
��< =
PlayableGraph
��= J
graph
��K P
,
��P Q

GameObject
��R \
go
��] _
,
��_ `
IntervalTree
��a m
<
��m n
RuntimeElement
��n |
>
��| }
tree��~ �
)��� �
{
�� 	
if
�� 
(
�� 

isSubTrack
�� 
)
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 ~
)
��~ 
;�� �
List
�� 
<
�� 
AnimationTrack
�� 
>
��  
flattenTracks
��! .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
AnimationTrack
��: H
>
��H I
(
��I J
)
��J K
;
��K L
if
�� 
(
�� 
CanCompileClips
�� 
(
��  
)
��  !
)
��! "
flattenTracks
�� 
.
�� 
Add
�� !
(
��! "
this
��" &
)
��& '
;
��' (
var
�� 
genericRoot
�� 
=
��  
GetGenericRootNode
�� 0
(
��0 1
go
��1 3
)
��3 4
;
��4 5
var
�� )
animatesRootTransformNoMask
�� +
=
��, -#
AnimatesRootTransform
��. C
(
��C D
)
��D E
;
��E F
var
�� #
animatesRootTransform
�� %
=
��& ')
animatesRootTransformNoMask
��( C
&&
��D F
!
��G H+
IsRootTransformDisabledByMask
��H e
(
��e f
go
��f h
,
��h i
genericRoot
��j u
)
��u v
;
��v w
foreach
�� 
(
�� 
var
�� 
subTrack
�� !
in
��" $
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
var
�� 
child
�� 
=
�� 
subTrack
�� $
as
��% '
AnimationTrack
��( 6
;
��6 7
if
�� 
(
�� 
child
�� 
!=
�� 
null
�� !
&&
��" $
child
��% *
.
��* +
CanCompileClips
��+ :
(
��: ;
)
��; <
)
��< =
{
�� 
var
�� 
childAnimatesRoot
�� )
=
��* +
child
��, 1
.
��1 2#
AnimatesRootTransform
��2 G
(
��G H
)
��H I
;
��I J)
animatesRootTransformNoMask
�� /
|=
��0 2
child
��3 8
.
��8 9#
AnimatesRootTransform
��9 N
(
��N O
)
��O P
;
��P Q#
animatesRootTransform
�� )
|=
��* ,
(
��- .
childAnimatesRoot
��. ?
&&
��@ B
!
��C D
child
��D I
.
��I J+
IsRootTransformDisabledByMask
��J g
(
��g h
go
��h j
,
��j k
genericRoot
��l w
)
��w x
)
��x y
;
��y z
flattenTracks
�� !
.
��! "
Add
��" %
(
��% &
child
��& +
)
��+ ,
;
��, -
}
�� 
}
�� 
AppliedOffsetMode
�� 
mode
�� "
=
��# $
GetOffsetMode
��% 2
(
��2 3
go
��3 5
,
��5 6#
animatesRootTransform
��7 L
)
��L M
;
��M N
int
�� 
defaultBlendCount
�� !
=
��" #"
GetDefaultBlendCount
��$ 8
(
��8 9
)
��9 :
;
��: ;
var
�� 

layerMixer
�� 
=
�� 
CreateGroupMixer
�� -
(
��- .
graph
��. 3
,
��3 4
go
��5 7
,
��7 8
flattenTracks
��9 F
.
��F G
Count
��G L
+
��M N
defaultBlendCount
��O `
)
��` a
;
��a b
for
�� 
(
�� 
int
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
flattenTracks
��  -
.
��- .
Count
��. 3
;
��3 4
c
��5 6
++
��6 8
)
��8 9
{
�� 
int
�� 

blendIndex
�� 
=
��  
c
��! "
+
��# $
defaultBlendCount
��% 6
;
��6 7
var
�� 
	childMode
�� 
=
�� 
mode
��  $
;
��$ %
if
�� 
(
�� 
mode
�� 
!=
�� 
AppliedOffsetMode
�� -
.
��- .
NoRootTransform
��. =
&&
��> @
flattenTracks
��A N
[
��N O
c
��O P
]
��P Q
.
��Q R+
IsRootTransformDisabledByMask
��R o
(
��o p
go
��p r
,
��r s
genericRoot
��t 
)�� �
)��� �
	childMode
�� 
=
�� 
AppliedOffsetMode
��  1
.
��1 2
NoRootTransform
��2 A
;
��A B
var
�� #
compiledTrackPlayable
�� )
=
��* +
flattenTracks
��, 9
[
��9 :
c
��: ;
]
��; <
.
��< =

inClipMode
��= G
?
��H I"
CompileTrackPlayable
�� (
(
��( )
graph
��) .
,
��. /
flattenTracks
��0 =
[
��= >
c
��> ?
]
��? @
,
��@ A
go
��B D
,
��D E
tree
��F J
,
��J K
	childMode
��L U
)
��U V
:
��W X
flattenTracks
�� !
[
��! "
c
��" #
]
��# $
.
��$ %)
CreateInfiniteTrackPlayable
��% @
(
��@ A
graph
��A F
,
��F G
go
��H J
,
��J K
tree
��L P
,
��P Q
	childMode
��R [
)
��[ \
;
��\ ]
graph
�� 
.
�� 
Connect
�� 
(
�� #
compiledTrackPlayable
�� 3
,
��3 4
$num
��5 6
,
��6 7

layerMixer
��8 B
,
��B C

blendIndex
��D N
)
��N O
;
��O P

layerMixer
�� 
.
�� 
SetInputWeight
�� )
(
��) *

blendIndex
��* 4
,
��4 5
flattenTracks
��6 C
[
��C D
c
��D E
]
��E F
.
��F G

inClipMode
��G Q
?
��R S
$num
��T U
:
��V W
$num
��X Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
flattenTracks
�� !
[
��! "
c
��" #
]
��# $
.
��$ %
applyAvatarMask
��% 4
&&
��5 7
flattenTracks
��8 E
[
��E F
c
��F G
]
��G H
.
��H I

avatarMask
��I S
!=
��T V
null
��W [
)
��[ \
{
�� 

layerMixer
�� 
.
�� (
SetLayerMaskFromAvatarMask
�� 9
(
��9 :
(
��: ;
uint
��; ?
)
��? @

blendIndex
��@ J
,
��J K
flattenTracks
��L Y
[
��Y Z
c
��Z [
]
��[ \
.
��\ ]

avatarMask
��] g
)
��g h
;
��h i
}
�� 
}
�� 
var
�� %
requiresMotionXPlayable
�� '
=
��( )%
RequiresMotionXPlayable
��* A
(
��A B
mode
��B F
,
��F G
go
��H J
)
��J K
;
��K L%
requiresMotionXPlayable
�� #
|=
��$ &
(
��' (
defaultBlendCount
��( 9
>
��: ;
$num
��< =
&&
��> @%
RequiresMotionXPlayable
��A X
(
��X Y
GetOffsetMode
��Y f
(
��f g
go
��g i
,
��i j*
animatesRootTransformNoMask��k �
)��� �
,��� �
go��� �
)��� �
)��� �
;��� � 
AttachDefaultBlend
�� 
(
�� 
graph
�� $
,
��$ %

layerMixer
��& 0
,
��0 1%
requiresMotionXPlayable
��2 I
)
��I J
;
��J K
Playable
�� 
mixer
�� 
=
�� 

layerMixer
�� '
;
��' (
if
�� 
(
�� %
requiresMotionXPlayable
�� '
)
��' (
{
�� 
var
�� 
motionXToDelta
�� "
=
��# $-
AnimationMotionXToDeltaPlayable
��% D
.
��D E
Create
��E K
(
��K L
graph
��L Q
)
��Q R
;
��R S
graph
�� 
.
�� 
Connect
�� 
(
�� 
mixer
�� #
,
��# $
$num
��% &
,
��& '
motionXToDelta
��( 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
motionXToDelta
�� 
.
�� 
SetInputWeight
�� -
(
��- .
$num
��. /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
motionXToDelta
�� 
.
�� 
SetAbsoluteMotion
�� 0
(
��0 1 
UsesAbsoluteMotion
��1 C
(
��C D
mode
��D H
)
��H I
)
��I J
;
��J K
mixer
�� 
=
�� 
(
�� 
Playable
�� !
)
��! "
motionXToDelta
��" 0
;
��0 1
}
�� 
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
{
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� )
(
��) *
go
��* ,
!=
��- /
null
��0 4
?
��5 6
go
��7 9
.
��9 :
GetComponent
��: F
<
��F G
PlayableDirector
��G W
>
��W X
(
��X Y
)
��Y Z
:
��[ \
null
��] a
)
��a b
;
��b c
if
�� 
(
�� 
animator
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 

GameObject
�� 
targetGO
�� '
=
��( )
animator
��* 2
.
��2 3

gameObject
��3 =
;
��= >%
IAnimationWindowPreview
�� +
[
��+ ,
]
��, -
previewComponents
��. ?
=
��@ A
targetGO
��B J
.
��J K
GetComponents
��K X
<
��X Y%
IAnimationWindowPreview
��Y p
>
��p q
(
��q r
)
��r s
;
��s t$
m_HasPreviewComponents
�� *
=
��+ ,
previewComponents
��- >
.
��> ?
Length
��? E
>
��F G
$num
��H I
;
��I J
if
�� 
(
�� $
m_HasPreviewComponents
�� .
)
��. /
{
�� 
foreach
�� 
(
��  !
var
��! $
	component
��% .
in
��/ 1
previewComponents
��2 C
)
��C D
{
�� 
mixer
�� !
=
��" #
	component
��$ -
.
��- .
BuildPreviewGraph
��. ?
(
��? @
graph
��@ E
,
��E F
mixer
��G L
)
��L M
;
��M N
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
mixer
�� 
;
�� 
}
�� 	
private
�� 
int
�� "
GetDefaultBlendCount
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
)
��% &
return
�� 
$num
�� 
;
�� 
return
�� 
(
�� 
(
�� $
m_CachedPropertiesClip
�� +
!=
��, .
null
��/ 3
)
��3 4
?
��5 6
$num
��7 8
:
��9 :
$num
��; <
)
��< =
+
��> ?
(
��@ A
(
��A B
m_DefaultPoseClip
��B S
!=
��T V
null
��W [
)
��[ \
?
��] ^
$num
��_ `
:
��a b
$num
��c d
)
��d e
;
��e f
}
�� 	
private
�� 
void
��  
AttachDefaultBlend
�� '
(
��' (
PlayableGraph
��( 5
graph
��6 ;
,
��; <)
AnimationLayerMixerPlayable
��= X
mixer
��Y ^
,
��^ _
bool
��` d
requireOffset
��e r
)
��r s
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
)
��% &
return
�� 
;
�� 
int
�� 

mixerInput
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� $
m_CachedPropertiesClip
�� &
)
��& '
{
�� 
var
�� "
cachedPropertiesClip
�� (
=
��) *#
AnimationClipPlayable
��+ @
.
��@ A
Create
��A G
(
��G H
graph
��H M
,
��M N$
m_CachedPropertiesClip
��O e
)
��e f
;
��f g"
cachedPropertiesClip
�� $
.
��$ %
SetApplyFootIK
��% 3
(
��3 4
false
��4 9
)
��9 :
;
��: ;
var
�� 
defaults
�� 
=
�� 
(
��  
Playable
��  (
)
��( )"
cachedPropertiesClip
��) =
;
��= >
if
�� 
(
�� 
requireOffset
�� !
)
��! "
defaults
�� 
=
�� "
AttachOffsetPlayable
�� 3
(
��3 4
graph
��4 9
,
��9 :
defaults
��; C
,
��C D#
m_SceneOffsetPosition
��E Z
,
��Z [

Quaternion
��\ f
.
��f g
Euler
��g l
(
��l m$
m_SceneOffsetRotation��m �
)��� �
)��� �
;��� �
graph
�� 
.
�� 
Connect
�� 
(
�� 
defaults
�� &
,
��& '
$num
��( )
,
��) *
mixer
��+ 0
,
��0 1

mixerInput
��2 <
)
��< =
;
��= >
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %

mixerInput
��% /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7

mixerInput
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_DefaultPoseClip
�� !
)
��! "
{
�� 
var
�� 
defaultPose
�� 
=
��  !#
AnimationClipPlayable
��" 7
.
��7 8
Create
��8 >
(
��> ?
graph
��? D
,
��D E
m_DefaultPoseClip
��F W
)
��W X
;
��X Y
defaultPose
�� 
.
�� 
SetApplyFootIK
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
var
�� 
blendDefault
��  
=
��! "
(
��# $
Playable
��$ ,
)
��, -
defaultPose
��- 8
;
��8 9
if
�� 
(
�� 
requireOffset
�� !
)
��! "
blendDefault
��  
=
��! ""
AttachOffsetPlayable
��# 7
(
��7 8
graph
��8 =
,
��= >
blendDefault
��? K
,
��K L#
m_SceneOffsetPosition
��M b
,
��b c

Quaternion
��d n
.
��n o
Euler
��o t
(
��t u$
m_SceneOffsetRotation��u �
)��� �
)��� �
;��� �
graph
�� 
.
�� 
Connect
�� 
(
�� 
blendDefault
�� *
,
��* +
$num
��, -
,
��- .
mixer
��/ 4
,
��4 5

mixerInput
��6 @
)
��@ A
;
��A B
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %

mixerInput
��% /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
Playable
�� "
AttachOffsetPlayable
�� -
(
��- .
PlayableGraph
��. ;
graph
��< A
,
��A B
Playable
��C K
playable
��L T
,
��T U
Vector3
��V ]
pos
��^ a
,
��a b

Quaternion
��c m
rot
��n q
)
��q r
{
�� 	
var
�� 
offsetPlayable
�� 
=
��  %
AnimationOffsetPlayable
��! 8
.
��8 9
Create
��9 ?
(
��? @
graph
��@ E
,
��E F
pos
��G J
,
��J K
rot
��L O
,
��O P
$num
��Q R
)
��R S
;
��S T
offsetPlayable
�� 
.
�� 
SetInputWeight
�� )
(
��) *
$num
��* +
,
��+ ,
$num
��- 1
)
��1 2
;
��2 3
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� "
,
��" #
$num
��$ %
,
��% &
offsetPlayable
��' 5
,
��5 6
$num
��7 8
)
��8 9
;
��9 :
return
�� 
offsetPlayable
�� !
;
��! "
}
�� 	
private
�� 
static
�� 
string
�� '
k_DefaultHumanoidClipPath
�� 7
=
��8 9
$str��: �
;��� �
private
�� 
static
�� 
AnimationClip
�� $#
s_DefaultHumanoidClip
��% :
=
��; <
null
��= A
;
��A B
AnimationClip
�� $
GetDefaultHumanoidClip
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� #
s_DefaultHumanoidClip
�� %
==
��& (
null
��) -
)
��- .
{
�� #
s_DefaultHumanoidClip
�� %
=
��& '
EditorGUIUtility
��( 8
.
��8 9
LoadRequired
��9 E
(
��E F'
k_DefaultHumanoidClipPath
��F _
)
��_ `
as
��a c
AnimationClip
��d q
;
��q r
if
�� 
(
�� #
s_DefaultHumanoidClip
�� )
==
��* ,
null
��- 1
)
��1 2
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# `
)
��` a
;
��a b
}
�� 
return
�� #
s_DefaultHumanoidClip
�� (
;
��( )
}
�� 	
bool
�� %
RequiresMotionXPlayable
�� $
(
��$ %
AppliedOffsetMode
��% 6
mode
��7 ;
,
��; <

GameObject
��= G

gameObject
��H R
)
��R S
{
�� 	
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
)
��9 :
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
)
��; <
{
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� )
(
��) *

gameObject
��* 4
!=
��5 7
null
��8 <
?
��= >

gameObject
��? I
.
��I J
GetComponent
��J V
<
��V W
PlayableDirector
��W g
>
��g h
(
��h i
)
��i j
:
��k l
null
��m q
)
��q r
;
��r s
return
�� 
animator
�� 
!=
��  "
null
��# '
&&
��( *
animator
��+ 3
.
��3 4
hasRootMotion
��4 A
;
��A B
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
static
�� 
bool
��  
UsesAbsoluteMotion
�� &
(
��& '
AppliedOffsetMode
��' 8
mode
��9 =
)
��= >
{
�� 	
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
return
�� 
true
�� 
;
�� 
return
�� 
mode
�� 
!=
�� 
AppliedOffsetMode
�� ,
.
��, -
SceneOffset
��- 8
&&
��9 ;
mode
�� 
!=
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
;
��; <
}
�� 	
bool
�� 
HasController
�� 
(
�� 

GameObject
�� %

gameObject
��& 0
)
��0 1
{
�� 	
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
return
�� 
animator
�� 
!=
�� 
null
�� #
&&
��$ &
animator
��' /
.
��/ 0'
runtimeAnimatorController
��0 I
!=
��J L
null
��M Q
;
��Q R
}
�� 	
internal
�� 
Animator
�� 

GetBinding
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
)
��> ?
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
UnityEngine
�� 
.
�� 
Object
�� 
key
�� "
=
��# $
this
��% )
;
��) *
if
�� 
(
�� 

isSubTrack
�� 
)
�� 
key
�� 
=
�� 
parent
�� 
;
�� 
UnityEngine
�� 
.
�� 
Object
�� 
binding
�� &
=
��' (
null
��) -
;
��- .
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  
)
��  !
binding
�� 
=
�� 
director
�� "
.
��" #
GetGenericBinding
��# 4
(
��4 5
key
��5 8
)
��8 9
;
��9 :
Animator
�� 
animator
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 
binding
�� 
!=
�� 
null
�� 
)
��  
{
�� 
animator
�� 
=
�� 
binding
�� "
as
��# %
Animator
��& .
;
��. /
var
�� 

gameObject
�� 
=
��  
binding
��! (
as
��) +

GameObject
��, 6
;
��6 7
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  $
&&
��% '

gameObject
��( 2
!=
��3 5
null
��6 :
)
��: ;
animator
�� 
=
�� 

gameObject
�� )
.
��) *
GetComponent
��* 6
<
��6 7
Animator
��7 ?
>
��? @
(
��@ A
)
��A B
;
��B C
}
�� 
return
�� 
animator
�� 
;
�� 
}
�� 	
static
�� )
AnimationLayerMixerPlayable
�� *
CreateGroupMixer
��+ ;
(
��; <
PlayableGraph
��< I
graph
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
int
��` c

inputCount
��d n
)
��n o
{
�� 	
return
�� )
AnimationLayerMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <

inputCount
��= G
)
��G H
;
��H I
}
�� 	
Playable
�� )
CreateInfiniteTrackPlayable
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A

GameObject
��B L
go
��M O
,
��O P
IntervalTree
��Q ]
<
��] ^
RuntimeElement
��^ l
>
��l m
tree
��n r
,
��r s 
AppliedOffsetMode��t �
mode��� �
)��� �
{
�� 	
if
�� 
(
�� 
m_InfiniteClip
�� 
==
�� !
null
��" &
)
��& '
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
var
�� 
mixer
�� 
=
�� $
AnimationMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <
$num
��= >
)
��> ?
;
��? @
var
�� 
playable
�� 
=
�� $
AnimationPlayableAsset
�� 1
.
��1 2
CreatePlayable
��2 @
(
��@ A
graph
��A F
,
��F G
m_InfiniteClip
��H V
,
��V W*
m_InfiniteClipOffsetPosition
��X t
,
��t u.
m_InfiniteClipOffsetEulerAngles��v �
,��� �
false��� �
,��� �
mode��� �
,��� �'
infiniteClipApplyFootIK��� �
,��� �&
AnimationPlayableAsset��� �
.��� �
LoopMode��� �
.��� �
Off��� �
)��� �
;��� �
if
�� 
(
�� 
playable
�� 
.
�� 
IsValid
��  
(
��  !
)
��! "
)
��" #
{
�� 
tree
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
InfiniteRuntimeClip
�� 0
(
��0 1
playable
��1 9
)
��9 :
)
��: ;
;
��; <
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� &
,
��& '
$num
��( )
,
��) *
mixer
��+ 0
,
��0 1
$num
��2 3
)
��3 4
;
��4 5
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %
$num
��% &
,
��& '
$num
��( ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
!
�� #
AnimatesRootTransform
�� &
(
��& '
)
��' (
)
��( )
return
�� 
mixer
�� 
;
�� 
var
�� 
	rootTrack
�� 
=
�� 

isSubTrack
�� &
?
��' (
(
��) *
AnimationTrack
��* 8
)
��8 9
parent
��9 ?
:
��@ A
this
��B F
;
��F G
return
�� 
	rootTrack
�� 
.
�� 
ApplyTrackOffset
�� -
(
��- .
graph
��. 3
,
��3 4
mixer
��5 :
,
��: ;
go
��< >
,
��> ?
mode
��@ D
)
��D E
;
��E F
}
�� 	
Playable
�� 
ApplyTrackOffset
�� !
(
��! "
PlayableGraph
��" /
graph
��0 5
,
��5 6
Playable
��7 ?
root
��@ D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
AppliedOffsetMode
��U f
mode
��g k
)
��k l
{
�� 	
m_ClipOffset
�� 
=
�� %
AnimationOffsetPlayable
�� 2
.
��2 3
Null
��3 7
;
��7 8
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
||
��< >
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffset
��* 5
||
��: <
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
)
�� 
return
�� 
root
�� 
;
�� 
var
�� 
pos
�� 
=
�� 
position
�� 
;
�� 
var
�� 
rot
�� 
=
�� 
rotation
�� 
;
�� 
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetEditor
��* ;
)
��; <
{
�� 
pos
�� 
=
�� #
m_SceneOffsetPosition
�� +
;
��+ ,
rot
�� 
=
�� 

Quaternion
��  
.
��  !
Euler
��! &
(
��& '#
m_SceneOffsetRotation
��' <
)
��< =
;
��= >
}
�� 
var
�� 
offsetPlayable
�� 
=
��  %
AnimationOffsetPlayable
��! 8
.
��8 9
Create
��9 ?
(
��? @
graph
��@ E
,
��E F
pos
��G J
,
��J K
rot
��L O
,
��O P
$num
��Q R
)
��R S
;
��S T
m_ClipOffset
�� 
=
�� 
offsetPlayable
�� )
;
��) *
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� 
,
�� 
$num
��  !
,
��! "
offsetPlayable
��# 1
,
��1 2
$num
��3 4
)
��4 5
;
��5 6
offsetPlayable
�� 
.
�� 
SetInputWeight
�� )
(
��) *
$num
��* +
,
��+ ,
$num
��- .
)
��. /
;
��/ 0
return
�� 
offsetPlayable
�� !
;
��! "
}
�� 	
internal
�� 
override
�� 
void
�� 
GetEvaluationTime
�� 0
(
��0 1
out
��1 4
double
��5 ;
outStart
��< D
,
��D E
out
��F I
double
��J P
outDuration
��Q \
)
��\ ]
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
base
�� 
.
�� 
GetEvaluationTime
�� &
(
��& '
out
��' *
outStart
��+ 3
,
��3 4
out
��5 8
outDuration
��9 D
)
��D E
;
��E F
}
�� 
else
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outDuration
�� 
=
�� 
TimelineClip
�� *
.
��* +
kMaxTimeValue
��+ 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
override
�� 
void
�� 
GetSequenceTime
�� .
(
��. /
out
��/ 2
double
��3 9
outStart
��: B
,
��B C
out
��D G
double
��H N
outDuration
��O Z
)
��Z [
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
base
�� 
.
�� 
GetSequenceTime
�� $
(
��$ %
out
��% (
outStart
��) 1
,
��1 2
out
��3 6
outDuration
��7 B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outDuration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '%
GetNotificationDuration
��' >
(
��> ?
)
��? @
,
��@ A
TimeUtility
��B M
.
��M N$
GetAnimationClipLength
��N d
(
��d e
m_InfiniteClip
��e s
)
��s t
)
��t u
;
��u v
}
�� 
}
�� 	
void
�� !
AssignAnimationClip
��  
(
��  !
TimelineClip
��! -
clip
��. 2
,
��2 3
AnimationClip
��4 A
animClip
��B J
)
��J K
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
animClip
��  (
==
��) +
null
��, 0
)
��0 1
return
�� 
;
�� 
if
�� 
(
�� 
animClip
�� 
.
�� 
legacy
�� 
)
��  
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 ^
)
��^ _
;
��_ `$
AnimationPlayableAsset
�� "
asset
��# (
=
��) *
clip
��+ /
.
��/ 0
asset
��0 5
as
��6 8$
AnimationPlayableAsset
��9 O
;
��O P
if
�� 
(
�� 
asset
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
clip
�� 
=
�� 
animClip
�� %
;
��% &
asset
�� 
.
�� 
name
�� 
=
�� 
animClip
�� %
.
��% &
name
��& *
;
��* +
var
�� 
duration
�� 
=
�� 
asset
�� $
.
��$ %
duration
��% -
;
��- .
if
�� 
(
�� 
!
�� 
double
�� 
.
�� 

IsInfinity
�� &
(
��& '
duration
��' /
)
��/ 0
&&
��1 3
duration
��4 <
>=
��= ?
TimelineClip
��@ L
.
��L M
kMinDuration
��M Y
&&
��Z \
duration
��] e
<
��f g
TimelineClip
��h t
.
��t u
kMaxTimeValue��u �
)��� �
clip
�� 
.
�� 
duration
�� !
=
��" #
duration
��$ ,
;
��, -
}
�� 
clip
�� 
.
�� 
displayName
�� 
=
�� 
animClip
�� '
.
��' (
name
��( ,
;
��, -
}
�� 	
public
�� 
override
�� 
void
�� 
GatherProperties
�� -
(
��- .
PlayableDirector
��. >
director
��? G
,
��G H 
IPropertyCollector
��I [
driver
��\ b
)
��b c
{
�� 	#
m_SceneOffsetPosition
�� !
=
��" #
Vector3
��$ +
.
��+ ,
zero
��, 0
;
��0 1#
m_SceneOffsetRotation
�� !
=
��" #
Vector3
��$ +
.
��+ ,
zero
��, 0
;
��0 1
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &
director
��& .
)
��. /
;
��/ 0
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
;
�� 
var
�� 
	animClips
�� 
=
�� 
new
�� 
List
��  $
<
��$ %
AnimationClip
��% 2
>
��2 3
(
��3 4
this
��4 8
.
��8 9
clips
��9 >
.
��> ?
Length
��? E
+
��F G
$num
��H I
)
��I J
;
��J K
GetAnimationClips
�� 
(
�� 
	animClips
�� '
)
��' (
;
��( )
var
�� 
hasHumanMotion
�� 
=
��  
	animClips
��! *
.
��* +
Exists
��+ 1
(
��1 2
clip
��2 6
=>
��7 9
clip
��: >
.
��> ?
humanMotion
��? J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
hasHumanMotion
�� 
&&
��  "
animator
��# +
.
��+ ,
isHuman
��, 3
&&
��4 6#
AnimatesRootTransform
��7 L
(
��L M
)
��M N
&&
��O Q
!
�� +
DrivenPropertyManagerInternal
�� .
.
��. /
IsDriven
��/ 7
(
��7 8
animator
��8 @
.
��@ A
	transform
��A J
,
��J K
$str
��L _
)
��_ `
&&
��a c
!
�� +
DrivenPropertyManagerInternal
�� .
.
��. /
IsDriven
��/ 7
(
��7 8
animator
��8 @
.
��@ A
	transform
��A J
,
��J K
$str
��L _
)
��_ `
)
��` a
hasHumanMotion
�� 
=
��  
true
��! %
;
��% &#
m_SceneOffsetPosition
�� !
=
��" #
animator
��$ ,
.
��, -
	transform
��- 6
.
��6 7
localPosition
��7 D
;
��D E#
m_SceneOffsetRotation
�� !
=
��" #
animator
��$ ,
.
��, -
	transform
��- 6
.
��6 7
localEulerAngles
��7 G
;
��G H
if
�� 
(
�� 
hasHumanMotion
�� 
)
�� 
	animClips
�� 
.
�� 
Add
�� 
(
�� $
GetDefaultHumanoidClip
�� 4
(
��4 5
)
��5 6
)
��6 7
;
��7 8
m_DefaultPoseClip
�� 
=
�� 
hasHumanMotion
��  .
?
��/ 0$
GetDefaultHumanoidClip
��1 G
(
��G H
)
��H I
:
��J K
null
��L P
;
��P Q
var
�� 
hash
�� 
=
�� '
AnimationPreviewUtilities
�� 0
.
��0 1
GetClipHash
��1 <
(
��< =
	animClips
��= F
)
��F G
;
��G H
if
�� 
(
�� 
m_CachedBindings
��  
==
��! #
null
��$ (
||
��) +
m_CachedHash
��, 8
!=
��9 ;
hash
��< @
)
��@ A
{
�� 
m_CachedBindings
��  
=
��! "'
AnimationPreviewUtilities
��# <
.
��< =
GetBindings
��= H
(
��H I
animator
��I Q
.
��Q R

gameObject
��R \
,
��\ ]
	animClips
��^ g
)
��g h
;
��h i$
m_CachedPropertiesClip
�� &
=
��' ('
AnimationPreviewUtilities
��) B
.
��B C
CreateDefaultClip
��C T
(
��T U
animator
��U ]
.
��] ^

gameObject
��^ h
,
��h i
m_CachedBindings
��j z
)
��z {
;
��{ |
m_CachedHash
�� 
=
�� 
hash
�� #
;
��# $
}
�� '
AnimationPreviewUtilities
�� %
.
��% &
PreviewFromCurves
��& 7
(
��7 8
animator
��8 @
.
��@ A

gameObject
��A K
,
��K L
m_CachedBindings
��M ]
)
��] ^
;
��^ _
}
�� 	
private
�� 
void
�� 
GetAnimationClips
�� &
(
��& '
List
��' +
<
��+ ,
AnimationClip
��, 9
>
��9 :
	animClips
��; D
)
��D E
{
�� 	
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
clips
�� #
)
��# $
{
�� 
var
�� 
a
�� 
=
�� 
c
�� 
.
�� 
asset
�� 
as
��  "$
AnimationPlayableAsset
��# 9
;
��9 :
if
�� 
(
�� 
a
�� 
!=
�� 
null
�� 
&&
��  
a
��! "
.
��" #
clip
��# '
!=
��( *
null
��+ /
)
��/ 0
	animClips
�� 
.
�� 
Add
�� !
(
��! "
a
��" #
.
��# $
clip
��$ (
)
��( )
;
��) *
}
�� 
if
�� 
(
�� 
m_InfiniteClip
�� 
!=
�� !
null
��" &
)
��& '
	animClips
�� 
.
�� 
Add
�� 
(
�� 
m_InfiniteClip
�� ,
)
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 

childTrack
�� #
in
��$ &
GetChildTracks
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
animChildTrack
�� "
=
��# $

childTrack
��% /
as
��0 2
AnimationTrack
��3 A
;
��A B
if
�� 
(
�� 
animChildTrack
�� "
!=
��# %
null
��& *
)
��* +
animChildTrack
�� "
.
��" #
GetAnimationClips
��# 4
(
��4 5
	animClips
��5 >
)
��> ?
;
��? @
}
�� 
}
�� 	
AppliedOffsetMode
�� 
GetOffsetMode
�� '
(
��' (

GameObject
��( 2
go
��3 5
,
��5 6
bool
��7 ;#
animatesRootTransform
��< Q
)
��Q R
{
�� 	
if
�� 
(
�� 
!
�� #
animatesRootTransform
�� &
)
��& '
return
�� 
AppliedOffsetMode
�� (
.
��( )
NoRootTransform
��) 8
;
��8 9
if
�� 
(
�� 
m_TrackOffset
�� 
==
��  
TrackOffset
��! ,
.
��, -#
ApplyTransformOffsets
��- B
)
��B C
return
�� 
AppliedOffsetMode
�� (
.
��( )
TransformOffset
��) 8
;
��8 9
if
�� 
(
�� 
m_TrackOffset
�� 
==
��  
TrackOffset
��! ,
.
��, -
ApplySceneOffsets
��- >
)
��> ?
return
�� 
(
�� 
Application
�� #
.
��# $
	isPlaying
��$ -
)
��- .
?
��/ 0
AppliedOffsetMode
��1 B
.
��B C
SceneOffset
��C N
:
��O P
AppliedOffsetMode
��Q b
.
��b c
SceneOffsetEditor
��c t
;
��t u
if
�� 
(
�� 
HasController
�� 
(
�� 
go
��  
)
��  !
)
��! "
{
�� 
if
�� 
(
�� 
!
�� 
Application
��  
.
��  !
	isPlaying
��! *
)
��* +
return
�� 
AppliedOffsetMode
�� ,
.
��, -%
SceneOffsetLegacyEditor
��- D
;
��D E
return
�� 
AppliedOffsetMode
�� (
.
��( )
SceneOffsetLegacy
��) :
;
��: ;
}
�� 
return
�� 
AppliedOffsetMode
�� $
.
��$ %#
TransformOffsetLegacy
��% :
;
��: ;
}
�� 	
private
�� 
bool
�� +
IsRootTransformDisabledByMask
�� 2
(
��2 3

GameObject
��3 =

gameObject
��> H
,
��H I
	Transform
��J S
genericRootNode
��T c
)
��c d
{
�� 	
if
�� 
(
�� 

avatarMask
�� 
==
�� 
null
�� "
||
��# %
!
��& '
applyAvatarMask
��' 6
)
��6 7
return
�� 
false
�� 
;
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
isHuman
��  
)
��  !
return
�� 
!
�� 

avatarMask
�� "
.
��" #'
GetHumanoidBodyPartActive
��# <
(
��< = 
AvatarMaskBodyPart
��= O
.
��O P
Root
��P T
)
��T U
;
��U V
if
�� 
(
�� 

avatarMask
�� 
.
�� 
transformCount
�� )
==
��* ,
$num
��- .
)
��. /
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
genericRootNode
�� 
==
��  "
null
��# '
)
��' (
return
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� +
(
��+ ,

avatarMask
��, 6
.
��6 7
GetTransformPath
��7 G
(
��G H
$num
��H I
)
��I J
)
��J K
&&
��L N
!
��O P

avatarMask
��P Z
.
��Z [ 
GetTransformActive
��[ m
(
��m n
$num
��n o
)
��o p
;
��p q
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

avatarMask
��  *
.
��* +
transformCount
��+ 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
if
�� 
(
�� 
genericRootNode
�� #
==
��$ &
animator
��' /
.
��/ 0
	transform
��0 9
.
��9 :
Find
��: >
(
��> ?

avatarMask
��? I
.
��I J
GetTransformPath
��J Z
(
��Z [
i
��[ \
)
��\ ]
)
��] ^
)
��^ _
return
�� 
!
�� 

avatarMask
�� &
.
��& ' 
GetTransformActive
��' 9
(
��9 :
i
��: ;
)
��; <
;
��< =
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
	Transform
��  
GetGenericRootNode
�� ,
(
��, -

GameObject
��- 7

gameObject
��8 B
)
��B C
{
�� 	
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
isHuman
��  
)
��  !
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
avatar
�� 
==
��  "
null
��# '
)
��' (
return
�� 
null
�� 
;
�� 
var
�� 
rootName
�� 
=
�� 
animator
�� #
.
��# $
avatar
��$ *
.
��* +
humanDescription
��+ ;
.
��; <"
m_RootMotionBoneName
��< P
;
��P Q
if
�� 
(
�� 
rootName
�� 
==
�� 
animator
�� $
.
��$ %
name
��% )
||
��* ,
string
��- 3
.
��3 4
IsNullOrEmpty
��4 A
(
��A B
rootName
��B J
)
��J K
)
��K L
return
�� 
null
�� 
;
�� 
return
�� )
FindInHierarchyBreadthFirst
�� .
(
��. /
animator
��/ 7
.
��7 8
	transform
��8 A
,
��A B
rootName
��C K
)
��K L
;
��L M
}
�� 	
internal
�� 
bool
�� #
AnimatesRootTransform
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� $
AnimationPlayableAsset
�� &
.
��& '
HasRootTransforms
��' 8
(
��8 9
m_InfiniteClip
��9 G
)
��G H
)
��H I
return
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetClips
�� &
(
��& '
)
��' (
)
��( )
{
�� 
var
�� 
apa
�� 
=
�� 
c
�� 
.
�� 
asset
�� !
as
��" $$
AnimationPlayableAsset
��% ;
;
��; <
if
�� 
(
�� 
apa
�� 
!=
�� 
null
�� 
&&
��  "
apa
��# &
.
��& '
hasRootTransforms
��' 8
)
��8 9
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
readonly
�� 
Queue
��  %
<
��% &
	Transform
��& /
>
��/ 0
s_CachedQueue
��1 >
=
��? @
new
��A D
Queue
��E J
<
��J K
	Transform
��K T
>
��T U
(
��U V
$num
��V Y
)
��Y Z
;
��Z [
private
�� 
static
�� 
	Transform
��  )
FindInHierarchyBreadthFirst
��! <
(
��< =
	Transform
��= F
t
��G H
,
��H I
string
��J P
name
��Q U
)
��U V
{
�� 	
s_CachedQueue
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
s_CachedQueue
�� 
.
�� 
Enqueue
�� !
(
��! "
t
��" #
)
��# $
;
��$ %
while
�� 
(
�� 
s_CachedQueue
��  
.
��  !
Count
��! &
>
��' (
$num
��) *
)
��* +
{
�� 
var
�� 
r
�� 
=
�� 
s_CachedQueue
�� %
.
��% &
Dequeue
��& -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
�� 
r
�� 
.
�� 
name
�� 
==
�� 
name
�� "
)
��" #
return
�� 
r
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
r
��$ %
.
��% &

childCount
��& 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
s_CachedQueue
�� !
.
��! "
Enqueue
��" )
(
��) *
r
��* +
.
��+ ,
GetChild
��, 4
(
��4 5
i
��5 6
)
��6 7
)
��7 8
;
��8 9
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �!
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Extensions\TrackExtensions.cs
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
}LL �#
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationTrack.cs
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
}]] �(
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationMixerPlayable.cs
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
}GG �B
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\PrefabControlPlayable.cs
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
parentTransform	 �
)
� �
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
prefabGameObject	88z �
.
88� �
name
88� �
,
88� �

m_Instance
88� �
.
88� �
name
88� �
)
88� �
;
88� �
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
�� 
}
�� 	
void
�� 
OnPrefabUpdated
�� 
(
�� 

GameObject
�� '
go
��( *
)
��* +
{
�� 	
if
�� 
(
�� 
go
�� 
==
�� 

m_Instance
��  
)
��  !
{
�� #
SetHideFlagsRecursive
�� %
(
��% &
go
��& (
)
��( )
;
��) *
go
�� 
.
�� 
	SetActive
�� 
(
�� 
m_IsActiveCached
�� -
)
��- .
;
��. /
}
�� 
}
�� 	
static
�� 
void
�� #
SetHideFlagsRecursive
�� )
(
��) *

GameObject
��* 4

gameObject
��5 ?
)
��? @
{
�� 	
if
�� 
(
�� 

gameObject
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 

gameObject
�� 
.
�� 
	hideFlags
��  
=
��! "
	HideFlags
��# ,
.
��, -
DontSaveInBuild
��- <
|
��= >
	HideFlags
��? H
.
��H I
DontSaveInEditor
��I Y
;
��Y Z
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '

gameObject
�� 
.
�� 
	hideFlags
�� $
|=
��% '
	HideFlags
��( 1
.
��1 2
HideInHierarchy
��2 A
;
��A B
foreach
�� 
(
�� 
	Transform
�� 
child
�� $
in
��% '

gameObject
��( 2
.
��2 3
	transform
��3 <
)
��< =
{
�� #
SetHideFlagsRecursive
�� %
(
��% &
child
��& +
.
��+ ,

gameObject
��, 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
}
�� 
}�� �q
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalReceiver.cs
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
�� 
(
�� 
m_Events
�� 
.
�� 
signals
��  
[
��  !
idx
��! $
]
��$ %
==
��& (
newKey
��) /
)
��/ 0
return
�� 
;
�� 
var
�� 
alreadyUsed
�� 
=
�� 
m_Events
�� &
.
��& '
signals
��' .
.
��. /
Contains
��/ 7
(
��7 8
newKey
��8 >
)
��> ?
;
��? @
if
�� 
(
�� 
newKey
�� 
==
�� 
null
�� 
||
�� !
m_Events
��" *
.
��* +
signals
��+ 2
[
��2 3
idx
��3 6
]
��6 7
==
��9 ;
null
��< @
||
��A C
!
��D E
alreadyUsed
��E P
)
��P Q
m_Events
�� 
.
�� 
signals
��  
[
��  !
idx
��! $
]
��$ %
=
��& '
newKey
��( .
;
��. /
if
�� 
(
�� 
newKey
�� 
!=
�� 
null
�� 
&&
�� !
alreadyUsed
��" -
)
��- .
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, G
)
��G H
;
��H I
}
�� 	
public
�� 
void
�� 
RemoveAtIndex
�� !
(
��! "
int
��" %
idx
��& )
)
��) *
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
signals
��* 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
m_Events
�� 
.
�� 
Remove
�� 
(
�� 
idx
�� 
)
��  
;
��  !
}
�� 	
public
�� 
void
�� #
ChangeReactionAtIndex
�� )
(
��) *
int
��* -
idx
��. 1
,
��1 2

UnityEvent
��3 =
reaction
��> F
)
��F G
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
events
��* 0
.
��0 1
Count
��1 6
-
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
m_Events
�� 
.
�� 
events
�� 
[
�� 
idx
�� 
]
��  
=
��! "
reaction
��# +
;
��+ ,
}
�� 	
public
�� 

UnityEvent
��  
GetReactionAtIndex
�� ,
(
��, -
int
��- 0
idx
��1 4
)
��4 5
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
events
��* 0
.
��0 1
Count
��1 6
-
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
m_Events
�� 
.
�� 
events
�� "
[
��" #
idx
��# &
]
��& '
;
��' (
}
�� 	
public
�� 
SignalAsset
�� #
GetSignalAssetAtIndex
�� 0
(
��0 1
int
��1 4
idx
��5 8
)
��8 9
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
signals
��* 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
m_Events
�� 
.
�� 
signals
�� #
[
��# $
idx
��$ '
]
��' (
;
��( )
}
�� 	
private
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
class
�� 
EventKeyValue
�� 
{
�� 	
[
�� 
SerializeField
�� 
]
�� 
List
�� 
<
�� 
SignalAsset
�� 
>
�� 
	m_Signals
�� '
=
��( )
new
��* -
List
��. 2
<
��2 3
SignalAsset
��3 >
>
��> ?
(
��? @
)
��@ A
;
��A B
[
�� 
SerializeField
�� 
,
�� %
CustomSignalEventDrawer
�� 4
]
��4 5
List
�� 
<
�� 

UnityEvent
�� 
>
�� 
m_Events
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

UnityEvent
��1 ;
>
��; <
(
��< =
)
��= >
;
��> ?
public
�� 
bool
�� 
TryGetValue
�� #
(
��# $
SignalAsset
��$ /
key
��0 3
,
��3 4
out
��5 8

UnityEvent
��9 C
value
��D I
)
��I J
{
�� 
var
�� 
index
�� 
=
�� 
	m_Signals
�� %
.
��% &
IndexOf
��& -
(
��- .
key
��. 1
)
��1 2
;
��2 3
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
value
�� 
=
�� 
m_Events
�� $
[
��$ %
index
��% *
]
��* +
;
��+ ,
return
�� 
true
�� 
;
��  
}
�� 
value
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
public
�� 
void
�� 
Append
�� 
(
�� 
SignalAsset
�� *
key
��+ .
,
��. /

UnityEvent
��0 :
value
��; @
)
��@ A
{
�� 
	m_Signals
�� 
.
�� 
Add
�� 
(
�� 
key
�� !
)
��! "
;
��" #
m_Events
�� 
.
�� 
Add
�� 
(
�� 
value
�� "
)
��" #
;
��# $
}
�� 
public
�� 
void
�� 
Remove
�� 
(
�� 
int
�� "
idx
��# &
)
��& '
{
�� 
if
�� 
(
�� 
idx
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
	m_Signals
�� 
.
�� 
RemoveAt
�� &
(
��& '
idx
��' *
)
��* +
;
��+ ,
m_Events
�� 
.
�� 
RemoveAt
�� %
(
��% &
idx
��& )
)
��) *
;
��* +
}
�� 
}
�� 
public
�� 
void
�� 
Remove
�� 
(
�� 
SignalAsset
�� *
key
��+ .
)
��. /
{
�� 
var
�� 
idx
�� 
=
�� 
	m_Signals
�� #
.
��# $
IndexOf
��$ +
(
��+ ,
key
��, /
)
��/ 0
;
��0 1
if
�� 
(
�� 
idx
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
	m_Signals
�� 
.
�� 
RemoveAt
�� &
(
��& '
idx
��' *
)
��* +
;
��+ ,
m_Events
�� 
.
�� 
RemoveAt
�� %
(
��% &
idx
��& )
)
��) *
;
��* +
}
�� 
}
�� 
public
�� 
List
�� 
<
�� 
SignalAsset
�� #
>
��# $
signals
��% ,
{
�� 
get
�� 
{
�� 
return
�� 
	m_Signals
�� &
;
��& '
}
��( )
}
�� 
public
�� 
List
�� 
<
�� 

UnityEvent
�� "
>
��" #
events
��$ *
{
�� 
get
�� 
{
�� 
return
�� 
m_Events
�� %
;
��% &
}
��' (
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Control\ControlPlayableAsset.cs
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
PostPlaybackState	@@u �
.
@@� �
Revert
@@� �
;
@@� �
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
$str	qq+ �
,
qq� �
name
qq� �
)
qq� �
;
qq� �
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
�� 
=
�� 
controlPlayable
�� .
.
��. /
GetBehaviour
��/ ;
(
��; <
)
��< =
.
��= >
prefabInstance
��> L
;
��L M
	playables
�� 
.
�� 
Add
�� 
(
�� 
controlPlayable
�� -
)
��- .
;
��. /
}
�� 

m_Duration
�� 
=
�� 
PlayableBinding
�� (
.
��( )
DefaultDuration
��) 8
;
��8 9
m_SupportLoop
�� 
=
�� 
false
�� !
;
��! ""
controllingParticles
��  
=
��! "
false
��# (
;
��( )"
controllingDirectors
��  
=
��! "
false
��# (
;
��( )
if
�� 
(
�� 
sourceObject
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
	directors
�� 
=
�� 
updateDirector
��  .
?
��/ 0
GetComponent
��1 =
<
��= >
PlayableDirector
��> N
>
��N O
(
��O P
sourceObject
��P \
)
��\ ]
:
��^ _"
k_EmptyDirectorsList
��` t
;
��t u
var
�� 
particleSystems
�� #
=
��$ %
updateParticle
��& 4
?
��5 6$
GetParticleSystemRoots
��7 M
(
��M N
sourceObject
��N Z
)
��Z [
:
��\ ]"
k_EmptyParticlesList
��^ r
;
��r s'
UpdateDurationAndLoopFlag
�� )
(
��) *
	directors
��* 3
,
��3 4
particleSystems
��5 D
)
��D E
;
��E F
var
�� 
director
�� 
=
�� 
go
�� !
.
��! "
GetComponent
��" .
<
��. /
PlayableDirector
��/ ?
>
��? @
(
��@ A
)
��A B
;
��B C
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  $
)
��$ %$
m_ControlDirectorAsset
�� *
=
��+ ,
director
��- 5
.
��5 6
playableAsset
��6 C
;
��C D
if
�� 
(
�� 
go
�� 
==
�� 
sourceObject
�� &
&&
��' )
prefabGameObject
��* :
==
��; =
null
��> B
)
��B C
{
�� 
Debug
�� 
.
�� 
LogWarningFormat
�� *
(
��* +
$str��+ �
,��� �
name��� �
)��� �
;��� �
active
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
!
�� 
searchHierarchy
�� (
)
��( )
updateDirector
�� &
=
��' (
false
��) .
;
��. /
}
�� 
if
�� 
(
�� 
active
�� 
)
�� &
CreateActivationPlayable
�� ,
(
��, -
sourceObject
��- 9
,
��9 :
graph
��; @
,
��@ A
	playables
��B K
)
��K L
;
��L M
if
�� 
(
�� 
updateDirector
�� "
)
��" #/
!SearchHierarchyAndConnectDirector
�� 5
(
��5 6
	directors
��6 ?
,
��? @
graph
��A F
,
��F G
	playables
��H Q
,
��Q R
prefabGameObject
��S c
!=
��d f
null
��g k
)
��k l
;
��l m
if
�� 
(
�� 
updateParticle
�� "
)
��" #4
&SearchHiearchyAndConnectParticleSystem
�� :
(
��: ;
particleSystems
��; J
,
��J K
graph
��L Q
,
��Q R
	playables
��S \
)
��\ ]
;
��] ^
if
�� 
(
��  
updateITimeControl
�� &
)
��& '9
+SearchHierarchyAndConnectControlableScripts
�� ?
(
��? @#
GetControlableScripts
��@ U
(
��U V
sourceObject
��V b
)
��b c
,
��c d
graph
��e j
,
��j k
	playables
��l u
)
��u v
;
��v w
root
�� 
=
�� %
ConnectPlayablesToMixer
�� .
(
��. /
graph
��/ 4
,
��4 5
	playables
��6 ?
)
��? @
;
��@ A
}
�� 
if
�� 
(
�� 
prefabGameObject
��  
!=
��! #
null
��$ (
)
��( )
s_CreatedPrefabs
��  
.
��  !
Remove
��! '
(
��' (
prefabGameObject
��( 8
)
��8 9
;
��9 :
if
�� 
(
�� 
!
�� 
root
�� 
.
�� 
IsValid
�� 
(
�� 
)
�� 
)
��  
root
�� 
=
�� 
Playable
�� 
.
��  
Create
��  &
(
��& '
graph
��' ,
)
��, -
;
��- .
return
�� 
root
�� 
;
�� 
}
�� 	
static
�� 
Playable
�� %
ConnectPlayablesToMixer
�� /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D
List
��E I
<
��I J
Playable
��J R
>
��R S
	playables
��T ]
)
��] ^
{
�� 	
var
�� 
mixer
�� 
=
�� 
Playable
��  
.
��  !
Create
��! '
(
��' (
graph
��( -
,
��- .
	playables
��/ 8
.
��8 9
Count
��9 >
)
��> ?
;
��? @
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
�� 
!=
��  
	playables
��! *
.
��* +
Count
��+ 0
;
��0 1
++
��2 4
i
��4 5
)
��5 6
{
�� %
ConnectMixerAndPlayable
�� '
(
��' (
graph
��( -
,
��- .
mixer
��/ 4
,
��4 5
	playables
��6 ?
[
��? @
i
��@ A
]
��A B
,
��B C
i
��D E
)
��E F
;
��F G
}
�� 
mixer
�� 
.
�� !
SetPropagateSetTime
�� %
(
��% &
true
��& *
)
��* +
;
��+ ,
return
�� 
mixer
�� 
;
�� 
}
�� 	
void
�� &
CreateActivationPlayable
�� %
(
��% &

GameObject
��& 0
root
��1 5
,
��5 6
PlayableGraph
��7 D
graph
��E J
,
��J K
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
)
��' (
{
�� 	
var
�� 

activation
�� 
=
�� '
ActivationControlPlayable
�� 6
.
��6 7
Create
��7 =
(
��= >
graph
��> C
,
��C D
root
��E I
,
��I J
postPlayback
��K W
)
��W X
;
��X Y
if
�� 
(
�� 

activation
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
outplayables
�� 
.
�� 
Add
��  
(
��  !

activation
��! +
)
��+ ,
;
��, -
}
�� 	
void
�� 4
&SearchHiearchyAndConnectParticleSystem
�� 3
(
��3 4
IEnumerable
��4 ?
<
��? @
ParticleSystem
��@ N
>
��N O
particleSystems
��P _
,
��_ `
PlayableGraph
��a n
graph
��o t
,
��t u
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
)
��' (
{
�� 	
foreach
�� 
(
�� 
var
�� 
particleSystem
�� '
in
��( *
particleSystems
��+ :
)
��: ;
{
�� 
if
�� 
(
�� 
particleSystem
�� "
!=
��# %
null
��& *
)
��* +
{
�� "
controllingParticles
�� (
=
��) *
true
��+ /
;
��/ 0
outplayables
��  
.
��  !
Add
��! $
(
��$ %%
ParticleControlPlayable
��% <
.
��< =
Create
��= C
(
��C D
graph
��D I
,
��I J
particleSystem
��K Y
,
��Y Z 
particleRandomSeed
��[ m
)
��m n
)
��n o
;
��o p
}
�� 
}
�� 
}
�� 	
void
�� /
!SearchHierarchyAndConnectDirector
�� .
(
��. /
IEnumerable
��/ :
<
��: ;
PlayableDirector
��; K
>
��K L
	directors
��M V
,
��V W
PlayableGraph
��X e
graph
��f k
,
��k l
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
,
��' (
bool
��) -#
disableSelfReferences
��. C
)
��C D
{
�� 	
foreach
�� 
(
�� 
var
�� 
director
�� !
in
��" $
	directors
��% .
)
��. /
{
�� 
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
director
��  
.
��  !
playableAsset
��! .
!=
��/ 1$
m_ControlDirectorAsset
��2 H
)
��H I
{
�� 
outplayables
�� $
.
��$ %
Add
��% (
(
��( )%
DirectorControlPlayable
��) @
.
��@ A
Create
��A G
(
��G H
graph
��H M
,
��M N
director
��O W
)
��W X
)
��X Y
;
��Y Z"
controllingDirectors
�� ,
=
��- .
true
��/ 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� #
disableSelfReferences
�� 2
)
��2 3
{
�� 
director
��  
.
��  !
enabled
��! (
=
��) *
false
��+ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� 9
+SearchHierarchyAndConnectControlableScripts
�� ?
(
��? @
IEnumerable
��@ K
<
��K L
MonoBehaviour
��L Y
>
��Y Z 
controlableScripts
��[ m
,
��m n
PlayableGraph
��o |
graph��} �
,��� �
List��� �
<��� �
Playable��� �
>��� �
outplayables��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  " 
controlableScripts
��# 5
)
��5 6
{
�� 
outplayables
�� 
.
�� 
Add
��  
(
��  !!
TimeControlPlayable
��! 4
.
��4 5
Create
��5 ;
(
��; <
graph
��< A
,
��A B
(
��C D
ITimeControl
��D P
)
��P Q
script
��Q W
)
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
static
�� 
void
�� %
ConnectMixerAndPlayable
�� +
(
��+ ,
PlayableGraph
��, 9
graph
��: ?
,
��? @
Playable
��A I
mixer
��J O
,
��O P
Playable
��Q Y
playable
��Z b
,
��b c
int
�� 
	portIndex
�� 
)
�� 
{
�� 	
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� "
,
��" #
$num
��$ %
,
��% &
mixer
��' ,
,
��, -
	portIndex
��. 7
)
��7 8
;
��8 9
mixer
�� 
.
�� 
SetInputWeight
��  
(
��  !
playable
��! )
,
��) *
$num
��+ /
)
��/ 0
;
��0 1
}
�� 	
internal
�� 
IList
�� 
<
�� 
T
�� 
>
�� 
GetComponent
�� &
<
��& '
T
��' (
>
��( )
(
��) *

GameObject
��* 4

gameObject
��5 ?
)
��? @
{
�� 	
var
�� 

components
�� 
=
�� 
new
��  
List
��! %
<
��% &
T
��& '
>
��' (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
if
�� 
(
�� 
searchHierarchy
�� #
)
��# $
{
�� 

gameObject
�� 
.
�� %
GetComponentsInChildren
�� 6
<
��6 7
T
��7 8
>
��8 9
(
��9 :
true
��: >
,
��> ?

components
��@ J
)
��J K
;
��K L
}
�� 
else
�� 
{
�� 

gameObject
�� 
.
�� 
GetComponents
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0

components
��0 :
)
��: ;
;
��; <
}
�� 
}
�� 
return
�� 

components
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
IEnumerable
�� #
<
��# $
MonoBehaviour
��$ 1
>
��1 2#
GetControlableScripts
��3 H
(
��H I

GameObject
��I S
root
��T X
)
��X Y
{
�� 	
if
�� 
(
�� 
root
�� 
==
�� 
null
�� 
)
�� 
yield
�� 
break
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  "
root
��# '
.
��' (%
GetComponentsInChildren
��( ?
<
��? @
MonoBehaviour
��@ M
>
��M N
(
��N O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
script
�� 
is
�� 
ITimeControl
�� *
)
��* +
yield
�� 
return
��  
script
��! '
;
��' (
}
�� 
}
�� 	
internal
�� 
void
�� '
UpdateDurationAndLoopFlag
�� /
(
��/ 0
IList
��0 5
<
��5 6
PlayableDirector
��6 F
>
��F G
	directors
��H Q
,
��Q R
IList
��S X
<
��X Y
ParticleSystem
��Y g
>
��g h
particleSystems
��i x
)
��x y
{
�� 	
if
�� 
(
�� 
	directors
�� 
.
�� 
Count
�� 
==
��  "
$num
��# $
&&
��% '
particleSystems
��( 7
.
��7 8
Count
��8 =
==
��> @
$num
��A B
)
��B C
return
�� 
;
�� 
const
�� 
double
�� 
invalidDuration
�� (
=
��) *
double
��+ 1
.
��1 2
NegativeInfinity
��2 B
;
��B C
var
�� 
maxDuration
�� 
=
�� 
invalidDuration
�� -
;
��- .
var
�� 
supportsLoop
�� 
=
�� 
false
�� $
;
��$ %
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
�� 
if
�� 
(
�� 
director
�� 
.
�� 
playableAsset
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
var
�� 
assetDuration
�� %
=
��& '
director
��( 0
.
��0 1
playableAsset
��1 >
.
��> ?
duration
��? G
;
��G H
if
�� 
(
�� 
director
��  
.
��  !
playableAsset
��! .
is
��/ 1
TimelineAsset
��2 ?
&&
��@ B
assetDuration
��C P
>
��Q R
$num
��S V
)
��V W
assetDuration
�� %
=
��& '
(
��( )
double
��) /
)
��/ 0
(
��0 1
(
��1 2
DiscreteTime
��2 >
)
��> ?
assetDuration
��? L
)
��L M
.
��M N
OneTickAfter
��N Z
(
��Z [
)
��[ \
;
��\ ]
maxDuration
�� 
=
��  !
Math
��" &
.
��& '
Max
��' *
(
��* +
maxDuration
��+ 6
,
��6 7
assetDuration
��8 E
)
��E F
;
��F G
supportsLoop
��  
=
��! "
supportsLoop
��# /
||
��0 2
director
��3 ;
.
��; <
extrapolationMode
��< M
==
��N P
DirectorWrapMode
��Q a
.
��a b
Loop
��b f
;
��f g
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
particleSystem
�� '
in
��( *
particleSystems
��+ :
)
��: ;
{
�� 
maxDuration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '
maxDuration
��' 2
,
��2 3
particleSystem
��4 B
.
��B C
main
��C G
.
��G H
duration
��H P
)
��P Q
;
��Q R
supportsLoop
�� 
=
�� 
supportsLoop
�� +
||
��, .
particleSystem
��/ =
.
��= >
main
��> B
.
��B C
loop
��C G
;
��G H
}
�� 

m_Duration
�� 
=
�� 
double
�� 
.
��   
IsNegativeInfinity
��  2
(
��2 3
maxDuration
��3 >
)
��> ?
?
��@ A
PlayableBinding
��B Q
.
��Q R
DefaultDuration
��R a
:
��b c
maxDuration
��d o
;
��o p
m_SupportLoop
�� 
=
�� 
supportsLoop
�� (
;
��( )
}
�� 	
IList
�� 
<
�� 
ParticleSystem
�� 
>
�� $
GetParticleSystemRoots
�� 4
(
��4 5

GameObject
��5 ?
go
��@ B
)
��B C
{
�� 	
if
�� 
(
�� 
searchHierarchy
�� 
)
��  
{
�� 
var
�� 
roots
�� 
=
�� 
new
�� 
List
��  $
<
��$ %
ParticleSystem
��% 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7$
GetParticleSystemRoots
�� &
(
��& '
go
��' )
.
��) *
	transform
��* 3
,
��3 4
roots
��5 :
)
��: ;
;
��; <
return
�� 
roots
�� 
;
�� 
}
�� 
return
�� 
GetComponent
�� 
<
��  
ParticleSystem
��  .
>
��. /
(
��/ 0
go
��0 2
)
��2 3
;
��3 4
}
�� 	
static
�� 
void
�� $
GetParticleSystemRoots
�� *
(
��* +
	Transform
��+ 4
t
��5 6
,
��6 7
ICollection
��8 C
<
��C D
ParticleSystem
��D R
>
��R S
roots
��T Y
)
��Y Z
{
�� 	
var
�� 
ps
�� 
=
�� 
t
�� 
.
�� 
GetComponent
�� #
<
��# $
ParticleSystem
��$ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
if
�� 
(
�� 
ps
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
roots
�� 
.
�� 
Add
�� 
(
�� 
ps
�� 
)
�� 
;
�� 
return
�� 
;
�� 
}
�� 
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
�� 
t
��  !
.
��! "

childCount
��" ,
;
��, -
++
��. 0
i
��0 1
)
��1 2
{
�� $
GetParticleSystemRoots
�� &
(
��& '
t
��' (
.
��( )
GetChild
��) 1
(
��1 2
i
��2 3
)
��3 4
,
��4 5
roots
��6 ;
)
��; <
;
��< =
}
�� 
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
;
�� 
if
�� 
(
�� "
s_ProcessedDirectors
�� $
.
��$ %
Contains
��% -
(
��- .
director
��. 6
)
��6 7
)
��7 8
return
�� 
;
�� "
s_ProcessedDirectors
��  
.
��  !
Add
��! $
(
��$ %
director
��% -
)
��- .
;
��. /
var
�� 

gameObject
�� 
=
�� 
sourceGameObject
�� -
.
��- .
Resolve
��. 5
(
��5 6
director
��6 >
)
��> ?
;
��? @
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
if
�� 
(
�� 
updateParticle
�� "
)
��" #
PreviewParticles
�� $
(
��$ %
driver
��% +
,
��+ ,

gameObject
��- 7
.
��7 8%
GetComponentsInChildren
��8 O
<
��O P
ParticleSystem
��P ^
>
��^ _
(
��_ `
true
��` d
)
��d e
)
��e f
;
��f g
if
�� 
(
�� 
active
�� 
)
�� 
PreviewActivation
�� %
(
��% &
driver
��& ,
,
��, -
new
��. 1
[
��1 2
]
��2 3
{
��4 5

gameObject
��6 @
}
��A B
)
��B C
;
��C D
if
�� 
(
��  
updateITimeControl
�� &
)
��& ' 
PreviewTimeControl
�� &
(
��& '
driver
��' -
,
��- .
director
��/ 7
,
��7 8#
GetControlableScripts
��9 N
(
��N O

gameObject
��O Y
)
��Y Z
)
��Z [
;
��[ \
if
�� 
(
�� 
updateDirector
�� "
)
��" #
PreviewDirectors
�� $
(
��$ %
driver
��% +
,
��+ ,
GetComponent
��- 9
<
��9 :
PlayableDirector
��: J
>
��J K
(
��K L

gameObject
��L V
)
��V W
)
��W X
;
��X Y
}
�� "
s_ProcessedDirectors
��  
.
��  !
Remove
��! '
(
��' (
director
��( 0
)
��0 1
;
��1 2
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewParticles
�� -
(
��- . 
IPropertyCollector
��. @
driver
��A G
,
��G H
IEnumerable
��I T
<
��T U
ParticleSystem
��U c
>
��c d
	particles
��e n
)
��n o
{
�� 	
foreach
�� 
(
�� 
var
�� 
ps
�� 
in
�� 
	particles
�� (
)
��( )
{
�� 
driver
�� 
.
�� 
AddFromName
�� "
<
��" #
ParticleSystem
��# 1
>
��1 2
(
��2 3
ps
��3 5
.
��5 6

gameObject
��6 @
,
��@ A
$str
��B N
)
��N O
;
��O P
driver
�� 
.
�� 
AddFromName
�� "
<
��" #
ParticleSystem
��# 1
>
��1 2
(
��2 3
ps
��3 5
.
��5 6

gameObject
��6 @
,
��@ A
$str
��B R
)
��R S
;
��S T
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewActivation
�� .
(
��. / 
IPropertyCollector
��/ A
driver
��B H
,
��H I
IEnumerable
��J U
<
��U V

GameObject
��V `
>
��` a
objects
��b i
)
��i j
{
�� 	
foreach
�� 
(
�� 
var
�� 

gameObject
�� #
in
��$ &
objects
��' .
)
��. /
driver
�� 
.
�� 
AddFromName
�� "
(
��" #

gameObject
��# -
,
��- .
$str
��/ ;
)
��; <
;
��< =
}
�� 	
internal
�� 
static
�� 
void
��  
PreviewTimeControl
�� /
(
��/ 0 
IPropertyCollector
��0 B
driver
��C I
,
��I J
PlayableDirector
��K [
director
��\ d
,
��d e
IEnumerable
��f q
<
��q r
MonoBehaviour
��r 
>�� �
scripts��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  "
scripts
��# *
)
��* +
{
�� 
var
�� 
propertyPreview
�� #
=
��$ %
script
��& ,
as
��- /
IPropertyPreview
��0 @
;
��@ A
if
�� 
(
�� 
propertyPreview
�� #
!=
��$ &
null
��' +
)
��+ ,
propertyPreview
�� #
.
��# $
GatherProperties
��$ 4
(
��4 5
director
��5 =
,
��= >
driver
��? E
)
��E F
;
��F G
else
�� 
driver
�� 
.
�� 
AddFromComponent
�� +
(
��+ ,
script
��, 2
.
��2 3

gameObject
��3 =
,
��= >
script
��? E
)
��E F
;
��F G
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewDirectors
�� -
(
��- . 
IPropertyCollector
��. @
driver
��A G
,
��G H
IEnumerable
��I T
<
��T U
PlayableDirector
��U e
>
��e f
	directors
��g p
)
��p q
{
�� 	
foreach
�� 
(
�� 
var
�� 
childDirector
�� &
in
��' )
	directors
��* 3
)
��3 4
{
�� 
if
�� 
(
�� 
childDirector
�� !
==
��" $
null
��% )
)
��) *
continue
�� 
;
�� 
var
�� 
timeline
�� 
=
�� 
childDirector
�� ,
.
��, -
playableAsset
��- :
as
��; =
TimelineAsset
��> K
;
��K L
if
�� 
(
�� 
timeline
�� 
==
�� 
null
��  $
)
��$ %
continue
�� 
;
�� 
timeline
�� 
.
�� 
GatherProperties
�� )
(
��) *
childDirector
��* 7
,
��7 8
driver
��9 ?
)
��? @
;
��@ A
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\ILayerable.cs
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
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineClip.cs
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
�� 	
SerializeField
��	 
]
�� 
AnimationClip
�� &
m_AnimationCurves
��' 8
;
��8 9
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_Recordable
�� *
;
��* +
[
�� 	
SerializeField
��	 
]
�� 
ClipExtrapolation
�� *%
m_PostExtrapolationMode
��+ B
;
��B C
[
�� 	
SerializeField
��	 
]
�� 
ClipExtrapolation
�� *$
m_PreExtrapolationMode
��+ A
;
��A B
[
�� 	
SerializeField
��	 
]
�� 
double
�� %
m_PostExtrapolationTime
��  7
;
��7 8
[
�� 	
SerializeField
��	 
]
�� 
double
�� $
m_PreExtrapolationTime
��  6
;
��6 7
[
�� 	
SerializeField
��	 
]
�� 
string
�� 
m_DisplayName
��  -
;
��- .
public
�� 
bool
�� !
hasPreExtrapolation
�� '
{
�� 	
get
�� 
{
�� 
return
�� $
m_PreExtrapolationMode
�� /
!=
��0 2
ClipExtrapolation
��3 D
.
��D E
None
��E I
&&
��J L$
m_PreExtrapolationTime
��M c
>
��d e
$num
��f g
;
��g h
}
��i j
}
�� 	
public
�� 
bool
�� "
hasPostExtrapolation
�� (
{
�� 	
get
�� 
{
�� 
return
�� %
m_PostExtrapolationMode
�� 0
!=
��1 3
ClipExtrapolation
��4 E
.
��E F
None
��F J
&&
��K M%
m_PostExtrapolationTime
��N e
>
��f g
$num
��h i
;
��i j
}
��k l
}
�� 	
public
�� 
double
�� 
	timeScale
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
SpeedMultiplier
��2 A
)
��A B
?
��C D
Math
��E I
.
��I J
Max
��J M
(
��M N
kTimeScaleMin
��N [
,
��[ \
Math
��] a
.
��a b
Min
��b e
(
��e f
m_TimeScale
��f q
,
��q r
kTimeScaleMax��s �
)��� �
)��� �
:��� �
$num��� �
;��� �
}��� �
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
m_TimeScale
�� '
,
��' (
value
��) .
)
��. /
;
��/ 0
m_TimeScale
�� 
=
�� 
clipCaps
�� &
.
��& '
HasAny
��' -
(
��- .
ClipCaps
��. 6
.
��6 7
SpeedMultiplier
��7 F
)
��F G
?
��H I
Math
��J N
.
��N O
Max
��O R
(
��R S
kTimeScaleMin
��S `
,
��` a
Math
��b f
.
��f g
Min
��g j
(
��j k
value
��k p
,
��p q
kTimeScaleMax
��r 
)�� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
public
�� 
double
�� 
start
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Start
��  
;
��  !
}
��" #
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
value
�� !
,
��! "
m_Start
��# *
)
��* +
;
��+ ,
var
�� 
newValue
�� 
=
�� 
Math
�� #
.
��# $
Max
��$ '
(
��' (
SanitizeTimeValue
��( 9
(
��9 :
value
��: ?
,
��? @
m_Start
��A H
)
��H I
,
��I J
$num
��K L
)
��L M
;
��M N
if
�� 
(
�� 
m_ParentTrack
�� !
!=
��" $
null
��% )
&&
��* ,
m_Start
��- 4
!=
��5 7
newValue
��8 @
)
��@ A
{
�� 
m_ParentTrack
�� !
.
��! "

OnClipMove
��" ,
(
��, -
)
��- .
;
��. /
}
�� 
m_Start
�� 
=
�� 
newValue
�� "
;
��" #
}
�� 
}
�� 	
public
�� 
double
�� 
duration
�� 
{
�� 	
get
�� 
{
�� 
return
�� 

m_Duration
�� #
;
��# $
}
��% &
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 

m_Duration
�� &
,
��& '
value
��( -
)
��- .
;
��. /

m_Duration
�� 
=
�� 
Math
�� !
.
��! "
Max
��" %
(
��% &
SanitizeTimeValue
��& 7
(
��7 8
value
��8 =
,
��= >

m_Duration
��? I
)
��I J
,
��J K
double
��L R
.
��R S
Epsilon
��S Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
double
�� 
end
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Start
��  
+
��! "

m_Duration
��# -
;
��- .
}
��/ 0
}
�� 	
public
�� 
double
�� 
clipIn
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
ClipIn
��2 8
)
��8 9
?
��: ;
m_ClipIn
��< D
:
��E F
$num
��G H
;
��H I
}
��J K
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
m_ClipIn
�� $
,
��$ %
value
��& +
)
��+ ,
;
��, -
m_ClipIn
�� 
=
�� 
clipCaps
�� #
.
��# $
HasAny
��$ *
(
��* +
ClipCaps
��+ 3
.
��3 4
ClipIn
��4 :
)
��: ;
?
��< =
Math
��> B
.
��B C
Max
��C F
(
��F G
Math
��G K
.
��K L
Min
��L O
(
��O P
SanitizeTimeValue
��P a
(
��a b
value
��b g
,
��g h
m_ClipIn
��i q
)
��q r
,
��r s
kMaxTimeValue��t �
)��� �
,��� �
$num��� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
public
�� 
string
�� 
displayName
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
m_DisplayName
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_DisplayName
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
double
�� 
clipAssetDuration
�� '
{
�� 	
get
�� 
{
�� 
var
�� 
playableAsset
�� !
=
��" #
m_Asset
��$ +
as
��, .
IPlayableAsset
��/ =
;
��= >
return
�� 
playableAsset
�� $
!=
��% '
null
��( ,
?
��- .
playableAsset
��/ <
.
��< =
duration
��= E
:
��F G
double
��H N
.
��N O
MaxValue
��O W
;
��W X
}
�� 
}
�� 	
public
�� 
AnimationClip
�� 
curves
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_AnimationCurves
�� *
;
��* +
}
��, -
internal
�� 
set
�� 
{
�� 
m_AnimationCurves
�� ,
=
��- .
value
��/ 4
;
��4 5
}
��6 7
}
�� 	
string
�� 
ICurvesOwner
�� 
.
�� 
defaultCurvesName
�� -
{
�� 	
get
�� 
{
�� 
return
��  
kDefaultCurvesName
�� +
;
��+ ,
}
��- .
}
�� 	
public
�� 
bool
�� 
	hasCurves
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_AnimationCurves
�� *
!=
��+ -
null
��. 2
&&
��3 5
!
��6 7
m_AnimationCurves
��7 H
.
��H I
empty
��I N
;
��N O
}
��P Q
}
�� 	
public
�� 
Object
�� 
asset
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Asset
��  
;
��  !
}
��" #
set
�� 
{
�� 
m_Asset
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 

assetOwner
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
parentTrack
�� $
;
��$ %
}
��& '
}
�� 	

TrackAsset
�� 
ICurvesOwner
�� 
.
��  
targetTrack
��  +
{
�� 	
get
�� 
{
�� 
return
�� 
parentTrack
�� $
;
��$ %
}
��& '
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� T
,
��T U
true
��V Z
)
��Z [
]
��[ \
public
�� 
Object
�� 
underlyingAsset
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
��  
set
�� 
{
�� 
}
�� 
}
�� 	
public
�� 

TrackAsset
�� 
parentTrack
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
m_ParentTrack
�� &
;
��& '
}
��( )
set
�� 
{
�� 
if
�� 
(
�� 
m_ParentTrack
�� !
==
��" $
value
��% *
)
��* +
return
�� 
;
�� 
if
�� 
(
�� 
m_ParentTrack
�� !
!=
��" $
null
��% )
)
��) *
m_ParentTrack
�� !
.
��! "

RemoveClip
��" ,
(
��, -
this
��- 1
)
��1 2
;
��2 3
m_ParentTrack
�� 
=
�� 
value
��  %
;
��% &
if
�� 
(
�� 
m_ParentTrack
�� !
!=
��" $
null
��% )
)
��) *
m_ParentTrack
�� !
.
��! "
AddClip
��" )
(
��) *
this
��* .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
double
�� 
easeInDuration
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< =
Math
��> B
.
��B C
Min
��C F
(
��F G
Math
��G K
.
��K L
Max
��L O
(
��O P
m_EaseInDuration
��P `
,
��` a
$num
��b c
)
��c d
,
��d e
duration
��f n
)
��n o
:
��p q
$num
��r s
;
��s t
}
��u v
set
�� 
{
�� 
m_EaseInDuration
�� "
=
��# $
clipCaps
��% -
.
��- .
HasAny
��. 4
(
��4 5
ClipCaps
��5 =
.
��= >
Blending
��> F
)
��F G
?
��H I
Math
��J N
.
��N O
Max
��O R
(
��R S
$num
��S T
,
��T U
Math
��V Z
.
��Z [
Min
��[ ^
(
��^ _
SanitizeTimeValue
��_ p
(
��p q
value
��q v
,
��v w
m_EaseInDuration��x �
)��� �
,��� �
duration��� �
)��� �
)��� �
:��� �
$num��� �
;��� �
}��� �
}
�� 	
public
�� 
double
�� 
easeOutDuration
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< =
Math
��> B
.
��B C
Min
��C F
(
��F G
Math
��G K
.
��K L
Max
��L O
(
��O P
m_EaseOutDuration
��P a
,
��a b
$num
��c d
)
��d e
,
��e f
duration
��g o
)
��o p
:
��q r
$num
��s t
;
��t u
}
��v w
set
�� 
{
�� 
m_EaseOutDuration
�� #
=
��$ %
clipCaps
��& .
.
��. /
HasAny
��/ 5
(
��5 6
ClipCaps
��6 >
.
��> ?
Blending
��? G
)
��G H
?
��I J
Math
��K O
.
��O P
Max
��P S
(
��S T
$num
��T U
,
��U V
Math
��W [
.
��[ \
Min
��\ _
(
��_ `
SanitizeTimeValue
��` q
(
��q r
value
��r w
,
��w x 
m_EaseOutDuration��y �
)��� �
,��� �
duration��� �
)��� �
)��� �
:��� �
$num��� �
;��� �
}��� �
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� L
,
��L M
true
��N R
)
��R S
]
��S T
public
�� 
double
�� 
eastOutTime
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
easeOutDuration
��$ 3
+
��4 5
m_Start
��6 =
;
��= >
}
��? @
}
�� 	
public
�� 
double
�� 
easeOutTime
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
easeOutDuration
��$ 3
+
��4 5
m_Start
��6 =
;
��= >
}
��? @
}
�� 	
public
�� 
double
�� 
blendInDuration
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< =
m_BlendInDuration
��> O
:
��P Q
$num
��R S
;
��S T
}
��U V
set
�� 
{
�� 
m_BlendInDuration
�� #
=
��$ %
clipCaps
��& .
.
��. /
HasAny
��/ 5
(
��5 6
ClipCaps
��6 >
.
��> ?
Blending
��? G
)
��G H
?
��I J
SanitizeTimeValue
��K \
(
��\ ]
value
��] b
,
��b c
m_BlendInDuration
��d u
)
��u v
:
��w x
$num
��y z
;
��z {
}
��| }
}
�� 	
public
�� 
double
�� 
blendOutDuration
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< = 
m_BlendOutDuration
��> P
:
��Q R
$num
��S T
;
��T U
}
��V W
set
�� 
{
��  
m_BlendOutDuration
�� $
=
��% &
clipCaps
��' /
.
��/ 0
HasAny
��0 6
(
��6 7
ClipCaps
��7 ?
.
��? @
Blending
��@ H
)
��H I
?
��J K
SanitizeTimeValue
��L ]
(
��] ^
value
��^ c
,
��c d 
m_BlendOutDuration
��e w
)
��w x
:
��y z
$num
��{ |
;
��| }
}
��~ 
}
�� 	
public
�� 
BlendCurveMode
�� 
blendInCurveMode
�� .
{
�� 	
get
�� 
{
�� 
return
��  
m_BlendInCurveMode
�� +
;
��+ ,
}
��- .
set
�� 
{
��  
m_BlendInCurveMode
�� $
=
��% &
value
��' ,
;
��, -
}
��. /
}
�� 	
public
�� 
BlendCurveMode
�� 
blendOutCurveMode
�� /
{
�� 	
get
�� 
{
�� 
return
�� !
m_BlendOutCurveMode
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_BlendOutCurveMode
�� %
=
��& '
value
��( -
;
��- .
}
��/ 0
}
�� 	
public
�� 
bool
�� 

hasBlendIn
�� 
{
��  
get
��! $
{
��% &
return
��' -
clipCaps
��. 6
.
��6 7
HasAny
��7 =
(
��= >
ClipCaps
��> F
.
��F G
Blending
��G O
)
��O P
&&
��Q S
m_BlendInDuration
��T e
>
��f g
$num
��h i
;
��i j
}
��k l
}
��m n
public
�� 
bool
�� 
hasBlendOut
�� 
{
��  !
get
��" %
{
��& '
return
��( .
clipCaps
��/ 7
.
��7 8
HasAny
��8 >
(
��> ?
ClipCaps
��? G
.
��G H
Blending
��H P
)
��P Q
&&
��R T 
m_BlendOutDuration
��U g
>
��h i
$num
��j k
;
��k l
}
��m n
}
��o p
public
�� 
AnimationCurve
�� 

mixInCurve
�� (
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_MixInCurve
��  
==
��! #
null
��$ (
||
��) +
m_MixInCurve
��, 8
.
��8 9
length
��9 ?
<
��@ A
$num
��B C
)
��C D
m_MixInCurve
��  
=
��! ""
GetDefaultMixInCurve
��# 7
(
��7 8
)
��8 9
;
��9 :
return
�� 
m_MixInCurve
�� #
;
��# $
}
�� 
set
�� 
{
�� 
m_MixInCurve
�� 
=
��  
value
��! &
;
��& '
}
��( )
}
�� 	
public
�� 
float
�� 
mixInPercentage
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
float
�� 
)
��  
(
��  !
mixInDuration
��! .
/
��/ 0
duration
��1 9
)
��9 :
;
��: ;
}
��< =
}
�� 	
public
�� 
double
�� 
mixInDuration
�� #
{
�� 	
get
�� 
{
�� 
return
�� 

hasBlendIn
�� #
?
��$ %
blendInDuration
��& 5
:
��6 7
easeInDuration
��8 F
;
��F G
}
��H I
}
�� 	
public
�� 
AnimationCurve
�� 
mixOutCurve
�� )
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_MixOutCurve
�� !
==
��" $
null
��% )
||
��* ,
m_MixOutCurve
��- :
.
��: ;
length
��; A
<
��B C
$num
��D E
)
��E F
m_MixOutCurve
�� !
=
��" ##
GetDefaultMixOutCurve
��$ 9
(
��9 :
)
��: ;
;
��; <
return
�� 
m_MixOutCurve
�� $
;
��$ %
}
�� 
set
�� 
{
�� 
m_MixOutCurve
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
double
�� 

mixOutTime
��  
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
mixOutDuration
��$ 2
+
��3 4
m_Start
��5 <
;
��< =
}
��> ?
}
�� 	
public
�� 
double
�� 
mixOutDuration
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
hasBlendOut
�� $
?
��% &
blendOutDuration
��' 7
:
��8 9
easeOutDuration
��: I
;
��I J
}
��K L
}
�� 	
public
�� 
float
�� 
mixOutPercentage
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
float
�� 
)
��  
(
��  !
mixOutDuration
��! /
/
��0 1
duration
��2 :
)
��: ;
;
��; <
}
��= >
}
�� 	
public
�� 
bool
�� 

recordable
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Recordable
�� %
;
��% &
}
��' (
internal
�� 
set
�� 
{
�� 
m_Recordable
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� Z
,
��Z [
true
��\ `
)
��` a
]
��a b
public
�� 
List
�� 
<
�� 
string
�� 
>
�� 
exposedParameters
�� -
{
�� 	
get
�� 
{
�� 
return
�� %
m_ExposedParameterNames
�� 0
??
��1 3
(
��4 5%
m_ExposedParameterNames
��5 L
=
��M N
new
��O R
List
��S W
<
��W X
string
��X ^
>
��^ _
(
��_ `
)
��` a
)
��a b
;
��b c
}
��d e
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
	clipAsset
�� 
=
�� 
asset
��  %
as
��& ( 
ITimelineClipAsset
��) ;
;
��; <
return
�� 
(
�� 
	clipAsset
�� !
!=
��" $
null
��% )
)
��) *
?
��+ ,
	clipAsset
��- 6
.
��6 7
clipCaps
��7 ?
:
��@ A
kDefaultClipCaps
��B R
;
��R S
}
�� 
}
�� 	
internal
�� 
int
�� 
Hash
�� 
(
�� 
)
�� 
{
�� 	
return
�� 
HashUtility
�� 
.
�� 
CombineHash
�� *
(
��* +
m_Start
��+ 2
.
��2 3
GetHashCode
��3 >
(
��> ?
)
��? @
,
��@ A

m_Duration
�� 
.
�� 
GetHashCode
�� &
(
��& '
)
��' (
,
��( )
m_TimeScale
�� 
.
�� 
GetHashCode
�� '
(
��' (
)
��( )
,
��) *
m_ClipIn
�� 
.
�� 
GetHashCode
�� $
(
��$ %
)
��% &
,
��& '
(
�� 
(
�� 
int
�� 
)
�� $
m_PreExtrapolationMode
�� ,
)
��, -
.
��- .
GetHashCode
��. 9
(
��9 :
)
��: ;
,
��; <
(
�� 
(
�� 
int
�� 
)
�� %
m_PostExtrapolationMode
�� -
)
��- .
.
��. /
GetHashCode
��/ :
(
��: ;
)
��; <
)
��< =
;
��= >
}
�� 	
public
�� 
float
�� 
EvaluateMixOut
�� #
(
��# $
double
��$ *
time
��+ /
)
��/ 0
{
�� 	
if
�� 
(
�� 
!
�� 
clipCaps
�� 
.
�� 
HasAny
��  
(
��  !
ClipCaps
��! )
.
��) *
Blending
��* 2
)
��2 3
)
��3 4
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
mixOutDuration
�� 
>
��  
Mathf
��! &
.
��& '
Epsilon
��' .
)
��. /
{
�� 
var
�� 
perc
�� 
=
�� 
(
�� 
float
�� !
)
��! "
(
��" #
time
��# '
-
��( )

mixOutTime
��* 4
)
��4 5
/
��6 7
(
��8 9
float
��9 >
)
��> ?
mixOutDuration
��? M
;
��M N
perc
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� $
(
��$ %
mixOutCurve
��% 0
.
��0 1
Evaluate
��1 9
(
��9 :
perc
��: >
)
��> ?
)
��? @
;
��@ A
return
�� 
perc
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
float
�� 
EvaluateMixIn
�� "
(
��" #
double
��# )
time
��* .
)
��. /
{
�� 	
if
�� 
(
�� 
!
�� 
clipCaps
�� 
.
�� 
HasAny
��  
(
��  !
ClipCaps
��! )
.
��) *
Blending
��* 2
)
��2 3
)
��3 4
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
mixInDuration
�� 
>
�� 
Mathf
��  %
.
��% &
Epsilon
��& -
)
��- .
{
�� 
var
�� 
perc
�� 
=
�� 
(
�� 
float
�� !
)
��! "
(
��" #
time
��# '
-
��( )
m_Start
��* 1
)
��1 2
/
��3 4
(
��5 6
float
��6 ;
)
��; <
mixInDuration
��< I
;
��I J
perc
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� $
(
��$ %

mixInCurve
��% /
.
��/ 0
Evaluate
��0 8
(
��8 9
perc
��9 =
)
��= >
)
��> ?
;
��? @
return
�� 
perc
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
static
�� 
AnimationCurve
�� "
GetDefaultMixInCurve
�� 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
AnimationCurve
�� !
.
��! "
	EaseInOut
��" +
(
��+ ,
$num
��, -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 	
static
�� 
AnimationCurve
�� #
GetDefaultMixOutCurve
�� 3
(
��3 4
)
��4 5
{
�� 	
return
�� 
AnimationCurve
�� !
.
��! "
	EaseInOut
��" +
(
��+ ,
$num
��, -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
double
�� 
ToLocalTime
�� !
(
��! "
double
��" (
time
��) -
)
��- .
{
�� 	
if
�� 
(
�� 
time
�� 
<
�� 
$num
�� 
)
�� 
return
�� 
time
�� 
;
�� 
if
�� 
(
�� #
IsPreExtrapolatedTime
�� %
(
��% &
time
��& *
)
��* +
)
��+ ,
time
�� 
=
�� !
GetExtrapolatedTime
�� *
(
��* +
time
��+ /
-
��0 1
m_Start
��2 9
,
��9 :$
m_PreExtrapolationMode
��; Q
,
��Q R

m_Duration
��S ]
)
��] ^
;
��^ _
else
�� 
if
�� 
(
�� $
IsPostExtrapolatedTime
�� +
(
��+ ,
time
��, 0
)
��0 1
)
��1 2
time
�� 
=
�� !
GetExtrapolatedTime
�� *
(
��* +
time
��+ /
-
��0 1
m_Start
��2 9
,
��9 :%
m_PostExtrapolationMode
��; R
,
��R S

m_Duration
��T ^
)
��^ _
;
��_ `
else
�� 
time
�� 
-=
�� 
m_Start
�� 
;
��  
time
�� 
*=
�� 
	timeScale
�� 
;
�� 
time
�� 
+=
�� 
clipIn
�� 
;
�� 
return
�� 
time
�� 
;
�� 
}
�� 	
public
�� 
double
��  
ToLocalTimeUnbound
�� (
(
��( )
double
��) /
time
��0 4
)
��4 5
{
�� 	
return
�� 
(
�� 
time
�� 
-
�� 
m_Start
�� "
)
��" #
*
��$ %
	timeScale
��& /
+
��0 1
clipIn
��2 8
;
��8 9
}
�� 	
internal
�� 
double
�� "
FromLocalTimeUnbound
�� ,
(
��, -
double
��- 3
time
��4 8
)
��8 9
{
�� 	
return
�� 
(
�� 
time
�� 
-
�� 
clipIn
�� !
)
��! "
/
��# $
	timeScale
��% .
+
��/ 0
m_Start
��1 8
;
��8 9
}
�� 	
public
�� 
AnimationClip
�� 
animationClip
�� *
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_Asset
�� 
==
�� 
null
�� #
)
��# $
return
�� 
null
�� 
;
��  
var
�� 
playableAsset
�� !
=
��" #
m_Asset
��$ +
as
��, .$
AnimationPlayableAsset
��/ E
;
��E F
return
�� 
playableAsset
�� $
!=
��% '
null
��( ,
?
��- .
playableAsset
��/ <
.
��< =
clip
��= A
:
��B C
null
��D H
;
��H I
}
�� 
}
�� 	
static
�� 
double
�� 
SanitizeTimeValue
�� '
(
��' (
double
��( .
value
��/ 4
,
��4 5
double
��6 <
defaultValue
��= I
)
��I J
{
�� 	
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� !
(
��! "
value
��" '
)
��' (
||
��) +
double
��, 2
.
��2 3
IsNaN
��3 8
(
��8 9
value
��9 >
)
��> ?
)
��? @
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� <
)
��< =
;
��= >
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
-
�� 
kMaxTimeValue
�� *
,
��* +
Math
��, 0
.
��0 1
Min
��1 4
(
��4 5
kMaxTimeValue
��5 B
,
��B C
value
��D I
)
��I J
)
��J K
;
��K L
}
�� 	
public
�� 
ClipExtrapolation
��  #
postExtrapolationMode
��! 6
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Extrapolation
��2 ?
)
��? @
?
��A B%
m_PostExtrapolationMode
��C Z
:
��[ \
ClipExtrapolation
��] n
.
��n o
None
��o s
;
��s t
}
��u v
internal
�� 
set
�� 
{
�� %
m_PostExtrapolationMode
�� 2
=
��3 4
clipCaps
��5 =
.
��= >
HasAny
��> D
(
��D E
ClipCaps
��E M
.
��M N
Extrapolation
��N [
)
��[ \
?
��] ^
value
��_ d
:
��e f
ClipExtrapolation
��g x
.
��x y
None
��y }
;
��} ~
}�� �
}
�� 	
public
�� 
ClipExtrapolation
��  "
preExtrapolationMode
��! 5
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Extrapolation
��2 ?
)
��? @
?
��A B$
m_PreExtrapolationMode
��C Y
:
��Z [
ClipExtrapolation
��\ m
.
��m n
None
��n r
;
��r s
}
��t u
internal
�� 
set
�� 
{
�� $
m_PreExtrapolationMode
�� 1
=
��2 3
clipCaps
��4 <
.
��< =
HasAny
��= C
(
��C D
ClipCaps
��D L
.
��L M
Extrapolation
��M Z
)
��Z [
?
��\ ]
value
��^ c
:
��d e
ClipExtrapolation
��f w
.
��w x
None
��x |
;
��| }
}
��~ 
}
�� 	
internal
�� 
void
�� &
SetPostExtrapolationTime
�� .
(
��. /
double
��/ 5
time
��6 :
)
��: ;
{
�� 	%
m_PostExtrapolationTime
�� #
=
��$ %
time
��& *
;
��* +
}
�� 	
internal
�� 
void
�� %
SetPreExtrapolationTime
�� -
(
��- .
double
��. 4
time
��5 9
)
��9 :
{
�� 	$
m_PreExtrapolationTime
�� "
=
��# $
time
��% )
;
��) *
}
�� 	
public
�� 
bool
��  
IsExtrapolatedTime
�� &
(
��& '
double
��' -
sequenceTime
��. :
)
��: ;
{
�� 	
return
�� #
IsPreExtrapolatedTime
�� (
(
��( )
sequenceTime
��) 5
)
��5 6
||
��7 9$
IsPostExtrapolatedTime
��: P
(
��P Q
sequenceTime
��Q ]
)
��] ^
;
��^ _
}
�� 	
public
�� 
bool
�� #
IsPreExtrapolatedTime
�� )
(
��) *
double
��* 0
sequenceTime
��1 =
)
��= >
{
�� 	
return
�� "
preExtrapolationMode
�� '
!=
��( *
ClipExtrapolation
��+ <
.
��< =
None
��= A
&&
��B D
sequenceTime
�� 
<
�� 
m_Start
�� &
&&
��' )
sequenceTime
��* 6
>=
��7 9
m_Start
��: A
-
��B C$
m_PreExtrapolationTime
��D Z
;
��Z [
}
�� 	
public
�� 
bool
�� $
IsPostExtrapolatedTime
�� *
(
��* +
double
��+ 1
sequenceTime
��2 >
)
��> ?
{
�� 	
return
�� #
postExtrapolationMode
�� (
!=
��) +
ClipExtrapolation
��, =
.
��= >
None
��> B
&&
��C E
(
�� 
sequenceTime
�� 
>
�� 
end
��  #
)
��# $
&&
��% '
(
��( )
sequenceTime
��) 5
-
��6 7
end
��8 ;
<
��< =%
m_PostExtrapolationTime
��> U
)
��U V
;
��V W
}
�� 	
public
�� 
double
�� 
extrapolatedStart
�� '
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_PreExtrapolationMode
�� *
!=
��+ -
ClipExtrapolation
��. ?
.
��? @
None
��@ D
)
��D E
return
�� 
m_Start
�� "
-
��# $$
m_PreExtrapolationTime
��% ;
;
��; <
return
�� 
m_Start
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
double
�� "
extrapolatedDuration
�� *
{
�� 	
get
�� 
{
�� 
double
�� 
length
�� 
=
�� 

m_Duration
��  *
;
��* +
if
�� 
(
�� %
m_PostExtrapolationMode
�� +
!=
��, .
ClipExtrapolation
��/ @
.
��@ A
None
��A E
)
��E F
length
�� 
+=
�� 
Math
�� "
.
��" #
Min
��# &
(
��& '%
m_PostExtrapolationTime
��' >
,
��> ?
kMaxTimeValue
��@ M
)
��M N
;
��N O
if
�� 
(
�� $
m_PreExtrapolationMode
�� *
!=
��+ -
ClipExtrapolation
��. ?
.
��? @
None
��@ D
)
��D E
length
�� 
+=
�� $
m_PreExtrapolationTime
�� 4
;
��4 5
return
�� 
length
�� 
;
�� 
}
�� 
}
�� 	
static
�� 
double
�� !
GetExtrapolatedTime
�� )
(
��) *
double
��* 0
time
��1 5
,
��5 6
ClipExtrapolation
��7 H
mode
��I M
,
��M N
double
��O U
duration
��V ^
)
��^ _
{
�� 	
if
�� 
(
�� 
duration
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
switch
�� 
(
�� 
mode
�� 
)
�� 
{
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
None
��' +
:
��+ ,
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Loop
��' +
:
��+ ,
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
time
�� 
=
�� 
duration
�� '
-
��( )
(
��* +
-
��+ ,
time
��, 0
%
��1 2
duration
��3 ;
)
��; <
;
��< =
else
�� 
if
�� 
(
�� 
time
�� !
>
��" #
duration
��$ ,
)
��, -
time
�� 
%=
�� 
duration
��  (
;
��( )
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Hold
��' +
:
��+ ,
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
return
�� 
$num
��  
;
��  !
if
�� 
(
�� 
time
�� 
>
�� 
duration
�� '
)
��' (
return
�� 
duration
�� '
;
��' (
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
PingPong
��' /
:
��/ 0
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
{
�� 
time
�� 
=
�� 
duration
�� '
*
��( )
$num
��* +
-
��, -
(
��. /
-
��/ 0
time
��0 4
%
��5 6
(
��7 8
duration
��8 @
*
��A B
$num
��C D
)
��D E
)
��E F
;
��F G
time
�� 
=
�� 
duration
�� '
-
��( )
Math
��* .
.
��. /
Abs
��/ 2
(
��2 3
time
��3 7
-
��8 9
duration
��: B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
time
�� 
=
�� 
time
�� #
%
��$ %
(
��& '
duration
��' /
*
��0 1
$num
��2 5
)
��5 6
;
��6 7
time
�� 
=
�� 
duration
�� '
-
��( )
Math
��* .
.
��. /
Abs
��/ 2
(
��2 3
time
��3 7
-
��8 9
duration
��: B
)
��B C
;
��C D
}
�� 
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Continue
��' /
:
��/ 0
break
�� 
;
�� 
}
�� 
return
�� 
time
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
CreateCurves
��  
(
��  !
string
��! '
curvesClipName
��( 6
)
��6 7
{
�� 	
if
�� 
(
�� 
m_AnimationCurves
�� !
!=
��" $
null
��% )
)
��) *
return
�� 
;
�� 
m_AnimationCurves
�� 
=
�� %
TimelineCreateUtilities
��  7
.
��7 8)
CreateAnimationClipForTrack
��8 S
(
��S T
string
��T Z
.
��Z [
IsNullOrEmpty
��[ h
(
��h i
curvesClipName
��i w
)
��w x
?
��y z!
kDefaultCurvesName��{ �
:��� �
curvesClipName��� �
,��� �
parentTrack��� �
,��� �
true��� �
)��� �
;��� �
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ ,
OnBeforeSerialize
��, =
(
��= >
)
��> ?
{
�� 	
	m_Version
�� 
=
�� 
k_LatestVersion
�� '
;
��' (
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	
if
�� 
(
�� 
	m_Version
�� 
<
�� 
k_LatestVersion
�� +
)
��+ ,
{
�� $
UpgradeToLatestVersion
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
public
�� 
override
�� 
string
�� 
ToString
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
UnityString
�� 
.
�� 
Format
�� %
(
��% &
$str
��& I
,
��I J
displayName
��K V
,
��V W
start
��X ]
,
��] ^
end
��_ b
,
��b c
clipIn
��d j
,
��j k
parentTrack
��l w
)
��w x
;
��x y
}
�� 	
public
�� 
void
�� 
ConformEaseValues
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_EaseInDuration
��  
+
��! "
m_EaseOutDuration
��# 4
>
��5 6
duration
��7 ?
)
��? @
{
�� 
var
�� 
ratio
�� 
=
�� "
CalculateEasingRatio
�� 0
(
��0 1
m_EaseInDuration
��1 A
,
��A B
m_EaseOutDuration
��C T
)
��T U
;
��U V
m_EaseInDuration
��  
=
��! "
duration
��# +
*
��, -
ratio
��. 3
;
��3 4
m_EaseOutDuration
�� !
=
��" #
duration
��$ ,
*
��- .
(
��/ 0
$num
��0 3
-
��4 5
ratio
��6 ;
)
��; <
;
��< =
}
�� 
}
�� 	
static
�� 
double
�� "
CalculateEasingRatio
�� *
(
��* +
double
��+ 1
easeIn
��2 8
,
��8 9
double
��: @
easeOut
��A H
)
��H I
{
�� 	
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
easeIn
�� 
-
��  !
easeOut
��" )
)
��) *
<
��+ ,
TimeUtility
��- 8
.
��8 9
kTimeEpsilon
��9 E
)
��E F
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
easeIn
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
easeOut
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
return
�� 
easeIn
�� 
/
�� 
(
�� 
easeIn
�� #
+
��$ %
easeOut
��& -
)
��- .
;
��. /
}
�� 	
internal
�� 
int
�� 

DirtyIndex
�� 
{
��  !
get
��" %
;
��% &
private
��' .
set
��/ 2
;
��2 3
}
��4 5
internal
�� 
void
�� 
	MarkDirty
�� 
(
��  
)
��  !
{
�� 	

DirtyIndex
�� 
++
�� 
;
�� 
}
�� 	
void
�� 
UpdateDirty
�� 
(
�� 
double
�� 
oldValue
��  (
,
��( )
double
��* 0
newValue
��1 9
)
��9 :
{
�� 	
if
�� 
(
�� 
oldValue
�� 
!=
�� 
newValue
�� $
)
��$ %

DirtyIndex
�� 
++
�� 
;
�� 
}
�� 	
}
�� 
;
�� 
}�� �3
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationOutputWeightProcessor.cs
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
}]] �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Marker.cs
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
}77 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\DiscreteTime.cs
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
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
double
��5 ;
time
��< @
)
��@ A
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
float
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
implicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
Int32
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
Int64
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
==
��# %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
==
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
!=
��# %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
!
�� 
(
�� 
lhs
�� 
==
�� 
rhs
�� 
)
��  
;
��  !
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>
��# $
(
��$ %
DiscreteTime
��% 1
lhs
��2 5
,
��5 6
DiscreteTime
��7 C
rhs
��D G
)
��G H
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
>
��& '
rhs
��( +
.
��+ ,
m_DiscreteTime
��, :
;
��: ;
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<
��# $
(
��$ %
DiscreteTime
��% 1
lhs
��2 5
,
��5 6
DiscreteTime
��7 C
rhs
��D G
)
��G H
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
<
��& '
rhs
��( +
.
��+ ,
m_DiscreteTime
��, :
;
��: ;
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<=
��# %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
<=
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>=
��# %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
>=
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
operator
��# +
+
��+ ,
(
��, -
DiscreteTime
��- 9
lhs
��: =
,
��= >
DiscreteTime
��? K
rhs
��L O
)
��O P
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
lhs
��$ '
.
��' (
m_DiscreteTime
��( 6
+
��7 8
rhs
��9 <
.
��< =
m_DiscreteTime
��= K
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
DiscreteTime
�� "
operator
��# +
-
��+ ,
(
��, -
DiscreteTime
��- 9
lhs
��: =
,
��= >
DiscreteTime
��? K
rhs
��L O
)
��O P
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
lhs
��$ '
.
��' (
m_DiscreteTime
��( 6
-
��7 8
rhs
��9 <
.
��< =
m_DiscreteTime
��= K
)
��K L
;
��L M
}
�� 	
public
�� 
override
�� 
string
�� 
ToString
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
m_DiscreteTime
�� !
.
��! "
ToString
��" *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
override
�� 
int
�� 
GetHashCode
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
m_DiscreteTime
�� !
.
��! "
GetHashCode
��" -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
Min
��# &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
Math
��$ (
.
��( )
Min
��) ,
(
��, -
lhs
��- 0
.
��0 1
m_DiscreteTime
��1 ?
,
��? @
rhs
��A D
.
��D E
m_DiscreteTime
��E S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
Max
��# &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
Math
��$ (
.
��( )
Max
��) ,
(
��, -
lhs
��- 0
.
��0 1
m_DiscreteTime
��1 ?
,
��? @
rhs
��A D
.
��D E
m_DiscreteTime
��E S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
static
�� 
double
�� 
SnapToNearestTick
�� .
(
��. /
double
��/ 5
time
��6 :
)
��: ;
{
�� 	
Int64
�� 
discreteTime
�� 
=
��  "
DoubleToDiscreteTime
��! 5
(
��5 6
time
��6 :
)
��: ;
;
��; <
return
�� 
ToDouble
�� 
(
�� 
discreteTime
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
float
�� 
SnapToNearestTick
�� -
(
��- .
float
��. 3
time
��4 8
)
��8 9
{
�� 	
Int64
�� 
discreteTime
�� 
=
��  !
FloatToDiscreteTime
��! 4
(
��4 5
time
��5 9
)
��9 :
;
��: ;
return
�� 
ToFloat
�� 
(
�� 
discreteTime
�� '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
Int64
�� 
GetNearestTick
�� *
(
��* +
double
��+ 1
time
��2 6
)
��6 7
{
�� 	
return
�� "
DoubleToDiscreteTime
�� '
(
��' (
time
��( ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� 
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\TimeNotificationBehaviour.cs
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
loopMode	::~ �
)
::� �
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
)	JJ �
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
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
PrepareFrame
�� )
(
��) *
Playable
��* 2
playable
��3 ;
,
��; <
	FrameData
��= F
info
��G K
)
��K L
{
�� 	
if
�� 
(
�� 
info
�� 
.
�� 
evaluationType
�� #
==
��$ &
	FrameData
��' 0
.
��0 1
EvaluationType
��1 ?
.
��? @
Evaluate
��@ H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� ,
SyncDurationWithExternalSource
�� *
(
��* +
playable
��+ 3
)
��3 4
;
��4 5
SortNotifications
�� 
(
�� 
)
�� 
;
��  
var
�� 
currentTime
�� 
=
�� 
playable
�� &
.
��& '
GetTime
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
�� 
info
�� 
.
�� 

timeLooped
�� 
)
��  
{
�� 
var
�� 
duration
�� 
=
�� 
playable
�� '
.
��' (
GetDuration
��( 3
(
��3 4
)
��4 5
;
��5 6)
TriggerNotificationsInRange
�� +
(
��+ ,
m_PreviousTime
��, :
,
��: ;
duration
��< D
,
��D E
info
��F J
,
��J K
playable
��L T
,
��T U
true
��V Z
)
��Z [
;
��[ \
var
�� 
dx
�� 
=
�� 
playable
�� !
.
��! "
GetDuration
��" -
(
��- .
)
��. /
-
��0 1
m_PreviousTime
��2 @
;
��@ A
var
�� 
nFullTimelines
�� "
=
��# $
(
��% &
int
��& )
)
��) *
(
��* +
(
��+ ,
info
��, 0
.
��0 1
	deltaTime
��1 :
*
��; <
info
��= A
.
��A B
effectiveSpeed
��B P
-
��Q R
dx
��S U
)
��U V
/
��W X
playable
��Y a
.
��a b
GetDuration
��b m
(
��m n
)
��n o
)
��o p
;
��p q
for
�� 
(
�� 
var
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
nFullTimelines
��$ 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� )
TriggerNotificationsInRange
�� /
(
��/ 0
$num
��0 1
,
��1 2
duration
��3 ;
,
��; <
info
��= A
,
��A B
playable
��C K
,
��K L
false
��M R
)
��R S
;
��S T
}
�� )
TriggerNotificationsInRange
�� +
(
��+ ,
$num
��, -
,
��- .
currentTime
��/ :
,
��: ;
info
��< @
,
��@ A
playable
��B J
,
��J K
false
��L Q
)
��Q R
;
��R S
}
�� 
else
�� 
{
�� 
var
�� 
pt
�� 
=
�� 
playable
�� !
.
��! "
GetTime
��" )
(
��) *
)
��* +
;
��+ ,)
TriggerNotificationsInRange
�� +
(
��+ ,
m_PreviousTime
��, :
,
��: ;
pt
��< >
,
��> ?
info
��@ D
,
��D E
playable
�� 
,
�� 
true
�� "
)
��" #
;
��# $
}
�� 
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
�� 
m_Notifications
��  /
.
��/ 0
Count
��0 5
;
��5 6
++
��7 9
i
��9 :
)
��: ;
{
�� 
var
�� 
e
�� 
=
�� 
m_Notifications
�� '
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
e
�� 
.
�� 
notificationFired
�� '
&&
��( *$
CanRestoreNotification
��+ A
(
��A B
e
��B C
,
��C D
info
��E I
,
��I J
currentTime
��K V
,
��V W
m_PreviousTime
��X f
)
��f g
)
��g h
{
�� 
Restore_internal
�� $
(
��$ %
ref
��% (
e
��) *
)
��* +
;
��+ ,
m_Notifications
�� #
[
��# $
i
��$ %
]
��% &
=
��' (
e
��) *
;
��* +
}
�� 
}
�� 
m_PreviousTime
�� 
=
�� 
playable
�� %
.
��% &
GetTime
��& -
(
��- .
)
��. /
;
��/ 0
}
�� 	
void
�� 
SortNotifications
�� 
(
�� 
)
��  
{
�� 	
if
�� 
(
�� %
m_NeedSortNotifications
�� '
)
��' (
{
�� 
m_Notifications
�� 
.
��  
Sort
��  $
(
��$ %
(
��% &
x
��& '
,
��' (
y
��) *
)
��* +
=>
��, .
x
��/ 0
.
��0 1
time
��1 5
.
��5 6
	CompareTo
��6 ?
(
��? @
y
��@ A
.
��A B
time
��B F
)
��F G
)
��G H
;
��H I%
m_NeedSortNotifications
�� '
=
��( )
false
��* /
;
��/ 0
}
�� 
}
�� 	
static
�� 
bool
�� $
CanRestoreNotification
�� *
(
��* +
NotificationEntry
��+ <
e
��= >
,
��> ?
	FrameData
��@ I
info
��J N
,
��N O
double
��P V
currentTime
��W b
,
��b c
double
��d j
previousTime
��k w
)
��w x
{
�� 	
if
�� 
(
�� 
e
�� 
.
�� 
triggerOnce
�� 
)
�� 
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
info
�� 
.
�� 

timeLooped
�� 
)
��  
return
�� 
true
�� 
;
�� 
return
�� 
previousTime
�� 
>
��  !
currentTime
��" -
&&
��. 0
currentTime
��1 <
<=
��= ?
e
��@ A
.
��A B
time
��B F
;
��F G
}
�� 	
void
�� )
TriggerNotificationsInRange
�� (
(
��( )
double
��) /
start
��0 5
,
��5 6
double
��7 =
end
��> A
,
��A B
	FrameData
��C L
info
��M Q
,
��Q R
Playable
��S [
playable
��\ d
,
��d e
bool
��f j

checkState
��k u
)
��u v
{
�� 	
if
�� 
(
�� 
start
�� 
<=
�� 
end
�� 
)
�� 
{
�� 
var
�� 
playMode
�� 
=
�� 
Application
�� *
.
��* +
	isPlaying
��+ 4
;
��4 5
for
�� 
(
�� 
var
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
m_Notifications
��$ 3
.
��3 4
Count
��4 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
var
�� 
e
�� 
=
�� 
m_Notifications
�� +
[
��+ ,
i
��, -
]
��- .
;
��. /
if
�� 
(
�� 
e
�� 
.
�� 
notificationFired
�� +
&&
��, .
(
��/ 0

checkState
��0 :
||
��; =
e
��> ?
.
��? @
triggerOnce
��@ K
)
��K L
)
��L M
continue
��  
;
��  !
var
�� 
notificationTime
�� (
=
��) *
e
��+ ,
.
��, -
time
��- 1
;
��1 2
if
�� 
(
�� 
e
�� 
.
�� 
prewarm
�� !
&&
��" $
notificationTime
��% 5
<
��6 7
end
��8 ;
&&
��< >
(
��? @
e
��@ A
.
��A B
triggerInEditor
��B Q
||
��R T
playMode
��U ]
)
��] ^
)
��^ _
{
�� 
Trigger_internal
�� (
(
��( )
playable
��) 1
,
��1 2
info
��3 7
.
��7 8
output
��8 >
,
��> ?
ref
��@ C
e
��D E
)
��E F
;
��F G
m_Notifications
�� '
[
��' (
i
��( )
]
��) *
=
��+ ,
e
��- .
;
��. /
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
notificationTime
�� ,
<
��- .
start
��/ 4
||
��5 7
notificationTime
��8 H
>
��I J
end
��K N
)
��N O
continue
�� $
;
��$ %
if
�� 
(
�� 
e
�� 
.
�� 
triggerInEditor
�� -
||
��. 0
playMode
��1 9
)
��9 :
{
�� 
Trigger_internal
�� ,
(
��, -
playable
��- 5
,
��5 6
info
��7 ;
.
��; <
output
��< B
,
��B C
ref
��D G
e
��H I
)
��I J
;
��J K
m_Notifications
�� +
[
��+ ,
i
��, -
]
��- .
=
��/ 0
e
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� ,
SyncDurationWithExternalSource
�� +
(
��+ ,
Playable
��, 4
playable
��5 =
)
��= >
{
�� 	
if
�� 
(
�� 
m_TimeSource
�� 
.
�� 
IsValid
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
playable
�� 
.
�� 
SetDuration
�� $
(
��$ %
m_TimeSource
��% 1
.
��1 2
GetDuration
��2 =
(
��= >
)
��> ?
)
��? @
;
��@ A
playable
�� 
.
�� 
SetTimeWrapMode
�� (
(
��( )
m_TimeSource
��) 5
.
��5 6
GetTimeWrapMode
��6 E
(
��E F
)
��F G
)
��G H
;
��H I
}
�� 
}
�� 	
static
�� 
void
�� 
Trigger_internal
�� $
(
��$ %
Playable
��% -
playable
��. 6
,
��6 7
PlayableOutput
��8 F
output
��G M
,
��M N
ref
��P S
NotificationEntry
��T e
e
��f g
)
��g h
{
�� 	
output
�� 
.
�� 
PushNotification
�� #
(
��# $
playable
��$ ,
,
��, -
e
��. /
.
��/ 0
payload
��0 7
)
��7 8
;
��8 9
e
�� 
.
�� 
notificationFired
�� 
=
��  !
true
��" &
;
��& '
}
�� 	
static
�� 
void
�� 
Restore_internal
�� $
(
��$ %
ref
��% (
NotificationEntry
��) :
e
��; <
)
��< =
{
�� 	
e
�� 
.
�� 
notificationFired
�� 
=
��  !
false
��" '
;
��' (
}
�� 	
}
�� 
}�� �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Attributes\TrackColorAttribute.cs
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
}!! �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\TimelineUpgrade.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\ClipUpgrade.cs
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
}"" �E
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\ScheduleRuntimeClip.cs
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
EvaluationType	TTu �
.
TT� �
Evaluate
TT� �
;
TT� �
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
}oo �f
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\AnimatorBindingCache.cs
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
y	 �
.
� �
applyRootMotion
� �
&&
� �
x
� �
.
� �
humanoid
� �
==
� �
y
� �
.
� �
humanoid
� �
;
� �
}
� �
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
GetHashCode	{ �
(
� �
)
� �
,
� �
obj
� �
.
� �
humanoid
� �
.
� �
GetHashCode
� �
(
� �
)
� �
)
� �
;
� �
}
� �
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
EditorCurveBinding	  q �
[
  � �
]
  � �
>
  � �
(
  � �#
AnimatorEntryComparer
  � �
.
  � �
Instance
  � �
)
  � �
;
  � �
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
[	!! �
]
!!� �
>
!!� �
(
!!� �
)
!!� �
;
!!� �
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
	transform	FF~ �
)
FF� �
,
FF� �
typeof
FF� �
(
FF� �
	Transform
FF� �
)
FF� �
,
FF� �
TRPlaceHolder
FF� �
)
FF� �
)
FF� �
;
FF� �
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
$str	mmn �
)
mm� �
||
mm� �
binding
mm� �
.
mm� �
propertyName
mm� �
.
mm� �

StartsWith
mm� �
(
mm� �
$str
mm� �
)
mm� �
)
mm� �
)
mm� �
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
)	 �
{
�� 	
m_ClipCache
�� 
.
�� 
Remove
�� 
(
�� 
clip
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Activation\ActivationPlayableAsset.cs
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
} �[
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\MarkerList.cs
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
$str	gg �
)
gg� �
;
gg� �
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
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
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
�� 
	m_Objects
�� "
.
��" #
Count
��# (
-
��) *
$num
��+ ,
;
��, -
i
��. /
>=
��0 2
$num
��3 4
;
��4 5
i
��6 7
--
��7 9
)
��9 :
{
�� 
object
�� 
o
�� 
=
�� 
	m_Objects
�� $
[
��$ %
i
��% &
]
��& '
;
��' (
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% e
)
��e f
;
��f g
	m_Objects
�� 
.
�� 
RemoveAt
�� &
(
��& '
i
��' (
)
��( )
;
��) *
}
�� 
}
�� 
m_CacheDirty
�� 
=
�� 
true
�� 
;
��  
}
�� 	
void
�� 

BuildCache
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_CacheDirty
�� 
)
�� 
{
�� 
m_Cache
�� 
=
�� 
new
�� 
List
�� "
<
��" #
IMarker
��# *
>
��* +
(
��+ ,
	m_Objects
��, 5
.
��5 6
Count
��6 ;
)
��; <
;
��< = 
m_HasNotifications
�� "
=
��# $
false
��% *
;
��* +
foreach
�� 
(
�� 
var
�� 
o
�� 
in
�� !
	m_Objects
��" +
)
��+ ,
{
�� 
if
�� 
(
�� 
o
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
m_Cache
�� 
.
��  
Add
��  #
(
��# $
o
��$ %
as
��& (
IMarker
��) 0
)
��0 1
;
��1 2
if
�� 
(
�� 
o
�� 
is
��  
INotification
��! .
)
��. /
{
��  
m_HasNotifications
�� .
=
��/ 0
true
��1 5
;
��5 6
}
�� 
}
�� 
}
�� 
m_CacheDirty
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
}
�� 	
}
�� 
}�� �9
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimelineUndo.cs
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
}mm �_
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ParticleControlPlayable.cs
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

randomSeed	y �
)
� �
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
�� 
simTime
�� 
<
�� 
epsilon
�� &
)
��& '
||
��( *
Mathf
�� 
.
�� 
Approximately
�� '
(
��' (

m_LastTime
��( 2
,
��2 3

kUnsetTime
��4 >
)
��> ?
||
��@ B
(
�� 
expectedDelta
�� "
>
��# $
particleSystem
��% 3
.
��3 4
main
��4 8
.
��8 9
duration
��9 A
)
��A B
||
��C E
!
�� 
(
�� 
Mathf
�� 
.
�� 
Abs
�� 
(
��   
expectedSystemTime
��  2
-
��3 4
particleSystem
��5 C
.
��C D
time
��D H
)
��H I
<
��J K
Time
��L P
.
��P Q&
maximumParticleDeltaTime
��Q i
)
��i j
;
��j k
if
�� 
(
�� 
restart
�� 
)
�� 
{
�� 
particleSystem
�� "
.
��" #
Simulate
��# +
(
��+ ,
$num
��, -
,
��- .
true
��/ 3
,
��3 4
true
��5 9
)
��9 :
;
��: ;
particleSystem
�� "
.
��" #
Simulate
��# +
(
��+ ,
simTime
��, 3
,
��3 4
true
��5 9
,
��9 :
false
��; @
)
��@ A
;
��A B
m_SystemTime
��  
=
��! "
simTime
��# *
;
��* +
}
�� 
else
�� 
{
�� 
float
�� $
particleSystemDuration
�� 0
=
��1 2
simTime
��3 :
>
��; <)
particleSystemDurationLoop0
��= X
?
��Y Z
particleSystem
��[ i
.
��i j
main
��j n
.
��n o
duration
��o w
:
��x y*
particleSystemDurationLoop0��z �
;��� �
float
�� 
fracTime
�� "
=
��# $
simTime
��% ,
%
��- .$
particleSystemDuration
��/ E
;
��E F
float
�� 
	deltaTime
�� #
=
��$ %
fracTime
��& .
-
��/ 0
m_SystemTime
��1 =
;
��= >
if
�� 
(
�� 
	deltaTime
�� !
<
��" #
-
��$ %
epsilon
��% ,
)
��, -
	deltaTime
�� !
=
��" #
fracTime
��$ ,
+
��- .)
particleSystemDurationLoop0
��/ J
-
��K L
m_SystemTime
��M Y
;
��Y Z
particleSystem
�� "
.
��" #
Simulate
��# +
(
��+ ,
	deltaTime
��, 5
,
��5 6
true
��7 ;
,
��; <
false
��= B
)
��B C
;
��C D
m_SystemTime
��  
+=
��! #
	deltaTime
��$ -
;
��- .
}
�� 

m_LastTime
�� 
=
�� 
	localTime
�� &
;
��& '
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnBehaviourPlay
�� ,
(
��, -
Playable
��- 5
playable
��6 >
,
��> ?
	FrameData
��@ I
info
��J N
)
��N O
{
�� 	

m_LastTime
�� 
=
�� 

kUnsetTime
�� #
;
��# $
}
�� 	
public
�� 
override
�� 
void
�� 
OnBehaviourPause
�� -
(
��- .
Playable
��. 6
playable
��7 ?
,
��? @
	FrameData
��A J
info
��K O
)
��O P
{
�� 	

m_LastTime
�� 
=
�� 

kUnsetTime
�� #
;
��# $
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Animation\AnimationPlayableAsset.cs
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
�� 
bool
�� 
removeStartOffset
�� %
{
�� 	
get
�� 
{
�� 
return
�� !
m_RemoveStartOffset
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_RemoveStartOffset
�� %
=
��& '
value
��( -
;
��- .
}
��/ 0
}
�� 	
public
�� 
bool
�� 
applyFootIK
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_ApplyFootIK
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_ApplyFootIK
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
LoopMode
�� 
loop
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Loop
�� 
;
��  
}
��! "
set
�� 
{
�� 
m_Loop
�� 
=
�� 
value
��  
;
��  !
}
��" #
}
�� 	
internal
�� 
bool
�� 
hasRootTransforms
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clip
�� 
!=
��  "
null
��# '
&&
��( *
HasRootTransforms
��+ <
(
��< =
m_Clip
��= C
)
��C D
;
��D E
}
��F G
}
�� 	
internal
�� 
AppliedOffsetMode
�� "
appliedOffsetMode
��# 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
public
�� 
AnimationClip
�� 
clip
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clip
�� 
;
��  
}
��! "
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
!=
�� 
null
�� !
)
��! "
name
�� 
=
�� 
$str
�� 7
+
��8 9
value
��: ?
.
��? @
name
��@ D
;
��D E
m_Clip
�� 
=
�� 
value
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
double
�� 
duration
�� '
{
�� 	
get
�� 
{
�� 
double
�� 
length
�� 
=
�� 
TimeUtility
��  +
.
��+ ,$
GetAnimationClipLength
��, B
(
��B C
clip
��C G
)
��G H
;
��H I
if
�� 
(
�� 
length
�� 
<
�� 
float
�� "
.
��" #
Epsilon
��# *
)
��* +
return
�� 
base
�� 
.
��  
duration
��  (
;
��( )
return
�� 
length
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
yield
�� 
return
�� &
AnimationPlayableBinding
�� 7
.
��7 8
Create
��8 >
(
��> ?
name
��? C
,
��C D
this
��E I
)
��I J
;
��J K
}
��L M
}
�� 	
public
�� 
override
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D

GameObject
��E O
go
��P R
)
��R S
{
�� 	
Playable
�� 
root
�� 
=
�� 
CreatePlayable
�� *
(
��* +
graph
��+ 0
,
��0 1
m_Clip
��2 8
,
��8 9
position
��: B
,
��B C
eulerAngles
��D O
,
��O P
removeStartOffset
��Q b
,
��b c
appliedOffsetMode
��d u
,
��u v
applyFootIK��w �
,��� �
m_Loop��� �
)��� �
;��� �'
m_AnimationOffsetPlayable
�� %
=
��& '%
AnimationOffsetPlayable
��( ?
.
��? @
Null
��@ D
;
��D E
if
�� 
(
�� 
root
�� 
.
�� 
IsValid
�� 
(
�� 
)
�� 
&&
�� !
root
��" &
.
��& '
IsPlayableOfType
��' 7
<
��7 8%
AnimationOffsetPlayable
��8 O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� '
m_AnimationOffsetPlayable
�� )
=
��* +
(
��, -%
AnimationOffsetPlayable
��- D
)
��D E
root
��E I
;
��I J
}
�� 
LiveLink
�� 
(
�� 
)
�� 
;
�� 
return
�� 
root
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D
AnimationClip
��E R
clip
��S W
,
��W X
Vector3
��Y `
positionOffset
��a o
,
��o p
Vector3
��q x
eulerOffset��y �
,��� �
bool��� �!
removeStartOffset��� �
,��� �!
AppliedOffsetMode��� �
mode��� �
,��� �
bool��� �
applyFootIK��� �
,��� �
LoopMode��� �
loop��� �
)��� �
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
��$ %
legacy
��% +
)
��+ ,
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
var
�� 
clipPlayable
�� 
=
�� #
AnimationClipPlayable
�� 4
.
��4 5
Create
��5 ;
(
��; <
graph
��< A
,
��A B
clip
��C G
)
��G H
;
��H I
clipPlayable
�� 
.
�� "
SetRemoveStartOffset
�� -
(
��- .
removeStartOffset
��. ?
)
��? @
;
��@ A
clipPlayable
�� 
.
�� 
SetApplyFootIK
�� '
(
��' (
applyFootIK
��( 3
)
��3 4
;
��4 5
clipPlayable
�� 
.
�� !
SetOverrideLoopTime
�� ,
(
��, -
loop
��- 1
!=
��2 4
LoopMode
��5 =
.
��= >
UseSourceAsset
��> L
)
��L M
;
��M N
clipPlayable
�� 
.
�� 
SetLoopTime
�� $
(
��$ %
loop
��% )
==
��* ,
LoopMode
��- 5
.
��5 6
On
��6 8
)
��8 9
;
��9 :
Playable
�� 
root
�� 
=
�� 
clipPlayable
�� (
;
��( )
if
�� 
(
�� $
ShouldApplyScaleRemove
�� &
(
��& '
mode
��' +
)
��+ ,
)
��, -
{
�� 
var
�� 
removeScale
�� 
=
��  !*
AnimationRemoveScalePlayable
��" >
.
��> ?
Create
��? E
(
��E F
graph
��F K
,
��K L
$num
��M N
)
��N O
;
��O P
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� "
,
��" #
$num
��$ %
,
��% &
removeScale
��' 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
removeScale
�� 
.
�� 
SetInputWeight
�� *
(
��* +
$num
��+ ,
,
��, -
$num
��. 2
)
��2 3
;
��3 4
root
�� 
=
�� 
removeScale
�� "
;
��" #
}
�� 
if
�� 
(
�� 
ShouldApplyOffset
�� !
(
��! "
mode
��" &
,
��& '
clip
��( ,
)
��, -
)
��- .
{
�� 
var
�� 
offsetPlayable
�� "
=
��# $%
AnimationOffsetPlayable
��% <
.
��< =
Create
��= C
(
��C D
graph
��D I
,
��I J
positionOffset
��K Y
,
��Y Z

Quaternion
��[ e
.
��e f
Euler
��f k
(
��k l
eulerOffset
��l w
)
��w x
,
��x y
$num
��z {
)
��{ |
;
��| }
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� "
,
��" #
$num
��$ %
,
��% &
offsetPlayable
��' 5
,
��5 6
$num
��7 8
)
��8 9
;
��9 :
offsetPlayable
�� 
.
�� 
SetInputWeight
�� -
(
��- .
$num
��. /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
root
�� 
=
�� 
offsetPlayable
�� %
;
��% &
}
�� 
return
�� 
root
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
ShouldApplyOffset
�� -
(
��- .
AppliedOffsetMode
��. ?
mode
��@ D
,
��D E
AnimationClip
��F S
clip
��T X
)
��X Y
{
�� 	
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
||
��: <
mode
��= A
==
��B D
AppliedOffsetMode
��E V
.
��V W
SceneOffsetLegacy
��W h
)
��h i
return
�� 
false
�� 
;
�� 
return
�� 
HasRootTransforms
�� $
(
��$ %
clip
��% )
)
��) *
;
��* +
}
�� 	
private
�� 
static
�� 
bool
�� $
ShouldApplyScaleRemove
�� 2
(
��2 3
AppliedOffsetMode
��3 D
mode
��E I
)
��I J
{
�� 	
return
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� ,
.
��, -%
SceneOffsetLegacyEditor
��- D
||
��E G
mode
��H L
==
��M O
AppliedOffsetMode
��P a
.
��a b
SceneOffsetLegacy
��b s
||
��t v
mode
��w {
==
��| ~ 
AppliedOffsetMode�� �
.��� �%
TransformOffsetLegacy��� �
;��� �
}
�� 	
public
�� 
void
�� 
LiveLink
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
�� '
m_AnimationOffsetPlayable
�� )
.
��) *
IsValid
��* 1
(
��1 2
)
��2 3
)
��3 4
{
�� '
m_AnimationOffsetPlayable
�� )
.
��) *
SetPosition
��* 5
(
��5 6
position
��6 >
)
��> ?
;
��? @'
m_AnimationOffsetPlayable
�� )
.
��) *
SetRotation
��* 5
(
��5 6
rotation
��6 >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
caps
�� 
=
�� 
ClipCaps
�� #
.
��# $
Extrapolation
��$ 1
|
��2 3
ClipCaps
��4 <
.
��< =
SpeedMultiplier
��= L
|
��M N
ClipCaps
��O W
.
��W X
Blending
��X `
;
��` a
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� "
&&
��# %
(
��& '
m_Loop
��' -
!=
��. 0
LoopMode
��1 9
.
��9 :
Off
��: =
)
��= >
&&
��? A
(
��B C
m_Loop
��C I
!=
��J L
LoopMode
��M U
.
��U V
UseSourceAsset
��V d
||
��e g
m_Clip
��h n
.
��n o
	isLooping
��o x
)
��x y
)
��y z
caps
�� 
|=
�� 
ClipCaps
�� $
.
��$ %
Looping
��% ,
;
��, -
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� "
&&
��# %
!
��& '
m_Clip
��' -
.
��- .
empty
��. 3
)
��3 4
caps
�� 
|=
�� 
ClipCaps
�� $
.
��$ %
ClipIn
��% +
;
��+ ,
return
�� 
caps
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
ResetOffsets
��  
(
��  !
)
��! "
{
�� 	
position
�� 
=
�� 
Vector3
�� 
.
�� 
zero
�� #
;
��# $
eulerAngles
�� 
=
�� 
Vector3
�� !
.
��! "
zero
��" &
;
��& '
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
driver
�� 
.
�� 
AddFromClip
�� 
(
�� 
m_Clip
�� %
)
��% &
;
��& '
}
�� 	
internal
�� 
static
�� 
bool
�� 
HasRootTransforms
�� .
(
��. /
AnimationClip
��/ <
clip
��= A
)
��A B
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
empty
��% *
)
��* +
return
�� 
false
�� 
;
�� 
return
�� 
clip
�� 
.
�� 
hasRootMotion
�� %
||
��& (
clip
��) -
.
��- .%
hasGenericRootTransform
��. E
||
��F H
clip
��I M
.
��M N
hasMotionCurves
��N ]
||
��^ `
clip
��a e
.
��e f
hasRootCurves
��f s
;
��s t
}
�� 	
}
�� 
}�� �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeElement.cs
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
} �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\GroupTrack.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Properties\AssemblyInfo.cs
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
]H I�
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\AnimationPlayableAssetUpgrade.cs
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
}11 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\IMarker.cs
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
} �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\RuntimeClipBase.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\MarkerTrack.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Timeline.deprecated.cs
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
$str	 �
,
� �
false
� �
)
� �
]
� �
Video
� �
=
� �
$num
� �
,
� �
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
}"" �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\InfiniteRuntimeClip.cs
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
}.. �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ITimeControl.cs
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
} �*
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\NotificationUtilities.cs
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
IMarker			} �
>
		� �
markers
		� �
,
		� �

GameObject
		� �
go
		� �
)
		� �
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
}66 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\WeightUtility.cs
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
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TrackAsset.cs
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
TrackBindingTypeAttribute	NNs �
>
NN� �
(
NN� �
)
NN� �
;
NN� �
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
�� 
UpdateDuration
�� 
(
�� 
)
��  
;
��  !
return
�� 
(
�� 
double
�� 
)
�� 
(
��  
m_End
��  %
-
��& '
m_Start
��( /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
bool
�� 
muted
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Muted
��  
;
��  !
}
��" #
set
�� 
{
�� 
m_Muted
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 	
public
�� 
bool
�� 
mutedInHierarchy
�� $
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
muted
�� 
)
�� 
return
�� 
true
�� 
;
��  

TrackAsset
�� 
p
�� 
=
�� 
this
�� #
;
��# $
while
�� 
(
�� 
p
�� 
.
�� 
parent
�� 
as
��  "

TrackAsset
��# -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
p
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
p
��$ %
.
��% &
parent
��& ,
;
��, -
if
�� 
(
�� 
p
�� 
as
�� 

GroupTrack
�� '
!=
��( *
null
��+ /
)
��/ 0
return
�� 
p
��  
.
��  !
mutedInHierarchy
��! 1
;
��1 2
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
TimelineAsset
�� 
timelineAsset
�� *
{
�� 	
get
�� 
{
�� 
var
�� 
node
�� 
=
�� 
this
�� 
;
��  
while
�� 
(
�� 
node
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
if
�� 
(
�� 
node
�� 
.
�� 
parent
�� #
==
��$ &
null
��' +
)
��+ ,
return
�� 
null
�� #
;
��# $
var
�� 
seq
�� 
=
�� 
node
�� "
.
��" #
parent
��# )
as
��* ,
TimelineAsset
��- :
;
��: ;
if
�� 
(
�� 
seq
�� 
!=
�� 
null
�� #
)
��# $
return
�� 
seq
�� "
;
��" #
node
�� 
=
�� 
node
�� 
.
��  
parent
��  &
as
��' )

TrackAsset
��* 4
;
��4 5
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
PlayableAsset
�� 
parent
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_Parent
�� !
;
��! "
}
��# $
internal
�� 
set
�� 
{
�� 
m_Parent
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
TimelineClip
�� '
>
��' (
GetClips
��) 1
(
��1 2
)
��2 3
{
�� 	
return
�� 
clips
�� 
;
�� 
}
�� 	
internal
�� 
TimelineClip
�� 
[
�� 
]
�� 
clips
��  %
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_Clips
�� 
==
�� 
null
�� #
)
��# $
m_Clips
�� 
=
�� 
new
�� !
List
��" &
<
��& '
TimelineClip
��' 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
m_ClipsCache
��  
==
��! #
null
��$ (
)
��( )
{
�� 
m_CacheSorted
�� !
=
��" #
false
��$ )
;
��) *
m_ClipsCache
��  
=
��! "
m_Clips
��# *
.
��* +
ToArray
��+ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
return
�� 
m_ClipsCache
�� #
;
��# $
}
�� 
}
�� 	
public
�� 
virtual
�� 
bool
�� 
isEmpty
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
!
�� 
hasClips
�� "
&&
��# %
!
��& '
	hasCurves
��' 0
&&
��1 3
GetMarkerCount
��4 B
(
��B C
)
��C D
==
��E G
$num
��H I
;
��I J
}
��K L
}
�� 	
public
�� 
bool
�� 
hasClips
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clips
��  
!=
��! #
null
��$ (
&&
��) +
m_Clips
��, 3
.
��3 4
Count
��4 9
!=
��: <
$num
��= >
;
��> ?
}
��@ A
}
�� 	
public
�� 
bool
�� 
	hasCurves
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Curves
�� !
!=
��" $
null
��% )
&&
��* ,
!
��- .
m_Curves
��. 6
.
��6 7
empty
��7 <
;
��< =
}
��> ?
}
�� 	
public
�� 
bool
�� 

isSubTrack
�� 
{
�� 	
get
�� 
{
�� 
var
�� 
owner
�� 
=
�� 
parent
�� "
as
��# %

TrackAsset
��& 0
;
��0 1
return
�� 
owner
�� 
!=
�� 
null
��  $
&&
��% '
owner
��( -
.
��- .
GetType
��. 5
(
��5 6
)
��6 7
==
��8 :
GetType
��; B
(
��B C
)
��C D
;
��D E
}
�� 
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� '
TrackBindingTypeAttribute
�� )
	attribute
��* 3
;
��3 4
if
�� 
(
�� 
!
�� .
 s_TrackBindingTypeAttributeCache
�� 5
.
��5 6
TryGetValue
��6 A
(
��A B
GetType
��B I
(
��I J
)
��J K
,
��K L
out
��M P
	attribute
��Q Z
)
��Z [
)
��[ \
{
�� 
	attribute
�� 
=
�� 
(
��  !'
TrackBindingTypeAttribute
��! :
)
��: ;
	Attribute
��; D
.
��D E 
GetCustomAttribute
��E W
(
��W X
GetType
��X _
(
��_ `
)
��` a
,
��a b
typeof
��c i
(
��i j(
TrackBindingTypeAttribute��j �
)��� �
)��� �
;��� �.
 s_TrackBindingTypeAttributeCache
�� 4
.
��4 5
Add
��5 8
(
��8 9
GetType
��9 @
(
��@ A
)
��A B
,
��B C
	attribute
��D M
)
��M N
;
��N O
}
�� 
var
�� 
trackBindingType
�� $
=
��% &
	attribute
��' 0
!=
��1 3
null
��4 8
?
��9 :
	attribute
��; D
.
��D E
type
��E I
:
��J K
null
��L P
;
��P Q
yield
�� 
return
�� #
ScriptPlayableBinding
�� 2
.
��2 3
Create
��3 9
(
��9 :
name
��: >
,
��> ?
this
��@ D
,
��D E
trackBindingType
��F V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetChildTracks
��' 5
(
��5 6
)
��6 7
{
�� 	#
UpdateChildTrackCache
�� !
(
��! "
)
��" #
;
��# $
return
�� 
m_ChildTrackCache
�� $
;
��$ %
}
�� 	
internal
�� 
string
�� $
customPlayableTypename
�� .
{
�� 	
get
�� 
{
�� 
return
�� *
m_CustomPlayableFullTypename
�� 5
;
��5 6
}
��7 8
set
�� 
{
�� *
m_CustomPlayableFullTypename
�� .
=
��/ 0
value
��1 6
;
��6 7
}
��8 9
}
�� 	
public
�� 
AnimationClip
�� 
curves
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_Curves
�� !
;
��! "
}
��# $
internal
�� 
set
�� 
{
�� 
m_Curves
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
string
�� 
ICurvesOwner
�� 
.
�� 
defaultCurvesName
�� -
{
�� 	
get
�� 
{
�� 
return
��  
kDefaultCurvesName
�� +
;
��+ ,
}
��- .
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 
asset
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
this
�� 
;
�� 
}
��  
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 

assetOwner
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
timelineAsset
�� &
;
��& '
}
��( )
}
�� 	

TrackAsset
�� 
ICurvesOwner
�� 
.
��  
targetTrack
��  +
{
�� 	
get
�� 
{
�� 
return
�� 
this
�� 
;
�� 
}
��  
}
�� 	
internal
�� 
List
�� 
<
�� 
ScriptableObject
�� &
>
��& '
subTracksObjects
��( 8
{
�� 	
get
�� 
{
�� 
return
�� 

m_Children
�� #
;
��# $
}
��% &
}
�� 	
public
�� 
bool
�� 
locked
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Locked
�� !
;
��! "
}
��# $
set
�� 
{
�� 
m_Locked
�� 
=
�� 
value
�� "
;
��" #
}
��$ %
}
�� 	
public
�� 
bool
�� 
lockedInHierarchy
�� %
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
locked
�� 
)
�� 
return
�� 
true
�� 
;
��  

TrackAsset
�� 
p
�� 
=
�� 
this
�� #
;
��# $
while
�� 
(
�� 
p
�� 
.
�� 
parent
�� 
as
��  "

TrackAsset
��# -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
p
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
p
��$ %
.
��% &
parent
��& ,
;
��, -
if
�� 
(
�� 
p
�� 
as
�� 

GroupTrack
�� '
!=
��( *
null
��+ /
)
��/ 0
return
�� 
p
��  
.
��  !
lockedInHierarchy
��! 2
;
��2 3
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
�� #
supportsNotifications
�� )
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
!
�� %
m_SupportsNotifications
�� ,
.
��, -
HasValue
��- 5
)
��5 6
{
�� %
m_SupportsNotifications
�� +
=
��, -#
NotificationUtilities
��. C
.
��C D,
TrackTypeSupportsNotifications
��D b
(
��b c
GetType
��c j
(
��j k
)
��k l
)
��l m
;
��m n
}
�� 
return
�� %
m_SupportsNotifications
�� .
.
��. /
Value
��/ 4
;
��4 5
}
�� 
}
�� 	
void
�� 
__internalAwake
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_Clips
�� 
==
�� 
null
�� 
)
��  
m_Clips
�� 
=
�� 
new
�� 
List
�� "
<
��" #
TimelineClip
��# /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
m_ChildTrackCache
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 

m_Children
�� 
==
�� 
null
�� "
)
��" #

m_Children
�� 
=
�� 
new
��  
List
��! %
<
��% &
ScriptableObject
��& 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 

m_Children
�� #
.
��# $
Count
��$ )
-
��* +
$num
��, -
;
��- .
i
��/ 0
>=
��1 3
$num
��4 5
;
��5 6
i
��7 8
--
��8 :
)
��: ;
{
�� 
object
�� 
o
�� 
=
�� 

m_Children
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% j
)
��j k
;
��k l

m_Children
�� 
.
�� 
RemoveAt
�� '
(
��' (
i
��( )
)
��) *
;
��* +
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
CreateCurves
��  
(
��  !
string
��! '
curvesClipName
��( 6
)
��6 7
{
�� 	
if
�� 
(
�� 
m_Curves
�� 
!=
�� 
null
��  
)
��  !
return
�� 
;
�� 
m_Curves
�� 
=
�� %
TimelineCreateUtilities
�� .
.
��. /)
CreateAnimationClipForTrack
��/ J
(
��J K
string
��K Q
.
��Q R
IsNullOrEmpty
��R _
(
��_ `
curvesClipName
��` n
)
��n o
?
��p q!
kDefaultCurvesName��r �
:��� �
curvesClipName��� �
,��� �
this��� �
,��� �
true��� �
)��� �
;��� �
}
�� 	
public
�� 
virtual
�� 
Playable
�� 
CreateTrackMixer
��  0
(
��0 1
PlayableGraph
��1 >
graph
��? D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
int
��U X

inputCount
��Y c
)
��c d
{
�� 	
return
�� 
Playable
�� 
.
�� 
Create
�� "
(
��" #
graph
��# (
,
��( )

inputCount
��* 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
sealed
�� 
override
�� 
Playable
�� '
CreatePlayable
��( 6
(
��6 7
PlayableGraph
��7 D
graph
��E J
,
��J K

GameObject
��L V
go
��W Y
)
��Y Z
{
�� 	
return
�� 
Playable
�� 
.
�� 
Null
��  
;
��  !
}
�� 	
public
�� 
TimelineClip
�� 
CreateDefaultClip
�� -
(
��- .
)
��. /
{
�� 	
var
�� %
trackClipTypeAttributes
�� '
=
��( )
GetType
��* 1
(
��1 2
)
��2 3
.
��3 4!
GetCustomAttributes
��4 G
(
��G H
typeof
��H N
(
��N O$
TrackClipTypeAttribute
��O e
)
��e f
,
��f g
true
��h l
)
��l m
;
��m n
Type
�� 
playableAssetType
�� "
=
��# $
null
��% )
;
��) *
foreach
�� 
(
�� 
var
�� $
trackClipTypeAttribute
�� /
in
��0 2%
trackClipTypeAttributes
��3 J
)
��J K
{
�� 
var
�� 
	attribute
�� 
=
�� $
trackClipTypeAttribute
��  6
as
��7 9$
TrackClipTypeAttribute
��: P
;
��P Q
if
�� 
(
�� 
	attribute
�� 
!=
��  
null
��! %
&&
��& (
typeof
��) /
(
��/ 0
IPlayableAsset
��0 >
)
��> ?
.
��? @
IsAssignableFrom
��@ P
(
��P Q
	attribute
��Q Z
.
��Z [
inspectedType
��[ h
)
��h i
&&
��j l
typeof
��m s
(
��s t
ScriptableObject��t �
)��� �
.��� � 
IsAssignableFrom��� �
(��� �
	attribute��� �
.��� �
inspectedType��� �
)��� �
)��� �
{
�� 
playableAssetType
�� %
=
��& '
	attribute
��( 1
.
��1 2
inspectedType
��2 ?
;
��? @
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
playableAssetType
�� !
==
��" $
null
��% )
)
��) *
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! I
+
��J K
GetType
��L S
(
��S T
)
��T U
)
��U V
;
��V W
return
�� 
null
�� 
;
�� 
}
�� 
return
�� '
CreateAndAddNewClipOfType
�� ,
(
��, -
playableAssetType
��- >
)
��> ?
;
��? @
}
�� 	
public
�� 
TimelineClip
�� 

CreateClip
�� &
<
��& '
T
��' (
>
��( )
(
��) *
)
��* +
where
��, 1
T
��2 3
:
��4 5
ScriptableObject
��6 F
,
��F G
IPlayableAsset
��H V
{
�� 	
return
�� 

CreateClip
�� 
(
�� 
typeof
�� $
(
��$ %
T
��% &
)
��& '
)
��' (
;
��( )
}
�� 	
public
�� 
bool
�� 

DeleteClip
�� 
(
�� 
TimelineClip
�� +
clip
��, 0
)
��0 1
{
�� 	
if
�� 
(
�� 
!
�� 
m_Clips
�� 
.
�� 
Contains
�� !
(
��! "
clip
��" &
)
��& '
)
��' (
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 s
)
��s t
;
��t u
return
�� 
timelineAsset
��  
!=
��! #
null
��$ (
&&
��) +
timelineAsset
��, 9
.
��9 :

DeleteClip
��: D
(
��D E
clip
��E I
)
��I J
;
��J K
}
�� 	
public
�� 
IMarker
�� 
CreateMarker
�� #
(
��# $
Type
��$ (
type
��) -
,
��- .
double
��/ 5
time
��6 :
)
��: ;
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
CreateMarker
�� )
(
��) *
type
��* .
,
��. /
time
��0 4
,
��4 5
this
��6 :
)
��: ;
;
��; <
}
�� 	
public
�� 
T
�� 
CreateMarker
�� 
<
�� 
T
�� 
>
��  
(
��  !
double
��! '
time
��( ,
)
��, -
where
��. 3
T
��4 5
:
��6 7
ScriptableObject
��8 H
,
��H I
IMarker
��J Q
{
�� 	
return
�� 
(
�� 
T
�� 
)
�� 
CreateMarker
�� "
(
��" #
typeof
��# )
(
��) *
T
��* +
)
��+ ,
,
��, -
time
��. 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
bool
�� 
DeleteMarker
��  
(
��  !
IMarker
��! (
marker
��) /
)
��/ 0
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Remove
�� #
(
��# $
marker
��$ *
)
��* +
;
��+ ,
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IMarker
�� "
>
��" #

GetMarkers
��$ .
(
��. /
)
��/ 0
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 

GetMarkers
�� '
(
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
int
�� 
GetMarkerCount
�� !
(
��! "
)
��" #
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Count
�� "
;
��" #
}
�� 	
public
�� 
IMarker
�� 
	GetMarker
��  
(
��  !
int
��! $
idx
��% (
)
��( )
{
�� 	
return
�� 
	m_Markers
�� 
[
�� 
idx
��  
]
��  !
;
��! "
}
�� 	
internal
�� 
TimelineClip
�� 

CreateClip
�� (
(
��( )
System
��) /
.
��/ 0
Type
��0 4
requestedType
��5 B
)
��B C
{
�� 	
if
�� 
(
�� 
ValidateClipType
��  
(
��  !
requestedType
��! .
)
��. /
)
��/ 0
return
�� '
CreateAndAddNewClipOfType
�� 0
(
��0 1
requestedType
��1 >
)
��> ?
;
��? @
throw
�� 
new
�� '
InvalidOperationException
�� /
(
��/ 0
$str
��0 @
+
��A B
requestedType
��C P
+
��Q R
$str
��S z
+
��{ |
GetType��} �
(��� �
)��� �
)��� �
;��� �
}
�� 	
internal
�� 
TimelineClip
�� '
CreateAndAddNewClipOfType
�� 7
(
��7 8
Type
��8 <
requestedType
��= J
)
��J K
{
�� 	
var
�� 
newClip
�� 
=
�� 
CreateClipOfType
�� *
(
��* +
requestedType
��+ 8
)
��8 9
;
��9 :
AddClip
�� 
(
�� 
newClip
�� 
)
�� 
;
�� 
return
�� 
newClip
�� 
;
�� 
}
�� 	
internal
�� 
TimelineClip
�� 
CreateClipOfType
�� .
(
��. /
Type
��/ 3
requestedType
��4 A
)
��A B
{
�� 	
if
�� 
(
�� 
!
�� 
ValidateClipType
�� !
(
��! "
requestedType
��" /
)
��/ 0
)
��0 1
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; K
+
��L M
requestedType
��N [
+
��\ ]
$str��^ �
+��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
var
�� 
playableAsset
�� 
=
�� 
CreateInstance
��  .
(
��. /
requestedType
��/ <
)
��< =
;
��= >
if
�� 
(
�� 
playableAsset
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; w
+
��x y
requestedType��z �
.��� �
Name��� �
)��� �
;��� �
}
�� 
playableAsset
�� 
.
�� 
name
�� 
=
��  
requestedType
��! .
.
��. /
Name
��/ 3
;
��3 4%
TimelineCreateUtilities
�� #
.
��# $!
SaveAssetIntoObject
��$ 7
(
��7 8
playableAsset
��8 E
,
��E F
this
��G K
)
��K L
;
��L M
TimelineUndo
�� 
.
�� '
RegisterCreatedObjectUndo
�� 2
(
��2 3
playableAsset
��3 @
,
��@ A
$str
��B O
)
��O P
;
��P Q
return
�� !
CreateClipFromAsset
�� &
(
��& '
playableAsset
��' 4
)
��4 5
;
��5 6
}
�� 	
internal
�� 
TimelineClip
�� )
CreateClipFromPlayableAsset
�� 9
(
��9 :
IPlayableAsset
��: H
asset
��I N
)
��N O
{
�� 	
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 7
)
��7 8
;
��8 9
if
�� 
(
�� 
(
�� 
asset
�� 
as
�� 
ScriptableObject
�� *
)
��* +
==
��, .
null
��/ 3
)
��3 4
throw
�� 
new
�� 
System
��  
.
��  !
ArgumentException
��! 2
(
��2 3
$str
��3 Q
+
��R S
$str��T �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
ValidateClipType
�� !
(
��! "
asset
��" '
.
��' (
GetType
��( /
(
��/ 0
)
��0 1
)
��1 2
)
��2 3
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; K
+
��L M
asset
��N S
.
��S T
GetType
��T [
(
��[ \
)
��\ ]
+
��^ _
$str��` �
+��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
return
�� !
CreateClipFromAsset
�� &
(
��& '
asset
��' ,
as
��- /
ScriptableObject
��0 @
)
��@ A
;
��A B
}
�� 	
private
�� 
TimelineClip
�� !
CreateClipFromAsset
�� 0
(
��0 1
ScriptableObject
��1 A
playableAsset
��B O
)
��O P
{
�� 	
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
this
��" &
,
��& '
$str
��( 5
)
��5 6
;
��6 7
var
�� 
newClip
�� 
=
�� ,
CreateNewClipContainerInternal
�� 8
(
��8 9
)
��9 :
;
��: ;
newClip
�� 
.
�� 
displayName
�� 
=
��  !
playableAsset
��" /
.
��/ 0
name
��0 4
;
��4 5
newClip
�� 
.
�� 
asset
�� 
=
�� 
playableAsset
�� )
;
��) *
IPlayableAsset
�� 
iPlayableAsset
�� )
=
��* +
playableAsset
��, 9
as
��: <
IPlayableAsset
��= K
;
��K L
if
�� 
(
�� 
iPlayableAsset
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
var
�� 
candidateDuration
�� %
=
��& '
iPlayableAsset
��( 6
.
��6 7
duration
��7 ?
;
��? @
if
�� 
(
�� 
!
�� 
double
�� 
.
�� 

IsInfinity
�� &
(
��& '
candidateDuration
��' 8
)
��8 9
&&
��: <
candidateDuration
��= N
>
��O P
$num
��Q R
)
��R S
newClip
�� 
.
�� 
duration
�� $
=
��% &
Math
��' +
.
��+ ,
Min
��, /
(
��/ 0
Math
��0 4
.
��4 5
Max
��5 8
(
��8 9
candidateDuration
��9 J
,
��J K
TimelineClip
��L X
.
��X Y
kMinDuration
��Y e
)
��e f
,
��f g
TimelineClip
��h t
.
��t u
kMaxTimeValue��u �
)��� �
;��� �
}
�� 
try
�� 
{
�� 
OnCreateClip
�� 
(
�� 
newClip
�� $
)
��$ %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
e
��  
.
��  !
Message
��! (
,
��( )
playableAsset
��* 7
)
��7 8
;
��8 9
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
newClip
�� 
;
�� 
}
�� 	
internal
�� 
IEnumerable
�� 
<
�� 
ScriptableObject
�� -
>
��- .
GetMarkersRaw
��/ <
(
��< =
)
��= >
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
GetRawMarkerList
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
internal
�� 
void
�� 
ClearMarkers
�� "
(
��" #
)
��# $
{
�� 	
	m_Markers
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
	AddMarker
�� 
(
��  
ScriptableObject
��  0
e
��1 2
)
��2 3
{
�� 	
	m_Markers
�� 
.
�� 
Add
�� 
(
�� 
e
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 
DeleteMarkerRaw
�� %
(
��% &
ScriptableObject
��& 6
marker
��7 =
)
��= >
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Remove
�� #
(
��# $
marker
��$ *
,
��* +
timelineAsset
��, 9
,
��9 :
this
��; ?
)
��? @
;
��@ A
}
�� 	
int
�� 
GetTimeRangeHash
�� 
(
�� 
)
�� 
{
�� 	
double
�� 
start
�� 
=
�� 
double
�� !
.
��! "
MaxValue
��" *
,
��* +
end
��, /
=
��0 1
double
��2 8
.
��8 9
MinValue
��9 A
;
��A B
foreach
�� 
(
�� 
var
�� 
marker
�� 
in
��  "

GetMarkers
��# -
(
��- .
)
��. /
)
��/ 0
{
�� 
if
�� 
(
�� 
!
�� 
(
�� 
marker
�� 
is
�� 
INotification
��  -
)
��- .
)
��. /
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
marker
�� 
.
�� 
time
�� 
<
��  !
start
��" '
)
��' (
start
�� 
=
�� 
marker
�� "
.
��" #
time
��# '
;
��' (
if
�� 
(
�� 
marker
�� 
.
�� 
time
�� 
>
��  !
end
��" %
)
��% &
end
�� 
=
�� 
marker
��  
.
��  !
time
��! %
;
��% &
}
�� 
return
�� 
start
�� 
.
�� 
GetHashCode
�� $
(
��$ %
)
��% &
.
��& '
CombineHash
��' 2
(
��2 3
end
��3 6
.
��6 7
GetHashCode
��7 B
(
��B C
)
��C D
)
��D E
;
��E F
}
�� 	
internal
�� 
void
�� 
AddClip
�� 
(
�� 
TimelineClip
�� *
newClip
��+ 2
)
��2 3
{
�� 	
if
�� 
(
�� 
!
�� 
m_Clips
�� 
.
�� 
Contains
�� !
(
��! "
newClip
��" )
)
��) *
)
��* +
{
�� 
m_Clips
�� 
.
�� 
Add
�� 
(
�� 
newClip
�� #
)
��# $
;
��$ %
m_ClipsCache
�� 
=
�� 
null
�� #
;
��# $
}
�� 
}
�� 	
Playable
�� )
CreateNotificationsPlayable
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A
Playable
��B J
mixerPlayable
��K X
,
��X Y

GameObject
��Z d
go
��e g
,
��g h
Playable
��i q
timelinePlayable��r �
)��� �
{
�� 	
s_BuildData
�� 
.
�� 

markerList
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +"
GatherNotificiations
��  
(
��  !
s_BuildData
��! ,
.
��, -

markerList
��- 7
)
��7 8
;
��8 9
var
�� "
notificationPlayable
�� $
=
��% &#
NotificationUtilities
��' <
.
��< =)
CreateNotificationsPlayable
��= X
(
��X Y
graph
��Y ^
,
��^ _
s_BuildData
��` k
.
��k l

markerList
��l v
,
��v w
go
��x z
)
��z {
;
��{ |
if
�� 
(
�� "
notificationPlayable
�� $
.
��$ %
IsValid
��% ,
(
��, -
)
��- .
)
��. /
{
�� "
notificationPlayable
�� $
.
��$ %
GetBehaviour
��% 1
(
��1 2
)
��2 3
.
��3 4

timeSource
��4 >
=
��? @
timelinePlayable
��A Q
;
��Q R
if
�� 
(
�� 
mixerPlayable
�� !
.
��! "
IsValid
��" )
(
��) *
)
��* +
)
��+ ,
{
�� "
notificationPlayable
�� (
.
��( )
SetInputCount
��) 6
(
��6 7
$num
��7 8
)
��8 9
;
��9 :
graph
�� 
.
�� 
Connect
�� !
(
��! "
mixerPlayable
��" /
,
��/ 0
$num
��1 2
,
��2 3"
notificationPlayable
��4 H
,
��H I
$num
��J K
)
��K L
;
��L M"
notificationPlayable
�� (
.
��( )
SetInputWeight
��) 7
(
��7 8
mixerPlayable
��8 E
,
��E F
$num
��G H
)
��H I
;
��I J
}
�� 
}
�� 
return
�� "
notificationPlayable
�� '
;
��' (
}
�� 	
internal
�� 
Playable
�� !
CreatePlayableGraph
�� -
(
��- .
PlayableGraph
��. ;
graph
��< A
,
��A B

GameObject
��C M
go
��N P
,
��P Q
IntervalTree
��R ^
<
��^ _
RuntimeElement
��_ m
>
��m n
tree
��o s
,
��s t
Playable
��u }
timelinePlayable��~ �
)��� �
{
�� 	
UpdateDuration
�� 
(
�� 
)
�� 
;
�� 
var
�� 
mixerPlayable
�� 
=
�� 
Playable
��  (
.
��( )
Null
��) -
;
��- .
if
�� 
(
�� &
CanCompileClipsRecursive
�� (
(
��( )
)
��) *
)
��* +
mixerPlayable
�� 
=
�� '
OnCreateClipPlayableGraph
��  9
(
��9 :
graph
��: ?
,
��? @
go
��A C
,
��C D
tree
��E I
)
��I J
;
��J K
var
�� #
notificationsPlayable
�� %
=
��& ')
CreateNotificationsPlayable
��( C
(
��C D
graph
��D I
,
��I J
mixerPlayable
��K X
,
��X Y
go
��Z \
,
��\ ]
timelinePlayable
��^ n
)
��n o
;
��o p
s_BuildData
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
if
�� 
(
�� 
!
�� #
notificationsPlayable
�� &
.
��& '
IsValid
��' .
(
��. /
)
��/ 0
&&
��1 3
!
��4 5
mixerPlayable
��5 B
.
��B C
IsValid
��C J
(
��J K
)
��K L
)
��L M
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� $
(
��$ %
$str
��% w
,
��w x
name
��y }
,
��} ~
GetType
�� 
(
�� 
)
�� 
.
�� 
FullName
�� &
)
��& '
;
��' (
return
�� 
Playable
�� 
.
��  
Create
��  &
(
��& '
graph
��' ,
)
��, -
;
��- .
}
�� 
return
�� #
notificationsPlayable
�� (
.
��( )
IsValid
��) 0
(
��0 1
)
��1 2
?
��3 4#
notificationsPlayable
��5 J
:
��K L
mixerPlayable
��M Z
;
��Z [
}
�� 	
internal
�� 
virtual
�� 
Playable
�� !
CompileClips
��" .
(
��. /
PlayableGraph
��/ <
graph
��= B
,
��B C

GameObject
��D N
go
��O Q
,
��Q R
IList
��S X
<
��X Y
TimelineClip
��Y e
>
��e f
timelineClips
��g t
,
��t u
IntervalTree��v �
<��� �
RuntimeElement��� �
>��� �
tree��� �
)��� �
{
�� 	
var
�� 
blend
�� 
=
�� 
CreateTrackMixer
�� (
(
��( )
graph
��) .
,
��. /
go
��0 2
,
��2 3
timelineClips
��4 A
.
��A B
Count
��B G
)
��G H
;
��H I
for
�� 
(
�� 
var
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
timelineClips
��  -
.
��- .
Count
��. 3
;
��3 4
c
��5 6
++
��6 8
)
��8 9
{
�� 
var
�� 
source
�� 
=
�� 
CreatePlayable
�� +
(
��+ ,
graph
��, 1
,
��1 2
go
��3 5
,
��5 6
timelineClips
��7 D
[
��D E
c
��E F
]
��F G
)
��G H
;
��H I
if
�� 
(
�� 
source
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
source
�� 
.
�� 
SetDuration
�� &
(
��& '
timelineClips
��' 4
[
��4 5
c
��5 6
]
��6 7
.
��7 8
duration
��8 @
)
��@ A
;
��A B
var
�� 
clip
�� 
=
�� 
new
�� "
RuntimeClip
��# .
(
��. /
timelineClips
��/ <
[
��< =
c
��= >
]
��> ?
,
��? @
source
��A G
,
��G H
blend
��I N
)
��N O
;
��O P
tree
�� 
.
�� 
Add
�� 
(
�� 
clip
�� !
)
��! "
;
��" #
graph
�� 
.
�� 
Connect
�� !
(
��! "
source
��" (
,
��( )
$num
��* +
,
��+ ,
blend
��- 2
,
��2 3
c
��4 5
)
��5 6
;
��6 7
blend
�� 
.
�� 
SetInputWeight
�� (
(
��( )
c
��) *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
}
�� 
}
�� %
ConfigureTrackAnimation
�� #
(
��# $
tree
��$ (
,
��( )
go
��* ,
,
��, -
blend
��. 3
)
��3 4
;
��4 5
return
�� 
blend
�� 
;
�� 
}
�� 	
void
�� $
GatherCompilableTracks
�� #
(
��# $
IList
��$ )
<
��) *

TrackAsset
��* 4
>
��4 5
tracks
��6 <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� 
muted
�� 
&&
�� 
CanCompileClips
�� )
(
��) *
)
��* +
)
��+ ,
tracks
�� 
.
�� 
Add
�� 
(
�� 
this
�� 
)
��  
;
��  !
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetChildTracks
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
c
�� 
!=
�� 
null
�� 
)
�� 
c
�� 
.
�� $
GatherCompilableTracks
�� ,
(
��, -
tracks
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
void
�� "
GatherNotificiations
�� !
(
��! "
List
��" &
<
��& '
IMarker
��' .
>
��. /
markers
��0 7
)
��7 8
{
�� 	
if
�� 
(
�� 
!
�� 
muted
�� 
&&
�� %
CanCompileNotifications
�� 1
(
��1 2
)
��2 3
)
��3 4
markers
�� 
.
�� 
AddRange
��  
(
��  !

GetMarkers
��! +
(
��+ ,
)
��, -
)
��- .
;
��. /
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetChildTracks
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
c
�� 
!=
�� 
null
�� 
)
�� 
c
�� 
.
�� "
GatherNotificiations
�� *
(
��* +
markers
��+ 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
internal
�� 
virtual
�� 
Playable
�� !'
OnCreateClipPlayableGraph
��" ;
(
��; <
PlayableGraph
��< I
graph
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
IntervalTree
��` l
<
��l m
RuntimeElement
��m {
>
��{ |
tree��} �
)��� �
{
�� 	
if
�� 
(
�� 
tree
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
$str
��T Z
)
��Z [
;
��[ \
if
�� 
(
�� 
go
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, P
,
��P Q
$str
��R V
)
��V W
;
��W X
s_BuildData
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  $
GatherCompilableTracks
�� "
(
��" #
s_BuildData
��# .
.
��. /
	trackList
��/ 8
)
��8 9
;
��9 :
if
�� 
(
�� 
s_BuildData
�� 
.
�� 
	trackList
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
Playable
�� 

layerMixer
�� 
=
��  !
Playable
��" *
.
��* +
Null
��+ /
;
��/ 0

ILayerable
�� 
	layerable
��  
=
��! "
this
��# '
as
��( *

ILayerable
��+ 5
;
��5 6
if
�� 
(
�� 
	layerable
�� 
!=
�� 
null
�� !
)
��! "

layerMixer
�� 
=
�� 
	layerable
�� &
.
��& '
CreateLayerMixer
��' 7
(
��7 8
graph
��8 =
,
��= >
go
��? A
,
��A B
s_BuildData
��C N
.
��N O
	trackList
��O X
.
��X Y
Count
��Y ^
)
��^ _
;
��_ `
if
�� 
(
�� 

layerMixer
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
s_BuildData
��$ /
.
��/ 0
	trackList
��0 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
var
�� 
mixer
�� 
=
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
[
��5 6
i
��6 7
]
��7 8
.
��8 9
CompileClips
��9 E
(
��E F
graph
��F K
,
��K L
go
��M O
,
��O P
s_BuildData
��Q \
.
��\ ]
	trackList
��] f
[
��f g
i
��g h
]
��h i
.
��i j
clips
��j o
,
��o p
tree
��q u
)
��u v
;
��v w
if
�� 
(
�� 
mixer
�� 
.
�� 
IsValid
�� %
(
��% &
)
��& '
)
��' (
{
�� 
graph
�� 
.
�� 
Connect
�� %
(
��% &
mixer
��& +
,
��+ ,
$num
��- .
,
��. /

layerMixer
��0 :
,
��: ;
i
��< =
)
��= >
;
��> ?

layerMixer
�� "
.
��" #
SetInputWeight
��# 1
(
��1 2
i
��2 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 

layerMixer
�� !
;
��! "
}
�� 
if
�� 
(
�� 
s_BuildData
�� 
.
�� 
	trackList
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
return
�� 
s_BuildData
�� "
.
��" #
	trackList
��# ,
[
��, -
$num
��- .
]
��. /
.
��/ 0
CompileClips
��0 <
(
��< =
graph
��= B
,
��B C
go
��D F
,
��F G
s_BuildData
��H S
.
��S T
	trackList
��T ]
[
��] ^
$num
��^ _
]
��_ `
.
��` a
clips
��a f
,
��f g
tree
��h l
)
��l m
;
��m n
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
s_BuildData
�� 
.
�� 
clipList
�� $
.
��$ %
AddRange
��% -
(
��- .
s_BuildData
��. 9
.
��9 :
	trackList
��: C
[
��C D
i
��D E
]
��E F
.
��F G
clips
��G L
)
��L M
;
��M N
bool
�� 
applyWarning
�� 
=
�� 
false
��  %
;
��% &
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
applyWarning
�� 
|=
�� 
i
��  !
>
��" #
$num
��$ %
&&
��& (
s_BuildData
��) 4
.
��4 5
	trackList
��5 >
[
��> ?
i
��? @
]
��@ A
.
��A B
	hasCurves
��B K
;
��K L
if
�� 
(
�� 
applyWarning
�� 
)
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str��! �
+��� �
s_BuildData��� �
.��� �
	trackList��� �
[��� �
$num��� �
]��� �
.��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
+��� �
$str��� �
)��� �
;��� �
return
�� 
CompileClips
�� 
(
��  
graph
��  %
,
��% &
go
��' )
,
��) *
s_BuildData
��+ 6
.
��6 7
clipList
��7 ?
,
��? @
tree
��A E
)
��E F
;
��F G
}
�� 	
internal
�� 
void
�� %
ConfigureTrackAnimation
�� -
(
��- .
IntervalTree
��. :
<
��: ;
RuntimeElement
��; I
>
��I J
tree
��K O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
Playable
��` h
blend
��i n
)
��n o
{
�� 	
if
�� 
(
�� 
!
�� 
	hasCurves
�� 
)
�� 
return
�� 
;
�� 
blend
�� 
.
�� #
SetAnimatedProperties
�� '
(
��' (
m_Curves
��( 0
)
��0 1
;
��1 2
tree
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
InfiniteRuntimeClip
�� ,
(
��, -
blend
��- 2
)
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� ,
OnTrackAnimationPlayableCreate
�� .
!=
��/ 1
null
��2 6
)
��6 7,
OnTrackAnimationPlayableCreate
�� .
.
��. /
Invoke
��/ 5
(
��5 6
this
��6 :
,
��: ;
go
��< >
,
��> ?
blend
��@ E
)
��E F
;
��F G
}
�� 	
internal
�� 
void
�� 
	SortClips
�� 
(
��  
)
��  !
{
�� 	
var
�� 
clipsAsArray
�� 
=
�� 
clips
�� $
;
��$ %
if
�� 
(
�� 
!
�� 
m_CacheSorted
�� 
)
�� 
{
�� 
Array
�� 
.
�� 
Sort
�� 
(
�� 
clips
��  
,
��  !
(
��" #
clip1
��# (
,
��( )
clip2
��* /
)
��/ 0
=>
��1 3
clip1
��4 9
.
��9 :
start
��: ?
.
��? @
	CompareTo
��@ I
(
��I J
clip2
��J O
.
��O P
start
��P U
)
��U V
)
��V W
;
��W X
m_CacheSorted
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
}
�� 	
internal
�� 
void
��  
ClearClipsInternal
�� (
(
��( )
)
��) *
{
�� 	
m_Clips
�� 
=
�� 
new
�� 
List
�� 
<
�� 
TimelineClip
�� +
>
��+ ,
(
��, -
)
��- .
;
��. /
m_ClipsCache
�� 
=
�� 
null
�� 
;
��  
}
�� 	
internal
�� 
void
�� $
ClearSubTracksInternal
�� ,
(
��, -
)
��- .
{
�� 	

m_Children
�� 
=
�� 
new
�� 
List
�� !
<
��! "
ScriptableObject
��" 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 

OnClipMove
��  
(
��  !
)
��! "
{
�� 	
m_CacheSorted
�� 
=
�� 
false
�� !
;
��! "
}
�� 	
internal
�� 
TimelineClip
�� ,
CreateNewClipContainerInternal
�� <
(
��< =
)
��= >
{
�� 	
var
�� 
clipContainer
�� 
=
�� 
new
��  #
TimelineClip
��$ 0
(
��0 1
this
��1 5
)
��5 6
;
��6 7
clipContainer
�� 
.
�� 
asset
�� 
=
��  !
null
��" &
;
��& '
var
�� 
newClipStart
�� 
=
�� 
$num
�� "
;
��" #
for
�� 
(
�� 
var
�� 
a
�� 
=
�� 
$num
�� 
;
�� 
a
�� 
<
�� 
m_Clips
��  '
.
��' (
Count
��( -
-
��. /
$num
��0 1
;
��1 2
a
��3 4
++
��4 6
)
��6 7
{
�� 
var
�� 
clipDuration
��  
=
��! "
m_Clips
��# *
[
��* +
a
��+ ,
]
��, -
.
��- .
duration
��. 6
;
��6 7
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� %
(
��% &
clipDuration
��& 2
)
��2 3
)
��3 4
clipDuration
��  
=
��! "
TimelineClip
��# /
.
��/ 0+
kDefaultClipDurationInSeconds
��0 M
;
��M N
newClipStart
�� 
=
�� 
Math
�� #
.
��# $
Max
��$ '
(
��' (
newClipStart
��( 4
,
��4 5
m_Clips
��6 =
[
��= >
a
��> ?
]
��? @
.
��@ A
start
��A F
+
��G H
clipDuration
��I U
)
��U V
;
��V W
}
�� 
clipContainer
�� 
.
�� 

mixInCurve
�� $
=
��% &
AnimationCurve
��' 5
.
��5 6
	EaseInOut
��6 ?
(
��? @
$num
��@ A
,
��A B
$num
��C D
,
��D E
$num
��F G
,
��G H
$num
��I J
)
��J K
;
��K L
clipContainer
�� 
.
�� 
mixOutCurve
�� %
=
��& '
AnimationCurve
��( 6
.
��6 7
	EaseInOut
��7 @
(
��@ A
$num
��A B
,
��B C
$num
��D E
,
��E F
$num
��G H
,
��H I
$num
��J K
)
��K L
;
��L M
clipContainer
�� 
.
�� 
start
�� 
=
��  !
newClipStart
��" .
;
��. /
clipContainer
�� 
.
�� 
duration
�� "
=
��# $
TimelineClip
��% 1
.
��1 2+
kDefaultClipDurationInSeconds
��2 O
;
��O P
clipContainer
�� 
.
�� 
displayName
�� %
=
��& '
$str
��( 2
;
��2 3
return
�� 
clipContainer
��  
;
��  !
}
�� 	
internal
�� 
void
�� 
AddChild
�� 
(
�� 

TrackAsset
�� )
child
��* /
)
��/ 0
{
�� 	
if
�� 
(
�� 
child
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 

m_Children
�� 
.
�� 
Add
�� 
(
�� 
child
��  
)
��  !
;
��! "
child
�� 
.
�� 
parent
�� 
=
�� 
this
�� 
;
��  

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� !
MoveLastTrackBefore
�� )
(
��) *

TrackAsset
��* 4
asset
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 

m_Children
�� 
==
�� 
null
�� "
||
��# %

m_Children
��& 0
.
��0 1
Count
��1 6
<
��7 8
$num
��9 :
||
��; =
asset
��> C
==
��D F
null
��G K
)
��K L
return
�� 
;
�� 
var
�� 
	lastTrack
�� 
=
�� 

m_Children
�� &
[
��& '

m_Children
��' 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
if
�� 
(
�� 
	lastTrack
�� 
==
�� 
asset
�� "
)
��" #
return
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

m_Children
��  *
.
��* +
Count
��+ 0
-
��1 2
$num
��3 4
;
��4 5
i
��6 7
++
��7 9
)
��9 :
{
�� 
if
�� 
(
�� 

m_Children
�� 
[
�� 
i
��  
]
��  !
==
��" $
asset
��% *
)
��* +
{
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
��  

m_Children
��! +
.
��+ ,
Count
��, 1
-
��2 3
$num
��4 5
;
��5 6
j
��7 8
>
��9 :
i
��; <
;
��< =
j
��> ?
--
��? A
)
��A B

m_Children
�� "
[
��" #
j
��# $
]
��$ %
=
��& '

m_Children
��( 2
[
��2 3
j
��3 4
-
��5 6
$num
��7 8
]
��8 9
;
��9 :

m_Children
�� 
[
�� 
i
��  
]
��  !
=
��" #
	lastTrack
��$ -
;
��- .

Invalidate
�� 
(
�� 
)
��  
;
��  !
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
bool
�� 
RemoveSubTrack
�� $
(
��$ %

TrackAsset
��% /
child
��0 5
)
��5 6
{
�� 	
if
�� 
(
�� 

m_Children
�� 
.
�� 
Remove
�� !
(
��! "
child
��" '
)
��' (
)
��( )
{
�� 

Invalidate
�� 
(
�� 
)
�� 
;
�� 
child
�� 
.
�� 
parent
�� 
=
�� 
null
�� #
;
��# $
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 

RemoveClip
��  
(
��  !
TimelineClip
��! -
clip
��. 2
)
��2 3
{
�� 	
m_Clips
�� 
.
�� 
Remove
�� 
(
�� 
clip
�� 
)
��  
;
��  !
m_ClipsCache
�� 
=
�� 
null
�� 
;
��  
}
�� 	
internal
�� 
virtual
�� 
void
�� 
GetEvaluationTime
�� /
(
��/ 0
out
��0 3
double
��4 :
outStart
��; C
,
��C D
out
��E H
double
��I O
outDuration
��P [
)
��[ \
{
�� 	
outStart
�� 
=
�� 
double
�� 
.
�� 
PositiveInfinity
�� .
;
��. /
var
�� 
outEnd
�� 
=
�� 
double
�� 
.
��  
NegativeInfinity
��  0
;
��0 1
if
�� 
(
�� 
	hasCurves
�� 
)
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outEnd
�� 
=
�� 
TimeUtility
�� $
.
��$ %$
GetAnimationClipLength
��% ;
(
��; <
curves
��< B
)
��B C
;
��C D
}
�� 
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
outStart
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $
clip
��$ (
.
��( )
start
��) .
,
��. /
outStart
��0 8
)
��8 9
;
��9 :
outEnd
�� 
=
�� 
Math
�� 
.
�� 
Max
�� !
(
��! "
clip
��" &
.
��& '
end
��' *
,
��* +
outEnd
��, 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
HasNotifications
��  
(
��  !
)
��! "
)
��" #
{
�� 
var
�� "
notificationDuration
�� (
=
��) *%
GetNotificationDuration
��+ B
(
��B C
)
��C D
;
��D E
outStart
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $"
notificationDuration
��$ 8
,
��8 9
outStart
��: B
)
��B C
;
��C D
outEnd
�� 
=
�� 
Math
�� 
.
�� 
Max
�� !
(
��! ""
notificationDuration
��" 6
,
��6 7
outEnd
��8 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� !
(
��! "
outStart
��" *
)
��* +
||
��, .
double
��/ 5
.
��5 6

IsInfinity
��6 @
(
��@ A
outEnd
��A G
)
��G H
)
��H I
outStart
�� 
=
�� 
outDuration
�� &
=
��' (
$num
��) ,
;
��, -
else
�� 
outDuration
�� 
=
�� 
outEnd
�� $
-
��% &
outStart
��' /
;
��/ 0
}
�� 	
internal
�� 
virtual
�� 
void
�� 
GetSequenceTime
�� -
(
��- .
out
��. 1
double
��2 8
outStart
��9 A
,
��A B
out
��C F
double
��G M
outDuration
��N Y
)
��Y Z
{
�� 	
GetEvaluationTime
�� 
(
�� 
out
�� !
outStart
��" *
,
��* +
out
��, /
outDuration
��0 ;
)
��; <
;
��< =
}
�� 	
public
�� 
virtual
�� 
void
�� 
GatherProperties
�� ,
(
��, -
PlayableDirector
��- =
director
��> F
,
��F G 
IPropertyCollector
��H Z
driver
��[ a
)
��a b
{
�� 	
var
�� 

gameObject
�� 
=
�� "
GetGameObjectBinding
�� 1
(
��1 2
director
��2 :
)
��: ;
;
��; <
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
driver
�� 
.
�� "
PushActiveGameObject
�� +
(
��+ ,

gameObject
��, 6
)
��6 7
;
��7 8
if
�� 
(
�� 
	hasCurves
�� 
)
�� 
driver
�� 
.
�� !
AddObjectProperties
�� *
(
��* +
this
��+ /
,
��/ 0
m_Curves
��1 9
)
��9 :
;
��: ;
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
if
�� 
(
�� 
clip
�� 
.
�� 
curves
�� 
!=
��  "
null
��# '
&&
��( *
clip
��+ /
.
��/ 0
asset
��0 5
!=
��6 8
null
��9 =
)
��= >
driver
�� 
.
�� !
AddObjectProperties
�� .
(
��. /
clip
��/ 3
.
��3 4
asset
��4 9
,
��9 :
clip
��; ?
.
��? @
curves
��@ F
)
��F G
;
��G H
IPropertyPreview
��  
modifier
��! )
=
��* +
clip
��, 0
.
��0 1
asset
��1 6
as
��7 9
IPropertyPreview
��: J
;
��J K
if
�� 
(
�� 
modifier
�� 
!=
�� 
null
��  $
)
��$ %
modifier
�� 
.
�� 
GatherProperties
�� -
(
��- .
director
��. 6
,
��6 7
driver
��8 >
)
��> ?
;
��? @
}
�� 
foreach
�� 
(
�� 
var
�� 
subtrack
�� !
in
��" $
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
if
�� 
(
�� 
subtrack
�� 
!=
�� 
null
��  $
)
��$ %
subtrack
�� 
.
�� 
GatherProperties
�� -
(
��- .
director
��. 6
,
��6 7
driver
��8 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
driver
�� 
.
�� !
PopActiveGameObject
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
internal
�� 

GameObject
�� "
GetGameObjectBinding
�� 0
(
��0 1
PlayableDirector
��1 A
director
��B J
)
��J K
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
var
�� 
binding
�� 
=
�� 
director
�� "
.
��" #
GetGenericBinding
��# 4
(
��4 5
this
��5 9
)
��9 :
;
��: ;
var
�� 

gameObject
�� 
=
�� 
binding
�� $
as
��% '

GameObject
��( 2
;
��2 3
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
return
�� 

gameObject
�� !
;
��! "
var
�� 
comp
�� 
=
�� 
binding
�� 
as
�� !
	Component
��" +
;
��+ ,
if
�� 
(
�� 
comp
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
comp
�� 
.
�� 

gameObject
�� &
;
��& '
return
�� 
null
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 
ValidateClipType
�� &
(
��& '
Type
��' +
clipType
��, 4
)
��4 5
{
�� 	
var
�� 
attrs
�� 
=
�� 
GetType
�� 
(
��  
)
��  !
.
��! "!
GetCustomAttributes
��" 5
(
��5 6
typeof
��6 <
(
��< =$
TrackClipTypeAttribute
��= S
)
��S T
,
��T U
true
��V Z
)
��Z [
;
��[ \
for
�� 
(
�� 
var
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
attrs
��  %
.
��% &
Length
��& ,
;
��, -
++
��. 0
c
��0 1
)
��1 2
{
�� 
var
�� 
attr
�� 
=
�� 
(
�� $
TrackClipTypeAttribute
�� 2
)
��2 3
attrs
��3 8
[
��8 9
c
��9 :
]
��: ;
;
��; <
if
�� 
(
�� 
attr
�� 
.
�� 
inspectedType
�� &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
clipType
��8 @
)
��@ A
)
��A B
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
typeof
�� 
(
�� 
PlayableTrack
�� '
)
��' (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
&&
��E G
typeof
�� 
(
�� 
IPlayableAsset
�� %
)
��% &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
clipType
��8 @
)
��@ A
&&
��B D
typeof
�� 
(
�� 
ScriptableObject
�� '
)
��' (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
clipType
��: B
)
��B C
;
��C D
}
�� 	
	protected
�� 
virtual
�� 
void
�� 
OnCreateClip
�� +
(
��+ ,
TimelineClip
��, 8
clip
��9 =
)
��= >
{
��? @
}
��@ A
void
�� 
UpdateDuration
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
	itemsHash
�� 
=
��  
CalculateItemsHash
�� .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
	itemsHash
�� 
==
�� 
m_ItemsHash
�� (
)
��( )
return
�� 
;
�� 
m_ItemsHash
�� 
=
�� 
	itemsHash
�� #
;
��# $
double
�� 

trackStart
�� 
,
�� 
trackDuration
�� ,
;
��, -
GetSequenceTime
�� 
(
�� 
out
�� 

trackStart
��  *
,
��* +
out
��, /
trackDuration
��0 =
)
��= >
;
��> ?
m_Start
�� 
=
�� 
(
�� 
DiscreteTime
�� #
)
��# $

trackStart
��$ .
;
��. /
m_End
�� 
=
�� 
(
�� 
DiscreteTime
�� !
)
��! "
(
��" #

trackStart
��# -
+
��. /
trackDuration
��0 =
)
��= >
;
��> ?
this
�� 
.
�� )
CalculateExtrapolationTimes
�� ,
(
��, -
)
��- .
;
��. /
}
�� 	
	protected
�� 
internal
�� 
virtual
�� "
int
��# & 
CalculateItemsHash
��' 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
HashUtility
�� 
.
�� 
CombineHash
�� *
(
��* +
GetClipsHash
��+ 7
(
��7 8
)
��8 9
,
��9 :"
GetAnimationClipHash
��; O
(
��O P
m_Curves
��P X
)
��X Y
,
��Y Z
GetTimeRangeHash
��[ k
(
��k l
)
��l m
)
��m n
;
��n o
}
�� 	
	protected
�	�	 
virtual
�	�	 
Playable
�	�	 "
CreatePlayable
�	�	# 1
(
�	�	1 2
PlayableGraph
�	�	2 ?
graph
�	�	@ E
,
�	�	E F

GameObject
�	�	G Q

gameObject
�	�	R \
,
�	�	\ ]
TimelineClip
�	�	^ j
clip
�	�	k o
)
�	�	o p
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 
graph
�	�	 
.
�	�	 
IsValid
�	�	 
(
�	�	 
)
�	�	  
)
�	�	  !
throw
�	�	 
new
�	�	 
ArgumentException
�	�	 +
(
�	�	+ ,
$str
�	�	, Q
)
�	�	Q R
;
�	�	R S
if
�	�	 
(
�	�	 
clip
�	�	 
==
�	�	 
null
�	�	 
)
�	�	 
throw
�	�	 
new
�	�	 #
ArgumentNullException
�	�	 /
(
�	�	/ 0
$str
�	�	0 6
)
�	�	6 7
;
�	�	7 8
var
�	�	 
asset
�	�	 
=
�	�	 
clip
�	�	 
.
�	�	 
asset
�	�	 "
as
�	�	# %
IPlayableAsset
�	�	& 4
;
�	�	4 5
if
�	�	 
(
�	�	 
asset
�	�	 
!=
�	�	 
null
�	�	 
)
�	�	 
{
�	�	 
var
�	�	 
handle
�	�	 
=
�	�	 
asset
�	�	 "
.
�	�	" #
CreatePlayable
�	�	# 1
(
�	�	1 2
graph
�	�	2 7
,
�	�	7 8

gameObject
�	�	9 C
)
�	�	C D
;
�	�	D E
if
�	�	 
(
�	�	 
handle
�	�	 
.
�	�	 
IsValid
�	�	 "
(
�	�	" #
)
�	�	# $
)
�	�	$ %
{
�	�	 
handle
�	�	 
.
�	�	 #
SetAnimatedProperties
�	�	 0
(
�	�	0 1
clip
�	�	1 5
.
�	�	5 6
curves
�	�	6 <
)
�	�	< =
;
�	�	= >
handle
�	�	 
.
�	�	 
SetSpeed
�	�	 #
(
�	�	# $
clip
�	�	$ (
.
�	�	( )
	timeScale
�	�	) 2
)
�	�	2 3
;
�	�	3 4
if
�	�	 
(
�	�	 "
OnClipPlayableCreate
�	�	 ,
!=
�	�	- /
null
�	�	0 4
)
�	�	4 5"
OnClipPlayableCreate
�	�	 ,
(
�	�	, -
clip
�	�	- 1
,
�	�	1 2

gameObject
�	�	3 =
,
�	�	= >
handle
�	�	? E
)
�	�	E F
;
�	�	F G
}
�	�	 
return
�	�	 
handle
�	�	 
;
�	�	 
}
�	�	 
return
�	�	 
Playable
�	�	 
.
�	�	 
Null
�	�	  
;
�	�	  !
}
�	�	 	
internal
�	�	 
void
�	�	 

Invalidate
�	�	  
(
�	�	  !
)
�	�	! "
{
�	�	 	
m_ChildTrackCache
�	�	 
=
�	�	 
null
�	�	  $
;
�	�	$ %
var
�	�	 
timeline
�	�	 
=
�	�	 
timelineAsset
�	�	 (
;
�	�	( )
if
�	�	 
(
�	�	 
timeline
�	�	 
!=
�	�	 
null
�	�	  
)
�	�	  !
{
�	�	 
timeline
�	�	 
.
�	�	 

Invalidate
�	�	 #
(
�	�	# $
)
�	�	$ %
;
�	�	% &
}
�	�	 
}
�	�	 	
internal
�	�	 
double
�	�	 %
GetNotificationDuration
�	�	 /
(
�	�	/ 0
)
�	�	0 1
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 #
supportsNotifications
�	�	 &
)
�	�	& '
{
�	�	 
return
�	�	 
$num
�	�	 
;
�	�	 
}
�	�	 
var
�	�	 
maxTime
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
marker
�	�	 
in
�	�	  "

GetMarkers
�	�	# -
(
�	�	- .
)
�	�	. /
)
�	�	/ 0
{
�	�	 
if
�	�	 
(
�	�	 
!
�	�	 
(
�	�	 
marker
�	�	 
is
�	�	 
INotification
�	�	  -
)
�	�	- .
)
�	�	. /
{
�	�	 
continue
�	�	 
;
�	�	 
}
�	�	 
maxTime
�	�	 
=
�	�	 
Math
�	�	 
.
�	�	 
Max
�	�	 "
(
�	�	" #
maxTime
�	�	# *
,
�	�	* +
marker
�	�	, 2
.
�	�	2 3
time
�	�	3 7
)
�	�	7 8
;
�	�	8 9
}
�	�	 
return
�	�	 
maxTime
�	�	 
;
�	�	 
}
�	�	 	
internal
�	�	 
virtual
�	�	 
bool
�	�	 
CanCompileClips
�	�	 -
(
�	�	- .
)
�	�	. /
{
�	�	 	
return
�	�	 
hasClips
�	�	 
||
�	�	 
	hasCurves
�	�	 (
;
�	�	( )
}
�	�	 	
internal
�	�	 
bool
�	�	 
IsCompilable
�	�	 "
(
�	�	" #
)
�	�	# $
{
�	�	 	
var
�	�	 
isContainer
�	�	 
=
�	�	 
typeof
�	�	 $
(
�	�	$ %

GroupTrack
�	�	% /
)
�	�	/ 0
.
�	�	0 1
IsAssignableFrom
�	�	1 A
(
�	�	A B
GetType
�	�	B I
(
�	�	I J
)
�	�	J K
)
�	�	K L
;
�	�	L M
if
�	�	 
(
�	�	 
isContainer
�	�	 
)
�	�	 
return
�	�	 
false
�	�	 
;
�	�	 
var
�	�	 
ret
�	�	 
=
�	�	 
!
�	�	 
mutedInHierarchy
�	�	 '
&&
�	�	( *
(
�	�	+ ,
CanCompileClips
�	�	, ;
(
�	�	; <
)
�	�	< =
||
�	�	> @%
CanCompileNotifications
�	�	A X
(
�	�	X Y
)
�	�	Y Z
)
�	�	Z [
;
�	�	[ \
if
�	�	 
(
�	�	 
!
�	�	 
ret
�	�	 
)
�	�	 
{
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
t
�	�	 
in
�	�	 !
GetChildTracks
�	�	" 0
(
�	�	0 1
)
�	�	1 2
)
�	�	2 3
{
�	�	 
if
�	�	 
(
�	�	 
t
�	�	 
.
�	�	 
IsCompilable
�	�	 &
(
�	�	& '
)
�	�	' (
)
�	�	( )
return
�	�	 
true
�	�	 #
;
�	�	# $
}
�	�	 
}
�	�	 
return
�	�	 
ret
�	�	 
;
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 #
UpdateChildTrackCache
�	�	 *
(
�	�	* +
)
�	�	+ ,
{
�	�	 	
if
�	�	 
(
�	�	 
m_ChildTrackCache
�	�	 !
==
�	�	" $
null
�	�	% )
)
�	�	) *
{
�	�	 
if
�	�	 
(
�	�	 

m_Children
�	�	 
==
�	�	 !
null
�	�	" &
||
�	�	' )

m_Children
�	�	* 4
.
�	�	4 5
Count
�	�	5 :
==
�	�	; =
$num
�	�	> ?
)
�	�	? @
m_ChildTrackCache
�	�	 %
=
�	�	& '
s_EmptyCache
�	�	( 4
;
�	�	4 5
else
�	�	 
{
�	�	 
var
�	�	 
childTracks
�	�	 #
=
�	�	$ %
new
�	�	& )
List
�	�	* .
<
�	�	. /

TrackAsset
�	�	/ 9
>
�	�	9 :
(
�	�	: ;

m_Children
�	�	; E
.
�	�	E F
Count
�	�	F K
)
�	�	K L
;
�	�	L M
for
�	�	 
(
�	�	 
int
�	�	 
i
�	�	 
=
�	�	  
$num
�	�	! "
;
�	�	" #
i
�	�	$ %
<
�	�	& '

m_Children
�	�	( 2
.
�	�	2 3
Count
�	�	3 8
;
�	�	8 9
i
�	�	: ;
++
�	�	; =
)
�	�	= >
{
�	�	 
var
�	�	 
subTrack
�	�	 $
=
�	�	% &

m_Children
�	�	' 1
[
�	�	1 2
i
�	�	2 3
]
�	�	3 4
as
�	�	5 7

TrackAsset
�	�	8 B
;
�	�	B C
if
�	�	 
(
�	�	 
subTrack
�	�	 $
!=
�	�	% '
null
�	�	( ,
)
�	�	, -
childTracks
�	�	 '
.
�	�	' (
Add
�	�	( +
(
�	�	+ ,
subTrack
�	�	, 4
)
�	�	4 5
;
�	�	5 6
}
�	�	 
m_ChildTrackCache
�	�	 %
=
�	�	& '
childTracks
�	�	( 3
;
�	�	3 4
}
�	�	 
}
�	�	 
}
�	�	 	
internal
�	�	 
virtual
�	�	 
int
�	�	 
Hash
�	�	 !
(
�	�	! "
)
�	�	" #
{
�	�	 	
return
�	�	 
clips
�	�	 
.
�	�	 
Length
�	�	 
+
�	�	  !
(
�	�	" #
	m_Markers
�	�	# ,
.
�	�	, -
Count
�	�	- 2
<<
�	�	3 5
$num
�	�	6 8
)
�	�	8 9
;
�	�	9 :
}
�	�	 	
int
�	�	 
GetClipsHash
�	�	 
(
�	�	 
)
�	�	 
{
�	�	 	
var
�	�	 
hash
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
clip
�	�	 
in
�	�	  
m_Clips
�	�	! (
)
�	�	( )
{
�	�	 
hash
�	�	 
=
�	�	 
hash
�	�	 
.
�	�	 
CombineHash
�	�	 '
(
�	�	' (
clip
�	�	( ,
.
�	�	, -
Hash
�	�	- 1
(
�	�	1 2
)
�	�	2 3
)
�	�	3 4
;
�	�	4 5
}
�	�	 
return
�	�	 
hash
�	�	 
;
�	�	 
}
�	�	 	
	protected
�	�	 
static
�	�	 
int
�	�	 "
GetAnimationClipHash
�	�	 1
(
�	�	1 2
AnimationClip
�	�	2 ?
clip
�	�	@ D
)
�	�	D E
{
�	�	 	
var
�	�	 
hash
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
if
�	�	 
(
�	�	 
clip
�	�	 
!=
�	�	 
null
�	�	 
&&
�	�	 
!
�	�	  !
clip
�	�	! %
.
�	�	% &
empty
�	�	& +
)
�	�	+ ,
hash
�	�	 
=
�	�	 
hash
�	�	 
.
�	�	 
CombineHash
�	�	 '
(
�	�	' (
clip
�	�	( ,
.
�	�	, -
	frameRate
�	�	- 6
.
�	�	6 7
GetHashCode
�	�	7 B
(
�	�	B C
)
�	�	C D
)
�	�	D E
.
�	�	 
CombineHash
�	�	  
(
�	�	  !
clip
�	�	! %
.
�	�	% &
length
�	�	& ,
.
�	�	, -
GetHashCode
�	�	- 8
(
�	�	8 9
)
�	�	9 :
)
�	�	: ;
;
�	�	; <
return
�	�	 
hash
�	�	 
;
�	�	 
}
�	�	 	
bool
�
�
 
HasNotifications
�
�
 
(
�
�
 
)
�
�
 
{
�
�
 	
return
�
�
 
	m_Markers
�
�
 
.
�
�
 
HasNotifications
�
�
 -
(
�
�
- .
)
�
�
. /
;
�
�
/ 0
}
�
�
 	
bool
�
�
 %
CanCompileNotifications
�
�
 $
(
�
�
$ %
)
�
�
% &
{
�
�
 	
return
�
�
 #
supportsNotifications
�
�
 (
&&
�
�
) +
	m_Markers
�
�
, 5
.
�
�
5 6
HasNotifications
�
�
6 F
(
�
�
F G
)
�
�
G H
;
�
�
H I
}
�
�
 	
bool
�
�
 &
CanCompileClipsRecursive
�
�
 %
(
�
�
% &
)
�
�
& '
{
�
�
 	
if
�
�
 
(
�
�
 
CanCompileClips
�
�
 
(
�
�
  
)
�
�
  !
)
�
�
! "
return
�
�
 
true
�
�
 
;
�
�
 
foreach
�
�
 
(
�
�
 
var
�
�
 
track
�
�
 
in
�
�
 !
GetChildTracks
�
�
" 0
(
�
�
0 1
)
�
�
1 2
)
�
�
2 3
{
�
�
 
if
�
�
 
(
�
�
 
track
�
�
 
.
�
�
 &
CanCompileClipsRecursive
�
�
 2
(
�
�
2 3
)
�
�
3 4
)
�
�
4 5
return
�
�
 
true
�
�
 
;
�
�
  
}
�
�
 
return
�
�
 
false
�
�
 
;
�
�
 
}
�
�
 	
}
�
�
 
}�
�
 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\TimeUtility.cs
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
)	pp �
;
pp� �
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
�� 
static
�� 
double
�� 
ParseTimeCode
�� *
(
��* +
string
��+ 1
timeCode
��2 :
,
��: ;
double
��< B
	frameRate
��C L
,
��L M
double
��N T
defaultValue
��U a
)
��a b
{
�� 	
timeCode
�� 
=
�� 

RemoveChar
�� !
(
��! "
timeCode
��" *
,
��* +
c
��, -
=>
��. 0
char
��1 5
.
��5 6
IsWhiteSpace
��6 B
(
��B C
c
��C D
)
��D E
)
��E F
;
��F G
string
�� 
[
�� 
]
�� 
sections
�� 
=
�� 
timeCode
��  (
.
��( )
Split
��) .
(
��. /
$char
��/ 2
)
��2 3
;
��3 4
if
�� 
(
�� 
sections
�� 
.
�� 
Length
�� 
==
��  "
$num
��# $
||
��% '
sections
��( 0
.
��0 1
Length
��1 7
>
��8 9
$num
��: ;
)
��; <
return
�� 
defaultValue
�� #
;
��# $
int
�� 
hours
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
minutes
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
seconds
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
frames
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
string
�� 
lastSection
�� "
=
��# $
sections
��% -
[
��- .
sections
��. 6
.
��6 7
Length
��7 =
-
��> ?
$num
��@ A
]
��A B
;
��B C
if
�� 
(
�� 
Regex
�� 
.
�� 
Match
�� 
(
��  
lastSection
��  +
,
��+ ,
$str
��- :
)
��: ;
.
��; <
Success
��< C
)
��C D
{
�� 
seconds
�� 
=
�� 
double
�� $
.
��$ %
Parse
��% *
(
��* +
lastSection
��+ 6
)
��6 7
;
��7 8
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
return
��- 3
defaultValue
��4 @
;
��@ A
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
minutes
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
hours
��- 2
=
��3 4
int
��5 8
.
��8 9
Parse
��9 >
(
��> ?
sections
��? G
[
��G H
sections
��H P
.
��P Q
Length
��Q W
-
��X Y
$num
��Z [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
Regex
�� 
.
�� 
Match
�� #
(
��# $
lastSection
��$ /
,
��/ 0
$str
��1 B
)
��B C
.
��C D
Success
��D K
)
��K L
{
�� 
string
�� 
stripped
�� '
=
��( )

RemoveChar
��* 4
(
��4 5
lastSection
��5 @
,
��@ A
c
��B C
=>
��D F
c
��G H
==
��I K
$char
��L O
||
��P R
c
��S T
==
��U W
$char
��X [
)
��[ \
;
��\ ]
frames
�� 
=
��  
double
��! '
.
��' (
Parse
��( -
(
��- .
stripped
��. 6
)
��6 7
;
��7 8
}
�� 
else
�� 
if
�� 
(
�� 
Regex
�� "
.
��" #
Match
��# (
(
��( )
lastSection
��) 4
,
��4 5
$str
��6 >
)
��> ?
.
��? @
Success
��@ G
)
��G H
{
�� 
frames
�� 
=
��  
int
��! $
.
��$ %
Parse
��% *
(
��* +
lastSection
��+ 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
return
�� 
defaultValue
�� +
;
��+ ,
}
�� 
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
seconds
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
minutes
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
hours
��- 2
=
��3 4
int
��5 8
.
��8 9
Parse
��9 >
(
��> ?
sections
��? G
[
��G H
sections
��H P
.
��P Q
Length
��Q W
-
��X Y
$num
��Z [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� 
frames
�� 
/
�� 
	frameRate
�� %
+
��& '
seconds
��( /
+
��0 1
minutes
��2 9
*
��: ;
$num
��< >
+
��? @
hours
��A F
*
��G H
$num
��I M
;
��M N
}
�� 	
public
�� 
static
�� 
double
�� $
GetAnimationClipLength
�� 3
(
��3 4
AnimationClip
��4 A
clip
��B F
)
��F G
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
�� 
$num
�� 
;
�� 
double
�� 
length
�� 
=
�� 
clip
��  
.
��  !
length
��! '
;
��' (
if
�� 
(
�� 
clip
�� 
.
�� 
	frameRate
�� 
>
��  
$num
��! "
)
��" #
{
�� 
double
�� 
frames
�� 
=
�� 
Mathf
��  %
.
��% &
Round
��& +
(
��+ ,
clip
��, 0
.
��0 1
length
��1 7
*
��8 9
clip
��: >
.
��> ?
	frameRate
��? H
)
��H I
;
��I J
length
�� 
=
�� 
frames
�� 
/
��  !
clip
��" &
.
��& '
	frameRate
��' 0
;
��0 1
}
�� 
return
�� 
length
�� 
;
�� 
}
�� 	
static
�� 
string
�� 

RemoveChar
��  
(
��  !
string
��! '
str
��( +
,
��+ ,
Func
��- 1
<
��1 2
char
��2 6
,
��6 7
bool
��8 <
>
��< =
charToRemoveFunc
��> N
)
��N O
{
�� 	
var
�� 
len
�� 
=
�� 
str
�� 
.
�� 
Length
��  
;
��  !
var
�� 
src
�� 
=
�� 
str
�� 
.
�� 
ToCharArray
�� %
(
��% &
)
��& '
;
��' (
var
�� 
dstIdx
�� 
=
�� 
$num
�� 
;
�� 
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
�� 
len
��  #
;
��# $
i
��% &
++
��& (
)
��( )
{
�� 
if
�� 
(
�� 
!
�� 
charToRemoveFunc
�� %
(
��% &
src
��& )
[
��) *
i
��* +
]
��+ ,
)
��, -
)
��- .
src
�� 
[
�� 
dstIdx
�� 
++
��  
]
��  !
=
��" #
src
��$ '
[
��' (
i
��( )
]
��) *
;
��* +
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
src
�� !
,
��! "
$num
��# $
,
��$ %
dstIdx
��& ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Scripting\PlayableTrack.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioClipProperties.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\BasicScriptPlayable.cs
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
}YY �/
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioPlayableAsset.cs
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
��  
.
��  !
volume
��! '
=
��( )
m_ClipProperties
��* :
.
��: ;
volume
��; A
;
��A B
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Evaluation\IntervalTree.cs
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
�� 
|=
�� 
isDirty
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Query
�� 
(
�� 
IntervalTreeNode
�� +
intervalTreeNode
��, <
,
��< =
Int64
��> C
value
��D I
,
��I J
List
��K O
<
��O P
T
��P Q
>
��Q R
results
��S Z
)
��Z [
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
�� 
intervalTreeNode
�� )
.
��) *
first
��* /
;
��/ 0
i
��1 2
<=
��3 5
intervalTreeNode
��6 F
.
��F G
last
��G K
;
��K L
i
��M N
++
��N P
)
��P Q
{
�� 
var
�� 
entry
�� 
=
�� 
	m_Entries
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
value
�� 
>=
�� 
entry
�� "
.
��" #
intervalStart
��# 0
&&
��1 3
value
��4 9
<
��: ;
entry
��< A
.
��A B
intervalEnd
��B M
)
��M N
{
�� 
results
�� 
.
�� 
Add
�� 
(
��  
entry
��  %
.
��% &
item
��& *
)
��* +
;
��+ ,
}
�� 
}
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
center
��! '
==
��( *
kCenterUnknown
��+ 9
)
��9 :
return
�� 
;
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
left
��! %
!=
��& (
kInvalidNode
��) 5
&&
��6 8
value
��9 >
<
��? @
intervalTreeNode
��A Q
.
��Q R
center
��R X
)
��X Y
Query
�� 
(
�� 
m_Nodes
�� 
[
�� 
intervalTreeNode
�� .
.
��. /
left
��/ 3
]
��3 4
,
��4 5
value
��6 ;
,
��; <
results
��= D
)
��D E
;
��E F
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
right
��! &
!=
��' )
kInvalidNode
��* 6
&&
��7 9
value
��: ?
>
��@ A
intervalTreeNode
��B R
.
��R S
center
��S Y
)
��Y Z
Query
�� 
(
�� 
m_Nodes
�� 
[
�� 
intervalTreeNode
�� .
.
��. /
right
��/ 4
]
��4 5
,
��5 6
value
��7 <
,
��< =
results
��> E
)
��E F
;
��F G
}
�� 	
private
�� 
void
�� 

QueryRange
�� 
(
��  
IntervalTreeNode
��  0
intervalTreeNode
��1 A
,
��A B
Int64
��C H
start
��I N
,
��N O
Int64
��P U
end
��V Y
,
��Y Z
List
��[ _
<
��_ `
T
��` a
>
��a b
results
��c j
)
��j k
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
�� 
intervalTreeNode
�� )
.
��) *
first
��* /
;
��/ 0
i
��1 2
<=
��3 5
intervalTreeNode
��6 F
.
��F G
last
��G K
;
��K L
i
��M N
++
��N P
)
��P Q
{
�� 
var
�� 
entry
�� 
=
�� 
	m_Entries
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
end
�� 
>=
�� 
entry
��  
.
��  !
intervalStart
��! .
&&
��/ 1
start
��2 7
<
��8 9
entry
��: ?
.
��? @
intervalEnd
��@ K
)
��K L
{
�� 
results
�� 
.
�� 
Add
�� 
(
��  
entry
��  %
.
��% &
item
��& *
)
��* +
;
��+ ,
}
�� 
}
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
center
��! '
==
��( *
kCenterUnknown
��+ 9
)
��9 :
return
�� 
;
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
left
��! %
!=
��& (
kInvalidNode
��) 5
&&
��6 8
start
��9 >
<
��? @
intervalTreeNode
��A Q
.
��Q R
center
��R X
)
��X Y

QueryRange
�� 
(
�� 
m_Nodes
�� "
[
��" #
intervalTreeNode
��# 3
.
��3 4
left
��4 8
]
��8 9
,
��9 :
start
��; @
,
��@ A
end
��B E
,
��E F
results
��G N
)
��N O
;
��O P
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
right
��! &
!=
��' )
kInvalidNode
��* 6
&&
��7 9
end
��: =
>
��> ?
intervalTreeNode
��@ P
.
��P Q
center
��Q W
)
��W X

QueryRange
�� 
(
�� 
m_Nodes
�� "
[
��" #
intervalTreeNode
��# 3
.
��3 4
right
��4 9
]
��9 :
,
��: ;
start
��< A
,
��A B
end
��C F
,
��F G
results
��H O
)
��O P
;
��P Q
}
�� 	
private
�� 
void
�� 
Rebuild
�� 
(
�� 
)
�� 
{
�� 	
m_Nodes
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
m_Nodes
�� 
.
�� 
Capacity
�� 
=
�� 
	m_Entries
�� (
.
��( )
Capacity
��) 1
;
��1 2
Rebuild
�� 
(
�� 
$num
�� 
,
�� 
	m_Entries
��  
.
��  !
Count
��! &
-
��' (
$num
��) *
)
��* +
;
��+ ,
}
�� 	
private
�� 
int
�� 
Rebuild
�� 
(
�� 
int
�� 
start
��  %
,
��% &
int
��' *
end
��+ .
)
��. /
{
�� 	
IntervalTreeNode
�� 
intervalTreeNode
�� -
=
��. /
new
��0 3
IntervalTreeNode
��4 D
(
��D E
)
��E F
;
��F G
int
�� 
count
�� 
=
�� 
end
�� 
-
�� 
start
�� #
+
��$ %
$num
��& '
;
��' (
if
�� 
(
�� 
count
�� 
<
�� 
kMinNodeSize
�� $
)
��$ %
{
�� 
intervalTreeNode
��  
=
��! "
new
��# &
IntervalTreeNode
��' 7
(
��7 8
)
��8 9
{
��: ;
center
��; A
=
��B C
kCenterUnknown
��D R
,
��R S
first
��T Y
=
��Z [
start
��\ a
,
��a b
last
��c g
=
��h i
end
��j m
,
��m n
left
��o s
=
��t u
kInvalidNode��v �
,��� �
right��� �
=��� �
kInvalidNode��� �
}��� �
;��� �
m_Nodes
�� 
.
�� 
Add
�� 
(
�� 
intervalTreeNode
�� ,
)
��, -
;
��- .
return
�� 
m_Nodes
�� 
.
�� 
Count
�� $
-
��% &
$num
��' (
;
��( )
}
�� 
var
�� 
min
�� 
=
�� 
Int64
�� 
.
�� 
MaxValue
�� $
;
��$ %
var
�� 
max
�� 
=
�� 
Int64
�� 
.
�� 
MinValue
�� $
;
��$ %
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
start
�� 
;
�� 
i
��  !
<=
��" $
end
��% (
;
��( )
i
��* +
++
��+ -
)
��- .
{
�� 
var
�� 
o
�� 
=
�� 
	m_Entries
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
min
�� 
=
�� 
Math
�� 
.
�� 
Min
�� 
(
�� 
min
�� "
,
��" #
o
��$ %
.
��% &
intervalStart
��& 3
)
��3 4
;
��4 5
max
�� 
=
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
max
�� "
,
��" #
o
��$ %
.
��% &
intervalEnd
��& 1
)
��1 2
;
��2 3
}
�� 
var
�� 
center
�� 
=
�� 
(
�� 
max
�� 
+
�� 
min
��  #
)
��# $
/
��% &
$num
��' (
;
��( )
intervalTreeNode
�� 
.
�� 
center
�� #
=
��$ %
center
��& ,
;
��, -
int
�� 
x
�� 
=
�� 
start
�� 
;
�� 
int
�� 
y
�� 
=
�� 
end
�� 
;
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
while
�� 
(
�� 
x
�� 
<=
�� 
end
�� 
&&
��  "
	m_Entries
��# ,
[
��, -
x
��- .
]
��. /
.
��/ 0
intervalEnd
��0 ;
<
��< =
center
��> D
)
��D E
x
�� 
++
�� 
;
�� 
while
�� 
(
�� 
y
�� 
>=
�� 
start
�� !
&&
��" $
	m_Entries
��% .
[
��. /
y
��/ 0
]
��0 1
.
��1 2
intervalEnd
��2 =
>=
��> @
center
��A G
)
��G H
y
�� 
--
�� 
;
�� 
if
�� 
(
�� 
x
�� 
>
�� 
y
�� 
)
�� 
break
�� 
;
�� 
var
�� 
nodeX
�� 
=
�� 
	m_Entries
�� %
[
��% &
x
��& '
]
��' (
;
��( )
var
�� 
nodeY
�� 
=
�� 
	m_Entries
�� %
[
��% &
y
��& '
]
��' (
;
��( )
	m_Entries
�� 
[
�� 
y
�� 
]
�� 
=
�� 
nodeX
�� $
;
��$ %
	m_Entries
�� 
[
�� 
x
�� 
]
�� 
=
�� 
nodeY
�� $
;
��$ %
}
�� 
intervalTreeNode
�� 
.
�� 
first
�� "
=
��# $
x
��% &
;
��& '
y
�� 
=
�� 
end
�� 
;
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
while
�� 
(
�� 
x
�� 
<=
�� 
end
�� 
&&
��  "
	m_Entries
��# ,
[
��, -
x
��- .
]
��. /
.
��/ 0
intervalStart
��0 =
<=
��> @
center
��A G
)
��G H
x
�� 
++
�� 
;
�� 
while
�� 
(
�� 
y
�� 
>=
�� 
start
�� !
&&
��" $
	m_Entries
��% .
[
��. /
y
��/ 0
]
��0 1
.
��1 2
intervalStart
��2 ?
>
��@ A
center
��B H
)
��H I
y
�� 
--
�� 
;
�� 
if
�� 
(
�� 
x
�� 
>
�� 
y
�� 
)
�� 
break
�� 
;
�� 
var
�� 
nodeX
�� 
=
�� 
	m_Entries
�� %
[
��% &
x
��& '
]
��' (
;
��( )
var
�� 
nodeY
�� 
=
�� 
	m_Entries
�� %
[
��% &
y
��& '
]
��' (
;
��( )
	m_Entries
�� 
[
�� 
y
�� 
]
�� 
=
�� 
nodeX
�� $
;
��$ %
	m_Entries
�� 
[
�� 
x
�� 
]
�� 
=
�� 
nodeY
�� $
;
��$ %
}
�� 
intervalTreeNode
�� 
.
�� 
last
�� !
=
��" #
y
��$ %
;
��% &
m_Nodes
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
IntervalTreeNode
�� ,
(
��, -
)
��- .
)
��. /
;
��/ 0
int
�� 
index
�� 
=
�� 
m_Nodes
�� 
.
��  
Count
��  %
-
��& '
$num
��( )
;
��) *
intervalTreeNode
�� 
.
�� 
left
�� !
=
��" #
kInvalidNode
��$ 0
;
��0 1
intervalTreeNode
�� 
.
�� 
right
�� "
=
��# $
kInvalidNode
��% 1
;
��1 2
if
�� 
(
�� 
start
�� 
<
�� 
intervalTreeNode
�� (
.
��( )
first
��) .
)
��. /
intervalTreeNode
��  
.
��  !
left
��! %
=
��& '
Rebuild
��( /
(
��/ 0
start
��0 5
,
��5 6
intervalTreeNode
��7 G
.
��G H
first
��H M
-
��N O
$num
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
end
�� 
>
�� 
intervalTreeNode
�� &
.
��& '
last
��' +
)
��+ ,
intervalTreeNode
��  
.
��  !
right
��! &
=
��' (
Rebuild
��) 0
(
��0 1
intervalTreeNode
��1 A
.
��A B
last
��B F
+
��G H
$num
��I J
,
��J K
end
��L O
)
��O P
;
��P Q
m_Nodes
�� 
[
�� 
index
�� 
]
�� 
=
�� 
intervalTreeNode
�� -
;
��- .
return
�� 
index
�� 
;
�� 
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
�� 	
	m_Entries
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
m_Nodes
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\NotificationFlags.cs
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
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\SignalTrack.cs
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
} �>
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\TimelineAttributes.cs
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
�� 
.
�� 
	childType
�� 
=
�� 
	childType
�� &
;
��& '
this
�� 
.
�� 
levels
�� 
=
�� 
levels
��  
;
��  !
}
�� 	
}
�� 
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
,
��* +
AllowMultiple
��, 9
=
��: ;
false
��< A
,
��A B
	Inherited
��C L
=
��M N
true
��O S
)
��S T
]
��T U
class
�� 	,
IgnoreOnPlayableTrackAttribute
��
 (
:
��) *
System
��+ 1
.
��1 2
	Attribute
��2 ;
{
��< =
}
��= >
class
�� 	 
TimeFieldAttribute
��
 
:
�� 
PropertyAttribute
�� 0
{
�� 
public
�� 
enum
�� 
UseEditMode
�� 
{
�� 	
None
�� 
,
�� 
ApplyEditMode
�� 
}
�� 	
public
�� 
UseEditMode
�� 
useEditMode
�� &
{
��' (
get
��) ,
;
��, -
}
��. /
public
��  
TimeFieldAttribute
�� !
(
��! "
UseEditMode
��" -
useEditMode
��. 9
=
��: ;
UseEditMode
��< G
.
��G H
ApplyEditMode
��H U
)
��U V
{
�� 	
this
�� 
.
�� 
useEditMode
�� 
=
�� 
useEditMode
�� *
;
��* +
}
�� 	
}
�� 
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
,
��* +
	Inherited
��, 5
=
��6 7
false
��8 =
)
��= >
]
��> ?
public
�� 

class
�� !
HideInMenuAttribute
�� $
:
��% &
	Attribute
��' 0
{
��1 2
}
��2 3
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
)
��* +
]
��+ ,
public
�� 

class
�� "
CustomStyleAttribute
�� %
:
��& '
	Attribute
��( 1
{
�� 
public
�� 
readonly
�� 
string
�� 
ussStyle
�� '
;
��' (
public
�� "
CustomStyleAttribute
�� #
(
��# $
string
��$ *
ussStyle
��+ 3
)
��3 4
{
�� 	
this
�� 
.
�� 
ussStyle
�� 
=
�� 
ussStyle
�� $
;
��$ %
}
�� 	
}
�� 
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
)
��* +
]
��+ ,
internal
�� 
class
�� #
MenuCategoryAttribute
�� (
:
��) *
	Attribute
��+ 4
{
�� 
public
�� 
readonly
�� 
string
�� 
category
�� '
;
��' (
public
�� #
MenuCategoryAttribute
�� $
(
��$ %
string
��% +
category
��, 4
)
��4 5
{
�� 	
this
�� 
.
�� 
category
�� 
=
�� 
category
�� $
??
��% '
string
��( .
.
��. /
Empty
��/ 4
;
��4 5
}
�� 	
}
�� 
}�� �1
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Control\ControlTrack.cs
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
}EE �!
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Audio\AudioMixerProperties.cs
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
}-- �>
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\AssetUpgrade\AnimationTrackUpgrade.cs
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
$str	 �
,
� �
true
� �
)
� �
]
� �
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
$str	 �
,
� �
true
� �
)
� �
]
� �
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
$str	&& �
,
&&� �
true
&&� �
)
&&� �
]
&&� �
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
$str	.. �
,
..� �
true
..� �
)
..� �
]
..� �
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
$str	66 �
,
66� �
true
66� �
)
66� �
]
66� �
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
}ff �3
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\ActivationControlPlayable.cs
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
ActivationControlPlayable	66s �
.
66� �
PostPlaybackState
66� �
postPlaybackState
66� �
)
66� �
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
�� 
(
�� 
postPlayback
��  
)
��  !
{
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Active
��' -
:
��- .

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
true
��) -
)
��- .
;
��. /
break
�� 
;
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Inactive
��' /
:
��/ 0

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
false
��) .
)
��. /
;
��/ 0
break
�� 
;
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Revert
��' -
:
��- .

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
m_InitialState
��) 7
==
��8 :
InitialState
��; G
.
��G H
Active
��H N
)
��N O
;
��O P
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Events\Signals\SignalEmitter.cs
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
}HH �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Playables\TimeControlPlayable.cs
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
}UU �C
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.timeline@1.4.4\Runtime\Utilities\Extrapolation.cs
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