ø
èD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.shadergraph@10.2.2\Editor\Utilities\EnumInfo.cs
	namespace 	
UnityEditor
 
. 
ShaderGraph !
{ 
static 

class 
EnumInfo 
< 
T 
> 
where "
T# $
:% &
Enum' +
{ 
public 
static 
T 
[ 
] 
values  
;  !
static		 
EnumInfo		 
(		 
)		 
{

 	
values 
= 
( 
T 
[ 
] 
) 
Enum 
. 
	GetValues (
(( )
typeof) /
(/ 0
T0 1
)1 2
)2 3
;3 4
} 	
} 
} ¬
ùD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.shadergraph@10.2.2\Editor\Utilities\GenerationAPIAttribute.cs
	namespace 	
UnityEditor
 
. 
ShaderGraph !
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
|+ ,
AttributeTargets- =
.= >
Struct> D
|E F
AttributeTargetsG W
.W X
EnumX \
|] ^
AttributeTargets_ o
.o p
	Interfacep y
,y z
	Inherited	{ Ñ
=
Ö Ü
true
á ã
,
ã å
AllowMultiple
ç ö
=
õ ú
false
ù ¢
)
¢ £
]
£ §
internal 
class "
GenerationAPIAttribute )
:* +
	Attribute, 5
{ 
public		 "
GenerationAPIAttribute		 %
(		% &
)		& '
{		' (
}		( )
}

 
} ß
ìD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.shadergraph@10.2.2\Editor\Utilities\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :“
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.shadergraph@10.2.2\Editor\Utilities\StringBuilderExtensions.cs
	namespace 	
UnityEditor
 
. 
ShaderGraph !
{ 
static 

class #
StringBuilderExtensions (
{ 
public 
static 
void 
AppendIndentedLines .
(. /
this/ 3
StringBuilder4 A
sbB D
,D E
stringF L
linesM R
,R S
stringT Z
indentation[ f
)f g
{		 	
sb

 
.

 
EnsureCapacity

 
(

 
sb

  
.

  !
Length

! '
+

( )
lines

* /
.

/ 0
Length

0 6
)

6 7
;

7 8
var 
	charIndex 
= 
$num 
; 
while 
( 
	charIndex 
< 
lines $
.$ %
Length% +
)+ ,
{ 
var 
nextNewLineIndex $
=% &
lines' ,
., -
IndexOf- 4
(4 5
Environment5 @
.@ A
NewLineA H
,H I
	charIndexJ S
,S T
StringComparisonU e
.e f
Ordinalf m
)m n
;n o
if 
( 
nextNewLineIndex $
==% '
-( )
$num) *
)* +
{ 
nextNewLineIndex $
=% &
lines' ,
., -
Length- 3
;3 4
} 
sb 
. 
Append 
( 
indentation %
)% &
;& '
for 
( 
var 
i 
= 
	charIndex &
;& '
i( )
<* +
nextNewLineIndex, <
;< =
i> ?
++? A
)A B
{ 
sb 
. 
Append 
( 
lines #
[# $
i$ %
]% &
)& '
;' (
} 
sb 
. 

AppendLine 
( 
) 
;  
	charIndex 
= 
nextNewLineIndex ,
+- .
Environment/ :
.: ;
NewLine; B
.B C
LengthC I
;I J
} 
} 	
}   
}!! 