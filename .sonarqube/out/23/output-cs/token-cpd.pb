Ѥ
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
$str	�* 
)
�� 
;
�� 
m_Player
�� 
=
�� 
asset
�� 
.
�� 
FindActionMap
�� &
(
��& '
$str
��' /
,
��/ 0
throwIfNotFound
��1 @
:
��@ A
true
��B F
)
��F G
;
��G H
m_Player_Move
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Look
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Fire
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K(
m_Player_SwitchPerspective
�� "
=
��# $
m_Player
��% -
.
��- .

FindAction
��. 8
(
��8 9
$str
��9 M
,
��M N
throwIfNotFound
��O ^
:
��^ _
true
��` d
)
��d e
;
��e f
m_Player_Jump
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Use
�� 
=
�� 
m_Player
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 0
,
��0 1
throwIfNotFound
��2 A
:
��A B
true
��C G
)
��G H
;
��H I
m_Player_Reload
�� 
=
�� 
m_Player
�� "
.
��" #

FindAction
��# -
(
��- .
$str
��. 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O!
m_Player_LockCursor
�� 
=
�� 
m_Player
�� &
.
��& '

FindAction
��' 1
(
��1 2
$str
��2 ?
,
��? @
throwIfNotFound
��A P
:
��P Q
true
��R V
)
��V W
;
��W X
m_Player_Aim
�� 
=
�� 
m_Player
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 0
,
��0 1
throwIfNotFound
��2 A
:
��A B
true
��C G
)
��G H
;
��H I
m_Player_Sprint
�� 
=
�� 
m_Player
�� "
.
��" #

FindAction
��# -
(
��- .
$str
��. 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O
m_UI
�� 
=
�� 
asset
�� 
.
�� 
FindActionMap
�� "
(
��" #
$str
��# '
,
��' (
throwIfNotFound
��) 8
:
��8 9
true
��: >
)
��> ?
;
��? @
m_UI_Navigate
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� '
(
��' (
$str
��( 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_UI_Submit
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� %
(
��% &
$str
��& .
,
��. /
throwIfNotFound
��0 ?
:
��? @
true
��A E
)
��E F
;
��F G
m_UI_Cancel
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� %
(
��% &
$str
��& .
,
��. /
throwIfNotFound
��0 ?
:
��? @
true
��A E
)
��E F
;
��F G

m_UI_Point
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� $
(
��$ %
$str
��% ,
,
��, -
throwIfNotFound
��. =
:
��= >
true
��? C
)
��C D
;
��D E

m_UI_Click
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� $
(
��$ %
$str
��% ,
,
��, -
throwIfNotFound
��. =
:
��= >
true
��? C
)
��C D
;
��D E
m_UI_ScrollWheel
�� 
=
�� 
m_UI
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 8
,
��8 9
throwIfNotFound
��: I
:
��I J
true
��K O
)
��O P
;
��P Q
m_UI_MiddleClick
�� 
=
�� 
m_UI
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 8
,
��8 9
throwIfNotFound
��: I
:
��I J
true
��K O
)
��O P
;
��P Q
m_UI_RightClick
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� )
(
��) *
$str
��* 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O(
m_UI_TrackedDevicePosition
�� "
=
��# $
m_UI
��% )
.
��) *

FindAction
��* 4
(
��4 5
$str
��5 L
,
��L M
throwIfNotFound
��N ]
:
��] ^
true
��_ c
)
��c d
;
��d e+
m_UI_TrackedDeviceOrientation
�� %
=
��& '
m_UI
��( ,
.
��, -

FindAction
��- 7
(
��7 8
$str
��8 R
,
��R S
throwIfNotFound
��T c
:
��c d
true
��e i
)
��i j
;
��j k
}
�� 
public
�� 

void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 
UnityEngine
�� 
.
�� 
Object
�� 
.
�� 
Destroy
�� "
(
��" #
asset
��# (
)
��( )
;
��) *
}
�� 
public
�� 

InputBinding
�� 
?
�� 
bindingMask
�� $
{
�� 
get
�� 
=>
�� 
asset
�� 
.
�� 
bindingMask
��  
;
��  !
set
�� 
=>
�� 
asset
�� 
.
�� 
bindingMask
��  
=
��! "
value
��# (
;
��( )
}
�� 
public
�� 

ReadOnlyArray
�� 
<
�� 
InputDevice
�� $
>
��$ %
?
��% &
devices
��' .
{
�� 
get
�� 
=>
�� 
asset
�� 
.
�� 
devices
�� 
;
�� 
set
�� 
=>
�� 
asset
�� 
.
�� 
devices
�� 
=
�� 
value
�� $
;
��$ %
}
�� 
public
�� 

ReadOnlyArray
�� 
<
��  
InputControlScheme
�� +
>
��+ ,
controlSchemes
��- ;
=>
��< >
asset
��? D
.
��D E
controlSchemes
��E S
;
��S T
public
�� 

bool
�� 
Contains
�� 
(
�� 
InputAction
�� $
action
��% +
)
��+ ,
{
�� 
return
�� 
asset
�� 
.
�� 
Contains
�� 
(
�� 
action
�� $
)
��$ %
;
��% &
}
�� 
public
�� 

IEnumerator
�� 
<
�� 
InputAction
�� "
>
��" #
GetEnumerator
��$ 1
(
��1 2
)
��2 3
{
�� 
return
�� 
asset
�� 
.
�� 
GetEnumerator
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
IEnumerator
�� 
IEnumerable
�� 
.
�� 
GetEnumerator
�� )
(
��) *
)
��* +
{
�� 
return
�� 
GetEnumerator
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
Enable
�� 
(
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
Enable
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
Disable
�� 
(
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
Disable
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
readonly
�� 
InputActionMap
�� #
m_Player
��$ ,
;
��, -
private
�� 
IPlayerActions
�� .
 m_PlayerActionsCallbackInterface
�� ;
;
��; <
private
�� 
readonly
�� 
InputAction
��  
m_Player_Move
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Look
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Fire
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  (
m_Player_SwitchPerspective
��! ;
;
��; <
private
�� 
readonly
�� 
InputAction
��  
m_Player_Jump
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Use
��! -
;
��- .
private
�� 
readonly
�� 
InputAction
��  
m_Player_Reload
��! 0
;
��0 1
private
�� 
readonly
�� 
InputAction
��  !
m_Player_LockCursor
��! 4
;
��4 5
private
�� 
readonly
�� 
InputAction
��  
m_Player_Aim
��! -
;
��- .
private
�� 
readonly
�� 
InputAction
��  
m_Player_Sprint
��! 0
;
��0 1
public
�� 

struct
�� 
PlayerActions
�� 
{
�� 
private
�� 
@Input2P
�� 
	m_Wrapper
�� "
;
��" #
public
�� 
PlayerActions
�� 
(
�� 
@Input2P
�� %
wrapper
��& -
)
��- .
{
��/ 0
	m_Wrapper
��1 :
=
��; <
wrapper
��= D
;
��D E
}
��F G
public
�� 
InputAction
�� 
@Move
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Move
��. ;
;
��; <
public
�� 
InputAction
�� 
@Look
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Look
��. ;
;
��; <
public
�� 
InputAction
�� 
@Fire
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Fire
��. ;
;
��; <
public
�� 
InputAction
��  
@SwitchPerspective
�� -
=>
��. 0
	m_Wrapper
��1 :
.
��: ;(
m_Player_SwitchPerspective
��; U
;
��U V
public
�� 
InputAction
�� 
@Jump
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Jump
��. ;
;
��; <
public
�� 
InputAction
�� 
@Use
�� 
=>
��  "
	m_Wrapper
��# ,
.
��, -
m_Player_Use
��- 9
;
��9 :
public
�� 
InputAction
�� 
@Reload
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_Player_Reload
��0 ?
;
��? @
public
�� 
InputAction
�� 
@LockCursor
�� &
=>
��' )
	m_Wrapper
��* 3
.
��3 4!
m_Player_LockCursor
��4 G
;
��G H
public
�� 
InputAction
�� 
@Aim
�� 
=>
��  "
	m_Wrapper
��# ,
.
��, -
m_Player_Aim
��- 9
;
��9 :
public
�� 
InputAction
�� 
@Sprint
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_Player_Sprint
��0 ?
;
��? @
public
�� 
InputActionMap
�� 
Get
�� !
(
��! "
)
��" #
{
��$ %
return
��& ,
	m_Wrapper
��- 6
.
��6 7
m_Player
��7 ?
;
��? @
}
��A B
public
�� 
void
�� 
Enable
�� 
(
�� 
)
�� 
{
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
Enable
��% +
(
��+ ,
)
��, -
;
��- .
}
��/ 0
public
�� 
void
�� 
Disable
�� 
(
�� 
)
�� 
{
�� 
Get
��  #
(
��# $
)
��$ %
.
��% &
Disable
��& -
(
��- .
)
��. /
;
��/ 0
}
��1 2
public
�� 
bool
�� 
enabled
�� 
=>
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
enabled
��% ,
;
��, -
public
�� 
static
�� 
implicit
�� 
operator
�� '
InputActionMap
��( 6
(
��6 7
PlayerActions
��7 D
set
��E H
)
��H I
{
��J K
return
��L R
set
��S V
.
��V W
Get
��W Z
(
��Z [
)
��[ \
;
��\ ]
}
��^ _
public
�� 
void
�� 
SetCallbacks
��  
(
��  !
IPlayerActions
��! /
instance
��0 8
)
��8 9
{
�� 	
if
�� 
(
�� 
	m_Wrapper
�� 
.
�� .
 m_PlayerActionsCallbackInterface
�� :
!=
��; =
null
��> B
)
��B C
{
�� 
@Move
�� 
.
�� 
started
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnMove
��L R
;
��R S
@Move
�� 
.
�� 
	performed
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnMove
��N T
;
��T U
@Move
�� 
.
�� 
canceled
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnMove
��M S
;
��S T
@Look
�� 
.
�� 
started
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnLook
��L R
;
��R S
@Look
�� 
.
�� 
	performed
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnLook
��N T
;
��T U
@Look
�� 
.
�� 
canceled
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnLook
��M S
;
��S T
@Fire
�� 
.
�� 
started
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnFire
��L R
;
��R S
@Fire
�� 
.
�� 
	performed
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnFire
��N T
;
��T U
@Fire
�� 
.
�� 
canceled
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnFire
��M S
;
��S T 
@SwitchPerspective
�� "
.
��" #
started
��# *
-=
��+ -
	m_Wrapper
��. 7
.
��7 8.
 m_PlayerActionsCallbackInterface
��8 X
.
��X Y!
OnSwitchPerspective
��Y l
;
��l m 
@SwitchPerspective
�� "
.
��" #
	performed
��# ,
-=
��- /
	m_Wrapper
��0 9
.
��9 :.
 m_PlayerActionsCallbackInterface
��: Z
.
��Z [!
OnSwitchPerspective
��[ n
;
��n o 
@SwitchPerspective
�� "
.
��" #
canceled
��# +
-=
��, .
	m_Wrapper
��/ 8
.
��8 9.
 m_PlayerActionsCallbackInterface
��9 Y
.
��Y Z!
OnSwitchPerspective
��Z m
;
��m n
@Jump
�� 
.
�� 
started
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnJump
��L R
;
��R S
@Jump
�� 
.
�� 
	performed
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnJump
��N T
;
��T U
@Jump
�� 
.
�� 
canceled
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnJump
��M S
;
��S T
@Use
�� 
.
�� 
started
�� 
-=
�� 
	m_Wrapper
��  )
.
��) *.
 m_PlayerActionsCallbackInterface
��* J
.
��J K
OnUse
��K P
;
��P Q
@Use
�� 
.
�� 
	performed
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnUse
��M R
;
��R S
@Use
�� 
.
�� 
canceled
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnUse
��L Q
;
��Q R
@Reload
�� 
.
�� 
started
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnReload
��N V
;
��V W
@Reload
�� 
.
�� 
	performed
�� !
-=
��" $
	m_Wrapper
��% .
.
��. /.
 m_PlayerActionsCallbackInterface
��/ O
.
��O P
OnReload
��P X
;
��X Y
@Reload
�� 
.
�� 
canceled
��  
-=
��! #
	m_Wrapper
��$ -
.
��- ..
 m_PlayerActionsCallbackInterface
��. N
.
��N O
OnReload
��O W
;
��W X
@LockCursor
�� 
.
�� 
started
�� #
-=
��$ &
	m_Wrapper
��' 0
.
��0 1.
 m_PlayerActionsCallbackInterface
��1 Q
.
��Q R
OnLockCursor
��R ^
;
��^ _
@LockCursor
�� 
.
�� 
	performed
�� %
-=
��& (
	m_Wrapper
��) 2
.
��2 3.
 m_PlayerActionsCallbackInterface
��3 S
.
��S T
OnLockCursor
��T `
;
��` a
@LockCursor
�� 
.
�� 
canceled
�� $
-=
��% '
	m_Wrapper
��( 1
.
��1 2.
 m_PlayerActionsCallbackInterface
��2 R
.
��R S
OnLockCursor
��S _
;
��_ `
@Aim
�� 
.
�� 
started
�� 
-=
�� 
	m_Wrapper
��  )
.
��) *.
 m_PlayerActionsCallbackInterface
��* J
.
��J K
OnAim
��K P
;
��P Q
@Aim
�� 
.
�� 
	performed
�� 
-=
�� !
	m_Wrapper
��" +
.
��+ ,.
 m_PlayerActionsCallbackInterface
��, L
.
��L M
OnAim
��M R
;
��R S
@Aim
�� 
.
�� 
canceled
�� 
-=
��  
	m_Wrapper
��! *
.
��* +.
 m_PlayerActionsCallbackInterface
��+ K
.
��K L
OnAim
��L Q
;
��Q R
@Sprint
�� 
.
�� 
started
�� 
-=
��  "
	m_Wrapper
��# ,
.
��, -.
 m_PlayerActionsCallbackInterface
��- M
.
��M N
OnSprint
��N V
;
��V W
@Sprint
�� 
.
�� 
	performed
�� !
-=
��" $
	m_Wrapper
��% .
.
��. /.
 m_PlayerActionsCallbackInterface
��/ O
.
��O P
OnSprint
��P X
;
��X Y
@Sprint
�� 
.
�� 
canceled
��  
-=
��! #
	m_Wrapper
��$ -
.
��- ..
 m_PlayerActionsCallbackInterface
��. N
.
��N O
OnSprint
��O W
;
��W X
}
�� 
	m_Wrapper
�� 
.
�� .
 m_PlayerActionsCallbackInterface
�� 6
=
��7 8
instance
��9 A
;
��A B
if
�� 
(
�� 
instance
�� 
!=
�� 
null
��  
)
��  !
{
�� 
@Move
�� 
.
�� 
started
�� 
+=
��  
instance
��! )
.
��) *
OnMove
��* 0
;
��0 1
@Move
�� 
.
�� 
	performed
�� 
+=
��  "
instance
��# +
.
��+ ,
OnMove
��, 2
;
��2 3
@Move
�� 
.
�� 
canceled
�� 
+=
�� !
instance
��" *
.
��* +
OnMove
��+ 1
;
��1 2
@Look
�� 
.
�� 
started
�� 
+=
��  
instance
��! )
.
��) *
OnLook
��* 0
;
��0 1
@Look
�� 
.
�� 
	performed
�� 
+=
��  "
instance
��# +
.
��+ ,
OnLook
��, 2
;
��2 3
@Look
�� 
.
�� 
canceled
�� 
+=
�� !
instance
��" *
.
��* +
OnLook
��+ 1
;
��1 2
@Fire
�� 
.
�� 
started
�� 
+=
��  
instance
��! )
.
��) *
OnFire
��* 0
;
��0 1
@Fire
�� 
.
�� 
	performed
�� 
+=
��  "
instance
��# +
.
��+ ,
OnFire
��, 2
;
��2 3
@Fire
�� 
.
�� 
canceled
�� 
+=
�� !
instance
��" *
.
��* +
OnFire
��+ 1
;
��1 2 
@SwitchPerspective
�� "
.
��" #
started
��# *
+=
��+ -
instance
��. 6
.
��6 7!
OnSwitchPerspective
��7 J
;
��J K 
@SwitchPerspective
�� "
.
��" #
	performed
��# ,
+=
��- /
instance
��0 8
.
��8 9!
OnSwitchPerspective
��9 L
;
��L M 
@SwitchPerspective
�� "
.
��" #
canceled
��# +
+=
��, .
instance
��/ 7
.
��7 8!
OnSwitchPerspective
��8 K
;
��K L
@Jump
�� 
.
�� 
started
�� 
+=
��  
instance
��! )
.
��) *
OnJump
��* 0
;
��0 1
@Jump
�� 
.
�� 
	performed
�� 
+=
��  "
instance
��# +
.
��+ ,
OnJump
��, 2
;
��2 3
@Jump
�� 
.
�� 
canceled
�� 
+=
�� !
instance
��" *
.
��* +
OnJump
��+ 1
;
��1 2
@Use
�� 
.
�� 
started
�� 
+=
�� 
instance
��  (
.
��( )
OnUse
��) .
;
��. /
@Use
�� 
.
�� 
	performed
�� 
+=
�� !
instance
��" *
.
��* +
OnUse
��+ 0
;
��0 1
@Use
�� 
.
�� 
canceled
�� 
+=
��  
instance
��! )
.
��) *
OnUse
��* /
;
��/ 0
@Reload
�� 
.
�� 
started
�� 
+=
��  "
instance
��# +
.
��+ ,
OnReload
��, 4
;
��4 5
@Reload
�� 
.
�� 
	performed
�� !
+=
��" $
instance
��% -
.
��- .
OnReload
��. 6
;
��6 7
@Reload
�� 
.
�� 
canceled
��  
+=
��! #
instance
��$ ,
.
��, -
OnReload
��- 5
;
��5 6
@LockCursor
�� 
.
�� 
started
�� #
+=
��$ &
instance
��' /
.
��/ 0
OnLockCursor
��0 <
;
��< =
@LockCursor
�� 
.
�� 
	performed
�� %
+=
��& (
instance
��) 1
.
��1 2
OnLockCursor
��2 >
;
��> ?
@LockCursor
�� 
.
�� 
canceled
�� $
+=
��% '
instance
��( 0
.
��0 1
OnLockCursor
��1 =
;
��= >
@Aim
�� 
.
�� 
started
�� 
+=
�� 
instance
��  (
.
��( )
OnAim
��) .
;
��. /
@Aim
�� 
.
�� 
	performed
�� 
+=
�� !
instance
��" *
.
��* +
OnAim
��+ 0
;
��0 1
@Aim
�� 
.
�� 
canceled
�� 
+=
��  
instance
��! )
.
��) *
OnAim
��* /
;
��/ 0
@Sprint
�� 
.
�� 
started
�� 
+=
��  "
instance
��# +
.
��+ ,
OnSprint
��, 4
;
��4 5
@Sprint
�� 
.
�� 
	performed
�� !
+=
��" $
instance
��% -
.
��- .
OnSprint
��. 6
;
��6 7
@Sprint
�� 
.
�� 
canceled
��  
+=
��! #
instance
��$ ,
.
��, -
OnSprint
��- 5
;
��5 6
}
�� 
}
�� 	
}
�� 
public
�� 

PlayerActions
�� 
@Player
��  
=>
��! #
new
��$ '
PlayerActions
��( 5
(
��5 6
this
��6 :
)
��: ;
;
��; <
private
�� 
readonly
�� 
InputActionMap
�� #
m_UI
��$ (
;
��( )
private
�� 

IUIActions
�� *
m_UIActionsCallbackInterface
�� 3
;
��3 4
private
�� 
readonly
�� 
InputAction
��  
m_UI_Navigate
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_UI_Submit
��! ,
;
��, -
private
�� 
readonly
�� 
InputAction
��  
m_UI_Cancel
��! ,
;
��, -
private
�� 
readonly
�� 
InputAction
��  

m_UI_Point
��! +
;
��+ ,
private
�� 
readonly
�� 
InputAction
��  

m_UI_Click
��! +
;
��+ ,
private
�� 
readonly
�� 
InputAction
��  
m_UI_ScrollWheel
��! 1
;
��1 2
private
�� 
readonly
�� 
InputAction
��  
m_UI_MiddleClick
��! 1
;
��1 2
private
�� 
readonly
�� 
InputAction
��  
m_UI_RightClick
��! 0
;
��0 1
private
�� 
readonly
�� 
InputAction
��  (
m_UI_TrackedDevicePosition
��! ;
;
��; <
private
�� 
readonly
�� 
InputAction
��  +
m_UI_TrackedDeviceOrientation
��! >
;
��> ?
public
�� 

struct
�� 
	UIActions
�� 
{
�� 
private
�� 
@Input2P
�� 
	m_Wrapper
�� "
;
��" #
public
�� 
	UIActions
�� 
(
�� 
@Input2P
�� !
wrapper
��" )
)
��) *
{
��+ ,
	m_Wrapper
��- 6
=
��7 8
wrapper
��9 @
;
��@ A
}
��B C
public
�� 
InputAction
�� 
	@Navigate
�� $
=>
��% '
	m_Wrapper
��( 1
.
��1 2
m_UI_Navigate
��2 ?
;
��? @
public
�� 
InputAction
�� 
@Submit
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_UI_Submit
��0 ;
;
��; <
public
�� 
InputAction
�� 
@Cancel
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_UI_Cancel
��0 ;
;
��; <
public
�� 
InputAction
�� 
@Point
�� !
=>
��" $
	m_Wrapper
��% .
.
��. /

m_UI_Point
��/ 9
;
��9 :
public
�� 
InputAction
�� 
@Click
�� !
=>
��" $
	m_Wrapper
��% .
.
��. /

m_UI_Click
��/ 9
;
��9 :
public
�� 
InputAction
�� 
@ScrollWheel
�� '
=>
��( *
	m_Wrapper
��+ 4
.
��4 5
m_UI_ScrollWheel
��5 E
;
��E F
public
�� 
InputAction
�� 
@MiddleClick
�� '
=>
��( *
	m_Wrapper
��+ 4
.
��4 5
m_UI_MiddleClick
��5 E
;
��E F
public
�� 
InputAction
�� 
@RightClick
�� &
=>
��' )
	m_Wrapper
��* 3
.
��3 4
m_UI_RightClick
��4 C
;
��C D
public
�� 
InputAction
�� $
@TrackedDevicePosition
�� 1
=>
��2 4
	m_Wrapper
��5 >
.
��> ?(
m_UI_TrackedDevicePosition
��? Y
;
��Y Z
public
�� 
InputAction
�� '
@TrackedDeviceOrientation
�� 4
=>
��5 7
	m_Wrapper
��8 A
.
��A B+
m_UI_TrackedDeviceOrientation
��B _
;
��_ `
public
�� 
InputActionMap
�� 
Get
�� !
(
��! "
)
��" #
{
��$ %
return
��& ,
	m_Wrapper
��- 6
.
��6 7
m_UI
��7 ;
;
��; <
}
��= >
public
�� 
void
�� 
Enable
�� 
(
�� 
)
�� 
{
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
Enable
��% +
(
��+ ,
)
��, -
;
��- .
}
��/ 0
public
�� 
void
�� 
Disable
�� 
(
�� 
)
�� 
{
�� 
Get
��  #
(
��# $
)
��$ %
.
��% &
Disable
��& -
(
��- .
)
��. /
;
��/ 0
}
��1 2
public
�� 
bool
�� 
enabled
�� 
=>
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
enabled
��% ,
;
��, -
public
�� 
static
�� 
implicit
�� 
operator
�� '
InputActionMap
��( 6
(
��6 7
	UIActions
��7 @
set
��A D
)
��D E
{
��F G
return
��H N
set
��O R
.
��R S
Get
��S V
(
��V W
)
��W X
;
��X Y
}
��Z [
public
�� 
void
�� 
SetCallbacks
��  
(
��  !

IUIActions
��! +
instance
��, 4
)
��4 5
{
�� 	
if
�� 
(
�� 
	m_Wrapper
�� 
.
�� *
m_UIActionsCallbackInterface
�� 6
!=
��7 9
null
��: >
)
��> ?
{
�� 
	@Navigate
�� 
.
�� 
started
�� !
-=
��" $
	m_Wrapper
��% .
.
��. /*
m_UIActionsCallbackInterface
��/ K
.
��K L

OnNavigate
��L V
;
��V W
	@Navigate
�� 
.
�� 
	performed
�� #
-=
��$ &
	m_Wrapper
��' 0
.
��0 1*
m_UIActionsCallbackInterface
��1 M
.
��M N

OnNavigate
��N X
;
��X Y
	@Navigate
�	�	 
.
�	�	 
canceled
�	�	 "
-=
�	�	# %
	m_Wrapper
�	�	& /
.
�	�	/ 0*
m_UIActionsCallbackInterface
�	�	0 L
.
�	�	L M

OnNavigate
�	�	M W
;
�	�	W X
@Submit
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnSubmit
�	�	J R
;
�	�	R S
@Submit
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /*
m_UIActionsCallbackInterface
�	�	/ K
.
�	�	K L
OnSubmit
�	�	L T
;
�	�	T U
@Submit
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnSubmit
�	�	K S
;
�	�	S T
@Cancel
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnCancel
�	�	J R
;
�	�	R S
@Cancel
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /*
m_UIActionsCallbackInterface
�	�	/ K
.
�	�	K L
OnCancel
�	�	L T
;
�	�	T U
@Cancel
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnCancel
�	�	K S
;
�	�	S T
@Point
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,*
m_UIActionsCallbackInterface
�	�	, H
.
�	�	H I
OnPoint
�	�	I P
;
�	�	P Q
@Point
�	�	 
.
�	�	 
	performed
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnPoint
�	�	K R
;
�	�	R S
@Point
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnPoint
�	�	J Q
;
�	�	Q R
@Click
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,*
m_UIActionsCallbackInterface
�	�	, H
.
�	�	H I
OnClick
�	�	I P
;
�	�	P Q
@Click
�	�	 
.
�	�	 
	performed
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnClick
�	�	K R
;
�	�	R S
@Click
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnClick
�	�	J Q
;
�	�	Q R
@ScrollWheel
�	�	 
.
�	�	 
started
�	�	 $
-=
�	�	% '
	m_Wrapper
�	�	( 1
.
�	�	1 2*
m_UIActionsCallbackInterface
�	�	2 N
.
�	�	N O
OnScrollWheel
�	�	O \
;
�	�	\ ]
@ScrollWheel
�	�	 
.
�	�	 
	performed
�	�	 &
-=
�	�	' )
	m_Wrapper
�	�	* 3
.
�	�	3 4*
m_UIActionsCallbackInterface
�	�	4 P
.
�	�	P Q
OnScrollWheel
�	�	Q ^
;
�	�	^ _
@ScrollWheel
�	�	 
.
�	�	 
canceled
�	�	 %
-=
�	�	& (
	m_Wrapper
�	�	) 2
.
�	�	2 3*
m_UIActionsCallbackInterface
�	�	3 O
.
�	�	O P
OnScrollWheel
�	�	P ]
;
�	�	] ^
@MiddleClick
�	�	 
.
�	�	 
started
�	�	 $
-=
�	�	% '
	m_Wrapper
�	�	( 1
.
�	�	1 2*
m_UIActionsCallbackInterface
�	�	2 N
.
�	�	N O
OnMiddleClick
�	�	O \
;
�	�	\ ]
@MiddleClick
�	�	 
.
�	�	 
	performed
�	�	 &
-=
�	�	' )
	m_Wrapper
�	�	* 3
.
�	�	3 4*
m_UIActionsCallbackInterface
�	�	4 P
.
�	�	P Q
OnMiddleClick
�	�	Q ^
;
�	�	^ _
@MiddleClick
�	�	 
.
�	�	 
canceled
�	�	 %
-=
�	�	& (
	m_Wrapper
�	�	) 2
.
�	�	2 3*
m_UIActionsCallbackInterface
�	�	3 O
.
�	�	O P
OnMiddleClick
�	�	P ]
;
�	�	] ^
@RightClick
�	�	 
.
�	�	 
started
�	�	 #
-=
�	�	$ &
	m_Wrapper
�	�	' 0
.
�	�	0 1*
m_UIActionsCallbackInterface
�	�	1 M
.
�	�	M N
OnRightClick
�	�	N Z
;
�	�	Z [
@RightClick
�	�	 
.
�	�	 
	performed
�	�	 %
-=
�	�	& (
	m_Wrapper
�	�	) 2
.
�	�	2 3*
m_UIActionsCallbackInterface
�	�	3 O
.
�	�	O P
OnRightClick
�	�	P \
;
�	�	\ ]
@RightClick
�	�	 
.
�	�	 
canceled
�	�	 $
-=
�	�	% '
	m_Wrapper
�	�	( 1
.
�	�	1 2*
m_UIActionsCallbackInterface
�	�	2 N
.
�	�	N O
OnRightClick
�	�	O [
;
�	�	[ \$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
started
�	�	' .
-=
�	�	/ 1
	m_Wrapper
�	�	2 ;
.
�	�	; <*
m_UIActionsCallbackInterface
�	�	< X
.
�	�	X Y%
OnTrackedDevicePosition
�	�	Y p
;
�	�	p q$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
	performed
�	�	' 0
-=
�	�	1 3
	m_Wrapper
�	�	4 =
.
�	�	= >*
m_UIActionsCallbackInterface
�	�	> Z
.
�	�	Z [%
OnTrackedDevicePosition
�	�	[ r
;
�	�	r s$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
canceled
�	�	' /
-=
�	�	0 2
	m_Wrapper
�	�	3 <
.
�	�	< =*
m_UIActionsCallbackInterface
�	�	= Y
.
�	�	Y Z%
OnTrackedDevicePosition
�	�	Z q
;
�	�	q r'
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
started
�	�	* 1
-=
�	�	2 4
	m_Wrapper
�	�	5 >
.
�	�	> ?*
m_UIActionsCallbackInterface
�	�	? [
.
�	�	[ \(
OnTrackedDeviceOrientation
�	�	\ v
;
�	�	v w'
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
	performed
�	�	* 3
-=
�	�	4 6
	m_Wrapper
�	�	7 @
.
�	�	@ A*
m_UIActionsCallbackInterface
�	�	A ]
.
�	�	] ^(
OnTrackedDeviceOrientation
�	�	^ x
;
�	�	x y'
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
canceled
�	�	* 2
-=
�	�	3 5
	m_Wrapper
�	�	6 ?
.
�	�	? @*
m_UIActionsCallbackInterface
�	�	@ \
.
�	�	\ ](
OnTrackedDeviceOrientation
�	�	] w
;
�	�	w x
}
�	�	 
	m_Wrapper
�	�	 
.
�	�	 *
m_UIActionsCallbackInterface
�	�	 2
=
�	�	3 4
instance
�	�	5 =
;
�	�	= >
if
�	�	 
(
�	�	 
instance
�	�	 
!=
�	�	 
null
�	�	  
)
�	�	  !
{
�	�	 
	@Navigate
�	�	 
.
�	�	 
started
�	�	 !
+=
�	�	" $
instance
�	�	% -
.
�	�	- .

OnNavigate
�	�	. 8
;
�	�	8 9
	@Navigate
�	�	 
.
�	�	 
	performed
�	�	 #
+=
�	�	$ &
instance
�	�	' /
.
�	�	/ 0

OnNavigate
�	�	0 :
;
�	�	: ;
	@Navigate
�	�	 
.
�	�	 
canceled
�	�	 "
+=
�	�	# %
instance
�	�	& .
.
�	�	. /

OnNavigate
�	�	/ 9
;
�	�	9 :
@Submit
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnSubmit
�	�	, 4
;
�	�	4 5
@Submit
�	�	 
.
�	�	 
	performed
�	�	 !
+=
�	�	" $
instance
�	�	% -
.
�	�	- .
OnSubmit
�	�	. 6
;
�	�	6 7
@Submit
�	�	 
.
�	�	 
canceled
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnSubmit
�	�	- 5
;
�	�	5 6
@Cancel
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnCancel
�	�	, 4
;
�	�	4 5
@Cancel
�	�	 
.
�	�	 
	performed
�	�	 !
+=
�	�	" $
instance
�	�	% -
.
�	�	- .
OnCancel
�	�	. 6
;
�	�	6 7
@Cancel
�	�	 
.
�	�	 
canceled
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnCancel
�	�	- 5
;
�	�	5 6
@Point
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnPoint
�	�	+ 2
;
�	�	2 3
@Point
�	�	 
.
�	�	 
	performed
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnPoint
�	�	- 4
;
�	�	4 5
@Point
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnPoint
�	�	, 3
;
�	�	3 4
@Click
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnClick
�	�	+ 2
;
�	�	2 3
@Click
�	�	 
.
�	�	 
	performed
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnClick
�	�	- 4
;
�	�	4 5
@Click
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnClick
�	�	, 3
;
�	�	3 4
@ScrollWheel
�	�	 
.
�	�	 
started
�	�	 $
+=
�	�	% '
instance
�	�	( 0
.
�	�	0 1
OnScrollWheel
�	�	1 >
;
�	�	> ?
@ScrollWheel
�	�	 
.
�	�	 
	performed
�	�	 &
+=
�	�	' )
instance
�	�	* 2
.
�	�	2 3
OnScrollWheel
�	�	3 @
;
�	�	@ A
@ScrollWheel
�	�	 
.
�	�	 
canceled
�	�	 %
+=
�	�	& (
instance
�	�	) 1
.
�	�	1 2
OnScrollWheel
�	�	2 ?
;
�	�	? @
@MiddleClick
�	�	 
.
�	�	 
started
�	�	 $
+=
�	�	% '
instance
�	�	( 0
.
�	�	0 1
OnMiddleClick
�	�	1 >
;
�	�	> ?
@MiddleClick
�	�	 
.
�	�	 
	performed
�	�	 &
+=
�	�	' )
instance
�	�	* 2
.
�	�	2 3
OnMiddleClick
�	�	3 @
;
�	�	@ A
@MiddleClick
�	�	 
.
�	�	 
canceled
�	�	 %
+=
�	�	& (
instance
�	�	) 1
.
�	�	1 2
OnMiddleClick
�	�	2 ?
;
�	�	? @
@RightClick
�	�	 
.
�	�	 
started
�	�	 #
+=
�	�	$ &
instance
�	�	' /
.
�	�	/ 0
OnRightClick
�	�	0 <
;
�	�	< =
@RightClick
�	�	 
.
�	�	 
	performed
�	�	 %
+=
�	�	& (
instance
�	�	) 1
.
�	�	1 2
OnRightClick
�	�	2 >
;
�	�	> ?
@RightClick
�	�	 
.
�	�	 
canceled
�	�	 $
+=
�	�	% '
instance
�	�	( 0
.
�	�	0 1
OnRightClick
�	�	1 =
;
�	�	= >$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
started
�	�	' .
+=
�	�	/ 1
instance
�	�	2 :
.
�	�	: ;%
OnTrackedDevicePosition
�	�	; R
;
�	�	R S$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
	performed
�	�	' 0
+=
�	�	1 3
instance
�	�	4 <
.
�	�	< =%
OnTrackedDevicePosition
�	�	= T
;
�	�	T U$
@TrackedDevicePosition
�	�	 &
.
�	�	& '
canceled
�	�	' /
+=
�	�	0 2
instance
�	�	3 ;
.
�	�	; <%
OnTrackedDevicePosition
�	�	< S
;
�	�	S T'
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
started
�	�	* 1
+=
�	�	2 4
instance
�	�	5 =
.
�	�	= >(
OnTrackedDeviceOrientation
�	�	> X
;
�	�	X Y'
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
	performed
�	�	* 3
+=
�	�	4 6
instance
�	�	7 ?
.
�	�	? @(
OnTrackedDeviceOrientation
�	�	@ Z
;
�	�	Z ['
@TrackedDeviceOrientation
�	�	 )
.
�	�	) *
canceled
�	�	* 2
+=
�	�	3 5
instance
�	�	6 >
.
�	�	> ?(
OnTrackedDeviceOrientation
�	�	? Y
;
�	�	Y Z
}
�	�	 
}
�	�	 	
}
�	�	 
public
�	�	 

	UIActions
�	�	 
@UI
�	�	 
=>
�	�	 
new
�	�	 
	UIActions
�	�	  )
(
�	�	) *
this
�	�	* .
)
�	�	. /
;
�	�	/ 0
private
�	�	 
int
�	�	 (
m_KeyboardMouseSchemeIndex
�	�	 *
=
�	�	+ ,
-
�	�	- .
$num
�	�	. /
;
�	�	/ 0
public
�	�	 
 
InputControlScheme
�	�	 !
KeyboardMouseScheme
�	�	 1
{
�	�	 
get
�	�	 
{
�	�	 	
if
�	�	 
(
�	�	 (
m_KeyboardMouseSchemeIndex
�	�	 *
==
�	�	+ -
-
�	�	. /
$num
�	�	/ 0
)
�	�	0 1(
m_KeyboardMouseSchemeIndex
�	�	2 L
=
�	�	M N
asset
�	�	O T
.
�	�	T U$
FindControlSchemeIndex
�	�	U k
(
�	�	k l
$str
�	�	l |
)
�	�	| }
;
�	�	} ~
return
�	�	 
asset
�	�	 
.
�	�	 
controlSchemes
�	�	 '
[
�	�	' ((
m_KeyboardMouseSchemeIndex
�	�	( B
]
�	�	B C
;
�	�	C D
}
�	�	 	
}
�	�	 
private
�	�	 
int
�	�	 "
m_GamepadSchemeIndex
�	�	 $
=
�	�	% &
-
�	�	' (
$num
�	�	( )
;
�	�	) *
public
�	�	 
 
InputControlScheme
�	�	 
GamepadScheme
�	�	 +
{
�	�	 
get
�	�	 
{
�	�	 	
if
�	�	 
(
�	�	 "
m_GamepadSchemeIndex
�	�	 $
==
�	�	% '
-
�	�	( )
$num
�	�	) *
)
�	�	* +"
m_GamepadSchemeIndex
�	�	, @
=
�	�	A B
asset
�	�	C H
.
�	�	H I$
FindControlSchemeIndex
�	�	I _
(
�	�	_ `
$str
�	�	` i
)
�	�	i j
;
�	�	j k
return
�	�	 
asset
�	�	 
.
�	�	 
controlSchemes
�	�	 '
[
�	�	' ("
m_GamepadSchemeIndex
�	�	( <
]
�	�	< =
;
�	�	= >
}
�	�	 	
}
�	�	 
private
�	�	 
int
�	�	  
m_TouchSchemeIndex
�	�	 "
=
�	�	# $
-
�	�	% &
$num
�	�	& '
;
�	�	' (
public
�	�	 
 
InputControlScheme
�	�	 
TouchScheme
�	�	 )
{
�	�	 
get
�	�	 
{
�	�	 	
if
�	�	 
(
�	�	  
m_TouchSchemeIndex
�	�	 "
==
�	�	# %
-
�	�	& '
$num
�	�	' (
)
�	�	( ) 
m_TouchSchemeIndex
�	�	* <
=
�	�	= >
asset
�	�	? D
.
�	�	D E$
FindControlSchemeIndex
�	�	E [
(
�	�	[ \
$str
�	�	\ c
)
�	�	c d
;
�	�	d e
return
�	�	 
asset
�	�	 
.
�	�	 
controlSchemes
�	�	 '
[
�	�	' ( 
m_TouchSchemeIndex
�	�	( :
]
�	�	: ;
;
�	�	; <
}
�	�	 	
}
�	�	 
private
�	�	 
int
�	�	 #
m_JoystickSchemeIndex
�	�	 %
=
�	�	& '
-
�	�	( )
$num
�	�	) *
;
�	�	* +
public
�	�	 
 
InputControlScheme
�	�	 
JoystickScheme
�	�	 ,
{
�	�	 
get
�	�	 
{
�	�	 	
if
�	�	 
(
�	�	 #
m_JoystickSchemeIndex
�	�	 %
==
�	�	& (
-
�	�	) *
$num
�	�	* +
)
�	�	+ ,#
m_JoystickSchemeIndex
�	�	- B
=
�	�	C D
asset
�	�	E J
.
�	�	J K$
FindControlSchemeIndex
�	�	K a
(
�	�	a b
$str
�	�	b l
)
�	�	l m
;
�	�	m n
return
�	�	 
asset
�	�	 
.
�	�	 
controlSchemes
�	�	 '
[
�	�	' (#
m_JoystickSchemeIndex
�	�	( =
]
�	�	= >
;
�	�	> ?
}
�	�	 	
}
�	�	 
private
�	�	 
int
�	�	 
m_XRSchemeIndex
�	�	 
=
�	�	  !
-
�	�	" #
$num
�	�	# $
;
�	�	$ %
public
�	�	 
 
InputControlScheme
�	�	 
XRScheme
�	�	 &
{
�	�	 
get
�	�	 
{
�	�	 	
if
�	�	 
(
�	�	 
m_XRSchemeIndex
�	�	 
==
�	�	  "
-
�	�	# $
$num
�	�	$ %
)
�	�	% &
m_XRSchemeIndex
�	�	' 6
=
�	�	7 8
asset
�	�	9 >
.
�	�	> ?$
FindControlSchemeIndex
�	�	? U
(
�	�	U V
$str
�	�	V Z
)
�	�	Z [
;
�	�	[ \
return
�	�	 
asset
�	�	 
.
�	�	 
controlSchemes
�	�	 '
[
�	�	' (
m_XRSchemeIndex
�	�	( 7
]
�	�	7 8
;
�	�	8 9
}
�	�	 	
}
�	�	 
public
�	�	 

	interface
�	�	 
IPlayerActions
�	�	 #
{
�	�	 
void
�	�	 
OnMove
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	  
CallbackContext
�	�	  /
context
�	�	0 7
)
�	�	7 8
;
�	�	8 9
void
�	�	 
OnLook
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	  
CallbackContext
�	�	  /
context
�	�	0 7
)
�	�	7 8
;
�	�	8 9
void
�	�	 
OnFire
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	  
CallbackContext
�	�	  /
context
�	�	0 7
)
�	�	7 8
;
�	�	8 9
void
�	�	 !
OnSwitchPerspective
�	�	  
(
�	�	  !
InputAction
�	�	! ,
.
�	�	, -
CallbackContext
�	�	- <
context
�	�	= D
)
�	�	D E
;
�	�	E F
void
�	�	 
OnJump
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	  
CallbackContext
�	�	  /
context
�	�	0 7
)
�	�	7 8
;
�	�	8 9
void
�	�	 
OnUse
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	 
CallbackContext
�	�	 .
context
�	�	/ 6
)
�	�	6 7
;
�	�	7 8
void
�	�	 
OnReload
�	�	 
(
�	�	 
InputAction
�	�	 !
.
�	�	! "
CallbackContext
�	�	" 1
context
�	�	2 9
)
�	�	9 :
;
�	�	: ;
void
�	�	 
OnLockCursor
�	�	 
(
�	�	 
InputAction
�	�	 %
.
�	�	% &
CallbackContext
�	�	& 5
context
�	�	6 =
)
�	�	= >
;
�	�	> ?
void
�	�	 
OnAim
�	�	 
(
�	�	 
InputAction
�	�	 
.
�	�	 
CallbackContext
�	�	 .
context
�	�	/ 6
)
�	�	6 7
;
�	�	7 8
void
�	�	 
OnSprint
�	�	 
(
�	�	 
InputAction
�	�	 !
.
�	�	! "
CallbackContext
�	�	" 1
context
�	�	2 9
)
�	�	9 :
;
�	�	: ;
}
�	�	 
public
�	�	 

	interface
�	�	 

IUIActions
�	�	 
{
�	�	 
void
�	�	 

OnNavigate
�	�	 
(
�	�	 
InputAction
�	�	 #
.
�	�	# $
CallbackContext
�	�	$ 3
context
�	�	4 ;
)
�	�	; <
;
�	�	< =
void
�	�	 
OnSubmit
�	�	 
(
�	�	 
InputAction
�	�	 !
.
�	�	! "
CallbackContext
�	�	" 1
context
�	�	2 9
)
�	�	9 :
;
�	�	: ;
void
�
�
 
OnCancel
�
�
 
(
�
�
 
InputAction
�
�
 !
.
�
�
! "
CallbackContext
�
�
" 1
context
�
�
2 9
)
�
�
9 :
;
�
�
: ;
void
�
�
 
OnPoint
�
�
 
(
�
�
 
InputAction
�
�
  
.
�
�
  !
CallbackContext
�
�
! 0
context
�
�
1 8
)
�
�
8 9
;
�
�
9 :
void
�
�
 
OnClick
�
�
 
(
�
�
 
InputAction
�
�
  
.
�
�
  !
CallbackContext
�
�
! 0
context
�
�
1 8
)
�
�
8 9
;
�
�
9 :
void
�
�
 
OnScrollWheel
�
�
 
(
�
�
 
InputAction
�
�
 &
.
�
�
& '
CallbackContext
�
�
' 6
context
�
�
7 >
)
�
�
> ?
;
�
�
? @
void
�
�
 
OnMiddleClick
�
�
 
(
�
�
 
InputAction
�
�
 &
.
�
�
& '
CallbackContext
�
�
' 6
context
�
�
7 >
)
�
�
> ?
;
�
�
? @
void
�
�
 
OnRightClick
�
�
 
(
�
�
 
InputAction
�
�
 %
.
�
�
% &
CallbackContext
�
�
& 5
context
�
�
6 =
)
�
�
= >
;
�
�
> ?
void
�
�
 %
OnTrackedDevicePosition
�
�
 $
(
�
�
$ %
InputAction
�
�
% 0
.
�
�
0 1
CallbackContext
�
�
1 @
context
�
�
A H
)
�
�
H I
;
�
�
I J
void
�
�
 (
OnTrackedDeviceOrientation
�
�
 '
(
�
�
' (
InputAction
�
�
( 3
.
�
�
3 4
CallbackContext
�
�
4 C
context
�
�
D K
)
�
�
K L
;
�
�
L M
}
�
�
 
}�
�
 �
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
$str	�* 
)
�� 
;
�� 
m_Player
�� 
=
�� 
asset
�� 
.
�� 
FindActionMap
�� &
(
��& '
$str
��' /
,
��/ 0
throwIfNotFound
��1 @
:
��@ A
true
��B F
)
��F G
;
��G H
m_Player_Move
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Look
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Fire
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K(
m_Player_SwitchPerspective
�� "
=
��# $
m_Player
��% -
.
��- .

FindAction
��. 8
(
��8 9
$str
��9 M
,
��M N
throwIfNotFound
��O ^
:
��^ _
true
��` d
)
��d e
;
��e f
m_Player_Jump
�� 
=
�� 
m_Player
��  
.
��  !

FindAction
��! +
(
��+ ,
$str
��, 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_Player_Use
�� 
=
�� 
m_Player
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 0
,
��0 1
throwIfNotFound
��2 A
:
��A B
true
��C G
)
��G H
;
��H I
m_Player_Reload
�� 
=
�� 
m_Player
�� "
.
��" #

FindAction
��# -
(
��- .
$str
��. 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O!
m_Player_LockCursor
�� 
=
�� 
m_Player
�� &
.
��& '

FindAction
��' 1
(
��1 2
$str
��2 ?
,
��? @
throwIfNotFound
��A P
:
��P Q
true
��R V
)
��V W
;
��W X
m_Player_Aim
�� 
=
�� 
m_Player
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 0
,
��0 1
throwIfNotFound
��2 A
:
��A B
true
��C G
)
��G H
;
��H I
m_Player_Sprint
�� 
=
�� 
m_Player
�� "
.
��" #

FindAction
��# -
(
��- .
$str
��. 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O#
m_Player_SwitchWeapon
�� 
=
�� 
m_Player
��  (
.
��( )

FindAction
��) 3
(
��3 4
$str
��4 B
,
��B C
throwIfNotFound
��D S
:
��S T
true
��U Y
)
��Y Z
;
��Z [
m_UI
�� 
=
�� 
asset
�� 
.
�� 
FindActionMap
�� "
(
��" #
$str
��# '
,
��' (
throwIfNotFound
��) 8
:
��8 9
true
��: >
)
��> ?
;
��? @
m_UI_Navigate
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� '
(
��' (
$str
��( 2
,
��2 3
throwIfNotFound
��4 C
:
��C D
true
��E I
)
��I J
;
��J K
m_UI_Submit
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� %
(
��% &
$str
��& .
,
��. /
throwIfNotFound
��0 ?
:
��? @
true
��A E
)
��E F
;
��F G
m_UI_Cancel
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� %
(
��% &
$str
��& .
,
��. /
throwIfNotFound
��0 ?
:
��? @
true
��A E
)
��E F
;
��F G

m_UI_Point
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� $
(
��$ %
$str
��% ,
,
��, -
throwIfNotFound
��. =
:
��= >
true
��? C
)
��C D
;
��D E

m_UI_Click
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� $
(
��$ %
$str
��% ,
,
��, -
throwIfNotFound
��. =
:
��= >
true
��? C
)
��C D
;
��D E
m_UI_ScrollWheel
�� 
=
�� 
m_UI
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 8
,
��8 9
throwIfNotFound
��: I
:
��I J
true
��K O
)
��O P
;
��P Q
m_UI_MiddleClick
�� 
=
�� 
m_UI
�� 
.
��  

FindAction
��  *
(
��* +
$str
��+ 8
,
��8 9
throwIfNotFound
��: I
:
��I J
true
��K O
)
��O P
;
��P Q
m_UI_RightClick
�� 
=
�� 
m_UI
�� 
.
�� 

FindAction
�� )
(
��) *
$str
��* 6
,
��6 7
throwIfNotFound
��8 G
:
��G H
true
��I M
)
��M N
;
��N O(
m_UI_TrackedDevicePosition
�� "
=
��# $
m_UI
��% )
.
��) *

FindAction
��* 4
(
��4 5
$str
��5 L
,
��L M
throwIfNotFound
��N ]
:
��] ^
true
��_ c
)
��c d
;
��d e+
m_UI_TrackedDeviceOrientation
�� %
=
��& '
m_UI
��( ,
.
��, -

FindAction
��- 7
(
��7 8
$str
��8 R
,
��R S
throwIfNotFound
��T c
:
��c d
true
��e i
)
��i j
;
��j k
}
�� 
public
�� 

void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 
UnityEngine
�� 
.
�� 
Object
�� 
.
�� 
Destroy
�� "
(
��" #
asset
��# (
)
��( )
;
��) *
}
�� 
public
�� 

InputBinding
�� 
?
�� 
bindingMask
�� $
{
�� 
get
�� 
=>
�� 
asset
�� 
.
�� 
bindingMask
��  
;
��  !
set
�� 
=>
�� 
asset
�� 
.
�� 
bindingMask
��  
=
��! "
value
��# (
;
��( )
}
�� 
public
�� 

ReadOnlyArray
�� 
<
�� 
InputDevice
�� $
>
��$ %
?
��% &
devices
��' .
{
�� 
get
�� 
=>
�� 
asset
�� 
.
�� 
devices
�� 
;
�� 
set
�� 
=>
�� 
asset
�� 
.
�� 
devices
�� 
=
�� 
value
�� $
;
��$ %
}
�� 
public
�� 

ReadOnlyArray
�� 
<
��  
InputControlScheme
�� +
>
��+ ,
controlSchemes
��- ;
=>
��< >
asset
��? D
.
��D E
controlSchemes
��E S
;
��S T
public
�� 

bool
�� 
Contains
�� 
(
�� 
InputAction
�� $
action
��% +
)
��+ ,
{
�� 
return
�� 
asset
�� 
.
�� 
Contains
�� 
(
�� 
action
�� $
)
��$ %
;
��% &
}
�� 
public
�� 

IEnumerator
�� 
<
�� 
InputAction
�� "
>
��" #
GetEnumerator
��$ 1
(
��1 2
)
��2 3
{
�� 
return
�� 
asset
�� 
.
�� 
GetEnumerator
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
IEnumerator
�� 
IEnumerable
�� 
.
�� 
GetEnumerator
�� )
(
��) *
)
��* +
{
�� 
return
�� 
GetEnumerator
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
Enable
�� 
(
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
Enable
�� 
(
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
Disable
�� 
(
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
Disable
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
readonly
�� 
InputActionMap
�� #
m_Player
��$ ,
;
��, -
private
�� 
IPlayerActions
�� .
 m_PlayerActionsCallbackInterface
�� ;
;
��; <
private
�� 
readonly
�� 
InputAction
��  
m_Player_Move
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Look
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Fire
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  (
m_Player_SwitchPerspective
��! ;
;
��; <
private
�� 
readonly
�� 
InputAction
��  
m_Player_Jump
��! .
;
��. /
private
�� 
readonly
�� 
InputAction
��  
m_Player_Use
��! -
;
��- .
private
�� 
readonly
�� 
InputAction
��  
m_Player_Reload
��! 0
;
��0 1
private
�� 
readonly
�� 
InputAction
��  !
m_Player_LockCursor
��! 4
;
��4 5
private
�� 
readonly
�� 
InputAction
��  
m_Player_Aim
��! -
;
��- .
private
�� 
readonly
�� 
InputAction
��  
m_Player_Sprint
��! 0
;
��0 1
private
�� 
readonly
�� 
InputAction
��  #
m_Player_SwitchWeapon
��! 6
;
��6 7
public
�� 

struct
�� 
PlayerActions
�� 
{
�� 
private
�� 
@MasterInput
�� 
	m_Wrapper
�� &
;
��& '
public
�� 
PlayerActions
�� 
(
�� 
@MasterInput
�� )
wrapper
��* 1
)
��1 2
{
��3 4
	m_Wrapper
��5 >
=
��? @
wrapper
��A H
;
��H I
}
��J K
public
�� 
InputAction
�� 
@Move
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Move
��. ;
;
��; <
public
�� 
InputAction
�� 
@Look
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Look
��. ;
;
��; <
public
�� 
InputAction
�� 
@Fire
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Fire
��. ;
;
��; <
public
�� 
InputAction
��  
@SwitchPerspective
�� -
=>
��. 0
	m_Wrapper
��1 :
.
��: ;(
m_Player_SwitchPerspective
��; U
;
��U V
public
�� 
InputAction
�� 
@Jump
��  
=>
��! #
	m_Wrapper
��$ -
.
��- .
m_Player_Jump
��. ;
;
��; <
public
�� 
InputAction
�� 
@Use
�� 
=>
��  "
	m_Wrapper
��# ,
.
��, -
m_Player_Use
��- 9
;
��9 :
public
�� 
InputAction
�� 
@Reload
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_Player_Reload
��0 ?
;
��? @
public
�� 
InputAction
�� 
@LockCursor
�� &
=>
��' )
	m_Wrapper
��* 3
.
��3 4!
m_Player_LockCursor
��4 G
;
��G H
public
�� 
InputAction
�� 
@Aim
�� 
=>
��  "
	m_Wrapper
��# ,
.
��, -
m_Player_Aim
��- 9
;
��9 :
public
�� 
InputAction
�� 
@Sprint
�� "
=>
��# %
	m_Wrapper
��& /
.
��/ 0
m_Player_Sprint
��0 ?
;
��? @
public
�� 
InputAction
�� 
@SwitchWeapon
�� (
=>
��) +
	m_Wrapper
��, 5
.
��5 6#
m_Player_SwitchWeapon
��6 K
;
��K L
public
�� 
InputActionMap
�� 
Get
�� !
(
��! "
)
��" #
{
��$ %
return
��& ,
	m_Wrapper
��- 6
.
��6 7
m_Player
��7 ?
;
��? @
}
��A B
public
�� 
void
�� 
Enable
�� 
(
�� 
)
�� 
{
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
Enable
��% +
(
��+ ,
)
��, -
;
��- .
}
��/ 0
public
�� 
void
�� 
Disable
�� 
(
�� 
)
�� 
{
�� 
Get
��  #
(
��# $
)
��$ %
.
��% &
Disable
��& -
(
��- .
)
��. /
;
��/ 0
}
��1 2
public
�� 
bool
�� 
enabled
�� 
=>
�� 
Get
�� "
(
��" #
)
��# $
.
��$ %
enabled
��% ,
;
��, -
public
�� 
static
�� 
implicit
�� 
operator
�� '
InputActionMap
��( 6
(
��6 7
PlayerActions
��7 D
set
��E H
)
��H I
{
��J K
return
��L R
set
��S V
.
��V W
Get
��W Z
(
��Z [
)
��[ \
;
��\ ]
}
��^ _
public
�� 
void
�� 
SetCallbacks
��  
(
��  !
IPlayerActions
��! /
instance
��0 8
)
��8 9
{
�	�	 	
if
�	�	 
(
�	�	 
	m_Wrapper
�	�	 
.
�	�	 .
 m_PlayerActionsCallbackInterface
�	�	 :
!=
�	�	; =
null
�	�	> B
)
�	�	B C
{
�	�	 
@Move
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnMove
�	�	L R
;
�	�	R S
@Move
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnMove
�	�	N T
;
�	�	T U
@Move
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnMove
�	�	M S
;
�	�	S T
@Look
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnLook
�	�	L R
;
�	�	R S
@Look
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnLook
�	�	N T
;
�	�	T U
@Look
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnLook
�	�	M S
;
�	�	S T
@Fire
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnFire
�	�	L R
;
�	�	R S
@Fire
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnFire
�	�	N T
;
�	�	T U
@Fire
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnFire
�	�	M S
;
�	�	S T 
@SwitchPerspective
�	�	 "
.
�	�	" #
started
�	�	# *
-=
�	�	+ -
	m_Wrapper
�	�	. 7
.
�	�	7 8.
 m_PlayerActionsCallbackInterface
�	�	8 X
.
�	�	X Y!
OnSwitchPerspective
�	�	Y l
;
�	�	l m 
@SwitchPerspective
�	�	 "
.
�	�	" #
	performed
�	�	# ,
-=
�	�	- /
	m_Wrapper
�	�	0 9
.
�	�	9 :.
 m_PlayerActionsCallbackInterface
�	�	: Z
.
�	�	Z [!
OnSwitchPerspective
�	�	[ n
;
�	�	n o 
@SwitchPerspective
�	�	 "
.
�	�	" #
canceled
�	�	# +
-=
�	�	, .
	m_Wrapper
�	�	/ 8
.
�	�	8 9.
 m_PlayerActionsCallbackInterface
�	�	9 Y
.
�	�	Y Z!
OnSwitchPerspective
�	�	Z m
;
�	�	m n
@Jump
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnJump
�	�	L R
;
�	�	R S
@Jump
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnJump
�	�	N T
;
�	�	T U
@Jump
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnJump
�	�	M S
;
�	�	S T
@Use
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 
	m_Wrapper
�	�	  )
.
�	�	) *.
 m_PlayerActionsCallbackInterface
�	�	* J
.
�	�	J K
OnUse
�	�	K P
;
�	�	P Q
@Use
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnUse
�	�	M R
;
�	�	R S
@Use
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnUse
�	�	L Q
;
�	�	Q R
@Reload
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnReload
�	�	N V
;
�	�	V W
@Reload
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /.
 m_PlayerActionsCallbackInterface
�	�	/ O
.
�	�	O P
OnReload
�	�	P X
;
�	�	X Y
@Reload
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- ..
 m_PlayerActionsCallbackInterface
�	�	. N
.
�	�	N O
OnReload
�	�	O W
;
�	�	W X
@LockCursor
�	�	 
.
�	�	 
started
�	�	 #
-=
�	�	$ &
	m_Wrapper
�	�	' 0
.
�	�	0 1.
 m_PlayerActionsCallbackInterface
�	�	1 Q
.
�	�	Q R
OnLockCursor
�	�	R ^
;
�	�	^ _
@LockCursor
�	�	 
.
�	�	 
	performed
�	�	 %
-=
�	�	& (
	m_Wrapper
�	�	) 2
.
�	�	2 3.
 m_PlayerActionsCallbackInterface
�	�	3 S
.
�	�	S T
OnLockCursor
�	�	T `
;
�	�	` a
@LockCursor
�	�	 
.
�	�	 
canceled
�	�	 $
-=
�	�	% '
	m_Wrapper
�	�	( 1
.
�	�	1 2.
 m_PlayerActionsCallbackInterface
�	�	2 R
.
�	�	R S
OnLockCursor
�	�	S _
;
�	�	_ `
@Aim
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 
	m_Wrapper
�	�	  )
.
�	�	) *.
 m_PlayerActionsCallbackInterface
�	�	* J
.
�	�	J K
OnAim
�	�	K P
;
�	�	P Q
@Aim
�	�	 
.
�	�	 
	performed
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,.
 m_PlayerActionsCallbackInterface
�	�	, L
.
�	�	L M
OnAim
�	�	M R
;
�	�	R S
@Aim
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	  
	m_Wrapper
�	�	! *
.
�	�	* +.
 m_PlayerActionsCallbackInterface
�	�	+ K
.
�	�	K L
OnAim
�	�	L Q
;
�	�	Q R
@Sprint
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -.
 m_PlayerActionsCallbackInterface
�	�	- M
.
�	�	M N
OnSprint
�	�	N V
;
�	�	V W
@Sprint
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /.
 m_PlayerActionsCallbackInterface
�	�	/ O
.
�	�	O P
OnSprint
�	�	P X
;
�	�	X Y
@Sprint
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- ..
 m_PlayerActionsCallbackInterface
�	�	. N
.
�	�	N O
OnSprint
�	�	O W
;
�	�	W X
@SwitchWeapon
�	�	 
.
�	�	 
started
�	�	 %
-=
�	�	& (
	m_Wrapper
�	�	) 2
.
�	�	2 3.
 m_PlayerActionsCallbackInterface
�	�	3 S
.
�	�	S T
OnSwitchWeapon
�	�	T b
;
�	�	b c
@SwitchWeapon
�	�	 
.
�	�	 
	performed
�	�	 '
-=
�	�	( *
	m_Wrapper
�	�	+ 4
.
�	�	4 5.
 m_PlayerActionsCallbackInterface
�	�	5 U
.
�	�	U V
OnSwitchWeapon
�	�	V d
;
�	�	d e
@SwitchWeapon
�	�	 
.
�	�	 
canceled
�	�	 &
-=
�	�	' )
	m_Wrapper
�	�	* 3
.
�	�	3 4.
 m_PlayerActionsCallbackInterface
�	�	4 T
.
�	�	T U
OnSwitchWeapon
�	�	U c
;
�	�	c d
}
�	�	 
	m_Wrapper
�	�	 
.
�	�	 .
 m_PlayerActionsCallbackInterface
�	�	 6
=
�	�	7 8
instance
�	�	9 A
;
�	�	A B
if
�	�	 
(
�	�	 
instance
�	�	 
!=
�	�	 
null
�	�	  
)
�	�	  !
{
�	�	 
@Move
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnMove
�	�	* 0
;
�	�	0 1
@Move
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnMove
�	�	, 2
;
�	�	2 3
@Move
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnMove
�	�	+ 1
;
�	�	1 2
@Look
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnLook
�	�	* 0
;
�	�	0 1
@Look
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnLook
�	�	, 2
;
�	�	2 3
@Look
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnLook
�	�	+ 1
;
�	�	1 2
@Fire
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnFire
�	�	* 0
;
�	�	0 1
@Fire
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnFire
�	�	, 2
;
�	�	2 3
@Fire
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnFire
�	�	+ 1
;
�	�	1 2 
@SwitchPerspective
�	�	 "
.
�	�	" #
started
�	�	# *
+=
�	�	+ -
instance
�	�	. 6
.
�	�	6 7!
OnSwitchPerspective
�	�	7 J
;
�	�	J K 
@SwitchPerspective
�	�	 "
.
�	�	" #
	performed
�	�	# ,
+=
�	�	- /
instance
�	�	0 8
.
�	�	8 9!
OnSwitchPerspective
�	�	9 L
;
�	�	L M 
@SwitchPerspective
�	�	 "
.
�	�	" #
canceled
�	�	# +
+=
�	�	, .
instance
�	�	/ 7
.
�	�	7 8!
OnSwitchPerspective
�	�	8 K
;
�	�	K L
@Jump
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnJump
�	�	* 0
;
�	�	0 1
@Jump
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnJump
�	�	, 2
;
�	�	2 3
@Jump
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnJump
�	�	+ 1
;
�	�	1 2
@Use
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	 
instance
�	�	  (
.
�	�	( )
OnUse
�	�	) .
;
�	�	. /
@Use
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnUse
�	�	+ 0
;
�	�	0 1
@Use
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnUse
�	�	* /
;
�	�	/ 0
@Reload
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnReload
�	�	, 4
;
�	�	4 5
@Reload
�	�	 
.
�	�	 
	performed
�	�	 !
+=
�	�	" $
instance
�	�	% -
.
�	�	- .
OnReload
�	�	. 6
;
�	�	6 7
@Reload
�	�	 
.
�	�	 
canceled
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnReload
�	�	- 5
;
�	�	5 6
@LockCursor
�	�	 
.
�	�	 
started
�	�	 #
+=
�	�	$ &
instance
�	�	' /
.
�	�	/ 0
OnLockCursor
�	�	0 <
;
�	�	< =
@LockCursor
�	�	 
.
�	�	 
	performed
�	�	 %
+=
�	�	& (
instance
�	�	) 1
.
�	�	1 2
OnLockCursor
�	�	2 >
;
�	�	> ?
@LockCursor
�	�	 
.
�	�	 
canceled
�	�	 $
+=
�	�	% '
instance
�	�	( 0
.
�	�	0 1
OnLockCursor
�	�	1 =
;
�	�	= >
@Aim
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	 
instance
�	�	  (
.
�	�	( )
OnAim
�	�	) .
;
�	�	. /
@Aim
�	�	 
.
�	�	 
	performed
�	�	 
+=
�	�	 !
instance
�	�	" *
.
�	�	* +
OnAim
�	�	+ 0
;
�	�	0 1
@Aim
�	�	 
.
�	�	 
canceled
�	�	 
+=
�	�	  
instance
�	�	! )
.
�	�	) *
OnAim
�	�	* /
;
�	�	/ 0
@Sprint
�	�	 
.
�	�	 
started
�	�	 
+=
�	�	  "
instance
�	�	# +
.
�	�	+ ,
OnSprint
�	�	, 4
;
�	�	4 5
@Sprint
�	�	 
.
�	�	 
	performed
�	�	 !
+=
�	�	" $
instance
�	�	% -
.
�	�	- .
OnSprint
�	�	. 6
;
�	�	6 7
@Sprint
�	�	 
.
�	�	 
canceled
�	�	  
+=
�	�	! #
instance
�	�	$ ,
.
�	�	, -
OnSprint
�	�	- 5
;
�	�	5 6
@SwitchWeapon
�	�	 
.
�	�	 
started
�	�	 %
+=
�	�	& (
instance
�	�	) 1
.
�	�	1 2
OnSwitchWeapon
�	�	2 @
;
�	�	@ A
@SwitchWeapon
�	�	 
.
�	�	 
	performed
�	�	 '
+=
�	�	( *
instance
�	�	+ 3
.
�	�	3 4
OnSwitchWeapon
�	�	4 B
;
�	�	B C
@SwitchWeapon
�	�	 
.
�	�	 
canceled
�	�	 &
+=
�	�	' )
instance
�	�	* 2
.
�	�	2 3
OnSwitchWeapon
�	�	3 A
;
�	�	A B
}
�	�	 
}
�	�	 	
}
�	�	 
public
�	�	 

PlayerActions
�	�	 
@Player
�	�	  
=>
�	�	! #
new
�	�	$ '
PlayerActions
�	�	( 5
(
�	�	5 6
this
�	�	6 :
)
�	�	: ;
;
�	�	; <
private
�	�	 
readonly
�	�	 
InputActionMap
�	�	 #
m_UI
�	�	$ (
;
�	�	( )
private
�	�	 

IUIActions
�	�	 *
m_UIActionsCallbackInterface
�	�	 3
;
�	�	3 4
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_Navigate
�	�	! .
;
�	�	. /
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_Submit
�	�	! ,
;
�	�	, -
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_Cancel
�	�	! ,
;
�	�	, -
private
�	�	 
readonly
�	�	 
InputAction
�	�	  

m_UI_Point
�	�	! +
;
�	�	+ ,
private
�	�	 
readonly
�	�	 
InputAction
�	�	  

m_UI_Click
�	�	! +
;
�	�	+ ,
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_ScrollWheel
�	�	! 1
;
�	�	1 2
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_MiddleClick
�	�	! 1
;
�	�	1 2
private
�	�	 
readonly
�	�	 
InputAction
�	�	  
m_UI_RightClick
�	�	! 0
;
�	�	0 1
private
�	�	 
readonly
�	�	 
InputAction
�	�	  (
m_UI_TrackedDevicePosition
�	�	! ;
;
�	�	; <
private
�	�	 
readonly
�	�	 
InputAction
�	�	  +
m_UI_TrackedDeviceOrientation
�	�	! >
;
�	�	> ?
public
�	�	 

struct
�	�	 
	UIActions
�	�	 
{
�	�	 
private
�	�	 
@MasterInput
�	�	 
	m_Wrapper
�	�	 &
;
�	�	& '
public
�	�	 
	UIActions
�	�	 
(
�	�	 
@MasterInput
�	�	 %
wrapper
�	�	& -
)
�	�	- .
{
�	�	/ 0
	m_Wrapper
�	�	1 :
=
�	�	; <
wrapper
�	�	= D
;
�	�	D E
}
�	�	F G
public
�	�	 
InputAction
�	�	 
	@Navigate
�	�	 $
=>
�	�	% '
	m_Wrapper
�	�	( 1
.
�	�	1 2
m_UI_Navigate
�	�	2 ?
;
�	�	? @
public
�	�	 
InputAction
�	�	 
@Submit
�	�	 "
=>
�	�	# %
	m_Wrapper
�	�	& /
.
�	�	/ 0
m_UI_Submit
�	�	0 ;
;
�	�	; <
public
�	�	 
InputAction
�	�	 
@Cancel
�	�	 "
=>
�	�	# %
	m_Wrapper
�	�	& /
.
�	�	/ 0
m_UI_Cancel
�	�	0 ;
;
�	�	; <
public
�	�	 
InputAction
�	�	 
@Point
�	�	 !
=>
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /

m_UI_Point
�	�	/ 9
;
�	�	9 :
public
�	�	 
InputAction
�	�	 
@Click
�	�	 !
=>
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /

m_UI_Click
�	�	/ 9
;
�	�	9 :
public
�	�	 
InputAction
�	�	 
@ScrollWheel
�	�	 '
=>
�	�	( *
	m_Wrapper
�	�	+ 4
.
�	�	4 5
m_UI_ScrollWheel
�	�	5 E
;
�	�	E F
public
�	�	 
InputAction
�	�	 
@MiddleClick
�	�	 '
=>
�	�	( *
	m_Wrapper
�	�	+ 4
.
�	�	4 5
m_UI_MiddleClick
�	�	5 E
;
�	�	E F
public
�	�	 
InputAction
�	�	 
@RightClick
�	�	 &
=>
�	�	' )
	m_Wrapper
�	�	* 3
.
�	�	3 4
m_UI_RightClick
�	�	4 C
;
�	�	C D
public
�	�	 
InputAction
�	�	 $
@TrackedDevicePosition
�	�	 1
=>
�	�	2 4
	m_Wrapper
�	�	5 >
.
�	�	> ?(
m_UI_TrackedDevicePosition
�	�	? Y
;
�	�	Y Z
public
�	�	 
InputAction
�	�	 '
@TrackedDeviceOrientation
�	�	 4
=>
�	�	5 7
	m_Wrapper
�	�	8 A
.
�	�	A B+
m_UI_TrackedDeviceOrientation
�	�	B _
;
�	�	_ `
public
�	�	 
InputActionMap
�	�	 
Get
�	�	 !
(
�	�	! "
)
�	�	" #
{
�	�	$ %
return
�	�	& ,
	m_Wrapper
�	�	- 6
.
�	�	6 7
m_UI
�	�	7 ;
;
�	�	; <
}
�	�	= >
public
�	�	 
void
�	�	 
Enable
�	�	 
(
�	�	 
)
�	�	 
{
�	�	 
Get
�	�	 "
(
�	�	" #
)
�	�	# $
.
�	�	$ %
Enable
�	�	% +
(
�	�	+ ,
)
�	�	, -
;
�	�	- .
}
�	�	/ 0
public
�	�	 
void
�	�	 
Disable
�	�	 
(
�	�	 
)
�	�	 
{
�	�	 
Get
�	�	  #
(
�	�	# $
)
�	�	$ %
.
�	�	% &
Disable
�	�	& -
(
�	�	- .
)
�	�	. /
;
�	�	/ 0
}
�	�	1 2
public
�	�	 
bool
�	�	 
enabled
�	�	 
=>
�	�	 
Get
�	�	 "
(
�	�	" #
)
�	�	# $
.
�	�	$ %
enabled
�	�	% ,
;
�	�	, -
public
�	�	 
static
�	�	 
implicit
�	�	 
operator
�	�	 '
InputActionMap
�	�	( 6
(
�	�	6 7
	UIActions
�	�	7 @
set
�	�	A D
)
�	�	D E
{
�	�	F G
return
�	�	H N
set
�	�	O R
.
�	�	R S
Get
�	�	S V
(
�	�	V W
)
�	�	W X
;
�	�	X Y
}
�	�	Z [
public
�	�	 
void
�	�	 
SetCallbacks
�	�	  
(
�	�	  !

IUIActions
�	�	! +
instance
�	�	, 4
)
�	�	4 5
{
�	�	 	
if
�	�	 
(
�	�	 
	m_Wrapper
�	�	 
.
�	�	 *
m_UIActionsCallbackInterface
�	�	 6
!=
�	�	7 9
null
�	�	: >
)
�	�	> ?
{
�	�	 
	@Navigate
�	�	 
.
�	�	 
started
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /*
m_UIActionsCallbackInterface
�	�	/ K
.
�	�	K L

OnNavigate
�	�	L V
;
�	�	V W
	@Navigate
�	�	 
.
�	�	 
	performed
�	�	 #
-=
�	�	$ &
	m_Wrapper
�	�	' 0
.
�	�	0 1*
m_UIActionsCallbackInterface
�	�	1 M
.
�	�	M N

OnNavigate
�	�	N X
;
�	�	X Y
	@Navigate
�	�	 
.
�	�	 
canceled
�	�	 "
-=
�	�	# %
	m_Wrapper
�	�	& /
.
�	�	/ 0*
m_UIActionsCallbackInterface
�	�	0 L
.
�	�	L M

OnNavigate
�	�	M W
;
�	�	W X
@Submit
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnSubmit
�	�	J R
;
�	�	R S
@Submit
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /*
m_UIActionsCallbackInterface
�	�	/ K
.
�	�	K L
OnSubmit
�	�	L T
;
�	�	T U
@Submit
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnSubmit
�	�	K S
;
�	�	S T
@Cancel
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnCancel
�	�	J R
;
�	�	R S
@Cancel
�	�	 
.
�	�	 
	performed
�	�	 !
-=
�	�	" $
	m_Wrapper
�	�	% .
.
�	�	. /*
m_UIActionsCallbackInterface
�	�	/ K
.
�	�	K L
OnCancel
�	�	L T
;
�	�	T U
@Cancel
�	�	 
.
�	�	 
canceled
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnCancel
�	�	K S
;
�	�	S T
@Point
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,*
m_UIActionsCallbackInterface
�	�	, H
.
�	�	H I
OnPoint
�	�	I P
;
�	�	P Q
@Point
�	�	 
.
�	�	 
	performed
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnPoint
�	�	K R
;
�	�	R S
@Point
�	�	 
.
�	�	 
canceled
�	�	 
-=
�	�	  "
	m_Wrapper
�	�	# ,
.
�	�	, -*
m_UIActionsCallbackInterface
�	�	- I
.
�	�	I J
OnPoint
�	�	J Q
;
�	�	Q R
@Click
�	�	 
.
�	�	 
started
�	�	 
-=
�	�	 !
	m_Wrapper
�	�	" +
.
�	�	+ ,*
m_UIActionsCallbackInterface
�	�	, H
.
�	�	H I
OnClick
�	�	I P
;
�	�	P Q
@Click
�	�	 
.
�	�	 
	performed
�	�	  
-=
�	�	! #
	m_Wrapper
�	�	$ -
.
�	�	- .*
m_UIActionsCallbackInterface
�	�	. J
.
�	�	J K
OnClick
�	�	K R
;
�	�	R S
@Click
�
�
 
.
�
�
 
canceled
�
�
 
-=
�
�
  "
	m_Wrapper
�
�
# ,
.
�
�
, -*
m_UIActionsCallbackInterface
�
�
- I
.
�
�
I J
OnClick
�
�
J Q
;
�
�
Q R
@ScrollWheel
�
�
 
.
�
�
 
started
�
�
 $
-=
�
�
% '
	m_Wrapper
�
�
( 1
.
�
�
1 2*
m_UIActionsCallbackInterface
�
�
2 N
.
�
�
N O
OnScrollWheel
�
�
O \
;
�
�
\ ]
@ScrollWheel
�
�
 
.
�
�
 
	performed
�
�
 &
-=
�
�
' )
	m_Wrapper
�
�
* 3
.
�
�
3 4*
m_UIActionsCallbackInterface
�
�
4 P
.
�
�
P Q
OnScrollWheel
�
�
Q ^
;
�
�
^ _
@ScrollWheel
�
�
 
.
�
�
 
canceled
�
�
 %
-=
�
�
& (
	m_Wrapper
�
�
) 2
.
�
�
2 3*
m_UIActionsCallbackInterface
�
�
3 O
.
�
�
O P
OnScrollWheel
�
�
P ]
;
�
�
] ^
@MiddleClick
�
�
 
.
�
�
 
started
�
�
 $
-=
�
�
% '
	m_Wrapper
�
�
( 1
.
�
�
1 2*
m_UIActionsCallbackInterface
�
�
2 N
.
�
�
N O
OnMiddleClick
�
�
O \
;
�
�
\ ]
@MiddleClick
�
�
 
.
�
�
 
	performed
�
�
 &
-=
�
�
' )
	m_Wrapper
�
�
* 3
.
�
�
3 4*
m_UIActionsCallbackInterface
�
�
4 P
.
�
�
P Q
OnMiddleClick
�
�
Q ^
;
�
�
^ _
@MiddleClick
�
�
 
.
�
�
 
canceled
�
�
 %
-=
�
�
& (
	m_Wrapper
�
�
) 2
.
�
�
2 3*
m_UIActionsCallbackInterface
�
�
3 O
.
�
�
O P
OnMiddleClick
�
�
P ]
;
�
�
] ^
@RightClick
�
�
 
.
�
�
 
started
�
�
 #
-=
�
�
$ &
	m_Wrapper
�
�
' 0
.
�
�
0 1*
m_UIActionsCallbackInterface
�
�
1 M
.
�
�
M N
OnRightClick
�
�
N Z
;
�
�
Z [
@RightClick
�
�
 
.
�
�
 
	performed
�
�
 %
-=
�
�
& (
	m_Wrapper
�
�
) 2
.
�
�
2 3*
m_UIActionsCallbackInterface
�
�
3 O
.
�
�
O P
OnRightClick
�
�
P \
;
�
�
\ ]
@RightClick
�
�
 
.
�
�
 
canceled
�
�
 $
-=
�
�
% '
	m_Wrapper
�
�
( 1
.
�
�
1 2*
m_UIActionsCallbackInterface
�
�
2 N
.
�
�
N O
OnRightClick
�
�
O [
;
�
�
[ \$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
started
�
�
' .
-=
�
�
/ 1
	m_Wrapper
�
�
2 ;
.
�
�
; <*
m_UIActionsCallbackInterface
�
�
< X
.
�
�
X Y%
OnTrackedDevicePosition
�
�
Y p
;
�
�
p q$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
	performed
�
�
' 0
-=
�
�
1 3
	m_Wrapper
�
�
4 =
.
�
�
= >*
m_UIActionsCallbackInterface
�
�
> Z
.
�
�
Z [%
OnTrackedDevicePosition
�
�
[ r
;
�
�
r s$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
canceled
�
�
' /
-=
�
�
0 2
	m_Wrapper
�
�
3 <
.
�
�
< =*
m_UIActionsCallbackInterface
�
�
= Y
.
�
�
Y Z%
OnTrackedDevicePosition
�
�
Z q
;
�
�
q r'
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
started
�
�
* 1
-=
�
�
2 4
	m_Wrapper
�
�
5 >
.
�
�
> ?*
m_UIActionsCallbackInterface
�
�
? [
.
�
�
[ \(
OnTrackedDeviceOrientation
�
�
\ v
;
�
�
v w'
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
	performed
�
�
* 3
-=
�
�
4 6
	m_Wrapper
�
�
7 @
.
�
�
@ A*
m_UIActionsCallbackInterface
�
�
A ]
.
�
�
] ^(
OnTrackedDeviceOrientation
�
�
^ x
;
�
�
x y'
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
canceled
�
�
* 2
-=
�
�
3 5
	m_Wrapper
�
�
6 ?
.
�
�
? @*
m_UIActionsCallbackInterface
�
�
@ \
.
�
�
\ ](
OnTrackedDeviceOrientation
�
�
] w
;
�
�
w x
}
�
�
 
	m_Wrapper
�
�
 
.
�
�
 *
m_UIActionsCallbackInterface
�
�
 2
=
�
�
3 4
instance
�
�
5 =
;
�
�
= >
if
�
�
 
(
�
�
 
instance
�
�
 
!=
�
�
 
null
�
�
  
)
�
�
  !
{
�
�
 
	@Navigate
�
�
 
.
�
�
 
started
�
�
 !
+=
�
�
" $
instance
�
�
% -
.
�
�
- .

OnNavigate
�
�
. 8
;
�
�
8 9
	@Navigate
�
�
 
.
�
�
 
	performed
�
�
 #
+=
�
�
$ &
instance
�
�
' /
.
�
�
/ 0

OnNavigate
�
�
0 :
;
�
�
: ;
	@Navigate
�
�
 
.
�
�
 
canceled
�
�
 "
+=
�
�
# %
instance
�
�
& .
.
�
�
. /

OnNavigate
�
�
/ 9
;
�
�
9 :
@Submit
�
�
 
.
�
�
 
started
�
�
 
+=
�
�
  "
instance
�
�
# +
.
�
�
+ ,
OnSubmit
�
�
, 4
;
�
�
4 5
@Submit
�
�
 
.
�
�
 
	performed
�
�
 !
+=
�
�
" $
instance
�
�
% -
.
�
�
- .
OnSubmit
�
�
. 6
;
�
�
6 7
@Submit
�
�
 
.
�
�
 
canceled
�
�
  
+=
�
�
! #
instance
�
�
$ ,
.
�
�
, -
OnSubmit
�
�
- 5
;
�
�
5 6
@Cancel
�
�
 
.
�
�
 
started
�
�
 
+=
�
�
  "
instance
�
�
# +
.
�
�
+ ,
OnCancel
�
�
, 4
;
�
�
4 5
@Cancel
�
�
 
.
�
�
 
	performed
�
�
 !
+=
�
�
" $
instance
�
�
% -
.
�
�
- .
OnCancel
�
�
. 6
;
�
�
6 7
@Cancel
�
�
 
.
�
�
 
canceled
�
�
  
+=
�
�
! #
instance
�
�
$ ,
.
�
�
, -
OnCancel
�
�
- 5
;
�
�
5 6
@Point
�
�
 
.
�
�
 
started
�
�
 
+=
�
�
 !
instance
�
�
" *
.
�
�
* +
OnPoint
�
�
+ 2
;
�
�
2 3
@Point
�
�
 
.
�
�
 
	performed
�
�
  
+=
�
�
! #
instance
�
�
$ ,
.
�
�
, -
OnPoint
�
�
- 4
;
�
�
4 5
@Point
�
�
 
.
�
�
 
canceled
�
�
 
+=
�
�
  "
instance
�
�
# +
.
�
�
+ ,
OnPoint
�
�
, 3
;
�
�
3 4
@Click
�
�
 
.
�
�
 
started
�
�
 
+=
�
�
 !
instance
�
�
" *
.
�
�
* +
OnClick
�
�
+ 2
;
�
�
2 3
@Click
�
�
 
.
�
�
 
	performed
�
�
  
+=
�
�
! #
instance
�
�
$ ,
.
�
�
, -
OnClick
�
�
- 4
;
�
�
4 5
@Click
�
�
 
.
�
�
 
canceled
�
�
 
+=
�
�
  "
instance
�
�
# +
.
�
�
+ ,
OnClick
�
�
, 3
;
�
�
3 4
@ScrollWheel
�
�
 
.
�
�
 
started
�
�
 $
+=
�
�
% '
instance
�
�
( 0
.
�
�
0 1
OnScrollWheel
�
�
1 >
;
�
�
> ?
@ScrollWheel
�
�
 
.
�
�
 
	performed
�
�
 &
+=
�
�
' )
instance
�
�
* 2
.
�
�
2 3
OnScrollWheel
�
�
3 @
;
�
�
@ A
@ScrollWheel
�
�
 
.
�
�
 
canceled
�
�
 %
+=
�
�
& (
instance
�
�
) 1
.
�
�
1 2
OnScrollWheel
�
�
2 ?
;
�
�
? @
@MiddleClick
�
�
 
.
�
�
 
started
�
�
 $
+=
�
�
% '
instance
�
�
( 0
.
�
�
0 1
OnMiddleClick
�
�
1 >
;
�
�
> ?
@MiddleClick
�
�
 
.
�
�
 
	performed
�
�
 &
+=
�
�
' )
instance
�
�
* 2
.
�
�
2 3
OnMiddleClick
�
�
3 @
;
�
�
@ A
@MiddleClick
�
�
 
.
�
�
 
canceled
�
�
 %
+=
�
�
& (
instance
�
�
) 1
.
�
�
1 2
OnMiddleClick
�
�
2 ?
;
�
�
? @
@RightClick
�
�
 
.
�
�
 
started
�
�
 #
+=
�
�
$ &
instance
�
�
' /
.
�
�
/ 0
OnRightClick
�
�
0 <
;
�
�
< =
@RightClick
�
�
 
.
�
�
 
	performed
�
�
 %
+=
�
�
& (
instance
�
�
) 1
.
�
�
1 2
OnRightClick
�
�
2 >
;
�
�
> ?
@RightClick
�
�
 
.
�
�
 
canceled
�
�
 $
+=
�
�
% '
instance
�
�
( 0
.
�
�
0 1
OnRightClick
�
�
1 =
;
�
�
= >$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
started
�
�
' .
+=
�
�
/ 1
instance
�
�
2 :
.
�
�
: ;%
OnTrackedDevicePosition
�
�
; R
;
�
�
R S$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
	performed
�
�
' 0
+=
�
�
1 3
instance
�
�
4 <
.
�
�
< =%
OnTrackedDevicePosition
�
�
= T
;
�
�
T U$
@TrackedDevicePosition
�
�
 &
.
�
�
& '
canceled
�
�
' /
+=
�
�
0 2
instance
�
�
3 ;
.
�
�
; <%
OnTrackedDevicePosition
�
�
< S
;
�
�
S T'
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
started
�
�
* 1
+=
�
�
2 4
instance
�
�
5 =
.
�
�
= >(
OnTrackedDeviceOrientation
�
�
> X
;
�
�
X Y'
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
	performed
�
�
* 3
+=
�
�
4 6
instance
�
�
7 ?
.
�
�
? @(
OnTrackedDeviceOrientation
�
�
@ Z
;
�
�
Z ['
@TrackedDeviceOrientation
�
�
 )
.
�
�
) *
canceled
�
�
* 2
+=
�
�
3 5
instance
�
�
6 >
.
�
�
> ?(
OnTrackedDeviceOrientation
�
�
? Y
;
�
�
Y Z
}
�
�
 
}
�
�
 	
}
�
�
 
public
�
�
 

	UIActions
�
�
 
@UI
�
�
 
=>
�
�
 
new
�
�
 
	UIActions
�
�
  )
(
�
�
) *
this
�
�
* .
)
�
�
. /
;
�
�
/ 0
private
�
�
 
int
�
�
 (
m_KeyboardMouseSchemeIndex
�
�
 *
=
�
�
+ ,
-
�
�
- .
$num
�
�
. /
;
�
�
/ 0
public
�
�
 
 
InputControlScheme
�
�
 !
KeyboardMouseScheme
�
�
 1
{
�
�
 
get
�
�
 
{
�
�
 	
if
�
�
 
(
�
�
 (
m_KeyboardMouseSchemeIndex
�
�
 *
==
�
�
+ -
-
�
�
. /
$num
�
�
/ 0
)
�
�
0 1(
m_KeyboardMouseSchemeIndex
�
�
2 L
=
�
�
M N
asset
�
�
O T
.
�
�
T U$
FindControlSchemeIndex
�
�
U k
(
�
�
k l
$str
�
�
l |
)
�
�
| }
;
�
�
} ~
return
�
�
 
asset
�
�
 
.
�
�
 
controlSchemes
�
�
 '
[
�
�
' ((
m_KeyboardMouseSchemeIndex
�
�
( B
]
�
�
B C
;
�
�
C D
}
�
�
 	
}
�
�
 
private
�
�
 
int
�
�
 "
m_GamepadSchemeIndex
�
�
 $
=
�
�
% &
-
�
�
' (
$num
�
�
( )
;
�
�
) *
public
�
�
 
 
InputControlScheme
�
�
 
GamepadScheme
�
�
 +
{
�
�
 
get
�
�
 
{
�
�
 	
if
�
�
 
(
�
�
 "
m_GamepadSchemeIndex
�
�
 $
==
�
�
% '
-
�
�
( )
$num
�
�
) *
)
�
�
* +"
m_GamepadSchemeIndex
�
�
, @
=
�
�
A B
asset
�
�
C H
.
�
�
H I$
FindControlSchemeIndex
�
�
I _
(
�
�
_ `
$str
�
�
` i
)
�
�
i j
;
�
�
j k
return
�
�
 
asset
�
�
 
.
�
�
 
controlSchemes
�
�
 '
[
�
�
' ("
m_GamepadSchemeIndex
�
�
( <
]
�
�
< =
;
�
�
= >
}
�
�
 	
}
�
�
 
private
�
�
 
int
�
�
  
m_TouchSchemeIndex
�
�
 "
=
�
�
# $
-
�
�
% &
$num
�
�
& '
;
�
�
' (
public
�
�
 
 
InputControlScheme
�
�
 
TouchScheme
�
�
 )
{
�
�
 
get
�
�
 
{
�
�
 	
if
�
�
 
(
�
�
  
m_TouchSchemeIndex
�
�
 "
==
�
�
# %
-
�
�
& '
$num
�
�
' (
)
�
�
( ) 
m_TouchSchemeIndex
�
�
* <
=
�
�
= >
asset
�
�
? D
.
�
�
D E$
FindControlSchemeIndex
�
�
E [
(
�
�
[ \
$str
�
�
\ c
)
�
�
c d
;
�
�
d e
return
�
�
 
asset
�
�
 
.
�
�
 
controlSchemes
�
�
 '
[
�
�
' ( 
m_TouchSchemeIndex
�
�
( :
]
�
�
: ;
;
�
�
; <
}
�
�
 	
}
�
�
 
private
�
�
 
int
�
�
 #
m_JoystickSchemeIndex
�
�
 %
=
�
�
& '
-
�
�
( )
$num
�
�
) *
;
�
�
* +
public
�
�
 
 
InputControlScheme
�
�
 
JoystickScheme
�
�
 ,
{
�
�
 
get
�
�
 
{
�
�
 	
if
�
�
 
(
�
�
 #
m_JoystickSchemeIndex
�
�
 %
==
�
�
& (
-
�
�
) *
$num
�
�
* +
)
�
�
+ ,#
m_JoystickSchemeIndex
�
�
- B
=
�
�
C D
asset
�
�
E J
.
�
�
J K$
FindControlSchemeIndex
�
�
K a
(
�
�
a b
$str
�
�
b l
)
�
�
l m
;
�
�
m n
return
�
�
 
asset
�
�
 
.
�
�
 
controlSchemes
�
�
 '
[
�
�
' (#
m_JoystickSchemeIndex
�
�
( =
]
�
�
= >
;
�
�
> ?
}
�
�
 	
}
�
�
 
private
�
�
 
int
�
�
 
m_XRSchemeIndex
�
�
 
=
�
�
  !
-
�
�
" #
$num
�
�
# $
;
�
�
$ %
public
�
�
 
 
InputControlScheme
�
�
 
XRScheme
�
�
 &
{
�
�
 
get
�
�
 
{
�
�
 	
if
�
�
 
(
�
�
 
m_XRSchemeIndex
�
�
 
==
�
�
  "
-
�
�
# $
$num
�
�
$ %
)
�
�
% &
m_XRSchemeIndex
�
�
' 6
=
�
�
7 8
asset
�
�
9 >
.
�
�
> ?$
FindControlSchemeIndex
�
�
? U
(
�
�
U V
$str
�
�
V Z
)
�
�
Z [
;
�
�
[ \
return
�
�
 
asset
�
�
 
.
�
�
 
controlSchemes
�
�
 '
[
�
�
' (
m_XRSchemeIndex
�
�
( 7
]
�
�
7 8
;
�
�
8 9
}
�
�
 	
}
�
�
 
public
�
�
 

	interface
�
�
 
IPlayerActions
�
�
 #
{
�
�
 
void
�
�
 
OnMove
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
  
CallbackContext
�
�
  /
context
�
�
0 7
)
�
�
7 8
;
�
�
8 9
void
�
�
 
OnLook
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
  
CallbackContext
�
�
  /
context
�
�
0 7
)
�
�
7 8
;
�
�
8 9
void
�
�
 
OnFire
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
  
CallbackContext
�
�
  /
context
�
�
0 7
)
�
�
7 8
;
�
�
8 9
void
�
�
 !
OnSwitchPerspective
�
�
  
(
�
�
  !
InputAction
�
�
! ,
.
�
�
, -
CallbackContext
�
�
- <
context
�
�
= D
)
�
�
D E
;
�
�
E F
void
�
�
 
OnJump
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
  
CallbackContext
�
�
  /
context
�
�
0 7
)
�
�
7 8
;
�
�
8 9
void
�
�
 
OnUse
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
 
CallbackContext
�
�
 .
context
�
�
/ 6
)
�
�
6 7
;
�
�
7 8
void
�
�
 
OnReload
�
�
 
(
�
�
 
InputAction
�
�
 !
.
�
�
! "
CallbackContext
�
�
" 1
context
�
�
2 9
)
�
�
9 :
;
�
�
: ;
void
�
�
 
OnLockCursor
�
�
 
(
�
�
 
InputAction
�
�
 %
.
�
�
% &
CallbackContext
�
�
& 5
context
�
�
6 =
)
�
�
= >
;
�
�
> ?
void
�
�
 
OnAim
�
�
 
(
�
�
 
InputAction
�
�
 
.
�
�
 
CallbackContext
�
�
 .
context
�
�
/ 6
)
�
�
6 7
;
�
�
7 8
void
�
�
 
OnSprint
�
�
 
(
�
�
 
InputAction
�
�
 !
.
�
�
! "
CallbackContext
�
�
" 1
context
�
�
2 9
)
�
�
9 :
;
�
�
: ;
void
�
�
 
OnSwitchWeapon
�
�
 
(
�
�
 
InputAction
�
�
 '
.
�
�
' (
CallbackContext
�
�
( 7
context
�
�
8 ?
)
�
�
? @
;
�
�
@ A
}
�
�
 
public
�
�
 

	interface
�
�
 

IUIActions
�
�
 
{
�
�
 
void
�
�
 

OnNavigate
�
�
 
(
�
�
 
InputAction
�
�
 #
.
�
�
# $
CallbackContext
�
�
$ 3
context
�
�
4 ;
)
�
�
; <
;
�
�
< =
void
�
�
 
OnSubmit
�
�
 
(
�
�
 
InputAction
�
�
 !
.
�
�
! "
CallbackContext
�
�
" 1
context
�
�
2 9
)
�
�
9 :
;
�
�
: ;
void
�
�
 
OnCancel
�
�
 
(
�
�
 
InputAction
�
�
 !
.
�
�
! "
CallbackContext
�
�
" 1
context
�
�
2 9
)
�
�
9 :
;
�
�
: ;
void
�
�
 
OnPoint
�
�
 
(
�
�
 
InputAction
�
�
  
.
�
�
  !
CallbackContext
�
�
! 0
context
�
�
1 8
)
�
�
8 9
;
�
�
9 :
void
�
�
 
OnClick
�
�
 
(
�
�
 
InputAction
�
�
  
.
�
�
  !
CallbackContext
�
�
! 0
context
�
�
1 8
)
�
�
8 9
;
�
�
9 :
void
�
�
 
OnScrollWheel
�
�
 
(
�
�
 
InputAction
�
�
 &
.
�
�
& '
CallbackContext
�
�
' 6
context
�
�
7 >
)
�
�
> ?
;
�
�
? @
void
�
�
 
OnMiddleClick
�
�
 
(
�
�
 
InputAction
�
�
 &
.
�
�
& '
CallbackContext
�
�
' 6
context
�
�
7 >
)
�
�
> ?
;
�
�
? @
void
�
�
 
OnRightClick
�
�
 
(
�
�
 
InputAction
�
�
 %
.
�
�
% &
CallbackContext
�
�
& 5
context
�
�
6 =
)
�
�
= >
;
�
�
> ?
void
�
�
 %
OnTrackedDevicePosition
�
�
 $
(
�
�
$ %
InputAction
�
�
% 0
.
�
�
0 1
CallbackContext
�
�
1 @
context
�
�
A H
)
�
�
H I
;
�
�
I J
void
�
�
 (
OnTrackedDeviceOrientation
�
�
 '
(
�
�
' (
InputAction
�
�
( 3
.
�
�
3 4
CallbackContext
�
�
4 C
context
�
�
D K
)
�
�
K L
;
�
�
L M
}
�
�
 
}�
�
 