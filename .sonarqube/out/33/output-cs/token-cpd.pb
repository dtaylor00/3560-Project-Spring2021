ê
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.render-pipelines.universal@10.2.2\ShaderLibrary\ShaderTypes.cs
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
class 
ShaderInput #
{ 
[ 	
GenerateHLSL	 
( 
PackingRules "
." #
Exact# (
,( )
false* /
)/ 0
]0 1
public 
struct 
	LightData 
{ 	
public 
Vector4 
position #
;# $
public		 
Vector4		 
color		  
;		  !
public

 
Vector4

 
attenuation

 &
;

& '
public 
Vector4 
spotDirection (
;( )
public 
Vector4 "
occlusionProbeChannels 1
;1 2
} 	
[ 	
GenerateHLSL	 
( 
PackingRules "
." #
Exact# (
,( )
false* /
)/ 0
]0 1
public 
struct 

ShadowData  
{ 	
public 
	Matrix4x4 
worldToShadowMatrix 0
;0 1
public 
Vector4 
shadowParams '
;' (
} 	
} 
} 