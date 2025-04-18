#Requires AutoHotkey v2.0

;qwerty-to-colemak-v2.ahk
;by Prantik

; AutoHotKey | Qwerty -> Colemak

;Colemak Keyboard Layout
;---------------------------------------------
; ____ !  @  #  $  %  ^  &  *  (  )  _  + ____
; Caps 1  2  3  4  5  6  7  8  9  0  -  =  BS
; ___                                {  }  |
; Tab  q  w  f  p  g  j  l  u  y  ;  [  ]  \
; ____                                "  _____
; Esc  a  r  s  t  d  h  n  e  i  o  '  Enter
; _____                       <  >  ?  _______
; Shift  z  x  c  v  b  k  m  ,  .  /   Shift
; ____  __   ___   ____   _______   ____  ____
; Alt   Fn   Win   Ctrl    Space    Ctrl   Alt

;Qwerty Keyboard Layout
;---------------------------------------------
; ___ !  @  #  $  %  ^  &  *  (  )  _  +  ____
; Esc 1  2  3  4  5  6  7  8  9  0  -  =   BS
; ___                                {  }  |
; Tab  q  w  e  r  t  y  u  i  o  p  [  ]  \
; ____                             :  "  _____
; Caps  a  s  d  f  g  h  j  k  l  ;  '  Enter
; _____                       <  >  ?  _______
; Shift  z  x  c  v  b  n  m  ,  .  /   Shift
; ____   __   ___   ___   _______   ___  _____
; Ctrl   Fn   Win   Alt    Space    Alt   Ctrl


Esc::CapsLock
CapsLock::Esc

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

;   Ctrl  Fn  Win   Alt    Space    Alt    Ctrl
;=> Win   Fn  Alt  Ctrl    Space    Ctrl    Alt
LCtrl::LAlt
LAlt::LCtrl

RAlt::RCtrl
RCtrl::RAlt

#SuspendExempt
#Space::Suspend ; Win+Space
#x::ExitApp     ; Win+X
#SuspendExempt False
