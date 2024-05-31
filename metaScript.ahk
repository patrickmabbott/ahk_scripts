CoordMode, Mouse, Screen
#SingleInstance Force

!^g::
	MouseGetPos, x, y
	line := x . "," . y . "`n"
	FileAppend, %line%, ./screenPositions.txt
return

!^h::
	MouseGetPos, x, y
	InputBox, positionTag
	line := positionTag . "," . x . "," . y . "`n"
	FileAppend, %line%, ./screenPositionTags.csv
return

!^r::
	WinGetActiveTitle, curWinTitle
	if(inStr(curWinTitle, "notepad")) {
		parts := StrSplit(curWinTitle, " ")
		firstPart := parts[1]
		Run, %firstPart%
	}
return

!^s::
	Run, %SystemRoot%\explorer.exe .
return

!^Esc::ExitApp