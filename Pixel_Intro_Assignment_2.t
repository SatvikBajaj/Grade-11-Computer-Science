%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Pixel Assignment 1, Version 2
%Date: Feb 9th 2017
%Description: Learning how to draw pixels and animations in turing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setscreen ("graphics:640;480,nocursor")
var centreX : int := 50
loop
 Draw.FillOval (centreX-10, 240, 25, 25,white)
 Draw.FillOval (centreX, 240, 25, 25,blue)
    centreX := centreX + 10
    delay (75)
    exit when centreX > 580
end loop
locate (1, 35)
put "End of program"


