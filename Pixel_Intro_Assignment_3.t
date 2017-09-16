%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Pixel Assignment 1, Version 3
%Date: Feb 9th 2017
%Description: Learning how to draw pixels and animations in turing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Variables and Graphic Settings
setscreen ("graphics:640;480,nocursor")
var centreX : int := 50
var centreY : int := 240
const radius : int := 25
var pixelX : int := -9000
var pixelY : int := -9000

%Processing Information/Graphics

loop
    locate (20, 22)
    pixelX := centreX
    pixelY := centreY
    put "X Pixel value is ", pixelX, "", " and", "", " Y Pixel Value is ", pixelY
    Draw.FillOval (centreX - 10, 240, radius, radius, white)
    Draw.FillOval (centreX, 240, radius, radius, blue)
    centreX := centreX + 10
    delay (75)
    if centreX > 610
	    then
	loop
	    locate (20, 22)
	    pixelX := centreX
	    pixelY := centreY
	    put "X Pixel value is :", pixelX, "", " and", "", " Y Pixel Value is ", pixelY
	    Draw.FillOval (610, centreY - 10, radius, radius, white)
	    Draw.FillOval (610, centreY, radius, radius, blue)
	    centreY := centreY + 10
	    delay (75)
	    exit when centreY > 420
	end loop
    end if
    exit when centreX > 610
end loop



%Output Information
locate (1, 35)
put "End of program"
