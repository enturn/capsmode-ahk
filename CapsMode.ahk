#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

; some copied from https://autohotkey.com/board/topic/41206-modal-vim/
Amount := ""

resetInputNumber()
{
   global
   Amount := " "
}

; numbers

CapsLock & 0::
{
   Amount = %Amount%0
   return
}
CapsLock & 1::
{
   Amount = %Amount%1
   return
}
CapsLock & 2::
{
   Amount = %Amount%2
   return
}
CapsLock & 3::
{
   Amount = %Amount%3
   return
}
CapsLock & 4::
{
   Amount = %Amount%4
   return
}
CapsLock & 5::
{
   Amount = %Amount%5
   return
}
CapsLock & 6::
{
   Amount = %Amount%6
   return
}
CapsLock & 7::
{
   Amount = %Amount%7
   return
}
CapsLock & 8::
{
   Amount = %Amount%8
   return
}
CapsLock & 9::
{
   Amount = %Amount%9
   return
}

; doesnt work because the CapsLock is counted with the number combination
CapsLock Up::
{
  resetInputNumber()
  return
}

CapsLock & j::
{
  Send, {blind}{Left %Amount%}
  resetInputNumber()
  return
}
CapsLock & k::
{
  Send, {blind}{Down %Amount%}
  resetInputNumber()
  return
}
CapsLock & l::
{
  Send, {blind}{Right %Amount%}
  resetInputNumber()
  return
}
CapsLock & i::
{
  Send, {blind}{Up %Amount%}
  resetInputNumber()
  return
}

CapsLock & y::
{
  Send, {blind}{Delete %Amount%}
  resetInputNumber()
  return
}

CapsLock & o::
{
  Send, {blind}{PgUp %Amount%}
  resetInputNumber()
  return
}
CapsLock & p::
{
  Send, {blind}{PgDn %Amount%}
  resetInputNumber()
  return
}

; single use keys

CapsLock & h::Send, {blind}{Home}
CapsLock & u::Send, {blind}{End}

CapsLock & n::Send, {blind}{End}{Enter}

CapsLock & x::Send, {blind}^{x}
CapsLock & c::Send, {blind}^{c}
CapsLock & v::Send, {blind}^{v}
CapsLock & a::Send, {blind}^{a}
CapsLock & s::Send, {blind}^{s}

; only previous since the modifier isn't held for multiple presses
CapsLock & q::Send, {blind}!{Tab}
CapsLock & w::Send, {blind}^{Tab}