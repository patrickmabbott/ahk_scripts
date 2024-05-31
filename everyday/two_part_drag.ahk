dragStart := ""

xbutton1::
	MouseGetPos, endX, endY
	if(dragStart != "") {
		MouseClickDrag, L, dragStart.X, dragStart.Y, endX, endY, 2
		dragStart := ""
	} else {
		dragStart := { X: endX, Y : endY }
	}
return

!Esc::ExitApp