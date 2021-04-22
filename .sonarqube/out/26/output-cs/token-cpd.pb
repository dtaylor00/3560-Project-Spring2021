Êß
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.mathematics@1.1.0\Unity.Mathematics.Editor\MatrixDrawer.cs
	namespace 	
Unity
 
. 
Mathematics 
. 
Editor "
{ 
[		  
CustomPropertyDrawer		 
(		 
typeof		  
(		  !
bool2x2		! (
)		( )
)		) *
,		* + 
CustomPropertyDrawer		, @
(		@ A
typeof		A G
(		G H
bool2x3		H O
)		O P
)		P Q
,		Q R 
CustomPropertyDrawer		S g
(		g h
typeof		h n
(		n o
bool2x4		o v
)		v w
)		w x
]		x y
[

  
CustomPropertyDrawer

 
(

 
typeof

  
(

  !
bool3x2

! (
)

( )
)

) *
,

* + 
CustomPropertyDrawer

, @
(

@ A
typeof

A G
(

G H
bool3x3

H O
)

O P
)

P Q
,

Q R 
CustomPropertyDrawer

S g
(

g h
typeof

h n
(

n o
bool3x4

o v
)

v w
)

w x
]

x y
[  
CustomPropertyDrawer 
( 
typeof  
(  !
bool4x2! (
)( )
)) *
,* + 
CustomPropertyDrawer, @
(@ A
typeofA G
(G H
bool4x3H O
)O P
)P Q
,Q R 
CustomPropertyDrawerS g
(g h
typeofh n
(n o
bool4x4o v
)v w
)w x
]x y
[  
CustomPropertyDrawer 
( 
typeof  
(  !
	double2x2! *
)* +
)+ ,
,, - 
CustomPropertyDrawer. B
(B C
typeofC I
(I J
	double2x3J S
)S T
)T U
,U V 
CustomPropertyDrawerW k
(k l
typeofl r
(r s
	double2x4s |
)| }
)} ~
]~ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
	double3x2! *
)* +
)+ ,
,, - 
CustomPropertyDrawer. B
(B C
typeofC I
(I J
	double3x3J S
)S T
)T U
,U V 
CustomPropertyDrawerW k
(k l
typeofl r
(r s
	double3x4s |
)| }
)} ~
]~ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
	double4x2! *
)* +
)+ ,
,, - 
CustomPropertyDrawer. B
(B C
typeofC I
(I J
	double4x3J S
)S T
)T U
,U V 
CustomPropertyDrawerW k
(k l
typeofl r
(r s
	double4x4s |
)| }
)} ~
]~ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
float2x2! )
)) *
)* +
,+ , 
CustomPropertyDrawer- A
(A B
typeofB H
(H I
float2x3I Q
)Q R
)R S
,S T 
CustomPropertyDrawerU i
(i j
typeofj p
(p q
float2x4q y
)y z
)z {
]{ |
[  
CustomPropertyDrawer 
( 
typeof  
(  !
float3x2! )
)) *
)* +
,+ , 
CustomPropertyDrawer- A
(A B
typeofB H
(H I
float3x3I Q
)Q R
)R S
,S T 
CustomPropertyDrawerU i
(i j
typeofj p
(p q
float3x4q y
)y z
)z {
]{ |
[  
CustomPropertyDrawer 
( 
typeof  
(  !
float4x2! )
)) *
)* +
,+ , 
CustomPropertyDrawer- A
(A B
typeofB H
(H I
float4x3I Q
)Q R
)R S
,S T 
CustomPropertyDrawerU i
(i j
typeofj p
(p q
float4x4q y
)y z
)z {
]{ |
[  
CustomPropertyDrawer 
( 
typeof  
(  !
int2x2! '
)' (
)( )
,) * 
CustomPropertyDrawer+ ?
(? @
typeof@ F
(F G
int2x3G M
)M N
)N O
,O P 
CustomPropertyDrawerQ e
(e f
typeoff l
(l m
int2x4m s
)s t
)t u
]u v
[  
CustomPropertyDrawer 
( 
typeof  
(  !
int3x2! '
)' (
)( )
,) * 
CustomPropertyDrawer+ ?
(? @
typeof@ F
(F G
int3x3G M
)M N
)N O
,O P 
CustomPropertyDrawerQ e
(e f
typeoff l
(l m
int3x4m s
)s t
)t u
]u v
[  
CustomPropertyDrawer 
( 
typeof  
(  !
int4x2! '
)' (
)( )
,) * 
CustomPropertyDrawer+ ?
(? @
typeof@ F
(F G
int4x3G M
)M N
)N O
,O P 
CustomPropertyDrawerQ e
(e f
typeoff l
(l m
int4x4m s
)s t
)t u
]u v
[  
CustomPropertyDrawer 
( 
typeof  
(  !
uint2x2! (
)( )
)) *
,* + 
CustomPropertyDrawer, @
(@ A
typeofA G
(G H
uint2x3H O
)O P
)P Q
,Q R 
CustomPropertyDrawerS g
(g h
typeofh n
(n o
uint2x4o v
)v w
)w x
]x y
[  
CustomPropertyDrawer 
( 
typeof  
(  !
uint3x2! (
)( )
)) *
,* + 
CustomPropertyDrawer, @
(@ A
typeofA G
(G H
uint3x3H O
)O P
)P Q
,Q R 
CustomPropertyDrawerS g
(g h
typeofh n
(n o
uint3x4o v
)v w
)w x
]x y
[  
CustomPropertyDrawer 
( 
typeof  
(  !
uint4x2! (
)( )
)) *
,* + 
CustomPropertyDrawer, @
(@ A
typeofA G
(G H
uint4x3H O
)O P
)P Q
,Q R 
CustomPropertyDrawerS g
(g h
typeofh n
(n o
uint4x4o v
)v w
)w x
]x y
class 	
MatrixDrawer
 
: 
PropertyDrawer '
{ 
public 
override 
bool  
CanCacheInspectorGUI 1
(1 2
SerializedProperty2 D
propertyE M
)M N
{ 	
return 
false 
; 
} 	
public 
override 
float 
GetPropertyHeight /
(/ 0
SerializedProperty0 B
propertyC K
,K L

GUIContentM W
labelX ]
)] ^
{   	
if!! 
(!! 
!!! 
property!! 
.!! 

isExpanded!! $
)!!$ %
return"" 
EditorGUIUtility"" '
.""' (
singleLineHeight""( 8
;""8 9
var## 
rows## 
=## 
$num## 
+## 
property## #
.### $
type##$ (
[##( )
property##) 1
.##1 2
type##2 6
.##6 7
Length##7 =
-##> ?
$num##@ A
]##A B
-##C D
$char##E H
;##H I
return$$ 
rows$$ 
*$$ 
EditorGUIUtility$$ *
.$$* +
singleLineHeight$$+ ;
+$$< =
($$> ?
rows$$? C
-$$D E
$num$$F G
)$$G H
*$$I J
EditorGUIUtility$$K [
.$$[ \#
standardVerticalSpacing$$\ s
;$$s t
}%% 	
static'' 
ReadOnlyCollection'' !
<''! "
string''" (
>''( )
k_ColPropertyPaths''* <
=''= >
new(( 
ReadOnlyCollection(( "
<((" #
string((# )
>(() *
(((* +
new((+ .
[((. /
]((/ 0
{((1 2
$str((3 7
,((7 8
$str((9 =
,((= >
$str((? C
,((C D
$str((E I
}((J K
)((K L
;((L M
static)) 
ReadOnlyCollection)) !
<))! "
string))" (
>))( )
k_RowPropertyPaths))* <
=))= >
new** 
ReadOnlyCollection** "
<**" #
string**# )
>**) *
(*** +
new**+ .
[**. /
]**/ 0
{**1 2
$str**3 6
,**6 7
$str**8 ;
,**; <
$str**= @
,**@ A
$str**B E
}**F G
)**G H
;**H I
public,, 
override,, 
void,, 
OnGUI,, "
(,," #
Rect,,# '
position,,( 0
,,,0 1
SerializedProperty,,2 D
property,,E M
,,,M N

GUIContent,,O Y
label,,Z _
),,_ `
{-- 	
position.. 
... 
height.. 
=.. 
EditorGUIUtility.. .
.... /
singleLineHeight../ ?
;..? @
	EditorGUI// 
.// 
PropertyField// #
(//# $
position//$ ,
,//, -
property//. 6
,//6 7
label//8 =
,//= >
false//? D
)//D E
;//E F
if11 
(11 
Event11 
.11 
current11 
.11 
type11 "
==11# %
	EventType11& /
.11/ 0
ContextClick110 <
&&11= ?
position11@ H
.11H I
Contains11I Q
(11Q R
Event11R W
.11W X
current11X _
.11_ `
mousePosition11` m
)11m n
)11n o
{22 
DoUtilityMenu33 
(33 
property33 &
)33& '
;33' (
Event44 
.44 
current44 
.44 
Use44 !
(44! "
)44" #
;44# $
}55 
if77 
(77 
!77 
property77 
.77 

isExpanded77 $
)77$ %
return88 
;88 
var:: 
rows:: 
=:: 
property:: 
.::  
type::  $
[::$ %
property::% -
.::- .
type::. 2
.::2 3
Length::3 9
-::: ;
$num::< =
]::= >
-::? @
$char::A D
;::D E
var;; 
cols;; 
=;; 
property;; 
.;;  
type;;  $
[;;$ %
property;;% -
.;;- .
type;;. 2
.;;2 3
Length;;3 9
-;;: ;
$num;;< =
];;= >
-;;? @
$char;;A D
;;;D E
++== 
	EditorGUI== 
.== 
indentLevel== #
;==# $
position>> 
=>> 
	EditorGUI>>  
.>>  !
IndentedRect>>! -
(>>- .
position>>. 6
)>>6 7
;>>7 8
--?? 
	EditorGUI?? 
.?? 
indentLevel?? #
;??# $
varAA 
elementTypeAA 
=AA 
propertyAA &
.AA& ' 
FindPropertyRelativeAA' ;
(AA; <
$strAA< B
)AAB C
.AAC D
propertyTypeAAD P
;AAP Q
forBB 
(BB 
varBB 
rowBB 
=BB 
$numBB 
;BB 
rowBB !
<BB" #
rowsBB$ (
;BB( )
++BB* ,
rowBB, /
)BB/ 0
{CC 
positionDD 
.DD 
yDD 
+=DD 
positionDD &
.DD& '
heightDD' -
+DD. /
EditorGUIUtilityDD0 @
.DD@ A#
standardVerticalSpacingDDA X
;DDX Y
varEE 
elementRectEE 
=EE  !
newEE" %
RectEE& *
(EE* +
positionEE+ 3
)EE3 4
{FF 
widthGG 
=GG 
elementTypeGG '
==GG( *"
SerializedPropertyTypeGG+ A
.GGA B
BooleanGGB I
?HH 
EditorGUIUtilityHH *
.HH* +
singleLineHeightHH+ ;
:II 
(II 
positionII #
.II# $
widthII$ )
-II* +
(II, -
colsII- 1
-II2 3
$numII4 5
)II5 6
*II7 8
EditorGUIUtilityII9 I
.III J#
standardVerticalSpacingIIJ a
)IIa b
/IIc d
colsIIe i
}JJ 
;JJ 
forKK 
(KK 
varKK 
colKK 
=KK 
$numKK  
;KK  !
colKK" %
<KK& '
colsKK( ,
;KK, -
++KK. 0
colKK0 3
)KK3 4
{LL 
	EditorGUIMM 
.MM 
PropertyFieldMM +
(MM+ ,
elementRectNN #
,NN# $
propertyOO  
.OO  ! 
FindPropertyRelativeOO! 5
(OO5 6
$"OO6 8
{OO8 9
k_ColPropertyPathsOO9 K
[OOK L
colOOL O
]OOO P
}OOP Q
.OOQ R
{OOR S
k_RowPropertyPathsOOS e
[OOe f
rowOOf i
]OOi j
}OOj k
"OOk l
)OOl m
,OOm n

GUIContentPP "
.PP" #
nonePP# '
)QQ 
;QQ 
elementRectRR 
.RR  
xRR  !
+=RR" $
elementRectRR% 0
.RR0 1
widthRR1 6
+RR7 8
EditorGUIUtilityRR9 I
.RRI J#
standardVerticalSpacingRRJ a
;RRa b
}SS 
}TT 
}UU 	

DictionaryWW 
<WW "
SerializedPropertyTypeWW )
,WW) *
ActionWW+ 1
<WW1 2
SerializedPropertyWW2 D
,WWD E
boolWWF J
>WWJ K
>WWK L!
k_UtilityValueSettersWWM b
=WWc d
newXX 

DictionaryXX 
<XX "
SerializedPropertyTypeXX 1
,XX1 2
ActionXX3 9
<XX9 :
SerializedPropertyXX: L
,XXL M
boolXXN R
>XXR S
>XXS T
{YY 
{ZZ "
SerializedPropertyTypeZZ (
.ZZ( )
BooleanZZ) 0
,ZZ0 1
(ZZ2 3
propertyZZ3 ;
,ZZ; <
bZZ= >
)ZZ> ?
=>ZZ@ B
propertyZZC K
.ZZK L
	boolValueZZL U
=ZZV W
bZZX Y
}ZZZ [
,ZZ[ \
{[[ "
SerializedPropertyType[[ (
.[[( )
Float[[) .
,[[. /
([[0 1
property[[1 9
,[[9 :
b[[; <
)[[< =
=>[[> @
property[[A I
.[[I J

floatValue[[J T
=[[U V
b[[W X
?[[Y Z
$num[[[ ]
:[[^ _
$num[[` b
}[[c d
,[[d e
{\\ "
SerializedPropertyType\\ (
.\\( )
Integer\\) 0
,\\0 1
(\\2 3
property\\3 ;
,\\; <
b\\= >
)\\> ?
=>\\@ B
property\\C K
.\\K L
intValue\\L T
=\\U V
b\\W X
?\\Y Z
$num\\[ \
:\\] ^
$num\\_ `
}\\a b
}]] 
;]] 
void__ 
DoUtilityMenu__ 
(__ 
SerializedProperty__ -
property__. 6
)__6 7
{`` 	
varaa 
rowsaa 
=aa 
propertyaa 
.aa  
typeaa  $
[aa$ %
propertyaa% -
.aa- .
typeaa. 2
.aa2 3
Lengthaa3 9
-aa: ;
$numaa< =
]aa= >
-aa? @
$charaaA D
;aaD E
varbb 
colsbb 
=bb 
propertybb 
.bb  
typebb  $
[bb$ %
propertybb% -
.bb- .
typebb. 2
.bb2 3
Lengthbb3 9
-bb: ;
$numbb< =
]bb= >
-bb? @
$charbbA D
;bbD E
varcc 
elementTypecc 
=cc 
propertycc &
.cc& ' 
FindPropertyRelativecc' ;
(cc; <
$strcc< B
)ccB C
.ccC D
propertyTypeccD P
;ccP Q
vardd 
setValuedd 
=dd !
k_UtilityValueSettersdd 0
[dd0 1
elementTypedd1 <
]dd< =
;dd= >
varee 
menuee 
=ee 
newee 
GenericMenuee &
(ee& '
)ee' (
;ee( )
propertyff 
=ff 
propertyff 
.ff  
Copyff  $
(ff$ %
)ff% &
;ff& '
menugg 
.gg 
AddItemgg 
(gg 
EditorGUIUtilityhh  
.hh  !
TrTextContenthh! .
(hh. /
$strhh/ <
)hh< =
,hh= >
falseii 
,ii 
(jj 
)jj 
=>jj 
{kk 
propertyll 
.ll 
serializedObjectll -
.ll- .
Updatell. 4
(ll4 5
)ll5 6
;ll6 7
;ll7 8
formm 
(mm 
varmm 
rowmm  
=mm! "
$nummm# $
;mm$ %
rowmm& )
<mm* +
rowsmm, 0
;mm0 1
++mm2 4
rowmm4 7
)mm7 8
fornn 
(nn 
varnn 
colnn  
=nn! "
$numnn# $
;nn$ %
colnn& )
<nn* +
colsnn, 0
;nn0 1
++nn2 4
colnn4 7
)nn7 8
setValueoo  
(oo  !
propertypp $
.pp$ % 
FindPropertyRelativepp% 9
(pp9 :
$"pp: <
{pp< =
k_ColPropertyPathspp= O
[ppO P
colppP S
]ppS T
}ppT U
.ppU V
{ppV W
k_RowPropertyPathsppW i
[ppi j
rowppj m
]ppm n
}ppn o
"ppo p
)ppp q
,ppq r
falseqq !
)rr 
;rr 
propertyss 
.ss 
serializedObjectss -
.ss- .#
ApplyModifiedPropertiesss. E
(ssE F
)ssF G
;ssG H
}tt 
)uu 
;uu 
ifvv 
(vv 
rowsvv 
==vv 
colsvv 
)vv 
{ww 
menuxx 
.xx 
AddItemxx 
(xx 
EditorGUIUtilityyy $
.yy$ %
TrTextContentyy% 2
(yy2 3
$stryy3 F
)yyF G
,yyG H
falsezz 
,zz 
({{ 
){{ 
=>{{ 
{|| 
property}}  
.}}  !
serializedObject}}! 1
.}}1 2
Update}}2 8
(}}8 9
)}}9 :
;}}: ;
for~~ 
(~~ 
var~~  
row~~! $
=~~% &
$num~~' (
;~~( )
row~~* -
<~~. /
rows~~0 4
;~~4 5
++~~6 8
row~~8 ;
)~~; <
for 
( 
var  
col! $
=% &
$num' (
;( )
col* -
<. /
cols0 4
;4 5
++6 8
col8 ;
); <
setValue
ÄÄ $
(
ÄÄ$ %
property
ÅÅ  (
.
ÅÅ( )"
FindPropertyRelative
ÅÅ) =
(
ÅÅ= >
$"
ÅÅ> @
{
ÅÅ@ A 
k_ColPropertyPaths
ÅÅA S
[
ÅÅS T
col
ÅÅT W
]
ÅÅW X
}
ÅÅX Y
.
ÅÅY Z
{
ÅÅZ [ 
k_RowPropertyPaths
ÅÅ[ m
[
ÅÅm n
row
ÅÅn q
]
ÅÅq r
}
ÅÅr s
"
ÅÅs t
)
ÅÅt u
,
ÅÅu v
row
ÇÇ  #
==
ÇÇ$ &
col
ÇÇ' *
)
ÉÉ 
;
ÉÉ 
property
ÑÑ  
.
ÑÑ  !
serializedObject
ÑÑ! 1
.
ÑÑ1 2%
ApplyModifiedProperties
ÑÑ2 I
(
ÑÑI J
)
ÑÑJ K
;
ÑÑK L
}
ÖÖ 
)
ÜÜ 
;
ÜÜ 
}
áá 
menu
àà 
.
àà 
ShowAsContext
àà 
(
àà 
)
àà  
;
àà  !
}
ââ 	
}
ää 
}ãã îû
®D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.mathematics@1.1.0\Unity.Mathematics.Editor\PostNormalizedVectorDrawer.cs
	namespace 	
Unity
 
. 
Mathematics 
. 
Editor "
{		 
[

  
CustomPropertyDrawer

 
(

 
typeof

  
(

  !"
PostNormalizeAttribute

! 7
)

7 8
)

8 9
]

9 :
class 	&
PostNormalizedVectorDrawer
 $
:% &!
PrimitiveVectorDrawer' <
{ 
static 
class 
Content 
{ 	
public 
static 
readonly "
string# )
tooltip* 1
=2 3
L10n 
. 
Tr 
( 
$str	 ô
)
ô ö
;
ö õ
} 	
class !
VectorPropertyGUIData #
{ 	
const 
int 
k_MaxElements #
=$ %
$num& '
;' (
public 
readonly 
bool  
Valid! &
;& '
readonly 
SerializedProperty '
m_VectorProperty( 8
;8 9
readonly 
IReadOnlyList "
<" #
string# )
>) *
m_ElementPaths+ 9
;9 :
readonly 
int 
m_NumElements &
;& '
readonly   
double   
?   
[   
]   !
m_PreNormalizedValues   4
;  4 5
readonly"" 

Dictionary"" 
<""  
SerializedProperty""  2
,""2 3
double4""4 ;
>""; <"
m_PostNormalizedValues""= S
=""T U
new""V Y

Dictionary""Z d
<""d e
SerializedProperty""e w
,""w x
double4	""y Ä
>
""Ä Å
(
""Å Ç
)
""Ç É
;
""É Ñ
public$$ !
VectorPropertyGUIData$$ (
($$( )
SerializedProperty$$) ;
property$$< D
)$$D E
{%% 
m_VectorProperty&&  
=&&! "
property&&# +
;&&+ ,
var'' 

parentPath'' 
=''  
m_VectorProperty''! 1
.''1 2
propertyPath''2 >
;''> ?
var(( 
i(( 
=(( 
$num(( 
;(( 
var)) 
elementPaths))  
=))! "
new))# &
List))' +
<))+ ,
string)), 2
>))2 3
())3 4
k_MaxElements))4 A
)))A B
;))B C
var** 
iterator** 
=** 
m_VectorProperty** /
.**/ 0
Copy**0 4
(**4 5
)**5 6
;**6 7
while++ 
(++ 
iterator++ 
.++  
Next++  $
(++$ %
true++% )
)++) *
&&+++ -
iterator++. 6
.++6 7
propertyPath++7 C
.++C D

StartsWith++D N
(++N O

parentPath++O Y
)++Y Z
)++Z [
{,, 
if-- 
(-- 
i-- 
>=-- 
k_MaxElements-- *
||--+ -
iterator--. 6
.--6 7
propertyType--7 C
!=--D F"
SerializedPropertyType--G ]
.--] ^
Float--^ c
)--c d
return.. 
;.. 
elementPaths//  
.//  !
Add//! $
(//$ %
iterator//% -
.//- .
propertyPath//. :
.//: ;
	Substring//; D
(//D E

parentPath//E O
.//O P
Length//P V
+//W X
$num//Y Z
)//Z [
)//[ \
;//\ ]
i00 
++00 
;00 
}11 
Valid33 
=33 
true33 
;33 
m_NumElements44 
=44 
elementPaths44  ,
.44, -
Count44- 2
;442 3
m_ElementPaths55 
=55  
elementPaths55! -
;55- .!
m_PreNormalizedValues66 %
=66& '
elementPaths66( 4
.664 5
Select665 ;
(66; <
p66< =
=>66> @
(66A B
double66B H
?66H I
)66I J
null66J N
)66N O
.66O P
ToArray66P W
(66W X
)66X Y
;66Y Z%
UpdatePreNormalizedValues88 )
(88) *
)88* +
;88+ ,&
UpdatePostNormalizedValues99 *
(99* +
)99+ ,
;99, -
}:: 
void<< &
UpdatePostNormalizedValues<< +
(<<+ ,
)<<, -
{== "
m_PostNormalizedValues>> &
.>>& '
Clear>>' ,
(>>, -
)>>- .
;>>. /
foreach?? 
(?? 
var?? 
target?? #
in??$ &
m_VectorProperty??' 7
.??7 8
serializedObject??8 H
.??H I
targetObjects??I V
)??V W
{@@ 
varAA 
postNormalizedValueAA +
=AA, -
newAA. 1
double4AA2 9
(AA9 :
)AA: ;
;AA; <
varBB 
parentPropertyBB &
=BB' (
newBB) ,
SerializedObjectBB- =
(BB= >
targetBB> D
)BBD E
.BBE F
FindPropertyBBF R
(BBR S
m_VectorPropertyBBS c
.BBc d
propertyPathBBd p
)BBp q
;BBq r
forCC 
(CC 
varCC 
iCC 
=CC  
$numCC! "
;CC" #
iCC$ %
<CC& '
m_NumElementsCC( 5
;CC5 6
++CC7 9
iCC9 :
)CC: ;
postNormalizedValueDD +
[DD+ ,
iDD, -
]DD- .
=DD/ 0
parentPropertyDD1 ?
.DD? @ 
FindPropertyRelativeDD@ T
(DDT U
m_ElementPathsDDU c
[DDc d
iDDd e
]DDe f
)DDf g
.DDg h
doubleValueDDh s
;DDs t"
m_PostNormalizedValuesEE *
[EE* +
parentPropertyEE+ 9
]EE9 :
=EE; <
postNormalizedValueEE= P
;EEP Q
}FF 
}GG 
publicII 
voidII %
UpdatePreNormalizedValuesII 1
(II1 2
)II2 3
{JJ 
forKK 
(KK 
varKK 
iKK 
=KK 
$numKK 
;KK 
iKK  !
<KK" #
m_NumElementsKK$ 1
;KK1 2
++KK3 5
iKK5 6
)KK6 7
{LL 
varMM 
pMM 
=MM 
m_VectorPropertyMM ,
.MM, - 
FindPropertyRelativeMM- A
(MMA B
m_ElementPathsMMB P
[MMP Q
iMMQ R
]MMR S
)MMS T
;MMT U!
m_PreNormalizedValuesNN )
[NN) *
iNN* +
]NN+ ,
=NN- .
pNN/ 0
.NN0 1&
hasMultipleDifferentValuesNN1 K
?NNL M
(NNN O
doubleNNO U
?NNU V
)NNV W
nullNNW [
:NN\ ]
pNN^ _
.NN_ `
doubleValueNN` k
;NNk l
}OO 
}PP 
publicRR 
voidRR $
ApplyPreNormalizedValuesRR 0
(RR0 1
)RR1 2
{SS 
m_VectorPropertyTT  
.TT  !
serializedObjectTT! 1
.TT1 2#
ApplyModifiedPropertiesTT2 I
(TTI J
)TTJ K
;TTK L
forUU 
(UU 
varUU 
iUU 
=UU 
$numUU 
;UU 
iUU  !
<UU" #
m_NumElementsUU$ 1
;UU1 2
++UU3 5
iUU5 6
)UU6 7
{VV 
ifWW 
(WW !
m_PreNormalizedValuesWW -
[WW- .
iWW. /
]WW/ 0
!=WW1 3
nullWW4 8
)WW8 9
m_VectorPropertyXX (
.XX( ) 
FindPropertyRelativeXX) =
(XX= >
m_ElementPathsXX> L
[XXL M
iXXM N
]XXN O
)XXO P
.XXP Q
doubleValueXXQ \
=XX] ^!
m_PreNormalizedValuesXX_ t
[XXt u
iXXu v
]XXv w
.XXw x
ValueXXx }
;XX} ~
}YY 
}ZZ 
public\\ 
void\\ &
UnapplyPreNormalizedValues\\ 2
(\\2 3
)\\3 4
{]] 
foreach^^ 
(^^ 
var^^ 
target^^ #
in^^$ &"
m_PostNormalizedValues^^' =
)^^= >
{__ 
target`` 
.`` 
Key`` 
.`` 
serializedObject`` /
.``/ 0
Update``0 6
(``6 7
)``7 8
;``8 9
foraa 
(aa 
varaa 
iaa 
=aa  
$numaa! "
;aa" #
iaa$ %
<aa& '
m_NumElementsaa( 5
;aa5 6
++aa7 9
iaa9 :
)aa: ;
{bb 
targetcc 
.cc 
Keycc "
.cc" # 
FindPropertyRelativecc# 7
(cc7 8
m_ElementPathscc8 F
[ccF G
iccG H
]ccH I
)ccI J
.ccJ K
doubleValueccK V
=ccW X
targetccY _
.cc_ `
Valuecc` e
[cce f
iccf g
]ccg h
;cch i
targetdd 
.dd 
Keydd "
.dd" #
serializedObjectdd# 3
.dd3 4#
ApplyModifiedPropertiesdd4 K
(ddK L
)ddL M
;ddM N
}ee 
}ff 
m_VectorPropertygg  
.gg  !
serializedObjectgg! 1
.gg1 2
Updategg2 8
(gg8 9
)gg9 :
;gg: ;
}hh 
publicjj 
voidjj 
PostNormalizejj %
(jj% &
Funcjj& *
<jj* +
double4jj+ 2
,jj2 3
double4jj4 ;
>jj; <
	normalizejj= F
)jjF G
{kk 
m_VectorPropertyll  
.ll  !
serializedObjectll! 1
.ll1 2#
ApplyModifiedPropertiesll2 I
(llI J
)llJ K
;llK L
foreachmm 
(mm 
varmm 
targetmm #
inmm$ &"
m_PostNormalizedValuesmm' =
)mm= >
{nn 
targetoo 
.oo 
Keyoo 
.oo 
serializedObjectoo /
.oo/ 0
Updateoo0 6
(oo6 7
)oo7 8
;oo8 9
varpp 
postNormalizedValuepp +
=pp, -
newpp. 1
double4pp2 9
(pp9 :
)pp: ;
;pp; <
forqq 
(qq 
varqq 
iqq 
=qq  
$numqq! "
;qq" #
iqq$ %
<qq& '
m_NumElementsqq( 5
;qq5 6
++qq7 9
iqq9 :
)qq: ;
postNormalizedValuerr +
[rr+ ,
irr, -
]rr- .
=rr/ 0
targetrr1 7
.rr7 8
Keyrr8 ;
.rr; < 
FindPropertyRelativerr< P
(rrP Q
m_ElementPathsrrQ _
[rr_ `
irr` a
]rra b
)rrb c
.rrc d
doubleValuerrd o
;rro p
postNormalizedValuess '
=ss( )
	normalizess* 3
(ss3 4
	normalizess4 =
(ss= >
postNormalizedValuess> Q
)ssQ R
)ssR S
;ssS T
fortt 
(tt 
vartt 
itt 
=tt  
$numtt! "
;tt" #
itt$ %
<tt& '
m_NumElementstt( 5
;tt5 6
++tt7 9
itt9 :
)tt: ;
targetuu 
.uu 
Keyuu "
.uu" # 
FindPropertyRelativeuu# 7
(uu7 8
m_ElementPathsuu8 F
[uuF G
iuuG H
]uuH I
)uuI J
.uuJ K
doubleValueuuK V
=uuW X
postNormalizedValueuuY l
[uul m
iuum n
]uun o
;uuo p
targetvv 
.vv 
Keyvv 
.vv 
serializedObjectvv /
.vv/ 0#
ApplyModifiedPropertiesvv0 G
(vvG H
)vvH I
;vvI J
}ww &
UpdatePostNormalizedValuesxx *
(xx* +
)xx+ ,
;xx, -
m_VectorPropertyyy  
.yy  !
serializedObjectyy! 1
.yy1 2
Updateyy2 8
(yy8 9
)yy9 :
;yy: ;
}zz 
public|| 
void|| 
RebuildIfDirty|| &
(||& '
)||' (
{}} 
foreach~~ 
(~~ 
var~~ 
target~~ #
in~~$ &"
m_PostNormalizedValues~~' =
)~~= >
{ 
target
ÄÄ 
.
ÄÄ 
Key
ÄÄ 
.
ÄÄ 
serializedObject
ÄÄ /
.
ÄÄ/ 0
Update
ÄÄ0 6
(
ÄÄ6 7
)
ÄÄ7 8
;
ÄÄ8 9
for
ÅÅ 
(
ÅÅ 
var
ÅÅ 
i
ÅÅ 
=
ÅÅ  
$num
ÅÅ! "
;
ÅÅ" #
i
ÅÅ$ %
<
ÅÅ& '
m_NumElements
ÅÅ( 5
;
ÅÅ5 6
++
ÅÅ7 9
i
ÅÅ9 :
)
ÅÅ: ;
{
ÇÇ 
var
ÉÉ 

serialized
ÉÉ &
=
ÉÉ' (
target
ÉÉ) /
.
ÉÉ/ 0
Key
ÉÉ0 3
.
ÉÉ3 4"
FindPropertyRelative
ÉÉ4 H
(
ÉÉH I
m_ElementPaths
ÉÉI W
[
ÉÉW X
i
ÉÉX Y
]
ÉÉY Z
)
ÉÉZ [
.
ÉÉ[ \
doubleValue
ÉÉ\ g
;
ÉÉg h
if
ÑÑ 
(
ÑÑ 
target
ÑÑ "
.
ÑÑ" #
Value
ÑÑ# (
[
ÑÑ( )
i
ÑÑ) *
]
ÑÑ* +
!=
ÑÑ, .

serialized
ÑÑ/ 9
)
ÑÑ9 :
{
ÖÖ '
UpdatePreNormalizedValues
ÜÜ 5
(
ÜÜ5 6
)
ÜÜ6 7
;
ÜÜ7 8(
UpdatePostNormalizedValues
áá 6
(
áá6 7
)
áá7 8
;
áá8 9
return
àà "
;
àà" #
}
ââ 
}
ää 
}
ãã 
}
åå 
}
çç 	

Dictionary
èè 
<
èè 
string
èè 
,
èè #
VectorPropertyGUIData
èè 0
>
èè0 1&
m_GUIDataPerPropertyPath
èè2 J
=
èèK L
new
èèM P

Dictionary
èèQ [
<
èè[ \
string
èè\ b
,
èèb c#
VectorPropertyGUIData
èèd y
>
èèy z
(
èèz {
)
èè{ |
;
èè| }
	protected
ëë 
virtual
ëë  
SerializedProperty
ëë ,
GetVectorProperty
ëë- >
(
ëë> ? 
SerializedProperty
ëë? Q
property
ëëR Z
)
ëëZ [
{
íí 	
return
ìì 
property
ìì 
;
ìì 
}
îî 	
	protected
ññ 
virtual
ññ 
double4
ññ !
	Normalize
ññ" +
(
ññ+ ,
double4
ññ, 3
value
ññ4 9
)
ññ9 :
{
óó 	
return
òò 
math
òò 
.
òò 
normalizesafe
òò %
(
òò% &
value
òò& +
)
òò+ ,
;
òò, -
}
ôô 	#
VectorPropertyGUIData
õõ 

GetGUIData
õõ (
(
õõ( ) 
SerializedProperty
õõ) ;
property
õõ< D
)
õõD E
{
úú 	#
VectorPropertyGUIData
ùù !
guiData
ùù" )
;
ùù) *
if
ûû 
(
ûû 
!
ûû &
m_GUIDataPerPropertyPath
ûû )
.
ûû) *
TryGetValue
ûû* 5
(
ûû5 6
property
ûû6 >
.
ûû> ?
propertyPath
ûû? K
,
ûûK L
out
ûûM P
guiData
ûûQ X
)
ûûX Y
)
ûûY Z
{
üü 
guiData
†† 
=
†† 
new
†† #
VectorPropertyGUIData
†† 3
(
††3 4
GetVectorProperty
††4 E
(
††E F
property
††F N
)
††N O
)
††O P
;
††P Q&
m_GUIDataPerPropertyPath
°° (
[
°°( )
property
°°) 1
.
°°1 2
propertyPath
°°2 >
]
°°> ?
=
°°@ A
guiData
°°B I
;
°°I J
}
¢¢ 
return
££ 
guiData
££ 
;
££ 
}
§§ 	
public
¶¶ 
override
¶¶ 
float
¶¶ 
GetPropertyHeight
¶¶ /
(
¶¶/ 0 
SerializedProperty
¶¶0 B
property
¶¶C K
,
¶¶K L

GUIContent
¶¶M W
label
¶¶X ]
)
¶¶] ^
{
ßß 	
return
®® 

GetGUIData
®® 
(
®® 
property
®® &
)
®®& '
.
®®' (
Valid
®®( -
?
®®. /
base
®®0 4
.
®®4 5
GetPropertyHeight
®®5 F
(
®®F G
property
®®G O
,
®®O P
label
®®Q V
)
®®V W
:
®®X Y
EditorGUIUtility
®®Z j
.
®®j k
singleLineHeight
®®k {
;
®®{ |
}
©© 	
public
´´ 
override
´´ 
void
´´ 
OnGUI
´´ "
(
´´" #
Rect
´´# '
position
´´( 0
,
´´0 1 
SerializedProperty
´´2 D
property
´´E M
,
´´M N

GUIContent
´´O Y
label
´´Z _
)
´´_ `
{
¨¨ 	
var
≠≠ 
guiData
≠≠ 
=
≠≠ 

GetGUIData
≠≠ $
(
≠≠$ %
property
≠≠% -
)
≠≠- .
;
≠≠. /
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
guiData
ÆÆ 
.
ÆÆ 
Valid
ÆÆ 
)
ÆÆ 
{
ØØ 
	EditorGUI
∞∞ 
.
∞∞ 
HelpBox
∞∞ !
(
∞∞! "
	EditorGUI
±± 
.
±± 
PrefixLabel
±± )
(
±±) *
position
±±* 2
,
±±2 3
label
±±4 9
)
±±9 :
,
±±: ;
L10n
≤≤ 
.
≤≤ 
Tr
≤≤ 
(
≤≤ 
$"
≤≤ 
{
≤≤ 
typeof
≤≤ %
(
≤≤% &$
PostNormalizeAttribute
≤≤& <
)
≤≤< =
.
≤≤= >
Name
≤≤> B
}
≤≤B C4
& only works with decimal vector types.
≤≤C i
"
≤≤i j
)
≤≤j k
,
≤≤k l
MessageType
≥≥ 
.
≥≥  
None
≥≥  $
)
¥¥ 
;
¥¥ 
return
µµ 
;
µµ 
}
∂∂ 
if
∏∏ 
(
∏∏ 
string
∏∏ 
.
∏∏ 
IsNullOrEmpty
∏∏ $
(
∏∏$ %
label
∏∏% *
.
∏∏* +
tooltip
∏∏+ 2
)
∏∏2 3
)
∏∏3 4
label
ππ 
.
ππ 
tooltip
ππ 
=
ππ 
Content
ππ  '
.
ππ' (
tooltip
ππ( /
;
ππ/ 0
guiData
ªª 
.
ªª 
RebuildIfDirty
ªª "
(
ªª" #
)
ªª# $
;
ªª$ %
guiData
ºº 
.
ºº &
ApplyPreNormalizedValues
ºº ,
(
ºº, -
)
ºº- .
;
ºº. /
	EditorGUI
ΩΩ 
.
ΩΩ 
BeginChangeCheck
ΩΩ &
(
ΩΩ& '
)
ΩΩ' (
;
ΩΩ( )
base
ææ 
.
ææ 
OnGUI
ææ 
(
ææ 
position
ææ 
,
ææ  
property
ææ! )
,
ææ) *
label
ææ+ 0
)
ææ0 1
;
ææ1 2
if
øø 
(
øø 
	EditorGUI
øø 
.
øø 
EndChangeCheck
øø (
(
øø( )
)
øø) *
)
øø* +
{
¿¿ 
guiData
¡¡ 
.
¡¡ '
UpdatePreNormalizedValues
¡¡ 1
(
¡¡1 2
)
¡¡2 3
;
¡¡3 4
guiData
¬¬ 
.
¬¬ 
PostNormalize
¬¬ %
(
¬¬% &
	Normalize
¬¬& /
)
¬¬/ 0
;
¬¬0 1
}
√√ 
else
ƒƒ 
{
≈≈ 
guiData
∆∆ 
.
∆∆ (
UnapplyPreNormalizedValues
∆∆ 2
(
∆∆2 3
)
∆∆3 4
;
∆∆4 5
}
«« 
}
»» 	
}
…… 
}   º
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.mathematics@1.1.0\Unity.Mathematics.Editor\QuaternionDrawer.cs
	namespace 	
Unity
 
. 
Mathematics 
. 
Editor "
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !

quaternion! +
)+ ,
), -
]- .
class 	
QuaternionDrawer
 
: &
PostNormalizedVectorDrawer 7
{ 
	protected 
override 
SerializedProperty -
GetVectorProperty. ?
(? @
SerializedProperty@ R
propertyS [
)[ \
{		 	
return

 
property

 
.

  
FindPropertyRelative

 0
(

0 1
$str

1 8
)

8 9
;

9 :
} 	
	protected 
override 
double4 "
	Normalize# ,
(, -
double4- 4
value5 :
): ;
{ 	
return 
math 
. 
normalizesafe %
(% &
new& )

quaternion* 4
(4 5
(5 6
float46 <
)< =
value= B
)B C
)C D
.D E
valueE J
;J K
} 	
} 
} ™M
£D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.mathematics@1.1.0\Unity.Mathematics.Editor\PrimitiveVectorDrawer.cs
	namespace 	
Unity
 
. 
Mathematics 
. 
Editor "
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
bool2! &
)& '
)' (
,( ) 
CustomPropertyDrawer* >
(> ?
typeof? E
(E F
bool3F K
)K L
)L M
,M N 
CustomPropertyDrawerO c
(c d
typeofd j
(j k
bool4k p
)p q
)q r
]r s
[  
CustomPropertyDrawer 
( 
typeof  
(  !
double2! (
)( )
)) *
,* + 
CustomPropertyDrawer, @
(@ A
typeofA G
(G H
double3H O
)O P
)P Q
,Q R 
CustomPropertyDrawerS g
(g h
typeofh n
(n o
double4o v
)v w
)w x
]x y
[		  
CustomPropertyDrawer		 
(		 
typeof		  
(		  !
float2		! '
)		' (
)		( )
,		) * 
CustomPropertyDrawer		+ ?
(		? @
typeof		@ F
(		F G
float3		G M
)		M N
)		N O
,		O P 
CustomPropertyDrawer		Q e
(		e f
typeof		f l
(		l m
float4		m s
)		s t
)		t u
]		u v
[

  
CustomPropertyDrawer

 
(

 
typeof

  
(

  !
int2

! %
)

% &
)

& '
,

' ( 
CustomPropertyDrawer

) =
(

= >
typeof

> D
(

D E
int3

E I
)

I J
)

J K
,

K L 
CustomPropertyDrawer

M a
(

a b
typeof

b h
(

h i
int4

i m
)

m n
)

n o
]

o p
[  
CustomPropertyDrawer 
( 
typeof  
(  !
uint2! &
)& '
)' (
,( ) 
CustomPropertyDrawer* >
(> ?
typeof? E
(E F
uint3F K
)K L
)L M
,M N 
CustomPropertyDrawerO c
(c d
typeofd j
(j k
uint4k p
)p q
)q r
]r s
[  
CustomPropertyDrawer 
( 
typeof  
(  !#
DoNotNormalizeAttribute! 8
)8 9
)9 :
]: ;
class 	!
PrimitiveVectorDrawer
 
:  !
PropertyDrawer" 0
{ 
static 
class 
Content 
{ 	
public 
static 
readonly "
string# )'
doNotNormalizeCompatibility* E
=F G
L10nH L
.L M
TrM O
(O P
$" 
{ 
typeof 
( #
DoNotNormalizeAttribute 1
)1 2
.2 3
Name3 7
}7 8
 only works with 8 I
{I J
typeofJ P
(P Q

quaternionQ [
)[ \
}\ ](
 and primitive vector types.] y
"y z
) 
; 
public 
static 
readonly "
string# )!
doNotNormalizeTooltip* ?
=@ A
L10n 
. 
Tr 
( 
$str ]
)] ^
;^ _
public 
static 
readonly "

GUIContent# -
[- .
]. /
labels20 7
=8 9
{: ;
new< ?

GUIContent@ J
(J K
$strK N
)N O
,O P
newQ T

GUIContentU _
(_ `
$str` c
)c d
}e f
;f g
public 
static 
readonly "

GUIContent# -
[- .
]. /
labels30 7
=8 9
{: ;
new< ?

GUIContent@ J
(J K
$strK N
)N O
,O P
newQ T

GUIContentU _
(_ `
$str` c
)c d
,d e
newf i

GUIContentj t
(t u
$stru x
)x y
}z {
;{ |
public 
static 
readonly "

GUIContent# -
[- .
]. /
labels40 7
=8 9
{: ;
new< ?

GUIContent@ J
(J K
$strK N
)N O
,O P
newQ T

GUIContentU _
(_ `
$str` c
)c d
,d e
newf i

GUIContentj t
(t u
$stru x
)x y
,y z
new{ ~

GUIContent	 â
(
â ä
$str
ä ç
)
ç é
}
è ê
;
ê ë
} 	
public 
override 
bool  
CanCacheInspectorGUI 1
(1 2
SerializedProperty2 D
propertyE M
)M N
{ 	
return 
false 
; 
} 	
public!! 
override!! 
float!! 
GetPropertyHeight!! /
(!!/ 0
SerializedProperty!!0 B
property!!C K
,!!K L

GUIContent!!M W
label!!X ]
)!!] ^
{"" 	
var## 
height## 
=## 
EditorGUIUtility## )
.##) *
singleLineHeight##* :
;##: ;
if$$ 
($$ 
!$$ 
EditorGUIUtility$$ !
.$$! "
wideMode$$" *
)$$* +
height%% 
+=%% 
EditorGUIUtility%% *
.%%* +
singleLineHeight%%+ ;
+%%< =
EditorGUIUtility%%> N
.%%N O#
standardVerticalSpacing%%O f
;%%f g
return&& 
height&& 
;&& 
}'' 	
public)) 
override)) 
void)) 
OnGUI)) "
())" #
Rect))# '
position))( 0
,))0 1
SerializedProperty))2 D
property))E M
,))M N

GUIContent))O Y
label))Z _
)))_ `
{** 	
var++ 
	subLabels++ 
=++ 
Content++ #
.++# $
labels4++$ +
;+++ ,
var,, 
	startIter,, 
=,, 
$str,, 
;,,  
switch-- 
(-- 
property-- 
.-- 
type-- !
[--! "
property--" *
.--* +
type--+ /
.--/ 0
Length--0 6
---7 8
$num--9 :
]--: ;
)--; <
{.. 
case// 
$char// 
:// 
	subLabels00 
=00 
Content00  '
.00' (
labels200( /
;00/ 0
break11 
;11 
case22 
$char22 
:22 
	subLabels33 
=33 
Content33  '
.33' (
labels333( /
;33/ 0
break44 
;44 
case55 
$char55 
:55 
	subLabels66 
=66 
Content66  '
.66' (
labels466( /
;66/ 0
break77 
;77 
default88 
:88 
{99 
if:: 
(:: 
property::  
.::  !
type::! %
==::& (
nameof::) /
(::/ 0

quaternion::0 :
)::: ;
)::; <
	startIter;; !
=;;" #
$str;;$ -
;;;- .
else<< 
if<< 
(<< 
	attribute<< &
is<<' )#
DoNotNormalizeAttribute<<* A
)<<A B
{== 
	EditorGUI>> !
.>>! "
HelpBox>>" )
(>>) *
	EditorGUI>>* 3
.>>3 4
PrefixLabel>>4 ?
(>>? @
position>>@ H
,>>H I
label>>J O
)>>O P
,>>P Q
Content>>R Y
.>>Y Z'
doNotNormalizeCompatibility>>Z u
,>>u v
MessageType	>>w Ç
.
>>Ç É
None
>>É á
)
>>á à
;
>>à â
return?? 
;?? 
}@@ 
breakAA 
;AA 
}BB 
}CC 
ifEE 
(EE 
	attributeEE 
isEE #
DoNotNormalizeAttributeEE 4
&&EE5 7
stringEE8 >
.EE> ?
IsNullOrEmptyEE? L
(EEL M
labelEEM R
.EER S
tooltipEES Z
)EEZ [
)EE[ \
labelFF 
.FF 
tooltipFF 
=FF 
ContentFF  '
.FF' (!
doNotNormalizeTooltipFF( =
;FF= >
	EditorGUIHH 
.HH 
BeginPropertyHH #
(HH# $
positionHH$ ,
,HH, -
labelHH. 3
,HH3 4
propertyHH5 =
)HH= >
;HH> ?
	EditorGUIII 
.II 
MultiPropertyFieldII (
(II( )
positionII) 1
,II1 2
	subLabelsII3 <
,II< =
propertyII> F
.IIF G 
FindPropertyRelativeIIG [
(II[ \
	startIterII\ e
)IIe f
,IIf g
labelIIh m
)IIm n
;IIn o
	EditorGUIJJ 
.JJ 
EndPropertyJJ !
(JJ! "
)JJ" #
;JJ# $
}KK 	
}LL 
}MM 