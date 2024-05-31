#include ./basics.ahk

SendMode Input
autoClickOn := false
iteration := 0

Loop
{
	Sleep 100 ; Make this number higher for slower clicks, lower for faster.
	iteration := iteration + 1
	if(autoClickOn) {
		click
	}
}

xbutton1::
	autoClickOn := !autoClickOn
return