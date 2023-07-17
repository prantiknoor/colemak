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

+9::>
+p::;
+.:::

CapsLock::NumLock
+CapsLock::CapsLock

#HotIf GetKeyState("NumLock", "T")
count := ""
d_key := false

Do(action, action_d:="") {
    if(action_d && d_key) {
        action_d := StrReplace(action_d, "<Count>", count || 1)
        Send action_d
    } else {
        action := StrReplace(action, "<Count>", count || 1)
        Send action
    }
    global count := ""
    global d_key := false
}

DoClose(action) {
    Send action
    SetNumLockState "Off"
}

Add(digit) {
    if(StrLen(count) < 2)
    global count .= digit
}

0::Add "0"
1::Add "1"
2::Add "2"
3::Add "3"
4::Add "4"
5::Add "5"
6::Add "6"
8::Add "8"
7::Add "7"
9::Add "9"

g::{
    if(d_key) 
        Do("", "{Home}+{End}{BackSpace}" )
    else
        global d_key := true
}

w::Do "^{Right <Count>}", "^{Del <Count>}"
+w::Do "^+{Right <Count>}"

i::Do "^z"
+i::Do "^+z"

d::SetNumLockState "Off"
+d::DoClose "{Home}"

a::DoClose "{Right}"
+a::DoClose "{End}"

h::Do(
    "{Left <Count>}",
    "{BackSpace <Count>}",
)
+h::Do "+{Left <Count>}"
j::Do(
    "{Down <Count>}",
    "{Home}+{Down <Count>}+{Down}+{Home}{BackSpace}",
)
+j::Do "+{Down <Count>}"
k::Do(
    "{Up <Count>}",
    "{End}+{Up <Count>}+{Up}{BackSpace}"
)
+k::Do "+{Up <Count>}"
l::Do "{Right <Count>}", "{Delete <Count>}"
+l::Do "+{Right <Count>}"

`;::DoClose "{End}{Enter}"
+;::DoClose "{Home}{Left}{Enter}"

x::Do "{BackSpace <Count>}"
+x::Do "{Delete <Count>}"

o::Send "^c"
c::Send "^x"
v::Send "^v"
+v::Send "#v"

b::Do "^{Left <Count>}", "^{BackSpace <Count>}"
+b::Do "^+{Left <Count>}"

,::Home
.::End

q::Esc
Space::DoClose "{Esc}"

CapsLock::{
    global d_key := false
    global count := ""
}

#HotIf