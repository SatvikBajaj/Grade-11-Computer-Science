%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Dice Game Assignment, Version 2
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
var DiceFace : int


%Identifier
var d : pointer to Dice
new d

% Dice Properties
d -> setSize (40)
d -> setColour (purple)
d -> setBackColour (yellow)

%Dice is displayed and rolled
ctrDie := 0
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

    %Space Between Each Indivual Die
    CentreX := CentreX + 60
end loop









