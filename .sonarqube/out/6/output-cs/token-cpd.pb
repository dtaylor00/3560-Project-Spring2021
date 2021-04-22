�F
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\VSCodeDiscovery.cs
	namespace 	
VSCodeEditor
 
{ 
public		 

	interface		 

IDiscovery		 
{

 

CodeEditor 
. 
Installation 
[  
]  !
PathCallback" .
(. /
)/ 0
;0 1
} 
public 

class 
VSCodeDiscovery  
:! "

IDiscovery# -
{ 
List 
< 

CodeEditor 
. 
Installation $
>$ %
m_Installations& 5
;5 6
public 

CodeEditor 
. 
Installation &
[& '
]' (
PathCallback) 5
(5 6
)6 7
{ 	
if 
( 
m_Installations 
==  "
null# '
)' (
{ 
m_Installations 
=  !
new" %
List& *
<* +

CodeEditor+ 5
.5 6
Installation6 B
>B C
(C D
)D E
;E F!
FindInstallationPaths %
(% &
)& '
;' (
} 
return 
m_Installations "
." #
ToArray# *
(* +
)+ ,
;, -
} 	
void !
FindInstallationPaths "
(" #
)# $
{ 	
string 
[ 
] 
possiblePaths "
=# $
{&& 
GetProgramFiles'' 
(''  
)''  !
+''" #
$str''$ F
,''F G
GetProgramFiles(( 
(((  
)((  !
+((" #
$str(($ B
,((B C
GetProgramFiles)) 
())  
)))  !
+))" #
$str))$ X
,))X Y
GetProgramFiles** 
(**  
)**  !
+**" #
$str**$ K
,**K L
GetLocalAppData++ 
(++  
)++  !
+++" #
$str++$ O
,++O P
GetLocalAppData,, 
(,,  
),,  !
+,," #
$str,,$ K
,,,K L
GetLocalAppData-- 
(--  
)--  !
+--" #
$str--$ a
,--a b
GetLocalAppData.. 
(..  
)..  !
+.." #
$str..$ T
,..T U
}// 
;// 
var99 
existingPaths99 
=99 
possiblePaths99  -
.99- .
Where99. 3
(993 4
VSCodeExists994 @
)99@ A
.99A B
ToList99B H
(99H I
)99I J
;99J K
if:: 
(:: 
!:: 
existingPaths:: 
.:: 
Any:: "
(::" #
)::# $
)::$ %
{;; 
return<< 
;<< 
}== 
var?? 
lcp?? 
=?? "
GetLongestCommonPrefix?? ,
(??, -
existingPaths??- :
)??: ;
;??; <
switch@@ 
(@@ 
existingPaths@@ !
.@@! "
Count@@" '
)@@' (
{AA 
caseBB 
$numBB 
:BB 
{CC 
varDD 
pathDD 
=DD 
existingPathsDD ,
.DD, -
FirstDD- 2
(DD2 3
)DD3 4
;DD4 5
m_InstallationsEE #
=EE$ %
newEE& )
ListEE* .
<EE. /

CodeEditorEE/ 9
.EE9 :
InstallationEE: F
>EEF G
{FF 
newGG 

CodeEditorGG &
.GG& '
InstallationGG' 3
{HH 
PathII  
=II! "
pathII# '
,II' (
NameJJ  
=JJ! "
pathJJ# '
.JJ' (
ContainsJJ( 0
(JJ0 1
$strJJ1 ;
)JJ; <
?KK  !
$strKK" ?
:LL  !
$strLL" 6
}MM 
}NN 
;NN 
breakOO 
;OO 
}PP 
caseQQ 
$numQQ 
whenQQ 
existingPathsQQ )
.QQ) *
AnyQQ* -
(QQ- .
pathQQ. 2
=>QQ3 5
!QQ6 7
(QQ7 8
pathQQ8 <
.QQ< =
	SubstringQQ= F
(QQF G
lcpQQG J
.QQJ K
LengthQQK Q
)QQQ R
.QQR S
ContainsQQS [
(QQ[ \
$strQQ\ _
)QQ_ `
||QQa c
pathQQd h
.QQh i
	SubstringQQi r
(QQr s
lcpQQs v
.QQv w
LengthQQw }
)QQ} ~
.QQ~ 
Contains	QQ �
(
QQ� �
$str
QQ� �
)
QQ� �
)
QQ� �
)
QQ� �
:
QQ� �
{RR 
gotoSS 
caseSS 
$numSS 
;SS  
}TT 
defaultUU 
:UU 
{VV 
m_InstallationsWW #
=WW$ %
existingPathsWW& 3
.WW3 4
SelectWW4 :
(WW: ;
pathWW; ?
=>WW@ B
newWWC F

CodeEditorWWG Q
.WWQ R
InstallationWWR ^
{XX 
NameYY 
=YY 
$"YY !)
Visual Studio Code Insiders (YY! >
{YY> ?
pathYY? C
.YYC D
	SubstringYYD M
(YYM N
lcpYYN Q
.YYQ R
LengthYYR X
)YYX Y
}YYY Z
)YYZ [
"YY[ \
,YY\ ]
PathZZ 
=ZZ 
pathZZ #
}[[ 
)[[ 
.[[ 
ToList[[ 
([[ 
)[[ 
;[[  
break]] 
;]] 
}^^ 
}__ 
}`` 	
staticcc 
stringcc 
GetProgramFilescc %
(cc% &
)cc& '
{dd 	
returnee 
Environmentee 
.ee "
GetEnvironmentVariableee 5
(ee5 6
$stree6 D
)eeD E
?eeE F
.eeF G
ReplaceeeG N
(eeN O
$streeO S
,eeS T
$streeU X
)eeX Y
;eeY Z
}ff 	
statichh 
stringhh 
GetLocalAppDatahh %
(hh% &
)hh& '
{ii 	
returnjj 
Environmentjj 
.jj "
GetEnvironmentVariablejj 5
(jj5 6
$strjj6 D
)jjD E
?jjE F
.jjF G
ReplacejjG N
(jjN O
$strjjO S
,jjS T
$strjjU X
)jjX Y
;jjY Z
}kk 	
staticnn 
stringnn "
GetLongestCommonPrefixnn ,
(nn, -
Listnn- 1
<nn1 2
stringnn2 8
>nn8 9
pathsnn: ?
)nn? @
{oo 	
varpp 

baseLengthpp 
=pp 
pathspp "
.pp" #
Firstpp# (
(pp( )
)pp) *
.pp* +
Lengthpp+ 1
;pp1 2
forqq 
(qq 
varqq 
	pathIndexqq 
=qq  
$numqq! "
;qq" #
	pathIndexqq$ -
<qq. /
pathsqq0 5
.qq5 6
Countqq6 ;
;qq; <
	pathIndexqq= F
++qqF H
)qqH I
{rr 

baseLengthss 
=ss 
Mathss !
.ss! "
Minss" %
(ss% &

baseLengthss& 0
,ss0 1
pathsss2 7
[ss7 8
	pathIndexss8 A
]ssA B
.ssB C
LengthssC I
)ssI J
;ssJ K
fortt 
(tt 
vartt 
itt 
=tt 
$numtt 
;tt 
itt  !
<tt" #

baseLengthtt$ .
;tt. /
itt0 1
++tt1 3
)tt3 4
{uu 
ifvv 
(vv 
pathsvv 
[vv 
	pathIndexvv '
]vv' (
[vv( )
ivv) *
]vv* +
==vv, .
pathsvv/ 4
[vv4 5
$numvv5 6
]vv6 7
[vv7 8
ivv8 9
]vv9 :
)vv: ;
continuevv< D
;vvD E

baseLengthxx 
=xx  
ixx! "
;xx" #
breakyy 
;yy 
}zz 
}{{ 
return}} 
paths}} 
[}} 
$num}} 
]}} 
.}} 
	Substring}} %
(}}% &
$num}}& '
,}}' (

baseLength}}) 3
)}}3 4
;}}4 5
}~~ 	
static
�� 
bool
�� 
VSCodeExists
��  
(
��  !
string
��! '
path
��( ,
)
��, -
{
�� 	
return
�� 
new
�� 
FileInfo
�� 
(
��  
path
��  $
)
��$ %
.
��% &
Exists
��& ,
;
��, -
}
�� 	
}
�� 
}�� �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\GUIDGenerator.cs
	namespace 	
VSCodeEditor
 
{ 
public 

	interface 
IGUIDGenerator #
{ 
string 
ProjectGuid 
( 
string !
projectName" -
,- .
string/ 5
assemblyName6 B
)B C
;C D
string 
SolutionGuid 
( 
string "
projectName# .
,. /
string0 6
	extension7 @
)@ A
;A B
} 
class		 	
GUIDProvider		
 
:		 
IGUIDGenerator		 '
{

 
public 
string 
ProjectGuid !
(! "
string" (
projectName) 4
,4 5
string6 <
assemblyName= I
)I J
{ 	
return !
SolutionGuidGenerator (
.( )
GuidForProject) 7
(7 8
projectName8 C
+D E
assemblyNameF R
)R S
;S T
} 	
public 
string 
SolutionGuid "
(" #
string# )
projectName* 5
,5 6
string7 =
	extension> G
)G H
{ 	
return !
SolutionGuidGenerator (
.( )
GuidForSolution) 8
(8 9
projectName9 D
,D E
	extensionF O
)O P
;P Q
} 	
} 
} ҕ
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\ProjectGeneration.cs
	namespace 	
VSCodeEditor
 
{ 
public 

	interface 

IGenerator 
{ 
bool 
SyncIfNeeded 
( 
List 
< 
string %
>% &
affectedFiles' 4
,4 5
string6 <
[< =
]= >
reimportedFiles? N
)N O
;O P
void 
Sync 
( 
) 
; 
string 
SolutionFile 
( 
) 
; 
string 
ProjectDirectory 
{  !
get" %
;% &
}' (!
IAssemblyNameProvider  
AssemblyNameProvider 2
{3 4
get5 8
;8 9
}: ;
void 
GenerateAll 
( 
bool 
generateAll )
)) *
;* +
bool 
SolutionExists 
( 
) 
; 
} 
public 

class 
ProjectGeneration "
:# $

IGenerator% /
{ 
enum 
ScriptingLanguage 
{ 	
None 
, 
CSharp 
}   	
public"" 
static"" 
readonly"" 
string"" %
MSBuildNamespaceUri""& 9
="": ;
$str""< q
;""q r
const$$ 
string$$ 
k_WindowsNewline$$ %
=$$& '
$str$$( .
;$$. /
const&& 
string&& 
k_SettingsJson&& #
=&&$ %
$str&]& 
;]] 
staticbb 
readonlybb 

Dictionarybb "
<bb" #
stringbb# )
,bb) *
ScriptingLanguagebb+ <
>bb< =(
k_BuiltinSupportedExtensionsbb> Z
=bb[ \
newbb] `

Dictionarybba k
<bbk l
stringbbl r
,bbr s
ScriptingLanguage	bbt �
>
bb� �
{cc 	
{dd 
$strdd 
,dd 
ScriptingLanguagedd %
.dd% &
CSharpdd& ,
}dd- .
,dd. /
{ee 
$stree 
,ee 
ScriptingLanguageee '
.ee' (
Noneee( ,
}ee- .
,ee. /
{ff 
$strff 
,ff 
ScriptingLanguageff &
.ff& '
Noneff' +
}ff, -
,ff- .
{gg 
$strgg 
,gg 
ScriptingLanguagegg )
.gg) *
Nonegg* .
}gg/ 0
,gg0 1
{hh 
$strhh 
,hh 
ScriptingLanguagehh *
.hh* +
Nonehh+ /
}hh0 1
,hh1 2
{ii 
$strii 
,ii 
ScriptingLanguageii (
.ii( )
Noneii) -
}ii. /
,ii/ 0
{jj 
$strjj 
,jj 
ScriptingLanguagejj '
.jj' (
Nonejj( ,
}jj- .
,jj. /
{kk 
$strkk 
,kk 
ScriptingLanguagekk *
.kk* +
Nonekk+ /
}kk0 1
,kk1 2
{ll 
$strll 
,ll 
ScriptingLanguagell +
.ll+ ,
Nonell, 0
}ll1 2
,ll2 3
{mm 
$strmm 
,mm 
ScriptingLanguagemm +
.mm+ ,
Nonemm, 0
}mm1 2
}nn 	
;nn	 

stringpp *
m_SolutionProjectEntryTemplatepp -
=pp. /
stringpp0 6
.pp6 7
Joinpp7 ;
(pp; <
$strpp< B
,ppB C
$strppD {
,pp{ |
$str	pp} �
)
pp� �
.
pp� �
Replace
pp� �
(
pp� �
$str
pp� �
,
pp� �
$str
pp� �
)
pp� �
;
pp� �
stringrr 2
&m_SolutionProjectConfigurationTemplaterr 5
=rr6 7
stringrr8 >
.rr> ?
Joinrr? C
(rrC D
$strrrD J
,rrJ K
$str	rrL �
,
rr� �
$str
rr� �
)
rr� �
.
rr� �
Replace
rr� �
(
rr� �
$str
rr� �
,
rr� �
$str
rr� �
)
rr� �
;
rr� �
statictt 
readonlytt 
stringtt 
[tt 
]tt  $
k_ReimportSyncExtensionstt! 9
=tt: ;
{tt< =
$strtt> D
,ttD E
$strttF O
}ttP Q
;ttQ R
stringvv 
[vv 
]vv (
m_ProjectSupportedExtensionsvv -
=vv. /
newvv0 3
stringvv4 :
[vv: ;
$numvv; <
]vv< =
;vv= >
publicww 
stringww 
ProjectDirectoryww &
{ww' (
getww) ,
;ww, -
}ww. /!
IAssemblyNameProviderxx 

IGeneratorxx (
.xx( ) 
AssemblyNameProviderxx) =
=>xx> @"
m_AssemblyNameProviderxxA W
;xxW X
publiczz 
voidzz 
GenerateAllzz 
(zz  
boolzz  $
generateAllzz% 0
)zz0 1
{{{ 	"
m_AssemblyNameProvider|| "
.||" ##
ToggleProjectGeneration||# :
(||: ;!
ProjectGenerationFlag}} %
.}}% &
BuiltIn}}& -
|~~ !
ProjectGenerationFlag~~ '
.~~' (
Embedded~~( 0
| !
ProjectGenerationFlag '
.' (
Git( +
|
�� #
ProjectGenerationFlag
�� '
.
��' (
Local
��( -
|
�� #
ProjectGenerationFlag
�� '
.
��' (
LocalTarBall
��( 4
|
�� #
ProjectGenerationFlag
�� '
.
��' (
PlayerAssemblies
��( 8
|
�� #
ProjectGenerationFlag
�� '
.
��' (
Registry
��( 0
|
�� #
ProjectGenerationFlag
�� '
.
��' (
Unknown
��( /
)
��/ 0
;
��0 1
}
�� 	
readonly
�� 
string
�� 
m_ProjectName
�� %
;
��% &
readonly
�� #
IAssemblyNameProvider
�� &$
m_AssemblyNameProvider
��' =
;
��= >
readonly
�� 
IFileIO
�� 
m_FileIOProvider
�� )
;
��) *
readonly
�� 
IGUIDGenerator
�� 
m_GUIDProvider
��  .
;
��. /
const
�� 
string
�� 
k_ToolsVersion
�� #
=
��$ %
$str
��& +
;
��+ ,
const
�� 
string
�� 
k_ProductVersion
�� %
=
��& '
$str
��( 4
;
��4 5
const
�� 
string
�� 
k_BaseDirectory
�� $
=
��% &
$str
��' *
;
��* +
const
�� 
string
�� &
k_TargetFrameworkVersion
�� -
=
��. /
$str
��0 8
;
��8 9
const
�� 
string
�� %
k_TargetLanguageVersion
�� ,
=
��- .
$str
��/ 7
;
��7 8
public
�� 
ProjectGeneration
��  
(
��  !
string
��! '
tempDirectory
��( 5
)
��5 6
:
�� 
this
�� 
(
�� 
tempDirectory
��  
,
��  !
new
��" %"
AssemblyNameProvider
��& :
(
��: ;
)
��; <
,
��< =
new
��> A
FileIOProvider
��B P
(
��P Q
)
��Q R
,
��R S
new
��T W
GUIDProvider
��X d
(
��d e
)
��e f
)
��f g
{
��h i
}
��j k
public
�� 
ProjectGeneration
��  
(
��  !
string
��! '
tempDirectory
��( 5
,
��5 6#
IAssemblyNameProvider
��7 L"
assemblyNameProvider
��M a
,
��a b
IFileIO
��c j
fileIO
��k q
,
��q r
IGUIDGenerator��s �
guidGenerator��� �
)��� �
{
�� 	
ProjectDirectory
�� 
=
�� 
tempDirectory
�� ,
.
��, -
Replace
��- 4
(
��4 5
$char
��5 9
,
��9 :
$char
��; >
)
��> ?
;
��? @
m_ProjectName
�� 
=
�� 
Path
��  
.
��  !
GetFileName
��! ,
(
��, -
ProjectDirectory
��- =
)
��= >
;
��> ?$
m_AssemblyNameProvider
�� "
=
��# $"
assemblyNameProvider
��% 9
;
��9 :
m_FileIOProvider
�� 
=
�� 
fileIO
�� %
;
��% &
m_GUIDProvider
�� 
=
�� 
guidGenerator
�� *
;
��* +
}
�� 	
public
�� 
bool
�� 
SyncIfNeeded
��  
(
��  !
List
��! %
<
��% &
string
��& ,
>
��, -
affectedFiles
��. ;
,
��; <
string
��= C
[
��C D
]
��D E
reimportedFiles
��F U
)
��U V
{
�� 	
Profiler
�� 
.
�� 
BeginSample
��  
(
��  !
$str
��! ;
)
��; <
;
��< =-
SetupProjectSupportedExtensions
�� +
(
��+ ,
)
��, -
;
��- .
if
�� 
(
�� 
SolutionExists
�� 
(
�� 
)
��  
&&
��! #"
HasFilesBeenModified
��$ 8
(
��8 9
affectedFiles
��9 F
,
��F G
reimportedFiles
��H W
)
��W X
)
��X Y
{
�� 
var
�� 

assemblies
�� 
=
��  $
m_AssemblyNameProvider
��! 7
.
��7 8
GetAssemblies
��8 E
(
��E F(
ShouldFileBePartOfSolution
��F `
)
��` a
;
��a b
var
�� "
allProjectAssemblies
�� (
=
��) *'
RelevantAssembliesForMode
��+ D
(
��D E

assemblies
��E O
)
��O P
.
��P Q
ToList
��Q W
(
��W X
)
��X Y
;
��Y Z
SyncSolution
�� 
(
�� "
allProjectAssemblies
�� 1
)
��1 2
;
��2 3
var
�� "
allAssetProjectParts
�� (
=
��) **
GenerateAllAssetProjectParts
��+ G
(
��G H
)
��H I
;
��I J
var
�� 
affectedNames
�� !
=
��" #
affectedFiles
��$ 1
.
��1 2
Select
��2 8
(
��8 9
asset
��9 >
=>
��? A$
m_AssemblyNameProvider
��B X
.
��X Y+
GetAssemblyNameFromScriptPath
��Y v
(
��v w
asset
��w |
)
��| }
)
��} ~
.
��~ 
Where�� �
(��� �
name��� �
=>��� �
!��� �
string��� �
.��� �"
IsNullOrWhiteSpace��� �
(��� �
name��� �
)��� �
)��� �
.��� �
Select��� �
(��� �
name��� �
=>��� �
name��� �
.��� �
Split��� �
(��� �
new��� �
[��� �
]��� �
{��� �
$str��� �
}��� �
,��� �"
StringSplitOptions��� �
.��� �"
RemoveEmptyEntries��� �
)��� �
[��� �
$num��� �
]��� �
)��� �
;��� �
var
�� 
reimportedNames
�� #
=
��$ %
reimportedFiles
��& 5
.
��5 6
Select
��6 <
(
��< =
asset
��= B
=>
��C E$
m_AssemblyNameProvider
��F \
.
��\ ]+
GetAssemblyNameFromScriptPath
��] z
(
��z {
asset��{ �
)��� �
)��� �
.��� �
Where��� �
(��� �
name��� �
=>��� �
!��� �
string��� �
.��� �"
IsNullOrWhiteSpace��� �
(��� �
name��� �
)��� �
)��� �
.��� �
Select��� �
(��� �
name��� �
=>��� �
name��� �
.��� �
Split��� �
(��� �
new��� �
[��� �
]��� �
{��� �
$str��� �
}��� �
,��� �"
StringSplitOptions��� �
.��� �"
RemoveEmptyEntries��� �
)��� �
[��� �
$num��� �
]��� �
)��� �
;��� �
var
�� #
affectedAndReimported
�� )
=
��* +
new
��, /
HashSet
��0 7
<
��7 8
string
��8 >
>
��> ?
(
��? @
affectedNames
��@ M
.
��M N
Concat
��N T
(
��T U
reimportedNames
��U d
)
��d e
)
��e f
;
��f g
var
�� 
assemblyNames
�� !
=
��" #
new
��$ '
HashSet
��( /
<
��/ 0
string
��0 6
>
��6 7
(
��7 8"
allProjectAssemblies
��8 L
.
��L M
Select
��M S
(
��S T
assembly
��T \
=>
��] _
Path
��` d
.
��d e
GetFileName
��e p
(
��p q
assembly
��q y
.
��y z

outputPath��z �
)��� �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
assembly
�� %
in
��& ("
allProjectAssemblies
��) =
)
��= >
{
�� 
if
�� 
(
�� 
!
�� #
affectedAndReimported
�� .
.
��. /
Contains
��/ 7
(
��7 8
assembly
��8 @
.
��@ A
name
��A E
)
��E F
)
��F G
continue
��  
;
��  !
SyncProject
�� 
(
��  
assembly
��  (
,
��( )"
allAssetProjectParts
��* >
,
��> ?#
ParseResponseFileData
��@ U
(
��U V
assembly
��V ^
)
��^ _
,
��_ `
assemblyNames
��a n
)
��n o
;
��o p
}
�� 
Profiler
�� 
.
�� 
	EndSample
�� "
(
��" #
)
��# $
;
��$ %
return
�� 
true
�� 
;
�� 
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
��  !
return
�� 
false
�� 
;
�� 
}
�� 	
bool
�� "
HasFilesBeenModified
�� !
(
��! "
List
��" &
<
��& '
string
��' -
>
��- .
affectedFiles
��/ <
,
��< =
string
��> D
[
��D E
]
��E F
reimportedFiles
��G V
)
��V W
{
�� 	
return
�� 
affectedFiles
��  
.
��  !
Any
��! $
(
��$ %(
ShouldFileBePartOfSolution
��% ?
)
��? @
||
��A C
reimportedFiles
��D S
.
��S T
Any
��T W
(
��W X)
ShouldSyncOnReimportedAsset
��X s
)
��s t
;
��t u
}
�� 	
static
�� 
bool
�� )
ShouldSyncOnReimportedAsset
�� /
(
��/ 0
string
��0 6
asset
��7 <
)
��< =
{
�� 	
return
�� &
k_ReimportSyncExtensions
�� +
.
��+ ,
Contains
��, 4
(
��4 5
new
��5 8
FileInfo
��9 A
(
��A B
asset
��B G
)
��G H
.
��H I
	Extension
��I R
)
��R S
;
��S T
}
�� 	
public
�� 
void
�� 
Sync
�� 
(
�� 
)
�� 
{
�� 	-
SetupProjectSupportedExtensions
�� +
(
��+ ,
)
��, -
;
��- .1
#GenerateAndWriteSolutionAndProjects
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 	
public
�� 
bool
�� 
SolutionExists
�� "
(
��" #
)
��# $
{
�� 	
return
�� 
m_FileIOProvider
�� #
.
��# $
Exists
��$ *
(
��* +
SolutionFile
��+ 7
(
��7 8
)
��8 9
)
��9 :
;
��: ;
}
�� 	
void
�� -
SetupProjectSupportedExtensions
�� ,
(
��, -
)
��- .
{
�� 	*
m_ProjectSupportedExtensions
�� (
=
��) *$
m_AssemblyNameProvider
��+ A
.
��A B(
ProjectSupportedExtensions
��B \
;
��\ ]
}
�� 	
bool
�� (
ShouldFileBePartOfSolution
�� '
(
��' (
string
��( .
file
��/ 3
)
��3 4
{
�� 	
if
�� 
(
�� $
m_AssemblyNameProvider
�� &
.
��& ''
IsInternalizedPackagePath
��' @
(
��@ A
file
��A E
)
��E F
)
��F G
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
HasValidExtension
�� $
(
��$ %
file
��% )
)
��) *
;
��* +
}
�� 	
bool
�� 
HasValidExtension
�� 
(
�� 
string
�� %
file
��& *
)
��* +
{
�� 	
string
�� 
	extension
�� 
=
�� 
Path
�� #
.
��# $
GetExtension
��$ 0
(
��0 1
file
��1 5
)
��5 6
;
��6 7
if
�� 
(
�� 
	extension
�� 
==
�� 
$str
�� #
)
��# $
return
�� 
true
�� 
;
�� 
if
�� 
(
�� 
file
�� 
.
�� 
ToLower
�� 
(
�� 
)
�� 
.
�� 
EndsWith
�� '
(
��' (
$str
��( 1
)
��1 2
)
��2 3
return
�� 
true
�� 
;
�� 
return
�� "
IsSupportedExtension
�� '
(
��' (
	extension
��( 1
)
��1 2
;
��2 3
}
�� 	
bool
�� "
IsSupportedExtension
�� !
(
��! "
string
��" (
	extension
��) 2
)
��2 3
{
�� 	
	extension
�� 
=
�� 
	extension
�� !
.
��! "
	TrimStart
��" +
(
��+ ,
$char
��, /
)
��/ 0
;
��0 1
if
�� 
(
�� *
k_BuiltinSupportedExtensions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
	extension
��9 B
)
��B C
)
��C D
return
�� 
true
�� 
;
�� 
if
�� 
(
�� *
m_ProjectSupportedExtensions
�� ,
.
��, -
Contains
��- 5
(
��5 6
	extension
��6 ?
)
��? @
)
��@ A
return
�� 
true
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
static
�� 
ScriptingLanguage
��  "
ScriptingLanguageFor
��! 5
(
��5 6
Assembly
��6 >
assembly
��? G
)
��G H
{
�� 	
return
�� "
ScriptingLanguageFor
�� '
(
��' ('
GetExtensionOfSourceFiles
��( A
(
��A B
assembly
��B J
.
��J K
sourceFiles
��K V
)
��V W
)
��W X
;
��X Y
}
�� 	
static
�� 
string
�� '
GetExtensionOfSourceFiles
�� /
(
��/ 0
string
��0 6
[
��6 7
]
��7 8
files
��9 >
)
��> ?
{
�� 	
return
�� 
files
�� 
.
�� 
Length
�� 
>
��  !
$num
��" #
?
��$ %&
GetExtensionOfSourceFile
��& >
(
��> ?
files
��? D
[
��D E
$num
��E F
]
��F G
)
��G H
:
��I J
$str
��K O
;
��O P
}
�� 	
static
�� 
string
�� &
GetExtensionOfSourceFile
�� .
(
��. /
string
��/ 5
file
��6 :
)
��: ;
{
�� 	
var
�� 
ext
�� 
=
�� 
Path
�� 
.
�� 
GetExtension
�� '
(
��' (
file
��( ,
)
��, -
.
��- .
ToLower
��. 5
(
��5 6
)
��6 7
;
��7 8
ext
�� 
=
�� 
ext
�� 
.
�� 
	Substring
�� 
(
��  
$num
��  !
)
��! "
;
��" #
return
�� 
ext
�� 
;
�� 
}
�� 	
static
�� 
ScriptingLanguage
��  "
ScriptingLanguageFor
��! 5
(
��5 6
string
��6 <
	extension
��= F
)
��F G
{
�� 	
return
�� *
k_BuiltinSupportedExtensions
�� /
.
��/ 0
TryGetValue
��0 ;
(
��; <
	extension
��< E
.
��E F
	TrimStart
��F O
(
��O P
$char
��P S
)
��S T
,
��T U
out
��V Y
var
��Z ]
result
��^ d
)
��d e
?
�� 
result
�� 
:
�� 
ScriptingLanguage
�� #
.
��# $
None
��$ (
;
��( )
}
�� 	
public
�� 
void
�� 1
#GenerateAndWriteSolutionAndProjects
�� 7
(
��7 8
)
��8 9
{
�� 	
var
�� 

assemblies
�� 
=
�� $
m_AssemblyNameProvider
�� 3
.
��3 4
GetAssemblies
��4 A
(
��A B(
ShouldFileBePartOfSolution
��B \
)
��\ ]
;
��] ^
var
�� "
allAssetProjectParts
�� $
=
��% &*
GenerateAllAssetProjectParts
��' C
(
��C D
)
��D E
;
��E F
SyncSolution
�� 
(
�� 

assemblies
�� #
)
��# $
;
��$ %
var
�� "
allProjectAssemblies
�� $
=
��% &'
RelevantAssembliesForMode
��' @
(
��@ A

assemblies
��A K
)
��K L
.
��L M
ToList
��M S
(
��S T
)
��T U
;
��U V
var
�� 
assemblyNames
�� 
=
�� 
new
��  #
HashSet
��$ +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4"
allProjectAssemblies
��4 H
.
��H I
Select
��I O
(
��O P
assembly
��P X
=>
��Y [
Path
��\ `
.
��` a
GetFileName
��a l
(
��l m
assembly
��m u
.
��u v

outputPath��v �
)��� �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
Assembly
�� 
assembly
�� &
in
��' )"
allProjectAssemblies
��* >
)
��> ?
{
�� 
var
�� 
responseFileData
�� $
=
��% &#
ParseResponseFileData
��' <
(
��< =
assembly
��= E
)
��E F
;
��F G
SyncProject
�� 
(
�� 
assembly
�� $
,
��$ %"
allAssetProjectParts
��& :
,
��: ;
responseFileData
��< L
,
��L M
assemblyNames
��N [
)
��[ \
;
��\ ]
}
�� &
WriteVSCodeSettingsFiles
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
List
�� 
<
�� 
ResponseFileData
�� 
>
�� #
ParseResponseFileData
�� 4
(
��4 5
Assembly
��5 =
assembly
��> F
)
��F G
{
�� 	
var
�� (
systemReferenceDirectories
�� *
=
��+ ,!
CompilationPipeline
��- @
.
��@ A*
GetSystemAssemblyDirectories
��A ]
(
��] ^
assembly
��^ f
.
��f g
compilerOptions
��g v
.
��v w$
ApiCompatibilityLevel��w �
)��� �
;��� �

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ResponseFileData
�� /
>
��/ 0
responseFilesData
��1 B
=
��C D
assembly
��E M
.
��M N
compilerOptions
��N ]
.
��] ^
ResponseFiles
��^ k
.
��k l
ToDictionary
��l x
(
��x y
x
��y z
=>
��{ }
x
��~ 
,�� �
x��� �
=>��� �&
m_AssemblyNameProvider��� �
.��� �!
ParseResponseFile��� �
(��� �
x
�� 
,
�� 
ProjectDirectory
��  
,
��  !(
systemReferenceDirectories
�� *
)
�� 
)
�� 
;
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
ResponseFileData
�� /
>
��/ 0%
responseFilesWithErrors
��1 H
=
��I J
responseFilesData
��K \
.
��\ ]
Where
��] b
(
��b c
x
��c d
=>
��e g
x
��h i
.
��i j
Value
��j o
.
��o p
Errors
��p v
.
��v w
Any
��w z
(
��z {
)
��{ |
)
��| }
.
�� 
ToDictionary
�� 
(
�� 
x
�� 
=>
��  "
x
��# $
.
��$ %
Key
��% (
,
��( )
x
��* +
=>
��, .
x
��/ 0
.
��0 1
Value
��1 6
)
��6 7
;
��7 8
if
�� 
(
�� %
responseFilesWithErrors
�� '
.
��' (
Any
��( +
(
��+ ,
)
��, -
)
��- .
{
�� 
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %%
responseFilesWithErrors
��& =
)
��= >
foreach
�� 
(
�� 
var
�� 

valueError
�� '
in
��( *
error
��+ 0
.
��0 1
Value
��1 6
.
��6 7
Errors
��7 =
)
��= >
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$"
��# %
{
��% &
error
��& +
.
��+ ,
Key
��, /
}
��/ 0
 Parse Error : 
��0 ?
{
��? @

valueError
��@ J
}
��J K
"
��K L
)
��L M
;
��M N
}
�� 
}
�� 
return
�� 
responseFilesData
�� $
.
��$ %
Select
��% +
(
��+ ,
x
��, -
=>
��. 0
x
��1 2
.
��2 3
Value
��3 8
)
��8 9
.
��9 :
ToList
��: @
(
��@ A
)
��A B
;
��B C
}
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� !
>
��! "*
GenerateAllAssetProjectParts
��# ?
(
��? @
)
��@ A
{
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� 
StringBuilder
�� ,
>
��, -
stringBuilders
��. <
=
��= >
new
��? B

Dictionary
��C M
<
��M N
string
��N T
,
��T U
StringBuilder
��V c
>
��c d
(
��d e
)
��e f
;
��f g
foreach
�� 
(
�� 
string
�� 
asset
�� !
in
��" $$
m_AssemblyNameProvider
��% ;
.
��; <
GetAllAssetPaths
��< L
(
��L M
)
��M N
)
��N O
{
�� 
if
�� 
(
�� $
m_AssemblyNameProvider
�� *
.
��* +'
IsInternalizedPackagePath
��+ D
(
��D E
asset
��E J
)
��J K
)
��K L
{
�� 
continue
�� 
;
�� 
}
�� 
string
�� 
	extension
��  
=
��! "
Path
��# '
.
��' (
GetExtension
��( 4
(
��4 5
asset
��5 :
)
��: ;
;
��; <
if
�� 
(
�� "
IsSupportedExtension
�� (
(
��( )
	extension
��) 2
)
��2 3
&&
��4 6
ScriptingLanguage
��7 H
.
��H I
None
��I M
==
��N P"
ScriptingLanguageFor
��Q e
(
��e f
	extension
��f o
)
��o p
)
��p q
{
�� 
var
�� 
assemblyName
�� $
=
��% &$
m_AssemblyNameProvider
��' =
.
��= >+
GetAssemblyNameFromScriptPath
��> [
(
��[ \
asset
��\ a
)
��a b
;
��b c
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
assemblyName
��- 9
)
��9 :
)
��: ;
{
�� 
continue
��  
;
��  !
}
�� 
assemblyName
��  
=
��! "
Path
��# '
.
��' ()
GetFileNameWithoutExtension
��( C
(
��C D
assemblyName
��D P
)
��P Q
;
��Q R
if
�� 
(
�� 
!
�� 
stringBuilders
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
assemblyName
��4 @
,
��@ A
out
��B E
var
��F I
projectBuilder
��J X
)
��X Y
)
��Y Z
{
�� 
projectBuilder
�� &
=
��' (
new
��) ,
StringBuilder
��- :
(
��: ;
)
��; <
;
��< =
stringBuilders
�� &
[
��& '
assemblyName
��' 3
]
��3 4
=
��5 6
projectBuilder
��7 E
;
��E F
}
�� 
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* A
)
��A B
.
��B C
Append
��C I
(
��I J$
EscapedRelativePathFor
��J `
(
��` a
asset
��a f
)
��f g
)
��g h
.
��h i
Append
��i o
(
��o p
$str
��p w
)
��w x
.
��x y
Append
��y 
(�� � 
k_WindowsNewline��� �
)��� �
;��� �
}
�� 
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 

Dictionary
�� '
<
��' (
string
��( .
,
��. /
string
��0 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
�� 
entry
�� 
in
�� !
stringBuilders
��" 0
)
��0 1
result
�� 
[
�� 
entry
�� 
.
�� 
Key
��  
]
��  !
=
��" #
entry
��$ )
.
��) *
Value
��* /
.
��/ 0
ToString
��0 8
(
��8 9
)
��9 :
;
��: ;
return
�� 
result
�� 
;
�� 
}
�� 	
void
�� 
SyncProject
�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� %
>
��% &#
allAssetsProjectParts
��' <
,
��< =
List
�� 
<
�� 
ResponseFileData
�� !
>
��! "
responseFilesData
��# 4
,
��4 5
HashSet
�� 
<
�� 
string
�� 
>
�� 
assemblyNames
�� )
)
��) *
{
�� 	)
SyncProjectFileIfNotChanged
�� '
(
��' (
ProjectFile
��( 3
(
��3 4
assembly
��4 <
)
��< =
,
��= >
ProjectText
��? J
(
��J K
assembly
��K S
,
��S T#
allAssetsProjectParts
��U j
,
��j k
responseFilesData
��l }
,
��} ~
assemblyNames�� �
,��� �)
GetAllRoslynAnalyzerPaths��� �
(��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
string
�� "
>
��" #'
GetAllRoslynAnalyzerPaths
��$ =
(
��= >
)
��> ?
{
�� 	
return
�� $
m_AssemblyNameProvider
�� )
.
��) *$
GetRoslynAnalyzerPaths
��* @
(
��@ A
)
��A B
;
��B C
}
�� 	
void
�� )
SyncProjectFileIfNotChanged
�� (
(
��( )
string
��) /
path
��0 4
,
��4 5
string
��6 <
newContents
��= H
)
��H I
{
�� 	"
SyncFileIfNotChanged
��  
(
��  !
path
��! %
,
��% &
newContents
��' 2
)
��2 3
;
��3 4
}
�� 	
void
�� *
SyncSolutionFileIfNotChanged
�� )
(
��) *
string
��* 0
path
��1 5
,
��5 6
string
��7 =
newContents
��> I
)
��I J
{
�� 	"
SyncFileIfNotChanged
��  
(
��  !
path
��! %
,
��% &
newContents
��' 2
)
��2 3
;
��3 4
}
�� 	
void
�� "
SyncFileIfNotChanged
�� !
(
��! "
string
��" (
filename
��) 1
,
��1 2
string
��3 9
newContents
��: E
)
��E F
{
�� 	
if
�� 
(
�� 
m_FileIOProvider
��  
.
��  !
Exists
��! '
(
��' (
filename
��( 0
)
��0 1
)
��1 2
{
�� 
var
�� 
currentContents
�� #
=
��$ %
m_FileIOProvider
��& 6
.
��6 7
ReadAllText
��7 B
(
��B C
filename
��C K
)
��K L
;
��L M
if
�� 
(
�� 
currentContents
�� #
==
��$ &
newContents
��' 2
)
��2 3
{
�� 
return
�� 
;
�� 
}
�� 
}
�� 
m_FileIOProvider
�� 
.
�� 
WriteAllText
�� )
(
��) *
filename
��* 2
,
��2 3
newContents
��4 ?
)
��? @
;
��@ A
}
�� 	
string
�� 
ProjectText
�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� %
>
��% &#
allAssetsProjectParts
��' <
,
��< =
List
�� 
<
�� 
ResponseFileData
�� !
>
��! "
responseFilesData
��# 4
,
��4 5
HashSet
�� 
<
�� 
string
�� 
>
�� 
assemblyNames
�� )
,
��) *
string
�� 
[
�� 
]
�� $
roslynAnalyzerDllPaths
�� +
)
��+ ,
{
�� 	
var
�� 
projectBuilder
�� 
=
��  
new
��! $
StringBuilder
��% 2
(
��2 3
)
��3 4
;
��4 5
ProjectHeader
�� 
(
�� 
assembly
�� "
,
��" #
responseFilesData
��$ 5
,
��5 6$
roslynAnalyzerDllPaths
��7 M
,
��M N
projectBuilder
��O ]
)
��] ^
;
��^ _
var
�� 

references
�� 
=
�� 
new
��  
List
��! %
<
��% &
string
��& ,
>
��, -
(
��- .
)
��. /
;
��/ 0
foreach
�� 
(
�� 
string
�� 
file
��  
in
��! #
assembly
��$ ,
.
��, -
sourceFiles
��- 8
)
��8 9
{
�� 
if
�� 
(
�� 
!
�� 
HasValidExtension
�� &
(
��& '
file
��' +
)
��+ ,
)
��, -
continue
�� 
;
�� 
var
�� 
	extension
�� 
=
�� 
Path
��  $
.
��$ %
GetExtension
��% 1
(
��1 2
file
��2 6
)
��6 7
.
��7 8
ToLower
��8 ?
(
��? @
)
��@ A
;
��A B
var
�� 
fullFile
�� 
=
�� $
EscapedRelativePathFor
�� 5
(
��5 6
file
��6 :
)
��: ;
;
��; <
if
�� 
(
�� 
$str
�� 
!=
�� 
	extension
�� '
)
��' (
{
�� 
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* D
)
��D E
.
��E F
Append
��F L
(
��L M
fullFile
��M U
)
��U V
.
��V W
Append
��W ]
(
��] ^
$str
��^ e
)
��e f
.
��f g
Append
��g m
(
��m n
k_WindowsNewline
��n ~
)
��~ 
;�� �
}
�� 
else
�� 
{
�� 

references
�� 
.
�� 
Add
�� "
(
��" #
fullFile
��# +
)
��+ ,
;
��, -
}
�� 
}
�� 
if
�� 
(
�� #
allAssetsProjectParts
�� %
.
��% &
TryGetValue
��& 1
(
��1 2
assembly
��2 :
.
��: ;
name
��; ?
,
��? @
out
��A D
var
��E H(
additionalAssetsForProject
��I c
)
��c d
)
��d e
projectBuilder
�� 
.
�� 
Append
�� %
(
��% &(
additionalAssetsForProject
��& @
)
��@ A
;
��A B
var
�� 
responseRefs
�� 
=
�� 
responseFilesData
�� 0
.
��0 1

SelectMany
��1 ;
(
��; <
x
��< =
=>
��> @
x
��A B
.
��B C 
FullPathReferences
��C U
.
��U V
Select
��V \
(
��\ ]
r
��] ^
=>
��_ a
r
��b c
)
��c d
)
��d e
;
��e f
var
�� (
internalAssemblyReferences
�� *
=
��+ ,
assembly
��- 5
.
��5 6 
assemblyReferences
��6 H
.
�� 
Where
�� 
(
�� 
i
�� 
=>
�� 
!
�� 
i
�� 
.
�� 
sourceFiles
�� (
.
��( )
Any
��) ,
(
��, -(
ShouldFileBePartOfSolution
��- G
)
��G H
)
��H I
.
��I J
Select
��J P
(
��P Q
i
��Q R
=>
��S U
i
��V W
.
��W X

outputPath
��X b
)
��b c
;
��c d
var
�� 
allReferences
�� 
=
�� 
assembly
�� 
.
�� (
compiledAssemblyReferences
�� 1
.
�� 
Union
�� 
(
�� 
responseRefs
�� #
)
��# $
.
�� 
Union
�� 
(
�� 

references
�� !
)
��! "
.
�� 
Union
�� 
(
�� (
internalAssemblyReferences
�� 1
)
��1 2
.
�� 
Except
�� 
(
�� $
roslynAnalyzerDllPaths
�� .
)
��. /
;
��/ 0
foreach
�� 
(
�� 
var
�� 
	reference
�� "
in
��# %
allReferences
��& 3
)
��3 4
{
�� 
string
�� 
fullReference
�� $
=
��% &
Path
��' +
.
��+ ,
IsPathRooted
��, 8
(
��8 9
	reference
��9 B
)
��B C
?
��D E
	reference
��F O
:
��P Q
Path
��R V
.
��V W
Combine
��W ^
(
��^ _
ProjectDirectory
��_ o
,
��o p
	reference
��q z
)
��z {
;
��{ |
AppendReference
�� 
(
��  
fullReference
��  -
,
��- .
projectBuilder
��/ =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
$num
�� 
<
�� 
assembly
�� 
.
��  
assemblyReferences
�� /
.
��/ 0
Length
��0 6
)
��6 7
{
�� 
projectBuilder
�� 
.
�� 
Append
�� %
(
��% &
$str
��& 6
)
��6 7
.
��7 8
Append
��8 >
(
��> ?
k_WindowsNewline
��? O
)
��O P
;
��P Q
projectBuilder
�� 
.
�� 
Append
�� %
(
��% &
$str
��& 5
)
��5 6
.
��6 7
Append
��7 =
(
��= >
k_WindowsNewline
��> N
)
��N O
;
��O P
foreach
�� 
(
�� 
Assembly
�� !
	reference
��" +
in
��, .
assembly
��/ 7
.
��7 8 
assemblyReferences
��8 J
.
��J K
Where
��K P
(
��P Q
i
��Q R
=>
��S U
i
��V W
.
��W X
sourceFiles
��X c
.
��c d
Any
��d g
(
��g h)
ShouldFileBePartOfSolution��h �
)��� �
)��� �
)��� �
{
�� 
var
�� 
referencedProject
�� )
=
��* +
	reference
��, 5
.
��5 6

outputPath
��6 @
;
��@ A
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* L
)
��L M
.
��M N
Append
��N T
(
��T U
	reference
��U ^
.
��^ _
name
��_ c
)
��c d
.
��d e
Append
��e k
(
��k l!
GetProjectExtension
��l 
(�� �
)��� �
)��� �
.��� �
Append��� �
(��� �
$str��� �
)��� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* <
)
��< =
.
��= >
Append
��> D
(
��D E
ProjectGuid
��E P
(
��P Q
	reference
��Q Z
.
��Z [
name
��[ _
)
��_ `
)
��` a
.
��a b
Append
��b h
(
��h i
$str
��i v
)
��v w
.
��w x
Append
��x ~
(
��~ 
k_WindowsNewline�� �
)��� �
;��� �
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* 8
)
��8 9
.
��9 :
Append
��: @
(
��@ A
	reference
��A J
.
��J K
name
��K O
)
��O P
.
��P Q
Append
��Q W
(
��W X
$str
��X a
)
��a b
.
��b c
Append
��c i
(
��i j
k_WindowsNewline
��j z
)
��z {
;
��{ |
projectBuilder
�� "
.
��" #
Append
��# )
(
��) *
$str
��* C
)
��C D
.
��D E
Append
��E K
(
��K L
k_WindowsNewline
��L \
)
��\ ]
;
��] ^
}
�� 
}
�� 
projectBuilder
�� 
.
�� 
Append
�� !
(
��! "
ProjectFooter
��" /
(
��/ 0
)
��0 1
)
��1 2
;
��2 3
return
�� 
projectBuilder
�� !
.
��! "
ToString
��" *
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
void
�� 
AppendReference
�� #
(
��# $
string
��$ *
fullReference
��+ 8
,
��8 9
StringBuilder
��: G
projectBuilder
��H V
)
��V W
{
�� 	
var
�� 
escapedFullPath
�� 
=
��  !
SecurityElement
��" 1
.
��1 2
Escape
��2 8
(
��8 9
fullReference
��9 F
)
��F G
;
��G H
escapedFullPath
�� 
=
�� 
escapedFullPath
�� -
.
��- .
Replace
��. 5
(
��5 6
$str
��6 <
,
��< =
$str
��> A
)
��A B
;
��B C
escapedFullPath
�� 
=
�� 
escapedFullPath
�� -
.
��- .
Replace
��. 5
(
��5 6
$str
��6 :
,
��: ;
$str
��< ?
)
��? @
;
��@ A
projectBuilder
�� 
.
�� 
Append
�� !
(
��! "
$str
��" =
)
��= >
.
��> ?
Append
��? E
(
��E F
Path
��F J
.
��J K)
GetFileNameWithoutExtension
��K f
(
��f g
escapedFullPath
��g v
)
��v w
)
��w x
.
��x y
Append
��y 
(�� �
$str��� �
)��� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
projectBuilder
�� 
.
�� 
Append
�� !
(
��! "
$str
��" 6
)
��6 7
.
��7 8
Append
��8 >
(
��> ?
escapedFullPath
��? N
)
��N O
.
��O P
Append
��P V
(
��V W
$str
��W d
)
��d e
.
��e f
Append
��f l
(
��l m
k_WindowsNewline
��m }
)
��} ~
;
��~ 
projectBuilder
�� 
.
�� 
Append
�� !
(
��! "
$str
��" 4
)
��4 5
.
��5 6
Append
��6 <
(
��< =
k_WindowsNewline
��= M
)
��M N
;
��N O
}
�� 	
public
�� 
string
�� 
ProjectFile
�� !
(
��! "
Assembly
��" *
assembly
��+ 3
)
��3 4
{
�� 	
var
�� 
fileBuilder
�� 
=
�� 
new
�� !
StringBuilder
��" /
(
��/ 0
assembly
��0 8
.
��8 9
name
��9 =
)
��= >
;
��> ?
fileBuilder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� (
)
��( )
;
��) *
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
��  
ProjectDirectory
��  0
,
��0 1
fileBuilder
��2 =
.
��= >
ToString
��> F
(
��F G
)
��G H
)
��H I
;
��I J
}
�� 	
public
�� 
string
�� 
SolutionFile
�� "
(
��" #
)
��# $
{
�� 	
return
�� 
Path
�� 
.
�� 
Combine
�� 
(
��  
ProjectDirectory
��  0
,
��0 1
$"
��2 4
{
��4 5
m_ProjectName
��5 B
}
��B C
.sln
��C G
"
��G H
)
��H I
;
��I J
}
�� 	
void
�� 
ProjectHeader
�� 
(
�� 
Assembly
�� 
assembly
�� 
,
�� 
List
�� 
<
�� 
ResponseFileData
�� !
>
��! "
responseFilesData
��# 4
,
��4 5
string
�� 
[
�� 
]
�� $
roslynAnalyzerDllPaths
�� +
,
��+ ,
StringBuilder
�� 
builder
�� !
)
�� 	
{
�� 	
var
�� 
otherArguments
�� 
=
��  4
&GetOtherArgumentsFromResponseFilesData
��! G
(
��G H
responseFilesData
��H Y
)
��Y Z
;
��Z [&
GetProjectHeaderTemplate
�� $
(
��$ %
builder
�� 
,
�� 
ProjectGuid
�� 
(
�� 
assembly
�� $
.
��$ %
name
��% )
)
��) *
,
��* +
assembly
�� 
.
�� 
name
�� 
,
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
$str
�� 
,
��  
new
��! $
[
��$ %
]
��% &
{
��' (
$str
��) 0
,
��0 1
$str
��2 9
}
��: ;
.
��; <
Concat
��< B
(
��B C
assembly
��C K
.
��K L
defines
��L S
)
��S T
.
��T U
Concat
��U [
(
��[ \
responseFilesData
��\ m
.
��m n

SelectMany
��n x
(
��x y
x
��y z
=>
��{ }
x
��~ 
.�� �
Defines��� �
)��� �
)��� �
.��� �
Concat��� �
(��� �'
EditorUserBuildSettings��� �
.��� �.
activeScriptCompilationDefines��� �
)��� �
.��� �
Distinct��� �
(��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
)��� �
,��� �
assembly
�� 
.
�� 
compilerOptions
�� (
.
��( )
AllowUnsafeCode
��) 8
|
��9 :
responseFilesData
��; L
.
��L M
Any
��M P
(
��P Q
x
��Q R
=>
��S U
x
��V W
.
��W X
Unsafe
��X ^
)
��^ _
,
��_ `'
GenerateAnalyserItemGroup
�� )
(
��) *
otherArguments
��* 8
[
��8 9
$str
��9 C
]
��C D
.
��D E
Concat
��E K
(
��K L
otherArguments
��L Z
[
��Z [
$str
��[ ^
]
��^ _
)
��_ `
.
�� 

SelectMany
�� 
(
��  
x
��  !
=>
��" $
x
��% &
.
��& '
Split
��' ,
(
��, -
$char
��- 0
)
��0 1
)
��1 2
.
�� 
Concat
�� 
(
�� $
roslynAnalyzerDllPaths
�� 2
)
��2 3
.
�� 
Distinct
�� 
(
�� 
)
�� 
.
�� 
ToArray
�� 
(
�� 
)
�� 
)
�� 
)
��  
;
��  !
}
�� 	
private
�� 
static
�� 
ILookup
�� 
<
�� 
string
�� %
,
��% &
string
��' -
>
��- .4
&GetOtherArgumentsFromResponseFilesData
��/ U
(
��U V
List
��V Z
<
��Z [
ResponseFileData
��[ k
>
��k l
responseFilesData
��m ~
)
��~ 
{
�� 	
var
�� 
paths
�� 
=
�� 
responseFilesData
�� )
.
��) *

SelectMany
��* 4
(
��4 5
x
��5 6
=>
��7 9
{
�� 
return
�� 
x
�� 
.
�� 
OtherArguments
�� +
.
��+ ,
Where
��, 1
(
��1 2
a
��2 3
=>
��4 6
a
��7 8
.
��8 9

StartsWith
��9 C
(
��C D
$str
��D G
)
��G H
||
��I K
a
��L M
.
��M N

StartsWith
��N X
(
��X Y
$str
��Y \
)
��\ ]
)
��] ^
.
��+ ,
Select
��, 2
(
��2 3
b
��3 4
=>
��5 7
{
�� 
var
�� 
index
�� !
=
��" #
b
��$ %
.
��% &
IndexOf
��& -
(
��- .
$str
��. 1
,
��1 2
StringComparison
��3 C
.
��C D
Ordinal
��D K
)
��K L
;
��L M
if
�� 
(
�� 
index
�� !
>
��" #
$num
��$ %
&&
��& (
b
��) *
.
��* +
Length
��+ 1
>
��2 3
index
��4 9
)
��9 :
{
�� 
var
�� 
key
��  #
=
��$ %
b
��& '
.
��' (
	Substring
��( 1
(
��1 2
$num
��2 3
,
��3 4
index
��5 :
-
��; <
$num
��= >
)
��> ?
;
��? @
return
�� "
new
��# &
KeyValuePair
��' 3
<
��3 4
string
��4 :
,
��: ;
string
��< B
>
��B C
(
��C D
key
��D G
,
��G H
b
��I J
.
��J K
	Substring
��K T
(
��T U
index
��U Z
+
��[ \
$num
��] ^
)
��^ _
)
��_ `
;
��` a
}
�� 
const
�� 
string
�� $
warnaserror
��% 0
=
��1 2
$str
��3 @
;
��@ A
if
�� 
(
�� 
b
�� 
.
�� 
	Substring
�� '
(
��' (
$num
��( )
)
��) *
.
��* +

StartsWith
��+ 5
(
��5 6
warnaserror
��6 A
)
��A B
)
��B C
{
�� 
return
�� "
new
��# &
KeyValuePair
��' 3
<
��3 4
string
��4 :
,
��: ;
string
��< B
>
��B C
(
��C D
warnaserror
��D O
,
��O P
b
��Q R
.
��R S
	Substring
��S \
(
��\ ]
warnaserror
��] h
.
��h i
Length
��i o
+
��p q
$num
��r s
)
��s t
)
��t u
;
��u v
}
�� 
return
�� 
default
�� &
;
��& '
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
.
�� 
Distinct
�� 
(
�� 
)
�� 
.
�� 
ToLookup
�� 
(
�� 
o
�� 
=>
�� 
o
�� 
.
�� 
Key
�� "
,
��" #
pair
��$ (
=>
��) +
pair
��, 0
.
��0 1
Value
��1 6
)
��6 7
;
��7 8
return
�� 
paths
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
string
�� '
GenerateAnalyserItemGroup
�� 7
(
��7 8
string
��8 >
[
��> ?
]
��? @
paths
��A F
)
��F G
{
�� 	
if
�� 
(
�� 
!
�� 
paths
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
return
�� 
string
�� 
.
�� 
Empty
�� #
;
��# $
var
�� 
analyserBuilder
�� 
=
��  !
new
��" %
StringBuilder
��& 3
(
��3 4
)
��4 5
;
��5 6
analyserBuilder
�� 
.
�� 
Append
�� "
(
��" #
$str
��# 2
)
��2 3
.
��3 4
Append
��4 :
(
��: ;
k_WindowsNewline
��; K
)
��K L
;
��L M
foreach
�� 
(
�� 
var
�� 
path
�� 
in
��  
paths
��! &
)
��& '
{
�� 
analyserBuilder
�� 
.
��  
Append
��  &
(
��& '
$"
��' )&
    <Analyzer Include=\"
��) A
{
��A B
path
��B F
}
��F G
\" />
��G L
"
��L M
)
��M N
.
��N O
Append
��O U
(
��U V
k_WindowsNewline
��V f
)
��f g
;
��g h
}
�� 
analyserBuilder
�� 
.
�� 
Append
�� "
(
��" #
$str
��# 3
)
��3 4
.
��4 5
Append
��5 ;
(
��; <
k_WindowsNewline
��< L
)
��L M
;
��M N
return
�� 
analyserBuilder
�� "
.
��" #
ToString
��# +
(
��+ ,
)
��, -
;
��- .
}
�� 	
static
�� 
string
�� 
GetSolutionText
�� %
(
��% &
)
��& '
{
�� 	
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
$str
�� %
,
��% &
$str
��' *
,
��* +
$str
��, h
,
��h i
$str��j �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
)��� �
.��� �
Replace��� �
(��� �
$str��� �
,��� �
$str��� �
)��� �
;��� �
}
�� 	
static
�� 
string
�� &
GetProjectFooterTemplate
�� .
(
��. /
)
��/ 0
{
�� 	
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
$str
�� %
,
��% &
$str
��' 8
,
��8 9
$str��: �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
,��� �
$str��� �
)��� �
;��� �
}
�� 	
static
�� 
void
�� &
GetProjectHeaderTemplate
�� ,
(
��, -
StringBuilder
�� 
builder
�� !
,
��! "
string
�� 
assemblyGUID
�� 
,
��  
string
�� 
assemblyName
�� 
,
��  
string
�� 
defines
�� 
,
�� 
bool
�� 
allowUnsafe
�� 
,
�� 
string
�� 
analyzerBlock
��  
)
�� 	
{
�� 	
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� H
)
��H I
.
��I J
Append
��J P
(
��P Q
k_WindowsNewline
��Q a
)
��a b
;
��b c
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 6
)
��6 7
.
��7 8
Append
��8 >
(
��> ?
k_ToolsVersion
��? M
)
��M N
.
��N O
Append
��O U
(
��U V
$str
��V }
)
��} ~
.
��~ 
Append�� �
(��� �#
MSBuildNamespaceUri��� �
)��� �
.��� �
Append��� �
(��� �
$str��� �
)��� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� /
)
��/ 0
.
��0 1
Append
��1 7
(
��7 8
k_WindowsNewline
��8 H
)
��H I
;
��I J
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� /
)
��/ 0
.
��0 1
Append
��1 7
(
��7 8%
k_TargetLanguageVersion
��8 O
)
��O P
.
��P Q
Append
��Q W
(
��W X
$str
��X h
)
��h i
.
��i j
Append
��j p
(
��p q
k_WindowsNewline��q �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
k_WindowsNewline
��9 I
)
��I J
;
��J K
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� /
)
��/ 0
.
��0 1
Append
��1 7
(
��7 8
k_WindowsNewline
��8 H
)
��H I
;
��I J
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� o
)
��o p
.
��p q
Append
��q w
(
��w x
k_WindowsNewline��x �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� a
)
��a b
.
��b c
Append
��c i
(
��i j
k_WindowsNewline
��j z
)
��z {
;
��{ |
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 2
)
��2 3
.
��3 4
Append
��4 :
(
��: ;
k_ProductVersion
��; K
)
��K L
.
��L M
Append
��M S
(
��S T
$str
��T g
)
��g h
.
��h i
Append
��i o
(
��o p
k_WindowsNewline��p �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� D
)
��D E
.
��E F
Append
��F L
(
��L M
k_WindowsNewline
��M ]
)
��] ^
;
��^ _
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 1
)
��1 2
.
��2 3
Append
��3 9
(
��9 :
EditorSettings
��: H
.
��H I,
projectGenerationRootNamespace
��I g
)
��g h
.
��h i
Append
��i o
(
��o p
$str��p �
)��� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
assemblyGUID
��9 E
)
��E F
.
��F G
Append
��G M
(
��M N
$str
��N _
)
��_ `
.
��` a
Append
��a g
(
��g h
k_WindowsNewline
��h x
)
��x y
;
��y z
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� B
)
��B C
.
��C D
Append
��D J
(
��J K
k_WindowsNewline
��K [
)
��[ \
;
��\ ]
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� S
)
��S T
.
��T U
Append
��U [
(
��[ \
k_WindowsNewline
��\ l
)
��l m
;
��m n
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
assemblyName
��9 E
)
��E F
.
��F G
Append
��G M
(
��M N
$str
��N _
)
��_ `
.
��` a
Append
��a g
(
��g h
k_WindowsNewline
��h x
)
��x y
;
��y z
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� :
)
��: ;
.
��; <
Append
��< B
(
��B C&
k_TargetFrameworkVersion
��C [
)
��[ \
.
��\ ]
Append
��] c
(
��c d
$str
��d 
)�� �
.��� �
Append��� �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� D
)
��D E
.
��E F
Append
��F L
(
��L M
k_WindowsNewline
��M ]
)
��] ^
;
��^ _
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 1
)
��1 2
.
��2 3
Append
��3 9
(
��9 :
k_BaseDirectory
��: I
)
��I J
.
��J K
Append
��K Q
(
��Q R
$str
��R d
)
��d e
.
��e f
Append
��f l
(
��l m
k_WindowsNewline
��m }
)
��} ~
;
��~ 
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
k_WindowsNewline
��9 I
)
��I J
;
��J K
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� p
)
��p q
.
��q r
Append
��r x
(
��x y
k_WindowsNewline��y �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� C
)
��C D
.
��D E
Append
��E K
(
��K L
k_WindowsNewline
��L \
)
��\ ]
;
��] ^
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� =
)
��= >
.
��> ?
Append
��? E
(
��E F
k_WindowsNewline
��F V
)
��V W
;
��W X
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� <
)
��< =
.
��= >
Append
��> D
(
��D E
k_WindowsNewline
��E U
)
��U V
;
��V W
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� J
)
��J K
.
��K L
Append
��L R
(
��R S
k_WindowsNewline
��S c
)
��c d
;
��d e
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 3
)
��3 4
.
��4 5
Append
��5 ;
(
��; <
defines
��< C
)
��C D
.
��D E
Append
��E K
(
��K L
$str
��L `
)
��` a
.
��a b
Append
��b h
(
��h i
k_WindowsNewline
��i y
)
��y z
;
��z {
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� C
)
��C D
.
��D E
Append
��E K
(
��K L
k_WindowsNewline
��L \
)
��\ ]
;
��] ^
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� @
)
��@ A
.
��A B
Append
��B H
(
��H I
k_WindowsNewline
��I Y
)
��Y Z
;
��Z [
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 7
)
��7 8
.
��8 9
Append
��9 ?
(
��? @
k_WindowsNewline
��@ P
)
��P Q
;
��Q R
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 5
)
��5 6
.
��6 7
Append
��7 =
(
��= >
allowUnsafe
��> I
)
��I J
.
��J K
Append
��K Q
(
��Q R
$str
��R h
)
��h i
.
��i j
Append
��j p
(
��p q
k_WindowsNewline��q �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
k_WindowsNewline
��9 I
)
��I J
;
��J K
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� /
)
��/ 0
.
��0 1
Append
��1 7
(
��7 8
k_WindowsNewline
��8 H
)
��H I
;
��I J
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� ;
)
��; <
.
��< =
Append
��= C
(
��C D
k_WindowsNewline
��D T
)
��T U
;
��U V
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� ;
)
��; <
.
��< =
Append
��= C
(
��C D
k_WindowsNewline
��D T
)
��T U
;
��U V
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� z
)
��z {
.
��{ |
Append��| �
(��� � 
k_WindowsNewline��� �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� p
)
��p q
.
��q r
Append
��r x
(
��x y
k_WindowsNewline��y �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� n
)
��n o
.
��o p
Append
��p v
(
��v w
k_WindowsNewline��w �
)��� �
;��� �
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� 0
)
��0 1
.
��1 2
Append
��2 8
(
��8 9
k_WindowsNewline
��9 I
)
��I J
;
��J K
builder
�� 
.
�� 
Append
�� 
(
�� 
analyzerBlock
�� (
)
��( )
;
��) *
builder
�� 
.
�� 
Append
�� 
(
�� 
$str
�� +
)
��+ ,
.
��, -
Append
��- 3
(
��3 4
k_WindowsNewline
��4 D
)
��D E
;
��E F
}
�� 	
void
�� 
SyncSolution
�� 
(
�� 
IEnumerable
�� %
<
��% &
Assembly
��& .
>
��. /

assemblies
��0 :
)
��: ;
{
�� 	*
SyncSolutionFileIfNotChanged
�� (
(
��( )
SolutionFile
��) 5
(
��5 6
)
��6 7
,
��7 8
SolutionText
��9 E
(
��E F

assemblies
��F P
)
��P Q
)
��Q R
;
��R S
}
�� 	
string
�� 
SolutionText
�� 
(
�� 
IEnumerable
�� '
<
��' (
Assembly
��( 0
>
��0 1

assemblies
��2 <
)
��< =
{
�� 	
var
�� 
fileversion
�� 
=
�� 
$str
�� %
;
��% &
var
�� 
	vsversion
�� 
=
�� 
$str
�� "
;
��" #
var
��  
relevantAssemblies
�� "
=
��# $'
RelevantAssembliesForMode
��% >
(
��> ?

assemblies
��? I
)
��I J
;
��J K
string
�� 
projectEntries
�� !
=
��" #
GetProjectEntries
��$ 5
(
��5 6 
relevantAssemblies
��6 H
)
��H I
;
��I J
string
�� #
projectConfigurations
�� (
=
��) *
string
��+ 1
.
��1 2
Join
��2 6
(
��6 7
k_WindowsNewline
��7 G
,
��G H 
relevantAssemblies
��I [
.
��[ \
Select
��\ b
(
��b c
i
��c d
=>
��e g-
GetProjectActiveConfigurations��h �
(��� �
ProjectGuid��� �
(��� �
i��� �
.��� �
name��� �
)��� �
)��� �
)��� �
.��� �
ToArray��� �
(��� �
)��� �
)��� �
;��� �
return
�� 
string
�� 
.
�� 
Format
��  
(
��  !
GetSolutionText
��! 0
(
��0 1
)
��1 2
,
��2 3
fileversion
��4 ?
,
��? @
	vsversion
��A J
,
��J K
projectEntries
��L Z
,
��Z [#
projectConfigurations
��\ q
)
��q r
;
��r s
}
�� 	
static
�� 
IEnumerable
�� 
<
�� 
Assembly
�� #
>
��# $'
RelevantAssembliesForMode
��% >
(
��> ?
IEnumerable
��? J
<
��J K
Assembly
��K S
>
��S T

assemblies
��U _
)
��_ `
{
�� 	
return
�� 

assemblies
�� 
.
�� 
Where
�� #
(
��# $
i
��$ %
=>
��& (
ScriptingLanguage
��) :
.
��: ;
CSharp
��; A
==
��B D"
ScriptingLanguageFor
��E Y
(
��Y Z
i
��Z [
)
��[ \
)
��\ ]
;
��] ^
}
�� 	
string
�� 
GetProjectEntries
��  
(
��  !
IEnumerable
��! ,
<
��, -
Assembly
��- 5
>
��5 6

assemblies
��7 A
)
��A B
{
�� 	
var
�� 
projectEntries
�� 
=
��  

assemblies
��! +
.
��+ ,
Select
��, 2
(
��2 3
i
��3 4
=>
��5 7
string
��8 >
.
��> ?
Format
��? E
(
��E F,
m_SolutionProjectEntryTemplate
�� .
,
��. /
SolutionGuid
�� 
(
�� 
i
�� 
)
�� 
,
��  
i
�� 
.
�� 
name
�� 
,
�� 
Path
�� 
.
�� 
GetFileName
��  
(
��  !
ProjectFile
��! ,
(
��, -
i
��- .
)
��. /
)
��/ 0
,
��0 1
ProjectGuid
�� 
(
�� 
i
�� 
.
�� 
name
�� "
)
��" #
)
�� 
)
�� 
;
�� 
return
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
k_WindowsNewline
�� /
,
��/ 0
projectEntries
��1 ?
.
��? @
ToArray
��@ G
(
��G H
)
��H I
)
��I J
;
��J K
}
�� 	
string
�� ,
GetProjectActiveConfigurations
�� -
(
��- .
string
��. 4
projectGuid
��5 @
)
��@ A
{
�� 	
return
�� 
string
�� 
.
�� 
Format
��  
(
��  !4
&m_SolutionProjectConfigurationTemplate
�� 6
,
��6 7
projectGuid
�� 
)
�� 
;
�� 
}
�� 	
string
�� $
EscapedRelativePathFor
�� %
(
��% &
string
��& ,
file
��- 1
)
��1 2
{
�� 	
var
�� 

projectDir
�� 
=
�� 
ProjectDirectory
�� -
.
��- .
Replace
��. 5
(
��5 6
$char
��6 9
,
��9 :
$char
��; ?
)
��? @
;
��@ A
file
�� 
=
�� 
file
�� 
.
�� 
Replace
�� 
(
��  
$char
��  #
,
��# $
$char
��% )
)
��) *
;
��* +
var
�� 
path
�� 
=
�� 
SkipPathPrefix
�� %
(
��% &
file
��& *
,
��* +

projectDir
��, 6
)
��6 7
;
��7 8
var
�� 
packageInfo
�� 
=
�� $
m_AssemblyNameProvider
�� 4
.
��4 5
FindForAssetPath
��5 E
(
��E F
path
��F J
.
��J K
Replace
��K R
(
��R S
$char
��S W
,
��W X
$char
��Y \
)
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
packageInfo
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
var
�� 
absolutePath
��  
=
��! "
Path
��# '
.
��' (
GetFullPath
��( 3
(
��3 4
NormalizePath
��4 A
(
��A B
path
��B F
)
��F G
)
��G H
.
��H I
Replace
��I P
(
��P Q
$char
��Q T
,
��T U
$char
��V Z
)
��Z [
;
��[ \
path
�� 
=
�� 
SkipPathPrefix
�� %
(
��% &
absolutePath
��& 2
,
��2 3

projectDir
��4 >
)
��> ?
;
��? @
}
�� 
return
�� 
SecurityElement
�� "
.
��" #
Escape
��# )
(
��) *
path
��* .
)
��. /
;
��/ 0
}
�� 	
static
�� 
string
�� 
SkipPathPrefix
�� $
(
��$ %
string
��% +
path
��, 0
,
��0 1
string
��2 8
prefix
��9 ?
)
��? @
{
�� 	
if
�� 
(
�� 
path
�� 
.
�� 

StartsWith
�� 
(
��  
$@"
��  #
{
��# $
prefix
��$ *
}
��* +
\
��+ ,
"
��, -
)
��- .
)
��. /
return
�� 
path
�� 
.
�� 
	Substring
�� %
(
��% &
prefix
��& ,
.
��, -
Length
��- 3
+
��4 5
$num
��6 7
)
��7 8
;
��8 9
return
�� 
path
�� 
;
�� 
}
�� 	
static
�� 
string
�� 
NormalizePath
�� #
(
��# $
string
��$ *
path
��+ /
)
��/ 0
{
�� 	
if
�� 
(
�� 
Path
�� 
.
�� $
DirectorySeparatorChar
�� +
==
��, .
$char
��/ 3
)
��3 4
return
�� 
path
�� 
.
�� 
Replace
�� #
(
��# $
$char
��$ '
,
��' (
Path
��) -
.
��- .$
DirectorySeparatorChar
��. D
)
��D E
;
��E F
return
�� 
path
�� 
.
�� 
Replace
�� 
(
��  
$char
��  $
,
��$ %
Path
��& *
.
��* +$
DirectorySeparatorChar
��+ A
)
��A B
;
��B C
}
�� 	
string
�� 
ProjectGuid
�� 
(
�� 
string
�� !
assembly
��" *
)
��* +
{
�� 	
return
�� 
m_GUIDProvider
�� !
.
��! "
ProjectGuid
��" -
(
��- .
m_ProjectName
��. ;
,
��; <
assembly
��= E
)
��E F
;
��F G
}
�� 	
string
�� 
SolutionGuid
�� 
(
�� 
Assembly
�� $
assembly
��% -
)
��- .
{
�� 	
return
�� 
m_GUIDProvider
�� !
.
��! "
SolutionGuid
��" .
(
��. /
m_ProjectName
��/ <
,
��< ='
GetExtensionOfSourceFiles
��> W
(
��W X
assembly
��X `
.
��` a
sourceFiles
��a l
)
��l m
)
��m n
;
��n o
}
�� 	
static
�� 
string
�� 
ProjectFooter
�� #
(
��# $
)
��$ %
{
�� 	
return
�� &
GetProjectFooterTemplate
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 	
static
�� 
string
�� !
GetProjectExtension
�� )
(
��) *
)
��* +
{
�� 	
return
�� 
$str
�� 
;
�� 
}
�� 	
void
�� &
WriteVSCodeSettingsFiles
�� %
(
��% &
)
��& '
{
�� 	
var
�� 
vsCodeDirectory
�� 
=
��  !
Path
��" &
.
��& '
Combine
��' .
(
��. /
ProjectDirectory
��/ ?
,
��? @
$str
��A J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
m_FileIOProvider
�� !
.
��! "
Exists
��" (
(
��( )
vsCodeDirectory
��) 8
)
��8 9
)
��9 :
m_FileIOProvider
��  
.
��  !
CreateDirectory
��! 0
(
��0 1
vsCodeDirectory
��1 @
)
��@ A
;
��A B
var
��  
vsCodeSettingsJson
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
vsCodeDirectory
��2 A
,
��A B
$str
��C R
)
��R S
;
��S T
if
�� 
(
�� 
!
�� 
m_FileIOProvider
�� !
.
��! "
Exists
��" (
(
��( ) 
vsCodeSettingsJson
��) ;
)
��; <
)
��< =
m_FileIOProvider
��  
.
��  !
WriteAllText
��! -
(
��- . 
vsCodeSettingsJson
��. @
,
��@ A
k_SettingsJson
��B P
)
��P Q
;
��Q R
}
�� 	
}
�� 
public
�� 

static
�� 
class
�� #
SolutionGuidGenerator
�� -
{
�� 
static
�� 
MD5
�� 
mD5
�� 
=
�� &
MD5CryptoServiceProvider
�� 1
.
��1 2
Create
��2 8
(
��8 9
)
��9 :
;
��: ;
public
�� 
static
�� 
string
�� 
GuidForProject
�� +
(
��+ ,
string
��, 2
projectName
��3 >
)
��> ?
{
�� 	
return
��  
ComputeGuidHashFor
�� %
(
��% &
projectName
��& 1
+
��2 3
$str
��4 :
)
��: ;
;
��; <
}
�� 	
public
�� 
static
�� 
string
�� 
GuidForSolution
�� ,
(
��, -
string
��- 3
projectName
��4 ?
,
��? @
string
��A G!
sourceFileExtension
��H [
)
��[ \
{
�� 	
if
�� 
(
�� !
sourceFileExtension
�� #
.
��# $
ToLower
��$ +
(
��+ ,
)
��, -
==
��. 0
$str
��1 5
)
��5 6
return
�� 
$str
�� =
;
��= >
return
��  
ComputeGuidHashFor
�� %
(
��% &
projectName
��& 1
)
��1 2
;
��2 3
}
�� 	
static
�� 
string
��  
ComputeGuidHashFor
�� (
(
��( )
string
��) /
input
��0 5
)
��5 6
{
�� 	
var
�� 
hash
�� 
=
�� 
mD5
�� 
.
�� 
ComputeHash
�� &
(
��& '
Encoding
��' /
.
��/ 0
Default
��0 7
.
��7 8
GetBytes
��8 @
(
��@ A
input
��A F
)
��F G
)
��G H
;
��H I
return
�� 
new
�� 
Guid
�� 
(
�� 
hash
��  
)
��  !
.
��! "
ToString
��" *
(
��* +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� �V
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\AssemblyNameProvider.cs
	namespace 	
VSCodeEditor
 
{		 
public

 

	interface

 !
IAssemblyNameProvider

 *
{ 
string 
[ 
] &
ProjectSupportedExtensions +
{, -
get. 1
;1 2
}3 4!
ProjectGenerationFlag !
ProjectGenerationFlag 3
{4 5
get6 9
;9 :
}; <
string )
GetAssemblyNameFromScriptPath ,
(, -
string- 3
path4 8
)8 9
;9 :
IEnumerable 
< 
Assembly 
> 
GetAssemblies +
(+ ,
Func, 0
<0 1
string1 7
,7 8
bool9 =
>= >&
shouldFileBePartOfSolution? Y
)Y Z
;Z [
IEnumerable 
< 
string 
> 
GetAllAssetPaths ,
(, -
)- .
;. /
IEnumerable 
< 
string 
> "
GetRoslynAnalyzerPaths 2
(2 3
)3 4
;4 5
UnityEditor 
. 
PackageManager "
." #
PackageInfo# .
FindForAssetPath/ ?
(? @
string@ F
	assetPathG P
)P Q
;Q R
ResponseFileData 
ParseResponseFile *
(* +
string+ 1
responseFilePath2 B
,B C
stringD J
projectDirectoryK [
,[ \
string] c
[c d
]d e'
systemReferenceDirectories	f �
)
� �
;
� �
bool %
IsInternalizedPackagePath &
(& '
string' -
path. 2
)2 3
;3 4
void #
ToggleProjectGeneration $
($ %!
ProjectGenerationFlag% :

preference; E
)E F
;F G
} 
internal 
class  
AssemblyNameProvider '
:( )!
IAssemblyNameProvider* ?
{ !
ProjectGenerationFlag #
m_ProjectGenerationFlag 5
=6 7
(8 9!
ProjectGenerationFlag9 N
)N O
EditorPrefsO Z
.Z [
GetInt[ a
(a b
$str	b �
,
� �
$num
� �
)
� �
;
� �
public 
string 
[ 
] &
ProjectSupportedExtensions 2
=>3 5
EditorSettings6 D
.D E+
projectGenerationUserExtensionsE d
;d e
public !
ProjectGenerationFlag $!
ProjectGenerationFlag% :
{ 	
get   
=>   #
m_ProjectGenerationFlag   *
;  * +
private!! 
set!! 
{"" 
EditorPrefs## 
.## 
SetInt## "
(##" #
$str### B
,##B C
(##D E
int##E H
)##H I
value##I N
)##N O
;##O P#
m_ProjectGenerationFlag$$ '
=$$( )
value$$* /
;$$/ 0
}%% 
}&& 	
public(( 
string(( )
GetAssemblyNameFromScriptPath(( 3
(((3 4
string((4 :
path((; ?
)((? @
{)) 	
return** 
CompilationPipeline** &
.**& ')
GetAssemblyNameFromScriptPath**' D
(**D E
path**E I
)**I J
;**J K
}++ 	
public-- 
IEnumerable-- 
<-- 
Assembly-- #
>--# $
GetAssemblies--% 2
(--2 3
Func--3 7
<--7 8
string--8 >
,--> ?
bool--@ D
>--D E&
shouldFileBePartOfSolution--F `
)--` a
{.. 	
return// 
CompilationPipeline// &
.//& '
GetAssemblies//' 4
(//4 5
)//5 6
.00 
Where00 
(00 
i00 
=>00 
$num00 
<00 
i00  !
.00! "
sourceFiles00" -
.00- .
Length00. 4
&&005 7
i008 9
.009 :
sourceFiles00: E
.00E F
Any00F I
(00I J&
shouldFileBePartOfSolution00J d
)00d e
)00e f
;00f g
}11 	
public33 
IEnumerable33 
<33 
string33 !
>33! "
GetAllAssetPaths33# 3
(333 4
)334 5
{44 	
return55 
AssetDatabase55  
.55  !
GetAllAssetPaths55! 1
(551 2
)552 3
;553 4
}66 	
public88 
UnityEditor88 
.88 
PackageManager88 )
.88) *
PackageInfo88* 5
FindForAssetPath886 F
(88F G
string88G M
	assetPath88N W
)88W X
{99 	
return:: 
UnityEditor:: 
.:: 
PackageManager:: -
.::- .
PackageInfo::. 9
.::9 :
FindForAssetPath::: J
(::J K
	assetPath::K T
)::T U
;::U V
};; 	
public== 
ResponseFileData== 
ParseResponseFile==  1
(==1 2
string==2 8
responseFilePath==9 I
,==I J
string==K Q
projectDirectory==R b
,==b c
string==d j
[==j k
]==k l'
systemReferenceDirectories	==m �
)
==� �
{>> 	
return?? 
CompilationPipeline?? &
.??& '
ParseResponseFile??' 8
(??8 9
responseFilePath@@  
,@@  !
projectDirectoryAA  
,AA  !&
systemReferenceDirectoriesBB *
)CC 
;CC 
}DD 	
publicFF 
boolFF %
IsInternalizedPackagePathFF -
(FF- .
stringFF. 4
pathFF5 9
)FF9 :
{GG 	
ifHH 
(HH 
stringHH 
.HH 
IsNullOrWhiteSpaceHH )
(HH) *
pathHH* .
)HH. /
)HH/ 0
{II 
returnJJ 
falseJJ 
;JJ 
}KK 
varLL 
packageInfoLL 
=LL 
FindForAssetPathLL .
(LL. /
pathLL/ 3
)LL3 4
;LL4 5
ifMM 
(MM 
packageInfoMM 
==MM 
nullMM #
)MM# $
{NN 
returnOO 
falseOO 
;OO 
}PP 
varQQ 
packageSourceQQ 
=QQ 
packageInfoQQ  +
.QQ+ ,
sourceQQ, 2
;QQ2 3
switchRR 
(RR 
packageSourceRR !
)RR! "
{SS 
caseTT 
PackageSourceTT "
.TT" #
EmbeddedTT# +
:TT+ ,
returnUU 
!UU !
ProjectGenerationFlagUU 1
.UU1 2
HasFlagUU2 9
(UU9 :!
ProjectGenerationFlagUU: O
.UUO P
EmbeddedUUP X
)UUX Y
;UUY Z
caseVV 
PackageSourceVV "
.VV" #
RegistryVV# +
:VV+ ,
returnWW 
!WW !
ProjectGenerationFlagWW 1
.WW1 2
HasFlagWW2 9
(WW9 :!
ProjectGenerationFlagWW: O
.WWO P
RegistryWWP X
)WWX Y
;WWY Z
caseXX 
PackageSourceXX "
.XX" #
BuiltInXX# *
:XX* +
returnYY 
!YY !
ProjectGenerationFlagYY 1
.YY1 2
HasFlagYY2 9
(YY9 :!
ProjectGenerationFlagYY: O
.YYO P
BuiltInYYP W
)YYW X
;YYX Y
caseZZ 
PackageSourceZZ "
.ZZ" #
UnknownZZ# *
:ZZ* +
return[[ 
![[ !
ProjectGenerationFlag[[ 1
.[[1 2
HasFlag[[2 9
([[9 :!
ProjectGenerationFlag[[: O
.[[O P
Unknown[[P W
)[[W X
;[[X Y
case\\ 
PackageSource\\ "
.\\" #
Local\\# (
:\\( )
return]] 
!]] !
ProjectGenerationFlag]] 1
.]]1 2
HasFlag]]2 9
(]]9 :!
ProjectGenerationFlag]]: O
.]]O P
Local]]P U
)]]U V
;]]V W
case^^ 
PackageSource^^ "
.^^" #
Git^^# &
:^^& '
return__ 
!__ !
ProjectGenerationFlag__ 1
.__1 2
HasFlag__2 9
(__9 :!
ProjectGenerationFlag__: O
.__O P
Git__P S
)__S T
;__T U
caseaa 
PackageSourceaa "
.aa" #
LocalTarballaa# /
:aa/ 0
returnbb 
!bb !
ProjectGenerationFlagbb 1
.bb1 2
HasFlagbb2 9
(bb9 :!
ProjectGenerationFlagbb: O
.bbO P
LocalTarBallbbP \
)bb\ ]
;bb] ^
}dd 
returnff 
falseff 
;ff 
}gg 	
publicii 
voidii #
ToggleProjectGenerationii +
(ii+ ,!
ProjectGenerationFlagii, A

preferenceiiB L
)iiL M
{jj 	
ifkk 
(kk !
ProjectGenerationFlagkk %
.kk% &
HasFlagkk& -
(kk- .

preferencekk. 8
)kk8 9
)kk9 :
{ll !
ProjectGenerationFlagmm %
^=mm& (

preferencemm) 3
;mm3 4
}nn 
elseoo 
{pp !
ProjectGenerationFlagqq %
|=qq& (

preferenceqq) 3
;qq3 4
}rr 
}ss 	
publicuu 
IEnumerableuu 
<uu 
stringuu !
>uu! ""
GetRoslynAnalyzerPathsuu# 9
(uu9 :
)uu: ;
{vv 	
returnww 
PluginImporterww !
.ww! "
GetAllImportersww" 1
(ww1 2
)ww2 3
.xx 
Wherexx 
(xx 
ixx 
=>xx 
!xx 
ixx 
.xx 
isNativePluginxx -
&&xx. 0
AssetDatabasexx1 >
.xx> ?
	GetLabelsxx? H
(xxH I
ixxI J
)xxJ K
.xxK L
SingleOrDefaultxxL [
(xx[ \
lxx\ ]
=>xx^ `
lxxa b
==xxc e
$strxxf v
)xxv w
!=xxx z
nullxx{ 
)	xx �
.yy 
Selectyy 
(yy 
iyy 
=>yy 
iyy 
.yy 
	assetPathyy (
)yy( )
;yy) *
}zz 	
}{{ 
}|| �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\FileIO.cs
	namespace 	
VSCodeEditor
 
{ 
public 

	interface 
IFileIO 
{ 
bool 
Exists 
( 
string 
fileName #
)# $
;$ %
string

 
ReadAllText

 
(

 
string

 !
fileName

" *
)

* +
;

+ ,
void 
WriteAllText 
( 
string  
fileName! )
,) *
string+ 1
content2 9
)9 :
;: ;
void 
CreateDirectory 
( 
string #
pathName$ ,
), -
;- .
} 
class 	
FileIOProvider
 
: 
IFileIO "
{ 
public 
bool 
Exists 
( 
string !
fileName" *
)* +
{ 	
return 
File 
. 
Exists 
( 
fileName '
)' (
;( )
} 	
public 
string 
ReadAllText !
(! "
string" (
fileName) 1
)1 2
{ 	
return 
File 
. 
ReadAllText #
(# $
fileName$ ,
), -
;- .
} 	
public 
void 
WriteAllText  
(  !
string! '
fileName( 0
,0 1
string2 8
content9 @
)@ A
{ 	
File 
. 
WriteAllText 
( 
fileName &
,& '
content( /
,/ 0
Encoding1 9
.9 :
UTF8: >
)> ?
;? @
} 	
public!! 
void!! 
CreateDirectory!! #
(!!# $
string!!$ *
pathName!!+ 3
)!!3 4
{"" 	
	Directory## 
.## 
CreateDirectory## %
(##% &
pathName##& .
)##. /
;##/ 0
}$$ 	
}%% 
}&& �
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\ProjectGenerationFlag.cs
	namespace 	
VSCodeEditor
 
{ 
[ 
Flags 

]
 
public 

enum !
ProjectGenerationFlag %
{ 
None 
= 
$num 
, 
Embedded		 
=		 
$num		 
,		 
Local

 
=

 
$num

 
,

 
Registry 
= 
$num 
, 
Git 
= 
$num 
, 
BuiltIn 
= 
$num 
, 
Unknown 
= 
$num 
, 
PlayerAssemblies 
= 
$num 
, 
LocalTarBall 
= 
$num 
, 
} 
} ��
�D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\VSCodeScriptEditor.cs
	namespace		 	
VSCodeEditor		
 
{

 
[ 
InitializeOnLoad 
] 
public 

class 
VSCodeScriptEditor #
:$ %
IExternalCodeEditor& 9
{ 
const 
string 
vscode_argument $
=% &
$str' 9
;9 :
const 
string 
vscode_extension %
=& '
$str( ?
;? @
static 
readonly 

GUIContent "
k_ResetArguments# 3
=4 5
EditorGUIUtility6 F
.F G
TrTextContentG T
(T U
$strU e
)e f
;f g
string 
m_Arguments 
; 

IDiscovery 
m_Discoverability $
;$ %

IGenerator 
m_ProjectGeneration &
;& '
static 
readonly 
string 
[ 
]   
k_SupportedFileNames! 5
=6 7
{8 9
$str: D
,D E
$strF \
,\ ]
$str^ }
,} ~
$str	 �
,
� �
$str
� �
,
� �
$str
� �
,
� �
$str
� �
,
� �
$str
� �
,
� �
$str
� �
}
� �
;
� �
static 
bool 
IsOSX 
=> 
Application (
.( )
platform) 1
==2 4
RuntimePlatform5 D
.D E
	OSXEditorE N
;N O
static 
string 

DefaultApp  
=>! #
EditorPrefs$ /
./ 0
	GetString0 9
(9 :
$str: N
)N O
;O P
static 
string 
DefaultArgument %
{& '
get( +
;+ ,
}- .
=/ 0
$str1 f
;f g
string 
	Arguments 
{ 	
get   
=>   
m_Arguments   
??   !
(  " #
m_Arguments  # .
=  / 0
EditorPrefs  1 <
.  < =
	GetString  = F
(  F G
vscode_argument  G V
,  V W
DefaultArgument  X g
)  g h
)  h i
;  i j
set!! 
{"" 
m_Arguments## 
=## 
value## #
;### $
EditorPrefs$$ 
.$$ 
	SetString$$ %
($$% &
vscode_argument$$& 5
,$$5 6
value$$7 <
)$$< =
;$$= >
}%% 
}&& 	
static(( 
string(( 
[(( 
](( 
defaultExtensions(( )
{)) 	
get** 
{++ 
var,, 
customExtensions,, $
=,,% &
new,,' *
[,,* +
],,+ ,
{,,- .
$str,,/ 5
,,,5 6
$str,,7 ?
,,,? @
$str,,A F
},,G H
;,,H I
return-- 
EditorSettings-- %
.--% &.
"projectGenerationBuiltinExtensions--& H
... 
Concat.. 
(.. 
EditorSettings.. *
...* ++
projectGenerationUserExtensions..+ J
)..J K
.// 
Concat// 
(// 
customExtensions// ,
)//, -
.00 
Distinct00 
(00 
)00 
.00  
ToArray00  '
(00' (
)00( )
;00) *
}11 
}22 	
static44 
string44 
[44 
]44 
HandledExtensions44 )
{55 	
get66 
{77 
return88 #
HandledExtensionsString88 .
.99 
Split99 
(99 
new99 
[99 
]99  
{99! "
$char99# &
}99' (
,99( )
StringSplitOptions99* <
.99< =
RemoveEmptyEntries99= O
)99O P
.:: 
Select:: 
(:: 
s:: 
=>::  
s::! "
.::" #
	TrimStart::# ,
(::, -
$char::- 0
,::0 1
$char::2 5
)::5 6
)::6 7
.;; 
ToArray;; 
(;; 
);; 
;;; 
}<< 
}== 	
static?? 
string?? #
HandledExtensionsString?? -
{@@ 	
getAA 
=>AA 
EditorPrefsAA 
.AA 
	GetStringAA (
(AA( )
vscode_extensionAA) 9
,AA9 :
stringAA; A
.AAA B
JoinAAB F
(AAF G
$strAAG J
,AAJ K
defaultExtensionsAAL ]
)AA] ^
)AA^ _
;AA_ `
setBB 
=>BB 
EditorPrefsBB 
.BB 
	SetStringBB (
(BB( )
vscode_extensionBB) 9
,BB9 :
valueBB; @
)BB@ A
;BBA B
}CC 	
publicEE 
boolEE %
TryGetInstallationForPathEE -
(EE- .
stringEE. 4

editorPathEE5 ?
,EE? @
outEEA D

CodeEditorEEE O
.EEO P
InstallationEEP \
installationEE] i
)EEi j
{FF 	
varGG 
lowerCasePathGG 
=GG 

editorPathGG  *
.GG* +
ToLowerGG+ 2
(GG2 3
)GG3 4
;GG4 5
varHH 
filenameHH 
=HH 
PathHH 
.HH  
GetFileNameHH  +
(HH+ ,
lowerCasePathHH, 9
)HH9 :
.HH: ;
ReplaceHH; B
(HHB C
$strHHC F
,HHF G
$strHHH J
)HHJ K
;HHK L
varII 
installationsII 
=II 
InstallationsII  -
;II- .
ifJJ 
(JJ 
!JJ  
k_SupportedFileNamesJJ %
.JJ% &
ContainsJJ& .
(JJ. /
filenameJJ/ 7
)JJ7 8
)JJ8 9
{KK 
installationLL 
=LL 
defaultLL &
;LL& '
returnMM 
falseMM 
;MM 
}NN 
ifPP 
(PP 
!PP 
installationsPP 
.PP 
AnyPP "
(PP" #
)PP# $
)PP$ %
{QQ 
installationRR 
=RR 
newRR "

CodeEditorRR# -
.RR- .
InstallationRR. :
{SS 
NameTT 
=TT 
$strTT /
,TT/ 0
PathUU 
=UU 

editorPathUU %
}VV 
;VV 
}WW 
elseXX 
{YY 
tryZZ 
{[[ 
installation\\  
=\\! "
installations\\# 0
.\\0 1
First\\1 6
(\\6 7
inst\\7 ;
=>\\< >
inst\\? C
.\\C D
Path\\D H
==\\I K

editorPath\\L V
)\\V W
;\\W X
}]] 
catch^^ 
(^^ %
InvalidOperationException^^ 0
)^^0 1
{__ 
installation``  
=``! "
new``# &

CodeEditor``' 1
.``1 2
Installation``2 >
{aa 
Namebb 
=bb 
$strbb 3
,bb3 4
Pathcc 
=cc 

editorPathcc )
}dd 
;dd 
}ee 
}ff 
returnhh 
truehh 
;hh 
}ii 	
publickk 
voidkk 
OnGUIkk 
(kk 
)kk 
{ll 	
	Argumentsmm 
=mm 
EditorGUILayoutmm '
.mm' (
	TextFieldmm( 1
(mm1 2
$strmm2 O
,mmO P
	ArgumentsmmQ Z
)mmZ [
;mm[ \
ifnn 
(nn 
	GUILayoutnn 
.nn 
Buttonnn  
(nn  !
k_ResetArgumentsnn! 1
,nn1 2
	GUILayoutnn3 <
.nn< =
Widthnn= B
(nnB C
$numnnC F
)nnF G
)nnG H
)nnH I
{oo 
	Argumentspp 
=pp 
DefaultArgumentpp +
;pp+ ,
}qq 
EditorGUILayoutss 
.ss 

LabelFieldss &
(ss& '
$strss' D
)ssD E
;ssE F
	EditorGUItt 
.tt 
indentLeveltt !
++tt! #
;tt# $
SettingsButtonuu 
(uu !
ProjectGenerationFlaguu 0
.uu0 1
Embeddeduu1 9
,uu9 :
$struu; N
,uuN O
$struuP R
)uuR S
;uuS T
SettingsButtonvv 
(vv !
ProjectGenerationFlagvv 0
.vv0 1
Localvv1 6
,vv6 7
$strvv8 H
,vvH I
$strvvJ L
)vvL M
;vvM N
SettingsButtonww 
(ww !
ProjectGenerationFlagww 0
.ww0 1
Registryww1 9
,ww9 :
$strww; N
,wwN O
$strwwP R
)wwR S
;wwS T
SettingsButtonxx 
(xx !
ProjectGenerationFlagxx 0
.xx0 1
Gitxx1 4
,xx4 5
$strxx6 D
,xxD E
$strxxF H
)xxH I
;xxI J
SettingsButtonyy 
(yy !
ProjectGenerationFlagyy 0
.yy0 1
BuiltInyy1 8
,yy8 9
$stryy: M
,yyM N
$stryyO Q
)yyQ R
;yyR S
SettingsButton{{ 
({{ !
ProjectGenerationFlag{{ 0
.{{0 1
LocalTarBall{{1 =
,{{= >
$str{{? N
,{{N O
$str{{P R
){{R S
;{{S T
SettingsButton}} 
(}} !
ProjectGenerationFlag}} 0
.}}0 1
Unknown}}1 8
,}}8 9
$str}}: Y
,}}Y Z
$str}}[ ]
)}}] ^
;}}^ _"
RegenerateProjectFiles~~ "
(~~" #
)~~# $
;~~$ %
	EditorGUI 
. 
indentLevel !
--! #
;# $%
HandledExtensionsString
�� #
=
��$ %
EditorGUILayout
��& 5
.
��5 6
	TextField
��6 ?
(
��? @
new
��@ C

GUIContent
��D N
(
��N O
$str
��O e
)
��e f
,
��f g%
HandledExtensionsString
��h 
)�� �
;��� �
}
�� 	
void
�� $
RegenerateProjectFiles
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
rect
�� 
=
�� 
	EditorGUI
��  
.
��  !
IndentedRect
��! -
(
��- .
EditorGUILayout
��. =
.
��= >
GetControlRect
��> L
(
��L M
new
��M P
GUILayoutOption
��Q `
[
��` a
]
��a b
{
��c d
}
��e f
)
��f g
)
��g h
;
��h i
rect
�� 
.
�� 
width
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
GUI
�� 
.
�� 
Button
�� 
(
�� 
rect
�� 
,
��  
$str
��! ;
)
��; <
)
��< =
{
�� !
m_ProjectGeneration
�� #
.
��# $
Sync
��$ (
(
��( )
)
��) *
;
��* +
}
�� 
}
�� 	
void
�� 
SettingsButton
�� 
(
�� #
ProjectGenerationFlag
�� 1

preference
��2 <
,
��< =
string
��> D

guiMessage
��E O
,
��O P
string
��Q W
toolTip
��X _
)
��_ `
{
�� 	
var
�� 
	prevValue
�� 
=
�� !
m_ProjectGeneration
�� /
.
��/ 0"
AssemblyNameProvider
��0 D
.
��D E#
ProjectGenerationFlag
��E Z
.
��Z [
HasFlag
��[ b
(
��b c

preference
��c m
)
��m n
;
��n o
var
�� 
newValue
�� 
=
�� 
EditorGUILayout
�� *
.
��* +
Toggle
��+ 1
(
��1 2
new
��2 5

GUIContent
��6 @
(
��@ A

guiMessage
��A K
,
��K L
toolTip
��M T
)
��T U
,
��U V
	prevValue
��W `
)
��` a
;
��a b
if
�� 
(
�� 
newValue
�� 
!=
�� 
	prevValue
�� %
)
��% &
{
�� !
m_ProjectGeneration
�� #
.
��# $"
AssemblyNameProvider
��$ 8
.
��8 9%
ToggleProjectGeneration
��9 P
(
��P Q

preference
��Q [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
public
�� 
void
�� !
CreateIfDoesntExist
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
!
�� !
m_ProjectGeneration
�� $
.
��$ %
SolutionExists
��% 3
(
��3 4
)
��4 5
)
��5 6
{
�� !
m_ProjectGeneration
�� #
.
��# $
Sync
��$ (
(
��( )
)
��) *
;
��* +
}
�� 
}
�� 	
public
�� 
void
�� 
SyncIfNeeded
��  
(
��  !
string
��! '
[
��' (
]
��( )

addedFiles
��* 4
,
��4 5
string
��6 <
[
��< =
]
��= >
deletedFiles
��? K
,
��K L
string
��M S
[
��S T
]
��T U

movedFiles
��V `
,
��` a
string
��b h
[
��h i
]
��i j
movedFromFiles
��k y
,
��y z
string��{ �
[��� �
]��� �
importedFiles��� �
)��� �
{
�� 	!
m_ProjectGeneration
�� 
.
��  
SyncIfNeeded
��  ,
(
��, -

addedFiles
��- 7
.
��7 8
Union
��8 =
(
��= >
deletedFiles
��> J
)
��J K
.
��K L
Union
��L Q
(
��Q R

movedFiles
��R \
)
��\ ]
.
��] ^
Union
��^ c
(
��c d
movedFromFiles
��d r
)
��r s
.
��s t
ToList
��t z
(
��z {
)
��{ |
,
��| }
importedFiles��~ �
)��� �
;��� �
}
�� 	
public
�� 
void
�� 
SyncAll
�� 
(
�� 
)
�� 
{
�� 	
AssetDatabase
�� 
.
�� 
Refresh
�� !
(
��! "
)
��" #
;
��# $!
m_ProjectGeneration
�� 
.
��  
Sync
��  $
(
��$ %
)
��% &
;
��& '
}
�� 	
public
�� 
bool
�� 
OpenProject
�� 
(
��  
string
��  &
path
��' +
,
��+ ,
int
��- 0
line
��1 5
,
��5 6
int
��7 :
column
��; A
)
��A B
{
�� 	
if
�� 
(
�� 
path
�� 
!=
�� 
$str
�� 
&&
�� 
(
�� 
!
��  
SupportsExtension
��  1
(
��1 2
path
��2 6
)
��6 7
||
��8 :
!
��; <
File
��< @
.
��@ A
Exists
��A G
(
��G H
path
��H L
)
��L M
)
��M N
)
��N O
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
line
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
line
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
column
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
column
�� 
=
�� 
$num
�� 
;
�� 
string
�� 
	arguments
�� 
;
�� 
if
�� 
(
�� 
	Arguments
�� 
!=
�� 
DefaultArgument
�� ,
)
��, -
{
�� 
	arguments
�� 
=
�� !
m_ProjectGeneration
�� /
.
��/ 0
ProjectDirectory
��0 @
!=
��A C
path
��D H
?
�� 

CodeEditor
��  
.
��  !
ParseArgument
��! .
(
��. /
	Arguments
��/ 8
,
��8 9
path
��: >
,
��> ?
line
��@ D
,
��D E
column
��F L
)
��L M
:
�� !
m_ProjectGeneration
�� )
.
��) *
ProjectDirectory
��* :
;
��: ;
}
�� 
else
�� 
{
�� 
	arguments
�� 
=
�� 
$@"
�� 
""
�� !
{
��! "!
m_ProjectGeneration
��" 5
.
��5 6
ProjectDirectory
��6 F
}
��F G
""
��G I
"
��I J
;
��J K
if
�� 
(
�� !
m_ProjectGeneration
�� '
.
��' (
ProjectDirectory
��( 8
!=
��9 ;
path
��< @
&&
��A C
path
��D H
.
��H I
Length
��I O
!=
��P R
$num
��S T
)
��T U
{
�� 
	arguments
�� 
+=
��  
$@"
��! $
 -g ""
��$ *
{
��* +
path
��+ /
}
��/ 0
"":
��0 3
{
��3 4
line
��4 8
}
��8 9
:
��9 :
{
��: ;
column
��; A
}
��A B
"
��B C
;
��C D
}
�� 
}
�� 
if
�� 
(
�� 
IsOSX
�� 
)
�� 
{
�� 
return
�� 
OpenOSX
�� 
(
�� 
	arguments
�� (
)
��( )
;
��) *
}
�� 
var
�� 
app
�� 
=
�� 

DefaultApp
��  
;
��  !
var
�� 
process
�� 
=
�� 
new
�� 
Process
�� %
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
��  0
{
�� 
FileName
�� 
=
�� 
app
�� "
,
��" #
	Arguments
�� 
=
�� 
	arguments
��  )
,
��) *
WindowStyle
�� 
=
��  !
app
��" %
.
��% &
EndsWith
��& .
(
��. /
$str
��/ 5
,
��5 6
StringComparison
��7 G
.
��G H
OrdinalIgnoreCase
��H Y
)
��Y Z
?
��[ \ 
ProcessWindowStyle
��] o
.
��o p
Hidden
��p v
:
��w x!
ProcessWindowStyle��y �
.��� �
Normal��� �
,��� �
CreateNoWindow
�� "
=
��# $
true
��% )
,
��) *
UseShellExecute
�� #
=
��$ %
true
��& *
,
��* +
}
�� 
}
�� 
;
�� 
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
static
�� 
bool
�� 
OpenOSX
�� 
(
�� 
string
�� "
	arguments
��# ,
)
��, -
{
�� 	
var
�� 
process
�� 
=
�� 
new
�� 
Process
�� %
{
�� 
	StartInfo
�� 
=
�� 
new
�� 
ProcessStartInfo
��  0
{
�� 
FileName
�� 
=
�� 
$str
�� %
,
��% &
	Arguments
�� 
=
�� 
$"
��  "
-n \"
��" '
{
��' (

DefaultApp
��( 2
}
��2 3

\" --args 
��3 =
{
��= >
	arguments
��> G
}
��G H
"
��H I
,
��I J
UseShellExecute
�� #
=
��$ %
true
��& *
,
��* +
}
�� 
}
�� 
;
�� 
process
�� 
.
�� 
Start
�� 
(
�� 
)
�� 
;
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
static
�� 
bool
�� 
SupportsExtension
�� %
(
��% &
string
��& ,
path
��- 1
)
��1 2
{
�� 	
var
�� 
	extension
�� 
=
�� 
Path
��  
.
��  !
GetExtension
��! -
(
��- .
path
��. 2
)
��2 3
;
��3 4
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
��$ %
	extension
��% .
)
��. /
)
��/ 0
return
�� 
false
�� 
;
�� 
return
�� 
HandledExtensions
�� $
.
��$ %
Contains
��% -
(
��- .
	extension
��. 7
.
��7 8
	TrimStart
��8 A
(
��A B
$char
��B E
)
��E F
)
��F G
;
��G H
}
�� 	
public
�� 

CodeEditor
�� 
.
�� 
Installation
�� &
[
��& '
]
��' (
Installations
��) 6
=>
��7 9
m_Discoverability
��: K
.
��K L
PathCallback
��L X
(
��X Y
)
��Y Z
;
��Z [
public
��  
VSCodeScriptEditor
�� !
(
��! "

IDiscovery
��" ,
	discovery
��- 6
,
��6 7

IGenerator
��8 B
projectGeneration
��C T
)
��T U
{
�� 	
m_Discoverability
�� 
=
�� 
	discovery
��  )
;
��) *!
m_ProjectGeneration
�� 
=
��  !
projectGeneration
��" 3
;
��3 4
}
�� 	
static
��  
VSCodeScriptEditor
�� !
(
��! "
)
��" #
{
�� 	
var
�� 
editor
�� 
=
�� 
new
��  
VSCodeScriptEditor
�� /
(
��/ 0
new
��0 3
VSCodeDiscovery
��4 C
(
��C D
)
��D E
,
��E F
new
��G J
ProjectGeneration
��K \
(
��\ ]
	Directory
��] f
.
��f g
	GetParent
��g p
(
��p q
Application
��q |
.
��| }
dataPath��} �
)��� �
.��� �
FullName��� �
)��� �
)��� �
;��� �

CodeEditor
�� 
.
�� 
Register
�� 
(
��  
editor
��  &
)
��& '
;
��' (
if
�� 
(
�� "
IsVSCodeInstallation
�� $
(
��$ %

CodeEditor
��% /
.
��/ 0'
CurrentEditorInstallation
��0 I
)
��I J
)
��J K
{
�� 
editor
�� 
.
�� !
CreateIfDoesntExist
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
}
�� 	
static
�� 
bool
�� "
IsVSCodeInstallation
�� (
(
��( )
string
��) /
path
��0 4
)
��4 5
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
path
��% )
)
��) *
)
��* +
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
lowerCasePath
�� 
=
�� 
path
��  $
.
��$ %
ToLower
��% ,
(
��, -
)
��- .
;
��. /
var
�� 
filename
�� 
=
�� 
Path
�� 
.
�� 
GetFileName
�� 
(
�� 
lowerCasePath
�� *
.
��* +
Replace
��+ 2
(
��2 3
$char
��3 7
,
��7 8
Path
��9 =
.
��= >$
DirectorySeparatorChar
��> T
)
��T U
.
��U V
Replace
��V ]
(
��] ^
$char
��^ a
,
��a b
Path
��c g
.
��g h$
DirectorySeparatorChar
��h ~
)
��~ 
)�� �
.
�� 
Replace
�� 
(
�� 
$str
�� 
,
�� 
$str
��  
)
��  !
;
��! "
return
�� "
k_SupportedFileNames
�� '
.
��' (
Contains
��( 0
(
��0 1
filename
��1 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
void
�� 

Initialize
�� 
(
�� 
string
�� %$
editorInstallationPath
��& <
)
��< =
{
��> ?
}
��@ A
}
�� 
}�� 