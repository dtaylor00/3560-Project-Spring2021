Ñ¤
hD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Assets\FPS Player Base\Input\Input2P.cs
public		 
class		 
@Input2P		 
:		 "
IInputActionCollection		 .
,		. /
IDisposable		0 ;
{

 
public 

InputActionAsset 
asset !
{" #
get$ '
;' (
}) *
public 

@Input2P 
( 
) 
{ 
asset 
= 
InputActionAsset  
.  !
FromJson! )
() *
$str	ª* 
)
ªª 
;
ªª 
m_Player
¬¬ 
=
¬¬ 
asset
¬¬ 
.
¬¬ 
FindActionMap
¬¬ &
(
¬¬& '
$str
¬¬' /
,
¬¬/ 0
throwIfNotFound
¬¬1 @
:
¬¬@ A
true
¬¬B F
)
¬¬F G
;
¬¬G H
m_Player_Move
­­ 
=
­­ 
m_Player
­­  
.
­­  !

FindAction
­­! +
(
­­+ ,
$str
­­, 2
,
­­2 3
throwIfNotFound
­­4 C
:
­­C D
true
­­E I
)
­­I J
;
­­J K
m_Player_Look
®® 
=
®® 
m_Player
®®  
.
®®  !

FindAction
®®! +
(
®®+ ,
$str
®®, 2
,
®®2 3
throwIfNotFound
®®4 C
:
®®C D
true
®®E I
)
®®I J
;
®®J K
m_Player_Fire
¯¯ 
=
¯¯ 
m_Player
¯¯  
.
¯¯  !

FindAction
¯¯! +
(
¯¯+ ,
$str
¯¯, 2
,
¯¯2 3
throwIfNotFound
¯¯4 C
:
¯¯C D
true
¯¯E I
)
¯¯I J
;
¯¯J K(
m_Player_SwitchPerspective
°° "
=
°°# $
m_Player
°°% -
.
°°- .

FindAction
°°. 8
(
°°8 9
$str
°°9 M
,
°°M N
throwIfNotFound
°°O ^
:
°°^ _
true
°°` d
)
°°d e
;
°°e f
m_Player_Jump
±± 
=
±± 
m_Player
±±  
.
±±  !

FindAction
±±! +
(
±±+ ,
$str
±±, 2
,
±±2 3
throwIfNotFound
±±4 C
:
±±C D
true
±±E I
)
±±I J
;
±±J K
m_Player_Use
²² 
=
²² 
m_Player
²² 
.
²²  

FindAction
²²  *
(
²²* +
$str
²²+ 0
,
²²0 1
throwIfNotFound
²²2 A
:
²²A B
true
²²C G
)
²²G H
;
²²H I
m_Player_Reload
³³ 
=
³³ 
m_Player
³³ "
.
³³" #

FindAction
³³# -
(
³³- .
$str
³³. 6
,
³³6 7
throwIfNotFound
³³8 G
:
³³G H
true
³³I M
)
³³M N
;
³³N O!
m_Player_LockCursor
´´ 
=
´´ 
m_Player
´´ &
.
´´& '

FindAction
´´' 1
(
´´1 2
$str
´´2 ?
,
´´? @
throwIfNotFound
´´A P
:
´´P Q
true
´´R V
)
´´V W
;
´´W X
m_Player_Aim
µµ 
=
µµ 
m_Player
µµ 
.
µµ  

FindAction
µµ  *
(
µµ* +
$str
µµ+ 0
,
µµ0 1
throwIfNotFound
µµ2 A
:
µµA B
true
µµC G
)
µµG H
;
µµH I
m_Player_Sprint
¶¶ 
=
¶¶ 
m_Player
¶¶ "
.
¶¶" #

FindAction
¶¶# -
(
¶¶- .
$str
¶¶. 6
,
¶¶6 7
throwIfNotFound
¶¶8 G
:
¶¶G H
true
¶¶I M
)
¶¶M N
;
¶¶N O
m_UI
¸¸ 
=
¸¸ 
asset
¸¸ 
.
¸¸ 
FindActionMap
¸¸ "
(
¸¸" #
$str
¸¸# '
,
¸¸' (
throwIfNotFound
¸¸) 8
:
¸¸8 9
true
¸¸: >
)
¸¸> ?
;
¸¸? @
m_UI_Navigate
¹¹ 
=
¹¹ 
m_UI
¹¹ 
.
¹¹ 

FindAction
¹¹ '
(
¹¹' (
$str
¹¹( 2
,
¹¹2 3
throwIfNotFound
¹¹4 C
:
¹¹C D
true
¹¹E I
)
¹¹I J
;
¹¹J K
m_UI_Submit
ºº 
=
ºº 
m_UI
ºº 
.
ºº 

FindAction
ºº %
(
ºº% &
$str
ºº& .
,
ºº. /
throwIfNotFound
ºº0 ?
:
ºº? @
true
ººA E
)
ººE F
;
ººF G
m_UI_Cancel
»» 
=
»» 
m_UI
»» 
.
»» 

FindAction
»» %
(
»»% &
$str
»»& .
,
»». /
throwIfNotFound
»»0 ?
:
»»? @
true
»»A E
)
»»E F
;
»»F G

m_UI_Point
¼¼ 
=
¼¼ 
m_UI
¼¼ 
.
¼¼ 

FindAction
¼¼ $
(
¼¼$ %
$str
¼¼% ,
,
¼¼, -
throwIfNotFound
¼¼. =
:
¼¼= >
true
¼¼? C
)
¼¼C D
;
¼¼D E

m_UI_Click
½½ 
=
½½ 
m_UI
½½ 
.
½½ 

FindAction
½½ $
(
½½$ %
$str
½½% ,
,
½½, -
throwIfNotFound
½½. =
:
½½= >
true
½½? C
)
½½C D
;
½½D E
m_UI_ScrollWheel
¾¾ 
=
¾¾ 
m_UI
¾¾ 
.
¾¾  

FindAction
¾¾  *
(
¾¾* +
$str
¾¾+ 8
,
¾¾8 9
throwIfNotFound
¾¾: I
:
¾¾I J
true
¾¾K O
)
¾¾O P
;
¾¾P Q
m_UI_MiddleClick
¿¿ 
=
¿¿ 
m_UI
¿¿ 
.
¿¿  

FindAction
¿¿  *
(
¿¿* +
$str
¿¿+ 8
,
¿¿8 9
throwIfNotFound
¿¿: I
:
¿¿I J
true
¿¿K O
)
¿¿O P
;
¿¿P Q
m_UI_RightClick
ÀÀ 
=
ÀÀ 
m_UI
ÀÀ 
.
ÀÀ 

FindAction
ÀÀ )
(
ÀÀ) *
$str
ÀÀ* 6
,
ÀÀ6 7
throwIfNotFound
ÀÀ8 G
:
ÀÀG H
true
ÀÀI M
)
ÀÀM N
;
ÀÀN O(
m_UI_TrackedDevicePosition
ÁÁ "
=
ÁÁ# $
m_UI
ÁÁ% )
.
ÁÁ) *

FindAction
ÁÁ* 4
(
ÁÁ4 5
$str
ÁÁ5 L
,
ÁÁL M
throwIfNotFound
ÁÁN ]
:
ÁÁ] ^
true
ÁÁ_ c
)
ÁÁc d
;
ÁÁd e+
m_UI_TrackedDeviceOrientation
ÂÂ %
=
ÂÂ& '
m_UI
ÂÂ( ,
.
ÂÂ, -

FindAction
ÂÂ- 7
(
ÂÂ7 8
$str
ÂÂ8 R
,
ÂÂR S
throwIfNotFound
ÂÂT c
:
ÂÂc d
true
ÂÂe i
)
ÂÂi j
;
ÂÂj k
}
ÃÃ 
public
ÅÅ 

void
ÅÅ 
Dispose
ÅÅ 
(
ÅÅ 
)
ÅÅ 
{
ÆÆ 
UnityEngine
ÇÇ 
.
ÇÇ 
Object
ÇÇ 
.
ÇÇ 
Destroy
ÇÇ "
(
ÇÇ" #
asset
ÇÇ# (
)
ÇÇ( )
;
ÇÇ) *
}
ÈÈ 
public
ÊÊ 

InputBinding
ÊÊ 
?
ÊÊ 
bindingMask
ÊÊ $
{
ËË 
get
ÌÌ 
=>
ÌÌ 
asset
ÌÌ 
.
ÌÌ 
bindingMask
ÌÌ  
;
ÌÌ  !
set
ÍÍ 
=>
ÍÍ 
asset
ÍÍ 
.
ÍÍ 
bindingMask
ÍÍ  
=
ÍÍ! "
value
ÍÍ# (
;
ÍÍ( )
}
ÎÎ 
public
ĞĞ 

ReadOnlyArray
ĞĞ 
<
ĞĞ 
InputDevice
ĞĞ $
>
ĞĞ$ %
?
ĞĞ% &
devices
ĞĞ' .
{
ÑÑ 
get
ÒÒ 
=>
ÒÒ 
asset
ÒÒ 
.
ÒÒ 
devices
ÒÒ 
;
ÒÒ 
set
ÓÓ 
=>
ÓÓ 
asset
ÓÓ 
.
ÓÓ 
devices
ÓÓ 
=
ÓÓ 
value
ÓÓ $
;
ÓÓ$ %
}
ÔÔ 
public
ÖÖ 

ReadOnlyArray
ÖÖ 
<
ÖÖ  
InputControlScheme
ÖÖ +
>
ÖÖ+ ,
controlSchemes
ÖÖ- ;
=>
ÖÖ< >
asset
ÖÖ? D
.
ÖÖD E
controlSchemes
ÖÖE S
;
ÖÖS T
public
ØØ 

bool
ØØ 
Contains
ØØ 
(
ØØ 
InputAction
ØØ $
action
ØØ% +
)
ØØ+ ,
{
ÙÙ 
return
ÚÚ 
asset
ÚÚ 
.
ÚÚ 
Contains
ÚÚ 
(
ÚÚ 
action
ÚÚ $
)
ÚÚ$ %
;
ÚÚ% &
}
ÛÛ 
public
İİ 

IEnumerator
İİ 
<
İİ 
InputAction
İİ "
>
İİ" #
GetEnumerator
İİ$ 1
(
İİ1 2
)
İİ2 3
{
ŞŞ 
return
ßß 
asset
ßß 
.
ßß 
GetEnumerator
ßß "
(
ßß" #
)
ßß# $
;
ßß$ %
}
àà 
IEnumerator
ââ 
IEnumerable
ââ 
.
ââ 
GetEnumerator
ââ )
(
ââ) *
)
ââ* +
{
ãã 
return
ää 
GetEnumerator
ää 
(
ää 
)
ää 
;
ää 
}
åå 
public
çç 

void
çç 
Enable
çç 
(
çç 
)
çç 
{
èè 
asset
éé 
.
éé 
Enable
éé 
(
éé 
)
éé 
;
éé 
}
êê 
public
ìì 

void
ìì 
Disable
ìì 
(
ìì 
)
ìì 
{
íí 
asset
îî 
.
îî 
Disable
îî 
(
îî 
)
îî 
;
îî 
}
ïï 
private
òò 
readonly
òò 
InputActionMap
òò #
m_Player
òò$ ,
;
òò, -
private
óó 
IPlayerActions
óó .
 m_PlayerActionsCallbackInterface
óó ;
;
óó; <
private
ôô 
readonly
ôô 
InputAction
ôô  
m_Player_Move
ôô! .
;
ôô. /
private
õõ 
readonly
õõ 
InputAction
õõ  
m_Player_Look
õõ! .
;
õõ. /
private
öö 
readonly
öö 
InputAction
öö  
m_Player_Fire
öö! .
;
öö. /
private
÷÷ 
readonly
÷÷ 
InputAction
÷÷  (
m_Player_SwitchPerspective
÷÷! ;
;
÷÷; <
private
øø 
readonly
øø 
InputAction
øø  
m_Player_Jump
øø! .
;
øø. /
private
ùù 
readonly
ùù 
InputAction
ùù  
m_Player_Use
ùù! -
;
ùù- .
private
úú 
readonly
úú 
InputAction
úú  
m_Player_Reload
úú! 0
;
úú0 1
private
ûû 
readonly
ûû 
InputAction
ûû  !
m_Player_LockCursor
ûû! 4
;
ûû4 5
private
üü 
readonly
üü 
InputAction
üü  
m_Player_Aim
üü! -
;
üü- .
private
ıı 
readonly
ıı 
InputAction
ıı  
m_Player_Sprint
ıı! 0
;
ıı0 1
public
şş 

struct
şş 
PlayerActions
şş 
{
ÿÿ 
private
€€ 
@Input2P
€€ 
	m_Wrapper
€€ "
;
€€" #
public
 
PlayerActions
 
(
 
@Input2P
 %
wrapper
& -
)
- .
{
/ 0
	m_Wrapper
1 :
=
; <
wrapper
= D
;
D E
}
F G
public
‚‚ 
InputAction
‚‚ 
@Move
‚‚  
=>
‚‚! #
	m_Wrapper
‚‚$ -
.
‚‚- .
m_Player_Move
‚‚. ;
;
‚‚; <
public
ƒƒ 
InputAction
ƒƒ 
@Look
ƒƒ  
=>
ƒƒ! #
	m_Wrapper
ƒƒ$ -
.
ƒƒ- .
m_Player_Look
ƒƒ. ;
;
ƒƒ; <
public
„„ 
InputAction
„„ 
@Fire
„„  
=>
„„! #
	m_Wrapper
„„$ -
.
„„- .
m_Player_Fire
„„. ;
;
„„; <
public
…… 
InputAction
……  
@SwitchPerspective
…… -
=>
……. 0
	m_Wrapper
……1 :
.
……: ;(
m_Player_SwitchPerspective
……; U
;
……U V
public
†† 
InputAction
†† 
@Jump
††  
=>
††! #
	m_Wrapper
††$ -
.
††- .
m_Player_Jump
††. ;
;
††; <
public
‡‡ 
InputAction
‡‡ 
@Use
‡‡ 
=>
‡‡  "
	m_Wrapper
‡‡# ,
.
‡‡, -
m_Player_Use
‡‡- 9
;
‡‡9 :
public
ˆˆ 
InputAction
ˆˆ 
@Reload
ˆˆ "
=>
ˆˆ# %
	m_Wrapper
ˆˆ& /
.
ˆˆ/ 0
m_Player_Reload
ˆˆ0 ?
;
ˆˆ? @
public
‰‰ 
InputAction
‰‰ 
@LockCursor
‰‰ &
=>
‰‰' )
	m_Wrapper
‰‰* 3
.
‰‰3 4!
m_Player_LockCursor
‰‰4 G
;
‰‰G H
public
ŠŠ 
InputAction
ŠŠ 
@Aim
ŠŠ 
=>
ŠŠ  "
	m_Wrapper
ŠŠ# ,
.
ŠŠ, -
m_Player_Aim
ŠŠ- 9
;
ŠŠ9 :
public
‹‹ 
InputAction
‹‹ 
@Sprint
‹‹ "
=>
‹‹# %
	m_Wrapper
‹‹& /
.
‹‹/ 0
m_Player_Sprint
‹‹0 ?
;
‹‹? @
public
ŒŒ 
InputActionMap
ŒŒ 
Get
ŒŒ !
(
ŒŒ! "
)
ŒŒ" #
{
ŒŒ$ %
return
ŒŒ& ,
	m_Wrapper
ŒŒ- 6
.
ŒŒ6 7
m_Player
ŒŒ7 ?
;
ŒŒ? @
}
ŒŒA B
public
 
void
 
Enable
 
(
 
)
 
{
 
Get
 "
(
" #
)
# $
.
$ %
Enable
% +
(
+ ,
)
, -
;
- .
}
/ 0
public
 
void
 
Disable
 
(
 
)
 
{
 
Get
  #
(
# $
)
$ %
.
% &
Disable
& -
(
- .
)
. /
;
/ 0
}
1 2
public
 
bool
 
enabled
 
=>
 
Get
 "
(
" #
)
# $
.
$ %
enabled
% ,
;
, -
public
 
static
 
implicit
 
operator
 '
InputActionMap
( 6
(
6 7
PlayerActions
7 D
set
E H
)
H I
{
J K
return
L R
set
S V
.
V W
Get
W Z
(
Z [
)
[ \
;
\ ]
}
^ _
public
‘‘ 
void
‘‘ 
SetCallbacks
‘‘  
(
‘‘  !
IPlayerActions
‘‘! /
instance
‘‘0 8
)
‘‘8 9
{
’’ 	
if
““ 
(
““ 
	m_Wrapper
““ 
.
““ .
 m_PlayerActionsCallbackInterface
““ :
!=
““; =
null
““> B
)
““B C
{
”” 
@Move
•• 
.
•• 
started
•• 
-=
••  
	m_Wrapper
••! *
.
••* +.
 m_PlayerActionsCallbackInterface
••+ K
.
••K L
OnMove
••L R
;
••R S
@Move
–– 
.
–– 
	performed
–– 
-=
––  "
	m_Wrapper
––# ,
.
––, -.
 m_PlayerActionsCallbackInterface
––- M
.
––M N
OnMove
––N T
;
––T U
@Move
—— 
.
—— 
canceled
—— 
-=
—— !
	m_Wrapper
——" +
.
——+ ,.
 m_PlayerActionsCallbackInterface
——, L
.
——L M
OnMove
——M S
;
——S T
@Look
˜˜ 
.
˜˜ 
started
˜˜ 
-=
˜˜  
	m_Wrapper
˜˜! *
.
˜˜* +.
 m_PlayerActionsCallbackInterface
˜˜+ K
.
˜˜K L
OnLook
˜˜L R
;
˜˜R S
@Look
™™ 
.
™™ 
	performed
™™ 
-=
™™  "
	m_Wrapper
™™# ,
.
™™, -.
 m_PlayerActionsCallbackInterface
™™- M
.
™™M N
OnLook
™™N T
;
™™T U
@Look
šš 
.
šš 
canceled
šš 
-=
šš !
	m_Wrapper
šš" +
.
šš+ ,.
 m_PlayerActionsCallbackInterface
šš, L
.
ššL M
OnLook
ššM S
;
ššS T
@Fire
›› 
.
›› 
started
›› 
-=
››  
	m_Wrapper
››! *
.
››* +.
 m_PlayerActionsCallbackInterface
››+ K
.
››K L
OnFire
››L R
;
››R S
@Fire
œœ 
.
œœ 
	performed
œœ 
-=
œœ  "
	m_Wrapper
œœ# ,
.
œœ, -.
 m_PlayerActionsCallbackInterface
œœ- M
.
œœM N
OnFire
œœN T
;
œœT U
@Fire
 
.
 
canceled
 
-=
 !
	m_Wrapper
" +
.
+ ,.
 m_PlayerActionsCallbackInterface
, L
.
L M
OnFire
M S
;
S T 
@SwitchPerspective
 "
.
" #
started
# *
-=
+ -
	m_Wrapper
. 7
.
7 8.
 m_PlayerActionsCallbackInterface
8 X
.
X Y!
OnSwitchPerspective
Y l
;
l m 
@SwitchPerspective
ŸŸ "
.
ŸŸ" #
	performed
ŸŸ# ,
-=
ŸŸ- /
	m_Wrapper
ŸŸ0 9
.
ŸŸ9 :.
 m_PlayerActionsCallbackInterface
ŸŸ: Z
.
ŸŸZ [!
OnSwitchPerspective
ŸŸ[ n
;
ŸŸn o 
@SwitchPerspective
   "
.
  " #
canceled
  # +
-=
  , .
	m_Wrapper
  / 8
.
  8 9.
 m_PlayerActionsCallbackInterface
  9 Y
.
  Y Z!
OnSwitchPerspective
  Z m
;
  m n
@Jump
¡¡ 
.
¡¡ 
started
¡¡ 
-=
¡¡  
	m_Wrapper
¡¡! *
.
¡¡* +.
 m_PlayerActionsCallbackInterface
¡¡+ K
.
¡¡K L
OnJump
¡¡L R
;
¡¡R S
@Jump
¢¢ 
.
¢¢ 
	performed
¢¢ 
-=
¢¢  "
	m_Wrapper
¢¢# ,
.
¢¢, -.
 m_PlayerActionsCallbackInterface
¢¢- M
.
¢¢M N
OnJump
¢¢N T
;
¢¢T U
@Jump
££ 
.
££ 
canceled
££ 
-=
££ !
	m_Wrapper
££" +
.
££+ ,.
 m_PlayerActionsCallbackInterface
££, L
.
££L M
OnJump
££M S
;
££S T
@Use
¤¤ 
.
¤¤ 
started
¤¤ 
-=
¤¤ 
	m_Wrapper
¤¤  )
.
¤¤) *.
 m_PlayerActionsCallbackInterface
¤¤* J
.
¤¤J K
OnUse
¤¤K P
;
¤¤P Q
@Use
¥¥ 
.
¥¥ 
	performed
¥¥ 
-=
¥¥ !
	m_Wrapper
¥¥" +
.
¥¥+ ,.
 m_PlayerActionsCallbackInterface
¥¥, L
.
¥¥L M
OnUse
¥¥M R
;
¥¥R S
@Use
¦¦ 
.
¦¦ 
canceled
¦¦ 
-=
¦¦  
	m_Wrapper
¦¦! *
.
¦¦* +.
 m_PlayerActionsCallbackInterface
¦¦+ K
.
¦¦K L
OnUse
¦¦L Q
;
¦¦Q R
@Reload
§§ 
.
§§ 
started
§§ 
-=
§§  "
	m_Wrapper
§§# ,
.
§§, -.
 m_PlayerActionsCallbackInterface
§§- M
.
§§M N
OnReload
§§N V
;
§§V W
@Reload
¨¨ 
.
¨¨ 
	performed
¨¨ !
-=
¨¨" $
	m_Wrapper
¨¨% .
.
¨¨. /.
 m_PlayerActionsCallbackInterface
¨¨/ O
.
¨¨O P
OnReload
¨¨P X
;
¨¨X Y
@Reload
©© 
.
©© 
canceled
©©  
-=
©©! #
	m_Wrapper
©©$ -
.
©©- ..
 m_PlayerActionsCallbackInterface
©©. N
.
©©N O
OnReload
©©O W
;
©©W X
@LockCursor
ªª 
.
ªª 
started
ªª #
-=
ªª$ &
	m_Wrapper
ªª' 0
.
ªª0 1.
 m_PlayerActionsCallbackInterface
ªª1 Q
.
ªªQ R
OnLockCursor
ªªR ^
;
ªª^ _
@LockCursor
«« 
.
«« 
	performed
«« %
-=
««& (
	m_Wrapper
««) 2
.
««2 3.
 m_PlayerActionsCallbackInterface
««3 S
.
««S T
OnLockCursor
««T `
;
««` a
@LockCursor
¬¬ 
.
¬¬ 
canceled
¬¬ $
-=
¬¬% '
	m_Wrapper
¬¬( 1
.
¬¬1 2.
 m_PlayerActionsCallbackInterface
¬¬2 R
.
¬¬R S
OnLockCursor
¬¬S _
;
¬¬_ `
@Aim
­­ 
.
­­ 
started
­­ 
-=
­­ 
	m_Wrapper
­­  )
.
­­) *.
 m_PlayerActionsCallbackInterface
­­* J
.
­­J K
OnAim
­­K P
;
­­P Q
@Aim
®® 
.
®® 
	performed
®® 
-=
®® !
	m_Wrapper
®®" +
.
®®+ ,.
 m_PlayerActionsCallbackInterface
®®, L
.
®®L M
OnAim
®®M R
;
®®R S
@Aim
¯¯ 
.
¯¯ 
canceled
¯¯ 
-=
¯¯  
	m_Wrapper
¯¯! *
.
¯¯* +.
 m_PlayerActionsCallbackInterface
¯¯+ K
.
¯¯K L
OnAim
¯¯L Q
;
¯¯Q R
@Sprint
°° 
.
°° 
started
°° 
-=
°°  "
	m_Wrapper
°°# ,
.
°°, -.
 m_PlayerActionsCallbackInterface
°°- M
.
°°M N
OnSprint
°°N V
;
°°V W
@Sprint
±± 
.
±± 
	performed
±± !
-=
±±" $
	m_Wrapper
±±% .
.
±±. /.
 m_PlayerActionsCallbackInterface
±±/ O
.
±±O P
OnSprint
±±P X
;
±±X Y
@Sprint
²² 
.
²² 
canceled
²²  
-=
²²! #
	m_Wrapper
²²$ -
.
²²- ..
 m_PlayerActionsCallbackInterface
²². N
.
²²N O
OnSprint
²²O W
;
²²W X
}
³³ 
	m_Wrapper
´´ 
.
´´ .
 m_PlayerActionsCallbackInterface
´´ 6
=
´´7 8
instance
´´9 A
;
´´A B
if
µµ 
(
µµ 
instance
µµ 
!=
µµ 
null
µµ  
)
µµ  !
{
¶¶ 
@Move
·· 
.
·· 
started
·· 
+=
··  
instance
··! )
.
··) *
OnMove
··* 0
;
··0 1
@Move
¸¸ 
.
¸¸ 
	performed
¸¸ 
+=
¸¸  "
instance
¸¸# +
.
¸¸+ ,
OnMove
¸¸, 2
;
¸¸2 3
@Move
¹¹ 
.
¹¹ 
canceled
¹¹ 
+=
¹¹ !
instance
¹¹" *
.
¹¹* +
OnMove
¹¹+ 1
;
¹¹1 2
@Look
ºº 
.
ºº 
started
ºº 
+=
ºº  
instance
ºº! )
.
ºº) *
OnLook
ºº* 0
;
ºº0 1
@Look
»» 
.
»» 
	performed
»» 
+=
»»  "
instance
»»# +
.
»»+ ,
OnLook
»», 2
;
»»2 3
@Look
¼¼ 
.
¼¼ 
canceled
¼¼ 
+=
¼¼ !
instance
¼¼" *
.
¼¼* +
OnLook
¼¼+ 1
;
¼¼1 2
@Fire
½½ 
.
½½ 
started
½½ 
+=
½½  
instance
½½! )
.
½½) *
OnFire
½½* 0
;
½½0 1
@Fire
¾¾ 
.
¾¾ 
	performed
¾¾ 
+=
¾¾  "
instance
¾¾# +
.
¾¾+ ,
OnFire
¾¾, 2
;
¾¾2 3
@Fire
¿¿ 
.
¿¿ 
canceled
¿¿ 
+=
¿¿ !
instance
¿¿" *
.
¿¿* +
OnFire
¿¿+ 1
;
¿¿1 2 
@SwitchPerspective
ÀÀ "
.
ÀÀ" #
started
ÀÀ# *
+=
ÀÀ+ -
instance
ÀÀ. 6
.
ÀÀ6 7!
OnSwitchPerspective
ÀÀ7 J
;
ÀÀJ K 
@SwitchPerspective
ÁÁ "
.
ÁÁ" #
	performed
ÁÁ# ,
+=
ÁÁ- /
instance
ÁÁ0 8
.
ÁÁ8 9!
OnSwitchPerspective
ÁÁ9 L
;
ÁÁL M 
@SwitchPerspective
ÂÂ "
.
ÂÂ" #
canceled
ÂÂ# +
+=
ÂÂ, .
instance
ÂÂ/ 7
.
ÂÂ7 8!
OnSwitchPerspective
ÂÂ8 K
;
ÂÂK L
@Jump
ÃÃ 
.
ÃÃ 
started
ÃÃ 
+=
ÃÃ  
instance
ÃÃ! )
.
ÃÃ) *
OnJump
ÃÃ* 0
;
ÃÃ0 1
@Jump
ÄÄ 
.
ÄÄ 
	performed
ÄÄ 
+=
ÄÄ  "
instance
ÄÄ# +
.
ÄÄ+ ,
OnJump
ÄÄ, 2
;
ÄÄ2 3
@Jump
ÅÅ 
.
ÅÅ 
canceled
ÅÅ 
+=
ÅÅ !
instance
ÅÅ" *
.
ÅÅ* +
OnJump
ÅÅ+ 1
;
ÅÅ1 2
@Use
ÆÆ 
.
ÆÆ 
started
ÆÆ 
+=
ÆÆ 
instance
ÆÆ  (
.
ÆÆ( )
OnUse
ÆÆ) .
;
ÆÆ. /
@Use
ÇÇ 
.
ÇÇ 
	performed
ÇÇ 
+=
ÇÇ !
instance
ÇÇ" *
.
ÇÇ* +
OnUse
ÇÇ+ 0
;
ÇÇ0 1
@Use
ÈÈ 
.
ÈÈ 
canceled
ÈÈ 
+=
ÈÈ  
instance
ÈÈ! )
.
ÈÈ) *
OnUse
ÈÈ* /
;
ÈÈ/ 0
@Reload
ÉÉ 
.
ÉÉ 
started
ÉÉ 
+=
ÉÉ  "
instance
ÉÉ# +
.
ÉÉ+ ,
OnReload
ÉÉ, 4
;
ÉÉ4 5
@Reload
ÊÊ 
.
ÊÊ 
	performed
ÊÊ !
+=
ÊÊ" $
instance
ÊÊ% -
.
ÊÊ- .
OnReload
ÊÊ. 6
;
ÊÊ6 7
@Reload
ËË 
.
ËË 
canceled
ËË  
+=
ËË! #
instance
ËË$ ,
.
ËË, -
OnReload
ËË- 5
;
ËË5 6
@LockCursor
ÌÌ 
.
ÌÌ 
started
ÌÌ #
+=
ÌÌ$ &
instance
ÌÌ' /
.
ÌÌ/ 0
OnLockCursor
ÌÌ0 <
;
ÌÌ< =
@LockCursor
ÍÍ 
.
ÍÍ 
	performed
ÍÍ %
+=
ÍÍ& (
instance
ÍÍ) 1
.
ÍÍ1 2
OnLockCursor
ÍÍ2 >
;
ÍÍ> ?
@LockCursor
ÎÎ 
.
ÎÎ 
canceled
ÎÎ $
+=
ÎÎ% '
instance
ÎÎ( 0
.
ÎÎ0 1
OnLockCursor
ÎÎ1 =
;
ÎÎ= >
@Aim
ÏÏ 
.
ÏÏ 
started
ÏÏ 
+=
ÏÏ 
instance
ÏÏ  (
.
ÏÏ( )
OnAim
ÏÏ) .
;
ÏÏ. /
@Aim
ĞĞ 
.
ĞĞ 
	performed
ĞĞ 
+=
ĞĞ !
instance
ĞĞ" *
.
ĞĞ* +
OnAim
ĞĞ+ 0
;
ĞĞ0 1
@Aim
ÑÑ 
.
ÑÑ 
canceled
ÑÑ 
+=
ÑÑ  
instance
ÑÑ! )
.
ÑÑ) *
OnAim
ÑÑ* /
;
ÑÑ/ 0
@Sprint
ÒÒ 
.
ÒÒ 
started
ÒÒ 
+=
ÒÒ  "
instance
ÒÒ# +
.
ÒÒ+ ,
OnSprint
ÒÒ, 4
;
ÒÒ4 5
@Sprint
ÓÓ 
.
ÓÓ 
	performed
ÓÓ !
+=
ÓÓ" $
instance
ÓÓ% -
.
ÓÓ- .
OnSprint
ÓÓ. 6
;
ÓÓ6 7
@Sprint
ÔÔ 
.
ÔÔ 
canceled
ÔÔ  
+=
ÔÔ! #
instance
ÔÔ$ ,
.
ÔÔ, -
OnSprint
ÔÔ- 5
;
ÔÔ5 6
}
ÕÕ 
}
ÖÖ 	
}
×× 
public
ØØ 

PlayerActions
ØØ 
@Player
ØØ  
=>
ØØ! #
new
ØØ$ '
PlayerActions
ØØ( 5
(
ØØ5 6
this
ØØ6 :
)
ØØ: ;
;
ØØ; <
private
ÛÛ 
readonly
ÛÛ 
InputActionMap
ÛÛ #
m_UI
ÛÛ$ (
;
ÛÛ( )
private
ÜÜ 

IUIActions
ÜÜ *
m_UIActionsCallbackInterface
ÜÜ 3
;
ÜÜ3 4
private
İİ 
readonly
İİ 
InputAction
İİ  
m_UI_Navigate
İİ! .
;
İİ. /
private
ŞŞ 
readonly
ŞŞ 
InputAction
ŞŞ  
m_UI_Submit
ŞŞ! ,
;
ŞŞ, -
private
ßß 
readonly
ßß 
InputAction
ßß  
m_UI_Cancel
ßß! ,
;
ßß, -
private
àà 
readonly
àà 
InputAction
àà  

m_UI_Point
àà! +
;
àà+ ,
private
áá 
readonly
áá 
InputAction
áá  

m_UI_Click
áá! +
;
áá+ ,
private
ââ 
readonly
ââ 
InputAction
ââ  
m_UI_ScrollWheel
ââ! 1
;
ââ1 2
private
ãã 
readonly
ãã 
InputAction
ãã  
m_UI_MiddleClick
ãã! 1
;
ãã1 2
private
ää 
readonly
ää 
InputAction
ää  
m_UI_RightClick
ää! 0
;
ää0 1
private
åå 
readonly
åå 
InputAction
åå  (
m_UI_TrackedDevicePosition
åå! ;
;
åå; <
private
ææ 
readonly
ææ 
InputAction
ææ  +
m_UI_TrackedDeviceOrientation
ææ! >
;
ææ> ?
public
çç 

struct
çç 
	UIActions
çç 
{
èè 
private
éé 
@Input2P
éé 
	m_Wrapper
éé "
;
éé" #
public
êê 
	UIActions
êê 
(
êê 
@Input2P
êê !
wrapper
êê" )
)
êê) *
{
êê+ ,
	m_Wrapper
êê- 6
=
êê7 8
wrapper
êê9 @
;
êê@ A
}
êêB C
public
ëë 
InputAction
ëë 
	@Navigate
ëë $
=>
ëë% '
	m_Wrapper
ëë( 1
.
ëë1 2
m_UI_Navigate
ëë2 ?
;
ëë? @
public
ìì 
InputAction
ìì 
@Submit
ìì "
=>
ìì# %
	m_Wrapper
ìì& /
.
ìì/ 0
m_UI_Submit
ìì0 ;
;
ìì; <
public
íí 
InputAction
íí 
@Cancel
íí "
=>
íí# %
	m_Wrapper
íí& /
.
íí/ 0
m_UI_Cancel
íí0 ;
;
íí; <
public
îî 
InputAction
îî 
@Point
îî !
=>
îî" $
	m_Wrapper
îî% .
.
îî. /

m_UI_Point
îî/ 9
;
îî9 :
public
ïï 
InputAction
ïï 
@Click
ïï !
=>
ïï" $
	m_Wrapper
ïï% .
.
ïï. /

m_UI_Click
ïï/ 9
;
ïï9 :
public
ğğ 
InputAction
ğğ 
@ScrollWheel
ğğ '
=>
ğğ( *
	m_Wrapper
ğğ+ 4
.
ğğ4 5
m_UI_ScrollWheel
ğğ5 E
;
ğğE F
public
ññ 
InputAction
ññ 
@MiddleClick
ññ '
=>
ññ( *
	m_Wrapper
ññ+ 4
.
ññ4 5
m_UI_MiddleClick
ññ5 E
;
ññE F
public
òò 
InputAction
òò 
@RightClick
òò &
=>
òò' )
	m_Wrapper
òò* 3
.
òò3 4
m_UI_RightClick
òò4 C
;
òòC D
public
óó 
InputAction
óó $
@TrackedDevicePosition
óó 1
=>
óó2 4
	m_Wrapper
óó5 >
.
óó> ?(
m_UI_TrackedDevicePosition
óó? Y
;
óóY Z
public
ôô 
InputAction
ôô '
@TrackedDeviceOrientation
ôô 4
=>
ôô5 7
	m_Wrapper
ôô8 A
.
ôôA B+
m_UI_TrackedDeviceOrientation
ôôB _
;
ôô_ `
public
õõ 
InputActionMap
õõ 
Get
õõ !
(
õõ! "
)
õõ" #
{
õõ$ %
return
õõ& ,
	m_Wrapper
õõ- 6
.
õõ6 7
m_UI
õõ7 ;
;
õõ; <
}
õõ= >
public
öö 
void
öö 
Enable
öö 
(
öö 
)
öö 
{
öö 
Get
öö "
(
öö" #
)
öö# $
.
öö$ %
Enable
öö% +
(
öö+ ,
)
öö, -
;
öö- .
}
öö/ 0
public
÷÷ 
void
÷÷ 
Disable
÷÷ 
(
÷÷ 
)
÷÷ 
{
÷÷ 
Get
÷÷  #
(
÷÷# $
)
÷÷$ %
.
÷÷% &
Disable
÷÷& -
(
÷÷- .
)
÷÷. /
;
÷÷/ 0
}
÷÷1 2
public
øø 
bool
øø 
enabled
øø 
=>
øø 
Get
øø "
(
øø" #
)
øø# $
.
øø$ %
enabled
øø% ,
;
øø, -
public
ùù 
static
ùù 
implicit
ùù 
operator
ùù '
InputActionMap
ùù( 6
(
ùù6 7
	UIActions
ùù7 @
set
ùùA D
)
ùùD E
{
ùùF G
return
ùùH N
set
ùùO R
.
ùùR S
Get
ùùS V
(
ùùV W
)
ùùW X
;
ùùX Y
}
ùùZ [
public
úú 
void
úú 
SetCallbacks
úú  
(
úú  !

IUIActions
úú! +
instance
úú, 4
)
úú4 5
{
ûû 	
if
üü 
(
üü 
	m_Wrapper
üü 
.
üü *
m_UIActionsCallbackInterface
üü 6
!=
üü7 9
null
üü: >
)
üü> ?
{
ıı 
	@Navigate
şş 
.
şş 
started
şş !
-=
şş" $
	m_Wrapper
şş% .
.
şş. /*
m_UIActionsCallbackInterface
şş/ K
.
şşK L

OnNavigate
şşL V
;
şşV W
	@Navigate
ÿÿ 
.
ÿÿ 
	performed
ÿÿ #
-=
ÿÿ$ &
	m_Wrapper
ÿÿ' 0
.
ÿÿ0 1*
m_UIActionsCallbackInterface
ÿÿ1 M
.
ÿÿM N

OnNavigate
ÿÿN X
;
ÿÿX Y
	@Navigate
€	€	 
.
€	€	 
canceled
€	€	 "
-=
€	€	# %
	m_Wrapper
€	€	& /
.
€	€	/ 0*
m_UIActionsCallbackInterface
€	€	0 L
.
€	€	L M

OnNavigate
€	€	M W
;
€	€	W X
@Submit
		 
.
		 
started
		 
-=
		  "
	m_Wrapper
		# ,
.
		, -*
m_UIActionsCallbackInterface
		- I
.
		I J
OnSubmit
		J R
;
		R S
@Submit
‚	‚	 
.
‚	‚	 
	performed
‚	‚	 !
-=
‚	‚	" $
	m_Wrapper
‚	‚	% .
.
‚	‚	. /*
m_UIActionsCallbackInterface
‚	‚	/ K
.
‚	‚	K L
OnSubmit
‚	‚	L T
;
‚	‚	T U
@Submit
ƒ	ƒ	 
.
ƒ	ƒ	 
canceled
ƒ	ƒ	  
-=
ƒ	ƒ	! #
	m_Wrapper
ƒ	ƒ	$ -
.
ƒ	ƒ	- .*
m_UIActionsCallbackInterface
ƒ	ƒ	. J
.
ƒ	ƒ	J K
OnSubmit
ƒ	ƒ	K S
;
ƒ	ƒ	S T
@Cancel
„	„	 
.
„	„	 
started
„	„	 
-=
„	„	  "
	m_Wrapper
„	„	# ,
.
„	„	, -*
m_UIActionsCallbackInterface
„	„	- I
.
„	„	I J
OnCancel
„	„	J R
;
„	„	R S
@Cancel
…	…	 
.
…	…	 
	performed
…	…	 !
-=
…	…	" $
	m_Wrapper
…	…	% .
.
…	…	. /*
m_UIActionsCallbackInterface
…	…	/ K
.
…	…	K L
OnCancel
…	…	L T
;
…	…	T U
@Cancel
†	†	 
.
†	†	 
canceled
†	†	  
-=
†	†	! #
	m_Wrapper
†	†	$ -
.
†	†	- .*
m_UIActionsCallbackInterface
†	†	. J
.
†	†	J K
OnCancel
†	†	K S
;
†	†	S T
@Point
‡	‡	 
.
‡	‡	 
started
‡	‡	 
-=
‡	‡	 !
	m_Wrapper
‡	‡	" +
.
‡	‡	+ ,*
m_UIActionsCallbackInterface
‡	‡	, H
.
‡	‡	H I
OnPoint
‡	‡	I P
;
‡	‡	P Q
@Point
ˆ	ˆ	 
.
ˆ	ˆ	 
	performed
ˆ	ˆ	  
-=
ˆ	ˆ	! #
	m_Wrapper
ˆ	ˆ	$ -
.
ˆ	ˆ	- .*
m_UIActionsCallbackInterface
ˆ	ˆ	. J
.
ˆ	ˆ	J K
OnPoint
ˆ	ˆ	K R
;
ˆ	ˆ	R S
@Point
‰	‰	 
.
‰	‰	 
canceled
‰	‰	 
-=
‰	‰	  "
	m_Wrapper
‰	‰	# ,
.
‰	‰	, -*
m_UIActionsCallbackInterface
‰	‰	- I
.
‰	‰	I J
OnPoint
‰	‰	J Q
;
‰	‰	Q R
@Click
Š	Š	 
.
Š	Š	 
started
Š	Š	 
-=
Š	Š	 !
	m_Wrapper
Š	Š	" +
.
Š	Š	+ ,*
m_UIActionsCallbackInterface
Š	Š	, H
.
Š	Š	H I
OnClick
Š	Š	I P
;
Š	Š	P Q
@Click
‹	‹	 
.
‹	‹	 
	performed
‹	‹	  
-=
‹	‹	! #
	m_Wrapper
‹	‹	$ -
.
‹	‹	- .*
m_UIActionsCallbackInterface
‹	‹	. J
.
‹	‹	J K
OnClick
‹	‹	K R
;
‹	‹	R S
@Click
Œ	Œ	 
.
Œ	Œ	 
canceled
Œ	Œ	 
-=
Œ	Œ	  "
	m_Wrapper
Œ	Œ	# ,
.
Œ	Œ	, -*
m_UIActionsCallbackInterface
Œ	Œ	- I
.
Œ	Œ	I J
OnClick
Œ	Œ	J Q
;
Œ	Œ	Q R
@ScrollWheel
		 
.
		 
started
		 $
-=
		% '
	m_Wrapper
		( 1
.
		1 2*
m_UIActionsCallbackInterface
		2 N
.
		N O
OnScrollWheel
		O \
;
		\ ]
@ScrollWheel
		 
.
		 
	performed
		 &
-=
		' )
	m_Wrapper
		* 3
.
		3 4*
m_UIActionsCallbackInterface
		4 P
.
		P Q
OnScrollWheel
		Q ^
;
		^ _
@ScrollWheel
		 
.
		 
canceled
		 %
-=
		& (
	m_Wrapper
		) 2
.
		2 3*
m_UIActionsCallbackInterface
		3 O
.
		O P
OnScrollWheel
		P ]
;
		] ^
@MiddleClick
		 
.
		 
started
		 $
-=
		% '
	m_Wrapper
		( 1
.
		1 2*
m_UIActionsCallbackInterface
		2 N
.
		N O
OnMiddleClick
		O \
;
		\ ]
@MiddleClick
‘	‘	 
.
‘	‘	 
	performed
‘	‘	 &
-=
‘	‘	' )
	m_Wrapper
‘	‘	* 3
.
‘	‘	3 4*
m_UIActionsCallbackInterface
‘	‘	4 P
.
‘	‘	P Q
OnMiddleClick
‘	‘	Q ^
;
‘	‘	^ _
@MiddleClick
’	’	 
.
’	’	 
canceled
’	’	 %
-=
’	’	& (
	m_Wrapper
’	’	) 2
.
’	’	2 3*
m_UIActionsCallbackInterface
’	’	3 O
.
’	’	O P
OnMiddleClick
’	’	P ]
;
’	’	] ^
@RightClick
“	“	 
.
“	“	 
started
“	“	 #
-=
“	“	$ &
	m_Wrapper
“	“	' 0
.
“	“	0 1*
m_UIActionsCallbackInterface
“	“	1 M
.
“	“	M N
OnRightClick
“	“	N Z
;
“	“	Z [
@RightClick
”	”	 
.
”	”	 
	performed
”	”	 %
-=
”	”	& (
	m_Wrapper
”	”	) 2
.
”	”	2 3*
m_UIActionsCallbackInterface
”	”	3 O
.
”	”	O P
OnRightClick
”	”	P \
;
”	”	\ ]
@RightClick
•	•	 
.
•	•	 
canceled
•	•	 $
-=
•	•	% '
	m_Wrapper
•	•	( 1
.
•	•	1 2*
m_UIActionsCallbackInterface
•	•	2 N
.
•	•	N O
OnRightClick
•	•	O [
;
•	•	[ \$
@TrackedDevicePosition
–	–	 &
.
–	–	& '
started
–	–	' .
-=
–	–	/ 1
	m_Wrapper
–	–	2 ;
.
–	–	; <*
m_UIActionsCallbackInterface
–	–	< X
.
–	–	X Y%
OnTrackedDevicePosition
–	–	Y p
;
–	–	p q$
@TrackedDevicePosition
—	—	 &
.
—	—	& '
	performed
—	—	' 0
-=
—	—	1 3
	m_Wrapper
—	—	4 =
.
—	—	= >*
m_UIActionsCallbackInterface
—	—	> Z
.
—	—	Z [%
OnTrackedDevicePosition
—	—	[ r
;
—	—	r s$
@TrackedDevicePosition
˜	˜	 &
.
˜	˜	& '
canceled
˜	˜	' /
-=
˜	˜	0 2
	m_Wrapper
˜	˜	3 <
.
˜	˜	< =*
m_UIActionsCallbackInterface
˜	˜	= Y
.
˜	˜	Y Z%
OnTrackedDevicePosition
˜	˜	Z q
;
˜	˜	q r'
@TrackedDeviceOrientation
™	™	 )
.
™	™	) *
started
™	™	* 1
-=
™	™	2 4
	m_Wrapper
™	™	5 >
.
™	™	> ?*
m_UIActionsCallbackInterface
™	™	? [
.
™	™	[ \(
OnTrackedDeviceOrientation
™	™	\ v
;
™	™	v w'
@TrackedDeviceOrientation
š	š	 )
.
š	š	) *
	performed
š	š	* 3
-=
š	š	4 6
	m_Wrapper
š	š	7 @
.
š	š	@ A*
m_UIActionsCallbackInterface
š	š	A ]
.
š	š	] ^(
OnTrackedDeviceOrientation
š	š	^ x
;
š	š	x y'
@TrackedDeviceOrientation
›	›	 )
.
›	›	) *
canceled
›	›	* 2
-=
›	›	3 5
	m_Wrapper
›	›	6 ?
.
›	›	? @*
m_UIActionsCallbackInterface
›	›	@ \
.
›	›	\ ](
OnTrackedDeviceOrientation
›	›	] w
;
›	›	w x
}
œ	œ	 
	m_Wrapper
		 
.
		 *
m_UIActionsCallbackInterface
		 2
=
		3 4
instance
		5 =
;
		= >
if
		 
(
		 
instance
		 
!=
		 
null
		  
)
		  !
{
Ÿ	Ÿ	 
	@Navigate
 	 	 
.
 	 	 
started
 	 	 !
+=
 	 	" $
instance
 	 	% -
.
 	 	- .

OnNavigate
 	 	. 8
;
 	 	8 9
	@Navigate
¡	¡	 
.
¡	¡	 
	performed
¡	¡	 #
+=
¡	¡	$ &
instance
¡	¡	' /
.
¡	¡	/ 0

OnNavigate
¡	¡	0 :
;
¡	¡	: ;
	@Navigate
¢	¢	 
.
¢	¢	 
canceled
¢	¢	 "
+=
¢	¢	# %
instance
¢	¢	& .
.
¢	¢	. /

OnNavigate
¢	¢	/ 9
;
¢	¢	9 :
@Submit
£	£	 
.
£	£	 
started
£	£	 
+=
£	£	  "
instance
£	£	# +
.
£	£	+ ,
OnSubmit
£	£	, 4
;
£	£	4 5
@Submit
¤	¤	 
.
¤	¤	 
	performed
¤	¤	 !
+=
¤	¤	" $
instance
¤	¤	% -
.
¤	¤	- .
OnSubmit
¤	¤	. 6
;
¤	¤	6 7
@Submit
¥	¥	 
.
¥	¥	 
canceled
¥	¥	  
+=
¥	¥	! #
instance
¥	¥	$ ,
.
¥	¥	, -
OnSubmit
¥	¥	- 5
;
¥	¥	5 6
@Cancel
¦	¦	 
.
¦	¦	 
started
¦	¦	 
+=
¦	¦	  "
instance
¦	¦	# +
.
¦	¦	+ ,
OnCancel
¦	¦	, 4
;
¦	¦	4 5
@Cancel
§	§	 
.
§	§	 
	performed
§	§	 !
+=
§	§	" $
instance
§	§	% -
.
§	§	- .
OnCancel
§	§	. 6
;
§	§	6 7
@Cancel
¨	¨	 
.
¨	¨	 
canceled
¨	¨	  
+=
¨	¨	! #
instance
¨	¨	$ ,
.
¨	¨	, -
OnCancel
¨	¨	- 5
;
¨	¨	5 6
@Point
©	©	 
.
©	©	 
started
©	©	 
+=
©	©	 !
instance
©	©	" *
.
©	©	* +
OnPoint
©	©	+ 2
;
©	©	2 3
@Point
ª	ª	 
.
ª	ª	 
	performed
ª	ª	  
+=
ª	ª	! #
instance
ª	ª	$ ,
.
ª	ª	, -
OnPoint
ª	ª	- 4
;
ª	ª	4 5
@Point
«	«	 
.
«	«	 
canceled
«	«	 
+=
«	«	  "
instance
«	«	# +
.
«	«	+ ,
OnPoint
«	«	, 3
;
«	«	3 4
@Click
¬	¬	 
.
¬	¬	 
started
¬	¬	 
+=
¬	¬	 !
instance
¬	¬	" *
.
¬	¬	* +
OnClick
¬	¬	+ 2
;
¬	¬	2 3
@Click
­	­	 
.
­	­	 
	performed
­	­	  
+=
­	­	! #
instance
­	­	$ ,
.
­	­	, -
OnClick
­	­	- 4
;
­	­	4 5
@Click
®	®	 
.
®	®	 
canceled
®	®	 
+=
®	®	  "
instance
®	®	# +
.
®	®	+ ,
OnClick
®	®	, 3
;
®	®	3 4
@ScrollWheel
¯	¯	 
.
¯	¯	 
started
¯	¯	 $
+=
¯	¯	% '
instance
¯	¯	( 0
.
¯	¯	0 1
OnScrollWheel
¯	¯	1 >
;
¯	¯	> ?
@ScrollWheel
°	°	 
.
°	°	 
	performed
°	°	 &
+=
°	°	' )
instance
°	°	* 2
.
°	°	2 3
OnScrollWheel
°	°	3 @
;
°	°	@ A
@ScrollWheel
±	±	 
.
±	±	 
canceled
±	±	 %
+=
±	±	& (
instance
±	±	) 1
.
±	±	1 2
OnScrollWheel
±	±	2 ?
;
±	±	? @
@MiddleClick
²	²	 
.
²	²	 
started
²	²	 $
+=
²	²	% '
instance
²	²	( 0
.
²	²	0 1
OnMiddleClick
²	²	1 >
;
²	²	> ?
@MiddleClick
³	³	 
.
³	³	 
	performed
³	³	 &
+=
³	³	' )
instance
³	³	* 2
.
³	³	2 3
OnMiddleClick
³	³	3 @
;
³	³	@ A
@MiddleClick
´	´	 
.
´	´	 
canceled
´	´	 %
+=
´	´	& (
instance
´	´	) 1
.
´	´	1 2
OnMiddleClick
´	´	2 ?
;
´	´	? @
@RightClick
µ	µ	 
.
µ	µ	 
started
µ	µ	 #
+=
µ	µ	$ &
instance
µ	µ	' /
.
µ	µ	/ 0
OnRightClick
µ	µ	0 <
;
µ	µ	< =
@RightClick
¶	¶	 
.
¶	¶	 
	performed
¶	¶	 %
+=
¶	¶	& (
instance
¶	¶	) 1
.
¶	¶	1 2
OnRightClick
¶	¶	2 >
;
¶	¶	> ?
@RightClick
·	·	 
.
·	·	 
canceled
·	·	 $
+=
·	·	% '
instance
·	·	( 0
.
·	·	0 1
OnRightClick
·	·	1 =
;
·	·	= >$
@TrackedDevicePosition
¸	¸	 &
.
¸	¸	& '
started
¸	¸	' .
+=
¸	¸	/ 1
instance
¸	¸	2 :
.
¸	¸	: ;%
OnTrackedDevicePosition
¸	¸	; R
;
¸	¸	R S$
@TrackedDevicePosition
¹	¹	 &
.
¹	¹	& '
	performed
¹	¹	' 0
+=
¹	¹	1 3
instance
¹	¹	4 <
.
¹	¹	< =%
OnTrackedDevicePosition
¹	¹	= T
;
¹	¹	T U$
@TrackedDevicePosition
º	º	 &
.
º	º	& '
canceled
º	º	' /
+=
º	º	0 2
instance
º	º	3 ;
.
º	º	; <%
OnTrackedDevicePosition
º	º	< S
;
º	º	S T'
@TrackedDeviceOrientation
»	»	 )
.
»	»	) *
started
»	»	* 1
+=
»	»	2 4
instance
»	»	5 =
.
»	»	= >(
OnTrackedDeviceOrientation
»	»	> X
;
»	»	X Y'
@TrackedDeviceOrientation
¼	¼	 )
.
¼	¼	) *
	performed
¼	¼	* 3
+=
¼	¼	4 6
instance
¼	¼	7 ?
.
¼	¼	? @(
OnTrackedDeviceOrientation
¼	¼	@ Z
;
¼	¼	Z ['
@TrackedDeviceOrientation
½	½	 )
.
½	½	) *
canceled
½	½	* 2
+=
½	½	3 5
instance
½	½	6 >
.
½	½	> ?(
OnTrackedDeviceOrientation
½	½	? Y
;
½	½	Y Z
}
¾	¾	 
}
¿	¿	 	
}
À	À	 
public
Á	Á	 

	UIActions
Á	Á	 
@UI
Á	Á	 
=>
Á	Á	 
new
Á	Á	 
	UIActions
Á	Á	  )
(
Á	Á	) *
this
Á	Á	* .
)
Á	Á	. /
;
Á	Á	/ 0
private
Â	Â	 
int
Â	Â	 (
m_KeyboardMouseSchemeIndex
Â	Â	 *
=
Â	Â	+ ,
-
Â	Â	- .
$num
Â	Â	. /
;
Â	Â	/ 0
public
Ã	Ã	 
 
InputControlScheme
Ã	Ã	 !
KeyboardMouseScheme
Ã	Ã	 1
{
Ä	Ä	 
get
Å	Å	 
{
Æ	Æ	 	
if
Ç	Ç	 
(
Ç	Ç	 (
m_KeyboardMouseSchemeIndex
Ç	Ç	 *
==
Ç	Ç	+ -
-
Ç	Ç	. /
$num
Ç	Ç	/ 0
)
Ç	Ç	0 1(
m_KeyboardMouseSchemeIndex
Ç	Ç	2 L
=
Ç	Ç	M N
asset
Ç	Ç	O T
.
Ç	Ç	T U$
FindControlSchemeIndex
Ç	Ç	U k
(
Ç	Ç	k l
$str
Ç	Ç	l |
)
Ç	Ç	| }
;
Ç	Ç	} ~
return
È	È	 
asset
È	È	 
.
È	È	 
controlSchemes
È	È	 '
[
È	È	' ((
m_KeyboardMouseSchemeIndex
È	È	( B
]
È	È	B C
;
È	È	C D
}
É	É	 	
}
Ê	Ê	 
private
Ë	Ë	 
int
Ë	Ë	 "
m_GamepadSchemeIndex
Ë	Ë	 $
=
Ë	Ë	% &
-
Ë	Ë	' (
$num
Ë	Ë	( )
;
Ë	Ë	) *
public
Ì	Ì	 
 
InputControlScheme
Ì	Ì	 
GamepadScheme
Ì	Ì	 +
{
Í	Í	 
get
Î	Î	 
{
Ï	Ï	 	
if
Ğ	Ğ	 
(
Ğ	Ğ	 "
m_GamepadSchemeIndex
Ğ	Ğ	 $
==
Ğ	Ğ	% '
-
Ğ	Ğ	( )
$num
Ğ	Ğ	) *
)
Ğ	Ğ	* +"
m_GamepadSchemeIndex
Ğ	Ğ	, @
=
Ğ	Ğ	A B
asset
Ğ	Ğ	C H
.
Ğ	Ğ	H I$
FindControlSchemeIndex
Ğ	Ğ	I _
(
Ğ	Ğ	_ `
$str
Ğ	Ğ	` i
)
Ğ	Ğ	i j
;
Ğ	Ğ	j k
return
Ñ	Ñ	 
asset
Ñ	Ñ	 
.
Ñ	Ñ	 
controlSchemes
Ñ	Ñ	 '
[
Ñ	Ñ	' ("
m_GamepadSchemeIndex
Ñ	Ñ	( <
]
Ñ	Ñ	< =
;
Ñ	Ñ	= >
}
Ò	Ò	 	
}
Ó	Ó	 
private
Ô	Ô	 
int
Ô	Ô	  
m_TouchSchemeIndex
Ô	Ô	 "
=
Ô	Ô	# $
-
Ô	Ô	% &
$num
Ô	Ô	& '
;
Ô	Ô	' (
public
Õ	Õ	 
 
InputControlScheme
Õ	Õ	 
TouchScheme
Õ	Õ	 )
{
Ö	Ö	 
get
×	×	 
{
Ø	Ø	 	
if
Ù	Ù	 
(
Ù	Ù	  
m_TouchSchemeIndex
Ù	Ù	 "
==
Ù	Ù	# %
-
Ù	Ù	& '
$num
Ù	Ù	' (
)
Ù	Ù	( ) 
m_TouchSchemeIndex
Ù	Ù	* <
=
Ù	Ù	= >
asset
Ù	Ù	? D
.
Ù	Ù	D E$
FindControlSchemeIndex
Ù	Ù	E [
(
Ù	Ù	[ \
$str
Ù	Ù	\ c
)
Ù	Ù	c d
;
Ù	Ù	d e
return
Ú	Ú	 
asset
Ú	Ú	 
.
Ú	Ú	 
controlSchemes
Ú	Ú	 '
[
Ú	Ú	' ( 
m_TouchSchemeIndex
Ú	Ú	( :
]
Ú	Ú	: ;
;
Ú	Ú	; <
}
Û	Û	 	
}
Ü	Ü	 
private
İ	İ	 
int
İ	İ	 #
m_JoystickSchemeIndex
İ	İ	 %
=
İ	İ	& '
-
İ	İ	( )
$num
İ	İ	) *
;
İ	İ	* +
public
Ş	Ş	 
 
InputControlScheme
Ş	Ş	 
JoystickScheme
Ş	Ş	 ,
{
ß	ß	 
get
à	à	 
{
á	á	 	
if
â	â	 
(
â	â	 #
m_JoystickSchemeIndex
â	â	 %
==
â	â	& (
-
â	â	) *
$num
â	â	* +
)
â	â	+ ,#
m_JoystickSchemeIndex
â	â	- B
=
â	â	C D
asset
â	â	E J
.
â	â	J K$
FindControlSchemeIndex
â	â	K a
(
â	â	a b
$str
â	â	b l
)
â	â	l m
;
â	â	m n
return
ã	ã	 
asset
ã	ã	 
.
ã	ã	 
controlSchemes
ã	ã	 '
[
ã	ã	' (#
m_JoystickSchemeIndex
ã	ã	( =
]
ã	ã	= >
;
ã	ã	> ?
}
ä	ä	 	
}
å	å	 
private
æ	æ	 
int
æ	æ	 
m_XRSchemeIndex
æ	æ	 
=
æ	æ	  !
-
æ	æ	" #
$num
æ	æ	# $
;
æ	æ	$ %
public
ç	ç	 
 
InputControlScheme
ç	ç	 
XRScheme
ç	ç	 &
{
è	è	 
get
é	é	 
{
ê	ê	 	
if
ë	ë	 
(
ë	ë	 
m_XRSchemeIndex
ë	ë	 
==
ë	ë	  "
-
ë	ë	# $
$num
ë	ë	$ %
)
ë	ë	% &
m_XRSchemeIndex
ë	ë	' 6
=
ë	ë	7 8
asset
ë	ë	9 >
.
ë	ë	> ?$
FindControlSchemeIndex
ë	ë	? U
(
ë	ë	U V
$str
ë	ë	V Z
)
ë	ë	Z [
;
ë	ë	[ \
return
ì	ì	 
asset
ì	ì	 
.
ì	ì	 
controlSchemes
ì	ì	 '
[
ì	ì	' (
m_XRSchemeIndex
ì	ì	( 7
]
ì	ì	7 8
;
ì	ì	8 9
}
í	í	 	
}
î	î	 
public
ï	ï	 

	interface
ï	ï	 
IPlayerActions
ï	ï	 #
{
ğ	ğ	 
void
ñ	ñ	 
OnMove
ñ	ñ	 
(
ñ	ñ	 
InputAction
ñ	ñ	 
.
ñ	ñ	  
CallbackContext
ñ	ñ	  /
context
ñ	ñ	0 7
)
ñ	ñ	7 8
;
ñ	ñ	8 9
void
ò	ò	 
OnLook
ò	ò	 
(
ò	ò	 
InputAction
ò	ò	 
.
ò	ò	  
CallbackContext
ò	ò	  /
context
ò	ò	0 7
)
ò	ò	7 8
;
ò	ò	8 9
void
ó	ó	 
OnFire
ó	ó	 
(
ó	ó	 
InputAction
ó	ó	 
.
ó	ó	  
CallbackContext
ó	ó	  /
context
ó	ó	0 7
)
ó	ó	7 8
;
ó	ó	8 9
void
ô	ô	 !
OnSwitchPerspective
ô	ô	  
(
ô	ô	  !
InputAction
ô	ô	! ,
.
ô	ô	, -
CallbackContext
ô	ô	- <
context
ô	ô	= D
)
ô	ô	D E
;
ô	ô	E F
void
õ	õ	 
OnJump
õ	õ	 
(
õ	õ	 
InputAction
õ	õ	 
.
õ	õ	  
CallbackContext
õ	õ	  /
context
õ	õ	0 7
)
õ	õ	7 8
;
õ	õ	8 9
void
ö	ö	 
OnUse
ö	ö	 
(
ö	ö	 
InputAction
ö	ö	 
.
ö	ö	 
CallbackContext
ö	ö	 .
context
ö	ö	/ 6
)
ö	ö	6 7
;
ö	ö	7 8
void
÷	÷	 
OnReload
÷	÷	 
(
÷	÷	 
InputAction
÷	÷	 !
.
÷	÷	! "
CallbackContext
÷	÷	" 1
context
÷	÷	2 9
)
÷	÷	9 :
;
÷	÷	: ;
void
ø	ø	 
OnLockCursor
ø	ø	 
(
ø	ø	 
InputAction
ø	ø	 %
.
ø	ø	% &
CallbackContext
ø	ø	& 5
context
ø	ø	6 =
)
ø	ø	= >
;
ø	ø	> ?
void
ù	ù	 
OnAim
ù	ù	 
(
ù	ù	 
InputAction
ù	ù	 
.
ù	ù	 
CallbackContext
ù	ù	 .
context
ù	ù	/ 6
)
ù	ù	6 7
;
ù	ù	7 8
void
ú	ú	 
OnSprint
ú	ú	 
(
ú	ú	 
InputAction
ú	ú	 !
.
ú	ú	! "
CallbackContext
ú	ú	" 1
context
ú	ú	2 9
)
ú	ú	9 :
;
ú	ú	: ;
}
û	û	 
public
ü	ü	 

	interface
ü	ü	 

IUIActions
ü	ü	 
{
ı	ı	 
void
ş	ş	 

OnNavigate
ş	ş	 
(
ş	ş	 
InputAction
ş	ş	 #
.
ş	ş	# $
CallbackContext
ş	ş	$ 3
context
ş	ş	4 ;
)
ş	ş	; <
;
ş	ş	< =
void
ÿ	ÿ	 
OnSubmit
ÿ	ÿ	 
(
ÿ	ÿ	 
InputAction
ÿ	ÿ	 !
.
ÿ	ÿ	! "
CallbackContext
ÿ	ÿ	" 1
context
ÿ	ÿ	2 9
)
ÿ	ÿ	9 :
;
ÿ	ÿ	: ;
void
€
€
 
OnCancel
€
€
 
(
€
€
 
InputAction
€
€
 !
.
€
€
! "
CallbackContext
€
€
" 1
context
€
€
2 9
)
€
€
9 :
;
€
€
: ;
void


 
OnPoint


 
(


 
InputAction


  
.


  !
CallbackContext


! 0
context


1 8
)


8 9
;


9 :
void
‚
‚
 
OnClick
‚
‚
 
(
‚
‚
 
InputAction
‚
‚
  
.
‚
‚
  !
CallbackContext
‚
‚
! 0
context
‚
‚
1 8
)
‚
‚
8 9
;
‚
‚
9 :
void
ƒ
ƒ
 
OnScrollWheel
ƒ
ƒ
 
(
ƒ
ƒ
 
InputAction
ƒ
ƒ
 &
.
ƒ
ƒ
& '
CallbackContext
ƒ
ƒ
' 6
context
ƒ
ƒ
7 >
)
ƒ
ƒ
> ?
;
ƒ
ƒ
? @
void
„
„
 
OnMiddleClick
„
„
 
(
„
„
 
InputAction
„
„
 &
.
„
„
& '
CallbackContext
„
„
' 6
context
„
„
7 >
)
„
„
> ?
;
„
„
? @
void
…
…
 
OnRightClick
…
…
 
(
…
…
 
InputAction
…
…
 %
.
…
…
% &
CallbackContext
…
…
& 5
context
…
…
6 =
)
…
…
= >
;
…
…
> ?
void
†
†
 %
OnTrackedDevicePosition
†
†
 $
(
†
†
$ %
InputAction
†
†
% 0
.
†
†
0 1
CallbackContext
†
†
1 @
context
†
†
A H
)
†
†
H I
;
†
†
I J
void
‡
‡
 (
OnTrackedDeviceOrientation
‡
‡
 '
(
‡
‡
' (
InputAction
‡
‡
( 3
.
‡
‡
3 4
CallbackContext
‡
‡
4 C
context
‡
‡
D K
)
‡
‡
K L
;
‡
‡
L M
}
ˆ
ˆ
 
}‰
‰
 ï´
lD:\Dakota\OneDriveOU\School\CS3560\repos\3560-Project-Spring2021\Assets\FPS Player Base\Input\MasterInput.cs
public		 
class		 
@MasterInput		 
:		 "
IInputActionCollection		 2
,		2 3
IDisposable		4 ?
{

 
public 

InputActionAsset 
asset !
{" #
get$ '
;' (
}) *
public 

@MasterInput 
( 
) 
{ 
asset 
= 
InputActionAsset  
.  !
FromJson! )
() *
$str	•* 
)
•• 
;
•• 
m_Player
—— 
=
—— 
asset
—— 
.
—— 
FindActionMap
—— &
(
——& '
$str
——' /
,
——/ 0
throwIfNotFound
——1 @
:
——@ A
true
——B F
)
——F G
;
——G H
m_Player_Move
˜˜ 
=
˜˜ 
m_Player
˜˜  
.
˜˜  !

FindAction
˜˜! +
(
˜˜+ ,
$str
˜˜, 2
,
˜˜2 3
throwIfNotFound
˜˜4 C
:
˜˜C D
true
˜˜E I
)
˜˜I J
;
˜˜J K
m_Player_Look
™™ 
=
™™ 
m_Player
™™  
.
™™  !

FindAction
™™! +
(
™™+ ,
$str
™™, 2
,
™™2 3
throwIfNotFound
™™4 C
:
™™C D
true
™™E I
)
™™I J
;
™™J K
m_Player_Fire
šš 
=
šš 
m_Player
šš  
.
šš  !

FindAction
šš! +
(
šš+ ,
$str
šš, 2
,
šš2 3
throwIfNotFound
šš4 C
:
ššC D
true
ššE I
)
ššI J
;
ššJ K(
m_Player_SwitchPerspective
›› "
=
››# $
m_Player
››% -
.
››- .

FindAction
››. 8
(
››8 9
$str
››9 M
,
››M N
throwIfNotFound
››O ^
:
››^ _
true
››` d
)
››d e
;
››e f
m_Player_Jump
œœ 
=
œœ 
m_Player
œœ  
.
œœ  !

FindAction
œœ! +
(
œœ+ ,
$str
œœ, 2
,
œœ2 3
throwIfNotFound
œœ4 C
:
œœC D
true
œœE I
)
œœI J
;
œœJ K
m_Player_Use
 
=
 
m_Player
 
.
  

FindAction
  *
(
* +
$str
+ 0
,
0 1
throwIfNotFound
2 A
:
A B
true
C G
)
G H
;
H I
m_Player_Reload
 
=
 
m_Player
 "
.
" #

FindAction
# -
(
- .
$str
. 6
,
6 7
throwIfNotFound
8 G
:
G H
true
I M
)
M N
;
N O!
m_Player_LockCursor
ŸŸ 
=
ŸŸ 
m_Player
ŸŸ &
.
ŸŸ& '

FindAction
ŸŸ' 1
(
ŸŸ1 2
$str
ŸŸ2 ?
,
ŸŸ? @
throwIfNotFound
ŸŸA P
:
ŸŸP Q
true
ŸŸR V
)
ŸŸV W
;
ŸŸW X
m_Player_Aim
   
=
   
m_Player
   
.
    

FindAction
    *
(
  * +
$str
  + 0
,
  0 1
throwIfNotFound
  2 A
:
  A B
true
  C G
)
  G H
;
  H I
m_Player_Sprint
¡¡ 
=
¡¡ 
m_Player
¡¡ "
.
¡¡" #

FindAction
¡¡# -
(
¡¡- .
$str
¡¡. 6
,
¡¡6 7
throwIfNotFound
¡¡8 G
:
¡¡G H
true
¡¡I M
)
¡¡M N
;
¡¡N O#
m_Player_SwitchWeapon
¢¢ 
=
¢¢ 
m_Player
¢¢  (
.
¢¢( )

FindAction
¢¢) 3
(
¢¢3 4
$str
¢¢4 B
,
¢¢B C
throwIfNotFound
¢¢D S
:
¢¢S T
true
¢¢U Y
)
¢¢Y Z
;
¢¢Z [
m_UI
¤¤ 
=
¤¤ 
asset
¤¤ 
.
¤¤ 
FindActionMap
¤¤ "
(
¤¤" #
$str
¤¤# '
,
¤¤' (
throwIfNotFound
¤¤) 8
:
¤¤8 9
true
¤¤: >
)
¤¤> ?
;
¤¤? @
m_UI_Navigate
¥¥ 
=
¥¥ 
m_UI
¥¥ 
.
¥¥ 

FindAction
¥¥ '
(
¥¥' (
$str
¥¥( 2
,
¥¥2 3
throwIfNotFound
¥¥4 C
:
¥¥C D
true
¥¥E I
)
¥¥I J
;
¥¥J K
m_UI_Submit
¦¦ 
=
¦¦ 
m_UI
¦¦ 
.
¦¦ 

FindAction
¦¦ %
(
¦¦% &
$str
¦¦& .
,
¦¦. /
throwIfNotFound
¦¦0 ?
:
¦¦? @
true
¦¦A E
)
¦¦E F
;
¦¦F G
m_UI_Cancel
§§ 
=
§§ 
m_UI
§§ 
.
§§ 

FindAction
§§ %
(
§§% &
$str
§§& .
,
§§. /
throwIfNotFound
§§0 ?
:
§§? @
true
§§A E
)
§§E F
;
§§F G

m_UI_Point
¨¨ 
=
¨¨ 
m_UI
¨¨ 
.
¨¨ 

FindAction
¨¨ $
(
¨¨$ %
$str
¨¨% ,
,
¨¨, -
throwIfNotFound
¨¨. =
:
¨¨= >
true
¨¨? C
)
¨¨C D
;
¨¨D E

m_UI_Click
©© 
=
©© 
m_UI
©© 
.
©© 

FindAction
©© $
(
©©$ %
$str
©©% ,
,
©©, -
throwIfNotFound
©©. =
:
©©= >
true
©©? C
)
©©C D
;
©©D E
m_UI_ScrollWheel
ªª 
=
ªª 
m_UI
ªª 
.
ªª  

FindAction
ªª  *
(
ªª* +
$str
ªª+ 8
,
ªª8 9
throwIfNotFound
ªª: I
:
ªªI J
true
ªªK O
)
ªªO P
;
ªªP Q
m_UI_MiddleClick
«« 
=
«« 
m_UI
«« 
.
««  

FindAction
««  *
(
««* +
$str
««+ 8
,
««8 9
throwIfNotFound
««: I
:
««I J
true
««K O
)
««O P
;
««P Q
m_UI_RightClick
¬¬ 
=
¬¬ 
m_UI
¬¬ 
.
¬¬ 

FindAction
¬¬ )
(
¬¬) *
$str
¬¬* 6
,
¬¬6 7
throwIfNotFound
¬¬8 G
:
¬¬G H
true
¬¬I M
)
¬¬M N
;
¬¬N O(
m_UI_TrackedDevicePosition
­­ "
=
­­# $
m_UI
­­% )
.
­­) *

FindAction
­­* 4
(
­­4 5
$str
­­5 L
,
­­L M
throwIfNotFound
­­N ]
:
­­] ^
true
­­_ c
)
­­c d
;
­­d e+
m_UI_TrackedDeviceOrientation
®® %
=
®®& '
m_UI
®®( ,
.
®®, -

FindAction
®®- 7
(
®®7 8
$str
®®8 R
,
®®R S
throwIfNotFound
®®T c
:
®®c d
true
®®e i
)
®®i j
;
®®j k
}
¯¯ 
public
±± 

void
±± 
Dispose
±± 
(
±± 
)
±± 
{
²² 
UnityEngine
³³ 
.
³³ 
Object
³³ 
.
³³ 
Destroy
³³ "
(
³³" #
asset
³³# (
)
³³( )
;
³³) *
}
´´ 
public
¶¶ 

InputBinding
¶¶ 
?
¶¶ 
bindingMask
¶¶ $
{
·· 
get
¸¸ 
=>
¸¸ 
asset
¸¸ 
.
¸¸ 
bindingMask
¸¸  
;
¸¸  !
set
¹¹ 
=>
¹¹ 
asset
¹¹ 
.
¹¹ 
bindingMask
¹¹  
=
¹¹! "
value
¹¹# (
;
¹¹( )
}
ºº 
public
¼¼ 

ReadOnlyArray
¼¼ 
<
¼¼ 
InputDevice
¼¼ $
>
¼¼$ %
?
¼¼% &
devices
¼¼' .
{
½½ 
get
¾¾ 
=>
¾¾ 
asset
¾¾ 
.
¾¾ 
devices
¾¾ 
;
¾¾ 
set
¿¿ 
=>
¿¿ 
asset
¿¿ 
.
¿¿ 
devices
¿¿ 
=
¿¿ 
value
¿¿ $
;
¿¿$ %
}
ÀÀ 
public
ÂÂ 

ReadOnlyArray
ÂÂ 
<
ÂÂ  
InputControlScheme
ÂÂ +
>
ÂÂ+ ,
controlSchemes
ÂÂ- ;
=>
ÂÂ< >
asset
ÂÂ? D
.
ÂÂD E
controlSchemes
ÂÂE S
;
ÂÂS T
public
ÄÄ 

bool
ÄÄ 
Contains
ÄÄ 
(
ÄÄ 
InputAction
ÄÄ $
action
ÄÄ% +
)
ÄÄ+ ,
{
ÅÅ 
return
ÆÆ 
asset
ÆÆ 
.
ÆÆ 
Contains
ÆÆ 
(
ÆÆ 
action
ÆÆ $
)
ÆÆ$ %
;
ÆÆ% &
}
ÇÇ 
public
ÉÉ 

IEnumerator
ÉÉ 
<
ÉÉ 
InputAction
ÉÉ "
>
ÉÉ" #
GetEnumerator
ÉÉ$ 1
(
ÉÉ1 2
)
ÉÉ2 3
{
ÊÊ 
return
ËË 
asset
ËË 
.
ËË 
GetEnumerator
ËË "
(
ËË" #
)
ËË# $
;
ËË$ %
}
ÌÌ 
IEnumerator
ÎÎ 
IEnumerable
ÎÎ 
.
ÎÎ 
GetEnumerator
ÎÎ )
(
ÎÎ) *
)
ÎÎ* +
{
ÏÏ 
return
ĞĞ 
GetEnumerator
ĞĞ 
(
ĞĞ 
)
ĞĞ 
;
ĞĞ 
}
ÑÑ 
public
ÓÓ 

void
ÓÓ 
Enable
ÓÓ 
(
ÓÓ 
)
ÓÓ 
{
ÔÔ 
asset
ÕÕ 
.
ÕÕ 
Enable
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 
}
ÖÖ 
public
ØØ 

void
ØØ 
Disable
ØØ 
(
ØØ 
)
ØØ 
{
ÙÙ 
asset
ÚÚ 
.
ÚÚ 
Disable
ÚÚ 
(
ÚÚ 
)
ÚÚ 
;
ÚÚ 
}
ÛÛ 
private
ŞŞ 
readonly
ŞŞ 
InputActionMap
ŞŞ #
m_Player
ŞŞ$ ,
;
ŞŞ, -
private
ßß 
IPlayerActions
ßß .
 m_PlayerActionsCallbackInterface
ßß ;
;
ßß; <
private
àà 
readonly
àà 
InputAction
àà  
m_Player_Move
àà! .
;
àà. /
private
áá 
readonly
áá 
InputAction
áá  
m_Player_Look
áá! .
;
áá. /
private
ââ 
readonly
ââ 
InputAction
ââ  
m_Player_Fire
ââ! .
;
ââ. /
private
ãã 
readonly
ãã 
InputAction
ãã  (
m_Player_SwitchPerspective
ãã! ;
;
ãã; <
private
ää 
readonly
ää 
InputAction
ää  
m_Player_Jump
ää! .
;
ää. /
private
åå 
readonly
åå 
InputAction
åå  
m_Player_Use
åå! -
;
åå- .
private
ææ 
readonly
ææ 
InputAction
ææ  
m_Player_Reload
ææ! 0
;
ææ0 1
private
çç 
readonly
çç 
InputAction
çç  !
m_Player_LockCursor
çç! 4
;
çç4 5
private
èè 
readonly
èè 
InputAction
èè  
m_Player_Aim
èè! -
;
èè- .
private
éé 
readonly
éé 
InputAction
éé  
m_Player_Sprint
éé! 0
;
éé0 1
private
êê 
readonly
êê 
InputAction
êê  #
m_Player_SwitchWeapon
êê! 6
;
êê6 7
public
ëë 

struct
ëë 
PlayerActions
ëë 
{
ìì 
private
íí 
@MasterInput
íí 
	m_Wrapper
íí &
;
íí& '
public
îî 
PlayerActions
îî 
(
îî 
@MasterInput
îî )
wrapper
îî* 1
)
îî1 2
{
îî3 4
	m_Wrapper
îî5 >
=
îî? @
wrapper
îîA H
;
îîH I
}
îîJ K
public
ïï 
InputAction
ïï 
@Move
ïï  
=>
ïï! #
	m_Wrapper
ïï$ -
.
ïï- .
m_Player_Move
ïï. ;
;
ïï; <
public
ğğ 
InputAction
ğğ 
@Look
ğğ  
=>
ğğ! #
	m_Wrapper
ğğ$ -
.
ğğ- .
m_Player_Look
ğğ. ;
;
ğğ; <
public
ññ 
InputAction
ññ 
@Fire
ññ  
=>
ññ! #
	m_Wrapper
ññ$ -
.
ññ- .
m_Player_Fire
ññ. ;
;
ññ; <
public
òò 
InputAction
òò  
@SwitchPerspective
òò -
=>
òò. 0
	m_Wrapper
òò1 :
.
òò: ;(
m_Player_SwitchPerspective
òò; U
;
òòU V
public
óó 
InputAction
óó 
@Jump
óó  
=>
óó! #
	m_Wrapper
óó$ -
.
óó- .
m_Player_Jump
óó. ;
;
óó; <
public
ôô 
InputAction
ôô 
@Use
ôô 
=>
ôô  "
	m_Wrapper
ôô# ,
.
ôô, -
m_Player_Use
ôô- 9
;
ôô9 :
public
õõ 
InputAction
õõ 
@Reload
õõ "
=>
õõ# %
	m_Wrapper
õõ& /
.
õõ/ 0
m_Player_Reload
õõ0 ?
;
õõ? @
public
öö 
InputAction
öö 
@LockCursor
öö &
=>
öö' )
	m_Wrapper
öö* 3
.
öö3 4!
m_Player_LockCursor
öö4 G
;
ööG H
public
÷÷ 
InputAction
÷÷ 
@Aim
÷÷ 
=>
÷÷  "
	m_Wrapper
÷÷# ,
.
÷÷, -
m_Player_Aim
÷÷- 9
;
÷÷9 :
public
øø 
InputAction
øø 
@Sprint
øø "
=>
øø# %
	m_Wrapper
øø& /
.
øø/ 0
m_Player_Sprint
øø0 ?
;
øø? @
public
ùù 
InputAction
ùù 
@SwitchWeapon
ùù (
=>
ùù) +
	m_Wrapper
ùù, 5
.
ùù5 6#
m_Player_SwitchWeapon
ùù6 K
;
ùùK L
public
úú 
InputActionMap
úú 
Get
úú !
(
úú! "
)
úú" #
{
úú$ %
return
úú& ,
	m_Wrapper
úú- 6
.
úú6 7
m_Player
úú7 ?
;
úú? @
}
úúA B
public
ûû 
void
ûû 
Enable
ûû 
(
ûû 
)
ûû 
{
ûû 
Get
ûû "
(
ûû" #
)
ûû# $
.
ûû$ %
Enable
ûû% +
(
ûû+ ,
)
ûû, -
;
ûû- .
}
ûû/ 0
public
üü 
void
üü 
Disable
üü 
(
üü 
)
üü 
{
üü 
Get
üü  #
(
üü# $
)
üü$ %
.
üü% &
Disable
üü& -
(
üü- .
)
üü. /
;
üü/ 0
}
üü1 2
public
ıı 
bool
ıı 
enabled
ıı 
=>
ıı 
Get
ıı "
(
ıı" #
)
ıı# $
.
ıı$ %
enabled
ıı% ,
;
ıı, -
public
şş 
static
şş 
implicit
şş 
operator
şş '
InputActionMap
şş( 6
(
şş6 7
PlayerActions
şş7 D
set
şşE H
)
şşH I
{
şşJ K
return
şşL R
set
şşS V
.
şşV W
Get
şşW Z
(
şşZ [
)
şş[ \
;
şş\ ]
}
şş^ _
public
ÿÿ 
void
ÿÿ 
SetCallbacks
ÿÿ  
(
ÿÿ  !
IPlayerActions
ÿÿ! /
instance
ÿÿ0 8
)
ÿÿ8 9
{
€	€	 	
if
		 
(
		 
	m_Wrapper
		 
.
		 .
 m_PlayerActionsCallbackInterface
		 :
!=
		; =
null
		> B
)
		B C
{
‚	‚	 
@Move
ƒ	ƒ	 
.
ƒ	ƒ	 
started
ƒ	ƒ	 
-=
ƒ	ƒ	  
	m_Wrapper
ƒ	ƒ	! *
.
ƒ	ƒ	* +.
 m_PlayerActionsCallbackInterface
ƒ	ƒ	+ K
.
ƒ	ƒ	K L
OnMove
ƒ	ƒ	L R
;
ƒ	ƒ	R S
@Move
„	„	 
.
„	„	 
	performed
„	„	 
-=
„	„	  "
	m_Wrapper
„	„	# ,
.
„	„	, -.
 m_PlayerActionsCallbackInterface
„	„	- M
.
„	„	M N
OnMove
„	„	N T
;
„	„	T U
@Move
…	…	 
.
…	…	 
canceled
…	…	 
-=
…	…	 !
	m_Wrapper
…	…	" +
.
…	…	+ ,.
 m_PlayerActionsCallbackInterface
…	…	, L
.
…	…	L M
OnMove
…	…	M S
;
…	…	S T
@Look
†	†	 
.
†	†	 
started
†	†	 
-=
†	†	  
	m_Wrapper
†	†	! *
.
†	†	* +.
 m_PlayerActionsCallbackInterface
†	†	+ K
.
†	†	K L
OnLook
†	†	L R
;
†	†	R S
@Look
‡	‡	 
.
‡	‡	 
	performed
‡	‡	 
-=
‡	‡	  "
	m_Wrapper
‡	‡	# ,
.
‡	‡	, -.
 m_PlayerActionsCallbackInterface
‡	‡	- M
.
‡	‡	M N
OnLook
‡	‡	N T
;
‡	‡	T U
@Look
ˆ	ˆ	 
.
ˆ	ˆ	 
canceled
ˆ	ˆ	 
-=
ˆ	ˆ	 !
	m_Wrapper
ˆ	ˆ	" +
.
ˆ	ˆ	+ ,.
 m_PlayerActionsCallbackInterface
ˆ	ˆ	, L
.
ˆ	ˆ	L M
OnLook
ˆ	ˆ	M S
;
ˆ	ˆ	S T
@Fire
‰	‰	 
.
‰	‰	 
started
‰	‰	 
-=
‰	‰	  
	m_Wrapper
‰	‰	! *
.
‰	‰	* +.
 m_PlayerActionsCallbackInterface
‰	‰	+ K
.
‰	‰	K L
OnFire
‰	‰	L R
;
‰	‰	R S
@Fire
Š	Š	 
.
Š	Š	 
	performed
Š	Š	 
-=
Š	Š	  "
	m_Wrapper
Š	Š	# ,
.
Š	Š	, -.
 m_PlayerActionsCallbackInterface
Š	Š	- M
.
Š	Š	M N
OnFire
Š	Š	N T
;
Š	Š	T U
@Fire
‹	‹	 
.
‹	‹	 
canceled
‹	‹	 
-=
‹	‹	 !
	m_Wrapper
‹	‹	" +
.
‹	‹	+ ,.
 m_PlayerActionsCallbackInterface
‹	‹	, L
.
‹	‹	L M
OnFire
‹	‹	M S
;
‹	‹	S T 
@SwitchPerspective
Œ	Œ	 "
.
Œ	Œ	" #
started
Œ	Œ	# *
-=
Œ	Œ	+ -
	m_Wrapper
Œ	Œ	. 7
.
Œ	Œ	7 8.
 m_PlayerActionsCallbackInterface
Œ	Œ	8 X
.
Œ	Œ	X Y!
OnSwitchPerspective
Œ	Œ	Y l
;
Œ	Œ	l m 
@SwitchPerspective
		 "
.
		" #
	performed
		# ,
-=
		- /
	m_Wrapper
		0 9
.
		9 :.
 m_PlayerActionsCallbackInterface
		: Z
.
		Z [!
OnSwitchPerspective
		[ n
;
		n o 
@SwitchPerspective
		 "
.
		" #
canceled
		# +
-=
		, .
	m_Wrapper
		/ 8
.
		8 9.
 m_PlayerActionsCallbackInterface
		9 Y
.
		Y Z!
OnSwitchPerspective
		Z m
;
		m n
@Jump
		 
.
		 
started
		 
-=
		  
	m_Wrapper
		! *
.
		* +.
 m_PlayerActionsCallbackInterface
		+ K
.
		K L
OnJump
		L R
;
		R S
@Jump
		 
.
		 
	performed
		 
-=
		  "
	m_Wrapper
		# ,
.
		, -.
 m_PlayerActionsCallbackInterface
		- M
.
		M N
OnJump
		N T
;
		T U
@Jump
‘	‘	 
.
‘	‘	 
canceled
‘	‘	 
-=
‘	‘	 !
	m_Wrapper
‘	‘	" +
.
‘	‘	+ ,.
 m_PlayerActionsCallbackInterface
‘	‘	, L
.
‘	‘	L M
OnJump
‘	‘	M S
;
‘	‘	S T
@Use
’	’	 
.
’	’	 
started
’	’	 
-=
’	’	 
	m_Wrapper
’	’	  )
.
’	’	) *.
 m_PlayerActionsCallbackInterface
’	’	* J
.
’	’	J K
OnUse
’	’	K P
;
’	’	P Q
@Use
“	“	 
.
“	“	 
	performed
“	“	 
-=
“	“	 !
	m_Wrapper
“	“	" +
.
“	“	+ ,.
 m_PlayerActionsCallbackInterface
“	“	, L
.
“	“	L M
OnUse
“	“	M R
;
“	“	R S
@Use
”	”	 
.
”	”	 
canceled
”	”	 
-=
”	”	  
	m_Wrapper
”	”	! *
.
”	”	* +.
 m_PlayerActionsCallbackInterface
”	”	+ K
.
”	”	K L
OnUse
”	”	L Q
;
”	”	Q R
@Reload
•	•	 
.
•	•	 
started
•	•	 
-=
•	•	  "
	m_Wrapper
•	•	# ,
.
•	•	, -.
 m_PlayerActionsCallbackInterface
•	•	- M
.
•	•	M N
OnReload
•	•	N V
;
•	•	V W
@Reload
–	–	 
.
–	–	 
	performed
–	–	 !
-=
–	–	" $
	m_Wrapper
–	–	% .
.
–	–	. /.
 m_PlayerActionsCallbackInterface
–	–	/ O
.
–	–	O P
OnReload
–	–	P X
;
–	–	X Y
@Reload
—	—	 
.
—	—	 
canceled
—	—	  
-=
—	—	! #
	m_Wrapper
—	—	$ -
.
—	—	- ..
 m_PlayerActionsCallbackInterface
—	—	. N
.
—	—	N O
OnReload
—	—	O W
;
—	—	W X
@LockCursor
˜	˜	 
.
˜	˜	 
started
˜	˜	 #
-=
˜	˜	$ &
	m_Wrapper
˜	˜	' 0
.
˜	˜	0 1.
 m_PlayerActionsCallbackInterface
˜	˜	1 Q
.
˜	˜	Q R
OnLockCursor
˜	˜	R ^
;
˜	˜	^ _
@LockCursor
™	™	 
.
™	™	 
	performed
™	™	 %
-=
™	™	& (
	m_Wrapper
™	™	) 2
.
™	™	2 3.
 m_PlayerActionsCallbackInterface
™	™	3 S
.
™	™	S T
OnLockCursor
™	™	T `
;
™	™	` a
@LockCursor
š	š	 
.
š	š	 
canceled
š	š	 $
-=
š	š	% '
	m_Wrapper
š	š	( 1
.
š	š	1 2.
 m_PlayerActionsCallbackInterface
š	š	2 R
.
š	š	R S
OnLockCursor
š	š	S _
;
š	š	_ `
@Aim
›	›	 
.
›	›	 
started
›	›	 
-=
›	›	 
	m_Wrapper
›	›	  )
.
›	›	) *.
 m_PlayerActionsCallbackInterface
›	›	* J
.
›	›	J K
OnAim
›	›	K P
;
›	›	P Q
@Aim
œ	œ	 
.
œ	œ	 
	performed
œ	œ	 
-=
œ	œ	 !
	m_Wrapper
œ	œ	" +
.
œ	œ	+ ,.
 m_PlayerActionsCallbackInterface
œ	œ	, L
.
œ	œ	L M
OnAim
œ	œ	M R
;
œ	œ	R S
@Aim
		 
.
		 
canceled
		 
-=
		  
	m_Wrapper
		! *
.
		* +.
 m_PlayerActionsCallbackInterface
		+ K
.
		K L
OnAim
		L Q
;
		Q R
@Sprint
		 
.
		 
started
		 
-=
		  "
	m_Wrapper
		# ,
.
		, -.
 m_PlayerActionsCallbackInterface
		- M
.
		M N
OnSprint
		N V
;
		V W
@Sprint
Ÿ	Ÿ	 
.
Ÿ	Ÿ	 
	performed
Ÿ	Ÿ	 !
-=
Ÿ	Ÿ	" $
	m_Wrapper
Ÿ	Ÿ	% .
.
Ÿ	Ÿ	. /.
 m_PlayerActionsCallbackInterface
Ÿ	Ÿ	/ O
.
Ÿ	Ÿ	O P
OnSprint
Ÿ	Ÿ	P X
;
Ÿ	Ÿ	X Y
@Sprint
 	 	 
.
 	 	 
canceled
 	 	  
-=
 	 	! #
	m_Wrapper
 	 	$ -
.
 	 	- ..
 m_PlayerActionsCallbackInterface
 	 	. N
.
 	 	N O
OnSprint
 	 	O W
;
 	 	W X
@SwitchWeapon
¡	¡	 
.
¡	¡	 
started
¡	¡	 %
-=
¡	¡	& (
	m_Wrapper
¡	¡	) 2
.
¡	¡	2 3.
 m_PlayerActionsCallbackInterface
¡	¡	3 S
.
¡	¡	S T
OnSwitchWeapon
¡	¡	T b
;
¡	¡	b c
@SwitchWeapon
¢	¢	 
.
¢	¢	 
	performed
¢	¢	 '
-=
¢	¢	( *
	m_Wrapper
¢	¢	+ 4
.
¢	¢	4 5.
 m_PlayerActionsCallbackInterface
¢	¢	5 U
.
¢	¢	U V
OnSwitchWeapon
¢	¢	V d
;
¢	¢	d e
@SwitchWeapon
£	£	 
.
£	£	 
canceled
£	£	 &
-=
£	£	' )
	m_Wrapper
£	£	* 3
.
£	£	3 4.
 m_PlayerActionsCallbackInterface
£	£	4 T
.
£	£	T U
OnSwitchWeapon
£	£	U c
;
£	£	c d
}
¤	¤	 
	m_Wrapper
¥	¥	 
.
¥	¥	 .
 m_PlayerActionsCallbackInterface
¥	¥	 6
=
¥	¥	7 8
instance
¥	¥	9 A
;
¥	¥	A B
if
¦	¦	 
(
¦	¦	 
instance
¦	¦	 
!=
¦	¦	 
null
¦	¦	  
)
¦	¦	  !
{
§	§	 
@Move
¨	¨	 
.
¨	¨	 
started
¨	¨	 
+=
¨	¨	  
instance
¨	¨	! )
.
¨	¨	) *
OnMove
¨	¨	* 0
;
¨	¨	0 1
@Move
©	©	 
.
©	©	 
	performed
©	©	 
+=
©	©	  "
instance
©	©	# +
.
©	©	+ ,
OnMove
©	©	, 2
;
©	©	2 3
@Move
ª	ª	 
.
ª	ª	 
canceled
ª	ª	 
+=
ª	ª	 !
instance
ª	ª	" *
.
ª	ª	* +
OnMove
ª	ª	+ 1
;
ª	ª	1 2
@Look
«	«	 
.
«	«	 
started
«	«	 
+=
«	«	  
instance
«	«	! )
.
«	«	) *
OnLook
«	«	* 0
;
«	«	0 1
@Look
¬	¬	 
.
¬	¬	 
	performed
¬	¬	 
+=
¬	¬	  "
instance
¬	¬	# +
.
¬	¬	+ ,
OnLook
¬	¬	, 2
;
¬	¬	2 3
@Look
­	­	 
.
­	­	 
canceled
­	­	 
+=
­	­	 !
instance
­	­	" *
.
­	­	* +
OnLook
­	­	+ 1
;
­	­	1 2
@Fire
®	®	 
.
®	®	 
started
®	®	 
+=
®	®	  
instance
®	®	! )
.
®	®	) *
OnFire
®	®	* 0
;
®	®	0 1
@Fire
¯	¯	 
.
¯	¯	 
	performed
¯	¯	 
+=
¯	¯	  "
instance
¯	¯	# +
.
¯	¯	+ ,
OnFire
¯	¯	, 2
;
¯	¯	2 3
@Fire
°	°	 
.
°	°	 
canceled
°	°	 
+=
°	°	 !
instance
°	°	" *
.
°	°	* +
OnFire
°	°	+ 1
;
°	°	1 2 
@SwitchPerspective
±	±	 "
.
±	±	" #
started
±	±	# *
+=
±	±	+ -
instance
±	±	. 6
.
±	±	6 7!
OnSwitchPerspective
±	±	7 J
;
±	±	J K 
@SwitchPerspective
²	²	 "
.
²	²	" #
	performed
²	²	# ,
+=
²	²	- /
instance
²	²	0 8
.
²	²	8 9!
OnSwitchPerspective
²	²	9 L
;
²	²	L M 
@SwitchPerspective
³	³	 "
.
³	³	" #
canceled
³	³	# +
+=
³	³	, .
instance
³	³	/ 7
.
³	³	7 8!
OnSwitchPerspective
³	³	8 K
;
³	³	K L
@Jump
´	´	 
.
´	´	 
started
´	´	 
+=
´	´	  
instance
´	´	! )
.
´	´	) *
OnJump
´	´	* 0
;
´	´	0 1
@Jump
µ	µ	 
.
µ	µ	 
	performed
µ	µ	 
+=
µ	µ	  "
instance
µ	µ	# +
.
µ	µ	+ ,
OnJump
µ	µ	, 2
;
µ	µ	2 3
@Jump
¶	¶	 
.
¶	¶	 
canceled
¶	¶	 
+=
¶	¶	 !
instance
¶	¶	" *
.
¶	¶	* +
OnJump
¶	¶	+ 1
;
¶	¶	1 2
@Use
·	·	 
.
·	·	 
started
·	·	 
+=
·	·	 
instance
·	·	  (
.
·	·	( )
OnUse
·	·	) .
;
·	·	. /
@Use
¸	¸	 
.
¸	¸	 
	performed
¸	¸	 
+=
¸	¸	 !
instance
¸	¸	" *
.
¸	¸	* +
OnUse
¸	¸	+ 0
;
¸	¸	0 1
@Use
¹	¹	 
.
¹	¹	 
canceled
¹	¹	 
+=
¹	¹	  
instance
¹	¹	! )
.
¹	¹	) *
OnUse
¹	¹	* /
;
¹	¹	/ 0
@Reload
º	º	 
.
º	º	 
started
º	º	 
+=
º	º	  "
instance
º	º	# +
.
º	º	+ ,
OnReload
º	º	, 4
;
º	º	4 5
@Reload
»	»	 
.
»	»	 
	performed
»	»	 !
+=
»	»	" $
instance
»	»	% -
.
»	»	- .
OnReload
»	»	. 6
;
»	»	6 7
@Reload
¼	¼	 
.
¼	¼	 
canceled
¼	¼	  
+=
¼	¼	! #
instance
¼	¼	$ ,
.
¼	¼	, -
OnReload
¼	¼	- 5
;
¼	¼	5 6
@LockCursor
½	½	 
.
½	½	 
started
½	½	 #
+=
½	½	$ &
instance
½	½	' /
.
½	½	/ 0
OnLockCursor
½	½	0 <
;
½	½	< =
@LockCursor
¾	¾	 
.
¾	¾	 
	performed
¾	¾	 %
+=
¾	¾	& (
instance
¾	¾	) 1
.
¾	¾	1 2
OnLockCursor
¾	¾	2 >
;
¾	¾	> ?
@LockCursor
¿	¿	 
.
¿	¿	 
canceled
¿	¿	 $
+=
¿	¿	% '
instance
¿	¿	( 0
.
¿	¿	0 1
OnLockCursor
¿	¿	1 =
;
¿	¿	= >
@Aim
À	À	 
.
À	À	 
started
À	À	 
+=
À	À	 
instance
À	À	  (
.
À	À	( )
OnAim
À	À	) .
;
À	À	. /
@Aim
Á	Á	 
.
Á	Á	 
	performed
Á	Á	 
+=
Á	Á	 !
instance
Á	Á	" *
.
Á	Á	* +
OnAim
Á	Á	+ 0
;
Á	Á	0 1
@Aim
Â	Â	 
.
Â	Â	 
canceled
Â	Â	 
+=
Â	Â	  
instance
Â	Â	! )
.
Â	Â	) *
OnAim
Â	Â	* /
;
Â	Â	/ 0
@Sprint
Ã	Ã	 
.
Ã	Ã	 
started
Ã	Ã	 
+=
Ã	Ã	  "
instance
Ã	Ã	# +
.
Ã	Ã	+ ,
OnSprint
Ã	Ã	, 4
;
Ã	Ã	4 5
@Sprint
Ä	Ä	 
.
Ä	Ä	 
	performed
Ä	Ä	 !
+=
Ä	Ä	" $
instance
Ä	Ä	% -
.
Ä	Ä	- .
OnSprint
Ä	Ä	. 6
;
Ä	Ä	6 7
@Sprint
Å	Å	 
.
Å	Å	 
canceled
Å	Å	  
+=
Å	Å	! #
instance
Å	Å	$ ,
.
Å	Å	, -
OnSprint
Å	Å	- 5
;
Å	Å	5 6
@SwitchWeapon
Æ	Æ	 
.
Æ	Æ	 
started
Æ	Æ	 %
+=
Æ	Æ	& (
instance
Æ	Æ	) 1
.
Æ	Æ	1 2
OnSwitchWeapon
Æ	Æ	2 @
;
Æ	Æ	@ A
@SwitchWeapon
Ç	Ç	 
.
Ç	Ç	 
	performed
Ç	Ç	 '
+=
Ç	Ç	( *
instance
Ç	Ç	+ 3
.
Ç	Ç	3 4
OnSwitchWeapon
Ç	Ç	4 B
;
Ç	Ç	B C
@SwitchWeapon
È	È	 
.
È	È	 
canceled
È	È	 &
+=
È	È	' )
instance
È	È	* 2
.
È	È	2 3
OnSwitchWeapon
È	È	3 A
;
È	È	A B
}
É	É	 
}
Ê	Ê	 	
}
Ë	Ë	 
public
Ì	Ì	 

PlayerActions
Ì	Ì	 
@Player
Ì	Ì	  
=>
Ì	Ì	! #
new
Ì	Ì	$ '
PlayerActions
Ì	Ì	( 5
(
Ì	Ì	5 6
this
Ì	Ì	6 :
)
Ì	Ì	: ;
;
Ì	Ì	; <
private
Ï	Ï	 
readonly
Ï	Ï	 
InputActionMap
Ï	Ï	 #
m_UI
Ï	Ï	$ (
;
Ï	Ï	( )
private
Ğ	Ğ	 

IUIActions
Ğ	Ğ	 *
m_UIActionsCallbackInterface
Ğ	Ğ	 3
;
Ğ	Ğ	3 4
private
Ñ	Ñ	 
readonly
Ñ	Ñ	 
InputAction
Ñ	Ñ	  
m_UI_Navigate
Ñ	Ñ	! .
;
Ñ	Ñ	. /
private
Ò	Ò	 
readonly
Ò	Ò	 
InputAction
Ò	Ò	  
m_UI_Submit
Ò	Ò	! ,
;
Ò	Ò	, -
private
Ó	Ó	 
readonly
Ó	Ó	 
InputAction
Ó	Ó	  
m_UI_Cancel
Ó	Ó	! ,
;
Ó	Ó	, -
private
Ô	Ô	 
readonly
Ô	Ô	 
InputAction
Ô	Ô	  

m_UI_Point
Ô	Ô	! +
;
Ô	Ô	+ ,
private
Õ	Õ	 
readonly
Õ	Õ	 
InputAction
Õ	Õ	  

m_UI_Click
Õ	Õ	! +
;
Õ	Õ	+ ,
private
Ö	Ö	 
readonly
Ö	Ö	 
InputAction
Ö	Ö	  
m_UI_ScrollWheel
Ö	Ö	! 1
;
Ö	Ö	1 2
private
×	×	 
readonly
×	×	 
InputAction
×	×	  
m_UI_MiddleClick
×	×	! 1
;
×	×	1 2
private
Ø	Ø	 
readonly
Ø	Ø	 
InputAction
Ø	Ø	  
m_UI_RightClick
Ø	Ø	! 0
;
Ø	Ø	0 1
private
Ù	Ù	 
readonly
Ù	Ù	 
InputAction
Ù	Ù	  (
m_UI_TrackedDevicePosition
Ù	Ù	! ;
;
Ù	Ù	; <
private
Ú	Ú	 
readonly
Ú	Ú	 
InputAction
Ú	Ú	  +
m_UI_TrackedDeviceOrientation
Ú	Ú	! >
;
Ú	Ú	> ?
public
Û	Û	 

struct
Û	Û	 
	UIActions
Û	Û	 
{
Ü	Ü	 
private
İ	İ	 
@MasterInput
İ	İ	 
	m_Wrapper
İ	İ	 &
;
İ	İ	& '
public
Ş	Ş	 
	UIActions
Ş	Ş	 
(
Ş	Ş	 
@MasterInput
Ş	Ş	 %
wrapper
Ş	Ş	& -
)
Ş	Ş	- .
{
Ş	Ş	/ 0
	m_Wrapper
Ş	Ş	1 :
=
Ş	Ş	; <
wrapper
Ş	Ş	= D
;
Ş	Ş	D E
}
Ş	Ş	F G
public
ß	ß	 
InputAction
ß	ß	 
	@Navigate
ß	ß	 $
=>
ß	ß	% '
	m_Wrapper
ß	ß	( 1
.
ß	ß	1 2
m_UI_Navigate
ß	ß	2 ?
;
ß	ß	? @
public
à	à	 
InputAction
à	à	 
@Submit
à	à	 "
=>
à	à	# %
	m_Wrapper
à	à	& /
.
à	à	/ 0
m_UI_Submit
à	à	0 ;
;
à	à	; <
public
á	á	 
InputAction
á	á	 
@Cancel
á	á	 "
=>
á	á	# %
	m_Wrapper
á	á	& /
.
á	á	/ 0
m_UI_Cancel
á	á	0 ;
;
á	á	; <
public
â	â	 
InputAction
â	â	 
@Point
â	â	 !
=>
â	â	" $
	m_Wrapper
â	â	% .
.
â	â	. /

m_UI_Point
â	â	/ 9
;
â	â	9 :
public
ã	ã	 
InputAction
ã	ã	 
@Click
ã	ã	 !
=>
ã	ã	" $
	m_Wrapper
ã	ã	% .
.
ã	ã	. /

m_UI_Click
ã	ã	/ 9
;
ã	ã	9 :
public
ä	ä	 
InputAction
ä	ä	 
@ScrollWheel
ä	ä	 '
=>
ä	ä	( *
	m_Wrapper
ä	ä	+ 4
.
ä	ä	4 5
m_UI_ScrollWheel
ä	ä	5 E
;
ä	ä	E F
public
å	å	 
InputAction
å	å	 
@MiddleClick
å	å	 '
=>
å	å	( *
	m_Wrapper
å	å	+ 4
.
å	å	4 5
m_UI_MiddleClick
å	å	5 E
;
å	å	E F
public
æ	æ	 
InputAction
æ	æ	 
@RightClick
æ	æ	 &
=>
æ	æ	' )
	m_Wrapper
æ	æ	* 3
.
æ	æ	3 4
m_UI_RightClick
æ	æ	4 C
;
æ	æ	C D
public
ç	ç	 
InputAction
ç	ç	 $
@TrackedDevicePosition
ç	ç	 1
=>
ç	ç	2 4
	m_Wrapper
ç	ç	5 >
.
ç	ç	> ?(
m_UI_TrackedDevicePosition
ç	ç	? Y
;
ç	ç	Y Z
public
è	è	 
InputAction
è	è	 '
@TrackedDeviceOrientation
è	è	 4
=>
è	è	5 7
	m_Wrapper
è	è	8 A
.
è	è	A B+
m_UI_TrackedDeviceOrientation
è	è	B _
;
è	è	_ `
public
é	é	 
InputActionMap
é	é	 
Get
é	é	 !
(
é	é	! "
)
é	é	" #
{
é	é	$ %
return
é	é	& ,
	m_Wrapper
é	é	- 6
.
é	é	6 7
m_UI
é	é	7 ;
;
é	é	; <
}
é	é	= >
public
ê	ê	 
void
ê	ê	 
Enable
ê	ê	 
(
ê	ê	 
)
ê	ê	 
{
ê	ê	 
Get
ê	ê	 "
(
ê	ê	" #
)
ê	ê	# $
.
ê	ê	$ %
Enable
ê	ê	% +
(
ê	ê	+ ,
)
ê	ê	, -
;
ê	ê	- .
}
ê	ê	/ 0
public
ë	ë	 
void
ë	ë	 
Disable
ë	ë	 
(
ë	ë	 
)
ë	ë	 
{
ë	ë	 
Get
ë	ë	  #
(
ë	ë	# $
)
ë	ë	$ %
.
ë	ë	% &
Disable
ë	ë	& -
(
ë	ë	- .
)
ë	ë	. /
;
ë	ë	/ 0
}
ë	ë	1 2
public
ì	ì	 
bool
ì	ì	 
enabled
ì	ì	 
=>
ì	ì	 
Get
ì	ì	 "
(
ì	ì	" #
)
ì	ì	# $
.
ì	ì	$ %
enabled
ì	ì	% ,
;
ì	ì	, -
public
í	í	 
static
í	í	 
implicit
í	í	 
operator
í	í	 '
InputActionMap
í	í	( 6
(
í	í	6 7
	UIActions
í	í	7 @
set
í	í	A D
)
í	í	D E
{
í	í	F G
return
í	í	H N
set
í	í	O R
.
í	í	R S
Get
í	í	S V
(
í	í	V W
)
í	í	W X
;
í	í	X Y
}
í	í	Z [
public
î	î	 
void
î	î	 
SetCallbacks
î	î	  
(
î	î	  !

IUIActions
î	î	! +
instance
î	î	, 4
)
î	î	4 5
{
ï	ï	 	
if
ğ	ğ	 
(
ğ	ğ	 
	m_Wrapper
ğ	ğ	 
.
ğ	ğ	 *
m_UIActionsCallbackInterface
ğ	ğ	 6
!=
ğ	ğ	7 9
null
ğ	ğ	: >
)
ğ	ğ	> ?
{
ñ	ñ	 
	@Navigate
ò	ò	 
.
ò	ò	 
started
ò	ò	 !
-=
ò	ò	" $
	m_Wrapper
ò	ò	% .
.
ò	ò	. /*
m_UIActionsCallbackInterface
ò	ò	/ K
.
ò	ò	K L

OnNavigate
ò	ò	L V
;
ò	ò	V W
	@Navigate
ó	ó	 
.
ó	ó	 
	performed
ó	ó	 #
-=
ó	ó	$ &
	m_Wrapper
ó	ó	' 0
.
ó	ó	0 1*
m_UIActionsCallbackInterface
ó	ó	1 M
.
ó	ó	M N

OnNavigate
ó	ó	N X
;
ó	ó	X Y
	@Navigate
ô	ô	 
.
ô	ô	 
canceled
ô	ô	 "
-=
ô	ô	# %
	m_Wrapper
ô	ô	& /
.
ô	ô	/ 0*
m_UIActionsCallbackInterface
ô	ô	0 L
.
ô	ô	L M

OnNavigate
ô	ô	M W
;
ô	ô	W X
@Submit
õ	õ	 
.
õ	õ	 
started
õ	õ	 
-=
õ	õ	  "
	m_Wrapper
õ	õ	# ,
.
õ	õ	, -*
m_UIActionsCallbackInterface
õ	õ	- I
.
õ	õ	I J
OnSubmit
õ	õ	J R
;
õ	õ	R S
@Submit
ö	ö	 
.
ö	ö	 
	performed
ö	ö	 !
-=
ö	ö	" $
	m_Wrapper
ö	ö	% .
.
ö	ö	. /*
m_UIActionsCallbackInterface
ö	ö	/ K
.
ö	ö	K L
OnSubmit
ö	ö	L T
;
ö	ö	T U
@Submit
÷	÷	 
.
÷	÷	 
canceled
÷	÷	  
-=
÷	÷	! #
	m_Wrapper
÷	÷	$ -
.
÷	÷	- .*
m_UIActionsCallbackInterface
÷	÷	. J
.
÷	÷	J K
OnSubmit
÷	÷	K S
;
÷	÷	S T
@Cancel
ø	ø	 
.
ø	ø	 
started
ø	ø	 
-=
ø	ø	  "
	m_Wrapper
ø	ø	# ,
.
ø	ø	, -*
m_UIActionsCallbackInterface
ø	ø	- I
.
ø	ø	I J
OnCancel
ø	ø	J R
;
ø	ø	R S
@Cancel
ù	ù	 
.
ù	ù	 
	performed
ù	ù	 !
-=
ù	ù	" $
	m_Wrapper
ù	ù	% .
.
ù	ù	. /*
m_UIActionsCallbackInterface
ù	ù	/ K
.
ù	ù	K L
OnCancel
ù	ù	L T
;
ù	ù	T U
@Cancel
ú	ú	 
.
ú	ú	 
canceled
ú	ú	  
-=
ú	ú	! #
	m_Wrapper
ú	ú	$ -
.
ú	ú	- .*
m_UIActionsCallbackInterface
ú	ú	. J
.
ú	ú	J K
OnCancel
ú	ú	K S
;
ú	ú	S T
@Point
û	û	 
.
û	û	 
started
û	û	 
-=
û	û	 !
	m_Wrapper
û	û	" +
.
û	û	+ ,*
m_UIActionsCallbackInterface
û	û	, H
.
û	û	H I
OnPoint
û	û	I P
;
û	û	P Q
@Point
ü	ü	 
.
ü	ü	 
	performed
ü	ü	  
-=
ü	ü	! #
	m_Wrapper
ü	ü	$ -
.
ü	ü	- .*
m_UIActionsCallbackInterface
ü	ü	. J
.
ü	ü	J K
OnPoint
ü	ü	K R
;
ü	ü	R S
@Point
ı	ı	 
.
ı	ı	 
canceled
ı	ı	 
-=
ı	ı	  "
	m_Wrapper
ı	ı	# ,
.
ı	ı	, -*
m_UIActionsCallbackInterface
ı	ı	- I
.
ı	ı	I J
OnPoint
ı	ı	J Q
;
ı	ı	Q R
@Click
ş	ş	 
.
ş	ş	 
started
ş	ş	 
-=
ş	ş	 !
	m_Wrapper
ş	ş	" +
.
ş	ş	+ ,*
m_UIActionsCallbackInterface
ş	ş	, H
.
ş	ş	H I
OnClick
ş	ş	I P
;
ş	ş	P Q
@Click
ÿ	ÿ	 
.
ÿ	ÿ	 
	performed
ÿ	ÿ	  
-=
ÿ	ÿ	! #
	m_Wrapper
ÿ	ÿ	$ -
.
ÿ	ÿ	- .*
m_UIActionsCallbackInterface
ÿ	ÿ	. J
.
ÿ	ÿ	J K
OnClick
ÿ	ÿ	K R
;
ÿ	ÿ	R S
@Click
€
€
 
.
€
€
 
canceled
€
€
 
-=
€
€
  "
	m_Wrapper
€
€
# ,
.
€
€
, -*
m_UIActionsCallbackInterface
€
€
- I
.
€
€
I J
OnClick
€
€
J Q
;
€
€
Q R
@ScrollWheel


 
.


 
started


 $
-=


% '
	m_Wrapper


( 1
.


1 2*
m_UIActionsCallbackInterface


2 N
.


N O
OnScrollWheel


O \
;


\ ]
@ScrollWheel
‚
‚
 
.
‚
‚
 
	performed
‚
‚
 &
-=
‚
‚
' )
	m_Wrapper
‚
‚
* 3
.
‚
‚
3 4*
m_UIActionsCallbackInterface
‚
‚
4 P
.
‚
‚
P Q
OnScrollWheel
‚
‚
Q ^
;
‚
‚
^ _
@ScrollWheel
ƒ
ƒ
 
.
ƒ
ƒ
 
canceled
ƒ
ƒ
 %
-=
ƒ
ƒ
& (
	m_Wrapper
ƒ
ƒ
) 2
.
ƒ
ƒ
2 3*
m_UIActionsCallbackInterface
ƒ
ƒ
3 O
.
ƒ
ƒ
O P
OnScrollWheel
ƒ
ƒ
P ]
;
ƒ
ƒ
] ^
@MiddleClick
„
„
 
.
„
„
 
started
„
„
 $
-=
„
„
% '
	m_Wrapper
„
„
( 1
.
„
„
1 2*
m_UIActionsCallbackInterface
„
„
2 N
.
„
„
N O
OnMiddleClick
„
„
O \
;
„
„
\ ]
@MiddleClick
…
…
 
.
…
…
 
	performed
…
…
 &
-=
…
…
' )
	m_Wrapper
…
…
* 3
.
…
…
3 4*
m_UIActionsCallbackInterface
…
…
4 P
.
…
…
P Q
OnMiddleClick
…
…
Q ^
;
…
…
^ _
@MiddleClick
†
†
 
.
†
†
 
canceled
†
†
 %
-=
†
†
& (
	m_Wrapper
†
†
) 2
.
†
†
2 3*
m_UIActionsCallbackInterface
†
†
3 O
.
†
†
O P
OnMiddleClick
†
†
P ]
;
†
†
] ^
@RightClick
‡
‡
 
.
‡
‡
 
started
‡
‡
 #
-=
‡
‡
$ &
	m_Wrapper
‡
‡
' 0
.
‡
‡
0 1*
m_UIActionsCallbackInterface
‡
‡
1 M
.
‡
‡
M N
OnRightClick
‡
‡
N Z
;
‡
‡
Z [
@RightClick
ˆ
ˆ
 
.
ˆ
ˆ
 
	performed
ˆ
ˆ
 %
-=
ˆ
ˆ
& (
	m_Wrapper
ˆ
ˆ
) 2
.
ˆ
ˆ
2 3*
m_UIActionsCallbackInterface
ˆ
ˆ
3 O
.
ˆ
ˆ
O P
OnRightClick
ˆ
ˆ
P \
;
ˆ
ˆ
\ ]
@RightClick
‰
‰
 
.
‰
‰
 
canceled
‰
‰
 $
-=
‰
‰
% '
	m_Wrapper
‰
‰
( 1
.
‰
‰
1 2*
m_UIActionsCallbackInterface
‰
‰
2 N
.
‰
‰
N O
OnRightClick
‰
‰
O [
;
‰
‰
[ \$
@TrackedDevicePosition
Š
Š
 &
.
Š
Š
& '
started
Š
Š
' .
-=
Š
Š
/ 1
	m_Wrapper
Š
Š
2 ;
.
Š
Š
; <*
m_UIActionsCallbackInterface
Š
Š
< X
.
Š
Š
X Y%
OnTrackedDevicePosition
Š
Š
Y p
;
Š
Š
p q$
@TrackedDevicePosition
‹
‹
 &
.
‹
‹
& '
	performed
‹
‹
' 0
-=
‹
‹
1 3
	m_Wrapper
‹
‹
4 =
.
‹
‹
= >*
m_UIActionsCallbackInterface
‹
‹
> Z
.
‹
‹
Z [%
OnTrackedDevicePosition
‹
‹
[ r
;
‹
‹
r s$
@TrackedDevicePosition
Œ
Œ
 &
.
Œ
Œ
& '
canceled
Œ
Œ
' /
-=
Œ
Œ
0 2
	m_Wrapper
Œ
Œ
3 <
.
Œ
Œ
< =*
m_UIActionsCallbackInterface
Œ
Œ
= Y
.
Œ
Œ
Y Z%
OnTrackedDevicePosition
Œ
Œ
Z q
;
Œ
Œ
q r'
@TrackedDeviceOrientation


 )
.


) *
started


* 1
-=


2 4
	m_Wrapper


5 >
.


> ?*
m_UIActionsCallbackInterface


? [
.


[ \(
OnTrackedDeviceOrientation


\ v
;


v w'
@TrackedDeviceOrientation


 )
.


) *
	performed


* 3
-=


4 6
	m_Wrapper


7 @
.


@ A*
m_UIActionsCallbackInterface


A ]
.


] ^(
OnTrackedDeviceOrientation


^ x
;


x y'
@TrackedDeviceOrientation


 )
.


) *
canceled


* 2
-=


3 5
	m_Wrapper


6 ?
.


? @*
m_UIActionsCallbackInterface


@ \
.


\ ](
OnTrackedDeviceOrientation


] w
;


w x
}


 
	m_Wrapper
‘
‘
 
.
‘
‘
 *
m_UIActionsCallbackInterface
‘
‘
 2
=
‘
‘
3 4
instance
‘
‘
5 =
;
‘
‘
= >
if
’
’
 
(
’
’
 
instance
’
’
 
!=
’
’
 
null
’
’
  
)
’
’
  !
{
“
“
 
	@Navigate
”
”
 
.
”
”
 
started
”
”
 !
+=
”
”
" $
instance
”
”
% -
.
”
”
- .

OnNavigate
”
”
. 8
;
”
”
8 9
	@Navigate
•
•
 
.
•
•
 
	performed
•
•
 #
+=
•
•
$ &
instance
•
•
' /
.
•
•
/ 0

OnNavigate
•
•
0 :
;
•
•
: ;
	@Navigate
–
–
 
.
–
–
 
canceled
–
–
 "
+=
–
–
# %
instance
–
–
& .
.
–
–
. /

OnNavigate
–
–
/ 9
;
–
–
9 :
@Submit
—
—
 
.
—
—
 
started
—
—
 
+=
—
—
  "
instance
—
—
# +
.
—
—
+ ,
OnSubmit
—
—
, 4
;
—
—
4 5
@Submit
˜
˜
 
.
˜
˜
 
	performed
˜
˜
 !
+=
˜
˜
" $
instance
˜
˜
% -
.
˜
˜
- .
OnSubmit
˜
˜
. 6
;
˜
˜
6 7
@Submit
™
™
 
.
™
™
 
canceled
™
™
  
+=
™
™
! #
instance
™
™
$ ,
.
™
™
, -
OnSubmit
™
™
- 5
;
™
™
5 6
@Cancel
š
š
 
.
š
š
 
started
š
š
 
+=
š
š
  "
instance
š
š
# +
.
š
š
+ ,
OnCancel
š
š
, 4
;
š
š
4 5
@Cancel
›
›
 
.
›
›
 
	performed
›
›
 !
+=
›
›
" $
instance
›
›
% -
.
›
›
- .
OnCancel
›
›
. 6
;
›
›
6 7
@Cancel
œ
œ
 
.
œ
œ
 
canceled
œ
œ
  
+=
œ
œ
! #
instance
œ
œ
$ ,
.
œ
œ
, -
OnCancel
œ
œ
- 5
;
œ
œ
5 6
@Point


 
.


 
started


 
+=


 !
instance


" *
.


* +
OnPoint


+ 2
;


2 3
@Point


 
.


 
	performed


  
+=


! #
instance


$ ,
.


, -
OnPoint


- 4
;


4 5
@Point
Ÿ
Ÿ
 
.
Ÿ
Ÿ
 
canceled
Ÿ
Ÿ
 
+=
Ÿ
Ÿ
  "
instance
Ÿ
Ÿ
# +
.
Ÿ
Ÿ
+ ,
OnPoint
Ÿ
Ÿ
, 3
;
Ÿ
Ÿ
3 4
@Click
 
 
 
.
 
 
 
started
 
 
 
+=
 
 
 !
instance
 
 
" *
.
 
 
* +
OnClick
 
 
+ 2
;
 
 
2 3
@Click
¡
¡
 
.
¡
¡
 
	performed
¡
¡
  
+=
¡
¡
! #
instance
¡
¡
$ ,
.
¡
¡
, -
OnClick
¡
¡
- 4
;
¡
¡
4 5
@Click
¢
¢
 
.
¢
¢
 
canceled
¢
¢
 
+=
¢
¢
  "
instance
¢
¢
# +
.
¢
¢
+ ,
OnClick
¢
¢
, 3
;
¢
¢
3 4
@ScrollWheel
£
£
 
.
£
£
 
started
£
£
 $
+=
£
£
% '
instance
£
£
( 0
.
£
£
0 1
OnScrollWheel
£
£
1 >
;
£
£
> ?
@ScrollWheel
¤
¤
 
.
¤
¤
 
	performed
¤
¤
 &
+=
¤
¤
' )
instance
¤
¤
* 2
.
¤
¤
2 3
OnScrollWheel
¤
¤
3 @
;
¤
¤
@ A
@ScrollWheel
¥
¥
 
.
¥
¥
 
canceled
¥
¥
 %
+=
¥
¥
& (
instance
¥
¥
) 1
.
¥
¥
1 2
OnScrollWheel
¥
¥
2 ?
;
¥
¥
? @
@MiddleClick
¦
¦
 
.
¦
¦
 
started
¦
¦
 $
+=
¦
¦
% '
instance
¦
¦
( 0
.
¦
¦
0 1
OnMiddleClick
¦
¦
1 >
;
¦
¦
> ?
@MiddleClick
§
§
 
.
§
§
 
	performed
§
§
 &
+=
§
§
' )
instance
§
§
* 2
.
§
§
2 3
OnMiddleClick
§
§
3 @
;
§
§
@ A
@MiddleClick
¨
¨
 
.
¨
¨
 
canceled
¨
¨
 %
+=
¨
¨
& (
instance
¨
¨
) 1
.
¨
¨
1 2
OnMiddleClick
¨
¨
2 ?
;
¨
¨
? @
@RightClick
©
©
 
.
©
©
 
started
©
©
 #
+=
©
©
$ &
instance
©
©
' /
.
©
©
/ 0
OnRightClick
©
©
0 <
;
©
©
< =
@RightClick
ª
ª
 
.
ª
ª
 
	performed
ª
ª
 %
+=
ª
ª
& (
instance
ª
ª
) 1
.
ª
ª
1 2
OnRightClick
ª
ª
2 >
;
ª
ª
> ?
@RightClick
«
«
 
.
«
«
 
canceled
«
«
 $
+=
«
«
% '
instance
«
«
( 0
.
«
«
0 1
OnRightClick
«
«
1 =
;
«
«
= >$
@TrackedDevicePosition
¬
¬
 &
.
¬
¬
& '
started
¬
¬
' .
+=
¬
¬
/ 1
instance
¬
¬
2 :
.
¬
¬
: ;%
OnTrackedDevicePosition
¬
¬
; R
;
¬
¬
R S$
@TrackedDevicePosition
­
­
 &
.
­
­
& '
	performed
­
­
' 0
+=
­
­
1 3
instance
­
­
4 <
.
­
­
< =%
OnTrackedDevicePosition
­
­
= T
;
­
­
T U$
@TrackedDevicePosition
®
®
 &
.
®
®
& '
canceled
®
®
' /
+=
®
®
0 2
instance
®
®
3 ;
.
®
®
; <%
OnTrackedDevicePosition
®
®
< S
;
®
®
S T'
@TrackedDeviceOrientation
¯
¯
 )
.
¯
¯
) *
started
¯
¯
* 1
+=
¯
¯
2 4
instance
¯
¯
5 =
.
¯
¯
= >(
OnTrackedDeviceOrientation
¯
¯
> X
;
¯
¯
X Y'
@TrackedDeviceOrientation
°
°
 )
.
°
°
) *
	performed
°
°
* 3
+=
°
°
4 6
instance
°
°
7 ?
.
°
°
? @(
OnTrackedDeviceOrientation
°
°
@ Z
;
°
°
Z ['
@TrackedDeviceOrientation
±
±
 )
.
±
±
) *
canceled
±
±
* 2
+=
±
±
3 5
instance
±
±
6 >
.
±
±
> ?(
OnTrackedDeviceOrientation
±
±
? Y
;
±
±
Y Z
}
²
²
 
}
³
³
 	
}
´
´
 
public
µ
µ
 

	UIActions
µ
µ
 
@UI
µ
µ
 
=>
µ
µ
 
new
µ
µ
 
	UIActions
µ
µ
  )
(
µ
µ
) *
this
µ
µ
* .
)
µ
µ
. /
;
µ
µ
/ 0
private
¶
¶
 
int
¶
¶
 (
m_KeyboardMouseSchemeIndex
¶
¶
 *
=
¶
¶
+ ,
-
¶
¶
- .
$num
¶
¶
. /
;
¶
¶
/ 0
public
·
·
 
 
InputControlScheme
·
·
 !
KeyboardMouseScheme
·
·
 1
{
¸
¸
 
get
¹
¹
 
{
º
º
 	
if
»
»
 
(
»
»
 (
m_KeyboardMouseSchemeIndex
»
»
 *
==
»
»
+ -
-
»
»
. /
$num
»
»
/ 0
)
»
»
0 1(
m_KeyboardMouseSchemeIndex
»
»
2 L
=
»
»
M N
asset
»
»
O T
.
»
»
T U$
FindControlSchemeIndex
»
»
U k
(
»
»
k l
$str
»
»
l |
)
»
»
| }
;
»
»
} ~
return
¼
¼
 
asset
¼
¼
 
.
¼
¼
 
controlSchemes
¼
¼
 '
[
¼
¼
' ((
m_KeyboardMouseSchemeIndex
¼
¼
( B
]
¼
¼
B C
;
¼
¼
C D
}
½
½
 	
}
¾
¾
 
private
¿
¿
 
int
¿
¿
 "
m_GamepadSchemeIndex
¿
¿
 $
=
¿
¿
% &
-
¿
¿
' (
$num
¿
¿
( )
;
¿
¿
) *
public
À
À
 
 
InputControlScheme
À
À
 
GamepadScheme
À
À
 +
{
Á
Á
 
get
Â
Â
 
{
Ã
Ã
 	
if
Ä
Ä
 
(
Ä
Ä
 "
m_GamepadSchemeIndex
Ä
Ä
 $
==
Ä
Ä
% '
-
Ä
Ä
( )
$num
Ä
Ä
) *
)
Ä
Ä
* +"
m_GamepadSchemeIndex
Ä
Ä
, @
=
Ä
Ä
A B
asset
Ä
Ä
C H
.
Ä
Ä
H I$
FindControlSchemeIndex
Ä
Ä
I _
(
Ä
Ä
_ `
$str
Ä
Ä
` i
)
Ä
Ä
i j
;
Ä
Ä
j k
return
Å
Å
 
asset
Å
Å
 
.
Å
Å
 
controlSchemes
Å
Å
 '
[
Å
Å
' ("
m_GamepadSchemeIndex
Å
Å
( <
]
Å
Å
< =
;
Å
Å
= >
}
Æ
Æ
 	
}
Ç
Ç
 
private
È
È
 
int
È
È
  
m_TouchSchemeIndex
È
È
 "
=
È
È
# $
-
È
È
% &
$num
È
È
& '
;
È
È
' (
public
É
É
 
 
InputControlScheme
É
É
 
TouchScheme
É
É
 )
{
Ê
Ê
 
get
Ë
Ë
 
{
Ì
Ì
 	
if
Í
Í
 
(
Í
Í
  
m_TouchSchemeIndex
Í
Í
 "
==
Í
Í
# %
-
Í
Í
& '
$num
Í
Í
' (
)
Í
Í
( ) 
m_TouchSchemeIndex
Í
Í
* <
=
Í
Í
= >
asset
Í
Í
? D
.
Í
Í
D E$
FindControlSchemeIndex
Í
Í
E [
(
Í
Í
[ \
$str
Í
Í
\ c
)
Í
Í
c d
;
Í
Í
d e
return
Î
Î
 
asset
Î
Î
 
.
Î
Î
 
controlSchemes
Î
Î
 '
[
Î
Î
' ( 
m_TouchSchemeIndex
Î
Î
( :
]
Î
Î
: ;
;
Î
Î
; <
}
Ï
Ï
 	
}
Ğ
Ğ
 
private
Ñ
Ñ
 
int
Ñ
Ñ
 #
m_JoystickSchemeIndex
Ñ
Ñ
 %
=
Ñ
Ñ
& '
-
Ñ
Ñ
( )
$num
Ñ
Ñ
) *
;
Ñ
Ñ
* +
public
Ò
Ò
 
 
InputControlScheme
Ò
Ò
 
JoystickScheme
Ò
Ò
 ,
{
Ó
Ó
 
get
Ô
Ô
 
{
Õ
Õ
 	
if
Ö
Ö
 
(
Ö
Ö
 #
m_JoystickSchemeIndex
Ö
Ö
 %
==
Ö
Ö
& (
-
Ö
Ö
) *
$num
Ö
Ö
* +
)
Ö
Ö
+ ,#
m_JoystickSchemeIndex
Ö
Ö
- B
=
Ö
Ö
C D
asset
Ö
Ö
E J
.
Ö
Ö
J K$
FindControlSchemeIndex
Ö
Ö
K a
(
Ö
Ö
a b
$str
Ö
Ö
b l
)
Ö
Ö
l m
;
Ö
Ö
m n
return
×
×
 
asset
×
×
 
.
×
×
 
controlSchemes
×
×
 '
[
×
×
' (#
m_JoystickSchemeIndex
×
×
( =
]
×
×
= >
;
×
×
> ?
}
Ø
Ø
 	
}
Ù
Ù
 
private
Ú
Ú
 
int
Ú
Ú
 
m_XRSchemeIndex
Ú
Ú
 
=
Ú
Ú
  !
-
Ú
Ú
" #
$num
Ú
Ú
# $
;
Ú
Ú
$ %
public
Û
Û
 
 
InputControlScheme
Û
Û
 
XRScheme
Û
Û
 &
{
Ü
Ü
 
get
İ
İ
 
{
Ş
Ş
 	
if
ß
ß
 
(
ß
ß
 
m_XRSchemeIndex
ß
ß
 
==
ß
ß
  "
-
ß
ß
# $
$num
ß
ß
$ %
)
ß
ß
% &
m_XRSchemeIndex
ß
ß
' 6
=
ß
ß
7 8
asset
ß
ß
9 >
.
ß
ß
> ?$
FindControlSchemeIndex
ß
ß
? U
(
ß
ß
U V
$str
ß
ß
V Z
)
ß
ß
Z [
;
ß
ß
[ \
return
à
à
 
asset
à
à
 
.
à
à
 
controlSchemes
à
à
 '
[
à
à
' (
m_XRSchemeIndex
à
à
( 7
]
à
à
7 8
;
à
à
8 9
}
á
á
 	
}
â
â
 
public
ã
ã
 

	interface
ã
ã
 
IPlayerActions
ã
ã
 #
{
ä
ä
 
void
å
å
 
OnMove
å
å
 
(
å
å
 
InputAction
å
å
 
.
å
å
  
CallbackContext
å
å
  /
context
å
å
0 7
)
å
å
7 8
;
å
å
8 9
void
æ
æ
 
OnLook
æ
æ
 
(
æ
æ
 
InputAction
æ
æ
 
.
æ
æ
  
CallbackContext
æ
æ
  /
context
æ
æ
0 7
)
æ
æ
7 8
;
æ
æ
8 9
void
ç
ç
 
OnFire
ç
ç
 
(
ç
ç
 
InputAction
ç
ç
 
.
ç
ç
  
CallbackContext
ç
ç
  /
context
ç
ç
0 7
)
ç
ç
7 8
;
ç
ç
8 9
void
è
è
 !
OnSwitchPerspective
è
è
  
(
è
è
  !
InputAction
è
è
! ,
.
è
è
, -
CallbackContext
è
è
- <
context
è
è
= D
)
è
è
D E
;
è
è
E F
void
é
é
 
OnJump
é
é
 
(
é
é
 
InputAction
é
é
 
.
é
é
  
CallbackContext
é
é
  /
context
é
é
0 7
)
é
é
7 8
;
é
é
8 9
void
ê
ê
 
OnUse
ê
ê
 
(
ê
ê
 
InputAction
ê
ê
 
.
ê
ê
 
CallbackContext
ê
ê
 .
context
ê
ê
/ 6
)
ê
ê
6 7
;
ê
ê
7 8
void
ë
ë
 
OnReload
ë
ë
 
(
ë
ë
 
InputAction
ë
ë
 !
.
ë
ë
! "
CallbackContext
ë
ë
" 1
context
ë
ë
2 9
)
ë
ë
9 :
;
ë
ë
: ;
void
ì
ì
 
OnLockCursor
ì
ì
 
(
ì
ì
 
InputAction
ì
ì
 %
.
ì
ì
% &
CallbackContext
ì
ì
& 5
context
ì
ì
6 =
)
ì
ì
= >
;
ì
ì
> ?
void
í
í
 
OnAim
í
í
 
(
í
í
 
InputAction
í
í
 
.
í
í
 
CallbackContext
í
í
 .
context
í
í
/ 6
)
í
í
6 7
;
í
í
7 8
void
î
î
 
OnSprint
î
î
 
(
î
î
 
InputAction
î
î
 !
.
î
î
! "
CallbackContext
î
î
" 1
context
î
î
2 9
)
î
î
9 :
;
î
î
: ;
void
ï
ï
 
OnSwitchWeapon
ï
ï
 
(
ï
ï
 
InputAction
ï
ï
 '
.
ï
ï
' (
CallbackContext
ï
ï
( 7
context
ï
ï
8 ?
)
ï
ï
? @
;
ï
ï
@ A
}
ğ
ğ
 
public
ñ
ñ
 

	interface
ñ
ñ
 

IUIActions
ñ
ñ
 
{
ò
ò
 
void
ó
ó
 

OnNavigate
ó
ó
 
(
ó
ó
 
InputAction
ó
ó
 #
.
ó
ó
# $
CallbackContext
ó
ó
$ 3
context
ó
ó
4 ;
)
ó
ó
; <
;
ó
ó
< =
void
ô
ô
 
OnSubmit
ô
ô
 
(
ô
ô
 
InputAction
ô
ô
 !
.
ô
ô
! "
CallbackContext
ô
ô
" 1
context
ô
ô
2 9
)
ô
ô
9 :
;
ô
ô
: ;
void
õ
õ
 
OnCancel
õ
õ
 
(
õ
õ
 
InputAction
õ
õ
 !
.
õ
õ
! "
CallbackContext
õ
õ
" 1
context
õ
õ
2 9
)
õ
õ
9 :
;
õ
õ
: ;
void
ö
ö
 
OnPoint
ö
ö
 
(
ö
ö
 
InputAction
ö
ö
  
.
ö
ö
  !
CallbackContext
ö
ö
! 0
context
ö
ö
1 8
)
ö
ö
8 9
;
ö
ö
9 :
void
÷
÷
 
OnClick
÷
÷
 
(
÷
÷
 
InputAction
÷
÷
  
.
÷
÷
  !
CallbackContext
÷
÷
! 0
context
÷
÷
1 8
)
÷
÷
8 9
;
÷
÷
9 :
void
ø
ø
 
OnScrollWheel
ø
ø
 
(
ø
ø
 
InputAction
ø
ø
 &
.
ø
ø
& '
CallbackContext
ø
ø
' 6
context
ø
ø
7 >
)
ø
ø
> ?
;
ø
ø
? @
void
ù
ù
 
OnMiddleClick
ù
ù
 
(
ù
ù
 
InputAction
ù
ù
 &
.
ù
ù
& '
CallbackContext
ù
ù
' 6
context
ù
ù
7 >
)
ù
ù
> ?
;
ù
ù
? @
void
ú
ú
 
OnRightClick
ú
ú
 
(
ú
ú
 
InputAction
ú
ú
 %
.
ú
ú
% &
CallbackContext
ú
ú
& 5
context
ú
ú
6 =
)
ú
ú
= >
;
ú
ú
> ?
void
û
û
 %
OnTrackedDevicePosition
û
û
 $
(
û
û
$ %
InputAction
û
û
% 0
.
û
û
0 1
CallbackContext
û
û
1 @
context
û
û
A H
)
û
û
H I
;
û
û
I J
void
ü
ü
 (
OnTrackedDeviceOrientation
ü
ü
 '
(
ü
ü
' (
InputAction
ü
ü
( 3
.
ü
ü
3 4
CallbackContext
ü
ü
4 C
context
ü
ü
D K
)
ü
ü
K L
;
ü
ü
L M
}
ı
ı
 
}ş
ş
 