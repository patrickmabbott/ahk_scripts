#SingleInstance Force

useScaleFactor := 1

!Esc::ExitApp

;Gets the position of the mouse in the form of { x, y}
pos() {
	CoordMode, Mouse, Window
	MouseGetPos, savedX, savedY
	result := { x : savedX,  y : savedY}
	return result
}

;Simple wrapper for mouseMove that works with an object of form { x, y}
moveTo(position) {
	x := position.x
	y := position.y
	if(useScaleFactor) {
		x := x * 1.2464
		y := y * 1.2464
	}
	MouseMove, x, y, 5
}

drag(start, end) {
	saved := pos()
	moveTo(start)
	Send {LButton down}
	moveTo(end)
	Send {LButton up}
	moveTo(saved)
}

dragRelative(rightDistance, upDistance) {
	saved := pos()
	startX := saved.x
	startY := saved.y
	Send {LButton down}
	MouseMove, saved.x + rightDistance, saved.y + upDistance, 2
	Send {LButton up} 
	MouseMove, saved.x, saved.y
}

click(x,y) {
	Click, %x%, %y%
}

quickClick(x, y) {
	start := pos()
	click(x,y)
	moveTo(start)
	return
}