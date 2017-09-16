%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj                                                             %
%Program: Pixel Assignment 1, Version 6                                        %
%Date: Feb 9th 2017                                                            %
%Description: Learning how to draw pixels and animations in turing             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Graphi Settings
setscreen ("graphics:640;480,nocursor")

%Variables
var centrebacksteps : int := 0
var wallhits : int := 0
var centreX : int := 50
var centreY : int := 240
var direction : int := 1
const radius : int := 25

%Coordinate Value  Radnomization
centreX := Rand.Int (radius + 8, 605)
centreY := Rand.Int (radius + 24, 420)

%Red Border Drawing
Draw.Box (8, 24, maxx - 8, maxy - 33, red)

%Program Initalization
loop

    %Direction 1 goes to the right
    if direction = 1 then
	loop
	    exit when centreX >= maxx - 8 - radius - 1
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX + 10
	    if centreX + 10 > maxx - 8 - radius - 1 then
		centreX := maxx - 8 - radius - 1
	    end if
	    if centreX = maxx - 8 - radius - 1 then
		wallhits := wallhits + 1
	    end if
	end loop

	centrebacksteps := 0
	loop
	    exit when centrebacksteps >= 5
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX - 10
	    centrebacksteps += 1
	end loop

	%Direction 2 goes to the left
    elsif direction = 2 then
	loop
	    exit when centreX <= 8 + radius + 1
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX - 10
	    if centreX - 10 < 8 + radius + 1 then
		centreX := 8 + radius + 1
	    end if
	    if centreX = 8 + radius + 1 then
		wallhits := wallhits + 1
	    end if
	end loop
	centrebacksteps := 0
	loop
	    exit when centrebacksteps >= 5
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX + 10
	    centrebacksteps += 1
	end loop

	%Direction 3 goes upwards
    elsif direction = 3 then
	loop
	    exit when centreY >= 420
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreY := centreY + 10
	    if centreY + 10 > 420 then
		centreY := 420
	    end if
	    if centreY = 420 then
		wallhits := wallhits + 1
	    end if
	end loop
	centrebacksteps := 0
	loop
	    exit when centrebacksteps >= 5
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX - 10
	    centrebacksteps += 1
	end loop

	%Direction 4 goes downwards
    elsif direction = 4 then
	loop
	    exit when centreY <= radius + 27
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreY := centreY - 10
	    if centreY - 10 < radius + 27 then
		centreY := radius + 27
	    end if
	    if centreY = radius + 27 then
		wallhits := wallhits + 1
	    end if
	end loop
	centrebacksteps := 0
	loop
	    exit when centrebacksteps >= 5
	    exit when hasch
	    locate (1, 20)
	    put "X Value:", centreX : 5, "    ", "Y Value:", centreY : 5, "    ", "Wall Hits:", wallhits : 5
	    Draw.FillOval (centreX, centreY, radius, radius, blue)
	    delay (75)
	    Draw.FillOval (centreX, centreY, radius, radius, colorbg)
	    centreX := centreX + 10
	    centrebacksteps += 1
	end loop
    end if
    %Direction Choice Randamization
    direction := Rand.Int (1, 4)
    exit when hasch
end loop


%Ball Exiting Solution
Draw.FillOval (centreX, centreY, radius, radius, blue)

%Final Ouput
locate (2, 35)
put "End of program"
