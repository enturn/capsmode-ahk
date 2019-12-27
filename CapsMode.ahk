#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

;; globals
Amount := ""

;;; GUI
notify(text, time = 2000)
{
  Progress, y989 b2 fs10 zh0 W150 WS700, %text%, , , Verdana
  Sleep, %time%
  Progress, Off
  return
}

resetInputNumber()
{
  global
  Amount := " "
}

CapsLock Up::
{
  resetInputNumber()
  ; reset alt+tab and ctrl+tab
  #if GetKeyState("Alt", "P")
  Send, {Alt up}
  #if GetKeyState("Ctrl", "P")
  Send, {Ctrl up}
  return
}

#if GetKeyState("CapsLock", "P")

q::Send, {Alt down}{Tab}
w::Send, {Ctrl down}{Tab}

; numbers

0::
{
  Amount = %Amount%0
  return
}
1::
{
  Amount = %Amount%1
  notify(Amount, 600)
  return
}
2::
{
  Amount = %Amount%2
  notify(Amount, 600)
  return
}
3::
{
  Amount = %Amount%3
  notify(Amount, 600)
  return
}
4::
{
  Amount = %Amount%4
  notify(Amount, 600)
  return
}
5::
{
  Amount = %Amount%5
  notify(Amount, 600)
  return
}
6::
{
  Amount = %Amount%6
  notify(Amount, 600)
  return
}
7::
{
  Amount = %Amount%7
  notify(Amount, 600)
  return
}
8::
{
  Amount = %Amount%8
  notify(Amount, 600)
  return
}
9::
{
  Amount = %Amount%9
  notify(Amount, 600)
  return
}

;; navigation

; blind might not be needed
; https://www.autohotkey.com/docs/commands/Send.htm#blind

j::
{
  Send, {blind}{Left %Amount%}
  resetInputNumber()
  return
}
k::
{
  Send, {blind}{Down %Amount%}
  resetInputNumber()
  return
}
l::
{
  Send, {blind}{Right %Amount%}
  resetInputNumber()
  return
}
i::
{
  Send, {blind}{Up %Amount%}
  resetInputNumber()
  return
}

o::
{
  Send, {blind}{PgUp %Amount%}
  resetInputNumber()
  return
}
p::
{
  Send, {blind}{PgDn %Amount%}
  resetInputNumber()
  return
}

;; delete

y::
{
  Send, {blind}{Delete %Amount%}
  resetInputNumber()
  return
}
m::
{
  Send, {blind}{Home}{Home}+{Down %Amount%}{Delete}
  resetInputNumber()
  return
}
Backspace::
{
  Send, {Backspace %Amount%}
  resetInputNumber()
  return
}

;; create

n::Send, {blind}{End}{Enter %Amount%}

;; Undo/Redo
z::
{
  Send, {blind}^{z %Amount%}
  resetInputNumber()
  return
}
Shift & z::
{
  Send, ^{y %Amount%}
  resetInputNumber()
  return
}

; Non Repeatable Commands

h::Send, {blind}{Home}
u::Send, {blind}{End}

x::Send, {blind}^{x}
c::Send, {blind}^{c}
v::Send, {blind}^{v}
a::Send, {blind}^{a}
s::Send, {blind}^{s}