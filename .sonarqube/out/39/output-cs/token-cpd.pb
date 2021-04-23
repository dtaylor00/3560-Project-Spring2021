¶H
~D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.probuilder@4.4.0\Addons\Fbx.cs
	namespace 	
UnityEngine
 
. 

ProBuilder  
.  !
Addons! '
.' (
FBX( +
{		 
class 	

FbxOptions
 
{ 
public 
bool 
quads 
; 
} 
[ 
InitializeOnLoad 
] 
static 

class 
Fbx 
{ 
private 
static 
Assembly 
FbxExporterAssembly  3
{ 	
get 
{   
try!! 
{"" 
return## 
Assembly## #
.### $
Load##$ (
(##( )
$str##) C
)##C D
;##D E
}$$ 
catch%% 
(%% 
System%% 
.%% 
IO%%  
.%%  !!
FileNotFoundException%%! 6
)%%6 7
{&& 
return'' 
null'' 
;''  
}(( 
})) 
}** 	
static,, 
readonly,, 
Type,, 
[,, 
],, 
k_ProBuilderTypes,, 0
=,,1 2
new,,3 6
Type,,7 ;
[,,; <
],,< =
{-- 	
typeof.. 
(.. 
BezierShape.. 
).. 
,..  
typeof// 
(// 
	PolyShape// 
)// 
,// 
typeof00 
(00 
Entity00 
)00 
}11 	
;11	 

static33 

FbxOptions33 
m_FbxOptions33 &
=33' (
new33) ,

FbxOptions33- 7
(337 8
)338 9
{33: ;
quads44 
=44 
true44 
}55 	
;55	 

static77 
Fbx77 
(77 
)77 
{88 	
TryLoadFbxSupport99 
(99 
)99 
;99  
}:: 	
static<< 
void<< 
TryLoadFbxSupport<< %
(<<% &
)<<& '
{== 	
if>> 
(>> 
FbxExporterAssembly>> #
==>>$ &
null>>' +
)>>+ ,
{?? 
return@@ 
;@@ 
}AA 
varCC 
modelExporterCC 
=CC 
FbxExporterAssemblyCC  3
.CC3 4
GetTypeCC4 ;
(CC; <
$strCC< l
)CCl m
;CCm n
varDD  
registerMeshCallbackDD $
=DD% &
modelExporterDD' 4
.DD4 5

GetMethodsDD5 ?
(DD? @
BindingFlagsDD@ L
.DDL M
	NonPublicDDM V
|DDW X
BindingFlagsDDY e
.DDe f
StaticDDf l
)DDl m
.DDm n
WhereDDn s
(DDs t
xDDt u
=>DDv x
xDDy z
.DDz {
NameDD{ 
==
DDÄ Ç
$str
DDÉ ô
)
DDô ö
.
DDö õ
First
DDõ †
(
DD† °
x
DD° ¢
=>
DD£ •
x
DD¶ ß
.
DDß ®'
ContainsGenericParameters
DD® ¡
)
DD¡ ¬
;
DD¬ √ 
registerMeshCallbackEE  
=EE! " 
registerMeshCallbackEE# 7
.EE7 8
MakeGenericMethodEE8 I
(EEI J
typeofEEJ P
(EEP Q
ProBuilderMeshEEQ _
)EE_ `
)EE` a
;EEa b
varGG 
getMeshForComponentGG #
=GG$ %
FbxExporterAssemblyGG& 9
.GG9 :
GetTypesGG: B
(GGB C
)GGC D
.HH 
WhereHH 
(HH 
tHH 
=>HH 
tHH 
.HH 
BaseTypeHH %
==HH& (
typeofHH) /
(HH/ 0
MulticastDelegateHH0 A
)HHA B
&&HHC E
tHHF G
.HHG H
NameHHH L
.HHL M

StartsWithHHM W
(HHW X
$strHHX m
)HHm n
)HHn o
.II 
FirstII 
(II 
tII 
=>II 
tII 
.II %
ContainsGenericParametersII 6
)II6 7
;II7 8
getMeshForComponentKK 
=KK  !
getMeshForComponentKK" 5
.KK5 6
MakeGenericTypeKK6 E
(KKE F
typeofKKF L
(KKL M
ProBuilderMeshKKM [
)KK[ \
)KK\ ]
;KK] ^
varLL 
meshDelegateLL 
=LL 
DelegateLL '
.LL' (
CreateDelegateLL( 6
(LL6 7
getMeshForComponentLL7 J
,LLJ K
typeofLLL R
(LLR S
FbxLLS V
)LLV W
.LLW X
	GetMethodLLX a
(LLa b
$strLLb w
,LLw x
BindingFlags	LLy Ö
.
LLÖ Ü
	NonPublic
LLÜ è
|
LLê ë
BindingFlags
LLí û
.
LLû ü
Static
LLü •
)
LL• ¶
)
LL¶ ß
;
LLß ® 
registerMeshCallbackNN  
.NN  !
InvokeNN! '
(NN' (
nullNN( ,
,NN, -
newNN. 1
objectNN2 8
[NN8 9
]NN9 :
{NN; <
meshDelegateNN= I
,NNI J
trueNNK O
}NNP Q
)NNQ R
;NNR S
m_FbxOptionsPP 
.PP 
quadsPP 
=PP  
ProBuilderSettingsPP! 3
.PP3 4
GetPP4 7
<PP7 8
boolPP8 <
>PP< =
(PP= >
$strPP> R
,PPR S
SettingsScopePPT a
.PPa b
UserPPb f
,PPf g
truePPh l
)PPl m
;PPm n
}QQ 	
staticSS 
boolSS 
GetMeshForComponentSS '
(SS' (
objectSS( .
exporterSS/ 7
,SS7 8
ProBuilderMeshSS9 G
pmeshSSH M
,SSM N
objectSSO U
nodeSSV Z
)SSZ [
{TT 	
MeshUU 
meshUU 
=UU 
newUU 
MeshUU  
(UU  !
)UU! "
;UU" #
MeshUtilityVV 
.VV 
CompileVV 
(VV  
pmeshVV  %
,VV% &
meshVV' +
,VV+ ,
m_FbxOptionsVV- 9
.VV9 :
quadsVV: ?
?VV@ A
MeshTopologyVVB N
.VVN O
QuadsVVO T
:VVU V
MeshTopologyVVW c
.VVc d
	TrianglesVVd m
)VVm n
;VVn o
varYY 
pMeshRendererYY 
=YY 
pmeshYY  %
.YY% &
GetComponentYY& 2
<YY2 3
MeshRendererYY3 ?
>YY? @
(YY@ A
)YYA B
;YYB C
varZZ 
sharedMaterialsZZ 
=ZZ  !
pMeshRendererZZ" /
?ZZ0 1
pMeshRendererZZ2 ?
.ZZ? @
sharedMaterialsZZ@ O
:ZZP Q
nullZZR V
;ZZV W
var[[ 
exportMeshMethod[[  
=[[! "
exporter[[# +
.[[+ ,
GetType[[, 3
([[3 4
)[[4 5
.[[5 6
	GetMethod[[6 ?
([[? @
$str[[@ L
,[[L M
BindingFlags[[N Z
.[[Z [
	NonPublic[[[ d
|[[e f
BindingFlags[[g s
.[[s t
Instance[[t |
,[[| }
null	[[~ Ç
,
[[Ç É
new
[[Ñ á
Type
[[à å
[
[[å ç
]
[[ç é
{
[[è ê
typeof
[[ë ó
(
[[ó ò
Mesh
[[ò ú
)
[[ú ù
,
[[ù û
node
[[ü £
.
[[£ §
GetType
[[§ ´
(
[[´ ¨
)
[[¨ ≠
,
[[≠ Æ
typeof
[[Ø µ
(
[[µ ∂
Material
[[∂ æ
[
[[æ ø
]
[[ø ¿
)
[[¿ ¡
}
[[¬ √
,
[[√ ƒ
null
[[≈ …
)
[[…  
;
[[  À
exportMeshMethod\\ 
.\\ 
Invoke\\ #
(\\# $
exporter\\$ ,
,\\, -
new\\. 1
object\\2 8
[\\8 9
]\\9 :
{\\; <
mesh\\= A
,\\A B
node\\C G
,\\G H
sharedMaterials\\I X
}\\Y Z
)\\Z [
;\\[ \
Object^^ 
.^^ 
DestroyImmediate^^ #
(^^# $
mesh^^$ (
)^^( )
;^^) *
foreachaa 
(aa 
varaa 
typeaa 
inaa  
k_ProBuilderTypesaa! 2
)aa2 3
{bb 
varcc 
	componentcc 
=cc 
pmeshcc  %
.cc% &
GetComponentcc& 2
(cc2 3
typecc3 7
)cc7 8
;cc8 9
ifdd 
(dd 
	componentdd 
!=dd  
nulldd! %
)dd% &
Objectee 
.ee 
DestroyImmediateee +
(ee+ ,
	componentee, 5
)ee5 6
;ee6 7
}ff 
pmeshhh 
.hh &
preserveMeshAssetOnDestroyhh ,
=hh- .
truehh/ 3
;hh3 4
Objectii 
.ii 
DestroyImmediateii #
(ii# $
pmeshii$ )
)ii) *
;ii* +
returnkk 
truekk 
;kk 
}ll 	
}mm 
}nn 