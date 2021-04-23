�
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Shadows\ShadowUtility.cs
	namespace

 	
UnityEngine
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
{ 
internal 
class

{
internal 
struct 
Edge 
: 
IComparable *
<* +
Edge+ /
>/ 0
{ 	
public 
int 
vertexIndex0 #
;# $
public 
int 
vertexIndex1 #
;# $
public 
Vector4 
tangent "
;" #
private 
bool 
compareReversed (
;( )
public 
void 
AssignVertexIndices +
(+ ,
int, /
vi00 3
,3 4
int5 8
vi19 <
)< =
{ 
vertexIndex0 
= 
vi0 "
;" #
vertexIndex1 
= 
vi1 "
;" #
compareReversed 
=  !
vi0" %
>& '
vi1( +
;+ ,
} 
public 
int 
Compare 
( 
Edge #
a$ %
,% &
Edge' +
b, -
)- .
{ 
int !
adjustedVertexIndex0A )
=* +
a, -
.- .
compareReversed. =
?> ?
a@ A
.A B
vertexIndex1B N
:O P
aQ R
.R S
vertexIndex0S _
;_ `
int !
adjustedVertexIndex1A )
=* +
a, -
.- .
compareReversed. =
?> ?
a@ A
.A B
vertexIndex0B N
:O P
aQ R
.R S
vertexIndex1S _
;_ `
int   !
adjustedVertexIndex0B   )
=  * +
b  , -
.  - .
compareReversed  . =
?  > ?
b  @ A
.  A B
vertexIndex1  B N
:  O P
b  Q R
.  R S
vertexIndex0  S _
;  _ `
int!! !
adjustedVertexIndex1B!! )
=!!* +
b!!, -
.!!- .
compareReversed!!. =
?!!> ?
b!!@ A
.!!A B
vertexIndex0!!B N
:!!O P
b!!Q R
.!!R S
vertexIndex1!!S _
;!!_ `
int$$ 
deltaVI0$$ 
=$$ !
adjustedVertexIndex0A$$ 4
-$$5 6!
adjustedVertexIndex0B$$7 L
;$$L M
int%% 
deltaVI1%% 
=%% !
adjustedVertexIndex1A%% 4
-%%5 6!
adjustedVertexIndex1B%%7 L
;%%L M
if'' 
('' 
deltaVI0'' 
=='' 
$num''  !
)''! "
return(( 
deltaVI1(( #
;((# $
else)) 
return** 
deltaVI0** #
;**# $
}++ 
public-- 
int-- 
	CompareTo--  
(--  !
Edge--! %

)--3 4
{.. 
return// 
Compare// 
(// 
this// #
,//# $

)//2 3
;//3 4
}00 
}11 	
static33 
Edge33 

CreateEdge33 
(33 
int33 "
triangleIndexA33# 1
,331 2
int333 6
triangleIndexB337 E
,33E F
List33G K
<33K L
Vector333L S
>33S T
vertices33U ]
,33] ^
List33_ c
<33c d
int33d g
>33g h
	triangles33i r
)33r s
{44 	
Edge55 
retEdge55 
=55 
new55 
Edge55 #
(55# $
)55$ %
;55% &
retEdge77 
.77 
AssignVertexIndices77 '
(77' (
	triangles77( 1
[771 2
triangleIndexA772 @
]77@ A
,77A B
	triangles77C L
[77L M
triangleIndexB77M [
]77[ \
)77\ ]
;77] ^
Vector399 
vertex099 
=99 
vertices99 &
[99& '
retEdge99' .
.99. /
vertexIndex099/ ;
]99; <
;99< =
vertex0:: 
.:: 
z:: 
=:: 
$num:: 
;:: 
Vector3;; 
vertex1;; 
=;; 
vertices;; &
[;;& '
retEdge;;' .
.;;. /
vertexIndex1;;/ ;
];;; <
;;;< =
vertex1<< 
.<< 
z<< 
=<< 
$num<< 
;<< 
Vector3>> 
edgeDir>> 
=>> 
Vector3>> %
.>>% &
	Normalize>>& /
(>>/ 0
vertex1>>0 7
->>8 9
vertex0>>: A
)>>A B
;>>B C
retEdge?? 
.?? 
tangent?? 
=?? 
Vector3?? %
.??% &
Cross??& +
(??+ ,
-??, -
Vector3??- 4
.??4 5
forward??5 <
,??< =
edgeDir??> E
)??E F
;??F G
returnAA 
retEdgeAA 
;AA 
}BB 	
staticDD 
voidDD 
PopulateEdgeArrayDD %
(DD% &
ListDD& *
<DD* +
Vector3DD+ 2
>DD2 3
verticesDD4 <
,DD< =
ListDD> B
<DDB C
intDDC F
>DDF G
	trianglesDDH Q
,DDQ R
ListDDS W
<DDW X
EdgeDDX \
>DD\ ]
edgesDD^ c
)DDc d
{EE 	
forFF 
(FF 
intFF 

=FF! "
$numFF" #
;FF# $

<FF1 2
	trianglesFF2 ;
.FF; <
CountFF< A
;FFA B

+=FFO Q
$numFFQ R
)FFR S
{GG 
edgesHH 
.HH 
AddHH 
(HH 

CreateEdgeHH $
(HH$ %

,HH2 3

+HHB C
$numHHD E
,HHE F
verticesHHG O
,HHO P
	trianglesHHQ Z
)HHZ [
)HH[ \
;HH\ ]
edgesII 
.II 
AddII 
(II 

CreateEdgeII $
(II$ %

+II2 3
$numII3 4
,II4 5

+IID E
$numIIF G
,IIG H
verticesIII Q
,IIQ R
	trianglesIIS \
)II\ ]
)II] ^
;II^ _
edgesJJ 
.JJ 
AddJJ 
(JJ 

CreateEdgeJJ $
(JJ$ %

+JJ2 3
$numJJ3 4
,JJ4 5

,JJC D
verticesJJE M
,JJM N
	trianglesJJO X
)JJX Y
)JJY Z
;JJZ [
}KK 
}LL 	
staticNN 
boolNN 

(NN! "
intNN" %
	edgeIndexNN& /
,NN/ 0
ListNN1 5
<NN5 6
EdgeNN6 :
>NN: ;
edgesToProcessNN< J
)NNJ K
{OO 	
intPP 

=PP 
	edgeIndexPP  )
-PP* +
$numPP, -
;PP- .
intQQ 
	nextIndexQQ 
=QQ 
	edgeIndexQQ %
+QQ& '
$numQQ( )
;QQ) *
intRR 

=RR 
edgesToProcessRR  .
.RR. /
CountRR/ 4
;RR4 5
EdgeSS 
currentEdgeSS 
=SS 
edgesToProcessSS -
[SS- .
	edgeIndexSS. 7
]SS7 8
;SS8 9
returnUU 
(UU 

<UU" #
$numUU$ %
||UU& (
(UU) *
currentEdgeUU* 5
.UU5 6
	CompareToUU6 ?
(UU? @
edgesToProcessUU@ N
[UUN O
	edgeIndexUUO X
-UUY Z
$numUU[ \
]UU\ ]
)UU] ^
!=UU_ a
$numUUb c
)UUc d
)UUd e
&&UUf h
(UUi j
	nextIndexUUj s
>=UUt v

||
UU� �
(
UU� �
currentEdge
UU� �
.
UU� �
	CompareTo
UU� �
(
UU� �
edgesToProcess
UU� �
[
UU� �
	edgeIndex
UU� �
+
UU� �
$num
UU� �
]
UU� �
)
UU� �
!=
UU� �
$num
UU� �
)
UU� �
)
UU� �
;
UU� �
}VV 	
staticXX 
voidXX 
	SortEdgesXX 
(XX 
ListXX "
<XX" #
EdgeXX# '
>XX' (
edgesToProcessXX) 7
)XX7 8
{YY 	
edgesToProcessZZ 
.ZZ 
SortZZ 
(ZZ  
)ZZ  !
;ZZ! "
}[[ 	
static]] 
void]] !
CreateShadowTriangles]] )
(]]) *
List]]* .
<]]. /
Vector3]]/ 6
>]]6 7
vertices]]8 @
,]]@ A
List]]B F
<]]F G
Color]]G L
>]]L M
colors]]N T
,]]T U
List]]V Z
<]]Z [
int]][ ^
>]]^ _
	triangles]]` i
,]]i j
List]]k o
<]]o p
Vector4]]p w
>]]w x
tangents	]]y �
,
]]� �
List
]]� �
<
]]� �
Edge
]]� �
>
]]� �
edges
]]� �
)
]]� �
{^^ 	
for__ 
(__ 
int__ 
	edgeIndex__ 
=__ 
$num__ 
;__  
	edgeIndex__! *
<__* +
edges__+ 0
.__0 1
Count__1 6
;__6 7
	edgeIndex__8 A
++__A C
)__C D
{`` 
ifaa 
(aa 

(aa  !
	edgeIndexaa! *
,aa* +
edgesaa, 1
)aa1 2
)aa2 3
{bb 
Edgecc 
edgecc 
=cc 
edgescc  %
[cc% &
	edgeIndexcc& /
]cc/ 0
;cc0 1
tangentsdd 
[dd 
edgedd !
.dd! "
vertexIndex1dd" .
]dd. /
=dd0 1
-dd2 3
edgedd3 7
.dd7 8
tangentdd8 ?
;dd? @
intff 
newVertexIndexff &
=ff' (
verticesff) 1
.ff1 2
Countff2 7
;ff7 8
verticesgg 
.gg 
Addgg  
(gg  !
verticesgg! )
[gg) *
edgegg* .
.gg. /
vertexIndex0gg/ ;
]gg; <
)gg< =
;gg= >
colorshh 
.hh 
Addhh 
(hh 
colorshh %
[hh% &
edgehh& *
.hh* +
vertexIndex0hh+ 7
]hh7 8
)hh8 9
;hh9 :
tangentsjj 
.jj 
Addjj  
(jj  !
-jj! "
edgejj" &
.jj& '
tangentjj' .
)jj. /
;jj/ 0
	trianglesll 
.ll 
Addll !
(ll! "
edgell" &
.ll& '
vertexIndex0ll' 3
)ll3 4
;ll4 5
	trianglesmm 
.mm 
Addmm !
(mm! "
newVertexIndexmm" 0
)mm0 1
;mm1 2
	trianglesnn 
.nn 
Addnn !
(nn! "
edgenn" &
.nn& '
vertexIndex1nn' 3
)nn3 4
;nn4 5
}oo 
}pp 
}qq 	
staticss 
objectss "
InterpCustomVertexDatass ,
(ss, -
Vec3ss- 1
positionss2 :
,ss: ;
objectss< B
[ssB C
]ssC D
datassE I
,ssI J
floatssK P
[ssP Q
]ssQ R
weightsssS Z
)ssZ [
{tt 	
returnuu 
datauu 
[uu 
$numuu 
]uu 
;uu 
}vv 	
staticxx 
voidxx 
InitializeTangentsxx &
(xx& '
intxx' *

,xx8 9
Listxx: >
<xx> ?
Vector4xx? F
>xxF G
tangentsxxH P
)xxP Q
{yy 	
forzz 
(zz 
intzz 
izz 
=zz 
$numzz 
;zz 
izz 
<zz 

;zz- .
izz/ 0
++zz0 2
)zz2 3
tangents{{ 
.{{ 
Add{{ 
({{ 
Vector4{{ $
.{{$ %
zero{{% )
){{) *
;{{* +
}|| 	
public~~ 
static~~ 
void~~ 
GenerateShadowMesh~~ -
(~~- .
Mesh~~. 2
mesh~~3 7
,~~7 8
Vector3~~9 @
[~~@ A
]~~A B
	shapePath~~C L
)~~L M
{ 	
List
�� 
<
�� 
Vector3
�� 
>
�� 
vertices
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Vector3
��. 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
List
�� 
<
�� 
int
�� 
>
�� 
	triangles
�� 
=
��  !
new
��" %
List
��& *
<
��* +
int
��+ .
>
��. /
(
��/ 0
)
��0 1
;
��1 2
List
�� 
<
�� 
Vector4
�� 
>
�� 
tangents
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Vector4
��. 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
List
�� 
<
�� 
Color
�� 
>
�� 
	extrusion
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
Color
��- 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
int
�� 

pointCount
�� 
=
�� 
	shapePath
�� &
.
��& '
Length
��' -
;
��- .
var
�� 
inputs
�� 
=
�� 
new
�� 

�� *
[
��* +
$num
��+ ,
*
��- .

pointCount
��/ 9
]
��9 :
;
��: ;
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

pointCount
��  *
;
��* +
i
��, -
++
��- /
)
��/ 0
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
��/ 0
	shapePath
��0 9
[
��9 :
i
��: ;
]
��; <
.
��< =
x
��= >
,
��> ?
	shapePath
��@ I
[
��I J
i
��J K
]
��K L
.
��L M
y
��M N
,
��N O
	shapePath
��P Y
[
��Y Z
i
��Z [
]
��[ \
.
��\ ]
x
��] ^
,
��^ _
	shapePath
��` i
[
��i j
i
��j k
]
��k l
.
��l m
y
��m n
)
��n o
;
��o p
int
�� 
	nextPoint
�� 
=
�� 
(
��  !
i
��! "
+
��# $
$num
��% &
)
��& '
%
��( )

pointCount
��* 4
;
��4 5
inputs
�� 
[
�� 
$num
�� 
*
�� 
i
�� 
]
�� 
=
�� 
new
�� !

��" /
(
��/ 0
)
��0 1
{
��2 3
Position
��4 <
=
��= >
new
��? B
Vec3
��C G
(
��G H
)
��H I
{
��J K
X
��L M
=
��N O
	shapePath
��P Y
[
��Y Z
i
��Z [
]
��[ \
.
��\ ]
x
��] ^
,
��^ _
Y
��` a
=
��b c
	shapePath
��d m
[
��m n
i
��n o
]
��o p
.
��p q
y
��q r
,
��r s
Z
��t u
=
��u v
$num
��v w
}
��x y
,
��y z
Data
��{ 
=��� �

}��� �
;��� �

�� 
=
�� 
new
��  #
Color
��$ )
(
��) *
	shapePath
��* 3
[
��3 4
i
��4 5
]
��5 6
.
��6 7
x
��7 8
,
��8 9
	shapePath
��: C
[
��C D
i
��D E
]
��E F
.
��F G
y
��G H
,
��H I
	shapePath
��J S
[
��S T
	nextPoint
��T ]
]
��] ^
.
��^ _
x
��_ `
,
��` a
	shapePath
��b k
[
��k l
	nextPoint
��l u
]
��u v
.
��v w
y
��w x
)
��x y
;
��y z
Vector2
�� 
midPoint
��  
=
��! "
$num
��# '
*
��( )
(
��* +
	shapePath
��+ 4
[
��4 5
i
��5 6
]
��6 7
+
��8 9
	shapePath
��: C
[
��C D
	nextPoint
��D M
]
��M N
)
��N O
;
��O P
inputs
�� 
[
�� 
$num
�� 
*
�� 
i
�� 
+
�� 
$num
�� 
]
�� 
=
�� 
new
��  #

��$ 1
(
��1 2
)
��2 3
{
��4 5
Position
��6 >
=
��? @
new
��A D
Vec3
��E I
(
��I J
)
��J K
{
��L M
X
��N O
=
��P Q
midPoint
��R Z
.
��Z [
x
��[ \
,
��\ ]
Y
��^ _
=
��` a
midPoint
��b j
.
��j k
y
��k l
,
��l m
Z
��n o
=
��p q
$num
��r s
}
��s t
,
��t u
Data
��v z
=
��{ |

}��� �
;��� �
}
�� 
Tess
�� 
tessI
�� 
=
�� 
new
�� 
Tess
�� !
(
��! "
)
��" #
;
��# $
tessI
�� 
.
�� 

AddContour
�� 
(
�� 
inputs
�� #
,
��# $ 
ContourOrientation
��% 7
.
��7 8
Original
��8 @
)
��@ A
;
��A B
tessI
�� 
.
�� 

Tessellate
�� 
(
�� 
WindingRule
�� (
.
��( )
EvenOdd
��) 0
,
��0 1
ElementType
��2 =
.
��= >
Polygons
��> F
,
��F G
$num
��H I
,
��I J$
InterpCustomVertexData
��K a
)
��a b
;
��b c
var
�� 
indicesI
�� 
=
�� 
tessI
��  
.
��  !
Elements
��! )
.
��) *
Select
��* 0
(
��0 1
i
��1 2
=>
��3 5
i
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
��B C
var
�� 
	verticesI
�� 
=
�� 
tessI
�� !
.
��! "
Vertices
��" *
.
��* +
Select
��+ 1
(
��1 2
v
��2 3
=>
��4 6
new
��7 :
Vector3
��; B
(
��B C
v
��C D
.
��D E
Position
��E M
.
��M N
X
��N O
,
��O P
v
��Q R
.
��R S
Position
��S [
.
��[ \
Y
��\ ]
,
��] ^
$num
��_ `
)
��` a
)
��a b
.
��b c
ToArray
��c j
(
��j k
)
��k l
;
��l m
var
�� 

extrusionI
�� 
=
�� 
tessI
�� "
.
��" #
Vertices
��# +
.
��+ ,
Select
��, 2
(
��2 3
v
��3 4
=>
��5 7
new
��8 ;
Color
��< A
(
��A B
(
��B C
(
��C D
Color
��D I
)
��I J
v
��J K
.
��K L
Data
��L P
)
��P Q
.
��Q R
r
��R S
,
��S T
(
��U V
(
��V W
Color
��W \
)
��\ ]
v
��] ^
.
��^ _
Data
��_ c
)
��c d
.
��d e
g
��e f
,
��f g
(
��h i
(
��i j
Color
��j o
)
��o p
v
��p q
.
��q r
Data
��r v
)
��v w
.
��w x
b
��x y
,
��y z
(
��{ |
(
��| }
Color��} �
)��� �
v��� �
.��� �
Data��� �
)��� �
.��� �
a��� �
)��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
;��� �
vertices
�� 
.
�� 
AddRange
�� 
(
�� 
	verticesI
�� '
)
��' (
;
��( )
	triangles
�� 
.
�� 
AddRange
�� 
(
�� 
indicesI
�� '
)
��' (
;
��( )
	extrusion
�� 
.
�� 
AddRange
�� 
(
�� 

extrusionI
�� )
)
��) *
;
��* + 
InitializeTangents
�� 
(
�� 
vertices
�� '
.
��' (
Count
��( -
,
��- .
tangents
��/ 7
)
��7 8
;
��8 9
List
�� 
<
�� 
Edge
�� 
>
�� 
edges
�� 
=
�� 
new
�� "
List
��# '
<
��' (
Edge
��( ,
>
��, -
(
��- .
)
��. /
;
��/ 0
PopulateEdgeArray
�� 
(
�� 
vertices
�� &
,
��& '
	triangles
��( 1
,
��1 2
edges
��3 8
)
��8 9
;
��9 :
	SortEdges
�� 
(
�� 
edges
�� 
)
�� 
;
�� #
CreateShadowTriangles
�� !
(
��! "
vertices
��" *
,
��* +
	extrusion
��, 5
,
��5 6
	triangles
��7 @
,
��@ A
tangents
��B J
,
��J K
edges
��L Q
)
��Q R
;
��R S
Color
�� 
[
�� 
]
�� 
finalExtrusion
�� "
=
��# $
	extrusion
��% .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
;
��8 9
Vector3
�� 
[
�� 
]
�� 

�� #
=
��$ %
vertices
��& .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
;
��8 9
int
�� 
[
�� 
]
�� 
finalTriangles
��  
=
��! "
	triangles
��# ,
.
��, -
ToArray
��- 4
(
��4 5
)
��5 6
;
��6 7
Vector4
�� 
[
�� 
]
�� 

�� #
=
��$ %
tangents
��& .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
;
��8 9
mesh
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
mesh
�� 
.
�� 
vertices
�� 
=
�� 

�� )
;
��) *
mesh
�� 
.
�� 
	triangles
�� 
=
�� 
finalTriangles
�� +
;
��+ ,
mesh
�� 
.
�� 
tangents
�� 
=
�� 

�� )
;
��) *
mesh
�� 
.
�� 
colors
�� 
=
�� 
finalExtrusion
�� (
;
��( )
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\XR\XRLayout.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
internal 
struct
XRLayout 
{ 
internal		 
Camera		 
camera		 
;		 
internal

 
XRSystem

 
xrSystem

 "
;

" #
internal 
XRPass 

CreatePass "
(" #
XRPassCreateInfo# 3
passCreateInfo4 B
)B C
{
XRPass 
pass 
= 
XRPass  
.  !
Create! '
(' (
passCreateInfo( 6
)6 7
;7 8
xrSystem 
. 
AddPassToFrame #
(# $
pass$ (
)( )
;) *
return 
pass 
; 
} 	
internal 
void 

(# $
XRViewCreateInfo$ 4
viewCreateInfo5 C
,C D
XRPassE K
passL P
)P Q
{ 	
pass 
. 
AddView 
( 
viewCreateInfo '
.' (

projMatrix( 2
,2 3
viewCreateInfo4 B
.B C

viewMatrixC M
,M N
viewCreateInfoO ]
.] ^
viewport^ f
,f g
viewCreateInfoh v
.v w
textureArraySlice	w �
)
� �
;
� �
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\DeferredPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{
internal 
class
DeferredPass 
:  ! 
ScriptableRenderPass" 6
{ 
DeferredLights 
m_DeferredLights '
;' (
public 
DeferredPass 
( 
RenderPassEvent +
evt, /
,/ 0
DeferredLights1 ?
deferredLights@ N
)N O
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @
DeferredPass@ L
)L M
)M N
;N O
base 
. 
renderPassEvent  
=! "
evt# &
;& '
m_DeferredLights 
= 
deferredLights -
;- .
} 	
public 
override 
void 
	Configure &
(& '

cmd5 8
,8 9#
RenderTextureDescriptor: Q"
cameraTextureDescriporR h
)h i
{ 	"
RenderTargetIdentifier " 
lightingAttachmentId# 7
=8 9
m_DeferredLights: J
.J K(
GbufferAttachmentIdentifiersK g
[g h
m_DeferredLightsh x
.x y!
GBufferLightingIndex	y �
]
� �
;
� �"
RenderTargetIdentifier "
depthAttachmentId# 4
=5 6
m_DeferredLights7 G
.G H%
DepthAttachmentIdentifierH a
;a b
ConfigureTarget!! 
(!!  
lightingAttachmentId!! 0
,!!0 1
depthAttachmentId!!2 C
)!!C D
;!!D E
}"" 	
public%% 
override%% 
void%% 
Execute%% $
(%%$ %#
ScriptableRenderContext%%% <
context%%= D
,%%D E
ref%%F I


)%%e f
{&& 	
m_DeferredLights'' 
.'' 
ExecuteDeferredPass'' 0
(''0 1
context''1 8
,''8 9
ref'': =

)''K L
;''L M
}(( 	
public++ 
override++ 
void++ 
OnCameraCleanup++ ,
(++, -

cmd++; >
)++> ?
{,, 	
m_DeferredLights-- 
.-- 
OnCameraCleanup-- ,
(--, -
cmd--- 0
)--0 1
;--1 2
}.. 	
}// 
}00 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\RendererFeatures\ScreenSpaceAmbientOcclusion.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
] 
internal 
class
#ScreenSpaceAmbientOcclusionSettings 6
{ 
[		 	
SerializeField			 
]		 
internal		 !
bool		" &

Downsample		' 1
=		2 3
false		4 9
;		9 :
[

 	
SerializeField

	 
]

 
internal

 !
DepthSource

" -
Source

. 4
=

5 6
DepthSource

7 B
.

B C
DepthNormals

C O
;

O P
[ 	
SerializeField	 
] 
internal !


=> ?

.M N
MediumN T
;T U
[ 	
SerializeField	 
] 
internal !
float" '
	Intensity( 1
=2 3
$num4 8
;8 9
[
SerializeField
]
internal
float
DirectLightingStrength
=
$num
;
[ 	
SerializeField	 
] 
internal !
float" '
Radius( .
=/ 0
$num1 7
;7 8
[ 	
SerializeField	 
] 
internal !
int" %
SampleCount& 1
=2 3
$num4 5
;5 6
internal 
enum 
DepthSource !
{ 	
Depth 
= 
$num 
, 
DepthNormals 
= 
$num 
, 
} 	
internal 
enum 

{ 	
Low 
, 
Medium 
, 
High 
} 	
} 
[!! +
DisallowMultipleRendererFeature!! $
]!!$ %
internal"" 
class""
ScreenSpaceAmbientOcclusion"" .
:""/ 0%
ScriptableRendererFeature""1 J
{## 
[%% 	
SerializeField%%	 
,%% 
HideInInspector%% (
]%%( )
private%%* 1
Shader%%2 8
m_Shader%%9 A
=%%B C
null%%D H
;%%H I
[&& 	
SerializeField&&	 
]&& 
private&&  /
#ScreenSpaceAmbientOcclusionSettings&&! D

m_Settings&&E O
=&&P Q
new&&R U/
#ScreenSpaceAmbientOcclusionSettings&&V y
(&&y z
)&&z {
;&&{ |
private)) 
Material)) 

m_Material)) #
;))# $
private** +
ScreenSpaceAmbientOcclusionPass** /

m_SSAOPass**0 :
=**; <
null**= A
;**A B
private-- 
const-- 
string-- 
k_ShaderName-- )
=--* +
$str--, j
;--j k
private.. 
const.. 
string.. '
k_OrthographicCameraKeyword.. 8
=..9 :
$str..; J
;..J K
private// 
const// 
string// ,
 k_NormalReconstructionLowKeyword// =
=//> ?
$str//@ Y
;//Y Z
private00 
const00 
string00 /
#k_NormalReconstructionMediumKeyword00 @
=00A B
$str00C _
;00_ `
private11 
const11 
string11 -
!k_NormalReconstructionHighKeyword11 >
=11? @
$str11A [
;11[ \
private22 
const22 
string22  
k_SourceDepthKeyword22 1
=222 3
$str224 C
;22C D
private33 
const33 
string33 '
k_SourceDepthNormalsKeyword33 8
=339 :
$str33; R
;33R S
private44 
const44 
string44 "
k_SourceGBufferKeyword44 3
=444 5
$str446 G
;44G H
public77 
override77 
void77 
Create77 #
(77# $
)77$ %
{88 	
if:: 
(:: 

m_SSAOPass:: 
==:: 
null:: "
)::" #
{;; 

m_SSAOPass<< 
=<< 
new<<  +
ScreenSpaceAmbientOcclusionPass<<! @
(<<@ A
)<<A B
;<<B C
}== 
GetMaterial?? 
(?? 
)?? 
;?? 

m_SSAOPass@@ 
.@@ 
profilerTag@@ "
=@@# $
name@@% )
;@@) *

m_SSAOPassAA 
.AA 
renderPassEventAA &
=AA' (
RenderPassEventAA) 8
.AA8 9"
BeforeRenderingOpaquesAA9 O
;AAO P
}BB 	
publicEE 
overrideEE 
voidEE 
AddRenderPassesEE ,
(EE, -
ScriptableRendererEE- ?
rendererEE@ H
,EEH I
refEEJ M


)EEi j
{FF 	
ifGG 
(GG 
!GG 
GetMaterialGG 
(GG 
)GG 
)GG 
{HH 
DebugII 
.II 
LogErrorFormatII $
(II$ %
$str	JJ �
,
JJ� �
GetTypeKK 
(KK 
)KK 
.KK 
NameKK "
,KK" #

m_SSAOPassKK$ .
.KK. /
profilerTagKK/ :
)KK: ;
;KK; <
returnLL 
;LL 
}MM 
boolOO 
	shouldAddOO 
=OO 

m_SSAOPassOO '
.OO' (
SetupOO( -
(OO- .

m_SettingsOO. 8
)OO8 9
;OO9 :
ifPP 
(PP 
	shouldAddPP 
)PP 
{QQ 
rendererRR 
.RR 
EnqueuePassRR $
(RR$ %

m_SSAOPassRR% /
)RR/ 0
;RR0 1
}SS 
}TT 	
	protectedWW 
overrideWW 
voidWW 
DisposeWW  '
(WW' (
boolWW( ,
	disposingWW- 6
)WW6 7
{XX 	
	CoreUtilsYY 
.YY 
DestroyYY 
(YY 

m_MaterialYY (
)YY( )
;YY) *
}ZZ 	
private\\ 
bool\\ 
GetMaterial\\  
(\\  !
)\\! "
{]] 	
if^^ 
(^^ 

m_Material^^ 
!=^^ 
null^^ "
)^^" #
{__ 
return`` 
true`` 
;`` 
}aa 
ifcc 
(cc 
m_Shadercc 
==cc 
nullcc  
)cc  !
{dd 
m_Shaderee 
=ee 
Shaderee !
.ee! "
Findee" &
(ee& '
k_ShaderNameee' 3
)ee3 4
;ee4 5
ifff 
(ff 
m_Shaderff 
==ff 
nullff  $
)ff$ %
{gg 
returnhh 
falsehh  
;hh  !
}ii 
}jj 

m_Materialll 
=ll 
	CoreUtilsll "
.ll" # 
CreateEngineMaterialll# 7
(ll7 8
m_Shaderll8 @
)ll@ A
;llA B

m_SSAOPassmm 
.mm 
materialmm 
=mm  !

m_Materialmm" ,
;mm, -
returnnn 

m_Materialnn 
!=nn  
nullnn! %
;nn% &
}oo 	
privaterr 
classrr +
ScreenSpaceAmbientOcclusionPassrr 5
:rr6 7 
ScriptableRenderPassrr8 L
{ss 	
internaluu 
stringuu 
profilerTaguu '
;uu' (
internalvv 
Materialvv 
materialvv &
;vv& '
privateyy /
#ScreenSpaceAmbientOcclusionSettingsyy 7
m_CurrentSettingsyy8 I
;yyI J
privatezz 
ProfilingSamplerzz $
m_ProfilingSamplerzz% 7
=zz8 9
ProfilingSamplerzz: J
.zzJ K
GetzzK N
(zzN O
URPProfileIdzzO [
.zz[ \
SSAOzz\ `
)zz` a
;zza b
private{{ "
RenderTargetIdentifier{{ * 
m_SSAOTexture1Target{{+ ?
={{@ A
new{{B E"
RenderTargetIdentifier{{F \
({{\ ]
s_SSAOTexture1ID{{] m
,{{m n
$num{{o p
,{{p q
CubemapFace{{r }
.{{} ~
Unknown	{{~ �
,
{{� �
-
{{� �
$num
{{� �
)
{{� �
;
{{� �
private|| "
RenderTargetIdentifier|| * 
m_SSAOTexture2Target||+ ?
=||@ A
new||B E"
RenderTargetIdentifier||F \
(||\ ]
s_SSAOTexture2ID||] m
,||m n
$num||o p
,||p q
CubemapFace||r }
.||} ~
Unknown	||~ �
,
||� �
-
||� �
$num
||� �
)
||� �
;
||� �
private}} "
RenderTargetIdentifier}} * 
m_SSAOTexture3Target}}+ ?
=}}@ A
new}}B E"
RenderTargetIdentifier}}F \
(}}\ ]
s_SSAOTexture3ID}}] m
,}}m n
$num}}o p
,}}p q
CubemapFace}}r }
.}}} ~
Unknown	}}~ �
,
}}� �
-
}}� �
$num
}}� �
)
}}� �
;
}}� �
private~~ #
RenderTextureDescriptor~~ +
m_Descriptor~~, 8
;~~8 9
private
�� 
const
�� 
string
��  -
k_SSAOAmbientOcclusionParamName
��! @
=
��A B
$str
��C [
;
��[ \
private
�� 
const
�� 
string
��  
k_SSAOTextureName
��! 2
=
��3 4
$str
��5 S
;
��S T
private
�� 
static
�� 
readonly
�� #
int
��$ '
s_BaseMapID
��( 3
=
��4 5
Shader
��6 <
.
��< =
PropertyToID
��= I
(
��I J
$str
��J T
)
��T U
;
��U V
private
�� 
static
�� 
readonly
�� #
int
��$ '
s_SSAOParamsID
��( 6
=
��7 8
Shader
��9 ?
.
��? @
PropertyToID
��@ L
(
��L M
$str
��M Z
)
��Z [
;
��[ \
private
�� 
static
�� 
readonly
�� #
int
��$ '
s_SSAOTexture1ID
��( 8
=
��9 :
Shader
��; A
.
��A B
PropertyToID
��B N
(
��N O
$str
��O h
)
��h i
;
��i j
private
�� 
static
�� 
readonly
�� #
int
��$ '
s_SSAOTexture2ID
��( 8
=
��9 :
Shader
��; A
.
��A B
PropertyToID
��B N
(
��N O
$str
��O h
)
��h i
;
��i j
private
�� 
static
�� 
readonly
�� #
int
��$ '
s_SSAOTexture3ID
��( 8
=
��9 :
Shader
��; A
.
��A B
PropertyToID
��B N
(
��N O
$str
��O h
)
��h i
;
��i j
private
�� 
enum
�� 
ShaderPasses
�� %
{
�� 
AO
�� 
=
�� 
$num
�� 
,
�� 
BlurHorizontal
�� 
=
��  
$num
��! "
,
��" #
BlurVertical
�� 
=
�� 
$num
��  
,
��  !
	BlurFinal
�� 
=
�� 
$num
�� 
}
�� 
internal
�� -
ScreenSpaceAmbientOcclusionPass
�� 4
(
��4 5
)
��5 6
{
�� 
m_CurrentSettings
�� !
=
��" #
new
��$ '1
#ScreenSpaceAmbientOcclusionSettings
��( K
(
��K L
)
��L M
;
��M N
}
�� 
internal
�� 
bool
�� 
Setup
�� 
(
��  1
#ScreenSpaceAmbientOcclusionSettings
��  C
featureSettings
��D S
)
��S T
{
�� 
m_CurrentSettings
�� !
=
��" #
featureSettings
��$ 3
;
��3 4
switch
�� 
(
�� 
m_CurrentSettings
�� )
.
��) *
Source
��* 0
)
��0 1
{
�� 
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� <
.
��< =
DepthSource
��= H
.
��H I
Depth
��I N
:
��N O
ConfigureInput
�� &
(
��& ''
ScriptableRenderPassInput
��' @
.
��@ A
Depth
��A F
)
��F G
;
��G H
break
�� 
;
�� 
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� <
.
��< =
DepthSource
��= H
.
��H I
DepthNormals
��I U
:
��U V
ConfigureInput
�� &
(
��& ''
ScriptableRenderPassInput
��' @
.
��@ A
Normal
��A G
)
��G H
;
��H I
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� !)
ArgumentOutOfRangeException
��" =
(
��= >
)
��> ?
;
��? @
}
�� 
return
�� 
material
�� 
!=
��  "
null
��# '
&&
�� 
m_CurrentSettings
�� ,
.
��, -
	Intensity
��- 6
>
��7 8
$num
��9 =
&&
�� 
m_CurrentSettings
�� ,
.
��, -
Radius
��- 3
>
��4 5
$num
��6 :
&&
�� 
m_CurrentSettings
�� ,
.
��, -
SampleCount
��- 8
>
��9 :
$num
��; <
;
��< =
}
�� 
public
�� 
override
�� 
void
��  

��! .
(
��. /

��/ <
cmd
��= @
,
��@ A
ref
��B E

��F S

��T a
)
��a b
{
�� 
RenderTextureDescriptor
�� '$
cameraTargetDescriptor
��( >
=
��? @

��A N
.
��N O

cameraData
��O Y
.
��Y Z$
cameraTargetDescriptor
��Z p
;
��p q
int
�� 
downsampleDivider
�� %
=
��& '
m_CurrentSettings
��( 9
.
��9 :

Downsample
��: D
?
��E F
$num
��G H
:
��I J
$num
��K L
;
��L M
Vector4
�� 

ssaoParams
�� "
=
��# $
new
��% (
Vector4
��) 0
(
��0 1
m_CurrentSettings
�� %
.
��% &
	Intensity
��& /
,
��/ 0
m_CurrentSettings
�� %
.
��% &
Radius
��& ,
,
��, -
$num
�� 
/
�� 
downsampleDivider
�� ,
,
��, -
m_CurrentSettings
�� %
.
��% &
SampleCount
��& 1
)
�� 
;
�� 
material
�� 
.
�� 
	SetVector
�� "
(
��" #
s_SSAOParamsID
��# 1
,
��1 2

ssaoParams
��3 =
)
��= >
;
��> ?
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
material
��% -
,
��- .)
k_OrthographicCameraKeyword
��/ J
,
��J K

��L Y
.
��Y Z

cameraData
��Z d
.
��d e
camera
��e k
.
��k l
orthographic
��l x
)
��x y
;
��y z
if
�� 
(
�� 
m_CurrentSettings
�� %
.
��% &
Source
��& ,
==
��- /1
#ScreenSpaceAmbientOcclusionSettings
��0 S
.
��S T
DepthSource
��T _
.
��_ `
Depth
��` e
)
��e f
{
�� 
switch
�� 
(
�� 
m_CurrentSettings
�� -
.
��- .

��. ;
)
��; <
{
�� 
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� @
.
��@ A

��A N
.
��N O
Low
��O R
:
��R S
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :.
 k_NormalReconstructionLowKeyword
��; [
,
��[ \
true
��] a
)
��a b
;
��b c
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :1
#k_NormalReconstructionMediumKeyword
��; ^
,
��^ _
false
��` e
)
��e f
;
��f g
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :/
!k_NormalReconstructionHighKeyword
��; \
,
��\ ]
false
��^ c
)
��c d
;
��d e
break
�� !
;
��! "
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� @
.
��@ A

��A N
.
��N O
Medium
��O U
:
��U V
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :.
 k_NormalReconstructionLowKeyword
��; [
,
��[ \
false
��] b
)
��b c
;
��c d
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :1
#k_NormalReconstructionMediumKeyword
��; ^
,
��^ _
true
��` d
)
��d e
;
��e f
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :/
!k_NormalReconstructionHighKeyword
��; \
,
��\ ]
false
��^ c
)
��c d
;
��d e
break
�� !
;
��! "
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� @
.
��@ A

��A N
.
��N O
High
��O S
:
��S T
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :.
 k_NormalReconstructionLowKeyword
��; [
,
��[ \
false
��] b
)
��b c
;
��c d
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :1
#k_NormalReconstructionMediumKeyword
��; ^
,
��^ _
false
��` e
)
��e f
;
��f g
	CoreUtils
�� %
.
��% &

SetKeyword
��& 0
(
��0 1
material
��1 9
,
��9 :/
!k_NormalReconstructionHighKeyword
��; \
,
��\ ]
true
��^ b
)
��b c
;
��c d
break
�� !
;
��! "
default
�� 
:
��  
throw
�� !
new
��" %)
ArgumentOutOfRangeException
��& A
(
��A B
)
��B C
;
��C D
}
�� 
}
�� 
switch
�� 
(
�� 
m_CurrentSettings
�� )
.
��) *
Source
��* 0
)
��0 1
{
�� 
case
�� 1
#ScreenSpaceAmbientOcclusionSettings
�� <
.
��< =
DepthSource
��= H
.
��H I
DepthNormals
��I U
:
��U V
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6"
k_SourceDepthKeyword
��7 K
,
��K L
false
��M R
)
��R S
;
��S T
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6)
k_SourceDepthNormalsKeyword
��7 R
,
��R S
true
��T X
)
��X Y
;
��Y Z
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6$
k_SourceGBufferKeyword
��7 M
,
��M N
false
��O T
)
��T U
;
��U V
break
�� 
;
�� 
default
�� 
:
�� 
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6"
k_SourceDepthKeyword
��7 K
,
��K L
true
��M Q
)
��Q R
;
��R S
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6)
k_SourceDepthNormalsKeyword
��7 R
,
��R S
false
��T Y
)
��Y Z
;
��Z [
	CoreUtils
�� !
.
��! "

SetKeyword
��" ,
(
��, -
material
��- 5
,
��5 6$
k_SourceGBufferKeyword
��7 M
,
��M N
false
��O T
)
��T U
;
��U V
break
�� 
;
�� 
}
�� 
m_Descriptor
�� 
=
�� $
cameraTargetDescriptor
�� 5
;
��5 6
m_Descriptor
�� 
.
�� 
msaaSamples
�� (
=
��) *
$num
��+ ,
;
��, -
m_Descriptor
�� 
.
�� 
depthBufferBits
�� ,
=
��- .
$num
��/ 0
;
��0 1
m_Descriptor
�� 
.
�� 
width
�� "
/=
��# %
downsampleDivider
��& 7
;
��7 8
m_Descriptor
�� 
.
�� 
height
�� #
/=
��$ &
downsampleDivider
��' 8
;
��8 9
m_Descriptor
�� 
.
�� 
colorFormat
�� (
=
��) *!
RenderTextureFormat
��+ >
.
��> ?
ARGB32
��? E
;
��E F
cmd
�� 
.
�� 
GetTemporaryRT
�� "
(
��" #
s_SSAOTexture1ID
��# 3
,
��3 4
m_Descriptor
��5 A
,
��A B

FilterMode
��C M
.
��M N
Bilinear
��N V
)
��V W
;
��W X
m_Descriptor
�� 
.
�� 
width
�� "
*=
��# %
downsampleDivider
��& 7
;
��7 8
m_Descriptor
�� 
.
�� 
height
�� #
*=
��$ &
downsampleDivider
��' 8
;
��8 9
cmd
�� 
.
�� 
GetTemporaryRT
�� "
(
��" #
s_SSAOTexture2ID
��# 3
,
��3 4
m_Descriptor
��5 A
,
��A B

FilterMode
��C M
.
��M N
Bilinear
��N V
)
��V W
;
��W X
cmd
�� 
.
�� 
GetTemporaryRT
�� "
(
��" #
s_SSAOTexture3ID
��# 3
,
��3 4
m_Descriptor
��5 A
,
��A B

FilterMode
��C M
.
��M N
Bilinear
��N V
)
��V W
;
��W X
ConfigureTarget
�� 
(
��  
s_SSAOTexture2ID
��  0
)
��0 1
;
��1 2
ConfigureClear
�� 
(
�� 
	ClearFlag
�� (
.
��( )
None
��) -
,
��- .
Color
��/ 4
.
��4 5
white
��5 :
)
��: ;
;
��; <
}
�� 
public
�� 
override
�� 
void
��  
Execute
��! (
(
��( )%
ScriptableRenderContext
��) @
context
��A H
,
��H I
ref
��J M

��N [

��\ i
)
��i j
{
�� 
if
�� 
(
�� 
material
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� (
(
��( )
$str��) �
,��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
,��� �
profilerTag��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 

�� 
cmd
�� !
=
��" #
CommandBufferPool
��$ 5
.
��5 6
Get
��6 9
(
��9 :
)
��: ;
;
��; <
using
�� 
(
�� 
new
�� 
ProfilingScope
�� )
(
��) *
cmd
��* -
,
��- . 
m_ProfilingSampler
��/ A
)
��A B
)
��B C
{
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
cmd
��) ,
,
��, -"
ShaderKeywordStrings
��. B
.
��B C"
ScreenSpaceOcclusion
��C W
,
��W X
true
��Y ]
)
��] ^
;
��^ _
PostProcessUtils
�� $
.
��$ %

��% 2
(
��2 3
cmd
��3 6
,
��6 7
m_Descriptor
��8 D
)
��D E
;
��E F
Render
�� 
(
�� 
cmd
�� 
,
�� "
m_SSAOTexture1Target
��  4
,
��4 5
ShaderPasses
��6 B
.
��B C
AO
��C E
)
��E F
;
��F G!
RenderAndSetBaseMap
�� '
(
��' (
cmd
��( +
,
��+ ,"
m_SSAOTexture1Target
��- A
,
��A B"
m_SSAOTexture2Target
��C W
,
��W X
ShaderPasses
��Y e
.
��e f
BlurHorizontal
��f t
)
��t u
;
��u v!
RenderAndSetBaseMap
�� '
(
��' (
cmd
��( +
,
��+ ,"
m_SSAOTexture2Target
��- A
,
��A B"
m_SSAOTexture3Target
��C W
,
��W X
ShaderPasses
��Y e
.
��e f
BlurVertical
��f r
)
��r s
;
��s t!
RenderAndSetBaseMap
�� '
(
��' (
cmd
��( +
,
��+ ,"
m_SSAOTexture3Target
��- A
,
��A B"
m_SSAOTexture2Target
��C W
,
��W X
ShaderPasses
��Y e
.
��e f
	BlurFinal
��f o
)
��o p
;
��p q
cmd
�� 
.
�� 
SetGlobalTexture
�� (
(
��( )
k_SSAOTextureName
��) :
,
��: ;"
m_SSAOTexture2Target
��< P
)
��P Q
;
��Q R
cmd
�� 
.
�� 
SetGlobalVector
�� '
(
��' (-
k_SSAOAmbientOcclusionParamName
��( G
,
��G H
new
��I L
Vector4
��M T
(
��T U
$num
��U W
,
��W X
$num
��Y [
,
��[ \
$num
��] _
,
��_ `
m_CurrentSettings
��a r
.
��r s%
DirectLightingStrength��s �
)��� �
)��� �
;��� �
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� ,
(
��, -
cmd
��- 0
)
��0 1
;
��1 2
CommandBufferPool
�� !
.
��! "
Release
��" )
(
��) *
cmd
��* -
)
��- .
;
��. /
}
�� 
private
�� 
void
�� 
Render
�� 
(
��  

��  -
cmd
��. 1
,
��1 2$
RenderTargetIdentifier
��3 I
target
��J P
,
��P Q
ShaderPasses
��R ^
pass
��_ c
)
��c d
{
�� 
cmd
�� 
.
�� 
SetRenderTarget
�� #
(
��# $
target
�� 
,
�� $
RenderBufferLoadAction
�� *
.
��* +
DontCare
��+ 3
,
��3 4%
RenderBufferStoreAction
�� +
.
��+ ,
Store
��, 1
,
��1 2
target
�� 
,
�� $
RenderBufferLoadAction
�� *
.
��* +
DontCare
��+ 3
,
��3 4%
RenderBufferStoreAction
�� +
.
��+ ,
DontCare
��, 4
)
�� 
;
�� 
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
RenderingUtils
�� +
.
��+ ,
fullscreenMesh
��, :
,
��: ;
	Matrix4x4
��< E
.
��E F
identity
��F N
,
��N O
material
��P X
,
��X Y
$num
��Z [
,
��[ \
(
��] ^
int
��^ a
)
��a b
pass
��c g
)
��g h
;
��h i
}
�� 
private
�� 
void
�� !
RenderAndSetBaseMap
�� ,
(
��, -

��- :
cmd
��; >
,
��> ?$
RenderTargetIdentifier
��@ V
baseMap
��W ^
,
��^ _$
RenderTargetIdentifier
��` v
target
��w }
,
��} ~
ShaderPasses�� �
pass��� �
)��� �
{
�� 
cmd
�� 
.
�� 
SetGlobalTexture
�� $
(
��$ %
s_BaseMapID
��% 0
,
��0 1
baseMap
��2 9
)
��9 :
;
��: ;
Render
�� 
(
�� 
cmd
�� 
,
�� 
target
�� "
,
��" #
pass
��$ (
)
��( )
;
��) *
}
�� 
public
�� 
override
�� 
void
��  
OnCameraCleanup
��! 0
(
��0 1

��1 >
cmd
��? B
)
��B C
{
�� 
if
�� 
(
�� 
cmd
�� 
==
�� 
null
�� 
)
��  
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� 3
(
��3 4
$str
��4 9
)
��9 :
;
��: ;
}
�� 
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?"
ScreenSpaceOcclusion
��? S
,
��S T
false
��U Z
)
��Z [
;
��[ \
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '
s_SSAOTexture1ID
��' 7
)
��7 8
;
��8 9
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '
s_SSAOTexture2ID
��' 7
)
��7 8
;
��8 9
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '
s_SSAOTexture3ID
��' 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
}
�� 
}�� �2
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\DepthOfField.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

enum 
DepthOfFieldMode  
{ 
Off 
, 
Gaussian 
, 
Bokeh		 
}

 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' G
)G H
]H I
public

sealed
class
DepthOfField
:
VolumeComponent
,
IPostProcessComponent
{ 
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public %
DepthOfFieldModeParameter (
mode) -
=. /
new0 3%
DepthOfFieldModeParameter4 M
(M N
DepthOfFieldModeN ^
.^ _
Off_ b
)b c
;c d
[ 	
Tooltip	 
( 
$str A
)A B
]B C
public 
MinFloatParameter  

=/ 0
new1 4
MinFloatParameter5 F
(F G
$numG J
,J K
$numL N
)N O
;O P
[ 	
Tooltip	 
( 
$str T
)T U
]U V
public 
MinFloatParameter  
gaussianEnd! ,
=- .
new/ 2
MinFloatParameter3 D
(D E
$numE H
,H I
$numJ L
)L M
;M N
[ 	
Tooltip	 
( 
$str m
)m n
]n o
public !
ClampedFloatParameter $
gaussianMaxRadius% 6
=7 8
new9 <!
ClampedFloatParameter= R
(R S
$numS U
,U V
$numW [
,[ \
$num] a
)a b
;b c
[ 	
Tooltip	 
( 
$str l
)l m
]m n
public 

highQualitySampling 0
=1 2
new3 6

(D E
falseE J
)J K
;K L
[ 	
Tooltip	 
( 
$str 6
)6 7
]7 8
public 
MinFloatParameter  

=/ 0
new1 4
MinFloatParameter5 F
(F G
$numG J
,J K
$numL P
)P Q
;Q R
[!! 	
Tooltip!!	 
(!! 
$str	!! �
)
!!� �
]
!!� �
public"" !
ClampedFloatParameter"" $
aperture""% -
="". /
new""0 3!
ClampedFloatParameter""4 I
(""I J
$num""J N
,""N O
$num""P R
,""R S
$num""T W
)""W X
;""X Y
[$$ 	
Tooltip$$	 
($$ 
$str$$ |
)$$| }
]$$} ~
public%% !
ClampedFloatParameter%% $
focalLength%%% 0
=%%1 2
new%%3 6!
ClampedFloatParameter%%7 L
(%%L M
$num%%M P
,%%P Q
$num%%R T
,%%T U
$num%%V Z
)%%Z [
;%%[ \
['' 	
Tooltip''	 
('' 
$str'' 1
)''1 2
]''2 3
public(( 
ClampedIntParameter(( "

bladeCount((# -
=((. /
new((0 3
ClampedIntParameter((4 G
(((G H
$num((H I
,((I J
$num((K L
,((L M
$num((N O
)((O P
;((P Q
[** 	
Tooltip**	 
(** 
$str	** �
)
**� �
]
**� �
public++ !
ClampedFloatParameter++ $
bladeCurvature++% 3
=++4 5
new++6 9!
ClampedFloatParameter++: O
(++O P
$num++P R
,++R S
$num++T V
,++V W
$num++X Z
)++Z [
;++[ \
[-- 	
Tooltip--	 
(-- 
$str-- >
)--> ?
]--? @
public.. !
ClampedFloatParameter.. $

=..3 4
new..5 8!
ClampedFloatParameter..9 N
(..N O
$num..O Q
,..Q R
-..S T
$num..T X
,..X Y
$num..Z ^
)..^ _
;.._ `
public00 
bool00 
IsActive00 
(00 
)00 
{11 	
if22 
(22 
mode22 
.22 
value22 
==22 
DepthOfFieldMode22 .
.22. /
Off22/ 2
||223 5

SystemInfo226 @
.22@ A
graphicsShaderLevel22A T
<22U V
$num22W Y
)22Y Z
return33 
false33 
;33 
return55 
mode55 
.55 
value55 
!=55  
DepthOfFieldMode55! 1
.551 2
Gaussian552 :
||55; =

SystemInfo55> H
.55H I&
supportedRenderTargetCount55I c
>55d e
$num55f g
;55g h
}66 	
public88 
bool88 
IsTileCompatible88 $
(88$ %
)88% &
=>88' )
false88* /
;88/ 0
}99 
[;; 
Serializable;; 
];; 
public<< 

sealed<< 
class<< %
DepthOfFieldModeParameter<< 1
:<<2 3
VolumeParameter<<4 C
<<<C D
DepthOfFieldMode<<D T
><<T U
{<<V W
public<<X ^%
DepthOfFieldModeParameter<<_ x
(<<x y
DepthOfFieldMode	<<y �
value
<<� �
,
<<� �
bool
<<� �

<<� �
=
<<� �
false
<<� �
)
<<� �
:
<<� �
base
<<� �
(
<<� �
value
<<� �
,
<<� �

<<� �
)
<<� �
{
<<� �
}
<<� �
}
<<� �
}== �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\AssemblyInfo.cs
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
$str F
)F G
]G H
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str L
)L M
]M N
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str M
)M N
]N O
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str P
)P Q
]Q R�	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Shadows\CompositeShadowCaster2D.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
[		 
AddComponentMenu		 
(		 
$str		 N
)		N O
]		O P
[

 
ExecuteInEditMode

 
]

 
public 

class #
CompositeShadowCaster2D (
:) *
ShadowCasterGroup2D+ >
{ 
	protected
void
OnEnable
(
)
{ 	&
ShadowCasterGroup2DManager &
.& '
AddGroup' /
(/ 0
this0 4
)4 5
;5 6
} 	
	protected 
void 
	OnDisable  
(  !
)! "
{ 	&
ShadowCasterGroup2DManager &
.& '
RemoveGroup' 2
(2 3
this3 7
)7 8
;8 9
} 	
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\WhiteBalance.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' F
)F G
]G H
public 

sealed 
class 
WhiteBalance $
:% &
VolumeComponent' 6
,6 7!
IPostProcessComponent8 M
{ 
[ 	
Tooltip	 
( 
$str H
)H I
]I J
public		 !
ClampedFloatParameter		 $
temperature		% 0
=		1 2
new		3 6!
ClampedFloatParameter		7 L
(		L M
$num		M O
,		O P
-		Q R
$num		R U
,		U V
$num		W [
)		[ \
;		\ ]
[ 	
Tooltip	 
( 
$str T
)T U
]U V
public !
ClampedFloatParameter $
tint% )
=* +
new, /!
ClampedFloatParameter0 E
(E F
$numF H
,H I
-J K
$numK N
,N O
$numP T
)T U
;U V
public 
bool 
IsActive 
( 
) 
=> !
temperature" -
.- .
value. 3
!=4 6
$num7 9
||: <
tint= A
.A B
valueB G
!=H J
$numK M
;M N
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
true* .
;. /
} 
} ܛ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\DeferredLights.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
static 

class 
DeferredConfig 
{ 
internal 
static 
bool 
IsOpenGL %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
internal 
static 
bool #
UseCBufferForDepthRange 4
{ 	
get 
{   
return$$ 
IsOpenGL$$ #
;$$# $
}&& 
}'' 	
internal)) 
static)) 
bool)) !
UseCBufferForTileList)) 2
{** 	
get++ 
{,, 
return00 
IsOpenGL00 #
;00# $
}22 
}33 	
internal55 
static55 
bool55 "
UseCBufferForLightData55 3
{66 	
get77 
{88 
return99 
true99 
;99 
}:: 
};; 	
internal== 
static== 
bool== "
UseCBufferForLightList== 3
{>> 	
get?? 
{@@ 
returnDD 
IsOpenGLDD #
;DD# $
}FF 
}GG 	
publicJJ 
constJJ 
intJJ !
kPreferredCBufferSizeJJ .
=JJ/ 0
$numJJ1 3
*JJ4 5
$numJJ6 :
;JJ: ;
publicKK 
constKK 
intKK *
kPreferredStructuredBufferSizeKK 7
=KK8 9
$numKK: =
*KK> ?
$numKK@ D
;KKD E
publicMM 
constMM 
intMM 
kTilePixelWidthMM (
=MM) *
$numMM+ -
;MM- .
publicNN 
constNN 
intNN 
kTilePixelHeightNN )
=NN* +
$numNN, .
;NN. /
publicRR 
constRR 
intRR 
kTilerDepthRR $
=RR% &
$numRR' (
;RR( )
publicSS 
constSS 
intSS 
kTilerSubdivisionsSS +
=SS, -
$numSS. /
;SS/ 0
publicUU 
constUU 
intUU 
kAvgLightPerTileUU )
=UU* +
$numUU, .
;UU. /
public]] 
const]] 
int]] +
kTileDepthInfoIntermediateLevel]] 8
=]]9 :
-]]; <
$num]]< =
;]]= >
publiccc 
constcc 
boolcc !
kHasNativeQuadSupportcc /
=cc0 1
falsecc2 7
;cc7 8
}ee 
internalgg 
enumgg
	LightFlaggg 
{hh $
SubtractiveMixedLightingjj  
=jj! "
$numjj# $
}kk 
internalnn 
classnn
DeferredLightsnn !
{oo 
internalpp 
staticpp 
classpp 
ShaderConstantspp -
{qq 	
publicrr 
staticrr 
readonlyrr "
intrr# &
_LitStencilRefrr' 5
=rr6 7
Shaderrr8 >
.rr> ?
PropertyToIDrr? K
(rrK L
$strrrL \
)rr\ ]
;rr] ^
publicss 
staticss 
readonlyss "
intss# &
_LitStencilReadMaskss' :
=ss; <
Shaderss= C
.ssC D
PropertyToIDssD P
(ssP Q
$strssQ f
)ssf g
;ssg h
publictt 
statictt 
readonlytt "
inttt# & 
_LitStencilWriteMasktt' ;
=tt< =
Shadertt> D
.ttD E
PropertyToIDttE Q
(ttQ R
$strttR h
)tth i
;tti j
publicuu 
staticuu 
readonlyuu "
intuu# & 
_SimpleLitStencilRefuu' ;
=uu< =
Shaderuu> D
.uuD E
PropertyToIDuuE Q
(uuQ R
$struuR h
)uuh i
;uui j
publicvv 
staticvv 
readonlyvv "
intvv# &%
_SimpleLitStencilReadMaskvv' @
=vvA B
ShadervvC I
.vvI J
PropertyToIDvvJ V
(vvV W
$strvvW r
)vvr s
;vvs t
publicww 
staticww 
readonlyww "
intww# &&
_SimpleLitStencilWriteMaskww' A
=wwB C
ShaderwwD J
.wwJ K
PropertyToIDwwK W
(wwW X
$strwwX t
)wwt u
;wwu v
publicxx 
staticxx 
readonlyxx "
intxx# &
_StencilRefxx' 2
=xx3 4
Shaderxx5 ;
.xx; <
PropertyToIDxx< H
(xxH I
$strxxI V
)xxV W
;xxW X
publicyy 
staticyy 
readonlyyy "
intyy# &
_StencilReadMaskyy' 7
=yy8 9
Shaderyy: @
.yy@ A
PropertyToIDyyA M
(yyM N
$stryyN `
)yy` a
;yya b
publiczz 
staticzz 
readonlyzz "
intzz# &
_StencilWriteMaskzz' 8
=zz9 :
Shaderzz; A
.zzA B
PropertyToIDzzB N
(zzN O
$strzzO b
)zzb c
;zzc d
public{{ 
static{{ 
readonly{{ "
int{{# &"
_LitPunctualStencilRef{{' =
={{> ?
Shader{{@ F
.{{F G
PropertyToID{{G S
({{S T
$str{{T l
){{l m
;{{m n
public|| 
static|| 
readonly|| "
int||# &'
_LitPunctualStencilReadMask||' B
=||C D
Shader||E K
.||K L
PropertyToID||L X
(||X Y
$str||Y v
)||v w
;||w x
public}} 
static}} 
readonly}} "
int}}# &(
_LitPunctualStencilWriteMask}}' C
=}}D E
Shader}}F L
.}}L M
PropertyToID}}M Y
(}}Y Z
$str}}Z x
)}}x y
;}}y z
public~~ 
static~~ 
readonly~~ "
int~~# &(
_SimpleLitPunctualStencilRef~~' C
=~~D E
Shader~~F L
.~~L M
PropertyToID~~M Y
(~~Y Z
$str~~Z x
)~~x y
;~~y z
public 
static 
readonly "
int# &-
!_SimpleLitPunctualStencilReadMask' H
=I J
ShaderK Q
.Q R
PropertyToIDR ^
(^ _
$str	_ �
)
� �
;
� �
public
�� 
static
�� 
readonly
�� "
int
��# &0
"_SimpleLitPunctualStencilWriteMask
��' I
=
��J K
Shader
��L R
.
��R S
PropertyToID
��S _
(
��_ `
$str��` �
)��� �
;��� �
public
�� 
static
�� 
readonly
�� "
int
��# &
_LitDirStencilRef
��' 8
=
��9 :
Shader
��; A
.
��A B
PropertyToID
��B N
(
��N O
$str
��O b
)
��b c
;
��c d
public
�� 
static
�� 
readonly
�� "
int
��# &$
_LitDirStencilReadMask
��' =
=
��> ?
Shader
��@ F
.
��F G
PropertyToID
��G S
(
��S T
$str
��T l
)
��l m
;
��m n
public
�� 
static
�� 
readonly
�� "
int
��# &%
_LitDirStencilWriteMask
��' >
=
��? @
Shader
��A G
.
��G H
PropertyToID
��H T
(
��T U
$str
��U n
)
��n o
;
��o p
public
�� 
static
�� 
readonly
�� "
int
��# &%
_SimpleLitDirStencilRef
��' >
=
��? @
Shader
��A G
.
��G H
PropertyToID
��H T
(
��T U
$str
��U n
)
��n o
;
��o p
public
�� 
static
�� 
readonly
�� "
int
��# &*
_SimpleLitDirStencilReadMask
��' C
=
��D E
Shader
��F L
.
��L M
PropertyToID
��M Y
(
��Y Z
$str
��Z x
)
��x y
;
��y z
public
�� 
static
�� 
readonly
�� "
int
��# &+
_SimpleLitDirStencilWriteMask
��' D
=
��E F
Shader
��G M
.
��M N
PropertyToID
��N Z
(
��Z [
$str
��[ z
)
��z {
;
��{ |
public
�� 
static
�� 
readonly
�� "
int
��# &
_ClearStencilRef
��' 7
=
��8 9
Shader
��: @
.
��@ A
PropertyToID
��A M
(
��M N
$str
��N `
)
��` a
;
��a b
public
�� 
static
�� 
readonly
�� "
int
��# &#
_ClearStencilReadMask
��' <
=
��= >
Shader
��? E
.
��E F
PropertyToID
��F R
(
��R S
$str
��S j
)
��j k
;
��k l
public
�� 
static
�� 
readonly
�� "
int
��# &$
_ClearStencilWriteMask
��' =
=
��> ?
Shader
��@ F
.
��F G
PropertyToID
��G S
(
��S T
$str
��T l
)
��l m
;
��m n
public
�� 
static
�� 
readonly
�� "
int
��# &
UDepthRanges
��' 3
=
��4 5
Shader
��6 <
.
��< =
PropertyToID
��= I
(
��I J
$str
��J X
)
��X Y
;
��Y Z
public
�� 
static
�� 
readonly
�� "
int
��# &
_DepthRanges
��' 3
=
��4 5
Shader
��6 <
.
��< =
PropertyToID
��= I
(
��I J
$str
��J X
)
��X Y
;
��Y Z
public
�� 
static
�� 
readonly
�� "
int
��# & 
_DownsamplingWidth
��' 9
=
��: ;
Shader
��< B
.
��B C
PropertyToID
��C O
(
��O P
$str
��P d
)
��d e
;
��e f
public
�� 
static
�� 
readonly
�� "
int
��# &!
_DownsamplingHeight
��' :
=
��; <
Shader
��= C
.
��C D
PropertyToID
��D P
(
��P Q
$str
��Q f
)
��f g
;
��g h
public
�� 
static
�� 
readonly
�� "
int
��# &

��' 4
=
��5 6
Shader
��7 =
.
��= >
PropertyToID
��> J
(
��J K
$str
��K Z
)
��Z [
;
��[ \
public
�� 
static
�� 
readonly
�� "
int
��# &

��' 4
=
��5 6
Shader
��7 =
.
��= >
PropertyToID
��> J
(
��J K
$str
��K Z
)
��Z [
;
��[ \
public
�� 
static
�� 
readonly
�� "
int
��# &
_TileShiftX
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
_TileShiftY
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
_tileXCount
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
_DepthRangeOffset
��' 8
=
��9 :
Shader
��; A
.
��A B
PropertyToID
��B N
(
��N O
$str
��O b
)
��b c
;
��c d
public
�� 
static
�� 
readonly
�� "
int
��# &
_BitmaskTex
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
	UTileList
��' 0
=
��1 2
Shader
��3 9
.
��9 :
PropertyToID
��: F
(
��F G
$str
��G R
)
��R S
;
��S T
public
�� 
static
�� 
readonly
�� "
int
��# &
	_TileList
��' 0
=
��1 2
Shader
��3 9
.
��9 :
PropertyToID
��: F
(
��F G
$str
��G R
)
��R S
;
��S T
public
�� 
static
�� 
readonly
�� "
int
��# &"
UPunctualLightBuffer
��' ;
=
��< =
Shader
��> D
.
��D E
PropertyToID
��E Q
(
��Q R
$str
��R h
)
��h i
;
��i j
public
�� 
static
�� 
readonly
�� "
int
��# &"
_PunctualLightBuffer
��' ;
=
��< =
Shader
��> D
.
��D E
PropertyToID
��E Q
(
��Q R
$str
��R h
)
��h i
;
��i j
public
�� 
static
�� 
readonly
�� "
int
��# &

��' 4
=
��5 6
Shader
��7 =
.
��= >
PropertyToID
��> J
(
��J K
$str
��K Z
)
��Z [
;
��[ \
public
�� 
static
�� 
readonly
�� "
int
��# &

��' 4
=
��5 6
Shader
��7 =
.
��= >
PropertyToID
��> J
(
��J K
$str
��K Z
)
��Z [
;
��[ \
public
�� 
static
�� 
readonly
�� "
int
��# &
_TilePixelWidth
��' 6
=
��7 8
Shader
��9 ?
.
��? @
PropertyToID
��@ L
(
��L M
$str
��M ^
)
��^ _
;
��_ `
public
�� 
static
�� 
readonly
�� "
int
��# &
_TilePixelHeight
��' 7
=
��8 9
Shader
��: @
.
��@ A
PropertyToID
��A M
(
��M N
$str
��N `
)
��` a
;
��a b
public
�� 
static
�� 
readonly
�� "
int
��# &
_InstanceOffset
��' 6
=
��7 8
Shader
��9 ?
.
��? @
PropertyToID
��@ L
(
��L M
$str
��M ^
)
��^ _
;
��_ `
public
�� 
static
�� 
readonly
�� "
int
��# &
	_DepthTex
��' 0
=
��1 2
Shader
��3 9
.
��9 :
PropertyToID
��: F
(
��F G
$str
��G R
)
��R S
;
��S T
public
�� 
static
�� 
readonly
�� "
int
��# &

��' 4
=
��5 6
Shader
��7 =
.
��= >
PropertyToID
��> J
(
��J K
$str
��K Z
)
��Z [
;
��[ \
public
�� 
static
�� 
readonly
�� "
int
��# &
_ScreenSize
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
_ScreenToWorld
��' 5
=
��6 7
Shader
��8 >
.
��> ?
PropertyToID
��? K
(
��K L
$str
��L \
)
��\ ]
;
��] ^
public
�� 
static
�� 
readonly
�� "
int
��# &
_unproject0
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
readonly
�� "
int
��# &
_unproject1
��' 2
=
��3 4
Shader
��5 ;
.
��; <
PropertyToID
��< H
(
��H I
$str
��I V
)
��V W
;
��W X
public
�� 
static
�� 
int
��  
_MainLightPosition
�� 0
=
��1 2
Shader
��3 9
.
��9 :
PropertyToID
��: F
(
��F G
$str
��G [
)
��[ \
;
��\ ]
public
�� 
static
�� 
int
�� 
_MainLightColor
�� -
=
��. /
Shader
��0 6
.
��6 7
PropertyToID
��7 C
(
��C D
$str
��D U
)
��U V
;
��V W
public
�� 
static
�� 
int
�� 
_SpotLightScale
�� -
=
��. /
Shader
��0 6
.
��6 7
PropertyToID
��7 C
(
��C D
$str
��D U
)
��U V
;
��V W
public
�� 
static
�� 
int
�� 
_SpotLightBias
�� ,
=
��- .
Shader
��/ 5
.
��5 6
PropertyToID
��6 B
(
��B C
$str
��C S
)
��S T
;
��T U
public
�� 
static
�� 
int
�� 
_SpotLightGuard
�� -
=
��. /
Shader
��0 6
.
��6 7
PropertyToID
��7 C
(
��C D
$str
��D U
)
��U V
;
��V W
public
�� 
static
�� 
int
�� 
_LightPosWS
�� )
=
��* +
Shader
��, 2
.
��2 3
PropertyToID
��3 ?
(
��? @
$str
��@ M
)
��M N
;
��N O
public
�� 
static
�� 
int
�� 
_LightColor
�� )
=
��* +
Shader
��, 2
.
��2 3
PropertyToID
��3 ?
(
��? @
$str
��@ M
)
��M N
;
��N O
public
�� 
static
�� 
int
�� 
_LightAttenuation
�� /
=
��0 1
Shader
��2 8
.
��8 9
PropertyToID
��9 E
(
��E F
$str
��F Y
)
��Y Z
;
��Z [
public
�� 
static
�� 
int
�� %
_LightOcclusionProbInfo
�� 5
=
��6 7
Shader
��8 >
.
��> ?
PropertyToID
��? K
(
��K L
$str
��L e
)
��e f
;
��f g
public
�� 
static
�� 
int
�� 
_LightDirection
�� -
=
��. /
Shader
��0 6
.
��6 7
PropertyToID
��7 C
(
��C D
$str
��D U
)
��U V
;
��V W
public
�� 
static
�� 
int
�� 
_LightFlags
�� )
=
��* +
Shader
��, 2
.
��2 3
PropertyToID
��3 ?
(
��? @
$str
��@ M
)
��M N
;
��N O
public
�� 
static
�� 
int
�� 
_ShadowLightIndex
�� /
=
��0 1
Shader
��2 8
.
��8 9
PropertyToID
��9 E
(
��E F
$str
��F Y
)
��Y Z
;
��Z [
}
�� 	
struct
�� 

�� 
:
�� 
IJob
�� #
{
�� 	
public
�� 

��  
tiler
��! &
;
��& '
[
�� 
ReadOnly
��
]
�� 
[
�� 
Unity
�� 
.
�� 
Collections
�� (
.
��( )
LowLevel
��) 1
.
��1 2
Unsafe
��2 8
.
��8 95
'NativeDisableContainerSafetyRestriction
��9 `
]
��` a
public
�� 
NativeArray
�� 
<
�� 

�� ,
.
��, -
PrePunctualLight
��- =
>
��= >
prePunctualLights
��? P
;
��P Q
[
�� 
ReadOnly
��
]
�� 
[
�� 
Unity
�� 
.
�� 
Collections
�� (
.
��( )
LowLevel
��) 1
.
��1 2
Unsafe
��2 8
.
��8 95
'NativeDisableContainerSafetyRestriction
��9 `
]
��` a
public
�� 
NativeArray
�� 
<
�� 
ushort
�� %
>
��% &
coarseTiles
��' 2
;
��2 3
[
�� 
ReadOnly
��
]
�� 
[
�� 
Unity
�� 
.
�� 
Collections
�� (
.
��( )
LowLevel
��) 1
.
��1 2
Unsafe
��2 8
.
��8 95
'NativeDisableContainerSafetyRestriction
��9 `
]
��` a
public
�� 
NativeArray
�� 
<
�� 
uint
�� #
>
��# $
coarseTileHeaders
��% 6
;
��6 7
public
�� 
int
��  
coarseHeaderOffset
�� )
;
��) *
public
�� 
int
�� 
istart
�� 
;
�� 
public
�� 
int
�� 
iend
�� 
;
�� 
public
�� 
int
�� 
jstart
�� 
;
�� 
public
�� 
int
�� 
jend
�� 
;
�� 
public
�� 
void
�� 
Execute
�� 
(
��  
)
��  !
{
�� 
int
�� 
coarseTileOffset
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
coarseTileHeaders
��, =
[
��= > 
coarseHeaderOffset
��> P
+
��Q R
$num
��S T
]
��T U
;
��U V
int
�� !
coarseVisLightCount
�� '
=
��( )
(
��* +
int
��+ .
)
��. /
coarseTileHeaders
��/ @
[
��@ A 
coarseHeaderOffset
��A S
+
��T U
$num
��V W
]
��W X
;
��X Y
if
�� 
(
�� 
tiler
�� 
.
�� 

TilerLevel
�� $
!=
��% '
$num
��( )
)
��) *
{
�� 
tiler
�� 
.
�� $
CullIntermediateLights
�� 0
(
��0 1
ref
�� 
prePunctualLights
�� -
,
��- .
ref
�� 
coarseTiles
�� '
,
��' (
coarseTileOffset
��) 9
,
��9 :!
coarseVisLightCount
��; N
,
��N O
istart
�� 
,
�� 
iend
��  $
,
��$ %
jstart
��& ,
,
��, -
jend
��. 2
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
tiler
�� 
.
�� 
CullFinalLights
�� )
(
��) *
ref
�� 
prePunctualLights
�� -
,
��- .
ref
�� 
coarseTiles
�� '
,
��' (
coarseTileOffset
��) 9
,
��9 :!
coarseVisLightCount
��; N
,
��N O
istart
�� 
,
�� 
iend
��  $
,
��$ %
jstart
��& ,
,
��, -
jend
��. 2
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
struct
�� 
DrawCall
�� 
{
�� 	
public
�� 

��  
tileList
��! )
;
��) *
public
�� 

��  !
punctualLightBuffer
��! 4
;
��4 5
public
�� 

��  
relLightList
��! -
;
��- .
public
�� 
int
�� 
tileListSize
�� #
;
��# $
public
�� 
int
�� %
punctualLightBufferSize
�� .
;
��. /
public
�� 
int
�� 
relLightListSize
�� '
;
��' (
public
�� 
int
�� 
instanceOffset
�� %
;
��% &
public
�� 
int
�� 

�� $
;
��$ %
}
�� 	
static
�� 
readonly
�� 
string
�� 

�� ,
=
��- .
$str
��/ <
;
��< =
static
�� 
readonly
�� 
string
�� 
k_DeferredPass
�� -
=
��. /
$str
��0 ?
;
��? @
static
�� 
readonly
�� 
string
�� 
k_TileDepthInfo
�� .
=
��/ 0
$str
��1 B
;
��B C
static
�� 
readonly
�� 
string
�� !
k_DeferredTiledPass
�� 2
=
��3 4
$str
��5 T
;
��T U
static
�� 
readonly
�� 
string
�� #
k_DeferredStencilPass
�� 4
=
��5 6
$str
��7 S
;
��S T
static
�� 
readonly
�� 
string
�� 
k_DeferredFogPass
�� 0
=
��1 2
$str
��3 A
;
��A B
static
�� 
readonly
�� 
string
�� #
k_ClearStencilPartial
�� 4
=
��5 6
$str
��7 N
;
��N O
static
�� 
readonly
�� 
string
�� #
k_SetupLightConstants
�� 4
=
��5 6
$str
��7 N
;
��N O
static
�� 
readonly
�� 
float
��  
kStencilShapeGuard
�� 0
=
��1 2
$num
��3 ;
;
��; <
private
�� 
static
�� 
readonly
�� 
ProfilingSampler
��  0$
m_ProfilingSetupLights
��1 G
=
��H I
new
��J M
ProfilingSampler
��N ^
(
��^ _

��_ l
)
��l m
;
��m n
private
�� 
static
�� 
readonly
�� 
ProfilingSampler
��  0%
m_ProfilingDeferredPass
��1 H
=
��I J
new
��K N
ProfilingSampler
��O _
(
��_ `
k_DeferredPass
��` n
)
��n o
;
��o p
private
�� 
static
�� 
readonly
�� 
ProfilingSampler
��  0&
m_ProfilingTileDepthInfo
��1 I
=
��J K
new
��L O
ProfilingSampler
��P `
(
��` a
k_TileDepthInfo
��a p
)
��p q
;
��q r
private
�� 
static
�� 
readonly
�� 
ProfilingSampler
��  0,
m_ProfilingSetupLightConstants
��1 O
=
��P Q
new
��R U
ProfilingSampler
��V f
(
��f g#
k_SetupLightConstants
��g |
)
��| }
;
��} ~
internal
�� 
enum
�� 
GBufferHandles
�� $
{
�� 	
DepthAsColor
�� 
=
�� 
$num
�� 
,
�� 
Albedo
�� 
=
�� 
$num
�� 
,
�� 
SpecularMetallic
�� 
=
�� 
$num
��  
,
��  !
NormalSmoothness
�� 
=
�� 
$num
��  
,
��  !
Lighting
�� 
=
�� 
$num
�� 
,
�� 

ShadowMask
�� 
=
�� 
$num
�� 
,
�� 
Count
�� 
=
�� 
$num
�� 
}
�� 	
internal
�� 
int
�� 
GbufferDepthIndex
�� &
{
��' (
get
��) ,
{
��- .
return
��/ 5

��6 C
?
��D E
$num
��F G
:
��H I
-
��J K
$num
��K L
;
��L M
}
��N O
}
��P Q
internal
�� 
int
��  
GBufferAlbedoIndex
�� '
{
��( )
get
��* -
{
��. /
return
��0 6
GbufferDepthIndex
��7 H
+
��I J
$num
��K L
;
��L M
}
��N O
}
��P Q
internal
�� 
int
�� *
GBufferSpecularMetallicIndex
�� 1
{
��2 3
get
��4 7
{
��8 9
return
��: @ 
GBufferAlbedoIndex
��A S
+
��T U
$num
��V W
;
��W X
}
��Y Z
}
��[ \
internal
�� 
int
�� *
GBufferNormalSmoothnessIndex
�� 1
{
��2 3
get
��4 7
{
��8 9
return
��: @*
GBufferSpecularMetallicIndex
��A ]
+
��^ _
$num
��` a
;
��a b
}
��c d
}
��e f
internal
�� 
int
�� "
GBufferLightingIndex
�� )
{
��* +
get
��, /
{
��0 1
return
��2 8*
GBufferNormalSmoothnessIndex
��9 U
+
��V W
$num
��X Y
;
��Y Z
}
��[ \
}
��] ^
internal
�� 
int
�� 
GBufferShadowMask
�� &
{
��' (
get
��) ,
{
��- .
return
��/ 5

��6 C
?
��D E"
GBufferLightingIndex
��F Z
+
��[ \
$num
��] ^
:
��_ `
-
��a b
$num
��b c
;
��c d
}
��e f
}
��g h
internal
�� 
int
�� 
GBufferSliceCount
�� &
{
��' (
get
��) ,
{
��- .
return
��/ 5
$num
��6 7
+
��8 9
(
��: ;

��; H
?
��I J
$num
��K L
:
��M N
$num
��O P
)
��P Q
+
��R S
(
��T U

��U b
?
��c d
$num
��e f
:
��g h
$num
��i j
)
��j k
;
��k l
}
��m n
}
��o p
internal
�� 
GraphicsFormat
�� 
GetGBufferFormat
��  0
(
��0 1
int
��1 4
index
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
index
�� 
==
��  
GBufferAlbedoIndex
�� +
)
��+ ,
return
�� 
QualitySettings
�� &
.
��& '
activeColorSpace
��' 7
==
��8 :

ColorSpace
��; E
.
��E F
Linear
��F L
?
��M N
GraphicsFormat
��O ]
.
��] ^

��^ k
:
��l m
GraphicsFormat
��n |
.
��| }
R8G8B8A8_UNorm��} �
;��� �
else
�� 
if
�� 
(
�� 
index
�� 
==
�� *
GBufferSpecularMetallicIndex
�� :
)
��: ;
return
�� 
QualitySettings
�� &
.
��& '
activeColorSpace
��' 7
==
��8 :

ColorSpace
��; E
.
��E F
Linear
��F L
?
��M N
GraphicsFormat
��O ]
.
��] ^

��^ k
:
��l m
GraphicsFormat
��n |
.
��| }
R8G8B8A8_UNorm��} �
;��� �
else
�� 
if
�� 
(
�� 
index
�� 
==
�� *
GBufferNormalSmoothnessIndex
�� :
)
��: ;
return
�� 
this
�� 
.
�� $
AccurateGbufferNormals
�� 2
?
��3 4
GraphicsFormat
��5 C
.
��C D
R8G8B8A8_UNorm
��D R
:
��S T
GraphicsFormat
��U c
.
��c d
R8G8B8A8_SNorm
��d r
;
��r s
else
�� 
if
�� 
(
�� 
index
�� 
==
�� "
GBufferLightingIndex
�� 2
)
��2 3
return
�� 
GraphicsFormat
�� %
.
��% &
None
��& *
;
��* +
else
�� 
if
�� 
(
�� 
index
�� 
==
�� 
GbufferDepthIndex
�� /
)
��/ 0
return
�� 
GraphicsFormat
�� %
.
��% &

R32_SFloat
��& 0
;
��0 1
else
�� 
if
�� 
(
�� 
index
�� 
==
�� 
GBufferShadowMask
�� /
)
��/ 0
return
�� 
GraphicsFormat
�� %
.
��% &
R8G8B8A8_UNorm
��& 4
;
��4 5
else
�� 
return
�� 
GraphicsFormat
�� %
.
��% &
None
��& *
;
��* +
}
�� 	
internal
�� 
bool
�� 

�� #
{
��$ %
get
��& )
{
��* +
return
��, 2
this
��3 7
.
��7 8 
MixedLightingSetup
��8 J
==
��K M 
MixedLightingSetup
��N `
.
��` a
Subtractive
��a l
;
��l m
}
��n o
}
��p q
internal
�� 
bool
�� 

�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
internal
�� 
bool
�� 
HasDepthPrepass
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
internal
�� 
bool
�� 
	IsOverlay
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
internal
�� 
bool
�� $
AccurateGbufferNormals
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
internal
�� 
bool
�� "
TiledDeferredShading
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
internal
��  
MixedLightingSetup
�� # 
MixedLightingSetup
��$ 6
{
��7 8
get
��9 <
;
��< =
set
��> A
;
��A B
}
��C D
internal
�� 
bool
�� 
UseJobSystem
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
internal
�� 
int
�� 
RenderWidth
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
internal
�� 
int
�� 
RenderHeight
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
internal
��  
RenderTargetHandle
�� #
[
��# $
]
��$ % 
GbufferAttachments
��& 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
internal
��  
RenderTargetHandle
�� #
DepthAttachment
��$ 3
{
��4 5
get
��6 9
;
��9 :
set
��; >
;
��> ?
}
��@ A
internal
��  
RenderTargetHandle
�� #
DepthCopyTexture
��$ 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
internal
��  
RenderTargetHandle
�� #
DepthInfoTexture
��$ 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
internal
��  
RenderTargetHandle
�� #"
TileDepthInfoTexture
��$ 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
internal
�� $
RenderTargetIdentifier
�� '
[
��' (
]
��( )*
GbufferAttachmentIdentifiers
��* F
{
��G H
get
��I L
;
��L M
set
��N Q
;
��Q R
}
��S T
internal
�� $
RenderTargetIdentifier
�� ''
DepthAttachmentIdentifier
��( A
{
��B C
get
��D G
;
��G H
set
��I L
;
��L M
}
��N O
internal
�� $
RenderTargetIdentifier
�� '(
DepthCopyTextureIdentifier
��( B
{
��C D
get
��E H
;
��H I
set
��J M
;
��M N
}
��O P
internal
�� $
RenderTargetIdentifier
�� '(
DepthInfoTextureIdentifier
��( B
{
��C D
get
��E H
;
��H I
set
��J M
;
��M N
}
��O P
internal
�� $
RenderTargetIdentifier
�� ',
TileDepthInfoTextureIdentifier
��( F
{
��G H
get
��I L
;
��L M
set
��N Q
;
��Q R
}
��S T
int
�� !
m_CachedRenderWidth
�� 
=
��  !
$num
��" #
;
��# $
int
�� "
m_CachedRenderHeight
��  
=
��! "
$num
��# $
;
��$ %
	Matrix4x4
�� &
m_CachedProjectionMatrix
�� *
;
��* +

�� 
[
�� 
]
�� 
m_Tilers
��  
;
��  !
int
�� 
[
�� 
]
�� 
m_TileDataCapacities
�� "
;
��" #
bool
��  
m_HasTileVisLights
��
;
��  
NativeArray
�� 
<
�� 
ushort
�� 
>
��  
m_stencilVisLights
�� .
;
��. /
NativeArray
�� 
<
�� 
ushort
�� 
>
�� &
m_stencilVisLightOffsets
�� 4
;
��4 5.
 AdditionalLightsShadowCasterPass
�� (0
"m_AdditionalLightsShadowCasterPass
��) K
;
��K L
Mesh
�� 
m_SphereMesh
��
;
�� 
Mesh
�� 
m_HemisphereMesh
��
;
�� 
Mesh
�� 
m_FullscreenMesh
��
;
�� 
int
�� %
m_MaxDepthRangePerBatch
�� #
;
��# $
int
��  
m_MaxTilesPerBatch
�� 
;
�� 
int
�� (
m_MaxPunctualLightPerBatch
�� &
;
��& '
int
�� *
m_MaxRelLightIndicesPerBatch
�� (
;
��( )
Material
�� %
m_TileDepthInfoMaterial
�� (
;
��( )
Material
�� $
m_TileDeferredMaterial
�� '
;
��' (
Material
�� '
m_StencilDeferredMaterial
�� *
;
��* +
	Matrix4x4
�� 
[
�� 
]
�� 
m_ScreenToWorld
�� #
=
��$ %
new
��& )
	Matrix4x4
��* 3
[
��3 4
$num
��4 5
]
��5 6
;
��6 7
ProfilingSampler
�� 1
#m_ProfilingSamplerDeferredTiledPass
�� <
=
��= >
new
��? B
ProfilingSampler
��C S
(
��S T!
k_DeferredTiledPass
��T g
)
��g h
;
��h i
ProfilingSampler
�� 3
%m_ProfilingSamplerDeferredStencilPass
�� >
=
��? @
new
��A D
ProfilingSampler
��E U
(
��U V#
k_DeferredStencilPass
��V k
)
��k l
;
��l m
ProfilingSampler
�� /
!m_ProfilingSamplerDeferredFogPass
�� :
=
��; <
new
��= @
ProfilingSampler
��A Q
(
��Q R
k_DeferredFogPass
��R c
)
��c d
;
��d e
ProfilingSampler
�� 7
)m_ProfilingSamplerClearStencilPartialPass
�� B
=
��C D
new
��E H
ProfilingSampler
��I Y
(
��Y Z#
k_ClearStencilPartial
��Z o
)
��o p
;
��p q
internal
�� 
DeferredLights
�� 
(
��  
Material
��  (#
tileDepthInfoMaterial
��) >
,
��> ?
Material
��@ H"
tileDeferredMaterial
��I ]
,
��] ^
Material
��_ g%
stencilDeferredMaterial
��h 
)�� �
{
�� 	
DeferredConfig
�� 
.
�� 
IsOpenGL
�� #
=
��$ %

SystemInfo
��& 0
.
��0 1 
graphicsDeviceType
��1 C
==
��D F 
GraphicsDeviceType
��G Y
.
��Y Z

OpenGLCore
��Z d
||
��# %

SystemInfo
��& 0
.
��0 1 
graphicsDeviceType
��1 C
==
��D F 
GraphicsDeviceType
��G Y
.
��Y Z
	OpenGLES2
��Z c
||
��# %

SystemInfo
��& 0
.
��0 1 
graphicsDeviceType
��1 C
==
��D F 
GraphicsDeviceType
��G Y
.
��Y Z
	OpenGLES3
��Z c
;
��c d%
m_TileDepthInfoMaterial
�� #
=
��$ %#
tileDepthInfoMaterial
��& ;
;
��; <$
m_TileDeferredMaterial
�� "
=
��# $"
tileDeferredMaterial
��% 9
;
��9 :'
m_StencilDeferredMaterial
�� %
=
��& '%
stencilDeferredMaterial
��( ?
;
��? @
if
�� 
(
�� $
m_TileDeferredMaterial
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >
_LitStencilRef
��> L
,
��L M
(
��N O
int
��O R
)
��R S
StencilUsage
��S _
.
��_ `
MaterialLit
��` k
)
��k l
;
��l m$
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >!
_LitStencilReadMask
��> Q
,
��Q R
(
��S T
int
��T W
)
��W X
StencilUsage
��X d
.
��d e
MaterialMask
��e q
)
��q r
;
��r s$
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >"
_LitStencilWriteMask
��> R
,
��R S
$num
��T U
)
��U V
;
��V W$
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >"
_SimpleLitStencilRef
��> R
,
��R S
(
��T U
int
��U X
)
��X Y
StencilUsage
��Y e
.
��e f
MaterialSimpleLit
��f w
)
��w x
;
��x y$
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >'
_SimpleLitStencilReadMask
��> W
,
��W X
(
��Y Z
int
��Z ]
)
��] ^
StencilUsage
��^ j
.
��j k
MaterialMask
��k w
)
��w x
;
��x y$
m_TileDeferredMaterial
�� &
.
��& '
SetInt
��' -
(
��- .
ShaderConstants
��. =
.
��= >(
_SimpleLitStencilWriteMask
��> X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
}
�� 
if
�� 
(
�� '
m_StencilDeferredMaterial
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A
_StencilRef
��A L
,
��L M
(
��N O
int
��O R
)
��R S
StencilUsage
��S _
.
��_ `

��` m
)
��m n
;
��n o'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A
_StencilReadMask
��A Q
,
��Q R
(
��S T
int
��T W
)
��W X
StencilUsage
��X d
.
��d e
MaterialMask
��e q
)
��q r
;
��r s'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A
_StencilWriteMask
��A R
,
��R S
(
��T U
int
��U X
)
��X Y
StencilUsage
��Y e
.
��e f
StencilLight
��f r
)
��r s
;
��s t'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A$
_LitPunctualStencilRef
��A W
,
��W X
(
��Y Z
int
��Z ]
)
��] ^
StencilUsage
��^ j
.
��j k
StencilLight
��k w
|
��x y
(
��z {
int
��{ ~
)
��~ 
StencilUsage�� �
.��� �
MaterialLit��� �
)��� �
;��� �'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A)
_LitPunctualStencilReadMask
��A \
,
��\ ]
(
��^ _
int
��_ b
)
��b c
StencilUsage
��c o
.
��o p
StencilLight
��p |
|
��} ~
(�� �
int��� �
)��� �
StencilUsage��� �
.��� �
MaterialMask��� �
)��� �
;��� �'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A*
_LitPunctualStencilWriteMask
��A ]
,
��] ^
(
��_ `
int
��` c
)
��c d
StencilUsage
��d p
.
��p q
StencilLight
��q }
)
��} ~
;
��~ '
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A*
_SimpleLitPunctualStencilRef
��A ]
,
��] ^
(
��_ `
int
��` c
)
��c d
StencilUsage
��d p
.
��p q
StencilLight
��q }
|
��~ 
(��� �
int��� �
)��� �
StencilUsage��� �
.��� �!
MaterialSimpleLit��� �
)��� �
;��� �'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A/
!_SimpleLitPunctualStencilReadMask
��A b
,
��b c
(
��d e
int
��e h
)
��h i
StencilUsage
��i u
.
��u v
StencilLight��v �
|��� �
(��� �
int��� �
)��� �
StencilUsage��� �
.��� �
MaterialMask��� �
)��� �
;��� �'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A0
"_SimpleLitPunctualStencilWriteMask
��A c
,
��c d
(
��e f
int
��f i
)
��i j
StencilUsage
��j v
.
��v w
StencilLight��w �
)��� �
;��� �'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A
_LitDirStencilRef
��A R
,
��R S
(
��T U
int
��U X
)
��X Y
StencilUsage
��Y e
.
��e f
MaterialLit
��f q
)
��q r
;
��r s'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A$
_LitDirStencilReadMask
��A W
,
��W X
(
��Y Z
int
��Z ]
)
��] ^
StencilUsage
��^ j
.
��j k
MaterialMask
��k w
)
��w x
;
��x y'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A%
_LitDirStencilWriteMask
��A X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A%
_SimpleLitDirStencilRef
��A X
,
��X Y
(
��Z [
int
��[ ^
)
��^ _
StencilUsage
��_ k
.
��k l
MaterialSimpleLit
��l }
)
��} ~
;
��~ '
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A*
_SimpleLitDirStencilReadMask
��A ]
,
��] ^
(
��_ `
int
��` c
)
��c d
StencilUsage
��d p
.
��p q
MaterialMask
��q }
)
��} ~
;
��~ '
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A+
_SimpleLitDirStencilWriteMask
��A ^
,
��^ _
$num
��` a
)
��a b
;
��b c'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A
_ClearStencilRef
��A Q
,
��Q R
$num
��S T
)
��T U
;
��U V'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A#
_ClearStencilReadMask
��A V
,
��V W
(
��X Y
int
��Y \
)
��\ ]
StencilUsage
��] i
.
��i j
MaterialMask
��j v
)
��v w
;
��w x'
m_StencilDeferredMaterial
�� )
.
��) *
SetInt
��* 0
(
��0 1
ShaderConstants
��1 @
.
��@ A$
_ClearStencilWriteMask
��A W
,
��W X
(
��Y Z
int
��Z ]
)
��] ^
StencilUsage
��^ j
.
��j k
MaterialMask
��k w
)
��w x
;
��x y
}
�� 
m_MaxDepthRangePerBatch
�� #
=
��$ %
(
��& '
DeferredConfig
��' 5
.
��5 6%
UseCBufferForDepthRange
��6 M
?
��N O
DeferredConfig
��P ^
.
��^ _#
kPreferredCBufferSize
��_ t
:
��u v
DeferredConfig��w �
.��� �.
kPreferredStructuredBufferSize��� �
)��� �
/��� �
sizeof��� �
(��� �
uint��� �
)��� �
;��� � 
m_MaxTilesPerBatch
�� 
=
��  
(
��! "
DeferredConfig
��" 0
.
��0 1#
UseCBufferForTileList
��1 F
?
��G H
DeferredConfig
��I W
.
��W X#
kPreferredCBufferSize
��X m
:
��n o
DeferredConfig
��p ~
.
��~ -
kPreferredStructuredBufferSize�� �
)��� �
/��� �
System��� �
.��� �
Runtime��� �
.��� �
InteropServices��� �
.��� �
Marshal��� �
.��� �
SizeOf��� �
(��� �
typeof��� �
(��� �
TileData��� �
)��� �
)��� �
;��� �(
m_MaxPunctualLightPerBatch
�� &
=
��' (
(
��) *
DeferredConfig
��* 8
.
��8 9$
UseCBufferForLightData
��9 O
?
��P Q
DeferredConfig
��R `
.
��` a#
kPreferredCBufferSize
��a v
:
��w x
DeferredConfig��y �
.��� �.
kPreferredStructuredBufferSize��� �
)��� �
/��� �
System��� �
.��� �
Runtime��� �
.��� �
InteropServices��� �
.��� �
Marshal��� �
.��� �
SizeOf��� �
(��� �
typeof��� �
(��� �!
PunctualLightData��� �
)��� �
)��� �
;��� �*
m_MaxRelLightIndicesPerBatch
�� (
=
��) *
(
��+ ,
DeferredConfig
��, :
.
��: ;$
UseCBufferForLightList
��; Q
?
��R S
DeferredConfig
��T b
.
��b c#
kPreferredCBufferSize
��c x
:
��y z
DeferredConfig��{ �
.��� �.
kPreferredStructuredBufferSize��� �
)��� �
/��� �
sizeof��� �
(��� �
uint��� �
)��� �
;��� �
m_Tilers
�� 
=
�� 
new
�� 

�� (
[
��( )
DeferredConfig
��) 7
.
��7 8
kTilerDepth
��8 C
]
��C D
;
��D E"
m_TileDataCapacities
��  
=
��! "
new
��# &
int
��' *
[
��* +
DeferredConfig
��+ 9
.
��9 :
kTilerDepth
��: E
]
��E F
;
��F G
for
�� 
(
�� 
int
�� 

tilerLevel
�� 
=
��  !
$num
��" #
;
��# $

tilerLevel
��% /
<
��0 1
DeferredConfig
��2 @
.
��@ A
kTilerDepth
��A L
;
��L M
++
��N P

tilerLevel
��P Z
)
��Z [
{
�� 
int
�� 
scale
�� 
=
�� 
(
�� 
int
��  
)
��  !
Mathf
��! &
.
��& '
Pow
��' *
(
��* +
DeferredConfig
��+ 9
.
��9 : 
kTilerSubdivisions
��: L
,
��L M

tilerLevel
��N X
)
��X Y
;
��Y Z
m_Tilers
�� 
[
�� 

tilerLevel
�� #
]
��# $
=
��% &
new
��' *

��+ 8
(
��8 9
DeferredConfig
�� "
.
��" #
kTilePixelWidth
��# 2
*
��3 4
scale
��5 :
,
��: ;
DeferredConfig
�� "
.
��" #
kTilePixelHeight
��# 3
*
��4 5
scale
��6 ;
,
��; <
DeferredConfig
�� "
.
��" #
kAvgLightPerTile
��# 3
*
��4 5
scale
��6 ;
*
��< =
scale
��> C
,
��C D

tilerLevel
�� 
)
�� 
;
�� "
m_TileDataCapacities
�� $
[
��$ %

tilerLevel
��% /
]
��/ 0
=
��1 2
$num
��3 4
;
��4 5
}
�� 
this
�� 
.
�� $
AccurateGbufferNormals
�� '
=
��( )
true
��* .
;
��. /
this
�� 
.
�� "
TiledDeferredShading
�� %
=
��& '
true
��( ,
;
��, -
this
�� 
.
�� 
UseJobSystem
�� 
=
�� 
true
��  $
;
��$ % 
m_HasTileVisLights
�� 
=
��  
false
��! &
;
��& '
}
�� 	
internal
�� 
ref
�� 

�� "
GetTiler
��# +
(
��+ ,
int
��, /
i
��0 1
)
��1 2
{
�� 	
return
�� 
ref
�� 
m_Tilers
�� 
[
��  
i
��  !
]
��! "
;
��" #
}
�� 	
internal
�� 
void
�� 
SetupLights
�� !
(
��! "%
ScriptableRenderContext
��" 9
context
��: A
,
��A B
ref
��C F

��G T

��U b
)
��b c
{
�� 	
Profiler
�� 
.
�� 
BeginSample
��  
(
��  !

��! .
)
��. /
;
��/ 0 
DeferredShaderData
�� 
.
�� 
instance
�� '
.
��' (
ResetBuffers
��( 4
(
��4 5
)
��5 6
;
��6 7
this
�� 
.
�� 
RenderWidth
�� 
=
�� 

�� ,
.
��, -

cameraData
��- 7
.
��7 8$
cameraTargetDescriptor
��8 N
.
��N O
width
��O T
;
��T U
this
�� 
.
�� 
RenderHeight
�� 
=
�� 

��  -
.
��- .

cameraData
��. 8
.
��8 9$
cameraTargetDescriptor
��9 O
.
��O P
height
��P V
;
��V W
if
�� 
(
�� 
this
�� 
.
�� "
TiledDeferredShading
�� )
)
��) *
{
�� 
if
�� 
(
�� !
m_CachedRenderWidth
�� '
!=
��( *

��+ 8
.
��8 9

cameraData
��9 C
.
��C D$
cameraTargetDescriptor
��D Z
.
��Z [
width
��[ `
||
�� "
m_CachedRenderHeight
�� +
!=
��, .

��/ <
.
��< =

cameraData
��= G
.
��G H$
cameraTargetDescriptor
��H ^
.
��^ _
height
��_ e
||
�� &
m_CachedProjectionMatrix
�� /
!=
��0 2

��3 @
.
��@ A

cameraData
��A K
.
��K L
camera
��L R
.
��R S
projectionMatrix
��S c
)
��c d
{
�� !
m_CachedRenderWidth
�� '
=
��( )

��* 7
.
��7 8

cameraData
��8 B
.
��B C$
cameraTargetDescriptor
��C Y
.
��Y Z
width
��Z _
;
��_ `"
m_CachedRenderHeight
�� (
=
��) *

��+ 8
.
��8 9

cameraData
��9 C
.
��C D$
cameraTargetDescriptor
��D Z
.
��Z [
height
��[ a
;
��a b&
m_CachedProjectionMatrix
�� ,
=
��- .

��/ <
.
��< =

cameraData
��= G
.
��G H
camera
��H N
.
��N O
projectionMatrix
��O _
;
��_ `
for
�� 
(
�� 
int
�� 

tilerIndex
�� '
=
��( )
$num
��* +
;
��+ ,

tilerIndex
��- 7
<
��8 9
m_Tilers
��: B
.
��B C
Length
��C I
;
��I J
++
��K M

tilerIndex
��M W
)
��W X
{
�� 
m_Tilers
��  
[
��  !

tilerIndex
��! +
]
��+ ,
.
��, -
PrecomputeTiles
��- <
(
��< =

��= J
.
��J K

cameraData
��K U
.
��U V
camera
��V \
.
��\ ]
projectionMatrix
��] m
,
��m n

�� )
.
��) *

cameraData
��* 4
.
��4 5
camera
��5 ;
.
��; <
orthographic
��< H
,
��H I!
m_CachedRenderWidth
��J ]
,
��] ^"
m_CachedRenderHeight
��_ s
)
��s t
;
��t u
}
�� 
}
�� 
for
�� 
(
�� 
int
�� 

tilerIndex
�� #
=
��$ %
$num
��& '
;
��' (

tilerIndex
��) 3
<
��4 5
m_Tilers
��6 >
.
��> ?
Length
��? E
;
��E F
++
��G I

tilerIndex
��I S
)
��S T
m_Tilers
�� 
[
�� 

tilerIndex
�� '
]
��' (
.
��( )
Setup
��) .
(
��. /"
m_TileDataCapacities
��/ C
[
��C D

tilerIndex
��D N
]
��N O
)
��O P
;
��P Q
}
�� 
NativeArray
�� 
<
�� 

�� %
.
��% &
PrePunctualLight
��& 6
>
��6 7
prePunctualLights
��8 I
;
��I J
PrecomputeLights
�� 
(
�� 
out
�� 
prePunctualLights
�� %
,
��% &
out
��  
m_stencilVisLights
�� &
,
��& '
out
�� &
m_stencilVisLightOffsets
�� ,
,
��, -
ref
�� 

�� !
.
��! "
	lightData
��" +
.
��+ ,

��, 9
,
��9 :

�� 
.
�� 
	lightData
�� '
.
��' (#
additionalLightsCount
��( =
!=
��> @
$num
��A B
||
��C E

��F S
.
��S T
	lightData
��T ]
.
��] ^
mainLightIndex
��^ l
>=
��m o
$num
��p q
,
��q r

�� 
.
�� 

cameraData
�� (
.
��( )
camera
��) /
.
��/ 0!
worldToCameraMatrix
��0 C
,
��C D

�� 
.
�� 

cameraData
�� (
.
��( )
camera
��) /
.
��/ 0
orthographic
��0 <
,
��< =

�� 
.
�� 

cameraData
�� (
.
��( )
camera
��) /
.
��/ 0

��0 =
)
�� 
;
��
{
�� 

�� 
cmd
�� !
=
��" #
CommandBufferPool
��$ 5
.
��5 6
Get
��6 9
(
��9 :
)
��: ;
;
��; <
using
�� 
(
�� 
new
�� 
ProfilingScope
�� )
(
��) *
cmd
��* -
,
��- .,
m_ProfilingSetupLightConstants
��/ M
)
��M N
)
��N O
{
�� '
SetupShaderLightConstants
�� -
(
��- .
cmd
��. 1
,
��1 2
ref
��3 6

��7 D
)
��D E
;
��E F
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
cmd
��) ,
,
��, -"
ShaderKeywordStrings
��. B
.
��B C"
_GBUFFER_NORMALS_OCT
��C W
,
��W X
this
��Y ]
.
��] ^$
AccurateGbufferNormals
��^ t
)
��t u
;
��u v
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
cmd
��) ,
,
��, -"
ShaderKeywordStrings
��. B
.
��B C&
MixedLightingSubtractive
��C [
,
��[ \

��] j
.
��j k
	lightData
��k t
.
��t u$
supportsMixedLighting��u �
&&��� �
this��� �
.��� �"
MixedLightingSetup��� �
==��� �"
MixedLightingSetup��� �
.��� �
Subtractive��� �
)��� �
;��� �
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� ,
(
��, -
cmd
��- 0
)
��0 1
;
��1 2
CommandBufferPool
�� !
.
��! "
Release
��" )
(
��) *
cmd
��* -
)
��- .
;
��. /
}
�� 
if
�� 
(
�� 
this
�� 
.
�� "
TiledDeferredShading
�� )
)
��) *
{
�� 

SortLights
�� 
(
�� 
ref
�� 
prePunctualLights
�� 0
)
��0 1
;
��1 2
NativeArray
�� 
<
�� 
ushort
�� "
>
��" #
defaultIndices
��$ 2
=
��3 4
new
��5 8
NativeArray
��9 D
<
��D E
ushort
��E K
>
��K L
(
��L M
prePunctualLights
��M ^
.
��^ _
Length
��_ e
,
��e f
	Allocator
��g p
.
��p q
Temp
��q u
,
��u v!
NativeArrayOptions��w �
.��� �#
UninitializedMemory��� �
)��� �
;��� �
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
prePunctualLights
��$ 5
.
��5 6
Length
��6 <
;
��< =
++
��> @
i
��@ A
)
��A B
defaultIndices
�� "
[
��" #
i
��# $
]
��$ %
=
��& '
(
��( )
ushort
��) /
)
��/ 0
i
��0 1
;
��1 2
NativeArray
�� 
<
�� 
uint
��  
>
��  !
defaultHeaders
��" 0
=
��1 2
new
��3 6
NativeArray
��7 B
<
��B C
uint
��C G
>
��G H
(
��H I
$num
��I J
,
��J K
	Allocator
��L U
.
��U V
Temp
��V Z
,
��Z [ 
NativeArrayOptions
��\ n
.
��n o"
UninitializedMemory��o �
)��� �
;��� �
defaultHeaders
�� 
[
�� 
$num
��  
]
��  !
=
��" #
$num
��$ %
;
��% &
defaultHeaders
�� 
[
�� 
$num
��  
]
��  !
=
��" #
(
��$ %
uint
��% )
)
��) *
prePunctualLights
��* ;
.
��; <
Length
��< B
;
��B C
ref
�� 

�� !

��" /
=
��0 1
ref
��2 5
m_Tilers
��6 >
[
��> ?
m_Tilers
��? G
.
��G H
Length
��H N
-
��O P
$num
��Q R
]
��R S
;
��S T
if
�� 
(
�� 
m_Tilers
�� 
.
�� 
Length
�� #
!=
��$ &
$num
��' (
)
��( )
{
�� 
NativeArray
�� 
<
��  
	JobHandle
��  )
>
��) *

jobHandles
��+ 5
=
��6 7
new
��8 ;
NativeArray
��< G
<
��G H
	JobHandle
��H Q
>
��Q R
(
��R S
)
��S T
;
��T U
int
�� 
	jobOffset
�� !
=
��" #
$num
��$ %
;
��% &
int
�� 
jobCount
��  
=
��! "
$num
��# $
;
��$ %
if
�� 
(
�� 
this
�� 
.
�� 
UseJobSystem
�� )
)
��) *
{
�� 
int
�� 

�� )
=
��* +
$num
��, -
;
��- .
for
�� 
(
�� 
int
��  
t
��! "
=
��# $
m_Tilers
��% -
.
��- .
Length
��. 4
-
��5 6
$num
��7 8
;
��8 9
t
��: ;
>
��< =
$num
��> ?
;
��? @
--
��A C
t
��C D
)
��D E
{
�� 
ref
�� 

��  -
coarseTiler
��. 9
=
��: ;
ref
��< ?
m_Tilers
��@ H
[
��H I
t
��I J
]
��J K
;
��K L

�� )
+=
��* ,
coarseTiler
��- 8
.
��8 9

TileXCount
��9 C
*
��D E
coarseTiler
��F Q
.
��Q R

TileYCount
��R \
;
��\ ]
}
�� 

jobHandles
�� "
=
��# $
new
��% (
NativeArray
��) 4
<
��4 5
	JobHandle
��5 >
>
��> ?
(
��? @

��@ M
,
��M N
	Allocator
��O X
.
��X Y
Temp
��Y ]
,
��] ^ 
NativeArrayOptions
��_ q
.
��q r"
UninitializedMemory��r �
)��� �
;��� �
}
�� 

�� !
coarsestJob
��" -
=
��. /
new
��0 3

��4 A
{
�� 
tiler
�� 
=
�� 

��  -
,
��- .
prePunctualLights
�� )
=
��* +
prePunctualLights
��, =
,
��= >
coarseTiles
�� #
=
��$ %
defaultIndices
��& 4
,
��4 5
coarseTileHeaders
�� )
=
��* +
defaultHeaders
��, :
,
��: ; 
coarseHeaderOffset
�� *
=
��+ ,
$num
��- .
,
��. /
istart
�� 
=
��  
$num
��! "
,
��" #
iend
�� 
=
�� 

�� ,
.
��, -

TileXCount
��- 7
,
��7 8
jstart
�� 
=
��  
$num
��! "
,
��" #
jend
�� 
=
�� 

�� ,
.
��, -

TileYCount
��- 7
,
��7 8
}
�� 
;
�� 
if
�� 
(
�� 
this
�� 
.
�� 
UseJobSystem
�� )
)
��) *
{
�� 

jobHandles
�� "
[
��" #
jobCount
��# +
++
��+ -
]
��- .
=
��/ 0
coarsestJob
��1 <
.
��< =
Schedule
��= E
(
��E F
)
��F G
;
��G H
	JobHandle
�� !
.
��! "!
ScheduleBatchedJobs
��" 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
else
�� 
coarsestJob
�� #
.
��# $
Execute
��$ +
(
��+ ,
)
��, -
;
��- .
for
�� 
(
�� 
int
�� 
t
�� 
=
��  
m_Tilers
��! )
.
��) *
Length
��* 0
-
��1 2
$num
��3 4
;
��4 5
t
��6 7
>
��8 9
$num
��: ;
;
��; <
--
��= ?
t
��? @
)
��@ A
{
�� 
ref
�� 

�� )
	fineTiler
��* 3
=
��4 5
ref
��6 9
m_Tilers
��: B
[
��B C
t
��C D
-
��E F
$num
��G H
]
��H I
;
��I J
ref
�� 

�� )
coarseTiler
��* 5
=
��6 7
ref
��8 ;
m_Tilers
��< D
[
��D E
t
��E F
]
��F G
;
��G H
int
�� 
fineTileXCount
�� *
=
��+ ,
	fineTiler
��- 6
.
��6 7

TileXCount
��7 A
;
��A B
int
�� 
fineTileYCount
�� *
=
��+ ,
	fineTiler
��- 6
.
��6 7

TileYCount
��7 A
;
��A B
int
�� 
coarseTileXCount
�� ,
=
��- .
coarseTiler
��/ :
.
��: ;

TileXCount
��; E
;
��E F
int
�� 
coarseTileYCount
�� ,
=
��- .
coarseTiler
��/ :
.
��: ;

TileYCount
��; E
;
��E F
int
�� 
subdivX
�� #
=
��$ %
(
��& '
t
��' (
==
��) +
m_Tilers
��, 4
.
��4 5
Length
��5 ;
-
��< =
$num
��> ?
)
��? @
?
��A B
coarseTileXCount
��C S
:
��T U
DeferredConfig
��V d
.
��d e 
kTilerSubdivisions
��e w
;
��w x
int
�� 
subdivY
�� #
=
��$ %
(
��& '
t
��' (
==
��) +
m_Tilers
��, 4
.
��4 5
Length
��5 ;
-
��< =
$num
��> ?
)
��? @
?
��A B
coarseTileYCount
��C S
:
��T U
DeferredConfig
��V d
.
��d e 
kTilerSubdivisions
��e w
;
��w x
int
�� #
superCoarseTileXCount
�� 1
=
��2 3
(
��4 5
coarseTileXCount
��5 E
+
��F G
subdivX
��H O
-
��P Q
$num
��R S
)
��S T
/
��U V
subdivX
��W ^
;
��^ _
int
�� #
superCoarseTileYCount
�� 1
=
��2 3
(
��4 5
coarseTileYCount
��5 E
+
��F G
subdivY
��H O
-
��P Q
$num
��R S
)
��S T
/
��U V
subdivY
��W ^
;
��^ _
NativeArray
�� #
<
��# $
ushort
��$ *
>
��* +
coarseTiles
��, 7
=
��8 9
coarseTiler
��: E
.
��E F
Tiles
��F K
;
��K L
NativeArray
�� #
<
��# $
uint
��$ (
>
��( )
coarseTileHeaders
��* ;
=
��< =
coarseTiler
��> I
.
��I J
TileHeaders
��J U
;
��U V
int
�� 
	fineStepX
�� %
=
��& '
coarseTiler
��( 3
.
��3 4
TilePixelWidth
��4 B
/
��C D
	fineTiler
��E N
.
��N O
TilePixelWidth
��O ]
;
��] ^
int
�� 
	fineStepY
�� %
=
��& '
coarseTiler
��( 3
.
��3 4
TilePixelHeight
��4 C
/
��D E
	fineTiler
��F O
.
��O P
TilePixelHeight
��P _
;
��_ `
for
�� 
(
�� 
int
��  
j
��! "
=
��# $
$num
��% &
;
��& '
j
��( )
<
��* +
coarseTileYCount
��, <
;
��< =
++
��> @
j
��@ A
)
��A B
for
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +
coarseTileXCount
��, <
;
��< =
++
��> @
i
��@ A
)
��A B
{
�� 
int
�� 
fine_istart
��  +
=
��, -
i
��. /
*
��0 1
	fineStepX
��2 ;
;
��; <
int
�� 
fine_jstart
��  +
=
��, -
j
��. /
*
��0 1
	fineStepY
��2 ;
;
��; <
int
�� 
	fine_iend
��  )
=
��* +
Mathf
��, 1
.
��1 2
Min
��2 5
(
��5 6
fine_istart
��6 A
+
��B C
	fineStepX
��D M
,
��M N
fineTileXCount
��O ]
)
��] ^
;
��^ _
int
�� 
	fine_jend
��  )
=
��* +
Mathf
��, 1
.
��1 2
Min
��2 5
(
��5 6
fine_jstart
��6 A
+
��B C
	fineStepY
��D M
,
��M N
fineTileYCount
��O ]
)
��] ^
;
��^ _
int
��  
coarseHeaderOffset
��  2
=
��3 4
coarseTiler
��5 @
.
��@ A!
GetTileHeaderOffset
��A T
(
��T U
i
��U V
,
��V W
j
��X Y
)
��Y Z
;
��Z [

�� )
job
��* -
=
��. /
new
��0 3

��4 A
{
�� 
tiler
��  %
=
��& '
m_Tilers
��( 0
[
��0 1
t
��1 2
-
��2 3
$num
��3 4
]
��4 5
,
��5 6
prePunctualLights
��  1
=
��2 3
prePunctualLights
��4 E
,
��E F
coarseTiles
��  +
=
��, -
coarseTiles
��. 9
,
��9 :
coarseTileHeaders
��  1
=
��2 3
coarseTileHeaders
��4 E
,
��E F 
coarseHeaderOffset
��  2
=
��3 4 
coarseHeaderOffset
��5 G
,
��G H
istart
��  &
=
��' (
fine_istart
��) 4
,
��4 5
iend
��  $
=
��% &
	fine_iend
��' 0
,
��0 1
jstart
��  &
=
��' (
fine_jstart
��) 4
,
��4 5
jend
��  $
=
��% &
	fine_jend
��' 0
,
��0 1
}
�� 
;
�� 
if
�� 
(
��  
this
��  $
.
��$ %
UseJobSystem
��% 1
)
��1 2

jobHandles
��  *
[
��* +
jobCount
��+ 3
++
��3 5
]
��5 6
=
��7 8
job
��9 <
.
��< =
Schedule
��= E
(
��E F

jobHandles
��F P
[
��P Q
	jobOffset
��Q Z
+
��[ \
(
��] ^
i
��^ _
/
��` a
subdivX
��b i
)
��i j
+
��k l
(
��m n
j
��n o
/
��p q
subdivY
��r y
)
��y z
*
��{ |$
superCoarseTileXCount��} �
]��� �
)��� �
;��� �
else
��  
job
��  #
.
��# $
Execute
��$ +
(
��+ ,
)
��, -
;
��- .
}
�� 
	jobOffset
�� !
+=
��" $#
superCoarseTileXCount
��% :
*
��; <#
superCoarseTileYCount
��= R
;
��R S
}
�� 
if
�� 
(
�� 
this
�� 
.
�� 
UseJobSystem
�� )
)
��) *
{
�� 
	JobHandle
�� !
.
��! "
CompleteAll
��" -
(
��- .

jobHandles
��. 8
)
��8 9
;
��9 :

jobHandles
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
}
�� 
}
�� 
else
�� 
{
�� 

�� !
.
��! "
CullFinalLights
��" 1
(
��1 2
ref
�� 
prePunctualLights
�� -
,
��- .
ref
�� 
defaultIndices
�� *
,
��* +
$num
��, -
,
��- .
prePunctualLights
��/ @
.
��@ A
Length
��A G
,
��G H
$num
�� 
,
�� 

�� (
.
��( )

TileXCount
��) 3
,
��3 4
$num
��5 6
,
��6 7

��8 E
.
��E F

TileYCount
��F P
)
�� 
;
�� 
}
�� 
defaultIndices
�� 
.
�� 
Dispose
�� &
(
��& '
)
��' (
;
��( )
defaultHeaders
�� 
.
�� 
Dispose
�� &
(
��& '
)
��' (
;
��( )
}
�� 
if
�� 
(
�� 
prePunctualLights
�� !
.
��! "
	IsCreated
��" +
)
��+ ,
prePunctualLights
�� !
.
��! "
Dispose
��" )
(
��) *
)
��* +
;
��+ ,
Profiler
�� 
.
�� 
	EndSample
�� 
(
�� 
)
��  
;
��  !
}
�� 	
public
�� 
void
�� &
ResolveMixedLightingMode
�� ,
(
��, -
ref
��- 0

��1 >

��? L
)
��L M
{
�� 	
this
�� 
.
��  
MixedLightingSetup
�� #
=
��$ % 
MixedLightingSetup
��& 8
.
��8 9
None
��9 =
;
��= >
if
�� 
(
�� 
!
�� 

�� 
.
�� 
	lightData
�� (
.
��( )#
supportsMixedLighting
��) >
)
��> ?
return
�� 
;
�� 
NativeArray
�� 
<
�� 
VisibleLight
�� $
>
��$ %

��& 3
=
��4 5

��6 C
.
��C D
	lightData
��D M
.
��M N

��N [
;
��[ \
for
�� 
(
�� 
int
�� 

lightIndex
�� 
=
��  !
$num
��" #
;
��# $

lightIndex
��% /
<
��0 1

��2 ?
.
��? @
	lightData
��@ I
.
��I J

��J W
.
��W X
Length
��X ^
;
��^ _
++
��` b

lightIndex
��b l
)
��l m
{
�� 
Light
�� 
light
�� 
=
�� 

�� +
[
��+ ,

lightIndex
��, 6
]
��6 7
.
��7 8
light
��8 =
;
��= >
if
�� 
(
�� 
light
�� 
!=
�� 
null
�� !
&&
�� 
light
�� 
.
�� 
bakingOutput
�� &
.
��& '
mixedLightingMode
��' 8
==
��9 ;
MixedLightingMode
��< M
.
��M N
Subtractive
��N Y
&&
�� 
light
�� 
.
�� 
bakingOutput
�� &
.
��& '
lightmapBakeType
��' 7
==
��8 :
LightmapBakeType
��; K
.
��K L
Mixed
��L Q
&&
�� 
light
�� 
.
�� 
shadows
�� !
!=
��" $
LightShadows
��% 1
.
��1 2
None
��2 6
)
��6 7
{
�� 
this
�� 
.
��  
MixedLightingSetup
�� +
=
��, - 
MixedLightingSetup
��. @
.
��@ A
Subtractive
��A L
;
��L M
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
bool
�� )
IsRuntimeSupportedThisFrame
�� /
(
��/ 0
)
��0 1
{
�� 	
return
�� 
this
�� 
.
�� 
GBufferSliceCount
�� )
<=
��* ,

SystemInfo
��- 7
.
��7 8(
supportedRenderTargetCount
��8 R
&&
��S U
!
��V W
DeferredConfig
��W e
.
��e f
IsOpenGL
��f n
;
��n o
}
�� 	
public
�� 
void
�� 
Setup
�� 
(
�� 
ref
�� 

�� +

��, 9
,
��9 :.
 AdditionalLightsShadowCasterPass
�� ,.
 additionalLightsShadowCasterPass
��- M
,
��M N
bool
�� 
hasDepthPrepass
��  
,
��  !
bool
�� 
	isOverlay
�� 
,
��  
RenderTargetHandle
�� 
depthCopyTexture
�� /
,
��/ 0 
RenderTargetHandle
�� 
depthInfoTexture
�� /
,
��/ 0 
RenderTargetHandle
�� "
tileDepthInfoTexture
�� 3
,
��3 4 
RenderTargetHandle
�� 
depthAttachment
�� .
,
��. / 
RenderTargetHandle
�� 
[
�� 
]
��  
gbufferHandles
��! /
)
��/ 0
{
�� 	0
"m_AdditionalLightsShadowCasterPass
�� .
=
��/ 0.
 additionalLightsShadowCasterPass
��1 Q
;
��Q R
this
�� 
.
�� 
HasDepthPrepass
��  
=
��! "
hasDepthPrepass
��# 2
;
��2 3
this
�� 
.
�� 
	IsOverlay
�� 
=
�� 
	isOverlay
�� &
;
��& '
this
�� 
.
�� 
DepthCopyTexture
�� !
=
��" #
depthCopyTexture
��$ 4
;
��4 5
this
�� 
.
�� 
DepthInfoTexture
�� !
=
��" #
depthInfoTexture
��$ 4
;
��4 5
this
�� 
.
�� "
TileDepthInfoTexture
�� %
=
��& '"
tileDepthInfoTexture
��( <
;
��< =
if
�� 
(
�� 
this
�� 
.
��  
GbufferAttachments
�� '
==
��( *
null
��+ /
||
��0 2
this
��3 7
.
��7 8 
GbufferAttachments
��8 J
.
��J K
Length
��K Q
!=
��R T
this
��U Y
.
��Y Z
GBufferSliceCount
��Z k
)
��k l
this
�� 
.
��  
GbufferAttachments
�� '
=
��( )
new
��* - 
RenderTargetHandle
��. @
[
��@ A
this
��A E
.
��E F
GBufferSliceCount
��F W
]
��W X
;
��X Y
this
�� 
.
��  
GbufferAttachments
�� #
[
��# $
this
��$ (
.
��( ) 
GBufferAlbedoIndex
��) ;
]
��; <
=
��= >
gbufferHandles
��? M
[
��M N
(
��N O
int
��O R
)
��R S
GBufferHandles
��S a
.
��a b
Albedo
��b h
]
��h i
;
��i j
this
�� 
.
��  
GbufferAttachments
�� #
[
��# $
this
��$ (
.
��( )*
GBufferSpecularMetallicIndex
��) E
]
��E F
=
��G H
gbufferHandles
��I W
[
��W X
(
��X Y
int
��Y \
)
��\ ]
GBufferHandles
��] k
.
��k l
SpecularMetallic
��l |
]
��| }
;
��} ~
this
�� 
.
��  
GbufferAttachments
�� #
[
��# $
this
��$ (
.
��( )*
GBufferNormalSmoothnessIndex
��) E
]
��E F
=
��G H
gbufferHandles
��I W
[
��W X
(
��X Y
int
��Y \
)
��\ ]
GBufferHandles
��] k
.
��k l
NormalSmoothness
��l |
]
��| }
;
��} ~
this
�� 
.
��  
GbufferAttachments
�� #
[
��# $
this
��$ (
.
��( )"
GBufferLightingIndex
��) =
]
��= >
=
��? @
gbufferHandles
��A O
[
��O P
(
��P Q
int
��Q T
)
��T U
GBufferHandles
��U c
.
��c d
Lighting
��d l
]
��l m
;
��m n
if
�� 
(
�� 
this
�� 
.
�� 
GbufferDepthIndex
�� &
>=
��' )
$num
��* +
)
��+ ,
this
�� 
.
��  
GbufferAttachments
�� '
[
��' (
this
��( ,
.
��, -
GbufferDepthIndex
��- >
]
��> ?
=
��@ A
gbufferHandles
��B P
[
��P Q
(
��Q R
int
��R U
)
��U V
GBufferHandles
��V d
.
��d e
DepthAsColor
��e q
]
��q r
;
��r s
if
�� 
(
�� 
this
�� 
.
�� 
GBufferShadowMask
�� &
>=
��' )
$num
��* +
)
��+ ,
this
�� 
.
��  
GbufferAttachments
�� '
[
��' (
this
��( ,
.
��, -
GBufferShadowMask
��- >
]
��> ?
=
��@ A
gbufferHandles
��B P
[
��P Q
(
��Q R
int
��R U
)
��U V
GBufferHandles
��V d
.
��d e

ShadowMask
��e o
]
��o p
;
��p q
this
�� 
.
�� 
DepthAttachment
��  
=
��! "
depthAttachment
��# 2
;
��2 3
this
�� 
.
�� (
DepthCopyTextureIdentifier
�� +
=
��, -
this
��. 2
.
��2 3
DepthCopyTexture
��3 C
.
��C D

Identifier
��D N
(
��N O
)
��O P
;
��P Q
this
�� 
.
�� (
DepthInfoTextureIdentifier
�� +
=
��, -
this
��. 2
.
��2 3
DepthInfoTexture
��3 C
.
��C D

Identifier
��D N
(
��N O
)
��O P
;
��P Q
this
�� 
.
�� ,
TileDepthInfoTextureIdentifier
�� /
=
��0 1
this
��2 6
.
��6 7"
TileDepthInfoTexture
��7 K
.
��K L

Identifier
��L V
(
��V W
)
��W X
;
��X Y
if
�� 
(
�� 
this
�� 
.
�� *
GbufferAttachmentIdentifiers
�� 1
==
��2 4
null
��5 9
||
��: <
this
��= A
.
��A B*
GbufferAttachmentIdentifiers
��B ^
.
��^ _
Length
��_ e
!=
��f h
this
��i m
.
��m n!
GbufferAttachments��n �
.��� �
Length��� �
)��� �
this
�� 
.
�� *
GbufferAttachmentIdentifiers
�� 1
=
��2 3
new
��4 7$
RenderTargetIdentifier
��8 N
[
��N O
this
��O S
.
��S T 
GbufferAttachments
��T f
.
��f g
Length
��g m
]
��m n
;
��n o
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
this
��  $
.
��$ % 
GbufferAttachments
��% 7
.
��7 8
Length
��8 >
;
��> ?
++
��@ B
i
��B C
)
��C D
this
�� 
.
�� *
GbufferAttachmentIdentifiers
�� 1
[
��1 2
i
��2 3
]
��3 4
=
��5 6
this
��7 ;
.
��; < 
GbufferAttachments
��< N
[
��N O
i
��O P
]
��P Q
.
��Q R

Identifier
��R \
(
��\ ]
)
��] ^
;
��^ _
this
�� 
.
�� '
DepthAttachmentIdentifier
�� *
=
��+ ,
depthAttachment
��- <
.
��< =

Identifier
��= G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 

�� 
.
�� 

cameraData
�� (
.
��( )
xr
��) +
.
��+ ,
enabled
��, 3
)
��3 4
{
�� 
this
�� 
.
�� (
DepthCopyTextureIdentifier
�� /
=
��0 1
new
��2 5$
RenderTargetIdentifier
��6 L
(
��L M
this
��M Q
.
��Q R(
DepthCopyTextureIdentifier
��R l
,
��l m
$num
��n o
,
��o p
CubemapFace
��q |
.
��| }
Unknown��} �
,��� �
-��� �
$num��� �
)��� �
;��� �
this
�� 
.
�� (
DepthInfoTextureIdentifier
�� /
=
��0 1
new
��2 5$
RenderTargetIdentifier
��6 L
(
��L M
this
��M Q
.
��Q R(
DepthInfoTextureIdentifier
��R l
,
��l m
$num
��n o
,
��o p
CubemapFace
��q |
.
��| }
Unknown��} �
,��� �
-��� �
$num��� �
)��� �
;��� �
this
�� 
.
�� ,
TileDepthInfoTextureIdentifier
�� 3
=
��4 5
new
��6 9$
RenderTargetIdentifier
��: P
(
��P Q
this
��Q U
.
��U V,
TileDepthInfoTextureIdentifier
��V t
,
��t u
$num
��v w
,
��w x
CubemapFace��y �
.��� �
Unknown��� �
,��� �
-��� �
$num��� �
)��� �
;��� �
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
this
��$ (
.
��( )*
GbufferAttachmentIdentifiers
��) E
.
��E F
Length
��F L
;
��L M
++
��N P
i
��P Q
)
��Q R
this
�� 
.
�� *
GbufferAttachmentIdentifiers
�� 5
[
��5 6
i
��6 7
]
��7 8
=
��9 :
new
��; >$
RenderTargetIdentifier
��? U
(
��U V
this
��V Z
.
��Z [*
GbufferAttachmentIdentifiers
��[ w
[
��w x
i
��x y
]
��y z
,
��z {
$num
��| }
,
��} ~
CubemapFace�� �
.��� �
Unknown��� �
,��� �
-��� �
$num��� �
)��� �
;��� �
this
�� 
.
�� '
DepthAttachmentIdentifier
�� .
=
��/ 0
new
��1 4$
RenderTargetIdentifier
��5 K
(
��K L
this
��L P
.
��P Q'
DepthAttachmentIdentifier
��Q j
,
��j k
$num
��l m
,
��m n
CubemapFace
��o z
.
��z {
Unknown��{ �
,��� �
-��� �
$num��� �
)��� �
;��� �
}
�� 
m_HasTileVisLights
�� 
=
��  
this
��! %
.
��% &"
TiledDeferredShading
��& :
&&
��; = 
CheckHasTileLights
��> P
(
��P Q
ref
��Q T

��U b
.
��b c
	lightData
��c l
.
��l m

��m z
)
��z {
;
��{ |
}
�� 	
public
�� 
void
�� 
OnCameraCleanup
�� #
(
��# $

��$ 1
cmd
��2 5
)
��5 6
{
�� 	
	CoreUtils
�� 
.
�� 

SetKeyword
��  
(
��  !
cmd
��! $
,
��$ %"
ShaderKeywordStrings
��& :
.
��: ;"
_GBUFFER_NORMALS_OCT
��; O
,
��O P
false
��Q V
)
��V W
;
��W X
	CoreUtils
�� 
.
�� 

SetKeyword
��  
(
��  !
cmd
��! $
,
��$ %"
ShaderKeywordStrings
��& :
.
��: ;&
MixedLightingSubtractive
��; S
,
��S T
false
��U Z
)
��Z [
;
��[ \
for
�� 
(
�� 
int
�� 

tilerIndex
�� 
=
��  !
$num
��" #
;
��# $

tilerIndex
��% /
<
��0 1
m_Tilers
��2 :
.
��: ;
Length
��; A
;
��A B
++
��C E

tilerIndex
��F P
)
��P Q
{
�� 
m_TileDataCapacities
�� $
[
��$ %

tilerIndex
��% /
]
��/ 0
=
��1 2
max
��3 6
(
��6 7"
m_TileDataCapacities
��7 K
[
��K L

tilerIndex
��L V
]
��V W
,
��W X
m_Tilers
��Y a
[
��a b

tilerIndex
��b l
]
��l m
.
��m n
TileDataCapacity
��n ~
)
��~ 
;�� �
m_Tilers
�� 
[
�� 

tilerIndex
�� #
]
��# $
.
��$ %
OnCameraCleanup
��% 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
��  
m_stencilVisLights
�� "
.
��" #
	IsCreated
��# ,
)
��, - 
m_stencilVisLights
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
if
�� 
(
�� &
m_stencilVisLightOffsets
�� (
.
��( )
	IsCreated
��) 2
)
��2 3&
m_stencilVisLightOffsets
�� (
.
��( )
Dispose
��) 0
(
��0 1
)
��1 2
;
��2 3
}
�� 	
internal
�� 
static
�� 
StencilState
�� $
OverwriteStencil
��% 5
(
��5 6
StencilState
��6 B
s
��C D
,
��D E
int
��F I
stencilWriteMask
��J Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� 
s
�� 
.
�� 
enabled
�� 
)
�� 
{
�� 
return
�� 
new
�� 
StencilState
�� '
(
��' (
true
�� 
,
�� 
$num
�� 
,
�� 
(
�� 
byte
�� 
)
�� 
stencilWriteMask
�� -
,
��- .
CompareFunction
�� #
.
��# $
Always
��$ *
,
��* +
	StencilOp
��, 5
.
��5 6
Replace
��6 =
,
��= >
	StencilOp
��? H
.
��H I
Keep
��I M
,
��M N
	StencilOp
��O X
.
��X Y
Keep
��Y ]
,
��] ^
CompareFunction
�� #
.
��# $
Always
��$ *
,
��* +
	StencilOp
��, 5
.
��5 6
Replace
��6 =
,
��= >
	StencilOp
��? H
.
��H I
Keep
��I M
,
��M N
	StencilOp
��O X
.
��X Y
Keep
��Y ]
)
�� 
;
�� 
}
�� 
CompareFunction
�� 
	funcFront
�� %
=
��& '
s
��( )
.
��) *"
compareFunctionFront
��* >
!=
��? A
CompareFunction
��B Q
.
��Q R
Disabled
��R Z
?
��[ \
s
��] ^
.
��^ _"
compareFunctionFront
��_ s
:
��t u
CompareFunction��v �
.��� �
Always��� �
;��� �
CompareFunction
�� 
funcBack
�� $
=
��% &
s
��' (
.
��( )!
compareFunctionBack
��) <
!=
��= ?
CompareFunction
��@ O
.
��O P
Disabled
��P X
?
��Y Z
s
��[ \
.
��\ ]!
compareFunctionBack
��] p
:
��q r
CompareFunction��s �
.��� �
Always��� �
;��� �
	StencilOp
�� 
	passFront
�� 
=
��  !
s
��" #
.
��# $ 
passOperationFront
��$ 6
;
��6 7
	StencilOp
�� 
	failFront
�� 
=
��  !
s
��" #
.
��# $ 
failOperationFront
��$ 6
;
��6 7
	StencilOp
�� 

zfailFront
��  
=
��! "
s
��# $
.
��$ %!
zFailOperationFront
��% 8
;
��8 9
	StencilOp
�� 
passBack
�� 
=
��  
s
��! "
.
��" #
passOperationBack
��# 4
;
��4 5
	StencilOp
�� 
failBack
�� 
=
��  
s
��! "
.
��" #
failOperationBack
��# 4
;
��4 5
	StencilOp
�� 
	zfailBack
�� 
=
��  !
s
��" #
.
��# $ 
zFailOperationBack
��$ 6
;
��6 7
return
�� 
new
�� 
StencilState
�� #
(
��# $
true
�� 
,
�� 
(
�� 
byte
�� 
)
�� 
(
�� 
s
�� 
.
�� 
readMask
�� !
&
��" #
$num
��$ (
)
��( )
,
��) *
(
��+ ,
byte
��, 0
)
��0 1
(
��1 2
s
��2 3
.
��3 4
	writeMask
��4 =
|
��> ?
stencilWriteMask
��@ P
)
��P Q
,
��Q R
	funcFront
�� 
,
�� 
	passFront
�� $
,
��$ %
	failFront
��& /
,
��/ 0

zfailFront
��1 ;
,
��; <
funcBack
�� 
,
�� 
passBack
�� "
,
��" #
failBack
��$ ,
,
��, -
	zfailBack
��. 7
)
�� 
;
��
}
�� 	
internal
�� 
static
�� 
RenderStateBlock
�� (
OverwriteStencil
��) 9
(
��9 :
RenderStateBlock
��: J
block
��K P
,
��P Q
int
��R U
stencilWriteMask
��V f
,
��f g
int
��h k

stencilRef
��l v
)
��v w
{
�� 	
if
�� 
(
�� 
!
�� 
block
�� 
.
�� 
stencilState
�� #
.
��# $
enabled
��$ +
)
��+ ,
{
�� 
block
�� 
.
�� 
stencilState
�� "
=
��# $
new
��% (
StencilState
��) 5
(
��5 6
true
�� 
,
�� 
$num
�� 
,
�� 
(
�� 
byte
�� 
)
�� 
stencilWriteMask
�� -
,
��- .
CompareFunction
�� #
.
��# $
Always
��$ *
,
��* +
	StencilOp
��, 5
.
��5 6
Replace
��6 =
,
��= >
	StencilOp
��? H
.
��H I
Keep
��I M
,
��M N
	StencilOp
��O X
.
��X Y
Keep
��Y ]
,
��] ^
CompareFunction
�� #
.
��# $
Always
��$ *
,
��* +
	StencilOp
��, 5
.
��5 6
Replace
��6 =
,
��= >
	StencilOp
��? H
.
��H I
Keep
��I M
,
��M N
	StencilOp
��O X
.
��X Y
Keep
��Y ]
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
StencilState
�� 
s
�� 
=
��  
block
��! &
.
��& '
stencilState
��' 3
;
��3 4
CompareFunction
�� 
	funcFront
��  )
=
��* +
s
��, -
.
��- ."
compareFunctionFront
��. B
!=
��C E
CompareFunction
��F U
.
��U V
Disabled
��V ^
?
��_ `
s
��a b
.
��b c"
compareFunctionFront
��c w
:
��x y
CompareFunction��z �
.��� �
Always��� �
;��� �
CompareFunction
�� 
funcBack
��  (
=
��) *
s
��+ ,
.
��, -!
compareFunctionBack
��- @
!=
��A C
CompareFunction
��D S
.
��S T
Disabled
��T \
?
��] ^
s
��_ `
.
��` a!
compareFunctionBack
��a t
:
��u v
CompareFunction��w �
.��� �
Always��� �
;��� �
	StencilOp
�� 
	passFront
�� #
=
��$ %
s
��& '
.
��' ( 
passOperationFront
��( :
;
��: ;
	StencilOp
�� 
	failFront
�� #
=
��$ %
s
��& '
.
��' ( 
failOperationFront
��( :
;
��: ;
	StencilOp
�� 

zfailFront
�� $
=
��% &
s
��' (
.
��( )!
zFailOperationFront
��) <
;
��< =
	StencilOp
�� 
passBack
�� "
=
��# $
s
��% &
.
��& '
passOperationBack
��' 8
;
��8 9
	StencilOp
�� 
failBack
�� "
=
��# $
s
��% &
.
��& '
failOperationBack
��' 8
;
��8 9
	StencilOp
�� 
	zfailBack
�� #
=
��$ %
s
��& '
.
��' ( 
zFailOperationBack
��( :
;
��: ;
block
�� 
.
�� 
stencilState
�� "
=
��# $
new
��% (
StencilState
��) 5
(
��5 6
true
�� 
,
�� 
(
�� 
byte
�� 
)
�� 
(
�� 
s
�� 
.
�� 
readMask
�� %
&
��& '
$num
��( ,
)
��, -
,
��- .
(
��/ 0
byte
��0 4
)
��4 5
(
��5 6
s
��6 7
.
��7 8
	writeMask
��8 A
|
��B C
stencilWriteMask
��D T
)
��T U
,
��U V
	funcFront
�� 
,
�� 
	passFront
�� (
,
��( )
	failFront
��* 3
,
��3 4

zfailFront
��5 ?
,
��? @
funcBack
�� 
,
�� 
passBack
�� &
,
��& '
failBack
��( 0
,
��0 1
	zfailBack
��2 ;
)
�� 
;
�� 
}
�� 
block
�� 
.
�� 
mask
�� 
|=
�� 
RenderStateMask
�� )
.
��) *
Stencil
��* 1
;
��1 2
block
�� 
.
�� 
stencilReference
�� "
=
��# $
(
��% &
block
��& +
.
��+ ,
stencilReference
��, <
&
��= >
(
��? @
int
��@ C
)
��C D
StencilUsage
��D P
.
��P Q
UserMask
��Q Y
)
��Y Z
|
��[ \

stencilRef
��] g
;
��g h
return
�� 
block
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 

�� #
(
��# $
)
��$ %
{
�� 	
return
��  
m_HasTileVisLights
�� %
;
��% &
}
�� 	
internal
�� 
bool
�� (
HasTileDepthRangeExtraPass
�� 0
(
��0 1
)
��1 2
{
�� 	
ref
�� 

�� 
tiler
�� #
=
��$ %
ref
��& )
m_Tilers
��* 2
[
��2 3
$num
��3 4
]
��4 5
;
��5 6
int
�� 
tilePixelWidth
�� 
=
��  
tiler
��! &
.
��& '
TilePixelWidth
��' 5
;
��5 6
int
�� 
tilePixelHeight
�� 
=
��  !
tiler
��" '
.
��' (
TilePixelHeight
��( 7
;
��7 8
int
�� 
tileMipLevel
�� 
=
�� 
(
��  
int
��  #
)
��# $
Mathf
��$ )
.
��) *
Log
��* -
(
��- .
Mathf
��. 3
.
��3 4
Min
��4 7
(
��7 8
tilePixelWidth
��8 F
,
��F G
tilePixelHeight
��H W
)
��W X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
return
�� 
DeferredConfig
�� !
.
��! "-
kTileDepthInfoIntermediateLevel
��" A
>=
��B D
$num
��E F
&&
��G I
DeferredConfig
��J X
.
��X Y-
kTileDepthInfoIntermediateLevel
��Y x
<
��y z
tileMipLevel��{ �
;��� �
}
�� 	
internal
�� 
void
�� &
ExecuteTileDepthInfoPass
�� .
(
��. /%
ScriptableRenderContext
��/ F
context
��G N
,
��N O
ref
��P S

��T a

��b o
)
��o p
{
�� 	
if
�� 
(
�� %
m_TileDepthInfoMaterial
�� '
==
��( *
null
��+ /
)
��/ 0
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� $
(
��$ %
$str��% �
,��� �'
m_TileDepthInfoMaterial��� �
,��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 

Assertions
�� 
.
�� 
Assert
�� 
.
�� 
IsTrue
�� $
(
��$ %
m_Tilers
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
TilePixelWidth
�� *
==
��+ -
m_Tilers
��. 6
[
��6 7
$num
��7 8
]
��8 9
.
��9 :
TilePixelHeight
��: I
||
��J L
DeferredConfig
��M [
.
��[ \-
kTileDepthInfoIntermediateLevel
��\ {
<=
��| ~
$num�� �
,��� �
$str
�� u
)
�� 
;
��
uint
�� 
invalidDepthRange
�� "
=
��# $
(
��% &
uint
��& *
)
��* +
Mathf
��+ 0
.
��0 1
FloatToHalf
��1 <
(
��< =
-
��= >
$num
��> B
)
��B C
|
��D E
(
��F G
(
��G H
(
��H I
uint
��I M
)
��M N
Mathf
��N S
.
��S T
FloatToHalf
��T _
(
��_ `
-
��` a
$num
��a e
)
��e f
)
��f g
<<
��h j
$num
��k m
)
��m n
;
��n o
ref
�� 

�� 
tiler
�� #
=
��$ %
ref
��& )
m_Tilers
��* 2
[
��2 3
$num
��3 4
]
��4 5
;
��5 6
int
�� 

tileXCount
�� 
=
�� 
tiler
�� "
.
��" #

TileXCount
��# -
;
��- .
int
�� 

tileYCount
�� 
=
�� 
tiler
�� "
.
��" #

TileYCount
��# -
;
��- .
int
�� 
tilePixelWidth
�� 
=
��  
tiler
��! &
.
��& '
TilePixelWidth
��' 5
;
��5 6
int
�� 
tilePixelHeight
�� 
=
��  !
tiler
��" '
.
��' (
TilePixelHeight
��( 7
;
��7 8
int
�� 
tileMipLevel
�� 
=
�� 
(
��  
int
��  #
)
��# $
Mathf
��$ )
.
��) *
Log
��* -
(
��- .
Mathf
��. 3
.
��3 4
Min
��4 7
(
��7 8
tilePixelWidth
��8 F
,
��F G
tilePixelHeight
��H W
)
��W X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
int
�� "
intermediateMipLevel
�� $
=
��% &
DeferredConfig
��' 5
.
��5 6-
kTileDepthInfoIntermediateLevel
��6 U
>=
��V X
$num
��Y Z
&&
��[ ]
DeferredConfig
��^ l
.
��l m.
kTileDepthInfoIntermediateLevel��m �
<��� �
tileMipLevel��� �
?��� �
DeferredConfig��� �
.��� �/
kTileDepthInfoIntermediateLevel��� �
:��� �
tileMipLevel��� �
;��� �
int
�� 
tileShiftMipLevel
�� !
=
��" #
tileMipLevel
��$ 0
-
��1 2"
intermediateMipLevel
��3 G
;
��G H
int
�� 
	alignment
�� 
=
�� 
$num
�� 
<<
��  "
intermediateMipLevel
��! 5
;
��5 6
int
�� 
depthInfoWidth
�� 
=
��  
(
��! "
this
��" &
.
��& '
RenderWidth
��' 2
+
��3 4
	alignment
��5 >
-
��? @
$num
��A B
)
��B C
>>
��D F"
intermediateMipLevel
��G [
;
��[ \
int
�� 
depthInfoHeight
�� 
=
��  !
(
��" #
this
��# '
.
��' (
RenderHeight
��( 4
+
��5 6
	alignment
��7 @
-
��A B
$num
��C D
)
��D E
>>
��F H"
intermediateMipLevel
��I ]
;
��] ^
NativeArray
�� 
<
�� 
ushort
�� 
>
�� 
tiles
��  %
=
��& '
tiler
��( -
.
��- .
Tiles
��. 3
;
��3 4
NativeArray
�� 
<
�� 
uint
�� 
>
�� 
tileHeaders
�� )
=
��* +
tiler
��, 1
.
��1 2
TileHeaders
��2 =
;
��= >
NativeArray
�� 
<
�� 
uint
�� 
>
�� 
depthRanges
�� )
=
��* +
new
��, /
NativeArray
��0 ;
<
��; <
uint
��< @
>
��@ A
(
��A B%
m_MaxDepthRangePerBatch
��B Y
,
��Y Z
	Allocator
��[ d
.
��d e
Temp
��e i
,
��i j 
NativeArrayOptions
��k }
.
��} ~"
UninitializedMemory��~ �
)��� �
;��� �

�� 
cmd
�� 
=
�� 
CommandBufferPool
��  1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *&
m_ProfilingTileDepthInfo
��+ C
)
��C D
)
��D E
{
�� 
RenderTargetIdentifier
�� &
depthSurface
��' 3
=
��4 5
this
��6 :
.
��: ;'
DepthAttachmentIdentifier
��; T
;
��T U$
RenderTargetIdentifier
�� &
depthInfoSurface
��' 7
=
��8 9
(
��: ;
tileMipLevel
��; G
==
��H J"
intermediateMipLevel
��K _
)
��_ `
?
��a b
this
��c g
.
��g h-
TileDepthInfoTextureIdentifier��h �
:��� �
this��� �
.��� �*
DepthInfoTextureIdentifier��� �
;��� �
cmd
�� 
.
�� 
SetGlobalTexture
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
	_DepthTex
��5 >
,
��> ?
depthSurface
��@ L
)
��L M
;
��M N
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4

��4 A
,
��A B
new
��C F
Vector4
��G N
(
��N O
this
��O S
.
��S T
RenderWidth
��T _
,
��_ `
this
��a e
.
��e f
RenderHeight
��f r
,
��r s
$num
��t x
/
��y z
this
��{ 
.�� �
RenderWidth��� �
,��� �
$num��� �
/��� �
this��� �
.��� �
RenderHeight��� �
)��� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1 
_DownsamplingWidth
��1 C
,
��C D
tilePixelWidth
��E S
)
��S T
;
��T U
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1!
_DownsamplingHeight
��1 D
,
��D E
tilePixelHeight
��F U
)
��U V
;
��V W
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1

��1 >
,
��> ?"
intermediateMipLevel
��@ T
)
��T U
;
��U V
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1

��1 >
,
��> ?"
intermediateMipLevel
��@ T
)
��T U
;
��U V
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_TileShiftX
��1 <
,
��< =
tileShiftMipLevel
��> O
)
��O P
;
��P Q
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_TileShiftY
��1 <
,
��< =
tileShiftMipLevel
��> O
)
��O P
;
��P Q
	Matrix4x4
�� 
proj
�� 
=
��  

��! .
.
��. /

cameraData
��/ 9
.
��9 :
camera
��: @
.
��@ A
projectionMatrix
��A Q
;
��Q R
	Matrix4x4
�� 
clip
�� 
=
��  
new
��! $
	Matrix4x4
��% .
(
��. /
new
��/ 2
Vector4
��3 :
(
��: ;
$num
��; <
,
��< =
$num
��> ?
,
��? @
$num
��A B
,
��B C
$num
��D E
)
��E F
,
��F G
new
��H K
Vector4
��L S
(
��S T
$num
��T U
,
��U V
$num
��W X
,
��X Y
$num
��Z [
,
��[ \
$num
��] ^
)
��^ _
,
��_ `
new
��a d
Vector4
��e l
(
��l m
$num
��m n
,
��n o
$num
��p q
,
��q r
$num
��s w
,
��w x
$num
��y z
)
��z {
,
��{ |
new��} �
Vector4��� �
(��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
;��� �
	Matrix4x4
�� 

�� '
=
��( )
	Matrix4x4
��* 3
.
��3 4
Inverse
��4 ;
(
��; <
clip
��< @
*
��A B
proj
��C G
)
��G H
;
��H I
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_unproject0
��4 ?
,
��? @

��A N
.
��N O
GetRow
��O U
(
��U V
$num
��V W
)
��W X
)
��X Y
;
��Y Z
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_unproject1
��4 ?
,
��? @

��A N
.
��N O
GetRow
��O U
(
��U V
$num
��V W
)
��W X
)
��X Y
;
��Y Z
string
�� 

�� $
=
��% &
null
��' +
;
��+ ,
if
�� 
(
�� 
tilePixelWidth
�� "
==
��# %
tilePixelHeight
��& 5
)
��5 6
{
�� 
if
�� 
(
�� "
intermediateMipLevel
�� ,
==
��- /
$num
��0 1
)
��1 2

�� %
=
��& '"
ShaderKeywordStrings
��( <
.
��< =!
DOWNSAMPLING_SIZE_2
��= P
;
��P Q
else
�� 
if
�� 
(
�� "
intermediateMipLevel
�� 1
==
��2 4
$num
��5 6
)
��6 7

�� %
=
��& '"
ShaderKeywordStrings
��( <
.
��< =!
DOWNSAMPLING_SIZE_4
��= P
;
��P Q
else
�� 
if
�� 
(
�� "
intermediateMipLevel
�� 1
==
��2 4
$num
��5 6
)
��6 7

�� %
=
��& '"
ShaderKeywordStrings
��( <
.
��< =!
DOWNSAMPLING_SIZE_8
��= P
;
��P Q
else
�� 
if
�� 
(
�� "
intermediateMipLevel
�� 1
==
��2 4
$num
��5 6
)
��6 7

�� %
=
��& '"
ShaderKeywordStrings
��( <
.
��< ="
DOWNSAMPLING_SIZE_16
��= Q
;
��Q R
}
�� 
if
�� 
(
�� 

�� !
!=
��" $
null
��% )
)
��) *
cmd
�� 
.
�� !
EnableShaderKeyword
�� +
(
��+ ,

��, 9
)
��9 :
;
��: ;
int
�� 
tileY
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
tileYIncrement
�� "
=
��# $
(
��% &
DeferredConfig
��& 4
.
��4 5%
UseCBufferForDepthRange
��5 L
?
��M N
DeferredConfig
��O ]
.
��] ^#
kPreferredCBufferSize
��^ s
:
��t u
DeferredConfig��v �
.��� �.
kPreferredStructuredBufferSize��� �
)��� �
/��� �
(��� �

tileXCount��� �
*��� �
$num��� �
)��� �
;��� �
while
�� 
(
�� 
tileY
�� 
<
�� 

tileYCount
�� )
)
��) *
{
�� 
int
�� 
tileYEnd
��  
=
��! "
Mathf
��# (
.
��( )
Min
��) ,
(
��, -

tileYCount
��- 7
,
��7 8
tileY
��9 >
+
��? @
tileYIncrement
��A O
)
��O P
;
��P Q
for
�� 
(
�� 
int
�� 
j
�� 
=
��  
tileY
��! &
;
��& '
j
��( )
<
��* +
tileYEnd
��, 4
;
��4 5
++
��6 8
j
��8 9
)
��9 :
{
�� 
for
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +

tileXCount
��, 6
;
��6 7
++
��8 :
i
��: ;
)
��; <
{
�� 
int
�� 
headerOffset
��  ,
=
��- .
tiler
��/ 4
.
��4 5!
GetTileHeaderOffset
��5 H
(
��H I
i
��I J
,
��J K
j
��L M
)
��M N
;
��N O
int
�� 
tileLightCount
��  .
=
��/ 0
(
��1 2
int
��2 5
)
��5 6
tileHeaders
��6 A
[
��A B
headerOffset
��B N
+
��O P
$num
��Q R
]
��R S
;
��S T
uint
��  
listDepthRange
��! /
=
��0 1
tileLightCount
��2 @
==
��A C
$num
��D E
?
��F G
invalidDepthRange
��H Y
:
��Z [
tileHeaders
��\ g
[
��g h
headerOffset
��h t
+
��u v
$num
��w x
]
��x y
;
��y z
depthRanges
�� '
[
��' (
i
��( )
+
��* +
(
��, -
j
��- .
-
��/ 0
tileY
��1 6
)
��6 7
*
��8 9

tileXCount
��: D
]
��D E
=
��F G
listDepthRange
��H V
;
��V W
}
�� 
}
�� 

�� !
_depthRanges
��" .
=
��/ 0 
DeferredShaderData
��1 C
.
��C D
instance
��D L
.
��L M

��M Z
<
��Z [
uint
��[ _
>
��_ `
(
��` a%
m_MaxDepthRangePerBatch
��a x
,
��x y
DeferredConfig��z �
.��� �'
UseCBufferForDepthRange��� �
)��� �
;��� �
_depthRanges
��  
.
��  !
SetData
��! (
(
��( )
depthRanges
��) 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
,
��: ;
depthRanges
��< G
.
��G H
Length
��H N
)
��N O
;
��O P
if
�� 
(
�� 
DeferredConfig
�� &
.
��& '%
UseCBufferForDepthRange
��' >
)
��> ?
cmd
�� 
.
�� %
SetGlobalConstantBuffer
�� 3
(
��3 4
_depthRanges
��4 @
,
��@ A
ShaderConstants
��B Q
.
��Q R
UDepthRanges
��R ^
,
��^ _
$num
��` a
,
��a b%
m_MaxDepthRangePerBatch
��c z
*
��{ |
$num
��} ~
)
��~ 
;�� �
else
�� 
cmd
�� 
.
�� 
SetGlobalBuffer
�� +
(
��+ ,
ShaderConstants
��, ;
.
��; <
_DepthRanges
��< H
,
��H I
_depthRanges
��J V
)
��V W
;
��W X
cmd
�� 
.
�� 
SetGlobalInt
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_tileXCount
��5 @
,
��@ A

tileXCount
��B L
)
��L M
;
��M N
cmd
�� 
.
�� 
SetGlobalInt
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_DepthRangeOffset
��5 F
,
��F G
tileY
��H M
*
��N O

tileXCount
��P Z
)
��Z [
;
��[ \
cmd
�� 
.
�� 
EnableScissorRect
�� )
(
��) *
new
��* -
Rect
��. 2
(
��2 3
$num
��3 4
,
��4 5
tileY
��6 ;
<<
��< >
tileShiftMipLevel
��? P
,
��P Q
depthInfoWidth
��R `
,
��` a
(
��b c
tileYEnd
��c k
-
��l m
tileY
��n s
)
��s t
<<
��u w 
tileShiftMipLevel��x �
)��� �
)��� �
;��� �
cmd
�� 
.
�� 
Blit
�� 
(
�� 
depthSurface
�� )
,
��) *
depthInfoSurface
��+ ;
,
��; <%
m_TileDepthInfoMaterial
��= T
,
��T U
$num
��V W
)
��W X
;
��X Y
tileY
�� 
=
�� 
tileYEnd
�� $
;
��$ %
}
�� 
cmd
�� 
.
��  
DisableScissorRect
�� &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� 

�� !
!=
��" $
null
��% )
)
��) *
cmd
�� 
.
�� "
DisableShaderKeyword
�� ,
(
��, -

��- :
)
��: ;
;
��; <
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +
depthRanges
�� 
.
�� 
Dispose
�� 
(
��  
)
��  !
;
��! "
}
�� 	
internal
�� 
void
�� *
ExecuteDownsampleBitmaskPass
�� 2
(
��2 3%
ScriptableRenderContext
��3 J
context
��K R
,
��R S
ref
��T W

��X e

��f s
)
��s t
{
�� 	
if
�� 
(
�� %
m_TileDepthInfoMaterial
�� '
==
��( *
null
��+ /
)
��/ 0
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� $
(
��$ %
$str��% �
,��� �'
m_TileDepthInfoMaterial��� �
,��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 

�� 
cmd
�� 
=
�� 
CommandBufferPool
��  1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *&
m_ProfilingTileDepthInfo
��+ C
)
��C D
)
��D E
{
�� 
RenderTargetIdentifier
�� &
depthInfoSurface
��' 7
=
��8 9
this
��: >
.
��> ?(
DepthInfoTextureIdentifier
��? Y
;
��Y Z$
RenderTargetIdentifier
�� &"
tileDepthInfoSurface
��' ;
=
��< =
this
��> B
.
��B C,
TileDepthInfoTextureIdentifier
��C a
;
��a b
ref
�� 

�� !
tiler
��" '
=
��( )
ref
��* -
m_Tilers
��. 6
[
��6 7
$num
��7 8
]
��8 9
;
��9 :
int
�� 
tilePixelWidth
�� "
=
��# $
tiler
��% *
.
��* +
TilePixelWidth
��+ 9
;
��9 :
int
�� 
tilePixelHeight
�� #
=
��$ %
tiler
��& +
.
��+ ,
TilePixelHeight
��, ;
;
��; <
int
�� 
tileWidthLevel
�� "
=
��# $
(
��% &
int
��& )
)
��) *
Mathf
��* /
.
��/ 0
Log
��0 3
(
��3 4
tilePixelWidth
��4 B
,
��B C
$num
��D E
)
��E F
;
��F G
int
�� 
tileHeightLevel
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
Mathf
��+ 0
.
��0 1
Log
��1 4
(
��4 5
tilePixelHeight
��5 D
,
��D E
$num
��F G
)
��G H
;
��H I
int
�� "
intermediateMipLevel
�� (
=
��) *
DeferredConfig
��+ 9
.
��9 :-
kTileDepthInfoIntermediateLevel
��: Y
;
��Y Z
int
�� 
diffWidthLevel
�� "
=
��# $
tileWidthLevel
��% 3
-
��4 5"
intermediateMipLevel
��6 J
;
��J K
int
�� 
diffHeightLevel
�� #
=
��$ %
tileHeightLevel
��& 5
-
��6 7"
intermediateMipLevel
��8 L
;
��L M
cmd
�� 
.
�� 
SetGlobalTexture
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_BitmaskTex
��5 @
,
��@ A
depthInfoSurface
��B R
)
��R S
;
��S T
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1 
_DownsamplingWidth
��1 C
,
��C D
tilePixelWidth
��E S
)
��S T
;
��T U
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1!
_DownsamplingHeight
��1 D
,
��D E
tilePixelHeight
��F U
)
��U V
;
��V W
int
�� 
	alignment
�� 
=
�� 
$num
��  !
<<
��" $
DeferredConfig
��% 3
.
��3 4-
kTileDepthInfoIntermediateLevel
��4 S
;
��S T
int
�� 
depthInfoWidth
�� "
=
��# $
(
��% &
this
��& *
.
��* +
RenderWidth
��+ 6
+
��7 8
	alignment
��9 B
-
��C D
$num
��E F
)
��F G
>>
��H J
DeferredConfig
��K Y
.
��Y Z-
kTileDepthInfoIntermediateLevel
��Z y
;
��y z
int
�� 
depthInfoHeight
�� #
=
��$ %
(
��& '
this
��' +
.
��+ ,
RenderHeight
��, 8
+
��9 :
	alignment
��; D
-
��E F
$num
��G H
)
��H I
>>
��J L
DeferredConfig
��M [
.
��[ \-
kTileDepthInfoIntermediateLevel
��\ {
;
��{ |
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
$str
��$ 5
,
��5 6
new
��7 :
Vector4
��; B
(
��B C
depthInfoWidth
��C Q
,
��Q R
depthInfoHeight
��S b
,
��b c
$num
��d h
/
��i j
depthInfoWidth
��k y
,
��y z
$num
��{ 
/��� �
depthInfoHeight��� �
)��� �
)��� �
;��� �
string
�� 

�� $
=
��% &
null
��' +
;
��+ ,
if
�� 
(
�� 
diffWidthLevel
�� "
==
��# %
$num
��& '
&&
��( *
diffHeightLevel
��+ :
==
��; =
$num
��> ?
)
��? @

�� !
=
��" #"
ShaderKeywordStrings
��$ 8
.
��8 9!
DOWNSAMPLING_SIZE_2
��9 L
;
��L M
else
�� 
if
�� 
(
�� 
diffWidthLevel
�� '
==
��( *
$num
��+ ,
&&
��- /
diffHeightLevel
��0 ?
==
��@ B
$num
��C D
)
��D E

�� !
=
��" #"
ShaderKeywordStrings
��$ 8
.
��8 9!
DOWNSAMPLING_SIZE_4
��9 L
;
��L M
else
�� 
if
�� 
(
�� 
diffWidthLevel
�� '
==
��( *
$num
��+ ,
&&
��- /
diffHeightLevel
��0 ?
==
��@ B
$num
��C D
)
��D E

�� !
=
��" #"
ShaderKeywordStrings
��$ 8
.
��8 9!
DOWNSAMPLING_SIZE_8
��9 L
;
��L M
if
�� 
(
�� 

�� !
!=
��" $
null
��% )
)
��) *
cmd
�� 
.
�� !
EnableShaderKeyword
�� +
(
��+ ,

��, 9
)
��9 :
;
��: ;
cmd
�� 
.
�� 
Blit
�� 
(
�� 
depthInfoSurface
�� )
,
��) *"
tileDepthInfoSurface
��+ ?
,
��? @%
m_TileDepthInfoMaterial
��A X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
if
�� 
(
�� 

�� !
!=
��" $
null
��% )
)
��) *
cmd
�� 
.
�� "
DisableShaderKeyword
�� ,
(
��, -

��- :
)
��: ;
;
��; <
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +
}
�� 	
internal
�� 
void
�� !
ClearStencilPartial
�� )
(
��) *

��* 7
cmd
��8 ;
)
��; <
{
�� 	
if
�� 
(
�� 
m_FullscreenMesh
��  
==
��! #
null
��$ (
)
��( )
m_FullscreenMesh
��  
=
��! ""
CreateFullscreenMesh
��# 7
(
��7 8
)
��8 9
;
��9 :
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *7
)m_ProfilingSamplerClearStencilPartialPass
��+ T
)
��T U
)
��U V
{
�� 
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_FullscreenMesh
�� -
,
��- .
	Matrix4x4
��/ 8
.
��8 9
identity
��9 A
,
��A B'
m_StencilDeferredMaterial
��C \
,
��\ ]
$num
��^ _
,
��_ `
$num
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
internal
�� 
void
�� !
ExecuteDeferredPass
�� )
(
��) *%
ScriptableRenderContext
��* A
context
��B I
,
��I J
ref
��K N

��O \

��] j
)
��j k
{
�� 	

�� 
cmd
�� 
=
�� 
CommandBufferPool
��  1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *%
m_ProfilingDeferredPass
��+ B
)
��B C
)
��C D
{
�� 
if
�� 
(
�� 

�� !
.
��! "
	lightData
��" +
.
��+ ,#
supportsMixedLighting
��, A
&&
��B D
this
��E I
.
��I J 
MixedLightingSetup
��J \
==
��] _ 
MixedLightingSetup
��` r
.
��r s
Subtractive
��s ~
)
��~ 
cmd
�� 
.
�� !
EnableShaderKeyword
�� +
(
��+ ,"
ShaderKeywordStrings
��, @
.
��@ A,
_DEFERRED_SUBTRACTIVE_LIGHTING
��A _
)
��_ `
;
��` a"
SetupMatrixConstants
�� $
(
��$ %
cmd
��% (
,
��( )
ref
��* -

��. ;
)
��; <
;
��< =
RenderTileLights
��  
(
��  !
context
��! (
,
��( )
cmd
��* -
,
��- .
ref
��/ 2

��3 @
)
��@ A
;
��A B!
RenderStencilLights
�� #
(
��# $
context
��$ +
,
��+ ,
cmd
��- 0
,
��0 1
ref
��2 5

��6 C
)
��C D
;
��D E
if
�� 
(
�� 

�� !
.
��! "
	lightData
��" +
.
��+ ,#
supportsMixedLighting
��, A
&&
��B D
this
��E I
.
��I J 
MixedLightingSetup
��J \
==
��] _ 
MixedLightingSetup
��` r
.
��r s
Subtractive
��s ~
)
��~ 
cmd
�� 
.
�� "
DisableShaderKeyword
�� ,
(
��, -"
ShaderKeywordStrings
��- A
.
��A B,
_DEFERRED_SUBTRACTIVE_LIGHTING
��B `
)
��` a
;
��a b
	RenderFog
�� 
(
�� 
context
�� !
,
��! "
cmd
��# &
,
��& '
ref
��( +

��, 9
)
��9 :
;
��: ;
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +
}
�� 	
void
�� '
SetupShaderLightConstants
��
(
��& '

��' 4
cmd
��5 8
,
��8 9
ref
��: =

��> K

��L Y
)
��Y Z
{
�� 	%
SetupMainLightConstants
�� #
(
��# $
cmd
��$ '
,
��' (
ref
��) ,

��- :
.
��: ;
	lightData
��; D
)
��D E
;
��E F
}
�� 	
void
�� %
SetupMainLightConstants
��
(
��$ %

��% 2
cmd
��3 6
,
��6 7
ref
��8 ;
	LightData
��< E
	lightData
��F O
)
��O P
{
�� 	
Vector4
�� 
lightPos
�� 
,
�� 

lightColor
�� (
,
��( )
lightAttenuation
��* :
,
��: ;
lightSpotDir
��< H
,
��H I#
lightOcclusionChannel
��J _
;
��_ `%
UniversalRenderPipeline
�� #
.
��# $-
InitializeLightConstants_Common
��$ C
(
��C D
	lightData
��D M
.
��M N

��N [
,
��[ \
	lightData
��] f
.
��f g
mainLightIndex
��g u
,
��u v
out
��w z
lightPos��{ �
,��� �
out��� �

lightColor��� �
,��� �
out��� � 
lightAttenuation��� �
,��� �
out��� �
lightSpotDir��� �
,��� �
out��� �%
lightOcclusionChannel��� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderConstants
��  /
.
��/ 0 
_MainLightPosition
��0 B
,
��B C
lightPos
��D L
)
��L M
;
��M N
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderConstants
��  /
.
��/ 0
_MainLightColor
��0 ?
,
��? @

lightColor
��A K
)
��K L
;
��L M
}
�� 	
void
�� "
SetupMatrixConstants
��
(
��! "

��" /
cmd
��0 3
,
��3 4
ref
��5 8

��9 F

��G T
)
��T U
{
�� 	
ref
�� 

CameraData
�� 

cameraData
�� %
=
��& '
ref
��( +

��, 9
.
��9 :

cameraData
��: D
;
��D E
int
�� 
eyeCount
�� 
=
�� 

cameraData
�� %
.
��% &
xr
��& (
.
��( )
enabled
��) 0
&&
��1 3

cameraData
��4 >
.
��> ?
xr
��? A
.
��A B
singlePassEnabled
��B S
?
��T U
$num
��V W
:
��X Y
$num
��Z [
;
��[ \
	Matrix4x4
�� 
[
�� 
]
�� 

�� %
=
��& '
m_ScreenToWorld
��( 7
;
��7 8
for
�� 
(
�� 
int
�� 
eyeIndex
�� 
=
�� 
$num
��  !
;
��! "
eyeIndex
��# +
<
��, -
eyeCount
��. 6
;
��6 7
eyeIndex
��8 @
++
��@ B
)
��B C
{
�� 
	Matrix4x4
�� 
proj
�� 
=
��  

cameraData
��! +
.
��+ ,!
GetProjectionMatrix
��, ?
(
��? @
eyeIndex
��@ H
)
��H I
;
��I J
	Matrix4x4
�� 
view
�� 
=
��  

cameraData
��! +
.
��+ ,

��, 9
(
��9 :
eyeIndex
��: B
)
��B C
;
��C D
	Matrix4x4
�� 
gpuProj
�� !
=
��" #
GL
��$ &
.
��& '$
GetGPUProjectionMatrix
��' =
(
��= >
proj
��> B
,
��B C
false
��D I
)
��I J
;
��J K
	Matrix4x4
�� 
toScreen
�� "
=
��# $
new
��% (
	Matrix4x4
��) 2
(
��2 3
new
�� 
Vector4
�� 
(
��  
$num
��  $
*
��% &
this
��' +
.
��+ ,
RenderWidth
��, 7
,
��7 8
$num
��9 =
,
��= >
$num
��? C
,
��C D
$num
��E I
)
��I J
,
��J K
new
�� 
Vector4
�� 
(
��  
$num
��  $
,
��$ %
$num
��& *
*
��+ ,
this
��- 1
.
��1 2
RenderHeight
��2 >
,
��> ?
$num
��@ D
,
��D E
$num
��F J
)
��J K
,
��K L
new
�� 
Vector4
�� 
(
��  
$num
��  $
,
��$ %
$num
��& *
,
��* +
$num
��, 0
,
��0 1
$num
��2 6
)
��6 7
,
��7 8
new
�� 
Vector4
�� 
(
��  
$num
��  $
*
��% &
this
��' +
.
��+ ,
RenderWidth
��, 7
,
��7 8
$num
��9 =
*
��> ?
this
��@ D
.
��D E
RenderHeight
��E Q
,
��Q R
$num
��S W
,
��W X
$num
��Y ]
)
��] ^
)
�� 
;
�� 
	Matrix4x4
�� 

zScaleBias
�� $
=
��% &
	Matrix4x4
��' 0
.
��0 1
identity
��1 9
;
��9 :
if
�� 
(
�� 
DeferredConfig
�� "
.
��" #
IsOpenGL
��# +
)
��+ ,
{
�� 

zScaleBias
�� 
=
��  
new
��! $
	Matrix4x4
��% .
(
��. /
new
�� 
Vector4
�� #
(
��# $
$num
��$ (
,
��( )
$num
��* .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� #
(
��# $
$num
��$ (
,
��( )
$num
��* .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� #
(
��# $
$num
��$ (
,
��( )
$num
��* .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� #
(
��# $
$num
��$ (
,
��( )
$num
��* .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
)
�� 
;
�� 
}
�� 

�� 
[
�� 
eyeIndex
�� &
]
��& '
=
��( )
	Matrix4x4
��* 3
.
��3 4
Inverse
��4 ;
(
��; <
toScreen
��< D
*
��E F

zScaleBias
��G Q
*
��R S
gpuProj
��T [
*
��\ ]
view
��^ b
)
��b c
;
��c d
}
�� 
cmd
�� 
.
�� "
SetGlobalMatrixArray
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_ScreenToWorld
��5 C
,
��C D

��E R
)
��R S
;
��S T
}
�� 	
void
�� 

SortLights
��
(
�� 
ref
�� 
NativeArray
�� '
<
��' (

��( 5
.
��5 6
PrePunctualLight
��6 F
>
��F G
prePunctualLights
��H Y
)
��Y Z
{
�� 	

�� 
.
�� 
PrePunctualLight
�� *
[
��* +
]
��+ ,
array
��- 2
=
��3 4
prePunctualLights
��5 F
.
��F G
ToArray
��G N
(
��N O
)
��O P
;
��P Q
System
�� 
.
�� 
Array
�� 
.
�� 
Sort
�� 
<
�� 

�� +
.
��+ ,
PrePunctualLight
��, <
>
��< =
(
��= >
array
��> C
,
��C D
new
��E H"
SortPrePunctualLight
��I ]
(
��] ^
)
��^ _
)
��_ `
;
��` a
prePunctualLights
�� 
.
�� 
CopyFrom
�� &
(
��& '
array
��' ,
)
��, -
;
��- .
}
�� 	
bool
��  
CheckHasTileLights
��
(
��  
ref
��  #
NativeArray
��$ /
<
��/ 0
VisibleLight
��0 <
>
��< =

��> K
)
��K L
{
�� 	
for
�� 
(
�� 
int
�� 

�� "
=
��# $
$num
��% &
;
��& '

��( 5
<
��6 7

��8 E
.
��E F
Length
��F L
;
��L M
++
��N P

��P ]
)
��] ^
{
�� 
if
�� 
(
�� 
IsTileLight
�� 
(
��  

��  -
[
��- .

��. ;
]
��; <
)
��< =
)
��= >
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
void
�� 
PrecomputeLights
��
(
�� 
out
�� !
NativeArray
��" -
<
��- .

��. ;
.
��; <
PrePunctualLight
��< L
>
��L M
prePunctualLights
��N _
,
��_ `
out
�� !
NativeArray
��" -
<
��- .
ushort
��. 4
>
��4 5
stencilVisLights
��6 F
,
��F G
out
�� !
NativeArray
��" -
<
��- .
ushort
��. 4
>
��4 5$
stencilVisLightOffsets
��6 L
,
��L M
ref
�� !
NativeArray
��" -
<
��- .
VisibleLight
��. :
>
��: ;

��< I
,
��I J
bool
�� "!
hasAdditionalLights
��# 6
,
��6 7
	Matrix4x4
�� '
view
��( ,
,
��, -
bool
�� "
isOrthographic
��# 1
,
��1 2
float
�� #
zNear
��$ )
)
��) *
{
�� 	
const
�� 
int
�� 
lightTypeCount
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
	LightType
��, 5
.
��5 6
Disc
��6 :
+
��; <
$num
��= >
;
��> ?
if
�� 
(
�� 
!
�� !
hasAdditionalLights
�� $
)
��$ %
{
�� 
prePunctualLights
�� !
=
��" #
new
��$ '
NativeArray
��( 3
<
��3 4

��4 A
.
��A B
PrePunctualLight
��B R
>
��R S
(
��S T
$num
��T U
,
��U V
	Allocator
��W `
.
��` a
Temp
��a e
,
��e f 
NativeArrayOptions
��g y
.
��y z"
UninitializedMemory��z �
)��� �
;��� �
stencilVisLights
��  
=
��! "
new
��# &
NativeArray
��' 2
<
��2 3
ushort
��3 9
>
��9 :
(
��: ;
$num
��; <
,
��< =
	Allocator
��> G
.
��G H
Temp
��H L
,
��L M 
NativeArrayOptions
��N `
.
��` a!
UninitializedMemory
��a t
)
��t u
;
��u v$
stencilVisLightOffsets
�� &
=
��' (
new
��) ,
NativeArray
��- 8
<
��8 9
ushort
��9 ?
>
��? @
(
��@ A
lightTypeCount
��A O
,
��O P
	Allocator
��Q Z
.
��Z [
Temp
��[ _
,
��_ ` 
NativeArrayOptions
��a s
.
��s t"
UninitializedMemory��t �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
NativeArray
�� 
<
�� 
int
�� 
>
�� 
tileLightOffsets
�� -
=
��. /
new
��0 3
NativeArray
��4 ?
<
��? @
int
��@ C
>
��C D
(
��D E
lightTypeCount
��E S
,
��S T
	Allocator
��U ^
.
��^ _
Temp
��_ c
,
��c d 
NativeArrayOptions
��e w
.
��w x
ClearMemory��x �
)��� �
;��� �
NativeArray
�� 
<
�� 
int
�� 
>
�� 
tileLightCounts
�� ,
=
��- .
new
��/ 2
NativeArray
��3 >
<
��> ?
int
��? B
>
��B C
(
��C D
lightTypeCount
��D R
,
��R S
	Allocator
��T ]
.
��] ^
Temp
��^ b
,
��b c 
NativeArrayOptions
��d v
.
��v w
ClearMemory��w �
)��� �
;��� �
NativeArray
�	�	 
<
�	�	 
int
�	�	 
>
�	�	  
stencilLightCounts
�	�	 /
=
�	�	0 1
new
�	�	2 5
NativeArray
�	�	6 A
<
�	�	A B
int
�	�	B E
>
�	�	E F
(
�	�	F G
lightTypeCount
�	�	G U
,
�	�	U V
	Allocator
�	�	W `
.
�	�	` a
Temp
�	�	a e
,
�	�	e f 
NativeArrayOptions
�	�	g y
.
�	�	y z
ClearMemory�	�	z �
)�	�	� �
;�	�	� �$
stencilVisLightOffsets
�	�	 "
=
�	�	# $
new
�	�	% (
NativeArray
�	�	) 4
<
�	�	4 5
ushort
�	�	5 ;
>
�	�	; <
(
�	�	< =
lightTypeCount
�	�	= K
,
�	�	K L
	Allocator
�	�	M V
.
�	�	V W
Temp
�	�	W [
,
�	�	[ \ 
NativeArrayOptions
�	�	] o
.
�	�	o p
ClearMemory
�	�	p {
)
�	�	{ |
;
�	�	| }
for
�	�	 
(
�	�	 
ushort
�	�	 

�	�	 %
=
�	�	& '
$num
�	�	( )
;
�	�	) *

�	�	+ 8
<
�	�	9 :

�	�	; H
.
�	�	H I
Length
�	�	I O
;
�	�	O P
++
�	�	Q S

�	�	S `
)
�	�	` a
{
�	�	 
VisibleLight
�	�	 
vl
�	�	 
=
�	�	  !

�	�	" /
[
�	�	/ 0

�	�	0 =
]
�	�	= >
;
�	�	> ?
if
�	�	 
(
�	�	 
this
�	�	 
.
�	�	 "
TiledDeferredShading
�	�	 -
&&
�	�	. 0
IsTileLight
�	�	1 <
(
�	�	< =
vl
�	�	= ?
)
�	�	? @
)
�	�	@ A
++
�	�	 
tileLightOffsets
�	�	 &
[
�	�	& '
(
�	�	' (
int
�	�	( +
)
�	�	+ ,
vl
�	�	, .
.
�	�	. /
	lightType
�	�	/ 8
]
�	�	8 9
;
�	�	9 :
else
�	�	 
++
�	�	 $
stencilVisLightOffsets
�	�	 ,
[
�	�	, -
(
�	�	- .
int
�	�	. 1
)
�	�	1 2
vl
�	�	2 4
.
�	�	4 5
	lightType
�	�	5 >
]
�	�	> ?
;
�	�	? @
}
�	�	 
int
�	�	 !
totalTileLightCount
�	�	 #
=
�	�	$ %
tileLightOffsets
�	�	& 6
[
�	�	6 7
(
�	�	7 8
int
�	�	8 ;
)
�	�	; <
	LightType
�	�	< E
.
�	�	E F
Point
�	�	F K
]
�	�	K L
+
�	�	M N
tileLightOffsets
�	�	O _
[
�	�	_ `
(
�	�	` a
int
�	�	a d
)
�	�	d e
	LightType
�	�	e n
.
�	�	n o
Spot
�	�	o s
]
�	�	s t
;
�	�	t u
int
�	�	 $
totalStencilLightCount
�	�	 &
=
�	�	' ($
stencilVisLightOffsets
�	�	) ?
[
�	�	? @
(
�	�	@ A
int
�	�	A D
)
�	�	D E
	LightType
�	�	E N
.
�	�	N O
Spot
�	�	O S
]
�	�	S T
+
�	�	U V$
stencilVisLightOffsets
�	�	W m
[
�	�	m n
(
�	�	n o
int
�	�	o r
)
�	�	r s
	LightType
�	�	s |
.
�	�	| }
Directional�	�	} �
]�	�	� �
+�	�	� �&
stencilVisLightOffsets�	�	� �
[�	�	� �
(�	�	� �
int�	�	� �
)�	�	� �
	LightType�	�	� �
.�	�	� �
Point�	�	� �
]�	�	� �
;�	�	� �
prePunctualLights
�	�	 
=
�	�	 
new
�	�	  #
NativeArray
�	�	$ /
<
�	�	/ 0

�	�	0 =
.
�	�	= >
PrePunctualLight
�	�	> N
>
�	�	N O
(
�	�	O P!
totalTileLightCount
�	�	P c
,
�	�	c d
	Allocator
�	�	e n
.
�	�	n o
Temp
�	�	o s
,
�	�	s t!
NativeArrayOptions�	�	u �
.�	�	� �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
stencilVisLights
�	�	 
=
�	�	 
new
�	�	 "
NativeArray
�	�	# .
<
�	�	. /
ushort
�	�	/ 5
>
�	�	5 6
(
�	�	6 7$
totalStencilLightCount
�	�	7 M
,
�	�	M N
	Allocator
�	�	O X
.
�	�	X Y
Temp
�	�	Y ]
,
�	�	] ^ 
NativeArrayOptions
�	�	_ q
.
�	�	q r"
UninitializedMemory�	�	r �
)�	�	� �
;�	�	� �
for
�	�	 
(
�	�	 
int
�	�	 
i
�	�	 
=
�	�	 
$num
�	�	 
,
�	�	 
toffset
�	�	 #
=
�	�	$ %
$num
�	�	& '
;
�	�	' (
i
�	�	) *
<
�	�	+ ,
tileLightOffsets
�	�	- =
.
�	�	= >
Length
�	�	> D
;
�	�	D E
++
�	�	F H
i
�	�	H I
)
�	�	I J
{
�	�	 
int
�	�	 
c
�	�	 
=
�	�	 
tileLightOffsets
�	�	 (
[
�	�	( )
i
�	�	) *
]
�	�	* +
;
�	�	+ ,
tileLightOffsets
�	�	  
[
�	�	  !
i
�	�	! "
]
�	�	" #
=
�	�	$ %
toffset
�	�	& -
;
�	�	- .
toffset
�	�	 
+=
�	�	 
c
�	�	 
;
�	�	 
}
�	�	 
for
�	�	 
(
�	�	 
int
�	�	 
i
�	�	 
=
�	�	 
$num
�	�	 
,
�	�	 
soffset
�	�	 #
=
�	�	$ %
$num
�	�	& '
;
�	�	' (
i
�	�	) *
<
�	�	+ ,$
stencilVisLightOffsets
�	�	- C
.
�	�	C D
Length
�	�	D J
;
�	�	J K
++
�	�	L N
i
�	�	N O
)
�	�	O P
{
�	�	 
int
�	�	 
c
�	�	 
=
�	�	 $
stencilVisLightOffsets
�	�	 .
[
�	�	. /
i
�	�	/ 0
]
�	�	0 1
;
�	�	1 2$
stencilVisLightOffsets
�	�	 &
[
�	�	& '
i
�	�	' (
]
�	�	( )
=
�	�	* +
(
�	�	, -
ushort
�	�	- 3
)
�	�	3 4
soffset
�	�	4 ;
;
�	�	; <
soffset
�	�	 
+=
�	�	 
c
�	�	 
;
�	�	 
}
�	�	 
for
�	�	 
(
�	�	 
ushort
�	�	 

�	�	 %
=
�	�	& '
$num
�	�	( )
;
�	�	) *

�	�	+ 8
<
�	�	9 :

�	�	; H
.
�	�	H I
Length
�	�	I O
;
�	�	O P
++
�	�	Q S

�	�	S `
)
�	�	` a
{
�	�	 
VisibleLight
�	�	 
vl
�	�	 
=
�	�	  !

�	�	" /
[
�	�	/ 0

�	�	0 =
]
�	�	= >
;
�	�	> ?
if
�	�	 
(
�	�	 
this
�	�	 
.
�	�	 "
TiledDeferredShading
�	�	 -
&&
�	�	. 0
IsTileLight
�	�	1 <
(
�	�	< =
vl
�	�	= ?
)
�	�	? @
)
�	�	@ A
{
�	�	 

�	�	 !
.
�	�	! "
PrePunctualLight
�	�	" 2
ppl
�	�	3 6
;
�	�	6 7
ppl
�	�	 
.
�	�	 
posVS
�	�	 
=
�	�	 
view
�	�	  $
.
�	�	$ %

�	�	% 2
(
�	�	2 3
vl
�	�	3 5
.
�	�	5 6 
localToWorldMatrix
�	�	6 H
.
�	�	H I
	GetColumn
�	�	I R
(
�	�	R S
$num
�	�	S T
)
�	�	T U
)
�	�	U V
;
�	�	V W
ppl
�	�	 
.
�	�	 
radius
�	�	 
=
�	�	  
vl
�	�	! #
.
�	�	# $
range
�	�	$ )
;
�	�	) *
ppl
�	�	 
.
�	�	 
minDist
�	�	 
=
�	�	  !
max
�	�	" %
(
�	�	% &
$num
�	�	& *
,
�	�	* +
length
�	�	, 2
(
�	�	2 3
ppl
�	�	3 6
.
�	�	6 7
posVS
�	�	7 <
)
�	�	< =
-
�	�	> ?
ppl
�	�	@ C
.
�	�	C D
radius
�	�	D J
)
�	�	J K
;
�	�	K L
ppl
�	�	 
.
�	�	 
	screenPos
�	�	 !
=
�	�	" #
new
�	�	$ '
Vector2
�	�	( /
(
�	�	/ 0
ppl
�	�	0 3
.
�	�	3 4
posVS
�	�	4 9
.
�	�	9 :
x
�	�	: ;
,
�	�	; <
ppl
�	�	= @
.
�	�	@ A
posVS
�	�	A F
.
�	�	F G
y
�	�	G H
)
�	�	H I
;
�	�	I J
if
�	�	 
(
�	�	 
!
�	�	 
isOrthographic
�	�	 '
&&
�	�	( *
ppl
�	�	+ .
.
�	�	. /
posVS
�	�	/ 4
.
�	�	4 5
z
�	�	5 6
<=
�	�	7 9
zNear
�	�	: ?
)
�	�	? @
ppl
�	�	 
.
�	�	 
	screenPos
�	�	 %
=
�	�	& '
ppl
�	�	( +
.
�	�	+ ,
	screenPos
�	�	, 5
*
�	�	6 7
(
�	�	8 9
-
�	�	9 :
zNear
�	�	: ?
/
�	�	@ A
ppl
�	�	B E
.
�	�	E F
posVS
�	�	F K
.
�	�	K L
z
�	�	L M
)
�	�	M N
;
�	�	N O
ppl
�	�	 
.
�	�	 

�	�	 %
=
�	�	& '

�	�	( 5
;
�	�	5 6
int
�	�	 
i
�	�	 
=
�	�	 
tileLightCounts
�	�	 +
[
�	�	+ ,
(
�	�	, -
int
�	�	- 0
)
�	�	0 1
vl
�	�	1 3
.
�	�	3 4
	lightType
�	�	4 =
]
�	�	= >
++
�	�	> @
;
�	�	@ A
prePunctualLights
�	�	 %
[
�	�	% &
tileLightOffsets
�	�	& 6
[
�	�	6 7
(
�	�	7 8
int
�	�	8 ;
)
�	�	; <
vl
�	�	< >
.
�	�	> ?
	lightType
�	�	? H
]
�	�	H I
+
�	�	J K
i
�	�	L M
]
�	�	M N
=
�	�	O P
ppl
�	�	Q T
;
�	�	T U
}
�	�	 
else
�	�	 
{
�	�	 
int
�	�	 
i
�	�	 
=
�	�	  
stencilLightCounts
�	�	 .
[
�	�	. /
(
�	�	/ 0
int
�	�	0 3
)
�	�	3 4
vl
�	�	4 6
.
�	�	6 7
	lightType
�	�	7 @
]
�	�	@ A
++
�	�	A C
;
�	�	C D
stencilVisLights
�	�	 $
[
�	�	$ %$
stencilVisLightOffsets
�	�	% ;
[
�	�	; <
(
�	�	< =
int
�	�	= @
)
�	�	@ A
vl
�	�	A C
.
�	�	C D
	lightType
�	�	D M
]
�	�	M N
+
�	�	O P
i
�	�	Q R
]
�	�	R S
=
�	�	T U

�	�	V c
;
�	�	c d
}
�	�	 
}
�	�	 
tileLightOffsets
�	�	 
.
�	�	 
Dispose
�	�	 $
(
�	�	$ %
)
�	�	% &
;
�	�	& '
tileLightCounts
�	�	 
.
�	�	 
Dispose
�	�	 #
(
�	�	# $
)
�	�	$ %
;
�	�	% & 
stencilLightCounts
�	�	 
.
�	�	 
Dispose
�	�	 &
(
�	�	& '
)
�	�	' (
;
�	�	( )
}
�	�	 	
void
�	�	 
RenderTileLights
�	�	
(
�	�	 %
ScriptableRenderContext
�	�	 5
context
�	�	6 =
,
�	�	= >

�	�	? L
cmd
�	�	M P
,
�	�	P Q
ref
�	�	R U

�	�	V c

�	�	d q
)
�	�	q r
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	  
m_HasTileVisLights
�	�	 #
)
�	�	# $
return
�	�	 
;
�	�	 
if
�	�	 
(
�	�	 $
m_TileDeferredMaterial
�	�	 &
==
�	�	' )
null
�	�	* .
)
�	�	. /
{
�	�	 
Debug
�	�	 
.
�	�	 
LogErrorFormat
�	�	 $
(
�	�	$ %
$str�	�	% �
,�	�	� �&
m_TileDeferredMaterial�	�	� �
,�	�	� �
GetType�	�	� �
(�	�	� �
)�	�	� �
.�	�	� �
Name�	�	� �
)�	�	� �
;�	�	� �
return
�	�	 
;
�	�	 
}
�	�	 
Profiler
�	�	 
.
�	�	 
BeginSample
�	�	  
(
�	�	  !!
k_DeferredTiledPass
�	�	! 4
)
�	�	4 5
;
�	�	5 6
DrawCall
�	�	 
[
�	�	 
]
�	�	 
	drawCalls
�	�	  
=
�	�	! "
new
�	�	# &
DrawCall
�	�	' /
[
�	�	/ 0
$num
�	�	0 3
]
�	�	3 4
;
�	�	4 5
int
�	�	 

�	�	 
=
�	�	 
$num
�	�	  !
;
�	�	! "
{
�	�	 
ref
�	�	 

�	�	 !
tiler
�	�	" '
=
�	�	( )
ref
�	�	* -
m_Tilers
�	�	. 6
[
�	�	6 7
$num
�	�	7 8
]
�	�	8 9
;
�	�	9 :
int
�	�	 
sizeof_TileData
�	�	 #
=
�	�	$ %
$num
�	�	& (
;
�	�	( )
int
�	�	 "
sizeof_vec4_TileData
�	�	 (
=
�	�	) *
sizeof_TileData
�	�	+ :
>>
�	�	; =
$num
�	�	> ?
;
�	�	? @
int
�	�	 &
sizeof_PunctualLightData
�	�	 ,
=
�	�	- .
System
�	�	/ 5
.
�	�	5 6
Runtime
�	�	6 =
.
�	�	= >
InteropServices
�	�	> M
.
�	�	M N
Marshal
�	�	N U
.
�	�	U V
SizeOf
�	�	V \
(
�	�	\ ]
typeof
�	�	] c
(
�	�	c d
PunctualLightData
�	�	d u
)
�	�	u v
)
�	�	v w
;
�	�	w x
int
�	�	 +
sizeof_vec4_PunctualLightData
�	�	 1
=
�	�	2 3&
sizeof_PunctualLightData
�	�	4 L
>>
�	�	M O
$num
�	�	P Q
;
�	�	Q R
int
�	�	 

tileXCount
�	�	 
=
�	�	  
tiler
�	�	! &
.
�	�	& '

TileXCount
�	�	' 1
;
�	�	1 2
int
�	�	 

tileYCount
�	�	 
=
�	�	  
tiler
�	�	! &
.
�	�	& '

TileYCount
�	�	' 1
;
�	�	1 2
int
�	�	 
maxLightPerTile
�	�	 #
=
�	�	$ %
tiler
�	�	& +
.
�	�	+ ,
MaxLightPerTile
�	�	, ;
;
�	�	; <
NativeArray
�	�	 
<
�	�	 
ushort
�	�	 "
>
�	�	" #
tiles
�	�	$ )
=
�	�	* +
tiler
�	�	, 1
.
�	�	1 2
Tiles
�	�	2 7
;
�	�	7 8
NativeArray
�	�	 
<
�	�	 
uint
�	�	  
>
�	�	  !
tileHeaders
�	�	" -
=
�	�	. /
tiler
�	�	0 5
.
�	�	5 6
TileHeaders
�	�	6 A
;
�	�	A B
int
�	�	 
instanceOffset
�	�	 "
=
�	�	# $
$num
�	�	% &
;
�	�	& '
int
�	�	 
	tileCount
�	�	 
=
�	�	 
$num
�	�	  !
;
�	�	! "
int
�	�	 

lightCount
�	�	 
=
�	�	  
$num
�	�	! "
;
�	�	" #
int
�	�	 
relLightIndices
�	�	 #
=
�	�	$ %
$num
�	�	& '
;
�	�	' (

�	�	 
	_tileList
�	�	 '
=
�	�	( ) 
DeferredShaderData
�	�	* <
.
�	�	< =
instance
�	�	= E
.
�	�	E F

�	�	F S
<
�	�	S T
TileData
�	�	T \
>
�	�	\ ]
(
�	�	] ^ 
m_MaxTilesPerBatch
�	�	^ p
,
�	�	p q
DeferredConfig�	�	r �
.�	�	� �%
UseCBufferForTileList�	�	� �
)�	�	� �
;�	�	� �

�	�	 "
_punctualLightBuffer
�	�	 2
=
�	�	3 4 
DeferredShaderData
�	�	5 G
.
�	�	G H
instance
�	�	H P
.
�	�	P Q

�	�	Q ^
<
�	�	^ _
PunctualLightData
�	�	_ p
>
�	�	p q
(
�	�	q r)
m_MaxPunctualLightPerBatch�	�	r �
,�	�	� �
DeferredConfig�	�	� �
.�	�	� �&
UseCBufferForLightData�	�	� �
)�	�	� �
;�	�	� �

�	�	 

�	�	 +
=
�	�	, - 
DeferredShaderData
�	�	. @
.
�	�	@ A
instance
�	�	A I
.
�	�	I J

�	�	J W
<
�	�	W X
uint
�	�	X \
>
�	�	\ ]
(
�	�	] ^*
m_MaxRelLightIndicesPerBatch
�	�	^ z
,
�	�	z {
DeferredConfig�	�	| �
.�	�	� �&
UseCBufferForLightList�	�	� �
)�	�	� �
;�	�	� �
NativeArray
�	�	 
<
�	�	 
uint4
�	�	 !
>
�	�	! "
tileList
�	�	# +
=
�	�	, -
new
�	�	. 1
NativeArray
�	�	2 =
<
�	�	= >
uint4
�	�	> C
>
�	�	C D
(
�	�	D E 
m_MaxTilesPerBatch
�	�	E W
*
�	�	X Y"
sizeof_vec4_TileData
�	�	Z n
,
�	�	n o
	Allocator
�	�	p y
.
�	�	y z
Temp
�	�	z ~
,
�	�	~ "
NativeArrayOptions�	�	� �
.�	�	� �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
NativeArray
�	�	 
<
�	�	 
uint4
�	�	 !
>
�	�	! "!
punctualLightBuffer
�	�	# 6
=
�	�	7 8
new
�	�	9 <
NativeArray
�	�	= H
<
�	�	H I
uint4
�	�	I N
>
�	�	N O
(
�	�	O P(
m_MaxPunctualLightPerBatch
�	�	P j
*
�	�	k l,
sizeof_vec4_PunctualLightData�	�	m �
,�	�	� �
	Allocator�	�	� �
.�	�	� �
Temp�	�	� �
,�	�	� �"
NativeArrayOptions�	�	� �
.�	�	� �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
NativeArray
�	�	 
<
�	�	 
uint
�	�	  
>
�	�	  !
relLightList
�	�	" .
=
�	�	/ 0
new
�	�	1 4
NativeArray
�	�	5 @
<
�	�	@ A
uint
�	�	A E
>
�	�	E F
(
�	�	F G*
m_MaxRelLightIndicesPerBatch
�	�	G c
,
�	�	c d
	Allocator
�	�	e n
.
�	�	n o
Temp
�	�	o s
,
�	�	s t!
NativeArrayOptions�	�	u �
.�	�	� �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
NativeArray
�	�	 
<
�	�	 
ushort
�	�	 "
>
�	�	" #

�	�	$ 1
=
�	�	2 3
new
�	�	4 7
NativeArray
�	�	8 C
<
�	�	C D
ushort
�	�	D J
>
�	�	J K
(
�	�	K L
maxLightPerTile
�	�	L [
,
�	�	[ \
	Allocator
�	�	] f
.
�	�	f g
Temp
�	�	g k
,
�	�	k l 
NativeArrayOptions
�	�	m 
.�	�	 �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
NativeArray
�	�	 
<
�	�	 
ushort
�	�	 "
>
�	�	" #!
visLightToRelLights
�	�	$ 7
=
�	�	8 9
new
�	�	: =
NativeArray
�	�	> I
<
�	�	I J
ushort
�	�	J P
>
�	�	P Q
(
�	�	Q R

�	�	R _
.
�	�	_ `
	lightData
�	�	` i
.
�	�	i j

�	�	j w
.
�	�	w x
Length
�	�	x ~
,
�	�	~ 
	Allocator�	�	� �
.�	�	� �
Temp�	�	� �
,�	�	� �"
NativeArrayOptions�	�	� �
.�	�	� �#
UninitializedMemory�	�	� �
)�	�	� �
;�	�	� �
BitArray
�	�	 

usedLights
�	�	 #
=
�	�	$ %
new
�	�	& )
BitArray
�	�	* 2
(
�	�	2 3

�	�	3 @
.
�	�	@ A
	lightData
�	�	A J
.
�	�	J K

�	�	K X
.
�	�	X Y
Length
�	�	Y _
,
�	�	_ `
	Allocator
�	�	a j
.
�	�	j k
Temp
�	�	k o
,
�	�	o p!
NativeArrayOptions�	�	q �
.�	�	� �
ClearMemory�	�	� �
)�	�	� �
;�	�	� �
for
�	�	 
(
�	�	 
int
�	�	 
j
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
j
�	�	  !
<
�	�	" #

tileYCount
�	�	$ .
;
�	�	. /
++
�	�	0 2
j
�	�	2 3
)
�	�	3 4
{
�	�	 
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

tileXCount
�	�	( 2
;
�	�	2 3
++
�	�	4 6
i
�	�	6 7
)
�	�	7 8
{
�	�	 
int
�	�	 

tileOffset
�	�	 &
;
�	�	& '
int
�	�	 
tileLightCount
�	�	 *
;
�	�	* +
tiler
�	�	 
.
�	�	 #
GetTileOffsetAndCount
�	�	 3
(
�	�	3 4
i
�	�	4 5
,
�	�	5 6
j
�	�	7 8
,
�	�	8 9
out
�	�	: =

tileOffset
�	�	> H
,
�	�	H I
out
�	�	J M
tileLightCount
�	�	N \
)
�	�	\ ]
;
�	�	] ^
if
�	�	 
(
�	�	 
tileLightCount
�	�	 *
==
�	�	+ -
$num
�	�	. /
)
�	�	/ 0
continue
�	�	 $
;
�	�	$ %
int
�	�	 
trimmedLightCount
�	�	 -
=
�	�	. /

TrimLights
�	�	0 :
(
�	�	: ;
ref
�	�	; >

�	�	? L
,
�	�	L M
ref
�	�	N Q
tiles
�	�	R W
,
�	�	W X

tileOffset
�	�	Y c
,
�	�	c d
tileLightCount
�	�	e s
,
�	�	s t
ref
�	�	u x

usedLights�	�	y �
)�	�	� �
;�	�	� �

Assertions
�
�
 "
.
�
�
" #
Assert
�
�
# )
.
�
�
) *
IsTrue
�
�
* 0
(
�
�
0 1
trimmedLightCount
�
�
1 B
<=
�
�
C E
maxLightPerTile
�
�
F U
)
�
�
U V
;
�
�
V W
bool
�
�
 
tileListIsFull
�
�
 +
=
�
�
, -
(
�
�
. /
	tileCount
�
�
/ 8
==
�
�
9 ; 
m_MaxTilesPerBatch
�
�
< N
)
�
�
N O
;
�
�
O P
bool
�
�
 
lightBufferIsFull
�
�
 .
=
�
�
/ 0
(
�
�
1 2

lightCount
�
�
2 <
+
�
�
= >
trimmedLightCount
�
�
? P
>
�
�
Q R(
m_MaxPunctualLightPerBatch
�
�
S m
)
�
�
m n
;
�
�
n o
bool
�
�
  
relLightListIsFull
�
�
 /
=
�
�
0 1
(
�
�
2 3
relLightIndices
�
�
3 B
+
�
�
C D
tileLightCount
�
�
E S
>
�
�
T U*
m_MaxRelLightIndicesPerBatch
�
�
V r
)
�
�
r s
;
�
�
s t
if
�
�
 
(
�
�
 
tileListIsFull
�
�
 *
||
�
�
+ -
lightBufferIsFull
�
�
. ?
||
�
�
@ B 
relLightListIsFull
�
�
C U
)
�
�
U V
{
�
�
 
	drawCalls
�
�
 %
[
�
�
% &

�
�
& 3
++
�
�
3 5
]
�
�
5 6
=
�
�
7 8
new
�
�
9 <
DrawCall
�
�
= E
{
�
�
 
tileList
�
�
  (
=
�
�
) *
	_tileList
�
�
+ 4
,
�
�
4 5!
punctualLightBuffer
�
�
  3
=
�
�
4 5"
_punctualLightBuffer
�
�
6 J
,
�
�
J K
relLightList
�
�
  ,
=
�
�
- .

�
�
/ <
,
�
�
< =
tileListSize
�
�
  ,
=
�
�
- .
	tileCount
�
�
/ 8
*
�
�
9 :
sizeof_TileData
�
�
; J
,
�
�
J K%
punctualLightBufferSize
�
�
  7
=
�
�
8 9

lightCount
�
�
: D
*
�
�
E F&
sizeof_PunctualLightData
�
�
G _
,
�
�
_ `
relLightListSize
�
�
  0
=
�
�
1 2
Align
�
�
3 8
(
�
�
8 9
relLightIndices
�
�
9 H
,
�
�
H I
$num
�
�
J K
)
�
�
K L
*
�
�
M N
$num
�
�
O P
,
�
�
P Q
instanceOffset
�
�
  .
=
�
�
/ 0
instanceOffset
�
�
1 ?
,
�
�
? @

�
�
  -
=
�
�
. /
	tileCount
�
�
0 9
-
�
�
: ;
instanceOffset
�
�
< J
}
�
�
 
;
�
�
 
if
�
�
 
(
�
�
  
tileListIsFull
�
�
  .
)
�
�
. /
{
�
�
 
	_tileList
�
�
  )
.
�
�
) *
SetData
�
�
* 1
(
�
�
1 2
tileList
�
�
2 :
,
�
�
: ;
$num
�
�
< =
,
�
�
= >
$num
�
�
? @
,
�
�
@ A
tileList
�
�
B J
.
�
�
J K
Length
�
�
K Q
)
�
�
Q R
;
�
�
R S
	_tileList
�
�
  )
=
�
�
* + 
DeferredShaderData
�
�
, >
.
�
�
> ?
instance
�
�
? G
.
�
�
G H

�
�
H U
<
�
�
U V
TileData
�
�
V ^
>
�
�
^ _
(
�
�
_ ` 
m_MaxTilesPerBatch
�
�
` r
,
�
�
r s
DeferredConfig�
�
t �
.�
�
� �%
UseCBufferForTileList�
�
� �
)�
�
� �
;�
�
� �
	tileCount
�
�
  )
=
�
�
* +
$num
�
�
, -
;
�
�
- .
}
�
�
 
if
�
�
 
(
�
�
  
lightBufferIsFull
�
�
  1
)
�
�
1 2
{
�
�
 "
_punctualLightBuffer
�
�
  4
.
�
�
4 5
SetData
�
�
5 <
(
�
�
< =!
punctualLightBuffer
�
�
= P
,
�
�
P Q
$num
�
�
R S
,
�
�
S T
$num
�
�
U V
,
�
�
V W!
punctualLightBuffer
�
�
X k
.
�
�
k l
Length
�
�
l r
)
�
�
r s
;
�
�
s t"
_punctualLightBuffer
�
�
  4
=
�
�
5 6 
DeferredShaderData
�
�
7 I
.
�
�
I J
instance
�
�
J R
.
�
�
R S

�
�
S `
<
�
�
` a
PunctualLightData
�
�
a r
>
�
�
r s
(
�
�
s t)
m_MaxPunctualLightPerBatch�
�
t �
,�
�
� �
DeferredConfig�
�
� �
.�
�
� �&
UseCBufferForLightData�
�
� �
)�
�
� �
;�
�
� �

lightCount
�
�
  *
=
�
�
+ ,
$num
�
�
- .
;
�
�
. /
trimmedLightCount
�
�
  1
=
�
�
2 3
tileLightCount
�
�
4 B
;
�
�
B C
for
�
�
  #
(
�
�
$ %
int
�
�
% (
l
�
�
) *
=
�
�
+ ,
$num
�
�
- .
;
�
�
. /
l
�
�
0 1
<
�
�
2 3
tileLightCount
�
�
4 B
;
�
�
B C
++
�
�
D F
l
�
�
F G
)
�
�
G H

�
�
$ 1
[
�
�
1 2
l
�
�
2 3
]
�
�
3 4
=
�
�
5 6
tiles
�
�
7 <
[
�
�
< =

tileOffset
�
�
= G
+
�
�
H I
l
�
�
J K
]
�
�
K L
;
�
�
L M

usedLights
�
�
  *
.
�
�
* +
Clear
�
�
+ 0
(
�
�
0 1
)
�
�
1 2
;
�
�
2 3
}
�
�
 
if
�
�
 
(
�
�
   
relLightListIsFull
�
�
  2
)
�
�
2 3
{
�
�
 

�
�
  -
.
�
�
- .
SetData
�
�
. 5
(
�
�
5 6
relLightList
�
�
6 B
,
�
�
B C
$num
�
�
D E
,
�
�
E F
$num
�
�
G H
,
�
�
H I
relLightList
�
�
J V
.
�
�
V W
Length
�
�
W ]
)
�
�
] ^
;
�
�
^ _

�
�
  -
=
�
�
. / 
DeferredShaderData
�
�
0 B
.
�
�
B C
instance
�
�
C K
.
�
�
K L

�
�
L Y
<
�
�
Y Z
uint
�
�
Z ^
>
�
�
^ _
(
�
�
_ `*
m_MaxRelLightIndicesPerBatch
�
�
` |
,
�
�
| }
DeferredConfig�
�
~ �
.�
�
� �&
UseCBufferForLightList�
�
� �
)�
�
� �
;�
�
� �
relLightIndices
�
�
  /
=
�
�
0 1
$num
�
�
2 3
;
�
�
3 4
}
�
�
 
instanceOffset
�
�
 *
=
�
�
+ ,
	tileCount
�
�
- 6
;
�
�
6 7
}
�
�
 
int
�
�
 
headerOffset
�
�
 (
=
�
�
) *
tiler
�
�
+ 0
.
�
�
0 1!
GetTileHeaderOffset
�
�
1 D
(
�
�
D E
i
�
�
E F
,
�
�
F G
j
�
�
H I
)
�
�
I J
;
�
�
J K
uint
�
�
 
listBitMask
�
�
 (
=
�
�
) *
tileHeaders
�
�
+ 6
[
�
�
6 7
headerOffset
�
�
7 C
+
�
�
D E
$num
�
�
F G
]
�
�
G H
;
�
�
H I

�
�
 %
(
�
�
% &
ref
�
�
& )
tileList
�
�
* 2
,
�
�
2 3
	tileCount
�
�
4 =
,
�
�
= >

PackTileID
�
�
? I
(
�
�
I J
(
�
�
J K
uint
�
�
K O
)
�
�
O P
i
�
�
P Q
,
�
�
Q R
(
�
�
S T
uint
�
�
T X
)
�
�
X Y
j
�
�
Y Z
)
�
�
Z [
,
�
�
[ \
listBitMask
�
�
] h
,
�
�
h i
(
�
�
j k
ushort
�
�
k q
)
�
�
q r
relLightIndices�
�
r �
,�
�
� �
(�
�
� �
ushort�
�
� �
)�
�
� �
tileLightCount�
�
� �
)�
�
� �
;�
�
� �
++
�
�
 
	tileCount
�
�
 #
;
�
�
# $
for
�
�
 
(
�
�
 
int
�
�
  
l
�
�
! "
=
�
�
# $
$num
�
�
% &
;
�
�
& '
l
�
�
( )
<
�
�
* +
trimmedLightCount
�
�
, =
;
�
�
= >
++
�
�
? A
l
�
�
A B
)
�
�
B C
{
�
�
 
int
�
�
 

�
�
  -
=
�
�
. /

�
�
0 =
[
�
�
= >
l
�
�
> ?
]
�
�
? @
;
�
�
@ A$
StorePunctualLightData
�
�
 2
(
�
�
2 3
ref
�
�
3 6!
punctualLightBuffer
�
�
7 J
,
�
�
J K

lightCount
�
�
L V
,
�
�
V W
ref
�
�
X [

�
�
\ i
.
�
�
i j
	lightData
�
�
j s
.
�
�
s t

�
t �
,�
�
� �

�
� �
)�
�
� �
;�
�
� �!
visLightToRelLights
�
�
 /
[
�
�
/ 0

�
�
0 =
]
�
�
= >
=
�
�
? @
(
�
�
A B
ushort
�
�
B H
)
�
�
H I

lightCount
�
�
I S
;
�
�
S T
++
�
�
 

lightCount
�
�
 (
;
�
�
( )

usedLights
�
�
 &
.
�
�
& '
Set
�
�
' *
(
�
�
* +

�
�
+ 8
,
�
�
8 9
true
�
�
: >
)
�
�
> ?
;
�
�
? @
}
�
�
 
for
�
�
 
(
�
�
 
int
�
�
  
l
�
�
! "
=
�
�
# $
$num
�
�
% &
;
�
�
& '
l
�
�
( )
<
�
�
* +
tileLightCount
�
�
, :
;
�
�
: ;
++
�
�
< >
l
�
�
> ?
)
�
�
? @
{
�
�
 
ushort
�
�
 "

�
�
# 0
=
�
�
4 5
tiles
�
�
6 ;
[
�
�
; <

tileOffset
�
�
< F
+
�
�
X Y
l
�
�
Z [
]
�
�
[ \
;
�
�
\ ]
ushort
�
�
 "
relLightBitRange
�
�
# 3
=
�
�
4 5
tiles
�
�
6 ;
[
�
�
; <

tileOffset
�
�
< F
+
�
�
G H
tileLightCount
�
�
I W
+
�
�
X Y
l
�
�
Z [
]
�
�
[ \
;
�
�
\ ]
ushort
�
�
 "

�
�
# 0
=
�
�
1 2!
visLightToRelLights
�
�
3 F
[
�
�
F G

�
�
G T
]
�
�
T U
;
�
�
U V
relLightList
�
�
 (
[
�
�
( )
relLightIndices
�
�
) 8
++
�
�
8 :
]
�
�
: ;
=
�
�
< =
(
�
�
> ?
uint
�
�
? C
)
�
�
C D

�
�
D Q
|
�
�
R S
(
�
�
T U
uint
�
�
U Y
)
�
�
Y Z
(
�
�
Z [
relLightBitRange
�
�
[ k
<<
�
�
l n
$num
�
�
o q
)
�
�
q r
;
�
�
r s
}
�
�
 
}
�
�
 
}
�
�
 
int
�
�
 

�
�
 !
=
�
�
" #
	tileCount
�
�
$ -
-
�
�
. /
instanceOffset
�
�
0 >
;
�
�
> ?
if
�
�
 
(
�
�
 

�
�
 !
>
�
�
" #
$num
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
 
	_tileList
�
�
 
.
�
�
 
SetData
�
�
 %
(
�
�
% &
tileList
�
�
& .
,
�
�
. /
$num
�
�
0 1
,
�
�
1 2
$num
�
�
3 4
,
�
�
4 5
tileList
�
�
6 >
.
�
�
> ?
Length
�
�
? E
)
�
�
E F
;
�
�
F G"
_punctualLightBuffer
�
�
 (
.
�
�
( )
SetData
�
�
) 0
(
�
�
0 1!
punctualLightBuffer
�
�
1 D
,
�
�
D E
$num
�
�
F G
,
�
�
G H
$num
�
�
I J
,
�
�
J K!
punctualLightBuffer
�
�
L _
.
�
�
_ `
Length
�
�
` f
)
�
�
f g
;
�
�
g h

�
�
 !
.
�
�
! "
SetData
�
�
" )
(
�
�
) *
relLightList
�
�
* 6
,
�
�
6 7
$num
�
�
8 9
,
�
�
9 :
$num
�
�
; <
,
�
�
< =
relLightList
�
�
> J
.
�
�
J K
Length
�
�
K Q
)
�
�
Q R
;
�
�
R S
	drawCalls
�
�
 
[
�
�
 

�
�
 +
++
�
�
+ -
]
�
�
- .
=
�
�
/ 0
new
�
�
1 4
DrawCall
�
�
5 =
{
�
�
 
tileList
�
�
  
=
�
�
! "
	_tileList
�
�
# ,
,
�
�
, -!
punctualLightBuffer
�
�
 +
=
�
�
, -"
_punctualLightBuffer
�
�
. B
,
�
�
B C
relLightList
�
�
 $
=
�
�
% &

�
�
' 4
,
�
�
4 5
tileListSize
�
�
 $
=
�
�
% &
	tileCount
�
�
' 0
*
�
�
1 2
sizeof_TileData
�
�
3 B
,
�
�
B C%
punctualLightBufferSize
�
�
 /
=
�
�
0 1

lightCount
�
�
2 <
*
�
�
= >&
sizeof_PunctualLightData
�
�
? W
,
�
�
W X
relLightListSize
�
�
 (
=
�
�
) *
Align
�
�
+ 0
(
�
�
0 1
relLightIndices
�
�
1 @
,
�
�
@ A
$num
�
�
B C
)
�
�
C D
*
�
�
E F
$num
�
�
G H
,
�
�
H I
instanceOffset
�
�
 &
=
�
�
' (
instanceOffset
�
�
) 7
,
�
�
7 8

�
�
 %
=
�
�
& '

�
�
( 5
}
�
�
 
;
�
�
 
}
�
�
 
tileList
�
�
 
.
�
�
 
Dispose
�
�
  
(
�
�
  !
)
�
�
! "
;
�
�
" #!
punctualLightBuffer
�
�
 #
.
�
�
# $
Dispose
�
�
$ +
(
�
�
+ ,
)
�
�
, -
;
�
�
- .
relLightList
�
�
 
.
�
�
 
Dispose
�
�
 $
(
�
�
$ %
)
�
�
% &
;
�
�
& '

�
�
 
.
�
�
 
Dispose
�
�
 %
(
�
�
% &
)
�
�
& '
;
�
�
' (!
visLightToRelLights
�
�
 #
.
�
�
# $
Dispose
�
�
$ +
(
�
�
+ ,
)
�
�
, -
;
�
�
- .

usedLights
�
�
 
.
�
�
 
Dispose
�
�
 "
(
�
�
" #
)
�
�
# $
;
�
�
$ %
}
�
�
 
using
�
�
 
(
�
�
 
new
�
�
 
ProfilingScope
�
�
 %
(
�
�
% &
cmd
�
�
& )
,
�
�
) *1
#m_ProfilingSamplerDeferredTiledPass
�
�
+ N
)
�
�
N O
)
�
�
O P
{
�
�
 
MeshTopology
�
�
 
topology
�
�
 %
=
�
�
& '
DeferredConfig
�
�
( 6
.
�
�
6 7#
kHasNativeQuadSupport
�
�
7 L
?
�
�
M N
MeshTopology
�
�
O [
.
�
�
[ \
Quads
�
�
\ a
:
�
�
b c
MeshTopology
�
�
d p
.
�
�
p q
	Triangles
�
�
q z
;
�
�
z {
int
�
�
 
vertexCount
�
�
 
=
�
�
  !
DeferredConfig
�
�
" 0
.
�
�
0 1#
kHasNativeQuadSupport
�
�
1 F
?
�
�
G H
$num
�
�
I J
:
�
�
K L
$num
�
�
M N
;
�
�
N O
Vector4
�
�
 

screenSize
�
�
 "
=
�
�
# $
new
�
�
% (
Vector4
�
�
) 0
(
�
�
0 1
this
�
�
1 5
.
�
�
5 6
RenderWidth
�
�
6 A
,
�
�
A B
this
�
�
C G
.
�
�
G H
RenderHeight
�
�
H T
,
�
�
T U
$num
�
�
V Z
/
�
�
[ \
this
�
�
] a
.
�
�
a b
RenderWidth
�
�
b m
,
�
�
m n
$num
�
�
o s
/
�
�
t u
this
�
�
v z
.
�
�
z {
RenderHeight�
�
{ �
)�
�
� �
;�
�
� �
cmd
�
�
 
.
�
�
 
SetGlobalVector
�
�
 #
(
�
�
# $
ShaderConstants
�
�
$ 3
.
�
�
3 4
_ScreenSize
�
�
4 ?
,
�
�
? @

screenSize
�
�
A K
)
�
�
K L
;
�
�
L M
int
�
�
 
	tileWidth
�
�
 
=
�
�
 
m_Tilers
�
�
  (
[
�
�
( )
$num
�
�
) *
]
�
�
* +
.
�
�
+ ,
TilePixelWidth
�
�
, :
;
�
�
: ;
int
�
�
 

tileHeight
�
�
 
=
�
�
  
m_Tilers
�
�
! )
[
�
�
) *
$num
�
�
* +
]
�
�
+ ,
.
�
�
, -
TilePixelHeight
�
�
- <
;
�
�
< =
cmd
�
�
 
.
�
�
 
SetGlobalInt
�
�
  
(
�
�
  !
ShaderConstants
�
�
! 0
.
�
�
0 1
_TilePixelWidth
�
�
1 @
,
�
�
@ A
	tileWidth
�
�
B K
)
�
�
K L
;
�
�
L M
cmd
�
�
 
.
�
�
 
SetGlobalInt
�
�
  
(
�
�
  !
ShaderConstants
�
�
! 0
.
�
�
0 1
_TilePixelHeight
�
�
1 A
,
�
�
A B

tileHeight
�
�
C M
)
�
�
M N
;
�
�
N O
cmd
�
�
 
.
�
�
 
SetGlobalTexture
�
�
 $
(
�
�
$ %
this
�
�
% )
.
�
�
) *"
TileDepthInfoTexture
�
�
* >
.
�
�
> ?
id
�
�
? A
,
�
�
A B
this
�
�
C G
.
�
�
G H,
TileDepthInfoTextureIdentifier
�
�
H f
)
�
�
f g
;
�
�
g h
for
�
�
 
(
�
�
 
int
�
�
 
i
�
�
 
=
�
�
 
$num
�
�
 
;
�
�
 
i
�
�
  !
<
�
�
" #

�
�
$ 1
;
�
�
1 2
++
�
�
3 5
i
�
�
5 6
)
�
�
6 7
{
�
�
 
DrawCall
�
�
 
dc
�
�
 
=
�
�
  !
	drawCalls
�
�
" +
[
�
�
+ ,
i
�
�
, -
]
�
�
- .
;
�
�
. /
if
�� 
(
�� 
DeferredConfig
�� &
.
��& '#
UseCBufferForTileList
��' <
)
��< =
cmd
�� 
.
�� %
SetGlobalConstantBuffer
�� 3
(
��3 4
dc
��4 6
.
��6 7
tileList
��7 ?
,
��? @
ShaderConstants
��A P
.
��P Q
	UTileList
��Q Z
,
��Z [
$num
��\ ]
,
��] ^
dc
��_ a
.
��a b
tileListSize
��b n
)
��n o
;
��o p
else
�� 
cmd
�� 
.
�� 
SetGlobalBuffer
�� +
(
��+ ,
ShaderConstants
��, ;
.
��; <
	_TileList
��< E
,
��E F
dc
��G I
.
��I J
tileList
��J R
)
��R S
;
��S T
if
�� 
(
�� 
DeferredConfig
�� &
.
��& '$
UseCBufferForLightData
��' =
)
��= >
cmd
�� 
.
�� %
SetGlobalConstantBuffer
�� 3
(
��3 4
dc
��4 6
.
��6 7!
punctualLightBuffer
��7 J
,
��J K
ShaderConstants
��L [
.
��[ \"
UPunctualLightBuffer
��\ p
,
��p q
$num
��r s
,
��s t
dc
��u w
.
��w x&
punctualLightBufferSize��x �
)��� �
;��� �
else
�� 
cmd
�� 
.
�� 
SetGlobalBuffer
�� +
(
��+ ,
ShaderConstants
��, ;
.
��; <"
_PunctualLightBuffer
��< P
,
��P Q
dc
��R T
.
��T U!
punctualLightBuffer
��U h
)
��h i
;
��i j
if
�� 
(
�� 
DeferredConfig
�� &
.
��& '$
UseCBufferForLightList
��' =
)
��= >
cmd
�� 
.
�� %
SetGlobalConstantBuffer
�� 3
(
��3 4
dc
��4 6
.
��6 7
relLightList
��7 C
,
��C D
ShaderConstants
��E T
.
��T U

��U b
,
��b c
$num
��d e
,
��e f
dc
��g i
.
��i j
relLightListSize
��j z
)
��z {
;
��{ |
else
�� 
cmd
�� 
.
�� 
SetGlobalBuffer
�� +
(
��+ ,
ShaderConstants
��, ;
.
��; <

��< I
,
��I J
dc
��K M
.
��M N
relLightList
��N Z
)
��Z [
;
��[ \
cmd
�� 
.
�� 
SetGlobalInt
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_InstanceOffset
��5 D
,
��D E
dc
��F H
.
��H I
instanceOffset
��I W
)
��W X
;
��X Y
cmd
�� 
.
�� 
DrawProcedural
�� &
(
��& '
	Matrix4x4
��' 0
.
��0 1
identity
��1 9
,
��9 :$
m_TileDeferredMaterial
��; Q
,
��Q R
$num
��S T
,
��T U
topology
��V ^
,
��^ _
vertexCount
��` k
,
��k l
dc
��m o
.
��o p

��p }
)
��} ~
;
��~ 
cmd
�� 
.
�� 
DrawProcedural
�� &
(
��& '
	Matrix4x4
��' 0
.
��0 1
identity
��1 9
,
��9 :$
m_TileDeferredMaterial
��; Q
,
��Q R
$num
��S T
,
��T U
topology
��V ^
,
��^ _
vertexCount
��` k
,
��k l
dc
��m o
.
��o p

��p }
)
��} ~
;
��~ 
}
�� 
}
�� 
Profiler
�� 
.
�� 
	EndSample
�� 
(
�� 
)
��  
;
��  !
}
�� 	
void
�� !
RenderStencilLights
��
(
��  !%
ScriptableRenderContext
��! 8
context
��9 @
,
��@ A

��B O
cmd
��P S
,
��S T
ref
��U X

��Y f

��g t
)
��t u
{
�� 	
if
�� 
(
��  
m_stencilVisLights
�� "
.
��" #
Length
��# )
==
��* ,
$num
��- .
)
��. /
return
�� 
;
�� 
if
�� 
(
�� '
m_StencilDeferredMaterial
�� )
==
��* ,
null
��- 1
)
��1 2
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� $
(
��$ %
$str��% �
,��� �)
m_StencilDeferredMaterial��� �
,��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
Profiler
�� 
.
�� 
BeginSample
��  
(
��  !#
k_DeferredStencilPass
��! 6
)
��6 7
;
��7 8
if
�� 
(
�� 
m_SphereMesh
�� 
==
�� 
null
��  $
)
��$ %
m_SphereMesh
�� 
=
�� 
CreateSphereMesh
�� /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� 
m_HemisphereMesh
��  
==
��! #
null
��$ (
)
��( )
m_HemisphereMesh
��  
=
��! ""
CreateHemisphereMesh
��# 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
m_FullscreenMesh
��  
==
��! #
null
��$ (
)
��( )
m_FullscreenMesh
��  
=
��! ""
CreateFullscreenMesh
��# 7
(
��7 8
)
��8 9
;
��9 :
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *3
%m_ProfilingSamplerDeferredStencilPass
��+ P
)
��P Q
)
��Q R
{
�� 
NativeArray
�� 
<
�� 
VisibleLight
�� (
>
��( )

��* 7
=
��8 9

��: G
.
��G H
	lightData
��H Q
.
��Q R

��R _
;
��_ `,
RenderStencilDirectionalLights
�� .
(
��. /
cmd
��/ 2
,
��2 3
ref
��4 7

��8 E
,
��E F

��G T
,
��T U

��V c
.
��c d
	lightData
��d m
.
��m n
mainLightIndex
��n |
)
��| }
;
��} ~&
RenderStencilPointLights
�� (
(
��( )
cmd
��) ,
,
��, -
ref
��. 1

��2 ?
,
��? @

��A N
)
��N O
;
��O P%
RenderStencilSpotLights
�� '
(
��' (
cmd
��( +
,
��+ ,
ref
��- 0

��1 >
,
��> ?

��@ M
)
��M N
;
��N O
}
�� 
Profiler
�� 
.
�� 
	EndSample
�� 
(
�� 
)
��  
;
��  !
}
�� 	
void
�� ,
RenderStencilDirectionalLights
��
(
��+ ,

��, 9
cmd
��: =
,
��= >
ref
��? B

��C P

��Q ^
,
��^ _
NativeArray
��` k
<
��k l
VisibleLight
��l x
>
��x y

,��� �
int��� �
mainLightIndex��� �
)��� �
{
�� 	
cmd
�� 
.
�� !
EnableShaderKeyword
�� #
(
��# $"
ShaderKeywordStrings
��$ 8
.
��8 9
_DIRECTIONAL
��9 E
)
��E F
;
��F G
for
�� 
(
�� 
int
�� 
soffset
�� 
=
�� &
m_stencilVisLightOffsets
�� 7
[
��7 8
(
��8 9
int
��9 <
)
��< =
	LightType
��= F
.
��F G
Directional
��G R
]
��R S
;
��S T
soffset
��U \
<
��] ^ 
m_stencilVisLights
��_ q
.
��q r
Length
��r x
;
��x y
++
��z |
soffset��| �
)��� �
{
�� 
ushort
�� 

�� $
=
��% & 
m_stencilVisLights
��' 9
[
��9 :
soffset
��: A
]
��A B
;
��B C
VisibleLight
�� 
vl
�� 
=
��  !

��" /
[
��/ 0

��0 =
]
��= >
;
��> ?
if
�� 
(
�� 
vl
�� 
.
�� 
	lightType
��  
!=
��! #
	LightType
��$ -
.
��- .
Directional
��. 9
)
��9 :
break
�� 
;
�� 
Vector4
�� 
lightDir
��  
,
��  !

lightColor
��" ,
,
��, -
lightAttenuation
��. >
,
��> ?
lightSpotDir
��@ L
,
��L M#
lightOcclusionChannel
��N c
;
��c d%
UniversalRenderPipeline
�� '
.
��' (-
InitializeLightConstants_Common
��( G
(
��G H

��H U
,
��U V

��W d
,
��d e
out
��f i
lightDir
��j r
,
��r s
out
��t w

lightColor��x �
,��� �
out��� � 
lightAttenuation��� �
,��� �
out��� �
lightSpotDir��� �
,��� �
out��� �%
lightOcclusionChannel��� �
)��� �
;��� �
int
�� 

lightFlags
�� 
=
��  
$num
��! "
;
��" #
if
�� 
(
�� 
vl
�� 
.
�� 
light
�� 
.
�� 
bakingOutput
�� )
.
��) *
lightmapBakeType
��* :
==
��; =
LightmapBakeType
��> N
.
��N O
Mixed
��O T
)
��T U

lightFlags
�� 
|=
�� !
(
��" #
int
��# &
)
��& '
	LightFlag
��' 0
.
��0 1&
SubtractiveMixedLighting
��1 I
;
��I J
bool
��  
hasDeferredShadows
�� '
;
��' (
if
�� 
(
�� 

�� !
==
��" $
mainLightIndex
��% 3
)
��3 4
{
��  
hasDeferredShadows
�� &
=
��' (
vl
��) +
.
��+ ,
light
��, 1
&&
��2 4
vl
��5 7
.
��7 8
light
��8 =
.
��= >
shadows
��> E
!=
��F H
LightShadows
��I U
.
��U V
None
��V Z
;
��Z [
cmd
�� 
.
�� "
DisableShaderKeyword
�� ,
(
��, -"
ShaderKeywordStrings
��- A
.
��A B0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��B d
)
��d e
;
��e f
}
�� 
else
�� 
{
�� 
int
�� 
shadowLightIndex
�� (
=
��) *0
"m_AdditionalLightsShadowCasterPass
��+ M
!=
��N P
null
��Q U
?
��V W0
"m_AdditionalLightsShadowCasterPass
��X z
.
��z {0
!GetShadowLightIndexFromLightIndex��{ �
(��� �

)��� �
:��� �
-��� �
$num��� �
;��� � 
hasDeferredShadows
�� &
=
��' (
vl
��) +
.
��+ ,
light
��, 1
&&
��2 4
vl
��5 7
.
��7 8
light
��8 =
.
��= >
shadows
��> E
!=
��F H
LightShadows
��I U
.
��U V
None
��V Z
&&
��[ ]
shadowLightIndex
��^ n
>=
��o q
$num
��r s
;
��s t
	CoreUtils
�� 
.
�� 

SetKeyword
�� (
(
��( )
cmd
��) ,
,
��, -"
ShaderKeywordStrings
��. B
.
��B C0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��C e
,
��e f 
hasDeferredShadows
��g y
)
��y z
;
��z {
cmd
�� 
.
�� 
SetGlobalInt
�� $
(
��$ %
ShaderConstants
��% 4
.
��4 5
_ShadowLightIndex
��5 F
,
��F G
shadowLightIndex
��H X
)
��X Y
;
��Y Z
}
�� 
bool
�� 

�� "
=
��# $ 
hasDeferredShadows
��% 7
&&
��8 :

��; H
.
��H I

shadowData
��I S
.
��S T!
supportsSoftShadows
��T g
&&
��h j
vl
��k m
.
��m n
light
��n s
.
��s t
shadows
��t {
==
��| ~
LightShadows�� �
.��� �
Soft��� �
;��� �
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?
SoftShadows
��? J
,
��J K

��L Y
)
��Y Z
;
��Z [
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightColor
��4 ?
,
��? @

lightColor
��A K
)
��K L
;
��L M
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightDirection
��4 C
,
��C D
lightDir
��E M
)
��M N
;
��N O
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_LightFlags
��1 <
,
��< =

lightFlags
��> H
)
��H I
;
��I J
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_FullscreenMesh
�� -
,
��- .
	Matrix4x4
��/ 8
.
��8 9
identity
��9 A
,
��A B'
m_StencilDeferredMaterial
��C \
,
��\ ]
$num
��^ _
,
��_ `
$num
��a b
)
��b c
;
��c d
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_FullscreenMesh
�� -
,
��- .
	Matrix4x4
��/ 8
.
��8 9
identity
��9 A
,
��A B'
m_StencilDeferredMaterial
��C \
,
��\ ]
$num
��^ _
,
��_ `
$num
��a b
)
��b c
;
��c d
}
�� 
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��: \
)
��\ ]
;
��] ^
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
SoftShadows
��: E
)
��E F
;
��F G
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
_DIRECTIONAL
��: F
)
��F G
;
��G H
}
�� 	
void
�� &
RenderStencilPointLights
��
(
��% &

��& 3
cmd
��4 7
,
��7 8
ref
��9 <

��= J

��K X
,
��X Y
NativeArray
��Z e
<
��e f
VisibleLight
��f r
>
��r s

)��� �
{
�� 	
cmd
�� 
.
�� !
EnableShaderKeyword
�� #
(
��# $"
ShaderKeywordStrings
��$ 8
.
��8 9
_POINT
��9 ?
)
��? @
;
��@ A
for
�� 
(
�� 
int
�� 
soffset
�� 
=
�� &
m_stencilVisLightOffsets
�� 7
[
��7 8
(
��8 9
int
��9 <
)
��< =
	LightType
��= F
.
��F G
Point
��G L
]
��L M
;
��M N
soffset
��O V
<
��W X 
m_stencilVisLights
��Y k
.
��k l
Length
��l r
;
��r s
++
��t v
soffset
��v }
)
��} ~
{
�� 
ushort
�� 

�� $
=
��% & 
m_stencilVisLights
��' 9
[
��9 :
soffset
��: A
]
��A B
;
��B C
VisibleLight
�� 
vl
�� 
=
��  !

��" /
[
��/ 0

��0 =
]
��= >
;
��> ?
if
�� 
(
�� 
vl
�� 
.
�� 
	lightType
��  
!=
��! #
	LightType
��$ -
.
��- .
Point
��. 3
)
��3 4
break
�� 
;
�� 
Vector3
�� 
posWS
�� 
=
�� 
vl
��  "
.
��" # 
localToWorldMatrix
��# 5
.
��5 6
	GetColumn
��6 ?
(
��? @
$num
��@ A
)
��A B
;
��B C
	Matrix4x4
�� 
transformMatrix
�� )
=
��* +
new
��, /
	Matrix4x4
��0 9
(
��9 :
new
�� 
Vector4
�� 
(
��  
vl
��  "
.
��" #
range
��# (
,
��( )
$num
��* .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� 
(
��  
$num
��  $
,
��$ %
vl
��& (
.
��( )
range
��) .
,
��. /
$num
��0 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� 
(
��  
$num
��  $
,
��$ %
$num
��& *
,
��* +
vl
��, .
.
��. /
range
��/ 4
,
��4 5
$num
��6 :
)
��: ;
,
��; <
new
�� 
Vector4
�� 
(
��  
posWS
��  %
.
��% &
x
��& '
,
��' (
posWS
��) .
.
��. /
y
��/ 0
,
��0 1
posWS
��2 7
.
��7 8
z
��8 9
,
��9 :
$num
��; ?
)
��? @
)
�� 
;
�� 
Vector4
�� 
lightPos
��  
,
��  !

lightColor
��" ,
,
��, -
lightAttenuation
��. >
,
��> ?
lightSpotDir
��@ L
,
��L M#
lightOcclusionChannel
��N c
;
��c d%
UniversalRenderPipeline
�� '
.
��' (-
InitializeLightConstants_Common
��( G
(
��G H

��H U
,
��U V

��W d
,
��d e
out
��f i
lightPos
��j r
,
��r s
out
��t w

lightColor��x �
,��� �
out��� � 
lightAttenuation��� �
,��� �
out��� �
lightSpotDir��� �
,��� �
out��� �%
lightOcclusionChannel��� �
)��� �
;��� �
int
�� 

lightFlags
�� 
=
��  
$num
��! "
;
��" #
if
�� 
(
�� 
vl
�� 
.
�� 
light
�� 
.
�� 
bakingOutput
�� )
.
��) *
lightmapBakeType
��* :
==
��; =
LightmapBakeType
��> N
.
��N O
Mixed
��O T
)
��T U

lightFlags
�� 
|=
�� !
(
��" #
int
��# &
)
��& '
	LightFlag
��' 0
.
��0 1&
SubtractiveMixedLighting
��1 I
;
��I J
int
�� 
shadowLightIndex
�� $
=
��% &0
"m_AdditionalLightsShadowCasterPass
��' I
!=
��J L
null
��M Q
?
��R S0
"m_AdditionalLightsShadowCasterPass
��T v
.
��v w0
!GetShadowLightIndexFromLightIndex��w �
(��� �

)��� �
:��� �
-��� �
$num��� �
;��� �
bool
�� /
!hasDeferredAdditionalLightShadows
�� 6
=
��7 8
vl
��9 ;
.
��; <
light
��< A
&&
��B D
vl
��E G
.
��G H
light
��H M
.
��M N
shadows
��N U
!=
��V X
LightShadows
��Y e
.
��e f
None
��f j
&&
��k m
shadowLightIndex
��n ~
>=�� �
$num��� �
;��� �
bool
�� 

�� "
=
��# $/
!hasDeferredAdditionalLightShadows
��% F
&&
��G I

��J W
.
��W X

shadowData
��X b
.
��b c!
supportsSoftShadows
��c v
&&
��w y
vl
��z |
.
��| }
light��} �
.��� �
shadows��� �
==��� �
LightShadows��� �
.��� �
Soft��� �
;��� �
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��? a
,
��a b0
!hasDeferredAdditionalLightShadows��c �
)��� �
;��� �
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?
SoftShadows
��? J
,
��J K

��L Y
)
��Y Z
;
��Z [
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightPosWS
��4 ?
,
��? @
lightPos
��A I
)
��I J
;
��J K
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightColor
��4 ?
,
��? @

lightColor
��A K
)
��K L
;
��L M
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightAttenuation
��4 E
,
��E F
lightAttenuation
��G W
)
��W X
;
��X Y
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4%
_LightOcclusionProbInfo
��4 K
,
��K L#
lightOcclusionChannel
��M b
)
��b c
;
��c d
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_LightFlags
��1 <
,
��< =

lightFlags
��> H
)
��H I
;
��I J
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_ShadowLightIndex
��1 B
,
��B C
shadowLightIndex
��D T
)
��T U
;
��U V
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_SphereMesh
�� )
,
��) *
transformMatrix
��+ :
,
��: ;'
m_StencilDeferredMaterial
��< U
,
��U V
$num
��W X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_SphereMesh
�� )
,
��) *
transformMatrix
��+ :
,
��: ;'
m_StencilDeferredMaterial
��< U
,
��U V
$num
��W X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_SphereMesh
�� )
,
��) *
transformMatrix
��+ :
,
��: ;'
m_StencilDeferredMaterial
��< U
,
��U V
$num
��W X
,
��X Y
$num
��Z [
)
��[ \
;
��\ ]
}
�� 
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��: \
)
��\ ]
;
��] ^
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
SoftShadows
��: E
)
��E F
;
��F G
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
_POINT
��: @
)
��@ A
;
��A B
}
�� 	
void
�� %
RenderStencilSpotLights
��
(
��$ %

��% 2
cmd
��3 6
,
��6 7
ref
��8 ;

��< I

��J W
,
��W X
NativeArray
��Y d
<
��d e
VisibleLight
��e q
>
��q r

)��� �
{
�� 	
cmd
�� 
.
�� !
EnableShaderKeyword
�� #
(
��# $"
ShaderKeywordStrings
��$ 8
.
��8 9
_SPOT
��9 >
)
��> ?
;
��? @
for
�� 
(
�� 
int
�� 
soffset
�� 
=
�� &
m_stencilVisLightOffsets
�� 7
[
��7 8
(
��8 9
int
��9 <
)
��< =
	LightType
��= F
.
��F G
Spot
��G K
]
��K L
;
��L M
soffset
��N U
<
��V W 
m_stencilVisLights
��X j
.
��j k
Length
��k q
;
��q r
++
��s u
soffset
��u |
)
��| }
{
�� 
ushort
�� 

�� $
=
��% & 
m_stencilVisLights
��' 9
[
��9 :
soffset
��: A
]
��A B
;
��B C
VisibleLight
�� 
vl
�� 
=
��  !

��" /
[
��/ 0

��0 =
]
��= >
;
��> ?
if
�� 
(
�� 
vl
�� 
.
�� 
	lightType
��  
!=
��! #
	LightType
��$ -
.
��- .
Spot
��. 2
)
��2 3
break
�� 
;
�� 
float
�� 
alpha
�� 
=
�� 
Mathf
�� #
.
��# $
Deg2Rad
��$ +
*
��, -
vl
��. 0
.
��0 1
	spotAngle
��1 :
*
��; <
$num
��= A
;
��A B
float
�� 
cosAlpha
�� 
=
��  
Mathf
��! &
.
��& '
Cos
��' *
(
��* +
alpha
��+ 0
)
��0 1
;
��1 2
float
�� 
sinAlpha
�� 
=
��  
Mathf
��! &
.
��& '
Sin
��' *
(
��* +
alpha
��+ 0
)
��0 1
;
��1 2
float
�� 
guard
�� 
=
�� 
Mathf
�� #
.
��# $
Lerp
��$ (
(
��( )
$num
��) -
,
��- . 
kStencilShapeGuard
��/ A
,
��A B
sinAlpha
��C K
)
��K L
;
��L M
Vector4
�� 
lightPos
��  
,
��  !

lightColor
��" ,
,
��, -
lightAttenuation
��. >
,
��> ?
lightSpotDir
��@ L
,
��L M#
lightOcclusionChannel
��N c
;
��c d%
UniversalRenderPipeline
�� '
.
��' (-
InitializeLightConstants_Common
��( G
(
��G H

��H U
,
��U V

��W d
,
��d e
out
��f i
lightPos
��j r
,
��r s
out
��t w

lightColor��x �
,��� �
out��� � 
lightAttenuation��� �
,��� �
out��� �
lightSpotDir��� �
,��� �
out��� �%
lightOcclusionChannel��� �
)��� �
;��� �
int
�� 

lightFlags
�� 
=
��  
$num
��! "
;
��" #
if
�� 
(
�� 
vl
�� 
.
�� 
light
�� 
.
�� 
bakingOutput
�� )
.
��) *
lightmapBakeType
��* :
==
��; =
LightmapBakeType
��> N
.
��N O
Mixed
��O T
)
��T U

lightFlags
�� 
|=
�� !
(
��" #
int
��# &
)
��& '
	LightFlag
��' 0
.
��0 1&
SubtractiveMixedLighting
��1 I
;
��I J
int
�� 
shadowLightIndex
�� $
=
��% &0
"m_AdditionalLightsShadowCasterPass
��' I
!=
��J L
null
��M Q
?
��R S0
"m_AdditionalLightsShadowCasterPass
��T v
.
��v w0
!GetShadowLightIndexFromLightIndex��w �
(��� �

)��� �
:��� �
-��� �
$num��� �
;��� �
bool
�� /
!hasDeferredAdditionalLightShadows
�� 6
=
��7 8
vl
��9 ;
.
��; <
light
��< A
&&
��B D
vl
��E G
.
��G H
light
��H M
.
��M N
shadows
��N U
!=
��V X
LightShadows
��Y e
.
��e f
None
��f j
&&
��k m
shadowLightIndex
��n ~
>=�� �
$num��� �
;��� �
bool
�� 

�� "
=
��# $/
!hasDeferredAdditionalLightShadows
��% F
&&
��G I

��J W
.
��W X

shadowData
��X b
.
��b c!
supportsSoftShadows
��c v
&&
��w y
vl
��z |
.
��| }
light��} �
.��� �
shadows��� �
==��� �
LightShadows��� �
.��� �
Soft��� �
;��� �
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��? a
,
��a b0
!hasDeferredAdditionalLightShadows��c �
)��� �
;��� �
	CoreUtils
�� 
.
�� 

SetKeyword
�� $
(
��$ %
cmd
��% (
,
��( )"
ShaderKeywordStrings
��* >
.
��> ?
SoftShadows
��? J
,
��J K

��L Y
)
��Y Z
;
��Z [
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_SpotLightScale
��4 C
,
��C D
new
��E H
Vector4
��I P
(
��P Q
sinAlpha
��Q Y
,
��Y Z
sinAlpha
��[ c
,
��c d
$num
��e i
-
��j k
cosAlpha
��l t
,
��t u
vl
��v x
.
��x y
range
��y ~
)
��~ 
)�� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_SpotLightBias
��4 B
,
��B C
new
��D G
Vector4
��H O
(
��O P
$num
��P T
,
��T U
$num
��V Z
,
��Z [
cosAlpha
��\ d
,
��d e
$num
��f j
)
��j k
)
��k l
;
��l m
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_SpotLightGuard
��4 C
,
��C D
new
��E H
Vector4
��I P
(
��P Q
guard
��Q V
,
��V W
guard
��X ]
,
��] ^
guard
��_ d
,
��d e
cosAlpha
��f n
*
��o p
vl
��q s
.
��s t
range
��t y
)
��y z
)
��z {
;
��{ |
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightPosWS
��4 ?
,
��? @
lightPos
��A I
)
��I J
;
��J K
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightColor
��4 ?
,
��? @

lightColor
��A K
)
��K L
;
��L M
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightAttenuation
��4 E
,
��E F
lightAttenuation
��G W
)
��W X
;
��X Y
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4
_LightDirection
��4 C
,
��C D
new
��E H
Vector3
��I P
(
��P Q
lightSpotDir
��Q ]
.
��] ^
x
��^ _
,
��_ `
lightSpotDir
��a m
.
��m n
y
��n o
,
��o p
lightSpotDir
��q }
.
��} ~
z
��~ 
)�� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $
ShaderConstants
��$ 3
.
��3 4%
_LightOcclusionProbInfo
��4 K
,
��K L#
lightOcclusionChannel
��M b
)
��b c
;
��c d
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_LightFlags
��1 <
,
��< =

lightFlags
��> H
)
��H I
;
��I J
cmd
�� 
.
�� 
SetGlobalInt
��  
(
��  !
ShaderConstants
��! 0
.
��0 1
_ShadowLightIndex
��1 B
,
��B C
shadowLightIndex
��D T
)
��T U
;
��U V
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_HemisphereMesh
�� -
,
��- .
vl
��/ 1
.
��1 2 
localToWorldMatrix
��2 D
,
��D E'
m_StencilDeferredMaterial
��F _
,
��_ `
$num
��a b
,
��b c
$num
��d e
)
��e f
;
��f g
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_HemisphereMesh
�� -
,
��- .
vl
��/ 1
.
��1 2 
localToWorldMatrix
��2 D
,
��D E'
m_StencilDeferredMaterial
��F _
,
��_ `
$num
��a b
,
��b c
$num
��d e
)
��e f
;
��f g
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_HemisphereMesh
�� -
,
��- .
vl
��/ 1
.
��1 2 
localToWorldMatrix
��2 D
,
��D E'
m_StencilDeferredMaterial
��F _
,
��_ `
$num
��a b
,
��b c
$num
��d e
)
��e f
;
��f g
}
�� 
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :0
"_DEFERRED_ADDITIONAL_LIGHT_SHADOWS
��: \
)
��\ ]
;
��] ^
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
SoftShadows
��: E
)
��E F
;
��F G
cmd
�� 
.
�� "
DisableShaderKeyword
�� $
(
��$ %"
ShaderKeywordStrings
��% 9
.
��9 :
_SPOT
��: ?
)
��? @
;
��@ A
}
�� 	
void
�� 
	RenderFog
��
(
�� %
ScriptableRenderContext
�� .
context
��/ 6
,
��6 7

��8 E
cmd
��F I
,
��I J
ref
��K N

��O \

��] j
)
��j k
{
�� 	
if
�� 
(
�� 
!
�� 
RenderSettings
�� 
.
��  
fog
��  #
||
��$ &

��' 4
.
��4 5

cameraData
��5 ?
.
��? @
camera
��@ F
.
��F G
orthographic
��G S
)
��S T
return
�� 
;
�� 
if
�� 
(
�� 
m_FullscreenMesh
��  
==
��! #
null
��$ (
)
��( )
m_FullscreenMesh
��  
=
��! ""
CreateFullscreenMesh
��# 7
(
��7 8
)
��8 9
;
��9 :
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) */
!m_ProfilingSamplerDeferredFogPass
��+ L
)
��L M
)
��M N
{
�� 
cmd
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_FullscreenMesh
�� -
,
��- .
	Matrix4x4
��/ 8
.
��8 9
identity
��9 A
,
��A B'
m_StencilDeferredMaterial
��C \
,
��\ ]
$num
��^ _
,
��_ `
$num
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
int
�� 

TrimLights
�� 
(
�� 
ref
�� 
NativeArray
�� &
<
��& '
ushort
��' -
>
��- .

��/ <
,
��< =
ref
��> A
NativeArray
��B M
<
��M N
ushort
��N T
>
��T U
tiles
��V [
,
��[ \
int
��] `
offset
��a g
,
��g h
int
��i l

lightCount
��m w
,
��w x
ref
��y |
BitArray��} �

usedLights��� �
)��� �
{
�� 	
int
�� 
	trimCount
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

lightCount
��  *
;
��* +
++
��, .
i
��. /
)
��/ 0
{
�� 
ushort
�� 

�� $
=
��% &
tiles
��' ,
[
��, -
offset
��- 3
+
��4 5
i
��6 7
]
��7 8
;
��8 9
if
�� 
(
�� 

usedLights
�� 
.
�� 
IsSet
�� $
(
��$ %

��% 2
)
��2 3
)
��3 4
continue
�� 
;
�� 

�� 
[
�� 
	trimCount
�� '
++
��' )
]
��) *
=
��+ ,

��- :
;
��: ;
}
�� 
return
�� 
	trimCount
�� 
;
�� 
}
�� 	
void
�� $
StorePunctualLightData
��
(
��# $
ref
��$ '
NativeArray
��( 3
<
��3 4
uint4
��4 9
>
��9 :!
punctualLightBuffer
��; N
,
��N O
int
��P S

storeIndex
��T ^
,
��^ _
ref
��` c
NativeArray
��d o
<
��o p
VisibleLight
��p |
>
��| }

,��� �
int��� �
index��� �
)��� �
{
�� 	
int
�� 

lightFlags
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 

�� 
[
�� 
index
�� #
]
��# $
.
��$ %
light
��% *
.
��* +
bakingOutput
��+ 7
.
��7 8
lightmapBakeType
��8 H
==
��I K
LightmapBakeType
��L \
.
��\ ]
Mixed
��] b
)
��b c

lightFlags
�
|=
�
(
�
int
�
)
�
	LightFlag
�
.
�
SubtractiveMixedLighting
�
;
�
Vector4
�
lightPos
�
,
�

lightColor
�
,
�
lightAttenuation
�
,
�
lightSpotDir
�
,
�
lightOcclusionChannel
�
;
�
UniversalRenderPipeline
�
.
�
InitializeLightConstants_Common
�
(
�

�
,
�
index
�
,
�
out
�
lightPos
�
,
�
out
�

lightColor
�
,
�
out
�
lightAttenuation�
,�
out�
lightSpotDir�
,�
out�
lightOcclusionChannel�
)�
;�
punctualLightBuffer
�
[
�

storeIndex
�
*
�
$num
�
+
�
$num
�
]
�
=
�
new
�
uint4
�
(
�
FloatToUInt
�
(
�
lightPos
�
.
�
x
�
)
�
,
�
FloatToUInt
�
(
�
lightPos
�
.
�
y
�
)
�
,
�
FloatToUInt
�
(
�
lightPos�
.�
z�
)�
,�
FloatToUInt�
(�

[�
index�
]�
.�
range�
*�

[�
index�
]�
.�
range�
)�
)�
;�
punctualLightBuffer
�
[
�

storeIndex
�
*
�
$num
�
+
�
$num
�
]
�
=
�
new
�
uint4
�
(
�
FloatToUInt
�
(
�

lightColor
�
.
�
x
�
)
�
,
�
FloatToUInt
�
(
�

lightColor
�
.
�
y
�
)
�
,
�
FloatToUInt�
(�

lightColor�
.�
z�
)�
,�
$num�
)�
;�
punctualLightBuffer
�
[
�

storeIndex
�
*
�
$num
�
+
�
$num
�
]
�
=
�
new
�
uint4
�
(
�
FloatToUInt
�
(
�
lightAttenuation
�
.
�
x
�
)
�
,
�
FloatToUInt
�
(
�
lightAttenuation
�
.
�
y
�
)�
,�
FloatToUInt�
(�
lightAttenuation�
.�
z�
)�
,�
FloatToUInt�
(�
lightAttenuation�
.�
w�
)�
)�
;�
punctualLightBuffer
�
[
�

storeIndex
�
*
�
$num
�
+
�
$num
�
]
�
=
�
new
�
uint4
�
(
�
FloatToUInt
�
(
�
lightSpotDir
�
.
�
x
�
)
�
,
�
FloatToUInt
�
(
�
lightSpotDir
�
.
�
y
�
)
�
,
�
FloatToUInt�
(�
lightSpotDir�
.�
z�
)�
,�
(�
uint�
)�

lightFlags�
)�
;�
punctualLightBuffer
�
[
�

storeIndex
�
*
�
$num
�
+
�
$num
�
]
�
=
�
new
�
uint4
�
(
�
FloatToUInt
�
(
�
lightOcclusionChannel
�
.
�
x
�
)
�
,
�
FloatToUInt
�
(
�
lightOcclusionChannel�
.�
y�
)�
,�
FloatToUInt�
(�
lightOcclusionChannel�
.�
z�
)�
,�
FloatToUInt�
(�
lightOcclusionChannel�
.�
w�
)�
)�
;�
}
�
void
�

�
(
�
ref
�
NativeArray
�
<
�
uint4
�
>
�
tileList
�
,
�
int
�

storeIndex
�
,
�
uint
�
tileID
�
,
�
uint
�
listBitMask
�
,
�
ushort
�
relLightOffset�
,�
ushort�

lightCount�
)�
{
�
tileList
�
[
�

storeIndex
�
]
�
=
�
new
�
uint4
�
{
�
x
�
=
�
tileID
�
,
�
y
�
=
�
listBitMask
�
,
�
z
�
=
�
relLightOffset
�
|
�
(
�
(
�
uint
�
)
�

lightCount
�
<<
�
$num
�
)
�
,
�
w
�
=
�
$num�
}�
;�
}
�
[
�

MethodImpl
�
(
�
MethodImplOptions
�
.
�
AggressiveInlining
�
)
�
]
�
bool
�
IsTileLight
�
(
�
VisibleLight
�
visibleLight
�
)
�
{
�
return
�
(
�
visibleLight
�
.
�
	lightType
�
==
�
	LightType
�
.
�
Point
�
&&
�
(
�
visibleLight
�
.
�
light
�
==
�
null
�
||
�
visibleLight
�
.
�
light
�
.
�
shadows
�
==
�
LightShadows�
.�
None�
)�
)�
||
�
(
�
visibleLight
�
.
�
	lightType
�
==
�
	LightType
�
.
�
Spot
�
&&
�
(
�
visibleLight
�
.
�
light
�
==
�
null
�
||
�
visibleLight
�
.
�
light
�
.
�
shadows
�
==
�
LightShadows�
.�
None�
)�
)�
;�
}
�
static
�
Mesh
�
CreateSphereMesh
�
(
�
)
�
{
�
Vector3
�
[
�
]
�
	positions
�
=
�
{
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
-
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
}
�
;
�
int
�
[
�
]
�
indices
�
=
�
{
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
}
�
;
�
Mesh
�
mesh
�
=
�
new
�
Mesh
�
(
�
)
�
;
�
mesh
�
.
�
indexFormat
�
=
�
IndexFormat
�
.
�
UInt16
�
;
�
mesh
�
.
�
vertices
�
=
�
	positions
�
;
�
mesh
�
.
�
	triangles
�
=
�
indices
�
;
�
return
�
mesh
�
;
�
}
�
static
�
Mesh
�
CreateHemisphereMesh
�
(
�
)
�
{
�
Vector3
�
[
�
]
�
	positions
�
=
�
{
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
-
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
,
�
new
�
Vector3
�
(
�
-
�
$num
�
,
�
$num
�
,
�
$num
�
)
�
}
�
;
�
int
�
[
�
]
�
indices
�
=
�
{
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�
,
�
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
��  "
,
��" #
$num
��$ %
,
��% &
$num
��' )
,
��) *
$num
��+ -
,
��- .
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 9
,
��9 :
$num
��; =
,
��= >
$num
��? A
,
��A B
$num
��C E
,
��E F
$num
��G I
,
��I J
$num
��K M
,
��M N
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
��  "
,
��" #
$num
��$ &
,
��& '
$num
��( *
,
��* +
$num
��, .
,
��. /
$num
��0 2
,
��2 3
$num
��4 6
,
��6 7
$num
��8 :
,
��: ;
$num
��< >
,
��> ?
$num
��@ B
,
��B C
$num
��D F
,
��F G
$num
��H J
,
��J K
$num
��L N
}
�� 
;
��
Mesh
�� 
mesh
�� 
=
�� 
new
�� 
Mesh
��  
(
��  !
)
��! "
;
��" #
mesh
�� 
.
�� 
indexFormat
�� 
=
�� 
IndexFormat
�� *
.
��* +
UInt16
��+ 1
;
��1 2
mesh
�� 
.
�� 
vertices
�� 
=
�� 
	positions
�� %
;
��% &
mesh
�� 
.
�� 
	triangles
�� 
=
�� 
indices
�� $
;
��$ %
return
�� 
mesh
�� 
;
�� 
}
�� 	
static
�� 
Mesh
�� "
CreateFullscreenMesh
�� (
(
��( )
)
��) *
{
�� 	
Vector3
�� 
[
�� 
]
�� 
	positions
��  
=
��! "
{
��# $
new
�� 
Vector3
�� 
(
�� 
-
�� 
$num
�� !
,
��! "
$num
��$ (
,
��( )
$num
��* .
)
��. /
,
��/ 0
new
�� 
Vector3
�� 
(
�� 
-
�� 
$num
�� !
,
��! "
-
��# $
$num
��$ (
,
��( )
$num
��* .
)
��. /
,
��/ 0
new
�� 
Vector3
�� 
(
�� 
$num
�� !
,
��! "
$num
��$ (
,
��( )
$num
��* .
)
��. /
}
�� 
;
��
int
�� 
[
�� 
]
�� 
indices
�� 
=
�� 
{
�� 
$num
��  
,
��  !
$num
��" #
,
��# $
$num
��% &
}
��' (
;
��( )
Mesh
�� 
mesh
�� 
=
�� 
new
�� 
Mesh
��  
(
��  !
)
��! "
;
��" #
mesh
�� 
.
�� 
indexFormat
�� 
=
�� 
IndexFormat
�� *
.
��* +
UInt16
��+ 1
;
��1 2
mesh
�� 
.
�� 
vertices
�� 
=
�� 
	positions
�� %
;
��% &
mesh
�� 
.
�� 
	triangles
�� 
=
�� 
indices
�� $
;
��$ %
return
�� 
mesh
�� 
;
�� 
}
�� 	
static
�� 
int
�� 
Align
�� 
(
�� 
int
�� 
s
�� 
,
�� 
int
��  #
	alignment
��$ -
)
��- .
{
�� 	
return
�� 
(
�� 
(
�� 
s
�� 
+
�� 
	alignment
�� "
-
��# $
$num
��% &
)
��& '
/
��( )
	alignment
��* 3
)
��3 4
*
��5 6
	alignment
��7 @
;
��@ A
}
�� 	
static
�� 
uint
�� 

PackTileID
�� 
(
�� 
uint
�� #
i
��$ %
,
��% &
uint
��' +
j
��, -
)
��- .
{
�� 	
return
�� 
i
�� 
|
�� 
(
�� 
j
�� 
<<
�� 
$num
�� 
)
��  
;
��  !
}
�� 	
static
�� 
uint
�� 
FloatToUInt
�� 
(
��  
float
��  %
val
��& )
)
��) *
{
�� 	
byte
�� 
[
�� 
]
�� 
bytes
�� 
=
�� 
System
�� !
.
��! "
BitConverter
��" .
.
��. /
GetBytes
��/ 7
(
��7 8
val
��8 ;
)
��; <
;
��< =
return
�� 
bytes
�� 
[
�� 
$num
�� 
]
�� 
|
�� 
(
�� 
(
��  
(
��  !
uint
��! %
)
��% &
bytes
��& +
[
��+ ,
$num
��, -
]
��- .
)
��. /
<<
��0 2
$num
��3 4
)
��4 5
|
��6 7
(
��8 9
(
��9 :
(
��: ;
uint
��; ?
)
��? @
bytes
��@ E
[
��E F
$num
��F G
]
��G H
)
��H I
<<
��J L
$num
��M O
)
��O P
|
��Q R
(
��S T
(
��T U
(
��U V
uint
��V Z
)
��Z [
bytes
��[ `
[
��` a
$num
��a b
]
��b c
)
��c d
<<
��e g
$num
��h j
)
��j k
;
��k l
}
�� 	
static
�� 
uint
�� 
Half2ToUInt
�� 
(
��  
float
��  %
x
��& '
,
��' (
float
��) .
y
��/ 0
)
��0 1
{
�� 	
uint
�� 
hx
�� 
=
�� 
Mathf
�� 
.
�� 
FloatToHalf
�� '
(
��' (
x
��( )
)
��) *
;
��* +
uint
�� 
hy
�� 
=
�� 
Mathf
�� 
.
�� 
FloatToHalf
�� '
(
��' (
y
��( )
)
��) *
;
��* +
return
�� 
hx
�� 
|
�� 
(
�� 
hy
�� 
<<
�� 
$num
�� !
)
��! "
;
��" #
}
�� 	
}
�� 
class
�� 	"
SortPrePunctualLight
��
 
:
��  
System
��! '
.
��' (
Collections
��( 3
.
��3 4
Generic
��4 ;
.
��; <
	IComparer
��< E
<
��E F

��F S
.
��S T
PrePunctualLight
��T d
>
��d e
{
�� 
public
�� 
int
�� 
Compare
�� 
(
�� 

�� (
.
��( )
PrePunctualLight
��) 9
a
��: ;
,
��; <

��= J
.
��J K
PrePunctualLight
��K [
b
��\ ]
)
��] ^
{
�� 	
if
�� 
(
�� 
a
�� 
.
�� 
minDist
�� 
<
�� 
b
�� 
.
�� 
minDist
�� %
)
��% &
return
�� 
-
�� 
$num
�� 
;
�� 
else
�� 
if
�� 
(
�� 
a
�� 
.
�� 
minDist
�� 
>
��  
b
��! "
.
��" #
minDist
��# *
)
��* +
return
�� 
$num
�� 
;
�� 
else
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
struct
�� 

BitArray
�� 
:
�� 
System
�� 
.
�� 
IDisposable
�� (
{
�� 
NativeArray
�� 
<
�� 
uint
�� 
>
�� 
m_Mem
�� 
;
��  
int
�� 

m_BitCount
�� 
;
�� 
int
�� 

m_IntCount
�� 
;
�� 
public
�� 
BitArray
�� 
(
�� 
int
�� 
bitCount
�� $
,
��$ %
	Allocator
��& /
	allocator
��0 9
,
��9 : 
NativeArrayOptions
��; M
options
��N U
=
��V W 
NativeArrayOptions
��X j
.
��j k
ClearMemory
��k v
)
��v w
{
�� 	

m_BitCount
�� 
=
�� 
bitCount
�� !
;
��! "

m_IntCount
�� 
=
�� 
(
�� 
bitCount
�� "
+
��# $
$num
��% '
)
��' (
>>
��) +
$num
��, -
;
��- .
m_Mem
�� 
=
�� 
new
�� 
NativeArray
�� #
<
��# $
uint
��$ (
>
��( )
(
��) *

m_IntCount
��* 4
,
��4 5
	allocator
��6 ?
,
��? @
options
��A H
)
��H I
;
��I J
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
m_Mem
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
Clear
�� 
(
�� 
)
�� 
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

m_IntCount
��  *
;
��* +
++
��, .
i
��. /
)
��/ 0
m_Mem
�� 
[
�� 
i
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
IsSet
�� 
(
�� 
int
�� 
bitIndex
�� &
)
��& '
{
�� 	
return
�� 
(
�� 
m_Mem
�� 
[
�� 
bitIndex
�� "
>>
��# %
$num
��& '
]
��' (
&
��) *
(
��+ ,
$num
��, .
<<
��/ 1
(
��2 3
bitIndex
��3 ;
&
��< =
$num
��> @
)
��@ A
)
��A B
)
��B C
!=
��D F
$num
��G H
;
��H I
}
�� 	
public
�� 
void
�� 
Set
�� 
(
�� 
int
�� 
bitIndex
�� $
,
��$ %
bool
��& *
val
��+ .
)
��. /
{
�� 	
if
�� 
(
�� 
val
�� 
)
�� 
m_Mem
�� 
[
�� 
bitIndex
�� 
>>
�� !
$num
��" #
]
��# $
|=
��% '
$num
��( *
<<
��+ -
(
��. /
bitIndex
��/ 7
&
��8 9
$num
��: <
)
��< =
;
��= >
else
�� 
m_Mem
�� 
[
�� 
bitIndex
�� 
>>
�� !
$num
��" #
]
��# $
&=
��% '
~
��( )
(
��) *
$num
��* ,
<<
��- /
(
��0 1
bitIndex
��1 9
&
��: ;
$num
��< >
)
��> ?
)
��? @
;
��@ A
}
�� 	
}
�� 
;
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Passes\IRenderPass2D.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
internal 
	interface

{ 
Renderer2DData 
rendererData #
{$ %
get& )
;) *
}+ ,
} 
} �;
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\RendererFeatures\RenderObjects.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
[ 
	MovedFrom 
( 
$str 8
)8 9
]9 :
public: @
enumA E
RenderQueueTypeF U
{		 
Opaque

 
,

 
Transparent 
, 
} 
[ 
ExcludeFromPreset 
] 
[ 
	MovedFrom 
( 
$str 8
)8 9
]9 :
public: @
classA F

:U V%
ScriptableRendererFeatureW p
{ 
[ 	
System	 
. 
Serializable 
] 
public 
class !
RenderObjectsSettings *
{ 	
public 
string 
passTag !
=" #
$str$ :
;: ;
public 
RenderPassEvent "
Event# (
=) *
RenderPassEvent+ :
.: ;!
AfterRenderingOpaques; P
;P Q
public 
FilterSettings !
filterSettings" 0
=1 2
new3 6
FilterSettings7 E
(E F
)F G
;G H
public 
Material 
overrideMaterial ,
=- .
null/ 3
;3 4
public 
int %
overrideMaterialPassIndex 0
=1 2
$num3 4
;4 5
public 
bool 
overrideDepthState *
=+ ,
false- 2
;2 3
public 
CompareFunction " 
depthCompareFunction# 7
=8 9
CompareFunction: I
.I J
	LessEqualJ S
;S T
public 
bool 
enableWrite #
=$ %
true& *
;* +
public   
StencilStateData   #
stencilSettings  $ 3
=  4 5
new  6 9
StencilStateData  : J
(  J K
)  K L
;  L M
public""  
CustomCameraSettings"" '
cameraSettings""( 6
=""7 8
new""9 < 
CustomCameraSettings""= Q
(""Q R
)""R S
;""S T
}## 	
[%% 	
System%%	 
.%% 
Serializable%% 
]%% 
public&& 
class&& 
FilterSettings&& #
{'' 	
public)) 
RenderQueueType)) "
RenderQueueType))# 2
;))2 3
public** 
	LayerMask** 
	LayerMask** &
;**& '
public++ 
string++ 
[++ 
]++ 
	PassNames++ %
;++% &
public-- 
FilterSettings-- !
(--! "
)--" #
{.. 
RenderQueueType// 
=//  !
RenderQueueType//" 1
.//1 2
Opaque//2 8
;//8 9
	LayerMask00 
=00 
$num00 
;00 
}11 
}22 	
[44 	
System44	 
.44 
Serializable44 
]44 
public55 
class55  
CustomCameraSettings55 )
{66 	
public77 
bool77 
overrideCamera77 &
=77' (
false77) .
;77. /
public88 
bool88 

=88& '
true88( ,
;88, -
public99 
Vector499 
offset99 !
;99! "
public:: 
float:: 
cameraFieldOfView:: *
=::+ ,
$num::- 2
;::2 3
};; 	
public== !
RenderObjectsSettings== $
settings==% -
===. /
new==0 3!
RenderObjectsSettings==4 I
(==I J
)==J K
;==K L
RenderObjectsPass?? 
renderObjectsPass?? +
;??+ ,
publicAA 
overrideAA 
voidAA 
CreateAA #
(AA# $
)AA$ %
{BB 	
FilterSettingsCC 
filterCC !
=CC" #
settingsCC$ ,
.CC, -
filterSettingsCC- ;
;CC; <
ifJJ 
(JJ 
settingsJJ 
.JJ 
EventJJ 
<JJ  
RenderPassEventJJ! 0
.JJ0 1$
BeforeRenderingPrepassesJJ1 I
)JJI J
settingsKK 
.KK 
EventKK 
=KK  
RenderPassEventKK! 0
.KK0 1$
BeforeRenderingPrepassesKK1 I
;KKI J
renderObjectsPassMM 
=MM 
newMM  #
RenderObjectsPassMM$ 5
(MM5 6
settingsMM6 >
.MM> ?
passTagMM? F
,MMF G
settingsMMH P
.MMP Q
EventMMQ V
,MMV W
filterMMX ^
.MM^ _
	PassNamesMM_ h
,MMh i
filterNN 
.NN 
RenderQueueTypeNN &
,NN& '
filterNN( .
.NN. /
	LayerMaskNN/ 8
,NN8 9
settingsNN: B
.NNB C
cameraSettingsNNC Q
)NNQ R
;NNR S
renderObjectsPassPP 
.PP 
overrideMaterialPP .
=PP/ 0
settingsPP1 9
.PP9 :
overrideMaterialPP: J
;PPJ K
renderObjectsPassQQ 
.QQ %
overrideMaterialPassIndexQQ 7
=QQ8 9
settingsQQ: B
.QQB C%
overrideMaterialPassIndexQQC \
;QQ\ ]
ifSS 
(SS 
settingsSS 
.SS 
overrideDepthStateSS +
)SS+ ,
renderObjectsPassTT !
.TT! "

(TT/ 0
settingsTT0 8
.TT8 9
enableWriteTT9 D
,TTD E
settingsTTF N
.TTN O 
depthCompareFunctionTTO c
)TTc d
;TTd e
ifVV 
(VV 
settingsVV 
.VV 
stencilSettingsVV (
.VV( ) 
overrideStencilStateVV) =
)VV= >
renderObjectsPassWW !
.WW! "
SetStencilStateWW" 1
(WW1 2
settingsWW2 :
.WW: ;
stencilSettingsWW; J
.WWJ K
stencilReferenceWWK [
,WW[ \
settingsXX 
.XX 
stencilSettingsXX ,
.XX, -"
stencilCompareFunctionXX- C
,XXC D
settingsXXE M
.XXM N
stencilSettingsXXN ]
.XX] ^

,XXk l
settingsYY 
.YY 
stencilSettingsYY ,
.YY, -

,YY: ;
settingsYY< D
.YYD E
stencilSettingsYYE T
.YYT U
zFailOperationYYU c
)YYc d
;YYd e
}ZZ 	
public\\ 
override\\ 
void\\ 
AddRenderPasses\\ ,
(\\, -
ScriptableRenderer\\- ?
renderer\\@ H
,\\H I
ref\\J M


)\\i j
{]] 	
renderer^^ 
.^^ 
EnqueuePass^^  
(^^  !
renderObjectsPass^^! 2
)^^2 3
;^^3 4
}__ 	
}`` 
}aa �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Light2DPoint.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
public 

sealed 
partial 
class 
Light2D  '
{ 
public 
enum 
PointLightQuality %
{		 	
Fast

 
=

 
$num

 
,

 
Accurate 
= 
$num 
} 	
[ 	
SerializeField	 
] 
float "
m_PointLightInnerAngle 5
=6 7
$num8 >
;> ?
[ 	
SerializeField	 
] 
float "
m_PointLightOuterAngle 5
=6 7
$num8 >
;> ?
[ 	
SerializeField	 
] 
float #
m_PointLightInnerRadius 6
=7 8
$num9 =
;= >
[ 	
SerializeField	 
] 
float #
m_PointLightOuterRadius 6
=7 8
$num9 =
;= >
[ 	
SerializeField	 
] 
float  
m_PointLightDistance 3
=4 5
$num6 :
;: ;
[ 	
UnityEngine	 
. 

Animations 
.  

NotKeyable  *
]* +
[ 	
SerializeField	 
] 
PointLightQuality *
m_PointLightQuality+ >
=? @
PointLightQualityA R
.R S
AccurateS [
;[ \
public 
float  
pointLightInnerAngle )
{ 	
get 
=> "
m_PointLightInnerAngle )
;) *
set 
=> "
m_PointLightInnerAngle )
=* +
value, 1
;1 2
} 	
public 
float  
pointLightOuterAngle )
{   	
get!! 
=>!! "
m_PointLightOuterAngle!! )
;!!) *
set"" 
=>"" "
m_PointLightOuterAngle"" )
=""* +
value"", 1
;""1 2
}## 	
public%% 
float%% !
pointLightInnerRadius%% *
{&& 	
get'' 
=>'' #
m_PointLightInnerRadius'' *
;''* +
set(( 
=>(( #
m_PointLightInnerRadius(( *
=((+ ,
value((- 2
;((2 3
})) 	
public++ 
float++ !
pointLightOuterRadius++ *
{,, 	
get-- 
=>-- #
m_PointLightOuterRadius-- *
;--* +
set.. 
=>.. #
m_PointLightOuterRadius.. *
=..+ ,
value..- 2
;..2 3
}// 	
public11 
float11 
pointLightDistance11 '
=>11( * 
m_PointLightDistance11+ ?
;11? @
public22 
PointLightQuality22  
pointLightQuality22! 2
=>223 5
m_PointLightQuality226 I
;22I J
internal44 
bool44 
isPointLight44 "
=>44# %
m_LightType44& 1
==442 4
	LightType445 >
.44> ?
Point44? D
;44D E
}55 
}66 ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\ForwardLights.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
public		 

class		 

{

 
static 
class 
LightConstantBuffer (
{ 	
public
static
int
_MainLightPosition
;
public 
static 
int 
_MainLightColor -
;- .
public 
static 
int ,
 _MainLightOcclusionProbesChannel >
;> ?
public 
static 
int "
_AdditionalLightsCount 4
;4 5
public 
static 
int %
_AdditionalLightsPosition 7
;7 8
public 
static 
int "
_AdditionalLightsColor 4
;4 5
public 
static 
int (
_AdditionalLightsAttenuation :
;: ;
public 
static 
int $
_AdditionalLightsSpotDir 6
;6 7
public 
static 
int 1
%_AdditionalLightOcclusionProbeChannel C
;C D
} 	
int &
m_AdditionalLightsBufferId &
;& '
int '
m_AdditionalLightsIndicesId '
;' (
const 
string !
k_SetupLightConstants *
=+ ,
$str- D
;D E
private 
static 
readonly 
ProfilingSampler  0
m_ProfilingSampler1 C
=D E
newF I
ProfilingSamplerJ Z
(Z [!
k_SetupLightConstants[ p
)p q
;q r
MixedLightingSetup  
m_MixedLightingSetup /
;/ 0
Vector4   
[   
]   &
m_AdditionalLightPositions   ,
;  , -
Vector4!! 
[!! 
]!! #
m_AdditionalLightColors!! )
;!!) *
Vector4"" 
["" 
]"" )
m_AdditionalLightAttenuations"" /
;""/ 0
Vector4## 
[## 
]## +
m_AdditionalLightSpotDirections## 1
;##1 2
Vector4$$ 
[$$ 
]$$ 3
'm_AdditionalLightOcclusionProbeChannels$$ 9
;$$9 :
bool&& !
m_UseStructuredBuffer&&
;&&" #
public(( 

((( 
)(( 
{)) 	!
m_UseStructuredBuffer** !
=**" #
RenderingUtils**$ 2
.**2 3
useStructuredBuffer**3 F
;**F G
LightConstantBuffer,, 
.,,  
_MainLightPosition,,  2
=,,3 4
Shader,,5 ;
.,,; <
PropertyToID,,< H
(,,H I
$str,,I ]
),,] ^
;,,^ _
LightConstantBuffer-- 
.--  
_MainLightColor--  /
=--0 1
Shader--2 8
.--8 9
PropertyToID--9 E
(--E F
$str--F W
)--W X
;--X Y
LightConstantBuffer.. 
...  ,
 _MainLightOcclusionProbesChannel..  @
=..A B
Shader..C I
...I J
PropertyToID..J V
(..V W
$str..W r
)..r s
;..s t
LightConstantBuffer// 
.//  "
_AdditionalLightsCount//  6
=//7 8
Shader//9 ?
.//? @
PropertyToID//@ L
(//L M
$str//M e
)//e f
;//f g
if11 
(11 !
m_UseStructuredBuffer11 %
)11% &
{22 
m_AdditionalLightsBufferId33 *
=33+ ,
Shader33- 3
.333 4
PropertyToID334 @
(33@ A
$str33A Z
)33Z [
;33[ \'
m_AdditionalLightsIndicesId44 +
=44, -
Shader44. 4
.444 5
PropertyToID445 A
(44A B
$str44B \
)44\ ]
;44] ^
}55 
else66 
{77 
LightConstantBuffer88
.88  !%
_AdditionalLightsPosition88! :
=88; <
Shader88= C
.88C D
PropertyToID88D P
(88P Q
$str88Q l
)88l m
;88m n
LightConstantBuffer99
.99  !"
_AdditionalLightsColor99! 7
=998 9
Shader99: @
.99@ A
PropertyToID99A M
(99M N
$str99N f
)99f g
;99g h
LightConstantBuffer::
.::  !(
_AdditionalLightsAttenuation::! =
=::> ?
Shader::@ F
.::F G
PropertyToID::G S
(::S T
$str::T r
)::r s
;::s t
LightConstantBuffer;;
.;;  !$
_AdditionalLightsSpotDir;;! 9
=;;: ;
Shader;;< B
.;;B C
PropertyToID;;C O
(;;O P
$str;;P j
);;j k
;;;k l
LightConstantBuffer<<
.<<  !1
%_AdditionalLightOcclusionProbeChannel<<! F
=<<G H
Shader<<I O
.<<O P
PropertyToID<<P \
(<<\ ]
$str<<] 
)	<< �
;
<<� �
int>>
	maxLights>> 
=>> #
UniversalRenderPipeline>> 4
.>>4 5&
maxVisibleAdditionalLights>>5 O
;>>O P&
m_AdditionalLightPositions??
=??( )
new??* -
Vector4??. 5
[??5 6
	maxLights??6 ?
]??? @
;??@ A#
m_AdditionalLightColors@@
=@@% &
new@@' *
Vector4@@+ 2
[@@2 3
	maxLights@@3 <
]@@< =
;@@= >)
m_AdditionalLightAttenuationsAA
=AA+ ,
newAA- 0
Vector4AA1 8
[AA8 9
	maxLightsAA9 B
]AAB C
;AAC D+
m_AdditionalLightSpotDirectionsBB
=BB- .
newBB/ 2
Vector4BB3 :
[BB: ;
	maxLightsBB; D
]BBD E
;BBE F3
'm_AdditionalLightOcclusionProbeChannelsCC
=CC5 6
newCC7 :
Vector4CC; B
[CCB C
	maxLightsCCC L
]CCL M
;CCM N
}DD 
}EE 	
publicGG 
voidGG 
SetupGG 
(GG #
ScriptableRenderContextGG 1
contextGG2 9
,GG9 :
refGG; >


)GGZ [
{HH 	
intII !
additionalLightsCountII %
=II& '

.II5 6
	lightDataII6 ?
.II? @!
additionalLightsCountII@ U
;IIU V
boolJJ %
additionalLightsPerVertexJJ *
=JJ+ ,

.JJ: ;
	lightDataJJ; D
.JJD E*
shadeAdditionalLightsPerVertexJJE c
;JJc d

cmdKK 
=KK 
CommandBufferPoolKK  1
.KK1 2
GetKK2 5
(KK5 6
)KK6 7
;KK7 8
usingLL 
(LL 
newLL 
ProfilingScopeLL %
(LL% &
cmdLL& )
,LL) *
m_ProfilingSamplerLL+ =
)LL= >
)LL> ?
{MM 
SetupShaderLightConstantsNN )
(NN) *
cmdNN* -
,NN- .
refNN/ 2

)NN@ A
;NNA B
	CoreUtilsPP 
.PP 

SetKeywordPP $
(PP$ %
cmdPP% (
,PP( ) 
ShaderKeywordStringsPP* >
.PP> ?"
AdditionalLightsVertexPP? U
,PPU V!
additionalLightsCountQQ )
>QQ* +
$numQQ, -
&&QQ. 0%
additionalLightsPerVertexQQ1 J
)QQJ K
;QQK L
	CoreUtilsRR 
.RR 

SetKeywordRR $
(RR$ %
cmdRR% (
,RR( ) 
ShaderKeywordStringsRR* >
.RR> ?!
AdditionalLightsPixelRR? T
,RRT U!
additionalLightsCountSS )
>SS* +
$numSS, -
&&SS. 0
!SS1 2%
additionalLightsPerVertexSS2 K
)SSK L
;SSL M
boolUU 
isShadowMaskUU !
=UU" #

.UU1 2
	lightDataUU2 ;
.UU; <!
supportsMixedLightingUU< Q
&&UUR T 
m_MixedLightingSetupUUU i
==UUj l
MixedLightingSetupUUm 
.	UU �

ShadowMask
UU� �
;
UU� �
boolVV 
isShadowMaskAlwaysVV '
=VV( )
isShadowMaskVV* 6
&&VV7 9
QualitySettingsVV: I
.VVI J
shadowmaskModeVVJ X
==VVY [
ShadowmaskModeVV\ j
.VVj k

ShadowmaskVVk u
;VVu v
boolWW 

=WW# $

.WW2 3
	lightDataWW3 <
.WW< =!
supportsMixedLightingWW= R
&&WWS U 
m_MixedLightingSetupWWV j
==WWk m
MixedLightingSetup	WWn �
.
WW� �
Subtractive
WW� �
;
WW� �
	CoreUtilsXX 
.XX 

SetKeywordXX $
(XX$ %
cmdXX% (
,XX( ) 
ShaderKeywordStringsXX* >
.XX> ? 
LightmapShadowMixingXX? S
,XXS T

||XXc e
isShadowMaskAlwaysXXf x
)XXx y
;XXy z
	CoreUtilsYY 
.YY 

SetKeywordYY $
(YY$ %
cmdYY% (
,YY( ) 
ShaderKeywordStringsYY* >
.YY> ?
ShadowsShadowMaskYY? P
,YYP Q
isShadowMaskYYR ^
)YY^ _
;YY_ `
	CoreUtilsZZ 
.ZZ 

SetKeywordZZ $
(ZZ$ %
cmdZZ% (
,ZZ( ) 
ShaderKeywordStringsZZ* >
.ZZ> ?$
MixedLightingSubtractiveZZ? W
,ZZW X

)ZZf g
;ZZg h
}[[ 
context\\ 
.\\  
ExecuteCommandBuffer\\ (
(\\( )
cmd\\) ,
)\\, -
;\\- .
CommandBufferPool]] 
.]] 
Release]] %
(]]% &
cmd]]& )
)]]) *
;]]* +
}^^ 	
void`` $
InitializeLightConstants``
(``% &
NativeArray``& 1
<``1 2
VisibleLight``2 >
>``> ?
lights``@ F
,``F G
int``H K

lightIndex``L V
,``V W
out``X [
Vector4``\ c
lightPos``d l
,``l m
out``n q
Vector4``r y

lightColor	``z �
,
``� �
out
``� �
Vector4
``� �
lightAttenuation
``� �
,
``� �
out
``� �
Vector4
``� �
lightSpotDir
``� �
,
``� �
out
``� �
Vector4
``� �(
lightOcclusionProbeChannel
``� �
)
``� �
{aa 	#
UniversalRenderPipelinebb #
.bb# $+
InitializeLightConstants_Commonbb$ C
(bbC D
lightsbbD J
,bbJ K

lightIndexbbL V
,bbV W
outbbX [
lightPosbb\ d
,bbd e
outbbf i

lightColorbbj t
,bbt u
outbbv y
lightAttenuation	bbz �
,
bb� �
out
bb� �
lightSpotDir
bb� �
,
bb� �
out
bb� �(
lightOcclusionProbeChannel
bb� �
)
bb� �
;
bb� �
ifff 
(ff 

lightIndexff 
<ff 
$numff 
)ff 
returngg 
;gg 
VisibleLightii 
	lightDataii "
=ii# $
lightsii% +
[ii+ ,

lightIndexii, 6
]ii6 7
;ii7 8
Lightjj 
lightjj 
=jj 
	lightDatajj #
.jj# $
lightjj$ )
;jj) *
ifll 
(ll 
lightll 
==ll 
nullll 
)ll 
returnmm 
;mm 
ifoo 
(oo 
lightoo 
.oo 
bakingOutputoo "
.oo" #
lightmapBakeTypeoo# 3
==oo4 6
LightmapBakeTypeoo7 G
.ooG H
MixedooH M
&&ooN P
	lightDatapp 
.pp 
lightpp 
.pp  
shadowspp  '
!=pp( *
LightShadowspp+ 7
.pp7 8
Nonepp8 <
&&pp= ? 
m_MixedLightingSetupqq $
==qq% '
MixedLightingSetupqq( :
.qq: ;
Noneqq; ?
)qq? @
{rr 
switchss 
(ss 
lightss 
.ss 
bakingOutputss *
.ss* +
mixedLightingModess+ <
)ss< =
{tt 
caseuu 
MixedLightingModeuu *
.uu* +
Subtractiveuu+ 6
:uu6 7 
m_MixedLightingSetupvv ,
=vv- .
MixedLightingSetupvv/ A
.vvA B
SubtractivevvB M
;vvM N
breakww 
;ww 
casexx 
MixedLightingModexx *
.xx* +

Shadowmaskxx+ 5
:xx5 6 
m_MixedLightingSetupyy ,
=yy- .
MixedLightingSetupyy/ A
.yyA B

ShadowMaskyyB L
;yyL M
breakzz 
;zz 
}{{ 
}|| 
}}} 	
void %
SetupShaderLightConstants
(& '

cmd5 8
,8 9
ref: =


)Y Z
{
�� 	"
m_MixedLightingSetup
��  
=
��! " 
MixedLightingSetup
��# 5
.
��5 6
None
��6 :
;
��: ;%
SetupMainLightConstants
�� #
(
��# $
cmd
��$ '
,
��' (
ref
��) ,

��- :
.
��: ;
	lightData
��; D
)
��D E
;
��E F+
SetupAdditionalLightConstants
�� )
(
��) *
cmd
��* -
,
��- .
ref
��/ 2

��3 @
)
��@ A
;
��A B
}
�� 	
void
�� %
SetupMainLightConstants
��
(
��$ %

��% 2
cmd
��3 6
,
��6 7
ref
��8 ;
	LightData
��< E
	lightData
��F O
)
��O P
{
�� 	
Vector4
�� 
lightPos
�� 
,
�� 

lightColor
�� (
,
��( )
lightAttenuation
��* :
,
��: ;
lightSpotDir
��< H
,
��H I#
lightOcclusionChannel
��J _
;
��_ `&
InitializeLightConstants
�� $
(
��$ %
	lightData
��% .
.
��. /

��/ <
,
��< =
	lightData
��> G
.
��G H
mainLightIndex
��H V
,
��V W
out
��X [
lightPos
��\ d
,
��d e
out
��f i

lightColor
��j t
,
��t u
out
��v y
lightAttenuation��z �
,��� �
out��� �
lightSpotDir��� �
,��� �
out��� �%
lightOcclusionChannel��� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  !
LightConstantBuffer
��  3
.
��3 4 
_MainLightPosition
��4 F
,
��F G
lightPos
��H P
)
��P Q
;
��Q R
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  !
LightConstantBuffer
��  3
.
��3 4
_MainLightColor
��4 C
,
��C D

lightColor
��E O
)
��O P
;
��P Q
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  !
LightConstantBuffer
��  3
.
��3 4.
 _MainLightOcclusionProbesChannel
��4 T
,
��T U#
lightOcclusionChannel
��V k
)
��k l
;
��l m
}
�� 	
void
�� +
SetupAdditionalLightConstants
��
(
��* +

��+ 8
cmd
��9 <
,
��< =
ref
��> A

��B O

��P ]
)
��] ^
{
�� 	
ref
�� 
	LightData
�� 
	lightData
�� #
=
��$ %
ref
��& )

��* 7
.
��7 8
	lightData
��8 A
;
��A B
var
�� 
cullResults
�� 
=
�� 

�� +
.
��+ ,
cullResults
��, 7
;
��7 8
var
�� 
lights
�� 
=
�� 
	lightData
�� "
.
��" #

��# 0
;
��0 1
int
�� &
maxAdditionalLightsCount
�� (
=
��) *%
UniversalRenderPipeline
��+ B
.
��B C(
maxVisibleAdditionalLights
��C ]
;
��] ^
int
�� #
additionalLightsCount
�� %
=
��& '(
SetupPerObjectLightIndices
��( B
(
��B C
cullResults
��C N
,
��N O
ref
��P S
	lightData
��T ]
)
��] ^
;
��^ _
if
�� 
(
�� #
additionalLightsCount
�� %
>
��& '
$num
��( )
)
��) *
{
�� 
if
�� 
(
�� #
m_UseStructuredBuffer
�� )
)
��) *
{
�� 
NativeArray
�� 
<
��  
ShaderInput
��  +
.
��+ ,
	LightData
��, 5
>
��5 6"
additionalLightsData
��7 K
=
��L M
new
��N Q
NativeArray
��R ]
<
��] ^
ShaderInput
��^ i
.
��i j
	LightData
��j s
>
��s t
(
��t u$
additionalLightsCount��u �
,��� �
	Allocator��� �
.��� �
Temp��� �
)��� �
;��� �
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
,
��" #
	lightIter
��$ -
=
��. /
$num
��0 1
;
��1 2
i
��3 4
<
��5 6
lights
��7 =
.
��= >
Length
��> D
&&
��E G
	lightIter
��H Q
<
��R S&
maxAdditionalLightsCount
��T l
;
��l m
++
��n p
i
��p q
)
��q r
{
�� 
VisibleLight
�� $
light
��% *
=
��+ ,
lights
��- 3
[
��3 4
i
��4 5
]
��5 6
;
��6 7
if
�� 
(
�� 
	lightData
�� %
.
��% &
mainLightIndex
��& 4
!=
��5 7
i
��8 9
)
��9 :
{
�� 
ShaderInput
�� '
.
��' (
	LightData
��( 1
data
��2 6
;
��6 7&
InitializeLightConstants
�� 4
(
��4 5
lights
��5 ;
,
��; <
i
��= >
,
��> ?
out
��  #
data
��$ (
.
��( )
position
��) 1
,
��1 2
out
��3 6
data
��7 ;
.
��; <
color
��< A
,
��A B
out
��C F
data
��G K
.
��K L
attenuation
��L W
,
��W X
out
��  #
data
��$ (
.
��( )

��) 6
,
��6 7
out
��8 ;
data
��< @
.
��@ A$
occlusionProbeChannels
��A W
)
��W X
;
��X Y"
additionalLightsData
�� 0
[
��0 1
	lightIter
��1 :
]
��: ;
=
��< =
data
��> B
;
��B C
	lightIter
�� %
++
��% '
;
��' (
}
�� 
}
�� 
var
�� 
lightDataBuffer
�� '
=
��( )

ShaderData
��* 4
.
��4 5
instance
��5 =
.
��= > 
GetLightDataBuffer
��> P
(
��P Q#
additionalLightsCount
��Q f
)
��f g
;
��g h
lightDataBuffer
�� #
.
��# $
SetData
��$ +
(
��+ ,"
additionalLightsData
��, @
)
��@ A
;
��A B
int
�� 
lightIndices
�� $
=
��% &
cullResults
��' 2
.
��2 3/
!lightAndReflectionProbeIndexCount
��3 T
;
��T U
var
��  
lightIndicesBuffer
�� *
=
��+ ,

ShaderData
��- 7
.
��7 8
instance
��8 @
.
��@ A#
GetLightIndicesBuffer
��A V
(
��V W
lightIndices
��W c
)
��c d
;
��d e
cmd
�� 
.
�� 
SetGlobalBuffer
�� '
(
��' ((
m_AdditionalLightsBufferId
��( B
,
��B C
lightDataBuffer
��D S
)
��S T
;
��T U
cmd
�� 
.
�� 
SetGlobalBuffer
�� '
(
��' ()
m_AdditionalLightsIndicesId
��( C
,
��C D 
lightIndicesBuffer
��E W
)
��W X
;
��X Y"
additionalLightsData
�� (
.
��( )
Dispose
��) 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
else
�� 
{
�� 
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
,
��" #
	lightIter
��$ -
=
��. /
$num
��0 1
;
��1 2
i
��3 4
<
��5 6
lights
��7 =
.
��= >
Length
��> D
&&
��E G
	lightIter
��H Q
<
��R S&
maxAdditionalLightsCount
��T l
;
��l m
++
��n p
i
��p q
)
��q r
{
�� 
VisibleLight
�� $
light
��% *
=
��+ ,
lights
��- 3
[
��3 4
i
��4 5
]
��5 6
;
��6 7
if
�� 
(
�� 
	lightData
�� %
.
��% &
mainLightIndex
��& 4
!=
��5 7
i
��8 9
)
��9 :
{
�� &
InitializeLightConstants
�� 4
(
��4 5
lights
��5 ;
,
��; <
i
��= >
,
��> ?
out
��@ C(
m_AdditionalLightPositions
��D ^
[
��^ _
	lightIter
��_ h
]
��h i
,
��i j
out
��  #%
m_AdditionalLightColors
��$ ;
[
��; <
	lightIter
��< E
]
��E F
,
��F G
out
��  #+
m_AdditionalLightAttenuations
��$ A
[
��A B
	lightIter
��B K
]
��K L
,
��L M
out
��  #-
m_AdditionalLightSpotDirections
��$ C
[
��C D
	lightIter
��D M
]
��M N
,
��N O
out
��  #5
'm_AdditionalLightOcclusionProbeChannels
��$ K
[
��K L
	lightIter
��L U
]
��U V
)
��V W
;
��W X
	lightIter
�� %
++
��% '
;
��' (
}
�� 
}
�� 
cmd
�� 
.
�� "
SetGlobalVectorArray
�� ,
(
��, -!
LightConstantBuffer
��- @
.
��@ A'
_AdditionalLightsPosition
��A Z
,
��Z [(
m_AdditionalLightPositions
��\ v
)
��v w
;
��w x
cmd
�� 
.
�� "
SetGlobalVectorArray
�� ,
(
��, -!
LightConstantBuffer
��- @
.
��@ A$
_AdditionalLightsColor
��A W
,
��W X%
m_AdditionalLightColors
��Y p
)
��p q
;
��q r
cmd
�� 
.
�� "
SetGlobalVectorArray
�� ,
(
��, -!
LightConstantBuffer
��- @
.
��@ A*
_AdditionalLightsAttenuation
��A ]
,
��] ^+
m_AdditionalLightAttenuations
��_ |
)
��| }
;
��} ~
cmd
�� 
.
�� "
SetGlobalVectorArray
�� ,
(
��, -!
LightConstantBuffer
��- @
.
��@ A&
_AdditionalLightsSpotDir
��A Y
,
��Y Z-
m_AdditionalLightSpotDirections
��[ z
)
��z {
;
��{ |
cmd
�� 
.
�� "
SetGlobalVectorArray
�� ,
(
��, -!
LightConstantBuffer
��- @
.
��@ A3
%_AdditionalLightOcclusionProbeChannel
��A f
,
��f g6
'm_AdditionalLightOcclusionProbeChannels��h �
)��� �
;��� �
}
�� 
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $!
LightConstantBuffer
��$ 7
.
��7 8$
_AdditionalLightsCount
��8 N
,
��N O
new
��P S
Vector4
��T [
(
��[ \
	lightData
��\ e
.
��e f0
!maxPerObjectAdditionalLightsCount��f �
,��� �
$num
�� 
,
�� 
$num
�� 
,
�� 
$num
��  $
)
��$ %
)
��% &
;
��& '
}
�� 
else
�� 
{
�� 
cmd
�� 
.
�� 
SetGlobalVector
�� #
(
��# $!
LightConstantBuffer
��$ 7
.
��7 8$
_AdditionalLightsCount
��8 N
,
��N O
Vector4
��P W
.
��W X
zero
��X \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
int
�� (
SetupPerObjectLightIndices
�� &
(
��& '
CullingResults
��' 5
cullResults
��6 A
,
��A B
ref
��C F
	LightData
��G P
	lightData
��Q Z
)
��Z [
{
�� 	
if
�� 
(
�� 
	lightData
�� 
.
�� #
additionalLightsCount
�� /
==
��0 2
$num
��3 4
)
��4 5
return
�� 
	lightData
��  
.
��  !#
additionalLightsCount
��! 6
;
��6 7
var
�� 

�� 
=
�� 
	lightData
��  )
.
��) *

��* 7
;
��7 8
var
�� $
perObjectLightIndexMap
�� &
=
��' (
cullResults
��) 4
.
��4 5
GetLightIndexMap
��5 E
(
��E F
	Allocator
��F O
.
��O P
Temp
��P T
)
��T U
;
��U V
int
�� *
globalDirectionalLightsCount
�� ,
=
��- .
$num
��/ 0
;
��0 1
int
�� #
additionalLightsCount
�� %
=
��& '
$num
��( )
;
��) *
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
��. 4
;
��4 5
++
��6 8
i
��8 9
)
��9 :
{
�� 
if
�� 
(
�� #
additionalLightsCount
�� )
>=
��* ,%
UniversalRenderPipeline
��- D
.
��D E(
maxVisibleAdditionalLights
��E _
)
��_ `
break
�� 
;
�� 
VisibleLight
�� 
light
�� "
=
��# $

��% 2
[
��2 3
i
��3 4
]
��4 5
;
��5 6
if
�� 
(
�� 
i
�� 
==
�� 
	lightData
�� "
.
��" #
mainLightIndex
��# 1
)
��1 2
{
�� $
perObjectLightIndexMap
�� *
[
��* +
i
��+ ,
]
��, -
=
��. /
-
��0 1
$num
��1 2
;
��2 3
++
�� *
globalDirectionalLightsCount
�� 2
;
��2 3
}
�� 
else
�� 
{
�� $
perObjectLightIndexMap
�� *
[
��* +
i
��+ ,
]
��, -
-=
��. 0*
globalDirectionalLightsCount
��1 M
;
��M N
++
�� #
additionalLightsCount
�� +
;
��+ ,
}
�� 
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� *
globalDirectionalLightsCount
�� 5
+
��6 7#
additionalLightsCount
��8 M
;
��M N
i
��O P
<
��Q R$
perObjectLightIndexMap
��S i
.
��i j
Length
��j p
;
��p q
++
��r t
i
��t u
)
��u v$
perObjectLightIndexMap
�� &
[
��& '
i
��' (
]
��( )
=
��* +
-
��, -
$num
��- .
;
��. /
cullResults
�� 
.
�� 
SetLightIndexMap
�� (
(
��( )$
perObjectLightIndexMap
��) ?
)
��? @
;
��@ A
if
�� 
(
�� #
m_UseStructuredBuffer
�� %
&&
��& (#
additionalLightsCount
��) >
>
��? @
$num
��A B
)
��B C
{
�� 
int
�� ,
lightAndReflectionProbeIndices
�� 2
=
��3 4
cullResults
��5 @
.
��@ A/
!lightAndReflectionProbeIndexCount
��A b
;
��b c

Assertions
�� 
.
�� 
Assert
�� !
.
��! "
IsTrue
��" (
(
��( ),
lightAndReflectionProbeIndices
��) G
>
��H I
$num
��J K
,
��K L
$str��M �
)��� �
;��� �
cullResults
�� 
.
�� 0
"FillLightAndReflectionProbeIndices
�� >
(
��> ?

ShaderData
��? I
.
��I J
instance
��J R
.
��R S#
GetLightIndicesBuffer
��S h
(
��h i-
lightAndReflectionProbeIndices��i �
)��� �
)��� �
;��� �
}
�� 
perObjectLightIndexMap
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
return
�� #
additionalLightsCount
�� (
;
��( )
}
�� 	
}
�� 
}�� �?
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Light2DManager.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
internal		 
static		
class		 
Light2DManager		 (
{

 
private 
static 
SortingLayer #
[# $
]$ %
s_SortingLayers& 5
;5 6
public
static
List
<
Light2D
>
lights
{
get
;
}
=
new
List
<
Light2D
>
(
)
;
public 
static 
void 

(( )
Light2D) 0
light1 6
)6 7
{ 	
Debug 
. 
Assert 
( 
! 
lights  
.  !
Contains! )
() *
light* /
)/ 0
)0 1
;1 2
lights 
. 
Add 
( 
light 
) 
; '
ErrorIfDuplicateGlobalLight '
(' (
light( -
)- .
;. /
} 	
public 
static 
void 
DeregisterLight *
(* +
Light2D+ 2
light3 8
)8 9
{ 	
Debug 
. 
Assert 
( 
lights 
.  
Contains  (
(( )
light) .
). /
)/ 0
;0 1
lights 
. 
Remove 
( 
light 
)  
;  !
} 	
public 
static 
void '
ErrorIfDuplicateGlobalLight 6
(6 7
Light2D7 >
light? D
)D E
{ 	
if   
(   
light   
.   
	lightType   
!=    "
Light2D  # *
.  * +
	LightType  + 4
.  4 5
Global  5 ;
)  ; <
return!! 
;!! 
foreach## 
(## 
var## 
sortingLayer## %
in##& (
light##) .
.##. /!
affectedSortingLayers##/ D
)##D E
{$$ 
if&& 
(&& (
ContainsDuplicateGlobalLight&& /
(&&/ 0
sortingLayer&&0 <
,&&< =
light&&> C
.&&C D
blendStyleIndex&&D S
)&&S T
)&&T U
Debug'' 
.'' 
LogError'' "
(''" #
$str''# I
+''J K
SortingLayer''L X
.''X Y
IDToName''Y a
(''a b
sortingLayer''b n
)''n o
+''p q
$str	''r �
+
''� �
light
''� �
.
''� �
blendStyleIndex
''� �
)
''� �
;
''� �
}(( 
})) 	
public++ 
static++ 
bool++ 
GetGlobalColor++ )
(++) *
int++* -
sortingLayerIndex++. ?
,++? @
int++A D
blendStyleIndex++E T
,++T U
out++V Y
Color++Z _
color++` e
)++e f
{,, 	
var-- 
foundGlobalColor-- !
=--" #
false--$ )
;--) *
color.. 
=.. 
Color.. 
... 
black.. 
;..  
foreach11 
(11 
var11 
light11 
in11  
lights11! '
)11' (
{22 
if33 
(33 
light33 
.33 
	lightType33 #
!=33$ &
Light2D33' .
.33. /
	LightType33/ 8
.338 9
Global339 ?
||33@ B
light44 
.44 
blendStyleIndex44 )
!=44* ,
blendStyleIndex44- <
||44= ?
!55 
light55 
.55 

IsLitLayer55 %
(55% &
sortingLayerIndex55& 7
)557 8
)558 9
continue66 
;66 
var88  
inCurrentPrefabStage88 (
=88) *
true88+ /
;88/ 0 
inCurrentPrefabStage;; $
=;;% &
PrefabStageUtility;;' 9
.;;9 :!
GetCurrentPrefabStage;;: O
(;;O P
);;P Q
?;;Q R
.;;R S"
IsPartOfPrefabContents;;S i
(;;i j
light;;j o
.;;o p

gameObject;;p z
);;z {
??;;| ~
true	;; �
;
;;� �
if>> 
(>>  
inCurrentPrefabStage>> (
)>>( )
{?? 
color@@ 
=@@ 
light@@ !
.@@! "
color@@" '
*@@( )
light@@* /
.@@/ 0
	intensity@@0 9
;@@9 :
returnAA 
trueAA 
;AA  
}BB 
elseCC 
{DD 
ifEE 
(EE 
!EE 
foundGlobalColorEE )
)EE) *
{FF 
colorGG 
=GG 
lightGG  %
.GG% &
colorGG& +
*GG, -
lightGG. 3
.GG3 4
	intensityGG4 =
;GG= >
foundGlobalColorHH (
=HH) *
trueHH+ /
;HH/ 0
}II 
}JJ 
}KK 
returnMM 
foundGlobalColorMM #
;MM# $
}NN 	
privatePP 
staticPP 
boolPP (
ContainsDuplicateGlobalLightPP 8
(PP8 9
intPP9 <
sortingLayerIndexPP= N
,PPN O
intPPP S
blendStyleIndexPPT c
)PPc d
{QQ 	
varRR 
globalLightCountRR  
=RR! "
$numRR# $
;RR$ %
foreachUU 
(UU 
varUU 
lightUU 
inUU  
lightsUU! '
)UU' (
{VV 
ifWW 
(WW 
lightWW 
.WW 
	lightTypeWW #
==WW$ &
Light2DWW' .
.WW. /
	LightTypeWW/ 8
.WW8 9
GlobalWW9 ?
&&WW@ B
lightXX 
.XX 
blendStyleIndexXX )
==XX* ,
blendStyleIndexXX- <
&&XX= ?
lightYY 
.YY 

IsLitLayerYY $
(YY$ %
sortingLayerIndexYY% 6
)YY6 7
)YY7 8
{ZZ 
if]] 
(]] 
PrefabStageUtility]] *
.]]* +
GetPrefabStage]]+ 9
(]]9 :
light]]: ?
.]]? @

gameObject]]@ J
)]]J K
==]]L N
PrefabStageUtility]]O a
.]]a b!
GetCurrentPrefabStage]]b w
(]]w x
)]]x y
)]]y z
{__ 
if`` 
(`` 
globalLightCount`` ,
>``- .
$num``/ 0
)``0 1
returnaa "
trueaa# '
;aa' (
globalLightCountcc (
++cc( *
;cc* +
}dd 
}ee 
}ff 
returnhh 
falsehh 
;hh 
}ii 	
publickk 
statickk 
SortingLayerkk "
[kk" #
]kk# $!
GetCachedSortingLayerkk% :
(kk: ;
)kk; <
{ll 	
s_SortingLayersmm 
??=mm 
SortingLayermm  ,
.mm, -
layersmm- 3
;mm3 4
ifpp 
(pp 
!pp 
Applicationpp 
.pp 
	isPlayingpp %
)pp% &
s_SortingLayersqq 
=qq  !
SortingLayerqq" .
.qq. /
layersqq/ 5
;qq5 6
returnss 
s_SortingLayersss "
;ss" #
}tt 	
}vv 
}ww �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\DeferredShaderData.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
class 	
DeferredShaderData
 
: 
IDisposable *
{		 
static

 
DeferredShaderData

 !

m_Instance

" ,
=

- .
null

/ 3
;

3 4
struct 
ComputeBufferInfo  
{
public 
uint 
	frameUsed !
;! "
public 
ComputeBufferType $
type% )
;) *
} 	
NativeArray 
< 
PreTile 
> 
[ 
] 

m_PreTiles )
=* +
null, 0
;0 1

[ 
] 
	m_Buffers !
=" #
null$ (
;( )
ComputeBufferInfo 
[ 
] 

;) *
int 

= 
$num 
; 
int 
m_CachedBufferIndex 
=  !
$num" #
;# $
uint 
m_FrameIndex
= 
$num 
; 
DeferredShaderData   
(   
)   
{!! 	

m_PreTiles"" 
="" 
new"" 
NativeArray"" (
<""( )
PreTile"") 0
>""0 1
[""1 2
DeferredConfig""2 @
.""@ A
kTilerDepth""A L
]""L M
;""M N
	m_Buffers## 
=## 
new## 

[##) *
$num##* ,
]##, -
;##- .

=$$ 
new$$ 
ComputeBufferInfo$$  1
[$$1 2
$num$$2 4
]$$4 5
;$$5 6
}%% 	
internal'' 
static'' 
DeferredShaderData'' *
instance''+ 3
{(( 	
get)) 
{** 
if++ 
(++ 

m_Instance++ 
==++ !
null++" &
)++& '

m_Instance,, 
=,,  
new,,! $
DeferredShaderData,,% 7
(,,7 8
),,8 9
;,,9 :
return.. 

m_Instance.. !
;..! "
}// 
}00 	
public22 
void22 
Dispose22 
(22 
)22 
{33 	
DisposeNativeArrays44 
(44  
ref44  #

m_PreTiles44$ .
)44. /
;44/ 0
for66 
(66 
int66 
i66 
=66 
$num66 
;66 
i66 
<66 
	m_Buffers66  )
.66) *
Length66* 0
;660 1
++662 4
i664 5
)665 6
{77 
if88 
(88 
	m_Buffers88 
[88 
i88 
]88  
!=88! #
null88$ (
)88( )
{99 
	m_Buffers:: 
[:: 
i:: 
]::  
.::  !
Dispose::! (
(::( )
)::) *
;::* +
	m_Buffers;; 
[;; 
i;; 
];;  
=;;! "
null;;# '
;;;' (
}<< 
}== 

=>> 
$num>> 
;>> 
}?? 	
internalAA 
voidAA 
ResetBuffersAA "
(AA" #
)AA# $
{BB 	
++CC 
m_FrameIndexCC 
;CC 
}DD 	
internalFF 
NativeArrayFF 
<FF 
PreTileFF $
>FF$ %
GetPreTilesFF& 1
(FF1 2
intFF2 5
levelFF6 ;
,FF; <
intFF= @
countFFA F
)FFF G
{GG 	
returnHH "
GetOrUpdateNativeArrayHH )
<HH) *
PreTileHH* 1
>HH1 2
(HH2 3
refHH3 6

m_PreTilesHH7 A
,HHA B
levelHHC H
,HHH I
countHHJ O
)HHO P
;HHP Q
}II 	
internalKK 


<KK, -
TKK- .
>KK. /
(KK/ 0
intKK0 3
countKK4 9
,KK9 :
boolKK; ?
	asCBufferKK@ I
)KKI J
whereKKK P
TKKQ R
:KKS T
structKKU [
{LL 	
intMM 
strideMM 
=MM 
MarshalMM  
.MM  !
SizeOfMM! '
<MM' (
TMM( )
>MM) *
(MM* +
)MM+ ,
;MM, -
intNN 
paddedCountNN 
=NN 
	asCBufferNN '
?NN( )
AlignNN* /
(NN/ 0
strideNN0 6
*NN7 8
countNN9 >
,NN> ?
$numNN@ B
)NNB C
/NND E
strideNNF L
:NNM N
countNNO T
;NNT U
returnOO 
GetOrUpdateBufferOO $
(OO$ %
paddedCountOO% 0
,OO0 1
strideOO2 8
,OO8 9
	asCBufferOO: C
)OOC D
;OOD E
}PP 	
NativeArrayRR 
<RR 
TRR 
>RR "
GetOrUpdateNativeArrayRR -
<RR- .
TRR. /
>RR/ 0
(RR0 1
refRR1 4
NativeArrayRR5 @
<RR@ A
TRRA B
>RRB C
[RRC D
]RRD E
nativeArraysRRF R
,RRR S
intRRT W
levelRRX ]
,RR] ^
intRR_ b
countRRc h
)RRh i
whereRRj o
TRRp q
:RRr s
structRRt z
{SS 	
ifTT 
(TT 
!TT 
nativeArraysTT 
[TT 
levelTT #
]TT# $
.TT$ %
	IsCreatedTT% .
)TT. /
{UU 
nativeArraysVV 
[VV 
levelVV "
]VV" #
=VV$ %
newVV& )
NativeArrayVV* 5
<VV5 6
TVV6 7
>VV7 8
(VV8 9
countVV9 >
,VV> ?
	AllocatorVV@ I
.VVI J

PersistentVVJ T
)VVT U
;VVU V
}WW 
elseXX 
ifXX 
(XX 
countXX 
>XX 
nativeArraysXX )
[XX) *
levelXX* /
]XX/ 0
.XX0 1
LengthXX1 7
)XX7 8
{YY 
nativeArraysZZ 
[ZZ 
levelZZ "
]ZZ" #
.ZZ# $
DisposeZZ$ +
(ZZ+ ,
)ZZ, -
;ZZ- .
nativeArrays[[ 
[[[ 
level[[ "
][[" #
=[[$ %
new[[& )
NativeArray[[* 5
<[[5 6
T[[6 7
>[[7 8
([[8 9
count[[9 >
,[[> ?
	Allocator[[@ I
.[[I J

Persistent[[J T
)[[T U
;[[U V
}\\ 
return^^ 
nativeArrays^^ 
[^^  
level^^  %
]^^% &
;^^& '
}__ 	
voidaa 
DisposeNativeArraysaa
<aa  !
Taa! "
>aa" #
(aa# $
refaa$ '
NativeArrayaa( 3
<aa3 4
Taa4 5
>aa5 6
[aa6 7
]aa7 8
nativeArraysaa9 E
)aaE F
whereaaG L
TaaM N
:aaO P
structaaQ W
{bb 	
forcc 
(cc 
intcc 
icc 
=cc 
$numcc 
;cc 
icc 
<cc 
nativeArrayscc  ,
.cc, -
Lengthcc- 3
;cc3 4
++cc5 7
icc7 8
)cc8 9
{dd 
ifee 
(ee 
nativeArraysee  
[ee  !
iee! "
]ee" #
.ee# $
	IsCreatedee$ -
)ee- .
nativeArraysff  
[ff  !
iff! "
]ff" #
.ff# $
Disposeff$ +
(ff+ ,
)ff, -
;ff- .
}gg 
}hh 	

GetOrUpdateBufferjj '
(jj' (
intjj( +
countjj, 1
,jj1 2
intjj3 6
stridejj7 =
,jj= >
booljj? C
isConstantBufferjjD T
)jjT U
{kk 	
ComputeBufferTypell 
typell "
=ll# $
isConstantBufferll% 5
?ll6 7
ComputeBufferTypell8 I
.llI J
ConstantllJ R
:llS T
ComputeBufferTypellU f
.llf g

Structuredllg q
;llq r
intpp 
maxQueuedFramespp 
=pp  !
QualitySettingspp" 1
.pp1 2
maxQueuedFramespp2 A
;ppA B

Assertionsqq 
.qq 
Assertqq 
.qq 
IsTrueqq $
(qq$ %
maxQueuedFramesqq% 4
>=qq5 7
$numqq8 9
,qq9 :
$strqq; d
)qqd e
;qqe f
fortt 
(tt 
inttt 
itt 
=tt 
$numtt 
;tt 
itt 
<tt 

;tt- .
++tt/ 1
itt1 2
)tt2 3
{uu 
intvv 
bufferIndexvv 
=vv  !
(vv" #
m_CachedBufferIndexvv# 6
+vv7 8
ivv9 :
+vv; <
$numvv= >
)vv> ?
%vv@ A

;vvO P
ifxx 
(xx 
IsLessCircularxx "
(xx" #

[xx0 1
bufferIndexxx1 <
]xx< =
.xx= >
	frameUsedxx> G
+xxH I
(xxJ K
uintxxK O
)xxO P
maxQueuedFramesxxP _
,xx_ `
m_FrameIndexxxa m
)xxm n
&&yy 

[yy$ %
bufferIndexyy% 0
]yy0 1
.yy1 2
typeyy2 6
==yy7 9
typeyy: >
&&yy? A
	m_BuffersyyB K
[yyK L
bufferIndexyyL W
]yyW X
.yyX Y
countyyY ^
==yy_ a
countyyb g
&&yyh j
	m_Buffersyyk t
[yyt u
bufferIndex	yyu �
]
yy� �
.
yy� �
stride
yy� �
==
yy� �
stride
yy� �
)
yy� �
{zz 

[{{! "
bufferIndex{{" -
]{{- .
.{{. /
	frameUsed{{/ 8
={{9 :
m_FrameIndex{{; G
;{{G H
m_CachedBufferIndex|| '
=||( )
bufferIndex||* 5
;||5 6
return}} 
	m_Buffers}} $
[}}$ %
bufferIndex}}% 0
]}}0 1
;}}1 2
}~~ 
} 
if
�� 
(
�� 

�� 
==
��  
	m_Buffers
��! *
.
��* +
Length
��+ 1
)
��1 2
{
�� 

�� 
[
�� 
]
�� 

newBuffers
��  *
=
��+ ,
new
��- 0

��1 >
[
��> ?

��? L
*
��M N
$num
��O P
]
��P Q
;
��Q R
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
��" #

��$ 1
;
��1 2
++
��3 5
i
��5 6
)
��6 7

newBuffers
�� 
[
�� 
i
��  
]
��  !
=
��" #
	m_Buffers
��$ -
[
��- .
i
��. /
]
��/ 0
;
��0 1
	m_Buffers
�� 
=
�� 

newBuffers
�� &
;
��& '
ComputeBufferInfo
�� !
[
��! "
]
��" #
newBufferInfos
��$ 2
=
��3 4
new
��5 8
ComputeBufferInfo
��9 J
[
��J K

��K X
*
��Y Z
$num
��[ \
]
��\ ]
;
��] ^
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
��" #

��$ 1
;
��1 2
++
��3 5
i
��5 6
)
��6 7
newBufferInfos
�� "
[
��" #
i
��# $
]
��$ %
=
��& '

��( 5
[
��5 6
i
��6 7
]
��7 8
;
��8 9

�� 
=
�� 
newBufferInfos
��  .
;
��. /
}
�� 
	m_Buffers
�� 
[
�� 

�� #
]
��# $
=
��% &
new
��' *

��+ 8
(
��8 9
count
��9 >
,
��> ?
stride
��@ F
,
��F G
type
��H L
,
��L M
ComputeBufferMode
��N _
.
��_ `
	Immutable
��` i
)
��i j
;
��j k

�� 
[
�� 

�� '
]
��' (
.
��( )
	frameUsed
��) 2
=
��3 4
m_FrameIndex
��5 A
;
��A B

�� 
[
�� 

�� '
]
��' (
.
��( )
type
��) -
=
��. /
type
��0 4
;
��4 5!
m_CachedBufferIndex
�� 
=
��  !

��" /
;
��/ 0
return
�� 
	m_Buffers
�� 
[
�� 

�� *
++
��* ,
]
��, -
;
��- .
}
�� 	
void
�� 
DisposeBuffers
��
(
�� 

�� )
[
��) *
,
��* +
]
��+ ,
buffers
��- 4
)
��4 5
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
�� 
buffers
��  '
.
��' (
	GetLength
��( 1
(
��1 2
$num
��2 3
)
��3 4
;
��4 5
++
��6 8
i
��8 9
)
��9 :
{
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
��  !
<
��" #
buffers
��$ +
.
��+ ,
	GetLength
��, 5
(
��5 6
$num
��6 7
)
��7 8
;
��8 9
++
��: <
j
��< =
)
��= >
{
�� 
if
�� 
(
�� 
buffers
�� 
[
��  
i
��  !
,
��! "
j
��# $
]
��$ %
!=
��& (
null
��) -
)
��- .
{
�� 
buffers
�� 
[
��  
i
��  !
,
��! "
j
��# $
]
��$ %
.
��% &
Dispose
��& -
(
��- .
)
��. /
;
��/ 0
buffers
�� 
[
��  
i
��  !
,
��! "
j
��# $
]
��$ %
=
��& '
null
��( ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 	
static
�� 
bool
�� 
IsLessCircular
�� "
(
��" #
uint
��# '
a
��( )
,
��) *
uint
��+ /
b
��0 1
)
��1 2
{
�� 	
return
�� 
a
�� 
!=
�� 
b
�� 
?
�� 
(
�� 
b
�� 
-
��  
a
��! "
)
��" #
<
��$ %
$num
��& 0
:
��1 2
false
��3 8
;
��8 9
}
�� 	
static
�� 
int
�� 
Align
�� 
(
�� 
int
�� 
s
�� 
,
�� 
int
��  #
	alignment
��$ -
)
��- .
{
�� 	
return
�� 
(
�� 
(
�� 
s
�� 
+
�� 
	alignment
�� "
-
��# $
$num
��% &
)
��& '
/
��( )
	alignment
��* 3
)
��3 4
*
��5 6
	alignment
��7 @
;
��@ A
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\SplitToning.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' E
)E F
]F G
public 

sealed 
class 
SplitToning #
:$ %
VolumeComponent& 5
,5 6!
IPostProcessComponent7 L
{ 
[ 	
Tooltip	 
( 
$str 0
)0 1
]1 2
public		 
ColorParameter		 
shadows		 %
=		& '
new		( +
ColorParameter		, :
(		: ;
Color		; @
.		@ A
grey		A E
,		E F
false		G L
,		L M
false		N S
,		S T
true		U Y
)		Y Z
;		Z [
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public 
ColorParameter 

highlights (
=) *
new+ .
ColorParameter/ =
(= >
Color> C
.C D
greyD H
,H I
falseJ O
,O P
falseQ V
,V W
trueX \
)\ ]
;] ^
[ 	
Tooltip	 
( 
$str L
)L M
]M N
public !
ClampedFloatParameter $
balance% ,
=- .
new/ 2!
ClampedFloatParameter3 H
(H I
$numI K
,K L
-M N
$numN R
,R S
$numT X
)X Y
;Y Z
public 
bool 
IsActive 
( 
) 
=> !
shadows" )
!=* ,
Color- 2
.2 3
grey3 7
||8 :

highlights; E
!=F H
ColorI N
.N O
greyO S
;S T
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
true* .
;. /
} 
} �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\ColorLookup.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' E
)E F
]F G
public 

sealed 
class 
ColorLookup #
:$ %
VolumeComponent& 5
,5 6!
IPostProcessComponent7 L
{ 
[		 	
Tooltip			 
(		 
$str		 =
)		= >
]		> ?
public

 
TextureParameter

 
texture

  '
=

( )
new

* -
TextureParameter

. >
(

> ?
null

? C
)

C D
;

D E
[ 	
Tooltip	 
( 
$str ^
)^ _
]_ `
public
ClampedFloatParameter
contribution
=
new
ClampedFloatParameter
(
$num
,
$num
,
$num
)
;
public 
bool 
IsActive 
( 
) 
=> !
contribution" .
.. /
value/ 4
>5 6
$num7 9
&&: <
ValidateLUT= H
(H I
)I J
;J K
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
true* .
;. /
public 
bool 
ValidateLUT 
(  
)  !
{ 	
var 
asset 
= #
UniversalRenderPipeline /
./ 0
asset0 5
;5 6
if 
( 
asset 
== 
null 
||  
texture! (
.( )
value) .
==/ 1
null2 6
)6 7
return 
false 
; 
int 
lutSize 
= 
asset 
.  
colorGradingLutSize  3
;3 4
if 
( 
texture 
. 
value 
. 
height $
!=% '
lutSize( /
)/ 0
return 
false 
; 
bool 
valid 
= 
false 
; 
switch 
( 
texture 
. 
value !
)! "
{   
case!! 
	Texture2D!! 
t!!  
:!!  !
valid"" 
|="" 
t"" 
."" 
width"" $
==""% '
lutSize""( /
*""0 1
lutSize""2 9
&&## 
!## !
GraphicsFormatUtility## 3
.##3 4
IsSRGBFormat##4 @
(##@ A
t##A B
.##B C
graphicsFormat##C Q
)##Q R
;##R S
break$$ 
;$$ 
case%% 

rt%%# %
:%%% &
valid&& 
|=&& 
rt&& 
.&&  
	dimension&&  )
==&&* ,
TextureDimension&&- =
.&&= >
Tex2D&&> C
&&'' 
rt'' 
.''  
width''  %
==''& (
lutSize'') 0
*''1 2
lutSize''3 :
&&(( 
!(( 
rt((  
.((  !
sRGB((! %
;((% &
break)) 
;)) 
}** 
return,, 
valid,, 
;,, 
}-- 	
}.. 
}// �7
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\DrawSkyboxPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

class 
DrawSkyboxPass 
:  ! 
ScriptableRenderPass" 6
{		 
public

 
DrawSkyboxPass

 
(

 
RenderPassEvent

 -
evt

. 1
)

1 2
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @
DrawSkyboxPass@ N
)N O
)O P
;P Q
renderPassEvent 
= 
evt !
;! "
} 	
public 
override 
void 
Execute $
($ %#
ScriptableRenderContext% <
context= D
,D E
refF I


)e f
{ 	
if 
( 

. 

cameraData (
.( )
xr) +
.+ ,
enabled, 3
)3 4
{ 
if 
( 

.! "

cameraData" ,
., -
xr- /
./ 0
singlePassEnabled0 A
)A B
{ 

.! "

cameraData" ,
., -
camera- 3
.3 4%
SetStereoProjectionMatrix4 M
(M N
CameraN T
.T U
StereoscopicEyeU d
.d e
Lefte i
,i j

.x y

cameraData	y �
.
� �!
GetProjectionMatrix
� �
(
� �
$num
� �
)
� �
)
� �
;
� �

.! "

cameraData" ,
., -
camera- 3
.3 4
SetStereoViewMatrix4 G
(G H
CameraH N
.N O
StereoscopicEyeO ^
.^ _
Left_ c
,c d

.r s

cameraDatas }
.} ~

(
� �
$num
� �
)
� �
)
� �
;
� �

.! "

cameraData" ,
., -
camera- 3
.3 4%
SetStereoProjectionMatrix4 M
(M N
CameraN T
.T U
StereoscopicEyeU d
.d e
Righte j
,j k

.y z

cameraData	z �
.
� �!
GetProjectionMatrix
� �
(
� �
$num
� �
)
� �
)
� �
;
� �

.! "

cameraData" ,
., -
camera- 3
.3 4
SetStereoViewMatrix4 G
(G H
CameraH N
.N O
StereoscopicEyeO ^
.^ _
Right_ d
,d e

.s t

cameraDatat ~
.~ 

(
� �
$num
� �
)
� �
)
� �
;
� �

cmd!!" %
=!!& '
CommandBufferPool!!( 9
.!!9 :
Get!!: =
(!!= >
)!!> ?
;!!? @
cmd$$ 
.$$ 
SetSinglePassStereo$$ +
($$+ ,

SystemInfo$$, 6
.$$6 7
supportsMultiview$$7 H
?$$I J 
SinglePassStereoMode$$K _
.$$_ `
	Multiview$$` i
:$$j k!
SinglePassStereoMode	$$l �
.
$$� �

Instancing
$$� �
)
$$� �
;
$$� �
context%% 
.%%  
ExecuteCommandBuffer%% 0
(%%0 1
cmd%%1 4
)%%4 5
;%%5 6
cmd&& 
.&& 
Clear&& 
(&& 
)&& 
;&&  
context)) 
.)) 

DrawSkybox)) &
())& '

.))4 5

cameraData))5 ?
.))? @
camera))@ F
)))F G
;))G H
cmd,, 
.,, 
SetSinglePassStereo,, +
(,,+ , 
SinglePassStereoMode,,, @
.,,@ A
None,,A E
),,E F
;,,F G
context-- 
.--  
ExecuteCommandBuffer-- 0
(--0 1
cmd--1 4
)--4 5
;--5 6
CommandBufferPool00 %
.00% &
Release00& -
(00- .
cmd00. 1
)001 2
;002 3

.22! "

cameraData22" ,
.22, -
camera22- 3
.223 4)
ResetStereoProjectionMatrices224 Q
(22Q R
)22R S
;22S T

.33! "

cameraData33" ,
.33, -
camera33- 3
.333 4#
ResetStereoViewMatrices334 K
(33K L
)33L M
;33M N
}44 
else55 
{66 

.77! "

cameraData77" ,
.77, -
camera77- 3
.773 4
projectionMatrix774 D
=77E F

.77T U

cameraData77U _
.77_ `
GetProjectionMatrix77` s
(77s t
$num77t u
)77u v
;77v w

.88! "

cameraData88" ,
.88, -
camera88- 3
.883 4
worldToCameraMatrix884 G
=88H I

.88W X

cameraData88X b
.88b c

(88p q
$num88q r
)88r s
;88s t
context:: 
.:: 

DrawSkybox:: &
(::& '

.::4 5

cameraData::5 ?
.::? @
camera::@ F
)::F G
;::G H
context<< 
.<< 
Submit<< "
(<<" #
)<<# $
;<<$ %

.>>! "

cameraData>>" ,
.>>, -
camera>>- 3
.>>3 4!
ResetProjectionMatrix>>4 I
(>>I J
)>>J K
;>>K L

.??! "

cameraData??" ,
.??, -
camera??- 3
.??3 4$
ResetWorldToCameraMatrix??4 L
(??L M
)??M N
;??N O
}@@ 
}AA 
elseBB 
{DD 
contextEE 
.EE 

DrawSkyboxEE "
(EE" #

.EE0 1

cameraDataEE1 ;
.EE; <
cameraEE< B
)EEB C
;EEC D
}FF 
}GG 	
}HH 
}II �4
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Renderer2DDataAuthoring.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
public 

partial 
class 
Renderer2DData '
{ 
[

 	
SerializeField

	 
]

 )
Renderer2DDefaultMaterialType %!
m_DefaultMaterialType& ;
=< =)
Renderer2DDefaultMaterialType> [
.[ \
Lit\ _
;_ `
[
SerializeField
,
Reload
(
$str
)
]
Material #
m_DefaultCustomMaterial (
=) *
null+ /
;/ 0
[ 	
SerializeField	 
, 
Reload 
(  
$str  J
)J K
]K L
Material  
m_DefaultLitMaterial %
=& '
null( ,
;, -
[ 	
SerializeField	 
, 
Reload 
(  
$str  L
)L M
]M N
Material "
m_DefaultUnlitMaterial '
=( )
null* .
;. /
internal 
override 
Shader  
GetDefaultShader! 1
(1 2
)2 3
{ 	
return 
Shader 
. 
Find 
( 
$str P
)P Q
;Q R
} 	
internal 
override 
Material "
GetDefaultMaterial# 5
(5 6
DefaultMaterialType6 I
materialTypeJ V
)V W
{ 	
if 
( 
materialType 
== 
DefaultMaterialType  3
.3 4
Sprite4 :
||; =
materialType> J
==K M
DefaultMaterialTypeN a
.a b
Particleb j
)j k
{ 
if 
( !
m_DefaultMaterialType )
==* ,)
Renderer2DDefaultMaterialType- J
.J K
LitK N
)N O
return    
m_DefaultLitMaterial   /
;  / 0
else!! 
if!! 
(!! !
m_DefaultMaterialType!! .
==!!/ 1)
Renderer2DDefaultMaterialType!!2 O
.!!O P
Unlit!!P U
)!!U V
return"" "
m_DefaultUnlitMaterial"" 1
;""1 2
else## 
return$$ #
m_DefaultCustomMaterial$$ 2
;$$2 3
}%% 
return'' 
null'' 
;'' 
}(( 	
private** 
void** 
OnEnableInEditor** %
(**% &
)**& '
{++ 	
const-- 
string-- 
suggestedNamesKey-- *
=--+ ,
$str--- R
;--R S
const.. 
string.. 
maskTex..  
=..! "
$str..# -
;..- .
const// 
string// 
	normalMap// "
=//# $
$str//% 1
;//1 2
string00 
suggestedNamesPrefs00 &
=00' (
EditorPrefs00) 4
.004 5
	GetString005 >
(00> ?
suggestedNamesKey00? P
)00P Q
;00Q R
if22 
(22 
string22 
.22 

(22$ %
suggestedNamesPrefs22% 8
)228 9
)229 :
EditorPrefs33 
.33 
	SetString33 %
(33% &
suggestedNamesKey33& 7
,337 8
maskTex339 @
+33A B
$str33C F
+33G H
	normalMap33I R
)33R S
;33S T
else44 
{55 
if66 
(66 
!66 
suggestedNamesPrefs66 (
.66( )
Contains66) 1
(661 2
maskTex662 9
)669 :
)66: ;
suggestedNamesPrefs77 '
+=77( *
(77+ ,
$str77, /
+770 1
maskTex772 9
)779 :
;77: ;
if99 
(99 
!99 
suggestedNamesPrefs99 (
.99( )
Contains99) 1
(991 2
	normalMap992 ;
)99; <
)99< =
suggestedNamesPrefs:: '
+=::( *
(::+ ,
$str::, /
+::0 1
	normalMap::2 ;
)::; <
;::< =
EditorPrefs<< 
.<< 
	SetString<< %
(<<% &
suggestedNamesKey<<& 7
,<<7 8
suggestedNamesPrefs<<9 L
)<<L M
;<<M N
}== 
ResourceReloader?? 
.?? 
TryReloadAllNullIn?? /
(??/ 0
this??0 4
,??4 5(
UniversalRenderPipelineAsset??6 R
.??R S
packagePath??S ^
)??^ _
;??_ `
ResourceReloader@@ 
.@@ 
TryReloadAllNullIn@@ /
(@@/ 0
m_PostProcessData@@0 A
,@@A B(
UniversalRenderPipelineAsset@@C _
.@@_ `
packagePath@@` k
)@@k l
;@@l m
}AA 	
privateCC 
voidCC 
AwakeCC 
(CC 
)CC 
{DD 	
ifEE 
(EE 
m_LightBlendStylesEE "
!=EE# %
nullEE& *
)EE* +
returnFF 
;FF 
m_LightBlendStylesHH 
=HH  
newHH! $
Light2DBlendStyleHH% 6
[HH6 7
$numHH7 8
]HH8 9
;HH9 :
forJJ 
(JJ 
intJJ 
iJJ 
=JJ 
$numJJ 
;JJ 
iJJ 
<JJ 
m_LightBlendStylesJJ  2
.JJ2 3
LengthJJ3 9
;JJ9 :
++JJ; =
iJJ= >
)JJ> ?
{KK 
m_LightBlendStylesLL "
[LL" #
iLL# $
]LL$ %
.LL% &
nameLL& *
=LL+ ,
$strLL- ;
+LL< =
iLL> ?
;LL? @
m_LightBlendStylesMM "
[MM" #
iMM# $
]MM$ %
.MM% &
	blendModeMM& /
=MM0 1
Light2DBlendStyleMM2 C
.MMC D
	BlendModeMMD M
.MMM N
MultiplyMMN V
;MMV W
m_LightBlendStylesNN "
[NN" #
iNN# $
]NN$ %
.NN% &
renderTextureScaleNN& 8
=NN9 :
$numNN; ?
;NN? @
}OO 
}PP 	
}RR 
}SS �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Data\XRSystemData.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[		 
Serializable		 
]		 
public

 

class

 
XRSystemData

 
:

 
ScriptableObject

  0
{ 
[
System
.
Diagnostics
.
CodeAnalysis
.
SuppressMessage
(
$str
,
$str
)
]
internal 
class #
CreateXRSystemDataAsset .
:/ 0
EndNameEditAction1 B
{ 	
public 
override 
void  
Action! '
(' (
int( +

instanceId, 6
,6 7
string8 >
pathName? G
,G H
stringI O
resourceFileP \
)\ ]
{ 
var 
instance 
= 
CreateInstance -
<- .
XRSystemData. :
>: ;
(; <
)< =
;= >

. 
CreateAsset )
() *
instance* 2
,2 3
pathName4 <
)< =
;= >
ResourceReloader  
.  !
ReloadAllNullIn! 0
(0 1
instance1 9
,9 :(
UniversalRenderPipelineAsset; W
.W X
packagePathX c
)c d
;d e
	Selection 
. 
activeObject &
=' (
instance) 1
;1 2
} 
} 	
[ 	
MenuItem	 
( 
$str T
,T U
priorityV ^
=_ `
	CoreUtilsa j
.j k%
assetCreateMenuPriority3	k �
)
� �
]
� �
static 
void 
CreateXRSystemData &
(& '
)' (
{ 	
ProjectWindowUtil 
. 1
%StartNameEditingIfProjectWindowExists C
(C D
$numD E
,E F
CreateInstanceG U
<U V#
CreateXRSystemDataAssetV m
>m n
(n o
)o p
,p q
$str	r �
,
� �
null
� �
,
� �
null
� �
)
� �
;
� �
} 	
[   	
Serializable  	 
,   
ReloadGroup   "
]  " #
public!! 
sealed!! 
class!! 
ShaderResources!! +
{"" 	
[## 
Reload##
(## 
$str## 7
)##7 8
]##8 9
public$$ 
Shader$$ 
xrOcclusionMeshPS$$ +
;$$+ ,
[&& 
Reload&&
(&& 
$str&& 4
)&&4 5
]&&5 6
public'' 
Shader'' 
xrMirrorViewPS'' (
;''( )
}(( 	
public** 
ShaderResources** 
shaders** &
;**& '
}++ 
},, �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\SampleCount.cs
	namespace 	
UnityEngine
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
enum5 9
SampleCount: E
{ 
One 
= 
$num 
, 
Two 
= 
$num 
, 
Four		 
=		
$num		 
,		 
}

 
} �o
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\GBufferPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
internal		 
class		
GBufferPass		 
:		   
ScriptableRenderPass		! 5
{

 
static 
ShaderTagId 
s_ShaderTagLit )
=* +
new, /
ShaderTagId0 ;
(; <
$str< A
)A B
;B C
static 
ShaderTagId  
s_ShaderTagSimpleLit /
=0 1
new2 5
ShaderTagId6 A
(A B
$strB M
)M N
;N O
static
ShaderTagId
s_ShaderTagUnlit
=
new
ShaderTagId
(
$str
)
;
static 
ShaderTagId '
s_ShaderTagUniversalGBuffer 6
=7 8
new9 <
ShaderTagId= H
(H I
$strI [
)[ \
;\ ]
static 
ShaderTagId ,
 s_ShaderTagUniversalMaterialType ;
=< =
new> A
ShaderTagIdB M
(M N
$strN e
)e f
;f g
ProfilingSampler 
m_ProfilingSampler +
=, -
new. 1
ProfilingSampler2 B
(B C
$strC S
)S T
;T U
DeferredLights 
m_DeferredLights '
;' (
ShaderTagId 
[ 
] 
m_ShaderTagValues '
;' (
RenderStateBlock 
[ 
] 
m_RenderStateBlocks .
;. /
FilteringSettings 
m_FilteringSettings -
;- .
RenderStateBlock 
m_RenderStateBlock +
;+ ,
public 
GBufferPass 
( 
RenderPassEvent *
evt+ .
,. /
RenderQueueRange0 @
renderQueueRangeA Q
,Q R
	LayerMaskS \
	layerMask] f
,f g
StencilStateh t
stencilState	u �
,
� �
int
� �
stencilReference
� �
,
� �
DeferredLights
� �
deferredLights
� �
)
� �
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @
GBufferPass@ K
)K L
)L M
;M N
base 
. 
renderPassEvent  
=! "
evt# &
;& '
m_DeferredLights   
=   
deferredLights   -
;  - .
m_FilteringSettings!! 
=!!  !
new!!" %
FilteringSettings!!& 7
(!!7 8
renderQueueRange!!8 H
,!!H I
	layerMask!!J S
)!!S T
;!!T U
m_RenderStateBlock"" 
=""  
new""! $
RenderStateBlock""% 5
(""5 6
RenderStateMask""6 E
.""E F
Nothing""F M
)""M N
;""N O
m_RenderStateBlock$$ 
.$$ 
stencilState$$ +
=$$, -
stencilState$$. :
;$$: ;
m_RenderStateBlock%% 
.%% 
stencilReference%% /
=%%0 1
stencilReference%%2 B
;%%B C
m_RenderStateBlock&& 
.&& 
mask&& #
=&&$ %
RenderStateMask&&& 5
.&&5 6
Stencil&&6 =
;&&= >
m_ShaderTagValues(( 
=(( 
new((  #
ShaderTagId(($ /
[((/ 0
$num((0 1
]((1 2
;((2 3
m_ShaderTagValues)) 
[)) 
$num)) 
]))  
=))! "
s_ShaderTagLit))# 1
;))1 2
m_ShaderTagValues** 
[** 
$num** 
]**  
=**! " 
s_ShaderTagSimpleLit**# 7
;**7 8
m_ShaderTagValues++ 
[++ 
$num++ 
]++  
=++! "
s_ShaderTagUnlit++# 3
;++3 4
m_ShaderTagValues,, 
[,, 
$num,, 
],,  
=,,! "
new,,# &
ShaderTagId,,' 2
(,,2 3
),,3 4
;,,4 5
m_RenderStateBlocks.. 
=..  !
new.." %
RenderStateBlock..& 6
[..6 7
$num..7 8
]..8 9
;..9 :
m_RenderStateBlocks// 
[//  
$num//  !
]//! "
=//# $
DeferredLights//% 3
.//3 4
OverwriteStencil//4 D
(//D E
m_RenderStateBlock//E W
,//W X
(//Y Z
int//Z ]
)//] ^
StencilUsage//^ j
.//j k
MaterialMask//k w
,//w x
(//y z
int//z }
)//} ~
StencilUsage	//~ �
.
//� �
MaterialLit
//� �
)
//� �
;
//� �
m_RenderStateBlocks00 
[00  
$num00  !
]00! "
=00# $
DeferredLights00% 3
.003 4
OverwriteStencil004 D
(00D E
m_RenderStateBlock00E W
,00W X
(00Y Z
int00Z ]
)00] ^
StencilUsage00^ j
.00j k
MaterialMask00k w
,00w x
(00y z
int00z }
)00} ~
StencilUsage	00~ �
.
00� �
MaterialSimpleLit
00� �
)
00� �
;
00� �
m_RenderStateBlocks11 
[11  
$num11  !
]11! "
=11# $
DeferredLights11% 3
.113 4
OverwriteStencil114 D
(11D E
m_RenderStateBlock11E W
,11W X
(11Y Z
int11Z ]
)11] ^
StencilUsage11^ j
.11j k
MaterialMask11k w
,11w x
(11y z
int11z }
)11} ~
StencilUsage	11~ �
.
11� �

11� �
)
11� �
;
11� �
m_RenderStateBlocks22 
[22  
$num22  !
]22! "
=22# $
m_RenderStateBlocks22% 8
[228 9
$num229 :
]22: ;
;22; <
}33 	
public55 
override55 
void55 
	Configure55 &
(55& '

cmd555 8
,558 9#
RenderTextureDescriptor55: Q#
cameraTextureDescriptor55R i
)55i j
{66 	
RenderTargetHandle77 
[77 
]77  
gbufferAttachments77! 3
=774 5
m_DeferredLights776 F
.77F G
GbufferAttachments77G Y
;77Y Z
for:: 
(:: 
int:: 
i:: 
=:: 
$num:: 
;:: 
i:: 
<:: 
gbufferAttachments::  2
.::2 3
Length::3 9
;::9 :
++::; =
i::= >
)::> ?
{;; 
if== 
(== 
i== 
!=== 
m_DeferredLights== )
.==) * 
GBufferLightingIndex==* >
)==> ?
{>> #
RenderTextureDescriptor?? +
gbufferSlice??, 8
=??9 :#
cameraTextureDescriptor??; R
;??R S
gbufferSlice@@  
.@@  !
depthBufferBits@@! 0
=@@1 2
$num@@3 4
;@@4 5
gbufferSliceAA  
.AA  !

=AA/ 0
GraphicsFormatAA1 ?
.AA? @
NoneAA@ D
;AAD E
gbufferSliceBB  
.BB  !
graphicsFormatBB! /
=BB0 1
m_DeferredLightsBB2 B
.BBB C
GetGBufferFormatBBC S
(BBS T
iBBT U
)BBU V
;BBV W
cmdCC 
.CC 
GetTemporaryRTCC &
(CC& '
m_DeferredLightsCC' 7
.CC7 8
GbufferAttachmentsCC8 J
[CCJ K
iCCK L
]CCL M
.CCM N
idCCN P
,CCP Q
gbufferSliceCCR ^
)CC^ _
;CC_ `
}DD 
}EE 
ConfigureTargetGG 
(GG 
m_DeferredLightsGG ,
.GG, -(
GbufferAttachmentIdentifiersGG- I
,GGI J
m_DeferredLightsGGK [
.GG[ \%
DepthAttachmentIdentifierGG\ u
)GGu v
;GGv w
ConfigureClearJJ 
(JJ 
	ClearFlagJJ $
.JJ$ %
NoneJJ% )
,JJ) *
ColorJJ+ 0
.JJ0 1
blackJJ1 6
)JJ6 7
;JJ7 8
}KK 	
publicMM 
overrideMM 
voidMM 
ExecuteMM $
(MM$ %#
ScriptableRenderContextMM% <
contextMM= D
,MMD E
refMMF I


)MMe f
{NN 	

gbufferCommandsOO )
=OO* +
CommandBufferPoolOO, =
.OO= >
GetOO> A
(OOA B
)OOB C
;OOC D
usingPP 
(PP 
newPP 
ProfilingScopePP %
(PP% &
gbufferCommandsPP& 5
,PP5 6
m_ProfilingSamplerPP7 I
)PPI J
)PPJ K
{QQ 
ifUU 
(UU 
m_DeferredLightsUU $
.UU$ %
	IsOverlayUU% .
)UU. /
m_DeferredLightsVV $
.VV$ %
ClearStencilPartialVV% 8
(VV8 9
gbufferCommandsVV9 H
)VVH I
;VVI J
contextXX 
.XX  
ExecuteCommandBufferXX ,
(XX, -
gbufferCommandsXX- <
)XX< =
;XX= >
gbufferCommandsYY 
.YY  
ClearYY  %
(YY% &
)YY& '
;YY' (
ref[[ 

CameraData[[ 

cameraData[[ )
=[[* +
ref[[, /

.[[= >

cameraData[[> H
;[[H I
Camera\\ 
camera\\ 
=\\ 

cameraData\\  *
.\\* +
camera\\+ 1
;\\1 2
ShaderTagId]] 
lightModeTag]] (
=]]) *'
s_ShaderTagUniversalGBuffer]]+ F
;]]F G
DrawingSettings^^ 
drawingSettings^^  /
=^^0 1!
CreateDrawingSettings^^2 G
(^^G H
lightModeTag^^H T
,^^T U
ref^^V Y

,^^g h

.^^v w

cameraData	^^w �
.
^^� �$
defaultOpaqueSortFlags
^^� �
)
^^� �
;
^^� �
ShaderTagId__ $
universalMaterialTypeTag__ 4
=__5 6,
 s_ShaderTagUniversalMaterialType__7 W
;__W X
NativeArrayaa 
<aa 
ShaderTagIdaa '
>aa' (
	tagValuesaa) 2
=aa3 4
newaa5 8
NativeArrayaa9 D
<aaD E
ShaderTagIdaaE P
>aaP Q
(aaQ R
m_ShaderTagValuesaaR c
,aac d
	Allocatoraae n
.aan o
Tempaao s
)aas t
;aat u
NativeArraybb 
<bb 
RenderStateBlockbb ,
>bb, -
stateBlocksbb. 9
=bb: ;
newbb< ?
NativeArraybb@ K
<bbK L
RenderStateBlockbbL \
>bb\ ]
(bb] ^
m_RenderStateBlocksbb^ q
,bbq r
	Allocatorbbs |
.bb| }
Temp	bb} �
)
bb� �
;
bb� �
contextcc 
.cc 

(cc% &

.cc3 4
cullResultscc4 ?
,cc? @
refccA D
drawingSettingsccE T
,ccT U
refccV Y
m_FilteringSettingsccZ m
,ccm n%
universalMaterialTypeTag	cco �
,
cc� �
false
cc� �
,
cc� �
	tagValues
cc� �
,
cc� �
stateBlocks
cc� �
)
cc� �
;
cc� �
	tagValuesdd 
.dd 
Disposedd !
(dd! "
)dd" #
;dd# $
stateBlocksee 
.ee 
Disposeee #
(ee# $
)ee$ %
;ee% &
RenderingUtilshh 
.hh "
RenderObjectsWithErrorhh 5
(hh5 6
contexthh6 =
,hh= >
refhh? B

.hhP Q
cullResultshhQ \
,hh\ ]
camerahh^ d
,hhd e
m_FilteringSettingshhf y
,hhy z
SortingCriteria	hh{ �
.
hh� �
None
hh� �
)
hh� �
;
hh� �
}ii 
contextjj 
.jj  
ExecuteCommandBufferjj (
(jj( )
gbufferCommandsjj) 8
)jj8 9
;jj9 :
CommandBufferPoolkk 
.kk 
Releasekk %
(kk% &
gbufferCommandskk& 5
)kk5 6
;kk6 7
}ll 	
publicnn 
overridenn 
voidnn 
OnCameraCleanupnn ,
(nn, -

cmdnn; >
)nn> ?
{oo 	
RenderTargetHandlepp 
[pp 
]pp  
gbufferAttachmentspp! 3
=pp4 5
m_DeferredLightspp6 F
.ppF G
GbufferAttachmentsppG Y
;ppY Z
forrr 
(rr 
intrr 
irr 
=rr 
$numrr 
;rr 
irr 
<rr 
gbufferAttachmentsrr  2
.rr2 3
Lengthrr3 9
;rr9 :
++rr; =
irr= >
)rr> ?
ifss 
(ss 
iss 
!=ss 
m_DeferredLightsss )
.ss) * 
GBufferLightingIndexss* >
)ss> ?
cmdtt 
.tt 
ReleaseTemporaryRTtt *
(tt* +
gbufferAttachmentstt+ =
[tt= >
itt> ?
]tt? @
.tt@ A
idttA C
)ttC D
;ttD E
}uu 	
}vv 
}ww �l
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\CopyDepthPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
public 

class 

:   
ScriptableRenderPass! 5
{ 
private 
RenderTargetHandle "
source# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
private 
RenderTargetHandle "
destination# .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
internal 
bool 

AllocateRT  
{" #
get$ '
;' (
set) ,
;, -
}. /
Material 
m_CopyDepthMaterial $
;$ %
public 

( 
RenderPassEvent ,
evt- 0
,0 1
Material2 :
copyDepthMaterial; L
)L M
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @

)M N
)N O
;O P

AllocateRT 
= 
true 
; 
m_CopyDepthMaterial 
=  !
copyDepthMaterial" 3
;3 4
renderPassEvent 
= 
evt !
;! "
} 	
public!! 
void!! 
Setup!! 
(!! 
RenderTargetHandle!! ,
source!!- 3
,!!3 4
RenderTargetHandle!!5 G
destination!!H S
)!!S T
{"" 	
this## 
.## 
source## 
=## 
source##  
;##  !
this$$ 
.$$ 
destination$$ 
=$$ 
destination$$ *
;$$* +
this%% 
.%% 

AllocateRT%% 
=%% 

AllocateRT%% (
&&%%) +
!%%, -
destination%%- 8
.%%8 9%
HasInternalRenderTargetId%%9 R
(%%R S
)%%S T
;%%T U
}&& 	
public(( 
override(( 
void(( 

(((* +

cmd((9 <
,((< =
ref((> A


)((] ^
{)) 	
var** 

descriptor** 
=** 

.*** +

cameraData**+ 5
.**5 6"
cameraTargetDescriptor**6 L
;**L M

descriptor++ 
.++ 
colorFormat++ "
=++# $
RenderTextureFormat++% 8
.++8 9
Depth++9 >
;++> ?

descriptor,, 
.,, 
depthBufferBits,, &
=,,' (
$num,,) +
;,,+ ,

descriptor-- 
.-- 
msaaSamples-- "
=--# $
$num--% &
;--& '
if.. 
(.. 
this.. 
... 

AllocateRT.. 
)..  
cmd// 
.// 
GetTemporaryRT// "
(//" #
destination//# .
.//. /
id/// 1
,//1 2

descriptor//3 =
,//= >

FilterMode//? I
.//I J
Point//J O
)//O P
;//P Q
ConfigureTarget22 
(22 
new22 "
RenderTargetIdentifier22  6
(226 7
destination227 B
.22B C

Identifier22C M
(22M N
)22N O
,22O P
$num22Q R
,22R S
CubemapFace22T _
.22_ `
Unknown22` g
,22g h
-22i j
$num22j k
)22k l
)22l m
;22m n
ConfigureClear33 
(33 
	ClearFlag33 $
.33$ %
None33% )
,33) *
Color33+ 0
.330 1
black331 6
)336 7
;337 8
}44 	
public77 
override77 
void77 
Execute77 $
(77$ %#
ScriptableRenderContext77% <
context77= D
,77D E
ref77F I


)77e f
{88 	
if99 
(99 
m_CopyDepthMaterial99 #
==99$ &
null99' +
)99+ ,
{:: 
Debug;; 
.;; 
LogErrorFormat;; $
(;;$ %
$str	;;% �
,
;;� �!
m_CopyDepthMaterial
;;� �
,
;;� �
GetType
;;� �
(
;;� �
)
;;� �
.
;;� �
Name
;;� �
)
;;� �
;
;;� �
return<< 
;<< 
}== 

cmd>> 
=>> 
CommandBufferPool>>  1
.>>1 2
Get>>2 5
(>>5 6
)>>6 7
;>>7 8
using?? 
(?? 
new?? 
ProfilingScope?? %
(??% &
cmd??& )
,??) *
ProfilingSampler??+ ;
.??; <
Get??< ?
(??? @
URPProfileId??@ L
.??L M
	CopyDepth??M V
)??V W
)??W X
)??X Y
{@@ 
RenderTextureDescriptorAA '

descriptorAA( 2
=AA3 4

.AAB C

cameraDataAAC M
.AAM N"
cameraTargetDescriptorAAN d
;AAd e
intBB 

=BB" #

descriptorBB$ .
.BB. /
msaaSamplesBB/ :
;BB: ;

CameraDataDD 

cameraDataDD %
=DD& '

.DD5 6

cameraDataDD6 @
;DD@ A
switchFF 
(FF 

)FF% &
{GG 
caseHH 
$numHH 
:HH 
cmdII 
.II  
DisableShaderKeywordII 0
(II0 1 
ShaderKeywordStringsII1 E
.IIE F

DepthMsaa2IIF P
)IIP Q
;IIQ R
cmdJJ 
.JJ  
DisableShaderKeywordJJ 0
(JJ0 1 
ShaderKeywordStringsJJ1 E
.JJE F

DepthMsaa4JJF P
)JJP Q
;JJQ R
cmdKK 
.KK 
EnableShaderKeywordKK /
(KK/ 0 
ShaderKeywordStringsKK0 D
.KKD E

DepthMsaa8KKE O
)KKO P
;KKP Q
breakLL 
;LL 
caseNN 
$numNN 
:NN 
cmdOO 
.OO  
DisableShaderKeywordOO 0
(OO0 1 
ShaderKeywordStringsOO1 E
.OOE F

DepthMsaa2OOF P
)OOP Q
;OOQ R
cmdPP 
.PP 
EnableShaderKeywordPP /
(PP/ 0 
ShaderKeywordStringsPP0 D
.PPD E

DepthMsaa4PPE O
)PPO P
;PPP Q
cmdQQ 
.QQ  
DisableShaderKeywordQQ 0
(QQ0 1 
ShaderKeywordStringsQQ1 E
.QQE F

DepthMsaa8QQF P
)QQP Q
;QQQ R
breakRR 
;RR 
caseTT 
$numTT 
:TT 
cmdUU 
.UU 
EnableShaderKeywordUU /
(UU/ 0 
ShaderKeywordStringsUU0 D
.UUD E

DepthMsaa2UUE O
)UUO P
;UUP Q
cmdVV 
.VV  
DisableShaderKeywordVV 0
(VV0 1 
ShaderKeywordStringsVV1 E
.VVE F

DepthMsaa4VVF P
)VVP Q
;VVQ R
cmdWW 
.WW  
DisableShaderKeywordWW 0
(WW0 1 
ShaderKeywordStringsWW1 E
.WWE F

DepthMsaa8WWF P
)WWP Q
;WWQ R
breakXX 
;XX 
default[[ 
:[[ 
cmd\\ 
.\\  
DisableShaderKeyword\\ 0
(\\0 1 
ShaderKeywordStrings\\1 E
.\\E F

DepthMsaa2\\F P
)\\P Q
;\\Q R
cmd]] 
.]]  
DisableShaderKeyword]] 0
(]]0 1 
ShaderKeywordStrings]]1 E
.]]E F

DepthMsaa4]]F P
)]]P Q
;]]Q R
cmd^^ 
.^^  
DisableShaderKeyword^^ 0
(^^0 1 
ShaderKeywordStrings^^1 E
.^^E F

DepthMsaa8^^F P
)^^P Q
;^^Q R
break__ 
;__ 
}`` 
cmdbb 
.bb 
SetGlobalTexturebb $
(bb$ %
$strbb% =
,bb= >
sourcebb? E
.bbE F

IdentifierbbF P
(bbP Q
)bbQ R
)bbR S
;bbS T
ifgg 
(gg 

.gg! "

cameraDatagg" ,
.gg, -
xrgg- /
.gg/ 0
enabledgg0 7
)gg7 8
{hh 
booloo &
isRenderToBackBufferTargetoo 3
=oo4 5
destinationoo6 A
.ooA B

IdentifierooB L
(ooL M
)ooM N
==ooO Q

cameraDataooR \
.oo\ ]
xroo] _
.oo_ `
renderTargetoo` l
&&oom o
!oop q

cameraDataooq {
.oo{ |
xroo| ~
.oo~ (
renderTargetIsRenderTexture	oo �
;
oo� �
boolpp 
yflippp 
=pp  &
isRenderToBackBufferTargetpp! ;
&&pp< >

SystemInfopp? I
.ppI J!
graphicsUVStartsAtTopppJ _
;pp_ `
floatqq 
flipSignqq "
=qq# $
(qq% &
yflipqq& +
)qq+ ,
?qq- .
-qq/ 0
$numqq0 4
:qq5 6
$numqq7 ;
;qq; <
Vector4rr 
scaleBiasRtrr '
=rr( )
(rr* +
flipSignrr+ 3
<rr4 5
$numrr6 :
)rr: ;
?ss 
newss 
Vector4ss %
(ss% &
flipSignss& .
,ss. /
$numss0 4
,ss4 5
-ss6 7
$numss7 ;
,ss; <
$numss= A
)ssA B
:tt 
newtt 
Vector4tt %
(tt% &
flipSigntt& .
,tt. /
$numtt0 4
,tt4 5
$numtt6 :
,tt: ;
$numtt< @
)tt@ A
;ttA B
cmduu 
.uu 
SetGlobalVectoruu '
(uu' (
ShaderPropertyIduu( 8
.uu8 9
scaleBiasRtuu9 D
,uuD E
scaleBiasRtuuF Q
)uuQ R
;uuR S
cmdww 
.ww 
DrawProceduralww &
(ww& '
	Matrix4x4ww' 0
.ww0 1
identityww1 9
,ww9 :
m_CopyDepthMaterialww; N
,wwN O
$numwwP Q
,wwQ R
MeshTopologywwS _
.ww_ `
Quadsww` e
,wwe f
$numwwg h
)wwh i
;wwi j
}xx 
elseyy 
{{{ 
float
�� 
flipSign
�� "
=
��# $
(
��% &

cameraData
��& 0
.
��0 1-
IsCameraProjectionMatrixFlipped
��1 P
(
��P Q
)
��Q R
)
��R S
?
��T U
-
��V W
$num
��W [
:
��\ ]
$num
��^ b
;
��b c
Vector4
�� 
scaleBiasRt
�� '
=
��( )
(
��* +
flipSign
��+ 3
<
��4 5
$num
��6 :
)
��: ;
?
�� 
new
�� 
Vector4
�� %
(
��% &
flipSign
��& .
,
��. /
$num
��0 4
,
��4 5
-
��6 7
$num
��7 ;
,
��; <
$num
��= A
)
��A B
:
�� 
new
�� 
Vector4
�� %
(
��% &
flipSign
��& .
,
��. /
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
)
��@ A
;
��A B
cmd
�� 
.
�� 
SetGlobalVector
�� '
(
��' (
ShaderPropertyId
��( 8
.
��8 9
scaleBiasRt
��9 D
,
��D E
scaleBiasRt
��F Q
)
��Q R
;
��R S
cmd
�� 
.
�� 
DrawMesh
��  
(
��  !
RenderingUtils
��! /
.
��/ 0
fullscreenMesh
��0 >
,
��> ?
	Matrix4x4
��@ I
.
��I J
identity
��J R
,
��R S!
m_CopyDepthMaterial
��T g
)
��g h
;
��h i
}
�� 
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +
}
�� 	
public
�� 
override
�� 
void
�� 
OnCameraCleanup
�� ,
(
��, -

��- :
cmd
��; >
)
��> ?
{
�� 	
if
�� 
(
�� 
cmd
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 5
)
��5 6
;
��6 7
if
�� 
(
�� 
this
�� 
.
�� 

AllocateRT
�� 
)
��  
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '
destination
��' 2
.
��2 3
id
��3 5
)
��5 6
;
��6 7
destination
�� 
=
��  
RenderTargetHandle
�� ,
.
��, -
CameraTarget
��- 9
;
��9 :
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Data\RenderStateData.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
System 
. 
Serializable 
] 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
class5 :
StencilStateData; K
{ 
public 
bool  
overrideStencilState (
=) *
false+ 0
;0 1
public		 
int		 
stencilReference		 #
=		$ %
$num		& '
;		' (
public

 
CompareFunction

 "
stencilCompareFunction

 5
=

6 7
CompareFunction

8 G
.

G H
Always

H N
;

N O
public 
	StencilOp 

=' (
	StencilOp) 2
.2 3
Keep3 7
;7 8
public 
	StencilOp 

=' (
	StencilOp) 2
.2 3
Keep3 7
;7 8
public
	StencilOp
zFailOperation
=
	StencilOp
.
Keep
;
} 
} �r
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\ScriptableRendererData.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public 

abstract 
class "
ScriptableRendererData 0
:1 2
ScriptableObject3 C
{ 
internal 
bool 

{$ %
get& )
;) *
set+ .
;. /
}0 1
	protected 
abstract 
ScriptableRenderer -
Create. 4
(4 5
)5 6
;6 7
[ 	
SerializeField	 
] 
internal !
List" &
<& '%
ScriptableRendererFeature' @
>@ A
m_RendererFeaturesB T
=U V
newW Z
List[ _
<_ `%
ScriptableRendererFeature` y
>y z
(z {
$num{ }
)} ~
;~ 
[ 	
SerializeField	 
] 
internal !
List" &
<& '
long' +
>+ , 
m_RendererFeatureMap- A
=B C
newD G
ListH L
<L M
longM Q
>Q R
(R S
$numS U
)U V
;V W
public"" 
List"" 
<"" %
ScriptableRendererFeature"" -
>""- .
rendererFeatures""/ ?
{## 	
get$$ 
=>$$ 
m_RendererFeatures$$ %
;$$% &
}%% 	
public++ 
new++ 
void++ 
SetDirty++  
(++  !
)++! "
{,, 	

=-- 
true--  
;--  !
}.. 	
internal00 
ScriptableRenderer00 #"
InternalCreateRenderer00$ :
(00: ;
)00; <
{11 	

=22 
false22 !
;22! "
return33 
Create33 
(33 
)33 
;33 
}44 	
	protected66 
virtual66 
void66 

OnValidate66 )
(66) *
)66* +
{77 	
SetDirty88 
(88 
)88 
;88 
if:: 
(:: 
m_RendererFeatures:: "
.::" #
Contains::# +
(::+ ,
null::, 0
)::0 1
)::1 2$
ValidateRendererFeatures;; (
(;;( )
);;) *
;;;* +
}== 	
	protected?? 
virtual?? 
void?? 
OnEnable?? '
(??' (
)??( )
{@@ 	
SetDirtyAA 
(AA 
)AA 
;AA 
}BB 	
internalEE 
virtualEE 
MaterialEE !
GetDefaultMaterialEE" 4
(EE4 5
DefaultMaterialTypeEE5 H
materialTypeEEI U
)EEU V
{FF 	
returnGG 
nullGG 
;GG 
}HH 	
internalJJ 
virtualJJ 
ShaderJJ 
GetDefaultShaderJJ  0
(JJ0 1
)JJ1 2
{KK 	
returnLL 
nullLL 
;LL 
}MM 	
internalOO 
boolOO $
ValidateRendererFeaturesOO .
(OO. /
)OO/ 0
{PP 	
varRR 
	subassetsRR 
=RR 

.RR) *
LoadAllAssetsAtPathRR* =
(RR= >

.RRK L
GetAssetPathRRL X
(RRX Y
thisRRY ]
)RR] ^
)RR^ _
;RR_ `
varSS 
	linkedIdsSS 
=SS 
newSS 
ListSS  $
<SS$ %
longSS% )
>SS) *
(SS* +
)SS+ ,
;SS, -
varTT 
loadedAssetsTT 
=TT 
newTT "

DictionaryTT# -
<TT- .
longTT. 2
,TT2 3
objectTT4 :
>TT: ;
(TT; <
)TT< =
;TT= >
varUU 
mapValidUU 
=UU  
m_RendererFeatureMapUU /
!=UU0 2
nullUU3 7
&&UU8 : 
m_RendererFeatureMapUU; O
?UUO P
.UUP Q
CountUUQ V
==UUW Y
m_RendererFeaturesUUZ l
?UUl m
.UUm n
CountUUn s
;UUs t
varVV 
debugOutputVV 
=VV 
$"VV  
{VV  !
nameVV! %
}VV% &!
\nValid Sub-assets:\nVV& ;
"VV; <
;VV< =
foreachYY 
(YY 
varYY 
assetYY 
inYY !
	subassetsYY" +
)YY+ ,
{ZZ 
if[[ 
([[ 
asset[[ 
==[[ 
null[[ !
||[[" $
asset[[% *
.[[* +
GetType[[+ 2
([[2 3
)[[3 4
.[[4 5
BaseType[[5 =
!=[[> @
typeof[[A G
([[G H%
ScriptableRendererFeature[[H a
)[[a b
)[[b c
continue[[d l
;[[l m

.\\ ,
 TryGetGUIDAndLocalFileIdentifier\\ >
(\\> ?
asset\\? D
,\\D E
out\\F I
var\\J M
guid\\N R
,\\R S
out\\T W
long\\X \
localId\\] d
)\\d e
;\\e f
loadedAssets]] 
.]] 
Add]]  
(]]  !
localId]]! (
,]]( )
asset]]* /
)]]/ 0
;]]0 1
debugOutput^^ 
+=^^ 
$"^^ !
-^^! "
{^^" #
asset^^# (
.^^( )
name^^) -
}^^- .
\n--localId=^^. :
{^^: ;
localId^^; B
}^^B C
\n^^C E
"^^E F
;^^F G
}__ 
forbb 
(bb 
varbb 
ibb 
=bb 
$numbb 
;bb 
ibb 
<bb 
m_RendererFeaturesbb  2
?bb2 3
.bb3 4
Countbb4 9
;bb9 :
ibb; <
++bb< >
)bb> ?
{cc 
ifdd 
(dd 
!dd 
m_RendererFeaturesdd '
[dd' (
idd( )
]dd) *
)dd* +
continuedd, 4
;dd4 5
ifee 
(ee 

.ee! ",
 TryGetGUIDAndLocalFileIdentifieree" B
(eeB C
m_RendererFeatureseeC U
[eeU V
ieeV W
]eeW X
,eeX Y
outeeZ ]
varee^ a
guideeb f
,eef g
outeeh k
longeel p
localIdeeq x
)eex y
)eey z
{ff 
	linkedIdsgg 
.gg 
Addgg !
(gg! "
localIdgg" )
)gg) *
;gg* +
}hh 
}ii 
varkk 
mapDebugkk 
=kk 
mapValidkk #
?kk$ %
$strkk& /
:kk0 1
$strkk2 W
;kkW X
debugOutputll 
+=ll 
$"ll  
Feature List Status(ll 1
{ll1 2
mapDebugll2 :
}ll: ;
):\nll; ?
"ll? @
;ll@ A
foroo 
(oo 
varoo 
ioo 
=oo 
$numoo 
;oo 
ioo 
<oo 
m_RendererFeaturesoo  2
?oo2 3
.oo3 4
Countoo4 9
;oo9 :
ioo; <
++oo< >
)oo> ?
{pp 
ifqq 
(qq 
m_RendererFeaturesqq &
[qq& '
iqq' (
]qq( )
==qq* ,
nullqq- 1
)qq1 2
{rr 
ifss 
(ss 
mapValidss  
&&ss! # 
m_RendererFeatureMapss$ 8
[ss8 9
iss9 :
]ss: ;
!=ss< >
$numss? @
)ss@ A
{tt 
varuu 
localIduu #
=uu$ % 
m_RendererFeatureMapuu& :
[uu: ;
iuu; <
]uu< =
;uu= >
loadedAssetsvv $
.vv$ %
TryGetValuevv% 0
(vv0 1
localIdvv1 8
,vv8 9
outvv: =
varvv> A
assetvvB G
)vvG H
;vvH I
m_RendererFeaturesww *
[ww* +
iww+ ,
]ww, -
=ww. /
(ww0 1%
ScriptableRendererFeatureww1 J
)wwJ K
assetwwL Q
;wwQ R
}xx 
elseyy 
{zz 
m_RendererFeatures{{ *
[{{* +
i{{+ ,
]{{, -
={{. /
({{0 1%
ScriptableRendererFeature{{1 J
){{J K
GetUnusedAsset{{L Z
({{Z [
ref{{[ ^
	linkedIds{{_ h
,{{h i
ref{{j m
loadedAssets{{n z
){{z {
;{{{ |
}|| 
}}} 
debugOutput 
+= 
m_RendererFeatures 1
[1 2
i2 3
]3 4
!=5 7
null8 <
?= >
$"? A
-A B
{B C
iC D
}D E
	:Linked\nE N
"N O
:P Q
$"R T
-T U
{U V
iV W
}W X

:Missing\nX b
"b c
;c d
}
�� 
	UpdateMap
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
��  
m_RendererFeatures
�� #
.
��# $
Contains
��$ ,
(
��, -
null
��- 1
)
��1 2
)
��2 3
return
�� 
true
�� 
;
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� 
{
�� 
name
�� "
}
��" #b
T is missing RendererFeatures\nThis could be due to missing scripts or compile error.
��# w
"
��w x
,
��x y
this
��z ~
)
��~ 
;�� �
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� #
DuplicateFeatureCheck
�� +
(
��+ ,
Type
��, 0
type
��1 5
)
��5 6
{
�� 	
var
�� 
isSingleFeature
�� 
=
��  !
type
��" &
.
��& ' 
GetCustomAttribute
��' 9
(
��9 :
typeof
��: @
(
��@ A-
DisallowMultipleRendererFeature
��A `
)
��` a
)
��a b
;
��b c
return
�� 
isSingleFeature
�� "
!=
��# %
null
��& *
&&
��+ - 
m_RendererFeatures
��. @
.
��@ A
Select
��A G
(
��G H

��H U
=>
��V X

��Y f
.
��f g
GetType
��g n
(
��n o
)
��o p
)
��p q
.
��q r
Any
��r u
(
��u v
t
��v w
=>
��x z
t
��{ |
==
��} 
type��� �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
object
�� 
GetUnusedAsset
�� ,
(
��, -
ref
��- 0
List
��1 5
<
��5 6
long
��6 :
>
��: ;
usedIds
��< C
,
��C D
ref
��E H

Dictionary
��I S
<
��S T
long
��T X
,
��X Y
object
��Z `
>
��` a
assets
��b h
)
��h i
{
�� 	
foreach
�� 
(
�� 
var
�� 
asset
�� 
in
�� !
assets
��" (
)
��( )
{
�� 
var
�� 

�� !
=
��" #
usedIds
��$ +
.
��+ ,
Any
��, /
(
��/ 0
used
��0 4
=>
��5 7
asset
��8 =
.
��= >
Key
��> A
==
��B D
used
��E I
)
��I J
;
��J K
if
�� 
(
�� 

�� !
)
��! "
continue
�� 
;
�� 
usedIds
�� 
.
�� 
Add
�� 
(
�� 
asset
�� !
.
��! "
Key
��" %
)
��% &
;
��& '
return
�� 
asset
�� 
.
�� 
Value
�� "
;
��" #
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
	UpdateMap
�� 
(
�� 
)
��  
{
�� 	
if
�� 
(
�� "
m_RendererFeatureMap
�� $
.
��$ %
Count
��% *
!=
��+ - 
m_RendererFeatures
��. @
.
��@ A
Count
��A F
)
��F G
{
�� 
m_RendererFeatureMap
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -"
m_RendererFeatureMap
�� $
.
��$ %
AddRange
��% -
(
��- .
new
��. 1
long
��2 6
[
��6 7 
m_RendererFeatures
��7 I
.
��I J
Count
��J O
]
��O P
)
��P Q
;
��Q R
}
�� 
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
rendererFeatures
��  0
.
��0 1
Count
��1 6
;
��6 7
i
��8 9
++
��9 ;
)
��; <
{
�� 
if
�� 
(
��  
m_RendererFeatures
�� %
[
��% &
i
��& '
]
��' (
==
��) +
null
��, 0
)
��0 1
continue
��2 :
;
��: ;
if
�� 
(
�� 
!
�� 

�� "
.
��" #.
 TryGetGUIDAndLocalFileIdentifier
��# C
(
��C D 
m_RendererFeatures
��D V
[
��V W
i
��W X
]
��X Y
,
��Y Z
out
��[ ^
var
��_ b
guid
��c g
,
��g h
out
��i l
long
��m q
localId
��r y
)
��y z
)
��z {
continue��| �
;��� �"
m_RendererFeatureMap
�� $
[
��$ %
i
��% &
]
��& '
=
��( )
localId
��* 1
;
��1 2
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\ScriptableRenderPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Flags 

]
 
public 

enum %
ScriptableRenderPassInput )
{
None 
=
$num 
, 
Depth 
= 
$num 
<< 
$num 
, 
Normal 
= 
$num 
<< 
$num 
, 
Color 
= 
$num 
<< 
$num 
, 
} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
RenderPassEvent: I
{ 
BeforeRendering!! 
=!! 
$num!! 
,!! "
BeforeRenderingShadows'' 
=''  
$num''! #
,''# $!
AfterRenderingShadows-- 
=-- 
$num--  #
,--# $$
BeforeRenderingPrepasses33  
=33! "
$num33# &
,33& '#
AfterRenderingPrePasses99 
=99  !
$num99" %
,99% &"
BeforeRenderingOpaques>> 
=>>  
$num>>! $
,>>$ %!
AfterRenderingOpaquesCC 
=CC 
$numCC  #
,CC# $!
BeforeRenderingSkyboxHH 
=HH 
$numHH  #
,HH# $ 
AfterRenderingSkyboxMM 
=MM 
$numMM "
,MM" #'
BeforeRenderingTransparentsRR #
=RR$ %
$numRR& )
,RR) *&
AfterRenderingTransparentsWW "
=WW# $
$numWW% (
,WW( ))
BeforeRenderingPostProcessing\\ %
=\\& '
$num\\( +
,\\+ ,(
AfterRenderingPostProcessingaa $
=aa% &
$numaa' *
,aa* +
AfterRenderingff 
=ff 
$numff 
,ff 
}gg 
[ll 
	MovedFromll 
(ll 
$strll +
)ll+ ,
]ll, -
publicll. 4
abstractll5 =
partialll> E
classllF K 
ScriptableRenderPassllL `
{mm 
publicnn 
RenderPassEventnn 
renderPassEventnn .
{nn/ 0
getnn1 4
;nn4 5
setnn6 9
;nn9 :
}nn; <
publicpp "
RenderTargetIdentifierpp %
[pp% &
]pp& '
colorAttachmentspp( 8
{qq 	
getrr 
=>rr 
m_ColorAttachmentsrr %
;rr% &
}ss 	
publicuu "
RenderTargetIdentifieruu %
colorAttachmentuu& 5
{vv 	
getww 
=>ww 
m_ColorAttachmentsww %
[ww% &
$numww& '
]ww' (
;ww( )
}xx 	
publiczz "
RenderTargetIdentifierzz %
depthAttachmentzz& 5
{{{ 	
get|| 
=>|| 
m_DepthAttachment|| $
;||$ %
}}} 	
public
�� '
ScriptableRenderPassInput
�� (
input
��) .
{
�� 	
get
�� 
=>
�� 
m_Input
�� 
;
�� 
}
�� 	
public
�� 
	ClearFlag
�� 
	clearFlag
�� "
{
�� 	
get
�� 
=>
�� 
m_ClearFlag
�� 
;
�� 
}
�� 	
public
�� 
Color
�� 

clearColor
�� 
{
�� 	
get
�� 
=>
�� 
m_ClearColor
�� 
;
��  
}
�� 	
	protected
�� 
internal
�� 
ProfilingSampler
�� +
profilingSampler
��, <
{
��= >
get
��? B
;
��B C
set
��D G
;
��G H
}
��I J
internal
�� 
bool
�� "
overrideCameraTarget
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
internal
�� 
bool
�� 
isBlitRenderPass
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4$
RenderTargetIdentifier
�� 
[
�� 
]
��   
m_ColorAttachments
��! 3
=
��4 5
new
��6 9$
RenderTargetIdentifier
��: P
[
��P Q
]
��Q R
{
��R S&
BuiltinRenderTextureType
��S k
.
��k l
CameraTarget
��l x
}
��x y
;
��y z$
RenderTargetIdentifier
�� 
m_DepthAttachment
�� 0
=
��1 2&
BuiltinRenderTextureType
��3 K
.
��K L
CameraTarget
��L X
;
��X Y'
ScriptableRenderPassInput
�� !
m_Input
��" )
=
��* +'
ScriptableRenderPassInput
��, E
.
��E F
None
��F J
;
��J K
	ClearFlag
�� 
m_ClearFlag
�� 
=
�� 
	ClearFlag
��  )
.
��) *
None
��* .
;
��. /
Color
�� 
m_ClearColor
�� 
=
�� 
Color
�� "
.
��" #
black
��# (
;
��( )
public
�� "
ScriptableRenderPass
�� #
(
��# $
)
��$ %
{
�� 	
renderPassEvent
�� 
=
�� 
RenderPassEvent
�� -
.
��- .#
AfterRenderingOpaques
��. C
;
��C D 
m_ColorAttachments
�� 
=
��  
new
��! $$
RenderTargetIdentifier
��% ;
[
��; <
]
��< =
{
��= >&
BuiltinRenderTextureType
��> V
.
��V W
CameraTarget
��W c
,
��c d
$num
��e f
,
��f g
$num
��h i
,
��i j
$num
��k l
,
��l m
$num
��n o
,
��o p
$num
��q r
,
��r s
$num
��t u
,
��u v
$num
��w x
}
��x y
;
��y z
m_DepthAttachment
�� 
=
�� &
BuiltinRenderTextureType
��  8
.
��8 9
CameraTarget
��9 E
;
��E F
m_ClearFlag
�� 
=
�� 
	ClearFlag
�� #
.
��# $
None
��$ (
;
��( )
m_ClearColor
�� 
=
�� 
Color
��  
.
��  !
black
��! &
;
��& '"
overrideCameraTarget
��  
=
��! "
false
��# (
;
��( )
isBlitRenderPass
�� 
=
�� 
false
�� $
;
��$ %
profilingSampler
�� 
=
�� 
new
�� "
ProfilingSampler
��# 3
(
��3 4
nameof
��4 :
(
��: ;"
ScriptableRenderPass
��; O
)
��O P
)
��P Q
;
��Q R
}
�� 	
public
�� 
void
�� 
ConfigureInput
�� "
(
��" #'
ScriptableRenderPassInput
��# <
	passInput
��= F
)
��F G
{
�� 	
m_Input
�� 
=
�� 
	passInput
�� 
;
��  
}
�� 	
public
�� 
void
�� 
ConfigureTarget
�� #
(
��# $$
RenderTargetIdentifier
��$ :
colorAttachment
��; J
,
��J K$
RenderTargetIdentifier
��L b
depthAttachment
��c r
)
��r s
{
�� 	
m_DepthAttachment
�� 
=
�� 
depthAttachment
��  /
;
��/ 0
ConfigureTarget
�� 
(
�� 
colorAttachment
�� +
)
��+ ,
;
��, -
}
�� 	
public
�� 
void
�� 
ConfigureTarget
�� #
(
��# $$
RenderTargetIdentifier
��$ :
[
��: ;
]
��; <
colorAttachments
��= M
,
��M N$
RenderTargetIdentifier
��O e
depthAttachment
��f u
)
��u v
{
�� 	"
overrideCameraTarget
��  
=
��! "
true
��# '
;
��' (
uint
�� !
nonNullColorBuffers
�� $
=
��% &
RenderingUtils
��' 5
.
��5 6&
GetValidColorBufferCount
��6 N
(
��N O
colorAttachments
��O _
)
��_ `
;
��` a
if
�� 
(
�� !
nonNullColorBuffers
�� #
>
��$ %

SystemInfo
��& 0
.
��0 1(
supportedRenderTargetCount
��1 K
)
��K L
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� /
+
��0 1!
nonNullColorBuffers
��2 E
+
��F G
$str��H �
+��� �

SystemInfo��� �
.��� �*
supportedRenderTargetCount��� �
)��� �
;��� � 
m_ColorAttachments
�� 
=
��  
colorAttachments
��! 1
;
��1 2
m_DepthAttachment
�� 
=
�� 
depthAttachment
��  /
;
��/ 0
}
�� 	
public
�� 
void
�� 
ConfigureTarget
�� #
(
��# $$
RenderTargetIdentifier
��$ :
colorAttachment
��; J
)
��J K
{
�� 	"
overrideCameraTarget
��  
=
��! "
true
��# '
;
��' ( 
m_ColorAttachments
�� 
[
�� 
$num
��  
]
��  !
=
��" #
colorAttachment
��$ 3
;
��3 4
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
m_ColorAttachments
��  2
.
��2 3
Length
��3 9
;
��9 :
++
��; =
i
��= >
)
��> ? 
m_ColorAttachments
�� "
[
��" #
i
��# $
]
��$ %
=
��& '
$num
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
ConfigureTarget
�� #
(
��# $$
RenderTargetIdentifier
��$ :
[
��: ;
]
��; <
colorAttachments
��= M
)
��M N
{
�� 	
ConfigureTarget
�� 
(
�� 
colorAttachments
�� ,
,
��, -&
BuiltinRenderTextureType
��. F
.
��F G
CameraTarget
��G S
)
��S T
;
��T U
}
�� 	
public
�� 
void
�� 
ConfigureClear
�� "
(
��" #
	ClearFlag
��# ,
	clearFlag
��- 6
,
��6 7
Color
��8 =

clearColor
��> H
)
��H I
{
�� 	
m_ClearFlag
�� 
=
�� 
	clearFlag
�� #
;
��# $
m_ClearColor
�� 
=
�� 

clearColor
�� %
;
��% &
}
�� 	
public
�� 
virtual
�� 
void
�� 

�� )
(
��) *

��* 7
cmd
��8 ;
,
��; <
ref
��= @

��A N

��O \
)
��\ ]
{
�� 	
}
��	 

public
�� 
virtual
�� 
void
�� 
	Configure
�� %
(
��% &

��& 3
cmd
��4 7
,
��7 8%
RenderTextureDescriptor
��9 P%
cameraTextureDescriptor
��Q h
)
��h i
{
�� 	
}
��	 

public
�� 
virtual
�� 
void
�� 
OnCameraCleanup
�� +
(
��+ ,

��, 9
cmd
��: =
)
��= >
{
�� 	
}
�� 	
public
�� 
virtual
�� 
void
�� *
OnFinishCameraStackRendering
�� 8
(
��8 9

��9 F
cmd
��G J
)
��J K
{
�� 	
}
��	 

public
�� 
abstract
�� 
void
�� 
Execute
�� $
(
��$ %%
ScriptableRenderContext
��% <
context
��= D
,
��D E
ref
��F I

��J W

��X e
)
��e f
;
��f g
public
�� 
void
�� 
Blit
�� 
(
�� 

�� &
cmd
��' *
,
��* +$
RenderTargetIdentifier
��, B
source
��C I
,
��I J$
RenderTargetIdentifier
��K a
destination
��b m
,
��m n
Material
��o w
material��x �
=��� �
null��� �
,��� �
int��� �
	passIndex��� �
=��� �
$num��� �
)��� �
{
�� 	 
ScriptableRenderer
�� 
.
�� 
SetRenderTarget
�� .
(
��. /
cmd
��/ 2
,
��2 3
destination
��4 ?
,
��? @&
BuiltinRenderTextureType
��A Y
.
��Y Z
CameraTarget
��Z f
,
��f g
	clearFlag
��h q
,
��q r

clearColor
��s }
)
��} ~
;
��~ 
cmd
�� 
.
�� 
Blit
�� 
(
�� 
source
�� 
,
�� 
destination
�� (
,
��( )
material
��* 2
,
��2 3
	passIndex
��4 =
)
��= >
;
��> ?
}
�� 	
public
�� 
DrawingSettings
�� #
CreateDrawingSettings
�� 4
(
��4 5
ShaderTagId
��5 @
shaderTagId
��A L
,
��L M
ref
��N Q

��R _

��` m
,
��m n
SortingCriteria
��o ~
sortingCriteria�� �
)��� �
{
�� 	
Camera
�� 
camera
�� 
=
�� 

�� )
.
��) *

cameraData
��* 4
.
��4 5
camera
��5 ;
;
��; <
SortingSettings
�� 
sortingSettings
�� +
=
��, -
new
��. 1
SortingSettings
��2 A
(
��A B
camera
��B H
)
��H I
{
��J K
criteria
��L T
=
��U V
sortingCriteria
��W f
}
��g h
;
��h i
DrawingSettings
�� 
settings
�� $
=
��% &
new
��' *
DrawingSettings
��+ :
(
��: ;
shaderTagId
��; F
,
��F G
sortingSettings
��H W
)
��W X
{
�� 

�� 
=
�� 

��  -
.
��- .

��. ;
,
��; <
mainLightIndex
�� 
=
��  

��! .
.
��. /
	lightData
��/ 8
.
��8 9
mainLightIndex
��9 G
,
��G H#
enableDynamicBatching
�� %
=
��& '

��( 5
.
��5 6%
supportsDynamicBatching
��6 M
,
��M N
enableInstancing
��  
=
��! "
camera
��# )
.
��) *

cameraType
��* 4
==
��5 7

CameraType
��8 B
.
��B C
Preview
��C J
?
��K L
false
��M R
:
��S T
true
��U Y
,
��Y Z
}
�� 
;
��
return
�� 
settings
�� 
;
�� 
}
�� 	
public
�� 
DrawingSettings
�� #
CreateDrawingSettings
�� 4
(
��4 5
List
��5 9
<
��9 :
ShaderTagId
��: E
>
��E F
shaderTagIdList
��G V
,
��V W
ref
�� 

�� 

�� +
,
��+ ,
SortingCriteria
��- <
sortingCriteria
��= L
)
��L M
{
�� 	
if
�� 
(
�� 
shaderTagIdList
�� 
==
��  "
null
��# '
||
��( *
shaderTagIdList
��+ :
.
��: ;
Count
��; @
==
��A C
$num
��D E
)
��E F
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! |
)
��| }
;
��} ~
return
�� #
CreateDrawingSettings
�� ,
(
��, -
new
��- 0
ShaderTagId
��1 <
(
��< =
$str
��= P
)
��P Q
,
��Q R
ref
��S V

��W d
,
��d e
sortingCriteria
��f u
)
��u v
;
��v w
}
�� 
DrawingSettings
�� 
settings
�� $
=
��% &#
CreateDrawingSettings
��' <
(
��< =
shaderTagIdList
��= L
[
��L M
$num
��M N
]
��N O
,
��O P
ref
��Q T

��U b
,
��b c
sortingCriteria
��d s
)
��s t
;
��t u
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
shaderTagIdList
��  /
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
��: ;
settings
�� 
.
�� 
SetShaderPassName
�� *
(
��* +
i
��+ ,
,
��, -
shaderTagIdList
��. =
[
��= >
i
��> ?
]
��? @
)
��@ A
;
��A B
return
�� 
settings
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
�� 
operator
�� #
<
��$ %
(
��% &"
ScriptableRenderPass
��& :
lhs
��; >
,
��> ?"
ScriptableRenderPass
��@ T
rhs
��U X
)
��X Y
{
�� 	
return
�� 
lhs
�� 
.
�� 
renderPassEvent
�� &
<
��' (
rhs
��) ,
.
��, -
renderPassEvent
��- <
;
��< =
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>
��$ %
(
��% &"
ScriptableRenderPass
��& :
lhs
��; >
,
��> ?"
ScriptableRenderPass
��@ T
rhs
��U X
)
��X Y
{
�� 	
return
�� 
lhs
�� 
.
�� 
renderPassEvent
�� &
>
��' (
rhs
��) ,
.
��, -
renderPassEvent
��- <
;
��< =
}
�� 	
}
�� 
}�� �&
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\SceneViewDrawMode.cs
	namespace 	
UnityEditor
 
. 
	Rendering 
.  
	Universal  )
{ 
internal 
static
class 
SceneViewDrawMode +
{ 
static		 
HashSet		 
<		 
	SceneView		  
>		  !)
sceneViewHaveValidateFunction		" ?
=		@ A
new		B E
HashSet		F M
<		M N
	SceneView		N W
>		W X
(		X Y
)		Y Z
;		Z [
static 
bool 
RejectDrawMode "
(" #
	SceneView# ,
., -

CameraMode- 7

cameraMode8 B
)B C
{ 	
if
(

cameraMode
.
drawMode
==
DrawCameraMode
.
ShadowCascades
||

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
RenderPaths6 A
||B D

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
AlphaChannel6 B
||C E

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
Overdraw6 >
||? A

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
Mipmaps6 =
||> @

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6

SpriteMask6 @
||A C

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
DeferredDiffuse6 E
||F H

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
DeferredSpecular6 F
||G I

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
DeferredSmoothness6 H
||I K

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
DeferredNormal6 D
||E G

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6
ValidateAlbedo6 D
||E G

cameraMode 
. 
drawMode #
==$ &
DrawCameraMode' 5
.5 6!
ValidateMetalSpecular6 K
) 
return 
false 
; 
return 
true 
; 
} 	
static 
void !
UpdateSceneViewStates )
() *
)* +
{   	
foreach!! 
(!! 
	SceneView!! 
	sceneView!! (
in!!) +
	SceneView!!, 5
.!!5 6

sceneViews!!6 @
)!!@ A
{"" 
if## 
(## )
sceneViewHaveValidateFunction## 1
.##1 2
Contains##2 :
(##: ;
	sceneView##; D
)##D E
)##E F
continue$$ 
;$$ 
	sceneView'' 
.''  
onValidateCameraMode'' .
+=''/ 1
RejectDrawMode''2 @
;''@ A)
sceneViewHaveValidateFunction(( -
.((- .
Add((. 1
(((1 2
	sceneView((2 ;
)((; <
;((< =
})) 
}** 	
public,, 
static,, 
void,, 

(,,( )
),,) *
{-- 	
EditorApplication.. 
... 
update.. $
-=..% '!
UpdateSceneViewStates..( =
;..= >
EditorApplication// 
.// 
update// $
+=//% '!
UpdateSceneViewStates//( =
;//= >
}00 	
public22 
static22 
void22 

(22( )
)22) *
{33 	
EditorApplication44 
.44 
update44 $
-=44% '!
UpdateSceneViewStates44( =
;44= >
foreach66 
(66 
var66 
	sceneView66 "
in66# %)
sceneViewHaveValidateFunction66& C
)66C D
	sceneView77 
.77  
onValidateCameraMode77 .
-=77/ 1
RejectDrawMode772 @
;77@ A)
sceneViewHaveValidateFunction88 )
.88) *
Clear88* /
(88/ 0
)880 1
;881 2
}99 	
}:: 
};; �r
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Shadows\ShadowCaster2D.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
[ 
ExecuteInEditMode 
] 
[
DisallowMultipleComponent
]
[ 
AddComponentMenu 
( 
$str D
)D E
]E F
public 

class 
ShadowCaster2D 
:  !
ShadowCasterGroup2D" 5
{ 
[ 	
SerializeField	 
] 
bool 

=, -
false. 3
;3 4
[ 	
SerializeField	 
] 
bool #
m_UseRendererSilhouette 5
=6 7
true8 <
;< =
[ 	
SerializeField	 
] 
bool 
m_CastsShadows ,
=- .
true/ 3
;3 4
[ 	
SerializeField	 
] 
bool 

=, -
false. 3
;3 4
[ 	
SerializeField	 
] 
int 
[ 
] "
m_ApplyToSortingLayers 5
=6 7
null8 <
;< =
[ 	
SerializeField	 
] 
Vector3  
[  !
]! "
m_ShapePath# .
=/ 0
null1 5
;5 6
[ 	
SerializeField	 
] 
int 
m_ShapePathHash ,
=- .
$num/ 0
;0 1
[ 	
SerializeField	 
] 
Mesh 
m_Mesh $
;$ %
[ 	
SerializeField	 
] 
int 
m_InstanceId )
;) *
internal 
ShadowCasterGroup2D $
m_ShadowCasterGroup% 8
=9 :
null; ?
;? @
internal 
ShadowCasterGroup2D $'
m_PreviousShadowCasterGroup% @
=A B
nullC G
;G H
internal 
Mesh 
mesh 
=> 
m_Mesh $
;$ %
internal 
Vector3 
[ 
] 
	shapePath $
=>% '
m_ShapePath( 3
;3 4
internal   
int   

{  # $
get  % (
{  ) *
return  + 1
m_ShapePathHash  2 A
;  A B
}  C D
set  E H
{  I J
m_ShapePathHash  K Z
=  [ \
value  ] b
;  b c
}  d e
}  f g
int"" !
m_PreviousShadowGroup"" !
=""" #
$num""$ %
;""% &
bool## "
m_PreviousCastsShadows##
=##$ %
true##& *
;##* +
int$$ 
m_PreviousPathHash$$ 
=$$  
$num$$! "
;$$" #
public** 
bool** !
useRendererSilhouette** )
{++ 	
set,, 
{,, #
m_UseRendererSilhouette,, )
=,,* +
value,,, 1
;,,1 2
},,3 4
get-- 
{-- 
return-- #
m_UseRendererSilhouette-- 0
&&--1 3

;--A B
}--D E
}.. 	
public33 
bool33 
selfShadows33 
{44 	
set55 
{55 

=55  !
value55" '
;55' (
}55) *
get66 
{66 
return66 

;66& '
}66( )
}77 	
public<< 
bool<< 
castsShadows<<  
{== 	
set>> 
{>> 
m_CastsShadows>>  
=>>! "
value>># (
;>>( )
}>>* +
get?? 
{?? 
return?? 
m_CastsShadows?? '
;??' (
}??) *
}@@ 	
staticBB 
intBB 
[BB 
]BB #
SetDefaultSortingLayersBB ,
(BB, -
)BB- .
{CC 	
intDD 

layerCountDD 
=DD 
SortingLayerDD )
.DD) *
layersDD* 0
.DD0 1
LengthDD1 7
;DD7 8
intEE 
[EE 
]EE 
	allLayersEE 
=EE 
newEE !
intEE" %
[EE% &

layerCountEE& 0
]EE0 1
;EE1 2
forGG 
(GG 
intGG 

layerIndexGG 
=GG 
$numGG  
;GG  !

layerIndexGG! +
<GG, -

layerCountGG. 8
;GG8 9

layerIndexGG9 C
++GGC E
)GGE F
{HH 
	allLayersII 
[II 

layerIndexII $
]II$ %
=II& '
SortingLayerII( 4
.II4 5
layersII5 ;
[II; <

layerIndexII< F
]IIF G
.IIG H
idIIH J
;IIJ K
}JJ 
returnLL 
	allLayersLL 
;LL 
}MM 	
internalOO 
boolOO 
IsShadowedLayerOO %
(OO% &
intOO& )
layerOO* /
)OO/ 0
{PP 	
returnQQ "
m_ApplyToSortingLayersQQ )
!=QQ* ,
nullQQ- 1
?QQ2 3
ArrayQQ4 9
.QQ9 :
IndexOfQQ: A
(QQA B"
m_ApplyToSortingLayersQQB X
,QQX Y
layerQQZ _
)QQ_ `
>=QQa c
$numQQd e
:QQf g
falseQQh m
;QQm n
}RR 	
privateTT 
voidTT 
AwakeTT 
(TT 
)TT 
{UU 	
ifVV 
(VV "
m_ApplyToSortingLayersVV &
==VV' )
nullVV* .
)VV. /"
m_ApplyToSortingLayersWW &
=WW' (#
SetDefaultSortingLayersWW) @
(WW@ A
)WWA B
;WWB C
BoundsYY 
boundsYY 
=YY 
newYY 
BoundsYY  &
(YY& '
	transformYY' 0
.YY0 1
positionYY1 9
,YY9 :
Vector3YY; B
.YYB C
oneYYC F
)YYF G
;YYG H
Renderer[[ 
renderer[[ 
=[[ 
GetComponent[[  ,
<[[, -
Renderer[[- 5
>[[5 6
([[6 7
)[[7 8
;[[8 9
if\\ 
(\\ 
renderer\\ 
!=\\ 
null\\  
)\\  !
{]] 
bounds^^ 
=^^ 
renderer^^ !
.^^! "
bounds^^" (
;^^( )
}__ 
elseaa 
{bb 

Collider2Dcc 
collidercc #
=cc$ %
GetComponentcc& 2
<cc2 3

Collider2Dcc3 =
>cc= >
(cc> ?
)cc? @
;cc@ A
ifdd 
(dd 
colliderdd 
!=dd 
nulldd  $
)dd$ %
boundsee 
=ee 
collideree %
.ee% &
boundsee& ,
;ee, -
}ff 
Vector3ii 
	relOffsetii 
=ii 
boundsii  &
.ii& '
centerii' -
-ii. /
	transformii0 9
.ii9 :
positionii: B
;iiB C
ifkk 
(kk 
m_ShapePathkk 
==kk 
nullkk #
||kk$ &
m_ShapePathkk' 2
.kk2 3
Lengthkk3 9
==kk: <
$numkk= >
)kk> ?
{ll 
m_ShapePathmm 
=mm 
newmm !
Vector3mm" )
[mm) *
]mm* +
{nn 
	relOffsetoo 
+oo 
newoo  #
Vector3oo$ +
(oo+ ,
-oo, -
boundsoo- 3
.oo3 4
extentsoo4 ;
.oo; <
xoo< =
,oo= >
-oo? @
boundsoo@ F
.ooF G
extentsooG N
.ooN O
yooO P
)ooP Q
,ooQ R
	relOffsetpp 
+pp 
newpp  #
Vector3pp$ +
(pp+ ,
boundspp, 2
.pp2 3
extentspp3 :
.pp: ;
xpp; <
,pp< =
-pp> ?
boundspp? E
.ppE F
extentsppF M
.ppM N
yppN O
)ppO P
,ppP Q
	relOffsetqq 
+qq 
newqq  #
Vector3qq$ +
(qq+ ,
boundsqq, 2
.qq2 3
extentsqq3 :
.qq: ;
xqq; <
,qq< =
boundsqq> D
.qqD E
extentsqqE L
.qqL M
yqqM N
)qqN O
,qqO P
	relOffsetrr 
+rr 
newrr  #
Vector3rr$ +
(rr+ ,
-rr, -
boundsrr- 3
.rr3 4
extentsrr4 ;
.rr; <
xrr< =
,rr= >
boundsrr? E
.rrE F
extentsrrF M
.rrM N
yrrN O
)rrO P
}ss 
;ss 
}tt 
}uu 	
	protectedww 
voidww 
OnEnableww 
(ww  
)ww  !
{xx 	
ifyy 
(yy 
m_Meshyy 
==yy 
nullyy 
||yy !
m_InstanceIdyy" .
!=yy/ 1

(yy? @
)yy@ A
)yyA B
{zz 
m_Mesh{{ 
={{ 
new{{ 
Mesh{{ !
({{! "
){{" #
;{{# $

.|| 
GenerateShadowMesh|| 0
(||0 1
m_Mesh||1 7
,||7 8
m_ShapePath||9 D
)||D E
;||E F
m_InstanceId}} 
=}} 

(}}, -
)}}- .
;}}. /
}~~ 
m_ShadowCasterGroup
�� 
=
��  !
null
��" &
;
��& '
}
�� 	
	protected
�� 
void
�� 
	OnDisable
��  
(
��  !
)
��! "
{
�� 	(
ShadowCasterGroup2DManager
�� &
.
��& ')
RemoveFromShadowCasterGroup
��' B
(
��B C
this
��C G
,
��G H!
m_ShadowCasterGroup
��I \
)
��\ ]
;
��] ^
}
�� 	
public
�� 
void
�� 
Update
�� 
(
�� 
)
�� 
{
�� 	
Renderer
�� 
renderer
�� 
=
�� 
GetComponent
��  ,
<
��, -
Renderer
��- 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9

�� 
=
�� 
renderer
�� $
!=
��% '
null
��( ,
;
��, -
bool
�� 
rebuildMesh
�� 
=
�� 
LightUtility
�� +
.
��+ ,
CheckForChange
��, :
(
��: ;
m_ShapePathHash
��; J
,
��J K
ref
��L O 
m_PreviousPathHash
��P b
)
��b c
;
��c d
if
�� 
(
�� 
rebuildMesh
�� 
)
�� 

�� 
.
��  
GenerateShadowMesh
�� 0
(
��0 1
m_Mesh
��1 7
,
��7 8
m_ShapePath
��9 D
)
��D E
;
��E F)
m_PreviousShadowCasterGroup
�� '
=
��( )!
m_ShadowCasterGroup
��* =
;
��= >
bool
�� 
addedToNewGroup
��  
=
��! "(
ShadowCasterGroup2DManager
��# =
.
��= >$
AddToShadowCasterGroup
��> T
(
��T U
this
��U Y
,
��Y Z
ref
��[ ^!
m_ShadowCasterGroup
��_ r
)
��r s
;
��s t
if
�� 
(
�� 
addedToNewGroup
�� 
&&
��  "!
m_ShadowCasterGroup
��# 6
!=
��7 9
null
��: >
)
��> ?
{
�� 
if
�� 
(
�� )
m_PreviousShadowCasterGroup
�� /
==
��0 2
this
��3 7
)
��7 8(
ShadowCasterGroup2DManager
�� .
.
��. /
RemoveGroup
��/ :
(
��: ;
this
��; ?
)
��? @
;
��@ A(
ShadowCasterGroup2DManager
�� *
.
��* +)
RemoveFromShadowCasterGroup
��+ F
(
��F G
this
��G K
,
��K L)
m_PreviousShadowCasterGroup
��M h
)
��h i
;
��i j
if
�� 
(
�� !
m_ShadowCasterGroup
�� '
==
��( *
this
��+ /
)
��/ 0(
ShadowCasterGroup2DManager
�� .
.
��. /
AddGroup
��/ 7
(
��7 8
this
��8 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
LightUtility
�� 
.
�� 
CheckForChange
�� +
(
��+ ,

��, 9
,
��9 :
ref
��; >#
m_PreviousShadowGroup
��? T
)
��T U
)
��U V
{
�� 
ShadowCasterGroup2DManager
�� *
.
��* +
RemoveGroup
��+ 6
(
��6 7
this
��7 ;
)
��; <
;
��< =(
ShadowCasterGroup2DManager
�� *
.
��* +
AddGroup
��+ 3
(
��3 4
this
��4 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
LightUtility
�� 
.
�� 
CheckForChange
�� +
(
��+ ,
m_CastsShadows
��, :
,
��: ;
ref
��< ?$
m_PreviousCastsShadows
��@ V
)
��V W
)
��W X
{
�� 
if
�� 
(
�� 
m_CastsShadows
�� !
)
��! "(
ShadowCasterGroup2DManager
�� .
.
��. /
AddGroup
��/ 7
(
��7 8
this
��8 <
)
��< =
;
��= >
else
�� (
ShadowCasterGroup2DManager
�� .
.
��. /
RemoveGroup
��/ :
(
��: ;
this
��; ?
)
��? @
;
��@ A
}
�� 
}
�� 	
void
�� 
Reset
��
(
�� 
)
�� 
{
�� 	
Awake
�� 
(
�� 
)
�� 
;
�� 
OnEnable
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\XR\XRPass.cs
	namespace
UnityEngine
 
.
	Rendering
.
	Universal
{ 
internal 
struct
XRPassCreateInfo $
{ 
public 
int 
multipassId 
; 
public 
int 

;  !
public 

renderTarget )
;) *
public #
RenderTextureDescriptor &
renderTargetDesc' 7
;7 8
public 
bool '
renderTargetIsRenderTexture /
;/ 0
public '
ScriptableCullingParameters *
cullingParameters+ <
;< =
public 
XRPass 
. 
CustomMirrorView &
customMirrorView' 7
;7 8
} 
internal 
struct
XRViewCreateInfo $
{ 
public 
	Matrix4x4 

projMatrix #
;# $
public 
	Matrix4x4 

viewMatrix #
;# $
public 
Rect 
viewport 
; 
public 
int 
textureArraySlice $
;$ %
}   
internal"" 
struct""
XRView"" 
{## 
internal$$ 
readonly$$ 
	Matrix4x4$$ #

projMatrix$$$ .
;$$. /
internal%% 
readonly%% 
	Matrix4x4%% #

viewMatrix%%$ .
;%%. /
internal&& 
readonly&& 
Rect&& 
viewport&& '
;&&' (
internal'' 
readonly'' 
Mesh'' 

;'', -
internal(( 
readonly(( 
int(( 
textureArraySlice(( /
;((/ 0
internal** 
XRView** 
(** 
	Matrix4x4** !
proj**" &
,**& '
	Matrix4x4**( 1
view**2 6
,**6 7
Rect**8 <
vp**= ?
,**? @
int**A D
dstSlice**E M
)**M N
{++ 	

projMatrix,, 
=,, 
proj,, 
;,, 

viewMatrix-- 
=-- 
view-- 
;-- 
viewport.. 
=.. 
vp.. 
;.. 

=// 
null//  
;//  !
textureArraySlice00 
=00 
dstSlice00  (
;00( )
}11 	
internal33 
XRView33 
(33 
XRDisplaySubsystem33 *
.33* +
XRRenderPass33+ 7

renderPass338 B
,33B C
XRDisplaySubsystem33D V
.33V W
XRRenderParameter33W h
renderParameter33i x
)33x y
{44 	

projMatrix55 
=55 
renderParameter55 (
.55( )

projection55) 3
;553 4

viewMatrix66 
=66 
renderParameter66 (
.66( )
view66) -
;66- .
viewport77 
=77 
renderParameter77 &
.77& '
viewport77' /
;77/ 0

=88 
renderParameter88 +
.88+ ,

;889 :
textureArraySlice99 
=99 
renderParameter99  /
.99/ 0
textureArraySlice990 A
;99A B
viewport<< 
.<< 
x<< 
*=<< 

renderPass<< )
.<<) *
renderTargetDesc<<* :
.<<: ;
width<<; @
;<<@ A
viewport== 
.== 
width== 
*=== 

renderPass== )
.==) *
renderTargetDesc==* :
.==: ;
width==; @
;==@ A
viewport>> 
.>> 
y>> 
*=>> 

renderPass>> )
.>>) *
renderTargetDesc>>* :
.>>: ;
height>>; A
;>>A B
viewport?? 
.?? 
height?? 
*=?? 

renderPass?? )
.??) *
renderTargetDesc??* :
.??: ;
height??; A
;??A B
}@@ 	
}AA 
classCC 	
XRPassCC
 
{DD 
internalEE 
ListEE 
<EE 
XRViewEE 
>EE 
viewsEE #
=EE$ %
newEE& )
ListEE* .
<EE. /
XRViewEE/ 5
>EE5 6
(EE6 7
$numEE7 8
)EE8 9
;EE9 :
internalGG 
boolGG 
enabledGG 
{GG# $
getGG% (
=>GG) +
viewsGG, 1
.GG1 2
CountGG2 7
>GG8 9
$numGG: ;
;GG; <
}GG= >
internalHH 
boolHH 
xrSdkEnabledHH "
{HH# $
getHH% (
;HH( )
privateHH* 1
setHH2 5
;HH5 6
}HH7 8
internalII 
boolII 
	copyDepthII 
{II# $
getII% (
;II( )
privateII* 1
setII2 5
;II5 6
}II7 8
internalKK 
intKK 
multipassIdKK  
{KK$ %
getKK& )
;KK) *
privateKK+ 2
setKK3 6
;KK6 7
}KK8 9
internalLL 
intLL 

{LL$ %
getLL& )
;LL) *
privateLL+ 2
setLL3 6
;LL6 7
}LL8 9
internalOO "
RenderTargetIdentifierOO '
renderTargetOO) 5
{OO: ;
getOO< ?
;OO? @
privateOOA H
setOOI L
;OOL M
}OON O
internalPP #
RenderTextureDescriptorPP (
renderTargetDescPP) 9
{PP: ;
getPP< ?
;PP? @
privatePPA H
setPPI L
;PPL M
}PPN O
staticQQ "
RenderTargetIdentifierQQ '
	invalidRTQQ) 2
=QQ3 4
-QQ5 6
$numQQ6 7
;QQ7 8
internalRR 
boolRR 
renderTargetValidRR) :
{RR; <
getRR= @
=>RRA C
renderTargetRRD P
!=RRQ S
	invalidRTRRT ]
;RR] ^
}RR_ `
internalSS 
boolSS '
renderTargetIsRenderTextureSS) D
{SSE F
getSSG J
;SSJ K
privateSSL S
setSST W
;SSW X
}SSY Z
internalVV 
	Matrix4x4VV 

(VV( )
intVV) ,
	viewIndexVV- 6
=VV7 8
$numVV9 :
)VV: ;
{VV= >
returnVV? E
viewsVVF K
[VVK L
	viewIndexVVL U
]VVU V
.VVV W

projMatrixVVW a
;VVa b
}VVc d
internalWW 
	Matrix4x4WW 

(WW( )
intWW) ,
	viewIndexWW- 6
=WW7 8
$numWW9 :
)WW: ;
{WW= >
returnWW? E
viewsWWF K
[WWK L
	viewIndexWWL U
]WWU V
.WWV W

viewMatrixWWW a
;WWa b
}WWc d
internalXX 
intXX  
GetTextureArraySliceXX )
(XX) *
intXX* -
	viewIndexXX. 7
=XX8 9
$numXX: ;
)XX; <
{XX= >
returnXX? E
viewsXXF K
[XXK L
	viewIndexXXL U
]XXU V
.XXV W
textureArraySliceXXW h
;XXh i
}XXj k
internalYY 
RectYY 
GetViewportYY !
(YY! "
intYY" %
	viewIndexYY& /
=YY0 1
$numYY2 3
)YY3 4
{YY= >
returnYY? E
viewsYYF K
[YYK L
	viewIndexYYL U
]YYU V
.YYV W
viewportYYW _
;YY_ `
}YYa b
internal\\ '
ScriptableCullingParameters\\ ,

{\\; <
get\\= @
;\\@ A
private\\B I
set\\J M
;\\M N
}\\O P
internal__ 
int__ 
	viewCount__ 
{__  
get__! $
=>__% '
views__( -
.__- .
Count__. 3
;__3 4
}__5 6
internal`` 
bool`` 
singlePassEnabled`` '
{``( )
get``* -
=>``. 0
	viewCount``1 :
>``; <
$num``= >
;``> ?
}``@ A
Materialcc !
occlusionMeshMaterialcc &
=cc' (
nullcc) -
;cc- .
Meshdd !
occlusionMeshCombineddd
=dd# $
nulldd% )
;dd) *
intee )
occlusionMeshCombinedHashCodeee )
=ee* +
$numee, -
;ee- .
internalgg 
boolgg $
isOcclusionMeshSupportedgg .
{gg/ 0
getgg1 4
=>gg5 7
enabledgg8 ?
&&gg@ B
xrSdkEnabledggC O
&&ggP R!
occlusionMeshMaterialggS h
!=ggi k
nullggl p
;ggp q
}ggr s
internalii 
boolii !
hasValidOcclusionMeshii +
{jj 	
getkk 
{ll 
ifmm 
(mm $
isOcclusionMeshSupportedmm ,
)mm, -
{nn 
ifoo 
(oo 
singlePassEnabledoo )
)oo) *
returnpp !
occlusionMeshCombinedpp 4
!=pp5 7
nullpp8 <
;pp< =
elseqq 
returnrr 
viewsrr $
[rr$ %
$numrr% &
]rr& '
.rr' (

!=rr6 8
nullrr9 =
;rr= >
}ss 
returnuu 
falseuu 
;uu 
}vv 
}ww 	
internalzz 
delegatezz 
voidzz 
CustomMirrorViewzz /
(zz/ 0
XRPasszz0 6
passzz7 ;
,zz; <

cmdzzK N
,zzN O

rtzz^ `
,zz` a
Rectzzb f
viewportzzg o
)zzo p
;zzp q
CustomMirrorView{{ 
customMirrorView{{ )
={{* +
null{{, 0
;{{0 1
internal|| 
void|| 
SetCustomMirrorView|| )
(||) *
CustomMirrorView||* :
callback||; C
)||C D
=>||E G
customMirrorView||H X
=||Y Z
callback||[ c
;||c d
const~~ 
string~~ 
k_XRCustomMirrorTag~~ (
=~~) *
$str~~+ B
;~~B C
static 
ProfilingSampler +
_XRCustomMirrorProfilingSampler  ?
=@ A
newB E
ProfilingSamplerF V
(V W
k_XRCustomMirrorTagW j
)j k
;k l
const
�� 
string
�� 
k_XROcclusionTag
�� %
=
��& '
$str
��( ;
;
��; <
static
�� 
ProfilingSampler
�� *
_XROcclusionProfilingSampler
��  <
=
��= >
new
��? B
ProfilingSampler
��C S
(
��S T
k_XROcclusionTag
��T d
)
��d e
;
��e f
internal
�� 
static
�� 
XRPass
�� 
Create
�� %
(
��% &
XRPassCreateInfo
��& 6

createInfo
��7 A
)
��A B
{
�� 	
XRPass
�� 
passInfo
�� 
=
�� 
GenericPool
�� )
<
��) *
XRPass
��* 0
>
��0 1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
passInfo
�� 
.
�� 
multipassId
��  
=
��! "

createInfo
��# -
.
��- .
multipassId
��. 9
;
��9 :
passInfo
�� 
.
�� 

�� "
=
��# $

createInfo
��% /
.
��/ 0

��0 =
;
��= >
passInfo
�� 
.
�� 

�� "
=
��# $

createInfo
��% /
.
��/ 0
cullingParameters
��0 A
;
��A B
passInfo
�� 
.
�� 
customMirrorView
�� %
=
��& '

createInfo
��( 2
.
��2 3
customMirrorView
��3 C
;
��C D
passInfo
�� 
.
�� 
views
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
if
�� 
(
�� 

createInfo
�� 
.
�� 
renderTarget
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
passInfo
�� 
.
�� 
renderTarget
�� %
=
��& '
new
��( +$
RenderTargetIdentifier
��, B
(
��B C

createInfo
��C M
.
��M N
renderTarget
��N Z
,
��Z [
$num
��\ ]
,
��] ^
CubemapFace
��_ j
.
��j k
Unknown
��k r
,
��r s
-
��t u
$num
��u v
)
��v w
;
��w x
passInfo
�� 
.
�� 
renderTargetDesc
�� )
=
��* +

createInfo
��, 6
.
��6 7
renderTarget
��7 C
.
��C D

descriptor
��D N
;
��N O
passInfo
�� 
.
�� )
renderTargetIsRenderTexture
�� 4
=
��5 6

createInfo
��7 A
.
��A B)
renderTargetIsRenderTexture
��B ]
;
��] ^
}
�� 
else
�� 
{
�� 
passInfo
�� 
.
�� 
renderTarget
�� %
=
��& '
	invalidRT
��( 1
;
��1 2
passInfo
�� 
.
�� 
renderTargetDesc
�� )
=
��* +

createInfo
��, 6
.
��6 7
renderTargetDesc
��7 G
;
��G H
passInfo
�� 
.
�� )
renderTargetIsRenderTexture
�� 4
=
��5 6

createInfo
��7 A
.
��A B)
renderTargetIsRenderTexture
��B ]
;
��] ^
}
�� 
passInfo
�� 
.
�� #
occlusionMeshMaterial
�� *
=
��+ ,
null
��- 1
;
��1 2
passInfo
�� 
.
�� 
xrSdkEnabled
�� !
=
��" #
false
��$ )
;
��) *
passInfo
�� 
.
�� 
	copyDepth
�� 
=
��  
false
��! &
;
��& '
return
�� 
passInfo
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 

UpdateView
��  
(
��  !
int
��! $
viewId
��% +
,
��+ , 
XRDisplaySubsystem
��- ?
.
��? @
XRRenderPass
��@ L
xrSdkRenderPass
��M \
,
��\ ] 
XRDisplaySubsystem
��^ p
.
��p q 
XRRenderParameter��q �$
xrSdkRenderParameter��� �
)��� �
{
�� 	
if
�� 
(
�� 
viewId
�� 
>=
�� 
views
�� 
.
��  
Count
��  %
)
��% &
throw
�� 
new
�� %
NotImplementedException
�� 1
(
��1 2
$"
��2 4P
BInvalid XR setup to update, trying to update non-existing xr view.
��4 v
"
��v w
)
��w x
;
��x y
views
�� 
[
�� 
viewId
�� 
]
�� 
=
�� 
new
�� 
XRView
��  &
(
��& '
xrSdkRenderPass
��' 6
,
��6 7"
xrSdkRenderParameter
��8 L
)
��L M
;
��M N
}
�� 	
internal
�� 
void
�� 

UpdateView
��  
(
��  !
int
��! $
viewId
��% +
,
��+ ,
	Matrix4x4
��- 6
proj
��7 ;
,
��; <
	Matrix4x4
��= F
view
��G K
,
��K L
Rect
��M Q
vp
��R T
,
��T U
int
��V Y
textureArraySlice
��Z k
=
��l m
-
��n o
$num
��o p
)
��p q
{
�� 	
if
�� 
(
�� 
viewId
�� 
>=
�� 
views
�� 
.
��  
Count
��  %
)
��% &
throw
�� 
new
�� %
NotImplementedException
�� 1
(
��1 2
$"
��2 4P
BInvalid XR setup to update, trying to update non-existing xr view.
��4 v
"
��v w
)
��w x
;
��x y
views
�� 
[
�� 
viewId
�� 
]
�� 
=
�� 
new
�� 
XRView
��  &
(
��& '
proj
��' +
,
��+ ,
view
��- 1
,
��1 2
vp
��3 5
,
��5 6
textureArraySlice
��7 H
)
��H I
;
��I J
}
�� 	
internal
�� 
void
�� !
UpdateCullingParams
�� )
(
��) *
int
��* -

��. ;
,
��; <)
ScriptableCullingParameters
��= X

��Y f
)
��f g
{
�� 	
this
�� 
.
�� 

�� 
=
��  

��! .
;
��. /
this
�� 
.
�� 

�� 
=
��  

��! .
;
��. /
}
�� 	
internal
�� 
void
�� 
AddView
�� 
(
�� 
	Matrix4x4
�� '
proj
��( ,
,
��, -
	Matrix4x4
��. 7
view
��8 <
,
��< =
Rect
��> B
vp
��C E
,
��E F
int
��G J
textureArraySlice
��K \
=
��] ^
-
��_ `
$num
��` a
)
��a b
{
�� 	
AddViewInternal
�� 
(
�� 
new
�� 
XRView
��  &
(
��& '
proj
��' +
,
��+ ,
view
��- 1
,
��1 2
vp
��3 5
,
��5 6
textureArraySlice
��7 H
)
��H I
)
��I J
;
��J K
}
�� 	
internal
�� 
static
�� 
XRPass
�� 
Create
�� %
(
��% & 
XRDisplaySubsystem
��& 8
.
��8 9
XRRenderPass
��9 E
xrRenderPass
��F R
,
��R S
int
��T W
multipassId
��X c
,
��c d*
ScriptableCullingParameters��e �!
cullingParameters��� �
,��� �
Material��� �%
occlusionMeshMaterial��� �
)��� �
{
�� 	
XRPass
�� 
passInfo
�� 
=
�� 
GenericPool
�� )
<
��) *
XRPass
��* 0
>
��0 1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
passInfo
�� 
.
�� 
multipassId
��  
=
��! "
multipassId
��# .
;
��. /
passInfo
�� 
.
�� 

�� "
=
��# $
xrRenderPass
��% 1
.
��1 2
cullingPassIndex
��2 B
;
��B C
passInfo
�� 
.
�� 

�� "
=
��# $
cullingParameters
��% 6
;
��6 7
passInfo
�� 
.
�� 
views
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
passInfo
�� 
.
�� 
renderTarget
�� !
=
��" #
new
��$ '$
RenderTargetIdentifier
��( >
(
��> ?
xrRenderPass
��? K
.
��K L
renderTarget
��L X
,
��X Y
$num
��Z [
,
��[ \
CubemapFace
��] h
.
��h i
Unknown
��i p
,
��p q
-
��r s
$num
��s t
)
��t u
;
��u v%
RenderTextureDescriptor
�� #
xrDesc
��$ *
=
��+ ,
xrRenderPass
��- 9
.
��9 :
renderTargetDesc
��: J
;
��J K%
RenderTextureDescriptor
�� #
rtDesc
��$ *
=
��+ ,
new
��- 0%
RenderTextureDescriptor
��1 H
(
��H I
xrDesc
��I O
.
��O P
width
��P U
,
��U V
xrDesc
��W ]
.
��] ^
height
��^ d
,
��d e
xrDesc
��f l
.
��l m
colorFormat
��m x
,
��x y
xrDesc��z �
.��� �
depthBufferBits��� �
,��� �
xrDesc��� �
.��� �
mipCount��� �
)��� �
;��� �
rtDesc
�� 
.
�� 
	dimension
�� 
=
��  
xrRenderPass
��! -
.
��- .
renderTargetDesc
��. >
.
��> ?
	dimension
��? H
;
��H I
rtDesc
�� 
.
�� 
volumeDepth
�� 
=
��  
xrRenderPass
��! -
.
��- .
renderTargetDesc
��. >
.
��> ?
volumeDepth
��? J
;
��J K
rtDesc
�� 
.
�� 
vrUsage
�� 
=
��  
xrRenderPass
��! -
.
��- .
renderTargetDesc
��. >
.
��> ?
vrUsage
��? F
;
��F G
rtDesc
�� 
.
�� 
sRGB
�� 
=
��  
xrRenderPass
��! -
.
��- .
renderTargetDesc
��. >
.
��> ?
sRGB
��? C
;
��C D
passInfo
�� 
.
�� 
renderTargetDesc
�� %
=
��& '
rtDesc
��( .
;
��. /
passInfo
�� 
.
�� )
renderTargetIsRenderTexture
�� 0
=
��1 2
false
��3 8
;
��8 9
passInfo
�� 
.
�� #
occlusionMeshMaterial
�� *
=
��+ ,#
occlusionMeshMaterial
��- B
;
��B C
passInfo
�� 
.
�� 
xrSdkEnabled
�� !
=
��" #
true
��$ (
;
��( )
passInfo
�� 
.
�� 
	copyDepth
�� 
=
��  
xrRenderPass
��! -
.
��- . 
shouldFillOutDepth
��. @
;
��@ A
passInfo
�� 
.
�� 
customMirrorView
�� %
=
��& '
null
��( ,
;
��, -
Debug
�� 
.
�� 
Assert
�� 
(
�� 
passInfo
�� !
.
��! "
renderTargetValid
��" 3
,
��3 4
$str
��5 e
)
��e f
;
��f g
return
�� 
passInfo
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
AddView
�� 
(
��  
XRDisplaySubsystem
�� 0
.
��0 1
XRRenderPass
��1 =
xrSdkRenderPass
��> M
,
��M N 
XRDisplaySubsystem
��O a
.
��a b
XRRenderParameter
��b s#
xrSdkRenderParameter��t �
)��� �
{
�� 	
AddViewInternal
�� 
(
�� 
new
�� 
XRView
��  &
(
��& '
xrSdkRenderPass
��' 6
,
��6 7"
xrSdkRenderParameter
��8 L
)
��L M
)
��M N
;
��N O
}
�� 	
internal
�� 
static
�� 
void
�� 
Release
�� $
(
��$ %
XRPass
��% +
xrPass
��, 2
)
��2 3
{
�� 	
GenericPool
�� 
<
�� 
XRPass
�� 
>
�� 
.
��  
Release
��  '
(
��' (
xrPass
��( .
)
��. /
;
��/ 0
}
�� 	
internal
�� 
void
�� 
AddViewInternal
�� %
(
��% &
XRView
��& ,
xrView
��- 3
)
��3 4
{
�� 	
int
�� 
maxSupportedViews
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
	TextureXR
��- 6
.
��6 7
slices
��7 =
,
��= >
$num
��? @
)
��] ^
;
��^ _
if
�� 
(
�� 
views
�� 
.
�� 
Count
�� 
<
�� 
maxSupportedViews
�� /
)
��/ 0
{
�� 
views
�� 
.
�� 
Add
�� 
(
�� 
xrView
��  
)
��  !
;
��! "
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� %
NotImplementedException
�� 1
(
��1 2
$"
��2 4^
OInvalid XR setup for single-pass, trying to add too many views! Max supported: ��4 �
{��� �!
maxSupportedViews��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 	
internal
�� 
void
�� !
UpdateOcclusionMesh
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� &
isOcclusionMeshSupported
�� (
&&
��) +1
#TryGetOcclusionMeshCombinedHashCode
��, O
(
��O P
out
��P S
var
��T W
hashCode
��X `
)
��` a
)
��a b
{
�� 
if
�� 
(
�� #
occlusionMeshCombined
�� )
==
��* ,
null
��- 1
||
��2 4
hashCode
��5 =
!=
��> @+
occlusionMeshCombinedHashCode
��A ^
)
��^ _
{
�� )
CreateOcclusionMeshCombined
�� /
(
��/ 0
)
��0 1
;
��1 2+
occlusionMeshCombinedHashCode
�� 1
=
��2 3
hashCode
��4 <
;
��< =
}
�� 
}
�� 
else
�� 
{
�� 
occlusionMeshCombined
�� %
=
��& '
null
��( ,
;
��, -+
occlusionMeshCombinedHashCode
�� -
=
��. /
$num
��0 1
;
��1 2
}
�� 
}
�� 	
private
�� 
bool
�� 1
#TryGetOcclusionMeshCombinedHashCode
�� 8
(
��8 9
out
��9 <
int
��= @
hashCode
��A I
)
��I J
{
�� 	
hashCode
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
�� 
viewId
�� 
=
�� 
$num
�� 
;
��  
viewId
��! '
<
��( )
	viewCount
��* 3
;
��3 4
++
��5 7
viewId
��7 =
)
��= >
{
�� 
if
�� 
(
�� 
views
�� 
[
�� 
viewId
��  
]
��  !
.
��! "

��" /
!=
��0 2
null
��3 7
)
��7 8
{
�� 
hashCode
�� 
=
�� 
hashCode
�� '
*
��( )
$num
��* ,
+
��- .
views
��/ 4
[
��4 5
viewId
��5 ;
]
��; <
.
��< =

��= J
.
��J K
GetHashCode
��K V
(
��V W
)
��W X
;
��X Y
}
�� 
else
�� 
{
�� 
hashCode
�� 
=
�� 
$num
��  
;
��  !
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� )
CreateOcclusionMeshCombined
�� 0
(
��0 1
)
��1 2
{
�� 	#
occlusionMeshCombined
�� !
=
��" #
new
��$ '
Mesh
��( ,
(
��, -
)
��- .
;
��. /#
occlusionMeshCombined
�� !
.
��! "
indexFormat
��" -
=
��. /
IndexFormat
��0 ;
.
��; <
UInt16
��< B
;
��B C
int
�� !
combinedVertexCount
�� #
=
��$ %
$num
��& '
;
��' (
uint
��  
combinedIndexCount
�� #
=
��$ %
$num
��& '
;
��' (
for
�� 
(
�� 
int
�� 
viewId
�� 
=
�� 
$num
�� 
;
��  
viewId
��! '
<
��( )
	viewCount
��* 3
;
��3 4
++
��5 7
viewId
��7 =
)
��= >
{
�� 
Mesh
�� 
mesh
�� 
=
�� 
views
�� !
[
��! "
viewId
��" (
]
��( )
.
��) *

��* 7
;
��7 8
Debug
�� 
.
�� 
Assert
�� 
(
�� 
mesh
�� !
!=
��" $
null
��% )
)
��) *
;
��* +
Debug
�� 
.
�� 
Assert
�� 
(
�� 
mesh
�� !
.
��! "
subMeshCount
��" .
==
��/ 1
$num
��2 3
)
��3 4
;
��4 5
Debug
�� 
.
�� 
Assert
�� 
(
�� 
mesh
�� !
.
��! "
indexFormat
��" -
==
��. 0
IndexFormat
��1 <
.
��< =
UInt16
��= C
)
��C D
;
��D E!
combinedVertexCount
�� #
+=
��$ &
mesh
��' +
.
��+ ,
vertexCount
��, 7
;
��7 8 
combinedIndexCount
�� "
+=
��# %
mesh
��& *
.
��* +

��+ 8
(
��8 9
$num
��9 :
)
��: ;
;
��; <
}
�� 
Vector3
�� 
[
�� 
]
�� 
vertices
�� 
=
��  
new
��! $
Vector3
��% ,
[
��, -!
combinedVertexCount
��- @
]
��@ A
;
��A B
ushort
�� 
[
�� 
]
�� 
indices
�� 
=
�� 
new
�� "
ushort
��# )
[
��) * 
combinedIndexCount
��* <
]
��< =
;
��= >
int
�� 
vertexStart
�� 
=
�� 
$num
�� 
;
��  
int
�� 

indexStart
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
int
�� 
viewId
�� 
=
�� 
$num
�� 
;
��  
viewId
��! '
<
��( )
	viewCount
��* 3
;
��3 4
++
��5 7
viewId
��7 =
)
��= >
{
�� 
Mesh
�� 
mesh
�� 
=
�� 
views
�� !
[
��! "
viewId
��" (
]
��( )
.
��) *

��* 7
;
��7 8
var
�� 
meshIndices
�� 
=
��  !
mesh
��" &
.
��& '

GetIndices
��' 1
(
��1 2
$num
��2 3
)
��3 4
;
��4 5
{
�� 
mesh
�� 
.
�� 
vertices
�� !
.
��! "
CopyTo
��" (
(
��( )
vertices
��) 1
,
��1 2
vertexStart
��3 >
)
��> ?
;
��? @
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
��& '
mesh
��( ,
.
��, -
vertices
��- 5
.
��5 6
Length
��6 <
;
��< =
i
��> ?
++
��? A
)
��A B
vertices
��  
[
��  !
vertexStart
��! ,
+
��- .
i
��/ 0
]
��0 1
.
��1 2
z
��2 3
=
��4 5
viewId
��6 <
;
��< =
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
meshIndices
��$ /
.
��/ 0
Length
��0 6
;
��6 7
i
��8 9
++
��9 ;
)
��; <
{
�� 
int
�� 
newIndex
��  
=
��! "
vertexStart
��# .
+
��/ 0
meshIndices
��1 <
[
��< =
i
��= >
]
��> ?
;
��? @
Debug
�� 
.
�� 
Assert
��  
(
��  !
meshIndices
��! ,
[
��, -
i
��- .
]
��. /
<
��0 1
ushort
��2 8
.
��8 9
MaxValue
��9 A
)
��A B
;
��B C
indices
�� 
[
�� 

indexStart
�� &
+
��' (
i
��) *
]
��* +
=
��, -
(
��. /
ushort
��/ 5
)
��5 6
newIndex
��6 >
;
��> ?
}
�� 
vertexStart
�� 
+=
�� 
mesh
�� #
.
��# $
vertexCount
��$ /
;
��/ 0

indexStart
�� 
+=
�� 
meshIndices
�� )
.
��) *
Length
��* 0
;
��0 1
}
�� 
occlusionMeshCombined
�� !
.
��! "
vertices
��" *
=
��+ ,
vertices
��- 5
;
��5 6#
occlusionMeshCombined
�� !
.
��! "

SetIndices
��" ,
(
��, -
indices
��- 4
,
��4 5
MeshTopology
��6 B
.
��B C
	Triangles
��C L
,
��L M
$num
��N O
)
��O P
;
��P Q
}
�� 	
Vector4
�� 
[
�� 
]
�� 
stereoEyeIndices
�� "
=
��# $
new
��% (
Vector4
��) 0
[
��0 1
$num
��1 2
]
��2 3
{
��4 5
Vector4
��6 =
.
��= >
zero
��> B
,
��C D
Vector4
��E L
.
��L M
one
��M P
}
��Q R
;
��R S
internal
�� 
void
�� 
StartSinglePass
�� %
(
��% &

��& 3
cmd
��4 7
)
��7 8
{
�� 	
if
�� 
(
�� 
enabled
�� 
)
�� 
{
�� 
if
�� 
(
�� 
singlePassEnabled
�� %
)
��% &
{
�� 
if
�� 
(
�� 
	viewCount
�� !
<=
��" $
	TextureXR
��% .
.
��. /
slices
��/ 5
)
��5 6
{
�� 
if
�� 
(
�� 

SystemInfo
�� &
.
��& '
supportsMultiview
��' 8
)
��8 9
{
�� 
cmd
�� 
.
��  !
EnableShaderKeyword
��  3
(
��3 4
$str
��4 I
)
��I J
;
��J K
cmd
�� 
.
��  "
SetGlobalVectorArray
��  4
(
��4 5
$str
��5 M
,
��M N
stereoEyeIndices
��O _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
cmd
�� 
.
��  !
EnableShaderKeyword
��  3
(
��3 4
$str
��4 J
)
��J K
;
��K L
cmd
�� 
.
��  #
SetInstanceMultiplier
��  5
(
��5 6
(
��6 7
uint
��7 ;
)
��; <
	viewCount
��< E
)
��E F
;
��F G
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� !%
NotImplementedException
��" 9
(
��9 :
$"
��: <a
RInvalid XR setup for single-pass, trying to render too many views! Max supported: ��< �
{��� �
	TextureXR��� �
.��� �
slices��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
StopSinglePass
�� $
(
��$ %

��% 2
cmd
��3 6
)
��6 7
{
�� 	
if
�� 
(
�� 
enabled
�� 
)
�� 
{
�� 
if
�� 
(
�� 
singlePassEnabled
�� %
)
��% &
{
�� 
if
�� 
(
�� 

SystemInfo
�� "
.
��" #
supportsMultiview
��# 4
)
��4 5
{
�� 
cmd
�� 
.
�� "
DisableShaderKeyword
�� 0
(
��0 1
$str
��1 F
)
��F G
;
��G H
}
�� 
else
�� 
{
�� 
cmd
�� 
.
�� "
DisableShaderKeyword
�� 0
(
��0 1
$str
��1 G
)
��G H
;
��H I
cmd
�� 
.
�� #
SetInstanceMultiplier
�� 1
(
��1 2
$num
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
	EndCamera
�� 
(
��  

��  -
cmd
��. 1
,
��1 2

CameraData
��3 =

cameraData
��> H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 
enabled
�� 
)
�� 
return
�� 
;
�� 
StopSinglePass
�� 
(
�� 
cmd
�� 
)
�� 
;
��  
if
�� 
(
�� 
customMirrorView
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
using
�� 
(
�� 
new
�� 
ProfilingScope
�� )
(
��) *
cmd
��* -
,
��- .-
_XRCustomMirrorProfilingSampler
��/ N
)
��N O
)
��O P
{
�� 
customMirrorView
�� $
(
��$ %
this
��% )
,
��) *
cmd
��+ .
,
��. /

cameraData
��0 :
.
��: ;

��; H
,
��H I

cameraData
��J T
.
��T U
	pixelRect
��U ^
)
��^ _
;
��_ `
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� !
RenderOcclusionMesh
�� )
(
��) *

��* 7
cmd
��8 ;
)
��; <
{
�� 	
if
�� 
(
�� &
isOcclusionMeshSupported
�� (
)
��( )
{
�� 
using
�� 
(
�� 
new
�� 
ProfilingScope
�� )
(
��) *
cmd
��* -
,
��- .*
_XROcclusionProfilingSampler
��/ K
)
��K L
)
��L M
{
�� 
if
�� 
(
�� 
singlePassEnabled
�� )
)
��) *
{
�� 
if
�� 
(
�� #
occlusionMeshCombined
�� 1
!=
��2 4
null
��5 9
&&
��: <

SystemInfo
��= G
.
��G H<
.supportsRenderTargetArrayIndexFromVertexShader
��H v
)
��v w
{
�� 
StopSinglePass
�� *
(
��* +
cmd
��+ .
)
��. /
;
��/ 0
cmd
�� 
.
��  !
EnableShaderKeyword
��  3
(
��3 4
$str
��4 P
)
��P Q
;
��Q R
cmd
�� 
.
��  
DrawMesh
��  (
(
��( )#
occlusionMeshCombined
��) >
,
��> ?
	Matrix4x4
��@ I
.
��I J
identity
��J R
,
��R S#
occlusionMeshMaterial
��T i
)
��i j
;
��j k
cmd
�� 
.
��  "
DisableShaderKeyword
��  4
(
��4 5
$str
��5 Q
)
��Q R
;
��R S
StartSinglePass
�� +
(
��+ ,
cmd
��, /
)
��/ 0
;
��0 1
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
views
�� "
[
��" #
$num
��# $
]
��$ %
.
��% &

��& 3
!=
��4 6
null
��7 ;
)
��; <
{
�� 
cmd
�� 
.
�� 
DrawMesh
�� $
(
��$ %
views
��% *
[
��* +
$num
��+ ,
]
��, -
.
��- .

��. ;
,
��; <
	Matrix4x4
��= F
.
��F G
identity
��G O
,
��O P#
occlusionMeshMaterial
��Q f
)
��f g
;
��g h
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
	Matrix4x4
�� 
[
�� 
]
�� $
stereoProjectionMatrix
�� 2
=
��3 4
new
��5 8
	Matrix4x4
��9 B
[
��B C
$num
��C D
]
��D E
;
��E F
private
�� 
	Matrix4x4
�� 
[
�� 
]
�� 
stereoViewMatrix
�� ,
=
��- .
new
��/ 2
	Matrix4x4
��3 <
[
��< =
$num
��= >
]
��> ?
;
��? @
private
�� 
	Matrix4x4
�� 
[
�� 
]
�� *
stereoCameraProjectionMatrix
�� 8
=
��9 :
new
��; >
	Matrix4x4
��? H
[
��H I
$num
��I J
]
��J K
;
��K L
internal
�� 
void
�� 0
"UpdateGPUViewAndProjectionMatrices
�� 8
(
��8 9

��9 F
cmd
��G J
,
��J K
ref
��L O

CameraData
��P Z

cameraData
��[ e
,
��e f
bool
��g k
isRenderToTexture
��l }
)
��} ~
{
�� 	
	Matrix4x4
�� 
projectionMatrix
�� &
=
��' (
GL
��) +
.
��+ ,$
GetGPUProjectionMatrix
��, B
(
��B C

cameraData
��C M
.
��M N
xr
��N P
.
��P Q

��Q ^
(
��^ _
$num
��_ `
)
��` a
,
��a b
isRenderToTexture
��c t
)
��t u
;
��u v
RenderingUtils
�� 
.
�� *
SetViewAndProjectionMatrices
�� 7
(
��7 8
cmd
��8 ;
,
��; <

cameraData
��= G
.
��G H
xr
��H J
.
��J K

��K X
(
��X Y
$num
��Y Z
)
��Z [
,
��[ \
projectionMatrix
��] m
,
��m n
true
��o s
)
��s t
;
��t u
if
�� 
(
�� 

cameraData
�� 
.
�� 
xr
�� 
.
�� 
singlePassEnabled
�� /
)
��/ 0
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
$num
��$ %
;
��% &
i
��' (
++
��( *
)
��* +
{
�� *
stereoCameraProjectionMatrix
�� 0
[
��0 1
i
��1 2
]
��2 3
=
��4 5

cameraData
��6 @
.
��@ A
xr
��A C
.
��C D

��D Q
(
��Q R
i
��R S
)
��S T
;
��T U
stereoViewMatrix
�� $
[
��$ %
i
��% &
]
��& '
=
��( )

cameraData
��* 4
.
��4 5
xr
��5 7
.
��7 8

��8 E
(
��E F
i
��F G
)
��G H
;
��H I$
stereoProjectionMatrix
�� *
[
��* +
i
��+ ,
]
��, -
=
��. /
GL
��0 2
.
��2 3$
GetGPUProjectionMatrix
��3 I
(
��I J*
stereoCameraProjectionMatrix
��J f
[
��f g
i
��g h
]
��h i
,
��i j
isRenderToTexture
��k |
)
��| }
;
��} ~
}
�� 
RenderingUtils
�� 
.
�� 0
"SetStereoViewAndProjectionMatrices
�� A
(
��A B
cmd
��B E
,
��E F
stereoViewMatrix
��G W
,
��W X$
stereoProjectionMatrix
��Y o
,
��o p+
stereoCameraProjectionMatrix��q �
,��� �
true��� �
)��� �
;��� �
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\ShadowUtils.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
struct5 ;
ShadowSliceData< K
{ 
public 
	Matrix4x4 

viewMatrix #
;# $
public		 
	Matrix4x4		 
projectionMatrix		 )
;		) *
public

 
	Matrix4x4

 
shadowTransform

 (
;

( )
public 
int 
offsetX 
; 
public 
int 
offsetY 
; 
public
int

resolution
;
public 
void 
Clear 
( 
) 
{ 	

viewMatrix 
= 
	Matrix4x4 "
." #
identity# +
;+ ,
projectionMatrix 
= 
	Matrix4x4 (
.( )
identity) 1
;1 2
shadowTransform 
= 
	Matrix4x4 '
.' (
identity( 0
;0 1
offsetX 
= 
offsetY 
= 
$num  !
;! "

resolution 
= 
$num 
; 
} 	
} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
static5 ;
class< A
ShadowUtilsB M
{ 
private 
static 
readonly 
RenderTextureFormat  3
m_ShadowmapFormat4 E
;E F
private 
static 
readonly 
bool  $&
m_ForceShadowPointSampling% ?
;? @
static 
ShadowUtils 
( 
) 
{ 	
m_ShadowmapFormat   
=   
RenderingUtils    .
.  . /'
SupportsRenderTextureFormat  / J
(  J K
RenderTextureFormat  K ^
.  ^ _
	Shadowmap  _ h
)  h i
&&  j l
(  m n

SystemInfo  n x
.  x y
graphicsDeviceType	  y �
!=
  � � 
GraphicsDeviceType
  � �
.
  � �
	OpenGLES2
  � �
)
  � �
?!! 
RenderTextureFormat!! %
.!!% &
	Shadowmap!!& /
:"" 
RenderTextureFormat"" %
.""% &
Depth""& +
;""+ ,&
m_ForceShadowPointSampling## &
=##' (

SystemInfo##) 3
.##3 4
graphicsDeviceType##4 F
==##G I
GraphicsDeviceType##J \
.##\ ]
Metal##] b
&&##c e
GraphicsSettings$$  
.$$  !
HasShaderDefine$$! 0
($$0 1
Graphics$$1 9
.$$9 :

activeTier$$: D
,$$D E
BuiltinShaderDefine$$F Y
.$$Y Z4
'UNITY_METAL_SHADOWS_USE_POINT_FILTERING	$$Z �
)
$$� �
;
$$� �
}%% 	
public'' 
static'' 
bool'' )
ExtractDirectionalLightMatrix'' 8
(''8 9
ref''9 <
CullingResults''= K
cullResults''L W
,''W X
ref''Y \

ShadowData''] g

shadowData''h r
,''r s
int''t w
shadowLightIndex	''x �
,
''� �
int
''� �
cascadeIndex
''� �
,
''� �
int
''� �
shadowmapWidth
''� �
,
''� �
int
''� �
shadowmapHeight
''� �
,
''� �
int
''� �
shadowResolution
''� �
,
''� �
float
''� �
shadowNearPlane
''� �
,
''� �
out
''� �
Vector4
''� �"
cascadeSplitDistance
''� �
,
''� �
out
''� �
ShadowSliceData
''� �
shadowSliceData
''� �
,
''� �
out
''� �
	Matrix4x4
''� �

viewMatrix
''� �
,
''� �
out
''� �
	Matrix4x4
''� �

projMatrix
''� �
)
''� �
{(( 	
ShadowSplitData)) 
	splitData)) %
;))% &
bool** 
success** 
=** 
cullResults** &
.**& '@
4ComputeDirectionalShadowMatricesAndCullingPrimitives**' [
(**[ \
shadowLightIndex**\ l
,**l m
cascadeIndex++ 
,++ 

shadowData++ (
.++( )(
mainLightShadowCascadesCount++) E
,++E F

shadowData++G Q
.++Q R(
mainLightShadowCascadesSplit++R n
,++n o
shadowResolution	++p �
,
++� �
shadowNearPlane
++� �
,
++� �
out
++� �

viewMatrix
++� �
,
++� �
out
++� �

projMatrix
++� �
,
++� �
out,, 
	splitData,, 
),, 
;,,  
cascadeSplitDistance..  
=..! "
	splitData..# ,
..., -

;..: ;
shadowSliceData// 
.// 
offsetX// #
=//$ %
(//& '
cascadeIndex//' 3
%//4 5
$num//6 7
)//7 8
*//9 :
shadowResolution//; K
;//K L
shadowSliceData00 
.00 
offsetY00 #
=00$ %
(00& '
cascadeIndex00' 3
/004 5
$num006 7
)007 8
*009 :
shadowResolution00; K
;00K L
shadowSliceData11 
.11 

resolution11 &
=11' (
shadowResolution11) 9
;119 :
shadowSliceData22 
.22 

viewMatrix22 &
=22' (

viewMatrix22) 3
;223 4
shadowSliceData33 
.33 
projectionMatrix33 ,
=33- .

projMatrix33/ 9
;339 :
shadowSliceData44 
.44 
shadowTransform44 +
=44, -
GetShadowTransform44. @
(44@ A

projMatrix44A K
,44K L

viewMatrix44M W
)44W X
;44X Y
if88 
(88 

shadowData88 
.88 (
mainLightShadowCascadesCount88 7
>888 9
$num88: ;
)88; <
ApplySliceTransform99 #
(99# $
ref99$ '
shadowSliceData99( 7
,997 8
shadowmapWidth999 G
,99G H
shadowmapHeight99I X
)99X Y
;99Y Z
return;; 
success;; 
;;; 
}<< 	
public>> 
static>> 
bool>> "
ExtractSpotLightMatrix>> 1
(>>1 2
ref>>2 5
CullingResults>>6 D
cullResults>>E P
,>>P Q
ref>>R U

ShadowData>>V `

shadowData>>a k
,>>k l
int>>m p
shadowLightIndex	>>q �
,
>>� �
out
>>� �
	Matrix4x4
>>� �
shadowMatrix
>>� �
,
>>� �
out
>>� �
	Matrix4x4
>>� �

viewMatrix
>>� �
,
>>� �
out
>>� �
	Matrix4x4
>>� �

projMatrix
>>� �
)
>>� �
{?? 	
ShadowSplitData@@ 
	splitData@@ %
;@@% &
boolAA 
successAA 
=AA 
cullResultsAA &
.AA& '9
-ComputeSpotShadowMatricesAndCullingPrimitivesAA' T
(AAT U
shadowLightIndexAAU e
,AAe f
outAAg j

viewMatrixAAk u
,AAu v
outAAw z

projMatrix	AA{ �
,
AA� �
out
AA� �
	splitData
AA� �
)
AA� �
;
AA� �
shadowMatrixBB 
=BB 
GetShadowTransformBB -
(BB- .

projMatrixBB. 8
,BB8 9

viewMatrixBB: D
)BBD E
;BBE F
returnCC 
successCC 
;CC 
}DD 	
publicFF 
staticFF 
voidFF 
RenderShadowSliceFF ,
(FF, -

cmdFF; >
,FF> ?
refFF@ C#
ScriptableRenderContextFFD [
contextFF\ c
,FFc d
refGG 
ShadowSliceDataGG 
shadowSliceDataGG  /
,GG/ 0
refGG1 4!
ShadowDrawingSettingsGG5 J
settingsGGK S
,GGS T
	Matrix4x4HH 
projHH 
,HH 
	Matrix4x4HH %
viewHH& *
)HH* +
{II 	
cmdJJ 
.JJ 
SetViewportJJ 
(JJ 
newJJ 
RectJJ  $
(JJ$ %
shadowSliceDataJJ% 4
.JJ4 5
offsetXJJ5 <
,JJ< =
shadowSliceDataJJ> M
.JJM N
offsetYJJN U
,JJU V
shadowSliceDataJJW f
.JJf g

resolutionJJg q
,JJq r
shadowSliceData	JJs �
.
JJ� �

resolution
JJ� �
)
JJ� �
)
JJ� �
;
JJ� �
cmdKK 
.KK %
SetViewProjectionMatricesKK )
(KK) *
viewKK* .
,KK. /
projKK0 4
)KK4 5
;KK5 6
contextLL 
.LL  
ExecuteCommandBufferLL (
(LL( )
cmdLL) ,
)LL, -
;LL- .
cmdMM 
.MM 
ClearMM 
(MM 
)MM 
;MM 
contextNN 
.NN 
DrawShadowsNN 
(NN  
refNN  #
settingsNN$ ,
)NN, -
;NN- .
cmdOO 
.OO 
DisableScissorRectOO "
(OO" #
)OO# $
;OO$ %
contextPP 
.PP  
ExecuteCommandBufferPP (
(PP( )
cmdPP) ,
)PP, -
;PP- .
cmdQQ 
.QQ 
ClearQQ 
(QQ 
)QQ 
;QQ 
}RR 	
publicTT 
staticTT 
voidTT 
RenderShadowSliceTT ,
(TT, -

cmdTT; >
,TT> ?
refTT@ C#
ScriptableRenderContextTTD [
contextTT\ c
,TTc d
refUU 
ShadowSliceDataUU 
shadowSliceDataUU  /
,UU/ 0
refUU1 4!
ShadowDrawingSettingsUU5 J
settingsUUK S
)UUS T
{VV 	
RenderShadowSliceWW 
(WW 
cmdWW !
,WW! "
refWW# &
contextWW' .
,WW. /
refWW0 3
shadowSliceDataWW4 C
,WWC D
refWWE H
settingsWWI Q
,WWQ R
shadowSliceDataXX 
.XX  
projectionMatrixXX  0
,XX0 1
shadowSliceDataXX2 A
.XXA B

viewMatrixXXB L
)XXL M
;XXM N
}YY 	
public[[ 
static[[ 
int[[ '
GetMaxTileResolutionInAtlas[[ 5
([[5 6
int[[6 9

atlasWidth[[: D
,[[D E
int[[F I
atlasHeight[[J U
,[[U V
int[[W Z
	tileCount[[[ d
)[[d e
{\\ 	
int]] 

resolution]] 
=]] 
Mathf]] "
.]]" #
Min]]# &
(]]& '

atlasWidth]]' 1
,]]1 2
atlasHeight]]3 >
)]]> ?
;]]? @
int^^ 
currentTileCount^^  
=^^! "

atlasWidth^^# -
/^^. /

resolution^^0 :
*^^; <
atlasHeight^^= H
/^^I J

resolution^^K U
;^^U V
while__ 
(__ 
currentTileCount__ #
<__$ %
	tileCount__& /
)__/ 0
{`` 

resolutionaa 
=aa 

resolutionaa '
>>aa( *
$numaa+ ,
;aa, -
currentTileCountbb  
=bb! "

atlasWidthbb# -
/bb. /

resolutionbb0 :
*bb; <
atlasHeightbb= H
/bbI J

resolutionbbK U
;bbU V
}cc 
returndd 

resolutiondd 
;dd 
}ee 	
publicgg 
staticgg 
voidgg 
ApplySliceTransformgg .
(gg. /
refgg/ 2
ShadowSliceDatagg3 B
shadowSliceDataggC R
,ggR S
intggT W

atlasWidthggX b
,ggb c
intggd g
atlasHeightggh s
)ggs t
{hh 	
	Matrix4x4ii 
sliceTransformii $
=ii% &
	Matrix4x4ii' 0
.ii0 1
identityii1 9
;ii9 :
floatjj 
oneOverAtlasWidthjj #
=jj$ %
$numjj& *
/jj+ ,

atlasWidthjj- 7
;jj7 8
floatkk 
oneOverAtlasHeightkk $
=kk% &
$numkk' +
/kk, -
atlasHeightkk. 9
;kk9 :
sliceTransformll 
.ll 
m00ll 
=ll  
shadowSliceDatall! 0
.ll0 1

resolutionll1 ;
*ll< =
oneOverAtlasWidthll> O
;llO P
sliceTransformmm 
.mm 
m11mm 
=mm  
shadowSliceDatamm! 0
.mm0 1

resolutionmm1 ;
*mm< =
oneOverAtlasHeightmm> P
;mmP Q
sliceTransformnn 
.nn 
m03nn 
=nn  
shadowSliceDatann! 0
.nn0 1
offsetXnn1 8
*nn9 :
oneOverAtlasWidthnn; L
;nnL M
sliceTransformoo 
.oo 
m13oo 
=oo  
shadowSliceDataoo! 0
.oo0 1
offsetYoo1 8
*oo9 :
oneOverAtlasHeightoo; M
;ooM N
shadowSliceDatarr 
.rr 
shadowTransformrr +
=rr, -
sliceTransformrr. <
*rr= >
shadowSliceDatarr? N
.rrN O
shadowTransformrrO ^
;rr^ _
}ss 	
publicuu 
staticuu 
Vector4uu 

(uu+ ,
refuu, /
VisibleLightuu0 <
shadowLightuu= H
,uuH I
intuuJ M
shadowLightIndexuuN ^
,uu^ _
refuu` c

ShadowDatauud n

shadowDatauuo y
,uuy z
	Matrix4x4	uu{ �#
lightProjectionMatrix
uu� �
,
uu� �
float
uu� �
shadowResolution
uu� �
)
uu� �
{vv 	
ifww 
(ww 
shadowLightIndexww  
<ww! "
$numww# $
||ww% '
shadowLightIndexww( 8
>=ww9 ;

shadowDataww< F
.wwF G
biaswwG K
.wwK L
CountwwL Q
)wwQ R
{xx 
Debugyy 
.yy 

LogWarningyy  
(yy  !
stringyy! '
.yy' (
Formatyy( .
(yy. /
$stryy/ P
,yyP Q
shadowLightIndexyyR b
)yyb c
)yyc d
;yyd e
returnzz 
Vector4zz 
.zz 
zerozz #
;zz# $
}{{ 
float}} 
frustumSize}} 
;}} 
if~~ 
(~~ 
shadowLight~~ 
.~~ 
	lightType~~ %
==~~& (
	LightType~~) 2
.~~2 3
Directional~~3 >
)~~> ?
{ 
frustumSize
�� 
=
�� 
$num
�� "
/
��# $#
lightProjectionMatrix
��% :
.
��: ;
m00
��; >
;
��> ?
}
�� 
else
�� 
if
�� 
(
�� 
shadowLight
��  
.
��  !
	lightType
��! *
==
��+ -
	LightType
��. 7
.
��7 8
Spot
��8 <
)
��< =
{
�� 
frustumSize
�� 
=
�� 
Mathf
�� #
.
��# $
Tan
��$ '
(
��' (
shadowLight
��( 3
.
��3 4
	spotAngle
��4 =
*
��> ?
$num
��@ D
*
��E F
Mathf
��G L
.
��L M
Deg2Rad
��M T
)
��T U
*
��V W
shadowLight
��X c
.
��c d
range
��d i
;
��i j
}
�� 
else
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! o
)
��o p
;
��p q
frustumSize
�� 
=
�� 
$num
�� "
;
��" #
}
�� 
float
�� 
	texelSize
�� 
=
�� 
frustumSize
�� )
/
��* +
shadowResolution
��, <
;
��< =
float
�� 
	depthBias
�� 
=
�� 
-
�� 

shadowData
�� )
.
��) *
bias
��* .
[
��. /
shadowLightIndex
��/ ?
]
��? @
.
��@ A
x
��A B
*
��C D
	texelSize
��E N
;
��N O
float
�� 

normalBias
�� 
=
�� 
-
��  

shadowData
��  *
.
��* +
bias
��+ /
[
��/ 0
shadowLightIndex
��0 @
]
��@ A
.
��A B
y
��B C
*
��D E
	texelSize
��F O
;
��O P
if
�� 
(
�� 

shadowData
�� 
.
�� !
supportsSoftShadows
�� .
)
��. /
{
�� 
const
�� 
float
�� 
kernelRadius
�� (
=
��) *
$num
��+ /
;
��/ 0
	depthBias
�� 
*=
�� 
kernelRadius
�� )
;
��) *

normalBias
�� 
*=
�� 
kernelRadius
�� *
;
��* +
}
�� 
return
�� 
new
�� 
Vector4
�� 
(
�� 
	depthBias
�� (
,
��( )

normalBias
��* 4
,
��4 5
$num
��6 :
,
��: ;
$num
��< @
)
��@ A
;
��A B
}
�� 	
public
�� 
static
�� 
void
�� -
SetupShadowCasterConstantBuffer
�� :
(
��: ;

��; H
cmd
��I L
,
��L M
ref
��N Q
VisibleLight
��R ^
shadowLight
��_ j
,
��j k
Vector4
��l s

shadowBias
��t ~
)
��~ 
{
�� 	
Vector3
�� 
lightDirection
�� "
=
��# $
-
��% &
shadowLight
��& 1
.
��1 2 
localToWorldMatrix
��2 D
.
��D E
	GetColumn
��E N
(
��N O
$num
��O P
)
��P Q
;
��Q R
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
$str
��  -
,
��- .

shadowBias
��/ 9
)
��9 :
;
��: ;
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
$str
��  1
,
��1 2
new
��3 6
Vector4
��7 >
(
��> ?
lightDirection
��? M
.
��M N
x
��N O
,
��O P
lightDirection
��Q _
.
��_ `
y
��` a
,
��a b
lightDirection
��c q
.
��q r
z
��r s
,
��s t
$num
��u y
)
��y z
)
��z {
;
��{ |
}
�� 	
public
�� 
static
�� 

�� #'
GetTemporaryShadowTexture
��$ =
(
��= >
int
��> A
width
��B G
,
��G H
int
��I L
height
��M S
,
��S T
int
��U X
bits
��Y ]
)
��] ^
{
�� 	
var
�� 

�� 
=
�� 

��  -
.
��- .
GetTemporary
��. :
(
��: ;
width
��; @
,
��@ A
height
��B H
,
��H I
bits
��J N
,
��N O
m_ShadowmapFormat
��P a
)
��a b
;
��b c

�� 
.
�� 

filterMode
�� $
=
��% &(
m_ForceShadowPointSampling
��' A
?
��B C

FilterMode
��D N
.
��N O
Point
��O T
:
��U V

FilterMode
��W a
.
��a b
Bilinear
��b j
;
��j k

�� 
.
�� 
wrapMode
�� "
=
��# $
TextureWrapMode
��% 4
.
��4 5
Clamp
��5 :
;
��: ;
return
�� 

��  
;
��  !
}
�� 	
static
�� 
	Matrix4x4
��  
GetShadowTransform
�� +
(
��+ ,
	Matrix4x4
��, 5
proj
��6 :
,
��: ;
	Matrix4x4
��< E
view
��F J
)
��J K
{
�� 	
if
�� 
(
�� 

SystemInfo
�� 
.
�� !
usesReversedZBuffer
�� .
)
��. /
{
�� 
proj
�� 
.
�� 
m20
�� 
=
�� 
-
�� 
proj
��  
.
��  !
m20
��! $
;
��$ %
proj
�� 
.
�� 
m21
�� 
=
�� 
-
�� 
proj
��  
.
��  !
m21
��! $
;
��$ %
proj
�� 
.
�� 
m22
�� 
=
�� 
-
�� 
proj
��  
.
��  !
m22
��! $
;
��$ %
proj
�� 
.
�� 
m23
�� 
=
�� 
-
�� 
proj
��  
.
��  !
m23
��! $
;
��$ %
}
�� 
	Matrix4x4
�� 

�� #
=
��$ %
proj
��& *
*
��+ ,
view
��- 1
;
��1 2
var
�� !
textureScaleAndBias
�� #
=
��$ %
	Matrix4x4
��& /
.
��/ 0
identity
��0 8
;
��8 9!
textureScaleAndBias
�� 
.
��  
m00
��  #
=
��$ %
$num
��& *
;
��* +!
textureScaleAndBias
�� 
.
��  
m11
��  #
=
��$ %
$num
��& *
;
��* +!
textureScaleAndBias
�� 
.
��  
m22
��  #
=
��$ %
$num
��& *
;
��* +!
textureScaleAndBias
�� 
.
��  
m03
��  #
=
��$ %
$num
��& *
;
��* +!
textureScaleAndBias
�� 
.
��  
m23
��  #
=
��$ %
$num
��& *
;
��* +!
textureScaleAndBias
�� 
.
��  
m13
��  #
=
��$ %
$num
��& *
;
��* +
return
�� !
textureScaleAndBias
�� &
*
��' (

��) 6
;
��6 7
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\External\LibTessDotNet\Tess.cs
	namespace%% 	
UnityEngine%%
 
.%% 
Experimental%% "
.%%" #
	Rendering%%# ,
.%%, -
	Universal%%- 6
{&& 
	namespace)) 	

 
{** 
internal++ 
enum++
WindingRule++ 
{,, 
EvenOdd-- 
,-- 
NonZero.. 
,.. 
Positive// 
,// 
Negative00 
,00 
	AbsGeqTwo11 
}22 
internal44 
enum44
ElementType44 
{55 
Polygons66 
,66 
ConnectedPolygons77 
,77 
BoundaryContours88 
}99 
internal;; 
enum;;
ContourOrientation;; $
{<< 
Original== 
,== 
	Clockwise>> 
,>> 
CounterClockwise?? 
}@@ 
internalBB 
structBB

{CC 
publicDD 
Vec3DD 
PositionDD 
;DD 
publicEE 
objectEE 
DataEE 
;EE 
publicGG 
overrideGG 
stringGG 
ToStringGG '
(GG' (
)GG( )
{HH 	
returnII 
stringII 
.II 
FormatII  
(II  !
$strII! +
,II+ ,
PositionII- 5
,II5 6
DataII7 ;
)II; <
;II< =
}JJ 	
}KK 
internalMM 
delegateMM
objectMM 
CombineCallbackMM ,
(MM, -
Vec3MM- 1
positionMM2 :
,MM: ;
objectMM< B
[MMB C
]MMC D
dataMME I
,MMI J
RealMMK O
[MMO P
]MMP Q
weightsMMR Y
)MMY Z
;MMZ [
internalOO 
partialOO
classOO 
TessOO 
{PP 
privateQQ 
MeshQQ 
_meshQQ 
;QQ 
privateRR 
Vec3RR 
_normalRR 
;RR 
privateSS 
Vec3SS 
_sUnitSS 
;SS 
privateTT 
Vec3TT 
_tUnitTT 
;TT 
privateVV 
RealVV 
_bminXVV 
,VV 
_bminYVV #
,VV# $
_bmaxXVV% +
,VV+ ,
_bmaxYVV- 3
;VV3 4
privateXX 
WindingRuleXX 
_windingRuleXX (
;XX( )
privateZZ 
DictZZ 
<ZZ 
ActiveRegionZZ !
>ZZ! "
_dictZZ# (
;ZZ( )
private[[ 

<[[ 
	MeshUtils[[ '
.[[' (
Vertex[[( .
>[[. /
_pq[[0 3
;[[3 4
private\\ 
	MeshUtils\\ 
.\\ 
Vertex\\  
_event\\! '
;\\' (
private^^ 
CombineCallback^^ 
_combineCallback^^  0
;^^0 1
private`` 

[`` 
]`` 
	_vertices``  )
;``) *
privateaa 
intaa 
_vertexCountaa  
;aa  !
privatebb 
intbb 
[bb 
]bb 
	_elementsbb 
;bb  
privatecc 
intcc 

;cc! "
publicee 
Vec3ee 
Normalee 
{ee 
getee  
{ee! "
returnee# )
_normalee* 1
;ee1 2
}ee3 4
setee5 8
{ee9 :
_normalee; B
=eeC D
valueeeE J
;eeJ K
}eeL M
}eeN O
publicgg 
Realgg 
SUnitXgg 
=gg 
$numgg 
;gg 
publichh 
Realhh 
SUnitYhh 
=hh 
$numhh 
;hh 
publicll 
Realll 

=ll" #
$numll$ )
;ll) *
publicrr 
boolrr 
NoEmptyPolygonsrr #
=rr$ %
falserr& +
;rr+ ,
publicww 
boolww 

UsePoolingww 
=ww  
falseww! &
;ww& '
publicyy 

[yy 
]yy 
Verticesyy '
{yy( )
getyy* -
{yy. /
returnyy0 6
	_verticesyy7 @
;yy@ A
}yyB C
}yyD E
publiczz 
intzz 
VertexCountzz 
{zz  
getzz! $
{zz% &
returnzz' -
_vertexCountzz. :
;zz: ;
}zz< =
}zz> ?
public|| 
int|| 
[|| 
]|| 
Elements|| 
{|| 
get||  #
{||$ %
return||& ,
	_elements||- 6
;||6 7
}||8 9
}||: ;
public}} 
int}} 
ElementCount}} 
{}}  !
get}}" %
{}}& '
return}}( .

;}}< =
}}}> ?
}}}@ A
public 
Tess 
( 
) 
{
�� 	
_normal
�� 
=
�� 
Vec3
�� 
.
�� 
Zero
�� 
;
��  
_bminX
�� 
=
�� 
_bminY
�� 
=
�� 
_bmaxX
�� $
=
��% &
_bmaxY
��' -
=
��. /
$num
��0 1
;
��1 2
_windingRule
�� 
=
�� 
WindingRule
�� &
.
��& '
EvenOdd
��' .
;
��. /
_mesh
�� 
=
�� 
null
�� 
;
�� 
	_vertices
�� 
=
�� 
null
�� 
;
�� 
_vertexCount
�� 
=
�� 
$num
�� 
;
�� 
	_elements
�� 
=
�� 
null
�� 
;
�� 

�� 
=
�� 
$num
�� 
;
�� 
}
�� 	
private
�� 
void
�� 

�� "
(
��" #
ref
��# &
Vec3
��' +
norm
��, 0
)
��0 1
{
�� 	
var
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
��  
.
��  !
_next
��! &
;
��& '
var
�� 
minVal
�� 
=
�� 
new
�� 
Real
�� !
[
��! "
$num
��" #
]
��# $
{
��% &
v
��' (
.
��( )
_coords
��) 0
.
��0 1
X
��1 2
,
��2 3
v
��4 5
.
��5 6
_coords
��6 =
.
��= >
Y
��> ?
,
��? @
v
��A B
.
��B C
_coords
��C J
.
��J K
Z
��K L
}
��M N
;
��N O
var
�� 
minVert
�� 
=
�� 
new
�� 
	MeshUtils
�� '
.
��' (
Vertex
��( .
[
��. /
$num
��/ 0
]
��0 1
{
��2 3
v
��4 5
,
��5 6
v
��7 8
,
��8 9
v
��: ;
}
��< =
;
��= >
var
�� 
maxVal
�� 
=
�� 
new
�� 
Real
�� !
[
��! "
$num
��" #
]
��# $
{
��% &
v
��' (
.
��( )
_coords
��) 0
.
��0 1
X
��1 2
,
��2 3
v
��4 5
.
��5 6
_coords
��6 =
.
��= >
Y
��> ?
,
��? @
v
��A B
.
��B C
_coords
��C J
.
��J K
Z
��K L
}
��M N
;
��N O
var
�� 
maxVert
�� 
=
�� 
new
�� 
	MeshUtils
�� '
.
��' (
Vertex
��( .
[
��. /
$num
��/ 0
]
��0 1
{
��2 3
v
��4 5
,
��5 6
v
��7 8
,
��8 9
v
��: ;
}
��< =
;
��= >
for
�� 
(
�� 
;
�� 
v
�� 
!=
�� 
_mesh
�� 
.
�� 
_vHead
�� $
;
��$ %
v
��& '
=
��( )
v
��* +
.
��+ ,
_next
��, 1
)
��1 2
{
�� 
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
X
�� 
<
��  !
minVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
minVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
X
��E F
;
��F G
minVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
Y
�� 
<
��  !
minVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
minVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
Y
��E F
;
��F G
minVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
Z
�� 
<
��  !
minVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
minVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
Z
��E F
;
��F G
minVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
X
�� 
>
��  !
maxVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
maxVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
X
��E F
;
��F G
maxVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
Y
�� 
>
��  !
maxVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
maxVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
Y
��E F
;
��F G
maxVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
if
�� 
(
�� 
v
�� 
.
�� 
_coords
�� 
.
�� 
Z
�� 
>
��  !
maxVal
��" (
[
��( )
$num
��) *
]
��* +
)
��+ ,
{
��- .
maxVal
��/ 5
[
��5 6
$num
��6 7
]
��7 8
=
��9 :
v
��; <
.
��< =
_coords
��= D
.
��D E
Z
��E F
;
��F G
maxVert
��H O
[
��O P
$num
��P Q
]
��Q R
=
��S T
v
��U V
;
��V W
}
��X Y
}
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
maxVal
�� 
[
�� 
$num
�� 
]
�� 
-
�� 
minVal
�� "
[
��" #
$num
��# $
]
��$ %
>
��& '
maxVal
��( .
[
��. /
$num
��/ 0
]
��0 1
-
��2 3
minVal
��4 :
[
��: ;
$num
��; <
]
��< =
)
��= >
{
��? @
i
��A B
=
��C D
$num
��E F
;
��F G
}
��H I
if
�� 
(
�� 
maxVal
�� 
[
�� 
$num
�� 
]
�� 
-
�� 
minVal
�� "
[
��" #
$num
��# $
]
��$ %
>
��& '
maxVal
��( .
[
��. /
i
��/ 0
]
��0 1
-
��2 3
minVal
��4 :
[
��: ;
i
��; <
]
��< =
)
��= >
{
��? @
i
��A B
=
��C D
$num
��E F
;
��F G
}
��H I
if
�� 
(
�� 
minVal
�� 
[
�� 
i
�� 
]
�� 
>=
�� 
maxVal
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
�� 
norm
�� 
=
�� 
new
�� 
Vec3
�� 
{
��  !
X
��" #
=
��$ %
$num
��& '
,
��' (
Y
��) *
=
��+ ,
$num
��- .
,
��. /
Z
��0 1
=
��2 3
$num
��4 5
}
��6 7
;
��7 8
return
�� 
;
�� 
}
�� 
Real
�� 
maxLen2
�� 
=
�� 
$num
�� 
,
�� 
tLen2
�� #
;
��# $
var
�� 
v1
�� 
=
�� 
minVert
�� 
[
�� 
i
�� 
]
�� 
;
��  
var
�� 
v2
�� 
=
�� 
maxVert
�� 
[
�� 
i
�� 
]
�� 
;
��  
Vec3
�� 
d1
�� 
,
�� 
d2
�� 
,
�� 
tNorm
�� 
;
�� 
Vec3
�� 
.
�� 
Sub
�� 
(
�� 
ref
�� 
v1
�� 
.
�� 
_coords
�� #
,
��# $
ref
��% (
v2
��) +
.
��+ ,
_coords
��, 3
,
��3 4
out
��5 8
d1
��9 ;
)
��; <
;
��< =
for
�� 
(
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
�� !
.
��! "
_next
��" '
;
��' (
v
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_vHead
��4 :
;
��: ;
v
��< =
=
��> ?
v
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
Vec3
�� 
.
�� 
Sub
�� 
(
�� 
ref
�� 
v
�� 
.
�� 
_coords
�� &
,
��& '
ref
��( +
v2
��, .
.
��. /
_coords
��/ 6
,
��6 7
out
��8 ;
d2
��< >
)
��> ?
;
��? @
tNorm
�� 
.
�� 
X
�� 
=
�� 
d1
�� 
.
�� 
Y
�� 
*
��  
d2
��! #
.
��# $
Z
��$ %
-
��& '
d1
��( *
.
��* +
Z
��+ ,
*
��- .
d2
��/ 1
.
��1 2
Y
��2 3
;
��3 4
tNorm
�� 
.
�� 
Y
�� 
=
�� 
d1
�� 
.
�� 
Z
�� 
*
��  
d2
��! #
.
��# $
X
��$ %
-
��& '
d1
��( *
.
��* +
X
��+ ,
*
��- .
d2
��/ 1
.
��1 2
Z
��2 3
;
��3 4
tNorm
�� 
.
�� 
Z
�� 
=
�� 
d1
�� 
.
�� 
X
�� 
*
��  
d2
��! #
.
��# $
Y
��$ %
-
��& '
d1
��( *
.
��* +
Y
��+ ,
*
��- .
d2
��/ 1
.
��1 2
X
��2 3
;
��3 4
tLen2
�� 
=
�� 
tNorm
�� 
.
�� 
X
�� 
*
��  
tNorm
��  %
.
��% &
X
��& '
+
��( )
tNorm
��* /
.
��/ 0
Y
��0 1
*
��1 2
tNorm
��2 7
.
��7 8
Y
��8 9
+
��: ;
tNorm
��< A
.
��A B
Z
��B C
*
��C D
tNorm
��D I
.
��I J
Z
��J K
;
��K L
if
�� 
(
�� 
tLen2
�� 
>
�� 
maxLen2
�� #
)
��# $
{
�� 
maxLen2
�� 
=
�� 
tLen2
�� #
;
��# $
norm
�� 
=
�� 
tNorm
��  
;
��  !
}
�� 
}
�� 
if
�� 
(
�� 
maxLen2
�� 
<=
�� 
$num
�� 
)
��  
{
�� 
norm
�� 
=
�� 
Vec3
�� 
.
�� 
Zero
��  
;
��  !
i
�� 
=
�� 
Vec3
�� 
.
�� 
LongAxis
�� !
(
��! "
ref
��" %
d1
��& (
)
��( )
;
��) *
norm
�� 
[
�� 
i
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CheckOrientation
�� %
(
��% &
)
��& '
{
�� 	
Real
�� 
area
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� %
.
��% &
_next
��& +
;
��+ ,
f
��- .
!=
��/ 1
_mesh
��2 7
.
��7 8
_fHead
��8 >
;
��> ?
f
��@ A
=
��B C
f
��D E
.
��E F
_next
��F K
)
��K L
{
�� 
if
�� 
(
�� 
f
�� 
.
�� 
_anEdge
�� 
.
�� 
_winding
�� &
<=
��' )
$num
��* +
)
��+ ,
{
�� 
continue
�� 
;
�� 
}
�� 
area
�� 
+=
�� 
	MeshUtils
�� !
.
��! "
FaceArea
��" *
(
��* +
f
��+ ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
area
�� 
<
�� 
$num
�� 
)
�� 
{
�� 
for
�� 
(
�� 
var
�� 
v
�� 
=
�� 
_mesh
�� "
.
��" #
_vHead
��# )
.
��) *
_next
��* /
;
��/ 0
v
��1 2
!=
��3 5
_mesh
��6 ;
.
��; <
_vHead
��< B
;
��B C
v
��D E
=
��F G
v
��H I
.
��I J
_next
��J O
)
��O P
{
�� 
v
�� 
.
�� 
_t
�� 
=
�� 
-
�� 
v
�� 
.
�� 
_t
��  
;
��  !
}
�� 
Vec3
�� 
.
�� 
Neg
�� 
(
�� 
ref
�� 
_tUnit
�� #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
void
�� 
ProjectPolygon
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
norm
�� 
=
�� 
_normal
�� 
;
�� 
bool
�� 
computedNormal
�� 
=
��  !
false
��" '
;
��' (
if
�� 
(
�� 
norm
�� 
.
�� 
X
�� 
==
�� 
$num
�� 
&&
�� !
norm
��" &
.
��& '
Y
��' (
==
��) +
$num
��, 0
&&
��1 3
norm
��4 8
.
��8 9
Z
��9 :
==
��; =
$num
��> B
)
��B C
{
�� 

�� 
(
�� 
ref
�� !
norm
��" &
)
��& '
;
��' (
_normal
�� 
=
�� 
norm
�� 
;
�� 
computedNormal
�� 
=
��  
true
��! %
;
��% &
}
�� 
int
�� 
i
�� 
=
�� 
Vec3
�� 
.
�� 
LongAxis
�� !
(
��! "
ref
��" %
norm
��& *
)
��* +
;
��+ ,
_sUnit
�� 
[
�� 
i
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
_sUnit
�� 
[
�� 
(
�� 
i
�� 
+
�� 
$num
�� 
)
�� 
%
�� 
$num
�� 
]
�� 
=
��  !
SUnitX
��" (
;
��( )
_sUnit
�� 
[
�� 
(
�� 
i
�� 
+
�� 
$num
�� 
)
�� 
%
�� 
$num
�� 
]
�� 
=
��  !
SUnitY
��" (
;
��( )
_tUnit
�� 
[
�� 
i
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
_tUnit
�� 
[
�� 
(
�� 
i
�� 
+
�� 
$num
�� 
)
�� 
%
�� 
$num
�� 
]
�� 
=
��  !
norm
��" &
[
��& '
i
��' (
]
��( )
>
��* +
$num
��, 0
?
��1 2
-
��3 4
SUnitY
��4 :
:
��; <
SUnitY
��= C
;
��C D
_tUnit
�� 
[
�� 
(
�� 
i
�� 
+
�� 
$num
�� 
)
�� 
%
�� 
$num
�� 
]
�� 
=
��  !
norm
��" &
[
��& '
i
��' (
]
��( )
>
��* +
$num
��, 0
?
��1 2
SUnitX
��3 9
:
��: ;
-
��< =
SUnitX
��= C
;
��C D
for
�� 
(
�� 
var
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
�� %
.
��% &
_next
��& +
;
��+ ,
v
��- .
!=
��/ 1
_mesh
��2 7
.
��7 8
_vHead
��8 >
;
��> ?
v
��@ A
=
��B C
v
��D E
.
��E F
_next
��F K
)
��K L
{
�� 
Vec3
�� 
.
�� 
Dot
�� 
(
�� 
ref
�� 
v
�� 
.
�� 
_coords
�� &
,
��& '
ref
��( +
_sUnit
��, 2
,
��2 3
out
��4 7
v
��8 9
.
��9 :
_s
��: <
)
��< =
;
��= >
Vec3
�� 
.
�� 
Dot
�� 
(
�� 
ref
�� 
v
�� 
.
�� 
_coords
�� &
,
��& '
ref
��( +
_tUnit
��, 2
,
��2 3
out
��4 7
v
��8 9
.
��9 :
_t
��: <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
computedNormal
�� 
)
�� 
{
�� 
CheckOrientation
��  
(
��  !
)
��! "
;
��" #
}
�� 
bool
�� 
first
�� 
=
�� 
true
�� 
;
�� 
for
�� 
(
�� 
var
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
�� %
.
��% &
_next
��& +
;
��+ ,
v
��- .
!=
��/ 1
_mesh
��2 7
.
��7 8
_vHead
��8 >
;
��> ?
v
��@ A
=
��B C
v
��D E
.
��E F
_next
��F K
)
��K L
{
�� 
if
�� 
(
�� 
first
�� 
)
�� 
{
�� 
_bminX
�� 
=
�� 
_bmaxX
�� #
=
��$ %
v
��& '
.
��' (
_s
��( *
;
��* +
_bminY
�� 
=
�� 
_bmaxY
�� #
=
��$ %
v
��& '
.
��' (
_t
��( *
;
��* +
first
�� 
=
�� 
false
�� !
;
��! "
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
v
�� 
.
�� 
_s
�� 
<
�� 
_bminX
�� %
)
��% &
_bminX
��' -
=
��. /
v
��0 1
.
��1 2
_s
��2 4
;
��4 5
if
�� 
(
�� 
v
�� 
.
�� 
_s
�� 
>
�� 
_bmaxX
�� %
)
��% &
_bmaxX
��' -
=
��. /
v
��0 1
.
��1 2
_s
��2 4
;
��4 5
if
�� 
(
�� 
v
�� 
.
�� 
_t
�� 
<
�� 
_bminY
�� %
)
��% &
_bminY
��' -
=
��. /
v
��0 1
.
��1 2
_t
��2 4
;
��4 5
if
�� 
(
�� 
v
�� 
.
�� 
_t
�� 
>
�� 
_bmaxY
�� %
)
��% &
_bmaxY
��' -
=
��. /
v
��0 1
.
��1 2
_t
��2 4
;
��4 5
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
TessellateMonoRegion
�� )
(
��) *
	MeshUtils
��* 3
.
��3 4
Face
��4 8
face
��9 =
)
��= >
{
�� 	
var
�� 
up
�� 
=
�� 
face
�� 
.
�� 
_anEdge
�� !
;
��! "
Debug
�� 
.
�� 
Assert
�� 
(
�� 
up
�� 
.
�� 
_Lnext
�� "
!=
��# %
up
��& (
&&
��) +
up
��, .
.
��. /
_Lnext
��/ 5
.
��5 6
_Lnext
��6 <
!=
��= ?
up
��@ B
)
��B C
;
��C D
while
�� 
(
�� 
Geom
�� 
.
�� 
VertLeq
�� 
(
��  
up
��  "
.
��" #
_Dst
��# '
,
��' (
up
��) +
.
��+ ,
_Org
��, 0
)
��0 1
)
��1 2
up
��3 5
=
��6 7
up
��8 :
.
��: ;
_Lprev
��; A
;
��A B
while
�� 
(
�� 
Geom
�� 
.
�� 
VertLeq
�� 
(
��  
up
��  "
.
��" #
_Org
��# '
,
��' (
up
��) +
.
��+ ,
_Dst
��, 0
)
��0 1
)
��1 2
up
��3 5
=
��6 7
up
��8 :
.
��: ;
_Lnext
��; A
;
��A B
var
�� 
lo
�� 
=
�� 
up
�� 
.
�� 
_Lprev
�� 
;
�� 
while
�� 
(
�� 
up
�� 
.
�� 
_Lnext
�� 
!=
�� 
lo
��  "
)
��" #
{
�� 
if
�� 
(
�� 
Geom
�� 
.
�� 
VertLeq
��  
(
��  !
up
��! #
.
��# $
_Dst
��$ (
,
��( )
lo
��* ,
.
��, -
_Org
��- 1
)
��1 2
)
��2 3
{
�� 
while
�� 
(
�� 
lo
�� 
.
�� 
_Lnext
�� $
!=
��% '
up
��( *
&&
��+ -
(
��. /
Geom
��/ 3
.
��3 4
EdgeGoesLeft
��4 @
(
��@ A
lo
��A C
.
��C D
_Lnext
��D J
)
��J K
||
�� 
Geom
�� 
.
��  
EdgeSign
��  (
(
��( )
lo
��) +
.
��+ ,
_Org
��, 0
,
��0 1
lo
��2 4
.
��4 5
_Dst
��5 9
,
��9 :
lo
��; =
.
��= >
_Lnext
��> D
.
��D E
_Dst
��E I
)
��I J
<=
��K M
$num
��N R
)
��R S
)
��S T
{
�� 
lo
�� 
=
�� 
_mesh
�� "
.
��" #
Connect
��# *
(
��* +
lo
��+ -
.
��- .
_Lnext
��. 4
,
��4 5
lo
��6 8
)
��8 9
.
��9 :
_Sym
��: >
;
��> ?
}
�� 
lo
�� 
=
�� 
lo
�� 
.
�� 
_Lprev
�� "
;
��" #
}
�� 
else
�� 
{
�� 
while
�� 
(
�� 
lo
�� 
.
�� 
_Lnext
�� $
!=
��% '
up
��( *
&&
��+ -
(
��. /
Geom
��/ 3
.
��3 4

��4 A
(
��A B
up
��B D
.
��D E
_Lprev
��E K
)
��K L
||
�� 
Geom
�� 
.
��  
EdgeSign
��  (
(
��( )
up
��) +
.
��+ ,
_Dst
��, 0
,
��0 1
up
��2 4
.
��4 5
_Org
��5 9
,
��9 :
up
��; =
.
��= >
_Lprev
��> D
.
��D E
_Org
��E I
)
��I J
>=
��K M
$num
��N R
)
��R S
)
��S T
{
�� 
up
�� 
=
�� 
_mesh
�� "
.
��" #
Connect
��# *
(
��* +
up
��+ -
,
��- .
up
��/ 1
.
��1 2
_Lprev
��2 8
)
��8 9
.
��9 :
_Sym
��: >
;
��> ?
}
�� 
up
�� 
=
�� 
up
�� 
.
�� 
_Lnext
�� "
;
��" #
}
�� 
}
�� 
Debug
�� 
.
�� 
Assert
�� 
(
�� 
lo
�� 
.
�� 
_Lnext
�� "
!=
��# %
up
��& (
)
��( )
;
��) *
while
�� 
(
�� 
lo
�� 
.
�� 
_Lnext
�� 
.
�� 
_Lnext
�� #
!=
��$ &
up
��' )
)
��) *
{
�� 
lo
�� 
=
�� 
_mesh
�� 
.
�� 
Connect
�� "
(
��" #
lo
��# %
.
��% &
_Lnext
��& ,
,
��, -
lo
��. 0
)
��0 1
.
��1 2
_Sym
��2 6
;
��6 7
}
�� 
}
�� 	
private
�� 
void
��  
TessellateInterior
�� '
(
��' (
)
��( )
{
�� 	
	MeshUtils
�� 
.
�� 
Face
�� 
f
�� 
,
�� 
next
�� "
;
��" #
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
next
��@ D
)
��D E
{
�� 
next
�� 
=
�� 
f
�� 
.
�� 
_next
�� 
;
�� 
if
�� 
(
�� 
f
�� 
.
�� 
_inside
�� 
)
�� 
{
�� "
TessellateMonoRegion
�� (
(
��( )
f
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
DiscardExterior
�� $
(
��$ %
)
��% &
{
�� 	
	MeshUtils
�� 
.
�� 
Face
�� 
f
�� 
,
�� 
next
�� "
;
��" #
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
next
��@ D
)
��D E
{
�� 
next
�� 
=
�� 
f
�� 
.
�� 
_next
�� 
;
�� 
if
�� 
(
�� 
!
�� 
f
�� 
.
�� 
_inside
�� 
)
��  !
{
��" #
_mesh
�� 
.
�� 
ZapFace
�� !
(
��! "
f
��" #
)
��# $
;
��$ %
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
SetWindingNumber
�� %
(
��% &
int
��& )
value
��* /
,
��/ 0
bool
��1 5
keepOnlyBoundary
��6 F
)
��F G
{
�� 	
	MeshUtils
�� 
.
�� 
Edge
�� 
e
�� 
,
�� 
eNext
�� #
;
��# $
for
�� 
(
�� 
e
�� 
=
�� 
_mesh
�� 
.
�� 
_eHead
�� !
.
��! "
_next
��" '
;
��' (
e
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_eHead
��4 :
;
��: ;
e
��< =
=
��> ?
eNext
��@ E
)
��E F
{
�� 
eNext
�� 
=
�� 
e
�� 
.
�� 
_next
�� 
;
��  
if
�� 
(
�� 
e
�� 
.
�� 
_Rface
�� 
.
�� 
_inside
�� $
!=
��% '
e
��( )
.
��) *
_Lface
��* 0
.
��0 1
_inside
��1 8
)
��8 9
{
�� 
e
�� 
.
�� 
_winding
�� 
=
��  
(
��! "
e
��" #
.
��# $
_Lface
��$ *
.
��* +
_inside
��+ 2
)
��2 3
?
��4 5
value
��6 ;
:
��< =
-
��> ?
value
��? D
;
��D E
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
!
�� 
keepOnlyBoundary
�� )
)
��) *
{
�� 
e
�� 
.
�� 
_winding
�� "
=
��# $
$num
��% &
;
��& '
}
�� 
else
�� 
{
�� 
_mesh
�� 
.
�� 
Delete
�� $
(
��$ %
e
��% &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
int
�� 
GetNeighbourFace
�� $
(
��$ %
	MeshUtils
��% .
.
��. /
Edge
��/ 3
edge
��4 8
)
��8 9
{
�� 	
if
�� 
(
�� 
edge
�� 
.
�� 
_Rface
�� 
==
�� 
null
�� #
)
��# $
return
�� 
	MeshUtils
��  
.
��  !
Undef
��! &
;
��& '
if
�� 
(
�� 
!
�� 
edge
�� 
.
�� 
_Rface
�� 
.
�� 
_inside
�� $
)
��$ %
return
�� 
	MeshUtils
��  
.
��  !
Undef
��! &
;
��& '
return
�� 
edge
�� 
.
�� 
_Rface
�� 
.
�� 
_n
�� !
;
��! "
}
�� 	
private
�� 
void
�� 
OutputPolymesh
�� #
(
��# $
ElementType
��$ /
elementType
��0 ;
,
��; <
int
��= @
polySize
��A I
)
��I J
{
�� 	
	MeshUtils
�� 
.
�� 
Vertex
�� 
v
�� 
;
�� 
	MeshUtils
�� 
.
�� 
Face
�� 
f
�� 
;
�� 
	MeshUtils
�� 
.
�� 
Edge
�� 
edge
�� 
;
��  
int
�� 
maxFaceCount
�� 
=
�� 
$num
��  
;
��  !
int
�� 
maxVertexCount
�� 
=
��  
$num
��! "
;
��" #
int
�� 
	faceVerts
�� 
,
�� 
i
�� 
;
�� 
if
�� 
(
�� 
polySize
�� 
<
�� 
$num
�� 
)
�� 
{
�� 
polySize
�� 
=
�� 
$num
�� 
;
�� 
}
�� 
if
�� 
(
�� 
polySize
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
_mesh
�� 
.
�� 
MergeConvexFaces
�� &
(
��& '
polySize
��' /
)
��/ 0
;
��0 1
}
�� 
for
�� 
(
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
�� !
.
��! "
_next
��" '
;
��' (
v
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_vHead
��4 :
;
��: ;
v
��< =
=
��> ?
v
��@ A
.
��A B
_next
��B G
)
��G H
v
�� 
.
�� 
_n
�� 
=
�� 
	MeshUtils
��  
.
��  !
Undef
��! &
;
��& '
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
f
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
f
�� 
.
�� 
_n
�� 
=
�� 
	MeshUtils
��  
.
��  !
Undef
��! &
;
��& '
if
�� 
(
�� 
!
�� 
f
�� 
.
�� 
_inside
�� 
)
�� 
continue
��  (
;
��( )
if
�� 
(
�� 
NoEmptyPolygons
�� #
)
��# $
{
�� 
var
�� 
area
�� 
=
�� 
	MeshUtils
�� (
.
��( )
FaceArea
��) 1
(
��1 2
f
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
��  
(
��  !
area
��! %
)
��% &
<
��' (
Real
��) -
.
��- .
Epsilon
��. 5
)
��5 6
{
�� 
continue
��  
;
��  !
}
�� 
}
�� 
edge
�� 
=
�� 
f
�� 
.
�� 
_anEdge
��  
;
��  !
	faceVerts
�� 
=
�� 
$num
�� 
;
�� 
do
�� 
{
�� 
v
�� 
=
�� 
edge
�� 
.
�� 
_Org
�� !
;
��! "
if
�� 
(
�� 
v
�� 
.
�� 
_n
�� 
==
�� 
	MeshUtils
��  )
.
��) *
Undef
��* /
)
��/ 0
{
�� 
v
�� 
.
�� 
_n
�� 
=
�� 
maxVertexCount
�� -
;
��- .
maxVertexCount
�� &
++
��& (
;
��( )
}
�� 
	faceVerts
�� 
++
�� 
;
��  
edge
�� 
=
�� 
edge
�� 
.
��  
_Lnext
��  &
;
��& '
}
�� 
while
�� 
(
�� 
edge
�� 
!=
�� 
f
��  
.
��  !
_anEdge
��! (
)
��( )
;
��) *
Debug
�� 
.
�� 
Assert
�� 
(
�� 
	faceVerts
�� &
<=
��' )
polySize
��* 2
)
��2 3
;
��3 4
f
�� 
.
�� 
_n
�� 
=
�� 
maxFaceCount
�� #
;
��# $
++
�� 
maxFaceCount
�� 
;
�� 
}
�� 

�� 
=
�� 
maxFaceCount
�� (
;
��( )
if
�� 
(
�� 
elementType
�� 
==
�� 
ElementType
�� *
.
��* +
ConnectedPolygons
��+ <
)
��< =
maxFaceCount
�� 
*=
�� 
$num
��  !
;
��! "
	_elements
�� 
=
�� 
new
�� 
int
�� 
[
��  
maxFaceCount
��  ,
*
��- .
polySize
��/ 7
]
��7 8
;
��8 9
_vertexCount
�� 
=
�� 
maxVertexCount
�� )
;
��) *
	_vertices
�� 
=
�� 
new
�� 

�� )
[
��) *
_vertexCount
��* 6
]
��6 7
;
��7 8
for
�� 
(
�� 
v
�� 
=
�� 
_mesh
�� 
.
�� 
_vHead
�� !
.
��! "
_next
��" '
;
��' (
v
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_vHead
��4 :
;
��: ;
v
��< =
=
��> ?
v
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
if
�� 
(
�� 
v
�� 
.
�� 
_n
�� 
!=
�� 
	MeshUtils
�� %
.
��% &
Undef
��& +
)
��+ ,
{
�� 
	_vertices
�� 
[
�� 
v
�� 
.
��  
_n
��  "
]
��" #
.
��# $
Position
��$ ,
=
��- .
v
��/ 0
.
��0 1
_coords
��1 8
;
��8 9
	_vertices
�� 
[
�� 
v
�� 
.
��  
_n
��  "
]
��" #
.
��# $
Data
��$ (
=
��) *
v
��+ ,
.
��, -
_data
��- 2
;
��2 3
}
�� 
}
�� 
int
�� 
elementIndex
�� 
=
�� 
$num
��  
;
��  !
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
f
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
if
�� 
(
�� 
!
�� 
f
�� 
.
�� 
_inside
�� 
)
�� 
continue
��  (
;
��( )
if
�� 
(
�� 
NoEmptyPolygons
�� #
)
��# $
{
�� 
var
�� 
area
�� 
=
�� 
	MeshUtils
�� (
.
��( )
FaceArea
��) 1
(
��1 2
f
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
��  
(
��  !
area
��! %
)
��% &
<
��' (
Real
��) -
.
��- .
Epsilon
��. 5
)
��5 6
{
�� 
continue
��  
;
��  !
}
�� 
}
�� 
edge
�� 
=
�� 
f
�� 
.
�� 
_anEdge
��  
;
��  !
	faceVerts
�� 
=
�� 
$num
�� 
;
�� 
do
�� 
{
�� 
v
�� 
=
�� 
edge
�� 
.
�� 
_Org
�� !
;
��! "
	_elements
�� 
[
�� 
elementIndex
�� *
++
��* ,
]
��, -
=
��. /
v
��0 1
.
��1 2
_n
��2 4
;
��4 5
	faceVerts
�� 
++
�� 
;
��  
edge
�� 
=
�� 
edge
�� 
.
��  
_Lnext
��  &
;
��& '
}
�� 
while
�� 
(
�� 
edge
�� 
!=
��  
f
��! "
.
��" #
_anEdge
��# *
)
��* +
;
��+ ,
for
�� 
(
�� 
i
�� 
=
�� 
	faceVerts
�� "
;
��" #
i
��$ %
<
��& '
polySize
��( 0
;
��0 1
++
��2 4
i
��4 5
)
��5 6
{
�� 
	_elements
�� 
[
�� 
elementIndex
�� *
++
��* ,
]
��, -
=
��. /
	MeshUtils
��0 9
.
��9 :
Undef
��: ?
;
��? @
}
�� 
if
�� 
(
�� 
elementType
�� 
==
��  "
ElementType
��# .
.
��. /
ConnectedPolygons
��/ @
)
��@ A
{
�� 
edge
�� 
=
�� 
f
�� 
.
�� 
_anEdge
�� $
;
��$ %
do
�� 
{
�� 
	_elements
�� !
[
��! "
elementIndex
��" .
++
��. 0
]
��0 1
=
��2 3
GetNeighbourFace
��4 D
(
��D E
edge
��E I
)
��I J
;
��J K
edge
�� 
=
�� 
edge
�� #
.
��# $
_Lnext
��$ *
;
��* +
}
�� 
while
�� 
(
�� 
edge
�� !
!=
��" $
f
��% &
.
��& '
_anEdge
��' .
)
��. /
;
��/ 0
for
�� 
(
�� 
i
�� 
=
�� 
	faceVerts
�� &
;
��& '
i
��( )
<
��* +
polySize
��, 4
;
��4 5
++
��6 8
i
��8 9
)
��9 :
{
�� 
	_elements
�� !
[
��! "
elementIndex
��" .
++
��. 0
]
��0 1
=
��2 3
	MeshUtils
��4 =
.
��= >
Undef
��> C
;
��C D
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
OutputContours
�� #
(
��# $
)
��$ %
{
�� 	
	MeshUtils
�� 
.
�� 
Face
�� 
f
�� 
;
�� 
	MeshUtils
�� 
.
�� 
Edge
�� 
edge
�� 
,
��  
start
��! &
;
��& '
int
�� 
	startVert
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
	vertCount
�� 
=
�� 
$num
�� 
;
�� 
_vertexCount
�� 
=
�� 
$num
�� 
;
�� 

�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
f
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
if
�� 
(
�� 
!
�� 
f
�� 
.
�� 
_inside
�� 
)
�� 
continue
��  (
;
��( )
start
�� 
=
�� 
edge
�� 
=
�� 
f
��  
.
��  !
_anEdge
��! (
;
��( )
do
�� 
{
�� 
++
�� 
_vertexCount
�� "
;
��" #
edge
�� 
=
�� 
edge
�� 
.
��  
_Lnext
��  &
;
��& '
}
�� 
while
�� 
(
�� 
edge
�� 
!=
�� 
start
�� $
)
��$ %
;
��% &
++
�� 

�� 
;
��  
}
�� 
	_elements
�� 
=
�� 
new
�� 
int
�� 
[
��  

��  -
*
��. /
$num
��0 1
]
��1 2
;
��2 3
	_vertices
�� 
=
�� 
new
�� 

�� )
[
��) *
_vertexCount
��* 6
]
��6 7
;
��7 8
int
�� 
	vertIndex
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
elementIndex
�� 
=
�� 
$num
��  
;
��  !
	startVert
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
f
�� 
=
�� 
_mesh
�� 
.
�� 
_fHead
�� !
.
��! "
_next
��" '
;
��' (
f
��) *
!=
��+ -
_mesh
��. 3
.
��3 4
_fHead
��4 :
;
��: ;
f
��< =
=
��> ?
f
��@ A
.
��A B
_next
��B G
)
��G H
{
�� 
if
�� 
(
�� 
!
�� 
f
�� 
.
�� 
_inside
�� 
)
�� 
continue
��  (
;
��( )
	vertCount
�� 
=
�� 
$num
�� 
;
�� 
start
�� 
=
�� 
edge
�� 
=
�� 
f
��  
.
��  !
_anEdge
��! (
;
��( )
do
�� 
{
�� 
	_vertices
�� 
[
�� 
	vertIndex
�� '
]
��' (
.
��( )
Position
��) 1
=
��2 3
edge
��4 8
.
��8 9
_Org
��9 =
.
��= >
_coords
��> E
;
��E F
	_vertices
�� 
[
�� 
	vertIndex
�� '
]
��' (
.
��( )
Data
��) -
=
��. /
edge
��0 4
.
��4 5
_Org
��5 9
.
��9 :
_data
��: ?
;
��? @
++
�� 
	vertIndex
�� 
;
��  
++
�� 
	vertCount
�� 
;
��  
edge
�� 
=
�� 
edge
�� 
.
��  
_Lnext
��  &
;
��& '
}
�� 
while
�� 
(
�� 
edge
�� 
!=
��  
start
��! &
)
��& '
;
��' (
	_elements
�� 
[
�� 
elementIndex
�� &
++
��& (
]
��( )
=
��* +
	startVert
��, 5
;
��5 6
	_elements
�� 
[
�� 
elementIndex
�� &
++
��& (
]
��( )
=
��* +
	vertCount
��, 5
;
��5 6
	startVert
�� 
+=
�� 
	vertCount
�� &
;
��& '
}
�� 
}
�� 	
private
�� 
Real
�� 

SignedArea
�� 
(
��  

��  -
[
��- .
]
��. /
vertices
��0 8
)
��8 9
{
�� 	
Real
�� 
area
�� 
=
�� 
$num
�� 
;
�� 
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
�� 
vertices
��  (
.
��( )
Length
��) /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
var
�� 
v0
�� 
=
�� 
vertices
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
var
�� 
v1
�� 
=
�� 
vertices
�� !
[
��! "
(
��" #
i
��# $
+
��% &
$num
��' (
)
��( )
%
��* +
vertices
��, 4
.
��4 5
Length
��5 ;
]
��; <
;
��< =
area
�� 
+=
�� 
v0
�� 
.
�� 
Position
�� #
.
��# $
X
��$ %
*
��& '
v1
��( *
.
��* +
Position
��+ 3
.
��3 4
Y
��4 5
;
��5 6
area
�� 
-=
�� 
v0
�� 
.
�� 
Position
�� #
.
��# $
Y
��$ %
*
��& '
v1
��( *
.
��* +
Position
��+ 3
.
��3 4
X
��4 5
;
��5 6
}
�� 
return
�� 
$num
�� 
*
�� 
area
�� 
;
�� 
}
�� 	
public
�� 
void
�� 

AddContour
�� 
(
�� 

�� ,
[
��, -
]
��- .
vertices
��/ 7
)
��7 8
{
�� 	

AddContour
�� 
(
�� 
vertices
�� 
,
��   
ContourOrientation
��! 3
.
��3 4
Original
��4 <
)
��< =
;
��= >
}
�� 	
public
�� 
void
�� 

AddContour
�� 
(
�� 

�� ,
[
��, -
]
��- .
vertices
��/ 7
,
��7 8 
ContourOrientation
��9 K
forceOrientation
��L \
)
��\ ]
{
�� 	
if
�� 
(
�� 
_mesh
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_mesh
�� 
=
�� 
new
�� 
Mesh
��  
(
��  !
)
��! "
;
��" #
}
�� 
bool
�� 
reverse
�� 
=
�� 
false
��  
;
��  !
if
�� 
(
�� 
forceOrientation
��  
!=
��! # 
ContourOrientation
��$ 6
.
��6 7
Original
��7 ?
)
��? @
{
�� 
var
�� 
area
�� 
=
�� 

SignedArea
�� %
(
��% &
vertices
��& .
)
��. /
;
��/ 0
reverse
�� 
=
�� 
(
�� 
forceOrientation
�� +
==
��, . 
ContourOrientation
��/ A
.
��A B
	Clockwise
��B K
&&
��L N
area
��O S
<
��T U
$num
��V Z
)
��Z [
||
��\ ^
(
��_ `
forceOrientation
��` p
==
��q s!
ContourOrientation��t �
.��� � 
CounterClockwise��� �
&&��� �
area��� �
>��� �
$num��� �
)��� �
;��� �
}
�� 
	MeshUtils
�� 
.
�� 
Edge
�� 
e
�� 
=
�� 
null
�� #
;
��# $
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
vertices
��  (
.
��( )
Length
��) /
;
��/ 0
++
��1 3
i
��3 4
)
��4 5
{
�� 
if
�� 
(
�� 
e
�� 
==
�� 
null
�� 
)
�� 
{
�� 
e
�� 
=
�� 
_mesh
�� 
.
�� 
MakeEdge
�� &
(
��& '
)
��' (
;
��( )
_mesh
�� 
.
�� 
Splice
��  
(
��  !
e
��! "
,
��" #
e
��$ %
.
��% &
_Sym
��& *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
_mesh
�� 
.
�� 
	SplitEdge
�� #
(
��# $
e
��$ %
)
��% &
;
��& '
e
�� 
=
�� 
e
�� 
.
�� 
_Lnext
��  
;
��  !
}
�� 
int
�� 
index
�� 
=
�� 
reverse
�� #
?
��$ %
vertices
��& .
.
��. /
Length
��/ 5
-
��6 7
$num
��8 9
-
��: ;
i
��< =
:
��> ?
i
��@ A
;
��A B
e
�� 
.
�� 
_Org
�� 
.
�� 
_coords
�� 
=
��  
vertices
��! )
[
��) *
index
��* /
]
��/ 0
.
��0 1
Position
��1 9
;
��9 :
e
�� 
.
�� 
_Org
�� 
.
�� 
_data
�� 
=
�� 
vertices
�� '
[
��' (
index
��( -
]
��- .
.
��. /
Data
��/ 3
;
��3 4
e
�� 
.
�� 
_winding
�� 
=
�� 
$num
�� 
;
�� 
e
�� 
.
�� 
_Sym
�� 
.
�� 
_winding
�� 
=
��  !
-
��" #
$num
��# $
;
��$ %
}
�� 
}
�� 	
public
�� 
void
�� 

Tessellate
�� 
(
�� 
WindingRule
�� *
windingRule
��+ 6
,
��6 7
ElementType
��8 C
elementType
��D O
,
��O P
int
��Q T
polySize
��U ]
)
��] ^
{
�� 	

Tessellate
�� 
(
�� 
windingRule
�� "
,
��" #
elementType
��$ /
,
��/ 0
polySize
��1 9
,
��9 :
null
��; ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 

Tessellate
�� 
(
�� 
WindingRule
�� *
windingRule
��+ 6
,
��6 7
ElementType
��8 C
elementType
��D O
,
��O P
int
��Q T
polySize
��U ]
,
��] ^
CombineCallback
��_ n
combineCallback
��o ~
)
��~ 
{
�� 	
_normal
�� 
=
�� 
Vec3
�� 
.
�� 
Zero
�� 
;
��  
	_vertices
�� 
=
�� 
null
�� 
;
�� 
	_elements
�� 
=
�� 
null
�� 
;
�� 
_windingRule
�� 
=
�� 
windingRule
�� &
;
��& '
_combineCallback
�� 
=
�� 
combineCallback
�� .
;
��. /
if
�� 
(
�� 
_mesh
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
ProjectPolygon
�� 
(
�� 
)
�� 
;
�� 
ComputeInterior
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
elementType
�� 
==
�� 
ElementType
�� *
.
��* +
BoundaryContours
��+ ;
)
��; <
{
�� 
SetWindingNumber
��  
(
��  !
$num
��! "
,
��" #
true
��$ (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
TessellateInterior
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
_mesh
�� 
.
�� 
Check
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
elementType
�� 
==
�� 
ElementType
�� *
.
��* +
BoundaryContours
��+ ;
)
��; <
{
�� 
OutputContours
�� 
(
�� 
)
��  
;
��  !
}
�� 
else
�� 
{
�� 
OutputPolymesh
�� 
(
�� 
elementType
�� *
,
��* +
polySize
��, 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 

UsePooling
�� 
)
�� 
{
�� 
_mesh
�� 
.
�� 
Free
�� 
(
�� 
)
�� 
;
�� 
}
�� 
_mesh
�� 
=
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\UniversalAdditionalCameraData.cs
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
	Rendering

 
.

  
LWRP

  $
{ 
[ 
Obsolete 
(
$str t
,t u
truev z
)z {
]{ |
public

class
LWRPAdditionalCameraData
{ 
} 
} 
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9 
CameraOverrideOption: N
{ 
Off 
, 
On 

,
 
UsePipelineSettings 
, 
} 
["" 
	MovedFrom"" 
("" 
$str"" +
)""+ ,
]"", -
public"". 4
enum""5 9"
RendererOverrideOption"": P
{## 
Custom$$ 
,$$ 
UsePipelineSettings%% 
,%% 
}&& 
public.. 

enum.. 
AntialiasingMode..  
{// 
None00 
,00 
FastApproximateAntialiasing11 #
,11# $-
!SubpixelMorphologicalAntiAliasing22 )
,22) *
}44 
public;; 

enum;; 
CameraRenderType;;  
{<< 
Base== 
,== 
Overlay>> 
,>> 
}?? 
publicDD 

enumDD 
AntialiasingQualityDD #
{EE 
LowFF 
,FF 
MediumGG 
,GG 
HighHH 
}II 
publicNN 

staticNN 
classNN 
CameraExtensionsNN (
{OO 
publicWW 
staticWW )
UniversalAdditionalCameraDataWW 3,
 GetUniversalAdditionalCameraDataWW4 T
(WWT U
thisWWU Y
CameraWWZ `
cameraWWa g
)WWg h
{XX 	
varYY 

gameObjectYY 
=YY 
cameraYY #
.YY# $

gameObjectYY$ .
;YY. /
boolZZ 
componentExistsZZ  
=ZZ! "

gameObjectZZ# -
.ZZ- .
TryGetComponentZZ. =
<ZZ= >)
UniversalAdditionalCameraDataZZ> [
>ZZ[ \
(ZZ\ ]
outZZ] `
varZZa d

cameraDataZZe o
)ZZo p
;ZZp q
if[[ 
([[ 
![[ 
componentExists[[  
)[[  !

cameraData\\ 
=\\ 

gameObject\\ '
.\\' (
AddComponent\\( 4
<\\4 5)
UniversalAdditionalCameraData\\5 R
>\\R S
(\\S T
)\\T U
;\\U V
return^^ 

cameraData^^ 
;^^ 
}__ 	
}`` 
staticbb 

classbb 
CameraTypeUtilitybb "
{cc 
staticdd 
stringdd 
[dd 
]dd 
s_CameraTypeNamesdd )
=dd* +
Enumdd, 0
.dd0 1
GetNamesdd1 9
(dd9 :
typeofdd: @
(dd@ A
CameraRenderTypeddA Q
)ddQ R
)ddR S
.ddS T
ToArrayddT [
(dd[ \
)dd\ ]
;dd] ^
publicff 
staticff 
stringff 
GetNameff $
(ff$ %
thisff% )
CameraRenderTypeff* :
typeff; ?
)ff? @
{gg 	
inthh 
typeInthh 
=hh 
(hh 
inthh 
)hh 
typehh #
;hh# $
ifii 
(ii 
typeIntii 
<ii 
$numii 
||ii 
typeIntii &
>=ii' )
s_CameraTypeNamesii* ;
.ii; <
Lengthii< B
)iiB C
typeIntjj 
=jj 
(jj 
intjj 
)jj 
CameraRenderTypejj /
.jj/ 0
Basejj0 4
;jj4 5
returnkk 
s_CameraTypeNameskk $
[kk$ %
typeIntkk% ,
]kk, -
;kk- .
}ll 	
}mm 
[oo %
DisallowMultipleComponentoo 
]oo 
[pp 
RequireComponentpp 
(pp 
typeofpp 
(pp 
Camerapp #
)pp# $
)pp$ %
]pp% &
[qq )
ImageEffectAllowedInSceneViewqq "
]qq" #
[rr 
	MovedFromrr 
(rr 
$strrr +
)rr+ ,
]rr, -
publicrr. 4
classrr5 :)
UniversalAdditionalCameraDatarr; X
:rrY Z

,rrh i+
ISerializationCallbackReceiver	rrj �
{ss 
[tt 	 
FormerlySerializedAstt	 
(tt 
$strtt -
)tt- .
,tt. /
SerializeFieldtt0 >
]tt> ?
booluu 
m_RenderShadowsuu
=uu 
trueuu #
;uu# $
[ww 	
SerializeFieldww	 
]ww  
CameraOverrideOptionxx (
m_RequiresDepthTextureOptionxx 9
=xx: ; 
CameraOverrideOptionxx< P
.xxP Q
UsePipelineSettingsxxQ d
;xxd e
[zz 	
SerializeFieldzz	 
]zz  
CameraOverrideOption{{ )
m_RequiresOpaqueTextureOption{{ :
={{; < 
CameraOverrideOption{{= Q
.{{Q R
UsePipelineSettings{{R e
;{{e f
[}} 	
SerializeField}}	 
]}} 
CameraRenderType}} )
m_CameraType}}* 6
=}}7 8
CameraRenderType}}9 I
.}}I J
Base}}J N
;}}N O
[~~ 
SerializeField~~ 
]~~ 
List~~ 
<~~ 
Camera~~ 
>~~ 
	m_Cameras~~  )
=~~* +
new~~, /
List~~0 4
<~~4 5
Camera~~5 ;
>~~; <
(~~< =
)~~= >
;~~> ?
[ 
SerializeField 
] 
int 
m_RendererIndex &
=' (
-) *
$num* +
;+ ,
[
�� 	
SerializeField
��	 
]
�� 
	LayerMask
�� "
m_VolumeLayerMask
��# 4
=
��5 6
$num
��7 8
;
��8 9
[
�� 	
SerializeField
��	 
]
�� 
	Transform
�� "
m_VolumeTrigger
��# 2
=
��3 4
null
��5 9
;
��9 :
[
�� 	
SerializeField
��	 
]
�� 
bool
�� $
m_RenderPostProcessing
�� 4
=
��5 6
false
��7 <
;
��< =
[
�� 	
SerializeField
��	 
]
�� 
AntialiasingMode
�� )
m_Antialiasing
��* 8
=
��9 :
AntialiasingMode
��; K
.
��K L
None
��L P
;
��P Q
[
�� 	
SerializeField
��	 
]
�� !
AntialiasingQuality
�� ,#
m_AntialiasingQuality
��- B
=
��C D!
AntialiasingQuality
��E X
.
��X Y
High
��Y ]
;
��] ^
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
	m_StopNaN
�� '
=
��( )
false
��* /
;
��/ 0
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_Dithering
�� )
=
��* +
false
��, 1
;
��1 2
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_ClearDepth
�� *
=
��+ ,
true
��- 1
;
��1 2
[
�� 	
SerializeField
��	 
]
�� 
bool
��  
m_AllowXRRendering
�� 0
=
��1 2
true
��3 7
;
��7 8
[
�� 	"
FormerlySerializedAs
��	 
(
�� 
$str
�� 4
)
��4 5
,
��5 6
SerializeField
��7 E
]
��E F
bool
�� $
m_RequiresDepthTexture
��
=
��$ %
false
��& +
;
��+ ,
[
�� 	"
FormerlySerializedAs
��	 
(
�� 
$str
�� 4
)
��4 5
,
��5 6
SerializeField
��7 E
]
��E F
bool
�� $
m_RequiresColorTexture
��
=
��$ %
false
��& +
;
��+ ,
[
�� 	
HideInInspector
��	 
]
�� 
[
�� 
SerializeField
�� )
]
��) *
float
��+ 0
	m_Version
��1 :
=
��; <
$num
��= >
;
��> ?
public
�� 
float
�� 
version
�� 
=>
�� 
	m_Version
��  )
;
��) *
static
�� +
UniversalAdditionalCameraData
�� ,+
s_DefaultAdditionalCameraData
��- J
=
��K L
null
��M Q
;
��Q R
internal
�� 
static
�� +
UniversalAdditionalCameraData
�� 5)
defaultAdditionalCameraData
��6 Q
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� +
s_DefaultAdditionalCameraData
�� 1
==
��2 4
null
��5 9
)
��9 :+
s_DefaultAdditionalCameraData
�� 1
=
��2 3
new
��4 7+
UniversalAdditionalCameraData
��8 U
(
��U V
)
��V W
;
��W X
return
�� +
s_DefaultAdditionalCameraData
�� 4
;
��4 5
}
�� 
}
�� 	
public
�� 
bool
�� 

�� !
{
�� 	
get
�� 
=>
�� 
m_RenderShadows
�� "
;
��" #
set
�� 
=>
�� 
m_RenderShadows
�� "
=
��# $
value
��% *
;
��* +
}
�� 	
public
�� "
CameraOverrideOption
�� #!
requiresDepthOption
��$ 7
{
�� 	
get
�� 
=>
�� *
m_RequiresDepthTextureOption
�� /
;
��/ 0
set
�� 
=>
�� *
m_RequiresDepthTextureOption
�� /
=
��0 1
value
��2 7
;
��7 8
}
�� 	
public
�� "
CameraOverrideOption
�� #!
requiresColorOption
��$ 7
{
�� 	
get
�� 
=>
�� +
m_RequiresOpaqueTextureOption
�� 0
;
��0 1
set
�� 
=>
�� +
m_RequiresOpaqueTextureOption
�� 0
=
��1 2
value
��3 8
;
��8 9
}
�� 	
public
�� 
CameraRenderType
�� 

renderType
��  *
{
�� 	
get
�� 
=>
�� 
m_CameraType
�� 
;
��  
set
�� 
=>
�� 
m_CameraType
�� 
=
��  !
value
��" '
;
��' (
}
�� 	
public
�� 
List
�� 
<
�� 
Camera
�� 
>
�� 
cameraStack
�� '
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 

renderType
�� 
!=
�� !
CameraRenderType
��" 2
.
��2 3
Base
��3 7
)
��7 8
{
�� 
var
�� 
camera
�� 
=
��  

gameObject
��! +
.
��+ ,
GetComponent
��, 8
<
��8 9
Camera
��9 ?
>
��? @
(
��@ A
)
��A B
;
��B C
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
string
��% +
.
��+ ,
Format
��, 2
(
��2 3
$str��3 �
,��� �
camera��� �
.��� �
name��� �
,��� �

renderType��� �
)��� �
)��� �
;��� �
return
�� 
null
�� 
;
��  
}
�� 
if
�� 
(
��  
scriptableRenderer
�� &
.
��& '(
supportedRenderingFeatures
��' A
.
��A B
cameraStacking
��B P
==
��Q S
false
��T Y
)
��Y Z
{
�� 
var
�� 
camera
�� 
=
��  

gameObject
��! +
.
��+ ,
GetComponent
��, 8
<
��8 9
Camera
��9 ?
>
��? @
(
��@ A
)
��A B
;
��B C
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
string
��% +
.
��+ ,
Format
��, 2
(
��2 3
$str��3 �
,��� �
camera��� �
.��� �
name��� �
)��� �
)��� �
;��� �
return
�� 
null
�� 
;
��  
}
�� 
return
�� 
	m_Cameras
��  
;
��  !
}
�� 
}
�� 	
internal
�� 
void
�� 
UpdateCameraStack
�� '
(
��' (
)
��( )
{
�� 	
Undo
�� 
.
�� 
RecordObject
�� 
(
�� 
this
�� "
,
��" #
$str
��$ 9
)
��9 :
;
��: ;
int
�� 
prev
�� 
=
�� 
	m_Cameras
��  
.
��  !
Count
��! &
;
��& '
	m_Cameras
�� 
.
�� 
	RemoveAll
�� 
(
��  
cam
��  #
=>
��$ &
cam
��' *
==
��+ -
null
��. 2
)
��2 3
;
��3 4
int
�� 
curr
�� 
=
�� 
	m_Cameras
��  
.
��  !
Count
��! &
;
��& '
int
�� 
removedCamsCount
��  
=
��! "
prev
��# '
-
��( )
curr
��* .
;
��. /
if
�� 
(
�� 
removedCamsCount
��  
!=
��! #
$num
��$ %
)
��% &
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
name
��! %
+
��& '
$str
��( ,
+
��- .
removedCamsCount
��/ ?
+
��@ A
$str
��B S
+
��T U
(
��V W
removedCamsCount
��W g
>
��h i
$num
��j k
?
��l m
$str
��n q
:
��r s
$str
��t v
)
��v w
+
��x y
$str��z �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
bool
�� 

clearDepth
�� 
{
�� 	
get
�� 
=>
�� 
m_ClearDepth
�� 
;
��  
}
�� 	
public
�� 
bool
�� "
requiresDepthTexture
�� (
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� *
m_RequiresDepthTextureOption
�� 0
==
��1 3"
CameraOverrideOption
��4 H
.
��H I!
UsePipelineSettings
��I \
)
��\ ]
{
�� 
return
�� %
UniversalRenderPipeline
�� 2
.
��2 3
asset
��3 8
.
��8 9(
supportsCameraDepthTexture
��9 S
;
��S T
}
�� 
else
�� 
{
�� 
return
�� *
m_RequiresDepthTextureOption
�� 7
==
��8 :"
CameraOverrideOption
��; O
.
��O P
On
��P R
;
��R S
}
�� 
}
�� 
set
�� 
{
�� *
m_RequiresDepthTextureOption
�� .
=
��/ 0
(
��1 2
value
��2 7
)
��7 8
?
��9 :"
CameraOverrideOption
��; O
.
��O P
On
��P R
:
��S T"
CameraOverrideOption
��U i
.
��i j
Off
��j m
;
��m n
}
��o p
}
�� 	
public
�� 
bool
�� "
requiresColorTexture
�� (
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� +
m_RequiresOpaqueTextureOption
�� 1
==
��2 4"
CameraOverrideOption
��5 I
.
��I J!
UsePipelineSettings
��J ]
)
��] ^
{
�� 
return
�� %
UniversalRenderPipeline
�� 2
.
��2 3
asset
��3 8
.
��8 9)
supportsCameraOpaqueTexture
��9 T
;
��T U
}
�� 
else
�� 
{
�� 
return
�� +
m_RequiresOpaqueTextureOption
�� 8
==
��9 ;"
CameraOverrideOption
��< P
.
��P Q
On
��Q S
;
��S T
}
�� 
}
�� 
set
�� 
{
�� +
m_RequiresOpaqueTextureOption
�� /
=
��0 1
(
��2 3
value
��3 8
)
��8 9
?
��: ;"
CameraOverrideOption
��< P
.
��P Q
On
��Q S
:
��T U"
CameraOverrideOption
��V j
.
��j k
Off
��k n
;
��n o
}
��p q
}
�� 	
public
��  
ScriptableRenderer
�� ! 
scriptableRenderer
��" 4
{
�� 	
get
�� 
=>
�� %
UniversalRenderPipeline
�� *
.
��* +
asset
��+ 0
?
��0 1
.
��1 2
GetRenderer
��2 =
(
��= >
m_RendererIndex
��> M
)
��M N
;
��N O
}
�� 	
public
�� 
void
�� 
SetRenderer
�� 
(
��  
int
��  #
index
��$ )
)
��) *
{
�� 	
m_RendererIndex
�� 
=
�� 
index
�� #
;
��# $
}
�� 	
public
�� 
	LayerMask
�� 
volumeLayerMask
�� (
{
�� 	
get
�� 
=>
�� 
m_VolumeLayerMask
�� $
;
��$ %
set
�� 
=>
�� 
m_VolumeLayerMask
�� $
=
��% &
value
��' ,
;
��, -
}
�� 	
public
�� 
	Transform
�� 

�� &
{
�� 	
get
�� 
=>
�� 
m_VolumeTrigger
�� "
;
��" #
set
�� 
=>
�� 
m_VolumeTrigger
�� "
=
��# $
value
��% *
;
��* +
}
�� 	
public
�� 
bool
�� "
renderPostProcessing
�� (
{
�� 	
get
�� 
=>
�� $
m_RenderPostProcessing
�� )
;
��) *
set
�� 
=>
�� $
m_RenderPostProcessing
�� )
=
��* +
value
��, 1
;
��1 2
}
�� 	
public
�� 
AntialiasingMode
�� 
antialiasing
��  ,
{
�� 	
get
�� 
=>
�� 
m_Antialiasing
�� !
;
��! "
set
�� 
=>
�� 
m_Antialiasing
�� !
=
��" #
value
��$ )
;
��) *
}
�� 	
public
�� !
AntialiasingQuality
�� "!
antialiasingQuality
��# 6
{
�� 	
get
�� 
=>
�� #
m_AntialiasingQuality
�� (
;
��( )
set
�� 
=>
�� #
m_AntialiasingQuality
�� (
=
��) *
value
��+ 0
;
��0 1
}
�� 	
public
�� 
bool
�� 
stopNaN
�� 
{
�� 	
get
�� 
=>
�� 
	m_StopNaN
�� 
;
�� 
set
�� 
=>
�� 
	m_StopNaN
�� 
=
�� 
value
�� $
;
��$ %
}
�� 	
public
�� 
bool
�� 
	dithering
�� 
{
�� 	
get
�� 
=>
�� 
m_Dithering
�� 
;
�� 
set
�� 
=>
�� 
m_Dithering
�� 
=
��  
value
��! &
;
��& '
}
�� 	
public
�� 
bool
�� 
allowXRRendering
�� $
{
�� 	
get
�� 
=>
��  
m_AllowXRRendering
�� %
;
��% &
set
�� 
=>
��  
m_AllowXRRendering
�� %
=
��& '
value
��( -
;
��- .
}
�� 	
public
�� 
void
�� 
OnBeforeSerialize
�� %
(
��% &
)
��& '
{
�� 	
}
�� 	
public
�� 
void
��  
OnAfterDeserialize
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
version
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 
m_RequiresDepthTextureOption
�� ,
=
��- .
(
��/ 0$
m_RequiresDepthTexture
��0 F
)
��F G
?
��H I"
CameraOverrideOption
��J ^
.
��^ _
On
��_ a
:
��b c"
CameraOverrideOption
��d x
.
��x y
Off
��y |
;
��| }+
m_RequiresOpaqueTextureOption
�� -
=
��. /
(
��0 1$
m_RequiresColorTexture
��1 G
)
��G H
?
��I J"
CameraOverrideOption
��K _
.
��_ `
On
��` b
:
��c d"
CameraOverrideOption
��e y
.
��y z
Off
��z }
;
��} ~
}
�� 
}
�� 	
public
�� 
void
�� 
OnDrawGizmos
��  
(
��  !
)
��! "
{
�� 	
string
�� 
path
�� 
=
�� 
$str
�� X
;
��X Y
string
�� 
	gizmoName
�� 
=
�� 
$str
�� !
;
��! "
Color
�� 
tint
�� 
=
�� 
Color
�� 
.
�� 
white
�� $
;
��$ %
if
�� 
(
�� 
m_CameraType
�� 
==
�� 
CameraRenderType
��  0
.
��0 1
Base
��1 5
)
��5 6
{
�� 
	gizmoName
�� 
=
�� 
$"
�� 
{
�� 
path
�� #
}
��# $
Camera_Base.png
��$ 3
"
��3 4
;
��4 5
}
�� 
else
�� 
if
�� 
(
�� 
m_CameraType
�� !
==
��" $
CameraRenderType
��% 5
.
��5 6
Overlay
��6 =
)
��= >
{
�� 
	gizmoName
�� 
=
�� 
$"
�� 
{
�� 
path
�� #
}
��# $ 
Camera_Overlay.png
��$ 6
"
��6 7
;
��7 8
}
�� 
if
�� 
(
�� 
	Selection
�� 
.
�� 
activeObject
�� &
==
��' )

gameObject
��* 4
)
��4 5
{
�� 
tint
�� 
=
�� 
	SceneView
��  
.
��  !"
selectedOutlineColor
��! 5
;
��5 6
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 

�� %
(
��% &
	gizmoName
��& /
)
��/ 0
)
��0 1
{
�� 
Gizmos
�� 
.
�� 
DrawIcon
�� 
(
��  
	transform
��  )
.
��) *
position
��* 2
,
��2 3
	gizmoName
��4 =
,
��= >
true
��? C
,
��C D
tint
��E I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� "
renderPostProcessing
�� $
)
��$ %
{
�� 
Gizmos
�� 
.
�� 
DrawIcon
�� 
(
��  
	transform
��  )
.
��) *
position
��* 2
,
��2 3
$"
��4 6
{
��6 7
path
��7 ;
}
��; <'
Camera_PostProcessing.png
��< U
"
��U V
,
��V W
true
��X \
,
��\ ]
tint
��^ b
)
��b c
;
��c d
}
�� 
}
�� 	
}
�� 
}�� �+
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\External\LibTessDotNet\Dict.cs
	namespace$$ 	
UnityEngine$$
 
.$$ 
Experimental$$ "
.$$" #
	Rendering$$# ,
.$$, -
	Universal$$- 6
{%% 
	namespace'' 	

 
{(( 
internal)) 
class))
Dict)) 
<)) 
TValue)) 
>)) 
where))  %
TValue))& ,
:))- .
class))/ 4
{** 
public++ 
class++ 
Node++ 
{,, 	
internal-- 
TValue-- 
_key--  
;--  !
internal.. 
Node.. 
_prev.. 
,..  
_next..! &
;..& '
public00 
TValue00 
Key00 
{00 
get00  #
{00$ %
return00& ,
_key00- 1
;001 2
}003 4
}005 6
public11 
Node11 
Prev11 
{11 
get11 "
{11# $
return11% +
_prev11, 1
;111 2
}113 4
}115 6
public22 
Node22 
Next22 
{22 
get22 "
{22# $
return22% +
_next22, 1
;221 2
}223 4
}225 6
}33 	
public55 
delegate55 
bool55 
LessOrEqual55 (
(55( )
TValue55) /
lhs550 3
,553 4
TValue555 ;
rhs55< ?
)55? @
;55@ A
private77 
LessOrEqual77 
_leq77  
;77  !
Node88 
_head88
;88 
public:: 
Dict:: 
(:: 
LessOrEqual:: 
leq::  #
)::# $
{;; 	
_leq<< 
=<< 
leq<< 
;<< 
_head>> 
=>> 
new>> 
Node>> 
{>> 
_key>> #
=>>$ %
null>>& *
}>>+ ,
;>>, -
_head?? 
.?? 
_prev?? 
=?? 
_head?? 
;??  
_head@@ 
.@@ 
_next@@ 
=@@ 
_head@@ 
;@@  
}AA 	
publicCC 
NodeCC 
InsertCC 
(CC 
TValueCC !
keyCC" %
)CC% &
{DD 	
returnEE 
InsertBeforeEE 
(EE  
_headEE  %
,EE% &
keyEE' *
)EE* +
;EE+ ,
}FF 	
publicHH 
NodeHH 
InsertBeforeHH  
(HH  !
NodeHH! %
nodeHH& *
,HH* +
TValueHH, 2
keyHH3 6
)HH6 7
{II 	
doJJ 
{JJ 
nodeKK 
=KK 
nodeKK 
.KK 
_prevKK !
;KK! "
}LL 
whileLL 
(LL 
nodeLL 
.LL 
_keyLL 
!=LL !
nullLL" &
&&LL' )
!LL* +
_leqLL+ /
(LL/ 0
nodeLL0 4
.LL4 5
_keyLL5 9
,LL9 :
keyLL; >
)LL> ?
)LL? @
;LL@ A
varNN 
newNodeNN 
=NN 
newNN 
NodeNN "
{NN# $
_keyNN% )
=NN* +
keyNN, /
}NN0 1
;NN1 2
newNodeOO 
.OO 
_nextOO 
=OO 
nodeOO  
.OO  !
_nextOO! &
;OO& '
nodePP 
.PP 
_nextPP 
.PP 
_prevPP 
=PP 
newNodePP &
;PP& '
newNodeQQ 
.QQ 
_prevQQ 
=QQ 
nodeQQ  
;QQ  !
nodeRR 
.RR 
_nextRR 
=RR 
newNodeRR  
;RR  !
returnTT 
newNodeTT 
;TT 
}UU 	
publicWW 
NodeWW 
FindWW 
(WW 
TValueWW 
keyWW  #
)WW# $
{XX 	
varYY 
nodeYY 
=YY 
_headYY 
;YY 
doZZ 
{ZZ 
node[[ 
=[[ 
node[[ 
.[[ 
_next[[ !
;[[! "
}\\ 
while\\ 
(\\ 
node\\ 
.\\ 
_key\\ 
!=\\ !
null\\" &
&&\\' )
!\\* +
_leq\\+ /
(\\/ 0
key\\0 3
,\\3 4
node\\5 9
.\\9 :
_key\\: >
)\\> ?
)\\? @
;\\@ A
return]] 
node]] 
;]] 
}^^ 	
public`` 
Node`` 
Min`` 
(`` 
)`` 
{aa 	
returnbb 
_headbb 
.bb 
_nextbb 
;bb 
}cc 	
publicee 
voidee 
Removeee 
(ee 
Nodeee 
nodeee  $
)ee$ %
{ff 	
nodegg 
.gg 
_nextgg 
.gg 
_prevgg 
=gg 
nodegg #
.gg# $
_prevgg$ )
;gg) *
nodehh 
.hh 
_prevhh 
.hh 
_nexthh 
=hh 
nodehh #
.hh# $
_nexthh$ )
;hh) *
}ii 	
}jj 
}kk 
}mm �N
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\FinalBlitPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
public

 

class

 


 
:

   
ScriptableRenderPass

! 5
{ 
RenderTargetHandle 
m_Source #
;# $
Material
m_BlitMaterial
;
public 

( 
RenderPassEvent ,
evt- 0
,0 1
Material2 :
blitMaterial; G
)G H
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @

)M N
)N O
;O P
m_BlitMaterial 
= 
blitMaterial )
;) *
renderPassEvent 
= 
evt !
;! "
} 	
public 
void 
Setup 
( #
RenderTextureDescriptor 1
baseDescriptor2 @
,@ A
RenderTargetHandleB T
colorHandleU `
)` a
{ 	
m_Source 
= 
colorHandle "
;" #
} 	
public"" 
override"" 
void"" 
Execute"" $
(""$ %#
ScriptableRenderContext""% <
context""= D
,""D E
ref""F I


)""e f
{## 	
if$$ 
($$ 
m_BlitMaterial$$ 
==$$ !
null$$" &
)$$& '
{%% 
Debug&& 
.&& 
LogErrorFormat&& $
(&&$ %
$str	&&% �
,
&&� �
m_BlitMaterial
&&� �
,
&&� �
GetType
&&� �
(
&&� �
)
&&� �
.
&&� �
Name
&&� �
)
&&� �
;
&&� �
return'' 
;'' 
}(( 
ref,, 

CameraData,, 

cameraData,, %
=,,& '
ref,,( +

.,,9 :

cameraData,,: D
;,,D E"
RenderTargetIdentifier-- "
cameraTarget--# /
=--0 1
(--2 3

cameraData--3 =
.--= >

!=--L N
null--O S
)--S T
?--U V
new--W Z"
RenderTargetIdentifier--[ q
(--q r

cameraData--r |
.--| }

)
--� �
:
--� �&
BuiltinRenderTextureType
--� �
.
--� �
CameraTarget
--� �
;
--� �
bool// 
isSceneViewCamera// "
=//# $

cameraData//% /
./// 0
isSceneViewCamera//0 A
;//A B

cmd00 
=00 
CommandBufferPool00  1
.001 2
Get002 5
(005 6
)006 7
;007 8
using11 
(11 
new11 
ProfilingScope11 %
(11% &
cmd11& )
,11) *
ProfilingSampler11+ ;
.11; <
Get11< ?
(11? @
URPProfileId11@ L
.11L M
	FinalBlit11M V
)11V W
)11W X
)11X Y
{22 
	CoreUtils44 
.44 

SetKeyword44 $
(44$ %
cmd44% (
,44( ) 
ShaderKeywordStrings44* >
.44> ?"
LinearToSRGBConversion44? U
,44U V

cameraData55 
.55 !
requireSrgbConversion55 4
)554 5
;555 6
cmd77 
.77 
SetGlobalTexture77 $
(77$ %
ShaderPropertyId77% 5
.775 6
	sourceTex776 ?
,77? @
m_Source77A I
.77I J

Identifier77J T
(77T U
)77U V
)77V W
;77W X
if:: 
(:: 

cameraData:: 
.:: 
xr:: !
.::! "
enabled::" )
)::) *
{;; 
int<< 

depthSlice<< "
=<<# $

cameraData<<% /
.<</ 0
xr<<0 2
.<<2 3
singlePassEnabled<<3 D
?<<E F
-<<G H
$num<<H I
:<<J K

cameraData<<L V
.<<V W
xr<<W Y
.<<Y Z 
GetTextureArraySlice<<Z n
(<<n o
)<<o p
;<<p q
cameraTarget==  
===! "
new>> "
RenderTargetIdentifier>> 2
(>>2 3

cameraData>>3 =
.>>= >
xr>>> @
.>>@ A
renderTarget>>A M
,>>M N
$num>>O P
,>>P Q
CubemapFace>>R ]
.>>] ^
Unknown>>^ e
,>>e f

depthSlice>>g q
)>>q r
;>>r s
	CoreUtils@@ 
.@@ 
SetRenderTarget@@ -
(@@- .
cmdAA 
,AA 
cameraTargetBB $
,BB$ %"
RenderBufferLoadActionCC .
.CC. /
LoadCC/ 3
,CC3 4#
RenderBufferStoreActionDD /
.DD/ 0
StoreDD0 5
,DD5 6
	ClearFlagEE !
.EE! "
NoneEE" &
,EE& '
ColorFF 
.FF 
blackFF #
)FF# $
;FF$ %
cmdHH 
.HH 
SetViewportHH #
(HH# $

cameraDataHH$ .
.HH. /
	pixelRectHH/ 8
)HH8 9
;HH9 :
boolMM 
yflipMM 
=MM  
!MM! "

cameraDataMM" ,
.MM, -
xrMM- /
.MM/ 0'
renderTargetIsRenderTextureMM0 K
&&MML N

SystemInfoMMO Y
.MMY Z!
graphicsUVStartsAtTopMMZ o
;MMo p
Vector4NN 
	scaleBiasNN %
=NN& '
yflipNN( -
?NN. /
newNN0 3
Vector4NN4 ;
(NN; <
$numNN< =
,NN= >
-NN? @
$numNN@ A
,NNA B
$numNNC D
,NND E
$numNNF G
)NNG H
:NNI J
newNNK N
Vector4NNO V
(NNV W
$numNNW X
,NNX Y
$numNNZ [
,NN[ \
$numNN] ^
,NN^ _
$numNN` a
)NNa b
;NNb c
cmdOO 
.OO 
SetGlobalVectorOO '
(OO' (
ShaderPropertyIdOO( 8
.OO8 9
	scaleBiasOO9 B
,OOB C
	scaleBiasOOD M
)OOM N
;OON O
cmdQQ 
.QQ 
DrawProceduralQQ &
(QQ& '
	Matrix4x4QQ' 0
.QQ0 1
identityQQ1 9
,QQ9 :
m_BlitMaterialQQ; I
,QQI J
$numQQK L
,QQL M
MeshTopologyQQN Z
.QQZ [
QuadsQQ[ `
,QQ` a
$numQQb c
)QQc d
;QQd e
}RR 
elseSS 
ifUU 
(UU 
isSceneViewCameraUU %
||UU& (

cameraDataUU) 3
.UU3 4
isDefaultViewportUU4 E
)UUE F
{VV 
cmdXX 
.XX 
SetRenderTargetXX '
(XX' ($
BuiltinRenderTextureTypeXX( @
.XX@ A
CameraTargetXXA M
,XXM N"
RenderBufferLoadActionYY .
.YY. /
DontCareYY/ 7
,YY7 8#
RenderBufferStoreActionYY9 P
.YYP Q
StoreYYQ V
,YYV W"
RenderBufferLoadActionZZ .
.ZZ. /
DontCareZZ/ 7
,ZZ7 8#
RenderBufferStoreActionZZ9 P
.ZZP Q
DontCareZZQ Y
)ZZY Z
;ZZZ [
cmd[[ 
.[[ 
Blit[[ 
([[ 
m_Source[[ %
.[[% &

Identifier[[& 0
([[0 1
)[[1 2
,[[2 3
cameraTarget[[4 @
,[[@ A
m_BlitMaterial[[B P
)[[P Q
;[[Q R
}\\ 
else]] 
{^^ 
	CoreUtilsbb 
.bb 
SetRenderTargetbb -
(bb- .
cmdcc 
,cc 
cameraTargetdd $
,dd$ %"
RenderBufferLoadActionee .
.ee. /
Loadee/ 3
,ee3 4#
RenderBufferStoreActionff /
.ff/ 0
Storeff0 5
,ff5 6
	ClearFlaggg !
.gg! "
Nonegg" &
,gg& '
Colorhh 
.hh 
blackhh #
)hh# $
;hh$ %
Camerajj 
camerajj !
=jj" #

cameraDatajj$ .
.jj. /
camerajj/ 5
;jj5 6
cmdkk 
.kk %
SetViewProjectionMatriceskk 1
(kk1 2
	Matrix4x4kk2 ;
.kk; <
identitykk< D
,kkD E
	Matrix4x4kkF O
.kkO P
identitykkP X
)kkX Y
;kkY Z
cmdll 
.ll 
SetViewportll #
(ll# $

cameraDatall$ .
.ll. /
	pixelRectll/ 8
)ll8 9
;ll9 :
cmdmm 
.mm 
DrawMeshmm  
(mm  !
RenderingUtilsmm! /
.mm/ 0
fullscreenMeshmm0 >
,mm> ?
	Matrix4x4mm@ I
.mmI J
identitymmJ R
,mmR S
m_BlitMaterialmmT b
)mmb c
;mmc d
cmdnn 
.nn %
SetViewProjectionMatricesnn 1
(nn1 2
camerann2 8
.nn8 9
worldToCameraMatrixnn9 L
,nnL M
camerannN T
.nnT U
projectionMatrixnnU e
)nne f
;nnf g
}oo 
}pp 
contextrr 
.rr  
ExecuteCommandBufferrr (
(rr( )
cmdrr) ,
)rr, -
;rr- .
CommandBufferPoolss 
.ss 
Releasess %
(ss% &
cmdss& )
)ss) *
;ss* +
}tt 	
}uu 
}vv ܓ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Data\UniversalRenderPipelineAsset.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
LWRP  $
{
[ 
Obsolete 
(
$str s
,s t
trueu y
)y z
]z {
public 

class *
LightweightRenderPipelineAsset /
{ 
} 
} 
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9

{ 
Disabled 
, 
HardShadows 
, 
SoftShadows 
, 
} 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9
ShadowResolution: J
{ 
_256   
=  
$num   
,   
_512!! 
=!!
$num!! 
,!! 
_1024"" 
="" 
$num"" 
,"" 
_2048## 
=## 
$num## 
,## 
_4096$$ 
=$$ 
$num$$ 
}%% 
['' 
	MovedFrom'' 
('' 
$str'' +
)''+ ,
]'', -
public''. 4
enum''5 9
MsaaQuality'': E
{(( 
Disabled)) 
=)) 
$num)) 
,)) 
_2x** 
=** 
$num** 
,** 
_4x++ 
=++ 
$num++ 
,++ 
_8x,, 
=,, 
$num,, 
}-- 
[// 
	MovedFrom// 
(// 
$str// +
)//+ ,
]//, -
public//. 4
enum//5 9
Downsampling//: F
{00 
None11 
,11 
_2xBilinear22 
,22 
_4xBox33 
,33 
_4xBilinear44 
}55 
internal77 
enum77
DefaultMaterialType77 %
{88 
Standard99 
,99 
Particle:: 
,:: 
Terrain;; 
,;; 
Sprite<< 
,<< 
UnityBuiltinDefault== 
}>> 
[@@ 
	MovedFrom@@ 
(@@ 
$str@@ +
)@@+ ,
]@@, -
public@@. 4
enum@@5 9
LightRenderingMode@@: L
{AA 
DisabledBB 
=BB 
$numBB 
,BB 
	PerVertexCC 
=CC 
$numCC 
,CC 
PerPixelDD 
=DD 
$numDD 
,DD 
}EE 
[GG 
	MovedFromGG 
(GG 
$strGG +
)GG+ ,
]GG, -
publicGG. 4
enumGG5 9!
ShaderVariantLogLevelGG: O
{HH 
DisabledII 
,II "
OnlyUniversalRPShadersJJ 
,JJ 

AllShadersKK 
,KK 
}LL 
[NN 
ObsoleteNN 
(NN
$strNN ?
,NN? @
falseNNA F
)NNF G
]NNG H
publicOO 

enumOO 
PipelineDebugLevelOO "
{PP 
DisabledQQ 
,QQ 
	ProfilingRR 
,RR 
}SS 
[UU 
	MovedFromUU 
(UU 
$strUU +
)UU+ ,
]UU, -
publicUU. 4
enumUU5 9
RendererTypeUU: F
{VV 
CustomWW 
,WW 
ForwardRendererXX 
,XX 
_2DRendererYY 
,YY 
}ZZ 
public\\ 

enum\\ 
ColorGradingMode\\  
{]] 
LowDynamicRange^^ 
,^^ 
HighDynamicRange__ 
}`` 
[bb 
ExcludeFromPresetbb 
]bb 
publiccc 

partialcc 
classcc (
UniversalRenderPipelineAssetcc 5
:cc6 7
RenderPipelineAssetcc8 K
,ccK L*
ISerializationCallbackReceiverccM k
{dd 
Shaderee 
m_DefaultShaderee 
;ee 
ScriptableRendererff 
[ff 
]ff 
m_Renderersff (
=ff) *
newff+ .
ScriptableRendererff/ A
[ffA B
$numffB C
]ffC D
;ffD E
[ii 	
SerializeFieldii	 
]ii 
intii 
k_AssetVersionii +
=ii, -
$numii. /
;ii/ 0
[jj 	
SerializeFieldjj	 
]jj 
intjj "
k_AssetPreviousVersionjj 3
=jj4 5
$numjj6 7
;jj7 8
[mm 	
SerializeFieldmm	 
]mm 
RendererTypemm %
m_RendererTypemm& 4
=mm5 6
RendererTypemm7 C
.mmC D
ForwardRenderermmD S
;mmS T
[nn 	
EditorBrowsablenn	 
(nn  
EditorBrowsableStatenn -
.nn- .
Nevernn. 3
)nn3 4
]nn4 5
[oo 	
SerializeFieldoo	 
]oo 
internaloo !"
ScriptableRendererDataoo" 8
m_RendererDataoo9 G
=ooH I
nullooJ N
;ooN O
[rr 	
SerializeFieldrr	 
]rr 
internalrr !"
ScriptableRendererDatarr" 8
[rr8 9
]rr9 :
m_RendererDataListrr; M
=rrN O
newrrP S"
ScriptableRendererDatarrT j
[rrj k
$numrrk l
]rrl m
;rrm n
[ss 	
SerializeFieldss	 
]ss 
internalss !
intss" %"
m_DefaultRendererIndexss& <
=ss= >
$numss? @
;ss@ A
[vv 	
SerializeFieldvv	 
]vv 
boolvv !
m_RequireDepthTexturevv 3
=vv4 5
falsevv6 ;
;vv; <
[ww 	
SerializeFieldww	 
]ww 
boolww "
m_RequireOpaqueTextureww 4
=ww5 6
falseww7 <
;ww< =
[xx 	
SerializeFieldxx	 
]xx 
Downsamplingxx % 
m_OpaqueDownsamplingxx& :
=xx; <
Downsamplingxx= I
.xxI J
_2xBilinearxxJ U
;xxU V
[yy 	
SerializeFieldyy	 
]yy 
boolyy "
m_SupportsTerrainHolesyy 4
=yy5 6
trueyy7 ;
;yy; <
[|| 	
SerializeField||	 
]|| 
bool|| 

=||, -
true||. 2
;||2 3
[}} 	
SerializeField}}	 
]}} 
MsaaQuality}} $
m_MSAA}}% +
=}}, -
MsaaQuality}}. 9
.}}9 :
Disabled}}: B
;}}B C
[~~ 	
SerializeField~~	 
]~~ 
float~~ 

=~~- .
$num~~/ 3
;~~3 4
[
�� 	
SerializeField
��	 
]
��  
LightRenderingMode
�� +&
m_MainLightRenderingMode
��, D
=
��E F 
LightRenderingMode
��G Y
.
��Y Z
PerPixel
��Z b
;
��b c
[
�� 	
SerializeField
��	 
]
�� 
bool
�� )
m_MainLightShadowsSupported
�� 9
=
��: ;
true
��< @
;
��@ A
[
�� 	
SerializeField
��	 
]
�� 
ShadowResolution
�� ),
m_MainLightShadowmapResolution
��* H
=
��I J
ShadowResolution
��K [
.
��[ \
_2048
��\ a
;
��a b
[
�� 	
SerializeField
��	 
]
��  
LightRenderingMode
�� +-
m_AdditionalLightsRenderingMode
��, K
=
��L M 
LightRenderingMode
��N `
.
��` a
PerPixel
��a i
;
��i j
[
�� 	
SerializeField
��	 
]
�� 
int
�� .
 m_AdditionalLightsPerObjectLimit
�� =
=
��> ?
$num
��@ A
;
��A B
[
�� 	
SerializeField
��	 
]
�� 
bool
�� /
!m_AdditionalLightShadowsSupported
�� ?
=
��@ A
false
��B G
;
��G H
[
�� 	
SerializeField
��	 
]
�� 
ShadowResolution
�� )3
%m_AdditionalLightsShadowmapResolution
��* O
=
��P Q
ShadowResolution
��R b
.
��b c
_512
��c g
;
��g h
[
�� 	
SerializeField
��	 
]
�� 
float
�� 
m_ShadowDistance
�� /
=
��0 1
$num
��2 7
;
��7 8
[
�� 	
SerializeField
��	 
]
�� 
int
�� "
m_ShadowCascadeCount
�� 1
=
��2 3
$num
��4 5
;
��5 6
[
�� 	
SerializeField
��	 
]
�� 
float
�� 
m_Cascade2Split
�� .
=
��/ 0
$num
��1 6
;
��6 7
[
�� 	
SerializeField
��	 
]
�� 
Vector2
��  
m_Cascade3Split
��! 0
=
��1 2
new
��3 6
Vector2
��7 >
(
��> ?
$num
��? C
,
��C D
$num
��E I
)
��I J
;
��J K
[
�� 	
SerializeField
��	 
]
�� 
Vector3
��  
m_Cascade4Split
��! 0
=
��1 2
new
��3 6
Vector3
��7 >
(
��> ?
$num
��? E
,
��E F
$num
��G K
,
��K L
$num
��M S
)
��S T
;
��T U
[
�� 	
SerializeField
��	 
]
�� 
float
�� 
m_ShadowDepthBias
�� 0
=
��1 2
$num
��3 7
;
��7 8
[
�� 	
SerializeField
��	 
]
�� 
float
��  
m_ShadowNormalBias
�� 1
=
��2 3
$num
��4 8
;
��8 9
[
�� 	
SerializeField
��	 
]
�� 
bool
�� $
m_SoftShadowsSupported
�� 4
=
��5 6
false
��7 <
;
��< =
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_UseSRPBatcher
�� -
=
��. /
true
��0 4
;
��4 5
[
�� 	
SerializeField
��	 
]
�� 
bool
�� '
m_SupportsDynamicBatching
�� 7
=
��8 9
false
��: ?
;
��? @
[
�� 	
SerializeField
��	 
]
�� 
bool
�� &
m_MixedLightingSupported
�� 6
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
�� 
[
�� 
Obsolete
�� !
]
��! " 
PipelineDebugLevel
��# 5
m_DebugLevel
��6 B
;
��B C
[
�� 	
SerializeField
��	 
]
�� 
bool
�� &
m_UseAdaptivePerformance
�� 6
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
�� 
ColorGradingMode
�� ) 
m_ColorGradingMode
��* <
=
��= >
ColorGradingMode
��? O
.
��O P
LowDynamicRange
��P _
;
��_ `
[
�� 	
SerializeField
��	 
]
�� 
int
�� #
m_ColorGradingLutSize
�� 2
=
��3 4
$num
��5 7
;
��7 8
[
�� 	
SerializeField
��	 
]
�� 

�� &
m_ShadowType
��' 3
=
��4 5

��6 C
.
��C D
HardShadows
��D O
;
��O P
[
�� 	
SerializeField
��	 
]
�� 
bool
�� %
m_LocalShadowsSupported
�� 5
=
��6 7
false
��8 =
;
��= >
[
�� 	
SerializeField
��	 
]
�� 
ShadowResolution
�� )+
m_LocalShadowsAtlasResolution
��* G
=
��H I
ShadowResolution
��J Z
.
��Z [
_256
��[ _
;
��_ `
[
�� 	
SerializeField
��	 
]
�� 
int
�� 
m_MaxPixelLights
�� -
=
��. /
$num
��0 1
;
��1 2
[
�� 	
SerializeField
��	 
]
�� 
ShadowResolution
�� )%
m_ShadowAtlasResolution
��* A
=
��B C
ShadowResolution
��D T
.
��T U
_256
��U Y
;
��Y Z
[
�� 	
SerializeField
��	 
]
�� #
ShaderVariantLogLevel
�� .%
m_ShaderVariantLogLevel
��/ F
=
��G H#
ShaderVariantLogLevel
��I ^
.
��^ _
Disabled
��_ g
;
��g h
public
�� 
const
�� 
int
�� 
k_MinLutSize
�� %
=
��& '
$num
��( *
;
��* +
public
�� 
const
�� 
int
�� 
k_MaxLutSize
�� %
=
��& '
$num
��( *
;
��* +
internal
�� 
const
�� 
int
�� %
k_ShadowCascadeMinCount
�� 2
=
��3 4
$num
��5 6
;
��6 7
internal
�� 
const
�� 
int
�� %
k_ShadowCascadeMaxCount
�� 2
=
��3 4
$num
��5 6
;
��6 7
[
�� 	

��	 
]
�� 
internal
�� 4
&UniversalRenderPipelineEditorResources
�� 7$
m_EditorResourcesAsset
��8 N
;
��N O
public
�� 
static
�� 
readonly
�� 
string
�� %
packagePath
��& 1
=
��2 3
$str
��4 c
;
��c d
public
�� 
static
�� 
readonly
�� 
string
�� %!
editorResourcesGUID
��& 9
=
��: ;
$str
��< ^
;
��^ _
public
�� 
static
�� *
UniversalRenderPipelineAsset
�� 2
Create
��3 9
(
��9 :$
ScriptableRendererData
��: P
rendererData
��Q ]
=
��^ _
null
��` d
)
��d e
{
�� 	
var
�� 
instance
�� 
=
�� 
CreateInstance
�� )
<
��) **
UniversalRenderPipelineAsset
��* F
>
��F G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
rendererData
�� 
!=
�� 
null
��  $
)
��$ %
instance
�� 
.
��  
m_RendererDataList
�� +
[
��+ ,
$num
��, -
]
��- .
=
��/ 0
rendererData
��1 =
;
��= >
else
�� 
instance
�� 
.
��  
m_RendererDataList
�� +
[
��+ ,
$num
��, -
]
��- .
=
��/ 0
CreateInstance
��1 ?
<
��? @!
ForwardRendererData
��@ S
>
��S T
(
��T U
)
��U V
;
��V W
instance
�� 
.
�� $
m_EditorResourcesAsset
�� +
=
��, -
instance
��. 6
.
��6 7
editorResources
��7 F
;
��F G
return
�� 
instance
�� 
;
�� 
}
�� 	
[
�� 	
System
��	 
.
�� 
Diagnostics
�� 
.
�� 
CodeAnalysis
�� (
.
��( )
SuppressMessage
��) 8
(
��8 9
$str
��9 P
,
��P Q
$str
��R Z
)
��Z [
]
��[ \
internal
�� 
class
�� *
CreateUniversalPipelineAsset
�� 3
:
��4 5
EndNameEditAction
��6 G
{
�� 	
public
�� 
override
�� 
void
��  
Action
��! '
(
��' (
int
��( +

instanceId
��, 6
,
��6 7
string
��8 >
pathName
��? G
,
��G H
string
��I O
resourceFile
��P \
)
��\ ]
{
�� 

�� 
.
�� 
CreateAsset
�� )
(
��) *
Create
��* 0
(
��0 1!
CreateRendererAsset
��1 D
(
��D E
pathName
��E M
,
��M N
RendererType
��O [
.
��[ \
ForwardRenderer
��\ k
)
��k l
)
��l m
,
��m n
pathName
��o w
)
��w x
;
��x y
}
�� 
}
�� 	
[
�� 	
MenuItem
��	 
(
�� 
$str
�� g
,
��g h
priority
��i q
=
��r s
	CoreUtils
��t }
.
��} ~'
assetCreateMenuPriority1��~ �
)��� �
]��� �
static
�� 
void
�� %
CreateUniversalPipeline
�� +
(
��+ ,
)
��, -
{
�� 	
ProjectWindowUtil
�� 
.
�� 3
%StartNameEditingIfProjectWindowExists
�� C
(
��C D
$num
��D E
,
��E F
CreateInstance
��G U
<
��U V*
CreateUniversalPipelineAsset
��V r
>
��r s
(
��s t
)
��t u
,
��u v
$str
�� 4
,
��4 5
null
��6 :
,
��: ;
null
��< @
)
��@ A
;
��A B
}
�� 	
static
�� $
ScriptableRendererData
�� %!
CreateRendererAsset
��& 9
(
��9 :
string
��: @
path
��A E
,
��E F
RendererType
��G S
type
��T X
,
��X Y
bool
��Z ^
relativePath
��_ k
=
��l m
true
��n r
)
��r s
{
�� 	$
ScriptableRendererData
�� "
data
��# '
=
��( ) 
CreateRendererData
��* <
(
��< =
type
��= A
)
��A B
;
��B C
string
�� 
dataPath
�� 
;
�� 
if
�� 
(
�� 
relativePath
�� 
)
�� 
dataPath
�� 
=
�� 
$"
�� 
{
�� 
Path
�� 
.
�� 
Combine
�� #
(
��# $
Path
��$ (
.
��( )
GetDirectoryName
��) 9
(
��9 :
path
��: >
)
��> ?
,
��? @
Path
��A E
.
��E F)
GetFileNameWithoutExtension
��F a
(
��a b
path
��b f
)
��f g
)
��g h
}
��h i
	_Renderer
��i r
{
��r s
Path
��s w
.
��w x
GetExtension��x �
(��� �
path��� �
)��� �
}��� �
"��� �
;��� �
else
�� 
dataPath
�� 
=
�� 
path
�� 
;
��  

�� 
.
�� 
CreateAsset
�� %
(
��% &
data
��& *
,
��* +
dataPath
��, 4
)
��4 5
;
��5 6
return
�� 
data
�� 
;
�� 
}
�� 	
static
�� $
ScriptableRendererData
�� % 
CreateRendererData
��& 8
(
��8 9
RendererType
��9 E
type
��F J
)
��J K
{
�� 	
switch
�� 
(
�� 
type
�� 
)
�� 
{
�� 
case
�� 
RendererType
�� !
.
��! "
ForwardRenderer
��" 1
:
��1 2
return
�� 
CreateInstance
�� )
<
��) *!
ForwardRendererData
��* =
>
��= >
(
��> ?
)
��? @
;
��@ A
case
�� 
RendererType
�� !
.
��! "
_2DRenderer
��" -
:
��- .
return
�� 
CreateInstance
�� )
<
��) *
Experimental
��* 6
.
��6 7
	Rendering
��7 @
.
��@ A
	Universal
��A J
.
��J K
Renderer2DData
��K Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
default
�� 
:
�� 
return
�� 
CreateInstance
�� )
<
��) *!
ForwardRendererData
��* =
>
��= >
(
��> ?
)
��? @
;
��@ A
}
�� 
}
�� 	
static
�� 
void
�� 4
&CreateUniversalPipelineEditorResources
�� :
(
��: ;
)
��; <
{
�� 	
var
�� 
instance
�� 
=
�� 
CreateInstance
�� )
<
��) *4
&UniversalRenderPipelineEditorResources
��* P
>
��P Q
(
��Q R
)
��R S
;
��S T
ResourceReloader
�� 
.
�� 
ReloadAllNullIn
�� ,
(
��, -
instance
��- 5
,
��5 6
packagePath
��7 B
)
��B C
;
��C D

�� 
.
�� 
CreateAsset
�� %
(
��% &
instance
��& .
,
��. /
string
��0 6
.
��6 7
Format
��7 =
(
��= >
$str
��> P
,
��P Q
typeof
��R X
(
��X Y4
&UniversalRenderPipelineEditorResources
��Y 
)�� �
.��� �
Name��� �
)��� �
)��� �
;��� �
}
�� 	4
&UniversalRenderPipelineEditorResources
�� .
editorResources
��/ >
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_EditorResourcesAsset
�� *
!=
��+ -
null
��. 2
&&
��3 5
!
��6 7$
m_EditorResourcesAsset
��7 M
.
��M N
Equals
��N T
(
��T U
null
��U Y
)
��Y Z
)
��Z [
return
�� $
m_EditorResourcesAsset
�� 1
;
��1 2
string
�� 
resourcePath
�� #
=
��$ %

��& 3
.
��3 4
GUIDToAssetPath
��4 C
(
��C D!
editorResourcesGUID
��D W
)
��W X
;
��X Y
var
�� 
objs
�� 
=
�� #
InternalEditorUtility
�� 0
.
��0 1)
LoadSerializedFileAndForget
��1 L
(
��L M
resourcePath
��M Y
)
��Y Z
;
��Z [$
m_EditorResourcesAsset
�� &
=
��' (
objs
��) -
!=
��. 0
null
��1 5
&&
��6 8
objs
��9 =
.
��= >
Length
��> D
>
��E F
$num
��G H
?
��I J
objs
��K O
.
��O P
First
��P U
(
��U V
)
��V W
as
��X Z5
&UniversalRenderPipelineEditorResources��[ �
:��� �
null��� �
;��� �
return
�� $
m_EditorResourcesAsset
�� -
;
��- .
}
�� 
}
�� 	
public
�� $
ScriptableRendererData
�� %%
LoadBuiltinRendererData
��& =
(
��= >
RendererType
��> J
type
��K O
=
��P Q
RendererType
��R ^
.
��^ _
ForwardRenderer
��_ n
)
��n o
{
�� 	

�� 
.
�� 
SetDirty
�� "
(
��" #
this
��# '
)
��' (
;
��( )
return
��  
m_RendererDataList
�� %
[
��% &
$num
��& '
]
��' (
=
��) *!
CreateRendererAsset
�� #
(
��# $
$str
��$ B
,
��B C
type
��D H
,
��H I
false
��J O
)
��O P
;
��P Q
}
�� 	
	protected
�� 
override
�� 
RenderPipeline
�� )
CreatePipeline
��* 8
(
��8 9
)
��9 :
{
�� 	
if
�� 
(
��  
m_RendererDataList
�� "
==
��# %
null
��& *
)
��* + 
m_RendererDataList
�� "
=
��# $
new
��% ($
ScriptableRendererData
��) ?
[
��? @
$num
��@ A
]
��A B
;
��B C
if
�� 
(
��  
m_RendererDataList
�� "
[
��" #
$num
��# $
]
��$ %
==
��& (
null
��) -
)
��- .
{
�� 
if
�� 
(
�� $
k_AssetPreviousVersion
�� )
!=
��* ,
k_AssetVersion
��- ;
)
��; <
return
�� 
null
�� 
;
��  
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� �
uDefault Renderer is missing, make sure there is a Renderer assigned as the default on the current Universal RP asset:�� �
{��� �'
UniversalRenderPipeline��� �
.��� �
asset��� �
.��� �
name��� �
}��� �
"��� �
,��� �
this
�� 
)
�� 
;
�� 
return
�� 
null
�� 
;
�� 
}
�� 
CreateRenderers
�� 
(
�� 
)
�� 
;
�� 
return
�� 
new
�� %
UniversalRenderPipeline
�� .
(
��. /
this
��/ 3
)
��3 4
;
��4 5
}
�� 	
void
�� 
DestroyRenderers
��
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
m_Renderers
�� 
==
�� 
null
�� #
)
��# $
return
�� 
;
�� 
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
m_Renderers
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
��7 8
DestroyRenderer
�� 
(
��  
ref
��  #
m_Renderers
��$ /
[
��/ 0
i
��0 1
]
��1 2
)
��2 3
;
��3 4
}
�� 	
void
�� 
DestroyRenderer
��
(
�� 
ref
��   
ScriptableRenderer
��! 3
renderer
��4 <
)
��< =
{
�� 	
if
�� 
(
�� 
renderer
�� 
!=
�� 
null
��  
)
��  !
{
�� 
renderer
�� 
.
�� 
Dispose
��  
(
��  !
)
��! "
;
��" #
renderer
�� 
=
�� 
null
�� 
;
��  
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 

OnValidate
��  *
(
��* +
)
��+ ,
{
�� 	
DestroyRenderers
�� 
(
�� 
)
�� 
;
�� 
base
�� 
.
�� 

OnValidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
	OnDisable
��  )
(
��) *
)
��* +
{
�� 	
DestroyRenderers
�� 
(
�� 
)
�� 
;
�� 
base
�� 
.
�� 
	OnDisable
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
CreateRenderers
��
(
�� 
)
�� 
{
�� 	
DestroyRenderers
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
m_Renderers
�� 
==
�� 
null
�� #
||
��$ &
m_Renderers
��' 2
.
��2 3
Length
��3 9
!=
��: < 
m_RendererDataList
��= O
.
��O P
Length
��P V
)
��V W
m_Renderers
�� 
=
�� 
new
�� ! 
ScriptableRenderer
��" 4
[
��4 5 
m_RendererDataList
��5 G
.
��G H
Length
��H N
]
��N O
;
��O P
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
m_RendererDataList
��  2
.
��2 3
Length
��3 9
;
��9 :
++
��; =
i
��= >
)
��> ?
{
�� 
if
�� 
(
��  
m_RendererDataList
�� &
[
��& '
i
��' (
]
��( )
!=
��* ,
null
��- 1
)
��1 2
m_Renderers
�� 
[
��  
i
��  !
]
��! "
=
��# $ 
m_RendererDataList
��% 7
[
��7 8
i
��8 9
]
��9 :
.
��: ;$
InternalCreateRenderer
��; Q
(
��Q R
)
��R S
;
��S T
}
�� 
}
�� 	
Material
�� 
GetMaterial
�� 
(
�� !
DefaultMaterialType
�� 0
materialType
��1 =
)
��= >
{
�� 	
if
�� 
(
�� $
scriptableRendererData
�� &
==
��' )
null
��* .
||
��/ 1
editorResources
��2 A
==
��B D
null
��E I
)
��I J
return
�� 
null
�� 
;
�� 
var
�� 
material
�� 
=
�� $
scriptableRendererData
�� 1
.
��1 2 
GetDefaultMaterial
��2 D
(
��D E
materialType
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 
material
�� 
!=
�� 
null
��  
)
��  !
return
�� 
material
�� 
;
��  
switch
�� 
(
�� 
materialType
��  
)
��  !
{
�� 
case
�� !
DefaultMaterialType
�� (
.
��( )
Standard
��) 1
:
��1 2
return
�� 
editorResources
�� *
.
��* +
	materials
��+ 4
.
��4 5
lit
��5 8
;
��8 9
case
�� !
DefaultMaterialType
�� (
.
��( )
Particle
��) 1
:
��1 2
return
�� 
editorResources
�� *
.
��* +
	materials
��+ 4
.
��4 5
particleLit
��5 @
;
��@ A
case
�� !
DefaultMaterialType
�� (
.
��( )
Terrain
��) 0
:
��0 1
return
�� 
editorResources
�� *
.
��* +
	materials
��+ 4
.
��4 5

terrainLit
��5 ?
;
��? @
default
�� 
:
�� 
return
�� 
null
�� 
;
��  
}
�� 
}
�� 	
public
��  
ScriptableRenderer
�� ! 
scriptableRenderer
��" 4
{
�� 	
get
�� 
{
�� 
if
�� 
(
��  
m_RendererDataList
�� &
?
��& '
.
��' (
Length
��( .
>
��/ 0$
m_DefaultRendererIndex
��1 G
&&
��H J 
m_RendererDataList
��K ]
[
��] ^$
m_DefaultRendererIndex
��^ t
]
��t u
==
��v x
null
��y }
)
��} ~
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# a
,
��a b
this
��c g
)
��g h
;
��h i
return
�� 
null
�� 
;
��  
}
�� 
if
�� 
(
�� $
scriptableRendererData
�� *
.
��* +

��+ 8
||
��9 ;
m_Renderers
��< G
[
��G H$
m_DefaultRendererIndex
��H ^
]
��^ _
==
��` b
null
��c g
)
��g h
{
�� 
DestroyRenderer
�� #
(
��# $
ref
��$ '
m_Renderers
��( 3
[
��3 4$
m_DefaultRendererIndex
��4 J
]
��J K
)
��K L
;
��L M
m_Renderers
�� 
[
��  $
m_DefaultRendererIndex
��  6
]
��6 7
=
��8 9$
scriptableRendererData
��: P
.
��P Q$
InternalCreateRenderer
��Q g
(
��g h
)
��h i
;
��i j
}
�� 
return
�� 
m_Renderers
�� "
[
��" #$
m_DefaultRendererIndex
��# 9
]
��9 :
;
��: ;
}
�� 
}
�� 	
public
��  
ScriptableRenderer
�� !
GetRenderer
��" -
(
��- .
int
��. 1
index
��2 7
)
��7 8
{
�� 	
if
�� 
(
�� 
index
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
index
�� 
=
�� $
m_DefaultRendererIndex
�� .
;
��. /
if
�� 
(
�� 
index
�� 
>=
��  
m_RendererDataList
�� +
.
��+ ,
Length
��, 2
||
��3 5
index
��6 ;
<
��< =
$num
��> ?
||
��@ B 
m_RendererDataList
��C U
[
��U V
index
��V [
]
��[ \
==
��] _
null
��` d
)
��d e
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$"
��  
Renderer at index 
�� (
{
��( )
index
��) .
.
��. /
ToString
��/ 7
(
��7 8
)
��8 9
}
��9 :<
. is missing, falling back to Default Renderer 
��: h
{
��h i 
m_RendererDataList
��i {
[
��{ |%
m_DefaultRendererIndex��| �
]��� �
.��� �
name��� �
}��� �
"��� �
,��� �
this
�� 
)
�� 
;
�� 
index
�� 
=
�� $
m_DefaultRendererIndex
�� .
;
��. /
}
�� 
if
�� 
(
�� 
m_Renderers
�� 
==
�� 
null
�� #
||
��$ &
m_Renderers
��' 2
.
��2 3
Length
��3 9
<
��: ; 
m_RendererDataList
��< N
.
��N O
Length
��O U
)
��U V
CreateRenderers
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
��  
m_RendererDataList
�� "
[
��" #
index
��# (
]
��( )
.
��) *

��* 7
||
��8 :
m_Renderers
��; F
[
��F G
index
��G L
]
��L M
==
��N P
null
��Q U
)
��U V
{
�� 
DestroyRenderer
�� 
(
��  
ref
��  #
m_Renderers
��$ /
[
��/ 0
index
��0 5
]
��5 6
)
��6 7
;
��7 8
m_Renderers
�� 
[
�� 
index
�� !
]
��! "
=
��# $ 
m_RendererDataList
��% 7
[
��7 8
index
��8 =
]
��= >
.
��> ?$
InternalCreateRenderer
��? U
(
��U V
)
��V W
;
��W X
}
�� 
return
�� 
m_Renderers
�� 
[
�� 
index
�� $
]
��$ %
;
��% &
}
�� 	
internal
�� $
ScriptableRendererData
�� '$
scriptableRendererData
��( >
{
�� 	
get
�� 
{
�� 
if
�� 
(
��  
m_RendererDataList
�� &
[
��& '$
m_DefaultRendererIndex
��' =
]
��= >
==
��? A
null
��B F
)
��F G
CreatePipeline
�� "
(
��" #
)
��# $
;
��$ %
return
��  
m_RendererDataList
�� )
[
��) *$
m_DefaultRendererIndex
��* @
]
��@ A
;
��A B
}
�� 
}
�� 	
internal
�� 

GUIContent
�� 
[
�� 
]
�� !
rendererDisplayList
�� 1
{
�� 	
get
�� 
{
�� 

GUIContent
�� 
[
�� 
]
�� 
list
�� !
=
��" #
new
��$ '

GUIContent
��( 2
[
��2 3 
m_RendererDataList
��3 E
.
��E F
Length
��F L
+
��M N
$num
��O P
]
��P Q
;
��Q R
list
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
new
�� 

GUIContent
�� (
(
��( )
$"
��) + 
Default Renderer (
��+ =
{
��= >%
RendererDataDisplayName
��> U
(
��U V 
m_RendererDataList
��V h
[
��h i$
m_DefaultRendererIndex
��i 
]�� �
)��� �
}��� �
)��� �
"��� �
)��� �
;��� �
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
list
��$ (
.
��( )
Length
��) /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
list
�� 
[
�� 
i
�� 
]
�� 
=
�� 
new
�� !

GUIContent
��" ,
(
��, -
$"
��- /
{
��/ 0
(
��0 1
i
��1 2
-
��3 4
$num
��5 6
)
��6 7
.
��7 8
ToString
��8 @
(
��@ A
)
��A B
}
��B C
: 
��C E
{
��E F%
RendererDataDisplayName
��F ]
(
��] ^ 
m_RendererDataList
��^ p
[
��p q
i
��q r
-
��r s
$num
��s t
]
��t u
)
��u v
}
��v w
"
��w x
)
��x y
;
��y z
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 
}
�� 	
string
�� %
RendererDataDisplayName
�� &
(
��& '$
ScriptableRendererData
��' =
data
��> B
)
��B C
{
�� 	
if
�� 
(
�� 
data
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
data
�� 
.
�� 
name
��  
;
��  !
return
�� 
$str
�� 0
;
��0 1
}
�� 	
internal
�� 
int
�� 
[
�� 
]
�� 
rendererIndexList
�� (
{
�� 	
get
�� 
{
�� 
int
�� 
[
�� 
]
�� 
list
�� 
=
�� 
new
��  
int
��! $
[
��$ % 
m_RendererDataList
��% 7
.
��7 8
Length
��8 >
+
��? @
$num
��A B
]
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
list
��$ (
.
��( )
Length
��) /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
list
�� 
[
�� 
i
�� 
]
�� 
=
�� 
i
�� 
-
��  !
$num
��" #
;
��# $
}
�� 
return
�� 
list
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
�� (
supportsCameraDepthTexture
�� .
{
�� 	
get
�� 
{
�� 
return
�� #
m_RequireDepthTexture
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_RequireDepthTexture
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
�� 	
public
�� 
bool
�� )
supportsCameraOpaqueTexture
�� /
{
�� 	
get
�� 
{
�� 
return
�� $
m_RequireOpaqueTexture
�� /
;
��/ 0
}
��1 2
set
�� 
{
�� $
m_RequireOpaqueTexture
�� (
=
��) *
value
��+ 0
;
��0 1
}
��2 3
}
�� 	
public
�� 
Downsampling
��  
opaqueDownsampling
�� .
{
�� 	
get
�� 
{
�� 
return
�� "
m_OpaqueDownsampling
�� -
;
��- .
}
��/ 0
}
�� 	
public
�� 
bool
�� "
supportsTerrainHoles
�� (
{
�� 	
get
�� 
{
�� 
return
�� $
m_SupportsTerrainHoles
�� /
;
��/ 0
}
��1 2
}
�� 	
public
�� 
bool
�� 
supportsHDR
�� 
{
�� 	
get
�� 
{
�� 
return
�� 

�� &
;
��& '
}
��( )
set
�� 
{
�� 

�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
int
�� 
msaaSampleCount
�� "
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
int
�� 
)
�� 
m_MSAA
�� $
;
��$ %
}
��& '
set
�� 
{
�� 
m_MSAA
�� 
=
�� 
(
�� 
MsaaQuality
�� '
)
��' (
value
��( -
;
��- .
}
��/ 0
}
�� 	
public
�� 
float
�� 
renderScale
��  
{
�� 	
get
�� 
{
�� 
return
�� 

�� &
;
��& '
}
��( )
set
�� 
{
�� 

�� 
=
��  !!
ValidateRenderScale
��" 5
(
��5 6
value
��6 ;
)
��; <
;
��< =
}
��> ?
}
�� 	
public
��  
LightRenderingMode
�� !$
mainLightRenderingMode
��" 8
{
�� 	
get
�� 
{
�� 
return
�� &
m_MainLightRenderingMode
�� 1
;
��1 2
}
��3 4
}
�� 	
public
�� 
bool
�� &
supportsMainLightShadows
�� ,
{
�� 	
get
�� 
{
�� 
return
�� )
m_MainLightShadowsSupported
�� 4
;
��4 5
}
��6 7
}
�� 	
public
�� 
int
�� *
mainLightShadowmapResolution
�� /
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
int
�� 
)
�� ,
m_MainLightShadowmapResolution
�� <
;
��< =
}
��> ?
}
�� 	
public
��  
LightRenderingMode
�� !+
additionalLightsRenderingMode
��" ?
{
�� 	
get
�� 
{
�� 
return
�� -
m_AdditionalLightsRenderingMode
�� 8
;
��8 9
}
��: ;
}
�� 	
public
�� 
int
�� &
maxAdditionalLightsCount
�� +
{
�� 	
get
�� 
{
�� 
return
�� .
 m_AdditionalLightsPerObjectLimit
�� 9
;
��9 :
}
��; <
set
�� 
{
�� .
 m_AdditionalLightsPerObjectLimit
�� 2
=
��3 4%
ValidatePerObjectLights
��5 L
(
��L M
value
��M R
)
��R S
;
��S T
}
��U V
}
�� 	
public
�� 
bool
�� ,
supportsAdditionalLightShadows
�� 2
{
�� 	
get
�� 
{
�� 
return
�� /
!m_AdditionalLightShadowsSupported
�� :
;
��: ;
}
��< =
}
�� 	
public
�� 
int
�� 1
#additionalLightsShadowmapResolution
�� 6
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
int
�� 
)
�� 3
%m_AdditionalLightsShadowmapResolution
�� C
;
��C D
}
��E F
}
�� 	
public
�� 
float
�� 
shadowDistance
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_ShadowDistance
�� )
;
��) *
}
��+ ,
set
�� 
{
�� 
m_ShadowDistance
�� "
=
��# $
Mathf
��% *
.
��* +
Max
��+ .
(
��. /
$num
��/ 3
,
��3 4
value
��5 :
)
��: ;
;
��; <
}
��= >
}
�� 	
public
�� 
int
��  
shadowCascadeCount
�� %
{
�� 	
get
�� 
{
�� 
return
�� "
m_ShadowCascadeCount
�� -
;
��- .
}
��/ 0
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
<
�� %
k_ShadowCascadeMinCount
�� 3
||
��4 6
value
��7 <
>
��= >%
k_ShadowCascadeMaxCount
��? V
)
��V W
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$"
��0 2
Value (
��2 9
{
��9 :
value
��: ?
}
��? @$
) needs to be between 
��@ V
{
��V W%
k_ShadowCascadeMinCount
��W n
}
��n o
 and 
��o t
{
��t u&
k_ShadowCascadeMaxCount��u �
}��� �
.��� �
"��� �
)��� �
;��� �
}
�� "
m_ShadowCascadeCount
�� $
=
��% &
value
��' ,
;
��, -
}
�� 
}
�� 	
public
�� 
float
�� 

�� "
{
�� 	
get
�� 
{
�� 
return
�� 
m_Cascade2Split
�� (
;
��( )
}
��* +
}
�� 	
public
�� 
Vector2
�� 

�� $
{
�� 	
get
�� 
{
�� 
return
�� 
m_Cascade3Split
�� (
;
��( )
}
��* +
}
�� 	
public
�� 
Vector3
�� 

�� $
{
�� 	
get
�� 
{
�� 
return
�� 
m_Cascade4Split
�� (
;
��( )
}
��* +
}
�� 	
public
�� 
float
�� 
shadowDepthBias
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
m_ShadowDepthBias
�� *
;
��* +
}
��, -
set
�� 
{
�� 
m_ShadowDepthBias
�� #
=
��$ % 
ValidateShadowBias
��& 8
(
��8 9
value
��9 >
)
��> ?
;
��? @
}
��A B
}
�� 	
public
�� 
float
�� 
shadowNormalBias
�� %
{
�� 	
get
�� 
{
�� 
return
��  
m_ShadowNormalBias
�� +
;
��+ ,
}
��- .
set
�� 
{
��  
m_ShadowNormalBias
�� $
=
��% & 
ValidateShadowBias
��' 9
(
��9 :
value
��: ?
)
��? @
;
��@ A
}
��B C
}
�� 	
public
�� 
bool
�� !
supportsSoftShadows
�� '
{
�� 	
get
�� 
{
�� 
return
�� $
m_SoftShadowsSupported
�� /
;
��/ 0
}
��1 2
}
�� 	
public
�� 
bool
�� %
supportsDynamicBatching
�� +
{
�� 	
get
�� 
{
�� 
return
�� '
m_SupportsDynamicBatching
�� 2
;
��2 3
}
��4 5
set
�� 
{
�� '
m_SupportsDynamicBatching
�� +
=
��, -
value
��. 3
;
��3 4
}
��5 6
}
�� 	
public
�� 
bool
�� #
supportsMixedLighting
�� )
{
�� 	
get
�� 
{
�� 
return
�� &
m_MixedLightingSupported
�� 1
;
��1 2
}
��3 4
}
�� 	
public
�� #
ShaderVariantLogLevel
�� $#
shaderVariantLogLevel
��% :
{
�� 	
get
�� 
{
�� 
return
�� %
m_ShaderVariantLogLevel
�� 0
;
��0 1
}
��2 3
set
�� 
{
�� %
m_ShaderVariantLogLevel
�� )
=
��* +
value
��, 1
;
��1 2
}
��3 4
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� Z
,
��Z [
false
��\ a
)
��a b
]
��b c
public
��  
PipelineDebugLevel
�� !

debugLevel
��" ,
{
�� 	
get
�� 
=>
��  
PipelineDebugLevel
�� %
.
��% &
Disabled
��& .
;
��/ 0
}
�� 	
public
�� 
bool
�� 

�� !
{
�� 	
get
�� 
{
�� 
return
�� 
m_UseSRPBatcher
�� (
;
��( )
}
��* +
set
�� 
{
�� 
m_UseSRPBatcher
�� !
=
��" #
value
��$ )
;
��) *
}
��+ ,
}
�� 	
public
�� 
ColorGradingMode
�� 
colorGradingMode
��  0
{
�� 	
get
�� 
{
�� 
return
��  
m_ColorGradingMode
�� +
;
��+ ,
}
��- .
set
�� 
{
��  
m_ColorGradingMode
�� $
=
��% &
value
��' ,
;
��, -
}
��. /
}
�� 	
public
�� 
int
�� !
colorGradingLutSize
�� &
{
�� 	
get
�� 
{
�� 
return
�� #
m_ColorGradingLutSize
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_ColorGradingLutSize
�� '
=
��( )
Mathf
��* /
.
��/ 0
Clamp
��0 5
(
��5 6
value
��6 ;
,
��; <
k_MinLutSize
��= I
,
��I J
k_MaxLutSize
��K W
)
��W X
;
��X Y
}
��Z [
}
�� 	
public
�� 
bool
�� $
useAdaptivePerformance
�� *
{
�� 	
get
�� 
{
�� 
return
�� &
m_UseAdaptivePerformance
�� 1
;
��1 2
}
��3 4
set
�� 
{
�� &
m_UseAdaptivePerformance
�� *
=
��+ ,
value
��- 2
;
��2 3
}
��4 5
}
�� 	
public
�� 
override
�� 
Material
��  
defaultMaterial
��! 0
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9
Standard
��9 A
)
��A B
;
��B C
}
��D E
}
�� 	
public
�� 
override
�� 
Material
��  %
defaultParticleMaterial
��! 8
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9
Particle
��9 A
)
��A B
;
��B C
}
��D E
}
�� 	
public
�� 
override
�� 
Material
��  !
defaultLineMaterial
��! 4
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9
Particle
��9 A
)
��A B
;
��B C
}
��D E
}
�� 	
public
�� 
override
�� 
Material
��  $
defaultTerrainMaterial
��! 7
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9
Terrain
��9 @
)
��@ A
;
��A B
}
��C D
}
�� 	
public
�� 
override
�� 
Material
��  
defaultUIMaterial
��! 2
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9!
UnityBuiltinDefault
��9 L
)
��L M
;
��M N
}
��O P
}
�� 	
public
�� 
override
�� 
Material
��  '
defaultUIOverdrawMaterial
��! :
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9!
UnityBuiltinDefault
��9 L
)
��L M
;
��M N
}
��O P
}
�� 	
public
�� 
override
�� 
Material
��  ,
defaultUIETC1SupportedMaterial
��! ?
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9!
UnityBuiltinDefault
��9 L
)
��L M
;
��M N
}
��O P
}
�� 	
public
�� 
override
�� 
Material
��  
default2DMaterial
��! 2
{
�� 	
get
�� 
{
�� 
return
�� 
GetMaterial
�� $
(
��$ %!
DefaultMaterialType
��% 8
.
��8 9
Sprite
��9 ?
)
��? @
;
��@ A
}
��B C
}
�� 	
public
�� 
override
�� 
Shader
�� 

�� ,
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
scriptableRendererData
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
Shader
�� 

�� (
=
��) *$
scriptableRendererData
��+ A
.
��A B
GetDefaultShader
��B R
(
��R S
)
��S T
;
��T U
if
�� 
(
�� 

�� %
!=
��& (
null
��) -
)
��- .
return
�� 

�� ,
;
��, -
}
�� 
if
�� 
(
�� 
m_DefaultShader
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
string
�� 
path
�� 
=
��  !

��" /
.
��/ 0
GUIDToAssetPath
��0 ?
(
��? @
ShaderUtils
��@ K
.
��K L

��L Y
(
��Y Z
ShaderPathID
��Z f
.
��f g
Lit
��g j
)
��j k
)
��k l
;
��l m
m_DefaultShader
�� #
=
��% &

��' 4
.
��4 5
LoadAssetAtPath
��5 D
<
��D E
Shader
��E K
>
��K L
(
��L M
path
��M Q
)
��Q R
;
��R S
}
�� 
if
�� 
(
�� 
m_DefaultShader
�� #
==
��$ &
null
��' +
)
��+ ,
m_DefaultShader
�� #
=
��$ %
Shader
��& ,
.
��, -
Find
��- 1
(
��1 2
ShaderUtils
��2 =
.
��= >

��> K
(
��K L
ShaderPathID
��L X
.
��X Y
Lit
��Y \
)
��\ ]
)
��] ^
;
��^ _
return
�� 
m_DefaultShader
�� &
;
��& '
}
�� 
}
�� 	
public
�� 
override
�� 
Shader
�� '
autodeskInteractiveShader
�� 8
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2#
autodeskInteractivePS
��2 G
;
��G H
}
��I J
}
�� 	
public
�� 
override
�� 
Shader
�� 2
$autodeskInteractiveTransparentShader
�� C
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2.
 autodeskInteractiveTransparentPS
��2 R
;
��R S
}
��T U
}
�� 	
public
�� 
override
�� 
Shader
�� -
autodeskInteractiveMaskedShader
�� >
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2)
autodeskInteractiveMaskedPS
��2 M
;
��M N
}
��O P
}
�� 	
public
�� 
override
�� 
Shader
�� $
terrainDetailLitShader
�� 5
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2 
terrainDetailLitPS
��2 D
;
��D E
}
��F G
}
�� 	
public
�� 
override
�� 
Shader
�� &
terrainDetailGrassShader
�� 7
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2"
terrainDetailGrassPS
��2 F
;
��F G
}
��H I
}
�� 	
public
�� 
override
�� 
Shader
�� /
!terrainDetailGrassBillboardShader
�� @
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2+
terrainDetailGrassBillboardPS
��2 O
;
��O P
}
��Q R
}
�� 	
public
�� 
override
�� 
Shader
�� %
defaultSpeedTree7Shader
�� 6
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2!
defaultSpeedTree7PS
��2 E
;
��E F
}
��G H
}
�� 	
public
�� 
override
�� 
Shader
�� %
defaultSpeedTree8Shader
�� 6
{
�� 	
get
�� 
{
�� 
return
�� 
editorResources
�� (
?
��( )
.
��) *
shaders
��* 1
.
��1 2!
defaultSpeedTree8PS
��2 E
;
��E F
}
��G H
}
�� 	
public
�� 
void
�� 
OnBeforeSerialize
�� %
(
��% &
)
��& '
{
�� 	
}
�� 	
public
�� 
void
��  
OnAfterDeserialize
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
k_AssetVersion
�� 
<
��  
$num
��! "
)
��" #
{
�� 
m_SoftShadowsSupported
�� &
=
��' (
(
��) *
m_ShadowType
��* 6
==
��7 9

��: G
.
��G H
SoftShadows
��H S
)
��S T
;
��T U$
k_AssetPreviousVersion
�� &
=
��' (
k_AssetVersion
��) 7
;
��7 8
k_AssetVersion
�� 
=
��  
$num
��! "
;
��" #
}
�� 
if
�� 
(
�� 
k_AssetVersion
�� 
<
��  
$num
��! "
)
��" #
{
�� 
!m_AdditionalLightShadowsSupported
�� 1
=
��2 3%
m_LocalShadowsSupported
��4 K
;
��K L3
%m_AdditionalLightsShadowmapResolution
�� 5
=
��6 7+
m_LocalShadowsAtlasResolution
��8 U
;
��U V.
 m_AdditionalLightsPerObjectLimit
�� 0
=
��1 2
m_MaxPixelLights
��3 C
;
��C D,
m_MainLightShadowmapResolution
�� .
=
��/ 0%
m_ShadowAtlasResolution
��1 H
;
��H I$
k_AssetPreviousVersion
�� &
=
��' (
k_AssetVersion
��) 7
;
��7 8
k_AssetVersion
�� 
=
��  
$num
��! "
;
��" #
}
�� 
if
�� 
(
�� 
k_AssetVersion
�� 
<
��  
$num
��! "
)
��" #
{
�� 
if
�� 
(
�� 
m_RendererType
�� "
==
��# %
RendererType
��& 2
.
��2 3
Custom
��3 9
)
��9 :
{
��  
m_RendererDataList
�� &
[
��& '
$num
��' (
]
��( )
=
��* +
m_RendererData
��, :
;
��: ;
}
�� $
k_AssetPreviousVersion
�� &
=
��' (
k_AssetVersion
��) 7
;
��7 8
k_AssetVersion
�� 
=
��  
$num
��! "
;
��" #
}
�� 
if
�� 
(
�� 
k_AssetVersion
�� 
<
��  
$num
��! "
)
��" #
{
�� 
int
�� 
value
�� 
=
�� 
(
�� 
int
��  
)
��  !
m_ShadowCascades
��! 1
;
��1 2
if
�� 
(
�� 
value
�� 
==
�� 
$num
�� 
)
�� 
{
�� "
m_ShadowCascadeCount
�� (
=
��) *
$num
��+ ,
;
��, -
}
�� 
else
�� 
{
�� "
m_ShadowCascadeCount
�� (
=
��) *
value
��+ 0
+
��1 2
$num
��3 4
;
��4 5
}
�� 
k_AssetVersion
�� 
=
��  
$num
��! "
;
��" #
}
�� 
if
�� 
(
�� $
k_AssetPreviousVersion
�� &
!=
��' )
k_AssetVersion
��* 8
)
��8 9
{
�� 
EditorApplication
�� !
.
��! "
	delayCall
��" +
+=
��, .
(
��/ 0
)
��0 1
=>
��2 4
UpgradeAsset
��5 A
(
��A B
this
��B F
)
��F G
;
��G H
}
�� 
}
�� 	
static
�� 
void
�� 
UpgradeAsset
��  
(
��  !*
UniversalRenderPipelineAsset
��! =
asset
��> C
)
��C D
{
�� 	
if
�� 
(
�� 
asset
�� 
.
�� $
k_AssetPreviousVersion
�� +
<
��, -
$num
��. /
)
��/ 0
{
�� 
if
�� 
(
�� 
asset
�� 
.
�� 
m_RendererType
�� (
==
��) +
RendererType
��, 8
.
��8 9
ForwardRenderer
��9 H
)
��H I
{
�� 
var
�� 
data
�� 
=
�� 

�� ,
.
��, -
LoadAssetAtPath
��- <
<
��< =!
ForwardRendererData
��= P
>
��P Q
(
��Q R
$str
��R p
)
��p q
;
��q r
if
�� 
(
�� 
data
�� 
)
�� 
{
�� 
asset
�� 
.
��  
m_RendererDataList
�� 0
[
��0 1
$num
��1 2
]
��2 3
=
��4 5
data
��6 :
;
��: ;
}
�� 
else
�� 
{
�� 
asset
�� 
.
�� %
LoadBuiltinRendererData
�� 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
asset
�� 
.
�� 
m_RendererData
�� (
=
��) *
null
��+ /
;
��/ 0
}
�� 
asset
�� 
.
�� $
k_AssetPreviousVersion
�� ,
=
��- .
$num
��/ 0
;
��0 1
}
�� 
}
�� 	
float
�� 
ValidateShadowBias
��  
(
��  !
float
��! &
value
��' ,
)
��, -
{
�� 	
return
�� 
Mathf
�� 
.
�� 
Max
�� 
(
�� 
$num
�� !
,
��! "
Mathf
��# (
.
��( )
Min
��) ,
(
��, -
value
��- 2
,
��2 3%
UniversalRenderPipeline
��4 K
.
��K L

��L Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 	
int
�� %
ValidatePerObjectLights
�� #
(
��# $
int
��$ '
value
��( -
)
��- .
{
�� 	
return
�� 
System
�� 
.
�� 
Math
�� 
.
�� 
Max
�� "
(
��" #
$num
��# $
,
��$ %
System
��& ,
.
��, -
Math
��- 1
.
��1 2
Min
��2 5
(
��5 6
value
��6 ;
,
��; <%
UniversalRenderPipeline
��= T
.
��T U 
maxPerObjectLights
��U g
)
��g h
)
��h i
;
��i j
}
�� 	
float
�� 
ValidateRenderScale
�� !
(
��! "
float
��" '
value
��( -
)
��- .
{
�� 	
return
�� 
Mathf
�� 
.
�� 
Max
�� 
(
�� %
UniversalRenderPipeline
�� 4
.
��4 5
minRenderScale
��5 C
,
��C D
Mathf
��E J
.
��J K
Min
��K N
(
��N O
value
��O T
,
��T U%
UniversalRenderPipeline
��V m
.
��m n
maxRenderScale
��n |
)
��| }
)
��} ~
;
��~ 
}
�� 	
internal
�� 
bool
�� &
ValidateRendererDataList
�� .
(
��. /
bool
��/ 3
partial
��4 ;
=
��< =
false
��> C
)
��C D
{
�� 	
var
�� 
emptyEntries
�� 
=
�� 
$num
��  
;
��  !
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
��  
m_RendererDataList
��  2
.
��2 3
Length
��3 9
;
��9 :
i
��; <
++
��< >
)
��> ?
emptyEntries
��@ L
+=
��M O"
ValidateRendererData
��P d
(
��d e
i
��e f
)
��f g
?
��h i
$num
��j k
:
��l m
$num
��n o
;
��o p
if
�� 
(
�� 
partial
�� 
)
�� 
return
�� 
emptyEntries
�� #
==
��$ &
$num
��' (
;
��( )
return
�� 
emptyEntries
�� 
!=
��  " 
m_RendererDataList
��# 5
.
��5 6
Length
��6 <
;
��< =
}
�� 	
internal
�� 
bool
�� "
ValidateRendererData
�� *
(
��* +
int
��+ .
index
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
index
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
index
�� "
=
��# $$
m_DefaultRendererIndex
��% ;
;
��; <
return
�� 
index
�� 
<
��  
m_RendererDataList
�� -
.
��- .
Length
��. 4
?
��5 6 
m_RendererDataList
��7 I
[
��I J
index
��J O
]
��O P
!=
��Q S
null
��T X
:
��Y Z
false
��[ `
;
��` a
}
�� 	
}
�� 
}�� �8
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\DepthOnlyPass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
public 

class 

:   
ScriptableRenderPass! 5
{ 
int
kDepthBufferBits
=
$num
;
private 
RenderTargetHandle "!
depthAttachmentHandle# 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
internal #
RenderTextureDescriptor (

descriptor) 3
{4 5
get6 9
;9 :
private; B
setC F
;F G
}H I
FilteringSettings 
m_FilteringSettings -
;- .
ShaderTagId 

=" #
new$ '
ShaderTagId( 3
(3 4
$str4 ?
)? @
;@ A
public 

( 
RenderPassEvent ,
evt- 0
,0 1
RenderQueueRange2 B
renderQueueRangeC S
,S T
	LayerMaskU ^
	layerMask_ h
)h i
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @

)M N
)N O
;O P
m_FilteringSettings 
=  !
new" %
FilteringSettings& 7
(7 8
renderQueueRange8 H
,H I
	layerMaskJ S
)S T
;T U
renderPassEvent 
= 
evt !
;! "
} 	
public"" 
void"" 
Setup"" 
("" #
RenderTextureDescriptor## #
baseDescriptor##$ 2
,##2 3
RenderTargetHandle$$ !
depthAttachmentHandle$$ 4
)$$4 5
{%% 	
this&& 
.&& !
depthAttachmentHandle&& &
=&&' (!
depthAttachmentHandle&&) >
;&&> ?
baseDescriptor'' 
.'' 
colorFormat'' &
=''' (
RenderTextureFormat'') <
.''< =
Depth''= B
;''B C
baseDescriptor(( 
.(( 
depthBufferBits(( *
=((+ ,
kDepthBufferBits((- =
;((= >
baseDescriptor++ 
.++ 
msaaSamples++ &
=++' (
$num++) *
;++* +

descriptor,, 
=,, 
baseDescriptor,, '
;,,' (
}-- 	
public// 
override// 
void// 

(//* +

cmd//9 <
,//< =
ref//> A


)//] ^
{00 	
cmd11 
.11 
GetTemporaryRT11 
(11 !
depthAttachmentHandle11 4
.114 5
id115 7
,117 8

descriptor119 C
,11C D

FilterMode11E O
.11O P
Point11P U
)11U V
;11V W
ConfigureTarget22 
(22 
new22 "
RenderTargetIdentifier22  6
(226 7!
depthAttachmentHandle227 L
.22L M

Identifier22M W
(22W X
)22X Y
,22Y Z
$num22[ \
,22\ ]
CubemapFace22^ i
.22i j
Unknown22j q
,22q r
-22s t
$num22t u
)22u v
)22v w
;22w x
ConfigureClear33 
(33 
	ClearFlag33 $
.33$ %
All33% (
,33( )
Color33* /
.33/ 0
black330 5
)335 6
;336 7
}44 	
public77 
override77 
void77 
Execute77 $
(77$ %#
ScriptableRenderContext77% <
context77= D
,77D E
ref77F I


)77e f
{88 	

cmd;; 
=;; 
CommandBufferPool;;  1
.;;1 2
Get;;2 5
(;;5 6
);;6 7
;;;7 8
using<< 
(<< 
new<< 
ProfilingScope<< %
(<<% &
cmd<<& )
,<<) *
ProfilingSampler<<+ ;
.<<; <
Get<<< ?
(<<? @
URPProfileId<<@ L
.<<L M
DepthPrepass<<M Y
)<<Y Z
)<<Z [
)<<[ \
{== 
context>> 
.>>  
ExecuteCommandBuffer>> ,
(>>, -
cmd>>- 0
)>>0 1
;>>1 2
cmd?? 
.?? 
Clear?? 
(?? 
)?? 
;?? 
varAA 
	sortFlagsAA 
=AA 

.AA- .

cameraDataAA. 8
.AA8 9"
defaultOpaqueSortFlagsAA9 O
;AAO P
varBB 
drawSettingsBB  
=BB! "!
CreateDrawingSettingsBB# 8
(BB8 9

,BBF G
refBBH K

,BBY Z
	sortFlagsBB[ d
)BBd e
;BBe f
drawSettingsCC 
.CC 

=CC+ ,

.CC: ;
NoneCC; ?
;CC? @
contextEE 
.EE 

(EE% &

.EE3 4
cullResultsEE4 ?
,EE? @
refEEA D
drawSettingsEEE Q
,EEQ R
refEES V
m_FilteringSettingsEEW j
)EEj k
;EEk l
}GG 
contextHH 
.HH  
ExecuteCommandBufferHH (
(HH( )
cmdHH) ,
)HH, -
;HH- .
CommandBufferPoolII 
.II 
ReleaseII %
(II% &
cmdII& )
)II) *
;II* +
}JJ 	
publicMM 
overrideMM 
voidMM 
OnCameraCleanupMM ,
(MM, -

cmdMM; >
)MM> ?
{NN 	
ifOO 
(OO 
cmdOO 
==OO 
nullOO 
)OO 
throwPP 
newPP !
ArgumentNullExceptionPP /
(PP/ 0
$strPP0 5
)PP5 6
;PP6 7
ifRR 
(RR !
depthAttachmentHandleRR %
!=RR& (
RenderTargetHandleRR) ;
.RR; <
CameraTargetRR< H
)RRH I
{SS 
cmdTT 
.TT 
ReleaseTemporaryRTTT &
(TT& '!
depthAttachmentHandleTT' <
.TT< =
idTT= ?
)TT? @
;TT@ A!
depthAttachmentHandleUU %
=UU& '
RenderTargetHandleUU( :
.UU: ;
CameraTargetUU; G
;UUG H
}VV 
}WW 	
}XX 
}YY �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\ColorAdjustments.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' J
)J K
]K L
public 

sealed 
class 
ColorAdjustments (
:) *
VolumeComponent+ :
,: ;!
IPostProcessComponent< Q
{ 
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public		 
FloatParameter		 
postExposure		 *
=		+ ,
new		- 0
FloatParameter		1 ?
(		? @
$num		@ B
)		B C
;		C D
[ 	
Tooltip	 
( 
$str H
)H I
]I J
public !
ClampedFloatParameter $
contrast% -
=. /
new0 3!
ClampedFloatParameter4 I
(I J
$numJ L
,L M
-N O
$numO S
,S T
$numU Y
)Y Z
;Z [
[ 	
Tooltip	 
( 
$str :
): ;
]; <
public 
ColorParameter 
colorFilter )
=* +
new, /
ColorParameter0 >
(> ?
Color? D
.D E
whiteE J
,J K
trueL P
,P Q
falseR W
,W X
trueY ]
)] ^
;^ _
[ 	
Tooltip	 
( 
$str /
)/ 0
]0 1
public !
ClampedFloatParameter $
hueShift% -
=. /
new0 3!
ClampedFloatParameter4 I
(I J
$numJ L
,L M
-N O
$numO S
,S T
$numU Y
)Y Z
;Z [
[ 	
Tooltip	 
( 
$str 6
)6 7
]7 8
public !
ClampedFloatParameter $

saturation% /
=0 1
new2 5!
ClampedFloatParameter6 K
(K L
$numL N
,N O
-P Q
$numQ U
,U V
$numW [
)[ \
;\ ]
public 
bool 
IsActive 
( 
) 
{ 	
return 
postExposure 
.  
value  %
!=& (
$num) +
|| 
contrast 
. 
value !
!=" $
$num% '
|| 
colorFilter 
!= !
Color" '
.' (
white( -
|| 
hueShift 
!= 
$num !
|| 

saturation 
!=  
$num! #
;# $
} 	
public   
bool   
IsTileCompatible   $
(  $ %
)  % &
=>  ' )
true  * .
;  . /
}!! 
}"" �5
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\TileDepthRangePass.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
internal 
class
TileDepthRangePass %
:& ' 
ScriptableRenderPass( <
{		 
DeferredLights

 
m_DeferredLights

 '
;

' (
int 
m_PassIndex 
= 
$num 
; 
public
TileDepthRangePass
(
RenderPassEvent
evt
,
DeferredLights
deferredLights
,
int
	passIndex
)
{ 	
base 
. 
profilingSampler !
=" #
new$ '
ProfilingSampler( 8
(8 9
nameof9 ?
(? @
TileDepthRangePass@ R
)R S
)S T
;T U
base 
. 
renderPassEvent  
=! "
evt# &
;& '
m_DeferredLights 
= 
deferredLights -
;- .
m_PassIndex 
= 
	passIndex #
;# $
} 	
public 
override 
void 
	Configure &
(& '

cmd5 8
,8 9#
RenderTextureDescriptor: Q#
cameraTextureDescriptorR i
)i j
{ 	
RenderTargetHandle 
	outputTex (
;( )#
RenderTextureDescriptor #
desc$ (
;( )
if 
( 
m_PassIndex 
== 
$num  
&&! #
m_DeferredLights$ 4
.4 5&
HasTileDepthRangeExtraPass5 O
(O P
)P Q
)Q R
{ 
int 
	alignment 
= 
$num  !
<<" $
DeferredConfig% 3
.3 4+
kTileDepthInfoIntermediateLevel4 S
;S T
int 
depthInfoWidth "
=# $
(% &
m_DeferredLights& 6
.6 7
RenderWidth7 B
+C D
	alignmentE N
-O P
$numQ R
)R S
>>T V
DeferredConfigW e
.e f,
kTileDepthInfoIntermediateLevel	f �
;
� �
int 
depthInfoHeight #
=$ %
(& '
m_DeferredLights' 7
.7 8
RenderHeight8 D
+E F
	alignmentG P
-Q R
$numS T
)T U
>>V X
DeferredConfigY g
.g h,
kTileDepthInfoIntermediateLevel	h �
;
� �
	outputTex   
=   
m_DeferredLights   ,
.  , -
DepthInfoTexture  - =
;  = >
desc!! 
=!! 
new!! #
RenderTextureDescriptor!! 2
(!!2 3
depthInfoWidth!!3 A
,!!A B
depthInfoHeight!!C R
,!!R S
UnityEngine!!T _
.!!_ `
Experimental!!` l
.!!l m
	Rendering!!m v
.!!v w
GraphicsFormat	!!w �
.
!!� �
R32_UInt
!!� �
,
!!� �
$num
!!� �
)
!!� �
;
!!� �
}"" 
else## 
{$$ 
int%% 
tileDepthRangeWidth%% '
=%%( )
m_DeferredLights%%* :
.%%: ;
GetTiler%%; C
(%%C D
$num%%D E
)%%E F
.%%F G

TileXCount%%G Q
;%%Q R
int&&  
tileDepthRangeHeight&& (
=&&) *
m_DeferredLights&&+ ;
.&&; <
GetTiler&&< D
(&&D E
$num&&E F
)&&F G
.&&G H

TileYCount&&H R
;&&R S
	outputTex(( 
=(( 
m_DeferredLights(( ,
.((, - 
TileDepthInfoTexture((- A
;((A B
desc)) 
=)) 
new)) #
RenderTextureDescriptor)) 2
())2 3
tileDepthRangeWidth))3 F
,))F G 
tileDepthRangeHeight))H \
,))\ ]
UnityEngine))^ i
.))i j
Experimental))j v
.))v w
	Rendering	))w �
.
))� �
GraphicsFormat
))� �
.
))� �
R32_UInt
))� �
,
))� �
$num
))� �
)
))� �
;
))� �
}** 
cmd++ 
.++ 
GetTemporaryRT++ 
(++ 
	outputTex++ (
.++( )
id++) +
,+++ ,
desc++- 1
,++1 2

FilterMode++3 =
.++= >
Point++> C
)++C D
;++D E
base,, 
.,, 
ConfigureTarget,,  
(,,  !
	outputTex,,! *
.,,* +

Identifier,,+ 5
(,,5 6
),,6 7
),,7 8
;,,8 9
}-- 	
public00 
override00 
void00 
Execute00 $
(00$ %#
ScriptableRenderContext00% <
context00= D
,00D E
ref00F I


)00e f
{11 	
if22 
(22 
m_PassIndex22 
==22 
$num22  
)22  !
m_DeferredLights33  
.33  !$
ExecuteTileDepthInfoPass33! 9
(339 :
context33: A
,33A B
ref33C F

)33T U
;33U V
else44 
m_DeferredLights55  
.55  !(
ExecuteDownsampleBitmaskPass55! =
(55= >
context55> E
,55E F
ref55G J

)55X Y
;55Y Z
}66 	
public99 
override99 
void99 
OnCameraCleanup99 ,
(99, -

cmd99; >
)99> ?
{:: 	
if;; 
(;; 
cmd;; 
==;; 
null;; 
);; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
$str<<0 5
)<<5 6
;<<6 7
cmd>> 
.>> 
ReleaseTemporaryRT>> "
(>>" #
m_DeferredLights>># 3
.>>3 4 
TileDepthInfoTexture>>4 H
.>>H I
id>>I K
)>>K L
;>>L M
m_DeferredLights?? 
.??  
TileDepthInfoTexture?? 1
=??2 3
RenderTargetHandle??4 F
.??F G
CameraTarget??G S
;??S T
}@@ 	
}AA 
}BB �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Shadows\ShadowCasterGroup2D.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
public 

abstract 
class 
ShadowCasterGroup2D -
:. /

{		 
[

 	
SerializeField

	 
]

 
internal

 !
int

" %


& 3
=

4 5
$num

6 7
;

7 8
List 
< 
ShadowCaster2D
> 
m_ShadowCasters ,
;, -
public
List
<
ShadowCaster2D
>
GetShadowCasters
(
)
{
return
m_ShadowCasters
;
}
public 
int 
GetShadowGroup !
(! "
)" #
{$ %
return& ,

;: ;
}< =
public 
void "
RegisterShadowCaster2D *
(* +
ShadowCaster2D+ 9
shadowCaster2D: H
)H I
{ 	
if 
( 
m_ShadowCasters 
==  "
null# '
)' (
m_ShadowCasters 
=  !
new" %
List& *
<* +
ShadowCaster2D+ 9
>9 :
(: ;
); <
;< =
m_ShadowCasters 
. 
Add 
(  
shadowCaster2D  .
). /
;/ 0
} 	
public 
void $
UnregisterShadowCaster2D ,
(, -
ShadowCaster2D- ;
shadowCaster2D< J
)J K
{ 	
if 
( 
m_ShadowCasters 
!=  "
null# '
)' (
m_ShadowCasters 
.  
Remove  &
(& '
shadowCaster2D' 5
)5 6
;6 7
} 	
} 
} �	
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\ComponentUtility.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

static 
class 
ComponentUtility (
{ 
public 
static 
bool 
IsUniversalCamera ,
(, -
Camera- 3
camera4 :
): ;
=>		 
camera		 
.		 
GetComponent		 "
<		" #)
UniversalAdditionalCameraData		# @
>		@ A
(		A B
)		B C
!=		D F
null		G K
;		K L
public 
static 
bool 
IsUniversalLight +
(+ ,
Light, 1
light2 7
)7 8
=> 
light 
. 
GetComponent !
<! "(
UniversalAdditionalLightData" >
>> ?
(? @
)@ A
!=B D
nullE I
;I J
} 
} �x
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Passes\RenderObjectsPass.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
[ 
	MovedFrom 
( 
$str 8
)8 9
]9 :
public; A
classB G
RenderObjectsPassH Y
:Z [ 
ScriptableRenderPass\ p
{		 
RenderQueueType

 
renderQueueType

 '
;

' (
FilteringSettings 
m_FilteringSettings -
;- .

.  
CustomCameraSettings *
m_CameraSettings+ ;
;; <
string

;
ProfilingSampler 
m_ProfilingSampler +
;+ ,
public 
Material 
overrideMaterial (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int %
overrideMaterialPassIndex ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
List 
< 
ShaderTagId
> 
m_ShaderTagIdList +
=, -
new. 1
List2 6
<6 7
ShaderTagId7 B
>B C
(C D
)D E
;E F
public 
void 

(! "
bool" &
writeEnabled' 3
,3 4
CompareFunction5 D
functionE M
=N O
CompareFunctionP _
._ `
Less` d
)d e
{ 	
m_RenderStateBlock 
. 
mask #
|=$ &
RenderStateMask' 6
.6 7
Depth7 <
;< =
m_RenderStateBlock 
. 

depthState )
=* +
new, /

DepthState0 :
(: ;
writeEnabled; G
,G H
functionI Q
)Q R
;R S
} 	
public 
void 
SetStencilState #
(# $
int$ '
	reference( 1
,1 2
CompareFunction3 B
compareFunctionC R
,R S
	StencilOpT ]
passOp^ d
,d e
	StencilOpf o
failOpp v
,v w
	StencilOp	x �
zFailOp
� �
)
� �
{ 	
StencilState 
stencilState %
=& '
StencilState( 4
.4 5
defaultValue5 A
;A B
stencilState 
. 
enabled  
=! "
true# '
;' (
stencilState 
. 
SetCompareFunction +
(+ ,
compareFunction, ;
); <
;< =
stencilState   
.   
SetPassOperation   )
(  ) *
passOp  * 0
)  0 1
;  1 2
stencilState!! 
.!! 
SetFailOperation!! )
(!!) *
failOp!!* 0
)!!0 1
;!!1 2
stencilState"" 
."" 
SetZFailOperation"" *
(""* +
zFailOp""+ 2
)""2 3
;""3 4
m_RenderStateBlock$$ 
.$$ 
mask$$ #
|=$$$ &
RenderStateMask$$' 6
.$$6 7
Stencil$$7 >
;$$> ?
m_RenderStateBlock%% 
.%% 
stencilReference%% /
=%%0 1
	reference%%2 ;
;%%; <
m_RenderStateBlock&& 
.&& 
stencilState&& +
=&&, -
stencilState&&. :
;&&: ;
}'' 	
RenderStateBlock)) 
m_RenderStateBlock)) +
;))+ ,
public++ 
RenderObjectsPass++  
(++  !
string++! '
profilerTag++( 3
,++3 4
RenderPassEvent++5 D
renderPassEvent++E T
,++T U
string++V \
[++\ ]
]++] ^

shaderTags++_ i
,++i j
RenderQueueType++k z
renderQueueType	++{ �
,
++� �
int
++� �
	layerMask
++� �
,
++� �

++� �
.
++� �"
CustomCameraSettings
++� �
cameraSettings
++� �
)
++� �
{,, 	
base-- 
.-- 
profilingSampler-- !
=--" #
new--$ '
ProfilingSampler--( 8
(--8 9
nameof--9 ?
(--? @
RenderObjectsPass--@ Q
)--Q R
)--R S
;--S T

=// 
profilerTag// '
;//' (
m_ProfilingSampler00 
=00  
new00! $
ProfilingSampler00% 5
(005 6
profilerTag006 A
)00A B
;00B C
this11 
.11 
renderPassEvent11  
=11! "
renderPassEvent11# 2
;112 3
this22 
.22 
renderQueueType22  
=22! "
renderQueueType22# 2
;222 3
this33 
.33 
overrideMaterial33 !
=33" #
null33$ (
;33( )
this44 
.44 %
overrideMaterialPassIndex44 *
=44+ ,
$num44- .
;44. /
RenderQueueRange55 
renderQueueRange55 -
=55. /
(550 1
renderQueueType551 @
==55A C
RenderQueueType55D S
.55S T
Transparent55T _
)55_ `
?66 
RenderQueueRange66 "
.66" #
transparent66# .
:77 
RenderQueueRange77 "
.77" #
opaque77# )
;77) *
m_FilteringSettings88 
=88  !
new88" %
FilteringSettings88& 7
(887 8
renderQueueRange888 H
,88H I
	layerMask88J S
)88S T
;88T U
if:: 
(:: 

shaderTags:: 
!=:: 
null:: "
&&::# %

shaderTags::& 0
.::0 1
Length::1 7
>::8 9
$num::: ;
)::; <
{;; 
foreach<< 
(<< 
var<< 
passName<< %
in<<& (

shaderTags<<) 3
)<<3 4
m_ShaderTagIdList== %
.==% &
Add==& )
(==) *
new==* -
ShaderTagId==. 9
(==9 :
passName==: B
)==B C
)==C D
;==D E
}>> 
else?? 
{@@ 
m_ShaderTagIdListAA !
.AA! "
AddAA" %
(AA% &
newAA& )
ShaderTagIdAA* 5
(AA5 6
$strAA6 G
)AAG H
)AAH I
;AAI J
m_ShaderTagIdListBB !
.BB! "
AddBB" %
(BB% &
newBB& )
ShaderTagIdBB* 5
(BB5 6
$strBB6 H
)BBH I
)BBI J
;BBJ K
m_ShaderTagIdListCC !
.CC! "
AddCC" %
(CC% &
newCC& )
ShaderTagIdCC* 5
(CC5 6
$strCC6 L
)CCL M
)CCM N
;CCN O
m_ShaderTagIdListDD !
.DD! "
AddDD" %
(DD% &
newDD& )
ShaderTagIdDD* 5
(DD5 6
$strDD6 J
)DDJ K
)DDK L
;DDL M
}EE 
m_RenderStateBlockGG 
=GG  
newGG! $
RenderStateBlockGG% 5
(GG5 6
RenderStateMaskGG6 E
.GGE F
NothingGGF M
)GGM N
;GGN O
m_CameraSettingsHH 
=HH 
cameraSettingsHH -
;HH- .
}JJ 	
internalLL 
RenderObjectsPassLL "
(LL" #
URPProfileIdLL# /
	profileIdLL0 9
,LL9 :
RenderPassEventLL; J
renderPassEventLLK Z
,LLZ [
stringLL\ b
[LLb c
]LLc d

shaderTagsLLe o
,LLo p
RenderQueueType	LLq �
renderQueueType
LL� �
,
LL� �
int
LL� �
	layerMask
LL� �
,
LL� �

LL� �
.
LL� �"
CustomCameraSettings
LL� �
cameraSettings
LL� �
)
LL� �
:MM 	
thisMM
 
(MM 
	profileIdMM 
.MM 
GetTypeMM  
(MM  !
)MM! "
.MM" #
NameMM# '
,MM' (
renderPassEventMM) 8
,MM8 9

shaderTagsMM: D
,MMD E
renderQueueTypeMMF U
,MMU V
	layerMaskMMW `
,MM` a
cameraSettingsMMb p
)MMp q
{NN 	
m_ProfilingSamplerOO 
=OO  
ProfilingSamplerOO! 1
.OO1 2
GetOO2 5
(OO5 6
	profileIdOO6 ?
)OO? @
;OO@ A
}PP 	
publicRR 
overrideRR 
voidRR 
ExecuteRR $
(RR$ %#
ScriptableRenderContextRR% <
contextRR= D
,RRD E
refRRF I


)RRe f
{SS 	
SortingCriteriaTT 
sortingCriteriaTT +
=TT, -
(TT. /
renderQueueTypeTT/ >
==TT? A
RenderQueueTypeTTB Q
.TTQ R
TransparentTTR ]
)TT] ^
?UU 
SortingCriteriaUU !
.UU! "
CommonTransparentUU" 3
:VV 

.VV  

cameraDataVV  *
.VV* +"
defaultOpaqueSortFlagsVV+ A
;VVA B
DrawingSettingsXX 
drawingSettingsXX +
=XX, -!
CreateDrawingSettingsXX. C
(XXC D
m_ShaderTagIdListXXD U
,XXU V
refXXW Z

,XXh i
sortingCriteriaXXj y
)XXy z
;XXz {
drawingSettingsYY 
.YY 
overrideMaterialYY ,
=YY- .
overrideMaterialYY/ ?
;YY? @
drawingSettingsZZ 
.ZZ %
overrideMaterialPassIndexZZ 5
=ZZ6 7%
overrideMaterialPassIndexZZ8 Q
;ZZQ R
ref\\ 

CameraData\\ 

cameraData\\ %
=\\& '
ref\\( +

.\\9 :

cameraData\\: D
;\\D E
Camera]] 
camera]] 
=]] 

cameraData]] &
.]]& '
camera]]' -
;]]- .
Rect`` 
	pixelRect`` 
=`` 

.``* +

cameraData``+ 5
.``5 6
	pixelRect``6 ?
;``? @
floataa 
cameraAspectaa 
=aa  
(aa! "
floataa" '
)aa' (
	pixelRectaa) 2
.aa2 3
widthaa3 8
/aa9 :
(aa; <
floataa< A
)aaA B
	pixelRectaaC L
.aaL M
heightaaM S
;aaS T

cmdee 
=ee 
CommandBufferPoolee  1
.ee1 2
Getee2 5
(ee5 6
)ee6 7
;ee7 8
usingff 
(ff 
newff 
ProfilingScopeff %
(ff% &
cmdff& )
,ff) *
m_ProfilingSamplerff+ =
)ff= >
)ff> ?
{gg 
ifhh 
(hh 
m_CameraSettingshh $
.hh$ %
overrideCamerahh% 3
)hh3 4
{ii 
ifjj 
(jj 

cameraDatajj "
.jj" #
xrjj# %
.jj% &
enabledjj& -
)jj- .
{kk 
Debugll 
.ll 

LogWarningll (
(ll( )
$str	ll) �
)
ll� �
;
ll� �
}mm 
elsenn 
{oo 
	Matrix4x4pp !
projectionMatrixpp" 2
=pp3 4
	Matrix4x4pp5 >
.pp> ?
Perspectivepp? J
(ppJ K
m_CameraSettingsppK [
.pp[ \
cameraFieldOfViewpp\ m
,ppm n
cameraAspectppo {
,pp{ |
cameraqq "
.qq" #

,qq0 1
cameraqq2 8
.qq8 9
farClipPlaneqq9 E
)qqE F
;qqF G
projectionMatrixrr (
=rr) *
GLrr+ -
.rr- ."
GetGPUProjectionMatrixrr. D
(rrD E
projectionMatrixrrE U
,rrU V

cameraDatarrW a
.rra b,
IsCameraProjectionMatrixFlipped	rrb �
(
rr� �
)
rr� �
)
rr� �
;
rr� �
	Matrix4x4tt !

viewMatrixtt" ,
=tt- .

cameraDatatt/ 9
.tt9 :

(ttG H
)ttH I
;ttI J
Vector4uu 
cameraTranslationuu  1
=uu2 3

viewMatrixuu4 >
.uu> ?
	GetColumnuu? H
(uuH I
$numuuI J
)uuJ K
;uuK L

viewMatrixvv "
.vv" #
	SetColumnvv# ,
(vv, -
$numvv- .
,vv. /
cameraTranslationvv0 A
+vvB C
m_CameraSettingsvvD T
.vvT U
offsetvvU [
)vv[ \
;vv\ ]
RenderingUtilsxx &
.xx& '(
SetViewAndProjectionMatricesxx' C
(xxC D
cmdxxD G
,xxG H

viewMatrixxxI S
,xxS T
projectionMatrixxxU e
,xxe f
falsexxg l
)xxl m
;xxm n
}yy 
}zz 
context|| 
.||  
ExecuteCommandBuffer|| ,
(||, -
cmd||- 0
)||0 1
;||1 2
cmd}} 
.}} 
Clear}} 
(}} 
)}} 
;}} 
context 
. 

(% &

.3 4
cullResults4 ?
,? @
refA D
drawingSettingsE T
,T U
refV Y
m_FilteringSettingsZ m
,m n
ref
��  
m_RenderStateBlock
�� *
)
��* +
;
��+ ,
if
�� 
(
�� 
m_CameraSettings
�� $
.
��$ %
overrideCamera
��% 3
&&
��4 6
m_CameraSettings
��7 G
.
��G H

��H U
&&
��V X
!
��Y Z

cameraData
��Z d
.
��d e
xr
��e g
.
��g h
enabled
��h o
)
��o p
{
�� 
RenderingUtils
�� "
.
��" #*
SetViewAndProjectionMatrices
��# ?
(
��? @
cmd
��@ C
,
��C D

cameraData
��E O
.
��O P

��P ]
(
��] ^
)
��^ _
,
��_ `

cameraData
��a k
.
��k l%
GetGPUProjectionMatrix��l �
(��� �
)��� �
,��� �
false��� �
)��� �
;��� �
}
�� 
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +
}
�� 	
}
�� 
}�� � 
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\ShadowsMidtonesHighlights.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' V
)V W
]W X
public 

sealed 
class %
ShadowsMidtonesHighlights 1
:2 3
VolumeComponent4 C
,C D!
IPostProcessComponentE Z
{ 
[ 	
Tooltip	 
( 
$str ?
)? @
]@ A
public		 
Vector4Parameter		 
shadows		  '
=		( )
new		* -
Vector4Parameter		. >
(		> ?
new		? B
Vector4		C J
(		J K
$num		K M
,		M N
$num		O Q
,		Q R
$num		S U
,		U V
$num		W Y
)		Y Z
)		Z [
;		[ \
[ 	
Tooltip	 
( 
$str @
)@ A
]A B
public 
Vector4Parameter 
midtones  (
=) *
new+ .
Vector4Parameter/ ?
(? @
new@ C
Vector4D K
(K L
$numL N
,N O
$numP R
,R S
$numT V
,V W
$numX Z
)Z [
)[ \
;\ ]
[ 	
Tooltip	 
( 
$str @
)@ A
]A B
public 
Vector4Parameter 

highlights  *
=+ ,
new- 0
Vector4Parameter1 A
(A B
newB E
Vector4F M
(M N
$numN P
,P Q
$numR T
,T U
$numV X
,X Y
$numZ \
)\ ]
)] ^
;^ _
[ 	
Tooltip	 
( 
$str N
)N O
]O P
public 
MinFloatParameter  
shadowsStart! -
=. /
new0 3
MinFloatParameter4 E
(E F
$numF H
,H I
$numJ L
)L M
;M N
[ 	
Tooltip	 
( 
$str L
)L M
]M N
public 
MinFloatParameter  

shadowsEnd! +
=, -
new. 1
MinFloatParameter2 C
(C D
$numD H
,H I
$numJ L
)L M
;M N
[ 	
Tooltip	 
( 
$str Q
)Q R
]R S
public 
MinFloatParameter  
highlightsStart! 0
=1 2
new3 6
MinFloatParameter7 H
(H I
$numI N
,N O
$numP R
)R S
;S T
[ 	
Tooltip	 
( 
$str O
)O P
]P Q
public 
MinFloatParameter  

=/ 0
new1 4
MinFloatParameter5 F
(F G
$numG I
,I J
$numK M
)M N
;N O
public 
bool 
IsActive 
( 
) 
{ 	
var 
defaultState 
= 
new "
Vector4# *
(* +
$num+ -
,- .
$num/ 1
,1 2
$num3 5
,5 6
$num7 9
)9 :
;: ;
return   
shadows   
!=   
defaultState   *
||!! 
midtones!! 
!=!! 
defaultState!! +
||"" 

highlights"" 
!=""  
defaultState""! -
;""- .
}## 	
public%% 
bool%% 
IsTileCompatible%% $
(%%$ %
)%%% &
=>%%' )
true%%* .
;%%. /
}&& 
}'' �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\StencilUsage.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
.) *
Internal* 2
{ 
enum 
StencilUsage	 
{ 
UserMask 
= 
$num (
,( )
StencilLight 
= 
$num (
,( )
MaterialMask 
= 
$num (
,( )

= 
$num (
,( )
MaterialLit 
= 
$num (
,( )
MaterialSimpleLit 
= 
$num (
} 
} �"
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\MotionBlur.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

enum 
MotionBlurMode 
{ 

CameraOnly 
, 
CameraAndObjects 
}		 
public 

enum 
MotionBlurQuality !
{ 
Low
,
Medium 
, 
High 
} 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' D
)D E
]E F
public 

sealed 
class 

MotionBlur "
:# $
VolumeComponent% 4
,4 5!
IPostProcessComponent6 K
{ 
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public #
MotionBlurModeParameter &
mode' +
=, -
new. 1#
MotionBlurModeParameter2 I
(I J
MotionBlurModeJ X
.X Y

CameraOnlyY c
)c d
;d e
[ 	
Tooltip	 
( 
$str 
)	 �
]
� �
public &
MotionBlurQualityParameter )
quality* 1
=2 3
new4 7&
MotionBlurQualityParameter8 R
(R S
MotionBlurQualityS d
.d e
Lowe h
)h i
;i j
[ 	
Tooltip	 
( 
$str _
)_ `
]` a
public !
ClampedFloatParameter $
	intensity% .
=/ 0
new1 4!
ClampedFloatParameter5 J
(J K
$numK M
,M N
$numO Q
,Q R
$numS U
)U V
;V W
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public !
ClampedFloatParameter $
clamp% *
=+ ,
new- 0!
ClampedFloatParameter1 F
(F G
$numG L
,L M
$numN P
,P Q
$numR V
)V W
;W X
public!! 
bool!! 
IsActive!! 
(!! 
)!! 
=>!! !
	intensity!!" +
.!!+ ,
value!!, 1
>!!2 3
$num!!4 6
&&!!7 9
mode!!: >
==!!? A
MotionBlurMode!!B P
.!!P Q

CameraOnly!!Q [
;!![ \
public## 
bool## 
IsTileCompatible## $
(##$ %
)##% &
=>##' )
false##* /
;##/ 0
}$$ 
[&& 
Serializable&& 
]&& 
public'' 

sealed'' 
class'' #
MotionBlurModeParameter'' /
:''0 1
VolumeParameter''2 A
<''A B
MotionBlurMode''B P
>''P Q
{''R S
public''T Z#
MotionBlurModeParameter''[ r
(''r s
MotionBlurMode	''s �
value
''� �
,
''� �
bool
''� �

''� �
=
''� �
false
''� �
)
''� �
:
''� �
base
''� �
(
''� �
value
''� �
,
''� �

''� �
)
''� �
{
''� �
}
''� �
}
''� �
[)) 
Serializable)) 
])) 
public** 

sealed** 
class** &
MotionBlurQualityParameter** 2
:**3 4
VolumeParameter**5 D
<**D E
MotionBlurQuality**E V
>**V W
{**X Y
public**Z `&
MotionBlurQualityParameter**a {
(**{ |
MotionBlurQuality	**| �
value
**� �
,
**� �
bool
**� �

**� �
=
**� �
false
**� �
)
**� �
:
**� �
base
**� �
(
**� �
value
**� �
,
**� �

**� �
)
**� �
{
**� �
}
**� �
}
**� �
}++ � 
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\Bloom.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' >
)> ?
]? @
public 

sealed 
class 
Bloom 
: 
VolumeComponent  /
,/ 0!
IPostProcessComponent1 F
{ 
[ 	
Tooltip	 
( 
$str ^
)^ _
]_ `
public		 
MinFloatParameter		  
	threshold		! *
=		+ ,
new		- 0
MinFloatParameter		1 B
(		B C
$num		C G
,		G H
$num		I K
)		K L
;		L M
[ 	
Tooltip	 
( 
$str 0
)0 1
]1 2
public 
MinFloatParameter  
	intensity! *
=+ ,
new- 0
MinFloatParameter1 B
(B C
$numC E
,E F
$numG I
)I J
;J K
[ 	
Tooltip	 
( 
$str 9
)9 :
]: ;
public !
ClampedFloatParameter $
scatter% ,
=- .
new/ 2!
ClampedFloatParameter3 H
(H I
$numI M
,M N
$numO Q
,Q R
$numS U
)U V
;V W
[ 	
Tooltip	 
( 
$str =
)= >
]> ?
public 
MinFloatParameter  
clamp! &
=' (
new) ,
MinFloatParameter- >
(> ?
$num? E
,E F
$numG I
)I J
;J K
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public 
ColorParameter 
tint "
=# $
new% (
ColorParameter) 7
(7 8
Color8 =
.= >
white> C
,C D
falseE J
,J K
falseL Q
,Q R
trueS W
)W X
;X Y
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public 

highQualityFiltering 1
=2 3
new4 7

(E F
falseF K
)K L
;L M
[ 	
Tooltip	 
( 
$str \
)\ ]
]] ^
public 
ClampedIntParameter "
skipIterations# 1
=2 3
new4 7
ClampedIntParameter8 K
(K L
$numL M
,M N
$numO P
,P Q
$numR T
)T U
;U V
[ 	
Tooltip	 
( 
$str P
)P Q
]Q R
public 
TextureParameter 
dirtTexture  +
=, -
new. 1
TextureParameter2 B
(B C
nullC G
)G H
;H I
[   	
Tooltip  	 
(   
$str   '
)  ' (
]  ( )
public!! 
MinFloatParameter!!  

=!!/ 0
new!!1 4
MinFloatParameter!!5 F
(!!F G
$num!!G I
,!!I J
$num!!K M
)!!M N
;!!N O
public## 
bool## 
IsActive## 
(## 
)## 
=>## !
	intensity##" +
.##+ ,
value##, 1
>##2 3
$num##4 6
;##6 7
public%% 
bool%% 
IsTileCompatible%% $
(%%$ %
)%%% &
=>%%' )
false%%* /
;%%/ 0
}&& 
}'' �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\ChromaticAberration.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' M
)M N
]N O
public 

sealed 
class 
ChromaticAberration +
:, -
VolumeComponent. =
,= >!
IPostProcessComponent? T
{ 
[ 	
Tooltip	 
( 
$str 3
)3 4
]4 5
public		 !
ClampedFloatParameter		 $
	intensity		% .
=		/ 0
new		1 4!
ClampedFloatParameter		5 J
(		J K
$num		K M
,		M N
$num		O Q
,		Q R
$num		S U
)		U V
;		V W
public 
bool 
IsActive 
( 
) 
=> !
	intensity" +
.+ ,
value, 1
>2 3
$num4 6
;6 7
public
bool
IsTileCompatible
(
)
=>
false
;
} 
} �"
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Deprecated.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public		 

abstract		 
partial		 
class		 ! 
ScriptableRenderPass		" 6
{

 
[ 	
EditorBrowsable	 
(  
EditorBrowsableState -
.- .
Never. 3
)3 4
]4 5
public
virtual
void
FrameCleanup
(

cmd
)
=>
OnCameraCleanup
(
cmd
)
;
} 
[ 
Obsolete 
(
$str H
,H I
falseJ O
)O P
]P Q
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
enum5 9 
ShadowCascadesOption: N
{ 

NoCascades 
, 
TwoCascades 
, 
FourCascades 
, 
} 
public 

partial 
class (
UniversalRenderPipelineAsset 5
{ 
[ 	
Obsolete	 
( 
$str L
,L M
falseN S
)S T
]T U
[ 	
SerializeField	 
]  
ShadowCascadesOption -
m_ShadowCascades. >
=? @ 
ShadowCascadesOptionA U
.U V

NoCascadesV `
;` a
[ 	
Obsolete	 
( 
$str L
,L M
falseN S
)S T
]T U
public  
ShadowCascadesOption #
shadowCascadeOption$ 7
{ 	
get   
{!! 
return"" 
shadowCascadeCount"" )
switch""* 0
{## 
$num$$ 
=>$$  
ShadowCascadesOption$$ -
.$$- .

NoCascades$$. 8
,$$8 9
$num%% 
=>%%  
ShadowCascadesOption%% -
.%%- .
TwoCascades%%. 9
,%%9 :
$num&& 
=>&&  
ShadowCascadesOption&& -
.&&- .
FourCascades&&. :
,&&: ;
_'' 
=>'' 
throw'' 
new'' "%
InvalidOperationException''# <
(''< =
$str	''= �
)
''� �
}(( 
;(( 
})) 
set** 
{++ 
switch,, 
(,, 
value,, 
),, 
{-- 
case..  
ShadowCascadesOption.. -
...- .

NoCascades... 8
:..8 9
shadowCascadeCount// *
=//+ ,
$num//- .
;//. /
break00 
;00 
case11  
ShadowCascadesOption11 -
.11- .
TwoCascades11. 9
:119 :
shadowCascadeCount22 *
=22+ ,
$num22- .
;22. /
break33 
;33 
case44  
ShadowCascadesOption44 -
.44- .
FourCascades44. :
:44: ;
shadowCascadeCount55 *
=55+ ,
$num55- .
;55. /
break66 
;66 
default77 
:77 
throw88 
new88 !%
InvalidOperationException88" ;
(88; <
$str	88< �
)
88� �
;
88� �
}99 
}:: 
};; 	
}== 
[?? 
	MovedFrom?? 
(?? 
$str?? +
)??+ ,
]??, -
public@@ 

abstract@@ 
partial@@ 
class@@ !
ScriptableRenderer@@" 4
{AA 
[CC 	
ObsoleteCC	 
(CC 
$strCC m
)CCm n
]CCn o
[DD 	
EditorBrowsableDD	 
(DD  
EditorBrowsableStateDD -
.DD- .
NeverDD. 3
)DD3 4
]DD4 5
publicEE "
RenderTargetIdentifierEE %
cameraDepthEE& 1
{FF 	
getGG 
=>GG 
m_CameraDepthTargetGG &
;GG& '
}HH 	
}II 
}JJ �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\LensDistortion.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' H
)H I
]I J
public 

sealed 
class 
LensDistortion &
:' (
VolumeComponent) 8
,8 9!
IPostProcessComponent: O
{ 
[ 	
Tooltip	 
( 
$str +
)+ ,
], -
public		 !
ClampedFloatParameter		 $
	intensity		% .
=		/ 0
new		1 4!
ClampedFloatParameter		5 J
(		J K
$num		K M
,		M N
-		O P
$num		P R
,		R S
$num		T V
)		V W
;		W X
[ 	
Tooltip	 
( 
$str b
)b c
]c d
public !
ClampedFloatParameter $
xMultiplier% 0
=1 2
new3 6!
ClampedFloatParameter7 L
(L M
$numM O
,O P
$numQ S
,S T
$numU W
)W X
;X Y
[ 	
Tooltip	 
( 
$str b
)b c
]c d
public !
ClampedFloatParameter $
yMultiplier% 0
=1 2
new3 6!
ClampedFloatParameter7 L
(L M
$numM O
,O P
$numQ S
,S T
$numU W
)W X
;X Y
[ 	
Tooltip	 
( 
$str +
)+ ,
], -
public 
Vector2Parameter 
center  &
=' (
new) ,
Vector2Parameter- =
(= >
new> A
Vector2B I
(I J
$numJ N
,N O
$numP T
)T U
)U V
;V W
[ 	
Tooltip	 
( 
$str )
)) *
]* +
public !
ClampedFloatParameter $
scale% *
=+ ,
new- 0!
ClampedFloatParameter1 F
(F G
$numG I
,I J
$numK P
,P Q
$numR T
)T U
;U V
public 
bool 
IsActive 
( 
) 
{ 	
return 
Mathf 
. 
Abs 
( 
	intensity &
.& '
value' ,
), -
>. /
$num0 1
&& 
( 
xMultiplier 
.  
value  %
>& '
$num( *
||+ -
yMultiplier. 9
.9 :
value: ?
>@ A
$numB D
)D E
;E F
} 	
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
false* /
;/ 0
} 
} �O
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Renderer2DData.cs
	namespace
UnityEngine
 
.
Experimental
.
	Rendering
.
	Universal
{ 
[ 
Serializable 
, 
ReloadGroup 
, 
ExcludeFromPreset  1
]1 2
[ 
	MovedFrom 
( 
$str 8
)8 9
]9 :
[ 
HelpURL 
( 
$str	
)
� �
]
� �
public 

partial 
class 
Renderer2DData '
:( )"
ScriptableRendererData* @
{ 
public 
enum )
Renderer2DDefaultMaterialType 1
{ 	
Lit 
, 
Unlit 
, 
Custom 
} 	
[ 	
SerializeField	 
]  
TransparencySortMode "
m_TransparencySortMode 3
=4 5 
TransparencySortMode6 J
.J K
DefaultK R
;R S
[ 	
SerializeField	 
] 
Vector3 "
m_TransparencySortAxis &
=' (
Vector3) 0
.0 1
up1 3
;3 4
[!! 	
SerializeField!!	 
]!! 
float"" 
m_HDREmulationScale"" !
=""" #
$num""$ %
;""% &
[$$ 	
SerializeField$$	 
,$$  
FormerlySerializedAs$$ -
($$- .
$str$$. A
)$$A B
]$$B C
Light2DBlendStyle%% 
[%% 
]%% 
m_LightBlendStyles%% .
=%%/ 0
null%%1 5
;%%5 6
['' 	
SerializeField''	 
]'' 
bool(( #
m_UseDepthStencilBuffer((
=((% &
true((' +
;((+ ,
[** 	
SerializeField**	 
,** 
Reload** 
(**  
$str**  A
)**A B
]**B C
Shader++ 
m_ShapeLightShader++ !
=++" #
null++$ (
;++( )
[-- 	
SerializeField--	 
,-- 
Reload-- 
(--  
$str--  L
)--L M
]--M N
Shader.. $
m_ShapeLightVolumeShader.. '
=..( )
null..* .
;... /
[00 	
SerializeField00	 
,00 
Reload00 
(00  
$str00  A
)00A B
]00B C
Shader11 
m_PointLightShader11 !
=11" #
null11$ (
;11( )
[33 	
SerializeField33	 
,33 
Reload33 
(33  
$str33  L
)33L M
]33M N
Shader44 $
m_PointLightVolumeShader44 '
=44( )
null44* .
;44. /
[66 	
SerializeField66	 
,66 
Reload66 
(66  
$str66  ;
)66; <
]66< =
Shader77 
m_BlitShader77 
=77 
null77 "
;77" #
[99 	
SerializeField99	 
,99 
Reload99 
(99  
$str99  A
)99A B
]99B C
Shader:: 
m_ShadowGroupShader:: "
=::# $
null::% )
;::) *
[<< 	
SerializeField<<	 
,<< 
Reload<< 
(<<  
$str<<  F
)<<F G
]<<G H
Shader== $
m_RemoveSelfShadowShader== '
===( )
null==* .
;==. /
[?? 	
SerializeField??	 
,?? 
Reload?? 
(??  
$str??  D
)??D E
]??E F
PostProcessData@@ 
m_PostProcessData@@ )
=@@* +
null@@, 0
;@@0 1
publicBB 
floatBB 
hdrEmulationScaleBB &
=>BB' )
m_HDREmulationScaleBB* =
;BB= >
publicCC 
Light2DBlendStyleCC  
[CC  !
]CC! "
lightBlendStylesCC# 3
=>CC4 6
m_LightBlendStylesCC7 I
;CCI J
internalDD 
boolDD !
useDepthStencilBufferDD +
=>DD, .#
m_UseDepthStencilBufferDD/ F
;DDF G
internalFF 
ShaderFF 
shapeLightShaderFF (
=>FF) +
m_ShapeLightShaderFF, >
;FF> ?
internalGG 
ShaderGG "
shapeLightVolumeShaderGG .
=>GG/ 1$
m_ShapeLightVolumeShaderGG2 J
;GGJ K
internalHH 
ShaderHH 
pointLightShaderHH (
=>HH) +
m_PointLightShaderHH, >
;HH> ?
internalII 
ShaderII "
pointLightVolumeShaderII .
=>II/ 1$
m_PointLightVolumeShaderII2 J
;IIJ K
internalJJ 
ShaderJJ 

blitShaderJJ "
=>JJ# %
m_BlitShaderJJ& 2
;JJ2 3
internalKK 
ShaderKK 
shadowGroupShaderKK )
=>KK* ,
m_ShadowGroupShaderKK- @
;KK@ A
internalLL 
ShaderLL "
removeSelfShadowShaderLL .
=>LL/ 1$
m_RemoveSelfShadowShaderLL2 J
;LLJ K
internalMM 
PostProcessDataMM  
postProcessDataMM! 0
=>MM1 3
m_PostProcessDataMM4 E
;MME F
internalNN  
TransparencySortModeNN % 
transparencySortModeNN& :
=>NN; ="
m_TransparencySortModeNN> T
;NNT U
internalOO 
Vector3OO  
transparencySortAxisOO -
=>OO. 0"
m_TransparencySortAxisOO1 G
;OOG H
	protectedQQ 
overrideQQ 
ScriptableRendererQQ -
CreateQQ. 4
(QQ4 5
)QQ5 6
{RR 	
ifTT 
(TT 
!TT 
ApplicationTT 
.TT 
	isPlayingTT &
)TT& '
{UU 
ResourceReloaderVV  
.VV  !
TryReloadAllNullInVV! 3
(VV3 4
thisVV4 8
,VV8 9(
UniversalRenderPipelineAssetVV: V
.VVV W
packagePathVVW b
)VVb c
;VVc d
ResourceReloaderWW  
.WW  !
TryReloadAllNullInWW! 3
(WW3 4
m_PostProcessDataWW4 E
,WWE F(
UniversalRenderPipelineAssetWWG c
.WWc d
packagePathWWd o
)WWo p
;WWp q
}XX 
returnZZ 
newZZ 

Renderer2DZZ !
(ZZ! "
thisZZ" &
)ZZ& '
;ZZ' (
}[[ 	
	protected]] 
override]] 
void]] 
OnEnable]]  (
(]]( )
)]]) *
{^^ 	
base__ 
.__ 
OnEnable__ 
(__ 
)__ 
;__ 
OnEnableInEditoraa 
(aa 
)aa 
;aa 
fordd 
(dd 
vardd 
idd 
=dd 
$numdd 
;dd 
idd 
<dd 
m_LightBlendStylesdd  2
.dd2 3
Lengthdd3 9
;dd9 :
++dd; =
idd= >
)dd> ?
{ee 
m_LightBlendStylesff "
[ff" #
iff# $
]ff$ %
.ff% &
renderTargetHandleff& 8
.ff8 9
Initff9 =
(ff= >
$"ff> @
_ShapeLightTextureff@ R
{ffR S
iffS T
}ffT U
"ffU V
)ffV W
;ffW X
}gg 
normalsRenderTargetii 
.ii  
Initii  $
(ii$ %
$strii% 1
)ii1 2
;ii2 3
shadowsRenderTargetjj 
.jj  
Initjj  $
(jj$ %
$strjj% 1
)jj1 2
;jj2 3
constll 
intll 
totalMaterialsll $
=ll% &
$numll' *
;ll* +
ifmm 
(mm 
shadowMaterialsmm 
==mm !
nullmm" &
||mm' )
shadowMaterialsmm* 9
.mm9 :
Lengthmm: @
==mmA C
$nummmD E
)mmE F
shadowMaterialsnn 
=nn  !
newnn" %
Materialnn& .
[nn. /
totalMaterialsnn/ =
]nn= >
;nn> ?
ifoo 
(oo %
removeSelfShadowMaterialsoo (
==oo) +
nulloo, 0
||oo1 3%
removeSelfShadowMaterialsoo4 M
.ooM N
LengthooN T
==ooU W
$numooX Y
)ooY Z%
removeSelfShadowMaterialspp )
=pp* +
newpp, /
Materialpp0 8
[pp8 9
totalMaterialspp9 G
]ppG H
;ppH I
}qq 	
internaltt 

Dictionarytt 
<tt 
uinttt  
,tt  !
Materialtt" *
>tt* +
lightMaterialstt, :
{tt; <
gettt= @
;tt@ A
}ttB C
=ttD E
newttF I

DictionaryttJ T
<ttT U
uintttU Y
,ttY Z
Materialtt[ c
>ttc d
(ttd e
)tte f
;ttf g
internaluu 
Materialuu 
[uu 
]uu 
shadowMaterialsuu +
{uu, -
getuu. 1
;uu1 2
privateuu3 :
setuu; >
;uu> ?
}uu@ A
internalvv 
Materialvv 
[vv 
]vv %
removeSelfShadowMaterialsvv 5
{vv6 7
getvv8 ;
;vv; <
privatevv= D
setvvE H
;vvH I
}vvJ K
internalxx 
RenderTargetHandlexx #
normalsRenderTargetxx$ 7
;xx7 8
internalyy 
RenderTargetHandleyy #
shadowsRenderTargetyy$ 7
;yy7 8
internal|| 
ILight2DCullResult|| #
lightCullResult||$ 3
{||4 5
get||6 9
;||9 :
set||; >
;||> ?
}||@ A
}}} 
}~~ ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Shadows\ShadowRendering.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
internal 
static
class 
ShadowRendering )
{ 
private 
static 
readonly 
int  #
k_LightPosID$ 0
=1 2
Shader3 9
.9 :
PropertyToID: F
(F G
$strG R
)R S
;S T
private		 
static		 
readonly		 
int		  #"
k_ShadowStencilGroupID		$ :
=		; <
Shader		= C
.		C D
PropertyToID		D P
(		P Q
$str		Q f
)		f g
;		g h
private

 
static

 
readonly

 
int

  #
k_ShadowIntensityID

$ 7
=

8 9
Shader

: @
.

@ A
PropertyToID

A M
(

M N
$str

N `
)

` a
;

a b
private 
static 
readonly 
int  #%
k_ShadowVolumeIntensityID$ =
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT l
)l m
;m n
private 
static 
readonly 
int  #
k_ShadowRadiusID$ 4
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK Z
)Z [
;[ \
private 
static 
Material 
GetShadowMaterial  1
(1 2
this2 6
Renderer2DData7 E
rendererDataF R
,R S
intT W
indexX ]
)] ^
{ 	
var 
shadowMaterialIndex #
=$ %
index& +
%, -
$num. 1
;1 2
if 
( 
rendererData 
. 
shadowMaterials ,
[, -
shadowMaterialIndex- @
]@ A
==B D
nullE I
)I J
{ 
rendererData 
. 
shadowMaterials ,
[, -
shadowMaterialIndex- @
]@ A
=B C
	CoreUtilsD M
.M N 
CreateEngineMaterialN b
(b c
rendererDatac o
.o p
shadowGroupShader	p �
)
� �
;
� �
rendererData 
. 
shadowMaterials ,
[, -
shadowMaterialIndex- @
]@ A
.A B
SetFloatB J
(J K"
k_ShadowStencilGroupIDK a
,a b
indexc h
)h i
;i j
} 
return 
rendererData 
.  
shadowMaterials  /
[/ 0
shadowMaterialIndex0 C
]C D
;D E
} 	
private 
static 
Material '
GetRemoveSelfShadowMaterial  ;
(; <
this< @
Renderer2DDataA O
rendererDataP \
,\ ]
int^ a
indexb g
)g h
{ 	
var 
shadowMaterialIndex #
=$ %
index& +
%, -
$num. 1
;1 2
if 
( 
rendererData 
. %
removeSelfShadowMaterials 6
[6 7
shadowMaterialIndex7 J
]J K
==L N
nullO S
)S T
{ 
rendererData 
. %
removeSelfShadowMaterials 6
[6 7
shadowMaterialIndex7 J
]J K
=L M
	CoreUtilsN W
.W X 
CreateEngineMaterialX l
(l m
rendererDatam y
.y z#
removeSelfShadowShader	z �
)
� �
;
� �
rendererData   
.   %
removeSelfShadowMaterials   6
[  6 7
shadowMaterialIndex  7 J
]  J K
.  K L
SetFloat  L T
(  T U"
k_ShadowStencilGroupID  U k
,  k l
index  m r
)  r s
;  s t
}!! 
return## 
rendererData## 
.##  %
removeSelfShadowMaterials##  9
[##9 :
shadowMaterialIndex##: M
]##M N
;##N O
}$$ 	
private&& 
static&& 
void&& %
CreateShadowRenderTexture&& 5
(&&5 6

pass&&D H
,&&H I


,&&e f

cmd&&u x
,&&x y
int&&z }
blendStyleIndex	&&~ �
)
&&� �
{'' 	
var(( 
renderTextureScale(( "
=((# $
Mathf((% *
.((* +
Clamp((+ 0
(((0 1
pass((1 5
.((5 6
rendererData((6 B
.((B C
lightBlendStyles((C S
[((S T
blendStyleIndex((T c
]((c d
.((d e
renderTextureScale((e w
,((w x
$num((y ~
,((~ 
$num
((� �
)
((� �
;
((� �
var)) 
width)) 
=)) 
()) 
int)) 
))) 
()) 

.))+ ,

cameraData)), 6
.))6 7"
cameraTargetDescriptor))7 M
.))M N
width))N S
*))T U
renderTextureScale))V h
)))h i
;))i j
var** 
height** 
=** 
(** 
int** 
)** 
(** 

.**, -

cameraData**- 7
.**7 8"
cameraTargetDescriptor**8 N
.**N O
height**O U
***V W
renderTextureScale**X j
)**j k
;**k l
var,, 

descriptor,, 
=,, 
new,,  #
RenderTextureDescriptor,,! 8
(,,8 9
width,,9 >
,,,> ?
height,,@ F
),,F G
;,,G H

descriptor-- 
.-- 
	useMipMap--  
=--! "
false--# (
;--( )

descriptor.. 
... 
autoGenerateMips.. '
=..( )
false..* /
;../ 0

descriptor// 
.// 
depthBufferBits// &
=//' (
$num//) +
;//+ ,

descriptor00 
.00 
graphicsFormat00 %
=00& '
GraphicsFormat00( 6
.006 7
R8G8B8A8_UNorm007 E
;00E F

descriptor11 
.11 
msaaSamples11 "
=11# $
$num11% &
;11& '

descriptor22 
.22 
	dimension22  
=22! "
TextureDimension22# 3
.223 4
Tex2D224 9
;229 :
cmd44 
.44 
GetTemporaryRT44 
(44 
pass44 #
.44# $
rendererData44$ 0
.440 1
shadowsRenderTarget441 D
.44D E
id44E G
,44G H

descriptor44I S
,44S T

FilterMode44U _
.44_ `
Bilinear44` h
)44h i
;44i j
}55 	
public77 
static77 
void77 

(77( )

pass777 ;
,77; <


,77X Y

	cmdBuffer77h q
,77q r
int77s v

,
77� �
Light2D
77� �
light
77� �
,
77� �
float
77� �
shadowIntensity
77� �
,
77� �$
RenderTargetIdentifier
77� �

77� �
,
77� �$
RenderTargetIdentifier
77� �
depthTexture
77� �
)
77� �
{88 	
	cmdBuffer99 
.99 
SetGlobalFloat99 $
(99$ %
k_ShadowIntensityID99% 8
,998 9
$num99: ;
-99< =
light99> C
.99C D
shadowIntensity99D S
)99S T
;99T U
	cmdBuffer:: 
.:: 
SetGlobalFloat:: $
(::$ %%
k_ShadowVolumeIntensityID::% >
,::> ?
$num::@ A
-::B C
light::D I
.::I J!
shadowVolumeIntensity::J _
)::_ `
;::` a
if<< 
(<< 
shadowIntensity<< 
><<  !
$num<<" #
)<<# $
{== 
CreateShadowRenderTexture>> )
(>>) *
pass>>* .
,>>. /

,>>= >
	cmdBuffer>>? H
,>>H I
light>>J O
.>>O P
blendStyleIndex>>P _
)>>_ `
;>>` a
	cmdBuffer@@ 
.@@ 
SetRenderTarget@@ )
(@@) *
pass@@* .
.@@. /
rendererData@@/ ;
.@@; <
shadowsRenderTarget@@< O
.@@O P

Identifier@@P Z
(@@Z [
)@@[ \
,@@\ ]"
RenderBufferLoadAction@@^ t
.@@t u
Load@@u y
,@@y z$
RenderBufferStoreAction	@@{ �
.
@@� �
Store
@@� �
,
@@� �$
RenderBufferLoadAction
@@� �
.
@@� �
DontCare
@@� �
,
@@� �%
RenderBufferStoreAction
@@� �
.
@@� �
DontCare
@@� �
)
@@� �
;
@@� �
	cmdBufferAA 
.AA 
ClearRenderTargetAA +
(AA+ ,
trueAA, 0
,AA0 1
trueAA2 6
,AA6 7
ColorAA8 =
.AA= >
blackAA> C
)AAC D
;AAD E
varCC 
shadowRadiusCC  
=CC! "
$numCC# (
*CC) *
lightCC+ 0
.CC0 1
boundingSphereCC1 ?
.CC? @
radiusCC@ F
;CCF G
	cmdBufferEE 
.EE 
SetGlobalVectorEE )
(EE) *
k_LightPosIDEE* 6
,EE6 7
lightEE8 =
.EE= >
	transformEE> G
.EEG H
positionEEH P
)EEP Q
;EEQ R
	cmdBufferFF 
.FF 
SetGlobalFloatFF (
(FF( )
k_ShadowRadiusIDFF) 9
,FF9 :
shadowRadiusFF; G
)FFG H
;FFH I
varHH 
shadowMaterialHH "
=HH# $
passHH% )
.HH) *
rendererDataHH* 6
.HH6 7
GetShadowMaterialHH7 H
(HHH I
$numHHI J
)HHJ K
;HHK L
varII $
removeSelfShadowMaterialII ,
=II- .
passII/ 3
.II3 4
rendererDataII4 @
.II@ A'
GetRemoveSelfShadowMaterialIIA \
(II\ ]
$numII] ^
)II^ _
;II_ `
varJJ 
shadowCasterGroupsJJ &
=JJ' (&
ShadowCasterGroup2DManagerJJ) C
.JJC D
shadowCasterGroupsJJD V
;JJV W
ifKK 
(KK 
shadowCasterGroupsKK &
!=KK' )
nullKK* .
&&KK/ 1
shadowCasterGroupsKK2 D
.KKD E
CountKKE J
>KKK L
$numKKM N
)KKN O
{LL 
varMM $
previousShadowGroupIndexMM 0
=MM1 2
-MM3 4
$numMM4 5
;MM5 6
varNN "
incrementingGroupIndexNN .
=NN/ 0
$numNN1 2
;NN2 3
forOO 
(OO 
varOO 
groupOO "
=OO# $
$numOO% &
;OO& '
groupOO( -
<OO. /
shadowCasterGroupsOO0 B
.OOB C
CountOOC H
;OOH I
groupOOJ O
++OOO Q
)OOQ R
{PP 
varQQ 
shadowCasterGroupQQ -
=QQ. /
shadowCasterGroupsQQ0 B
[QQB C
groupQQC H
]QQH I
;QQI J
varSS 

=SS* +
shadowCasterGroupSS, =
.SS= >
GetShadowCastersSS> N
(SSN O
)SSO P
;SSP Q
varUU 
shadowGroupIndexUU ,
=UU- .
shadowCasterGroupUU/ @
.UU@ A
GetShadowGroupUUA O
(UUO P
)UUP Q
;UUQ R
ifVV 
(VV 
LightUtilityVV (
.VV( )
CheckForChangeVV) 7
(VV7 8
shadowGroupIndexVV8 H
,VVH I
refVVJ M$
previousShadowGroupIndexVVN f
)VVf g
||VVh j
shadowGroupIndexVVk {
==VV| ~
$num	VV �
)
VV� �
{WW "
incrementingGroupIndexXX 2
++XX2 4
;XX4 5
shadowMaterialYY *
=YY+ ,
passYY- 1
.YY1 2
rendererDataYY2 >
.YY> ?
GetShadowMaterialYY? P
(YYP Q"
incrementingGroupIndexYYQ g
)YYg h
;YYh i$
removeSelfShadowMaterialZZ 4
=ZZ5 6
passZZ7 ;
.ZZ; <
rendererDataZZ< H
.ZZH I'
GetRemoveSelfShadowMaterialZZI d
(ZZd e"
incrementingGroupIndexZZe {
)ZZ{ |
;ZZ| }
}[[ 
if]] 
(]] 

!=]]* ,
null]]- 1
)]]1 2
{^^ 
for`` 
(``  !
var``! $
i``% &
=``' (
$num``) *
;``* +
i``, -
<``. /

.``= >
Count``> C
;``C D
i``E F
++``F H
)``H I
{aa 
varbb  #
shadowCasterbb$ 0
=bb1 2

[bb@ A
ibbA B
]bbB C
;bbC D
ifdd  "
(dd# $
shadowCasterdd$ 0
!=dd1 3
nulldd4 8
&&dd9 ;
shadowMaterialdd< J
!=ddK M
nullddN R
&&ddS U
shadowCasterddV b
.ddb c
IsShadowedLayerddc r
(ddr s

)
dd� �
)
dd� �
{ee  !
ifff$ &
(ff' (
shadowCasterff( 4
.ff4 5
castsShadowsff5 A
)ffA B
	cmdBuffergg( 1
.gg1 2
DrawMeshgg2 :
(gg: ;
shadowCastergg; G
.ggG H
meshggH L
,ggL M
shadowCasterggN Z
.ggZ [
	transformgg[ d
.ggd e
localToWorldMatrixgge w
,ggw x
shadowMaterial	ggy �
)
gg� �
;
gg� �
}hh  !
}ii 
forkk 
(kk  !
varkk! $
ikk% &
=kk' (
$numkk) *
;kk* +
ikk, -
<kk. /

.kk= >
Countkk> C
;kkC D
ikkE F
++kkF H
)kkH I
{ll 
varmm  #
shadowCastermm$ 0
=mm1 2

[mm@ A
immA B
]mmB C
;mmC D
ifoo  "
(oo# $
shadowCasteroo$ 0
!=oo1 3
nulloo4 8
&&oo9 ;
shadowMaterialoo< J
!=ooK M
nullooN R
&&ooS U
shadowCasterooV b
.oob c
IsShadowedLayerooc r
(oor s

)
oo� �
)
oo� �
{pp  !
ifqq$ &
(qq' (
shadowCasterqq( 4
.qq4 5!
useRendererSilhouetteqq5 J
)qqJ K
{rr$ %
varss( +
rendererss, 4
=ss5 6
shadowCasterss7 C
.ssC D
GetComponentssD P
<ssP Q
RendererssQ Y
>ssY Z
(ssZ [
)ss[ \
;ss\ ]
iftt( *
(tt+ ,
renderertt, 4
!=tt5 7
nulltt8 <
)tt< =
{uu( )
ifvv, .
(vv/ 0
!vv0 1
shadowCastervv1 =
.vv= >
selfShadowsvv> I
)vvI J
	cmdBufferww0 9
.ww9 :
DrawRendererww: F
(wwF G
rendererwwG O
,wwO P$
removeSelfShadowMaterialwwQ i
)wwi j
;wwj k
elsexx, 0
	cmdBufferyy0 9
.yy9 :
DrawRendereryy: F
(yyF G
rendereryyG O
,yyO P
shadowMaterialyyQ _
,yy_ `
$numyya b
,yyb c
$numyyd e
)yye f
;yyf g
}zz( )
}{{$ %
else||$ (
{}}$ %
if~~( *
(~~+ ,
!~~, -
shadowCaster~~- 9
.~~9 :
selfShadows~~: E
)~~E F
{( )
var
��, /
meshMat
��0 7
=
��8 9
shadowCaster
��: F
.
��F G
	transform
��G P
.
��P Q 
localToWorldMatrix
��Q c
;
��c d
	cmdBuffer
��, 5
.
��5 6
DrawMesh
��6 >
(
��> ?
shadowCaster
��? K
.
��K L
mesh
��L P
,
��P Q
meshMat
��R Y
,
��Y Z&
removeSelfShadowMaterial
��[ s
)
��s t
;
��t u
}
��( )
}
��$ %
}
��  !
}
�� 
}
�� 
}
�� 
}
�� 
	cmdBuffer
�� 
.
��  
ReleaseTemporaryRT
�� ,
(
��, -
pass
��- 1
.
��1 2
rendererData
��2 >
.
��> ?!
shadowsRenderTarget
��? R
.
��R S
id
��S U
)
��U V
;
��V W
	cmdBuffer
�� 
.
�� 
SetRenderTarget
�� )
(
��) *

��* 7
,
��7 8
depthTexture
��9 E
)
��E F
;
��F G
}
�� 
}
�� 	
}
�� 
}�� �!
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Light2DAuthoring.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
public 

sealed 
partial 
class 
Light2D  '
{ 
private		 
const		 
string		 
s_IconsPath		 (
=		) *
$str		+ ~
;		~ 
private

 
static

 
readonly

 
string

  &
[

& '
]

' ( 
s_LightIconFileNames

) =
=

> ?
new

@ C
[

D E
]

E F
{ 	
$str !
,! "
$str
,
$str 
, 
$str 
, 
$str 
} 	
;	 

private 
void 
OnDrawGizmos !
(! "
)" #
{ 	
Gizmos 
. 
color 
= 
Color  
.  !
blue! %
;% &
Gizmos 
. 
DrawIcon 
( 
	transform %
.% &
position& .
,. /
s_IconsPath0 ;
+< = 
s_LightIconFileNames> R
[R S
(S T
intT W
)W X
m_LightTypeX c
]c d
,d e
truef j
)j k
;k l
} 	
void 
Reset
( 
) 
{ 	
m_ShapePath 
= 
new 
Vector3 %
[% &
]& '
{( )
new* -
Vector3. 5
(5 6
-6 7
$num7 ;
,; <
-= >
$num> B
)B C
,C D
newE H
Vector3I P
(P Q
$numQ U
,U V
-W X
$numX \
)\ ]
,] ^
new_ b
Vector3c j
(j k
$numk o
,o p
$numq u
)u v
,v w
newx {
Vector3	| �
(
� �
-
� �
$num
� �
,
� �
$num
� �
)
� �
}
� �
;
� �
} 	
internal 
List 
< 
Vector2 
> 
GetFalloffShape .
(. /
)/ 0
{ 	
var   
shape   
=   
new   
List    
<    !
Vector2  ! (
>  ( )
(  ) *
)  * +
;  + ,
var!! 
extrusionDir!! 
=!! 
LightUtility!! +
.!!+ ,
GetFalloffShape!!, ;
(!!; <
m_ShapePath!!< G
)!!G H
;!!H I
for"" 
("" 
var"" 
i"" 
="" 
$num"" 
;"" 
i"" 
<"" 
m_ShapePath""  +
.""+ ,
Length"", 2
;""2 3
i""4 5
++""5 7
)""7 8
{## 
shape$$ 
.$$ 
Add$$ 
($$ 
new$$ 
Vector2$$ %
{%% 
x&& 
=&& 
m_ShapePath&& #
[&&# $
i&&$ %
]&&% &
.&&& '
x&&' (
+&&) *
this&&+ /
.&&/ 0!
shapeLightFalloffSize&&0 E
*&&F G
extrusionDir&&H T
[&&T U
i&&U V
]&&V W
.&&W X
x&&X Y
,&&Y Z
y'' 
='' 
m_ShapePath'' #
[''# $
i''$ %
]''% &
.''& '
y''' (
+'') *
this''+ /
.''/ 0!
shapeLightFalloffSize''0 E
*''F G
extrusionDir''H T
[''T U
i''U V
]''V W
.''W X
y''X Y
}(( 
)(( 
;(( 
})) 
return** 
shape** 
;** 
}++ 	
}.. 
}// �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\Vignette.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' A
)A B
]B C
public 

sealed 
class 
Vignette  
:! "
VolumeComponent# 2
,2 3!
IPostProcessComponent4 I
{ 
[ 	
Tooltip	 
( 
$str "
)" #
]# $
public		 
ColorParameter		 
color		 #
=		$ %
new		& )
ColorParameter		* 8
(		8 9
Color		9 >
.		> ?
black		? D
,		D E
false		F K
,		K L
false		M R
,		R S
true		T X
)		X Y
;		Y Z
[ 	
Tooltip	 
( 
$str O
)O P
]P Q
public 
Vector2Parameter 
center  &
=' (
new) ,
Vector2Parameter- =
(= >
new> A
Vector2B I
(I J
$numJ N
,N O
$numP T
)T U
)U V
;V W
[ 	
Tooltip	 
( 
$str 2
)2 3
]3 4
public !
ClampedFloatParameter $
	intensity% .
=/ 0
new1 4!
ClampedFloatParameter5 J
(J K
$numK M
,M N
$numO Q
,Q R
$numS U
)U V
;V W
[ 	
Tooltip	 
( 
$str 6
)6 7
]7 8
public !
ClampedFloatParameter $

smoothness% /
=0 1
new2 5!
ClampedFloatParameter6 K
(K L
$numL P
,P Q
$numR W
,W X
$numY [
)[ \
;\ ]
[ 	
Tooltip	 
( 
$str f
)f g
]g h
public 

rounded $
=% &
new' *

(8 9
false9 >
)> ?
;? @
public 
bool 
IsActive 
( 
) 
=> !
	intensity" +
.+ ,
value, 1
>2 3
$num4 6
;6 7
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
true* .
;. /
} 
} �)
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Data\UniversalRenderPipelineEditorResources.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
LWRP  $
{ 
[ 
Obsolete 
(
$str }
,} ~
true	 �
)
� �
]
� �
public 

class 4
(LightweightRenderPipelineEditorResources 9
{ 
}		 
}

 
	namespace
UnityEngine
 
.
	Rendering
.
	Universal
{ 
[ 
	MovedFrom 
( 
$str +
)+ ,
], -
public. 4
class5 :2
&UniversalRenderPipelineEditorResources; a
:b c
ScriptableObjectd t
{ 
[ 	
Serializable	 
, 
ReloadGroup "
]" #
public 
sealed 
class 
ShaderResources +
{ 	
[ 
Reload
( 
$str S
)S T
]T U
public 
Shader !
autodeskInteractivePS /
;/ 0
[ 
Reload
( 
$str _
)_ `
]` a
public 
Shader ,
 autodeskInteractiveTransparentPS :
;: ;
[ 
Reload
( 
$str Z
)Z [
][ \
public 
Shader '
autodeskInteractiveMaskedPS 5
;5 6
[ 
Reload
( 
$str =
)= >
]> ?
public 
Shader 
terrainDetailLitPS ,
;, -
[   
Reload  
(   
$str   8
)  8 9
]  9 :
public!! 
Shader!!  
terrainDetailGrassPS!! .
;!!. /
[## 
Reload##
(## 
$str## A
)##A B
]##B C
public$$ 
Shader$$ )
terrainDetailGrassBillboardPS$$ 7
;$$7 8
[&& 
Reload&&
(&& 
$str&& 6
)&&6 7
]&&7 8
public'' 
Shader'' 
defaultSpeedTree7PS'' -
;''- .
[)) 
Reload))
()) 
$str)) 6
)))6 7
]))7 8
public** 
Shader** 
defaultSpeedTree8PS** -
;**- .
}++ 	
[-- 	
Serializable--	 
,-- 
ReloadGroup-- "
]--" #
public.. 
sealed.. 
class.. 
MaterialResources.. -
{// 	
[00 
Reload00
(00 
$str00 /
)00/ 0
]000 1
public11 
Material11 
lit11 
;11  
[33 
Reload33
(33 
$str33 8
)338 9
]339 :
public44 
Material44 
particleLit44 '
;44' (
[66 
Reload66
(66 
$str66 6
)666 7
]667 8
public77 
Material77 

terrainLit77 &
;77& '
}88 	
public:: 
ShaderResources:: 
shaders:: &
;::& '
public;; 
MaterialResources;;  
	materials;;! *
;;;* +
}<< 
[?? 
UnityEditor?? 
.?? 
CustomEditor?? 
(?? 
typeof?? $
(??$ %2
&UniversalRenderPipelineEditorResources??% K
)??K L
,??L M
true??N R
)??R S
]??S T
class@@ 	8
,UniversalRenderPipelineEditorResourcesEditor@@
 6
:@@7 8
UnityEditor@@9 D
.@@D E
Editor@@E K
{AA 
publicBB 
overrideBB 
voidBB 
OnInspectorGUIBB +
(BB+ ,
)BB, -
{CC 	 
DrawDefaultInspectorDD  
(DD  !
)DD! "
;DD" #
ifGG 
(GG 
UnityEditorGG 
.GG 
EditorPrefsGG '
.GG' (
GetBoolGG( /
(GG/ 0
$strGG0 ?
)GG? @
&&GGA C
	GUILayoutGGD M
.GGM N
ButtonGGN T
(GGT U
$strGGU a
)GGa b
)GGb c
{HH 
varII 
	resourcesII 
=II 
targetII  &
asII' )2
&UniversalRenderPipelineEditorResourcesII* P
;IIP Q
	resourcesJJ 
.JJ 
	materialsJJ #
=JJ$ %
nullJJ& *
;JJ* +
	resourcesKK 
.KK 
shadersKK !
=KK" #
nullKK$ (
;KK( )
ResourceReloaderLL  
.LL  !
ReloadAllNullInLL! 0
(LL0 1
targetLL1 7
,LL7 8(
UniversalRenderPipelineAssetLL9 U
.LLU V
packagePathLLV a
)LLa b
;LLb c
}MM 
}NN 	
}OO 
}QQ ث
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\2D\Renderer2D.cs
	namespace 	
UnityEngine
 
. 
Experimental "
." #
	Rendering# ,
., -
	Universal- 6
{ 
internal 
class

Renderer2D 
: 
ScriptableRenderer  2
{ 
ColorGradingLutPass		 !
m_ColorGradingLutPass		 1
;		1 2 
Render2DLightingPass

 "
m_Render2DLightingPass

 3
;

3 4
PostProcessPass 
m_PostProcessPass )
;) *

m_FinalBlitPass %
;% &
PostProcessPass
m_FinalPostProcessPass
;
Light2DCullResult 
m_LightCullResult +
;+ ,
private 
static 
readonly 
ProfilingSampler  0
m_ProfilingSampler1 C
=D E
newF I
ProfilingSamplerJ Z
(Z [
$str[ s
)s t
;t u
bool #
m_UseDepthStencilBuffer
=% &
true' +
;+ ,
bool  
m_CreateColorTexture
;! "
bool  
m_CreateDepthTexture
;! "
readonly 
RenderTargetHandle # 
k_ColorTextureHandle$ 8
;8 9
readonly 
RenderTargetHandle # 
k_DepthTextureHandle$ 8
;8 9
readonly 
RenderTargetHandle #)
k_AfterPostProcessColorHandle$ A
;A B
readonly 
RenderTargetHandle ##
k_ColorGradingLutHandle$ ;
;; <
Material 
m_BlitMaterial 
;  
Renderer2DData 
m_Renderer2DData '
;' (
internal 
bool 
createColorTexture (
=>) + 
m_CreateColorTexture, @
;@ A
internal   
bool   
createDepthTexture   (
=>  ) + 
m_CreateDepthTexture  , @
;  @ A
public"" 

Renderer2D"" 
("" 
Renderer2DData"" (
data"") -
)""- .
:""/ 0
base""1 5
(""5 6
data""6 :
)"": ;
{## 	
m_BlitMaterial$$ 
=$$ 
	CoreUtils$$ &
.$$& ' 
CreateEngineMaterial$$' ;
($$; <
data$$< @
.$$@ A

blitShader$$A K
)$$K L
;$$L M!
m_ColorGradingLutPass&& !
=&&" #
new&&$ '
ColorGradingLutPass&&( ;
(&&; <
RenderPassEvent&&< K
.&&K L"
BeforeRenderingOpaques&&L b
,&&b c
data&&d h
.&&h i
postProcessData&&i x
)&&x y
;&&y z"
m_Render2DLightingPass'' "
=''# $
new''% ( 
Render2DLightingPass'') =
(''= >
data''> B
)''B C
;''C D
m_PostProcessPass(( 
=(( 
new((  #
PostProcessPass(($ 3
(((3 4
RenderPassEvent((4 C
.((C D)
BeforeRenderingPostProcessing((D a
,((a b
data((c g
.((g h
postProcessData((h w
,((w x
m_BlitMaterial	((y �
)
((� �
;
((� �"
m_FinalPostProcessPass)) "
=))# $
new))% (
PostProcessPass))) 8
())8 9
RenderPassEvent))9 H
.))H I(
AfterRenderingPostProcessing))I e
,))e f
data))g k
.))k l
postProcessData))l {
,)){ |
m_BlitMaterial	))} �
)
))� �
;
))� �
m_FinalBlitPass** 
=** 
new** !

(**/ 0
RenderPassEvent**0 ?
.**? @
AfterRendering**@ N
+**O P
$num**Q R
,**R S
m_BlitMaterial**T b
)**b c
;**c d#
m_UseDepthStencilBuffer,, #
=,,$ %
data,,& *
.,,* +!
useDepthStencilBuffer,,+ @
;,,@ A 
k_ColorTextureHandle00  
.00  !
Init00! %
(00% &
$str00& ;
)00; <
;00< = 
k_DepthTextureHandle11  
.11  !
Init11! %
(11% &
$str11& >
)11> ?
;11? @)
k_AfterPostProcessColorHandle22 )
.22) *
Init22* .
(22. /
$str22/ I
)22I J
;22J K#
k_ColorGradingLutHandle33 #
.33# $
Init33$ (
(33( )
$str33) >
)33> ?
;33? @
m_Renderer2DData55 
=55 
data55 #
;55# $&
supportedRenderingFeatures77 &
=77' (
new77) ,
RenderingFeatures77- >
(77> ?
)77? @
{88 
cameraStacking99 
=99  
true99! %
,99% &
}:: 
;::
m_LightCullResult<< 
=<< 
new<<  #
Light2DCullResult<<$ 5
(<<5 6
)<<6 7
;<<7 8
m_Renderer2DData== 
.== 
lightCullResult== ,
===- .
m_LightCullResult==/ @
;==@ A
}>> 	
	protected@@ 
override@@ 
void@@ 
Dispose@@  '
(@@' (
bool@@( ,
	disposing@@- 6
)@@6 7
{AA 	
m_PostProcessPassCC 
.CC 
CleanupCC %
(CC% &
)CC& '
;CC' ("
m_FinalPostProcessPassDD "
.DD" #
CleanupDD# *
(DD* +
)DD+ ,
;DD, -!
m_ColorGradingLutPassEE !
.EE! "
CleanupEE" )
(EE) *
)EE* +
;EE+ ,
	CoreUtilsGG 
.GG 
DestroyGG 
(GG 
m_BlitMaterialGG ,
)GG, -
;GG- .
}HH 	
publicJJ 
Renderer2DDataJJ 
GetRenderer2DDataJJ /
(JJ/ 0
)JJ0 1
{KK 	
returnLL 
m_Renderer2DDataLL #
;LL# $
}MM 	
voidOO  
CreateRenderTexturesOO
(OO! "
refPP 

CameraDataPP 

cameraDataPP %
,PP% &
boolQQ #
forceCreateColorTextureQQ (
,QQ( )

FilterModeRR "
colorTextureFilterModeRR -
,RR- .

cmdSS 
,SS 
outTT 
RenderTargetHandleTT "
colorTargetHandleTT# 4
,TT4 5
outUU 
RenderTargetHandleUU "
depthTargetHandleUU# 4
)UU4 5
{VV 	
refWW 
varWW "
cameraTargetDescriptorWW *
=WW+ ,
refWW- 0

cameraDataWW1 ;
.WW; <"
cameraTargetDescriptorWW< R
;WWR S
ifYY 
(YY 

cameraDataYY 
.YY 

renderTypeYY %
==YY& (
CameraRenderTypeYY) 9
.YY9 :
BaseYY: >
)YY> ?
{ZZ 
m_CreateColorTexture[[ $
=[[% &#
forceCreateColorTexture[[' >
||\\ 

cameraData\\ !
.\\! "
postProcessEnabled\\" 4
||]] 

cameraData]] !
.]]! "
isHdrEnabled]]" .
||^^ 

cameraData^^ !
.^^! "
isSceneViewCamera^^" 3
||__ 
!__ 

cameraData__ "
.__" #
isDefaultViewport__# 4
||`` 
!`` #
m_UseDepthStencilBuffer`` /
||aa 
!aa 

cameraDataaa "
.aa" #
resolveFinalTargetaa# 5
||bb 
!bb 
Mathfbb 
.bb 

(bb+ ,

cameraDatabb, 6
.bb6 7
renderScalebb7 B
,bbB C
$numbbD H
)bbH I
;bbI J 
m_CreateDepthTexturedd $
=dd% &
!dd' (

cameraDatadd( 2
.dd2 3
resolveFinalTargetdd3 E
&&ddF H#
m_UseDepthStencilBufferddI `
;dd` a
colorTargetHandleff !
=ff" # 
m_CreateColorTextureff$ 8
?ff9 : 
k_ColorTextureHandleff; O
:ffP Q
RenderTargetHandleffR d
.ffd e
CameraTargetffe q
;ffq r
depthTargetHandlegg !
=gg" # 
m_CreateDepthTexturegg$ 8
?gg9 : 
k_DepthTextureHandlegg; O
:ggP Q
colorTargetHandleggR c
;ggc d
ifii 
(ii  
m_CreateColorTextureii (
)ii( )
{jj 
varkk 
colorDescriptorkk '
=kk( )"
cameraTargetDescriptorkk* @
;kk@ A
colorDescriptorll #
.ll# $
depthBufferBitsll$ 3
=ll4 5 
m_CreateDepthTexturell6 J
||llK M
!llN O#
m_UseDepthStencilBufferllO f
?llg h
$numlli j
:llk l
$numllm o
;llo p
cmdmm 
.mm 
GetTemporaryRTmm &
(mm& ' 
k_ColorTextureHandlemm' ;
.mm; <
idmm< >
,mm> ?
colorDescriptormm@ O
,mmO P"
colorTextureFilterModemmQ g
)mmg h
;mmh i
}nn 
ifpp 
(pp  
m_CreateDepthTexturepp (
)pp( )
{qq 
varrr 
depthDescriptorrr '
=rr( )"
cameraTargetDescriptorrr* @
;rr@ A
depthDescriptorss #
.ss# $
colorFormatss$ /
=ss0 1
RenderTextureFormatss2 E
.ssE F
DepthssF K
;ssK L
depthDescriptortt #
.tt# $
depthBufferBitstt$ 3
=tt4 5
$numtt6 8
;tt8 9
depthDescriptoruu #
.uu# $
bindMSuu$ *
=uu+ ,
depthDescriptoruu- <
.uu< =
msaaSamplesuu= H
>uuI J
$numuuK L
&&uuM O
!uuP Q

SystemInfouuQ [
.uu[ \*
supportsMultisampleAutoResolveuu\ z
&&uu{ }
(uu~ 

SystemInfo	uu �
.
uu� �*
supportsMultisampledTextures
uu� �
!=
uu� �
$num
uu� �
)
uu� �
;
uu� �
cmdvv 
.vv 
GetTemporaryRTvv &
(vv& ' 
k_DepthTextureHandlevv' ;
.vv; <
idvv< >
,vv> ?
depthDescriptorvv@ O
,vvO P

FilterModevvQ [
.vv[ \
Pointvv\ a
)vva b
;vvb c
}ww 
}xx 
elseyy 
{zz 
m_CreateColorTexture}} $
=}}% &
true}}' +
;}}+ , 
m_CreateDepthTexture~~ $
=~~% &
true~~' +
;~~+ ,
colorTargetHandle
�� !
=
��" #"
k_ColorTextureHandle
��$ 8
;
��8 9
depthTargetHandle
�� !
=
��" #"
k_DepthTextureHandle
��$ 8
;
��8 9
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
Setup
�� "
(
��" #%
ScriptableRenderContext
��# :
context
��; B
,
��B C
ref
��D G

��H U

��V c
)
��c d
{
�� 	
ref
�� 

CameraData
�� 

cameraData
�� %
=
��& '
ref
��( +

��, 9
.
��9 :

cameraData
��: D
;
��D E
ref
�� 
var
�� $
cameraTargetDescriptor
�� *
=
��+ ,
ref
��- 0

cameraData
��1 ;
.
��; <$
cameraTargetDescriptor
��< R
;
��R S
bool
�� !
stackHasPostProcess
�� $
=
��% &

��' 4
.
��4 5#
postProcessingEnabled
��5 J
;
��J K
bool
�� 
lastCameraInStack
�� "
=
��# $

cameraData
��% /
.
��/ 0 
resolveFinalTarget
��0 B
;
��B C
var
�� $
colorTextureFilterMode
�� &
=
��' (

FilterMode
��) 3
.
��3 4
Bilinear
��4 <
;
��< = 
PixelPerfectCamera
�� 
ppc
�� "
=
��# $
null
��% )
;
��) *
bool
��  
ppcUsesOffscreenRT
�� #
=
��$ %
false
��& +
;
��+ ,
bool
�� 
ppcUpscaleRT
�� 
=
�� 
false
��  %
;
��% &
if
�� 
(
�� 

cameraData
�� 
.
�� 

renderType
�� %
==
��& (
CameraRenderType
��) 9
.
��9 :
Base
��: >
&&
��? A
lastCameraInStack
��B S
)
��S T
{
�� 

cameraData
�� 
.
�� 
camera
�� !
.
��! "
TryGetComponent
��" 1
(
��1 2
out
��2 5
ppc
��6 9
)
��9 :
;
��: ;
if
�� 
(
�� 
ppc
�� 
!=
�� 
null
�� 
)
��  
{
�� 
if
�� 
(
�� 
ppc
�� 
.
�� 
offscreenRTSize
�� +
!=
��, .

Vector2Int
��/ 9
.
��9 :
zero
��: >
)
��> ?
{
��  
ppcUsesOffscreenRT
�� *
=
��+ ,
true
��- 1
;
��1 2$
cameraTargetDescriptor
�� .
.
��. /
width
��/ 4
=
��5 6
ppc
��7 :
.
��: ;
offscreenRTSize
��; J
.
��J K
x
��K L
;
��L M$
cameraTargetDescriptor
�� .
.
��. /
height
��/ 5
=
��6 7
ppc
��8 ;
.
��; <
offscreenRTSize
��< K
.
��K L
y
��L M
;
��M N
}
�� $
colorTextureFilterMode
�� *
=
��+ ,
ppc
��- 0
.
��0 1!
finalBlitFilterMode
��1 D
;
��D E
ppcUpscaleRT
��  
=
��! "
ppc
��# &
.
��& '
	upscaleRT
��' 0
&&
��1 3
ppc
��4 7
.
��7 8
	isRunning
��8 A
;
��A B
}
�� 
}
�� 
RenderTargetHandle
�� 
colorTargetHandle
�� 0
;
��0 1 
RenderTargetHandle
�� 
depthTargetHandle
�� 0
;
��0 1

�� 
cmd
�� 
=
�� 
CommandBufferPool
��  1
.
��1 2
Get
��2 5
(
��5 6
)
��6 7
;
��7 8
using
�� 
(
�� 
new
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) * 
m_ProfilingSampler
��+ =
)
��= >
)
��> ?
{
�� 
CreateRenderTextures
�� $
(
��$ %
ref
��% (

cameraData
��) 3
,
��3 4 
ppcUsesOffscreenRT
��5 G
,
��G H$
colorTextureFilterMode
��I _
,
��_ `
cmd
��a d
,
��d e
out
�� 
colorTargetHandle
�� )
,
��) *
out
��+ .
depthTargetHandle
��/ @
)
��@ A
;
��A B
}
�� 
context
�� 
.
�� "
ExecuteCommandBuffer
�� (
(
��( )
cmd
��) ,
)
��, -
;
��- .
CommandBufferPool
�� 
.
�� 
Release
�� %
(
��% &
cmd
��& )
)
��) *
;
��* +#
ConfigureCameraTarget
�� !
(
��! "
colorTargetHandle
��" 3
.
��3 4

Identifier
��4 >
(
��> ?
)
��? @
,
��@ A
depthTargetHandle
��B S
.
��S T

Identifier
��T ^
(
��^ _
)
��_ `
)
��` a
;
��a b
if
�� 
(
�� !
stackHasPostProcess
�� #
&&
��$ &

cameraData
��' 1
.
��1 2

renderType
��2 <
==
��= ?
CameraRenderType
��@ P
.
��P Q
Base
��Q U
)
��U V
{
�� 
m_ColorGradingLutPass
�� %
.
��% &
Setup
��& +
(
��+ ,%
k_ColorGradingLutHandle
��, C
)
��C D
;
��D E
EnqueuePass
�� 
(
�� #
m_ColorGradingLutPass
�� 1
)
��1 2
;
��2 3
}
�� 
m_Render2DLightingPass
�� "
.
��" #
ConfigureTarget
��# 2
(
��2 3
colorTargetHandle
��3 D
.
��D E

Identifier
��E O
(
��O P
)
��P Q
,
��Q R
depthTargetHandle
��S d
.
��d e

Identifier
��e o
(
��o p
)
��p q
)
��q r
;
��r s
EnqueuePass
�� 
(
�� $
m_Render2DLightingPass
�� .
)
��. /
;
��/ 0
bool
�� )
requireFinalPostProcessPass
�� ,
=
��- .
lastCameraInStack
�� !
&&
��" $
!
��% &
ppcUpscaleRT
��& 2
&&
��3 5!
stackHasPostProcess
��6 I
&&
��J L

cameraData
��M W
.
��W X
antialiasing
��X d
==
��e g
AntialiasingMode
��h x
.
��x y*
FastApproximateAntialiasing��y �
;��� �
if
�� 
(
�� 

cameraData
�� 
.
��  
postProcessEnabled
�� -
)
��- .
{
�� 
RenderTargetHandle
�� "#
postProcessDestHandle
��# 8
=
��9 :
lastCameraInStack
�� %
&&
��& (
!
��) *
ppcUpscaleRT
��* 6
&&
��7 9
!
��: ;)
requireFinalPostProcessPass
��; V
?
��W X 
RenderTargetHandle
��Y k
.
��k l
CameraTarget
��l x
:
��y z,
k_AfterPostProcessColorHandle��{ �
;��� �
m_PostProcessPass
�� !
.
��! "
Setup
��" '
(
��' ($
cameraTargetDescriptor
�� *
,
��* +
colorTargetHandle
�� %
,
��% &#
postProcessDestHandle
�� )
,
��) *
depthTargetHandle
�� %
,
��% &%
k_ColorGradingLutHandle
�� +
,
��+ ,)
requireFinalPostProcessPass
�� /
,
��/ 0#
postProcessDestHandle
�� )
==
��* , 
RenderTargetHandle
��- ?
.
��? @
CameraTarget
��@ L
)
��L M
;
��M N
EnqueuePass
�� 
(
�� 
m_PostProcessPass
�� -
)
��- .
;
��. /
colorTargetHandle
�� !
=
��" ##
postProcessDestHandle
��$ 9
;
��9 :
}
�� 
if
�� 
(
�� )
requireFinalPostProcessPass
�� +
)
��+ ,
{
�� 
m_FinalPostProcessPass
�� &
.
��& '
SetupFinalPass
��' 5
(
��5 6
colorTargetHandle
��6 G
)
��G H
;
��H I
EnqueuePass
�� 
(
�� $
m_FinalPostProcessPass
�� 2
)
��2 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
lastCameraInStack
�� &
&&
��' )
colorTargetHandle
��* ;
!=
��< > 
RenderTargetHandle
��? Q
.
��Q R
CameraTarget
��R ^
)
��^ _
{
�� 
m_FinalBlitPass
�� 
.
��  
Setup
��  %
(
��% &$
cameraTargetDescriptor
��& <
,
��< =
colorTargetHandle
��> O
)
��O P
;
��P Q
EnqueuePass
�� 
(
�� 
m_FinalBlitPass
�� +
)
��+ ,
;
��, -
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� $
SetupCullingParameters
�� 3
(
��3 4
ref
��4 7)
ScriptableCullingParameters
��8 S
cullingParameters
��T e
,
��e f
ref
��g j

CameraData
��k u

cameraData��v �
)��� �
{
�� 	
cullingParameters
�� 
.
�� 
cullingOptions
�� ,
=
��- .
CullingOptions
��/ =
.
��= >
None
��> B
;
��B C
cullingParameters
�� 
.
�� 
isOrthographic
�� ,
=
��- .

cameraData
��/ 9
.
��9 :
camera
��: @
.
��@ A
orthographic
��A M
;
��M N
cullingParameters
�� 
.
�� 
shadowDistance
�� ,
=
��- .
$num
��/ 3
;
��3 4
m_LightCullResult
�� 
.
�� 
SetupCulling
�� *
(
��* +
ref
��+ .
cullingParameters
��/ @
,
��@ A

cameraData
��B L
.
��L M
camera
��M S
)
��S T
;
��T U
}
�� 	
public
�� 
override
�� 
void
�� 
FinishRendering
�� ,
(
��, -

��- :
cmd
��; >
)
��> ?
{
�� 	
if
�� 
(
�� "
m_CreateColorTexture
�� $
)
��$ %
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '"
k_ColorTextureHandle
��' ;
.
��; <
id
��< >
)
��> ?
;
��? @
if
�� 
(
�� "
m_CreateDepthTexture
�� $
)
��$ %
cmd
�� 
.
��  
ReleaseTemporaryRT
�� &
(
��& '"
k_DepthTextureHandle
��' ;
.
��; <
id
��< >
)
��> ?
;
��? @
}
�� 	
}
�� 
}�� ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\XR\XRSystem.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
internal
partial
class
XRSystem
{ 
internal 
readonly 
XRPass  
	emptyPass! *
=+ ,
new- 0
XRPass1 7
(7 8
)8 9
;9 :
List 
< 
XRPass
> 
framePasses  
=! "
new# &
List' +
<+ ,
XRPass, 2
>2 3
(3 4
)4 5
;5 6
static 
List 
< 
XRDisplaySubsystem &
>& '
displayList( 3
=4 5
new6 9
List: >
<> ?
XRDisplaySubsystem? Q
>Q R
(R S
)S T
;T U
XRDisplaySubsystem 
display( /
=0 1
null2 6
;6 7
static 
int 
	msaaLevel( 1
=2 3
$num4 5
;5 6
Material !
occlusionMeshMaterial( =
=> ?
null@ D
;D E
Material 
mirrorViewMaterial( :
=; <
null= A
;A B!
MaterialPropertyBlock &
mirrorViewMaterialProperty( B
=C D
newE H!
MaterialPropertyBlockI ^
(^ _
)_ `
;` a

testRenderTexture   '
=  ( )
null  * .
;  . /
const"" 
string"" 

=""# $
$str""% 5
;""5 6
static## 
ProfilingSampler## %
_XRMirrorProfilingSampler##  9
=##: ;
new##< ?
ProfilingSampler##@ P
(##P Q

)##^ _
;##_ `
internal%% 
XRSystem%% 
(%% 
)%% 
{&& 	
RefreshXrSdk'' 
('' 
)'' 
;'' 
	TextureXR)) 
.)) 
maxViews)) 
=))  
Math))! %
.))% &
Max))& )
())) *
	TextureXR))* 3
.))3 4
slices))4 :
,)): ;
GetMaxViews))< G
())G H
)))H I
)))I J
;))J K
}** 	
internal,, 
void,, "
InitializeXRSystemData,, ,
(,,, -
XRSystemData,,- 9
data,,: >
),,> ?
{-- 	
if.. 
(.. 
data.. 
).. 
{// 
if00 
(00 !
occlusionMeshMaterial00 )
!=00* ,
null00- 1
)001 2
	CoreUtils11 
.11 
Destroy11 %
(11% &!
occlusionMeshMaterial11& ;
)11; <
;11< =
if33 
(33 
mirrorViewMaterial33 &
!=33' )
null33* .
)33. /
	CoreUtils44 
.44 
Destroy44 %
(44% &
mirrorViewMaterial44& 8
)448 9
;449 :!
occlusionMeshMaterial66 %
=66& '
	CoreUtils66( 1
.661 2 
CreateEngineMaterial662 F
(66F G
data66G K
.66K L
shaders66L S
.66S T
xrOcclusionMeshPS66T e
)66e f
;66f g
mirrorViewMaterial77 "
=77# $
	CoreUtils77% .
.77. / 
CreateEngineMaterial77/ C
(77C D
data77D H
.77H I
shaders77I P
.77P Q
xrMirrorViewPS77Q _
)77_ `
;77` a
}88 
}99 	
static;; 
void;; 
GetDisplaySubsystem;; '
(;;' (
);;( )
{<< 	
SubsystemManager?? 
.?? 
GetInstances?? )
(??) *
displayList??* 5
)??5 6
;??6 7
}CC 	
[FF 	)
RuntimeInitializeOnLoadMethodFF	 &
(FF& '%
RuntimeInitializeLoadTypeFF' @
.FF@ A
BeforeSplashScreenFFA S
)FFS T
]FFT U
internalGG 
staticGG 
voidGG 
XRSystemInitGG )
(GG) *
)GG* +
{HH 	
ifII 
(II 
GraphicsSettingsII  
.II  !!
currentRenderPipelineII! 6
==II7 9
nullII: >
)II> ?
returnJJ 
;JJ 
GetDisplaySubsystemLL 
(LL  
)LL  !
;LL! "
forOO 
(OO 
intOO 
iOO 
=OO 
$numOO 
;OO 
iOO 
<OO 
displayListOO  +
.OO+ ,
CountOO, 1
;OO1 2
iOO3 4
++OO4 6
)OO6 7
{PP 
displayListQQ 
[QQ 
iQQ 
]QQ 
.QQ !
disableLegacyRendererQQ 4
=QQ5 6
trueQQ7 ;
;QQ; <
displayListRR 
[RR 
iRR 
]RR 
.RR 

=RR- .
XRDisplaySubsystemRR/ A
.RRA B

.RRO P
Texture2DArrayRRP ^
;RR^ _
displayListSS 
[SS 
iSS 
]SS 
.SS 
sRGBSS #
=SS$ %
QualitySettingsSS& 5
.SS5 6
activeColorSpaceSS6 F
==SSG I

ColorSpaceSSJ T
.SST U
LinearSSU [
;SS[ \
}TT 
}UU 	
internalWW 
staticWW 
voidWW 
UpdateMSAALevelWW ,
(WW, -
intWW- 0
levelWW1 6
)WW6 7
{XX 	
ifYY 
(YY 
	msaaLevelYY 
==YY 
levelYY "
)YY" #
returnZZ 
;ZZ 
level\\ 
=\\ 
Mathf\\ 
.\\ 
NextPowerOfTwo\\ (
(\\( )
level\\) .
)\\. /
;\\/ 0
level]] 
=]] 
Mathf]] 
.]] 
Clamp]] 
(]]  
level]]  %
,]]% &
(]]' (
int]]( +
)]]+ ,
MsaaQuality]], 7
.]]7 8
Disabled]]8 @
,]]@ A
(]]B C
int]]C F
)]]F G
MsaaQuality]]G R
.]]R S
_8x]]S V
)]]V W
;]]W X
GetDisplaySubsystem__ 
(__  
)__  !
;__! "
forbb 
(bb 
intbb 
ibb 
=bb 
$numbb 
;bb 
ibb 
<bb 
displayListbb  +
.bb+ ,
Countbb, 1
;bb1 2
ibb3 4
++bb4 6
)bb6 7
displayListcc 
[cc 
icc 
]cc 
.cc 
SetMSAALevelcc +
(cc+ ,
levelcc, 1
)cc1 2
;cc2 3
	msaaLevelee 
=ee 
levelee 
;ee 
}ff 	
internalhh 
statichh 
inthh 
GetMSAALevelhh (
(hh( )
)hh) *
{ii 	
returnjj 
	msaaLeveljj 
;jj 
}kk 	
internalmm 
staticmm 
voidmm 
UpdateRenderScalemm .
(mm. /
floatmm/ 4
renderScalemm5 @
)mm@ A
{nn 	
GetDisplaySubsystemoo 
(oo  
)oo  !
;oo! "
forqq 
(qq 
intqq 
iqq 
=qq 
$numqq 
;qq 
iqq 
<qq 
displayListqq  +
.qq+ ,
Countqq, 1
;qq1 2
iqq3 4
++qq4 6
)qq6 7
displayListrr 
[rr 
irr 
]rr 
.rr #
scaleOfAllRenderTargetsrr 6
=rr7 8
renderScalerr9 D
;rrD E
}ss 	
internalvv 
intvv 
GetMaxViewsvv  
(vv  !
)vv! "
{ww 	
intxx 
maxViewsxx 
=xx 
$numxx 
;xx 
ifzz 
(zz 
displayzz 
!=zz 
nullzz 
)zz  
{{{ 
maxViews}} 
=}} 
$num}} 
;}} 
}~~ 
else
�� 
if
�� 
(
�� &
XRGraphicsAutomatedTests
�� -
.
��- .
enabled
��. 5
)
��5 6
{
�� 
maxViews
�� 
=
�� 
Math
�� 
.
��  
Max
��  #
(
��# $
maxViews
��$ ,
,
��, -
$num
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
maxViews
�� 
;
�� 
}
�� 	
internal
�� 
List
�� 
<
�� 
XRPass
�� 
>
�� 

SetupFrame
�� (
(
��( )

CameraData
��) 3

cameraData
��4 >
)
��> ?
{
�� 	
Camera
�� 
camera
�� 
=
�� 

cameraData
�� &
.
��& '
camera
��' -
;
��- .
bool
�� 
	xrEnabled
�� 
=
�� 
RefreshXrSdk
�� )
(
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 
display
�� 
!=
�� 
null
�� 
)
��  
{
�� 
display
�� 
.
�� 

�� %
=
��& ' 
XRDisplaySubsystem
��( :
.
��: ;

��; H
.
��H I
Texture2DArray
��I W
;
��W X
display
�� 
.
�� 
zNear
�� 
=
�� 
camera
��  &
.
��& '

��' 4
;
��4 5
display
�� 
.
�� 
zFar
�� 
=
�� 
camera
��  &
.
��& '
farClipPlane
��' 3
;
��3 4
display
�� 
.
�� 
sRGB
�� 
=
�� 
QualitySettings
��  /
.
��/ 0
activeColorSpace
��0 @
==
��A C

ColorSpace
��D N
.
��N O
Linear
��O U
;
��U V
}
�� 
if
�� 
(
�� 
framePasses
�� 
.
�� 
Count
�� !
>
��" #
$num
��$ %
)
��% &
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! J
)
��J K
;
��K L
ReleaseFrame
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
camera
�� 
==
�� 
null
�� 
)
�� 
return
�� 
framePasses
�� "
;
��" #
bool
�� 
isGameCamera
�� 
=
�� 
(
��  !
camera
��! '
.
��' (

cameraType
��( 2
==
��3 5

CameraType
��6 @
.
��@ A
Game
��A E
||
��F H
camera
��I O
.
��O P

cameraType
��P Z
==
��[ ]

CameraType
��^ h
.
��h i
VR
��i k
)
��k l
;
��l m
bool
�� 
xrSupported
�� 
=
�� 
isGameCamera
�� +
&&
��, .
camera
��/ 5
.
��5 6

��6 C
==
��D F
null
��G K
&&
��L N

cameraData
��O Y
.
��Y Z
xrRendering
��Z e
;
��e f
if
�� 
(
�� &
XRGraphicsAutomatedTests
�� (
.
��( )
enabled
��) 0
&&
��1 3&
XRGraphicsAutomatedTests
��4 L
.
��L M
running
��M T
&&
��U W
isGameCamera
��X d
&&
��e g'
LayoutSinglePassTestMode��h �
(��� �

cameraData��� �
,��� �
new��� �
XRLayout��� �
(��� �
)��� �
{��� �
camera��� �
=��� �
camera��� �
,��� �
xrSystem��� �
=��� �
this��� �
}��� �
)��� �
)��� �
{
�� 
}
�� 
else
�� 
if
�� 
(
�� 
	xrEnabled
�� 
&&
�� 
xrSupported
�� (
)
��( )
{
�� 
if
�� 
(
�� 
Application
�� 
.
��  
platform
��  (
==
��) +
RuntimePlatform
��, ;
.
��; <
Android
��< C
)
��C D
QualitySettings
�� #
.
��# $

vSyncCount
��$ .
=
��/ 0
$num
��1 2
;
��2 3
else
�� 
QualitySettings
�� #
.
��# $

vSyncCount
��$ .
=
��/ 0
$num
��1 2
;
��2 3#
CreateLayoutFromXrSdk
�� %
(
��% &
camera
��& ,
,
��, -
singlePassAllowed
��. ?
:
��? @
true
��A E
)
��E F
;
��F G
}
�� 
else
�� 
{
�� 
AddPassToFrame
�� 
(
�� 
	emptyPass
�� (
)
��( )
;
��) *
}
�� 
return
�� 
framePasses
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
ReleaseFrame
�� "
(
��" #
)
��# $
{
�� 	
foreach
�� 
(
�� 
XRPass
�� 
xrPass
�� "
in
��# %
framePasses
��& 1
)
��1 2
{
�� 
if
�� 
(
�� 
xrPass
�� 
!=
�� 
	emptyPass
�� '
)
��' (
XRPass
�� 
.
�� 
Release
�� "
(
��" #
xrPass
��# )
)
��) *
;
��* +
}
�� 
framePasses
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
if
�� 
(
�� 
testRenderTexture
�� !
)
��! "

�� 
.
�� 
ReleaseTemporary
�� .
(
��. /
testRenderTexture
��/ @
)
��@ A
;
��A B
}
�� 	
internal
�� 
bool
�� 
RefreshXrSdk
�� "
(
��" #
)
��# $
{
�� 	!
GetDisplaySubsystem
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
displayList
�� 
.
�� 
Count
�� !
>
��" #
$num
��$ %
)
��% &
{
�� 
if
�� 
(
�� 
displayList
�� 
.
��  
Count
��  %
>
��& '
$num
��( )
)
��) *
throw
�� 
new
�� %
NotImplementedException
�� 5
(
��5 6
$str
��6 W
)
��W X
;
��X Y
display
�� 
=
�� 
displayList
�� %
[
��% &
$num
��& '
]
��' (
;
��( )
display
�� 
.
�� #
disableLegacyRenderer
�� -
=
��. /
true
��0 4
;
��4 5
	TextureXR
�� 
.
�� 
maxViews
�� "
=
��# $
Math
��% )
.
��) *
Max
��* -
(
��- .
	TextureXR
��. 7
.
��7 8
slices
��8 >
,
��> ?
GetMaxViews
��@ K
(
��K L
)
��L M
)
��M N
;
��N O
return
�� 
display
�� 
.
�� 
running
�� &
;
��& '
}
�� 
else
�� 
{
�� 
display
�� 
=
�� 
null
�� 
;
�� 
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
�� 
void
�� 
UpdateCameraData
�� &
(
��& '
ref
��' *

CameraData
��+ 5
baseCameraData
��6 D
,
��D E
in
��F H
XRPass
��I O
xr
��P R
)
��R S
{
�� 	
Rect
�� 

cameraRect
�� 
=
�� 
baseCameraData
�� ,
.
��, -
camera
��- 3
.
��3 4
rect
��4 8
;
��8 9
Rect
�� 

xrViewport
�� 
=
�� 
xr
��  
.
��  !
GetViewport
��! ,
(
��, -
)
��- .
;
��. /
baseCameraData
�� 
.
�� 
	pixelRect
�� $
=
��% &
new
��' *
Rect
��+ /
(
��/ 0

cameraRect
��0 :
.
��: ;
x
��; <
*
��= >

xrViewport
��? I
.
��I J
width
��J O
+
��P Q

xrViewport
��R \
.
��\ ]
x
��] ^
,
��^ _

cameraRect
��0 :
.
��: ;
y
��; <
*
��= >

xrViewport
��? I
.
��I J
height
��J P
+
��Q R

xrViewport
��S ]
.
��] ^
y
��^ _
,
��_ `

cameraRect
��0 :
.
��: ;
width
��; @
*
��A B

xrViewport
��C M
.
��M N
width
��N S
,
��S T

cameraRect
��0 :
.
��: ;
height
��; A
*
��B C

xrViewport
��D N
.
��N O
height
��O U
)
��U V
;
��V W
Rect
�� 
camPixelRect
�� 
=
�� 
baseCameraData
��  .
.
��. /
	pixelRect
��/ 8
;
��8 9
baseCameraData
�� 
.
�� 

pixelWidth
�� %
=
��' (
(
��) *
int
��* -
)
��- .
System
��. 4
.
��4 5
Math
��5 9
.
��9 :
Round
��: ?
(
��? @
camPixelRect
��@ L
.
��L M
width
��M R
+
��S T
camPixelRect
��U a
.
��a b
x
��b c
)
��c d
-
��e f
(
��g h
int
��h k
)
��k l
System
��l r
.
��r s
Math
��s w
.
��w x
Round
��x }
(
��} ~
camPixelRect��~ �
.��� �
x��� �
)��� �
;��� �
baseCameraData
�� 
.
�� 
pixelHeight
�� &
=
��' (
(
��) *
int
��* -
)
��- .
System
��. 4
.
��4 5
Math
��5 9
.
��9 :
Round
��: ?
(
��? @
camPixelRect
��@ L
.
��L M
height
��M S
+
��T U
camPixelRect
��V b
.
��b c
y
��c d
)
��d e
-
��f g
(
��h i
int
��i l
)
��l m
System
��m s
.
��s t
Math
��t x
.
��x y
Round
��y ~
(
��~ 
camPixelRect�� �
.��� �
y��� �
)��� �
;��� �
baseCameraData
�� 
.
�� 
aspectRatio
�� &
=
��' (
(
��) *
float
��* /
)
��/ 0
baseCameraData
��0 >
.
��> ?

pixelWidth
��? I
/
��J K
(
��L M
float
��M R
)
��R S
baseCameraData
��S a
.
��a b
pixelHeight
��b m
;
��m n
bool
�� !
isDefaultXRViewport
�� $
=
��% &
(
��' (
!
��( )
(
��) *
Math
��* .
.
��. /
Abs
��/ 2
(
��2 3

xrViewport
��3 =
.
��= >
x
��> ?
)
��? @
>
��A B
$num
��C G
||
��H J
Math
��K O
.
��O P
Abs
��P S
(
��S T

xrViewport
��T ^
.
��^ _
y
��_ `
)
��` a
>
��b c
$num
��d h
||
��i k
Math
��, 0
.
��0 1
Abs
��1 4
(
��4 5

xrViewport
��5 ?
.
��? @
width
��@ E
)
��E F
<
��G H
xr
��I K
.
��K L
renderTargetDesc
��L \
.
��\ ]
width
��] b
||
��c e
Math
��, 0
.
��0 1
Abs
��1 4
(
��4 5

xrViewport
��5 ?
.
��? @
height
��@ F
)
��F G
<
��H I
xr
��J L
.
��L M
renderTargetDesc
��M ]
.
��] ^
height
��^ d
)
��d e
)
��e f
;
��f g
baseCameraData
�� 
.
�� 
isDefaultViewport
�� ,
=
��- .
baseCameraData
��/ =
.
��= >
isDefaultViewport
��> O
&&
��P R!
isDefaultXRViewport
��S f
;
��f g
var
��  
originalTargetDesc
�� "
=
��# $
baseCameraData
��% 3
.
��3 4$
cameraTargetDescriptor
��4 J
;
��J K
baseCameraData
�� 
.
�� $
cameraTargetDescriptor
�� 1
=
��2 3
xr
��4 6
.
��6 7
renderTargetDesc
��7 G
;
��G H
if
�� 
(
�� 
baseCameraData
�� 
.
�� 
isHdrEnabled
�� +
)
��+ ,
{
�� 
baseCameraData
�� 
.
�� $
cameraTargetDescriptor
�� 5
.
��5 6
graphicsFormat
��6 D
=
��E F 
originalTargetDesc
��G Y
.
��Y Z
graphicsFormat
��Z h
;
��h i
}
�� 
baseCameraData
�� 
.
�� $
cameraTargetDescriptor
�� 1
.
��1 2
msaaSamples
��2 =
=
��> ? 
originalTargetDesc
��@ R
.
��R S
msaaSamples
��S ^
;
��^ _
baseCameraData
�� 
.
�� $
cameraTargetDescriptor
�� 1
.
��1 2
width
��2 7
=
��8 9
baseCameraData
��: H
.
��H I

pixelWidth
��I S
;
��S T
baseCameraData
�� 
.
�� $
cameraTargetDescriptor
�� 1
.
��1 2
height
��2 8
=
��9 :
baseCameraData
��; I
.
��I J
pixelHeight
��J U
;
��U V
}
�� 	
internal
�� 
void
�� 
UpdateFromCamera
�� &
(
��& '
ref
��' *
XRPass
��+ 1
xrPass
��2 8
,
��8 9

CameraData
��: D

cameraData
��E O
)
��O P
{
�� 	
bool
�� 
isGameCamera
�� 
=
�� 
(
��  !

cameraData
��! +
.
��+ ,
camera
��, 2
.
��2 3

cameraType
��3 =
==
��> @

CameraType
��A K
.
��K L
Game
��L P
||
��Q S

cameraData
��T ^
.
��^ _
camera
��_ e
.
��e f

cameraType
��f p
==
��q s

CameraType
��t ~
.
��~ 
VR�� �
)��� �
;��� �
if
�� 
(
�� &
XRGraphicsAutomatedTests
�� (
.
��( )
enabled
��) 0
&&
��1 3&
XRGraphicsAutomatedTests
��4 L
.
��L M
running
��M T
&&
��U W
isGameCamera
��X d
)
��d e
{
�� 
	Matrix4x4
�� 

projMatrix
�� $
=
��% &

cameraData
��' 1
.
��1 2
camera
��2 8
.
��8 9
projectionMatrix
��9 I
;
��I J
	Matrix4x4
�� 

viewMatrix
�� $
=
��% &

cameraData
��' 1
.
��1 2
camera
��2 8
.
��8 9!
worldToCameraMatrix
��9 L
;
��L M
Rect
�� 
viewport
�� "
=
��# $
new
��% (
Rect
��) -
(
��- .
$num
��. /
,
��/ 0
$num
��1 2
,
��2 3
testRenderTexture
��4 E
.
��E F
width
��F K
,
��K L
testRenderTexture
��M ^
.
��^ _
height
��_ e
)
��e f
;
��f g
int
�� 
textureArraySlice
�� +
=
��, -
-
��. /
$num
��/ 0
;
��0 1
xrPass
�� 
.
�� 

UpdateView
�� !
(
��! "
$num
��" #
,
��# $

projMatrix
��% /
,
��/ 0

viewMatrix
��1 ;
,
��; <
viewport
��= E
,
��E F
textureArraySlice
��G X
)
��X Y
;
��Y Z

cameraData
�� 
.
�� 
camera
�� !
.
��! "%
TryGetCullingParameters
��" 9
(
��9 :
false
��: ?
,
��? @
out
��A D
var
��E H

��I V
)
��V W
;
��W X

�� 
.
�� $
stereoProjectionMatrix
�� 4
=
��5 6

cameraData
��7 A
.
��A B
camera
��B H
.
��H I
projectionMatrix
��I Y
;
��Y Z

�� 
.
�� 
stereoViewMatrix
�� .
=
��/ 0

cameraData
��1 ;
.
��; <
camera
��< B
.
��B C!
worldToCameraMatrix
��C V
;
��V W

�� 
.
�� 
cullingOptions
�� ,
&=
��- /
~
��0 1
CullingOptions
��1 ?
.
��? @
Stereo
��@ F
;
��F G
xrPass
�� 
.
�� !
UpdateCullingParams
�� *
(
��* +
$num
��+ ,
,
��, -

��. ;
)
��; <
;
��< =
}
�� 
else
�� 
if
�� 
(
�� 
xrPass
�� 
.
�� 
enabled
�� #
&&
��$ &
display
��' .
!=
��/ 1
null
��2 6
)
��6 7
{
�� 
display
�� 
.
�� 

�� %
(
��% &
xrPass
��& ,
.
��, -
multipassId
��- 8
,
��8 9
out
��: =
var
��> A

renderPass
��B L
)
��L M
;
��M N
display
�� 
.
�� "
GetCullingParameters
�� ,
(
��, -

cameraData
��- 7
.
��7 8
camera
��8 >
,
��> ?

renderPass
��@ J
.
��J K
cullingPassIndex
��K [
,
��[ \
out
��] `
var
��a d

��e r
)
��r s
;
��s t

�� 
.
�� 
cullingOptions
�� ,
&=
��- /
~
��0 1
CullingOptions
��1 ?
.
��? @
Stereo
��@ F
;
��F G
xrPass
�� 
.
�� !
UpdateCullingParams
�� *
(
��* +

��+ 8
:
��8 9

renderPass
��: D
.
��D E
cullingPassIndex
��E U
,
��U V

��W d
)
��d e
;
��e f
if
�� 
(
�� 
xrPass
�� 
.
�� 
singlePassEnabled
�� ,
)
��, -
{
�� 
for
�� 
(
�� 
int
�� 
renderParamIndex
�� -
=
��. /
$num
��0 1
;
��1 2
renderParamIndex
��3 C
<
��D E

renderPass
��F P
.
��P Q%
GetRenderParameterCount
��Q h
(
��h i
)
��i j
;
��j k
++
��l n
renderParamIndex
��n ~
)
��~ 
{
�� 

renderPass
�� "
.
��" # 
GetRenderParameter
��# 5
(
��5 6

cameraData
��6 @
.
��@ A
camera
��A G
,
��G H
renderParamIndex
��I Y
,
��Y Z
out
��[ ^
var
��_ b
renderParam
��c n
)
��n o
;
��o p
xrPass
�� 
.
�� 

UpdateView
�� )
(
��) *
renderParamIndex
��* :
,
��: ;

renderPass
��< F
,
��F G
renderParam
��H S
)
��S T
;
��T U
}
�� 
}
�� 
else
�� 
{
�� 

renderPass
�� 
.
��  
GetRenderParameter
�� 1
(
��1 2

cameraData
��2 <
.
��< =
camera
��= C
,
��C D
$num
��E F
,
��F G
out
��H K
var
��L O
renderParam
��P [
)
��[ \
;
��\ ]
xrPass
�� 
.
�� 

UpdateView
�� %
(
��% &
$num
��& '
,
��' (

renderPass
��) 3
,
��3 4
renderParam
��5 @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 	
void
�� #
CreateLayoutFromXrSdk
��
(
��" #
Camera
��# )
camera
��* 0
,
��0 1
bool
��2 6
singlePassAllowed
��7 H
)
��H I
{
�� 	
bool
�� 
CanUseSinglePass
�� !
(
��! " 
XRDisplaySubsystem
��" 4
.
��4 5
XRRenderPass
��5 A

renderPass
��B L
)
��L M
{
�� 
if
�� 
(
�� 

renderPass
�� 
.
�� 
renderTargetDesc
�� /
.
��/ 0
	dimension
��0 9
!=
��: <
TextureDimension
��= M
.
��M N

Tex2DArray
��N X
)
��X Y
return
�� 
false
��  
;
��  !
if
�� 
(
�� 

renderPass
�� 
.
�� %
GetRenderParameterCount
�� 6
(
��6 7
)
��7 8
!=
��9 ;
$num
��< =
||
��> @

renderPass
��A K
.
��K L
renderTargetDesc
��L \
.
��\ ]
volumeDepth
��] h
!=
��i k
$num
��l m
)
��m n
return
�� 
false
��  
;
��  !

renderPass
�� 
.
��  
GetRenderParameter
�� -
(
��- .
camera
��. 4
,
��4 5
$num
��6 7
,
��7 8
out
��9 <
var
��= @
renderParam0
��A M
)
��M N
;
��N O

renderPass
�� 
.
��  
GetRenderParameter
�� -
(
��- .
camera
��. 4
,
��4 5
$num
��6 7
,
��7 8
out
��9 <
var
��= @
renderParam1
��A M
)
��M N
;
��N O
if
�� 
(
�� 
renderParam0
��  
.
��  !
textureArraySlice
��! 2
!=
��3 5
$num
��6 7
||
��8 :
renderParam1
��; G
.
��G H
textureArraySlice
��H Y
!=
��Z \
$num
��] ^
)
��^ _
return
�� 
false
��  
;
��  !
if
�� 
(
�� 
renderParam0
��  
.
��  !
viewport
��! )
!=
��* ,
renderParam1
��- 9
.
��9 :
viewport
��: B
)
��B C
return
�� 
false
��  
;
��  !
return
�� 
true
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
�� 
renderPassIndex
�� $
=
��% &
$num
��' (
;
��( )
renderPassIndex
��* 9
<
��: ;
display
��< C
.
��C D 
GetRenderPassCount
��D V
(
��V W
)
��W X
;
��X Y
++
��Z \
renderPassIndex
��\ k
)
��k l
{
�� 
display
�� 
.
�� 

�� %
(
��% &
renderPassIndex
��& 5
,
��5 6
out
��7 :
var
��; >

renderPass
��? I
)
��I J
;
��J K
display
�� 
.
�� "
GetCullingParameters
�� ,
(
��, -
camera
��- 3
,
��3 4

renderPass
��5 ?
.
��? @
cullingPassIndex
��@ P
,
��P Q
out
��R U
var
��V Y

��Z g
)
��g h
;
��h i

�� 
.
�� 
cullingOptions
�� ,
&=
��- /
~
��0 1
CullingOptions
��1 ?
.
��? @
Stereo
��@ F
;
��F G
if
�� 
(
�� 
singlePassAllowed
�� %
&&
��& (
CanUseSinglePass
��) 9
(
��9 :

renderPass
��: D
)
��D E
)
��E F
{
�� 
var
�� 
xrPass
�� 
=
��  
XRPass
��! '
.
��' (
Create
��( .
(
��. /

renderPass
��/ 9
,
��9 :
multipassId
��; F
:
��F G
framePasses
��H S
.
��S T
Count
��T Y
,
��Y Z

��[ h
,
��h i#
occlusionMeshMaterial
��j 
)�� �
;��� �
for
�� 
(
�� 
int
�� 
renderParamIndex
�� -
=
��. /
$num
��0 1
;
��1 2
renderParamIndex
��3 C
<
��D E

renderPass
��F P
.
��P Q%
GetRenderParameterCount
��Q h
(
��h i
)
��i j
;
��j k
++
��l n
renderParamIndex
��n ~
)
��~ 
{
�� 

renderPass
�� "
.
��" # 
GetRenderParameter
��# 5
(
��5 6
camera
��6 <
,
��< =
renderParamIndex
��> N
,
��N O
out
��P S
var
��T W
renderParam
��X c
)
��c d
;
��d e
xrPass
�� 
.
�� 
AddView
�� &
(
��& '

renderPass
��' 1
,
��1 2
renderParam
��3 >
)
��> ?
;
��? @
}
�� 
AddPassToFrame
�� "
(
��" #
xrPass
��# )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
int
�� 
renderParamIndex
�� -
=
��. /
$num
��0 1
;
��1 2
renderParamIndex
��3 C
<
��D E

renderPass
��F P
.
��P Q%
GetRenderParameterCount
��Q h
(
��h i
)
��i j
;
��j k
++
��l n
renderParamIndex
��n ~
)
��~ 
{
�� 

renderPass
�� "
.
��" # 
GetRenderParameter
��# 5
(
��5 6
camera
��6 <
,
��< =
renderParamIndex
��> N
,
��N O
out
��P S
var
��T W
renderParam
��X c
)
��c d
;
��d e
var
�� 
xrPass
�� "
=
��# $
XRPass
��% +
.
��+ ,
Create
��, 2
(
��2 3

renderPass
��3 =
,
��= >
multipassId
��? J
:
��J K
framePasses
��L W
.
��W X
Count
��X ]
,
��] ^

��_ l
,
��l m$
occlusionMeshMaterial��n �
)��� �
;��� �
xrPass
�� 
.
�� 
AddView
�� &
(
��& '

renderPass
��' 1
,
��1 2
renderParam
��3 >
)
��> ?
;
��? @
AddPassToFrame
�� &
(
��& '
xrPass
��' -
)
��- .
;
��. /
}
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
	CoreUtils
�� 
.
�� 
Destroy
�� 
(
�� #
occlusionMeshMaterial
�� 3
)
��3 4
;
��4 5
	CoreUtils
�� 
.
�� 
Destroy
�� 
(
��  
mirrorViewMaterial
�� 0
)
��0 1
;
��1 2
}
�� 	
internal
�� 
void
�� 
AddPassToFrame
�� $
(
��$ %
XRPass
��% +
xrPass
��, 2
)
��2 3
{
�� 	
xrPass
�� 
.
�� !
UpdateOcclusionMesh
�� &
(
��& '
)
��' (
;
��( )
framePasses
�� 
.
�� 
Add
�� 
(
�� 
xrPass
�� "
)
��" #
;
��# $
}
�� 	
internal
�� 
static
�� 
class
�� 
XRShaderIDs
�� )
{
�� 	
public
�� 
static
�� 
readonly
�� "
int
��# &"
_SourceTexArraySlice
��' ;
=
��< =
Shader
��> D
.
��D E
PropertyToID
��E Q
(
��Q R
$str
��R h
)
��h i
;
��i j
public
�� 
static
�� 
readonly
�� "
int
��# &
	_SRGBRead
��' 0
=
��< =
Shader
��> D
.
��D E
PropertyToID
��E Q
(
��Q R
$str
��R ]
)
��] ^
;
��^ _
public
�� 
static
�� 
readonly
�� "
int
��# &

_SRGBWrite
��' 1
=
��< =
Shader
��> D
.
��D E
PropertyToID
��E Q
(
��Q R
$str
��R ^
)
��^ _
;
��_ `
}
�� 	
internal
�� 
void
�� 
RenderMirrorView
�� &
(
��& '

��' 4
cmd
��5 8
,
��8 9
Camera
��: @
camera
��A G
)
��G H
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
platform
�� $
==
��% '
RuntimePlatform
��( 7
.
��7 8
Android
��8 ?
)
��? @
return
�� 
;
�� 
if
�� 
(
�� 
display
�� 
==
�� 
null
�� 
||
��  "
!
��# $
display
��$ +
.
��+ ,
running
��, 3
||
��4 6
!
��7 8 
mirrorViewMaterial
��8 J
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
�� 
ProfilingScope
�� %
(
��% &
cmd
��& )
,
��) *'
_XRMirrorProfilingSampler
��+ D
)
��D E
)
��E F
{
�� 
cmd
�� 
.
�� 
SetRenderTarget
�� #
(
��# $
camera
��$ *
.
��* +

��+ 8
!=
��9 ;
null
��< @
?
��B C
camera
��D J
.
��J K

��K X
:
��Y Z
new
��[ ^$
RenderTargetIdentifier
��_ u
(
��u v'
BuiltinRenderTextureType��v �
.��� �
CameraTarget��� �
)��� �
)��� �
;��� �
bool
�� 
yflip
�� 
=
�� 
camera
�� #
.
��# $

��$ 1
!=
��2 4
null
��5 9
||
��: <
camera
��= C
.
��C D

cameraType
��D N
==
��O Q

CameraType
��R \
.
��\ ]
	SceneView
��] f
||
��g i
camera
��j p
.
��p q

cameraType
��q {
==
��| ~

CameraType�� �
.��� �
Preview��� �
;��� �
int
�� 
mirrorBlitMode
�� "
=
��# $
display
��% ,
.
��, -(
GetPreferredMirrorBlitMode
��- G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
display
�� 
.
�� #
GetMirrorViewBlitDesc
�� 1
(
��1 2
null
��2 6
,
��6 7
out
��8 ;
var
��< ?
blitDesc
��@ H
,
��H I
mirrorBlitMode
��J X
)
��X Y
)
��Y Z
{
�� 
if
�� 
(
�� 
blitDesc
��  
.
��  !!
nativeBlitAvailable
��! 4
)
��4 5
{
�� 
display
�� 
.
��  -
AddGraphicsThreadMirrorViewBlit
��  ?
(
��? @
cmd
��@ C
,
��C D
blitDesc
��E M
.
��M N%
nativeBlitInvalidStates
��N e
,
��e f
mirrorBlitMode
��g u
)
��u v
;
��v w
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +
blitDesc
��, 4
.
��4 5
blitParamsCount
��5 D
;
��D E
++
��F H
i
��H I
)
��I J
{
�� 
blitDesc
�� $
.
��$ %
GetBlitParameter
��% 5
(
��5 6
i
��6 7
,
��7 8
out
��9 <
var
��= @
	blitParam
��A J
)
��J K
;
��K L
Vector4
�� #
	scaleBias
��$ -
=
��. /
yflip
��0 5
?
��6 7
new
��8 ;
Vector4
��< C
(
��C D
	blitParam
��D M
.
��M N
srcRect
��N U
.
��U V
width
��V [
,
��[ \
-
��] ^
	blitParam
��^ g
.
��g h
srcRect
��h o
.
��o p
height
��p v
,
��v w
	blitParam��x �
.��� �
srcRect��� �
.��� �
x��� �
,��� �
	blitParam��� �
.��� �
srcRect��� �
.��� �
height��� �
+��� �
	blitParam��� �
.��� �
srcRect��� �
.��� �
y��� �
)��� �
:��� �
new
��8 ;
Vector4
��< C
(
��C D
	blitParam
��D M
.
��M N
srcRect
��N U
.
��U V
width
��V [
,
��[ \
	blitParam
��] f
.
��f g
srcRect
��g n
.
��n o
height
��o u
,
��u v
	blitParam��w �
.��� �
srcRect��� �
.��� �
x��� �
,��� �
	blitParam��� �
.��� �
srcRect��� �
.��� �
y��� �
)��� �
;��� �
Vector4
�� #
scaleBiasRt
��$ /
=
��0 1
new
��2 5
Vector4
��6 =
(
��= >
	blitParam
��> G
.
��G H
destRect
��H P
.
��P Q
width
��Q V
,
��V W
	blitParam
��X a
.
��a b
destRect
��b j
.
��j k
height
��k q
,
��q r
	blitParam
��s |
.
��| }
destRect��} �
.��� �
x��� �
,��� �
	blitParam��� �
.��� �
destRect��� �
.��� �
y��� �
)��� �
;��� �(
mirrorViewMaterialProperty
�� 6
.
��6 7
SetInt
��7 =
(
��= >
XRShaderIDs
��> I
.
��I J
	_SRGBRead
��J S
,
��S T
(
��U V
	blitParam
��V _
.
��_ `
srcTex
��` f
.
��f g
sRGB
��g k
)
��k l
?
��m n
$num
��o p
:
��q r
$num
��s t
)
��t u
;
��u v(
mirrorViewMaterialProperty
�� 6
.
��6 7
SetInt
��7 =
(
��= >
XRShaderIDs
��> I
.
��I J

_SRGBWrite
��J T
,
��T U
(
��V W
QualitySettings
��W f
.
��f g
activeColorSpace
��g w
==
��x z

ColorSpace��{ �
.��� �
Linear��� �
)��� �
?��� �
$num��� �
:��� �
$num��� �
)��� �
;��� �(
mirrorViewMaterialProperty
�� 6
.
��6 7

SetTexture
��7 A
(
��A B
ShaderPropertyId
��B R
.
��R S
	sourceTex
��S \
,
��\ ]
	blitParam
��^ g
.
��g h
srcTex
��h n
)
��n o
;
��o p(
mirrorViewMaterialProperty
�� 6
.
��6 7
	SetVector
��7 @
(
��@ A
ShaderPropertyId
��A Q
.
��Q R
	scaleBias
��R [
,
��[ \
	scaleBias
��] f
)
��f g
;
��g h(
mirrorViewMaterialProperty
�� 6
.
��6 7
	SetVector
��7 @
(
��@ A
ShaderPropertyId
��A Q
.
��Q R
scaleBiasRt
��R ]
,
��] ^
scaleBiasRt
��_ j
)
��j k
;
��k l(
mirrorViewMaterialProperty
�� 6
.
��6 7
SetInt
��7 =
(
��= >
XRShaderIDs
��> I
.
��I J"
_SourceTexArraySlice
��J ^
,
��^ _
	blitParam
��` i
.
��i j
srcTexArraySlice
��j z
)
��z {
;
��{ |
int
�� 

shaderPass
��  *
=
��+ ,
(
��- .
	blitParam
��. 7
.
��7 8
srcTex
��8 >
.
��> ?
	dimension
��? H
==
��I K
TextureDimension
��L \
.
��\ ]

Tex2DArray
��] g
)
��g h
?
��i j
$num
��k l
:
��m n
$num
��o p
;
��p q
cmd
�� 
.
��  
DrawProcedural
��  .
(
��. /
	Matrix4x4
��/ 8
.
��8 9
identity
��9 A
,
��A B 
mirrorViewMaterial
��C U
,
��U V

shaderPass
��W a
,
��a b
MeshTopology
��c o
.
��o p
Quads
��p u
,
��u v
$num
��w x
,
��x y
$num
��z {
,
��{ |)
mirrorViewMaterialProperty��} �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
cmd
�� 
.
�� 
ClearRenderTarget
�� )
(
��) *
true
��* .
,
��. /
true
��0 4
,
��4 5
Color
��6 ;
.
��; <
black
��< A
)
��A B
;
��B C
}
�� 
}
�� 
}
�� 	
static
�� #
MaterialPropertyBlock
�� $,
testMirrorViewMaterialProperty
��% C
=
��D E
new
��F I#
MaterialPropertyBlock
��J _
(
��_ `
)
��` a
;
��a b
static
�� 
Material
�� $
testMirrorViewMaterial
�� .
=
��/ 0
null
��1 5
;
��5 6
static
�� 
void
�� %
copyToTestRenderTexture
�� +
(
��+ ,
XRPass
��, 2
pass
��3 7
,
��7 8

��9 F
cmd
��G J
,
��J K

��L Y
rt
��Z \
,
��\ ]
Rect
��^ b
viewport
��c k
)
��k l
{
�� 	
cmd
�� 
.
�� 
SetViewport
�� 
(
�� 
viewport
�� $
)
��$ %
;
��% &
cmd
�� 
.
�� 
SetRenderTarget
�� 
(
��  
rt
��  "
==
��# %
null
��& *
?
��+ ,
new
��- 0$
RenderTargetIdentifier
��1 G
(
��G H&
BuiltinRenderTextureType
��H `
.
��` a
CameraTarget
��a m
)
��m n
:
��o p
rt
��q s
)
��s t
;
��t u
Vector4
�� 
	scaleBias
�� 
=
�� 
new
��  #
Vector4
��$ +
(
��+ ,
$num
��, 0
,
��0 1
$num
��2 6
,
��6 7
$num
��8 <
,
��< =
$num
��> B
)
��B C
;
��C D
Vector4
�� 
scaleBiasRT
�� 
=
��  !
new
��" %
Vector4
��& -
(
��- .
$num
��. 2
,
��2 3
$num
��4 8
,
��8 9
$num
��: >
,
��> ?
$num
��@ D
)
��D E
;
��E F
if
�� 
(
�� 
rt
�� 
==
�� 
null
�� 
)
�� 
{
�� 
	scaleBias
�� 
.
�� 
y
�� 
=
�� 
-
�� 
$num
�� #
;
��# $
	scaleBias
�� 
.
�� 
w
�� 
=
�� 
$num
�� "
;
��" #
}
�� 
testMirrorViewMaterialProperty
�� *
.
��* +
	SetVector
��+ 4
(
��4 5
ShaderPropertyId
��5 E
.
��E F
	scaleBias
��F O
,
��O P
	scaleBias
��Q Z
)
��Z [
;
��[ \,
testMirrorViewMaterialProperty
�� *
.
��* +
	SetVector
��+ 4
(
��4 5
ShaderPropertyId
��5 E
.
��E F
scaleBiasRt
��F Q
,
��Q R
scaleBiasRT
��S ^
)
��^ _
;
��_ `,
testMirrorViewMaterialProperty
�� *
.
��* +
SetInt
��+ 1
(
��1 2
XRShaderIDs
��2 =
.
��= >"
_SourceTexArraySlice
��> R
,
��R S
$num
��T U
)
��U V
;
��V W
cmd
�� 
.
�� 
DrawProcedural
�� 
(
�� 
	Matrix4x4
�� (
.
��( )
identity
��) 1
,
��1 2$
testMirrorViewMaterial
��3 I
,
��I J
$num
��K L
,
��L M
MeshTopology
��N Z
.
��Z [
Quads
��[ `
,
��` a
$num
��b c
,
��c d
$num
��e f
,
��f g-
testMirrorViewMaterialProperty��h �
)��� �
;��� �
}
�� 	
static
�� 
XRPass
�� 
.
�� 
CustomMirrorView
�� &
testMirrorView
��' 5
=
��6 7%
copyToTestRenderTexture
��8 O
;
��O P
bool
�� &
LayoutSinglePassTestMode
��
(
��% &

CameraData
��& 0

cameraData
��1 ;
,
��; <
XRLayout
��= E
frameLayout
��F Q
)
��Q R
{
�� 	
Camera
�� 
camera
�� 
=
�� 
frameLayout
�� '
.
��' (
camera
��( .
;
��. /
if
�� 
(
�� 
camera
�� 
==
�� 
null
�� 
)
�� 
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
camera
�� 
.
�� %
TryGetCullingParameters
�� .
(
��. /
false
��/ 4
,
��4 5
out
��6 9
var
��: =

��> K
)
��K L
)
��L M
{
�� 

�� 
.
�� $
stereoProjectionMatrix
�� 4
=
��5 6
camera
��7 =
.
��= >
projectionMatrix
��> N
;
��N O

�� 
.
�� 
stereoViewMatrix
�� .
=
��/ 0
camera
��1 7
.
��7 8!
worldToCameraMatrix
��8 K
;
��K L
{
�� %
RenderTextureDescriptor
�� +
rtDesc
��, 2
=
��3 4

cameraData
��5 ?
.
��? @$
cameraTargetDescriptor
��@ V
;
��V W
rtDesc
�� 
.
�� 
	dimension
�� $
=
��% &
TextureDimension
��' 7
.
��7 8

Tex2DArray
��8 B
;
��B C
rtDesc
�� 
.
�� 
volumeDepth
�� &
=
��' (
$num
��) *
;
��* +
if
�� 
(
�� 
!
�� 

cameraData
�� #
.
��# $
isDefaultViewport
��$ 5
)
��5 6
{
�� 
if
�� 
(
�� 

cameraData
�� &
.
��& '

��' 4
==
��5 7
null
��8 <
)
��< =
{
�� 
rtDesc
�� "
.
��" #
width
��# (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
(
��0 1
rtDesc
��1 7
.
��7 8
width
��8 =
/
��> ?

cameraData
��@ J
.
��J K
camera
��K Q
.
��Q R
rect
��R V
.
��V W
width
��W \
)
��\ ]
;
��] ^
rtDesc
�� "
.
��" #
height
��# )
=
��* +
(
��, -
int
��- 0
)
��0 1
(
��1 2
rtDesc
��2 8
.
��8 9
height
��9 ?
/
��@ A

cameraData
��B L
.
��L M
camera
��M S
.
��S T
rect
��T X
.
��X Y
height
��Y _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
rtDesc
�� "
.
��" #
width
��# (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
(
��0 1

cameraData
��1 ;
.
��; <

��< I
.
��I J
width
��J O
)
��O P
;
��P Q
rtDesc
�� "
.
��" #
height
��# )
=
��* +
(
��, -
int
��- 0
)
��0 1
(
��1 2

cameraData
��2 <
.
��< =

��= J
.
��J K
height
��K Q
)
��Q R
;
��R S
}
�� 
}
�� 
testRenderTexture
�� %
=
��& '

��( 5
.
��5 6
GetTemporary
��6 B
(
��B C
rtDesc
��C I
)
��I J
;
��J K$
testMirrorViewMaterial
�� *
=
��+ , 
mirrorViewMaterial
��- ?
;
��? @,
testMirrorViewMaterialProperty
�� 2
.
��2 3
SetInt
��3 9
(
��9 :
XRShaderIDs
��: E
.
��E F
	_SRGBRead
��F O
,
��O P
(
��Q R
testRenderTexture
��R c
.
��c d
sRGB
��d h
)
��h i
?
��j k
$num
��l m
:
��n o
$num
��p q
)
��q r
;
��r s,
testMirrorViewMaterialProperty
�� 2
.
��2 3
SetInt
��3 9
(
��9 :
XRShaderIDs
��: E
.
��E F

_SRGBWrite
��F P
,
��P Q
(
��R S
QualitySettings
��S b
.
��b c
activeColorSpace
��c s
==
��t v

ColorSpace��w �
.��� �
Linear��� �
)��� �
?��� �
$num��� �
:��� �
$num��� �
)��� �
;��� �,
testMirrorViewMaterialProperty
�� 2
.
��2 3

SetTexture
��3 =
(
��= >
ShaderPropertyId
��> N
.
��N O
	sourceTex
��O X
,
��X Y
testRenderTexture
��Z k
)
��k l
;
��l m
}
�� 
var
�� 
passInfo
�� 
=
�� 
new
�� "
XRPassCreateInfo
��# 3
{
�� 
multipassId
�� 
=
��  !
$num
��" #
,
��# $

�� !
=
��" #
$num
��$ %
,
��% &
cullingParameters
�� %
=
��& '

��( 5
,
��5 6
renderTarget
��  
=
��! "
testRenderTexture
��# 4
,
��4 5)
renderTargetIsRenderTexture
�� /
=
��0 1
true
��2 6
,
��6 7
customMirrorView
�� $
=
��% &
testMirrorView
��' 5
}
�� 
;
�� 
var
�� 
	viewInfo2
�� 
=
�� 
new
��  #
XRViewCreateInfo
��$ 4
{
�� 

projMatrix
�� 
=
��  
camera
��! '
.
��' (
projectionMatrix
��( 8
,
��8 9

viewMatrix
�� 
=
��  
camera
��! '
.
��' (!
worldToCameraMatrix
��( ;
,
��; <
viewport
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
$num
��( )
,
��) *
$num
��+ ,
,
��, -
testRenderTexture
��. ?
.
��? @
width
��@ E
,
��E F
testRenderTexture
��G X
.
��X Y
height
��Y _
)
��_ `
,
��` a
textureArraySlice
�� %
=
��& '
-
��( )
$num
��) *
}
�� 
;
�� 
var
�� 
	viewInfo1
�� 
=
�� 
	viewInfo2
��  )
;
��) *
var
�� 
planes
�� 
=
�� 
	viewInfo1
�� &
.
��& '

projMatrix
��' 1
.
��1 2!
decomposeProjection
��2 E
;
��E F
planes
�� 
.
�� 
left
�� 
*=
�� 
$num
�� $
;
��$ %
planes
�� 
.
�� 
right
�� 
*=
�� 
$num
��  %
;
��% &
planes
�� 
.
�� 
top
�� 
*=
�� 
$num
�� #
;
��# $
planes
�� 
.
�� 
bottom
�� 
*=
��  
$num
��! &
;
��& '
	viewInfo1
�� 
.
�� 

projMatrix
�� $
=
��% &
	Matrix4x4
��' 0
.
��0 1
Frustum
��1 8
(
��8 9
planes
��9 ?
)
��? @
;
��@ A
	viewInfo1
�� 
.
�� 

viewMatrix
�� $
*=
��% '
	Matrix4x4
��( 1
.
��1 2
	Translate
��2 ;
(
��; <
new
��< ?
Vector3
��@ G
(
��G H
$num
��H L
,
��L M
$num
��N S
,
��S T
-
��U V
$num
��V [
)
��[ \
)
��\ ]
;
��] ^
{
�� 
XRPass
�� 
pass
�� 
=
��  !
frameLayout
��" -
.
��- .

CreatePass
��. 8
(
��8 9
passInfo
��9 A
)
��A B
;
��B C
frameLayout
�� 
.
��  

��  -
(
��- .
	viewInfo1
��. 7
,
��7 8
pass
��9 =
)
��= >
;
��> ?
frameLayout
�� 
.
��  

��  -
(
��- .
	viewInfo2
��. 7
,
��7 8
pass
��9 =
)
��= >
;
��> ?
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\Overrides\Tonemapping.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

enum 
TonemappingMode 
{ 
None 
, 
Neutral 
, 
ACES		 
,		 
}

 
[ 
Serializable 
, 
VolumeComponentMenu &
(& '
$str' D
)D E
]E F
public

sealed
class
Tonemapping
:
VolumeComponent
,
IPostProcessComponent
{ 
[ 	
Tooltip	 
( 
$str W
)W X
]X Y
public $
TonemappingModeParameter '
mode( ,
=- .
new/ 2$
TonemappingModeParameter3 K
(K L
TonemappingModeL [
.[ \
None\ `
)` a
;a b
public 
bool 
IsActive 
( 
) 
=> !
mode" &
.& '
value' ,
!=- /
TonemappingMode0 ?
.? @
None@ D
;D E
public 
bool 
IsTileCompatible $
($ %
)% &
=>' )
true* .
;. /
} 
[ 
Serializable 
] 
public 

sealed 
class $
TonemappingModeParameter 0
:1 2
VolumeParameter3 B
<B C
TonemappingModeC R
>R S
{T U
publicV \$
TonemappingModeParameter] u
(u v
TonemappingMode	v �
value
� �
,
� �
bool
� �

� �
=
� �
false
� �
)
� �
:
� �
base
� �
(
� �
value
� �
,
� �

� �
)
� �
{
� �
}
� �
}
� �
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\Runtime\ScriptableRenderer.cs
	namespace 	
UnityEngine
 
. 
	Rendering 
.  
	Universal  )
{ 
public 

abstract 
partial 
class !
ScriptableRenderer" 4
:5 6
IDisposable7 B
{ 
private 
static 
class 
	Profiling &
{ 	
private 
const 
string  
k_Name! '
=( )
nameof* 0
(0 1
ScriptableRenderer1 C
)C D
;D E
public 
static 
readonly "
ProfilingSampler# 3'
setPerCameraShaderVariables4 O
=P Q
newR U
ProfilingSamplerV f
(f g
$"g i
{i j
k_Namej p
}p q
.q r
{r s
nameofs y
(y z(
SetPerCameraShaderVariables	z �
)
� �
}
� �
"
� �
)
� �
;
� �
public 
static 
readonly "
ProfilingSampler# 3
sortRenderPasses4 D
=P Q
newR U
ProfilingSamplerV f
(f g
$"g i
Sort Render Passesi {
"{ |
)| }
;} ~
public 
static 
readonly "
ProfilingSampler# 3
setupLights4 ?
=P Q
newR U
ProfilingSamplerV f
(f g
$"g i
{i j
k_Namej p
}p q
.q r
{r s
nameofs y
(y z
SetupLights	z �
)
� �
}
� �
"
� �
)
� �
;
� �
public 
static 
readonly "
ProfilingSampler# 3
setupCamera4 ?
=P Q
newR U
ProfilingSamplerV f
(f g
$"g i$
Setup Camera Parameters	i �
"
� �
)
� �
;
� �
public 
static 
readonly "
ProfilingSampler# 3
addRenderPasses4 C
=P Q
newR U
ProfilingSamplerV f
(f g
$"g i
{i j
k_Namej p
}p q
.q r
{r s
nameofs y
(y z
AddRenderPasses	z �
)
� �
}
� �
"
� �
)
� �
;
� �
public   
static   
readonly   "
ProfilingSampler  # 3
clearRenderingState  4 G
=  P Q
new  R U
ProfilingSampler  V f
(  f g
$"  g i
{  i j
k_Name  j p
}  p q
.  q r
{  r s
nameof  s y
(  y z 
ClearRenderingState	  z �
)
  � �
}
  � �
"
  � �
)
  � �
;
  � �
public!! 
static!! 
readonly!! "
ProfilingSampler!!# 3"
internalStartRendering!!4 J
=!!P Q
new!!R U
ProfilingSampler!!V f
(!!f g
$"!!g i
{!!i j
k_Name!!j p
}!!p q
.!!q r
{!!r s
nameof!!s y
(!!y z#
InternalStartRendering	!!z �
)
!!� �
}
!!� �
"
!!� �
)
!!� �
;
!!� �
public"" 
static"" 
readonly"" "
ProfilingSampler""# 3#
internalFinishRendering""4 K
=""P Q
new""R U
ProfilingSampler""V f
(""f g
$"""g i
{""i j
k_Name""j p
}""p q
.""q r
{""r s
nameof""s y
(""y z$
InternalFinishRendering	""z �
)
""� �
}
""� �
"
""� �
)
""� �
;
""� �
public$$ 
static$$ 
class$$ 
RenderBlock$$  +
{%% 
private&& 
const&& 
string&& $
k_Name&&% +
=&&, -
nameof&&. 4
(&&4 5
RenderPassBlock&&5 D
)&&D E
;&&E F
public'' 
static'' 
readonly'' &
ProfilingSampler''' 7
beforeRendering''8 G
=''Q R
new''S V
ProfilingSampler''W g
(''g h
$"''h j
{''j k
k_Name''k q
}''q r
.''r s
{''s t
nameof''t z
(''z {
RenderPassBlock	''{ �
.
''� �
BeforeRendering
''� �
)
''� �
}
''� �
"
''� �
)
''� �
;
''� �
public(( 
static(( 
readonly(( &
ProfilingSampler((' 7
mainRenderingOpaque((8 K
=((Q R
new((S V
ProfilingSampler((W g
(((g h
$"((h j
{((j k
k_Name((k q
}((q r
.((r s
{((s t
nameof((t z
(((z {
RenderPassBlock	(({ �
.
((� �!
MainRenderingOpaque
((� �
)
((� �
}
((� �
"
((� �
)
((� �
;
((� �
public)) 
static)) 
readonly)) &
ProfilingSampler))' 7$
mainRenderingTransparent))8 P
=))Q R
new))S V
ProfilingSampler))W g
())g h
$"))h j
{))j k
k_Name))k q
}))q r
.))r s
{))s t
nameof))t z
())z {
RenderPassBlock	)){ �
.
))� �&
MainRenderingTransparent
))� �
)
))� �
}
))� �
"
))� �
)
))� �
;
))� �
public** 
static** 
readonly** &
ProfilingSampler**' 7
afterRendering**8 F
=**Q R
new**S V
ProfilingSampler**W g
(**g h
$"**h j
{**j k
k_Name**k q
}**q r
.**r s
{**s t
nameof**t z
(**z {
RenderPassBlock	**{ �
.
**� �
AfterRendering
**� �
)
**� �
}
**� �
"
**� �
)
**� �
;
**� �
}++ 
public-- 
static-- 
class-- 

RenderPass--  *
{.. 
private// 
const// 
string// $
k_Name//% +
=//, -
nameof//. 4
(//4 5 
ScriptableRenderPass//5 I
)//I J
;//J K
public00 
static00 
readonly00 &
ProfilingSampler00' 7
	configure008 A
=00B C
new00D G
ProfilingSampler00H X
(00X Y
$"00Y [
{00[ \
k_Name00\ b
}00b c
.00c d
{00d e
nameof00e k
(00k l!
ScriptableRenderPass	00l �
.
00� �
	Configure
00� �
)
00� �
}
00� �
"
00� �
)
00� �
;
00� �
}11 
}22 	
	protected77 
ProfilingSampler77 "
profilingExecute77# 3
{774 5
get776 9
;779 :
set77; >
;77> ?
}77@ A
public== 
class== 
RenderingFeatures== &
{>> 	
publicEE 
boolEE 
cameraStackingEE &
{EE' (
getEE) ,
;EE, -
setEE. 1
;EE1 2
}EE3 4
=EE5 6
falseEE7 <
;EE< =
publicJJ 
boolJJ 
msaaJJ 
{JJ 
getJJ "
;JJ" #
setJJ$ '
;JJ' (
}JJ) *
=JJ+ ,
trueJJ- 1
;JJ1 2
}KK 	
internalRR 
staticRR 
ScriptableRendererRR *
currentRR+ 2
=RR3 4
nullRR5 9
;RR9 :
public^^ 
static^^ 
void^^ 
SetCameraMatrices^^ ,
(^^, -

cmd^^; >
,^^> ?
ref^^@ C

CameraData^^D N

cameraData^^O Y
,^^Y Z
bool^^[ _
setInverseMatrices^^` r
)^^r s
{__ 	
ifaa 
(aa 

cameraDataaa 
.aa 
xraa 
.aa 
enabledaa %
)aa% &
{bb 

cameraDatacc 
.cc 
xrcc 
.cc .
"UpdateGPUViewAndProjectionMatricescc @
(cc@ A
cmdccA D
,ccD E
refccF I

cameraDataccJ T
,ccT U

cameraDataccV `
.cc` a
xrcca c
.ccc d'
renderTargetIsRenderTextureccd 
)	cc �
;
cc� �
returndd 
;dd 
}ee 
	Matrix4x4hh 

viewMatrixhh  
=hh! "

cameraDatahh# -
.hh- .

(hh; <
)hh< =
;hh= >
	Matrix4x4ii 
projectionMatrixii &
=ii' (

cameraDataii) 3
.ii3 4
GetProjectionMatrixii4 G
(iiG H
)iiH I
;iiI J
cmdnn 
.nn %
SetViewProjectionMatricesnn )
(nn) *

viewMatrixnn* 4
,nn4 5
projectionMatrixnn6 F
)nnF G
;nnG H
ifpp 
(pp 
setInverseMatricespp "
)pp" #
{qq 
	Matrix4x4rr 
gpuProjectionMatrixrr -
=rr. /

cameraDatarr0 :
.rr: ;"
GetGPUProjectionMatrixrr; Q
(rrQ R
)rrR S
;rrS T
	Matrix4x4ss #
viewAndProjectionMatrixss 1
=ss2 3
gpuProjectionMatrixss4 G
*ssH I

viewMatrixssJ T
;ssT U
	Matrix4x4tt 
inverseViewMatrixtt +
=tt, -
	Matrix4x4tt. 7
.tt7 8
Inversett8 ?
(tt? @

viewMatrixtt@ J
)ttJ K
;ttK L
	Matrix4x4uu #
inverseProjectionMatrixuu 1
=uu2 3
	Matrix4x4uu4 =
.uu= >
Inverseuu> E
(uuE F
gpuProjectionMatrixuuF Y
)uuY Z
;uuZ [
	Matrix4x4vv !
inverseViewProjectionvv /
=vv0 1
inverseViewMatrixvv2 C
*vvD E#
inverseProjectionMatrixvvF ]
;vv] ^
	Matrix4x4{{ 
worldToCameraMatrix{{ -
={{. /
	Matrix4x4{{0 9
.{{9 :
Scale{{: ?
({{? @
new{{@ C
Vector3{{D K
({{K L
$num{{L P
,{{P Q
$num{{R V
,{{V W
-{{X Y
$num{{Y ]
){{] ^
){{^ _
*{{` a

viewMatrix{{b l
;{{l m
	Matrix4x4|| 
cameraToWorldMatrix|| -
=||. /
worldToCameraMatrix||0 C
.||C D
inverse||D K
;||K L
cmd}} 
.}} 
SetGlobalMatrix}} #
(}}# $
ShaderPropertyId}}$ 4
.}}4 5
worldToCameraMatrix}}5 H
,}}H I
worldToCameraMatrix}}J ]
)}}] ^
;}}^ _
cmd~~ 
.~~ 
SetGlobalMatrix~~ #
(~~# $
ShaderPropertyId~~$ 4
.~~4 5
cameraToWorldMatrix~~5 H
,~~H I
cameraToWorldMatrix~~J ]
)~~] ^
;~~^ _
cmd
�� 
.
�� 
SetGlobalMatrix
�� #
(
��# $
ShaderPropertyId
��$ 4
.
��4 5
inverseViewMatrix
��5 F
,
��F G
inverseViewMatrix
��H Y
)
��Y Z
;
��Z [
cmd
�� 
.
�� 
SetGlobalMatrix
�� #
(
��# $
ShaderPropertyId
��$ 4
.
��4 5%
inverseProjectionMatrix
��5 L
,
��L M%
inverseProjectionMatrix
��N e
)
��e f
;
��f g
cmd
�� 
.
�� 
SetGlobalMatrix
�� #
(
��# $
ShaderPropertyId
��$ 4
.
��4 5,
inverseViewAndProjectionMatrix
��5 S
,
��S T#
inverseViewProjection
��U j
)
��j k
;
��k l
}
�� 
}
�� 	
void
�� )
SetPerCameraShaderVariables
��
(
��( )

��) 6
cmd
��7 :
,
��: ;
ref
��< ?

CameraData
��@ J

cameraData
��K U
)
��U V
{
�� 	
using
�� 
var
�� 
	profScope
�� 
=
��  !
new
��" %
ProfilingScope
��& 4
(
��4 5
cmd
��5 8
,
��8 9
	Profiling
��: C
.
��C D)
setPerCameraShaderVariables
��D _
)
��_ `
;
��` a
Camera
�� 
camera
�� 
=
�� 

cameraData
�� &
.
��& '
camera
��' -
;
��- .
Rect
�� 
	pixelRect
�� 
=
�� 

cameraData
�� '
.
��' (
	pixelRect
��( 1
;
��1 2
float
�� 
scaledCameraWidth
�� #
=
��$ %
(
��& '
float
��' ,
)
��, -
	pixelRect
��- 6
.
��6 7
width
��7 <
*
��= >

cameraData
��? I
.
��I J
renderScale
��J U
;
��U V
float
��  
scaledCameraHeight
�� $
=
��% &
(
��' (
float
��( -
)
��- .
	pixelRect
��. 7
.
��7 8
height
��8 >
*
��? @

cameraData
��A K
.
��K L
renderScale
��L W
;
��W X
float
�� 
cameraWidth
�� 
=
�� 
(
��  !
float
��! &
)
��& '
	pixelRect
��' 0
.
��0 1
width
��1 6
;
��6 7
float
�� 
cameraHeight
�� 
=
��  
(
��! "
float
��" '
)
��' (
	pixelRect
��( 1
.
��1 2
height
��2 8
;
��8 9
if
�� 
(
�� 

cameraData
�� 
.
�� 
xr
�� 
.
�� 
enabled
�� $
)
��$ %
{
�� 
scaledCameraWidth
�� !
=
��" #
(
��$ %
float
��% *
)
��* +

cameraData
��+ 5
.
��5 6$
cameraTargetDescriptor
��6 L
.
��L M
width
��M R
;
��R S 
scaledCameraHeight
�� "
=
��# $
(
��% &
float
��& +
)
��+ ,

cameraData
��, 6
.
��6 7$
cameraTargetDescriptor
��7 M
.
��M N
height
��N T
;
��T U
cameraWidth
�� 
=
�� 
(
�� 
float
�� $
)
��$ %

cameraData
��% /
.
��/ 0$
cameraTargetDescriptor
��0 F
.
��F G
width
��G L
;
��L M
cameraHeight
�� 
=
�� 
(
��  
float
��  %
)
��% &

cameraData
��& 0
.
��0 1$
cameraTargetDescriptor
��1 G
.
��G H
height
��H N
;
��N O
}
�� 
if
�� 
(
�� 
camera
�� 
.
�� $
allowDynamicResolution
�� -
)
��- .
{
�� 
scaledCameraWidth
�� !
*=
��" $#
ScalableBufferManager
��% :
.
��: ;
widthScaleFactor
��; K
;
��K L 
scaledCameraHeight
�� "
*=
��# %#
ScalableBufferManager
��& ;
.
��; <
heightScaleFactor
��< M
;
��M N
}
�� 
float
�� 
near
�� 
=
�� 
camera
�� 
.
��  

��  -
;
��- .
float
�� 
far
�� 
=
�� 
camera
�� 
.
�� 
farClipPlane
�� +
;
��+ ,
float
�� 
invNear
�� 
=
�� 
Mathf
�� !
.
��! "

��" /
(
��/ 0
near
��0 4
,
��4 5
$num
��6 :
)
��: ;
?
��< =
$num
��> B
:
��C D
$num
��E I
/
��J K
near
��L P
;
��P Q
float
�� 
invFar
�� 
=
�� 
Mathf
��  
.
��  !

��! .
(
��. /
far
��/ 2
,
��2 3
$num
��4 8
)
��8 9
?
��: ;
$num
��< @
:
��A B
$num
��C G
/
��H I
far
��J M
;
��M N
float
�� 
isOrthographic
��  
=
��! "
camera
��# )
.
��) *
orthographic
��* 6
?
��7 8
$num
��9 =
:
��> ?
$num
��@ D
;
��D E
float
�� 
zc0
�� 
=
�� 
$num
�� 
-
�� 
far
�� "
*
��# $
invNear
��% ,
;
��, -
float
�� 
zc1
�� 
=
�� 
far
�� 
*
�� 
invNear
�� %
;
��% &
Vector4
�� 

�� !
=
��" #
new
��$ '
Vector4
��( /
(
��/ 0
zc0
��0 3
,
��3 4
zc1
��5 8
,
��8 9
zc0
��: =
*
��> ?
invFar
��@ F
,
��F G
zc1
��H K
*
��L M
invFar
��N T
)
��T U
;
��U V
if
�� 
(
�� 

SystemInfo
�� 
.
�� !
usesReversedZBuffer
�� .
)
��. /
{
�� 

�� 
.
�� 
y
�� 
+=
��  "

��# 0
.
��0 1
x
��1 2
;
��2 3

�� 
.
�� 
x
�� 
=
��  !
-
��" #

��# 0
.
��0 1
x
��1 2
;
��2 3

�� 
.
�� 
w
�� 
+=
��  "

��# 0
.
��0 1
z
��1 2
;
��2 3

�� 
.
�� 
z
�� 
=
��  !
-
��" #

��# 0
.
��0 1
z
��1 2
;
��2 3
}
�� 
Vector4
�� 
orthoParams
�� 
=
��  !
new
��" %
Vector4
��& -
(
��- .
camera
��. 4
.
��4 5
orthographicSize
��5 E
*
��F G

cameraData
��H R
.
��R S
aspectRatio
��S ^
,
��^ _
camera
��` f
.
��f g
orthographicSize
��g w
,
��w x
$num
��y }
,
��} ~
isOrthographic�� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1!
worldSpaceCameraPos
��1 D
,
��D E
camera
��F L
.
��L M
	transform
��M V
.
��V W
position
��W _
)
��_ `
;
��` a
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
screenParams
��1 =
,
��= >
new
��? B
Vector4
��C J
(
��J K
cameraWidth
��K V
,
��V W
cameraHeight
��X d
,
��d e
$num
��f j
+
��k l
$num
��m q
/
��r s
cameraWidth
��t 
,�� �
$num��� �
+��� �
$num��� �
/��� �
cameraHeight��� �
)��� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1 
scaledScreenParams
��1 C
,
��C D
new
��E H
Vector4
��I P
(
��P Q
scaledCameraWidth
��Q b
,
��b c 
scaledCameraHeight
��d v
,
��v w
$num
��x |
+
��} ~
$num�� �
/��� �!
scaledCameraWidth��� �
,��� �
$num��� �
+��� �
$num��� �
/��� �"
scaledCameraHeight��� �
)��� �
)��� �
;��� �
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1

��1 >
,
��> ?

��@ M
)
��M N
;
��N O
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
orthoParams
��1 <
,
��< =
orthoParams
��> I
)
��I J
;
��J K
}
�� 	
void
�� !
SetShaderTimeValues
��
(
��  !

��! .
cmd
��/ 2
,
��2 3
float
��4 9
time
��: >
,
��> ?
float
��@ E
	deltaTime
��F O
,
��O P
float
��Q V
smoothDeltaTime
��W f
)
��f g
{
�� 	
float
�� 

timeEights
�� 
=
�� 
time
�� #
/
��$ %
$num
��& (
;
��( )
float
�� 

timeFourth
�� 
=
�� 
time
�� #
/
��$ %
$num
��& (
;
��( )
float
�� 
timeHalf
�� 
=
�� 
time
�� !
/
��" #
$num
��$ &
;
��& '
Vector4
�� 

timeVector
�� 
=
��  
time
��! %
*
��& '
new
��( +
Vector4
��, 3
(
��3 4
$num
��4 6
/
��7 8
$num
��9 <
,
��< =
$num
��> @
,
��@ A
$num
��B D
,
��D E
$num
��F H
)
��H I
;
��I J
Vector4
�� 

�� !
=
��" #
new
��$ '
Vector4
��( /
(
��/ 0
Mathf
��0 5
.
��5 6
Sin
��6 9
(
��9 :

timeEights
��: D
)
��D E
,
��E F
Mathf
��G L
.
��L M
Sin
��M P
(
��P Q

timeFourth
��Q [
)
��[ \
,
��\ ]
Mathf
��^ c
.
��c d
Sin
��d g
(
��g h
timeHalf
��h p
)
��p q
,
��q r
Mathf
��s x
.
��x y
Sin
��y |
(
��| }
time��} �
)��� �
)��� �
;��� �
Vector4
�� 

�� !
=
��" #
new
��$ '
Vector4
��( /
(
��/ 0
Mathf
��0 5
.
��5 6
Cos
��6 9
(
��9 :

timeEights
��: D
)
��D E
,
��E F
Mathf
��G L
.
��L M
Cos
��M P
(
��P Q

timeFourth
��Q [
)
��[ \
,
��\ ]
Mathf
��^ c
.
��c d
Cos
��d g
(
��g h
timeHalf
��h p
)
��p q
,
��q r
Mathf
��s x
.
��x y
Cos
��y |
(
��| }
time��} �
)��� �
)��� �
;��� �
Vector4
�� 
deltaTimeVector
�� #
=
��$ %
new
��& )
Vector4
��* 1
(
��1 2
	deltaTime
��2 ;
,
��; <
$num
��= ?
/
��@ A
	deltaTime
��B K
,
��K L
smoothDeltaTime
��M \
,
��\ ]
$num
��^ `
/
��a b
smoothDeltaTime
��c r
)
��r s
;
��s t
Vector4
�� "
timeParametersVector
�� (
=
��) *
new
��+ .
Vector4
��/ 6
(
��6 7
time
��7 ;
,
��; <
Mathf
��= B
.
��B C
Sin
��C F
(
��F G
time
��G K
)
��K L
,
��L M
Mathf
��N S
.
��S T
Cos
��T W
(
��W X
time
��X \
)
��\ ]
,
��] ^
$num
��_ c
)
��c d
;
��d e
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
time
��1 5
,
��5 6

timeVector
��7 A
)
��A B
;
��B C
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
sinTime
��1 8
,
��8 9

��: G
)
��G H
;
��H I
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
cosTime
��1 8
,
��8 9

��: G
)
��G H
;
��H I
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
	deltaTime
��1 :
,
��: ;
deltaTimeVector
��< K
)
��K L
;
��L M
cmd
�� 
.
�� 
SetGlobalVector
�� 
(
��  
ShaderPropertyId
��  0
.
��0 1
timeParameters
��1 ?
,
��? @"
timeParametersVector
��A U
)
��U V
;
��V W
}
�� 	
public
�� $
RenderTargetIdentifier
�� %
cameraColorTarget
��& 7
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
!
�� 
(
�� #
m_IsPipelineExecuting
�� +
||
��, .&
isCameraColorTargetValid
��/ G
)
��G H
)
��H I
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str��% �
)��� �
;��� �
}
�� 
return
�� !
m_CameraColorTarget
�� *
;
��* +
}
�� 
}
�� 	
public
�� $
RenderTargetIdentifier
�� %
cameraDepthTarget
��& 7
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
!
�� #
m_IsPipelineExecuting
�� *
)
��* +
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str��% �
)��� �
;��� �
}
�� 
return
�� !
m_CameraDepthTarget
�� *
;
��* +
}
�� 
}
�� 	
	protected
�� 
List
�� 
<
�� '
ScriptableRendererFeature
�� 0
>
��0 1
rendererFeatures
��2 B
{
�� 	
get
�� 
=>
��  
m_RendererFeatures
�� %
;
��% &
}
�� 	
	protected
�� 
List
�� 
<
�� "
ScriptableRenderPass
�� +
>
��+ ,#
activeRenderPassQueue
��- B
{
�� 	
get
�� 
=>
�� %
m_ActiveRenderPassQueue
�� *
;
��* +
}
�� 	
public
�� 
RenderingFeatures
��  (
supportedRenderingFeatures
��! ;
{
��< =
get
��> A
;
��A B
set
��C F
;
��F G
}
��H I
=
��J K
new
��L O
RenderingFeatures
��P a
(
��a b
)
��b c
;
��c d
public
��  
GraphicsDeviceType
�� !
[
��! "
]
��" #,
unsupportedGraphicsDeviceTypes
��$ B
{
��C D
get
��E H
;
��H I
set
��J M
;
��M N
}
��O P
=
��Q R
new
��S V 
GraphicsDeviceType
��W i
[
��i j
$num
��j k
]
��k l
;
��l m
static
�� 
class
�� 
RenderPassBlock
�� $
{
�� 	
public
�� 
static
�� 
readonly
�� "
int
��# &
BeforeRendering
��' 6
=
��7 8
$num
��9 :
;
��: ;
public
�� 
static
�� 
readonly
�� "
int
��# &!
MainRenderingOpaque
��' :
=
��; <
$num
��= >
;
��> ?
public
�� 
static
�� 
readonly
�� "
int
��# &&
MainRenderingTransparent
��' ?
=
��@ A
$num
��B C
;
��C D
public
�� 
static
�� 
readonly
�� "
int
��# &
AfterRendering
��' 5
=
��6 7
$num
��8 9
;
��9 :
}
�� 	
const
�� 
int
�� $
k_RenderPassBlockCount
�� (
=
��) *
$num
��+ ,
;
��, -
List
�� 
<
�� 
ScriptableRenderPass
��
>
��! "%
m_ActiveRenderPassQueue
��# :
=
��; <
new
��= @
List
��A E
<
��E F"
ScriptableRenderPass
��F Z
>
��Z [
(
��[ \
$num
��\ ^
)
��^ _
;
��_ `
List
�� 
<
�� 
ScriptableRendererFeature
��
>
��& ' 
m_RendererFeatures
��( :
=
��; <
new
��= @
List
��A E
<
��E F'
ScriptableRendererFeature
��F _
>
��_ `
(
��` a
$num
��a c
)
��c d
;
��d e$
RenderTargetIdentifier
�� !
m_CameraColorTarget
�� 2
;
��2 3$
RenderTargetIdentifier
�� !
m_CameraDepthTarget
�� 2
;
��2 3
bool
�� 1
#m_FirstTimeCameraColorTargetIsBound
��
=
��1 2
true
��3 7
;
��7 8
bool
�� 1
#m_FirstTimeCameraDepthTargetIsBound
��
=
��1 2
true
��3 7
;
��7 8
bool
�� #
m_IsPipelineExecuting
��
=
��# $
false
��% *
;
��* +
internal
�� 
bool
�� &
isCameraColorTargetValid
�� .
=
��/ 0
false
��1 6
;
��6 7
static
�� $
RenderTargetIdentifier
�� %
[
��% &
]
��& '&
m_ActiveColorAttachments
��( @
=
��A B
new
��C F$
RenderTargetIdentifier
��G ]
[
��] ^
]
��^ _
{
��_ `
$num
��` a
,
��a b
$num
��c d
,
��d e
$num
��f g
,
��g h
$num
��i j
,
��j k
$num
��l m
,
��m n
$num
��o p
,
��p q
$num
��r s
,
��s t
$num
��u v
}
��w x
;
��x y
static
�� $
RenderTargetIdentifier
�� %%
m_ActiveDepthAttachment
��& =
;
��= >
static
�� $
RenderTargetIdentifier
�� %
[
��% &
]
��& '
[
��' (
]
��( ),
m_TrimmedColorAttachmentCopies
��* H
=
��I J
new
��K N$
RenderTargetIdentifier
��O e
[
��e f
]
��f g
[
��g h
]
��h i
{
�� 	
new
�� $
RenderTargetIdentifier
�� &
[
��& '
$num
��' (
]
��( )
,
��) *
new
�� $
RenderTargetIdentifier
�� &
[
��& '
]
��' (
{
��( )
$num
��) *
}
��* +
,
��+ ,
new
�� $
RenderTargetIdentifier
�� &
[
��& '
]
��' (
{
��( )
$num
��) *
,
$num