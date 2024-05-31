

mode := 0

Loop
{
	Sleep 30 ; Make this number higher for slower clicks, lower for faster.
	if(mode == 2) {
		click down
		sleep 5
		click up
	}
	if(autoFOn) {
		send {f}
	}
}

xbutton1::
	mode += 1
	if( mode == 1) {
		click down
	}
	else if( mode > 1) {
		mode := 0
		click up
	}
return

!xbutton1::
	if(mode == 2) {
		mode := 0
	} else {
		mode := 2
	}
return

!WheelUp::
	Send {k down}
	sleep 500
	Send {k up}
return

!WheelDown::
	Send {l down}
	sleep 500
	Send {l up}
return

#IfWinActive

!Esc::ExitApp