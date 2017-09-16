%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Dice Game Assignment, Version 5
%Date: Feb 22nd 2017
%Description: Advanced graphics assignment, that uses the procedural commands
%             as well as Turing Graphs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Intializations
import Dice in "classes/Dice.cla"
setscreen ("graphics:640;480,nocursor")

% Variables
const CentreY := 240
var CentreX : int := 50
var ctrDie : int := 0
var DiceFace : int
var DiceSum : int := 0
var DiceAvg : real := 0.0
var DiceMax : int := minint
var DiceMin : int := maxint
var ExitKey : string (1)



%Identifier
var d : pointer to Dice
new d

% Dice Properties
d -> setSize (40)
d -> setColour (purple)
d -> setBackColour (yellow)

%Dice is displayed and rolled
loop
    ctrDie := 0
    DiceSum := 0
    DiceMax := minint
    DiceMin := maxint
    CentreX := 50
    loop
	exit when ctrDie >= 6
	ctrDie := ctrDie + 1
	d -> roll
	DiceFace := d -> getNumber
	d -> setCentre (CentreX, CentreY)
	d -> draw

	%Display the Number of Die's above the respective dice
	locatexy (CentreX, 285)
	put ctrDie

	%Display the Face Value of the dice
	locatexy (CentreX, 200)
	put DiceFace

	%Space Between Each Indivual Die
	CentreX := CentreX + 60

	%Sum of the Dies Calculated
	DiceSum := DiceFace + DiceSum

	%Find the Highest Dice Value
	if
		DiceMax < DiceFace then
	    DiceMax := DiceFace
	end if

	%Find the Lowest Dice Value
	if
		DiceMin > DiceFace then
	    DiceMin := DiceFace
	end if
    end loop

    %Average of the Die's in the Set
    DiceAvg := DiceSum / ctrDie

    %Output of the Sum and Average Die Values
    locate (3, 18)
    put "Roll Statisitcs"
    locate (5, 10)
    put "Sum of the Die's:", " ", DiceSum
    locate (6, 10)
    put "Average Value of Die's:", " ", DiceAvg
    locate (7, 10)
    put "Highest Value of Die's:", " ", DiceMax
    locate (8, 10)
    put "Lowest Value of Die's:", " ", DiceMin

    %Black Border Box to make it look pretty :)
    Draw.Box (60, 340, 340, 425, black)

    %Option to exit the program
    locate (11, 2)
    put "Press any key to roll another 6 dice or Q (or q) to quit" ..
    getch (ExitKey)
    exit when ExitKey = 'Q' or ExitKey = 'q'

end loop


