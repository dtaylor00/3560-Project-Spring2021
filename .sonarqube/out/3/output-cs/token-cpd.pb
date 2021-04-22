¨*
¶C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\DropdownOptionListDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
Dropdown! )
.) *
OptionDataList* 8
)8 9
,9 :
true; ?
)? @
]@ A
class 	$
DropdownOptionListDrawer
 "
:# $
PropertyDrawer% 3
{ 
private 
ReorderableList 
m_ReorderableList  1
;1 2
private 
void 
Init 
( 
SerializedProperty ,
property- 5
)5 6
{ 	
if 
( 
m_ReorderableList !
!=" $
null% )
)) *
return 
; 
SerializedProperty 
array $
=% &
property' /
./ 0 
FindPropertyRelative0 D
(D E
$strE P
)P Q
;Q R
m_ReorderableList 
= 
new  #
ReorderableList$ 3
(3 4
property4 <
.< =
serializedObject= M
,M N
arrayO T
)T U
;U V
m_ReorderableList 
. 
drawElementCallback 1
=2 3
DrawOptionData4 B
;B C
m_ReorderableList 
. 
drawHeaderCallback 0
=1 2

DrawHeader3 =
;= >
m_ReorderableList 
. 
elementHeight +
+=, .
$num/ 1
;1 2
} 	
public 
override 
void 
OnGUI "
(" #
Rect# '
position( 0
,0 1
SerializedProperty2 D
propertyE M
,M N

GUIContentO Y
labelZ _
)_ `
{ 	
Init 
( 
property 
) 
; 
m_ReorderableList   
.   
DoList   $
(  $ %
position  % -
)  - .
;  . /
}!! 	
private## 
void## 

DrawHeader## 
(##  
Rect##  $
rect##% )
)##) *
{$$ 	
GUI%% 
.%% 
Label%% 
(%% 
rect%% 
,%% 
$str%% %
)%%% &
;%%& '
}&& 	
private(( 
void(( 
DrawOptionData(( #
(((# $
Rect(($ (
rect(() -
,((- .
int((/ 2
index((3 8
,((8 9
bool((: >
isActive((? G
,((G H
bool((I M
	isFocused((N W
)((W X
{)) 	
SerializedProperty** 
itemData** '
=**( )
m_ReorderableList*** ;
.**; <
serializedProperty**< N
.**N O"
GetArrayElementAtIndex**O e
(**e f
index**f k
)**k l
;**l m
SerializedProperty++ 
itemText++ '
=++( )
itemData++* 2
.++2 3 
FindPropertyRelative++3 G
(++G H
$str++H P
)++P Q
;++Q R
SerializedProperty,, 
	itemImage,, (
=,,) *
itemData,,+ 3
.,,3 4 
FindPropertyRelative,,4 H
(,,H I
$str,,I R
),,R S
;,,S T

RectOffset.. 
offset.. 
=.. 
new..  #

RectOffset..$ .
(... /
$num../ 0
,..0 1
$num..2 3
,..3 4
-..5 6
$num..6 7
,..7 8
-..9 :
$num..: ;
)..; <
;..< =
rect// 
=// 
offset// 
.// 
Add// 
(// 
rect// "
)//" #
;//# $
rect00 
.00 
height00 
=00 
EditorGUIUtility00 *
.00* +
singleLineHeight00+ ;
;00; <
	EditorGUI22 
.22 
PropertyField22 #
(22# $
rect22$ (
,22( )
itemText22* 2
,222 3

GUIContent224 >
.22> ?
none22? C
)22C D
;22D E
rect33 
.33 
y33 
+=33 
EditorGUIUtility33 &
.33& '
singleLineHeight33' 7
;337 8
	EditorGUI44 
.44 
PropertyField44 #
(44# $
rect44$ (
,44( )
	itemImage44* 3
,443 4

GUIContent445 ?
.44? @
none44@ D
)44D E
;44E F
}55 	
public77 
override77 
float77 
GetPropertyHeight77 /
(77/ 0
SerializedProperty770 B
property77C K
,77K L

GUIContent77M W
label77X ]
)77] ^
{88 	
Init99 
(99 
property99 
)99 
;99 
return;; 
m_ReorderableList;; $
.;;$ %
	GetHeight;;% .
(;;. /
);;/ 0
;;;0 1
}<< 	
}== 
}>> ı⁄
âC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\MenuOptions.cs
	namespace		 	
UnityEditor		
 
.		 
UI		 
{

 
static 

internal 
class 
MenuOptions %
{ 
private 
const 
string 
kUILayerName )
=* +
$str, 0
;0 1
private 
const 
string 
kStandardSpritePath 0
=7 8
$str9 O
;O P
private 
const 
string !
kBackgroundSpritePath 2
=7 8
$str9 Q
;Q R
private 
const 
string %
kInputFieldBackgroundPath 6
=7 8
$str9 [
;[ \
private 
const 
string 
	kKnobPath &
=7 8
$str9 K
;K L
private 
const 
string 
kCheckmarkPath +
=7 8
$str9 P
;P Q
private 
const 
string 
kDropdownArrowPath /
=7 8
$str9 T
;T U
private 
const 
string 
	kMaskPath &
=7 8
$str9 M
;M N
static 
private 
DefaultControls &
.& '
	Resources' 0
s_StandardResources1 D
;D E
static 
private 
DefaultControls &
.& '
	Resources' 0 
GetStandardResources1 E
(E F
)F G
{ 	
if 
( 
s_StandardResources #
.# $
standard$ ,
==- /
null0 4
)4 5
{   
s_StandardResources!! #
.!!# $
standard!!$ ,
=!!- .
AssetDatabase!!/ <
.!!< =#
GetBuiltinExtraResource!!= T
<!!T U
Sprite!!U [
>!![ \
(!!\ ]
kStandardSpritePath!!] p
)!!p q
;!!q r
s_StandardResources"" #
.""# $

background""$ .
=""/ 0
AssetDatabase""1 >
.""> ?#
GetBuiltinExtraResource""? V
<""V W
Sprite""W ]
>""] ^
(""^ _!
kBackgroundSpritePath""_ t
)""t u
;""u v
s_StandardResources## #
.### $

inputField##$ .
=##/ 0
AssetDatabase##1 >
.##> ?#
GetBuiltinExtraResource##? V
<##V W
Sprite##W ]
>##] ^
(##^ _%
kInputFieldBackgroundPath##_ x
)##x y
;##y z
s_StandardResources$$ #
.$$# $
knob$$$ (
=$$) *
AssetDatabase$$+ 8
.$$8 9#
GetBuiltinExtraResource$$9 P
<$$P Q
Sprite$$Q W
>$$W X
($$X Y
	kKnobPath$$Y b
)$$b c
;$$c d
s_StandardResources%% #
.%%# $
	checkmark%%$ -
=%%. /
AssetDatabase%%0 =
.%%= >#
GetBuiltinExtraResource%%> U
<%%U V
Sprite%%V \
>%%\ ]
(%%] ^
kCheckmarkPath%%^ l
)%%l m
;%%m n
s_StandardResources&& #
.&&# $
dropdown&&$ ,
=&&- .
AssetDatabase&&/ <
.&&< =#
GetBuiltinExtraResource&&= T
<&&T U
Sprite&&U [
>&&[ \
(&&\ ]
kDropdownArrowPath&&] o
)&&o p
;&&p q
s_StandardResources'' #
.''# $
mask''$ (
='') *
AssetDatabase''+ 8
.''8 9#
GetBuiltinExtraResource''9 P
<''P Q
Sprite''Q W
>''W X
(''X Y
	kMaskPath''Y b
)''b c
;''c d
}(( 
return)) 
s_StandardResources)) &
;))& '
}** 	
private,, 
class,,  
DefaultEditorFactory,, *
:,,+ ,
DefaultControls,,- <
.,,< =
IFactoryControls,,= M
{-- 	
public.. 
static..  
DefaultEditorFactory.. .
Default../ 6
=..7 8
new..9 < 
DefaultEditorFactory..= Q
(..Q R
)..R S
;..S T
public00 

GameObject00 
CreateGameObject00 .
(00. /
string00/ 5
name006 :
,00: ;
params00< B
Type00C G
[00G H
]00H I

components00J T
)00T U
{11 
return22 
ObjectFactory22 $
.22$ %
CreateGameObject22% 5
(225 6
name226 :
,22: ;

components22< F
)22F G
;22G H
}33 
}44 	
private66 
class66 
FactorySwapToEditor66 )
:66* +
IDisposable66, 7
{77 	
DefaultControls88 
.88 
IFactoryControls88 ,
factory88- 4
;884 5
public:: 
FactorySwapToEditor:: &
(::& '
)::' (
{;; 
factory<< 
=<< 
DefaultControls<< )
.<<) *
factory<<* 1
;<<1 2
DefaultControls== 
.==  
factory==  '
===( ) 
DefaultEditorFactory==* >
.==> ?
Default==? F
;==F G
}>> 
public@@ 
void@@ 
Dispose@@ 
(@@  
)@@  !
{AA 
DefaultControlsBB 
.BB  
factoryBB  '
=BB( )
factoryBB* 1
;BB1 2
}CC 
}DD 	
privateFF 
staticFF 
voidFF )
SetPositionVisibleinSceneViewFF 9
(FF9 :
RectTransformFF: G
canvasRTransformFFH X
,FFX Y
RectTransformFFZ g
itemTransformFFh u
)FFu v
{GG 	
	SceneViewHH 
	sceneViewHH 
=HH  !
	SceneViewHH" +
.HH+ ,
lastActiveSceneViewHH, ?
;HH? @
ifKK 
(KK 
	sceneViewKK 
==KK 
nullKK !
||KK" $
	sceneViewKK% .
.KK. /
cameraKK/ 5
==KK6 8
nullKK9 =
)KK= >
returnLL 
;LL 
Vector2OO 
localPlanePositionOO &
;OO& '
CameraPP 
cameraPP 
=PP 
	sceneViewPP %
.PP% &
cameraPP& ,
;PP, -
Vector3QQ 
positionQQ 
=QQ 
Vector3QQ &
.QQ& '
zeroQQ' +
;QQ+ ,
ifRR 
(RR  
RectTransformUtilityRR $
.RR$ %.
"ScreenPointToLocalPointInRectangleRR% G
(RRG H
canvasRTransformRRH X
,RRX Y
newRRZ ]
Vector2RR^ e
(RRe f
cameraRRf l
.RRl m

pixelWidthRRm w
/RRx y
$numRRz {
,RR{ |
camera	RR} É
.
RRÉ Ñ
pixelHeight
RRÑ è
/
RRê ë
$num
RRí ì
)
RRì î
,
RRî ï
camera
RRñ ú
,
RRú ù
out
RRû ° 
localPlanePosition
RR¢ ¥
)
RR¥ µ
)
RRµ ∂
{SS 
localPlanePositionUU "
.UU" #
xUU# $
=UU% &
localPlanePositionUU' 9
.UU9 :
xUU: ;
+UU< =
canvasRTransformUU> N
.UUN O
	sizeDeltaUUO X
.UUX Y
xUUY Z
*UU[ \
canvasRTransformUU] m
.UUm n
pivotUUn s
.UUs t
xUUt u
;UUu v
localPlanePositionVV "
.VV" #
yVV# $
=VV% &
localPlanePositionVV' 9
.VV9 :
yVV: ;
+VV< =
canvasRTransformVV> N
.VVN O
	sizeDeltaVVO X
.VVX Y
yVVY Z
*VV[ \
canvasRTransformVV] m
.VVm n
pivotVVn s
.VVs t
yVVt u
;VVu v
localPlanePositionXX "
.XX" #
xXX# $
=XX% &
MathfXX' ,
.XX, -
ClampXX- 2
(XX2 3
localPlanePositionXX3 E
.XXE F
xXXF G
,XXG H
$numXXI J
,XXJ K
canvasRTransformXXL \
.XX\ ]
	sizeDeltaXX] f
.XXf g
xXXg h
)XXh i
;XXi j
localPlanePositionYY "
.YY" #
yYY# $
=YY% &
MathfYY' ,
.YY, -
ClampYY- 2
(YY2 3
localPlanePositionYY3 E
.YYE F
yYYF G
,YYG H
$numYYI J
,YYJ K
canvasRTransformYYL \
.YY\ ]
	sizeDeltaYY] f
.YYf g
yYYg h
)YYh i
;YYi j
position\\ 
.\\ 
x\\ 
=\\ 
localPlanePosition\\ /
.\\/ 0
x\\0 1
-\\2 3
canvasRTransform\\4 D
.\\D E
	sizeDelta\\E N
.\\N O
x\\O P
*\\Q R
itemTransform\\S `
.\\` a
	anchorMin\\a j
.\\j k
x\\k l
;\\l m
position]] 
.]] 
y]] 
=]] 
localPlanePosition]] /
.]]/ 0
y]]0 1
-]]2 3
canvasRTransform]]4 D
.]]D E
	sizeDelta]]E N
.]]N O
y]]O P
*]]Q R
itemTransform]]S `
.]]` a
	anchorMin]]a j
.]]j k
y]]k l
;]]l m
Vector3__ 
minLocalPosition__ (
;__( )
minLocalPosition``  
.``  !
x``! "
=``# $
canvasRTransform``% 5
.``5 6
	sizeDelta``6 ?
.``? @
x``@ A
*``B C
(``D E
$num``E F
-``G H
canvasRTransform``I Y
.``Y Z
pivot``Z _
.``_ `
x``` a
)``a b
+``c d
itemTransform``e r
.``r s
	sizeDelta``s |
.``| }
x``} ~
*	`` Ä
itemTransform
``Å é
.
``é è
pivot
``è î
.
``î ï
x
``ï ñ
;
``ñ ó
minLocalPositionaa  
.aa  !
yaa! "
=aa# $
canvasRTransformaa% 5
.aa5 6
	sizeDeltaaa6 ?
.aa? @
yaa@ A
*aaB C
(aaD E
$numaaE F
-aaG H
canvasRTransformaaI Y
.aaY Z
pivotaaZ _
.aa_ `
yaa` a
)aaa b
+aac d
itemTransformaae r
.aar s
	sizeDeltaaas |
.aa| }
yaa} ~
*	aa Ä
itemTransform
aaÅ é
.
aaé è
pivot
aaè î
.
aaî ï
y
aaï ñ
;
aañ ó
Vector3cc 
maxLocalPositioncc (
;cc( )
maxLocalPositiondd  
.dd  !
xdd! "
=dd# $
canvasRTransformdd% 5
.dd5 6
	sizeDeltadd6 ?
.dd? @
xdd@ A
*ddB C
(ddD E
$numddE F
-ddG H
canvasRTransformddI Y
.ddY Z
pivotddZ _
.dd_ `
xdd` a
)dda b
-ddc d
itemTransformdde r
.ddr s
	sizeDeltadds |
.dd| }
xdd} ~
*	dd Ä
itemTransform
ddÅ é
.
ddé è
pivot
ddè î
.
ddî ï
x
ddï ñ
;
ddñ ó
maxLocalPositionee  
.ee  !
yee! "
=ee# $
canvasRTransformee% 5
.ee5 6
	sizeDeltaee6 ?
.ee? @
yee@ A
*eeB C
(eeD E
$numeeE F
-eeG H
canvasRTransformeeI Y
.eeY Z
pivoteeZ _
.ee_ `
yee` a
)eea b
-eec d
itemTransformeee r
.eer s
	sizeDeltaees |
.ee| }
yee} ~
*	ee Ä
itemTransform
eeÅ é
.
eeé è
pivot
eeè î
.
eeî ï
y
eeï ñ
;
eeñ ó
positiongg 
.gg 
xgg 
=gg 
Mathfgg "
.gg" #
Clampgg# (
(gg( )
positiongg) 1
.gg1 2
xgg2 3
,gg3 4
minLocalPositiongg5 E
.ggE F
xggF G
,ggG H
maxLocalPositionggI Y
.ggY Z
xggZ [
)gg[ \
;gg\ ]
positionhh 
.hh 
yhh 
=hh 
Mathfhh "
.hh" #
Clamphh# (
(hh( )
positionhh) 1
.hh1 2
yhh2 3
,hh3 4
minLocalPositionhh5 E
.hhE F
yhhF G
,hhG H
maxLocalPositionhhI Y
.hhY Z
yhhZ [
)hh[ \
;hh\ ]
}ii 
itemTransformkk 
.kk 
anchoredPositionkk *
=kk+ ,
positionkk- 5
;kk5 6
itemTransformll 
.ll 
localRotationll '
=ll( )

Quaternionll* 4
.ll4 5
identityll5 =
;ll= >
itemTransformmm 
.mm 

localScalemm $
=mm% &
Vector3mm' .
.mm. /
onemm/ 2
;mm2 3
}nn 	
privatepp 
staticpp 
voidpp 
PlaceUIElementRootpp .
(pp. /

GameObjectpp/ 9
elementpp: A
,ppA B
MenuCommandppC N
menuCommandppO Z
)ppZ [
{qq 	

GameObjectrr 
parentrr 
=rr 
menuCommandrr  +
.rr+ ,
contextrr, 3
asrr4 6

GameObjectrr7 A
;rrA B
boolss  
explicitParentChoicess %
=ss& '
truess( ,
;ss, -
iftt 
(tt 
parenttt 
==tt 
nulltt 
)tt 
{uu 
parentvv 
=vv '
GetOrCreateCanvasGameObjectvv 4
(vv4 5
)vv5 6
;vv6 7 
explicitParentChoiceww $
=ww% &
falseww' ,
;ww, -
PrefabStage{{ 
prefabStage{{ '
={{( )
PrefabStageUtility{{* <
.{{< =!
GetCurrentPrefabStage{{= R
({{R S
){{S T
;{{T U
if|| 
(|| 
prefabStage|| 
!=||  "
null||# '
&&||( *
!||+ ,
prefabStage||, 7
.||7 8"
IsPartOfPrefabContents||8 N
(||N O
parent||O U
)||U V
)||V W
parent}} 
=}} 
prefabStage}} (
.}}( )
prefabContentsRoot}}) ;
;}}; <
}~~ 
if 
( 
parent 
. !
GetComponentsInParent ,
<, -
Canvas- 3
>3 4
(4 5
true5 9
)9 :
.: ;
Length; A
==B D
$numE F
)F G
{
ÄÄ 

GameObject
ÉÉ 
canvas
ÉÉ !
=
ÉÉ" #
MenuOptions
ÉÉ$ /
.
ÉÉ/ 0
CreateNewUI
ÉÉ0 ;
(
ÉÉ; <
)
ÉÉ< =
;
ÉÉ= >
Undo
ÑÑ 
.
ÑÑ  
SetTransformParent
ÑÑ '
(
ÑÑ' (
canvas
ÑÑ( .
.
ÑÑ. /
	transform
ÑÑ/ 8
,
ÑÑ8 9
parent
ÑÑ: @
.
ÑÑ@ A
	transform
ÑÑA J
,
ÑÑJ K
$str
ÑÑL N
)
ÑÑN O
;
ÑÑO P
parent
ÖÖ 
=
ÖÖ 
canvas
ÖÖ 
;
ÖÖ  
}
ÜÜ 
GameObjectUtility
àà 
.
àà (
EnsureUniqueNameForSibling
àà 8
(
àà8 9
element
àà9 @
)
àà@ A
;
ààA B
SetParentAndAlign
ää 
(
ää 
element
ää %
,
ää% &
parent
ää' -
)
ää- .
;
ää. /
if
ãã 
(
ãã 
!
ãã "
explicitParentChoice
ãã %
)
ãã% &+
SetPositionVisibleinSceneView
åå -
(
åå- .
parent
åå. 4
.
åå4 5
GetComponent
åå5 A
<
ååA B
RectTransform
ååB O
>
ååO P
(
ååP Q
)
ååQ R
,
ååR S
element
ååT [
.
åå[ \
GetComponent
åå\ h
<
ååh i
RectTransform
ååi v
>
ååv w
(
ååw x
)
ååx y
)
ååy z
;
ååz {
Undo
èè 
.
èè -
RegisterFullObjectHierarchyUndo
èè 0
(
èè0 1
parent
èè1 7
==
èè8 :
null
èè; ?
?
èè@ A
element
èèB I
:
èèJ K
parent
èèL R
,
èèR S
$str
èèT V
)
èèV W
;
èèW X
Undo
íí 
.
íí !
SetCurrentGroupName
íí $
(
íí$ %
$str
íí% .
+
íí/ 0
element
íí1 8
.
íí8 9
name
íí9 =
)
íí= >
;
íí> ?
	Selection
îî 
.
îî 
activeGameObject
îî &
=
îî' (
element
îî) 0
;
îî0 1
}
ïï 	
private
óó 
static
óó 
void
óó 
SetParentAndAlign
óó -
(
óó- .

GameObject
óó. 8
child
óó9 >
,
óó> ?

GameObject
óó@ J
parent
óóK Q
)
óóQ R
{
òò 	
if
ôô 
(
ôô 
parent
ôô 
==
ôô 
null
ôô 
)
ôô 
return
öö 
;
öö 
Undo
úú 
.
úú  
SetTransformParent
úú #
(
úú# $
child
úú$ )
.
úú) *
	transform
úú* 3
,
úú3 4
parent
úú5 ;
.
úú; <
	transform
úú< E
,
úúE F
$str
úúG I
)
úúI J
;
úúJ K
RectTransform
ûû 
rectTransform
ûû '
=
ûû( )
child
ûû* /
.
ûû/ 0
	transform
ûû0 9
as
ûû: <
RectTransform
ûû= J
;
ûûJ K
if
üü 
(
üü 
rectTransform
üü 
)
üü 
{
†† 
rectTransform
°° 
.
°° 
anchoredPosition
°° .
=
°°/ 0
Vector2
°°1 8
.
°°8 9
zero
°°9 =
;
°°= >
Vector3
¢¢ 
localPosition
¢¢ %
=
¢¢& '
rectTransform
¢¢( 5
.
¢¢5 6
localPosition
¢¢6 C
;
¢¢C D
localPosition
££ 
.
££ 
z
££ 
=
££  !
$num
££" #
;
££# $
rectTransform
§§ 
.
§§ 
localPosition
§§ +
=
§§, -
localPosition
§§. ;
;
§§; <
}
•• 
else
¶¶ 
{
ßß 
child
®® 
.
®® 
	transform
®® 
.
®®  
localPosition
®®  -
=
®®. /
Vector3
®®0 7
.
®®7 8
zero
®®8 <
;
®®< =
}
©© 
child
™™ 
.
™™ 
	transform
™™ 
.
™™ 
localRotation
™™ )
=
™™* +

Quaternion
™™, 6
.
™™6 7
identity
™™7 ?
;
™™? @
child
´´ 
.
´´ 
	transform
´´ 
.
´´ 

localScale
´´ &
=
´´' (
Vector3
´´) 0
.
´´0 1
one
´´1 4
;
´´4 5!
SetLayerRecursively
≠≠ 
(
≠≠  
child
≠≠  %
,
≠≠% &
parent
≠≠' -
.
≠≠- .
layer
≠≠. 3
)
≠≠3 4
;
≠≠4 5
}
ÆÆ 	
private
∞∞ 
static
∞∞ 
void
∞∞ !
SetLayerRecursively
∞∞ /
(
∞∞/ 0

GameObject
∞∞0 :
go
∞∞; =
,
∞∞= >
int
∞∞? B
layer
∞∞C H
)
∞∞H I
{
±± 	
go
≤≤ 
.
≤≤ 
layer
≤≤ 
=
≤≤ 
layer
≤≤ 
;
≤≤ 
	Transform
≥≥ 
t
≥≥ 
=
≥≥ 
go
≥≥ 
.
≥≥ 
	transform
≥≥ &
;
≥≥& '
for
¥¥ 
(
¥¥ 
int
¥¥ 
i
¥¥ 
=
¥¥ 
$num
¥¥ 
;
¥¥ 
i
¥¥ 
<
¥¥ 
t
¥¥  !
.
¥¥! "

childCount
¥¥" ,
;
¥¥, -
i
¥¥. /
++
¥¥/ 1
)
¥¥1 2!
SetLayerRecursively
µµ #
(
µµ# $
t
µµ$ %
.
µµ% &
GetChild
µµ& .
(
µµ. /
i
µµ/ 0
)
µµ0 1
.
µµ1 2

gameObject
µµ2 <
,
µµ< =
layer
µµ> C
)
µµC D
;
µµD E
}
∂∂ 	
[
∫∫ 	
MenuItem
∫∫	 
(
∫∫ 
$str
∫∫ &
,
∫∫& '
false
∫∫( -
,
∫∫- .
$num
∫∫/ 3
)
∫∫3 4
]
∫∫4 5
static
ªª 
public
ªª 
void
ªª 
AddText
ªª "
(
ªª" #
MenuCommand
ªª# .
menuCommand
ªª/ :
)
ªª: ;
{
ºº 	

GameObject
ΩΩ 
go
ΩΩ 
;
ΩΩ 
using
ææ 
(
ææ 
new
ææ !
FactorySwapToEditor
ææ *
(
ææ* +
)
ææ+ ,
)
ææ, -
go
øø 
=
øø 
DefaultControls
øø $
.
øø$ %

CreateText
øø% /
(
øø/ 0"
GetStandardResources
øø0 D
(
øøD E
)
øøE F
)
øøF G
;
øøG H 
PlaceUIElementRoot
¿¿ 
(
¿¿ 
go
¿¿ !
,
¿¿! "
menuCommand
¿¿# .
)
¿¿. /
;
¿¿/ 0
}
¡¡ 	
[
√√ 	
MenuItem
√√	 
(
√√ 
$str
√√ '
,
√√' (
false
√√) .
,
√√. /
$num
√√0 4
)
√√4 5
]
√√5 6
static
ƒƒ 
public
ƒƒ 
void
ƒƒ 
AddImage
ƒƒ #
(
ƒƒ# $
MenuCommand
ƒƒ$ /
menuCommand
ƒƒ0 ;
)
ƒƒ; <
{
≈≈ 	

GameObject
∆∆ 
go
∆∆ 
;
∆∆ 
using
«« 
(
«« 
new
«« !
FactorySwapToEditor
«« *
(
««* +
)
««+ ,
)
««, -
go
»» 
=
»» 
DefaultControls
»» $
.
»»$ %
CreateImage
»»% 0
(
»»0 1"
GetStandardResources
»»1 E
(
»»E F
)
»»F G
)
»»G H
;
»»H I 
PlaceUIElementRoot
…… 
(
…… 
go
…… !
,
……! "
menuCommand
……# .
)
……. /
;
……/ 0
}
   	
[
ÃÃ 	
MenuItem
ÃÃ	 
(
ÃÃ 
$str
ÃÃ +
,
ÃÃ+ ,
false
ÃÃ- 2
,
ÃÃ2 3
$num
ÃÃ4 8
)
ÃÃ8 9
]
ÃÃ9 :
static
ÕÕ 
public
ÕÕ 
void
ÕÕ 
AddRawImage
ÕÕ &
(
ÕÕ& '
MenuCommand
ÕÕ' 2
menuCommand
ÕÕ3 >
)
ÕÕ> ?
{
ŒŒ 	

GameObject
œœ 
go
œœ 
;
œœ 
using
–– 
(
–– 
new
–– !
FactorySwapToEditor
–– *
(
––* +
)
––+ ,
)
––, -
go
—— 
=
—— 
DefaultControls
—— $
.
——$ %
CreateRawImage
——% 3
(
——3 4"
GetStandardResources
——4 H
(
——H I
)
——I J
)
——J K
;
——K L 
PlaceUIElementRoot
““ 
(
““ 
go
““ !
,
““! "
menuCommand
““# .
)
““. /
;
““/ 0
}
”” 	
[
ŸŸ 	
MenuItem
ŸŸ	 
(
ŸŸ 
$str
ŸŸ (
,
ŸŸ( )
false
ŸŸ* /
,
ŸŸ/ 0
$num
ŸŸ1 5
)
ŸŸ5 6
]
ŸŸ6 7
static
⁄⁄ 
public
⁄⁄ 
void
⁄⁄ 
	AddButton
⁄⁄ $
(
⁄⁄$ %
MenuCommand
⁄⁄% 0
menuCommand
⁄⁄1 <
)
⁄⁄< =
{
€€ 	

GameObject
‹‹ 
go
‹‹ 
;
‹‹ 
using
›› 
(
›› 
new
›› !
FactorySwapToEditor
›› *
(
››* +
)
››+ ,
)
››, -
go
ﬁﬁ 
=
ﬁﬁ 
DefaultControls
ﬁﬁ $
.
ﬁﬁ$ %
CreateButton
ﬁﬁ% 1
(
ﬁﬁ1 2"
GetStandardResources
ﬁﬁ2 F
(
ﬁﬁF G
)
ﬁﬁG H
)
ﬁﬁH I
;
ﬁﬁI J 
PlaceUIElementRoot
ﬂﬂ 
(
ﬂﬂ 
go
ﬂﬂ !
,
ﬂﬂ! "
menuCommand
ﬂﬂ# .
)
ﬂﬂ. /
;
ﬂﬂ/ 0
}
‡‡ 	
[
‚‚ 	
MenuItem
‚‚	 
(
‚‚ 
$str
‚‚ (
,
‚‚( )
false
‚‚* /
,
‚‚/ 0
$num
‚‚1 5
)
‚‚5 6
]
‚‚6 7
static
„„ 
public
„„ 
void
„„ 
	AddToggle
„„ $
(
„„$ %
MenuCommand
„„% 0
menuCommand
„„1 <
)
„„< =
{
‰‰ 	

GameObject
ÂÂ 
go
ÂÂ 
;
ÂÂ 
using
ÊÊ 
(
ÊÊ 
new
ÊÊ !
FactorySwapToEditor
ÊÊ *
(
ÊÊ* +
)
ÊÊ+ ,
)
ÊÊ, -
go
ÁÁ 
=
ÁÁ 
DefaultControls
ÁÁ $
.
ÁÁ$ %
CreateToggle
ÁÁ% 1
(
ÁÁ1 2"
GetStandardResources
ÁÁ2 F
(
ÁÁF G
)
ÁÁG H
)
ÁÁH I
;
ÁÁI J 
PlaceUIElementRoot
ËË 
(
ËË 
go
ËË !
,
ËË! "
menuCommand
ËË# .
)
ËË. /
;
ËË/ 0
}
ÈÈ 	
[
ÌÌ 	
MenuItem
ÌÌ	 
(
ÌÌ 
$str
ÌÌ (
,
ÌÌ( )
false
ÌÌ* /
,
ÌÌ/ 0
$num
ÌÌ1 5
)
ÌÌ5 6
]
ÌÌ6 7
static
ÓÓ 
public
ÓÓ 
void
ÓÓ 
	AddSlider
ÓÓ $
(
ÓÓ$ %
MenuCommand
ÓÓ% 0
menuCommand
ÓÓ1 <
)
ÓÓ< =
{
ÔÔ 	

GameObject
 
go
 
;
 
using
ÒÒ 
(
ÒÒ 
new
ÒÒ !
FactorySwapToEditor
ÒÒ *
(
ÒÒ* +
)
ÒÒ+ ,
)
ÒÒ, -
go
ÚÚ 
=
ÚÚ 
DefaultControls
ÚÚ $
.
ÚÚ$ %
CreateSlider
ÚÚ% 1
(
ÚÚ1 2"
GetStandardResources
ÚÚ2 F
(
ÚÚF G
)
ÚÚG H
)
ÚÚH I
;
ÚÚI J 
PlaceUIElementRoot
ÛÛ 
(
ÛÛ 
go
ÛÛ !
,
ÛÛ! "
menuCommand
ÛÛ# .
)
ÛÛ. /
;
ÛÛ/ 0
}
ÙÙ 	
[
ˆˆ 	
MenuItem
ˆˆ	 
(
ˆˆ 
$str
ˆˆ +
,
ˆˆ+ ,
false
ˆˆ- 2
,
ˆˆ2 3
$num
ˆˆ4 8
)
ˆˆ8 9
]
ˆˆ9 :
static
˜˜ 
public
˜˜ 
void
˜˜ 
AddScrollbar
˜˜ '
(
˜˜' (
MenuCommand
˜˜( 3
menuCommand
˜˜4 ?
)
˜˜? @
{
¯¯ 	

GameObject
˘˘ 
go
˘˘ 
;
˘˘ 
using
˙˙ 
(
˙˙ 
new
˙˙ !
FactorySwapToEditor
˙˙ *
(
˙˙* +
)
˙˙+ ,
)
˙˙, -
go
˚˚ 
=
˚˚ 
DefaultControls
˚˚ $
.
˚˚$ %
CreateScrollbar
˚˚% 4
(
˚˚4 5"
GetStandardResources
˚˚5 I
(
˚˚I J
)
˚˚J K
)
˚˚K L
;
˚˚L M 
PlaceUIElementRoot
¸¸ 
(
¸¸ 
go
¸¸ !
,
¸¸! "
menuCommand
¸¸# .
)
¸¸. /
;
¸¸/ 0
}
˝˝ 	
[
ÅÅ 	
MenuItem
ÅÅ	 
(
ÅÅ 
$str
ÅÅ *
,
ÅÅ* +
false
ÅÅ, 1
,
ÅÅ1 2
$num
ÅÅ3 7
)
ÅÅ7 8
]
ÅÅ8 9
static
ÇÇ 
public
ÇÇ 
void
ÇÇ 
AddDropdown
ÇÇ &
(
ÇÇ& '
MenuCommand
ÇÇ' 2
menuCommand
ÇÇ3 >
)
ÇÇ> ?
{
ÉÉ 	

GameObject
ÑÑ 
go
ÑÑ 
;
ÑÑ 
using
ÖÖ 
(
ÖÖ 
new
ÖÖ !
FactorySwapToEditor
ÖÖ *
(
ÖÖ* +
)
ÖÖ+ ,
)
ÖÖ, -
go
ÜÜ 
=
ÜÜ 
DefaultControls
ÜÜ $
.
ÜÜ$ %
CreateDropdown
ÜÜ% 3
(
ÜÜ3 4"
GetStandardResources
ÜÜ4 H
(
ÜÜH I
)
ÜÜI J
)
ÜÜJ K
;
ÜÜK L 
PlaceUIElementRoot
áá 
(
áá 
go
áá !
,
áá! "
menuCommand
áá# .
)
áá. /
;
áá/ 0
}
àà 	
[
ää 	
MenuItem
ää	 
(
ää 
$str
ää -
,
ää- .
false
ää/ 4
,
ää4 5
$num
ää6 :
)
ää: ;
]
ää; <
public
ãã 
static
ãã 
void
ãã 
AddInputField
ãã (
(
ãã( )
MenuCommand
ãã) 4
menuCommand
ãã5 @
)
ãã@ A
{
åå 	

GameObject
çç 
go
çç 
;
çç 
using
éé 
(
éé 
new
éé !
FactorySwapToEditor
éé *
(
éé* +
)
éé+ ,
)
éé, -
go
èè 
=
èè 
DefaultControls
èè $
.
èè$ %
CreateInputField
èè% 5
(
èè5 6"
GetStandardResources
èè6 J
(
èèJ K
)
èèK L
)
èèL M
;
èèM N 
PlaceUIElementRoot
êê 
(
êê 
go
êê !
,
êê! "
menuCommand
êê# .
)
êê. /
;
êê/ 0
}
ëë 	
[
ïï 	
MenuItem
ïï	 
(
ïï 
$str
ïï (
,
ïï( )
false
ïï* /
,
ïï/ 0
$num
ïï1 5
)
ïï5 6
]
ïï6 7
static
ññ 
public
ññ 
void
ññ 
	AddCanvas
ññ $
(
ññ$ %
MenuCommand
ññ% 0
menuCommand
ññ1 <
)
ññ< =
{
óó 	
var
òò 
go
òò 
=
òò 
CreateNewUI
òò  
(
òò  !
)
òò! "
;
òò" #
SetParentAndAlign
ôô 
(
ôô 
go
ôô  
,
ôô  !
menuCommand
ôô" -
.
ôô- .
context
ôô. 5
as
ôô6 8

GameObject
ôô9 C
)
ôôC D
;
ôôD E
if
öö 
(
öö 
go
öö 
.
öö 
	transform
öö 
.
öö 
parent
öö #
as
öö$ &
RectTransform
öö' 4
)
öö4 5
{
õõ 
RectTransform
úú 
rect
úú "
=
úú# $
go
úú% '
.
úú' (
	transform
úú( 1
as
úú2 4
RectTransform
úú5 B
;
úúB C
rect
ùù 
.
ùù 
	anchorMin
ùù 
=
ùù  
Vector2
ùù! (
.
ùù( )
zero
ùù) -
;
ùù- .
rect
ûû 
.
ûû 
	anchorMax
ûû 
=
ûû  
Vector2
ûû! (
.
ûû( )
one
ûû) ,
;
ûû, -
rect
üü 
.
üü 
anchoredPosition
üü %
=
üü& '
Vector2
üü( /
.
üü/ 0
zero
üü0 4
;
üü4 5
rect
†† 
.
†† 
	sizeDelta
†† 
=
††  
Vector2
††! (
.
††( )
zero
††) -
;
††- .
}
°° 
	Selection
¢¢ 
.
¢¢ 
activeGameObject
¢¢ &
=
¢¢' (
go
¢¢) +
;
¢¢+ ,
}
££ 	
[
•• 	
MenuItem
••	 
(
•• 
$str
•• '
,
••' (
false
••) .
,
••. /
$num
••0 4
)
••4 5
]
••5 6
static
¶¶ 
public
¶¶ 
void
¶¶ 
AddPanel
¶¶ #
(
¶¶# $
MenuCommand
¶¶$ /
menuCommand
¶¶0 ;
)
¶¶; <
{
ßß 	

GameObject
®® 
go
®® 
;
®® 
using
©© 
(
©© 
new
©© !
FactorySwapToEditor
©© *
(
©©* +
)
©©+ ,
)
©©, -
go
™™ 
=
™™ 
DefaultControls
™™ $
.
™™$ %
CreatePanel
™™% 0
(
™™0 1"
GetStandardResources
™™1 E
(
™™E F
)
™™F G
)
™™G H
;
™™H I 
PlaceUIElementRoot
´´ 
(
´´ 
go
´´ !
,
´´! "
menuCommand
´´# .
)
´´. /
;
´´/ 0
RectTransform
ÆÆ 
rect
ÆÆ 
=
ÆÆ  
go
ÆÆ! #
.
ÆÆ# $
GetComponent
ÆÆ$ 0
<
ÆÆ0 1
RectTransform
ÆÆ1 >
>
ÆÆ> ?
(
ÆÆ? @
)
ÆÆ@ A
;
ÆÆA B
rect
ØØ 
.
ØØ 
anchoredPosition
ØØ !
=
ØØ" #
Vector2
ØØ$ +
.
ØØ+ ,
zero
ØØ, 0
;
ØØ0 1
rect
∞∞ 
.
∞∞ 
	sizeDelta
∞∞ 
=
∞∞ 
Vector2
∞∞ $
.
∞∞$ %
zero
∞∞% )
;
∞∞) *
}
±± 	
[
≥≥ 	
MenuItem
≥≥	 
(
≥≥ 
$str
≥≥ -
,
≥≥- .
false
≥≥/ 4
,
≥≥4 5
$num
≥≥6 :
)
≥≥: ;
]
≥≥; <
static
¥¥ 
public
¥¥ 
void
¥¥ 
AddScrollView
¥¥ (
(
¥¥( )
MenuCommand
¥¥) 4
menuCommand
¥¥5 @
)
¥¥@ A
{
µµ 	

GameObject
∂∂ 
go
∂∂ 
;
∂∂ 
using
∑∑ 
(
∑∑ 
new
∑∑ !
FactorySwapToEditor
∑∑ *
(
∑∑* +
)
∑∑+ ,
)
∑∑, -
go
∏∏ 
=
∏∏ 
DefaultControls
∏∏ $
.
∏∏$ %
CreateScrollView
∏∏% 5
(
∏∏5 6"
GetStandardResources
∏∏6 J
(
∏∏J K
)
∏∏K L
)
∏∏L M
;
∏∏M N 
PlaceUIElementRoot
ππ 
(
ππ 
go
ππ !
,
ππ! "
menuCommand
ππ# .
)
ππ. /
;
ππ/ 0
}
∫∫ 	
static
ææ 
public
ææ 

GameObject
ææ  
CreateNewUI
ææ! ,
(
ææ, -
)
ææ- .
{
øø 	
var
¡¡ 
root
¡¡ 
=
¡¡ 
ObjectFactory
¡¡ $
.
¡¡$ %
CreateGameObject
¡¡% 5
(
¡¡5 6
$str
¡¡6 >
,
¡¡> ?
typeof
¡¡@ F
(
¡¡F G
Canvas
¡¡G M
)
¡¡M N
,
¡¡N O
typeof
¡¡P V
(
¡¡V W
CanvasScaler
¡¡W c
)
¡¡c d
,
¡¡d e
typeof
¡¡f l
(
¡¡l m
GraphicRaycaster
¡¡m }
)
¡¡} ~
)
¡¡~ 
;¡¡ Ä
root
¬¬ 
.
¬¬ 
layer
¬¬ 
=
¬¬ 
	LayerMask
¬¬ "
.
¬¬" #
NameToLayer
¬¬# .
(
¬¬. /
kUILayerName
¬¬/ ;
)
¬¬; <
;
¬¬< =
Canvas
√√ 
canvas
√√ 
=
√√ 
root
√√  
.
√√  !
GetComponent
√√! -
<
√√- .
Canvas
√√. 4
>
√√4 5
(
√√5 6
)
√√6 7
;
√√7 8
canvas
ƒƒ 
.
ƒƒ 

renderMode
ƒƒ 
=
ƒƒ 

RenderMode
ƒƒ  *
.
ƒƒ* + 
ScreenSpaceOverlay
ƒƒ+ =
;
ƒƒ= >
StageUtility
«« 
.
«« +
PlaceGameObjectInCurrentStage
«« 6
(
««6 7
root
««7 ;
)
««; <
;
««< =
bool
»» 
customScene
»» 
=
»» 
false
»» $
;
»»$ %
PrefabStage
…… 
prefabStage
…… #
=
……$ % 
PrefabStageUtility
……& 8
.
……8 9#
GetCurrentPrefabStage
……9 N
(
……N O
)
……O P
;
……P Q
if
   
(
   
prefabStage
   
!=
   
null
   #
)
  # $
{
ÀÀ 
Undo
ÃÃ 
.
ÃÃ  
SetTransformParent
ÃÃ '
(
ÃÃ' (
root
ÃÃ( ,
.
ÃÃ, -
	transform
ÃÃ- 6
,
ÃÃ6 7
prefabStage
ÃÃ8 C
.
ÃÃC D 
prefabContentsRoot
ÃÃD V
.
ÃÃV W
	transform
ÃÃW `
,
ÃÃ` a
$str
ÃÃb d
)
ÃÃd e
;
ÃÃe f
customScene
ÕÕ 
=
ÕÕ 
true
ÕÕ "
;
ÕÕ" #
}
ŒŒ 
Undo
–– 
.
–– !
SetCurrentGroupName
–– $
(
––$ %
$str
––% .
+
––/ 0
root
––1 5
.
––5 6
name
––6 :
)
––: ;
;
––; <
if
÷÷ 
(
÷÷ 
!
÷÷ 
customScene
÷÷ 
)
÷÷ 
CreateEventSystem
◊◊ !
(
◊◊! "
false
◊◊" '
)
◊◊' (
;
◊◊( )
return
ÿÿ 
root
ÿÿ 
;
ÿÿ 
}
ŸŸ 	
[
€€ 	
MenuItem
€€	 
(
€€ 
$str
€€ .
,
€€. /
false
€€0 5
,
€€5 6
$num
€€7 ;
)
€€; <
]
€€< =
public
‹‹ 
static
‹‹ 
void
‹‹ 
CreateEventSystem
‹‹ ,
(
‹‹, -
MenuCommand
‹‹- 8
menuCommand
‹‹9 D
)
‹‹D E
{
›› 	

GameObject
ﬁﬁ 
parent
ﬁﬁ 
=
ﬁﬁ 
menuCommand
ﬁﬁ  +
.
ﬁﬁ+ ,
context
ﬁﬁ, 3
as
ﬁﬁ4 6

GameObject
ﬁﬁ7 A
;
ﬁﬁA B
CreateEventSystem
ﬂﬂ 
(
ﬂﬂ 
true
ﬂﬂ "
,
ﬂﬂ" #
parent
ﬂﬂ$ *
)
ﬂﬂ* +
;
ﬂﬂ+ ,
}
‡‡ 	
private
‚‚ 
static
‚‚ 
void
‚‚ 
CreateEventSystem
‚‚ -
(
‚‚- .
bool
‚‚. 2
select
‚‚3 9
)
‚‚9 :
{
„„ 	
CreateEventSystem
‰‰ 
(
‰‰ 
select
‰‰ $
,
‰‰$ %
null
‰‰& *
)
‰‰* +
;
‰‰+ ,
}
ÂÂ 	
private
ÁÁ 
static
ÁÁ 
void
ÁÁ 
CreateEventSystem
ÁÁ -
(
ÁÁ- .
bool
ÁÁ. 2
select
ÁÁ3 9
,
ÁÁ9 :

GameObject
ÁÁ; E
parent
ÁÁF L
)
ÁÁL M
{
ËË 	
StageHandle
ÈÈ 
stage
ÈÈ 
=
ÈÈ 
parent
ÈÈ  &
==
ÈÈ' )
null
ÈÈ* .
?
ÈÈ/ 0
StageUtility
ÈÈ1 =
.
ÈÈ= >#
GetCurrentStageHandle
ÈÈ> S
(
ÈÈS T
)
ÈÈT U
:
ÈÈV W
StageUtility
ÈÈX d
.
ÈÈd e
GetStageHandle
ÈÈe s
(
ÈÈs t
parent
ÈÈt z
)
ÈÈz {
;
ÈÈ{ |
var
ÍÍ 
esys
ÍÍ 
=
ÍÍ 
stage
ÍÍ 
.
ÍÍ !
FindComponentOfType
ÍÍ 0
<
ÍÍ0 1
EventSystem
ÍÍ1 <
>
ÍÍ< =
(
ÍÍ= >
)
ÍÍ> ?
;
ÍÍ? @
if
ÎÎ 
(
ÎÎ 
esys
ÎÎ 
==
ÎÎ 
null
ÎÎ 
)
ÎÎ 
{
ÏÏ 
var
ÌÌ 
eventSystem
ÌÌ 
=
ÌÌ  !
ObjectFactory
ÌÌ" /
.
ÌÌ/ 0
CreateGameObject
ÌÌ0 @
(
ÌÌ@ A
$str
ÌÌA N
)
ÌÌN O
;
ÌÌO P
if
ÓÓ 
(
ÓÓ 
parent
ÓÓ 
==
ÓÓ 
null
ÓÓ "
)
ÓÓ" #
StageUtility
ÔÔ  
.
ÔÔ  !+
PlaceGameObjectInCurrentStage
ÔÔ! >
(
ÔÔ> ?
eventSystem
ÔÔ? J
)
ÔÔJ K
;
ÔÔK L
else
 
SetParentAndAlign
ÒÒ %
(
ÒÒ% &
eventSystem
ÒÒ& 1
,
ÒÒ1 2
parent
ÒÒ3 9
)
ÒÒ9 :
;
ÒÒ: ;
esys
ÚÚ 
=
ÚÚ 
ObjectFactory
ÚÚ $
.
ÚÚ$ %
AddComponent
ÚÚ% 1
<
ÚÚ1 2
EventSystem
ÚÚ2 =
>
ÚÚ= >
(
ÚÚ> ?
eventSystem
ÚÚ? J
)
ÚÚJ K
;
ÚÚK L
ObjectFactory
ÛÛ 
.
ÛÛ 
AddComponent
ÛÛ *
<
ÛÛ* +#
StandaloneInputModule
ÛÛ+ @
>
ÛÛ@ A
(
ÛÛA B
eventSystem
ÛÛB M
)
ÛÛM N
;
ÛÛN O
Undo
ıı 
.
ıı '
RegisterCreatedObjectUndo
ıı .
(
ıı. /
eventSystem
ıı/ :
,
ıı: ;
$str
ıı< E
+
ııF G
eventSystem
ııH S
.
ııS T
name
ııT X
)
ııX Y
;
ııY Z
}
ˆˆ 
if
¯¯ 
(
¯¯ 
select
¯¯ 
&&
¯¯ 
esys
¯¯ 
!=
¯¯ !
null
¯¯" &
)
¯¯& '
{
˘˘ 
	Selection
˙˙ 
.
˙˙ 
activeGameObject
˙˙ *
=
˙˙+ ,
esys
˙˙- 1
.
˙˙1 2

gameObject
˙˙2 <
;
˙˙< =
}
˚˚ 
}
¸¸ 	
static
ˇˇ 
public
ˇˇ 

GameObject
ˇˇ  )
GetOrCreateCanvasGameObject
ˇˇ! <
(
ˇˇ< =
)
ˇˇ= >
{
ÄÄ 	

GameObject
ÅÅ 

selectedGo
ÅÅ !
=
ÅÅ" #
	Selection
ÅÅ$ -
.
ÅÅ- .
activeGameObject
ÅÅ. >
;
ÅÅ> ?
Canvas
ÑÑ 
canvas
ÑÑ 
=
ÑÑ 
(
ÑÑ 

selectedGo
ÑÑ '
!=
ÑÑ( *
null
ÑÑ+ /
)
ÑÑ/ 0
?
ÑÑ1 2

selectedGo
ÑÑ3 =
.
ÑÑ= >"
GetComponentInParent
ÑÑ> R
<
ÑÑR S
Canvas
ÑÑS Y
>
ÑÑY Z
(
ÑÑZ [
)
ÑÑ[ \
:
ÑÑ] ^
null
ÑÑ_ c
;
ÑÑc d
if
ÖÖ 
(
ÖÖ 
IsValidCanvas
ÖÖ 
(
ÖÖ 
canvas
ÖÖ $
)
ÖÖ$ %
)
ÖÖ% &
return
ÜÜ 
canvas
ÜÜ 
.
ÜÜ 

gameObject
ÜÜ (
;
ÜÜ( )
Canvas
ää 
[
ää 
]
ää 
canvasArray
ää  
=
ää! "
StageUtility
ää# /
.
ää/ 0#
GetCurrentStageHandle
ää0 E
(
ääE F
)
ääF G
.
ääG H"
FindComponentsOfType
ääH \
<
ää\ ]
Canvas
ää] c
>
ääc d
(
ääd e
)
ääe f
;
ääf g
for
ãã 
(
ãã 
int
ãã 
i
ãã 
=
ãã 
$num
ãã 
;
ãã 
i
ãã 
<
ãã 
canvasArray
ãã  +
.
ãã+ ,
Length
ãã, 2
;
ãã2 3
i
ãã4 5
++
ãã5 7
)
ãã7 8
if
åå 
(
åå 
IsValidCanvas
åå !
(
åå! "
canvasArray
åå" -
[
åå- .
i
åå. /
]
åå/ 0
)
åå0 1
)
åå1 2
return
çç 
canvasArray
çç &
[
çç& '
i
çç' (
]
çç( )
.
çç) *

gameObject
çç* 4
;
çç4 5
return
êê 
MenuOptions
êê 
.
êê 
CreateNewUI
êê *
(
êê* +
)
êê+ ,
;
êê, -
}
ëë 	
static
ìì 
bool
ìì 
IsValidCanvas
ìì !
(
ìì! "
Canvas
ìì" (
canvas
ìì) /
)
ìì/ 0
{
îî 	
if
ïï 
(
ïï 
canvas
ïï 
==
ïï 
null
ïï 
||
ïï !
!
ïï" #
canvas
ïï# )
.
ïï) *

gameObject
ïï* 4
.
ïï4 5
activeInHierarchy
ïï5 F
)
ïïF G
return
ññ 
false
ññ 
;
ññ 
if
öö 
(
öö 
EditorUtility
öö 
.
öö 
IsPersistent
öö *
(
öö* +
canvas
öö+ 1
)
öö1 2
||
öö3 5
(
öö6 7
canvas
öö7 =
.
öö= >
	hideFlags
öö> G
&
ööH I
	HideFlags
ööJ S
.
ööS T
HideInHierarchy
ööT c
)
ööc d
!=
ööe g
$num
ööh i
)
ööi j
return
õõ 
false
õõ 
;
õõ 
return
ùù 
StageUtility
ùù 
.
ùù  
GetStageHandle
ùù  .
(
ùù. /
canvas
ùù/ 5
.
ùù5 6

gameObject
ùù6 @
)
ùù@ A
==
ùùB D
StageUtility
ùùE Q
.
ùùQ R#
GetCurrentStageHandle
ùùR g
(
ùùg h
)
ùùh i
;
ùùi j
}
ûû 	
}
üü 
}†† ä¬
úC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\FontDataDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
FontData! )
)) *
,* +
true, 0
)0 1
]1 2
public

 

class

 
FontDataDrawer

 
:

  !
PropertyDrawer

" 0
{ 
static 
private 
class 
Styles #
{ 	
public 
static 
GUIStyle "
alignmentButtonLeft# 6
=7 8
new9 <
GUIStyle= E
(E F
EditorStylesF R
.R S
miniButtonLeftS a
)a b
;b c
public 
static 
GUIStyle "
alignmentButtonMid# 5
=6 7
new8 ;
GUIStyle< D
(D E
EditorStylesE Q
.Q R
miniButtonMidR _
)_ `
;` a
public 
static 
GUIStyle " 
alignmentButtonRight# 7
=8 9
new: =
GUIStyle> F
(F G
EditorStylesG S
.S T
miniButtonRightT c
)c d
;d e
public 
static 

GUIContent $
m_EncodingContent% 6
;6 7
public 
static 

GUIContent $
m_LeftAlignText% 4
;4 5
public 
static 

GUIContent $
m_CenterAlignText% 6
;6 7
public 
static 

GUIContent $
m_RightAlignText% 5
;5 6
public 
static 

GUIContent $
m_TopAlignText% 3
;3 4
public 
static 

GUIContent $
m_MiddleAlignText% 6
;6 7
public 
static 

GUIContent $
m_BottomAlignText% 6
;6 7
public 
static 

GUIContent $!
m_LeftAlignTextActive% :
;: ;
public 
static 

GUIContent $#
m_CenterAlignTextActive% <
;< =
public 
static 

GUIContent $"
m_RightAlignTextActive% ;
;; <
public 
static 

GUIContent $ 
m_TopAlignTextActive% 9
;9 :
public 
static 

GUIContent $#
m_MiddleAlignTextActive% <
;< =
public   
static   

GUIContent   $#
m_BottomAlignTextActive  % <
;  < =
static"" 
Styles"" 
("" 
)"" 
{## 
m_EncodingContent$$ !
=$$" #
EditorGUIUtility$$$ 4
.$$4 5
TrTextContent$$5 B
($$B C
$str$$C N
,$$N O
$str$$P j
)$$j k
;$$k l
m_LeftAlignText'' 
=''  !
EditorGUIUtility''" 2
.''2 3
IconContent''3 >
(''> ?
$str''? c
,''c d
$str''e q
)''q r
;''r s
m_CenterAlignText(( !
=((" #
EditorGUIUtility(($ 4
.((4 5
IconContent((5 @
(((@ A
$str((A g
,((g h
$str((i w
)((w x
;((x y
m_RightAlignText))  
=))! "
EditorGUIUtility))# 3
.))3 4
IconContent))4 ?
())? @
$str))@ e
,))e f
$str))g t
)))t u
;))u v!
m_LeftAlignTextActive** %
=**& '
EditorGUIUtility**( 8
.**8 9
IconContent**9 D
(**D E
$str**E p
,**p q
$str**r ~
)**~ 
;	** Ä#
m_CenterAlignTextActive++ '
=++( )
EditorGUIUtility++* :
.++: ;
IconContent++; F
(++F G
$str++G t
,++t u
$str	++v Ñ
)
++Ñ Ö
;
++Ö Ü"
m_RightAlignTextActive,, &
=,,' (
EditorGUIUtility,,) 9
.,,9 :
IconContent,,: E
(,,E F
$str,,F r
,,,r s
$str	,,t Å
)
,,Å Ç
;
,,Ç É
m_TopAlignText// 
=//  
EditorGUIUtility//! 1
.//1 2
IconContent//2 =
(//= >
$str//> _
,//_ `
$str//a l
)//l m
;//m n
m_MiddleAlignText00 !
=00" #
EditorGUIUtility00$ 4
.004 5
IconContent005 @
(00@ A
$str00A e
,00e f
$str00g u
)00u v
;00v w
m_BottomAlignText11 !
=11" #
EditorGUIUtility11$ 4
.114 5
IconContent115 @
(11@ A
$str11A e
,11e f
$str11g u
)11u v
;11v w 
m_TopAlignTextActive22 $
=22% &
EditorGUIUtility22' 7
.227 8
IconContent228 C
(22C D
$str22D l
,22l m
$str22n y
)22y z
;22z {#
m_MiddleAlignTextActive33 '
=33( )
EditorGUIUtility33* :
.33: ;
IconContent33; F
(33F G
$str33G r
,33r s
$str	33t Ç
)
33Ç É
;
33É Ñ#
m_BottomAlignTextActive44 '
=44( )
EditorGUIUtility44* :
.44: ;
IconContent44; F
(44F G
$str44G r
,44r s
$str	44t Ç
)
44Ç É
;
44É Ñ$
FixAlignmentButtonStyles66 (
(66( )
alignmentButtonLeft66) <
,66< =
alignmentButtonMid66> P
,66P Q 
alignmentButtonRight66R f
)66f g
;66g h
}77 
static99 
void99 $
FixAlignmentButtonStyles99 0
(990 1
params991 7
GUIStyle998 @
[99@ A
]99A B
styles99C I
)99I J
{:: 
foreach;; 
(;; 
GUIStyle;; !
style;;" '
in;;( *
styles;;+ 1
);;1 2
{<< 
style== 
.== 
padding== !
.==! "
left==" &
===' (
$num==) *
;==* +
style>> 
.>> 
padding>> !
.>>! "
right>>" '
=>>( )
$num>>* +
;>>+ ,
}?? 
}@@ 
}AA 	
privateCC 
enumCC  
VerticalTextAligmentCC )
{DD 	
TopEE 
,EE 
MiddleFF 
,FF 
BottomGG 
}HH 	
privateJJ 
enumJJ "
HorizontalTextAligmentJJ +
{KK 	
LeftLL 
,LL 
CenterMM 
,MM 
RightNN 
}OO 	
privateQQ 
constQQ 
intQQ !
kAlignmentButtonWidthQQ /
=QQ0 1
$numQQ2 4
;QQ4 5
staticSS 
intSS 
s_TextAlignmentHashSS &
=SS' (
$strSS) @
.SS@ A
GetHashCodeSSA L
(SSL M
)SSM N
;SSN O
privateUU 
SerializedPropertyUU "
m_SupportEncodingUU# 4
;UU4 5
privateVV 
SerializedPropertyVV "
m_FontVV# )
;VV) *
privateWW 
SerializedPropertyWW "

m_FontSizeWW# -
;WW- .
privateXX 
SerializedPropertyXX "
m_LineSpacingXX# 0
;XX0 1
privateYY 
SerializedPropertyYY "
m_FontStyleYY# .
;YY. /
privateZZ 
SerializedPropertyZZ ""
m_ResizeTextForBestFitZZ# 9
;ZZ9 :
private[[ 
SerializedProperty[[ "
m_ResizeTextMinSize[[# 6
;[[6 7
private\\ 
SerializedProperty\\ "
m_ResizeTextMaxSize\\# 6
;\\6 7
private]] 
SerializedProperty]] " 
m_HorizontalOverflow]]# 7
;]]7 8
private^^ 
SerializedProperty^^ "
m_VerticalOverflow^^# 5
;^^5 6
private__ 
SerializedProperty__ "
m_Alignment__# .
;__. /
private`` 
SerializedProperty`` "
m_AlignByGeometry``# 4
;``4 5
privatebb 
floatbb 
m_FontFieldfHeightbb (
=bb) *
$numbb+ -
;bb- .
privatecc 
floatcc 
m_FontStyleHeightcc '
=cc( )
$numcc* ,
;cc, -
privatedd 
floatdd 
m_FontSizeHeightdd &
=dd' (
$numdd) +
;dd+ ,
privateee 
floatee 
m_LineSpacingHeightee )
=ee* +
$numee, .
;ee. /
privateff 
floatff 
m_EncodingHeightff &
=ff' (
$numff) +
;ff+ ,
privategg 
floatgg (
m_ResizeTextForBestFitHeightgg 2
=gg3 4
$numgg5 7
;gg7 8
privatehh 
floathh %
m_ResizeTextMinSizeHeighthh /
=hh0 1
$numhh2 4
;hh4 5
privateii 
floatii %
m_ResizeTextMaxSizeHeightii /
=ii0 1
$numii2 4
;ii4 5
privatejj 
floatjj &
m_HorizontalOverflowHeightjj 0
=jj1 2
$numjj3 5
;jj5 6
privatekk 
floatkk $
m_VerticalOverflowHeightkk .
=kk/ 0
$numkk1 3
;kk3 4
privatell 
floatll #
m_AlignByGeometryHeightll -
=ll. /
$numll0 2
;ll2 3
	protectednn 
voidnn 
Initnn 
(nn 
SerializedPropertynn .
propertynn/ 7
)nn7 8
{oo 	
m_SupportEncodingpp 
=pp 
propertypp  (
.pp( ) 
FindPropertyRelativepp) =
(pp= >
$strpp> J
)ppJ K
;ppK L
m_Fontqq 
=qq 
propertyqq 
.qq  
FindPropertyRelativeqq 2
(qq2 3
$strqq3 ;
)qq; <
;qq< =

m_FontSizerr 
=rr 
propertyrr !
.rr! " 
FindPropertyRelativerr" 6
(rr6 7
$strrr7 C
)rrC D
;rrD E
m_LineSpacingss 
=ss 
propertyss $
.ss$ % 
FindPropertyRelativess% 9
(ss9 :
$strss: I
)ssI J
;ssJ K
m_FontStylett 
=tt 
propertytt "
.tt" # 
FindPropertyRelativett# 7
(tt7 8
$strtt8 E
)ttE F
;ttF G"
m_ResizeTextForBestFituu "
=uu# $
propertyuu% -
.uu- . 
FindPropertyRelativeuu. B
(uuB C
$struuC N
)uuN O
;uuO P
m_ResizeTextMinSizevv 
=vv  !
propertyvv" *
.vv* + 
FindPropertyRelativevv+ ?
(vv? @
$strvv@ K
)vvK L
;vvL M
m_ResizeTextMaxSizeww 
=ww  !
propertyww" *
.ww* + 
FindPropertyRelativeww+ ?
(ww? @
$strww@ K
)wwK L
;wwL M 
m_HorizontalOverflowxx  
=xx! "
propertyxx# +
.xx+ , 
FindPropertyRelativexx, @
(xx@ A
$strxxA W
)xxW X
;xxX Y
m_VerticalOverflowyy 
=yy  
propertyyy! )
.yy) * 
FindPropertyRelativeyy* >
(yy> ?
$stryy? S
)yyS T
;yyT U
m_Alignmentzz 
=zz 
propertyzz "
.zz" # 
FindPropertyRelativezz# 7
(zz7 8
$strzz8 E
)zzE F
;zzF G
m_AlignByGeometry{{ 
={{ 
property{{  (
.{{( ) 
FindPropertyRelative{{) =
({{= >
$str{{> Q
){{Q R
;{{R S
}|| 	
public~~ 
override~~ 
float~~ 
GetPropertyHeight~~ /
(~~/ 0
SerializedProperty~~0 B
property~~C K
,~~K L

GUIContent~~M W
label~~X ]
)~~] ^
{ 	
Init
ÄÄ 
(
ÄÄ 
property
ÄÄ 
)
ÄÄ 
;
ÄÄ  
m_FontFieldfHeight
ÅÅ 
=
ÅÅ  
	EditorGUI
ÅÅ! *
.
ÅÅ* +
GetPropertyHeight
ÅÅ+ <
(
ÅÅ< =
m_Font
ÅÅ= C
)
ÅÅC D
;
ÅÅD E
m_FontStyleHeight
ÇÇ 
=
ÇÇ  !
	EditorGUI
ÇÇ" +
.
ÇÇ+ ,
GetPropertyHeight
ÇÇ, =
(
ÇÇ= >
m_FontStyle
ÇÇ> I
)
ÇÇI J
;
ÇÇJ K
m_FontSizeHeight
ÉÉ 
=
ÉÉ 
	EditorGUI
ÉÉ  )
.
ÉÉ) *
GetPropertyHeight
ÉÉ* ;
(
ÉÉ; <

m_FontSize
ÉÉ< F
)
ÉÉF G
;
ÉÉG H!
m_LineSpacingHeight
ÑÑ 
=
ÑÑ! "
	EditorGUI
ÑÑ# ,
.
ÑÑ, -
GetPropertyHeight
ÑÑ- >
(
ÑÑ> ?
m_LineSpacing
ÑÑ? L
)
ÑÑL M
;
ÑÑM N
m_EncodingHeight
ÖÖ 
=
ÖÖ  
	EditorGUI
ÖÖ! *
.
ÖÖ* +
GetPropertyHeight
ÖÖ+ <
(
ÖÖ< =
m_SupportEncoding
ÖÖ= N
)
ÖÖN O
;
ÖÖO P*
m_ResizeTextForBestFitHeight
ÜÜ (
=
ÜÜ) *
	EditorGUI
ÜÜ+ 4
.
ÜÜ4 5
GetPropertyHeight
ÜÜ5 F
(
ÜÜF G$
m_ResizeTextForBestFit
ÜÜG ]
)
ÜÜ] ^
;
ÜÜ^ _'
m_ResizeTextMinSizeHeight
áá %
=
áá& '
	EditorGUI
áá( 1
.
áá1 2
GetPropertyHeight
áá2 C
(
ááC D!
m_ResizeTextMinSize
ááD W
)
ááW X
;
ááX Y'
m_ResizeTextMaxSizeHeight
àà %
=
àà& '
	EditorGUI
àà( 1
.
àà1 2
GetPropertyHeight
àà2 C
(
ààC D!
m_ResizeTextMaxSize
ààD W
)
ààW X
;
ààX Y(
m_HorizontalOverflowHeight
ââ &
=
ââ' (
	EditorGUI
ââ) 2
.
ââ2 3
GetPropertyHeight
ââ3 D
(
ââD E"
m_HorizontalOverflow
ââE Y
)
ââY Z
;
ââZ [&
m_VerticalOverflowHeight
ää $
=
ää% &
	EditorGUI
ää' 0
.
ää0 1
GetPropertyHeight
ää1 B
(
ääB C 
m_VerticalOverflow
ääC U
)
ääU V
;
ääV W%
m_AlignByGeometryHeight
ãã #
=
ãã$ %
	EditorGUI
ãã& /
.
ãã/ 0
GetPropertyHeight
ãã0 A
(
ããA B
m_AlignByGeometry
ããB S
)
ããS T
;
ããT U
var
çç 
height
çç 
=
çç  
m_FontFieldfHeight
çç +
+
éé 
m_FontStyleHeight
éé #
+
èè 
m_FontSizeHeight
èè "
+
êê !
m_LineSpacingHeight
êê %
+
ëë 
m_EncodingHeight
ëë "
+
íí *
m_ResizeTextForBestFitHeight
íí .
+
ìì (
m_HorizontalOverflowHeight
ìì ,
+
îî &
m_VerticalOverflowHeight
îî *
+
ïï 
EditorGUIUtility
ïï "
.
ïï" #
singleLineHeight
ïï# 3
*
ïï4 5
$num
ïï6 7
+
ññ 
EditorGUIUtility
ññ "
.
ññ" #%
standardVerticalSpacing
ññ# :
*
ññ; <
$num
ññ= ?
+
óó %
m_AlignByGeometryHeight
óó )
;
óó) *
if
ôô 
(
ôô $
m_ResizeTextForBestFit
ôô &
.
ôô& '
	boolValue
ôô' 0
)
ôô0 1
{
öö 
height
õõ 
+=
õõ '
m_ResizeTextMinSizeHeight
õõ 3
+
úú '
m_ResizeTextMaxSizeHeight
úú /
+
ùù 
EditorGUIUtility
ùù &
.
ùù& '%
standardVerticalSpacing
ùù' >
*
ùù? @
$num
ùùA B
;
ùùB C
}
ûû 
return
üü 
height
üü 
;
üü 
}
†† 	
public
¢¢ 
override
¢¢ 
void
¢¢ 
OnGUI
¢¢ "
(
¢¢" #
Rect
¢¢# '
position
¢¢( 0
,
¢¢0 1 
SerializedProperty
¢¢2 D
property
¢¢E M
,
¢¢M N

GUIContent
¢¢O Y
label
¢¢Z _
)
¢¢_ `
{
££ 	
Init
§§ 
(
§§ 
property
§§ 
)
§§ 
;
§§ 
Rect
¶¶ 
rect
¶¶ 
=
¶¶ 
position
¶¶  
;
¶¶  !
rect
ßß 
.
ßß 
height
ßß 
=
ßß 
EditorGUIUtility
ßß *
.
ßß* +
singleLineHeight
ßß+ ;
;
ßß; <
	EditorGUI
©© 
.
©© 

LabelField
©©  
(
©©  !
rect
©©! %
,
©©% &
$str
©©' 2
,
©©2 3
EditorStyles
©©4 @
.
©©@ A
	boldLabel
©©A J
)
©©J K
;
©©K L
rect
™™ 
.
™™ 
y
™™ 
+=
™™ 
rect
™™ 
.
™™ 
height
™™ !
+
™™" #
EditorGUIUtility
™™$ 4
.
™™4 5%
standardVerticalSpacing
™™5 L
;
™™L M
++
´´ 
	EditorGUI
´´ 
.
´´ 
indentLevel
´´ #
;
´´# $
{
¨¨ 
Font
≠≠ 
font
≠≠ 
=
≠≠ 
m_Font
≠≠ "
.
≠≠" #"
objectReferenceValue
≠≠# 7
as
≠≠8 :
Font
≠≠; ?
;
≠≠? @
rect
ÆÆ 
.
ÆÆ 
height
ÆÆ 
=
ÆÆ  
m_FontFieldfHeight
ÆÆ 0
;
ÆÆ0 1
	EditorGUI
ØØ 
.
ØØ 
BeginChangeCheck
ØØ *
(
ØØ* +
)
ØØ+ ,
;
ØØ, -
	EditorGUI
∞∞ 
.
∞∞ 
PropertyField
∞∞ '
(
∞∞' (
rect
∞∞( ,
,
∞∞, -
m_Font
∞∞. 4
)
∞∞4 5
;
∞∞5 6
if
±± 
(
±± 
	EditorGUI
±± 
.
±± 
EndChangeCheck
±± ,
(
±±, -
)
±±- .
)
±±. /
{
≤≤ 
font
≥≥ 
=
≥≥ 
m_Font
≥≥ !
.
≥≥! ""
objectReferenceValue
≥≥" 6
as
≥≥7 9
Font
≥≥: >
;
≥≥> ?
if
¥¥ 
(
¥¥ 
font
¥¥ 
!=
¥¥ 
null
¥¥  $
&&
¥¥% '
!
¥¥( )
font
¥¥) -
.
¥¥- .
dynamic
¥¥. 5
)
¥¥5 6

m_FontSize
µµ "
.
µµ" #
intValue
µµ# +
=
µµ, -
font
µµ. 2
.
µµ2 3
fontSize
µµ3 ;
;
µµ; <
}
∂∂ 
rect
∏∏ 
.
∏∏ 
y
∏∏ 
+=
∏∏ 
rect
∏∏ 
.
∏∏ 
height
∏∏ %
+
∏∏& '
EditorGUIUtility
∏∏( 8
.
∏∏8 9%
standardVerticalSpacing
∏∏9 P
;
∏∏P Q
rect
ππ 
.
ππ 
height
ππ 
=
ππ 
m_FontStyleHeight
ππ /
;
ππ/ 0
using
∫∫ 
(
∫∫ 
new
∫∫ 
	EditorGUI
∫∫ $
.
∫∫$ %
DisabledScope
∫∫% 2
(
∫∫2 3
!
∫∫3 4
m_Font
∫∫4 :
.
∫∫: ;(
hasMultipleDifferentValues
∫∫; U
&&
∫∫V X
font
∫∫Y ]
!=
∫∫^ `
null
∫∫a e
&&
∫∫f h
!
∫∫i j
font
∫∫j n
.
∫∫n o
dynamic
∫∫o v
)
∫∫v w
)
∫∫w x
{
ªª 
	EditorGUI
ºº 
.
ºº 
PropertyField
ºº +
(
ºº+ ,
rect
ºº, 0
,
ºº0 1
m_FontStyle
ºº2 =
)
ºº= >
;
ºº> ?
}
ΩΩ 
rect
øø 
.
øø 
y
øø 
+=
øø 
rect
øø 
.
øø 
height
øø %
+
øø& '
EditorGUIUtility
øø( 8
.
øø8 9%
standardVerticalSpacing
øø9 P
;
øøP Q
rect
¿¿ 
.
¿¿ 
height
¿¿ 
=
¿¿ 
m_FontSizeHeight
¿¿ .
;
¿¿. /
	EditorGUI
¡¡ 
.
¡¡ 
PropertyField
¡¡ '
(
¡¡' (
rect
¡¡( ,
,
¡¡, -

m_FontSize
¡¡. 8
)
¡¡8 9
;
¡¡9 :
rect
√√ 
.
√√ 
y
√√ 
+=
√√ 
rect
√√ 
.
√√ 
height
√√ %
+
√√& '
EditorGUIUtility
√√( 8
.
√√8 9%
standardVerticalSpacing
√√9 P
;
√√P Q
rect
ƒƒ 
.
ƒƒ 
height
ƒƒ 
=
ƒƒ !
m_LineSpacingHeight
ƒƒ 1
;
ƒƒ1 2
	EditorGUI
≈≈ 
.
≈≈ 
PropertyField
≈≈ '
(
≈≈' (
rect
≈≈( ,
,
≈≈, -
m_LineSpacing
≈≈. ;
)
≈≈; <
;
≈≈< =
rect
«« 
.
«« 
y
«« 
+=
«« 
rect
«« 
.
«« 
height
«« %
+
««& '
EditorGUIUtility
««( 8
.
««8 9%
standardVerticalSpacing
««9 P
;
««P Q
rect
»» 
.
»» 
height
»» 
=
»» 
m_EncodingHeight
»» .
;
»». /
	EditorGUI
…… 
.
…… 
PropertyField
…… '
(
……' (
rect
……( ,
,
……, -
m_SupportEncoding
……. ?
,
……? @
Styles
……A G
.
……G H
m_EncodingContent
……H Y
)
……Y Z
;
……Z [
}
   
--
ÀÀ 
	EditorGUI
ÀÀ 
.
ÀÀ 
indentLevel
ÀÀ #
;
ÀÀ# $
rect
ÕÕ 
.
ÕÕ 
y
ÕÕ 
+=
ÕÕ 
rect
ÕÕ 
.
ÕÕ 
height
ÕÕ !
+
ÕÕ" #
EditorGUIUtility
ÕÕ$ 4
.
ÕÕ4 5%
standardVerticalSpacing
ÕÕ5 L
;
ÕÕL M
rect
ŒŒ 
.
ŒŒ 
height
ŒŒ 
=
ŒŒ 
EditorGUIUtility
ŒŒ *
.
ŒŒ* +
singleLineHeight
ŒŒ+ ;
;
ŒŒ; <
	EditorGUI
œœ 
.
œœ 

LabelField
œœ  
(
œœ  !
rect
œœ! %
,
œœ% &
$str
œœ' 2
,
œœ2 3
EditorStyles
œœ4 @
.
œœ@ A
	boldLabel
œœA J
)
œœJ K
;
œœK L
rect
–– 
.
–– 
y
–– 
+=
–– 
rect
–– 
.
–– 
height
–– !
+
––" #
EditorGUIUtility
––$ 4
.
––4 5%
standardVerticalSpacing
––5 L
;
––L M
++
—— 
	EditorGUI
—— 
.
—— 
indentLevel
—— #
;
——# $
{
““ 
rect
”” 
.
”” 
height
”” 
=
”” 
EditorGUIUtility
”” .
.
””. /
singleLineHeight
””/ ?
;
””? @#
DoTextAligmentControl
‘‘ %
(
‘‘% &
rect
‘‘& *
,
‘‘* +
m_Alignment
‘‘, 7
)
‘‘7 8
;
‘‘8 9
rect
÷÷ 
.
÷÷ 
y
÷÷ 
+=
÷÷ 
rect
÷÷ 
.
÷÷ 
height
÷÷ %
+
÷÷& '
EditorGUIUtility
÷÷( 8
.
÷÷8 9%
standardVerticalSpacing
÷÷9 P
;
÷÷P Q
rect
◊◊ 
.
◊◊ 
height
◊◊ 
=
◊◊ (
m_HorizontalOverflowHeight
◊◊ 8
;
◊◊8 9
	EditorGUI
ÿÿ 
.
ÿÿ 
PropertyField
ÿÿ '
(
ÿÿ' (
rect
ÿÿ( ,
,
ÿÿ, -
m_AlignByGeometry
ÿÿ. ?
)
ÿÿ? @
;
ÿÿ@ A
rect
⁄⁄ 
.
⁄⁄ 
y
⁄⁄ 
+=
⁄⁄ 
rect
⁄⁄ 
.
⁄⁄ 
height
⁄⁄ %
+
⁄⁄& '
EditorGUIUtility
⁄⁄( 8
.
⁄⁄8 9%
standardVerticalSpacing
⁄⁄9 P
;
⁄⁄P Q
rect
€€ 
.
€€ 
height
€€ 
=
€€ (
m_HorizontalOverflowHeight
€€ 8
;
€€8 9
	EditorGUI
‹‹ 
.
‹‹ 
PropertyField
‹‹ '
(
‹‹' (
rect
‹‹( ,
,
‹‹, -"
m_HorizontalOverflow
‹‹. B
)
‹‹B C
;
‹‹C D
rect
ﬁﬁ 
.
ﬁﬁ 
y
ﬁﬁ 
+=
ﬁﬁ 
rect
ﬁﬁ 
.
ﬁﬁ 
height
ﬁﬁ %
+
ﬁﬁ& '
EditorGUIUtility
ﬁﬁ( 8
.
ﬁﬁ8 9%
standardVerticalSpacing
ﬁﬁ9 P
;
ﬁﬁP Q
rect
ﬂﬂ 
.
ﬂﬂ 
height
ﬂﬂ 
=
ﬂﬂ &
m_VerticalOverflowHeight
ﬂﬂ 6
;
ﬂﬂ6 7
	EditorGUI
‡‡ 
.
‡‡ 
PropertyField
‡‡ '
(
‡‡' (
rect
‡‡( ,
,
‡‡, - 
m_VerticalOverflow
‡‡. @
)
‡‡@ A
;
‡‡A B
rect
‚‚ 
.
‚‚ 
y
‚‚ 
+=
‚‚ 
rect
‚‚ 
.
‚‚ 
height
‚‚ %
+
‚‚& '
EditorGUIUtility
‚‚( 8
.
‚‚8 9%
standardVerticalSpacing
‚‚9 P
;
‚‚P Q
rect
„„ 
.
„„ 
height
„„ 
=
„„ '
m_ResizeTextMaxSizeHeight
„„ 7
;
„„7 8
	EditorGUI
‰‰ 
.
‰‰ 
PropertyField
‰‰ '
(
‰‰' (
rect
‰‰( ,
,
‰‰, -$
m_ResizeTextForBestFit
‰‰. D
)
‰‰D E
;
‰‰E F
if
ÊÊ 
(
ÊÊ $
m_ResizeTextForBestFit
ÊÊ *
.
ÊÊ* +
	boolValue
ÊÊ+ 4
)
ÊÊ4 5
{
ÁÁ 
rect
ËË 
.
ËË 
y
ËË 
+=
ËË 
rect
ËË "
.
ËË" #
height
ËË# )
+
ËË* +
EditorGUIUtility
ËË, <
.
ËË< =%
standardVerticalSpacing
ËË= T
;
ËËT U
rect
ÈÈ 
.
ÈÈ 
height
ÈÈ 
=
ÈÈ  !'
m_ResizeTextMinSizeHeight
ÈÈ" ;
;
ÈÈ; <
	EditorGUI
ÍÍ 
.
ÍÍ 
PropertyField
ÍÍ +
(
ÍÍ+ ,
rect
ÍÍ, 0
,
ÍÍ0 1!
m_ResizeTextMinSize
ÍÍ2 E
)
ÍÍE F
;
ÍÍF G
rect
ÏÏ 
.
ÏÏ 
y
ÏÏ 
+=
ÏÏ 
rect
ÏÏ "
.
ÏÏ" #
height
ÏÏ# )
+
ÏÏ* +
EditorGUIUtility
ÏÏ, <
.
ÏÏ< =%
standardVerticalSpacing
ÏÏ= T
;
ÏÏT U
rect
ÌÌ 
.
ÌÌ 
height
ÌÌ 
=
ÌÌ  !'
m_ResizeTextMaxSizeHeight
ÌÌ" ;
;
ÌÌ; <
	EditorGUI
ÓÓ 
.
ÓÓ 
PropertyField
ÓÓ +
(
ÓÓ+ ,
rect
ÓÓ, 0
,
ÓÓ0 1!
m_ResizeTextMaxSize
ÓÓ2 E
)
ÓÓE F
;
ÓÓF G
}
ÔÔ 
}
 
--
ÒÒ 
	EditorGUI
ÒÒ 
.
ÒÒ 
indentLevel
ÒÒ #
;
ÒÒ# $
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ #
DoTextAligmentControl
ÙÙ *
(
ÙÙ* +
Rect
ÙÙ+ /
position
ÙÙ0 8
,
ÙÙ8 9 
SerializedProperty
ÙÙ: L
	alignment
ÙÙM V
)
ÙÙV W
{
ıı 	

GUIContent
ˆˆ 
alingmentContent
ˆˆ '
=
ˆˆ( )
EditorGUIUtility
ˆˆ* :
.
ˆˆ: ;
TrTextContent
ˆˆ; H
(
ˆˆH I
$str
ˆˆI T
)
ˆˆT U
;
ˆˆU V
int
¯¯ 
id
¯¯ 
=
¯¯ 
EditorGUIUtility
¯¯ %
.
¯¯% &
GetControlID
¯¯& 2
(
¯¯2 3!
s_TextAlignmentHash
¯¯3 F
,
¯¯F G
	FocusType
¯¯H Q
.
¯¯Q R
Keyboard
¯¯R Z
,
¯¯Z [
position
¯¯\ d
)
¯¯d e
;
¯¯e f
EditorGUIUtility
˙˙ 
.
˙˙ 
SetIconSize
˙˙ (
(
˙˙( )
new
˙˙) ,
Vector2
˙˙- 4
(
˙˙4 5
$num
˙˙5 7
,
˙˙7 8
$num
˙˙9 ;
)
˙˙; <
)
˙˙< =
;
˙˙= >
	EditorGUI
˚˚ 
.
˚˚ 
BeginProperty
˚˚ #
(
˚˚# $
position
˚˚$ ,
,
˚˚, -
alingmentContent
˚˚. >
,
˚˚> ?
	alignment
˚˚@ I
)
˚˚I J
;
˚˚J K
{
¸¸ 
Rect
˝˝ 
controlArea
˝˝  
=
˝˝! "
	EditorGUI
˝˝# ,
.
˝˝, -
PrefixLabel
˝˝- 8
(
˝˝8 9
position
˝˝9 A
,
˝˝A B
id
˝˝C E
,
˝˝E F
alingmentContent
˝˝G W
)
˝˝W X
;
˝˝X Y
float
ˇˇ 
width
ˇˇ 
=
ˇˇ #
kAlignmentButtonWidth
ˇˇ 3
*
ˇˇ4 5
$num
ˇˇ6 7
;
ˇˇ7 8
float
ÄÄ 
spacing
ÄÄ 
=
ÄÄ 
Mathf
ÄÄ  %
.
ÄÄ% &
Clamp
ÄÄ& +
(
ÄÄ+ ,
controlArea
ÄÄ, 7
.
ÄÄ7 8
width
ÄÄ8 =
-
ÄÄ> ?
width
ÄÄ@ E
*
ÄÄF G
$num
ÄÄH I
,
ÄÄI J
$num
ÄÄK L
,
ÄÄL M
$num
ÄÄN P
)
ÄÄP Q
;
ÄÄQ R
Rect
ÇÇ  
horizontalAligment
ÇÇ '
=
ÇÇ( )
new
ÇÇ* -
Rect
ÇÇ. 2
(
ÇÇ2 3
controlArea
ÇÇ3 >
.
ÇÇ> ?
x
ÇÇ? @
,
ÇÇ@ A
controlArea
ÇÇB M
.
ÇÇM N
y
ÇÇN O
,
ÇÇO P
width
ÇÇQ V
,
ÇÇV W
controlArea
ÇÇX c
.
ÇÇc d
height
ÇÇd j
)
ÇÇj k
;
ÇÇk l
Rect
ÉÉ 
verticalAligment
ÉÉ %
=
ÉÉ& '
new
ÉÉ( +
Rect
ÉÉ, 0
(
ÉÉ0 1 
horizontalAligment
ÉÉ1 C
.
ÉÉC D
xMax
ÉÉD H
+
ÉÉI J
spacing
ÉÉK R
,
ÉÉR S
controlArea
ÉÉT _
.
ÉÉ_ `
y
ÉÉ` a
,
ÉÉa b
width
ÉÉc h
,
ÉÉh i
controlArea
ÉÉj u
.
ÉÉu v
height
ÉÉv |
)
ÉÉ| }
;
ÉÉ} ~)
DoHorizontalAligmentControl
ÖÖ +
(
ÖÖ+ , 
horizontalAligment
ÖÖ, >
,
ÖÖ> ?
	alignment
ÖÖ@ I
)
ÖÖI J
;
ÖÖJ K'
DoVerticalAligmentControl
ÜÜ )
(
ÜÜ) *
verticalAligment
ÜÜ* :
,
ÜÜ: ;
	alignment
ÜÜ< E
)
ÜÜE F
;
ÜÜF G
}
áá 
	EditorGUI
àà 
.
àà 
EndProperty
àà !
(
àà! "
)
àà" #
;
àà# $
EditorGUIUtility
ââ 
.
ââ 
SetIconSize
ââ (
(
ââ( )
Vector2
ââ) 0
.
ââ0 1
zero
ââ1 5
)
ââ5 6
;
ââ6 7
}
ää 	
private
åå 
static
åå 
void
åå )
DoHorizontalAligmentControl
åå 7
(
åå7 8
Rect
åå8 <
position
åå= E
,
ååE F 
SerializedProperty
ååG Y
	alignment
ååZ c
)
ååc d
{
çç 	

TextAnchor
éé 
ta
éé 
=
éé 
(
éé 

TextAnchor
éé '
)
éé' (
	alignment
éé( 1
.
éé1 2
intValue
éé2 :
;
éé: ;$
HorizontalTextAligment
èè "!
horizontalAlignment
èè# 6
=
èè7 8$
GetHorizontalAlignment
èè9 O
(
èèO P
ta
èèP R
)
èèR S
;
èèS T
bool
ëë 
	leftAlign
ëë 
=
ëë 
(
ëë !
horizontalAlignment
ëë 1
==
ëë2 4$
HorizontalTextAligment
ëë5 K
.
ëëK L
Left
ëëL P
)
ëëP Q
;
ëëQ R
bool
íí 
centerAlign
íí 
=
íí 
(
íí  !
horizontalAlignment
íí  3
==
íí4 6$
HorizontalTextAligment
íí7 M
.
ííM N
Center
ííN T
)
ííT U
;
ííU V
bool
ìì 

rightAlign
ìì 
=
ìì 
(
ìì !
horizontalAlignment
ìì 2
==
ìì3 5$
HorizontalTextAligment
ìì6 L
.
ììL M
Right
ììM R
)
ììR S
;
ììS T
if
ïï 
(
ïï 
	alignment
ïï 
.
ïï (
hasMultipleDifferentValues
ïï 4
)
ïï4 5
{
ññ 
foreach
óó 
(
óó 
var
óó 
obj
óó  
in
óó! #
	alignment
óó$ -
.
óó- .
serializedObject
óó. >
.
óó> ?
targetObjects
óó? L
)
óóL M
{
òò 
Text
ôô 
text
ôô 
=
ôô 
obj
ôô  #
as
ôô$ &
Text
ôô' +
;
ôô+ ,!
horizontalAlignment
öö '
=
öö( )$
GetHorizontalAlignment
öö* @
(
öö@ A
text
ööA E
.
ööE F
	alignment
ööF O
)
ööO P
;
ööP Q
	leftAlign
õõ 
=
õõ 
	leftAlign
õõ  )
||
õõ* ,
(
õõ- .!
horizontalAlignment
õõ. A
==
õõB D$
HorizontalTextAligment
õõE [
.
õõ[ \
Left
õõ\ `
)
õõ` a
;
õõa b
centerAlign
úú 
=
úú  !
centerAlign
úú" -
||
úú. 0
(
úú1 2!
horizontalAlignment
úú2 E
==
úúF H$
HorizontalTextAligment
úúI _
.
úú_ `
Center
úú` f
)
úúf g
;
úúg h

rightAlign
ùù 
=
ùù  

rightAlign
ùù! +
||
ùù, .
(
ùù/ 0!
horizontalAlignment
ùù0 C
==
ùùD F$
HorizontalTextAligment
ùùG ]
.
ùù] ^
Right
ùù^ c
)
ùùc d
;
ùùd e
}
ûû 
}
üü 
position
°° 
.
°° 
width
°° 
=
°° #
kAlignmentButtonWidth
°° 2
;
°°2 3
	EditorGUI
££ 
.
££ 
BeginChangeCheck
££ &
(
££& '
)
££' (
;
££( )
EditorToggle
§§ 
(
§§ 
position
§§ !
,
§§! "
	leftAlign
§§# ,
,
§§, -
	leftAlign
§§. 7
?
§§8 9
Styles
§§: @
.
§§@ A#
m_LeftAlignTextActive
§§A V
:
§§W X
Styles
§§Y _
.
§§_ `
m_LeftAlignText
§§` o
,
§§o p
Styles
§§q w
.
§§w x"
alignmentButtonLeft§§x ã
)§§ã å
;§§å ç
if
•• 
(
•• 
	EditorGUI
•• 
.
•• 
EndChangeCheck
•• (
(
••( )
)
••) *
)
••* +
{
¶¶ $
SetHorizontalAlignment
ßß &
(
ßß& '
	alignment
ßß' 0
,
ßß0 1$
HorizontalTextAligment
ßß2 H
.
ßßH I
Left
ßßI M
)
ßßM N
;
ßßN O
}
®® 
position
™™ 
.
™™ 
x
™™ 
+=
™™ 
position
™™ "
.
™™" #
width
™™# (
;
™™( )
	EditorGUI
´´ 
.
´´ 
BeginChangeCheck
´´ &
(
´´& '
)
´´' (
;
´´( )
EditorToggle
¨¨ 
(
¨¨ 
position
¨¨ !
,
¨¨! "
centerAlign
¨¨# .
,
¨¨. /
centerAlign
¨¨0 ;
?
¨¨< =
Styles
¨¨> D
.
¨¨D E%
m_CenterAlignTextActive
¨¨E \
:
¨¨] ^
Styles
¨¨_ e
.
¨¨e f
m_CenterAlignText
¨¨f w
,
¨¨w x
Styles
¨¨y 
.¨¨ Ä"
alignmentButtonMid¨¨Ä í
)¨¨í ì
;¨¨ì î
if
≠≠ 
(
≠≠ 
	EditorGUI
≠≠ 
.
≠≠ 
EndChangeCheck
≠≠ (
(
≠≠( )
)
≠≠) *
)
≠≠* +
{
ÆÆ $
SetHorizontalAlignment
ØØ &
(
ØØ& '
	alignment
ØØ' 0
,
ØØ0 1$
HorizontalTextAligment
ØØ2 H
.
ØØH I
Center
ØØI O
)
ØØO P
;
ØØP Q
}
∞∞ 
position
≤≤ 
.
≤≤ 
x
≤≤ 
+=
≤≤ 
position
≤≤ "
.
≤≤" #
width
≤≤# (
;
≤≤( )
	EditorGUI
≥≥ 
.
≥≥ 
BeginChangeCheck
≥≥ &
(
≥≥& '
)
≥≥' (
;
≥≥( )
EditorToggle
¥¥ 
(
¥¥ 
position
¥¥ !
,
¥¥! "

rightAlign
¥¥# -
,
¥¥- .

rightAlign
¥¥/ 9
?
¥¥: ;
Styles
¥¥< B
.
¥¥B C$
m_RightAlignTextActive
¥¥C Y
:
¥¥Z [
Styles
¥¥\ b
.
¥¥b c
m_RightAlignText
¥¥c s
,
¥¥s t
Styles
¥¥u {
.
¥¥{ |#
alignmentButtonRight¥¥| ê
)¥¥ê ë
;¥¥ë í
if
µµ 
(
µµ 
	EditorGUI
µµ 
.
µµ 
EndChangeCheck
µµ (
(
µµ( )
)
µµ) *
)
µµ* +
{
∂∂ $
SetHorizontalAlignment
∑∑ &
(
∑∑& '
	alignment
∑∑' 0
,
∑∑0 1$
HorizontalTextAligment
∑∑2 H
.
∑∑H I
Right
∑∑I N
)
∑∑N O
;
∑∑O P
}
∏∏ 
}
ππ 	
private
ªª 
static
ªª 
void
ªª '
DoVerticalAligmentControl
ªª 5
(
ªª5 6
Rect
ªª6 :
position
ªª; C
,
ªªC D 
SerializedProperty
ªªE W
	alignment
ªªX a
)
ªªa b
{
ºº 	

TextAnchor
ΩΩ 
ta
ΩΩ 
=
ΩΩ 
(
ΩΩ 

TextAnchor
ΩΩ '
)
ΩΩ' (
	alignment
ΩΩ( 1
.
ΩΩ1 2
intValue
ΩΩ2 :
;
ΩΩ: ;"
VerticalTextAligment
ææ  "
verticalTextAligment
ææ! 5
=
ææ6 7"
GetVerticalAlignment
ææ8 L
(
ææL M
ta
ææM O
)
ææO P
;
ææP Q
bool
¿¿ 
topAlign
¿¿ 
=
¿¿ 
(
¿¿ "
verticalTextAligment
¿¿ 1
==
¿¿2 4"
VerticalTextAligment
¿¿5 I
.
¿¿I J
Top
¿¿J M
)
¿¿M N
;
¿¿N O
bool
¡¡ 
middleAlign
¡¡ 
=
¡¡ 
(
¡¡  "
verticalTextAligment
¡¡  4
==
¡¡5 7"
VerticalTextAligment
¡¡8 L
.
¡¡L M
Middle
¡¡M S
)
¡¡S T
;
¡¡T U
bool
¬¬ 
bottomAlign
¬¬ 
=
¬¬ 
(
¬¬  "
verticalTextAligment
¬¬  4
==
¬¬5 7"
VerticalTextAligment
¬¬8 L
.
¬¬L M
Bottom
¬¬M S
)
¬¬S T
;
¬¬T U
if
ƒƒ 
(
ƒƒ 
	alignment
ƒƒ 
.
ƒƒ (
hasMultipleDifferentValues
ƒƒ 4
)
ƒƒ4 5
{
≈≈ 
foreach
∆∆ 
(
∆∆ 
var
∆∆ 
obj
∆∆  
in
∆∆! #
	alignment
∆∆$ -
.
∆∆- .
serializedObject
∆∆. >
.
∆∆> ?
targetObjects
∆∆? L
)
∆∆L M
{
«« 
Text
»» 
text
»» 
=
»» 
obj
»»  #
as
»»$ &
Text
»»' +
;
»»+ ,

TextAnchor
…… 
textAlignment
…… ,
=
……- .
text
……/ 3
.
……3 4
	alignment
……4 =
;
……= >"
verticalTextAligment
   (
=
  ) *"
GetVerticalAlignment
  + ?
(
  ? @
textAlignment
  @ M
)
  M N
;
  N O
topAlign
ÀÀ 
=
ÀÀ 
topAlign
ÀÀ '
||
ÀÀ( *
(
ÀÀ+ ,"
verticalTextAligment
ÀÀ, @
==
ÀÀA C"
VerticalTextAligment
ÀÀD X
.
ÀÀX Y
Top
ÀÀY \
)
ÀÀ\ ]
;
ÀÀ] ^
middleAlign
ÃÃ 
=
ÃÃ  !
middleAlign
ÃÃ" -
||
ÃÃ. 0
(
ÃÃ1 2"
verticalTextAligment
ÃÃ2 F
==
ÃÃG I"
VerticalTextAligment
ÃÃJ ^
.
ÃÃ^ _
Middle
ÃÃ_ e
)
ÃÃe f
;
ÃÃf g
bottomAlign
ÕÕ 
=
ÕÕ  !
bottomAlign
ÕÕ" -
||
ÕÕ. 0
(
ÕÕ1 2"
verticalTextAligment
ÕÕ2 F
==
ÕÕG I"
VerticalTextAligment
ÕÕJ ^
.
ÕÕ^ _
Bottom
ÕÕ_ e
)
ÕÕe f
;
ÕÕf g
}
ŒŒ 
}
œœ 
position
““ 
.
““ 
width
““ 
=
““ #
kAlignmentButtonWidth
““ 2
;
““2 3
	EditorGUI
’’ 
.
’’ 
BeginChangeCheck
’’ &
(
’’& '
)
’’' (
;
’’( )
EditorToggle
÷÷ 
(
÷÷ 
position
÷÷ !
,
÷÷! "
topAlign
÷÷# +
,
÷÷+ ,
topAlign
÷÷- 5
?
÷÷6 7
Styles
÷÷8 >
.
÷÷> ?"
m_TopAlignTextActive
÷÷? S
:
÷÷T U
Styles
÷÷V \
.
÷÷\ ]
m_TopAlignText
÷÷] k
,
÷÷k l
Styles
÷÷m s
.
÷÷s t"
alignmentButtonLeft÷÷t á
)÷÷á à
;÷÷à â
if
◊◊ 
(
◊◊ 
	EditorGUI
◊◊ 
.
◊◊ 
EndChangeCheck
◊◊ (
(
◊◊( )
)
◊◊) *
)
◊◊* +
{
ÿÿ "
SetVerticalAlignment
ŸŸ $
(
ŸŸ$ %
	alignment
ŸŸ% .
,
ŸŸ. /"
VerticalTextAligment
ŸŸ0 D
.
ŸŸD E
Top
ŸŸE H
)
ŸŸH I
;
ŸŸI J
}
⁄⁄ 
position
‹‹ 
.
‹‹ 
x
‹‹ 
+=
‹‹ 
position
‹‹ "
.
‹‹" #
width
‹‹# (
;
‹‹( )
	EditorGUI
›› 
.
›› 
BeginChangeCheck
›› &
(
››& '
)
››' (
;
››( )
EditorToggle
ﬁﬁ 
(
ﬁﬁ 
position
ﬁﬁ !
,
ﬁﬁ! "
middleAlign
ﬁﬁ# .
,
ﬁﬁ. /
middleAlign
ﬁﬁ0 ;
?
ﬁﬁ< =
Styles
ﬁﬁ> D
.
ﬁﬁD E%
m_MiddleAlignTextActive
ﬁﬁE \
:
ﬁﬁ] ^
Styles
ﬁﬁ_ e
.
ﬁﬁe f
m_MiddleAlignText
ﬁﬁf w
,
ﬁﬁw x
Styles
ﬁﬁy 
.ﬁﬁ Ä"
alignmentButtonMidﬁﬁÄ í
)ﬁﬁí ì
;ﬁﬁì î
if
ﬂﬂ 
(
ﬂﬂ 
	EditorGUI
ﬂﬂ 
.
ﬂﬂ 
EndChangeCheck
ﬂﬂ (
(
ﬂﬂ( )
)
ﬂﬂ) *
)
ﬂﬂ* +
{
‡‡ "
SetVerticalAlignment
·· $
(
··$ %
	alignment
··% .
,
··. /"
VerticalTextAligment
··0 D
.
··D E
Middle
··E K
)
··K L
;
··L M
}
‚‚ 
position
‰‰ 
.
‰‰ 
x
‰‰ 
+=
‰‰ 
position
‰‰ "
.
‰‰" #
width
‰‰# (
;
‰‰( )
	EditorGUI
ÂÂ 
.
ÂÂ 
BeginChangeCheck
ÂÂ &
(
ÂÂ& '
)
ÂÂ' (
;
ÂÂ( )
EditorToggle
ÊÊ 
(
ÊÊ 
position
ÊÊ !
,
ÊÊ! "
bottomAlign
ÊÊ# .
,
ÊÊ. /
bottomAlign
ÊÊ0 ;
?
ÊÊ< =
Styles
ÊÊ> D
.
ÊÊD E%
m_BottomAlignTextActive
ÊÊE \
:
ÊÊ] ^
Styles
ÊÊ_ e
.
ÊÊe f
m_BottomAlignText
ÊÊf w
,
ÊÊw x
Styles
ÊÊy 
.ÊÊ Ä$
alignmentButtonRightÊÊÄ î
)ÊÊî ï
;ÊÊï ñ
if
ÁÁ 
(
ÁÁ 
	EditorGUI
ÁÁ 
.
ÁÁ 
EndChangeCheck
ÁÁ (
(
ÁÁ( )
)
ÁÁ) *
)
ÁÁ* +
{
ËË "
SetVerticalAlignment
ÈÈ $
(
ÈÈ$ %
	alignment
ÈÈ% .
,
ÈÈ. /"
VerticalTextAligment
ÈÈ0 D
.
ÈÈD E
Bottom
ÈÈE K
)
ÈÈK L
;
ÈÈL M
}
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
static
ÌÌ 
bool
ÌÌ 
EditorToggle
ÌÌ (
(
ÌÌ( )
Rect
ÌÌ) -
position
ÌÌ. 6
,
ÌÌ6 7
bool
ÌÌ8 <
value
ÌÌ= B
,
ÌÌB C

GUIContent
ÌÌD N
content
ÌÌO V
,
ÌÌV W
GUIStyle
ÌÌX `
style
ÌÌa f
)
ÌÌf g
{
ÓÓ 	
int
ÔÔ 
hashCode
ÔÔ 
=
ÔÔ 
$str
ÔÔ (
.
ÔÔ( )
GetHashCode
ÔÔ) 4
(
ÔÔ4 5
)
ÔÔ5 6
;
ÔÔ6 7
int
 
id
 
=
 
EditorGUIUtility
 %
.
% &
GetControlID
& 2
(
2 3
hashCode
3 ;
,
; <
	FocusType
= F
.
F G
Keyboard
G O
,
O P
position
Q Y
)
Y Z
;
Z [
Event
ÒÒ 
evt
ÒÒ 
=
ÒÒ 
Event
ÒÒ 
.
ÒÒ 
current
ÒÒ %
;
ÒÒ% &
if
ÙÙ 
(
ÙÙ 
EditorGUIUtility
ÙÙ  
.
ÙÙ  !
keyboardControl
ÙÙ! 0
==
ÙÙ1 3
id
ÙÙ4 6
&&
ÙÙ7 9
evt
ÙÙ: =
.
ÙÙ= >
type
ÙÙ> B
==
ÙÙC E
	EventType
ÙÙF O
.
ÙÙO P
KeyDown
ÙÙP W
&&
ÙÙX Z
(
ÙÙ[ \
evt
ÙÙ\ _
.
ÙÙ_ `
keyCode
ÙÙ` g
==
ÙÙh j
KeyCode
ÙÙk r
.
ÙÙr s
Space
ÙÙs x
||
ÙÙy {
evt
ÙÙ| 
.ÙÙ Ä
keyCodeÙÙÄ á
==ÙÙà ä
KeyCodeÙÙã í
.ÙÙí ì
ReturnÙÙì ô
||ÙÙö ú
evtÙÙù †
.ÙÙ† °
keyCodeÙÙ° ®
==ÙÙ© ´
KeyCodeÙÙ¨ ≥
.ÙÙ≥ ¥
KeypadEnterÙÙ¥ ø
)ÙÙø ¿
)ÙÙ¿ ¡
{
ıı 
value
ˆˆ 
=
ˆˆ 
!
ˆˆ 
value
ˆˆ 
;
ˆˆ 
evt
˜˜ 
.
˜˜ 
Use
˜˜ 
(
˜˜ 
)
˜˜ 
;
˜˜ 
GUI
¯¯ 
.
¯¯ 
changed
¯¯ 
=
¯¯ 
true
¯¯ "
;
¯¯" #
}
˘˘ 
if
˚˚ 
(
˚˚ 
evt
˚˚ 
.
˚˚ 
type
˚˚ 
==
˚˚ 
	EventType
˚˚ %
.
˚˚% &
KeyDown
˚˚& -
&&
˚˚. 0
Event
˚˚1 6
.
˚˚6 7
current
˚˚7 >
.
˚˚> ?
button
˚˚? E
==
˚˚F H
$num
˚˚I J
&&
˚˚K M
position
˚˚N V
.
˚˚V W
Contains
˚˚W _
(
˚˚_ `
Event
˚˚` e
.
˚˚e f
current
˚˚f m
.
˚˚m n
mousePosition
˚˚n {
)
˚˚{ |
)
˚˚| }
{
¸¸ 

GUIUtility
˝˝ 
.
˝˝ 
keyboardControl
˝˝ *
=
˝˝+ ,
id
˝˝- /
;
˝˝/ 0
EditorGUIUtility
˛˛  
.
˛˛  !
editingTextField
˛˛! 1
=
˛˛2 3
false
˛˛4 9
;
˛˛9 :
HandleUtility
ˇˇ 
.
ˇˇ 
Repaint
ˇˇ %
(
ˇˇ% &
)
ˇˇ& '
;
ˇˇ' (
}
ÄÄ 
bool
ÇÇ 
returnValue
ÇÇ 
=
ÇÇ 
GUI
ÇÇ "
.
ÇÇ" #
Toggle
ÇÇ# )
(
ÇÇ) *
position
ÇÇ* 2
,
ÇÇ2 3
id
ÇÇ4 6
,
ÇÇ6 7
value
ÇÇ8 =
,
ÇÇ= >
content
ÇÇ? F
,
ÇÇF G
style
ÇÇH M
)
ÇÇM N
;
ÇÇN O
return
ÑÑ 
returnValue
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
private
áá 
static
áá $
HorizontalTextAligment
áá -$
GetHorizontalAlignment
áá. D
(
ááD E

TextAnchor
ááE O
ta
ááP R
)
ááR S
{
àà 	
switch
ââ 
(
ââ 
ta
ââ 
)
ââ 
{
ää 
case
ãã 

TextAnchor
ãã 
.
ãã  
MiddleCenter
ãã  ,
:
ãã, -
case
åå 

TextAnchor
åå 
.
åå  
UpperCenter
åå  +
:
åå+ ,
case
çç 

TextAnchor
çç 
.
çç  
LowerCenter
çç  +
:
çç+ ,
return
éé $
HorizontalTextAligment
éé 1
.
éé1 2
Center
éé2 8
;
éé8 9
case
êê 

TextAnchor
êê 
.
êê  

UpperRight
êê  *
:
êê* +
case
ëë 

TextAnchor
ëë 
.
ëë  
MiddleRight
ëë  +
:
ëë+ ,
case
íí 

TextAnchor
íí 
.
íí  

LowerRight
íí  *
:
íí* +
return
ìì $
HorizontalTextAligment
ìì 1
.
ìì1 2
Right
ìì2 7
;
ìì7 8
case
ïï 

TextAnchor
ïï 
.
ïï  
	UpperLeft
ïï  )
:
ïï) *
case
ññ 

TextAnchor
ññ 
.
ññ  

MiddleLeft
ññ  *
:
ññ* +
case
óó 

TextAnchor
óó 
.
óó  
	LowerLeft
óó  )
:
óó) *
return
òò $
HorizontalTextAligment
òò 1
.
òò1 2
Left
òò2 6
;
òò6 7
}
ôô 
return
õõ $
HorizontalTextAligment
õõ )
.
õõ) *
Left
õõ* .
;
õõ. /
}
úú 	
private
ûû 
static
ûû "
VerticalTextAligment
ûû +"
GetVerticalAlignment
ûû, @
(
ûû@ A

TextAnchor
ûûA K
ta
ûûL N
)
ûûN O
{
üü 	
switch
†† 
(
†† 
ta
†† 
)
†† 
{
°° 
case
¢¢ 

TextAnchor
¢¢ 
.
¢¢  
	UpperLeft
¢¢  )
:
¢¢) *
case
££ 

TextAnchor
££ 
.
££  
UpperCenter
££  +
:
££+ ,
case
§§ 

TextAnchor
§§ 
.
§§  

UpperRight
§§  *
:
§§* +
return
•• "
VerticalTextAligment
•• /
.
••/ 0
Top
••0 3
;
••3 4
case
ßß 

TextAnchor
ßß 
.
ßß  

MiddleLeft
ßß  *
:
ßß* +
case
®® 

TextAnchor
®® 
.
®®  
MiddleCenter
®®  ,
:
®®, -
case
©© 

TextAnchor
©© 
.
©©  
MiddleRight
©©  +
:
©©+ ,
return
™™ "
VerticalTextAligment
™™ /
.
™™/ 0
Middle
™™0 6
;
™™6 7
case
¨¨ 

TextAnchor
¨¨ 
.
¨¨  
	LowerLeft
¨¨  )
:
¨¨) *
case
≠≠ 

TextAnchor
≠≠ 
.
≠≠  
LowerCenter
≠≠  +
:
≠≠+ ,
case
ÆÆ 

TextAnchor
ÆÆ 
.
ÆÆ  

LowerRight
ÆÆ  *
:
ÆÆ* +
return
ØØ "
VerticalTextAligment
ØØ /
.
ØØ/ 0
Bottom
ØØ0 6
;
ØØ6 7
}
∞∞ 
return
≤≤ "
VerticalTextAligment
≤≤ '
.
≤≤' (
Top
≤≤( +
;
≤≤+ ,
}
≥≥ 	
private
∂∂ 
static
∂∂ 
void
∂∂ $
SetHorizontalAlignment
∂∂ 2
(
∂∂2 3 
SerializedProperty
∂∂3 E
	alignment
∂∂F O
,
∂∂O P$
HorizontalTextAligment
∂∂Q g!
horizontalAlignment
∂∂h {
)
∂∂{ |
{
∑∑ 	
foreach
∏∏ 
(
∏∏ 
var
∏∏ 
obj
∏∏ 
in
∏∏ 
	alignment
∏∏  )
.
∏∏) *
serializedObject
∏∏* :
.
∏∏: ;
targetObjects
∏∏; H
)
∏∏H I
{
ππ 
Text
∫∫ 
text
∫∫ 
=
∫∫ 
obj
∫∫ 
as
∫∫  "
Text
∫∫# '
;
∫∫' ("
VerticalTextAligment
ªª $%
currentVerticalAligment
ªª% <
=
ªª= >"
GetVerticalAlignment
ªª? S
(
ªªS T
text
ªªT X
.
ªªX Y
	alignment
ªªY b
)
ªªb c
;
ªªc d
Undo
ºº 
.
ºº 
RecordObject
ºº !
(
ºº! "
text
ºº" &
,
ºº& '
$str
ºº( >
)
ºº> ?
;
ºº? @
text
ΩΩ 
.
ΩΩ 
	alignment
ΩΩ 
=
ΩΩ  
	GetAnchor
ΩΩ! *
(
ΩΩ* +%
currentVerticalAligment
ΩΩ+ B
,
ΩΩB C!
horizontalAlignment
ΩΩD W
)
ΩΩW X
;
ΩΩX Y
EditorUtility
ææ 
.
ææ 
SetDirty
ææ &
(
ææ& '
obj
ææ' *
)
ææ* +
;
ææ+ ,
}
øø 
}
¿¿ 	
private
¬¬ 
static
¬¬ 
void
¬¬ "
SetVerticalAlignment
¬¬ 0
(
¬¬0 1 
SerializedProperty
¬¬1 C
	alignment
¬¬D M
,
¬¬M N"
VerticalTextAligment
¬¬O c
verticalAlignment
¬¬d u
)
¬¬u v
{
√√ 	
foreach
ƒƒ 
(
ƒƒ 
var
ƒƒ 
obj
ƒƒ 
in
ƒƒ 
	alignment
ƒƒ  )
.
ƒƒ) *
serializedObject
ƒƒ* :
.
ƒƒ: ;
targetObjects
ƒƒ; H
)
ƒƒH I
{
≈≈ 
Text
∆∆ 
text
∆∆ 
=
∆∆ 
obj
∆∆ 
as
∆∆  "
Text
∆∆# '
;
∆∆' ($
HorizontalTextAligment
«« &'
currentHorizontalAligment
««' @
=
««A B$
GetHorizontalAlignment
««C Y
(
««Y Z
text
««Z ^
.
««^ _
	alignment
««_ h
)
««h i
;
««i j
Undo
»» 
.
»» 
RecordObject
»» !
(
»»! "
text
»»" &
,
»»& '
$str
»»( <
)
»»< =
;
»»= >
text
…… 
.
…… 
	alignment
…… 
=
……  
	GetAnchor
……! *
(
……* +
verticalAlignment
……+ <
,
……< ='
currentHorizontalAligment
……> W
)
……W X
;
……X Y
EditorUtility
   
.
   
SetDirty
   &
(
  & '
obj
  ' *
)
  * +
;
  + ,
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
static
ŒŒ 

TextAnchor
ŒŒ !
	GetAnchor
ŒŒ" +
(
ŒŒ+ ,"
VerticalTextAligment
ŒŒ, @"
verticalTextAligment
ŒŒA U
,
ŒŒU V$
HorizontalTextAligment
ŒŒW m%
horizontalTextAligmentŒŒn Ñ
)ŒŒÑ Ö
{
œœ 	

TextAnchor
–– 
ac
–– 
=
–– 

TextAnchor
–– &
.
––& '
	UpperLeft
––' 0
;
––0 1
switch
““ 
(
““ $
horizontalTextAligment
““ *
)
““* +
{
”” 
case
‘‘ $
HorizontalTextAligment
‘‘ +
.
‘‘+ ,
Left
‘‘, 0
:
‘‘0 1
switch
’’ 
(
’’ "
verticalTextAligment
’’ 0
)
’’0 1
{
÷÷ 
case
◊◊ "
VerticalTextAligment
◊◊ 1
.
◊◊1 2
Bottom
◊◊2 8
:
◊◊8 9
ac
ÿÿ 
=
ÿÿ  

TextAnchor
ÿÿ! +
.
ÿÿ+ ,
	LowerLeft
ÿÿ, 5
;
ÿÿ5 6
break
ŸŸ !
;
ŸŸ! "
case
⁄⁄ "
VerticalTextAligment
⁄⁄ 1
.
⁄⁄1 2
Middle
⁄⁄2 8
:
⁄⁄8 9
ac
€€ 
=
€€  

TextAnchor
€€! +
.
€€+ ,

MiddleLeft
€€, 6
;
€€6 7
break
‹‹ !
;
‹‹! "
default
›› 
:
››  
ac
ﬁﬁ 
=
ﬁﬁ  

TextAnchor
ﬁﬁ! +
.
ﬁﬁ+ ,
	UpperLeft
ﬁﬁ, 5
;
ﬁﬁ5 6
break
ﬂﬂ !
;
ﬂﬂ! "
}
‡‡ 
break
·· 
;
·· 
case
‚‚ $
HorizontalTextAligment
‚‚ +
.
‚‚+ ,
Center
‚‚, 2
:
‚‚2 3
switch
„„ 
(
„„ "
verticalTextAligment
„„ 0
)
„„0 1
{
‰‰ 
case
ÂÂ "
VerticalTextAligment
ÂÂ 1
.
ÂÂ1 2
Bottom
ÂÂ2 8
:
ÂÂ8 9
ac
ÊÊ 
=
ÊÊ  

TextAnchor
ÊÊ! +
.
ÊÊ+ ,
LowerCenter
ÊÊ, 7
;
ÊÊ7 8
break
ÁÁ !
;
ÁÁ! "
case
ËË "
VerticalTextAligment
ËË 1
.
ËË1 2
Middle
ËË2 8
:
ËË8 9
ac
ÈÈ 
=
ÈÈ  

TextAnchor
ÈÈ! +
.
ÈÈ+ ,
MiddleCenter
ÈÈ, 8
;
ÈÈ8 9
break
ÍÍ !
;
ÍÍ! "
default
ÎÎ 
:
ÎÎ  
ac
ÏÏ 
=
ÏÏ  

TextAnchor
ÏÏ! +
.
ÏÏ+ ,
UpperCenter
ÏÏ, 7
;
ÏÏ7 8
break
ÌÌ !
;
ÌÌ! "
}
ÓÓ 
break
ÔÔ 
;
ÔÔ 
default
 
:
 
switch
ÒÒ 
(
ÒÒ "
verticalTextAligment
ÒÒ 0
)
ÒÒ0 1
{
ÚÚ 
case
ÛÛ "
VerticalTextAligment
ÛÛ 1
.
ÛÛ1 2
Bottom
ÛÛ2 8
:
ÛÛ8 9
ac
ÙÙ 
=
ÙÙ  

TextAnchor
ÙÙ! +
.
ÙÙ+ ,

LowerRight
ÙÙ, 6
;
ÙÙ6 7
break
ıı !
;
ıı! "
case
ˆˆ "
VerticalTextAligment
ˆˆ 1
.
ˆˆ1 2
Middle
ˆˆ2 8
:
ˆˆ8 9
ac
˜˜ 
=
˜˜  

TextAnchor
˜˜! +
.
˜˜+ ,
MiddleRight
˜˜, 7
;
˜˜7 8
break
¯¯ !
;
¯¯! "
default
˘˘ 
:
˘˘  
ac
˙˙ 
=
˙˙  

TextAnchor
˙˙! +
.
˙˙+ ,

UpperRight
˙˙, 6
;
˙˙6 7
break
˚˚ !
;
˚˚! "
}
¸¸ 
break
˝˝ 
;
˝˝ 
}
˛˛ 
return
ˇˇ 
ac
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ Ë
üC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\Physics2DRaycasterEditor.cs
	namespace 	
UnityEditor
 
. 
EventSystems "
{ 
[ 
CustomEditor 
( 
typeof 
( 
Physics2DRaycaster +
)+ ,
,, -
true. 2
)2 3
]3 4
public 

class $
Physics2DRaycasterEditor )
:* +
Editor, 2
{ 
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
base 
. 
OnInspectorGUI 
(  
)  !
;! "
} 	
} 
} πi
éC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\InputFieldEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ "
CanEditMultipleObjects 
] 
[ 
CustomEditor 
( 
typeof 
( 

InputField #
)# $
,$ %
true& *
)* +
]+ ,
public 

class 
InputFieldEditor !
:" #
SelectableEditor$ 4
{ 
SerializedProperty 
m_TextComponent *
;* +
SerializedProperty 
m_Text !
;! "
SerializedProperty 
m_ContentType (
;( )
SerializedProperty 

m_LineType %
;% &
SerializedProperty 
m_InputType &
;& '
SerializedProperty !
m_CharacterValidation 0
;0 1
SerializedProperty 
m_KeyboardType )
;) *
SerializedProperty 
m_CharacterLimit +
;+ ,
SerializedProperty 
m_CaretBlinkRate +
;+ ,
SerializedProperty 
m_CaretWidth '
;' (
SerializedProperty 
m_CaretColor '
;' (
SerializedProperty 
m_CustomCaretColor -
;- .
SerializedProperty 
m_SelectionColor +
;+ ,
SerializedProperty 
m_HideMobileInput ,
;, -
SerializedProperty 
m_Placeholder (
;( )
SerializedProperty 
m_OnValueChanged +
;+ ,
SerializedProperty 
m_OnEndEdit &
;& '
SerializedProperty   

m_ReadOnly   %
;  % &
SerializedProperty!! $
m_ShouldActivateOnSelect!! 3
;!!3 4
AnimBool## 
m_CustomColor## 
;## 
	protected%% 
override%% 
void%% 
OnEnable%%  (
(%%( )
)%%) *
{&& 	
base'' 
.'' 
OnEnable'' 
('' 
)'' 
;'' 
m_TextComponent(( 
=(( 
serializedObject(( .
.((. /
FindProperty((/ ;
(((; <
$str((< M
)((M N
;((N O
m_Text)) 
=)) 
serializedObject)) %
.))% &
FindProperty))& 2
())2 3
$str))3 ;
))); <
;))< =
m_ContentType** 
=** 
serializedObject** ,
.**, -
FindProperty**- 9
(**9 :
$str**: I
)**I J
;**J K

m_LineType++ 
=++ 
serializedObject++ )
.++) *
FindProperty++* 6
(++6 7
$str++7 C
)++C D
;++D E
m_InputType,, 
=,, 
serializedObject,, *
.,,* +
FindProperty,,+ 7
(,,7 8
$str,,8 E
),,E F
;,,F G!
m_CharacterValidation-- !
=--" #
serializedObject--$ 4
.--4 5
FindProperty--5 A
(--A B
$str--B Y
)--Y Z
;--Z [
m_KeyboardType.. 
=.. 
serializedObject.. -
...- .
FindProperty... :
(..: ;
$str..; K
)..K L
;..L M
m_CharacterLimit// 
=// 
serializedObject// /
./// 0
FindProperty//0 <
(//< =
$str//= O
)//O P
;//P Q
m_CaretBlinkRate00 
=00 
serializedObject00 /
.00/ 0
FindProperty000 <
(00< =
$str00= O
)00O P
;00P Q
m_CaretWidth11 
=11 
serializedObject11 +
.11+ ,
FindProperty11, 8
(118 9
$str119 G
)11G H
;11H I
m_CaretColor22 
=22 
serializedObject22 +
.22+ ,
FindProperty22, 8
(228 9
$str229 G
)22G H
;22H I
m_CustomCaretColor33 
=33  
serializedObject33! 1
.331 2
FindProperty332 >
(33> ?
$str33? S
)33S T
;33T U
m_SelectionColor44 
=44 
serializedObject44 /
.44/ 0
FindProperty440 <
(44< =
$str44= O
)44O P
;44P Q
m_HideMobileInput55 
=55 
serializedObject55  0
.550 1
FindProperty551 =
(55= >
$str55> Q
)55Q R
;55R S
m_Placeholder66 
=66 
serializedObject66 ,
.66, -
FindProperty66- 9
(669 :
$str66: I
)66I J
;66J K
m_OnValueChanged77 
=77 
serializedObject77 /
.77/ 0
FindProperty770 <
(77< =
$str77= O
)77O P
;77P Q
m_OnEndEdit88 
=88 
serializedObject88 *
.88* +
FindProperty88+ 7
(887 8
$str888 E
)88E F
;88F G

m_ReadOnly99 
=99 
serializedObject99 )
.99) *
FindProperty99* 6
(996 7
$str997 C
)99C D
;99D E$
m_ShouldActivateOnSelect:: $
=::% &
serializedObject::' 7
.::7 8
FindProperty::8 D
(::D E
$str::E _
)::_ `
;::` a
m_CustomColor<< 
=<< 
new<< 
AnimBool<<  (
(<<( )
m_CustomCaretColor<<) ;
.<<; <
	boolValue<<< E
)<<E F
;<<F G
m_CustomColor== 
.== 
valueChanged== &
.==& '
AddListener==' 2
(==2 3
Repaint==3 :
)==: ;
;==; <
}>> 	
	protected@@ 
override@@ 
void@@ 
	OnDisable@@  )
(@@) *
)@@* +
{AA 	
baseBB 
.BB 
	OnDisableBB 
(BB 
)BB 
;BB 
m_CustomColorCC 
.CC 
valueChangedCC &
.CC& '
RemoveListenerCC' 5
(CC5 6
RepaintCC6 =
)CC= >
;CC> ?
}DD 	
publicFF 
overrideFF 
voidFF 
OnInspectorGUIFF +
(FF+ ,
)FF, -
{GG 	
serializedObjectHH 
.HH 
UpdateHH #
(HH# $
)HH$ %
;HH% &
baseJJ 
.JJ 
OnInspectorGUIJJ 
(JJ  
)JJ  !
;JJ! "
EditorGUILayoutLL 
.LL 
SpaceLL !
(LL! "
)LL" #
;LL# $
EditorGUILayoutNN 
.NN 
PropertyFieldNN )
(NN) *
m_TextComponentNN* 9
)NN9 :
;NN: ;
ifPP 
(PP 
m_TextComponentPP 
!=PP  "
nullPP# '
&&PP( *
m_TextComponentPP+ :
.PP: ; 
objectReferenceValuePP; O
!=PPP R
nullPPS W
)PPW X
{QQ 
TextRR 
textRR 
=RR 
m_TextComponentRR +
.RR+ , 
objectReferenceValueRR, @
asRRA C
TextRRD H
;RRH I
ifSS 
(SS 
textSS 
.SS 
supportRichTextSS (
)SS( )
{TT 
EditorGUILayoutUU #
.UU# $
HelpBoxUU$ +
(UU+ ,
$strUU, X
,UUX Y
MessageTypeUUZ e
.UUe f
WarningUUf m
)UUm n
;UUn o
}VV 
}WW 
usingYY 
(YY 
newYY 
	EditorGUIYY  
.YY  !
DisabledScopeYY! .
(YY. /
m_TextComponentYY/ >
==YY? A
nullYYB F
||YYG I
m_TextComponentYYJ Y
.YYY Z 
objectReferenceValueYYZ n
==YYo q
nullYYr v
)YYv w
)YYw x
{ZZ 
EditorGUILayout[[ 
.[[  
PropertyField[[  -
([[- .
m_Text[[. 4
)[[4 5
;[[5 6
EditorGUILayout\\ 
.\\  
PropertyField\\  -
(\\- .
m_CharacterLimit\\. >
)\\> ?
;\\? @
EditorGUILayout^^ 
.^^  
Space^^  %
(^^% &
)^^& '
;^^' (
EditorGUILayout`` 
.``  
PropertyField``  -
(``- .
m_ContentType``. ;
)``; <
;``< =
ifaa 
(aa 
!aa 
m_ContentTypeaa "
.aa" #&
hasMultipleDifferentValuesaa# =
)aa= >
{bb 
	EditorGUIcc 
.cc 
indentLevelcc )
++cc) +
;cc+ ,
ifee 
(ee 
m_ContentTypeee %
.ee% &
enumValueIndexee& 4
==ee5 7
(ee8 9
intee9 <
)ee< =

InputFieldee= G
.eeG H
ContentTypeeeH S
.eeS T
StandardeeT \
||ee] _
m_ContentTypeff %
.ff% &
enumValueIndexff& 4
==ff5 7
(ff8 9
intff9 <
)ff< =

InputFieldff= G
.ffG H
ContentTypeffH S
.ffS T
AutocorrectedffT a
||ffb d
m_ContentTypegg %
.gg% &
enumValueIndexgg& 4
==gg5 7
(gg8 9
intgg9 <
)gg< =

InputFieldgg= G
.ggG H
ContentTypeggH S
.ggS T
CustomggT Z
)ggZ [
EditorGUILayouthh '
.hh' (
PropertyFieldhh( 5
(hh5 6

m_LineTypehh6 @
)hh@ A
;hhA B
ifjj 
(jj 
m_ContentTypejj %
.jj% &
enumValueIndexjj& 4
==jj5 7
(jj8 9
intjj9 <
)jj< =

InputFieldjj= G
.jjG H
ContentTypejjH S
.jjS T
CustomjjT Z
)jjZ [
{kk 
EditorGUILayoutll '
.ll' (
PropertyFieldll( 5
(ll5 6
m_InputTypell6 A
)llA B
;llB C
EditorGUILayoutmm '
.mm' (
PropertyFieldmm( 5
(mm5 6
m_KeyboardTypemm6 D
)mmD E
;mmE F
EditorGUILayoutnn '
.nn' (
PropertyFieldnn( 5
(nn5 6!
m_CharacterValidationnn6 K
)nnK L
;nnL M
}oo 
	EditorGUIqq 
.qq 
indentLevelqq )
--qq) +
;qq+ ,
}rr 
EditorGUILayouttt 
.tt  
Spacett  %
(tt% &
)tt& '
;tt' (
EditorGUILayoutvv 
.vv  
PropertyFieldvv  -
(vv- .
m_Placeholdervv. ;
)vv; <
;vv< =
EditorGUILayoutww 
.ww  
PropertyFieldww  -
(ww- .
m_CaretBlinkRateww. >
)ww> ?
;ww? @
EditorGUILayoutxx 
.xx  
PropertyFieldxx  -
(xx- .
m_CaretWidthxx. :
)xx: ;
;xx; <
EditorGUILayoutzz 
.zz  
PropertyFieldzz  -
(zz- .
m_CustomCaretColorzz. @
)zz@ A
;zzA B
m_CustomColor|| 
.|| 
target|| $
=||% &
m_CustomCaretColor||' 9
.||9 :
	boolValue||: C
;||C D
if~~ 
(~~ 
EditorGUILayout~~ #
.~~# $
BeginFadeGroup~~$ 2
(~~2 3
m_CustomColor~~3 @
.~~@ A
faded~~A F
)~~F G
)~~G H
{ 
EditorGUILayout
ÄÄ #
.
ÄÄ# $
PropertyField
ÄÄ$ 1
(
ÄÄ1 2
m_CaretColor
ÄÄ2 >
)
ÄÄ> ?
;
ÄÄ? @
}
ÅÅ 
EditorGUILayout
ÇÇ 
.
ÇÇ  
EndFadeGroup
ÇÇ  ,
(
ÇÇ, -
)
ÇÇ- .
;
ÇÇ. /
EditorGUILayout
ÑÑ 
.
ÑÑ  
PropertyField
ÑÑ  -
(
ÑÑ- .
m_SelectionColor
ÑÑ. >
)
ÑÑ> ?
;
ÑÑ? @
EditorGUILayout
ÖÖ 
.
ÖÖ  
PropertyField
ÖÖ  -
(
ÖÖ- .
m_HideMobileInput
ÖÖ. ?
)
ÖÖ? @
;
ÖÖ@ A
EditorGUILayout
ÜÜ 
.
ÜÜ  
PropertyField
ÜÜ  -
(
ÜÜ- .

m_ReadOnly
ÜÜ. 8
)
ÜÜ8 9
;
ÜÜ9 :
EditorGUILayout
áá 
.
áá  
PropertyField
áá  -
(
áá- .&
m_ShouldActivateOnSelect
áá. F
)
ááF G
;
ááG H
EditorGUILayout
ââ 
.
ââ  
Space
ââ  %
(
ââ% &
)
ââ& '
;
ââ' (
EditorGUILayout
ãã 
.
ãã  
PropertyField
ãã  -
(
ãã- .
m_OnValueChanged
ãã. >
)
ãã> ?
;
ãã? @
EditorGUILayout
åå 
.
åå  
PropertyField
åå  -
(
åå- .
m_OnEndEdit
åå. 9
)
åå9 :
;
åå: ;
}
çç 
serializedObject
èè 
.
èè %
ApplyModifiedProperties
èè 4
(
èè4 5
)
èè5 6
;
èè6 7
}
êê 	
}
ëë 
}íí › 
òC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\EventSystemEditor.cs
	namespace 	
UnityEditor
 
. 
EventSystems "
{ 
[ 
CustomEditor 
( 
typeof 
( 
EventSystem $
)$ %
,% &
true' +
)+ ,
], -
public 

class 
EventSystemEditor "
:# $
Editor% +
{ 
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	 
DrawDefaultInspector  
(  !
)! "
;" #
var 
eventSystem 
= 
target $
as% '
EventSystem( 3
;3 4
if 
( 
eventSystem 
== 
null #
)# $
return 
; 
if 
( 
eventSystem 
. 
GetComponent (
<( )
BaseInputModule) 8
>8 9
(9 :
): ;
!=< >
null? C
)C D
return 
; 
if 
( 
	GUILayout 
. 
Button  
(  !
$str! <
)< =
)= >
{ 
ObjectFactory 
. 
AddComponent *
<* +!
StandaloneInputModule+ @
>@ A
(A B
eventSystemB M
.M N

gameObjectN X
)X Y
;Y Z
Undo 
. %
RegisterCreatedObjectUndo .
(. /
eventSystem/ :
.: ;

gameObject; E
,E F
$strG b
)b c
;c d
} 
} 	
public   
override   
bool   
HasPreviewGUI   *
(  * +
)  + ,
{!! 	
return"" 
Application"" 
."" 
	isPlaying"" (
;""( )
}## 	
private%% 
GUIStyle%% 
m_PreviewLabelStyle%% ,
;%%, -
	protected'' 
GUIStyle'' 
previewLabelStyle'' ,
{(( 	
get)) 
{** 
if++ 
(++ 
m_PreviewLabelStyle++ '
==++( *
null+++ /
)++/ 0
{,, 
m_PreviewLabelStyle-- '
=--( )
new--* -
GUIStyle--. 6
(--6 7
$str--7 H
)--H I
{.. 
richText//  
=//! "
true//# '
,//' (
	alignment00 !
=00" #

TextAnchor00$ .
.00. /
	UpperLeft00/ 8
,008 9
	fontStyle11 !
=11" #
	FontStyle11$ -
.11- .
Normal11. 4
}22 
;22 
}33 
return55 
m_PreviewLabelStyle55 *
;55* +
}66 
}77 	
public99 
override99 
bool99 #
RequiresConstantRepaint99 4
(994 5
)995 6
{:: 	
return;; 
Application;; 
.;; 
	isPlaying;; (
;;;( )
}<< 	
public>> 
override>> 
void>> 
OnPreviewGUI>> )
(>>) *
Rect>>* .
rect>>/ 3
,>>3 4
GUIStyle>>5 =

background>>> H
)>>H I
{?? 	
var@@ 
system@@ 
=@@ 
target@@ 
as@@  "
EventSystem@@# .
;@@. /
ifAA 
(AA 
systemAA 
==AA 
nullAA 
)AA 
returnBB 
;BB 
GUIDD 
.DD 
LabelDD 
(DD 
rectDD 
,DD 
systemDD "
.DD" #
ToStringDD# +
(DD+ ,
)DD, -
,DD- .
previewLabelStyleDD/ @
)DD@ A
;DDA B
}EE 	
}FF 
}GG ”é
êC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\CanvasScalerEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
CanvasScaler %
)% &
,& '
true( ,
), -
]- .
[ "
CanEditMultipleObjects 
] 
public 

class 
CanvasScalerEditor #
:$ %
Editor& ,
{ 
SerializedProperty 
m_UiScaleMode (
;( )
SerializedProperty 
m_ScaleFactor (
;( )
SerializedProperty !
m_ReferenceResolution 0
;0 1
SerializedProperty 
m_ScreenMatchMode ,
;, -
SerializedProperty  
m_MatchWidthOrHeight /
;/ 0
SerializedProperty 
m_PhysicalUnit )
;) *
SerializedProperty 
m_FallbackScreenDPI .
;. /
SerializedProperty 
m_DefaultSpriteDPI -
;- .
SerializedProperty "
m_DynamicPixelsPerUnit 1
;1 2
SerializedProperty $
m_ReferencePixelsPerUnit 3
;3 4
SerializedProperty 
m_PresetInfoIsWorld .
;. /
const 
int '
kSliderEndpointLabelsHeight -
=. /
$num0 2
;2 3
private 
class 
Styles 
{ 	
public 

GUIContent 
matchContent *
;* +
public 

GUIContent 
widthContent *
;* +
public   

GUIContent   
heightContent   +
;  + ,
public!! 

GUIContent!! 
uiScaleModeContent!! 0
;!!0 1
public"" 
GUIStyle"" 
leftAlignedLabel"" ,
;"", -
public## 
GUIStyle## 
rightAlignedLabel## -
;##- .
public%% 
Styles%% 
(%% 
)%% 
{&& 
matchContent'' 
='' 
EditorGUIUtility'' /
.''/ 0
TrTextContent''0 =
(''= >
$str''> E
)''E F
;''F G
widthContent(( 
=(( 
EditorGUIUtility(( /
.((/ 0
TrTextContent((0 =
(((= >
$str((> E
)((E F
;((F G
heightContent)) 
=)) 
EditorGUIUtility))  0
.))0 1
TrTextContent))1 >
())> ?
$str))? G
)))G H
;))H I
uiScaleModeContent** "
=**# $
EditorGUIUtility**% 5
.**5 6
TrTextContent**6 C
(**C D
$str**D S
)**S T
;**T U
leftAlignedLabel,,  
=,,! "
new,,# &
GUIStyle,,' /
(,,/ 0
EditorStyles,,0 <
.,,< =
label,,= B
),,B C
;,,C D
rightAlignedLabel-- !
=--" #
new--$ '
GUIStyle--( 0
(--0 1
EditorStyles--1 =
.--= >
label--> C
)--C D
;--D E
rightAlignedLabel.. !
...! "
	alignment.." +
=.., -

TextAnchor... 8
...8 9
MiddleRight..9 D
;..D E
}// 
}00 	
private11 
static11 
Styles11 
s_Styles11 &
;11& '
private22 
bool22 
	bIsPreset22 
;22 
	protected44 
virtual44 
void44 
OnEnable44 '
(44' (
)44( )
{55 	
m_UiScaleMode66 
=66 
serializedObject66 ,
.66, -
FindProperty66- 9
(669 :
$str66: I
)66I J
;66J K
m_ScaleFactor77 
=77 
serializedObject77 ,
.77, -
FindProperty77- 9
(779 :
$str77: I
)77I J
;77J K!
m_ReferenceResolution88 !
=88" #
serializedObject88$ 4
.884 5
FindProperty885 A
(88A B
$str88B Y
)88Y Z
;88Z [
m_ScreenMatchMode99 
=99 
serializedObject99  0
.990 1
FindProperty991 =
(99= >
$str99> Q
)99Q R
;99R S 
m_MatchWidthOrHeight::  
=::! "
serializedObject::# 3
.::3 4
FindProperty::4 @
(::@ A
$str::A W
)::W X
;::X Y
m_PhysicalUnit;; 
=;; 
serializedObject;; -
.;;- .
FindProperty;;. :
(;;: ;
$str;;; K
);;K L
;;;L M
m_FallbackScreenDPI<< 
=<<  !
serializedObject<<" 2
.<<2 3
FindProperty<<3 ?
(<<? @
$str<<@ U
)<<U V
;<<V W
m_DefaultSpriteDPI== 
===  
serializedObject==! 1
.==1 2
FindProperty==2 >
(==> ?
$str==? S
)==S T
;==T U"
m_DynamicPixelsPerUnit>> "
=>># $
serializedObject>>% 5
.>>5 6
FindProperty>>6 B
(>>B C
$str>>C [
)>>[ \
;>>\ ]$
m_ReferencePixelsPerUnit?? $
=??% &
serializedObject??' 7
.??7 8
FindProperty??8 D
(??D E
$str??E _
)??_ `
;??` a
m_PresetInfoIsWorld@@ 
=@@  !
serializedObject@@" 2
.@@2 3
FindProperty@@3 ?
(@@? @
$str@@@ U
)@@U V
;@@V W
ifBB 
(BB 
m_SerializedObjectBB "
==BB# %
nullBB& *
||BB+ -
m_SerializedObjectBB. @
.BB@ A
targetObjectBBA M
==BBN P
nullBBQ U
)BBU V
	bIsPresetCC 
=CC 
falseCC !
;CC! "
elseDD 
	bIsPresetEE 
=EE 
m_SerializedObjectEE .
.EE. /
targetObjectEE/ ;
isEE< >
	ComponentEE? H
?EEI J
(EEK L
(EEL M
intEEM P
)EEP Q
(EEQ R
m_SerializedObjectEER d
.EEd e
targetObjectEEe q
asEEr t
	ComponentEEu ~
)EE~ 
.	EE Ä

gameObject
EEÄ ä
.
EEä ã
	hideFlags
EEã î
==
EEï ó
$num
EEò ö
)
EEö õ
:
EEú ù
!
EEû ü
AssetDatabase
EEü ¨
.
EE¨ ≠
Contains
EE≠ µ
(
EEµ ∂ 
m_SerializedObject
EE∂ »
.
EE» …
targetObject
EE… ’
)
EE’ ÷
;
EE÷ ◊
}FF 	
publicHH 
overrideHH 
voidHH 
OnInspectorGUIHH +
(HH+ ,
)HH, -
{II 	
ifJJ 
(JJ 
s_StylesJJ 
==JJ 
nullJJ  
)JJ  !
s_StylesKK 
=KK 
newKK 
StylesKK %
(KK% &
)KK& '
;KK' (
boolMM 

allAreRootMM 
=MM 
trueMM "
;MM" #
boolNN 
showWorldDiffersNN !
=NN" #
falseNN$ )
;NN) *
boolOO 
	showWorldOO 
=OO 
falseOO "
;OO" #
ifQQ 
(QQ 
	bIsPresetQQ 
)QQ 
{RR 
	showWorldSS 
=SS 
m_PresetInfoIsWorldSS /
.SS/ 0
	boolValueSS0 9
;SS9 :
}TT 
elseUU 
{VV 
	showWorldWW 
=WW 
(WW 
(WW 
targetWW $
asWW% '
CanvasScalerWW( 4
)WW4 5
.WW5 6
GetComponentWW6 B
<WWB C
CanvasWWC I
>WWI J
(WWJ K
)WWK L
.WWL M

renderModeWWM W
==WWX Z

RenderModeWW[ e
.WWe f

WorldSpaceWWf p
)WWp q
;WWq r
m_PresetInfoIsWorldYY #
.YY# $
	boolValueYY$ -
=YY. /
	showWorldYY0 9
;YY9 :
serializedObjectZZ  
.ZZ  !#
ApplyModifiedPropertiesZZ! 8
(ZZ8 9
)ZZ9 :
;ZZ: ;
for\\ 
(\\ 
int\\ 
i\\ 
=\\ 
$num\\ 
;\\ 
i\\  !
<\\" #
targets\\$ +
.\\+ ,
Length\\, 2
;\\2 3
i\\4 5
++\\5 7
)\\7 8
{]] 
CanvasScaler^^  
scaler^^! '
=^^( )
targets^^* 1
[^^1 2
i^^2 3
]^^3 4
as^^5 7
CanvasScaler^^8 D
;^^D E
Canvas__ 
canvas__ !
=__" #
scaler__$ *
.__* +
GetComponent__+ 7
<__7 8
Canvas__8 >
>__> ?
(__? @
)__@ A
;__A B
if`` 
(`` 
!`` 
canvas`` 
.``  
isRootCanvas``  ,
)``, -
{aa 

allAreRootbb "
=bb# $
falsebb% *
;bb* +
breakcc 
;cc 
}dd 
ifee 
(ee 
	showWorldee !
&&ee" $
canvasee% +
.ee+ ,

renderModeee, 6
!=ee7 9

RenderModeee: D
.eeD E

WorldSpaceeeE O
||eeP R
!eeS T
	showWorldeeT ]
&&ee^ `
canvaseea g
.eeg h

renderModeeeh r
==ees u

RenderMode	eev Ä
.
eeÄ Å

WorldSpace
eeÅ ã
)
eeã å
{ff 
showWorldDiffersgg (
=gg) *
truegg+ /
;gg/ 0
breakhh 
;hh 
}ii 
}jj 
ifll 
(ll 
!ll 

allAreRootll 
)ll  
{mm 
EditorGUILayoutnn #
.nn# $
HelpBoxnn$ +
(nn+ ,
$strnn, S
,nnS T
MessageTypennU `
.nn` a
Warningnna h
)nnh i
;nni j
returnoo 
;oo 
}pp 
}qq 
serializedObjectrr 
.rr 
Updaterr #
(rr# $
)rr$ %
;rr% &
	EditorGUItt 
.tt 
showMixedValuett $
=tt% &
showWorldDifferstt' 7
;tt7 8
usinguu 
(uu 
newuu 
	EditorGUIuu  
.uu  !
DisabledScopeuu! .
(uu. /
	showWorlduu/ 8
||uu9 ;
showWorldDiffersuu< L
)uuL M
)uuM N
{vv 
ifww 
(ww 
	showWorldww 
||ww  
showWorldDiffersww! 1
)ww1 2
{xx 
EditorGUILayoutyy #
.yy# $
Popupyy$ )
(yy) *
s_Stylesyy* 2
.yy2 3
uiScaleModeContentyy3 E
.yyE F
textyyF J
,yyJ K
$numyyL M
,yyM N
newyyO R
[yyR S
]yyS T
{yyU V
$stryyW ^
}yy_ `
)yy` a
;yya b
}zz 
else{{ 
{|| 
EditorGUILayout}} #
.}}# $
PropertyField}}$ 1
(}}1 2
m_UiScaleMode}}2 ?
,}}? @
s_Styles}}A I
.}}I J
uiScaleModeContent}}J \
)}}\ ]
;}}] ^
}~~ 
} 
	EditorGUI
ÄÄ 
.
ÄÄ 
showMixedValue
ÄÄ $
=
ÄÄ% &
false
ÄÄ' ,
;
ÄÄ, -
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
showWorldDiffers
ÇÇ !
&&
ÇÇ" $
!
ÇÇ% &
(
ÇÇ& '
!
ÇÇ' (
	showWorld
ÇÇ( 1
&&
ÇÇ2 4
m_UiScaleMode
ÇÇ5 B
.
ÇÇB C(
hasMultipleDifferentValues
ÇÇC ]
)
ÇÇ] ^
)
ÇÇ^ _
{
ÉÉ 
EditorGUILayout
ÑÑ 
.
ÑÑ  
Space
ÑÑ  %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
if
áá 
(
áá 
	showWorld
áá 
)
áá 
{
àà 
EditorGUILayout
ââ #
.
ââ# $
PropertyField
ââ$ 1
(
ââ1 2$
m_DynamicPixelsPerUnit
ââ2 H
)
ââH I
;
ââI J
}
ää 
else
åå 
if
åå 
(
åå 
m_UiScaleMode
åå &
.
åå& '
enumValueIndex
åå' 5
==
åå6 8
(
åå9 :
int
åå: =
)
åå= >
CanvasScaler
åå> J
.
ååJ K
	ScaleMode
ååK T
.
ååT U
ConstantPixelSize
ååU f
)
ååf g
{
çç 
EditorGUILayout
éé #
.
éé# $
PropertyField
éé$ 1
(
éé1 2
m_ScaleFactor
éé2 ?
)
éé? @
;
éé@ A
}
èè 
else
ëë 
if
ëë 
(
ëë 
m_UiScaleMode
ëë &
.
ëë& '
enumValueIndex
ëë' 5
==
ëë6 8
(
ëë9 :
int
ëë: =
)
ëë= >
CanvasScaler
ëë> J
.
ëëJ K
	ScaleMode
ëëK T
.
ëëT U!
ScaleWithScreenSize
ëëU h
)
ëëh i
{
íí 
EditorGUILayout
ìì #
.
ìì# $
PropertyField
ìì$ 1
(
ìì1 2#
m_ReferenceResolution
ìì2 G
)
ììG H
;
ììH I
EditorGUILayout
îî #
.
îî# $
PropertyField
îî$ 1
(
îî1 2
m_ScreenMatchMode
îî2 C
)
îîC D
;
îîD E
if
ïï 
(
ïï 
m_ScreenMatchMode
ïï )
.
ïï) *
enumValueIndex
ïï* 8
==
ïï9 ;
(
ïï< =
int
ïï= @
)
ïï@ A
CanvasScaler
ïïA M
.
ïïM N
ScreenMatchMode
ïïN ]
.
ïï] ^ 
MatchWidthOrHeight
ïï^ p
&&
ïïq s
!
ïït u 
m_ScreenMatchModeïïu Ü
.ïïÜ á*
hasMultipleDifferentValuesïïá °
)ïï° ¢
{
ññ 
Rect
óó 
r
óó 
=
óó  
EditorGUILayout
óó! 0
.
óó0 1
GetControlRect
óó1 ?
(
óó? @
true
óó@ D
,
óóD E
EditorGUIUtility
óóF V
.
óóV W
singleLineHeight
óóW g
+
óóh i*
kSliderEndpointLabelsHeightóój Ö
)óóÖ Ü
;óóÜ á
DualLabeledSlider
òò )
(
òò) *
r
òò* +
,
òò+ ,"
m_MatchWidthOrHeight
òò- A
,
òòA B
s_Styles
òòC K
.
òòK L
matchContent
òòL X
,
òòX Y
s_Styles
òòZ b
.
òòb c
widthContent
òòc o
,
òòo p
s_Styles
òòq y
.
òòy z
heightContentòòz á
)òòá à
;òòà â
}
ôô 
}
öö 
else
úú 
if
úú 
(
úú 
m_UiScaleMode
úú &
.
úú& '
enumValueIndex
úú' 5
==
úú6 8
(
úú9 :
int
úú: =
)
úú= >
CanvasScaler
úú> J
.
úúJ K
	ScaleMode
úúK T
.
úúT U"
ConstantPhysicalSize
úúU i
)
úúi j
{
ùù 
EditorGUILayout
ûû #
.
ûû# $
PropertyField
ûû$ 1
(
ûû1 2
m_PhysicalUnit
ûû2 @
)
ûû@ A
;
ûûA B
EditorGUILayout
üü #
.
üü# $
PropertyField
üü$ 1
(
üü1 2!
m_FallbackScreenDPI
üü2 E
)
üüE F
;
üüF G
EditorGUILayout
†† #
.
††# $
PropertyField
††$ 1
(
††1 2 
m_DefaultSpriteDPI
††2 D
)
††D E
;
††E F
}
°° 
EditorGUILayout
££ 
.
££  
PropertyField
££  -
(
££- .&
m_ReferencePixelsPerUnit
££. F
)
££F G
;
££G H
}
§§ 
serializedObject
¶¶ 
.
¶¶ %
ApplyModifiedProperties
¶¶ 4
(
¶¶4 5
)
¶¶5 6
;
¶¶6 7
}
ßß 	
private
©© 
static
©© 
void
©© 
DualLabeledSlider
©© -
(
©©- .
Rect
©©. 2
position
©©3 ;
,
©©; < 
SerializedProperty
©©= O
property
©©P X
,
©©X Y

GUIContent
©©Z d
	mainLabel
©©e n
,
©©n o

GUIContent
©©p z
	labelLeft©©{ Ñ
,©©Ñ Ö

GUIContent©©Ü ê

labelRight©©ë õ
)©©õ ú
{
™™ 	
position
´´ 
.
´´ 
height
´´ 
=
´´ 
EditorGUIUtility
´´ .
.
´´. /
singleLineHeight
´´/ ?
;
´´? @
Rect
¨¨ 
pos
¨¨ 
=
¨¨ 
position
¨¨ 
;
¨¨  
position
ÆÆ 
.
ÆÆ 
y
ÆÆ 
+=
ÆÆ 
$num
ÆÆ 
;
ÆÆ 
position
ØØ 
.
ØØ 
xMin
ØØ 
+=
ØØ 
EditorGUIUtility
ØØ -
.
ØØ- .

labelWidth
ØØ. 8
;
ØØ8 9
position
∞∞ 
.
∞∞ 
xMax
∞∞ 
-=
∞∞ 
EditorGUIUtility
∞∞ -
.
∞∞- .

fieldWidth
∞∞. 8
;
∞∞8 9
GUI
≤≤ 
.
≤≤ 
Label
≤≤ 
(
≤≤ 
position
≤≤ 
,
≤≤ 
	labelLeft
≤≤  )
,
≤≤) *
s_Styles
≤≤+ 3
.
≤≤3 4
leftAlignedLabel
≤≤4 D
)
≤≤D E
;
≤≤E F
GUI
≥≥ 
.
≥≥ 
Label
≥≥ 
(
≥≥ 
position
≥≥ 
,
≥≥ 

labelRight
≥≥  *
,
≥≥* +
s_Styles
≥≥, 4
.
≥≥4 5
rightAlignedLabel
≥≥5 F
)
≥≥F G
;
≥≥G H
	EditorGUI
µµ 
.
µµ 
PropertyField
µµ #
(
µµ# $
pos
µµ$ '
,
µµ' (
property
µµ) 1
,
µµ1 2
	mainLabel
µµ3 <
)
µµ< =
;
µµ= >
}
∂∂ 	
}
∑∑ 
}∏∏ Ω

ìC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PrefabLayoutRebuilder.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
InitializeOnLoad 
] 
internal 
class !
PrefabLayoutRebuilder (
{ 
static		 !
PrefabLayoutRebuilder		 $
(		$ %
)		% &
{

 	
PrefabUtility 
. !
prefabInstanceUpdated /
+=0 2#
OnPrefabInstanceUpdates3 J
;J K
} 	
static 
void #
OnPrefabInstanceUpdates +
(+ ,

GameObject, 6
instance7 ?
)? @
{ 	
if 
( 
instance 
) 
{ 
RectTransform 
rect "
=# $
instance% -
.- .
	transform. 7
as8 :
RectTransform; H
;H I
if 
( 
rect 
) 
LayoutRebuilder #
.# $ 
MarkLayoutForRebuild$ 8
(8 9
rect9 =
)= >
;> ?
} 
} 	
} 
} ˘›
éC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SelectableEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
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

Selectable

 #
)

# $
,

$ %
true

& *
)

* +
]

+ ,
public 

class 
SelectableEditor !
:" #
Editor$ *
{ 
SerializedProperty 
m_Script #
;# $
SerializedProperty "
m_InteractableProperty 1
;1 2
SerializedProperty #
m_TargetGraphicProperty 2
;2 3
SerializedProperty  
m_TransitionProperty /
;/ 0
SerializedProperty  
m_ColorBlockProperty /
;/ 0
SerializedProperty !
m_SpriteStateProperty 0
;0 1
SerializedProperty !
m_AnimTriggerProperty 0
;0 1
SerializedProperty  
m_NavigationProperty /
;/ 0

GUIContent !
m_VisualizeNavigation (
=) *
EditorGUIUtility+ ;
.; <
TrTextContent< I
(I J
$strJ U
,U V
$str	W é
)
é è
;
è ê
AnimBool 
m_ShowColorTint  
=' (
new) ,
AnimBool- 5
(5 6
)6 7
;7 8
AnimBool !
m_ShowSpriteTrasition &
=' (
new) ,
AnimBool- 5
(5 6
)6 7
;7 8
AnimBool  
m_ShowAnimTransition %
=' (
new) ,
AnimBool- 5
(5 6
)6 7
;7 8
private   
static   
List   
<   
SelectableEditor   ,
>  , -
	s_Editors  . 7
=  8 9
new  : =
List  > B
<  B C
SelectableEditor  C S
>  S T
(  T U
)  U V
;  V W
private!! 
static!! 
bool!! 
s_ShowNavigation!! ,
=!!- .
false!!/ 4
;!!4 5
private"" 
static"" 
string"" 
s_ShowNavigationKey"" 1
=""2 3
$str""4 U
;""U V
private&& 
string&& 
[&& 
]&& 2
&m_PropertyPathToExcludeForChildClasses&& ?
;&&? @
	protected(( 
virtual(( 
void(( 
OnEnable(( '
(((' (
)((( )
{)) 	
m_Script** 
=**$ %
serializedObject**& 6
.**6 7
FindProperty**7 C
(**C D
$str**D N
)**N O
;**O P"
m_InteractableProperty++ "
=++$ %
serializedObject++& 6
.++6 7
FindProperty++7 C
(++C D
$str++D T
)++T U
;++U V#
m_TargetGraphicProperty,, #
=,,$ %
serializedObject,,& 6
.,,6 7
FindProperty,,7 C
(,,C D
$str,,D U
),,U V
;,,V W 
m_TransitionProperty--  
=--$ %
serializedObject--& 6
.--6 7
FindProperty--7 C
(--C D
$str--D R
)--R S
;--S T 
m_ColorBlockProperty..  
=..$ %
serializedObject..& 6
...6 7
FindProperty..7 C
(..C D
$str..D N
)..N O
;..O P!
m_SpriteStateProperty// !
=//$ %
serializedObject//& 6
.//6 7
FindProperty//7 C
(//C D
$str//D S
)//S T
;//T U!
m_AnimTriggerProperty00 !
=00$ %
serializedObject00& 6
.006 7
FindProperty007 C
(00C D
$str00D Y
)00Y Z
;00Z [ 
m_NavigationProperty11  
=11$ %
serializedObject11& 6
.116 7
FindProperty117 C
(11C D
$str11D R
)11R S
;11S T2
&m_PropertyPathToExcludeForChildClasses33 2
=333 4
new335 8
[338 9
]339 :
{44 
m_Script55 
.55 
propertyPath55 %
,55% & 
m_NavigationProperty66 $
.66$ %
propertyPath66% 1
,661 2 
m_TransitionProperty77 $
.77$ %
propertyPath77% 1
,771 2 
m_ColorBlockProperty88 $
.88$ %
propertyPath88% 1
,881 2!
m_SpriteStateProperty99 %
.99% &
propertyPath99& 2
,992 3!
m_AnimTriggerProperty:: %
.::% &
propertyPath::& 2
,::2 3"
m_InteractableProperty;; &
.;;& '
propertyPath;;' 3
,;;3 4#
m_TargetGraphicProperty<< '
.<<' (
propertyPath<<( 4
,<<4 5
}== 
;== 
var?? 
trans?? 
=?? 
GetTransition?? %
(??% & 
m_TransitionProperty??& :
)??: ;
;??; <
m_ShowColorTint@@ 
.@@ 
value@@ !
=@@( )
(@@* +
trans@@+ 0
==@@1 3

Selectable@@4 >
.@@> ?

Transition@@? I
.@@I J
	ColorTint@@J S
)@@S T
;@@T U!
m_ShowSpriteTrasitionAA !
.AA! "
valueAA" '
=AA( )
(AA* +
transAA+ 0
==AA1 3

SelectableAA4 >
.AA> ?

TransitionAA? I
.AAI J

SpriteSwapAAJ T
)AAT U
;AAU V 
m_ShowAnimTransitionBB  
.BB  !
valueBB! &
=BB( )
(BB* +
transBB+ 0
==BB1 3

SelectableBB4 >
.BB> ?

TransitionBB? I
.BBI J
	AnimationBBJ S
)BBS T
;BBT U
m_ShowColorTintDD 
.DD 
valueChangedDD (
.DD( )
AddListenerDD) 4
(DD4 5
RepaintDD5 <
)DD< =
;DD= >!
m_ShowSpriteTrasitionEE !
.EE! "
valueChangedEE" .
.EE. /
AddListenerEE/ :
(EE: ;
RepaintEE; B
)EEB C
;EEC D
	s_EditorsGG 
.GG 
AddGG 
(GG 
thisGG 
)GG 
;GG  $
RegisterStaticOnSceneGUIHH $
(HH$ %
)HH% &
;HH& '
s_ShowNavigationJJ 
=JJ 
EditorPrefsJJ *
.JJ* +
GetBoolJJ+ 2
(JJ2 3
s_ShowNavigationKeyJJ3 F
)JJF G
;JJG H
}KK 	
	protectedMM 
virtualMM 
voidMM 
	OnDisableMM (
(MM( )
)MM) *
{NN 	
m_ShowColorTintOO 
.OO 
valueChangedOO (
.OO( )
RemoveListenerOO) 7
(OO7 8
RepaintOO8 ?
)OO? @
;OO@ A!
m_ShowSpriteTrasitionPP !
.PP! "
valueChangedPP" .
.PP. /
RemoveListenerPP/ =
(PP= >
RepaintPP> E
)PPE F
;PPF G
	s_EditorsRR 
.RR 
RemoveRR 
(RR 
thisRR !
)RR! "
;RR" #$
RegisterStaticOnSceneGUISS $
(SS$ %
)SS% &
;SS& '
}TT 	
privateVV 
voidVV $
RegisterStaticOnSceneGUIVV -
(VV- .
)VV. /
{WW 	
	SceneViewXX 
.XX 
duringSceneGuiXX $
-=XX% '
StaticOnSceneGUIXX( 8
;XX8 9
ifYY 
(YY 
	s_EditorsYY 
.YY 
CountYY 
>YY  !
$numYY" #
)YY# $
	SceneViewZZ 
.ZZ 
duringSceneGuiZZ (
+=ZZ) +
StaticOnSceneGUIZZ, <
;ZZ< =
}[[ 	
static]] 

Selectable]] 
.]] 

Transition]] $
GetTransition]]% 2
(]]2 3
SerializedProperty]]3 E

transition]]F P
)]]P Q
{^^ 	
return__ 
(__ 

Selectable__ 
.__ 

Transition__ )
)__) *

transition__* 4
.__4 5
enumValueIndex__5 C
;__C D
}`` 	
publicbb 
overridebb 
voidbb 
OnInspectorGUIbb +
(bb+ ,
)bb, -
{cc 	
serializedObjectdd 
.dd 
Updatedd #
(dd# $
)dd$ %
;dd% &
EditorGUILayoutff 
.ff 
PropertyFieldff )
(ff) *"
m_InteractablePropertyff* @
)ff@ A
;ffA B
varhh 
transhh 
=hh 
GetTransitionhh %
(hh% & 
m_TransitionPropertyhh& :
)hh: ;
;hh; <
varjj 
graphicjj 
=jj #
m_TargetGraphicPropertyjj 1
.jj1 2 
objectReferenceValuejj2 F
asjjG I
GraphicjjJ Q
;jjQ R
ifkk 
(kk 
graphickk 
==kk 
nullkk 
)kk  
graphicll 
=ll 
(ll 
targetll !
asll" $

Selectablell% /
)ll/ 0
.ll0 1
GetComponentll1 =
<ll= >
Graphicll> E
>llE F
(llF G
)llG H
;llH I
varnn 
animatornn 
=nn 
(nn 
targetnn "
asnn# %

Selectablenn& 0
)nn0 1
.nn1 2
GetComponentnn2 >
<nn> ?
Animatornn? G
>nnG H
(nnH I
)nnI J
;nnJ K
m_ShowColorTintoo 
.oo 
targetoo "
=oo# $
(oo% &
!oo& ' 
m_TransitionPropertyoo' ;
.oo; <&
hasMultipleDifferentValuesoo< V
&&ooW Y
transooZ _
==oo` b
Buttonooc i
.ooi j

Transitionooj t
.oot u
	ColorTintoou ~
)oo~ 
;	oo Ä!
m_ShowSpriteTrasitionpp !
.pp! "
targetpp" (
=pp) *
(pp+ ,
!pp, - 
m_TransitionPropertypp- A
.ppA B&
hasMultipleDifferentValuesppB \
&&pp] _
transpp` e
==ppf h
Buttonppi o
.ppo p

Transitionppp z
.ppz {

SpriteSwap	pp{ Ö
)
ppÖ Ü
;
ppÜ á 
m_ShowAnimTransitionqq  
.qq  !
targetqq! '
=qq( )
(qq* +
!qq+ , 
m_TransitionPropertyqq, @
.qq@ A&
hasMultipleDifferentValuesqqA [
&&qq\ ^
transqq_ d
==qqe g
Buttonqqh n
.qqn o

Transitionqqo y
.qqy z
	Animation	qqz É
)
qqÉ Ñ
;
qqÑ Ö
EditorGUILayoutss 
.ss 
PropertyFieldss )
(ss) * 
m_TransitionPropertyss* >
)ss> ?
;ss? @
++uu 
	EditorGUIuu 
.uu 
indentLeveluu #
;uu# $
{vv 
ifww 
(ww 
transww 
==ww 

Selectableww '
.ww' (

Transitionww( 2
.ww2 3
	ColorTintww3 <
||ww= ?
transww@ E
==wwF H

SelectablewwI S
.wwS T

TransitionwwT ^
.ww^ _

SpriteSwapww_ i
)wwi j
{xx 
EditorGUILayoutyy #
.yy# $
PropertyFieldyy$ 1
(yy1 2#
m_TargetGraphicPropertyyy2 I
)yyI J
;yyJ K
}zz 
switch|| 
(|| 
trans|| 
)|| 
{}} 
case~~ 

Selectable~~ #
.~~# $

Transition~~$ .
.~~. /
	ColorTint~~/ 8
:~~8 9
if 
( 
graphic #
==$ &
null' +
)+ ,
EditorGUILayout
ÄÄ +
.
ÄÄ+ ,
HelpBox
ÄÄ, 3
(
ÄÄ3 4
$str
ÄÄ4 x
,
ÄÄx y
MessageTypeÄÄz Ö
.ÄÄÖ Ü
WarningÄÄÜ ç
)ÄÄç é
;ÄÄé è
break
ÅÅ 
;
ÅÅ 
case
ÉÉ 

Selectable
ÉÉ #
.
ÉÉ# $

Transition
ÉÉ$ .
.
ÉÉ. /

SpriteSwap
ÉÉ/ 9
:
ÉÉ9 :
if
ÑÑ 
(
ÑÑ 
graphic
ÑÑ #
as
ÑÑ$ &
Image
ÑÑ' ,
==
ÑÑ- /
null
ÑÑ0 4
)
ÑÑ4 5
EditorGUILayout
ÖÖ +
.
ÖÖ+ ,
HelpBox
ÖÖ, 3
(
ÖÖ3 4
$str
ÖÖ4 |
,
ÖÖ| }
MessageTypeÖÖ~ â
.ÖÖâ ä
WarningÖÖä ë
)ÖÖë í
;ÖÖí ì
break
ÜÜ 
;
ÜÜ 
}
áá 
if
ââ 
(
ââ 
EditorGUILayout
ââ #
.
ââ# $
BeginFadeGroup
ââ$ 2
(
ââ2 3
m_ShowColorTint
ââ3 B
.
ââB C
faded
ââC H
)
ââH I
)
ââI J
{
ää 
EditorGUILayout
ãã #
.
ãã# $
PropertyField
ãã$ 1
(
ãã1 2"
m_ColorBlockProperty
ãã2 F
)
ããF G
;
ããG H
}
åå 
EditorGUILayout
çç 
.
çç  
EndFadeGroup
çç  ,
(
çç, -
)
çç- .
;
çç. /
if
èè 
(
èè 
EditorGUILayout
èè #
.
èè# $
BeginFadeGroup
èè$ 2
(
èè2 3#
m_ShowSpriteTrasition
èè3 H
.
èèH I
faded
èèI N
)
èèN O
)
èèO P
{
êê 
EditorGUILayout
ëë #
.
ëë# $
PropertyField
ëë$ 1
(
ëë1 2#
m_SpriteStateProperty
ëë2 G
)
ëëG H
;
ëëH I
}
íí 
EditorGUILayout
ìì 
.
ìì  
EndFadeGroup
ìì  ,
(
ìì, -
)
ìì- .
;
ìì. /
if
ïï 
(
ïï 
EditorGUILayout
ïï #
.
ïï# $
BeginFadeGroup
ïï$ 2
(
ïï2 3"
m_ShowAnimTransition
ïï3 G
.
ïïG H
faded
ïïH M
)
ïïM N
)
ïïN O
{
ññ 
EditorGUILayout
óó #
.
óó# $
PropertyField
óó$ 1
(
óó1 2#
m_AnimTriggerProperty
óó2 G
)
óóG H
;
óóH I
if
ôô 
(
ôô 
animator
ôô  
==
ôô! #
null
ôô$ (
||
ôô) +
animator
ôô, 4
.
ôô4 5'
runtimeAnimatorController
ôô5 N
==
ôôO Q
null
ôôR V
)
ôôV W
{
öö 
Rect
õõ 

buttonRect
õõ '
=
õõ( )
EditorGUILayout
õõ* 9
.
õõ9 :
GetControlRect
õõ: H
(
õõH I
)
õõI J
;
õõJ K

buttonRect
úú "
.
úú" #
xMin
úú# '
+=
úú( *
EditorGUIUtility
úú+ ;
.
úú; <

labelWidth
úú< F
;
úúF G
if
ùù 
(
ùù 
GUI
ùù 
.
ùù  
Button
ùù  &
(
ùù& '

buttonRect
ùù' 1
,
ùù1 2
$str
ùù3 L
,
ùùL M
EditorStyles
ùùN Z
.
ùùZ [

miniButton
ùù[ e
)
ùùe f
)
ùùf g
{
ûû 
var
üü 

controller
üü  *
=
üü+ ,1
#GenerateSelectableAnimatorContoller
üü- P
(
üüP Q
(
üüQ R
target
üüR X
as
üüY [

Selectable
üü\ f
)
üüf g
.
üüg h
animationTriggers
üüh y
,
üüy z
targetüü{ Å
asüüÇ Ñ

SelectableüüÖ è
)üüè ê
;üüê ë
if
†† 
(
††  

controller
††  *
!=
††+ -
null
††. 2
)
††2 3
{
°° 
if
¢¢  "
(
¢¢# $
animator
¢¢$ ,
==
¢¢- /
null
¢¢0 4
)
¢¢4 5
animator
££$ ,
=
££- .
(
££/ 0
target
££0 6
as
££7 9

Selectable
££: D
)
££D E
.
££E F

gameObject
££F P
.
££P Q
AddComponent
££Q ]
<
££] ^
Animator
££^ f
>
££f g
(
££g h
)
££h i
;
££i j

Animations
••  *
.
••* + 
AnimatorController
••+ =
.
••= >#
SetAnimatorController
••> S
(
••S T
animator
••T \
,
••\ ]

controller
••^ h
)
••h i
;
••i j
}
¶¶ 
}
ßß 
}
®® 
}
©© 
EditorGUILayout
™™ 
.
™™  
EndFadeGroup
™™  ,
(
™™, -
)
™™- .
;
™™. /
}
´´ 
--
¨¨ 
	EditorGUI
¨¨ 
.
¨¨ 
indentLevel
¨¨ #
;
¨¨# $
EditorGUILayout
ÆÆ 
.
ÆÆ 
Space
ÆÆ !
(
ÆÆ! "
)
ÆÆ" #
;
ÆÆ# $
EditorGUILayout
∞∞ 
.
∞∞ 
PropertyField
∞∞ )
(
∞∞) *"
m_NavigationProperty
∞∞* >
)
∞∞> ?
;
∞∞? @
	EditorGUI
≤≤ 
.
≤≤ 
BeginChangeCheck
≤≤ &
(
≤≤& '
)
≤≤' (
;
≤≤( )
Rect
≥≥ 

toggleRect
≥≥ 
=
≥≥ 
EditorGUILayout
≥≥ -
.
≥≥- .
GetControlRect
≥≥. <
(
≥≥< =
)
≥≥= >
;
≥≥> ?

toggleRect
¥¥ 
.
¥¥ 
xMin
¥¥ 
+=
¥¥ 
EditorGUIUtility
¥¥ /
.
¥¥/ 0

labelWidth
¥¥0 :
;
¥¥: ;
s_ShowNavigation
µµ 
=
µµ 
GUI
µµ "
.
µµ" #
Toggle
µµ# )
(
µµ) *

toggleRect
µµ* 4
,
µµ4 5
s_ShowNavigation
µµ6 F
,
µµF G#
m_VisualizeNavigation
µµH ]
,
µµ] ^
EditorStyles
µµ_ k
.
µµk l

miniButton
µµl v
)
µµv w
;
µµw x
if
∂∂ 
(
∂∂ 
	EditorGUI
∂∂ 
.
∂∂ 
EndChangeCheck
∂∂ (
(
∂∂( )
)
∂∂) *
)
∂∂* +
{
∑∑ 
EditorPrefs
∏∏ 
.
∏∏ 
SetBool
∏∏ #
(
∏∏# $!
s_ShowNavigationKey
∏∏$ 7
,
∏∏7 8
s_ShowNavigation
∏∏9 I
)
∏∏I J
;
∏∏J K
	SceneView
ππ 
.
ππ 

RepaintAll
ππ $
(
ππ$ %
)
ππ% &
;
ππ& '
}
∫∫ %
ChildClassPropertiesGUI
ææ #
(
ææ# $
)
ææ$ %
;
ææ% &
serializedObject
¿¿ 
.
¿¿ %
ApplyModifiedProperties
¿¿ 4
(
¿¿4 5
)
¿¿5 6
;
¿¿6 7
}
¡¡ 	
private
∆∆ 
void
∆∆ %
ChildClassPropertiesGUI
∆∆ ,
(
∆∆, -
)
∆∆- .
{
«« 	
if
»» 
(
»» '
IsDerivedSelectableEditor
»» )
(
»») *
)
»»* +
)
»»+ ,
return
…… 
;
…… %
DrawPropertiesExcluding
ÀÀ #
(
ÀÀ# $
serializedObject
ÀÀ$ 4
,
ÀÀ4 54
&m_PropertyPathToExcludeForChildClasses
ÀÀ6 \
)
ÀÀ\ ]
;
ÀÀ] ^
}
ÃÃ 	
private
ŒŒ 
bool
ŒŒ '
IsDerivedSelectableEditor
ŒŒ .
(
ŒŒ. /
)
ŒŒ/ 0
{
œœ 	
return
–– 
GetType
–– 
(
–– 
)
–– 
!=
–– 
typeof
––  &
(
––& '
SelectableEditor
––' 7
)
––7 8
;
––8 9
}
—— 	
private
”” 
static
”” 

Animations
”” !
.
””! " 
AnimatorController
””" 41
#GenerateSelectableAnimatorContoller
””5 X
(
””X Y
AnimationTriggers
””Y j
animationTriggers
””k |
,
””| }

Selectable””~ à
target””â è
)””è ê
{
‘‘ 	
if
’’ 
(
’’ 
target
’’ 
==
’’ 
null
’’ 
)
’’ 
return
÷÷ 
null
÷÷ 
;
÷÷ 
var
ŸŸ 
path
ŸŸ 
=
ŸŸ #
GetSaveControllerPath
ŸŸ ,
(
ŸŸ, -
target
ŸŸ- 3
)
ŸŸ3 4
;
ŸŸ4 5
if
⁄⁄ 
(
⁄⁄ 
string
⁄⁄ 
.
⁄⁄ 
IsNullOrEmpty
⁄⁄ $
(
⁄⁄$ %
path
⁄⁄% )
)
⁄⁄) *
)
⁄⁄* +
return
€€ 
null
€€ 
;
€€ 
var
ﬁﬁ 

normalName
ﬁﬁ 
=
ﬁﬁ 
string
ﬁﬁ #
.
ﬁﬁ# $
IsNullOrEmpty
ﬁﬁ$ 1
(
ﬁﬁ1 2
animationTriggers
ﬁﬁ2 C
.
ﬁﬁC D
normalTrigger
ﬁﬁD Q
)
ﬁﬁQ R
?
ﬁﬁS T
$str
ﬁﬁU ]
:
ﬁﬁ^ _
animationTriggers
ﬁﬁ` q
.
ﬁﬁq r
normalTrigger
ﬁﬁr 
;ﬁﬁ Ä
var
ﬂﬂ 
highlightedName
ﬂﬂ 
=
ﬂﬂ  !
string
ﬂﬂ" (
.
ﬂﬂ( )
IsNullOrEmpty
ﬂﬂ) 6
(
ﬂﬂ6 7
animationTriggers
ﬂﬂ7 H
.
ﬂﬂH I 
highlightedTrigger
ﬂﬂI [
)
ﬂﬂ[ \
?
ﬂﬂ] ^
$str
ﬂﬂ_ l
:
ﬂﬂm n 
animationTriggersﬂﬂo Ä
.ﬂﬂÄ Å"
highlightedTriggerﬂﬂÅ ì
;ﬂﬂì î
var
‡‡ 
pressedName
‡‡ 
=
‡‡ 
string
‡‡ $
.
‡‡$ %
IsNullOrEmpty
‡‡% 2
(
‡‡2 3
animationTriggers
‡‡3 D
.
‡‡D E
pressedTrigger
‡‡E S
)
‡‡S T
?
‡‡U V
$str
‡‡W `
:
‡‡a b
animationTriggers
‡‡c t
.
‡‡t u
pressedTrigger‡‡u É
;‡‡É Ñ
var
·· 
selectedName
·· 
=
·· 
string
·· %
.
··% &
IsNullOrEmpty
··& 3
(
··3 4
animationTriggers
··4 E
.
··E F
selectedTrigger
··F U
)
··U V
?
··W X
$str
··Y c
:
··d e
animationTriggers
··f w
.
··w x
selectedTrigger··x á
;··á à
var
‚‚ 
disabledName
‚‚ 
=
‚‚ 
string
‚‚ %
.
‚‚% &
IsNullOrEmpty
‚‚& 3
(
‚‚3 4
animationTriggers
‚‚4 E
.
‚‚E F
disabledTrigger
‚‚F U
)
‚‚U V
?
‚‚W X
$str
‚‚Y c
:
‚‚d e
animationTriggers
‚‚f w
.
‚‚w x
disabledTrigger‚‚x á
;‚‚á à
var
ÂÂ 

controller
ÂÂ 
=
ÂÂ 

Animations
ÂÂ '
.
ÂÂ' ( 
AnimatorController
ÂÂ( :
.
ÂÂ: ;,
CreateAnimatorControllerAtPath
ÂÂ; Y
(
ÂÂY Z
path
ÂÂZ ^
)
ÂÂ^ _
;
ÂÂ_ `+
GenerateTriggerableTransition
ÊÊ )
(
ÊÊ) *

normalName
ÊÊ* 4
,
ÊÊ4 5

controller
ÊÊ6 @
)
ÊÊ@ A
;
ÊÊA B+
GenerateTriggerableTransition
ÁÁ )
(
ÁÁ) *
highlightedName
ÁÁ* 9
,
ÁÁ9 :

controller
ÁÁ; E
)
ÁÁE F
;
ÁÁF G+
GenerateTriggerableTransition
ËË )
(
ËË) *
pressedName
ËË* 5
,
ËË5 6

controller
ËË7 A
)
ËËA B
;
ËËB C+
GenerateTriggerableTransition
ÈÈ )
(
ÈÈ) *
selectedName
ÈÈ* 6
,
ÈÈ6 7

controller
ÈÈ8 B
)
ÈÈB C
;
ÈÈC D+
GenerateTriggerableTransition
ÍÍ )
(
ÍÍ) *
disabledName
ÍÍ* 6
,
ÍÍ6 7

controller
ÍÍ8 B
)
ÍÍB C
;
ÍÍC D
AssetDatabase
ÏÏ 
.
ÏÏ 
ImportAsset
ÏÏ %
(
ÏÏ% &
path
ÏÏ& *
)
ÏÏ* +
;
ÏÏ+ ,
return
ÓÓ 

controller
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
private
ÒÒ 
static
ÒÒ 
string
ÒÒ #
GetSaveControllerPath
ÒÒ 3
(
ÒÒ3 4

Selectable
ÒÒ4 >
target
ÒÒ? E
)
ÒÒE F
{
ÚÚ 	
var
ÛÛ 
defaultName
ÛÛ 
=
ÛÛ 
target
ÛÛ $
.
ÛÛ$ %

gameObject
ÛÛ% /
.
ÛÛ/ 0
name
ÛÛ0 4
;
ÛÛ4 5
var
ÙÙ 
message
ÙÙ 
=
ÙÙ 
string
ÙÙ  
.
ÙÙ  !
Format
ÙÙ! '
(
ÙÙ' (
$str
ÙÙ( Z
,
ÙÙZ [
defaultName
ÙÙ\ g
)
ÙÙg h
;
ÙÙh i
return
ıı 
EditorUtility
ıı  
.
ıı  !$
SaveFilePanelInProject
ıı! 7
(
ıı7 8
$str
ıı8 Q
,
ııQ R
defaultName
ııS ^
,
ıı^ _
$str
ıı` l
,
ııl m
message
ıın u
)
ııu v
;
ııv w
}
ˆˆ 	
private
¯¯ 
static
¯¯ 
void
¯¯ 
SetUpCurves
¯¯ '
(
¯¯' (
AnimationClip
¯¯( 5
highlightedClip
¯¯6 E
,
¯¯E F
AnimationClip
¯¯G T
pressedClip
¯¯U `
,
¯¯` a
string
¯¯b h
animationPath
¯¯i v
)
¯¯v w
{
˘˘ 	
string
˙˙ 
[
˙˙ 
]
˙˙ 
channels
˙˙ 
=
˙˙ 
{
˙˙  !
$str
˙˙" 2
,
˙˙2 3
$str
˙˙4 D
,
˙˙D E
$str
˙˙F V
}
˙˙W X
;
˙˙X Y
var
¸¸ 
highlightedKeys
¸¸ 
=
¸¸  !
new
¸¸" %
[
¸¸% &
]
¸¸& '
{
¸¸( )
new
¸¸* -
Keyframe
¸¸. 6
(
¸¸6 7
$num
¸¸7 9
,
¸¸9 :
$num
¸¸; =
)
¸¸= >
,
¸¸> ?
new
¸¸@ C
Keyframe
¸¸D L
(
¸¸L M
$num
¸¸M Q
,
¸¸Q R
$num
¸¸S W
)
¸¸W X
,
¸¸X Y
new
¸¸Z ]
Keyframe
¸¸^ f
(
¸¸f g
$num
¸¸g i
,
¸¸i j
$num
¸¸k m
)
¸¸m n
}
¸¸o p
;
¸¸p q
var
˝˝ 
highlightedCurve
˝˝  
=
˝˝! "
new
˝˝# &
AnimationCurve
˝˝' 5
(
˝˝5 6
highlightedKeys
˝˝6 E
)
˝˝E F
;
˝˝F G
foreach
˛˛ 
(
˛˛ 
var
˛˛ 
channel
˛˛  
in
˛˛! #
channels
˛˛$ ,
)
˛˛, -
AnimationUtility
ˇˇ  
.
ˇˇ  !
SetEditorCurve
ˇˇ! /
(
ˇˇ/ 0
highlightedClip
ˇˇ0 ?
,
ˇˇ? @ 
EditorCurveBinding
ˇˇA S
.
ˇˇS T

FloatCurve
ˇˇT ^
(
ˇˇ^ _
animationPath
ˇˇ_ l
,
ˇˇl m
typeof
ˇˇn t
(
ˇˇt u
	Transform
ˇˇu ~
)
ˇˇ~ 
,ˇˇ Ä
channelˇˇÅ à
)ˇˇà â
,ˇˇâ ä 
highlightedCurveˇˇã õ
)ˇˇõ ú
;ˇˇú ù
var
ÅÅ 
pressedKeys
ÅÅ 
=
ÅÅ 
new
ÅÅ !
[
ÅÅ! "
]
ÅÅ" #
{
ÅÅ$ %
new
ÅÅ& )
Keyframe
ÅÅ* 2
(
ÅÅ2 3
$num
ÅÅ3 5
,
ÅÅ5 6
$num
ÅÅ7 <
)
ÅÅ< =
}
ÅÅ> ?
;
ÅÅ? @
var
ÇÇ 
pressedCurve
ÇÇ 
=
ÇÇ 
new
ÇÇ "
AnimationCurve
ÇÇ# 1
(
ÇÇ1 2
pressedKeys
ÇÇ2 =
)
ÇÇ= >
;
ÇÇ> ?
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
channel
ÉÉ  
in
ÉÉ! #
channels
ÉÉ$ ,
)
ÉÉ, -
AnimationUtility
ÑÑ  
.
ÑÑ  !
SetEditorCurve
ÑÑ! /
(
ÑÑ/ 0
pressedClip
ÑÑ0 ;
,
ÑÑ; < 
EditorCurveBinding
ÑÑ= O
.
ÑÑO P

FloatCurve
ÑÑP Z
(
ÑÑZ [
animationPath
ÑÑ[ h
,
ÑÑh i
typeof
ÑÑj p
(
ÑÑp q
	Transform
ÑÑq z
)
ÑÑz {
,
ÑÑ{ |
channelÑÑ} Ñ
)ÑÑÑ Ö
,ÑÑÖ Ü
pressedCurveÑÑá ì
)ÑÑì î
;ÑÑî ï
}
ÖÖ 	
private
áá 
static
áá 
string
áá  
BuildAnimationPath
áá 0
(
áá0 1

Selectable
áá1 ;
target
áá< B
)
ááB C
{
àà 	
var
ää 
	highlight
ää 
=
ää 
target
ää "
.
ää" #
targetGraphic
ää# 0
;
ää0 1
if
ãã 
(
ãã 
	highlight
ãã 
==
ãã 
null
ãã !
)
ãã! "
return
åå 
string
åå 
.
åå 
Empty
åå #
;
åå# $
var
éé 
startGo
éé 
=
éé 
	highlight
éé #
.
éé# $

gameObject
éé$ .
;
éé. /
var
èè 
toFindGo
èè 
=
èè 
target
èè !
.
èè! "

gameObject
èè" ,
;
èè, -
var
ëë 
pathComponents
ëë 
=
ëë  
new
ëë! $
Stack
ëë% *
<
ëë* +
string
ëë+ 1
>
ëë1 2
(
ëë2 3
)
ëë3 4
;
ëë4 5
while
íí 
(
íí 
toFindGo
íí 
!=
íí 
startGo
íí &
)
íí& '
{
ìì 
pathComponents
îî 
.
îî 
Push
îî #
(
îî# $
startGo
îî$ +
.
îî+ ,
name
îî, 0
)
îî0 1
;
îî1 2
if
óó 
(
óó 
startGo
óó 
.
óó 
	transform
óó %
.
óó% &
parent
óó& ,
==
óó- /
null
óó0 4
)
óó4 5
return
òò 
string
òò !
.
òò! "
Empty
òò" '
;
òò' (
startGo
öö 
=
öö 
startGo
öö !
.
öö! "
	transform
öö" +
.
öö+ ,
parent
öö, 2
.
öö2 3

gameObject
öö3 =
;
öö= >
}
õõ 
var
ûû 
animPath
ûû 
=
ûû 
new
ûû 
StringBuilder
ûû ,
(
ûû, -
)
ûû- .
;
ûû. /
if
üü 
(
üü 
pathComponents
üü 
.
üü 
Count
üü $
>
üü% &
$num
üü' (
)
üü( )
animPath
†† 
.
†† 
Append
†† 
(
††  
pathComponents
††  .
.
††. /
Pop
††/ 2
(
††2 3
)
††3 4
)
††4 5
;
††5 6
while
¢¢ 
(
¢¢ 
pathComponents
¢¢ !
.
¢¢! "
Count
¢¢" '
>
¢¢( )
$num
¢¢* +
)
¢¢+ ,
animPath
££ 
.
££ 
Append
££ 
(
££  
$str
££  #
)
££# $
.
££$ %
Append
££% +
(
££+ ,
pathComponents
££, :
.
££: ;
Pop
££; >
(
££> ?
)
££? @
)
££@ A
;
££A B
return
•• 
animPath
•• 
.
•• 
ToString
•• $
(
••$ %
)
••% &
;
••& '
}
¶¶ 	
private
®® 
static
®® 
AnimationClip
®® $+
GenerateTriggerableTransition
®®% B
(
®®B C
string
®®C I
name
®®J N
,
®®N O

Animations
®®P Z
.
®®Z [ 
AnimatorController
®®[ m

controller
®®n x
)
®®x y
{
©© 	
var
´´ 
clip
´´ 
=
´´ 

Animations
´´ !
.
´´! " 
AnimatorController
´´" 4
.
´´4 5"
AllocateAnimatorClip
´´5 I
(
´´I J
name
´´J N
)
´´N O
;
´´O P
AssetDatabase
¨¨ 
.
¨¨ 
AddObjectToAsset
¨¨ *
(
¨¨* +
clip
¨¨+ /
,
¨¨/ 0

controller
¨¨1 ;
)
¨¨; <
;
¨¨< =
var
ØØ 
state
ØØ 
=
ØØ 

controller
ØØ "
.
ØØ" #
	AddMotion
ØØ# ,
(
ØØ, -
clip
ØØ- 1
)
ØØ1 2
;
ØØ2 3

controller
≤≤ 
.
≤≤ 
AddParameter
≤≤ #
(
≤≤# $
name
≤≤$ (
,
≤≤( )-
AnimatorControllerParameterType
≤≤* I
.
≤≤I J
Trigger
≤≤J Q
)
≤≤Q R
;
≤≤R S
var
µµ 
stateMachine
µµ 
=
µµ 

controller
µµ )
.
µµ) *
layers
µµ* 0
[
µµ0 1
$num
µµ1 2
]
µµ2 3
.
µµ3 4
stateMachine
µµ4 @
;
µµ@ A
var
∂∂ 

transition
∂∂ 
=
∂∂ 
stateMachine
∂∂ )
.
∂∂) *#
AddAnyStateTransition
∂∂* ?
(
∂∂? @
state
∂∂@ E
)
∂∂E F
;
∂∂F G

transition
∑∑ 
.
∑∑ 
AddCondition
∑∑ #
(
∑∑# $

Animations
∑∑$ .
.
∑∑. /#
AnimatorConditionMode
∑∑/ D
.
∑∑D E
If
∑∑E G
,
∑∑G H
$num
∑∑I J
,
∑∑J K
name
∑∑L P
)
∑∑P Q
;
∑∑Q R
return
∏∏ 
clip
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
static
ªª 
void
ªª 
StaticOnSceneGUI
ªª ,
(
ªª, -
	SceneView
ªª- 6
view
ªª7 ;
)
ªª; <
{
ºº 	
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
s_ShowNavigation
ΩΩ !
)
ΩΩ! "
return
ææ 
;
ææ 

Selectable
¿¿ 
[
¿¿ 
]
¿¿ 
selectables
¿¿ $
=
¿¿% &

Selectable
¿¿' 1
.
¿¿1 2!
allSelectablesArray
¿¿2 E
;
¿¿E F
for
¬¬ 
(
¬¬ 
int
¬¬ 
i
¬¬ 
=
¬¬ 
$num
¬¬ 
;
¬¬ 
i
¬¬ 
<
¬¬ 
selectables
¬¬  +
.
¬¬+ ,
Length
¬¬, 2
;
¬¬2 3
i
¬¬4 5
++
¬¬5 7
)
¬¬7 8
{
√√ 

Selectable
ƒƒ 
s
ƒƒ 
=
ƒƒ 
selectables
ƒƒ *
[
ƒƒ* +
i
ƒƒ+ ,
]
ƒƒ, -
;
ƒƒ- .
if
≈≈ 
(
≈≈ 
SceneManagement
≈≈ #
.
≈≈# $
StageUtility
≈≈$ 0
.
≈≈0 1*
IsGameObjectRenderedByCamera
≈≈1 M
(
≈≈M N
s
≈≈N O
.
≈≈O P

gameObject
≈≈P Z
,
≈≈Z [
Camera
≈≈\ b
.
≈≈b c
current
≈≈c j
)
≈≈j k
)
≈≈k l)
DrawNavigationForSelectable
∆∆ /
(
∆∆/ 0
s
∆∆0 1
)
∆∆1 2
;
∆∆2 3
}
«« 
}
»» 	
private
   
static
   
void
   )
DrawNavigationForSelectable
   7
(
  7 8

Selectable
  8 B
sel
  C F
)
  F G
{
ÀÀ 	
if
ÃÃ 
(
ÃÃ 
sel
ÃÃ 
==
ÃÃ 
null
ÃÃ 
)
ÃÃ 
return
ÕÕ 
;
ÕÕ 
	Transform
œœ 
	transform
œœ 
=
œœ  !
sel
œœ" %
.
œœ% &
	transform
œœ& /
;
œœ/ 0
bool
–– 
active
–– 
=
–– 
	Selection
–– #
.
––# $

transforms
––$ .
.
––. /
Any
––/ 2
(
––2 3
e
––3 4
=>
––5 7
e
––8 9
==
––: <
	transform
––= F
)
––F G
;
––G H
Handles
““ 
.
““ 
color
““ 
=
““ 
new
““ 
Color
““  %
(
““% &
$num
““& *
,
““* +
$num
““, 0
,
““0 1
$num
““2 6
,
““6 7
active
““8 >
?
““? @
$num
““A E
:
““F G
$num
““H L
)
““L M
;
““M N!
DrawNavigationArrow
”” 
(
””  
-
””  !
Vector2
””! (
.
””( )
right
””) .
,
””. /
sel
””0 3
,
””3 4
sel
””5 8
.
””8 9"
FindSelectableOnLeft
””9 M
(
””M N
)
””N O
)
””O P
;
””P Q!
DrawNavigationArrow
‘‘ 
(
‘‘  
Vector2
‘‘  '
.
‘‘' (
up
‘‘( *
,
‘‘* +
sel
‘‘, /
,
‘‘/ 0
sel
‘‘1 4
.
‘‘4 5 
FindSelectableOnUp
‘‘5 G
(
‘‘G H
)
‘‘H I
)
‘‘I J
;
‘‘J K
Handles
÷÷ 
.
÷÷ 
color
÷÷ 
=
÷÷ 
new
÷÷ 
Color
÷÷  %
(
÷÷% &
$num
÷÷& *
,
÷÷* +
$num
÷÷, 0
,
÷÷0 1
$num
÷÷2 6
,
÷÷6 7
active
÷÷8 >
?
÷÷? @
$num
÷÷A E
:
÷÷F G
$num
÷÷H L
)
÷÷L M
;
÷÷M N!
DrawNavigationArrow
◊◊ 
(
◊◊  
Vector2
◊◊  '
.
◊◊' (
right
◊◊( -
,
◊◊- .
sel
◊◊/ 2
,
◊◊2 3
sel
◊◊4 7
.
◊◊7 8#
FindSelectableOnRight
◊◊8 M
(
◊◊M N
)
◊◊N O
)
◊◊O P
;
◊◊P Q!
DrawNavigationArrow
ÿÿ 
(
ÿÿ  
-
ÿÿ  !
Vector2
ÿÿ! (
.
ÿÿ( )
up
ÿÿ) +
,
ÿÿ+ ,
sel
ÿÿ- 0
,
ÿÿ0 1
sel
ÿÿ2 5
.
ÿÿ5 6"
FindSelectableOnDown
ÿÿ6 J
(
ÿÿJ K
)
ÿÿK L
)
ÿÿL M
;
ÿÿM N
}
ŸŸ 	
const
€€ 
float
€€ 
kArrowThickness
€€ #
=
€€$ %
$num
€€& *
;
€€* +
const
‹‹ 
float
‹‹ 
kArrowHeadSize
‹‹ "
=
‹‹# $
$num
‹‹% )
;
‹‹) *
private
ﬁﬁ 
static
ﬁﬁ 
void
ﬁﬁ !
DrawNavigationArrow
ﬁﬁ /
(
ﬁﬁ/ 0
Vector2
ﬁﬁ0 7
	direction
ﬁﬁ8 A
,
ﬁﬁA B

Selectable
ﬁﬁC M
fromObj
ﬁﬁN U
,
ﬁﬁU V

Selectable
ﬁﬁW a
toObj
ﬁﬁb g
)
ﬁﬁg h
{
ﬂﬂ 	
if
‡‡ 
(
‡‡ 
fromObj
‡‡ 
==
‡‡ 
null
‡‡ 
||
‡‡  "
toObj
‡‡# (
==
‡‡) +
null
‡‡, 0
)
‡‡0 1
return
·· 
;
·· 
	Transform
‚‚ 
fromTransform
‚‚ #
=
‚‚$ %
fromObj
‚‚& -
.
‚‚- .
	transform
‚‚. 7
;
‚‚7 8
	Transform
„„ 
toTransform
„„ !
=
„„" #
toObj
„„$ )
.
„„) *
	transform
„„* 3
;
„„3 4
Vector2
ÂÂ 
sideDir
ÂÂ 
=
ÂÂ 
new
ÂÂ !
Vector2
ÂÂ" )
(
ÂÂ) *
	direction
ÂÂ* 3
.
ÂÂ3 4
y
ÂÂ4 5
,
ÂÂ5 6
-
ÂÂ7 8
	direction
ÂÂ8 A
.
ÂÂA B
x
ÂÂB C
)
ÂÂC D
;
ÂÂD E
Vector3
ÊÊ 
	fromPoint
ÊÊ 
=
ÊÊ 
fromTransform
ÊÊ  -
.
ÊÊ- .
TransformPoint
ÊÊ. <
(
ÊÊ< = 
GetPointOnRectEdge
ÊÊ= O
(
ÊÊO P
fromTransform
ÊÊP ]
as
ÊÊ^ `
RectTransform
ÊÊa n
,
ÊÊn o
	direction
ÊÊp y
)
ÊÊy z
)
ÊÊz {
;
ÊÊ{ |
Vector3
ÁÁ 
toPoint
ÁÁ 
=
ÁÁ 
toTransform
ÁÁ )
.
ÁÁ) *
TransformPoint
ÁÁ* 8
(
ÁÁ8 9 
GetPointOnRectEdge
ÁÁ9 K
(
ÁÁK L
toTransform
ÁÁL W
as
ÁÁX Z
RectTransform
ÁÁ[ h
,
ÁÁh i
-
ÁÁj k
	direction
ÁÁk t
)
ÁÁt u
)
ÁÁu v
;
ÁÁv w
float
ËË 
fromSize
ËË 
=
ËË 
HandleUtility
ËË *
.
ËË* +
GetHandleSize
ËË+ 8
(
ËË8 9
	fromPoint
ËË9 B
)
ËËB C
*
ËËD E
$num
ËËF K
;
ËËK L
float
ÈÈ 
toSize
ÈÈ 
=
ÈÈ 
HandleUtility
ÈÈ (
.
ÈÈ( )
GetHandleSize
ÈÈ) 6
(
ÈÈ6 7
toPoint
ÈÈ7 >
)
ÈÈ> ?
*
ÈÈ@ A
$num
ÈÈB G
;
ÈÈG H
	fromPoint
ÍÍ 
+=
ÍÍ 
fromTransform
ÍÍ &
.
ÍÍ& ' 
TransformDirection
ÍÍ' 9
(
ÍÍ9 :
sideDir
ÍÍ: A
)
ÍÍA B
*
ÍÍC D
fromSize
ÍÍE M
;
ÍÍM N
toPoint
ÎÎ 
+=
ÎÎ 
toTransform
ÎÎ "
.
ÎÎ" # 
TransformDirection
ÎÎ# 5
(
ÎÎ5 6
sideDir
ÎÎ6 =
)
ÎÎ= >
*
ÎÎ? @
toSize
ÎÎA G
;
ÎÎG H
float
ÏÏ 
length
ÏÏ 
=
ÏÏ 
Vector3
ÏÏ "
.
ÏÏ" #
Distance
ÏÏ# +
(
ÏÏ+ ,
	fromPoint
ÏÏ, 5
,
ÏÏ5 6
toPoint
ÏÏ7 >
)
ÏÏ> ?
;
ÏÏ? @
Vector3
ÌÌ 
fromTangent
ÌÌ 
=
ÌÌ  !
fromTransform
ÌÌ" /
.
ÌÌ/ 0
rotation
ÌÌ0 8
*
ÌÌ9 :
	direction
ÌÌ; D
*
ÌÌE F
length
ÌÌG M
*
ÌÌN O
$num
ÌÌP T
;
ÌÌT U
Vector3
ÓÓ 
	toTangent
ÓÓ 
=
ÓÓ 
toTransform
ÓÓ  +
.
ÓÓ+ ,
rotation
ÓÓ, 4
*
ÓÓ5 6
-
ÓÓ7 8
	direction
ÓÓ8 A
*
ÓÓB C
length
ÓÓD J
*
ÓÓK L
$num
ÓÓM Q
;
ÓÓQ R
Handles
 
.
 

DrawBezier
 
(
 
	fromPoint
 (
,
( )
toPoint
* 1
,
1 2
	fromPoint
3 <
+
= >
fromTangent
? J
,
J K
toPoint
L S
+
T U
	toTangent
V _
,
_ `
Handles
a h
.
h i
color
i n
,
n o
null
p t
,
t u
kArrowThicknessv Ö
)Ö Ü
;Ü á
Handles
ÒÒ 
.
ÒÒ 
DrawAAPolyLine
ÒÒ "
(
ÒÒ" #
kArrowThickness
ÒÒ# 2
,
ÒÒ2 3
toPoint
ÒÒ4 ;
,
ÒÒ; <
toPoint
ÒÒ= D
+
ÒÒE F
toTransform
ÒÒG R
.
ÒÒR S
rotation
ÒÒS [
*
ÒÒ\ ]
(
ÒÒ^ _
-
ÒÒ_ `
	direction
ÒÒ` i
-
ÒÒj k
sideDir
ÒÒl s
)
ÒÒs t
*
ÒÒu v
toSize
ÒÒw }
*
ÒÒ~ 
kArrowHeadSizeÒÒÄ é
)ÒÒé è
;ÒÒè ê
Handles
ÚÚ 
.
ÚÚ 
DrawAAPolyLine
ÚÚ "
(
ÚÚ" #
kArrowThickness
ÚÚ# 2
,
ÚÚ2 3
toPoint
ÚÚ4 ;
,
ÚÚ; <
toPoint
ÚÚ= D
+
ÚÚE F
toTransform
ÚÚG R
.
ÚÚR S
rotation
ÚÚS [
*
ÚÚ\ ]
(
ÚÚ^ _
-
ÚÚ_ `
	direction
ÚÚ` i
+
ÚÚj k
sideDir
ÚÚl s
)
ÚÚs t
*
ÚÚu v
toSize
ÚÚw }
*
ÚÚ~ 
kArrowHeadSizeÚÚÄ é
)ÚÚé è
;ÚÚè ê
}
ÛÛ 	
private
ıı 
static
ıı 
Vector3
ıı  
GetPointOnRectEdge
ıı 1
(
ıı1 2
RectTransform
ıı2 ?
rect
ıı@ D
,
ııD E
Vector2
ııF M
dir
ııN Q
)
ııQ R
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
rect
˜˜ 
==
˜˜ 
null
˜˜ 
)
˜˜ 
return
¯¯ 
Vector3
¯¯ 
.
¯¯ 
zero
¯¯ #
;
¯¯# $
if
˘˘ 
(
˘˘ 
dir
˘˘ 
!=
˘˘ 
Vector2
˘˘ 
.
˘˘ 
zero
˘˘ #
)
˘˘# $
dir
˙˙ 
/=
˙˙ 
Mathf
˙˙ 
.
˙˙ 
Max
˙˙  
(
˙˙  !
Mathf
˙˙! &
.
˙˙& '
Abs
˙˙' *
(
˙˙* +
dir
˙˙+ .
.
˙˙. /
x
˙˙/ 0
)
˙˙0 1
,
˙˙1 2
Mathf
˙˙3 8
.
˙˙8 9
Abs
˙˙9 <
(
˙˙< =
dir
˙˙= @
.
˙˙@ A
y
˙˙A B
)
˙˙B C
)
˙˙C D
;
˙˙D E
dir
˚˚ 
=
˚˚ 
rect
˚˚ 
.
˚˚ 
rect
˚˚ 
.
˚˚ 
center
˚˚ "
+
˚˚# $
Vector2
˚˚% ,
.
˚˚, -
Scale
˚˚- 2
(
˚˚2 3
rect
˚˚3 7
.
˚˚7 8
rect
˚˚8 <
.
˚˚< =
size
˚˚= A
,
˚˚A B
dir
˚˚C F
*
˚˚G H
$num
˚˚I M
)
˚˚M N
;
˚˚N O
return
¸¸ 
dir
¸¸ 
;
¸¸ 
}
˝˝ 	
}
˛˛ 
}ˇˇ ˙˝
âC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ImageEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Image 
) 
,  
true! %
)% &
]& '
[ "
CanEditMultipleObjects 
] 
public 

class 
ImageEditor 
: 
GraphicEditor ,
{ 
SerializedProperty 
m_FillMethod '
;' (
SerializedProperty 
m_FillOrigin '
;' (
SerializedProperty 
m_FillAmount '
;' (
SerializedProperty 
m_FillClockwise *
;* +
SerializedProperty 
m_Type !
;! "
SerializedProperty 
m_FillCenter '
;' (
SerializedProperty 
m_Sprite #
;# $
SerializedProperty 
m_PreserveAspect +
;+ ,
SerializedProperty 
m_UseSpriteMesh *
;* +
SerializedProperty %
m_PixelsPerUnitMultiplier 4
;4 5

GUIContent 
m_SpriteContent "
;" #

GUIContent 
m_SpriteTypeContent &
;& '

GUIContent   
m_ClockwiseContent   %
;  % &
AnimBool!! 
m_ShowSlicedOrTiled!! $
;!!$ %
AnimBool"" 
m_ShowSliced"" 
;"" 
AnimBool## 
m_ShowTiled## 
;## 
AnimBool$$ 
m_ShowFilled$$ 
;$$ 
AnimBool%% 

m_ShowType%% 
;%% 
private'' 
class'' 
Styles'' 
{(( 	
public)) 
static)) 

GUIContent)) $
text))% )
=))* +
EditorGUIUtility)), <
.))< =
TrTextContent))= J
())J K
$str))K X
)))X Y
;))Y Z
public** 
static** 

GUIContent** $
[**$ %
]**% &!
OriginHorizontalStyle**' <
=**= >
{++ 
EditorGUIUtility,,  
.,,  !
TrTextContent,,! .
(,,. /
$str,,/ 5
),,5 6
,,,6 7
EditorGUIUtility--  
.--  !
TrTextContent--! .
(--. /
$str--/ 6
)--6 7
}.. 
;.. 
public00 
static00 

GUIContent00 $
[00$ %
]00% &
OriginVerticalStyle00' :
=00; <
{11 
EditorGUIUtility22  
.22  !
TrTextContent22! .
(22. /
$str22/ 7
)227 8
,228 9
EditorGUIUtility33  
.33  !
TrTextContent33! .
(33. /
$str33/ 4
)334 5
}44 
;44 
public66 
static66 

GUIContent66 $
[66$ %
]66% &
Origin90Style66' 4
=665 6
{77 
EditorGUIUtility88  
.88  !
TrTextContent88! .
(88. /
$str88/ ;
)88; <
,88< =
EditorGUIUtility99  
.99  !
TrTextContent99! .
(99. /
$str99/ 8
)998 9
,999 :
EditorGUIUtility::  
.::  !
TrTextContent::! .
(::. /
$str::/ 9
)::9 :
,::: ;
EditorGUIUtility;;  
.;;  !
TrTextContent;;! .
(;;. /
$str;;/ <
);;< =
}<< 
;<< 
public>> 
static>> 

GUIContent>> $
[>>$ %
]>>% &
Origin180Style>>' 5
=>>6 7
{?? 
EditorGUIUtility@@  
.@@  !
TrTextContent@@! .
(@@. /
$str@@/ 7
)@@7 8
,@@8 9
EditorGUIUtilityAA  
.AA  !
TrTextContentAA! .
(AA. /
$strAA/ 5
)AA5 6
,AA6 7
EditorGUIUtilityBB  
.BB  !
TrTextContentBB! .
(BB. /
$strBB/ 4
)BB4 5
,BB5 6
EditorGUIUtilityCC  
.CC  !
TrTextContentCC! .
(CC. /
$strCC/ 6
)CC6 7
}DD 
;DD 
publicFF 
staticFF 

GUIContentFF $
[FF$ %
]FF% &
Origin360StyleFF' 5
=FF6 7
{GG 
EditorGUIUtilityHH  
.HH  !
TrTextContentHH! .
(HH. /
$strHH/ 7
)HH7 8
,HH8 9
EditorGUIUtilityII  
.II  !
TrTextContentII! .
(II. /
$strII/ 6
)II6 7
,II7 8
EditorGUIUtilityJJ  
.JJ  !
TrTextContentJJ! .
(JJ. /
$strJJ/ 4
)JJ4 5
,JJ5 6
EditorGUIUtilityKK  
.KK  !
TrTextContentKK! .
(KK. /
$strKK/ 5
)KK5 6
}LL 
;LL 
}MM 	
	protectedOO 
overrideOO 
voidOO 
OnEnableOO  (
(OO( )
)OO) *
{PP 	
baseQQ 
.QQ 
OnEnableQQ 
(QQ 
)QQ 
;QQ 
m_SpriteContentSS 
=SS 
EditorGUIUtilitySS .
.SS. /
TrTextContentSS/ <
(SS< =
$strSS= K
)SSK L
;SSL M
m_SpriteTypeContentTT 
=TT$ %
EditorGUIUtilityTT& 6
.TT6 7
TrTextContentTT7 D
(TTD E
$strTTE Q
)TTQ R
;TTR S
m_ClockwiseContentUU 
=UU$ %
EditorGUIUtilityUU& 6
.UU6 7
TrTextContentUU7 D
(UUD E
$strUUE P
)UUP Q
;UUQ R
m_SpriteWW 
=WW$ %
serializedObjectWW& 6
.WW6 7
FindPropertyWW7 C
(WWC D
$strWWD N
)WWN O
;WWO P
m_TypeXX 
=XX$ %
serializedObjectXX& 6
.XX6 7
FindPropertyXX7 C
(XXC D
$strXXD L
)XXL M
;XXM N
m_FillCenterYY 
=YY$ %
serializedObjectYY& 6
.YY6 7
FindPropertyYY7 C
(YYC D
$strYYD R
)YYR S
;YYS T
m_FillMethodZZ 
=ZZ$ %
serializedObjectZZ& 6
.ZZ6 7
FindPropertyZZ7 C
(ZZC D
$strZZD R
)ZZR S
;ZZS T
m_FillOrigin[[ 
=[[$ %
serializedObject[[& 6
.[[6 7
FindProperty[[7 C
([[C D
$str[[D R
)[[R S
;[[S T
m_FillClockwise\\ 
=\\$ %
serializedObject\\& 6
.\\6 7
FindProperty\\7 C
(\\C D
$str\\D U
)\\U V
;\\V W
m_FillAmount]] 
=]]$ %
serializedObject]]& 6
.]]6 7
FindProperty]]7 C
(]]C D
$str]]D R
)]]R S
;]]S T
m_PreserveAspect^^ 
=^^$ %
serializedObject^^& 6
.^^6 7
FindProperty^^7 C
(^^C D
$str^^D V
)^^V W
;^^W X
m_UseSpriteMesh__ 
=__$ %
serializedObject__& 6
.__6 7
FindProperty__7 C
(__C D
$str__D U
)__U V
;__V W%
m_PixelsPerUnitMultiplier`` %
=``& '
serializedObject``( 8
.``8 9
FindProperty``9 E
(``E F
$str``F a
)``a b
;``b c

m_ShowTypebb 
=bb 
newbb 
AnimBoolbb %
(bb% &
m_Spritebb& .
.bb. / 
objectReferenceValuebb/ C
!=bbD F
nullbbG K
)bbK L
;bbL M

m_ShowTypecc 
.cc 
valueChangedcc #
.cc# $
AddListenercc$ /
(cc/ 0
Repaintcc0 7
)cc7 8
;cc8 9
varee 
typeEnumee 
=ee 
(ee 
Imageee !
.ee! "
Typeee" &
)ee& '
m_Typeee' -
.ee- .
enumValueIndexee. <
;ee< =
m_ShowSlicedOrTiledgg 
=gg  !
newgg" %
AnimBoolgg& .
(gg. /
!gg/ 0
m_Typegg0 6
.gg6 7&
hasMultipleDifferentValuesgg7 Q
&&ggR T
typeEnumggU ]
==gg^ `
Imagegga f
.ggf g
Typeggg k
.ggk l
Slicedggl r
)ggr s
;ggs t
m_ShowSlicedhh 
=hh 
newhh 
AnimBoolhh '
(hh' (
!hh( )
m_Typehh) /
.hh/ 0&
hasMultipleDifferentValueshh0 J
&&hhK M
typeEnumhhN V
==hhW Y
ImagehhZ _
.hh_ `
Typehh` d
.hhd e
Slicedhhe k
)hhk l
;hhl m
m_ShowTiledii 
=ii 
newii 
AnimBoolii &
(ii& '
!ii' (
m_Typeii( .
.ii. /&
hasMultipleDifferentValuesii/ I
&&iiJ L
typeEnumiiM U
==iiV X
ImageiiY ^
.ii^ _
Typeii_ c
.iic d
Tilediid i
)iii j
;iij k
m_ShowFilledjj 
=jj 
newjj 
AnimBooljj '
(jj' (
!jj( )
m_Typejj) /
.jj/ 0&
hasMultipleDifferentValuesjj0 J
&&jjK M
typeEnumjjN V
==jjW Y
ImagejjZ _
.jj_ `
Typejj` d
.jjd e
Filledjje k
)jjk l
;jjl m
m_ShowSlicedOrTiledkk 
.kk  
valueChangedkk  ,
.kk, -
AddListenerkk- 8
(kk8 9
Repaintkk9 @
)kk@ A
;kkA B
m_ShowSlicedll 
.ll 
valueChangedll %
.ll% &
AddListenerll& 1
(ll1 2
Repaintll2 9
)ll9 :
;ll: ;
m_ShowTiledmm 
.mm 
valueChangedmm $
.mm$ %
AddListenermm% 0
(mm0 1
Repaintmm1 8
)mm8 9
;mm9 :
m_ShowFillednn 
.nn 
valueChangednn %
.nn% &
AddListenernn& 1
(nn1 2
Repaintnn2 9
)nn9 :
;nn: ;
SetShowNativeSizepp 
(pp 
truepp "
)pp" #
;pp# $
}qq 	
	protectedss 
overridess 
voidss 
	OnDisabless  )
(ss) *
)ss* +
{tt 	

m_ShowTypeuu 
.uu 
valueChangeduu #
.uu# $
RemoveListeneruu$ 2
(uu2 3
Repaintuu3 :
)uu: ;
;uu; <
m_ShowSlicedOrTiledvv 
.vv  
valueChangedvv  ,
.vv, -
RemoveListenervv- ;
(vv; <
Repaintvv< C
)vvC D
;vvD E
m_ShowSlicedww 
.ww 
valueChangedww %
.ww% &
RemoveListenerww& 4
(ww4 5
Repaintww5 <
)ww< =
;ww= >
m_ShowTiledxx 
.xx 
valueChangedxx $
.xx$ %
RemoveListenerxx% 3
(xx3 4
Repaintxx4 ;
)xx; <
;xx< =
m_ShowFilledyy 
.yy 
valueChangedyy %
.yy% &
RemoveListeneryy& 4
(yy4 5
Repaintyy5 <
)yy< =
;yy= >
}zz 	
public|| 
override|| 
void|| 
OnInspectorGUI|| +
(||+ ,
)||, -
{}} 	
serializedObject~~ 
.~~ 
Update~~ #
(~~# $
)~~$ %
;~~% &
	SpriteGUI
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ #
AppearanceControlsGUI
ÅÅ !
(
ÅÅ! "
)
ÅÅ" #
;
ÅÅ# $ 
RaycastControlsGUI
ÇÇ 
(
ÇÇ 
)
ÇÇ  
;
ÇÇ  !!
MaskableControlsGUI
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "

m_ShowType
ÖÖ 
.
ÖÖ 
target
ÖÖ 
=
ÖÖ 
m_Sprite
ÖÖ  (
.
ÖÖ( )"
objectReferenceValue
ÖÖ) =
!=
ÖÖ> @
null
ÖÖA E
;
ÖÖE F
if
ÜÜ 
(
ÜÜ 
EditorGUILayout
ÜÜ 
.
ÜÜ  
BeginFadeGroup
ÜÜ  .
(
ÜÜ. /

m_ShowType
ÜÜ/ 9
.
ÜÜ9 :
faded
ÜÜ: ?
)
ÜÜ? @
)
ÜÜ@ A
TypeGUI
áá 
(
áá 
)
áá 
;
áá 
EditorGUILayout
àà 
.
àà 
EndFadeGroup
àà (
(
àà( )
)
àà) *
;
àà* +
SetShowNativeSize
ää 
(
ää 
false
ää #
)
ää# $
;
ää$ %
if
ãã 
(
ãã 
EditorGUILayout
ãã 
.
ãã  
BeginFadeGroup
ãã  .
(
ãã. /
m_ShowNativeSize
ãã/ ?
.
ãã? @
faded
ãã@ E
)
ããE F
)
ããF G
{
åå 
	EditorGUI
çç 
.
çç 
indentLevel
çç %
++
çç% '
;
çç' (
if
èè 
(
èè 
(
èè 
Image
èè 
.
èè 
Type
èè 
)
èè  
m_Type
èè  &
.
èè& '
enumValueIndex
èè' 5
==
èè6 8
Image
èè9 >
.
èè> ?
Type
èè? C
.
èèC D
Simple
èèD J
)
èèJ K
EditorGUILayout
êê #
.
êê# $
PropertyField
êê$ 1
(
êê1 2
m_UseSpriteMesh
êê2 A
)
êêA B
;
êêB C
EditorGUILayout
íí 
.
íí  
PropertyField
íí  -
(
íí- .
m_PreserveAspect
íí. >
)
íí> ?
;
íí? @
	EditorGUI
ìì 
.
ìì 
indentLevel
ìì %
--
ìì% '
;
ìì' (
}
îî 
EditorGUILayout
ïï 
.
ïï 
EndFadeGroup
ïï (
(
ïï( )
)
ïï) *
;
ïï* +!
NativeSizeButtonGUI
ññ 
(
ññ  
)
ññ  !
;
ññ! "
serializedObject
òò 
.
òò %
ApplyModifiedProperties
òò 4
(
òò4 5
)
òò5 6
;
òò6 7
}
ôô 	
void
õõ 
SetShowNativeSize
õõ 
(
õõ 
bool
õõ #
instant
õõ$ +
)
õõ+ ,
{
úú 	
Image
ùù 
.
ùù 
Type
ùù 
type
ùù 
=
ùù 
(
ùù 
Image
ùù $
.
ùù$ %
Type
ùù% )
)
ùù) *
m_Type
ùù* 0
.
ùù0 1
enumValueIndex
ùù1 ?
;
ùù? @
bool
ûû 
showNativeSize
ûû 
=
ûû  !
(
ûû" #
type
ûû# '
==
ûû( *
Image
ûû+ 0
.
ûû0 1
Type
ûû1 5
.
ûû5 6
Simple
ûû6 <
||
ûû= ?
type
ûû@ D
==
ûûE G
Image
ûûH M
.
ûûM N
Type
ûûN R
.
ûûR S
Filled
ûûS Y
)
ûûY Z
&&
ûû[ ]
m_Sprite
ûû^ f
.
ûûf g"
objectReferenceValue
ûûg {
!=
ûû| ~
nullûû É
;ûûÉ Ñ
base
üü 
.
üü 
SetShowNativeSize
üü "
(
üü" #
showNativeSize
üü# 1
,
üü1 2
instant
üü3 :
)
üü: ;
;
üü; <
}
†† 	
	protected
¶¶ 
void
¶¶ 
	SpriteGUI
¶¶  
(
¶¶  !
)
¶¶! "
{
ßß 	
	EditorGUI
®® 
.
®® 
BeginChangeCheck
®® &
(
®®& '
)
®®' (
;
®®( )
EditorGUILayout
©© 
.
©© 
PropertyField
©© )
(
©©) *
m_Sprite
©©* 2
,
©©2 3
m_SpriteContent
©©4 C
)
©©C D
;
©©D E
if
™™ 
(
™™ 
	EditorGUI
™™ 
.
™™ 
EndChangeCheck
™™ (
(
™™( )
)
™™) *
)
™™* +
{
´´ 
var
¨¨ 
	newSprite
¨¨ 
=
¨¨ 
m_Sprite
¨¨  (
.
¨¨( )"
objectReferenceValue
¨¨) =
as
¨¨> @
Sprite
¨¨A G
;
¨¨G H
if
≠≠ 
(
≠≠ 
	newSprite
≠≠ 
)
≠≠ 
{
ÆÆ 
Image
ØØ 
.
ØØ 
Type
ØØ 
oldType
ØØ &
=
ØØ' (
(
ØØ) *
Image
ØØ* /
.
ØØ/ 0
Type
ØØ0 4
)
ØØ4 5
m_Type
ØØ5 ;
.
ØØ; <
enumValueIndex
ØØ< J
;
ØØJ K
if
∞∞ 
(
∞∞ 
	newSprite
∞∞ !
.
∞∞! "
border
∞∞" (
.
∞∞( )
SqrMagnitude
∞∞) 5
(
∞∞5 6
)
∞∞6 7
>
∞∞8 9
$num
∞∞: ;
)
∞∞; <
{
±± 
m_Type
≤≤ 
.
≤≤ 
enumValueIndex
≤≤ -
=
≤≤. /
(
≤≤0 1
int
≤≤1 4
)
≤≤4 5
Image
≤≤5 :
.
≤≤: ;
Type
≤≤; ?
.
≤≤? @
Sliced
≤≤@ F
;
≤≤F G
}
≥≥ 
else
¥¥ 
if
¥¥ 
(
¥¥ 
oldType
¥¥ $
==
¥¥% '
Image
¥¥( -
.
¥¥- .
Type
¥¥. 2
.
¥¥2 3
Sliced
¥¥3 9
)
¥¥9 :
{
µµ 
m_Type
∂∂ 
.
∂∂ 
enumValueIndex
∂∂ -
=
∂∂. /
(
∂∂0 1
int
∂∂1 4
)
∂∂4 5
Image
∂∂5 :
.
∂∂: ;
Type
∂∂; ?
.
∂∂? @
Simple
∂∂@ F
;
∂∂F G
}
∑∑ 
}
∏∏ 
(
ππ 
serializedObject
ππ !
.
ππ! "
targetObject
ππ" .
as
ππ/ 1
Image
ππ2 7
)
ππ7 8
.
ππ8 9(
DisableSpriteOptimizations
ππ9 S
(
ππS T
)
ππT U
;
ππU V
}
∫∫ 
}
ªª 	
	protected
¡¡ 
void
¡¡ 
TypeGUI
¡¡ 
(
¡¡ 
)
¡¡  
{
¬¬ 	
EditorGUILayout
√√ 
.
√√ 
PropertyField
√√ )
(
√√) *
m_Type
√√* 0
,
√√0 1!
m_SpriteTypeContent
√√2 E
)
√√E F
;
√√F G
++
≈≈ 
	EditorGUI
≈≈ 
.
≈≈ 
indentLevel
≈≈ #
;
≈≈# $
{
∆∆ 
Image
«« 
.
«« 
Type
«« 
typeEnum
«« #
=
««$ %
(
««& '
Image
««' ,
.
««, -
Type
««- 1
)
««1 2
m_Type
««2 8
.
««8 9
enumValueIndex
««9 G
;
««G H
bool
…… 
showSlicedOrTiled
…… &
=
……' (
(
……) *
!
……* +
m_Type
……+ 1
.
……1 2(
hasMultipleDifferentValues
……2 L
&&
……M O
(
……P Q
typeEnum
……Q Y
==
……Z \
Image
……] b
.
……b c
Type
……c g
.
……g h
Sliced
……h n
||
……o q
typeEnum
……r z
==
……{ }
Image……~ É
.……É Ñ
Type……Ñ à
.……à â
Tiled……â é
)……é è
)……è ê
;……ê ë
if
   
(
   
showSlicedOrTiled
   %
&&
  & (
targets
  ) 0
.
  0 1
Length
  1 7
>
  8 9
$num
  : ;
)
  ; <
showSlicedOrTiled
ÀÀ %
=
ÀÀ& '
targets
ÀÀ( /
.
ÀÀ/ 0
Select
ÀÀ0 6
(
ÀÀ6 7
obj
ÀÀ7 :
=>
ÀÀ; =
obj
ÀÀ> A
as
ÀÀB D
Image
ÀÀE J
)
ÀÀJ K
.
ÀÀK L
All
ÀÀL O
(
ÀÀO P
img
ÀÀP S
=>
ÀÀT V
img
ÀÀW Z
.
ÀÀZ [
	hasBorder
ÀÀ[ d
)
ÀÀd e
;
ÀÀe f!
m_ShowSlicedOrTiled
ÕÕ #
.
ÕÕ# $
target
ÕÕ$ *
=
ÕÕ+ ,
showSlicedOrTiled
ÕÕ- >
;
ÕÕ> ?
m_ShowSliced
ŒŒ 
.
ŒŒ 
target
ŒŒ #
=
ŒŒ$ %
(
ŒŒ& '
showSlicedOrTiled
ŒŒ' 8
&&
ŒŒ9 ;
!
ŒŒ< =
m_Type
ŒŒ= C
.
ŒŒC D(
hasMultipleDifferentValues
ŒŒD ^
&&
ŒŒ_ a
typeEnum
ŒŒb j
==
ŒŒk m
Image
ŒŒn s
.
ŒŒs t
Type
ŒŒt x
.
ŒŒx y
Sliced
ŒŒy 
)ŒŒ Ä
;ŒŒÄ Å
m_ShowTiled
œœ 
.
œœ 
target
œœ "
=
œœ# $
(
œœ% &
showSlicedOrTiled
œœ& 7
&&
œœ8 :
!
œœ; <
m_Type
œœ< B
.
œœB C(
hasMultipleDifferentValues
œœC ]
&&
œœ^ `
typeEnum
œœa i
==
œœj l
Image
œœm r
.
œœr s
Type
œœs w
.
œœw x
Tiled
œœx }
)
œœ} ~
;
œœ~ 
m_ShowFilled
–– 
.
–– 
target
–– #
=
––$ %
(
––& '
!
––' (
m_Type
––( .
.
––. /(
hasMultipleDifferentValues
––/ I
&&
––J L
typeEnum
––M U
==
––V X
Image
––Y ^
.
––^ _
Type
––_ c
.
––c d
Filled
––d j
)
––j k
;
––k l
Image
““ 
image
““ 
=
““ 
target
““ $
as
““% '
Image
““( -
;
““- .
if
”” 
(
”” 
EditorGUILayout
”” #
.
””# $
BeginFadeGroup
””$ 2
(
””2 3!
m_ShowSlicedOrTiled
””3 F
.
””F G
faded
””G L
)
””L M
)
””M N
{
‘‘ 
if
’’ 
(
’’ 
image
’’ 
.
’’ 
	hasBorder
’’ '
)
’’' (
EditorGUILayout
÷÷ '
.
÷÷' (
PropertyField
÷÷( 5
(
÷÷5 6
m_FillCenter
÷÷6 B
)
÷÷B C
;
÷÷C D
EditorGUILayout
◊◊ #
.
◊◊# $
PropertyField
◊◊$ 1
(
◊◊1 2'
m_PixelsPerUnitMultiplier
◊◊2 K
)
◊◊K L
;
◊◊L M
}
ÿÿ 
EditorGUILayout
ŸŸ 
.
ŸŸ  
EndFadeGroup
ŸŸ  ,
(
ŸŸ, -
)
ŸŸ- .
;
ŸŸ. /
if
€€ 
(
€€ 
EditorGUILayout
€€ #
.
€€# $
BeginFadeGroup
€€$ 2
(
€€2 3
m_ShowSliced
€€3 ?
.
€€? @
faded
€€@ E
)
€€E F
)
€€F G
{
‹‹ 
if
›› 
(
›› 
image
›› 
.
›› 
sprite
›› $
!=
››% '
null
››( ,
&&
››- /
!
››0 1
image
››1 6
.
››6 7
	hasBorder
››7 @
)
››@ A
EditorGUILayout
ﬁﬁ '
.
ﬁﬁ' (
HelpBox
ﬁﬁ( /
(
ﬁﬁ/ 0
$str
ﬁﬁ0 S
,
ﬁﬁS T
MessageType
ﬁﬁU `
.
ﬁﬁ` a
Warning
ﬁﬁa h
)
ﬁﬁh i
;
ﬁﬁi j
}
ﬂﬂ 
EditorGUILayout
‡‡ 
.
‡‡  
EndFadeGroup
‡‡  ,
(
‡‡, -
)
‡‡- .
;
‡‡. /
if
‚‚ 
(
‚‚ 
EditorGUILayout
‚‚ #
.
‚‚# $
BeginFadeGroup
‚‚$ 2
(
‚‚2 3
m_ShowTiled
‚‚3 >
.
‚‚> ?
faded
‚‚? D
)
‚‚D E
)
‚‚E F
{
„„ 
if
‰‰ 
(
‰‰ 
image
‰‰ 
.
‰‰ 
sprite
‰‰ $
!=
‰‰% '
null
‰‰( ,
&&
‰‰- /
!
‰‰0 1
image
‰‰1 6
.
‰‰6 7
	hasBorder
‰‰7 @
&&
‰‰A C
(
‰‰D E
image
‰‰E J
.
‰‰J K
sprite
‰‰K Q
.
‰‰Q R
texture
‰‰R Y
.
‰‰Y Z
wrapMode
‰‰Z b
!=
‰‰c e
TextureWrapMode
‰‰f u
.
‰‰u v
Repeat
‰‰v |
||
‰‰} 
image‰‰Ä Ö
.‰‰Ö Ü
sprite‰‰Ü å
.‰‰å ç
packed‰‰ç ì
)‰‰ì î
)‰‰î ï
EditorGUILayout
ÂÂ '
.
ÂÂ' (
HelpBox
ÂÂ( /
(
ÂÂ/ 0
$strÂÂ0 ‹
,ÂÂ‹ ›
MessageTypeÂÂﬁ È
.ÂÂÈ Í
WarningÂÂÍ Ò
)ÂÂÒ Ú
;ÂÂÚ Û
}
ÊÊ 
EditorGUILayout
ÁÁ 
.
ÁÁ  
EndFadeGroup
ÁÁ  ,
(
ÁÁ, -
)
ÁÁ- .
;
ÁÁ. /
if
ÈÈ 
(
ÈÈ 
EditorGUILayout
ÈÈ #
.
ÈÈ# $
BeginFadeGroup
ÈÈ$ 2
(
ÈÈ2 3
m_ShowFilled
ÈÈ3 ?
.
ÈÈ? @
faded
ÈÈ@ E
)
ÈÈE F
)
ÈÈF G
{
ÍÍ 
	EditorGUI
ÎÎ 
.
ÎÎ 
BeginChangeCheck
ÎÎ .
(
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
EditorGUILayout
ÏÏ #
.
ÏÏ# $
PropertyField
ÏÏ$ 1
(
ÏÏ1 2
m_FillMethod
ÏÏ2 >
)
ÏÏ> ?
;
ÏÏ? @
if
ÌÌ 
(
ÌÌ 
	EditorGUI
ÌÌ !
.
ÌÌ! "
EndChangeCheck
ÌÌ" 0
(
ÌÌ0 1
)
ÌÌ1 2
)
ÌÌ2 3
{
ÓÓ 
m_FillOrigin
ÔÔ $
.
ÔÔ$ %
intValue
ÔÔ% -
=
ÔÔ. /
$num
ÔÔ0 1
;
ÔÔ1 2
}
 
var
ÒÒ 
	shapeRect
ÒÒ !
=
ÒÒ" #
EditorGUILayout
ÒÒ$ 3
.
ÒÒ3 4
GetControlRect
ÒÒ4 B
(
ÒÒB C
true
ÒÒC G
)
ÒÒG H
;
ÒÒH I
switch
ÚÚ 
(
ÚÚ 
(
ÚÚ 
Image
ÚÚ "
.
ÚÚ" #

FillMethod
ÚÚ# -
)
ÚÚ- .
m_FillMethod
ÚÚ. :
.
ÚÚ: ;
enumValueIndex
ÚÚ; I
)
ÚÚI J
{
ÛÛ 
case
ÙÙ 
Image
ÙÙ "
.
ÙÙ" #

FillMethod
ÙÙ# -
.
ÙÙ- .

Horizontal
ÙÙ. 8
:
ÙÙ8 9
	EditorGUI
ıı %
.
ıı% &
Popup
ıı& +
(
ıı+ ,
	shapeRect
ıı, 5
,
ıı5 6
m_FillOrigin
ıı7 C
,
ııC D
Styles
ııE K
.
ııK L#
OriginHorizontalStyle
ııL a
,
ııa b
Styles
ııc i
.
ııi j
text
ııj n
)
ıın o
;
ııo p
break
ˆˆ !
;
ˆˆ! "
case
˜˜ 
Image
˜˜ "
.
˜˜" #

FillMethod
˜˜# -
.
˜˜- .
Vertical
˜˜. 6
:
˜˜6 7
	EditorGUI
¯¯ %
.
¯¯% &
Popup
¯¯& +
(
¯¯+ ,
	shapeRect
¯¯, 5
,
¯¯5 6
m_FillOrigin
¯¯7 C
,
¯¯C D
Styles
¯¯E K
.
¯¯K L!
OriginVerticalStyle
¯¯L _
,
¯¯_ `
Styles
¯¯a g
.
¯¯g h
text
¯¯h l
)
¯¯l m
;
¯¯m n
break
˘˘ !
;
˘˘! "
case
˙˙ 
Image
˙˙ "
.
˙˙" #

FillMethod
˙˙# -
.
˙˙- .
Radial90
˙˙. 6
:
˙˙6 7
	EditorGUI
˚˚ %
.
˚˚% &
Popup
˚˚& +
(
˚˚+ ,
	shapeRect
˚˚, 5
,
˚˚5 6
m_FillOrigin
˚˚7 C
,
˚˚C D
Styles
˚˚E K
.
˚˚K L
Origin90Style
˚˚L Y
,
˚˚Y Z
Styles
˚˚[ a
.
˚˚a b
text
˚˚b f
)
˚˚f g
;
˚˚g h
break
¸¸ !
;
¸¸! "
case
˝˝ 
Image
˝˝ "
.
˝˝" #

FillMethod
˝˝# -
.
˝˝- .
	Radial180
˝˝. 7
:
˝˝7 8
	EditorGUI
˛˛ %
.
˛˛% &
Popup
˛˛& +
(
˛˛+ ,
	shapeRect
˛˛, 5
,
˛˛5 6
m_FillOrigin
˛˛7 C
,
˛˛C D
Styles
˛˛E K
.
˛˛K L
Origin180Style
˛˛L Z
,
˛˛Z [
Styles
˛˛\ b
.
˛˛b c
text
˛˛c g
)
˛˛g h
;
˛˛h i
break
ˇˇ !
;
ˇˇ! "
case
ÄÄ 
Image
ÄÄ "
.
ÄÄ" #

FillMethod
ÄÄ# -
.
ÄÄ- .
	Radial360
ÄÄ. 7
:
ÄÄ7 8
	EditorGUI
ÅÅ %
.
ÅÅ% &
Popup
ÅÅ& +
(
ÅÅ+ ,
	shapeRect
ÅÅ, 5
,
ÅÅ5 6
m_FillOrigin
ÅÅ7 C
,
ÅÅC D
Styles
ÅÅE K
.
ÅÅK L
Origin360Style
ÅÅL Z
,
ÅÅZ [
Styles
ÅÅ\ b
.
ÅÅb c
text
ÅÅc g
)
ÅÅg h
;
ÅÅh i
break
ÇÇ !
;
ÇÇ! "
}
ÉÉ 
EditorGUILayout
ÑÑ #
.
ÑÑ# $
PropertyField
ÑÑ$ 1
(
ÑÑ1 2
m_FillAmount
ÑÑ2 >
)
ÑÑ> ?
;
ÑÑ? @
if
ÖÖ 
(
ÖÖ 
(
ÖÖ 
Image
ÖÖ 
.
ÖÖ 

FillMethod
ÖÖ )
)
ÖÖ) *
m_FillMethod
ÖÖ* 6
.
ÖÖ6 7
enumValueIndex
ÖÖ7 E
>
ÖÖF G
Image
ÖÖH M
.
ÖÖM N

FillMethod
ÖÖN X
.
ÖÖX Y
Vertical
ÖÖY a
)
ÖÖa b
{
ÜÜ 
EditorGUILayout
áá '
.
áá' (
PropertyField
áá( 5
(
áá5 6
m_FillClockwise
áá6 E
,
ááE F 
m_ClockwiseContent
ááG Y
)
ááY Z
;
ááZ [
}
àà 
}
ââ 
EditorGUILayout
ää 
.
ää  
EndFadeGroup
ää  ,
(
ää, -
)
ää- .
;
ää. /
}
ãã 
--
åå 
	EditorGUI
åå 
.
åå 
indentLevel
åå #
;
åå# $
}
çç 	
public
ìì 
override
ìì 
bool
ìì 
HasPreviewGUI
ìì *
(
ìì* +
)
ìì+ ,
{
ìì- .
return
ìì/ 5
true
ìì6 :
;
ìì: ;
}
ìì< =
public
ôô 
override
ôô 
void
ôô 
OnPreviewGUI
ôô )
(
ôô) *
Rect
ôô* .
rect
ôô/ 3
,
ôô3 4
GUIStyle
ôô5 =

background
ôô> H
)
ôôH I
{
öö 	
Image
õõ 
image
õõ 
=
õõ 
target
õõ  
as
õõ! #
Image
õõ$ )
;
õõ) *
if
úú 
(
úú 
image
úú 
==
úú 
null
úú 
)
úú 
return
úú %
;
úú% &
Sprite
ûû 
sf
ûû 
=
ûû 
image
ûû 
.
ûû 
sprite
ûû $
;
ûû$ %
if
üü 
(
üü 
sf
üü 
==
üü 
null
üü 
)
üü 
return
üü "
;
üü" #
SpriteDrawUtility
°° 
.
°° 

DrawSprite
°° (
(
°°( )
sf
°°) +
,
°°+ ,
rect
°°- 1
,
°°1 2
image
°°3 8
.
°°8 9
canvasRenderer
°°9 G
.
°°G H
GetColor
°°H P
(
°°P Q
)
°°Q R
)
°°R S
;
°°S T
}
¢¢ 	
public
´´ 
override
´´ 
string
´´ 
GetInfoString
´´ ,
(
´´, -
)
´´- .
{
¨¨ 	
Image
≠≠ 
image
≠≠ 
=
≠≠ 
target
≠≠  
as
≠≠! #
Image
≠≠$ )
;
≠≠) *
Sprite
ÆÆ 
sprite
ÆÆ 
=
ÆÆ 
image
ÆÆ !
.
ÆÆ! "
sprite
ÆÆ" (
;
ÆÆ( )
int
∞∞ 
x
∞∞ 
=
∞∞ 
(
∞∞ 
sprite
∞∞ 
!=
∞∞ 
null
∞∞ #
)
∞∞# $
?
∞∞% &
Mathf
∞∞' ,
.
∞∞, -

RoundToInt
∞∞- 7
(
∞∞7 8
sprite
∞∞8 >
.
∞∞> ?
rect
∞∞? C
.
∞∞C D
width
∞∞D I
)
∞∞I J
:
∞∞K L
$num
∞∞M N
;
∞∞N O
int
±± 
y
±± 
=
±± 
(
±± 
sprite
±± 
!=
±± 
null
±± #
)
±±# $
?
±±% &
Mathf
±±' ,
.
±±, -

RoundToInt
±±- 7
(
±±7 8
sprite
±±8 >
.
±±> ?
rect
±±? C
.
±±C D
height
±±D J
)
±±J K
:
±±L M
$num
±±N O
;
±±O P
return
≥≥ 
string
≥≥ 
.
≥≥ 
Format
≥≥  
(
≥≥  !
$str
≥≥! 6
,
≥≥6 7
x
≥≥8 9
,
≥≥9 :
y
≥≥; <
)
≥≥< =
;
≥≥= >
}
¥¥ 	
}
µµ 
}∂∂ ‘O
äC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SliderEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Slider 
)  
,  !
true" &
)& '
]' (
[ "
CanEditMultipleObjects 
] 
public 

class 
SliderEditor 
: 
SelectableEditor  0
{ 
SerializedProperty 
m_Direction &
;& '
SerializedProperty 

m_FillRect %
;% &
SerializedProperty 
m_HandleRect '
;' (
SerializedProperty 

m_MinValue %
;% &
SerializedProperty 

m_MaxValue %
;% &
SerializedProperty 
m_WholeNumbers )
;) *
SerializedProperty 
m_Value "
;" #
SerializedProperty 
m_OnValueChanged +
;+ ,
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 

m_FillRect 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
m_HandleRect 
= 
serializedObject +
.+ ,
FindProperty, 8
(8 9
$str9 G
)G H
;H I
m_Direction 
= 
serializedObject *
.* +
FindProperty+ 7
(7 8
$str8 E
)E F
;F G

m_MinValue 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E

m_MaxValue 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
m_WholeNumbers   
=   
serializedObject   -
.  - .
FindProperty  . :
(  : ;
$str  ; K
)  K L
;  L M
m_Value!! 
=!! 
serializedObject!! &
.!!& '
FindProperty!!' 3
(!!3 4
$str!!4 =
)!!= >
;!!> ?
m_OnValueChanged"" 
="" 
serializedObject"" /
.""/ 0
FindProperty""0 <
(""< =
$str""= O
)""O P
;""P Q
}## 	
public%% 
override%% 
void%% 
OnInspectorGUI%% +
(%%+ ,
)%%, -
{&& 	
base'' 
.'' 
OnInspectorGUI'' 
(''  
)''  !
;''! "
EditorGUILayout(( 
.(( 
Space(( !
(((! "
)((" #
;((# $
serializedObject** 
.** 
Update** #
(**# $
)**$ %
;**% &
EditorGUILayout,, 
.,, 
PropertyField,, )
(,,) *

m_FillRect,,* 4
),,4 5
;,,5 6
EditorGUILayout-- 
.-- 
PropertyField-- )
(--) *
m_HandleRect--* 6
)--6 7
;--7 8
if// 
(// 

m_FillRect// 
.//  
objectReferenceValue// /
!=//0 2
null//3 7
||//8 :
m_HandleRect//; G
.//G H 
objectReferenceValue//H \
!=//] _
null//` d
)//d e
{00 
	EditorGUI11 
.11 
BeginChangeCheck11 *
(11* +
)11+ ,
;11, -
EditorGUILayout22 
.22  
PropertyField22  -
(22- .
m_Direction22. 9
)229 :
;22: ;
if33 
(33 
	EditorGUI33 
.33 
EndChangeCheck33 ,
(33, -
)33- .
)33. /
{44 
Slider55 
.55 
	Direction55 $
	direction55% .
=55/ 0
(551 2
Slider552 8
.558 9
	Direction559 B
)55B C
m_Direction55C N
.55N O
enumValueIndex55O ]
;55] ^
foreach66 
(66 
var66  
obj66! $
in66% '
serializedObject66( 8
.668 9
targetObjects669 F
)66F G
{77 
Slider88 
slider88 %
=88& '
obj88( +
as88, .
Slider88/ 5
;885 6
slider99 
.99 
SetDirection99 +
(99+ ,
	direction99, 5
,995 6
true997 ;
)99; <
;99< =
}:: 
};; 
	EditorGUI>> 
.>> 
BeginChangeCheck>> *
(>>* +
)>>+ ,
;>>, -
float?? 
newMin?? 
=?? 
EditorGUILayout?? .
.??. /

FloatField??/ 9
(??9 :
$str??: E
,??E F

m_MinValue??G Q
.??Q R

floatValue??R \
)??\ ]
;??] ^
if@@ 
(@@ 
	EditorGUI@@ 
.@@ 
EndChangeCheck@@ ,
(@@, -
)@@- .
&&@@/ 1
newMin@@2 8
<=@@9 ;

m_MaxValue@@< F
.@@F G

floatValue@@G Q
)@@Q R
{AA 

m_MinValueBB 
.BB 

floatValueBB )
=BB* +
newMinBB, 2
;BB2 3
}CC 
	EditorGUIEE 
.EE 
BeginChangeCheckEE *
(EE* +
)EE+ ,
;EE, -
floatFF 
newMaxFF 
=FF 
EditorGUILayoutFF .
.FF. /

FloatFieldFF/ 9
(FF9 :
$strFF: E
,FFE F

m_MaxValueFFG Q
.FFQ R

floatValueFFR \
)FF\ ]
;FF] ^
ifGG 
(GG 
	EditorGUIGG 
.GG 
EndChangeCheckGG ,
(GG, -
)GG- .
&&GG/ 1
newMaxGG2 8
>=GG9 ;

m_MinValueGG< F
.GGF G

floatValueGGG Q
)GGQ R
{HH 

m_MaxValueII 
.II 

floatValueII )
=II* +
newMaxII, 2
;II2 3
}JJ 
EditorGUILayoutLL 
.LL  
PropertyFieldLL  -
(LL- .
m_WholeNumbersLL. <
)LL< =
;LL= >
EditorGUILayoutMM 
.MM  
SliderMM  &
(MM& '
m_ValueMM' .
,MM. /

m_MinValueMM0 :
.MM: ;

floatValueMM; E
,MME F

m_MaxValueMMG Q
.MMQ R

floatValueMMR \
)MM\ ]
;MM] ^
boolOO 
warningOO 
=OO 
falseOO $
;OO$ %
foreachPP 
(PP 
varPP 
objPP  
inPP! #
serializedObjectPP$ 4
.PP4 5
targetObjectsPP5 B
)PPB C
{QQ 
SliderRR 
sliderRR !
=RR" #
objRR$ '
asRR( *
SliderRR+ 1
;RR1 2
SliderSS 
.SS 
	DirectionSS $
dirSS% (
=SS) *
sliderSS+ 1
.SS1 2
	directionSS2 ;
;SS; <
ifTT 
(TT 
dirTT 
==TT 
SliderTT %
.TT% &
	DirectionTT& /
.TT/ 0
LeftToRightTT0 ;
||TT< >
dirTT? B
==TTC E
SliderTTF L
.TTL M
	DirectionTTM V
.TTV W
RightToLeftTTW b
)TTb c
warningUU 
=UU  !
(UU" #
sliderUU# )
.UU) *

navigationUU* 4
.UU4 5
modeUU5 9
!=UU: <

NavigationUU= G
.UUG H
ModeUUH L
.UUL M
	AutomaticUUM V
&&UUW Y
(UUZ [
sliderUU[ a
.UUa b 
FindSelectableOnLeftUUb v
(UUv w
)UUw x
!=UUy {
null	UU| Ä
||
UUÅ É
slider
UUÑ ä
.
UUä ã#
FindSelectableOnRight
UUã †
(
UU† °
)
UU° ¢
!=
UU£ •
null
UU¶ ™
)
UU™ ´
)
UU´ ¨
;
UU¨ ≠
elseVV 
warningWW 
=WW  !
(WW" #
sliderWW# )
.WW) *

navigationWW* 4
.WW4 5
modeWW5 9
!=WW: <

NavigationWW= G
.WWG H
ModeWWH L
.WWL M
	AutomaticWWM V
&&WWW Y
(WWZ [
sliderWW[ a
.WWa b 
FindSelectableOnDownWWb v
(WWv w
)WWw x
!=WWy {
null	WW| Ä
||
WWÅ É
slider
WWÑ ä
.
WWä ã 
FindSelectableOnUp
WWã ù
(
WWù û
)
WWû ü
!=
WW† ¢
null
WW£ ß
)
WWß ®
)
WW® ©
;
WW© ™
}XX 
ifZZ 
(ZZ 
warningZZ 
)ZZ 
EditorGUILayout[[ #
.[[# $
HelpBox[[$ +
([[+ ,
$str	[[, ã
,
[[ã å
MessageType
[[ç ò
.
[[ò ô
Warning
[[ô †
)
[[† °
;
[[° ¢
EditorGUILayout^^ 
.^^  
Space^^  %
(^^% &
)^^& '
;^^' (
EditorGUILayout__ 
.__  
PropertyField__  -
(__- .
m_OnValueChanged__. >
)__> ?
;__? @
}`` 
elseaa 
{bb 
EditorGUILayoutcc 
.cc  
HelpBoxcc  '
(cc' (
$str	cc( ≥
,
cc≥ ¥
MessageType
ccµ ¿
.
cc¿ ¡
Info
cc¡ ≈
)
cc≈ ∆
;
cc∆ «
}dd 
serializedObjectff 
.ff #
ApplyModifiedPropertiesff 4
(ff4 5
)ff5 6
;ff6 7
}gg 	
}hh 
}ii ·G
ëC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\LayoutElementEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
LayoutElement &
)& '
,' (
true) -
)- .
]. /
[		 "
CanEditMultipleObjects		 
]		 
public 

class 
LayoutElementEditor $
:% &
Editor' -
{ 
SerializedProperty 
m_IgnoreLayout )
;) *
SerializedProperty 

m_MinWidth %
;% &
SerializedProperty 
m_MinHeight &
;& '
SerializedProperty 
m_PreferredWidth +
;+ ,
SerializedProperty 
m_PreferredHeight ,
;, -
SerializedProperty 
m_FlexibleWidth *
;* +
SerializedProperty 
m_FlexibleHeight +
;+ ,
SerializedProperty 
m_LayoutPriority +
;+ ,
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_IgnoreLayout 
= 
serializedObject -
.- .
FindProperty. :
(: ;
$str; K
)K L
;L M

m_MinWidth 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
m_MinHeight 
= 
serializedObject *
.* +
FindProperty+ 7
(7 8
$str8 E
)E F
;F G
m_PreferredWidth 
= 
serializedObject /
./ 0
FindProperty0 <
(< =
$str= O
)O P
;P Q
m_PreferredHeight 
= 
serializedObject  0
.0 1
FindProperty1 =
(= >
$str> Q
)Q R
;R S
m_FlexibleWidth   
=   
serializedObject   .
.  . /
FindProperty  / ;
(  ; <
$str  < M
)  M N
;  N O
m_FlexibleHeight!! 
=!! 
serializedObject!! /
.!!/ 0
FindProperty!!0 <
(!!< =
$str!!= O
)!!O P
;!!P Q
m_LayoutPriority"" 
="" 
serializedObject"" /
.""/ 0
FindProperty""0 <
(""< =
$str""= O
)""O P
;""P Q
}## 	
public%% 
override%% 
void%% 
OnInspectorGUI%% +
(%%+ ,
)%%, -
{&& 	
serializedObject'' 
.'' 
Update'' #
(''# $
)''$ %
;''% &
EditorGUILayout)) 
.)) 
PropertyField)) )
())) *
m_IgnoreLayout))* 8
)))8 9
;))9 :
if++ 
(++ 
!++ 
m_IgnoreLayout++ 
.++  
	boolValue++  )
)++) *
{,, 
EditorGUILayout-- 
.--  
Space--  %
(--% &
)--& '
;--' (
LayoutElementField// "
(//" #

m_MinWidth//# -
,//- .
$num/// 0
)//0 1
;//1 2
LayoutElementField00 "
(00" #
m_MinHeight00# .
,00. /
$num000 1
)001 2
;002 3
LayoutElementField11 "
(11" #
m_PreferredWidth11# 3
,113 4
t115 6
=>117 9
t11: ;
.11; <
rect11< @
.11@ A
width11A F
)11F G
;11G H
LayoutElementField22 "
(22" #
m_PreferredHeight22# 4
,224 5
t226 7
=>228 :
t22; <
.22< =
rect22= A
.22A B
height22B H
)22H I
;22I J
LayoutElementField33 "
(33" #
m_FlexibleWidth33# 2
,332 3
$num334 5
)335 6
;336 7
LayoutElementField44 "
(44" #
m_FlexibleHeight44# 3
,443 4
$num445 6
)446 7
;447 8
}55 
EditorGUILayout77 
.77 
PropertyField77 )
(77) *
m_LayoutPriority77* :
)77: ;
;77; <
serializedObject99 
.99 #
ApplyModifiedProperties99 4
(994 5
)995 6
;996 7
}:: 	
void<< 
LayoutElementField<< 
(<<  
SerializedProperty<<  2
property<<3 ;
,<<; <
float<<= B
defaultValue<<C O
)<<O P
{== 	
LayoutElementField>> 
(>> 
property>> '
,>>' (
_>>) *
=>>>+ -
defaultValue>>. :
)>>: ;
;>>; <
}?? 	
voidAA 
LayoutElementFieldAA 
(AA  
SerializedPropertyAA  2
propertyAA3 ;
,AA; <
SystemAA= C
.AAC D
FuncAAD H
<AAH I
RectTransformAAI V
,AAV W
floatAAX ]
>AA] ^
defaultValueAA_ k
)AAk l
{BB 	
RectCC 
positionCC 
=CC 
EditorGUILayoutCC +
.CC+ ,
GetControlRectCC, :
(CC: ;
)CC; <
;CC< =

GUIContentFF 
labelFF 
=FF 
	EditorGUIFF (
.FF( )
BeginPropertyFF) 6
(FF6 7
positionFF7 ?
,FF? @
nullFFA E
,FFE F
propertyFFG O
)FFO P
;FFP Q
RectII 
fieldPositionII 
=II  
	EditorGUIII! *
.II* +
PrefixLabelII+ 6
(II6 7
positionII7 ?
,II? @
labelIIA F
)IIF G
;IIG H
RectKK 

toggleRectKK 
=KK 
fieldPositionKK +
;KK+ ,

toggleRectLL 
.LL 
widthLL 
=LL 
$numLL !
;LL! "
RectNN 
floatFieldRectNN 
=NN  !
fieldPositionNN" /
;NN/ 0
floatFieldRectOO 
.OO 
xMinOO 
+=OO  "
$numOO# %
;OO% &
	EditorGUIRR 
.RR 
BeginChangeCheckRR &
(RR& '
)RR' (
;RR( )
boolSS 
enabledSS 
=SS 
	EditorGUISS $
.SS$ %

ToggleLeftSS% /
(SS/ 0

toggleRectSS0 :
,SS: ;

GUIContentSS< F
.SSF G
noneSSG K
,SSK L
propertySSM U
.SSU V

floatValueSSV `
>=SSa c
$numSSd e
)SSe f
;SSf g
ifTT 
(TT 
	EditorGUITT 
.TT 
EndChangeCheckTT (
(TT( )
)TT) *
)TT* +
{UU 
propertyWW 
.WW 

floatValueWW #
=WW$ %
(WW& '
enabledWW' .
?WW/ 0
defaultValueWW1 =
(WW= >
(WW> ?
targetWW? E
asWWF H
LayoutElementWWI V
)WWV W
.WWW X
	transformWWX a
asWWb d
RectTransformWWe r
)WWr s
:WWt u
-WWv w
$numWWw x
)WWx y
;WWy z
}XX 
ifZZ 
(ZZ 
!ZZ 
propertyZZ 
.ZZ &
hasMultipleDifferentValuesZZ 4
&&ZZ5 7
propertyZZ8 @
.ZZ@ A

floatValueZZA K
>=ZZL N
$numZZO P
)ZZP Q
{[[ 
EditorGUIUtility]]  
.]]  !

labelWidth]]! +
=]], -
$num]]. /
;]]/ 0
	EditorGUI^^ 
.^^ 
BeginChangeCheck^^ *
(^^* +
)^^+ ,
;^^, -
float__ 
newValue__ 
=__  
	EditorGUI__! *
.__* +

FloatField__+ 5
(__5 6
floatFieldRect__6 D
,__D E
new__F I

GUIContent__J T
(__T U
$str__U X
)__X Y
,__Y Z
property__[ c
.__c d

floatValue__d n
)__n o
;__o p
if`` 
(`` 
	EditorGUI`` 
.`` 
EndChangeCheck`` ,
(``, -
)``- .
)``. /
{aa 
propertybb 
.bb 

floatValuebb '
=bb( )
Mathfbb* /
.bb/ 0
Maxbb0 3
(bb3 4
$numbb4 5
,bb5 6
newValuebb7 ?
)bb? @
;bb@ A
}cc 
EditorGUIUtilitydd  
.dd  !

labelWidthdd! +
=dd, -
$numdd. /
;dd/ 0
}ee 
	EditorGUIgg 
.gg 
EndPropertygg !
(gg! "
)gg" #
;gg# $
}hh 	
}ii 
}jj ç'
åC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\DropdownEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Dropdown !
)! "
," #
true$ (
)( )
]) *
[ "
CanEditMultipleObjects 
] 
public 

class 
DropdownEditor 
:  !
SelectableEditor" 2
{ 
SerializedProperty 

m_Template %
;% &
SerializedProperty 
m_CaptionText (
;( )
SerializedProperty 
m_CaptionImage )
;) *
SerializedProperty 

m_ItemText %
;% &
SerializedProperty 
m_ItemImage &
;& '
SerializedProperty  
m_OnSelectionChanged /
;/ 0
SerializedProperty 
m_Value "
;" #
SerializedProperty 
	m_Options $
;$ %
SerializedProperty 
m_AlphaFadeSpeed +
;+ ,
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 

m_Template 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
m_CaptionText 
= 
serializedObject ,
., -
FindProperty- 9
(9 :
$str: I
)I J
;J K
m_CaptionImage 
= 
serializedObject -
.- .
FindProperty. :
(: ;
$str; K
)K L
;L M

m_ItemText 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
m_ItemImage 
= 
serializedObject *
.* +
FindProperty+ 7
(7 8
$str8 E
)E F
;F G 
m_OnSelectionChanged  
=! "
serializedObject# 3
.3 4
FindProperty4 @
(@ A
$strA S
)S T
;T U
m_Value   
=   
serializedObject   &
.  & '
FindProperty  ' 3
(  3 4
$str  4 =
)  = >
;  > ?
	m_Options!! 
=!! 
serializedObject!! (
.!!( )
FindProperty!!) 5
(!!5 6
$str!!6 A
)!!A B
;!!B C
m_AlphaFadeSpeed"" 
="" 
serializedObject"" /
.""/ 0
FindProperty""0 <
(""< =
$str""= O
)""O P
;""P Q
}## 	
public%% 
override%% 
void%% 
OnInspectorGUI%% +
(%%+ ,
)%%, -
{&& 	
base'' 
.'' 
OnInspectorGUI'' 
(''  
)''  !
;''! "
EditorGUILayout(( 
.(( 
Space(( !
(((! "
)((" #
;((# $
serializedObject** 
.** 
Update** #
(**# $
)**$ %
;**% &
EditorGUILayout++ 
.++ 
PropertyField++ )
(++) *

m_Template++* 4
)++4 5
;++5 6
EditorGUILayout,, 
.,, 
PropertyField,, )
(,,) *
m_CaptionText,,* 7
),,7 8
;,,8 9
EditorGUILayout-- 
.-- 
PropertyField-- )
(--) *
m_CaptionImage--* 8
)--8 9
;--9 :
EditorGUILayout.. 
... 
PropertyField.. )
(..) *

m_ItemText..* 4
)..4 5
;..5 6
EditorGUILayout// 
.// 
PropertyField// )
(//) *
m_ItemImage//* 5
)//5 6
;//6 7
EditorGUILayout00 
.00 
PropertyField00 )
(00) *
m_Value00* 1
)001 2
;002 3
EditorGUILayout11 
.11 
PropertyField11 )
(11) *
m_AlphaFadeSpeed11* :
)11: ;
;11; <
EditorGUILayout22 
.22 
PropertyField22 )
(22) *
	m_Options22* 3
)223 4
;224 5
EditorGUILayout33 
.33 
PropertyField33 )
(33) * 
m_OnSelectionChanged33* >
)33> ?
;33? @
serializedObject44 
.44 #
ApplyModifiedProperties44 4
(444 5
)445 6
;446 7
}55 	
}66 
}77 ‡
äC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ButtonEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Button 
)  
,  !
true" &
)& '
]' (
[ "
CanEditMultipleObjects 
] 
public 

class 
ButtonEditor 
: 
SelectableEditor  0
{ 
SerializedProperty 
m_OnClickProperty ,
;, -
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 
m_OnClickProperty 
= 
serializedObject  0
.0 1
FindProperty1 =
(= >
$str> I
)I J
;J K
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
base 
. 
OnInspectorGUI 
(  
)  !
;! "
EditorGUILayout 
. 
Space !
(! "
)" #
;# $
serializedObject 
. 
Update #
(# $
)$ %
;% &
EditorGUILayout 
. 
PropertyField )
() *
m_OnClickProperty* ;
); <
;< =
serializedObject 
. #
ApplyModifiedProperties 4
(4 5
)5 6
;6 7
} 	
} 
} ‚
ùC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\PhysicsRaycasterEditor.cs
	namespace 	
UnityEditor
 
. 
EventSystems "
{ 
[ 
CustomEditor 
( 
typeof 
( 
PhysicsRaycaster )
)) *
,* +
true, 0
)0 1
]1 2
public

 

class

 "
PhysicsRaycasterEditor

 '
:

( )
Editor

* 0
{ 
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
base 
. 
OnInspectorGUI 
(  
)  !
;! "
} 	
} 
} À
àC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\TextEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Text 
) 
, 
true  $
)$ %
]% &
[ "
CanEditMultipleObjects 
] 
public 

class 

TextEditor 
: 
GraphicEditor +
{ 
SerializedProperty 
m_Text !
;! "
SerializedProperty 

m_FontData %
;% &
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 
m_Text 
= 
serializedObject %
.% &
FindProperty& 2
(2 3
$str3 ;
); <
;< =

m_FontData 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
serializedObject 
. 
Update #
(# $
)$ %
;% &
EditorGUILayout 
. 
PropertyField )
() *
m_Text* 0
)0 1
;1 2
EditorGUILayout 
. 
PropertyField )
() *

m_FontData* 4
)4 5
;5 6!
AppearanceControlsGUI !
(! "
)" #
;# $
RaycastControlsGUI   
(   
)    
;    !
MaskableControlsGUI!! 
(!!  
)!!  !
;!!! "
serializedObject"" 
."" #
ApplyModifiedProperties"" 4
(""4 5
)""5 6
;""6 7
}## 	
}$$ 
}%% ù$
•C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\AnimationTriggersDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
AnimationTriggers! 2
)2 3
,3 4
true5 9
)9 :
]: ;
public

 

class

 #
AnimationTriggersDrawer

 (
:

) *
PropertyDrawer

+ 9
{ 
public 
override 
void 
OnGUI "
(" #
Rect# '
rect( ,
,, -
SerializedProperty. @
propA E
,E F

GUIContentG Q
labelR W
)W X
{ 	
Rect 
drawRect 
= 
rect  
;  !
drawRect 
. 
height 
= 
EditorGUIUtility .
.. /
singleLineHeight/ ?
;? @
SerializedProperty 
normalTrigger ,
=- .
prop/ 3
.3 4 
FindPropertyRelative4 H
(H I
$strI Z
)Z [
;[ \
SerializedProperty 
higlightedTrigger 0
=1 2
prop3 7
.7 8 
FindPropertyRelative8 L
(L M
$strM c
)c d
;d e
SerializedProperty 
pressedTrigger -
=. /
prop0 4
.4 5 
FindPropertyRelative5 I
(I J
$strJ \
)\ ]
;] ^
SerializedProperty 
selectedTrigger .
=/ 0
prop1 5
.5 6 
FindPropertyRelative6 J
(J K
$strK ^
)^ _
;_ `
SerializedProperty 
disabledTrigger .
=/ 0
prop1 5
.5 6 
FindPropertyRelative6 J
(J K
$strK ^
)^ _
;_ `
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
normalTrigger. ;
); <
;< =
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
higlightedTrigger. ?
)? @
;@ A
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
pressedTrigger. <
)< =
;= >
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
selectedTrigger. =
)= >
;> ?
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
disabledTrigger. =
)= >
;> ?
}   	
public"" 
override"" 
float"" 
GetPropertyHeight"" /
(""/ 0
SerializedProperty""0 B
prop""C G
,""G H

GUIContent""I S
label""T Y
)""Y Z
{## 	
return$$ 
$num$$ 
*$$ 
EditorGUIUtility$$ '
.$$' (
singleLineHeight$$( 8
+$$9 :
$num$$; <
*$$= >
EditorGUIUtility$$? O
.$$O P#
standardVerticalSpacing$$P g
;$$g h
}%% 	
}&& 
}'' ö\
ôC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\EventTriggerEditor.cs
	namespace 	
UnityEditor
 
. 
EventSystems "
{ 
[ 
CustomEditor 
( 
typeof 
( 
EventTrigger %
)% &
,& '
true( ,
), -
]- .
public 

class 
EventTriggerEditor #
:$ %
Editor& ,
{		 
SerializedProperty

 
m_DelegatesProperty

 .
;

. /

GUIContent 
m_IconToolbarMinus %
;% &

GUIContent 
m_EventIDName  
;  !

GUIContent 
[ 
] 
m_EventTypes !
;! "

GUIContent 
m_AddButonContent $
;$ %
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_DelegatesProperty 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ M
)M N
;N O
m_AddButonContent 
= 
EditorGUIUtility  0
.0 1
TrTextContent1 >
(> ?
$str? S
)S T
;T U
m_EventIDName 
= 
new 

GUIContent  *
(* +
$str+ -
)- .
;. /
m_IconToolbarMinus 
=  
new! $

GUIContent% /
(/ 0
EditorGUIUtility0 @
.@ A
IconContentA L
(L M
$strM \
)\ ]
)] ^
;^ _
m_IconToolbarMinus 
. 
tooltip &
=' (
$str) J
;J K
string 
[ 
] 

eventNames 
=  !
Enum" &
.& '
GetNames' /
(/ 0
typeof0 6
(6 7
EventTriggerType7 G
)G H
)H I
;I J
m_EventTypes 
= 
new 

GUIContent )
[) *

eventNames* 4
.4 5
Length5 ;
]; <
;< =
for 
( 
int 
i 
= 
$num 
; 
i 
< 

eventNames  *
.* +
Length+ 1
;1 2
++3 5
i5 6
)6 7
{ 
m_EventTypes 
[ 
i 
] 
=  !
new" %

GUIContent& 0
(0 1

eventNames1 ;
[; <
i< =
]= >
)> ?
;? @
} 
}   	
public"" 
override"" 
void"" 
OnInspectorGUI"" +
(""+ ,
)"", -
{## 	
serializedObject$$ 
.$$ 
Update$$ #
($$# $
)$$$ %
;$$% &
int%% 
toBeRemovedEntry%%  
=%%! "
-%%# $
$num%%$ %
;%%% &
EditorGUILayout'' 
.'' 
Space'' !
(''! "
)''" #
;''# $
Vector2)) 
removeButtonSize)) $
=))% &
GUIStyle))' /
.))/ 0
none))0 4
.))4 5
CalcSize))5 =
())= >
m_IconToolbarMinus))> P
)))P Q
;))Q R
for++ 
(++ 
int++ 
i++ 
=++ 
$num++ 
;++ 
i++ 
<++ 
m_DelegatesProperty++  3
.++3 4
	arraySize++4 =
;++= >
++++? A
i++A B
)++B C
{,, 
SerializedProperty-- "
delegateProperty--# 3
=--4 5
m_DelegatesProperty--6 I
.--I J"
GetArrayElementAtIndex--J `
(--` a
i--a b
)--b c
;--c d
SerializedProperty.. "
eventProperty..# 0
=..1 2
delegateProperty..3 C
...C D 
FindPropertyRelative..D X
(..X Y
$str..Y b
)..b c
;..c d
SerializedProperty// "
callbacksProperty//# 4
=//5 6
delegateProperty//7 G
.//G H 
FindPropertyRelative//H \
(//\ ]
$str//] g
)//g h
;//h i
m_EventIDName00 
.00 
text00 "
=00# $
eventProperty00% 2
.002 3
enumDisplayNames003 C
[00C D
eventProperty00D Q
.00Q R
enumValueIndex00R `
]00` a
;00a b
EditorGUILayout22 
.22  
PropertyField22  -
(22- .
callbacksProperty22. ?
,22? @
m_EventIDName22A N
)22N O
;22O P
Rect33 
callbackRect33 !
=33" #
GUILayoutUtility33$ 4
.334 5
GetLastRect335 @
(33@ A
)33A B
;33B C
Rect55 
removeButtonPos55 $
=55% &
new55' *
Rect55+ /
(55/ 0
callbackRect550 <
.55< =
xMax55= A
-55B C
removeButtonSize55D T
.55T U
x55U V
-55W X
$num55Y Z
,55Z [
callbackRect55\ h
.55h i
y55i j
+55k l
$num55m n
,55n o
removeButtonSize	55p Ä
.
55Ä Å
x
55Å Ç
,
55Ç É
removeButtonSize
55Ñ î
.
55î ï
y
55ï ñ
)
55ñ ó
;
55ó ò
if66 
(66 
GUI66 
.66 
Button66 
(66 
removeButtonPos66 .
,66. /
m_IconToolbarMinus660 B
,66B C
GUIStyle66D L
.66L M
none66M Q
)66Q R
)66R S
{77 
toBeRemovedEntry88 $
=88% &
i88' (
;88( )
}99 
EditorGUILayout;; 
.;;  
Space;;  %
(;;% &
);;& '
;;;' (
}<< 
if>> 
(>> 
toBeRemovedEntry>>  
>>>! "
->># $
$num>>$ %
)>>% &
{?? 
RemoveEntry@@ 
(@@ 
toBeRemovedEntry@@ ,
)@@, -
;@@- .
}AA 
RectCC 

btPositionCC 
=CC 
GUILayoutUtilityCC .
.CC. /
GetRectCC/ 6
(CC6 7
m_AddButonContentCC7 H
,CCH I
GUICCJ M
.CCM N
skinCCN R
.CCR S
buttonCCS Y
)CCY Z
;CCZ [
constDD 
floatDD 
addButonWidthDD %
=DD& '
$numDD( ,
;DD, -

btPositionEE 
.EE 
xEE 
=EE 

btPositionEE %
.EE% &
xEE& '
+EE( )
(EE* +

btPositionEE+ 5
.EE5 6
widthEE6 ;
-EE< =
addButonWidthEE> K
)EEK L
/EEM N
$numEEO P
;EEP Q

btPositionFF 
.FF 
widthFF 
=FF 
addButonWidthFF ,
;FF, -
ifGG 
(GG 
GUIGG 
.GG 
ButtonGG 
(GG 

btPositionGG %
,GG% &
m_AddButonContentGG' 8
)GG8 9
)GG9 :
{HH 
ShowAddTriggermenuII "
(II" #
)II# $
;II$ %
}JJ 
serializedObjectLL 
.LL #
ApplyModifiedPropertiesLL 4
(LL4 5
)LL5 6
;LL6 7
}MM 	
privateOO 
voidOO 
RemoveEntryOO  
(OO  !
intOO! $
toBeRemovedEntryOO% 5
)OO5 6
{PP 	
m_DelegatesPropertyQQ 
.QQ  %
DeleteArrayElementAtIndexQQ  9
(QQ9 :
toBeRemovedEntryQQ: J
)QQJ K
;QQK L
}RR 	
voidTT 
ShowAddTriggermenuTT 
(TT  
)TT  !
{UU 	
GenericMenuWW 
menuWW 
=WW 
newWW "
GenericMenuWW# .
(WW. /
)WW/ 0
;WW0 1
forXX 
(XX 
intXX 
iXX 
=XX 
$numXX 
;XX 
iXX 
<XX 
m_EventTypesXX  ,
.XX, -
LengthXX- 3
;XX3 4
++XX5 7
iXX7 8
)XX8 9
{YY 
boolZZ 
activeZZ 
=ZZ 
trueZZ "
;ZZ" #
for]] 
(]] 
int]] 
p]] 
=]] 
$num]] 
;]] 
p]]  !
<]]" #
m_DelegatesProperty]]$ 7
.]]7 8
	arraySize]]8 A
;]]A B
++]]C E
p]]E F
)]]F G
{^^ 
SerializedProperty__ &
delegateEntry__' 4
=__5 6
m_DelegatesProperty__7 J
.__J K"
GetArrayElementAtIndex__K a
(__a b
p__b c
)__c d
;__d e
SerializedProperty`` &
eventProperty``' 4
=``5 6
delegateEntry``7 D
.``D E 
FindPropertyRelative``E Y
(``Y Z
$str``Z c
)``c d
;``d e
ifaa 
(aa 
eventPropertyaa %
.aa% &
enumValueIndexaa& 4
==aa5 7
iaa8 9
)aa9 :
{bb 
activecc 
=cc  
falsecc! &
;cc& '
}dd 
}ee 
ifff 
(ff 
activeff 
)ff 
menugg 
.gg 
AddItemgg  
(gg  !
m_EventTypesgg! -
[gg- .
igg. /
]gg/ 0
,gg0 1
falsegg2 7
,gg7 8
OnAddNewSelectedgg9 I
,ggI J
iggK L
)ggL M
;ggM N
elsehh 
menuii 
.ii 
AddDisabledItemii (
(ii( )
m_EventTypesii) 5
[ii5 6
iii6 7
]ii7 8
)ii8 9
;ii9 :
}jj 
menukk 
.kk 
ShowAsContextkk 
(kk 
)kk  
;kk  !
Eventll 
.ll 
currentll 
.ll 
Usell 
(ll 
)ll 
;ll  
}mm 	
privateoo 
voidoo 
OnAddNewSelectedoo %
(oo% &
objectoo& ,
indexoo- 2
)oo2 3
{pp 	
intqq 
selectedqq 
=qq 
(qq 
intqq 
)qq  
indexqq  %
;qq% &
m_DelegatesPropertyss 
.ss  
	arraySizess  )
+=ss* ,
$numss- .
;ss. /
SerializedPropertytt 
delegateEntrytt ,
=tt- .
m_DelegatesPropertytt/ B
.ttB C"
GetArrayElementAtIndexttC Y
(ttY Z
m_DelegatesPropertyttZ m
.ttm n
	arraySizettn w
-ttx y
$numttz {
)tt{ |
;tt| }
SerializedPropertyuu 
eventPropertyuu ,
=uu- .
delegateEntryuu/ <
.uu< = 
FindPropertyRelativeuu= Q
(uuQ R
$struuR [
)uu[ \
;uu\ ]
eventPropertyvv 
.vv 
enumValueIndexvv (
=vv) *
selectedvv+ 3
;vv3 4
serializedObjectww 
.ww #
ApplyModifiedPropertiesww 4
(ww4 5
)ww5 6
;ww6 7
}xx 	
}yy 
}zz —[
£C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\HorizontalOrVerticalLayoutGroupEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( +
HorizontalOrVerticalLayoutGroup 8
)8 9
,9 :
true; ?
)? @
]@ A
[		 "
CanEditMultipleObjects		 
]		 
public 

class 1
%HorizontalOrVerticalLayoutGroupEditor 6
:7 8
Editor9 ?
{ 
SerializedProperty 
	m_Padding $
;$ %
SerializedProperty 
	m_Spacing $
;$ %
SerializedProperty 
m_ChildAlignment +
;+ ,
SerializedProperty 
m_ChildControlWidth .
;. /
SerializedProperty  
m_ChildControlHeight /
;/ 0
SerializedProperty 
m_ChildScaleWidth ,
;, -
SerializedProperty 
m_ChildScaleHeight -
;- .
SerializedProperty #
m_ChildForceExpandWidth 2
;2 3
SerializedProperty $
m_ChildForceExpandHeight 3
;3 4
SerializedProperty  
m_ReverseArrangement /
;/ 0
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
	m_Padding 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 A
)A B
;B C
	m_Spacing 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 A
)A B
;B C
m_ChildAlignment 
= 
serializedObject /
./ 0
FindProperty0 <
(< =
$str= O
)O P
;P Q
m_ChildControlWidth   
=    !
serializedObject  " 2
.  2 3
FindProperty  3 ?
(  ? @
$str  @ U
)  U V
;  V W 
m_ChildControlHeight!!  
=!!! "
serializedObject!!# 3
.!!3 4
FindProperty!!4 @
(!!@ A
$str!!A W
)!!W X
;!!X Y
m_ChildScaleWidth"" 
="" 
serializedObject""  0
.""0 1
FindProperty""1 =
(""= >
$str""> Q
)""Q R
;""R S
m_ChildScaleHeight## 
=##  
serializedObject##! 1
.##1 2
FindProperty##2 >
(##> ?
$str##? S
)##S T
;##T U#
m_ChildForceExpandWidth$$ #
=$$$ %
serializedObject$$& 6
.$$6 7
FindProperty$$7 C
($$C D
$str$$D ]
)$$] ^
;$$^ _$
m_ChildForceExpandHeight%% $
=%%% &
serializedObject%%' 7
.%%7 8
FindProperty%%8 D
(%%D E
$str%%E _
)%%_ `
;%%` a 
m_ReverseArrangement&&  
=&&! "
serializedObject&&# 3
.&&3 4
FindProperty&&4 @
(&&@ A
$str&&A W
)&&W X
;&&X Y
}'' 	
public)) 
override)) 
void)) 
OnInspectorGUI)) +
())+ ,
))), -
{** 	
serializedObject++ 
.++ 
Update++ #
(++# $
)++$ %
;++% &
EditorGUILayout,, 
.,, 
PropertyField,, )
(,,) *
	m_Padding,,* 3
,,,3 4
true,,5 9
),,9 :
;,,: ;
EditorGUILayout-- 
.-- 
PropertyField-- )
(--) *
	m_Spacing--* 3
,--3 4
true--5 9
)--9 :
;--: ;
EditorGUILayout.. 
... 
PropertyField.. )
(..) *
m_ChildAlignment..* :
,..: ;
true..< @
)..@ A
;..A B
EditorGUILayout// 
.// 
PropertyField// )
(//) * 
m_ReverseArrangement//* >
,//> ?
true//@ D
)//D E
;//E F
Rect11 
rect11 
=11 
EditorGUILayout11 '
.11' (
GetControlRect11( 6
(116 7
)117 8
;118 9
rect22 
=22 
	EditorGUI22 
.22 
PrefixLabel22 (
(22( )
rect22) -
,22- .
-22/ 0
$num220 1
,221 2
EditorGUIUtility223 C
.22C D
TrTextContent22D Q
(22Q R
$str22R f
)22f g
)22g h
;22h i
rect33 
.33 
width33 
=33 
Mathf33 
.33 
Max33 "
(33" #
$num33# %
,33% &
(33' (
rect33( ,
.33, -
width33- 2
-333 4
$num335 6
)336 7
/338 9
$num33: ;
)33; <
;33< =
EditorGUIUtility44 
.44 

labelWidth44 '
=44( )
$num44* ,
;44, -

ToggleLeft55 
(55 
rect55 
,55 
m_ChildControlWidth55 0
,550 1
EditorGUIUtility552 B
.55B C
TrTextContent55C P
(55P Q
$str55Q X
)55X Y
)55Y Z
;55Z [
rect66 
.66 
x66 
+=66 
rect66 
.66 
width66  
+66! "
$num66# $
;66$ %

ToggleLeft77 
(77 
rect77 
,77  
m_ChildControlHeight77 1
,771 2
EditorGUIUtility773 C
.77C D
TrTextContent77D Q
(77Q R
$str77R Z
)77Z [
)77[ \
;77\ ]
EditorGUIUtility88 
.88 

labelWidth88 '
=88( )
$num88* +
;88+ ,
rect:: 
=:: 
EditorGUILayout:: "
.::" #
GetControlRect::# 1
(::1 2
)::2 3
;::3 4
rect;; 
=;; 
	EditorGUI;; 
.;; 
PrefixLabel;; (
(;;( )
rect;;) -
,;;- .
-;;/ 0
$num;;0 1
,;;1 2
EditorGUIUtility;;3 C
.;;C D
TrTextContent;;D Q
(;;Q R
$str;;R c
);;c d
);;d e
;;;e f
rect<< 
.<< 
width<< 
=<< 
Mathf<< 
.<< 
Max<< "
(<<" #
$num<<# %
,<<% &
(<<' (
rect<<( ,
.<<, -
width<<- 2
-<<3 4
$num<<5 6
)<<6 7
/<<8 9
$num<<: ;
)<<; <
;<<< =
EditorGUIUtility== 
.== 

labelWidth== '
===( )
$num==* ,
;==, -

ToggleLeft>> 
(>> 
rect>> 
,>> 
m_ChildScaleWidth>> .
,>>. /
EditorGUIUtility>>0 @
.>>@ A
TrTextContent>>A N
(>>N O
$str>>O V
)>>V W
)>>W X
;>>X Y
rect?? 
.?? 
x?? 
+=?? 
rect?? 
.?? 
width??  
+??! "
$num??# $
;??$ %

ToggleLeft@@ 
(@@ 
rect@@ 
,@@ 
m_ChildScaleHeight@@ /
,@@/ 0
EditorGUIUtility@@1 A
.@@A B
TrTextContent@@B O
(@@O P
$str@@P X
)@@X Y
)@@Y Z
;@@Z [
EditorGUIUtilityAA 
.AA 

labelWidthAA '
=AA( )
$numAA* +
;AA+ ,
rectCC 
=CC 
EditorGUILayoutCC "
.CC" #
GetControlRectCC# 1
(CC1 2
)CC2 3
;CC3 4
rectDD 
=DD 
	EditorGUIDD 
.DD 
PrefixLabelDD (
(DD( )
rectDD) -
,DD- .
-DD/ 0
$numDD0 1
,DD1 2
EditorGUIUtilityDD3 C
.DDC D
TrTextContentDDD Q
(DDQ R
$strDDR f
)DDf g
)DDg h
;DDh i
rectEE 
.EE 
widthEE 
=EE 
MathfEE 
.EE 
MaxEE "
(EE" #
$numEE# %
,EE% &
(EE' (
rectEE( ,
.EE, -
widthEE- 2
-EE3 4
$numEE5 6
)EE6 7
/EE8 9
$numEE: ;
)EE; <
;EE< =
EditorGUIUtilityFF 
.FF 

labelWidthFF '
=FF( )
$numFF* ,
;FF, -

ToggleLeftGG 
(GG 
rectGG 
,GG #
m_ChildForceExpandWidthGG 4
,GG4 5
EditorGUIUtilityGG6 F
.GGF G
TrTextContentGGG T
(GGT U
$strGGU \
)GG\ ]
)GG] ^
;GG^ _
rectHH 
.HH 
xHH 
+=HH 
rectHH 
.HH 
widthHH  
+HH! "
$numHH# $
;HH$ %

ToggleLeftII 
(II 
rectII 
,II $
m_ChildForceExpandHeightII 5
,II5 6
EditorGUIUtilityII7 G
.IIG H
TrTextContentIIH U
(IIU V
$strIIV ^
)II^ _
)II_ `
;II` a
EditorGUIUtilityJJ 
.JJ 

labelWidthJJ '
=JJ( )
$numJJ* +
;JJ+ ,
serializedObjectLL 
.LL #
ApplyModifiedPropertiesLL 4
(LL4 5
)LL5 6
;LL6 7
}MM 	
voidOO 

ToggleLeftOO 
(OO 
RectOO 
positionOO %
,OO% &
SerializedPropertyOO' 9
propertyOO: B
,OOB C

GUIContentOOD N
labelOOO T
)OOT U
{PP 	
boolQQ 
toggleQQ 
=QQ 
propertyQQ "
.QQ" #
	boolValueQQ# ,
;QQ, -
	EditorGUIRR 
.RR 
showMixedValueRR $
=RR% &
propertyRR' /
.RR/ 0&
hasMultipleDifferentValuesRR0 J
;RRJ K
	EditorGUISS 
.SS 
BeginChangeCheckSS &
(SS& '
)SS' (
;SS( )
intTT 
	oldIndentTT 
=TT 
	EditorGUITT %
.TT% &
indentLevelTT& 1
;TT1 2
	EditorGUIUU 
.UU 
indentLevelUU !
=UU" #
$numUU$ %
;UU% &
toggleVV 
=VV 
	EditorGUIVV 
.VV 

ToggleLeftVV )
(VV) *
positionVV* 2
,VV2 3
labelVV4 9
,VV9 :
toggleVV; A
)VVA B
;VVB C
	EditorGUIWW 
.WW 
indentLevelWW !
=WW" #
	oldIndentWW$ -
;WW- .
ifXX 
(XX 
	EditorGUIXX 
.XX 
EndChangeCheckXX (
(XX( )
)XX) *
)XX* +
{YY 
propertyZZ 
.ZZ 
	boolValueZZ "
=ZZ# $
propertyZZ% -
.ZZ- .&
hasMultipleDifferentValuesZZ. H
?ZZI J
trueZZK O
:ZZP Q
!ZZR S
propertyZZS [
.ZZ[ \
	boolValueZZ\ e
;ZZe f
}[[ 
	EditorGUI\\ 
.\\ 
showMixedValue\\ $
=\\% &
false\\' ,
;\\, -
}]] 	
}^^ 
}__ ç;
åC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\RawImageEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
RawImage !
)! "
," #
true$ (
)( )
]) *
[ "
CanEditMultipleObjects 
] 
public 

class 
RawImageEditor 
:  !
GraphicEditor" /
{ 
SerializedProperty 
	m_Texture $
;$ %
SerializedProperty 
m_UVRect #
;# $

GUIContent 
m_UVRectContent "
;" #
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 
m_UVRectContent 
=  !
EditorGUIUtility" 2
.2 3
TrTextContent3 @
(@ A
$strA J
)J K
;K L
	m_Texture 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ K
)K L
;L M
m_UVRect 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ J
)J K
;K L
SetShowNativeSize 
( 
true "
)" #
;# $
} 	
public!! 
override!! 
void!! 
OnInspectorGUI!! +
(!!+ ,
)!!, -
{"" 	
serializedObject## 
.## 
Update## #
(### $
)##$ %
;##% &
EditorGUILayout%% 
.%% 
PropertyField%% )
(%%) *
	m_Texture%%* 3
)%%3 4
;%%4 5!
AppearanceControlsGUI'' !
(''! "
)''" #
;''# $
RaycastControlsGUI(( 
((( 
)((  
;((  !
MaskableControlsGUI)) 
())  
)))  !
;))! "
EditorGUILayout** 
.** 
PropertyField** )
(**) *
m_UVRect*** 2
,**2 3
m_UVRectContent**4 C
)**C D
;**D E
SetShowNativeSize++ 
(++ 
false++ #
)++# $
;++$ %
NativeSizeButtonGUI,, 
(,,  
),,  !
;,,! "
serializedObject.. 
... #
ApplyModifiedProperties.. 4
(..4 5
)..5 6
;..6 7
}// 	
void11 
SetShowNativeSize11 
(11 
bool11 #
instant11$ +
)11+ ,
{22 	
base33 
.33 
SetShowNativeSize33 "
(33" #
	m_Texture33# ,
.33, - 
objectReferenceValue33- A
!=33B D
null33E I
,33I J
instant33K R
)33R S
;33S T
}44 	
private66 
static66 
Rect66 
Outer66 !
(66! "
RawImage66" *
rawImage66+ 3
)663 4
{77 	
Rect88 
outer88 
=88 
rawImage88 !
.88! "
uvRect88" (
;88( )
outer99 
.99 
xMin99 
*=99 
rawImage99 "
.99" #
rectTransform99# 0
.990 1
rect991 5
.995 6
width996 ;
;99; <
outer:: 
.:: 
xMax:: 
*=:: 
rawImage:: "
.::" #
rectTransform::# 0
.::0 1
rect::1 5
.::5 6
width::6 ;
;::; <
outer;; 
.;; 
yMin;; 
*=;; 
rawImage;; "
.;;" #
rectTransform;;# 0
.;;0 1
rect;;1 5
.;;5 6
height;;6 <
;;;< =
outer<< 
.<< 
yMax<< 
*=<< 
rawImage<< "
.<<" #
rectTransform<<# 0
.<<0 1
rect<<1 5
.<<5 6
height<<6 <
;<<< =
return== 
outer== 
;== 
}>> 	
publicDD 
overrideDD 
boolDD 
HasPreviewGUIDD *
(DD* +
)DD+ ,
{EE 	
RawImageFF 
rawImageFF 
=FF 
targetFF  &
asFF' )
RawImageFF* 2
;FF2 3
ifGG 
(GG 
rawImageGG 
==GG 
nullGG  
)GG  !
returnHH 
falseHH 
;HH 
varJJ 
outerJJ 
=JJ 
OuterJJ 
(JJ 
rawImageJJ &
)JJ& '
;JJ' (
returnKK 
outerKK 
.KK 
widthKK 
>KK  
$numKK! "
&&KK# %
outerKK& +
.KK+ ,
heightKK, 2
>KK3 4
$numKK5 6
;KK6 7
}LL 	
publicRR 
overrideRR 
voidRR 
OnPreviewGUIRR )
(RR) *
RectRR* .
rectRR/ 3
,RR3 4
GUIStyleRR5 =

backgroundRR> H
)RRH I
{SS 	
RawImageTT 
rawImageTT 
=TT 
targetTT  &
asTT' )
RawImageTT* 2
;TT2 3
TextureUU 
texUU 
=UU 
rawImageUU "
.UU" #
mainTextureUU# .
;UU. /
ifWW 
(WW 
texWW 
==WW 
nullWW 
)WW 
returnXX 
;XX 
varZZ 
outerZZ 
=ZZ 
OuterZZ 
(ZZ 
rawImageZZ &
)ZZ& '
;ZZ' (
SpriteDrawUtility[[ 
.[[ 

DrawSprite[[ (
([[( )
tex[[) ,
,[[, -
rect[[. 2
,[[2 3
outer[[4 9
,[[9 :
rawImage[[; C
.[[C D
uvRect[[D J
,[[J K
rawImage[[L T
.[[T U
canvasRenderer[[U c
.[[c d
GetColor[[d l
([[l m
)[[m n
)[[n o
;[[o p
}\\ 	
publicbb 
overridebb 
stringbb 
GetInfoStringbb ,
(bb, -
)bb- .
{cc 	
RawImagedd 
rawImagedd 
=dd 
targetdd  &
asdd' )
RawImagedd* 2
;dd2 3
stringgg 
textgg 
=gg 
stringgg  
.gg  !
Formatgg! '
(gg' (
$strgg( @
,gg@ A
Mathfhh 
.hh 

RoundToInthh  
(hh  !
Mathfhh! &
.hh& '
Abshh' *
(hh* +
rawImagehh+ 3
.hh3 4
rectTransformhh4 A
.hhA B
recthhB F
.hhF G
widthhhG L
)hhL M
)hhM N
,hhN O
Mathfii 
.ii 

RoundToIntii  
(ii  !
Mathfii! &
.ii& '
Absii' *
(ii* +
rawImageii+ 3
.ii3 4
rectTransformii4 A
.iiA B
rectiiB F
.iiF G
heightiiG M
)iiM N
)iiN O
)iiO P
;iiP Q
returnkk 
textkk 
;kk 
}ll 	
}mm 
}nn Ë*
éC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\RectMask2DEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 

RectMask2D #
)# $
,$ %
true& *
)* +
]+ ,
[ "
CanEditMultipleObjects 
] 
public 

class 
RectMask2DEditor !
:" #
Editor$ *
{ 
SerializedProperty 
	m_Padding $
;$ %
SerializedProperty 

m_Softness %
;% &

GUIContent 
m_PaddingContent #
;# $

GUIContent 
m_LeftContent  
;  !

GUIContent 
m_RightContent !
;! "

GUIContent 
m_TopContent 
;  

GUIContent 
m_BottomContent "
;" #
static 
private 
bool 
m_ShowOffsets )
=* +
false, 1
;1 2
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_PaddingContent 
= 
EditorGUIUtility /
./ 0
TrTextContent0 =
(= >
$str> G
)G H
;H I
m_LeftContent 
= 
EditorGUIUtility ,
., -
TrTextContent- :
(: ;
$str; A
)A B
;B C
m_RightContent 
= 
EditorGUIUtility -
.- .
TrTextContent. ;
(; <
$str< C
)C D
;D E
m_TopContent 
= 
EditorGUIUtility +
.+ ,
TrTextContent, 9
(9 :
$str: ?
)? @
;@ A
m_BottomContent 
= 
EditorGUIUtility .
.. /
TrTextContent/ <
(< =
$str= E
)E F
;F G
	m_Padding 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 A
)A B
;B C

m_Softness   
=   
serializedObject   )
.  ) *
FindProperty  * 6
(  6 7
$str  7 C
)  C D
;  D E
}!! 	
public## 
override## 
void## 
OnInspectorGUI## +
(##+ ,
)##, -
{$$ 	
m_ShowOffsets%% 
=%% 
EditorGUILayout%% +
.%%+ ,
Foldout%%, 3
(%%3 4
m_ShowOffsets%%4 A
,%%A B
m_PaddingContent%%C S
,%%S T
true%%U Y
)%%Y Z
;%%Z [
if'' 
('' 
m_ShowOffsets'' 
)'' 
	OffsetGUI(( 
((( 
)(( 
;(( 
EditorGUILayout** 
.** 
PropertyField** )
(**) *

m_Softness*** 4
)**4 5
;**5 6
serializedObject,, 
.,, #
ApplyModifiedProperties,, 4
(,,4 5
),,5 6
;,,6 7
}-- 	
void// 
	OffsetGUI// 
(// 
)// 
{00 	
using11 
(11 
var11 
check11 
=11 
new11 "
	EditorGUI11# ,
.11, -
ChangeCheckScope11- =
(11= >
)11> ?
)11? @
{22 
	EditorGUI33 
.33 
indentLevel33 %
++33% '
;33' (
Vector444 

newPadding44 "
=44# $
	m_Padding44% .
.44. /
vector4Value44/ ;
;44; <

newPadding66 
.66 
x66 
=66 
EditorGUILayout66 .
.66. /

FloatField66/ 9
(669 :
m_LeftContent66: G
,66G H

newPadding66I S
.66S T
x66T U
)66U V
;66V W

newPadding77 
.77 
z77 
=77 
EditorGUILayout77 .
.77. /

FloatField77/ 9
(779 :
m_RightContent77: H
,77H I

newPadding77J T
.77T U
z77U V
)77V W
;77W X

newPadding88 
.88 
w88 
=88 
EditorGUILayout88 .
.88. /

FloatField88/ 9
(889 :
m_TopContent88: F
,88F G

newPadding88H R
.88R S
w88S T
)88T U
;88U V

newPadding99 
.99 
y99 
=99 
EditorGUILayout99 .
.99. /

FloatField99/ 9
(999 :
m_BottomContent99: I
,99I J

newPadding99K U
.99U V
y99V W
)99W X
;99X Y
if;; 
(;; 
check;; 
.;; 
changed;; !
);;! "
{<< 
	m_Padding== 
.== 
vector4Value== *
===+ ,

newPadding==- 7
;==7 8
}>> 
	EditorGUI?? 
.?? 
indentLevel?? %
--??% '
;??' (
}@@ 
}AA 	
}BB 
}CC ˘
ïC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ContentSizeFitterEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
ContentSizeFitter *
)* +
,+ ,
true- 1
)1 2
]2 3
[ "
CanEditMultipleObjects 
] 
public 

class #
ContentSizeFitterEditor (
:) * 
SelfControllerEditor+ ?
{ 
SerializedProperty 
m_HorizontalFit *
;* +
SerializedProperty 
m_VerticalFit (
;( )
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_HorizontalFit 
= 
serializedObject .
.. /
FindProperty/ ;
(; <
$str< M
)M N
;N O
m_VerticalFit 
= 
serializedObject ,
., -
FindProperty- 9
(9 :
$str: I
)I J
;J K
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
serializedObject 
. 
Update #
(# $
)$ %
;% &
EditorGUILayout 
. 
PropertyField )
() *
m_HorizontalFit* 9
,9 :
true; ?
)? @
;@ A
EditorGUILayout 
. 
PropertyField )
() *
m_VerticalFit* 7
,7 8
true9 =
)= >
;> ?
serializedObject 
. #
ApplyModifiedProperties 4
(4 5
)5 6
;6 7
base 
. 
OnInspectorGUI 
(  
)  !
;! "
} 	
}   
}!! ˚
íC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SelfControllerEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
public		 

class		  
SelfControllerEditor		 %
:		& '
Editor		( .
{

 
static 
string 
	s_Warning 
=  !
$str	" ∫
;
∫ ª
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
bool 
anyHaveLayoutParent $
=% &
false' ,
;, -
for 
( 
int 
i 
= 
$num 
; 
i 
< 
targets  '
.' (
Length( .
;. /
i0 1
++1 3
)3 4
{ 
	Component 
comp 
=  
(! "
targets" )
[) *
i* +
]+ ,
as- /
	Component0 9
)9 :
;: ;
ILayoutIgnorer 
ignorer &
=' (
comp) -
.- .
GetComponent. :
(: ;
typeof; A
(A B
ILayoutIgnorerB P
)P Q
)Q R
asS U
ILayoutIgnorerV d
;d e
if 
( 
ignorer 
!= 
null #
&&$ &
ignorer' .
.. /
ignoreLayout/ ;
); <
continue 
; 
RectTransform 
parent $
=% &
comp' +
.+ ,
	transform, 5
.5 6
parent6 <
as= ?
RectTransform@ M
;M N
if 
( 
parent 
!= 
null "
)" #
{ 
	Behaviour 
layoutGroup )
=* +
parent, 2
.2 3
GetComponent3 ?
(? @
typeof@ F
(F G
ILayoutGroupG S
)S T
)T U
asV X
	BehaviourY b
;b c
if 
( 
layoutGroup #
!=$ &
null' +
&&, .
layoutGroup/ :
.: ;
enabled; B
)B C
{ 
anyHaveLayoutParent +
=, -
true. 2
;2 3
break 
; 
} 
}   
}!! 
if"" 
("" 
anyHaveLayoutParent"" #
)""# $
EditorGUILayout## 
.##  
HelpBox##  '
(##' (
string##( .
.##. /
Format##/ 5
(##5 6
	s_Warning##6 ?
,##? @
ObjectNames##A L
.##L M
NicifyVariableName##M _
(##_ `
target##` f
.##f g
GetType##g n
(##n o
)##o p
.##p q
Name##q u
)##u v
)##v w
,##w x
MessageType	##y Ñ
.
##Ñ Ö
Warning
##Ö å
)
##å ç
;
##ç é
}$$ 	
}%% 
}&& ≠
àC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\MaskEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Mask 
) 
, 
true  $
)$ %
]% &
[ "
CanEditMultipleObjects 
] 
public 

class 

MaskEditor 
: 
Editor $
{ 
SerializedProperty 
m_ShowMaskGraphic ,
;, -
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_ShowMaskGraphic 
= 
serializedObject  0
.0 1
FindProperty1 =
(= >
$str> Q
)Q R
;R S
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
var 
graphic 
= 
( 
target !
as" $
Mask% )
)) *
.* +
GetComponent+ 7
<7 8
Graphic8 ?
>? @
(@ A
)A B
;B C
if 
( 
graphic 
&& 
! 
graphic #
.# $
IsActive$ ,
(, -
)- .
). /
EditorGUILayout 
.  
HelpBox  '
(' (
$str( c
,c d
MessageTypee p
.p q
Warningq x
)x y
;y z
serializedObject 
. 
Update #
(# $
)$ %
;% &
EditorGUILayout 
. 
PropertyField )
() *
m_ShowMaskGraphic* ;
); <
;< =
serializedObject 
. #
ApplyModifiedProperties 4
(4 5
)5 6
;6 7
} 	
} 
}   ‡-
ûC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\ColorBlockDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !

ColorBlock! +
)+ ,
,, -
true. 2
)2 3
]3 4
public

 

class

 
ColorBlockDrawer

 !
:

" #
PropertyDrawer

$ 2
{ 
public 
override 
void 
OnGUI "
(" #
Rect# '
rect( ,
,, -
SerializedProperty. @
propA E
,E F

GUIContentG Q
labelR W
)W X
{ 	
Rect 
drawRect 
= 
rect  
;  !
drawRect 
. 
height 
= 
EditorGUIUtility .
.. /
singleLineHeight/ ?
;? @
SerializedProperty 
normalColor *
=+ ,
prop- 1
.1 2 
FindPropertyRelative2 F
(F G
$strG V
)V W
;W X
SerializedProperty 
highlighted *
=+ ,
prop- 1
.1 2 
FindPropertyRelative2 F
(F G
$strG [
)[ \
;\ ]
SerializedProperty 
pressedColor +
=, -
prop. 2
.2 3 
FindPropertyRelative3 G
(G H
$strH X
)X Y
;Y Z
SerializedProperty 
selectedColor ,
=- .
prop/ 3
.3 4 
FindPropertyRelative4 H
(H I
$strI Z
)Z [
;[ \
SerializedProperty 
disabledColor ,
=- .
prop/ 3
.3 4 
FindPropertyRelative4 H
(H I
$strI Z
)Z [
;[ \
SerializedProperty 
colorMultiplier .
=/ 0
prop1 5
.5 6 
FindPropertyRelative6 J
(J K
$strK ^
)^ _
;_ `
SerializedProperty 
fadeDuration +
=, -
prop. 2
.2 3 
FindPropertyRelative3 G
(G H
$strH X
)X Y
;Y Z
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
normalColor. 9
)9 :
;: ;
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
highlighted. 9
)9 :
;: ;
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
pressedColor. :
): ;
;; <
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
selectedColor. ;
); <
;< =
drawRect   
.   
y   
+=   
EditorGUIUtility   *
.  * +
singleLineHeight  + ;
+  < =
EditorGUIUtility  > N
.  N O#
standardVerticalSpacing  O f
;  f g
	EditorGUI!! 
.!! 
PropertyField!! #
(!!# $
drawRect!!$ ,
,!!, -
disabledColor!!. ;
)!!; <
;!!< =
drawRect"" 
."" 
y"" 
+="" 
EditorGUIUtility"" *
.""* +
singleLineHeight""+ ;
+""< =
EditorGUIUtility""> N
.""N O#
standardVerticalSpacing""O f
;""f g
	EditorGUI## 
.## 
PropertyField## #
(### $
drawRect##$ ,
,##, -
colorMultiplier##. =
)##= >
;##> ?
drawRect$$ 
.$$ 
y$$ 
+=$$ 
EditorGUIUtility$$ *
.$$* +
singleLineHeight$$+ ;
+$$< =
EditorGUIUtility$$> N
.$$N O#
standardVerticalSpacing$$O f
;$$f g
	EditorGUI%% 
.%% 
PropertyField%% #
(%%# $
drawRect%%$ ,
,%%, -
fadeDuration%%. :
)%%: ;
;%%; <
}&& 	
public(( 
override(( 
float(( 
GetPropertyHeight(( /
(((/ 0
SerializedProperty((0 B
prop((C G
,((G H

GUIContent((I S
label((T Y
)((Y Z
{)) 	
return** 
$num** 
*** 
EditorGUIUtility** '
.**' (
singleLineHeight**( 8
+**9 :
$num**; <
***= >
EditorGUIUtility**? O
.**O P#
standardVerticalSpacing**P g
;**g h
}++ 	
},, 
}-- ¬÷
ñC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\InterceptedEventsPreview.cs
	namespace		 	
UnityEditor		
 
.		 
Events		 
{

 
[ 
CustomPreview 
( 
typeof 
( 

GameObject $
)$ %
)% &
]& '
class 	$
InterceptedEventsPreview
 "
:# $
ObjectPreview% 2
{ 
	protected 
class &
ComponentInterceptedEvents 2
{ 	
public 

GUIContent 
componentName +
;+ ,
public 
int 
[ 
] 
interceptedEvents *
;* +
} 	
class 
Styles 
{ 	
public 
GUIStyle 

labelStyle &
=' (
new) ,
GUIStyle- 5
(5 6
EditorStyles6 B
.B C
labelC H
)H I
;I J
public 
GUIStyle 
componentName )
=* +
new, /
GUIStyle0 8
(8 9
EditorStyles9 E
.E F
	boldLabelF O
)O P
;P Q
public 
Styles 
( 
) 
{ 
Color 
	fontColor 
=  !
new" %
Color& +
(+ ,
$num, 0
,0 1
$num2 6
,6 7
$num8 <
)< =
;= >

labelStyle 
. 
padding "
." #
right# (
+=) +
$num, .
;. /

labelStyle   
.   
normal   !
.  ! "
	textColor  " +
=  / 0
	fontColor  1 :
;  : ;

labelStyle!! 
.!! 
active!! !
.!!! "
	textColor!!" +
=!!/ 0
	fontColor!!1 :
;!!: ;

labelStyle"" 
."" 
focused"" "
.""" #
	textColor""# ,
=""/ 0
	fontColor""1 :
;"": ;

labelStyle## 
.## 
hover##  
.##  !
	textColor##! *
=##/ 0
	fontColor##1 :
;##: ;

labelStyle$$ 
.$$ 
onNormal$$ #
.$$# $
	textColor$$$ -
=$$/ 0
	fontColor$$1 :
;$$: ;

labelStyle%% 
.%% 
onActive%% #
.%%# $
	textColor%%$ -
=%%/ 0
	fontColor%%1 :
;%%: ;

labelStyle&& 
.&& 
	onFocused&& $
.&&$ %
	textColor&&% .
=&&/ 0
	fontColor&&1 :
;&&: ;

labelStyle'' 
.'' 
onHover'' "
.''" #
	textColor''# ,
=''/ 0
	fontColor''1 :
;'': ;
componentName)) 
.)) 
normal)) $
.))$ %
	textColor))% .
=))/ 0
	fontColor))1 :
;)): ;
componentName** 
.** 
active** $
.**$ %
	textColor**% .
=**/ 0
	fontColor**1 :
;**: ;
componentName++ 
.++ 
focused++ %
.++% &
	textColor++& /
=++0 1
	fontColor++2 ;
;++; <
componentName,, 
.,, 
hover,, #
.,,# $
	textColor,,$ -
=,,. /
	fontColor,,0 9
;,,9 :
componentName-- 
.-- 
onNormal-- &
.--& '
	textColor--' 0
=--1 2
	fontColor--3 <
;--< =
componentName.. 
... 
onActive.. &
...& '
	textColor..' 0
=..1 2
	fontColor..3 <
;..< =
componentName// 
.// 
	onFocused// '
.//' (
	textColor//( 1
=//2 3
	fontColor//4 =
;//= >
componentName00 
.00 
onHover00 %
.00% &
	textColor00& /
=000 1
	fontColor002 ;
;00; <
}11 
}22 	
private44 

Dictionary44 
<44 

GameObject44 %
,44% &
List44' +
<44+ ,&
ComponentInterceptedEvents44, F
>44F G
>44G H
m_TargetEvents44I W
;44W X
private55 
bool55  
m_InterceptsAnyEvent55 )
=55* +
false55, 1
;551 2
private66 

GUIContent66 
m_Title66 "
;66" #
private77 
Styles77 
m_Styles77 
=77  !
new77" %
Styles77& ,
(77, -
)77- .
;77. /
public99 
override99 
void99 

Initialize99 '
(99' (
UnityEngine99( 3
.993 4
Object994 :
[99: ;
]99; <
targets99= D
)99D E
{:: 	
Profiler;; 
.;; 
BeginSample;;  
(;;  !
$str;;! H
);;H I
;;;I J
base== 
.== 

Initialize== 
(== 
targets== #
)==# $
;==$ %
m_TargetEvents>> 
=>> 
new>>  

Dictionary>>! +
<>>+ ,

GameObject>>, 6
,>>6 7
List>>8 <
<>>< =&
ComponentInterceptedEvents>>= W
>>>W X
>>>X Y
(>>Y Z
targets>>Z a
.>>a b
Length>>b h
)>>h i
;>>i j 
m_InterceptsAnyEvent??  
=??! "
false??# (
;??( )
for@@ 
(@@ 
int@@ 
i@@ 
=@@ 
$num@@ 
;@@ 
i@@ 
<@@ 
targets@@  '
.@@' (
Length@@( .
;@@. /
++@@0 2
i@@2 3
)@@3 4
{AA 

GameObjectBB 
goBB 
=BB 
targetsBB  '
[BB' (
iBB( )
]BB) *
asBB+ -

GameObjectBB. 8
;BB8 9
ListCC 
<CC &
ComponentInterceptedEventsCC /
>CC/ 0
interceptedEventsCC1 B
=CCC D
GetEventsInfoCCE R
(CCR S
goCCS U
)CCU V
;CCV W
m_TargetEventsDD 
.DD 
AddDD "
(DD" #
goDD# %
,DD% &
interceptedEventsDD' 8
)DD8 9
;DD9 :
ifEE 
(EE 
interceptedEventsEE %
.EE% &
AnyEE& )
(EE) *
)EE* +
)EE+ , 
m_InterceptsAnyEventFF (
=FF) *
trueFF+ /
;FF/ 0
}GG 
ProfilerHH 
.HH 
	EndSampleHH 
(HH 
)HH  
;HH  !
}II 	
publicKK 
overrideKK 

GUIContentKK "
GetPreviewTitleKK# 2
(KK2 3
)KK3 4
{LL 	
ifMM 
(MM 
m_TitleMM 
==MM 
nullMM 
)MM  
{NN 
m_TitleOO 
=OO 
EditorGUIUtilityOO *
.OO* +
TrTextContentOO+ 8
(OO8 9
$strOO9 M
)OOM N
;OON O
}PP 
returnQQ 
m_TitleQQ 
;QQ 
}RR 	
publicTT 
overrideTT 
boolTT 
HasPreviewGUITT *
(TT* +
)TT+ ,
{UU 	
returnVV 
m_TargetEventsVV !
!=VV" $
nullVV% )
&&VV* , 
m_InterceptsAnyEventVV- A
;VVA B
}WW 	
publicYY 
overrideYY 
voidYY 
OnPreviewGUIYY )
(YY) *
RectYY* .
rYY/ 0
,YY0 1
GUIStyleYY2 :

backgroundYY; E
)YYE F
{ZZ 	
if[[ 
([[ 
Event[[ 
.[[ 
current[[ 
.[[ 
type[[ "
!=[[# %
	EventType[[& /
.[[/ 0
Repaint[[0 7
)[[7 8
return\\ 
;\\ 
Profiler]] 
.]] 
BeginSample]]  
(]]  !
$str]]! H
)]]H I
;]]I J
if`` 
(`` 
m_Styles`` 
==`` 
null``  
)``  !
m_Stylesaa 
=aa 
newaa 
Stylesaa %
(aa% &
)aa& '
;aa' (
Vector2cc 
maxEventLabelSizecc %
=cc& '
Vector2cc( /
.cc/ 0
zerocc0 4
;cc4 5
intdd "
totalInterceptedEventsdd &
=dd' (
$numdd) *
;dd* +
Listff 
<ff &
ComponentInterceptedEventsff +
>ff+ ,&
componentIncerceptedEventsff- G
=ffH I
m_TargetEventsffJ X
[ffX Y
targetffY _
asff` b

GameObjectffc m
]ffm n
;ffn o
foreachii 
(ii &
ComponentInterceptedEventsii /&
componentInterceptedEventsii0 J
iniiK M&
componentIncerceptedEventsiiN h
)iih i
{jj 
foreachkk 
(kk 
intkk 

eventIndexkk '
inkk( *&
componentInterceptedEventskk+ E
.kkE F
interceptedEventskkF W
)kkW X
{ll 

GUIContentmm 
eventContentmm +
=mm, -
s_PossibleEventsmm. >
[mm> ?

eventIndexmm? I
]mmI J
;mmJ K
++nn "
totalInterceptedEventsnn ,
;nn, -
Vector2oo 
	labelSizeoo %
=oo& '
m_Stylesoo( 0
.oo0 1

labelStyleoo1 ;
.oo; <
CalcSizeoo< D
(ooD E
eventContentooE Q
)ooQ R
;ooR S
ifpp 
(pp 
maxEventLabelSizepp )
.pp) *
xpp* +
<pp, -
	labelSizepp. 7
.pp7 8
xpp8 9
)pp9 :
{qq 
maxEventLabelSizerr )
.rr) *
xrr* +
=rr, -
	labelSizerr. 7
.rr7 8
xrr8 9
;rr9 :
}ss 
iftt 
(tt 
maxEventLabelSizett )
.tt) *
ytt* +
<tt, -
	labelSizett. 7
.tt7 8
ytt8 9
)tt9 :
{uu 
maxEventLabelSizevv )
.vv) *
yvv* +
=vv, -
	labelSizevv. 7
.vv7 8
yvv8 9
;vv9 :
}ww 
}xx 
}yy 

RectOffset|| 
previewPadding|| %
=||& '
new||( +

RectOffset||, 6
(||6 7
-||7 8
$num||8 9
,||9 :
-||; <
$num||< =
,||= >
-||? @
$num||@ A
,||A B
-||C D
$num||D E
)||E F
;||F G
r}} 
=}} 
previewPadding}} 
.}} 
Add}} "
(}}" #
r}}# $
)}}$ %
;}}% &
int
ÄÄ 
columns
ÄÄ 
=
ÄÄ 
Mathf
ÄÄ 
.
ÄÄ  
Max
ÄÄ  #
(
ÄÄ# $
Mathf
ÄÄ$ )
.
ÄÄ) *

FloorToInt
ÄÄ* 4
(
ÄÄ4 5
r
ÄÄ5 6
.
ÄÄ6 7
width
ÄÄ7 <
/
ÄÄ= >
maxEventLabelSize
ÄÄ? P
.
ÄÄP Q
x
ÄÄQ R
)
ÄÄR S
,
ÄÄS T
$num
ÄÄU V
)
ÄÄV W
;
ÄÄW X
int
ÅÅ 
rows
ÅÅ 
=
ÅÅ 
Mathf
ÅÅ 
.
ÅÅ 
Max
ÅÅ  
(
ÅÅ  !$
totalInterceptedEvents
ÅÅ! 7
/
ÅÅ8 9
columns
ÅÅ: A
,
ÅÅA B
$num
ÅÅC D
)
ÅÅD E
+
ÅÅF G(
componentIncerceptedEvents
ÅÅH b
.
ÅÅb c
Count
ÅÅc h
;
ÅÅh i
float
ÑÑ 
initialX
ÑÑ 
=
ÑÑ 
r
ÑÑ 
.
ÑÑ 
x
ÑÑ  
+
ÑÑ! "
Mathf
ÑÑ# (
.
ÑÑ( )
Max
ÑÑ) ,
(
ÑÑ, -
$num
ÑÑ- .
,
ÑÑ. /
(
ÑÑ0 1
r
ÑÑ1 2
.
ÑÑ2 3
width
ÑÑ3 8
-
ÑÑ9 :
(
ÑÑ; <
maxEventLabelSize
ÑÑ< M
.
ÑÑM N
x
ÑÑN O
*
ÑÑP Q
columns
ÑÑR Y
)
ÑÑY Z
)
ÑÑZ [
/
ÑÑ\ ]
$num
ÑÑ^ _
)
ÑÑ_ `
;
ÑÑ` a
float
ÖÖ 
initialY
ÖÖ 
=
ÖÖ 
r
ÖÖ 
.
ÖÖ 
y
ÖÖ  
+
ÖÖ! "
Mathf
ÖÖ# (
.
ÖÖ( )
Max
ÖÖ) ,
(
ÖÖ, -
$num
ÖÖ- .
,
ÖÖ. /
(
ÖÖ0 1
r
ÖÖ1 2
.
ÖÖ2 3
height
ÖÖ3 9
-
ÖÖ: ;
(
ÖÖ< =
maxEventLabelSize
ÖÖ= N
.
ÖÖN O
y
ÖÖO P
*
ÖÖQ R
rows
ÖÖS W
)
ÖÖW X
)
ÖÖX Y
/
ÖÖZ [
$num
ÖÖ\ ]
)
ÖÖ] ^
;
ÖÖ^ _
Rect
áá 
	labelRect
áá 
=
áá 
new
áá  
Rect
áá! %
(
áá% &
initialX
áá& .
,
áá. /
initialY
áá0 8
,
áá8 9
maxEventLabelSize
áá: K
.
ááK L
x
ááL M
,
ááM N
maxEventLabelSize
ááO `
.
áá` a
y
ááa b
)
ááb c
;
áác d
int
àà 
currentColumn
àà 
=
àà 
$num
àà  !
;
àà! "
foreach
ââ 
(
ââ (
ComponentInterceptedEvents
ââ /(
componentInterceptedEvents
ââ0 J
in
ââK M(
componentIncerceptedEvents
ââN h
)
ââh i
{
ää 
GUI
ãã 
.
ãã 
Label
ãã 
(
ãã 
	labelRect
ãã #
,
ãã# $(
componentInterceptedEvents
ãã% ?
.
ãã? @
componentName
ãã@ M
,
ããM N
m_Styles
ããO W
.
ããW X
componentName
ããX e
)
ããe f
;
ããf g
	labelRect
åå 
.
åå 
y
åå 
+=
åå 
	labelRect
åå (
.
åå( )
height
åå) /
;
åå/ 0
	labelRect
çç 
.
çç 
x
çç 
=
çç 
initialX
çç &
;
çç& '
foreach
éé 
(
éé 
int
éé 

eventIndex
éé '
in
éé( *(
componentInterceptedEvents
éé+ E
.
ééE F
interceptedEvents
ééF W
)
ééW X
{
èè 

GUIContent
êê 
eventContent
êê +
=
êê, -
s_PossibleEvents
êê. >
[
êê> ?

eventIndex
êê? I
]
êêI J
;
êêJ K
GUI
ëë 
.
ëë 
Label
ëë 
(
ëë 
	labelRect
ëë '
,
ëë' (
eventContent
ëë) 5
,
ëë5 6
m_Styles
ëë7 ?
.
ëë? @

labelStyle
ëë@ J
)
ëëJ K
;
ëëK L
if
íí 
(
íí 
currentColumn
íí %
<
íí& '
columns
íí( /
-
íí0 1
$num
íí2 3
)
íí3 4
{
ìì 
	labelRect
îî !
.
îî! "
x
îî" #
+=
îî$ &
	labelRect
îî' 0
.
îî0 1
width
îî1 6
;
îî6 7
}
ïï 
else
ññ 
{
óó 
	labelRect
òò !
.
òò! "
y
òò" #
+=
òò$ &
	labelRect
òò' 0
.
òò0 1
height
òò1 7
;
òò7 8
	labelRect
ôô !
.
ôô! "
x
ôô" #
=
ôô$ %
initialX
ôô& .
;
ôô. /
}
öö 
currentColumn
úú !
=
úú" #
(
úú$ %
currentColumn
úú% 2
+
úú3 4
$num
úú5 6
)
úú6 7
%
úú8 9
columns
úú: A
;
úúA B
}
ùù 
if
üü 
(
üü 
	labelRect
üü 
.
üü 
x
üü 
!=
üü  "
initialX
üü# +
)
üü+ ,
{
†† 
	labelRect
°° 
.
°° 
y
°° 
+=
°°  "
	labelRect
°°# ,
.
°°, -
height
°°- 3
;
°°3 4
	labelRect
¢¢ 
.
¢¢ 
x
¢¢ 
=
¢¢  !
initialX
¢¢" *
;
¢¢* +
}
££ 
}
§§ 
Profiler
•• 
.
•• 
	EndSample
•• 
(
•• 
)
••  
;
••  !
}
¶¶ 	
static
™™ 
List
™™ 
<
™™ 
Type
™™ 
>
™™ %
s_EventSystemInterfaces
™™ 1
=
™™2 3
null
™™4 8
;
™™8 9
private
¨¨ 
static
¨¨ 
List
¨¨ 
<
¨¨ 

GUIContent
¨¨ &
>
¨¨& '
s_PossibleEvents
¨¨( 8
=
¨¨9 :
null
¨¨; ?
;
¨¨? @
static
ÆÆ 

Dictionary
ÆÆ 
<
ÆÆ 
Type
ÆÆ 
,
ÆÆ 
List
ÆÆ  $
<
ÆÆ$ %
int
ÆÆ% (
>
ÆÆ( )
>
ÆÆ) **
s_InterfaceEventSystemEvents
ÆÆ+ G
=
ÆÆH I
null
ÆÆJ N
;
ÆÆN O
static
∞∞ 
readonly
∞∞ 

Dictionary
∞∞ "
<
∞∞" #
Type
∞∞# '
,
∞∞' ((
ComponentInterceptedEvents
∞∞) C
>
∞∞C D 
s_ComponentEvents2
∞∞E W
=
∞∞X Y
new
∞∞Z ]

Dictionary
∞∞^ h
<
∞∞h i
Type
∞∞i m
,
∞∞m n)
ComponentInterceptedEvents∞∞o â
>∞∞â ä
(∞∞ä ã
)∞∞ã å
;∞∞å ç
	protected
≥≥ 
static
≥≥ 
List
≥≥ 
<
≥≥ (
ComponentInterceptedEvents
≥≥ 8
>
≥≥8 9
GetEventsInfo
≥≥: G
(
≥≥G H

GameObject
≥≥H R

gameObject
≥≥S ]
)
≥≥] ^
{
¥¥ 	4
&InitializeEvetnsInterfaceCacheIfNeeded
µµ 2
(
µµ2 3
)
µµ3 4
;
µµ4 5
List
∑∑ 
<
∑∑ (
ComponentInterceptedEvents
∑∑ +
>
∑∑+ ,
componentEvents
∑∑- <
=
∑∑= >
new
∑∑? B
List
∑∑C G
<
∑∑G H(
ComponentInterceptedEvents
∑∑H b
>
∑∑b c
(
∑∑c d
)
∑∑d e
;
∑∑e f
MonoBehaviour
ππ 
[
ππ 
]
ππ 
mbs
ππ 
=
ππ  !

gameObject
ππ" ,
.
ππ, -
GetComponents
ππ- :
<
ππ: ;
MonoBehaviour
ππ; H
>
ππH I
(
ππI J
)
ππJ K
;
ππK L
for
ªª 
(
ªª 
int
ªª 
i
ªª 
=
ªª 
$num
ªª 
,
ªª 
imax
ªª  
=
ªª! "
mbs
ªª# &
.
ªª& '
Length
ªª' -
;
ªª- .
i
ªª/ 0
<
ªª1 2
imax
ªª3 7
;
ªª7 8
++
ªª9 ;
i
ªª; <
)
ªª< =
{
ºº (
ComponentInterceptedEvents
ΩΩ *
componentEvent
ΩΩ+ 9
=
ΩΩ: ;
null
ΩΩ< @
;
ΩΩ@ A
MonoBehaviour
øø 
mb
øø  
=
øø! "
mbs
øø# &
[
øø& '
i
øø' (
]
øø( )
;
øø) *
if
¿¿ 
(
¿¿ 
mb
¿¿ 
==
¿¿ 
null
¿¿ 
)
¿¿ 
continue
¡¡ 
;
¡¡ 
Type
√√ 
type
√√ 
=
√√ 
mb
√√ 
.
√√ 
GetType
√√ &
(
√√& '
)
√√' (
;
√√( )
if
≈≈ 
(
≈≈ 
!
≈≈  
s_ComponentEvents2
≈≈ '
.
≈≈' (
ContainsKey
≈≈( 3
(
≈≈3 4
type
≈≈4 8
)
≈≈8 9
)
≈≈9 :
{
∆∆ 
List
«« 
<
«« 
int
«« 
>
«« 
events
«« $
=
««% &
null
««' +
;
««+ ,
Profiler
»» 
.
»» 
BeginSample
»» (
(
»»( )
$str
»») [
)
»»[ \
;
»»\ ]
if
…… 
(
…… 
typeof
…… 
(
…… !
IEventSystemHandler
…… 2
)
……2 3
.
……3 4
IsAssignableFrom
……4 D
(
……D E
type
……E I
)
……I J
)
……J K
{
   
for
ÀÀ 
(
ÀÀ 
int
ÀÀ  
index
ÀÀ! &
=
ÀÀ' (
$num
ÀÀ) *
;
ÀÀ* +
index
ÀÀ, 1
<
ÀÀ2 3%
s_EventSystemInterfaces
ÀÀ4 K
.
ÀÀK L
Count
ÀÀL Q
;
ÀÀQ R
index
ÀÀS X
++
ÀÀX Z
)
ÀÀZ [
{
ÃÃ 
var
ÕÕ 
eventInterface
ÕÕ  .
=
ÕÕ/ 0%
s_EventSystemInterfaces
ÕÕ1 H
[
ÕÕH I
index
ÕÕI N
]
ÕÕN O
;
ÕÕO P
if
ŒŒ 
(
ŒŒ  
!
ŒŒ  !
eventInterface
ŒŒ! /
.
ŒŒ/ 0
IsAssignableFrom
ŒŒ0 @
(
ŒŒ@ A
type
ŒŒA E
)
ŒŒE F
)
ŒŒF G
continue
œœ  (
;
œœ( )
if
—— 
(
——  
events
——  &
==
——' )
null
——* .
)
——. /
events
““  &
=
““' (
new
““) ,
List
““- 1
<
““1 2
int
““2 5
>
““5 6
(
““6 7
)
““7 8
;
““8 9
events
‘‘ "
.
‘‘" #
AddRange
‘‘# +
(
‘‘+ ,*
s_InterfaceEventSystemEvents
‘‘, H
[
‘‘H I
eventInterface
‘‘I W
]
‘‘W X
)
‘‘X Y
;
‘‘Y Z
}
’’ 
}
÷÷ 
if
ÿÿ 
(
ÿÿ 
events
ÿÿ 
!=
ÿÿ !
null
ÿÿ" &
)
ÿÿ& '
{
ŸŸ 
componentEvent
⁄⁄ &
=
⁄⁄' (
new
⁄⁄) ,(
ComponentInterceptedEvents
⁄⁄- G
(
⁄⁄G H
)
⁄⁄H I
;
⁄⁄I J
componentEvent
€€ &
.
€€& '
componentName
€€' 4
=
€€5 6
new
€€7 :

GUIContent
€€; E
(
€€E F
type
€€F J
.
€€J K
Name
€€K O
)
€€O P
;
€€P Q
componentEvent
‹‹ &
.
‹‹& '
interceptedEvents
‹‹' 8
=
‹‹9 :
events
‹‹; A
.
‹‹A B
OrderBy
‹‹B I
(
‹‹I J
index
‹‹J O
=>
‹‹P R
s_PossibleEvents
‹‹S c
[
‹‹c d
index
‹‹d i
]
‹‹i j
.
‹‹j k
text
‹‹k o
)
‹‹o p
.
‹‹p q
ToArray
‹‹q x
(
‹‹x y
)
‹‹y z
;
‹‹z {
}
››  
s_ComponentEvents2
ﬁﬁ &
.
ﬁﬁ& '
Add
ﬁﬁ' *
(
ﬁﬁ* +
type
ﬁﬁ+ /
,
ﬁﬁ/ 0
componentEvent
ﬁﬁ1 ?
)
ﬁﬁ? @
;
ﬁﬁ@ A
Profiler
‡‡ 
.
‡‡ 
	EndSample
‡‡ &
(
‡‡& '
)
‡‡' (
;
‡‡( )
}
·· 
else
‚‚ 
{
„„ 
componentEvent
‰‰ "
=
‰‰# $ 
s_ComponentEvents2
‰‰% 7
[
‰‰7 8
type
‰‰8 <
]
‰‰< =
;
‰‰= >
}
ÂÂ 
if
ËË 
(
ËË 
componentEvent
ËË "
!=
ËË# %
null
ËË& *
)
ËË* +
{
ÈÈ 
componentEvents
ÍÍ #
.
ÍÍ# $
Add
ÍÍ$ '
(
ÍÍ' (
componentEvent
ÍÍ( 6
)
ÍÍ6 7
;
ÍÍ7 8
}
ÎÎ 
}
ÏÏ 
return
ÓÓ 
componentEvents
ÓÓ "
;
ÓÓ" #
}
ÔÔ 	
private
ÒÒ 
static
ÒÒ 
void
ÒÒ 4
&InitializeEvetnsInterfaceCacheIfNeeded
ÒÒ B
(
ÒÒB C
)
ÒÒC D
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ %
s_EventSystemInterfaces
ÛÛ '
!=
ÛÛ( *
null
ÛÛ+ /
)
ÛÛ/ 0
return
ÙÙ 
;
ÙÙ %
s_EventSystemInterfaces
ˆˆ #
=
ˆˆ$ %
new
ˆˆ& )
List
ˆˆ* .
<
ˆˆ. /
Type
ˆˆ/ 3
>
ˆˆ3 4
(
ˆˆ4 5
)
ˆˆ5 6
;
ˆˆ6 7
s_PossibleEvents
˜˜ 
=
˜˜ 
new
˜˜ "
List
˜˜# '
<
˜˜' (

GUIContent
˜˜( 2
>
˜˜2 3
(
˜˜3 4
)
˜˜4 5
;
˜˜5 6*
s_InterfaceEventSystemEvents
¯¯ (
=
¯¯) *
new
¯¯+ .

Dictionary
¯¯/ 9
<
¯¯9 :
Type
¯¯: >
,
¯¯> ?
List
¯¯@ D
<
¯¯D E
int
¯¯E H
>
¯¯H I
>
¯¯I J
(
¯¯J K
)
¯¯K L
;
¯¯L M
	TypeCache
˙˙ 
.
˙˙ 
TypeCollection
˙˙ $
types
˙˙% *
=
˙˙+ ,
	TypeCache
˙˙- 6
.
˙˙6 7!
GetTypesDerivedFrom
˙˙7 J
<
˙˙J K!
IEventSystemHandler
˙˙K ^
>
˙˙^ _
(
˙˙_ `
)
˙˙` a
;
˙˙a b
foreach
˚˚ 
(
˚˚ 
var
˚˚ 
type
˚˚ 
in
˚˚  
types
˚˚! &
)
˚˚& '
{
¸¸ 
if
˝˝ 
(
˝˝ 
!
˝˝ 
type
˝˝ 
.
˝˝ 
IsInterface
˝˝ %
)
˝˝% &
continue
˛˛ 
;
˛˛ %
s_EventSystemInterfaces
ÄÄ '
.
ÄÄ' (
Add
ÄÄ( +
(
ÄÄ+ ,
type
ÄÄ, 0
)
ÄÄ0 1
;
ÄÄ1 2
List
ÅÅ 
<
ÅÅ 
int
ÅÅ 
>
ÅÅ 
eventIndexList
ÅÅ (
=
ÅÅ) *
new
ÅÅ+ .
List
ÅÅ/ 3
<
ÅÅ3 4
int
ÅÅ4 7
>
ÅÅ7 8
(
ÅÅ8 9
)
ÅÅ9 :
;
ÅÅ: ;

MethodInfo
ÉÉ 
[
ÉÉ 
]
ÉÉ 
methodInfos
ÉÉ (
=
ÉÉ) *
type
ÉÉ+ /
.
ÉÉ/ 0

GetMethods
ÉÉ0 :
(
ÉÉ: ;
BindingFlags
ÉÉ; G
.
ÉÉG H
Public
ÉÉH N
|
ÉÉO P
BindingFlags
ÉÉQ ]
.
ÉÉ] ^
	NonPublic
ÉÉ^ g
|
ÉÉh i
BindingFlags
ÉÉj v
.
ÉÉv w
Instance
ÉÉw 
)ÉÉ Ä
;ÉÉÄ Å
for
ÑÑ 
(
ÑÑ 
int
ÑÑ 
mi
ÑÑ 
=
ÑÑ 
$num
ÑÑ 
;
ÑÑ  
mi
ÑÑ! #
<
ÑÑ$ %
methodInfos
ÑÑ& 1
.
ÑÑ1 2
Length
ÑÑ2 8
;
ÑÑ8 9
mi
ÑÑ: <
++
ÑÑ< >
)
ÑÑ> ?
{
ÖÖ 

MethodInfo
ÜÜ 

methodInfo
ÜÜ )
=
ÜÜ* +
methodInfos
ÜÜ, 7
[
ÜÜ7 8
mi
ÜÜ8 :
]
ÜÜ: ;
;
ÜÜ; <
eventIndexList
áá "
.
áá" #
Add
áá# &
(
áá& '
s_PossibleEvents
áá' 7
.
áá7 8
Count
áá8 =
)
áá= >
;
áá> ?
s_PossibleEvents
àà $
.
àà$ %
Add
àà% (
(
àà( )
new
àà) ,

GUIContent
àà- 7
(
àà7 8

methodInfo
àà8 B
.
ààB C
Name
ààC G
)
ààG H
)
ààH I
;
ààI J
}
ââ *
s_InterfaceEventSystemEvents
ää ,
.
ää, -
Add
ää- 0
(
ää0 1
type
ää1 5
,
ää5 6
eventIndexList
ää7 E
)
ääE F
;
ääF G
}
ãã 
}
åå 	
}
çç 
}éé •
íC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\Properties\AssemblyInfo.cs
[		 
assembly		 	
:			 

AssemblyTitle		 
(		 
$str		 )
)		) *
]		* +
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
AssemblyDescription

 
(

 
$str

 !
)

! "
]

" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str +
)+ ,
], -
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str B
)B C
]C D
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 
$
AssemblyIsEditorAssembly #
]# $
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[%% 
assembly%% 	
:%%	 

AssemblyVersion%% 
(%% 
$str%% $
)%%$ %
]%%% &
[&& 
assembly&& 	
:&&	 

AssemblyFileVersion&& 
(&& 
$str&& (
)&&( )
]&&) *‹Ä
ïC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\LayoutPropertiesPreview.cs
	namespace 	
UnityEditor
 
. 
Events 
{ 
[		 
CustomPreview		 
(		 
typeof		 
(		 

GameObject		 $
)		$ %
)		% &
]		& '
class 	#
LayoutPropertiesPreview
 !
:" #
ObjectPreview$ 1
{ 
private 
const 
float 
kLabelWidth '
=( )
$num* -
;- .
private 
const 
float 
kValueWidth '
=( )
$num* -
;- .
class 
Styles 
{ 	
public 
GUIStyle 

labelStyle &
=' (
new) ,
GUIStyle- 5
(5 6
EditorStyles6 B
.B C
labelC H
)H I
;I J
public 
GUIStyle 
headerStyle '
=( )
new* -
GUIStyle. 6
(6 7
EditorStyles7 C
.C D
	boldLabelD M
)M N
;N O
public 
Styles 
( 
) 
{ 
Color 
	fontColor 
=  !
new" %
Color& +
(+ ,
$num, 0
,0 1
$num2 6
,6 7
$num8 <
)< =
;= >

labelStyle 
. 
padding "
." #
right# (
+=) +
$num, -
;- .

labelStyle 
. 
normal !
.! "
	textColor" +
=, -
	fontColor. 7
;7 8
headerStyle 
. 
padding #
.# $
right$ )
+=* ,
$num- .
;. /
headerStyle 
. 
normal "
." #
	textColor# ,
=- .
	fontColor/ 8
;8 9
} 
} 	
private!! 

GUIContent!! 
m_Title!! "
;!!" #
private"" 
Styles"" 
m_Styles"" 
=""  !
new""" %
Styles""& ,
("", -
)""- .
;"". /
public$$ 
override$$ 
void$$ 

Initialize$$ '
($$' (
UnityEngine$$( 3
.$$3 4
Object$$4 :
[$$: ;
]$$; <
targets$$= D
)$$D E
{%% 	
base&& 
.&& 

Initialize&& 
(&& 
targets&& #
)&&# $
;&&$ %
}'' 	
public)) 
override)) 

GUIContent)) "
GetPreviewTitle))# 2
())2 3
)))3 4
{** 	
if++ 
(++ 
m_Title++ 
==++ 
null++ 
)++  
{,, 
m_Title-- 
=-- 
EditorGUIUtility-- *
.--* +
TrTextContent--+ 8
(--8 9
$str--9 L
)--L M
;--M N
}.. 
return// 
m_Title// 
;// 
}00 	
public22 
override22 
bool22 
HasPreviewGUI22 *
(22* +
)22+ ,
{33 	

GameObject44 
go44 
=44 
target44 "
as44# %

GameObject44& 0
;440 1
if55 
(55 
!55 
go55 
)55 
return66 
false66 
;66 
ILayoutElement99 
layoutElement99 (
;99( )
return:: 
go:: 
.:: 
TryGetComponent:: %
(::% &
out::& )
layoutElement::* 7
)::7 8
;::8 9
};; 	
public== 
override== 
void== 
OnPreviewGUI== )
(==) *
Rect==* .
r==/ 0
,==0 1
GUIStyle==2 :

background==; E
)==E F
{>> 	
if?? 
(?? 
Event?? 
.?? 
current?? 
.?? 
type?? "
!=??# %
	EventType??& /
.??/ 0
Repaint??0 7
)??7 8
return@@ 
;@@ 
ifBB 
(BB 
m_StylesBB 
==BB 
nullBB  
)BB  !
m_StylesCC 
=CC 
newCC 
StylesCC %
(CC% &
)CC& '
;CC' (

GameObjectEE 
goEE 
=EE 
targetEE "
asEE# %

GameObjectEE& 0
;EE0 1
RectTransformFF 
rectFF 
=FF  
goFF! #
.FF# $
	transformFF$ -
asFF. 0
RectTransformFF1 >
;FF> ?
ifGG 
(GG 
rectGG 
==GG 
nullGG 
)GG 
returnHH 
;HH 

RectOffsetKK 
previewPaddingKK %
=KK& '
newKK( +

RectOffsetKK, 6
(KK6 7
-KK7 8
$numKK8 9
,KK9 :
-KK; <
$numKK< =
,KK= >
-KK? @
$numKK@ A
,KKA B
-KKC D
$numKKD E
)KKE F
;KKF G
rLL 
=LL 
previewPaddingLL 
.LL 
AddLL "
(LL" #
rLL# $
)LL$ %
;LL% &
rOO 
.OO 
heightOO 
=OO 
EditorGUIUtilityOO '
.OO' (
singleLineHeightOO( 8
;OO8 9
RectPP 
	labelRectPP 
=PP 
rPP 
;PP 
RectQQ 
	valueRectQQ 
=QQ 
rQQ 
;QQ 
RectRR 

sourceRectRR 
=RR 
rRR 
;RR  
	labelRectSS 
.SS 
widthSS 
=SS 
kLabelWidthSS )
;SS) *
	valueRectTT 
.TT 
xMinTT 
+=TT 
kLabelWidthTT )
;TT) *
	valueRectUU 
.UU 
widthUU 
=UU 
kValueWidthUU )
;UU) *

sourceRectVV 
.VV 
xMinVV 
+=VV 
kLabelWidthVV *
+VV+ ,
kValueWidthVV- 8
;VV8 9
GUIYY 
.YY 
LabelYY 
(YY 
	labelRectYY 
,YY  
$strYY! +
,YY+ ,
m_StylesYY- 5
.YY5 6
headerStyleYY6 A
)YYA B
;YYB C
GUIZZ 
.ZZ 
LabelZZ 
(ZZ 
	valueRectZZ 
,ZZ  
$strZZ! (
,ZZ( )
m_StylesZZ* 2
.ZZ2 3
headerStyleZZ3 >
)ZZ> ?
;ZZ? @
GUI[[ 
.[[ 
Label[[ 
([[ 

sourceRect[[  
,[[  !
$str[[" *
,[[* +
m_Styles[[, 4
.[[4 5
headerStyle[[5 @
)[[@ A
;[[A B
	labelRect\\ 
.\\ 
y\\ 
+=\\ 
EditorGUIUtility\\ +
.\\+ ,
singleLineHeight\\, <
+\\= >
EditorGUIUtility\\? O
.\\O P#
standardVerticalSpacing\\P g
;\\g h
	valueRect]] 
.]] 
y]] 
+=]] 
EditorGUIUtility]] +
.]]+ ,
singleLineHeight]], <
+]]= >
EditorGUIUtility]]? O
.]]O P#
standardVerticalSpacing]]P g
;]]g h

sourceRect^^ 
.^^ 
y^^ 
+=^^ 
EditorGUIUtility^^ ,
.^^, -
singleLineHeight^^- =
+^^> ?
EditorGUIUtility^^@ P
.^^P Q#
standardVerticalSpacing^^Q h
;^^h i
ILayoutElementaa 
sourceaa !
=aa" #
nullaa$ (
;aa( )
ShowPropee 
(ee 
refee 
	labelRectee "
,ee" #
refee$ '
	valueRectee( 1
,ee1 2
refee3 6

sourceRectee7 A
,eeA B
$streeC N
,eeN O
LayoutUtilityeeP ]
.ee] ^
GetLayoutPropertyee^ o
(eeo p
recteep t
,eet u
eeev w
=>eex z
eee{ |
.ee| }
minWidth	ee} Ö
,
eeÖ Ü
$num
eeá à
,
eeà â
out
eeä ç
source
eeé î
)
eeî ï
.
eeï ñ
ToString
eeñ û
(
eeû ü
CultureInfo
eeü ™
.
ee™ ´
InvariantCulture
ee´ ª
.
eeª º
NumberFormat
eeº »
)
ee» …
,
ee…  
source
eeÀ —
)
ee— “
;
ee“ ”
ShowPropff 
(ff 
refff 
	labelRectff "
,ff" #
refff$ '
	valueRectff( 1
,ff1 2
refff3 6

sourceRectff7 A
,ffA B
$strffC O
,ffO P
LayoutUtilityffQ ^
.ff^ _
GetLayoutPropertyff_ p
(ffp q
rectffq u
,ffu v
effw x
=>ffy {
eff| }
.ff} ~
	minHeight	ff~ á
,
ffá à
$num
ffâ ä
,
ffä ã
out
ffå è
source
ffê ñ
)
ffñ ó
.
ffó ò
ToString
ffò †
(
ff† °
CultureInfo
ff° ¨
.
ff¨ ≠
InvariantCulture
ff≠ Ω
.
ffΩ æ
NumberFormat
ffæ  
)
ff  À
,
ffÀ Ã
source
ffÕ ”
)
ff” ‘
;
ff‘ ’
ShowPropgg 
(gg 
refgg 
	labelRectgg "
,gg" #
refgg$ '
	valueRectgg( 1
,gg1 2
refgg3 6

sourceRectgg7 A
,ggA B
$strggC T
,ggT U
LayoutUtilityggV c
.ggc d
GetLayoutPropertyggd u
(ggu v
rectggv z
,ggz {
egg| }
=>	gg~ Ä
e
ggÅ Ç
.
ggÇ É
preferredWidth
ggÉ ë
,
ggë í
$num
ggì î
,
ggî ï
out
ggñ ô
source
ggö †
)
gg† °
.
gg° ¢
ToString
gg¢ ™
(
gg™ ´
CultureInfo
gg´ ∂
.
gg∂ ∑
InvariantCulture
gg∑ «
.
gg« »
NumberFormat
gg» ‘
)
gg‘ ’
,
gg’ ÷
source
gg◊ ›
)
gg› ﬁ
;
ggﬁ ﬂ
ShowProphh 
(hh 
refhh 
	labelRecthh "
,hh" #
refhh$ '
	valueRecthh( 1
,hh1 2
refhh3 6

sourceRecthh7 A
,hhA B
$strhhC U
,hhU V
LayoutUtilityhhW d
.hhd e
GetLayoutPropertyhhe v
(hhv w
recthhw {
,hh{ |
ehh} ~
=>	hh Å
e
hhÇ É
.
hhÉ Ñ
preferredHeight
hhÑ ì
,
hhì î
$num
hhï ñ
,
hhñ ó
out
hhò õ
source
hhú ¢
)
hh¢ £
.
hh£ §
ToString
hh§ ¨
(
hh¨ ≠
CultureInfo
hh≠ ∏
.
hh∏ π
InvariantCulture
hhπ …
.
hh…  
NumberFormat
hh  ÷
)
hh÷ ◊
,
hh◊ ÿ
source
hhŸ ﬂ
)
hhﬂ ‡
;
hh‡ ·
floatjj 
flexiblejj 
=jj 
$numjj 
;jj 
flexiblell 
=ll 
LayoutUtilityll $
.ll$ %
GetLayoutPropertyll% 6
(ll6 7
rectll7 ;
,ll; <
ell= >
=>ll? A
ellB C
.llC D
flexibleWidthllD Q
,llQ R
$numllS T
,llT U
outllV Y
sourcellZ `
)ll` a
;lla b
ShowPropmm 
(mm 
refmm 
	labelRectmm "
,mm" #
refmm$ '
	valueRectmm( 1
,mm1 2
refmm3 6

sourceRectmm7 A
,mmA B
$strmmC S
,mmS T
flexiblemmU ]
>mm^ _
$nummm` a
?mmb c
(mmd e
$strmme p
+mmq r
flexiblemms {
.mm{ |
ToString	mm| Ñ
(
mmÑ Ö
CultureInfo
mmÖ ê
.
mmê ë
InvariantCulture
mmë °
.
mm° ¢
NumberFormat
mm¢ Æ
)
mmÆ Ø
+
mm∞ ±
$str
mm≤ µ
)
mmµ ∂
:
mm∑ ∏
$str
mmπ √
,
mm√ ƒ
source
mm≈ À
)
mmÀ Ã
;
mmÃ Õ
flexiblenn 
=nn 
LayoutUtilitynn $
.nn$ %
GetLayoutPropertynn% 6
(nn6 7
rectnn7 ;
,nn; <
enn= >
=>nn? A
ennB C
.nnC D
flexibleHeightnnD R
,nnR S
$numnnT U
,nnU V
outnnW Z
sourcenn[ a
)nna b
;nnb c
ShowPropoo 
(oo 
refoo 
	labelRectoo "
,oo" #
refoo$ '
	valueRectoo( 1
,oo1 2
refoo3 6

sourceRectoo7 A
,ooA B
$strooC T
,ooT U
flexibleooV ^
>oo_ `
$numooa b
?ooc d
(ooe f
$stroof q
+oor s
flexibleoot |
.oo| }
ToString	oo} Ö
(
ooÖ Ü
CultureInfo
ooÜ ë
.
ooë í
InvariantCulture
ooí ¢
.
oo¢ £
NumberFormat
oo£ Ø
)
ooØ ∞
+
oo± ≤
$str
oo≥ ∂
)
oo∂ ∑
:
oo∏ π
$str
oo∫ ƒ
,
ooƒ ≈
source
oo∆ Ã
)
ooÃ Õ
;
ooÕ Œ
ifqq 
(qq 
!qq 
rectqq 
.qq 
GetComponentqq "
<qq" #
LayoutElementqq# 0
>qq0 1
(qq1 2
)qq2 3
)qq3 4
{rr 
Rectss 
noteRectss 
=ss 
newss  #
Rectss$ (
(ss( )
	labelRectss) 2
.ss2 3
xss3 4
,ss4 5
	labelRectss6 ?
.ss? @
yss@ A
+ssB C
$numssD F
,ssF G
rssH I
.ssI J
widthssJ O
,ssO P
EditorGUIUtilityssQ a
.ssa b
singleLineHeightssb r
)ssr s
;sss t
GUItt 
.tt 
Labeltt 
(tt 
noteRecttt "
,tt" #
$strtt$ M
,ttM N
m_StylesttO W
.ttW X

labelStylettX b
)ttb c
;ttc d
}uu 
}vv 	
privatexx 
voidxx 
ShowPropxx 
(xx 
refxx !
Rectxx" &
	labelRectxx' 0
,xx0 1
refxx2 5
Rectxx6 :
	valueRectxx; D
,xxD E
refxxF I
RectxxJ N

sourceRectxxO Y
,xxY Z
stringxx[ a
labelxxb g
,xxg h
stringxxi o
valuexxp u
,xxu v
ILayoutElement	xxw Ö
source
xxÜ å
)
xxå ç
{yy 	
GUIzz 
.zz 
Labelzz 
(zz 
	labelRectzz 
,zz  
labelzz! &
,zz& '
m_Styleszz( 0
.zz0 1

labelStylezz1 ;
)zz; <
;zz< =
GUI{{ 
.{{ 
Label{{ 
({{ 
	valueRect{{ 
,{{  
value{{! &
,{{& '
m_Styles{{( 0
.{{0 1

labelStyle{{1 ;
){{; <
;{{< =
GUI|| 
.|| 
Label|| 
(|| 

sourceRect||  
,||  !
source||" (
==||) +
null||, 0
?||1 2
$str||3 9
:||: ;
source||< B
.||B C
GetType||C J
(||J K
)||K L
.||L M
Name||M Q
,||Q R
m_Styles||S [
.||[ \

labelStyle||\ f
)||f g
;||g h
	labelRect}} 
.}} 
y}} 
+=}} 
EditorGUIUtility}} +
.}}+ ,
singleLineHeight}}, <
;}}< =
	valueRect~~ 
.~~ 
y~~ 
+=~~ 
EditorGUIUtility~~ +
.~~+ ,
singleLineHeight~~, <
;~~< =

sourceRect 
. 
y 
+= 
EditorGUIUtility ,
., -
singleLineHeight- =
;= >
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ˛µ
èC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SpriteDrawUtility.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
internal

 
class

 
SpriteDrawUtility

 $
{ 
static 
	Texture2D 
s_ContrastTex &
;& '
static 
	Texture2D 
contrastTexture (
{ 	
get 
{ 
if 
( 
s_ContrastTex !
==" $
null% )
)) *
s_ContrastTex !
=" #
CreateCheckerTex$ 4
(4 5
new 
Color !
(! "
$num" $
,$ %
$num& *
,* +
$num, .
,. /
$num0 4
)4 5
,5 6
new 
Color !
(! "
$num" $
,$ %
$num& (
,( )
$num* ,
,, -
$num. 2
)2 3
)3 4
;4 5
return 
s_ContrastTex $
;$ %
} 
} 	
static 
	Texture2D 
CreateCheckerTex )
() *
Color* /
c00 2
,2 3
Color4 9
c1: <
)< =
{ 	
	Texture2D 
tex 
= 
new 
	Texture2D  )
() *
$num* ,
,, -
$num. 0
)0 1
;1 2
tex 
. 
name 
= 
$str 4
;4 5
tex   
.   
	hideFlags   
=   
	HideFlags   %
.  % &
DontSave  & .
;  . /
for"" 
("" 
int"" 
y"" 
="" 
$num"" 
;"" 
y"" 
<"" 
$num""  !
;""! "
++""# %
y""% &
)""& '
for""( +
("", -
int""- 0
x""1 2
=""3 4
$num""5 6
;""6 7
x""8 9
<"": ;
$num""< =
;""= >
++""? A
x""A B
)""B C
tex""D G
.""G H
SetPixel""H P
(""P Q
x""Q R
,""R S
y""T U
,""U V
c1""W Y
)""Y Z
;""Z [
for## 
(## 
int## 
y## 
=## 
$num## 
;## 
y## 
<## 
$num##  "
;##" #
++##$ &
y##& '
)##' (
for##) ,
(##- .
int##. 1
x##2 3
=##4 5
$num##6 7
;##7 8
x##9 :
<##; <
$num##= >
;##> ?
++##@ B
x##B C
)##C D
tex##E H
.##H I
SetPixel##I Q
(##Q R
x##R S
,##S T
y##U V
,##V W
c0##X Z
)##Z [
;##[ \
for$$ 
($$ 
int$$ 
y$$ 
=$$ 
$num$$ 
;$$ 
y$$ 
<$$ 
$num$$  !
;$$! "
++$$# %
y$$% &
)$$& '
for$$( +
($$, -
int$$- 0
x$$1 2
=$$3 4
$num$$5 6
;$$6 7
x$$8 9
<$$: ;
$num$$< >
;$$> ?
++$$@ B
x$$B C
)$$C D
tex$$E H
.$$H I
SetPixel$$I Q
($$Q R
x$$R S
,$$S T
y$$U V
,$$V W
c0$$X Z
)$$Z [
;$$[ \
for%% 
(%% 
int%% 
y%% 
=%% 
$num%% 
;%% 
y%% 
<%% 
$num%%  "
;%%" #
++%%$ &
y%%& '
)%%' (
for%%) ,
(%%- .
int%%. 1
x%%2 3
=%%4 5
$num%%6 7
;%%7 8
x%%9 :
<%%; <
$num%%= ?
;%%? @
++%%A C
x%%C D
)%%D E
tex%%F I
.%%I J
SetPixel%%J R
(%%R S
x%%S T
,%%T U
y%%V W
,%%W X
c1%%Y [
)%%[ \
;%%\ ]
tex'' 
.'' 
Apply'' 
('' 
)'' 
;'' 
tex(( 
.(( 

filterMode(( 
=(( 

FilterMode(( '
.((' (
Point((( -
;((- .
return)) 
tex)) 
;)) 
}** 	
static-- 
	Texture2D-- 
CreateGradientTex-- *
(--* +
)--+ ,
{.. 	
	Texture2D// 
tex// 
=// 
new// 
	Texture2D//  )
(//) *
$num//* +
,//+ ,
$num//- /
)/// 0
;//0 1
tex00 
.00 
name00 
=00 
$str00 5
;005 6
tex11 
.11 
	hideFlags11 
=11 
	HideFlags11 %
.11% &
DontSave11& .
;11. /
Color33 
c033 
=33 
new33 
Color33  
(33  !
$num33! #
,33# $
$num33% '
,33' (
$num33) +
,33+ ,
$num33- /
)33/ 0
;330 1
Color44 
c144 
=44 
new44 
Color44  
(44  !
$num44! #
,44# $
$num44% '
,44' (
$num44) +
,44+ ,
$num44- 1
)441 2
;442 3
for66 
(66 
int66 
i66 
=66 
$num66 
;66 
i66 
<66 
$num66  "
;66" #
++66$ &
i66& '
)66' (
{77 
float88 
f88 
=88 
Mathf88 
.88  
Abs88  #
(88# $
(88$ %
i88% &
/88' (
$num88) ,
)88, -
*88. /
$num880 2
-883 4
$num885 7
)887 8
;888 9
f99 
*=99 
f99 
;99 
tex:: 
.:: 
SetPixel:: 
(:: 
$num:: 
,:: 
i::  !
,::! "
Color::# (
.::( )
Lerp::) -
(::- .
c0::. 0
,::0 1
c1::2 4
,::4 5
f::6 7
)::7 8
)::8 9
;::9 :
};; 
tex== 
.== 
Apply== 
(== 
)== 
;== 
tex>> 
.>> 

filterMode>> 
=>> 

FilterMode>> '
.>>' (
Bilinear>>( 0
;>>0 1
return?? 
tex?? 
;?? 
}@@ 	
staticCC 
voidCC 
DrawTiledTextureCC $
(CC$ %
RectCC% )
rectCC* .
,CC. /
TextureCC0 7
texCC8 ;
)CC; <
{DD 	
floatEE 
uEE 
=EE 
rectEE 
.EE 
widthEE  
/EE! "
texEE# &
.EE& '
widthEE' ,
;EE, -
floatFF 
vFF 
=FF 
rectFF 
.FF 
heightFF !
/FF" #
texFF$ '
.FF' (
heightFF( .
;FF. /
RectHH 
	texCoordsHH 
=HH 
newHH  
RectHH! %
(HH% &
$numHH& '
,HH' (
$numHH) *
,HH* +
uHH, -
,HH- .
vHH/ 0
)HH0 1
;HH1 2
TextureWrapModeII 
originalModeII (
=II) *
texII+ .
.II. /
wrapModeII/ 7
;II7 8
texJJ 
.JJ 
wrapModeJJ 
=JJ 
TextureWrapModeJJ *
.JJ* +
RepeatJJ+ 1
;JJ1 2
GUIKK 
.KK $
DrawTextureWithTexCoordsKK (
(KK( )
rectKK) -
,KK- .
texKK/ 2
,KK2 3
	texCoordsKK4 =
)KK= >
;KK> ?
texLL 
.LL 
wrapModeLL 
=LL 
originalModeLL '
;LL' (
}MM 	
publicPP 
staticPP 
voidPP 

DrawSpritePP %
(PP% &
SpritePP& ,
spritePP- 3
,PP3 4
RectPP5 9
drawAreaPP: B
,PPB C
ColorPPD I
colorPPJ O
)PPO P
{QQ 	
ifRR 
(RR 
spriteRR 
==RR 
nullRR 
)RR 
returnSS 
;SS 
	Texture2DUU 
texUU 
=UU 
spriteUU "
.UU" #
textureUU# *
;UU* +
ifVV 
(VV 
texVV 
==VV 
nullVV 
)VV 
returnWW 
;WW 
RectYY 
outerYY 
=YY 
spriteYY 
.YY  
rectYY  $
;YY$ %
RectZZ 
innerZZ 
=ZZ 
outerZZ 
;ZZ 
inner[[ 
.[[ 
xMin[[ 
+=[[ 
sprite[[  
.[[  !
border[[! '
.[[' (
x[[( )
;[[) *
inner\\ 
.\\ 
yMin\\ 
+=\\ 
sprite\\  
.\\  !
border\\! '
.\\' (
y\\( )
;\\) *
inner]] 
.]] 
xMax]] 
-=]] 
sprite]]  
.]]  !
border]]! '
.]]' (
z]]( )
;]]) *
inner^^ 
.^^ 
yMax^^ 
-=^^ 
sprite^^  
.^^  !
border^^! '
.^^' (
w^^( )
;^^) *
Vector4`` 
uv4`` 
=`` 
UnityEngine`` %
.``% &
Sprites``& -
.``- .
DataUtility``. 9
.``9 :

GetOuterUV``: D
(``D E
sprite``E K
)``K L
;``L M
Rectaa 
uvaa 
=aa 
newaa 
Rectaa 
(aa 
uv4aa "
.aa" #
xaa# $
,aa$ %
uv4aa& )
.aa) *
yaa* +
,aa+ ,
uv4aa- 0
.aa0 1
zaa1 2
-aa3 4
uv4aa5 8
.aa8 9
xaa9 :
,aa: ;
uv4aa< ?
.aa? @
waa@ A
-aaB C
uv4aaD G
.aaG H
yaaH I
)aaI J
;aaJ K
Vector4bb 
paddingbb 
=bb 
UnityEnginebb )
.bb) *
Spritesbb* 1
.bb1 2
DataUtilitybb2 =
.bb= >

GetPaddingbb> H
(bbH I
spritebbI O
)bbO P
;bbP Q
paddingcc 
.cc 
xcc 
/=cc 
outercc 
.cc 
widthcc $
;cc$ %
paddingdd 
.dd 
ydd 
/=dd 
outerdd 
.dd 
heightdd %
;dd% &
paddingee 
.ee 
zee 
/=ee 
outeree 
.ee 
widthee $
;ee$ %
paddingff 
.ff 
wff 
/=ff 
outerff 
.ff 
heightff %
;ff% &

DrawSpritehh 
(hh 
texhh 
,hh 
drawAreahh $
,hh$ %
paddinghh& -
,hh- .
outerhh/ 4
,hh4 5
innerhh6 ;
,hh; <
uvhh= ?
,hh? @
colorhhA F
,hhF G
nullhhH L
)hhL M
;hhM N
}ii 	
publicll 
staticll 
voidll 

DrawSpritell %
(ll% &
Texturell& -
texll. 1
,ll1 2
Rectll3 7
drawAreall8 @
,ll@ A
RectllB F
outerllG L
,llL M
RectllN R
uvllS U
,llU V
ColorllW \
colorll] b
)llb c
{mm 	

DrawSpritenn 
(nn 
texnn 
,nn 
drawAreann $
,nn$ %
Vector4nn& -
.nn- .
zeronn. 2
,nn2 3
outernn4 9
,nn9 :
outernn; @
,nn@ A
uvnnB D
,nnD E
colornnF K
,nnK L
nullnnM Q
)nnQ R
;nnR S
}oo 	
privaterr 
staticrr 
voidrr 

DrawSpriterr &
(rr& '
Texturerr' .
texrr/ 2
,rr2 3
Rectrr4 8
drawArearr9 A
,rrA B
Vector4rrC J
paddingrrK R
,rrR S
RectrrT X
outerrrY ^
,rr^ _
Rectrr` d
innerrre j
,rrj k
Rectrrl p
uvrrq s
,rrs t
Colorrru z
color	rr{ Ä
,
rrÄ Å
Material
rrÇ ä
mat
rrã é
)
rré è
{ss 	
Rectuu 
	outerRectuu 
=uu 
drawAreauu %
;uu% &
	outerRectvv 
.vv 
widthvv 
=vv 
Mathfvv #
.vv# $
Absvv$ '
(vv' (
outervv( -
.vv- .
widthvv. 3
)vv3 4
;vv4 5
	outerRectww 
.ww 
heightww 
=ww 
Mathfww $
.ww$ %
Absww% (
(ww( )
outerww) .
.ww. /
heightww/ 5
)ww5 6
;ww6 7
ifyy 
(yy 
	outerRectyy 
.yy 
widthyy 
>yy  !
$numyy" $
)yy$ %
{zz 
float{{ 
f{{ 
={{ 
drawArea{{ "
.{{" #
width{{# (
/{{) *
	outerRect{{+ 4
.{{4 5
width{{5 :
;{{: ;
	outerRect|| 
.|| 
width|| 
*=||  "
f||# $
;||$ %
	outerRect}} 
.}} 
height}}  
*=}}! #
f}}$ %
;}}% &
}~~ 
if
ÄÄ 
(
ÄÄ 
drawArea
ÄÄ 
.
ÄÄ 
height
ÄÄ 
>
ÄÄ  !
	outerRect
ÄÄ" +
.
ÄÄ+ ,
height
ÄÄ, 2
)
ÄÄ2 3
{
ÅÅ 
	outerRect
ÇÇ 
.
ÇÇ 
y
ÇÇ 
+=
ÇÇ 
(
ÇÇ  
drawArea
ÇÇ  (
.
ÇÇ( )
height
ÇÇ) /
-
ÇÇ0 1
	outerRect
ÇÇ2 ;
.
ÇÇ; <
height
ÇÇ< B
)
ÇÇB C
*
ÇÇD E
$num
ÇÇF J
;
ÇÇJ K
}
ÉÉ 
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
	outerRect
ÑÑ 
.
ÑÑ 
height
ÑÑ %
>
ÑÑ& '
drawArea
ÑÑ( 0
.
ÑÑ0 1
height
ÑÑ1 7
)
ÑÑ7 8
{
ÖÖ 
float
ÜÜ 
f
ÜÜ 
=
ÜÜ 
drawArea
ÜÜ "
.
ÜÜ" #
height
ÜÜ# )
/
ÜÜ* +
	outerRect
ÜÜ, 5
.
ÜÜ5 6
height
ÜÜ6 <
;
ÜÜ< =
	outerRect
áá 
.
áá 
width
áá 
*=
áá  "
f
áá# $
;
áá$ %
	outerRect
àà 
.
àà 
height
àà  
*=
àà! #
f
àà$ %
;
àà% &
}
ââ 
if
ãã 
(
ãã 
drawArea
ãã 
.
ãã 
width
ãã 
>
ãã  
	outerRect
ãã! *
.
ãã* +
width
ãã+ 0
)
ãã0 1
	outerRect
åå 
.
åå 
x
åå 
+=
åå 
(
åå  
drawArea
åå  (
.
åå( )
width
åå) .
-
åå/ 0
	outerRect
åå1 :
.
åå: ;
width
åå; @
)
åå@ A
*
ååB C
$num
ååD H
;
ååH I
	EditorGUI
èè 
.
èè $
DrawTextureTransparent
èè ,
(
èè, -
	outerRect
èè- 6
,
èè6 7
null
èè8 <
,
èè< =
	ScaleMode
èè> G
.
èèG H

ScaleToFit
èèH R
,
èèR S
outer
èèT Y
.
èèY Z
width
èèZ _
/
èè` a
outer
èèb g
.
èèg h
height
èèh n
)
èèn o
;
èèo p
GUI
íí 
.
íí 
color
íí 
=
íí 
color
íí 
;
íí 
Rect
îî 
paddedTexArea
îî 
=
îî  
new
îî! $
Rect
îî% )
(
îî) *
	outerRect
ïï 
.
ïï 
x
ïï 
+
ïï 
	outerRect
ïï '
.
ïï' (
width
ïï( -
*
ïï. /
padding
ïï0 7
.
ïï7 8
x
ïï8 9
,
ïï9 :
	outerRect
ññ 
.
ññ 
y
ññ 
+
ññ 
	outerRect
ññ '
.
ññ' (
height
ññ( .
*
ññ/ 0
padding
ññ1 8
.
ññ8 9
w
ññ9 :
,
ññ: ;
	outerRect
óó 
.
óó 
width
óó 
-
óó  !
(
óó" #
	outerRect
óó# ,
.
óó, -
width
óó- 2
*
óó3 4
(
óó5 6
padding
óó6 =
.
óó= >
z
óó> ?
+
óó@ A
padding
óóB I
.
óóI J
x
óóJ K
)
óóK L
)
óóL M
,
óóM N
	outerRect
òò 
.
òò 
height
òò  
-
òò! "
(
òò# $
	outerRect
òò$ -
.
òò- .
height
òò. 4
*
òò5 6
(
òò7 8
padding
òò8 ?
.
òò? @
w
òò@ A
+
òòB C
padding
òòD K
.
òòK L
y
òòL M
)
òòM N
)
òòN O
)
ôô 
;
ôô 
if
õõ 
(
õõ 
mat
õõ 
==
õõ 
null
õõ 
)
õõ 
{
úú 
GUI
ùù 
.
ùù &
DrawTextureWithTexCoords
ùù ,
(
ùù, -
paddedTexArea
ùù- :
,
ùù: ;
tex
ùù< ?
,
ùù? @
uv
ùùA C
,
ùùC D
true
ùùE I
)
ùùI J
;
ùùJ K
}
ûû 
else
üü 
{
†† 
	EditorGUI
££ 
.
££  
DrawPreviewTexture
££ ,
(
££, -
paddedTexArea
££- :
,
££: ;
tex
££< ?
,
££? @
mat
££A D
)
££D E
;
££E F
}
§§ 
GUI
ßß 
.
ßß 

BeginGroup
ßß 
(
ßß 
	outerRect
ßß $
)
ßß$ %
;
ßß% &
{
®® 
tex
©© 
=
©© 
contrastTexture
©© %
;
©©% &
GUI
™™ 
.
™™ 
color
™™ 
=
™™ 
Color
™™ !
.
™™! "
white
™™" '
;
™™' (
if
¨¨ 
(
¨¨ 
inner
¨¨ 
.
¨¨ 
xMin
¨¨ 
!=
¨¨ !
outer
¨¨" '
.
¨¨' (
xMin
¨¨( ,
)
¨¨, -
{
≠≠ 
float
ÆÆ 
x
ÆÆ 
=
ÆÆ 
(
ÆÆ 
inner
ÆÆ $
.
ÆÆ$ %
xMin
ÆÆ% )
-
ÆÆ* +
outer
ÆÆ, 1
.
ÆÆ1 2
xMin
ÆÆ2 6
)
ÆÆ6 7
/
ÆÆ8 9
outer
ÆÆ: ?
.
ÆÆ? @
width
ÆÆ@ E
*
ÆÆF G
	outerRect
ÆÆH Q
.
ÆÆQ R
width
ÆÆR W
-
ÆÆX Y
$num
ÆÆZ [
;
ÆÆ[ \
DrawTiledTexture
ØØ $
(
ØØ$ %
new
ØØ% (
Rect
ØØ) -
(
ØØ- .
x
ØØ. /
,
ØØ/ 0
$num
ØØ1 3
,
ØØ3 4
$num
ØØ5 7
,
ØØ7 8
	outerRect
ØØ9 B
.
ØØB C
height
ØØC I
)
ØØI J
,
ØØJ K
tex
ØØL O
)
ØØO P
;
ØØP Q
}
∞∞ 
if
≤≤ 
(
≤≤ 
inner
≤≤ 
.
≤≤ 
xMax
≤≤ 
!=
≤≤ !
outer
≤≤" '
.
≤≤' (
xMax
≤≤( ,
)
≤≤, -
{
≥≥ 
float
¥¥ 
x
¥¥ 
=
¥¥ 
(
¥¥ 
inner
¥¥ $
.
¥¥$ %
xMax
¥¥% )
-
¥¥* +
outer
¥¥, 1
.
¥¥1 2
xMin
¥¥2 6
)
¥¥6 7
/
¥¥8 9
outer
¥¥: ?
.
¥¥? @
width
¥¥@ E
*
¥¥F G
	outerRect
¥¥H Q
.
¥¥Q R
width
¥¥R W
-
¥¥X Y
$num
¥¥Z [
;
¥¥[ \
DrawTiledTexture
µµ $
(
µµ$ %
new
µµ% (
Rect
µµ) -
(
µµ- .
x
µµ. /
,
µµ/ 0
$num
µµ1 3
,
µµ3 4
$num
µµ5 7
,
µµ7 8
	outerRect
µµ9 B
.
µµB C
height
µµC I
)
µµI J
,
µµJ K
tex
µµL O
)
µµO P
;
µµP Q
}
∂∂ 
if
∏∏ 
(
∏∏ 
inner
∏∏ 
.
∏∏ 
yMin
∏∏ 
!=
∏∏ !
outer
∏∏" '
.
∏∏' (
yMin
∏∏( ,
)
∏∏, -
{
ππ 
float
ªª 
y
ªª 
=
ªª 
(
ªª 
inner
ªª $
.
ªª$ %
yMin
ªª% )
-
ªª* +
outer
ªª, 1
.
ªª1 2
yMin
ªª2 6
)
ªª6 7
/
ªª8 9
outer
ªª: ?
.
ªª? @
height
ªª@ F
*
ªªG H
	outerRect
ªªI R
.
ªªR S
height
ªªS Y
-
ªªZ [
$num
ªª\ ]
;
ªª] ^
DrawTiledTexture
ºº $
(
ºº$ %
new
ºº% (
Rect
ºº) -
(
ºº- .
$num
ºº. 0
,
ºº0 1
	outerRect
ºº2 ;
.
ºº; <
height
ºº< B
-
ººC D
y
ººE F
,
ººF G
	outerRect
ººH Q
.
ººQ R
width
ººR W
,
ººW X
$num
ººY [
)
ºº[ \
,
ºº\ ]
tex
ºº^ a
)
ººa b
;
ººb c
}
ΩΩ 
if
øø 
(
øø 
inner
øø 
.
øø 
yMax
øø 
!=
øø !
outer
øø" '
.
øø' (
yMax
øø( ,
)
øø, -
{
¿¿ 
float
¡¡ 
y
¡¡ 
=
¡¡ 
(
¡¡ 
inner
¡¡ $
.
¡¡$ %
yMax
¡¡% )
-
¡¡* +
outer
¡¡, 1
.
¡¡1 2
yMin
¡¡2 6
)
¡¡6 7
/
¡¡8 9
outer
¡¡: ?
.
¡¡? @
height
¡¡@ F
*
¡¡G H
	outerRect
¡¡I R
.
¡¡R S
height
¡¡S Y
-
¡¡Z [
$num
¡¡\ ]
;
¡¡] ^
DrawTiledTexture
¬¬ $
(
¬¬$ %
new
¬¬% (
Rect
¬¬) -
(
¬¬- .
$num
¬¬. 0
,
¬¬0 1
	outerRect
¬¬2 ;
.
¬¬; <
height
¬¬< B
-
¬¬C D
y
¬¬E F
,
¬¬F G
	outerRect
¬¬H Q
.
¬¬Q R
width
¬¬R W
,
¬¬W X
$num
¬¬Y [
)
¬¬[ \
,
¬¬\ ]
tex
¬¬^ a
)
¬¬a b
;
¬¬b c
}
√√ 
}
ƒƒ 
GUI
∆∆ 
.
∆∆ 
EndGroup
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 	
}
»» 
}…… Ü[
ãC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\GraphicEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
MaskableGraphic (
)( )
,) *
false+ 0
)0 1
]1 2
[ "
CanEditMultipleObjects 
] 
public 

class 
GraphicEditor 
:  
Editor! '
{ 
	protected 
SerializedProperty $
m_Script% -
;- .
	protected 
SerializedProperty $
m_Color% ,
;, -
	protected 
SerializedProperty $

m_Material% /
;/ 0
	protected 
SerializedProperty $
m_RaycastTarget% 4
;4 5
	protected 
SerializedProperty $
m_RaycastPadding% 5
;5 6
	protected 
SerializedProperty $

m_Maskable% /
;/ 0
private 

GUIContent "
m_CorrectButtonContent 1
;1 2
	protected 
AnimBool 
m_ShowNativeSize +
;+ ,

GUIContent 
m_PaddingContent #
;# $

GUIContent 
m_LeftContent  
;  !

GUIContent 
m_RightContent !
;! "

GUIContent 
m_TopContent 
;  

GUIContent 
m_BottomContent "
;" #
static   
private   
bool   
m_ShowPadding   )
=  * +
false  , 1
;  1 2
	protected"" 
virtual"" 
void"" 
	OnDisable"" (
(""( )
)"") *
{## 	
Tools$$ 
.$$ 
hidden$$ 
=$$ 
false$$  
;$$  !
m_ShowNativeSize%% 
.%% 
valueChanged%% )
.%%) *
RemoveListener%%* 8
(%%8 9
Repaint%%9 @
)%%@ A
;%%A B
}&& 	
	protected(( 
virtual(( 
void(( 
OnEnable(( '
(((' (
)((( )
{)) 	"
m_CorrectButtonContent** "
=**# $
EditorGUIUtility**% 5
.**5 6
TrTextContent**6 C
(**C D
$str**D U
,**U V
$str**W |
)**| }
;**} ~
m_PaddingContent++ 
=++ 
EditorGUIUtility++ /
.++/ 0
TrTextContent++0 =
(++= >
$str++> O
)++O P
;++P Q
m_LeftContent,, 
=,, 
EditorGUIUtility,, ,
.,,, -
TrTextContent,,- :
(,,: ;
$str,,; A
),,A B
;,,B C
m_RightContent-- 
=-- 
EditorGUIUtility-- -
.--- .
TrTextContent--. ;
(--; <
$str--< C
)--C D
;--D E
m_TopContent.. 
=.. 
EditorGUIUtility.. +
...+ ,
TrTextContent.., 9
(..9 :
$str..: ?
)..? @
;..@ A
m_BottomContent// 
=// 
EditorGUIUtility// .
.//. /
TrTextContent/// <
(//< =
$str//= E
)//E F
;//F G
m_Script11 
=11 
serializedObject11 '
.11' (
FindProperty11( 4
(114 5
$str115 ?
)11? @
;11@ A
m_Color22 
=22 
serializedObject22 &
.22& '
FindProperty22' 3
(223 4
$str224 =
)22= >
;22> ?

m_Material33 
=33 
serializedObject33 )
.33) *
FindProperty33* 6
(336 7
$str337 C
)33C D
;33D E
m_RaycastTarget44 
=44 
serializedObject44 .
.44. /
FindProperty44/ ;
(44; <
$str44< M
)44M N
;44N O
m_RaycastPadding55 
=55 
serializedObject55 /
.55/ 0
FindProperty550 <
(55< =
$str55= O
)55O P
;55P Q

m_Maskable66 
=66 
serializedObject66 )
.66) *
FindProperty66* 6
(666 7
$str667 C
)66C D
;66D E
m_ShowNativeSize88 
=88 
new88 "
AnimBool88# +
(88+ ,
false88, 1
)881 2
;882 3
m_ShowNativeSize99 
.99 
valueChanged99 )
.99) *
AddListener99* 5
(995 6
Repaint996 =
)99= >
;99> ?
}:: 	
public<< 
override<< 
void<< 
OnInspectorGUI<< +
(<<+ ,
)<<, -
{== 	
serializedObject>> 
.>> 
Update>> #
(>># $
)>>$ %
;>>% &
EditorGUILayout?? 
.?? 
PropertyField?? )
(??) *
m_Script??* 2
)??2 3
;??3 4!
AppearanceControlsGUI@@ !
(@@! "
)@@" #
;@@# $
RaycastControlsGUIAA 
(AA 
)AA  
;AA  !
MaskableControlsGUIBB 
(BB  
)BB  !
;BB! "
serializedObjectCC 
.CC #
ApplyModifiedPropertiesCC 4
(CC4 5
)CC5 6
;CC6 7
}DD 	
	protectedKK 
voidKK 
SetShowNativeSizeKK (
(KK( )
boolKK) -
showKK. 2
,KK2 3
boolKK4 8
instantKK9 @
)KK@ A
{LL 	
ifMM 
(MM 
instantMM 
)MM 
m_ShowNativeSizeNN  
.NN  !
valueNN! &
=NN' (
showNN) -
;NN- .
elseOO 
m_ShowNativeSizePP  
.PP  !
targetPP! '
=PP( )
showPP* .
;PP. /
}QQ 	
	protectedVV 
voidVV 
NativeSizeButtonGUIVV *
(VV* +
)VV+ ,
{WW 	
ifXX 
(XX 
EditorGUILayoutXX 
.XX  
BeginFadeGroupXX  .
(XX. /
m_ShowNativeSizeXX/ ?
.XX? @
fadedXX@ E
)XXE F
)XXF G
{YY 
EditorGUILayoutZZ 
.ZZ  
BeginHorizontalZZ  /
(ZZ/ 0
)ZZ0 1
;ZZ1 2
{[[ 
	GUILayout\\ 
.\\ 
Space\\ #
(\\# $
EditorGUIUtility\\$ 4
.\\4 5

labelWidth\\5 ?
)\\? @
;\\@ A
if]] 
(]] 
	GUILayout]] !
.]]! "
Button]]" (
(]]( )"
m_CorrectButtonContent]]) ?
,]]? @
EditorStyles]]A M
.]]M N

miniButton]]N X
)]]X Y
)]]Y Z
{^^ 
foreach__ 
(__  !
Graphic__! (
graphic__) 0
in__1 3
targets__4 ;
.__; <
Select__< B
(__B C
obj__C F
=>__G I
obj__J M
as__N P
Graphic__Q X
)__X Y
)__Y Z
{`` 
Undoaa  
.aa  !
RecordObjectaa! -
(aa- .
graphicaa. 5
.aa5 6
rectTransformaa6 C
,aaC D
$straaE V
)aaV W
;aaW X
graphicbb #
.bb# $
SetNativeSizebb$ 1
(bb1 2
)bb2 3
;bb3 4
EditorUtilitycc )
.cc) *
SetDirtycc* 2
(cc2 3
graphiccc3 :
)cc: ;
;cc; <
}dd 
}ee 
}ff 
EditorGUILayoutgg 
.gg  
EndHorizontalgg  -
(gg- .
)gg. /
;gg/ 0
}hh 
EditorGUILayoutii 
.ii 
EndFadeGroupii (
(ii( )
)ii) *
;ii* +
}jj 	
	protectedll 
voidll 
MaskableControlsGUIll *
(ll* +
)ll+ ,
{mm 	
EditorGUILayoutnn 
.nn 
PropertyFieldnn )
(nn) *

m_Maskablenn* 4
)nn4 5
;nn5 6
}oo 	
	protectedtt 
voidtt !
AppearanceControlsGUItt ,
(tt, -
)tt- .
{uu 	
EditorGUILayoutvv 
.vv 
PropertyFieldvv )
(vv) *
m_Colorvv* 1
)vv1 2
;vv2 3
EditorGUILayoutww 
.ww 
PropertyFieldww )
(ww) *

m_Materialww* 4
)ww4 5
;ww5 6
}xx 	
	protected}} 
void}} 
RaycastControlsGUI}} )
(}}) *
)}}* +
{~~ 	
EditorGUILayout 
. 
PropertyField )
() *
m_RaycastTarget* 9
)9 :
;: ;
m_ShowPadding
ÅÅ 
=
ÅÅ 
EditorGUILayout
ÅÅ +
.
ÅÅ+ ,
Foldout
ÅÅ, 3
(
ÅÅ3 4
m_ShowPadding
ÅÅ4 A
,
ÅÅA B
m_PaddingContent
ÅÅC S
)
ÅÅS T
;
ÅÅT U
if
ÉÉ 
(
ÉÉ 
m_ShowPadding
ÉÉ 
)
ÉÉ 
{
ÑÑ 
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
check
ÖÖ  
=
ÖÖ! "
new
ÖÖ# &
	EditorGUI
ÖÖ' 0
.
ÖÖ0 1
ChangeCheckScope
ÖÖ1 A
(
ÖÖA B
)
ÖÖB C
)
ÖÖC D
{
ÜÜ 
	EditorGUI
áá 
.
áá 
indentLevel
áá )
++
áá) +
;
áá+ ,
Vector4
àà 

newPadding
àà &
=
àà' (
m_RaycastPadding
àà) 9
.
àà9 :
vector4Value
àà: F
;
ààF G

newPadding
ää 
.
ää 
x
ää  
=
ää! "
EditorGUILayout
ää# 2
.
ää2 3

FloatField
ää3 =
(
ää= >
m_LeftContent
ää> K
,
ääK L

newPadding
ääM W
.
ääW X
x
ääX Y
)
ääY Z
;
ääZ [

newPadding
ãã 
.
ãã 
z
ãã  
=
ãã! "
EditorGUILayout
ãã# 2
.
ãã2 3

FloatField
ãã3 =
(
ãã= >
m_RightContent
ãã> L
,
ããL M

newPadding
ããN X
.
ããX Y
z
ããY Z
)
ããZ [
;
ãã[ \

newPadding
åå 
.
åå 
w
åå  
=
åå! "
EditorGUILayout
åå# 2
.
åå2 3

FloatField
åå3 =
(
åå= >
m_TopContent
åå> J
,
ååJ K

newPadding
ååL V
.
ååV W
w
ååW X
)
ååX Y
;
ååY Z

newPadding
çç 
.
çç 
y
çç  
=
çç! "
EditorGUILayout
çç# 2
.
çç2 3

FloatField
çç3 =
(
çç= >
m_BottomContent
çç> M
,
ççM N

newPadding
ççO Y
.
ççY Z
y
ççZ [
)
çç[ \
;
çç\ ]
if
èè 
(
èè 
check
èè 
.
èè 
changed
èè %
)
èè% &
{
êê 
m_RaycastPadding
ëë (
.
ëë( )
vector4Value
ëë) 5
=
ëë6 7

newPadding
ëë8 B
;
ëëB C
}
íí 
	EditorGUI
ìì 
.
ìì 
indentLevel
ìì )
--
ìì) +
;
ìì+ ,
}
îî 
}
ïï 
}
ññ 	
}
óó 
}òò  &
ìC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\GridLayoutGroupEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
GridLayoutGroup (
)( )
,) *
true+ /
)/ 0
]0 1
[		 "
CanEditMultipleObjects		 
]		 
public 

class !
GridLayoutGroupEditor &
:' (
Editor) /
{ 
SerializedProperty 
	m_Padding $
;$ %
SerializedProperty 

m_CellSize %
;% &
SerializedProperty 
	m_Spacing $
;$ %
SerializedProperty 
m_StartCorner (
;( )
SerializedProperty 
m_StartAxis &
;& '
SerializedProperty 
m_ChildAlignment +
;+ ,
SerializedProperty 
m_Constraint '
;' (
SerializedProperty 
m_ConstraintCount ,
;, -
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
	m_Padding 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 A
)A B
;B C

m_CellSize 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 C
)C D
;D E
	m_Spacing 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 A
)A B
;B C
m_StartCorner 
= 
serializedObject ,
., -
FindProperty- 9
(9 :
$str: I
)I J
;J K
m_StartAxis 
= 
serializedObject *
.* +
FindProperty+ 7
(7 8
$str8 E
)E F
;F G
m_ChildAlignment   
=   
serializedObject   /
.  / 0
FindProperty  0 <
(  < =
$str  = O
)  O P
;  P Q
m_Constraint!! 
=!! 
serializedObject!! +
.!!+ ,
FindProperty!!, 8
(!!8 9
$str!!9 G
)!!G H
;!!H I
m_ConstraintCount"" 
="" 
serializedObject""  0
.""0 1
FindProperty""1 =
(""= >
$str""> Q
)""Q R
;""R S
}## 	
public%% 
override%% 
void%% 
OnInspectorGUI%% +
(%%+ ,
)%%, -
{&& 	
serializedObject'' 
.'' 
Update'' #
(''# $
)''$ %
;''% &
EditorGUILayout(( 
.(( 
PropertyField(( )
((() *
	m_Padding((* 3
,((3 4
true((5 9
)((9 :
;((: ;
EditorGUILayout)) 
.)) 
PropertyField)) )
())) *

m_CellSize))* 4
,))4 5
true))6 :
))): ;
;)); <
EditorGUILayout** 
.** 
PropertyField** )
(**) *
	m_Spacing*** 3
,**3 4
true**5 9
)**9 :
;**: ;
EditorGUILayout++ 
.++ 
PropertyField++ )
(++) *
m_StartCorner++* 7
,++7 8
true++9 =
)++= >
;++> ?
EditorGUILayout,, 
.,, 
PropertyField,, )
(,,) *
m_StartAxis,,* 5
,,,5 6
true,,7 ;
),,; <
;,,< =
EditorGUILayout-- 
.-- 
PropertyField-- )
(--) *
m_ChildAlignment--* :
,--: ;
true--< @
)--@ A
;--A B
EditorGUILayout.. 
... 
PropertyField.. )
(..) *
m_Constraint..* 6
,..6 7
true..8 <
)..< =
;..= >
if// 
(// 
m_Constraint// 
.// 
enumValueIndex// +
>//, -
$num//. /
)/// 0
{00 
	EditorGUI11 
.11 
indentLevel11 %
++11% '
;11' (
EditorGUILayout22 
.22  
PropertyField22  -
(22- .
m_ConstraintCount22. ?
,22? @
true22A E
)22E F
;22F G
	EditorGUI33 
.33 
indentLevel33 %
--33% '
;33' (
}44 
serializedObject55 
.55 #
ApplyModifiedProperties55 4
(554 5
)555 6
;556 7
}66 	
}77 
}88 ±*
ïC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\AspectRatioFitterEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
AspectRatioFitter *
)* +
,+ ,
true- 1
)1 2
]2 3
[ "
CanEditMultipleObjects 
] 
public 

class #
AspectRatioFitterEditor (
:) * 
SelfControllerEditor+ ?
{ 
SerializedProperty 
m_AspectMode '
;' (
SerializedProperty 
m_AspectRatio (
;( )
AnimBool 

m_ModeBool 
; 
private 
AspectRatioFitter !
aspectRatioFitter" 3
;3 4
	protected 
virtual 
void 
OnEnable '
(' (
)( )
{ 	
m_AspectMode 
= 
serializedObject +
.+ ,
FindProperty, 8
(8 9
$str9 G
)G H
;H I
m_AspectRatio 
= 
serializedObject ,
., -
FindProperty- 9
(9 :
$str: I
)I J
;J K
aspectRatioFitter 
= 
target  &
as' )
AspectRatioFitter* ;
;; <

m_ModeBool 
= 
new 
AnimBool %
(% &
m_AspectMode& 2
.2 3
intValue3 ;
!=< >
$num? @
)@ A
;A B

m_ModeBool 
. 
valueChanged #
.# $
AddListener$ /
(/ 0
Repaint0 7
)7 8
;8 9
} 	
public   
override   
void   
OnInspectorGUI   +
(  + ,
)  , -
{!! 	
serializedObject"" 
."" 
Update"" #
(""# $
)""$ %
;""% &
EditorGUILayout## 
.## 
PropertyField## )
(##) *
m_AspectMode##* 6
)##6 7
;##7 8

m_ModeBool%% 
.%% 
target%% 
=%% 
m_AspectMode%%  ,
.%%, -
intValue%%- 5
!=%%6 8
$num%%9 :
;%%: ;
if'' 
('' 
EditorGUILayout'' 
.''  
BeginFadeGroup''  .
(''. /

m_ModeBool''/ 9
.''9 :
faded'': ?
)''? @
)''@ A
EditorGUILayout(( 
.((  
PropertyField((  -
(((- .
m_AspectRatio((. ;
)((; <
;((< =
EditorGUILayout)) 
.)) 
EndFadeGroup)) (
())( )
)))) *
;))* +
serializedObject++ 
.++ #
ApplyModifiedProperties++ 4
(++4 5
)++5 6
;++6 7
if-- 
(-- 
aspectRatioFitter-- !
)--! "
{.. 
if// 
(// 
!// 
aspectRatioFitter// &
.//& '
IsAspectModeValid//' 8
(//8 9
)//9 :
)//: ;
ShowNoParentWarning00 '
(00' (
)00( )
;00) *
if11 
(11 
!11 
aspectRatioFitter11 &
.11& '$
IsComponentValidOnObject11' ?
(11? @
)11@ A
)11A B.
"ShowCanvasRenderModeInvalidWarning22 6
(226 7
)227 8
;228 9
}33 
base55 
.55 
OnInspectorGUI55 
(55  
)55  !
;55! "
}66 	
	protected88 
virtual88 
void88 
	OnDisable88 (
(88( )
)88) *
{99 	
aspectRatioFitter:: 
=:: 
null::  $
;::$ %

m_ModeBool;; 
.;; 
valueChanged;; #
.;;# $
RemoveListener;;$ 2
(;;2 3
Repaint;;3 :
);;: ;
;;;; <
}<< 	
private>> 
static>> 
void>> 
ShowNoParentWarning>> /
(>>/ 0
)>>0 1
{?? 	
var@@ 
text@@ 
=@@ 
L10n@@ 
.@@ 
Tr@@ 
(@@ 
$str	@@ É
)
@@É Ñ
;
@@Ñ Ö
EditorGUILayoutAA 
.AA 
HelpBoxAA #
(AA# $
textAA$ (
,AA( )
MessageTypeAA* 5
.AA5 6
WarningAA6 =
,AA= >
trueAA? C
)AAC D
;AAD E
}BB 	
privateDD 
staticDD 
voidDD .
"ShowCanvasRenderModeInvalidWarningDD >
(DD> ?
)DD? @
{EE 	
varFF 
textFF 
=FF 
L10nFF 
.FF 
TrFF 
(FF 
$str	FF é
)
FFé è
;
FFè ê
EditorGUILayoutGG 
.GG 
HelpBoxGG #
(GG# $
textGG$ (
,GG( )
MessageTypeGG* 5
.GG5 6
WarningGG6 =
,GG= >
trueGG? C
)GGC D
;GGD E
}HH 	
}II 
}JJ €O
çC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ScrollbarEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
	Scrollbar "
)" #
,# $
true% )
)) *
]* +
[ "
CanEditMultipleObjects 
] 
public 

class 
ScrollbarEditor  
:! "
SelectableEditor# 3
{ 
SerializedProperty 
m_HandleRect '
;' (
SerializedProperty 
m_Direction &
;& '
SerializedProperty 
m_Value "
;" #
SerializedProperty 
m_Size !
;! "
SerializedProperty 
m_NumberOfSteps *
;* +
SerializedProperty 
m_OnValueChanged +
;+ ,
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
; 
m_HandleRect 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ N
)N O
;O P
m_Direction 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ M
)M N
;N O
m_Value 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ I
)I J
;J K
m_Size 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ H
)H I
;I J
m_NumberOfSteps 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ Q
)Q R
;R S
m_OnValueChanged 
=  !
serializedObject" 2
.2 3
FindProperty3 ?
(? @
$str@ R
)R S
;S T
}   	
public"" 
override"" 
void"" 
OnInspectorGUI"" +
(""+ ,
)"", -
{## 	
base$$ 
.$$ 
OnInspectorGUI$$ 
($$  
)$$  !
;$$! "
EditorGUILayout%% 
.%% 
Space%% !
(%%! "
)%%" #
;%%# $
serializedObject'' 
.'' 
Update'' #
(''# $
)''$ %
;''% &
	EditorGUI** 
.** 
BeginChangeCheck** &
(**& '
)**' (
;**( )
RectTransform++ 
newRectTransform++ *
=+++ ,
EditorGUILayout++- <
.++< =
ObjectField++= H
(++H I
$str++I V
,++V W
m_HandleRect++X d
.++d e 
objectReferenceValue++e y
,++y z
typeof	++{ Å
(
++Å Ç
RectTransform
++Ç è
)
++è ê
,
++ê ë
true
++í ñ
)
++ñ ó
as
++ò ö
RectTransform
++õ ®
;
++® ©
if,, 
(,, 
	EditorGUI,, 
.,, 
EndChangeCheck,, (
(,,( )
),,) *
),,* +
{-- 
List// 
<// 
Object// 
>// 
modifiedObjects// ,
=//- .
new/// 2
List//3 7
<//7 8
Object//8 >
>//> ?
(//? @
)//@ A
;//A B
modifiedObjects00 
.00  
Add00  #
(00# $
newRectTransform00$ 4
)004 5
;005 6
foreach11 
(11 
var11 
target11 #
in11$ &
m_HandleRect11' 3
.113 4
serializedObject114 D
.11D E
targetObjects11E R
)11R S
{22 
MonoBehaviour33 !
mb33" $
=33% &
target33' -
as33. 0
MonoBehaviour331 >
;33> ?
if44 
(44 
mb44 
==44 
null44 "
)44" #
continue55  
;55  !
modifiedObjects77 #
.77# $
Add77$ '
(77' (
mb77( *
)77* +
;77+ ,
modifiedObjects88 #
.88# $
Add88$ '
(88' (
mb88( *
.88* +
GetComponent88+ 7
<887 8
RectTransform888 E
>88E F
(88F G
)88G H
)88H I
;88I J
}99 
Undo:: 
.:: 
RecordObjects:: "
(::" #
modifiedObjects::# 2
.::2 3
ToArray::3 :
(::: ;
)::; <
,::< =
$str::> R
)::R S
;::S T
m_HandleRect;; 
.;;  
objectReferenceValue;; 1
=;;2 3
newRectTransform;;4 D
;;;D E
}<< 
if>> 
(>> 
m_HandleRect>> 
.>>  
objectReferenceValue>> 1
!=>>2 4
null>>5 9
)>>9 :
{?? 
	EditorGUI@@ 
.@@ 
BeginChangeCheck@@ *
(@@* +
)@@+ ,
;@@, -
EditorGUILayoutAA 
.AA  
PropertyFieldAA  -
(AA- .
m_DirectionAA. 9
)AA9 :
;AA: ;
ifBB 
(BB 
	EditorGUIBB 
.BB 
EndChangeCheckBB ,
(BB, -
)BB- .
)BB. /
{CC 
	ScrollbarDD 
.DD 
	DirectionDD '
	directionDD( 1
=DD2 3
(DD4 5
	ScrollbarDD5 >
.DD> ?
	DirectionDD? H
)DDH I
m_DirectionDDI T
.DDT U
enumValueIndexDDU c
;DDc d
foreachEE 
(EE 
varEE  
objEE! $
inEE% '
serializedObjectEE( 8
.EE8 9
targetObjectsEE9 F
)EEF G
{FF 
	ScrollbarGG !
	scrollbarGG" +
=GG, -
objGG. 1
asGG2 4
	ScrollbarGG5 >
;GG> ?
	scrollbarHH !
.HH! "
SetDirectionHH" .
(HH. /
	directionHH/ 8
,HH8 9
trueHH: >
)HH> ?
;HH? @
}II 
}JJ 
EditorGUILayoutLL 
.LL  
PropertyFieldLL  -
(LL- .
m_ValueLL. 5
)LL5 6
;LL6 7
EditorGUILayoutMM 
.MM  
PropertyFieldMM  -
(MM- .
m_SizeMM. 4
)MM4 5
;MM5 6
EditorGUILayoutNN 
.NN  
PropertyFieldNN  -
(NN- .
m_NumberOfStepsNN. =
)NN= >
;NN> ?
boolPP 
warningPP 
=PP 
falsePP $
;PP$ %
foreachQQ 
(QQ 
varQQ 
objQQ  
inQQ! #
serializedObjectQQ$ 4
.QQ4 5
targetObjectsQQ5 B
)QQB C
{RR 
	ScrollbarSS 
	scrollbarSS '
=SS( )
objSS* -
asSS. 0
	ScrollbarSS1 :
;SS: ;
	ScrollbarTT 
.TT 
	DirectionTT '
dirTT( +
=TT, -
	scrollbarTT. 7
.TT7 8
	directionTT8 A
;TTA B
ifUU 
(UU 
dirUU 
==UU 
	ScrollbarUU (
.UU( )
	DirectionUU) 2
.UU2 3
LeftToRightUU3 >
||UU? A
dirUUB E
==UUF H
	ScrollbarUUI R
.UUR S
	DirectionUUS \
.UU\ ]
RightToLeftUU] h
)UUh i
warningVV 
=VV  !
(VV" #
	scrollbarVV# ,
.VV, -

navigationVV- 7
.VV7 8
modeVV8 <
!=VV= ?

NavigationVV@ J
.VVJ K
ModeVVK O
.VVO P
	AutomaticVVP Y
&&VVZ \
(VV] ^
	scrollbarVV^ g
.VVg h 
FindSelectableOnLeftVVh |
(VV| }
)VV} ~
!=	VV Å
null
VVÇ Ü
||
VVá â
	scrollbar
VVä ì
.
VVì î#
FindSelectableOnRight
VVî ©
(
VV© ™
)
VV™ ´
!=
VV¨ Æ
null
VVØ ≥
)
VV≥ ¥
)
VV¥ µ
;
VVµ ∂
elseWW 
warningXX 
=XX  !
(XX" #
	scrollbarXX# ,
.XX, -

navigationXX- 7
.XX7 8
modeXX8 <
!=XX= ?

NavigationXX@ J
.XXJ K
ModeXXK O
.XXO P
	AutomaticXXP Y
&&XXZ \
(XX] ^
	scrollbarXX^ g
.XXg h 
FindSelectableOnDownXXh |
(XX| }
)XX} ~
!=	XX Å
null
XXÇ Ü
||
XXá â
	scrollbar
XXä ì
.
XXì î 
FindSelectableOnUp
XXî ¶
(
XX¶ ß
)
XXß ®
!=
XX© ´
null
XX¨ ∞
)
XX∞ ±
)
XX± ≤
;
XX≤ ≥
}YY 
if[[ 
([[ 
warning[[ 
)[[ 
EditorGUILayout\\ #
.\\# $
HelpBox\\$ +
(\\+ ,
$str	\\, é
,
\\é è
MessageType
\\ê õ
.
\\õ ú
Warning
\\ú £
)
\\£ §
;
\\§ •
EditorGUILayout^^ 
.^^  
Space^^  %
(^^% &
)^^& '
;^^' (
EditorGUILayout`` 
.``  
PropertyField``  -
(``- .
m_OnValueChanged``. >
)``> ?
;``? @
}aa 
elsebb 
{cc 
EditorGUILayoutdd 
.dd  
HelpBoxdd  '
(dd' (
$str	dd( °
,
dd° ¢
MessageType
dd£ Æ
.
ddÆ Ø
Info
ddØ ≥
)
dd≥ ¥
;
dd¥ µ
}ee 
serializedObjectgg 
.gg #
ApplyModifiedPropertiesgg 4
(gg4 5
)gg5 6
;gg6 7
}hh 	
}ii 
}jj ’1
äC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ToggleEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 
Toggle 
)  
,  !
true" &
)& '
]' (
[ "
CanEditMultipleObjects 
] 
public 

class 
ToggleEditor 
: 
SelectableEditor  0
{ 
SerializedProperty $
m_OnValueChangedProperty 3
;3 4
SerializedProperty  
m_TransitionProperty /
;/ 0
SerializedProperty 
m_GraphicProperty ,
;, -
SerializedProperty 
m_GroupProperty *
;* +
SerializedProperty 
m_IsOnProperty )
;) *
	protected 
override 
void 
OnEnable  (
(( )
)) *
{ 	
base 
. 
OnEnable 
( 
) 
;  
m_TransitionProperty  
=! "
serializedObject# 3
.3 4
FindProperty4 @
(@ A
$strA S
)S T
;T U
m_GraphicProperty 
= 
serializedObject  0
.0 1
FindProperty1 =
(= >
$str> G
)G H
;H I
m_GroupProperty 
= 
serializedObject .
.. /
FindProperty/ ;
(; <
$str< E
)E F
;F G
m_IsOnProperty 
= 
serializedObject -
.- .
FindProperty. :
(: ;
$str; C
)C D
;D E$
m_OnValueChangedProperty $
=% &
serializedObject' 7
.7 8
FindProperty8 D
(D E
$strE U
)U V
;V W
} 	
public   
override   
void   
OnInspectorGUI   +
(  + ,
)  , -
{!! 	
base"" 
."" 
OnInspectorGUI"" 
(""  
)""  !
;""! "
EditorGUILayout## 
.## 
Space## !
(##! "
)##" #
;### $
serializedObject%% 
.%% 
Update%% #
(%%# $
)%%$ %
;%%% &
Toggle&& 
toggle&& 
=&& 
serializedObject&& ,
.&&, -
targetObject&&- 9
as&&: <
Toggle&&= C
;&&C D
	EditorGUI'' 
.'' 
BeginChangeCheck'' &
(''& '
)''' (
;''( )
EditorGUILayout(( 
.(( 
PropertyField(( )
((() *
m_IsOnProperty((* 8
)((8 9
;((9 :
if)) 
()) 
	EditorGUI)) 
.)) 
EndChangeCheck)) (
())( )
)))) *
)))* +
{** 
EditorSceneManager++ "
.++" #
MarkSceneDirty++# 1
(++1 2
toggle++2 8
.++8 9

gameObject++9 C
.++C D
scene++D I
)++I J
;++J K
ToggleGroup,, 
group,, !
=,," #
m_GroupProperty,,$ 3
.,,3 4 
objectReferenceValue,,4 H
as,,I K
ToggleGroup,,L W
;,,W X
toggle.. 
... 
isOn.. 
=.. 
m_IsOnProperty.. ,
..., -
	boolValue..- 6
;..6 7
if00 
(00 
group00 
!=00 
null00 !
&&00" $
group00% *
.00* +
isActiveAndEnabled00+ =
&&00> @
toggle00A G
.00G H
IsActive00H P
(00P Q
)00Q R
)00R S
{11 
if22 
(22 
toggle22 
.22 
isOn22 #
||22$ &
(22' (
!22( )
group22) .
.22. /
AnyTogglesOn22/ ;
(22; <
)22< =
&&22> @
!22A B
group22B G
.22G H
allowSwitchOff22H V
)22V W
)22W X
{33 
toggle44 
.44 
isOn44 #
=44$ %
true44& *
;44* +
group55 
.55 
NotifyToggleOn55 ,
(55, -
toggle55- 3
)553 4
;554 5
}66 
}77 
}88 
EditorGUILayout99 
.99 
PropertyField99 )
(99) * 
m_TransitionProperty99* >
)99> ?
;99? @
EditorGUILayout:: 
.:: 
PropertyField:: )
(::) *
m_GraphicProperty::* ;
)::; <
;::< =
	EditorGUI;; 
.;; 
BeginChangeCheck;; &
(;;& '
);;' (
;;;( )
EditorGUILayout<< 
.<< 
PropertyField<< )
(<<) *
m_GroupProperty<<* 9
)<<9 :
;<<: ;
if== 
(== 
	EditorGUI== 
.== 
EndChangeCheck== (
(==( )
)==) *
)==* +
{>> 
EditorSceneManager?? "
.??" #
MarkSceneDirty??# 1
(??1 2
toggle??2 8
.??8 9

gameObject??9 C
.??C D
scene??D I
)??I J
;??J K
ToggleGroup@@ 
group@@ !
=@@" #
m_GroupProperty@@$ 3
.@@3 4 
objectReferenceValue@@4 H
as@@I K
ToggleGroup@@L W
;@@W X
toggleAA 
.AA 
groupAA 
=AA 
groupAA $
;AA$ %
}BB 
EditorGUILayoutDD 
.DD 
SpaceDD !
(DD! "
)DD" #
;DD# $
EditorGUILayoutGG 
.GG 
PropertyFieldGG )
(GG) *$
m_OnValueChangedPropertyGG* B
)GGB C
;GGC D
serializedObjectII 
.II #
ApplyModifiedPropertiesII 4
(II4 5
)II5 6
;II6 7
}JJ 	
}KK 
}LL ”é
éC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ScrollRectEditor.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
( 

ScrollRect #
)# $
,$ %
true& *
)* +
]+ ,
[ "
CanEditMultipleObjects 
] 
public 

class 
ScrollRectEditor !
:" #
Editor$ *
{ 
SerializedProperty 
	m_Content $
;$ %
SerializedProperty 
m_Horizontal '
;' (
SerializedProperty 

m_Vertical %
;% &
SerializedProperty 
m_MovementType )
;) *
SerializedProperty 
m_Elasticity '
;' (
SerializedProperty 
	m_Inertia $
;$ %
SerializedProperty 
m_DecelerationRate -
;- .
SerializedProperty 
m_ScrollSensitivity .
;. /
SerializedProperty 

m_Viewport %
;% &
SerializedProperty !
m_HorizontalScrollbar 0
;0 1
SerializedProperty 
m_VerticalScrollbar .
;. /
SerializedProperty +
m_HorizontalScrollbarVisibility :
;: ;
SerializedProperty )
m_VerticalScrollbarVisibility 8
;8 9
SerializedProperty (
m_HorizontalScrollbarSpacing 7
;7 8
SerializedProperty &
m_VerticalScrollbarSpacing 5
;5 6
SerializedProperty 
m_OnValueChanged +
;+ ,
AnimBool 
m_ShowElasticity !
;! "
AnimBool   "
m_ShowDecelerationRate   '
;  ' (
bool!!  
m_ViewportIsNotChild!! !
,!!! ""
m_HScrollbarIsNotChild!!# 9
,!!9 :"
m_VScrollbarIsNotChild!!; Q
;!!Q R
static"" 
string"" 
s_HError"" 
=""  
$str	""! ≈
;
""≈ ∆
static## 
string## 
s_VError## 
=##  
$str	##! √
;
##√ ƒ
	protected%% 
virtual%% 
void%% 
OnEnable%% '
(%%' (
)%%( )
{&& 	
	m_Content'' 
=''$ %
serializedObject''& 6
.''6 7
FindProperty''7 C
(''C D
$str''D O
)''O P
;''P Q
m_Horizontal(( 
=(($ %
serializedObject((& 6
.((6 7
FindProperty((7 C
(((C D
$str((D R
)((R S
;((S T

m_Vertical)) 
=))$ %
serializedObject))& 6
.))6 7
FindProperty))7 C
())C D
$str))D P
)))P Q
;))Q R
m_MovementType** 
=**$ %
serializedObject**& 6
.**6 7
FindProperty**7 C
(**C D
$str**D T
)**T U
;**U V
m_Elasticity++ 
=++$ %
serializedObject++& 6
.++6 7
FindProperty++7 C
(++C D
$str++D R
)++R S
;++S T
	m_Inertia,, 
=,,$ %
serializedObject,,& 6
.,,6 7
FindProperty,,7 C
(,,C D
$str,,D O
),,O P
;,,P Q
m_DecelerationRate-- 
=--$ %
serializedObject--& 6
.--6 7
FindProperty--7 C
(--C D
$str--D X
)--X Y
;--Y Z
m_ScrollSensitivity.. 
=..$ %
serializedObject..& 6
...6 7
FindProperty..7 C
(..C D
$str..D Y
)..Y Z
;..Z [

m_Viewport// 
=//$ %
serializedObject//& 6
.//6 7
FindProperty//7 C
(//C D
$str//D P
)//P Q
;//Q R!
m_HorizontalScrollbar00 !
=00$ %
serializedObject00& 6
.006 7
FindProperty007 C
(00C D
$str00D [
)00[ \
;00\ ]
m_VerticalScrollbar11 
=11$ %
serializedObject11& 6
.116 7
FindProperty117 C
(11C D
$str11D Y
)11Y Z
;11Z [+
m_HorizontalScrollbarVisibility22 +
=22, -
serializedObject22. >
.22> ?
FindProperty22? K
(22K L
$str22L m
)22m n
;22n o)
m_VerticalScrollbarVisibility33 )
=33, -
serializedObject33. >
.33> ?
FindProperty33? K
(33K L
$str33L k
)33k l
;33l m(
m_HorizontalScrollbarSpacing44 (
=44, -
serializedObject44. >
.44> ?
FindProperty44? K
(44K L
$str44L j
)44j k
;44k l&
m_VerticalScrollbarSpacing55 &
=55, -
serializedObject55. >
.55> ?
FindProperty55? K
(55K L
$str55L h
)55h i
;55i j
m_OnValueChanged66 
=66$ %
serializedObject66& 6
.666 7
FindProperty667 C
(66C D
$str66D V
)66V W
;66W X
m_ShowElasticity88 
=88 
new88 "
AnimBool88# +
(88+ ,
Repaint88, 3
)883 4
;884 5"
m_ShowDecelerationRate99 "
=99# $
new99% (
AnimBool99) 1
(991 2
Repaint992 9
)999 :
;99: ;
SetAnimBools:: 
(:: 
true:: 
):: 
;:: 
};; 	
	protected== 
virtual== 
void== 
	OnDisable== (
(==( )
)==) *
{>> 	
m_ShowElasticity?? 
.?? 
valueChanged?? )
.??) *
RemoveListener??* 8
(??8 9
Repaint??9 @
)??@ A
;??A B"
m_ShowDecelerationRate@@ "
.@@" #
valueChanged@@# /
.@@/ 0
RemoveListener@@0 >
(@@> ?
Repaint@@? F
)@@F G
;@@G H
}AA 	
voidCC 
SetAnimBoolsCC 
(CC 
boolCC 
instantCC &
)CC& '
{DD 	
SetAnimBoolEE 
(EE 
m_ShowElasticityEE (
,EE( )
!EE* +
m_MovementTypeEE+ 9
.EE9 :&
hasMultipleDifferentValuesEE: T
&&EEU W
m_MovementTypeEEX f
.EEf g
enumValueIndexEEg u
==EEv x
(EEy z
intEEz }
)EE} ~

ScrollRect	EE~ à
.
EEà â
MovementType
EEâ ï
.
EEï ñ
Elastic
EEñ ù
,
EEù û
instant
EEü ¶
)
EE¶ ß
;
EEß ®
SetAnimBoolFF 
(FF "
m_ShowDecelerationRateFF .
,FF. /
!FF0 1
	m_InertiaFF1 :
.FF: ;&
hasMultipleDifferentValuesFF; U
&&FFV X
	m_InertiaFFY b
.FFb c
	boolValueFFc l
==FFm o
trueFFp t
,FFt u
instantFFv }
)FF} ~
;FF~ 
}GG 	
voidII 
SetAnimBoolII 
(II 
AnimBoolII !
aII" #
,II# $
boolII% )
valueII* /
,II/ 0
boolII1 5
instantII6 =
)II= >
{JJ 	
ifKK 
(KK 
instantKK 
)KK 
aLL 
.LL 
valueLL 
=LL 
valueLL 
;LL  
elseMM 
aNN 
.NN 
targetNN 
=NN 
valueNN  
;NN  !
}OO 	
voidQQ !
CalculateCachedValuesQQ "
(QQ" #
)QQ# $
{RR 	 
m_ViewportIsNotChildSS  
=SS! "
falseSS# (
;SS( )"
m_HScrollbarIsNotChildTT "
=TT# $
falseTT% *
;TT* +"
m_VScrollbarIsNotChildUU "
=UU# $
falseUU% *
;UU* +
ifVV 
(VV 
targetsVV 
.VV 
LengthVV 
==VV !
$numVV" #
)VV# $
{WW 
	TransformXX 
	transformXX #
=XX$ %
(XX& '
(XX' (

ScrollRectXX( 2
)XX2 3
targetXX3 9
)XX9 :
.XX: ;
	transformXX; D
;XXD E
ifYY 
(YY 

m_ViewportYY 
.YY  
objectReferenceValueYY 3
==YY4 6
nullYY7 ;
||YY< >
(YY? @
(YY@ A
RectTransformYYA N
)YYN O

m_ViewportYYO Y
.YYY Z 
objectReferenceValueYYZ n
)YYn o
.YYo p
	transformYYp y
.YYy z
parent	YYz Ä
!=
YYÅ É
	transform
YYÑ ç
)
YYç é 
m_ViewportIsNotChildZZ (
=ZZ) *
trueZZ+ /
;ZZ/ 0
if[[ 
([[ !
m_HorizontalScrollbar[[ )
.[[) * 
objectReferenceValue[[* >
==[[? A
null[[B F
||[[G I
([[J K
([[K L
	Scrollbar[[L U
)[[U V!
m_HorizontalScrollbar[[V k
.[[k l!
objectReferenceValue	[[l Ä
)
[[Ä Å
.
[[Å Ç
	transform
[[Ç ã
.
[[ã å
parent
[[å í
!=
[[ì ï
	transform
[[ñ ü
)
[[ü †"
m_HScrollbarIsNotChild\\ *
=\\+ ,
true\\- 1
;\\1 2
if]] 
(]] 
m_VerticalScrollbar]] '
.]]' ( 
objectReferenceValue]]( <
==]]= ?
null]]@ D
||]]E G
(]]H I
(]]I J
	Scrollbar]]J S
)]]S T
m_VerticalScrollbar]]T g
.]]g h 
objectReferenceValue]]h |
)]]| }
.]]} ~
	transform	]]~ á
.
]]á à
parent
]]à é
!=
]]è ë
	transform
]]í õ
)
]]õ ú"
m_VScrollbarIsNotChild^^ *
=^^+ ,
true^^- 1
;^^1 2
}__ 
}`` 	
publicbb 
overridebb 
voidbb 
OnInspectorGUIbb +
(bb+ ,
)bb, -
{cc 	
SetAnimBoolsdd 
(dd 
falsedd 
)dd 
;dd  
serializedObjectff 
.ff 
Updateff #
(ff# $
)ff$ %
;ff% &!
CalculateCachedValueshh !
(hh! "
)hh" #
;hh# $
EditorGUILayoutjj 
.jj 
PropertyFieldjj )
(jj) *
	m_Contentjj* 3
)jj3 4
;jj4 5
EditorGUILayoutll 
.ll 
PropertyFieldll )
(ll) *
m_Horizontalll* 6
)ll6 7
;ll7 8
EditorGUILayoutmm 
.mm 
PropertyFieldmm )
(mm) *

m_Verticalmm* 4
)mm4 5
;mm5 6
EditorGUILayoutoo 
.oo 
PropertyFieldoo )
(oo) *
m_MovementTypeoo* 8
)oo8 9
;oo9 :
ifpp 
(pp 
EditorGUILayoutpp 
.pp  
BeginFadeGrouppp  .
(pp. /
m_ShowElasticitypp/ ?
.pp? @
fadedpp@ E
)ppE F
)ppF G
{qq 
	EditorGUIrr 
.rr 
indentLevelrr %
++rr% '
;rr' (
EditorGUILayoutss 
.ss  
PropertyFieldss  -
(ss- .
m_Elasticityss. :
)ss: ;
;ss; <
	EditorGUItt 
.tt 
indentLeveltt %
--tt% '
;tt' (
}uu 
EditorGUILayoutvv 
.vv 
EndFadeGroupvv (
(vv( )
)vv) *
;vv* +
EditorGUILayoutxx 
.xx 
PropertyFieldxx )
(xx) *
	m_Inertiaxx* 3
)xx3 4
;xx4 5
ifyy 
(yy 
EditorGUILayoutyy 
.yy  
BeginFadeGroupyy  .
(yy. /"
m_ShowDecelerationRateyy/ E
.yyE F
fadedyyF K
)yyK L
)yyL M
{zz 
	EditorGUI{{ 
.{{ 
indentLevel{{ %
++{{% '
;{{' (
EditorGUILayout|| 
.||  
PropertyField||  -
(||- .
m_DecelerationRate||. @
)||@ A
;||A B
	EditorGUI}} 
.}} 
indentLevel}} %
--}}% '
;}}' (
}~~ 
EditorGUILayout 
. 
EndFadeGroup (
(( )
)) *
;* +
EditorGUILayout
ÅÅ 
.
ÅÅ 
PropertyField
ÅÅ )
(
ÅÅ) *!
m_ScrollSensitivity
ÅÅ* =
)
ÅÅ= >
;
ÅÅ> ?
EditorGUILayout
ÉÉ 
.
ÉÉ 
Space
ÉÉ !
(
ÉÉ! "
)
ÉÉ" #
;
ÉÉ# $
EditorGUILayout
ÖÖ 
.
ÖÖ 
PropertyField
ÖÖ )
(
ÖÖ) *

m_Viewport
ÖÖ* 4
)
ÖÖ4 5
;
ÖÖ5 6
EditorGUILayout
áá 
.
áá 
PropertyField
áá )
(
áá) *#
m_HorizontalScrollbar
áá* ?
)
áá? @
;
áá@ A
if
àà 
(
àà #
m_HorizontalScrollbar
àà %
.
àà% &"
objectReferenceValue
àà& :
&&
àà; =
!
àà> ?#
m_HorizontalScrollbar
àà? T
.
ààT U(
hasMultipleDifferentValues
ààU o
)
àào p
{
ââ 
	EditorGUI
ää 
.
ää 
indentLevel
ää %
++
ää% '
;
ää' (
EditorGUILayout
ãã 
.
ãã  
PropertyField
ãã  -
(
ãã- .-
m_HorizontalScrollbarVisibility
ãã. M
,
ããM N
EditorGUIUtility
ããO _
.
ãã_ `
TrTextContent
ãã` m
(
ããm n
$str
ããn z
)
ããz {
)
ãã{ |
;
ãã| }
if
çç 
(
çç 
(
çç 

ScrollRect
çç 
.
çç  !
ScrollbarVisibility
çç  3
)
çç3 4-
m_HorizontalScrollbarVisibility
çç4 S
.
ççS T
enumValueIndex
ççT b
==
ççc e

ScrollRect
ççf p
.
ççp q"
ScrollbarVisibilityççq Ñ
.ççÑ Ö)
AutoHideAndExpandViewportççÖ û
&&
éé 
!
éé -
m_HorizontalScrollbarVisibility
éé 7
.
éé7 8(
hasMultipleDifferentValues
éé8 R
)
ééR S
{
èè 
if
êê 
(
êê "
m_ViewportIsNotChild
êê ,
||
êê- /$
m_HScrollbarIsNotChild
êê0 F
)
êêF G
EditorGUILayout
ëë '
.
ëë' (
HelpBox
ëë( /
(
ëë/ 0
s_HError
ëë0 8
,
ëë8 9
MessageType
ëë: E
.
ëëE F
Error
ëëF K
)
ëëK L
;
ëëL M
EditorGUILayout
íí #
.
íí# $
PropertyField
íí$ 1
(
íí1 2*
m_HorizontalScrollbarSpacing
íí2 N
,
ííN O
EditorGUIUtility
ííP `
.
íí` a
TrTextContent
íía n
(
íín o
$str
íío x
)
ííx y
)
ííy z
;
ííz {
}
ìì 
	EditorGUI
ïï 
.
ïï 
indentLevel
ïï %
--
ïï% '
;
ïï' (
}
ññ 
EditorGUILayout
òò 
.
òò 
PropertyField
òò )
(
òò) *!
m_VerticalScrollbar
òò* =
)
òò= >
;
òò> ?
if
ôô 
(
ôô !
m_VerticalScrollbar
ôô #
.
ôô# $"
objectReferenceValue
ôô$ 8
&&
ôô9 ;
!
ôô< =!
m_VerticalScrollbar
ôô= P
.
ôôP Q(
hasMultipleDifferentValues
ôôQ k
)
ôôk l
{
öö 
	EditorGUI
õõ 
.
õõ 
indentLevel
õõ %
++
õõ% '
;
õõ' (
EditorGUILayout
úú 
.
úú  
PropertyField
úú  -
(
úú- .+
m_VerticalScrollbarVisibility
úú. K
,
úúK L
EditorGUIUtility
úúM ]
.
úú] ^
TrTextContent
úú^ k
(
úúk l
$str
úúl x
)
úúx y
)
úúy z
;
úúz {
if
ûû 
(
ûû 
(
ûû 

ScrollRect
ûû 
.
ûû  !
ScrollbarVisibility
ûû  3
)
ûû3 4+
m_VerticalScrollbarVisibility
ûû4 Q
.
ûûQ R
enumValueIndex
ûûR `
==
ûûa c

ScrollRect
ûûd n
.
ûûn o"
ScrollbarVisibilityûûo Ç
.ûûÇ É)
AutoHideAndExpandViewportûûÉ ú
&&
üü 
!
üü +
m_VerticalScrollbarVisibility
üü 5
.
üü5 6(
hasMultipleDifferentValues
üü6 P
)
üüP Q
{
†† 
if
°° 
(
°° "
m_ViewportIsNotChild
°° ,
||
°°- /$
m_VScrollbarIsNotChild
°°0 F
)
°°F G
EditorGUILayout
¢¢ '
.
¢¢' (
HelpBox
¢¢( /
(
¢¢/ 0
s_VError
¢¢0 8
,
¢¢8 9
MessageType
¢¢: E
.
¢¢E F
Error
¢¢F K
)
¢¢K L
;
¢¢L M
EditorGUILayout
££ #
.
££# $
PropertyField
££$ 1
(
££1 2(
m_VerticalScrollbarSpacing
££2 L
,
££L M
EditorGUIUtility
££N ^
.
££^ _
TrTextContent
££_ l
(
££l m
$str
££m v
)
££v w
)
££w x
;
££x y
}
§§ 
	EditorGUI
¶¶ 
.
¶¶ 
indentLevel
¶¶ %
--
¶¶% '
;
¶¶' (
}
ßß 
EditorGUILayout
©© 
.
©© 
Space
©© !
(
©©! "
)
©©" #
;
©©# $
EditorGUILayout
´´ 
.
´´ 
PropertyField
´´ )
(
´´) *
m_OnValueChanged
´´* :
)
´´: ;
;
´´; <
serializedObject
≠≠ 
.
≠≠ %
ApplyModifiedProperties
≠≠ 4
(
≠≠4 5
)
≠≠5 6
;
≠≠6 7
}
ÆÆ 	
}
ØØ 
}∞∞ ã!
üC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\SpriteStateDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
SpriteState! ,
), -
,- .
true/ 3
)3 4
]4 5
public

 

class

 
SpriteStateDrawer

 "
:

# $
PropertyDrawer

% 3
{ 
public 
override 
void 
OnGUI "
(" #
Rect# '
rect( ,
,, -
SerializedProperty. @
propA E
,E F

GUIContentG Q
labelR W
)W X
{ 	
Rect 
drawRect 
= 
rect  
;  !
drawRect 
. 
height 
= 
EditorGUIUtility .
.. /
singleLineHeight/ ?
;? @
SerializedProperty 
highlightedSprite 0
=1 2
prop3 7
.7 8 
FindPropertyRelative8 L
(L M
$strM b
)b c
;c d
SerializedProperty 
pressedSprite ,
=- .
prop/ 3
.3 4 
FindPropertyRelative4 H
(H I
$strI Z
)Z [
;[ \
SerializedProperty 
selectedSprite -
=. /
prop0 4
.4 5 
FindPropertyRelative5 I
(I J
$strJ \
)\ ]
;] ^
SerializedProperty 
disabledSprite -
=. /
prop0 4
.4 5 
FindPropertyRelative5 I
(I J
$strJ \
)\ ]
;] ^
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
highlightedSprite. ?
)? @
;@ A
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
pressedSprite. ;
); <
;< =
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
selectedSprite. <
)< =
;= >
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
	EditorGUI 
. 
PropertyField #
(# $
drawRect$ ,
,, -
disabledSprite. <
)< =
;= >
drawRect 
. 
y 
+= 
EditorGUIUtility *
.* +
singleLineHeight+ ;
+< =
EditorGUIUtility> N
.N O#
standardVerticalSpacingO f
;f g
} 	
public 
override 
float 
GetPropertyHeight /
(/ 0
SerializedProperty0 B
propC G
,G H

GUIContentI S
labelT Y
)Y Z
{   	
return!! 
$num!! 
*!! 
EditorGUIUtility!! '
.!!' (
singleLineHeight!!( 8
+!!9 :
$num!!; <
*!!= >
EditorGUIUtility!!? O
.!!O P#
standardVerticalSpacing!!P g
;!!g h
}"" 	
}## 
}$$ ¸K
ûC:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\NavigationDrawer.cs
	namespace 	
UnityEditor
 
. 
UI 
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !

Navigation! +
)+ ,
,, -
true. 2
)2 3
]3 4
public

 

class

 
NavigationDrawer

 !
:

" #
PropertyDrawer

$ 2
{ 
private 
class 
Styles 
{ 	
readonly 
public 

GUIContent &
navigationContent' 8
;8 9
public 
Styles 
( 
) 
{ 
navigationContent !
=" #
EditorGUIUtility$ 4
.4 5
TrTextContent5 B
(B C
$strC O
)O P
;P Q
} 
} 	
private 
static 
Styles 
s_Styles &
=' (
null) -
;- .
public 
override 
void 
OnGUI "
(" #
Rect# '
pos( +
,+ ,
SerializedProperty- ?
prop@ D
,D E

GUIContentF P
labelQ V
)V W
{ 	
if 
( 
s_Styles 
== 
null  
)  !
s_Styles 
= 
new 
Styles %
(% &
)& '
;' (
Rect 
drawRect 
= 
pos 
;  
drawRect 
. 
height 
= 
EditorGUIUtility .
.. /
singleLineHeight/ ?
;? @
SerializedProperty   

navigation   )
=  * +
prop  , 0
.  0 1 
FindPropertyRelative  1 E
(  E F
$str  F N
)  N O
;  O P
SerializedProperty!! 

wrapAround!! )
=!!* +
prop!!, 0
.!!0 1 
FindPropertyRelative!!1 E
(!!E F
$str!!F T
)!!T U
;!!U V

Navigation"" 
."" 
Mode"" 
navMode"" #
=""$ %
GetNavigationMode""& 7
(""7 8

navigation""8 B
)""B C
;""C D
	EditorGUI$$ 
.$$ 
PropertyField$$ #
($$# $
drawRect$$$ ,
,$$, -

navigation$$. 8
,$$8 9
s_Styles$$: B
.$$B C
navigationContent$$C T
)$$T U
;$$U V
++&& 
	EditorGUI&& 
.&& 
indentLevel&& #
;&&# $
drawRect(( 
.(( 
y(( 
+=(( 
EditorGUIUtility(( *
.((* +
singleLineHeight((+ ;
+((< =
EditorGUIUtility((> N
.((N O#
standardVerticalSpacing((O f
;((f g
switch** 
(** 
navMode** 
)** 
{++ 
case,, 

Navigation,, 
.,,  
Mode,,  $
.,,$ %

Horizontal,,% /
:,,/ 0
case-- 

Navigation-- 
.--  
Mode--  $
.--$ %
Vertical--% -
:--- .
{.. 
	EditorGUI// 
.// 
PropertyField// +
(//+ ,
drawRect//, 4
,//4 5

wrapAround//6 @
)//@ A
;//A B
drawRect00 
.00 
y00 
+=00 !
EditorGUIUtility00" 2
.002 3
singleLineHeight003 C
+00D E
EditorGUIUtility00F V
.00V W#
standardVerticalSpacing00W n
;00n o
}11 
break22 
;22 
case33 

Navigation33 
.33  
Mode33  $
.33$ %
Explicit33% -
:33- .
{44 
SerializedProperty55 &

selectOnUp55' 1
=552 3
prop554 8
.558 9 
FindPropertyRelative559 M
(55M N
$str55N \
)55\ ]
;55] ^
SerializedProperty66 &
selectOnDown66' 3
=664 5
prop666 :
.66: ; 
FindPropertyRelative66; O
(66O P
$str66P `
)66` a
;66a b
SerializedProperty77 &
selectOnLeft77' 3
=774 5
prop776 :
.77: ; 
FindPropertyRelative77; O
(77O P
$str77P `
)77` a
;77a b
SerializedProperty88 &
selectOnRight88' 4
=885 6
prop887 ;
.88; < 
FindPropertyRelative88< P
(88P Q
$str88Q b
)88b c
;88c d
	EditorGUI:: 
.:: 
PropertyField:: +
(::+ ,
drawRect::, 4
,::4 5

selectOnUp::6 @
)::@ A
;::A B
drawRect;; 
.;; 
y;; 
+=;; !
EditorGUIUtility;;" 2
.;;2 3
singleLineHeight;;3 C
+;;D E
EditorGUIUtility;;F V
.;;V W#
standardVerticalSpacing;;W n
;;;n o
	EditorGUI<< 
.<< 
PropertyField<< +
(<<+ ,
drawRect<<, 4
,<<4 5
selectOnDown<<6 B
)<<B C
;<<C D
drawRect== 
.== 
y== 
+=== !
EditorGUIUtility==" 2
.==2 3
singleLineHeight==3 C
+==D E
EditorGUIUtility==F V
.==V W#
standardVerticalSpacing==W n
;==n o
	EditorGUI>> 
.>> 
PropertyField>> +
(>>+ ,
drawRect>>, 4
,>>4 5
selectOnLeft>>6 B
)>>B C
;>>C D
drawRect?? 
.?? 
y?? 
+=?? !
EditorGUIUtility??" 2
.??2 3
singleLineHeight??3 C
+??D E
EditorGUIUtility??F V
.??V W#
standardVerticalSpacing??W n
;??n o
	EditorGUI@@ 
.@@ 
PropertyField@@ +
(@@+ ,
drawRect@@, 4
,@@4 5
selectOnRight@@6 C
)@@C D
;@@D E
drawRectAA 
.AA 
yAA 
+=AA !
EditorGUIUtilityAA" 2
.AA2 3
singleLineHeightAA3 C
+AAD E
EditorGUIUtilityAAF V
.AAV W#
standardVerticalSpacingAAW n
;AAn o
}BB 
breakCC 
;CC 
}DD 
--FF 
	EditorGUIFF 
.FF 
indentLevelFF #
;FF# $
}GG 	
staticII 

NavigationII 
.II 
ModeII 
GetNavigationModeII 0
(II0 1
SerializedPropertyII1 C

navigationIID N
)IIN O
{JJ 	
returnKK 
(KK 

NavigationKK 
.KK 
ModeKK #
)KK# $

navigationKK$ .
.KK. /
enumValueIndexKK/ =
;KK= >
}LL 	
publicNN 
overrideNN 
floatNN 
GetPropertyHeightNN /
(NN/ 0
SerializedPropertyNN0 B
propNNC G
,NNG H

GUIContentNNI S
labelNNT Y
)NNY Z
{OO 	
SerializedPropertyPP 

navigationPP )
=PP* +
propPP, 0
.PP0 1 
FindPropertyRelativePP1 E
(PPE F
$strPPF N
)PPN O
;PPO P
ifQQ 
(QQ 

navigationQQ 
==QQ 
nullQQ "
)QQ" #
returnRR 
EditorGUIUtilityRR '
.RR' (
singleLineHeightRR( 8
+RR9 :
EditorGUIUtilityRR; K
.RRK L#
standardVerticalSpacingRRL c
;RRc d

NavigationTT 
.TT 
ModeTT 
navModeTT #
=TT$ %
GetNavigationModeTT& 7
(TT7 8

navigationTT8 B
)TTB C
;TTC D
switchVV 
(VV 
navModeVV 
)VV 
{WW 
caseXX 

NavigationXX 
.XX  
ModeXX  $
.XX$ %
NoneXX% )
:XX) *
returnYY 
EditorGUIUtilityYY +
.YY+ ,
singleLineHeightYY, <
;YY< =
caseZZ 

NavigationZZ 
.ZZ  
ModeZZ  $
.ZZ$ %

HorizontalZZ% /
:ZZ/ 0
case[[ 

Navigation[[ 
.[[  
Mode[[  $
.[[$ %
Vertical[[% -
:[[- .
return\\ 
$num\\ 
*\\ 
EditorGUIUtility\\ /
.\\/ 0
singleLineHeight\\0 @
+\\A B
$num\\C D
*\\E F
EditorGUIUtility\\G W
.\\W X#
standardVerticalSpacing\\X o
;\\o p
case]] 

Navigation]] 
.]]  
Mode]]  $
.]]$ %
Explicit]]% -
:]]- .
return^^ 
$num^^ 
*^^ 
EditorGUIUtility^^ /
.^^/ 0
singleLineHeight^^0 @
+^^A B
$num^^C D
*^^E F
EditorGUIUtility^^G W
.^^W X#
standardVerticalSpacing^^X o
;^^o p
default__ 
:__ 
return`` 
EditorGUIUtility`` +
.``+ ,
singleLineHeight``, <
+``= >
EditorGUIUtility``? O
.``O P#
standardVerticalSpacing``P g
;``g h
}aa 
}bb 	
}cc 
}dd 