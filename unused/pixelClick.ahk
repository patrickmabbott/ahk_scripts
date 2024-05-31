#IfWinActive Beyond


autoClickOn := false
autoSwapOn := false
iteration := 0

x := 766
y := 452
expectedColor := "0x323232"

Loop
{
	Sleep 30 ; Make this number higher for slower clicks, lower for faster.
	iteration := iteration + 1
	if(autoClickOn) {
		click
	}
	if(autoSwapOn) {
		MouseGetPos, xpos, ypos 
		
		PixelGetColor, color, %x%, %y%
		;MsgBox, The cursor is at X%xpos% Y%ypos% %color%
		if( color <> expectedColor) {
			if( Mod(iteration, 25) = 12) {
				send {2}
			}
			if( Mod(iteration, 25) = 0) {
				send {2}
			}
		}
	}
}

xbutton1::
	autoClickOn := !autoClickOn
return

xbutton2::
	send {q}
	;autoSwapOn := !autoSwapOn
return

!d::
	autoSwapOn := !autoSwapOn
return