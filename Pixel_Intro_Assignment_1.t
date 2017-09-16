%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Pixel Assignment 1, Version 1
%Date: Feb 8th 2017
%Description: Learning how to draw pixels and animations in turing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setscreen ("graphics:640;480,nocursor")

Draw.Dot (80, 80, black)
Draw.Dot (80, 240, red)
Draw.Dot (80, 400, magenta)
Draw.Dot (80, 560, green)
Draw.Line (40, 200, 120, 280, blue)
Draw.Line (280, 200, 200, 280, blue)
Draw.Line (400 - 80 div 2, 240, 400 + 80 div 2, 240, blue)
Draw.Line (560, 240 - 80 div 2, 560, 240 + 80 div 2, blue)
Draw.Oval (80, 400, 40, 40, brown)
Draw.FillOval (240, 400, 40, 40, brown)
Draw.Box (360, 360, 440, 440, cyan)
Draw.FillBox (520, 360, 600, 440, cyan)

