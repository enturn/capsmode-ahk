# About

I read [Cursor keys belong at the center of your keyboard](https://tonsky.me/blog/cursor-keys/) which talks about the benefits of using the cursor keys without moving your hand to the arrows and how it can be done using CAPSLOCK and [AutoHotkey](https://www.autohotkey.com/). I added some useful commands that I find myself doing when programming. I was wanting to use the numbers to repeat commands for a while like in vim but didn't add them until I read [this forum](https://autohotkey.com/board/topic/41206-modal-vim/) which also helped redesign the script to be simpler (using `if GetKeyState` instead of `CapsLock &` on each command). I've been using this for almost a year at work as a software developer and it's been fantastic. Unlike vim, I can use the commands anywhere that the keyboard can be used, without plugins, even in remote desktop. Change the [keys](https://www.autohotkey.com/docs/KeyList.htm) in the script to find the combination you like the best.

# Keys

## Numbers

0-9 one or more times then command to repeat a command

## Navigation

* j - left
* k - down
* l - right
* i - up
* o - page up
* p - page down
* h - Home (not repeatable)
* u - End (not repeatable)

## Delete

* y - delete
* m - delete line (Home, Shift+Down, Delete)

## Create

* n - newline (End, Enter)

## Undo/Redo

* z - undo
* Shift+z - redo

## Non Repeatable Commands

* x - cut (Ctrl+x)
* c - copy (Ctrl+c)
* v - paste (Ctrl+v)
* a - select all (Ctrl+a)
* s - save (Ctrl+s)