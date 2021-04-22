∆F
äD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\VSCodeDiscovery.cs
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
Contains	QQ á
(
QQá à
$str
QQà å
)
QQå ç
)
QQç é
)
QQé è
:
QQè ê
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
ÄÄ 
bool
ÄÄ 
VSCodeExists
ÄÄ  
(
ÄÄ  !
string
ÄÄ! '
path
ÄÄ( ,
)
ÄÄ, -
{
ÅÅ 	
return
ÖÖ 
new
ÖÖ 
FileInfo
ÖÖ 
(
ÖÖ  
path
ÖÖ  $
)
ÖÖ$ %
.
ÖÖ% &
Exists
ÖÖ& ,
;
ÖÖ, -
}
áá 	
}
àà 
}ââ ≥
öD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\GUIDGenerator.cs
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
} “ï
ûD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\ProjectGeneration.cs
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
ScriptingLanguage	bbt Ö
>
bbÖ Ü
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
$str	pp} ä
)
ppä ã
.
ppã å
Replace
ppå ì
(
ppì î
$str
ppî ö
,
ppö õ
$str
ppú †
)
pp† °
;
pp° ¢
stringrr 2
&m_SolutionProjectConfigurationTemplaterr 5
=rr6 7
stringrr8 >
.rr> ?
Joinrr? C
(rrC D
$strrrD J
,rrJ K
$str	rrL Ü
,
rrÜ á
$str
rrà ¿
)
rr¿ ¡
.
rr¡ ¬
Replace
rr¬ …
(
rr…  
$str
rr  –
,
rr– —
$str
rr“ ÷
)
rr÷ ◊
;
rr◊ ÿ
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
ÄÄ #
ProjectGenerationFlag
ÄÄ '
.
ÄÄ' (
Local
ÄÄ( -
|
ÇÇ #
ProjectGenerationFlag
ÇÇ '
.
ÇÇ' (
LocalTarBall
ÇÇ( 4
|
ÑÑ #
ProjectGenerationFlag
ÑÑ '
.
ÑÑ' (
PlayerAssemblies
ÑÑ( 8
|
ÖÖ #
ProjectGenerationFlag
ÖÖ '
.
ÖÖ' (
Registry
ÖÖ( 0
|
ÜÜ #
ProjectGenerationFlag
ÜÜ '
.
ÜÜ' (
Unknown
ÜÜ( /
)
ÜÜ/ 0
;
ÜÜ0 1
}
áá 	
readonly
ââ 
string
ââ 
m_ProjectName
ââ %
;
ââ% &
readonly
ää #
IAssemblyNameProvider
ää &$
m_AssemblyNameProvider
ää' =
;
ää= >
readonly
ãã 
IFileIO
ãã 
m_FileIOProvider
ãã )
;
ãã) *
readonly
åå 
IGUIDGenerator
åå 
m_GUIDProvider
åå  .
;
åå. /
const
éé 
string
éé 
k_ToolsVersion
éé #
=
éé$ %
$str
éé& +
;
éé+ ,
const
èè 
string
èè 
k_ProductVersion
èè %
=
èè& '
$str
èè( 4
;
èè4 5
const
êê 
string
êê 
k_BaseDirectory
êê $
=
êê% &
$str
êê' *
;
êê* +
const
ëë 
string
ëë &
k_TargetFrameworkVersion
ëë -
=
ëë. /
$str
ëë0 8
;
ëë8 9
const
íí 
string
íí %
k_TargetLanguageVersion
íí ,
=
íí- .
$str
íí/ 7
;
íí7 8
public
îî 
ProjectGeneration
îî  
(
îî  !
string
îî! '
tempDirectory
îî( 5
)
îî5 6
:
ïï 
this
ïï 
(
ïï 
tempDirectory
ïï  
,
ïï  !
new
ïï" %"
AssemblyNameProvider
ïï& :
(
ïï: ;
)
ïï; <
,
ïï< =
new
ïï> A
FileIOProvider
ïïB P
(
ïïP Q
)
ïïQ R
,
ïïR S
new
ïïT W
GUIDProvider
ïïX d
(
ïïd e
)
ïïe f
)
ïïf g
{
ïïh i
}
ïïj k
public
óó 
ProjectGeneration
óó  
(
óó  !
string
óó! '
tempDirectory
óó( 5
,
óó5 6#
IAssemblyNameProvider
óó7 L"
assemblyNameProvider
óóM a
,
óóa b
IFileIO
óóc j
fileIO
óók q
,
óóq r
IGUIDGeneratoróós Å
guidGeneratoróóÇ è
)óóè ê
{
òò 	
ProjectDirectory
ôô 
=
ôô 
tempDirectory
ôô ,
.
ôô, -
Replace
ôô- 4
(
ôô4 5
$char
ôô5 9
,
ôô9 :
$char
ôô; >
)
ôô> ?
;
ôô? @
m_ProjectName
öö 
=
öö 
Path
öö  
.
öö  !
GetFileName
öö! ,
(
öö, -
ProjectDirectory
öö- =
)
öö= >
;
öö> ?$
m_AssemblyNameProvider
õõ "
=
õõ# $"
assemblyNameProvider
õõ% 9
;
õõ9 :
m_FileIOProvider
úú 
=
úú 
fileIO
úú %
;
úú% &
m_GUIDProvider
ùù 
=
ùù 
guidGenerator
ùù *
;
ùù* +
}
ûû 	
public
¨¨ 
bool
¨¨ 
SyncIfNeeded
¨¨  
(
¨¨  !
List
¨¨! %
<
¨¨% &
string
¨¨& ,
>
¨¨, -
affectedFiles
¨¨. ;
,
¨¨; <
string
¨¨= C
[
¨¨C D
]
¨¨D E
reimportedFiles
¨¨F U
)
¨¨U V
{
≠≠ 	
Profiler
ÆÆ 
.
ÆÆ 
BeginSample
ÆÆ  
(
ÆÆ  !
$str
ÆÆ! ;
)
ÆÆ; <
;
ÆÆ< =-
SetupProjectSupportedExtensions
ØØ +
(
ØØ+ ,
)
ØØ, -
;
ØØ- .
if
≤≤ 
(
≤≤ 
SolutionExists
≤≤ 
(
≤≤ 
)
≤≤  
&&
≤≤! #"
HasFilesBeenModified
≤≤$ 8
(
≤≤8 9
affectedFiles
≤≤9 F
,
≤≤F G
reimportedFiles
≤≤H W
)
≤≤W X
)
≤≤X Y
{
≥≥ 
var
¥¥ 

assemblies
¥¥ 
=
¥¥  $
m_AssemblyNameProvider
¥¥! 7
.
¥¥7 8
GetAssemblies
¥¥8 E
(
¥¥E F(
ShouldFileBePartOfSolution
¥¥F `
)
¥¥` a
;
¥¥a b
var
µµ "
allProjectAssemblies
µµ (
=
µµ) *'
RelevantAssembliesForMode
µµ+ D
(
µµD E

assemblies
µµE O
)
µµO P
.
µµP Q
ToList
µµQ W
(
µµW X
)
µµX Y
;
µµY Z
SyncSolution
∂∂ 
(
∂∂ "
allProjectAssemblies
∂∂ 1
)
∂∂1 2
;
∂∂2 3
var
∏∏ "
allAssetProjectParts
∏∏ (
=
∏∏) **
GenerateAllAssetProjectParts
∏∏+ G
(
∏∏G H
)
∏∏H I
;
∏∏I J
var
∫∫ 
affectedNames
∫∫ !
=
∫∫" #
affectedFiles
∫∫$ 1
.
∫∫1 2
Select
∫∫2 8
(
∫∫8 9
asset
∫∫9 >
=>
∫∫? A$
m_AssemblyNameProvider
∫∫B X
.
∫∫X Y+
GetAssemblyNameFromScriptPath
∫∫Y v
(
∫∫v w
asset
∫∫w |
)
∫∫| }
)
∫∫} ~
.
∫∫~ 
Where∫∫ Ñ
(∫∫Ñ Ö
name∫∫Ö â
=>∫∫ä å
!∫∫ç é
string∫∫é î
.∫∫î ï"
IsNullOrWhiteSpace∫∫ï ß
(∫∫ß ®
name∫∫® ¨
)∫∫¨ ≠
)∫∫≠ Æ
.∫∫Æ Ø
Select∫∫Ø µ
(∫∫µ ∂
name∫∫∂ ∫
=>∫∫ª Ω
name∫∫æ ¬
.∫∫¬ √
Split∫∫√ »
(∫∫» …
new∫∫… Ã
[∫∫Õ Œ
]∫∫Œ œ
{∫∫– —
$str∫∫— ◊
}∫∫◊ ÿ
,∫∫ÿ Ÿ"
StringSplitOptions∫∫⁄ Ï
.∫∫Ï Ì"
RemoveEmptyEntries∫∫Ì ˇ
)∫∫ˇ Ä
[∫∫Ä Å
$num∫∫Å Ç
]∫∫Ç É
)∫∫É Ñ
;∫∫Ñ Ö
var
ªª 
reimportedNames
ªª #
=
ªª$ %
reimportedFiles
ªª& 5
.
ªª5 6
Select
ªª6 <
(
ªª< =
asset
ªª= B
=>
ªªC E$
m_AssemblyNameProvider
ªªF \
.
ªª\ ]+
GetAssemblyNameFromScriptPath
ªª] z
(
ªªz {
assetªª{ Ä
)ªªÄ Å
)ªªÅ Ç
.ªªÇ É
WhereªªÉ à
(ªªà â
nameªªâ ç
=>ªªé ê
!ªªë í
stringªªí ò
.ªªò ô"
IsNullOrWhiteSpaceªªô ´
(ªª´ ¨
nameªª¨ ∞
)ªª∞ ±
)ªª± ≤
.ªª≤ ≥
Selectªª≥ π
(ªªπ ∫
nameªª∫ æ
=>ªªø ¡
nameªª¬ ∆
.ªª∆ «
Splitªª« Ã
(ªªÃ Õ
newªªÕ –
[ªª— “
]ªª“ ”
{ªª‘ ’
$strªª’ €
}ªª€ ‹
,ªª‹ ›"
StringSplitOptionsªªﬁ 
.ªª Ò"
RemoveEmptyEntriesªªÒ É
)ªªÉ Ñ
[ªªÑ Ö
$numªªÖ Ü
]ªªÜ á
)ªªá à
;ªªà â
var
ºº #
affectedAndReimported
ºº )
=
ºº* +
new
ºº, /
HashSet
ºº0 7
<
ºº7 8
string
ºº8 >
>
ºº> ?
(
ºº? @
affectedNames
ºº@ M
.
ººM N
Concat
ººN T
(
ººT U
reimportedNames
ººU d
)
ººd e
)
ººe f
;
ººf g
var
ΩΩ 
assemblyNames
ΩΩ !
=
ΩΩ" #
new
ΩΩ$ '
HashSet
ΩΩ( /
<
ΩΩ/ 0
string
ΩΩ0 6
>
ΩΩ6 7
(
ΩΩ7 8"
allProjectAssemblies
ΩΩ8 L
.
ΩΩL M
Select
ΩΩM S
(
ΩΩS T
assembly
ΩΩT \
=>
ΩΩ] _
Path
ΩΩ` d
.
ΩΩd e
GetFileName
ΩΩe p
(
ΩΩp q
assembly
ΩΩq y
.
ΩΩy z

outputPathΩΩz Ñ
)ΩΩÑ Ö
)ΩΩÖ Ü
)ΩΩÜ á
;ΩΩá à
foreach
øø 
(
øø 
var
øø 
assembly
øø %
in
øø& ("
allProjectAssemblies
øø) =
)
øø= >
{
¿¿ 
if
¡¡ 
(
¡¡ 
!
¡¡ #
affectedAndReimported
¡¡ .
.
¡¡. /
Contains
¡¡/ 7
(
¡¡7 8
assembly
¡¡8 @
.
¡¡@ A
name
¡¡A E
)
¡¡E F
)
¡¡F G
continue
¬¬  
;
¬¬  !
SyncProject
ƒƒ 
(
ƒƒ  
assembly
ƒƒ  (
,
ƒƒ( )"
allAssetProjectParts
ƒƒ* >
,
ƒƒ> ?#
ParseResponseFileData
ƒƒ@ U
(
ƒƒU V
assembly
ƒƒV ^
)
ƒƒ^ _
,
ƒƒ_ `
assemblyNames
ƒƒa n
)
ƒƒn o
;
ƒƒo p
}
≈≈ 
Profiler
«« 
.
«« 
	EndSample
«« "
(
««" #
)
««# $
;
««$ %
return
»» 
true
»» 
;
»» 
}
…… 
Profiler
ÀÀ 
.
ÀÀ 
	EndSample
ÀÀ 
(
ÀÀ 
)
ÀÀ  
;
ÀÀ  !
return
ÃÃ 
false
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
bool
œœ "
HasFilesBeenModified
œœ !
(
œœ! "
List
œœ" &
<
œœ& '
string
œœ' -
>
œœ- .
affectedFiles
œœ/ <
,
œœ< =
string
œœ> D
[
œœD E
]
œœE F
reimportedFiles
œœG V
)
œœV W
{
–– 	
return
—— 
affectedFiles
——  
.
——  !
Any
——! $
(
——$ %(
ShouldFileBePartOfSolution
——% ?
)
——? @
||
——A C
reimportedFiles
——D S
.
——S T
Any
——T W
(
——W X)
ShouldSyncOnReimportedAsset
——X s
)
——s t
;
——t u
}
““ 	
static
‘‘ 
bool
‘‘ )
ShouldSyncOnReimportedAsset
‘‘ /
(
‘‘/ 0
string
‘‘0 6
asset
‘‘7 <
)
‘‘< =
{
’’ 	
return
÷÷ &
k_ReimportSyncExtensions
÷÷ +
.
÷÷+ ,
Contains
÷÷, 4
(
÷÷4 5
new
÷÷5 8
FileInfo
÷÷9 A
(
÷÷A B
asset
÷÷B G
)
÷÷G H
.
÷÷H I
	Extension
÷÷I R
)
÷÷R S
;
÷÷S T
}
◊◊ 	
public
ŸŸ 
void
ŸŸ 
Sync
ŸŸ 
(
ŸŸ 
)
ŸŸ 
{
⁄⁄ 	-
SetupProjectSupportedExtensions
€€ +
(
€€+ ,
)
€€, -
;
€€- .1
#GenerateAndWriteSolutionAndProjects
‹‹ /
(
‹‹/ 0
)
‹‹0 1
;
‹‹1 2
}
›› 	
public
ﬂﬂ 
bool
ﬂﬂ 
SolutionExists
ﬂﬂ "
(
ﬂﬂ" #
)
ﬂﬂ# $
{
‡‡ 	
return
·· 
m_FileIOProvider
·· #
.
··# $
Exists
··$ *
(
··* +
SolutionFile
··+ 7
(
··7 8
)
··8 9
)
··9 :
;
··: ;
}
‚‚ 	
void
‰‰ -
SetupProjectSupportedExtensions
‰‰ ,
(
‰‰, -
)
‰‰- .
{
ÂÂ 	*
m_ProjectSupportedExtensions
ÊÊ (
=
ÊÊ) *$
m_AssemblyNameProvider
ÊÊ+ A
.
ÊÊA B(
ProjectSupportedExtensions
ÊÊB \
;
ÊÊ\ ]
}
ÁÁ 	
bool
ÈÈ (
ShouldFileBePartOfSolution
ÈÈ '
(
ÈÈ' (
string
ÈÈ( .
file
ÈÈ/ 3
)
ÈÈ3 4
{
ÍÍ 	
if
ÏÏ 
(
ÏÏ $
m_AssemblyNameProvider
ÏÏ &
.
ÏÏ& ''
IsInternalizedPackagePath
ÏÏ' @
(
ÏÏ@ A
file
ÏÏA E
)
ÏÏE F
)
ÏÏF G
{
ÌÌ 
return
ÓÓ 
false
ÓÓ 
;
ÓÓ 
}
ÔÔ 
return
ÒÒ 
HasValidExtension
ÒÒ $
(
ÒÒ$ %
file
ÒÒ% )
)
ÒÒ) *
;
ÒÒ* +
}
ÚÚ 	
bool
ÙÙ 
HasValidExtension
ÙÙ 
(
ÙÙ 
string
ÙÙ %
file
ÙÙ& *
)
ÙÙ* +
{
ıı 	
string
ˆˆ 
	extension
ˆˆ 
=
ˆˆ 
Path
ˆˆ #
.
ˆˆ# $
GetExtension
ˆˆ$ 0
(
ˆˆ0 1
file
ˆˆ1 5
)
ˆˆ5 6
;
ˆˆ6 7
if
˘˘ 
(
˘˘ 
	extension
˘˘ 
==
˘˘ 
$str
˘˘ #
)
˘˘# $
return
˙˙ 
true
˙˙ 
;
˙˙ 
if
¸¸ 
(
¸¸ 
file
¸¸ 
.
¸¸ 
ToLower
¸¸ 
(
¸¸ 
)
¸¸ 
.
¸¸ 
EndsWith
¸¸ '
(
¸¸' (
$str
¸¸( 1
)
¸¸1 2
)
¸¸2 3
return
˝˝ 
true
˝˝ 
;
˝˝ 
return
ˇˇ "
IsSupportedExtension
ˇˇ '
(
ˇˇ' (
	extension
ˇˇ( 1
)
ˇˇ1 2
;
ˇˇ2 3
}
ÄÄ 	
bool
ÇÇ "
IsSupportedExtension
ÇÇ !
(
ÇÇ! "
string
ÇÇ" (
	extension
ÇÇ) 2
)
ÇÇ2 3
{
ÉÉ 	
	extension
ÑÑ 
=
ÑÑ 
	extension
ÑÑ !
.
ÑÑ! "
	TrimStart
ÑÑ" +
(
ÑÑ+ ,
$char
ÑÑ, /
)
ÑÑ/ 0
;
ÑÑ0 1
if
ÖÖ 
(
ÖÖ *
k_BuiltinSupportedExtensions
ÖÖ ,
.
ÖÖ, -
ContainsKey
ÖÖ- 8
(
ÖÖ8 9
	extension
ÖÖ9 B
)
ÖÖB C
)
ÖÖC D
return
ÜÜ 
true
ÜÜ 
;
ÜÜ 
if
áá 
(
áá *
m_ProjectSupportedExtensions
áá ,
.
áá, -
Contains
áá- 5
(
áá5 6
	extension
áá6 ?
)
áá? @
)
áá@ A
return
àà 
true
àà 
;
àà 
return
ââ 
false
ââ 
;
ââ 
}
ää 	
static
åå 
ScriptingLanguage
åå  "
ScriptingLanguageFor
åå! 5
(
åå5 6
Assembly
åå6 >
assembly
åå? G
)
ååG H
{
çç 	
return
éé "
ScriptingLanguageFor
éé '
(
éé' ('
GetExtensionOfSourceFiles
éé( A
(
ééA B
assembly
ééB J
.
ééJ K
sourceFiles
ééK V
)
ééV W
)
ééW X
;
ééX Y
}
èè 	
static
ëë 
string
ëë '
GetExtensionOfSourceFiles
ëë /
(
ëë/ 0
string
ëë0 6
[
ëë6 7
]
ëë7 8
files
ëë9 >
)
ëë> ?
{
íí 	
return
ìì 
files
ìì 
.
ìì 
Length
ìì 
>
ìì  !
$num
ìì" #
?
ìì$ %&
GetExtensionOfSourceFile
ìì& >
(
ìì> ?
files
ìì? D
[
ììD E
$num
ììE F
]
ììF G
)
ììG H
:
ììI J
$str
ììK O
;
ììO P
}
îî 	
static
ññ 
string
ññ &
GetExtensionOfSourceFile
ññ .
(
ññ. /
string
ññ/ 5
file
ññ6 :
)
ññ: ;
{
óó 	
var
òò 
ext
òò 
=
òò 
Path
òò 
.
òò 
GetExtension
òò '
(
òò' (
file
òò( ,
)
òò, -
.
òò- .
ToLower
òò. 5
(
òò5 6
)
òò6 7
;
òò7 8
ext
ôô 
=
ôô 
ext
ôô 
.
ôô 
	Substring
ôô 
(
ôô  
$num
ôô  !
)
ôô! "
;
ôô" #
return
öö 
ext
öö 
;
öö 
}
õõ 	
static
ùù 
ScriptingLanguage
ùù  "
ScriptingLanguageFor
ùù! 5
(
ùù5 6
string
ùù6 <
	extension
ùù= F
)
ùùF G
{
ûû 	
return
üü *
k_BuiltinSupportedExtensions
üü /
.
üü/ 0
TryGetValue
üü0 ;
(
üü; <
	extension
üü< E
.
üüE F
	TrimStart
üüF O
(
üüO P
$char
üüP S
)
üüS T
,
üüT U
out
üüV Y
var
üüZ ]
result
üü^ d
)
üüd e
?
†† 
result
†† 
:
°° 
ScriptingLanguage
°° #
.
°°# $
None
°°$ (
;
°°( )
}
¢¢ 	
public
§§ 
void
§§ 1
#GenerateAndWriteSolutionAndProjects
§§ 7
(
§§7 8
)
§§8 9
{
•• 	
var
®® 

assemblies
®® 
=
®® $
m_AssemblyNameProvider
®® 3
.
®®3 4
GetAssemblies
®®4 A
(
®®A B(
ShouldFileBePartOfSolution
®®B \
)
®®\ ]
;
®®] ^
var
™™ "
allAssetProjectParts
™™ $
=
™™% &*
GenerateAllAssetProjectParts
™™' C
(
™™C D
)
™™D E
;
™™E F
SyncSolution
¨¨ 
(
¨¨ 

assemblies
¨¨ #
)
¨¨# $
;
¨¨$ %
var
≠≠ "
allProjectAssemblies
≠≠ $
=
≠≠% &'
RelevantAssembliesForMode
≠≠' @
(
≠≠@ A

assemblies
≠≠A K
)
≠≠K L
.
≠≠L M
ToList
≠≠M S
(
≠≠S T
)
≠≠T U
;
≠≠U V
var
ÆÆ 
assemblyNames
ÆÆ 
=
ÆÆ 
new
ÆÆ  #
HashSet
ÆÆ$ +
<
ÆÆ+ ,
string
ÆÆ, 2
>
ÆÆ2 3
(
ÆÆ3 4"
allProjectAssemblies
ÆÆ4 H
.
ÆÆH I
Select
ÆÆI O
(
ÆÆO P
assembly
ÆÆP X
=>
ÆÆY [
Path
ÆÆ\ `
.
ÆÆ` a
GetFileName
ÆÆa l
(
ÆÆl m
assembly
ÆÆm u
.
ÆÆu v

outputPathÆÆv Ä
)ÆÆÄ Å
)ÆÆÅ Ç
)ÆÆÇ É
;ÆÆÉ Ñ
foreach
ØØ 
(
ØØ 
Assembly
ØØ 
assembly
ØØ &
in
ØØ' )"
allProjectAssemblies
ØØ* >
)
ØØ> ?
{
∞∞ 
var
±± 
responseFileData
±± $
=
±±% &#
ParseResponseFileData
±±' <
(
±±< =
assembly
±±= E
)
±±E F
;
±±F G
SyncProject
≤≤ 
(
≤≤ 
assembly
≤≤ $
,
≤≤$ %"
allAssetProjectParts
≤≤& :
,
≤≤: ;
responseFileData
≤≤< L
,
≤≤L M
assemblyNames
≤≤N [
)
≤≤[ \
;
≤≤\ ]
}
≥≥ &
WriteVSCodeSettingsFiles
µµ $
(
µµ$ %
)
µµ% &
;
µµ& '
}
∂∂ 	
List
∏∏ 
<
∏∏ 
ResponseFileData
∏∏ 
>
∏∏ #
ParseResponseFileData
∏∏ 4
(
∏∏4 5
Assembly
∏∏5 =
assembly
∏∏> F
)
∏∏F G
{
ππ 	
var
∫∫ (
systemReferenceDirectories
∫∫ *
=
∫∫+ ,!
CompilationPipeline
∫∫- @
.
∫∫@ A*
GetSystemAssemblyDirectories
∫∫A ]
(
∫∫] ^
assembly
∫∫^ f
.
∫∫f g
compilerOptions
∫∫g v
.
∫∫v w$
ApiCompatibilityLevel∫∫w å
)∫∫å ç
;∫∫ç é

Dictionary
ºº 
<
ºº 
string
ºº 
,
ºº 
ResponseFileData
ºº /
>
ºº/ 0
responseFilesData
ºº1 B
=
ººC D
assembly
ººE M
.
ººM N
compilerOptions
ººN ]
.
ºº] ^
ResponseFiles
ºº^ k
.
ººk l
ToDictionary
ººl x
(
ººx y
x
ººy z
=>
ºº{ }
x
ºº~ 
,ºº Ä
xººÅ Ç
=>ººÉ Ö&
m_AssemblyNameProviderººÜ ú
.ººú ù!
ParseResponseFileººù Æ
(ººÆ Ø
x
ΩΩ 
,
ΩΩ 
ProjectDirectory
ææ  
,
ææ  !(
systemReferenceDirectories
øø *
)
¿¿ 
)
¿¿ 
;
¿¿ 

Dictionary
¬¬ 
<
¬¬ 
string
¬¬ 
,
¬¬ 
ResponseFileData
¬¬ /
>
¬¬/ 0%
responseFilesWithErrors
¬¬1 H
=
¬¬I J
responseFilesData
¬¬K \
.
¬¬\ ]
Where
¬¬] b
(
¬¬b c
x
¬¬c d
=>
¬¬e g
x
¬¬h i
.
¬¬i j
Value
¬¬j o
.
¬¬o p
Errors
¬¬p v
.
¬¬v w
Any
¬¬w z
(
¬¬z {
)
¬¬{ |
)
¬¬| }
.
√√ 
ToDictionary
√√ 
(
√√ 
x
√√ 
=>
√√  "
x
√√# $
.
√√$ %
Key
√√% (
,
√√( )
x
√√* +
=>
√√, .
x
√√/ 0
.
√√0 1
Value
√√1 6
)
√√6 7
;
√√7 8
if
≈≈ 
(
≈≈ %
responseFilesWithErrors
≈≈ '
.
≈≈' (
Any
≈≈( +
(
≈≈+ ,
)
≈≈, -
)
≈≈- .
{
∆∆ 
foreach
«« 
(
«« 
var
«« 
error
«« "
in
««# %%
responseFilesWithErrors
««& =
)
««= >
foreach
»» 
(
»» 
var
»» 

valueError
»» '
in
»»( *
error
»»+ 0
.
»»0 1
Value
»»1 6
.
»»6 7
Errors
»»7 =
)
»»= >
{
…… 
Debug
   
.
   
LogError
   "
(
  " #
$"
  # %
{
  % &
error
  & +
.
  + ,
Key
  , /
}
  / 0
 Parse Error : 
  0 ?
{
  ? @

valueError
  @ J
}
  J K
"
  K L
)
  L M
;
  M N
}
ÀÀ 
}
ÃÃ 
return
ŒŒ 
responseFilesData
ŒŒ $
.
ŒŒ$ %
Select
ŒŒ% +
(
ŒŒ+ ,
x
ŒŒ, -
=>
ŒŒ. 0
x
ŒŒ1 2
.
ŒŒ2 3
Value
ŒŒ3 8
)
ŒŒ8 9
.
ŒŒ9 :
ToList
ŒŒ: @
(
ŒŒ@ A
)
ŒŒA B
;
ŒŒB C
}
œœ 	

Dictionary
—— 
<
—— 
string
—— 
,
—— 
string
—— !
>
——! "*
GenerateAllAssetProjectParts
——# ?
(
——? @
)
——@ A
{
““ 	

Dictionary
”” 
<
”” 
string
”” 
,
”” 
StringBuilder
”” ,
>
””, -
stringBuilders
””. <
=
””= >
new
””? B

Dictionary
””C M
<
””M N
string
””N T
,
””T U
StringBuilder
””V c
>
””c d
(
””d e
)
””e f
;
””f g
foreach
’’ 
(
’’ 
string
’’ 
asset
’’ !
in
’’" $$
m_AssemblyNameProvider
’’% ;
.
’’; <
GetAllAssetPaths
’’< L
(
’’L M
)
’’M N
)
’’N O
{
÷÷ 
if
ŸŸ 
(
ŸŸ $
m_AssemblyNameProvider
ŸŸ *
.
ŸŸ* +'
IsInternalizedPackagePath
ŸŸ+ D
(
ŸŸD E
asset
ŸŸE J
)
ŸŸJ K
)
ŸŸK L
{
⁄⁄ 
continue
€€ 
;
€€ 
}
‹‹ 
string
ﬁﬁ 
	extension
ﬁﬁ  
=
ﬁﬁ! "
Path
ﬁﬁ# '
.
ﬁﬁ' (
GetExtension
ﬁﬁ( 4
(
ﬁﬁ4 5
asset
ﬁﬁ5 :
)
ﬁﬁ: ;
;
ﬁﬁ; <
if
ﬂﬂ 
(
ﬂﬂ "
IsSupportedExtension
ﬂﬂ (
(
ﬂﬂ( )
	extension
ﬂﬂ) 2
)
ﬂﬂ2 3
&&
ﬂﬂ4 6
ScriptingLanguage
ﬂﬂ7 H
.
ﬂﬂH I
None
ﬂﬂI M
==
ﬂﬂN P"
ScriptingLanguageFor
ﬂﬂQ e
(
ﬂﬂe f
	extension
ﬂﬂf o
)
ﬂﬂo p
)
ﬂﬂp q
{
‡‡ 
var
‚‚ 
assemblyName
‚‚ $
=
‚‚% &$
m_AssemblyNameProvider
‚‚' =
.
‚‚= >+
GetAssemblyNameFromScriptPath
‚‚> [
(
‚‚[ \
asset
‚‚\ a
)
‚‚a b
;
‚‚b c
if
‰‰ 
(
‰‰ 
string
‰‰ 
.
‰‰ 
IsNullOrEmpty
‰‰ ,
(
‰‰, -
assemblyName
‰‰- 9
)
‰‰9 :
)
‰‰: ;
{
ÂÂ 
continue
ÊÊ  
;
ÊÊ  !
}
ÁÁ 
assemblyName
ÈÈ  
=
ÈÈ! "
Path
ÈÈ# '
.
ÈÈ' ()
GetFileNameWithoutExtension
ÈÈ( C
(
ÈÈC D
assemblyName
ÈÈD P
)
ÈÈP Q
;
ÈÈQ R
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
stringBuilders
ÎÎ '
.
ÎÎ' (
TryGetValue
ÎÎ( 3
(
ÎÎ3 4
assemblyName
ÎÎ4 @
,
ÎÎ@ A
out
ÎÎB E
var
ÎÎF I
projectBuilder
ÎÎJ X
)
ÎÎX Y
)
ÎÎY Z
{
ÏÏ 
projectBuilder
ÌÌ &
=
ÌÌ' (
new
ÌÌ) ,
StringBuilder
ÌÌ- :
(
ÌÌ: ;
)
ÌÌ; <
;
ÌÌ< =
stringBuilders
ÓÓ &
[
ÓÓ& '
assemblyName
ÓÓ' 3
]
ÓÓ3 4
=
ÓÓ5 6
projectBuilder
ÓÓ7 E
;
ÓÓE F
}
ÔÔ 
projectBuilder
ÒÒ "
.
ÒÒ" #
Append
ÒÒ# )
(
ÒÒ) *
$str
ÒÒ* A
)
ÒÒA B
.
ÒÒB C
Append
ÒÒC I
(
ÒÒI J$
EscapedRelativePathFor
ÒÒJ `
(
ÒÒ` a
asset
ÒÒa f
)
ÒÒf g
)
ÒÒg h
.
ÒÒh i
Append
ÒÒi o
(
ÒÒo p
$str
ÒÒp w
)
ÒÒw x
.
ÒÒx y
Append
ÒÒy 
(ÒÒ Ä 
k_WindowsNewlineÒÒÄ ê
)ÒÒê ë
;ÒÒë í
}
ÚÚ 
}
ÛÛ 
var
ıı 
result
ıı 
=
ıı 
new
ıı 

Dictionary
ıı '
<
ıı' (
string
ıı( .
,
ıı. /
string
ıı0 6
>
ıı6 7
(
ıı7 8
)
ıı8 9
;
ıı9 :
foreach
˜˜ 
(
˜˜ 
var
˜˜ 
entry
˜˜ 
in
˜˜ !
stringBuilders
˜˜" 0
)
˜˜0 1
result
¯¯ 
[
¯¯ 
entry
¯¯ 
.
¯¯ 
Key
¯¯  
]
¯¯  !
=
¯¯" #
entry
¯¯$ )
.
¯¯) *
Value
¯¯* /
.
¯¯/ 0
ToString
¯¯0 8
(
¯¯8 9
)
¯¯9 :
;
¯¯: ;
return
˙˙ 
result
˙˙ 
;
˙˙ 
}
˚˚ 	
void
˝˝ 
SyncProject
˝˝ 
(
˝˝ 
Assembly
˛˛ 
assembly
˛˛ 
,
˛˛ 

Dictionary
ˇˇ 
<
ˇˇ 
string
ˇˇ 
,
ˇˇ 
string
ˇˇ %
>
ˇˇ% &#
allAssetsProjectParts
ˇˇ' <
,
ˇˇ< =
List
ÄÄ 
<
ÄÄ 
ResponseFileData
ÄÄ !
>
ÄÄ! "
responseFilesData
ÄÄ# 4
,
ÄÄ4 5
HashSet
ÅÅ 
<
ÅÅ 
string
ÅÅ 
>
ÅÅ 
assemblyNames
ÅÅ )
)
ÅÅ) *
{
ÇÇ 	)
SyncProjectFileIfNotChanged
ÉÉ '
(
ÉÉ' (
ProjectFile
ÉÉ( 3
(
ÉÉ3 4
assembly
ÉÉ4 <
)
ÉÉ< =
,
ÉÉ= >
ProjectText
ÉÉ? J
(
ÉÉJ K
assembly
ÉÉK S
,
ÉÉS T#
allAssetsProjectParts
ÉÉU j
,
ÉÉj k
responseFilesData
ÉÉl }
,
ÉÉ} ~
assemblyNamesÉÉ å
,ÉÉå ç)
GetAllRoslynAnalyzerPathsÉÉé ß
(ÉÉß ®
)ÉÉ® ©
.ÉÉ© ™
ToArrayÉÉ™ ±
(ÉÉ± ≤
)ÉÉ≤ ≥
)ÉÉ≥ ¥
)ÉÉ¥ µ
;ÉÉµ ∂
}
ÑÑ 	
private
ÜÜ 
IEnumerable
ÜÜ 
<
ÜÜ 
string
ÜÜ "
>
ÜÜ" #'
GetAllRoslynAnalyzerPaths
ÜÜ$ =
(
ÜÜ= >
)
ÜÜ> ?
{
áá 	
return
àà $
m_AssemblyNameProvider
àà )
.
àà) *$
GetRoslynAnalyzerPaths
àà* @
(
àà@ A
)
ààA B
;
ààB C
}
ââ 	
void
ãã )
SyncProjectFileIfNotChanged
ãã (
(
ãã( )
string
ãã) /
path
ãã0 4
,
ãã4 5
string
ãã6 <
newContents
ãã= H
)
ããH I
{
åå 	"
SyncFileIfNotChanged
çç  
(
çç  !
path
çç! %
,
çç% &
newContents
çç' 2
)
çç2 3
;
çç3 4
}
éé 	
void
êê *
SyncSolutionFileIfNotChanged
êê )
(
êê) *
string
êê* 0
path
êê1 5
,
êê5 6
string
êê7 =
newContents
êê> I
)
êêI J
{
ëë 	"
SyncFileIfNotChanged
íí  
(
íí  !
path
íí! %
,
íí% &
newContents
íí' 2
)
íí2 3
;
íí3 4
}
ìì 	
void
ïï "
SyncFileIfNotChanged
ïï !
(
ïï! "
string
ïï" (
filename
ïï) 1
,
ïï1 2
string
ïï3 9
newContents
ïï: E
)
ïïE F
{
ññ 	
if
óó 
(
óó 
m_FileIOProvider
óó  
.
óó  !
Exists
óó! '
(
óó' (
filename
óó( 0
)
óó0 1
)
óó1 2
{
òò 
var
ôô 
currentContents
ôô #
=
ôô$ %
m_FileIOProvider
ôô& 6
.
ôô6 7
ReadAllText
ôô7 B
(
ôôB C
filename
ôôC K
)
ôôK L
;
ôôL M
if
õõ 
(
õõ 
currentContents
õõ #
==
õõ$ &
newContents
õõ' 2
)
õõ2 3
{
úú 
return
ùù 
;
ùù 
}
ûû 
}
üü 
m_FileIOProvider
°° 
.
°° 
WriteAllText
°° )
(
°°) *
filename
°°* 2
,
°°2 3
newContents
°°4 ?
)
°°? @
;
°°@ A
}
¢¢ 	
string
§§ 
ProjectText
§§ 
(
§§ 
Assembly
•• 
assembly
•• 
,
•• 

Dictionary
¶¶ 
<
¶¶ 
string
¶¶ 
,
¶¶ 
string
¶¶ %
>
¶¶% &#
allAssetsProjectParts
¶¶' <
,
¶¶< =
List
ßß 
<
ßß 
ResponseFileData
ßß !
>
ßß! "
responseFilesData
ßß# 4
,
ßß4 5
HashSet
®® 
<
®® 
string
®® 
>
®® 
assemblyNames
®® )
,
®®) *
string
©© 
[
©© 
]
©© $
roslynAnalyzerDllPaths
©© +
)
©©+ ,
{
™™ 	
var
´´ 
projectBuilder
´´ 
=
´´  
new
´´! $
StringBuilder
´´% 2
(
´´2 3
)
´´3 4
;
´´4 5
ProjectHeader
¨¨ 
(
¨¨ 
assembly
¨¨ "
,
¨¨" #
responseFilesData
¨¨$ 5
,
¨¨5 6$
roslynAnalyzerDllPaths
¨¨7 M
,
¨¨M N
projectBuilder
¨¨O ]
)
¨¨] ^
;
¨¨^ _
var
≠≠ 

references
≠≠ 
=
≠≠ 
new
≠≠  
List
≠≠! %
<
≠≠% &
string
≠≠& ,
>
≠≠, -
(
≠≠- .
)
≠≠. /
;
≠≠/ 0
foreach
ØØ 
(
ØØ 
string
ØØ 
file
ØØ  
in
ØØ! #
assembly
ØØ$ ,
.
ØØ, -
sourceFiles
ØØ- 8
)
ØØ8 9
{
∞∞ 
if
±± 
(
±± 
!
±± 
HasValidExtension
±± &
(
±±& '
file
±±' +
)
±±+ ,
)
±±, -
continue
≤≤ 
;
≤≤ 
var
¥¥ 
	extension
¥¥ 
=
¥¥ 
Path
¥¥  $
.
¥¥$ %
GetExtension
¥¥% 1
(
¥¥1 2
file
¥¥2 6
)
¥¥6 7
.
¥¥7 8
ToLower
¥¥8 ?
(
¥¥? @
)
¥¥@ A
;
¥¥A B
var
µµ 
fullFile
µµ 
=
µµ $
EscapedRelativePathFor
µµ 5
(
µµ5 6
file
µµ6 :
)
µµ: ;
;
µµ; <
if
∂∂ 
(
∂∂ 
$str
∂∂ 
!=
∂∂ 
	extension
∂∂ '
)
∂∂' (
{
∑∑ 
projectBuilder
∏∏ "
.
∏∏" #
Append
∏∏# )
(
∏∏) *
$str
∏∏* D
)
∏∏D E
.
∏∏E F
Append
∏∏F L
(
∏∏L M
fullFile
∏∏M U
)
∏∏U V
.
∏∏V W
Append
∏∏W ]
(
∏∏] ^
$str
∏∏^ e
)
∏∏e f
.
∏∏f g
Append
∏∏g m
(
∏∏m n
k_WindowsNewline
∏∏n ~
)
∏∏~ 
;∏∏ Ä
}
ππ 
else
∫∫ 
{
ªª 

references
ºº 
.
ºº 
Add
ºº "
(
ºº" #
fullFile
ºº# +
)
ºº+ ,
;
ºº, -
}
ΩΩ 
}
ææ 
if
¡¡ 
(
¡¡ #
allAssetsProjectParts
¡¡ %
.
¡¡% &
TryGetValue
¡¡& 1
(
¡¡1 2
assembly
¡¡2 :
.
¡¡: ;
name
¡¡; ?
,
¡¡? @
out
¡¡A D
var
¡¡E H(
additionalAssetsForProject
¡¡I c
)
¡¡c d
)
¡¡d e
projectBuilder
¬¬ 
.
¬¬ 
Append
¬¬ %
(
¬¬% &(
additionalAssetsForProject
¬¬& @
)
¬¬@ A
;
¬¬A B
var
ƒƒ 
responseRefs
ƒƒ 
=
ƒƒ 
responseFilesData
ƒƒ 0
.
ƒƒ0 1

SelectMany
ƒƒ1 ;
(
ƒƒ; <
x
ƒƒ< =
=>
ƒƒ> @
x
ƒƒA B
.
ƒƒB C 
FullPathReferences
ƒƒC U
.
ƒƒU V
Select
ƒƒV \
(
ƒƒ\ ]
r
ƒƒ] ^
=>
ƒƒ_ a
r
ƒƒb c
)
ƒƒc d
)
ƒƒd e
;
ƒƒe f
var
≈≈ (
internalAssemblyReferences
≈≈ *
=
≈≈+ ,
assembly
≈≈- 5
.
≈≈5 6 
assemblyReferences
≈≈6 H
.
∆∆ 
Where
∆∆ 
(
∆∆ 
i
∆∆ 
=>
∆∆ 
!
∆∆ 
i
∆∆ 
.
∆∆ 
sourceFiles
∆∆ (
.
∆∆( )
Any
∆∆) ,
(
∆∆, -(
ShouldFileBePartOfSolution
∆∆- G
)
∆∆G H
)
∆∆H I
.
∆∆I J
Select
∆∆J P
(
∆∆P Q
i
∆∆Q R
=>
∆∆S U
i
∆∆V W
.
∆∆W X

outputPath
∆∆X b
)
∆∆b c
;
∆∆c d
var
«« 
allReferences
«« 
=
«« 
assembly
»» 
.
»» (
compiledAssemblyReferences
»» 1
.
…… 
Union
…… 
(
…… 
responseRefs
…… #
)
……# $
.
   
Union
   
(
   

references
   !
)
  ! "
.
ÀÀ 
Union
ÀÀ 
(
ÀÀ (
internalAssemblyReferences
ÀÀ 1
)
ÀÀ1 2
.
ÃÃ 
Except
ÃÃ 
(
ÃÃ $
roslynAnalyzerDllPaths
ÃÃ .
)
ÃÃ. /
;
ÃÃ/ 0
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
	reference
ŒŒ "
in
ŒŒ# %
allReferences
ŒŒ& 3
)
ŒŒ3 4
{
œœ 
string
–– 
fullReference
–– $
=
––% &
Path
––' +
.
––+ ,
IsPathRooted
––, 8
(
––8 9
	reference
––9 B
)
––B C
?
––D E
	reference
––F O
:
––P Q
Path
––R V
.
––V W
Combine
––W ^
(
––^ _
ProjectDirectory
––_ o
,
––o p
	reference
––q z
)
––z {
;
––{ |
AppendReference
—— 
(
——  
fullReference
——  -
,
——- .
projectBuilder
——/ =
)
——= >
;
——> ?
}
““ 
if
‘‘ 
(
‘‘ 
$num
‘‘ 
<
‘‘ 
assembly
‘‘ 
.
‘‘  
assemblyReferences
‘‘ /
.
‘‘/ 0
Length
‘‘0 6
)
‘‘6 7
{
’’ 
projectBuilder
÷÷ 
.
÷÷ 
Append
÷÷ %
(
÷÷% &
$str
÷÷& 6
)
÷÷6 7
.
÷÷7 8
Append
÷÷8 >
(
÷÷> ?
k_WindowsNewline
÷÷? O
)
÷÷O P
;
÷÷P Q
projectBuilder
◊◊ 
.
◊◊ 
Append
◊◊ %
(
◊◊% &
$str
◊◊& 5
)
◊◊5 6
.
◊◊6 7
Append
◊◊7 =
(
◊◊= >
k_WindowsNewline
◊◊> N
)
◊◊N O
;
◊◊O P
foreach
ÿÿ 
(
ÿÿ 
Assembly
ÿÿ !
	reference
ÿÿ" +
in
ÿÿ, .
assembly
ÿÿ/ 7
.
ÿÿ7 8 
assemblyReferences
ÿÿ8 J
.
ÿÿJ K
Where
ÿÿK P
(
ÿÿP Q
i
ÿÿQ R
=>
ÿÿS U
i
ÿÿV W
.
ÿÿW X
sourceFiles
ÿÿX c
.
ÿÿc d
Any
ÿÿd g
(
ÿÿg h)
ShouldFileBePartOfSolutionÿÿh Ç
)ÿÿÇ É
)ÿÿÉ Ñ
)ÿÿÑ Ö
{
ŸŸ 
var
⁄⁄ 
referencedProject
⁄⁄ )
=
⁄⁄* +
	reference
⁄⁄, 5
.
⁄⁄5 6

outputPath
⁄⁄6 @
;
⁄⁄@ A
projectBuilder
‹‹ "
.
‹‹" #
Append
‹‹# )
(
‹‹) *
$str
‹‹* L
)
‹‹L M
.
‹‹M N
Append
‹‹N T
(
‹‹T U
	reference
‹‹U ^
.
‹‹^ _
name
‹‹_ c
)
‹‹c d
.
‹‹d e
Append
‹‹e k
(
‹‹k l!
GetProjectExtension
‹‹l 
(‹‹ Ä
)‹‹Ä Å
)‹‹Å Ç
.‹‹Ç É
Append‹‹É â
(‹‹â ä
$str‹‹ä è
)‹‹è ê
.‹‹ê ë
Append‹‹ë ó
(‹‹ó ò 
k_WindowsNewline‹‹ò ®
)‹‹® ©
;‹‹© ™
projectBuilder
›› "
.
››" #
Append
››# )
(
››) *
$str
››* <
)
››< =
.
››= >
Append
››> D
(
››D E
ProjectGuid
››E P
(
››P Q
	reference
››Q Z
.
››Z [
name
››[ _
)
››_ `
)
››` a
.
››a b
Append
››b h
(
››h i
$str
››i v
)
››v w
.
››w x
Append
››x ~
(
››~ 
k_WindowsNewline›› è
)››è ê
;››ê ë
projectBuilder
ﬁﬁ "
.
ﬁﬁ" #
Append
ﬁﬁ# )
(
ﬁﬁ) *
$str
ﬁﬁ* 8
)
ﬁﬁ8 9
.
ﬁﬁ9 :
Append
ﬁﬁ: @
(
ﬁﬁ@ A
	reference
ﬁﬁA J
.
ﬁﬁJ K
name
ﬁﬁK O
)
ﬁﬁO P
.
ﬁﬁP Q
Append
ﬁﬁQ W
(
ﬁﬁW X
$str
ﬁﬁX a
)
ﬁﬁa b
.
ﬁﬁb c
Append
ﬁﬁc i
(
ﬁﬁi j
k_WindowsNewline
ﬁﬁj z
)
ﬁﬁz {
;
ﬁﬁ{ |
projectBuilder
ﬂﬂ "
.
ﬂﬂ" #
Append
ﬂﬂ# )
(
ﬂﬂ) *
$str
ﬂﬂ* C
)
ﬂﬂC D
.
ﬂﬂD E
Append
ﬂﬂE K
(
ﬂﬂK L
k_WindowsNewline
ﬂﬂL \
)
ﬂﬂ\ ]
;
ﬂﬂ] ^
}
‡‡ 
}
·· 
projectBuilder
„„ 
.
„„ 
Append
„„ !
(
„„! "
ProjectFooter
„„" /
(
„„/ 0
)
„„0 1
)
„„1 2
;
„„2 3
return
‰‰ 
projectBuilder
‰‰ !
.
‰‰! "
ToString
‰‰" *
(
‰‰* +
)
‰‰+ ,
;
‰‰, -
}
ÂÂ 	
static
ÁÁ 
void
ÁÁ 
AppendReference
ÁÁ #
(
ÁÁ# $
string
ÁÁ$ *
fullReference
ÁÁ+ 8
,
ÁÁ8 9
StringBuilder
ÁÁ: G
projectBuilder
ÁÁH V
)
ÁÁV W
{
ËË 	
var
ÍÍ 
escapedFullPath
ÍÍ 
=
ÍÍ  !
SecurityElement
ÍÍ" 1
.
ÍÍ1 2
Escape
ÍÍ2 8
(
ÍÍ8 9
fullReference
ÍÍ9 F
)
ÍÍF G
;
ÍÍG H
escapedFullPath
ÎÎ 
=
ÎÎ 
escapedFullPath
ÎÎ -
.
ÎÎ- .
Replace
ÎÎ. 5
(
ÎÎ5 6
$str
ÎÎ6 <
,
ÎÎ< =
$str
ÎÎ> A
)
ÎÎA B
;
ÎÎB C
escapedFullPath
ÏÏ 
=
ÏÏ 
escapedFullPath
ÏÏ -
.
ÏÏ- .
Replace
ÏÏ. 5
(
ÏÏ5 6
$str
ÏÏ6 :
,
ÏÏ: ;
$str
ÏÏ< ?
)
ÏÏ? @
;
ÏÏ@ A
projectBuilder
ÌÌ 
.
ÌÌ 
Append
ÌÌ !
(
ÌÌ! "
$str
ÌÌ" =
)
ÌÌ= >
.
ÌÌ> ?
Append
ÌÌ? E
(
ÌÌE F
Path
ÌÌF J
.
ÌÌJ K)
GetFileNameWithoutExtension
ÌÌK f
(
ÌÌf g
escapedFullPath
ÌÌg v
)
ÌÌv w
)
ÌÌw x
.
ÌÌx y
Append
ÌÌy 
(ÌÌ Ä
$strÌÌÄ Ö
)ÌÌÖ Ü
.ÌÌÜ á
AppendÌÌá ç
(ÌÌç é 
k_WindowsNewlineÌÌé û
)ÌÌû ü
;ÌÌü †
projectBuilder
ÓÓ 
.
ÓÓ 
Append
ÓÓ !
(
ÓÓ! "
$str
ÓÓ" 6
)
ÓÓ6 7
.
ÓÓ7 8
Append
ÓÓ8 >
(
ÓÓ> ?
escapedFullPath
ÓÓ? N
)
ÓÓN O
.
ÓÓO P
Append
ÓÓP V
(
ÓÓV W
$str
ÓÓW d
)
ÓÓd e
.
ÓÓe f
Append
ÓÓf l
(
ÓÓl m
k_WindowsNewline
ÓÓm }
)
ÓÓ} ~
;
ÓÓ~ 
projectBuilder
ÔÔ 
.
ÔÔ 
Append
ÔÔ !
(
ÔÔ! "
$str
ÔÔ" 4
)
ÔÔ4 5
.
ÔÔ5 6
Append
ÔÔ6 <
(
ÔÔ< =
k_WindowsNewline
ÔÔ= M
)
ÔÔM N
;
ÔÔN O
}
 	
public
ÚÚ 
string
ÚÚ 
ProjectFile
ÚÚ !
(
ÚÚ! "
Assembly
ÚÚ" *
assembly
ÚÚ+ 3
)
ÚÚ3 4
{
ÛÛ 	
var
ÙÙ 
fileBuilder
ÙÙ 
=
ÙÙ 
new
ÙÙ !
StringBuilder
ÙÙ" /
(
ÙÙ/ 0
assembly
ÙÙ0 8
.
ÙÙ8 9
name
ÙÙ9 =
)
ÙÙ= >
;
ÙÙ> ?
fileBuilder
ıı 
.
ıı 
Append
ıı 
(
ıı 
$str
ıı (
)
ıı( )
;
ıı) *
return
ˆˆ 
Path
ˆˆ 
.
ˆˆ 
Combine
ˆˆ 
(
ˆˆ  
ProjectDirectory
ˆˆ  0
,
ˆˆ0 1
fileBuilder
ˆˆ2 =
.
ˆˆ= >
ToString
ˆˆ> F
(
ˆˆF G
)
ˆˆG H
)
ˆˆH I
;
ˆˆI J
}
˜˜ 	
public
˘˘ 
string
˘˘ 
SolutionFile
˘˘ "
(
˘˘" #
)
˘˘# $
{
˙˙ 	
return
˚˚ 
Path
˚˚ 
.
˚˚ 
Combine
˚˚ 
(
˚˚  
ProjectDirectory
˚˚  0
,
˚˚0 1
$"
˚˚2 4
{
˚˚4 5
m_ProjectName
˚˚5 B
}
˚˚B C
.sln
˚˚C G
"
˚˚G H
)
˚˚H I
;
˚˚I J
}
¸¸ 	
void
˛˛ 
ProjectHeader
˛˛ 
(
˛˛ 
Assembly
ˇˇ 
assembly
ˇˇ 
,
ˇˇ 
List
ÄÄ 
<
ÄÄ 
ResponseFileData
ÄÄ !
>
ÄÄ! "
responseFilesData
ÄÄ# 4
,
ÄÄ4 5
string
ÅÅ 
[
ÅÅ 
]
ÅÅ $
roslynAnalyzerDllPaths
ÅÅ +
,
ÅÅ+ ,
StringBuilder
ÇÇ 
builder
ÇÇ !
)
ÉÉ 	
{
ÑÑ 	
var
ÖÖ 
otherArguments
ÖÖ 
=
ÖÖ  4
&GetOtherArgumentsFromResponseFilesData
ÖÖ! G
(
ÖÖG H
responseFilesData
ÖÖH Y
)
ÖÖY Z
;
ÖÖZ [&
GetProjectHeaderTemplate
ÜÜ $
(
ÜÜ$ %
builder
áá 
,
áá 
ProjectGuid
àà 
(
àà 
assembly
àà $
.
àà$ %
name
àà% )
)
àà) *
,
àà* +
assembly
ââ 
.
ââ 
name
ââ 
,
ââ 
string
ää 
.
ää 
Join
ää 
(
ää 
$str
ää 
,
ää  
new
ää! $
[
ää$ %
]
ää% &
{
ää' (
$str
ää) 0
,
ää0 1
$str
ää2 9
}
ää: ;
.
ää; <
Concat
ää< B
(
ääB C
assembly
ääC K
.
ääK L
defines
ääL S
)
ääS T
.
ääT U
Concat
ääU [
(
ää[ \
responseFilesData
ää\ m
.
ääm n

SelectMany
ään x
(
ääx y
x
ääy z
=>
ää{ }
x
ää~ 
.ää Ä
DefinesääÄ á
)ääá à
)ääà â
.ääâ ä
Concatäää ê
(ääê ë'
EditorUserBuildSettingsääë ®
.ää® ©.
activeScriptCompilationDefinesää© «
)ää« »
.ää» …
Distinctää… —
(ää— “
)ää“ ”
.ää” ‘
ToArrayää‘ €
(ää€ ‹
)ää‹ ›
)ää› ﬁ
,ääﬁ ﬂ
assembly
ãã 
.
ãã 
compilerOptions
ãã (
.
ãã( )
AllowUnsafeCode
ãã) 8
|
ãã9 :
responseFilesData
ãã; L
.
ããL M
Any
ããM P
(
ããP Q
x
ããQ R
=>
ããS U
x
ããV W
.
ããW X
Unsafe
ããX ^
)
ãã^ _
,
ãã_ `'
GenerateAnalyserItemGroup
åå )
(
åå) *
otherArguments
åå* 8
[
åå8 9
$str
åå9 C
]
ååC D
.
ååD E
Concat
ååE K
(
ååK L
otherArguments
ååL Z
[
ååZ [
$str
åå[ ^
]
åå^ _
)
åå_ `
.
çç 

SelectMany
çç 
(
çç  
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
Split
çç' ,
(
çç, -
$char
çç- 0
)
çç0 1
)
çç1 2
.
éé 
Concat
éé 
(
éé $
roslynAnalyzerDllPaths
éé 2
)
éé2 3
.
èè 
Distinct
èè 
(
èè 
)
èè 
.
êê 
ToArray
êê 
(
êê 
)
êê 
)
êê 
)
êê  
;
êê  !
}
ëë 	
private
ìì 
static
ìì 
ILookup
ìì 
<
ìì 
string
ìì %
,
ìì% &
string
ìì' -
>
ìì- .4
&GetOtherArgumentsFromResponseFilesData
ìì/ U
(
ììU V
List
ììV Z
<
ììZ [
ResponseFileData
ìì[ k
>
ììk l
responseFilesData
ììm ~
)
ìì~ 
{
îî 	
var
ïï 
paths
ïï 
=
ïï 
responseFilesData
ïï )
.
ïï) *

SelectMany
ïï* 4
(
ïï4 5
x
ïï5 6
=>
ïï7 9
{
ññ 
return
óó 
x
óó 
.
óó 
OtherArguments
óó +
.
óó+ ,
Where
óó, 1
(
óó1 2
a
óó2 3
=>
óó4 6
a
óó7 8
.
óó8 9

StartsWith
óó9 C
(
óóC D
$str
óóD G
)
óóG H
||
óóI K
a
óóL M
.
óóM N

StartsWith
óóN X
(
óóX Y
$str
óóY \
)
óó\ ]
)
óó] ^
.
òò+ ,
Select
òò, 2
(
òò2 3
b
òò3 4
=>
òò5 7
{
ôô 
var
öö 
index
öö !
=
öö" #
b
öö$ %
.
öö% &
IndexOf
öö& -
(
öö- .
$str
öö. 1
,
öö1 2
StringComparison
öö3 C
.
ööC D
Ordinal
ööD K
)
ööK L
;
ööL M
if
õõ 
(
õõ 
index
õõ !
>
õõ" #
$num
õõ$ %
&&
õõ& (
b
õõ) *
.
õõ* +
Length
õõ+ 1
>
õõ2 3
index
õõ4 9
)
õõ9 :
{
úú 
var
ùù 
key
ùù  #
=
ùù$ %
b
ùù& '
.
ùù' (
	Substring
ùù( 1
(
ùù1 2
$num
ùù2 3
,
ùù3 4
index
ùù5 :
-
ùù; <
$num
ùù= >
)
ùù> ?
;
ùù? @
return
ûû "
new
ûû# &
KeyValuePair
ûû' 3
<
ûû3 4
string
ûû4 :
,
ûû: ;
string
ûû< B
>
ûûB C
(
ûûC D
key
ûûD G
,
ûûG H
b
ûûI J
.
ûûJ K
	Substring
ûûK T
(
ûûT U
index
ûûU Z
+
ûû[ \
$num
ûû] ^
)
ûû^ _
)
ûû_ `
;
ûû` a
}
üü 
const
°° 
string
°° $
warnaserror
°°% 0
=
°°1 2
$str
°°3 @
;
°°@ A
if
¢¢ 
(
¢¢ 
b
¢¢ 
.
¢¢ 
	Substring
¢¢ '
(
¢¢' (
$num
¢¢( )
)
¢¢) *
.
¢¢* +

StartsWith
¢¢+ 5
(
¢¢5 6
warnaserror
¢¢6 A
)
¢¢A B
)
¢¢B C
{
££ 
return
§§ "
new
§§# &
KeyValuePair
§§' 3
<
§§3 4
string
§§4 :
,
§§: ;
string
§§< B
>
§§B C
(
§§C D
warnaserror
§§D O
,
§§O P
b
§§Q R
.
§§R S
	Substring
§§S \
(
§§\ ]
warnaserror
§§] h
.
§§h i
Length
§§i o
+
§§p q
$num
§§r s
)
§§s t
)
§§t u
;
§§u v
}
•• 
return
ßß 
default
ßß &
;
ßß& '
}
®® 
)
®® 
;
®® 
}
©© 
)
©© 
.
™™ 
Distinct
™™ 
(
™™ 
)
™™ 
.
´´ 
ToLookup
´´ 
(
´´ 
o
´´ 
=>
´´ 
o
´´ 
.
´´ 
Key
´´ "
,
´´" #
pair
´´$ (
=>
´´) +
pair
´´, 0
.
´´0 1
Value
´´1 6
)
´´6 7
;
´´7 8
return
¨¨ 
paths
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
static
ØØ 
string
ØØ '
GenerateAnalyserItemGroup
ØØ 7
(
ØØ7 8
string
ØØ8 >
[
ØØ> ?
]
ØØ? @
paths
ØØA F
)
ØØF G
{
∞∞ 	
if
µµ 
(
µµ 
!
µµ 
paths
µµ 
.
µµ 
Any
µµ 
(
µµ 
)
µµ 
)
µµ 
return
∂∂ 
string
∂∂ 
.
∂∂ 
Empty
∂∂ #
;
∂∂# $
var
∏∏ 
analyserBuilder
∏∏ 
=
∏∏  !
new
∏∏" %
StringBuilder
∏∏& 3
(
∏∏3 4
)
∏∏4 5
;
∏∏5 6
analyserBuilder
ππ 
.
ππ 
Append
ππ "
(
ππ" #
$str
ππ# 2
)
ππ2 3
.
ππ3 4
Append
ππ4 :
(
ππ: ;
k_WindowsNewline
ππ; K
)
ππK L
;
ππL M
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
path
∫∫ 
in
∫∫  
paths
∫∫! &
)
∫∫& '
{
ªª 
analyserBuilder
ºº 
.
ºº  
Append
ºº  &
(
ºº& '
$"
ºº' )&
    <Analyzer Include=\"
ºº) A
{
ººA B
path
ººB F
}
ººF G
\" />
ººG L
"
ººL M
)
ººM N
.
ººN O
Append
ººO U
(
ººU V
k_WindowsNewline
ººV f
)
ººf g
;
ººg h
}
ΩΩ 
analyserBuilder
ææ 
.
ææ 
Append
ææ "
(
ææ" #
$str
ææ# 3
)
ææ3 4
.
ææ4 5
Append
ææ5 ;
(
ææ; <
k_WindowsNewline
ææ< L
)
ææL M
;
ææM N
return
øø 
analyserBuilder
øø "
.
øø" #
ToString
øø# +
(
øø+ ,
)
øø, -
;
øø- .
}
¿¿ 	
static
¬¬ 
string
¬¬ 
GetSolutionText
¬¬ %
(
¬¬% &
)
¬¬& '
{
√√ 	
return
ƒƒ 
string
ƒƒ 
.
ƒƒ 
Join
ƒƒ 
(
ƒƒ 
$str
ƒƒ %
,
ƒƒ% &
$str
ƒƒ' *
,
ƒƒ* +
$str
ƒƒ, h
,
ƒƒh i
$strƒƒj Ä
,ƒƒÄ Å
$strƒƒÇ à
,ƒƒà â
$strƒƒä ì
,ƒƒì î
$strƒƒï ◊
,ƒƒ◊ ÿ
$strƒƒŸ Å
,ƒƒÅ Ç
$strƒƒÉ ö
,ƒƒö õ
$strƒƒú ﬁ
,ƒƒﬁ ﬂ
$strƒƒ‡ Ê
,ƒƒÊ Á
$strƒƒË ˇ
,ƒƒˇ Ä
$strƒƒÅ ∑
,ƒƒ∑ ∏
$strƒƒπ ‹
,ƒƒ‹ ›
$strƒƒﬁ ı
,ƒƒı ˆ
$strƒƒ˜ É
,ƒƒÉ Ñ
$strƒƒÖ à
)ƒƒà â
.ƒƒâ ä
Replaceƒƒä ë
(ƒƒë í
$strƒƒí ò
,ƒƒò ô
$strƒƒö û
)ƒƒû ü
;ƒƒü †
}
≈≈ 	
static
«« 
string
«« &
GetProjectFooterTemplate
«« .
(
««. /
)
««/ 0
{
»» 	
return
…… 
string
…… 
.
…… 
Join
…… 
(
…… 
$str
…… %
,
……% &
$str
……' 8
,
……8 9
$str……: Ç
,……Ç É
$str……Ñ Î
,……Î Ï
$str……Ì ∫
,……∫ ª
$str……º ﬁ
,……ﬁ ﬂ
$str……‡ Ó
,……Ó Ô
$str…… ë
,……ë í
$str……ì °
,……° ¢
$str……£ ´
,……´ ¨
$str……≠ ∫
,……∫ ª
$str……º ø
)……ø ¿
;……¿ ¡
}
   	
static
ÃÃ 
void
ÃÃ &
GetProjectHeaderTemplate
ÃÃ ,
(
ÃÃ, -
StringBuilder
ÕÕ 
builder
ÕÕ !
,
ÕÕ! "
string
ŒŒ 
assemblyGUID
ŒŒ 
,
ŒŒ  
string
œœ 
assemblyName
œœ 
,
œœ  
string
–– 
defines
–– 
,
–– 
bool
—— 
allowUnsafe
—— 
,
—— 
string
““ 
analyzerBlock
““  
)
”” 	
{
‘‘ 	
builder
’’ 
.
’’ 
Append
’’ 
(
’’ 
$str
’’ H
)
’’H I
.
’’I J
Append
’’J P
(
’’P Q
k_WindowsNewline
’’Q a
)
’’a b
;
’’b c
builder
÷÷ 
.
÷÷ 
Append
÷÷ 
(
÷÷ 
$str
÷÷ 6
)
÷÷6 7
.
÷÷7 8
Append
÷÷8 >
(
÷÷> ?
k_ToolsVersion
÷÷? M
)
÷÷M N
.
÷÷N O
Append
÷÷O U
(
÷÷U V
$str
÷÷V }
)
÷÷} ~
.
÷÷~ 
Append÷÷ Ö
(÷÷Ö Ü#
MSBuildNamespaceUri÷÷Ü ô
)÷÷ô ö
.÷÷ö õ
Append÷÷õ °
(÷÷° ¢
$str÷÷¢ ®
)÷÷® ©
.÷÷© ™
Append÷÷™ ∞
(÷÷∞ ± 
k_WindowsNewline÷÷± ¡
)÷÷¡ ¬
;÷÷¬ √
builder
◊◊ 
.
◊◊ 
Append
◊◊ 
(
◊◊ 
$str
◊◊ /
)
◊◊/ 0
.
◊◊0 1
Append
◊◊1 7
(
◊◊7 8
k_WindowsNewline
◊◊8 H
)
◊◊H I
;
◊◊I J
builder
ÿÿ 
.
ÿÿ 
Append
ÿÿ 
(
ÿÿ 
$str
ÿÿ /
)
ÿÿ/ 0
.
ÿÿ0 1
Append
ÿÿ1 7
(
ÿÿ7 8%
k_TargetLanguageVersion
ÿÿ8 O
)
ÿÿO P
.
ÿÿP Q
Append
ÿÿQ W
(
ÿÿW X
$str
ÿÿX h
)
ÿÿh i
.
ÿÿi j
Append
ÿÿj p
(
ÿÿp q
k_WindowsNewlineÿÿq Å
)ÿÿÅ Ç
;ÿÿÇ É
builder
ŸŸ 
.
ŸŸ 
Append
ŸŸ 
(
ŸŸ 
$str
ŸŸ 0
)
ŸŸ0 1
.
ŸŸ1 2
Append
ŸŸ2 8
(
ŸŸ8 9
k_WindowsNewline
ŸŸ9 I
)
ŸŸI J
;
ŸŸJ K
builder
⁄⁄ 
.
⁄⁄ 
Append
⁄⁄ 
(
⁄⁄ 
$str
⁄⁄ /
)
⁄⁄/ 0
.
⁄⁄0 1
Append
⁄⁄1 7
(
⁄⁄7 8
k_WindowsNewline
⁄⁄8 H
)
⁄⁄H I
;
⁄⁄I J
builder
€€ 
.
€€ 
Append
€€ 
(
€€ 
$str
€€ o
)
€€o p
.
€€p q
Append
€€q w
(
€€w x
k_WindowsNewline€€x à
)€€à â
;€€â ä
builder
‹‹ 
.
‹‹ 
Append
‹‹ 
(
‹‹ 
$str
‹‹ a
)
‹‹a b
.
‹‹b c
Append
‹‹c i
(
‹‹i j
k_WindowsNewline
‹‹j z
)
‹‹z {
;
‹‹{ |
builder
›› 
.
›› 
Append
›› 
(
›› 
$str
›› 2
)
››2 3
.
››3 4
Append
››4 :
(
››: ;
k_ProductVersion
››; K
)
››K L
.
››L M
Append
››M S
(
››S T
$str
››T g
)
››g h
.
››h i
Append
››i o
(
››o p
k_WindowsNewline››p Ä
)››Ä Å
;››Å Ç
builder
ﬁﬁ 
.
ﬁﬁ 
Append
ﬁﬁ 
(
ﬁﬁ 
$str
ﬁﬁ D
)
ﬁﬁD E
.
ﬁﬁE F
Append
ﬁﬁF L
(
ﬁﬁL M
k_WindowsNewline
ﬁﬁM ]
)
ﬁﬁ] ^
;
ﬁﬁ^ _
builder
ﬂﬂ 
.
ﬂﬂ 
Append
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ 1
)
ﬂﬂ1 2
.
ﬂﬂ2 3
Append
ﬂﬂ3 9
(
ﬂﬂ9 :
EditorSettings
ﬂﬂ: H
.
ﬂﬂH I,
projectGenerationRootNamespace
ﬂﬂI g
)
ﬂﬂg h
.
ﬂﬂh i
Append
ﬂﬂi o
(
ﬂﬂo p
$strﬂﬂp Ç
)ﬂﬂÇ É
.ﬂﬂÉ Ñ
AppendﬂﬂÑ ä
(ﬂﬂä ã 
k_WindowsNewlineﬂﬂã õ
)ﬂﬂõ ú
;ﬂﬂú ù
builder
‡‡ 
.
‡‡ 
Append
‡‡ 
(
‡‡ 
$str
‡‡ 0
)
‡‡0 1
.
‡‡1 2
Append
‡‡2 8
(
‡‡8 9
assemblyGUID
‡‡9 E
)
‡‡E F
.
‡‡F G
Append
‡‡G M
(
‡‡M N
$str
‡‡N _
)
‡‡_ `
.
‡‡` a
Append
‡‡a g
(
‡‡g h
k_WindowsNewline
‡‡h x
)
‡‡x y
;
‡‡y z
builder
·· 
.
·· 
Append
·· 
(
·· 
$str
·· B
)
··B C
.
··C D
Append
··D J
(
··J K
k_WindowsNewline
··K [
)
··[ \
;
··\ ]
builder
‚‚ 
.
‚‚ 
Append
‚‚ 
(
‚‚ 
$str
‚‚ S
)
‚‚S T
.
‚‚T U
Append
‚‚U [
(
‚‚[ \
k_WindowsNewline
‚‚\ l
)
‚‚l m
;
‚‚m n
builder
„„ 
.
„„ 
Append
„„ 
(
„„ 
$str
„„ 0
)
„„0 1
.
„„1 2
Append
„„2 8
(
„„8 9
assemblyName
„„9 E
)
„„E F
.
„„F G
Append
„„G M
(
„„M N
$str
„„N _
)
„„_ `
.
„„` a
Append
„„a g
(
„„g h
k_WindowsNewline
„„h x
)
„„x y
;
„„y z
builder
‰‰ 
.
‰‰ 
Append
‰‰ 
(
‰‰ 
$str
‰‰ :
)
‰‰: ;
.
‰‰; <
Append
‰‰< B
(
‰‰B C&
k_TargetFrameworkVersion
‰‰C [
)
‰‰[ \
.
‰‰\ ]
Append
‰‰] c
(
‰‰c d
$str
‰‰d 
)‰‰ Ä
.‰‰Ä Å
Append‰‰Å á
(‰‰á à 
k_WindowsNewline‰‰à ò
)‰‰ò ô
;‰‰ô ö
builder
ÂÂ 
.
ÂÂ 
Append
ÂÂ 
(
ÂÂ 
$str
ÂÂ D
)
ÂÂD E
.
ÂÂE F
Append
ÂÂF L
(
ÂÂL M
k_WindowsNewline
ÂÂM ]
)
ÂÂ] ^
;
ÂÂ^ _
builder
ÊÊ 
.
ÊÊ 
Append
ÊÊ 
(
ÊÊ 
$str
ÊÊ 1
)
ÊÊ1 2
.
ÊÊ2 3
Append
ÊÊ3 9
(
ÊÊ9 :
k_BaseDirectory
ÊÊ: I
)
ÊÊI J
.
ÊÊJ K
Append
ÊÊK Q
(
ÊÊQ R
$str
ÊÊR d
)
ÊÊd e
.
ÊÊe f
Append
ÊÊf l
(
ÊÊl m
k_WindowsNewline
ÊÊm }
)
ÊÊ} ~
;
ÊÊ~ 
builder
ÁÁ 
.
ÁÁ 
Append
ÁÁ 
(
ÁÁ 
$str
ÁÁ 0
)
ÁÁ0 1
.
ÁÁ1 2
Append
ÁÁ2 8
(
ÁÁ8 9
k_WindowsNewline
ÁÁ9 I
)
ÁÁI J
;
ÁÁJ K
builder
ËË 
.
ËË 
Append
ËË 
(
ËË 
$str
ËË p
)
ËËp q
.
ËËq r
Append
ËËr x
(
ËËx y
k_WindowsNewlineËËy â
)ËËâ ä
;ËËä ã
builder
ÈÈ 
.
ÈÈ 
Append
ÈÈ 
(
ÈÈ 
$str
ÈÈ C
)
ÈÈC D
.
ÈÈD E
Append
ÈÈE K
(
ÈÈK L
k_WindowsNewline
ÈÈL \
)
ÈÈ\ ]
;
ÈÈ] ^
builder
ÍÍ 
.
ÍÍ 
Append
ÍÍ 
(
ÍÍ 
$str
ÍÍ =
)
ÍÍ= >
.
ÍÍ> ?
Append
ÍÍ? E
(
ÍÍE F
k_WindowsNewline
ÍÍF V
)
ÍÍV W
;
ÍÍW X
builder
ÎÎ 
.
ÎÎ 
Append
ÎÎ 
(
ÎÎ 
$str
ÎÎ <
)
ÎÎ< =
.
ÎÎ= >
Append
ÎÎ> D
(
ÎÎD E
k_WindowsNewline
ÎÎE U
)
ÎÎU V
;
ÎÎV W
builder
ÏÏ 
.
ÏÏ 
Append
ÏÏ 
(
ÏÏ 
$str
ÏÏ J
)
ÏÏJ K
.
ÏÏK L
Append
ÏÏL R
(
ÏÏR S
k_WindowsNewline
ÏÏS c
)
ÏÏc d
;
ÏÏd e
builder
ÌÌ 
.
ÌÌ 
Append
ÌÌ 
(
ÌÌ 
$str
ÌÌ 3
)
ÌÌ3 4
.
ÌÌ4 5
Append
ÌÌ5 ;
(
ÌÌ; <
defines
ÌÌ< C
)
ÌÌC D
.
ÌÌD E
Append
ÌÌE K
(
ÌÌK L
$str
ÌÌL `
)
ÌÌ` a
.
ÌÌa b
Append
ÌÌb h
(
ÌÌh i
k_WindowsNewline
ÌÌi y
)
ÌÌy z
;
ÌÌz {
builder
ÓÓ 
.
ÓÓ 
Append
ÓÓ 
(
ÓÓ 
$str
ÓÓ C
)
ÓÓC D
.
ÓÓD E
Append
ÓÓE K
(
ÓÓK L
k_WindowsNewline
ÓÓL \
)
ÓÓ\ ]
;
ÓÓ] ^
builder
ÔÔ 
.
ÔÔ 
Append
ÔÔ 
(
ÔÔ 
$str
ÔÔ @
)
ÔÔ@ A
.
ÔÔA B
Append
ÔÔB H
(
ÔÔH I
k_WindowsNewline
ÔÔI Y
)
ÔÔY Z
;
ÔÔZ [
builder
 
.
 
Append
 
(
 
$str
 7
)
7 8
.
8 9
Append
9 ?
(
? @
k_WindowsNewline
@ P
)
P Q
;
Q R
builder
ÒÒ 
.
ÒÒ 
Append
ÒÒ 
(
ÒÒ 
$str
ÒÒ 5
)
ÒÒ5 6
.
ÒÒ6 7
Append
ÒÒ7 =
(
ÒÒ= >
allowUnsafe
ÒÒ> I
)
ÒÒI J
.
ÒÒJ K
Append
ÒÒK Q
(
ÒÒQ R
$str
ÒÒR h
)
ÒÒh i
.
ÒÒi j
Append
ÒÒj p
(
ÒÒp q
k_WindowsNewlineÒÒq Å
)ÒÒÅ Ç
;ÒÒÇ É
builder
ÚÚ 
.
ÚÚ 
Append
ÚÚ 
(
ÚÚ 
$str
ÚÚ 0
)
ÚÚ0 1
.
ÚÚ1 2
Append
ÚÚ2 8
(
ÚÚ8 9
k_WindowsNewline
ÚÚ9 I
)
ÚÚI J
;
ÚÚJ K
builder
ÛÛ 
.
ÛÛ 
Append
ÛÛ 
(
ÛÛ 
$str
ÛÛ /
)
ÛÛ/ 0
.
ÛÛ0 1
Append
ÛÛ1 7
(
ÛÛ7 8
k_WindowsNewline
ÛÛ8 H
)
ÛÛH I
;
ÛÛI J
builder
ÙÙ 
.
ÙÙ 
Append
ÙÙ 
(
ÙÙ 
$str
ÙÙ ;
)
ÙÙ; <
.
ÙÙ< =
Append
ÙÙ= C
(
ÙÙC D
k_WindowsNewline
ÙÙD T
)
ÙÙT U
;
ÙÙU V
builder
ıı 
.
ıı 
Append
ıı 
(
ıı 
$str
ıı ;
)
ıı; <
.
ıı< =
Append
ıı= C
(
ııC D
k_WindowsNewline
ııD T
)
ııT U
;
ııU V
builder
ˆˆ 
.
ˆˆ 
Append
ˆˆ 
(
ˆˆ 
$str
ˆˆ z
)
ˆˆz {
.
ˆˆ{ |
Appendˆˆ| Ç
(ˆˆÇ É 
k_WindowsNewlineˆˆÉ ì
)ˆˆì î
;ˆˆî ï
builder
˜˜ 
.
˜˜ 
Append
˜˜ 
(
˜˜ 
$str
˜˜ p
)
˜˜p q
.
˜˜q r
Append
˜˜r x
(
˜˜x y
k_WindowsNewline˜˜y â
)˜˜â ä
;˜˜ä ã
builder
¯¯ 
.
¯¯ 
Append
¯¯ 
(
¯¯ 
$str
¯¯ n
)
¯¯n o
.
¯¯o p
Append
¯¯p v
(
¯¯v w
k_WindowsNewline¯¯w á
)¯¯á à
;¯¯à â
builder
˘˘ 
.
˘˘ 
Append
˘˘ 
(
˘˘ 
$str
˘˘ 0
)
˘˘0 1
.
˘˘1 2
Append
˘˘2 8
(
˘˘8 9
k_WindowsNewline
˘˘9 I
)
˘˘I J
;
˘˘J K
builder
˙˙ 
.
˙˙ 
Append
˙˙ 
(
˙˙ 
analyzerBlock
˙˙ (
)
˙˙( )
;
˙˙) *
builder
˚˚ 
.
˚˚ 
Append
˚˚ 
(
˚˚ 
$str
˚˚ +
)
˚˚+ ,
.
˚˚, -
Append
˚˚- 3
(
˚˚3 4
k_WindowsNewline
˚˚4 D
)
˚˚D E
;
˚˚E F
}
¸¸ 	
void
˛˛ 
SyncSolution
˛˛ 
(
˛˛ 
IEnumerable
˛˛ %
<
˛˛% &
Assembly
˛˛& .
>
˛˛. /

assemblies
˛˛0 :
)
˛˛: ;
{
ˇˇ 	*
SyncSolutionFileIfNotChanged
ÄÄ (
(
ÄÄ( )
SolutionFile
ÄÄ) 5
(
ÄÄ5 6
)
ÄÄ6 7
,
ÄÄ7 8
SolutionText
ÄÄ9 E
(
ÄÄE F

assemblies
ÄÄF P
)
ÄÄP Q
)
ÄÄQ R
;
ÄÄR S
}
ÅÅ 	
string
ÉÉ 
SolutionText
ÉÉ 
(
ÉÉ 
IEnumerable
ÉÉ '
<
ÉÉ' (
Assembly
ÉÉ( 0
>
ÉÉ0 1

assemblies
ÉÉ2 <
)
ÉÉ< =
{
ÑÑ 	
var
ÖÖ 
fileversion
ÖÖ 
=
ÖÖ 
$str
ÖÖ %
;
ÖÖ% &
var
ÜÜ 
	vsversion
ÜÜ 
=
ÜÜ 
$str
ÜÜ "
;
ÜÜ" #
var
àà  
relevantAssemblies
àà "
=
àà# $'
RelevantAssembliesForMode
àà% >
(
àà> ?

assemblies
àà? I
)
ààI J
;
ààJ K
string
ââ 
projectEntries
ââ !
=
ââ" #
GetProjectEntries
ââ$ 5
(
ââ5 6 
relevantAssemblies
ââ6 H
)
ââH I
;
ââI J
string
ää #
projectConfigurations
ää (
=
ää) *
string
ää+ 1
.
ää1 2
Join
ää2 6
(
ää6 7
k_WindowsNewline
ää7 G
,
ääG H 
relevantAssemblies
ääI [
.
ää[ \
Select
ää\ b
(
ääb c
i
ääc d
=>
ääe g-
GetProjectActiveConfigurationsääh Ü
(ääÜ á
ProjectGuidääá í
(ääí ì
iääì î
.ääî ï
nameääï ô
)ääô ö
)ääö õ
)ääõ ú
.ääú ù
ToArrayääù §
(ää§ •
)ää• ¶
)ää¶ ß
;ääß ®
return
ãã 
string
ãã 
.
ãã 
Format
ãã  
(
ãã  !
GetSolutionText
ãã! 0
(
ãã0 1
)
ãã1 2
,
ãã2 3
fileversion
ãã4 ?
,
ãã? @
	vsversion
ããA J
,
ããJ K
projectEntries
ããL Z
,
ããZ [#
projectConfigurations
ãã\ q
)
ããq r
;
ããr s
}
åå 	
static
éé 
IEnumerable
éé 
<
éé 
Assembly
éé #
>
éé# $'
RelevantAssembliesForMode
éé% >
(
éé> ?
IEnumerable
éé? J
<
ééJ K
Assembly
ééK S
>
ééS T

assemblies
ééU _
)
éé_ `
{
èè 	
return
êê 

assemblies
êê 
.
êê 
Where
êê #
(
êê# $
i
êê$ %
=>
êê& (
ScriptingLanguage
êê) :
.
êê: ;
CSharp
êê; A
==
êêB D"
ScriptingLanguageFor
êêE Y
(
êêY Z
i
êêZ [
)
êê[ \
)
êê\ ]
;
êê] ^
}
ëë 	
string
óó 
GetProjectEntries
óó  
(
óó  !
IEnumerable
óó! ,
<
óó, -
Assembly
óó- 5
>
óó5 6

assemblies
óó7 A
)
óóA B
{
òò 	
var
ôô 
projectEntries
ôô 
=
ôô  

assemblies
ôô! +
.
ôô+ ,
Select
ôô, 2
(
ôô2 3
i
ôô3 4
=>
ôô5 7
string
ôô8 >
.
ôô> ?
Format
ôô? E
(
ôôE F,
m_SolutionProjectEntryTemplate
öö .
,
öö. /
SolutionGuid
õõ 
(
õõ 
i
õõ 
)
õõ 
,
õõ  
i
úú 
.
úú 
name
úú 
,
úú 
Path
ùù 
.
ùù 
GetFileName
ùù  
(
ùù  !
ProjectFile
ùù! ,
(
ùù, -
i
ùù- .
)
ùù. /
)
ùù/ 0
,
ùù0 1
ProjectGuid
ûû 
(
ûû 
i
ûû 
.
ûû 
name
ûû "
)
ûû" #
)
üü 
)
üü 
;
üü 
return
°° 
string
°° 
.
°° 
Join
°° 
(
°° 
k_WindowsNewline
°° /
,
°°/ 0
projectEntries
°°1 ?
.
°°? @
ToArray
°°@ G
(
°°G H
)
°°H I
)
°°I J
;
°°J K
}
¢¢ 	
string
ßß ,
GetProjectActiveConfigurations
ßß -
(
ßß- .
string
ßß. 4
projectGuid
ßß5 @
)
ßß@ A
{
®® 	
return
©© 
string
©© 
.
©© 
Format
©©  
(
©©  !4
&m_SolutionProjectConfigurationTemplate
™™ 6
,
™™6 7
projectGuid
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
string
ÆÆ $
EscapedRelativePathFor
ÆÆ %
(
ÆÆ% &
string
ÆÆ& ,
file
ÆÆ- 1
)
ÆÆ1 2
{
ØØ 	
var
∞∞ 

projectDir
∞∞ 
=
∞∞ 
ProjectDirectory
∞∞ -
.
∞∞- .
Replace
∞∞. 5
(
∞∞5 6
$char
∞∞6 9
,
∞∞9 :
$char
∞∞; ?
)
∞∞? @
;
∞∞@ A
file
±± 
=
±± 
file
±± 
.
±± 
Replace
±± 
(
±±  
$char
±±  #
,
±±# $
$char
±±% )
)
±±) *
;
±±* +
var
≤≤ 
path
≤≤ 
=
≤≤ 
SkipPathPrefix
≤≤ %
(
≤≤% &
file
≤≤& *
,
≤≤* +

projectDir
≤≤, 6
)
≤≤6 7
;
≤≤7 8
var
¥¥ 
packageInfo
¥¥ 
=
¥¥ $
m_AssemblyNameProvider
¥¥ 4
.
¥¥4 5
FindForAssetPath
¥¥5 E
(
¥¥E F
path
¥¥F J
.
¥¥J K
Replace
¥¥K R
(
¥¥R S
$char
¥¥S W
,
¥¥W X
$char
¥¥Y \
)
¥¥\ ]
)
¥¥] ^
;
¥¥^ _
if
µµ 
(
µµ 
packageInfo
µµ 
!=
µµ 
null
µµ #
)
µµ# $
{
∂∂ 
var
ππ 
absolutePath
ππ  
=
ππ! "
Path
ππ# '
.
ππ' (
GetFullPath
ππ( 3
(
ππ3 4
NormalizePath
ππ4 A
(
ππA B
path
ππB F
)
ππF G
)
ππG H
.
ππH I
Replace
ππI P
(
ππP Q
$char
ππQ T
,
ππT U
$char
ππV Z
)
ππZ [
;
ππ[ \
path
∫∫ 
=
∫∫ 
SkipPathPrefix
∫∫ %
(
∫∫% &
absolutePath
∫∫& 2
,
∫∫2 3

projectDir
∫∫4 >
)
∫∫> ?
;
∫∫? @
}
ªª 
return
ΩΩ 
SecurityElement
ΩΩ "
.
ΩΩ" #
Escape
ΩΩ# )
(
ΩΩ) *
path
ΩΩ* .
)
ΩΩ. /
;
ΩΩ/ 0
}
ææ 	
static
¿¿ 
string
¿¿ 
SkipPathPrefix
¿¿ $
(
¿¿$ %
string
¿¿% +
path
¿¿, 0
,
¿¿0 1
string
¿¿2 8
prefix
¿¿9 ?
)
¿¿? @
{
¡¡ 	
if
¬¬ 
(
¬¬ 
path
¬¬ 
.
¬¬ 

StartsWith
¬¬ 
(
¬¬  
$@"
¬¬  #
{
¬¬# $
prefix
¬¬$ *
}
¬¬* +
\
¬¬+ ,
"
¬¬, -
)
¬¬- .
)
¬¬. /
return
√√ 
path
√√ 
.
√√ 
	Substring
√√ %
(
√√% &
prefix
√√& ,
.
√√, -
Length
√√- 3
+
√√4 5
$num
√√6 7
)
√√7 8
;
√√8 9
return
ƒƒ 
path
ƒƒ 
;
ƒƒ 
}
≈≈ 	
static
«« 
string
«« 
NormalizePath
«« #
(
««# $
string
««$ *
path
««+ /
)
««/ 0
{
»» 	
if
…… 
(
…… 
Path
…… 
.
…… $
DirectorySeparatorChar
…… +
==
……, .
$char
……/ 3
)
……3 4
return
   
path
   
.
   
Replace
   #
(
  # $
$char
  $ '
,
  ' (
Path
  ) -
.
  - .$
DirectorySeparatorChar
  . D
)
  D E
;
  E F
return
ÀÀ 
path
ÀÀ 
.
ÀÀ 
Replace
ÀÀ 
(
ÀÀ  
$char
ÀÀ  $
,
ÀÀ$ %
Path
ÀÀ& *
.
ÀÀ* +$
DirectorySeparatorChar
ÀÀ+ A
)
ÀÀA B
;
ÀÀB C
}
ÃÃ 	
string
ŒŒ 
ProjectGuid
ŒŒ 
(
ŒŒ 
string
ŒŒ !
assembly
ŒŒ" *
)
ŒŒ* +
{
œœ 	
return
–– 
m_GUIDProvider
–– !
.
––! "
ProjectGuid
––" -
(
––- .
m_ProjectName
––. ;
,
––; <
assembly
––= E
)
––E F
;
––F G
}
—— 	
string
”” 
SolutionGuid
”” 
(
”” 
Assembly
”” $
assembly
””% -
)
””- .
{
‘‘ 	
return
’’ 
m_GUIDProvider
’’ !
.
’’! "
SolutionGuid
’’" .
(
’’. /
m_ProjectName
’’/ <
,
’’< ='
GetExtensionOfSourceFiles
’’> W
(
’’W X
assembly
’’X `
.
’’` a
sourceFiles
’’a l
)
’’l m
)
’’m n
;
’’n o
}
÷÷ 	
static
ÿÿ 
string
ÿÿ 
ProjectFooter
ÿÿ #
(
ÿÿ# $
)
ÿÿ$ %
{
ŸŸ 	
return
⁄⁄ &
GetProjectFooterTemplate
⁄⁄ +
(
⁄⁄+ ,
)
⁄⁄, -
;
⁄⁄- .
}
€€ 	
static
›› 
string
›› !
GetProjectExtension
›› )
(
››) *
)
››* +
{
ﬁﬁ 	
return
ﬂﬂ 
$str
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
void
‚‚ &
WriteVSCodeSettingsFiles
‚‚ %
(
‚‚% &
)
‚‚& '
{
„„ 	
var
‰‰ 
vsCodeDirectory
‰‰ 
=
‰‰  !
Path
‰‰" &
.
‰‰& '
Combine
‰‰' .
(
‰‰. /
ProjectDirectory
‰‰/ ?
,
‰‰? @
$str
‰‰A J
)
‰‰J K
;
‰‰K L
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
m_FileIOProvider
ÊÊ !
.
ÊÊ! "
Exists
ÊÊ" (
(
ÊÊ( )
vsCodeDirectory
ÊÊ) 8
)
ÊÊ8 9
)
ÊÊ9 :
m_FileIOProvider
ÁÁ  
.
ÁÁ  !
CreateDirectory
ÁÁ! 0
(
ÁÁ0 1
vsCodeDirectory
ÁÁ1 @
)
ÁÁ@ A
;
ÁÁA B
var
ÈÈ  
vsCodeSettingsJson
ÈÈ "
=
ÈÈ# $
Path
ÈÈ% )
.
ÈÈ) *
Combine
ÈÈ* 1
(
ÈÈ1 2
vsCodeDirectory
ÈÈ2 A
,
ÈÈA B
$str
ÈÈC R
)
ÈÈR S
;
ÈÈS T
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
m_FileIOProvider
ÎÎ !
.
ÎÎ! "
Exists
ÎÎ" (
(
ÎÎ( ) 
vsCodeSettingsJson
ÎÎ) ;
)
ÎÎ; <
)
ÎÎ< =
m_FileIOProvider
ÏÏ  
.
ÏÏ  !
WriteAllText
ÏÏ! -
(
ÏÏ- . 
vsCodeSettingsJson
ÏÏ. @
,
ÏÏ@ A
k_SettingsJson
ÏÏB P
)
ÏÏP Q
;
ÏÏQ R
}
ÌÌ 	
}
ÓÓ 
public
 

static
 
class
 #
SolutionGuidGenerator
 -
{
ÒÒ 
static
ÚÚ 
MD5
ÚÚ 
mD5
ÚÚ 
=
ÚÚ &
MD5CryptoServiceProvider
ÚÚ 1
.
ÚÚ1 2
Create
ÚÚ2 8
(
ÚÚ8 9
)
ÚÚ9 :
;
ÚÚ: ;
public
ÙÙ 
static
ÙÙ 
string
ÙÙ 
GuidForProject
ÙÙ +
(
ÙÙ+ ,
string
ÙÙ, 2
projectName
ÙÙ3 >
)
ÙÙ> ?
{
ıı 	
return
ˆˆ  
ComputeGuidHashFor
ˆˆ %
(
ˆˆ% &
projectName
ˆˆ& 1
+
ˆˆ2 3
$str
ˆˆ4 :
)
ˆˆ: ;
;
ˆˆ; <
}
˜˜ 	
public
˘˘ 
static
˘˘ 
string
˘˘ 
GuidForSolution
˘˘ ,
(
˘˘, -
string
˘˘- 3
projectName
˘˘4 ?
,
˘˘? @
string
˘˘A G!
sourceFileExtension
˘˘H [
)
˘˘[ \
{
˙˙ 	
if
˚˚ 
(
˚˚ !
sourceFileExtension
˚˚ #
.
˚˚# $
ToLower
˚˚$ +
(
˚˚+ ,
)
˚˚, -
==
˚˚. 0
$str
˚˚1 5
)
˚˚5 6
return
˛˛ 
$str
˛˛ =
;
˛˛= >
return
ÄÄ  
ComputeGuidHashFor
ÄÄ %
(
ÄÄ% &
projectName
ÄÄ& 1
)
ÄÄ1 2
;
ÄÄ2 3
}
ÅÅ 	
static
ÉÉ 
string
ÉÉ  
ComputeGuidHashFor
ÉÉ (
(
ÉÉ( )
string
ÉÉ) /
input
ÉÉ0 5
)
ÉÉ5 6
{
ÑÑ 	
var
ÖÖ 
hash
ÖÖ 
=
ÖÖ 
mD5
ÖÖ 
.
ÖÖ 
ComputeHash
ÖÖ &
(
ÖÖ& '
Encoding
ÖÖ' /
.
ÖÖ/ 0
Default
ÖÖ0 7
.
ÖÖ7 8
GetBytes
ÖÖ8 @
(
ÖÖ@ A
input
ÖÖA F
)
ÖÖF G
)
ÖÖG H
;
ÖÖH I
return
ÜÜ 
new
ÜÜ 
Guid
ÜÜ 
(
ÜÜ 
hash
ÜÜ  
)
ÜÜ  !
.
ÜÜ! "
ToString
ÜÜ" *
(
ÜÜ* +
)
ÜÜ+ ,
;
ÜÜ, -
}
áá 	
}
àà 
}ââ ïV
°D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\AssemblyNameProvider.cs
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
systemReferenceDirectories	f Ä
)
Ä Å
;
Å Ç
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
$str	b Å
,
Å Ç
$num
É Ñ
)
Ñ Ö
;
Ö Ü
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
systemReferenceDirectories	==m á
)
==á à
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
)	xx Ä
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
}|| …
ìD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\FileIO.cs
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
}&& ˙
¢D:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\ProjectGeneration\ProjectGenerationFlag.cs
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
} ≥≈
çD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Library\PackageCache\com.unity.ide.vscode@1.2.3\Editor\VSCodeScriptEditor.cs
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
$str	 ã
,
ã å
$str
ç ó
,
ó ò
$str
ô £
,
£ §
$str
• ∏
,
∏ π
$str
∫ ¿
,
¿ ¡
$str
¬ Ÿ
}
⁄ €
;
€ ‹
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
ÅÅ #
=
ÅÅ$ %
EditorGUILayout
ÅÅ& 5
.
ÅÅ5 6
	TextField
ÅÅ6 ?
(
ÅÅ? @
new
ÅÅ@ C

GUIContent
ÅÅD N
(
ÅÅN O
$str
ÅÅO e
)
ÅÅe f
,
ÅÅf g%
HandledExtensionsString
ÅÅh 
)ÅÅ Ä
;ÅÅÄ Å
}
ÇÇ 	
void
ÑÑ $
RegenerateProjectFiles
ÑÑ #
(
ÑÑ# $
)
ÑÑ$ %
{
ÖÖ 	
var
ÜÜ 
rect
ÜÜ 
=
ÜÜ 
	EditorGUI
ÜÜ  
.
ÜÜ  !
IndentedRect
ÜÜ! -
(
ÜÜ- .
EditorGUILayout
ÜÜ. =
.
ÜÜ= >
GetControlRect
ÜÜ> L
(
ÜÜL M
new
ÜÜM P
GUILayoutOption
ÜÜQ `
[
ÜÜ` a
]
ÜÜa b
{
ÜÜc d
}
ÜÜe f
)
ÜÜf g
)
ÜÜg h
;
ÜÜh i
rect
áá 
.
áá 
width
áá 
=
áá 
$num
áá 
;
áá 
if
àà 
(
àà 
GUI
àà 
.
àà 
Button
àà 
(
àà 
rect
àà 
,
àà  
$str
àà! ;
)
àà; <
)
àà< =
{
ââ !
m_ProjectGeneration
ää #
.
ää# $
Sync
ää$ (
(
ää( )
)
ää) *
;
ää* +
}
ãã 
}
åå 	
void
éé 
SettingsButton
éé 
(
éé #
ProjectGenerationFlag
éé 1

preference
éé2 <
,
éé< =
string
éé> D

guiMessage
ééE O
,
ééO P
string
ééQ W
toolTip
ééX _
)
éé_ `
{
èè 	
var
êê 
	prevValue
êê 
=
êê !
m_ProjectGeneration
êê /
.
êê/ 0"
AssemblyNameProvider
êê0 D
.
êêD E#
ProjectGenerationFlag
êêE Z
.
êêZ [
HasFlag
êê[ b
(
êêb c

preference
êêc m
)
êêm n
;
êên o
var
ëë 
newValue
ëë 
=
ëë 
EditorGUILayout
ëë *
.
ëë* +
Toggle
ëë+ 1
(
ëë1 2
new
ëë2 5

GUIContent
ëë6 @
(
ëë@ A

guiMessage
ëëA K
,
ëëK L
toolTip
ëëM T
)
ëëT U
,
ëëU V
	prevValue
ëëW `
)
ëë` a
;
ëëa b
if
íí 
(
íí 
newValue
íí 
!=
íí 
	prevValue
íí %
)
íí% &
{
ìì !
m_ProjectGeneration
îî #
.
îî# $"
AssemblyNameProvider
îî$ 8
.
îî8 9%
ToggleProjectGeneration
îî9 P
(
îîP Q

preference
îîQ [
)
îî[ \
;
îî\ ]
}
ïï 
}
ññ 	
public
òò 
void
òò !
CreateIfDoesntExist
òò '
(
òò' (
)
òò( )
{
ôô 	
if
öö 
(
öö 
!
öö !
m_ProjectGeneration
öö $
.
öö$ %
SolutionExists
öö% 3
(
öö3 4
)
öö4 5
)
öö5 6
{
õõ !
m_ProjectGeneration
úú #
.
úú# $
Sync
úú$ (
(
úú( )
)
úú) *
;
úú* +
}
ùù 
}
ûû 	
public
†† 
void
†† 
SyncIfNeeded
††  
(
††  !
string
††! '
[
††' (
]
††( )

addedFiles
††* 4
,
††4 5
string
††6 <
[
††< =
]
††= >
deletedFiles
††? K
,
††K L
string
††M S
[
††S T
]
††T U

movedFiles
††V `
,
††` a
string
††b h
[
††h i
]
††i j
movedFromFiles
††k y
,
††y z
string††{ Å
[††Å Ç
]††Ç É
importedFiles††Ñ ë
)††ë í
{
°° 	!
m_ProjectGeneration
¢¢ 
.
¢¢  
SyncIfNeeded
¢¢  ,
(
¢¢, -

addedFiles
¢¢- 7
.
¢¢7 8
Union
¢¢8 =
(
¢¢= >
deletedFiles
¢¢> J
)
¢¢J K
.
¢¢K L
Union
¢¢L Q
(
¢¢Q R

movedFiles
¢¢R \
)
¢¢\ ]
.
¢¢] ^
Union
¢¢^ c
(
¢¢c d
movedFromFiles
¢¢d r
)
¢¢r s
.
¢¢s t
ToList
¢¢t z
(
¢¢z {
)
¢¢{ |
,
¢¢| }
importedFiles¢¢~ ã
)¢¢ã å
;¢¢å ç
}
££ 	
public
•• 
void
•• 
SyncAll
•• 
(
•• 
)
•• 
{
¶¶ 	
AssetDatabase
ßß 
.
ßß 
Refresh
ßß !
(
ßß! "
)
ßß" #
;
ßß# $!
m_ProjectGeneration
®® 
.
®®  
Sync
®®  $
(
®®$ %
)
®®% &
;
®®& '
}
©© 	
public
´´ 
bool
´´ 
OpenProject
´´ 
(
´´  
string
´´  &
path
´´' +
,
´´+ ,
int
´´- 0
line
´´1 5
,
´´5 6
int
´´7 :
column
´´; A
)
´´A B
{
¨¨ 	
if
≠≠ 
(
≠≠ 
path
≠≠ 
!=
≠≠ 
$str
≠≠ 
&&
≠≠ 
(
≠≠ 
!
≠≠  
SupportsExtension
≠≠  1
(
≠≠1 2
path
≠≠2 6
)
≠≠6 7
||
≠≠8 :
!
≠≠; <
File
≠≠< @
.
≠≠@ A
Exists
≠≠A G
(
≠≠G H
path
≠≠H L
)
≠≠L M
)
≠≠M N
)
≠≠N O
{
ÆÆ 
return
ØØ 
false
ØØ 
;
ØØ 
}
∞∞ 
if
≤≤ 
(
≤≤ 
line
≤≤ 
==
≤≤ 
-
≤≤ 
$num
≤≤ 
)
≤≤ 
line
≥≥ 
=
≥≥ 
$num
≥≥ 
;
≥≥ 
if
¥¥ 
(
¥¥ 
column
¥¥ 
==
¥¥ 
-
¥¥ 
$num
¥¥ 
)
¥¥ 
column
µµ 
=
µµ 
$num
µµ 
;
µµ 
string
∑∑ 
	arguments
∑∑ 
;
∑∑ 
if
∏∏ 
(
∏∏ 
	Arguments
∏∏ 
!=
∏∏ 
DefaultArgument
∏∏ ,
)
∏∏, -
{
ππ 
	arguments
∫∫ 
=
∫∫ !
m_ProjectGeneration
∫∫ /
.
∫∫/ 0
ProjectDirectory
∫∫0 @
!=
∫∫A C
path
∫∫D H
?
ªª 

CodeEditor
ªª  
.
ªª  !
ParseArgument
ªª! .
(
ªª. /
	Arguments
ªª/ 8
,
ªª8 9
path
ªª: >
,
ªª> ?
line
ªª@ D
,
ªªD E
column
ªªF L
)
ªªL M
:
ºº !
m_ProjectGeneration
ºº )
.
ºº) *
ProjectDirectory
ºº* :
;
ºº: ;
}
ΩΩ 
else
ææ 
{
øø 
	arguments
¿¿ 
=
¿¿ 
$@"
¿¿ 
""
¿¿ !
{
¿¿! "!
m_ProjectGeneration
¿¿" 5
.
¿¿5 6
ProjectDirectory
¿¿6 F
}
¿¿F G
""
¿¿G I
"
¿¿I J
;
¿¿J K
if
¡¡ 
(
¡¡ !
m_ProjectGeneration
¡¡ '
.
¡¡' (
ProjectDirectory
¡¡( 8
!=
¡¡9 ;
path
¡¡< @
&&
¡¡A C
path
¡¡D H
.
¡¡H I
Length
¡¡I O
!=
¡¡P R
$num
¡¡S T
)
¡¡T U
{
¬¬ 
	arguments
√√ 
+=
√√  
$@"
√√! $
 -g ""
√√$ *
{
√√* +
path
√√+ /
}
√√/ 0
"":
√√0 3
{
√√3 4
line
√√4 8
}
√√8 9
:
√√9 :
{
√√: ;
column
√√; A
}
√√A B
"
√√B C
;
√√C D
}
ƒƒ 
}
≈≈ 
if
«« 
(
«« 
IsOSX
«« 
)
«« 
{
»» 
return
…… 
OpenOSX
…… 
(
…… 
	arguments
…… (
)
……( )
;
……) *
}
   
var
ÃÃ 
app
ÃÃ 
=
ÃÃ 

DefaultApp
ÃÃ  
;
ÃÃ  !
var
ÕÕ 
process
ÕÕ 
=
ÕÕ 
new
ÕÕ 
Process
ÕÕ %
{
ŒŒ 
	StartInfo
œœ 
=
œœ 
new
œœ 
ProcessStartInfo
œœ  0
{
–– 
FileName
—— 
=
—— 
app
—— "
,
——" #
	Arguments
““ 
=
““ 
	arguments
““  )
,
““) *
WindowStyle
”” 
=
””  !
app
””" %
.
””% &
EndsWith
””& .
(
””. /
$str
””/ 5
,
””5 6
StringComparison
””7 G
.
””G H
OrdinalIgnoreCase
””H Y
)
””Y Z
?
””[ \ 
ProcessWindowStyle
””] o
.
””o p
Hidden
””p v
:
””w x!
ProcessWindowStyle””y ã
.””ã å
Normal””å í
,””í ì
CreateNoWindow
‘‘ "
=
‘‘# $
true
‘‘% )
,
‘‘) *
UseShellExecute
’’ #
=
’’$ %
true
’’& *
,
’’* +
}
÷÷ 
}
◊◊ 
;
◊◊ 
process
ŸŸ 
.
ŸŸ 
Start
ŸŸ 
(
ŸŸ 
)
ŸŸ 
;
ŸŸ 
return
⁄⁄ 
true
⁄⁄ 
;
⁄⁄ 
}
€€ 	
static
›› 
bool
›› 
OpenOSX
›› 
(
›› 
string
›› "
	arguments
››# ,
)
››, -
{
ﬁﬁ 	
var
ﬂﬂ 
process
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ 
Process
ﬂﬂ %
{
‡‡ 
	StartInfo
·· 
=
·· 
new
·· 
ProcessStartInfo
··  0
{
‚‚ 
FileName
„„ 
=
„„ 
$str
„„ %
,
„„% &
	Arguments
‰‰ 
=
‰‰ 
$"
‰‰  "
-n \"
‰‰" '
{
‰‰' (

DefaultApp
‰‰( 2
}
‰‰2 3

\" --args 
‰‰3 =
{
‰‰= >
	arguments
‰‰> G
}
‰‰G H
"
‰‰H I
,
‰‰I J
UseShellExecute
ÂÂ #
=
ÂÂ$ %
true
ÂÂ& *
,
ÂÂ* +
}
ÊÊ 
}
ÁÁ 
;
ÁÁ 
process
ÈÈ 
.
ÈÈ 
Start
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
return
ÍÍ 
true
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
static
ÌÌ 
bool
ÌÌ 
SupportsExtension
ÌÌ %
(
ÌÌ% &
string
ÌÌ& ,
path
ÌÌ- 1
)
ÌÌ1 2
{
ÓÓ 	
var
ÔÔ 
	extension
ÔÔ 
=
ÔÔ 
Path
ÔÔ  
.
ÔÔ  !
GetExtension
ÔÔ! -
(
ÔÔ- .
path
ÔÔ. 2
)
ÔÔ2 3
;
ÔÔ3 4
if
 
(
 
string
 
.
 
IsNullOrEmpty
 $
(
$ %
	extension
% .
)
. /
)
/ 0
return
ÒÒ 
false
ÒÒ 
;
ÒÒ 
return
ÚÚ 
HandledExtensions
ÚÚ $
.
ÚÚ$ %
Contains
ÚÚ% -
(
ÚÚ- .
	extension
ÚÚ. 7
.
ÚÚ7 8
	TrimStart
ÚÚ8 A
(
ÚÚA B
$char
ÚÚB E
)
ÚÚE F
)
ÚÚF G
;
ÚÚG H
}
ÛÛ 	
public
ıı 

CodeEditor
ıı 
.
ıı 
Installation
ıı &
[
ıı& '
]
ıı' (
Installations
ıı) 6
=>
ıı7 9
m_Discoverability
ıı: K
.
ııK L
PathCallback
ııL X
(
ııX Y
)
ııY Z
;
ııZ [
public
˜˜  
VSCodeScriptEditor
˜˜ !
(
˜˜! "

IDiscovery
˜˜" ,
	discovery
˜˜- 6
,
˜˜6 7

IGenerator
˜˜8 B
projectGeneration
˜˜C T
)
˜˜T U
{
¯¯ 	
m_Discoverability
˘˘ 
=
˘˘ 
	discovery
˘˘  )
;
˘˘) *!
m_ProjectGeneration
˙˙ 
=
˙˙  !
projectGeneration
˙˙" 3
;
˙˙3 4
}
˚˚ 	
static
˝˝  
VSCodeScriptEditor
˝˝ !
(
˝˝! "
)
˝˝" #
{
˛˛ 	
var
ˇˇ 
editor
ˇˇ 
=
ˇˇ 
new
ˇˇ  
VSCodeScriptEditor
ˇˇ /
(
ˇˇ/ 0
new
ˇˇ0 3
VSCodeDiscovery
ˇˇ4 C
(
ˇˇC D
)
ˇˇD E
,
ˇˇE F
new
ˇˇG J
ProjectGeneration
ˇˇK \
(
ˇˇ\ ]
	Directory
ˇˇ] f
.
ˇˇf g
	GetParent
ˇˇg p
(
ˇˇp q
Application
ˇˇq |
.
ˇˇ| }
dataPathˇˇ} Ö
)ˇˇÖ Ü
.ˇˇÜ á
FullNameˇˇá è
)ˇˇè ê
)ˇˇê ë
;ˇˇë í

CodeEditor
ÄÄ 
.
ÄÄ 
Register
ÄÄ 
(
ÄÄ  
editor
ÄÄ  &
)
ÄÄ& '
;
ÄÄ' (
if
ÇÇ 
(
ÇÇ "
IsVSCodeInstallation
ÇÇ $
(
ÇÇ$ %

CodeEditor
ÇÇ% /
.
ÇÇ/ 0'
CurrentEditorInstallation
ÇÇ0 I
)
ÇÇI J
)
ÇÇJ K
{
ÉÉ 
editor
ÑÑ 
.
ÑÑ !
CreateIfDoesntExist
ÑÑ *
(
ÑÑ* +
)
ÑÑ+ ,
;
ÑÑ, -
}
ÖÖ 
}
ÜÜ 	
static
àà 
bool
àà "
IsVSCodeInstallation
àà (
(
àà( )
string
àà) /
path
àà0 4
)
àà4 5
{
ââ 	
if
ää 
(
ää 
string
ää 
.
ää 
IsNullOrEmpty
ää $
(
ää$ %
path
ää% )
)
ää) *
)
ää* +
{
ãã 
return
åå 
false
åå 
;
åå 
}
çç 
var
èè 
lowerCasePath
èè 
=
èè 
path
èè  $
.
èè$ %
ToLower
èè% ,
(
èè, -
)
èè- .
;
èè. /
var
êê 
filename
êê 
=
êê 
Path
êê 
.
ëë 
GetFileName
ëë 
(
ëë 
lowerCasePath
ëë *
.
ëë* +
Replace
ëë+ 2
(
ëë2 3
$char
ëë3 7
,
ëë7 8
Path
ëë9 =
.
ëë= >$
DirectorySeparatorChar
ëë> T
)
ëëT U
.
ëëU V
Replace
ëëV ]
(
ëë] ^
$char
ëë^ a
,
ëëa b
Path
ëëc g
.
ëëg h$
DirectorySeparatorChar
ëëh ~
)
ëë~ 
)ëë Ä
.
íí 
Replace
íí 
(
íí 
$str
íí 
,
íí 
$str
íí  
)
íí  !
;
íí! "
return
ìì "
k_SupportedFileNames
ìì '
.
ìì' (
Contains
ìì( 0
(
ìì0 1
filename
ìì1 9
)
ìì9 :
;
ìì: ;
}
îî 	
public
ññ 
void
ññ 

Initialize
ññ 
(
ññ 
string
ññ %$
editorInstallationPath
ññ& <
)
ññ< =
{
ññ> ?
}
ññ@ A
}
óó 
}òò 