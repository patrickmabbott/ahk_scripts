#include ./basics.ahk

#IfWinActive My

SetDefaultMouseSpeed, 1

useScaleFactor := 0

1::
xbutton1::
	quickClick(836,898)
return

2::
xbutton2::
	quickClick(959,898)
return

3::
mbutton::
	quickClick(1093,905)
return

4::
	MouseClickDrag, l, 764,704,971,406, 3
	MouseClickDrag, l, 999,706,759,349, 3
	MouseClickDrag, l, 1212,689,1148,358, 3
return

5::
	quickClick(1217,320)