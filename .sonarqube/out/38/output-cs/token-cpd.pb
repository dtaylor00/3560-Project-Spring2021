�>
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\Shaders\ParticlesSimpleLitShader.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
	ShaderGUI* 3
{ 
internal 
class
ParticlesSimpleLitShader +
:, -

{ 
private

 
SimpleLitGUI

 
.

 
SimpleLitProperties

 0"
shadingModelProperties

1 G
;

G H
private 
ParticleGUI 
. 
ParticleProperties .

;< =
List 
< 
ParticleSystemRenderer
># $(
m_RenderersUsingThisMaterial% A
=B C
newD G
ListH L
<L M"
ParticleSystemRendererM c
>c d
(d e
)e f
;f g
public 
override 
void 
FindProperties +
(+ ,
MaterialProperty, <
[< =
]= >

properties? I
)I J
{ 	
base 
. 
FindProperties 
(  

properties  *
)* +
;+ ,"
shadingModelProperties "
=# $
new% (
SimpleLitGUI) 5
.5 6
SimpleLitProperties6 I
(I J

propertiesJ T
)T U
;U V

= 
new 
ParticleGUI  +
.+ ,
ParticleProperties, >
(> ?

properties? I
)I J
;J K
} 	
public 
override 
void 
MaterialChanged ,
(, -
Material- 5
material6 >
)> ?
{ 	
if 
( 
material 
== 
null  
)  !
throw 
new !
ArgumentNullException /
(/ 0
$str0 :
): ;
;; <
SetMaterialKeywords 
(  
material  (
,( )
SimpleLitGUI* 6
.6 7
SetMaterialKeywords7 J
,J K
ParticleGUIL W
.W X
SetMaterialKeywordsX k
)k l
;l m
} 	
public 
override 
void 
DrawSurfaceOptions /
(/ 0
Material0 8
material9 A
)A B
{   	
	EditorGUI"" 
."" 
BeginChangeCheck"" &
(""& '
)""' (
;""( )
{## 
base$$ 
.$$ 
DrawSurfaceOptions$$ '
($$' (
material$$( 0
)$$0 1
;$$1 2
DoPopup%% 
(%% 
ParticleGUI%% #
.%%# $
Styles%%$ *
.%%* +
	colorMode%%+ 4
,%%4 5

.%%C D
	colorMode%%D M
,%%M N
Enum%%O S
.%%S T
GetNames%%T \
(%%\ ]
typeof%%] c
(%%c d
ParticleGUI%%d o
.%%o p
	ColorMode%%p y
)%%y z
)%%z {
)%%{ |
;%%| }
}&& 
if'' 
('' 
	EditorGUI'' 
.'' 
EndChangeCheck'' (
(''( )
)'') *
)''* +
{(( 
foreach)) 
()) 
var)) 
obj))  
in))! #

.))1 2
targets))2 9
)))9 :
MaterialChanged** #
(**# $
(**$ %
Material**% -
)**- .
obj**. 1
)**1 2
;**2 3
}++ 
},, 	
public.. 
override.. 
void.. 
DrawSurfaceInputs.. .
(... /
Material../ 7
material..8 @
)..@ A
{// 	
base00 
.00 
DrawSurfaceInputs00 "
(00" #
material00# +
)00+ ,
;00, -
SimpleLitGUI11 
.11 
Inputs11 
(11  "
shadingModelProperties11  6
,116 7
materialEditor118 F
,11F G
material11H P
)11P Q
;11Q R"
DrawEmissionProperties22 "
(22" #
material22# +
,22+ ,
true22- 1
)221 2
;222 3
}33 	
public55 
override55 
void55 
DrawAdvancedOptions55 0
(550 1
Material551 9
material55: B
)55B C
{66 	
SimpleLitGUI77 
.77 
Advanced77 !
(77! ""
shadingModelProperties77" 8
)778 9
;779 :
	EditorGUI88 
.88 
BeginChangeCheck88 &
(88& '
)88' (
;88( )
{99 
materialEditor:: 
.:: 
ShaderProperty:: -
(::- .

.::; <
flipbookMode::< H
,::H I
ParticleGUI::J U
.::U V
Styles::V \
.::\ ]
flipbookMode::] i
)::i j
;::j k
ParticleGUI;; 
.;; 

(;;) *
material;;* 2
,;;2 3
materialEditor;;4 B
,;;B C

);;Q R
;;;R S
ParticleGUI<< 
.<< 
DoVertexStreamsArea<< /
(<</ 0
material<<0 8
,<<8 9(
m_RenderersUsingThisMaterial<<: V
,<<V W
true<<X \
)<<\ ]
;<<] ^
if>> 
(>> 
	EditorGUI>> 
.>> 
EndChangeCheck>> ,
(>>, -
)>>- .
)>>. /
{?? 
MaterialChanged@@ #
(@@# $
material@@$ ,
)@@, -
;@@- .
}AA 
}BB 
DrawQueueOffsetFieldDD  
(DD  !
)DD! "
;DD" #
}EE 	
publicGG 
overrideGG 
voidGG 
	OnOpenGUIGG &
(GG& '
MaterialGG' /
materialGG0 8
,GG8 9
MaterialEditorGG: H
materialEditorGGI W
)GGW X
{HH 	+
CacheRenderersUsingThisMaterialII +
(II+ ,
materialII, 4
)II4 5
;II5 6
baseJJ 
.JJ 
	OnOpenGUIJJ 
(JJ 
materialJJ #
,JJ# $
materialEditorJJ% 3
)JJ3 4
;JJ4 5
}KK 	
voidMM +
CacheRenderersUsingThisMaterialMM
(MM, -
MaterialMM- 5
materialMM6 >
)MM> ?
{NN 	(
m_RenderersUsingThisMaterialOO (
.OO( )
ClearOO) .
(OO. /
)OO/ 0
;OO0 1"
ParticleSystemRendererQQ "
[QQ" #
]QQ# $
	renderersQQ% .
=QQ/ 0
UnityEngineQQ1 <
.QQ< =
ObjectQQ= C
.QQC D
FindObjectsOfTypeQQD U
(QQU V
typeofQQV \
(QQ\ ]"
ParticleSystemRendererQQ] s
)QQs t
)QQt u
asQQv x#
ParticleSystemRenderer	QQy �
[
QQ� �
]
QQ� �
;
QQ� �
foreachRR 
(RR "
ParticleSystemRendererRR +
rendererRR, 4
inRR5 7
	renderersRR8 A
)RRA B
{SS 
ifTT 
(TT 
rendererTT 
.TT 
sharedMaterialTT +
==TT, .
materialTT/ 7
)TT7 8(
m_RenderersUsingThisMaterialUU 0
.UU0 1
AddUU1 4
(UU4 5
rendererUU5 =
)UU= >
;UU> ?
}VV 
}WW 	
}XX 
}YY �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\CompositeShadowCaster2DEditor.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
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
 #
CompositeShadowCaster2D

 0
)

0 1
)

1 2
]

2 3
internal 
class
CompositeShadowCaster2DEditor 0
:1 2
Editor3 9
{ 
public
override
void
OnInspectorGUI
(
)
{ 	
} 	
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\UniversalRenderPipelineCameraEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{
[ )
CustomEditorForRenderPipeline "
(" #
typeof# )
() *
Camera* 0
)0 1
,1 2
typeof3 9
(9 :(
UniversalRenderPipelineAsset: V
)V W
)W X
]X Y
[ "
CanEditMultipleObjects 
] 
class 	/
#UniversalRenderPipelineCameraEditor
 -
:. /
CameraEditor0 <
{ 
internal 
enum 
BackgroundType $
{ 	
Skybox 
= 
$num 
, 

SolidColor 
, 
DontCare 
, 
} 	
static 
class 
Styles 
{ 	
public 
static 

GUIContent $$
commonCameraSettingsText% =
=> ?
EditorGUIUtility@ P
.P Q

(^ _
$str_ k
,k l
$str	m �
)
� �
;
� �
public 
static 

GUIContent $#
environmentSettingsText% <
== >
EditorGUIUtility? O
.O P

(] ^
$str^ k
,k l
$str	m �
)
� �
;
� �
public 
static 

GUIContent $
outputSettingsText% 7
=8 9
EditorGUIUtility: J
.J K

(X Y
$strY a
,a b
$str	c �
)
� �
;
� �
public 
static 

GUIContent $!
renderingSettingsText% :
=; <
EditorGUIUtility= M
.M N

([ \
$str\ g
,g h
$str	i �
)
� �
;
� �
public   
static   

GUIContent   $
stackSettingsText  % 6
=  7 8
EditorGUIUtility  9 I
.  I J

(  W X
$str  X _
,  _ `
$str	  a �
)
  � �
;
  � �
public"" 
static"" 

GUIContent"" $
backgroundType""% 3
=""4 5
EditorGUIUtility""6 F
.""F G

(""T U
$str""U f
,""f g
$str	""h �
)
""� �
;
""� �
public## 
static## 

GUIContent## $

cameraType##% /
=##0 1
EditorGUIUtility##2 B
.##B C

(##P Q
$str##Q ^
,##^ _
$str	##` �
)
##� �
;
##� �
public$$ 
static$$ 

GUIContent$$ $
renderingShadows$$% 5
=$$6 7
EditorGUIUtility$$8 H
.$$H I

($$V W
$str$$W g
,$$g h
$str	$$i �
)
$$� �
;
$$� �
public%% 
static%% 

GUIContent%% $
requireDepthTexture%%% 8
=%%9 :
EditorGUIUtility%%; K
.%%K L

(%%Y Z
$str%%Z i
,%%i j
$str	%%k �
)
%%� �
;
%%� �
public&& 
static&& 

GUIContent&& $ 
requireOpaqueTexture&&% 9
=&&: ;
EditorGUIUtility&&< L
.&&L M

(&&Z [
$str&&[ k
,&&k l
$str	&&m �
)
&&� �
;
&&� �
public'' 
static'' 

GUIContent'' $
	allowMSAA''% .
=''/ 0
EditorGUIUtility''1 A
.''A B

(''O P
$str''P V
,''V W
$str	''X �
)
''� �
;
''� �
public(( 
static(( 

GUIContent(( $
allowHDR((% -
=((. /
EditorGUIUtility((0 @
.((@ A

(((N O
$str((O T
,((T U
$str	((V �
,
((� �
(
((� �
Texture
((� �
)
((� �
null
((� �
)
((� �
;
((� �
public)) 
static)) 

GUIContent)) $
priority))% -
=)). /
EditorGUIUtility))0 @
.))@ A

())N O
$str))O Y
,))Y Z
$str	))[ �
)
))� �
;
))� �
public** 
static** 

GUIContent** $

clearDepth**% /
=**0 1
EditorGUIUtility**2 B
.**B C

(**P Q
$str**Q ^
,**^ _
$str	**` �
)
**� �
;
**� �
public,, 
static,, 

GUIContent,, $
rendererType,,% 1
=,,2 3
EditorGUIUtility,,4 D
.,,D E

(,,R S
$str,,S ]
,,,] ^
$str	,,_ �
)
,,� �
;
,,� �
public.. 
static.. 

GUIContent.. $
volumeLayerMask..% 4
=..5 6
EditorGUIUtility..7 G
...G H

(..U V
$str..V c
,..c d
$str	..e �
)
..� �
;
..� �
public// 
static// 

GUIContent// $

=//3 4
EditorGUIUtility//5 E
.//E F

(//S T
$str//T d
,//d e
$str	//f �
)
//� �
;
//� �
public11 
static11 

GUIContent11 $ 
renderPostProcessing11% 9
=11: ;
EditorGUIUtility11< L
.11L M

(11Z [
$str11[ l
,11l m
$str	11n �
)
11� �
;
11� �
public22 
static22 

GUIContent22 $
antialiasing22% 1
=222 3
EditorGUIUtility224 D
.22D E

(22R S
$str22S b
,22b c
$str	22d �
)
22� �
;
22� �
public33 
static33 

GUIContent33 $
antialiasingQuality33% 8
=339 :
EditorGUIUtility33; K
.33K L

(33Y Z
$str33Z c
,33c d
$str	33e �
)
33� �
;
33� �
public44 
static44 

GUIContent44 $
stopNaN44% ,
=44- .
EditorGUIUtility44/ ?
.44? @

(44M N
$str44N X
,44X Y
$str	44Z �
)
44� �
;
44� �
public55 
static55 

GUIContent55 $
	dithering55% .
=55/ 0
EditorGUIUtility551 A
.55A B

(55O P
$str55P [
,55[ \
$str	55] �
)
55� �
;
55� �
public88 
static88 

GUIContent88 $
[88$ %
]88% &
xrTargetEyeOptions88' 9
=88: ;
{99 
new:: 

GUIContent:: 
(:: 
$str:: %
)::% &
,::& '
new;; 

GUIContent;; 
(;; 
$str;; %
);;% &
,;;& '
}<< 
;<<
public== 
static== 
int== 
[== 
]== 
xrTargetEyeValues==  1
===2 3
{==4 5
$num==6 7
,==7 8
$num==9 :
}==; <
;==< =
public>> 
static>> 
readonly>> "

GUIContent>># -
xrTargetEye>>. 9
=>>: ;
EditorGUIUtility>>< L
.>>L M

(>>Z [
$str>>[ g
,>>g h
$str	>>i �
)
>>� �
;
>>� �
public@@ 
static@@ 
readonly@@ "

GUIContent@@# -
targetTextureLabel@@. @
=@@A B
EditorGUIUtility@@C S
.@@S T

(@@a b
$str@@b r
,@@r s
$str	@@t �
)
@@� �
;
@@� �
publicBB 
staticBB 
readonlyBB "
stringBB# )
hdrDisabledWarningBB* <
=BB= >
$str	BB? �
;
BB� �
publicCC 
staticCC 
readonlyCC "
stringCC# )
mssaDisabledWarningCC* =
=CC> ?
$str	CC@ �
;
CC� �
publicEE 
staticEE 
readonlyEE "
stringEE# )"
missingRendererWarningEE* @
=EEA B
$str	EEC �
;
EE� �
publicFF 
staticFF 
readonlyFF "
stringFF# )
noRendererErrorFF* 9
=FF: ;
$str	FF< �
;
FF� �
publicHH 
staticHH 

GUIContentHH $
[HH$ %
]HH% & 
cameraBackgroundTypeHH' ;
=HH< =
{II 
newJJ 

GUIContentJJ 
(JJ 
$strJJ '
)JJ' (
,JJ( )
newKK 

GUIContentKK 
(KK 
$strKK ,
)KK, -
,KK- .
newLL 

GUIContentLL 
(LL 
$strLL .
)LL. /
,LL/ 0
}MM 
;MM
publicOO 
staticOO 
intOO 
[OO 
]OO "
cameraBackgroundValuesOO  6
=OO7 8
{OO9 :
$numOO; <
,OO< =
$numOO> ?
,OO? @
$numOOA B
}OOB C
;OOC D
publicRR 
staticRR 

GUIContentRR $
[RR$ %
]RR% &"
displayedCameraOptionsRR' =
=RR> ?
{SS 
newTT 

GUIContentTT 
(TT 
$strTT $
)TT$ %
,TT% &
newUU 

GUIContentUU 
(UU 
$strUU 6
)UU6 7
,UU7 8
}VV 
;VV
publicXX 
staticXX 
intXX 
[XX 
]XX 

=XX. /
{XX0 1
$numXX2 3
,XX3 4
$numXX5 6
}XX7 8
;XX8 9
public[[ 
static[[ 
List[[ 
<[[ 

GUIContent[[ )
>[[) *
m_CameraTypeNames[[+ <
=[[= >
null[[? C
;[[C D
public\\ 
static\\ 
readonly\\ "
string\\# )
[\\) *
]\\* +
cameraTypeNames\\, ;
=\\< =
Enum\\> B
.\\B C
GetNames\\C K
(\\K L
typeof\\L R
(\\R S
CameraRenderType\\S c
)\\c d
)\\d e
;\\e f
public__ 
static__ 

GUIContent__ $
[__$ %
]__% &
antialiasingOptions__' :
=__; <
{`` 
newaa 

GUIContentaa 
(aa 
$straa %
)aa% &
,aa& '
newbb 

GUIContentbb 
(bb 
$strbb F
)bbF G
,bbG H
newcc 

GUIContentcc 
(cc 
$strcc L
)ccL M
,ccM N
}dd 
;dd
publicee 
staticee 
intee 
[ee 
]ee 
antialiasingValuesee  2
=ee3 4
{ee5 6
$numee7 8
,ee8 9
$numee: ;
,ee; <
$numee= >
}ee> ?
;ee? @
}ff 	
ReorderableListhh 
m_LayerListhh #
;hh# $
publicjj 
Camerajj 
camerajj 
{jj 
getjj "
{jj# $
returnjj% +
targetjj, 2
asjj3 5
Camerajj6 <
;jj< =
}jj> ?
}jj@ A
statickk 
Listkk 
<kk 
Camerakk 
>kk 
	k_Cameraskk %
;kk% &
Listmm 
<mm 
Cameramm
>mm 
validCamerasmm !
=mm" #
newmm$ '
Listmm( ,
<mm, -
Cameramm- 3
>mm3 4
(mm4 5
)mm5 6
;mm6 7
Listoo 
<oo 
CameraRenderTypeoo
>oo 
validCameraTypesoo /
=oo0 1
newoo2 5
Listoo6 :
<oo: ;
CameraRenderTypeoo; K
>ooK L
{ooL M
CameraRenderTypeooM ]
.oo] ^
Overlayoo^ e
}ooe f
;oof g
Listpp 
<pp 
Camerapp
>pp 
errorCameraspp !
=pp" #
newpp$ '
Listpp( ,
<pp, -
Camerapp- 3
>pp3 4
(pp4 5
)pp5 6
;pp6 7
	Texture2Dqq 
m_ErrorIconqq 
;qq 
	SavedBooltt )
m_CommonCameraSettingsFoldouttt /
;tt/ 0
	SavedBooluu (
m_EnvironmentSettingsFoldoutuu .
;uu. /
	SavedBoolvv #
m_OutputSettingsFoldoutvv )
;vv) *
	SavedBoolww &
m_RenderingSettingsFoldoutww ,
;ww, -
	SavedBoolxx "
m_StackSettingsFoldoutxx (
;xx( )
public{{ 
bool{{ 
isSameClearFlags{{ $
{{{% &
get{{' *
{{{+ ,
return{{- 3
!{{4 5
settings{{5 =
.{{= >

clearFlags{{> H
.{{H I&
hasMultipleDifferentValues{{I c
;{{c d
}{{e f
}{{g h
public|| 
bool|| 
isSameOrthographic|| &
{||' (
get||) ,
{||- .
return||/ 5
!||6 7
settings||7 ?
.||? @
orthographic||@ L
.||L M&
hasMultipleDifferentValues||M g
;||g h
}||i j
}||k l

Dictionary~~ 
<~~ 
Object~~ 
,~~ )
UniversalAdditionalCameraData~~ 8
>~~8 9#
m_AdditionalCameraDatas~~: Q
=~~R S
new~~T W

Dictionary~~X b
<~~b c
Object~~c i
,~~i j*
UniversalAdditionalCameraData	~~k �
>
~~� �
(
~~� �
)
~~� �
;
~~� �
SerializedObject $
m_AdditionalCameraDataSO 1
;1 2
readonly
�� 
AnimBool
�� 
m_ShowBGColorAnim
�� +
=
��, -
new
��. 1
AnimBool
��2 :
(
��: ;
)
��; <
;
��< =
readonly
�� 
AnimBool
�� 
m_ShowOrthoAnim
�� )
=
��* +
new
��, /
AnimBool
��0 8
(
��8 9
)
��9 :
;
��: ;
readonly
�� 
AnimBool
�� !
m_ShowTargetEyeAnim
�� -
=
��. /
new
��0 3
AnimBool
��4 <
(
��< =
)
��= >
;
��> ? 
SerializedProperty
�� 5
'm_AdditionalCameraDataRenderShadowsProp
�� B
;
��B C 
SerializedProperty
�� 3
%m_AdditionalCameraDataRenderDepthProp
�� @
;
��@ A 
SerializedProperty
�� 4
&m_AdditionalCameraDataRenderOpaqueProp
�� A
;
��A B 
SerializedProperty
�� 0
"m_AdditionalCameraDataRendererProp
�� =
;
��= > 
SerializedProperty
�� 2
$m_AdditionalCameraDataCameraTypeProp
�� ?
;
��? @ 
SerializedProperty
�� +
m_AdditionalCameraDataCameras
�� 2
;
��2 3 
SerializedProperty
�� 3
%m_AdditionalCameraDataVolumeLayerMask
�� @
;
��@ A 
SerializedProperty
�� 1
#m_AdditionalCameraDataVolumeTrigger
�� >
;
��> ? 
SerializedProperty
�� 8
*m_AdditionalCameraDataRenderPostProcessing
�� E
;
��E F 
SerializedProperty
�� 0
"m_AdditionalCameraDataAntialiasing
�� =
;
��= > 
SerializedProperty
�� 7
)m_AdditionalCameraDataAntialiasingQuality
�� D
;
��D E 
SerializedProperty
�� +
m_AdditionalCameraDataStopNaN
�� 8
;
��8 9 
SerializedProperty
�� -
m_AdditionalCameraDataDithering
�� :
;
��: ; 
SerializedProperty
�� *
m_AdditionalCameraClearDepth
�� 7
;
��7 8 
SerializedProperty
�� 4
&m_AdditionalCameraDataAllowXRRendering
�� A
;
��A B
void
��  
SetAnimationTarget
��
(
��  
AnimBool
��  (
anim
��) -
,
��- .
bool
��/ 3

initialize
��4 >
,
��> ?
bool
��@ D
targetValue
��E P
)
��P Q
{
�� 	
if
�� 
(
�� 

initialize
�� 
)
�� 
{
�� 
anim
�� 
.
�� 
value
�� 
=
�� 
targetValue
�� (
;
��( )
anim
�� 
.
�� 
valueChanged
�� !
.
��! "
AddListener
��" -
(
��- .
Repaint
��. 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
anim
�� 
.
�� 
target
�� 
=
�� 
targetValue
�� )
;
��) *
}
�� 
}
�� 	
void
�� #
UpdateAnimationValues
��
(
��" #
bool
��# '

initialize
��( 2
)
��2 3
{
�� 	 
SetAnimationTarget
�� 
(
�� 
m_ShowBGColorAnim
�� 0
,
��0 1

initialize
��2 <
,
��< =
isSameClearFlags
��> N
&&
��O Q
(
��R S
camera
��S Y
.
��Y Z

clearFlags
��Z d
==
��e g
CameraClearFlags
��h x
.
��x y

SolidColor��y �
||��� �
camera��� �
.��� �

clearFlags��� �
==��� � 
CameraClearFlags��� �
.��� �
Skybox��� �
)��� �
)��� �
;��� � 
SetAnimationTarget
�� 
(
�� 
m_ShowOrthoAnim
�� .
,
��. /

initialize
��0 :
,
��: ; 
isSameOrthographic
��< N
&&
��O Q
camera
��R X
.
��X Y
orthographic
��Y e
)
��e f
;
��f g 
SetAnimationTarget
�� 
(
�� !
m_ShowTargetEyeAnim
�� 2
,
��2 3

initialize
��4 >
,
��> ?
settings
��@ H
.
��H I
	targetEye
��I R
.
��R S
intValue
��S [
!=
��\ ^
(
��_ `
int
��` c
)
��c d!
StereoTargetEyeMask
��d w
.
��w x
Both
��x |
)
��| }
;
��} ~
}
�� 	
void
�� *
UpdateCameraTypeIntPopupData
��
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
Styles
�� 
.
�� 
m_CameraTypeNames
�� (
==
��) +
null
��, 0
)
��0 1
{
�� 
Styles
�� 
.
�� 
m_CameraTypeNames
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4

GUIContent
��4 >
>
��> ?
(
��? @
)
��@ A
;
��A B
foreach
�� 
(
�� 
string
�� 
typeName
��  (
in
��) +
Styles
��, 2
.
��2 3
cameraTypeNames
��3 B
)
��B C
{
�� 
Styles
�� 
.
�� 
m_CameraTypeNames
�� ,
.
��, -
Add
��- 0
(
��0 1
new
��1 4

GUIContent
��5 ?
(
��? @
typeName
��@ H
)
��H I
)
��I J
;
��J K
}
�� 
}
�� 
}
�� 	
public
�� 
new
�� 
void
�� 
OnEnable
��  
(
��  !
)
��! "
{
�� 	
base
�� 
.
�� 
OnEnable
�� 
(
�� 
)
�� 
;
�� +
m_CommonCameraSettingsFoldout
�� )
=
��* +
new
��, /
	SavedBool
��0 9
(
��9 :
$"
��: <
{
��< =
target
��= C
.
��C D
GetType
��D K
(
��K L
)
��L M
}
��M N*
.CommonCameraSettingsFoldout
��N j
"
��j k
,
��k l
false
��m r
)
��r s
;
��s t*
m_EnvironmentSettingsFoldout
�� (
=
��) *
new
��+ .
	SavedBool
��/ 8
(
��8 9
$"
��9 ;
{
��; <
target
��< B
.
��B C
GetType
��C J
(
��J K
)
��K L
}
��L M)
.EnvironmentSettingsFoldout
��M h
"
��h i
,
��i j
false
��k p
)
��p q
;
��q r%
m_OutputSettingsFoldout
�� #
=
��$ %
new
��& )
	SavedBool
��* 3
(
��3 4
$"
��4 6
{
��6 7
target
��7 =
.
��= >
GetType
��> E
(
��E F
)
��F G
}
��G H$
.OutputSettingsFoldout
��H ^
"
��^ _
,
��_ `
false
��a f
)
��f g
;
��g h(
m_RenderingSettingsFoldout
�� &
=
��' (
new
��) ,
	SavedBool
��- 6
(
��6 7
$"
��7 9
{
��9 :
target
��: @
.
��@ A
GetType
��A H
(
��H I
)
��I J
}
��J K'
.RenderingSettingsFoldout
��K d
"
��d e
,
��e f
false
��g l
)
��l m
;
��m n$
m_StackSettingsFoldout
�� "
=
��# $
new
��% (
	SavedBool
��) 2
(
��2 3
$"
��3 5
{
��5 6
target
��6 <
.
��< =
GetType
��= D
(
��D E
)
��E F
}
��F G#
.StackSettingsFoldout
��G \
"
��\ ]
,
��] ^
false
��_ d
)
��d e
;
��e f
var
�� "
additionalCameraList
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
Object
��0 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
�� 
cameraTarget
�� %
in
��& (
targets
��) 0
)
��0 1
{
�� 
var
�� 
additionData
��  
=
��! "
(
��# $
cameraTarget
��$ 0
as
��1 3
	Component
��4 =
)
��= >
.
��> ?

gameObject
��? I
.
��I J
GetComponent
��J V
<
��V W+
UniversalAdditionalCameraData
��W t
>
��t u
(
��u v
)
��v w
;
��w x
if
�� 
(
�� 
additionData
�� 
==
��  "
null
��# '
)
��' (
additionData
��  
=
��! "
(
��# $
cameraTarget
��$ 0
as
��1 3
	Component
��4 =
)
��= >
.
��> ?

gameObject
��? I
.
��I J
AddComponent
��J V
<
��V W+
UniversalAdditionalCameraData
��W t
>
��t u
(
��u v
)
��v w
;
��w x%
m_AdditionalCameraDatas
�� '
[
��' (
cameraTarget
��( 4
]
��4 5
=
��6 7
additionData
��8 D
;
��D E"
additionalCameraList
�� $
.
��$ %
Add
��% (
(
��( )
additionData
��) 5
)
��5 6
;
��6 7
}
�� 
m_ErrorIcon
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
Load
��+ /
(
��/ 0
$str
��0 Q
)
��Q R
as
��S U
	Texture2D
��V _
;
��_ `
validCameras
�� 
.
�� 
Clear
�� 
(
�� 
)
��  
;
��  !
errorCameras
�� 
.
�� 
Clear
�� 
(
�� 
)
��  
;
��  !
settings
�� 
.
�� 
OnEnable
�� 
(
�� 
)
�� 
;
��  
init
�� 
(
�� "
additionalCameraList
�� %
)
��% &
;
��& '#
UpdateAnimationValues
�� !
(
��! "
true
��" &
)
��& '
;
��' (*
UpdateCameraTypeIntPopupData
�� (
(
��( )
)
��) *
;
��* +

�� 
(
�� 
)
�� 
;
�� 
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
�� 	
var
�� 
o
�� 
=
�� 
new
�� 
PropertyFetcher
�� '
<
��' (+
UniversalAdditionalCameraData
��( E
>
��E F
(
��F G&
m_AdditionalCameraDataSO
��G _
)
��_ `
;
��` a+
m_AdditionalCameraDataCameras
�� )
=
��* +
o
��, -
.
��- .
Find
��. 2
(
��2 3
$str
��3 >
)
��> ?
;
��? @
var
�� 
camType
�� 
=
�� 
(
�� 
CameraRenderType
�� +
)
��+ ,2
$m_AdditionalCameraDataCameraTypeProp
��, P
.
��P Q
intValue
��Q Y
;
��Y Z
if
�� 
(
�� 
camType
�� 
==
�� 
CameraRenderType
�� +
.
��+ ,
Base
��, 0
)
��0 1
{
�� 
m_LayerList
�� 
=
�� 
new
�� !
ReorderableList
��" 1
(
��1 2&
m_AdditionalCameraDataSO
��2 J
,
��J K+
m_AdditionalCameraDataCameras
��L i
,
��i j
true
��k o
,
��o p
false
��q v
,
��v w
true
��x |
,
��| }
true��~ �
)��� �
;��� �
m_LayerList
�� 
.
�� !
drawElementCallback
�� /
+=
��0 2!
DrawElementCallback
��3 F
;
��F G
m_LayerList
�� 
.
�� 
onSelectCallback
�� ,
+=
��- /

��0 =
;
��= >
m_LayerList
�� 
.
�� 
onRemoveCallback
�� ,
=
��- .
list
��/ 3
=>
��4 6
{
�� +
m_AdditionalCameraDataCameras
�� 1
.
��1 2'
DeleteArrayElementAtIndex
��2 K
(
��K L
list
��L P
.
��P Q
index
��Q V
)
��V W
;
��W X
ReorderableList
�� #
.
��# $
defaultBehaviours
��$ 5
.
��5 6
DoRemoveButton
��6 D
(
��D E
list
��E I
)
��I J
;
��J K&
m_AdditionalCameraDataSO
�� ,
.
��, -%
ApplyModifiedProperties
��- D
(
��D E
)
��E F
;
��F G
}
�� 
;
�� 
m_LayerList
�� 
.
�� #
onAddDropdownCallback
�� 1
=
��2 3
(
��4 5
rect
��5 9
,
��9 :
list
��; ?
)
��? @
=>
��A C#
AddCameraToCameraList
��D Y
(
��Y Z
rect
��Z ^
,
��^ _
list
��` d
)
��d e
;
��e f
}
�� 
}
�� 	
void
�� 

��
(
�� 
ReorderableList
�� *
list
��+ /
)
��/ 0
{
�� 	
var
�� 
element
�� 
=
�� +
m_AdditionalCameraDataCameras
�� 7
.
��7 8$
GetArrayElementAtIndex
��8 N
(
��N O
list
��O S
.
��S T
index
��T Y
)
��Y Z
;
��Z [
var
�� 
cam
�� 
=
�� 
element
�� 
.
�� "
objectReferenceValue
�� 2
as
��3 5
Camera
��6 <
;
��< =
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
�� 

clickCount
�� (
==
��) +
$num
��, -
)
��- .
{
�� 
	Selection
�� 
.
�� 
activeObject
�� &
=
��' (
cam
��) ,
;
��, -
}
�� 
EditorGUIUtility
�� 
.
�� 

PingObject
�� '
(
��' (
cam
��( +
)
��+ ,
;
��, -
}
�� 	
static
�� 

GUIContent
�� 
s_TextImage
�� %
=
��& '
new
��( +

GUIContent
��, 6
(
��6 7
)
��7 8
;
��8 9
static
�� 

GUIContent
�� 
TempContent
�� %
(
��% &
string
��& ,
text
��- 1
,
��1 2
string
��3 9
tooltip
��: A
,
��A B
Texture
��C J
i
��K L
)
��L M
{
�� 	
s_TextImage
�� 
.
�� 
image
�� 
=
�� 
i
��  !
;
��! "
s_TextImage
�� 
.
�� 
text
�� 
=
�� 
text
�� #
;
��# $
s_TextImage
�� 
.
�� 
tooltip
�� 
=
��  !
tooltip
��" )
;
��) *
return
�� 
s_TextImage
�� 
;
�� 
}
�� 	

GUIContent
�� 

��  
=
��! "
new
��# &

GUIContent
��' 1
(
��1 2
)
��2 3
;
��3 4
void
�� !
DrawElementCallback
��
(
��  !
Rect
��! %
rect
��& *
,
��* +
int
��, /
index
��0 5
,
��5 6
bool
��7 ;
isActive
��< D
,
��D E
bool
��F J
	isFocused
��K T
)
��T U
{
�� 	
rect
�� 
.
�� 
height
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
singleLineHeight
��+ ;
;
��; <
rect
�� 
.
�� 
y
�� 
+=
�� 
$num
�� 
;
�� 
var
�� 
element
�� 
=
�� +
m_AdditionalCameraDataCameras
�� 7
.
��7 8$
GetArrayElementAtIndex
��8 N
(
��N O
index
��O T
)
��T U
;
��U V
var
�� 
cam
�� 
=
�� 
element
�� 
.
�� "
objectReferenceValue
�� 2
as
��3 5
Camera
��6 <
;
��< =
if
�� 
(
�� 
cam
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
bool
�� 
warning
�� 
=
�� 
false
�� $
;
��$ %
string
�� 
warningInfo
�� "
=
��# $
$str
��% '
;
��' (
var
�� 
type
�� 
=
�� 
cam
�� 
.
�� 

gameObject
�� )
.
��) *
GetComponent
��* 6
<
��6 7+
UniversalAdditionalCameraData
��7 T
>
��T U
(
��U V
)
��V W
.
��W X

renderType
��X b
;
��b c
if
�� 
(
�� 
!
�� 
validCameraTypes
�� %
.
��% &
Contains
��& .
(
��. /
type
��/ 3
)
��3 4
)
��4 5
{
�� 
warning
�� 
=
�� 
true
�� "
;
��" #
warningInfo
�� 
+=
��  "
$str
��# 9
;
��9 :
if
�� 
(
�� 
!
�� 
errorCameras
�� %
.
��% &
Contains
��& .
(
��. /
cam
��/ 2
)
��2 3
)
��3 4
{
�� 
errorCameras
�� $
.
��$ %
Add
��% (
(
��( )
cam
��) ,
)
��, -
;
��- .
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
errorCameras
�� %
.
��% &
Contains
��& .
(
��. /
cam
��/ 2
)
��2 3
)
��3 4
{
�� 
errorCameras
��  
.
��  !
Remove
��! '
(
��' (
cam
��( +
)
��+ ,
;
��, -
}
�� 
var
�� 

labelWidth
�� 
=
��  
EditorGUIUtility
��! 1
.
��1 2

labelWidth
��2 <
;
��< =
EditorGUIUtility
��  
.
��  !

labelWidth
��! +
-=
��, .
$num
��/ 2
;
��2 3
if
�� 
(
�� 
warning
�� 
)
�� 
{
�� 
GUIStyle
�� 

errorStyle
�� '
=
��( )
new
��* -
GUIStyle
��. 6
(
��6 7
EditorStyles
��7 C
.
��C D
label
��D I
)
��I J
{
��K L
padding
��M T
=
��U V
new
��W Z

RectOffset
��[ e
{
��f g
left
��h l
=
��m n
-
��o p
$num
��p r
}
��s t
}
��u v
;
��v w

�� !
.
��! "
text
��" &
=
��' (
cam
��) ,
.
��, -
name
��- 1
;
��1 2
	EditorGUI
�� 
.
�� 

LabelField
�� (
(
��( )
rect
��) -
,
��- .

��/ <
,
��< =
TempContent
��> I
(
��I J
type
��J N
.
��N O
GetName
��O V
(
��V W
)
��W X
,
��X Y
warningInfo
��Z e
,
��e f
m_ErrorIcon
��g r
)
��r s
,
��s t

errorStyle
��u 
)�� �
;��� �
}
�� 
else
�� 
{
�� 
	EditorGUI
�� 
.
�� 

LabelField
�� (
(
��( )
rect
��) -
,
��- .
cam
��/ 2
.
��2 3
name
��3 7
,
��7 8
type
��9 =
.
��= >
ToString
��> F
(
��F G
)
��G H
)
��H I
;
��I J
var
�� 
isPostActive
�� $
=
��% &
cam
��' *
.
��* +

gameObject
��+ 5
.
��5 6
GetComponent
��6 B
<
��B C+
UniversalAdditionalCameraData
��C `
>
��` a
(
��a b
)
��b c
.
��c d"
renderPostProcessing
��d x
;
��x y
if
�� 
(
�� 
isPostActive
�� $
)
��$ %
{
�� 
Rect
�� 

selectRect
�� '
=
��( )
new
��* -
Rect
��. 2
(
��2 3
rect
��3 7
.
��7 8
width
��8 =
-
��> ?
$num
��@ B
,
��B C
rect
��D H
.
��H I
y
��I J
,
��J K
$num
��L N
,
��N O
EditorGUIUtility
��P `
.
��` a
singleLineHeight
��a q
)
��q r
;
��r s
	EditorGUI
�� !
.
��! "

LabelField
��" ,
(
��, -

selectRect
��- 7
,
��7 8
$str
��9 =
)
��= >
;
��> ?
}
�� 
}
�� 
EditorGUIUtility
��  
.
��  !

labelWidth
��! +
=
��, -

labelWidth
��. 8
;
��8 9
}
�� 
else
�� 
{
�� 
camera
�� 
.
�� 
GetComponent
�� #
<
��# $+
UniversalAdditionalCameraData
��$ A
>
��A B
(
��B C
)
��C D
.
��D E
UpdateCameraStack
��E V
(
��V W
)
��W X
;
��X Y
errorCameras
�� 
.
�� 
Clear
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
�� 	
Camera
�� 
[
�� 
]
�� $
FindCamerasToReference
�� '
(
��' (

GameObject
��( 2

gameObject
��3 =
)
��= >
{
�� 	
var
�� 
scene
�� 
=
�� 

gameObject
�� "
.
��" #
scene
��# (
;
��( )
var
�� 
inScene
�� 
=
�� 
!
�� 

�� (
.
��( )
IsPersistent
��) 5
(
��5 6
camera
��6 <
)
��< =
||
��> @
scene
��A F
.
��F G
IsValid
��G N
(
��N O
)
��O P
;
��P Q
var
�� 
inPreviewScene
�� 
=
��   
EditorSceneManager
��! 3
.
��3 4
IsPreviewScene
��4 B
(
��B C
scene
��C H
)
��H I
&&
��J L
scene
��M R
.
��R S
IsValid
��S Z
(
��Z [
)
��[ \
;
��\ ]
var
�� 
inCurrentScene
�� 
=
��  
!
��! "

��" /
.
��/ 0
IsPersistent
��0 <
(
��< =
camera
��= C
)
��C D
&&
��E G
scene
��H M
.
��M N
IsValid
��N U
(
��U V
)
��V W
;
��W X
Camera
�� 
[
�� 
]
�� 
cameras
�� 
=
�� 
	Resources
�� (
.
��( )"
FindObjectsOfTypeAll
��) =
<
��= >
Camera
��> D
>
��D E
(
��E F
)
��F G
;
��G H
List
�� 
<
�� 
Camera
�� 
>
�� 
result
�� 
=
��  !
new
��" %
List
��& *
<
��* +
Camera
��+ 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� 
inScene
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
camera
�� #
in
��$ &
cameras
��' .
)
��. /
{
�� 
if
�� 
(
�� 
camera
�� 
.
�� 
	transform
�� (
.
��( )
	IsChildOf
��) 2
(
��2 3

gameObject
��3 =
.
��= >
	transform
��> G
)
��G H
)
��H I
result
�� 
.
�� 
Add
�� "
(
��" #
camera
��# )
)
��) *
;
��* +
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
inPreviewScene
�� #
)
��# $
{
�� 
foreach
�� 
(
�� 
var
�� 
camera
�� #
in
��$ &
cameras
��' .
)
��. /
{
�� 
if
�� 
(
�� 
camera
�� 
.
�� 

gameObject
�� )
.
��) *
scene
��* /
==
��0 2
scene
��3 8
)
��8 9
result
�� 
.
�� 
Add
�� "
(
��" #
camera
��# )
)
��) *
;
��* +
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
inCurrentScene
�� #
)
��# $
{
�� 
foreach
�� 
(
�� 
var
�� 
camera
�� #
in
��$ &
cameras
��' .
)
��. /
{
�� 
if
�� 
(
�� 
!
�� 

�� &
.
��& '
IsPersistent
��' 3
(
��3 4
camera
��4 :
)
��: ;
&&
��< >
!
��? @ 
EditorSceneManager
��@ R
.
��R S
IsPreviewScene
��S a
(
��a b
camera
��b h
.
��h i

gameObject
��i s
.
��s t
scene
��t y
)
��y z
&&
��{ }
camera��~ �
.��� �

gameObject��� �
.��� �
scene��� �
==��� �
scene��� �
)��� �
result
�� 
.
�� 
Add
�� "
(
��" #
camera
��# )
)
��) *
;
��* +
}
�� 
}
�� 
return
�� 
result
�� 
.
�� 
ToArray
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
void
�� #
AddCameraToCameraList
��
(
��" #
Rect
��# '
rect
��( ,
,
��, -
ReorderableList
��. =
list
��> B
)
��B C
{
�� 	
validCameras
�� 
.
�� 
Clear
�� 
(
�� 
)
��  
;
��  !
var
�� 

allCameras
�� 
=
�� $
FindCamerasToReference
�� 3
(
��3 4
camera
��4 :
.
��: ;

gameObject
��; E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
camera
�� 
in
��  "

allCameras
��# -
)
��- .
{
�� 
var
�� 
	component
�� 
=
�� 
camera
��  &
.
��& '

gameObject
��' 1
.
��1 2
GetComponent
��2 >
<
��> ?+
UniversalAdditionalCameraData
��? \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
	component
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
�� 
validCameraTypes
�� (
.
��( )
Contains
��) 1
(
��1 2
	component
��2 ;
.
��; <

renderType
��< F
)
��F G
)
��G H
{
�� 
validCameras
�� $
.
��$ %
Add
��% (
(
��( )
camera
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
var
�� 
names
�� 
=
�� 
new
�� 

GUIContent
�� &
[
��& '
validCameras
��' 3
.
��3 4
Count
��4 9
]
��9 :
;
��: ;
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
�� 
validCameras
��  ,
.
��, -
Count
��- 2
;
��2 3
++
��4 6
i
��6 7
)
��7 8
{
�� 
names
�� 
[
�� 
i
�� 
]
�� 
=
�� 
new
�� 

GUIContent
�� )
(
��) *
(
��* +
i
��+ ,
+
��, -
$num
��- .
)
��. /
+
��0 1
$str
��2 5
+
��6 7
validCameras
��8 D
[
��D E
i
��E F
]
��F G
.
��G H
name
��H L
)
��L M
;
��M N
}
�� 
if
�� 
(
�� 
!
�� 
validCameras
�� 
.
�� 
Any
�� !
(
��! "
)
��" #
)
��# $
{
�� 
names
�� 
=
�� 
new
�� 

GUIContent
�� &
[
��& '
$num
��' (
]
��( )
;
��) *
names
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� 

GUIContent
�� )
(
��) *
$str
��* E
)
��E F
;
��F G
}
�� 

�� 
.
�� 
DisplayCustomMenu
�� +
(
��+ ,
rect
��, 0
,
��0 1
names
��2 7
,
��7 8
-
��9 :
$num
��: ;
,
��; </
!AddCameraToCameraListMenuSelected
��= ^
,
��^ _
null
��` d
)
��d e
;
��e f
}
�� 	
void
�� /
!AddCameraToCameraListMenuSelected
��
(
��. /
object
��/ 5
userData
��6 >
,
��> ?
string
��@ F
[
��F G
]
��G H
options
��I P
,
��P Q
int
��R U
selected
��V ^
)
��^ _
{
�� 	
if
�� 
(
�� 
!
�� 
validCameras
�� 
.
�� 
Any
��  
(
��  !
)
��! "
)
��" #
return
�� 
;
�� 
var
�� 
length
�� 
=
�� +
m_AdditionalCameraDataCameras
�� 6
.
��6 7
	arraySize
��7 @
;
��@ A
++
�� +
m_AdditionalCameraDataCameras
�� +
.
��+ ,
	arraySize
��, 5
;
��5 6+
m_AdditionalCameraDataCameras
�� )
.
��) *
serializedObject
��* :
.
��: ;%
ApplyModifiedProperties
��; R
(
��R S
)
��S T
;
��T U+
m_AdditionalCameraDataCameras
�� )
.
��) *$
GetArrayElementAtIndex
��* @
(
��@ A
length
��A G
)
��G H
.
��H I"
objectReferenceValue
��I ]
=
��^ _
validCameras
��` l
[
��l m
selected
��m u
]
��u v
;
��v w+
m_AdditionalCameraDataCameras
�� )
.
��) *
serializedObject
��* :
.
��: ;%
ApplyModifiedProperties
��; R
(
��R S
)
��S T
;
��T U
}
�� 	
void
�� 
init
��
(
�� 
List
�� 
<
�� 
Object
�� 
>
�� "
additionalCameraData
�� 3
)
��3 4
{
�� 	
if
�� 
(
�� "
additionalCameraData
�� #
==
��$ &
null
��' +
)
��+ ,
return
�� 
;
�� &
m_AdditionalCameraDataSO
�� $
=
��% &
new
��' *
SerializedObject
��+ ;
(
��; <"
additionalCameraData
��< P
.
��P Q
ToArray
��Q X
(
��X Y
)
��Y Z
)
��Z [
;
��[ \5
'm_AdditionalCameraDataRenderShadowsProp
�� 3
=
��4 5&
m_AdditionalCameraDataSO
��6 N
.
��N O
FindProperty
��O [
(
��[ \
$str
��\ m
)
��m n
;
��n o3
%m_AdditionalCameraDataRenderDepthProp
�� 1
=
��2 3&
m_AdditionalCameraDataSO
��4 L
.
��L M
FindProperty
��M Y
(
��Y Z
$str
��Z x
)
��x y
;
��y z4
&m_AdditionalCameraDataRenderOpaqueProp
�� 2
=
��3 4&
m_AdditionalCameraDataSO
��5 M
.
��M N
FindProperty
��N Z
(
��Z [
$str
��[ z
)
��z {
;
��{ |0
"m_AdditionalCameraDataRendererProp
�� .
=
��/ 0&
m_AdditionalCameraDataSO
��1 I
.
��I J
FindProperty
��J V
(
��V W
$str
��W h
)
��h i
;
��i j3
%m_AdditionalCameraDataVolumeLayerMask
�� 1
=
��2 3&
m_AdditionalCameraDataSO
��4 L
.
��L M
FindProperty
��M Y
(
��Y Z
$str
��Z m
)
��m n
;
��n o1
#m_AdditionalCameraDataVolumeTrigger
�� /
=
��0 1&
m_AdditionalCameraDataSO
��2 J
.
��J K
FindProperty
��K W
(
��W X
$str
��X i
)
��i j
;
��j k8
*m_AdditionalCameraDataRenderPostProcessing
�� 6
=
��7 8&
m_AdditionalCameraDataSO
��9 Q
.
��Q R
FindProperty
��R ^
(
��^ _
$str
��_ w
)
��w x
;
��x y0
"m_AdditionalCameraDataAntialiasing
�� .
=
��/ 0&
m_AdditionalCameraDataSO
��1 I
.
��I J
FindProperty
��J V
(
��V W
$str
��W g
)
��g h
;
��h i7
)m_AdditionalCameraDataAntialiasingQuality
�� 5
=
��6 7&
m_AdditionalCameraDataSO
��8 P
.
��P Q
FindProperty
��Q ]
(
��] ^
$str
��^ u
)
��u v
;
��v w+
m_AdditionalCameraDataStopNaN
�� )
=
��* +&
m_AdditionalCameraDataSO
��, D
.
��D E
FindProperty
��E Q
(
��Q R
$str
��R ]
)
��] ^
;
��^ _-
m_AdditionalCameraDataDithering
�� +
=
��, -&
m_AdditionalCameraDataSO
��. F
.
��F G
FindProperty
��G S
(
��S T
$str
��T a
)
��a b
;
��b c*
m_AdditionalCameraClearDepth
�� (
=
��) *&
m_AdditionalCameraDataSO
��+ C
.
��C D
FindProperty
��D P
(
��P Q
$str
��Q _
)
��_ `
;
��` a2
$m_AdditionalCameraDataCameraTypeProp
�� 0
=
��1 2&
m_AdditionalCameraDataSO
��3 K
.
��K L
FindProperty
��L X
(
��X Y
$str
��Y g
)
��g h
;
��h i+
m_AdditionalCameraDataCameras
�� )
=
��* +&
m_AdditionalCameraDataSO
��, D
.
��D E
FindProperty
��E Q
(
��Q R
$str
��R ]
)
��] ^
;
��^ _4
&m_AdditionalCameraDataAllowXRRendering
�� 2
=
��3 4&
m_AdditionalCameraDataSO
��5 M
.
��M N
FindProperty
��N Z
(
��Z [
$str
��[ o
)
��o p
;
��p q
}
�� 	
public
�� 
new
�� 
void
�� 
	OnDisable
�� !
(
��! "
)
��" #
{
�� 	
base
�� 
.
�� 
	OnDisable
�� 
(
�� 
)
�� 
;
�� 
m_ShowBGColorAnim
�� 
.
�� 
valueChanged
�� *
.
��* +
RemoveListener
��+ 9
(
��9 :
Repaint
��: A
)
��A B
;
��B C
m_ShowOrthoAnim
�� 
.
�� 
valueChanged
�� (
.
��( )
RemoveListener
��) 7
(
��7 8
Repaint
��8 ?
)
��? @
;
��@ A!
m_ShowTargetEyeAnim
�� 
.
��  
valueChanged
��  ,
.
��, -
RemoveListener
��- ;
(
��; <
Repaint
��< C
)
��C D
;
��D E
}
�� 	
BackgroundType
�� 
GetBackgroundType
�� (
(
��( )
CameraClearFlags
��) 9

clearFlags
��: D
)
��D E
{
�� 	
switch
�� 
(
�� 

clearFlags
�� 
)
�� 
{
�� 
case
�� 
CameraClearFlags
�� %
.
��% &
Skybox
��& ,
:
��, -
return
�� 
BackgroundType
�� )
.
��) *
Skybox
��* 0
;
��0 1
case
�� 
CameraClearFlags
�� %
.
��% &
Nothing
��& -
:
��- .
return
�� 
BackgroundType
�� )
.
��) *
DontCare
��* 2
;
��2 3
default
�� 
:
�� 
return
�� 
BackgroundType
�� )
.
��) *

SolidColor
��* 4
;
��4 5
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
�� 	
var
�� 
rpAsset
�� 
=
�� %
UniversalRenderPipeline
�� 1
.
��1 2
asset
��2 7
;
��7 8
if
�� 
(
�� 
rpAsset
�� 
==
�� 
null
�� 
)
�� 
{
�� 
base
�� 
.
�� 
OnInspectorGUI
�� #
(
��# $
)
��$ %
;
��% &
return
�� 
;
�� 
}
�� 
settings
�� 
.
�� 
Update
�� 
(
�� 
)
�� 
;
�� &
m_AdditionalCameraDataSO
�� $
.
��$ %
Update
��% +
(
��+ ,
)
��, -
;
��- .#
UpdateAnimationValues
�� !
(
��! "
false
��" '
)
��' (
;
��( )
CameraRenderType
�� 
camType
�� $
=
��% &
(
��' (
CameraRenderType
��( 8
)
��8 92
$m_AdditionalCameraDataCameraTypeProp
��9 ]
.
��] ^
intValue
��^ f
;
��f g
DrawCameraType
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 2
$m_AdditionalCameraDataCameraTypeProp
�� 4
.
��4 5(
hasMultipleDifferentValues
��5 O
)
��O P
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
$str
��( W
,
��W X
MessageType
��Y d
.
��d e
Info
��e i
)
��i j
;
��j k
return
�� 
;
�� 
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $ 
DrawCommonSettings
�� 
(
�� 
)
��  
;
��  !#
DrawRenderingSettings
�� !
(
��! "
camType
��" )
,
��) *
rpAsset
��+ 2
)
��2 3
;
��3 4%
DrawEnvironmentSettings
�� #
(
��# $
camType
��$ +
)
��+ ,
;
��, -
if
�� 
(
�� 
camType
�� 
==
�� 
CameraRenderType
�� +
.
��+ ,
Base
��, 0
)
��0 1
{
�� 
DrawOutputSettings
�� "
(
��" #
rpAsset
��# *
)
��* +
;
��+ ,
DrawStackSettings
�� !
(
��! "
)
��" #
;
��# $
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
settings
��	 
.
�� %
ApplyModifiedProperties
�� )
(
��) *
)
��* +
;
��+ ,&
m_AdditionalCameraDataSO
�� $
.
��$ %%
ApplyModifiedProperties
��% <
(
��< =
)
��= >
;
��> ?
}
�� 	
void
��  
DrawCommonSettings
��
(
��  
)
��  !
{
�� 	+
m_CommonCameraSettingsFoldout
�� )
.
��) *
value
��* /
=
��0 1
EditorGUILayout
��2 A
.
��A B%
BeginFoldoutHeaderGroup
��B Y
(
��Y Z+
m_CommonCameraSettingsFoldout
��Z w
.
��w x
value
��x }
,
��} ~
Styles�� �
.��� �(
commonCameraSettingsText��� �
)��� �
;��� �
if
�� 
(
�� +
m_CommonCameraSettingsFoldout
�� -
.
��- .
value
��. 3
)
��3 4
{
�� 
settings
�� 
.
�� 
DrawProjection
�� '
(
��' (
)
��( )
;
��) *
settings
�� 
.
��  
DrawClippingPlanes
�� +
(
��+ ,
)
��, -
;
��- .
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
��' (
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
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� 
DrawStackSettings
��
(
�� 
)
��  
{
�� 	$
m_StackSettingsFoldout
�� "
.
��" #
value
��# (
=
��) *
EditorGUILayout
��+ :
.
��: ;%
BeginFoldoutHeaderGroup
��; R
(
��R S$
m_StackSettingsFoldout
��S i
.
��i j
value
��j o
,
��o p
Styles
��q w
.
��w x 
stackSettingsText��x �
)��� �
;��� �
if
�� 
(
�� +
m_AdditionalCameraDataCameras
�� -
.
��- .(
hasMultipleDifferentValues
��. H
)
��H I
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
$str
��( V
,
��V W
MessageType
��X c
.
��c d
Info
��d h
)
��h i
;
��i j
EditorGUILayout
�� 
.
��  #
EndFoldoutHeaderGroup
��  5
(
��5 6
)
��6 7
;
��7 8
return
�� 
;
�� 
}
�� 
ScriptableRenderer
�� 
.
�� 
RenderingFeatures
�� 0(
supportedRenderingFeatures
��1 K
=
��L M%
m_AdditionalCameraDatas
��N e
[
��e f
target
��f l
]
��l m
?
��m n
.
��n o!
scriptableRenderer��o �
?��� �
.��� �*
supportedRenderingFeatures��� �
;��� �
if
�� 
(
�� (
supportedRenderingFeatures
�� *
!=
��+ -
null
��. 2
&&
��3 5(
supportedRenderingFeatures
��6 P
.
��P Q
cameraStacking
��Q _
==
��` b
false
��c h
)
��h i
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
$str��( �
,��� �
MessageType��� �
.��� �
Warning��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
if
�� 
(
�� $
m_StackSettingsFoldout
�� &
.
��& '
value
��' ,
)
��, -
{
�� 
m_LayerList
�� 
.
�� 
DoLayoutList
�� (
(
��( )
)
��) *
;
��* +&
m_AdditionalCameraDataSO
�� (
.
��( )%
ApplyModifiedProperties
��) @
(
��@ A
)
��A B
;
��B C
if
�� 
(
�� 
errorCameras
��  
.
��  !
Any
��! $
(
��$ %
)
��% &
)
��& '
{
�� 
string
�� 
errorString
�� &
=
��' (
$str
��) S
;
��S T
string
�� 
validCameras
�� '
=
��( )
$str
��* ,
;
��, -
foreach
�� 
(
�� 
var
��  
errorCamera
��! ,
in
��- /
errorCameras
��0 <
)
��< =
{
�� 
errorString
�� #
+=
��$ &
errorCamera
��' 2
.
��2 3
name
��3 7
+
��8 9
$str
��: >
;
��> ?
}
�� 
foreach
�� 
(
�� 
var
��  
validCameraType
��! 0
in
��1 3
validCameraTypes
��4 D
)
��D E
{
�� 
validCameras
�� $
+=
��% '
validCameraType
��( 7
+
��8 9
$str
��: >
;
��> ?
}
�� 
errorString
�� 
+=
��  "
$str
��# 5
+
��6 7
validCameras
��8 D
;
��D E
EditorGUILayout
�� #
.
��# $
HelpBox
��$ +
(
��+ ,
errorString
��, 7
,
��7 8
MessageType
��9 D
.
��D E
Warning
��E L
)
��L M
;
��M N
}
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� %
DrawEnvironmentSettings
��
(
��$ %
CameraRenderType
��% 5
camType
��6 =
)
��= >
{
�� 	*
m_EnvironmentSettingsFoldout
�� (
.
��( )
value
��) .
=
��/ 0
EditorGUILayout
��1 @
.
��@ A%
BeginFoldoutHeaderGroup
��A X
(
��X Y*
m_EnvironmentSettingsFoldout
��Y u
.
��u v
value
��v {
,
��{ |
Styles��} �
.��� �'
environmentSettingsText��� �
)��� �
;��� �
if
�� 
(
�� *
m_EnvironmentSettingsFoldout
�� ,
.
��, -
value
��- 2
)
��2 3
{
�� 
if
�� 
(
�� 
camType
�� 
==
�� 
CameraRenderType
�� /
.
��/ 0
Base
��0 4
)
��4 5
{
�� 
DrawClearFlags
�� "
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 
!
�� 
settings
�� !
.
��! "

clearFlags
��" ,
.
��, -(
hasMultipleDifferentValues
��- G
)
��G H
{
�� 
if
�� 
(
�� 
GetBackgroundType
�� -
(
��- .
(
��. /
CameraClearFlags
��/ ?
)
��? @
settings
��@ H
.
��H I

clearFlags
��I S
.
��S T
intValue
��T \
)
��\ ]
==
��^ `
BackgroundType
��a o
.
��o p

SolidColor
��p z
)
��z {
{
�� 
using
�� !
(
��" #
var
��# &
group
��' ,
=
��- .
new
��/ 2
EditorGUILayout
��3 B
.
��B C
FadeGroupScope
��C Q
(
��Q R
m_ShowBGColorAnim
��R c
.
��c d
faded
��d i
)
��i j
)
��j k
{
�� 
if
��  "
(
��# $
group
��$ )
.
��) *
visible
��* 1
)
��1 2
{
��  !
settings
��$ ,
.
��, -!
DrawBackgroundColor
��- @
(
��@ A
)
��A B
;
��B C
}
��  !
}
�� 
}
�� 
}
�� 
}
�� 
DrawVolumes
�� 
(
�� 
)
�� 
;
�� 
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� #
DrawRenderingSettings
��
(
��" #
CameraRenderType
��# 3
camType
��4 ;
,
��; <*
UniversalRenderPipelineAsset
��= Y
rpAsset
��Z a
)
��a b
{
�� 	(
m_RenderingSettingsFoldout
�� &
.
��& '
value
��' ,
=
��- .
EditorGUILayout
��/ >
.
��> ?%
BeginFoldoutHeaderGroup
��? V
(
��V W(
m_RenderingSettingsFoldout
��W q
.
��q r
value
��r w
,
��w x
Styles
��y 
.�� �%
renderingSettingsText��� �
)��� �
;��� �
if
�� 
(
�� (
m_RenderingSettingsFoldout
�� *
.
��* +
value
��+ 0
)
��0 1
{
�� 
DrawRenderer
�� 
(
�� 
rpAsset
�� $
)
��$ %
;
��% &
if
�� 
(
�� 
camType
�� 
==
�� 
CameraRenderType
�� /
.
��/ 0
Base
��0 4
)
��4 5
{
��  
DrawPostProcessing
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
if
�� 
(
�� 
camType
��  
==
��! #
CameraRenderType
��$ 4
.
��4 5
Overlay
��5 <
)
��< =
{
�� '
DrawPostProcessingOverlay
�� -
(
��- .
)
��. /
;
��/ 0
EditorGUILayout
�� #
.
��# $

��$ 1
(
��1 2*
m_AdditionalCameraClearDepth
��2 N
,
��N O
Styles
��P V
.
��V W

clearDepth
��W a
)
��a b
;
��b c&
m_AdditionalCameraDataSO
�� ,
.
��, -%
ApplyModifiedProperties
��- D
(
��D E
)
��E F
;
��F G
}
�� 
DrawRenderShadows
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
camType
�� 
==
�� 
CameraRenderType
�� /
.
��/ 0
Base
��0 4
)
��4 5
{
�� 
DrawPriority
��  
(
��  !
)
��! "
;
��" #
DrawOpaqueTexture
�� %
(
��% &
)
��& '
;
��' (
DrawDepthTexture
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
settings
�� 
.
�� 
DrawCullingMask
�� (
(
��( )
)
��) *
;
��* +
settings
�� 
.
�� "
DrawOcclusionCulling
�� -
(
��- .
)
��. /
;
��/ 0
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� '
DrawPostProcessingOverlay
��
(
��& '
)
��' (
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *8
*m_AdditionalCameraDataRenderPostProcessing
��* T
,
��T U
Styles
��V \
.
��\ ]"
renderPostProcessing
��] q
)
��q r
;
��r s
}
�� 	
void
��  
DrawOutputSettings
��
(
��  *
UniversalRenderPipelineAsset
��  <
rpAsset
��= D
)
��D E
{
�� 	%
m_OutputSettingsFoldout
�� #
.
��# $
value
��$ )
=
��* +
EditorGUILayout
��, ;
.
��; <%
BeginFoldoutHeaderGroup
��< S
(
��S T%
m_OutputSettingsFoldout
��T k
.
��k l
value
��l q
,
��q r
Styles
��s y
.
��y z!
outputSettingsText��z �
)��� �
;��� �
if
�� 
(
�� %
m_OutputSettingsFoldout
�� '
.
��' (
value
��( -
)
��- .
{
�� 
DrawTargetTexture
�� !
(
��! "
rpAsset
��" )
)
��) *
;
��* +
if
�� 
(
�� 
camera
�� 
.
�� 

�� (
==
��) +
null
��, 0
)
��0 1
{
�� 
DrawHDR
�� 
(
�� 
)
�� 
;
�� 
DrawMSAA
�� 
(
�� 
)
�� 
;
�� 
settings
�� 
.
�� $
DrawNormalizedViewPort
�� 3
(
��3 4
)
��4 5
;
��5 6
settings
�� 
.
�� #
DrawDynamicResolution
�� 2
(
��2 3
)
��3 4
;
��4 5
settings
�� 
.
�� 
DrawMultiDisplay
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
else
�� 
{
�� 
settings
�� 
.
�� $
DrawNormalizedViewPort
�� 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
DrawXRRendering
�� 
(
��  
)
��  !
;
��! "
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
EditorGUILayout
�� 
.
��  
Space
��  %
(
��% &
)
��& '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� 
DrawCameraType
��
(
�� 
)
�� 
{
�� 	
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
EditorGUILayout
�� 
.
�� 

�� )
(
��) *2
$m_AdditionalCameraDataCameraTypeProp
��* N
,
��N O
Styles
��P V
.
��V W

cameraType
��W a
)
��a b
;
��b c
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 

�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
void
�� 
DrawClearFlags
��
(
�� 
)
�� 
{
�� 	
BackgroundType
�� 
backgroundType
�� )
=
��* +
GetBackgroundType
��, =
(
��= >
(
��> ?
CameraClearFlags
��? O
)
��O P
settings
��Q Y
.
��Y Z

clearFlags
��Z d
.
��d e
intValue
��e m
)
��m n
;
��n o
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
settings
��' /
.
��/ 0

clearFlags
��0 :
.
��: ;(
hasMultipleDifferentValues
��; U
;
��U V
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
Rect
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� .
.
��. /
GetControlRect
��/ =
(
��= >
true
��> B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
Styles
��1 7
.
��7 8
backgroundType
��8 F
,
��F G
settings
��H P
.
��P Q

clearFlags
��Q [
)
��[ \
;
��\ ]
BackgroundType
�� 
selectedType
�� '
=
��( )
(
��* +
BackgroundType
��+ 9
)
��9 :
	EditorGUI
��: C
.
��C D
IntPopup
��D L
(
��L M
controlRect
��M X
,
��X Y
Styles
��Z `
.
��` a
backgroundType
��a o
,
��o p
(
��q r
int
��r u
)
��u v
backgroundType��v �
,��� �
Styles
�� 
.
�� "
cameraBackgroundType
�� +
,
��+ ,
Styles
��- 3
.
��3 4$
cameraBackgroundValues
��4 J
)
��J K
;
��K L
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
CameraClearFlags
��   
selectedClearFlags
��! 3
;
��3 4
switch
�� 
(
�� 
selectedType
�� $
)
��$ %
{
�� 
case
�� 
BackgroundType
�� '
.
��' (
Skybox
��( .
:
��. / 
selectedClearFlags
�� *
=
��+ ,
CameraClearFlags
��- =
.
��= >
Skybox
��> D
;
��D E
break
�� 
;
�� 
case
�� 
BackgroundType
�� '
.
��' (
DontCare
��( 0
:
��0 1 
selectedClearFlags
�� *
=
��+ ,
CameraClearFlags
��- =
.
��= >
Nothing
��> E
;
��E F
break
�� 
;
�� 
default
�� 
:
��  
selectedClearFlags
�� *
=
��+ ,
CameraClearFlags
��- =
.
��= >

SolidColor
��> H
;
��H I
break
�� 
;
�� 
}
�� 
settings
�� 
.
�� 

clearFlags
�� #
.
��# $
intValue
��$ ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4 
selectedClearFlags
��5 G
;
��G H
}
�� 
}
�� 	
void
�� 
DrawPriority
��
(
�� 
)
�� 
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *
settings
��* 2
.
��2 3
depth
��3 8
,
��8 9
Styles
��: @
.
��@ A
priority
��A I
)
��I J
;
��J K
}
�� 	
void
�� 
DrawHDR
��
(
�� 
)
�� 
{
�� 	
Rect
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� .
.
��. /
GetControlRect
��/ =
(
��= >
true
��> B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
Styles
��1 7
.
��7 8
allowHDR
��8 @
,
��@ A
settings
��B J
.
��J K
HDR
��K N
)
��N O
;
��O P
int
�� 

�� 
=
�� 
!
��  !
settings
��! )
.
��) *
HDR
��* -
.
��- .
	boolValue
��. 7
?
��8 9
$num
��: ;
:
��< =
$num
��> ?
;
��? @
settings
�� 
.
�� 
HDR
�� 
.
�� 
	boolValue
�� "
=
��# $
	EditorGUI
��% .
.
��. /
IntPopup
��/ 7
(
��7 8
controlRect
��8 C
,
��C D
Styles
��E K
.
��K L
allowHDR
��L T
,
��T U

��V c
,
��c d
Styles
��e k
.
��k l%
displayedCameraOptions��l �
,��� �
Styles��� �
.��� �

)��� �
==��� �
$num��� �
;��� �
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
void
�� 
DrawMSAA
��
(
�� 
)
�� 
{
�� 	
Rect
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� .
.
��. /
GetControlRect
��/ =
(
��= >
true
��> B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
Styles
��1 7
.
��7 8
	allowMSAA
��8 A
,
��A B
settings
��C K
.
��K L
	allowMSAA
��L U
)
��U V
;
��V W
int
�� 

�� 
=
�� 
!
��  !
settings
��! )
.
��) *
	allowMSAA
��* 3
.
��3 4
	boolValue
��4 =
?
��> ?
$num
��@ A
:
��B C
$num
��D E
;
��E F
settings
�� 
.
�� 
	allowMSAA
�� 
.
�� 
	boolValue
�� (
=
��) *
	EditorGUI
��+ 4
.
��4 5
IntPopup
��5 =
(
��= >
controlRect
��> I
,
��I J
Styles
��K Q
.
��Q R
	allowMSAA
��R [
,
��[ \

��] j
,
��j k
Styles
��l r
.
��r s%
displayedCameraOptions��s �
,��� �
Styles��� �
.��� �

)��� �
==��� �
$num��� �
;��� �
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
void
�� 
DrawXRRendering
��
(
�� 
)
�� 
{
�� 	
Rect
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� .
.
��. /
GetControlRect
��/ =
(
��= >
true
��> B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
Styles
��1 7
.
��7 8
xrTargetEye
��8 C
,
��C D4
&m_AdditionalCameraDataAllowXRRendering
��E k
)
��k l
;
��l m
int
�� 

�� 
=
�� 
!
��  !4
&m_AdditionalCameraDataAllowXRRendering
��! G
.
��G H
	boolValue
��H Q
?
��R S
$num
��T U
:
��V W
$num
��X Y
;
��Y Z4
&m_AdditionalCameraDataAllowXRRendering
�� 2
.
��2 3
	boolValue
��3 <
=
��= >
	EditorGUI
��? H
.
��H I
IntPopup
��I Q
(
��Q R
controlRect
��R ]
,
��] ^
Styles
��_ e
.
��e f
xrTargetEye
��f q
,
��q r

,��� �
Styles��� �
.��� �"
xrTargetEyeOptions��� �
,��� �
Styles��� �
.��� �!
xrTargetEyeValues��� �
)��� �
==��� �
$num��� �
;��� �
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
void
�� 
DrawTargetTexture
��
(
�� *
UniversalRenderPipelineAsset
�� ;
rpAsset
��< C
)
��C D
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *
settings
��* 2
.
��2 3

��3 @
,
��@ A
Styles
��B H
.
��H I 
targetTextureLabel
��I [
)
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� 
settings
�� 
.
�� 

�� '
.
��' ((
hasMultipleDifferentValues
��( B
&&
��C E
rpAsset
��F M
!=
��N P
null
��Q U
)
��U V
{
�� 
var
�� 
texture
�� 
=
�� 
settings
�� &
.
��& '

��' 4
.
��4 5"
objectReferenceValue
��5 I
as
��J L

��M Z
;
��Z [
int
�� "
pipelineSamplesCount
�� (
=
��) *
rpAsset
��+ 2
.
��2 3
msaaSampleCount
��3 B
;
��B C
if
�� 
(
�� 
texture
�� 
&&
�� 
texture
�� &
.
��& '
antiAliasing
��' 3
>
��4 5"
pipelineSamplesCount
��6 J
)
��J K
{
�� 
string
�� 
pipelineMSAACaps
�� +
=
��, -
(
��. /"
pipelineSamplesCount
��/ C
>
��D E
$num
��F G
)
��G H
?
�� 
String
��  
.
��  !
Format
��! '
(
��' (
$str
��( @
,
��@ A"
pipelineSamplesCount
��B V
)
��V W
:
�� 
$str
�� -
;
��- .
EditorGUILayout
�� #
.
��# $
HelpBox
��$ +
(
��+ ,
String
��, 2
.
��2 3
Format
��3 9
(
��9 :
$str
��: }
,
��} ~
texture�� �
.��� �
antiAliasing��� �
,��� � 
pipelineMSAACaps��� �
)��� �
,��� �
MessageType
�� #
.
��# $
Warning
��$ +
,
��+ ,
true
��- 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
void
�� 
DrawVolumes
��
(
�� 
)
�� 
{
�� 	
bool
�� 

hasChanged
�� 
=
�� 
false
�� #
;
��# $
	LayerMask
�� %
selectedVolumeLayerMask
�� -
;
��- .
	Transform
�� #
selectedVolumeTrigger
�� +
;
��+ ,
if
�� 
(
�� &
m_AdditionalCameraDataSO
�� (
==
��) +
null
��, 0
)
��0 1
{
�� 
selectedVolumeLayerMask
�� '
=
��( )
$num
��* +
;
��+ ,#
selectedVolumeTrigger
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
else
�� 
{
�� 
selectedVolumeLayerMask
�� '
=
��( )3
%m_AdditionalCameraDataVolumeLayerMask
��* O
.
��O P
intValue
��P X
;
��X Y#
selectedVolumeTrigger
�� %
=
��& '
(
��( )
	Transform
��) 2
)
��2 31
#m_AdditionalCameraDataVolumeTrigger
��3 V
.
��V W"
objectReferenceValue
��W k
;
��k l
}
�� 

hasChanged
�� 
|=
�� 

�� '
(
��' (3
%m_AdditionalCameraDataVolumeLayerMask
��( M
,
��M N
ref
��O R%
selectedVolumeLayerMask
��S j
,
��j k
Styles
��l r
.
��r s
volumeLayerMask��s �
)��� �
;��� �

hasChanged
�� 
|=
�� 
DrawObjectField
�� )
(
��) *1
#m_AdditionalCameraDataVolumeTrigger
��* M
,
��M N
ref
��O R#
selectedVolumeTrigger
��S h
,
��h i
Styles
��j p
.
��p q

��q ~
)
��~ 
;�� �
if
�� 
(
�� 

hasChanged
�� 
)
�� 
{
�� 
%m_AdditionalCameraDataVolumeLayerMask
�� 5
.
��5 6
intValue
��6 >
=
��? @%
selectedVolumeLayerMask
��A X
;
��X Y1
#m_AdditionalCameraDataVolumeTrigger
�� 3
.
��3 4"
objectReferenceValue
��4 H
=
��I J#
selectedVolumeTrigger
��K `
;
��` a&
m_AdditionalCameraDataSO
�� (
.
��( )%
ApplyModifiedProperties
��) @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
void
�� 
DrawRenderer
��
(
�� *
UniversalRenderPipelineAsset
�� 6
rpAsset
��7 >
)
��> ?
{
�� 	
int
�� $
selectedRendererOption
�� &
=
��' (0
"m_AdditionalCameraDataRendererProp
��) K
.
��K L
intValue
��L T
;
��T U
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
��( )
Rect
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� .
.
��. /
GetControlRect
��/ =
(
��= >
true
��> B
)
��B C
;
��C D
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
Styles
��1 7
.
��7 8
rendererType
��8 D
,
��D E0
"m_AdditionalCameraDataRendererProp
��F h
)
��h i
;
��i j
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &0
"m_AdditionalCameraDataRendererProp
��' I
.
��I J(
hasMultipleDifferentValues
��J d
;
��d e
int
�� 
selectedRenderer
��  
=
��! "
	EditorGUI
��# ,
.
��, -
IntPopup
��- 5
(
��5 6
controlRect
��6 A
,
��A B
Styles
��C I
.
��I J
rendererType
��J V
,
��V W$
selectedRendererOption
��X n
,
��n o
rpAsset
��p w
.
��w x"
rendererDisplayList��x �
,��� �'
UniversalRenderPipeline��� �
.��� �
asset��� �
.��� �!
rendererIndexList��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
EndProperty
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� 
!
�� 
rpAsset
�� 
.
�� &
ValidateRendererDataList
�� 1
(
��1 2
)
��2 3
)
��3 4
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
Styles
��( .
.
��. /
noRendererError
��/ >
,
��> ?
MessageType
��@ K
.
��K L
Error
��L Q
)
��Q R
;
��R S
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
rpAsset
�� 
.
�� "
ValidateRendererData
�� 2
(
��2 3$
selectedRendererOption
��3 I
)
��I J
)
��J K
{
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
Styles
��( .
.
��. /$
missingRendererWarning
��/ E
,
��E F
MessageType
��G R
.
��R S
Warning
��S Z
)
��Z [
;
��[ \
}
�� 
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
��* +
{
�� 
"m_AdditionalCameraDataRendererProp
�� 2
.
��2 3
intValue
��3 ;
=
��< =
selectedRenderer
��> N
;
��N O&
m_AdditionalCameraDataSO
�� (
.
��( )%
ApplyModifiedProperties
��) @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
void
��  
DrawPostProcessing
��
(
��  
)
��  !
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *8
*m_AdditionalCameraDataRenderPostProcessing
��* T
,
��T U
Styles
��V \
.
��\ ]"
renderPostProcessing
��] q
)
��q r
;
��r s
DrawIntPopup
�� 
(
�� 0
"m_AdditionalCameraDataAntialiasing
�� ;
,
��; <
Styles
��= C
.
��C D
antialiasing
��D P
,
��P Q
Styles
��R X
.
��X Y!
antialiasingOptions
��Y l
,
��l m
Styles
��n t
.
��t u!
antialiasingValues��u �
)��� �
;��� �
if
�� 
(
�� 0
"m_AdditionalCameraDataAntialiasing
�� 2
.
��2 3(
hasMultipleDifferentValues
��3 M
)
��M N
{
�� 
return
�� 
;
�� 
}
�� 
var
�� "
selectedAntialiasing
�� $
=
��% &
(
��' (
AntialiasingMode
��( 8
)
��8 90
"m_AdditionalCameraDataAntialiasing
��9 [
.
��[ \
intValue
��\ d
;
��d e
if
�� 
(
�� "
selectedAntialiasing
�� $
==
��% '
AntialiasingMode
��( 8
.
��8 9/
!SubpixelMorphologicalAntiAliasing
��9 Z
)
��Z [
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
EditorGUILayout
�� 
.
��  

��  -
(
��- .7
)m_AdditionalCameraDataAntialiasingQuality
��. W
,
��W X
Styles
��Y _
.
��_ `!
antialiasingQuality
��` s
)
��s t
;
��t u
if
�� 
(
�� 
CoreEditorUtils
�� #
.
��# $
buildTargets
��$ 0
.
��0 1
Contains
��1 9
(
��9 : 
GraphicsDeviceType
��: L
.
��L M
	OpenGLES2
��M V
)
��V W
)
��W X
EditorGUILayout
�� #
.
��# $
HelpBox
��$ +
(
��+ ,
$str
��, w
,
��w x
MessageType��y �
.��� �
Warning��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
EditorGUILayout
�� 
.
�� 

�� )
(
��) *+
m_AdditionalCameraDataStopNaN
��* G
,
��G H
Styles
��I O
.
��O P
stopNaN
��P W
)
��W X
;
��X Y
EditorGUILayout
�� 
.
�� 

�� )
(
��) *-
m_AdditionalCameraDataDithering
��* I
,
��I J
Styles
��K Q
.
��Q R
	dithering
��R [
)
��[ \
;
��\ ]
}
�� 	
bool
�� 

��
(
��  
SerializedProperty
�� -
prop
��. 2
,
��2 3
ref
��4 7
	LayerMask
��8 A
mask
��B F
,
��F G

GUIContent
��H R
style
��S X
)
��X Y
{
�� 	
var
�� 
layers
�� 
=
�� #
InternalEditorUtility
�� .
.
��. /
layers
��/ 5
;
��5 6
bool
�� 

hasChanged
�� 
=
�� 
false
�� #
;
��# $
var
�� 
controlRect
�� 
=
�� 

�� +
(
��+ ,
prop
��, 0
,
��0 1
style
��2 7
)
��7 8
;
��8 9
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
��( )
int
�� 
field
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
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
�� 
layers
��  &
.
��& '
Length
��' -
;
��- .
c
��/ 0
++
��0 2
)
��2 3
if
�� 
(
�� 
(
�� 
mask
�� 
&
�� 
(
�� 
$num
�� 
<<
�� !
	LayerMask
��" +
.
��+ ,
NameToLayer
��, 7
(
��7 8
layers
��8 >
[
��> ?
c
��? @
]
��@ A
)
��A B
)
��B C
)
��C D
!=
��E G
$num
��H I
)
��I J
field
�� 
|=
�� 
$num
�� 
<<
�� !
c
��" #
;
��# $
field
�� 
=
�� 
	EditorGUI
�� 
.
�� 
	MaskField
�� '
(
��' (
controlRect
��( 3
,
��3 4
style
��5 :
,
��: ;
field
��< A
,
��A B#
InternalEditorUtility
��C X
.
��X Y
layers
��Y _
)
��_ `
;
��` a
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
��* +

hasChanged
�� 
=
�� 
true
�� !
;
��! "
mask
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
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
�� 
layers
��  &
.
��& '
Length
��' -
;
��- .
c
��/ 0
++
��0 2
)
��2 3
if
�� 
(
�� 
(
�� 
field
�� 
&
�� 
(
�� 
$num
�� 
<<
��  "
c
��# $
)
��$ %
)
��% &
!=
��' )
$num
��* +
)
��+ ,
mask
�� 
|=
�� 
$num
�� 
<<
��  
	LayerMask
��! *
.
��* +
NameToLayer
��+ 6
(
��6 7
layers
��7 =
[
��= >
c
��> ?
]
��? @
)
��@ A
;
��A B
EndProperty
�� 
(
�� 
)
�� 
;
�� 
return
�� 

hasChanged
�� 
;
�� 
}
�� 	
bool
�� 
DrawObjectField
��
<
�� 
T
�� 
>
�� 
(
��   
SerializedProperty
��  2
prop
��3 7
,
��7 8
ref
��9 <
T
��= >
value
��? D
,
��D E

GUIContent
��F P
style
��Q V
)
��V W
where
�� 
T
�� 
:
�� 
Object
�� 
{
�� 	
var
�� 

defaultVal
�� 
=
�� 
value
�� "
;
��" #
bool
�� 

hasChanged
�� 
=
�� 
false
�� #
;
��# $
var
�� 
controlRect
�� 
=
�� 

�� +
(
��+ ,
prop
��, 0
,
��0 1
style
��2 7
)
��7 8
;
��8 9
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
��( )
value
�� 
=
�� 
(
�� 
T
�� 
)
�� 
	EditorGUI
��  
.
��  !
ObjectField
��! ,
(
��, -
controlRect
��- 8
,
��8 9
style
��: ?
,
��? @
value
��A F
,
��F G
typeof
��H N
(
��N O
T
��O P
)
��P Q
,
��Q R
true
��S W
)
��W X
;
��X Y
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
��) *
&&
��+ -
!
��. /
Equals
��/ 5
(
��5 6

defaultVal
��6 @
,
��@ A
value
��B G
)
��G H
)
��H I
{
�� 

hasChanged
�� 
=
�� 
true
�� !
;
��! "
}
�� 
EndProperty
�� 
(
�� 
)
�� 
;
�� 
return
�� 

hasChanged
�� 
;
�� 
}
�� 
void
�� 
DrawDepthTexture
��
(
�� 
)
�� 
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *3
%m_AdditionalCameraDataRenderDepthProp
��* O
,
��O P
Styles
��Q W
.
��W X!
requireDepthTexture
��X k
)
��k l
;
��l m
}
�� 	
void
�� 
DrawOpaqueTexture
��
(
�� 
)
��  
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *4
&m_AdditionalCameraDataRenderOpaqueProp
��* P
,
��P Q
Styles
��R X
.
��X Y"
requireOpaqueTexture
��Y m
)
��m n
;
��n o
}
�� 	
void
�� 
DrawIntPopup
��
(
��  
SerializedProperty
�� ,
prop
��- 1
,
��1 2

GUIContent
��3 =
style
��> C
,
��C D

GUIContent
��E O
[
��O P
]
��P Q
optionNames
��R ]
,
��] ^
int
��_ b
[
��b c
]
��c d
optionValues
��e q
)
��q r
{
�� 	
var
�� 
controlRect
�� 
=
�� 

�� +
(
��+ ,
prop
��, 0
,
��0 1
style
��2 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
var
�� 
value
�� 
=
�� 
	EditorGUI
�� !
.
��! "
IntPopup
��" *
(
��* +
controlRect
��+ 6
,
��6 7
style
��8 =
,
��= >
prop
��? C
.
��C D
intValue
��D L
,
��L M
optionNames
��N Y
,
��Y Z
optionValues
��[ g
)
��g h
;
��h i
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
prop
�� 
.
�� 
intValue
�� 
=
�� 
value
��  %
;
��% &
}
�� 
EndProperty
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
Rect
�� 

��
(
��  
SerializedProperty
�� -
prop
��. 2
,
��2 3

GUIContent
��4 >
style
��? D
)
��D E
{
�� 	
var
�� 
controlRect
�� 
=
�� 
EditorGUILayout
�� -
.
��- .
GetControlRect
��. <
(
��< =
true
��= A
)
��A B
;
��B C
	EditorGUI
�� 
.
�� 

�� #
(
��# $
controlRect
��$ /
,
��/ 0
style
��1 6
,
��6 7
prop
��8 <
)
��< =
;
��= >
return
�� 
controlRect
�� 
;
�� 
}
�� 
void
�� 
DrawRenderShadows
��
(
�� 
)
��  
{
�� 	
EditorGUILayout
�� 
.
�� 

�� )
(
��) *5
'm_AdditionalCameraDataRenderShadowsProp
��* Q
,
��Q R
Styles
��S Y
.
��Y Z
renderingShadows
��Z j
)
��j k
;
��k l
}
�� 	
void
�� 
EndProperty
��
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� &
m_AdditionalCameraDataSO
�� (
!=
��) +
null
��, 0
)
��0 1
	EditorGUI
�� 
.
�� 
EndProperty
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
}
�� 
[
�� /
!ScriptableRenderPipelineExtension
�� &
(
��& '
typeof
��' -
(
��- .*
UniversalRenderPipelineAsset
��. J
)
��J K
)
��K L
]
��L M
class
�� 	9
+UniversalRenderPipelineCameraContextualMenu
��
 5
:
��6 71
#IRemoveAdditionalDataContextualMenu
��8 [
<
��[ \
Camera
��\ b
>
��b c
{
�� 
public
�� 
void
�� 
RemoveComponent
�� #
(
��# $
Camera
��$ *
camera
��+ 1
,
��1 2
IEnumerable
��3 >
<
��> ?
	Component
��? H
>
��H I
dependencies
��J V
)
��V W
{
�� 	
dependencies
�� 
=
�� 
dependencies
�� '
.
��' (
Where
��( -
(
��- .
c
��. /
=>
��0 2
c
��3 4
.
��4 5
GetType
��5 <
(
��< =
)
��= >
!=
��? A
typeof
��B H
(
��H I+
UniversalAdditionalCameraData
��I f
)
��f g
)
��g h
;
��h i
if
�� 
(
�� 
dependencies
�� 
.
�� 
Any
��  
(
��  !
)
��! "
)
��" #
{
�� 

�� 
.
�� 

�� +
(
��+ ,
$str
��, D
,
��D E
$"
��F H*
Can't remove Camera because 
��H d
{
��d e
dependencies
��e q
.
��q r
First
��r w
(
��w x
)
��x y
.
��y z
GetType��z �
(��� �
)��� �
.��� �
Name��� �
}��� �
 depends on it.��� �
"��� �
,��� �
$str��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
var
�� 
isAssetEditing
�� 
=
��  

��! .
.
��. /
IsPersistent
��/ ;
(
��; <
camera
��< B
)
��B C
;
��C D
try
�� 
{
�� 
if
�� 
(
�� 
isAssetEditing
�� "
)
��" #
{
�� 

�� !
.
��! "
StartAssetEditing
��" 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
Undo
�� 
.
�� !
SetCurrentGroupName
�� (
(
��( )
$str
��) B
)
��B C
;
��C D
var
�� "
additionalCameraData
�� (
=
��) *
camera
��+ 1
.
��1 2
GetComponent
��2 >
<
��> ?+
UniversalAdditionalCameraData
��? \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� "
additionalCameraData
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
Undo
�� 
.
�� $
DestroyObjectImmediate
�� /
(
��/ 0"
additionalCameraData
��0 D
)
��D E
;
��E F
}
�� 
Undo
�� 
.
�� $
DestroyObjectImmediate
�� +
(
��+ ,
camera
��, 2
)
��2 3
;
��3 4
}
�� 
finally
�� 
{
�� 
if
�� 
(
�� 
isAssetEditing
�� "
)
��" #
{
�� 

�� !
.
��! "
StopAssetEditing
��" 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �=
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditorTool\PathEditorToolExtensions.cs
	namespace

 	
UnityEditor


 
.

 
Experimental

 "
.

" #
	Rendering

# ,
.

, -
	Universal

- 6
.

6 7
Path2D

7 =
{ 
internal 
static
class $
PathEditorToolExtensions 2
{
public 
static 
void 
CycleTangentMode +
<+ ,
T, -
>- .
(. /
this/ 3
PathEditorTool4 B
<B C
TC D
>D E
pathEditorToolF T
)T U
whereV [
T\ ]
:^ _
ScriptablePath` n
{ 	
var 
first 
= 
true 
; 
var 
mixed 
= 
false 
; 
var 
tangentMode 
= 
TangentMode )
.) *
Linear* 0
;0 1
var 
targets 
= 
pathEditorTool (
.( )
targets) 0
;0 1
foreach 
( 
var 
target 
in !
targets" )
)) *
{ 
var 
path 
= 
pathEditorTool )
.) *
GetPath* 1
(1 2
target2 8
)8 9
;9 :
if 
( 
path 
. 
	selection "
." #
Count# (
==) +
$num, -
)- .
continue 
; 
for 
( 
var 
i 
= 
$num 
; 
i  !
<" #
path$ (
.( )

pointCount) 3
;3 4
++5 7
i7 8
)8 9
{ 
if 
( 
! 
path 
. 
	selection '
.' (
Contains( 0
(0 1
i1 2
)2 3
)3 4
continue  
;  !
var!! 
point!! 
=!! 
path!!  $
.!!$ %
GetPoint!!% -
(!!- .
i!!. /
)!!/ 0
;!!0 1
if## 
(## 
first## 
)## 
{$$ 
first%% 
=%% 
false%%  %
;%%% &
tangentMode&& #
=&&$ %
point&&& +
.&&+ ,
tangentMode&&, 7
;&&7 8
}'' 
else(( 
if(( 
((( 
point(( "
.((" #
tangentMode((# .
!=((/ 1
tangentMode((2 =
)((= >
{)) 
mixed** 
=** 
true**  $
;**$ %
break++ 
;++ 
},, 
}-- 
if// 
(// 
mixed// 
)// 
break00 
;00 
}11 
if33 
(33 
mixed33 
)33 
tangentMode44 
=44 
TangentMode44 )
.44) *
Linear44* 0
;440 1
else55 
tangentMode66 
=66 
GetNextTangentMode66 0
(660 1
tangentMode661 <
)66< =
;66= >
foreach88 
(88 
var88 
target88 
in88 !
targets88" )
)88) *
{99 
var:: 
path:: 
=:: 
pathEditorTool:: )
.::) *
GetPath::* 1
(::1 2
target::2 8
)::8 9
;::9 :
if<< 
(<< 
path<< 
.<< 
	selection<< "
.<<" #
Count<<# (
==<<) +
$num<<, -
)<<- .
continue== 
;== 
path?? 
.?? 

undoObject?? 
.??  
RegisterUndo??  ,
(??, -
$str??- A
)??A B
;??B C
forAA 
(AA 
varAA 
iAA 
=AA 
$numAA 
;AA 
iAA  !
<AA" #
pathAA$ (
.AA( )

pointCountAA) 3
;AA3 4
++AA5 7
iAA7 8
)AA8 9
{BB 
ifCC 
(CC 
!CC 
pathCC 
.CC 
	selectionCC '
.CC' (
ContainsCC( 0
(CC0 1
iCC1 2
)CC2 3
)CC3 4
continueDD  
;DD  !
pathFF 
.FF 
SetTangentModeFF '
(FF' (
iFF( )
,FF) *
tangentModeFF+ 6
)FF6 7
;FF7 8
}GG 
pathEditorToolII 
.II 
SetPathII &
(II& '
targetII' -
)II- .
;II. /
}JJ 
}KK 	
publicMM 
staticMM 
voidMM 

<MM( )
TMM) *
>MM* +
(MM+ ,
thisMM, 0
PathEditorToolMM1 ?
<MM? @
TMM@ A
>MMA B
pathEditorToolMMC Q
)MMQ R
whereMMS X
TMMY Z
:MM[ \
ScriptablePathMM] k
{NN 	
varOO 
targetsOO 
=OO 
pathEditorToolOO (
.OO( )
targetsOO) 0
;OO0 1
foreachQQ 
(QQ 
varQQ 
targetQQ 
inQQ !
targetsQQ" )
)QQ) *
{RR 
varSS 
pathSS 
=SS 
pathEditorToolSS )
.SS) *
GetPathSS* 1
(SS1 2
targetSS2 8
)SS8 9
;SS9 :
ifUU 
(UU 
pathUU 
.UU 
	selectionUU "
.UU" #
CountUU# (
==UU) +
$numUU, -
)UU- .
continueVV 
;VV 
pathXX 
.XX 

undoObjectXX 
.XX  
RegisterUndoXX  ,
(XX, -
$strXX- >
)XX> ?
;XX? @
forZZ 
(ZZ 
varZZ 
iZZ 
=ZZ 
$numZZ 
;ZZ 
iZZ  !
<ZZ" #
pathZZ$ (
.ZZ( )

pointCountZZ) 3
;ZZ3 4
++ZZ5 7
iZZ7 8
)ZZ8 9
{[[ 
if\\ 
(\\ 
!\\ 
path\\ 
.\\ 
	selection\\ '
.\\' (
Contains\\( 0
(\\0 1
i\\1 2
)\\2 3
)\\3 4
continue]]  
;]]  !
path__ 
.__ 

(__& '
i__' (
)__( )
;__) *
}`` 
pathEditorToolbb 
.bb 
SetPathbb &
(bb& '
targetbb' -
)bb- .
;bb. /
}cc 
}dd 	
privateff 
staticff 
TangentModeff "
GetNextTangentModeff# 5
(ff5 6
TangentModeff6 A
tangentModeffB M
)ffM N
{gg 	
returnhh 
(hh 
TangentModehh 
)hh  
(hh  !
(hh! "
(hh" #
(hh# $
inthh$ '
)hh' (
tangentModehh( 3
)hh3 4
+hh5 6
$numhh7 8
)hh8 9
%hh: ;
Enumhh< @
.hh@ A
	GetValueshhA J
(hhJ K
typeofhhK Q
(hhQ R
TangentModehhR ]
)hh] ^
)hh^ _
.hh_ `
Lengthhh` f
)hhf g
;hhg h
}ii 	
}jj 
}ll ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\View\Drawer.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class

{		 
public

 
readonly

 
GUIStyle

  
pointNormalStyle

! 1
;

1 2
public 
readonly 
GUIStyle  
pointHoveredStyle! 2
;2 3
public 
readonly 
GUIStyle  
pointSelectedStyle! 3
;3 4
public
readonly
GUIStyle
pointPreviewStyle
;
public 
readonly 
GUIStyle  #
pointRemovePreviewStyle! 8
;8 9
public 
readonly 
GUIStyle  
tangentNormalStyle! 3
;3 4
public 
readonly 
GUIStyle  
tangentHoveredStyle! 4
;4 5
public 
readonly 
GUIStyle  
selectionRectStyle! 3
;3 4
public 

( 
) 
{ 	
var 
pointNormal 
= 
	Resources '
.' (
Load( ,
<, -
	Texture2D- 6
>6 7
(7 8
$str8 J
)J K
;K L
var 
pointHovered 
= 
	Resources (
.( )
Load) -
<- .
	Texture2D. 7
>7 8
(8 9
$str9 L
)L M
;M N
var 

= 
	Resources  )
.) *
Load* .
<. /
	Texture2D/ 8
>8 9
(9 :
$str: N
)N O
;O P
var 
pointPreview 
= 
	Resources (
.( )
Load) -
<- .
	Texture2D. 7
>7 8
(8 9
$str9 L
)L M
;M N
var 
pointRemovePreview "
=# $
	Resources% .
.. /
Load/ 3
<3 4
	Texture2D4 =
>= >
(> ?
$str? X
)X Y
;Y Z
var 

= 
	Resources  )
.) *
Load* .
<. /
	Texture2D/ 8
>8 9
(9 :
$str: N
)N O
;O P
pointNormalStyle 
= 
CreateStyle *
(* +
	Resources+ 4
.4 5
Load5 9
<9 :
	Texture2D: C
>C D
(D E
$strE W
)W X
,X Y
Vector2Z a
.a b
oneb e
*f g
$numh k
)k l
;l m
pointHoveredStyle 
= 
CreateStyle  +
(+ ,
	Resources, 5
.5 6
Load6 :
<: ;
	Texture2D; D
>D E
(E F
$strF Y
)Y Z
,Z [
Vector2\ c
.c d
oned g
*h i
$numj m
)m n
;n o
pointSelectedStyle 
=  
CreateStyle! ,
(, -
	Resources- 6
.6 7
Load7 ;
<; <
	Texture2D< E
>E F
(F G
$strG [
)[ \
,\ ]
Vector2^ e
.e f
onef i
*j k
$numl o
)o p
;p q
pointPreviewStyle 
= 
CreateStyle  +
(+ ,
	Resources, 5
.5 6
Load6 :
<: ;
	Texture2D; D
>D E
(E F
$strF Y
)Y Z
,Z [
Vector2\ c
.c d
oned g
*h i
$numj m
)m n
;n o#
pointRemovePreviewStyle   #
=  $ %
CreateStyle  & 1
(  1 2
	Resources  2 ;
.  ; <
Load  < @
<  @ A
	Texture2D  A J
>  J K
(  K L
$str  L e
)  e f
,  f g
Vector2  h o
.  o p
one  p s
*  t u
$num  v y
)  y z
;  z {
tangentNormalStyle!! 
=!!  
CreateStyle!!! ,
(!!, -
	Resources!!- 6
.!!6 7
Load!!7 ;
<!!; <
	Texture2D!!< E
>!!E F
(!!F G
$str!!G [
)!![ \
,!!\ ]
Vector2!!^ e
.!!e f
one!!f i
*!!j k
$num!!l n
)!!n o
;!!o p
tangentHoveredStyle"" 
=""  !
CreateStyle""" -
(""- .
	Resources"". 7
.""7 8
Load""8 <
<""< =
	Texture2D""= F
>""F G
(""G H
$str""H [
)""[ \
,""\ ]
Vector2""^ e
.""e f
one""f i
*""j k
$num""l o
)""o p
;""p q
selectionRectStyle$$ 
=$$  
GUI$$! $
.$$$ %
skin$$% )
.$$) *
	FindStyle$$* 3
($$3 4
$str$$4 C
)$$C D
;$$D E
}%% 	
private'' 
GUIStyle'' 
CreateStyle'' $
(''$ %
	Texture2D''% .
texture''/ 6
,''6 7
Vector2''8 ?
size''@ D
)''D E
{(( 	
var)) 
guiStyle)) 
=)) 
new)) 
GUIStyle)) '
())' (
)))( )
;))) *
guiStyle** 
.** 
normal** 
.** 

background** &
=**' (
texture**) 0
;**0 1
guiStyle++ 
.++ 

fixedWidth++ 
=++  !
size++" &
.++& '
x++' (
;++( )
guiStyle,, 
.,, 
fixedHeight,,  
=,,! "
size,,# '
.,,' (
y,,( )
;,,) *
return.. 
guiStyle.. 
;.. 
}// 	
}00 
internal22 
class22
Drawer22 
:22 
IDrawer22 #
{33 
private44 
	IGUIState44 

m_GUIState44 $
=44% &
new44' *
GUIState44+ 3
(443 4
)444 5
;445 6
private55 

m_Styles55 &
;55& '
	protected66 

styles66  &
{77 	
get88 
{99 
if:: 
(:: 
m_Styles:: 
==:: 
null::  $
)::$ %
m_Styles;; 
=;; 
new;; "

(;;0 1
);;1 2
;;;2 3
return== 
m_Styles== 
;==  
}>> 
}?? 	
publicAA 
voidAA 
DrawSelectionRectAA %
(AA% &
RectAA& *
rectAA+ /
)AA/ 0
{BB 	
HandlesCC 
.CC 
BeginGUICC 
(CC 
)CC 
;CC 
stylesDD 
.DD 
selectionRectStyleDD %
.DD% &
DrawDD& *
(DD* +
rectDD+ /
,DD/ 0

GUIContentDD1 ;
.DD; <
noneDD< @
,DD@ A
falseDDB G
,DDG H
falseDDI N
,DDN O
falseDDP U
,DDU V
falseDDW \
)DD\ ]
;DD] ^
HandlesEE 
.EE 
EndGUIEE 
(EE 
)EE 
;EE 
}FF 	
publicHH 
voidHH "
DrawCreatePointPreviewHH *
(HH* +
Vector3HH+ 2
positionHH3 ;
)HH; <
{II 	
DrawGUIStyleCapJJ 
(JJ 
$numJJ 
,JJ 
positionJJ '
,JJ' (

QuaternionJJ) 3
.JJ3 4
identityJJ4 <
,JJ< =

m_GUIStateJJ> H
.JJH I

(JJV W
positionJJW _
)JJ_ `
,JJ` a
stylesJJb h
.JJh i
pointPreviewStyleJJi z
)JJz {
;JJ{ |
}KK 	
publicMM 
voidMM "
DrawRemovePointPreviewMM *
(MM* +
Vector3MM+ 2
positionMM3 ;
)MM; <
{NN 	
DrawGUIStyleCapOO 
(OO 
$numOO 
,OO 
positionOO '
,OO' (

QuaternionOO) 3
.OO3 4
identityOO4 <
,OO< =

m_GUIStateOO> H
.OOH I

(OOV W
positionOOW _
)OO_ `
,OO` a
stylesOOb h
.OOh i$
pointRemovePreviewStyle	OOi �
)
OO� �
;
OO� �
}PP 	
publicRR 
voidRR 
	DrawPointRR 
(RR 
Vector3RR %
positionRR& .
)RR. /
{SS 	
DrawGUIStyleCapTT 
(TT 
$numTT 
,TT 
positionTT '
,TT' (

QuaternionTT) 3
.TT3 4
identityTT4 <
,TT< =

m_GUIStateTT> H
.TTH I

(TTV W
positionTTW _
)TT_ `
,TT` a
stylesTTb h
.TTh i
pointNormalStyleTTi y
)TTy z
;TTz {
}UU 	
publicWW 
voidWW 
DrawPointHoveredWW $
(WW$ %
Vector3WW% ,
positionWW- 5
)WW5 6
{XX 	
DrawGUIStyleCapYY 
(YY 
$numYY 
,YY 
positionYY '
,YY' (

QuaternionYY) 3
.YY3 4
identityYY4 <
,YY< =

m_GUIStateYY> H
.YYH I

(YYV W
positionYYW _
)YY_ `
,YY` a
stylesYYb h
.YYh i
pointHoveredStyleYYi z
)YYz {
;YY{ |
}ZZ 	
public\\ 
void\\ 
DrawPointSelected\\ %
(\\% &
Vector3\\& -
position\\. 6
)\\6 7
{]] 	
DrawGUIStyleCap^^ 
(^^ 
$num^^ 
,^^ 
position^^ '
,^^' (

Quaternion^^) 3
.^^3 4
identity^^4 <
,^^< =

m_GUIState^^> H
.^^H I

(^^V W
position^^W _
)^^_ `
,^^` a
styles^^b h
.^^h i
pointSelectedStyle^^i {
)^^{ |
;^^| }
}__ 	
publicaa 
voidaa 
DrawLineaa 
(aa 
Vector3aa $
p1aa% '
,aa' (
Vector3aa) 0
p2aa1 3
,aa3 4
floataa5 :
widthaa; @
,aa@ A
ColoraaB G
coloraaH M
)aaM N
{bb 	
Handlescc 
.cc 
colorcc 
=cc 
colorcc !
;cc! "
Handlesdd 
.dd 
DrawAAPolyLinedd "
(dd" #
widthdd# (
,dd( )
newdd* -
Vector3dd. 5
[dd5 6
]dd6 7
{dd8 9
p1dd: <
,dd< =
p2dd> @
}ddA B
)ddB C
;ddC D
}ee 	
publicgg 
voidgg 
DrawDottedLinegg "
(gg" #
Vector3gg# *
p1gg+ -
,gg- .
Vector3gg/ 6
p2gg7 9
,gg9 :
floatgg; @
widthggA F
,ggF G
ColorggH M
colorggN S
)ggS T
{hh 	
Handlesii 
.ii 
colorii 
=ii 
colorii !
;ii! "
Handlesjj 
.jj 
DrawDottedLinejj "
(jj" #
p1jj# %
,jj% &
p2jj' )
,jj) *
widthjj+ 0
)jj0 1
;jj1 2
}kk 	
publicmm 
voidmm 

DrawBeziermm 
(mm 
Vector3mm &
p1mm' )
,mm) *
Vector3mm+ 2
p2mm3 5
,mm5 6
Vector3mm7 >
p3mm? A
,mmA B
Vector3mmC J
p4mmK M
,mmM N
floatmmO T
widthmmU Z
,mmZ [
Colormm\ a
colormmb g
)mmg h
{nn 	
Handlesoo 
.oo 
coloroo 
=oo 
coloroo !
;oo! "
Handlespp 
.pp 

DrawBezierpp 
(pp 
p1pp !
,pp! "
p4pp# %
,pp% &
p2pp' )
,pp) *
p3pp+ -
,pp- .
colorpp/ 4
,pp4 5
nullpp6 :
,pp: ;
widthpp< A
)ppA B
;ppB C
}qq 	
publicss 
voidss 
DrawTangentss 
(ss  
Vector3ss  '
positionss( 0
,ss0 1
Vector3ss2 9
tangentss: A
)ssA B
{tt 	
DrawLineuu 
(uu 
positionuu 
,uu 
tangentuu &
,uu& '
$numuu( *
,uu* +
Coloruu, 1
.uu1 2
yellowuu2 8
)uu8 9
;uu9 :
DrawGUIStyleCapvv 
(vv 
$numvv 
,vv 
tangentvv &
,vv& '

Quaternionvv( 2
.vv2 3
identityvv3 ;
,vv; <

m_GUIStatevv= G
.vvG H

(vvU V
tangentvvV ]
)vv] ^
,vv^ _
stylesvv` f
.vvf g
tangentNormalStylevvg y
)vvy z
;vvz {
}ww 	
privatezz 
voidzz 
DrawGUIStyleCapzz $
(zz$ %
intzz% (
	controlIDzz) 2
,zz2 3
Vector3zz4 ;
positionzz< D
,zzD E

QuaternionzzF P
rotationzzQ Y
,zzY Z
floatzz[ `
sizezza e
,zze f
GUIStylezzg o
guiStylezzp x
)zzx y
{{{ 	
if|| 
(|| 
Camera|| 
.|| 
current|| 
&&|| !
Vector3||" )
.||) *
Dot||* -
(||- .
position||. 6
-||7 8
Camera||9 ?
.||? @
current||@ G
.||G H
	transform||H Q
.||Q R
position||R Z
,||Z [
Camera||\ b
.||b c
current||c j
.||j k
	transform||k t
.||t u
forward||u |
)||| }
<||~ 
$num
||� �
)
||� �
return}} 
;}} 
Handles 
. 
BeginGUI 
( 
) 
; 
guiStyle
�� 
.
�� 
Draw
�� 
(
�� 
GetGUIStyleRect
�� )
(
��) *
guiStyle
��* 2
,
��2 3
position
��4 <
)
��< =
,
��= >

GUIContent
��? I
.
��I J
none
��J N
,
��N O
	controlID
��P Y
)
��Y Z
;
��Z [
Handles
�� 
.
�� 
EndGUI
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
Rect
�� 
GetGUIStyleRect
�� $
(
��$ %
GUIStyle
��% -
style
��. 3
,
��3 4
Vector3
��5 <
position
��= E
)
��E F
{
�� 	
Vector2
�� 
vector
�� 
=
�� 

�� *
.
��* +
WorldToGUIPoint
��+ :
(
��: ;
position
��; C
)
��C D
;
��D E
float
�� 

fixedWidth
�� 
=
�� 
style
�� $
.
��$ %

fixedWidth
��% /
;
��/ 0
float
�� 
fixedHeight
�� 
=
�� 
style
��  %
.
��% &
fixedHeight
��& 1
;
��1 2
return
�� 
new
�� 
Rect
�� 
(
�� 
vector
�� "
.
��" #
x
��# $
-
��% &

fixedWidth
��' 1
/
��2 3
$num
��4 6
,
��6 7
vector
��8 >
.
��> ?
y
��? @
-
��A B
fixedHeight
��C N
/
��O P
$num
��Q S
,
��S T

fixedWidth
��U _
,
��_ `
fixedHeight
��a l
)
��l m
;
��m n
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetPostProcessors\FBXArnoldSurfaceMaterialDescriptionPreprocessor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class
/FBXArnoldSurfaceMaterialDescriptionPreprocessor
 9
:
AssetPostprocessor
{ 
static 
readonly 
uint 
	k_Version &
=' (
$num) *
;* +
static 
readonly 
int 
k_Order #
=$ %
$num& '
;' (
static 
readonly 
string 
k_ShaderPath +
=, -
$str	. �
;
� �
static 
readonly 
string #
k_ShaderTransparentPath 6
=7 8
$str	9 �
;
� �
public 
override 
uint 

GetVersion '
(' (
)( )
{ 	
return 
	k_Version 
; 
} 	
public 
override 
int 
GetPostprocessOrder /
(/ 0
)0 1
{ 	
return 
k_Order 
; 
} 	
static 
bool /
#IsMayaArnoldStandardSurfaceMaterial 7
(7 8
MaterialDescription8 K
descriptionL W
)W X
{   	
float!! 
typeId!! 
;!! 
description"" 
."" 
TryGetProperty"" &
(""& '
$str""' /
,""/ 0
out""1 4
typeId""5 ;
)""; <
;""< =
return## 
typeId## 
==## 
$num## $
;##$ %
}$$ 	
static&& 
bool&& 1
%Is3DsMaxArnoldStandardSurfaceMaterial&& 9
(&&9 :
MaterialDescription&&: M
description&&N Y
)&&Y Z
{'' 	
float(( 
classIdA(( 
;(( 
float)) 
classIdB)) 
;)) 
description** 
.** 
TryGetProperty** &
(**& '
$str**' 1
,**1 2
out**3 6
classIdA**7 ?
)**? @
;**@ A
description++ 
.++ 
TryGetProperty++ &
(++& '
$str++' 1
,++1 2
out++3 6
classIdB++7 ?
)++? @
;++@ A
return,, 
classIdA,, 
==,, 
$num,, )
&&,,* ,
classIdB,,- 5
==,,6 8
$num,,9 C
;,,C D
}-- 	
public// 
void// +
OnPreprocessMaterialDescription// 3
(//3 4
MaterialDescription//4 G
description//H S
,//S T
Material//U ]
material//^ f
,//f g

[00 
]00 
clips00 !
)00! "
{11 	
var22 

=22 
GraphicsSettings22  0
.220 1!
currentRenderPipeline221 F
;22F G
if33 
(33 
!33 

||33 !

.33/ 0
GetType330 7
(337 8
)338 9
!=33: <
typeof33= C
(33C D(
UniversalRenderPipelineAsset33D `
)33` a
)33a b
return44 
;44 
var66 

=66 
Path66  $
.66$ %
GetExtension66% 1
(661 2
	assetPath662 ;
)66; <
.66< =
ToLower66= D
(66D E
)66E F
;66F G
if77 
(77 

==77  
$str77! '
)77' (
{88 
if99 
(99 /
#IsMayaArnoldStandardSurfaceMaterial99 7
(997 8
description998 C
)99C D
)99D E7
+CreateFromMayaArnoldStandardSurfaceMaterial:: ?
(::? @
description::@ K
,::K L
material::M U
,::U V
clips::W \
)::\ ]
;::] ^
else;; 
if;; 
(;; 1
%Is3DsMaxArnoldStandardSurfaceMaterial;; >
(;;> ?
description;;? J
);;J K
);;K L9
-CreateFrom3DsMaxArnoldStandardSurfaceMaterial<< A
(<<A B
description<<B M
,<<M N
material<<O W
,<<W X
clips<<Y ^
)<<^ _
;<<_ `
}== 
}>> 	
void@@ 7
+CreateFromMayaArnoldStandardSurfaceMaterial@@
(@@8 9
MaterialDescription@@9 L
description@@M X
,@@X Y
Material@@Z b
material@@c k
,@@k l

[AA 
]AA 
clipsAA !
)AA! "
{BB 	
floatCC 

;CC  
Vector4DD 
vectorPropertyDD "
;DD" #&
TexturePropertyDescriptionEE &
texturePropertyEE' 6
;EE6 7
ShaderFF 
shaderFF 
;FF 
floatHH 
opacityHH 
=HH 
$numHH  
;HH  !
Vector4II 
opacityColorII  
;II  !&
TexturePropertyDescriptionJJ &

opacityMapJJ' 1
;JJ1 2
descriptionKK 
.KK 
TryGetPropertyKK &
(KK& '
$strKK' 0
,KK0 1
outKK2 5
opacityColorKK6 B
)KKB C
;KKC D
boolLL 

=LL  
descriptionLL! ,
.LL, -
TryGetPropertyLL- ;
(LL; <
$strLL< E
,LLE F
outLLG J

opacityMapLLK U
)LLU V
;LLV W
opacityMM 
=MM 
MathfMM 
.MM 
MinMM 
(MM  
MathfMM  %
.MM% &
MinMM& )
(MM) *
opacityColorMM* 6
.MM6 7
xMM7 8
,MM8 9
opacityColorMM: F
.MMF G
yMMG H
)MMH I
,MMI J
opacityColorMMK W
.MMW X
zMMX Y
)MMY Z
;MMZ [
floatOO 
transmissionOO 
;OO 
descriptionPP 
.PP 
TryGetPropertyPP &
(PP& '
$strPP' 5
,PP5 6
outPP7 :
transmissionPP; G
)PPG H
;PPH I
ifQQ 
(QQ 
opacityQQ 
==QQ 
$numQQ 
&&QQ  "
!QQ# $

)QQ1 2
{RR 
opacitySS 
=SS 
$numSS 
-SS  
transmissionSS! -
;SS- .
}TT 
ifVV 
(VV 
opacityVV 
<VV 
$numVV 
||VV !

)VV/ 0
{WW 
shaderXX 
=XX 

.XX& '
LoadAssetAtPathXX' 6
<XX6 7
ShaderXX7 =
>XX= >
(XX> ?#
k_ShaderTransparentPathXX? V
)XXV W
;XXW X
ifYY 
(YY 
shaderYY 
==YY 
nullYY "
)YY" #
returnZZ 
;ZZ 
material\\ 
.\\ 
shader\\ 
=\\  !
shader\\" (
;\\( )
if]] 
(]] 

)]]! "
{^^ 
material__ 
.__ 

SetTexture__ '
(__' (
$str__( 6
,__6 7

opacityMap__8 B
.__B C
texture__C J
)__J K
;__K L
material`` 
.`` 
SetFloat`` %
(``% &
$str``& 0
,``0 1
$num``2 6
)``6 7
;``7 8
}aa 
elsebb 
{cc 
materialdd 
.dd 
SetFloatdd %
(dd% &
$strdd& 0
,dd0 1
opacitydd2 9
)dd9 :
;dd: ;
}ee 
}gg 
elsehh 
{ii 
shaderjj 
=jj 

.jj& '
LoadAssetAtPathjj' 6
<jj6 7
Shaderjj7 =
>jj= >
(jj> ?
k_ShaderPathjj? K
)jjK L
;jjL M
ifkk 
(kk 
shaderkk 
==kk 
nullkk "
)kk" #
returnll 
;ll 
materialnn 
.nn 
shadernn 
=nn  !
shadernn" (
;nn( )
}oo 
foreachrr 
(rr 
varrr 
cliprr 
inrr  
clipsrr! &
)rr& '
{ss 
cliptt 
.tt 
ClearCurvestt  
(tt  !
)tt! "
;tt" #
}uu 
descriptionww 
.ww 
TryGetPropertyww &
(ww& '
$strww' -
,ww- .
outww/ 2

)ww@ A
;wwA B
ifyy 
(yy 
descriptionyy 
.yy 
TryGetPropertyyy *
(yy* +
$stryy+ 6
,yy6 7
outyy8 ;
texturePropertyyy< K
)yyK L
)yyL M
{zz 
SetMaterialTextureProperty{{ *
({{* +
$str{{+ <
,{{< =
material{{> F
,{{F G
textureProperty{{H W
){{W X
;{{X Y
material|| 
.|| 
SetColor|| !
(||! "
$str||" /
,||/ 0
Color||1 6
.||6 7
white||7 <
*||= >

)||L M
;||M N
}}} 
else~~ 
if~~ 
(~~ 
description~~  
.~~  !
TryGetProperty~~! /
(~~/ 0
$str~~0 ;
,~~; <
out~~= @
vectorProperty~~A O
)~~O P
)~~P Q
{ 
if
�� 
(
�� 
QualitySettings
�� #
.
��# $
activeColorSpace
��$ 4
==
��5 7

ColorSpace
��8 B
.
��B C
Gamma
��C H
)
��H I
{
�� 
vectorProperty
�� "
.
��" #
x
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
x
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
y
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
y
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
z
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
z
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
*=
��# %

��& 3
;
��3 4
}
�� 
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" /
,
��/ 0
vectorProperty
��1 ?
*
��@ A

��B O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ 5
,
��5 6
out
��7 :

��; H
)
��H I
&&
��J L

��M Z
>
��[ \
$num
��] a
)
��a b
{
�� 
remapPropertyColorOrTexture
�� +
(
��+ ,
description
��, 7
,
��7 8
material
��9 A
,
��A B
$str
��C R
,
��R S
$str
��T e
,
��e f

��g t
)
��t u
;
��u v
}
�� 
remapPropertyFloatOrTexture
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? J
,
��J K
$str
��L X
)
��X Y
;
��Y Z
description
�� 
.
�� 
TryGetProperty
�� &
(
��& '
$str
��' 1
,
��1 2
out
��3 6

��7 D
)
��D E
;
��E F)
remapPropertyColorOrTexture
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? N
,
��N O
$str
��P a
,
��a b

��c p
)
��p q
;
��q r)
remapPropertyFloatOrTexture
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? R
,
��R S
$str
��T i
)
��i j
;
��j k)
remapPropertyFloatOrTexture
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? L
,
��L M
$str
��N ]
)
��] ^
;
��^ _"
remapPropertyTexture
��  
(
��  !
description
��! ,
,
��, -
material
��. 6
,
��6 7
$str
��8 F
,
��F G
$str
��H U
)
��U V
;
��V W
}
�� 	
void
�� ;
-CreateFrom3DsMaxArnoldStandardSurfaceMaterial
��
(
��: ;!
MaterialDescription
��; N
description
��O Z
,
��Z [
Material
��\ d
material
��e m
,
��m n

�� 
[
�� 
]
�� 
clips
�� !
)
��! "
{
�� 	
float
�� 

�� 
;
��  
Vector4
�� 
vectorProperty
�� "
;
��" #(
TexturePropertyDescription
�� &
textureProperty
��' 6
;
��6 7
var
�� 
shader
�� 
=
�� 

�� &
.
��& '
LoadAssetAtPath
��' 6
<
��6 7
Shader
��7 =
>
��= >
(
��> ?
k_ShaderPath
��? K
)
��K L
;
��L M
if
�� 
(
�� 
shader
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
�� 
material
�� 
.
�� 
shader
�� 
=
�� 
shader
�� $
;
��$ %
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
clip
�� 
.
�� 
ClearCurves
��  
(
��  !
)
��! "
;
��" #
}
�� 
float
�� 
opacity
�� 
=
�� 
$num
��  
;
��  !
Vector4
�� 
opacityColor
��  
;
��  !(
TexturePropertyDescription
�� &

opacityMap
��' 1
;
��1 2
description
�� 
.
�� 
TryGetProperty
�� &
(
��& '
$str
��' 0
,
��0 1
out
��2 5
opacityColor
��6 B
)
��B C
;
��C D
bool
�� 

�� 
=
��  
description
��! ,
.
��, -
TryGetProperty
��- ;
(
��; <
$str
��< E
,
��E F
out
��G J

opacityMap
��K U
)
��U V
;
��V W
opacity
�� 
=
�� 
Mathf
�� 
.
�� 
Min
�� 
(
��  
Mathf
��  %
.
��% &
Min
��& )
(
��) *
opacityColor
��* 6
.
��6 7
x
��7 8
,
��8 9
opacityColor
��: F
.
��F G
y
��G H
)
��H I
,
��I J
opacityColor
��K W
.
��W X
z
��X Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
opacity
�� 
<
�� 
$num
�� 
||
�� !

��" /
)
��/ 0
{
�� 
if
�� 
(
�� 

�� !
)
��! "
{
�� 
material
�� 
.
�� 

SetTexture
�� '
(
��' (
$str
��( 6
,
��6 7

opacityMap
��8 B
.
��B C
texture
��C J
)
��J K
;
��K L
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 0
,
��0 1
$num
��2 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 0
,
��0 1
opacity
��2 9
)
��9 :
;
��: ;
}
�� 
}
�� 
description
�� 
.
�� 
TryGetProperty
�� &
(
��& '
$str
��' -
,
��- .
out
��/ 2

��3 @
)
��@ A
;
��A B
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ >
,
��> ?
out
��@ C
textureProperty
��D S
)
��S T
)
��T U
{
�� 
SetMaterialTextureProperty
�� *
(
��* +
$str
��+ <
,
��< =
material
��> F
,
��F G
textureProperty
��H W
)
��W X
;
��X Y
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" /
,
��/ 0
Color
��1 6
.
��6 7
white
��7 <
*
��= >

��? L
)
��L M
;
��M N
}
�� 
else
�� 
if
�� 
(
�� 
description
��  
.
��  !
TryGetProperty
��! /
(
��/ 0
$str
��0 <
,
��< =
out
��> A
vectorProperty
��B P
)
��P Q
)
��Q R
{
�� 
if
�� 
(
�� 
QualitySettings
�� #
.
��# $
activeColorSpace
��$ 4
==
��5 7

ColorSpace
��8 B
.
��B C
Gamma
��C H
)
��H I
{
�� 
vectorProperty
�� "
.
��" #
x
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
x
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
y
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
y
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
z
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
z
��O P
)
��P Q
;
��Q R
}
�� 
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" /
,
��/ 0
vectorProperty
��1 ?
*
��@ A

��B O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ 5
,
��5 6
out
��7 :

��; H
)
��H I
&&
��J L

��M Z
>
��[ \
$num
��] a
)
��a b
{
�� 
!remapPropertyColorOrTexture3DsMax
�� 1
(
��1 2
description
��2 =
,
��= >
material
��? G
,
��G H
$str
��I Y
,
��Y Z
$str
��[ l
,
��l m

�� !
)
��! "
;
��" #
}
�� 
!remapPropertyFloatOrTexture3DsMax
�� -
(
��- .
description
��. 9
,
��9 :
material
��; C
,
��C D
$str
��E P
,
��P Q
$str
��R ^
)
��^ _
;
��_ `
description
�� 
.
�� 
TryGetProperty
�� &
(
��& '
$str
��' 1
,
��1 2
out
��3 6
float
��7 <
specularFactor
��= K
)
��K L
;
��L M/
!remapPropertyColorOrTexture3DsMax
�� -
(
��- .
description
��. 9
,
��9 :
material
��; C
,
��C D
$str
��E U
,
��U V
$str
��W h
,
��h i
specularFactor
�� 
)
�� 
;
��  /
!remapPropertyFloatOrTexture3DsMax
�� -
(
��- .
description
��. 9
,
��9 :
material
��; C
,
��C D
$str
��E Y
,
��Y Z
$str
��[ p
)
��p q
;
��q r/
!remapPropertyFloatOrTexture3DsMax
�� -
(
��- .
description
��. 9
,
��9 :
material
��; C
,
��C D
$str
��E S
,
��S T
$str
��U d
)
��d e
;
��e f"
remapPropertyTexture
��  
(
��  !
description
��! ,
,
��, -
material
��. 6
,
��6 7
$str
��8 G
,
��G H
$str
��I V
)
��V W
;
��W X
}
�� 	
static
�� 
void
�� (
SetMaterialTextureProperty
�� .
(
��. /
string
��/ 5
propertyName
��6 B
,
��B C
Material
��D L
material
��M U
,
��U V(
TexturePropertyDescription
�� &
textureProperty
��' 6
)
��6 7
{
�� 	
material
�� 
.
�� 

SetTexture
�� 
(
��  
propertyName
��  ,
,
��, -
textureProperty
��. =
.
��= >
texture
��> E
)
��E F
;
��F G
material
�� 
.
�� 
SetTextureOffset
�� %
(
��% &
propertyName
��& 2
,
��2 3
textureProperty
��4 C
.
��C D
offset
��D J
)
��J K
;
��K L
material
�� 
.
�� 
SetTextureScale
�� $
(
��$ %
propertyName
��% 1
,
��1 2
textureProperty
��3 B
.
��B C
scale
��C H
)
��H I
;
��I J
}
�� 	
static
�� 
void
��  
remapPropertyFloat
�� &
(
��& '!
MaterialDescription
��' :
description
��; F
,
��F G
Material
��H P
material
��Q Y
,
��Y Z
string
��[ a

inPropName
��b l
,
��l m
string
�� 
outPropName
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
float
��; @

��A N
)
��N O
)
��O P
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .

��/ <
)
��< =
;
��= >
}
�� 
}
�� 	
static
�� 
void
�� "
remapPropertyTexture
�� (
(
��( )!
MaterialDescription
��) <
description
��= H
,
��H I
Material
��J R
material
��S [
,
��[ \
string
��] c

inPropName
��d n
,
��n o
string
�� 
outPropName
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :(
TexturePropertyDescription
��; U
textureProperty
��V e
)
��e f
)
��f g
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
,
��/ 0
textureProperty
��1 @
.
��@ A
texture
��A H
)
��H I
;
��I J
}
�� 
}
�� 	
static
�� 
void
�� /
!remapPropertyColorOrTexture3DsMax
�� 5
(
��5 6!
MaterialDescription
��6 I
description
��J U
,
��U V
Material
��W _
material
��` h
,
��h i
string
�� 

inPropName
�� 
,
�� 
string
�� %
outPropName
��& 1
,
��1 2
float
��3 8

multiplier
��9 C
=
��D E
$num
��F J
)
��J K
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
+
��6 7
$str
��8 A
,
��A B
out
��C F(
TexturePropertyDescription
��G a
textureProperty
��b q
)
��q r
)
��r s
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
Color
��/ 4
.
��4 5
white
��5 :
*
��; <

multiplier
��= G
)
��G H
;
��H I
}
�� 
else
�� 
{
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
Vector4
��; B
vectorProperty
��C Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
vectorProperty
��/ =
*
��> ?

multiplier
��@ J
)
��J K
;
��K L
}
�� 
}
�� 	
static
�� 
void
�� /
!remapPropertyFloatOrTexture3DsMax
�� 5
(
��5 6!
MaterialDescription
��6 I
description
��J U
,
��U V
Material
��W _
material
��` h
,
��h i
string
�� 

inPropName
�� 
,
�� 
string
�� %
outPropName
��& 1
)
��1 2
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :(
TexturePropertyDescription
��; U
textureProperty
��V e
)
��e f
)
��f g
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .
$num
��/ 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
float
��; @

��A N
)
��N O
;
��O P
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .

��/ <
)
��< =
;
��= >
}
�� 
}
�� 	
static
�� 
void
�� )
remapPropertyColorOrTexture
�� /
(
��/ 0!
MaterialDescription
��0 C
description
��D O
,
��O P
Material
��Q Y
material
��Z b
,
��b c
string
��d j

inPropName
��k u
,
��u v
string
�� 
outPropName
�� 
,
�� 
float
��  %

multiplier
��& 0
=
��1 2
$num
��3 7
)
��7 8
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :(
TexturePropertyDescription
��; U
textureProperty
��V e
)
��e f
)
��f g
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
Color
��/ 4
.
��4 5
white
��5 :
*
��; <

multiplier
��= G
)
��G H
;
��H I
}
�� 
else
�� 
{
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
Vector4
��; B
vectorProperty
��C Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
vectorProperty
��/ =
*
��> ?

multiplier
��@ J
)
��J K
;
��K L
}
�� 
}
�� 	
static
�� 
void
�� )
remapPropertyFloatOrTexture
�� /
(
��/ 0!
MaterialDescription
��0 C
description
��D O
,
��O P
Material
��Q Y
material
��Z b
,
��b c
string
��d j

inPropName
��k u
,
��u v
string
�� 
outPropName
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :(
TexturePropertyDescription
��; U
textureProperty
��V e
)
��e f
)
��f g
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .
$num
��/ 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
float
��; @

��A N
)
��N O
;
��O P
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .

��/ <
)
��< =
;
��= >
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\View\IDrawer.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
	interface
IDrawer 
{ 
void 
DrawSelectionRect
( 
Rect #
rect$ (
)( )
;) *
void "
DrawCreatePointPreview
(# $
Vector3$ +
position, 4
)4 5
;5 6
void		 "
DrawRemovePointPreview		
(		# $
Vector3		$ +
position		, 4
)		4 5
;		5 6
void

 
	DrawPoint


(

 
Vector3

 
position

 '
)

' (
;

( )
void 
DrawPointHovered
( 
Vector3 %
position& .
). /
;/ 0
void 
DrawPointSelected
( 
Vector3 &
position' /
)/ 0
;0 1
void
DrawLine
(
Vector3
p1
,
Vector3
p2
,
float
width
,
Color
color
)
;
void 
DrawDottedLine
( 
Vector3 #
p1$ &
,& '
Vector3( /
p20 2
,2 3
float4 9
width: ?
,? @
ColorA F
colorG L
)L M
;M N
void 

DrawBezier
( 
Vector3 
p1  "
," #
Vector3$ +
p2, .
,. /
Vector30 7
p38 :
,: ;
Vector3< C
p4D F
,F G
floatH M
widthN S
,S T
ColorU Z
color[ `
)` a
;a b
void 
DrawTangent
( 
Vector3  
position! )
,) *
Vector3+ 2
tangent3 :
): ;
;; <
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\EditablePathController.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class
EditablePathController )
:* +#
IEditablePathController, C
{ 
private		 
	ISnapping		 
<		 
Vector3		 !
>		! "

m_Snapping		# -
=		. /
new		0 3
Snapping		4 <
(		< =
)		= >
;		> ?
public 

editablePath )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

closestEditablePath 0
{1 2
get3 6
{7 8
return9 ?
editablePath@ L
;L M
}N O
}P Q
public 
	ISnapping 
< 
Vector3  
>  !
snapping" *
{ 	
get 
{ 
return 

m_Snapping #
;# $
}% &
set 
{ 

m_Snapping 
= 
value $
;$ %
}& '
} 	
public 
bool 
enableSnapping "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 
RegisterUndo  
(  !
string! '
name( ,
), -
{ 	
if 
( 
editablePath 
. 

undoObject '
!=( *
null+ /
)/ 0
editablePath 
. 

undoObject '
.' (
RegisterUndo( 4
(4 5
name5 9
)9 :
;: ;
} 	
public 
void 
ClearSelection "
(" #
)# $
{ 	
editablePath 
. 
	selection "
." #
Clear# (
(( )
)) *
;* +
} 	
public!! 
void!! 
SelectPoint!! 
(!!  
int!!  #
index!!$ )
,!!) *
bool!!+ /
select!!0 6
)!!6 7
{"" 	
editablePath## 
.## 
	selection## "
.##" #
Select### )
(##) *
index##* /
,##/ 0
select##1 7
)##7 8
;##8 9
}$$ 	
public&& 
void&& 
CreatePoint&& 
(&&  
int&&  #
index&&$ )
,&&) *
Vector3&&+ 2
position&&3 ;
)&&; <
{'' 	
ClearSelection(( 
((( 
)(( 
;(( 
if** 
(** 
editablePath** 
.** 
	shapeType** &
==**' )
	ShapeType*** 3
.**3 4
Polygon**4 ;
)**; <
{++ 
editablePath,, 
.,, 
InsertPoint,, (
(,,( )
index,,) .
+,,/ 0
$num,,1 2
,,,2 3
new,,4 7
ControlPoint,,8 D
(,,D E
),,E F
{,,G H
position,,I Q
=,,R S
position,,T \
},,] ^
),,^ _
;,,_ `
}-- 
else.. 
if.. 
(.. 
editablePath.. !
...! "
	shapeType.." +
==.., .
	ShapeType../ 8
...8 9
Spline..9 ?
)..? @
{// 
var00 
	nextIndex00 
=00 
	NextIndex00  )
(00) *
index00* /
)00/ 0
;000 1
var11 
currentPoint11  
=11! "
editablePath11# /
.11/ 0
GetPoint110 8
(118 9
index119 >
)11> ?
;11? @
var22 
	nextPoint22 
=22 
editablePath22  ,
.22, -
GetPoint22- 5
(225 6
	nextIndex226 ?
)22? @
;22@ A
float44 
t44 
;44 
var55 
closestPoint55  
=55! "

.550 1
ClosestPointOnCurve551 D
(55D E
position66 
,66 
currentPoint77  
.77  !
position77! )
,77) *
	nextPoint88 
.88 
position88 &
,88& '#
GetRightTangentPosition99 +
(99+ ,
index99, 1
)991 2
,992 3"
GetLeftTangentPosition:: *
(::* +
	nextIndex::+ 4
)::4 5
,::5 6
out;; 
t;; 
);; 
;;; 
Vector3== 
leftStartPosition== )
;==) *
Vector3>> 
leftEndPosition>> '
;>>' (
Vector3?? 
leftStartTangent?? (
;??( )
Vector3@@ 
leftEndTangent@@ &
;@@& '
Vector3BB 
rightStartPositionBB *
;BB* +
Vector3CC 
rightEndPositionCC (
;CC( )
Vector3DD 
rightStartTangentDD )
;DD) *
Vector3EE 
rightEndTangentEE '
;EE' (

.GG 
SplitBezierGG )
(GG) *
tGG* +
,GG+ ,
currentPointGG- 9
.GG9 :
positionGG: B
,GGB C
	nextPointGGD M
.GGM N
positionGGN V
,GGV W#
GetRightTangentPositionGGX o
(GGo p
indexGGp u
)GGu v
,GGv w#
GetLeftTangentPosition	GGx �
(
GG� �
	nextIndex
GG� �
)
GG� �
,
GG� �
outHH 
leftStartPositionHH )
,HH) *
outHH+ .
leftEndPositionHH/ >
,HH> ?
outHH@ C
leftStartTangentHHD T
,HHT U
outHHV Y
leftEndTangentHHZ h
,HHh i
outII 
rightStartPositionII *
,II* +
outII, /
rightEndPositionII0 @
,II@ A
outIIB E
rightStartTangentIIF W
,IIW X
outIIY \
rightEndTangentII] l
)IIl m
;IIm n
varKK 

=KK" #
indexKK$ )
+KK* +
$numKK, -
;KK- .
varLL 
newPointLL 
=LL 
newLL "
ControlPointLL# /
(LL/ 0
)LL0 1
{MM 
positionNN 
=NN 
closestPointNN +
,NN+ ,
leftTangentOO 
=OO  !
leftEndTangentOO" 0
,OO0 1
rightTangentPP  
=PP! "
rightStartTangentPP# 4
,PP4 5
tangentModeQQ 
=QQ  !
TangentModeQQ" -
.QQ- .

ContinuousQQ. 8
}RR 
;RR 
currentPointTT 
.TT 
rightTangentTT )
=TT* +
leftStartTangentTT, <
;TT< =
	nextPointUU 
.UU 
leftTangentUU %
=UU& '
rightEndTangentUU( 7
;UU7 8
ifWW 
(WW 
currentPointWW  
.WW  !
tangentModeWW! ,
==WW- /
TangentModeWW0 ;
.WW; <
LinearWW< B
&&WWC E
	nextPointWWF O
.WWO P
tangentModeWWP [
==WW\ ^
TangentModeWW_ j
.WWj k
LinearWWk q
)WWq r
{XX 
newPointYY 
.YY 
tangentModeYY (
=YY) *
TangentModeYY+ 6
.YY6 7
LinearYY7 =
;YY= >
newPointZZ 
.ZZ 
localLeftTangentZZ -
=ZZ. /
Vector3ZZ0 7
.ZZ7 8
zeroZZ8 <
;ZZ< =
newPoint[[ 
.[[ 
localRightTangent[[ .
=[[/ 0
Vector3[[1 8
.[[8 9
zero[[9 =
;[[= >
currentPoint\\  
.\\  !
localRightTangent\\! 2
=\\3 4
Vector3\\5 <
.\\< =
zero\\= A
;\\A B
	nextPoint]] 
.]] 
localLeftTangent]] .
=]]/ 0
Vector3]]1 8
.]]8 9
zero]]9 =
;]]= >
}^^ 
else__ 
{`` 
ifaa 
(aa 
currentPointaa $
.aa$ %
tangentModeaa% 0
==aa1 3
TangentModeaa4 ?
.aa? @
Linearaa@ F
)aaF G
currentPointbb $
.bb$ %
tangentModebb% 0
=bb1 2
TangentModebb3 >
.bb> ?
Brokenbb? E
;bbE F
ifdd 
(dd 
	nextPointdd !
.dd! "
tangentModedd" -
==dd. 0
TangentModedd1 <
.dd< =
Lineardd= C
)ddC D
	nextPointee !
.ee! "
tangentModeee" -
=ee. /
TangentModeee0 ;
.ee; <
Brokenee< B
;eeB C
}ff 
editablePathhh 
.hh 
SetPointhh %
(hh% &
indexhh& +
,hh+ ,
currentPointhh- 9
)hh9 :
;hh: ;
editablePathii 
.ii 
SetPointii %
(ii% &
	nextIndexii& /
,ii/ 0
	nextPointii1 :
)ii: ;
;ii; <
editablePathjj 
.jj 
InsertPointjj (
(jj( )

,jj6 7
newPointjj8 @
)jj@ A
;jjA B
}kk 
}ll 	
publicnn 
voidnn  
RemoveSelectedPointsnn (
(nn( )
)nn) *
{oo 	
varpp 

=pp 
editablePathpp  ,
.pp, -
isOpenEndedpp- 8
?pp9 :
$numpp; <
:pp= >
$numpp? @
;pp@ A
ifrr 
(rr 
editablePathrr 
.rr 

pointCountrr '
>rr( )

)rr7 8
{ss 
vartt 
indicestt 
=tt 
editablePathtt *
.tt* +
	selectiontt+ 4
.tt4 5
elementstt5 =
.tt= >
OrderByDescendingtt> O
(ttO P
ittQ R
=>ttS U
ittV W
)ttW X
;ttX Y
foreachvv 
(vv 
varvv 
indexvv "
invv# %
indicesvv& -
)vv- .
ifww 
(ww 
editablePathww $
.ww$ %

pointCountww% /
>ww0 1

)ww? @
editablePathxx $
.xx$ %
RemovePointxx% 0
(xx0 1
indexxx1 6
)xx6 7
;xx7 8
ClearSelectionzz 
(zz 
)zz  
;zz  !
}{{ 
}|| 	
public~~ 
void~~ 
MoveSelectedPoints~~ &
(~~& '
Vector3~~' .
delta~~/ 4
)~~4 5
{ 	
delta
�� 
=
�� 
Vector3
�� 
.
�� 
ProjectOnPlane
�� *
(
��* +
delta
��+ 0
,
��0 1
editablePath
��2 >
.
��> ?
forward
��? F
)
��F G
;
��G H
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
�� 
editablePath
��  ,
.
��, -

pointCount
��- 7
;
��7 8
++
��9 ;
i
��; <
)
��< =
{
�� 
if
�� 
(
�� 
editablePath
��  
.
��  !
	selection
��! *
.
��* +
Contains
��+ 3
(
��3 4
i
��4 5
)
��5 6
)
��6 7
{
�� 
var
�� 
controlPoint
�� $
=
��% &
editablePath
��' 3
.
��3 4
GetPoint
��4 <
(
��< =
i
��= >
)
��> ?
;
��? @
controlPoint
��  
.
��  !
position
��! )
+=
��* ,
delta
��- 2
;
��2 3
editablePath
��  
.
��  !
SetPoint
��! )
(
��) *
i
��* +
,
��+ ,
controlPoint
��- 9
)
��9 :
;
��: ;
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
MoveEdge
�� 
(
�� 
int
��  
index
��! &
,
��& '
Vector3
��( /
delta
��0 5
)
��5 6
{
�� 	
if
�� 
(
�� 
editablePath
�� 
.
�� 
isOpenEnded
�� (
&&
��) +
index
��, 1
==
��2 4
editablePath
��5 A
.
��A B

pointCount
��B L
-
��M N
$num
��O P
)
��P Q
return
�� 
;
�� 
var
�� 
controlPoint
�� 
=
�� 
editablePath
�� +
.
��+ ,
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
;
��; <
controlPoint
�� 
.
�� 
position
�� !
+=
��" $
delta
��% *
;
��* +
editablePath
�� 
.
�� 
SetPoint
�� !
(
��! "
index
��" '
,
��' (
controlPoint
��) 5
)
��5 6
;
��6 7
controlPoint
�� 
=
�� 
NextControlPoint
�� +
(
��+ ,
index
��, 1
)
��1 2
;
��2 3
controlPoint
�� 
.
�� 
position
�� !
+=
��" $
delta
��% *
;
��* +
editablePath
�� 
.
�� 
SetPoint
�� !
(
��! "
	NextIndex
��" +
(
��+ ,
index
��, 1
)
��1 2
,
��2 3
controlPoint
��4 @
)
��@ A
;
��A B
}
�� 	
public
�� 
void
�� 
SetLeftTangent
�� "
(
��" #
int
��# &
index
��' ,
,
��, -
Vector3
��. 5
position
��6 >
,
��> ?
bool
��@ D
setToLinear
��E P
,
��P Q
bool
��R V
mirror
��W ]
,
��] ^
Vector3
��_ f 
cachedRightTangent
��g y
)
��y z
{
�� 	
var
�� 
controlPoint
�� 
=
�� 
editablePath
�� +
.
��+ ,
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
;
��; <
controlPoint
�� 
.
�� 
leftTangent
�� $
=
��% &
position
��' /
;
��/ 0
controlPoint
�� 
.
�� 

mirrorLeft
�� #
=
��$ %
false
��& +
;
��+ ,
if
�� 
(
�� 
setToLinear
�� 
)
�� 
{
�� 
controlPoint
�� 
.
�� 
leftTangent
�� (
=
��) *
controlPoint
��+ 7
.
��7 8
position
��8 @
;
��@ A
controlPoint
�� 
.
�� 
rightTangent
�� )
=
��* + 
cachedRightTangent
��, >
;
��> ?
}
�� 
else
�� 
if
�� 
(
�� 
controlPoint
�� !
.
��! "
tangentMode
��" -
==
��. 0
TangentMode
��1 <
.
��< =

Continuous
��= G
||
��H J
mirror
��K Q
)
��Q R
{
�� 
var
�� 
	magnitude
�� 
=
�� 
controlPoint
��  ,
.
��, -
localRightTangent
��- >
.
��> ?
	magnitude
��? H
;
��H I
if
�� 
(
�� 
mirror
�� 
)
�� 
	magnitude
�� 
=
�� 
controlPoint
��  ,
.
��, -
localLeftTangent
��- =
.
��= >
	magnitude
��> G
;
��G H
controlPoint
�� 
.
�� 
localRightTangent
�� .
=
��/ 0
	magnitude
��1 :
*
��; <
-
��= >
controlPoint
��> J
.
��J K
localLeftTangent
��K [
.
��[ \

normalized
��\ f
;
��f g
}
�� 
editablePath
�� 
.
�� 
SetPoint
�� !
(
��! "
index
��" '
,
��' (
controlPoint
��) 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� 
SetRightTangent
�� #
(
��# $
int
��$ '
index
��( -
,
��- .
Vector3
��/ 6
position
��7 ?
,
��? @
bool
��A E
setToLinear
��F Q
,
��Q R
bool
��S W
mirror
��X ^
,
��^ _
Vector3
��` g
cachedLeftTangent
��h y
)
��y z
{
�� 	
var
�� 
controlPoint
�� 
=
�� 
editablePath
�� +
.
��+ ,
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
;
��; <
controlPoint
�� 
.
�� 
rightTangent
�� %
=
��& '
position
��( 0
;
��0 1
controlPoint
�� 
.
�� 

mirrorLeft
�� #
=
��$ %
true
��& *
;
��* +
if
�� 
(
�� 
setToLinear
�� 
)
�� 
{
�� 
controlPoint
�� 
.
�� 
rightTangent
�� )
=
��* +
controlPoint
��, 8
.
��8 9
position
��9 A
;
��A B
controlPoint
�� 
.
�� 
leftTangent
�� (
=
��) *
cachedLeftTangent
��+ <
;
��< =
}
�� 
else
�� 
if
�� 
(
�� 
controlPoint
�� !
.
��! "
tangentMode
��" -
==
��. 0
TangentMode
��1 <
.
��< =

Continuous
��= G
||
��H J
mirror
��K Q
)
��Q R
{
�� 
var
�� 
	magnitude
�� 
=
�� 
controlPoint
��  ,
.
��, -
localLeftTangent
��- =
.
��= >
	magnitude
��> G
;
��G H
if
�� 
(
�� 
mirror
�� 
)
�� 
	magnitude
�� 
=
�� 
controlPoint
��  ,
.
��, -
localRightTangent
��- >
.
��> ?
	magnitude
��? H
;
��H I
controlPoint
�� 
.
�� 
localLeftTangent
�� -
=
��. /
	magnitude
��0 9
*
��: ;
-
��< =
controlPoint
��= I
.
��I J
localRightTangent
��J [
.
��[ \

normalized
��\ f
;
��f g
}
�� 
editablePath
�� 
.
�� 
SetPoint
�� !
(
��! "
index
��" '
,
��' (
controlPoint
��) 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� 
ClearClosestPath
�� $
(
��$ %
)
��% &
{
��' (
}
��) *
public
�� 
void
�� 
AddClosestPath
�� "
(
��" #
float
��# (
distance
��) 1
)
��1 2
{
��3 4
}
��5 6
private
�� 
Vector3
�� $
GetLeftTangentPosition
�� .
(
��. /
int
��/ 2
index
��3 8
)
��8 9
{
�� 	
var
�� 
isLinear
�� 
=
�� 
Mathf
��  
.
��  !

��! .
(
��. /
editablePath
��/ ;
.
��; <
GetPoint
��< D
(
��D E
index
��E J
)
��J K
.
��K L
localLeftTangent
��L \
.
��\ ]
sqrMagnitude
��] i
,
��i j
$num
��k m
)
��m n
;
��n o
if
�� 
(
�� 
isLinear
�� 
)
�� 
{
�� 
var
�� 
position
�� 
=
�� 
editablePath
�� +
.
��+ ,
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
.
��; <
position
��< D
;
��D E
var
�� 
prevPosition
��  
=
��! "
PrevControlPoint
��# 3
(
��3 4
index
��4 9
)
��9 :
.
��: ;
position
��; C
;
��C D
return
�� 
(
�� 
$num
�� 
/
�� 
$num
�� 
)
��  
*
��! "
(
��# $
prevPosition
��$ 0
-
��1 2
position
��3 ;
)
��; <
+
��= >
position
��? G
;
��G H
}
�� 
return
�� 
editablePath
�� 
.
��  
GetPoint
��  (
(
��( )
index
��) .
)
��. /
.
��/ 0
leftTangent
��0 ;
;
��; <
}
�� 	
private
�� 
Vector3
�� %
GetRightTangentPosition
�� /
(
��/ 0
int
��0 3
index
��4 9
)
��9 :
{
�� 	
var
�� 
isLinear
�� 
=
�� 
Mathf
��  
.
��  !

��! .
(
��. /
editablePath
��/ ;
.
��; <
GetPoint
��< D
(
��D E
index
��E J
)
��J K
.
��K L
localRightTangent
��L ]
.
��] ^
sqrMagnitude
��^ j
,
��j k
$num
��l n
)
��n o
;
��o p
if
�� 
(
�� 
isLinear
�� 
)
�� 
{
�� 
var
�� 
position
�� 
=
�� 
editablePath
�� +
.
��+ ,
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
.
��; <
position
��< D
;
��D E
var
�� 
nextPosition
��  
=
��! "
NextControlPoint
��# 3
(
��3 4
index
��4 9
)
��9 :
.
��: ;
position
��; C
;
��C D
return
�� 
(
�� 
$num
�� 
/
�� 
$num
�� 
)
��  
*
��! "
(
��# $
nextPosition
��$ 0
-
��1 2
position
��3 ;
)
��; <
+
��= >
position
��? G
;
��G H
}
�� 
return
�� 
editablePath
�� 
.
��  
GetPoint
��  (
(
��( )
index
��) .
)
��. /
.
��/ 0
rightTangent
��0 <
;
��< =
}
�� 	
private
�� 
int
�� 
	NextIndex
�� 
(
�� 
int
�� !
index
��" '
)
��' (
{
�� 	
return
�� !
EditablePathUtility
�� &
.
��& '
Mod
��' *
(
��* +
index
��+ 0
+
��1 2
$num
��3 4
,
��4 5
editablePath
��6 B
.
��B C

pointCount
��C M
)
��M N
;
��N O
}
�� 	
private
�� 
ControlPoint
�� 
NextControlPoint
�� -
(
��- .
int
��. 1
index
��2 7
)
��7 8
{
�� 	
return
�� 
editablePath
�� 
.
��  
GetPoint
��  (
(
��( )
	NextIndex
��) 2
(
��2 3
index
��3 8
)
��8 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
int
�� 
	PrevIndex
�� 
(
�� 
int
�� !
index
��" '
)
��' (
{
�� 	
return
�� !
EditablePathUtility
�� &
.
��& '
Mod
��' *
(
��* +
index
��+ 0
-
��1 2
$num
��3 4
,
��4 5
editablePath
��6 B
.
��B C

pointCount
��C M
)
��M N
;
��N O
}
�� 	
private
�� 
ControlPoint
�� 
PrevControlPoint
�� -
(
��- .
int
��. 1
index
��2 7
)
��7 8
{
�� 	
return
�� 
editablePath
�� 
.
��  
GetPoint
��  (
(
��( )
	PrevIndex
��) 2
(
��2 3
index
��3 8
)
��8 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}�� �O
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\RenderStateDataEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
StencilStateData! 1
)1 2
,2 3
true4 8
)8 9
]9 :
internal 
class
StencilStateDataDrawer )
:* +
PropertyDrawer, :
{		 
class

 
Styles

 
{ 	
public 
static 
readonly "

GUIContent# -
overrideStencil. =
=> ?
new

GUIContent
(
$str
,
$str
)
;
public 
static 
readonly "

GUIContent# -
stencilValue. :
=; <
new= @

GUIContentA K
(K L
$strL S
,S T
$str 0
)0 1
;1 2
public 
static 
readonly "

GUIContent# -
stencilFunction. =
=> ?
new@ C

GUIContentD N
(N O
$strO a
,a b
$str U
)U V
;V W
public 
static 
readonly "

GUIContent# -
stencilPass. 9
=: ;
new 

GUIContent 
( 
$str %
,% &
$str' X
)X Y
;Y Z
public 
static 
readonly "

GUIContent# -
stencilFail. 9
=: ;
new 

GUIContent 
( 
$str %
,% &
$str' X
)X Y
;Y Z
public 
static 
readonly "

GUIContent# -
stencilZFail. :
=; <
new 

GUIContent 
( 
$str '
,' (
$str) d
)d e
;e f
} 	
private   
const   
int   
stencilBits   %
=  & '
$num  ( )
;  ) *
private!! 
const!! 
int!! 
minStencilValue!! )
=!!* +
$num!!, -
;!!- .
private"" 
const"" 
int"" 
maxStencilValue"" )
=""* +
("", -
$num""- .
<<""/ 1
stencilBits""2 =
)""= >
-""? @
$num""A B
;""B C
private%% 
SerializedProperty%% "
m_OverrideStencil%%# 4
;%%4 5
private&& 
SerializedProperty&& "
m_StencilIndex&&# 1
;&&1 2
private'' 
SerializedProperty'' "
m_StencilFunction''# 4
;''4 5
private(( 
SerializedProperty(( "

;((0 1
private)) 
SerializedProperty)) "

;))0 1
private** 
SerializedProperty** "
m_StencilZFail**# 1
;**1 2
private++ 
List++ 
<++ 
SerializedObject++ %
>++% &
m_properties++' 3
=++4 5
new++6 9
List++: >
<++> ?
SerializedObject++? O
>++O P
(++P Q
)++Q R
;++R S
void,, 
Init,,
(,, 
SerializedProperty,, $
property,,% -
),,- .
{-- 	
m_OverrideStencil// 
=// 
property//  (
.//( ) 
FindPropertyRelative//) =
(//= >
$str//> T
)//T U
;//U V
m_StencilIndex00 
=00 
property00 %
.00% & 
FindPropertyRelative00& :
(00: ;
$str00; M
)00M N
;00N O
m_StencilFunction11 
=11 
property11  (
.11( ) 
FindPropertyRelative11) =
(11= >
$str11> V
)11V W
;11W X

=22 
property22 $
.22$ % 
FindPropertyRelative22% 9
(229 :
$str22: I
)22I J
;22J K

=33 
property33 $
.33$ % 
FindPropertyRelative33% 9
(339 :
$str33: I
)33I J
;33J K
m_StencilZFail44 
=44 
property44 %
.44% & 
FindPropertyRelative44& :
(44: ;
$str44; K
)44K L
;44L M
m_properties66 
.66 
Add66 
(66 
property66 %
.66% &
serializedObject66& 6
)666 7
;667 8
}77 	
public99 
override99 
void99 
OnGUI99 "
(99" #
Rect99# '
rect99( ,
,99, -
SerializedProperty99. @
property99A I
,99I J

GUIContent99K U
label99V [
)99[ \
{:: 	
if;; 
(;; 
!;; 
m_properties;; 
.;; 
Contains;; %
(;;% &
property;;& .
.;;. /
serializedObject;;/ ?
);;? @
);;@ A
Init<< 
(<< 
property<< 
)<< 
;<< 
rect>> 
.>> 
height>> 
=>> 
EditorGUIUtility>> *
.>>* +
singleLineHeight>>+ ;
;>>; <
	EditorGUI@@ 
.@@ 

(@@# $
rect@@$ (
,@@( )
m_OverrideStencil@@* ;
,@@; <
Styles@@= C
.@@C D
overrideStencil@@D S
)@@S T
;@@T U
ifAA 
(AA 
m_OverrideStencilAA !
.AA! "
	boolValueAA" +
)AA+ ,
{BB 
	EditorGUICC 
.CC 
indentLevelCC %
++CC% '
;CC' (
rectDD 
.DD 
yDD 
+=DD 
EditorUtilsDD %
.DD% &
StylesDD& ,
.DD, -
defaultLineSpaceDD- =
;DD= >
	EditorGUIFF 
.FF 
BeginChangeCheckFF *
(FF* +
)FF+ ,
;FF, -
varGG 

stencilValGG 
=GG  
m_StencilIndexGG! /
.GG/ 0
intValueGG0 8
;GG8 9

stencilValHH 
=HH 
	EditorGUIHH &
.HH& '
	IntSliderHH' 0
(HH0 1
rectHH1 5
,HH5 6
StylesHH7 =
.HH= >
stencilValueHH> J
,HHJ K

stencilValHHL V
,HHV W
minStencilValueHHX g
,HHg h
maxStencilValueHHi x
)HHx y
;HHy z
ifII 
(II 
	EditorGUIII 
.II 
EndChangeCheckII ,
(II, -
)II- .
)II. /
m_StencilIndexJJ "
.JJ" #
intValueJJ# +
=JJ, -

stencilValJJ. 8
;JJ8 9
rectKK 
.KK 
yKK 
+=KK 
EditorUtilsKK %
.KK% &
StylesKK& ,
.KK, -
defaultLineSpaceKK- =
;KK= >
	EditorGUIMM 
.MM 

(MM' (
rectMM( ,
,MM, -
m_StencilFunctionMM. ?
,MM? @
StylesMMA G
.MMG H
stencilFunctionMMH W
)MMW X
;MMX Y
rectNN 
.NN 
yNN 
+=NN 
EditorUtilsNN %
.NN% &
StylesNN& ,
.NN, -
defaultLineSpaceNN- =
;NN= >
	EditorGUIOO 
.OO 
indentLevelOO %
++OO% '
;OO' (
	EditorGUIPP 
.PP 

(PP' (
rectPP( ,
,PP, -

,PP; <
StylesPP= C
.PPC D
stencilPassPPD O
)PPO P
;PPP Q
rectQQ 
.QQ 
yQQ 
+=QQ 
EditorUtilsQQ %
.QQ% &
StylesQQ& ,
.QQ, -
defaultLineSpaceQQ- =
;QQ= >
	EditorGUIRR 
.RR 

(RR' (
rectRR( ,
,RR, -

,RR; <
StylesRR= C
.RRC D
stencilFailRRD O
)RRO P
;RRP Q
rectSS 
.SS 
ySS 
+=SS 
EditorUtilsSS %
.SS% &
StylesSS& ,
.SS, -
defaultLineSpaceSS- =
;SS= >
	EditorGUITT 
.TT 
indentLevelTT %
--TT% '
;TT' (
	EditorGUIVV 
.VV 

(VV' (
rectVV( ,
,VV, -
m_StencilZFailVV. <
,VV< =
StylesVV> D
.VVD E
stencilZFailVVE Q
)VVQ R
;VVR S
	EditorGUIWW 
.WW 
indentLevelWW %
--WW% '
;WW' (
}XX 
}YY 	
public[[ 
override[[ 
float[[ 
GetPropertyHeight[[ /
([[/ 0
SerializedProperty[[0 B
property[[C K
,[[K L

GUIContent[[M W
label[[X ]
)[[] ^
{\\ 	
if]] 
(]] 
m_OverrideStencil]] !
!=]]" $
null]]% )
&&]]* ,
m_OverrideStencil]]- >
.]]> ?
	boolValue]]? H
)]]H I
return^^ 
EditorUtils^^ "
.^^" #
Styles^^# )
.^^) *
defaultLineSpace^^* :
*^^; <
$num^^= >
;^^> ?
return__ 
EditorUtils__ 
.__ 
Styles__ %
.__% &
defaultLineSpace__& 6
*__7 8
$num__9 :
;__: ;
}`` 	
}aa 
}bb �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\IEditablePath.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
	interface

:% &
ISelectable' 2
<2 3
Vector33 :
>: ;
{ 
	ShapeType 
	shapeType 
{ 
get !
;! "
set# &
;& '
}( )
IUndoObject		 

undoObject		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,

ISelection

 
<

 
int

 
>

 
	selection

 !
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
) *
	Matrix4x4 
localToWorldMatrix $
{% &
get' *
;* +
set, /
;/ 0
}1 2
Vector3 
forward 
{ 
get 
; 
set "
;" #
}$ %
Vector3
up
{
get
;
set
;
}
Vector3 
right 
{ 
get 
; 
set  
;  !
}" #
bool 
isOpenEnded
{ 
get 
; 
set  #
;# $
}% &
int 

pointCount 
{ 
get 
; 
} 
ControlPoint 
GetPoint 
( 
int !
index" '
)' (
;( )
void 
SetPoint
( 
int 
index 
,  
ControlPoint! -
controlPoint. :
): ;
;; <
void 
AddPoint
( 
ControlPoint "
controlPoint# /
)/ 0
;0 1
void 
InsertPoint
( 
int 
index "
," #
ControlPoint$ 0
controlPoint1 =
)= >
;> ?
void 
RemovePoint
( 
int 
index "
)" #
;# $
void 
Clear
( 
) 
; 
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\EditorUtils.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
public 

static 
class 
ResourceGuid $
{ 
public 
static 
readonly 
string %
rendererTemplate& 6
=7 8
$str9 [
;[ \
} 
} 
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
static 

partial 
class 
EditorUtils $
{ 
public 
const 
int -
!lwrpAssetCreateMenuPriorityGroup1 :
=; <
	CoreUtils= F
.F G$
assetCreateMenuPriority1G _
;_ `
public 
const 
int -
!lwrpAssetCreateMenuPriorityGroup2 :
=; <
	CoreUtils= F
.F G$
assetCreateMenuPriority1G _
+` a
$numb d
;d e
public 
const 
int -
!lwrpAssetCreateMenuPriorityGroup3 :
=; <-
!lwrpAssetCreateMenuPriorityGroup2= ^
+_ `
$numa c
;c d
internal 
enum 
Unit 
{ 
Metric #
,# $
Percent% ,
}- .
internal 
class 
Styles 
{   	
public"" 
static"" 
float"" 
defaultLineSpace""  0
=""1 2
EditorGUIUtility""3 C
.""C D
singleLineHeight""D T
+""U V
EditorGUIUtility""W g
.""g h#
standardVerticalSpacing""h 
;	"" �
}## 	
static%% 
float%% 
[%% 
]%% 
	splitZero%%  
=%%! "
new%%# &
float%%' ,
[%%, -
$num%%- .
]%%. /
;%%/ 0
static&& 
float&& 
[&& 
]&& 
splitOne&& 
=&&  !
new&&" %
float&&& +
[&&+ ,
$num&&, -
]&&- .
;&&. /
static'' 
float'' 
['' 
]'' 
splitTwo'' 
=''  !
new''" %
float''& +
[''+ ,
$num'', -
]''- .
;''. /
static(( 
float(( 
[(( 
](( 

splitThree(( !
=((" #
new(($ '
float((( -
[((- .
$num((. /
]((/ 0
;((0 1
static)) 
int)) 

splitCount)) 
;)) 
public** 
static** 
void** 
DrawCascadeSplitGUI** .
<**. /
T**/ 0
>**0 1
(**1 2
ref**2 5
SerializedProperty**6 H
shadowCascadeSplit**I [
,**[ \
float**] b
distance**c k
,**k l
int**m p
cascadeCount**q }
,**} ~
Unit	** �
unit
**� �
)
**� �
{++ 	
if,, 
(,, 
cascadeCount,, 
<=,, 
$num,,  !
),,! "
{-- 
throw.. 
new.. 
ArgumentException.. +
(..+ ,
$".., .
Cascade value (... =
{..= >
cascadeCount..> J
}..J K#
) needs to be positive...K b
"..b c
)..c d
;..d e
}// 

splitCount11 
=11 
cascadeCount11 %
-11& '
$num11( )
;11) *
if22 
(22 

splitCount22 
==22 
$num22 
)22  
{33 
ShadowCascadeSplitGUI44 %
.44% &"
HandleCascadeSliderGUI44& <
(44< =
ref44= @
	splitZero44A J
,44J K
distance44L T
,44T U
unit44V Z
)44Z [
;44[ \
return55 
;55 
}66 
Type88 
type88 
=88 
typeof88 
(88 
T88  
)88  !
;88! "
if99 
(99 
type99 
==99 
typeof99 
(99 
float99 $
)99$ %
)99% &
{:: 
DrawFloatGUI;; 
(;; 
ref;;  
shadowCascadeSplit;;! 3
,;;3 4
distance;;5 =
,;;= >
unit;;? C
);;C D
;;;D E
}<< 
else== 
if== 
(== 
type== 
==== 
typeof== #
(==# $
Vector2==$ +
)==+ ,
)==, -
{>> 
DrawVector2GUI?? 
(?? 
ref?? "
shadowCascadeSplit??# 5
,??5 6
distance??7 ?
,??? @
unit??A E
)??E F
;??F G
}@@ 
elseAA 
ifAA 
(AA 
typeAA 
==AA 
typeofAA #
(AA# $
Vector3AA$ +
)AA+ ,
)AA, -
{BB 
DrawVector3GUICC 
(CC 
refCC "
shadowCascadeSplitCC# 5
,CC5 6
distanceCC7 ?
,CC? @
unitCCA E
)CCE F
;CCF G
}DD 
}EE 	
privateGG 
staticGG 
voidGG 
DrawFloatGUIGG (
(GG( )
refGG) ,
SerializedPropertyGG- ?
shadowCascadeSplitGG@ R
,GGR S
floatGGT Y
distanceGGZ b
,GGb c
UnitGGd h
unitGGi m
)GGm n
{HH 	
splitOneII 
[II 
$numII 
]II 
=II 
shadowCascadeSplitII ,
.II, -

floatValueII- 7
;II7 8
varJJ 
valueJJ 
=JJ 
shadowCascadeSplitJJ *
.JJ* +

floatValueJJ+ 5
;JJ5 6
floatKK 
	unitValueKK 
=KK 
$numKK  
;KK  !
	EditorGUILL 
.LL 
BeginChangeCheckLL &
(LL& '
)LL' (
;LL( )
ifMM 
(MM 
unitMM 
==MM 
UnitMM 
.MM 
MetricMM #
)MM# $
{NN 
	unitValueOO 
=OO 
EditorGUILayoutOO +
.OO+ ,
SliderOO, 2
(OO2 3
EditorGUIUtilityOO3 C
.OOC D

(OOQ R
$"OOR T
Split OOT Z
{OOZ [
$numOO[ \
}OO\ ]
"OO] ^
,OO^ _
$strOO` b
)OOb c
,OOc d
(OOe f
floatOOf k
)OOk l
MathOOl p
.OOp q
RoundOOq v
(OOv w
valueOOw |
*OO} ~
distance	OO �
,
OO� �
$num
OO� �
)
OO� �
,
OO� �
$num
OO� �
,
OO� �
distance
OO� �
,
OO� �
null
OO� �
)
OO� �
;
OO� �
}PP 
elseQQ 
ifQQ 
(QQ 
unitQQ 
==QQ 
UnitQQ !
.QQ! "
PercentQQ" )
)QQ) *
{RR 
varSS 
posPercSS 
=SS 
MathfSS #
.SS# $
ClampSS$ )
(SS) *
valueSS* /
,SS/ 0
$numSS1 6
,SS6 7
distanceSS8 @
)SS@ A
*SSB C
$numSSD H
;SSH I
varTT 
	percValueTT 
=TT 
EditorGUILayoutTT  /
.TT/ 0
SliderTT0 6
(TT6 7
EditorGUIUtilityTT7 G
.TTG H

(TTU V
$"TTV X
Split TTX ^
{TT^ _
$numTT_ `
}TT` a
"TTa b
,TTb c
$strTTd f
)TTf g
,TTg h
(TTi j
floatTTj o
)TTo p
MathTTp t
.TTt u
RoundTTu z
(TTz {
posPerc	TT{ �
,
TT� �
$num
TT� �
)
TT� �
,
TT� �
$num
TT� �
,
TT� �
$num
TT� �
,
TT� �
null
TT� �
)
TT� �
;
TT� �
	unitValueUU 
=UU 
	percValueUU %
/UU& '
$numUU( +
;UU+ ,
}VV 
ifXX 
(XX 
	EditorGUIXX 
.XX 
EndChangeCheckXX (
(XX( )
)XX) *
)XX* +
{YY 
floatZZ 
	percValueZZ 
=ZZ  !
$numZZ" $
;ZZ$ %
if[[ 
([[ 
unit[[ 
==[[ 
Unit[[  
.[[  !
Metric[[! '
)[[' (
{\\ 
var]] 
posMeter]]  
=]]! "
Mathf]]# (
.]]( )
Clamp]]) .
(]]. /
	unitValue]]/ 8
,]]8 9
$num]]: ?
,]]? @
distance]]A I
)]]I J
;]]J K
	percValue^^ 
=^^ 
posMeter^^  (
/^^) *
distance^^+ 3
;^^3 4
}__ 
else`` 
if`` 
(`` 
unit`` 
==``  
Unit``! %
.``% &
Percent``& -
)``- .
{aa 
	percValuebb 
=bb 
	unitValuebb  )
;bb) *
}cc 
shadowCascadeSplitee "
.ee" #

floatValueee# -
=ee. /
	percValueee0 9
;ee9 :
}ff 
	EditorGUIhh 
.hh 
BeginChangeCheckhh &
(hh& '
)hh' (
;hh( )!
ShadowCascadeSplitGUIii !
.ii! ""
HandleCascadeSliderGUIii" 8
(ii8 9
refii9 <
splitOneii= E
,iiE F
distanceiiG O
,iiO P
unitiiQ U
)iiU V
;iiV W
ifjj 
(jj 
	EditorGUIjj 
.jj 
EndChangeCheckjj (
(jj( )
)jj) *
)jj* +
{kk 
shadowCascadeSplitll "
.ll" #

floatValuell# -
=ll. /
splitOnell0 8
[ll8 9
$numll9 :
]ll: ;
;ll; <
}mm 
}nn 	
privatepp 
staticpp 
voidpp 
DrawVector2GUIpp *
(pp* +
refpp+ .
SerializedPropertypp/ A
shadowCascadeSplitppB T
,ppT U
floatppV [
distancepp\ d
,ppd e
Unitppf j
unitppk o
)ppo p
{qq 	
Vector2rr 
splitsrr 
=rr 
shadowCascadeSplitrr /
.rr/ 0
vector2Valuerr0 <
;rr< =
splitTwoss 
[ss 
$numss 
]ss 
=ss 
Mathfss 
.ss  
Clampss  %
(ss% &
splitsss& ,
[ss, -
$numss- .
]ss. /
,ss/ 0
$numss1 5
,ss5 6
$numss7 ;
)ss; <
;ss< =
splitTwott 
[tt 
$numtt 
]tt 
=tt 
Mathftt 
.tt  
Clamptt  %
(tt% &
splitstt& ,
[tt, -
$numtt- .
]tt. /
-tt0 1
splitstt2 8
[tt8 9
$numtt9 :
]tt: ;
,tt; <
$numtt= A
,ttA B
$numttC G
)ttG H
;ttH I
forvv 
(vv 
intvv 
ivv 
=vv 
$numvv 
;vv 
ivv 
<vv 

splitCountvv  *
;vv* +
++vv, .
ivv. /
)vv/ 0
{ww 
varxx 
	vec2valuexx 
=xx 
shadowCascadeSplitxx  2
.xx2 3
vector2Valuexx3 ?
;xx? @
varyy 
	thresholdyy 
=yy 
$numyy  $
/yy% &
distanceyy' /
;yy/ 0
floatzz 
	unitValuezz 
=zz  !
$numzz" $
;zz$ %
	EditorGUI|| 
.|| 
BeginChangeCheck|| *
(||* +
)||+ ,
;||, -
if}} 
(}} 
unit}} 
==}} 
Unit}}  
.}}  !
Metric}}! '
)}}' (
{~~ 
	unitValue 
= 
EditorGUILayout  /
./ 0
Slider0 6
(6 7
EditorGUIUtility7 G
.G H

(U V
$"V X
Split X ^
{^ _
i_ `
+a b
$numc d
}d e
"e f
,f g
$strh j
)j k
,k l
(m n
floatn s
)s t
Matht x
.x y
Roundy ~
(~ 
	vec2value	 �
[
� �
i
� �
]
� �
*
� �
distance
� �
,
� �
$num
� �
)
� �
,
� �
$num
� �
,
� �
distance
� �
,
� �
null
� �
)
� �
;
� �
}
�� 
else
�� 
if
�� 
(
�� 
unit
�� 
==
��  
Unit
��! %
.
��% &
Percent
��& -
)
��- .
{
�� 
var
�� 
posPerc
�� 
=
��  !
Mathf
��" '
.
��' (
Clamp
��( -
(
��- .
	vec2value
��. 7
[
��7 8
i
��8 9
]
��9 :
,
��: ;
$num
��< A
,
��A B
distance
��C K
)
��K L
*
��M N
$num
��O S
;
��S T
var
�� 
	percValue
�� !
=
��" #
EditorGUILayout
��$ 3
.
��3 4
Slider
��4 :
(
��: ;
EditorGUIUtility
��; K
.
��K L

��L Y
(
��Y Z
$"
��Z \
Split 
��\ b
{
��b c
i
��c d
+
��e f
$num
��g h
}
��h i
"
��i j
,
��j k
$str
��l n
)
��n o
,
��o p
(
��q r
float
��r w
)
��w x
Math
��x |
.
��| }
Round��} �
(��� �
posPerc��� �
,��� �
$num��� �
)��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
null��� �
)��� �
;��� �
	unitValue
�� 
=
�� 
	percValue
��  )
/
��* +
$num
��, 0
;
��0 1
}
�� 
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
�� 
float
�� 
	percValue
�� #
=
��$ %
$num
��& (
;
��( )
if
�� 
(
�� 
unit
�� 
==
�� 
Unit
��  $
.
��$ %
Metric
��% +
)
��+ ,
{
�� 
var
�� 
posMeter
�� $
=
��% &
Mathf
��' ,
.
��, -
Clamp
��- 2
(
��2 3
	unitValue
��3 <
,
��< =
$num
��> C
,
��C D
distance
��E M
)
��M N
;
��N O
	percValue
�� !
=
��" #
posMeter
��$ ,
/
��- .
distance
��/ 7
;
��7 8
}
�� 
else
�� 
if
�� 
(
�� 
unit
�� !
==
��" $
Unit
��% )
.
��) *
Percent
��* 1
)
��1 2
{
�� 
	percValue
�� !
=
��" #
	unitValue
��$ -
;
��- .
}
�� 
if
�� 
(
�� 
i
�� 
<
�� 

splitCount
�� &
-
��' (
$num
��) *
)
��* +
{
�� 
	percValue
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
(
��- .
	percValue
��. 7
)
��7 8
,
��8 9
(
��: ;
	vec2value
��; D
[
��D E
i
��E F
+
��G H
$num
��I J
]
��J K
-
��L M
	threshold
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
if
�� 
(
�� 
i
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 
	percValue
�� !
=
��" #
Math
��$ (
.
��( )
Max
��) ,
(
��, -
(
��- .
	percValue
��. 7
)
��7 8
,
��8 9
(
��: ;
	vec2value
��; D
[
��D E
i
��E F
-
��G H
$num
��I J
]
��J K
+
��L M
	threshold
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
	vec2value
�� 
[
�� 
i
�� 
]
��  
=
��! "
	percValue
��# ,
;
��, - 
shadowCascadeSplit
�� &
.
��& '
vector2Value
��' 3
=
��4 5
	vec2value
��6 ?
;
��? @
}
�� 
}
�� 
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
��( )#
ShadowCascadeSplitGUI
�� !
.
��! "$
HandleCascadeSliderGUI
��" 8
(
��8 9
ref
��9 <
splitTwo
��= E
,
��E F
distance
��G O
,
��O P
unit
��Q U
)
��U V
;
��V W
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
�� 
Vector2
�� 
updatedValue
�� $
=
��% &
new
��' *
Vector2
��+ 2
(
��2 3
)
��3 4
;
��4 5
updatedValue
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
splitTwo
��" *
[
��* +
$num
��+ ,
]
��, -
;
��- .
updatedValue
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
updatedValue
��" .
[
��. /
$num
��/ 0
]
��0 1
+
��2 3
splitTwo
��4 <
[
��< =
$num
��= >
]
��> ?
;
��? @ 
shadowCascadeSplit
�� "
.
��" #
vector2Value
��# /
=
��0 1
updatedValue
��2 >
;
��> ?
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
DrawVector3GUI
�� *
(
��* +
ref
��+ . 
SerializedProperty
��/ A 
shadowCascadeSplit
��B T
,
��T U
float
��V [
distance
��\ d
,
��d e
Unit
��f j
unit
��k o
)
��o p
{
�� 	
Vector3
�� 
splits
�� 
=
��  
shadowCascadeSplit
�� /
.
��/ 0
vector3Value
��0 <
;
��< =

splitThree
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Mathf
�� !
.
��! "
Clamp
��" '
(
��' (
splits
��( .
[
��. /
$num
��/ 0
]
��0 1
,
��1 2
$num
��3 7
,
��7 8
$num
��9 =
)
��= >
;
��> ?

splitThree
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Mathf
�� !
.
��! "
Clamp
��" '
(
��' (
splits
��( .
[
��. /
$num
��/ 0
]
��0 1
-
��2 3
splits
��4 :
[
��: ;
$num
��; <
]
��< =
,
��= >
$num
��? C
,
��C D
$num
��E I
)
��I J
;
��J K

splitThree
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
Mathf
�� !
.
��! "
Clamp
��" '
(
��' (
splits
��( .
[
��. /
$num
��/ 0
]
��0 1
-
��2 3
splits
��4 :
[
��: ;
$num
��; <
]
��< =
,
��= >
$num
��? C
,
��C D
$num
��E I
)
��I J
;
��J K
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
�� 

splitCount
��  *
;
��* +
++
��, .
i
��. /
)
��/ 0
{
�� 
var
�� 
	vec3value
�� 
=
��  
shadowCascadeSplit
��  2
.
��2 3
vector3Value
��3 ?
;
��? @
var
�� 
	threshold
�� 
=
�� 
$num
��  $
/
��% &
distance
��' /
;
��/ 0
float
�� 
	unitValue
�� 
=
��  !
$num
��" $
;
��$ %
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
��, -
if
�� 
(
�� 
unit
�� 
==
�� 
Unit
��  
.
��  !
Metric
��! '
)
��' (
{
�� 
	unitValue
�� 
=
�� 
EditorGUILayout
��  /
.
��/ 0
Slider
��0 6
(
��6 7
EditorGUIUtility
��7 G
.
��G H

��H U
(
��U V
$"
��V X
Split 
��X ^
{
��^ _
i
��_ `
+
��a b
$num
��c d
}
��d e
"
��e f
,
��f g
$str
��h j
)
��j k
,
��k l
(
��m n
float
��n s
)
��s t
Math
��t x
.
��x y
Round
��y ~
(
��~ 
	vec3value�� �
[��� �
i��� �
]��� �
*��� �
distance��� �
,��� �
$num��� �
)��� �
,��� �
$num��� �
,��� �
distance��� �
,��� �
null��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
unit
�� 
==
��  
Unit
��! %
.
��% &
Percent
��& -
)
��- .
{
�� 
var
�� 
posPerc
�� 
=
��  !
Mathf
��" '
.
��' (
Clamp
��( -
(
��- .
	vec3value
��. 7
[
��7 8
i
��8 9
]
��9 :
,
��: ;
$num
��< A
,
��A B
distance
��C K
)
��K L
*
��M N
$num
��O S
;
��S T
var
�� 
	percValue
�� !
=
��" #
EditorGUILayout
��$ 3
.
��3 4
Slider
��4 :
(
��: ;
EditorGUIUtility
��; K
.
��K L

��L Y
(
��Y Z
$"
��Z \
Split 
��\ b
{
��b c
i
��c d
+
��e f
$num
��g h
}
��h i
"
��i j
,
��j k
$str
��l n
)
��n o
,
��o p
(
��q r
float
��r w
)
��w x
Math
��x |
.
��| }
Round��} �
(��� �
posPerc��� �
,��� �
$num��� �
)��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
null��� �
)��� �
;��� �
	unitValue
�� 
=
�� 
	percValue
��  )
/
��* +
$num
��, 0
;
��0 1
}
�� 
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
�� 
float
�� 
	percValue
�� #
=
��$ %
$num
��& (
;
��( )
if
�� 
(
�� 
unit
�� 
==
�� 
Unit
��  $
.
��$ %
Metric
��% +
)
��+ ,
{
�� 
var
�� 
posMeter
�� $
=
��% &
Mathf
��' ,
.
��, -
Clamp
��- 2
(
��2 3
	unitValue
��3 <
,
��< =
$num
��> C
,
��C D
distance
��E M
)
��M N
;
��N O
	percValue
�� !
=
��" #
posMeter
��$ ,
/
��- .
distance
��/ 7
;
��7 8
}
�� 
else
�� 
if
�� 
(
�� 
unit
�� !
==
��" $
Unit
��% )
.
��) *
Percent
��* 1
)
��1 2
{
�� 
	percValue
�� !
=
��" #
	unitValue
��$ -
;
��- .
}
�� 
if
�� 
(
�� 
i
�� 
<
�� 

splitCount
�� &
-
��' (
$num
��) *
)
��* +
{
�� 
	percValue
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
(
��- .
	percValue
��. 7
)
��7 8
,
��8 9
(
��: ;
	vec3value
��; D
[
��D E
i
��E F
+
��G H
$num
��I J
]
��J K
-
��L M
	threshold
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
if
�� 
(
�� 
i
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 
	percValue
�� !
=
��" #
Math
��$ (
.
��( )
Max
��) ,
(
��, -
(
��- .
	percValue
��. 7
)
��7 8
,
��8 9
(
��: ;
	vec3value
��; D
[
��D E
i
��E F
-
��G H
$num
��I J
]
��J K
+
��L M
	threshold
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
	vec3value
�� 
[
�� 
i
�� 
]
��  
=
��! "
	percValue
��# ,
;
��, - 
shadowCascadeSplit
�� &
.
��& '
vector3Value
��' 3
=
��4 5
	vec3value
��6 ?
;
��? @
}
�� 
}
�� 
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
��( )#
ShadowCascadeSplitGUI
�� !
.
��! "$
HandleCascadeSliderGUI
��" 8
(
��8 9
ref
��9 <

splitThree
��= G
,
��G H
distance
��I Q
,
��Q R
unit
��S W
)
��W X
;
��X Y
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
�� 
Vector3
�� 
updatedValue
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
)
��3 4
;
��4 5
updatedValue
�� 
[
�� 
$num
�� 
]
�� 
=
��  !

splitThree
��" ,
[
��, -
$num
��- .
]
��. /
;
��/ 0
updatedValue
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
updatedValue
��" .
[
��. /
$num
��/ 0
]
��0 1
+
��2 3

splitThree
��4 >
[
��> ?
$num
��? @
]
��@ A
;
��A B
updatedValue
�� 
[
�� 
$num
�� 
]
�� 
=
��  !
updatedValue
��" .
[
��. /
$num
��/ 0
]
��0 1
+
��2 3

splitThree
��4 >
[
��> ?
$num
��? @
]
��@ A
;
��A B 
shadowCascadeSplit
�� "
.
��" #
vector3Value
��# /
=
��0 1
updatedValue
��2 >
;
��> ?
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\EditablePathExtensions.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
static
class "
EditablePathExtensions 0
{		 
public

 
static

 
Polygon

 
	ToPolygon

 '
(

' (
this

( ,


- :
path

; ?
)

? @
{ 	
var 
polygon 
= 
new 
Polygon %
(% &
)& '
{
isOpenEnded 
= 
path !
.! "
isOpenEnded" -
,- .
points 
= 
new 
Vector3 #
[# $
path$ (
.( )

pointCount) 3
]3 4
} 
;
for 
( 
var 
i 
= 
$num 
; 
i 
< 
path  $
.$ %

pointCount% /
;/ 0
++1 3
i3 4
)4 5
polygon 
. 
points 
[ 
i  
]  !
=" #
path$ (
.( )
GetPoint) 1
(1 2
i2 3
)3 4
.4 5
position5 =
;= >
return 
polygon 
; 
} 	
public 
static 
Spline 
ToSpline %
(% &
this& *

path9 =
)= >
{ 	
var 
count 
= 
path 
. 

pointCount '
*( )
$num* +
;+ ,
if 
( 
path 
. 
isOpenEnded  
)  !
count 
-= 
$num 
; 
var 
spline 
= 
new 
Spline #
(# $
)$ %
{   
isOpenEnded!! 
=!! 
path!! !
.!!! "
isOpenEnded!!" -
,!!- .
points"" 
="" 
new"" 
Vector3"" #
[""# $
count""$ )
]"") *
}## 
;##
for%% 
(%% 
var%% 
i%% 
=%% 
$num%% 
;%% 
i%% 
<%% 
path%%  $
.%%$ %

pointCount%%% /
;%%/ 0
++%%1 3
i%%3 4
)%%4 5
{&& 
var'' 
point'' 
='' 
path''  
.''  !
GetPoint''! )
('') *
i''* +
)''+ ,
;'', -
spline)) 
.)) 
points)) 
[)) 
i)) 
*))  
$num))  !
]))! "
=))# $
point))% *
.))* +
position))+ 3
;))3 4
if++ 
(++ 
i++ 
*++ 
$num++ 
+++ 
$num++ 
<++ 
count++  %
)++% &
{,, 
var-- 
	nextIndex-- !
=--" #
EditablePathUtility--$ 7
.--7 8
Mod--8 ;
(--; <
i--< =
+--= >
$num--> ?
,--? @
path--A E
.--E F

pointCount--F P
)--P Q
;--Q R
spline// 
.// 
points// !
[//! "
i//" #
*//# $
$num//$ %
+//& '
$num//( )
]//) *
=//+ ,
path//- 1
.//1 2!
CalculateRightTangent//2 G
(//G H
i//H I
)//I J
;//J K
spline00 
.00 
points00 !
[00! "
i00" #
*00# $
$num00$ %
+00& '
$num00( )
]00) *
=00+ ,
path00- 1
.001 2 
CalculateLeftTangent002 F
(00F G
	nextIndex00G P
)00P Q
;00Q R
}11 
}22 
return44 
spline44 
;44 
}55 	
public77 
static77 
Vector377 %
CalculateLocalLeftTangent77 7
(777 8
this778 <

path77K O
,77O P
int77Q T
index77U Z
)77Z [
{88 	
return99 
path99 
.99  
CalculateLeftTangent99 ,
(99, -
index99- 2
)992 3
-994 5
path996 :
.99: ;
GetPoint99; C
(99C D
index99D I
)99I J
.99J K
position99K S
;99S T
}:: 	
public<< 
static<< 
Vector3<<  
CalculateLeftTangent<< 2
(<<2 3
this<<3 7

path<<F J
,<<J K
int<<L O
index<<P U
)<<U V
{== 	
var>> 
point>> 
=>> 
path>> 
.>> 
GetPoint>> %
(>>% &
index>>& +
)>>+ ,
;>>, -
var?? 
isTangentLinear?? 
=??  !
point??" '
.??' (
localLeftTangent??( 8
==??9 ;
Vector3??< C
.??C D
zero??D H
;??H I
var@@ 

isEndpoint@@ 
=@@ 
path@@ !
.@@! "
isOpenEnded@@" -
&&@@. 0
index@@1 6
==@@7 9
$num@@: ;
;@@; <
varAA 
tangentAA 
=AA 
pointAA 
.AA  
leftTangentAA  +
;AA+ ,
ifCC 
(CC 

isEndpointCC 
)CC 
returnDD 
pointDD 
.DD 
positionDD %
;DD% &
ifFF 
(FF 
isTangentLinearFF 
)FF  
{GG 
varHH 
	prevPointHH 
=HH 
pathHH  $
.HH$ %
GetPrevPointHH% 1
(HH1 2
indexHH2 7
)HH7 8
;HH8 9
varII 
vII 
=II 
	prevPointII !
.II! "
positionII" *
-II+ ,
pointII- 2
.II2 3
positionII3 ;
;II; <
tangentJJ 
=JJ 
pointJJ 
.JJ  
positionJJ  (
+JJ) *
vJJ+ ,
.JJ, -

normalizedJJ- 7
*JJ8 9
(JJ: ;
vJJ; <
.JJ< =
	magnitudeJJ= F
/JJG H
$numJJI K
)JJK L
;JJL M
}KK 
returnMM 
tangentMM 
;MM 
}NN 	
publicPP 
staticPP 
Vector3PP &
CalculateLocalRightTangentPP 8
(PP8 9
thisPP9 =

pathPPL P
,PPP Q
intPPR U
indexPPV [
)PP[ \
{QQ 	
returnRR 
pathRR 
.RR !
CalculateRightTangentRR -
(RR- .
indexRR. 3
)RR3 4
-RR5 6
pathRR7 ;
.RR; <
GetPointRR< D
(RRD E
indexRRE J
)RRJ K
.RRK L
positionRRL T
;RRT U
}SS 	
publicUU 
staticUU 
Vector3UU !
CalculateRightTangentUU 3
(UU3 4
thisUU4 8

pathUUG K
,UUK L
intUUM P
indexUUQ V
)UUV W
{VV 	
varWW 
pointWW 
=WW 
pathWW 
.WW 
GetPointWW %
(WW% &
indexWW& +
)WW+ ,
;WW, -
varXX 
isTangentLinearXX 
=XX  !
pointXX" '
.XX' (
localRightTangentXX( 9
==XX: <
Vector3XX= D
.XXD E
zeroXXE I
;XXI J
varYY 

isEndpointYY 
=YY 
pathYY !
.YY! "
isOpenEndedYY" -
&&YY. 0
indexYY1 6
==YY7 9
pathYY: >
.YY> ?

pointCountYY? I
-YYJ K
$numYYL M
;YYM N
varZZ 
tangentZZ 
=ZZ 
pointZZ 
.ZZ  
rightTangentZZ  ,
;ZZ, -
if\\ 
(\\ 

isEndpoint\\ 
)\\ 
return]] 
point]] 
.]] 
position]] %
;]]% &
if__ 
(__ 
isTangentLinear__ 
)__  
{`` 
varaa 
	nextPointaa 
=aa 
pathaa  $
.aa$ %
GetNextPointaa% 1
(aa1 2
indexaa2 7
)aa7 8
;aa8 9
varbb 
vbb 
=bb 
	nextPointbb !
.bb! "
positionbb" *
-bb+ ,
pointbb- 2
.bb2 3
positionbb3 ;
;bb; <
tangentcc 
=cc 
pointcc 
.cc  
positioncc  (
+cc) *
vcc+ ,
.cc, -

normalizedcc- 7
*cc8 9
(cc: ;
vcc; <
.cc< =
	magnitudecc= F
/ccG H
$numccI K
)ccK L
;ccL M
}dd 
returnff 
tangentff 
;ff 
}gg 	
publicii 
staticii 
ControlPointii "
GetPrevPointii# /
(ii/ 0
thisii0 4

pathiiC G
,iiG H
intiiI L
indexiiM R
)iiR S
{jj 	
returnkk 
pathkk 
.kk 
GetPointkk  
(kk  !
EditablePathUtilitykk! 4
.kk4 5
Modkk5 8
(kk8 9
indexkk9 >
-kk? @
$numkkA B
,kkB C
pathkkD H
.kkH I

pointCountkkI S
)kkS T
)kkT U
;kkU V
}ll 	
publicnn 
staticnn 
ControlPointnn "
GetNextPointnn# /
(nn/ 0
thisnn0 4

pathnnC G
,nnG H
intnnI L
indexnnM R
)nnR S
{oo 	
returnpp 
pathpp 
.pp 
GetPointpp  
(pp  !
EditablePathUtilitypp! 4
.pp4 5
Modpp5 8
(pp8 9
indexpp9 >
+pp? @
$numppA B
,ppB C
pathppD H
.ppH I

pointCountppI S
)ppS T
)ppT U
;ppU V
}qq 	
publicss 
staticss 
voidss 
UpdateTangentModess ,
(ss, -
thisss- 1

pathss@ D
,ssD E
intssF I
indexssJ O
)ssO P
{tt 	
varuu 
localToWorldMatrixuu "
=uu# $
pathuu% )
.uu) *
localToWorldMatrixuu* <
;uu< =
pathvv 
.vv 
localToWorldMatrixvv #
=vv$ %
	Matrix4x4vv& /
.vv/ 0
identityvv0 8
;vv8 9
varxx 
controlPointxx 
=xx 
pathxx #
.xx# $
GetPointxx$ ,
(xx, -
indexxx- 2
)xx2 3
;xx3 4
varyy 
isLeftTangentLinearyy #
=yy$ %
controlPointyy& 2
.yy2 3
localLeftTangentyy3 C
==yyD F
Vector3yyG N
.yyN O
zeroyyO S
;yyS T
varzz  
isRightTangentLinearzz $
=zz% &
controlPointzz' 3
.zz3 4
localRightTangentzz4 E
==zzF H
Vector3zzI P
.zzP Q
zerozzQ U
;zzU V
if|| 
(|| 
isLeftTangentLinear|| #
&&||$ & 
isRightTangentLinear||' ;
)||; <
controlPoint}} 
.}} 
tangentMode}} (
=}}) *
TangentMode}}+ 6
.}}6 7
Linear}}7 =
;}}= >
else~~ 
if~~ 
(~~ 
isLeftTangentLinear~~ (
||~~) + 
isRightTangentLinear~~, @
)~~@ A
controlPoint 
. 
tangentMode (
=) *
TangentMode+ 6
.6 7
Broken7 =
;= >
else
�� 
if
�� 
(
�� 
controlPoint
�� !
.
��! "
tangentMode
��" -
!=
��. 0
TangentMode
��1 <
.
��< =

Continuous
��= G
)
��G H
controlPoint
�� 
.
�� 
tangentMode
�� (
=
��) *
TangentMode
��+ 6
.
��6 7
Broken
��7 =
;
��= >
controlPoint
�� 
.
�� 

�� &
(
��& '
)
��' (
;
��( )
path
�� 
.
�� 
SetPoint
�� 
(
�� 
index
�� 
,
��  
controlPoint
��! -
)
��- .
;
��. /
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ % 
localToWorldMatrix
��& 8
;
��8 9
}
�� 	
public
�� 
static
�� 
void
�� $
UpdateTangentsFromMode
�� 1
(
��1 2
this
��2 6

��7 D
path
��E I
)
��I J
{
�� 	
const
�� 
float
�� 
kEpsilon
��  
=
��! "
$num
��# )
;
��) *
var
��  
localToWorldMatrix
�� "
=
��# $
path
��% )
.
��) * 
localToWorldMatrix
��* <
;
��< =
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ %
	Matrix4x4
��& /
.
��/ 0
identity
��0 8
;
��8 9
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
path
��  $
.
��$ %

pointCount
��% /
;
��/ 0
++
��1 3
i
��3 4
)
��4 5
{
�� 
var
�� 
controlPoint
��  
=
��! "
path
��# '
.
��' (
GetPoint
��( 0
(
��0 1
i
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
controlPoint
��  
.
��  !
tangentMode
��! ,
==
��- /
TangentMode
��0 ;
.
��; <
Linear
��< B
)
��B C
{
�� 
controlPoint
��  
.
��  !
localLeftTangent
��! 1
=
��2 3
Vector3
��4 ;
.
��; <
zero
��< @
;
��@ A
controlPoint
��  
.
��  !
localRightTangent
��! 2
=
��3 4
Vector3
��5 <
.
��< =
zero
��= A
;
��A B
}
�� 
else
�� 
if
�� 
(
�� 
controlPoint
�� %
.
��% &
tangentMode
��& 1
==
��2 4
TangentMode
��5 @
.
��@ A
Broken
��A G
)
��G H
{
�� 
var
�� 
isLeftEndpoint
�� &
=
��' (
path
��) -
.
��- .
isOpenEnded
��. 9
&&
��: <
i
��= >
==
��? A
$num
��B C
;
��C D
var
�� 
	prevPoint
�� !
=
��" #
path
��$ (
.
��( )
GetPrevPoint
��) 5
(
��5 6
i
��6 7
)
��7 8
;
��8 9
var
�� 
	nextPoint
�� !
=
��" #
path
��$ (
.
��( )
GetNextPoint
��) 5
(
��5 6
i
��6 7
)
��7 8
;
��8 9
var
��  
liniarLeftPosition
�� *
=
��+ ,
(
��- .
	prevPoint
��. 7
.
��7 8
position
��8 @
-
��A B
controlPoint
��C O
.
��O P
position
��P X
)
��X Y
/
��Z [
$num
��\ ^
;
��^ _
var
�� !
isLeftTangentLinear
�� +
=
��, -
isLeftEndpoint
��. <
||
��= ?
(
��@ A
controlPoint
��A M
.
��M N
localLeftTangent
��N ^
-
��_ ` 
liniarLeftPosition
��a s
)
��s t
.
��t u
sqrMagnitude��u �
<��� �
kEpsilon��� �
;��� �
if
�� 
(
�� !
isLeftTangentLinear
�� +
)
��+ ,
controlPoint
�� $
.
��$ %
localLeftTangent
��% 5
=
��6 7
Vector3
��8 ?
.
��? @
zero
��@ D
;
��D E
var
�� 
isRightEndpoint
�� '
=
��( )
path
��* .
.
��. /
isOpenEnded
��/ :
&&
��; =
i
��> ?
==
��@ B
path
��C G
.
��G H

pointCount
��H R
-
��R S
$num
��S T
;
��T U
var
�� !
liniarRightPosition
�� +
=
��, -
(
��. /
	nextPoint
��/ 8
.
��8 9
position
��9 A
-
��B C
controlPoint
��D P
.
��P Q
position
��Q Y
)
��Y Z
/
��[ \
$num
��] _
;
��_ `
var
�� "
isRightTangentLinear
�� ,
=
��- .
isRightEndpoint
��/ >
||
��? A
(
��B C
controlPoint
��C O
.
��O P
localRightTangent
��P a
-
��b c!
liniarRightPosition
��d w
)
��w x
.
��x y
sqrMagnitude��y �
<��� �
kEpsilon��� �
;��� �
if
�� 
(
�� "
isRightTangentLinear
�� ,
)
��, -
controlPoint
�� $
.
��$ %
localRightTangent
��% 6
=
��7 8
Vector3
��9 @
.
��@ A
zero
��A E
;
��E F
if
�� 
(
�� !
isLeftTangentLinear
�� +
&&
��, ."
isRightTangentLinear
��/ C
)
��C D
controlPoint
�� $
.
��$ %
tangentMode
��% 0
=
��1 2
TangentMode
��3 >
.
��> ?
Linear
��? E
;
��E F
}
�� 
else
�� 
if
�� 
(
�� 
controlPoint
�� %
.
��% &
tangentMode
��& 1
==
��2 4
TangentMode
��5 @
.
��@ A

Continuous
��A K
)
��K L
{
�� 
}
�� 
controlPoint
�� 
.
�� 

�� *
(
��* +
)
��+ ,
;
��, -
path
�� 
.
�� 
SetPoint
�� 
(
�� 
i
�� 
,
��  
controlPoint
��! -
)
��- .
;
��. /
}
�� 
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ % 
localToWorldMatrix
��& 8
;
��8 9
}
�� 	
public
�� 
static
�� 
void
�� 
SetTangentMode
�� )
(
��) *
this
��* .

��/ <
path
��= A
,
��A B
int
��C F
index
��G L
,
��L M
TangentMode
��N Y
tangentMode
��Z e
)
��e f
{
�� 	
var
��  
localToWorldMatrix
�� "
=
��# $
path
��% )
.
��) * 
localToWorldMatrix
��* <
;
��< =
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ %
	Matrix4x4
��& /
.
��/ 0
identity
��0 8
;
��8 9
var
�� 
controlPoint
�� 
=
�� 
path
�� #
.
��# $
GetPoint
��$ ,
(
��, -
index
��- 2
)
��2 3
;
��3 4
var
�� 

isEndpoint
�� 
=
�� 
path
�� !
.
��! "
isOpenEnded
��" -
&&
��. 0
(
��1 2
index
��2 7
==
��8 :
$num
��; <
||
��= ?
index
��@ E
==
��F H
path
��I M
.
��M N

pointCount
��N X
-
��Y Z
$num
��[ \
)
��\ ]
;
��] ^
var
�� 
oldTangentMode
�� 
=
��  
controlPoint
��! -
.
��- .
tangentMode
��. 9
;
��9 :
controlPoint
�� 
.
�� 
tangentMode
�� $
=
��% &
tangentMode
��' 2
;
��2 3
controlPoint
�� 
.
�� 
RestoreTangents
�� (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 
tangentMode
�� 
==
�� 
TangentMode
�� *
.
��* +
Linear
��+ 1
)
��1 2
{
�� 
controlPoint
�� 
.
�� 
localLeftTangent
�� -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
controlPoint
�� 
.
�� 
localRightTangent
�� .
=
��/ 0
Vector3
��1 8
.
��8 9
zero
��9 =
;
��= >
}
�� 
else
�� 
if
�� 
(
�� 
tangentMode
��  
==
��! #
TangentMode
��$ /
.
��/ 0

Continuous
��0 :
&&
��; =
!
��> ?

isEndpoint
��? I
)
��I J
{
�� 
var
�� 
isLeftLinear
��  
=
��! "
controlPoint
��# /
.
��/ 0
localLeftTangent
��0 @
==
��A C
Vector3
��D K
.
��K L
zero
��L P
;
��P Q
var
�� 

�� !
=
��" #
controlPoint
��$ 0
.
��0 1
localRightTangent
��1 B
==
��C E
Vector3
��F M
.
��M N
zero
��N R
;
��R S
var
�� 
tangentDotProduct
�� %
=
��& '
Vector3
��( /
.
��/ 0
Dot
��0 3
(
��3 4
controlPoint
��4 @
.
��@ A
localLeftTangent
��A Q
.
��Q R

normalized
��R \
,
��\ ]
controlPoint
��^ j
.
��j k
localRightTangent
��k |
.
��| }

normalized��} �
)��� �
;��� �
var
�� 
isContinous
�� 
=
��  !
tangentDotProduct
��" 3
<
��4 5
$num
��6 8
&&
��9 ;
(
��< =
tangentDotProduct
��= N
+
��O P
$num
��Q R
)
��R S
<
��T U
$num
��V \
;
��\ ]
var
�� 
isLinear
�� 
=
�� 
isLeftLinear
�� +
&&
��, .

��/ <
;
��< =
if
�� 
(
�� 
(
�� 
isLinear
�� 
||
��  
oldTangentMode
��! /
==
��0 2
TangentMode
��3 >
.
��> ?
Broken
��? E
)
��E F
&&
��G I
!
��J K
isContinous
��K V
)
��V W
{
�� 
var
�� 
	prevPoint
�� !
=
��" #
path
��$ (
.
��( )
GetPrevPoint
��) 5
(
��5 6
index
��6 ;
)
��; <
;
��< =
var
�� 
	nextPoint
�� !
=
��" #
path
��$ (
.
��( )
GetNextPoint
��) 5
(
��5 6
index
��6 ;
)
��; <
;
��< =
var
�� 
vLeft
�� 
=
�� 
	prevPoint
��  )
.
��) *
position
��* 2
-
��3 4
controlPoint
��5 A
.
��A B
position
��B J
;
��J K
var
�� 
vRight
�� 
=
��  
	nextPoint
��! *
.
��* +
position
��+ 3
-
��4 5
controlPoint
��6 B
.
��B C
position
��C K
;
��K L
var
�� 
rightDirection
�� &
=
��' (
Vector3
��) 0
.
��0 1
Cross
��1 6
(
��6 7
Vector3
��7 >
.
��> ?
Cross
��? D
(
��D E
vLeft
��E J
,
��J K
vRight
��L R
)
��R S
,
��S T
vLeft
��U Z
.
��Z [

normalized
��[ e
+
��f g
vRight
��h n
.
��n o

normalized
��o y
)
��y z
.
��z {

normalized��{ �
;��� �
var
�� 
scale
�� 
=
�� 
$num
��  "
/
��# $
$num
��% '
;
��' (
if
�� 
(
�� 
isLeftLinear
�� $
)
��$ %
controlPoint
�� $
.
��$ %
localLeftTangent
��% 5
=
��6 7
vLeft
��8 =
.
��= >
	magnitude
��> G
*
��H I
scale
��J O
*
��P Q
-
��R S
rightDirection
��S a
;
��a b
else
�� 
controlPoint
�� $
.
��$ %
localLeftTangent
��% 5
=
��6 7
controlPoint
��8 D
.
��D E
localLeftTangent
��E U
.
��U V
	magnitude
��V _
*
��` a
-
��b c
rightDirection
��c q
;
��q r
if
�� 
(
�� 

�� %
)
��% &
controlPoint
�� $
.
��$ %
localRightTangent
��% 6
=
��7 8
vRight
��9 ?
.
��? @
	magnitude
��@ I
*
��J K
scale
��L Q
*
��R S
rightDirection
��T b
;
��b c
else
�� 
controlPoint
�� $
.
��$ %
localRightTangent
��% 6
=
��7 8
controlPoint
��9 E
.
��E F
localRightTangent
��F W
.
��W X
	magnitude
��X a
*
��b c
rightDirection
��d r
;
��r s
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
isLeftLinear
��  
=
��! "
controlPoint
��# /
.
��/ 0
localLeftTangent
��0 @
==
��A C
Vector3
��D K
.
��K L
zero
��L P
;
��P Q
var
�� 

�� !
=
��" #
controlPoint
��$ 0
.
��0 1
localRightTangent
��1 B
==
��C E
Vector3
��F M
.
��M N
zero
��N R
;
��R S
if
�� 
(
�� 
isLeftLinear
��  
||
��! #

��$ 1
)
��1 2
{
�� 
if
�� 
(
�� 
isLeftLinear
�� $
)
��$ %
controlPoint
�� $
.
��$ %
localLeftTangent
��% 5
=
��6 7
path
��8 <
.
��< ='
CalculateLocalLeftTangent
��= V
(
��V W
index
��W \
)
��\ ]
;
��] ^
if
�� 
(
�� 

�� %
)
��% &
controlPoint
�� $
.
��$ %
localRightTangent
��% 6
=
��7 8
path
��9 =
.
��= >(
CalculateLocalRightTangent
��> X
(
��X Y
index
��Y ^
)
��^ _
;
��_ `
}
�� 
}
�� 
controlPoint
�� 
.
�� 

�� &
(
��& '
)
��' (
;
��( )
path
�� 
.
�� 
SetPoint
�� 
(
�� 
index
�� 
,
��  
controlPoint
��! -
)
��- .
;
��. /
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ % 
localToWorldMatrix
��& 8
;
��8 9
}
�� 	
public
�� 
static
�� 
void
�� 

�� (
(
��( )
this
��) -

��. ;
path
��< @
,
��@ A
int
��B E
index
��F K
)
��K L
{
�� 	
var
��  
localToWorldMatrix
�� "
=
��# $
path
��% )
.
��) * 
localToWorldMatrix
��* <
;
��< =
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ %
	Matrix4x4
��& /
.
��/ 0
identity
��0 8
;
��8 9
var
�� 
controlPoint
�� 
=
�� 
path
�� #
.
��# $
GetPoint
��$ ,
(
��, -
index
��- 2
)
��2 3
;
��3 4
if
�� 
(
�� 
controlPoint
�� 
.
�� 
tangentMode
�� (
==
��) +
TangentMode
��, 7
.
��7 8
Linear
��8 >
)
��> ?
return
�� 
;
�� 
if
�� 
(
�� 
!
�� 
Mathf
�� 
.
�� 

�� $
(
��$ %
(
��% &
controlPoint
��& 2
.
��2 3
localLeftTangent
��3 C
+
��D E
controlPoint
��F R
.
��R S
localRightTangent
��S d
)
��d e
.
��e f
sqrMagnitude
��f r
,
��r s
$num
��t v
)
��v w
)
��w x
{
�� 
if
�� 
(
�� 
controlPoint
��  
.
��  !

mirrorLeft
��! +
)
��+ ,
controlPoint
��  
.
��  !
localLeftTangent
��! 1
=
��2 3
-
��4 5
controlPoint
��5 A
.
��A B
localRightTangent
��B S
;
��S T
else
�� 
controlPoint
��  
.
��  !
localRightTangent
��! 2
=
��3 4
-
��5 6
controlPoint
��6 B
.
��B C
localLeftTangent
��C S
;
��S T
controlPoint
�� 
.
�� 

�� *
(
��* +
)
��+ ,
;
��, -
path
�� 
.
�� 
SetPoint
�� 
(
�� 
index
�� #
,
��# $
controlPoint
��% 1
)
��1 2
;
��2 3
}
�� 
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ % 
localToWorldMatrix
��& 8
;
��8 9
}
�� 	
}
�� 
}�� �7
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Overrides\DepthOfFieldEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ !
VolumeComponentEditor 
( 
typeof !
(! "
DepthOfField" .
). /
)/ 0
]0 1
sealed 

class 
DepthOfFieldEditor #
:$ %!
VolumeComponentEditor& ;
{ #
SerializedDataParameter 
m_Mode  &
;& '#
SerializedDataParameter

 
m_GaussianStart

  /
;

/ 0#
SerializedDataParameter 

;- .#
SerializedDataParameter 
m_GaussianMaxRadius  3
;3 4#
SerializedDataParameter
m_HighQualitySampling
;
SerializedDataParameter 
m_FocusDistance  /
;/ 0#
SerializedDataParameter 

;- .#
SerializedDataParameter 

m_Aperture  *
;* +#
SerializedDataParameter 
m_BladeCount  ,
;, -#
SerializedDataParameter 
m_BladeCurvature  0
;0 1#
SerializedDataParameter 
m_BladeRotation  /
;/ 0
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
var 
o 
= 
new 
PropertyFetcher '
<' (
DepthOfField( 4
>4 5
(5 6
serializedObject6 F
)F G
;G H
m_Mode 
= 
Unpack 
( 
o 
. 
Find "
(" #
x# $
=>% '
x( )
.) *
mode* .
). /
)/ 0
;0 1
m_GaussianStart 
= 
Unpack $
($ %
o% &
.& '
Find' +
(+ ,
x, -
=>. 0
x1 2
.2 3

)@ A
)A B
;B C

= 
Unpack "
(" #
o# $
.$ %
Find% )
() *
x* +
=>, .
x/ 0
.0 1
gaussianEnd1 <
)< =
)= >
;> ?
m_GaussianMaxRadius 
=  !
Unpack" (
(( )
o) *
.* +
Find+ /
(/ 0
x0 1
=>2 4
x5 6
.6 7
gaussianMaxRadius7 H
)H I
)I J
;J K!
m_HighQualitySampling !
=" #
Unpack$ *
(* +
o+ ,
., -
Find- 1
(1 2
x2 3
=>4 6
x7 8
.8 9
highQualitySampling9 L
)L M
)M N
;N O
m_FocusDistance   
=   
Unpack   $
(  $ %
o  % &
.  & '
Find  ' +
(  + ,
x  , -
=>  . 0
x  1 2
.  2 3

)  @ A
)  A B
;  B C

=!! 
Unpack!! "
(!!" #
o!!# $
.!!$ %
Find!!% )
(!!) *
x!!* +
=>!!, .
x!!/ 0
.!!0 1
focalLength!!1 <
)!!< =
)!!= >
;!!> ?

m_Aperture"" 
="" 
Unpack"" 
(""  
o""  !
.""! "
Find""" &
(""& '
x""' (
=>"") +
x"", -
.""- .
aperture"". 6
)""6 7
)""7 8
;""8 9
m_BladeCount## 
=## 
Unpack## !
(##! "
o##" #
.### $
Find##$ (
(##( )
x##) *
=>##+ -
x##. /
.##/ 0

bladeCount##0 :
)##: ;
)##; <
;##< =
m_BladeCurvature$$ 
=$$ 
Unpack$$ %
($$% &
o$$& '
.$$' (
Find$$( ,
($$, -
x$$- .
=>$$/ 1
x$$2 3
.$$3 4
bladeCurvature$$4 B
)$$B C
)$$C D
;$$D E
m_BladeRotation%% 
=%% 
Unpack%% $
(%%$ %
o%%% &
.%%& '
Find%%' +
(%%+ ,
x%%, -
=>%%. 0
x%%1 2
.%%2 3

)%%@ A
)%%A B
;%%B C
}&& 	
public(( 
override(( 
void(( 
OnInspectorGUI(( +
(((+ ,
)((, -
{)) 	

(** 
m_Mode**  
)**  !
;**! "
if,, 
(,, 
m_Mode,, 
.,, 
value,, 
.,, 
intValue,, %
==,,& (
(,,) *
int,,* -
),,- .
DepthOfFieldMode,,. >
.,,> ?
Gaussian,,? G
),,G H
{-- 

(.. 
m_GaussianStart.. -
,..- .
EditorGUIUtility../ ?
...? @

(..M N
$str..N U
)..U V
)..V W
;..W X

(// 

,//+ ,
EditorGUIUtility//- =
.//= >

(//K L
$str//L Q
)//Q R
)//R S
;//S T

(00 
m_GaussianMaxRadius00 1
,001 2
EditorGUIUtility003 C
.00C D

(00Q R
$str00R ^
)00^ _
)00_ `
;00` a

(11 !
m_HighQualitySampling11 3
)113 4
;114 5
}22 
else33 
if33 
(33 
m_Mode33 
.33 
value33 !
.33! "
intValue33" *
==33+ -
(33. /
int33/ 2
)332 3
DepthOfFieldMode333 C
.33C D
Bokeh33D I
)33I J
{44 

(55 
m_FocusDistance55 -
)55- .
;55. /

(66 

)66+ ,
;66, -

(77 

m_Aperture77 (
)77( )
;77) *

(88 
m_BladeCount88 *
)88* +
;88+ ,

(99 
m_BladeCurvature99 .
)99. /
;99/ 0

(:: 
m_BladeRotation:: -
)::- .
;::. /
};; 
}<< 	
}== 
}>> �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Overrides\ColorLookupEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ !
VolumeComponentEditor 
( 
typeof !
(! "
ColorLookup" -
)- .
). /
]/ 0
sealed 

class 
ColorLookupEditor "
:# $!
VolumeComponentEditor% :
{ #
SerializedDataParameter 
	m_Texture  )
;) *#
SerializedDataParameter		 
m_Contribution		  .
;		. /
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
var
o
=
new
PropertyFetcher
<
ColorLookup
>
(
serializedObject
)
;
	m_Texture 
= 
Unpack 
( 
o  
.  !
Find! %
(% &
x& '
=>( *
x+ ,
., -
texture- 4
)4 5
)5 6
;6 7
m_Contribution 
= 
Unpack #
(# $
o$ %
.% &
Find& *
(* +
x+ ,
=>- /
x0 1
.1 2
contribution2 >
)> ?
)? @
;@ A
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	

( 
	m_Texture #
,# $
EditorGUIUtility% 5
.5 6

(C D
$strD T
)T U
)U V
;V W
var 
lut 
= 
	m_Texture 
.  
value  %
.% & 
objectReferenceValue& :
;: ;
if 
( 
lut 
!= 
null 
&& 
!  
(  !
(! "
ColorLookup" -
)- .
target. 4
)4 5
.5 6
ValidateLUT6 A
(A B
)B C
)C D
EditorGUILayout 
.  
HelpBox  '
(' (
$str	( �
,
� �
MessageType
� �
.
� �
Warning
� �
)
� �
;
� �

( 
m_Contribution (
,( )
EditorGUIUtility* :
.: ;

(H I
$strI W
)W X
)X Y
;Y Z
var 
asset 
= #
UniversalRenderPipeline /
./ 0
asset0 5
;5 6
if 
( 
asset 
!= 
null 
) 
{ 
if   
(   
asset   
.   
supportsHDR   %
&&  & (
asset  ) .
.  . /
colorGradingMode  / ?
==  @ B
ColorGradingMode  C S
.  S T
HighDynamicRange  T d
)  d e
EditorGUILayout!! #
.!!# $
HelpBox!!$ +
(!!+ ,
$str	!!, �
,
!!� �
MessageType
!!� �
.
!!� �
Info
!!� �
)
!!� �
;
!!� �
else"" 
EditorGUILayout## #
.### $
HelpBox##$ +
(##+ ,
$str	##, �
,
##� �
MessageType
##� �
.
##� �
Info
##� �
)
##� �
;
##� �
}$$ 
}%% 	
}&& 
}'' �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\RendererFeatures\NewRendererFeatureDropdownItem.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
internal 
static
class *
NewRendererFeatureDropdownItem 8
{ 
static 
readonly 
string 
defaultNewClassName 2
=3 4
$str5 Q
;Q R
[		 	
MenuItem			 
(		 
$str		 V
,		V W
priority		X `
=		a b
EditorUtils		c n
.		n o.
!lwrpAssetCreateMenuPriorityGroup2			o �
)
		� �
]
		� �
internal

 
static

 
void

 $
CreateNewRendererFeature

 5
(

5 6
)

6 7
{ 	
string 
templatePath 
=  !

./ 0
GUIDToAssetPath0 ?
(? @
ResourceGuid@ L
.L M
rendererTemplateM ]
)] ^
;^ _
ProjectWindowUtil
.
!CreateScriptAssetFromTemplateFile
(
templatePath
,
defaultNewClassName
)
;
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\Selection\ISelection.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
	interface

ISelection !
<! "
T" #
># $
{ 
int 
Count 
{ 
get 
; 
} 
T 	

 
{ 
get 
; 
set "
;" #
}$ %
T		 	
[			 

]		
 
elements		 
{		 
get		 
;		 
set		 
;		  
}		! "
void

 
Clear


(

 
)

 
;

 
void 
BeginSelection
( 
) 
; 
void 
EndSelection
( 
bool 
select %
)% &
;& '
bool
Select
(
T
element
,
bool
select
)
;
bool 
Contains
( 
T 
element 
)  
;  !
} 
} �B
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\GUIFramework\GUIAction.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
.= >
GUIFramework> J
{ 
internal 
abstract
class 
	GUIAction %
{ 
private 
int 
m_ID 
= 
- 
$num 
; 
public

 
Func

 
<

 
	IGUIState

 
,

 
	GUIAction

 (
,

( )
bool

* .
>

. /
enable

0 6
;

6 7
public 
Func 
< 
	IGUIState 
, 
	GUIAction (
,( )
bool* .
>. /

;= >
public 
Func 
< 
	IGUIState 
, 
	GUIAction (
,( )
bool* .
>. /
repaintOnMouseMove0 B
;B C
public
Action
<
	IGUIState
,
	GUIAction
>
onPreRepaint
;
public 
Action 
< 
	IGUIState 
,  
	GUIAction! *
>* +
	onRepaint, 5
;5 6
public 
int 
ID 
{ 	
get 
{ 
return 
m_ID 
; 
}  
} 	
public 
void 
OnGUI 
( 
	IGUIState #
guiState$ ,
), -
{ 	
m_ID 
= 
guiState 
. 
GetControlID (
(( )
GetType) 0
(0 1
)1 2
.2 3
GetHashCode3 >
(> ?
)? @
,@ A
	FocusTypeB K
.K L
PassiveL S
)S T
;T U
if 
( 
guiState 
. 

hotControl #
==$ &
$num' (
&&) +
	IsEnabled, 5
(5 6
guiState6 >
)> ?
&&@ B

CanTriggerC M
(M N
guiStateN V
)V W
&&X Z 
GetTriggerContidtion[ o
(o p
guiStatep x
)x y
)y z
{ 
guiState 
. 

hotControl #
=$ %
ID& (
;( )
	OnTrigger 
( 
guiState "
)" #
;# $
} 
if 
( 
guiState 
. 

hotControl #
==$ &
ID' )
)) *
{   
if!! 
(!! 
GetFinishContidtion!! '
(!!' (
guiState!!( 0
)!!0 1
)!!1 2
{"" 
OnFinish## 
(## 
guiState## %
)##% &
;##& '
guiState$$ 
.$$ 

hotControl$$ '
=$$( )
$num$$* +
;$$+ ,
}%% 
else&& 
{'' 
	OnPerform(( 
((( 
guiState(( &
)((& '
;((' (
})) 
}** 
if,, 
(,, 
guiState,, 
.,, 
	eventType,, "
==,,# %
	EventType,,& /
.,,/ 0
Repaint,,0 7
&&,,8 :
IsRepaintEnabled,,; K
(,,K L
guiState,,L T
),,T U
),,U V
Repaint-- 
(-- 
guiState--  
)--  !
;--! "
}.. 	
public00 
bool00 
	IsEnabled00 
(00 
	IGUIState00 '
guiState00( 0
)000 1
{11 	
if22 
(22 
enable22 
!=22 
null22 
)22 
return33 
enable33 
(33 
guiState33 &
,33& '
this33( ,
)33, -
;33- .
return55 
true55 
;55 
}66 	
public88 
bool88 
IsRepaintEnabled88 $
(88$ %
	IGUIState88% .
guiState88/ 7
)887 8
{99 	
if:: 
(:: 
!:: 
	IsEnabled:: 
(:: 
guiState:: #
)::# $
)::$ %
return;; 
false;; 
;;; 
if== 
(== 

!===  
null==! %
)==% &
return>> 

(>>$ %
guiState>>% -
,>>- .
this>>/ 3
)>>3 4
;>>4 5
return@@ 
true@@ 
;@@ 
}AA 	
publicCC 
voidCC 

PreRepaintCC 
(CC 
	IGUIStateCC (
guiStateCC) 1
)CC1 2
{DD 	
DebugEE 
.EE 
AssertEE 
(EE 
guiStateEE !
.EE! "
	eventTypeEE" +
==EE, .
	EventTypeEE/ 8
.EE8 9
RepaintEE9 @
)EE@ A
;EEA B
ifGG 
(GG 
	IsEnabledGG 
(GG 
guiStateGG "
)GG" #
&&GG$ &
onPreRepaintGG' 3
!=GG4 6
nullGG7 ;
)GG; <
onPreRepaintHH 
(HH 
guiStateHH %
,HH% &
thisHH' +
)HH+ ,
;HH, -
}II 	
privateKK 
voidKK 
RepaintKK 
(KK 
	IGUIStateKK &
guiStateKK' /
)KK/ 0
{LL 	
DebugMM 
.MM 
AssertMM 
(MM 
guiStateMM !
.MM! "
	eventTypeMM" +
==MM, .
	EventTypeMM/ 8
.MM8 9
RepaintMM9 @
)MM@ A
;MMA B
ifOO 
(OO 
	onRepaintOO 
!=OO 
nullOO !
)OO! "
	onRepaintPP 
(PP 
guiStatePP "
,PP" #
thisPP$ (
)PP( )
;PP) *
}QQ 	
internalSS 
boolSS '
IsRepaintOnMouseMoveEnabledSS 1
(SS1 2
	IGUIStateSS2 ;
guiStateSS< D
)SSD E
{TT 	
ifUU 
(UU 
!UU 
	IsEnabledUU 
(UU 
guiStateUU #
)UU# $
||UU% '
!UU( )
IsRepaintEnabledUU) 9
(UU9 :
guiStateUU: B
)UUB C
)UUC D
returnVV 
falseVV 
;VV 
ifXX 
(XX 
repaintOnMouseMoveXX "
!=XX# %
nullXX& *
)XX* +
returnYY 
repaintOnMouseMoveYY )
(YY) *
guiStateYY* 2
,YY2 3
thisYY4 8
)YY8 9
;YY9 :
return[[ 
false[[ 
;[[ 
}\\ 	
	protected^^ 
abstract^^ 
bool^^ 
GetFinishContidtion^^  3
(^^3 4
	IGUIState^^4 =
guiState^^> F
)^^F G
;^^G H
	protected__ 
abstract__ 
bool__  
GetTriggerContidtion__  4
(__4 5
	IGUIState__5 >
guiState__? G
)__G H
;__H I
	protected`` 
virtual`` 
bool`` 

CanTrigger`` )
(``) *
	IGUIState``* 3
guiState``4 <
)``< =
{``> ?
return``@ F
true``G K
;``K L
}``M N
	protectedaa 
virtualaa 
voidaa 
	OnTriggeraa (
(aa( )
	IGUIStateaa) 2
guiStateaa3 ;
)aa; <
{bb 	
}dd 	
	protectedff 
virtualff 
voidff 
	OnPerformff (
(ff( )
	IGUIStateff) 2
guiStateff3 ;
)ff; <
{gg 	
}ii 	
	protectedkk 
virtualkk 
voidkk 
OnFinishkk '
(kk' (
	IGUIStatekk( 1
guiStatekk2 :
)kk: ;
{ll 	
}nn 	
}oo 
}pp �U
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditorTool\PathComponentEditor.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
abstract
class 
PathComponentEditor /
</ 0
T0 1
>1 2
:3 4
Editor5 ;
where< A
TB C
:D E
ScriptablePathF T
{ 
private 
static 
class 
Contents %
{ 	
public 
static 
readonly "

GUIContent# -

=< =
new> A

GUIContentB L
(L M
$strM W
,W X
$strY ~
)~ 
;	 �
} 	
private 
Editor 
m_CachedEditor %
=& '
null( ,
;, -
	protected 
void 
DoEditButton #
<# $
U$ %
>% &
(& '

GUIContent' 1
icon2 6
,6 7
string8 >
label? D
)D E
whereF K
UL M
:N O
PathEditorToolP ^
<^ _
T_ `
>` a
{ 	
const 
float 
kButtonWidth $
=% &
$num' )
;) *
const 
float 

=& '
$num( *
;* +
const 
float (
k_SpaceBetweenLabelAndButton 4
=5 6
$num7 8
;8 9
var 
buttonStyle 
= 
new !
GUIStyle" *
(* +
$str+ A
)A B
;B C
var!! 
rect!! 
=!! 
EditorGUILayout!! &
.!!& '
GetControlRect!!' 5
(!!5 6
true!!6 :
,!!: ;

,!!I J
buttonStyle!!K V
)!!V W
;!!W X
var"" 

buttonRect"" 
="" 
new""  
Rect""! %
(""% &
rect""& *
.""* +
xMin""+ /
+""0 1
EditorGUIUtility""2 B
.""B C

labelWidth""C M
,""M N
rect""O S
.""S T
yMin""T X
,""X Y
kButtonWidth""Z f
,""f g

)""u v
;""v w
var$$ 
labelContent$$ 
=$$ 
new$$ "

GUIContent$$# -
($$- .
label$$. 3
)$$3 4
;$$4 5
var%% 
	labelSize%% 
=%% 
GUI%% 
.%%  
skin%%  $
.%%$ %
label%%% *
.%%* +
CalcSize%%+ 3
(%%3 4
labelContent%%4 @
)%%@ A
;%%A B
var'' 
	labelRect'' 
='' 
new'' 
Rect''  $
(''$ %

buttonRect(( 
.(( 
xMax(( 
+((  !(
k_SpaceBetweenLabelAndButton((" >
,((> ?
rect)) 
.)) 
yMin)) 
+)) 
()) 
rect)) !
.))! "
height))" (
-))) *
	labelSize))+ 4
.))4 5
y))5 6
)))6 7
*))8 9
$num)): =
,))= >
	labelSize** 
.** 
x** 
,** 
rect++ 
.++ 
height++ 
)++ 
;++ 
using-- 
(-- 
new-- 
	EditorGUI--  
.--  !
DisabledGroupScope--! 3
(--3 4
!--4 5
EditorToolManager--5 F
.--F G
IsAvailable--G R
<--R S
U--S T
>--T U
(--U V
)--V W
)--W X
)--X Y
{.. 
using// 
(// 
var// 
check//  
=//! "
new//# &
	EditorGUI//' 0
.//0 1
ChangeCheckScope//1 A
(//A B
)//B C
)//C D
{00 
var11 
isActive11  
=11! "
GUI11# &
.11& '
Toggle11' -
(11- .

buttonRect11. 8
,118 9
EditorToolManager11: K
.11K L
IsActiveTool11L X
<11X Y
U11Y Z
>11Z [
(11[ \
)11\ ]
,11] ^
icon11_ c
,11c d
buttonStyle11e p
)11p q
;11q r
GUI33 
.33 
Label33 
(33 
	labelRect33 '
,33' (
label33) .
)33. /
;33/ 0
if55 
(55 
check55 
.55 
changed55 %
)55% &
{66 
if77 
(77 
isActive77 $
)77$ %
ToolManager88 '
.88' (

<885 6
U886 7
>887 8
(888 9
)889 :
;88: ;
else99 
ToolManager:: '
.::' (
RestorePreviousTool::( ;
(::; <
)::< =
;::= >
};; 
}<< 
}== 
}>> 	
	protected@@ 
void@@ 
DoPathInspector@@ &
<@@& '
U@@' (
>@@( )
(@@) *
)@@* +
where@@, 1
U@@2 3
:@@4 5
PathEditorTool@@6 D
<@@D E
T@@E F
>@@F G
{AA 	
ifBB 
(BB 
EditorToolManagerBB !
.BB! "
IsActiveToolBB" .
<BB. /
UBB/ 0
>BB0 1
(BB1 2
)BB2 3
&&BB4 6
EditorToolManagerBB7 H
.BBH I
IsAvailableBBI T
<BBT U
UBBU V
>BBV W
(BBW X
)BBX Y
)BBY Z
{CC 
varDD 
pathsDD 
=DD 
EditorToolManagerDD -
.DD- .

<DD; <
UDD< =
>DD= >
(DD> ?
)DD? @
.DD@ A
pathsDDA F
;DDF G
CreateCachedEditorFF "
(FF" #
pathsFF# (
,FF( )
nullFF* .
,FF. /
refFF0 3
m_CachedEditorFF4 B
)FFB C
;FFC D
ifHH 
(HH 
m_CachedEditorHH "
==HH# %
nullHH& *
)HH* +
returnII 
;II 
usingKK 
(KK 
varKK 
checkKK  
=KK! "
newKK# &
	EditorGUIKK' 0
.KK0 1
ChangeCheckScopeKK1 A
(KKA B
)KKB C
)KKC D
{LL 
m_CachedEditorMM "
.MM" #
OnInspectorGUIMM# 1
(MM1 2
)MM2 3
;MM3 4
ifOO 
(OO 
checkOO 
.OO 
changedOO %
)OO% &
EditorToolManagerPP )
.PP) *

<PP7 8
UPP8 9
>PP9 :
(PP: ;
)PP; <
.PP< =
	SetShapesPP= F
(PPF G
)PPG H
;PPH I
}QQ 
}RR 
}SS 	
	protectedUU 
voidUU 
DoSnappingInspectorUU *
<UU* +
UUU+ ,
>UU, -
(UU- .
)UU. /
whereUU0 5
UUU6 7
:UU8 9
PathEditorToolUU: H
<UUH I
TUUI J
>UUJ K
{VV 	
ifWW 
(WW 
EditorToolManagerWW !
.WW! "
IsActiveToolWW" .
<WW. /
UWW/ 0
>WW0 1
(WW1 2
)WW2 3
&&WW4 6
EditorToolManagerWW7 H
.WWH I
IsAvailableWWI T
<WWT U
UWWU V
>WWV W
(WWW X
)WWX Y
)WWY Z
{XX 
varYY 
toolYY 
=YY 
EditorToolManagerYY ,
.YY, -

<YY: ;
UYY; <
>YY< =
(YY= >
)YY> ?
;YY? @
toolZZ 
.ZZ 
enableSnappingZZ #
=ZZ$ %
EditorGUILayoutZZ& 5
.ZZ5 6
ToggleZZ6 <
(ZZ< =
ContentsZZ= E
.ZZE F

,ZZS T
toolZZU Y
.ZZY Z
enableSnappingZZZ h
)ZZh i
;ZZi j
}[[ 
}\\ 	
	protected^^ 
void^^  
DoOpenEndedInspector^^ +
<^^+ ,
U^^, -
>^^- .
(^^. /
SerializedProperty^^/ A
isOpenEndedProperty^^B U
)^^U V
where^^W \
U^^] ^
:^^_ `
PathEditorTool^^a o
<^^o p
T^^p q
>^^q r
{__ 	
serializedObject`` 
.`` 
Update`` #
(``# $
)``$ %
;``% &
usingbb 
(bb 
varbb 
checkbb 
=bb 
newbb "
	EditorGUIbb# ,
.bb, -
ChangeCheckScopebb- =
(bb= >
)bb> ?
)bb? @
{cc 
EditorGUILayoutdd 
.dd  

(dd- .
isOpenEndedPropertydd. A
)ddA B
;ddB C
ifff 
(ff 
checkff 
.ff 
changedff !
)ff! "
{gg 
ifhh 
(hh 
EditorToolManagerhh )
.hh) *
IsActiveToolhh* 6
<hh6 7
Uhh7 8
>hh8 9
(hh9 :
)hh: ;
&&hh< >
EditorToolManagerhh? P
.hhP Q
IsAvailablehhQ \
<hh\ ]
Uhh] ^
>hh^ _
(hh_ `
)hh` a
)hha b
{ii 
varjj 
pathsjj !
=jj" #
EditorToolManagerjj$ 5
.jj5 6

<jjC D
UjjD E
>jjE F
(jjF G
)jjG H
.jjH I
pathsjjI N
;jjN O
foreachll 
(ll  !
varll! $
pathll% )
inll* ,
pathsll- 2
)ll2 3
{mm 
pathnn  
.nn  !

undoObjectnn! +
.nn+ ,
RegisterUndonn, 8
(nn8 9
$strnn9 I
)nnI J
;nnJ K
pathoo  
.oo  !
isOpenEndedoo! ,
=oo- .
isOpenEndedPropertyoo/ B
.ooB C
	boolValueooC L
;ooL M
}pp 
}qq 
}rr 
}ss 
serializedObjectuu 
.uu #
ApplyModifiedPropertiesuu 4
(uu4 5
)uu5 6
;uu6 7
}vv 	
}ww 
}xx ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\BaseShaderGUI.cs
	namespace 	
UnityEditor
 
{ 
public 

abstract 
class 

:( )
	ShaderGUI* 3
{		 
public 
enum 
SurfaceType 
{
Opaque 
, 
Transparent 
} 	
public 
enum 
	BlendMode 
{ 	
Alpha 
, 
Premultiply 
, 
Additive 
, 
Multiply 
} 	
public 
enum 
SmoothnessSource $
{ 	
	BaseAlpha 
, 

} 	
public   
enum   

RenderFace   
{!! 	
Front"" 
="" 
$num"" 
,"" 
Back## 
=## 
$num## 
,## 
Both$$ 
=$$ 
$num$$ 
}%% 	
	protected'' 
class'' 
Styles'' 
{(( 	
public** 
static** 
readonly** "

GUIContent**# -
SurfaceOptions**. <
=**= >
new++ 

GUIContent++ 
(++ 
$str++ 0
,++0 1
$str++2 o
)++o p
;++p q
public-- 
static-- 
readonly-- "

GUIContent--# -

=--< =
new--> A

GUIContent--B L
(--L M
$str--M ]
,--] ^
$str.. R
)..R S
;..S T
public00 
static00 
readonly00 "

GUIContent00# -

=00< =
new00> A

GUIContent00B L
(00L M
$str00M W
,00W X
$str11 `
)11` a
;11a b
public33 
static33 
readonly33 "

GUIContent33# -
surfaceType33. 9
=33: ;
new33< ?

GUIContent33@ J
(33J K
$str33K Y
,33Y Z
$str44 _
)44_ `
;44` a
public66 
static66 
readonly66 "

GUIContent66# -
blendingMode66. :
=66; <
new66= @

GUIContent66A K
(66K L
$str66L [
,66[ \
$str77 u
)77u v
;77v w
public99 
static99 
readonly99 "

GUIContent99# -
cullingText99. 9
=99: ;
new99< ?

GUIContent99@ J
(99J K
$str99K X
,99X Y
$str	:: �
)
::� �
;
::� �
public<< 
static<< 
readonly<< "

GUIContent<<# -

=<<< =
new<<> A

GUIContent<<B L
(<<L M
$str<<M ]
,<<] ^
$str	== �
)
==� �
;
==� �
public?? 
static?? 
readonly?? "

GUIContent??# -"
alphaClipThresholdText??. D
=??E F
new??G J

GUIContent??K U
(??U V
$str??V a
,??a b
$str	@@ �
)
@@� �
;
@@� �
publicBB 
staticBB 
readonlyBB "

GUIContentBB# -
receiveShadowTextBB. ?
=BB@ A
newBBB E

GUIContentBBF P
(BBP Q
$strBBQ b
,BBb c
$strCC X
)CCX Y
;CCY Z
publicEE 
staticEE 
readonlyEE "

GUIContentEE# -
baseMapEE. 5
=EE6 7
newEE8 ;

GUIContentEE< F
(EEF G
$strEEG Q
,EEQ R
$str	FF �
)
FF� �
;
FF� �
publicHH 
staticHH 
readonlyHH "

GUIContentHH# -
emissionMapHH. 9
=HH: ;
newHH< ?

GUIContentHH@ J
(HHJ K
$strHHK Y
,HHY Z
$str	II �
)
II� �
;
II� �
publicKK 
staticKK 
readonlyKK "

GUIContentKK# -

=KK< =
newLL 

GUIContentLL 
(LL 
$strLL +
,LL+ ,
$strLL- R
)LLR S
;LLS T
publicNN 
staticNN 
readonlyNN "

GUIContentNN# -!
bumpScaleNotSupportedNN. C
=NND E
newOO 

GUIContentOO 
(OO 
$strOO P
)OOP Q
;OOQ R
publicQQ 
staticQQ 
readonlyQQ "

GUIContentQQ# -
fixNormalNowQQ. :
=QQ; <
newQQ= @

GUIContentQQA K
(QQK L
$strQQL U
,QQU V
$strRR J
)RRJ K
;RRK L
publicTT 
staticTT 
readonlyTT "

GUIContentTT# -
queueSliderTT. 9
=TT: ;
newTT< ?

GUIContentTT@ J
(TTJ K
$strTTK U
,TTU V
$strUU n
)UUn o
;UUo p
}VV 	
	protected\\ 
MaterialEditor\\  
materialEditor\\! /
{\\0 1
get\\2 5
;\\5 6
set\\7 :
;\\: ;
}\\< =
	protected^^ 
MaterialProperty^^ "
surfaceTypeProp^^# 2
{^^3 4
get^^5 8
;^^8 9
set^^: =
;^^= >
}^^? @
	protected`` 
MaterialProperty`` "

{``1 2
get``3 6
;``6 7
set``8 ;
;``; <
}``= >
	protectedbb 
MaterialPropertybb "
cullingPropbb# .
{bb/ 0
getbb1 4
;bb4 5
setbb6 9
;bb9 :
}bb; <
	protecteddd 
MaterialPropertydd "

{dd1 2
getdd3 6
;dd6 7
setdd8 ;
;dd; <
}dd= >
	protectedff 
MaterialPropertyff "
alphaCutoffPropff# 2
{ff3 4
getff5 8
;ff8 9
setff: =
;ff= >
}ff? @
	protectedhh 
MaterialPropertyhh "
receiveShadowsProphh# 5
{hh6 7
gethh8 ;
;hh; <
sethh= @
;hh@ A
}hhB C
	protectedll 
MaterialPropertyll "
baseMapPropll# .
{ll/ 0
getll1 4
;ll4 5
setll6 9
;ll9 :
}ll; <
	protectednn 
MaterialPropertynn "

{nn1 2
getnn3 6
;nn6 7
setnn8 ;
;nn; <
}nn= >
	protectedpp 
MaterialPropertypp "
emissionMapProppp# 2
{pp3 4
getpp5 8
;pp8 9
setpp: =
;pp= >
}pp? @
	protectedrr 
MaterialPropertyrr "
emissionColorProprr# 4
{rr5 6
getrr7 :
;rr: ;
setrr< ?
;rr? @
}rrA B
	protectedtt 
MaterialPropertytt "
queueOffsetProptt# 2
{tt3 4
gettt5 8
;tt8 9
settt: =
;tt= >
}tt? @
publicvv 
boolvv 
m_FirstTimeApplyvv $
=vv% &
truevv' +
;vv+ ,
privatexx 
constxx 
stringxx 
k_KeyPrefixxx (
=xx) *
$strxx+ K
;xxK L
privatezz 
stringzz 
m_HeaderStateKeyzz '
=zz( )
nullzz* .
;zz. /
	protected|| 
string|| 
headerStateKey|| '
{||( )
get||* -
{||. /
return||0 6
m_HeaderStateKey||7 G
;||G H
}||I J
}||K L
	SavedBool
�� %
m_SurfaceOptionsFoldout
�� )
;
��) *
	SavedBool
�� $
m_SurfaceInputsFoldout
�� (
;
��( )
	SavedBool
�� 
m_AdvancedFoldout
�� #
;
��# $
private
�� 
const
�� 
int
�� 
queueOffsetRange
�� *
=
��+ ,
$num
��- /
;
��/ 0
public
�� 
abstract
�� 
void
�� 
MaterialChanged
�� ,
(
��, -
Material
��- 5
material
��6 >
)
��> ?
;
��? @
public
�� 
virtual
�� 
void
�� 
FindProperties
�� *
(
��* +
MaterialProperty
��+ ;
[
��; <
]
��< =

properties
��> H
)
��H I
{
�� 	
surfaceTypeProp
�� 
=
�� 
FindProperty
�� *
(
��* +
$str
��+ 5
,
��5 6

properties
��7 A
)
��A B
;
��B C

�� 
=
�� 
FindProperty
�� (
(
��( )
$str
��) 1
,
��1 2

properties
��3 =
)
��= >
;
��> ?
cullingProp
�� 
=
�� 
FindProperty
�� &
(
��& '
$str
��' .
,
��. /

properties
��0 :
)
��: ;
;
��; <

�� 
=
�� 
FindProperty
�� (
(
��( )
$str
��) 5
,
��5 6

properties
��7 A
)
��A B
;
��B C
alphaCutoffProp
�� 
=
�� 
FindProperty
�� *
(
��* +
$str
��+ 4
,
��4 5

properties
��6 @
)
��@ A
;
��A B 
receiveShadowsProp
�� 
=
��  
FindProperty
��! -
(
��- .
$str
��. ?
,
��? @

properties
��A K
,
��K L
false
��M R
)
��R S
;
��S T
baseMapProp
�� 
=
�� 
FindProperty
�� &
(
��& '
$str
��' 1
,
��1 2

properties
��3 =
,
��= >
false
��? D
)
��D E
;
��E F

�� 
=
�� 
FindProperty
�� (
(
��( )
$str
��) 5
,
��5 6

properties
��7 A
,
��A B
false
��C H
)
��H I
;
��I J
emissionMapProp
�� 
=
�� 
FindProperty
�� *
(
��* +
$str
��+ 9
,
��9 :

properties
��; E
,
��E F
false
��G L
)
��L M
;
��M N
emissionColorProp
�� 
=
�� 
FindProperty
��  ,
(
��, -
$str
��- =
,
��= >

properties
��? I
,
��I J
false
��K P
)
��P Q
;
��Q R
queueOffsetProp
�� 
=
�� 
FindProperty
�� *
(
��* +
$str
��+ 9
,
��9 :

properties
��; E
,
��E F
false
��G L
)
��L M
;
��M N
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
��" #
MaterialEditor
��# 1
materialEditorIn
��2 B
,
��B C
MaterialProperty
��D T
[
��T U
]
��U V

properties
��W a
)
��a b
{
�� 	
if
�� 
(
�� 
materialEditorIn
��  
==
��! #
null
��$ (
)
��( )
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 B
)
��B C
;
��C D
FindProperties
�� 
(
�� 

properties
�� %
)
��% &
;
��& '
materialEditor
�� 
=
�� 
materialEditorIn
�� -
;
��- .
Material
�� 
material
�� 
=
�� 
materialEditor
��  .
.
��. /
target
��/ 5
as
��6 8
Material
��9 A
;
��A B
if
�� 
(
�� 
m_FirstTimeApply
��  
)
��  !
{
�� 
	OnOpenGUI
�� 
(
�� 
material
�� "
,
��" #
materialEditorIn
��$ 4
)
��4 5
;
��5 6
m_FirstTimeApply
��  
=
��! "
false
��# (
;
��( )
}
�� 
ShaderPropertiesGUI
�� 
(
��  
material
��  (
)
��( )
;
��) *
}
�� 	
public
�� 
virtual
�� 
void
�� 
	OnOpenGUI
�� %
(
��% &
Material
��& .
material
��/ 7
,
��7 8
MaterialEditor
��9 G
materialEditor
��H V
)
��V W
{
�� 	
m_HeaderStateKey
�� 
=
�� 
k_KeyPrefix
�� *
+
��+ ,
material
��- 5
.
��5 6
shader
��6 <
.
��< =
name
��= A
;
��A B%
m_SurfaceOptionsFoldout
�� #
=
��$ %
new
��& )
	SavedBool
��* 3
(
��3 4
$"
��4 6
{
��6 7
m_HeaderStateKey
��7 G
}
��G H$
.SurfaceOptionsFoldout
��H ^
"
��^ _
,
��_ `
true
��a e
)
��e f
;
��f g$
m_SurfaceInputsFoldout
�� "
=
��# $
new
��% (
	SavedBool
��) 2
(
��2 3
$"
��3 5
{
��5 6
m_HeaderStateKey
��6 F
}
��F G#
.SurfaceInputsFoldout
��G \
"
��\ ]
,
��] ^
true
��_ c
)
��c d
;
��d e
m_AdvancedFoldout
�� 
=
�� 
new
��  #
	SavedBool
��$ -
(
��- .
$"
��. 0
{
��0 1
m_HeaderStateKey
��1 A
}
��A B
.AdvancedFoldout
��B R
"
��R S
,
��S T
false
��U Z
)
��Z [
;
��[ \
foreach
�� 
(
�� 
var
�� 
obj
�� 
in
�� 
materialEditor
��! /
.
��/ 0
targets
��0 7
)
��7 8
MaterialChanged
�� 
(
��  
(
��  !
Material
��! )
)
��) *
obj
��* -
)
��- .
;
��. /
}
�� 	
public
�� 
void
�� !
ShaderPropertiesGUI
�� '
(
��' (
Material
��( 0
material
��1 9
)
��9 :
{
�� 	
if
�� 
(
�� 
material
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 :
)
��: ;
;
��; <
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
��( )%
m_SurfaceOptionsFoldout
�� #
.
��# $
value
��$ )
=
��* +
EditorGUILayout
��, ;
.
��; <%
BeginFoldoutHeaderGroup
��< S
(
��S T%
m_SurfaceOptionsFoldout
��T k
.
��k l
value
��l q
,
��q r
Styles
��s y
.
��y z
SurfaceOptions��z �
)��� �
;��� �
if
�� 
(
�� %
m_SurfaceOptionsFoldout
�� &
.
��& '
value
��' ,
)
��, -
{
��- . 
DrawSurfaceOptions
�� "
(
��" #
material
��# +
)
��+ ,
;
��, -
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
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4$
m_SurfaceInputsFoldout
�� "
.
��" #
value
��# (
=
��) *
EditorGUILayout
��+ :
.
��: ;%
BeginFoldoutHeaderGroup
��; R
(
��R S$
m_SurfaceInputsFoldout
��S i
.
��i j
value
��j o
,
��o p
Styles
��q w
.
��w x

)��� �
;��� �
if
�� 
(
�� $
m_SurfaceInputsFoldout
�� &
.
��& '
value
��' ,
)
��, -
{
�� 
DrawSurfaceInputs
�� !
(
��! "
material
��" *
)
��* +
;
��+ ,
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
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4$
DrawAdditionalFoldouts
�� "
(
��" #
material
��# +
)
��+ ,
;
��, -
m_AdvancedFoldout
�� 
.
�� 
value
�� #
=
��$ %
EditorGUILayout
��& 5
.
��5 6%
BeginFoldoutHeaderGroup
��6 M
(
��M N
m_AdvancedFoldout
��N _
.
��_ `
value
��` e
,
��e f
Styles
��g m
.
��m n

��n {
)
��{ |
;
��| }
if
�� 
(
�� 
m_AdvancedFoldout
�� !
.
��! "
value
��" '
)
��' (
{
�� 
DrawAdvancedOptions
�� #
(
��# $
material
��$ ,
)
��, -
;
��- .
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
��' (
}
�� 
EditorGUILayout
�� 
.
�� #
EndFoldoutHeaderGroup
�� 1
(
��1 2
)
��2 3
;
��3 4
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
�� 
foreach
�� 
(
�� 
var
�� 
obj
��  
in
��! #
materialEditor
��% 3
.
��3 4
targets
��4 ;
)
��; <
MaterialChanged
�� #
(
��# $
(
��$ %
Material
��% -
)
��- .
obj
��. 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
virtual
�� 
void
��  
DrawSurfaceOptions
�� .
(
��. /
Material
��/ 7
material
��8 @
)
��@ A
{
�� 	
DoPopup
�� 
(
�� 
Styles
�� 
.
�� 
surfaceType
�� &
,
��& '
surfaceTypeProp
��( 7
,
��7 8
Enum
��9 =
.
��= >
GetNames
��> F
(
��F G
typeof
��G M
(
��M N
SurfaceType
��N Y
)
��Y Z
)
��Z [
)
��[ \
;
��\ ]
if
�� 
(
�� 
(
�� 
SurfaceType
�� 
)
�� 
material
�� %
.
��% &
GetFloat
��& .
(
��. /
$str
��/ 9
)
��9 :
==
��; =
SurfaceType
��> I
.
��I J
Transparent
��J U
)
��U V
DoPopup
�� 
(
�� 
Styles
�� 
.
�� 
blendingMode
�� +
,
��+ ,

��- :
,
��: ;
Enum
��< @
.
��@ A
GetNames
��A I
(
��I J
typeof
��J P
(
��P Q
	BlendMode
��Q Z
)
��Z [
)
��[ \
)
��\ ]
;
��] ^
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
��( )
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
cullingProp
��' 2
.
��2 3

��3 @
;
��@ A
var
�� 
culling
�� 
=
�� 
(
�� 

RenderFace
�� %
)
��% &
cullingProp
��& 1
.
��1 2

floatValue
��2 <
;
��< =
culling
�� 
=
�� 
(
�� 

RenderFace
�� !
)
��! "
EditorGUILayout
��" 1
.
��1 2
	EnumPopup
��2 ;
(
��; <
Styles
��< B
.
��B C
cullingText
��C N
,
��N O
culling
��P W
)
��W X
;
��X Y
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
�� 
materialEditor
�� 
.
�� (
RegisterPropertyChangeUndo
�� 9
(
��9 :
Styles
��: @
.
��@ A
cullingText
��A L
.
��L M
text
��M Q
)
��Q R
;
��R S
cullingProp
�� 
.
�� 

floatValue
�� &
=
��' (
(
��) *
float
��* /
)
��/ 0
culling
��0 7
;
��7 8
material
�� 
.
�� 

�� &
=
��' (
(
��) *

RenderFace
��* 4
)
��4 5
cullingProp
��5 @
.
��@ A

floatValue
��A K
!=
��L N

RenderFace
��O Y
.
��Y Z
Front
��Z _
;
��_ `
}
�� 
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
��, -
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
��( )
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &

��' 4
.
��4 5

��5 B
;
��B C
var
�� 
alphaClipEnabled
��  
=
��! "
EditorGUILayout
��# 2
.
��2 3
Toggle
��3 9
(
��9 :
Styles
��: @
.
��@ A

��A N
,
��N O

��P ]
.
��] ^

floatValue
��^ h
==
��i k
$num
��l m
)
��m n
;
��n o
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
��* +

�� 
.
�� 

floatValue
�� (
=
��) *
alphaClipEnabled
��+ ;
?
��< =
$num
��> ?
:
��@ A
$num
��B C
;
��C D
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
false
��' ,
;
��, -
if
�� 
(
�� 

�� 
.
�� 

floatValue
�� (
==
��) +
$num
��, -
)
��- .
materialEditor
�� 
.
�� 
ShaderProperty
�� -
(
��- .
alphaCutoffProp
��. =
,
��= >
Styles
��? E
.
��E F$
alphaClipThresholdText
��F \
,
��\ ]
$num
��^ _
)
��_ `
;
��` a
if
�� 
(
��  
receiveShadowsProp
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) * 
receiveShadowsProp
��+ =
.
��= >

��> K
;
��K L
var
�� 
receiveShadows
�� "
=
��# $
EditorGUILayout
�� #
.
��# $
Toggle
��$ *
(
��* +
Styles
��+ 1
.
��1 2
receiveShadowText
��2 C
,
��C D 
receiveShadowsProp
��E W
.
��W X

floatValue
��X b
==
��c e
$num
��f j
)
��j k
;
��k l
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. / 
receiveShadowsProp
�� &
.
��& '

floatValue
��' 1
=
��2 3
receiveShadows
��4 B
?
��C D
$num
��E I
:
��J K
$num
��L P
;
��P Q
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
false
��+ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
DrawSurfaceInputs
�� -
(
��- .
Material
��. 6
material
��7 ?
)
��? @
{
�� 	 
DrawBaseProperties
�� 
(
�� 
material
�� '
)
��' (
;
��( )
}
�� 	
public
�� 
virtual
�� 
void
�� !
DrawAdvancedOptions
�� /
(
��/ 0
Material
��0 8
material
��9 A
)
��A B
{
�� 	
materialEditor
�� 
.
�� #
EnableInstancingField
�� 0
(
��0 1
)
��1 2
;
��2 3"
DrawQueueOffsetField
��  
(
��  !
)
��! "
;
��" #
}
�� 	
	protected
�� 
void
�� "
DrawQueueOffsetField
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
queueOffsetProp
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
queueOffsetProp
��+ :
.
��: ;

��; H
;
��H I
var
�� 
queue
�� 
=
�� 
EditorGUILayout
�� +
.
��+ ,
	IntSlider
��, 5
(
��5 6
Styles
��6 <
.
��< =
queueSlider
��= H
,
��H I
(
��J K
int
��K N
)
��N O
queueOffsetProp
��O ^
.
��^ _

floatValue
��_ i
,
��i j
-
��k l
queueOffsetRange
��l |
,
��| }
queueOffsetRange��~ �
)��� �
;��� �
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. /
queueOffsetProp
�� #
.
��# $

floatValue
��$ .
=
��/ 0
queue
��1 6
;
��6 7
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
false
��+ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� $
DrawAdditionalFoldouts
�� 2
(
��2 3
Material
��3 ;
material
��< D
)
��D E
{
��E F
}
��F G
public
�� 
virtual
�� 
void
��  
DrawBaseProperties
�� .
(
��. /
Material
��/ 7
material
��8 @
)
��@ A
{
�� 	
if
�� 
(
�� 
baseMapProp
�� 
!=
�� 
null
�� #
&&
��$ &

��' 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @
baseMap
��@ G
,
��G H
baseMapProp
��I T
,
��T U

��V c
)
��c d
;
��d e
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� (
(
��( )
$str
��) 3
)
��3 4
)
��4 5
{
�� 
material
�� 
.
�� 

SetTexture
�� '
(
��' (
$str
��( 2
,
��2 3
baseMapProp
��4 ?
.
��? @
textureValue
��@ L
)
��L M
;
��M N
var
�� 

�� %
=
��& '
baseMapProp
��( 3
.
��3 4#
textureScaleAndOffset
��4 I
;
��I J
material
�� 
.
�� 
SetTextureScale
�� ,
(
��, -
$str
��- 7
,
��7 8
new
��9 <
Vector2
��= D
(
��D E

��E R
.
��R S
x
��S T
,
��T U

��V c
.
��c d
y
��d e
)
��e f
)
��f g
;
��g h
material
�� 
.
�� 
SetTextureOffset
�� -
(
��- .
$str
��. 8
,
��8 9
new
��: =
Vector2
��> E
(
��E F

��F S
.
��S T
z
��T U
,
��U V

��W d
.
��d e
w
��e f
)
��f g
)
��g h
;
��h i
}
�� 
}
�� 
}
�� 	
	protected
�� 
virtual
�� 
void
�� $
DrawEmissionProperties
�� 5
(
��5 6
Material
��6 >
material
��? G
,
��G H
bool
��I M
keyword
��N U
)
��U V
{
�� 	
var
�� 
emissive
�� 
=
�� 
true
�� 
;
��  
var
��  
hadEmissionTexture
�� "
=
��# $
emissionMapProp
��% 4
.
��4 5
textureValue
��5 A
!=
��B D
null
��E I
;
��I J
if
�� 
(
�� 
!
�� 
keyword
�� 
)
�� 
{
�� 
materialEditor
�� 
.
�� )
TexturePropertyWithHDRColor
�� :
(
��: ;
Styles
��; A
.
��A B
emissionMap
��B M
,
��M N
emissionMapProp
��O ^
,
��^ _
emissionColorProp
��` q
,
��q r
false
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
emissive
�� 
=
�� 
materialEditor
�� )
.
��) *%
EmissionEnabledProperty
��* A
(
��A B
)
��B C
;
��C D
	EditorGUI
�� 
.
��  
BeginDisabledGroup
�� ,
(
��, -
!
��- .
emissive
��. 6
)
��6 7
;
��7 8
{
�� 
materialEditor
�� "
.
��" #)
TexturePropertyWithHDRColor
��# >
(
��> ?
Styles
��? E
.
��E F
emissionMap
��F Q
,
��Q R
emissionMapProp
��S b
,
��b c
emissionColorProp
�� )
,
��) *
false
�� 
)
�� 
;
�� 
}
�� 
	EditorGUI
�� 
.
�� 
EndDisabledGroup
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
var
�� 

brightness
�� 
=
�� 
emissionColorProp
�� .
.
��. /

colorValue
��/ 9
.
��9 :
maxColorComponent
��: K
;
��K L
if
�� 
(
�� 
emissionMapProp
�� 
.
��  
textureValue
��  ,
!=
��- /
null
��0 4
&&
��5 7
!
��8 9 
hadEmissionTexture
��9 K
&&
��L N

brightness
��O Y
<=
��Z \
$num
��] _
)
��_ `
emissionColorProp
�� !
.
��! "

colorValue
��" ,
=
��- .
Color
��/ 4
.
��4 5
white
��5 :
;
��: ;
if
�� 
(
�� 
emissive
�� 
)
�� 
{
�� 
var
�� 
oldFlags
�� 
=
�� 
material
�� '
.
��' (%
globalIlluminationFlags
��( ?
;
��? @
var
�� 
newFlags
�� 
=
�� -
MaterialGlobalIlluminationFlags
�� >
.
��> ?

��? L
;
��L M
if
�� 
(
�� 

brightness
�� 
<=
�� !
$num
��" $
)
��$ %
newFlags
�� 
|=
�� -
MaterialGlobalIlluminationFlags
��  ?
.
��? @
EmissiveIsBlack
��@ O
;
��O P
if
�� 
(
�� 
newFlags
�� 
!=
�� 
oldFlags
��  (
)
��( )
material
�� 
.
�� %
globalIlluminationFlags
�� 4
=
��5 6
newFlags
��7 ?
;
��? @
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
DrawNormalArea
�� )
(
��) *
MaterialEditor
��* 8
materialEditor
��9 G
,
��G H
MaterialProperty
��I Y
bumpMap
��Z a
,
��a b
MaterialProperty
��c s
bumpMapScale��t �
=��� �
null��� �
)��� �
{
�� 	
if
�� 
(
�� 
bumpMapScale
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @

��@ M
,
��M N
bumpMap
��O V
,
��V W
bumpMap
�� 
.
�� 
textureValue
�� (
!=
��) +
null
��, 0
?
��1 2
bumpMapScale
��3 ?
:
��@ A
null
��B F
)
��F G
;
��G H
if
�� 
(
�� 
bumpMapScale
��  
.
��  !

floatValue
��! +
!=
��, .
$num
��/ 0
&&
��1 3!
UnityEditorInternal
�� '
.
��' (#
InternalEditorUtility
��( =
.
��= >
IsMobilePlatform
��> N
(
��N O%
EditorUserBuildSettings
�� /
.
��/ 0
activeBuildTarget
��0 A
)
��A B
)
��B C
if
�� 
(
�� 
materialEditor
�� &
.
��& '
HelpBoxWithButton
��' 8
(
��8 9
Styles
��9 ?
.
��? @#
bumpScaleNotSupported
��@ U
,
��U V
Styles
��W ]
.
��] ^
fixNormalNow
��^ j
)
��j k
)
��k l
bumpMapScale
�� $
.
��$ %

floatValue
��% /
=
��0 1
$num
��2 3
;
��3 4
}
�� 
else
�� 
{
�� 
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @

��@ M
,
��M N
bumpMap
��O V
)
��V W
;
��W X
}
�� 
}
�� 	
	protected
�� 
static
�� 
void
�� 
DrawTileOffset
�� ,
(
��, -
MaterialEditor
��- ;
materialEditor
��< J
,
��J K
MaterialProperty
��L \
textureProp
��] h
)
��h i
{
�� 	
materialEditor
�� 
.
�� (
TextureScaleOffsetProperty
�� 5
(
��5 6
textureProp
��6 A
)
��A B
;
��B C
}
�� 	
public
�� 
static
�� 
void
�� !
SetMaterialKeywords
�� .
(
��. /
Material
��/ 7
material
��8 @
,
��@ A
Action
��B H
<
��H I
Material
��I Q
>
��Q R
shadingModelFunc
��S c
=
��d e
null
��f j
,
��j k
Action
��l r
<
��r s
Material
��s {
>
��{ |

shaderFunc��} �
=��� �
null��� �
)��� �
{
�� 	
material
�� 
.
�� 
shaderKeywords
�� #
=
��$ %
null
��& *
;
��* +$
SetupMaterialBlendMode
�� "
(
��" #
material
��# +
)
��+ ,
;
��, -
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� #
(
��# $
$str
��$ 5
)
��5 6
)
��6 7
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ E
,
��E F
material
��G O
.
��O P
GetFloat
��P X
(
��X Y
$str
��Y j
)
��j k
==
��l n
$num
��o s
)
��s t
;
��t u
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% 5
)
��5 6
)
��6 7
MaterialEditor
�� 
.
�� 
FixupEmissiveFlag
�� 0
(
��0 1
material
��1 9
)
��9 :
;
��: ;
bool
�� %
shouldEmissionBeEnabled
�� (
=
��) *
(
�� 
material
�� 
.
�� %
globalIlluminationFlags
�� 1
&
��2 3-
MaterialGlobalIlluminationFlags
��4 S
.
��S T
EmissiveIsBlack
��T c
)
��c d
==
��e g
$num
��h i
;
��i j
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% 7
)
��7 8
&&
��9 ;
!
��< =%
shouldEmissionBeEnabled
��= T
)
��T U%
shouldEmissionBeEnabled
�� '
=
��( )
material
��* 2
.
��2 3
GetFloat
��3 ;
(
��; <
$str
��< N
)
��N O
>=
��P R
$num
��S W
;
��W X
	CoreUtils
�� 
.
�� 

SetKeyword
��  
(
��  !
material
��! )
,
��) *
$str
��+ 6
,
��6 7%
shouldEmissionBeEnabled
��8 O
)
��O P
;
��P Q
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% /
)
��/ 0
)
��0 1
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ ;
,
��; <
material
��= E
.
��E F

GetTexture
��F P
(
��P Q
$str
��Q [
)
��[ \
)
��\ ]
;
��] ^
shadingModelFunc
�� 
?
�� 
.
�� 
Invoke
�� $
(
��$ %
material
��% -
)
��- .
;
��. /

shaderFunc
�� 
?
�� 
.
�� 
Invoke
�� 
(
�� 
material
�� '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
void
�� $
SetupMaterialBlendMode
�� 1
(
��1 2
Material
��2 :
material
��; C
)
��C D
{
�� 	
if
�� 
(
�� 
material
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 :
)
��: ;
;
��; <
bool
�� 
	alphaClip
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� #
(
��# $
$str
��$ 0
)
��0 1
)
��1 2
	alphaClip
�� 
=
�� 
material
�� $
.
��$ %
GetFloat
��% -
(
��- .
$str
��. :
)
��: ;
>=
��< >
$num
��? B
;
��B C
if
�� 
(
�� 
	alphaClip
�� 
)
�� 
{
�� 
material
�� 
.
�� 

�� &
(
��& '
$str
��' 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
DisableKeyword
�� '
(
��' (
$str
��( 7
)
��7 8
;
��8 9
}
�� 
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% /
)
��/ 0
)
��0 1
{
�� 
SurfaceType
�� 
surfaceType
�� '
=
��( )
(
��* +
SurfaceType
��+ 6
)
��6 7
material
��8 @
.
��@ A
GetFloat
��A I
(
��I J
$str
��J T
)
��T U
;
��U V
if
�� 
(
�� 
surfaceType
�� 
==
��  "
SurfaceType
��# .
.
��. /
Opaque
��/ 5
)
��5 6
{
�� 
if
�� 
(
�� 
	alphaClip
�� !
)
��! "
{
�� 
material
��  
.
��  !
renderQueue
��! ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
RenderQueue
��5 @
.
��@ A
	AlphaTest
��A J
;
��J K
material
��  
.
��  !
SetOverrideTag
��! /
(
��/ 0
$str
��0 <
,
��< =
$str
��> Q
)
��Q R
;
��R S
}
�� 
else
�� 
{
�� 
material
��  
.
��  !
renderQueue
��! ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
RenderQueue
��5 @
.
��@ A
Geometry
��A I
;
��I J
material
��  
.
��  !
SetOverrideTag
��! /
(
��/ 0
$str
��0 <
,
��< =
$str
��> F
)
��F G
;
��G H
}
�� 
material
�� 
.
�� 
renderQueue
�� (
+=
��) +
material
��, 4
.
��4 5
HasProperty
��5 @
(
��@ A
$str
��A O
)
��O P
?
��Q R
(
��S T
int
��T W
)
��W X
material
��Y a
.
��a b
GetFloat
��b j
(
��j k
$str
��k y
)
��y z
:
��{ |
$num
��} ~
;
��~ 
material
�� 
.
�� 
SetInt
�� #
(
��# $
$str
��$ /
,
��/ 0
(
��1 2
int
��2 5
)
��5 6
UnityEngine
��7 B
.
��B C
	Rendering
��C L
.
��L M
	BlendMode
��M V
.
��V W
One
��W Z
)
��Z [
;
��[ \
material
�� 
.
�� 
SetInt
�� #
(
��# $
$str
��$ /
,
��/ 0
(
��1 2
int
��2 5
)
��5 6
UnityEngine
��7 B
.
��B C
	Rendering
��C L
.
��L M
	BlendMode
��M V
.
��V W
Zero
��W [
)
��[ \
;
��\ ]
material
�� 
.
�� 
SetInt
�� #
(
��# $
$str
��$ -
,
��- .
$num
��/ 0
)
��0 1
;
��1 2
material
�� 
.
�� 
DisableKeyword
�� +
(
��+ ,
$str
��, B
)
��B C
;
��C D
material
�� 
.
�� "
SetShaderPassEnabled
�� 1
(
��1 2
$str
��2 @
,
��@ A
true
��B F
)
��F G
;
��G H
}
�� 
else
�� 
{
�� 
	BlendMode
�� 
	blendMode
�� '
=
��( )
(
��* +
	BlendMode
��+ 4
)
��4 5
material
��6 >
.
��> ?
GetFloat
��? G
(
��G H
$str
��H P
)
��P Q
;
��Q R
switch
�� 
(
�� 
	blendMode
�� %
)
��% &
{
�� 
case
�� 
	BlendMode
�� &
.
��& '
Alpha
��' ,
:
��, -
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
SrcAlpha
��_ g
)
��g h
;
��h i
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
OneMinusSrcAlpha
��_ o
)
��o p
;
��p q
material
�� $
.
��$ %
DisableKeyword
��% 3
(
��3 4
$str
��4 J
)
��J K
;
��K L
break
�� !
;
��! "
case
�� 
	BlendMode
�� &
.
��& '
Premultiply
��' 2
:
��2 3
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
One
��_ b
)
��b c
;
��c d
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
OneMinusSrcAlpha
��_ o
)
��o p
;
��p q
material
�� $
.
��$ %

��% 2
(
��2 3
$str
��3 I
)
��I J
;
��J K
break
�� !
;
��! "
case
�� 
	BlendMode
�� &
.
��& '
Additive
��' /
:
��/ 0
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
SrcAlpha
��_ g
)
��g h
;
��h i
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
One
��_ b
)
��b c
;
��c d
material
�� $
.
��$ %
DisableKeyword
��% 3
(
��3 4
$str
��4 J
)
��J K
;
��K L
break
�� !
;
��! "
case
�� 
	BlendMode
�� &
.
��& '
Multiply
��' /
:
��/ 0
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
DstColor
��_ g
)
��g h
;
��h i
material
�� $
.
��$ %
SetInt
��% +
(
��+ ,
$str
��, 7
,
��7 8
(
��9 :
int
��: =
)
��= >
UnityEngine
��? J
.
��J K
	Rendering
��K T
.
��T U
	BlendMode
��U ^
.
��^ _
Zero
��_ c
)
��c d
;
��d e
material
�� $
.
��$ %
DisableKeyword
��% 3
(
��3 4
$str
��4 J
)
��J K
;
��K L
material
�� $
.
��$ %

��% 2
(
��2 3
$str
��3 F
)
��F G
;
��G H
break
�� !
;
��! "
}
�� 
material
�� 
.
�� 
SetOverrideTag
�� +
(
��+ ,
$str
��, 8
,
��8 9
$str
��: G
)
��G H
;
��H I
material
�� 
.
�� 
SetInt
�� #
(
��# $
$str
��$ -
,
��- .
$num
��/ 0
)
��0 1
;
��1 2
material
�� 
.
�� 
renderQueue
�� (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
RenderQueue
��0 ;
.
��; <
Transparent
��< G
;
��G H
material
�� 
.
�� 
renderQueue
�� (
+=
��) +
material
��, 4
.
��4 5
HasProperty
��5 @
(
��@ A
$str
��A O
)
��O P
?
��Q R
(
��S T
int
��T W
)
��W X
material
��Y a
.
��a b
GetFloat
��b j
(
��j k
$str
��k y
)
��y z
:
��{ |
$num
��} ~
;
��~ 
material
�� 
.
�� "
SetShaderPassEnabled
�� 1
(
��1 2
$str
��2 @
,
��@ A
false
��B G
)
��G H
;
��H I
}
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
void
��  
TwoFloatSingleLine
�� -
(
��- .

GUIContent
��. 8
title
��9 >
,
��> ?
MaterialProperty
��@ P
prop1
��Q V
,
��V W

GUIContent
��X b

prop1Label
��c m
,
��m n
MaterialProperty
�� 
prop2
�� "
,
��" #

GUIContent
��$ .

prop2Label
��/ 9
,
��9 :
MaterialEditor
��; I
materialEditor
��J X
,
��X Y
float
��Z _

labelWidth
��` j
=
��k l
$num
��m p
)
��p q
{
�� 	
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
prop1
��' ,
.
��, -

��- :
||
��; =
prop2
��> C
.
��C D

��D Q
;
��Q R
Rect
�� 
rect
�� 
=
�� 
EditorGUILayout
�� '
.
��' (
GetControlRect
��( 6
(
��6 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
PrefixLabel
�� !
(
��! "
rect
��" &
,
��& '
title
��( -
)
��- .
;
��. /
var
�� 
indent
�� 
=
�� 
	EditorGUI
�� "
.
��" #
indentLevel
��# .
;
��. /
var
�� 

�� 
=
�� 
EditorGUIUtility
��  0
.
��0 1

labelWidth
��1 ;
;
��; <
	EditorGUI
�� 
.
�� 
indentLevel
�� !
=
��" #
$num
��$ %
;
��% &
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )

labelWidth
��* 4
;
��4 5
Rect
�� 
	propRect1
�� 
=
�� 
new
��  
Rect
��! %
(
��% &
rect
��& *
.
��* +
x
��+ ,
+
��- .

��/ <
,
��< =
rect
��> B
.
��B C
y
��C D
,
��D E
(
�� 
rect
�� 
.
�� 
width
�� 
-
�� 

�� +
)
��+ ,
*
��- .
$num
��/ 3
,
��3 4
EditorGUIUtility
��5 E
.
��E F
singleLineHeight
��F V
)
��V W
;
��W X
var
�� 
prop1val
�� 
=
�� 
	EditorGUI
�� $
.
��$ %

FloatField
��% /
(
��/ 0
	propRect1
��0 9
,
��9 :

prop1Label
��; E
,
��E F
prop1
��G L
.
��L M

floatValue
��M W
)
��W X
;
��X Y
Rect
�� 
	propRect2
�� 
=
�� 
new
��  
Rect
��! %
(
��% &
	propRect1
��& /
.
��/ 0
x
��0 1
+
��2 3
	propRect1
��4 =
.
��= >
width
��> C
,
��C D
rect
��E I
.
��I J
y
��J K
,
��K L
	propRect1
�� 
.
�� 
width
�� 
,
��  
EditorGUIUtility
��! 1
.
��1 2
singleLineHeight
��2 B
)
��B C
;
��C D
var
�� 
prop2val
�� 
=
�� 
	EditorGUI
�� $
.
��$ %

FloatField
��% /
(
��/ 0
	propRect2
��0 9
,
��9 :

prop2Label
��; E
,
��E F
prop2
��G L
.
��L M

floatValue
��M W
)
��W X
;
��X Y
	EditorGUI
�� 
.
�� 
indentLevel
�� !
=
��" #
indent
��$ *
;
��* +
EditorGUIUtility
�� 
.
�� 

labelWidth
�� '
=
��( )

��* 7
;
��7 8
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
materialEditor
�� 
.
�� (
RegisterPropertyChangeUndo
�� 9
(
��9 :
title
��: ?
.
��? @
text
��@ D
)
��D E
;
��E F
prop1
�� 
.
�� 

floatValue
��  
=
��! "
prop1val
��# +
;
��+ ,
prop2
�� 
.
�� 

floatValue
��  
=
��! "
prop2val
��# +
;
��+ ,
}
�� 
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
false
��' ,
;
��, -
}
�� 	
public
�� 
void
�� 
DoPopup
�� 
(
�� 

GUIContent
�� &
label
��' ,
,
��, -
MaterialProperty
��. >
property
��? G
,
��G H
string
��I O
[
��O P
]
��P Q
options
��R Y
)
��Y Z
{
�� 	
DoPopup
�� 
(
�� 
label
�� 
,
�� 
property
�� #
,
��# $
options
��% ,
,
��, -
materialEditor
��. <
)
��< =
;
��= >
}
�� 	
public
�� 
static
�� 
void
�� 
DoPopup
�� "
(
��" #

GUIContent
��# -
label
��. 3
,
��3 4
MaterialProperty
��5 E
property
��F N
,
��N O
string
��P V
[
��V W
]
��W X
options
��Y `
,
��` a
MaterialEditor
��b p
materialEditor
��q 
)�� �
{
�� 	
if
�� 
(
�� 
property
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 :
)
��: ;
;
��; <
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
property
��' /
.
��/ 0

��0 =
;
��= >
var
�� 
mode
�� 
=
�� 
property
�� 
.
��  

floatValue
��  *
;
��* +
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
mode
�� 
=
�� 
EditorGUILayout
�� "
.
��" #
Popup
��# (
(
��( )
label
��) .
,
��. /
(
��0 1
int
��1 4
)
��4 5
mode
��5 9
,
��9 :
options
��; B
)
��B C
;
��C D
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
materialEditor
�� 
.
�� (
RegisterPropertyChangeUndo
�� 9
(
��9 :
label
��: ?
.
��? @
text
��@ D
)
��D E
;
��E F
property
�� 
.
�� 

floatValue
�� #
=
��$ %
mode
��& *
;
��* +
}
�� 
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
false
��' ,
;
��, -
}
�� 	
public
�� 
static
�� 
Rect
�� 
TextureColorProps
�� ,
(
��, -
MaterialEditor
��- ;
materialEditor
��< J
,
��J K

GUIContent
��L V
label
��W \
,
��\ ]
MaterialProperty
��^ n
textureProp
��o z
,
��z {
MaterialProperty��| �
	colorProp��� �
,��� �
bool��� �
hdr��� �
=��� �
false��� �
)��� �
{
�� 	
Rect
�� 
rect
�� 
=
�� 
EditorGUILayout
�� '
.
��' (
GetControlRect
��( 6
(
��6 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
textureProp
��' 2
.
��2 3

��3 @
;
��@ A
materialEditor
�� 
.
�� *
TexturePropertyMiniThumbnail
�� 7
(
��7 8
rect
��8 <
,
��< =
textureProp
��> I
,
��I J
label
��K P
.
��P Q
text
��Q U
,
��U V
label
��W \
.
��\ ]
tooltip
��] d
)
��d e
;
��e f
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &
false
��' ,
;
��, -
if
�� 
(
�� 
	colorProp
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
	colorProp
��+ 4
.
��4 5

��5 B
;
��B C
int
�� 
indentLevel
�� 
=
��  !
	EditorGUI
��" +
.
��+ ,
indentLevel
��, 7
;
��7 8
	EditorGUI
�� 
.
�� 
indentLevel
�� %
=
��& '
$num
��( )
;
��) *
Rect
�� 
rectAfterLabel
�� #
=
��$ %
new
��& )
Rect
��* .
(
��. /
rect
��/ 3
.
��3 4
x
��4 5
+
��6 7
EditorGUIUtility
��8 H
.
��H I

labelWidth
��I S
,
��S T
rect
��U Y
.
��Y Z
y
��Z [
,
��[ \
EditorGUIUtility
�� $
.
��$ %

fieldWidth
��% /
,
��/ 0
EditorGUIUtility
��1 A
.
��A B
singleLineHeight
��B R
)
��R S
;
��S T
var
�� 
col
�� 
=
�� 
	EditorGUI
�� #
.
��# $

ColorField
��$ .
(
��. /
rectAfterLabel
��/ =
,
��= >

GUIContent
��? I
.
��I J
none
��J N
,
��N O
	colorProp
��P Y
.
��Y Z

colorValue
��Z d
,
��d e
true
��f j
,
��j k
false
�� 
,
�� 
hdr
�� 
)
�� 
;
��  
	EditorGUI
�� 
.
�� 
indentLevel
�� %
=
��& '
indentLevel
��( 3
;
��3 4
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
materialEditor
�� "
.
��" #(
RegisterPropertyChangeUndo
��# =
(
��= >
	colorProp
��> G
.
��G H
displayName
��H S
)
��S T
;
��T U
	colorProp
�� 
.
�� 

colorValue
�� (
=
��) *
col
��+ .
;
��. /
}
�� 
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
false
��+ 0
;
��0 1
}
�� 
return
�� 
rect
�� 
;
�� 
}
�� 	
public
�� 
new
�� 
static
�� 
MaterialProperty
�� *
FindProperty
��+ 7
(
��7 8
string
��8 >
propertyName
��? K
,
��K L
MaterialProperty
��M ]
[
��] ^
]
��^ _

properties
��` j
)
��j k
{
�� 	
return
�� 
FindProperty
�� 
(
��  
propertyName
��  ,
,
��, -

properties
��. 8
,
��8 9
true
��: >
)
��> ?
;
��? @
}
�� 	
public
�� 
new
�� 
static
�� 
MaterialProperty
�� *
FindProperty
��+ 7
(
��7 8
string
��8 >
propertyName
��? K
,
��K L
MaterialProperty
��M ]
[
��] ^
]
��^ _

properties
��` j
,
��j k
bool
��l p"
propertyIsMandatory��q �
)��� �
{
�� 	
for
�� 
(
�� 
int
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
��  %
<
��& '

properties
��( 2
.
��2 3
Length
��3 9
;
��9 :
++
��; =
index
��= B
)
��B C
{
�� 
if
�� 
(
�� 

properties
�� 
[
�� 
index
�� $
]
��$ %
!=
��& (
null
��) -
&&
��. 0

properties
��1 ;
[
��; <
index
��< A
]
��A B
.
��B C
name
��C G
==
��H J
propertyName
��K W
)
��W X
return
�� 

properties
�� %
[
��% &
index
��& +
]
��+ ,
;
��, -
}
�� 
if
�� 
(
�� !
propertyIsMandatory
�� #
)
��# $
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, P
+
��Q R
propertyName
��S _
+
��` a
$str
��b w
+
��x y
(
��z {
object��{ �
)��� �

properties��� �
.��� �
Length��� �
)��� �
;��� �
return
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �C
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\Shapes\ShapeExtensions.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
static
class 
ShapeExtensions )
{		 
public

 
static

 
Polygon

 
	ToPolygon

 '
(

' (
this

( ,
Vector3

- 4
[

4 5
]

5 6
points

7 =
,

= >
bool

? C
isOpenEnded

D O
)

O P
{ 	
return 
new 
Polygon 
( 
) 
{
isOpenEnded 
= 
isOpenEnded (
,( )
points 
= 
points 
} 
;
} 	
public 
static 
Spline 
ToSpline %
(% &
this& *
Vector3+ 2
[2 3
]3 4
points5 ;
,; <
bool= A
isOpenEndedB M
)M N
{ 	
if 
( 
! 
points 
. 
IsSpline  
(  !
isOpenEnded! ,
), -
&&. 0
points1 7
.7 8
IsSpline8 @
(@ A
!A B
isOpenEndedB M
)M N
)N O
{ 
var 
	pointList 
= 
new  #
List$ (
<( )
Vector3) 0
>0 1
(1 2
points2 8
)8 9
;9 :
if 
( 
isOpenEnded 
)  
{ 
while 
( 
	pointList $
.$ %
Count% *
%+ ,
$num- .
!=/ 1
$num2 3
)3 4
	pointList !
.! "
RemoveAt" *
(* +
	pointList+ 4
.4 5
Count5 :
-: ;
$num; <
)< =
;= >
points 
= 
	pointList &
.& '
ToArray' .
(. /
)/ 0
;0 1
} 
else   
{!! 
var"" 
last"" 
="" 
	pointList"" (
[""( )
	pointList"") 2
.""2 3
Count""3 8
-""8 9
$num""9 :
]"": ;
;""; <
var## 
first## 
=## 
	pointList##  )
[##) *
$num##* +
]##+ ,
;##, -
var$$ 
v$$ 
=$$ 
first$$ !
-$$" #
last$$$ (
;$$( )
	pointList&& 
.&& 
Add&& !
(&&! "
last&&" &
+&&' (
v&&) *
.&&* +

normalized&&+ 5
*&&6 7
(&&8 9
v&&9 :
.&&: ;
	magnitude&&; D
/&&E F
$num&&G I
)&&I J
)&&J K
;&&K L
	pointList'' 
.'' 
Add'' !
(''! "
first''" '
-''( )
v''* +
.''+ ,

normalized'', 6
*''7 8
(''9 :
v'': ;
.''; <
	magnitude''< E
/''F G
$num''H J
)''J K
)''K L
;''L M
points)) 
=)) 
	pointList)) &
.))& '
ToArray))' .
()). /
)))/ 0
;))0 1
}** 
}++ 
if-- 
(-- 
!-- 
points-- 
.-- 
IsSpline--  
(--  !
isOpenEnded--! ,
)--, -
)--- .
throw.. 
new.. 
	Exception.. #
(..# $
$str..$ ^
)..^ _
;.._ `
return00 
new00 
Spline00 
(00 
)00 
{11 
isOpenEnded22 
=22 
isOpenEnded22 )
,22) *
points33 
=33 
points33 
}44 
;44
}55 	
public77 
static77 
bool77 
IsSpline77 #
(77# $
this77$ (
Vector377) 0
[770 1
]771 2
points773 9
,779 :
bool77; ?
isOpenEnded77@ K
)77K L
{88 	
if99 
(99 
points99 
.99 
Length99 
<99 
$num99  !
)99! "
return:: 
false:: 
;:: 
if<< 
(<< 
isOpenEnded<< 
&&<< 
points<< %
.<<% &
Length<<& ,
%<<- .
$num<</ 0
!=<<1 3
$num<<4 5
)<<5 6
return== 
false== 
;== 
if?? 
(?? 
!?? 
isOpenEnded?? 
&&?? 
points??  &
.??& '
Length??' -
%??. /
$num??0 1
!=??2 4
$num??5 6
)??6 7
return@@ 
false@@ 
;@@ 
returnBB 
trueBB 
;BB 
}CC 	
publicEE 
staticEE 
SplineEE 
ToSplineEE %
(EE% &
thisEE& *
PolygonEE+ 2
polygonEE3 :
)EE: ;
{FF 	
varGG 

=GG 
polygonGG  '
.GG' (
pointsGG( .
.GG. /
LengthGG/ 5
*GG6 7
$numGG8 9
;GG9 :
ifII 
(II 
polygonII 
.II 
isOpenEndedII #
)II# $

=JJ 
(JJ  !
polygonJJ! (
.JJ( )
pointsJJ) /
.JJ/ 0
LengthJJ0 6
-JJ7 8
$numJJ9 :
)JJ: ;
*JJ< =
$numJJ> ?
+JJ@ A
$numJJB C
;JJC D
varLL 
	newPointsLL 
=LL 
newLL 
Vector3LL  '
[LL' (

]LL5 6
;LL6 7
varMM 

=MM 
polygonMM  '
.MM' (
pointsMM( .
;MM. /
varNN 

pointCountNN 
=NN 

.NN* +
LengthNN+ 1
;NN1 2
forPP 
(PP 
varPP 
iPP 
=PP 
$numPP 
;PP 
iPP 
<PP 

pointCountPP  *
;PP* +
++PP, .
iPP. /
)PP/ 0
{QQ 
varRR 
	nextIndexRR 
=RR 
(RR  !
iRR! "
+RR# $
$numRR% &
)RR& '
%RR( )

pointCountRR* 4
;RR4 5
varSS 
pointSS 
=SS 

[SS) *
iSS* +
]SS+ ,
;SS, -
varTT 
vTT 
=TT 

[TT% &
	nextIndexTT& /
]TT/ 0
-TT1 2
pointTT3 8
;TT8 9
	newPointsVV 
[VV 
iVV 
*VV 
$numVV 
]VV  
=VV! "
pointVV# (
;VV( )
ifXX 
(XX 
iXX 
*XX 
$numXX 
+XX 
$numXX 
<XX 

)XX- .
{YY 
	newPointsZZ 
[ZZ 
iZZ 
*ZZ  !
$numZZ" #
+ZZ$ %
$numZZ& '
]ZZ' (
=ZZ) *
pointZZ+ 0
+ZZ1 2
vZZ3 4
/ZZ5 6
$numZZ7 9
;ZZ9 :
	newPoints[[ 
[[[ 
i[[ 
*[[  !
$num[[" #
+[[$ %
$num[[& '
][[' (
=[[) *
point[[+ 0
+[[1 2
v[[3 4
*[[5 6
$num[[7 9
/[[: ;
$num[[< >
;[[> ?
}\\ 
}]] 
return__ 
new__ 
Spline__ 
(__ 
)__ 
{`` 
isOpenEndedaa 
=aa 
polygonaa %
.aa% &
isOpenEndedaa& 1
,aa1 2
pointsbb 
=bb 
	newPointsbb "
}cc 
;cc
}dd 	
}ee 
}ff ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetPostProcessors\AutodeskInteractiveMaterialImport.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class 	-
!AutodeskInteractiveMaterialImport
 +
:, -
AssetPostprocessor. @
{		 
static

 
readonly

 
uint

 
	k_Version

 &
=

' (
$num

) *
;

* +
static 
readonly 
int 
k_Order #
=$ %
$num& '
;' (
public 
override 
uint 

GetVersion '
(' (
)( )
{
return 
	k_Version 
; 
} 	
public 
override 
int 
GetPostprocessOrder /
(/ 0
)0 1
{ 	
return 
k_Order 
; 
} 	
public 
void +
OnPreprocessMaterialDescription 3
(3 4
MaterialDescription4 G
descriptionH S
,S T
MaterialU ]
material^ f
,f g

[u v
]v w
clipsx }
)} ~
{ 	
var 

= 
GraphicsSettings  0
.0 1!
currentRenderPipeline1 F
;F G
if 
( 
! 

|| !

./ 0
GetType0 7
(7 8
)8 9
!=: <
typeof= C
(C D(
UniversalRenderPipelineAssetD `
)` a
)a b
return 
; 
if 
( )
IsAutodeskInteractiveMaterial -
(- .
description. 9
)9 :
): ;
{ 
float 

;# $
Vector4 
vectorProperty &
;& '&
TexturePropertyDescription *
textureProperty+ :
;: ;
bool!! 
isMasked!! 
=!! 
description!!  +
.!!+ ,
TryGetProperty!!, :
(!!: ;
$str!!; K
,!!K L
out!!L O

)!!] ^
;!!^ _
bool"" 

=""# $
description""% 0
.""0 1
TryGetProperty""1 ?
(""? @
$str""@ I
,""I J
out""J M

)""[ \
;""\ ]
Shader$$ 
shader$$ 
;$$ 
if%% 
(%% 
isMasked%% 
)%% 
shader&& 
=&& 
GraphicsSettings&& -
.&&- .!
currentRenderPipeline&&. C
.&&C D+
autodeskInteractiveMaskedShader&&D c
;&&c d
else'' 
if'' 
('' 

)''& '
shader(( 
=(( 
GraphicsSettings(( -
.((- .!
currentRenderPipeline((. C
.((C D0
$autodeskInteractiveTransparentShader((D h
;((h i
else)) 
shader** 
=** 
GraphicsSettings** -
.**- .!
currentRenderPipeline**. C
.**C D%
autodeskInteractiveShader**D ]
;**] ^
if,, 
(,, 
shader,, 
==,, 
null,, "
),," #
return-- 
;-- 
material// 
.// 
shader// 
=//  !
shader//" (
;//( )
foreach00 
(00 
var00 
clip00 !
in00" $
clips00% *
)00* +
{11 
clip22 
.22 
ClearCurves22 $
(22$ %
)22% &
;22& '
}33 
if55 
(55 
description55 
.55  
TryGetProperty55  .
(55. /
$str55/ ;
,55; <
out55= @
vectorProperty55A O
)55O P
)55P Q
material66 
.66 
SetColor66 %
(66% &
$str66& .
,66. /
vectorProperty660 >
)66> ?
;66? @
if77 
(77 
description77 
.77  
TryGetProperty77  .
(77. /
$str77/ 9
,779 :
out77; >
vectorProperty77? M
)77M N
)77N O
material88 
.88 
SetColor88 %
(88% &
$str88& 6
,886 7
vectorProperty888 F
)88F G
;88G H
if:: 
(:: 
description:: 
.::  
TryGetProperty::  .
(::. /
$str::/ :
,::: ;
out::< ?

)::M N
)::N O
material;; 
.;; 
SetFloat;; %
(;;% &
$str;;& 2
,;;2 3

);;A B
;;;B C
if== 
(== 
description== 
.==  
TryGetProperty==  .
(==. /
$str==/ 9
,==9 :
out==; >

)==L M
)==M N
material>> 
.>> 
SetFloat>> %
(>>% &
$str>>& 1
,>>1 2

)>>@ A
;>>A B
if@@ 
(@@ 
description@@ 
.@@  
TryGetProperty@@  .
(@@. /
$str@@/ <
,@@< =
out@@> A
vectorProperty@@B P
)@@P Q
)@@Q R
{AA 
materialBB 
.BB 
	SetVectorBB &
(BB& '
$strBB' 2
,BB2 3
newBB4 7
Vector4BB8 ?
(BB? @
vectorPropertyBB@ N
.BBN O
xBBO P
,BBP Q
vectorPropertyBBR `
.BB` a
yBBa b
,BBb c
$numBBd g
,BBg h
$numBBi l
)BBl m
)BBm n
;BBn o
materialCC 
.CC 
	SetVectorCC &
(CC& '
$strCC' 2
,CC2 3
newCC4 7
Vector4CC8 ?
(CC? @
vectorPropertyCC@ N
.CCN O
wCCO P
,CCP Q
vectorPropertyCCR `
.CC` a
zCCa b
,CCb c
$numCCd g
,CCg h
$numCCi l
)CCl m
)CCm n
;CCn o
}DD 
ifFF 
(FF 
descriptionFF 
.FF  
TryGetPropertyFF  .
(FF. /
$strFF/ >
,FF> ?
outFF@ C
texturePropertyFFD S
)FFS T
)FFT U
{GG 
materialHH 
.HH 

SetTextureHH '
(HH' (
$strHH( 2
,HH2 3
texturePropertyHH4 C
.HHC D
textureHHD K
)HHK L
;HHL M
materialII 
.II 
SetFloatII %
(II% &
$strII& 4
,II4 5
$numII6 :
)II: ;
;II; <
}JJ 
elseKK 
{LL 
materialMM 
.MM 
SetFloatMM %
(MM% &
$strMM& 4
,MM4 5
$numMM6 :
)MM: ;
;MM; <
}NN 
ifPP 
(PP 
descriptionPP 
.PP  
TryGetPropertyPP  .
(PP. /
$strPP/ ?
,PP? @
outPPA D
texturePropertyPPE T
)PPT U
)PPU V
{QQ 
materialRR 
.RR 

SetTextureRR '
(RR' (
$strRR( 2
,RR2 3
texturePropertyRR4 C
.RRC D
textureRRD K
)RRK L
;RRL M
materialSS 
.SS 
SetFloatSS %
(SS% &
$strSS& 5
,SS5 6
$numSS7 ;
)SS; <
;SS< =
}TT 
elseUU 
{VV 
materialWW 
.WW 
SetFloatWW %
(WW% &
$strWW& 5
,WW5 6
$numWW7 ;
)WW; <
;WW< =
}XX 
ifZZ 
(ZZ 
descriptionZZ 
.ZZ  
TryGetPropertyZZ  .
(ZZ. /
$strZZ/ B
,ZZB C
outZZD G
texturePropertyZZH W
)ZZW X
)ZZX Y
{[[ 
material\\ 
.\\ 

SetTexture\\ '
(\\' (
$str\\( 6
,\\6 7
textureProperty\\8 G
.\\G H
texture\\H O
)\\O P
;\\P Q
material]] 
.]] 
SetFloat]] %
(]]% &
$str]]& 8
,]]8 9
$num]]: >
)]]> ?
;]]? @
}^^ 
else__ 
{`` 
materialaa 
.aa 
SetFloataa %
(aa% &
$straa& 8
,aa8 9
$numaa: >
)aa> ?
;aa? @
}bb 
ifdd 
(dd 
descriptiondd 
.dd  
TryGetPropertydd  .
(dd. /
$strdd/ A
,ddA B
outddC F
texturePropertyddG V
)ddV W
)ddW X
{ee 
materialff 
.ff 

SetTextureff '
(ff' (
$strff( 6
,ff6 7
texturePropertyff8 G
.ffG H
textureffH O
)ffO P
;ffP Q
materialgg 
.gg 
SetFloatgg %
(gg% &
$strgg& 7
,gg7 8
$numgg9 =
)gg= >
;gg> ?
}hh 
elseii 
{jj 
materialkk 
.kk 
SetFloatkk %
(kk% &
$strkk& 7
,kk7 8
$numkk9 =
)kk= >
;kk> ?
}ll 
ifnn 
(nn 
descriptionnn 
.nn  
TryGetPropertynn  .
(nn. /
$strnn/ A
,nnA B
outnnC F
texturePropertynnG V
)nnV W
)nnW X
{oo 
materialpp 
.pp 

SetTexturepp '
(pp' (
$strpp( 6
,pp6 7
texturePropertypp8 G
.ppG H
textureppH O
)ppO P
;ppP Q
materialqq 
.qq 
SetFloatqq %
(qq% &
$strqq& 7
,qq7 8
$numqq9 =
)qq= >
;qq> ?
}rr 
elsess 
{tt 
materialuu 
.uu 
SetFloatuu %
(uu% &
$struu& 7
,uu7 8
$numuu9 =
)uu= >
;uu> ?
}vv 
ifxx 
(xx 
descriptionxx 
.xx  
TryGetPropertyxx  .
(xx. /
$strxx/ G
,xxG H
outxxI L

)xxZ [
)xx[ \
materialyy 
.yy 
SetFloatyy %
(yy% &
$stryy& 6
,yy6 7

)yyE F
;yyF G
if{{ 
({{ 
description{{ 
.{{  
TryGetProperty{{  .
({{. /
$str{{/ J
,{{J K
out{{L O

){{] ^
){{^ _
material|| 
.|| 
SetFloat|| %
(||% &
$str||& 9
,||9 :

)||H I
;||I J
if~~ 
(~~ 
description~~ 
.~~  
TryGetProperty~~  .
(~~. /
$str~~/ ;
,~~; <
out~~= @
textureProperty~~A P
)~~P Q
)~~Q R
{ 
var
�� 
tex
�� 
=
�� 

�� +
.
��+ ,
LoadAssetAtPath
��, ;
<
��; <
Texture
��< C
>
��C D
(
��D E
textureProperty
��E T
.
��T U
relativePath
��U a
)
��a b
;
��b c
material
�� 
.
�� 

SetTexture
�� '
(
��' (
$str
��( /
,
��/ 0
tex
��1 4
)
��4 5
;
��5 6
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 0
,
��0 1
$num
��2 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 0
,
��0 1
$num
��2 6
)
��6 7
;
��7 8
}
�� 
RemapColorCurves
��  
(
��  !
description
��! ,
,
��, -
clips
��. 3
,
��3 4
$str
��5 A
,
��A B
$str
��C K
)
��K L
;
��L M

RemapCurve
�� 
(
�� 
description
�� &
,
��& '
clips
��( -
,
��- .
$str
��/ ?
,
��? @
$str
��A J
)
��J K
;
��K L

RemapCurve
�� 
(
�� 
description
�� &
,
��& '
clips
��( -
,
��- .
$str
��/ 9
,
��9 :
$str
��; F
)
��F G
;
��G H

RemapCurve
�� 
(
�� 
description
�� &
,
��& '
clips
��( -
,
��- .
$str
��/ :
,
��: ;
$str
��< I
)
��I J
;
��J K
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
clips
��$ )
.
��) *
Length
��* 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
if
�� 
(
�� 
description
�� #
.
��# $%
HasAnimationCurveInClip
��$ ;
(
��; <
clips
��< A
[
��A B
i
��B C
]
��C D
.
��D E
name
��E I
,
��I J
$str
��K W
)
��W X
||
��Y [
description
��\ g
.
��g h%
HasAnimationCurveInClip
��h 
(�� �
clips��� �
[��� �
i��� �
]��� �
.��� �
name��� �
,��� �
$str��� �
)��� �
)��� �
{
�� 
AnimationCurve
�� &
curve
��' ,
;
��, -
if
�� 
(
�� 
description
�� '
.
��' ("
TryGetAnimationCurve
��( <
(
��< =
clips
��= B
[
��B C
i
��C D
]
��D E
.
��E F
name
��F J
,
��J K
$str
��L X
,
��X Y
out
��Z ]
curve
��^ c
)
��c d
)
��d e
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
curve
��S X
)
��X Y
;
��Y Z
else
�� 
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
AnimationCurve
��S a
.
��a b
Constant
��b j
(
��j k
$num
��k o
,
��o p
$num
��q u
,
��u v
$num
��w {
)
��{ |
)
��| }
;
��} ~
if
�� 
(
�� 
description
�� '
.
��' ("
TryGetAnimationCurve
��( <
(
��< =
clips
��= B
[
��B C
i
��C D
]
��D E
.
��E F
name
��F J
,
��J K
$str
��L X
,
��X Y
out
��Z ]
curve
��^ c
)
��c d
)
��d e
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
curve
��S X
)
��X Y
;
��Y Z
else
�� 
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
AnimationCurve
��S a
.
��a b
Constant
��b j
(
��j k
$num
��k o
,
��o p
$num
��q u
,
��u v
$num
��w {
)
��{ |
)
��| }
;
��} ~
}
�� 
if
�� 
(
�� 
description
�� #
.
��# $%
HasAnimationCurveInClip
��$ ;
(
��; <
clips
��< A
[
��A B
i
��B C
]
��C D
.
��D E
name
��E I
,
��I J
$str
��K X
)
��X Y
||
��Z \
description
��] h
.
��h i&
HasAnimationCurveInClip��i �
(��� �
clips��� �
[��� �
i��� �
]��� �
.��� �
name��� �
,��� �
$str��� �
)��� �
)��� �
{
�� 
AnimationCurve
�� &
curve
��' ,
;
��, -
if
�� 
(
�� 
description
�� '
.
��' ("
TryGetAnimationCurve
��( <
(
��< =
clips
��= B
[
��B C
i
��C D
]
��D E
.
��E F
name
��F J
,
��J K
$str
��L Y
,
��Y Z
out
��[ ^
curve
��_ d
)
��d e
)
��e f
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
curve
��S X
)
��X Y
;
��Y Z
else
�� 
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
AnimationCurve
��S a
.
��a b
Constant
��b j
(
��j k
$num
��k o
,
��o p
$num
��q u
,
��u v
$num
��w {
)
��{ |
)
��| }
;
��} ~
if
�� 
(
�� 
description
�� '
.
��' ("
TryGetAnimationCurve
��( <
(
��< =
clips
��= B
[
��B C
i
��C D
]
��D E
.
��E F
name
��F J
,
��J K
$str
��L Y
,
��Y Z
out
��[ ^
curve
��_ d
)
��d e
)
��e f
{
�� 
ConvertKeys
�� '
(
��' (
curve
��( -
,
��- . 
ConvertFloatNegate
��/ A
)
��A B
;
��B C
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
curve
��S X
)
��X Y
;
��Y Z
}
�� 
else
�� 
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D Q
,
��Q R
AnimationCurve
��S a
.
��a b
Constant
��b j
(
��j k
$num
��k o
,
��o p
$num
��q u
,
��u v
$num
��w {
)
��{ |
)
��| }
;
��} ~
}
�� 
}
�� 
if
�� 
(
�� 
description
�� 
.
��  
HasAnimationCurve
��  1
(
��1 2
$str
��2 F
)
��F G
)
��G H
{
�� 
Vector4
�� 

�� )
;
��) *
description
�� 
.
��  
TryGetProperty
��  .
(
��. /
$str
��/ 9
,
��9 :
out
��; >

��? L
)
��L M
;
��M N
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
clips
��( -
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
�� 
AnimationCurve
�� &
curve
��' ,
;
��, -
description
�� #
.
��# $"
TryGetAnimationCurve
��$ 8
(
��8 9
clips
��9 >
[
��> ?
i
��? @
]
��@ A
.
��A B
name
��B F
,
��F G
$str
��H \
,
��\ ]
out
��^ a
curve
��b g
)
��g h
;
��h i
clips
�� 
[
�� 
i
�� 
]
��  
.
��  !
SetCurve
��! )
(
��) *
$str
��* ,
,
��, -
typeof
��. 4
(
��4 5
Material
��5 =
)
��= >
,
��> ?
$str
��@ R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
clips
�� 
[
�� 
i
�� 
]
��  
.
��  !
SetCurve
��! )
(
��) *
$str
��* ,
,
��, -
typeof
��. 4
(
��4 5
Material
��5 =
)
��= >
,
��> ?
$str
��@ R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
clips
�� 
[
�� 
i
�� 
]
��  
.
��  !
SetCurve
��! )
(
��) *
$str
��* ,
,
��, -
typeof
��. 4
(
��4 5
Material
��5 =
)
��= >
,
��> ?
$str
��@ R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
description
�� $
.
��$ %
TryGetProperty
��% 3
(
��3 4
$str
��4 >
,
��> ?
out
��@ C
vectorProperty
��D R
)
��R S
)
��S T
{
�� 
if
�� 
(
�� 
vectorProperty
�� &
.
��& '
x
��' (
>
��) *
$num
��+ /
||
��0 2
vectorProperty
��3 A
.
��A B
y
��B C
>
��D E
$num
��F J
||
��K M
vectorProperty
��N \
.
��\ ]
z
��] ^
>
��_ `
$num
��a e
)
��e f
{
�� 
material
��  
.
��  !%
globalIlluminationFlags
��! 8
|=
��9 ;-
MaterialGlobalIlluminationFlags
��< [
.
��[ \
RealtimeEmissive
��\ l
;
��l m
material
��  
.
��  !

��! .
(
��. /
$str
��/ :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 
description
�� #
.
��# $
TryGetProperty
��$ 2
(
��2 3
$str
��3 G
,
��G H
out
��I L

��M Z
)
��Z [
)
��[ \
{
�� 
vectorProperty
�� &
*=
��' )

��* 7
;
��7 8
}
�� 
material
�� 
.
�� 
SetColor
�� %
(
��% &
$str
��& 6
,
��6 7
vectorProperty
��8 F
)
��F G
;
��G H
if
�� 
(
�� 
description
�� #
.
��# $
HasAnimationCurve
��$ 5
(
��5 6
$str
��6 B
)
��B C
)
��C D
{
�� 
if
�� 
(
�� 
description
�� '
.
��' (
HasAnimationCurve
��( 9
(
��9 :
$str
��: N
)
��N O
)
��O P
{
�� 
for
�� 
(
��  !
int
��! $
i
��% &
=
��' (
$num
��) *
;
��* +
i
��, -
<
��. /
clips
��0 5
.
��5 6
Length
��6 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
AnimationCurve
��  .
curve
��/ 4
;
��4 5
AnimationCurve
��  .
intensityCurve
��/ =
;
��= >
description
��  +
.
��+ ,"
TryGetAnimationCurve
��, @
(
��@ A
clips
��A F
[
��F G
i
��G H
]
��H I
.
��I J
name
��J N
,
��N O
$str
��P d
,
��d e
out
��f i
intensityCurve
��j x
)
��x y
;
��y z
description
��  +
.
��+ ,"
TryGetAnimationCurve
��, @
(
��@ A
clips
��A F
[
��F G
i
��G H
]
��H I
.
��I J
name
��J N
,
��N O
$str
��P \
,
��\ ]
out
��^ a
curve
��b g
)
��g h
;
��h i
MultiplyCurves
��  .
(
��. /
curve
��/ 4
,
��4 5
intensityCurve
��6 D
)
��D E
;
��E F
clips
��  %
[
��% &
i
��& '
]
��' (
.
��( )
SetCurve
��) 1
(
��1 2
$str
��2 4
,
��4 5
typeof
��6 <
(
��< =
Material
��= E
)
��E F
,
��F G
$str
��H Z
,
��Z [
curve
��\ a
)
��a b
;
��b c
description
��  +
.
��+ ,"
TryGetAnimationCurve
��, @
(
��@ A
clips
��A F
[
��F G
i
��G H
]
��H I
.
��I J
name
��J N
,
��N O
$str
��P \
,
��\ ]
out
��^ a
curve
��b g
)
��g h
;
��h i
MultiplyCurves
��  .
(
��. /
curve
��/ 4
,
��4 5
intensityCurve
��6 D
)
��D E
;
��E F
clips
��  %
[
��% &
i
��& '
]
��' (
.
��( )
SetCurve
��) 1
(
��1 2
$str
��2 4
,
��4 5
typeof
��6 <
(
��< =
Material
��= E
)
��E F
,
��F G
$str
��H Z
,
��Z [
curve
��\ a
)
��a b
;
��b c
description
��  +
.
��+ ,"
TryGetAnimationCurve
��, @
(
��@ A
clips
��A F
[
��F G
i
��G H
]
��H I
.
��I J
name
��J N
,
��N O
$str
��P \
,
��\ ]
out
��^ a
curve
��b g
)
��g h
;
��h i
MultiplyCurves
��  .
(
��. /
curve
��/ 4
,
��4 5
intensityCurve
��6 D
)
��D E
;
��E F
clips
��  %
[
��% &
i
��& '
]
��' (
.
��( )
SetCurve
��) 1
(
��1 2
$str
��2 4
,
��4 5
typeof
��6 <
(
��< =
Material
��= E
)
��E F
,
��F G
$str
��H Z
,
��Z [
curve
��\ a
)
��a b
;
��b c
}
�� 
}
�� 
else
�� 
{
�� 
RemapColorCurves
�� ,
(
��, -
description
��- 8
,
��8 9
clips
��: ?
,
��? @
$str
��A K
,
��K L
$str
��M ]
)
��] ^
;
��^ _
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
description
�� (
.
��( )
HasAnimationCurve
��) :
(
��: ;
$str
��; O
)
��O P
)
��P Q
{
�� 
Vector4
�� 

��  -
;
��- .
description
�� #
.
��# $
TryGetProperty
��$ 2
(
��2 3
$str
��3 =
,
��= >
out
��? B

��C P
)
��P Q
;
��Q R
for
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +
clips
��, 1
.
��1 2
Length
��2 8
;
��8 9
i
��: ;
++
��; =
)
��= >
{
�� 
AnimationCurve
�� *
curve
��+ 0
;
��0 1
description
�� '
.
��' ("
TryGetAnimationCurve
��( <
(
��< =
clips
��= B
[
��B C
i
��C D
]
��D E
.
��E F
name
��F J
,
��J K
$str
��L `
,
��` a
out
��b e
curve
��f k
)
��k l
;
��l m
AnimationCurve
�� *
curveR
��+ 1
=
��2 3
new
��4 7
AnimationCurve
��8 F
(
��F G
)
��G H
;
��H I 
ConvertAndCopyKeys
�� .
(
��. /
curveR
��/ 5
,
��5 6
curve
��7 <
,
��< =
value
��> C
=>
��D F"
ConvertFloatMultiply
��G [
(
��[ \

��\ i
.
��i j
x
��j k
,
��k l
value
��m r
)
��r s
)
��s t
;
��t u
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D V
,
��V W
curveR
��X ^
)
��^ _
;
��_ `
AnimationCurve
�� *
curveG
��+ 1
=
��2 3
new
��4 7
AnimationCurve
��8 F
(
��F G
)
��G H
;
��H I 
ConvertAndCopyKeys
�� .
(
��. /
curveG
��/ 5
,
��5 6
curve
��7 <
,
��< =
value
��> C
=>
��D F"
ConvertFloatMultiply
��G [
(
��[ \

��\ i
.
��i j
y
��j k
,
��k l
value
��m r
)
��r s
)
��s t
;
��t u
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D V
,
��V W
curveG
��X ^
)
��^ _
;
��_ `
AnimationCurve
�� *
curveB
��+ 1
=
��2 3
new
��4 7
AnimationCurve
��8 F
(
��F G
)
��G H
;
��H I 
ConvertAndCopyKeys
�� .
(
��. /
curveB
��/ 5
,
��5 6
curve
��7 <
,
��< =
value
��> C
=>
��D F"
ConvertFloatMultiply
��G [
(
��[ \

��\ i
.
��i j
z
��j k
,
��k l
value
��m r
)
��r s
)
��s t
;
��t u
clips
�� !
[
��! "
i
��" #
]
��# $
.
��$ %
SetCurve
��% -
(
��- .
$str
��. 0
,
��0 1
typeof
��2 8
(
��8 9
Material
��9 A
)
��A B
,
��B C
$str
��D V
,
��V W
curveB
��X ^
)
��^ _
;
��_ `
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
static
�� 
bool
�� +
IsAutodeskInteractiveMaterial
�� 1
(
��1 2!
MaterialDescription
��2 E
description
��F Q
)
��Q R
{
�� 	
return
�� 
description
�� 
.
�� 
TryGetProperty
�� -
(
��- .
$str
��. 9
,
��9 :
out
��; >
string
��? E
stringValue
��F Q
)
��Q R
&&
��S U
stringValue
��V a
==
��b d
$str
��e u
;
��u v
}
�� 	
static
�� 
void
�� 
ConvertKeys
�� 
(
��  
AnimationCurve
��  .
curve
��/ 4
,
��4 5
System
��6 <
.
��< =
Func
��= A
<
��A B
float
��B G
,
��G H
float
��I N
>
��N O 
convertionDelegate
��P b
)
��b c
{
�� 	
Keyframe
�� 
[
�� 
]
�� 
	keyframes
��  
=
��! "
curve
��# (
.
��( )
keys
��) -
;
��- .
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
�� 
	keyframes
��  )
.
��) *
Length
��* 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
	keyframes
�� 
[
�� 
i
�� 
]
�� 
.
�� 
value
�� "
=
��# $ 
convertionDelegate
��% 7
(
��7 8
	keyframes
��8 A
[
��A B
i
��B C
]
��C D
.
��D E
value
��E J
)
��J K
;
��K L
}
�� 
curve
�� 
.
�� 
keys
�� 
=
�� 
	keyframes
�� "
;
��" #
}
�� 	
static
�� 
void
��  
ConvertAndCopyKeys
�� &
(
��& '
AnimationCurve
��' 5
	curveDest
��6 ?
,
��? @
AnimationCurve
��A O
curveSource
��P [
,
��[ \
System
��] c
.
��c d
Func
��d h
<
��h i
float
��i n
,
��n o
float
��p u
>
��u v!
convertionDelegate��w �
)��� �
{
�� 	
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
curveSource
��  +
.
��+ ,
keys
��, 0
.
��0 1
Length
��1 7
;
��7 8
i
��9 :
++
��: <
)
��< =
{
�� 
var
�� 
	sourceKey
�� 
=
�� 
curveSource
��  +
.
��+ ,
keys
��, 0
[
��0 1
i
��1 2
]
��2 3
;
��3 4
	curveDest
�� 
.
�� 
AddKey
��  
(
��  !
new
��! $
Keyframe
��% -
(
��- .
	sourceKey
��. 7
.
��7 8
time
��8 <
,
��< = 
convertionDelegate
��> P
(
��P Q
	sourceKey
��Q Z
.
��Z [
value
��[ `
)
��` a
,
��a b
	sourceKey
��c l
.
��l m
	inTangent
��m v
,
��v w
	sourceKey��x �
.��� �

outTangent��� �
,��� �
	sourceKey��� �
.��� �
inWeight��� �
,��� �
	sourceKey��� �
.��� �
	outWeight��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
static
�� 
float
��  
ConvertFloatNegate
�� '
(
��' (
float
��( -
value
��. 3
)
��3 4
{
�� 	
return
�� 
-
�� 
value
�� 
;
�� 
}
�� 	
static
�� 
float
�� "
ConvertFloatMultiply
�� )
(
��) *
float
��* /
value
��0 5
,
��5 6
float
��7 <

multiplier
��= G
)
��G H
{
�� 	
return
�� 
value
�� 
*
�� 

multiplier
�� %
;
��% &
}
�� 	
static
�� 
void
�� 
MultiplyCurves
�� "
(
��" #
AnimationCurve
��# 1
curve
��2 7
,
��7 8
AnimationCurve
��9 G
curveMultiplier
��H W
)
��W X
{
�� 	
Keyframe
�� 
[
�� 
]
�� 
	keyframes
��  
=
��! "
curve
��# (
.
��( )
keys
��) -
;
��- .
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
�� 
	keyframes
��  )
.
��) *
Length
��* 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
	keyframes
�� 
[
�� 
i
�� 
]
�� 
.
�� 
value
�� "
*=
��# %
curveMultiplier
��& 5
.
��5 6
Evaluate
��6 >
(
��> ?
	keyframes
��? H
[
��H I
i
��I J
]
��J K
.
��K L
time
��L P
)
��P Q
;
��Q R
}
�� 
curve
�� 
.
�� 
keys
�� 
=
�� 
	keyframes
�� "
;
��" #
}
�� 	
static
�� 
void
�� 

RemapCurve
�� 
(
�� !
MaterialDescription
�� 2
description
��3 >
,
��> ?

��@ M
[
��M N
]
��N O
clips
��P U
,
��U V
string
��W ]"
originalPropertyName
��^ r
,
��r s
string
��t z
newPropertyName��{ �
)��� �
{
�� 	
AnimationCurve
�� 
curve
��  
;
��  !
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
clips
��  %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
,
��X Y
out
��Z ]
curve
��^ c
)
��c d
)
��d e
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
,
��K L
curve
��M R
)
��R S
;
��S T
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� 
RemapColorCurves
�� $
(
��$ %!
MaterialDescription
��% 8
description
��9 D
,
��D E

��F S
[
��S T
]
��T U
clips
��V [
,
��[ \
string
��] c"
originalPropertyName
��d x
,
��x y
string��z �
newPropertyName��� �
)��� �
{
�� 	
AnimationCurve
�� 
curve
��  
;
��  !
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
clips
��  %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 	
}
�� 
}�� ū
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditorTool\PathEditorTool.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
static
class "
PathEditorToolContents 0
{ 
internal 
static 
readonly  

GUIContent! +

=: ;
IconContent< G
(G H
$strH S
,S T
$str	U �
)
� �
;
� �
internal 
static 
readonly  

GUIContent! +
shapeToolPro, 8
=9 :
IconContent; F
(F G
$strG U
,U V
$str	W �
)
� �
;
� �
internal 
static 

GUIContent "
IconContent# .
(. /
string/ 5
name6 :
,: ;
string< B
tooltipC J
=K L
nullM Q
)Q R
{ 	
return 
new 

GUIContent !
(! "
	Resources" +
.+ ,
Load, 0
<0 1
Texture1 8
>8 9
(9 :
name: >
)> ?
,? @
tooltipA H
)H I
;I J
} 	
public 
static 

GUIContent  
icon! %
{ 	
get 
{ 
if 
( 
EditorGUIUtility $
.$ %
	isProSkin% .
). /
return   
shapeToolPro   '
;  ' (
return"" 

;""$ %
}## 
}$$ 	
}%% 
internal'' 
	interface''
IDuringSceneGuiTool'' *
{(( 
void)) 
DuringSceneGui))
()) 
	SceneView)) %
	sceneView))& /
)))/ 0
;))0 1
bool** 
IsAvailable**
(** 
)** 
;** 
}++ 
[-- 
InitializeOnLoad-- 
]-- 
internal.. 
class..
EditorToolManager.. $
{// 
private00 
static00 
List00 
<00 
IDuringSceneGuiTool00 /
>00/ 0
m_Tools001 8
=009 :
new00; >
List00? C
<00C D
IDuringSceneGuiTool00D W
>00W X
(00X Y
)00Y Z
;00Z [
static22 
EditorToolManager22  
(22  !
)22! "
{33 	
	SceneView44 
.44 
duringSceneGui44 $
+=44% '
DuringSceneGui44( 6
;446 7
}55 	
internal77 
static77 
void77 
Add77  
(77  !
IDuringSceneGuiTool77! 4
tool775 9
)779 :
{88 	
if99 
(99 
!99 
m_Tools99 
.99 
Contains99 !
(99! "
tool99" &
)99& '
&&99( *
tool99+ /
is990 2

EditorTool993 =
)99= >
m_Tools:: 
.:: 
Add:: 
(:: 
tool::  
)::  !
;::! "
};; 	
internal== 
static== 
void== 
Remove== #
(==# $
IDuringSceneGuiTool==$ 7
tool==8 <
)==< =
{>> 	
if?? 
(?? 
m_Tools?? 
.?? 
Contains??  
(??  !
tool??! %
)??% &
)??& '
m_Tools@@ 
.@@ 
Remove@@ 
(@@ 
tool@@ #
)@@# $
;@@$ %
}AA 	
internalCC 
staticCC 
boolCC 
IsActiveToolCC )
<CC) *
TCC* +
>CC+ ,
(CC, -
)CC- .
whereCC/ 4
TCC5 6
:CC7 8

EditorToolCC9 C
{DD 	
returnEE 
ToolManagerEE 
.EE 
activeToolTypeEE -
.EE- .
EqualsEE. 4
(EE4 5
typeofEE5 ;
(EE; <
TEE< =
)EE= >
)EE> ?
;EE? @
}FF 	
internalHH 
staticHH 
boolHH 
IsAvailableHH (
<HH( )
THH) *
>HH* +
(HH+ ,
)HH, -
whereHH. 3
THH4 5
:HH6 7

EditorToolHH8 B
{II 	
varJJ 
toolJJ 
=JJ 

<JJ$ %
TJJ% &
>JJ& '
(JJ' (
)JJ( )
;JJ) *
ifLL 
(LL 
toolLL 
!=LL 
nullLL 
)LL 
returnMM 
toolMM 
.MM 
IsAvailableMM '
(MM' (
)MM( )
;MM) *
returnOO 
falseOO 
;OO 
}PP 	
internalRR 
staticRR 
TRR 

<RR' (
TRR( )
>RR) *
(RR* +
)RR+ ,
whereRR- 2
TRR3 4
:RR5 6

EditorToolRR7 A
{SS 	
foreachTT 
(TT 
varTT 
toolTT 
inTT 
m_ToolsTT  '
)TT' (
{UU 
ifVV 
(VV 
toolVV 
.VV 
GetTypeVV  
(VV  !
)VV! "
.VV" #
EqualsVV# )
(VV) *
typeofVV* 0
(VV0 1
TVV1 2
)VV2 3
)VV3 4
)VV4 5
returnWW 
toolWW 
asWW  "
TWW# $
;WW$ %
}XX 
returnZZ 
nullZZ 
;ZZ 
}[[ 	
private]] 
static]] 
void]] 
DuringSceneGui]] *
(]]* +
	SceneView]]+ 4
	sceneView]]5 >
)]]> ?
{^^ 	
foreach__ 
(__ 
var__ 
tool__ 
in__  
m_Tools__! (
)__( )
{`` 
ifaa 
(aa 
toolaa 
.aa 
IsAvailableaa $
(aa$ %
)aa% &
&&aa' )
ToolManageraa* 5
.aa5 6
IsActiveToolaa6 B
(aaB C
toolaaC G
asaaH J

EditorToolaaK U
)aaU V
)aaV W
toolbb 
.bb 
DuringSceneGuibb '
(bb' (
	sceneViewbb( 1
)bb1 2
;bb2 3
}cc 
}dd 	
}ee 
internalgg 
abstractgg
classgg 
PathEditorToolgg *
<gg* +
Tgg+ ,
>gg, -
:gg. /

EditorToolgg0 :
,gg: ;
IDuringSceneGuiToolgg< O
whereggP U
TggV W
:ggX Y
ScriptablePathggZ h
{hh 
privateii 

Dictionaryii 
<ii 
UnityObjectii &
,ii& '
Tii( )
>ii) *
m_Pathsii+ 2
=ii3 4
newii5 8

Dictionaryii9 C
<iiC D
UnityObjectiiD O
,iiO P
TiiQ R
>iiR S
(iiS T
)iiT U
;iiU V
privatejj 
	IGUIStatejj 

m_GUIStatejj $
=jj% &
newjj' *
GUIStatejj+ 3
(jj3 4
)jj4 5
;jj5 6
privatekk 

Dictionarykk 
<kk 
UnityObjectkk &
,kk& '
	GUISystemkk( 1
>kk1 2
m_GUISystemskk3 ?
=kk@ A
newkkB E

DictionarykkF P
<kkP Q
UnityObjectkkQ \
,kk\ ]
	GUISystemkk^ g
>kkg h
(kkh i
)kki j
;kkj k
privatell 

Dictionaryll 
<ll 
UnityObjectll &
,ll& '
SerializedObjectll( 8
>ll8 9
m_SerializedObjectsll: M
=llN O
newllP S

DictionaryllT ^
<ll^ _
UnityObjectll_ j
,llj k
SerializedObjectlll |
>ll| }
(ll} ~
)ll~ 
;	ll �
privatemm *
MultipleEditablePathControllermm .
m_Controllermm/ ;
=mm< =
newmm> A*
MultipleEditablePathControllermmB `
(mm` a
)mma b
;mmb c
privatenn 
PointRectSelectornn !
m_RectSelectornn" 0
=nn1 2
newnn3 6
PointRectSelectornn7 H
(nnH I
)nnI J
;nnJ K
privateoo 
booloo 

m_IsActiveoo 
=oo  !
falseoo" '
;oo' (
internalqq 
Tqq 
[qq 
]qq 
pathsqq 
{rr 	
getss 
{ss 
returnss 
m_Pathsss  
.ss  !
Valuesss! '
.ss' (
ToArrayss( /
(ss/ 0
)ss0 1
;ss1 2
}ss3 4
}tt 	
publicvv 
boolvv 
enableSnappingvv "
{ww 	
getxx 
{xx 
returnxx 
m_Controllerxx %
.xx% &
enableSnappingxx& 4
;xx4 5
}xx6 7
setyy 
{yy 
m_Controlleryy 
.yy 
enableSnappingyy -
=yy. /
valueyy0 5
;yy5 6
}yy7 8
}zz 	
public|| 
override|| 

GUIContent|| "
toolbarIcon||# .
{}} 	
get~~ 
{~~ 
return~~ "
PathEditorToolContents~~ /
.~~/ 0
icon~~0 4
;~~4 5
}~~6 7
} 	
public
�� 
override
�� 
bool
�� 
IsAvailable
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
targets
�� 
.
�� 
Count
��  
(
��  !
)
��! "
>
��# $
$num
��% &
;
��& '
}
�� 	
public
�� 
T
�� 
GetPath
�� 
(
�� 
UnityObject
�� $
targetObject
��% 1
)
��1 2
{
�� 	
var
�� 
path
�� 
=
�� 
default
�� 
(
�� 
T
��  
)
��  !
;
��! "
m_Paths
�� 
.
�� 
TryGetValue
�� 
(
��  
targetObject
��  ,
,
��, -
out
��. 1
path
��2 6
)
��6 7
;
��7 8
return
�� 
path
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
SetPath
�� 
(
�� 
UnityObject
�� '
target
��( .
)
��. /
{
�� 	
var
�� 
path
�� 
=
�� 
GetPath
�� 
(
�� 
target
�� %
)
��% &
;
��& '
path
�� 
.
��  
localToWorldMatrix
�� #
=
��$ %
	Matrix4x4
��& /
.
��/ 0
identity
��0 8
;
��8 9
var
�� 
undoName
�� 
=
�� 
Undo
�� 
.
��  !
GetCurrentGroupName
��  3
(
��3 4
)
��4 5
;
��5 6
var
�� 
serializedObject
��  
=
��! "!
GetSerializedObject
��# 6
(
��6 7
target
��7 =
)
��= >
;
��> ?
serializedObject
�� 
.
�� &
UpdateIfRequiredOrScript
�� 5
(
��5 6
)
��6 7
;
��7 8
SetShape
�� 
(
�� 
path
�� 
,
�� 
serializedObject
�� +
)
��+ ,
;
��, -
Undo
�� 
.
�� !
SetCurrentGroupName
�� $
(
��$ %
undoName
��% -
)
��- .
;
��. /
}
�� 	
private
�� 
void
�� 
RepaintInspectors
�� &
(
��& '
)
��' (
{
�� 	
var
�� 

�� 
=
�� 
	Resources
��  )
.
��) *"
FindObjectsOfTypeAll
��* >
<
��> ?
EditorWindow
��? K
>
��K L
(
��L M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
editorWindow
�� %
in
��& (

��) 6
)
��6 7
{
�� 
if
�� 
(
�� 
editorWindow
��  
.
��  !
titleContent
��! -
.
��- .
text
��. 2
==
��3 5
$str
��6 A
)
��A B
editorWindow
��  
.
��  !
Repaint
��! (
(
��( )
)
��) *
;
��* +
}
�� 
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
�� 	

m_IsActive
�� 
=
�� 
false
�� 
;
�� 
EditorToolManager
�� 
.
�� 
Add
�� !
(
��! "
this
��" &
)
��& '
;
��' (
SetupRectSelector
�� 
(
�� 
)
�� 
;
��  
HandleActivation
�� 
(
�� 
)
�� 
;
�� 
ToolManager
�� 
.
�� 
activeToolChanged
�� )
+=
��* ,
HandleActivation
��- =
;
��= >
}
�� 	
private
�� 
void
�� 
	OnDestroy
�� 
(
�� 
)
��  
{
�� 	
EditorToolManager
�� 
.
�� 
Remove
�� $
(
��$ %
this
��% )
)
��) *
;
��* +
ToolManager
�� 
.
�� 
activeToolChanged
�� )
-=
��* ,
HandleActivation
��- =
;
��= >!
UnregisterCallbacks
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� 
HandleActivation
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 

m_IsActive
�� 
==
�� 
false
�� #
&&
��$ &
ToolManager
��' 2
.
��2 3
IsActiveTool
��3 ?
(
��? @
this
��@ D
)
��D E
)
��E F
Activate
�� 
(
�� 
)
�� 
;
�� 
else
�� 
if
�� 
(
�� 

m_IsActive
�� 
)
��  

Deactivate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Activate
�� 
(
�� 
)
�� 
{
�� 	

m_IsActive
�� 
=
�� 
true
�� 
;
�� 
RegisterCallbacks
�� 
(
�� 
)
�� 
;
��  
InitializeCache
�� 
(
�� 
)
�� 
;
�� 

OnActivate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 

Deactivate
�� 
(
��  
)
��  !
{
�� 	
OnDeactivate
�� 
(
�� 
)
�� 
;
�� 
DestroyCache
�� 
(
�� 
)
�� 
;
�� !
UnregisterCallbacks
�� 
(
��  
)
��  !
;
��! "

m_IsActive
�� 
=
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
RegisterCallbacks
�� &
(
��& '
)
��' (
{
�� 	!
UnregisterCallbacks
�� 
(
��  
)
��  !
;
��! "
	Selection
�� 
.
�� 
selectionChanged
�� &
+=
��' )
SelectionChanged
��* :
;
��: ;
EditorApplication
�� 
.
�� "
playModeStateChanged
�� 2
+=
��3 5"
PlayModeStateChanged
��6 J
;
��J K
Undo
�� 
.
�� 
undoRedoPerformed
�� "
+=
��# %
UndoRedoPerformed
��& 7
;
��7 8
}
�� 	
private
�� 
void
�� !
UnregisterCallbacks
�� (
(
��( )
)
��) *
{
�� 	
	Selection
�� 
.
�� 
selectionChanged
�� &
-=
��' )
SelectionChanged
��* :
;
��: ;
EditorApplication
�� 
.
�� "
playModeStateChanged
�� 2
-=
��3 5"
PlayModeStateChanged
��6 J
;
��J K
Undo
�� 
.
�� 
undoRedoPerformed
�� "
-=
��# %
UndoRedoPerformed
��& 7
;
��7 8
}
�� 	
private
�� 
void
�� 
DestroyCache
�� !
(
��! "
)
��" #
{
�� 	
foreach
�� 
(
�� 
var
�� 
pair
�� 
in
��  
m_Paths
��! (
)
��( )
{
�� 
var
�� 
path
�� 
=
�� 
pair
�� 
.
��  
Value
��  %
;
��% &
if
�� 
(
�� 
path
�� 
!=
�� 
null
��  
)
��  !
{
�� 
Undo
�� 
.
�� 
	ClearUndo
�� "
(
��" #
path
��# '
)
��' (
;
��( )
UnityObject
�� 
.
��  
DestroyImmediate
��  0
(
��0 1
path
��1 5
)
��5 6
;
��6 7
}
�� 
}
�� 
m_Paths
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
�� 
m_Controller
�� 
.
�� 

ClearPaths
�� #
(
��# $
)
��$ %
;
��% &
m_GUISystems
�� 
.
�� 
Clear
�� 
(
�� 
)
��  
;
��  !!
m_SerializedObjects
�� 
.
��  
Clear
��  %
(
��% &
)
��& '
;
��' (
}
�� 	
private
�� 
void
�� 
UndoRedoPerformed
�� &
(
��& '
)
��' (
{
�� 	

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� "
(
��" #
target
��# )
)
��) *
;
��* +
if
�� 
(
�� 
!
�� 
path
�� 
.
�� 
modified
�� "
)
��" #
InitializePath
�� "
(
��" #
target
��# )
)
��) *
;
��* +
}
�� 
)
��
;
�� 
}
�� 	
private
�� 
void
�� 
SelectionChanged
�� %
(
��% &
)
��& '
{
�� 	
InitializeCache
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
PlayModeStateChanged
�� )
(
��) *!
PlayModeStateChange
��* =
stateChange
��> I
)
��I J
{
�� 	
if
�� 
(
�� 
stateChange
�� 
==
�� !
PlayModeStateChange
�� 2
.
��2 3
EnteredEditMode
��3 B
)
��B C
EditorApplication
�� !
.
��! "
	delayCall
��" +
+=
��, .
(
��/ 0
)
��0 1
=>
��2 4
{
��5 6
InitializeCache
��7 F
(
��F G
)
��G H
;
��H I
}
��J K
;
��K L
}
�� 	
private
�� 
void
�� 
SetupRectSelector
�� &
(
��& '
)
��' (
{
�� 	
m_RectSelector
�� 
.
�� 
onSelectionBegin
�� +
=
��, -
BeginSelection
��. <
;
��< =
m_RectSelector
�� 
.
��  
onSelectionChanged
�� -
=
��. /
UpdateSelection
��0 ?
;
��? @
m_RectSelector
�� 
.
�� 
onSelectionEnd
�� )
=
��* +
EndSelection
��, 8
;
��8 9
}
�� 	
private
�� 
void
�� 

�� "
(
��" #
Action
��# )
<
��) *
UnityObject
��* 5
>
��5 6
action
��7 =
)
��= >
{
�� 	
foreach
�� 
(
�� 
var
�� 
target
�� 
in
�� !
targets
��" )
)
��) *
{
�� 
if
�� 
(
�� 
target
�� 
==
�� 
null
�� "
)
��" #
continue
�� 
;
�� 
action
�� 
(
�� 
target
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
InitializeCache
�� $
(
��$ %
)
��% &
{
�� 	
m_Controller
�� 
.
�� 

ClearPaths
�� #
(
��# $
)
��$ %
;
��% &

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
var
�� 
path
�� 
=
�� 
GetOrCreatePath
�� *
(
��* +
target
��+ 1
)
��1 2
;
��2 3
var
�� 

pointCount
�� 
=
��  
path
��! %
.
��% &

pointCount
��& 0
;
��0 1
InitializePath
�� 
(
�� 
target
�� %
)
��% &
;
��& '
if
�� 
(
�� 

pointCount
�� 
!=
�� !
path
��" &
.
��& '

pointCount
��' 1
)
��1 2
path
�� 
.
�� 
	selection
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
CreateGUISystem
�� 
(
��  
target
��  &
)
��& '
;
��' (
m_Controller
�� 
.
�� 
AddPath
�� $
(
��$ %
path
��% )
)
��) *
;
��* +
}
�� 
)
��
;
�� 
}
�� 	
private
�� 
void
�� 
InitializePath
�� #
(
��# $
UnityObject
��$ /
target
��0 6
)
��6 7
{
�� 	
IShape
�� 
shape
�� 
=
�� 
null
�� 
;
��  
ControlPoint
�� 
[
�� 
]
�� 

�� (
=
��) *
null
��+ /
;
��/ 0
try
�� 
{
�� 
shape
�� 
=
�� 
GetShape
��  
(
��  !
target
��! '
)
��' (
;
��( )

�� 
=
�� 
shape
��  %
.
��% &
ToControlPoints
��& 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
e
��  
.
��  !
Message
��! (
)
��( )
;
��) *
}
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� 
(
�� 
target
�� %
)
��% &
;
��& '
path
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
shape
�� 
!=
�� 
null
�� 
&&
��  

��! .
!=
��/ 1
null
��2 6
)
��6 7
{
�� 
path
�� 
.
��  
localToWorldMatrix
�� '
=
��( )
	Matrix4x4
��* 3
.
��3 4
identity
��4 <
;
��< =
path
�� 
.
�� 
	shapeType
�� 
=
��  
shape
��! &
.
��& '
type
��' +
;
��+ ,
path
�� 
.
�� 
isOpenEnded
��  
=
��! "
shape
��# (
.
��( )
isOpenEnded
��) 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
controlPoint
�� )
in
��* ,

��- :
)
��: ;
path
�� 
.
�� 
AddPoint
�� !
(
��! "
controlPoint
��" .
)
��. /
;
��/ 0
}
�� 

Initialize
�� 
(
�� 
path
�� 
,
�� !
GetSerializedObject
�� 0
(
��0 1
target
��1 7
)
��7 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
T
�� 
GetOrCreatePath
�� !
(
��! "
UnityObject
��" -
targetObject
��. :
)
��: ;
{
�� 	
var
�� 
path
�� 
=
�� 
GetPath
�� 
(
�� 
targetObject
�� +
)
��+ ,
;
��, -
if
�� 
(
�� 
path
�� 
==
�� 
null
�� 
)
�� 
{
�� 
path
�� 
=
�� 
ScriptableObject
�� '
.
��' (
CreateInstance
��( 6
<
��6 7
T
��7 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
path
�� 
.
�� 
owner
�� 
=
�� 
targetObject
�� )
;
��) *
m_Paths
�� 
[
�� 
targetObject
�� $
]
��$ %
=
��& '
path
��( ,
;
��, -
}
�� 
return
�� 
path
�� 
;
�� 
}
�� 	
private
�� 
	GUISystem
�� 
GetGUISystem
�� &
(
��& '
UnityObject
��' 2
target
��3 9
)
��9 :
{
�� 	
	GUISystem
�� 
	guiSystem
�� 
;
��  
m_GUISystems
�� 
.
�� 
TryGetValue
�� $
(
��$ %
target
��% +
,
��+ ,
out
��- 0
	guiSystem
��1 :
)
��: ;
;
��; <
return
�� 
	guiSystem
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
CreateGUISystem
�� $
(
��$ %
UnityObject
��% 0
target
��1 7
)
��7 8
{
�� 	
var
�� 
	guiSystem
�� 
=
�� 
new
�� 
	GUISystem
��  )
(
��) *

m_GUIState
��* 4
)
��4 5
;
��5 6
var
�� 
view
�� 
=
�� 
new
�� 
EditablePathView
�� +
(
��+ ,
)
��, -
;
��- .
view
�� 
.
�� 

controller
�� 
=
�� 
m_Controller
�� *
;
��* +
view
�� 
.
�� 
Install
�� 
(
�� 
	guiSystem
�� "
)
��" #
;
��# $
m_GUISystems
�� 
[
�� 
target
�� 
]
��  
=
��! "
	guiSystem
��# ,
;
��, -
}
�� 	
private
�� 
SerializedObject
��  !
GetSerializedObject
��! 4
(
��4 5
UnityObject
��5 @
target
��A G
)
��G H
{
�� 	
var
�� 
serializedObject
��  
=
��! "
default
��# *
(
��* +
SerializedObject
��+ ;
)
��; <
;
��< =
if
�� 
(
�� 
!
�� !
m_SerializedObjects
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
target
��1 7
,
��7 8
out
��9 <
serializedObject
��= M
)
��M N
)
��N O
{
�� 
serializedObject
��  
=
��! "
new
��# &
SerializedObject
��' 7
(
��7 8
target
��8 >
)
��> ?
;
��? @!
m_SerializedObjects
�� #
[
��# $
target
��$ *
]
��* +
=
��, -
serializedObject
��. >
;
��> ?
}
�� 
return
�� 
serializedObject
�� #
;
��# $
}
�� 	
void
�� !
IDuringSceneGuiTool
��
.
��  !
DuringSceneGui
��! /
(
��/ 0
	SceneView
��0 9
	sceneView
��: C
)
��C D
{
�� 	
if
�� 
(
�� 

m_GUIState
�� 
.
�� 
	eventType
�� $
==
��% '
	EventType
��( 1
.
��1 2
Layout
��2 8
)
��8 9
m_Controller
�� 
.
�� 
ClearClosestPath
�� -
(
��- .
)
��. /
;
��/ 0
m_RectSelector
�� 
.
�� 
OnGUI
��  
(
��  !
)
��! "
;
��" #
bool
�� 
changed
�� 
=
�� 
false
��  
;
��  !

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� "
(
��" #
target
��# )
)
��) *
;
��* +
if
�� 
(
�� 
path
�� 
!=
�� 
null
��  
)
��  !
{
�� 
path
�� 
.
��  
localToWorldMatrix
�� +
=
��, -#
GetLocalToWorldMatrix
��. C
(
��C D
target
��D J
)
��J K
;
��K L
path
�� 
.
�� 
forward
��  
=
��! "

GetForward
��# -
(
��- .
target
��. 4
)
��4 5
;
��5 6
path
�� 
.
�� 
up
�� 
=
�� 
GetUp
�� #
(
��# $
target
��$ *
)
��* +
;
��+ ,
path
�� 
.
�� 
right
�� 
=
��  
GetRight
��! )
(
��) *
target
��* 0
)
��0 1
;
��1 2
m_Controller
��  
.
��  !
editablePath
��! -
=
��. /
path
��0 4
;
��4 5
using
�� 
(
�� 
var
�� 
check
�� $
=
��% &
new
��' *
	EditorGUI
��+ 4
.
��4 5
ChangeCheckScope
��5 E
(
��E F
)
��F G
)
��G H
{
�� 
GetGUISystem
�� $
(
��$ %
target
��% +
)
��+ ,
.
��, -
OnGUI
��- 2
(
��2 3
)
��3 4
;
��4 5
OnCustomGUI
�� #
(
��# $
path
��$ (
)
��( )
;
��) *
changed
�� 
|=
��  "
check
��# (
.
��( )
changed
��) 0
;
��0 1
}
�� 
}
�� 
}
�� 
)
��
;
�� 
if
�� 
(
�� 
changed
�� 
)
�� 
{
�� 
	SetShapes
�� 
(
�� 
)
�� 
;
�� 
RepaintInspectors
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� 
BeginSelection
�� #
(
��# $
	ISelector
��$ -
<
��- .
Vector3
��. 5
>
��5 6
selector
��7 ?
,
��? @
bool
��A E

isAdditive
��F P
)
��P Q
{
�� 	
m_Controller
�� 
.
�� 
RegisterUndo
�� %
(
��% &
$str
��& 1
)
��1 2
;
��2 3
if
�� 
(
�� 

isAdditive
�� 
)
�� 
{
�� 

�� 
(
�� 
(
�� 
target
�� %
)
��% &
=>
��' )
{
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� &
(
��& '
target
��' -
)
��- .
;
��. /
path
�� 
.
�� 
	selection
�� "
.
��" #
BeginSelection
��# 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
UpdateSelection
�� 
(
��  
selector
��  (
)
��( )
;
��) *
}
�� 
}
�� 	
private
�� 
void
�� 
UpdateSelection
�� $
(
��$ %
	ISelector
��% .
<
��. /
Vector3
��/ 6
>
��6 7
selector
��8 @
)
��@ A
{
�� 	
var
�� 
repaintInspectors
�� !
=
��" #
false
��$ )
;
��) *

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� "
(
��" #
target
��# )
)
��) *
;
��* +
repaintInspectors
�� !
|=
��" $
path
��% )
.
��) *
Select
��* 0
(
��0 1
selector
��1 9
)
��9 :
;
��: ;
}
�� 
)
��
;
�� 
if
�� 
(
�� 
repaintInspectors
�� !
)
��! "
RepaintInspectors
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
private
�� 
void
�� 
EndSelection
�� !
(
��! "
	ISelector
��" +
<
��+ ,
Vector3
��, 3
>
��3 4
selector
��5 =
)
��= >
{
�� 	

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
var
�� 
path
�� 
=
�� 
GetPath
�� "
(
��" #
target
��# )
)
��) *
;
��* +
path
�� 
.
�� 
	selection
�� 
.
�� 
EndSelection
�� +
(
��+ ,
true
��, 0
)
��0 1
;
��1 2
}
�� 
)
��
;
�� 
}
�� 	
internal
�� 
void
�� 
	SetShapes
�� 
(
��  
)
��  !
{
�� 	

�� 
(
�� 
(
�� 
target
�� !
)
��! "
=>
��# %
{
�� 
SetPath
�� 
(
�� 
target
�� 
)
�� 
;
��  
}
�� 
)
��
;
�� 
}
�� 	
private
�� 
	Transform
�� 
GetTransform
�� &
(
��& '
UnityObject
��' 2
target
��3 9
)
��9 :
{
�� 	
return
�� 
(
�� 
target
�� 
as
�� 
	Component
�� '
)
��' (
.
��( )
	transform
��) 2
;
��2 3
}
�� 	
private
�� 
	Matrix4x4
�� #
GetLocalToWorldMatrix
�� /
(
��/ 0
UnityObject
��0 ;
target
��< B
)
��B C
{
�� 	
return
�� 
GetTransform
�� 
(
��  
target
��  &
)
��& '
.
��' ( 
localToWorldMatrix
��( :
;
��: ;
}
�� 	
private
�� 
Vector3
�� 

GetForward
�� "
(
��" #
UnityObject
��# .
target
��/ 5
)
��5 6
{
�� 	
return
�� 
GetTransform
�� 
(
��  
target
��  &
)
��& '
.
��' (
forward
��( /
;
��/ 0
}
�� 	
private
�� 
Vector3
�� 
GetUp
�� 
(
�� 
UnityObject
�� )
target
��* 0
)
��0 1
{
�� 	
return
�� 
GetTransform
�� 
(
��  
target
��  &
)
��& '
.
��' (
up
��( *
;
��* +
}
�� 	
private
�� 
Vector3
�� 
GetRight
��  
(
��  !
UnityObject
��! ,
target
��- 3
)
��3 4
{
�� 	
return
�� 
GetTransform
�� 
(
��  
target
��  &
)
��& '
.
��' (
right
��( -
;
��- .
}
�� 	
	protected
�� 
abstract
�� 
IShape
�� !
GetShape
��" *
(
��* +
UnityObject
��+ 6
target
��7 =
)
��= >
;
��> ?
	protected
�� 
virtual
�� 
void
�� 

Initialize
�� )
(
��) *
T
��* +
path
��, 0
,
��0 1
SerializedObject
��2 B
serializedObject
��C S
)
��S T
{
��U V
}
��W X
	protected
�� 
abstract
�� 
void
�� 
SetShape
��  (
(
��( )
T
��) *
path
��+ /
,
��/ 0
SerializedObject
��1 A
serializedObject
��B R
)
��R S
;
��S T
	protected
�� 
virtual
�� 
void
�� 

OnActivate
�� )
(
��) *
)
��* +
{
��, -
}
��. /
	protected
�� 
virtual
�� 
void
�� 
OnDeactivate
�� +
(
��+ ,
)
��, -
{
��. /
}
��0 1
	protected
�� 
virtual
�� 
void
�� 
OnCustomGUI
�� *
(
��* +
T
��+ ,
path
��- 1
)
��1 2
{
��3 4
}
��5 6
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetPostProcessors\FBXMaterialDescriptionPreprocessor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class		 	.
"FBXMaterialDescriptionPreprocessor		
 ,
:		- .
AssetPostprocessor		/ A
{

 
static 
readonly 
uint 
	k_Version &
=' (
$num) *
;* +
static 
readonly 
int 
k_Order #
=$ %
$num& '
;' (
public
override
uint

GetVersion
(
)
{ 	
return 
	k_Version 
; 
} 	
public 
override 
int 
GetPostprocessOrder /
(/ 0
)0 1
{ 	
return 
k_Order 
; 
} 	
public 
void +
OnPreprocessMaterialDescription 3
(3 4
MaterialDescription4 G
descriptionH S
,S T
MaterialU ]
material^ f
,f g

[u v
]v w
clipsx }
)} ~
{ 	
var 

= 
GraphicsSettings  0
.0 1!
currentRenderPipeline1 F
;F G
if 
( 
! 

|| !

./ 0
GetType0 7
(7 8
)8 9
!=: <
typeof= C
(C D(
UniversalRenderPipelineAssetD `
)` a
)a b
return 
; 
var 
lowerCaseExtension "
=# $
Path% )
.) *
GetExtension* 6
(6 7
	assetPath7 @
)@ A
.A B
ToLowerB I
(I J
)J K
;K L
if 
( 
lowerCaseExtension "
!=# %
$str& ,
&&- /
lowerCaseExtension0 B
!=C E
$strF L
&&M O
lowerCaseExtensionP b
!=c e
$strf n
&&o q
lowerCaseExtension	r �
!=
� �
$str
� �
&&
� � 
lowerCaseExtension
� �
!=
� �
$str
� �
&&
� � 
lowerCaseExtension
� �
!=
� �
$str
� �
)
� �
return 
; 
string!! 
path!! 
=!! 

.!!' (
GUIDToAssetPath!!( 7
(!!7 8
ShaderUtils!!8 C
.!!C D

(!!Q R
ShaderPathID!!R ^
.!!^ _
Lit!!_ b
)!!b c
)!!c d
;!!d e
var"" 
shader"" 
="" 

.""& '
LoadAssetAtPath""' 6
<""6 7
Shader""7 =
>""= >
(""> ?
path""? C
)""C D
;""D E
if## 
(## 
shader## 
==## 
null## 
)## 
return$$ 
;$$ 
material'' 
.'' 
shader'' 
='' 
shader'' $
;''$ %
Vector4)) 
vectorProperty)) "
;))" #
float** 

;**  &
TexturePropertyDescription++ &
textureProperty++' 6
;++6 7
bool-- 

=--  
false--! &
;--& '
float// 
opacity// 
;// 
float00 
transparencyFactor00 $
;00$ %
if11 
(11 
!11 
description11 
.11 
TryGetProperty11 +
(11+ ,
$str11, 5
,115 6
out117 :
opacity11; B
)11B C
)11C D
{22 
if33 
(33 
description33 
.33  
TryGetProperty33  .
(33. /
$str33/ C
,33C D
out33E H
transparencyFactor33I [
)33[ \
)33\ ]
{44 
opacity55 
=55 
transparencyFactor55 0
==551 3
$num554 8
?559 :
$num55; ?
:55@ A
$num55B F
-55G H
transparencyFactor55I [
;55[ \
}66 
if77 
(77 
opacity77 
==77 
$num77 #
&&77$ &
description77' 2
.772 3
TryGetProperty773 A
(77A B
$str77B T
,77T U
out77V Y
vectorProperty77Z h
)77h i
)77i j
{88 
opacity99 
=99 
vectorProperty99 ,
.99, -
x99- .
==99/ 1
$num992 6
?997 8
$num999 =
:99> ?
$num99@ D
-99E F
vectorProperty99G U
.99U V
x99V W
;99W X
}:: 
};; 
if<< 
(<< 
opacity<< 
<<< 
$num<< 
||<< !
(<<" #
opacity<<# *
==<<+ -
$num<<. 2
&&<<3 5
description<<6 A
.<<A B
TryGetProperty<<B P
(<<P Q
$str<<Q c
,<<c d
out<<e h
textureProperty<<i x
)<<x y
)<<y z
)<<z {
{== 

=>> 
true>>  $
;>>$ %
}?? 
else@@ 
if@@ 
(@@ 
description@@  
.@@  !
HasAnimationCurve@@! 2
(@@2 3
$str@@3 G
)@@G H
||@@I K
description@@L W
.@@W X
HasAnimationCurve@@X i
(@@i j
$str@@j |
)@@| }
)@@} ~
{AA 

=BB 
trueBB  $
;BB$ %
}CC 
ifEE 
(EE 

)EE 
{FF 
materialGG 
.GG 
SetIntGG 
(GG  
$strGG  '
,GG' (
$numGG) *
)GG* +
;GG+ ,
materialHH 
.HH 
SetOverrideTagHH '
(HH' (
$strHH( 4
,HH4 5
$strHH6 C
)HHC D
;HHD E
materialII 
.II 
SetIntII 
(II  
$strII  +
,II+ ,
(II- .
intII. 1
)II1 2
UnityEngineII2 =
.II= >
	RenderingII> G
.IIG H
	BlendModeIIH Q
.IIQ R
OneIIR U
)IIU V
;IIV W
materialJJ 
.JJ 
SetIntJJ 
(JJ  
$strJJ  +
,JJ+ ,
(JJ- .
intJJ. 1
)JJ1 2
UnityEngineJJ2 =
.JJ= >
	RenderingJJ> G
.JJG H
	BlendModeJJH Q
.JJQ R
OneMinusSrcAlphaJJR b
)JJb c
;JJc d
materialKK 
.KK 
SetIntKK 
(KK  
$strKK  )
,KK) *
$numKK+ ,
)KK, -
;KK- .
materialLL 
.LL 

(LL& '
$strLL' =
)LL= >
;LL> ?
materialMM 
.MM 
renderQueueMM $
=MM% &
(MM' (
intMM( +
)MM+ ,
UnityEngineMM, 7
.MM7 8
	RenderingMM8 A
.MMA B
RenderQueueMMB M
.MMM N
TransparentMMN Y
;MMY Z
materialNN 
.NN 
SetIntNN 
(NN  
$strNN  *
,NN* +
$numNN, -
)NN- .
;NN. /
}OO 
elsePP 
{QQ 
materialRR 
.RR 
SetIntRR 
(RR  
$strRR  '
,RR' (
$numRR) *
)RR* +
;RR+ ,
materialSS 
.SS 
SetOverrideTagSS '
(SS' (
$strSS( 4
,SS4 5
$strSS6 8
)SS8 9
;SS9 :
materialTT 
.TT 
SetIntTT 
(TT  
$strTT  +
,TT+ ,
(TT- .
intTT. 1
)TT1 2
UnityEngineTT2 =
.TT= >
	RenderingTT> G
.TTG H
	BlendModeTTH Q
.TTQ R
OneTTR U
)TTU V
;TTV W
materialUU 
.UU 
SetIntUU 
(UU  
$strUU  +
,UU+ ,
(UU- .
intUU. 1
)UU1 2
UnityEngineUU2 =
.UU= >
	RenderingUU> G
.UUG H
	BlendModeUUH Q
.UUQ R
ZeroUUR V
)UUV W
;UUW X
materialVV 
.VV 
SetIntVV 
(VV  
$strVV  )
,VV) *
$numVV+ ,
)VV, -
;VV- .
materialWW 
.WW 
DisableKeywordWW '
(WW' (
$strWW( 7
)WW7 8
;WW8 9
materialXX 
.XX 
DisableKeywordXX '
(XX' (
$strXX( 8
)XX8 9
;XX9 :
materialYY 
.YY 
DisableKeywordYY '
(YY' (
$strYY( >
)YY> ?
;YY? @
materialZZ 
.ZZ 
renderQueueZZ $
=ZZ% &
-ZZ' (
$numZZ( )
;ZZ) *
material[[ 
.[[ 
SetInt[[ 
([[  
$str[[  *
,[[* +
$num[[, -
)[[- .
;[[. /
}\\ 
if^^ 
(^^ 
description^^ 
.^^ 
TryGetProperty^^ *
(^^* +
$str^^+ 9
,^^9 :
out^^; >
textureProperty^^? N
)^^N O
&&^^P R
textureProperty^^S b
.^^b c
texture^^c j
!=^^j l
null^^l p
)^^p q
{__ 
Color`` 
diffuseColor`` "
=``# $
new``% (
Color``) .
(``. /
$num``/ 3
,``3 4
$num``5 9
,``9 :
$num``; ?
,``? @
$num``A E
)``E F
;``F G
ifaa 
(aa 
descriptionaa 
.aa  
TryGetPropertyaa  .
(aa. /
$straa/ >
,aa> ?
outaa@ C

)aaQ R
)aaR S
diffuseColorbb  
*=bb! #

;bb1 2
diffuseColorcc 
.cc 
acc 
=cc  
opacitycc! (
;cc( )&
SetMaterialTexturePropertyee *
(ee* +
$stree+ 5
,ee5 6
materialee7 ?
,ee? @
texturePropertyeeA P
)eeP Q
;eeQ R
materialff 
.ff 
SetColorff !
(ff! "
$strff" .
,ff. /
diffuseColorff0 <
)ff< =
;ff= >
}gg 
elsehh 
ifhh 
(hh 
descriptionhh  
.hh  !
TryGetPropertyhh! /
(hh/ 0
$strhh0 >
,hh> ?
outhh@ C
vectorPropertyhhD R
)hhR S
)hhS T
{ii 
Colorjj 
diffuseColorjj "
=jj# $
vectorPropertyjj% 3
;jj3 4
diffuseColorkk 
.kk 
akk 
=kk  
opacitykk! (
;kk( )
materialll 
.ll 
SetColorll !
(ll! "
$strll" .
,ll. /
PlayerSettingsll0 >
.ll> ?

colorSpacell? I
==llJ L

ColorSpacellM W
.llW X
LinearllX ^
?ll_ `
diffuseColorlla m
.llm n
gammalln s
:llt u
diffuseColor	llv �
)
ll� �
;
ll� �
}mm 
ifoo 
(oo 
descriptionoo 
.oo 
TryGetPropertyoo *
(oo* +
$stroo+ 1
,oo1 2
outoo3 6
texturePropertyoo7 F
)ooF G
)ooG H
{pp 
SetMaterialTexturePropertyqq *
(qq* +
$strqq+ 5
,qq5 6
materialqq7 ?
,qq? @
texturePropertyqqA P
)qqP Q
;qqQ R
materialrr 
.rr 

(rr& '
$strrr' 3
)rr3 4
;rr4 5
iftt 
(tt 
descriptiontt 
.tt  
TryGetPropertytt  .
(tt. /
$strtt/ ;
,tt; <
outtt= @

)ttN O
)ttO P
materialuu 
.uu 
SetFloatuu %
(uu% &
$struu& 2
,uu2 3

)uuA B
;uuB C
}vv 
elseww 
ifww 
(ww 
descriptionww  
.ww  !
TryGetPropertyww! /
(ww/ 0
$strww0 ;
,ww; <
outww= @
texturePropertywwA P
)wwP Q
)wwQ R
{xx 
SetMaterialTexturePropertyyy *
(yy* +
$stryy+ 5
,yy5 6
materialyy7 ?
,yy? @
texturePropertyyyA P
)yyP Q
;yyQ R
materialzz 
.zz 

(zz& '
$strzz' 3
)zz3 4
;zz4 5
if|| 
(|| 
description|| 
.||  
TryGetProperty||  .
(||. /
$str||/ ;
,||; <
out||= @

)||N O
)||O P
material}} 
.}} 
SetFloat}} %
(}}% &
$str}}& 2
,}}2 3

)}}A B
;}}B C
}~~ 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ :
,
��: ;
out
��< ?
textureProperty
��@ O
)
��O P
)
��P Q
{
�� 
Color
�� 

�� #
=
��$ %
new
��& )
Color
��* /
(
��/ 0
$num
��0 4
,
��4 5
$num
��6 :
,
��: ;
$num
��< @
,
��@ A
$num
��B F
)
��F G
;
��G H
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" 2
,
��2 3

��4 A
)
��A B
;
��B C(
SetMaterialTextureProperty
�� *
(
��* +
$str
��+ 9
,
��9 :
material
��; C
,
��C D
textureProperty
��E T
)
��T U
;
��U V
if
�� 
(
�� 
description
�� 
.
��  
TryGetProperty
��  .
(
��. /
$str
��/ ?
,
��? @
out
��A D

��E R
)
��R S
&&
��T V

��W d
>
��e f
$num
��g k
)
��k l
{
�� 
material
�� 
.
�� 

�� *
(
��* +
$str
��+ 6
)
��6 7
;
��7 8
material
�� 
.
�� %
globalIlluminationFlags
�� 4
|=
��5 7-
MaterialGlobalIlluminationFlags
��8 W
.
��W X
RealtimeEmissive
��X h
;
��h i
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ :
,
��: ;
out
��< ?
vectorProperty
��@ N
)
��N O
&&
��P R
vectorProperty
��S a
.
��a b
	magnitude
��b k
>
��l m
vectorProperty
��n |
.
��| }
w
��} ~
||
�� 
description
�� 
.
�� 
HasAnimationCurve
�� 0
(
��0 1
$str
��1 B
)
��B C
)
��C D
{
�� 
if
�� 
(
�� 
description
�� 
.
��  
TryGetProperty
��  .
(
��. /
$str
��/ ?
,
��? @
out
��A D

��E R
)
��R S
)
��S T
vectorProperty
�� "
*=
��# %

��& 3
;
��3 4
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" 2
,
��2 3
vectorProperty
��4 B
)
��B C
;
��C D
if
�� 
(
�� 

�� !
>
��" #
$num
��$ (
)
��( )
{
�� 
material
�� 
.
�� 

�� *
(
��* +
$str
��+ 6
)
��6 7
;
��7 8
material
�� 
.
�� %
globalIlluminationFlags
�� 4
|=
��5 7-
MaterialGlobalIlluminationFlags
��8 W
.
��W X
RealtimeEmissive
��X h
;
��h i
}
�� 
}
�� 
material
�� 
.
�� 
SetFloat
�� 
(
�� 
$str
�� +
,
��+ ,
$num
��- 1
)
��1 2
;
��2 3
if
�� 
(
�� 
PlayerSettings
�� 
.
�� 

colorSpace
�� )
==
��* ,

ColorSpace
��- 7
.
��7 8
Linear
��8 >
)
��> ?*
RemapAndTransformColorCurves
�� ,
(
��, -
description
��- 8
,
��8 9
clips
��: ?
,
��? @
$str
��A O
,
��O P
$str
��Q ]
,
��] ^'
ConvertFloatLinearToGamma
��_ x
)
��x y
;
��y z
else
�� 
RemapColorCurves
��  
(
��  !
description
��! ,
,
��, -
clips
��. 3
,
��3 4
$str
��5 C
,
��C D
$str
��E Q
)
��Q R
;
��R S%
RemapTransparencyCurves
�� #
(
��# $
description
��$ /
,
��/ 0
clips
��1 6
)
��6 7
;
��7 8
RemapColorCurves
�� 
(
�� 
description
�� (
,
��( )
clips
��* /
,
��/ 0
$str
��1 @
,
��@ A
$str
��B R
)
��R S
;
��S T
}
�� 	
static
�� 
void
�� %
RemapTransparencyCurves
�� +
(
��+ ,!
MaterialDescription
��, ?
description
��@ K
,
��K L

��M Z
[
��Z [
]
��[ \
clips
��] b
)
��b c
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
�� 
clips
��  %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
bool
�� $
foundTransparencyCurve
�� +
=
��, -
false
��. 3
;
��3 4
AnimationCurve
�� 
curve
�� $
;
��$ %
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C
$str
��D X
,
��X Y
out
��Z ]
curve
��^ c
)
��c d
)
��d e
{
�� 
ConvertKeys
�� 
(
��  
curve
��  %
,
��% &"
ConvertFloatOneMinus
��' ;
)
��; <
;
��< =
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
$str
��< J
,
��J K
curve
��L Q
)
��Q R
;
��R S$
foundTransparencyCurve
�� *
=
��+ ,
true
��- 1
;
��1 2
}
�� 
else
�� 
if
�� 
(
�� 
description
�� $
.
��$ %"
TryGetAnimationCurve
��% 9
(
��9 :
clips
��: ?
[
��? @
i
��@ A
]
��A B
.
��B C
name
��C G
,
��G H
$str
��I ]
,
��] ^
out
��_ b
curve
��c h
)
��h i
)
��i j
{
�� 
ConvertKeys
�� 
(
��  
curve
��  %
,
��% &"
ConvertFloatOneMinus
��' ;
)
��; <
;
��< =
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
$str
��< J
,
��J K
curve
��L Q
)
��Q R
;
��R S$
foundTransparencyCurve
�� *
=
��+ ,
true
��- 1
;
��1 2
}
�� 
if
�� 
(
�� $
foundTransparencyCurve
�� *
&&
��+ -
!
��. /
description
��/ :
.
��: ;%
HasAnimationCurveInClip
��; R
(
��R S
clips
��S X
[
��X Y
i
��Y Z
]
��Z [
.
��[ \
name
��\ `
,
��` a
$str
��b p
)
��p q
)
��q r
{
�� 
Vector4
�� 
diffuseColor
�� (
;
��( )
description
�� 
.
��  
TryGetProperty
��  .
(
��. /
$str
��/ =
,
��= >
out
��? B
diffuseColor
��C O
)
��O P
;
��P Q
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
$str
��< J
,
��J K
AnimationCurve
��L Z
.
��Z [
Constant
��[ c
(
��c d
$num
��d h
,
��h i
$num
��j n
,
��n o
diffuseColor
��p |
.
��| }
x
��} ~
)
��~ 
)�� �
;��� �
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
$str
��< J
,
��J K
AnimationCurve
��L Z
.
��Z [
Constant
��[ c
(
��c d
$num
��d h
,
��h i
$num
��j n
,
��n o
diffuseColor
��p |
.
��| }
y
��} ~
)
��~ 
)�� �
;��� �
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
$str
��< J
,
��J K
AnimationCurve
��L Z
.
��Z [
Constant
��[ c
(
��c d
$num
��d h
,
��h i
$num
��j n
,
��n o
diffuseColor
��p |
.
��| }
z
��} ~
)
��~ 
)�� �
;��� �
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� 
RemapColorCurves
�� $
(
��$ %!
MaterialDescription
��% 8
description
��9 D
,
��D E

��F S
[
��S T
]
��T U
clips
��V [
,
��[ \
string
��] c"
originalPropertyName
��d x
,
��x y
string��z �
newPropertyName��� �
)��� �
{
�� 	
AnimationCurve
�� 
curve
��  
;
��  !
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
�� 
clips
��  %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� *
RemapAndTransformColorCurves
�� 0
(
��0 1!
MaterialDescription
��1 D
description
��E P
,
��P Q

��R _
[
��_ `
]
��` a
clips
��b g
,
��g h
string
��i o#
originalPropertyName��p �
,��� �
string��� �
newPropertyName��� �
,��� �
System��� �
.��� �
Func��� �
<��� �
float��� �
,��� �
float��� �
>��� �
	converter��� �
)��� �
{
�� 	
AnimationCurve
�� 
curve
��  
;
��  !
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
�� 
clips
��  %
.
��% &
Length
��& ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
ConvertKeys
�� 
(
��  
curve
��  %
,
��% &
	converter
��' 0
)
��0 1
;
��1 2
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
ConvertKeys
�� 
(
��  
curve
��  %
,
��% &
	converter
��' 0
)
��0 1
;
��1 2
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
if
�� 
(
�� 
description
�� 
.
��  "
TryGetAnimationCurve
��  4
(
��4 5
clips
��5 :
[
��: ;
i
��; <
]
��< =
.
��= >
name
��> B
,
��B C"
originalPropertyName
��D X
+
��Y Z
$str
��[ _
,
��_ `
out
��a d
curve
��e j
)
��j k
)
��k l
{
�� 
ConvertKeys
�� 
(
��  
curve
��  %
,
��% &
	converter
��' 0
)
��0 1
;
��1 2
clips
�� 
[
�� 
i
�� 
]
�� 
.
�� 
SetCurve
�� %
(
��% &
$str
��& (
,
��( )
typeof
��* 0
(
��0 1
Material
��1 9
)
��9 :
,
��: ;
newPropertyName
��< K
+
��L M
$str
��N R
,
��R S
curve
��T Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 	
static
�� 
float
�� '
ConvertFloatLinearToGamma
�� .
(
��. /
float
��/ 4
value
��5 :
)
��: ;
{
�� 	
return
�� 
Mathf
�� 
.
��  
LinearToGammaSpace
�� +
(
��+ ,
value
��, 1
)
��1 2
;
��2 3
}
�� 	
static
�� 
float
�� "
ConvertFloatOneMinus
�� )
(
��) *
float
��* /
value
��0 5
)
��5 6
{
�� 	
return
�� 
$num
�� 
-
�� 
value
�� 
;
��  
}
�� 	
static
�� 
void
�� 
ConvertKeys
�� 
(
��  
AnimationCurve
��  .
curve
��/ 4
,
��4 5
System
��6 <
.
��< =
Func
��= A
<
��A B
float
��B G
,
��G H
float
��I N
>
��N O 
convertionDelegate
��P b
)
��b c
{
�� 	
Keyframe
�� 
[
�� 
]
�� 
	keyframes
��  
=
��! "
curve
��# (
.
��( )
keys
��) -
;
��- .
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
�� 
	keyframes
��  )
.
��) *
Length
��* 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
	keyframes
�� 
[
�� 
i
�� 
]
�� 
.
�� 
value
�� "
=
��# $ 
convertionDelegate
��% 7
(
��7 8
	keyframes
��8 A
[
��A B
i
��B C
]
��C D
.
��D E
value
��E J
)
��J K
;
��K L
}
�� 
curve
�� 
.
�� 
keys
�� 
=
�� 
	keyframes
�� "
;
��" #
}
�� 	
static
�� 
void
�� (
SetMaterialTextureProperty
�� .
(
��. /
string
��/ 5
propertyName
��6 B
,
��B C
Material
��D L
material
��M U
,
��U V(
TexturePropertyDescription
��W q
textureProperty��r �
)��� �
{
�� 	
material
�� 
.
�� 

SetTexture
�� 
(
��  
propertyName
��  ,
,
��, -
textureProperty
��. =
.
��= >
texture
��> E
)
��E F
;
��F G
material
�� 
.
�� 
SetTextureOffset
�� %
(
��% &
propertyName
��& 2
,
��2 3
textureProperty
��4 C
.
��C D
offset
��D J
)
��J K
;
��K L
material
�� 
.
�� 
SetTextureScale
�� $
(
��$ %
propertyName
��% 1
,
��1 2
textureProperty
��3 B
.
��B C
scale
��C H
)
��H I
;
��I J
}
�� 	
}
�� 
}�� ۽
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\UniversalRenderPipelineLightEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ "
CanEditMultipleObjects 
] 
[		 )
CustomEditorForRenderPipeline		 "
(		" #
typeof		# )
(		) *
Light		* /
)		/ 0
,		0 1
typeof		2 8
(		8 9(
UniversalRenderPipelineAsset		9 U
)		U V
)		V W
]		W X
class

 	.
"UniversalRenderPipelineLightEditor


 ,
:

- .
LightEditor

/ :
{ 
AnimBool 
m_AnimSpotOptions "
=# $
new% (
AnimBool) 1
(1 2
)2 3
;3 4
AnimBool
m_AnimPointOptions
=
new
AnimBool
(
)
;
AnimBool 
m_AnimDirOptions !
=" #
new$ '
AnimBool( 0
(0 1
)1 2
;2 3
AnimBool 
m_AnimAreaOptions "
=# $
new% (
AnimBool) 1
(1 2
)2 3
;3 4
AnimBool  
m_AnimRuntimeOptions %
=& '
new( +
AnimBool, 4
(4 5
)5 6
;6 7
AnimBool 
m_AnimShadowOptions $
=% &
new' *
AnimBool+ 3
(3 4
)4 5
;5 6
AnimBool $
m_AnimShadowAngleOptions )
=* +
new, /
AnimBool0 8
(8 9
)9 :
;: ;
AnimBool %
m_AnimShadowRadiusOptions *
=+ ,
new- 0
AnimBool1 9
(9 :
): ;
;; <
AnimBool &
m_AnimLightBounceIntensity +
=, -
new. 1
AnimBool2 :
(: ;
); <
;< =
class 
Styles 
{ 	
public 
readonly 

GUIContent &
	SpotAngle' 0
=1 2
EditorGUIUtility3 C
.C D

(Q R
$strR ^
,^ _
$str	` �
)
� �
;
� �
public 
readonly 

GUIContent &

=5 6
EditorGUIUtility7 G
.G H

(U V
$str	V �
)
� �
;
� �
public 
readonly 

GUIContent & 
DisabledLightWarning' ;
=< =
EditorGUIUtility> N
.N O

(\ ]
$str	] �
)
� �
;
� �
public 
readonly 

GUIContent &
SunSourceWarning' 7
=8 9
EditorGUIUtility: J
.J K

(X Y
$str	Y �
)
� �
;
� �
public 
readonly 

GUIContent &&
ShadowsNotSupportedWarning' A
=B C
EditorGUIUtilityD T
.T U

(b c
$str	c �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -"
ShadowRealtimeSettings. D
=E F
EditorGUIUtilityG W
.W X

(e f
$strf x
,x y
$str	z �
)
� �
;
� �
public   
static   
readonly   "

GUIContent  # -
ShadowStrength  . <
=  = >
EditorGUIUtility  ? O
.  O P

(  ] ^
$str  ^ h
,  h i
$str	  j �
)
  � �
;
  � �
public!! 
static!! 
readonly!! "

GUIContent!!# -
ShadowNearPlane!!. =
=!!> ?
EditorGUIUtility!!@ P
.!!P Q

(!!^ _
$str!!_ k
,!!k l
$str	!!m �
)
!!� �
;
!!� �
public## 
static## 

GUIContent## $

shadowBias##% /
=##0 1
EditorGUIUtility##2 B
.##B C

(##P Q
$str##Q W
,##W X
$str	##Y �
)
##� �
;
##� �
public$$ 
static$$ 
int$$ 
[$$ 
]$$ 
optionDefaultValues$$  3
=$$4 5
{$$6 7
$num$$8 9
,$$9 :
$num$$; <
}$$= >
;$$> ?
public&& 
static&& 

GUIContent&& $
[&&$ %
]&&% &#
displayedDefaultOptions&&' >
=&&? @
{'' 
new(( 

GUIContent(( 
((( 
$str(( '
)((' (
,((( )
new)) 

GUIContent)) 
()) 
$str)) 6
)))6 7
}** 
;**
}++ 	
static-- 
Styles-- 
s_Styles-- 
;-- 
public// 
bool// 

typeIsSame// 
{//  
get//! $
{//% &
return//' -
!//. /
settings/// 7
.//7 8
	lightType//8 A
.//A B&
hasMultipleDifferentValues//B \
;//\ ]
}//^ _
}//` a
public00 
bool00 
shadowTypeIsSame00 $
{00% &
get00' *
{00+ ,
return00- 3
!004 5
settings005 =
.00= >
shadowsType00> I
.00I J&
hasMultipleDifferentValues00J d
;00d e
}00f g
}00h i
public11 
bool11 "
lightmappingTypeIsSame11 *
{11+ ,
get11- 0
{111 2
return113 9
!11: ;
settings11; C
.11C D
lightmapping11D P
.11P Q&
hasMultipleDifferentValues11Q k
;11k l
}11m n
}11o p
public22 
Light22 

{22# $
get22% (
{22) *
return22+ 1
target222 8
as229 ;
Light22< A
;22A B
}22C D
}22E F
public44 
bool44 
spotOptionsValue44 $
{44% &
get44' *
{44+ ,
return44- 3

typeIsSame444 >
&&44? A

.44O P
type44P T
==44U W
	LightType44X a
.44a b
Spot44b f
;44f g
}44h i
}44j k
public55 
bool55 
pointOptionsValue55 %
{55& '
get55( +
{55, -
return55. 4

typeIsSame555 ?
&&55@ B

.55P Q
type55Q U
==55V X
	LightType55Y b
.55b c
Point55c h
;55h i
}55j k
}55l m
public66 
bool66 
dirOptionsValue66 #
{66$ %
get66& )
{66* +
return66, 2

typeIsSame663 =
&&66> @

.66N O
type66O S
==66T V
	LightType66W `
.66` a
Directional66a l
;66l m
}66n o
}66p q
public77 
bool77 
areaOptionsValue77 $
{77% &
get77' *
{77+ ,
return77- 3

typeIsSame774 >
&&77? A
(77B C

.77P Q
type77Q U
==77V X
	LightType77Y b
.77b c
	Rectangle77c l
||77m o

.77} ~
type	77~ �
==
77� �
	LightType
77� �
.
77� �
Disc
77� �
)
77� �
;
77� �
}
77� �
}
77� �
public:: 
bool:: 
runtimeOptionsValue:: '
{::( )
get::* -
{::. /
return::0 6

typeIsSame::7 A
&&::B D
(::E F

.::S T
type::T X
!=::Y [
	LightType::\ e
.::e f
	Rectangle::f o
&&::p r

.
::� �
type
::� �
!=
::� �
	LightType
::� �
.
::� �
Point
::� �
&&
::� �
!
::� �
settings
::� �
.
::� �
isCompletelyBaked
::� �
)
::� �
;
::� �
}
::� �
}
::� �
public;; 
bool;; 
bakedShadowRadius;; %
{;;& '
get;;( +
{;;, -
return;;. 4

typeIsSame;;5 ?
&&;;@ B
(;;C D

.;;Q R
type;;R V
==;;W Y
	LightType;;Z c
.;;c d
Point;;d i
||;;j l

.;;z {
type;;{ 
==
;;� �
	LightType
;;� �
.
;;� �
Spot
;;� �
)
;;� �
&&
;;� �
settings
;;� �
.
;;� �
isBakedOrMixed
;;� �
;
;;� �
}
;;� �
}
;;� �
public<< 
bool<< 
bakedShadowAngle<< $
{<<% &
get<<' *
{<<+ ,
return<<- 3

typeIsSame<<4 >
&&<<? A

.<<O P
type<<P T
==<<U W
	LightType<<X a
.<<a b
Directional<<b m
&&<<n p
settings<<q y
.<<y z
isBakedOrMixed	<<z �
;
<<� �
}
<<� �
}
<<� �
public== 
bool== 
shadowOptionsValue== &
{==' (
get==) ,
{==- .
return==/ 5
shadowTypeIsSame==6 F
&&==G I

.==W X
shadows==X _
!===` b
LightShadows==c o
.==o p
None==p t
;==t u
}==v w
}==x y
public?? 
bool?? 
bakingWarningValue?? &
{??' (
get??) ,
{??- .
return??/ 5
!??6 7
UnityEditor??7 B
.??B C
Lightmapping??C O
.??O P
bakedGI??P W
&&??X Z"
lightmappingTypeIsSame??[ q
&&??r t
settings??u }
.??} ~
isBakedOrMixed	??~ �
;
??� �
}
??� �
}
??� �
publicAA 
boolAA $
showLightBounceIntensityAA ,
{AA- .
getAA/ 2
{AA3 4
returnAA5 ;
trueAA< @
;AA@ A
}AAB C
}AAD E
publicCC 
boolCC 
isShadowEnabledCC #
{CC$ %
getCC& )
{CC* +
returnCC, 2
settingsCC3 ;
.CC; <
shadowsTypeCC< G
.CCG H
intValueCCH P
!=CCQ S
$numCCT U
;CCU V
}CCW X
}CCY Z
publicEE 
boolEE '
realtimeShadowsWarningValueEE /
{FF 	
getGG 
{HH 
returnII 

typeIsSameII !
&&II" $

.II2 3
typeII3 7
==II8 :
	LightTypeII; D
.IID E
PointIIE J
&&IIK M
shadowTypeIsSameJJ $
&&JJ% '
isShadowEnabledJJ( 7
&&JJ8 :"
lightmappingTypeIsSameKK *
&&KK+ -
!KK. /
settingsKK/ 7
.KK7 8
isCompletelyBakedKK8 I
;KKI J
}LL 
}MM 	(
UniversalAdditionalLightDataOO $!
m_AdditionalLightDataOO% :
;OO: ;
SerializedObjectPP #
m_AdditionalLightDataSOPP 0
;PP0 1
SerializedPropertyRR #
m_UseAdditionalDataPropRR 2
;RR2 3
	protectedUU 
overrideUU 
voidUU 
OnEnableUU  (
(UU( )
)UU) *
{VV 	!
m_AdditionalLightDataWW !
=WW" #

.WW1 2

gameObjectWW2 <
.WW< =
GetComponentWW= I
<WWI J(
UniversalAdditionalLightDataWWJ f
>WWf g
(WWg h
)WWh i
;WWi j
settingsXX 
.XX 
OnEnableXX 
(XX 
)XX 
;XX  
initYY 
(YY !
m_AdditionalLightDataYY &
)YY& '
;YY' (
UpdateShowOptionsZZ 
(ZZ 
trueZZ "
)ZZ" #
;ZZ# $
}[[ 	
void]] 
init]]
(]] (
UniversalAdditionalLightData]] .
additionalLightData]]/ B
)]]B C
{^^ 	
if__ 
(__ 
additionalLightData__ "
==__# %
null__& *
)__* +
return`` 
;`` #
m_AdditionalLightDataSOaa #
=aa$ %
newaa& )
SerializedObjectaa* :
(aa: ;
additionalLightDataaa; N
)aaN O
;aaO P#
m_UseAdditionalDataPropbb #
=bb$ %#
m_AdditionalLightDataSObb& =
.bb= >
FindPropertybb> J
(bbJ K
$strbbK b
)bbb c
;bbc d
settingsdd 
.dd #
ApplyModifiedPropertiesdd ,
(dd, -
)dd- .
;dd. /
}ee 	
publicgg 
overridegg 
voidgg 
OnInspectorGUIgg +
(gg+ ,
)gg, -
{hh 	
ifii 
(ii 
s_Stylesii 
==ii 
nullii  
)ii  !
s_Stylesjj 
=jj 
newjj 
Stylesjj %
(jj% &
)jj& '
;jj' (
settingsll 
.ll 
Updatell 
(ll 
)ll 
;ll 
UpdateShowOptionsoo 
(oo 
falseoo #
)oo# $
;oo$ %
settingsqq 
.qq 

(qq" #
)qq# $
;qq$ %
Lightss 
lightss 
=ss 
targetss  
asss! #
Lightss$ )
;ss) *
iftt 
(tt 
	LightTypett 
.tt 
Directionaltt %
!=tt& (
lighttt) .
.tt. /
typett/ 3
&&tt4 6
lighttt7 <
==tt= ?
RenderSettingstt@ N
.ttN O
sunttO R
)ttR S
{uu 
EditorGUILayoutvv 
.vv  
HelpBoxvv  '
(vv' (
s_Stylesvv( 0
.vv0 1
SunSourceWarningvv1 A
.vvA B
textvvB F
,vvF G
MessageTypevvH S
.vvS T
WarningvvT [
)vv[ \
;vv\ ]
}ww 
EditorGUILayoutyy 
.yy 
Spaceyy !
(yy! "
)yy" #
;yy# $
using}} 
(}} 
var}} 
group}} 
=}} 
new}} "
EditorGUILayout}}# 2
.}}2 3
FadeGroupScope}}3 A
(}}A B
$num}}B F
-}}G H
m_AnimDirOptions}}I Y
.}}Y Z
faded}}Z _
)}}_ `
)}}` a
if~~ 
(~~ 
group~~ 
.~~ 
visible~~ !
)~~! "
settings
�� 
.
�� 
	DrawRange
�� &
(
��& '
)
��' (
;
��( )
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
m_AnimSpotOptions
��B S
.
��S T
faded
��T Y
)
��Y Z
)
��Z [
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "

�� !
(
��! "
)
��" #
;
��# $
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
m_AnimAreaOptions
��B S
.
��S T
faded
��T Y
)
��Y Z
)
��Z [
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
settings
�� 
.
�� 
DrawArea
�� %
(
��% &
)
��& '
;
��' (
settings
�� 
.
�� 
	DrawColor
�� 
(
�� 
)
��  
;
��  !
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
��# $*
CheckLightmappingConsistency
�� (
(
��( )
)
��) *
;
��* +
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
$num
��B F
-
��G H
m_AnimAreaOptions
��I Z
.
��Z [
faded
��[ `
)
��` a
)
��a b
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
{
�� 
if
�� 
(
�� 
light
�� 
.
�� 
type
�� "
!=
��# %
	LightType
��& /
.
��/ 0
Disc
��0 4
)
��4 5
{
�� 
settings
��  
.
��  !
DrawLightmapping
��! 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 
settings
�� 
.
�� 

�� "
(
��" #
)
��# $
;
��$ %
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B(
m_AnimLightBounceIntensity
��B \
.
��\ ]
faded
��] b
)
��b c
)
��c d
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
settings
�� 
.
�� !
DrawBounceIntensity
�� 0
(
��0 1
)
��1 2
;
��2 3

ShadowsGUI
�� 
(
�� 
)
�� 
;
�� 
settings
�� 
.
�� 
DrawRenderMode
�� #
(
��# $
)
��$ %
;
��% &
settings
�� 
.
�� 
DrawCullingMask
�� $
(
��$ %
)
��% &
;
��& '
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
��# $
if
�� 
(
�� 
	SceneView
�� 
.
�� !
lastActiveSceneView
�� -
!=
��. 0
null
��1 5
)
��6 7
{
�� 
var
�� 

�� !
=
��" #
	SceneView
��$ -
.
��- .!
lastActiveSceneView
��. A
.
��A B

��B O
;
��O P
if
�� 
(
�� 
!
�� 

�� "
)
��" #
EditorGUILayout
�� #
.
��# $
HelpBox
��$ +
(
��+ ,
s_Styles
��, 4
.
��4 5"
DisabledLightWarning
��5 I
.
��I J
text
��J N
,
��N O
MessageType
��P [
.
��[ \
Warning
��\ c
)
��c d
;
��d e
}
�� 
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
�� *
CheckLightmappingConsistency
��
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
settings
�� 
.
�� 
isAreaLightType
�� (
&&
��) +
settings
��, 4
.
��4 5
lightmapping
��5 A
.
��A B
intValue
��B J
!=
��K M
(
��N O
int
��O R
)
��R S
LightmapBakeType
��S c
.
��c d
Baked
��d i
)
��i j
{
�� 
settings
�� 
.
�� 
lightmapping
�� %
.
��% &
intValue
��& .
=
��/ 0
(
��1 2
int
��2 5
)
��5 6
LightmapBakeType
��6 F
.
��F G
Baked
��G L
;
��L M
serializedObject
��  
.
��  !%
ApplyModifiedProperties
��! 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
void
�� 

SetOptions
��
(
�� 
AnimBool
��  
animBool
��! )
,
��) *
bool
��+ /

initialize
��0 :
,
��: ;
bool
��< @
targetValue
��A L
)
��L M
{
�� 	
if
�� 
(
�� 

initialize
�� 
)
�� 
{
�� 
animBool
�� 
.
�� 
value
�� 
=
��  
targetValue
��! ,
;
��, -
animBool
�� 
.
�� 
valueChanged
�� %
.
��% &
AddListener
��& 1
(
��1 2
Repaint
��2 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
animBool
�� 
.
�� 
target
�� 
=
��  !
targetValue
��" -
;
��- .
}
�� 
}
�� 	
void
�� 
UpdateShowOptions
��
(
�� 
bool
�� #

initialize
��$ .
)
��. /
{
�� 	

SetOptions
�� 
(
�� 
m_AnimSpotOptions
�� (
,
��( )

initialize
��* 4
,
��4 5
spotOptionsValue
��6 F
)
��F G
;
��G H

SetOptions
�� 
(
��  
m_AnimPointOptions
�� )
,
��) *

initialize
��+ 5
,
��5 6
pointOptionsValue
��7 H
)
��H I
;
��I J

SetOptions
�� 
(
�� 
m_AnimDirOptions
�� '
,
��' (

initialize
��) 3
,
��3 4
dirOptionsValue
��5 D
)
��D E
;
��E F

SetOptions
�� 
(
�� 
m_AnimAreaOptions
�� (
,
��( )

initialize
��* 4
,
��4 5
areaOptionsValue
��6 F
)
��F G
;
��G H

SetOptions
�� 
(
�� !
m_AnimShadowOptions
�� *
,
��* +

initialize
��, 6
,
��6 7 
shadowOptionsValue
��8 J
)
��J K
;
��K L

SetOptions
�� 
(
�� "
m_AnimRuntimeOptions
�� +
,
��+ ,

initialize
��- 7
,
��7 8!
runtimeOptionsValue
��9 L
)
��L M
;
��M N

SetOptions
�� 
(
�� &
m_AnimShadowAngleOptions
�� /
,
��/ 0

initialize
��1 ;
,
��; <
bakedShadowAngle
��= M
)
��M N
;
��N O

SetOptions
�� 
(
�� '
m_AnimShadowRadiusOptions
�� 0
,
��0 1

initialize
��2 <
,
��< =
bakedShadowRadius
��> O
)
��O P
;
��P Q

SetOptions
�� 
(
�� (
m_AnimLightBounceIntensity
�� 1
,
��1 2

initialize
��3 =
,
��= >&
showLightBounceIntensity
��? W
)
��W X
;
��X Y
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
�� 	
settings
�� 
.
�� (
DrawInnerAndOuterSpotAngle
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 	
void
�� &
DrawAdditionalShadowData
��
(
��% &
)
��& '
{
�� 	
bool
�� 

hasChanged
�� 
=
�� 
false
�� #
;
��# $
int
�� '
selectedUseAdditionalData
�� )
;
��) *
if
�� 
(
�� %
m_AdditionalLightDataSO
�� '
==
��( *
null
��+ /
)
��/ 0
{
�� 
selectedUseAdditionalData
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
else
�� 
{
�� 
m_AdditionalLightDataSO
�� '
.
��' (
Update
��( .
(
��. /
)
��/ 0
;
��0 1'
selectedUseAdditionalData
�� )
=
��* +
!
��, -#
m_AdditionalLightData
��- B
.
��B C!
usePipelineSettings
��C V
?
��W X
$num
��Y Z
:
��[ \
$num
��] ^
;
��^ _
}
�� 
Rect
�� '
controlRectAdditionalData
�� *
=
��+ ,
EditorGUILayout
��- <
.
��< =
GetControlRect
��= K
(
��K L
true
��L P
)
��P Q
;
��Q R
if
�� 
(
�� %
m_AdditionalLightDataSO
�� &
!=
��' )
null
��* .
)
��. /
	EditorGUI
�� 
.
�� 

�� '
(
��' ('
controlRectAdditionalData
��( A
,
��A B
Styles
��C I
.
��I J

shadowBias
��J T
,
��T U%
m_UseAdditionalDataProp
��V m
)
��m n
;
��n o
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
��( )'
selectedUseAdditionalData
�� %
=
��& '
	EditorGUI
��( 1
.
��1 2
IntPopup
��2 :
(
��: ;'
controlRectAdditionalData
��; T
,
��T U
Styles
��V \
.
��\ ]

shadowBias
��] g
,
��g h(
selectedUseAdditionalData��i �
,��� �
Styles��� �
.��� �'
displayedDefaultOptions��� �
,��� �
Styles��� �
.��� �#
optionDefaultValues��� �
)��� �
;��� �
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
�� 

hasChanged
�� 
=
�� 
true
�� !
;
��! "
}
�� 
if
�� 
(
�� %
m_AdditionalLightDataSO
�� &
!=
��' )
null
��* .
)
��. /
	EditorGUI
�� 
.
�� 
EndProperty
�� %
(
��% &
)
��& '
;
��' (
if
�� 
(
�� '
selectedUseAdditionalData
�� )
!=
��* ,
$num
��- .
&&
��/ 1%
m_AdditionalLightDataSO
��2 I
!=
��J L
null
��M Q
)
��Q R
{
�� 
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
�� 
.
��  
Slider
��  &
(
��& '
settings
��' /
.
��/ 0
shadowsBias
��0 ;
,
��; <
$num
��= ?
,
��? @
$num
��A D
,
��D E
$str
��F M
)
��M N
;
��N O
EditorGUILayout
�� 
.
��  
Slider
��  &
(
��& '
settings
��' /
.
��/ 0
shadowsNormalBias
��0 A
,
��A B
$num
��C E
,
��E F
$num
��G J
,
��J K
$str
��L T
)
��T U
;
��U V
	EditorGUI
�� 
.
�� 
indentLevel
�� %
--
��% '
;
��' (%
m_AdditionalLightDataSO
�� '
.
��' (%
ApplyModifiedProperties
��( ?
(
��? @
)
��@ A
;
��A B
}
�� 
if
�� 
(
�� 

hasChanged
�� 
)
�� 
{
�� 
if
�� 
(
�� %
m_AdditionalLightDataSO
�� +
==
��, .
null
��/ 3
)
��3 4
{
�� 

�� !
.
��! "

gameObject
��" ,
.
��, -
AddComponent
��- 9
<
��9 :*
UniversalAdditionalLightData
��: V
>
��V W
(
��W X
)
��X Y
;
��Y Z#
m_AdditionalLightData
�� )
=
��* +

��, 9
.
��9 :

gameObject
��: D
.
��D E
GetComponent
��E Q
<
��Q R*
UniversalAdditionalLightData
��R n
>
��n o
(
��o p
)
��p q
;
��q r
var
�� 
asset
�� 
=
�� %
UniversalRenderPipeline
��  7
.
��7 8
asset
��8 =
;
��= >
settings
�� 
.
�� 
shadowsBias
�� (
.
��( )

floatValue
��) 3
=
��4 5
asset
��6 ;
.
��; <
shadowDepthBias
��< K
;
��K L
settings
�� 
.
�� 
shadowsNormalBias
�� .
.
��. /

floatValue
��/ 9
=
��: ;
asset
��< A
.
��A B
shadowNormalBias
��B R
;
��R S
init
�� 
(
�� #
m_AdditionalLightData
�� .
)
��. /
;
��/ 0
}
�� %
m_UseAdditionalDataProp
�� '
.
��' (
intValue
��( 0
=
��1 2'
selectedUseAdditionalData
��3 L
;
��L M%
m_AdditionalLightDataSO
�� '
.
��' (%
ApplyModifiedProperties
��( ?
(
��? @
)
��@ A
;
��A B
}
�� 
}
�� 	
void
�� 

ShadowsGUI
��
(
�� 
)
�� 
{
�� 	
float
�� 
show
�� 
=
�� 
$num
�� 
-
�� 
m_AnimAreaOptions
��  1
.
��1 2
faded
��2 7
;
��7 8
settings
�� 
.
�� 
DrawShadowsType
�� 
(
�� 
)
�� 
;
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
+=
��" $
$num
��% &
;
��& '
show
�� 
*=
�� !
m_AnimShadowOptions
�� '
.
��' (
faded
��( -
;
��- .
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
show
��B F
*
��G H'
m_AnimShadowRadiusOptions
��I b
.
��b c
faded
��c h
)
��h i
)
��i j
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
settings
�� 
.
�� #
DrawBakedShadowRadius
�� 2
(
��2 3
)
��3 4
;
��4 5
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
show
��B F
*
��G H&
m_AnimShadowAngleOptions
��I a
.
��a b
faded
��b g
)
��g h
)
��h i
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
settings
�� 
.
�� "
DrawBakedShadowAngle
�� 1
(
��1 2
)
��2 3
;
��3 4
using
�� 
(
�� 
var
�� 
group
�� 
=
�� 
new
�� "
EditorGUILayout
��# 2
.
��2 3
FadeGroupScope
��3 A
(
��A B
show
��B F
*
��G H"
m_AnimRuntimeOptions
��I ]
.
��] ^
faded
��^ c
)
��c d
)
��d e
{
�� 
if
�� 
(
�� 
group
�� 
.
�� 
visible
�� !
)
��! "
{
�� 
EditorGUILayout
�� #
.
��# $

LabelField
��$ .
(
��. /
Styles
��/ 5
.
��5 6$
ShadowRealtimeSettings
��6 L
)
��L M
;
��M N
	EditorGUI
�� 
.
�� 
indentLevel
�� )
+=
��* ,
$num
��- .
;
��. /
EditorGUILayout
�� #
.
��# $
Slider
��$ *
(
��* +
settings
��+ 3
.
��3 4
shadowsStrength
��4 C
,
��C D
$num
��E G
,
��G H
$num
��I K
,
��K L
Styles
��M S
.
��S T
ShadowStrength
��T b
)
��b c
;
��c d&
DrawAdditionalShadowData
�� ,
(
��, -
)
��- .
;
��. /
float
�� 
nearPlaneMinBound
�� +
=
��, -
Mathf
��. 3
.
��3 4
Min
��4 7
(
��7 8
$num
��8 =
*
��> ?
settings
��@ H
.
��H I
range
��I N
.
��N O

floatValue
��O Y
,
��Y Z
$num
��[ _
)
��_ `
;
��` a
EditorGUILayout
�� #
.
��# $
Slider
��$ *
(
��* +
settings
��+ 3
.
��3 4
shadowsNearPlane
��4 D
,
��D E
nearPlaneMinBound
��F W
,
��W X
$num
��Y ^
,
��^ _
Styles
��` f
.
��f g
ShadowNearPlane
��g v
)
��v w
;
��w x
	EditorGUI
�� 
.
�� 
indentLevel
�� )
-=
��* ,
$num
��- .
;
��. /
}
�� 
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
-=
��" $
$num
��% &
;
��& '
if
�� 
(
��  
bakingWarningValue
�� "
)
��" #
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
s_Styles
��( 0
.
��0 1

��1 >
.
��> ?
text
��? C
,
��C D
MessageType
��E P
.
��P Q
Warning
��Q X
)
��X Y
;
��Y Z
if
�� 
(
�� )
realtimeShadowsWarningValue
�� +
)
��+ ,
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
s_Styles
��( 0
.
��0 1(
ShadowsNotSupportedWarning
��1 K
.
��K L
text
��L P
,
��P Q
MessageType
��R ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
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
��# $
}
�� 	
	protected
�� 
override
�� 
void
�� 

OnSceneGUI
��  *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
GraphicsSettings
�� "
.
��" ##
currentRenderPipeline
��# 8
is
��9 ;*
UniversalRenderPipelineAsset
��< X
)
��X Y
)
��Y Z
return
�� 
;
�� 
Light
�� 
light
�� 
=
�� 
target
��  
as
��! #
Light
��$ )
;
��) *
switch
�� 
(
�� 
light
�� 
.
�� 
type
�� 
)
�� 
{
�� 
case
�� 
	LightType
�� 
.
�� 
Spot
�� #
:
��# $
using
�� 
(
�� 
new
�� 
Handles
�� &
.
��& '
DrawingScope
��' 3
(
��3 4
	Matrix4x4
��4 =
.
��= >
TRS
��> A
(
��A B
light
��B G
.
��G H
	transform
��H Q
.
��Q R
position
��R Z
,
��Z [
light
��\ a
.
��a b
	transform
��b k
.
��k l
rotation
��l t
,
��t u
Vector3
��v }
.
��} ~
one��~ �
)��� �
)��� �
)��� �
{
�� &
CoreLightEditorUtilities
�� 0
.
��0 1 
DrawSpotLightGizmo
��1 C
(
��C D
light
��D I
)
��I J
;
��J K
}
�� 
break
�� 
;
�� 
case
�� 
	LightType
�� 
.
�� 
Point
�� $
:
��$ %
using
�� 
(
�� 
new
�� 
Handles
�� &
.
��& '
DrawingScope
��' 3
(
��3 4
	Matrix4x4
��4 =
.
��= >
TRS
��> A
(
��A B
light
��B G
.
��G H
	transform
��H Q
.
��Q R
position
��R Z
,
��Z [

Quaternion
��\ f
.
��f g
identity
��g o
,
��o p
Vector3
��q x
.
��x y
one
��y |
)
��| }
)
��} ~
)
��~ 
{
�� &
CoreLightEditorUtilities
�� 0
.
��0 1!
DrawPointLightGizmo
��1 D
(
��D E
light
��E J
)
��J K
;
��K L
}
�� 
break
�� 
;
�� 
case
�� 
	LightType
�� 
.
�� 
	Rectangle
�� (
:
��( )
using
�� 
(
�� 
new
�� 
Handles
�� &
.
��& '
DrawingScope
��' 3
(
��3 4
	Matrix4x4
��4 =
.
��= >
TRS
��> A
(
��A B
light
��B G
.
��G H
	transform
��H Q
.
��Q R
position
��R Z
,
��Z [
light
��\ a
.
��a b
	transform
��b k
.
��k l
rotation
��l t
,
��t u
Vector3
��v }
.
��} ~
one��~ �
)��� �
)��� �
)��� �
{
�� &
CoreLightEditorUtilities
�� 0
.
��0 1%
DrawRectangleLightGizmo
��1 H
(
��H I
light
��I N
)
��N O
;
��O P
}
�� 
break
�� 
;
�� 
case
�� 
	LightType
�� 
.
�� 
Disc
�� #
:
��# $
using
�� 
(
�� 
new
�� 
Handles
�� &
.
��& '
DrawingScope
��' 3
(
��3 4
	Matrix4x4
��4 =
.
��= >
TRS
��> A
(
��A B
light
��B G
.
��G H
	transform
��H Q
.
��Q R
position
��R Z
,
��Z [
light
��\ a
.
��a b
	transform
��b k
.
��k l
rotation
��l t
,
��t u
Vector3
��v }
.
��} ~
one��~ �
)��� �
)��� �
)��� �
{
�� &
CoreLightEditorUtilities
�� 0
.
��0 1 
DrawDiscLightGizmo
��1 C
(
��C D
light
��D I
)
��I J
;
��J K
}
�� 
break
�� 
;
�� 
case
�� 
	LightType
�� 
.
�� 
Directional
�� *
:
��* +
using
�� 
(
�� 
new
�� 
Handles
�� &
.
��& '
DrawingScope
��' 3
(
��3 4
	Matrix4x4
��4 =
.
��= >
TRS
��> A
(
��A B
light
��B G
.
��G H
	transform
��H Q
.
��Q R
position
��R Z
,
��Z [
light
��\ a
.
��a b
	transform
��b k
.
��k l
rotation
��l t
,
��t u
Vector3
��v }
.
��} ~
one��~ �
)��� �
)��� �
)��� �
{
�� &
CoreLightEditorUtilities
�� 0
.
��0 1'
DrawDirectionalLightGizmo
��1 J
(
��J K
light
��K P
)
��P Q
;
��Q R
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
base
�� 
.
�� 

OnSceneGUI
�� #
(
��# $
)
��$ %
;
��% &
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �M
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\Selection\SerializableSelection.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
[ 
Serializable 
] 
internal		 
abstract		
class		 !
SerializableSelection		 1
<		1 2
T		2 3
>		3 4
:		5 6

ISelection		7 A
<		A B
T		B C
>		C D
,		D E*
ISerializationCallbackReceiver		F d
{

 
internal 
readonly 
static  
int! $

kInvalidID% /
=0 1
-2 3
$num3 4
;4 5
[
SerializeField
]
private 
T 
[ 
] 
m_Keys 
= 
new  
T! "
[" #
$num# $
]$ %
;% &
private 
HashSet 
< 
T 
> 
m_Selection &
=' (
new) ,
HashSet- 4
<4 5
T5 6
>6 7
(7 8
)8 9
;9 :
private 
HashSet 
< 
T 
> 
m_TemporalSelection .
=/ 0
new1 4
HashSet5 <
<< =
T= >
>> ?
(? @
)@ A
;A B
private 
bool !
m_SelectionInProgress *
=+ ,
false- 2
;2 3
public 
int 
Count 
{ 	
get 
{ 
return 
m_Selection $
.$ %
Count% *
++ ,
m_TemporalSelection- @
.@ A
CountA F
;F G
}H I
} 	
public 
T 

{ 	
get 
{ 
return 
First 
( 
)  
;  !
}" #
set 
{ 
Clear 
( 
) 
; 
Select 
( 
value 
, 
true "
)" #
;# $
}   
}!! 	
public## 
T## 
[## 
]## 
elements## 
{$$ 	
get%% 
{&& 
var'' 
set'' 
='' 
m_Selection'' %
;''% &
if)) 
()) !
m_SelectionInProgress)) )
)))) *
{** 
var++ 
union++ 
=++ 
new++  #
HashSet++$ +
<+++ ,
T++, -
>++- .
(++. /
m_Selection++/ :
)++: ;
;++; <
union,, 
.,, 
	UnionWith,, #
(,,# $
m_TemporalSelection,,$ 7
),,7 8
;,,8 9
set-- 
=-- 
union-- 
;--  
}.. 
return00 
new00 
List00 
<00  
T00  !
>00! "
(00" #
set00# &
)00& '
.00' (
ToArray00( /
(00/ 0
)000 1
;001 2
}11 
set22 
{33 
Clear44 
(44 
)44 
;44 
foreach55 
(55 
var55 
element55 #
in55$ &
value55' ,
)55, -
Select66 
(66 
element66 "
,66" #
true66$ (
)66( )
;66) *
}77 
}88 	
	protected:: 
abstract:: 
T:: 
GetInvalidElement:: .
(::. /
)::/ 0
;::0 1
public<< 
void<< 
Clear<< 
(<< 
)<< 
{== 	
GetSelection>> 
(>> 
)>> 
.>> 
Clear>>  
(>>  !
)>>! "
;>>" #
}?? 	
publicAA 
voidAA 
BeginSelectionAA "
(AA" #
)AA# $
{BB 	!
m_SelectionInProgressCC !
=CC" #
trueCC$ (
;CC( )
ClearDD 
(DD 
)DD 
;DD 
}EE 	
publicGG 
voidGG 
EndSelectionGG  
(GG  !
boolGG! %
selectGG& ,
)GG, -
{HH 	!
m_SelectionInProgressII !
=II" #
falseII$ )
;II) *
ifKK 
(KK 
selectKK 
)KK 
m_SelectionLL 
.LL 
	UnionWithLL %
(LL% &
m_TemporalSelectionLL& 9
)LL9 :
;LL: ;
elseMM 
m_SelectionNN 
.NN 

ExceptWithNN &
(NN& '
m_TemporalSelectionNN' :
)NN: ;
;NN; <
m_TemporalSelectionPP 
.PP  
ClearPP  %
(PP% &
)PP& '
;PP' (
}QQ 	
publicSS 
boolSS 
SelectSS 
(SS 
TSS 
elementSS $
,SS$ %
boolSS& *
selectSS+ 1
)SS1 2
{TT 	
varUU 
changedUU 
=UU 
falseUU 
;UU  
ifWW 
(WW 
EqualityComparerWW 
<WW  
TWW  !
>WW! "
.WW" #
DefaultWW# *
.WW* +
EqualsWW+ 1
(WW1 2
elementWW2 9
,WW9 :
GetInvalidElementWW; L
(WWL M
)WWM N
)WWN O
)WWO P
returnXX 
changedXX 
;XX 
ifZZ 
(ZZ 
selectZZ 
)ZZ 
changed[[ 
=[[ 
GetSelection[[ &
([[& '
)[[' (
.[[( )
Add[[) ,
([[, -
element[[- 4
)[[4 5
;[[5 6
else\\ 
if\\ 
(\\ 
Contains\\ 
(\\ 
element\\ %
)\\% &
)\\& '
changed]] 
=]] 
GetSelection]] &
(]]& '
)]]' (
.]]( )
Remove]]) /
(]]/ 0
element]]0 7
)]]7 8
;]]8 9
return__ 
changed__ 
;__ 
}`` 	
publicbb 
boolbb 
Containsbb 
(bb 
Tbb 
elementbb &
)bb& '
{cc 	
returndd 
m_Selectiondd 
.dd 
Containsdd '
(dd' (
elementdd( /
)dd/ 0
||dd1 3
m_TemporalSelectiondd4 G
.ddG H
ContainsddH P
(ddP Q
elementddQ X
)ddX Y
;ddY Z
}ee 	
privategg 
HashSetgg 
<gg 
Tgg 
>gg 
GetSelectiongg '
(gg' (
)gg( )
{hh 	
ifii 
(ii !
m_SelectionInProgressii %
)ii% &
returnjj 
m_TemporalSelectionjj *
;jj* +
returnll 
m_Selectionll 
;ll 
}mm 	
privateoo 
Too 
Firstoo 
(oo 
)oo 
{pp 	
Tqq 
elementqq 
=qq 
Firstqq 
(qq 
m_Selectionqq )
)qq) *
;qq* +
ifss 
(ss 
EqualityComparerss 
<ss  
Tss  !
>ss! "
.ss" #
Defaultss# *
.ss* +
Equalsss+ 1
(ss1 2
elementss2 9
,ss9 :
GetInvalidElementss; L
(ssL M
)ssM N
)ssN O
)ssO P
elementtt 
=tt 
Firsttt 
(tt  
m_TemporalSelectiontt  3
)tt3 4
;tt4 5
returnvv 
elementvv 
;vv 
}ww 	
privateyy 
Tyy 
Firstyy 
(yy 
HashSetyy 
<yy  
Tyy  !
>yy! "
setyy# &
)yy& '
{zz 	
if{{ 
({{ 
set{{ 
.{{ 
Count{{ 
=={{ 
$num{{ 
){{ 
return|| 
GetInvalidElement|| (
(||( )
)||) *
;||* +
using~~ 
(~~ 
var~~ 

enumerator~~ !
=~~" #
set~~$ '
.~~' (

(~~5 6
)~~6 7
)~~7 8
{ 
Debug
�� 
.
�� 
Assert
�� 
(
�� 

enumerator
�� '
.
��' (
MoveNext
��( 0
(
��0 1
)
��1 2
)
��2 3
;
��3 4
return
�� 

enumerator
�� !
.
��! "
Current
��" )
;
��) *
}
�� 
}
�� 	
void
�� ,
ISerializationCallbackReceiver
��
.
��+ ,
OnBeforeSerialize
��, =
(
��= >
)
��> ?
{
�� 	
m_Keys
�� 
=
�� 
new
�� 
List
�� 
<
�� 
T
�� 
>
��  
(
��  !
m_Selection
��! ,
)
��, -
.
��- .
ToArray
��. 5
(
��5 6
)
��6 7
;
��7 8
}
�� 	
void
�� ,
ISerializationCallbackReceiver
��
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	
elements
�� 
=
�� 
m_Keys
�� 
;
�� 
}
�� 	
}
�� 
}�� �c
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\GUIFramework\GUIState.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
.= >
GUIFramework> J
{ 
internal 
class
GUIState 
: 
	IGUIState '
{ 
private 
Handles 
. 
CapFunction #
nullCap$ +
=, -
(. /
int/ 2
c3 4
,4 5
Vector36 =
p> ?
,@ A

QuaternionB L
rM N
,N O
floatP U
sV W
,W X
	EventTypeY b
evc e
)e f
=>g i
{j k
}k l
;l m
public

 
Vector2

 


 $
{ 	
get 
{ 
return 
Event 
. 
current &
.& '

;4 5
}6 7
}
public 
int 
mouseButton 
{ 	
get 
{ 
return 
Event 
. 
current &
.& '
button' -
;- .
}/ 0
} 	
public 
int 

clickCount 
{ 	
get 
{ 
return 
Event 
. 
current &
.& '

clickCount' 1
;1 2
}3 4
} 	
public 
bool 
isShiftDown 
{ 	
get 
{ 
return 
Event 
. 
current &
.& '
shift' ,
;, -
}. /
} 	
public 
bool 
	isAltDown 
{ 	
get   
{   
return   
Event   
.   
current   &
.  & '
alt  ' *
;  * +
}  , -
}!! 	
public## 
bool## 
isActionKeyDown## #
{$$ 	
get%% 
{%% 
return%% 
	EditorGUI%% "
.%%" #
	actionKey%%# ,
;%%, -
}%%. /
}&& 	
public(( 
KeyCode(( 
keyCode(( 
{)) 	
get** 
{** 
return** 
Event** 
.** 
current** &
.**& '
keyCode**' .
;**. /
}**0 1
}++ 	
public-- 
	EventType-- 
	eventType-- "
{.. 	
get// 
{// 
return// 
Event// 
.// 
current// &
.//& '
type//' +
;//+ ,
}//- .
}00 	
public22 
string22 
commandName22 !
{33 	
get44 
{44 
return44 
Event44 
.44 
current44 &
.44& '
commandName44' 2
;442 3
}444 5
}55 	
public77 
int77 
nearestControl77 !
{88 	
get99 
{99 
return99 

.99& '
nearestControl99' 5
;995 6
}997 8
set:: 
{:: 

.::  
nearestControl::  .
=::/ 0
value::1 6
;::6 7
}::8 9
};; 	
public== 
int== 

hotControl== 
{>> 	
get?? 
{?? 
return?? 

GUIUtility?? #
.??# $

hotControl??$ .
;??. /
}??0 1
set@@ 
{@@ 

GUIUtility@@ 
.@@ 

hotControl@@ '
=@@( )
value@@* /
;@@/ 0
}@@1 2
}AA 	
publicCC 
boolCC 
changedCC 
{DD 	
getEE 
{EE 
returnEE 
GUIEE 
.EE 
changedEE $
;EE$ %
}EE& '
setFF 
{FF 
GUIFF 
.FF 
changedFF 
=FF 
valueFF  %
;FF% &
}FF' (
}GG 	
publicII 
intII 
GetControlIDII 
(II  
intII  #
hintII$ (
,II( )
	FocusTypeII* 3
	focusTypeII4 =
)II= >
{JJ 	
returnKK 

GUIUtilityKK 
.KK 
GetControlIDKK *
(KK* +
hintKK+ /
,KK/ 0
	focusTypeKK1 :
)KK: ;
;KK; <
}LL 	
publicNN 
voidNN 

AddControlNN 
(NN 
intNN "
	controlIDNN# ,
,NN, -
floatNN. 3
distanceNN4 <
)NN< =
{OO 	

.PP 

AddControlPP $
(PP$ %
	controlIDPP% .
,PP. /
distancePP0 8
)PP8 9
;PP9 :
}QQ 	
publicSS 
boolSS 
SliderSS 
(SS 
intSS 
idSS !
,SS! "

SliderDataSS# -

sliderDataSS. 8
,SS8 9
outSS: =
Vector3SS> E
newPositionSSF Q
)SSQ R
{TT 	
ifUU 
(UU 
mouseButtonUU 
==UU 
$numUU  
&&UU! #
	eventTypeUU$ -
==UU. 0
	EventTypeUU1 :
.UU: ;
	MouseDownUU; D
)UUD E
{VV 

hotControlWW 
=WW 
$numWW 
;WW 
nearestControlXX 
=XX  
idXX! #
;XX# $
}YY 
	EditorGUI[[ 
.[[ 
BeginChangeCheck[[ &
([[& '
)[[' (
;[[( )
newPosition\\ 
=\\ 
Handles\\ !
.\\! "
Slider2D\\" *
(\\* +
id\\+ -
,\\- .

sliderData\\/ 9
.\\9 :
position\\: B
,\\B C

sliderData\\D N
.\\N O
forward\\O V
,\\V W

sliderData\\X b
.\\b c
right\\c h
,\\h i

sliderData\\j t
.\\t u
up\\u w
,\\w x
$num\\y {
,\\{ |
nullCap	\\} �
,
\\� �
Vector2
\\� �
.
\\� �
zero
\\� �
)
\\� �
;
\\� �
return]] 
	EditorGUI]] 
.]] 
EndChangeCheck]] +
(]]+ ,
)]], -
;]]- .
}^^ 	
public`` 
void`` 
UseCurrentEvent`` #
(``# $
)``$ %
{aa 	
Eventbb 
.bb 
currentbb 
.bb 
Usebb 
(bb 
)bb 
;bb  
}cc 	
publicee 
voidee 
Repaintee 
(ee 
)ee 
{ff 	

.gg 
Repaintgg !
(gg! "
)gg" #
;gg# $
}hh 	
publicjj 
booljj  
IsEventOutsideWindowjj (
(jj( )
)jj) *
{kk 	
returnll 
Eventll 
.ll 
currentll  
.ll  !
typell! %
==ll& (
	EventTypell) 2
.ll2 3
Ignorell3 9
;ll9 :
}mm 	
publicoo 
booloo 
IsViewToolActiveoo $
(oo$ %
)oo% &
{pp 	
returnqq 
UnityEditorqq 
.qq 
Toolsqq $
.qq$ %
currentqq% ,
==qq- /
Toolqq0 4
.qq4 5
Viewqq5 9
||qq: <
	isAltDownqq= F
||qqG I
mouseButtonqqJ U
==qqV X
$numqqY Z
||qq[ ]
mouseButtonqq^ i
==qqj l
$numqqm n
;qqn o
}rr 	
publictt 
booltt 
HasCurrentCameratt $
(tt$ %
)tt% &
{uu 	
returnvv 
Cameravv 
.vv 
currentvv !
!=vv" $
nullvv% )
;vv) *
}ww 	
publicyy 
floatyy 

(yy" #
Vector3yy# *
positionyy+ 3
)yy3 4
{zz 	
var{{ 
scale{{ 
={{ 
HasCurrentCamera{{ (
({{( )
){{) *
?{{+ ,
$num{{- 2
:{{3 4
$num{{5 :
;{{: ;
return|| 

.||  !

(||. /
position||/ 7
)||7 8
*||9 :
scale||; @
;||@ A
}}} 	
public 
float 
DistanceToSegment &
(& '
Vector3' .
p1/ 1
,1 2
Vector33 :
p2; =
)= >
{
�� 	
p1
�� 
=
�� 

�� 
.
�� 
WorldToGUIPoint
�� .
(
��. /
p1
��/ 1
)
��1 2
;
��2 3
p2
�� 
=
�� 

�� 
.
�� 
WorldToGUIPoint
�� .
(
��. /
p2
��/ 1
)
��1 2
;
��2 3
return
�� 

��  
.
��  !(
DistancePointToLineSegment
��! ;
(
��; <
Event
��< A
.
��A B
current
��B I
.
��I J

��J W
,
��W X
p1
��Y [
,
��[ \
p2
��] _
)
��_ `
;
��` a
}
�� 	
public
�� 
float
�� 
DistanceToCircle
�� %
(
��% &
Vector3
��& -
center
��. 4
,
��4 5
float
��6 ;
radius
��< B
)
��B C
{
�� 	
return
�� 

��  
.
��  !
DistanceToCircle
��! 1
(
��1 2
center
��2 8
,
��8 9
radius
��: @
)
��@ A
;
��A B
}
�� 	
public
�� 
Vector3
�� 

GUIToWorld
�� !
(
��! "
Vector2
��" )
guiPosition
��* 5
,
��5 6
Vector3
��7 >
planeNormal
��? J
,
��J K
Vector3
��L S
planePos
��T \
)
��\ ]
{
�� 	
Vector3
�� 
worldPos
�� 
=
�� 
Handles
�� &
.
��& '

��' 4
.
��4 5

��5 B
(
��B C
guiPosition
��C N
)
��N O
;
��O P
if
�� 
(
�� 
Camera
�� 
.
�� 
current
�� 
)
�� 
{
�� 
Ray
�� 
ray
�� 
=
�� 

�� '
.
��' ( 
GUIPointToWorldRay
��( :
(
��: ;
guiPosition
��; F
)
��F G
;
��G H
planeNormal
�� 
=
�� 
Handles
�� %
.
��% &
matrix
��& ,
.
��, -
MultiplyVector
��- ;
(
��; <
planeNormal
��< G
)
��G H
;
��H I
planePos
�� 
=
�� 
Handles
�� "
.
��" #
matrix
��# )
.
��) *

��* 7
(
��7 8
planePos
��8 @
)
��@ A
;
��A B
Plane
�� 
plane
�� 
=
�� 
new
�� !
Plane
��" '
(
��' (
planeNormal
��( 3
,
��3 4
planePos
��5 =
)
��= >
;
��> ?
float
�� 
distance
�� 
=
��  
$num
��! #
;
��# $
if
�� 
(
�� 
plane
�� 
.
�� 
Raycast
�� !
(
��! "
ray
��" %
,
��% &
out
��' *
distance
��+ 3
)
��3 4
)
��4 5
{
�� 
worldPos
�� 
=
�� 
Handles
�� &
.
��& '

��' 4
.
��4 5

��5 B
(
��B C
ray
��C F
.
��F G
GetPoint
��G O
(
��O P
distance
��P X
)
��X Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
return
�� 
worldPos
�� 
;
�� 
}
�� 	
}
�� 
}�� �

�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditorTool\ScriptableData.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class
ScriptableData !
<! "
T" #
># $
:% &
ScriptableObject' 7
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
T 
m_Data 
; 
public 
UnityObject 
owner  
{! "
get# &
;& '
set( +
;+ ,
}- .
public
int
index
{
get
;
set
;
}
public 
T 
data 
{ 	
get 
{ 
return 
m_Data 
;  
}! "
set 
{ 
m_Data 
= 
value  
;  !
}" #
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGraph\UniversalStructFields.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
ShaderGraph* 5
{ 
static 

class !
UniversalStructFields &
{ 
public 
struct 
Varyings 
{ 	
public		 
static		 
string		  
name		! %
=		& '
$str		( 2
;		2 3
public

 
static

 
FieldDescriptor

 )

lightmapUV

* 4
=

5 6
new

7 :
FieldDescriptor

; J
(

J K
Varyings

K S
.

S T
name

T X
,

X Y
$str

Z f
,

f g
$str

h j
,

j k
ShaderValueType

l {
.

{ |
Float2	

| �
,


� �
preprocessor 
: 
$str 5
,5 6
subscriptOptions7 G
:H I
StructFieldOptionsJ \
.\ ]
Optional] e
)e f
;f g
public 
static 
FieldDescriptor )
sh* ,
=- .
new/ 2
FieldDescriptor3 B
(B C
VaryingsC K
.K L
nameL P
,P Q
$strR V
,V W
$strX Z
,Z [
ShaderValueType\ k
.k l
Float3l r
,r s
preprocessor
:
$str
,
subscriptOptions
:
StructFieldOptions
.
Optional
)
;
public 
static 
FieldDescriptor )#
fogFactorAndVertexLight* A
=B C
newD G
FieldDescriptorH W
(W X
VaryingsX `
.` a
namea e
,e f
$str	g �
,
� �
$str
� �
,
� �
ShaderValueType
� �
.
� �
Float4
� �
,
� �
subscriptOptions  
:! "
StructFieldOptions# 5
.5 6
Optional6 >
)> ?
;? @
public 
static 
FieldDescriptor )
shadowCoord* 5
=6 7
new8 ;
FieldDescriptor< K
(K L
VaryingsL T
.T U
nameU Y
,Y Z
$str[ h
,h i
$str	j �
,
� �
ShaderValueType
� �
.
� �
Float4
� �
,
� �
subscriptOptions  
:! "
StructFieldOptions# 5
.5 6
Optional6 >
)> ?
;? @
public 
static 
FieldDescriptor ),
 stereoTargetEyeIndexAsRTArrayIdx* J
=K L
newM P
FieldDescriptorQ `
(` a
Varyingsa i
.i j
namej n
,n o
$str	p �
,
� �
$str
� �
,
� �
ShaderValueType
� �
.
� �
Uint
� �
,
� �
$str +
,+ ,
$str- Y
,Y Z
StructFieldOptions[ m
.m n
	Generatedn w
)w x
;x y
public 
static 
FieldDescriptor )+
stereoTargetEyeIndexAsBlendIdx0* I
=J K
newL O
FieldDescriptorP _
(_ `
Varyings` h
.h i
namei m
,m n
$str	o �
,
� �
$str
� �
,
� �
ShaderValueType
� �
.
� �
Uint
� �
,
� �
$str 
,  
$str	! �
)
� �
;
� �
} 	
} 
} �O
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\LightExplorer.cs
	namespace 	
UnityEditor
 
{ 
[ .
"LightingExplorerExtensionAttribute $
($ %
typeof% +
(+ ,(
UniversalRenderPipelineAsset, H
)H I
)I J
]J K
[		 
	MovedFrom		 
(		 
$str		 (
)		( )
]		) *
public		+ 1
class		2 7

:		F G,
 DefaultLightingExplorerExtension		H h
{

 
private 	
static
 
class 
Styles 
{ 	
public
static
readonly

GUIContent
Enabled
=
EditorGUIUtility
.

(
$str
)
;
public	 
static 
readonly 

GUIContent  *
Name+ /
=0 1
EditorGUIUtility2 B
.B C

(P Q
$strQ W
)W X
;X Y
public	 
static 
readonly 

GUIContent  *
Mode+ /
=0 1
EditorGUIUtility2 B
.B C

(P Q
$strQ W
)W X
;X Y
public	 
static 
readonly 

GUIContent  *
HDR+ .
=/ 0
EditorGUIUtility1 A
.A B

(O P
$strP U
)U V
;V W
public	 
static 
readonly 

GUIContent  *
ShadowDistance+ 9
=: ;
EditorGUIUtility< L
.L M

(Z [
$str[ l
)l m
;m n
public	 
static 
readonly 

GUIContent  *
	NearPlane+ 4
=5 6
EditorGUIUtility7 G
.G H

(U V
$strV b
)b c
;c d
public	 
static 
readonly 

GUIContent  *
FarPlane+ 3
=4 5
EditorGUIUtility6 F
.F G

(T U
$strU `
)` a
;a b
public	 
static 
readonly 

GUIContent  *

Resolution+ 5
=6 7
EditorGUIUtility8 H
.H I

(V W
$strW c
)c d
;d e
public	 
static 
readonly 

GUIContent  *
[* +
]+ ,%
ReflectionProbeModeTitles- F
=G H
{I J
EditorGUIUtilityK [
.[ \

(i j
$strj q
)q r
,r s
EditorGUIUtility	t �
.
� �

� �
(
� �
$str
� �
)
� �
,
� �
EditorGUIUtility
� �
.
� �

� �
(
� �
$str
� �
)
� �
}
� �
;
� �
public	 
static 
readonly 
int  #
[# $
]$ %%
ReflectionProbeModeValues& ?
=@ A
{B C
(D E
intE H
)H I
ReflectionProbeModeI \
.\ ]
Baked] b
,b c
(d e
inte h
)h i
ReflectionProbeModei |
.| }
Realtime	} �
,
� �
(
� �
int
� �
)
� �!
ReflectionProbeMode
� �
.
� �
Custom
� �
}
� �
;
� �
public	 
static 
readonly 

GUIContent  *
[* +
]+ ,%
ReflectionProbeSizeTitles- F
=G H
{I J
EditorGUIUtilityK [
.[ \

(i j
$strj n
)n o
,o p
EditorGUIUtility $
.$ %

(2 3
$str3 7
)7 8
,8 9
EditorGUIUtility $
.$ %

(2 3
$str3 7
)7 8
,8 9
EditorGUIUtility $
.$ %

(2 3
$str3 8
)8 9
,9 :
EditorGUIUtility $
.$ %

(2 3
$str3 8
)8 9
,9 :
EditorGUIUtility $
.$ %

(2 3
$str3 8
)8 9
,9 :
EditorGUIUtility $
.$ %

(2 3
$str3 9
)9 :
,: ;
EditorGUIUtility   $
.  $ %

(  2 3
$str  3 9
)  9 :
}  ; <
;  < =
public!!	 
static!! 
readonly!! 
int!!  #
[!!# $
]!!$ %%
ReflectionProbeSizeValues!!& ?
=!!@ A
{!!B C
$num!!D F
,!!F G
$num!!H J
,!!J K
$num!!L N
,!!N O
$num!!P S
,!!S T
$num!!U X
,!!X Y
$num!!Z ]
,!!] ^
$num!!_ c
,!!c d
$num!!e i
}!!j k
;!!k l
}"" 	
	protected$$ 
override$$ '
LightingExplorerTableColumn$$ 0
[$$0 1
]$$1 2%
GetReflectionProbeColumns$$3 L
($$L M
)$$M N
{%% 
return&& 	
new&&
 
[&&
]&& 
{'' 
new(( '
LightingExplorerTableColumn(( #
(((# $'
LightingExplorerTableColumn(($ ?
.((? @
DataType((@ H
.((H I
Checkbox((I Q
,((Q R
Styles((S Y
.((Y Z
Enabled((Z a
,((a b
$str((c n
,((n o
$num((p r
)((r s
,((s t
new)) '
LightingExplorerTableColumn)) #
())# $'
LightingExplorerTableColumn))$ ?
.))? @
DataType))@ H
.))H I
Name))I M
,))M N
Styles))O U
.))U V
Name))V Z
,))Z [
null))\ `
,))` a
$num))b e
)))e f
,))f g
new** '
LightingExplorerTableColumn** #
(**# $'
LightingExplorerTableColumn**$ ?
.**? @
DataType**@ H
.**H I
Int**I L
,**L M
Styles**N T
.**T U
Mode**U Y
,**Y Z
$str**[ c
,**c d
$num**e g
,**g h
(**i j
r**j k
,**k l
prop**m q
,**q r
dep**s v
)**v w
=>**x z
{++ 
	EditorGUI,, 
.,, 
IntPopup,, 
(,, 
r,, 
,,, 
prop,, 
,,,  
Styles,,! '
.,,' (%
ReflectionProbeModeTitles,,( A
,,,A B
Styles,,C I
.,,I J%
ReflectionProbeModeValues,,J c
,,,c d

GUIContent,,e o
.,,o p
none,,p t
),,t u
;,,u v
}-- 
)-- 
,-- 
new.. '
LightingExplorerTableColumn.. #
(..# $'
LightingExplorerTableColumn..$ ?
...? @
DataType..@ H
...H I
Checkbox..I Q
,..Q R
Styles..S Y
...Y Z
HDR..Z ]
,..] ^
$str.._ f
,..f g
$num..h j
)..j k
,..k l
new// '
LightingExplorerTableColumn// #
(//# $'
LightingExplorerTableColumn//$ ?
.//? @
DataType//@ H
.//H I
Enum//I M
,//M N
Styles//O U
.//U V

Resolution//V `
,//` a
$str//b p
,//p q
$num//r u
,//u v
(//w x
r//x y
,//y z
prop//{ 
,	// �
dep
//� �
)
//� �
=>
//� �
{00 
	EditorGUI11 
.11 
IntPopup11 
(11 
r11 
,11 
prop11 
,11  
Styles11! '
.11' (%
ReflectionProbeSizeTitles11( A
,11A B
Styles11C I
.11I J%
ReflectionProbeSizeValues11J c
,11c d

GUIContent11e o
.11o p
none11p t
)11t u
;11u v
}22 
)22 
,22 
new33 '
LightingExplorerTableColumn33 #
(33# $'
LightingExplorerTableColumn33$ ?
.33? @
DataType33@ H
.33H I
Float33I N
,33N O
Styles33P V
.33V W
ShadowDistance33W e
,33e f
$str33g y
,33y z
$num33{ ~
)33~ 
,	33 �
new44 '
LightingExplorerTableColumn44 #
(44# $'
LightingExplorerTableColumn44$ ?
.44? @
DataType44@ H
.44H I
Float44I N
,44N O
Styles44P V
.44V W
	NearPlane44W `
,44` a
$str44b n
,44n o
$num44p r
)44r s
,44s t
new55 '
LightingExplorerTableColumn55 #
(55# $'
LightingExplorerTableColumn55$ ?
.55? @
DataType55@ H
.55H I
Float55I N
,55N O
Styles55P V
.55V W
FarPlane55W _
,55_ `
$str55a l
,55l m
$num55n p
)55p q
,55q r
}66 
;66 
}77 
}88 
}99 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str L
)L M
]M N
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str O
)O P
]P Q�<
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\Shaders\ParticlesLitShader.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
	ShaderGUI* 3
{ 
internal 
class
ParticlesLitShader %
:& '

{ 
private

 
LitGUI

 
.

 


 $


% 2
;

2 3
private 
ParticleGUI 
. 
ParticleProperties .

;< =
List 
< 
ParticleSystemRenderer
># $(
m_RenderersUsingThisMaterial% A
=B C
newD G
ListH L
<L M"
ParticleSystemRendererM c
>c d
(d e
)e f
;f g
public 
override 
void 
FindProperties +
(+ ,
MaterialProperty, <
[< =
]= >

properties? I
)I J
{ 	
base 
. 
FindProperties 
(  

properties  *
)* +
;+ ,

= 
new 
LitGUI  &
.& '

(4 5

properties5 ?
)? @
;@ A

= 
new 
ParticleGUI  +
.+ ,
ParticleProperties, >
(> ?

properties? I
)I J
;J K
} 	
public 
override 
void 
MaterialChanged ,
(, -
Material- 5
material6 >
)> ?
{ 	
if 
( 
material 
== 
null  
)  !
throw 
new !
ArgumentNullException /
(/ 0
$str0 :
): ;
;; <
SetMaterialKeywords 
(  
material  (
,( )
LitGUI* 0
.0 1
SetMaterialKeywords1 D
,D E
ParticleGUIF Q
.Q R
SetMaterialKeywordsR e
)e f
;f g
} 	
public 
override 
void 
DrawSurfaceOptions /
(/ 0
Material0 8
material9 A
)A B
{   	
	EditorGUI"" 
."" 
BeginChangeCheck"" &
(""& '
)""' (
;""( )
{## 
base$$ 
.$$ 
DrawSurfaceOptions$$ '
($$' (
material$$( 0
)$$0 1
;$$1 2
DoPopup%% 
(%% 
ParticleGUI%% #
.%%# $
Styles%%$ *
.%%* +
	colorMode%%+ 4
,%%4 5

.%%C D
	colorMode%%D M
,%%M N
Enum%%O S
.%%S T
GetNames%%T \
(%%\ ]
typeof%%] c
(%%c d
ParticleGUI%%d o
.%%o p
	ColorMode%%p y
)%%y z
)%%z {
)%%{ |
;%%| }
}&& 
if'' 
('' 
	EditorGUI'' 
.'' 
EndChangeCheck'' (
(''( )
)'') *
)''* +
{(( 
foreach)) 
()) 
var)) 
obj))  
in))! #

.))1 2
targets))2 9
)))9 :
MaterialChanged** #
(**# $
(**$ %
Material**% -
)**- .
obj**. 1
)**1 2
;**2 3
}++ 
},, 	
public.. 
override.. 
void.. 
DrawSurfaceInputs.. .
(... /
Material../ 7
material..8 @
)..@ A
{// 	
base00 
.00 
DrawSurfaceInputs00 "
(00" #
material00# +
)00+ ,
;00, -
LitGUI11 
.11 
Inputs11 
(11 

,11' (
materialEditor11) 7
,117 8
material119 A
)11A B
;11B C"
DrawEmissionProperties22 "
(22" #
material22# +
,22+ ,
true22- 1
)221 2
;222 3
}33 	
public55 
override55 
void55 
DrawAdvancedOptions55 0
(550 1
Material551 9
material55: B
)55B C
{66 	
	EditorGUI77 
.77 
BeginChangeCheck77 &
(77& '
)77' (
;77( )
{88 
materialEditor99 
.99 
ShaderProperty99 -
(99- .

.99; <
flipbookMode99< H
,99H I
ParticleGUI99J U
.99U V
Styles99V \
.99\ ]
flipbookMode99] i
)99i j
;99j k
ParticleGUI:: 
.:: 

(::) *
material::* 2
,::2 3
materialEditor::4 B
,::B C

)::Q R
;::R S
ParticleGUI;; 
.;; 
DoVertexStreamsArea;; /
(;;/ 0
material;;0 8
,;;8 9(
m_RenderersUsingThisMaterial;;: V
,;;V W
true;;X \
);;\ ]
;;;] ^
if== 
(== 
	EditorGUI== 
.== 
EndChangeCheck== ,
(==, -
)==- .
)==. /
{>> 
MaterialChanged?? #
(??# $
material??$ ,
)??, -
;??- .
}@@ 
}AA 
DrawQueueOffsetFieldCC  
(CC  !
)CC! "
;CC" #
}DD 	
publicFF 
overrideFF 
voidFF 
	OnOpenGUIFF &
(FF& '
MaterialFF' /
materialFF0 8
,FF8 9
MaterialEditorFF: H
materialEditorFFI W
)FFW X
{GG 	+
CacheRenderersUsingThisMaterialHH +
(HH+ ,
materialHH, 4
)HH4 5
;HH5 6
baseII 
.II 
	OnOpenGUIII 
(II 
materialII #
,II# $
materialEditorII% 3
)II3 4
;II4 5
}JJ 	
voidLL +
CacheRenderersUsingThisMaterialLL
(LL, -
MaterialLL- 5
materialLL6 >
)LL> ?
{MM 	(
m_RenderersUsingThisMaterialNN (
.NN( )
ClearNN) .
(NN. /
)NN/ 0
;NN0 1"
ParticleSystemRendererPP "
[PP" #
]PP# $
	renderersPP% .
=PP/ 0
UnityEnginePP1 <
.PP< =
ObjectPP= C
.PPC D
FindObjectsOfTypePPD U
(PPU V
typeofPPV \
(PP\ ]"
ParticleSystemRendererPP] s
)PPs t
)PPt u
asPPv x#
ParticleSystemRenderer	PPy �
[
PP� �
]
PP� �
;
PP� �
foreachQQ 
(QQ "
ParticleSystemRendererQQ +
rendererQQ, 4
inQQ5 7
	renderersQQ8 A
)QQA B
{RR 
ifSS 
(SS 
rendererSS 
.SS 
sharedMaterialSS +
==SS, .
materialSS/ 7
)SS7 8(
m_RenderersUsingThisMaterialTT 0
.TT0 1
AddTT1 4
(TT4 5
rendererTT5 =
)TT= >
;TT> ?
}UU 
}VV 	
}WW 
}XX �(
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\GUIFramework\SliderAction.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
.= >
GUIFramework> J
{ 
internal 
class
SliderAction 
:  !
ClickAction" -
{ 
private 

SliderData 
m_SliderData '
;' (
public

 
Action

 
<

 
	IGUIState

 
,

  
Control

! (
,

( )
Vector3

* 1
>

1 2


3 @
;

@ A
public 
Action 
< 
	IGUIState 
,  
Control! (
,( )
Vector3* 1
>1 2
onSliderChanged3 B
;B C
public 
Action 
< 
	IGUIState 
,  
Control! (
,( )
Vector3* 1
>1 2
onSliderEnd3 >
;> ?
public 
SliderAction 
( 
Control #
control$ +
)+ ,
:- .
base/ 3
(3 4
control4 ;
,; <
$num= >
,> ?
false@ E
)E F
{ 	
} 	
	protected 
override 
bool 
GetFinishContidtion  3
(3 4
	IGUIState4 =
guiState> F
)F G
{ 	
return 
guiState 
. 
	eventType %
==& (
	EventType) 2
.2 3
MouseUp3 :
&&; =
guiState> F
.F G
mouseButtonG R
==S U
$numV W
;W X
} 	
	protected 
override 
void 
	OnTrigger  )
() *
	IGUIState* 3
guiState4 <
)< =
{ 	
base 
. 
	OnTrigger 
( 
guiState #
)# $
;$ %
m_SliderData 
. 
position !
=" #
hoveredControl$ 2
.2 3

.@ A
positionA I
;I J
m_SliderData 
. 
forward  
=! "
hoveredControl# 1
.1 2

.? @
forward@ G
;G H
m_SliderData 
. 
right 
=  
hoveredControl! /
./ 0

.= >
right> C
;C D
m_SliderData 
. 
up 
= 
hoveredControl ,
., -

.: ;
up; =
;= >
if!! 
(!! 

!=!!  
null!!! %
)!!% &

("" 
guiState"" &
,""& '
hoveredControl""( 6
,""6 7
m_SliderData""8 D
.""D E
position""E M
)""M N
;""N O
}## 	
	protected%% 
override%% 
void%% 
OnFinish%%  (
(%%( )
	IGUIState%%) 2
guiState%%3 ;
)%%; <
{&& 	
if'' 
('' 
onSliderEnd'' 
!='' 
null'' #
)''# $
onSliderEnd(( 
((( 
guiState(( $
,(($ %
hoveredControl((& 4
,((4 5
m_SliderData((6 B
.((B C
position((C K
)((K L
;((L M
guiState** 
.** 
UseCurrentEvent** $
(**$ %
)**% &
;**& '
guiState++ 
.++ 
Repaint++ 
(++ 
)++ 
;++ 
},, 	
	protected.. 
override.. 
void.. 
	OnPerform..  )
(..) *
	IGUIState..* 3
guiState..4 <
)..< =
{// 	
Vector300 
newPosition00 
;00  
var11 
changed11 
=11 
guiState11 "
.11" #
Slider11# )
(11) *
ID11* ,
,11, -
m_SliderData11. :
,11: ;
out11< ?
newPosition11@ K
)11K L
;11L M
if33 
(33 
changed33 
)33 
{44 
m_SliderData55 
.55 
position55 %
=55& '
newPosition55( 3
;553 4
if77 
(77 
onSliderChanged77 #
!=77$ &
null77' +
)77+ ,
onSliderChanged88 #
(88# $
guiState88$ ,
,88, -
hoveredControl88. <
,88< =
newPosition88> I
)88I J
;88J K
}99 
}:: 	
};; 
}<< �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\UniversalAdditionalLightDataEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ "
CanEditMultipleObjects 
] 
[ 
CustomEditor 
( 
typeof 
( (
UniversalAdditionalLightData 5
)5 6
)6 7
]7 8
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
class5 :,
 UniversalAdditionLightDataEditor; [
:\ ]
Editor^ d
{		 
public

 
override

 
void

 
OnInspectorGUI

 +
(

+ ,
)

, -
{ 	
} 	
[ 	
MenuItem	 
( 
$str D
)D E
]E F
static 
void 
RemoveComponent #
(# $
MenuCommand$ /
command0 7
)7 8
{ 	
if 
( 

. 

(+ ,
$str, ?
,? @
$str	A �
,
� �
$str
� �
,
� �
$str
� �
)
� �
)
� �
{ 
Undo 
. "
DestroyObjectImmediate +
(+ ,
command, 3
.3 4
context4 ;
); <
;< =
} 
} 	
} 
} �=
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\Shaders\SimpleLitShader.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
	ShaderGUI* 3
{ 
internal 
class
SimpleLitShader "
:# $

{ 
private		 
SimpleLitGUI		 
.		 
SimpleLitProperties		 0"
shadingModelProperties		1 G
;		G H
public 
override 
void 
FindProperties +
(+ ,
MaterialProperty, <
[< =
]= >

properties? I
)I J
{
base 
. 
FindProperties 
(  

properties  *
)* +
;+ ,"
shadingModelProperties "
=# $
new% (
SimpleLitGUI) 5
.5 6
SimpleLitProperties6 I
(I J

propertiesJ T
)T U
;U V
} 	
public 
override 
void 
MaterialChanged ,
(, -
Material- 5
material6 >
)> ?
{ 	
if 
( 
material 
== 
null  
)  !
throw 
new !
ArgumentNullException /
(/ 0
$str0 :
): ;
;; <
SetMaterialKeywords 
(  
material  (
,( )
SimpleLitGUI* 6
.6 7
SetMaterialKeywords7 J
)J K
;K L
} 	
public 
override 
void 
DrawSurfaceOptions /
(/ 0
Material0 8
material9 A
)A B
{ 	
if 
( 
material 
== 
null  
)  !
throw 
new !
ArgumentNullException /
(/ 0
$str0 :
): ;
;; <
EditorGUIUtility"" 
."" 

labelWidth"" '
=""( )
$num""* ,
;"", -
	EditorGUI%% 
.%% 
BeginChangeCheck%% &
(%%& '
)%%' (
;%%( )
{&& 
base'' 
.'' 
DrawSurfaceOptions'' '
(''' (
material''( 0
)''0 1
;''1 2
}(( 
if)) 
()) 
	EditorGUI)) 
.)) 
EndChangeCheck)) (
())( )
)))) *
)))* +
{** 
foreach++ 
(++ 
var++ 
obj++  
in++! #

.++1 2
targets++2 9
)++9 :
MaterialChanged,, #
(,,# $
(,,$ %
Material,,% -
),,- .
obj,,. 1
),,1 2
;,,2 3
}-- 
}.. 	
public11 
override11 
void11 
DrawSurfaceInputs11 .
(11. /
Material11/ 7
material118 @
)11@ A
{22 	
base33 
.33 
DrawSurfaceInputs33 "
(33" #
material33# +
)33+ ,
;33, -
SimpleLitGUI44 
.44 
Inputs44 
(44  "
shadingModelProperties44  6
,446 7
materialEditor448 F
,44F G
material44H P
)44P Q
;44Q R"
DrawEmissionProperties55 "
(55" #
material55# +
,55+ ,
true55- 1
)551 2
;552 3
DrawTileOffset66 
(66 
materialEditor66 )
,66) *
baseMapProp66+ 6
)666 7
;667 8
}77 	
public99 
override99 
void99 
DrawAdvancedOptions99 0
(990 1
Material991 9
material99: B
)99B C
{:: 	
SimpleLitGUI;; 
.;; 
Advanced;; !
(;;! ""
shadingModelProperties;;" 8
);;8 9
;;;9 :
base<< 
.<< 
DrawAdvancedOptions<< $
(<<$ %
material<<% -
)<<- .
;<<. /
}== 	
public?? 
override?? 
void?? %
AssignNewShaderToMaterial?? 6
(??6 7
Material??7 ?
material??@ H
,??H I
Shader??J P
	oldShader??Q Z
,??Z [
Shader??\ b
	newShader??c l
)??l m
{@@ 	
ifAA 
(AA 
materialAA 
==AA 
nullAA  
)AA  !
throwBB 
newBB !
ArgumentNullExceptionBB /
(BB/ 0
$strBB0 :
)BB: ;
;BB; <
ifFF 
(FF 
materialFF 
.FF 
HasPropertyFF $
(FF$ %
$strFF% 0
)FF0 1
)FF1 2
{GG 
materialHH 
.HH 
SetColorHH !
(HH! "
$strHH" 2
,HH2 3
materialHH4 <
.HH< =
GetColorHH= E
(HHE F
$strHHF Q
)HHQ R
)HHR S
;HHS T
}II 
baseKK 
.KK %
AssignNewShaderToMaterialKK *
(KK* +
materialKK+ 3
,KK3 4
	oldShaderKK5 >
,KK> ?
	newShaderKK@ I
)KKI J
;KKJ K
ifMM 
(MM 
	oldShaderMM 
==MM 
nullMM !
||MM" $
!MM% &
	oldShaderMM& /
.MM/ 0
nameMM0 4
.MM4 5
ContainsMM5 =
(MM= >
$strMM> O
)MMO P
)MMP Q
{NN 
SetupMaterialBlendModeOO &
(OO& '
materialOO' /
)OO/ 0
;OO0 1
returnPP 
;PP 
}QQ 
SurfaceTypeSS 
surfaceTypeSS #
=SS$ %
SurfaceTypeSS& 1
.SS1 2
OpaqueSS2 8
;SS8 9
	BlendModeTT 
	blendModeTT 
=TT  !
	BlendModeTT" +
.TT+ ,
AlphaTT, 1
;TT1 2
ifUU 
(UU 
	oldShaderUU 
.UU 
nameUU 
.UU 
ContainsUU '
(UU' (
$strUU( >
)UU> ?
)UU? @
{VV 
surfaceTypeWW 
=WW 
SurfaceTypeWW )
.WW) *
OpaqueWW* 0
;WW0 1
materialXX 
.XX 
SetFloatXX !
(XX! "
$strXX" .
,XX. /
$numXX0 1
)XX1 2
;XX2 3
}YY 
elseZZ 
ifZZ 
(ZZ 
	oldShaderZZ 
.ZZ 
nameZZ #
.ZZ# $
ContainsZZ$ ,
(ZZ, -
$strZZ- <
)ZZ< =
)ZZ= >
{[[ 
surfaceType^^ 
=^^ 
SurfaceType^^ )
.^^) *
Transparent^^* 5
;^^5 6
	blendMode__ 
=__ 
	BlendMode__ %
.__% &
Alpha__& +
;__+ ,
}`` 
materialaa 
.aa 
SetFloataa 
(aa 
$straa (
,aa( )
(aa* +
floataa+ 0
)aa0 1
surfaceTypeaa1 <
)aa< =
;aa= >
materialbb 
.bb 
SetFloatbb 
(bb 
$strbb &
,bb& '
(bb( )
floatbb) .
)bb. /
	blendModebb/ 8
)bb8 9
;bb9 :
MaterialChangeddd 
(dd 
materialdd $
)dd$ %
;dd% &
}ee 	
}ff 
}gg �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\Selection\IndexedSelection.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
[ 
Serializable 
] 
internal		 
class		
IndexedSelection		 #
:		$ %!
SerializableSelection		& ;
<		; <
int		< ?
>		? @
{

 
	protected 
override 
int 
GetInvalidElement 0
(0 1
)1 2
{3 4
return5 ;
-< =
$num= >
;> ?
}@ A
} 
}
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Overrides\ColorCurvesEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[		 !
VolumeComponentEditor		 
(		 
typeof		 !
(		! "
ColorCurves		" -
)		- .
)		. /
]		/ 0
sealed

 

class

 
ColorCurvesEditor

 "
:

# $!
VolumeComponentEditor

% :
{ #
SerializedDataParameter 
m_Master  (
;( )#
SerializedDataParameter
m_Red
;
SerializedDataParameter 
m_Green  '
;' (#
SerializedDataParameter 
m_Blue  &
;& '#
SerializedDataParameter 

m_HueVsHue  *
;* +#
SerializedDataParameter 

m_HueVsSat  *
;* +#
SerializedDataParameter 

m_SatVsSat  *
;* +#
SerializedDataParameter 

m_LumVsSat  *
;* +
SerializedProperty 
m_RawMaster &
;& '
SerializedProperty 
m_RawRed #
;# $
SerializedProperty 

m_RawGreen %
;% &
SerializedProperty 
	m_RawBlue $
;$ %
SerializedProperty 

;( )
SerializedProperty 

;( )
SerializedProperty 

;( )
SerializedProperty   

;  ( ) 
InspectorCurveEditor"" 

;""* +

Dictionary## 
<## 
SerializedProperty## %
,##% &
Color##' ,
>##, -
m_CurveDict##. 9
;##9 :
static$$ 
Material$$ 
s_MaterialGrid$$ &
;$$& '
static&& 
GUIStyle&& 

s_PreLabel&& "
;&&" #
static(( 

GUIContent(( 
[(( 
](( 
s_Curves(( $
=((% &
{)) 	
new** 

GUIContent** 
(** 
$str** #
)**# $
,**$ %
new++ 

GUIContent++ 
(++ 
$str++  
)++  !
,++! "
new,, 

GUIContent,, 
(,, 
$str,, "
),," #
,,,# $
new-- 

GUIContent-- 
(-- 
$str-- !
)--! "
,--" #
new.. 

GUIContent.. 
(.. 
$str.. '
)..' (
,..( )
new// 

GUIContent// 
(// 
$str// '
)//' (
,//( )
new00 

GUIContent00 
(00 
$str00 '
)00' (
,00( )
new11 

GUIContent11 
(11 
$str11 '
)11' (
}22 	
;22	 

SavedInt44 
m_SelectedCurve44  
;44  !
public66 
override66 
void66 
OnEnable66 %
(66% &
)66& '
{77 	
var88 
o88 
=88 
new88 
PropertyFetcher88 '
<88' (
ColorCurves88( 3
>883 4
(884 5
serializedObject885 E
)88E F
;88F G
m_Master:: 
=:: 
Unpack:: 
(:: 
o:: 
.::  
Find::  $
(::$ %
x::% &
=>::' )
x::* +
.::+ ,
master::, 2
)::2 3
)::3 4
;::4 5
m_Red;; 
=;; 
Unpack;; 
(;; 
o;; 
.;; 
Find;; !
(;;! "
x;;" #
=>;;$ &
x;;' (
.;;( )
red;;) ,
);;, -
);;- .
;;;. /
m_Green<< 
=<< 
Unpack<< 
(<< 
o<< 
.<< 
Find<< #
(<<# $
x<<$ %
=><<& (
x<<) *
.<<* +
green<<+ 0
)<<0 1
)<<1 2
;<<2 3
m_Blue== 
=== 
Unpack== 
(== 
o== 
.== 
Find== "
(==" #
x==# $
=>==% '
x==( )
.==) *
blue==* .
)==. /
)==/ 0
;==0 1

m_HueVsHue?? 
=?? 
Unpack?? 
(??  
o??  !
.??! "
Find??" &
(??& '
x??' (
=>??) +
x??, -
.??- .
hueVsHue??. 6
)??6 7
)??7 8
;??8 9

m_HueVsSat@@ 
=@@ 
Unpack@@ 
(@@  
o@@  !
.@@! "
Find@@" &
(@@& '
x@@' (
=>@@) +
x@@, -
.@@- .
hueVsSat@@. 6
)@@6 7
)@@7 8
;@@8 9

m_SatVsSatAA 
=AA 
UnpackAA 
(AA  
oAA  !
.AA! "
FindAA" &
(AA& '
xAA' (
=>AA) +
xAA, -
.AA- .
satVsSatAA. 6
)AA6 7
)AA7 8
;AA8 9

m_LumVsSatBB 
=BB 
UnpackBB 
(BB  
oBB  !
.BB! "
FindBB" &
(BB& '
xBB' (
=>BB) +
xBB, -
.BB- .
lumVsSatBB. 6
)BB6 7
)BB7 8
;BB8 9
m_RawMasterDD 
=DD 
oDD 
.DD 
FindDD  
(DD  !
$strDD! 9
)DD9 :
;DD: ;
m_RawRedEE 
=EE 
oEE 
.EE 
FindEE 
(EE 
$strEE 3
)EE3 4
;EE4 5

m_RawGreenFF 
=FF 
oFF 
.FF 
FindFF 
(FF  
$strFF  7
)FF7 8
;FF8 9
	m_RawBlueGG 
=GG 
oGG 
.GG 
FindGG 
(GG 
$strGG 5
)GG5 6
;GG6 7

=II 
oII 
.II 
FindII "
(II" #
$strII# =
)II= >
;II> ?

=JJ 
oJJ 
.JJ 
FindJJ "
(JJ" #
$strJJ# =
)JJ= >
;JJ> ?

=KK 
oKK 
.KK 
FindKK "
(KK" #
$strKK# =
)KK= >
;KK> ?

=LL 
oLL 
.LL 
FindLL "
(LL" #
$strLL# =
)LL= >
;LL> ?
m_SelectedCurveNN 
=NN 
newNN !
SavedIntNN" *
(NN* +
$"NN+ -
{NN- .
targetNN. 4
.NN4 5
GetTypeNN5 <
(NN< =
)NN= >
}NN> ?
.SelectedCurveNN? M
"NNM N
,NNN O
$numNNP Q
)NNQ R
;NNR S

=QQ 
newQQ  
InspectorCurveEditorQQ  4
(QQ4 5
)QQ5 6
;QQ6 7
m_CurveDictRR 
=RR 
newRR 

DictionaryRR (
<RR( )
SerializedPropertyRR) ;
,RR; <
ColorRR= B
>RRB C
(RRC D
)RRD E
;RRE F

SetupCurveTT 
(TT 
m_RawMasterTT "
,TT" #
newTT$ '
ColorTT( -
(TT- .
$numTT. 0
,TT0 1
$numTT2 4
,TT4 5
$numTT6 8
)TT8 9
,TT9 :
$numTT; <
,TT< =
falseTT> C
)TTC D
;TTD E

SetupCurveUU 
(UU 
m_RawRedUU 
,UU  
newUU! $
ColorUU% *
(UU* +
$numUU+ -
,UU- .
$numUU/ 1
,UU1 2
$numUU3 5
)UU5 6
,UU6 7
$numUU8 9
,UU9 :
falseUU; @
)UU@ A
;UUA B

SetupCurveVV 
(VV 

m_RawGreenVV !
,VV! "
newVV# &
ColorVV' ,
(VV, -
$numVV- /
,VV/ 0
$numVV1 3
,VV3 4
$numVV5 7
)VV7 8
,VV8 9
$numVV: ;
,VV; <
falseVV= B
)VVB C
;VVC D

SetupCurveWW 
(WW 
	m_RawBlueWW  
,WW  !
newWW" %
ColorWW& +
(WW+ ,
$numWW, .
,WW. /
$numWW0 4
,WW4 5
$numWW6 8
)WW8 9
,WW9 :
$numWW; <
,WW< =
falseWW> C
)WWC D
;WWD E

SetupCurveXX 
(XX 

,XX$ %
newXX& )
ColorXX* /
(XX/ 0
$numXX0 2
,XX2 3
$numXX4 6
,XX6 7
$numXX8 :
)XX: ;
,XX; <
$numXX= >
,XX> ?
trueXX@ D
)XXD E
;XXE F

SetupCurveYY 
(YY 

,YY$ %
newYY& )
ColorYY* /
(YY/ 0
$numYY0 2
,YY2 3
$numYY4 6
,YY6 7
$numYY8 :
)YY: ;
,YY; <
$numYY= >
,YY> ?
trueYY@ D
)YYD E
;YYE F

SetupCurveZZ 
(ZZ 

,ZZ$ %
newZZ& )
ColorZZ* /
(ZZ/ 0
$numZZ0 2
,ZZ2 3
$numZZ4 6
,ZZ6 7
$numZZ8 :
)ZZ: ;
,ZZ; <
$numZZ= >
,ZZ> ?
falseZZ@ E
)ZZE F
;ZZF G

SetupCurve[[ 
([[ 

,[[$ %
new[[& )
Color[[* /
([[/ 0
$num[[0 2
,[[2 3
$num[[4 6
,[[6 7
$num[[8 :
)[[: ;
,[[; <
$num[[= >
,[[> ?
false[[@ E
)[[E F
;[[F G
}\\ 	
void^^ 

SetupCurve^^
(^^ 
SerializedProperty^^ *
prop^^+ /
,^^/ 0
Color^^1 6
color^^7 <
,^^< =
uint^^> B

,^^P Q
bool^^R V
loop^^W [
)^^[ \
{__ 	
var`` 
state`` 
=`` 

CurveState`` "
.``" #
defaultState``# /
;``/ 0
stateaa 
.aa 
coloraa 
=aa 
coloraa 
;aa  
statebb 
.bb 
visiblebb 
=bb 
falsebb !
;bb! "
statecc 
.cc 

=cc  !

;cc/ 0
statedd 
.dd &
onlyShowHandlesOnSelectiondd ,
=dd- .
truedd/ 3
;dd3 4
stateee 
.ee  
zeroKeyConstantValueee &
=ee' (
$numee) -
;ee- .
stateff 
.ff 
loopInBoundsff 
=ff  
loopff! %
;ff% &

.gg 
Addgg 
(gg 
propgg "
,gg" #
stategg$ )
)gg) *
;gg* +
m_CurveDicthh 
.hh 
Addhh 
(hh 
prophh  
,hh  !
colorhh" '
)hh' (
;hh( )
}ii 	
voidkk 
ResetVisibleCurveskk
(kk  
)kk  !
{ll 	
foreachmm 
(mm 
varmm 
curvemm 
inmm !
m_CurveDictmm" -
)mm- .
{nn 
varoo 
stateoo 
=oo 

.oo) *

(oo7 8
curveoo8 =
.oo= >
Keyoo> A
)ooA B
;ooB C
statepp 
.pp 
visiblepp 
=pp 
falsepp  %
;pp% &

.qq 

(qq+ ,
curveqq, 1
.qq1 2
Keyqq2 5
,qq5 6
stateqq7 <
)qq< =
;qq= >
}rr 
}ss 	
voiduu 
SetCurveVisibleuu
(uu 
SerializedPropertyuu /
rawPropuu0 7
,uu7 8
SerializedPropertyuu9 K
overridePropuuL X
)uuX Y
{vv 	
varww 
stateww 
=ww 

.ww% &

(ww3 4
rawPropww4 ;
)ww; <
;ww< =
statexx 
.xx 
visiblexx 
=xx 
truexx  
;xx  !
stateyy 
.yy 
editableyy 
=yy 
overridePropyy )
.yy) *
	boolValueyy* 3
;yy3 4

.zz 

(zz' (
rawPropzz( /
,zz/ 0
statezz1 6
)zz6 7
;zz7 8
}{{ 	
void}} 
CurveOverrideToggle}}
(}}  !
SerializedProperty}}! 3
overrideProp}}4 @
)}}@ A
{~~ 	
overrideProp 
. 
	boolValue "
=# $
	GUILayout% .
.. /
Toggle/ 5
(5 6
overrideProp6 B
.B C
	boolValueC L
,L M
EditorGUIUtilityN ^
.^ _

(l m
$strm w
)w x
,x y
EditorStyles	z �
.
� �

� �
)
� �
;
� �
}
�� 	
int
�� #
DoCurveSelectionPopup
�� !
(
��! "
int
��" %
id
��& (
)
��( )
{
�� 	
	GUILayout
�� 
.
�� 
Label
�� 
(
�� 
s_Curves
�� $
[
��$ %
id
��% '
]
��' (
,
��( )
EditorStyles
��* 6
.
��6 7
toolbarPopup
��7 C
,
��C D
	GUILayout
��E N
.
��N O
MaxWidth
��O W
(
��W X
$num
��X \
)
��\ ]
)
��] ^
;
��^ _
var
�� 
lastRect
�� 
=
�� 
GUILayoutUtility
�� +
.
��+ ,
GetLastRect
��, 7
(
��7 8
)
��8 9
;
��9 :
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
	MouseDown
��$ -
&&
��. 0
e
��1 2
.
��2 3
button
��3 9
==
��: <
$num
��= >
&&
��? A
lastRect
��B J
.
��J K
Contains
��K S
(
��S T
e
��T U
.
��U V

��V c
)
��c d
)
��d e
{
�� 
var
�� 
menu
�� 
=
�� 
new
�� 
GenericMenu
�� *
(
��* +
)
��+ ,
;
��, -
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
s_Curves
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
�� 
i
�� 
==
�� 
$num
�� 
)
�� 
menu
�� 
.
�� 
AddSeparator
�� )
(
��) *
$str
��* ,
)
��, -
;
��- .
int
�� 
current
�� 
=
��  !
i
��" #
;
��# $
menu
�� 
.
�� 
AddItem
��  
(
��  !
s_Curves
��! )
[
��) *
i
��* +
]
��+ ,
,
��, -
current
��. 5
==
��6 8
id
��9 ;
,
��; <
(
��= >
)
��> ?
=>
��@ B
{
�� 
m_SelectedCurve
�� '
.
��' (
value
��( -
=
��. /
current
��0 7
;
��7 8
serializedObject
�� (
.
��( )%
ApplyModifiedProperties
��) @
(
��@ A
)
��A B
;
��B C
}
�� 
)
�� 
;
�� 
}
�� 
menu
�� 
.
�� 
DropDown
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
lastRect
��' /
.
��/ 0
xMin
��0 4
,
��4 5
lastRect
��6 >
.
��> ?
yMax
��? C
,
��C D
$num
��E G
,
��G H
$num
��I K
)
��K L
)
��L M
;
��M N
}
�� 
return
�� 
id
�� 
;
�� 
}
�� 	
void
�� #
DrawBackgroundTexture
��
(
��" #
Rect
��# '
rect
��( ,
,
��, -
int
��. 1
pass
��2 6
)
��6 7
{
�� 	
if
�� 
(
�� 
s_MaterialGrid
�� 
==
�� !
null
��" &
)
��& '
s_MaterialGrid
�� 
=
��  
new
��! $
Material
��% -
(
��- .
Shader
��. 4
.
��4 5
Find
��5 9
(
��9 :
$str
��: s
)
��s t
)
��t u
{
��v w
	hideFlags��x �
=��� �
	HideFlags��� �
.��� �
HideAndDontSave��� �
}��� �
;��� �
float
�� 
scale
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
pixelsPerPoint
��+ 9
;
��9 :
var
�� 
oldRt
�� 
=
�� 

�� %
.
��% &
active
��& ,
;
��, -
var
�� 
rt
�� 
=
�� 

�� "
.
��" #
GetTemporary
��# /
(
��/ 0
Mathf
��0 5
.
��5 6
	CeilToInt
��6 ?
(
��? @
rect
��@ D
.
��D E
width
��E J
*
��K L
scale
��M R
)
��R S
,
��S T
Mathf
��U Z
.
��Z [
	CeilToInt
��[ d
(
��d e
rect
��e i
.
��i j
height
��j p
*
��q r
scale
��s x
)
��x y
,
��y z
$num
��{ |
,
��| }"
RenderTextureFormat��~ �
.��� �
ARGB32��� �
,��� �&
RenderTextureReadWrite��� �
.��� �
sRGB��� �
)��� �
;��� �
s_MaterialGrid
�� 
.
�� 
SetFloat
�� #
(
��# $
$str
��$ 4
,
��4 5
GUI
��6 9
.
��9 :
enabled
��: A
?
��B C
$num
��D F
:
��G H
$num
��I M
)
��M N
;
��N O
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� 
,
�� 
rt
��  "
,
��" #
s_MaterialGrid
��$ 2
,
��2 3
pass
��4 8
)
��8 9
;
��9 :

�� 
.
�� 
active
��  
=
��! "
oldRt
��# (
;
��( )
GUI
�� 
.
�� 
DrawTexture
�� 
(
�� 
rect
��  
,
��  !
rt
��" $
)
��$ %
;
��% &

�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
void
�� %
MarkTextureCurveAsDirty
��
(
��$ %
int
��% (
curveId
��) 0
)
��0 1
{
�� 	
var
�� 
t
�� 
=
�� 
target
�� 
as
�� 
ColorCurves
�� )
;
��) *
if
�� 
(
�� 
t
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
switch
�� 
(
�� 
curveId
�� 
)
�� 
{
�� 
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
master
��  
.
��  !
value
��! &
.
��& '
SetDirty
��' /
(
��/ 0
)
��0 1
;
��1 2
break
��3 8
;
��8 9
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
red
�� 
.
�� 
value
�� #
.
��# $
SetDirty
��$ ,
(
��, -
)
��- .
;
��. /
break
��0 5
;
��5 6
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
green
�� 
.
��  
value
��  %
.
��% &
SetDirty
��& .
(
��. /
)
��/ 0
;
��0 1
break
��2 7
;
��7 8
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
blue
�� 
.
�� 
value
�� $
.
��$ %
SetDirty
��% -
(
��- .
)
��. /
;
��/ 0
break
��1 6
;
��6 7
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
hueVsHue
�� "
.
��" #
value
��# (
.
��( )
SetDirty
��) 1
(
��1 2
)
��2 3
;
��3 4
break
��5 :
;
��: ;
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
hueVsSat
�� "
.
��" #
value
��# (
.
��( )
SetDirty
��) 1
(
��1 2
)
��2 3
;
��3 4
break
��5 :
;
��: ;
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
satVsSat
�� "
.
��" #
value
��# (
.
��( )
SetDirty
��) 1
(
��1 2
)
��2 3
;
��3 4
break
��5 :
;
��: ;
case
�� 
$num
�� 
:
�� 
t
�� 
.
�� 
lumVsSat
�� "
.
��" #
value
��# (
.
��( )
SetDirty
��) 1
(
��1 2
)
��2 3
;
��3 4
break
��5 :
;
��: ;
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
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
ResetVisibleCurves
�� 
(
�� 
)
��  
;
��  !
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  ! 
DisabledGroupScope
��! 3
(
��3 4
serializedObject
��4 D
.
��D E&
isEditingMultipleObjects
��E ]
)
��] ^
)
��^ _
{
�� 
int
�� 
curveEditingId
�� "
;
��" # 
SerializedProperty
�� "!
currentCurveRawProp
��# 6
=
��7 8
null
��9 =
;
��= >
using
�� 
(
�� 
new
�� 
	GUILayout
�� $
.
��$ %
HorizontalScope
��% 4
(
��4 5
EditorStyles
��5 A
.
��A B
toolbar
��B I
)
��I J
)
��J K
{
�� 
curveEditingId
�� "
=
��# $#
DoCurveSelectionPopup
��% :
(
��: ;
m_SelectedCurve
��; J
.
��J K
value
��K P
)
��P Q
;
��Q R
curveEditingId
�� "
=
��# $
Mathf
��% *
.
��* +
Clamp
��+ 0
(
��0 1
curveEditingId
��1 ?
,
��? @
$num
��A B
,
��B C
$num
��D E
)
��E F
;
��F G
EditorGUILayout
�� #
.
��# $
Space
��$ )
(
��) *
)
��* +
;
��+ ,
switch
�� 
(
�� 
curveEditingId
�� *
)
��* +
{
�� 
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0
m_Master
��0 8
.
��8 9

��9 F
)
��F G
;
��G H
SetCurveVisible
�� +
(
��+ ,
m_RawMaster
��, 7
,
��7 8
m_Master
��9 A
.
��A B

��B O
)
��O P
;
��P Q!
currentCurveRawProp
�� /
=
��0 1
m_RawMaster
��2 =
;
��= >
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0
m_Red
��0 5
.
��5 6

��6 C
)
��C D
;
��D E
SetCurveVisible
�� +
(
��+ ,
m_RawRed
��, 4
,
��4 5
m_Red
��6 ;
.
��; <

��< I
)
��I J
;
��J K!
currentCurveRawProp
�� /
=
��0 1
m_RawRed
��2 :
;
��: ;
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0
m_Green
��0 7
.
��7 8

��8 E
)
��E F
;
��F G
SetCurveVisible
�� +
(
��+ ,

m_RawGreen
��, 6
,
��6 7
m_Green
��8 ?
.
��? @

��@ M
)
��M N
;
��N O!
currentCurveRawProp
�� /
=
��0 1

m_RawGreen
��2 <
;
��< =
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0
m_Blue
��0 6
.
��6 7

��7 D
)
��D E
;
��E F
SetCurveVisible
�� +
(
��+ ,
	m_RawBlue
��, 5
,
��5 6
m_Blue
��7 =
.
��= >

��> K
)
��K L
;
��L M!
currentCurveRawProp
�� /
=
��0 1
	m_RawBlue
��2 ;
;
��; <
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0

m_HueVsHue
��0 :
.
��: ;

��; H
)
��H I
;
��I J
SetCurveVisible
�� +
(
��+ ,

��, 9
,
��9 :

m_HueVsHue
��; E
.
��E F

��F S
)
��S T
;
��T U!
currentCurveRawProp
�� /
=
��0 1

��2 ?
;
��? @
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0

m_HueVsSat
��0 :
.
��: ;

��; H
)
��H I
;
��I J
SetCurveVisible
�� +
(
��+ ,

��, 9
,
��9 :

m_HueVsSat
��; E
.
��E F

��F S
)
��S T
;
��T U!
currentCurveRawProp
�� /
=
��0 1

��2 ?
;
��? @
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0

m_SatVsSat
��0 :
.
��: ;

��; H
)
��H I
;
��I J
SetCurveVisible
�� +
(
��+ ,

��, 9
,
��9 :

m_SatVsSat
��; E
.
��E F

��F S
)
��S T
;
��T U!
currentCurveRawProp
�� /
=
��0 1

��2 ?
;
��? @
break
�� !
;
��! "
case
�� 
$num
�� 
:
�� !
CurveOverrideToggle
�� /
(
��/ 0

m_LumVsSat
��0 :
.
��: ;

��; H
)
��H I
;
��I J
SetCurveVisible
�� +
(
��+ ,

��, 9
,
��9 :

m_LumVsSat
��; E
.
��E F

��F S
)
��S T
;
��T U!
currentCurveRawProp
�� /
=
��0 1

��2 ?
;
��? @
break
�� !
;
��! "
}
�� 
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
��- .
if
�� 
(
�� 
	GUILayout
�� !
.
��! "
Button
��" (
(
��( )
$str
��) 0
,
��0 1
EditorStyles
��2 >
.
��> ?

��? L
)
��L M
)
��M N
{
�� %
MarkTextureCurveAsDirty
�� /
(
��/ 0
curveEditingId
��0 >
)
��> ?
;
��? @
switch
�� 
(
��  
curveEditingId
��  .
)
��. /
{
�� 
case
��  
$num
��! "
:
��" #
m_RawMaster
��$ /
.
��/ 0!
animationCurveValue
��0 C
=
��D E
AnimationCurve
��F T
.
��T U
Linear
��U [
(
��[ \
$num
��\ ^
,
��^ _
$num
��` b
,
��b c
$num
��d f
,
��f g
$num
��h j
)
��j k
;
��k l
break
��m r
;
��r s
case
��  
$num
��! "
:
��" #
m_RawRed
��$ ,
.
��, -!
animationCurveValue
��- @
=
��A B
AnimationCurve
��C Q
.
��Q R
Linear
��R X
(
��X Y
$num
��Y [
,
��[ \
$num
��] _
,
��_ `
$num
��a c
,
��c d
$num
��e g
)
��g h
;
��h i
break
��j o
;
��o p
case
��  
$num
��! "
:
��" #

m_RawGreen
��$ .
.
��. /!
animationCurveValue
��/ B
=
��C D
AnimationCurve
��E S
.
��S T
Linear
��T Z
(
��Z [
$num
��[ ]
,
��] ^
$num
��_ a
,
��a b
$num
��c e
,
��e f
$num
��g i
)
��i j
;
��j k
break
��l q
;
��q r
case
��  
$num
��! "
:
��" #
	m_RawBlue
��$ -
.
��- .!
animationCurveValue
��. A
=
��B C
AnimationCurve
��D R
.
��R S
Linear
��S Y
(
��Y Z
$num
��Z \
,
��\ ]
$num
��^ `
,
��` a
$num
��b d
,
��d e
$num
��f h
)
��h i
;
��i j
break
��k p
;
��p q
case
��  
$num
��! "
:
��" #

��$ 1
.
��1 2!
animationCurveValue
��2 E
=
��F G
new
��H K
AnimationCurve
��L Z
(
��Z [
)
��[ \
;
��\ ]
break
��^ c
;
��c d
case
��  
$num
��! "
:
��" #

��$ 1
.
��1 2!
animationCurveValue
��2 E
=
��F G
new
��H K
AnimationCurve
��L Z
(
��Z [
)
��[ \
;
��\ ]
break
��^ c
;
��c d
case
��  
$num
��! "
:
��" #

��$ 1
.
��1 2!
animationCurveValue
��2 E
=
��F G
new
��H K
AnimationCurve
��L Z
(
��Z [
)
��[ \
;
��\ ]
break
��^ c
;
��c d
case
��  
$num
��! "
:
��" #

��$ 1
.
��1 2!
animationCurveValue
��2 E
=
��F G
new
��H K
AnimationCurve
��L Z
(
��Z [
)
��[ \
;
��\ ]
break
��^ c
;
��c d
}
�� 
}
�� 
m_SelectedCurve
�� #
.
��# $
value
��$ )
=
��* +
curveEditingId
��, :
;
��: ;
}
�� 
var
�� 
rect
�� 
=
�� 
GUILayoutUtility
�� +
.
��+ ,

��, 9
(
��9 :
$num
��: <
)
��< =
;
��= >
var
�� 
	innerRect
�� 
=
�� 
new
��  #

RectOffset
��$ .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 9
,
��9 :
$num
��; =
)
��= >
.
��> ?
Remove
��? E
(
��E F
rect
��F J
)
��J K
;
��K L
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
Repaint
��4 ;
)
��; <
{
�� 
	EditorGUI
�� 
.
�� 
DrawRect
�� &
(
��& '
rect
��' +
,
��+ ,
new
��- 0
Color
��1 6
(
��6 7
$num
��7 <
,
��< =
$num
��> C
,
��C D
$num
��E J
,
��J K
$num
��L N
)
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
curveEditingId
�� &
==
��' )
$num
��* +
||
��, .
curveEditingId
��/ =
==
��> @
$num
��A B
)
��B C#
DrawBackgroundTexture
�� -
(
��- .
	innerRect
��. 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
else
�� 
if
�� 
(
�� 
curveEditingId
�� +
==
��, .
$num
��/ 0
||
��1 3
curveEditingId
��4 B
==
��C E
$num
��F G
)
��G H#
DrawBackgroundTexture
�� -
(
��- .
	innerRect
��. 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
Handles
�� 
.
�� 
color
�� !
=
��" #
Color
��$ )
.
��) *
white
��* /
*
��0 1
(
��2 3
GUI
��3 6
.
��6 7
enabled
��7 >
?
��? @
$num
��A C
:
��D E
$num
��F J
)
��J K
;
��K L
Handles
�� 
.
�� +
DrawSolidRectangleWithOutline
�� 9
(
��9 :
	innerRect
��: C
,
��C D
Color
��E J
.
��J K
clear
��K P
,
��P Q
new
��R U
Color
��V [
(
��[ \
$num
��\ `
,
��` a
$num
��b f
,
��f g
$num
��h l
,
��l m
$num
��n r
)
��r s
)
��s t
;
��t u
Handles
�� 
.
�� 
color
�� !
=
��" #
new
��$ '
Color
��( -
(
��- .
$num
��. 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: ?
)
��? @
;
��@ A
int
�� 
hLines
�� 
=
��  
(
��! "
int
��" %
)
��% &
Mathf
��& +
.
��+ ,
Sqrt
��, 0
(
��0 1
	innerRect
��1 :
.
��: ;
width
��; @
)
��@ A
;
��A B
int
�� 
vLines
�� 
=
��  
(
��! "
int
��" %
)
��% &
(
��& '
hLines
��' -
/
��. /
(
��0 1
	innerRect
��1 :
.
��: ;
width
��; @
/
��A B
	innerRect
��C L
.
��L M
height
��M S
)
��S T
)
��T U
;
��U V
int
�� 

gridOffset
�� "
=
��# $
Mathf
��% *
.
��* +

FloorToInt
��+ 5
(
��5 6
	innerRect
��6 ?
.
��? @
width
��@ E
/
��F G
hLines
��H N
)
��N O
;
��O P
int
�� 
gridPadding
�� #
=
��$ %
(
��& '
(
��' (
int
��( +
)
��+ ,
(
��, -
	innerRect
��- 6
.
��6 7
width
��7 <
)
��< =
%
��> ?
hLines
��@ F
)
��F G
/
��H I
$num
��J K
;
��K L
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
��& '
hLines
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
offset
�� "
=
��# $
i
��% &
*
��' (
Vector2
��) 0
.
��0 1
right
��1 6
*
��7 8

gridOffset
��9 C
;
��C D
offset
�� 
.
�� 
x
��  
+=
��! #
gridPadding
��$ /
;
��/ 0
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
	innerRect
��) 2
.
��2 3
position
��3 ;
+
��< =
offset
��> D
,
��D E
new
��F I
Vector2
��J Q
(
��Q R
	innerRect
��R [
.
��[ \
x
��\ ]
,
��] ^
	innerRect
��_ h
.
��h i
yMax
��i m
-
��n o
$num
��p q
)
��q r
+
��s t
offset
��u {
)
��{ |
;
��| }
}
�� 

gridOffset
�� 
=
��  
Mathf
��! &
.
��& '

FloorToInt
��' 1
(
��1 2
	innerRect
��2 ;
.
��; <
height
��< B
/
��C D
vLines
��E K
)
��K L
;
��L M
gridPadding
�� 
=
��  !
(
��" #
(
��# $
int
��$ '
)
��' (
(
��( )
	innerRect
��) 2
.
��2 3
height
��3 9
)
��9 :
%
��; <
vLines
��= C
)
��C D
/
��E F
$num
��G H
;
��H I
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
��& '
vLines
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
offset
�� "
=
��# $
i
��% &
*
��' (
Vector2
��) 0
.
��0 1
up
��1 3
*
��4 5

gridOffset
��6 @
;
��@ A
offset
�� 
.
�� 
y
��  
+=
��! #
gridPadding
��$ /
;
��/ 0
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
	innerRect
��) 2
.
��2 3
position
��3 ;
+
��< =
offset
��> D
,
��D E
new
��F I
Vector2
��J Q
(
��Q R
	innerRect
��R [
.
��[ \
xMax
��\ `
-
��a b
$num
��c d
,
��d e
	innerRect
��f o
.
��o p
y
��p q
)
��q r
+
��s t
offset
��u {
)
��{ |
;
��| }
}
�� 
}
�� 
using
�� 
(
�� 
new
�� 
GUI
�� 
.
�� 
	ClipScope
�� (
(
��( )
	innerRect
��) 2
)
��2 3
)
��3 4
{
�� 
if
�� 
(
�� 

�� %
.
��% &
OnGUI
��& +
(
��+ ,
new
��, /
Rect
��0 4
(
��4 5
$num
��5 6
,
��6 7
$num
��8 9
,
��9 :
	innerRect
��; D
.
��D E
width
��E J
-
��K L
$num
��M N
,
��N O
	innerRect
��P Y
.
��Y Z
height
��Z `
-
��a b
$num
��c d
)
��d e
)
��e f
)
��f g
{
�� 
Repaint
�� 
(
��  
)
��  !
;
��! "
GUI
�� 
.
�� 
changed
�� #
=
��$ %
true
��& *
;
��* +%
MarkTextureCurveAsDirty
�� /
(
��/ 0
m_SelectedCurve
��0 ?
.
��? @
value
��@ E
)
��E F
;
��F G
}
�� 
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
��3 4
Repaint
��4 ;
)
��; <
{
�� 
Handles
�� 
.
�� 
color
�� !
=
��" #
Color
��$ )
.
��) *
black
��* /
;
��/ 0
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
y
��> ?
-
��@ A
$num
��B E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
xMax
��Y ]
,
��] ^
rect
��_ c
.
��c d
y
��d e
-
��f g
$num
��h k
)
��k l
)
��l m
;
��m n
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
y
��> ?
-
��@ A
$num
��B E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
x
��Y Z
,
��Z [
rect
��\ `
.
��` a
yMax
��a e
)
��e f
)
��f g
;
��g h
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
yMax
��> B
)
��B C
,
��C D
new
��E H
Vector2
��I P
(
��P Q
rect
��Q U
.
��U V
xMax
��V Z
,
��Z [
rect
��\ `
.
��` a
yMax
��a e
)
��e f
)
��f g
;
��g h
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
xMax
��6 :
,
��: ;
rect
��< @
.
��@ A
yMax
��A E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
xMax
��Y ]
,
��] ^
rect
��_ c
.
��c d
y
��d e
-
��f g
$num
��h k
)
��k l
)
��l m
;
��m n
bool
�� 
editable
�� !
=
��" #

��$ 1
.
��1 2

��2 ?
(
��? @!
currentCurveRawProp
��@ S
)
��S T
.
��T U
editable
��U ]
;
��] ^
string
�� 
editableString
�� )
=
��* +
editable
��, 4
?
��5 6
string
��7 =
.
��= >
Empty
��> C
:
��D E
$str
��F Z
;
��Z [
var
�� 
	selection
�� !
=
��" #

��$ 1
.
��1 2
GetSelection
��2 >
(
��> ?
)
��? @
;
��@ A
var
�� 
infoRect
��  
=
��! "
	innerRect
��# ,
;
��, -
infoRect
�� 
.
�� 
x
�� 
+=
�� !
$num
��" $
;
��$ %
infoRect
�� 
.
�� 
width
�� "
=
��# $
$num
��% )
;
��) *
infoRect
�� 
.
�� 
height
�� #
=
��$ %
$num
��& )
;
��) *
if
�� 
(
�� 

s_PreLabel
�� "
==
��# %
null
��& *
)
��* +

s_PreLabel
�� "
=
��# $
new
��% (
GUIStyle
��) 1
(
��1 2
$str
��2 A
)
��A B
;
��B C
if
�� 
(
�� 
	selection
�� !
.
��! "
curve
��" '
!=
��( *
null
��+ /
&&
��0 2
	selection
��3 <
.
��< =

��= J
>
��K L
-
��M N
$num
��N O
)
��O P
{
�� 
var
�� 
key
�� 
=
��  !
	selection
��" +
.
��+ ,
keyframe
��, 4
.
��4 5
Value
��5 :
;
��: ;
GUI
�� 
.
�� 
Label
�� !
(
��! "
infoRect
��" *
,
��* +
$"
��, .
{
��. /
key
��/ 2
.
��2 3
time
��3 7
:
��7 8
F3
��8 :
}
��: ;
\n
��; =
{
��= >
key
��> A
.
��A B
value
��B G
:
��G H
F3
��H J
}
��J K
"
��K L
,
��L M

s_PreLabel
��N X
)
��X Y
;
��Y Z
}
�� 
else
�� 
{
�� 
GUI
�� 
.
�� 
Label
�� !
(
��! "
infoRect
��" *
,
��* +
editableString
��, :
,
��: ;

s_PreLabel
��< F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\ISnapping.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
	interface
	ISnapping  
<  !
T! "
>" #
{ 
T 	
Snap
 
( 
T 
value 
) 
; 
}		 
}

 �V
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ForwardRendererDataEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
CustomEditor 
( 
typeof 
( 
ForwardRendererData ,
), -
,- .
true/ 3
)3 4
]4 5
[		 
	MovedFrom		 
(		 
$str		 +
)		+ ,
]		, -
public		. 4
class		5 :%
ForwardRendererDataEditor		; T
:		U V(
ScriptableRendererDataEditor		W s
{

 
private 
static 
class 
Styles #
{ 	
public
static
readonly

GUIContent

=
new

GUIContent
(
$str
,
$str	
)

;

public 
static 
readonly "

GUIContent# -
PostProcessLabel. >
=? @
newA D

GUIContentE O
(O P
$strP c
,c d
$str	e �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
FilteringLabel. <
== >
new? B

GUIContentC M
(M N
$strN Y
,Y Z
$str	[ �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -

OpaqueMask. 8
=9 :
new; >

GUIContent? I
(I J
$strJ ]
,] ^
$str	_ �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
TransparentMask. =
=> ?
new@ C

GUIContentD N
(N O
$strO g
,g h
$str	i �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -

=< =
new> A

GUIContentB L
(L M
$strM W
,W X
$str	Y �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -
RenderingModeLabel. @
=A B
newC F

GUIContentG Q
(Q R
$strR b
,b c
$strd ~
)~ 
;	 �
public 
static 
readonly "

GUIContent# -'
accurateGbufferNormalsLabel. I
=J K
EditorGUIUtilityL \
.\ ]

(j k
$str	k �
,
� �
$str
� �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -$
defaultStencilStateLabel. F
=G H
EditorGUIUtilityI Y
.Y Z

(g h
$strh 
,	 �
$str
� �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -)
shadowTransparentReceiveLabel. K
=L M
EditorGUIUtilityN ^
.^ _

(l m
$str	m �
,
� �
$str
� �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -"
invalidStencilOverride. D
=E F
EditorGUIUtilityG W
.W X

(e f
$str	f �
)
� �
;
� �
} 	
SerializedProperty 
m_OpaqueLayerMask ,
;, -
SerializedProperty "
m_TransparentLayerMask 1
;1 2
SerializedProperty"" !
m_DefaultStencilState"" 0
;""0 1
SerializedProperty## 
m_PostProcessData## ,
;##, -
SerializedProperty$$ 
	m_Shaders$$ $
;$$$ %
SerializedProperty%% *
m_ShadowTransparentReceiveProp%% 9
;%%9 :
private'' 
void'' 
OnEnable'' 
('' 
)'' 
{(( 	
m_OpaqueLayerMask)) 
=)) 
serializedObject))  0
.))0 1
FindProperty))1 =
())= >
$str))> Q
)))Q R
;))R S"
m_TransparentLayerMask** "
=**# $
serializedObject**% 5
.**5 6
FindProperty**6 B
(**B C
$str**C [
)**[ \
;**\ ]!
m_DefaultStencilState11 !
=11" #
serializedObject11$ 4
.114 5
FindProperty115 A
(11A B
$str11B Y
)11Y Z
;11Z [
m_PostProcessData22 
=22 
serializedObject22  0
.220 1
FindProperty221 =
(22= >
$str22> O
)22O P
;22P Q
	m_Shaders33 
=33 
serializedObject33 (
.33( )
FindProperty33) 5
(335 6
$str336 ?
)33? @
;33@ A*
m_ShadowTransparentReceiveProp44 *
=44+ ,
serializedObject44- =
.44= >
FindProperty44> J
(44J K
$str44K g
)44g h
;44h i
}55 	
public77 
override77 
void77 
OnInspectorGUI77 +
(77+ ,
)77, -
{88 	
serializedObject99 
.99 
Update99 #
(99# $
)99$ %
;99% &
EditorGUILayout;; 
.;; 
Space;; !
(;;! "
);;" #
;;;# $
EditorGUILayout<< 
.<< 

LabelField<< &
(<<& '
Styles<<' -
.<<- .

,<<; <
EditorStyles<<= I
.<<I J
	boldLabel<<J S
)<<S T
;<<T U
	EditorGUI== 
.== 
indentLevel== !
++==! #
;==# $
EditorGUILayout>> 
.>> 

(>>) *
m_PostProcessData>>* ;
,>>; <
Styles>>= C
.>>C D
PostProcessLabel>>D T
)>>T U
;>>U V
	EditorGUI?? 
.?? 
indentLevel?? !
--??! #
;??# $
EditorGUILayout@@ 
.@@ 
Space@@ !
(@@! "
)@@" #
;@@# $
EditorGUILayoutBB 
.BB 

LabelFieldBB &
(BB& '
StylesBB' -
.BB- .
FilteringLabelBB. <
,BB< =
EditorStylesBB> J
.BBJ K
	boldLabelBBK T
)BBT U
;BBU V
	EditorGUICC 
.CC 
indentLevelCC !
++CC! #
;CC# $
EditorGUILayoutDD 
.DD 

(DD) *
m_OpaqueLayerMaskDD* ;
,DD; <
StylesDD= C
.DDC D

OpaqueMaskDDD N
)DDN O
;DDO P
EditorGUILayoutEE 
.EE 

(EE) *"
m_TransparentLayerMaskEE* @
,EE@ A
StylesEEB H
.EEH I
TransparentMaskEEI X
)EEX Y
;EEY Z
	EditorGUIFF 
.FF 
indentLevelFF !
--FF! #
;FF# $
EditorGUILayoutGG 
.GG 
SpaceGG !
(GG! "
)GG" #
;GG# $
EditorGUILayoutWW 
.WW 

LabelFieldWW &
(WW& '
$strWW' 0
,WW0 1
EditorStylesWW2 >
.WW> ?
	boldLabelWW? H
)WWH I
;WWI J
	EditorGUIXX 
.XX 
indentLevelXX !
++XX! #
;XX# $
EditorGUILayoutYY 
.YY 

(YY) **
m_ShadowTransparentReceivePropYY* H
,YYH I
StylesYYJ P
.YYP Q)
shadowTransparentReceiveLabelYYQ n
)YYn o
;YYo p
	EditorGUIZZ 
.ZZ 
indentLevelZZ !
--ZZ! #
;ZZ# $
EditorGUILayout[[ 
.[[ 
Space[[ !
([[! "
)[[" #
;[[# $
EditorGUILayout]] 
.]] 

LabelField]] &
(]]& '
$str]]' 2
,]]2 3
EditorStyles]]4 @
.]]@ A
	boldLabel]]A J
)]]J K
;]]K L
	EditorGUI^^ 
.^^ 
indentLevel^^ !
++^^! #
;^^# $
EditorGUILayout__ 
.__ 

(__) *!
m_DefaultStencilState__* ?
,__? @
Styles__A G
.__G H$
defaultStencilStateLabel__H `
,__` a
true__b f
)__f g
;__g h
SerializedProperty`` 
overrideStencil`` .
=``/ 0!
m_DefaultStencilState``1 F
.``F G 
FindPropertyRelative``G [
(``[ \
$str``\ r
)``r s
;``s t
	EditorGUIoo 
.oo 
indentLeveloo !
--oo! #
;oo# $
EditorGUILayoutpp 
.pp 
Spacepp !
(pp! "
)pp" #
;pp# $
serializedObjectrr 
.rr #
ApplyModifiedPropertiesrr 4
(rr4 5
)rr5 6
;rr6 7
basett 
.tt 
OnInspectorGUItt 
(tt  
)tt  !
;tt! "
ifww 
(ww 
EditorPrefsww 
.ww 
GetBoolww #
(ww# $
$strww$ 3
)ww3 4
)ww4 5
{xx 
EditorGUILayoutyy 
.yy  
Spaceyy  %
(yy% &
)yy& '
;yy' (
EditorGUILayoutzz 
.zz  

(zz- .
	m_Shaderszz. 7
,zz7 8
truezz9 =
)zz= >
;zz> ?
if|| 
(|| 
	GUILayout|| 
.|| 
Button|| $
(||$ %
$str||% 1
)||1 2
)||2 3
{}} 
var~~ 
	resources~~ !
=~~" #
target~~$ *
as~~+ -
ForwardRendererData~~. A
;~~A B
	resources 
. 
shaders %
=& '
null( ,
;, -
ResourceReloader
�� $
.
��$ %
ReloadAllNullIn
��% 4
(
��4 5
target
��5 ;
,
��; <*
UniversalRenderPipelineAsset
��= Y
.
��Y Z
packagePath
��Z e
)
��e f
;
��f g
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �I
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShadowCaster2DEditor.cs
	namespace

 	
UnityEditor


 
.

 
Experimental

 "
.

" #
	Rendering

# ,
.

, -
	Universal

- 6
{ 
[ 
CustomEditor 
( 
typeof 
( 
ShadowCaster2D '
)' (
)( )
]) *
[
CanEditMultipleObjects
]
internal 
class
ShadowCaster2DEditor '
:( )
PathComponentEditor* =
<= >
ScriptablePath> L
>L M
{ 
[ 	

EditorTool	 
( 
$str .
,. /
typeof0 6
(6 7
ShadowCaster2D7 E
)E F
)F G
]G H
class 
#ShadowCaster2DShadowCasterShapeTool 1
:2 3#
ShadowCaster2DShapeTool4 K
{L M
}N O
;O P
private 
static 
class 
Styles #
{ 	
public 
static 

GUIContent $

shadowMode% /
=0 1
EditorGUIUtility2 B
.B C

(P Q
$strQ j
,j k
$str	l �
)
� �
;
� �
public 
static 

GUIContent $
selfShadows% 0
=1 2
EditorGUIUtility3 C
.C D

(Q R
$strR `
,` a
$str	b �
)
� �
;
� �
public 
static 

GUIContent $
castsShadows% 1
=2 3
EditorGUIUtility4 D
.D E

(R S
$strS b
,b c
$str	d �
)
� �
;
� �
public 
static 

GUIContent $#
sortingLayerPrefixLabel% <
== >
EditorGUIUtility? O
.O P

(] ^
$str^ u
,u v
$str	w �
)
� �
;
� �
} 	
SerializedProperty 

;( )
SerializedProperty #
m_UseRendererSilhouette 2
;2 3
SerializedProperty 
m_CastsShadows )
;) *
SerializedProperty 

;( )
SerializedProperty 
m_ReceivesShadows ,
;, - 
SortingLayerDropDown"" "
m_SortingLayerDropDown"" 3
;""3 4
public%% 
void%% 
OnEnable%% 
(%% 
)%% 
{&& 	#
m_UseRendererSilhouette'' #
=''$ %
serializedObject''& 6
.''6 7
FindProperty''7 C
(''C D
$str''D ]
)''] ^
;''^ _

=(( 
serializedObject(( ,
.((, -
FindProperty((- 9
(((9 :
$str((: I
)((I J
;((J K
m_CastsShadows)) 
=)) 
serializedObject)) -
.))- .
FindProperty)). :
()): ;
$str)); K
)))K L
;))L M

=** 
serializedObject** ,
.**, -
FindProperty**- 9
(**9 :
$str**: I
)**I J
;**J K"
m_SortingLayerDropDown,, "
=,,# $
new,,% ( 
SortingLayerDropDown,,) =
(,,= >
),,> ?
;,,? @"
m_SortingLayerDropDown-- "
.--" #
OnEnable--# +
(--+ ,
serializedObject--, <
,--< =
$str--> V
)--V W
;--W X
}.. 	
public00 
void00 "
ShadowCaster2DSceneGUI00 *
(00* +
)00+ ,
{11 	
ShadowCaster2D22 
shadowCaster22 '
=22( )
target22* 0
as221 3
ShadowCaster2D224 B
;22B C
	Transform44 
t44 
=44 
shadowCaster44 &
.44& '
	transform44' 0
;440 1
Vector355 
[55 
]55 
shape55 
=55 
shadowCaster55 *
.55* +
	shapePath55+ 4
;554 5
Handles66 
.66 
color66 
=66 
Color66 !
.66! "
white66" '
;66' (
for88 
(88 
int88 
i88 
=88 
$num88 
;88 
i88 
<88 
shape88  %
.88% &
Length88& ,
-88- .
$num88/ 0
;880 1
++882 4
i884 5
)885 6
{99 
Handles:: 
.:: 
DrawAAPolyLine:: &
(::& '
$num::' (
,::( )
new::* -
Vector3::. 5
[::5 6
]::6 7
{::8 9
t::: ;
.::; <
TransformPoint::< J
(::J K
shape::K P
[::P Q
i::Q R
]::R S
)::S T
,::T U
t::V W
.::W X
TransformPoint::X f
(::f g
shape::g l
[::l m
i::m n
+::o p
$num::q r
]::r s
)::s t
}::u v
)::v w
;::w x
};; 
if== 
(== 
shape== 
.== 
Length== 
>== 
$num==  
)==  !
Handles>> 
.>> 
DrawAAPolyLine>> &
(>>& '
$num>>' (
,>>( )
new>>* -
Vector3>>. 5
[>>5 6
]>>6 7
{>>8 9
t>>: ;
.>>; <
TransformPoint>>< J
(>>J K
shape>>K P
[>>P Q
shape>>Q V
.>>V W
Length>>W ]
->>^ _
$num>>` a
]>>a b
)>>b c
,>>c d
t>>e f
.>>f g
TransformPoint>>g u
(>>u v
shape>>v {
[>>{ |
$num>>| }
]>>} ~
)>>~ 
}
>>� �
)
>>� �
;
>>� �
}?? 	
publicAA 
voidAA &
ShadowCaster2DInspectorGUIAA .
<AA. /
TAA/ 0
>AA0 1
(AA1 2
)AA2 3
whereAA4 9
TAA: ;
:AA< =#
ShadowCaster2DShapeToolAA> U
{BB 	
DoEditButtonCC 
<CC 
TCC 
>CC 
(CC "
PathEditorToolContentsCC 2
.CC2 3
iconCC3 7
,CC7 8
$strCC9 E
)CCE F
;CCF G
DoPathInspectorDD 
<DD 
TDD 
>DD 
(DD 
)DD  
;DD  !
DoSnappingInspectorEE 
<EE  
TEE  !
>EE! "
(EE" #
)EE# $
;EE$ %
}FF 	
publicII 
voidII 

OnSceneGUIII 
(II 
)II  
{JJ 	
ifKK 
(KK 
m_CastsShadowsKK 
.KK 
	boolValueKK (
)KK( )"
ShadowCaster2DSceneGUILL &
(LL& '
)LL' (
;LL( )
}MM 	
publicOO 
overrideOO 
voidOO 
OnInspectorGUIOO +
(OO+ ,
)OO, -
{PP 	
serializedObjectQQ 
.QQ 
UpdateQQ #
(QQ# $
)QQ$ %
;QQ% &
usingSS 
(SS 
newSS 
	EditorGUISS  
.SS  !

(SS. /
!SS/ 0

.SS= >
	boolValueSS> G
)SSG H
)SSH I
{TT 
EditorGUILayoutUU 
.UU  

(UU- .#
m_UseRendererSilhouetteUU. E
,UUE F
StylesUUG M
.UUM N

shadowModeUUN X
)UUX Y
;UUY Z
}VV 
EditorGUILayoutXX 
.XX 

(XX) *
m_CastsShadowsXX* 8
,XX8 9
StylesXX: @
.XX@ A
castsShadowsXXA M
)XXM N
;XXN O
EditorGUILayoutYY 
.YY 

(YY) *

,YY7 8
StylesYY9 ?
.YY? @
selfShadowsYY@ K
)YYK L
;YYL M"
m_SortingLayerDropDown[[ "
.[[" #!
OnTargetSortingLayers[[# 8
([[8 9
serializedObject[[9 I
,[[I J
targets[[K R
,[[R S
Styles[[T Z
.[[Z [#
sortingLayerPrefixLabel[[[ r
,[[r s
null[[t x
)[[x y
;[[y z
if]] 
(]] 
m_CastsShadows]] 
.]] 
	boolValue]] (
)]]( )&
ShadowCaster2DInspectorGUI^^ *
<^^* +/
#ShadowCaster2DShadowCasterShapeTool^^+ N
>^^N O
(^^O P
)^^P Q
;^^Q R
serializedObject`` 
.`` #
ApplyModifiedProperties`` 4
(``4 5
)``5 6
;``6 7
}aa 	
}bb 
}cc �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\PostProcessDataEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
CustomEditor 
( 
typeof 
( 
PostProcessData (
)( )
,) *
true+ /
)/ 0
]0 1
public 

class !
PostProcessDataEditor &
:' (
Editor) /
{		 
SerializedProperty

 
	m_Shaders

 $
;

$ %
SerializedProperty 

m_Textures %
;% &
private
void
OnEnable
(
)
{ 	
	m_Shaders 
= 
serializedObject (
.( )
FindProperty) 5
(5 6
$str6 ?
)? @
;@ A

m_Textures 
= 
serializedObject )
.) *
FindProperty* 6
(6 7
$str7 A
)A B
;B C
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
serializedObject 
. 
Update #
(# $
)$ %
;% &
if 
( 
EditorPrefs 
. 
GetBool #
(# $
$str$ 3
)3 4
)4 5
{ 
EditorGUILayout 
.  
Space  %
(% &
)& '
;' (
EditorGUILayout 
.  

(- .
	m_Shaders. 7
,7 8
true9 =
)= >
;> ?
EditorGUILayout 
.  

(- .

m_Textures. 8
,8 9
true: >
)> ?
;? @
if 
( 
	GUILayout 
. 
Button $
($ %
$str% 1
)1 2
)2 3
{ 
var   
	resources   !
=  " #
target  $ *
as  + -
PostProcessData  . =
;  = >
	resources!! 
.!! 
shaders!! %
=!!& '
null!!( ,
;!!, -
	resources"" 
."" 
textures"" &
=""' (
null"") -
;""- .
ResourceReloader## $
.##$ %
ReloadAllNullIn##% 4
(##4 5
target##5 ;
,##; <(
UniversalRenderPipelineAsset##= Y
.##Y Z
packagePath##Z e
)##e f
;##f g
}$$ 
}%% 
serializedObject'' 
.'' #
ApplyModifiedProperties'' 4
(''4 5
)''5 6
;''6 7
}(( 	
})) 
}** �R
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetPostProcessors\SketchupMaterialDescriptionPostprocessor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class		 	3
'SketchupMaterialDescriptionPreprocessor		
 1
:		2 3
AssetPostprocessor		4 F
{

 
static 
readonly 
uint 
	k_Version &
=' (
$num) *
;* +
static 
readonly 
int 
k_Order #
=$ %
$num& '
;' (
public 
override 
uint 

GetVersion '
(' (
)( )
{ 	
return 
	k_Version 
; 
} 	
public 
override 
int 
GetPostprocessOrder /
(/ 0
)0 1
{ 	
return 
k_Order 
; 
} 	
public 
void +
OnPreprocessMaterialDescription 3
(3 4
MaterialDescription4 G
descriptionH S
,S T
MaterialU ]
material^ f
,f g

[u v
]v w
clipsx }
)} ~
{ 	
var 

= 
GraphicsSettings  0
.0 1!
currentRenderPipeline1 F
;F G
if 
( 
! 

|| !

./ 0
GetType0 7
(7 8
)8 9
!=: <
typeof= C
(C D(
UniversalRenderPipelineAssetD `
)` a
)a b
return 
; 
var 

= 
Path  $
.$ %
GetExtension% 1
(1 2
	assetPath2 ;
); <
.< =
ToLower= D
(D E
)E F
;F G
if 
( 

!=  
$str! '
)' (
return   
;   
string"" 
path"" 
="" 

.""' (
GUIDToAssetPath""( 7
(""7 8
ShaderUtils""8 C
.""C D

(""Q R
ShaderPathID""R ^
.""^ _
Lit""_ b
)""b c
)""c d
;""d e
var## 
shader## 
=## 

.##& '
LoadAssetAtPath##' 6
<##6 7
Shader##7 =
>##= >
(##> ?
path##? C
)##C D
;##D E
if$$ 
($$ 
shader$$ 
==$$ 
null$$ 
)$$ 
return%% 
;%% 
material&& 
.&& 
shader&& 
=&& 
shader&& $
;&&$ %
float(( 

;((  
Vector4)) 
vectorProperty)) "
;))" #&
TexturePropertyDescription** &
textureProperty**' 6
;**6 7
if,, 
(,, 
description,, 
.,, 
TryGetProperty,, *
(,,* +
$str,,+ 7
,,,7 8
out,,9 <
textureProperty,,= L
),,L M
&&,,N P
textureProperty,,Q `
.,,` a
texture,,a h
!=,,h j
null,,j n
),,n o
{-- 
SetMaterialTextureProperty.. *
(..* +
$str..+ 5
,..5 6
material..7 ?
,..? @
textureProperty..A P
)..P Q
;..Q R&
SetMaterialTextureProperty// *
(//* +
$str//+ 5
,//5 6
material//7 ?
,//? @
textureProperty//A P
)//P Q
;//Q R
var00 
color00 
=00 
new00 
Color00  %
(00% &
$num00& *
,00* +
$num00, 0
,000 1
$num002 6
,006 7
$num008 <
)00< =
;00= >
material11 
.11 
SetColor11 !
(11! "
$str11" .
,11. /
color110 5
)115 6
;116 7
material22 
.22 
SetColor22 !
(22! "
$str22" *
,22* +
color22, 1
)221 2
;222 3
}33 
else44 
if44 
(44 
description44  
.44  !
TryGetProperty44! /
(44/ 0
$str440 >
,44> ?
out44@ C
vectorProperty44D R
)44R S
)44S T
{55 
Color66 
diffuseColor66 "
=66# $
vectorProperty66% 3
;663 4
diffuseColor77 
=77 
PlayerSettings77 -
.77- .

colorSpace77. 8
==779 ;

ColorSpace77< F
.77F G
Linear77G M
?77N O
diffuseColor77P \
.77\ ]
gamma77] b
:77c d
diffuseColor77e q
;77q r
material88 
.88 
SetColor88 !
(88! "
$str88" .
,88. /
diffuseColor880 <
)88< =
;88= >
material99 
.99 
SetColor99 !
(99! "
$str99" *
,99* +
diffuseColor99, 8
)998 9
;999 :
}:: 
if<< 
(<< 
description<< 
.<< 
TryGetProperty<< *
(<<* +
$str<<+ :
,<<: ;
out<<< ?

)<<M N
&&<<O Q

==<<` b
$num<<c g
)<<g h
{== 
material>> 
.>> 
SetFloat>> !
(>>! "
$str>>" )
,>>) *
(>>+ ,
float>>, 1
)>>1 2
$num>>2 5
)>>5 6
;>>6 7
material?? 
.?? 
SetOverrideTag?? '
(??' (
$str??( 4
,??4 5
$str??6 C
)??C D
;??D E
material@@ 
.@@ 
SetInt@@ 
(@@  
$str@@  +
,@@+ ,
(@@- .
int@@. 1
)@@1 2
UnityEngine@@2 =
.@@= >
	Rendering@@> G
.@@G H
	BlendMode@@H Q
.@@Q R
One@@R U
)@@U V
;@@V W
materialAA 
.AA 
SetIntAA 
(AA  
$strAA  +
,AA+ ,
(AA- .
intAA. 1
)AA1 2
UnityEngineAA2 =
.AA= >
	RenderingAA> G
.AAG H
	BlendModeAAH Q
.AAQ R
OneMinusSrcAlphaAAR b
)AAb c
;AAc d
materialBB 
.BB 
SetIntBB 
(BB  
$strBB  )
,BB) *
$numBB+ ,
)BB, -
;BB- .
materialCC 
.CC 

(CC& '
$strCC' =
)CC= >
;CC> ?
materialDD 
.DD 
renderQueueDD $
=DD% &
(DD' (
intDD( +
)DD+ ,
UnityEngineDD, 7
.DD7 8
	RenderingDD8 A
.DDA B
RenderQueueDDB M
.DDM N
TransparentDDN Y
;DDY Z
materialEE 
.EE 
SetIntEE 
(EE  
$strEE  *
,EE* +
$numEE, -
)EE- .
;EE. /
}FF 
elseGG 
{HH 
materialII 
.II 
SetFloatII !
(II! "
$strII" )
,II) *
(II+ ,
floatII, 1
)II1 2
$numII2 5
)II5 6
;II6 7
materialJJ 
.JJ 
SetOverrideTagJJ '
(JJ' (
$strJJ( 4
,JJ4 5
$strJJ6 8
)JJ8 9
;JJ9 :
materialKK 
.KK 
SetIntKK 
(KK  
$strKK  +
,KK+ ,
(KK- .
intKK. 1
)KK1 2
UnityEngineKK2 =
.KK= >
	RenderingKK> G
.KKG H
	BlendModeKKH Q
.KKQ R
OneKKR U
)KKU V
;KKV W
materialLL 
.LL 
SetIntLL 
(LL  
$strLL  +
,LL+ ,
(LL- .
intLL. 1
)LL1 2
UnityEngineLL2 =
.LL= >
	RenderingLL> G
.LLG H
	BlendModeLLH Q
.LLQ R
ZeroLLR V
)LLV W
;LLW X
materialMM 
.MM 
SetIntMM 
(MM  
$strMM  )
,MM) *
$numMM+ ,
)MM, -
;MM- .
materialNN 
.NN 
DisableKeywordNN '
(NN' (
$strNN( 7
)NN7 8
;NN8 9
materialOO 
.OO 
DisableKeywordOO '
(OO' (
$strOO( 8
)OO8 9
;OO9 :
materialPP 
.PP 
DisableKeywordPP '
(PP' (
$strPP( >
)PP> ?
;PP? @
materialQQ 
.QQ 
renderQueueQQ $
=QQ% &
-QQ' (
$numQQ( )
;QQ) *
materialRR 
.RR 
SetIntRR 
(RR  
$strRR  *
,RR* +
$numRR, -
)RR- .
;RR. /
}SS 
}TT 	
staticVV 
voidVV &
SetMaterialTexturePropertyVV .
(VV. /
stringVV/ 5
propertyNameVV6 B
,VVB C
MaterialVVD L
materialVVM U
,VVU V&
TexturePropertyDescriptionVVW q
textureProperty	VVr �
)
VV� �
{WW 	
materialXX 
.XX 

SetTextureXX 
(XX  
propertyNameXX  ,
,XX, -
texturePropertyXX. =
.XX= >
textureXX> E
)XXE F
;XXF G
materialYY 
.YY 
SetTextureOffsetYY %
(YY% &
propertyNameYY& 2
,YY2 3
texturePropertyYY4 C
.YYC D
offsetYYD J
)YYJ K
;YYK L
materialZZ 
.ZZ 
SetTextureScaleZZ $
(ZZ$ %
propertyNameZZ% 1
,ZZ1 2
texturePropertyZZ3 B
.ZZB C
scaleZZC H
)ZZH I
;ZZI J
}[[ 	
}\\ 
}]] �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetVersion.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class 	
AssetVersion
 
: 
ScriptableObject )
{ 
public 
int 
version 
; 
} 
}		 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\TrackballUIDrawer.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
sealed 

class 
TrackballUIDrawer "
{ 
static		 
readonly		 
int		 
s_ThumbHash		 '
=		( )
$str		* ;
.		; <
GetHashCode		< G
(		G H
)		H I
;		I J
static

 
GUIStyle

 
s_WheelThumb

 $
;

$ %
static 
Vector2 
s_WheelThumbSize '
;' (
static 
Material 

s_Material "
;" #
Func 
< 
Vector4
, 
Vector3 
> 

;, -
bool 
m_ResetState
; 
Vector2 
m_CursorPos 
; 
const 
string 
k_ShaderName !
=" #
$str$ W
;W X
public 
void 
OnGUI 
( 
SerializedProperty ,
property- 5
,5 6
SerializedProperty7 I

,W X

GUIContentY c
titled i
,i j
Funck o
<o p
Vector4p w
,w x
Vector3	y �
>
� �
computeFunc
� �
)
� �
{ 	
if 
( 
! "
CheckMaterialAndShader '
(' (
)( )
)) *
{ 
return 
; 
} 
if 
( 
property 
. 
propertyType %
!=& ("
SerializedPropertyType) ?
.? @
Vector4@ G
)G H
{ 
Debug 
. 

LogWarning  
(  !
$str! P
)P Q
;Q R
return 
; 
} 

=   
computeFunc   '
;  ' (
var!! 
value!! 
=!! 
property!!  
.!!  !
vector4Value!!! -
;!!- .
using## 
(## 
new## 
EditorGUILayout## &
.##& '

(##4 5
)##5 6
)##6 7
{$$ 
using%% 
(%% 
new%% 
	EditorGUI%% $
.%%$ %

(%%2 3
!%%3 4

.%%A B
	boolValue%%B K
)%%K L
)%%L M
	DrawWheel&& 
(&& 
ref&& !
value&&" '
,&&' (

.&&6 7
	boolValue&&7 @
)&&@ A
;&&A B 
DrawLabelAndOverride(( $
((($ %
title((% *
,((* +

)((9 :
;((: ;
})) 
if++ 
(++ 
m_ResetState++ 
)++ 
{,, 
value-- 
=-- 
new-- 
Vector4-- #
(--# $
$num--$ &
,--& '
$num--( *
,--* +
$num--, .
,--. /
$num--0 2
)--2 3
;--3 4
m_ResetState.. 
=.. 
false.. $
;..$ %
}// 
property11 
.11 
vector4Value11 !
=11" #
value11$ )
;11) *
}22 	
void44 
	DrawWheel44
(44 
ref44 
Vector444 "
value44# (
,44( )
bool44* .

)44< =
{55 	
var66 
	wheelRect66 
=66 
GUILayoutUtility66 ,
.66, -

(66: ;
$num66; =
)66= >
;66> ?
float77 
size77 
=77 
	wheelRect77 "
.77" #
width77# (
;77( )
float88 
hsize88 
=88 
size88 
/88  
$num88! #
;88# $
float99 
radius99 
=99 
$num99  
*99! "
size99# '
;99' (
Vector3;; 
hsv;; 
;;; 
Color<< 
.<< 
RGBToHSV<< 
(<< 
value<<  
,<<  !
out<<" %
hsv<<& )
.<<) *
x<<* +
,<<+ ,
out<<- 0
hsv<<1 4
.<<4 5
y<<5 6
,<<6 7
out<<8 ;
hsv<<< ?
.<<? @
z<<@ A
)<<A B
;<<B C
float== 
offset== 
=== 
value==  
.==  !
w==! "
;==" #
var@@ 
thumbPos@@ 
=@@ 
Vector2@@ "
.@@" #
zero@@# '
;@@' (
floatAA 
thetaAA 
=AA 
hsvAA 
.AA 
xAA 
*AA  !
(AA" #
MathfAA# (
.AA( )
PIAA) +
*AA, -
$numAA. 0
)AA0 1
;AA1 2
thumbPosBB 
.BB 
xBB 
=BB 
MathfBB 
.BB 
CosBB "
(BB" #
thetaBB# (
+BB) *
(BB+ ,
MathfBB, 1
.BB1 2
PIBB2 4
/BB5 6
$numBB7 9
)BB9 :
)BB: ;
;BB; <
thumbPosCC 
.CC 
yCC 
=CC 
MathfCC 
.CC 
SinCC "
(CC" #
thetaCC# (
-CC) *
(CC+ ,
MathfCC, 1
.CC1 2
PICC2 4
/CC5 6
$numCC7 9
)CC9 :
)CC: ;
;CC; <
thumbPosDD 
*=DD 
hsvDD 
.DD 
yDD 
*DD 
radiusDD  &
;DD& '
ifGG 
(GG 
EventGG 
.GG 
currentGG 
.GG 
typeGG "
==GG# %
	EventTypeGG& /
.GG/ 0
RepaintGG0 7
)GG7 8
{HH 
ifJJ 
(JJ 
s_WheelThumbJJ  
==JJ! #
nullJJ$ (
)JJ( )
{KK 
s_WheelThumbLL  
=LL! "
newLL# &
GUIStyleLL' /
(LL/ 0
$strLL0 D
)LLD E
;LLE F
s_WheelThumbSizeMM $
=MM% &
newMM' *
Vector2MM+ 2
(MM2 3
!NN 
MathfNN 
.NN 

(NN, -
s_WheelThumbNN- 9
.NN9 :

fixedWidthNN: D
,NND E
$numNNF H
)NNH I
?NNJ K
s_WheelThumbNNL X
.NNX Y

fixedWidthNNY c
:NNd e
s_WheelThumbNNf r
.NNr s
paddingNNs z
.NNz {

horizontal	NN{ �
,
NN� �
!OO 
MathfOO 
.OO 

(OO, -
s_WheelThumbOO- 9
.OO9 :
fixedHeightOO: E
,OOE F
$numOOG I
)OOI J
?OOK L
s_WheelThumbOOM Y
.OOY Z
fixedHeightOOZ e
:OOf g
s_WheelThumbOOh t
.OOt u
paddingOOu |
.OO| }
vertical	OO} �
)PP 
;PP 
}QQ 
floatTT 
scaleTT 
=TT 
EditorGUIUtilityTT .
.TT. /
pixelsPerPointTT/ =
;TT= >
varWW 
oldRTWW 
=WW 

.WW) *
activeWW* 0
;WW0 1
varXX 
rtXX 
=XX 

.XX& '
GetTemporaryXX' 3
(XX3 4
(XX4 5
intXX5 8
)XX8 9
(XX9 :
sizeXX: >
*XX? @
scaleXXA F
)XXF G
,XXG H
(XXI J
intXXJ M
)XXM N
(XXN O
sizeXXO S
*XXT U
scaleXXV [
)XX[ \
,XX\ ]
$numXX^ _
,XX_ `
RenderTextureFormatXXa t
.XXt u
ARGB32XXu {
,XX{ |#
RenderTextureReadWrite	XX} �
.
XX� �
sRGB
XX� �
)
XX� �
;
XX� �

s_MaterialYY 
.YY 
SetFloatYY #
(YY# $
$strYY$ -
,YY- .
offsetYY/ 5
)YY5 6
;YY6 7

s_MaterialZZ 
.ZZ 
SetFloatZZ #
(ZZ# $
$strZZ$ 4
,ZZ4 5

&&ZZD F
GUIZZG J
.ZZJ K
enabledZZK R
?ZZS T
$numZZU W
:ZZX Y
$numZZZ ^
)ZZ^ _
;ZZ_ `

s_Material[[ 
.[[ 
	SetVector[[ $
([[$ %
$str[[% 2
,[[2 3
new[[4 7
Vector2[[8 ?
([[? @
size[[@ D
*[[E F
scale[[G L
,[[L M
size[[N R
*[[S T
scale[[U Z
/[[[ \
$num[[] _
)[[_ `
)[[` a
;[[a b
Graphics\\ 
.\\ 
Blit\\ 
(\\ 
null\\ "
,\\" #
rt\\$ &
,\\& '

s_Material\\( 2
,\\2 3
EditorGUIUtility\\4 D
.\\D E
	isProSkin\\E N
?\\O P
$num\\Q R
:\\S T
$num\\U V
)\\V W
;\\W X

.]] 
active]] $
=]]% &
oldRT]]' ,
;]], -
GUI__ 
.__ 
DrawTexture__ 
(__  
	wheelRect__  )
,__) *
rt__+ -
)__- .
;__. /

.`` 
ReleaseTemporary`` .
(``. /
rt``/ 1
)``1 2
;``2 3
varbb 
	thumbSizebb 
=bb 
s_WheelThumbSizebb  0
;bb0 1
varcc 

thumbSizeHcc 
=cc  
	thumbSizecc! *
/cc+ ,
$numcc- /
;cc/ 0
s_WheelThumbdd 
.dd 
Drawdd !
(dd! "
newdd" %
Rectdd& *
(dd* +
	wheelRectdd+ 4
.dd4 5
xdd5 6
+dd7 8
hsizedd9 >
+dd? @
thumbPosddA I
.ddI J
xddJ K
-ddL M

thumbSizeHddN X
.ddX Y
xddY Z
,ddZ [
	wheelRectdd\ e
.dde f
yddf g
+ddh i
hsizeddj o
+ddp q
thumbPosddr z
.ddz {
ydd{ |
-dd} ~

thumbSizeH	dd �
.
dd� �
y
dd� �
,
dd� �
	thumbSize
dd� �
.
dd� �
x
dd� �
,
dd� �
	thumbSize
dd� �
.
dd� �
y
dd� �
)
dd� �
,
dd� �
false
dd� �
,
dd� �
false
dd� �
,
dd� �
false
dd� �
,
dd� �
false
dd� �
)
dd� �
;
dd� �
}ee 
varhh 
boundshh 
=hh 
	wheelRecthh "
;hh" #
boundsii 
.ii 
xii 
+=ii 
hsizeii 
-ii 
radiusii  &
;ii& '
boundsjj 
.jj 
yjj 
+=jj 
hsizejj 
-jj 
radiusjj  &
;jj& '
boundskk 
.kk 
widthkk 
=kk 
boundskk !
.kk! "
heightkk" (
=kk) *
radiuskk+ 1
*kk2 3
$numkk4 6
;kk6 7
hsvll 
=ll 
GetInputll 
(ll 
boundsll !
,ll! "
hsvll# &
,ll& '
thumbPosll( 0
,ll0 1
radiusll2 8
)ll8 9
;ll9 :
valuemm 
=mm 
Colormm 
.mm 
HSVToRGBmm "
(mm" #
hsvmm# &
.mm& '
xmm' (
,mm( )
hsvmm* -
.mm- .
ymm. /
,mm/ 0
$nummm1 3
)mm3 4
;mm4 5
valuenn 
.nn 
wnn 
=nn 
offsetnn 
;nn 
varqq 

sliderRectqq 
=qq 
GUILayoutUtilityqq -
.qq- .
GetRectqq. 5
(qq5 6
$numqq6 8
,qq8 9
$numqq: =
)qq= >
;qq> ?
floatrr 
paddingrr 
=rr 

sliderRectrr &
.rr& '
widthrr' ,
*rr- .
$numrr/ 4
;rr4 5

sliderRectss 
.ss 
xMinss 
+=ss 
paddingss &
;ss& '

sliderRecttt 
.tt 
xMaxtt 
-=tt 
paddingtt &
;tt& '
valueuu 
.uu 
wuu 
=uu 
GUIuu 
.uu 
HorizontalSlideruu *
(uu* +

sliderRectuu+ 5
,uu5 6
valueuu7 <
.uu< =
wuu= >
,uu> ?
-uu@ A
$numuuA C
,uuC D
$numuuE G
)uuG H
;uuH I
ifww 
(ww 

==ww  
nullww! %
)ww% &
returnxx 
;xx 
var{{ 
displayValue{{ 
={{ 

({{, -
value{{- 2
){{2 3
;{{3 4
using}} 
(}} 
new}} 
	EditorGUI}}  
.}}  !
DisabledGroupScope}}! 3
(}}3 4
true}}4 8
)}}8 9
)}}9 :
{~~ 
var 

valuesRect 
=  
GUILayoutUtility! 1
.1 2
GetRect2 9
(9 :
$num: <
,< =
$num> A
)A B
;B C

valuesRect
�� 
.
�� 
width
��  
/=
��! #
$num
��$ &
;
��& '
GUI
�� 
.
�� 
Label
�� 
(
�� 

valuesRect
�� $
,
��$ %
displayValue
��& 2
.
��2 3
x
��3 4
.
��4 5
ToString
��5 =
(
��= >
$str
��> B
)
��B C
,
��C D
EditorStyles
��E Q
.
��Q R#
centeredGreyMiniLabel
��R g
)
��g h
;
��h i

valuesRect
�� 
.
�� 
x
�� 
+=
�� 

valuesRect
��  *
.
��* +
width
��+ 0
;
��0 1
GUI
�� 
.
�� 
Label
�� 
(
�� 

valuesRect
�� $
,
��$ %
displayValue
��& 2
.
��2 3
y
��3 4
.
��4 5
ToString
��5 =
(
��= >
$str
��> B
)
��B C
,
��C D
EditorStyles
��E Q
.
��Q R#
centeredGreyMiniLabel
��R g
)
��g h
;
��h i

valuesRect
�� 
.
�� 
x
�� 
+=
�� 

valuesRect
��  *
.
��* +
width
��+ 0
;
��0 1
GUI
�� 
.
�� 
Label
�� 
(
�� 

valuesRect
�� $
,
��$ %
displayValue
��& 2
.
��2 3
z
��3 4
.
��4 5
ToString
��5 =
(
��= >
$str
��> B
)
��B C
,
��C D
EditorStyles
��E Q
.
��Q R#
centeredGreyMiniLabel
��R g
)
��g h
;
��h i

valuesRect
�� 
.
�� 
x
�� 
+=
�� 

valuesRect
��  *
.
��* +
width
��+ 0
;
��0 1
}
�� 
}
�� 	
void
�� "
DrawLabelAndOverride
��
(
��! "

GUIContent
��" ,
title
��- 2
,
��2 3 
SerializedProperty
��4 F

��G T
)
��T U
{
�� 	
var
�� 
areaRect
�� 
=
�� 
GUILayoutUtility
�� +
.
��+ ,
GetRect
��, 3
(
��3 4
$num
��4 6
,
��6 7
$num
��8 ;
)
��; <
;
��< =
var
�� 
	labelSize
�� 
=
�� 
EditorStyles
�� (
.
��( )
	miniLabel
��) 2
.
��2 3
CalcSize
��3 ;
(
��; <
title
��< A
)
��A B
;
��B C
var
�� 
	labelRect
�� 
=
�� 
new
�� 
Rect
��  $
(
��$ %
areaRect
��% -
.
��- .
x
��. /
+
��0 1
areaRect
��2 :
.
��: ;
width
��; @
/
��A B
$num
��C D
-
��E F
	labelSize
��G P
.
��P Q
x
��Q R
/
��S T
$num
��U V
,
��V W
areaRect
��X `
.
��` a
y
��a b
,
��b c
	labelSize
��d m
.
��m n
x
��n o
,
��o p
	labelSize
��q z
.
��z {
y
��{ |
)
��| }
;
��} ~
GUI
�� 
.
�� 
Label
�� 
(
�� 
	labelRect
�� 
,
��  
title
��! &
,
��& '
EditorStyles
��( 4
.
��4 5
	miniLabel
��5 >
)
��> ?
;
��? @
var
�� 
overrideRect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
	labelRect
��( 1
.
��1 2
x
��2 3
-
��4 5
$num
��6 8
,
��8 9
	labelRect
��: C
.
��C D
y
��D E
+
��F G
$num
��H I
,
��I J
$num
��K N
,
��N O
$num
��P S
)
��S T
;
��T U

�� 
.
�� 
	boolValue
�� #
=
��$ %
GUI
��& )
.
��) *
Toggle
��* 0
(
��0 1
overrideRect
��1 =
,
��= >

��? L
.
��L M
	boolValue
��M V
,
��V W
EditorGUIUtility
��X h
.
��h i

��i v
(
��v w
$str
��w y
,
��y z
$str��{ �
)��� �
,��� � 
CoreEditorStyles��� �
.��� �
smallTickbox��� �
)��� �
;��� �
}
�� 	
Vector3
�� 
GetInput
�� 
(
�� 
Rect
�� 
bounds
�� $
,
��$ %
Vector3
��& -
hsv
��. 1
,
��1 2
Vector2
��3 :
thumbPos
��; C
,
��C D
float
��E J
radius
��K Q
)
��Q R
{
�� 	
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
var
�� 
id
�� 
=
�� 

GUIUtility
�� 
.
��  
GetControlID
��  ,
(
��, -
s_ThumbHash
��- 8
,
��8 9
	FocusType
��: C
.
��C D
Passive
��D K
,
��K L
bounds
��M S
)
��S T
;
��T U
var
�� 
mousePos
�� 
=
�� 
e
�� 
.
�� 

�� *
;
��* +
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
	MouseDown
��$ -
&&
��. 0

GUIUtility
��1 ;
.
��; <

hotControl
��< F
==
��G I
$num
��J K
&&
��L N
bounds
��O U
.
��U V
Contains
��V ^
(
��^ _
mousePos
��_ g
)
��g h
)
��h i
{
�� 
if
�� 
(
�� 
e
�� 
.
�� 
button
�� 
==
�� 
$num
��  !
)
��! "
{
�� 
var
�� 
center
�� 
=
��  
new
��! $
Vector2
��% ,
(
��, -
bounds
��- 3
.
��3 4
x
��4 5
+
��6 7
radius
��8 >
,
��> ?
bounds
��@ F
.
��F G
y
��G H
+
��I J
radius
��K Q
)
��Q R
;
��R S
float
�� 
dist
�� 
=
��  
Vector2
��! (
.
��( )
Distance
��) 1
(
��1 2
center
��2 8
,
��8 9
mousePos
��: B
)
��B C
;
��C D
if
�� 
(
�� 
dist
�� 
<=
�� 
radius
��  &
)
��& '
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
��  
m_CursorPos
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
thumbPos
��2 :
.
��: ;
x
��; <
+
��= >
radius
��? E
,
��E F
thumbPos
��G O
.
��O P
y
��P Q
+
��R S
radius
��T Z
)
��Z [
;
��[ \

GUIUtility
�� "
.
��" #

hotControl
��# -
=
��. /
id
��0 2
;
��2 3
GUI
�� 
.
�� 
changed
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
button
�� !
==
��" $
$num
��% &
)
��& '
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
��  !
true
��" &
;
��& '
m_ResetState
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� (
.
��( )
	MouseDrag
��) 2
&&
��3 5
e
��6 7
.
��7 8
button
��8 >
==
��? A
$num
��B C
&&
��D F

GUIUtility
��G Q
.
��Q R

hotControl
��R \
==
��] _
id
��` b
)
��b c
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
�� 
true
�� "
;
��" #
m_CursorPos
�� 
+=
�� 
e
��  
.
��  !
delta
��! &
*
��' (
$num
��) -
;
��- .#
GetWheelHueSaturation
�� %
(
��% &
m_CursorPos
��& 1
.
��1 2
x
��2 3
,
��3 4
m_CursorPos
��5 @
.
��@ A
y
��A B
,
��B C
radius
��D J
,
��J K
out
��L O
hsv
��P S
.
��S T
x
��T U
,
��U V
out
��W Z
hsv
��[ ^
.
��^ _
y
��_ `
)
��` a
;
��a b
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
rawType
�� 
==
�� !
	EventType
��" +
.
��+ ,
MouseUp
��, 3
&&
��4 6
e
��7 8
.
��8 9
button
��9 ?
==
��@ B
$num
��C D
&&
��E G

GUIUtility
��H R
.
��R S

hotControl
��S ]
==
��^ `
id
��a c
)
��c d
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 

GUIUtility
�� 
.
�� 

hotControl
�� %
=
��& '
$num
��( )
;
��) *
}
�� 
return
�� 
hsv
�� 
;
�� 
}
�� 	
void
�� #
GetWheelHueSaturation
��
(
��" #
float
��# (
x
��) *
,
��* +
float
��, 1
y
��2 3
,
��3 4
float
��5 :
radius
��; A
,
��A B
out
��C F
float
��G L
hue
��M P
,
��P Q
out
��R U
float
��V [

saturation
��\ f
)
��f g
{
�� 	
float
�� 
dx
�� 
=
�� 
(
�� 
x
�� 
-
�� 
radius
�� "
)
��" #
/
��$ %
radius
��& ,
;
��, -
float
�� 
dy
�� 
=
�� 
(
�� 
y
�� 
-
�� 
radius
�� "
)
��" #
/
��$ %
radius
��& ,
;
��, -
float
�� 
d
�� 
=
�� 
Mathf
�� 
.
�� 
Sqrt
��  
(
��  !
dx
��! #
*
��$ %
dx
��& (
+
��) *
dy
��+ -
*
��. /
dy
��0 2
)
��2 3
;
��3 4
hue
�� 
=
�� 
Mathf
�� 
.
�� 
Atan2
�� 
(
�� 
dx
��  
,
��  !
-
��" #
dy
��# %
)
��% &
;
��& '
hue
�� 
=
�� 
$num
�� 
-
�� 
(
�� 
(
�� 
hue
�� 
>
�� 
$num
��  
)
��  !
?
��" #
hue
��$ '
:
��( )
(
��* +
Mathf
��+ 0
.
��0 1
PI
��1 3
*
��4 5
$num
��6 8
)
��8 9
+
��: ;
hue
��< ?
)
��? @
/
��A B
(
��C D
Mathf
��D I
.
��I J
PI
��J L
*
��M N
$num
��O Q
)
��Q R
;
��R S

saturation
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� &
(
��& '
d
��' (
)
��( )
;
��) *
}
�� 	
bool
�� $
CheckMaterialAndShader
��
(
��# $
)
��$ %
{
�� 	
if
�� 
(
�� 

s_Material
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
Shader
�� 
shader
�� 
=
�� 
Shader
�� "
.
��" #
Find
��# '
(
��' (
k_ShaderName
��( 4
)
��4 5
;
��5 6
if
�� 
(
�� 
shader
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� L
+
��M N
k_ShaderName
��O [
+
��\ ]
$str
��^ b
)
��b c
;
��c d
return
�� 
false
�� 
;
�� 
}
�� 

s_Material
�� 
=
�� 
new
�� 
Material
�� %
(
��% &
shader
��& ,
)
��, -
;
��- .
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\Snapping.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class
Snapping 
: 
	ISnapping '
<' (
Vector3( /
>/ 0
{ 
public 
Vector3 
Snap 
( 
Vector3 #
position$ ,
), -
{		 	
return

 
new

 
Vector3

 
(

 
Snap 
( 
position 
. 
x 
,  
EditorPrefs! ,
., -
GetFloat- 5
(5 6
$str6 A
,A B
$numC E
)E F
)F G
,G H
Snap 
( 
position 
. 
y 
,  
EditorPrefs! ,
., -
GetFloat- 5
(5 6
$str6 A
,A B
$numC E
)E F
)F G
,G H
position
.
z
)
;
} 	
private 
float 
Snap 
( 
float  
value! &
,& '
float( -
snap. 2
)2 3
{ 	
return 
Mathf 
. 
Round 
( 
value $
/% &
snap' +
)+ ,
*- .
snap/ 3
;3 4
} 	
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Shadow\ShadowCascadeSplitGUI.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
static 

partial 
class !
ShadowCascadeSplitGUI .
{ 
private		 
const		 
int		 
kSliderbarTopMargin		 -
=		. /
$num		0 1
;		1 2
private

 
const

 
int

 
kSliderbarHeight

 *
=

+ ,
$num

- /
;

/ 0
private 
const 
int "
kSliderbarBottomMargin 0
=1 2
$num3 4
;4 5
private 
const 
int !
kPartitionHandleWidth /
=0 1
$num2 3
;3 4
private
const
int
!kPartitionHandleExtraHitAreaWidth
=
$num
;
private 
static 
readonly 
Color  %
[% &
]& '
kCascadeColors( 6
=7 8
{ 	
new 
Color 
( 
$num 
, 
$num  
,  !
$num" &
,& '
$num( ,
), -
,- .
new 
Color 
( 
$num 
, 
$num  
,  !
$num" &
,& '
$num( ,
), -
,- .
new 
Color 
( 
$num 
, 
$num  
,  !
$num" &
,& '
$num( ,
), -
,- .
new 
Color 
( 
$num 
, 
$num  
,  !
$num" &
,& '
$num( ,
), -
,- .
} 	
;	 

private 
static 
readonly 
GUIStyle  (
s_CascadeSliderBG) :
=; <
$str= M
;M N
private 
static 
readonly 
GUIStyle  (
s_TextCenteredStyle) <
== >
new@ C
GUIStyleD L
(L M
EditorStylesM Y
.Y Z
whiteMiniLabelZ h
)h i
{ 	
	alignment 
= 

TextAnchor "
." #
MiddleCenter# /
} 	
;	 

private 
class 
	DragCache 
{   	
public!! 
int!! 
m_ActivePartition!! -
;!!- .
public"" 
float"" %
m_NormalizedPartitionSize"" 5
;""5 6
public## 
Vector2## %
m_LastCachedMousePosition## 5
;##5 6
public%% 
	DragCache%% 
(%% 
int%%  
activePartition%%! 0
,%%0 1
float%%2 7#
normalizedPartitionSize%%8 O
,%%O P
Vector2%%Q X
currentMousePos%%Y h
)%%h i
{&& 
m_ActivePartition'' !
=''" #
activePartition''$ 3
;''3 4%
m_NormalizedPartitionSize(( )
=((* +#
normalizedPartitionSize((, C
;((C D%
m_LastCachedMousePosition)) )
=))* +
currentMousePos)), ;
;)); <
}** 
}++ 	
;++	 

private,, 
static,, 
	DragCache,,  
s_DragCache,," -
;,,- .
private.. 
static.. 
readonly.. 
int..  #
s_CascadeSliderId..$ 5
=..6 7
$str..8 K
...K L
GetHashCode..L W
(..W X
)..X Y
;..Y Z
private00 
static00 
	SceneView00  
s_RestoreSceneView00! 3
;003 4
private11 
static11 
	SceneView11  
.11  !

CameraMode11! +
s_OldSceneDrawMode11, >
;11> ?
private22 
static22 
bool22 "
s_OldSceneLightingMode22 2
;222 3
public;; 
static;; 
void;; "
HandleCascadeSliderGUI;; 1
(;;1 2
ref;;2 5
float;;6 ;
[;;; <
];;< ='
normalizedCascadePartitions;;> Y
,;;Y Z
float;;[ `
distance;;a i
,;;i j
EditorUtils;;k v
.;;v w
Unit;;w {
unit	;;| �
)
;;� �
{<< 	
	EditorGUI== 
.== 
indentLevel== !
--==! #
;==# $
EditorGUILayout>> 
.>> 
BeginHorizontal>> +
(>>+ ,
)>>, -
;>>- .
	GUILayout?? 
.?? 
Space?? 
(?? 
	EditorGUI?? %
.??% &
indentLevel??& 1
*??2 3
$num??4 7
)??7 8
;??8 9
varEE 

sliderRectEE 
=EE 
GUILayoutUtilityEE -
.EE- .
GetRectEE. 5
(EE5 6

GUIContentEE6 @
.EE@ A
noneEEA E
,FF 
s_CascadeSliderBGFF '
,GG 
	GUILayoutGG 
.GG  
HeightGG  &
(GG& '
kSliderbarTopMarginGG' :
+GG; <
kSliderbarHeightGG= M
+GGN O"
kSliderbarBottomMarginGGP f
)GGf g
,HH 
	GUILayoutHH 
.HH  
ExpandWidthHH  +
(HH+ ,
trueHH, 0
)HH0 1
)HH1 2
;HH2 3
GUIII 
.II 
BoxII 
(II 

sliderRectII 
,II 

GUIContentII  *
.II* +
noneII+ /
)II/ 0
;II0 1
EditorGUILayoutKK 
.KK 

(KK) *
)KK* +
;KK+ ,
floatMM 
currentXMM 
=MM 

sliderRectMM '
.MM' (
xMM( )
;MM) *
floatNN 
cascadeBoxStartYNN "
=NN# $

sliderRectNN% /
.NN/ 0
yNN0 1
+NN2 3
kSliderbarTopMarginNN4 G
;NNG H
floatOO 
cascadeSliderWidthOO $
=OO% &

sliderRectOO' 1
.OO1 2
widthOO2 7
-OO8 9
(OO: ;'
normalizedCascadePartitionsOO; V
.OOV W
LengthOOW ]
*OO^ _!
kPartitionHandleWidthOO` u
)OOu v
;OOv w
ColorPP 

=PP  !
GUIPP" %
.PP% &
colorPP& +
;PP+ ,
ColorQQ 
origBackgroundColorQQ %
=QQ& '
GUIQQ( +
.QQ+ ,
backgroundColorQQ, ;
;QQ; <
intRR 

colorIndexRR 
=RR 
-RR 
$numRR 
;RR  
floatUU 
[UU 
]UU %
adjustedCascadePartitionsUU -
=UU. /
newUU0 3
floatUU4 9
[UU9 :'
normalizedCascadePartitionsUU: U
.UUU V
LengthUUV \
+UU] ^
$numUU_ `
]UU` a
;UUa b
SystemVV 
.VV 
ArrayVV 
.VV 
CopyVV 
(VV '
normalizedCascadePartitionsVV 9
,VV9 :%
adjustedCascadePartitionsVV; T
,VVT U'
normalizedCascadePartitionsVVV q
.VVq r
LengthVVr x
)VVx y
;VVy z%
adjustedCascadePartitionsWW %
[WW% &%
adjustedCascadePartitionsWW& ?
.WW? @
LengthWW@ F
-WWG H
$numWWI J
]WWJ K
=WWL M
$numWWN R
-WWS T'
normalizedCascadePartitionsWWU p
.WWp q
SumWWq t
(WWt u
)WWu v
;WWv w
stringYY 
cascadeTextYY 
=YY  
$strYY! #
;YY# $
int\\ 
sliderControlId\\ 
=\\  !

GUIUtility\\" ,
.\\, -
GetControlID\\- 9
(\\9 :
s_CascadeSliderId\\: K
,\\K L
	FocusType\\M V
.\\V W
Passive\\W ^
)\\^ _
;\\_ `
Event]] 
currentEvent]] 
=]]  
Event]]! &
.]]& '
current]]' .
;]]. /
int^^ #
hotPartitionHandleIndex^^ '
=^^( )
-^^* +
$num^^+ ,
;^^, -
foraa 
(aa 
intaa 
iaa 
=aa 
$numaa 
;aa 
iaa 
<aa %
adjustedCascadePartitionsaa  9
.aa9 :
Lengthaa: @
;aa@ A
++aaB D
iaaD E
)aaE F
{bb 
floatcc 
currentPartitioncc &
=cc' (%
adjustedCascadePartitionscc) B
[ccB C
iccC D
]ccD E
;ccE F

colorIndexee 
=ee 
(ee 

colorIndexee (
+ee) *
$numee+ ,
)ee, -
%ee. /
kCascadeColorsee0 >
.ee> ?
Lengthee? E
;eeE F
GUIff 
.ff 
backgroundColorff #
=ff$ %
kCascadeColorsff& 4
[ff4 5

colorIndexff5 ?
]ff? @
;ff@ A
floatgg 
	boxLengthgg 
=gg  !
(gg" #
cascadeSliderWidthgg# 5
*gg6 7
currentPartitiongg8 H
)ggH I
;ggI J
Rectjj 

=jj# $
newjj% (
Rectjj) -
(jj- .
currentXjj. 6
,jj6 7
cascadeBoxStartYjj8 H
,jjH I
	boxLengthjjJ S
,jjS T
kSliderbarHeightjjU e
)jje f
;jjf g
GUIkk 
.kk 
Boxkk 
(kk 

,kk% &

GUIContentkk' 1
.kk1 2
nonekk2 6
,kk6 7
s_CascadeSliderBGkk8 I
)kkI J
;kkJ K
currentXll 
+=ll 
	boxLengthll %
;ll% &
GUIoo 
.oo 
coloroo 
=oo 
Coloroo !
.oo! "
whiteoo" '
;oo' (
Rectpp 
textRectpp 
=pp 

;pp- .
ifrr 
(rr 
unitrr 
==rr 
EditorUtilsrr '
.rr' (
Unitrr( ,
.rr, -
Percentrr- 4
)rr4 5
{ss 
cascadeTexttt 
=tt  !
$"tt" $
{tt$ %
itt% &
+tt& '
$numtt' (
}tt( )
\ntt) +
{tt+ ,
currentPartitiontt, <
*tt= >
$numtt? E
:ttE F
F1ttF H
}ttH I
%ttI J
"ttJ K
;ttK L
}uu 
elsevv 
{ww 
varxx 
mxx 
=xx 
currentPartitionxx ,
*xx, -
distancexx. 6
;xx6 7
cascadeTextyy 
=yy  !
$"yy" $
{yy$ %
iyy% &
+yy& '
$numyy' (
}yy( )
\nyy) +
{yy+ ,
myy, -
:yy- .
F1yy. 0
}yy0 1
myy1 2
"yy2 3
;yy3 4
}zz 
GUI|| 
.|| 
Label|| 
(|| 
textRect|| "
,||" #
cascadeText||$ /
,||/ 0
s_TextCenteredStyle||1 D
)||D E
;||E F
if 
( 
i 
== %
adjustedCascadePartitions 2
.2 3
Length3 9
-: ;
$num< =
)= >
break
�� 
;
�� 
GUI
�� 
.
�� 
backgroundColor
�� #
=
��$ %
Color
��& +
.
��+ ,
black
��, 1
;
��1 2
Rect
�� 

handleRect
�� 
=
��  !

��" /
;
��/ 0

handleRect
�� 
.
�� 
x
�� 
=
�� 
currentX
�� '
;
��' (

handleRect
�� 
.
�� 
width
��  
=
��! "#
kPartitionHandleWidth
��# 8
;
��8 9
GUI
�� 
.
�� 
Box
�� 
(
�� 

handleRect
�� "
,
��" #

GUIContent
��$ .
.
��. /
none
��/ 3
,
��3 4
s_CascadeSliderBG
��5 F
)
��F G
;
��G H
Rect
�� 

�� "
=
��# $

handleRect
��% /
;
��/ 0

�� 
.
�� 
xMin
�� "
-=
��# %/
!kPartitionHandleExtraHitAreaWidth
��& G
;
��G H

�� 
.
�� 
xMax
�� "
+=
��# %/
!kPartitionHandleExtraHitAreaWidth
��& G
;
��G H
if
�� 
(
�� 

�� !
.
��! "
Contains
��" *
(
��* +
currentEvent
��+ 7
.
��7 8

��8 E
)
��E F
)
��F G%
hotPartitionHandleIndex
�� +
=
��, -
i
��. /
;
��/ 0
if
�� 
(
�� 
s_DragCache
�� 
==
��  "
null
��# '
)
��' (
{
�� 
EditorGUIUtility
�� $
.
��$ %

��% 2
(
��2 3

��3 @
,
��@ A
MouseCursor
��B M
.
��M N
ResizeHorizontal
��N ^
,
��^ _
sliderControlId
��` o
)
��o p
;
��p q
}
�� 
currentX
�� 
+=
�� #
kPartitionHandleWidth
�� 1
;
��1 2
}
�� 
GUI
�� 
.
�� 
color
�� 
=
�� 

�� %
;
��% &
GUI
�� 
.
�� 
backgroundColor
�� 
=
��  !!
origBackgroundColor
��" 5
;
��5 6
	EventType
�� 
	eventType
�� 
=
��  !
currentEvent
��" .
.
��. /
GetTypeForControl
��/ @
(
��@ A
sliderControlId
��A P
)
��P Q
;
��Q R
switch
�� 
(
�� 
	eventType
�� 
)
�� 
{
�� 
case
�� 
	EventType
�� 
.
�� 
	MouseDown
�� (
:
��( )
if
�� 
(
�� %
hotPartitionHandleIndex
�� /
>=
��0 2
$num
��3 4
)
��4 5
{
�� 
s_DragCache
�� #
=
��$ %
new
��& )
	DragCache
��* 3
(
��3 4%
hotPartitionHandleIndex
��4 K
,
��K L)
normalizedCascadePartitions
��M h
[
��h i&
hotPartitionHandleIndex��i �
]��� �
,��� �
currentEvent��� �
.��� �

)��� �
;��� �
if
�� 
(
�� 

GUIUtility
�� &
.
��& '

hotControl
��' 1
==
��2 4
$num
��5 6
)
��6 7

GUIUtility
�� &
.
��& '

hotControl
��' 1
=
��2 3
sliderControlId
��4 C
;
��C D
currentEvent
�� $
.
��$ %
Use
��% (
(
��( )
)
��) *
;
��* +
if
�� 
(
��  
s_RestoreSceneView
�� .
==
��/ 1
null
��2 6
)
��6 7
{
��  
s_RestoreSceneView
�� .
=
��/ 0
	SceneView
��1 :
.
��: ;!
lastActiveSceneView
��; N
;
��N O
if
�� 
(
��   
s_RestoreSceneView
��  2
!=
��3 5
null
��6 :
)
��: ;
{
��  
s_OldSceneDrawMode
��  2
=
��3 4 
s_RestoreSceneView
��5 G
.
��G H

cameraMode
��H R
;
��R S$
s_OldSceneLightingMode
��  6
=
��7 8 
s_RestoreSceneView
��9 K
.
��K L

��L Y
;
��Y Z
}
�� 
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
	EventType
�� 
.
�� 
MouseUp
�� &
:
��& '
if
�� 
(
�� 

GUIUtility
�� "
.
��" #

hotControl
��# -
==
��. 0
sliderControlId
��1 @
)
��@ A
{
�� 

GUIUtility
�� "
.
��" #

hotControl
��# -
=
��. /
$num
��0 1
;
��1 2
currentEvent
�� $
.
��$ %
Use
��% (
(
��( )
)
��) *
;
��* +
}
�� 
s_DragCache
�� 
=
��  !
null
��" &
;
��& '
if
�� 
(
��  
s_RestoreSceneView
�� *
!=
��+ -
null
��. 2
)
��2 3
{
��  
s_RestoreSceneView
�� *
.
��* +

cameraMode
��+ 5
=
��6 7 
s_OldSceneDrawMode
��8 J
;
��J K 
s_RestoreSceneView
�� *
.
��* +

��+ 8
=
��9 :$
s_OldSceneLightingMode
��; Q
;
��Q R 
s_RestoreSceneView
�� *
=
��+ ,
null
��- 1
;
��1 2
}
�� 
break
�� 
;
�� 
case
�� 
	EventType
�� 
.
�� 
	MouseDrag
�� (
:
��( )
if
�� 
(
�� 

GUIUtility
�� "
.
��" #

hotControl
��# -
!=
��. 0
sliderControlId
��1 @
)
��@ A
break
�� 
;
�� 
float
�� 
delta
�� 
=
��  !
(
��" #
currentEvent
��# /
.
��/ 0

��0 =
-
��> ?
s_DragCache
��@ K
.
��K L'
m_LastCachedMousePosition
��L e
)
��e f
.
��f g
x
��g h
/
��i j 
cascadeSliderWidth
��k }
;
��} ~
bool
�� "
isLeftPartitionHappy
�� -
=
��. /
(
��0 1
(
��1 2'
adjustedCascadePartitions
��2 K
[
��K L
s_DragCache
��L W
.
��W X
m_ActivePartition
��X i
]
��i j
+
��k l
delta
��m r
)
��r s
>
��t u
$num
��v z
)
��z {
;
��{ |
bool
�� #
isRightPartitionHappy
�� .
=
��/ 0
(
��1 2
(
��2 3'
adjustedCascadePartitions
��3 L
[
��L M
s_DragCache
��M X
.
��X Y
m_ActivePartition
��Y j
+
��k l
$num
��m n
]
��n o
-
��p q
delta
��r w
)
��w x
>
��y z
$num
��{ 
)�� �
;��� �
if
�� 
(
�� "
isLeftPartitionHappy
�� ,
&&
��- /#
isRightPartitionHappy
��0 E
)
��E F
{
�� 
s_DragCache
�� #
.
��# $'
m_NormalizedPartitionSize
��$ =
+=
��> @
delta
��A F
;
��F G)
normalizedCascadePartitions
�� 3
[
��3 4
s_DragCache
��4 ?
.
��? @
m_ActivePartition
��@ Q
]
��Q R
=
��S T
s_DragCache
��U `
.
��` a'
m_NormalizedPartitionSize
��a z
;
��z {
if
�� 
(
�� 
s_DragCache
�� '
.
��' (
m_ActivePartition
��( 9
<
��: ;)
normalizedCascadePartitions
��< W
.
��W X
Length
��X ^
-
��_ `
$num
��a b
)
��b c)
normalizedCascadePartitions
�� 7
[
��7 8
s_DragCache
��8 C
.
��C D
m_ActivePartition
��D U
+
��V W
$num
��X Y
]
��Y Z
-=
��[ ]
delta
��^ c
;
��c d
GUI
�� 
.
�� 
changed
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
s_DragCache
�� 
.
��  '
m_LastCachedMousePosition
��  9
=
��: ;
currentEvent
��< H
.
��H I

��I V
;
��V W
currentEvent
��  
.
��  !
Use
��! $
(
��$ %
)
��% &
;
��& '
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �S
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\EditablePath.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
[ 
Serializable 
] 
internal 
class
EditablePath 
:  !

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
private 
	ShapeType 
m_ShapeType %
;% &
[ 	
SerializeField	 
] 
private
IndexedSelection
m_Selection
=
new
IndexedSelection
(
)
;
[ 	
SerializeField	 
] 
private 
List 
< 
ControlPoint !
>! "
m_ControlPoints# 2
=3 4
new5 8
List9 =
<= >
ControlPoint> J
>J K
(K L
)L M
;M N
[ 	
SerializeField	 
] 
private 
bool 

;" #
private 
	Matrix4x4  
m_LocalToWorldMatrix .
=/ 0
	Matrix4x41 :
.: ;
identity; C
;C D
private 
	Matrix4x4  
m_WorldToLocalMatrix .
=/ 0
	Matrix4x41 :
.: ;
identity; C
;C D
private 
Vector3 
	m_Forward !
=" #
Vector3$ +
.+ ,
forward, 3
;3 4
private 
Vector3 
m_Up 
= 
Vector3 &
.& '
up' )
;) *
private 
Vector3 
m_Right 
=  !
Vector3" )
.) *
right* /
;/ 0
public 
	ShapeType 
	shapeType "
{ 	
get 
{ 
return 
m_ShapeType $
;$ %
}& '
set 
{ 
m_ShapeType 
= 
value  %
;% &
}' (
} 	
public 
IUndoObject 

undoObject %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public   
	Matrix4x4   
localToWorldMatrix   +
{!! 	
get"" 
{"" 
return""  
m_LocalToWorldMatrix"" -
;""- .
}""/ 0
set## 
{$$ 
m_LocalToWorldMatrix%% $
=%%% &
value%%' ,
;%%, - 
m_WorldToLocalMatrix&& $
=&&% &
value&&' ,
.&&, -
inverse&&- 4
;&&4 5
}'' 
}(( 	
public** 
Vector3** 
forward** 
{++ 	
get,, 
{,, 
return,, 
	m_Forward,, "
;,," #
},,$ %
set-- 
{-- 
	m_Forward-- 
=-- 
value-- #
;--# $
}--% &
}.. 	
public00 
Vector300 
up00 
{11 	
get22 
{22 
return22 
m_Up22 
;22 
}22  
set33 
{33 
m_Up33 
=33 
value33 
;33 
}33  !
}44 	
public66 
Vector366 
right66 
{77 	
get88 
{88 
return88 
m_Right88  
;88  !
}88" #
set99 
{99 
m_Right99 
=99 
value99 !
;99! "
}99# $
}:: 	
public<< 
	Matrix4x4<< 
worldToLocalMatrix<< +
{== 	
get>> 
{>> 
return>>  
m_WorldToLocalMatrix>> -
;>>- .
}>>/ 0
}?? 	
publicAA 
boolAA 
isOpenEndedAA 
{BB 	
getCC 
{DD 
ifEE 
(EE 

pointCountEE 
<EE  
$numEE! "
)EE" #
returnFF 
trueFF 
;FF  
returnHH 

;HH$ %
}II 
setJJ 
{JJ 

=JJ  !
valueJJ" '
;JJ' (
}JJ) *
}KK 	
publicMM 

ISelectionMM 
<MM 
intMM 
>MM 
	selectionMM (
{NN 	
getOO 
{OO 
returnOO 
m_SelectionOO $
;OO$ %
}OO& '
}PP 	
publicRR 
intRR 

pointCountRR 
{SS 	
getTT 
{TT 
returnTT 
m_ControlPointsTT (
.TT( )
CountTT) .
;TT. /
}TT0 1
}UU 	
publicWW 
ControlPointWW 
GetPointWW $
(WW$ %
intWW% (
indexWW) .
)WW. /
{XX 	
returnYY 
TransformPointYY !
(YY! "
localToWorldMatrixYY" 4
,YY4 5
m_ControlPointsYY6 E
[YYE F
indexYYF K
]YYK L
)YYL M
;YYM N
}ZZ 	
public\\ 
void\\ 
SetPoint\\ 
(\\ 
int\\  
index\\! &
,\\& '
ControlPoint\\( 4
controlPoint\\5 A
)\\A B
{]] 	
m_ControlPoints^^ 
[^^ 
index^^ !
]^^! "
=^^# $
TransformPoint^^% 3
(^^3 4
worldToLocalMatrix^^4 F
,^^F G
controlPoint^^H T
)^^T U
;^^U V
}__ 	
publicaa 
voidaa 
AddPointaa 
(aa 
ControlPointaa )
controlPointaa* 6
)aa6 7
{bb 	
m_ControlPointscc 
.cc 
Insertcc "
(cc" #

pointCountcc# -
,cc- .
TransformPointcc/ =
(cc= >
worldToLocalMatrixcc> P
,ccP Q
controlPointccR ^
)cc^ _
)cc_ `
;cc` a
}dd 	
publicff 
voidff 
InsertPointff 
(ff  
intff  #
indexff$ )
,ff) *
ControlPointff+ 7
controlPointff8 D
)ffD E
{gg 	
m_ControlPointshh 
.hh 
Inserthh "
(hh" #
indexhh# (
,hh( )
TransformPointhh* 8
(hh8 9
worldToLocalMatrixhh9 K
,hhK L
controlPointhhM Y
)hhY Z
)hhZ [
;hh[ \
}ii 	
publickk 
voidkk 
RemovePointkk 
(kk  
intkk  #
indexkk$ )
)kk) *
{ll 	
m_ControlPointsmm 
.mm 
RemoveAtmm $
(mm$ %
indexmm% *
)mm* +
;mm+ ,
}nn 	
publicpp 
voidpp 
Clearpp 
(pp 
)pp 
{qq 	
m_ControlPointsrr 
.rr 
Clearrr !
(rr! "
)rr" #
;rr# $
}ss 	
privateuu 
ControlPointuu 
TransformPointuu +
(uu+ ,
	Matrix4x4uu, 5
transformMatrixuu6 E
,uuE F
ControlPointuuG S
controlPointuuT `
)uu` a
{vv 	
ifww 
(ww 
transformMatrixww 
==ww  "
	Matrix4x4ww# ,
.ww, -
identityww- 5
)ww5 6
returnxx 
controlPointxx #
;xx# $
varzz 
newControlPointzz 
=zz  !
newzz" %
ControlPointzz& 2
(zz2 3
)zz3 4
{{{ 
position|| 
=|| 
transformMatrix|| *
.||* +
MultiplyPoint3x4||+ ;
(||; <
controlPoint||< H
.||H I
position||I Q
)||Q R
,||R S
tangentMode}} 
=}} 
controlPoint}} *
.}}* +
tangentMode}}+ 6
,}}6 7
continuousCache~~ 
=~~  !
controlPoint~~" .
.~~. /
continuousCache~~/ >
,~~> ?
brokenCache 
= 
controlPoint *
.* +
brokenCache+ 6
,6 7

mirrorLeft
�� 
=
�� 
controlPoint
�� )
.
��) *

mirrorLeft
��* 4
}
�� 
;
��
newControlPoint
�� 
.
�� 
rightTangent
�� (
=
��) *
transformMatrix
��+ :
.
��: ;
MultiplyPoint3x4
��; K
(
��K L
controlPoint
��L X
.
��X Y
rightTangent
��Y e
)
��e f
;
��f g
newControlPoint
�� 
.
�� 
leftTangent
�� '
=
��( )
transformMatrix
��* 9
.
��9 :
MultiplyPoint3x4
��: J
(
��J K
controlPoint
��K W
.
��W X
leftTangent
��X c
)
��c d
;
��d e
return
�� 
newControlPoint
�� "
;
��" #
}
�� 	
public
�� 
bool
�� 
Select
�� 
(
�� 
	ISelector
�� $
<
��$ %
Vector3
��% ,
>
��, -
selector
��. 6
)
��6 7
{
�� 	
var
�� 
changed
�� 
=
�� 
false
�� 
;
��  
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
�� 

pointCount
��  *
;
��* +
++
��, .
i
��. /
)
��/ 0
changed
�� 
|=
�� 
	selection
�� $
.
��$ %
Select
��% +
(
��+ ,
i
��, -
,
��- .
selector
��/ 7
.
��7 8
Select
��8 >
(
��> ?
GetPoint
��? G
(
��G H
i
��H I
)
��I J
.
��J K
position
��K S
)
��S T
)
��T U
;
��U V
return
�� 
changed
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Overrides\MotionBlurEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ !
VolumeComponentEditor 
( 
typeof !
(! "

MotionBlur" ,
), -
)- .
]. /
sealed 

class 
MotionBlurEditor !
:" #!
VolumeComponentEditor$ 9
{ #
SerializedDataParameter		 
	m_Quality		  )
;		) *#
SerializedDataParameter

 
m_Intensity

  +
;

+ ,#
SerializedDataParameter 
m_Clamp  '
;' (
public
override
void
OnEnable
(
)
{ 	
var 
o 
= 
new 
PropertyFetcher '
<' (

MotionBlur( 2
>2 3
(3 4
serializedObject4 D
)D E
;E F
	m_Quality 
= 
Unpack 
( 
o  
.  !
Find! %
(% &
x& '
=>( *
x+ ,
., -
quality- 4
)4 5
)5 6
;6 7
m_Intensity 
= 
Unpack  
(  !
o! "
." #
Find# '
(' (
x( )
=>* ,
x- .
.. /
	intensity/ 8
)8 9
)9 :
;: ;
m_Clamp 
= 
Unpack 
( 
o 
. 
Find #
(# $
x$ %
=>& (
x) *
.* +
clamp+ 0
)0 1
)1 2
;2 3
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	

( 
	m_Quality '
)' (
;( )

( 
m_Intensity )
)) *
;* +

( 
m_Clamp %
)% &
;& '
}%% 	
}&& 
}'' �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\View\CreatePointAction.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class
CreatePointAction $
:% &
ClickAction' 2
{ 
private		 
Control		 
m_PointControl		 &
;		& '
public 
Func 
< 
	IGUIState 
, 
Vector2 &
,& '
Vector3( /
>/ 0

guiToWorld1 ;
;; <
public 
Action 
< 
int 
, 
Vector3 "
>" #

;1 2
public
CreatePointAction
(
Control
pointControl
,
Control
edgeControl
)
:
base
(
edgeControl
,
$num
,
false
)
{ 	
m_PointControl 
= 
pointControl )
;) *
} 	
	protected 
override 
void 
	OnTrigger  )
() *
	IGUIState* 3
guiState4 <
)< =
{ 	
base 
. 
	OnTrigger 
( 
guiState #
)# $
;$ %
var 
index 
= 
hoveredControl &
.& '

layoutData' 1
.1 2
index2 7
;7 8
var 
position 
= !
GetMousePositionWorld 0
(0 1
guiState1 9
)9 :
;: ;
if 
( 

!=  
null! %
)% &

( 
index #
,# $
position% -
)- .
;. /
guiState 
. 
nearestControl #
=$ %
m_PointControl& 4
.4 5
ID5 7
;7 8
var 
data 
= 
m_PointControl %
.% &

layoutData& 0
;0 1
data 
. 
index 
= 
index 
+  
$num! "
;" #
data   
.   
position   
=   
position   $
;  $ %
data!! 
.!! 
distance!! 
=!! 
$num!! 
;!! 
m_PointControl## 
.## 

layoutData## %
=##& '
data##( ,
;##, -
guiState%% 
.%% 
changed%% 
=%% 
true%% #
;%%# $
}&& 	
private(( 
Vector3(( !
GetMousePositionWorld(( -
(((- .
	IGUIState((. 7
guiState((8 @
)((@ A
{)) 	
if** 
(** 

guiToWorld** 
!=** 
null** "
)**" #
return++ 

guiToWorld++ !
(++! "
guiState++" *
,++* +
guiState++, 4
.++4 5

)++B C
;++C D
return-- 
guiState-- 
.-- 

GUIToWorld-- &
(--& '
guiState--' /
.--/ 0

,--= >
hoveredControl--? M
.--M N

layoutData--N X
.--X Y
forward--Y `
,--` a
hoveredControl--b p
.--p q

layoutData--q {
.--{ |
position	--| �
)
--� �
;
--� �
}.. 	
}// 
}00 �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\IEditablePathController.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
	interface
IEditablePathController .
{ 

editablePath "
{# $
get% (
;( )
set* -
;- .
}/ 0

closestEditablePath		 )
{		* +
get		, /
;		/ 0
}		1 2
	ISnapping

 
<

 
Vector3

 
>

 
snapping

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
bool 
enableSnapping
{ 
get !
;! "
set# &
;& '
}( )
void 
RegisterUndo
( 
string  
name! %
)% &
;& '
void
ClearSelection
(
)
;
void 
SelectPoint
( 
int 
index "
," #
bool$ (
select) /
)/ 0
;0 1
void 
CreatePoint
( 
int 
index "
," #
Vector3$ +
position, 4
)4 5
;5 6
void  
RemoveSelectedPoints
(! "
)" #
;# $
void 
MoveSelectedPoints
(  
Vector3  '
delta( -
)- .
;. /
void 
MoveEdge
( 
int 
index 
,  
Vector3! (
delta) .
). /
;/ 0
void 
SetLeftTangent
( 
int 
index  %
,% &
Vector3' .
position/ 7
,7 8
bool9 =
setToLinear> I
,I J
boolK O
mirrorP V
,V W
Vector3X _
cachedRightTangent` r
)r s
;s t
void 
SetRightTangent
( 
int  
index! &
,& '
Vector3( /
position0 8
,8 9
bool: >
setToLinear? J
,J K
boolL P
mirrorQ W
,W X
Vector3Y `
cachedLeftTangenta r
)r s
;s t
void 
ClearClosestPath
( 
) 
;  
void 
AddClosestPath
( 
float !
distance" *
)* +
;+ ,
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\AssetPostProcessors\PhysicalMaterial3DsMaxPreprocessor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class
"PhysicalMaterial3DsMaxPreprocessor
 ,
:
AssetPostprocessor
{ 
static 
readonly 
uint 
	k_Version &
=' (
$num) *
;* +
static 
readonly 
int 
k_Order #
=$ %
$num& '
;' (
static 
readonly 
string 
k_ShaderPath +
=, -
$str	. �
;
� �
static 
readonly 
string #
k_ShaderTransparentPath 6
=7 8
$str	9 �
;
� �
public 
override 
uint 

GetVersion '
(' (
)( )
{ 	
return 
	k_Version 
; 
} 	
public 
override 
int 
GetPostprocessOrder /
(/ 0
)0 1
{ 	
return 
k_Order 
; 
} 	
static 
bool $
Is3DsMaxPhysicalMaterial ,
(, -
MaterialDescription- @
descriptionA L
)L M
{ 	
float   
classIdA   
;   
float!! 
classIdB!! 
;!! 
description"" 
."" 
TryGetProperty"" &
(""& '
$str""' 1
,""1 2
out""3 6
classIdA""7 ?
)""? @
;""@ A
description## 
.## 
TryGetProperty## &
(##& '
$str##' 1
,##1 2
out##3 6
classIdB##7 ?
)##? @
;##@ A
return$$ 
classIdA$$ 
==$$ 
$num$$ )
&&$$* ,
classIdB$$- 5
==$$6 8
-$$9 :
$num$$: C
;$$C D
}%% 	
static'' 
bool'' .
"Is3DsMaxSimplifiedPhysicalMaterial'' 6
(''6 7
MaterialDescription''7 J
description''K V
)''V W
{(( 	
float)) 
classIdA)) 
;)) 
float** 
classIdB** 
;** 
float++ 

;++  
description,, 
.,, 
TryGetProperty,, &
(,,& '
$str,,' 1
,,,1 2
out,,3 6
classIdA,,7 ?
),,? @
;,,@ A
description-- 
.-- 
TryGetProperty-- &
(--& '
$str--' 1
,--1 2
out--3 6
classIdB--7 ?
)--? @
;--@ A
description.. 
... 
TryGetProperty.. &
(..& '
$str..' 6
,..6 7
out..8 ;

)..I J
;..J K
return00 
classIdA00 
==00 
-00  
$num00  )
&&00* ,
classIdB00- 5
==006 8
-009 :
$num00: D
&&00E G

==00V X
$num00Y ]
;00] ^
}11 	
public33 
void33 +
OnPreprocessMaterialDescription33 3
(333 4
MaterialDescription334 G
description33H S
,33S T
Material33U ]
material33^ f
,33f g

[33u v
]33v w
clips33x }
)33} ~
{44 	
var55 

=55 
GraphicsSettings55  0
.550 1!
currentRenderPipeline551 F
;55F G
if66 
(66 
!66 

||66 !

.66/ 0
GetType660 7
(667 8
)668 9
!=66: <
typeof66= C
(66C D(
UniversalRenderPipelineAsset66D `
)66` a
)66a b
return77 
;77 
if99 
(99 $
Is3DsMaxPhysicalMaterial99 (
(99( )
description99) 4
)994 5
)995 6
{:: 
CreateFrom3DsPhysicalMaterial;; -
(;;- .
description;;. 9
,;;9 :
material;;; C
,;;C D
clips;;E J
);;J K
;;;K L
}<< 
else== 
if== 
(== .
"Is3DsMaxSimplifiedPhysicalMaterial== 7
(==7 8
description==8 C
)==C D
)==D E
{>> 
'CreateFrom3DsSimplifiedPhysicalMaterial?? 7
(??7 8
description??8 C
,??C D
material??E M
,??M N
clips??O T
)??T U
;??U V
}@@ 
}AA 	
voidCC 3
'CreateFrom3DsSimplifiedPhysicalMaterialCC
(CC4 5
MaterialDescriptionCC5 H
descriptionCCI T
,CCT U
MaterialCCV ^
materialCC_ g
,CCg h

[CCv w
]CCw x
clipsCCy ~
)CC~ 
{DD 	
floatEE 

;EE  
Vector4FF 
vectorPropertyFF "
;FF" #&
TexturePropertyDescriptionGG &
texturePropertyGG' 6
;GG6 7
descriptionII 
.II 
TryGetPropertyII &
(II& '
$strII' 2
,II2 3
outII4 7
vectorPropertyII8 F
)IIF G
;IIG H
boolJJ !
hasTransparencyScalarJJ &
=JJ' (
vectorPropertyJJ) 7
.JJ7 8
wJJ8 9
!=JJ: <
$numJJ< @
;JJ@ A
varKK 
hasTransparencyMapKK "
=KK# $
descriptionKK% 0
.KK0 1
TryGetPropertyKK1 ?
(KK? @
$strKK@ M
,KKM N
outKKO R
texturePropertyKKS b
)KKb c
;KKc d
boolLL 

=LL  
hasTransparencyMapLL! 3
|LL4 5!
hasTransparencyScalarLL6 K
;LLK L
ShaderOO 
shaderOO 
;OO 
ifPP 
(PP 

)PP 
shaderQQ 
=QQ 
GraphicsSettingsQQ )
.QQ) *!
currentRenderPipelineQQ* ?
.QQ? @0
$autodeskInteractiveTransparentShaderQQ@ d
;QQd e
elseRR 
shaderSS 
=SS 
GraphicsSettingsSS )
.SS) *!
currentRenderPipelineSS* ?
.SS? @%
autodeskInteractiveShaderSS@ Y
;SSY Z
ifUU 
(UU 
shaderUU 
==UU 
nullUU 
)UU 
returnVV 
;VV 
materialXX 
.XX 
shaderXX 
=XX 
shaderXX $
;XX$ %
foreachYY 
(YY 
varYY 
clipYY 
inYY  
clipsYY! &
)YY& '
{ZZ 
clip[[ 
.[[ 
ClearCurves[[  
([[  !
)[[! "
;[[" #
}\\ 
if^^ 
(^^ 
hasTransparencyMap^^ "
)^^" #
{__ 
material`` 
.`` 
SetFloat`` !
(``! "
$str``" 2
,``2 3
$num``4 8
)``8 9
;``9 :
materialaa 
.aa 

SetTextureaa #
(aa# $
$straa$ 1
,aa1 2
texturePropertyaa3 B
.aaB C
textureaaC J
)aaJ K
;aaK L
}bb 
elsecc 
ifcc 
(cc !
hasTransparencyScalarcc *
)cc* +
{dd 
materialee 
.ee 
SetFloatee !
(ee! "
$stree" ,
,ee, -
vectorPropertyee. <
.ee< =
wee= >
)ee> ?
;ee? @
}ff 
ifhh 
(hh 
descriptionhh 
.hh 
TryGetPropertyhh *
(hh* +
$strhh+ 6
,hh6 7
outhh8 ;
vectorPropertyhh< J
)hhJ K
)hhK L
materialii 
.ii 
SetColorii !
(ii! "
$strii" *
,ii* +
vectorPropertyii, :
)ii: ;
;ii; <
ifkk 
(kk 
descriptionkk 
.kk 
TryGetPropertykk *
(kk* +
$strkk+ 7
,kk7 8
outkk9 <
vectorPropertykk= K
)kkK L
)kkL M
materialll 
.ll 
SetColorll !
(ll! "
$strll" 2
,ll2 3
vectorPropertyll4 B
)llB C
;llC D
ifnn 
(nn 
descriptionnn 
.nn 
TryGetPropertynn *
(nn* +
$strnn+ 6
,nn6 7
outnn8 ;

)nnI J
)nnJ K
materialoo 
.oo 
SetFloatoo !
(oo! "
$stroo" /
,oo/ 0

)oo> ?
;oo? @
ifqq 
(qq 
descriptionqq 
.qq 
TryGetPropertyqq *
(qq* +
$strqq+ 6
,qq6 7
outqq8 ;

)qqI J
)qqJ K
materialrr 
.rr 
SetFloatrr !
(rr! "
$strrr" -
,rr- .

)rr< =
;rr= >
iftt 
(tt 
descriptiontt 
.tt 
TryGetPropertytt *
(tt* +
$strtt+ ;
,tt; <
outtt= @
texturePropertyttA P
)ttP Q
)ttQ R
{uu 
materialvv 
.vv 

SetTexturevv #
(vv# $
$strvv$ .
,vv. /
texturePropertyvv0 ?
.vv? @
texturevv@ G
)vvG H
;vvH I
materialww 
.ww 
SetFloatww !
(ww! "
$strww" 0
,ww0 1
$numww2 6
)ww6 7
;ww7 8
materialxx 
.xx 
SetColorxx !
(xx! "
$strxx" -
,xx- .
newxx/ 2
Vector4xx3 :
(xx: ;
texturePropertyxx; J
.xxJ K
scalexxK P
.xxP Q
xxxQ R
,xxR S
texturePropertyxxT c
.xxc d
scalexxd i
.xxi j
yxxj k
,xxk l
$numxxm q
,xxq r
$numxxs w
)xxw x
)xxx y
;xxy z
materialyy 
.yy 
SetColoryy !
(yy! "
$stryy" -
,yy- .
newyy/ 2
Vector4yy3 :
(yy: ;
texturePropertyyy; J
.yyJ K
offsetyyK Q
.yyQ R
xyyR S
,yyS T
texturePropertyyyU d
.yyd e
offsetyye k
.yyk l
yyyl m
,yym n
$numyyo s
,yys t
$numyyu y
)yyy z
)yyz {
;yy{ |
}zz 
else{{ 
{|| 
material}} 
.}} 
SetFloat}} !
(}}! "
$str}}" 0
,}}0 1
$num}}2 6
)}}6 7
;}}7 8
}~~ 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ 5
,
��5 6
out
��7 :
textureProperty
��; J
)
��J K
)
��K L
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ .
,
��. /
textureProperty
��0 ?
.
��? @
texture
��@ G
)
��G H
;
��H I
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 1
,
��1 2
$num
��3 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 1
,
��1 2
$num
��3 7
)
��7 8
;
��8 9
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ :
,
��: ;
out
��< ?
textureProperty
��@ O
)
��O P
)
��P Q
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ 3
,
��3 4
textureProperty
��5 D
.
��D E
texture
��E L
)
��L M
;
��M N
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 4
,
��4 5
$num
��6 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 4
,
��4 5
$num
��6 :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ :
,
��: ;
out
��< ?
textureProperty
��@ O
)
��O P
)
��P Q
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ 7
,
��7 8
textureProperty
��9 H
.
��H I
texture
��I P
)
��P Q
;
��Q R
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ ;
,
��; <
out
��= @
textureProperty
��A P
)
��P Q
)
��Q R
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ 2
,
��2 3
textureProperty
��4 C
.
��C D
texture
��D K
)
��K L
;
��L M
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ 3
,
��3 4
out
��5 8
textureProperty
��9 H
)
��H I
)
��I J
{
�� 
var
�� 
tex
�� 
=
�� 

�� '
.
��' (
LoadAssetAtPath
��( 7
<
��7 8
Texture
��8 ?
>
��? @
(
��@ A
textureProperty
��A P
.
��P Q
relativePath
��Q ]
)
��] ^
;
��^ _
material
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ +
,
��+ ,
tex
��- 0
)
��0 1
;
��1 2
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" ,
,
��, -
$num
��. 2
)
��2 3
;
��3 4
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
$str
��" ,
,
��, -
$num
��. 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
void
�� +
CreateFrom3DsPhysicalMaterial
��
(
��* +!
MaterialDescription
��+ >
description
��? J
,
��J K
Material
��L T
material
��U ]
,
��] ^

��_ l
[
��l m
]
��m n
clips
��o t
)
��t u
{
�� 	
float
�� 

�� 
;
��  
Vector4
�� 
vectorProperty
�� "
;
��" #(
TexturePropertyDescription
�� &
textureProperty
��' 6
;
��6 7
Shader
�� 
shader
�� 
;
�� 
description
�� 
.
�� 
TryGetProperty
�� &
(
��& '
$str
��' 5
,
��5 6
out
��7 :

��; H
)
��H I
;
��I J
bool
��  
hasTransparencyMap
�� #
=
��$ %
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ =
,
��= >
out
��? B
textureProperty
��C R
)
��R S
;
��S T
if
�� 
(
�� 

�� 
>
�� 
$num
��  $
||
��% ' 
hasTransparencyMap
��( :
)
��: ;
{
�� 
shader
�� 
=
�� 

�� &
.
��& '
LoadAssetAtPath
��' 6
<
��6 7
Shader
��7 =
>
��= >
(
��> ?%
k_ShaderTransparentPath
��? V
)
��V W
;
��W X
if
�� 
(
�� 
shader
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 
material
�� 
.
�� 
shader
�� 
=
��  !
shader
��" (
;
��( )
if
�� 
(
��  
hasTransparencyMap
�� &
)
��& '
{
�� 
material
�� 
.
�� 

SetTexture
�� '
(
��' (
$str
��( ;
,
��; <
textureProperty
��= L
.
��L M
texture
��M T
)
��T U
;
��U V
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 5
,
��5 6
$num
��7 ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 5
,
��5 6

��7 D
)
��D E
;
��E F
}
�� 
}
�� 
else
�� 
{
�� 
shader
�� 
=
�� 

�� &
.
��& '
LoadAssetAtPath
��' 6
<
��6 7
Shader
��7 =
>
��= >
(
��> ?
k_ShaderPath
��? K
)
��K L
;
��L M
if
�� 
(
�� 
shader
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 
material
�� 
.
�� 
shader
�� 
=
��  !
shader
��" (
;
��( )
}
�� 
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
clip
�� 
.
�� 
ClearCurves
��  
(
��  !
)
��! "
;
��" #
}
�� 
RemapPropertyFloat
�� 
(
�� 
description
�� *
,
��* +
material
��, 4
,
��4 5
$str
��6 C
,
��C D
$str
��E Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +
$str
��+ ;
,
��; <
out
��= @
textureProperty
��A P
)
��P Q
)
��Q R
{
�� 
SetMaterialTextureProperty
�� *
(
��* +
$str
��+ <
,
��< =
material
��> F
,
��F G
textureProperty
��H W
)
��W X
;
��X Y
}
�� 
else
�� 
if
�� 
(
�� 
description
��  
.
��  !
TryGetProperty
��! /
(
��/ 0
$str
��0 <
,
��< =
out
��> A
vectorProperty
��B P
)
��P Q
)
��Q R
{
�� 
if
�� 
(
�� 
QualitySettings
�� #
.
��# $
activeColorSpace
��$ 4
==
��5 7

ColorSpace
��8 B
.
��B C
Gamma
��C H
)
��H I
{
�� 
vectorProperty
�� "
.
��" #
x
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
x
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
y
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
y
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
z
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
z
��O P
)
��P Q
;
��Q R
vectorProperty
�� "
.
��" #
w
��# $
=
��% &
Mathf
��' ,
.
��, - 
LinearToGammaSpace
��- ?
(
��? @
vectorProperty
��@ N
.
��N O
w
��O P
)
��P Q
;
��Q R
}
�� 
material
�� 
.
�� 
SetColor
�� !
(
��! "
$str
��" /
,
��/ 0
vectorProperty
��1 ?
)
��? @
;
��@ A
}
�� 
RemapPropertyFloat
�� 
(
�� 
description
�� *
,
��* +
material
��, 4
,
��4 5
$str
��6 D
,
��D E
$str
��F [
)
��[ \
;
��\ ])
RemapPropertyTextureOrColor
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? K
,
��K L
$str
��M a
)
��a b
;
��b c)
RemapPropertyTextureOrFloat
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? J
,
��J K
$str
��L X
)
��X Y
;
��Y Z)
RemapPropertyTextureOrFloat
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? J
,
��J K
$str
��L d
)
��d e
;
��e f)
RemapPropertyTextureOrFloat
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? J
,
��J K
$str
��L ^
)
��^ _
;
��_ ` 
RemapPropertyFloat
�� 
(
�� 
description
�� *
,
��* +
material
��, 4
,
��4 5
$str
��6 @
,
��@ A
$str
��B T
)
��T U
;
��U V)
RemapPropertyTextureOrColor
�� '
(
��' (
description
��( 3
,
��3 4
material
��5 =
,
��= >
$str
��? K
,
��K L
$str
��M ^
)
��^ _
;
��_ ` 
RemapPropertyFloat
�� 
(
�� 
description
�� *
,
��* +
material
��, 4
,
��4 5
$str
��6 D
,
��D E
$str
��F Z
)
��Z [
;
��[ \"
RemapPropertyTexture
��  
(
��  !
description
��! ,
,
��, -
material
��. 6
,
��6 7
$str
��8 B
,
��B C
$str
��D O
)
��O P
;
��P Q
}
�� 	
static
�� 
void
�� (
SetMaterialTextureProperty
�� .
(
��. /
string
��/ 5
propertyName
��6 B
,
��B C
Material
��D L
material
��M U
,
��U V(
TexturePropertyDescription
�� &
textureProperty
��' 6
)
��6 7
{
�� 	
material
�� 
.
�� 

SetTexture
�� 
(
��  
propertyName
��  ,
,
��, -
textureProperty
��. =
.
��= >
texture
��> E
)
��E F
;
��F G
material
�� 
.
�� 
SetTextureOffset
�� %
(
��% &
propertyName
��& 2
,
��2 3
textureProperty
��4 C
.
��C D
offset
��D J
)
��J K
;
��K L
material
�� 
.
�� 
SetTextureScale
�� $
(
��$ %
propertyName
��% 1
,
��1 2
textureProperty
��3 B
.
��B C
scale
��C H
)
��H I
;
��I J
}
�� 	
static
�� 
void
��  
RemapPropertyFloat
�� &
(
��& '!
MaterialDescription
��' :
description
��; F
,
��F G
Material
��H P
material
��Q Y
,
��Y Z
string
��[ a

inPropName
��b l
,
��l m
string
�� 
outPropName
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :
float
��; @

��A N
)
��N O
)
��O P
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .

��/ <
)
��< =
;
��= >
}
�� 
}
�� 	
static
�� 
void
�� "
RemapPropertyTexture
�� (
(
��( )!
MaterialDescription
��) <
description
��= H
,
��H I
Material
��J R
material
��S [
,
��[ \
string
��] c

inPropName
��d n
,
��n o
string
�� 
outPropName
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
,
��5 6
out
��7 :(
TexturePropertyDescription
��; U
textureProperty
��V e
)
��e f
)
��f g
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
,
��/ 0
textureProperty
��1 @
.
��@ A
texture
��A H
)
��H I
;
��I J
}
�� 
}
�� 	
static
�� 
void
�� )
RemapPropertyTextureOrColor
�� /
(
��/ 0!
MaterialDescription
��0 C
description
��D O
,
��O P
Material
��Q Y
material
��Z b
,
��b c
string
�� 

inPropName
�� 
,
�� 
string
�� %
outPropName
��& 1
)
��1 2
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
+
��6 7
$str
��8 >
,
��> ?
out
��@ C(
TexturePropertyDescription
��D ^
textureProperty
��_ n
)
��n o
)
��o p
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
Color
��/ 4
.
��4 5
white
��5 :
)
��: ;
;
��; <
}
�� 
else
�� 
if
�� 
(
�� 
description
�� 
.
��  
TryGetProperty
��  .
(
��. /

inPropName
��/ 9
,
��9 :
out
��; >
Vector4
��? F
color
��G L
)
��L M
)
��M N
{
�� 
material
�� 
.
�� 
SetColor
�� !
(
��! "
outPropName
��" -
,
��- .
color
��/ 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
static
�� 
void
�� )
RemapPropertyTextureOrFloat
�� /
(
��/ 0!
MaterialDescription
��0 C
description
��D O
,
��O P
Material
��Q Y
material
��Z b
,
��b c
string
�� 

inPropName
�� 
,
�� 
string
�� %
outPropName
��& 1
)
��1 2
{
�� 	
if
�� 
(
�� 
description
�� 
.
�� 
TryGetProperty
�� *
(
��* +

inPropName
��+ 5
+
��6 7
$str
��8 >
,
��> ?
out
��@ C(
TexturePropertyDescription
��D ^
textureProperty
��_ n
)
��n o
)
��o p
{
�� 
material
�� 
.
�� 

SetTexture
�� #
(
��# $
outPropName
��$ /
+
��0 1
$str
��2 8
,
��8 9
textureProperty
��: I
.
��I J
texture
��J Q
)
��Q R
;
��R S
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .
$num
��/ 3
)
��3 4
;
��4 5
}
�� 
else
�� 
if
�� 
(
�� 
description
�� 
.
��  
TryGetProperty
��  .
(
��. /

inPropName
��/ 9
,
��9 :
out
��; >
float
��? D

��E R
)
��R S
)
��S T
{
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
outPropName
��" -
,
��- .

��/ <
)
��< =
;
��= >
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\ShadingModels\LitGUI.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
	ShaderGUI* 3
{ 
[ 
	MovedFrom 
( 
$str 5
)5 6
]6 7
public8 >
static? E
classF K
LitGUIL R
{		 
public

 
enum

 
WorkflowMode

  
{ 	
Specular 
= 
$num 
, 
Metallic
} 	
public 
enum  
SmoothnessMapChannel (
{ 	!
SpecularMetallicAlpha !
,! "
AlbedoAlpha 
, 
} 	
public 
static 
class 
Styles "
{ 	
public 
static 

GUIContent $
workflowModeText% 5
=6 7
new8 ;

GUIContent< F
(F G
$strG V
,V W
$str a
)a b
;b c
public 
static 

GUIContent $
specularMapText% 4
=5 6
new 

GUIContent 
( 
$str -
,- .
$str/ q
)q r
;r s
public 
static 

GUIContent $
metallicMapText% 4
=5 6
new 

GUIContent 
( 
$str -
,- .
$str/ g
)g h
;h i
public!! 
static!! 

GUIContent!! $
smoothnessText!!% 3
=!!4 5
new!!6 9

GUIContent!!: D
(!!D E
$str!!E Q
,!!Q R
$str"" S
)""S T
;""T U
public$$ 
static$$ 

GUIContent$$ $$
smoothnessMapChannelText$$% =
=$$> ?
new%% 

GUIContent%% 
(%% 
$str%% '
,%%' (
$str&& w
)&&w x
;&&x y
public(( 
static(( 

GUIContent(( $
highlightsText((% 3
=((4 5
new((6 9

GUIContent((: D
(((D E
$str((E Z
,((Z [
$str)) U
)))U V
;))V W
public++ 
static++ 

GUIContent++ $
reflectionsText++% 4
=++5 6
new,, 

GUIContent,, 
(,, 
$str,, 8
,,,8 9
$str-- z
)--z {
;--{ |
public// 
static// 

GUIContent// $

=//3 4
new//5 8

GUIContent//9 C
(//C D
$str//D P
,//P Q
$str00 A
)00A B
;00B C
public22 
static22 

GUIContent22 $

=223 4
new225 8

GUIContent229 C
(22C D
$str22D S
,22S T
$str33 T
)33T U
;33U V
public55 
static55 
readonly55 "
string55# )
[55) *
]55* +*
metallicSmoothnessChannelNames55, J
=55K L
{55M N
$str55N ^
,55^ _
$str55` n
}55n o
;55o p
public66 
static66 
readonly66 "
string66# )
[66) *
]66* +*
specularSmoothnessChannelNames66, J
=66K L
{66M N
$str66N ^
,66^ _
$str66` n
}66n o
;66o p
public88 
static88 

GUIContent88 $

=885 6
new887 :

GUIContent88; E
(88E F
$str88F R
,88R S
$str99 x
+99y z
$str:: r
)::r s
;::s t
public<< 
static<< 

GUIContent<< $
clearCoatMaskText<<% 6
=<<9 :
new<<; >

GUIContent<<? I
(<<I J
$str<<J P
,<<P Q
$str== <
+=== >
$str>> {
+>>| }
$str?? x
)??x y
;??y z
publicAA 
staticAA 

GUIContentAA $#
clearCoatSmoothnessTextAA% <
=AA= >
newAA? B

GUIContentAAC M
(AAM N
$strAAN Z
,AAZ [
$strBB :
+BB; <
$str	CC �
)
CC� �
;
CC� �
}DD 	
publicFF 
structFF 

{GG 	
publicII 
MaterialPropertyII #
workflowModeII$ 0
;II0 1
publicLL 
MaterialPropertyLL #
metallicLL$ ,
;LL, -
publicMM 
MaterialPropertyMM #
	specColorMM$ -
;MM- .
publicNN 
MaterialPropertyNN #
metallicGlossMapNN$ 4
;NN4 5
publicOO 
MaterialPropertyOO #
specGlossMapOO$ 0
;OO0 1
publicPP 
MaterialPropertyPP #

smoothnessPP$ .
;PP. /
publicQQ 
MaterialPropertyQQ # 
smoothnessMapChannelQQ$ 8
;QQ8 9
publicRR 
MaterialPropertyRR #
bumpMapPropRR$ /
;RR/ 0
publicSS 
MaterialPropertySS #

;SS1 2
publicTT 
MaterialPropertyTT #
parallaxMapPropTT$ 3
;TT3 4
publicUU 
MaterialPropertyUU #
parallaxScalePropUU$ 5
;UU5 6
publicVV 
MaterialPropertyVV #
occlusionStrengthVV$ 5
;VV5 6
publicWW 
MaterialPropertyWW #
occlusionMapWW$ 0
;WW0 1
publicZZ 
MaterialPropertyZZ #

highlightsZZ$ .
;ZZ. /
public[[ 
MaterialProperty[[ #
reflections[[$ /
;[[/ 0
public]] 
MaterialProperty]] #
	clearCoat]]$ -
;]]- .
public^^ 
MaterialProperty^^ #
clearCoatMap^^$ 0
;^^0 1
public__ 
MaterialProperty__ #

;__1 2
public`` 
MaterialProperty`` #
clearCoatSmoothness``$ 7
;``7 8
publicbb 

(bb  !
MaterialPropertybb! 1
[bb1 2
]bb2 3

propertiesbb4 >
)bb> ?
{cc 
workflowModeee 
=ee 

.ee, -
FindPropertyee- 9
(ee9 :
$stree: I
,eeI J

propertieseeK U
,eeU V
falseeeW \
)ee\ ]
;ee] ^
metallicgg 
=gg 

.gg( )
FindPropertygg) 5
(gg5 6
$strgg6 A
,ggA B

propertiesggC M
)ggM N
;ggN O
	specColorhh 
=hh 

.hh) *
FindPropertyhh* 6
(hh6 7
$strhh7 C
,hhC D

propertieshhE O
,hhO P
falsehhQ V
)hhV W
;hhW X
metallicGlossMapii  
=ii! "

.ii0 1
FindPropertyii1 =
(ii= >
$strii> Q
,iiQ R

propertiesiiS ]
)ii] ^
;ii^ _
specGlossMapjj 
=jj 

.jj, -
FindPropertyjj- 9
(jj9 :
$strjj: I
,jjI J

propertiesjjK U
,jjU V
falsejjW \
)jj\ ]
;jj] ^

smoothnesskk 
=kk 

.kk* +
FindPropertykk+ 7
(kk7 8
$strkk8 E
,kkE F

propertieskkG Q
,kkQ R
falsekkS X
)kkX Y
;kkY Z 
smoothnessMapChannelll $
=ll% &

.ll4 5
FindPropertyll5 A
(llA B
$strllB ]
,ll] ^

propertiesll_ i
,lli j
falsellk p
)llp q
;llq r
bumpMapPropmm 
=mm 

.mm+ ,
FindPropertymm, 8
(mm8 9
$strmm9 C
,mmC D

propertiesmmE O
,mmO P
falsemmQ V
)mmV W
;mmW X

=nn 

.nn- .
FindPropertynn. :
(nn: ;
$strnn; G
,nnG H

propertiesnnI S
,nnS T
falsennU Z
)nnZ [
;nn[ \
parallaxMapPropoo 
=oo  !

.oo/ 0
FindPropertyoo0 <
(oo< =
$stroo= K
,ooK L

propertiesooM W
,ooW X
falseooY ^
)oo^ _
;oo_ `
parallaxScaleProppp !
=pp" #

.pp1 2
FindPropertypp2 >
(pp> ?
$strpp? J
,ppJ K

propertiesppL V
,ppV W
falseppX ]
)pp] ^
;pp^ _
occlusionStrengthqq !
=qq" #

.qq1 2
FindPropertyqq2 >
(qq> ?
$strqq? S
,qqS T

propertiesqqU _
,qq_ `
falseqqa f
)qqf g
;qqg h
occlusionMaprr 
=rr 

.rr, -
FindPropertyrr- 9
(rr9 :
$strrr: I
,rrI J

propertiesrrK U
,rrU V
falserrW \
)rr\ ]
;rr] ^

highlightstt 
=tt 

.tt* +
FindPropertytt+ 7
(tt7 8
$strtt8 M
,ttM N

propertiesttO Y
,ttY Z
falsett[ `
)tt` a
;tta b
reflectionsuu 
=uu 

.uu+ ,
FindPropertyuu, 8
(uu8 9
$struu9 R
,uuR S

propertiesuuT ^
,uu^ _
falseuu` e
)uue f
;uuf g
	clearCoatww 
=ww$ %

.ww3 4
FindPropertyww4 @
(ww@ A
$strwwA M
,wwM N

propertieswwO Y
,wwY Z
falseww[ `
)ww` a
;wwa b
clearCoatMapxx 
=xx$ %

.xx3 4
FindPropertyxx4 @
(xx@ A
$strxxA P
,xxP Q

propertiesxxR \
,xx\ ]
falsexx^ c
)xxc d
;xxd e

=yy$ %

.yy3 4
FindPropertyyy4 @
(yy@ A
$stryyA Q
,yyQ R

propertiesyyS ]
,yy] ^
falseyy_ d
)yyd e
;yye f
clearCoatSmoothnesszz #
=zz$ %

.zz3 4
FindPropertyzz4 @
(zz@ A
$strzzA W
,zzW X

propertieszzY c
,zzc d
falsezze j
)zzj k
;zzk l
}{{ 
}|| 	
public~~ 
static~~ 
void~~ 
Inputs~~ !
(~~! "


properties~~0 :
,~~: ;
MaterialEditor~~< J
materialEditor~~K Y
,~~Y Z
Material~~[ c
material~~d l
)~~l m
{ 	$
DoMetallicSpecularArea
�� "
(
��" #

properties
��# -
,
��- .
materialEditor
��/ =
,
��= >
material
��? G
)
��G H
;
��H I

�� 
.
�� 
DrawNormalArea
�� (
(
��( )
materialEditor
��) 7
,
��7 8

properties
��9 C
.
��C D
bumpMapProp
��D O
,
��O P

properties
��Q [
.
��[ \

��\ i
)
��i j
;
��j k
if
�� 
(
��  
HeightmapAvailable
�� "
(
��" #
material
��# +
)
��+ ,
)
��, -
DoHeightmapArea
�� 
(
��  

properties
��  *
,
��* +
materialEditor
��, :
)
��: ;
;
��; <
if
�� 
(
�� 

properties
�� 
.
�� 
occlusionMap
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @

��@ M
,
��M N

properties
��O Y
.
��Y Z
occlusionMap
��Z f
,
��f g

properties
�� 
.
�� 
occlusionMap
�� +
.
��+ ,
textureValue
��, 8
!=
��9 ;
null
��< @
?
��A B

properties
��C M
.
��M N
occlusionStrength
��N _
:
��` a
null
��b f
)
��f g
;
��g h
}
�� 
if
�� 
(
��  
ClearCoatAvailable
�� "
(
��" #
material
��# +
)
��+ ,
)
��, -
DoClearCoat
�� 
(
�� 

properties
�� &
,
��& '
materialEditor
��( 6
,
��6 7
material
��8 @
)
��@ A
;
��A B
}
�� 	
private
�� 
static
�� 
bool
��  
ClearCoatAvailable
�� .
(
��. /
Material
��/ 7
material
��8 @
)
��@ A
{
�� 	
return
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ 7
)
��7 8
&&
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ :
)
��: ;
&&
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ ;
)
��; <
&&
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ A
)
��A B
;
��B C
}
�� 	
private
�� 
static
�� 
bool
��  
HeightmapAvailable
�� .
(
��. /
Material
��/ 7
material
��8 @
)
��@ A
{
�� 	
return
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ 6
)
��6 7
&&
�� 
material
�� 
.
�� 
HasProperty
�� *
(
��* +
$str
��+ 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
static
�� 
void
�� 
DoHeightmapArea
�� +
(
��+ ,

��, 9

properties
��: D
,
��D E
MaterialEditor
��F T
materialEditor
��U c
)
��c d
{
�� 	
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 4
(
��4 5
Styles
��5 ;
.
��; <

��< I
,
��I J

properties
��K U
.
��U V
parallaxMapProp
��V e
,
��e f

properties
�� 
.
�� 
parallaxMapProp
�� *
.
��* +
textureValue
��+ 7
!=
��8 :
null
��; ?
?
��@ A

properties
��B L
.
��L M
parallaxScaleProp
��M ^
:
��_ `
null
��a e
)
��e f
;
��f g
}
�� 	
private
�� 
static
�� 
bool
�� 
ClearCoatEnabled
�� ,
(
��, -
Material
��- 5
material
��6 >
)
��> ?
{
�� 	
return
�� 
material
�� 
.
�� 
HasProperty
�� '
(
��' (
$str
��( 4
)
��4 5
&&
��6 8
material
��9 A
.
��A B
GetFloat
��B J
(
��J K
$str
��K W
)
��W X
>
��Y Z
$num
��[ ^
;
��^ _
}
�� 	
public
�� 
static
�� 
void
�� 
DoClearCoat
�� &
(
��& '

��' 4

properties
��5 ?
,
��? @
MaterialEditor
��A O
materialEditor
��P ^
,
��^ _
Material
��` h
material
��i q
)
��q r
{
�� 	
var
�� 
coatEnabled
�� 
=
�� 
ClearCoatEnabled
�� .
(
��. /
material
��/ 7
)
��7 8
;
��8 9
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
��( )
	EditorGUI
�� 
.
�� 
Toggle
�� 
(
�� 
EditorGUILayout
�� ,
.
��, -
GetControlRect
��- ;
(
��; <
)
��< =
,
��= >
Styles
��? E
.
��E F

��F S
,
��S T
coatEnabled
��U `
)
��a b
;
��b c
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� '
(
��' (
)
��( )
)
��) *
{
�� 
if
�� 
(
�� 
coatEnabled
�� 
)
�� 
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
else
�� 
material
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
coatEnabled
�� 
=
�� 
!
�� 
coatEnabled
�� *
;
��* +
}
�� 
	EditorGUI
�� 
.
��  
BeginDisabledGroup
�� (
(
��( )
!
��) *
coatEnabled
��* 5
)
��5 6
;
��6 7
{
�� 
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @
clearCoatMaskText
��@ Q
,
��Q R

properties
��S ]
.
��] ^
clearCoatMap
��^ j
,
��j k

properties
��l v
.
��v w

)��� �
;��� �
	EditorGUI
�� 
.
�� 
indentLevel
�� %
+=
��& (
$num
��) *
;
��* +
materialEditor
�� "
.
��" #
ShaderProperty
��# 1
(
��1 2

properties
��2 <
.
��< =!
clearCoatSmoothness
��= P
,
��Q R
Styles
��S Y
.
��Y Z%
clearCoatSmoothnessText
��Z q
)
��q r
;
��r s
	EditorGUI
�� 
.
�� 
indentLevel
�� %
-=
��& (
$num
��) *
;
��* +
}
�� 
	EditorGUI
�� 
.
�� 
EndDisabledGroup
�� &
(
��& '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
void
�� $
DoMetallicSpecularArea
�� 1
(
��1 2

��2 ?

properties
��@ J
,
��J K
MaterialEditor
��L Z
materialEditor
��[ i
,
��i j
Material
��k s
material
��t |
)
��| }
{
�� 	
string
�� 
[
�� 
]
�� $
smoothnessChannelNames
�� +
;
��+ ,
bool
�� 
hasGlossMap
�� 
=
�� 
false
�� $
;
��$ %
if
�� 
(
�� 

properties
�� 
.
�� 
workflowMode
�� '
==
��( *
null
��+ /
||
��0 2
(
�� 
WorkflowMode
�� 
)
�� 

properties
�� )
.
��) *
workflowMode
��* 6
.
��6 7

floatValue
��7 A
==
��B D
WorkflowMode
��E Q
.
��Q R
Metallic
��R Z
)
��Z [
{
�� 
hasGlossMap
�� 
=
�� 

properties
�� (
.
��( )
metallicGlossMap
��) 9
.
��9 :
textureValue
��: F
!=
��G I
null
��J N
;
��N O$
smoothnessChannelNames
�� &
=
��' (
Styles
��) /
.
��/ 0,
metallicSmoothnessChannelNames
��0 N
;
��N O
materialEditor
�� 
.
�� '
TexturePropertySingleLine
�� 8
(
��8 9
Styles
��9 ?
.
��? @
metallicMapText
��@ O
,
��O P

properties
��Q [
.
��[ \
metallicGlossMap
��\ l
,
��l m
hasGlossMap
�� 
?
��  !
null
��" &
:
��' (

properties
��) 3
.
��3 4
metallic
��4 <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 
hasGlossMap
�� 
=
�� 

properties
�� (
.
��( )
specGlossMap
��) 5
.
��5 6
textureValue
��6 B
!=
��C E
null
��F J
;
��J K$
smoothnessChannelNames
�� &
=
��' (
Styles
��) /
.
��/ 0,
specularSmoothnessChannelNames
��0 N
;
��N O

�� 
.
�� 
TextureColorProps
�� /
(
��/ 0
materialEditor
��0 >
,
��> ?
Styles
��@ F
.
��F G
specularMapText
��G V
,
��V W

properties
��X b
.
��b c
specGlossMap
��c o
,
��o p
hasGlossMap
�� 
?
��  !
null
��" &
:
��' (

properties
��) 3
.
��3 4
	specColor
��4 =
)
��= >
;
��> ?
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
DoSmoothness
�� 
(
�� 

properties
�� #
,
��# $
material
��% -
,
��- .$
smoothnessChannelNames
��/ E
)
��E F
;
��F G
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
}
�� 	
public
�� 
static
�� 
void
�� 
DoSmoothness
�� '
(
��' (

��( 5

properties
��6 @
,
��@ A
Material
��B J
material
��K S
,
��S T
string
��U [
[
��[ \
]
��\ ]$
smoothnessChannelNames
��^ t
)
��t u
{
�� 	
var
�� 
opaque
�� 
=
�� 
(
�� 
(
�� 

�� (
.
��( )
SurfaceType
��) 4
)
��4 5
material
��6 >
.
��> ?
GetFloat
��? G
(
��G H
$str
��H R
)
��R S
==
��T V

�� '
.
��' (
SurfaceType
��( 3
.
��3 4
Opaque
��4 :
)
��: ;
;
��; <
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
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
��( )
	EditorGUI
�� 
.
�� 
showMixedValue
�� $
=
��% &

properties
��' 1
.
��1 2

smoothness
��2 <
.
��< =

��= J
;
��J K
var
�� 

smoothness
�� 
=
�� 
EditorGUILayout
�� ,
.
��, -
Slider
��- 3
(
��3 4
Styles
��4 :
.
��: ;
smoothnessText
��; I
,
��I J

properties
��K U
.
��U V

smoothness
��V `
.
��` a

floatValue
��a k
,
��k l
$num
��m o
,
��o p
$num
��q s
)
��s t
;
��t u
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
��* +

properties
�� 
.
�� 

smoothness
�� %
.
��% &

floatValue
��& 0
=
��1 2

smoothness
��3 =
;
��= >
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
�� 

properties
�� 
.
�� "
smoothnessMapChannel
�� /
!=
��0 2
null
��3 7
)
��7 8
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� %
++
��% '
;
��' (
	EditorGUI
�� 
.
��  
BeginDisabledGroup
�� ,
(
��, -
!
��- .
opaque
��. 4
)
��4 5
;
��5 6
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
�� 
showMixedValue
�� (
=
��) *

properties
��+ 5
.
��5 6"
smoothnessMapChannel
��6 J
.
��J K

��K X
;
��X Y
var
�� 
smoothnessSource
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,

properties
��- 7
.
��7 8"
smoothnessMapChannel
��8 L
.
��L M

floatValue
��M W
;
��W X
if
�� 
(
�� 
opaque
�� 
)
�� 
smoothnessSource
�� $
=
��% &
EditorGUILayout
��' 6
.
��6 7
Popup
��7 <
(
��< =
Styles
��= C
.
��C D&
smoothnessMapChannelText
��D \
,
��\ ]
smoothnessSource
��^ n
,
��n o$
smoothnessChannelNames
�� .
)
��. /
;
��/ 0
else
�� 
EditorGUILayout
�� #
.
��# $
Popup
��$ )
(
��) *
Styles
��* 0
.
��0 1&
smoothnessMapChannelText
��1 I
,
��I J
$num
��K L
,
��L M$
smoothnessChannelNames
��N d
)
��d e
;
��e f
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
��. /

properties
�� 
.
�� "
smoothnessMapChannel
�� 3
.
��3 4

floatValue
��4 >
=
��? @
smoothnessSource
��A Q
;
��Q R
	EditorGUI
�� 
.
�� 
showMixedValue
�� (
=
��) *
false
��+ 0
;
��0 1
	EditorGUI
�� 
.
�� 
EndDisabledGroup
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
�� 
indentLevel
�� %
--
��% '
;
��' (
}
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
}
�� 	
public
�� 
static
�� "
SmoothnessMapChannel
�� *%
GetSmoothnessMapChannel
��+ B
(
��B C
Material
��C K
material
��L T
)
��T U
{
�� 	
int
�� 
ch
�� 
=
�� 
(
�� 
int
�� 
)
�� 
material
�� #
.
��# $
GetFloat
��$ ,
(
��, -
$str
��- H
)
��H I
;
��I J
if
�� 
(
�� 
ch
�� 
==
�� 
(
�� 
int
�� 
)
�� "
SmoothnessMapChannel
�� 0
.
��0 1
AlbedoAlpha
��1 <
)
��< =
return
�� "
SmoothnessMapChannel
�� +
.
��+ ,
AlbedoAlpha
��, 7
;
��7 8
return
�� "
SmoothnessMapChannel
�� '
.
��' (#
SpecularMetallicAlpha
��( =
;
��= >
}
�� 	
public
�� 
static
�� 
void
�� !
SetMaterialKeywords
�� .
(
��. /
Material
��/ 7
material
��8 @
)
��@ A
{
�� 	
var
�� 
hasGlossMap
�� 
=
�� 
false
�� #
;
��# $
var
��  
isSpecularWorkFlow
�� "
=
��# $
false
��% *
;
��* +
var
�� 
opaque
�� 
=
�� 
(
�� 
(
�� 

�� (
.
��( )
SurfaceType
��) 4
)
��4 5
material
��6 >
.
��> ?
GetFloat
��? G
(
��G H
$str
��H R
)
��R S
==
��T V

�� '
.
��' (
SurfaceType
��( 3
.
��3 4
Opaque
��4 :
)
��: ;
;
��; <
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% 4
)
��4 5
)
��5 6
{
�� 
isSpecularWorkFlow
�� "
=
��# $
(
��% &
WorkflowMode
��& 2
)
��2 3
material
��4 <
.
��< =
GetFloat
��= E
(
��E F
$str
��F U
)
��U V
==
��W Y
WorkflowMode
��Z f
.
��f g
Specular
��g o
;
��o p
if
�� 
(
��  
isSpecularWorkFlow
�� &
)
��& '
hasGlossMap
�� 
=
��  !
material
��" *
.
��* +

GetTexture
��+ 5
(
��5 6
$str
��6 E
)
��E F
!=
��G I
null
��J N
;
��N O
else
�� 
hasGlossMap
�� 
=
��  !
material
��" *
.
��* +

GetTexture
��+ 5
(
��5 6
$str
��6 I
)
��I J
!=
��K M
null
��N R
;
��R S
}
�� 
else
�� 
{
�� 
hasGlossMap
�� 
=
�� 
material
�� &
.
��& '

GetTexture
��' 1
(
��1 2
$str
��2 E
)
��E F
!=
��G I
null
��J N
;
��N O
}
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
��  
(
��  !
material
��! )
,
��) *
$str
��+ <
,
��< = 
isSpecularWorkFlow
��> P
)
��P Q
;
��Q R
	CoreUtils
�� 
.
�� 

SetKeyword
��  
(
��  !
material
��! )
,
��) *
$str
��+ B
,
��B C
hasGlossMap
��D O
)
��O P
;
��P Q
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% :
)
��: ;
)
��; <
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ H
,
��H I
material
�� 
.
�� 
GetFloat
�� %
(
��% &
$str
��& ;
)
��; <
==
��= ?
$num
��@ D
)
��D E
;
��E F
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% >
)
��> ?
)
��? @
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ L
,
��L M
material
�� 
.
�� 
GetFloat
�� %
(
��% &
$str
��& ?
)
��? @
==
��A C
$num
��D H
)
��H I
;
��I J
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% 4
)
��4 5
)
��5 6
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ >
,
��> ?
material
��@ H
.
��H I

GetTexture
��I S
(
��S T
$str
��T c
)
��c d
)
��d e
;
��e f
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% 3
)
��3 4
)
��4 5
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ =
,
��= >
material
��? G
.
��G H

GetTexture
��H R
(
��R S
$str
��S a
)
��a b
)
��b c
;
��c d
if
�� 
(
�� 
material
�� 
.
�� 
HasProperty
�� $
(
��$ %
$str
��% @
)
��@ A
)
��A B
{
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ U
,
��U V%
GetSmoothnessMapChannel
�� +
(
��+ ,
material
��, 4
)
��4 5
==
��6 8"
SmoothnessMapChannel
��9 M
.
��M N
AlbedoAlpha
��N Y
&&
��Z \
opaque
��] c
)
��c d
;
��d e
}
�� 
if
�� 
(
�� 
ClearCoatEnabled
��  
(
��  !
material
��! )
)
��) *
)
��* +
{
�� 
var
�� 
hasMap
�� 
=
�� 
material
�� %
.
��% &
HasProperty
��& 1
(
��1 2
$str
��2 A
)
��A B
&&
��C E
material
��F N
.
��N O

GetTexture
��O Y
(
��Y Z
$str
��Z i
)
��i j
!=
��k m
null
��n r
;
��r s
if
�� 
(
�� 
hasMap
�� 
)
�� 
{
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
material
��) 1
,
��1 2
$str
��3 ?
,
��? @
false
��A F
)
��F G
;
��G H
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
material
��) 1
,
��1 2
$str
��3 B
,
��B C
true
��D H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
material
��) 1
,
��1 2
$str
��3 ?
,
��? @
true
��A E
)
��E F
;
��F G
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
material
��) 1
,
��1 2
$str
��3 B
,
��B C
false
��D I
)
��I J
;
��J K
}
�� 
}
�� 
else
�� 
{
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ ;
,
��; <
false
��= B
)
��B C
;
��C D
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .
$str
��/ >
,
��> ?
false
��@ E
)
��E F
;
��F G
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\Shapes\IShape.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
enum
	ShapeType 
{ 
Polygon		 
,		 
Spline

 
} 
internal
	interface
IShape
{ 
	ShapeType 
type 
{ 
get 
; 
} 
bool 
isOpenEnded
{ 
get 
; 
}  !
ControlPoint 
[ 
] 
ToControlPoints &
(& '
)' (
;( )
} 
} �Q
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\EditablePath\MultipleEditablePathController.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{ 
internal 
class
MultipleEditablePathController 1
:2 3#
IEditablePathController4 K
{ 
private		 #
IEditablePathController		 '
m_Controller		( 4
=		5 6
new		7 :"
EditablePathController		; Q
(		Q R
)		R S
;		S T
private

 
List

 
<

 


 "
>

" #
m_Paths

$ +
=

, -
new

. 1
List

2 6
<

6 7


7 D
>

D E
(

E F
)

F G
;

G H
private 
float 
m_ClosestDistance '
=( )
float* /
./ 0
MaxValue0 8
;8 9
private 


;+ ,
public 

editablePath )
{ 	
get 
{ 
return 
m_Controller %
.% &
editablePath& 2
;2 3
}4 5
set 
{ 
m_Controller 
. 
editablePath +
=, -
value. 3
;3 4
}5 6
} 	
public 

closestEditablePath 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public 
	ISnapping 
< 
Vector3  
>  !
snapping" *
{ 	
get 
{ 
return 
m_Controller %
.% &
snapping& .
;. /
}0 1
set 
{ 
m_Controller 
. 
snapping '
=( )
value* /
;/ 0
}1 2
} 	
public 
bool 
enableSnapping "
{ 	
get 
{ 
return 
m_Controller %
.% &
enableSnapping& 4
;4 5
}6 7
set 
{ 
m_Controller 
. 
enableSnapping -
=. /
value0 5
;5 6
}7 8
}   	
public"" 
void"" 

ClearPaths"" 
("" 
)""  
{## 	
m_Paths$$ 
.$$ 
Clear$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
void'' 
AddPath'' 
('' 

path''* .
)''. /
{(( 	
if)) 
()) 
!)) 
m_Paths)) 
.)) 
Contains)) !
())! "
path))" &
)))& '
)))' (
m_Paths** 
.** 
Add** 
(** 
path**  
)**  !
;**! "
}++ 	
public-- 
void-- 

RemovePath-- 
(-- 

path--- 1
)--1 2
{.. 	
m_Paths// 
.// 
Remove// 
(// 
path// 
)//  
;//  !
}00 	
public22 
void22 
RegisterUndo22  
(22  !
string22! '
name22( ,
)22, -
{33 	
var44 
current44 
=44 
editablePath44 &
;44& '
ForEach66 
(66 
(66 
s66 
)66 
=>66 
{77 
editablePath88 
=88 
s88  
;88  !
m_Controller99 
.99 
RegisterUndo99 )
(99) *
name99* .
)99. /
;99/ 0
}:: 
)::
;:: 
editablePath<< 
=<< 
current<< "
;<<" #
}== 	
public?? 
void?? 
ClearSelection?? "
(??" #
)??# $
{@@ 	
varAA 
currentAA 
=AA 
editablePathAA &
;AA& '
ForEachCC 
(CC 
(CC 
sCC 
)CC 
=>CC 
{DD 
editablePathEE 
=EE 
sEE  
;EE  !
m_ControllerFF 
.FF 
ClearSelectionFF +
(FF+ ,
)FF, -
;FF- .
}GG 
)GG
;GG 
editablePathII 
=II 
currentII "
;II" #
}JJ 	
publicLL 
voidLL 
SelectPointLL 
(LL  
intLL  #
indexLL$ )
,LL) *
boolLL+ /
selectLL0 6
)LL6 7
{MM 	
m_ControllerNN 
.NN 
SelectPointNN $
(NN$ %
indexNN% *
,NN* +
selectNN, 2
)NN2 3
;NN3 4
}OO 	
publicQQ 
voidQQ 
CreatePointQQ 
(QQ  
intQQ  #
indexQQ$ )
,QQ) *
Vector3QQ+ 2
positionQQ3 ;
)QQ; <
{RR 	
m_ControllerSS 
.SS 
CreatePointSS $
(SS$ %
indexSS% *
,SS* +
positionSS, 4
)SS4 5
;SS5 6
}TT 	
publicVV 
voidVV  
RemoveSelectedPointsVV (
(VV( )
)VV) *
{WW 	
varXX 
currentXX 
=XX 
editablePathXX &
;XX& '
ForEachZZ 
(ZZ 
(ZZ 
sZZ 
)ZZ 
=>ZZ 
{[[ 
editablePath\\ 
=\\ 
s\\  
;\\  !
m_Controller]] 
.]]  
RemoveSelectedPoints]] 1
(]]1 2
)]]2 3
;]]3 4
}^^ 
)^^
;^^ 
editablePath`` 
=`` 
current`` "
;``" #
}aa 	
publiccc 
voidcc 
MoveSelectedPointscc &
(cc& '
Vector3cc' .
deltacc/ 4
)cc4 5
{dd 	
varee 
currentee 
=ee 
editablePathee &
;ee& '
ForEachgg 
(gg 
(gg 
sgg 
)gg 
=>gg 
{hh 
editablePathii 
=ii 
sii  
;ii  !
m_Controllerjj 
.jj 
MoveSelectedPointsjj /
(jj/ 0
deltajj0 5
)jj5 6
;jj6 7
}kk 
)kk
;kk 
editablePathmm 
=mm 
currentmm "
;mm" #
}nn 	
publicpp 
voidpp 
MoveEdgepp 
(pp 
intpp  
indexpp! &
,pp& '
Vector3pp( /
deltapp0 5
)pp5 6
{qq 	
m_Controllerrr 
.rr 
MoveEdgerr !
(rr! "
indexrr" '
,rr' (
deltarr) .
)rr. /
;rr/ 0
}ss 	
publicuu 
voiduu 
SetLeftTangentuu "
(uu" #
intuu# &
indexuu' ,
,uu, -
Vector3uu. 5
positionuu6 >
,uu> ?
booluu@ D
setToLinearuuE P
,uuP Q
booluuR V
mirroruuW ]
,uu] ^
Vector3uu_ f
cachedRightTangentuug y
)uuy z
{vv 	
m_Controllerww 
.ww 
SetLeftTangentww '
(ww' (
indexww( -
,ww- .
positionww/ 7
,ww7 8
setToLinearww9 D
,wwD E
mirrorwwF L
,wwL M
cachedRightTangentwwN `
)ww` a
;wwa b
}xx 	
publiczz 
voidzz 
SetRightTangentzz #
(zz# $
intzz$ '
indexzz( -
,zz- .
Vector3zz/ 6
positionzz7 ?
,zz? @
boolzzA E
setToLinearzzF Q
,zzQ R
boolzzS W
mirrorzzX ^
,zz^ _
Vector3zz` g
cachedLeftTangentzzh y
)zzy z
{{{ 	
m_Controller|| 
.|| 
SetRightTangent|| (
(||( )
index||) .
,||. /
position||0 8
,||8 9
setToLinear||: E
,||E F
mirror||G M
,||M N
cachedLeftTangent||O `
)||` a
;||a b
}}} 	
public 
void 
ClearClosestPath $
($ %
)% &
{
�� 	
m_ClosestDistance
�� 
=
�� 
float
��  %
.
��% &
MaxValue
��& .
;
��. /!
closestEditablePath
�� 
=
��  !
null
��" &
;
��& '
}
�� 	
public
�� 
void
�� 
AddClosestPath
�� "
(
��" #
float
��# (
distance
��) 1
)
��1 2
{
�� 	
if
�� 
(
�� 
distance
�� 
<=
�� 
m_ClosestDistance
�� -
)
��- .
{
�� 
m_ClosestDistance
�� !
=
��" #
distance
��$ ,
;
��, -!
closestEditablePath
�� #
=
��$ %
editablePath
��& 2
;
��2 3
}
�� 
}
�� 	
private
�� 
void
�� 
ForEach
�� 
(
�� 
Action
�� #
<
��# $

��$ 1
>
��1 2
action
��3 9
)
��9 :
{
�� 	
foreach
�� 
(
�� 
var
�� 
path
�� 
in
�� 
m_Paths
��  '
)
��' (
{
�� 
if
�� 
(
�� 
path
�� 
==
�� 
null
��  
)
��  !
continue
�� 
;
�� 
action
�� 
(
�� 
path
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �.
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\SavedParameter.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
class 	
SavedParameter
 
< 
T 
> 
where 
T 
: 

IEquatable 
< 
T 
> 
{ 
internal		 
delegate		 
void		 
SetParameter		 +
(		+ ,
string		, 2
key		3 6
,		6 7
T		8 9
value		: ?
)		? @
;		@ A
internal

 
delegate

 
T

 
GetParameter

 (
(

( )
string

) /
key

0 3
,

3 4
T

5 6
defaultValue

7 C
)

C D
;

D E
readonly 
string 
m_Key 
; 
bool
m_Loaded
;
T 	
m_Value
 
; 
readonly 
SetParameter 
m_Setter &
;& '
readonly 
GetParameter 
m_Getter &
;& '
public 
SavedParameter 
( 
string $
key% (
,( )
T* +
value, 1
,1 2
GetParameter3 ?
getter@ F
,F G
SetParameterH T
setterU [
)[ \
{ 	
Assert 
. 
	IsNotNull 
( 
setter #
)# $
;$ %
Assert 
. 
	IsNotNull 
( 
getter #
)# $
;$ %
m_Key 
= 
key 
; 
m_Loaded 
= 
false 
; 
m_Value 
= 
value 
; 
m_Setter 
= 
setter 
; 
m_Getter 
= 
getter 
; 
} 	
void 
Load
( 
) 
{   	
if!! 
(!! 
m_Loaded!! 
)!! 
return"" 
;"" 
m_Loaded$$ 
=$$ 
true$$ 
;$$ 
m_Value%% 
=%% 
m_Getter%% 
(%% 
m_Key%% $
,%%$ %
m_Value%%& -
)%%- .
;%%. /
}&& 	
public(( 
T(( 
value(( 
{)) 	
get** 
{++ 
Load,, 
(,, 
),, 
;,, 
return-- 
m_Value-- 
;-- 
}.. 
set// 
{00 
Load11 
(11 
)11 
;11 
if33 
(33 
m_Value33 
.33 
Equals33 "
(33" #
value33# (
)33( )
)33) *
return44 
;44 
m_Value66 
=66 
value66 
;66  
m_Setter77 
(77 
m_Key77 
,77 
value77  %
)77% &
;77& '
}88 
}99 	
}:: 
sealed== 

class== 
	SavedBool== 
:== 
SavedParameter== +
<==+ ,
bool==, 0
>==0 1
{>> 
public?? 
	SavedBool?? 
(?? 
string?? 
key??  #
,??# $
bool??% )
value??* /
)??/ 0
:@@ 
base@@ 
(@@ 
key@@ 
,@@ 
value@@ 
,@@ 
EditorPrefs@@ *
.@@* +
GetBool@@+ 2
,@@2 3
EditorPrefs@@4 ?
.@@? @
SetBool@@@ G
)@@G H
{@@I J
}@@K L
}AA 
sealedCC 

classCC 
SavedIntCC 
:CC 
SavedParameterCC *
<CC* +
intCC+ .
>CC. /
{DD 
publicEE 
SavedIntEE 
(EE 
stringEE 
keyEE "
,EE" #
intEE$ '
valueEE( -
)EE- .
:FF 
baseFF 
(FF 
keyFF 
,FF 
valueFF 
,FF 
EditorPrefsFF *
.FF* +
GetIntFF+ 1
,FF1 2
EditorPrefsFF3 >
.FF> ?
SetIntFF? E
)FFE F
{FFG H
}FFI J
}GG 
sealedII 

classII 

SavedFloatII 
:II 
SavedParameterII ,
<II, -
floatII- 2
>II2 3
{JJ 
publicKK 

SavedFloatKK 
(KK 
stringKK  
keyKK! $
,KK$ %
floatKK& +
valueKK, 1
)KK1 2
:LL 
baseLL 
(LL 
keyLL 
,LL 
valueLL 
,LL 
EditorPrefsLL *
.LL* +
GetFloatLL+ 3
,LL3 4
EditorPrefsLL5 @
.LL@ A
SetFloatLLA I
)LLI J
{LLK L
}LLM N
}MM 
sealedOO 

classOO 
SavedStringOO 
:OO 
SavedParameterOO -
<OO- .
stringOO. 4
>OO4 5
{PP 
publicQQ 
SavedStringQQ 
(QQ 
stringQQ !
keyQQ" %
,QQ% &
stringQQ' -
valueQQ. 3
)QQ3 4
:RR 
baseRR 
(RR 
keyRR 
,RR 
valueRR 
,RR 
EditorPrefsRR *
.RR* +
	GetStringRR+ 4
,RR4 5
EditorPrefsRR6 A
.RRA B
	SetStringRRB K
)RRK L
{RRM N
}RRO P
}SS 
}TT �1
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\Overrides\BloomEditor.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ !
VolumeComponentEditor 
( 
typeof !
(! "
Bloom" '
)' (
)( )
]) *
sealed 

class 
BloomEditor 
: !
VolumeComponentEditor 4
{		 #
SerializedDataParameter

 
m_Threshold

  +
;

+ ,#
SerializedDataParameter 
m_Intensity  +
;+ ,#
SerializedDataParameter 
	m_Scatter  )
;) *#
SerializedDataParameter
m_Clamp
;
SerializedDataParameter 
m_Tint  &
;& '#
SerializedDataParameter "
m_HighQualityFiltering  6
;6 7#
SerializedDataParameter 
m_SkipIterations  0
;0 1#
SerializedDataParameter 

;- .#
SerializedDataParameter 
m_DirtIntensity  /
;/ 0
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
var 
o 
= 
new 
PropertyFetcher '
<' (
Bloom( -
>- .
(. /
serializedObject/ ?
)? @
;@ A
m_Threshold 
= 
Unpack  
(  !
o! "
." #
Find# '
(' (
x( )
=>* ,
x- .
.. /
	threshold/ 8
)8 9
)9 :
;: ;
m_Intensity 
= 
Unpack  
(  !
o! "
." #
Find# '
(' (
x( )
=>* ,
x- .
.. /
	intensity/ 8
)8 9
)9 :
;: ;
	m_Scatter 
= 
Unpack 
( 
o  
.  !
Find! %
(% &
x& '
=>( *
x+ ,
., -
scatter- 4
)4 5
)5 6
;6 7
m_Clamp 
= 
Unpack 
( 
o 
. 
Find #
(# $
x$ %
=>& (
x) *
.* +
clamp+ 0
)0 1
)1 2
;2 3
m_Tint 
= 
Unpack 
( 
o 
. 
Find "
(" #
x# $
=>% '
x( )
.) *
tint* .
). /
)/ 0
;0 1"
m_HighQualityFiltering "
=# $
Unpack% +
(+ ,
o, -
.- .
Find. 2
(2 3
x3 4
=>5 7
x8 9
.9 : 
highQualityFiltering: N
)N O
)O P
;P Q
m_SkipIterations 
= 
Unpack %
(% &
o& '
.' (
Find( ,
(, -
x- .
=>/ 1
x2 3
.3 4
skipIterations4 B
)B C
)C D
;D E

= 
Unpack "
(" #
o# $
.$ %
Find% )
() *
x* +
=>, .
x/ 0
.0 1
dirtTexture1 <
)< =
)= >
;> ?
m_DirtIntensity   
=   
Unpack   $
(  $ %
o  % &
.  & '
Find  ' +
(  + ,
x  , -
=>  . 0
x  1 2
.  2 3

)  @ A
)  A B
;  B C
}!! 	
public## 
override## 
void## 
OnInspectorGUI## +
(##+ ,
)##, -
{$$ 	
EditorGUILayout%% 
.%% 

LabelField%% &
(%%& '
$str%%' .
,%%. /
EditorStyles%%0 <
.%%< =
	miniLabel%%= F
)%%F G
;%%G H

('' 
m_Threshold'' %
)''% &
;''& '

((( 
m_Intensity(( %
)((% &
;((& '

()) 
	m_Scatter)) #
)))# $
;))$ %

(** 
m_Tint**  
)**  !
;**! "

(++ 
m_Clamp++ !
)++! "
;++" #

(,, "
m_HighQualityFiltering,, 0
),,0 1
;,,1 2
if.. 
(.. "
m_HighQualityFiltering.. &
...& '

...4 5
	boolValue..5 >
&&..? A"
m_HighQualityFiltering..B X
...X Y
value..Y ^
...^ _
	boolValue.._ h
&&..i k
CoreEditorUtils..l {
...{ |
buildTargets	..| �
.
..� �
Contains
..� �
(
..� � 
GraphicsDeviceType
..� �
.
..� �
	OpenGLES2
..� �
)
..� �
)
..� �
EditorGUILayout// 
.//  
HelpBox//  '
(//' (
$str//( `
,//` a
MessageType//b m
.//m n
Warning//n u
)//u v
;//v w

(11 
m_SkipIterations11 *
)11* +
;11+ ,
EditorGUILayout33 
.33 

LabelField33 &
(33& '
$str33' 2
,332 3
EditorStyles334 @
.33@ A
	miniLabel33A J
)33J K
;33K L

(55 

)55' (
;55( )

(66 
m_DirtIntensity66 )
)66) *
;66* +
}77 	
}88 
}99 �*
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\Renderer2DAnalytics.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
	Analytics7 @
{ 
struct 

AnalyticsDataTypes 
{		 
public

 
const

 
string

 
k_LightDataString

 -
=

. /
$str

0 C
;

C D
public 
const 
string "
k_Renderer2DDataString 2
=3 4
$str5 F
;F G
} 
internal 
	interface
IAnalyticsData %
{& '
}( )
;) *
[ 
Serializable 
] 
internal 
struct
Light2DData 
:  !
IAnalyticsData" 0
{ 
[ 	
SerializeField	 
] 
public 
bool 
was_create_event $
;$ %
[ 	
SerializeField	 
] 
public 
int 
instance_id 
; 
[ 	
SerializeField	 
] 
public 
Light2D 
. 
	LightType  

light_type! +
;+ ,
} 
; 
[ 
Serializable 
] 
internal 
struct
RendererAssetData %
:& '
IAnalyticsData( 6
{ 
[ 	
SerializeField	 
] 
public   
bool   
was_create_event   $
;  $ %
[!! 	
SerializeField!!	 
]!! 
public"" 
int"" 
instance_id"" 
;"" 
[## 	
SerializeField##	 
]## 
public$$ 
int$$ !
blending_layers_count$$ (
;$$( )
[%% 	
SerializeField%%	 
]%% 
public&& 
int&& 
blending_modes_used&& &
;&&& '
}'' 
	interface** 

IAnalytics** 
{++ 
AnalyticsResult,, 
SendData,,  
(,,  !
string,,! '
eventString,,( 3
,,,3 4
IAnalyticsData,,5 C
data,,D H
),,H I
;,,I J
}-- 
[// 
InitializeOnLoad// 
]// 
internal00 
class00
Renderer2DAnalytics00 &
:00' (

IAnalytics00) 3
{11 
const22 
int22 
k_MaxEventsPerHour22 $
=22% &
$num22' +
;22+ ,
const33 
int33 !
k_MaxNumberOfElements33 '
=33( )
$num33* .
;33. /
const44 
string44 
k_VendorKey44  
=44! "
$str44# K
;44K L
const55 
int55 
	k_Version55 
=55 
$num55 
;55  
static66 
Renderer2DAnalytics66 "

m_Instance66# -
=66. /
new660 3
Renderer2DAnalytics664 G
(66G H
)66H I
;66I J
static77 
bool77 
s_Initialize77  
=77! "
false77# (
;77( )
public88 
static88 
Renderer2DAnalytics88 )
instance88* 2
{99 	
get:: 
{;; 
if<< 
(<< 

m_Instance<< 
==<< !
null<<" &
)<<& '

m_Instance== 
===  
new==! $
Renderer2DAnalytics==% 8
(==8 9
)==9 :
;==: ;
return?? 

m_Instance?? !
;??! "
}@@ 
}AA 	
publicCC 
AnalyticsResultCC 
SendDataCC '
(CC' (
stringCC( .
eventStringCC/ :
,CC: ;
IAnalyticsDataCC< J
dataCCK O
)CCO P
{DD 	
ifFF 
(FF 
falseFF 
==FF 
s_InitializeFF %
)FF% &
{GG 
EditorAnalyticsHH 
.HH  "
RegisterEventWithLimitHH  6
(HH6 7
AnalyticsDataTypesHH7 I
.HHI J
k_LightDataStringHHJ [
,HH[ \
k_MaxEventsPerHourHH] o
,HHo p"
k_MaxNumberOfElements	HHq �
,
HH� �
k_VendorKey
HH� �
,
HH� �
	k_Version
HH� �
)
HH� �
;
HH� �
EditorAnalyticsII 
.II  "
RegisterEventWithLimitII  6
(II6 7
AnalyticsDataTypesII7 I
.III J"
k_Renderer2DDataStringIIJ `
,II` a
k_MaxEventsPerHourIIb t
,IIt u"
k_MaxNumberOfElements	IIv �
,
II� �
k_VendorKey
II� �
,
II� �
	k_Version
II� �
)
II� �
;
II� �
s_InitializeJJ 
=JJ 
trueJJ #
;JJ# $
}KK 
returnMM 
EditorAnalyticsMM "
.MM" #
SendEventWithLimitMM# 5
(MM5 6
eventStringMM6 A
,MMA B
dataMMC G
,MMG H
	k_VersionMMI R
)MMR S
;MMS T
}NN 	
}OO 
}PP �a
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\Light2DEditorUtility.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
internal 
static
class  
Light2DEditorUtility .
{		 
static

 
Material

 
s_TexCapMaterial

 (
=

) *
	CoreUtils

+ 4
.

4 5 
CreateEngineMaterial

5 I
(

I J
Shader

J P
.

P Q
Find

Q U
(

U V
$str

V r
)

r s
)

s t
;

t u
static 
internal 
void 

(* +
int+ .
	controlID/ 8
,8 9
Texture: A
textureB I
,I J
Vector3K R
positionS [
,[ \

Quaternion] g
rotationh p
,p q
floatr w
sizex |
,| }
	EventType	~ �
	eventType
� �
,
� �
bool
� �

� �
)
� �
{
switch 
( 
	eventType 
) 
{ 
case 
( 
	EventType 
.  
Layout  &
)& '
:' (
{ 
Vector2 
size2  %
=& '
Vector2( /
./ 0
one0 3
*4 5
size6 :
*; <
$num= A
;A B
if 
( 

)) *
size2 !
.! "
x" #
=$ %
$num& *
;* +

.% &

AddControl& 0
(0 1
	controlID1 :
,: ;
DistanceToRectangle< O
(O P
positionP X
,X Y
rotationZ b
,b c
size2d i
)i j
)j k
;k l
break 
; 
} 
case 
( 
	EventType 
.  
Repaint  '
)' (
:( )
{ 
s_TexCapMaterial (
.( )
mainTexture) 4
=5 6
texture7 >
;> ?
s_TexCapMaterial (
.( )
SetPass) 0
(0 1
$num1 2
)2 3
;3 4
float 
w 
=  !
texture" )
.) *
width* /
;/ 0
float   
h   
=    !
texture  " )
.  ) *
height  * 0
;  0 1
float!! 
max!! !
=!!" #
Mathf!!$ )
.!!) *
Max!!* -
(!!- .
w!!. /
,!!/ 0
h!!1 2
)!!2 3
;!!3 4
Vector3"" 
scale""  %
=""& '
new""( +
Vector2"", 3
(""3 4
w""4 5
/""6 7
max""8 ;
,""; <
h""= >
/""? @
max""A D
)""D E
*""F G
size""H L
*""M N
$num""O S
;""S T
if$$ 
($$ 
Camera$$ "
.$$" #
current$$# *
==$$+ -
null$$. 2
)$$2 3
scale%% !
.%%! "
y%%" #
*=%%$ &
-%%' (
$num%%( *
;%%* +
	Matrix4x4'' !
matrix''" (
='') *
new''+ .
	Matrix4x4''/ 8
(''8 9
)''9 :
;'': ;
matrix(( 
.(( 
SetTRS(( %
(((% &
position((& .
,((. /
rotation((0 8
,((8 9
scale((: ?
)((? @
;((@ A
Graphics**  
.**  !
DrawMeshNow**! ,
(**, -
RenderingUtils**- ;
.**; <
fullscreenMesh**< J
,**J K
matrix**L R
)**R S
;**S T
}++ 
break,, 
;,, 
}-- 
}.. 	
static00 
float00 
DistanceToRectangle00 (
(00( )
Vector300) 0
position001 9
,009 :

Quaternion00; E
rotation00F N
,00N O
Vector200P W
size00X \
)00\ ]
{11 	
Vector322 
[22 
]22 
points22 
=22 
{22  
Vector322! (
.22( )
zero22) -
,22- .
Vector322/ 6
.226 7
zero227 ;
,22; <
Vector322= D
.22D E
zero22E I
,22I J
Vector322K R
.22R S
zero22S W
,22W X
Vector322Y `
.22` a
zero22a e
}22f g
;22g h
Vector333 
sideways33 
=33 
rotation33 '
*33( )
new33* -
Vector333. 5
(335 6
size336 :
.33: ;
x33; <
,33< =
$num33> ?
,33? @
$num33A B
)33B C
;33C D
Vector344 
up44 
=44 
rotation44 !
*44" #
new44$ '
Vector344( /
(44/ 0
$num440 1
,441 2
size443 7
.447 8
y448 9
,449 :
$num44; <
)44< =
;44= >
points66 
[66 
$num66 
]66 
=66 

.66% &
WorldToGUIPoint66& 5
(665 6
position666 >
+66? @
sideways66A I
+66J K
up66L N
)66N O
;66O P
points77 
[77 
$num77 
]77 
=77 

.77% &
WorldToGUIPoint77& 5
(775 6
position776 >
+77? @
sideways77A I
-77J K
up77L N
)77N O
;77O P
points88 
[88 
$num88 
]88 
=88 

.88% &
WorldToGUIPoint88& 5
(885 6
position886 >
-88? @
sideways88A I
-88J K
up88L N
)88N O
;88O P
points99 
[99 
$num99 
]99 
=99 

.99% &
WorldToGUIPoint99& 5
(995 6
position996 >
-99? @
sideways99A I
+99J K
up99L N
)99N O
;99O P
points:: 
[:: 
$num:: 
]:: 
=:: 
points:: 
[:: 
$num::  
]::  !
;::! "
Vector2<< 
pos<< 
=<< 
Event<< 
.<<  
current<<  '
.<<' (

;<<5 6
bool== 
oddNodes== 
=== 
false== !
;==! "
int>> 
j>> 
=>> 
$num>> 
;>> 
for@@ 
(@@ 
int@@ 
i@@ 
=@@ 
$num@@ 
;@@ 
i@@ 
<@@ 
$num@@  !
;@@! "
++@@# %
i@@% &
)@@& '
{AA 
ifBB 
(BB 
(BB 
pointsBB 
[BB 
iBB 
]BB 
.BB 
yBB  
>BB! "
posBB# &
.BB& '
yBB' (
)BB( )
!=BB* ,
(BB- .
pointsBB. 4
[BB4 5
jBB5 6
]BB6 7
.BB7 8
yBB8 9
>BB: ;
posBB< ?
.BB? @
yBB@ A
)BBA B
)BBB C
{CC 
ifDD 
(DD 
posDD 
.DD 
xDD 
<DD 
(DD  !
pointsDD! '
[DD' (
jDD( )
]DD) *
.DD* +
xDD+ ,
-DD- .
pointsDD/ 5
[DD5 6
iDD6 7
]DD7 8
.DD8 9
xDD9 :
)DD: ;
*DD< =
(DD> ?
posDD? B
.DDB C
yDDC D
-DDE F
pointsDDG M
[DDM N
iDDN O
]DDO P
.DDP Q
yDDQ R
)DDR S
/DDT U
(DDV W
pointsDDW ]
[DD] ^
jDD^ _
]DD_ `
.DD` a
yDDa b
-DDc d
pointsDDe k
[DDk l
iDDl m
]DDm n
.DDn o
yDDo p
)DDp q
+DDr s
pointsDDt z
[DDz {
iDD{ |
]DD| }
.DD} ~
xDD~ 
)	DD �
oddNodesEE  
=EE! "
!EE# $
oddNodesEE$ ,
;EE, -
}FF 
jHH 
=HH 
iHH 
;HH 
}II 
ifKK 
(KK 
!KK 
oddNodesKK 
)KK 
{LL 
floatNN 
distNN 
,NN 
closestDistNN '
=NN( )
-NN* +
$numNN+ -
;NN- .
jOO 
=OO 
$numOO 
;OO 
forQQ 
(QQ 
intQQ 
iQQ 
=QQ 
$numQQ 
;QQ 
iQQ  !
<QQ" #
$numQQ$ %
;QQ% &
++QQ' )
iQQ) *
)QQ* +
{RR 
distSS 
=SS 

.SS( )&
DistancePointToLineSegmentSS) C
(SSC D
posSSD G
,SSG H
pointsSSI O
[SSO P
iSSP Q
]SSQ R
,SSR S
pointsSST Z
[SSZ [
jSS[ \
++SS\ ^
]SS^ _
)SS_ `
;SS` a
ifTT 
(TT 
distTT 
<TT 
closestDistTT *
||TT+ -
closestDistTT. 9
<TT: ;
$numTT< =
)TT= >
closestDistUU #
=UU$ %
distUU& *
;UU* +
}VV 
returnXX 
closestDistXX "
;XX" #
}YY 
elseZZ 
return[[ 
$num[[ 
;[[ 
}\\ 	
public^^ 
static^^ 
Renderer2DData^^ $
GetRenderer2DData^^% 6
(^^6 7
)^^7 8
{__ 	(
UniversalRenderPipelineAsset`` (

=``7 8#
UniversalRenderPipeline``9 P
.``P Q
asset``Q V
;``V W
ifaa 
(aa 

==aa  
nullaa! %
)aa% &
returnbb 
nullbb 
;bb 
Renderer2DDataee 
rendererDataee '
=ee( )

.ee7 8"
scriptableRendererDataee8 N
aseeO Q
Renderer2DDataeeR `
;ee` a
ifff 
(ff 
rendererDataff 
==ff 
nullff #
)ff# $
{gg 
foreachhh 
(hh 
Camerahh 
camerahh  &
inhh' )
Camerahh* 0
.hh0 1

allCamerashh1 ;
)hh; <
{ii )
UniversalAdditionalCameraDatajj 1 
additionalCameraDatajj2 F
=jjG H
camerajjI O
.jjO P
GetComponentjjP \
<jj\ ])
UniversalAdditionalCameraDatajj] z
>jjz {
(jj{ |
)jj| }
;jj} ~
ScriptableRendererkk &
rendererkk' /
=kk0 1 
additionalCameraDatakk2 F
?kkF G
.kkG H
scriptableRendererkkH Z
;kkZ [

Renderer2Dll 

renderer2Dll )
=ll* +
rendererll, 4
asll5 7

Renderer2Dll8 B
;llB C
ifmm 
(mm 

renderer2Dmm "
!=mm# %
nullmm& *
)mm* +
returnnn 

renderer2Dnn )
.nn) *
GetRenderer2DDatann* ;
(nn; <
)nn< =
;nn= >
}oo 
}pp 
returnrr 
rendererDatarr 
;rr  
}ss 	
publicuu 
staticuu 
booluu 
IsUsing2DRendereruu ,
(uu, -
)uu- .
{vv 	
returnww 
GetRenderer2DDataww $
(ww$ %
)ww% &
!=ww' )
nullww* .
;ww. /
}xx 	
}yy 
}zz �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\UpgradeCommon.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
UpgradeSurfaceType: L
{ 
Opaque 
, 
Transparent 
}		 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
UpgradeBlendMode: J
{ 
Alpha
,
Premultiply 
, 
Additive 
, 
Multiply 
} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
SpecularSource: H
{ #
SpecularTextureAndColor 
,  

NoSpecular 
} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
SmoothnessSource: J
{ 
	BaseAlpha 
, 

} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
ReflectionSource: J
{   
NoReflection!! 
,!! 
Cubemap"" 
,"" 
ReflectionProbe## 
}$$ 
public&& 

struct&& 

{'' 
public(( 
UpgradeSurfaceType(( !
surfaceType((" -
{((. /
get((0 3
;((3 4
set((5 8
;((8 9
}((: ;
public)) 
UpgradeBlendMode)) 
	blendMode))  )
{))* +
get)), /
;))/ 0
set))1 4
;))4 5
}))6 7
public** 
bool** 
	alphaClip** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public++ 
SpecularSource++ 
specularSource++ ,
{++- .
get++/ 2
;++2 3
set++4 7
;++7 8
}++9 :
public,, 
SmoothnessSource,, 
smoothnessSource,,  0
{,,1 2
get,,3 6
;,,6 7
set,,8 ;
;,,; <
},,= >
}-- 
}.. ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\2D\ShapeEditor\View\EditablePathView.cs
	namespace 	
UnityEditor
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
.6 7
Path2D7 =
{		 
internal

 
class


EditablePathView

 #
:

$ %
IEditablePathView

& 7
{ 
const 
float 
kSnappingDistance %
=& '
$num( +
;+ ,
const
string
kDeleteCommandName
=
$str
;
const 
string "
kSoftDeleteCommandName +
=, -
$str. :
;: ;
public #
IEditablePathController &

controller' 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
private 
Control 
m_PointControl &
;& '
private 
Control 

;% &
private 
Control  
m_LeftTangentControl ,
;, -
private 
Control !
m_RightTangentControl -
;- .
private 
	GUIAction 
m_MovePointAction +
;+ ,
private 
	GUIAction 
m_MoveEdgeAction *
;* +
private 
	GUIAction 
m_CreatePointAction -
;- .
private 
	GUIAction  
m_RemovePointAction1 .
;. /
private 
	GUIAction  
m_RemovePointAction2 .
;. /
private 
	GUIAction #
m_MoveLeftTangentAction 1
;1 2
private 
	GUIAction $
m_MoveRightTangentAction 2
;2 3
private 
IDrawer 
m_Drawer  
;  !
public 
EditablePathView 
(  
)  !
:" #
this$ (
(( )
new) ,
Drawer- 3
(3 4
)4 5
)5 6
{7 8
}9 :
public 
EditablePathView 
(  
IDrawer  '
drawer( .
). /
{   	
m_Drawer!! 
=!! 
drawer!! 
;!! 
m_PointControl## 
=## 
new##  
GenericControl##! /
(##/ 0
$str##0 7
)##7 8
{$$ 
count%% 
=%% 

,%%% &
distance&& 
=&& 
(&& 
guiState&& $
,&&$ %
i&&& '
)&&' (
=>&&) +
{'' 
var(( 
position((  
=((! "
GetPoint((# +
(((+ ,
i((, -
)((- .
.((. /
position((/ 7
;((7 8
return)) 
guiState)) #
.))# $
DistanceToCircle))$ 4
())4 5
position))5 =
,))= >
guiState))? G
.))G H

())U V
position))V ^
)))^ _
*))` a
$num))b e
)))e f
;))f g
}** 
,** 
position++ 
=++ 
(++ 
i++ 
)++ 
=>++ !
{++" #
return++$ *
GetPoint+++ 3
(++3 4
i++4 5
)++5 6
.++6 7
position++7 ?
;++? @
}++A B
,++B C
forward,, 
=,, 
(,, 
i,, 
),, 
=>,,  
{,,! "
return,,# )

GetForward,,* 4
(,,4 5
),,5 6
;,,6 7
},,8 9
,,,9 :
up-- 
=-- 
(-- 
i-- 
)-- 
=>-- 
{-- 
return-- $
GetUp--% *
(--* +
)--+ ,
;--, -
}--. /
,--/ 0
right.. 
=.. 
(.. 
i.. 
).. 
=>.. 
{..  
return..! '
GetRight..( 0
(..0 1
)..1 2
;..2 3
}..4 5
,..5 6
	onRepaint// 
=// 
	DrawPoint// %
}00 
;00

=22 
new22 
GenericControl22  .
(22. /
$str22/ 5
)225 6
{33 
onEndLayout44 
=44 
(44 
guiState44 '
)44' (
=>44) +
{44, -

controller44. 8
.448 9
AddClosestPath449 G
(44G H

.44U V

layoutData44V `
.44` a
distance44a i
)44i j
;44j k
}44l m
,44m n
count55 
=55 
GetEdgeCount55 $
,55$ %
distance66 
=66 
DistanceToEdge66 )
,66) *
position77 
=77 
(77 
i77 
)77 
=>77 !
{77" #
return77$ *
GetPoint77+ 3
(773 4
i774 5
)775 6
.776 7
position777 ?
;77? @
}77A B
,77B C
forward88 
=88 
(88 
i88 
)88 
=>88  
{88! "
return88# )

GetForward88* 4
(884 5
)885 6
;886 7
}888 9
,889 :
up99 
=99 
(99 
i99 
)99 
=>99 
{99 
return99 $
GetUp99% *
(99* +
)99+ ,
;99, -
}99. /
,99/ 0
right:: 
=:: 
(:: 
i:: 
):: 
=>:: 
{::  
return::! '
GetRight::( 0
(::0 1
)::1 2
;::2 3
}::4 5
,::5 6
	onRepaint;; 
=;; 
DrawEdge;; $
}<< 
;<<
m_LeftTangentControl>>  
=>>! "
new>># &
GenericControl>>' 5
(>>5 6
$str>>6 C
)>>C D
{?? 
count@@ 
=@@ 
(@@ 
)@@ 
=>@@ 
{AA 
ifBB 
(BB 
GetShapeTypeBB $
(BB$ %
)BB% &
!=BB' )
	ShapeTypeBB* 3
.BB3 4
SplineBB4 :
)BB: ;
returnCC 
$numCC  
;CC  !
returnEE 

(EE( )
)EE) *
;EE* +
}FF 
,FF 
distanceGG 
=GG 
(GG 
guiStateGG $
,GG$ %
iGG& '
)GG' (
=>GG) +
{HH 
ifII 
(II 
!II 

IsSelectedII #
(II# $
iII$ %
)II% &
||II' )
IsOpenEndedII* 5
(II5 6
)II6 7
&&II8 :
iII; <
==II= ?
$numII@ A
)IIA B
returnJJ 
floatJJ $
.JJ$ %
MaxValueJJ% -
;JJ- .
varLL 
positionLL  
=LL! "
GetLeftTangentLL# 1
(LL1 2
iLL2 3
)LL3 4
;LL4 5
returnMM 
guiStateMM #
.MM# $
DistanceToCircleMM$ 4
(MM4 5
positionMM5 =
,MM= >
guiStateMM? G
.MMG H

(MMU V
positionMMV ^
)MM^ _
*MM` a
$numMMb e
)MMe f
;MMf g
}NN 
,NN 
positionOO 
=OO 
(OO 
iOO 
)OO 
=>OO !
{OO" #
returnOO$ *
GetLeftTangentOO+ 9
(OO9 :
iOO: ;
)OO; <
;OO< =
}OO> ?
,OO? @
forwardPP 
=PP 
(PP 
iPP 
)PP 
=>PP  
{PP! "
returnPP# )

GetForwardPP* 4
(PP4 5
)PP5 6
;PP6 7
}PP8 9
,PP9 :
upQQ 
=QQ 
(QQ 
iQQ 
)QQ 
=>QQ 
{QQ 
returnQQ $
GetUpQQ% *
(QQ* +
)QQ+ ,
;QQ, -
}QQ. /
,QQ/ 0
rightRR 
=RR 
(RR 
iRR 
)RR 
=>RR 
{RR  
returnRR! '
GetRightRR( 0
(RR0 1
)RR1 2
;RR2 3
}RR4 5
,RR5 6
	onRepaintSS 
=SS 
(SS 
guiStateSS %
,SS% &
controlSS' .
,SS. /
iSS0 1
)SS1 2
=>SS3 5
{TT 
ifUU 
(UU 
!UU 

IsSelectedUU #
(UU# $
iUU$ %
)UU% &
||UU' )
IsOpenEndedUU* 5
(UU5 6
)UU6 7
&&UU8 :
iUU; <
==UU= ?
$numUU@ A
)UUA B
returnVV 
;VV 
varXX 
positionXX  
=XX! "
GetPointXX# +
(XX+ ,
iXX, -
)XX- .
.XX. /
positionXX/ 7
;XX7 8
varYY 
leftTangentYY #
=YY$ %
GetLeftTangentYY& 4
(YY4 5
iYY5 6
)YY6 7
;YY7 8
m_Drawer[[ 
.[[ 
DrawTangent[[ (
([[( )
position[[) 1
,[[1 2
leftTangent[[3 >
)[[> ?
;[[? @
}\\ 
}]] 
;]]
m_RightTangentControl__ !
=__" #
new__$ '
GenericControl__( 6
(__6 7
$str__7 E
)__E F
{`` 
countaa 
=aa 
(aa 
)aa 
=>aa 
{bb 
ifcc 
(cc 
GetShapeTypecc $
(cc$ %
)cc% &
!=cc' )
	ShapeTypecc* 3
.cc3 4
Splinecc4 :
)cc: ;
returndd 
$numdd  
;dd  !
returnff 

(ff( )
)ff) *
;ff* +
}gg 
,gg 
distancehh 
=hh 
(hh 
guiStatehh $
,hh$ %
ihh& '
)hh' (
=>hh) +
{ii 
ifjj 
(jj 
!jj 

IsSelectedjj #
(jj# $
ijj$ %
)jj% &
||jj' )
IsOpenEndedjj* 5
(jj5 6
)jj6 7
&&jj8 :
ijj; <
==jj= ?

(jjM N
)jjN O
-jjO P
$numjjP Q
)jjQ R
returnkk 
floatkk $
.kk$ %
MaxValuekk% -
;kk- .
varmm 
positionmm  
=mm! "
GetRightTangentmm# 2
(mm2 3
imm3 4
)mm4 5
;mm5 6
returnnn 
guiStatenn #
.nn# $
DistanceToCirclenn$ 4
(nn4 5
positionnn5 =
,nn= >
guiStatenn? G
.nnG H

(nnU V
positionnnV ^
)nn^ _
*nn` a
$numnnb e
)nne f
;nnf g
}oo 
,oo 
positionpp 
=pp 
(pp 
ipp 
)pp 
=>pp !
{pp" #
returnpp$ *
GetRightTangentpp+ :
(pp: ;
ipp; <
)pp< =
;pp= >
}pp? @
,pp@ A
forwardqq 
=qq 
(qq 
iqq 
)qq 
=>qq  
{qq! "
returnqq# )

GetForwardqq* 4
(qq4 5
)qq5 6
;qq6 7
}qq8 9
,qq9 :
uprr 
=rr 
(rr 
irr 
)rr 
=>rr 
{rr 
returnrr $
GetUprr% *
(rr* +
)rr+ ,
;rr, -
}rr. /
,rr/ 0
rightss 
=ss 
(ss 
iss 
)ss 
=>ss 
{ss  
returnss! '
GetRightss( 0
(ss0 1
)ss1 2
;ss2 3
}ss4 5
,ss5 6
	onRepainttt 
=tt 
(tt 
guiStatett %
,tt% &
controltt' .
,tt. /
itt0 1
)tt1 2
=>tt3 5
{uu 
ifvv 
(vv 
!vv 

IsSelectedvv #
(vv# $
ivv$ %
)vv% &
||vv' )
IsOpenEndedvv* 5
(vv5 6
)vv6 7
&&vv8 :
ivv; <
==vv= ?

(vvM N
)vvN O
-vvO P
$numvvP Q
)vvQ R
returnww 
;ww 
varyy 
positionyy  
=yy! "
GetPointyy# +
(yy+ ,
iyy, -
)yy- .
.yy. /
positionyy/ 7
;yy7 8
varzz 
rightTangentzz $
=zz% &
GetRightTangentzz' 6
(zz6 7
izz7 8
)zz8 9
;zz9 :
m_Drawer|| 
.|| 
DrawTangent|| (
(||( )
position||) 1
,||1 2
rightTangent||3 ?
)||? @
;||@ A
}}} 
}~~ 
;~~
m_CreatePointAction
�� 
=
��  !
new
��" %
CreatePointAction
��& 7
(
��7 8
m_PointControl
��8 F
,
��F G

��H U
)
��U V
{
�� 
enable
�� 
=
�� 
(
�� 
guiState
�� "
,
��" #
action
��$ *
)
��* +
=>
��, .
{
��/ 0
return
��1 7
!
��8 9
guiState
��9 A
.
��A B
isShiftDown
��B M
&&
��N P

controller
��Q [
.
��[ \!
closestEditablePath
��\ o
==
��p r

controller
��s }
.
��} ~
editablePath��~ �
;��� �
}��� �
,��� �

�� 
=
�� &
EnableCreatePointRepaint
��  8
,
��8 9 
repaintOnMouseMove
�� "
=
��# $
(
��% &
guiState
��& .
,
��. /
action
��0 6
)
��6 7
=>
��8 :
{
��; <
return
��= C
true
��D H
;
��H I
}
��J K
,
��K L

guiToWorld
�� 
=
�� 

GUIToWorld
�� '
,
��' (

�� 
=
�� 
(
��  !
index
��! &
,
��& '
position
��( 0
)
��0 1
=>
��2 4
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� +
(
��+ ,
$str
��, :
)
��: ;
;
��; <

controller
�� 
.
�� 
CreatePoint
�� *
(
��* +
index
��+ 0
,
��0 1
position
��2 :
)
��: ;
;
��; <
}
�� 
,
�� 
onPreRepaint
�� 
=
�� 
(
��  
guiState
��  (
,
��( )
action
��* 0
)
��0 1
=>
��2 4
{
�� 
if
�� 
(
�� 

�� %
(
��% &
)
��& '
>
��( )
$num
��* +
)
��+ ,
{
�� 
var
�� 
position
�� $
=
��% & 
ClosestPointInEdge
��' 9
(
��9 :
guiState
��: B
,
��B C
guiState
��D L
.
��L M

��M Z
,
��Z [

��\ i
.
��i j

layoutData
��j t
.
��t u
index
��u z
)
��z {
;
��{ |
m_Drawer
��  
.
��  !$
DrawCreatePointPreview
��! 7
(
��7 8
position
��8 @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 
;
��
Action
�� 
<
�� 
	IGUIState
�� 
>
�� 
removePoints
�� *
=
��+ ,
(
��- .
guiState
��. 6
)
��6 7
=>
��8 :
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� '
(
��' (
$str
��( 6
)
��6 7
;
��7 8

controller
�� 
.
�� "
RemoveSelectedPoints
�� /
(
��/ 0
)
��0 1
;
��1 2
guiState
�� 
.
�� 
changed
��  
=
��! "
true
��# '
;
��' (
}
�� 
;
��
m_RemovePointAction1
��  
=
��! "
new
��# &

��' 4
(
��4 5 
kDeleteCommandName
��5 G
)
��G H
{
�� 
enable
�� 
=
�� 
(
�� 
guiState
�� "
,
��" #
action
��$ *
)
��* +
=>
��, .
{
��/ 0
return
��1 7#
GetSelectedPointCount
��8 M
(
��M N
)
��N O
>
��P Q
$num
��R S
;
��S T
}
��U V
,
��V W
	onCommand
�� 
=
�� 
removePoints
�� (
}
�� 
;
��
m_RemovePointAction2
��  
=
��! "
new
��# &

��' 4
(
��4 5$
kSoftDeleteCommandName
��5 K
)
��K L
{
�� 
enable
�� 
=
�� 
(
�� 
guiState
�� "
,
��" #
action
��$ *
)
��* +
=>
��, .
{
��/ 0
return
��1 7#
GetSelectedPointCount
��8 M
(
��M N
)
��N O
>
��P Q
$num
��R S
;
��S T
}
��U V
,
��V W
	onCommand
�� 
=
�� 
removePoints
�� (
}
�� 
;
��
m_MovePointAction
�� 
=
�� 
new
��  #
SliderAction
��$ 0
(
��0 1
m_PointControl
��1 ?
)
��? @
{
�� 
onClick
�� 
=
�� 
(
�� 
guiState
�� #
,
��# $
control
��% ,
)
��, -
=>
��. 0
{
�� 
var
�� 
index
�� 
=
�� 
control
��  '
.
��' (

layoutData
��( 2
.
��2 3
index
��3 8
;
��8 9
if
�� 
(
�� 
!
�� 
guiState
�� !
.
��! "
isActionKeyDown
��" 1
&&
��2 4
!
��5 6

IsSelected
��6 @
(
��@ A
index
��A F
)
��F G
)
��G H

controller
�� "
.
��" #
ClearSelection
��# 1
(
��1 2
)
��2 3
;
��3 4

controller
�� 
.
�� 
SelectPoint
�� *
(
��* +
index
��+ 0
,
��0 1
true
��2 6
)
��6 7
;
��7 8
guiState
�� 
.
�� 
changed
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
,
�� 

�� 
=
�� 
(
��  !
guiState
��! )
,
��) *
control
��+ 2
,
��2 3
position
��4 <
)
��< =
=>
��> @
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� +
(
��+ ,
$str
��, 8
)
��8 9
;
��9 :
}
�� 
,
�� 
onSliderChanged
�� 
=
��  !
(
��" #
guiState
��# +
,
��+ ,
control
��- 4
,
��4 5
position
��6 >
)
��> ?
=>
��@ B
{
�� 
var
�� 
index
�� 
=
�� 
control
��  '
.
��' (

��( 5
.
��5 6
index
��6 ;
;
��; <
var
�� 
delta
�� 
=
�� 
SnapIfNeeded
��  ,
(
��, -
position
��- 5
)
��5 6
-
��7 8
GetPoint
��9 A
(
��A B
index
��B G
)
��G H
.
��H I
position
��I Q
;
��Q R

controller
�� 
.
��  
MoveSelectedPoints
�� 1
(
��1 2
delta
��2 7
)
��7 8
;
��8 9
}
�� 
}
�� 
;
��
m_MoveEdgeAction
�� 
=
�� 
new
�� "
SliderAction
��# /
(
��/ 0

��0 =
)
��= >
{
�� 
enable
�� 
=
�� 
(
�� 
guiState
�� "
,
��" #
action
��$ *
)
��* +
=>
��, .
{
��/ 0
return
��1 7
guiState
��8 @
.
��@ A
isShiftDown
��A L
;
��L M
}
��N O
,
��O P

�� 
=
�� 
(
��  !
guiState
��! )
,
��) *
control
��+ 2
,
��2 3
position
��4 <
)
��< =
=>
��> @
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� +
(
��+ ,
$str
��, 7
)
��7 8
;
��8 9
}
�� 
,
�� 
onSliderChanged
�� 
=
��  !
(
��" #
guiState
��# +
,
��+ ,
control
��- 4
,
��4 5
position
��6 >
)
��> ?
=>
��@ B
{
�� 
var
�� 
index
�� 
=
�� 
control
��  '
.
��' (

��( 5
.
��5 6
index
��6 ;
;
��; <
var
�� 
delta
�� 
=
�� 
position
��  (
-
��) *
GetPoint
��, 4
(
��4 5
index
��5 :
)
��: ;
.
��; <
position
��< D
;
��D E

controller
�� 
.
�� 
MoveEdge
�� '
(
��' (
index
��( -
,
��- .
delta
��/ 4
)
��4 5
;
��5 6
}
�� 
}
�� 
;
��
var
��  
cachedRightTangent
�� "
=
��# $
Vector3
��% ,
.
��, -
zero
��- 1
;
��1 2
var
�� 
cachedLeftTangent
�� !
=
��" #
Vector3
��$ +
.
��+ ,
zero
��, 0
;
��0 1%
m_MoveLeftTangentAction
�� #
=
��$ %
new
��& )
SliderAction
��* 6
(
��6 7"
m_LeftTangentControl
��7 K
)
��K L
{
�� 

�� 
=
�� 
(
��  !
guiState
��! )
,
��) *
control
��+ 2
,
��2 3
position
��4 <
)
��< =
=>
��> @
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� +
(
��+ ,
$str
��, :
)
��: ;
;
��; < 
cachedRightTangent
�� &
=
��' (
GetPoint
��) 1
(
��1 2
control
��2 9
.
��9 :

��: G
.
��G H
index
��H M
)
��M N
.
��N O
rightTangent
��O [
;
��[ \
}
�� 
,
�� 
onSliderChanged
�� 
=
��  !
(
��" #
guiState
��# +
,
��+ ,
control
��- 4
,
��4 5
position
��6 >
)
��> ?
=>
��@ B
{
�� 
var
�� 
index
�� 
=
�� 
control
��  '
.
��' (

��( 5
.
��5 6
index
��6 ;
;
��; <
var
�� 
setToLinear
�� #
=
��$ %
guiState
��& .
.
��. /
nearestControl
��/ =
==
��> @
m_PointControl
��A O
.
��O P
ID
��P R
&&
��S U
m_PointControl
��V d
.
��d e

layoutData
��e o
.
��o p
index
��p u
==
��v x
index
��y ~
;
��~ 

controller
�� 
.
�� 
SetLeftTangent
�� -
(
��- .
index
��. 3
,
��3 4
position
��5 =
,
��= >
setToLinear
��? J
,
��J K
guiState
��L T
.
��T U
isShiftDown
��U `
,
��` a 
cachedRightTangent
��b t
)
��t u
;
��u v
}
�� 
,
�� 
onSliderEnd
�� 
=
�� 
(
�� 
guiState
�� '
,
��' (
control
��) 0
,
��0 1
position
��2 :
)
��: ;
=>
��< >
{
�� 

controller
�� 
.
�� 
editablePath
�� +
.
��+ ,
UpdateTangentMode
��, =
(
��= >
control
��> E
.
��E F

��F S
.
��S T
index
��T Y
)
��Y Z
;
��Z [
guiState
�� 
.
�� 
changed
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
}
�� 
;
��
m_MoveRightTangentAction
�� $
=
��% &
new
��' *
SliderAction
��+ 7
(
��7 8#
m_RightTangentControl
��8 M
)
��M N
{
�� 

�� 
=
�� 
(
��  !
guiState
��! )
,
��) *
control
��+ 2
,
��2 3
position
��4 <
)
��< =
=>
��> @
{
�� 

controller
�� 
.
�� 
RegisterUndo
�� +
(
��+ ,
$str
��, :
)
��: ;
;
��; <
cachedLeftTangent
�� %
=
��& '
GetPoint
��( 0
(
��0 1
control
��1 8
.
��8 9

��9 F
.
��F G
index
��G L
)
��L M
.
��M N
leftTangent
��N Y
;
��Y Z
}
�� 
,
�� 
onSliderChanged
�� 
=
��  !
(
��" #
guiState
��# +
,
��+ ,
control
��- 4
,
��4 5
position
��6 >
)
��> ?
=>
��@ B
{
�� 
var
�� 
index
�� 
=
�� 
control
��  '
.
��' (

��( 5
.
��5 6
index
��6 ;
;
��; <
var
�� 
setToLinear
�� #
=
��$ %
guiState
��& .
.
��. /
nearestControl
��/ =
==
��> @
m_PointControl
��A O
.
��O P
ID
��P R
&&
��S U
m_PointControl
��V d
.
��d e

layoutData
��e o
.
��o p
index
��p u
==
��v x
index
��y ~
;
��~ 

controller
�� 
.
�� 
SetRightTangent
�� .
(
��. /
index
��/ 4
,
��4 5
position
��6 >
,
��> ?
setToLinear
��@ K
,
��K L
guiState
��M U
.
��U V
isShiftDown
��V a
,
��a b
cachedLeftTangent
��c t
)
��t u
;
��u v
}
�� 
,
�� 
onSliderEnd
�� 
=
�� 
(
�� 
guiState
�� '
,
��' (
control
��) 0
,
��0 1
position
��2 :
)
��: ;
=>
��< >
{
�� 

controller
�� 
.
�� 
editablePath
�� +
.
��+ ,
UpdateTangentMode
��, =
(
��= >
control
��> E
.
��E F

��F S
.
��S T
index
��T Y
)
��Y Z
;
��Z [
guiState
�� 
.
�� 
changed
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
}
�� 
;
��
}
�� 	
public
�� 
void
�� 
Install
�� 
(
�� 
	GUISystem
�� %
	guiSystem
��& /
)
��/ 0
{
�� 	
	guiSystem
�� 
.
�� 

AddControl
��  
(
��  !

��! .
)
��. /
;
��/ 0
	guiSystem
�� 
.
�� 

AddControl
��  
(
��  !
m_PointControl
��! /
)
��/ 0
;
��0 1
	guiSystem
�� 
.
�� 

AddControl
��  
(
��  !"
m_LeftTangentControl
��! 5
)
��5 6
;
��6 7
	guiSystem
�� 
.
�� 

AddControl
��  
(
��  !#
m_RightTangentControl
��! 6
)
��6 7
;
��7 8
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  !
m_CreatePointAction
��  3
)
��3 4
;
��4 5
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  "
m_RemovePointAction1
��  4
)
��4 5
;
��5 6
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  "
m_RemovePointAction2
��  4
)
��4 5
;
��5 6
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  
m_MovePointAction
��  1
)
��1 2
;
��2 3
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  
m_MoveEdgeAction
��  0
)
��0 1
;
��1 2
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  %
m_MoveLeftTangentAction
��  7
)
��7 8
;
��8 9
	guiSystem
�� 
.
�� 
	AddAction
�� 
(
��  &
m_MoveRightTangentAction
��  8
)
��8 9
;
��9 :
}
�� 	
public
�� 
void
�� 
	Uninstall
�� 
(
�� 
	GUISystem
�� '
	guiSystem
��( 1
)
��1 2
{
�� 	
	guiSystem
�� 
.
�� 

�� #
(
��# $

��$ 1
)
��1 2
;
��2 3
	guiSystem
�� 
.
�� 

�� #
(
��# $
m_PointControl
��$ 2
)
��2 3
;
��3 4
	guiSystem
�� 
.
�� 

�� #
(
��# $"
m_LeftTangentControl
��$ 8
)
��8 9
;
��9 :
	guiSystem
�� 
.
�� 

�� #
(
��# $#
m_RightTangentControl
��$ 9
)
��9 :
;
��: ;
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #!
m_CreatePointAction
��# 6
)
��6 7
;
��7 8
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #"
m_RemovePointAction1
��# 7
)
��7 8
;
��8 9
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #"
m_RemovePointAction2
��# 7
)
��7 8
;
��8 9
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #
m_MovePointAction
��# 4
)
��4 5
;
��5 6
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #
m_MoveEdgeAction
��# 3
)
��3 4
;
��4 5
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #%
m_MoveLeftTangentAction
��# :
)
��: ;
;
��; <
	guiSystem
�� 
.
�� 
RemoveAction
�� "
(
��" #&
m_MoveRightTangentAction
��# ;
)
��; <
;
��< =
}
�� 	
private
�� 
ControlPoint
�� 
GetPoint
�� %
(
��% &
int
��& )
index
��* /
)
��/ 0
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
GetPoint
��+ 3
(
��3 4
index
��4 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
int
�� 

�� !
(
��! "
)
��" #
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +

pointCount
��+ 5
;
��5 6
}
�� 	
private
�� 
int
�� 
GetEdgeCount
��  
(
��  !
)
��! "
{
�� 	
if
�� 
(
�� 

controller
�� 
.
�� 
editablePath
�� '
.
��' (
isOpenEnded
��( 3
)
��3 4
return
�� 

controller
�� !
.
��! "
editablePath
��" .
.
��. /

pointCount
��/ 9
-
��: ;
$num
��< =
;
��= >
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +

pointCount
��+ 5
;
��5 6
}
�� 	
private
�� 
int
�� #
GetSelectedPointCount
�� )
(
��) *
)
��* +
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
	selection
��+ 4
.
��4 5
Count
��5 :
;
��: ;
}
�� 	
private
�� 
bool
�� 

IsSelected
�� 
(
��  
int
��  #
index
��$ )
)
��) *
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
	selection
��+ 4
.
��4 5
Contains
��5 =
(
��= >
index
��> C
)
��C D
;
��D E
}
�� 	
private
�� 
Vector3
�� 

GetForward
�� "
(
��" #
)
��# $
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
forward
��+ 2
;
��2 3
}
�� 	
private
�� 
Vector3
�� 
GetUp
�� 
(
�� 
)
�� 
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
up
��+ -
;
��- .
}
�� 	
private
�� 
Vector3
�� 
GetRight
��  
(
��  !
)
��! "
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
right
��+ 0
;
��0 1
}
�� 	
private
�� 
	Matrix4x4
�� #
GetLocalToWorldMatrix
�� /
(
��/ 0
)
��0 1
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* + 
localToWorldMatrix
��+ =
;
��= >
}
�� 	
private
�� 
	ShapeType
�� 
GetShapeType
�� &
(
��& '
)
��' (
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
	shapeType
��+ 4
;
��4 5
}
�� 	
private
�� 
bool
�� 
IsOpenEnded
��  
(
��  !
)
��! "
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +
isOpenEnded
��+ 6
;
��6 7
}
�� 	
private
�� 
Vector3
�� 
GetLeftTangent
�� &
(
��& '
int
��' *
index
��+ 0
)
��0 1
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +"
CalculateLeftTangent
��+ ?
(
��? @
index
��@ E
)
��E F
;
��F G
}
�� 	
private
�� 
Vector3
�� 
GetRightTangent
�� '
(
��' (
int
��( +
index
��, 1
)
��1 2
{
�� 	
return
�� 

controller
�� 
.
�� 
editablePath
�� *
.
��* +#
CalculateRightTangent
��+ @
(
��@ A
index
��A F
)
��F G
;
��G H
}
�� 	
private
�� 
int
�� 
	NextIndex
�� 
(
�� 
int
�� !
index
��" '
)
��' (
{
�� 	
return
�� !
EditablePathUtility
�� &
.
��& '
Mod
��' *
(
��* +
index
��+ 0
+
��1 2
$num
��3 4
,
��4 5

��6 C
(
��C D
)
��D E
)
��E F
;
��F G
}
�� 	
private
�� 
ControlPoint
�� 
NextControlPoint
�� -
(
��- .
int
��. 1
index
��2 7
)
��7 8
{
�� 	
return
�� 
GetPoint
�� 
(
�� 
	NextIndex
�� %
(
��% &
index
��& +
)
��+ ,
)
��, -
;
��- .
}
�� 	
private
�� 
int
�� 
	PrevIndex
�� 
(
�� 
int
�� !
index
��" '
)
��' (
{
�� 	
return
�� !
EditablePathUtility
�� &
.
��& '
Mod
��' *
(
��* +
index
��+ 0
-
��1 2
$num
��3 4
,
��4 5

��6 C
(
��C D
)
��D E
)
��E F
;
��F G
}
�� 	
private
�� 
ControlPoint
�� 
PrevControlPoint
�� -
(
��- .
int
��. 1
index
��2 7
)
��7 8
{
�� 	
return
�� 
GetPoint
�� 
(
�� 
	PrevIndex
�� %
(
��% &
index
��& +
)
��+ ,
)
��, -
;
��- .
}
�� 	
private
�� 
Vector3
��  
ClosestPointInEdge
�� *
(
��* +
	IGUIState
��+ 4
guiState
��5 =
,
��= >
Vector2
��? F

��G T
,
��T U
int
��V Y
index
��Z _
)
��_ `
{
�� 	
if
�� 
(
�� 
GetShapeType
�� 
(
�� 
)
�� 
==
�� !
	ShapeType
��" +
.
��+ ,
Polygon
��, 3
)
��3 4
{
�� 
var
�� 
p0
�� 
=
�� 
GetPoint
�� !
(
��! "
index
��" '
)
��' (
.
��( )
position
��) 1
;
��1 2
var
�� 
p1
�� 
=
�� 
NextControlPoint
�� )
(
��) *
index
��* /
)
��/ 0
.
��0 1
position
��1 9
;
��9 :
var
��  
mouseWorldPosition
�� &
=
��' (

GUIToWorld
��) 3
(
��3 4
guiState
��4 <
,
��< =

��> K
)
��K L
;
��L M
var
�� 
dir1
�� 
=
�� 
(
��  
mouseWorldPosition
�� .
-
��/ 0
p0
��1 3
)
��3 4
;
��4 5
var
�� 
dir2
�� 
=
�� 
(
�� 
p1
�� 
-
��  
p0
��! #
)
��# $
;
��$ %
return
�� 
Mathf
�� 
.
�� 
Clamp01
�� $
(
��$ %
Vector3
��% ,
.
��, -
Dot
��- 0
(
��0 1
dir1
��1 5
,
��5 6
dir2
��7 ;
.
��; <

normalized
��< F
)
��F G
/
��H I
dir2
��J N
.
��N O
	magnitude
��O X
)
��X Y
*
��Z [
dir2
��\ `
+
��a b
p0
��c e
;
��e f
}
�� 
else
�� 
if
�� 
(
�� 
GetShapeType
�� !
(
��! "
)
��" #
==
��$ &
	ShapeType
��' 0
.
��0 1
Spline
��1 7
)
��7 8
{
�� 
var
�� 
	nextIndex
�� 
=
�� 
	NextIndex
��  )
(
��) *
index
��* /
)
��/ 0
;
��0 1
float
�� 
t
�� 
;
�� 
return
�� 

�� $
.
��$ %!
ClosestPointOnCurve
��% 8
(
��8 9

GUIToWorld
�� 
(
�� 
guiState
�� '
,
��' (

��) 6
)
��6 7
,
��7 8
GetPoint
�� 
(
�� 
index
�� "
)
��" #
.
��# $
position
��$ ,
,
��, -
GetPoint
�� 
(
�� 
	nextIndex
�� &
)
��& '
.
��' (
position
��( 0
,
��0 1
GetRightTangent
�� #
(
��# $
index
��$ )
)
��) *
,
��* +
GetLeftTangent
�� "
(
��" #
	nextIndex
��# ,
)
��, -
,
��- .
out
�� 
t
�� 
)
�� 
;
�� 
}
�� 
return
�� 
Vector3
�� 
.
�� 
zero
�� 
;
��  
}
�� 	
private
�� 
float
�� 
DistanceToEdge
�� $
(
��$ %
	IGUIState
��% .
guiState
��/ 7
,
��7 8
int
��9 <
index
��= B
)
��B C
{
�� 	
if
�� 
(
�� 
GetShapeType
�� 
(
�� 
)
�� 
==
�� !
	ShapeType
��" +
.
��+ ,
Polygon
��, 3
)
��3 4
{
�� 
return
�� 
guiState
�� 
.
��  
DistanceToSegment
��  1
(
��1 2
GetPoint
��2 :
(
��: ;
index
��; @
)
��@ A
.
��A B
position
��B J
,
��J K
NextControlPoint
��L \
(
��\ ]
index
��] b
)
��b c
.
��c d
position
��d l
)
��l m
;
��m n
}
�� 
else
�� 
if
�� 
(
�� 
GetShapeType
�� !
(
��! "
)
��" #
==
��$ &
	ShapeType
��' 0
.
��0 1
Spline
��1 7
)
��7 8
{
�� 
var
�� 
closestPoint
��  
=
��! " 
ClosestPointInEdge
��# 5
(
��5 6
guiState
��6 >
,
��> ?
guiState
��@ H
.
��H I

��I V
,
��V W
index
��X ]
)
��] ^
;
��^ _
var
�� 

�� !
=
��" #

��$ 1
.
��1 2
WorldToGUIPoint
��2 A
(
��A B
closestPoint
��B N
)
��N O
;
��O P
return
�� 
(
�� 

�� %
-
��& '
guiState
��( 0
.
��0 1

��1 >
)
��> ?
.
��? @
	magnitude
��@ I
;
��I J
}
�� 
return
�� 
float
�� 
.
�� 
MaxValue
�� !
;
��! "
}
�� 	
private
�� 
Vector3
�� 

GUIToWorld
�� "
(
��" #
	IGUIState
��# ,
guiState
��- 5
,
��5 6
Vector2
��7 >
position
��? G
)
��G H
{
�� 	
return
�� 
guiState
�� 
.
�� 

GUIToWorld
�� &
(
��& '
position
��' /
,
��/ 0

GetForward
��1 ;
(
��; <
)
��< =
,
��= >#
GetLocalToWorldMatrix
��? T
(
��T U
)
��U V
.
��V W
MultiplyPoint3x4
��W g
(
��g h
Vector3
��h o
.
��o p
zero
��p t
)
��t u
)
��u v
;
��v w
}
�� 	
private
�� 
void
�� 
	DrawPoint
�� 
(
�� 
	IGUIState
�� (
guiState
��) 1
,
��1 2
Control
��3 :
control
��; B
,
��B C
int
��D G
index
��H M
)
��M N
{
�� 	
var
�� 
position
�� 
=
�� 
GetPoint
�� #
(
��# $
index
��$ )
)
��) *
.
��* +
position
��+ 3
;
��3 4
if
�� 
(
�� 
guiState
�� 
.
�� 

hotControl
�� #
==
��$ &
control
��' .
.
��. /
actionID
��/ 7
&&
��8 :
control
��; B
.
��B C

��C P
.
��P Q
index
��Q V
==
��W Y
index
��Z _
||
��` b

IsSelected
��c m
(
��m n
index
��n s
)
��s t
)
��t u
m_Drawer
�� 
.
�� 
DrawPointSelected
�� *
(
��* +
position
��+ 3
)
��3 4
;
��4 5
else
�� 
if
�� 
(
�� 
guiState
�� 
.
�� 

hotControl
�� (
==
��) +
$num
��, -
&&
��. 0
guiState
��1 9
.
��9 :
nearestControl
��: H
==
��I K
control
��L S
.
��S T
ID
��T V
&&
��W Y
control
��Z a
.
��a b

layoutData
��b l
.
��l m
index
��m r
==
��s u
index
��v {
)
��{ |
m_Drawer
�� 
.
�� 
DrawPointHovered
�� )
(
��) *
position
��* 2
)
��2 3
;
��3 4
else
�� 
m_Drawer
�� 
.
�� 
	DrawPoint
�� "
(
��" #
position
��# +
)
��+ ,
;
��, -
}
�� 	
private
�� 
void
�� 
DrawEdge
�� 
(
�� 
	IGUIState
�� '
guiState
��( 0
,
��0 1
Control
��2 9
control
��: A
,
��A B
int
��C F
index
��G L
)
��L M
{
�� 	
if
�� 
(
�� 
GetShapeType
�� 
(
�� 
)
�� 
==
�� !
	ShapeType
��" +
.
��+ ,
Polygon
��, 3
)
��3 4
{
�� 
var
�� 
	nextIndex
�� 
=
�� 
	NextIndex
��  )
(
��) *
index
��* /
)
��/ 0
;
��0 1
var
�� 
color
�� 
=
�� 
Color
�� !
.
��! "
white
��" '
;
��' (
if
�� 
(
�� 
guiState
�� 
.
�� 
nearestControl
�� *
==
��+ -
control
��. 5
.
��5 6
ID
��6 8
&&
��9 ;
control
��< C
.
��C D

layoutData
��D N
.
��N O
index
��O T
==
��U W
index
��X ]
&&
��^ `
guiState
��a i
.
��i j

hotControl
��j t
==
��u w
$num
��x y
)
��y z
color
�� 
=
�� 
Color
�� !
.
��! "
yellow
��" (
;
��( )
m_Drawer
�� 
.
�� 
DrawLine
�� !
(
��! "
GetPoint
��" *
(
��* +
index
��+ 0
)
��0 1
.
��1 2
position
��2 :
,
��: ;
GetPoint
��< D
(
��D E
	nextIndex
��E N
)
��N O
.
��O P
position
��P X
,
��X Y
$num
��Z \
,
��\ ]
color
��^ c
)
��c d
;
��d e
}
�� 
else
�� 
if
�� 
(
�� 
GetShapeType
�� !
(
��! "
)
��" #
==
��$ &
	ShapeType
��' 0
.
��0 1
Spline
��1 7
)
��7 8
{
�� 
var
�� 
	nextIndex
�� 
=
�� 
	NextIndex
��  )
(
��) *
index
��* /
)
��/ 0
;
��0 1
var
�� 
color
�� 
=
�� 
Color
�� !
.
��! "
white
��" '
;
��' (
if
�� 
(
�� 
guiState
�� 
.
�� 
nearestControl
�� *
==
��+ -
control
��. 5
.
��5 6
ID
��6 8
&&
��9 ;
control
��< C
.
��C D

layoutData
��D N
.
��N O
index
��O T
==
��U W
index
��X ]
&&
��^ `
guiState
��a i
.
��i j

hotControl
��j t
==
��u w
$num
��x y
)
��y z
color
�� 
=
�� 
Color
�� !
.
��! "
yellow
��" (
;
��( )
m_Drawer
�� 
.
�� 

DrawBezier
�� #
(
��# $
GetPoint
�� 
(
�� 
index
�� "
)
��" #
.
��# $
position
��$ ,
,
��, -
GetRightTangent
�� #
(
��# $
index
��$ )
)
��) *
,
��* +
GetLeftTangent
�� "
(
��" #
	nextIndex
��# ,
)
��, -
,
��- .
GetPoint
�� 
(
�� 
	nextIndex
�� &
)
��& '
.
��' (
position
��( 0
,
��0 1
$num
�� 
,
�� 
color
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
bool
�� &
EnableCreatePointRepaint
�� -
(
��- .
	IGUIState
��. 7
guiState
��8 @
,
��@ A
	GUIAction
��B K
action
��L R
)
��R S
{
�� 	
return
�� 
guiState
�� 
.
�� 
nearestControl
�� *
!=
��+ -
m_PointControl
��. <
.
��< =
ID
��= ?
&&
��@ B
guiState
�� 
.
�� 

hotControl
�� '
==
��( *
$num
��+ ,
&&
��. 0
(
�� 
guiState
�� 
.
�� 
nearestControl
�� ,
!=
��- /"
m_LeftTangentControl
��0 D
.
��D E
ID
��E G
)
��G H
&&
��I K
(
�� 
guiState
�� 
.
�� 
nearestControl
�� ,
!=
��- /#
m_RightTangentControl
��0 E
.
��E F
ID
��F H
)
��H I
;
��I J
}
�� 	
private
�� 
Vector3
�� 
SnapIfNeeded
�� $
(
��$ %
Vector3
��% ,
position
��- 5
)
��5 6
{
�� 	
if
�� 
(
�� 
!
�� 

controller
�� 
.
�� 
enableSnapping
�� *
||
��+ -

controller
��. 8
.
��8 9
snapping
��9 A
==
��B D
null
��E I
)
��I J
return
�� 
position
�� 
;
��  
var
�� 
guiPosition
�� 
=
�� 

�� +
.
��+ ,
WorldToGUIPoint
��, ;
(
��; <
position
��< D
)
��D E
;
��E F
var
��  
snappedGuiPosition
�� "
=
��# $

��% 2
.
��2 3
WorldToGUIPoint
��3 B
(
��B C

controller
��C M
.
��M N
snapping
��N V
.
��V W
Snap
��W [
(
��[ \
position
��\ d
)
��d e
)
��e f
;
��f g
var
�� 
sqrDistance
�� 
=
�� 
(
�� 
guiPosition
�� *
-
��+ , 
snappedGuiPosition
��- ?
)
��? @
.
��@ A
sqrMagnitude
��A M
;
��M N
if
�� 
(
�� 
sqrDistance
�� 
<
�� 
kSnappingDistance
�� /
*
��0 1
kSnappingDistance
��2 C
)
��C D
position
�� 
=
�� 

controller
�� %
.
��% &
snapping
��& .
.
��. /
Snap
��/ 3
(
��3 4
position
��4 <
)
��< =
;
��= >
return
�� 
position
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\RendererFeatures\RenderObjectsPassFeatureEditor.cs
	namespace		 	
UnityEditor		
 
.		 
Experimental		 "
.		" #
	Rendering		# ,
.		, -
	Universal		- 6
{

 
[  
CustomPropertyDrawer 
( 
typeof 
( 

.+ ,!
RenderObjectsSettings, A
)A B
,B C
trueD H
)H I
]I J
internal 
class
RenderObjectsPassFeatureEditor 1
:2 3
PropertyDrawer4 B
{
internal 
class 
Styles 
{ 
public 
static
float 
defaultLineSpace *
=+ ,
EditorGUIUtility- =
.= >
singleLineHeight> N
+O P
EditorGUIUtilityQ a
.a b#
standardVerticalSpacingb y
;y z
public 
static

GUIContent 
callback '
=( )
new* -

GUIContent. 8
(8 9
$str9 @
,@ A
$str	B �
)
� �
;
� �
public 
static

GUIContent 

=- .
new/ 2

GUIContent3 =
(= >
$str> G
,G H
$str	I �
)
� �
;
� �
public 
static

GUIContent 
renderHeader +
=, -
new. 1

GUIContent2 <
(< =
$str= H
,H I
$str	J �
)
� �
;
� �
public 
static

GUIContent 
renderQueueFilter 0
=1 2
new3 6

GUIContent7 A
(A B
$strB I
,I J
$str	K �
)
� �
;
� �
public 
static

GUIContent 
	layerMask (
=) *
new+ .

GUIContent/ 9
(9 :
$str: F
,F G
$str	H �
)
� �
;
� �
public 
static

GUIContent 
shaderPassFilter /
=0 1
new2 5

GUIContent6 @
(@ A
$strA Q
,Q R
$str	S �
)
� �
;
� �
public 
static

GUIContent 
overrideMaterial /
=0 1
new2 5

GUIContent6 @
(@ A
$strA K
,K L
$str	M �
)
� �
;
� �
public 
static

GUIContent  
overrideMaterialPass 3
=4 5
new6 9

GUIContent: D
(D E
$strE Q
,Q R
$str	S �
)
� �
;
� �
public!! 
static!!

GUIContent!! 

=!!- .
new!!/ 2

GUIContent!!3 =
(!!= >
$str!!> E
,!!E F
$str!!G b
)!!b c
;!!c d
public"" 
static""

GUIContent"" 

writeDepth"" )
=""* +
new"", /

GUIContent""0 :
("": ;
$str""; H
,""H I
$str""J p
)""p q
;""q r
public## 
static##

GUIContent## 

depthState## )
=##* +
new##, /

GUIContent##0 :
(##: ;
$str##; G
,##G H
$str##I l
)##l m
;##m n
public&& 
static&& 

GUIContent&& $
overrideCamera&&% 3
=&&4 5
new&&6 9

GUIContent&&: D
(&&D E
$str&&E M
,&&M N
$str	&&O �
)
&&� �
;
&&� �
public'' 
static''

GUIContent'' 
	cameraFOV'' (
='') *
new''+ .

GUIContent''/ 9
(''9 :
$str'': I
,''I J
$str	''K �
)
''� �
;
''� �
public(( 
static((

GUIContent(( 
positionOffset(( -
=((. /
new((0 3

GUIContent((4 >
(((> ?
$str((? P
,((P Q
$str	((R �
)
((� �
;
((� �
public)) 
static))

GUIContent)) 

=))- .
new))/ 2

GUIContent))3 =
())= >
$str))> G
,))G H
$str	))I �
)
))� �
;
))� �
}** 	
private-- 

HeaderBool--
m_FiltersFoldout-- (
;--( )
private.. 
int..

=..  
$num..! "
;.." #
private// 

HeaderBool//
m_RenderFoldout// '
;//' (
private00 
int00
m_MaterialLines00  
=00! "
$num00# $
;00$ %
private11 
int11
m_DepthLines11 
=11 
$num11  !
;11! "
private22 
int22

=22  
$num22! "
;22" #
private55 
SerializedProperty55

m_Callback55  *
;55* +
private66 
SerializedProperty66
	m_PassTag66  )
;66) *
private88 
SerializedProperty88
m_FilterSettings88  0
;880 1
private99 
SerializedProperty99

;99- .
private:: 
SerializedProperty::
m_LayerMask::  +
;::+ ,
private;; 
SerializedProperty;;
m_ShaderPasses;;  .
;;;. /
private== 
SerializedProperty==
m_OverrideMaterial==  2
;==2 3
private>> 
SerializedProperty>>
m_OverrideMaterialPass>>  6
;>>6 7
private@@ 
SerializedProperty@@
m_OverrideDepth@@  /
;@@/ 0
privateAA 
SerializedPropertyAA
m_WriteDepthAA  ,
;AA, -
privateBB 
SerializedPropertyBB
m_DepthStateBB  ,
;BB, -
privateDD 
SerializedPropertyDD
m_OverrideStencilDD  1
;DD1 2
privateFF 
SerializedPropertyFF
m_CameraSettingsFF  0
;FF0 1
privateGG 
SerializedPropertyGG
m_OverrideCameraGG  0
;GG0 1
privateHH 
SerializedPropertyHH
m_FOVHH  %
;HH% &
privateII 
SerializedPropertyII
m_CameraOffsetII  .
;II. /
privateJJ 
SerializedPropertyJJ
m_RestoreCameraJJ  /
;JJ/ 0
privateLL 
ListLL 
<LL 
SerializedObjectLL %
>LL% &
m_propertiesLL' 3
=LL4 5
newLL6 9
ListLL: >
<LL> ?
SerializedObjectLL? O
>LLO P
(LLP Q
)LLQ R
;LLR S
staticNN 
boolNN !
FilterRenderPassEventNN )
(NN) *
intNN* -
evtNN. 1
)NN1 2
=>NN3 5
evtPP 
>=PP 
(PP 
intPP 
)PP 
RenderPassEventPP (
.PP( )$
BeforeRenderingPrepassesPP) A
&&PPB D
typeofRR 
(RR 
RenderPassEventRR "
)RR" #
.RR# $
GetFieldRR$ ,
(RR, -
EnumRR- 1
.RR1 2
GetNameRR2 9
(RR9 :
typeofRR: @
(RR@ A
RenderPassEventRRA P
)RRP Q
,RRQ R
evtRRS V
)RRV W
)RRW X
?RRX Y
.RRY Z
GetCustomAttributeRRZ l
(RRl m
typeofRRm s
(RRs t
ObsoleteAttribute	RRt �
)
RR� �
)
RR� �
==
RR� �
null
RR� �
;
RR� �
privateUU 

GUIContentUU 
[UU 
]UU 
m_EventOptionNamesUU /
=UU0 1
EnumUU2 6
.UU6 7
	GetValuesUU7 @
(UU@ A
typeofUUA G
(UUG H
RenderPassEventUUH W
)UUW X
)UUX Y
.UUY Z
CastUUZ ^
<UU^ _
intUU_ b
>UUb c
(UUc d
)UUd e
.VV 
WhereVV
(VV !
FilterRenderPassEventVV (
)VV( )
.WW 
SelectWW
(WW 
xWW 
=>WW 
newWW 

GUIContentWW '
(WW' (
EnumWW( ,
.WW, -
GetNameWW- 4
(WW4 5
typeofWW5 ;
(WW; <
RenderPassEventWW< K
)WWK L
,WWL M
xWWN O
)WWO P
)WWP Q
)WWQ R
.WWR S
ToArrayWWS Z
(WWZ [
)WW[ \
;WW\ ]
privateZZ 
intZZ 
[ZZ 
]ZZ 
m_EventOptionValuesZZ )
=ZZ* +
EnumZZ, 0
.ZZ0 1
	GetValuesZZ1 :
(ZZ: ;
typeofZZ; A
(ZZA B
RenderPassEventZZB Q
)ZZQ R
)ZZR S
.ZZS T
CastZZT X
<ZZX Y
intZZY \
>ZZ\ ]
(ZZ] ^
)ZZ^ _
.[[ 
Where[[
([[ !
FilterRenderPassEvent[[ (
)[[( )
.[[) *
ToArray[[* 1
([[1 2
)[[2 3
;[[3 4
private]] 
void]] 
Init]] 
(]] 
SerializedProperty]] ,
property]]- 5
)]]5 6
{^^ 	
var`` 
key`` 
=`` 
$"`` 
{`` 
this`` 
.`` 
ToString`` &
(``& '
)``' (
.``( )
Split``) .
(``. /
$char``/ 2
)``2 3
.``3 4
Last``4 8
(``8 9
)``9 :
}``: ;
.``; <
{``< =
property``= E
.``E F
serializedObject``F V
.``V W
targetObject``W c
.``c d
name``d h
}``h i
"``i j
;``j k
m_FiltersFoldoutaa 
=aa 
newaa "

HeaderBoolaa# -
(aa- .
$"aa. 0
{aa0 1
keyaa1 4
}aa4 5
.FiltersFoldoutaa5 D
"aaD E
,aaE F
trueaaG K
)aaK L
;aaL M
m_RenderFoldoutbb 
=bb 
newbb !

HeaderBoolbb" ,
(bb, -
$"bb- /
{bb/ 0
keybb0 3
}bb3 4
.RenderFoldoutbb4 B
"bbB C
)bbC D
;bbD E

m_Callbackee 
=ee 
propertyee !
.ee! " 
FindPropertyRelativeee" 6
(ee6 7
$stree7 >
)ee> ?
;ee? @
	m_PassTagff 
=ff 
propertyff  
.ff  ! 
FindPropertyRelativeff! 5
(ff5 6
$strff6 ?
)ff? @
;ff@ A
m_FilterSettingsii 
=ii 
propertyii '
.ii' ( 
FindPropertyRelativeii( <
(ii< =
$strii= M
)iiM N
;iiN O

=jj 
m_FilterSettingsjj ,
.jj, - 
FindPropertyRelativejj- A
(jjA B
$strjjB S
)jjS T
;jjT U
m_LayerMaskkk 
=kk 
m_FilterSettingskk *
.kk* + 
FindPropertyRelativekk+ ?
(kk? @
$strkk@ K
)kkK L
;kkL M
m_ShaderPassesll 
=ll 
m_FilterSettingsll -
.ll- . 
FindPropertyRelativell. B
(llB C
$strllC N
)llN O
;llO P
m_OverrideMaterialoo 
=oo  
propertyoo! )
.oo) * 
FindPropertyRelativeoo* >
(oo> ?
$stroo? Q
)ooQ R
;ooR S"
m_OverrideMaterialPasspp "
=pp# $
propertypp% -
.pp- . 
FindPropertyRelativepp. B
(ppB C
$strppC ^
)pp^ _
;pp_ `
m_OverrideDepthss 
=ss 
propertyss &
.ss& ' 
FindPropertyRelativess' ;
(ss; <
$strss< P
)ssP Q
;ssQ R
m_WriteDepthtt 
=tt 
propertytt #
.tt# $ 
FindPropertyRelativett$ 8
(tt8 9
$strtt9 F
)ttF G
;ttG H
m_DepthStateuu 
=uu 
propertyuu #
.uu# $ 
FindPropertyRelativeuu$ 8
(uu8 9
$struu9 O
)uuO P
;uuP Q
m_OverrideStencilxx 
=xx 
propertyxx  (
.xx( ) 
FindPropertyRelativexx) =
(xx= >
$strxx> O
)xxO P
;xxP Q
m_CameraSettings{{ 
={{ 
property{{ '
.{{' ( 
FindPropertyRelative{{( <
({{< =
$str{{= M
){{M N
;{{N O
m_OverrideCamera|| 
=|| 
m_CameraSettings|| /
.||/ 0 
FindPropertyRelative||0 D
(||D E
$str||E U
)||U V
;||V W
m_FOV}} 
=}} 
m_CameraSettings}} $
.}}$ % 
FindPropertyRelative}}% 9
(}}9 :
$str}}: M
)}}M N
;}}N O
m_CameraOffset~~ 
=~~ 
m_CameraSettings~~ -
.~~- . 
FindPropertyRelative~~. B
(~~B C
$str~~C K
)~~K L
;~~L M
m_RestoreCamera 
= 
m_CameraSettings .
.. / 
FindPropertyRelative/ C
(C D
$strD S
)S T
;T U
m_properties
�� 
.
�� 
Add
�� 
(
�� 
property
�� %
.
��% &
serializedObject
��& 6
)
��6 7
;
��7 8
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
��# '
rect
��( ,
,
��, - 
SerializedProperty
��. @
property
��A I
,
��I J

GUIContent
��K U
label
��V [
)
��[ \
{
�� 
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
�� 
.
�� 
BeginChangeCheck
��
(
�� 
)
�� 
;
��  
	EditorGUI
�� 
.
�� 

��
(
�� 
rect
�� 
,
��  
label
��! &
,
��& '
property
��( 0
)
��0 1
;
��1 2
if
�� 
(
�� 
!
�� 
m_properties
�� 
.
�� 
Contains
�� &
(
��& '
property
��' /
.
��/ 0
serializedObject
��0 @
)
��@ A
)
��A B
{
�� 
Init
�� 
(
�� 
property
�� 
)
�� 
;
�� 
}
�� 
var
�� 
passName
�� 
=
�� 
property
�� #
.
��# $
serializedObject
��$ 4
.
��4 5
FindProperty
��5 A
(
��A B
$str
��B J
)
��J K
.
��K L
stringValue
��L W
;
��W X
if
�� 
(
�� 
passName
�� 
!=
�� 
	m_PassTag
�� 
.
�� 
stringValue
�� (
)
��( )
{
�� 
	m_PassTag
�� 
.
��
stringValue
�� 
=
�� 
passName
�� $
;
��$ %
property
�� 
.
�� 
serializedObject
��
.
�� %
ApplyModifiedProperties
�� 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
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
��( )
int
�� 

�� 
=
�� 
	EditorGUI
��  )
.
��) *
IntPopup
��* 2
(
��2 3
rect
��3 7
,
��7 8
Styles
��9 ?
.
��? @
callback
��@ H
,
��H I

m_Callback
��J T
.
��T U
intValue
��U ]
,
��] ^ 
m_EventOptionNames
��_ q
,
��q r"
m_EventOptionValues��s �
)��� �
;��� �
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
��* +

m_Callback
�� 
.
�� 
intValue
�� #
=
��$ %

��& 3
;
��3 4
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� -
;
��- .
	DoFilters
�� 
(
�� 
ref
�� 
rect
�� 
)
�� 
;
��  
m_RenderFoldout
�� 
.
�� 
value
�� 
=
�� 
	EditorGUI
�� $
.
��$ %
Foldout
��% ,
(
��, -
rect
��- 1
,
��1 2
m_RenderFoldout
��3 B
.
��B C
value
��C H
,
��H I
Styles
��J P
.
��P Q
renderHeader
��Q ]
,
��] ^
true
��_ c
)
��c d
;
��d e
SaveHeaderBool
�� 
(
�� 
m_RenderFoldout
�� !
)
��! "
;
��" #
rect
�� 
.
�� 
y
�� 	
+=
��
 
Styles
��
.
�� 
defaultLineSpace
�� $
;
��$ %
if
�� 
(
�� 
m_RenderFoldout
�� 
.
�� 
value
�� 
)
�� 
{
�� 
	EditorGUI
�� 
.
��
indentLevel
�� 
++
�� 
;
��  
DoMaterialOverride
�� 
(
�� 
ref
�� 
rect
�� 
)
��  
;
��  !
rect
�� 
.
�� 	
y
��	 

+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� %
;
��% &
DoDepthOverride
�� 
(
�� 
ref
�� 
rect
�� 
)
�� 
;
�� 
rect
�� 
.
�� 	
y
��	 

+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� %
;
��% &
	EditorGUI
�� 
.
��

�� 
(
�� 
rect
��  
,
��  !
m_OverrideStencil
��" 3
)
��3 4
;
��4 5
rect
�� 
.
�� 	
y
��	 

+=
�� 
	EditorGUI
�� 
.
�� 
GetPropertyHeight
�� )
(
��) *
m_OverrideStencil
��* ;
)
��; <
;
��< =
DoCameraOverride
�� 
(
�� 
ref
�� 
rect
�� 
)
�� 
;
�� 
rect
�� 
.
�� 	
y
��	 

+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� %
;
��% &
	EditorGUI
�� 
.
��
indentLevel
�� 
--
�� 
;
�� 
}
�� 
	EditorGUI
�� 
.
�� 
EndProperty
��
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� 
(
��  
)
��  !
)
��! "
property
�� 
.
�� 
serializedObject
��
.
�� %
ApplyModifiedProperties
�� 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
void
�� 	
	DoFilters
��
 
(
�� 
ref
�� 
Rect
�� 
rect
�� !
)
��! "
{
�� 
m_FiltersFoldout
�� 
.
�� 
value
�� 
=
�� 
	EditorGUI
�� (
.
��( )
Foldout
��) 0
(
��0 1
rect
��1 5
,
��5 6
m_FiltersFoldout
��7 G
.
��G H
value
��H M
,
��M N
Styles
��O U
.
��U V

��V c
,
��c d
true
��e i
)
��i j
;
��j k
SaveHeaderBool
�� 
(
�� 
m_FiltersFoldout
�� %
)
��% &
;
��& '
rect
�� 

.
��
 
y
�� 
+=
��
Styles
�� 
.
�� 
defaultLineSpace
�� '
;
��' (
if
�� 
(
��	 

m_FiltersFoldout
��
 
.
�� 
value
��  
)
��  !
{
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $

��% 2
,
��2 3
Styles
��4 :
.
��: ;
renderQueueFilter
��; L
)
��L M
;
��M N
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $
m_LayerMask
��% 0
,
��0 1
Styles
��2 8
.
��8 9
	layerMask
��9 B
)
��B C
;
��C D
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 

�� '
(
��' (
rect
��( ,
,
��, -
m_ShaderPasses
��. <
,
��< =
Styles
��> D
.
��D E
shaderPassFilter
��E U
,
��U V
true
��W [
)
��[ \
;
��\ ]
rect
�� 
.
�� 
y
�� 
+=
�� 
	EditorGUI
�� #
.
��# $
GetPropertyHeight
��$ 5
(
��5 6
m_ShaderPasses
��6 D
)
��D E
;
��E F
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
�� 
}
�� 
void
�� 	 
DoMaterialOverride
��
 
(
�� 
ref
��  
Rect
��! %
rect
��& *
)
��* +
{
�� 
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� "
,
��" # 
m_OverrideMaterial
��$ 6
,
��6 7
Styles
��8 >
.
��> ?
overrideMaterial
��? O
)
��O P
;
��P Q
if
�� 
(
��	 
 
m_OverrideMaterial
��
 
.
�� "
objectReferenceValue
�� 1
)
��1 2
{
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� !
(
��! "
)
��" #
;
��# $
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $$
m_OverrideMaterialPass
��% ;
,
��; <
Styles
��= C
.
��C D"
overrideMaterialPass
��D X
)
��X Y
;
��Y Z
if
�� 	
(
��
 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� #
(
��# $
)
��$ %
)
��% &$
m_OverrideMaterialPass
�� 
.
�� 
intValue
�� '
=
��( )
Mathf
��* /
.
��/ 0
Max
��0 3
(
��3 4
$num
��4 5
,
��5 6$
m_OverrideMaterialPass
��7 M
.
��M N
intValue
��N V
)
��V W
;
��W X
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
}
�� 
}
�� 
void
�� 	
DoDepthOverride
��
 
(
�� 
ref
�� 
Rect
�� "
rect
��# '
)
��' (
{
�� 
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� "
,
��" #
m_OverrideDepth
��$ 3
,
��3 4
Styles
��5 ;
.
��; <

��< I
)
��I J
;
��J K
if
�� 
(
��	 

m_OverrideDepth
��
 
.
�� 
	boolValue
�� #
)
��# $
{
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $
m_WriteDepth
��% 1
,
��1 2
Styles
��3 9
.
��9 :

writeDepth
��: D
)
��D E
;
��E F
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $
m_DepthState
��% 1
,
��1 2
Styles
��3 9
.
��9 :

depthState
��: D
)
��D E
;
��E F
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
}
�� 
}
�� 
void
�� 	
DoCameraOverride
��
 
(
�� 
ref
�� 
Rect
�� #
rect
��$ (
)
��( )
{
�� 
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� "
,
��" #
m_OverrideCamera
��$ 4
,
��4 5
Styles
��6 <
.
��< =
overrideCamera
��= K
)
��K L
;
��L M
if
�� 
(
��	 

m_OverrideCamera
��
 
.
�� 
	boolValue
�� $
)
��$ %
{
�� 
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 
indentLevel
�� 
++
�� 
;
�� 
	EditorGUI
�� 
.
�� 
Slider
�� 
(
�� 
rect
�� 
,
�� 
m_FOV
�� #
,
��# $
$num
��% '
,
��' (
$num
��) -
,
��- .
Styles
��/ 5
.
��5 6
	cameraFOV
��6 ?
)
��? @
;
��@ A
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
var
�� 

offset
�� 
=
�� 
m_CameraOffset
�� "
.
��" #
vector4Value
��# /
;
��/ 0
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� !
(
��! "
)
��" #
;
��# $
var
�� 

	newOffset
�� 
=
�� 
	EditorGUI
��  
.
��  !
Vector3Field
��! -
(
��- .
rect
��. 2
,
��2 3
Styles
��4 :
.
��: ;
positionOffset
��; I
,
��I J
new
��K N
Vector3
��O V
(
��V W
offset
��W ]
.
��] ^
x
��^ _
,
��_ `
offset
��a g
.
��g h
y
��h i
,
��i j
offset
��k q
.
��q r
z
��r s
)
��s t
)
��t u
;
��u v
if
�� 	
(
��	 

	EditorGUI
��
 
.
�� 
EndChangeCheck
�� "
(
��" #
)
��# $
)
��$ %
m_CameraOffset
�� 
.
�� 
vector4Value
��  
=
��! "
new
��# &
Vector4
��' .
(
��. /
	newOffset
��/ 8
.
��8 9
x
��9 :
,
��: ;
	newOffset
��< E
.
��E F
y
��F G
,
��G H
	newOffset
��I R
.
��R S
z
��S T
,
��T U
$num
��V X
)
��X Y
;
��Y Z
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 

�� 
(
�� 
rect
�� #
,
��# $
m_RestoreCamera
��% 4
,
��4 5
Styles
��6 <
.
��< =

��= J
)
��J K
;
��K L
rect
�� 
.
�� 
y
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� (
;
��( )
	EditorGUI
�� 
.
�� 
indentLevel
�� 
--
�� 
;
�� 
}
�� 
}
�� 
public
�� 
override
�� 
float
�� 
GetPropertyHeight
�� ,
(
��, - 
SerializedProperty
��- ?
property
��@ H
,
��H I

GUIContent
��J T
label
��U Z
)
��Z [
{
�� 
float
�� 
height
�� 
=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� ,
;
��, -
Init
�� 

(
��
 
property
�� 
)
�� 
;
�� 
height
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� -
*
��. /
(
��0 1
m_FiltersFoldout
��1 A
.
��A B
value
��B G
?
��H I

��J W
:
��X Y
$num
��Z [
)
��[ \
;
��\ ]
height
�� 
+=
�� 
m_FiltersFoldout
�� &
.
��& '
value
��' ,
?
��- .
	EditorGUI
��/ 8
.
��8 9
GetPropertyHeight
��9 J
(
��J K
m_ShaderPasses
��K Y
)
��Y Z
:
��[ \
$num
��] ^
;
��^ _
height
�� 
+=
�� 
Styles
�� 
.
�� 
defaultLineSpace
�� -
;
��- .
if
�� 
(
�� 
m_RenderFoldout
�� 
.
��  
value
��  %
)
��% &
{
�� 
height
�� 
+=
�� 
Styles
��  
.
��  !
defaultLineSpace
��! 1
*
��2 3
(
��4 5 
m_OverrideMaterial
��5 G
.
��G H"
objectReferenceValue
��H \
!=
��] _
null
��` d
?
��e f
m_MaterialLines
��g v
:
��w x
$num
��y z
)
��z {
;
��{ |
height
�� 
+=
�� 
Styles
��  
.
��  !
defaultLineSpace
��! 1
*
��2 3
(
��4 5
m_OverrideDepth
��5 D
.
��D E
	boolValue
��E N
?
��O P
m_DepthLines
��Q ]
:
��^ _
$num
��` a
)
��a b
;
��b c
height
�� 
+=
�� 
	EditorGUI
�� #
.
��# $
GetPropertyHeight
��$ 5
(
��5 6
m_OverrideStencil
��6 G
)
��G H
;
��H I
height
�� 
+=
�� 
Styles
��  
.
��  !
defaultLineSpace
��! 1
*
��2 3
(
��4 5
m_OverrideCamera
��5 E
.
��E F
	boolValue
��F O
?
��P Q

��R _
:
��` a
$num
��b c
)
��c d
;
��d e
}
�� 
return
�� 
height
�� 
;
�� 
}
�� 
private
�� 
void
��
SaveHeaderBool
��  
(
��  !

HeaderBool
��! +
boolObj
��, 3
)
��3 4
{
�� 
EditorPrefs
�� 
.
�� 
SetBool
�� 
(
�� 
boolObj
�� !
.
��! "
key
��" %
,
��% &
boolObj
��' .
.
��. /
value
��/ 4
)
��4 5
;
��5 6
}
�� 
class
�� 


HeaderBool
�� 
{
�� 
public
�� 
string
��
key
�� 
;
�� 
public
�� 
bool
��
value
�� 
;
�� 
public
�� 

HeaderBool
��
(
�� 
string
�� 
_key
�� #
,
��# $
bool
��% )
_default
��* 2
=
��3 4
false
��5 :
)
��: ;
{
�� 
key
�� 

=
�� 
_key
��
;
�� 
if
�� 	
(
��
 
EditorPrefs
�� 
.
�� 
HasKey
�� 
(
�� 
key
�� !
)
��! "
)
��" #
value
�� 
=
�� 
EditorPrefs
�� 
.
�� 
GetBool
�� #
(
��# $
key
��$ '
)
��' (
;
��( )
else
�� 
value
�� 

=
�� 
_default
��
;
�� 
EditorPrefs
�� 
.
�� 
SetBool
�� 
(
�� 
key
�� 
,
�� 
value
��  %
)
��% &
;
��& '
}
�� 
}
�� 
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGraph\UniversalStructs.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
ShaderGraph* 5
{ 
static 

class 
UniversalStructs !
{ 
public 
static 
StructDescriptor &
Varyings' /
=0 1
new2 5
StructDescriptor6 F
(F G
)G H
{ 	
name		 
=		 
$str		 
,		 

packFields

 
=

 
true

 
,

 
fields 
= 
new 
FieldDescriptor (
[( )
]) *
{ 
StructFields
.
Varyings
.

positionCS
,
StructFields 
. 
Varyings %
.% &

positionWS& 0
,0 1
StructFields 
. 
Varyings %
.% &
normalWS& .
,. /
StructFields 
. 
Varyings %
.% &
	tangentWS& /
,/ 0
StructFields 
. 
Varyings %
.% &
	texCoord0& /
,/ 0
StructFields 
. 
Varyings %
.% &
	texCoord1& /
,/ 0
StructFields 
. 
Varyings %
.% &
	texCoord2& /
,/ 0
StructFields 
. 
Varyings %
.% &
	texCoord3& /
,/ 0
StructFields 
. 
Varyings %
.% &
color& +
,+ ,
StructFields 
. 
Varyings %
.% &
viewDirectionWS& 5
,5 6
StructFields 
. 
Varyings %
.% &
screenPosition& 4
,4 5!
UniversalStructFields %
.% &
Varyings& .
.. /

lightmapUV/ 9
,9 :!
UniversalStructFields %
.% &
Varyings& .
.. /
sh/ 1
,1 2!
UniversalStructFields %
.% &
Varyings& .
.. /#
fogFactorAndVertexLight/ F
,F G!
UniversalStructFields %
.% &
Varyings& .
.. /
shadowCoord/ :
,: ;
StructFields 
. 
Varyings %
.% &

instanceID& 0
,0 1!
UniversalStructFields %
.% &
Varyings& .
.. /+
stereoTargetEyeIndexAsBlendIdx0/ N
,N O!
UniversalStructFields %
.% &
Varyings& .
.. /,
 stereoTargetEyeIndexAsRTArrayIdx/ O
,O P
StructFields 
. 
Varyings %
.% &
cullFace& .
,. /
}   
}!! 	
;!!	 

}"" 
}## ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ScriptableRendererDataEditor.cs
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
	Rendering

 
.

  
	Universal

  )
{ 
[ 
CustomEditor 
( 
typeof 
( "
ScriptableRendererData /
)/ 0
,0 1
true2 6
)6 7
]7 8
[
	MovedFrom
(
$str
)
]
public
class
ScriptableRendererDataEditor
:
Editor
{ 
class 
Styles 
{ 	
public 
static 
readonly "

GUIContent# -
RenderFeatures. <
== >
new 

GUIContent 
( 
$str 2
,2 3
$str	 �
)
� �
;
� �
public 
static 
readonly "

GUIContent# -

=< =
new 

GUIContent 
( 
$str %
,% &
$str' m
)m n
;n o
public 
static 
readonly "

GUIContent# -
MissingFeature. <
== >
new? B

GUIContentC M
(M N
$strN g
,g h
$str	 �
)
� �
;
� �
public 
static 
GUIStyle "
BoldLabelSimple# 2
;2 3
static 
Styles 
( 
) 
{ 
BoldLabelSimple 
=  !
new" %
GUIStyle& .
(. /
EditorStyles/ ;
.; <
label< A
)A B
;B C
BoldLabelSimple   
.    
	fontStyle    )
=  * +
	FontStyle  , 5
.  5 6
Bold  6 :
;  : ;
}!! 
}"" 	
private$$ 
SerializedProperty$$ "
m_RendererFeatures$$# 5
;$$5 6
private%% 
SerializedProperty%% "!
m_RendererFeaturesMap%%# 8
;%%8 9
private&& 
SerializedProperty&& "
m_FalseBool&&# .
;&&. /
['' 	
SerializeField''	 
]'' 
private''  
bool''! %
	falseBool''& /
=''0 1
false''2 7
;''7 8
List(( 
<(( 
Editor((
>(( 
	m_Editors(( 
=((  
new((! $
List((% )
<(() *
Editor((* 0
>((0 1
(((1 2
)((2 3
;((3 4
private** 
void** 
OnEnable** 
(** 
)** 
{++ 	
m_RendererFeatures,, 
=,,  
serializedObject,,! 1
.,,1 2
FindProperty,,2 >
(,,> ?
nameof,,? E
(,,E F"
ScriptableRendererData,,F \
.,,\ ]
m_RendererFeatures,,] o
),,o p
),,p q
;,,q r!
m_RendererFeaturesMap-- !
=--" #
serializedObject--$ 4
.--4 5
FindProperty--5 A
(--A B
nameof--B H
(--H I"
ScriptableRendererData--I _
.--_ ` 
m_RendererFeatureMap--` t
)--t u
)--u v
;--v w
var.. 
	editorObj.. 
=.. 
new.. 
SerializedObject..  0
(..0 1
this..1 5
)..5 6
;..6 7
m_FalseBool// 
=// 
	editorObj// #
.//# $
FindProperty//$ 0
(//0 1
nameof//1 7
(//7 8
	falseBool//8 A
)//A B
)//B C
;//C D
UpdateEditorList00 
(00 
)00 
;00 
}11 	
public33 
override33 
void33 
OnInspectorGUI33 +
(33+ ,
)33, -
{44 	
if55 
(55 
m_RendererFeatures55 "
==55# %
null55& *
)55* +
OnEnable66 
(66 
)66 
;66 
else77 
if77 
(77 
m_RendererFeatures77 '
.77' (
	arraySize77( 1
!=772 4
	m_Editors775 >
.77> ?
Count77? D
)77D E
UpdateEditorList88  
(88  !
)88! "
;88" #
serializedObject:: 
.:: 
Update:: #
(::# $
)::$ %
;::% &#
DrawRendererFeatureList;; #
(;;# $
);;$ %
;;;% &
}<< 	
private>> 
void>> #
DrawRendererFeatureList>> ,
(>>, -
)>>- .
{?? 	
EditorGUILayout@@ 
.@@ 

LabelField@@ &
(@@& '
Styles@@' -
.@@- .
RenderFeatures@@. <
,@@< =
EditorStyles@@> J
.@@J K
	boldLabel@@K T
)@@T U
;@@U V
EditorGUILayoutAA 
.AA 
SpaceAA !
(AA! "
)AA" #
;AA# $
ifCC 
(CC 
m_RendererFeaturesCC "
.CC" #
	arraySizeCC# ,
==CC- /
$numCC0 1
)CC1 2
{DD 
EditorGUILayoutEE 
.EE  
HelpBoxEE  '
(EE' (
$strEE( D
,EED E
MessageTypeEEF Q
.EEQ R
InfoEER V
)EEV W
;EEW X
}FF 
elseGG 
{HH 
CoreEditorUtilsJJ 
.JJ  
DrawSplitterJJ  ,
(JJ, -
)JJ- .
;JJ. /
forKK 
(KK 
intKK 
iKK 
=KK 
$numKK 
;KK 
iKK  !
<KK" #
m_RendererFeaturesKK$ 6
.KK6 7
	arraySizeKK7 @
;KK@ A
iKKB C
++KKC E
)KKE F
{LL 
SerializedPropertyMM &"
renderFeaturesPropertyMM' =
=MM> ?
m_RendererFeaturesMM@ R
.MMR S"
GetArrayElementAtIndexMMS i
(MMi j
iMMj k
)MMk l
;MMl m
DrawRendererFeatureNN '
(NN' (
iNN( )
,NN) *
refNN+ ."
renderFeaturesPropertyNN/ E
)NNE F
;NNF G
CoreEditorUtilsOO #
.OO# $
DrawSplitterOO$ 0
(OO0 1
)OO1 2
;OO2 3
}PP 
}QQ 
EditorGUILayoutRR 
.RR 
SpaceRR !
(RR! "
)RR" #
;RR# $
ifUU 
(UU 
	GUILayoutUU 
.UU 
ButtonUU  
(UU  !
$strUU! 7
,UU7 8
EditorStylesUU9 E
.UUE F

miniButtonUUF P
)UUP Q
)UUQ R
{VV 
AddPassMenuWW 
(WW 
)WW 
;WW 
}XX 
}YY 	
private[[ 
void[[ 
DrawRendererFeature[[ (
([[( )
int[[) ,
index[[- 2
,[[2 3
ref[[4 7
SerializedProperty[[8 J!
renderFeatureProperty[[K `
)[[` a
{\\ 	
Object]] !
rendererFeatureObjRef]] (
=]]) *!
renderFeatureProperty]]+ @
.]]@ A 
objectReferenceValue]]A U
;]]U V
if^^ 
(^^ !
rendererFeatureObjRef^^ %
!=^^& (
null^^) -
)^^- .
{__ 
bool``  
hasChangedProperties`` )
=``* +
false``, 1
;``1 2
stringaa 
titleaa 
=aa 
ObjectNamesaa *
.aa* +
GetInspectorTitleaa+ <
(aa< =!
rendererFeatureObjRefaa= R
)aaR S
;aaS T
Editordd !
rendererFeatureEditordd ,
=dd- .
	m_Editorsdd/ 8
[dd8 9
indexdd9 >
]dd> ?
;dd? @
SerializedObjectee  ,
 serializedRendererFeaturesEditoree! A
=eeB C!
rendererFeatureEditoreeD Y
.eeY Z
serializedObjecteeZ j
;eej k,
 serializedRendererFeaturesEditorff 0
.ff0 1
Updateff1 7
(ff7 8
)ff8 9
;ff9 :
	EditorGUIii 
.ii 
BeginChangeCheckii *
(ii* +
)ii+ ,
;ii, -
SerializedPropertyjj "
activePropertyjj# 1
=jj2 3,
 serializedRendererFeaturesEditorjj4 T
.jjT U
FindPropertyjjU a
(jja b
$strjjb l
)jjl m
;jjm n
boolkk 
displayContentkk #
=kk$ %
CoreEditorUtilskk& 5
.kk5 6
DrawHeaderTogglekk6 F
(kkF G
titlekkG L
,kkL M!
renderFeaturePropertykkN c
,kkc d
activePropertykke s
,kks t
poskku x
=>kky {
OnContextClick	kk| �
(
kk� �
pos
kk� �
,
kk� �
index
kk� �
)
kk� �
)
kk� �
;
kk� � 
hasChangedPropertiesll $
|=ll% '
	EditorGUIll( 1
.ll1 2
EndChangeCheckll2 @
(ll@ A
)llA B
;llB C
ifoo 
(oo 
displayContentoo "
)oo" #
{pp 
	EditorGUIqq 
.qq 
BeginChangeCheckqq .
(qq. /
)qq/ 0
;qq0 1
SerializedPropertyrr &
namePropertyrr' 3
=rr4 5,
 serializedRendererFeaturesEditorrr6 V
.rrV W
FindPropertyrrW c
(rrc d
$strrrd l
)rrl m
;rrm n
namePropertyss  
.ss  !
stringValuess! ,
=ss- .
ValidateNamess/ ;
(ss; <
EditorGUILayoutss< K
.ssK L
DelayedTextFieldssL \
(ss\ ]
Stylesss] c
.ssc d

,ssq r
namePropertysss 
.	ss �
stringValue
ss� �
)
ss� �
)
ss� �
;
ss� �
iftt 
(tt 
	EditorGUItt !
.tt! "
EndChangeChecktt" 0
(tt0 1
)tt1 2
)tt2 3
{uu  
hasChangedPropertiesvv ,
=vv- .
truevv/ 3
;vv3 4!
rendererFeatureObjRefyy -
.yy- .
nameyy. 2
=yy3 4
namePropertyyy5 A
.yyA B
stringValueyyB M
;yyM N

.zz% &

SaveAssetszz& 0
(zz0 1
)zz1 2
;zz2 3
ProjectWindowUtil}} )
.}}) *
ShowCreatedAsset}}* :
(}}: ;
target}}; A
)}}A B
;}}B C
}~~ 
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
��0 1#
rendererFeatureEditor
�� )
.
��) *
OnInspectorGUI
��* 8
(
��8 9
)
��9 :
;
��: ;"
hasChangedProperties
�� (
|=
��) +
	EditorGUI
��, 5
.
��5 6
EndChangeCheck
��6 D
(
��D E
)
��E F
;
��F G
EditorGUILayout
�� #
.
��# $
Space
��$ )
(
��) *
EditorGUIUtility
��* :
.
��: ;
singleLineHeight
��; K
)
��K L
;
��L M
}
�� 
if
�� 
(
�� "
hasChangedProperties
�� (
)
��( )
{
�� .
 serializedRendererFeaturesEditor
�� 4
.
��4 5%
ApplyModifiedProperties
��5 L
(
��L M
)
��M N
;
��N O
serializedObject
�� $
.
��$ %%
ApplyModifiedProperties
��% <
(
��< =
)
��= >
;
��> ?
	ForceSave
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 
else
�� 
{
�� 
CoreEditorUtils
�� 
.
��  
DrawHeaderToggle
��  0
(
��0 1
Styles
��1 7
.
��7 8
MissingFeature
��8 F
,
��F G#
renderFeatureProperty
��G \
,
��\ ]
m_FalseBool
��^ i
,
��i j
pos
��j m
=>
��n p
OnContextClick
��q 
(�� �
pos��� �
,��� �
index��� �
)��� �
)��� �
;��� �
m_FalseBool
�� 
.
�� 
	boolValue
�� %
=
��& '
false
��( -
;
��- .
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
��. /
MissingFeature
��/ =
.
��= >
tooltip
��> E
,
��E F
MessageType
��G R
.
��R S
Error
��S X
)
��X Y
;
��Y Z
if
�� 
(
�� 
	GUILayout
�� 
.
�� 
Button
�� $
(
��$ %
$str
��% 2
,
��2 3
EditorStyles
��4 @
.
��@ A

miniButton
��A K
)
��K L
)
��L M
{
�� $
ScriptableRendererData
�� *
data
��+ /
=
��0 1
target
��2 8
as
��9 ;$
ScriptableRendererData
��< R
;
��R S
data
�� 
.
�� &
ValidateRendererFeatures
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
OnContextClick
�� #
(
��# $
Vector2
��$ +
position
��, 4
,
��4 5
int
��6 9
id
��: <
)
��< =
{
�� 	
var
�� 
menu
�� 
=
�� 
new
�� 
GenericMenu
�� &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� 
id
�� 
==
�� 
$num
�� 
)
�� 
menu
�� 
.
�� 
AddDisabledItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D M
)
��M N
)
��N O
;
��O P
else
�� 
menu
�� 
.
�� 
AddItem
�� 
(
�� 
EditorGUIUtility
�� -
.
��- .

��. ;
(
��; <
$str
��< E
)
��E F
,
��F G
false
��H M
,
��M N
(
��O P
)
��P Q
=>
��R T

��U b
(
��b c
id
��c e
,
��e f
-
��g h
$num
��h i
)
��i j
)
��j k
;
��k l
if
�� 
(
�� 
id
�� 
==
��  
m_RendererFeatures
�� (
.
��( )
	arraySize
��) 2
-
��3 4
$num
��5 6
)
��6 7
menu
�� 
.
�� 
AddDisabledItem
�� $
(
��$ %
EditorGUIUtility
��% 5
.
��5 6

��6 C
(
��C D
$str
��D O
)
��O P
)
��P Q
;
��Q R
else
�� 
menu
�� 
.
�� 
AddItem
�� 
(
�� 
EditorGUIUtility
�� -
.
��- .

��. ;
(
��; <
$str
��< G
)
��G H
,
��H I
false
��J O
,
��O P
(
��Q R
)
��R S
=>
��T V

��W d
(
��d e
id
��e g
,
��g h
$num
��i j
)
��j k
)
��k l
;
��l m
menu
�� 
.
�� 
AddSeparator
�� 
(
�� 
string
�� $
.
��$ %
Empty
��% *
)
��* +
;
��+ ,
menu
�� 
.
�� 
AddItem
�� 
(
�� 
EditorGUIUtility
�� )
.
��) *

��* 7
(
��7 8
$str
��8 @
)
��@ A
,
��A B
false
��C H
,
��H I
(
��J K
)
��K L
=>
��M O
RemoveComponent
��P _
(
��_ `
id
��` b
)
��b c
)
��c d
;
��d e
menu
�� 
.
�� 
DropDown
�� 
(
�� 
new
�� 
Rect
�� "
(
��" #
position
��# +
,
��+ ,
Vector2
��- 4
.
��4 5
zero
��5 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
private
�� 
void
�� 
AddPassMenu
��  
(
��  !
)
��! "
{
�� 	
GenericMenu
�� 
menu
�� 
=
�� 
new
�� "
GenericMenu
��# .
(
��. /
)
��/ 0
;
��0 1
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
��J K'
ScriptableRendererFeature
��K d
>
��d e
(
��e f
)
��f g
;
��g h
foreach
�� 
(
�� 
Type
�� 
type
�� 
in
�� !
types
��" '
)
��' (
{
�� 
var
�� 
data
�� 
=
�� 
target
�� !
as
��" $$
ScriptableRendererData
��% ;
;
��; <
if
�� 
(
�� 
data
�� 
.
�� #
DuplicateFeatureCheck
�� .
(
��. /
type
��/ 3
)
��3 4
)
��4 5
{
�� 
continue
�� 
;
�� 
}
�� 
string
�� 
path
�� 
=
�� !
GetMenuNameFromType
�� 1
(
��1 2
type
��2 6
)
��6 7
;
��7 8
menu
�� 
.
�� 
AddItem
�� 
(
�� 
new
��  

GUIContent
��! +
(
��+ ,
path
��, 0
)
��0 1
,
��1 2
false
��3 8
,
��8 9
AddComponent
��: F
,
��F G
type
��H L
.
��L M
Name
��M Q
)
��Q R
;
��R S
}
�� 
menu
�� 
.
�� 

�� 
(
�� 
)
��  
;
��  !
}
�� 	
private
�� 
void
�� 
AddComponent
�� !
(
��! "
object
��" (
type
��) -
)
��- .
{
�� 	
serializedObject
�� 
.
�� 
Update
�� #
(
��# $
)
��$ %
;
��% &
ScriptableObject
�� 
	component
�� &
=
��' (
CreateInstance
��) 7
(
��7 8
(
��8 9
string
��9 ?
)
��? @
type
��@ D
)
��D E
;
��E F
	component
�� 
.
�� 
name
�� 
=
�� 
$"
�� 
New
�� "
{
��" #
(
��# $
string
��$ *
)
��* +
type
��+ /
}
��/ 0
"
��0 1
;
��1 2
Undo
�� 
.
�� '
RegisterCreatedObjectUndo
�� *
(
��* +
	component
��+ 4
,
��4 5
$str
��6 L
)
��L M
;
��M N
if
�� 
(
�� 

�� 
.
�� 
IsPersistent
�� *
(
��* +
target
��+ 1
)
��1 2
)
��2 3
{
�� 

�� 
.
�� 
AddObjectToAsset
�� .
(
��. /
	component
��/ 8
,
��8 9
target
��: @
)
��@ A
;
��A B
}
�� 

�� 
.
�� .
 TryGetGUIDAndLocalFileIdentifier
�� :
(
��: ;
	component
��; D
,
��D E
out
��F I
var
��J M
guid
��N R
,
��R S
out
��T W
long
��X \
localId
��] d
)
��d e
;
��e f 
m_RendererFeatures
�� 
.
�� 
	arraySize
�� (
++
��( *
;
��* + 
SerializedProperty
�� 

�� ,
=
��- . 
m_RendererFeatures
��/ A
.
��A B$
GetArrayElementAtIndex
��B X
(
��X Y 
m_RendererFeatures
��Y k
.
��k l
	arraySize
��l u
-
��v w
$num
��x y
)
��y z
;
��z {

�� 
.
�� "
objectReferenceValue
�� .
=
��/ 0
	component
��1 :
;
��: ;#
m_RendererFeaturesMap
�� !
.
��! "
	arraySize
��" +
++
��+ -
;
��- . 
SerializedProperty
�� 
guidProp
�� '
=
��( )#
m_RendererFeaturesMap
��* ?
.
��? @$
GetArrayElementAtIndex
��@ V
(
��V W#
m_RendererFeaturesMap
��W l
.
��l m
	arraySize
��m v
-
��w x
$num
��y z
)
��z {
;
��{ |
guidProp
�� 
.
�� 
	longValue
�� 
=
��  
localId
��! (
;
��( )
UpdateEditorList
�� 
(
�� 
)
�� 
;
�� 
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
��6 7
if
�� 
(
�� 

�� 
.
�� 
IsPersistent
�� *
(
��* +
target
��+ 1
)
��1 2
)
��2 3
{
�� 
	ForceSave
�� 
(
�� 
)
�� 
;
�� 
}
�� 
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
�� 
RemoveComponent
�� $
(
��$ %
int
��% (
id
��) +
)
��+ ,
{
�� 	 
SerializedProperty
�� 
property
�� '
=
��( ) 
m_RendererFeatures
��* <
.
��< =$
GetArrayElementAtIndex
��= S
(
��S T
id
��T V
)
��V W
;
��W X
Object
�� 
	component
�� 
=
�� 
property
�� '
.
��' ("
objectReferenceValue
��( <
;
��< =
property
�� 
.
�� "
objectReferenceValue
�� )
=
��* +
null
��, 0
;
��0 1
Undo
�� 
.
�� !
SetCurrentGroupName
�� $
(
��$ %
	component
��% .
==
��/ 1
null
��2 6
?
��7 8
$str
��9 R
:
��S T
$"
��U W
Remove 
��W ^
{
��^ _
	component
��_ h
.
��h i
name
��i m
}
��m n
"
��n o
)
��o p
;
��p q 
m_RendererFeatures
�� 
.
�� '
DeleteArrayElementAtIndex
�� 8
(
��8 9
id
��9 ;
)
��; <
;
��< =#
m_RendererFeaturesMap
�� !
.
��! "'
DeleteArrayElementAtIndex
��" ;
(
��; <
id
��< >
)
��> ?
;
��? @
UpdateEditorList
�� 
(
�� 
)
�� 
;
�� 
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
��6 7
if
�� 
(
�� 
	component
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
Undo
�� 
.
�� $
DestroyObjectImmediate
�� +
(
��+ ,
	component
��, 5
)
��5 6
;
��6 7
}
�� 
	ForceSave
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 

�� "
(
��" #
int
��# &
id
��' )
,
��) *
int
��+ .
offset
��/ 5
)
��5 6
{
�� 	
Undo
�� 
.
�� !
SetCurrentGroupName
�� $
(
��$ %
$str
��% :
)
��: ;
;
��; <
serializedObject
�� 
.
�� 
Update
�� #
(
��# $
)
��$ %
;
��% & 
m_RendererFeatures
�� 
.
�� 
MoveArrayElement
�� /
(
��/ 0
id
��0 2
,
��2 3
id
��4 6
+
��7 8
offset
��9 ?
)
��? @
;
��@ A#
m_RendererFeaturesMap
�� !
.
��! "
MoveArrayElement
��" 2
(
��2 3
id
��3 5
,
��5 6
id
��7 9
+
��: ;
offset
��< B
)
��B C
;
��C D
UpdateEditorList
�� 
(
�� 
)
�� 
;
�� 
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
	ForceSave
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
string
�� !
GetMenuNameFromType
�� *
(
��* +
Type
��+ /
type
��0 4
)
��4 5
{
�� 	
var
�� 
path
�� 
=
�� 
type
�� 
.
�� 
Name
��  
;
��  !
if
�� 
(
�� 
type
�� 
.
�� 
	Namespace
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
if
�� 
(
�� 
type
�� 
.
�� 
	Namespace
�� "
.
��" #
Contains
��# +
(
��+ ,
$str
��, :
)
��: ;
)
��; <
path
�� 
+=
�� 
$str
�� -
;
��- .
}
�� 
return
�� 
Regex
�� 
.
�� 
Replace
��  
(
��  !
Regex
��! &
.
��& '
Replace
��' .
(
��. /
path
��/ 3
,
��3 4
$str
��5 E
,
��E F
$str
��G N
,
��N O
RegexOptions
��P \
.
��\ ]
Compiled
��] e
)
��e f
,
��f g
$str
�� %
,
��% &
$str
��' .
,
��. /
RegexOptions
��0 <
.
��< =
Compiled
��= E
)
��E F
;
��F G
}
�� 	
private
�� 
string
�� 
ValidateName
�� #
(
��# $
string
��$ *
name
��+ /
)
��/ 0
{
�� 	
name
�� 
=
�� 
Regex
�� 
.
�� 
Replace
��  
(
��  !
name
��! %
,
��% &
$str
��' 7
,
��7 8
$str
��9 ;
)
��; <
;
��< =
return
�� 
name
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
UpdateEditorList
�� %
(
��% &
)
��& '
{
�� 	
	m_Editors
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
�� 
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
��  
m_RendererFeatures
��  2
.
��2 3
	arraySize
��3 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
	m_Editors
�� 
.
�� 
Add
�� 
(
�� 
CreateEditor
�� *
(
��* + 
m_RendererFeatures
��+ =
.
��= >$
GetArrayElementAtIndex
��> T
(
��T U
i
��U V
)
��V W
.
��W X"
objectReferenceValue
��X l
)
��l m
)
��m n
;
��n o
}
�� 
}
�� 	
private
�� 
void
�� 
	ForceSave
�� 
(
�� 
)
��  
{
�� 	

�� 
.
�� 
SetDirty
�� "
(
��" #
target
��# )
)
��) *
;
��* +
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\ShadingModels\BakedLitGUI.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
.) *
	ShaderGUI* 3
{ 
[ 
	MovedFrom 
( 
$str 5
)5 6
]6 7
public8 >
static? E
classF K
BakedLitGUIL W
{		 
public

 
struct

 
BakedLitProperties

 (
{ 	
public
MaterialProperty
bumpMapProp
;
public 
BakedLitProperties %
(% &
MaterialProperty& 6
[6 7
]7 8

properties9 C
)C D
{ 
bumpMapProp 
= 

.+ ,
FindProperty, 8
(8 9
$str9 C
,C D

propertiesE O
,O P
falseQ V
)V W
;W X
} 
} 	
public 
static 
void 
Inputs !
(! "
BakedLitProperties" 4

properties5 ?
,? @
MaterialEditorA O
materialEditorP ^
)^ _
{ 	

. 
DrawNormalArea (
(( )
materialEditor) 7
,7 8

properties9 C
.C D
bumpMapPropD O
)O P
;P Q
} 	
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Editor\ShaderGUI\TerrainLitShaderGUI.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
internal		 
class		
TerrainLitShaderGUI		 &
:		' (
UnityEditor		) 4
.		4 5
	ShaderGUI		5 >
,		> ?!
ITerrainLayerCustomUI		@ U
{

 
private 
class 
StylesLayer !
{ 	
public
readonly

GUIContent
warningHeightBasedBlending
=
new

GUIContent
(
$str	
)

;

public 
readonly 

GUIContent &
enableHeightBlend' 8
=9 :
new; >

GUIContent? I
(I J
$strJ e
,e f
$str	g �
)
� �
;
� �
public 
readonly 

GUIContent &
heightTransition' 7
=8 9
new: =

GUIContent> H
(H I
$strI \
,\ ]
$str	^ �
)
� �
;
� �
public 
readonly 

GUIContent &)
enableInstancedPerPixelNormal' D
=E F
newG J

GUIContentK U
(U V
$strV o
,o p
$str	q �
)
� �
;
� �
public 
readonly 

GUIContent &
diffuseTexture' 5
=6 7
new8 ;

GUIContent< F
(F G
$strG P
)P Q
;Q R
public 
readonly 

GUIContent &
	colorTint' 0
=1 2
new3 6

GUIContent7 A
(A B
$strB N
)N O
;O P
public 
readonly 

GUIContent &
opacityAsDensity' 7
=8 9
new: =

GUIContent> H
(H I
$strI ]
,] ^
$str	_ �
)
� �
;
� �
public 
readonly 

GUIContent &
normalMapTexture' 7
=8 9
new: =

GUIContent> H
(H I
$strI U
)U V
;V W
public 
readonly 

GUIContent &
normalScale' 2
=3 4
new5 8

GUIContent9 C
(C D
$strD R
)R S
;S T
public 
readonly 

GUIContent &
maskMapTexture' 5
=6 7
new8 ;

GUIContent< F
(F G
$strG M
,M N
$strO }
)} ~
;~ 
public 
readonly 

GUIContent &'
maskMapTextureWithoutHeight' B
=C D
newE H

GUIContentI S
(S T
$strT ^
,^ _
$str	` �
)
� �
;
� �
public 
readonly 

GUIContent &
channelRemapping' 7
=8 9
new: =

GUIContent> H
(H I
$strI \
)\ ]
;] ^
public 
readonly 

GUIContent &

=5 6
new7 :

GUIContent; E
(E F
$strF ^
)^ _
;_ `
public 
readonly 

GUIContent &
metallic' /
=0 1
new2 5

GUIContent6 @
(@ A
$strA N
)N O
;O P
public 
readonly 

GUIContent &
ao' )
=* +
new, /

GUIContent0 :
(: ;
$str; B
)B C
;C D
public 
readonly 

GUIContent &
height' -
=. /
new0 3

GUIContent4 >
(> ?
$str? J
)J K
;K L
public 
readonly 

GUIContent &!
heightParametrization' <
== >
new? B

GUIContentC M
(M N
$strN _
)_ `
;` a
public   
readonly   

GUIContent   &
heightAmplitude  ' 6
=  7 8
new  9 <

GUIContent  = G
(  G H
$str  H X
)  X Y
;  Y Z
public!! 
readonly!! 

GUIContent!! &

heightBase!!' 1
=!!2 3
new!!4 7

GUIContent!!8 B
(!!B C
$str!!C N
)!!N O
;!!O P
public"" 
readonly"" 

GUIContent"" &
	heightMin""' 0
=""1 2
new""3 6

GUIContent""7 A
(""A B
$str""B L
)""L M
;""M N
public## 
readonly## 

GUIContent## &
	heightMax##' 0
=##1 2
new##3 6

GUIContent##7 A
(##A B
$str##B L
)##L M
;##M N
public$$ 
readonly$$ 

GUIContent$$ &
heightCm$$' /
=$$0 1
new$$2 5

GUIContent$$6 @
($$@ A
$str$$A Q
)$$Q R
;$$R S
public%% 
readonly%% 

GUIContent%% &

smoothness%%' 1
=%%2 3
new%%4 7

GUIContent%%8 B
(%%B C
$str%%C R
)%%R S
;%%S T
}&& 	
static(( 
StylesLayer(( 
s_Styles(( #
=(($ %
null((& *
;((* +
private)) 
static)) 
StylesLayer)) "
styles))# )
{))* +
get)), /
{))0 1
if))2 4
())5 6
s_Styles))6 >
==))? A
null))B F
)))F G
s_Styles))H P
=))Q R
new))S V
StylesLayer))W b
())b c
)))c d
;))d e
return))f l
s_Styles))m u
;))u v
}))w x
}))y z
public++ 
TerrainLitShaderGUI++ "
(++" #
)++# $
{,, 	
}-- 	
MaterialProperty00 
enableHeightBlend00 *
=00+ ,
null00- 1
;001 2
const11 
string11 
kEnableHeightBlend11 '
=11( )
$str11* >
;11> ?
MaterialProperty33 
heightTransition33 )
=33* +
null33, 0
;330 1
const44 
string44 
kHeightTransition44 &
=44' (
$str44) <
;44< =
MaterialProperty77 )
enableInstancedPerPixelNormal77 6
=777 8
null779 =
;77= >
const88 
string88 *
kEnableInstancedPerPixelNormal88 3
=884 5
$str886 V
;88V W
private:: 
bool:: "
m_ShowChannelRemapping:: +
=::, -
false::. 3
;::3 4
enum;; !
HeightParametrization;;
{<< 	
	Amplitude== 
,== 
MinMax>> 
}?? 	
;??	 

private@@ !
HeightParametrization@@ %#
m_HeightParametrization@@& =
=@@> ?!
HeightParametrization@@@ U
.@@U V
	Amplitude@@V _
;@@_ `
privateBB 
staticBB 
boolBB "
DoesTerrainUseMaskMapsBB 2
(BB2 3
TerrainLayerBB3 ?
[BB? @
]BB@ A

)BBO P
{CC 	
forDD 
(DD 
intDD 
iDD 
=DD 
$numDD 

