#include ./util/basics.ahk

^g::
	MouseGetPos, x, y
	line := x . "," . y . "`n"
	FileAppend, %line%, ./screenPositions.txt
return

!Esc::ExitApp