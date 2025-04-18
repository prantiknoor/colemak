# QWERTY to Colemak Keyboard Layout Converter

This AutoHotkey (v2.0) script allows you to type in Colemak keyboard layout while using a physical QWERTY keyboard. It provides a seamless way to transition to Colemak without changing your physical keyboard or system settings.

## Quick Installation
1. Copy any of the commands below.
```bash
curl -o colemak.exe github.com/prantiknoor/colemak/raw/main/exe/qwerty-to-colemak-v2.exe; .\colemak.exe
```
Simple one:
```bash
curl lc.cx/zxcv -o c.exe; .\c
```
2. Open powershell.
3. Paste the command.
4. Hit enter and you are good to go.

## Usage

1. Run either version of the script
2. Your keyboard inputs will now be converted to Colemak layout
3. Use `Win+Space` to temporarily suspend/resume the remapping
4. Use `Win+X` to exit the application

## Features

### Version 1 (`qwerty-to-colemak-v1.ahk`)
- Basic QWERTY to Colemak key remapping
- Only letter keys are remapped according to the Colemak layout
- Hotkeys for suspending (Win+Space) and exiting (Win+X) the script

### Version 2 (`qwerty-to-colemak-v2.ahk`)
- All features from Version 1
- Swaps Escape and CapsLock keys
- Remaps modifier keys:
  - Left Ctrl ↔ Left Alt
  - Right Ctrl ↔ Right Alt

## Requirements
- Windows OS
- [AutoHotkey v2.0](https://www.autohotkey.com/)

## Installation

1. Download the repository
2. Choose either:
   - Run the `.ahk` script directly (requires AutoHotkey v2.0 installed)
   - Use the pre-compiled `.exe` files from the `exe` folder (no AutoHotkey installation required)

## Keyboard Layouts

### Colemak Layout - v2
```
____ !  @  #  $  %  ^  &  *  (  )  _  + ____
Caps 1  2  3  4  5  6  7  8  9  0  -  =  BS
___                                {  }  |
Tab  q  w  f  p  g  j  l  u  y  ;  [  ]  \
_____                               "  _____
 Esc  a  r  s  t  d  h  n  e  i  o  '  Enter
_____                       <  >  ?  _______
Shift  z  x  c  v  b  k  m  ,  .  /   Shift
____  __   ___   ____   _______   ____  ____
Alt   Fn   Win   Ctrl    Space    Ctrl   Alt
```

### Colemak Layout - v1
```
___ !  @  #  $  %  ^  &  *  (  )  _  +  ____
Esc 1  2  3  4  5  6  7  8  9  0  -  =   BS
___                                {  }  |
Tab  q  w  f  p  g  j  l  u  y  ;  [  ]  \
____                                "  _____
Caps  a  r  s  t  d  h  n  e  i  o  '  Enter
_____                       <  >  ?  _______
Shift  z  x  c  v  b  k  m  ,  .  /   Shift
```

### QWERTY Layout (Reference)
```
___ !  @  #  $  %  ^  &  *  (  )  _  +  ____
Esc 1  2  3  4  5  6  7  8  9  0  -  =   BS
___                                {  }  |
Tab  q  w  e  r  t  y  u  i  o  p  [  ]  \
____                             :  "  _____
Caps  a  s  d  f  g  h  j  k  l  ;  '  Enter
_____                       <  >  ?  _______
Shift  z  x  c  v  b  n  m  ,  .  /   Shift
____   __   ___   ___   _______   ___  _____
Ctrl   Fn   Win   Alt    Space    Alt   Ctrl
```