%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Dice Game Assignment, Version 3
%Date: Feb 21st 2017
%Description: Advanced graphics assignment, that uses the procedural commands
%             as well as Turing Graphs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Intializations
import Dice in "classes/Dice.cla"
setscreen ("graphics:640;480")

% Variables
const CentreY := 240
var CentreX : int := 50
var ctrDie : int := 0
var dicenumshift : int := 7
var dicevalueshift : int := 7
var DiceFace : int
var DiceSum : int := 0
var DiceAvg : real := 0.0


%Identifier
var d : pointer to Dice
new d

% Dice Properties
d -> setSize (40)
d -> setColour (purple)
d -> setBackColour (yellow)

%Dice is displayed and rolled
ctrDie := 0
DiceSum := 0
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

end loop

%Average of the Die's in the Set
DiceAvg := DiceSum / ctrDie

%Output of the Sum and Average Die Values

locate (1, 1)
put "Sum of the Die's :", DiceSum
put "Average Value of Die's:", DiceAvg ..




