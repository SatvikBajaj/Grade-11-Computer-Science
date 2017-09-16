%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Dice Game Assignment, Version 7
%Date: Feb 24th 2017
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
var OverallAvg : real := 0.0
var OverallSum : int := 0
var NumberofGames : int := 0




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
	if DiceMax < DiceFace then
	    DiceMax := DiceFace
	end if

	%Find the Lowest Dice Value
	if DiceMin > DiceFace then
	    DiceMin := DiceFace
	end if

    end loop

    %Average of the Die's in the Set
    DiceAvg := DiceSum / ctrDie

    %Number of Rolls attempted by user
    if DiceSum > 6 then
	NumberofGames := NumberofGames + 1
    end if

    %Overall Sum of the Dies Rolled
    OverallSum := DiceSum + OverallSum

    %Overall Average of the Dies Rolled
    OverallAvg := OverallSum / NumberofGames



    %Output of the Sum and Average Die Values
    locate (3, 18)
    put "Roll Statisitcs"
    locate (5, 10)
    put "Sum of the Die's:", " ", DiceSum : 9
    locate (6, 10)
    put "Average Value of Die's:", " ", DiceAvg : 3 : 1
    locate (7, 10)
    put "Highest Value of Die's:", " ", DiceMax : 2
    locate (8, 10)
    put "Lowest Value of Die's:", " ", DiceMin : 3

    %Black Border Box to make it look pretty :)
    Draw.Box (60, 340, 340, 425, black)

    %Option to exit the program
    locate (11, 2)
    put "Press any key to roll another 6 dice or Q (or q) to quit" ..
    getch (ExitKey)
    exit when ExitKey = 'Q' or ExitKey = 'q'

end loop

%Overall Sum and Overall Average Ouputs
locate (21, 14)
put "Overall Dice Statistics"
locate (23, 11)
put "Overall Sum of the Die's:", " ", OverallSum : 6
locate (24, 11)
put "Overall Average of the Die's:", " ", OverallAvg : 2 : 1
locate (25, 11)
put "Number of Rolls:", " ", NumberofGames : 15

%Black Border Box to make it look pretty :)
Draw.Box (60, 70, 360, 135, black)



