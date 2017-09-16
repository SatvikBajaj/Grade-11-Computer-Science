%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name:Satvik Bajaj
%Program: Dice Game Assignment, Version 1
%Date: Feb 17th 2017
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

%Identifier
var d : pointer to Dice
new d

% Dice Properties
d -> setSize (40)
d -> setColour (purple)
d -> setBackColour (yellow)


% 6 Dies and thier face(Usage of a counter)
ctrDie := 0
loop
    exit when ctrDie >= 6
    ctrDie := ctrDie + 1

    d -> setNumber (ctrDie)
    d -> setCentre (CentreX, CentreY)
    d -> draw

    CentreX := CentreX + 60

end loop
