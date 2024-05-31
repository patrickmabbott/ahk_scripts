#include ./basics.ahk
SendMode Input

#If WinActive("Klondike") || WinActive("Dragonscapes") || WinActive("Family")
autoDragOn := false
iteration := 0

x := 766
y := 452
expectedColor := "0x323232"

Loop
{
	Sleep 200 ; Make this number higher for slower clicks, lower for faster.
	iteration := iteration + 1
	if(autoDragOn) {
		dragRelative(50,0)
	}
}


xbutton1::
	dragRelative(150, 0)
return

xbutton2::
	dragRelative(0, -150)
return

1::
	quickClick(1719,129)
return

q::
	dragRelative(0, -150)
return

e::
	dragRelative(0, 150)
return