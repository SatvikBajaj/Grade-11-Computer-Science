%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj                                                            
%Program: Pixel Assignment 1, Version 4
%Date: Feb 9th 2017
%Description: Learning how to draw pixels and animations in turing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Variables and Declarations
setscreen ("graphics:640;480,nocursor")
var centreX : int := 50
var centreY : int := 240
const radius : int := 25
var pixelX : int := -9000
var pixelY : int := -9000

%Number Radnomization
centreX := Rand.Int (radius + 8, 605)
centreY := Rand.Int (radius + 24, 420)

%Processing Information/Graphics

%Border
Draw.Box (8, 24, maxx - 8, maxy - 33, red)

%Animated Circels w/ Pixel Counter(s)
loop
    exit when centreX >= 605
    exit when hasch
    locate (1, 20)
    pixelX := centreX
    pixelY := centreY
    put "X Pixel value is ", pixelX, "", " and", "", " Y Pixel Value is ", pixelY
    Draw.FillOval (centreX, centreY, radius, radius, blue)
    delay (75)
    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
    centreX := centreX + 10
    if centreX + 10 > 605 then
	centreX := 605
    end if
end loop
loop
    exit when centreX <= 555
    Draw.FillOval (centreX, centreY, radius, radius, blue)
    delay (75)
    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
    centreX := centreX - 10
    if centreX - 10 < 8 then
	centreX := 555
    end if
end loop


%Ball Exiting Solution
Draw.FillOval (centreX, centreY, radius, radius, blue)

%Final Ouput
locate (2, 35)
put "End of program"
