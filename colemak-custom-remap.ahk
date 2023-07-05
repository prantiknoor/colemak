; Prantik's Colemak Keyboard Layout

#SuspendExempt
+Esc::Suspend
#SuspendExempt False

;   q  w  e  r  t  y  u  i  o  p  [  ]  \
;=> q  w  f  p  g  j  l  u  y  (  [  →  \
e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::(
*]::{
    if GetKeyState("Alt")
        Send "{End}"
    else
        Send "{Right}"
}

;   a  s  d  f  g  h  j  k  l  ;  '
;=> a  r  s  t  d  h  n  e  i  o  '
s::r
d::s
f::t
g::d
j::n
k::e
l::i
`;::o

;   z  x  c  v  b  n  m  ,  .  /
;=> z  x  c  v  b  k  m  ,  .  /
n::k

;   Ctrl  Fn  Win  Alt     Space    Alt     Ctrl
;=> Win   Fn  Alt  Ctrl    Space    Ctrl    Alt
LCtrl::LWin
LWin::LAlt
LAlt::LCtrl

RAlt::RCtrl
RCtrl::RAlt

; CapsLock ⇄ Esc
Esc::CapsLock
CapsLock::{
    if GetKeyState("Shift")
        Send "{CapsLock}"
    else if GetKeyState("Ctrl")
        Send "^{BackSpace}"
    else
        Send "{Esc}"
}

; ( → ;   : → _    > → :    _ → }
+9::;
+p::_
+.:::
+-::}

; Alt + . → >   Alt + [ → ]
!.::Send ">"
![::Send "]"