�*
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\DropdownOptionListDrawer.cs
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
}>> ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\MenuOptions.cs
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
camera	RR} �
.
RR� �
pixelHeight
RR� �
/
RR� �
$num
RR� �
)
RR� �
,
RR� �
camera
RR� �
,
RR� �
out
RR� � 
localPlanePosition
RR� �
)
RR� �
)
RR� �
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
*	`` �
itemTransform
``� �
.
``� �
pivot
``� �
.
``� �
x
``� �
;
``� �
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
*	aa �
itemTransform
aa� �
.
aa� �
pivot
aa� �
.
aa� �
y
aa� �
;
aa� �
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
*	dd �
itemTransform
dd� �
.
dd� �
pivot
dd� �
.
dd� �
x
dd� �
;
dd� �
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
*	ee �
itemTransform
ee� �
.
ee� �
pivot
ee� �
.
ee� �
y
ee� �
;
ee� �
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
�� 

GameObject
�� 
canvas
�� !
=
��" #
MenuOptions
��$ /
.
��/ 0
CreateNewUI
��0 ;
(
��; <
)
��< =
;
��= >
Undo
�� 
.
��  
SetTransformParent
�� '
(
��' (
canvas
��( .
.
��. /
	transform
��/ 8
,
��8 9
parent
��: @
.
��@ A
	transform
��A J
,
��J K
$str
��L N
)
��N O
;
��O P
parent
�� 
=
�� 
canvas
�� 
;
��  
}
�� 
GameObjectUtility
�� 
.
�� (
EnsureUniqueNameForSibling
�� 8
(
��8 9
element
��9 @
)
��@ A
;
��A B
SetParentAndAlign
�� 
(
�� 
element
�� %
,
��% &
parent
��' -
)
��- .
;
��. /
if
�� 
(
�� 
!
�� "
explicitParentChoice
�� %
)
��% &+
SetPositionVisibleinSceneView
�� -
(
��- .
parent
��. 4
.
��4 5
GetComponent
��5 A
<
��A B
RectTransform
��B O
>
��O P
(
��P Q
)
��Q R
,
��R S
element
��T [
.
��[ \
GetComponent
��\ h
<
��h i
RectTransform
��i v
>
��v w
(
��w x
)
��x y
)
��y z
;
��z {
Undo
�� 
.
�� -
RegisterFullObjectHierarchyUndo
�� 0
(
��0 1
parent
��1 7
==
��8 :
null
��; ?
?
��@ A
element
��B I
:
��J K
parent
��L R
,
��R S
$str
��T V
)
��V W
;
��W X
Undo
�� 
.
�� !
SetCurrentGroupName
�� $
(
��$ %
$str
��% .
+
��/ 0
element
��1 8
.
��8 9
name
��9 =
)
��= >
;
��> ?
	Selection
�� 
.
�� 
activeGameObject
�� &
=
��' (
element
��) 0
;
��0 1
}
�� 	
private
�� 
static
�� 
void
�� 
SetParentAndAlign
�� -
(
��- .

GameObject
��. 8
child
��9 >
,
��> ?

GameObject
��@ J
parent
��K Q
)
��Q R
{
�� 	
if
�� 
(
�� 
parent
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
Undo
�� 
.
��  
SetTransformParent
�� #
(
��# $
child
��$ )
.
��) *
	transform
��* 3
,
��3 4
parent
��5 ;
.
��; <
	transform
��< E
,
��E F
$str
��G I
)
��I J
;
��J K
RectTransform
�� 
rectTransform
�� '
=
��( )
child
��* /
.
��/ 0
	transform
��0 9
as
��: <
RectTransform
��= J
;
��J K
if
�� 
(
�� 
rectTransform
�� 
)
�� 
{
�� 
rectTransform
�� 
.
�� 
anchoredPosition
�� .
=
��/ 0
Vector2
��1 8
.
��8 9
zero
��9 =
;
��= >
Vector3
�� 
localPosition
�� %
=
��& '
rectTransform
��( 5
.
��5 6
localPosition
��6 C
;
��C D
localPosition
�� 
.
�� 
z
�� 
=
��  !
$num
��" #
;
��# $
rectTransform
�� 
.
�� 
localPosition
�� +
=
��, -
localPosition
��. ;
;
��; <
}
�� 
else
�� 
{
�� 
child
�� 
.
�� 
	transform
�� 
.
��  
localPosition
��  -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
}
�� 
child
�� 
.
�� 
	transform
�� 
.
�� 
localRotation
�� )
=
��* +

Quaternion
��, 6
.
��6 7
identity
��7 ?
;
��? @
child
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� &
=
��' (
Vector3
��) 0
.
��0 1
one
��1 4
;
��4 5!
SetLayerRecursively
�� 
(
��  
child
��  %
,
��% &
parent
��' -
.
��- .
layer
��. 3
)
��3 4
;
��4 5
}
�� 	
private
�� 
static
�� 
void
�� !
SetLayerRecursively
�� /
(
��/ 0

GameObject
��0 :
go
��; =
,
��= >
int
��? B
layer
��C H
)
��H I
{
�� 	
go
�� 
.
�� 
layer
�� 
=
�� 
layer
�� 
;
�� 
	Transform
�� 
t
�� 
=
�� 
go
�� 
.
�� 
	transform
�� &
;
��& '
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
�� 
t
��  !
.
��! "

childCount
��" ,
;
��, -
i
��. /
++
��/ 1
)
��1 2!
SetLayerRecursively
�� #
(
��# $
t
��$ %
.
��% &
GetChild
��& .
(
��. /
i
��/ 0
)
��0 1
.
��1 2

gameObject
��2 <
,
��< =
layer
��> C
)
��C D
;
��D E
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� &
,
��& '
false
��( -
,
��- .
$num
��/ 3
)
��3 4
]
��4 5
static
�� 
public
�� 
void
�� 
AddText
�� "
(
��" #
MenuCommand
��# .
menuCommand
��/ :
)
��: ;
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %

CreateText
��% /
(
��/ 0"
GetStandardResources
��0 D
(
��D E
)
��E F
)
��F G
;
��G H 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� '
,
��' (
false
��) .
,
��. /
$num
��0 4
)
��4 5
]
��5 6
static
�� 
public
�� 
void
�� 
AddImage
�� #
(
��# $
MenuCommand
��$ /
menuCommand
��0 ;
)
��; <
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateImage
��% 0
(
��0 1"
GetStandardResources
��1 E
(
��E F
)
��F G
)
��G H
;
��H I 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� +
,
��+ ,
false
��- 2
,
��2 3
$num
��4 8
)
��8 9
]
��9 :
static
�� 
public
�� 
void
�� 
AddRawImage
�� &
(
��& '
MenuCommand
��' 2
menuCommand
��3 >
)
��> ?
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateRawImage
��% 3
(
��3 4"
GetStandardResources
��4 H
(
��H I
)
��I J
)
��J K
;
��K L 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� (
,
��( )
false
��* /
,
��/ 0
$num
��1 5
)
��5 6
]
��6 7
static
�� 
public
�� 
void
�� 
	AddButton
�� $
(
��$ %
MenuCommand
��% 0
menuCommand
��1 <
)
��< =
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateButton
��% 1
(
��1 2"
GetStandardResources
��2 F
(
��F G
)
��G H
)
��H I
;
��I J 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� (
,
��( )
false
��* /
,
��/ 0
$num
��1 5
)
��5 6
]
��6 7
static
�� 
public
�� 
void
�� 
	AddToggle
�� $
(
��$ %
MenuCommand
��% 0
menuCommand
��1 <
)
��< =
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateToggle
��% 1
(
��1 2"
GetStandardResources
��2 F
(
��F G
)
��G H
)
��H I
;
��I J 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� (
,
��( )
false
��* /
,
��/ 0
$num
��1 5
)
��5 6
]
��6 7
static
�� 
public
�� 
void
�� 
	AddSlider
�� $
(
��$ %
MenuCommand
��% 0
menuCommand
��1 <
)
��< =
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateSlider
��% 1
(
��1 2"
GetStandardResources
��2 F
(
��F G
)
��G H
)
��H I
;
��I J 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� +
,
��+ ,
false
��- 2
,
��2 3
$num
��4 8
)
��8 9
]
��9 :
static
�� 
public
�� 
void
�� 
AddScrollbar
�� '
(
��' (
MenuCommand
��( 3
menuCommand
��4 ?
)
��? @
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateScrollbar
��% 4
(
��4 5"
GetStandardResources
��5 I
(
��I J
)
��J K
)
��K L
;
��L M 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� *
,
��* +
false
��, 1
,
��1 2
$num
��3 7
)
��7 8
]
��8 9
static
�� 
public
�� 
void
�� 
AddDropdown
�� &
(
��& '
MenuCommand
��' 2
menuCommand
��3 >
)
��> ?
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateDropdown
��% 3
(
��3 4"
GetStandardResources
��4 H
(
��H I
)
��I J
)
��J K
;
��K L 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� -
,
��- .
false
��/ 4
,
��4 5
$num
��6 :
)
��: ;
]
��; <
public
�� 
static
�� 
void
�� 
AddInputField
�� (
(
��( )
MenuCommand
��) 4
menuCommand
��5 @
)
��@ A
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateInputField
��% 5
(
��5 6"
GetStandardResources
��6 J
(
��J K
)
��K L
)
��L M
;
��M N 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� (
,
��( )
false
��* /
,
��/ 0
$num
��1 5
)
��5 6
]
��6 7
static
�� 
public
�� 
void
�� 
	AddCanvas
�� $
(
��$ %
MenuCommand
��% 0
menuCommand
��1 <
)
��< =
{
�� 	
var
�� 
go
�� 
=
�� 
CreateNewUI
��  
(
��  !
)
��! "
;
��" #
SetParentAndAlign
�� 
(
�� 
go
��  
,
��  !
menuCommand
��" -
.
��- .
context
��. 5
as
��6 8

GameObject
��9 C
)
��C D
;
��D E
if
�� 
(
�� 
go
�� 
.
�� 
	transform
�� 
.
�� 
parent
�� #
as
��$ &
RectTransform
��' 4
)
��4 5
{
�� 
RectTransform
�� 
rect
�� "
=
��# $
go
��% '
.
��' (
	transform
��( 1
as
��2 4
RectTransform
��5 B
;
��B C
rect
�� 
.
�� 
	anchorMin
�� 
=
��  
Vector2
��! (
.
��( )
zero
��) -
;
��- .
rect
�� 
.
�� 
	anchorMax
�� 
=
��  
Vector2
��! (
.
��( )
one
��) ,
;
��, -
rect
�� 
.
�� 
anchoredPosition
�� %
=
��& '
Vector2
��( /
.
��/ 0
zero
��0 4
;
��4 5
rect
�� 
.
�� 
	sizeDelta
�� 
=
��  
Vector2
��! (
.
��( )
zero
��) -
;
��- .
}
�� 
	Selection
�� 
.
�� 
activeGameObject
�� &
=
��' (
go
��) +
;
��+ ,
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� '
,
��' (
false
��) .
,
��. /
$num
��0 4
)
��4 5
]
��5 6
static
�� 
public
�� 
void
�� 
AddPanel
�� #
(
��# $
MenuCommand
��$ /
menuCommand
��0 ;
)
��; <
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreatePanel
��% 0
(
��0 1"
GetStandardResources
��1 E
(
��E F
)
��F G
)
��G H
;
��H I 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
RectTransform
�� 
rect
�� 
=
��  
go
��! #
.
��# $
GetComponent
��$ 0
<
��0 1
RectTransform
��1 >
>
��> ?
(
��? @
)
��@ A
;
��A B
rect
�� 
.
�� 
anchoredPosition
�� !
=
��" #
Vector2
��$ +
.
��+ ,
zero
��, 0
;
��0 1
rect
�� 
.
�� 
	sizeDelta
�� 
=
�� 
Vector2
�� $
.
��$ %
zero
��% )
;
��) *
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� -
,
��- .
false
��/ 4
,
��4 5
$num
��6 :
)
��: ;
]
��; <
static
�� 
public
�� 
void
�� 
AddScrollView
�� (
(
��( )
MenuCommand
��) 4
menuCommand
��5 @
)
��@ A
{
�� 	

GameObject
�� 
go
�� 
;
�� 
using
�� 
(
�� 
new
�� !
FactorySwapToEditor
�� *
(
��* +
)
��+ ,
)
��, -
go
�� 
=
�� 
DefaultControls
�� $
.
��$ %
CreateScrollView
��% 5
(
��5 6"
GetStandardResources
��6 J
(
��J K
)
��K L
)
��L M
;
��M N 
PlaceUIElementRoot
�� 
(
�� 
go
�� !
,
��! "
menuCommand
��# .
)
��. /
;
��/ 0
}
�� 	
static
�� 
public
�� 

GameObject
��  
CreateNewUI
��! ,
(
��, -
)
��- .
{
�� 	
var
�� 
root
�� 
=
�� 
ObjectFactory
�� $
.
��$ %
CreateGameObject
��% 5
(
��5 6
$str
��6 >
,
��> ?
typeof
��@ F
(
��F G
Canvas
��G M
)
��M N
,
��N O
typeof
��P V
(
��V W
CanvasScaler
��W c
)
��c d
,
��d e
typeof
��f l
(
��l m
GraphicRaycaster
��m }
)
��} ~
)
��~ 
;�� �
root
�� 
.
�� 
layer
�� 
=
�� 
	LayerMask
�� "
.
��" #
NameToLayer
��# .
(
��. /
kUILayerName
��/ ;
)
��; <
;
��< =
Canvas
�� 
canvas
�� 
=
�� 
root
��  
.
��  !
GetComponent
��! -
<
��- .
Canvas
��. 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
canvas
�� 
.
�� 

renderMode
�� 
=
�� 

RenderMode
��  *
.
��* + 
ScreenSpaceOverlay
��+ =
;
��= >
StageUtility
�� 
.
�� +
PlaceGameObjectInCurrentStage
�� 6
(
��6 7
root
��7 ;
)
��; <
;
��< =
bool
�� 
customScene
�� 
=
�� 
false
�� $
;
��$ %
PrefabStage
�� 
prefabStage
�� #
=
��$ % 
PrefabStageUtility
��& 8
.
��8 9#
GetCurrentPrefabStage
��9 N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
prefabStage
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
Undo
�� 
.
��  
SetTransformParent
�� '
(
��' (
root
��( ,
.
��, -
	transform
��- 6
,
��6 7
prefabStage
��8 C
.
��C D 
prefabContentsRoot
��D V
.
��V W
	transform
��W `
,
��` a
$str
��b d
)
��d e
;
��e f
customScene
�� 
=
�� 
true
�� "
;
��" #
}
�� 
Undo
�� 
.
�� !
SetCurrentGroupName
�� $
(
��$ %
$str
��% .
+
��/ 0
root
��1 5
.
��5 6
name
��6 :
)
��: ;
;
��; <
if
�� 
(
�� 
!
�� 
customScene
�� 
)
�� 
CreateEventSystem
�� !
(
��! "
false
��" '
)
��' (
;
��( )
return
�� 
root
�� 
;
�� 
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� .
,
��. /
false
��0 5
,
��5 6
$num
��7 ;
)
��; <
]
��< =
public
�� 
static
�� 
void
�� 
CreateEventSystem
�� ,
(
��, -
MenuCommand
��- 8
menuCommand
��9 D
)
��D E
{
�� 	

GameObject
�� 
parent
�� 
=
�� 
menuCommand
��  +
.
��+ ,
context
��, 3
as
��4 6

GameObject
��7 A
;
��A B
CreateEventSystem
�� 
(
�� 
true
�� "
,
��" #
parent
��$ *
)
��* +
;
��+ ,
}
�� 	
private
�� 
static
�� 
void
�� 
CreateEventSystem
�� -
(
��- .
bool
��. 2
select
��3 9
)
��9 :
{
�� 	
CreateEventSystem
�� 
(
�� 
select
�� $
,
��$ %
null
��& *
)
��* +
;
��+ ,
}
�� 	
private
�� 
static
�� 
void
�� 
CreateEventSystem
�� -
(
��- .
bool
��. 2
select
��3 9
,
��9 :

GameObject
��; E
parent
��F L
)
��L M
{
�� 	
StageHandle
�� 
stage
�� 
=
�� 
parent
��  &
==
��' )
null
��* .
?
��/ 0
StageUtility
��1 =
.
��= >#
GetCurrentStageHandle
��> S
(
��S T
)
��T U
:
��V W
StageUtility
��X d
.
��d e
GetStageHandle
��e s
(
��s t
parent
��t z
)
��z {
;
��{ |
var
�� 
esys
�� 
=
�� 
stage
�� 
.
�� !
FindComponentOfType
�� 0
<
��0 1
EventSystem
��1 <
>
��< =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
esys
�� 
==
�� 
null
�� 
)
�� 
{
�� 
var
�� 
eventSystem
�� 
=
��  !
ObjectFactory
��" /
.
��/ 0
CreateGameObject
��0 @
(
��@ A
$str
��A N
)
��N O
;
��O P
if
�� 
(
�� 
parent
�� 
==
�� 
null
�� "
)
��" #
StageUtility
��  
.
��  !+
PlaceGameObjectInCurrentStage
��! >
(
��> ?
eventSystem
��? J
)
��J K
;
��K L
else
�� 
SetParentAndAlign
�� %
(
��% &
eventSystem
��& 1
,
��1 2
parent
��3 9
)
��9 :
;
��: ;
esys
�� 
=
�� 
ObjectFactory
�� $
.
��$ %
AddComponent
��% 1
<
��1 2
EventSystem
��2 =
>
��= >
(
��> ?
eventSystem
��? J
)
��J K
;
��K L
ObjectFactory
�� 
.
�� 
AddComponent
�� *
<
��* +#
StandaloneInputModule
��+ @
>
��@ A
(
��A B
eventSystem
��B M
)
��M N
;
��N O
Undo
�� 
.
�� '
RegisterCreatedObjectUndo
�� .
(
��. /
eventSystem
��/ :
,
��: ;
$str
��< E
+
��F G
eventSystem
��H S
.
��S T
name
��T X
)
��X Y
;
��Y Z
}
�� 
if
�� 
(
�� 
select
�� 
&&
�� 
esys
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
	Selection
�� 
.
�� 
activeGameObject
�� *
=
��+ ,
esys
��- 1
.
��1 2

gameObject
��2 <
;
��< =
}
�� 
}
�� 	
static
�� 
public
�� 

GameObject
��  )
GetOrCreateCanvasGameObject
��! <
(
��< =
)
��= >
{
�� 	

GameObject
�� 

selectedGo
�� !
=
��" #
	Selection
��$ -
.
��- .
activeGameObject
��. >
;
��> ?
Canvas
�� 
canvas
�� 
=
�� 
(
�� 

selectedGo
�� '
!=
��( *
null
��+ /
)
��/ 0
?
��1 2

selectedGo
��3 =
.
��= >"
GetComponentInParent
��> R
<
��R S
Canvas
��S Y
>
��Y Z
(
��Z [
)
��[ \
:
��] ^
null
��_ c
;
��c d
if
�� 
(
�� 
IsValidCanvas
�� 
(
�� 
canvas
�� $
)
��$ %
)
��% &
return
�� 
canvas
�� 
.
�� 

gameObject
�� (
;
��( )
Canvas
�� 
[
�� 
]
�� 
canvasArray
��  
=
��! "
StageUtility
��# /
.
��/ 0#
GetCurrentStageHandle
��0 E
(
��E F
)
��F G
.
��G H"
FindComponentsOfType
��H \
<
��\ ]
Canvas
��] c
>
��c d
(
��d e
)
��e f
;
��f g
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
�� 
canvasArray
��  +
.
��+ ,
Length
��, 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
if
�� 
(
�� 
IsValidCanvas
�� !
(
��! "
canvasArray
��" -
[
��- .
i
��. /
]
��/ 0
)
��0 1
)
��1 2
return
�� 
canvasArray
�� &
[
��& '
i
��' (
]
��( )
.
��) *

gameObject
��* 4
;
��4 5
return
�� 
MenuOptions
�� 
.
�� 
CreateNewUI
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
static
�� 
bool
�� 
IsValidCanvas
�� !
(
��! "
Canvas
��" (
canvas
��) /
)
��/ 0
{
�� 	
if
�� 
(
�� 
canvas
�� 
==
�� 
null
�� 
||
�� !
!
��" #
canvas
��# )
.
��) *

gameObject
��* 4
.
��4 5
activeInHierarchy
��5 F
)
��F G
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
EditorUtility
�� 
.
�� 
IsPersistent
�� *
(
��* +
canvas
��+ 1
)
��1 2
||
��3 5
(
��6 7
canvas
��7 =
.
��= >
	hideFlags
��> G
&
��H I
	HideFlags
��J S
.
��S T
HideInHierarchy
��T c
)
��c d
!=
��e g
$num
��h i
)
��i j
return
�� 
false
�� 
;
�� 
return
�� 
StageUtility
�� 
.
��  
GetStageHandle
��  .
(
��. /
canvas
��/ 5
.
��5 6

gameObject
��6 @
)
��@ A
==
��B D
StageUtility
��E Q
.
��Q R#
GetCurrentStageHandle
��R g
(
��g h
)
��h i
;
��i j
}
�� 	
}
�� 
}�� ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\FontDataDrawer.cs
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
;	** �#
m_CenterAlignTextActive++ '
=++( )
EditorGUIUtility++* :
.++: ;
IconContent++; F
(++F G
$str++G t
,++t u
$str	++v �
)
++� �
;
++� �"
m_RightAlignTextActive,, &
=,,' (
EditorGUIUtility,,) 9
.,,9 :
IconContent,,: E
(,,E F
$str,,F r
,,,r s
$str	,,t �
)
,,� �
;
,,� �
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
$str	33t �
)
33� �
;
33� �#
m_BottomAlignTextActive44 '
=44( )
EditorGUIUtility44* :
.44: ;
IconContent44; F
(44F G
$str44G r
,44r s
$str	44t �
)
44� �
;
44� �$
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
�� 
(
�� 
property
�� 
)
�� 
;
��  
m_FontFieldfHeight
�� 
=
��  
	EditorGUI
��! *
.
��* +
GetPropertyHeight
��+ <
(
��< =
m_Font
��= C
)
��C D
;
��D E
m_FontStyleHeight
�� 
=
��  !
	EditorGUI
��" +
.
��+ ,
GetPropertyHeight
��, =
(
��= >
m_FontStyle
��> I
)
��I J
;
��J K
m_FontSizeHeight
�� 
=
�� 
	EditorGUI
��  )
.
��) *
GetPropertyHeight
��* ;
(
��; <

m_FontSize
��< F
)
��F G
;
��G H!
m_LineSpacingHeight
�� 
=
��! "
	EditorGUI
��# ,
.
��, -
GetPropertyHeight
��- >
(
��> ?
m_LineSpacing
��? L
)
��L M
;
��M N
m_EncodingHeight
�� 
=
��  
	EditorGUI
��! *
.
��* +
GetPropertyHeight
��+ <
(
��< =
m_SupportEncoding
��= N
)
��N O
;
��O P*
m_ResizeTextForBestFitHeight
�� (
=
��) *
	EditorGUI
��+ 4
.
��4 5
GetPropertyHeight
��5 F
(
��F G$
m_ResizeTextForBestFit
��G ]
)
��] ^
;
��^ _'
m_ResizeTextMinSizeHeight
�� %
=
��& '
	EditorGUI
��( 1
.
��1 2
GetPropertyHeight
��2 C
(
��C D!
m_ResizeTextMinSize
��D W
)
��W X
;
��X Y'
m_ResizeTextMaxSizeHeight
�� %
=
��& '
	EditorGUI
��( 1
.
��1 2
GetPropertyHeight
��2 C
(
��C D!
m_ResizeTextMaxSize
��D W
)
��W X
;
��X Y(
m_HorizontalOverflowHeight
�� &
=
��' (
	EditorGUI
��) 2
.
��2 3
GetPropertyHeight
��3 D
(
��D E"
m_HorizontalOverflow
��E Y
)
��Y Z
;
��Z [&
m_VerticalOverflowHeight
�� $
=
��% &
	EditorGUI
��' 0
.
��0 1
GetPropertyHeight
��1 B
(
��B C 
m_VerticalOverflow
��C U
)
��U V
;
��V W%
m_AlignByGeometryHeight
�� #
=
��$ %
	EditorGUI
��& /
.
��/ 0
GetPropertyHeight
��0 A
(
��A B
m_AlignByGeometry
��B S
)
��S T
;
��T U
var
�� 
height
�� 
=
��  
m_FontFieldfHeight
�� +
+
�� 
m_FontStyleHeight
�� #
+
�� 
m_FontSizeHeight
�� "
+
�� !
m_LineSpacingHeight
�� %
+
�� 
m_EncodingHeight
�� "
+
�� *
m_ResizeTextForBestFitHeight
�� .
+
�� (
m_HorizontalOverflowHeight
�� ,
+
�� &
m_VerticalOverflowHeight
�� *
+
�� 
EditorGUIUtility
�� "
.
��" #
singleLineHeight
��# 3
*
��4 5
$num
��6 7
+
�� 
EditorGUIUtility
�� "
.
��" #%
standardVerticalSpacing
��# :
*
��; <
$num
��= ?
+
�� %
m_AlignByGeometryHeight
�� )
;
��) *
if
�� 
(
�� $
m_ResizeTextForBestFit
�� &
.
��& '
	boolValue
��' 0
)
��0 1
{
�� 
height
�� 
+=
�� '
m_ResizeTextMinSizeHeight
�� 3
+
�� '
m_ResizeTextMaxSizeHeight
�� /
+
�� 
EditorGUIUtility
�� &
.
��& '%
standardVerticalSpacing
��' >
*
��? @
$num
��A B
;
��B C
}
�� 
return
�� 
height
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnGUI
�� "
(
��" #
Rect
��# '
position
��( 0
,
��0 1 
SerializedProperty
��2 D
property
��E M
,
��M N

GUIContent
��O Y
label
��Z _
)
��_ `
{
�� 	
Init
�� 
(
�� 
property
�� 
)
�� 
;
�� 
Rect
�� 
rect
�� 
=
�� 
position
��  
;
��  !
rect
�� 
.
�� 
height
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
singleLineHeight
��+ ;
;
��; <
	EditorGUI
�� 
.
�� 

LabelField
��  
(
��  !
rect
��! %
,
��% &
$str
��' 2
,
��2 3
EditorStyles
��4 @
.
��@ A
	boldLabel
��A J
)
��J K
;
��K L
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� !
+
��" #
EditorGUIUtility
��$ 4
.
��4 5%
standardVerticalSpacing
��5 L
;
��L M
++
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
{
�� 
Font
�� 
font
�� 
=
�� 
m_Font
�� "
.
��" #"
objectReferenceValue
��# 7
as
��8 :
Font
��; ?
;
��? @
rect
�� 
.
�� 
height
�� 
=
��  
m_FontFieldfHeight
�� 0
;
��0 1
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
��, -
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -
m_Font
��. 4
)
��4 5
;
��5 6
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
�� 
font
�� 
=
�� 
m_Font
�� !
.
��! ""
objectReferenceValue
��" 6
as
��7 9
Font
��: >
;
��> ?
if
�� 
(
�� 
font
�� 
!=
�� 
null
��  $
&&
��% '
!
��( )
font
��) -
.
��- .
dynamic
��. 5
)
��5 6

m_FontSize
�� "
.
��" #
intValue
��# +
=
��, -
font
��. 2
.
��2 3
fontSize
��3 ;
;
��; <
}
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� 
m_FontStyleHeight
�� /
;
��/ 0
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
DisabledScope
��% 2
(
��2 3
!
��3 4
m_Font
��4 :
.
��: ;(
hasMultipleDifferentValues
��; U
&&
��V X
font
��Y ]
!=
��^ `
null
��a e
&&
��f h
!
��i j
font
��j n
.
��n o
dynamic
��o v
)
��v w
)
��w x
{
�� 
	EditorGUI
�� 
.
�� 
PropertyField
�� +
(
��+ ,
rect
��, 0
,
��0 1
m_FontStyle
��2 =
)
��= >
;
��> ?
}
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� 
m_FontSizeHeight
�� .
;
��. /
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -

m_FontSize
��. 8
)
��8 9
;
��9 :
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� !
m_LineSpacingHeight
�� 1
;
��1 2
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -
m_LineSpacing
��. ;
)
��; <
;
��< =
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� 
m_EncodingHeight
�� .
;
��. /
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -
m_SupportEncoding
��. ?
,
��? @
Styles
��A G
.
��G H
m_EncodingContent
��H Y
)
��Y Z
;
��Z [
}
�� 
--
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� !
+
��" #
EditorGUIUtility
��$ 4
.
��4 5%
standardVerticalSpacing
��5 L
;
��L M
rect
�� 
.
�� 
height
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
singleLineHeight
��+ ;
;
��; <
	EditorGUI
�� 
.
�� 

LabelField
��  
(
��  !
rect
��! %
,
��% &
$str
��' 2
,
��2 3
EditorStyles
��4 @
.
��@ A
	boldLabel
��A J
)
��J K
;
��K L
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� !
+
��" #
EditorGUIUtility
��$ 4
.
��4 5%
standardVerticalSpacing
��5 L
;
��L M
++
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
{
�� 
rect
�� 
.
�� 
height
�� 
=
�� 
EditorGUIUtility
�� .
.
��. /
singleLineHeight
��/ ?
;
��? @#
DoTextAligmentControl
�� %
(
��% &
rect
��& *
,
��* +
m_Alignment
��, 7
)
��7 8
;
��8 9
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� (
m_HorizontalOverflowHeight
�� 8
;
��8 9
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -
m_AlignByGeometry
��. ?
)
��? @
;
��@ A
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� (
m_HorizontalOverflowHeight
�� 8
;
��8 9
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -"
m_HorizontalOverflow
��. B
)
��B C
;
��C D
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� &
m_VerticalOverflowHeight
�� 6
;
��6 7
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, - 
m_VerticalOverflow
��. @
)
��@ A
;
��A B
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� 
.
�� 
height
�� %
+
��& '
EditorGUIUtility
��( 8
.
��8 9%
standardVerticalSpacing
��9 P
;
��P Q
rect
�� 
.
�� 
height
�� 
=
�� '
m_ResizeTextMaxSizeHeight
�� 7
;
��7 8
	EditorGUI
�� 
.
�� 
PropertyField
�� '
(
��' (
rect
��( ,
,
��, -$
m_ResizeTextForBestFit
��. D
)
��D E
;
��E F
if
�� 
(
�� $
m_ResizeTextForBestFit
�� *
.
��* +
	boolValue
��+ 4
)
��4 5
{
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� "
.
��" #
height
��# )
+
��* +
EditorGUIUtility
��, <
.
��< =%
standardVerticalSpacing
��= T
;
��T U
rect
�� 
.
�� 
height
�� 
=
��  !'
m_ResizeTextMinSizeHeight
��" ;
;
��; <
	EditorGUI
�� 
.
�� 
PropertyField
�� +
(
��+ ,
rect
��, 0
,
��0 1!
m_ResizeTextMinSize
��2 E
)
��E F
;
��F G
rect
�� 
.
�� 
y
�� 
+=
�� 
rect
�� "
.
��" #
height
��# )
+
��* +
EditorGUIUtility
��, <
.
��< =%
standardVerticalSpacing
��= T
;
��T U
rect
�� 
.
�� 
height
�� 
=
��  !'
m_ResizeTextMaxSizeHeight
��" ;
;
��; <
	EditorGUI
�� 
.
�� 
PropertyField
�� +
(
��+ ,
rect
��, 0
,
��0 1!
m_ResizeTextMaxSize
��2 E
)
��E F
;
��F G
}
�� 
}
�� 
--
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
}
�� 	
private
�� 
void
�� #
DoTextAligmentControl
�� *
(
��* +
Rect
��+ /
position
��0 8
,
��8 9 
SerializedProperty
��: L
	alignment
��M V
)
��V W
{
�� 	

GUIContent
�� 
alingmentContent
�� '
=
��( )
EditorGUIUtility
��* :
.
��: ;
TrTextContent
��; H
(
��H I
$str
��I T
)
��T U
;
��U V
int
�� 
id
�� 
=
�� 
EditorGUIUtility
�� %
.
��% &
GetControlID
��& 2
(
��2 3!
s_TextAlignmentHash
��3 F
,
��F G
	FocusType
��H Q
.
��Q R
Keyboard
��R Z
,
��Z [
position
��\ d
)
��d e
;
��e f
EditorGUIUtility
�� 
.
�� 
SetIconSize
�� (
(
��( )
new
��) ,
Vector2
��- 4
(
��4 5
$num
��5 7
,
��7 8
$num
��9 ;
)
��; <
)
��< =
;
��= >
	EditorGUI
�� 
.
�� 
BeginProperty
�� #
(
��# $
position
��$ ,
,
��, -
alingmentContent
��. >
,
��> ?
	alignment
��@ I
)
��I J
;
��J K
{
�� 
Rect
�� 
controlArea
��  
=
��! "
	EditorGUI
��# ,
.
��, -
PrefixLabel
��- 8
(
��8 9
position
��9 A
,
��A B
id
��C E
,
��E F
alingmentContent
��G W
)
��W X
;
��X Y
float
�� 
width
�� 
=
�� #
kAlignmentButtonWidth
�� 3
*
��4 5
$num
��6 7
;
��7 8
float
�� 
spacing
�� 
=
�� 
Mathf
��  %
.
��% &
Clamp
��& +
(
��+ ,
controlArea
��, 7
.
��7 8
width
��8 =
-
��> ?
width
��@ E
*
��F G
$num
��H I
,
��I J
$num
��K L
,
��L M
$num
��N P
)
��P Q
;
��Q R
Rect
��  
horizontalAligment
�� '
=
��( )
new
��* -
Rect
��. 2
(
��2 3
controlArea
��3 >
.
��> ?
x
��? @
,
��@ A
controlArea
��B M
.
��M N
y
��N O
,
��O P
width
��Q V
,
��V W
controlArea
��X c
.
��c d
height
��d j
)
��j k
;
��k l
Rect
�� 
verticalAligment
�� %
=
��& '
new
��( +
Rect
��, 0
(
��0 1 
horizontalAligment
��1 C
.
��C D
xMax
��D H
+
��I J
spacing
��K R
,
��R S
controlArea
��T _
.
��_ `
y
��` a
,
��a b
width
��c h
,
��h i
controlArea
��j u
.
��u v
height
��v |
)
��| }
;
��} ~)
DoHorizontalAligmentControl
�� +
(
��+ , 
horizontalAligment
��, >
,
��> ?
	alignment
��@ I
)
��I J
;
��J K'
DoVerticalAligmentControl
�� )
(
��) *
verticalAligment
��* :
,
��: ;
	alignment
��< E
)
��E F
;
��F G
}
�� 
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
EditorGUIUtility
�� 
.
�� 
SetIconSize
�� (
(
��( )
Vector2
��) 0
.
��0 1
zero
��1 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
static
�� 
void
�� )
DoHorizontalAligmentControl
�� 7
(
��7 8
Rect
��8 <
position
��= E
,
��E F 
SerializedProperty
��G Y
	alignment
��Z c
)
��c d
{
�� 	

TextAnchor
�� 
ta
�� 
=
�� 
(
�� 

TextAnchor
�� '
)
��' (
	alignment
��( 1
.
��1 2
intValue
��2 :
;
��: ;$
HorizontalTextAligment
�� "!
horizontalAlignment
��# 6
=
��7 8$
GetHorizontalAlignment
��9 O
(
��O P
ta
��P R
)
��R S
;
��S T
bool
�� 
	leftAlign
�� 
=
�� 
(
�� !
horizontalAlignment
�� 1
==
��2 4$
HorizontalTextAligment
��5 K
.
��K L
Left
��L P
)
��P Q
;
��Q R
bool
�� 
centerAlign
�� 
=
�� 
(
��  !
horizontalAlignment
��  3
==
��4 6$
HorizontalTextAligment
��7 M
.
��M N
Center
��N T
)
��T U
;
��U V
bool
�� 

rightAlign
�� 
=
�� 
(
�� !
horizontalAlignment
�� 2
==
��3 5$
HorizontalTextAligment
��6 L
.
��L M
Right
��M R
)
��R S
;
��S T
if
�� 
(
�� 
	alignment
�� 
.
�� (
hasMultipleDifferentValues
�� 4
)
��4 5
{
�� 
foreach
�� 
(
�� 
var
�� 
obj
��  
in
��! #
	alignment
��$ -
.
��- .
serializedObject
��. >
.
��> ?
targetObjects
��? L
)
��L M
{
�� 
Text
�� 
text
�� 
=
�� 
obj
��  #
as
��$ &
Text
��' +
;
��+ ,!
horizontalAlignment
�� '
=
��( )$
GetHorizontalAlignment
��* @
(
��@ A
text
��A E
.
��E F
	alignment
��F O
)
��O P
;
��P Q
	leftAlign
�� 
=
�� 
	leftAlign
��  )
||
��* ,
(
��- .!
horizontalAlignment
��. A
==
��B D$
HorizontalTextAligment
��E [
.
��[ \
Left
��\ `
)
��` a
;
��a b
centerAlign
�� 
=
��  !
centerAlign
��" -
||
��. 0
(
��1 2!
horizontalAlignment
��2 E
==
��F H$
HorizontalTextAligment
��I _
.
��_ `
Center
��` f
)
��f g
;
��g h

rightAlign
�� 
=
��  

rightAlign
��! +
||
��, .
(
��/ 0!
horizontalAlignment
��0 C
==
��D F$
HorizontalTextAligment
��G ]
.
��] ^
Right
��^ c
)
��c d
;
��d e
}
�� 
}
�� 
position
�� 
.
�� 
width
�� 
=
�� #
kAlignmentButtonWidth
�� 2
;
��2 3
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "
	leftAlign
��# ,
,
��, -
	leftAlign
��. 7
?
��8 9
Styles
��: @
.
��@ A#
m_LeftAlignTextActive
��A V
:
��W X
Styles
��Y _
.
��_ `
m_LeftAlignText
��` o
,
��o p
Styles
��q w
.
��w x"
alignmentButtonLeft��x �
)��� �
;��� �
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
��) *
)
��* +
{
�� $
SetHorizontalAlignment
�� &
(
��& '
	alignment
��' 0
,
��0 1$
HorizontalTextAligment
��2 H
.
��H I
Left
��I M
)
��M N
;
��N O
}
�� 
position
�� 
.
�� 
x
�� 
+=
�� 
position
�� "
.
��" #
width
��# (
;
��( )
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "
centerAlign
��# .
,
��. /
centerAlign
��0 ;
?
��< =
Styles
��> D
.
��D E%
m_CenterAlignTextActive
��E \
:
��] ^
Styles
��_ e
.
��e f
m_CenterAlignText
��f w
,
��w x
Styles
��y 
.�� �"
alignmentButtonMid��� �
)��� �
;��� �
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
��) *
)
��* +
{
�� $
SetHorizontalAlignment
�� &
(
��& '
	alignment
��' 0
,
��0 1$
HorizontalTextAligment
��2 H
.
��H I
Center
��I O
)
��O P
;
��P Q
}
�� 
position
�� 
.
�� 
x
�� 
+=
�� 
position
�� "
.
��" #
width
��# (
;
��( )
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "

rightAlign
��# -
,
��- .

rightAlign
��/ 9
?
��: ;
Styles
��< B
.
��B C$
m_RightAlignTextActive
��C Y
:
��Z [
Styles
��\ b
.
��b c
m_RightAlignText
��c s
,
��s t
Styles
��u {
.
��{ |#
alignmentButtonRight��| �
)��� �
;��� �
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
��) *
)
��* +
{
�� $
SetHorizontalAlignment
�� &
(
��& '
	alignment
��' 0
,
��0 1$
HorizontalTextAligment
��2 H
.
��H I
Right
��I N
)
��N O
;
��O P
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� '
DoVerticalAligmentControl
�� 5
(
��5 6
Rect
��6 :
position
��; C
,
��C D 
SerializedProperty
��E W
	alignment
��X a
)
��a b
{
�� 	

TextAnchor
�� 
ta
�� 
=
�� 
(
�� 

TextAnchor
�� '
)
��' (
	alignment
��( 1
.
��1 2
intValue
��2 :
;
��: ;"
VerticalTextAligment
��  "
verticalTextAligment
��! 5
=
��6 7"
GetVerticalAlignment
��8 L
(
��L M
ta
��M O
)
��O P
;
��P Q
bool
�� 
topAlign
�� 
=
�� 
(
�� "
verticalTextAligment
�� 1
==
��2 4"
VerticalTextAligment
��5 I
.
��I J
Top
��J M
)
��M N
;
��N O
bool
�� 
middleAlign
�� 
=
�� 
(
��  "
verticalTextAligment
��  4
==
��5 7"
VerticalTextAligment
��8 L
.
��L M
Middle
��M S
)
��S T
;
��T U
bool
�� 
bottomAlign
�� 
=
�� 
(
��  "
verticalTextAligment
��  4
==
��5 7"
VerticalTextAligment
��8 L
.
��L M
Bottom
��M S
)
��S T
;
��T U
if
�� 
(
�� 
	alignment
�� 
.
�� (
hasMultipleDifferentValues
�� 4
)
��4 5
{
�� 
foreach
�� 
(
�� 
var
�� 
obj
��  
in
��! #
	alignment
��$ -
.
��- .
serializedObject
��. >
.
��> ?
targetObjects
��? L
)
��L M
{
�� 
Text
�� 
text
�� 
=
�� 
obj
��  #
as
��$ &
Text
��' +
;
��+ ,

TextAnchor
�� 
textAlignment
�� ,
=
��- .
text
��/ 3
.
��3 4
	alignment
��4 =
;
��= >"
verticalTextAligment
�� (
=
��) *"
GetVerticalAlignment
��+ ?
(
��? @
textAlignment
��@ M
)
��M N
;
��N O
topAlign
�� 
=
�� 
topAlign
�� '
||
��( *
(
��+ ,"
verticalTextAligment
��, @
==
��A C"
VerticalTextAligment
��D X
.
��X Y
Top
��Y \
)
��\ ]
;
��] ^
middleAlign
�� 
=
��  !
middleAlign
��" -
||
��. 0
(
��1 2"
verticalTextAligment
��2 F
==
��G I"
VerticalTextAligment
��J ^
.
��^ _
Middle
��_ e
)
��e f
;
��f g
bottomAlign
�� 
=
��  !
bottomAlign
��" -
||
��. 0
(
��1 2"
verticalTextAligment
��2 F
==
��G I"
VerticalTextAligment
��J ^
.
��^ _
Bottom
��_ e
)
��e f
;
��f g
}
�� 
}
�� 
position
�� 
.
�� 
width
�� 
=
�� #
kAlignmentButtonWidth
�� 2
;
��2 3
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "
topAlign
��# +
,
��+ ,
topAlign
��- 5
?
��6 7
Styles
��8 >
.
��> ?"
m_TopAlignTextActive
��? S
:
��T U
Styles
��V \
.
��\ ]
m_TopAlignText
��] k
,
��k l
Styles
��m s
.
��s t"
alignmentButtonLeft��t �
)��� �
;��� �
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
��) *
)
��* +
{
�� "
SetVerticalAlignment
�� $
(
��$ %
	alignment
��% .
,
��. /"
VerticalTextAligment
��0 D
.
��D E
Top
��E H
)
��H I
;
��I J
}
�� 
position
�� 
.
�� 
x
�� 
+=
�� 
position
�� "
.
��" #
width
��# (
;
��( )
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "
middleAlign
��# .
,
��. /
middleAlign
��0 ;
?
��< =
Styles
��> D
.
��D E%
m_MiddleAlignTextActive
��E \
:
��] ^
Styles
��_ e
.
��e f
m_MiddleAlignText
��f w
,
��w x
Styles
��y 
.�� �"
alignmentButtonMid��� �
)��� �
;��� �
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
��) *
)
��* +
{
�� "
SetVerticalAlignment
�� $
(
��$ %
	alignment
��% .
,
��. /"
VerticalTextAligment
��0 D
.
��D E
Middle
��E K
)
��K L
;
��L M
}
�� 
position
�� 
.
�� 
x
�� 
+=
�� 
position
�� "
.
��" #
width
��# (
;
��( )
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
��( )
EditorToggle
�� 
(
�� 
position
�� !
,
��! "
bottomAlign
��# .
,
��. /
bottomAlign
��0 ;
?
��< =
Styles
��> D
.
��D E%
m_BottomAlignTextActive
��E \
:
��] ^
Styles
��_ e
.
��e f
m_BottomAlignText
��f w
,
��w x
Styles
��y 
.�� �$
alignmentButtonRight��� �
)��� �
;��� �
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
��) *
)
��* +
{
�� "
SetVerticalAlignment
�� $
(
��$ %
	alignment
��% .
,
��. /"
VerticalTextAligment
��0 D
.
��D E
Bottom
��E K
)
��K L
;
��L M
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
EditorToggle
�� (
(
��( )
Rect
��) -
position
��. 6
,
��6 7
bool
��8 <
value
��= B
,
��B C

GUIContent
��D N
content
��O V
,
��V W
GUIStyle
��X `
style
��a f
)
��f g
{
�� 	
int
�� 
hashCode
�� 
=
�� 
$str
�� (
.
��( )
GetHashCode
��) 4
(
��4 5
)
��5 6
;
��6 7
int
�� 
id
�� 
=
�� 
EditorGUIUtility
�� %
.
��% &
GetControlID
��& 2
(
��2 3
hashCode
��3 ;
,
��; <
	FocusType
��= F
.
��F G
Keyboard
��G O
,
��O P
position
��Q Y
)
��Y Z
;
��Z [
Event
�� 
evt
�� 
=
�� 
Event
�� 
.
�� 
current
�� %
;
��% &
if
�� 
(
�� 
EditorGUIUtility
��  
.
��  !
keyboardControl
��! 0
==
��1 3
id
��4 6
&&
��7 9
evt
��: =
.
��= >
type
��> B
==
��C E
	EventType
��F O
.
��O P
KeyDown
��P W
&&
��X Z
(
��[ \
evt
��\ _
.
��_ `
keyCode
��` g
==
��h j
KeyCode
��k r
.
��r s
Space
��s x
||
��y {
evt
��| 
.�� �
keyCode��� �
==��� �
KeyCode��� �
.��� �
Return��� �
||��� �
evt��� �
.��� �
keyCode��� �
==��� �
KeyCode��� �
.��� �
KeypadEnter��� �
)��� �
)��� �
{
�� 
value
�� 
=
�� 
!
�� 
value
�� 
;
�� 
evt
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
�� 
true
�� "
;
��" #
}
�� 
if
�� 
(
�� 
evt
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� %
.
��% &
KeyDown
��& -
&&
��. 0
Event
��1 6
.
��6 7
current
��7 >
.
��> ?
button
��? E
==
��F H
$num
��I J
&&
��K M
position
��N V
.
��V W
Contains
��W _
(
��_ `
Event
��` e
.
��e f
current
��f m
.
��m n
mousePosition
��n {
)
��{ |
)
��| }
{
�� 

GUIUtility
�� 
.
�� 
keyboardControl
�� *
=
��+ ,
id
��- /
;
��/ 0
EditorGUIUtility
��  
.
��  !
editingTextField
��! 1
=
��2 3
false
��4 9
;
��9 :
HandleUtility
�� 
.
�� 
Repaint
�� %
(
��% &
)
��& '
;
��' (
}
�� 
bool
�� 
returnValue
�� 
=
�� 
GUI
�� "
.
��" #
Toggle
��# )
(
��) *
position
��* 2
,
��2 3
id
��4 6
,
��6 7
value
��8 =
,
��= >
content
��? F
,
��F G
style
��H M
)
��M N
;
��N O
return
�� 
returnValue
�� 
;
�� 
}
�� 	
private
�� 
static
�� $
HorizontalTextAligment
�� -$
GetHorizontalAlignment
��. D
(
��D E

TextAnchor
��E O
ta
��P R
)
��R S
{
�� 	
switch
�� 
(
�� 
ta
�� 
)
�� 
{
�� 
case
�� 

TextAnchor
�� 
.
��  
MiddleCenter
��  ,
:
��, -
case
�� 

TextAnchor
�� 
.
��  
UpperCenter
��  +
:
��+ ,
case
�� 

TextAnchor
�� 
.
��  
LowerCenter
��  +
:
��+ ,
return
�� $
HorizontalTextAligment
�� 1
.
��1 2
Center
��2 8
;
��8 9
case
�� 

TextAnchor
�� 
.
��  

UpperRight
��  *
:
��* +
case
�� 

TextAnchor
�� 
.
��  
MiddleRight
��  +
:
��+ ,
case
�� 

TextAnchor
�� 
.
��  

LowerRight
��  *
:
��* +
return
�� $
HorizontalTextAligment
�� 1
.
��1 2
Right
��2 7
;
��7 8
case
�� 

TextAnchor
�� 
.
��  
	UpperLeft
��  )
:
��) *
case
�� 

TextAnchor
�� 
.
��  

MiddleLeft
��  *
:
��* +
case
�� 

TextAnchor
�� 
.
��  
	LowerLeft
��  )
:
��) *
return
�� $
HorizontalTextAligment
�� 1
.
��1 2
Left
��2 6
;
��6 7
}
�� 
return
�� $
HorizontalTextAligment
�� )
.
��) *
Left
��* .
;
��. /
}
�� 	
private
�� 
static
�� "
VerticalTextAligment
�� +"
GetVerticalAlignment
��, @
(
��@ A

TextAnchor
��A K
ta
��L N
)
��N O
{
�� 	
switch
�� 
(
�� 
ta
�� 
)
�� 
{
�� 
case
�� 

TextAnchor
�� 
.
��  
	UpperLeft
��  )
:
��) *
case
�� 

TextAnchor
�� 
.
��  
UpperCenter
��  +
:
��+ ,
case
�� 

TextAnchor
�� 
.
��  

UpperRight
��  *
:
��* +
return
�� "
VerticalTextAligment
�� /
.
��/ 0
Top
��0 3
;
��3 4
case
�� 

TextAnchor
�� 
.
��  

MiddleLeft
��  *
:
��* +
case
�� 

TextAnchor
�� 
.
��  
MiddleCenter
��  ,
:
��, -
case
�� 

TextAnchor
�� 
.
��  
MiddleRight
��  +
:
��+ ,
return
�� "
VerticalTextAligment
�� /
.
��/ 0
Middle
��0 6
;
��6 7
case
�� 

TextAnchor
�� 
.
��  
	LowerLeft
��  )
:
��) *
case
�� 

TextAnchor
�� 
.
��  
LowerCenter
��  +
:
��+ ,
case
�� 

TextAnchor
�� 
.
��  

LowerRight
��  *
:
��* +
return
�� "
VerticalTextAligment
�� /
.
��/ 0
Bottom
��0 6
;
��6 7
}
�� 
return
�� "
VerticalTextAligment
�� '
.
��' (
Top
��( +
;
��+ ,
}
�� 	
private
�� 
static
�� 
void
�� $
SetHorizontalAlignment
�� 2
(
��2 3 
SerializedProperty
��3 E
	alignment
��F O
,
��O P$
HorizontalTextAligment
��Q g!
horizontalAlignment
��h {
)
��{ |
{
�� 	
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
	alignment
��  )
.
��) *
serializedObject
��* :
.
��: ;
targetObjects
��; H
)
��H I
{
�� 
Text
�� 
text
�� 
=
�� 
obj
�� 
as
��  "
Text
��# '
;
��' ("
VerticalTextAligment
�� $%
currentVerticalAligment
��% <
=
��= >"
GetVerticalAlignment
��? S
(
��S T
text
��T X
.
��X Y
	alignment
��Y b
)
��b c
;
��c d
Undo
�� 
.
�� 
RecordObject
�� !
(
��! "
text
��" &
,
��& '
$str
��( >
)
��> ?
;
��? @
text
�� 
.
�� 
	alignment
�� 
=
��  
	GetAnchor
��! *
(
��* +%
currentVerticalAligment
��+ B
,
��B C!
horizontalAlignment
��D W
)
��W X
;
��X Y
EditorUtility
�� 
.
�� 
SetDirty
�� &
(
��& '
obj
��' *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� "
SetVerticalAlignment
�� 0
(
��0 1 
SerializedProperty
��1 C
	alignment
��D M
,
��M N"
VerticalTextAligment
��O c
verticalAlignment
��d u
)
��u v
{
�� 	
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
	alignment
��  )
.
��) *
serializedObject
��* :
.
��: ;
targetObjects
��; H
)
��H I
{
�� 
Text
�� 
text
�� 
=
�� 
obj
�� 
as
��  "
Text
��# '
;
��' ($
HorizontalTextAligment
�� &'
currentHorizontalAligment
��' @
=
��A B$
GetHorizontalAlignment
��C Y
(
��Y Z
text
��Z ^
.
��^ _
	alignment
��_ h
)
��h i
;
��i j
Undo
�� 
.
�� 
RecordObject
�� !
(
��! "
text
��" &
,
��& '
$str
��( <
)
��< =
;
��= >
text
�� 
.
�� 
	alignment
�� 
=
��  
	GetAnchor
��! *
(
��* +
verticalAlignment
��+ <
,
��< ='
currentHorizontalAligment
��> W
)
��W X
;
��X Y
EditorUtility
�� 
.
�� 
SetDirty
�� &
(
��& '
obj
��' *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
static
�� 

TextAnchor
�� !
	GetAnchor
��" +
(
��+ ,"
VerticalTextAligment
��, @"
verticalTextAligment
��A U
,
��U V$
HorizontalTextAligment
��W m%
horizontalTextAligment��n �
)��� �
{
�� 	

TextAnchor
�� 
ac
�� 
=
�� 

TextAnchor
�� &
.
��& '
	UpperLeft
��' 0
;
��0 1
switch
�� 
(
�� $
horizontalTextAligment
�� *
)
��* +
{
�� 
case
�� $
HorizontalTextAligment
�� +
.
��+ ,
Left
��, 0
:
��0 1
switch
�� 
(
�� "
verticalTextAligment
�� 0
)
��0 1
{
�� 
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Bottom
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
	LowerLeft
��, 5
;
��5 6
break
�� !
;
��! "
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Middle
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,

MiddleLeft
��, 6
;
��6 7
break
�� !
;
��! "
default
�� 
:
��  
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
	UpperLeft
��, 5
;
��5 6
break
�� !
;
��! "
}
�� 
break
�� 
;
�� 
case
�� $
HorizontalTextAligment
�� +
.
��+ ,
Center
��, 2
:
��2 3
switch
�� 
(
�� "
verticalTextAligment
�� 0
)
��0 1
{
�� 
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Bottom
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
LowerCenter
��, 7
;
��7 8
break
�� !
;
��! "
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Middle
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
MiddleCenter
��, 8
;
��8 9
break
�� !
;
��! "
default
�� 
:
��  
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
UpperCenter
��, 7
;
��7 8
break
�� !
;
��! "
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
switch
�� 
(
�� "
verticalTextAligment
�� 0
)
��0 1
{
�� 
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Bottom
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,

LowerRight
��, 6
;
��6 7
break
�� !
;
��! "
case
�� "
VerticalTextAligment
�� 1
.
��1 2
Middle
��2 8
:
��8 9
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,
MiddleRight
��, 7
;
��7 8
break
�� !
;
��! "
default
�� 
:
��  
ac
�� 
=
��  

TextAnchor
��! +
.
��+ ,

UpperRight
��, 6
;
��6 7
break
�� !
;
��! "
}
�� 
break
�� 
;
�� 
}
�� 
return
�� 
ac
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\Physics2DRaycasterEditor.cs
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
} �i
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\InputFieldEditor.cs
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
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_CaretColor
��2 >
)
��> ?
;
��? @
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_SelectionColor
��. >
)
��> ?
;
��? @
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_HideMobileInput
��. ?
)
��? @
;
��@ A
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .

m_ReadOnly
��. 8
)
��8 9
;
��9 :
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .&
m_ShouldActivateOnSelect
��. F
)
��F G
;
��G H
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_OnValueChanged
��. >
)
��> ?
;
��? @
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_OnEndEdit
��. 9
)
��9 :
;
��: ;
}
�� 
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� � 
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\EventSystemEditor.cs
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
}GG ӎ
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\CanvasScalerEditor.cs
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
.	EE �

gameObject
EE� �
.
EE� �
	hideFlags
EE� �
==
EE� �
$num
EE� �
)
EE� �
:
EE� �
!
EE� �
AssetDatabase
EE� �
.
EE� �
Contains
EE� �
(
EE� � 
m_SerializedObject
EE� �
.
EE� �
targetObject
EE� �
)
EE� �
;
EE� �
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

RenderMode	eev �
.
ee� �

WorldSpace
ee� �
)
ee� �
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
�� 
.
�� 
showMixedValue
�� $
=
��% &
false
��' ,
;
��, -
if
�� 
(
�� 
!
�� 
showWorldDiffers
�� !
&&
��" $
!
��% &
(
��& '
!
��' (
	showWorld
��( 1
&&
��2 4
m_UiScaleMode
��5 B
.
��B C(
hasMultipleDifferentValues
��C ]
)
��] ^
)
��^ _
{
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
if
�� 
(
�� 
	showWorld
�� 
)
�� 
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2$
m_DynamicPixelsPerUnit
��2 H
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
�� 
m_UiScaleMode
�� &
.
��& '
enumValueIndex
��' 5
==
��6 8
(
��9 :
int
��: =
)
��= >
CanvasScaler
��> J
.
��J K
	ScaleMode
��K T
.
��T U
ConstantPixelSize
��U f
)
��f g
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_ScaleFactor
��2 ?
)
��? @
;
��@ A
}
�� 
else
�� 
if
�� 
(
�� 
m_UiScaleMode
�� &
.
��& '
enumValueIndex
��' 5
==
��6 8
(
��9 :
int
��: =
)
��= >
CanvasScaler
��> J
.
��J K
	ScaleMode
��K T
.
��T U!
ScaleWithScreenSize
��U h
)
��h i
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2#
m_ReferenceResolution
��2 G
)
��G H
;
��H I
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_ScreenMatchMode
��2 C
)
��C D
;
��D E
if
�� 
(
�� 
m_ScreenMatchMode
�� )
.
��) *
enumValueIndex
��* 8
==
��9 ;
(
��< =
int
��= @
)
��@ A
CanvasScaler
��A M
.
��M N
ScreenMatchMode
��N ]
.
��] ^ 
MatchWidthOrHeight
��^ p
&&
��q s
!
��t u 
m_ScreenMatchMode��u �
.��� �*
hasMultipleDifferentValues��� �
)��� �
{
�� 
Rect
�� 
r
�� 
=
��  
EditorGUILayout
��! 0
.
��0 1
GetControlRect
��1 ?
(
��? @
true
��@ D
,
��D E
EditorGUIUtility
��F V
.
��V W
singleLineHeight
��W g
+
��h i*
kSliderEndpointLabelsHeight��j �
)��� �
;��� �
DualLabeledSlider
�� )
(
��) *
r
��* +
,
��+ ,"
m_MatchWidthOrHeight
��- A
,
��A B
s_Styles
��C K
.
��K L
matchContent
��L X
,
��X Y
s_Styles
��Z b
.
��b c
widthContent
��c o
,
��o p
s_Styles
��q y
.
��y z
heightContent��z �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
m_UiScaleMode
�� &
.
��& '
enumValueIndex
��' 5
==
��6 8
(
��9 :
int
��: =
)
��= >
CanvasScaler
��> J
.
��J K
	ScaleMode
��K T
.
��T U"
ConstantPhysicalSize
��U i
)
��i j
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_PhysicalUnit
��2 @
)
��@ A
;
��A B
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2!
m_FallbackScreenDPI
��2 E
)
��E F
;
��F G
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2 
m_DefaultSpriteDPI
��2 D
)
��D E
;
��E F
}
�� 
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .&
m_ReferencePixelsPerUnit
��. F
)
��F G
;
��G H
}
�� 
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
static
�� 
void
�� 
DualLabeledSlider
�� -
(
��- .
Rect
��. 2
position
��3 ;
,
��; < 
SerializedProperty
��= O
property
��P X
,
��X Y

GUIContent
��Z d
	mainLabel
��e n
,
��n o

GUIContent
��p z
	labelLeft��{ �
,��� �

GUIContent��� �

labelRight��� �
)��� �
{
�� 	
position
�� 
.
�� 
height
�� 
=
�� 
EditorGUIUtility
�� .
.
��. /
singleLineHeight
��/ ?
;
��? @
Rect
�� 
pos
�� 
=
�� 
position
�� 
;
��  
position
�� 
.
�� 
y
�� 
+=
�� 
$num
�� 
;
�� 
position
�� 
.
�� 
xMin
�� 
+=
�� 
EditorGUIUtility
�� -
.
��- .

labelWidth
��. 8
;
��8 9
position
�� 
.
�� 
xMax
�� 
-=
�� 
EditorGUIUtility
�� -
.
��- .

fieldWidth
��. 8
;
��8 9
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� 
,
�� 
	labelLeft
��  )
,
��) *
s_Styles
��+ 3
.
��3 4
leftAlignedLabel
��4 D
)
��D E
;
��E F
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� 
,
�� 

labelRight
��  *
,
��* +
s_Styles
��, 4
.
��4 5
rightAlignedLabel
��5 F
)
��F G
;
��G H
	EditorGUI
�� 
.
�� 
PropertyField
�� #
(
��# $
pos
��$ '
,
��' (
property
��) 1
,
��1 2
	mainLabel
��3 <
)
��< =
;
��= >
}
�� 	
}
�� 
}�� �

�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PrefabLayoutRebuilder.cs
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
} ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SelectableEditor.cs
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
$str	W �
)
� �
;
� �
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
;	oo �!
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

SpriteSwap	pp{ �
)
pp� �
;
pp� � 
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
	Animation	qqz �
)
qq� �
;
qq� �
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
�� +
.
��+ ,
HelpBox
��, 3
(
��3 4
$str
��4 x
,
��x y
MessageType��z �
.��� �
Warning��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 

Selectable
�� #
.
��# $

Transition
��$ .
.
��. /

SpriteSwap
��/ 9
:
��9 :
if
�� 
(
�� 
graphic
�� #
as
��$ &
Image
��' ,
==
��- /
null
��0 4
)
��4 5
EditorGUILayout
�� +
.
��+ ,
HelpBox
��, 3
(
��3 4
$str
��4 |
,
��| }
MessageType��~ �
.��� �
Warning��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3
m_ShowColorTint
��3 B
.
��B C
faded
��C H
)
��H I
)
��I J
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2"
m_ColorBlockProperty
��2 F
)
��F G
;
��G H
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3#
m_ShowSpriteTrasition
��3 H
.
��H I
faded
��I N
)
��N O
)
��O P
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2#
m_SpriteStateProperty
��2 G
)
��G H
;
��H I
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3"
m_ShowAnimTransition
��3 G
.
��G H
faded
��H M
)
��M N
)
��N O
{
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2#
m_AnimTriggerProperty
��2 G
)
��G H
;
��H I
if
�� 
(
�� 
animator
��  
==
��! #
null
��$ (
||
��) +
animator
��, 4
.
��4 5'
runtimeAnimatorController
��5 N
==
��O Q
null
��R V
)
��V W
{
�� 
Rect
�� 

buttonRect
�� '
=
��( )
EditorGUILayout
��* 9
.
��9 :
GetControlRect
��: H
(
��H I
)
��I J
;
��J K

buttonRect
�� "
.
��" #
xMin
��# '
+=
��( *
EditorGUIUtility
��+ ;
.
��; <

labelWidth
��< F
;
��F G
if
�� 
(
�� 
GUI
�� 
.
��  
Button
��  &
(
��& '

buttonRect
��' 1
,
��1 2
$str
��3 L
,
��L M
EditorStyles
��N Z
.
��Z [

miniButton
��[ e
)
��e f
)
��f g
{
�� 
var
�� 

controller
��  *
=
��+ ,1
#GenerateSelectableAnimatorContoller
��- P
(
��P Q
(
��Q R
target
��R X
as
��Y [

Selectable
��\ f
)
��f g
.
��g h
animationTriggers
��h y
,
��y z
target��{ �
as��� �

Selectable��� �
)��� �
;��� �
if
�� 
(
��  

controller
��  *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
if
��  "
(
��# $
animator
��$ ,
==
��- /
null
��0 4
)
��4 5
animator
��$ ,
=
��- .
(
��/ 0
target
��0 6
as
��7 9

Selectable
��: D
)
��D E
.
��E F

gameObject
��F P
.
��P Q
AddComponent
��Q ]
<
��] ^
Animator
��^ f
>
��f g
(
��g h
)
��h i
;
��i j

Animations
��  *
.
��* + 
AnimatorController
��+ =
.
��= >#
SetAnimatorController
��> S
(
��S T
animator
��T \
,
��\ ]

controller
��^ h
)
��h i
;
��i j
}
�� 
}
�� 
}
�� 
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
}
�� 
--
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *"
m_NavigationProperty
��* >
)
��> ?
;
��? @
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
Rect
�� 

toggleRect
�� 
=
�� 
EditorGUILayout
�� -
.
��- .
GetControlRect
��. <
(
��< =
)
��= >
;
��> ?

toggleRect
�� 
.
�� 
xMin
�� 
+=
�� 
EditorGUIUtility
�� /
.
��/ 0

labelWidth
��0 :
;
��: ;
s_ShowNavigation
�� 
=
�� 
GUI
�� "
.
��" #
Toggle
��# )
(
��) *

toggleRect
��* 4
,
��4 5
s_ShowNavigation
��6 F
,
��F G#
m_VisualizeNavigation
��H ]
,
��] ^
EditorStyles
��_ k
.
��k l

miniButton
��l v
)
��v w
;
��w x
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
EditorPrefs
�� 
.
�� 
SetBool
�� #
(
��# $!
s_ShowNavigationKey
��$ 7
,
��7 8
s_ShowNavigation
��9 I
)
��I J
;
��J K
	SceneView
�� 
.
�� 

RepaintAll
�� $
(
��$ %
)
��% &
;
��& '
}
�� %
ChildClassPropertiesGUI
�� #
(
��# $
)
��$ %
;
��% &
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
void
�� %
ChildClassPropertiesGUI
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� '
IsDerivedSelectableEditor
�� )
(
��) *
)
��* +
)
��+ ,
return
�� 
;
�� %
DrawPropertiesExcluding
�� #
(
��# $
serializedObject
��$ 4
,
��4 54
&m_PropertyPathToExcludeForChildClasses
��6 \
)
��\ ]
;
��] ^
}
�� 	
private
�� 
bool
�� '
IsDerivedSelectableEditor
�� .
(
��. /
)
��/ 0
{
�� 	
return
�� 
GetType
�� 
(
�� 
)
�� 
!=
�� 
typeof
��  &
(
��& '
SelectableEditor
��' 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
static
�� 

Animations
�� !
.
��! " 
AnimatorController
��" 41
#GenerateSelectableAnimatorContoller
��5 X
(
��X Y
AnimationTriggers
��Y j
animationTriggers
��k |
,
��| }

Selectable��~ �
target��� �
)��� �
{
�� 	
if
�� 
(
�� 
target
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
var
�� 
path
�� 
=
�� #
GetSaveControllerPath
�� ,
(
��, -
target
��- 3
)
��3 4
;
��4 5
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
path
��% )
)
��) *
)
��* +
return
�� 
null
�� 
;
�� 
var
�� 

normalName
�� 
=
�� 
string
�� #
.
��# $
IsNullOrEmpty
��$ 1
(
��1 2
animationTriggers
��2 C
.
��C D
normalTrigger
��D Q
)
��Q R
?
��S T
$str
��U ]
:
��^ _
animationTriggers
��` q
.
��q r
normalTrigger
��r 
;�� �
var
�� 
highlightedName
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
animationTriggers
��7 H
.
��H I 
highlightedTrigger
��I [
)
��[ \
?
��] ^
$str
��_ l
:
��m n 
animationTriggers��o �
.��� �"
highlightedTrigger��� �
;��� �
var
�� 
pressedName
�� 
=
�� 
string
�� $
.
��$ %
IsNullOrEmpty
��% 2
(
��2 3
animationTriggers
��3 D
.
��D E
pressedTrigger
��E S
)
��S T
?
��U V
$str
��W `
:
��a b
animationTriggers
��c t
.
��t u
pressedTrigger��u �
;��� �
var
�� 
selectedName
�� 
=
�� 
string
�� %
.
��% &
IsNullOrEmpty
��& 3
(
��3 4
animationTriggers
��4 E
.
��E F
selectedTrigger
��F U
)
��U V
?
��W X
$str
��Y c
:
��d e
animationTriggers
��f w
.
��w x
selectedTrigger��x �
;��� �
var
�� 
disabledName
�� 
=
�� 
string
�� %
.
��% &
IsNullOrEmpty
��& 3
(
��3 4
animationTriggers
��4 E
.
��E F
disabledTrigger
��F U
)
��U V
?
��W X
$str
��Y c
:
��d e
animationTriggers
��f w
.
��w x
disabledTrigger��x �
;��� �
var
�� 

controller
�� 
=
�� 

Animations
�� '
.
��' ( 
AnimatorController
��( :
.
��: ;,
CreateAnimatorControllerAtPath
��; Y
(
��Y Z
path
��Z ^
)
��^ _
;
��_ `+
GenerateTriggerableTransition
�� )
(
��) *

normalName
��* 4
,
��4 5

controller
��6 @
)
��@ A
;
��A B+
GenerateTriggerableTransition
�� )
(
��) *
highlightedName
��* 9
,
��9 :

controller
��; E
)
��E F
;
��F G+
GenerateTriggerableTransition
�� )
(
��) *
pressedName
��* 5
,
��5 6

controller
��7 A
)
��A B
;
��B C+
GenerateTriggerableTransition
�� )
(
��) *
selectedName
��* 6
,
��6 7

controller
��8 B
)
��B C
;
��C D+
GenerateTriggerableTransition
�� )
(
��) *
disabledName
��* 6
,
��6 7

controller
��8 B
)
��B C
;
��C D
AssetDatabase
�� 
.
�� 
ImportAsset
�� %
(
��% &
path
��& *
)
��* +
;
��+ ,
return
�� 

controller
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
string
�� #
GetSaveControllerPath
�� 3
(
��3 4

Selectable
��4 >
target
��? E
)
��E F
{
�� 	
var
�� 
defaultName
�� 
=
�� 
target
�� $
.
��$ %

gameObject
��% /
.
��/ 0
name
��0 4
;
��4 5
var
�� 
message
�� 
=
�� 
string
��  
.
��  !
Format
��! '
(
��' (
$str
��( Z
,
��Z [
defaultName
��\ g
)
��g h
;
��h i
return
�� 
EditorUtility
��  
.
��  !$
SaveFilePanelInProject
��! 7
(
��7 8
$str
��8 Q
,
��Q R
defaultName
��S ^
,
��^ _
$str
��` l
,
��l m
message
��n u
)
��u v
;
��v w
}
�� 	
private
�� 
static
�� 
void
�� 
SetUpCurves
�� '
(
��' (
AnimationClip
��( 5
highlightedClip
��6 E
,
��E F
AnimationClip
��G T
pressedClip
��U `
,
��` a
string
��b h
animationPath
��i v
)
��v w
{
�� 	
string
�� 
[
�� 
]
�� 
channels
�� 
=
�� 
{
��  !
$str
��" 2
,
��2 3
$str
��4 D
,
��D E
$str
��F V
}
��W X
;
��X Y
var
�� 
highlightedKeys
�� 
=
��  !
new
��" %
[
��% &
]
��& '
{
��( )
new
��* -
Keyframe
��. 6
(
��6 7
$num
��7 9
,
��9 :
$num
��; =
)
��= >
,
��> ?
new
��@ C
Keyframe
��D L
(
��L M
$num
��M Q
,
��Q R
$num
��S W
)
��W X
,
��X Y
new
��Z ]
Keyframe
��^ f
(
��f g
$num
��g i
,
��i j
$num
��k m
)
��m n
}
��o p
;
��p q
var
�� 
highlightedCurve
��  
=
��! "
new
��# &
AnimationCurve
��' 5
(
��5 6
highlightedKeys
��6 E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
channel
��  
in
��! #
channels
��$ ,
)
��, -
AnimationUtility
��  
.
��  !
SetEditorCurve
��! /
(
��/ 0
highlightedClip
��0 ?
,
��? @ 
EditorCurveBinding
��A S
.
��S T

FloatCurve
��T ^
(
��^ _
animationPath
��_ l
,
��l m
typeof
��n t
(
��t u
	Transform
��u ~
)
��~ 
,�� �
channel��� �
)��� �
,��� � 
highlightedCurve��� �
)��� �
;��� �
var
�� 
pressedKeys
�� 
=
�� 
new
�� !
[
��! "
]
��" #
{
��$ %
new
��& )
Keyframe
��* 2
(
��2 3
$num
��3 5
,
��5 6
$num
��7 <
)
��< =
}
��> ?
;
��? @
var
�� 
pressedCurve
�� 
=
�� 
new
�� "
AnimationCurve
��# 1
(
��1 2
pressedKeys
��2 =
)
��= >
;
��> ?
foreach
�� 
(
�� 
var
�� 
channel
��  
in
��! #
channels
��$ ,
)
��, -
AnimationUtility
��  
.
��  !
SetEditorCurve
��! /
(
��/ 0
pressedClip
��0 ;
,
��; < 
EditorCurveBinding
��= O
.
��O P

FloatCurve
��P Z
(
��Z [
animationPath
��[ h
,
��h i
typeof
��j p
(
��p q
	Transform
��q z
)
��z {
,
��{ |
channel��} �
)��� �
,��� �
pressedCurve��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
string
��  
BuildAnimationPath
�� 0
(
��0 1

Selectable
��1 ;
target
��< B
)
��B C
{
�� 	
var
�� 
	highlight
�� 
=
�� 
target
�� "
.
��" #
targetGraphic
��# 0
;
��0 1
if
�� 
(
�� 
	highlight
�� 
==
�� 
null
�� !
)
��! "
return
�� 
string
�� 
.
�� 
Empty
�� #
;
��# $
var
�� 
startGo
�� 
=
�� 
	highlight
�� #
.
��# $

gameObject
��$ .
;
��. /
var
�� 
toFindGo
�� 
=
�� 
target
�� !
.
��! "

gameObject
��" ,
;
��, -
var
�� 
pathComponents
�� 
=
��  
new
��! $
Stack
��% *
<
��* +
string
��+ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
while
�� 
(
�� 
toFindGo
�� 
!=
�� 
startGo
�� &
)
��& '
{
�� 
pathComponents
�� 
.
�� 
Push
�� #
(
��# $
startGo
��$ +
.
��+ ,
name
��, 0
)
��0 1
;
��1 2
if
�� 
(
�� 
startGo
�� 
.
�� 
	transform
�� %
.
��% &
parent
��& ,
==
��- /
null
��0 4
)
��4 5
return
�� 
string
�� !
.
��! "
Empty
��" '
;
��' (
startGo
�� 
=
�� 
startGo
�� !
.
��! "
	transform
��" +
.
��+ ,
parent
��, 2
.
��2 3

gameObject
��3 =
;
��= >
}
�� 
var
�� 
animPath
�� 
=
�� 
new
�� 
StringBuilder
�� ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
pathComponents
�� 
.
�� 
Count
�� $
>
��% &
$num
��' (
)
��( )
animPath
�� 
.
�� 
Append
�� 
(
��  
pathComponents
��  .
.
��. /
Pop
��/ 2
(
��2 3
)
��3 4
)
��4 5
;
��5 6
while
�� 
(
�� 
pathComponents
�� !
.
��! "
Count
��" '
>
��( )
$num
��* +
)
��+ ,
animPath
�� 
.
�� 
Append
�� 
(
��  
$str
��  #
)
��# $
.
��$ %
Append
��% +
(
��+ ,
pathComponents
��, :
.
��: ;
Pop
��; >
(
��> ?
)
��? @
)
��@ A
;
��A B
return
�� 
animPath
�� 
.
�� 
ToString
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
private
�� 
static
�� 
AnimationClip
�� $+
GenerateTriggerableTransition
��% B
(
��B C
string
��C I
name
��J N
,
��N O

Animations
��P Z
.
��Z [ 
AnimatorController
��[ m

controller
��n x
)
��x y
{
�� 	
var
�� 
clip
�� 
=
�� 

Animations
�� !
.
��! " 
AnimatorController
��" 4
.
��4 5"
AllocateAnimatorClip
��5 I
(
��I J
name
��J N
)
��N O
;
��O P
AssetDatabase
�� 
.
�� 
AddObjectToAsset
�� *
(
��* +
clip
��+ /
,
��/ 0

controller
��1 ;
)
��; <
;
��< =
var
�� 
state
�� 
=
�� 

controller
�� "
.
��" #
	AddMotion
��# ,
(
��, -
clip
��- 1
)
��1 2
;
��2 3

controller
�� 
.
�� 
AddParameter
�� #
(
��# $
name
��$ (
,
��( )-
AnimatorControllerParameterType
��* I
.
��I J
Trigger
��J Q
)
��Q R
;
��R S
var
�� 
stateMachine
�� 
=
�� 

controller
�� )
.
��) *
layers
��* 0
[
��0 1
$num
��1 2
]
��2 3
.
��3 4
stateMachine
��4 @
;
��@ A
var
�� 

transition
�� 
=
�� 
stateMachine
�� )
.
��) *#
AddAnyStateTransition
��* ?
(
��? @
state
��@ E
)
��E F
;
��F G

transition
�� 
.
�� 
AddCondition
�� #
(
��# $

Animations
��$ .
.
��. /#
AnimatorConditionMode
��/ D
.
��D E
If
��E G
,
��G H
$num
��I J
,
��J K
name
��L P
)
��P Q
;
��Q R
return
�� 
clip
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
StaticOnSceneGUI
�� ,
(
��, -
	SceneView
��- 6
view
��7 ;
)
��; <
{
�� 	
if
�� 
(
�� 
!
�� 
s_ShowNavigation
�� !
)
��! "
return
�� 
;
�� 

Selectable
�� 
[
�� 
]
�� 
selectables
�� $
=
��% &

Selectable
��' 1
.
��1 2!
allSelectablesArray
��2 E
;
��E F
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
�� 
selectables
��  +
.
��+ ,
Length
��, 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 

Selectable
�� 
s
�� 
=
�� 
selectables
�� *
[
��* +
i
��+ ,
]
��, -
;
��- .
if
�� 
(
�� 
SceneManagement
�� #
.
��# $
StageUtility
��$ 0
.
��0 1*
IsGameObjectRenderedByCamera
��1 M
(
��M N
s
��N O
.
��O P

gameObject
��P Z
,
��Z [
Camera
��\ b
.
��b c
current
��c j
)
��j k
)
��k l)
DrawNavigationForSelectable
�� /
(
��/ 0
s
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� )
DrawNavigationForSelectable
�� 7
(
��7 8

Selectable
��8 B
sel
��C F
)
��F G
{
�� 	
if
�� 
(
�� 
sel
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
	Transform
�� 
	transform
�� 
=
��  !
sel
��" %
.
��% &
	transform
��& /
;
��/ 0
bool
�� 
active
�� 
=
�� 
	Selection
�� #
.
��# $

transforms
��$ .
.
��. /
Any
��/ 2
(
��2 3
e
��3 4
=>
��5 7
e
��8 9
==
��: <
	transform
��= F
)
��F G
;
��G H
Handles
�� 
.
�� 
color
�� 
=
�� 
new
�� 
Color
��  %
(
��% &
$num
��& *
,
��* +
$num
��, 0
,
��0 1
$num
��2 6
,
��6 7
active
��8 >
?
��? @
$num
��A E
:
��F G
$num
��H L
)
��L M
;
��M N!
DrawNavigationArrow
�� 
(
��  
-
��  !
Vector2
��! (
.
��( )
right
��) .
,
��. /
sel
��0 3
,
��3 4
sel
��5 8
.
��8 9"
FindSelectableOnLeft
��9 M
(
��M N
)
��N O
)
��O P
;
��P Q!
DrawNavigationArrow
�� 
(
��  
Vector2
��  '
.
��' (
up
��( *
,
��* +
sel
��, /
,
��/ 0
sel
��1 4
.
��4 5 
FindSelectableOnUp
��5 G
(
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
color
�� 
=
�� 
new
�� 
Color
��  %
(
��% &
$num
��& *
,
��* +
$num
��, 0
,
��0 1
$num
��2 6
,
��6 7
active
��8 >
?
��? @
$num
��A E
:
��F G
$num
��H L
)
��L M
;
��M N!
DrawNavigationArrow
�� 
(
��  
Vector2
��  '
.
��' (
right
��( -
,
��- .
sel
��/ 2
,
��2 3
sel
��4 7
.
��7 8#
FindSelectableOnRight
��8 M
(
��M N
)
��N O
)
��O P
;
��P Q!
DrawNavigationArrow
�� 
(
��  
-
��  !
Vector2
��! (
.
��( )
up
��) +
,
��+ ,
sel
��- 0
,
��0 1
sel
��2 5
.
��5 6"
FindSelectableOnDown
��6 J
(
��J K
)
��K L
)
��L M
;
��M N
}
�� 	
const
�� 
float
�� 
kArrowThickness
�� #
=
��$ %
$num
��& *
;
��* +
const
�� 
float
�� 
kArrowHeadSize
�� "
=
��# $
$num
��% )
;
��) *
private
�� 
static
�� 
void
�� !
DrawNavigationArrow
�� /
(
��/ 0
Vector2
��0 7
	direction
��8 A
,
��A B

Selectable
��C M
fromObj
��N U
,
��U V

Selectable
��W a
toObj
��b g
)
��g h
{
�� 	
if
�� 
(
�� 
fromObj
�� 
==
�� 
null
�� 
||
��  "
toObj
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
�� 
	Transform
�� 
fromTransform
�� #
=
��$ %
fromObj
��& -
.
��- .
	transform
��. 7
;
��7 8
	Transform
�� 
toTransform
�� !
=
��" #
toObj
��$ )
.
��) *
	transform
��* 3
;
��3 4
Vector2
�� 
sideDir
�� 
=
�� 
new
�� !
Vector2
��" )
(
��) *
	direction
��* 3
.
��3 4
y
��4 5
,
��5 6
-
��7 8
	direction
��8 A
.
��A B
x
��B C
)
��C D
;
��D E
Vector3
�� 
	fromPoint
�� 
=
�� 
fromTransform
��  -
.
��- .
TransformPoint
��. <
(
��< = 
GetPointOnRectEdge
��= O
(
��O P
fromTransform
��P ]
as
��^ `
RectTransform
��a n
,
��n o
	direction
��p y
)
��y z
)
��z {
;
��{ |
Vector3
�� 
toPoint
�� 
=
�� 
toTransform
�� )
.
��) *
TransformPoint
��* 8
(
��8 9 
GetPointOnRectEdge
��9 K
(
��K L
toTransform
��L W
as
��X Z
RectTransform
��[ h
,
��h i
-
��j k
	direction
��k t
)
��t u
)
��u v
;
��v w
float
�� 
fromSize
�� 
=
�� 
HandleUtility
�� *
.
��* +
GetHandleSize
��+ 8
(
��8 9
	fromPoint
��9 B
)
��B C
*
��D E
$num
��F K
;
��K L
float
�� 
toSize
�� 
=
�� 
HandleUtility
�� (
.
��( )
GetHandleSize
��) 6
(
��6 7
toPoint
��7 >
)
��> ?
*
��@ A
$num
��B G
;
��G H
	fromPoint
�� 
+=
�� 
fromTransform
�� &
.
��& ' 
TransformDirection
��' 9
(
��9 :
sideDir
��: A
)
��A B
*
��C D
fromSize
��E M
;
��M N
toPoint
�� 
+=
�� 
toTransform
�� "
.
��" # 
TransformDirection
��# 5
(
��5 6
sideDir
��6 =
)
��= >
*
��? @
toSize
��A G
;
��G H
float
�� 
length
�� 
=
�� 
Vector3
�� "
.
��" #
Distance
��# +
(
��+ ,
	fromPoint
��, 5
,
��5 6
toPoint
��7 >
)
��> ?
;
��? @
Vector3
�� 
fromTangent
�� 
=
��  !
fromTransform
��" /
.
��/ 0
rotation
��0 8
*
��9 :
	direction
��; D
*
��E F
length
��G M
*
��N O
$num
��P T
;
��T U
Vector3
�� 
	toTangent
�� 
=
�� 
toTransform
��  +
.
��+ ,
rotation
��, 4
*
��5 6
-
��7 8
	direction
��8 A
*
��B C
length
��D J
*
��K L
$num
��M Q
;
��Q R
Handles
�� 
.
�� 

DrawBezier
�� 
(
�� 
	fromPoint
�� (
,
��( )
toPoint
��* 1
,
��1 2
	fromPoint
��3 <
+
��= >
fromTangent
��? J
,
��J K
toPoint
��L S
+
��T U
	toTangent
��V _
,
��_ `
Handles
��a h
.
��h i
color
��i n
,
��n o
null
��p t
,
��t u
kArrowThickness��v �
)��� �
;��� �
Handles
�� 
.
�� 
DrawAAPolyLine
�� "
(
��" #
kArrowThickness
��# 2
,
��2 3
toPoint
��4 ;
,
��; <
toPoint
��= D
+
��E F
toTransform
��G R
.
��R S
rotation
��S [
*
��\ ]
(
��^ _
-
��_ `
	direction
��` i
-
��j k
sideDir
��l s
)
��s t
*
��u v
toSize
��w }
*
��~ 
kArrowHeadSize��� �
)��� �
;��� �
Handles
�� 
.
�� 
DrawAAPolyLine
�� "
(
��" #
kArrowThickness
��# 2
,
��2 3
toPoint
��4 ;
,
��; <
toPoint
��= D
+
��E F
toTransform
��G R
.
��R S
rotation
��S [
*
��\ ]
(
��^ _
-
��_ `
	direction
��` i
+
��j k
sideDir
��l s
)
��s t
*
��u v
toSize
��w }
*
��~ 
kArrowHeadSize��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
Vector3
��  
GetPointOnRectEdge
�� 1
(
��1 2
RectTransform
��2 ?
rect
��@ D
,
��D E
Vector2
��F M
dir
��N Q
)
��Q R
{
�� 	
if
�� 
(
�� 
rect
�� 
==
�� 
null
�� 
)
�� 
return
�� 
Vector3
�� 
.
�� 
zero
�� #
;
��# $
if
�� 
(
�� 
dir
�� 
!=
�� 
Vector2
�� 
.
�� 
zero
�� #
)
��# $
dir
�� 
/=
�� 
Mathf
�� 
.
�� 
Max
��  
(
��  !
Mathf
��! &
.
��& '
Abs
��' *
(
��* +
dir
��+ .
.
��. /
x
��/ 0
)
��0 1
,
��1 2
Mathf
��3 8
.
��8 9
Abs
��9 <
(
��< =
dir
��= @
.
��@ A
y
��A B
)
��B C
)
��C D
;
��D E
dir
�� 
=
�� 
rect
�� 
.
�� 
rect
�� 
.
�� 
center
�� "
+
��# $
Vector2
��% ,
.
��, -
Scale
��- 2
(
��2 3
rect
��3 7
.
��7 8
rect
��8 <
.
��< =
size
��= A
,
��A B
dir
��C F
*
��G H
$num
��I M
)
��M N
;
��N O
return
�� 
dir
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ImageEditor.cs
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
�� 
(
�� 
)
�� 
;
�� #
AppearanceControlsGUI
�� !
(
��! "
)
��" #
;
��# $ 
RaycastControlsGUI
�� 
(
�� 
)
��  
;
��  !!
MaskableControlsGUI
�� 
(
��  
)
��  !
;
��! "

m_ShowType
�� 
.
�� 
target
�� 
=
�� 
m_Sprite
��  (
.
��( )"
objectReferenceValue
��) =
!=
��> @
null
��A E
;
��E F
if
�� 
(
�� 
EditorGUILayout
�� 
.
��  
BeginFadeGroup
��  .
(
��. /

m_ShowType
��/ 9
.
��9 :
faded
��: ?
)
��? @
)
��@ A
TypeGUI
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 
EndFadeGroup
�� (
(
��( )
)
��) *
;
��* +
SetShowNativeSize
�� 
(
�� 
false
�� #
)
��# $
;
��$ %
if
�� 
(
�� 
EditorGUILayout
�� 
.
��  
BeginFadeGroup
��  .
(
��. /
m_ShowNativeSize
��/ ?
.
��? @
faded
��@ E
)
��E F
)
��F G
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
if
�� 
(
�� 
(
�� 
Image
�� 
.
�� 
Type
�� 
)
��  
m_Type
��  &
.
��& '
enumValueIndex
��' 5
==
��6 8
Image
��9 >
.
��> ?
Type
��? C
.
��C D
Simple
��D J
)
��J K
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_UseSpriteMesh
��2 A
)
��A B
;
��B C
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_PreserveAspect
��. >
)
��> ?
;
��? @
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� 
EndFadeGroup
�� (
(
��( )
)
��) *
;
��* +!
NativeSizeButtonGUI
�� 
(
��  
)
��  !
;
��! "
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
void
�� 
SetShowNativeSize
�� 
(
�� 
bool
�� #
instant
��$ +
)
��+ ,
{
�� 	
Image
�� 
.
�� 
Type
�� 
type
�� 
=
�� 
(
�� 
Image
�� $
.
��$ %
Type
��% )
)
��) *
m_Type
��* 0
.
��0 1
enumValueIndex
��1 ?
;
��? @
bool
�� 
showNativeSize
�� 
=
��  !
(
��" #
type
��# '
==
��( *
Image
��+ 0
.
��0 1
Type
��1 5
.
��5 6
Simple
��6 <
||
��= ?
type
��@ D
==
��E G
Image
��H M
.
��M N
Type
��N R
.
��R S
Filled
��S Y
)
��Y Z
&&
��[ ]
m_Sprite
��^ f
.
��f g"
objectReferenceValue
��g {
!=
��| ~
null�� �
;��� �
base
�� 
.
�� 
SetShowNativeSize
�� "
(
��" #
showNativeSize
��# 1
,
��1 2
instant
��3 :
)
��: ;
;
��; <
}
�� 	
	protected
�� 
void
�� 
	SpriteGUI
��  
(
��  !
)
��! "
{
�� 	
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Sprite
��* 2
,
��2 3
m_SpriteContent
��4 C
)
��C D
;
��D E
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
var
�� 
	newSprite
�� 
=
�� 
m_Sprite
��  (
.
��( )"
objectReferenceValue
��) =
as
��> @
Sprite
��A G
;
��G H
if
�� 
(
�� 
	newSprite
�� 
)
�� 
{
�� 
Image
�� 
.
�� 
Type
�� 
oldType
�� &
=
��' (
(
��) *
Image
��* /
.
��/ 0
Type
��0 4
)
��4 5
m_Type
��5 ;
.
��; <
enumValueIndex
��< J
;
��J K
if
�� 
(
�� 
	newSprite
�� !
.
��! "
border
��" (
.
��( )
SqrMagnitude
��) 5
(
��5 6
)
��6 7
>
��8 9
$num
��: ;
)
��; <
{
�� 
m_Type
�� 
.
�� 
enumValueIndex
�� -
=
��. /
(
��0 1
int
��1 4
)
��4 5
Image
��5 :
.
��: ;
Type
��; ?
.
��? @
Sliced
��@ F
;
��F G
}
�� 
else
�� 
if
�� 
(
�� 
oldType
�� $
==
��% '
Image
��( -
.
��- .
Type
��. 2
.
��2 3
Sliced
��3 9
)
��9 :
{
�� 
m_Type
�� 
.
�� 
enumValueIndex
�� -
=
��. /
(
��0 1
int
��1 4
)
��4 5
Image
��5 :
.
��: ;
Type
��; ?
.
��? @
Simple
��@ F
;
��F G
}
�� 
}
�� 
(
�� 
serializedObject
�� !
.
��! "
targetObject
��" .
as
��/ 1
Image
��2 7
)
��7 8
.
��8 9(
DisableSpriteOptimizations
��9 S
(
��S T
)
��T U
;
��U V
}
�� 
}
�� 	
	protected
�� 
void
�� 
TypeGUI
�� 
(
�� 
)
��  
{
�� 	
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Type
��* 0
,
��0 1!
m_SpriteTypeContent
��2 E
)
��E F
;
��F G
++
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
{
�� 
Image
�� 
.
�� 
Type
�� 
typeEnum
�� #
=
��$ %
(
��& '
Image
��' ,
.
��, -
Type
��- 1
)
��1 2
m_Type
��2 8
.
��8 9
enumValueIndex
��9 G
;
��G H
bool
�� 
showSlicedOrTiled
�� &
=
��' (
(
��) *
!
��* +
m_Type
��+ 1
.
��1 2(
hasMultipleDifferentValues
��2 L
&&
��M O
(
��P Q
typeEnum
��Q Y
==
��Z \
Image
��] b
.
��b c
Type
��c g
.
��g h
Sliced
��h n
||
��o q
typeEnum
��r z
==
��{ }
Image��~ �
.��� �
Type��� �
.��� �
Tiled��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
showSlicedOrTiled
�� %
&&
��& (
targets
��) 0
.
��0 1
Length
��1 7
>
��8 9
$num
��: ;
)
��; <
showSlicedOrTiled
�� %
=
��& '
targets
��( /
.
��/ 0
Select
��0 6
(
��6 7
obj
��7 :
=>
��; =
obj
��> A
as
��B D
Image
��E J
)
��J K
.
��K L
All
��L O
(
��O P
img
��P S
=>
��T V
img
��W Z
.
��Z [
	hasBorder
��[ d
)
��d e
;
��e f!
m_ShowSlicedOrTiled
�� #
.
��# $
target
��$ *
=
��+ ,
showSlicedOrTiled
��- >
;
��> ?
m_ShowSliced
�� 
.
�� 
target
�� #
=
��$ %
(
��& '
showSlicedOrTiled
��' 8
&&
��9 ;
!
��< =
m_Type
��= C
.
��C D(
hasMultipleDifferentValues
��D ^
&&
��_ a
typeEnum
��b j
==
��k m
Image
��n s
.
��s t
Type
��t x
.
��x y
Sliced
��y 
)�� �
;��� �
m_ShowTiled
�� 
.
�� 
target
�� "
=
��# $
(
��% &
showSlicedOrTiled
��& 7
&&
��8 :
!
��; <
m_Type
��< B
.
��B C(
hasMultipleDifferentValues
��C ]
&&
��^ `
typeEnum
��a i
==
��j l
Image
��m r
.
��r s
Type
��s w
.
��w x
Tiled
��x }
)
��} ~
;
��~ 
m_ShowFilled
�� 
.
�� 
target
�� #
=
��$ %
(
��& '
!
��' (
m_Type
��( .
.
��. /(
hasMultipleDifferentValues
��/ I
&&
��J L
typeEnum
��M U
==
��V X
Image
��Y ^
.
��^ _
Type
��_ c
.
��c d
Filled
��d j
)
��j k
;
��k l
Image
�� 
image
�� 
=
�� 
target
�� $
as
��% '
Image
��( -
;
��- .
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3!
m_ShowSlicedOrTiled
��3 F
.
��F G
faded
��G L
)
��L M
)
��M N
{
�� 
if
�� 
(
�� 
image
�� 
.
�� 
	hasBorder
�� '
)
��' (
EditorGUILayout
�� '
.
��' (
PropertyField
��( 5
(
��5 6
m_FillCenter
��6 B
)
��B C
;
��C D
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2'
m_PixelsPerUnitMultiplier
��2 K
)
��K L
;
��L M
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3
m_ShowSliced
��3 ?
.
��? @
faded
��@ E
)
��E F
)
��F G
{
�� 
if
�� 
(
�� 
image
�� 
.
�� 
sprite
�� $
!=
��% '
null
��( ,
&&
��- /
!
��0 1
image
��1 6
.
��6 7
	hasBorder
��7 @
)
��@ A
EditorGUILayout
�� '
.
��' (
HelpBox
��( /
(
��/ 0
$str
��0 S
,
��S T
MessageType
��U `
.
��` a
Warning
��a h
)
��h i
;
��i j
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3
m_ShowTiled
��3 >
.
��> ?
faded
��? D
)
��D E
)
��E F
{
�� 
if
�� 
(
�� 
image
�� 
.
�� 
sprite
�� $
!=
��% '
null
��( ,
&&
��- /
!
��0 1
image
��1 6
.
��6 7
	hasBorder
��7 @
&&
��A C
(
��D E
image
��E J
.
��J K
sprite
��K Q
.
��Q R
texture
��R Y
.
��Y Z
wrapMode
��Z b
!=
��c e
TextureWrapMode
��f u
.
��u v
Repeat
��v |
||
��} 
image��� �
.��� �
sprite��� �
.��� �
packed��� �
)��� �
)��� �
EditorGUILayout
�� '
.
��' (
HelpBox
��( /
(
��/ 0
$str��0 �
,��� �
MessageType��� �
.��� �
Warning��� �
)��� �
;��� �
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
EditorGUILayout
�� #
.
��# $
BeginFadeGroup
��$ 2
(
��2 3
m_ShowFilled
��3 ?
.
��? @
faded
��@ E
)
��E F
)
��F G
{
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� .
(
��. /
)
��/ 0
;
��0 1
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_FillMethod
��2 >
)
��> ?
;
��? @
if
�� 
(
�� 
	EditorGUI
�� !
.
��! "
EndChangeCheck
��" 0
(
��0 1
)
��1 2
)
��2 3
{
�� 
m_FillOrigin
�� $
.
��$ %
intValue
��% -
=
��. /
$num
��0 1
;
��1 2
}
�� 
var
�� 
	shapeRect
�� !
=
��" #
EditorGUILayout
��$ 3
.
��3 4
GetControlRect
��4 B
(
��B C
true
��C G
)
��G H
;
��H I
switch
�� 
(
�� 
(
�� 
Image
�� "
.
��" #

FillMethod
��# -
)
��- .
m_FillMethod
��. :
.
��: ;
enumValueIndex
��; I
)
��I J
{
�� 
case
�� 
Image
�� "
.
��" #

FillMethod
��# -
.
��- .

Horizontal
��. 8
:
��8 9
	EditorGUI
�� %
.
��% &
Popup
��& +
(
��+ ,
	shapeRect
��, 5
,
��5 6
m_FillOrigin
��7 C
,
��C D
Styles
��E K
.
��K L#
OriginHorizontalStyle
��L a
,
��a b
Styles
��c i
.
��i j
text
��j n
)
��n o
;
��o p
break
�� !
;
��! "
case
�� 
Image
�� "
.
��" #

FillMethod
��# -
.
��- .
Vertical
��. 6
:
��6 7
	EditorGUI
�� %
.
��% &
Popup
��& +
(
��+ ,
	shapeRect
��, 5
,
��5 6
m_FillOrigin
��7 C
,
��C D
Styles
��E K
.
��K L!
OriginVerticalStyle
��L _
,
��_ `
Styles
��a g
.
��g h
text
��h l
)
��l m
;
��m n
break
�� !
;
��! "
case
�� 
Image
�� "
.
��" #

FillMethod
��# -
.
��- .
Radial90
��. 6
:
��6 7
	EditorGUI
�� %
.
��% &
Popup
��& +
(
��+ ,
	shapeRect
��, 5
,
��5 6
m_FillOrigin
��7 C
,
��C D
Styles
��E K
.
��K L
Origin90Style
��L Y
,
��Y Z
Styles
��[ a
.
��a b
text
��b f
)
��f g
;
��g h
break
�� !
;
��! "
case
�� 
Image
�� "
.
��" #

FillMethod
��# -
.
��- .
	Radial180
��. 7
:
��7 8
	EditorGUI
�� %
.
��% &
Popup
��& +
(
��+ ,
	shapeRect
��, 5
,
��5 6
m_FillOrigin
��7 C
,
��C D
Styles
��E K
.
��K L
Origin180Style
��L Z
,
��Z [
Styles
��\ b
.
��b c
text
��c g
)
��g h
;
��h i
break
�� !
;
��! "
case
�� 
Image
�� "
.
��" #

FillMethod
��# -
.
��- .
	Radial360
��. 7
:
��7 8
	EditorGUI
�� %
.
��% &
Popup
��& +
(
��+ ,
	shapeRect
��, 5
,
��5 6
m_FillOrigin
��7 C
,
��C D
Styles
��E K
.
��K L
Origin360Style
��L Z
,
��Z [
Styles
��\ b
.
��b c
text
��c g
)
��g h
;
��h i
break
�� !
;
��! "
}
�� 
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2
m_FillAmount
��2 >
)
��> ?
;
��? @
if
�� 
(
�� 
(
�� 
Image
�� 
.
�� 

FillMethod
�� )
)
��) *
m_FillMethod
��* 6
.
��6 7
enumValueIndex
��7 E
>
��F G
Image
��H M
.
��M N

FillMethod
��N X
.
��X Y
Vertical
��Y a
)
��a b
{
�� 
EditorGUILayout
�� '
.
��' (
PropertyField
��( 5
(
��5 6
m_FillClockwise
��6 E
,
��E F 
m_ClockwiseContent
��G Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
EditorGUILayout
�� 
.
��  
EndFadeGroup
��  ,
(
��, -
)
��- .
;
��. /
}
�� 
--
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� #
;
��# $
}
�� 	
public
�� 
override
�� 
bool
�� 
HasPreviewGUI
�� *
(
��* +
)
��+ ,
{
��- .
return
��/ 5
true
��6 :
;
��: ;
}
��< =
public
�� 
override
�� 
void
�� 
OnPreviewGUI
�� )
(
��) *
Rect
��* .
rect
��/ 3
,
��3 4
GUIStyle
��5 =

background
��> H
)
��H I
{
�� 	
Image
�� 
image
�� 
=
�� 
target
��  
as
��! #
Image
��$ )
;
��) *
if
�� 
(
�� 
image
�� 
==
�� 
null
�� 
)
�� 
return
�� %
;
��% &
Sprite
�� 
sf
�� 
=
�� 
image
�� 
.
�� 
sprite
�� $
;
��$ %
if
�� 
(
�� 
sf
�� 
==
�� 
null
�� 
)
�� 
return
�� "
;
��" #
SpriteDrawUtility
�� 
.
�� 

DrawSprite
�� (
(
��( )
sf
��) +
,
��+ ,
rect
��- 1
,
��1 2
image
��3 8
.
��8 9
canvasRenderer
��9 G
.
��G H
GetColor
��H P
(
��P Q
)
��Q R
)
��R S
;
��S T
}
�� 	
public
�� 
override
�� 
string
�� 
GetInfoString
�� ,
(
��, -
)
��- .
{
�� 	
Image
�� 
image
�� 
=
�� 
target
��  
as
��! #
Image
��$ )
;
��) *
Sprite
�� 
sprite
�� 
=
�� 
image
�� !
.
��! "
sprite
��" (
;
��( )
int
�� 
x
�� 
=
�� 
(
�� 
sprite
�� 
!=
�� 
null
�� #
)
��# $
?
��% &
Mathf
��' ,
.
��, -

RoundToInt
��- 7
(
��7 8
sprite
��8 >
.
��> ?
rect
��? C
.
��C D
width
��D I
)
��I J
:
��K L
$num
��M N
;
��N O
int
�� 
y
�� 
=
�� 
(
�� 
sprite
�� 
!=
�� 
null
�� #
)
��# $
?
��% &
Mathf
��' ,
.
��, -

RoundToInt
��- 7
(
��7 8
sprite
��8 >
.
��> ?
rect
��? C
.
��C D
height
��D J
)
��J K
:
��L M
$num
��N O
;
��O P
return
�� 
string
�� 
.
�� 
Format
��  
(
��  !
$str
��! 6
,
��6 7
x
��8 9
,
��9 :
y
��; <
)
��< =
;
��= >
}
�� 	
}
�� 
}�� �O
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SliderEditor.cs
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
null	UU| �
||
UU� �
slider
UU� �
.
UU� �#
FindSelectableOnRight
UU� �
(
UU� �
)
UU� �
!=
UU� �
null
UU� �
)
UU� �
)
UU� �
;
UU� �
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
null	WW| �
||
WW� �
slider
WW� �
.
WW� � 
FindSelectableOnUp
WW� �
(
WW� �
)
WW� �
!=
WW� �
null
WW� �
)
WW� �
)
WW� �
;
WW� �
}XX 
ifZZ 
(ZZ 
warningZZ 
)ZZ 
EditorGUILayout[[ #
.[[# $
HelpBox[[$ +
([[+ ,
$str	[[, �
,
[[� �
MessageType
[[� �
.
[[� �
Warning
[[� �
)
[[� �
;
[[� �
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
$str	cc( �
,
cc� �
MessageType
cc� �
.
cc� �
Info
cc� �
)
cc� �
;
cc� �
}dd 
serializedObjectff 
.ff #
ApplyModifiedPropertiesff 4
(ff4 5
)ff5 6
;ff6 7
}gg 	
}hh 
}ii �G
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\LayoutElementEditor.cs
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
}jj �'
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\DropdownEditor.cs
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
}77 �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ButtonEditor.cs
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
} �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\PhysicsRaycasterEditor.cs
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
} �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\TextEditor.cs
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
}%% �$
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\AnimationTriggersDrawer.cs
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
}'' �\
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\EventSystem\EventTriggerEditor.cs
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
removeButtonSize	55p �
.
55� �
x
55� �
,
55� �
removeButtonSize
55� �
.
55� �
y
55� �
)
55� �
;
55� �
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
}zz �[
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\HorizontalOrVerticalLayoutGroupEditor.cs
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
}__ �;
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\RawImageEditor.cs
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
}nn �*
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\RectMask2DEditor.cs
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
}CC �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ContentSizeFitterEditor.cs
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
}!! �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SelfControllerEditor.cs
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
$str	" �
;
� �
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
MessageType	##y �
.
##� �
Warning
##� �
)
##� �
;
##� �
}$$ 	
}%% 
}&& �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\MaskEditor.cs
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
}   �-
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\ColorBlockDrawer.cs
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
}-- ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\InterceptedEventsPreview.cs
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
�� 
columns
�� 
=
�� 
Mathf
�� 
.
��  
Max
��  #
(
��# $
Mathf
��$ )
.
��) *

FloorToInt
��* 4
(
��4 5
r
��5 6
.
��6 7
width
��7 <
/
��= >
maxEventLabelSize
��? P
.
��P Q
x
��Q R
)
��R S
,
��S T
$num
��U V
)
��V W
;
��W X
int
�� 
rows
�� 
=
�� 
Mathf
�� 
.
�� 
Max
��  
(
��  !$
totalInterceptedEvents
��! 7
/
��8 9
columns
��: A
,
��A B
$num
��C D
)
��D E
+
��F G(
componentIncerceptedEvents
��H b
.
��b c
Count
��c h
;
��h i
float
�� 
initialX
�� 
=
�� 
r
�� 
.
�� 
x
��  
+
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
$num
��- .
,
��. /
(
��0 1
r
��1 2
.
��2 3
width
��3 8
-
��9 :
(
��; <
maxEventLabelSize
��< M
.
��M N
x
��N O
*
��P Q
columns
��R Y
)
��Y Z
)
��Z [
/
��\ ]
$num
��^ _
)
��_ `
;
��` a
float
�� 
initialY
�� 
=
�� 
r
�� 
.
�� 
y
��  
+
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
$num
��- .
,
��. /
(
��0 1
r
��1 2
.
��2 3
height
��3 9
-
��: ;
(
��< =
maxEventLabelSize
��= N
.
��N O
y
��O P
*
��Q R
rows
��S W
)
��W X
)
��X Y
/
��Z [
$num
��\ ]
)
��] ^
;
��^ _
Rect
�� 
	labelRect
�� 
=
�� 
new
��  
Rect
��! %
(
��% &
initialX
��& .
,
��. /
initialY
��0 8
,
��8 9
maxEventLabelSize
��: K
.
��K L
x
��L M
,
��M N
maxEventLabelSize
��O `
.
��` a
y
��a b
)
��b c
;
��c d
int
�� 
currentColumn
�� 
=
�� 
$num
��  !
;
��! "
foreach
�� 
(
�� (
ComponentInterceptedEvents
�� /(
componentInterceptedEvents
��0 J
in
��K M(
componentIncerceptedEvents
��N h
)
��h i
{
�� 
GUI
�� 
.
�� 
Label
�� 
(
�� 
	labelRect
�� #
,
��# $(
componentInterceptedEvents
��% ?
.
��? @
componentName
��@ M
,
��M N
m_Styles
��O W
.
��W X
componentName
��X e
)
��e f
;
��f g
	labelRect
�� 
.
�� 
y
�� 
+=
�� 
	labelRect
�� (
.
��( )
height
��) /
;
��/ 0
	labelRect
�� 
.
�� 
x
�� 
=
�� 
initialX
�� &
;
��& '
foreach
�� 
(
�� 
int
�� 

eventIndex
�� '
in
��( *(
componentInterceptedEvents
��+ E
.
��E F
interceptedEvents
��F W
)
��W X
{
�� 

GUIContent
�� 
eventContent
�� +
=
��, -
s_PossibleEvents
��. >
[
��> ?

eventIndex
��? I
]
��I J
;
��J K
GUI
�� 
.
�� 
Label
�� 
(
�� 
	labelRect
�� '
,
��' (
eventContent
��) 5
,
��5 6
m_Styles
��7 ?
.
��? @

labelStyle
��@ J
)
��J K
;
��K L
if
�� 
(
�� 
currentColumn
�� %
<
��& '
columns
��( /
-
��0 1
$num
��2 3
)
��3 4
{
�� 
	labelRect
�� !
.
��! "
x
��" #
+=
��$ &
	labelRect
��' 0
.
��0 1
width
��1 6
;
��6 7
}
�� 
else
�� 
{
�� 
	labelRect
�� !
.
��! "
y
��" #
+=
��$ &
	labelRect
��' 0
.
��0 1
height
��1 7
;
��7 8
	labelRect
�� !
.
��! "
x
��" #
=
��$ %
initialX
��& .
;
��. /
}
�� 
currentColumn
�� !
=
��" #
(
��$ %
currentColumn
��% 2
+
��3 4
$num
��5 6
)
��6 7
%
��8 9
columns
��: A
;
��A B
}
�� 
if
�� 
(
�� 
	labelRect
�� 
.
�� 
x
�� 
!=
��  "
initialX
��# +
)
��+ ,
{
�� 
	labelRect
�� 
.
�� 
y
�� 
+=
��  "
	labelRect
��# ,
.
��, -
height
��- 3
;
��3 4
	labelRect
�� 
.
�� 
x
�� 
=
��  !
initialX
��" *
;
��* +
}
�� 
}
�� 
Profiler
�� 
.
�� 
	EndSample
�� 
(
�� 
)
��  
;
��  !
}
�� 	
static
�� 
List
�� 
<
�� 
Type
�� 
>
�� %
s_EventSystemInterfaces
�� 1
=
��2 3
null
��4 8
;
��8 9
private
�� 
static
�� 
List
�� 
<
�� 

GUIContent
�� &
>
��& '
s_PossibleEvents
��( 8
=
��9 :
null
��; ?
;
��? @
static
�� 

Dictionary
�� 
<
�� 
Type
�� 
,
�� 
List
��  $
<
��$ %
int
��% (
>
��( )
>
��) **
s_InterfaceEventSystemEvents
��+ G
=
��H I
null
��J N
;
��N O
static
�� 
readonly
�� 

Dictionary
�� "
<
��" #
Type
��# '
,
��' ((
ComponentInterceptedEvents
��) C
>
��C D 
s_ComponentEvents2
��E W
=
��X Y
new
��Z ]

Dictionary
��^ h
<
��h i
Type
��i m
,
��m n)
ComponentInterceptedEvents��o �
>��� �
(��� �
)��� �
;��� �
	protected
�� 
static
�� 
List
�� 
<
�� (
ComponentInterceptedEvents
�� 8
>
��8 9
GetEventsInfo
��: G
(
��G H

GameObject
��H R

gameObject
��S ]
)
��] ^
{
�� 	4
&InitializeEvetnsInterfaceCacheIfNeeded
�� 2
(
��2 3
)
��3 4
;
��4 5
List
�� 
<
�� (
ComponentInterceptedEvents
�� +
>
��+ ,
componentEvents
��- <
=
��= >
new
��? B
List
��C G
<
��G H(
ComponentInterceptedEvents
��H b
>
��b c
(
��c d
)
��d e
;
��e f
MonoBehaviour
�� 
[
�� 
]
�� 
mbs
�� 
=
��  !

gameObject
��" ,
.
��, -
GetComponents
��- :
<
��: ;
MonoBehaviour
��; H
>
��H I
(
��I J
)
��J K
;
��K L
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
,
�� 
imax
��  
=
��! "
mbs
��# &
.
��& '
Length
��' -
;
��- .
i
��/ 0
<
��1 2
imax
��3 7
;
��7 8
++
��9 ;
i
��; <
)
��< =
{
�� (
ComponentInterceptedEvents
�� *
componentEvent
��+ 9
=
��: ;
null
��< @
;
��@ A
MonoBehaviour
�� 
mb
��  
=
��! "
mbs
��# &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
mb
�� 
==
�� 
null
�� 
)
�� 
continue
�� 
;
�� 
Type
�� 
type
�� 
=
�� 
mb
�� 
.
�� 
GetType
�� &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� 
!
��  
s_ComponentEvents2
�� '
.
��' (
ContainsKey
��( 3
(
��3 4
type
��4 8
)
��8 9
)
��9 :
{
�� 
List
�� 
<
�� 
int
�� 
>
�� 
events
�� $
=
��% &
null
��' +
;
��+ ,
Profiler
�� 
.
�� 
BeginSample
�� (
(
��( )
$str
��) [
)
��[ \
;
��\ ]
if
�� 
(
�� 
typeof
�� 
(
�� !
IEventSystemHandler
�� 2
)
��2 3
.
��3 4
IsAssignableFrom
��4 D
(
��D E
type
��E I
)
��I J
)
��J K
{
�� 
for
�� 
(
�� 
int
��  
index
��! &
=
��' (
$num
��) *
;
��* +
index
��, 1
<
��2 3%
s_EventSystemInterfaces
��4 K
.
��K L
Count
��L Q
;
��Q R
index
��S X
++
��X Z
)
��Z [
{
�� 
var
�� 
eventInterface
��  .
=
��/ 0%
s_EventSystemInterfaces
��1 H
[
��H I
index
��I N
]
��N O
;
��O P
if
�� 
(
��  
!
��  !
eventInterface
��! /
.
��/ 0
IsAssignableFrom
��0 @
(
��@ A
type
��A E
)
��E F
)
��F G
continue
��  (
;
��( )
if
�� 
(
��  
events
��  &
==
��' )
null
��* .
)
��. /
events
��  &
=
��' (
new
��) ,
List
��- 1
<
��1 2
int
��2 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
events
�� "
.
��" #
AddRange
��# +
(
��+ ,*
s_InterfaceEventSystemEvents
��, H
[
��H I
eventInterface
��I W
]
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 
if
�� 
(
�� 
events
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
componentEvent
�� &
=
��' (
new
��) ,(
ComponentInterceptedEvents
��- G
(
��G H
)
��H I
;
��I J
componentEvent
�� &
.
��& '
componentName
��' 4
=
��5 6
new
��7 :

GUIContent
��; E
(
��E F
type
��F J
.
��J K
Name
��K O
)
��O P
;
��P Q
componentEvent
�� &
.
��& '
interceptedEvents
��' 8
=
��9 :
events
��; A
.
��A B
OrderBy
��B I
(
��I J
index
��J O
=>
��P R
s_PossibleEvents
��S c
[
��c d
index
��d i
]
��i j
.
��j k
text
��k o
)
��o p
.
��p q
ToArray
��q x
(
��x y
)
��y z
;
��z {
}
��  
s_ComponentEvents2
�� &
.
��& '
Add
��' *
(
��* +
type
��+ /
,
��/ 0
componentEvent
��1 ?
)
��? @
;
��@ A
Profiler
�� 
.
�� 
	EndSample
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
�� 
{
�� 
componentEvent
�� "
=
��# $ 
s_ComponentEvents2
��% 7
[
��7 8
type
��8 <
]
��< =
;
��= >
}
�� 
if
�� 
(
�� 
componentEvent
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
componentEvents
�� #
.
��# $
Add
��$ '
(
��' (
componentEvent
��( 6
)
��6 7
;
��7 8
}
�� 
}
�� 
return
�� 
componentEvents
�� "
;
��" #
}
�� 	
private
�� 
static
�� 
void
�� 4
&InitializeEvetnsInterfaceCacheIfNeeded
�� B
(
��B C
)
��C D
{
�� 	
if
�� 
(
�� %
s_EventSystemInterfaces
�� '
!=
��( *
null
��+ /
)
��/ 0
return
�� 
;
�� %
s_EventSystemInterfaces
�� #
=
��$ %
new
��& )
List
��* .
<
��. /
Type
��/ 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
s_PossibleEvents
�� 
=
�� 
new
�� "
List
��# '
<
��' (

GUIContent
��( 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6*
s_InterfaceEventSystemEvents
�� (
=
��) *
new
��+ .

Dictionary
��/ 9
<
��9 :
Type
��: >
,
��> ?
List
��@ D
<
��D E
int
��E H
>
��H I
>
��I J
(
��J K
)
��K L
;
��L M
	TypeCache
�� 
.
�� 
TypeCollection
�� $
types
��% *
=
��+ ,
	TypeCache
��- 6
.
��6 7!
GetTypesDerivedFrom
��7 J
<
��J K!
IEventSystemHandler
��K ^
>
��^ _
(
��_ `
)
��` a
;
��a b
foreach
�� 
(
�� 
var
�� 
type
�� 
in
��  
types
��! &
)
��& '
{
�� 
if
�� 
(
�� 
!
�� 
type
�� 
.
�� 
IsInterface
�� %
)
��% &
continue
�� 
;
�� %
s_EventSystemInterfaces
�� '
.
��' (
Add
��( +
(
��+ ,
type
��, 0
)
��0 1
;
��1 2
List
�� 
<
�� 
int
�� 
>
�� 
eventIndexList
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
int
��4 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;

MethodInfo
�� 
[
�� 
]
�� 
methodInfos
�� (
=
��) *
type
��+ /
.
��/ 0

GetMethods
��0 :
(
��: ;
BindingFlags
��; G
.
��G H
Public
��H N
|
��O P
BindingFlags
��Q ]
.
��] ^
	NonPublic
��^ g
|
��h i
BindingFlags
��j v
.
��v w
Instance
��w 
)�� �
;��� �
for
�� 
(
�� 
int
�� 
mi
�� 
=
�� 
$num
�� 
;
��  
mi
��! #
<
��$ %
methodInfos
��& 1
.
��1 2
Length
��2 8
;
��8 9
mi
��: <
++
��< >
)
��> ?
{
�� 

MethodInfo
�� 

methodInfo
�� )
=
��* +
methodInfos
��, 7
[
��7 8
mi
��8 :
]
��: ;
;
��; <
eventIndexList
�� "
.
��" #
Add
��# &
(
��& '
s_PossibleEvents
��' 7
.
��7 8
Count
��8 =
)
��= >
;
��> ?
s_PossibleEvents
�� $
.
��$ %
Add
��% (
(
��( )
new
��) ,

GUIContent
��- 7
(
��7 8

methodInfo
��8 B
.
��B C
Name
��C G
)
��G H
)
��H I
;
��I J
}
�� *
s_InterfaceEventSystemEvents
�� ,
.
��, -
Add
��- 0
(
��0 1
type
��1 5
,
��5 6
eventIndexList
��7 E
)
��E F
;
��F G
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\Properties\AssemblyInfo.cs
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
]&&) *܀
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\LayoutPropertiesPreview.cs
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
minWidth	ee} �
,
ee� �
$num
ee� �
,
ee� �
out
ee� �
source
ee� �
)
ee� �
.
ee� �
ToString
ee� �
(
ee� �
CultureInfo
ee� �
.
ee� �
InvariantCulture
ee� �
.
ee� �
NumberFormat
ee� �
)
ee� �
,
ee� �
source
ee� �
)
ee� �
;
ee� �
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
	minHeight	ff~ �
,
ff� �
$num
ff� �
,
ff� �
out
ff� �
source
ff� �
)
ff� �
.
ff� �
ToString
ff� �
(
ff� �
CultureInfo
ff� �
.
ff� �
InvariantCulture
ff� �
.
ff� �
NumberFormat
ff� �
)
ff� �
,
ff� �
source
ff� �
)
ff� �
;
ff� �
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
=>	gg~ �
e
gg� �
.
gg� �
preferredWidth
gg� �
,
gg� �
$num
gg� �
,
gg� �
out
gg� �
source
gg� �
)
gg� �
.
gg� �
ToString
gg� �
(
gg� �
CultureInfo
gg� �
.
gg� �
InvariantCulture
gg� �
.
gg� �
NumberFormat
gg� �
)
gg� �
,
gg� �
source
gg� �
)
gg� �
;
gg� �
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
=>	hh �
e
hh� �
.
hh� �
preferredHeight
hh� �
,
hh� �
$num
hh� �
,
hh� �
out
hh� �
source
hh� �
)
hh� �
.
hh� �
ToString
hh� �
(
hh� �
CultureInfo
hh� �
.
hh� �
InvariantCulture
hh� �
.
hh� �
NumberFormat
hh� �
)
hh� �
,
hh� �
source
hh� �
)
hh� �
;
hh� �
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
ToString	mm| �
(
mm� �
CultureInfo
mm� �
.
mm� �
InvariantCulture
mm� �
.
mm� �
NumberFormat
mm� �
)
mm� �
+
mm� �
$str
mm� �
)
mm� �
:
mm� �
$str
mm� �
,
mm� �
source
mm� �
)
mm� �
;
mm� �
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
ToString	oo} �
(
oo� �
CultureInfo
oo� �
.
oo� �
InvariantCulture
oo� �
.
oo� �
NumberFormat
oo� �
)
oo� �
+
oo� �
$str
oo� �
)
oo� �
:
oo� �
$str
oo� �
,
oo� �
source
oo� �
)
oo� �
;
oo� �
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
ILayoutElement	xxw �
source
xx� �
)
xx� �
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
�� 	
}
�� 
}�� ��
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\SpriteDrawUtility.cs
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
color	rr{ �
,
rr� �
Material
rr� �
mat
rr� �
)
rr� �
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
�� 
(
�� 
drawArea
�� 
.
�� 
height
�� 
>
��  !
	outerRect
��" +
.
��+ ,
height
��, 2
)
��2 3
{
�� 
	outerRect
�� 
.
�� 
y
�� 
+=
�� 
(
��  
drawArea
��  (
.
��( )
height
��) /
-
��0 1
	outerRect
��2 ;
.
��; <
height
��< B
)
��B C
*
��D E
$num
��F J
;
��J K
}
�� 
else
�� 
if
�� 
(
�� 
	outerRect
�� 
.
�� 
height
�� %
>
��& '
drawArea
��( 0
.
��0 1
height
��1 7
)
��7 8
{
�� 
float
�� 
f
�� 
=
�� 
drawArea
�� "
.
��" #
height
��# )
/
��* +
	outerRect
��, 5
.
��5 6
height
��6 <
;
��< =
	outerRect
�� 
.
�� 
width
�� 
*=
��  "
f
��# $
;
��$ %
	outerRect
�� 
.
�� 
height
��  
*=
��! #
f
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
drawArea
�� 
.
�� 
width
�� 
>
��  
	outerRect
��! *
.
��* +
width
��+ 0
)
��0 1
	outerRect
�� 
.
�� 
x
�� 
+=
�� 
(
��  
drawArea
��  (
.
��( )
width
��) .
-
��/ 0
	outerRect
��1 :
.
��: ;
width
��; @
)
��@ A
*
��B C
$num
��D H
;
��H I
	EditorGUI
�� 
.
�� $
DrawTextureTransparent
�� ,
(
��, -
	outerRect
��- 6
,
��6 7
null
��8 <
,
��< =
	ScaleMode
��> G
.
��G H

ScaleToFit
��H R
,
��R S
outer
��T Y
.
��Y Z
width
��Z _
/
��` a
outer
��b g
.
��g h
height
��h n
)
��n o
;
��o p
GUI
�� 
.
�� 
color
�� 
=
�� 
color
�� 
;
�� 
Rect
�� 
paddedTexArea
�� 
=
��  
new
��! $
Rect
��% )
(
��) *
	outerRect
�� 
.
�� 
x
�� 
+
�� 
	outerRect
�� '
.
��' (
width
��( -
*
��. /
padding
��0 7
.
��7 8
x
��8 9
,
��9 :
	outerRect
�� 
.
�� 
y
�� 
+
�� 
	outerRect
�� '
.
��' (
height
��( .
*
��/ 0
padding
��1 8
.
��8 9
w
��9 :
,
��: ;
	outerRect
�� 
.
�� 
width
�� 
-
��  !
(
��" #
	outerRect
��# ,
.
��, -
width
��- 2
*
��3 4
(
��5 6
padding
��6 =
.
��= >
z
��> ?
+
��@ A
padding
��B I
.
��I J
x
��J K
)
��K L
)
��L M
,
��M N
	outerRect
�� 
.
�� 
height
��  
-
��! "
(
��# $
	outerRect
��$ -
.
��- .
height
��. 4
*
��5 6
(
��7 8
padding
��8 ?
.
��? @
w
��@ A
+
��B C
padding
��D K
.
��K L
y
��L M
)
��M N
)
��N O
)
�� 
;
�� 
if
�� 
(
�� 
mat
�� 
==
�� 
null
�� 
)
�� 
{
�� 
GUI
�� 
.
�� &
DrawTextureWithTexCoords
�� ,
(
��, -
paddedTexArea
��- :
,
��: ;
tex
��< ?
,
��? @
uv
��A C
,
��C D
true
��E I
)
��I J
;
��J K
}
�� 
else
�� 
{
�� 
	EditorGUI
�� 
.
��  
DrawPreviewTexture
�� ,
(
��, -
paddedTexArea
��- :
,
��: ;
tex
��< ?
,
��? @
mat
��A D
)
��D E
;
��E F
}
�� 
GUI
�� 
.
�� 

BeginGroup
�� 
(
�� 
	outerRect
�� $
)
��$ %
;
��% &
{
�� 
tex
�� 
=
�� 
contrastTexture
�� %
;
��% &
GUI
�� 
.
�� 
color
�� 
=
�� 
Color
�� !
.
��! "
white
��" '
;
��' (
if
�� 
(
�� 
inner
�� 
.
�� 
xMin
�� 
!=
�� !
outer
��" '
.
��' (
xMin
��( ,
)
��, -
{
�� 
float
�� 
x
�� 
=
�� 
(
�� 
inner
�� $
.
��$ %
xMin
��% )
-
��* +
outer
��, 1
.
��1 2
xMin
��2 6
)
��6 7
/
��8 9
outer
��: ?
.
��? @
width
��@ E
*
��F G
	outerRect
��H Q
.
��Q R
width
��R W
-
��X Y
$num
��Z [
;
��[ \
DrawTiledTexture
�� $
(
��$ %
new
��% (
Rect
��) -
(
��- .
x
��. /
,
��/ 0
$num
��1 3
,
��3 4
$num
��5 7
,
��7 8
	outerRect
��9 B
.
��B C
height
��C I
)
��I J
,
��J K
tex
��L O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
inner
�� 
.
�� 
xMax
�� 
!=
�� !
outer
��" '
.
��' (
xMax
��( ,
)
��, -
{
�� 
float
�� 
x
�� 
=
�� 
(
�� 
inner
�� $
.
��$ %
xMax
��% )
-
��* +
outer
��, 1
.
��1 2
xMin
��2 6
)
��6 7
/
��8 9
outer
��: ?
.
��? @
width
��@ E
*
��F G
	outerRect
��H Q
.
��Q R
width
��R W
-
��X Y
$num
��Z [
;
��[ \
DrawTiledTexture
�� $
(
��$ %
new
��% (
Rect
��) -
(
��- .
x
��. /
,
��/ 0
$num
��1 3
,
��3 4
$num
��5 7
,
��7 8
	outerRect
��9 B
.
��B C
height
��C I
)
��I J
,
��J K
tex
��L O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
inner
�� 
.
�� 
yMin
�� 
!=
�� !
outer
��" '
.
��' (
yMin
��( ,
)
��, -
{
�� 
float
�� 
y
�� 
=
�� 
(
�� 
inner
�� $
.
��$ %
yMin
��% )
-
��* +
outer
��, 1
.
��1 2
yMin
��2 6
)
��6 7
/
��8 9
outer
��: ?
.
��? @
height
��@ F
*
��G H
	outerRect
��I R
.
��R S
height
��S Y
-
��Z [
$num
��\ ]
;
��] ^
DrawTiledTexture
�� $
(
��$ %
new
��% (
Rect
��) -
(
��- .
$num
��. 0
,
��0 1
	outerRect
��2 ;
.
��; <
height
��< B
-
��C D
y
��E F
,
��F G
	outerRect
��H Q
.
��Q R
width
��R W
,
��W X
$num
��Y [
)
��[ \
,
��\ ]
tex
��^ a
)
��a b
;
��b c
}
�� 
if
�� 
(
�� 
inner
�� 
.
�� 
yMax
�� 
!=
�� !
outer
��" '
.
��' (
yMax
��( ,
)
��, -
{
�� 
float
�� 
y
�� 
=
�� 
(
�� 
inner
�� $
.
��$ %
yMax
��% )
-
��* +
outer
��, 1
.
��1 2
yMin
��2 6
)
��6 7
/
��8 9
outer
��: ?
.
��? @
height
��@ F
*
��G H
	outerRect
��I R
.
��R S
height
��S Y
-
��Z [
$num
��\ ]
;
��] ^
DrawTiledTexture
�� $
(
��$ %
new
��% (
Rect
��) -
(
��- .
$num
��. 0
,
��0 1
	outerRect
��2 ;
.
��; <
height
��< B
-
��C D
y
��E F
,
��F G
	outerRect
��H Q
.
��Q R
width
��R W
,
��W X
$num
��Y [
)
��[ \
,
��\ ]
tex
��^ a
)
��a b
;
��b c
}
�� 
}
�� 
GUI
�� 
.
�� 
EndGroup
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �[
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\GraphicEditor.cs
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
�� 
=
�� 
EditorGUILayout
�� +
.
��+ ,
Foldout
��, 3
(
��3 4
m_ShowPadding
��4 A
,
��A B
m_PaddingContent
��C S
)
��S T
;
��T U
if
�� 
(
�� 
m_ShowPadding
�� 
)
�� 
{
�� 
using
�� 
(
�� 
var
�� 
check
��  
=
��! "
new
��# &
	EditorGUI
��' 0
.
��0 1
ChangeCheckScope
��1 A
(
��A B
)
��B C
)
��C D
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� )
++
��) +
;
��+ ,
Vector4
�� 

newPadding
�� &
=
��' (
m_RaycastPadding
��) 9
.
��9 :
vector4Value
��: F
;
��F G

newPadding
�� 
.
�� 
x
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3

FloatField
��3 =
(
��= >
m_LeftContent
��> K
,
��K L

newPadding
��M W
.
��W X
x
��X Y
)
��Y Z
;
��Z [

newPadding
�� 
.
�� 
z
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3

FloatField
��3 =
(
��= >
m_RightContent
��> L
,
��L M

newPadding
��N X
.
��X Y
z
��Y Z
)
��Z [
;
��[ \

newPadding
�� 
.
�� 
w
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3

FloatField
��3 =
(
��= >
m_TopContent
��> J
,
��J K

newPadding
��L V
.
��V W
w
��W X
)
��X Y
;
��Y Z

newPadding
�� 
.
�� 
y
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3

FloatField
��3 =
(
��= >
m_BottomContent
��> M
,
��M N

newPadding
��O Y
.
��Y Z
y
��Z [
)
��[ \
;
��\ ]
if
�� 
(
�� 
check
�� 
.
�� 
changed
�� %
)
��% &
{
�� 
m_RaycastPadding
�� (
.
��( )
vector4Value
��) 5
=
��6 7

newPadding
��8 B
;
��B C
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� )
--
��) +
;
��+ ,
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �&
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\GridLayoutGroupEditor.cs
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
}88 �*
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\AspectRatioFitterEditor.cs
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
$str	@@ �
)
@@� �
;
@@� �
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
$str	FF �
)
FF� �
;
FF� �
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
}JJ �O
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ScrollbarEditor.cs
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
typeof	++{ �
(
++� �
RectTransform
++� �
)
++� �
,
++� �
true
++� �
)
++� �
as
++� �
RectTransform
++� �
;
++� �
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
!=	VV �
null
VV� �
||
VV� �
	scrollbar
VV� �
.
VV� �#
FindSelectableOnRight
VV� �
(
VV� �
)
VV� �
!=
VV� �
null
VV� �
)
VV� �
)
VV� �
;
VV� �
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
!=	XX �
null
XX� �
||
XX� �
	scrollbar
XX� �
.
XX� � 
FindSelectableOnUp
XX� �
(
XX� �
)
XX� �
!=
XX� �
null
XX� �
)
XX� �
)
XX� �
;
XX� �
}YY 
if[[ 
([[ 
warning[[ 
)[[ 
EditorGUILayout\\ #
.\\# $
HelpBox\\$ +
(\\+ ,
$str	\\, �
,
\\� �
MessageType
\\� �
.
\\� �
Warning
\\� �
)
\\� �
;
\\� �
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
$str	dd( �
,
dd� �
MessageType
dd� �
.
dd� �
Info
dd� �
)
dd� �
;
dd� �
}ee 
serializedObjectgg 
.gg #
ApplyModifiedPropertiesgg 4
(gg4 5
)gg5 6
;gg6 7
}hh 	
}ii 
}jj �1
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ToggleEditor.cs
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
}LL ӎ
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\ScrollRectEditor.cs
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
$str	""! �
;
""� �
static## 
string## 
s_VError## 
=##  
$str	##! �
;
##� �
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

ScrollRect	EE~ �
.
EE� �
MovementType
EE� �
.
EE� �
Elastic
EE� �
,
EE� �
instant
EE� �
)
EE� �
;
EE� �
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
parent	YYz �
!=
YY� �
	transform
YY� �
)
YY� � 
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
objectReferenceValue	[[l �
)
[[� �
.
[[� �
	transform
[[� �
.
[[� �
parent
[[� �
!=
[[� �
	transform
[[� �
)
[[� �"
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
	transform	]]~ �
.
]]� �
parent
]]� �
!=
]]� �
	transform
]]� �
)
]]� �"
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
�� 
.
�� 
PropertyField
�� )
(
��) *!
m_ScrollSensitivity
��* =
)
��= >
;
��> ?
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *

m_Viewport
��* 4
)
��4 5
;
��5 6
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *#
m_HorizontalScrollbar
��* ?
)
��? @
;
��@ A
if
�� 
(
�� #
m_HorizontalScrollbar
�� %
.
��% &"
objectReferenceValue
��& :
&&
��; =
!
��> ?#
m_HorizontalScrollbar
��? T
.
��T U(
hasMultipleDifferentValues
��U o
)
��o p
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .-
m_HorizontalScrollbarVisibility
��. M
,
��M N
EditorGUIUtility
��O _
.
��_ `
TrTextContent
��` m
(
��m n
$str
��n z
)
��z {
)
��{ |
;
��| }
if
�� 
(
�� 
(
�� 

ScrollRect
�� 
.
��  !
ScrollbarVisibility
��  3
)
��3 4-
m_HorizontalScrollbarVisibility
��4 S
.
��S T
enumValueIndex
��T b
==
��c e

ScrollRect
��f p
.
��p q"
ScrollbarVisibility��q �
.��� �)
AutoHideAndExpandViewport��� �
&&
�� 
!
�� -
m_HorizontalScrollbarVisibility
�� 7
.
��7 8(
hasMultipleDifferentValues
��8 R
)
��R S
{
�� 
if
�� 
(
�� "
m_ViewportIsNotChild
�� ,
||
��- /$
m_HScrollbarIsNotChild
��0 F
)
��F G
EditorGUILayout
�� '
.
��' (
HelpBox
��( /
(
��/ 0
s_HError
��0 8
,
��8 9
MessageType
��: E
.
��E F
Error
��F K
)
��K L
;
��L M
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2*
m_HorizontalScrollbarSpacing
��2 N
,
��N O
EditorGUIUtility
��P `
.
��` a
TrTextContent
��a n
(
��n o
$str
��o x
)
��x y
)
��y z
;
��z {
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *!
m_VerticalScrollbar
��* =
)
��= >
;
��> ?
if
�� 
(
�� !
m_VerticalScrollbar
�� #
.
��# $"
objectReferenceValue
��$ 8
&&
��9 ;
!
��< =!
m_VerticalScrollbar
��= P
.
��P Q(
hasMultipleDifferentValues
��Q k
)
��k l
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .+
m_VerticalScrollbarVisibility
��. K
,
��K L
EditorGUIUtility
��M ]
.
��] ^
TrTextContent
��^ k
(
��k l
$str
��l x
)
��x y
)
��y z
;
��z {
if
�� 
(
�� 
(
�� 

ScrollRect
�� 
.
��  !
ScrollbarVisibility
��  3
)
��3 4+
m_VerticalScrollbarVisibility
��4 Q
.
��Q R
enumValueIndex
��R `
==
��a c

ScrollRect
��d n
.
��n o"
ScrollbarVisibility��o �
.��� �)
AutoHideAndExpandViewport��� �
&&
�� 
!
�� +
m_VerticalScrollbarVisibility
�� 5
.
��5 6(
hasMultipleDifferentValues
��6 P
)
��P Q
{
�� 
if
�� 
(
�� "
m_ViewportIsNotChild
�� ,
||
��- /$
m_VScrollbarIsNotChild
��0 F
)
��F G
EditorGUILayout
�� '
.
��' (
HelpBox
��( /
(
��/ 0
s_VError
��0 8
,
��8 9
MessageType
��: E
.
��E F
Error
��F K
)
��K L
;
��L M
EditorGUILayout
�� #
.
��# $
PropertyField
��$ 1
(
��1 2(
m_VerticalScrollbarSpacing
��2 L
,
��L M
EditorGUIUtility
��N ^
.
��^ _
TrTextContent
��_ l
(
��l m
$str
��m v
)
��v w
)
��w x
;
��x y
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_OnValueChanged
��* :
)
��: ;
;
��; <
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� �!
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\SpriteStateDrawer.cs
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
}$$ �K
�C:\Program Files\Unity\Hub\Editor\2020.2.3f1\Editor\Data\Resources\PackageManager\BuiltInPackages\com.unity.ugui\Editor\UI\PropertyDrawers\NavigationDrawer.cs
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