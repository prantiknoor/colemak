#SuspendExempt
+Esc::Suspend
#SuspendExempt False

; colemak layout

; capslock::BackSpace

;   q  w  e  r  t  y  u  i  o  p  [  ]  \
;=> q  w  f  p  g  j  l  u  y  ;  [  ]  \
e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::;

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

; colemak layout end

CapsLock::Esc
Esc::CapsLock

+CapsLock::CapsLock
^CapsLock::^BackSpace

]::Right

!]::]

p::(
+p::_

<!p::;
+9::;

+.:::
<!.::>

LAlt::LCtrl
RAlt::RCtrl

RCtrl::RAlt
LWin::LAlt

LCtrl::LWin