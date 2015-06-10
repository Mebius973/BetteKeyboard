; Visual Studio 2010

;; It turns out that VS2010 CAN'T auto indent a whole C++ file (that's so stupid, it gave me cancer)
;; Hopefuly it can indent a selection so we are going to use a simple shortcut which will select the whole file and the indent the selection
;; The drowback here is: the cursor will always end up at the bottom of the file.
SetTitleMatchMode 2
#IfWinActive Visual Studio
Ctrl & =::
Send ^a
Sleep, 50
Send {Alt Down}
Send {F8}
Send {Alt Up}
Sleep, 500
Send, {Escape}
Send {LControl Down}
Send {NumpadDot}
Send {LControl Up}
Return
#IfWinActive

; Multimedia keys mapping
RWin & F1::Send {Volume_Mute}
RWin & F2::Send {Volume_Down}
RWin & F3::Send {Volume_Up}
RWin & F4::Send {Media_Play_Pause}
RWin & F5::Send {Media_Prev}
RWin & F6::Send {Media_Next}

; Need a patch to activate lol macros only when lol is focused
; League of Legends

;; In game chat macro
NumpadHome::
Send {Enter}
Sleep, 50
Send miss top
Sleep, 50
Send {Enter}
return

NumpadLeft::
Send {Enter}
Sleep, 50
Send miss mid
Sleep, 50
Send {Enter}
return

NumpadEnd::
Send {Enter}
Sleep, 50
Send miss bot
Sleep, 50
Send {Enter}
return

NumpadIns::
Send {Enter}
Sleep, 50
Send re
Sleep, 50
Send {Enter}
return

NumpadPgDn::
Send {Enter}
Sleep, 50
Send 2 seconds, I'm rolling
Sleep, 50
Send {Enter}
return

NumpadDel::
Send {Enter}
Sleep, 50
Send /surrender
Sleep, 50
Send {Enter}
return

;; Champion selection chat macro
NumpadUp::
Send {Enter}
Sleep, 50
Send top
Sleep, 50
Send {Enter}
return

NumpadPgUp::
Send {Enter}
Sleep, 50
Send mid
Sleep, 50
Send {Enter}
return

NumpadRight::
Send {Enter}
Sleep, 50
Send jungle
Sleep, 50
Send {Enter}
return

; Magicka 2

;; Magicka 2 doesn't recongnize azerty keyboard and doesn't provide an easy way to rebind keys
;; Therefore this maps azerqsdf to qwerasdf when the focus is on magicka 2 screen and bind the middle mouse click to a thumb mouse button
;; we want this to work only with magicka 2, not 1
#IfWinActive MAGICKA® 2
a::q
q::a
z::w
w::z
m::,
,::m
XButton1::MButton
#IfWinActive
