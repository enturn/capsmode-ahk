#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

Amount := ""

CapsLock & 1::Amount := Amount . "1"
CapsLock & 2::Amount := Amount . "2"
CapsLock & 3::Amount := Amount . "3"
CapsLock & 4::Amount := Amount . "4"
CapsLock & 5::Amount := Amount . "5"
CapsLock & 6::Amount := Amount . "6"
CapsLock & 7::Amount := Amount . "7"
CapsLock & 8::Amount := Amount . "8"
CapsLock & 9::Amount := Amount . "9"

CapsLock up::Amount := ""

CapsLock & j::Send, {blind}{Left %Amount%}
CapsLock & k::Send, {blind}{Down}
CapsLock & l::Send, {blind}{Right}
CapsLock & i::Send, {blind}{Up}

CapsLock & y::Send, {blind}{Delete}

CapsLock & h::Send, {blind}{Home}
CapsLock & u::Send, {blind}{End}

CapsLock & n::Send, {blind}{End}{Enter}

CapsLock & o::Send, {blind}{PgUp}
CapsLock & p::Send, {blind}{PgDn}

CapsLock & x::Send, {blind}^{x}
CapsLock & c::Send, {blind}^{c}
CapsLock & v::Send, {blind}^{v}
CapsLock & a::Send, {blind}^{a}
CapsLock & s::Send, {blind}^{s}

; only previous since the modifier isn't held for multiple presses
CapsLock & q::Send, {blind}!{Tab}
CapsLock & w::Send, {blind}^{Tab}

; if CapsMode is on
; 0::add to amount (either string or if there's a way to have it continue to be a full number not just keypress)